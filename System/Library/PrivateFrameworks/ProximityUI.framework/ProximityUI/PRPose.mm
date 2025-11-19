@interface PRPose
+ (PRPose)poseWithTime:(double)a3 pose:(double)a4;
- (PRPose)initWithTime:(__n128)a3 pose:(__n128)a4;
- (__n128)pose;
@end

@implementation PRPose

- (PRPose)initWithTime:(__n128)a3 pose:(__n128)a4
{
  v12.receiver = a1;
  v12.super_class = PRPose;
  result = [(PRPose *)&v12 init];
  if (result)
  {
    result->_timestamp = a2;
    result[1] = a3;
    result[2] = a4;
    result[3] = a5;
    result[4] = a6;
  }

  return result;
}

+ (PRPose)poseWithTime:(double)a3 pose:(double)a4
{
  v5 = [[PRPose alloc] initWithTime:a1 pose:a2, a3, a4, a5];

  return v5;
}

- (__n128)pose
{
  result = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  return result;
}

@end