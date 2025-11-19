@interface SBINOpenCameraAppIntent
- (BOOL)isEqual:(id)a3;
- (SBINOpenCameraAppIntent)initWithCaptureDevice:(unint64_t)a3 captureMode:(unint64_t)a4 systemContext:(id)a5;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation SBINOpenCameraAppIntent

- (SBINOpenCameraAppIntent)initWithCaptureDevice:(unint64_t)a3 captureMode:(unint64_t)a4 systemContext:(id)a5
{
  v8.receiver = self;
  v8.super_class = SBINOpenCameraAppIntent;
  result = [(SBINAppIntent *)&v8 initWithIdentifier:@"OpenCamera" systemContext:a5];
  if (result)
  {
    result->_captureDevice = a3;
    result->_captureMode = a4;
  }

  return result;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SBINOpenCameraAppIntent_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_279D12120;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:0 block:v6];
}

void __56__SBINOpenCameraAppIntent_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7.receiver = *(a1 + 40);
  v7.super_class = SBINOpenCameraAppIntent;
  objc_msgSendSuper2(&v7, sel_appendDescriptionToFormatter_, v2);
  v3 = *(a1 + 32);
  v4 = NSStringFromSBINCameraCaptureDevice(*(*(a1 + 40) + 24));
  [v3 appendString:v4 withName:@"captureDevice"];

  v5 = *(a1 + 32);
  v6 = NSStringFromSBINCameraCaptureMode(*(*(a1 + 40) + 32));
  [v5 appendString:v6 withName:@"captureMode"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v7 = [(SBINAppIntent *)&v9 isEqual:v4]&& (objc_opt_self(), v5 = v9.super_class = SBINOpenCameraAppIntent;

  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = SBINOpenCameraAppIntent;
  return self->_captureDevice ^ [(SBINAppIntent *)&v3 hash]^ self->_captureMode;
}

@end