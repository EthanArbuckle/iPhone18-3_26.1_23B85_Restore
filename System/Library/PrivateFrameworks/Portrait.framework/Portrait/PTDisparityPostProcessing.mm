@interface PTDisparityPostProcessing
+ (int)prewarmForCameraCaptured;
+ (int)prewarmWithDescriptor:(id)descriptor;
- (PTDisparityPostProcessing)initWithCommandQueue:(id)queue disparitySize:(id *)size filteredDisparitySize:(id *)disparitySize disparityPixelFormat:(unint64_t)format colorSize:(id *)colorSize colorPixelFormat:(unint64_t)pixelFormat sensorPort:(id)port;
- (PTDisparityPostProcessing)initWithDescriptor:(id)descriptor;
- (int)computeOpticalFlow:(id)flow inRGBA:(id)a outDisplacement:(id)displacement;
- (int)computeOpticalFlow:(id)flow outDisplacement:(id)displacement;
- (int)temporalDisparityFilter:(id)filter inDisparity:(id)disparity inDisplacement:(id)displacement inDisparityFilteredPrev:(id)prev outDisparityFiltered:(id)filtered disparityBias:(float)bias;
- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inDisparityFilteredPrev:(id)prev outDisparityFiltered:(id)filtered disparityBias:(float)bias;
- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inStatePrev:(id)prev inDisparity:(id)disparity outDisparityFiltered:(id)filtered outState:(id)state;
- (int)temporalDisparityFilter:(id)filter inStatePrev:(id)prev inDisparity:(id)disparity outDisparityFiltered:(id)filtered outState:(id)state;
@end

@implementation PTDisparityPostProcessing

- (PTDisparityPostProcessing)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  commandQueue = [descriptorCopy commandQueue];
  if (descriptorCopy)
  {
    [descriptorCopy disparitySize];
    [descriptorCopy filteredDisparitySize];
    disparityPixelFormat = [descriptorCopy disparityPixelFormat];
    [descriptorCopy colorSize];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, sizeof(v12));
    disparityPixelFormat = [0 disparityPixelFormat];
    memset(v11, 0, sizeof(v11));
  }

  colorPixelFormat = [descriptorCopy colorPixelFormat];
  sensorPort = [descriptorCopy sensorPort];
  v9 = [(PTDisparityPostProcessing *)self initWithCommandQueue:commandQueue disparitySize:v13 filteredDisparitySize:v12 disparityPixelFormat:disparityPixelFormat colorSize:v11 colorPixelFormat:colorPixelFormat sensorPort:sensorPort];

  return v9;
}

- (PTDisparityPostProcessing)initWithCommandQueue:(id)queue disparitySize:(id *)size filteredDisparitySize:(id *)disparitySize disparityPixelFormat:(unint64_t)format colorSize:(id *)colorSize colorPixelFormat:(unint64_t)pixelFormat sensorPort:(id)port
{
  queueCopy = queue;
  portCopy = port;
  v36.receiver = self;
  v36.super_class = PTDisparityPostProcessing;
  v17 = [(PTDisparityPostProcessing *)&v36 init];
  if (!v17)
  {
    goto LABEL_10;
  }

  PTKTraceInit();
  kdebug_trace();
  v18 = *&disparitySize->var0;
  *(v17 + 5) = disparitySize->var2;
  *(v17 + 24) = v18;
  var2 = size->var2;
  *(v17 + 3) = *&size->var0;
  *(v17 + 8) = var2;
  v20 = colorSize->var2;
  *(v17 + 72) = *&colorSize->var0;
  *(v17 + 11) = v20;
  v21 = [[PTMetalContext alloc] initWithCommandQueue:queueCopy bundleClass:objc_opt_class()];
  v22 = *(v17 + 2);
  *(v17 + 2) = v21;

  if (!*(v17 + 2))
  {
    v28 = _PTLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [PTEffectComposition initWithConfig:];
    }

    goto LABEL_9;
  }

  v23 = [PTDisparityFilterDEMA_LKT alloc];
  v24 = *(v17 + 2);
  v34 = *&size->var0;
  v35 = size->var2;
  v32 = *&disparitySize->var0;
  v33 = disparitySize->var2;
  v30 = *&colorSize->var0;
  v31 = colorSize->var2;
  v25 = [(PTDisparityFilterDEMA_LKT *)v23 initWithMetalContext:v24 disparitySize:&v34 disparityFilteredSize:&v32 disparityPixelFormat:format colorSize:&v30 colorPixelFormat:pixelFormat sensorPort:portCopy];
  v26 = *(v17 + 1);
  *(v17 + 1) = v25;

  if (!*(v17 + 1))
  {
    v28 = _PTLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [PTDisparityPostProcessing initWithCommandQueue:disparitySize:filteredDisparitySize:disparityPixelFormat:colorSize:colorPixelFormat:sensorPort:];
    }

LABEL_9:

LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  kdebug_trace();
  v27 = v17;
LABEL_11:

  return v27;
}

+ (int)prewarmWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = [[PTDisparityPostProcessing alloc] initWithDescriptor:descriptorCopy];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

+ (int)prewarmForCameraCaptured
{
  v2 = MTLCreateSystemDefaultDevice();
  newCommandQueue = [v2 newCommandQueue];
  v12 = xmmword_2244A57C0;
  v13 = 1;
  v10 = xmmword_2244A57C0;
  v11 = 1;
  v8 = xmmword_2244A57C0;
  v9 = 1;
  v4 = [[PTDisparityPostProcessingDescriptor alloc] initWithCommandQueue:newCommandQueue disparitySize:&v12 filteredDisparitySize:&v10 disparityPixelFormat:25 colorSize:&v8 colorPixelFormat:71 sensorPort:@"PortTypeBackSuperWide"];
  v5 = [PTDisparityPostProcessing prewarmWithDescriptor:v4];
  if (v5)
  {
    v6 = _PTLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[PTDisparityPostProcessing prewarmForCameraCaptured];
    }
  }

  return v5;
}

- (int)computeOpticalFlow:(id)flow outDisplacement:(id)displacement
{
  metalContext = self->_metalContext;
  displacementCopy = displacement;
  flowCopy = flow;
  commandQueue = [(PTMetalContext *)metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
    }
  }

  [commandBuffer setLabel:@"PTDisparityPostProcessing computeOpticalFlow"];
  v12 = [(PTDisparityPostProcessing *)self computeOpticalFlow:commandBuffer inRGBA:flowCopy outDisplacement:displacementCopy];

  [commandBuffer commit];
  return v12;
}

- (int)computeOpticalFlow:(id)flow inRGBA:(id)a outDisplacement:(id)displacement
{
  flowCopy = flow;
  aCopy = a;
  displacementCopy = displacement;
  colorSize = self->_colorSize;
  if (isExpectedSize(displacementCopy, &colorSize, @"Invalid size of outDisplacement"))
  {
    if (!flowCopy)
    {
      v11 = _PTLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    [flowCopy setLabel:@"PTDisparityPostProcessing prepare filter"];
    v12 = [(PTAbstractDisparityFilter *)self->_disparityFilter prepareFilter:flowCopy inRGBA:aCopy outDisplacement:displacementCopy];
  }

  else
  {
    v12 = -10;
  }

  return v12;
}

- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inDisparityFilteredPrev:(id)prev outDisparityFiltered:(id)filtered disparityBias:(float)bias
{
  metalContext = self->_metalContext;
  filteredCopy = filtered;
  prevCopy = prev;
  displacementCopy = displacement;
  filterCopy = filter;
  commandQueue = [(PTMetalContext *)metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    v19 = _PTLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
    }
  }

  [commandBuffer setLabel:@"PTDisparityPostProcessing temporalDisparityFilter"];
  *&v20 = bias;
  v21 = [(PTDisparityPostProcessing *)self temporalDisparityFilter:commandBuffer inDisparity:filterCopy inDisplacement:displacementCopy inDisparityFilteredPrev:prevCopy outDisparityFiltered:filteredCopy disparityBias:v20];

  [commandBuffer commit];
  return v21;
}

- (int)temporalDisparityFilter:(id)filter inDisparity:(id)disparity inDisplacement:(id)displacement inDisparityFilteredPrev:(id)prev outDisparityFiltered:(id)filtered disparityBias:(float)bias
{
  v34 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  disparityCopy = disparity;
  displacementCopy = displacement;
  prevCopy = prev;
  filteredCopy = filtered;
  disparitySize = self->_disparitySize;
  if (isExpectedSize(disparityCopy, &disparitySize, @"Invalid size of inDisparity") && (disparitySize = self->_colorSize, isExpectedSize(displacementCopy, &disparitySize, @"Invalid size of inDisplacement")) && (disparitySize = self->_filteredDisparitySize, (isExpectedSize(filteredCopy, &disparitySize, @"Invalid size of outDisparity") & 1) != 0))
  {
    if (!filterCopy)
    {
      v19 = _PTLogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    [filterCopy setLabel:@"PTEffectTemporalFilter temporalDisparityFilter"];
    *&v20 = bias;
    v21 = [(PTAbstractDisparityFilter *)self->_disparityFilter temporalDisparityFilter:filterCopy inDisplacement:displacementCopy inDisparityPrev:prevCopy inDisparity:disparityCopy outDisparity:filteredCopy disparityBias:v20];
  }

  else
  {
    v22 = _PTLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      width = self->_disparitySize.width;
      height = self->_disparitySize.height;
      width = [disparityCopy width];
      height = [disparityCopy height];
      LODWORD(disparitySize.width) = 134218752;
      *(&disparitySize.width + 4) = width;
      WORD2(disparitySize.height) = 2048;
      *(&disparitySize.height + 6) = height;
      HIWORD(disparitySize.depth) = 2048;
      v31 = width;
      v32 = 2048;
      v33 = height;
      _os_log_error_impl(&dword_2243FB000, v22, OS_LOG_TYPE_ERROR, "disparity size expected (%zu x %zu) was (%zu x %zu)", &disparitySize, 0x2Au);
    }

    v23 = _PTLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [PTDisparityPostProcessing temporalDisparityFilter:inDisparity:inDisplacement:inDisparityFilteredPrev:outDisparityFiltered:disparityBias:];
    }

    v24 = _PTLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [PTDisparityPostProcessing temporalDisparityFilter:inDisparity:inDisplacement:inDisparityFilteredPrev:outDisparityFiltered:disparityBias:];
    }

    v21 = -10;
  }

  return v21;
}

- (int)temporalDisparityFilter:(id)filter inStatePrev:(id)prev inDisparity:(id)disparity outDisparityFiltered:(id)filtered outState:(id)state
{
  metalContext = self->_metalContext;
  stateCopy = state;
  filteredCopy = filtered;
  disparityCopy = disparity;
  prevCopy = prev;
  filterCopy = filter;
  commandQueue = [(PTMetalContext *)metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    v20 = _PTLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
    }
  }

  [commandBuffer setLabel:@"PTEffectTemporalFilter temporalDisparityFilter"];
  v21 = [(PTDisparityPostProcessing *)self temporalDisparityFilter:commandBuffer inDisplacement:filterCopy inStatePrev:prevCopy inDisparity:disparityCopy outDisparityFiltered:filteredCopy outState:stateCopy];

  [commandBuffer commit];
  return v21;
}

- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inStatePrev:(id)prev inDisparity:(id)disparity outDisparityFiltered:(id)filtered outState:(id)state
{
  v34 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  displacementCopy = displacement;
  prevCopy = prev;
  disparityCopy = disparity;
  filteredCopy = filtered;
  stateCopy = state;
  buf = self->_disparitySize;
  if (isExpectedSize(disparityCopy, &buf, @"Invalid size of inDisparity") && (buf = self->_colorSize, isExpectedSize(displacementCopy, &buf, @"Invalid size of inDisplacement")) && (buf = self->_filteredDisparitySize, (isExpectedSize(filteredCopy, &buf, @"Invalid size of outDisparityFiltered") & 1) != 0))
  {
    if (!filterCopy)
    {
      v20 = _PTLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    [filterCopy setLabel:@"PTEffectTemporalFilter temporalDisparityFilter"];
    v21 = [(PTAbstractDisparityFilter *)self->_disparityFilter temporalDisparityFilter:filterCopy inDisplacement:displacementCopy inStatePrev:prevCopy inDisparity:disparityCopy outDisparity:filteredCopy outState:stateCopy];
  }

  else
  {
    v22 = _PTLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      width = self->_disparitySize.width;
      height = self->_disparitySize.height;
      width = [disparityCopy width];
      height = [disparityCopy height];
      LODWORD(buf.width) = 134218752;
      *(&buf.width + 4) = width;
      WORD2(buf.height) = 2048;
      *(&buf.height + 6) = height;
      HIWORD(buf.depth) = 2048;
      v31 = width;
      v32 = 2048;
      v33 = height;
      _os_log_error_impl(&dword_2243FB000, v22, OS_LOG_TYPE_ERROR, "disparity size expected (%zu x %zu) was (%zu x %zu)", &buf, 0x2Au);
    }

    v23 = _PTLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [PTDisparityPostProcessing temporalDisparityFilter:inDisparity:inDisplacement:inDisparityFilteredPrev:outDisparityFiltered:disparityBias:];
    }

    v24 = _PTLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [PTDisparityPostProcessing temporalDisparityFilter:inDisparity:inDisplacement:inDisparityFilteredPrev:outDisparityFiltered:disparityBias:];
    }

    v21 = -10;
  }

  return v21;
}

- (void)temporalDisparityFilter:inDisparity:inDisplacement:inDisparityFilteredPrev:outDisparityFiltered:disparityBias:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  [v0 width];
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_5(&dword_2243FB000, v1, v2, "inDisplacement size expected (%zu x %zu) was (%zu x %zu)", v3, v4, v5, v6, v7);
}

- (void)temporalDisparityFilter:inDisparity:inDisplacement:inDisparityFilteredPrev:outDisparityFiltered:disparityBias:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  [v0 width];
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_5(&dword_2243FB000, v1, v2, "outDisparity size expected (%zu x %zu) was (%zu x %zu)", v3, v4, v5, v6, v7);
}

@end