@interface VEFrameRateConversionParameters
- (VEFrameRateConversionParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame opticalFlow:(id)flow interpolationPhase:(id)phase submissionMode:(int64_t)mode destinationFrames:(id)frames;
@end

@implementation VEFrameRateConversionParameters

- (VEFrameRateConversionParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame opticalFlow:(id)flow interpolationPhase:(id)phase submissionMode:(int64_t)mode destinationFrames:(id)frames
{
  frameCopy = frame;
  nextFrameCopy = nextFrame;
  flowCopy = flow;
  phaseCopy = phase;
  framesCopy = frames;
  v28.receiver = self;
  v28.super_class = VEFrameRateConversionParameters;
  v19 = [(VEFrameRateConversionParameters *)&v28 init];
  if (!v19)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    goto LABEL_15;
  }

  if (!frameCopy || !nextFrameCopy)
  {
    NSLog(&cfstr_FailToToInitia_2.isa);
    goto LABEL_15;
  }

  if (!phaseCopy || !framesCopy || ![framesCopy count] || (v20 = objc_msgSend(phaseCopy, "count"), v20 != objc_msgSend(framesCopy, "count")))
  {
    NSLog(&cfstr_FailToToInitia_3.isa);
LABEL_15:
    v25 = 0;
    goto LABEL_10;
  }

  if (!isSameFormat([frameCopy buffer], objc_msgSend(nextFrameCopy, "buffer")))
  {
    NSLog(&cfstr_FailToToInitia_4.isa);
    goto LABEL_15;
  }

  objc_storeStrong(&v19->_sourceFrame, frame);
  objc_storeStrong(&v19->_nextFrame, nextFrame);
  v21 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:phaseCopy];
  interpolationPhase = v19->_interpolationPhase;
  v19->_interpolationPhase = v21;

  objc_storeStrong(&v19->_opticalFlow, flow);
  v19->_submissionMode = mode;
  v23 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:framesCopy];
  destinationFrames = v19->_destinationFrames;
  v19->_destinationFrames = v23;

  v25 = v19;
LABEL_10:

  return v25;
}

@end