@interface PTEffectPersonSegmentation
+ (CGSize)segmentationSizeForColorSize:(CGSize)size;
+ (PTEffectPixelBufferDescriptor)upscaledSegmentationMatteFormatForColorSize:(SEL)size;
- (PTEffectPersonSegmentation)initWithMetalContext:(id)context colorSize:(CGSize)size msrColorPyramid:(id)pyramid prewarmOnly:(BOOL)only asyncInitQueue:(id)queue sharedResources:(id)resources;
- (__CVBuffer)rotateInput:(__CVBuffer *)input rotationDegrees:(int)degrees;
- (id)debugTextures;
- (id)rotateOutput:(id)output segmentationOutput:(id)segmentationOutput rotationDegrees:(int)degrees;
- (int)runPersonSegmentationToOutPersonSegmentationMatteBuffer:(id)buffer inColor:(id)color transform:(CGAffineTransform *)transform inSegmentationRGBA:(__CVBuffer *)a inSegmentationRGBATexture:(id)texture outUpscaledSegmentation:(id)segmentation;
- (void)dealloc;
- (void)lazyInstantiateRotatedNetwork;
@end

@implementation PTEffectPersonSegmentation

- (PTEffectPersonSegmentation)initWithMetalContext:(id)context colorSize:(CGSize)size msrColorPyramid:(id)pyramid prewarmOnly:(BOOL)only asyncInitQueue:(id)queue sharedResources:(id)resources
{
  height = size.height;
  width = size.width;
  contextCopy = context;
  pyramidCopy = pyramid;
  queueCopy = queue;
  resourcesCopy = resources;
  v52.receiver = self;
  v52.super_class = PTEffectPersonSegmentation;
  v20 = [(PTEffectPersonSegmentation *)&v52 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_metalContext, context);
    v21->_colorSize.width = width;
    v21->_colorSize.height = height;
    objc_storeStrong(&v21->_asyncInitQueue, queue);
    objc_storeStrong(&v21->_msrColorPyramid, pyramid);
    [PTEffectPersonSegmentation upscaledSegmentationMatteFormatForColorSize:width, height];
    v21->_outputDescriptor.size = v50;
    *&v21->_outputDescriptor.pixelFormatType = v51;
    v22 = [[PTUtil alloc] initWithMetalContext:v21->_metalContext];
    ptUtil = v21->_ptUtil;
    v21->_ptUtil = v22;

    [(PTEffectPersonSegmentation *)v21 setRotatedNetworkState:0];
    personSegmentationProvider = [resourcesCopy personSegmentationProvider];
    v25 = personSegmentationProvider;
    if (personSegmentationProvider)
    {
      [personSegmentationProvider colorSize];
      if (v26 == width)
      {
        [v25 colorSize];
        if (v27 == height)
        {
          objc_storeStrong(&v21->_personSegmentationProvider, v25);
          personSegmentationProvider = v21->_personSegmentationProvider;
          if (personSegmentationProvider)
          {
            [(PTEffectPersonSegmentationProvider *)personSegmentationProvider segmentationSize];
            v30 = v50.height;
            v29 = v50.width;
            v31 = v51;
          }

          else
          {
            v31 = 0;
            v30 = 0.0;
            v29 = 0.0;
          }

          [v25 reset];
          goto LABEL_26;
        }
      }
    }

    v32 = +[PTEffectPersonSegmentation segmentationType];
    v31 = 0;
    if (v32 > 1)
    {
      if (v32 != 2)
      {
        v30 = 0.0;
        v29 = 0.0;
        if (v32 == 3)
        {
          v33 = _PTLogSystem();
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }

          goto LABEL_11;
        }

LABEL_26:
        v39 = [PTGuidedFilter alloc];
        metalContext = v21->_metalContext;
        v50.width = v29;
        v50.height = v30;
        v51 = v31;
        LODWORD(v41) = 1008981770;
        v42 = [(PTGuidedFilter *)v39 initWithMetalContext:metalContext inputSize:&v50 epsilon:v41];
        guidedFilterSegmentation = v21->_guidedFilterSegmentation;
        v21->_guidedFilterSegmentation = v42;

        if (v21->_guidedFilterSegmentation)
        {
          textureUtil = [(PTMetalContext *)v21->_metalContext textureUtil];
          v45 = [textureUtil createWithWidth:*&v29 height:*&v30 pixelFormat:80];
          guideRGBAUpscaleSegmentation = v21->_guideRGBAUpscaleSegmentation;
          v21->_guideRGBAUpscaleSegmentation = v45;

          v47 = [[PTColorConversion alloc] initWithMetalContext:v21->_metalContext];
          colorConversion = v21->_colorConversion;
          v21->_colorConversion = v47;

          v34 = v21;
LABEL_31:

          goto LABEL_32;
        }

        v33 = _PTLogSystem();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [PTEffectPersonSegmentation initWithMetalContext:colorSize:msrColorPyramid:prewarmOnly:asyncInitQueue:sharedResources:];
        }

LABEL_30:

        v34 = 0;
        goto LABEL_31;
      }

      [PTEffectPersonSegmentationViSegHQVisionCoreE5 segmentationSizeForColorSize:width, height];
      v30 = v50.height;
      v29 = v50.width;
      v31 = v51;
      if (only)
      {
        goto LABEL_26;
      }

      height = [[PTEffectPersonSegmentationViSegHQVisionCoreE5 alloc] initWithMetalContext:v21->_metalContext colorSize:width, height];
      v38 = v21->_personSegmentationProvider;
      v21->_personSegmentationProvider = height;

      if (!v21->_personSegmentationProvider)
      {
        v33 = _PTLogSystem();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (v32)
      {
        v30 = 0.0;
        v29 = 0.0;
        if (v32 == 1)
        {
          v33 = _PTLogSystem();
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }

LABEL_11:
          [PTEffectPersonSegmentation initWithMetalContext:colorSize:msrColorPyramid:prewarmOnly:asyncInitQueue:sharedResources:];
          goto LABEL_30;
        }

        goto LABEL_26;
      }

      [PTEffectPersonSegmentationVision segmentationSizeForColorSize:width, height];
      v30 = v50.height;
      v29 = v50.width;
      v31 = v51;
      if (only)
      {
        goto LABEL_26;
      }

      height2 = [[PTEffectPersonSegmentationVision alloc] initWithMetalContext:v21->_metalContext colorSize:width, height];
      v36 = v21->_personSegmentationProvider;
      v21->_personSegmentationProvider = height2;

      if (!v21->_personSegmentationProvider)
      {
        v33 = _PTLogSystem();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

LABEL_20:
        [PTEffectPersonSegmentation initWithMetalContext:colorSize:msrColorPyramid:prewarmOnly:asyncInitQueue:sharedResources:];
        goto LABEL_30;
      }
    }

    [resourcesCopy setPersonSegmentationProvider:?];
    goto LABEL_26;
  }

  v34 = 0;
LABEL_32:

  return v34;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_rotatedInputPixelBuffer);
  CVPixelBufferRelease(self->_rotated180InputPixelBuffer);
  v3.receiver = self;
  v3.super_class = PTEffectPersonSegmentation;
  [(PTEffectPersonSegmentation *)&v3 dealloc];
}

- (int)runPersonSegmentationToOutPersonSegmentationMatteBuffer:(id)buffer inColor:(id)color transform:(CGAffineTransform *)transform inSegmentationRGBA:(__CVBuffer *)a inSegmentationRGBATexture:(id)texture outUpscaledSegmentation:(id)segmentation
{
  bufferCopy = buffer;
  colorCopy = color;
  textureCopy = texture;
  segmentationCopy = segmentation;
  v18 = *&transform->c;
  v40[0] = *&transform->a;
  v40[1] = v18;
  v40[2] = *&transform->tx;
  v19 = [PTUtil getRotationDegreesFromAffineTransform:v40];
  v20 = v19;
  personSegmentationProviderRotated = self->_personSegmentationProviderRotated;
  if (!personSegmentationProviderRotated && v19)
  {
    if (![(PTEffectPersonSegmentation *)self rotatedNetworkState])
    {
      [(PTEffectPersonSegmentation *)self lazyInstantiateRotatedNetwork];
    }

    v20 = 0;
    goto LABEL_8;
  }

  if (v19 != 90 && v19 != 270)
  {
LABEL_8:
    personSegmentationProviderRotated = self->_personSegmentationProvider;
  }

  v22 = personSegmentationProviderRotated;
  v23 = v22;
  if (self->_lastRotation != v20)
  {
    [(PTEffectPersonSegmentationProvider *)v22 reset];
    self->_lastRotation = v20;
  }

  v24 = [(PTEffectPersonSegmentationProvider *)v23 runPersonSegmentationForPixelBuffer:[(PTEffectPersonSegmentation *)self rotateInput:a rotationDegrees:v20]];
  v25 = [(PTEffectPersonSegmentation *)self rotateOutput:bufferCopy segmentationOutput:v24 rotationDegrees:v20];

  commandBuffer = [(PTMetalContext *)self->_metalContext commandBuffer];

  if (!commandBuffer)
  {
    v27 = _PTLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
    }
  }

  commandBuffer2 = [(PTMetalContext *)self->_metalContext commandBuffer];
  [commandBuffer2 setLabel:@"PTEffectPersonSegmentation runPersonSegmentation"];

  width = [segmentationCopy width];
  if (width <= [v25 width])
  {
    height = [segmentationCopy height];
    if (height <= [v25 height])
    {
      textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
      commandBuffer3 = [(PTMetalContext *)self->_metalContext commandBuffer];
      v37 = [textureUtil copy:commandBuffer3 inTex:v25 outTex:segmentationCopy];

      goto LABEL_24;
    }
  }

  asRGBAFromYUV = [colorCopy asRGBAFromYUV];

  if (asRGBAFromYUV)
  {
    asRGBAFromYUV2 = [colorCopy asRGBAFromYUV];
  }

  else
  {
    asRGBA = [colorCopy asRGBA];

    if (!asRGBA)
    {
      v36 = [(PTColorConversion *)self->_colorConversion convertRGBLinearFromPTTexture:bufferCopy inPTTexture:colorCopy outRGBA:textureCopy];
      textureUtil = textureCopy;
      goto LABEL_22;
    }

    asRGBAFromYUV2 = [colorCopy asRGBA];
  }

  v34 = asRGBAFromYUV2;
  textureUtil = [asRGBAFromYUV2 texRGBA];

  v36 = 0;
LABEL_22:
  v37 = [(PTGuidedFilter *)self->_guidedFilterSegmentation guidedFilter:bufferCopy image:v25 guideRGBACoefficients:textureCopy guideRGBAUpscale:textureUtil upscaledImage:segmentationCopy sourceColorBitDepth:8 postModifierPtr:0]| v36;
LABEL_24:

  return v37;
}

- (void)lazyInstantiateRotatedNetwork
{
  [(PTEffectPersonSegmentation *)self setRotatedNetworkState:1];
  v3 = _PTLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PTEffectPersonSegmentation lazyInstantiateRotatedNetwork];
  }

  objc_initWeak(&location, self);
  personSegmentationProvider = self->_personSegmentationProvider;
  if (!personSegmentationProvider)
  {
    v6 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_7;
  }

  [(PTEffectPersonSegmentationProvider *)personSegmentationProvider segmentationSize];
  v5 = self->_personSegmentationProvider;
  v6 = v15;
  if (!v5)
  {
LABEL_7:
    v11 = 0;
    v12 = 0;
    v7 = 0.0;
    v13 = 0;
    goto LABEL_8;
  }

  [(PTEffectPersonSegmentationProvider *)v5 segmentationSize];
  v7 = v11;
LABEL_8:
  asyncInitQueue = self->_asyncInitQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__PTEffectPersonSegmentation_lazyInstantiateRotatedNetwork__block_invoke;
  v9[3] = &unk_278522F50;
  objc_copyWeak(v10, &location);
  *&v10[1] = v6;
  v10[2] = *&v7;
  dispatch_async(asyncInitQueue, v9);
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __59__PTEffectPersonSegmentation_lazyInstantiateRotatedNetwork__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_22;
  }

  v3 = +[PTEffectPersonSegmentation segmentationType];
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = _PTLogSystem();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          __59__PTEffectPersonSegmentation_lazyInstantiateRotatedNetwork__block_invoke_cold_2();
        }

LABEL_11:

        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v5 = PTEffectPersonSegmentationVision;
LABEL_14:
    v6 = [[v5 alloc] initWithMetalContext:WeakRetained[1] colorSize:{*(a1 + 40), *(a1 + 48)}];
    v7 = WeakRetained[13];
    WeakRetained[13] = v6;

    goto LABEL_15;
  }

  if (v3 == 2)
  {
    v5 = PTEffectPersonSegmentationViSegHQVisionCoreE5;
    goto LABEL_14;
  }

  if (v3 == 3)
  {
    v4 = _PTLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__PTEffectPersonSegmentation_lazyInstantiateRotatedNetwork__block_invoke_cold_1();
    }

    goto LABEL_11;
  }

LABEL_15:
  if (!WeakRetained[13])
  {
    v8 = _PTLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __59__PTEffectPersonSegmentation_lazyInstantiateRotatedNetwork__block_invoke_cold_3();
    }
  }

  [WeakRetained setRotatedNetworkState:2];
  v9 = _PTLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __59__PTEffectPersonSegmentation_lazyInstantiateRotatedNetwork__block_invoke_cold_4();
  }

LABEL_22:
}

- (__CVBuffer)rotateInput:(__CVBuffer *)input rotationDegrees:(int)degrees
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (!degrees)
  {
    return input;
  }

  v5 = *&degrees;
  if (degrees == 180)
  {
    p_rotated180InputPixelBuffer = &self->_rotated180InputPixelBuffer;
    if (self->_rotated180InputPixelBuffer)
    {
      goto LABEL_9;
    }

    Width = CVPixelBufferGetWidth(input);
    Height = CVPixelBufferGetHeight(input);
    PixelFormatType = CVPixelBufferGetPixelFormatType(input);
    v19 = *MEMORY[0x277CC4DE8];
    v20[0] = MEMORY[0x277CBEC10];
    v11 = MEMORY[0x277CBEAC0];
    v12 = v20;
    v13 = &v19;
  }

  else
  {
    p_rotated180InputPixelBuffer = &self->_rotatedInputPixelBuffer;
    if (self->_rotatedInputPixelBuffer)
    {
      goto LABEL_9;
    }

    Width = CVPixelBufferGetHeight(input);
    Height = CVPixelBufferGetWidth(input);
    PixelFormatType = CVPixelBufferGetPixelFormatType(input);
    v17 = *MEMORY[0x277CC4DE8];
    v18 = MEMORY[0x277CBEC10];
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v18;
    v13 = &v17;
  }

  CVPixelBufferCreate(0, Width, Height, PixelFormatType, [v11 dictionaryWithObjects:v12 forKeys:v13 count:1], p_rotated180InputPixelBuffer);
LABEL_9:
  v14 = *p_rotated180InputPixelBuffer;
  if ([(PTMSRResize *)self->_msrColorPyramid transform:input crop:v5 rotationDegree:v14 toDest:0 synchronous:0.0])
  {
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentation rotateInput:rotationDegrees:];
    }
  }

  return v14;
}

- (id)rotateOutput:(id)output segmentationOutput:(id)segmentationOutput rotationDegrees:(int)degrees
{
  outputCopy = output;
  segmentationOutputCopy = segmentationOutput;
  v10 = segmentationOutputCopy;
  if (degrees != 180)
  {
    if (!degrees)
    {
      v11 = segmentationOutputCopy;
      goto LABEL_11;
    }

    if (!self->_rotated180InputPixelBuffer)
    {
      textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
      v18 = [textureUtil createWithWidth:objc_msgSend(v10 height:"height") pixelFormat:objc_msgSend(v10, "width"), objc_msgSend(v10, "pixelFormat")];
      unrotatedOutputSegmentation = self->_unrotatedOutputSegmentation;
      self->_unrotatedOutputSegmentation = v18;
    }

    p_unrotatedOutputSegmentation = &self->_unrotatedOutputSegmentation;
    goto LABEL_9;
  }

  p_unrotatedOutputSegmentation = &self->_unrotated180OutputSegmentation;
  unrotated180OutputSegmentation = self->_unrotated180OutputSegmentation;
  if (!unrotated180OutputSegmentation)
  {
    textureUtil2 = [(PTMetalContext *)self->_metalContext textureUtil];
    v15 = [textureUtil2 createWithWidth:objc_msgSend(v10 height:"width") pixelFormat:objc_msgSend(v10, "height"), objc_msgSend(v10, "pixelFormat")];
    v16 = self->_unrotated180OutputSegmentation;
    self->_unrotated180OutputSegmentation = v15;

LABEL_9:
    unrotated180OutputSegmentation = *p_unrotatedOutputSegmentation;
  }

  v11 = unrotated180OutputSegmentation;
  [(PTUtil *)self->_ptUtil rotateTexture:outputCopy inTex:v10 outTex:v11 rotationDegrees:-degrees];
LABEL_11:

  return v11;
}

+ (PTEffectPixelBufferDescriptor)upscaledSegmentationMatteFormatForColorSize:(SEL)size
{
  height = a4.height;
  width = a4.width;
  *&retstr->pixelFormatType = 0;
  result = [a2 segmentationSizeForColorSize:?];
  if (v8 < width)
  {
    v8 = width;
  }

  if (v9 < height)
  {
    v9 = height;
  }

  retstr->size.width = v8;
  retstr->size.height = v9;
  retstr->pixelFormatType = 1278226488;
  return result;
}

+ (CGSize)segmentationSizeForColorSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = +[PTEffectPersonSegmentation segmentationType];
  v6 = 0uLL;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v7 = _PTLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        goto LABEL_10;
      }

      goto LABEL_14;
    }

    v8 = PTEffectPersonSegmentationVision;
LABEL_13:
    [(__objc2_class *)v8 segmentationSizeForColorSize:width, height];
    v6 = v11;
    goto LABEL_14;
  }

  if (v5 == 2)
  {
    v8 = PTEffectPersonSegmentationViSegHQVisionCoreE5;
    goto LABEL_13;
  }

  if (v5 == 3)
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      +[PTEffectPersonSegmentation segmentationSizeForColorSize:];
    }

LABEL_10:

    v6 = 0uLL;
  }

LABEL_14:
  v9 = vcvtq_f64_u64(v6);
  v10 = v9.f64[1];
  result.width = v9.f64[0];
  result.height = v10;
  return result;
}

- (id)debugTextures
{
  v3 = objc_opt_new();
  [v3 addObject:self->_guideRGBAUpscaleSegmentation];
  debugTextures = [(PTEffectPersonSegmentationProvider *)self->_personSegmentationProvider debugTextures];
  [v3 addObjectsFromArray:debugTextures];

  return v3;
}

- (void)initWithMetalContext:colorSize:msrColorPyramid:prewarmOnly:asyncInitQueue:sharedResources:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__PTEffectPersonSegmentation_lazyInstantiateRotatedNetwork__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__PTEffectPersonSegmentation_lazyInstantiateRotatedNetwork__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)rotateInput:rotationDegrees:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end