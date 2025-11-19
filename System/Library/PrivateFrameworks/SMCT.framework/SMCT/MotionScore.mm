@interface MotionScore
- (float)computeWithCurrFrame:(__CVBuffer *)a3;
- (id)computeMeanAndStdWithCurrFrame:(__CVBuffer *)a3;
@end

@implementation MotionScore

- (float)computeWithCurrFrame:(__CVBuffer *)a3
{
  v4 = a3;
  v5 = self;
  sub_2643170D0(v4);
  v7 = v6;

  return v7;
}

- (id)computeMeanAndStdWithCurrFrame:(__CVBuffer *)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_264317588(v4);

  return v6;
}

@end