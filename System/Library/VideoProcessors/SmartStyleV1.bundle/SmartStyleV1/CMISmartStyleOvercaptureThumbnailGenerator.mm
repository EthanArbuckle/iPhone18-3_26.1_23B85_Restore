@interface CMISmartStyleOvercaptureThumbnailGenerator
- (CMISmartStyleOvercaptureThumbnailGenerator)initWithOptionalCommandQueue:(id)a3;
- (id)_bindPixelBufferToMTL2DTexture:(__CVBuffer *)a3 pixelFormat:(unint64_t)a4 usage:(unint64_t)a5 plane:(unsigned int)a6;
- (int)_compileShaders;
- (uint64_t)generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:(float64_t)a3 stitcherOutputPixelBuffer:(__n128)a4 outputOvercaptureIntegrationThumbnailPixelBuffer:(float64_t)a5 primaryCaptureRect:(float64_t)a6 inputCropRectWithinPrimaryCaptureRect:(float64_t)a7 affineTransformForPreviewThumbnailPixelBuffer:(float64_t)a8 optionalCommandBuffer:(float64_t)a9;
- (void)dealloc;
@end

@implementation CMISmartStyleOvercaptureThumbnailGenerator

- (CMISmartStyleOvercaptureThumbnailGenerator)initWithOptionalCommandQueue:(id)a3
{
  v4 = a3;
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
  v8 = [[FigMetalContext alloc] initWithbundle:v6 andOptionalCommandQueue:v4];
  metalContext = v5->_metalContext;
  v5->_metalContext = v8;

  if (!v5->_metalContext)
  {
    [CMISmartStyleOvercaptureThumbnailGenerator initWithOptionalCommandQueue:v7];
    goto LABEL_18;
  }

  v10 = [(CMISmartStyleOvercaptureThumbnailGenerator *)v5 _compileShaders];
  if (v10)
  {
    [(CMISmartStyleOvercaptureThumbnailGenerator *)v10 initWithOptionalCommandQueue:v7];
    goto LABEL_18;
  }

  if (!v5->_cvMetalTextureCacheRef)
  {
    v16 = kCVMetalTextureCacheMaximumTextureAgeKey;
    v17 = &off_20968;
    v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v12 = [(FigMetalContext *)v5->_metalContext device];
    v13 = CVMetalTextureCacheCreate(kCFAllocatorDefault, v11, v12, 0, &v5->_cvMetalTextureCacheRef);

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

- (uint64_t)generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:(float64_t)a3 stitcherOutputPixelBuffer:(__n128)a4 outputOvercaptureIntegrationThumbnailPixelBuffer:(float64_t)a5 primaryCaptureRect:(float64_t)a6 inputCropRectWithinPrimaryCaptureRect:(float64_t)a7 affineTransformForPreviewThumbnailPixelBuffer:(float64_t)a8 optionalCommandBuffer:(float64_t)a9
{
  v51[0] = a17;
  v51[1] = a18;
  v51[2] = a19;
  v23 = a14;
  *&v24.f64[0] = a4.n128_u64[0];
  v24.f64[1] = a5;
  v25.f64[0] = a2;
  v25.f64[1] = a3;
  v26 = vcvt_hight_f32_f64(vcvt_f32_f64(v25), v24);
  v25.f64[0] = a8;
  v25.f64[1] = a9;
  v27.f64[0] = a6;
  v27.f64[1] = a7;
  v50[0] = v26;
  v50[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v27), v25);
  v28 = [a1 _metalPixelFormatForPixelbuffer:a11];
  if (!v28)
  {
    [CMISmartStyleOvercaptureThumbnailGenerator generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:v49 stitcherOutputPixelBuffer:? outputOvercaptureIntegrationThumbnailPixelBuffer:? primaryCaptureRect:? inputCropRectWithinPrimaryCaptureRect:? affineTransformForPreviewThumbnailPixelBuffer:? optionalCommandBuffer:?];
    v30 = 0;
LABEL_15:
    v35 = 0;
    v32 = 0;
LABEL_18:
    v33 = 0;
LABEL_20:
    v31 = 0;
    goto LABEL_21;
  }

  v29 = v28;
  v30 = [a1 _metalPixelFormatForPixelbuffer:a12];
  if (!v30)
  {
    [CMISmartStyleOvercaptureThumbnailGenerator generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:v49 stitcherOutputPixelBuffer:? outputOvercaptureIntegrationThumbnailPixelBuffer:? primaryCaptureRect:? inputCropRectWithinPrimaryCaptureRect:? affineTransformForPreviewThumbnailPixelBuffer:? optionalCommandBuffer:?];
    goto LABEL_15;
  }

  v31 = [a1 _metalPixelFormatForPixelbuffer:a13];
  if (!v31)
  {
    [CMISmartStyleOvercaptureThumbnailGenerator generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:v49 stitcherOutputPixelBuffer:? outputOvercaptureIntegrationThumbnailPixelBuffer:? primaryCaptureRect:? inputCropRectWithinPrimaryCaptureRect:? affineTransformForPreviewThumbnailPixelBuffer:? optionalCommandBuffer:?];
    v30 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
LABEL_21:
    v37 = LODWORD(v49[0]);
    goto LABEL_12;
  }

  v32 = [a1 _bindPixelBufferToMTL2DTexture:a11 pixelFormat:v29 usage:1 plane:0];
  if (!v32)
  {
    [CMISmartStyleOvercaptureThumbnailGenerator generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:v49 stitcherOutputPixelBuffer:? outputOvercaptureIntegrationThumbnailPixelBuffer:? primaryCaptureRect:? inputCropRectWithinPrimaryCaptureRect:? affineTransformForPreviewThumbnailPixelBuffer:? optionalCommandBuffer:?];
    v30 = 0;
    v35 = 0;
    goto LABEL_18;
  }

  v33 = [a1 _bindPixelBufferToMTL2DTexture:a12 pixelFormat:v30 usage:1 plane:0];
  if (!v33)
  {
    [CMISmartStyleOvercaptureThumbnailGenerator generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:v49 stitcherOutputPixelBuffer:? outputOvercaptureIntegrationThumbnailPixelBuffer:? primaryCaptureRect:? inputCropRectWithinPrimaryCaptureRect:? affineTransformForPreviewThumbnailPixelBuffer:? optionalCommandBuffer:?];
    v30 = 0;
    v35 = 0;
    goto LABEL_20;
  }

  v31 = [a1 _bindPixelBufferToMTL2DTexture:a13 pixelFormat:v31 usage:6 plane:0];
  if (!v31)
  {
    [CMISmartStyleOvercaptureThumbnailGenerator generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:v49 stitcherOutputPixelBuffer:? outputOvercaptureIntegrationThumbnailPixelBuffer:? primaryCaptureRect:? inputCropRectWithinPrimaryCaptureRect:? affineTransformForPreviewThumbnailPixelBuffer:? optionalCommandBuffer:?];
    v30 = 0;
    v35 = 0;
    goto LABEL_21;
  }

  v34 = v23;
  v35 = v34;
  if (!v34)
  {
    v36 = [*(a1 + 8) commandQueue];
    v35 = [v36 commandBuffer];

    if (!v35)
    {
      [CMISmartStyleOvercaptureThumbnailGenerator generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:v49 stitcherOutputPixelBuffer:? outputOvercaptureIntegrationThumbnailPixelBuffer:? primaryCaptureRect:? inputCropRectWithinPrimaryCaptureRect:? affineTransformForPreviewThumbnailPixelBuffer:? optionalCommandBuffer:?];
      v30 = 0;
      goto LABEL_21;
    }
  }

  v30 = [v35 computeCommandEncoder];
  [v30 setImageblockWidth:32 height:32];
  [v30 setComputePipelineState:*(a1 + 24)];
  [v30 setTexture:v32 atIndex:0];
  [v30 setTexture:v33 atIndex:1];
  [v30 setTexture:v31 atIndex:2];
  [v30 setBytes:v50 length:32 atIndex:0];
  [v30 setBytes:v51 length:48 atIndex:1];
  v49[0] = [v31 width];
  v49[1] = [v31 height];
  v49[2] = 1;
  v47 = vdupq_n_s64(0x20uLL);
  v48 = 1;
  [v30 dispatchThreads:v49 threadsPerThreadgroup:&v47];
  [v30 endEncoding];
  if (!v34)
  {
    [v35 commit];
    [v35 waitUntilCompleted];
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

- (id)_bindPixelBufferToMTL2DTexture:(__CVBuffer *)a3 pixelFormat:(unint64_t)a4 usage:(unint64_t)a5 plane:(unsigned int)a6
{
  image = 0;
  cvMetalTextureCacheRef = self->_cvMetalTextureCacheRef;
  v17 = kCVMetalTextureUsage;
  v10 = [NSNumber numberWithUnsignedInteger:a5];
  v18 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v14 = CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, cvMetalTextureCacheRef, a3, v11, a4, Width, Height, a6, &image);

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