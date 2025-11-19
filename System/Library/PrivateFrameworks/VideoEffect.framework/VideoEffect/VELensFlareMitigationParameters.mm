@interface VELensFlareMitigationParameters
- (CGPoint)nextFrameOpticalCenter;
- (CGPoint)sourceFrameOpticalCenter;
- (VELensFlareMitigationParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 opticalFlow:(id)a5 sourceFrameOpticalCenter:(CGPoint)a6 nextFrameOpticalCenter:(CGPoint)a7 opticalCenterShift:(double)a8 previousOutputFrame:(id)a9 previousPreviousOutputFrame:(id)a10 submissionMode:(int64_t)a11 destinationFrame:(id)a12;
@end

@implementation VELensFlareMitigationParameters

- (VELensFlareMitigationParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 opticalFlow:(id)a5 sourceFrameOpticalCenter:(CGPoint)a6 nextFrameOpticalCenter:(CGPoint)a7 opticalCenterShift:(double)a8 previousOutputFrame:(id)a9 previousPreviousOutputFrame:(id)a10 submissionMode:(int64_t)a11 destinationFrame:(id)a12
{
  y = a7.y;
  x = a7.x;
  v17 = a6.y;
  v18 = a6.x;
  v23 = a3;
  v24 = a4;
  v33 = a5;
  v32 = a9;
  v31 = a10;
  v25 = a12;
  v34.receiver = self;
  v34.super_class = VELensFlareMitigationParameters;
  v26 = [(VELensFlareMitigationParameters *)&v34 init];
  v27 = v26;
  if (!v26)
  {
    NSLog(&cfstr_FailToInitiali.isa, a11);
LABEL_7:
    v28 = 0;
    goto LABEL_4;
  }

  objc_storeStrong(&v26->_sourceFrame, a3);
  objc_storeStrong(&v27->_nextFrame, a4);
  objc_storeStrong(&v27->_opticalFlow, a5);
  objc_storeStrong(&v27->_destinationFrame, a12);
  objc_storeStrong(&v27->_previousOutputFrame, a9);
  objc_storeStrong(&v27->_previousPreviousOutputFrame, a10);
  v27->_sourceFrameOpticalCenter.x = v18;
  v27->_sourceFrameOpticalCenter.y = v17;
  v27->_nextFrameOpticalCenter.x = x;
  v27->_nextFrameOpticalCenter.y = y;
  v27->_opticalCenterShift = a8;
  v27->_submissionMode = a11;
  if (!isSameFormat([v23 buffer], objc_msgSend(v24, "buffer")))
  {
    NSLog(&cfstr_FailToToInitia_5.isa, a11);
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