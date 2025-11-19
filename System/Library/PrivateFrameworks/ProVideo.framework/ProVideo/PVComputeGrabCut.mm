@interface PVComputeGrabCut
- (BOOL)processImage:(id)a3 trimap:(id)a4 roi:(CGRect)a5 clusters:(int)a6 gamma:(float)a7 iterations:(int)a8 mask:(id)a9;
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

- (BOOL)processImage:(id)a3 trimap:(id)a4 roi:(CGRect)a5 clusters:(int)a6 gamma:(float)a7 iterations:(int)a8 mask:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a9;
  v18 = [v15 cvPixelBuffer];
  PixelFormatType = CVPixelBufferGetPixelFormatType(v18);
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

  HGCVBitmap::create(v18, v20, 0, &v28);
  v21 = [v16 cvPixelBuffer];
  if (CVPixelBufferGetPixelFormatType(v21) == 1278226488)
  {
    v22 = 1;
  }

  else
  {
    NSLog(&cfstr_ErrorTripmapPi.isa);
    v22 = 0;
  }

  HGCVBitmap::create(v21, v22, 0, &v27);
  v23 = [v17 cvPixelBuffer];
  if (CVPixelBufferGetPixelFormatType(v23) == 1278226488)
  {
    v24 = 1;
  }

  else
  {
    NSLog(&cfstr_ErrorMaskPixel.isa);
    v24 = 0;
  }

  HGCVBitmap::create(v23, v24, 0, &v26);
  HGCVBitmap::lock(v28, 1uLL);
  HGCVBitmap::lock(v27, 0);
  HGCVBitmap::lock(v26, 0);
  HFGrabCutInterface::InitDataModels(self->_module, v28, v27, a6);
  HFGrabCutInterface::GenerateMask(self->_module, v28, v27, v26, a7, a8);
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