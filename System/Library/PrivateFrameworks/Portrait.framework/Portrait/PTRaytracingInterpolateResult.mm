@interface PTRaytracingInterpolateResult
+ (PTNoiseValues)calculateVarReadNoise:(id)noise;
- (PTRaytracingInterpolateResult)initWithMetalContext:(id)context useExportQualityNoise:(BOOL)noise;
- (void)interpolateRGBWeightUsingRGBALinearToDest:(id)dest renderRequest:(id)request inRGBWeight:(id)weight inRGBA:(id)a;
- (void)interpolateRGBWeightUsingSourceToDest:(id)dest renderRequest:(id)request inRGBWeight:(id)weight;
@end

@implementation PTRaytracingInterpolateResult

- (PTRaytracingInterpolateResult)initWithMetalContext:(id)context useExportQualityNoise:(BOOL)noise
{
  noiseCopy = noise;
  contextCopy = context;
  v95.receiver = self;
  v95.super_class = PTRaytracingInterpolateResult;
  v8 = [(PTRaytracingInterpolateResult *)&v95 init];
  v9 = v8;
  if (!v8)
  {
    v44 = 0;
    goto LABEL_29;
  }

  objc_storeStrong(&v8->_metalContext, context);
  if (noiseCopy)
  {
    v10 = 512;
  }

  else
  {
    v10 = 256;
  }

  v94 = v10;
  v11 = [PTPrecomputeRandom computeGaussian:v9->_metalContext sideLength:?];
  precomputedGaussian = v9->_precomputedGaussian;
  v9->_precomputedGaussian = v11;

  v9->_precomputedGaussianOffsetMaxValue = 0x7FFF;
  v13 = objc_opt_new();
  [v13 setConstantValue:&v94 type:29 withName:@"kSizePrecomputedGaussian"];
  LODWORD(v14) = 2.0;
  [v13 setConstantFloat:@"kSizeNoiseGrain_float" withName:v14];
  imageblocksSupported = [contextCopy imageblocksSupported];
  v16 = @"NoImageblocks";
  if (imageblocksSupported)
  {
    v16 = &stru_2837D16E8;
  }

  v17 = v16;
  v18 = 0;
  interpolateRGBWeightSourceYUVDestRGBA = v9->_interpolateRGBWeightSourceYUVDestRGBA;
  interpolateRGBWeightSourceYUVDestYUV = v9->_interpolateRGBWeightSourceYUVDestYUV;
  interpolateRGBWeightRGBALinearDestRGBA = v9->_interpolateRGBWeightRGBALinearDestRGBA;
  interpolateRGBWeightSourceRGBADestRGBA = v9->_interpolateRGBWeightSourceRGBADestRGBA;
  interpolateRGBWeightSourceYUVDestYUVPostProcess = v9->_interpolateRGBWeightSourceYUVDestYUVPostProcess;
  interpolateRGBWeightRGBALinearDestYUV = v9->_interpolateRGBWeightRGBALinearDestYUV;
  while (1)
  {
    v21 = contextCopy;
    v93 = supportedColorTransferFunctions_2[v18];
    [v13 setConstantValue:&v93 type:29 withName:@"kColorTransferFunctionToLinear"];
    metalContext = v9->_metalContext;
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"interpolateRGBWeightSourceYUVDestRGBA%@", v17];
    v24 = [(PTMetalContext *)metalContext computePipelineStateFor:v23 withConstants:v13];
    v25 = interpolateRGBWeightSourceYUVDestRGBA[v93];
    interpolateRGBWeightSourceYUVDestRGBA[v93] = v24;

    if (!interpolateRGBWeightSourceYUVDestRGBA[v93])
    {
      v45 = _PTLogSystem();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingInterpolateResult *)v45 initWithMetalContext:v46 useExportQualityNoise:v47, v48, v49, v50, v51, v52];
      }

      goto LABEL_26;
    }

    v26 = v9->_metalContext;
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"interpolateRGBWeightSourceYUVDestYUV%@", v17];
    v28 = [(PTMetalContext *)v26 computePipelineStateFor:v27 withConstants:v13];
    v29 = interpolateRGBWeightSourceYUVDestYUV[v93];
    interpolateRGBWeightSourceYUVDestYUV[v93] = v28;

    if (!interpolateRGBWeightSourceYUVDestYUV[v93])
    {
      v45 = _PTLogSystem();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingInterpolateResult *)v45 initWithMetalContext:v53 useExportQualityNoise:v54, v55, v56, v57, v58, v59];
      }

      goto LABEL_26;
    }

    v30 = v9->_metalContext;
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"interpolateRGBWeightSourceRGBADestRGBA%@", v17];
    v32 = [(PTMetalContext *)v30 computePipelineStateFor:v31 withConstants:v13];
    v33 = interpolateRGBWeightSourceRGBADestRGBA[v93];
    interpolateRGBWeightSourceRGBADestRGBA[v93] = v32;

    if (!interpolateRGBWeightSourceRGBADestRGBA[v93])
    {
      v45 = _PTLogSystem();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingInterpolateResult *)v45 initWithMetalContext:v60 useExportQualityNoise:v61, v62, v63, v64, v65, v66];
      }

      goto LABEL_26;
    }

    v34 = v9->_metalContext;
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"interpolateRGBWeightRGBALinearDestRGBA%@", v17];
    v36 = [(PTMetalContext *)v34 computePipelineStateFor:v35 withConstants:v13];
    v37 = interpolateRGBWeightRGBALinearDestRGBA[v93];
    interpolateRGBWeightRGBALinearDestRGBA[v93] = v36;

    if (!interpolateRGBWeightRGBALinearDestRGBA[v93])
    {
      v45 = _PTLogSystem();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingInterpolateResult *)v45 initWithMetalContext:v67 useExportQualityNoise:v68, v69, v70, v71, v72, v73];
      }

LABEL_26:
      contextCopy = v21;
      goto LABEL_27;
    }

    v38 = v9->_metalContext;
    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"interpolateRGBWeightRGBALinearDestYUV%@", v17];
    v40 = [(PTMetalContext *)v38 computePipelineStateFor:v39 withConstants:v13];
    v41 = interpolateRGBWeightRGBALinearDestYUV[v93];
    interpolateRGBWeightRGBALinearDestYUV[v93] = v40;

    if (!interpolateRGBWeightRGBALinearDestYUV[v93])
    {
      v45 = _PTLogSystem();
      contextCopy = v21;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingInterpolateResult *)v45 initWithMetalContext:v75 useExportQualityNoise:v76, v77, v78, v79, v80, v81];
      }

      goto LABEL_27;
    }

    contextCopy = v21;
    if ([v21 imageblocksSupported])
    {
      v42 = [(PTMetalContext *)v9->_metalContext computePipelineStateFor:@"interpolateRGBWeightSourceYUVDestYUVPostModify" withConstants:v13];
      v43 = interpolateRGBWeightSourceYUVDestYUVPostProcess[v93];
      interpolateRGBWeightSourceYUVDestYUVPostProcess[v93] = v42;

      if (!interpolateRGBWeightSourceYUVDestYUVPostProcess[v93])
      {
        break;
      }
    }

    if (++v18 == 5)
    {
      v44 = v9;
      goto LABEL_28;
    }
  }

  v45 = _PTLogSystem();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    [(PTRaytracingInterpolateResult *)v45 initWithMetalContext:v82 useExportQualityNoise:v83, v84, v85, v86, v87, v88];
  }

LABEL_27:

  v44 = 0;
LABEL_28:

LABEL_29:
  return v44;
}

- (void)interpolateRGBWeightUsingSourceToDest:(id)dest renderRequest:(id)request inRGBWeight:(id)weight
{
  requestCopy = request;
  weightCopy = weight;
  computeCommandEncoder = [dest computeCommandEncoder];
  +[PTRandom nextUshort2:seed:](PTRandom, "nextUshort2:seed:", self->_precomputedGaussianOffsetMaxValue, [requestCopy frameId]);
  v71[1] = v11;
  v71[0] = v12;
  [PTRaytracingInterpolateResult calculateVarReadNoise:requestCopy];
  v70[0] = v13;
  v70[1] = v14;
  sourceColor = [requestCopy sourceColor];
  transferFunction = [sourceColor transferFunction];
  v62 = [PTColorConversion getTransferFunction:transferFunction toLinear:1];

  v17 = [PTImageblockConfig alloc];
  destinationColor = [requestCopy destinationColor];
  if (requestCopy)
  {
    [requestCopy scissorRect];
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  v19 = [(PTImageblockConfig *)v17 initWithPTTexture:destinationColor scissorRect:&v68];

  [(PTImageblockConfig *)v19 scissorRectOffset];
  v67[1] = v20;
  v67[0] = v21;
  if ([(PTMetalContext *)self->_metalContext imageblocksSupported])
  {
    [computeCommandEncoder setImageblockWidth:-[PTImageblockConfig imageblockSize](v19 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v19, "imageblockSize")}];
  }

  sourceColor2 = [requestCopy sourceColor];
  if (([sourceColor2 isRGB] & 1) == 0)
  {

LABEL_11:
    v29 = weightCopy;
    v68 = 0uLL;
    *&v69 = 0;
    sourceColor3 = [requestCopy sourceColor];
    [PTColorConversion getColorMatrix:sourceColor3 toRGB:1];

    sourceColor4 = [requestCopy sourceColor];
    texLuma = [sourceColor4 texLuma];
    sourceColor5 = [requestCopy sourceColor];
    texChroma = [sourceColor5 texChroma];
    v66 = [PTColorConversion getChromaSubsampledFromLuma:texLuma texChroma:texChroma];

    destinationColor2 = [requestCopy destinationColor];
    isRGB = [destinationColor2 isRGB];

    if (isRGB)
    {
      destinationColor3 = [requestCopy destinationColor];
      transferFunction2 = [destinationColor3 transferFunction];
      v39 = [PTColorConversion getTransferFunction:transferFunction2 toLinear:1];

      LODWORD(v63) = v39;
      [computeCommandEncoder setComputePipelineState:self->_interpolateRGBWeightSourceYUVDestRGBA[v62]];
      weightCopy = v29;
      [computeCommandEncoder setTexture:v29 atIndex:0];
      [computeCommandEncoder setTexture:self->_precomputedGaussian atIndex:1];
      sourceColor6 = [requestCopy sourceColor];
      texLuma2 = [sourceColor6 texLuma];
      [computeCommandEncoder setTexture:texLuma2 atIndex:2];

      sourceColor7 = [requestCopy sourceColor];
      texChroma2 = [sourceColor7 texChroma];
      [computeCommandEncoder setTexture:texChroma2 atIndex:3];

      destinationColor4 = [requestCopy destinationColor];
      texRGBA = [destinationColor4 texRGBA];
      [computeCommandEncoder setTexture:texRGBA atIndex:4];

      [computeCommandEncoder setBytes:v70 length:8 atIndex:0];
      [computeCommandEncoder setBytes:v71 length:4 atIndex:1];
      [computeCommandEncoder setBytes:&v68 length:24 atIndex:2];
      [computeCommandEncoder setBytes:&v66 length:2 atIndex:3];
      v46 = &v63;
      v47 = computeCommandEncoder;
      v48 = 4;
      goto LABEL_18;
    }

    v63 = 0;
    v64 = 0;
    v65 = 0;
    sourceColor8 = [requestCopy sourceColor];
    [PTColorConversion getColorMatrix:sourceColor8 toRGB:0];

    integratedStyleCoefficientsTextureArray = [requestCopy integratedStyleCoefficientsTextureArray];
    weightCopy = v29;
    if (integratedStyleCoefficientsTextureArray)
    {
    }

    else
    {
      colorCube = [requestCopy colorCube];

      if (!colorCube)
      {
        [computeCommandEncoder setComputePipelineState:self->_interpolateRGBWeightSourceYUVDestYUV[v62]];
        goto LABEL_17;
      }
    }

    [computeCommandEncoder setComputePipelineState:self->_interpolateRGBWeightSourceYUVDestYUVPostProcess[v62]];
    colorCube2 = [requestCopy colorCube];
    [computeCommandEncoder setTexture:colorCube2 atIndex:7];

LABEL_17:
    [computeCommandEncoder setTexture:v29 atIndex:0];
    [computeCommandEncoder setTexture:self->_precomputedGaussian atIndex:1];
    sourceColor9 = [requestCopy sourceColor];
    texLuma3 = [sourceColor9 texLuma];
    [computeCommandEncoder setTexture:texLuma3 atIndex:2];

    sourceColor10 = [requestCopy sourceColor];
    texChroma3 = [sourceColor10 texChroma];
    [computeCommandEncoder setTexture:texChroma3 atIndex:3];

    destinationColor5 = [requestCopy destinationColor];
    texLuma4 = [destinationColor5 texLuma];
    [computeCommandEncoder setTexture:texLuma4 atIndex:4];

    destinationColor6 = [requestCopy destinationColor];
    texChroma4 = [destinationColor6 texChroma];
    [computeCommandEncoder setTexture:texChroma4 atIndex:5];

    [computeCommandEncoder setBytes:v70 length:8 atIndex:0];
    [computeCommandEncoder setBytes:v71 length:4 atIndex:1];
    [computeCommandEncoder setBytes:&v68 length:24 atIndex:2];
    [computeCommandEncoder setBytes:&v63 length:24 atIndex:3];
    v46 = &v66;
    v47 = computeCommandEncoder;
    v48 = 2;
LABEL_18:
    [v47 setBytes:v46 length:v48 atIndex:4];
    [computeCommandEncoder setBytes:v67 length:4 atIndex:5];
    v19 = v61;
    if (!v61)
    {
      goto LABEL_9;
    }

LABEL_19:
    [(PTImageblockConfig *)v19 threads];
    [(PTImageblockConfig *)v19 threadsPerGroup];
    goto LABEL_20;
  }

  destinationColor7 = [requestCopy destinationColor];
  isRGB2 = [destinationColor7 isRGB];

  if (!isRGB2)
  {
    goto LABEL_11;
  }

  [computeCommandEncoder setComputePipelineState:self->_interpolateRGBWeightSourceRGBADestRGBA[v62]];
  [computeCommandEncoder setTexture:weightCopy atIndex:0];
  [computeCommandEncoder setTexture:self->_precomputedGaussian atIndex:1];
  sourceColor11 = [requestCopy sourceColor];
  texRGBA2 = [sourceColor11 texRGBA];
  [computeCommandEncoder setTexture:texRGBA2 atIndex:2];

  destinationColor8 = [requestCopy destinationColor];
  texRGBA3 = [destinationColor8 texRGBA];
  [computeCommandEncoder setTexture:texRGBA3 atIndex:3];

  [computeCommandEncoder setBytes:v70 length:8 atIndex:0];
  [computeCommandEncoder setBytes:v71 length:4 atIndex:1];
  [computeCommandEncoder setBytes:v67 length:4 atIndex:2];
  if (v19)
  {
    goto LABEL_19;
  }

LABEL_9:
  v68 = 0uLL;
  *&v69 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
LABEL_20:
  [computeCommandEncoder dispatchThreads:&v68 threadsPerThreadgroup:&v63];
  [computeCommandEncoder endEncoding];
}

- (void)interpolateRGBWeightUsingRGBALinearToDest:(id)dest renderRequest:(id)request inRGBWeight:(id)weight inRGBA:(id)a
{
  requestCopy = request;
  weightCopy = weight;
  aCopy = a;
  computeCommandEncoder = [dest computeCommandEncoder];
  +[PTRandom nextUshort2:seed:](PTRandom, "nextUshort2:seed:", self->_precomputedGaussianOffsetMaxValue, [requestCopy frameId]);
  v51[1] = v14;
  v51[0] = v15;
  [PTRaytracingInterpolateResult calculateVarReadNoise:requestCopy];
  v50[0] = v16;
  v50[1] = v17;
  sourceColor = [requestCopy sourceColor];
  transferFunction = [sourceColor transferFunction];
  v20 = [PTColorConversion getTransferFunction:transferFunction toLinear:1];

  v21 = [PTImageblockConfig alloc];
  destinationColor = [requestCopy destinationColor];
  if (requestCopy)
  {
    [requestCopy scissorRect];
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v23 = [(PTImageblockConfig *)v21 initWithPTTexture:destinationColor scissorRect:&v48];

  [(PTImageblockConfig *)v23 scissorRectOffset];
  v47[1] = v24;
  v47[0] = v25;
  if ([(PTMetalContext *)self->_metalContext imageblocksSupported])
  {
    [computeCommandEncoder setImageblockWidth:-[PTImageblockConfig imageblockSize](v23 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v23, "imageblockSize")}];
  }

  destinationColor2 = [requestCopy destinationColor];
  isRGB = [destinationColor2 isRGB];

  if (isRGB)
  {
    [computeCommandEncoder setComputePipelineState:self->_interpolateRGBWeightRGBALinearDestRGBA[v20]];
    [computeCommandEncoder setTexture:weightCopy atIndex:0];
    [computeCommandEncoder setTexture:self->_precomputedGaussian atIndex:1];
    [computeCommandEncoder setTexture:aCopy atIndex:2];
    destinationColor3 = [requestCopy destinationColor];
    texRGBA = [destinationColor3 texRGBA];
    [computeCommandEncoder setTexture:texRGBA atIndex:3];

    [computeCommandEncoder setBytes:v50 length:8 atIndex:0];
    [computeCommandEncoder setBytes:v51 length:4 atIndex:1];
    v30 = computeCommandEncoder;
    v31 = 2;
  }

  else
  {
    v48 = 0uLL;
    *&v49 = 0;
    sourceColor2 = [requestCopy sourceColor];
    [PTColorConversion getColorMatrix:sourceColor2 toRGB:0];

    sourceColor3 = [requestCopy sourceColor];
    [sourceColor3 texLuma];
    v44 = v23;
    v34 = v20;
    v36 = v35 = weightCopy;
    sourceColor4 = [requestCopy sourceColor];
    [sourceColor4 texChroma];
    v38 = v45 = aCopy;
    LOWORD(v46[0]) = [PTColorConversion getChromaSubsampledFromLuma:v36 texChroma:v38];

    weightCopy = v35;
    v39 = &self->super.isa + v34;
    v23 = v44;
    [computeCommandEncoder setComputePipelineState:v39[37]];
    [computeCommandEncoder setTexture:v35 atIndex:0];
    [computeCommandEncoder setTexture:self->_precomputedGaussian atIndex:1];
    [computeCommandEncoder setTexture:v45 atIndex:2];
    destinationColor4 = [requestCopy destinationColor];
    texLuma = [destinationColor4 texLuma];
    [computeCommandEncoder setTexture:texLuma atIndex:3];

    destinationColor5 = [requestCopy destinationColor];
    texChroma = [destinationColor5 texChroma];
    [computeCommandEncoder setTexture:texChroma atIndex:4];

    aCopy = v45;
    [computeCommandEncoder setBytes:v50 length:8 atIndex:0];
    [computeCommandEncoder setBytes:v51 length:4 atIndex:1];
    [computeCommandEncoder setBytes:&v48 length:24 atIndex:2];
    [computeCommandEncoder setBytes:v46 length:2 atIndex:3];
    v30 = computeCommandEncoder;
    v31 = 4;
  }

  [v30 setBytes:v47 length:4 atIndex:v31];
  if (v23)
  {
    [(PTImageblockConfig *)v23 threads];
    [(PTImageblockConfig *)v23 threadsPerGroup];
  }

  else
  {
    v48 = 0uLL;
    *&v49 = 0;
    memset(v46, 0, sizeof(v46));
  }

  [computeCommandEncoder dispatchThreads:&v48 threadsPerThreadgroup:v46];
  [computeCommandEncoder endEncoding];
}

+ (PTNoiseValues)calculateVarReadNoise:(id)noise
{
  noiseCopy = noise;
  v4 = [noiseCopy AGC];
  conversionGain = [noiseCopy conversionGain];
  readNoise_1x = [noiseCopy readNoise_1x];
  readNoise_8x = [noiseCopy readNoise_8x];
  renderState = [noiseCopy renderState];
  +[PTTuningParameters noiseScaleFactorForHwModelID:sensorID:](PTTuningParameters, "noiseScaleFactorForHwModelID:sensorID:", [renderState hwModelID], objc_msgSend(noiseCopy, "sensorID"));
  v10 = v9;

  renderState2 = [noiseCopy renderState];
  sourceColorBitDepth = [renderState2 sourceColorBitDepth];

  renderState3 = [noiseCopy renderState];
  *&v14 = v10;
  [renderState3 setNoiseScaleFactor:v14];

  [noiseCopy totalSensorCropRectSize];
  v16 = v15;
  sourceColor = [noiseCopy sourceColor];
  width = [sourceColor width];
  [noiseCopy visCropFactor];
  v20 = v16 / (width * v19);
  [noiseCopy totalSensorCropRectSize];
  v22 = v21 * v20;
  sourceColor2 = [noiseCopy sourceColor];
  height = [sourceColor2 height];
  [noiseCopy visCropFactor];
  v34 = v25;

  v26 = v10 / (v22 / vmuls_lane_f32(height, v34, 1));
  v27 = v26 / 1023.0;
  if (sourceColorBitDepth == 10)
  {
    v27 = (v26 / 1023.0) * 12.0;
  }

  v28 = v4 / 255.0;
  v29 = (conversionGain / 65535.0) * v27;
  v30 = (readNoise_1x / 65535.0) * (readNoise_1x / 65535.0);
  v31 = (v30 - ((readNoise_8x / 65535.0) * (readNoise_8x / 65535.0))) / 0.98438;
  v32 = v29 * ((v31 + ((v28 * (v30 - v31)) * v28)) * v29);
  v33 = v28 * v29;
  result.var1 = v33;
  result.var0 = v32;
  return result;
}

@end