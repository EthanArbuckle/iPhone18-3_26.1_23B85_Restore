@interface PDTimestampedPointCloud
- (PDTimestampedPointCloud)initWithPointCloud:(id)a3 andTimestamp:(id *)a4;
@end

@implementation PDTimestampedPointCloud

- (PDTimestampedPointCloud)initWithPointCloud:(id)a3 andTimestamp:(id *)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = PDTimestampedPointCloud;
  v8 = [(PDTimestampedPointCloud *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pointCloud, a3);
    v10 = *&a4->var0;
    v9->_timestamp.epoch = a4->var3;
    *&v9->_timestamp.value = v10;
  }

  return v9;
}

@end