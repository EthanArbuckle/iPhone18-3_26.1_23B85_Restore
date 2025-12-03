@interface CMISmartStyleOvercaptureThumbnailGenerator
- (CMISmartStyleOvercaptureThumbnailGenerator)initWithOptionalCommandQueue:(id)queue;
- (id)_bindPixelBufferToMTL2DTexture:(__CVBuffer *)texture pixelFormat:(unint64_t)format usage:(unint64_t)usage plane:(unsigned int)plane;
- (int)_compileShaders;
- (uint64_t)generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:(float64_t)buffer stitcherOutputPixelBuffer:(__n128)pixelBuffer outputOvercaptureIntegrationThumbnailPixelBuffer:(float64_t)thumbnailPixelBuffer primaryCaptureRect:(float64_t)rect inputCropRectWithinPrimaryCaptureRect:(float64_t)captureRect affineTransformForPreviewThumbnailPixelBuffer:(float64_t)previewThumbnailPixelBuffer optionalCommandBuffer:(float64_t)commandBuffer;
- (void)dealloc;
@end

@implementation CMISmartStyleOvercaptureThumbnailGenerator

- (CMISmartStyleOvercaptureThumbnailGenerator)initWithOptionalCommandQueue:(id)queue
{
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = CMISmartStyleOvercaptureThumbnailGenerator;
  v5 = [(CMISmartStyleOvercaptureThumbnailGenerator *)&v18 init];
  if (!v5)
  {
    [CMISmartStyleOvercaptureThumbnailGenerator initWithOptionalCommandQueue:];
    goto LABEL_18;
  }

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  if (!v6)
  {
    [CMISmartStyleOvercaptureThumbnailGenerator initWithOptionalCommandQueue:];
    goto LABEL_18;
  }

  v7 = v6;
  v8 = [[FigMetalContext alloc] initWithbundle:v6 andOptionalCommandQueue:queueCopy];
  metalContext = v5->_metalContext;
  v5->_metalContext = v8;

  if (!v5->_metalContext)
  {
    [CMISmartStyleOvercaptureThumbnailGenerator initWithOptionalCommandQueue:v7];
    goto LABEL_18;
  }

  _compileShaders = [(CMISmartStyleOvercaptureThumbnailGenerator *)v5 _compileShaders];
  if (_compileShaders)
  {
    [(CMISmartStyleOvercaptureThumbnailGenerator *)_compileShaders initWithOptionalCommandQueue:v7];
    goto LABEL_18;
  }

  if (!v5->_cvMetalTextureCacheRef)
  {
    v16 = kCVMetalTextureCacheMaximumTextureAgeKey;
    v17 = &off_20968;
    v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    device = [(FigMetalContext *)v5->_metalContext device];
    v13 = CVMetalTextureCacheCreate(kCFAllocatorDefault, v11, device, 0, &v5->_cvMetalTextureCacheRef);

    if (v13)
    {
      [CMISmartStyleOvercaptureThumbnailGenerator initWithOptionalCommandQueue:];
    }

    else
    {
      if (v5->_cvMetalTextureCacheRef)
      {

        goto LABEL_9;
      }

      [CMISmartStyleOvercaptureThumbnailGenerator initWithOptionalCommandQueue:];
    }

LABEL_18:
    v14 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v14 = v5;

LABEL_10:
  return v14;
}

- (void)dealloc
{
  cvMetalTextureCacheRef = self->_cvMetalTextureCacheRef;
  if (cvMetalTextureCacheRef)
  {
    CVMetalTextureCacheFlush(cvMetalTextureCacheRef, 0);
    v4 = self->_cvMetalTextureCacheRef;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  v5.receiver = self;
  v5.super_class = CMISmartStyleOvercaptureThumbnailGenerator;
  [(CMISmartStyleOvercaptureThumbnailGenerator *)&v5 dealloc];
}

- (uint64_t)generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:(float64_t)buffer stitcherOutputPixelBuffer:(__n128)pixelBuffer outputOvercaptureIntegrationThumbnailPixelBuffer:(float64_t)thumbnailPixelBuffer primaryCaptureRect:(float64_t)rect inputCropRectWithinPrimaryCaptureRect:(float64_t)captureRect affineTransformForPreviewThumbnailPixelBuffer:(float64_t)previewThumbnailPixelBuffer optionalCommandBuffer:(float64_t)commandBuffer
{
  v51[0] = a17;
  v51[1] = a18;
  v51[2] = a19;
  v23 = a14;
  *&v24.f64[0] = pixelBuffer.n128_u64[0];
  v24.f64[1] = thumbnailPixelBuffer;
  v25.f64[0] = a2;
  v25.f64[1] = buffer;
  v26 = vcvt_hight_f32_f64(vcvt_f32_f64(v25), v24);
  v25.f64[0] = previewThumbnailPixelBuffer;
  v25.f64[1] = commandBuffer;
  v27.f64[0] = rect;
  v27.f64[1] = captureRect;
  v50[0] = v26;
  v50[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v27), v25);
  v28 = [self _metalPixelFormatForPixelbuffer:a11];
  if (!v28)
  {
    [CMISmartStyleOvercaptureThumbnailGenerator generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:v49 stitcherOutputPixelBuffer:? outputOvercaptureIntegrationThumbnailPixelBuffer:? primaryCaptureRect:? inputCropRectWithinPrimaryCaptureRect:? affineTransformForPreviewThumbnailPixelBuffer:? optionalCommandBuffer:?];
    computeCommandEncoder = 0;
LABEL_15:
    commandBuffer = 0;
    v32 = 0;
LABEL_18:
    v33 = 0;
LABEL_20:
    v31 = 0;
    goto LABEL_21;
  }

  v29 = v28;
  computeCommandEncoder = [self _metalPixelFormatForPixelbuffer:a12];
  if (!computeCommandEncoder)
  {
    [CMISmartStyleOvercaptureThumbnailGenerator generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:v49 stitcherOutputPixelBuffer:? outputOvercaptureIntegrationThumbnailPixelBuffer:? primaryCaptureRect:? inputCropRectWithinPrimaryCaptureRect:? affineTransformForPreviewThumbnailPixelBuffer:? optionalCommandBuffer:?];
    goto LABEL_15;
  }

  v31 = [self _metalPixelFormatForPixelbuffer:a13];
  if (!v31)
  {
    [CMISmartStyleOvercaptureThumbnailGenerator generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:v49 stitcherOutputPixelBuffer:? outputOvercaptureIntegrationThumbnailPixelBuffer:? primaryCaptureRect:? inputCropRectWithinPrimaryCaptureRect:? affineTransformForPreviewThumbnailPixelBuffer:? optionalCommandBuffer:?];
    computeCommandEncoder = 0;
    commandBuffer = 0;
    v32 = 0;
    v33 = 0;
LABEL_21:
    v37 = LODWORD(v49[0]);
    goto LABEL_12;
  }

  v32 = [self _bindPixelBufferToMTL2DTexture:a11 pixelFormat:v29 usage:1 plane:0];
  if (!v32)
  {
    [CMISmartStyleOvercaptureThumbnailGenerator generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:v49 stitcherOutputPixelBuffer:? outputOvercaptureIntegrationThumbnailPixelBuffer:? primaryCaptureRect:? inputCropRectWithinPrimaryCaptureRect:? affineTransformForPreviewThumbnailPixelBuffer:? optionalCommandBuffer:?];
    computeCommandEncoder = 0;
    commandBuffer = 0;
    goto LABEL_18;
  }

  v33 = [self _bindPixelBufferToMTL2DTexture:a12 pixelFormat:computeCommandEncoder usage:1 plane:0];
  if (!v33)
  {
    [CMISmartStyleOvercaptureThumbnailGenerator generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:v49 stitcherOutputPixelBuffer:? outputOvercaptureIntegrationThumbnailPixelBuffer:? primaryCaptureRect:? inputCropRectWithinPrimaryCaptureRect:? affineTransformForPreviewThumbnailPixelBuffer:? optionalCommandBuffer:?];
    computeCommandEncoder = 0;
    commandBuffer = 0;
    goto LABEL_20;
  }

  v31 = [self _bindPixelBufferToMTL2DTexture:a13 pixelFormat:v31 usage:6 plane:0];
  if (!v31)
  {
    [CMISmartStyleOvercaptureThumbnailGenerator generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:v49 stitcherOutputPixelBuffer:? outputOvercaptureIntegrationThumbnailPixelBuffer:? primaryCaptureRect:? inputCropRectWithinPrimaryCaptureRect:? affineTransformForPreviewThumbnailPixelBuffer:? optionalCommandBuffer:?];
    computeCommandEncoder = 0;
    commandBuffer = 0;
    goto LABEL_21;
  }

  v34 = v23;
  commandBuffer = v34;
  if (!v34)
  {
    commandQueue = [*(self + 8) commandQueue];
    commandBuffer = [commandQueue commandBuffer];

    if (!commandBuffer)
    {
      [CMISmartStyleOvercaptureThumbnailGenerator generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:v49 stitcherOutputPixelBuffer:? outputOvercaptureIntegrationThumbnailPixelBuffer:? primaryCaptureRect:? inputCropRectWithinPrimaryCaptureRect:? affineTransformForPreviewThumbnailPixelBuffer:? optionalCommandBuffer:?];
      computeCommandEncoder = 0;
      goto LABEL_21;
    }
  }

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setImageblockWidth:32 height:32];
  [computeCommandEncoder setComputePipelineState:*(self + 24)];
  [computeCommandEncoder setTexture:v32 atIndex:0];
  [computeCommandEncoder setTexture:v33 atIndex:1];
  [computeCommandEncoder setTexture:v31 atIndex:2];
  [computeCommandEncoder setBytes:v50 length:32 atIndex:0];
  [computeCommandEncoder setBytes:v51 length:48 atIndex:1];
  v49[0] = [v31 width];
  v49[1] = [v31 height];
  v49[2] = 1;
  v47 = vdupq_n_s64(0x20uLL);
  v48 = 1;
  [computeCommandEncoder dispatchThreads:v49 threadsPerThreadgroup:&v47];
  [computeCommandEncoder endEncoding];
  if (!v34)
  {
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
  }

  v37 = 0;
LABEL_12:

  return v37;
}

- (int)_compileShaders
{
  v3 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"generateOvercaptureIntegrationThumbnailKernel" constants:0];
  generateOvercaptureIntegrationThumbnailKernel = self->_generateOvercaptureIntegrationThumbnailKernel;
  self->_generateOvercaptureIntegrationThumbnailKernel = v3;

  if (self->_generateOvercaptureIntegrationThumbnailKernel)
  {
    return 0;
  }

  [CMISmartStyleOvercaptureThumbnailGenerator _compileShaders];
  return -12786;
}

- (id)_bindPixelBufferToMTL2DTexture:(__CVBuffer *)texture pixelFormat:(unint64_t)format usage:(unint64_t)usage plane:(unsigned int)plane
{
  image = 0;
  cvMetalTextureCacheRef = self->_cvMetalTextureCacheRef;
  v17 = kCVMetalTextureUsage;
  v10 = [NSNumber numberWithUnsignedInteger:usage];
  v18 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  Width = CVPixelBufferGetWidth(texture);
  Height = CVPixelBufferGetHeight(texture);
  v14 = CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, cvMetalTextureCacheRef, texture, v11, format, Width, Height, plane, &image);

  if (v14)
  {
    [CMISmartStyleOvercaptureThumbnailGenerator _bindPixelBufferToMTL2DTexture:pixelFormat:usage:plane:];
    v15 = 0;
  }

  else
  {
    v15 = CVMetalTextureGetTexture(image);
    if (!v15)
    {
      [CMISmartStyleOvercaptureThumbnailGenerator _bindPixelBufferToMTL2DTexture:pixelFormat:usage:plane:];
    }
  }

  if (image)
  {
    CFRelease(image);
    image = 0;
  }

  return v15;
}

- (void)initWithOptionalCommandQueue:(void *)a1 .cold.4(void *a1)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (uint64_t)generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:(_DWORD *)a1 stitcherOutputPixelBuffer:outputOvercaptureIntegrationThumbnailPixelBuffer:primaryCaptureRect:inputCropRectWithinPrimaryCaptureRect:affineTransformForPreviewThumbnailPixelBuffer:optionalCommandBuffer:.cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:(_DWORD *)a1 stitcherOutputPixelBuffer:outputOvercaptureIntegrationThumbnailPixelBuffer:primaryCaptureRect:inputCropRectWithinPrimaryCaptureRect:affineTransformForPreviewThumbnailPixelBuffer:optionalCommandBuffer:.cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:(_DWORD *)a1 stitcherOutputPixelBuffer:outputOvercaptureIntegrationThumbnailPixelBuffer:primaryCaptureRect:inputCropRectWithinPrimaryCaptureRect:affineTransformForPreviewThumbnailPixelBuffer:optionalCommandBuffer:.cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:(_DWORD *)a1 stitcherOutputPixelBuffer:outputOvercaptureIntegrationThumbnailPixelBuffer:primaryCaptureRect:inputCropRectWithinPrimaryCaptureRect:affineTransformForPreviewThumbnailPixelBuffer:optionalCommandBuffer:.cold.4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:(_DWORD *)a1 stitcherOutputPixelBuffer:outputOvercaptureIntegrationThumbnailPixelBuffer:primaryCaptureRect:inputCropRectWithinPrimaryCaptureRect:affineTransformForPreviewThumbnailPixelBuffer:optionalCommandBuffer:.cold.5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:(_DWORD *)a1 stitcherOutputPixelBuffer:outputOvercaptureIntegrationThumbnailPixelBuffer:primaryCaptureRect:inputCropRectWithinPrimaryCaptureRect:affineTransformForPreviewThumbnailPixelBuffer:optionalCommandBuffer:.cold.6(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:(_DWORD *)a1 stitcherOutputPixelBuffer:outputOvercaptureIntegrationThumbnailPixelBuffer:primaryCaptureRect:inputCropRectWithinPrimaryCaptureRect:affineTransformForPreviewThumbnailPixelBuffer:optionalCommandBuffer:.cold.7(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end