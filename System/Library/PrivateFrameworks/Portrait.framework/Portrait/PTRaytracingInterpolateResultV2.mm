@interface PTRaytracingInterpolateResultV2
+ (PTNoiseValues)calculateVarReadNoise:(id)a3;
- (PTRaytracingInterpolateResultV2)initWithMetalContext:(id)a3 useExportQualityNoise:(BOOL)a4;
- (void)interpolateRGBWeightUsingRGBALinearToDest:(id)a3 renderRequest:(id)a4 inRGBWeight:(id)a5 inRGBA:(id)a6;
- (void)interpolateRGBWeightUsingSourceToDest:(id)a3 renderRequest:(id)a4 inRGBWeight:(id)a5;
@end

@implementation PTRaytracingInterpolateResultV2

- (PTRaytracingInterpolateResultV2)initWithMetalContext:(id)a3 useExportQualityNoise:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v70.receiver = self;
  v70.super_class = PTRaytracingInterpolateResultV2;
  v8 = [(PTRaytracingInterpolateResultV2 *)&v70 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_metalContext, a3);
    if (v4)
    {
      v10 = 512;
    }

    else
    {
      v10 = 256;
    }

    v11 = [PTPrecomputeRandom computeGaussian:v9->_metalContext sideLength:v10, v7];
    precomputedGaussian = v9->_precomputedGaussian;
    v9->_precomputedGaussian = v11;

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
        v7 = v68;
        goto LABEL_25;
      }
    }

    v31 = _PTLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingInterpolateResultV2 *)v31 initWithMetalContext:v32 useExportQualityNoise:v33, v34, v35, v36, v37, v38];
    }

LABEL_24:
    v7 = v68;

    v30 = 0;
LABEL_25:
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (void)interpolateRGBWeightUsingSourceToDest:(id)a3 renderRequest:(id)a4 inRGBWeight:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 0;
  v61 = 0u;
  v62 = 0u;
  if (v9)
  {
    [v9 scissorRect];
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
  +[PTRandom nextUshort2:seed:](PTRandom, "nextUshort2:seed:", self->_precomputedGaussianOffsetMaxValue, [v9 frameId]);
  v59[1] = v13;
  v59[0] = v14;
  [PTRaytracingInterpolateResultV2 calculateVarReadNoise:v9];
  v58[0] = v15;
  v58[1] = v16;
  v17 = [v9 sourceColor];
  v18 = [v17 transferFunction];
  v19 = [PTColorConversion getTransferFunction:v18 toLinear:1];

  v20 = [v9 sourceColor];
  if ([v20 isRGB])
  {
    v21 = [v9 destinationColor];
    v22 = [v21 isRGB];

    if (v22)
    {
      [v8 setComputePipelineState:self->_interpolateRGBWeightSourceRGBADestRGBA[v19]];
      v23 = [v9 sourceColor];
      v24 = [v23 texRGBA];
      [v8 setTexture:v24 atIndex:0];

      [v8 setTexture:v10 atIndex:1];
      [v8 setTexture:self->_precomputedGaussian atIndex:2];
      v25 = [v9 destinationColor];
      v26 = [v25 texRGBA];
      [v8 setTexture:v26 atIndex:3];

      [v8 setBytes:v58 length:8 atIndex:0];
      [v8 setBytes:v59 length:4 atIndex:1];
      [v8 setBytes:v60 length:4 atIndex:2];
      goto LABEL_12;
    }
  }

  else
  {
  }

  v50 = v12;
  v51 = v10;
  *&v55[8] = 0;
  v56 = 0;
  v57 = 0;
  v27 = [v9 sourceColor];
  [PTColorConversion getColorMatrix:v27 toRGB:1];

  v28 = [v9 sourceColor];
  v29 = [v28 texLuma];
  v30 = [v9 sourceColor];
  v31 = [v30 texChroma];
  *v55 = [PTColorConversion getChromaSubsampledFromLuma:v29 texChroma:v31];

  v32 = [v9 destinationColor];
  LODWORD(v28) = [v32 isRGB];

  if (v28)
  {
    [v8 setComputePipelineState:self->_interpolateRGBWeightSourceYUVDestRGBA[v19]];
    v33 = [v9 sourceColor];
    v34 = [v33 texLuma];
    [v8 setTexture:v34 atIndex:0];

    v35 = [v9 sourceColor];
    v36 = [v35 texChroma];
    [v8 setTexture:v36 atIndex:1];

    v10 = v51;
    [v8 setTexture:v51 atIndex:2];
    [v8 setTexture:self->_precomputedGaussian atIndex:3];
    v37 = [v9 destinationColor];
    v38 = [v37 texRGBA];
    [v8 setTexture:v38 atIndex:4];

    [v8 setBytes:v58 length:8 atIndex:0];
    [v8 setBytes:v59 length:4 atIndex:1];
    [v8 setBytes:&v55[2] length:24 atIndex:2];
    [v8 setBytes:v55 length:2 atIndex:3];
    v39 = v8;
    v40 = 4;
  }

  else
  {
    v53 = 0uLL;
    v54 = 0;
    v41 = [v9 destinationColor];
    [PTColorConversion getColorMatrix:v41 toRGB:0];

    [v8 setComputePipelineState:self->_interpolateRGBWeightSourceYUVDestYUV[v19]];
    v42 = [v9 sourceColor];
    v43 = [v42 texLuma];
    [v8 setTexture:v43 atIndex:0];

    v44 = [v9 sourceColor];
    v45 = [v44 texChroma];
    [v8 setTexture:v45 atIndex:1];

    v10 = v51;
    [v8 setTexture:v51 atIndex:2];
    [v8 setTexture:self->_precomputedGaussian atIndex:3];
    v46 = [v9 destinationColor];
    v47 = [v46 texLuma];
    [v8 setTexture:v47 atIndex:4];

    v48 = [v9 destinationColor];
    v49 = [v48 texChroma];
    [v8 setTexture:v49 atIndex:5];

    [v8 setBytes:v58 length:8 atIndex:0];
    [v8 setBytes:v59 length:4 atIndex:1];
    [v8 setBytes:&v55[2] length:24 atIndex:2];
    [v8 setBytes:&v53 length:24 atIndex:3];
    [v8 setBytes:v55 length:2 atIndex:4];
    v39 = v8;
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
  [v8 dispatchThreads:&v55[2] threadsPerThreadgroup:&v53];
}

- (void)interpolateRGBWeightUsingRGBALinearToDest:(id)a3 renderRequest:(id)a4 inRGBWeight:(id)a5 inRGBA:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = 0;
  v50 = 0u;
  v51 = 0u;
  if (v11)
  {
    [v11 scissorRect];
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
  +[PTRandom nextUshort2:seed:](PTRandom, "nextUshort2:seed:", self->_precomputedGaussianOffsetMaxValue, [v11 frameId]);
  v48[1] = v16;
  v48[0] = v17;
  [PTRaytracingInterpolateResultV2 calculateVarReadNoise:v11];
  v47[0] = v18;
  v47[1] = v19;
  v20 = [v11 sourceColor];
  v21 = [v20 transferFunction];
  v22 = [PTColorConversion getTransferFunction:v21 toLinear:1];

  v23 = [v11 destinationColor];
  LODWORD(v21) = [v23 isRGB];

  if (v21)
  {
    [v10 setComputePipelineState:self->_interpolateRGBWeightRGBALinearDestRGBA[v22]];
    [v10 setTexture:v13 atIndex:0];
    [v10 setTexture:v12 atIndex:1];
    [v10 setTexture:self->_precomputedGaussian atIndex:2];
    v24 = [v11 destinationColor];
    v25 = [v24 texRGBA];
    [v10 setTexture:v25 atIndex:3];

    [v10 setBytes:v47 length:8 atIndex:0];
    [v10 setBytes:v48 length:4 atIndex:1];
    v26 = v10;
    v27 = 2;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v28 = [v11 sourceColor];
    [PTColorConversion getColorMatrix:v28 toRGB:0];

    v29 = [v11 sourceColor];
    [v29 texLuma];
    v40 = v13;
    v31 = v30 = v12;
    [v11 sourceColor];
    v39 = v22;
    v33 = v32 = v15;
    v34 = [v33 texChroma];
    LOWORD(v42) = [PTColorConversion getChromaSubsampledFromLuma:v31 texChroma:v34];

    v15 = v32;
    v12 = v30;
    v13 = v40;

    [v10 setComputePipelineState:self->_interpolateRGBWeightRGBALinearDestYUV[v39]];
    [v10 setTexture:v40 atIndex:0];
    [v10 setTexture:v12 atIndex:1];
    [v10 setTexture:self->_precomputedGaussian atIndex:2];
    v35 = [v11 destinationColor];
    v36 = [v35 texLuma];
    [v10 setTexture:v36 atIndex:3];

    v37 = [v11 destinationColor];
    v38 = [v37 texChroma];
    [v10 setTexture:v38 atIndex:4];

    [v10 setBytes:v47 length:8 atIndex:0];
    [v10 setBytes:v48 length:4 atIndex:1];
    [v10 setBytes:&v44 length:24 atIndex:2];
    [v10 setBytes:&v42 length:2 atIndex:3];
    v26 = v10;
    v27 = 4;
  }

  [v26 setBytes:v49 length:4 atIndex:v27];
  v44 = v41;
  v45 = v15;
  v46 = 1;
  v42 = xmmword_2244A5220;
  v43 = 1;
  [v10 dispatchThreads:&v44 threadsPerThreadgroup:&v42];
}

+ (PTNoiseValues)calculateVarReadNoise:(id)a3
{
  v3 = a3;
  v4 = [v3 AGC];
  v5 = [v3 conversionGain];
  v6 = [v3 readNoise_1x];
  v7 = [v3 readNoise_8x];
  v8 = [v3 renderState];
  [v8 noiseScaleFactor];
  v10 = v9;

  v11 = [v3 renderState];
  v12 = [v11 sourceColorBitDepth];

  [v3 totalSensorCropRectSize];
  v14 = v13;
  v15 = [v3 sourceColor];
  v16 = v14 / [v15 width];
  [v3 totalSensorCropRectSize];
  v18 = v16 * v17;
  v19 = [v3 sourceColor];
  v20 = v10 / (v18 / [v19 height]);

  v21 = v20 / 1023.0;
  if (v12 == 10)
  {
    v21 = (v20 / 1023.0) * 12.0;
  }

  v22 = v4 / 255.0;
  v23 = (v5 / 65535.0) * v21;
  v24 = (v6 / 65535.0) * (v6 / 65535.0);
  v25 = (v24 - ((v7 / 65535.0) * (v7 / 65535.0))) / 0.98438;
  v26 = v23 * ((v25 + ((v22 * (v24 - v25)) * v22)) * v23);
  v27 = v22 * v23;

  v28 = v26;
  v29 = v27;
  result.var1 = v29;
  result.var0 = v28;
  return result;
}

@end