@interface UPDetectedData
- (UPDetectedData)initWithLabel:(id)label dataDetectorResult:(__CFArray *)result;
- (void)dealloc;
@end

@implementation UPDetectedData

- (void)dealloc
{
  CFRelease(self->_dataDetectorResult);
  v3.receiver = self;
  v3.super_class = UPDetectedData;
  [(UPDetectedData *)&v3 dealloc];
}

- (UPDetectedData)initWithLabel:(id)label dataDetectorResult:(__CFArray *)result
{
  labelCopy = label;
  v11.receiver = self;
  v11.super_class = UPDetectedData;
  v8 = [(UPDetectedData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_label, label);
    v9->_dataDetectorResult = result;
  }

  return v9;
}

@end