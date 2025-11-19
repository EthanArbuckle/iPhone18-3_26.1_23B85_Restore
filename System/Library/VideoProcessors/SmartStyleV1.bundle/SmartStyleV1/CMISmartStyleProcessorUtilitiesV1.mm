@interface CMISmartStyleProcessorUtilitiesV1
- (CGRect)_computeLinearThumbnailValidRegion:(id)a3;
- (CMISmartStyleProcessorUtilitiesV1)initWithStyleEngine:(id)a3 temporalFilterBufferSize:(int)a4 withMetalContext:(id)a5;
- (__CVBuffer)createSingleChannelPixelBufferViewFromPixelBuffer:(__CVBuffer *)a3;
- (id)_cachedTexturesFromPixelBuffer:(__CVBuffer *)a3 usage:(unint64_t)a4;
- (id)_createGlobalToneCurveTextureFromMetadataDict:(id)a3;
- (int)_compileShaders;
- (int)blitPixelBuffer:(__CVBuffer *)a3 inputValidBufferRect:(CGRect)a4 toPixelBuffer:(__CVBuffer *)a5;
- (int)createIdentityTransformCoefficients:(__CVBuffer *)a3;
- (int)createLinearThumbnailFromMetadata:(id)a3 ltmThumbnailPixelBuffer:(__CVBuffer *)a4 cameraInfo:(id)a5 applyGDC:(BOOL)a6 toPixelBuffer:(__CVBuffer *)a7;
- (int)createLinearThumbnailFromMetadata:(id)a3 postLTMThumbnailPixelBuffer:(__CVBuffer *)a4 cameraInfo:(id)a5 applyGDC:(BOOL)a6 cropToPreLTMBounds:(BOOL)a7 toPixelBuffer:(__CVBuffer *)a8;
- (int)createLinearThumbnailFromMetadata:(id)a3 preLTMThumbnailPixelBuffer:(__CVBuffer *)a4 postLTMThumbnailPixelBuffer:(__CVBuffer *)a5 cameraInfo:(id)a6 applyGDC:(BOOL)a7 cropToPreLTMBounds:(BOOL)a8 toPixelBuffer:(__CVBuffer *)a9;
- (int)createUnstyledThumbnailFromMetadata:(id)a3 ltmThumbnailPixelBuffer:(__CVBuffer *)a4 cameraInfo:(id)a5 applyGDC:(BOOL)a6 toPixelBuffer:(__CVBuffer *)a7;
- (int)downScalePixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 inputROI:(CGRect)a5 gdcParams:(id *)a6 applyGDC:(BOOL)a7 rotation:(unint64_t)a8;
- (int)enqueueCoefficientsForFiltering:(__CVBuffer *)a3 withMetadata:(id)a4 pts:(id *)a5 learnedStyle:(id)a6;
- (int)filterCoefficientsForFrameWithMetadata:(id)a3 pts:(id *)a4 filterType:(unint64_t)a5 toPixelBuffer:(__CVBuffer *)a6;
- (int)filterCoefficientsForFrameWithMetadata:(id)a3 pts:(id *)a4 filterType:(unint64_t)a5 toPixelBuffer:(__CVBuffer *)a6 toGlobalRemixFactor:(float *)a7;
- (int)getLTMThumbnailFormatFromSampleBuffer:(opaqueCMSampleBuffer *)a3 outputFormat:(int *)a4;
- (int)getPreLTMValidROIFromMetadata:(id)a3 inputPreLTMThumbnailPixelBuffer:(__CVBuffer *)a4 outputRect:(CGRect *)a5;
- (int)propagatePixelBufferColorAttachments:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 forceLinearTransferFunction:(BOOL)a5;
- (int)runFPRejectionOnMask:(__CVBuffer *)a3 originalMask:(__CVBuffer *)a4;
- (uint64_t)_compileShaders;
- (unsigned)_getComponentCountOfFormat:(unsigned int)a3;
- (void)dealloc;
@end

@implementation CMISmartStyleProcessorUtilitiesV1

- (void)dealloc
{
  styleEngineProcessor = self->_styleEngineProcessor;
  self->_styleEngineProcessor = 0;

  metalContext = self->_metalContext;
  self->_metalContext = 0;

  preLTMLinearMetadataThumbnailPixelBuffer = self->_preLTMLinearMetadataThumbnailPixelBuffer;
  if (preLTMLinearMetadataThumbnailPixelBuffer)
  {
    CFRelease(preLTMLinearMetadataThumbnailPixelBuffer);
    self->_preLTMLinearMetadataThumbnailPixelBuffer = 0;
  }

  preLTMLinearThumbnailPixelBuffer = self->_preLTMLinearThumbnailPixelBuffer;
  if (preLTMLinearThumbnailPixelBuffer)
  {
    CFRelease(preLTMLinearThumbnailPixelBuffer);
    self->_preLTMLinearThumbnailPixelBuffer = 0;
  }

  postLTMUnstyledThumbnailPixelBuffer = self->_postLTMUnstyledThumbnailPixelBuffer;
  if (postLTMUnstyledThumbnailPixelBuffer)
  {
    CFRelease(postLTMUnstyledThumbnailPixelBuffer);
    self->_postLTMUnstyledThumbnailPixelBuffer = 0;
  }

  cvMetalTextureCacheRef = self->_cvMetalTextureCacheRef;
  if (cvMetalTextureCacheRef)
  {
    CVMetalTextureCacheFlush(cvMetalTextureCacheRef, 0);
    v9 = self->_cvMetalTextureCacheRef;
    if (v9)
    {
      CFRelease(v9);
      self->_cvMetalTextureCacheRef = 0;
    }
  }

  v10.receiver = self;
  v10.super_class = CMISmartStyleProcessorUtilitiesV1;
  [(CMISmartStyleProcessorUtilitiesV1 *)&v10 dealloc];
}

- (int)propagatePixelBufferColorAttachments:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 forceLinearTransferFunction:(BOOL)a5
{
  if (!a3)
  {
    [CMISmartStyleProcessorUtilitiesV1 propagatePixelBufferColorAttachments:toPixelBuffer:forceLinearTransferFunction:];
    return -12780;
  }

  if (!a4)
  {
    [CMISmartStyleProcessorUtilitiesV1 propagatePixelBufferColorAttachments:toPixelBuffer:forceLinearTransferFunction:];
    return -12780;
  }

  v6 = a5;
  v8 = kCVImageBufferColorPrimariesKey;
  v9 = CVBufferCopyAttachment(a3, kCVImageBufferColorPrimariesKey, 0);
  CVBufferSetAttachment(a4, v8, v9, kCVAttachmentMode_ShouldPropagate);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = kCVImageBufferTransferFunctionKey;
  v11 = CVBufferCopyAttachment(a3, kCVImageBufferTransferFunctionKey, 0);
  v12 = v11;
  if (v6)
  {
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = kCVImageBufferTransferFunction_Linear;
    if (!kCVImageBufferTransferFunction_Linear)
    {
      CVBufferSetAttachment(a4, v10, 0, kCVAttachmentMode_ShouldPropagate);
      goto LABEL_13;
    }

    CFRetain(kCVImageBufferTransferFunction_Linear);
    CVBufferSetAttachment(a4, v10, v12, kCVAttachmentMode_ShouldPropagate);
    goto LABEL_11;
  }

  CVBufferSetAttachment(a4, v10, v11, kCVAttachmentMode_ShouldPropagate);
  if (v12)
  {
LABEL_11:
    CFRelease(v12);
  }

LABEL_13:
  v13 = kCVImageBufferYCbCrMatrixKey;
  v14 = CVBufferCopyAttachment(a3, kCVImageBufferYCbCrMatrixKey, 0);
  CVBufferSetAttachment(a4, v13, v14, kCVAttachmentMode_ShouldPropagate);
  if (v14)
  {
    CFRelease(v14);
  }

  return 0;
}

- (int)downScalePixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 inputROI:(CGRect)a5 gdcParams:(id *)a6 applyGDC:(BOOL)a7 rotation:(unint64_t)a8
{
  styleEngineProcessor = self->_styleEngineProcessor;
  if (!a7)
  {
    a6 = 0;
  }

  return [(CMIStyleEngineProcessor *)styleEngineProcessor downScaleInputPixelBuffer:a3 withInputCropRect:a4 usingBoxSize:0 toOutputPixelBuffer:1 filter:a6 copyAttachments:a8 gdcParams:a5.origin.x rotation:a5.origin.y, a5.size.width, a5.size.height, CGSizeZero.width, CGSizeZero.height];
}

- (int)createIdentityTransformCoefficients:(__CVBuffer *)a3
{
  result = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor createIdentityTransformCoefficients:a3];
  if (result)
  {
    [CMISmartStyleProcessorUtilitiesV1 createIdentityTransformCoefficients:];
    return 10;
  }

  return result;
}

- (int)blitPixelBuffer:(__CVBuffer *)a3 inputValidBufferRect:(CGRect)a4 toPixelBuffer:(__CVBuffer *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:a3 usage:1];
  if (!v11)
  {
    [CMISmartStyleProcessorUtilitiesV1 blitPixelBuffer:inputValidBufferRect:toPixelBuffer:];
LABEL_18:
    v22 = -12786;
    goto LABEL_13;
  }

  v12 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:a5 usage:6];
  if (!v12)
  {
    [CMISmartStyleProcessorUtilitiesV1 blitPixelBuffer:inputValidBufferRect:toPixelBuffer:];
    goto LABEL_18;
  }

  v13 = v12;
  v14 = [(FigMetalContext *)self->_metalContext commandBuffer];
  if (!v14)
  {
    [CMISmartStyleProcessorUtilitiesV1 blitPixelBuffer:v13 inputValidBufferRect:? toPixelBuffer:?];
    goto LABEL_18;
  }

  v15 = v14;
  [v14 setLabel:@"CMISmartStyleProcessorUtilitiesV1::blitPixelBuffer"];
  v16 = [v15 blitCommandEncoder];
  if (!v16)
  {
    [CMISmartStyleProcessorUtilitiesV1 blitPixelBuffer:v15 inputValidBufferRect:v13 toPixelBuffer:?];
    goto LABEL_18;
  }

  v17 = v16;
  v18 = [v13 width];
  v19 = [v13 height];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (CGRectIsNull(v27))
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v20 = x;
    v21 = y;
    if (width <= [v13 width])
    {
      width = [v13 width];
    }

    v18 = width;
    if (height <= [v13 height])
    {
      height = [v13 height];
    }

    v19 = height;
  }

  v26[0] = v20;
  v26[1] = v21;
  v26[2] = 0;
  v25[0] = v18;
  v25[1] = v19;
  v25[2] = 1;
  memset(v24, 0, sizeof(v24));
  [v17 copyFromTexture:v11 sourceSlice:0 sourceLevel:0 sourceOrigin:v26 sourceSize:v25 toTexture:v13 destinationSlice:0 destinationLevel:0 destinationOrigin:v24];
  [v17 endEncoding];
  [(FigMetalContext *)self->_metalContext commit];

  v22 = 0;
LABEL_13:

  return v22;
}

- (int)getPreLTMValidROIFromMetadata:(id)a3 inputPreLTMThumbnailPixelBuffer:(__CVBuffer *)a4 outputRect:(CGRect *)a5
{
  v8 = a3;
  v9 = v8;
  if (!v8)
  {
    [CMISmartStyleProcessorUtilitiesV1 getPreLTMValidROIFromMetadata:inputPreLTMThumbnailPixelBuffer:outputRect:];
    goto LABEL_64;
  }

  if (a4)
  {
    v10 = CMGetAttachment(a4, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
    if (v10)
    {
      v11 = v10;
      v56 = 0;
      if (!FigCFDictionaryGetInt32IfPresent() && !FigCFDictionaryGetInt32IfPresent())
      {
        [CMISmartStyleProcessorUtilitiesV1 getPreLTMValidROIFromMetadata:inputPreLTMThumbnailPixelBuffer:outputRect:];
        v41 = 0;

        goto LABEL_45;
      }

      v54 = 0;
      v55 = 0u;
      if (FigCFDictionaryGetCGRectIfPresent())
      {
        __asm { FMOV            V0.2D, #1.0 }

        v52 = _Q0;
        v53 = _Q0;
        origin = CGRectNull.origin;
        size = CGRectNull.size;
        if (FigCFDictionaryGetCGRectIfPresent() && FigCFDictionaryGetCGRectIfPresent())
        {
          FigCaptureMetadataUtilitiesRectNormalizedToRect();
          if (v16 < 0.0)
          {
            v16 = 0.0;
          }

          if (v17 < 0.0)
          {
            v17 = 0.0;
          }

          v52.x = v16;
          v52.y = v17;
          v20 = 1.0;
          if (v18 <= 1.0)
          {
            v21 = v18;
          }

          else
          {
            v21 = 1.0;
          }

          if (v19 <= 1.0)
          {
            v20 = v19;
          }

          v53.width = v21;
          v53.height = v20;
        }

        a5->origin = v52;
        a5->size = v53;
        goto LABEL_44;
      }

      [CMISmartStyleProcessorUtilitiesV1 getPreLTMValidROIFromMetadata:&v56 inputPreLTMThumbnailPixelBuffer:v11 outputRect:?];
    }

    else
    {
      [CMISmartStyleProcessorUtilitiesV1 getPreLTMValidROIFromMetadata:inputPreLTMThumbnailPixelBuffer:outputRect:];
    }

LABEL_64:
    v41 = -12780;
    goto LABEL_45;
  }

  v22 = kFigCaptureStreamMetadata_LTMThumbnail;
  v23 = [v8 objectForKeyedSubscript:kFigCaptureStreamMetadata_LTMThumbnail];

  if (v23)
  {
    v24 = [v9 objectForKeyedSubscript:v22];
    v11 = v24;
    if (v24)
    {
      v25 = [v24 bytes];
      if (v25)
      {
        v26 = v25;
        v27 = *(v25 + 4);
        if (v27 >= 0x81)
        {
          [CMISmartStyleProcessorUtilitiesV1 getPreLTMValidROIFromMetadata:inputPreLTMThumbnailPixelBuffer:outputRect:];
        }

        else
        {
          v28 = *(v25 + 5);
          if (v28 < 0xC1)
          {
            if (v27 != 34 || v28 != 26)
            {
              v30 = CGRectNull.size;
              v54 = CGRectNull.origin;
              v55 = v30;
              if (!FigCFDictionaryGetCGRectIfPresent())
              {
                v43 = 1.0;
                v44 = 1.0;
                v45 = 1.0;
                v46 = 1.0;
LABEL_43:
                a5->origin.x = v46;
                a5->origin.y = v45;
                a5->size.width = v44;
                a5->size.height = v43;
LABEL_44:

                v41 = 0;
                goto LABEL_45;
              }

              v31 = *(v26 + 2);
              v32 = *(v26 + 3);
              v33 = *(v26 + 4);
              v34 = *(v26 + 5);
              v35 = [v9 objectForKeyedSubscript:kFigCaptureStreamMetadata_QuadraBinningFactor];
              v36 = [v35 intValue];

              x = v54.x;
              v38.f64[0] = v55.f64[0];
              if (v36 == 1 && v55.f64[0] == 8448.0)
              {
                x = v54.x * 0.5;
                y = v54.y * 0.5;
                v54.x = v54.x * 0.5;
                v54.y = v54.y * 0.5;
                v38.f64[1] = v55.f64[1];
                __asm { FMOV            V0.2D, #0.5 }

                v38 = vmulq_f64(v38, _Q0);
                v55 = v38;
              }

              else
              {
                y = v54.y;
              }

              v47 = (v26[2] + v26[4] * 0.5) - (x + v38.f64[0] * 0.5);
              if (v47 < 0)
              {
                v47 = (x + v38.f64[0] * 0.5) - (v26[2] + v26[4] * 0.5);
              }

              if (v38.f64[0] / 10.0 >= v47)
              {
                v48 = (v26[3] + v26[5] * 0.5) - (y + v55.f64[1] * 0.5);
                if (v48 < 0)
                {
                  v48 = (y + v55.f64[1] * 0.5) - (v26[3] + v26[5] * 0.5);
                }

                if (v55.f64[1] / 10.0 >= v48)
                {
                  FigCaptureMetadataUtilitiesRectNormalizedToRect();
                  if (v46 < 0.0)
                  {
                    v46 = 0.0;
                  }

                  if (v45 < 0.0)
                  {
                    v45 = 0.0;
                  }

                  if (v44 > 1.0)
                  {
                    v44 = 1.0;
                  }

                  if (v43 > 1.0)
                  {
                    v43 = 1.0;
                  }

                  goto LABEL_43;
                }
              }
            }

            [(CMISmartStyleProcessorUtilitiesV1 *)self _computeLinearThumbnailValidRegion:v9];
            goto LABEL_43;
          }

          [CMISmartStyleProcessorUtilitiesV1 getPreLTMValidROIFromMetadata:inputPreLTMThumbnailPixelBuffer:outputRect:];
        }
      }

      else
      {
        [CMISmartStyleProcessorUtilitiesV1 getPreLTMValidROIFromMetadata:inputPreLTMThumbnailPixelBuffer:outputRect:];
      }
    }

    else
    {
      [CMISmartStyleProcessorUtilitiesV1 getPreLTMValidROIFromMetadata:inputPreLTMThumbnailPixelBuffer:outputRect:];
    }

    goto LABEL_64;
  }

  v41 = 0;
  a5->origin.x = 0.0;
  a5->origin.y = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  a5->size = _Q0;
LABEL_45:

  return v41;
}

- (int)getLTMThumbnailFormatFromSampleBuffer:(opaqueCMSampleBuffer *)a3 outputFormat:(int *)a4
{
  if (!a3)
  {
    [CMISmartStyleProcessorUtilitiesV1 getLTMThumbnailFormatFromSampleBuffer:outputFormat:];
    return 0;
  }

  if (!a4)
  {
    [CMISmartStyleProcessorUtilitiesV1 getLTMThumbnailFormatFromSampleBuffer:outputFormat:];
    return -12780;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  if (!ImageBuffer)
  {
    [CMISmartStyleProcessorUtilitiesV1 getLTMThumbnailFormatFromSampleBuffer:outputFormat:];
    return -12780;
  }

  v6 = CMGetAttachment(ImageBuffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  if (!v6)
  {
    [CMISmartStyleProcessorUtilitiesV1 getLTMThumbnailFormatFromSampleBuffer:outputFormat:];
    return -12780;
  }

  v7 = v6;
  if (!FigCFDictionaryGetInt32IfPresent() && !FigCFDictionaryGetInt32IfPresent())
  {
    [CMISmartStyleProcessorUtilitiesV1 getLTMThumbnailFormatFromSampleBuffer:v7 outputFormat:?];
    return -12780;
  }

  *a4 = 0;

  return 0;
}

- (id)_createGlobalToneCurveTextureFromMetadataDict:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:kFigCaptureStreamMetadata_GlobalToneCurveLookUpTable];
  v5 = [v4 bytes];
  if (!v5)
  {
    [CMISmartStyleProcessorUtilitiesV1 _createGlobalToneCurveTextureFromMetadataDict:];
LABEL_20:
    v41 = 0;
    v39 = 0;
    goto LABEL_15;
  }

  v7 = *v5;
  if (v7 <= 0x40)
  {
    [CMISmartStyleProcessorUtilitiesV1 _createGlobalToneCurveTextureFromMetadataDict:];
    goto LABEL_20;
  }

  if (v7 == 257)
  {
    v8 = 0;
    LOWORD(v6) = v5[256];
    v9 = vdupq_lane_s64(COERCE__INT64(v6), 0);
    do
    {
      v10 = *&v5[v8 + 1];
      v11 = vmovl_high_u16(v10);
      v12.i64[0] = v11.u32[0];
      v12.i64[1] = v11.u32[1];
      v13 = vcvtq_f64_u64(v12);
      v12.i64[0] = v11.u32[2];
      v12.i64[1] = v11.u32[3];
      v14 = vcvtq_f64_u64(v12);
      v15 = vmovl_u16(*v10.i8);
      v12.i64[0] = v15.u32[0];
      v12.i64[1] = v15.u32[1];
      v16 = vcvtq_f64_u64(v12);
      v12.i64[0] = v15.u32[2];
      v12.i64[1] = v15.u32[3];
      *&v46[v8 * 2] = vcvt_hight_f16_f32(vcvt_f16_f32(vcvtx_hight_f32_f64(vcvtx_f32_f64(vdivq_f64(v16, v9)), vdivq_f64(vcvtq_f64_u64(v12), v9))), vcvtx_hight_f32_f64(vcvtx_f32_f64(vdivq_f64(v13, v9)), vdivq_f64(v14, v9)));
      v8 += 8;
    }

    while (v8 != 256);
  }

  else
  {
    v17 = __chkstk_darwin();
    v21 = &v43[-v20];
    LOWORD(v22) = *(v17 + 2 * v19);
    v23 = v22;
    v24 = (v17 + 2);
    v25 = v21;
    do
    {
      v26 = *v24++;
      v27 = v26 / v23;
      *v25++ = v27;
      --v19;
    }

    while (v19);
    v28 = 0;
    v29 = (v18 - 2);
    v30 = v18 - 3;
    do
    {
      v31 = (v29 * v28) / 255.0;
      v32 = vcvtms_s32_f32(v31);
      v33 = v32 & ~(v32 >> 31);
      if (v33 >= v30)
      {
        v33 = v30;
      }

      _S2 = v21[v33] + ((v21[v33 + 1] - v21[v33]) * (v31 - v33));
      __asm { FCVT            H2, S2 }

      *&v46[2 * v28++] = LOWORD(_S2);
    }

    while (v28 != 256);
  }

  v39 = objc_opt_new();
  [v39 setTextureType:2];
  [v39 setPixelFormat:25];
  [v39 setWidth:256];
  [v39 setHeight:1];
  [v39 setDepth:1];
  [v39 setUsage:7];
  v40 = [(FigMetalContext *)self->_metalContext device];
  v41 = [v40 newTextureWithDescriptor:v39];

  if (v41)
  {
    memset(v43, 0, sizeof(v43));
    v44 = xmmword_143D0;
    v45 = 1;
    [v41 replaceRegion:v43 mipmapLevel:0 withBytes:v46 bytesPerRow:512];
  }

  else
  {
    [CMISmartStyleProcessorUtilitiesV1 _createGlobalToneCurveTextureFromMetadataDict:];
  }

LABEL_15:

  return v41;
}

- (int)createUnstyledThumbnailFromMetadata:(id)a3 ltmThumbnailPixelBuffer:(__CVBuffer *)a4 cameraInfo:(id)a5 applyGDC:(BOOL)a6 toPixelBuffer:(__CVBuffer *)a7
{
  v11 = a3;
  v12 = a5;
  v20[0] = kCVPixelBufferMetalCompatibilityKey;
  v20[1] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v21[0] = &__kCFBooleanTrue;
  v21[1] = &__kCFBooleanTrue;
  v20[2] = kCVPixelBufferIOSurfacePropertiesKey;
  v21[2] = &__NSDictionary0__struct;
  v13 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
  v19 = v11;
  if (!v11)
  {
    [CMISmartStyleProcessorUtilitiesV1 createUnstyledThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
    v18 = 0;
    v14 = 0;
LABEL_13:
    a7 = 0;
    goto LABEL_14;
  }

  if (!a4)
  {
    [CMISmartStyleProcessorUtilitiesV1 createUnstyledThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
    v18 = 0;
    v11 = 0;
    v14 = 0;
    a7 = 0;
    goto LABEL_15;
  }

  if (a7)
  {
    CVPixelBufferGetWidth(a4);
    CVPixelBufferGetHeight(a4);
    v14 = CMGetAttachment(a4, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
    if (v14)
    {
      v18 = v14;
      if (FigCFDictionaryGetInt32IfPresent() || FigCFDictionaryGetInt32IfPresent())
      {
        [CMISmartStyleProcessorUtilitiesV1 createUnstyledThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
      }

      else
      {
        [CMISmartStyleProcessorUtilitiesV1 createUnstyledThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
      }

      v16 = 0;
      v11 = 0;
      v14 = 0;
      a7 = 0;
      a4 = 0;
      goto LABEL_8;
    }

    [CMISmartStyleProcessorUtilitiesV1 createUnstyledThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
    v18 = 0;
    v11 = 0;
    goto LABEL_13;
  }

  [CMISmartStyleProcessorUtilitiesV1 createUnstyledThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
  v18 = 0;
  v11 = 0;
  v14 = 0;
LABEL_14:
  a4 = 0;
LABEL_15:
  v16 = -12780;
  postLTMUnstyledThumbnailPixelBuffer = self->_postLTMUnstyledThumbnailPixelBuffer;
  if (postLTMUnstyledThumbnailPixelBuffer)
  {
    CFRelease(postLTMUnstyledThumbnailPixelBuffer);
    self->_postLTMUnstyledThumbnailPixelBuffer = 0;
  }

LABEL_8:

  return v16;
}

- (int)createLinearThumbnailFromMetadata:(id)a3 ltmThumbnailPixelBuffer:(__CVBuffer *)a4 cameraInfo:(id)a5 applyGDC:(BOOL)a6 toPixelBuffer:(__CVBuffer *)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a5;
  v62[0] = kCVPixelBufferMetalCompatibilityKey;
  v62[1] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v63[0] = &__kCFBooleanTrue;
  v63[1] = &__kCFBooleanTrue;
  v62[2] = kCVPixelBufferIOSurfacePropertiesKey;
  v63[2] = &__NSDictionary0__struct;
  v14 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:3];
  v43 = v14;
  v44 = v12;
  if (!v12)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
    v45 = 0;
LABEL_29:
    v22 = 0;
    v18 = 0;
LABEL_32:
    v46 = 0;
    v23 = 0;
    a7 = 0;
    goto LABEL_33;
  }

  if (!a4)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
    v45 = 0;
    v12 = 0;
    goto LABEL_29;
  }

  if (!a7)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
    v45 = 0;
    v46 = 0;
    v12 = 0;
    v22 = 0;
    v18 = 0;
    v23 = 0;
LABEL_33:
    v37 = -12780;
    goto LABEL_34;
  }

  v15 = v14;
  Width = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(a4);
  v61[0] = Width;
  v61[1] = Height;
  v18 = CMGetAttachment(a4, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  if (!v18)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
    v45 = 0;
    v12 = 0;
    v22 = 0;
    goto LABEL_32;
  }

  v60 = 0;
  v45 = v18;
  if (!FigCFDictionaryGetInt32IfPresent() && !FigCFDictionaryGetInt32IfPresent())
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
    goto LABEL_44;
  }

  if ((v60 - 3) <= 0xFFFFFFFD)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
LABEL_44:
    v37 = 0;
    v12 = 0;
    v22 = 0;
    v18 = 0;
    v46 = 0;
    v23 = 0;
    a7 = 0;
    goto LABEL_25;
  }

  p_preLTMLinearThumbnailPixelBuffer = &self->_preLTMLinearThumbnailPixelBuffer;
  if (!self->_preLTMLinearThumbnailPixelBuffer && CVPixelBufferCreate(kCFAllocatorDefault, Width, Height, 0x6C363472u, v15, p_preLTMLinearThumbnailPixelBuffer))
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
    v12 = 0;
    v22 = 0;
    v18 = 0;
    v46 = 0;
    v23 = 0;
    a7 = 0;
    v37 = -12786;
  }

  else
  {
    v20 = 72;
    memset(v59, 0, sizeof(v59));
    if (v13 && v8)
    {
      if ([CMIDistortionModel getGDCParams:v59 cameraInfo:v13 metadata:v44, p_preLTMLinearThumbnailPixelBuffer])
      {
        v20 = 72;
      }

      else
      {
        v20 = 80;
      }
    }

    v21 = [(FigMetalContext *)self->_metalContext commandBuffer];
    if (v21)
    {
      v22 = v21;
      v18 = [v21 computeCommandEncoder];
      if (v18 && ([(FigMetalContext *)self->_metalContext bindPixelBufferToMTLBuffer:a4], (v46 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v23 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:self->_preLTMLinearThumbnailPixelBuffer usage:3];
        if (v23)
        {
          v42 = v13;
          PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
          v25 = a7;
          v26 = CVPixelFormatDescriptionCreateWithPixelFormatType(0, PixelFormatType);
          v27 = 8 * CVPixelBufferGetBytesPerRow(a4);
          v41 = v26;
          v28 = [(__CFDictionary *)v26 objectForKeyedSubscript:kCVPixelFormatBitsPerComponent];
          v29 = v27 / [v28 unsignedIntValue];

          if (v60 == 1)
          {
            v30 = 3;
          }

          else
          {
            v30 = 6;
          }

          v55 = v30;
          v56 = 0x100000000;
          v57 = 2;
          v58 = v29;
          [v18 setComputePipelineState:{self->_extractThumbnailPipelineState, v20}];
          [v18 setBuffer:v46 offset:0 atIndex:0];
          [v18 setBytes:v61 length:4 atIndex:1];
          [v18 setBytes:&v55 length:20 atIndex:2];
          [v18 setTexture:v23 atIndex:0];
          [v18 setTexture:0 atIndex:1];
          v52 = [v23 width];
          v53 = [v23 height];
          v54 = 1;
          v50 = vdupq_n_s64(0x20uLL);
          v51 = 1;
          [v18 dispatchThreads:&v52 threadsPerThreadgroup:&v50];
          a7 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:v25 usage:65543];
          if (a7)
          {
            v48 = 0u;
            v49 = 0u;
            if (FigCFDictionaryGetCGRectIfPresent())
            {
              FigCaptureMetadataUtilitiesRectNormalizedToRect();
              *&v48 = v31.f64[0];
              *(&v48 + 1) = v32;
              *&v49 = v33.f64[0];
              *(&v49 + 1) = v34;
              v33.f64[1] = v34;
              v31.f64[1] = v32;
              v47 = vcvt_hight_f32_f64(vcvt_f32_f64(v31), v33);
              [v18 setImageblockWidth:32 height:32];
              [v18 setComputePipelineState:*(&self->super.isa + v40)];
              [v18 setTexture:v23 atIndex:0];
              [v18 setTexture:a7 atIndex:1];
              [v18 setBytes:&v47 length:16 atIndex:0];
              [v18 setBytes:v59 length:112 atIndex:1];
              v35 = [(__CVBuffer *)a7 width];
              v36 = [(__CVBuffer *)a7 height];
              v52 = v35;
              v53 = v36;
              v54 = 1;
              v50 = vdupq_n_s64(0x20uLL);
              v51 = 1;
              [v18 dispatchThreads:&v52 threadsPerThreadgroup:&v50];
              [v18 endEncoding];
              [(FigMetalContext *)self->_metalContext commit];
              v37 = 0;
              v12 = v41;
              v13 = v42;
              goto LABEL_25;
            }

            [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
            v37 = -12780;
            v12 = v41;
            v13 = v42;
          }

          else
          {
            v37 = -12782;
            v13 = v42;
            v12 = v41;
          }
        }

        else
        {
          v12 = 0;
          a7 = 0;
          v37 = -12782;
        }
      }

      else
      {
        v12 = 0;
        v46 = 0;
        v23 = 0;
        a7 = 0;
        v37 = -12782;
      }
    }

    else
    {
      v12 = 0;
      if ([CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:])
      {
        v37 = 0;
        v22 = 0;
        v18 = 0;
        v46 = 0;
        v23 = 0;
        a7 = 0;
        goto LABEL_25;
      }

      v22 = 0;
      v37 = v52;
      v18 = 0;
      v46 = 0;
      v23 = 0;
      a7 = 0;
    }
  }

LABEL_34:
  preLTMLinearThumbnailPixelBuffer = self->_preLTMLinearThumbnailPixelBuffer;
  if (preLTMLinearThumbnailPixelBuffer)
  {
    CFRelease(preLTMLinearThumbnailPixelBuffer);
    self->_preLTMLinearThumbnailPixelBuffer = 0;
  }

LABEL_25:

  return v37;
}

- (int)createLinearThumbnailFromMetadata:(id)a3 preLTMThumbnailPixelBuffer:(__CVBuffer *)a4 postLTMThumbnailPixelBuffer:(__CVBuffer *)a5 cameraInfo:(id)a6 applyGDC:(BOOL)a7 cropToPreLTMBounds:(BOOL)a8 toPixelBuffer:(__CVBuffer *)a9
{
  v9 = a8;
  v10 = a7;
  v15 = a3;
  v16 = a6;
  v73[0] = kCVPixelBufferMetalCompatibilityKey;
  v73[1] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v74[0] = &__kCFBooleanTrue;
  v74[1] = &__kCFBooleanTrue;
  v73[2] = kCVPixelBufferIOSurfacePropertiesKey;
  v74[2] = &__NSDictionary0__struct;
  v17 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:3];
  v59 = v15;
  v56 = v17;
  v57 = v16;
  if (!v15)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
LABEL_50:
    v22 = 0;
LABEL_51:
    v27 = 0;
    v28 = 0;
    v58 = 0;
    a5 = 0;
    goto LABEL_52;
  }

  if (!a4)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_50;
  }

  if (!a5)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    v22 = 0;
    v27 = 0;
    v28 = 0;
    v58 = 0;
LABEL_52:
    v29 = 0;
    v52 = -12780;
    goto LABEL_60;
  }

  if (!a9)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_50;
  }

  v18 = v17;
  Width = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(a4);
  if (Width >= 0x81)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_50;
  }

  if (Height >= 0xC1)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_50;
  }

  if (!self->_preLTMLinearThumbnailPixelBuffer && CVPixelBufferCreate(kCFAllocatorDefault, 0x80uLL, 0xC0uLL, 0x6C363472u, v18, &self->_preLTMLinearThumbnailPixelBuffer))
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    v22 = 0;
    v27 = 0;
    v28 = 0;
    v58 = 0;
    a5 = 0;
    v29 = 0;
    v52 = -12786;
    goto LABEL_60;
  }

  v21 = CMGetAttachment(a4, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  v22 = v21;
  if (!v21)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_51;
  }

  v55 = v9;
  v23 = [v21 objectForKeyedSubscript:kFigCaptureStreamPreLTMThumbnailKey_Format];
  v24 = [v23 unsignedIntValue];

  if (v24)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_51;
  }

  v71[7] = 0u;
  v72 = 0u;
  if (!FigCFDictionaryGetCGRectIfPresent())
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_51;
  }

  v25 = 1;
  memset(v71, 0, 112);
  if (v16)
  {
    if (v10)
    {
      v25 = !v10;
      if ([CMIDistortionModel getGDCParams:v71 cameraInfo:v16 metadata:v59])
      {
        v25 = 1;
      }
    }
  }

  v26 = [(FigMetalContext *)self->_metalContext commandBuffer];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 computeCommandEncoder];
    if (v28 && ([(FigMetalContext *)self->_metalContext bindPixelBufferToMTLBuffer:a4], (v58 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v29 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:self->_preLTMLinearThumbnailPixelBuffer usage:3];
      if (v29)
      {
        v30 = vmovn_s64(vcvtq_s64_f64(v72));
        v70[1] = v30.i16[2];
        v70[0] = v30.i16[0];
        v68 = xmmword_143F0;
        v69 = 5 * v72.f64[0];
        [v28 setComputePipelineState:self->_extractThumbnailPipelineState];
        [v28 setBuffer:v58 offset:0 atIndex:0];
        [v28 setBytes:v70 length:4 atIndex:1];
        [v28 setBytes:&v68 length:20 atIndex:2];
        [v28 setTexture:v29 atIndex:0];
        [v28 setTexture:0 atIndex:1];
        v65 = [v29 width];
        v66 = [v29 height];
        v67 = 1;
        v63 = vdupq_n_s64(0x20uLL);
        v64 = 1;
        [v28 dispatchThreads:&v65 threadsPerThreadgroup:&v63];
        __asm { FMOV            V0.2D, #1.0 }

        v61 = _Q0;
        v62 = _Q0;
        size = CGRectNull.size;
        v60[1] = CGRectNull.origin;
        v60[2] = size;
        if (FigCFDictionaryGetCGRectIfPresent() && FigCFDictionaryGetCGRectIfPresent())
        {
          FigCaptureMetadataUtilitiesRectNormalizedToRect();
          if (v37 < 0.0)
          {
            v37 = 0.0;
          }

          if (v38 < 0.0)
          {
            v38 = 0.0;
          }

          v61.f64[0] = v37;
          v61.f64[1] = v38;
          v41 = 1.0;
          if (v39 <= 1.0)
          {
            v42 = v39;
          }

          else
          {
            v42 = 1.0;
          }

          if (v40 <= 1.0)
          {
            v41 = v40;
          }

          v62.f64[0] = v42;
          v62.f64[1] = v41;
        }

        a5 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:a5 usage:1];
        if (a5)
        {
          v43 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:a9 usage:65543];
          if (v43)
          {
            v44 = v43;
            v60[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v61), v62);
            [v28 setImageblockWidth:32 height:32];
            if (v55)
            {
              v45 = 64;
              if (v25)
              {
                v45 = 56;
              }

              [v28 setComputePipelineState:*(&self->super.isa + v45)];
              [v28 setTexture:v29 atIndex:0];
              v46 = v28;
              v47 = v44;
              v48 = 1;
            }

            else
            {
              v49 = 48;
              if (v25)
              {
                v49 = 40;
              }

              [v28 setComputePipelineState:*(&self->super.isa + v49)];
              [v28 setTexture:a5 atIndex:0];
              [v28 setTexture:v29 atIndex:1];
              v46 = v28;
              v47 = v44;
              v48 = 2;
            }

            [v46 setTexture:v47 atIndex:v48];
            [v28 setBytes:v60 length:16 atIndex:0];
            [v28 setBytes:v70 length:4 atIndex:1];
            [v28 setBytes:v71 length:112 atIndex:2];
            v50 = [v44 width];
            v51 = [v44 height];
            v65 = v50;
            v66 = v51;
            v67 = 1;
            v63 = vdupq_n_s64(0x20uLL);
            v64 = 1;
            [v28 dispatchThreads:&v65 threadsPerThreadgroup:&v63];
            [v28 endEncoding];
            [(FigMetalContext *)self->_metalContext commit];

            v52 = 0;
            goto LABEL_42;
          }
        }
      }

      else
      {
        a5 = 0;
      }
    }

    else
    {
      v58 = 0;
      a5 = 0;
      v29 = 0;
    }

    v52 = -12782;
  }

  else
  {
    if ([CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:])
    {
      v52 = 0;
      v28 = 0;
      v58 = 0;
      a5 = 0;
      v29 = 0;
      goto LABEL_42;
    }

    v52 = v65;
    v28 = 0;
    v58 = 0;
    a5 = 0;
    v29 = 0;
  }

LABEL_60:
  preLTMLinearThumbnailPixelBuffer = self->_preLTMLinearThumbnailPixelBuffer;
  if (preLTMLinearThumbnailPixelBuffer)
  {
    CFRelease(preLTMLinearThumbnailPixelBuffer);
    self->_preLTMLinearThumbnailPixelBuffer = 0;
  }

LABEL_42:

  return v52;
}

- (int)createLinearThumbnailFromMetadata:(id)a3 postLTMThumbnailPixelBuffer:(__CVBuffer *)a4 cameraInfo:(id)a5 applyGDC:(BOOL)a6 cropToPreLTMBounds:(BOOL)a7 toPixelBuffer:(__CVBuffer *)a8
{
  v9 = a7;
  v87 = a6;
  v13 = a3;
  v94 = a5;
  v102[0] = kCVPixelBufferMetalCompatibilityKey;
  v102[1] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v103[0] = &__kCFBooleanTrue;
  v103[1] = &__kCFBooleanTrue;
  v102[2] = kCVPixelBufferIOSurfacePropertiesKey;
  v103[2] = &__NSDictionary0__struct;
  v14 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:3];
  v92 = v14;
  if (!v13)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
LABEL_72:
    a8 = 0;
LABEL_74:
    v19 = 0;
    v66 = 0;
    v17 = 0;
LABEL_76:
    v91 = 0;
LABEL_86:
    x_low = -12780;
    goto LABEL_93;
  }

  if (!a4)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_72;
  }

  if (!a8)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_74;
  }

  v15 = v14;
  v16 = [v13 objectForKeyedSubscript:kFigCaptureStreamMetadata_LTMThumbnail];
  v17 = v16;
  if (!v16)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    a8 = 0;
    v19 = 0;
    v66 = 0;
    goto LABEL_76;
  }

  v18 = [v16 bytes];
  v19 = v18;
  v91 = v17;
  if (!v18)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    a8 = 0;
LABEL_85:
    v66 = 0;
    v17 = 0;
    goto LABEL_86;
  }

  v20 = v18[4];
  if (v20 >= 0x81)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
LABEL_84:
    a8 = 0;
    v19 = 0;
    goto LABEL_85;
  }

  v90 = a4;
  v21 = v18[5];
  if (v21 >= 0xC1)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_84;
  }

  v22 = *(v18 + 1);
  if ([v17 length] != v22)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_84;
  }

  if (*(v19 + 48) == -1)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_84;
  }

  if (*(v19 + 50) == -1)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_84;
  }

  if (*(v19 + 52) == -1)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_84;
  }

  v89 = a8;
  p_preLTMLinearMetadataThumbnailPixelBuffer = &self->_preLTMLinearMetadataThumbnailPixelBuffer;
  preLTMLinearMetadataThumbnailPixelBuffer = self->_preLTMLinearMetadataThumbnailPixelBuffer;
  if (preLTMLinearMetadataThumbnailPixelBuffer)
  {
    goto LABEL_15;
  }

  if (!CVPixelBufferCreate(kCFAllocatorDefault, 0x80uLL, 0xC0uLL, 0x6C363472u, v15, &self->_preLTMLinearMetadataThumbnailPixelBuffer))
  {
    preLTMLinearMetadataThumbnailPixelBuffer = *p_preLTMLinearMetadataThumbnailPixelBuffer;
LABEL_15:
    if (CVPixelBufferLockBaseAddress(preLTMLinearMetadataThumbnailPixelBuffer, 0))
    {
      [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(*p_preLTMLinearMetadataThumbnailPixelBuffer);
      if (BaseAddress)
      {
        v26 = BaseAddress;
        v88 = v9;
        v93 = v13;
        v27 = *(v19 + 48);
        v28 = *(v19 + 50);
        v29 = *(v19 + 52);
        v30 = *(v19 + 12);
        BytesPerRow = CVPixelBufferGetBytesPerRow(*p_preLTMLinearMetadataThumbnailPixelBuffer);
        if (v21)
        {
          v32 = 0;
          v33 = 0;
          v34 = BytesPerRow & 0xFFFFFFFE;
          do
          {
            if (v20)
            {
              v35 = 0;
              v36 = v19 + 62 + 2 * v32;
              do
              {
                v37 = &v26[v35];
                *v37 = *(v36 + 2 * v27);
                *(v37 + 1) = *(v36 + 2 * v28);
                *(v37 + 2) = *(v36 + 2 * v29);
                *(v37 + 3) = -1;
                v36 += 2 * v30;
                v35 += 8;
              }

              while (8 * v20 != v35);
            }

            ++v33;
            v32 += v30 * v20;
            v26 += v34;
          }

          while (v33 != v21);
        }

        CVPixelBufferUnlockBaseAddress(*p_preLTMLinearMetadataThumbnailPixelBuffer, 0);
        if (v20 == 34 && v21 == 26)
        {
          v38 = self;
          v13 = v93;
LABEL_39:
          [(CMISmartStyleProcessorUtilitiesV1 *)v38 _computeLinearThumbnailValidRegion:v13];
          v57 = v60;
          v56 = v61;
          v55 = v62;
          v54 = v63;
          goto LABEL_40;
        }

        size = CGRectNull.size;
        origin = CGRectNull.origin;
        v101 = size;
        v13 = v93;
        if (FigCFDictionaryGetCGRectIfPresent())
        {
          v40 = *(v19 + 16);
          v41 = *(v19 + 24);
          v42 = *(v19 + 32);
          v43 = *(v19 + 40);
          v44 = [v93 objectForKeyedSubscript:kFigCaptureStreamMetadata_QuadraBinningFactor];
          v45 = [v44 intValue];

          x = origin.x;
          v47.f64[0] = v101.f64[0];
          if (v45 == 1 && v101.f64[0] == 8448.0)
          {
            x = origin.x * 0.5;
            y = origin.y * 0.5;
            origin.x = origin.x * 0.5;
            origin.y = origin.y * 0.5;
            v47.f64[1] = v101.f64[1];
            __asm { FMOV            V0.2D, #0.5 }

            v47 = vmulq_f64(v47, _Q0);
            v101 = v47;
          }

          else
          {
            y = origin.y;
          }

          v58 = (*(v19 + 16) + *(v19 + 32) * 0.5) - (x + v47.f64[0] * 0.5);
          if (v58 < 0)
          {
            v58 = (x + v47.f64[0] * 0.5) - (*(v19 + 16) + *(v19 + 32) * 0.5);
          }

          if (v47.f64[0] / 10.0 < v58)
          {
            goto LABEL_38;
          }

          v59 = (*(v19 + 24) + *(v19 + 40) * 0.5) - (y + v101.f64[1] * 0.5);
          if (v59 < 0)
          {
            v59 = (y + v101.f64[1] * 0.5) - (*(v19 + 24) + *(v19 + 40) * 0.5);
          }

          if (v101.f64[1] / 10.0 < v59)
          {
LABEL_38:
            v38 = self;
            goto LABEL_39;
          }

          FigCaptureMetadataUtilitiesRectNormalizedToRect();
          if (v82 >= 0.0)
          {
            v57 = v82;
          }

          else
          {
            v57 = 0.0;
          }

          if (v83 >= 0.0)
          {
            v56 = v83;
          }

          else
          {
            v56 = 0.0;
          }

          if (v84 <= 1.0)
          {
            v55 = v84;
          }

          else
          {
            v55 = 1.0;
          }

          if (v85 <= 1.0)
          {
            v54 = v85;
          }

          else
          {
            v54 = 1.0;
          }
        }

        else
        {
          v54 = 1.0;
          v55 = 1.0;
          v56 = 1.0;
          v57 = 1.0;
        }

LABEL_40:
        v64 = 1;
        memset(v99, 0, sizeof(v99));
        if (v94)
        {
          if (v87)
          {
            v64 = !v87;
            if ([CMIDistortionModel getGDCParams:v99 cameraInfo:v94 metadata:v13])
            {
              v64 = 1;
            }
          }
        }

        v65 = [(FigMetalContext *)self->_metalContext commandBuffer];
        a8 = v65;
        if (!v65)
        {
          if ([CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:])
          {
            x_low = 0;
            v19 = 0;
            v66 = 0;
            v17 = 0;
            goto LABEL_57;
          }

          x_low = LODWORD(origin.x);
          v19 = 0;
          v66 = 0;
          v17 = 0;
          goto LABEL_93;
        }

        v19 = [(__CVBuffer *)v65 computeCommandEncoder];
        if (v19)
        {
          v66 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:v90 usage:1];
          if (v66)
          {
            v17 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:self->_preLTMLinearMetadataThumbnailPixelBuffer usage:1];
            if (v17)
            {
              v67 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:v89 usage:65538];
              if (v67)
              {
                v68 = v67;
                v98[1] = v21;
                v98[0] = v20;
                *&v69 = v57;
                v70 = v56;
                *&v71 = v55;
                *(&v69 + 1) = v70;
                *&v72 = v54;
                *(&v69 + 1) = __PAIR64__(v72, v71);
                v97 = v69;
                if (v88)
                {
                  v73 = 64;
                  if (v64)
                  {
                    v73 = 56;
                  }

                  [v19 setComputePipelineState:*(&self->super.isa + v73)];
                  [v19 setTexture:v17 atIndex:0];
                  [v19 setTexture:v68 atIndex:1];
                  [v19 setBytes:&v97 length:16 atIndex:0];
                  [v19 setBytes:v98 length:4 atIndex:1];
                  [v19 setBytes:v99 length:112 atIndex:2];
                  v74 = [v68 width];
                  v75 = [v68 height];
                  *&origin.x = v74;
                  *&origin.y = v75;
                  *&v101.f64[0] = 1;
                  v76 = vdupq_n_s64(0x20uLL);
                }

                else
                {
                  v77 = 48;
                  if (v64)
                  {
                    v77 = 40;
                  }

                  [v19 setComputePipelineState:*(&self->super.isa + v77)];
                  [v19 setTexture:v66 atIndex:0];
                  [v19 setTexture:v17 atIndex:1];
                  [v19 setTexture:v68 atIndex:2];
                  [v19 setBytes:&v97 length:16 atIndex:0];
                  [v19 setBytes:v98 length:4 atIndex:1];
                  [v19 setBytes:v99 length:112 atIndex:2];
                  [v19 setImageblockWidth:32 height:32];
                  v78 = [v68 width];
                  v79 = [v68 height];
                  *&origin.x = v78;
                  *&origin.y = v79;
                  *&v101.f64[0] = 1;
                  v76 = vdupq_n_s64(0x20uLL);
                  v13 = v93;
                }

                v95 = v76;
                v96 = 1;
                [v19 dispatchThreads:&origin threadsPerThreadgroup:&v95];
                [v19 endEncoding];
                [(FigMetalContext *)self->_metalContext commit];

                x_low = 0;
                goto LABEL_57;
              }
            }

            goto LABEL_92;
          }

LABEL_91:
          v17 = 0;
LABEL_92:
          x_low = -12782;
          goto LABEL_93;
        }

LABEL_90:
        v66 = 0;
        goto LABEL_91;
      }

      [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    }

    a8 = 0;
    v19 = 0;
    goto LABEL_90;
  }

  [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
  a8 = 0;
  v19 = 0;
  v66 = 0;
  v17 = 0;
  x_low = -12786;
LABEL_93:
  v86 = self->_preLTMLinearMetadataThumbnailPixelBuffer;
  if (v86)
  {
    CFRelease(v86);
    self->_preLTMLinearMetadataThumbnailPixelBuffer = 0;
  }

LABEL_57:

  return x_low;
}

- (__CVBuffer)createSingleChannelPixelBufferViewFromPixelBuffer:(__CVBuffer *)a3
{
  [(CMISmartStyleProcessorUtilitiesV1 *)self _getComponentCountOfFormat:CVPixelBufferGetPixelFormatType(a3)];
  v5 = 0;
  CVPixelBufferGetBytesPerRow(a3);
  CVPixelBufferGetWidth(a3);
  CVPixelBufferGetHeight(a3);
  CVPixelBufferGetAttributes();
  if (CVPixelBufferCreateWithParentPixelBuffer())
  {
    [CMISmartStyleProcessorUtilitiesV1 createSingleChannelPixelBufferViewFromPixelBuffer:?];
  }

  else
  {
    [CMISmartStyleProcessorUtilitiesV1 createSingleChannelPixelBufferViewFromPixelBuffer:];
  }

  return v5;
}

- (int)enqueueCoefficientsForFiltering:(__CVBuffer *)a3 withMetadata:(id)a4 pts:(id *)a5 learnedStyle:(id)a6
{
  coefficientsProcessor = self->_coefficientsProcessor;
  v8 = *a5;
  return [(CMIStyleEngineCoefficientsProcessor *)coefficientsProcessor enqueueCoefficientsForFiltering:a3 withMetadata:a4 pts:&v8 learnedStyle:a6];
}

- (int)filterCoefficientsForFrameWithMetadata:(id)a3 pts:(id *)a4 filterType:(unint64_t)a5 toPixelBuffer:(__CVBuffer *)a6
{
  coefficientsProcessor = self->_coefficientsProcessor;
  v8 = *a4;
  return [(CMIStyleEngineCoefficientsProcessor *)coefficientsProcessor filterCoefficientsForFrameWithMetadata:a3 pts:&v8 filterType:a5 toPixelBuffer:a6];
}

- (int)filterCoefficientsForFrameWithMetadata:(id)a3 pts:(id *)a4 filterType:(unint64_t)a5 toPixelBuffer:(__CVBuffer *)a6 toGlobalRemixFactor:(float *)a7
{
  coefficientsProcessor = self->_coefficientsProcessor;
  v9 = *a4;
  return [(CMIStyleEngineCoefficientsProcessor *)coefficientsProcessor filterCoefficientsForFrameWithMetadata:a3 pts:&v9 filterType:a5 toPixelBuffer:a6 toGlobalRemixFactor:a7];
}

- (CGRect)_computeLinearThumbnailValidRegion:(id)a3
{
  v3 = a3;
  origin = CGRectNull.origin;
  size = CGRectNull.size;
  if (!FigCFDictionaryGetCGRectIfPresent())
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:];
LABEL_62:
    v34 = 1.0;
    v33 = 1.0;
    v32 = 1.0;
    v31 = 1.0;
    goto LABEL_48;
  }

  v4 = [v3 objectForKeyedSubscript:kFigCaptureStreamMetadata_RawSensorWidth];
  v5 = [v4 unsignedIntValue];

  if (!v5)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:];
    goto LABEL_62;
  }

  v6 = [v3 objectForKeyedSubscript:kFigCaptureStreamMetadata_RawSensorHeight];
  v7 = [v6 unsignedIntValue];

  if (!v7)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:];
    goto LABEL_62;
  }

  v8 = [v3 objectForKeyedSubscript:kFigCaptureStreamMetadata_QuadraBinningFactor];
  v9 = [v8 intValue];

  if (v9 == 1 && v5 >= 0x1081)
  {
    __asm { FMOV            V0.2D, #0.5 }

    origin = vmulq_f64(origin, _Q0);
    size = vmulq_f64(size, _Q0);
    v5 >>= 1;
    v7 >>= 1;
  }

  v15 = [v3 objectForKeyedSubscript:{kFigCaptureStreamMetadata_LocalHistogramClippingData, *&origin.x}];
  if (!v15)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:];
    goto LABEL_62;
  }

  v16 = v15;
  v17 = [v15 bytes];
  if (!*v17)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  v18 = v17;
  if (v17[1] <= 0x2Bu)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  v19 = [v16 bytes];
  if (!v19)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  if (v19[19] == -1)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  if (v19[17] == -1)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  if (v19[20] != -1)
  {
    ++v20;
  }

  if (v19[21] != -1)
  {
    ++v20;
  }

  v21 = v19[10];
  v22 = v19[11];
  if (2 * (v21 * v22 * v20) + 44 != v18[1])
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  v23 = v19[4];
  if (v23 < 0)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  y = v19[5];
  if (y < 0)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  v25 = v23 + (v19[6] - v19[8] + v19[8] * v21);
  if (v25 > v5)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  v26 = y + (v19[7] - v19[9] + v19[9] * v22);
  if (v26 > v7)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  v27 = v25 - 1;
  v28 = v26 - 1;
  if (v40 > v19[4])
  {
    v23 = v40;
  }

  if (origin.y > v19[5])
  {
    y = origin.y;
  }

  if (v40 + size.width < v27)
  {
    v27 = (v40 + size.width);
  }

  if (origin.y + size.height < v28)
  {
    v28 = (origin.y + size.height);
  }

  v29 = (v27 - v23) / size.width;
  v30 = (v28 - y) / size.height;
  if ((1.0 - v29) * 0.5 >= 0.0)
  {
    v31 = (1.0 - v29) * 0.5;
  }

  else
  {
    v31 = 0.0;
  }

  if ((1.0 - v30) * 0.5 >= 0.0)
  {
    v32 = (1.0 - v30) * 0.5;
  }

  else
  {
    v32 = 0.0;
  }

  if (v29 <= 1.0)
  {
    v33 = (v27 - v23) / size.width;
  }

  else
  {
    v33 = 1.0;
  }

  if (v30 <= 1.0)
  {
    v34 = (v28 - y) / size.height;
  }

  else
  {
    v34 = 1.0;
  }

LABEL_48:
  v35 = v31;
  v36 = v32;
  v37 = v33;
  v38 = v34;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (int)_compileShaders
{
  v3 = objc_alloc_init(MTLFunctionConstantValues);
  v26 = 0;
  [v3 setConstantValue:&v26 + 1 type:53 atIndex:0];
  [v3 setConstantValue:&v26 type:53 atIndex:1];
  v4 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"smartStyleExtractLTMThumbnail" constants:v3];
  extractThumbnailPipelineState = self->_extractThumbnailPipelineState;
  self->_extractThumbnailPipelineState = v4;

  if (!self->_extractThumbnailPipelineState)
  {
    [(CMISmartStyleProcessorUtilitiesV1 *)&v27 _compileShaders];
LABEL_23:
    v24 = v27;
    goto LABEL_12;
  }

  v6 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"smartStyleCreateLinearThumbnail" constants:v3];
  createLinearThumbnailPipelineState = self->_createLinearThumbnailPipelineState;
  self->_createLinearThumbnailPipelineState = v6;

  if (!self->_createLinearThumbnailPipelineState)
  {
    [(CMISmartStyleProcessorUtilitiesV1 *)&v27 _compileShaders];
    goto LABEL_23;
  }

  v8 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"smartStyleCreateLinearThumbnailFromPreLTMBounds" constants:v3];
  createLinearThumbnailCroppedToPreLTMPipelineState = self->_createLinearThumbnailCroppedToPreLTMPipelineState;
  self->_createLinearThumbnailCroppedToPreLTMPipelineState = v8;

  if (!self->_createLinearThumbnailCroppedToPreLTMPipelineState)
  {
    [(CMISmartStyleProcessorUtilitiesV1 *)&v27 _compileShaders];
    goto LABEL_23;
  }

  v10 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"smartStyleCreateThumbnail" constants:v3];
  createThumbnailPipelineState = self->_createThumbnailPipelineState;
  self->_createThumbnailPipelineState = v10;

  if (!self->_createThumbnailPipelineState)
  {
    [(CMISmartStyleProcessorUtilitiesV1 *)&v27 _compileShaders];
    goto LABEL_23;
  }

  v12 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"smartStyleCropAndScaleMask" constants:v3];
  maskCropAndScalePipelineState = self->_maskCropAndScalePipelineState;
  self->_maskCropAndScalePipelineState = v12;

  if (!self->_maskCropAndScalePipelineState)
  {
    [(CMISmartStyleProcessorUtilitiesV1 *)&v27 _compileShaders];
    goto LABEL_23;
  }

  v14 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"smartStyleAugmentPersonMask" constants:v3];
  maskFalsePositiveRejectionPipelineState = self->_maskFalsePositiveRejectionPipelineState;
  self->_maskFalsePositiveRejectionPipelineState = v14;

  if (!self->_maskFalsePositiveRejectionPipelineState)
  {
    [(CMISmartStyleProcessorUtilitiesV1 *)&v27 _compileShaders];
    goto LABEL_23;
  }

  HIBYTE(v26) = 1;
  [v3 setConstantValue:&v26 + 1 type:53 atIndex:0];
  v16 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"smartStyleCreateLinearThumbnail" constants:v3];
  createLinearThumbnailPipelineStateWithGDC = self->_createLinearThumbnailPipelineStateWithGDC;
  self->_createLinearThumbnailPipelineStateWithGDC = v16;

  if (!self->_createLinearThumbnailPipelineStateWithGDC)
  {
    [(CMISmartStyleProcessorUtilitiesV1 *)&v27 _compileShaders];
    goto LABEL_23;
  }

  v18 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"smartStyleCreateLinearThumbnailFromPreLTMBounds" constants:v3];
  createLinearThumbnailCroppedToPreLTMPipelineStateWithGDC = self->_createLinearThumbnailCroppedToPreLTMPipelineStateWithGDC;
  self->_createLinearThumbnailCroppedToPreLTMPipelineStateWithGDC = v18;

  if (!self->_createLinearThumbnailCroppedToPreLTMPipelineStateWithGDC)
  {
    [(CMISmartStyleProcessorUtilitiesV1 *)&v27 _compileShaders];
    goto LABEL_23;
  }

  v20 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"smartStyleCreateThumbnail" constants:v3];
  createThumbnailsPipelineStateWithGDC = self->_createThumbnailsPipelineStateWithGDC;
  self->_createThumbnailsPipelineStateWithGDC = v20;

  if (!self->_createThumbnailsPipelineStateWithGDC)
  {
    [(CMISmartStyleProcessorUtilitiesV1 *)&v27 _compileShaders];
    goto LABEL_23;
  }

  v22 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"smartStyleCropAndScaleMask" constants:v3];
  maskCropAndScalePipelineStateWithGDC = self->_maskCropAndScalePipelineStateWithGDC;
  self->_maskCropAndScalePipelineStateWithGDC = v22;

  if (!self->_maskCropAndScalePipelineStateWithGDC)
  {
    [(CMISmartStyleProcessorUtilitiesV1 *)&v27 _compileShaders];
    goto LABEL_23;
  }

  v24 = 0;
LABEL_12:

  return v24;
}

- (unsigned)_getComponentCountOfFormat:(unsigned int)a3
{
  if (a3 > 927150389)
  {
    if (a3 <= 1278226741)
    {
      switch(a3)
      {
        case 0x37433136u:
          return 7;
        case 0x38433136u:
          return 8;
        case 0x39433136u:
          return 9;
      }

      return 0;
    }

    if (a3 == 1278226742)
    {
      return 1;
    }

    if (a3 != 1815361650)
    {
      if (a3 == 1815491698)
      {
        return 4;
      }

      return 0;
    }

    return 3;
  }

  if (a3 <= 876818741)
  {
    if (a3 == 843264310)
    {
      return 2;
    }

    if (a3 != 860041526)
    {
      return 0;
    }

    return 3;
  }

  switch(a3)
  {
    case 0x34433136u:
      return 4;
    case 0x35433136u:
      return 5;
    case 0x36433136u:
      return 6;
  }

  return 0;
}

- (CMISmartStyleProcessorUtilitiesV1)initWithStyleEngine:(id)a3 temporalFilterBufferSize:(int)a4 withMetalContext:(id)a5
{
  v9 = a3;
  v10 = a5;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v25.receiver = self;
  v25.super_class = CMISmartStyleProcessorUtilitiesV1;
  v12 = [(CMISmartStyleProcessorUtilitiesV1 *)&v25 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_13;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  objc_storeStrong(&v12->_metalContext, a5);
  if (!CFPreferenceNumberWithDefault)
  {
    if (!v9)
    {
      goto LABEL_13;
    }

    objc_storeStrong(&v13->_styleEngineProcessor, a3);
    v14 = [CMIStyleEngineCoefficientsProcessor alloc];
    v15 = [v10 commandQueue];
    v16 = [v14 initWithBufferCount:a4 coefficientsSynchronization:1 andOptionalMetalCommandQueue:v15];
    coefficientsProcessor = v13->_coefficientsProcessor;
    v13->_coefficientsProcessor = v16;

    if (!v13->_coefficientsProcessor)
    {
LABEL_13:
      OUTLINED_FUNCTION_1();
LABEL_14:
      FigDebugAssert3();
      v18 = 0;
      goto LABEL_15;
    }
  }

  if ([(CMISmartStyleProcessorUtilitiesV1 *)v13 _compileShaders])
  {
    goto LABEL_14;
  }

  v23 = kCVMetalTextureCacheMaximumTextureAgeKey;
  v24 = &off_20938;
  v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v19 = [(FigMetalContext *)v13->_metalContext device];
  v20 = CVMetalTextureCacheCreate(kCFAllocatorDefault, v18, v19, 0, &v13->_cvMetalTextureCacheRef);

  if (v20)
  {
LABEL_15:
    v21 = 0;
    goto LABEL_9;
  }

  v21 = v13;
LABEL_9:

  return v21;
}

- (int)runFPRejectionOnMask:(__CVBuffer *)a3 originalMask:(__CVBuffer *)a4
{
  v7 = [CMISmartStyleProcessorSettingsV1 tuningParametersForVariant:0];
  v8 = v7;
  if (!v7)
  {
    v19 = FigSignalErrorAtGM();
    v10 = 0;
    goto LABEL_14;
  }

  [v7 personMaskDilatedMaskVal];
  v25 = v9;
  v10 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:a3 usage:23];
  if (v10)
  {
    v11 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:a4 usage:17];
    if (v11)
    {
      v12 = v11;
      v13 = [v10 width];
      if (v13 == [v12 width])
      {
        v14 = [v10 height];
        if (v14 == [v12 height])
        {
          v15 = [(FigMetalContext *)self->_metalContext commandBuffer];
          if (v15)
          {
            v16 = v15;
            v17 = [v15 computeCommandEncoder];
            if (!v17)
            {
              FigDebugAssert3();
              OUTLINED_FUNCTION_3();
              v19 = FigSignalErrorAtGM();

              v18 = 0;
              goto LABEL_10;
            }

            v18 = v17;
            [v17 setComputePipelineState:self->_maskFalsePositiveRejectionPipelineState];
            [v18 setTexture:v10 atIndex:0];
            [v18 setTexture:v12 atIndex:1];
            [v18 setBytes:&v25 length:4 atIndex:0];
            [v18 setImageblockWidth:32 height:32];
            v24[0] = [v10 width];
            v24[1] = [v10 height];
            v24[2] = 1;
            v22 = vdupq_n_s64(0x20uLL);
            v23 = 1;
            [v18 dispatchThreads:v24 threadsPerThreadgroup:&v22];
            [v18 endEncoding];
            [(FigMetalContext *)self->_metalContext commit];

            goto LABEL_9;
          }
        }
      }

      OUTLINED_FUNCTION_2_0();
      FigDebugAssert3();
      createThumbnailsPipelineStateWithGDC = self[19]._createThumbnailsPipelineStateWithGDC;
      OUTLINED_FUNCTION_3();
      v19 = FigSignalErrorAtGM();

LABEL_14:
      v18 = 0;
      v16 = 0;
      goto LABEL_10;
    }
  }

  v18 = 0;
  v16 = 0;
LABEL_9:
  v19 = 0;
LABEL_10:

  return v19;
}

- (id)_cachedTexturesFromPixelBuffer:(__CVBuffer *)a3 usage:(unint64_t)a4
{
  v4 = a3;
  image = 0;
  v19 = 1;
  v18 = 0;
  if (a3)
  {
    CVPixelBufferGetPixelFormatType(a3);
    v7 = CMIGetMetalPixelFormatForPixelBuffer();
    if (v7)
    {
      v8 = v7;
      Width = CVPixelBufferGetWidth(v4);
      Height = CVPixelBufferGetHeight(v4);
      v16 = kCVMetalTextureUsage;
      v11 = [NSNumber numberWithUnsignedInteger:a4];
      v17 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];

      v13 = CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, self->_cvMetalTextureCacheRef, v4, v12, v8, Width, Height, 0, &image);
      v14 = image;
      if (!v13)
      {
        v4 = CVMetalTextureGetTexture(image);
        v14 = image;
        if (!image)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v4 = 0;
      if (image)
      {
LABEL_5:
        CFRelease(v14);
      }
    }

    else
    {
      v12 = 0;
      v4 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_6:

  return v4;
}

- (void)blitPixelBuffer:(void *)a1 inputValidBufferRect:(void *)a2 toPixelBuffer:.cold.1(void *a1, void *a2)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (void)blitPixelBuffer:(void *)a1 inputValidBufferRect:toPixelBuffer:.cold.2(void *a1)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (void)getPreLTMValidROIFromMetadata:(uint64_t)a1 inputPreLTMThumbnailPixelBuffer:(uint64_t)a2 outputRect:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (void)getLTMThumbnailFormatFromSampleBuffer:(void *)a1 outputFormat:.cold.1(void *a1)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (uint64_t)_createGlobalToneCurveTextureFromMetadataDict:.cold.1()
{
  FigDebugAssert3();
  OUTLINED_FUNCTION_3();

  return FigSignalErrorAtGM();
}

- (BOOL)createUnstyledThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:.cold.4()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_3();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_4(v0);
}

- (BOOL)createLinearThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:.cold.3()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_3();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_4(v0);
}

- (BOOL)createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:.cold.3()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_3();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_4(v0);
}

- (BOOL)createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:.cold.4()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_3();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_4(v0);
}

- (void)createSingleChannelPixelBufferViewFromPixelBuffer:(CFTypeRef *)a1 .cold.1(CFTypeRef *a1)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
  if (*a1)
  {
    CFRelease(*a1);
  }
}

- (void)_computeLinearThumbnailValidRegion:(void *)a1 .cold.1(void *a1)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (void)_computeLinearThumbnailValidRegion:(void *)a1 .cold.2(void *a1)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (void)_computeLinearThumbnailValidRegion:(void *)a1 .cold.3(void *a1)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (void)_computeLinearThumbnailValidRegion:(void *)a1 .cold.4(void *a1)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (void)_computeLinearThumbnailValidRegion:(void *)a1 .cold.5(void *a1)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (void)_computeLinearThumbnailValidRegion:(void *)a1 .cold.6(void *a1)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (void)_computeLinearThumbnailValidRegion:(void *)a1 .cold.7(void *a1)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (void)_computeLinearThumbnailValidRegion:(void *)a1 .cold.8(void *a1)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (void)_computeLinearThumbnailValidRegion:(void *)a1 .cold.9(void *a1)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (uint64_t)_compileShaders
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end