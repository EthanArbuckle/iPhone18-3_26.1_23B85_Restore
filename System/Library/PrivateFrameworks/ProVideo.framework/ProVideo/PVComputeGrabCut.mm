@interface PVComputeGrabCut
- (BOOL)processImage:(id)image trimap:(id)trimap roi:(CGRect)roi clusters:(int)clusters gamma:(float)gamma iterations:(int)iterations mask:(id)mask;
- (PVComputeGrabCut)init;
- (void)dealloc;
@end

@implementation PVComputeGrabCut

- (PVComputeGrabCut)init
{
  v3.receiver = self;
  v3.super_class = PVComputeGrabCut;
  if ([(PVComputeGrabCut *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  module = self->_module;
  if (module)
  {
    (*(module->var0 + 1))(module, a2);
  }

  v4.receiver = self;
  v4.super_class = PVComputeGrabCut;
  [(PVComputeGrabCut *)&v4 dealloc];
}

- (BOOL)processImage:(id)image trimap:(id)trimap roi:(CGRect)roi clusters:(int)clusters gamma:(float)gamma iterations:(int)iterations mask:(id)mask
{
  imageCopy = image;
  trimapCopy = trimap;
  maskCopy = mask;
  cvPixelBuffer = [imageCopy cvPixelBuffer];
  PixelFormatType = CVPixelBufferGetPixelFormatType(cvPixelBuffer);
  if (PixelFormatType == 1111970369)
  {
    v20 = 23;
  }

  else if (PixelFormatType == 1380401729)
  {
    v20 = 24;
  }

  else
  {
    NSLog(&cfstr_ErrorImagePixe.isa);
    v20 = 0;
  }

  HGCVBitmap::create(cvPixelBuffer, v20, 0, &v28);
  cvPixelBuffer2 = [trimapCopy cvPixelBuffer];
  if (CVPixelBufferGetPixelFormatType(cvPixelBuffer2) == 1278226488)
  {
    v22 = 1;
  }

  else
  {
    NSLog(&cfstr_ErrorTripmapPi.isa);
    v22 = 0;
  }

  HGCVBitmap::create(cvPixelBuffer2, v22, 0, &v27);
  cvPixelBuffer3 = [maskCopy cvPixelBuffer];
  if (CVPixelBufferGetPixelFormatType(cvPixelBuffer3) == 1278226488)
  {
    v24 = 1;
  }

  else
  {
    NSLog(&cfstr_ErrorMaskPixel.isa);
    v24 = 0;
  }

  HGCVBitmap::create(cvPixelBuffer3, v24, 0, &v26);
  HGCVBitmap::lock(v28, 1uLL);
  HGCVBitmap::lock(v27, 0);
  HGCVBitmap::lock(v26, 0);
  HFGrabCutInterface::InitDataModels(self->_module, v28, v27, clusters);
  HFGrabCutInterface::GenerateMask(self->_module, v28, v27, v26, gamma, iterations);
  HGCVBitmap::unlock(v28, 1uLL);
  HGCVBitmap::unlock(v27, 0);
  HGCVBitmap::unlock(v26, 0);
  if (v26)
  {
    (*(*v26 + 24))(v26);
  }

  if (v27)
  {
    (*(*v27 + 24))(v27);
  }

  if (v28)
  {
    (*(*v28 + 24))(v28);
  }

  return 1;
}

@end