@interface MotionScore
- (float)computeWithCurrFrame:(__CVBuffer *)frame;
- (id)computeMeanAndStdWithCurrFrame:(__CVBuffer *)frame;
@end

@implementation MotionScore

- (float)computeWithCurrFrame:(__CVBuffer *)frame
{
  frameCopy = frame;
  selfCopy = self;
  sub_2643170D0(frameCopy);
  v7 = v6;

  return v7;
}

- (id)computeMeanAndStdWithCurrFrame:(__CVBuffer *)frame
{
  frameCopy = frame;
  selfCopy = self;
  v6 = sub_264317588(frameCopy);

  return v6;
}

@end