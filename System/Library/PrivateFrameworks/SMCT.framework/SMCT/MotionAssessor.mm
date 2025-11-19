@interface MotionAssessor
- (id)computeWithCurrFrame:(__CVBuffer *)a3;
- (id)computeWithOpticalFlowBuffer:(__CVBuffer *)a3;
@end

@implementation MotionAssessor

- (id)computeWithCurrFrame:(__CVBuffer *)a3
{
  v4 = a3;
  v5 = self;
  sub_264313DF4(v4);
  v7 = v6;

  return v7;
}

- (id)computeWithOpticalFlowBuffer:(__CVBuffer *)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_2643142D8(v4);

  return v6;
}

@end