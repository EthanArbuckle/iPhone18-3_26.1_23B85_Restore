@interface UPDetectedData
- (UPDetectedData)initWithLabel:(id)a3 dataDetectorResult:(__CFArray *)a4;
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

- (UPDetectedData)initWithLabel:(id)a3 dataDetectorResult:(__CFArray *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = UPDetectedData;
  v8 = [(UPDetectedData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_label, a3);
    v9->_dataDetectorResult = a4;
  }

  return v9;
}

@end