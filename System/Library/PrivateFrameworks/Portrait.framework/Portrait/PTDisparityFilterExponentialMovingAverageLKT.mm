@interface PTDisparityFilterExponentialMovingAverageLKT
- (PTDisparityFilterExponentialMovingAverageLKT)initWithMetalContext:(id)context;
- (PTDisparityFilterExponentialMovingAverageLKT)initWithMetalContext:(id)context disparitySize:(id *)size disparityFilteredSize:(id *)filteredSize disparityPixelFormat:(unint64_t)format colorSize:(id *)colorSize colorPixelFormat:(unint64_t)pixelFormat sensorPort:(id)port;
- (int)copyDisparityWithBias:(id)bias inDisparity:(id)disparity outDisparity:(id)outDisparity disparityBias:(float)disparityBias;
- (int)exponentialMovingAverageFilter:(PTDisparityFilterExponentialMovingAverageLKT *)self inDisplacement:(SEL)displacement inDisparityPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity updateCoefficient:(id)coefficient disparityBias:(id)bias;
- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inDisparityPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity disparityBias:(float)bias;
- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inStatePrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity outState:(id)state;
@end

@implementation PTDisparityFilterExponentialMovingAverageLKT

- (PTDisparityFilterExponentialMovingAverageLKT)initWithMetalContext:(id)context
{
  contextCopy = context;
  v29.receiver = self;
  v29.super_class = PTDisparityFilterExponentialMovingAverageLKT;
  v6 = [(PTDisparityFilterExponentialMovingAverageLKT *)&v29 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v6->_metalContext, context);
  *v7->_iirUpdateCoefficient = COERCE_UNSIGNED_INT(0.25);
  v8 = [contextCopy computePipelineStateFor:@"temporalFilterExponentialMovingAverageLKT" withConstants:0];
  temporalFilterExponentialMovingAverageLKT = v7->_temporalFilterExponentialMovingAverageLKT;
  v7->_temporalFilterExponentialMovingAverageLKT = v8;

  if (!v7->_temporalFilterExponentialMovingAverageLKT)
  {
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(PTDisparityFilterExponentialMovingAverageLKT *)v13 initWithMetalContext:v14, v15, v16, v17, v18, v19, v20];
    }

    goto LABEL_9;
  }

  v10 = [contextCopy computePipelineStateFor:@"copyDisparityWithBias" withConstants:0];
  copyDisparityWithBias = v7->_copyDisparityWithBias;
  v7->_copyDisparityWithBias = v10;

  if (!v7->_copyDisparityWithBias)
  {
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(PTDisparityFilterExponentialMovingAverageLKT *)v13 initWithMetalContext:v21, v22, v23, v24, v25, v26, v27];
    }

LABEL_9:

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v12 = v7;
LABEL_11:

  return v12;
}

- (PTDisparityFilterExponentialMovingAverageLKT)initWithMetalContext:(id)context disparitySize:(id *)size disparityFilteredSize:(id *)filteredSize disparityPixelFormat:(unint64_t)format colorSize:(id *)colorSize colorPixelFormat:(unint64_t)pixelFormat sensorPort:(id)port
{
  contextCopy = context;
  v14 = [(PTDisparityFilterExponentialMovingAverageLKT *)self initWithMetalContext:contextCopy];
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
    v18 = PTDefaultsGetDictionary();
    v19 = [v18 objectForKeyedSubscript:@"PortraitDump"];
    if (v19)
    {
      v20 = [PTUtil temporaryDirectory:v19];
      dumpInputOutputFolder = v15->_dumpInputOutputFolder;
      v15->_dumpInputOutputFolder = v20;
    }

    v22 = [v18 objectForKeyedSubscript:@"PTDisparityFilterLKTQuality"];

    if (v22)
    {
      intValue = [v22 intValue];
    }

    else
    {
      intValue = 1;
    }

    v24 = [PTOpticalFlow alloc];
    v29 = *&colorSize->var0;
    var2 = colorSize->var2;
    v25 = [(PTOpticalFlow *)v24 initWithMetalContext:contextCopy colorSize:&v29 lktPreset:intValue];
    opticalFlow = v15->_opticalFlow;
    v15->_opticalFlow = v25;

    v27 = v15;
  }

  return v15;
}

- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inStatePrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity outState:(id)state
{
  stateCopy = state;
  outDisparityCopy = outDisparity;
  filterCopy = filter;
  LODWORD(disparity) = [(PTDisparityFilterExponentialMovingAverageLKT *)self temporalDisparityFilter:filterCopy inDisplacement:displacement inDisparityPrev:prev inDisparity:disparity outDisparity:outDisparityCopy disparityBias:0.0];
  textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
  LODWORD(displacement) = [textureUtil copy:filterCopy inTex:outDisparityCopy outTex:stateCopy];

  return displacement | disparity;
}

- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inDisparityPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity disparityBias:(float)bias
{
  filterCopy = filter;
  displacementCopy = displacement;
  prevCopy = prev;
  disparityCopy = disparity;
  outDisparityCopy = outDisparity;
  if (prevCopy == outDisparityCopy)
  {
    v22 = _PTLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [PTFilterEMA_LKT temporalDisparityFilter:v22 inDisplacement:? inDisparityPrev:? inDisparity:? outDisparity:? disparityBias:?];
    }

    v21 = -1;
  }

  else
  {
    if (self->_frameCount)
    {
      LOWORD(v19) = *self->_iirUpdateCoefficient;
      *&v20 = bias;
      v21 = [(PTDisparityFilterExponentialMovingAverageLKT *)self exponentialMovingAverageFilter:filterCopy inDisplacement:displacementCopy inDisparityPrev:prevCopy inDisparity:disparityCopy outDisparity:outDisparityCopy updateCoefficient:v19 disparityBias:v20];
    }

    else
    {
      *&v19 = bias;
      [(PTDisparityFilterExponentialMovingAverageLKT *)self copyDisparityWithBias:filterCopy inDisparity:disparityCopy outDisparity:outDisparityCopy disparityBias:v19];
      v21 = 0;
    }

    ++self->_frameCount;
  }

  return v21;
}

- (int)exponentialMovingAverageFilter:(PTDisparityFilterExponentialMovingAverageLKT *)self inDisplacement:(SEL)displacement inDisparityPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity updateCoefficient:(id)coefficient disparityBias:(id)bias
{
  v34 = v7;
  v33 = v8;
  biasCopy = bias;
  coefficientCopy = coefficient;
  outDisparityCopy = outDisparity;
  disparityCopy = disparity;
  computeCommandEncoder = [prev computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v19 = _PTLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v19 disparityApplyPostModifier:v20 inDisparity:v21 outDisparity:v22 postModifier:v23, v24, v25, v26];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_temporalFilterExponentialMovingAverageLKT];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];

  [computeCommandEncoder setTexture:outDisparityCopy atIndex:1];
  [computeCommandEncoder setTexture:coefficientCopy atIndex:2];

  [computeCommandEncoder setTexture:biasCopy atIndex:3];
  [computeCommandEncoder setBytes:&v34 length:2 atIndex:0];
  [computeCommandEncoder setBytes:&v33 length:4 atIndex:1];
  width = [biasCopy width];
  height = [biasCopy height];

  v32[0] = width;
  v32[1] = height;
  v32[2] = 1;
  v30 = xmmword_2244A5230;
  v31 = 1;
  [computeCommandEncoder dispatchThreads:v32 threadsPerThreadgroup:&v30];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)copyDisparityWithBias:(id)bias inDisparity:(id)disparity outDisparity:(id)outDisparity disparityBias:(float)disparityBias
{
  disparityBiasCopy = disparityBias;
  outDisparityCopy = outDisparity;
  disparityCopy = disparity;
  computeCommandEncoder = [bias computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v12 disparityApplyPostModifier:v13 inDisparity:v14 outDisparity:v15 postModifier:v16, v17, v18, v19];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_copyDisparityWithBias];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];

  [computeCommandEncoder setTexture:outDisparityCopy atIndex:1];
  [computeCommandEncoder setBytes:&disparityBiasCopy length:4 atIndex:0];
  width = [outDisparityCopy width];
  height = [outDisparityCopy height];

  v25[0] = width;
  v25[1] = height;
  v25[2] = 1;
  v23 = xmmword_2244A5230;
  v24 = 1;
  [computeCommandEncoder dispatchThreads:v25 threadsPerThreadgroup:&v23];
  [computeCommandEncoder endEncoding];

  return 0;
}

@end