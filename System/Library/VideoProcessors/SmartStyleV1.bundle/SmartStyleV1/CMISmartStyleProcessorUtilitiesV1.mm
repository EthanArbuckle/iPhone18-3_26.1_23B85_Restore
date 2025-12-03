@interface CMISmartStyleProcessorUtilitiesV1
- (CGRect)_computeLinearThumbnailValidRegion:(id)region;
- (CMISmartStyleProcessorUtilitiesV1)initWithStyleEngine:(id)engine temporalFilterBufferSize:(int)size withMetalContext:(id)context;
- (__CVBuffer)createSingleChannelPixelBufferViewFromPixelBuffer:(__CVBuffer *)buffer;
- (id)_cachedTexturesFromPixelBuffer:(__CVBuffer *)buffer usage:(unint64_t)usage;
- (id)_createGlobalToneCurveTextureFromMetadataDict:(id)dict;
- (int)_compileShaders;
- (int)blitPixelBuffer:(__CVBuffer *)buffer inputValidBufferRect:(CGRect)rect toPixelBuffer:(__CVBuffer *)pixelBuffer;
- (int)createIdentityTransformCoefficients:(__CVBuffer *)coefficients;
- (int)createLinearThumbnailFromMetadata:(id)metadata ltmThumbnailPixelBuffer:(__CVBuffer *)buffer cameraInfo:(id)info applyGDC:(BOOL)c toPixelBuffer:(__CVBuffer *)pixelBuffer;
- (int)createLinearThumbnailFromMetadata:(id)metadata postLTMThumbnailPixelBuffer:(__CVBuffer *)buffer cameraInfo:(id)info applyGDC:(BOOL)c cropToPreLTMBounds:(BOOL)bounds toPixelBuffer:(__CVBuffer *)pixelBuffer;
- (int)createLinearThumbnailFromMetadata:(id)metadata preLTMThumbnailPixelBuffer:(__CVBuffer *)buffer postLTMThumbnailPixelBuffer:(__CVBuffer *)pixelBuffer cameraInfo:(id)info applyGDC:(BOOL)c cropToPreLTMBounds:(BOOL)bounds toPixelBuffer:(__CVBuffer *)toPixelBuffer;
- (int)createUnstyledThumbnailFromMetadata:(id)metadata ltmThumbnailPixelBuffer:(__CVBuffer *)buffer cameraInfo:(id)info applyGDC:(BOOL)c toPixelBuffer:(__CVBuffer *)pixelBuffer;
- (int)downScalePixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer inputROI:(CGRect)i gdcParams:(id *)params applyGDC:(BOOL)c rotation:(unint64_t)rotation;
- (int)enqueueCoefficientsForFiltering:(__CVBuffer *)filtering withMetadata:(id)metadata pts:(id *)pts learnedStyle:(id)style;
- (int)filterCoefficientsForFrameWithMetadata:(id)metadata pts:(id *)pts filterType:(unint64_t)type toPixelBuffer:(__CVBuffer *)buffer;
- (int)filterCoefficientsForFrameWithMetadata:(id)metadata pts:(id *)pts filterType:(unint64_t)type toPixelBuffer:(__CVBuffer *)buffer toGlobalRemixFactor:(float *)factor;
- (int)getLTMThumbnailFormatFromSampleBuffer:(opaqueCMSampleBuffer *)buffer outputFormat:(int *)format;
- (int)getPreLTMValidROIFromMetadata:(id)metadata inputPreLTMThumbnailPixelBuffer:(__CVBuffer *)buffer outputRect:(CGRect *)rect;
- (int)propagatePixelBufferColorAttachments:(__CVBuffer *)attachments toPixelBuffer:(__CVBuffer *)buffer forceLinearTransferFunction:(BOOL)function;
- (int)runFPRejectionOnMask:(__CVBuffer *)mask originalMask:(__CVBuffer *)originalMask;
- (uint64_t)_compileShaders;
- (unsigned)_getComponentCountOfFormat:(unsigned int)format;
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

- (int)propagatePixelBufferColorAttachments:(__CVBuffer *)attachments toPixelBuffer:(__CVBuffer *)buffer forceLinearTransferFunction:(BOOL)function
{
  if (!attachments)
  {
    [CMISmartStyleProcessorUtilitiesV1 propagatePixelBufferColorAttachments:toPixelBuffer:forceLinearTransferFunction:];
    return -12780;
  }

  if (!buffer)
  {
    [CMISmartStyleProcessorUtilitiesV1 propagatePixelBufferColorAttachments:toPixelBuffer:forceLinearTransferFunction:];
    return -12780;
  }

  functionCopy = function;
  v8 = kCVImageBufferColorPrimariesKey;
  v9 = CVBufferCopyAttachment(attachments, kCVImageBufferColorPrimariesKey, 0);
  CVBufferSetAttachment(buffer, v8, v9, kCVAttachmentMode_ShouldPropagate);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = kCVImageBufferTransferFunctionKey;
  v11 = CVBufferCopyAttachment(attachments, kCVImageBufferTransferFunctionKey, 0);
  v12 = v11;
  if (functionCopy)
  {
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = kCVImageBufferTransferFunction_Linear;
    if (!kCVImageBufferTransferFunction_Linear)
    {
      CVBufferSetAttachment(buffer, v10, 0, kCVAttachmentMode_ShouldPropagate);
      goto LABEL_13;
    }

    CFRetain(kCVImageBufferTransferFunction_Linear);
    CVBufferSetAttachment(buffer, v10, v12, kCVAttachmentMode_ShouldPropagate);
    goto LABEL_11;
  }

  CVBufferSetAttachment(buffer, v10, v11, kCVAttachmentMode_ShouldPropagate);
  if (v12)
  {
LABEL_11:
    CFRelease(v12);
  }

LABEL_13:
  v13 = kCVImageBufferYCbCrMatrixKey;
  v14 = CVBufferCopyAttachment(attachments, kCVImageBufferYCbCrMatrixKey, 0);
  CVBufferSetAttachment(buffer, v13, v14, kCVAttachmentMode_ShouldPropagate);
  if (v14)
  {
    CFRelease(v14);
  }

  return 0;
}

- (int)downScalePixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer inputROI:(CGRect)i gdcParams:(id *)params applyGDC:(BOOL)c rotation:(unint64_t)rotation
{
  styleEngineProcessor = self->_styleEngineProcessor;
  if (!c)
  {
    params = 0;
  }

  return [(CMIStyleEngineProcessor *)styleEngineProcessor downScaleInputPixelBuffer:buffer withInputCropRect:pixelBuffer usingBoxSize:0 toOutputPixelBuffer:1 filter:params copyAttachments:rotation gdcParams:i.origin.x rotation:i.origin.y, i.size.width, i.size.height, CGSizeZero.width, CGSizeZero.height];
}

- (int)createIdentityTransformCoefficients:(__CVBuffer *)coefficients
{
  result = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor createIdentityTransformCoefficients:coefficients];
  if (result)
  {
    [CMISmartStyleProcessorUtilitiesV1 createIdentityTransformCoefficients:];
    return 10;
  }

  return result;
}

- (int)blitPixelBuffer:(__CVBuffer *)buffer inputValidBufferRect:(CGRect)rect toPixelBuffer:(__CVBuffer *)pixelBuffer
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:buffer usage:1];
  if (!v11)
  {
    [CMISmartStyleProcessorUtilitiesV1 blitPixelBuffer:inputValidBufferRect:toPixelBuffer:];
LABEL_18:
    v22 = -12786;
    goto LABEL_13;
  }

  v12 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:pixelBuffer usage:6];
  if (!v12)
  {
    [CMISmartStyleProcessorUtilitiesV1 blitPixelBuffer:inputValidBufferRect:toPixelBuffer:];
    goto LABEL_18;
  }

  v13 = v12;
  commandBuffer = [(FigMetalContext *)self->_metalContext commandBuffer];
  if (!commandBuffer)
  {
    [CMISmartStyleProcessorUtilitiesV1 blitPixelBuffer:v13 inputValidBufferRect:? toPixelBuffer:?];
    goto LABEL_18;
  }

  v15 = commandBuffer;
  [commandBuffer setLabel:@"CMISmartStyleProcessorUtilitiesV1::blitPixelBuffer"];
  blitCommandEncoder = [v15 blitCommandEncoder];
  if (!blitCommandEncoder)
  {
    [CMISmartStyleProcessorUtilitiesV1 blitPixelBuffer:v15 inputValidBufferRect:v13 toPixelBuffer:?];
    goto LABEL_18;
  }

  v17 = blitCommandEncoder;
  width = [v13 width];
  height = [v13 height];
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

    width = width;
    if (height <= [v13 height])
    {
      height = [v13 height];
    }

    height = height;
  }

  v26[0] = v20;
  v26[1] = v21;
  v26[2] = 0;
  v25[0] = width;
  v25[1] = height;
  v25[2] = 1;
  memset(v24, 0, sizeof(v24));
  [v17 copyFromTexture:v11 sourceSlice:0 sourceLevel:0 sourceOrigin:v26 sourceSize:v25 toTexture:v13 destinationSlice:0 destinationLevel:0 destinationOrigin:v24];
  [v17 endEncoding];
  [(FigMetalContext *)self->_metalContext commit];

  v22 = 0;
LABEL_13:

  return v22;
}

- (int)getPreLTMValidROIFromMetadata:(id)metadata inputPreLTMThumbnailPixelBuffer:(__CVBuffer *)buffer outputRect:(CGRect *)rect
{
  metadataCopy = metadata;
  v9 = metadataCopy;
  if (!metadataCopy)
  {
    [CMISmartStyleProcessorUtilitiesV1 getPreLTMValidROIFromMetadata:inputPreLTMThumbnailPixelBuffer:outputRect:];
    goto LABEL_64;
  }

  if (buffer)
  {
    v10 = CMGetAttachment(buffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
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

        rect->origin = v52;
        rect->size = v53;
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
  v23 = [metadataCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_LTMThumbnail];

  if (v23)
  {
    v24 = [v9 objectForKeyedSubscript:v22];
    v11 = v24;
    if (v24)
    {
      bytes = [v24 bytes];
      if (bytes)
      {
        v26 = bytes;
        v27 = *(bytes + 4);
        if (v27 >= 0x81)
        {
          [CMISmartStyleProcessorUtilitiesV1 getPreLTMValidROIFromMetadata:inputPreLTMThumbnailPixelBuffer:outputRect:];
        }

        else
        {
          v28 = *(bytes + 5);
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
                rect->origin.x = v46;
                rect->origin.y = v45;
                rect->size.width = v44;
                rect->size.height = v43;
LABEL_44:

                v41 = 0;
                goto LABEL_45;
              }

              v31 = *(v26 + 2);
              v32 = *(v26 + 3);
              v33 = *(v26 + 4);
              v34 = *(v26 + 5);
              v35 = [v9 objectForKeyedSubscript:kFigCaptureStreamMetadata_QuadraBinningFactor];
              intValue = [v35 intValue];

              x = v54.x;
              v38.f64[0] = v55.f64[0];
              if (intValue == 1 && v55.f64[0] == 8448.0)
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
  rect->origin.x = 0.0;
  rect->origin.y = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  rect->size = _Q0;
LABEL_45:

  return v41;
}

- (int)getLTMThumbnailFormatFromSampleBuffer:(opaqueCMSampleBuffer *)buffer outputFormat:(int *)format
{
  if (!buffer)
  {
    [CMISmartStyleProcessorUtilitiesV1 getLTMThumbnailFormatFromSampleBuffer:outputFormat:];
    return 0;
  }

  if (!format)
  {
    [CMISmartStyleProcessorUtilitiesV1 getLTMThumbnailFormatFromSampleBuffer:outputFormat:];
    return -12780;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
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

  *format = 0;

  return 0;
}

- (id)_createGlobalToneCurveTextureFromMetadataDict:(id)dict
{
  v4 = [dict objectForKeyedSubscript:kFigCaptureStreamMetadata_GlobalToneCurveLookUpTable];
  bytes = [v4 bytes];
  if (!bytes)
  {
    [CMISmartStyleProcessorUtilitiesV1 _createGlobalToneCurveTextureFromMetadataDict:];
LABEL_20:
    v41 = 0;
    v39 = 0;
    goto LABEL_15;
  }

  v7 = *bytes;
  if (v7 <= 0x40)
  {
    [CMISmartStyleProcessorUtilitiesV1 _createGlobalToneCurveTextureFromMetadataDict:];
    goto LABEL_20;
  }

  if (v7 == 257)
  {
    v8 = 0;
    LOWORD(v6) = bytes[256];
    v9 = vdupq_lane_s64(COERCE__INT64(v6), 0);
    do
    {
      v10 = *&bytes[v8 + 1];
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
  device = [(FigMetalContext *)self->_metalContext device];
  v41 = [device newTextureWithDescriptor:v39];

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

- (int)createUnstyledThumbnailFromMetadata:(id)metadata ltmThumbnailPixelBuffer:(__CVBuffer *)buffer cameraInfo:(id)info applyGDC:(BOOL)c toPixelBuffer:(__CVBuffer *)pixelBuffer
{
  metadataCopy = metadata;
  infoCopy = info;
  v20[0] = kCVPixelBufferMetalCompatibilityKey;
  v20[1] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v21[0] = &__kCFBooleanTrue;
  v21[1] = &__kCFBooleanTrue;
  v20[2] = kCVPixelBufferIOSurfacePropertiesKey;
  v21[2] = &__NSDictionary0__struct;
  v13 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
  v19 = metadataCopy;
  if (!metadataCopy)
  {
    [CMISmartStyleProcessorUtilitiesV1 createUnstyledThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
    v18 = 0;
    v14 = 0;
LABEL_13:
    pixelBuffer = 0;
    goto LABEL_14;
  }

  if (!buffer)
  {
    [CMISmartStyleProcessorUtilitiesV1 createUnstyledThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
    v18 = 0;
    metadataCopy = 0;
    v14 = 0;
    pixelBuffer = 0;
    goto LABEL_15;
  }

  if (pixelBuffer)
  {
    CVPixelBufferGetWidth(buffer);
    CVPixelBufferGetHeight(buffer);
    v14 = CMGetAttachment(buffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
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
      metadataCopy = 0;
      v14 = 0;
      pixelBuffer = 0;
      buffer = 0;
      goto LABEL_8;
    }

    [CMISmartStyleProcessorUtilitiesV1 createUnstyledThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
    v18 = 0;
    metadataCopy = 0;
    goto LABEL_13;
  }

  [CMISmartStyleProcessorUtilitiesV1 createUnstyledThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
  v18 = 0;
  metadataCopy = 0;
  v14 = 0;
LABEL_14:
  buffer = 0;
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

- (int)createLinearThumbnailFromMetadata:(id)metadata ltmThumbnailPixelBuffer:(__CVBuffer *)buffer cameraInfo:(id)info applyGDC:(BOOL)c toPixelBuffer:(__CVBuffer *)pixelBuffer
{
  cCopy = c;
  metadataCopy = metadata;
  infoCopy = info;
  v62[0] = kCVPixelBufferMetalCompatibilityKey;
  v62[1] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v63[0] = &__kCFBooleanTrue;
  v63[1] = &__kCFBooleanTrue;
  v62[2] = kCVPixelBufferIOSurfacePropertiesKey;
  v63[2] = &__NSDictionary0__struct;
  v14 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:3];
  v43 = v14;
  v44 = metadataCopy;
  if (!metadataCopy)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
    v45 = 0;
LABEL_29:
    v22 = 0;
    computeCommandEncoder = 0;
LABEL_32:
    v46 = 0;
    v23 = 0;
    pixelBuffer = 0;
    goto LABEL_33;
  }

  if (!buffer)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
    v45 = 0;
    metadataCopy = 0;
    goto LABEL_29;
  }

  if (!pixelBuffer)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
    v45 = 0;
    v46 = 0;
    metadataCopy = 0;
    v22 = 0;
    computeCommandEncoder = 0;
    v23 = 0;
LABEL_33:
    v37 = -12780;
    goto LABEL_34;
  }

  v15 = v14;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  v61[0] = Width;
  v61[1] = Height;
  computeCommandEncoder = CMGetAttachment(buffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  if (!computeCommandEncoder)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
    v45 = 0;
    metadataCopy = 0;
    v22 = 0;
    goto LABEL_32;
  }

  v60 = 0;
  v45 = computeCommandEncoder;
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
    metadataCopy = 0;
    v22 = 0;
    computeCommandEncoder = 0;
    v46 = 0;
    v23 = 0;
    pixelBuffer = 0;
    goto LABEL_25;
  }

  p_preLTMLinearThumbnailPixelBuffer = &self->_preLTMLinearThumbnailPixelBuffer;
  if (!self->_preLTMLinearThumbnailPixelBuffer && CVPixelBufferCreate(kCFAllocatorDefault, Width, Height, 0x6C363472u, v15, p_preLTMLinearThumbnailPixelBuffer))
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
    metadataCopy = 0;
    v22 = 0;
    computeCommandEncoder = 0;
    v46 = 0;
    v23 = 0;
    pixelBuffer = 0;
    v37 = -12786;
  }

  else
  {
    v20 = 72;
    memset(v59, 0, sizeof(v59));
    if (infoCopy && cCopy)
    {
      if ([CMIDistortionModel getGDCParams:v59 cameraInfo:infoCopy metadata:v44, p_preLTMLinearThumbnailPixelBuffer])
      {
        v20 = 72;
      }

      else
      {
        v20 = 80;
      }
    }

    commandBuffer = [(FigMetalContext *)self->_metalContext commandBuffer];
    if (commandBuffer)
    {
      v22 = commandBuffer;
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      if (computeCommandEncoder && ([(FigMetalContext *)self->_metalContext bindPixelBufferToMTLBuffer:buffer], (v46 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v23 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:self->_preLTMLinearThumbnailPixelBuffer usage:3];
        if (v23)
        {
          v42 = infoCopy;
          PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
          pixelBufferCopy = pixelBuffer;
          v26 = CVPixelFormatDescriptionCreateWithPixelFormatType(0, PixelFormatType);
          v27 = 8 * CVPixelBufferGetBytesPerRow(buffer);
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
          [computeCommandEncoder setComputePipelineState:{self->_extractThumbnailPipelineState, v20}];
          [computeCommandEncoder setBuffer:v46 offset:0 atIndex:0];
          [computeCommandEncoder setBytes:v61 length:4 atIndex:1];
          [computeCommandEncoder setBytes:&v55 length:20 atIndex:2];
          [computeCommandEncoder setTexture:v23 atIndex:0];
          [computeCommandEncoder setTexture:0 atIndex:1];
          width = [v23 width];
          height = [v23 height];
          v54 = 1;
          v50 = vdupq_n_s64(0x20uLL);
          v51 = 1;
          [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:&v50];
          pixelBuffer = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:pixelBufferCopy usage:65543];
          if (pixelBuffer)
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
              [computeCommandEncoder setImageblockWidth:32 height:32];
              [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v40)];
              [computeCommandEncoder setTexture:v23 atIndex:0];
              [computeCommandEncoder setTexture:pixelBuffer atIndex:1];
              [computeCommandEncoder setBytes:&v47 length:16 atIndex:0];
              [computeCommandEncoder setBytes:v59 length:112 atIndex:1];
              width2 = [(__CVBuffer *)pixelBuffer width];
              height2 = [(__CVBuffer *)pixelBuffer height];
              width = width2;
              height = height2;
              v54 = 1;
              v50 = vdupq_n_s64(0x20uLL);
              v51 = 1;
              [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:&v50];
              [computeCommandEncoder endEncoding];
              [(FigMetalContext *)self->_metalContext commit];
              v37 = 0;
              metadataCopy = v41;
              infoCopy = v42;
              goto LABEL_25;
            }

            [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:];
            v37 = -12780;
            metadataCopy = v41;
            infoCopy = v42;
          }

          else
          {
            v37 = -12782;
            infoCopy = v42;
            metadataCopy = v41;
          }
        }

        else
        {
          metadataCopy = 0;
          pixelBuffer = 0;
          v37 = -12782;
        }
      }

      else
      {
        metadataCopy = 0;
        v46 = 0;
        v23 = 0;
        pixelBuffer = 0;
        v37 = -12782;
      }
    }

    else
    {
      metadataCopy = 0;
      if ([CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:ltmThumbnailPixelBuffer:cameraInfo:applyGDC:toPixelBuffer:])
      {
        v37 = 0;
        v22 = 0;
        computeCommandEncoder = 0;
        v46 = 0;
        v23 = 0;
        pixelBuffer = 0;
        goto LABEL_25;
      }

      v22 = 0;
      v37 = width;
      computeCommandEncoder = 0;
      v46 = 0;
      v23 = 0;
      pixelBuffer = 0;
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

- (int)createLinearThumbnailFromMetadata:(id)metadata preLTMThumbnailPixelBuffer:(__CVBuffer *)buffer postLTMThumbnailPixelBuffer:(__CVBuffer *)pixelBuffer cameraInfo:(id)info applyGDC:(BOOL)c cropToPreLTMBounds:(BOOL)bounds toPixelBuffer:(__CVBuffer *)toPixelBuffer
{
  boundsCopy = bounds;
  cCopy = c;
  metadataCopy = metadata;
  infoCopy = info;
  v73[0] = kCVPixelBufferMetalCompatibilityKey;
  v73[1] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v74[0] = &__kCFBooleanTrue;
  v74[1] = &__kCFBooleanTrue;
  v73[2] = kCVPixelBufferIOSurfacePropertiesKey;
  v74[2] = &__NSDictionary0__struct;
  v17 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:3];
  v59 = metadataCopy;
  v56 = v17;
  v57 = infoCopy;
  if (!metadataCopy)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
LABEL_50:
    v22 = 0;
LABEL_51:
    v27 = 0;
    computeCommandEncoder = 0;
    v58 = 0;
    pixelBuffer = 0;
    goto LABEL_52;
  }

  if (!buffer)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_50;
  }

  if (!pixelBuffer)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    v22 = 0;
    v27 = 0;
    computeCommandEncoder = 0;
    v58 = 0;
LABEL_52:
    v29 = 0;
    v52 = -12780;
    goto LABEL_60;
  }

  if (!toPixelBuffer)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_50;
  }

  v18 = v17;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
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
    computeCommandEncoder = 0;
    v58 = 0;
    pixelBuffer = 0;
    v29 = 0;
    v52 = -12786;
    goto LABEL_60;
  }

  v21 = CMGetAttachment(buffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  v22 = v21;
  if (!v21)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_51;
  }

  v55 = boundsCopy;
  v23 = [v21 objectForKeyedSubscript:kFigCaptureStreamPreLTMThumbnailKey_Format];
  unsignedIntValue = [v23 unsignedIntValue];

  if (unsignedIntValue)
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
  if (infoCopy)
  {
    if (cCopy)
    {
      v25 = !cCopy;
      if ([CMIDistortionModel getGDCParams:v71 cameraInfo:infoCopy metadata:v59])
      {
        v25 = 1;
      }
    }
  }

  commandBuffer = [(FigMetalContext *)self->_metalContext commandBuffer];
  v27 = commandBuffer;
  if (commandBuffer)
  {
    computeCommandEncoder = [commandBuffer computeCommandEncoder];
    if (computeCommandEncoder && ([(FigMetalContext *)self->_metalContext bindPixelBufferToMTLBuffer:buffer], (v58 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v29 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:self->_preLTMLinearThumbnailPixelBuffer usage:3];
      if (v29)
      {
        v30 = vmovn_s64(vcvtq_s64_f64(v72));
        v70[1] = v30.i16[2];
        v70[0] = v30.i16[0];
        v68 = xmmword_143F0;
        v69 = 5 * v72.f64[0];
        [computeCommandEncoder setComputePipelineState:self->_extractThumbnailPipelineState];
        [computeCommandEncoder setBuffer:v58 offset:0 atIndex:0];
        [computeCommandEncoder setBytes:v70 length:4 atIndex:1];
        [computeCommandEncoder setBytes:&v68 length:20 atIndex:2];
        [computeCommandEncoder setTexture:v29 atIndex:0];
        [computeCommandEncoder setTexture:0 atIndex:1];
        width = [v29 width];
        height = [v29 height];
        v67 = 1;
        v63 = vdupq_n_s64(0x20uLL);
        v64 = 1;
        [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:&v63];
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

        pixelBuffer = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:pixelBuffer usage:1];
        if (pixelBuffer)
        {
          v43 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:toPixelBuffer usage:65543];
          if (v43)
          {
            v44 = v43;
            v60[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v61), v62);
            [computeCommandEncoder setImageblockWidth:32 height:32];
            if (v55)
            {
              v45 = 64;
              if (v25)
              {
                v45 = 56;
              }

              [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v45)];
              [computeCommandEncoder setTexture:v29 atIndex:0];
              v46 = computeCommandEncoder;
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

              [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v49)];
              [computeCommandEncoder setTexture:pixelBuffer atIndex:0];
              [computeCommandEncoder setTexture:v29 atIndex:1];
              v46 = computeCommandEncoder;
              v47 = v44;
              v48 = 2;
            }

            [v46 setTexture:v47 atIndex:v48];
            [computeCommandEncoder setBytes:v60 length:16 atIndex:0];
            [computeCommandEncoder setBytes:v70 length:4 atIndex:1];
            [computeCommandEncoder setBytes:v71 length:112 atIndex:2];
            width2 = [v44 width];
            height2 = [v44 height];
            width = width2;
            height = height2;
            v67 = 1;
            v63 = vdupq_n_s64(0x20uLL);
            v64 = 1;
            [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:&v63];
            [computeCommandEncoder endEncoding];
            [(FigMetalContext *)self->_metalContext commit];

            v52 = 0;
            goto LABEL_42;
          }
        }
      }

      else
      {
        pixelBuffer = 0;
      }
    }

    else
    {
      v58 = 0;
      pixelBuffer = 0;
      v29 = 0;
    }

    v52 = -12782;
  }

  else
  {
    if ([CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:preLTMThumbnailPixelBuffer:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:])
    {
      v52 = 0;
      computeCommandEncoder = 0;
      v58 = 0;
      pixelBuffer = 0;
      v29 = 0;
      goto LABEL_42;
    }

    v52 = width;
    computeCommandEncoder = 0;
    v58 = 0;
    pixelBuffer = 0;
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

- (int)createLinearThumbnailFromMetadata:(id)metadata postLTMThumbnailPixelBuffer:(__CVBuffer *)buffer cameraInfo:(id)info applyGDC:(BOOL)c cropToPreLTMBounds:(BOOL)bounds toPixelBuffer:(__CVBuffer *)pixelBuffer
{
  boundsCopy = bounds;
  cCopy = c;
  metadataCopy = metadata;
  infoCopy = info;
  v102[0] = kCVPixelBufferMetalCompatibilityKey;
  v102[1] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v103[0] = &__kCFBooleanTrue;
  v103[1] = &__kCFBooleanTrue;
  v102[2] = kCVPixelBufferIOSurfacePropertiesKey;
  v103[2] = &__NSDictionary0__struct;
  v14 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:3];
  v92 = v14;
  if (!metadataCopy)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
LABEL_72:
    pixelBuffer = 0;
LABEL_74:
    computeCommandEncoder = 0;
    v66 = 0;
    v17 = 0;
LABEL_76:
    v91 = 0;
LABEL_86:
    x_low = -12780;
    goto LABEL_93;
  }

  if (!buffer)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_72;
  }

  if (!pixelBuffer)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_74;
  }

  v15 = v14;
  v16 = [metadataCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_LTMThumbnail];
  v17 = v16;
  if (!v16)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    pixelBuffer = 0;
    computeCommandEncoder = 0;
    v66 = 0;
    goto LABEL_76;
  }

  bytes = [v16 bytes];
  computeCommandEncoder = bytes;
  v91 = v17;
  if (!bytes)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    pixelBuffer = 0;
LABEL_85:
    v66 = 0;
    v17 = 0;
    goto LABEL_86;
  }

  v20 = bytes[4];
  if (v20 >= 0x81)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
LABEL_84:
    pixelBuffer = 0;
    computeCommandEncoder = 0;
    goto LABEL_85;
  }

  bufferCopy = buffer;
  v21 = bytes[5];
  if (v21 >= 0xC1)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_84;
  }

  v22 = *(bytes + 1);
  if ([v17 length] != v22)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_84;
  }

  if (*(computeCommandEncoder + 48) == -1)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_84;
  }

  if (*(computeCommandEncoder + 50) == -1)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_84;
  }

  if (*(computeCommandEncoder + 52) == -1)
  {
    [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
    goto LABEL_84;
  }

  pixelBufferCopy = pixelBuffer;
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
        v88 = boundsCopy;
        v93 = metadataCopy;
        v27 = *(computeCommandEncoder + 48);
        v28 = *(computeCommandEncoder + 50);
        v29 = *(computeCommandEncoder + 52);
        v30 = *(computeCommandEncoder + 12);
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
              v36 = computeCommandEncoder + 62 + 2 * v32;
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
          selfCopy2 = self;
          metadataCopy = v93;
LABEL_39:
          [(CMISmartStyleProcessorUtilitiesV1 *)selfCopy2 _computeLinearThumbnailValidRegion:metadataCopy];
          v57 = v60;
          v56 = v61;
          v55 = v62;
          v54 = v63;
          goto LABEL_40;
        }

        size = CGRectNull.size;
        origin = CGRectNull.origin;
        v101 = size;
        metadataCopy = v93;
        if (FigCFDictionaryGetCGRectIfPresent())
        {
          v40 = *(computeCommandEncoder + 16);
          v41 = *(computeCommandEncoder + 24);
          v42 = *(computeCommandEncoder + 32);
          v43 = *(computeCommandEncoder + 40);
          v44 = [v93 objectForKeyedSubscript:kFigCaptureStreamMetadata_QuadraBinningFactor];
          intValue = [v44 intValue];

          x = origin.x;
          v47.f64[0] = v101.f64[0];
          if (intValue == 1 && v101.f64[0] == 8448.0)
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

          v58 = (*(computeCommandEncoder + 16) + *(computeCommandEncoder + 32) * 0.5) - (x + v47.f64[0] * 0.5);
          if (v58 < 0)
          {
            v58 = (x + v47.f64[0] * 0.5) - (*(computeCommandEncoder + 16) + *(computeCommandEncoder + 32) * 0.5);
          }

          if (v47.f64[0] / 10.0 < v58)
          {
            goto LABEL_38;
          }

          v59 = (*(computeCommandEncoder + 24) + *(computeCommandEncoder + 40) * 0.5) - (y + v101.f64[1] * 0.5);
          if (v59 < 0)
          {
            v59 = (y + v101.f64[1] * 0.5) - (*(computeCommandEncoder + 24) + *(computeCommandEncoder + 40) * 0.5);
          }

          if (v101.f64[1] / 10.0 < v59)
          {
LABEL_38:
            selfCopy2 = self;
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
        if (infoCopy)
        {
          if (cCopy)
          {
            v64 = !cCopy;
            if ([CMIDistortionModel getGDCParams:v99 cameraInfo:infoCopy metadata:metadataCopy])
            {
              v64 = 1;
            }
          }
        }

        commandBuffer = [(FigMetalContext *)self->_metalContext commandBuffer];
        pixelBuffer = commandBuffer;
        if (!commandBuffer)
        {
          if ([CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:])
          {
            x_low = 0;
            computeCommandEncoder = 0;
            v66 = 0;
            v17 = 0;
            goto LABEL_57;
          }

          x_low = LODWORD(origin.x);
          computeCommandEncoder = 0;
          v66 = 0;
          v17 = 0;
          goto LABEL_93;
        }

        computeCommandEncoder = [(__CVBuffer *)commandBuffer computeCommandEncoder];
        if (computeCommandEncoder)
        {
          v66 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:bufferCopy usage:1];
          if (v66)
          {
            v17 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:self->_preLTMLinearMetadataThumbnailPixelBuffer usage:1];
            if (v17)
            {
              v67 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:pixelBufferCopy usage:65538];
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

                  [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v73)];
                  [computeCommandEncoder setTexture:v17 atIndex:0];
                  [computeCommandEncoder setTexture:v68 atIndex:1];
                  [computeCommandEncoder setBytes:&v97 length:16 atIndex:0];
                  [computeCommandEncoder setBytes:v98 length:4 atIndex:1];
                  [computeCommandEncoder setBytes:v99 length:112 atIndex:2];
                  width = [v68 width];
                  height = [v68 height];
                  *&origin.x = width;
                  *&origin.y = height;
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

                  [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v77)];
                  [computeCommandEncoder setTexture:v66 atIndex:0];
                  [computeCommandEncoder setTexture:v17 atIndex:1];
                  [computeCommandEncoder setTexture:v68 atIndex:2];
                  [computeCommandEncoder setBytes:&v97 length:16 atIndex:0];
                  [computeCommandEncoder setBytes:v98 length:4 atIndex:1];
                  [computeCommandEncoder setBytes:v99 length:112 atIndex:2];
                  [computeCommandEncoder setImageblockWidth:32 height:32];
                  width2 = [v68 width];
                  height2 = [v68 height];
                  *&origin.x = width2;
                  *&origin.y = height2;
                  *&v101.f64[0] = 1;
                  v76 = vdupq_n_s64(0x20uLL);
                  metadataCopy = v93;
                }

                v95 = v76;
                v96 = 1;
                [computeCommandEncoder dispatchThreads:&origin threadsPerThreadgroup:&v95];
                [computeCommandEncoder endEncoding];
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

    pixelBuffer = 0;
    computeCommandEncoder = 0;
    goto LABEL_90;
  }

  [CMISmartStyleProcessorUtilitiesV1 createLinearThumbnailFromMetadata:postLTMThumbnailPixelBuffer:cameraInfo:applyGDC:cropToPreLTMBounds:toPixelBuffer:];
  pixelBuffer = 0;
  computeCommandEncoder = 0;
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

- (__CVBuffer)createSingleChannelPixelBufferViewFromPixelBuffer:(__CVBuffer *)buffer
{
  [(CMISmartStyleProcessorUtilitiesV1 *)self _getComponentCountOfFormat:CVPixelBufferGetPixelFormatType(buffer)];
  v5 = 0;
  CVPixelBufferGetBytesPerRow(buffer);
  CVPixelBufferGetWidth(buffer);
  CVPixelBufferGetHeight(buffer);
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

- (int)enqueueCoefficientsForFiltering:(__CVBuffer *)filtering withMetadata:(id)metadata pts:(id *)pts learnedStyle:(id)style
{
  coefficientsProcessor = self->_coefficientsProcessor;
  v8 = *pts;
  return [(CMIStyleEngineCoefficientsProcessor *)coefficientsProcessor enqueueCoefficientsForFiltering:filtering withMetadata:metadata pts:&v8 learnedStyle:style];
}

- (int)filterCoefficientsForFrameWithMetadata:(id)metadata pts:(id *)pts filterType:(unint64_t)type toPixelBuffer:(__CVBuffer *)buffer
{
  coefficientsProcessor = self->_coefficientsProcessor;
  v8 = *pts;
  return [(CMIStyleEngineCoefficientsProcessor *)coefficientsProcessor filterCoefficientsForFrameWithMetadata:metadata pts:&v8 filterType:type toPixelBuffer:buffer];
}

- (int)filterCoefficientsForFrameWithMetadata:(id)metadata pts:(id *)pts filterType:(unint64_t)type toPixelBuffer:(__CVBuffer *)buffer toGlobalRemixFactor:(float *)factor
{
  coefficientsProcessor = self->_coefficientsProcessor;
  v9 = *pts;
  return [(CMIStyleEngineCoefficientsProcessor *)coefficientsProcessor filterCoefficientsForFrameWithMetadata:metadata pts:&v9 filterType:type toPixelBuffer:buffer toGlobalRemixFactor:factor];
}

- (CGRect)_computeLinearThumbnailValidRegion:(id)region
{
  regionCopy = region;
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

  v4 = [regionCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_RawSensorWidth];
  unsignedIntValue = [v4 unsignedIntValue];

  if (!unsignedIntValue)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:];
    goto LABEL_62;
  }

  v6 = [regionCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_RawSensorHeight];
  unsignedIntValue2 = [v6 unsignedIntValue];

  if (!unsignedIntValue2)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:];
    goto LABEL_62;
  }

  v8 = [regionCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_QuadraBinningFactor];
  intValue = [v8 intValue];

  if (intValue == 1 && unsignedIntValue >= 0x1081)
  {
    __asm { FMOV            V0.2D, #0.5 }

    origin = vmulq_f64(origin, _Q0);
    size = vmulq_f64(size, _Q0);
    unsignedIntValue >>= 1;
    unsignedIntValue2 >>= 1;
  }

  v15 = [regionCopy objectForKeyedSubscript:{kFigCaptureStreamMetadata_LocalHistogramClippingData, *&origin.x}];
  if (!v15)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:];
    goto LABEL_62;
  }

  v16 = v15;
  bytes = [v15 bytes];
  if (!*bytes)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  v18 = bytes;
  if (bytes[1] <= 0x2Bu)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  bytes2 = [v16 bytes];
  if (!bytes2)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  if (bytes2[19] == -1)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  if (bytes2[17] == -1)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  if (bytes2[20] != -1)
  {
    ++v20;
  }

  if (bytes2[21] != -1)
  {
    ++v20;
  }

  v21 = bytes2[10];
  v22 = bytes2[11];
  if (2 * (v21 * v22 * v20) + 44 != v18[1])
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  v23 = bytes2[4];
  if (v23 < 0)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  y = bytes2[5];
  if (y < 0)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  v25 = v23 + (bytes2[6] - bytes2[8] + bytes2[8] * v21);
  if (v25 > unsignedIntValue)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  v26 = y + (bytes2[7] - bytes2[9] + bytes2[9] * v22);
  if (v26 > unsignedIntValue2)
  {
    [CMISmartStyleProcessorUtilitiesV1 _computeLinearThumbnailValidRegion:v16];
    goto LABEL_62;
  }

  v27 = v25 - 1;
  v28 = v26 - 1;
  if (v40 > bytes2[4])
  {
    v23 = v40;
  }

  if (origin.y > bytes2[5])
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

- (unsigned)_getComponentCountOfFormat:(unsigned int)format
{
  if (format > 927150389)
  {
    if (format <= 1278226741)
    {
      switch(format)
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

    if (format == 1278226742)
    {
      return 1;
    }

    if (format != 1815361650)
    {
      if (format == 1815491698)
      {
        return 4;
      }

      return 0;
    }

    return 3;
  }

  if (format <= 876818741)
  {
    if (format == 843264310)
    {
      return 2;
    }

    if (format != 860041526)
    {
      return 0;
    }

    return 3;
  }

  switch(format)
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

- (CMISmartStyleProcessorUtilitiesV1)initWithStyleEngine:(id)engine temporalFilterBufferSize:(int)size withMetalContext:(id)context
{
  engineCopy = engine;
  contextCopy = context;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v25.receiver = self;
  v25.super_class = CMISmartStyleProcessorUtilitiesV1;
  v12 = [(CMISmartStyleProcessorUtilitiesV1 *)&v25 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_13;
  }

  if (!contextCopy)
  {
    goto LABEL_13;
  }

  objc_storeStrong(&v12->_metalContext, context);
  if (!CFPreferenceNumberWithDefault)
  {
    if (!engineCopy)
    {
      goto LABEL_13;
    }

    objc_storeStrong(&v13->_styleEngineProcessor, engine);
    v14 = [CMIStyleEngineCoefficientsProcessor alloc];
    commandQueue = [contextCopy commandQueue];
    v16 = [v14 initWithBufferCount:size coefficientsSynchronization:1 andOptionalMetalCommandQueue:commandQueue];
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
  device = [(FigMetalContext *)v13->_metalContext device];
  v20 = CVMetalTextureCacheCreate(kCFAllocatorDefault, v18, device, 0, &v13->_cvMetalTextureCacheRef);

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

- (int)runFPRejectionOnMask:(__CVBuffer *)mask originalMask:(__CVBuffer *)originalMask
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
  v10 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:mask usage:23];
  if (v10)
  {
    v11 = [(CMISmartStyleProcessorUtilitiesV1 *)self _cachedTexturesFromPixelBuffer:originalMask usage:17];
    if (v11)
    {
      v12 = v11;
      width = [v10 width];
      if (width == [v12 width])
      {
        height = [v10 height];
        if (height == [v12 height])
        {
          commandBuffer = [(FigMetalContext *)self->_metalContext commandBuffer];
          if (commandBuffer)
          {
            v16 = commandBuffer;
            computeCommandEncoder = [commandBuffer computeCommandEncoder];
            if (!computeCommandEncoder)
            {
              FigDebugAssert3();
              OUTLINED_FUNCTION_3();
              v19 = FigSignalErrorAtGM();

              v18 = 0;
              goto LABEL_10;
            }

            v18 = computeCommandEncoder;
            [computeCommandEncoder setComputePipelineState:self->_maskFalsePositiveRejectionPipelineState];
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

- (id)_cachedTexturesFromPixelBuffer:(__CVBuffer *)buffer usage:(unint64_t)usage
{
  bufferCopy = buffer;
  image = 0;
  v19 = 1;
  v18 = 0;
  if (buffer)
  {
    CVPixelBufferGetPixelFormatType(buffer);
    v7 = CMIGetMetalPixelFormatForPixelBuffer();
    if (v7)
    {
      v8 = v7;
      Width = CVPixelBufferGetWidth(bufferCopy);
      Height = CVPixelBufferGetHeight(bufferCopy);
      v16 = kCVMetalTextureUsage;
      v11 = [NSNumber numberWithUnsignedInteger:usage];
      v17 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];

      v13 = CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, self->_cvMetalTextureCacheRef, bufferCopy, v12, v8, Width, Height, 0, &image);
      v14 = image;
      if (!v13)
      {
        bufferCopy = CVMetalTextureGetTexture(image);
        v14 = image;
        if (!image)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      bufferCopy = 0;
      if (image)
      {
LABEL_5:
        CFRelease(v14);
      }
    }

    else
    {
      v12 = 0;
      bufferCopy = 0;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_6:

  return bufferCopy;
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
  *self = result;
  return result;
}

@end