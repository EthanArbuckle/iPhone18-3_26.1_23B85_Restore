@interface PTDisparityFilterDEMA_LKT
- (PTDisparityFilterDEMA_LKT)initWithMetalContext:(id)a3 disparitySize:(id *)a4 disparityFilteredSize:(id *)a5 disparityPixelFormat:(unint64_t)a6 colorSize:(id *)a7 colorPixelFormat:(unint64_t)a8 sensorPort:(id)a9;
- (PTDisparityFilterDEMA_LKT)initWithMetalContext:(id)a3 sensorPort:(id)a4;
- (int)copyDisparity:(id)a3 inDisparity:(id)a4 outDisparity:(id)a5;
- (int)exponentialMovingAverageFilter:(id)a3 inDisplacement:(id)a4 inDemaPrev:(id)a5 inDisparity:(id)a6 outDisparity:(id)a7 outDEMA:(id)a8;
- (int)temporalDisparityFilter:(id)a3 inDisplacement:(id)a4 inDisparityPrev:(id)a5 inDisparity:(id)a6 outDisparity:(id)a7 disparityBias:(float)a8;
- (int)temporalDisparityFilter:(id)a3 inDisplacement:(id)a4 inStatePrev:(id)a5 inDisparity:(id)a6 outDisparity:(id)a7 outState:(id)a8;
@end

@implementation PTDisparityFilterDEMA_LKT

- (PTDisparityFilterDEMA_LKT)initWithMetalContext:(id)a3 sensorPort:(id)a4
{
  v7 = a3;
  v8 = a4;
  v49.receiver = self;
  v49.super_class = PTDisparityFilterDEMA_LKT;
  v9 = [(PTDisparityFilterDEMA_LKT *)&v49 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metalContext, a3);
    v10->_direction = -1.0;
    if (([@"PortTypeFrontInfrared" isEqual:v8] & 1) == 0 && (objc_msgSend(@"PortTypeFront", "isEqual:", v8) & 1) == 0 && (objc_msgSend(@"PortTypeBackTelephoto", "isEqual:", v8) & 1) == 0)
    {
      [@"PortTypeBack" isEqual:v8];
    }

    v48 = 0;
    v10->_erodeMonocularDisparity = 0.0;
    v10->_motionVisualization = 0;
    if ([@"PortTypeFrontSuperWide" isEqual:v8])
    {
      v10->_erodeMonocularDisparity = 0.75;
      v11 = _PTLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PTDisparityFilterDEMA_LKT initWithMetalContext:v11 sensorPort:?];
      }
    }

    v12 = objc_opt_new();
    [v12 setNormalizedCoordinates:1];
    [v12 setMinFilter:1];
    [v12 setMagFilter:1];
    v13 = [v7 device];
    v14 = [v13 newSamplerStateWithDescriptor:v12];
    samplerState = v10->_samplerState;
    v10->_samplerState = v14;

    v16 = objc_opt_new();
    [v16 setConstantFloat2:@"kIIRUpdateCoefficients_float2" withName:0.00029296876];
    [v16 setConstantFloat2:@"kMotionThresholdMinMax_float2" withName:524288.125];
    *&v17 = v10->_direction;
    [v16 setConstantFloat:@"kDirection_float" withName:v17];
    [v16 setConstantValue:&v48 type:29 withName:@"kMotionCorrectionFunction"];
    v18 = [v7 computePipelineStateFor:@"temporalFilterDEMA_LKT" withConstants:v16];
    temporalFilterDEMA_LKT = v10->_temporalFilterDEMA_LKT;
    v10->_temporalFilterDEMA_LKT = v18;

    if (v10->_temporalFilterDEMA_LKT)
    {
      v20 = [v7 computePipelineStateFor:@"temporalFilterDEMA_LKT_VisualizeMotion" withConstants:v16];
      temporalFilterDEMA_LKT_VisualizeMotion = v10->_temporalFilterDEMA_LKT_VisualizeMotion;
      v10->_temporalFilterDEMA_LKT_VisualizeMotion = v20;

      if (v10->_temporalFilterDEMA_LKT_VisualizeMotion)
      {
        v22 = [v7 computePipelineStateFor:@"resampleDisparity" withConstants:v16];
        resampleDisparity = v10->_resampleDisparity;
        v10->_resampleDisparity = v22;

        if (v10->_resampleDisparity)
        {
          v24 = v10;
LABEL_22:

          goto LABEL_23;
        }

        v25 = _PTLogSystem();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [(PTDisparityFilterDEMA_LKT *)v25 initWithMetalContext:v40 sensorPort:v41, v42, v43, v44, v45, v46];
        }
      }

      else
      {
        v25 = _PTLogSystem();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [(PTDisparityFilterDEMA_LKT *)v25 initWithMetalContext:v33 sensorPort:v34, v35, v36, v37, v38, v39];
        }
      }
    }

    else
    {
      v25 = _PTLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(PTDisparityFilterDEMA_LKT *)v25 initWithMetalContext:v26 sensorPort:v27, v28, v29, v30, v31, v32];
      }
    }

    v24 = 0;
    goto LABEL_22;
  }

  v24 = 0;
LABEL_23:

  return v24;
}

- (PTDisparityFilterDEMA_LKT)initWithMetalContext:(id)a3 disparitySize:(id *)a4 disparityFilteredSize:(id *)a5 disparityPixelFormat:(unint64_t)a6 colorSize:(id *)a7 colorPixelFormat:(unint64_t)a8 sensorPort:(id)a9
{
  v13 = a3;
  v14 = [(PTDisparityFilterDEMA_LKT *)self initWithMetalContext:v13 sensorPort:a9];
  v15 = v14;
  if (v14)
  {
    v14->_frameCount = 0;
    v16 = *&a4->var0;
    v14->_disparitySize.depth = a4->var2;
    *&v14->_disparitySize.width = v16;
    v17 = *&a5->var0;
    v14->_disparityFilteredSize.depth = a5->var2;
    *&v14->_disparityFilteredSize.width = v17;
    v18 = [PTOpticalFlow alloc];
    v19 = v15->_direction == 1.0;
    v57 = *&a7->var0;
    var2 = a7->var2;
    v20 = [(PTOpticalFlow *)v18 initWithMetalContext:v13 colorSize:&v57 lktPreset:1 allocateDisplacementFWD:0 needConversionBGRA2YUVA:0 inverseFlow:v19];
    opticalFlow = v15->_opticalFlow;
    v15->_opticalFlow = v20;

    if (!v15->_opticalFlow)
    {
      v27 = _PTLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(PTDisparityFilterDEMA_LKT *)v27 initWithMetalContext:v35 disparitySize:v36 disparityFilteredSize:v37 disparityPixelFormat:v38 colorSize:v39 colorPixelFormat:v40 sensorPort:v41];
      }

      goto LABEL_14;
    }

    v22 = [[PTGlobalReduction alloc] initWithMetalContext:v13 textureSize:65 pixelFormat:a4->var0, a4->var1];
    globalReduction = v15->_globalReduction;
    v15->_globalReduction = v22;

    if (!v15->_globalReduction)
    {
      v27 = _PTLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingV2002 *)v27 initWithMetalContext:v42 colorSize:v43 disparitySize:v44 debugRendering:v45 verbose:v46 options:v47 quality:v48];
      }

      goto LABEL_14;
    }

    v24 = [v13 device];
    v25 = [v24 newBufferWithLength:16 options:0];
    avgDisplacement = v15->_avgDisplacement;
    v15->_avgDisplacement = v25;

    if (!v15->_avgDisplacement)
    {
      v27 = _PTLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(PTDisparityFilterDEMA_LKT *)v27 initWithMetalContext:v49 disparitySize:v50 disparityFilteredSize:v51 disparityPixelFormat:v52 colorSize:v53 colorPixelFormat:v54 sensorPort:v55];
      }

      goto LABEL_14;
    }

    if (!v15->_globalReduction)
    {
      v27 = _PTLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(PTDisparityFilterDEMA_LKT *)v27 initWithMetalContext:v28 disparitySize:v29 disparityFilteredSize:v30 disparityPixelFormat:v31 colorSize:v32 colorPixelFormat:v33 sensorPort:v34];
      }

LABEL_14:

      v15 = 0;
    }
  }

  return v15;
}

- (int)temporalDisparityFilter:(id)a3 inDisplacement:(id)a4 inStatePrev:(id)a5 inDisparity:(id)a6 outDisparity:(id)a7 outState:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v16 == v18)
  {
    v21 = _PTLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(PTDisparityFilterDEMA_LKT *)v21 temporalDisparityFilter:v22 inDisplacement:v23 inStatePrev:v24 inDisparity:v25 outDisparity:v26 outState:v27, v28];
    }

    v20 = -10;
  }

  else
  {
    if (self->_frameCount)
    {
      v20 = [(PTDisparityFilterDEMA_LKT *)self exponentialMovingAverageFilter:v14 inDisplacement:v15 inDemaPrev:v16 inDisparity:v17 outDisparity:v18 outDEMA:v19];
    }

    else
    {
      [(PTDisparityFilterDEMA_LKT *)self copyDisparity:v14 inDisparity:v17 outDisparity:v18];
      [(PTDisparityFilterDEMA_LKT *)self copyDisparity:v14 inDisparity:v17 outDisparity:v19];
      v20 = 0;
    }

    ++self->_frameCount;
  }

  return v20;
}

- (int)temporalDisparityFilter:(id)a3 inDisplacement:(id)a4 inDisparityPrev:(id)a5 inDisparity:(id)a6 outDisparity:(id)a7 disparityBias:(float)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (a8 == 0.0)
  {
    demaStates = self->_demaStates;
    if (!demaStates)
    {
      v43 = MEMORY[0x277CBEA60];
      v29 = [(PTMetalContext *)self->_metalContext textureUtil];
      v30 = [v29 createWithWidth:self->_disparityFilteredSize.width height:self->_disparityFilteredSize.height pixelFormat:65];
      v31 = [(PTMetalContext *)self->_metalContext textureUtil];
      v32 = [v31 createWithWidth:self->_disparityFilteredSize.width height:self->_disparityFilteredSize.height pixelFormat:65];
      v33 = [v43 arrayWithObjects:{v30, v32, 0}];
      v34 = self->_demaStates;
      self->_demaStates = v33;

      demaStates = self->_demaStates;
    }

    if (self->_frameCount >= 0)
    {
      v35 = self->_frameCount & 1;
    }

    else
    {
      v35 = -(self->_frameCount & 1);
    }

    v36 = [(NSArray *)demaStates objectAtIndexedSubscript:v35];
    frameCount = self->_frameCount;
    v38 = __OFADD__(frameCount++, 1);
    v39 = (frameCount < 0) ^ v38;
    v40 = frameCount & 1;
    if (v39)
    {
      v40 = -v40;
    }

    v41 = [(NSArray *)self->_demaStates objectAtIndexedSubscript:v40];
    v27 = [(PTDisparityFilterDEMA_LKT *)self temporalDisparityFilter:v14 inDisplacement:v15 inStatePrev:v36 inDisparity:v17 outDisparity:v18 outState:v41];
  }

  else
  {
    v19 = _PTLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(PTDisparityFilterDEMA_LKT *)v19 temporalDisparityFilter:v20 inDisplacement:v21 inDisparityPrev:v22 inDisparity:v23 outDisparity:v24 disparityBias:v25, v26];
    }

    v27 = -10;
  }

  return v27;
}

- (int)exponentialMovingAverageFilter:(id)a3 inDisplacement:(id)a4 inDemaPrev:(id)a5 inDisparity:(id)a6 outDisparity:(id)a7 outDEMA:(id)a8
{
  globalReduction = self->_globalReduction;
  avgDisplacement = self->_avgDisplacement;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  [(PTGlobalReduction *)globalReduction parallelReductionAverage:v21 inTexture:v20 outGlobalAverage:avgDisplacement];
  v22 = [v21 computeCommandEncoder];

  if (!v22)
  {
    v23 = _PTLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v23 disparityApplyPostModifier:v24 inDisparity:v25 outDisparity:v26 postModifier:v27, v28, v29, v30];
    }
  }

  v31 = 16;
  if (self->_motionVisualization)
  {
    v31 = 24;
  }

  [v22 setComputePipelineState:*(&self->super.isa + v31)];
  [v22 setTexture:v20 atIndex:0];

  [v22 setTexture:v19 atIndex:1];
  [v22 setTexture:v18 atIndex:2];

  [v22 setTexture:v17 atIndex:3];
  [v22 setTexture:v16 atIndex:4];

  [v22 setBuffer:self->_avgDisplacement offset:0 atIndex:0];
  [v22 setBytes:&self->_erodeMonocularDisparity length:4 atIndex:1];
  [v22 setSamplerState:self->_samplerState atIndex:0];
  v32 = [v17 width];
  v33 = [v17 height];

  v37[0] = v32;
  v37[1] = v33;
  v37[2] = 1;
  v35 = xmmword_2244A5230;
  v36 = 1;
  [v22 dispatchThreads:v37 threadsPerThreadgroup:&v35];
  [v22 endEncoding];

  return 0;
}

- (int)copyDisparity:(id)a3 inDisparity:(id)a4 outDisparity:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  if (!v10)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v11 disparityApplyPostModifier:v12 inDisparity:v13 outDisparity:v14 postModifier:v15, v16, v17, v18];
    }
  }

  [v10 setComputePipelineState:self->_resampleDisparity];
  [v10 setTexture:v9 atIndex:0];

  [v10 setTexture:v8 atIndex:1];
  [v10 setSamplerState:self->_samplerState atIndex:0];
  v19 = [v8 width];
  v20 = [v8 height];

  v24[0] = v19;
  v24[1] = v20;
  v24[2] = 1;
  v22 = xmmword_2244A5230;
  v23 = 1;
  [v10 dispatchThreads:v24 threadsPerThreadgroup:&v22];
  [v10 endEncoding];

  return 0;
}

- (double)initWithMetalContext:(float *)a1 sensorPort:(NSObject *)a2 .cold.1(float *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_2243FB000, a2, OS_LOG_TYPE_DEBUG, "PTDisparityFilterDEMA_LKT enabling disparity erosion with strength: %.2f", &v4, 0xCu);
  return result;
}

@end