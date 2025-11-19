@interface VEFrameRateConversionParameters
- (VEFrameRateConversionParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 opticalFlow:(id)a5 interpolationPhase:(id)a6 submissionMode:(int64_t)a7 destinationFrames:(id)a8;
@end

@implementation VEFrameRateConversionParameters

- (VEFrameRateConversionParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 opticalFlow:(id)a5 interpolationPhase:(id)a6 submissionMode:(int64_t)a7 destinationFrames:(id)a8
{
  v15 = a3;
  v16 = a4;
  v27 = a5;
  v17 = a6;
  v18 = a8;
  v28.receiver = self;
  v28.super_class = VEFrameRateConversionParameters;
  v19 = [(VEFrameRateConversionParameters *)&v28 init];
  if (!v19)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    goto LABEL_15;
  }

  if (!v15 || !v16)
  {
    NSLog(&cfstr_FailToToInitia_2.isa);
    goto LABEL_15;
  }

  if (!v17 || !v18 || ![v18 count] || (v20 = objc_msgSend(v17, "count"), v20 != objc_msgSend(v18, "count")))
  {
    NSLog(&cfstr_FailToToInitia_3.isa);
LABEL_15:
    v25 = 0;
    goto LABEL_10;
  }

  if (!isSameFormat([v15 buffer], objc_msgSend(v16, "buffer")))
  {
    NSLog(&cfstr_FailToToInitia_4.isa);
    goto LABEL_15;
  }

  objc_storeStrong(&v19->_sourceFrame, a3);
  objc_storeStrong(&v19->_nextFrame, a4);
  v21 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v17];
  interpolationPhase = v19->_interpolationPhase;
  v19->_interpolationPhase = v21;

  objc_storeStrong(&v19->_opticalFlow, a5);
  v19->_submissionMode = a7;
  v23 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v18];
  destinationFrames = v19->_destinationFrames;
  v19->_destinationFrames = v23;

  v25 = v19;
LABEL_10:

  return v25;
}

@end