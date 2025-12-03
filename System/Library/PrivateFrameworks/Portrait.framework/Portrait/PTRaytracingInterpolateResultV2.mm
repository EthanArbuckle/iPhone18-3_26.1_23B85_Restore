@interface PTRaytracingInterpolateResultV2
+ (PTNoiseValues)calculateVarReadNoise:(id)noise;
- (PTRaytracingInterpolateResultV2)initWithMetalContext:(id)context useExportQualityNoise:(BOOL)noise;
- (void)interpolateRGBWeightUsingRGBALinearToDest:(id)dest renderRequest:(id)request inRGBWeight:(id)weight inRGBA:(id)a;
- (void)interpolateRGBWeightUsingSourceToDest:(id)dest renderRequest:(id)request inRGBWeight:(id)weight;
@end

@implementation PTRaytracingInterpolateResultV2

- (PTRaytracingInterpolateResultV2)initWithMetalContext:(id)context useExportQualityNoise:(BOOL)noise
{
  noiseCopy = noise;
  contextCopy = context;
  v70.receiver = self;
  v70.super_class = PTRaytracingInterpolateResultV2;
  v8 = [(PTRaytracingInterpolateResultV2 *)&v70 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_metalContext, context);
    if (noiseCopy)
    {
      v10 = 512;
    }

    else
    {
      v10 = 256;
    }

    contextCopy = [PTPrecomputeRandom computeGaussian:v9->_metalContext sideLength:v10, contextCopy];
    precomputedGaussian = v9->_precomputedGaussian;
    v9->_precomputedGaussian = contextCopy;

    v9->_precomputedGaussianOffsetMaxValue = v10 - 1;
    v13 = objc_opt_new();
    v14 = 0;
    interpolateRGBWeightSourceYUVDestRGBA = v9->_interpolateRGBWeightSourceYUVDestRGBA;
    interpolateRGBWeightSourceYUVDestYUV = v9->_interpolateRGBWeightSourceYUVDestYUV;
    interpolateRGBWeightSourceRGBADestRGBA = v9->_interpolateRGBWeightSourceRGBADestRGBA;
    interpolateRGBWeightRGBALinearDestRGBA = v9->_interpolateRGBWeightRGBALinearDestRGBA;
    interpolateRGBWeightRGBALinearDestYUV = v9->_interpolateRGBWeightRGBALinearDestYUV;
    while (1)
    {
      v69 = supportedColorTransferFunctions_0[v14];
      [v13 reset];
      [v13 setConstantValue:&v69 type:29 withName:@"kColorTransferFunctionToLinear"];
      v20 = [(PTMetalContext *)v9->_metalContext computePipelineStateFor:@"interpolateRGBWeightSourceYUVDestRGBA_V2" withConstants:v13];
      v21 = interpolateRGBWeightSourceYUVDestRGBA[v69];
      interpolateRGBWeightSourceYUVDestRGBA[v69] = v20;

      if (!interpolateRGBWeightSourceYUVDestRGBA[v69])
      {
        break;
      }

      v22 = [(PTMetalContext *)v9->_metalContext computePipelineStateFor:@"interpolateRGBWeightSourceYUVDestYUV_V2" withConstants:v13];
      v23 = interpolateRGBWeightSourceYUVDestYUV[v69];
      interpolateRGBWeightSourceYUVDestYUV[v69] = v22;

      if (!interpolateRGBWeightSourceYUVDestYUV[v69])
      {
        v31 = _PTLogSystem();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [(PTRaytracingInterpolateResultV2 *)v31 initWithMetalContext:v39 useExportQualityNoise:v40, v41, v42, v43, v44, v45];
        }

        goto LABEL_24;
      }

      v24 = [(PTMetalContext *)v9->_metalContext computePipelineStateFor:@"interpolateRGBWeightSourceRGBADestRGBA_V2" withConstants:v13];
      v25 = interpolateRGBWeightSourceRGBADestRGBA[v69];
      interpolateRGBWeightSourceRGBADestRGBA[v69] = v24;

      if (!interpolateRGBWeightSourceRGBADestRGBA[v69])
      {
        v31 = _PTLogSystem();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [(PTRaytracingInterpolateResultV2 *)v31 initWithMetalContext:v46 useExportQualityNoise:v47, v48, v49, v50, v51, v52];
        }

        goto LABEL_24;
      }

      v26 = [(PTMetalContext *)v9->_metalContext computePipelineStateFor:@"interpolateRGBWeightRGBALinearDestRGBA_V2" withConstants:v13];
      v27 = interpolateRGBWeightRGBALinearDestRGBA[v69];
      interpolateRGBWeightRGBALinearDestRGBA[v69] = v26;

      if (!interpolateRGBWeightRGBALinearDestRGBA[v69])
      {
        v31 = _PTLogSystem();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [(PTRaytracingInterpolateResultV2 *)v31 initWithMetalContext:v53 useExportQualityNoise:v54, v55, v56, v57, v58, v59];
        }

        goto LABEL_24;
      }

      v28 = [(PTMetalContext *)v9->_metalContext computePipelineStateFor:@"interpolateRGBWeightRGBALinearDestYUV_V2" withConstants:v13];
      v29 = interpolateRGBWeightRGBALinearDestYUV[v69];
      interpolateRGBWeightRGBALinearDestYUV[v69] = v28;

      if (!interpolateRGBWeightRGBALinearDestYUV[v69])
      {
        v31 = _PTLogSystem();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [(PTRaytracingInterpolateResultV2 *)v31 initWithMetalContext:v60 useExportQualityNoise:v61, v62, v63, v64, v65, v66];
        }

        goto LABEL_24;
      }

      if (++v14 == 5)
      {
        v30 = v9;
        contextCopy = v68;
        goto LABEL_25;
      }
    }

    v31 = _PTLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingInterpolateResultV2 *)v31 initWithMetalContext:v32 useExportQualityNoise:v33, v34, v35, v36, v37, v38];
    }

LABEL_24:
    contextCopy = v68;

    v30 = 0;
LABEL_25:
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (void)interpolateRGBWeightUsingSourceToDest:(id)dest renderRequest:(id)request inRGBWeight:(id)weight
{
  destCopy = dest;
  requestCopy = request;
  weightCopy = weight;
  v11 = 0;
  v61 = 0u;
  v62 = 0u;
  if (requestCopy)
  {
    [requestCopy scissorRect];
    v12 = *(&v62 + 1);
    v52 = v62;
    v11 = vmovn_s64(v61);
  }

  else
  {
    v12 = 0;
    v52 = 0;
  }

  v60[1] = v11.i16[2];
  v60[0] = v11.i16[0];
  +[PTRandom nextUshort2:seed:](PTRandom, "nextUshort2:seed:", self->_precomputedGaussianOffsetMaxValue, [requestCopy frameId]);
  v59[1] = v13;
  v59[0] = v14;
  [PTRaytracingInterpolateResultV2 calculateVarReadNoise:requestCopy];
  v58[0] = v15;
  v58[1] = v16;
  sourceColor = [requestCopy sourceColor];
  transferFunction = [sourceColor transferFunction];
  v19 = [PTColorConversion getTransferFunction:transferFunction toLinear:1];

  sourceColor2 = [requestCopy sourceColor];
  if ([sourceColor2 isRGB])
  {
    destinationColor = [requestCopy destinationColor];
    isRGB = [destinationColor isRGB];

    if (isRGB)
    {
      [destCopy setComputePipelineState:self->_interpolateRGBWeightSourceRGBADestRGBA[v19]];
      sourceColor3 = [requestCopy sourceColor];
      texRGBA = [sourceColor3 texRGBA];
      [destCopy setTexture:texRGBA atIndex:0];

      [destCopy setTexture:weightCopy atIndex:1];
      [destCopy setTexture:self->_precomputedGaussian atIndex:2];
      destinationColor2 = [requestCopy destinationColor];
      texRGBA2 = [destinationColor2 texRGBA];
      [destCopy setTexture:texRGBA2 atIndex:3];

      [destCopy setBytes:v58 length:8 atIndex:0];
      [destCopy setBytes:v59 length:4 atIndex:1];
      [destCopy setBytes:v60 length:4 atIndex:2];
      goto LABEL_12;
    }
  }

  else
  {
  }

  v50 = v12;
  v51 = weightCopy;
  *&v55[8] = 0;
  v56 = 0;
  v57 = 0;
  sourceColor4 = [requestCopy sourceColor];
  [PTColorConversion getColorMatrix:sourceColor4 toRGB:1];

  sourceColor5 = [requestCopy sourceColor];
  texLuma = [sourceColor5 texLuma];
  sourceColor6 = [requestCopy sourceColor];
  texChroma = [sourceColor6 texChroma];
  *v55 = [PTColorConversion getChromaSubsampledFromLuma:texLuma texChroma:texChroma];

  destinationColor3 = [requestCopy destinationColor];
  LODWORD(sourceColor5) = [destinationColor3 isRGB];

  if (sourceColor5)
  {
    [destCopy setComputePipelineState:self->_interpolateRGBWeightSourceYUVDestRGBA[v19]];
    sourceColor7 = [requestCopy sourceColor];
    texLuma2 = [sourceColor7 texLuma];
    [destCopy setTexture:texLuma2 atIndex:0];

    sourceColor8 = [requestCopy sourceColor];
    texChroma2 = [sourceColor8 texChroma];
    [destCopy setTexture:texChroma2 atIndex:1];

    weightCopy = v51;
    [destCopy setTexture:v51 atIndex:2];
    [destCopy setTexture:self->_precomputedGaussian atIndex:3];
    destinationColor4 = [requestCopy destinationColor];
    texRGBA3 = [destinationColor4 texRGBA];
    [destCopy setTexture:texRGBA3 atIndex:4];

    [destCopy setBytes:v58 length:8 atIndex:0];
    [destCopy setBytes:v59 length:4 atIndex:1];
    [destCopy setBytes:&v55[2] length:24 atIndex:2];
    [destCopy setBytes:v55 length:2 atIndex:3];
    v39 = destCopy;
    v40 = 4;
  }

  else
  {
    v53 = 0uLL;
    v54 = 0;
    destinationColor5 = [requestCopy destinationColor];
    [PTColorConversion getColorMatrix:destinationColor5 toRGB:0];

    [destCopy setComputePipelineState:self->_interpolateRGBWeightSourceYUVDestYUV[v19]];
    sourceColor9 = [requestCopy sourceColor];
    texLuma3 = [sourceColor9 texLuma];
    [destCopy setTexture:texLuma3 atIndex:0];

    sourceColor10 = [requestCopy sourceColor];
    texChroma3 = [sourceColor10 texChroma];
    [destCopy setTexture:texChroma3 atIndex:1];

    weightCopy = v51;
    [destCopy setTexture:v51 atIndex:2];
    [destCopy setTexture:self->_precomputedGaussian atIndex:3];
    destinationColor6 = [requestCopy destinationColor];
    texLuma4 = [destinationColor6 texLuma];
    [destCopy setTexture:texLuma4 atIndex:4];

    destinationColor7 = [requestCopy destinationColor];
    texChroma4 = [destinationColor7 texChroma];
    [destCopy setTexture:texChroma4 atIndex:5];

    [destCopy setBytes:v58 length:8 atIndex:0];
    [destCopy setBytes:v59 length:4 atIndex:1];
    [destCopy setBytes:&v55[2] length:24 atIndex:2];
    [destCopy setBytes:&v53 length:24 atIndex:3];
    [destCopy setBytes:v55 length:2 atIndex:4];
    v39 = destCopy;
    v40 = 5;
  }

  [v39 setBytes:v60 length:4 atIndex:v40];
  v12 = v50;
LABEL_12:
  *&v55[2] = v52;
  v56 = v12;
  v57 = 1;
  v53 = xmmword_2244A5220;
  v54 = 1;
  [destCopy dispatchThreads:&v55[2] threadsPerThreadgroup:&v53];
}

- (void)interpolateRGBWeightUsingRGBALinearToDest:(id)dest renderRequest:(id)request inRGBWeight:(id)weight inRGBA:(id)a
{
  destCopy = dest;
  requestCopy = request;
  weightCopy = weight;
  aCopy = a;
  v14 = 0;
  v50 = 0u;
  v51 = 0u;
  if (requestCopy)
  {
    [requestCopy scissorRect];
    v15 = *(&v51 + 1);
    v41 = v51;
    v14 = vmovn_s64(v50);
  }

  else
  {
    v15 = 0;
    v41 = 0;
  }

  v49[1] = v14.i16[2];
  v49[0] = v14.i16[0];
  +[PTRandom nextUshort2:seed:](PTRandom, "nextUshort2:seed:", self->_precomputedGaussianOffsetMaxValue, [requestCopy frameId]);
  v48[1] = v16;
  v48[0] = v17;
  [PTRaytracingInterpolateResultV2 calculateVarReadNoise:requestCopy];
  v47[0] = v18;
  v47[1] = v19;
  sourceColor = [requestCopy sourceColor];
  transferFunction = [sourceColor transferFunction];
  v22 = [PTColorConversion getTransferFunction:transferFunction toLinear:1];

  destinationColor = [requestCopy destinationColor];
  LODWORD(transferFunction) = [destinationColor isRGB];

  if (transferFunction)
  {
    [destCopy setComputePipelineState:self->_interpolateRGBWeightRGBALinearDestRGBA[v22]];
    [destCopy setTexture:aCopy atIndex:0];
    [destCopy setTexture:weightCopy atIndex:1];
    [destCopy setTexture:self->_precomputedGaussian atIndex:2];
    destinationColor2 = [requestCopy destinationColor];
    texRGBA = [destinationColor2 texRGBA];
    [destCopy setTexture:texRGBA atIndex:3];

    [destCopy setBytes:v47 length:8 atIndex:0];
    [destCopy setBytes:v48 length:4 atIndex:1];
    v26 = destCopy;
    v27 = 2;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    sourceColor2 = [requestCopy sourceColor];
    [PTColorConversion getColorMatrix:sourceColor2 toRGB:0];

    sourceColor3 = [requestCopy sourceColor];
    [sourceColor3 texLuma];
    v40 = aCopy;
    v31 = v30 = weightCopy;
    [requestCopy sourceColor];
    v39 = v22;
    v33 = v32 = v15;
    texChroma = [v33 texChroma];
    LOWORD(v42) = [PTColorConversion getChromaSubsampledFromLuma:v31 texChroma:texChroma];

    v15 = v32;
    weightCopy = v30;
    aCopy = v40;

    [destCopy setComputePipelineState:self->_interpolateRGBWeightRGBALinearDestYUV[v39]];
    [destCopy setTexture:v40 atIndex:0];
    [destCopy setTexture:weightCopy atIndex:1];
    [destCopy setTexture:self->_precomputedGaussian atIndex:2];
    destinationColor3 = [requestCopy destinationColor];
    texLuma = [destinationColor3 texLuma];
    [destCopy setTexture:texLuma atIndex:3];

    destinationColor4 = [requestCopy destinationColor];
    texChroma2 = [destinationColor4 texChroma];
    [destCopy setTexture:texChroma2 atIndex:4];

    [destCopy setBytes:v47 length:8 atIndex:0];
    [destCopy setBytes:v48 length:4 atIndex:1];
    [destCopy setBytes:&v44 length:24 atIndex:2];
    [destCopy setBytes:&v42 length:2 atIndex:3];
    v26 = destCopy;
    v27 = 4;
  }

  [v26 setBytes:v49 length:4 atIndex:v27];
  v44 = v41;
  v45 = v15;
  v46 = 1;
  v42 = xmmword_2244A5220;
  v43 = 1;
  [destCopy dispatchThreads:&v44 threadsPerThreadgroup:&v42];
}

+ (PTNoiseValues)calculateVarReadNoise:(id)noise
{
  noiseCopy = noise;
  v4 = [noiseCopy AGC];
  conversionGain = [noiseCopy conversionGain];
  readNoise_1x = [noiseCopy readNoise_1x];
  readNoise_8x = [noiseCopy readNoise_8x];
  renderState = [noiseCopy renderState];
  [renderState noiseScaleFactor];
  v10 = v9;

  renderState2 = [noiseCopy renderState];
  sourceColorBitDepth = [renderState2 sourceColorBitDepth];

  [noiseCopy totalSensorCropRectSize];
  v14 = v13;
  sourceColor = [noiseCopy sourceColor];
  v16 = v14 / [sourceColor width];
  [noiseCopy totalSensorCropRectSize];
  v18 = v16 * v17;
  sourceColor2 = [noiseCopy sourceColor];
  v20 = v10 / (v18 / [sourceColor2 height]);

  v21 = v20 / 1023.0;
  if (sourceColorBitDepth == 10)
  {
    v21 = (v20 / 1023.0) * 12.0;
  }

  v22 = v4 / 255.0;
  v23 = (conversionGain / 65535.0) * v21;
  v24 = (readNoise_1x / 65535.0) * (readNoise_1x / 65535.0);
  v25 = (v24 - ((readNoise_8x / 65535.0) * (readNoise_8x / 65535.0))) / 0.98438;
  v26 = v23 * ((v25 + ((v22 * (v24 - v25)) * v22)) * v23);
  v27 = v22 * v23;

  v28 = v26;
  v29 = v27;
  result.var1 = v29;
  result.var0 = v28;
  return result;
}

@end