@interface PTRaytracingInterpolateResult
+ (PTNoiseValues)calculateVarReadNoise:(id)a3;
- (PTRaytracingInterpolateResult)initWithMetalContext:(id)a3 useExportQualityNoise:(BOOL)a4;
- (void)interpolateRGBWeightUsingRGBALinearToDest:(id)a3 renderRequest:(id)a4 inRGBWeight:(id)a5 inRGBA:(id)a6;
- (void)interpolateRGBWeightUsingSourceToDest:(id)a3 renderRequest:(id)a4 inRGBWeight:(id)a5;
@end

@implementation PTRaytracingInterpolateResult

- (PTRaytracingInterpolateResult)initWithMetalContext:(id)a3 useExportQualityNoise:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v95.receiver = self;
  v95.super_class = PTRaytracingInterpolateResult;
  v8 = [(PTRaytracingInterpolateResult *)&v95 init];
  v9 = v8;
  if (!v8)
  {
    v44 = 0;
    goto LABEL_29;
  }

  objc_storeStrong(&v8->_metalContext, a3);
  if (v4)
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
  v15 = [v7 imageblocksSupported];
  v16 = @"NoImageblocks";
  if (v15)
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
    v21 = v7;
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
      v7 = v21;
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
      v7 = v21;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingInterpolateResult *)v45 initWithMetalContext:v75 useExportQualityNoise:v76, v77, v78, v79, v80, v81];
      }

      goto LABEL_27;
    }

    v7 = v21;
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

- (void)interpolateRGBWeightUsingSourceToDest:(id)a3 renderRequest:(id)a4 inRGBWeight:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 computeCommandEncoder];
  +[PTRandom nextUshort2:seed:](PTRandom, "nextUshort2:seed:", self->_precomputedGaussianOffsetMaxValue, [v8 frameId]);
  v71[1] = v11;
  v71[0] = v12;
  [PTRaytracingInterpolateResult calculateVarReadNoise:v8];
  v70[0] = v13;
  v70[1] = v14;
  v15 = [v8 sourceColor];
  v16 = [v15 transferFunction];
  v62 = [PTColorConversion getTransferFunction:v16 toLinear:1];

  v17 = [PTImageblockConfig alloc];
  v18 = [v8 destinationColor];
  if (v8)
  {
    [v8 scissorRect];
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  v19 = [(PTImageblockConfig *)v17 initWithPTTexture:v18 scissorRect:&v68];

  [(PTImageblockConfig *)v19 scissorRectOffset];
  v67[1] = v20;
  v67[0] = v21;
  if ([(PTMetalContext *)self->_metalContext imageblocksSupported])
  {
    [v10 setImageblockWidth:-[PTImageblockConfig imageblockSize](v19 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v19, "imageblockSize")}];
  }

  v22 = [v8 sourceColor];
  if (([v22 isRGB] & 1) == 0)
  {

LABEL_11:
    v29 = v9;
    v68 = 0uLL;
    *&v69 = 0;
    v30 = [v8 sourceColor];
    [PTColorConversion getColorMatrix:v30 toRGB:1];

    v31 = [v8 sourceColor];
    v32 = [v31 texLuma];
    v33 = [v8 sourceColor];
    v34 = [v33 texChroma];
    v66 = [PTColorConversion getChromaSubsampledFromLuma:v32 texChroma:v34];

    v35 = [v8 destinationColor];
    v36 = [v35 isRGB];

    if (v36)
    {
      v37 = [v8 destinationColor];
      v38 = [v37 transferFunction];
      v39 = [PTColorConversion getTransferFunction:v38 toLinear:1];

      LODWORD(v63) = v39;
      [v10 setComputePipelineState:self->_interpolateRGBWeightSourceYUVDestRGBA[v62]];
      v9 = v29;
      [v10 setTexture:v29 atIndex:0];
      [v10 setTexture:self->_precomputedGaussian atIndex:1];
      v40 = [v8 sourceColor];
      v41 = [v40 texLuma];
      [v10 setTexture:v41 atIndex:2];

      v42 = [v8 sourceColor];
      v43 = [v42 texChroma];
      [v10 setTexture:v43 atIndex:3];

      v44 = [v8 destinationColor];
      v45 = [v44 texRGBA];
      [v10 setTexture:v45 atIndex:4];

      [v10 setBytes:v70 length:8 atIndex:0];
      [v10 setBytes:v71 length:4 atIndex:1];
      [v10 setBytes:&v68 length:24 atIndex:2];
      [v10 setBytes:&v66 length:2 atIndex:3];
      v46 = &v63;
      v47 = v10;
      v48 = 4;
      goto LABEL_18;
    }

    v63 = 0;
    v64 = 0;
    v65 = 0;
    v49 = [v8 sourceColor];
    [PTColorConversion getColorMatrix:v49 toRGB:0];

    v50 = [v8 integratedStyleCoefficientsTextureArray];
    v9 = v29;
    if (v50)
    {
    }

    else
    {
      v51 = [v8 colorCube];

      if (!v51)
      {
        [v10 setComputePipelineState:self->_interpolateRGBWeightSourceYUVDestYUV[v62]];
        goto LABEL_17;
      }
    }

    [v10 setComputePipelineState:self->_interpolateRGBWeightSourceYUVDestYUVPostProcess[v62]];
    v52 = [v8 colorCube];
    [v10 setTexture:v52 atIndex:7];

LABEL_17:
    [v10 setTexture:v29 atIndex:0];
    [v10 setTexture:self->_precomputedGaussian atIndex:1];
    v53 = [v8 sourceColor];
    v54 = [v53 texLuma];
    [v10 setTexture:v54 atIndex:2];

    v55 = [v8 sourceColor];
    v56 = [v55 texChroma];
    [v10 setTexture:v56 atIndex:3];

    v57 = [v8 destinationColor];
    v58 = [v57 texLuma];
    [v10 setTexture:v58 atIndex:4];

    v59 = [v8 destinationColor];
    v60 = [v59 texChroma];
    [v10 setTexture:v60 atIndex:5];

    [v10 setBytes:v70 length:8 atIndex:0];
    [v10 setBytes:v71 length:4 atIndex:1];
    [v10 setBytes:&v68 length:24 atIndex:2];
    [v10 setBytes:&v63 length:24 atIndex:3];
    v46 = &v66;
    v47 = v10;
    v48 = 2;
LABEL_18:
    [v47 setBytes:v46 length:v48 atIndex:4];
    [v10 setBytes:v67 length:4 atIndex:5];
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

  v23 = [v8 destinationColor];
  v24 = [v23 isRGB];

  if (!v24)
  {
    goto LABEL_11;
  }

  [v10 setComputePipelineState:self->_interpolateRGBWeightSourceRGBADestRGBA[v62]];
  [v10 setTexture:v9 atIndex:0];
  [v10 setTexture:self->_precomputedGaussian atIndex:1];
  v25 = [v8 sourceColor];
  v26 = [v25 texRGBA];
  [v10 setTexture:v26 atIndex:2];

  v27 = [v8 destinationColor];
  v28 = [v27 texRGBA];
  [v10 setTexture:v28 atIndex:3];

  [v10 setBytes:v70 length:8 atIndex:0];
  [v10 setBytes:v71 length:4 atIndex:1];
  [v10 setBytes:v67 length:4 atIndex:2];
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
  [v10 dispatchThreads:&v68 threadsPerThreadgroup:&v63];
  [v10 endEncoding];
}

- (void)interpolateRGBWeightUsingRGBALinearToDest:(id)a3 renderRequest:(id)a4 inRGBWeight:(id)a5 inRGBA:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a3 computeCommandEncoder];
  +[PTRandom nextUshort2:seed:](PTRandom, "nextUshort2:seed:", self->_precomputedGaussianOffsetMaxValue, [v10 frameId]);
  v51[1] = v14;
  v51[0] = v15;
  [PTRaytracingInterpolateResult calculateVarReadNoise:v10];
  v50[0] = v16;
  v50[1] = v17;
  v18 = [v10 sourceColor];
  v19 = [v18 transferFunction];
  v20 = [PTColorConversion getTransferFunction:v19 toLinear:1];

  v21 = [PTImageblockConfig alloc];
  v22 = [v10 destinationColor];
  if (v10)
  {
    [v10 scissorRect];
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v23 = [(PTImageblockConfig *)v21 initWithPTTexture:v22 scissorRect:&v48];

  [(PTImageblockConfig *)v23 scissorRectOffset];
  v47[1] = v24;
  v47[0] = v25;
  if ([(PTMetalContext *)self->_metalContext imageblocksSupported])
  {
    [v13 setImageblockWidth:-[PTImageblockConfig imageblockSize](v23 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v23, "imageblockSize")}];
  }

  v26 = [v10 destinationColor];
  v27 = [v26 isRGB];

  if (v27)
  {
    [v13 setComputePipelineState:self->_interpolateRGBWeightRGBALinearDestRGBA[v20]];
    [v13 setTexture:v11 atIndex:0];
    [v13 setTexture:self->_precomputedGaussian atIndex:1];
    [v13 setTexture:v12 atIndex:2];
    v28 = [v10 destinationColor];
    v29 = [v28 texRGBA];
    [v13 setTexture:v29 atIndex:3];

    [v13 setBytes:v50 length:8 atIndex:0];
    [v13 setBytes:v51 length:4 atIndex:1];
    v30 = v13;
    v31 = 2;
  }

  else
  {
    v48 = 0uLL;
    *&v49 = 0;
    v32 = [v10 sourceColor];
    [PTColorConversion getColorMatrix:v32 toRGB:0];

    v33 = [v10 sourceColor];
    [v33 texLuma];
    v44 = v23;
    v34 = v20;
    v36 = v35 = v11;
    v37 = [v10 sourceColor];
    [v37 texChroma];
    v38 = v45 = v12;
    LOWORD(v46[0]) = [PTColorConversion getChromaSubsampledFromLuma:v36 texChroma:v38];

    v11 = v35;
    v39 = &self->super.isa + v34;
    v23 = v44;
    [v13 setComputePipelineState:v39[37]];
    [v13 setTexture:v35 atIndex:0];
    [v13 setTexture:self->_precomputedGaussian atIndex:1];
    [v13 setTexture:v45 atIndex:2];
    v40 = [v10 destinationColor];
    v41 = [v40 texLuma];
    [v13 setTexture:v41 atIndex:3];

    v42 = [v10 destinationColor];
    v43 = [v42 texChroma];
    [v13 setTexture:v43 atIndex:4];

    v12 = v45;
    [v13 setBytes:v50 length:8 atIndex:0];
    [v13 setBytes:v51 length:4 atIndex:1];
    [v13 setBytes:&v48 length:24 atIndex:2];
    [v13 setBytes:v46 length:2 atIndex:3];
    v30 = v13;
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

  [v13 dispatchThreads:&v48 threadsPerThreadgroup:v46];
  [v13 endEncoding];
}

+ (PTNoiseValues)calculateVarReadNoise:(id)a3
{
  v3 = a3;
  v4 = [v3 AGC];
  v5 = [v3 conversionGain];
  v6 = [v3 readNoise_1x];
  v7 = [v3 readNoise_8x];
  v8 = [v3 renderState];
  +[PTTuningParameters noiseScaleFactorForHwModelID:sensorID:](PTTuningParameters, "noiseScaleFactorForHwModelID:sensorID:", [v8 hwModelID], objc_msgSend(v3, "sensorID"));
  v10 = v9;

  v11 = [v3 renderState];
  v12 = [v11 sourceColorBitDepth];

  v13 = [v3 renderState];
  *&v14 = v10;
  [v13 setNoiseScaleFactor:v14];

  [v3 totalSensorCropRectSize];
  v16 = v15;
  v17 = [v3 sourceColor];
  v18 = [v17 width];
  [v3 visCropFactor];
  v20 = v16 / (v18 * v19);
  [v3 totalSensorCropRectSize];
  v22 = v21 * v20;
  v23 = [v3 sourceColor];
  v24 = [v23 height];
  [v3 visCropFactor];
  v34 = v25;

  v26 = v10 / (v22 / vmuls_lane_f32(v24, v34, 1));
  v27 = v26 / 1023.0;
  if (v12 == 10)
  {
    v27 = (v26 / 1023.0) * 12.0;
  }

  v28 = v4 / 255.0;
  v29 = (v5 / 65535.0) * v27;
  v30 = (v6 / 65535.0) * (v6 / 65535.0);
  v31 = (v30 - ((v7 / 65535.0) * (v7 / 65535.0))) / 0.98438;
  v32 = v29 * ((v31 + ((v28 * (v30 - v31)) * v28)) * v29);
  v33 = v28 * v29;
  result.var1 = v33;
  result.var0 = v32;
  return result;
}

@end