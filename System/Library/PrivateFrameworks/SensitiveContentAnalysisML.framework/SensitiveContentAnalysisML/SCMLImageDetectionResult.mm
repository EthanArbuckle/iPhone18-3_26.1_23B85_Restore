@interface SCMLImageDetectionResult
- (SCMLImageDetectionResult)initWithDetections:(id)a3;
@end

@implementation SCMLImageDetectionResult

- (SCMLImageDetectionResult)initWithDetections:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SCMLImageDetectionResult;
  v6 = [(SCMLImageDetectionResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_detections, a3);
  }

  return v7;
}

@end