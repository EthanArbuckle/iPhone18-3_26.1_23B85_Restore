@interface XBLaunchCaptureInformation
- (XBLaunchCaptureInformation)init;
- (XBLaunchCaptureInformation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XBLaunchCaptureInformation

- (XBLaunchCaptureInformation)init
{
  v6.receiver = self;
  v6.super_class = XBLaunchCaptureInformation;
  v2 = [(XBLaunchCaptureInformation *)&v6 init];
  v3 = v2;
  if (v2)
  {
    caarFilePath = v2->_caarFilePath;
    v2->_estimatedMemoryImpact = -1;
    v2->_caarFilePath = 0;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  estimatedMemoryImpact = self->_estimatedMemoryImpact;
  v5 = a3;
  [v5 encodeInt64:estimatedMemoryImpact forKey:@"XBLaunchCaptureInformationEstimatedSize"];
  [v5 encodeObject:self->_caarFilePath forKey:@"XBLaunchCaptureInformationCaarPath"];
}

- (XBLaunchCaptureInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(XBLaunchCaptureInformation *)self init];
  if (v5)
  {
    v5->_estimatedMemoryImpact = [v4 decodeInt64ForKey:@"XBLaunchCaptureInformationEstimatedSize"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"XBLaunchCaptureInformationCaarPath"];
    caarFilePath = v5->_caarFilePath;
    v5->_caarFilePath = v6;
  }

  return v5;
}

@end