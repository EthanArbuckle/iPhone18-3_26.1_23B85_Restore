@interface VEMotionBlurParameters
- (VEMotionBlurParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame previousFrame:(id)previousFrame nextOpticalFlow:(id)flow previousOpticalFlow:(id)opticalFlow motionBlurStrength:(int64_t)strength submissionMode:(int64_t)mode destinationFrame:(id)self0;
@end

@implementation VEMotionBlurParameters

- (VEMotionBlurParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame previousFrame:(id)previousFrame nextOpticalFlow:(id)flow previousOpticalFlow:(id)opticalFlow motionBlurStrength:(int64_t)strength submissionMode:(int64_t)mode destinationFrame:(id)self0
{
  frameCopy = frame;
  nextFrameCopy = nextFrame;
  previousFrameCopy = previousFrame;
  flowCopy = flow;
  opticalFlowCopy = opticalFlow;
  destinationFrameCopy = destinationFrame;
  v26.receiver = self;
  v26.super_class = VEMotionBlurParameters;
  v19 = [(VEMotionBlurParameters *)&v26 init];
  if (!v19)
  {
    NSLog(&cfstr_FailToInitiali.isa);
LABEL_13:
    v20 = 0;
    goto LABEL_8;
  }

  if (!frameCopy || !destinationFrameCopy)
  {
    NSLog(&cfstr_FailToToInitia_1.isa);
    goto LABEL_13;
  }

  if ((strength - 101) <= 0xFFFFFFFFFFFFFF9BLL)
  {
    NSLog(&cfstr_FailToToInitia_6.isa);
    goto LABEL_13;
  }

  if (isSameFormat([frameCopy buffer], objc_msgSend(nextFrameCopy, "buffer")) && isSameFormat(objc_msgSend(frameCopy, "buffer"), objc_msgSend(previousFrameCopy, "buffer")))
  {
    objc_storeStrong(&v19->_sourceFrame, frame);
    objc_storeStrong(&v19->_nextFrame, nextFrame);
    objc_storeStrong(&v19->_previousFrame, previousFrame);
    objc_storeStrong(&v19->_nextOpticalFlow, flow);
    objc_storeStrong(&v19->_previousOpticalFlow, opticalFlow);
    v19->_motionBlurStrength = strength;
    v19->_submissionMode = mode;
    objc_storeStrong(&v19->_destinationFrame, destinationFrame);
    v20 = v19;
  }

  else
  {
    NSLog(&cfstr_FailToToInitia_7.isa);
    v20 = 0;
  }

LABEL_8:

  return v20;
}

@end