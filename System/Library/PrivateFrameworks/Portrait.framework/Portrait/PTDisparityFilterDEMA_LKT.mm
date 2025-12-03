@interface PTDisparityFilterDEMA_LKT
- (PTDisparityFilterDEMA_LKT)initWithMetalContext:(id)context disparitySize:(id *)size disparityFilteredSize:(id *)filteredSize disparityPixelFormat:(unint64_t)format colorSize:(id *)colorSize colorPixelFormat:(unint64_t)pixelFormat sensorPort:(id)port;
- (PTDisparityFilterDEMA_LKT)initWithMetalContext:(id)context sensorPort:(id)port;
- (int)copyDisparity:(id)disparity inDisparity:(id)inDisparity outDisparity:(id)outDisparity;
- (int)exponentialMovingAverageFilter:(id)filter inDisplacement:(id)displacement inDemaPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity outDEMA:(id)a;
- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inDisparityPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity disparityBias:(float)bias;
- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inStatePrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity outState:(id)state;
@end

@implementation PTDisparityFilterDEMA_LKT

- (PTDisparityFilterDEMA_LKT)initWithMetalContext:(id)context sensorPort:(id)port
{
  contextCopy = context;
  portCopy = port;
  v49.receiver = self;
  v49.super_class = PTDisparityFilterDEMA_LKT;
  v9 = [(PTDisparityFilterDEMA_LKT *)&v49 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metalContext, context);
    v10->_direction = -1.0;
    if (([@"PortTypeFrontInfrared" isEqual:portCopy] & 1) == 0 && (objc_msgSend(@"PortTypeFront", "isEqual:", portCopy) & 1) == 0 && (objc_msgSend(@"PortTypeBackTelephoto", "isEqual:", portCopy) & 1) == 0)
    {
      [@"PortTypeBack" isEqual:portCopy];
    }

    v48 = 0;
    v10->_erodeMonocularDisparity = 0.0;
    v10->_motionVisualization = 0;
    if ([@"PortTypeFrontSuperWide" isEqual:portCopy])
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
    device = [contextCopy device];
    v14 = [device newSamplerStateWithDescriptor:v12];
    samplerState = v10->_samplerState;
    v10->_samplerState = v14;

    v16 = objc_opt_new();
    [v16 setConstantFloat2:@"kIIRUpdateCoefficients_float2" withName:0.00029296876];
    [v16 setConstantFloat2:@"kMotionThresholdMinMax_float2" withName:524288.125];
    *&v17 = v10->_direction;
    [v16 setConstantFloat:@"kDirection_float" withName:v17];
    [v16 setConstantValue:&v48 type:29 withName:@"kMotionCorrectionFunction"];
    v18 = [contextCopy computePipelineStateFor:@"temporalFilterDEMA_LKT" withConstants:v16];
    temporalFilterDEMA_LKT = v10->_temporalFilterDEMA_LKT;
    v10->_temporalFilterDEMA_LKT = v18;

    if (v10->_temporalFilterDEMA_LKT)
    {
      v20 = [contextCopy computePipelineStateFor:@"temporalFilterDEMA_LKT_VisualizeMotion" withConstants:v16];
      temporalFilterDEMA_LKT_VisualizeMotion = v10->_temporalFilterDEMA_LKT_VisualizeMotion;
      v10->_temporalFilterDEMA_LKT_VisualizeMotion = v20;

      if (v10->_temporalFilterDEMA_LKT_VisualizeMotion)
      {
        v22 = [contextCopy computePipelineStateFor:@"resampleDisparity" withConstants:v16];
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

- (PTDisparityFilterDEMA_LKT)initWithMetalContext:(id)context disparitySize:(id *)size disparityFilteredSize:(id *)filteredSize disparityPixelFormat:(unint64_t)format colorSize:(id *)colorSize colorPixelFormat:(unint64_t)pixelFormat sensorPort:(id)port
{
  contextCopy = context;
  v14 = [(PTDisparityFilterDEMA_LKT *)self initWithMetalContext:contextCopy sensorPort:port];
  v15 = v14;
  if (v14)
  {
    v14->_frameCount = 0;
    v16 = *&size->var0;
    v14->_disparitySize.depth = size->var2;
    *&v14->_disparitySize.width = v16;
    v17 = *&filteredSize->var0;
    v14->_disparityFilteredSize.depth = filteredSize->var2;
    *&v14->_disparityFilteredSize.width = v17;
    v18 = [PTOpticalFlow alloc];
    v19 = v15->_direction == 1.0;
    v57 = *&colorSize->var0;
    var2 = colorSize->var2;
    v20 = [(PTOpticalFlow *)v18 initWithMetalContext:contextCopy colorSize:&v57 lktPreset:1 allocateDisplacementFWD:0 needConversionBGRA2YUVA:0 inverseFlow:v19];
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

    v22 = [[PTGlobalReduction alloc] initWithMetalContext:contextCopy textureSize:65 pixelFormat:size->var0, size->var1];
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

    device = [contextCopy device];
    v25 = [device newBufferWithLength:16 options:0];
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

- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inStatePrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity outState:(id)state
{
  filterCopy = filter;
  displacementCopy = displacement;
  prevCopy = prev;
  disparityCopy = disparity;
  outDisparityCopy = outDisparity;
  stateCopy = state;
  if (prevCopy == outDisparityCopy)
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
      v20 = [(PTDisparityFilterDEMA_LKT *)self exponentialMovingAverageFilter:filterCopy inDisplacement:displacementCopy inDemaPrev:prevCopy inDisparity:disparityCopy outDisparity:outDisparityCopy outDEMA:stateCopy];
    }

    else
    {
      [(PTDisparityFilterDEMA_LKT *)self copyDisparity:filterCopy inDisparity:disparityCopy outDisparity:outDisparityCopy];
      [(PTDisparityFilterDEMA_LKT *)self copyDisparity:filterCopy inDisparity:disparityCopy outDisparity:stateCopy];
      v20 = 0;
    }

    ++self->_frameCount;
  }

  return v20;
}

- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inDisparityPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity disparityBias:(float)bias
{
  filterCopy = filter;
  displacementCopy = displacement;
  prevCopy = prev;
  disparityCopy = disparity;
  outDisparityCopy = outDisparity;
  if (bias == 0.0)
  {
    demaStates = self->_demaStates;
    if (!demaStates)
    {
      v43 = MEMORY[0x277CBEA60];
      textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
      v30 = [textureUtil createWithWidth:self->_disparityFilteredSize.width height:self->_disparityFilteredSize.height pixelFormat:65];
      textureUtil2 = [(PTMetalContext *)self->_metalContext textureUtil];
      v32 = [textureUtil2 createWithWidth:self->_disparityFilteredSize.width height:self->_disparityFilteredSize.height pixelFormat:65];
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
    v27 = [(PTDisparityFilterDEMA_LKT *)self temporalDisparityFilter:filterCopy inDisplacement:displacementCopy inStatePrev:v36 inDisparity:disparityCopy outDisparity:outDisparityCopy outState:v41];
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

- (int)exponentialMovingAverageFilter:(id)filter inDisplacement:(id)displacement inDemaPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity outDEMA:(id)a
{
  globalReduction = self->_globalReduction;
  avgDisplacement = self->_avgDisplacement;
  aCopy = a;
  outDisparityCopy = outDisparity;
  disparityCopy = disparity;
  prevCopy = prev;
  displacementCopy = displacement;
  filterCopy = filter;
  [(PTGlobalReduction *)globalReduction parallelReductionAverage:filterCopy inTexture:displacementCopy outGlobalAverage:avgDisplacement];
  computeCommandEncoder = [filterCopy computeCommandEncoder];

  if (!computeCommandEncoder)
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

  [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v31)];
  [computeCommandEncoder setTexture:displacementCopy atIndex:0];

  [computeCommandEncoder setTexture:prevCopy atIndex:1];
  [computeCommandEncoder setTexture:disparityCopy atIndex:2];

  [computeCommandEncoder setTexture:outDisparityCopy atIndex:3];
  [computeCommandEncoder setTexture:aCopy atIndex:4];

  [computeCommandEncoder setBuffer:self->_avgDisplacement offset:0 atIndex:0];
  [computeCommandEncoder setBytes:&self->_erodeMonocularDisparity length:4 atIndex:1];
  [computeCommandEncoder setSamplerState:self->_samplerState atIndex:0];
  width = [outDisparityCopy width];
  height = [outDisparityCopy height];

  v37[0] = width;
  v37[1] = height;
  v37[2] = 1;
  v35 = xmmword_2244A5230;
  v36 = 1;
  [computeCommandEncoder dispatchThreads:v37 threadsPerThreadgroup:&v35];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)copyDisparity:(id)disparity inDisparity:(id)inDisparity outDisparity:(id)outDisparity
{
  outDisparityCopy = outDisparity;
  inDisparityCopy = inDisparity;
  computeCommandEncoder = [disparity computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v11 disparityApplyPostModifier:v12 inDisparity:v13 outDisparity:v14 postModifier:v15, v16, v17, v18];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_resampleDisparity];
  [computeCommandEncoder setTexture:inDisparityCopy atIndex:0];

  [computeCommandEncoder setTexture:outDisparityCopy atIndex:1];
  [computeCommandEncoder setSamplerState:self->_samplerState atIndex:0];
  width = [outDisparityCopy width];
  height = [outDisparityCopy height];

  v24[0] = width;
  v24[1] = height;
  v24[2] = 1;
  v22 = xmmword_2244A5230;
  v23 = 1;
  [computeCommandEncoder dispatchThreads:v24 threadsPerThreadgroup:&v22];
  [computeCommandEncoder endEncoding];

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