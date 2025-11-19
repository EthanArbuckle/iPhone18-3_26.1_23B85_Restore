@interface VEFrameOpticalFlow
- (VEFrameOpticalFlow)initWithForwardFlow:(__CVBuffer *)a3 backwardFlow:(__CVBuffer *)a4;
- (void)dealloc;
@end

@implementation VEFrameOpticalFlow

- (void)dealloc
{
  CVPixelBufferRelease(self->_forwardFlow);
  CVPixelBufferRelease(self->_backwardFlow);
  v3.receiver = self;
  v3.super_class = VEFrameOpticalFlow;
  [(VEFrameOpticalFlow *)&v3 dealloc];
}

- (VEFrameOpticalFlow)initWithForwardFlow:(__CVBuffer *)a3 backwardFlow:(__CVBuffer *)a4
{
  v10.receiver = self;
  v10.super_class = VEFrameOpticalFlow;
  v6 = [(VEFrameOpticalFlow *)&v10 init];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = 0;
  if (a3 && a4)
  {
    if (!CVPixelBufferGetIOSurface(a3) || !CVPixelBufferGetIOSurface(a4))
    {
      v7 = 0;
      goto LABEL_9;
    }

    v6->_forwardFlow = CVPixelBufferRetain(a3);
    v8 = CVPixelBufferRetain(a4);
    v7 = 0;
    v6->_backwardFlow = v8;
    if (v6->_forwardFlow)
    {
      if (v8)
      {
LABEL_8:
        v7 = v6;
      }
    }
  }

LABEL_9:

  return v7;
}

@end