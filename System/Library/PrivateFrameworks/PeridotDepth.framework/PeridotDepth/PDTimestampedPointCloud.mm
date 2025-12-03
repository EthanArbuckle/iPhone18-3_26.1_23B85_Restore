@interface PDTimestampedPointCloud
- (PDTimestampedPointCloud)initWithPointCloud:(id)cloud andTimestamp:(id *)timestamp;
@end

@implementation PDTimestampedPointCloud

- (PDTimestampedPointCloud)initWithPointCloud:(id)cloud andTimestamp:(id *)timestamp
{
  cloudCopy = cloud;
  v12.receiver = self;
  v12.super_class = PDTimestampedPointCloud;
  v8 = [(PDTimestampedPointCloud *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pointCloud, cloud);
    v10 = *&timestamp->var0;
    v9->_timestamp.epoch = timestamp->var3;
    *&v9->_timestamp.value = v10;
  }

  return v9;
}

@end