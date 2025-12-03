@interface VESuperResolutionParameters
- (VESuperResolutionParameters)initWithSourceFrame:(id)frame previousFrame:(id)previousFrame previousOutputFrame:(id)outputFrame opticalFlow:(id)flow submissionMode:(int64_t)mode destinationFrame:(id)destinationFrame;
@end

@implementation VESuperResolutionParameters

- (VESuperResolutionParameters)initWithSourceFrame:(id)frame previousFrame:(id)previousFrame previousOutputFrame:(id)outputFrame opticalFlow:(id)flow submissionMode:(int64_t)mode destinationFrame:(id)destinationFrame
{
  frameCopy = frame;
  previousFrameCopy = previousFrame;
  outputFrameCopy = outputFrame;
  flowCopy = flow;
  destinationFrameCopy = destinationFrame;
  v23.receiver = self;
  v23.super_class = VESuperResolutionParameters;
  v18 = [(VESuperResolutionParameters *)&v23 init];
  if (!v18)
  {
    NSLog(&cfstr_FailToInitiali.isa);
LABEL_11:
    v19 = 0;
    goto LABEL_7;
  }

  if (!frameCopy || !destinationFrameCopy)
  {
    NSLog(&cfstr_FailToToInitia_1.isa);
    goto LABEL_11;
  }

  if (isSameFormat([frameCopy buffer], objc_msgSend(previousFrameCopy, "buffer")) && isSameFormat(objc_msgSend(previousFrameCopy, "buffer"), objc_msgSend(outputFrameCopy, "buffer")))
  {
    objc_storeStrong(&v18->_sourceFrame, frame);
    objc_storeStrong(&v18->_previousFrame, previousFrame);
    objc_storeStrong(&v18->_previousOutputFrame, outputFrame);
    objc_storeStrong(&v18->_opticalFlow, flow);
    v18->_submissionMode = mode;
    objc_storeStrong(&v18->_destinationFrame, destinationFrame);
    v19 = v18;
  }

  else
  {
    NSLog(&cfstr_FailToInitiali_0.isa);
    v19 = 0;
  }

LABEL_7:

  return v19;
}

@end