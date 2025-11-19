@interface PTDisparityPostProcessing
+ (int)prewarmForCameraCaptured;
+ (int)prewarmWithDescriptor:(id)a3;
- (PTDisparityPostProcessing)initWithCommandQueue:(id)a3 disparitySize:(id *)a4 filteredDisparitySize:(id *)a5 disparityPixelFormat:(unint64_t)a6 colorSize:(id *)a7 colorPixelFormat:(unint64_t)a8 sensorPort:(id)a9;
- (PTDisparityPostProcessing)initWithDescriptor:(id)a3;
- (int)computeOpticalFlow:(id)a3 inRGBA:(id)a4 outDisplacement:(id)a5;
- (int)computeOpticalFlow:(id)a3 outDisplacement:(id)a4;
- (int)temporalDisparityFilter:(id)a3 inDisparity:(id)a4 inDisplacement:(id)a5 inDisparityFilteredPrev:(id)a6 outDisparityFiltered:(id)a7 disparityBias:(float)a8;
- (int)temporalDisparityFilter:(id)a3 inDisplacement:(id)a4 inDisparityFilteredPrev:(id)a5 outDisparityFiltered:(id)a6 disparityBias:(float)a7;
- (int)temporalDisparityFilter:(id)a3 inDisplacement:(id)a4 inStatePrev:(id)a5 inDisparity:(id)a6 outDisparityFiltered:(id)a7 outState:(id)a8;
- (int)temporalDisparityFilter:(id)a3 inStatePrev:(id)a4 inDisparity:(id)a5 outDisparityFiltered:(id)a6 outState:(id)a7;
@end

@implementation PTDisparityPostProcessing

- (PTDisparityPostProcessing)initWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 commandQueue];
  if (v4)
  {
    [v4 disparitySize];
    [v4 filteredDisparitySize];
    v6 = [v4 disparityPixelFormat];
    [v4 colorSize];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, sizeof(v12));
    v6 = [0 disparityPixelFormat];
    memset(v11, 0, sizeof(v11));
  }

  v7 = [v4 colorPixelFormat];
  v8 = [v4 sensorPort];
  v9 = [(PTDisparityPostProcessing *)self initWithCommandQueue:v5 disparitySize:v13 filteredDisparitySize:v12 disparityPixelFormat:v6 colorSize:v11 colorPixelFormat:v7 sensorPort:v8];

  return v9;
}

- (PTDisparityPostProcessing)initWithCommandQueue:(id)a3 disparitySize:(id *)a4 filteredDisparitySize:(id *)a5 disparityPixelFormat:(unint64_t)a6 colorSize:(id *)a7 colorPixelFormat:(unint64_t)a8 sensorPort:(id)a9
{
  v15 = a3;
  v16 = a9;
  v36.receiver = self;
  v36.super_class = PTDisparityPostProcessing;
  v17 = [(PTDisparityPostProcessing *)&v36 init];
  if (!v17)
  {
    goto LABEL_10;
  }

  PTKTraceInit();
  kdebug_trace();
  v18 = *&a5->var0;
  *(v17 + 5) = a5->var2;
  *(v17 + 24) = v18;
  var2 = a4->var2;
  *(v17 + 3) = *&a4->var0;
  *(v17 + 8) = var2;
  v20 = a7->var2;
  *(v17 + 72) = *&a7->var0;
  *(v17 + 11) = v20;
  v21 = [[PTMetalContext alloc] initWithCommandQueue:v15 bundleClass:objc_opt_class()];
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
  v34 = *&a4->var0;
  v35 = a4->var2;
  v32 = *&a5->var0;
  v33 = a5->var2;
  v30 = *&a7->var0;
  v31 = a7->var2;
  v25 = [(PTDisparityFilterDEMA_LKT *)v23 initWithMetalContext:v24 disparitySize:&v34 disparityFilteredSize:&v32 disparityPixelFormat:a6 colorSize:&v30 colorPixelFormat:a8 sensorPort:v16];
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

+ (int)prewarmWithDescriptor:(id)a3
{
  v3 = a3;
  v4 = [[PTDisparityPostProcessing alloc] initWithDescriptor:v3];

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
  v3 = [v2 newCommandQueue];
  v12 = xmmword_2244A57C0;
  v13 = 1;
  v10 = xmmword_2244A57C0;
  v11 = 1;
  v8 = xmmword_2244A57C0;
  v9 = 1;
  v4 = [[PTDisparityPostProcessingDescriptor alloc] initWithCommandQueue:v3 disparitySize:&v12 filteredDisparitySize:&v10 disparityPixelFormat:25 colorSize:&v8 colorPixelFormat:71 sensorPort:@"PortTypeBackSuperWide"];
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

- (int)computeOpticalFlow:(id)a3 outDisplacement:(id)a4
{
  metalContext = self->_metalContext;
  v7 = a4;
  v8 = a3;
  v9 = [(PTMetalContext *)metalContext commandQueue];
  v10 = [v9 commandBuffer];

  if (!v10)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
    }
  }

  [v10 setLabel:@"PTDisparityPostProcessing computeOpticalFlow"];
  v12 = [(PTDisparityPostProcessing *)self computeOpticalFlow:v10 inRGBA:v8 outDisplacement:v7];

  [v10 commit];
  return v12;
}

- (int)computeOpticalFlow:(id)a3 inRGBA:(id)a4 outDisplacement:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  colorSize = self->_colorSize;
  if (isExpectedSize(v10, &colorSize, @"Invalid size of outDisplacement"))
  {
    if (!v8)
    {
      v11 = _PTLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    [v8 setLabel:@"PTDisparityPostProcessing prepare filter"];
    v12 = [(PTAbstractDisparityFilter *)self->_disparityFilter prepareFilter:v8 inRGBA:v9 outDisplacement:v10];
  }

  else
  {
    v12 = -10;
  }

  return v12;
}

- (int)temporalDisparityFilter:(id)a3 inDisplacement:(id)a4 inDisparityFilteredPrev:(id)a5 outDisparityFiltered:(id)a6 disparityBias:(float)a7
{
  metalContext = self->_metalContext;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(PTMetalContext *)metalContext commandQueue];
  v18 = [v17 commandBuffer];

  if (!v18)
  {
    v19 = _PTLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
    }
  }

  [v18 setLabel:@"PTDisparityPostProcessing temporalDisparityFilter"];
  *&v20 = a7;
  v21 = [(PTDisparityPostProcessing *)self temporalDisparityFilter:v18 inDisparity:v16 inDisplacement:v15 inDisparityFilteredPrev:v14 outDisparityFiltered:v13 disparityBias:v20];

  [v18 commit];
  return v21;
}

- (int)temporalDisparityFilter:(id)a3 inDisparity:(id)a4 inDisplacement:(id)a5 inDisparityFilteredPrev:(id)a6 outDisparityFiltered:(id)a7 disparityBias:(float)a8
{
  v34 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  disparitySize = self->_disparitySize;
  if (isExpectedSize(v15, &disparitySize, @"Invalid size of inDisparity") && (disparitySize = self->_colorSize, isExpectedSize(v16, &disparitySize, @"Invalid size of inDisplacement")) && (disparitySize = self->_filteredDisparitySize, (isExpectedSize(v18, &disparitySize, @"Invalid size of outDisparity") & 1) != 0))
  {
    if (!v14)
    {
      v19 = _PTLogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    [v14 setLabel:@"PTEffectTemporalFilter temporalDisparityFilter"];
    *&v20 = a8;
    v21 = [(PTAbstractDisparityFilter *)self->_disparityFilter temporalDisparityFilter:v14 inDisplacement:v16 inDisparityPrev:v17 inDisparity:v15 outDisparity:v18 disparityBias:v20];
  }

  else
  {
    v22 = _PTLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      width = self->_disparitySize.width;
      height = self->_disparitySize.height;
      v28 = [v15 width];
      v29 = [v15 height];
      LODWORD(disparitySize.width) = 134218752;
      *(&disparitySize.width + 4) = width;
      WORD2(disparitySize.height) = 2048;
      *(&disparitySize.height + 6) = height;
      HIWORD(disparitySize.depth) = 2048;
      v31 = v28;
      v32 = 2048;
      v33 = v29;
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

- (int)temporalDisparityFilter:(id)a3 inStatePrev:(id)a4 inDisparity:(id)a5 outDisparityFiltered:(id)a6 outState:(id)a7
{
  metalContext = self->_metalContext;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(PTMetalContext *)metalContext commandQueue];
  v19 = [v18 commandBuffer];

  if (!v19)
  {
    v20 = _PTLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
    }
  }

  [v19 setLabel:@"PTEffectTemporalFilter temporalDisparityFilter"];
  v21 = [(PTDisparityPostProcessing *)self temporalDisparityFilter:v19 inDisplacement:v17 inStatePrev:v16 inDisparity:v15 outDisparityFiltered:v14 outState:v13];

  [v19 commit];
  return v21;
}

- (int)temporalDisparityFilter:(id)a3 inDisplacement:(id)a4 inStatePrev:(id)a5 inDisparity:(id)a6 outDisparityFiltered:(id)a7 outState:(id)a8
{
  v34 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  buf = self->_disparitySize;
  if (isExpectedSize(v17, &buf, @"Invalid size of inDisparity") && (buf = self->_colorSize, isExpectedSize(v15, &buf, @"Invalid size of inDisplacement")) && (buf = self->_filteredDisparitySize, (isExpectedSize(v18, &buf, @"Invalid size of outDisparityFiltered") & 1) != 0))
  {
    if (!v14)
    {
      v20 = _PTLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    [v14 setLabel:@"PTEffectTemporalFilter temporalDisparityFilter"];
    v21 = [(PTAbstractDisparityFilter *)self->_disparityFilter temporalDisparityFilter:v14 inDisplacement:v15 inStatePrev:v16 inDisparity:v17 outDisparity:v18 outState:v19];
  }

  else
  {
    v22 = _PTLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      width = self->_disparitySize.width;
      height = self->_disparitySize.height;
      v27 = [v17 width];
      v28 = [v17 height];
      LODWORD(buf.width) = 134218752;
      *(&buf.width + 4) = width;
      WORD2(buf.height) = 2048;
      *(&buf.height + 6) = height;
      HIWORD(buf.depth) = 2048;
      v31 = v27;
      v32 = 2048;
      v33 = v28;
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