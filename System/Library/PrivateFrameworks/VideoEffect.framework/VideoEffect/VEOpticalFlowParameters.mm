@interface VEOpticalFlowParameters
- (VEOpticalFlowParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame submissionMode:(int64_t)mode opticalFlow:(id)flow;
@end

@implementation VEOpticalFlowParameters

- (VEOpticalFlowParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame submissionMode:(int64_t)mode opticalFlow:(id)flow
{
  frameCopy = frame;
  nextFrameCopy = nextFrame;
  flowCopy = flow;
  v17.receiver = self;
  v17.super_class = VEOpticalFlowParameters;
  v14 = [(VEOpticalFlowParameters *)&v17 init];
  if (!v14)
  {
    goto LABEL_10;
  }

  if (!frameCopy || !nextFrameCopy || !flowCopy)
  {
    NSLog(&cfstr_FailToToInitia.isa);
LABEL_10:
    v15 = 0;
    goto LABEL_7;
  }

  if (!isSameFormat([frameCopy buffer], objc_msgSend(nextFrameCopy, "buffer")))
  {
    NSLog(&cfstr_FailToToInitia_0.isa);
    goto LABEL_10;
  }

  objc_storeStrong(&v14->_sourceFrame, frame);
  objc_storeStrong(&v14->_nextFrame, nextFrame);
  v14->_submissionMode = mode;
  objc_storeStrong(&v14->_opticalFlow, flow);
  v15 = v14;
LABEL_7:

  return v15;
}

@end