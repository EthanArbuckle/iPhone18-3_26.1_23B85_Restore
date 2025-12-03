@interface PRPose
+ (PRPose)poseWithTime:(double)time pose:(double)pose;
- (PRPose)initWithTime:(__n128)time pose:(__n128)pose;
- (__n128)pose;
@end

@implementation PRPose

- (PRPose)initWithTime:(__n128)time pose:(__n128)pose
{
  v12.receiver = self;
  v12.super_class = PRPose;
  result = [(PRPose *)&v12 init];
  if (result)
  {
    result->_timestamp = a2;
    result[1] = time;
    result[2] = pose;
    result[3] = a5;
    result[4] = a6;
  }

  return result;
}

+ (PRPose)poseWithTime:(double)time pose:(double)pose
{
  v5 = [[PRPose alloc] initWithTime:self pose:a2, time, pose, a5];

  return v5;
}

- (__n128)pose
{
  result = *(self + 16);
  v2 = *(self + 32);
  v3 = *(self + 48);
  v4 = *(self + 64);
  return result;
}

@end