@interface VESuperResolutionParameters
- (VESuperResolutionParameters)initWithSourceFrame:(id)a3 previousFrame:(id)a4 previousOutputFrame:(id)a5 opticalFlow:(id)a6 submissionMode:(int64_t)a7 destinationFrame:(id)a8;
@end

@implementation VESuperResolutionParameters

- (VESuperResolutionParameters)initWithSourceFrame:(id)a3 previousFrame:(id)a4 previousOutputFrame:(id)a5 opticalFlow:(id)a6 submissionMode:(int64_t)a7 destinationFrame:(id)a8
{
  v14 = a3;
  v15 = a4;
  v22 = a5;
  v16 = a6;
  v17 = a8;
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

  if (!v14 || !v17)
  {
    NSLog(&cfstr_FailToToInitia_1.isa);
    goto LABEL_11;
  }

  if (isSameFormat([v14 buffer], objc_msgSend(v15, "buffer")) && isSameFormat(objc_msgSend(v15, "buffer"), objc_msgSend(v22, "buffer")))
  {
    objc_storeStrong(&v18->_sourceFrame, a3);
    objc_storeStrong(&v18->_previousFrame, a4);
    objc_storeStrong(&v18->_previousOutputFrame, a5);
    objc_storeStrong(&v18->_opticalFlow, a6);
    v18->_submissionMode = a7;
    objc_storeStrong(&v18->_destinationFrame, a8);
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