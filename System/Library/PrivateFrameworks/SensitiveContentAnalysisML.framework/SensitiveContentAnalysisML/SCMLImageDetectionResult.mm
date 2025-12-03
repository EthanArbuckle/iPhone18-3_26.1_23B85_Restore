@interface SCMLImageDetectionResult
- (SCMLImageDetectionResult)initWithDetections:(id)detections;
@end

@implementation SCMLImageDetectionResult

- (SCMLImageDetectionResult)initWithDetections:(id)detections
{
  detectionsCopy = detections;
  v9.receiver = self;
  v9.super_class = SCMLImageDetectionResult;
  v6 = [(SCMLImageDetectionResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_detections, detections);
  }

  return v7;
}

@end