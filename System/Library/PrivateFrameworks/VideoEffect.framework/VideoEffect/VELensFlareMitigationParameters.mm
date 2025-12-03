@interface VELensFlareMitigationParameters
- (CGPoint)nextFrameOpticalCenter;
- (CGPoint)sourceFrameOpticalCenter;
- (VELensFlareMitigationParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame opticalFlow:(id)flow sourceFrameOpticalCenter:(CGPoint)center nextFrameOpticalCenter:(CGPoint)opticalCenter opticalCenterShift:(double)shift previousOutputFrame:(id)outputFrame previousPreviousOutputFrame:(id)self0 submissionMode:(int64_t)self1 destinationFrame:(id)self2;
@end

@implementation VELensFlareMitigationParameters

- (VELensFlareMitigationParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame opticalFlow:(id)flow sourceFrameOpticalCenter:(CGPoint)center nextFrameOpticalCenter:(CGPoint)opticalCenter opticalCenterShift:(double)shift previousOutputFrame:(id)outputFrame previousPreviousOutputFrame:(id)self0 submissionMode:(int64_t)self1 destinationFrame:(id)self2
{
  y = opticalCenter.y;
  x = opticalCenter.x;
  v17 = center.y;
  v18 = center.x;
  frameCopy = frame;
  nextFrameCopy = nextFrame;
  flowCopy = flow;
  outputFrameCopy = outputFrame;
  previousOutputFrameCopy = previousOutputFrame;
  destinationFrameCopy = destinationFrame;
  v34.receiver = self;
  v34.super_class = VELensFlareMitigationParameters;
  v26 = [(VELensFlareMitigationParameters *)&v34 init];
  v27 = v26;
  if (!v26)
  {
    NSLog(&cfstr_FailToInitiali.isa, mode);
LABEL_7:
    v28 = 0;
    goto LABEL_4;
  }

  objc_storeStrong(&v26->_sourceFrame, frame);
  objc_storeStrong(&v27->_nextFrame, nextFrame);
  objc_storeStrong(&v27->_opticalFlow, flow);
  objc_storeStrong(&v27->_destinationFrame, destinationFrame);
  objc_storeStrong(&v27->_previousOutputFrame, outputFrame);
  objc_storeStrong(&v27->_previousPreviousOutputFrame, previousOutputFrame);
  v27->_sourceFrameOpticalCenter.x = v18;
  v27->_sourceFrameOpticalCenter.y = v17;
  v27->_nextFrameOpticalCenter.x = x;
  v27->_nextFrameOpticalCenter.y = y;
  v27->_opticalCenterShift = shift;
  v27->_submissionMode = mode;
  if (!isSameFormat([frameCopy buffer], objc_msgSend(nextFrameCopy, "buffer")))
  {
    NSLog(&cfstr_FailToToInitia_5.isa, mode);
    goto LABEL_7;
  }

  v28 = v27;
LABEL_4:

  return v28;
}

- (CGPoint)sourceFrameOpticalCenter
{
  x = self->_sourceFrameOpticalCenter.x;
  y = self->_sourceFrameOpticalCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)nextFrameOpticalCenter
{
  x = self->_nextFrameOpticalCenter.x;
  y = self->_nextFrameOpticalCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end