@interface VEOpticalFlowParameters
- (VEOpticalFlowParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 submissionMode:(int64_t)a5 opticalFlow:(id)a6;
@end

@implementation VEOpticalFlowParameters

- (VEOpticalFlowParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 submissionMode:(int64_t)a5 opticalFlow:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = VEOpticalFlowParameters;
  v14 = [(VEOpticalFlowParameters *)&v17 init];
  if (!v14)
  {
    goto LABEL_10;
  }

  if (!v11 || !v12 || !v13)
  {
    NSLog(&cfstr_FailToToInitia.isa);
LABEL_10:
    v15 = 0;
    goto LABEL_7;
  }

  if (!isSameFormat([v11 buffer], objc_msgSend(v12, "buffer")))
  {
    NSLog(&cfstr_FailToToInitia_0.isa);
    goto LABEL_10;
  }

  objc_storeStrong(&v14->_sourceFrame, a3);
  objc_storeStrong(&v14->_nextFrame, a4);
  v14->_submissionMode = a5;
  objc_storeStrong(&v14->_opticalFlow, a6);
  v15 = v14;
LABEL_7:

  return v15;
}

@end