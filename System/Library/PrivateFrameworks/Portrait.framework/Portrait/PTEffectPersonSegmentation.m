@interface PTEffectPersonSegmentation
+ (CGSize)segmentationSizeForColorSize:(CGSize)a3;
+ (PTEffectPixelBufferDescriptor)upscaledSegmentationMatteFormatForColorSize:(SEL)a3;
- (PTEffectPersonSegmentation)initWithMetalContext:(id)a3 colorSize:(CGSize)a4 msrColorPyramid:(id)a5 prewarmOnly:(BOOL)a6 asyncInitQueue:(id)a7 sharedResources:(id)a8;
- (__CVBuffer)rotateInput:(__CVBuffer *)a3 rotationDegrees:(int)a4;
- (id)debugTextures;
- (id)rotateOutput:(id)a3 segmentationOutput:(id)a4 rotationDegrees:(int)a5;
- (int)runPersonSegmentationToOutPersonSegmentationMatteBuffer:(id)a3 inColor:(id)a4 transform:(CGAffineTransform *)a5 inSegmentationRGBA:(__CVBuffer *)a6 inSegmentationRGBATexture:(id)a7 outUpscaledSegmentation:(id)a8;
- (void)dealloc;
- (void)lazyInstantiateRotatedNetwork;
@end

@implementation PTEffectPersonSegmentation

- (PTEffectPersonSegmentation)initWithMetalContext:(id)a3 colorSize:(CGSize)a4 msrColorPyramid:(id)a5 prewarmOnly:(BOOL)a6 asyncInitQueue:(id)a7 sharedResources:(id)a8
{
  height = a4.height;
  width = a4.width;
  v16 = a3;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v52.receiver = self;
  v52.super_class = PTEffectPersonSegmentation;
  v20 = [(PTEffectPersonSegmentation *)&v52 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_metalContext, a3);
    v21->_colorSize.width = width;
    v21->_colorSize.height = height;
    objc_storeStrong(&v21->_asyncInitQueue, a7);
    objc_storeStrong(&v21->_msrColorPyramid, a5);
    [PTEffectPersonSegmentation upscaledSegmentationMatteFormatForColorSize:width, height];
    v21->_outputDescriptor.size = v50;
    *&v21->_outputDescriptor.pixelFormatType = v51;
    v22 = [[PTUtil alloc] initWithMetalContext:v21->_metalContext];
    ptUtil = v21->_ptUtil;
    v21->_ptUtil = v22;

    [(PTEffectPersonSegmentation *)v21 setRotatedNetworkState:0];
    v24 = [v19 personSegmentationProvider];
    v25 = v24;
    if (v24)
    {
      [v24 colorSize];
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
          v44 = [(PTMetalContext *)v21->_metalContext textureUtil];
          v45 = [v44 createWithWidth:*&v29 height:*&v30 pixelFormat:80];
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
      if (a6)
      {
        goto LABEL_26;
      }

      v37 = [[PTEffectPersonSegmentationViSegHQVisionCoreE5 alloc] initWithMetalContext:v21->_metalContext colorSize:width, height];
      v38 = v21->_personSegmentationProvider;
      v21->_personSegmentationProvider = v37;

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
      if (a6)
      {
        goto LABEL_26;
      }

      v35 = [[PTEffectPersonSegmentationVision alloc] initWithMetalContext:v21->_metalContext colorSize:width, height];
      v36 = v21->_personSegmentationProvider;
      v21->_personSegmentationProvider = v35;

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

    [v19 setPersonSegmentationProvider:?];
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

- (int)runPersonSegmentationToOutPersonSegmentationMatteBuffer:(id)a3 inColor:(id)a4 transform:(CGAffineTransform *)a5 inSegmentationRGBA:(__CVBuffer *)a6 inSegmentationRGBATexture:(id)a7 outUpscaledSegmentation:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = *&a5->c;
  v40[0] = *&a5->a;
  v40[1] = v18;
  v40[2] = *&a5->tx;
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

  v24 = [(PTEffectPersonSegmentationProvider *)v23 runPersonSegmentationForPixelBuffer:[(PTEffectPersonSegmentation *)self rotateInput:a6 rotationDegrees:v20]];
  v25 = [(PTEffectPersonSegmentation *)self rotateOutput:v14 segmentationOutput:v24 rotationDegrees:v20];

  v26 = [(PTMetalContext *)self->_metalContext commandBuffer];

  if (!v26)
  {
    v27 = _PTLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
    }
  }

  v28 = [(PTMetalContext *)self->_metalContext commandBuffer];
  [v28 setLabel:@"PTEffectPersonSegmentation runPersonSegmentation"];

  v29 = [v17 width];
  if (v29 <= [v25 width])
  {
    v30 = [v17 height];
    if (v30 <= [v25 height])
    {
      v35 = [(PTMetalContext *)self->_metalContext textureUtil];
      v38 = [(PTMetalContext *)self->_metalContext commandBuffer];
      v37 = [v35 copy:v38 inTex:v25 outTex:v17];

      goto LABEL_24;
    }
  }

  v31 = [v15 asRGBAFromYUV];

  if (v31)
  {
    v32 = [v15 asRGBAFromYUV];
  }

  else
  {
    v33 = [v15 asRGBA];

    if (!v33)
    {
      v36 = [(PTColorConversion *)self->_colorConversion convertRGBLinearFromPTTexture:v14 inPTTexture:v15 outRGBA:v16];
      v35 = v16;
      goto LABEL_22;
    }

    v32 = [v15 asRGBA];
  }

  v34 = v32;
  v35 = [v32 texRGBA];

  v36 = 0;
LABEL_22:
  v37 = [(PTGuidedFilter *)self->_guidedFilterSegmentation guidedFilter:v14 image:v25 guideRGBACoefficients:v16 guideRGBAUpscale:v35 upscaledImage:v17 sourceColorBitDepth:8 postModifierPtr:0]| v36;
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

- (__CVBuffer)rotateInput:(__CVBuffer *)a3 rotationDegrees:(int)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    return a3;
  }

  v5 = *&a4;
  if (a4 == 180)
  {
    p_rotated180InputPixelBuffer = &self->_rotated180InputPixelBuffer;
    if (self->_rotated180InputPixelBuffer)
    {
      goto LABEL_9;
    }

    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
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

    Width = CVPixelBufferGetHeight(a3);
    Height = CVPixelBufferGetWidth(a3);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    v17 = *MEMORY[0x277CC4DE8];
    v18 = MEMORY[0x277CBEC10];
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v18;
    v13 = &v17;
  }

  CVPixelBufferCreate(0, Width, Height, PixelFormatType, [v11 dictionaryWithObjects:v12 forKeys:v13 count:1], p_rotated180InputPixelBuffer);
LABEL_9:
  v14 = *p_rotated180InputPixelBuffer;
  if ([(PTMSRResize *)self->_msrColorPyramid transform:a3 crop:v5 rotationDegree:v14 toDest:0 synchronous:0.0])
  {
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentation rotateInput:rotationDegrees:];
    }
  }

  return v14;
}

- (id)rotateOutput:(id)a3 segmentationOutput:(id)a4 rotationDegrees:(int)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a5 != 180)
  {
    if (!a5)
    {
      v11 = v9;
      goto LABEL_11;
    }

    if (!self->_rotated180InputPixelBuffer)
    {
      v17 = [(PTMetalContext *)self->_metalContext textureUtil];
      v18 = [v17 createWithWidth:objc_msgSend(v10 height:"height") pixelFormat:objc_msgSend(v10, "width"), objc_msgSend(v10, "pixelFormat")];
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
    v14 = [(PTMetalContext *)self->_metalContext textureUtil];
    v15 = [v14 createWithWidth:objc_msgSend(v10 height:"width") pixelFormat:objc_msgSend(v10, "height"), objc_msgSend(v10, "pixelFormat")];
    v16 = self->_unrotated180OutputSegmentation;
    self->_unrotated180OutputSegmentation = v15;

LABEL_9:
    unrotated180OutputSegmentation = *p_unrotatedOutputSegmentation;
  }

  v11 = unrotated180OutputSegmentation;
  [(PTUtil *)self->_ptUtil rotateTexture:v8 inTex:v10 outTex:v11 rotationDegrees:-a5];
LABEL_11:

  return v11;
}

+ (PTEffectPixelBufferDescriptor)upscaledSegmentationMatteFormatForColorSize:(SEL)a3
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

+ (CGSize)segmentationSizeForColorSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v4 = [(PTEffectPersonSegmentationProvider *)self->_personSegmentationProvider debugTextures];
  [v3 addObjectsFromArray:v4];

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