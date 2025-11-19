@interface VEMotionBlurParameters
- (VEMotionBlurParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 previousFrame:(id)a5 nextOpticalFlow:(id)a6 previousOpticalFlow:(id)a7 motionBlurStrength:(int64_t)a8 submissionMode:(int64_t)a9 destinationFrame:(id)a10;
@end

@implementation VEMotionBlurParameters

- (VEMotionBlurParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 previousFrame:(id)a5 nextOpticalFlow:(id)a6 previousOpticalFlow:(id)a7 motionBlurStrength:(int64_t)a8 submissionMode:(int64_t)a9 destinationFrame:(id)a10
{
  v17 = a3;
  v24 = a4;
  v23 = a5;
  v18 = a6;
  v22 = a7;
  v25 = a10;
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

  if (!v17 || !v25)
  {
    NSLog(&cfstr_FailToToInitia_1.isa);
    goto LABEL_13;
  }

  if ((a8 - 101) <= 0xFFFFFFFFFFFFFF9BLL)
  {
    NSLog(&cfstr_FailToToInitia_6.isa);
    goto LABEL_13;
  }

  if (isSameFormat([v17 buffer], objc_msgSend(v24, "buffer")) && isSameFormat(objc_msgSend(v17, "buffer"), objc_msgSend(v23, "buffer")))
  {
    objc_storeStrong(&v19->_sourceFrame, a3);
    objc_storeStrong(&v19->_nextFrame, a4);
    objc_storeStrong(&v19->_previousFrame, a5);
    objc_storeStrong(&v19->_nextOpticalFlow, a6);
    objc_storeStrong(&v19->_previousOpticalFlow, a7);
    v19->_motionBlurStrength = a8;
    v19->_submissionMode = a9;
    objc_storeStrong(&v19->_destinationFrame, a10);
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