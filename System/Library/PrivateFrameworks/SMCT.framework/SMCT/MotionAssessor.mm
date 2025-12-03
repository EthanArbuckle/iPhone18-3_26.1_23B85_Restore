@interface MotionAssessor
- (id)computeWithCurrFrame:(__CVBuffer *)frame;
- (id)computeWithOpticalFlowBuffer:(__CVBuffer *)buffer;
@end

@implementation MotionAssessor

- (id)computeWithCurrFrame:(__CVBuffer *)frame
{
  frameCopy = frame;
  selfCopy = self;
  sub_264313DF4(frameCopy);
  v7 = v6;

  return v7;
}

- (id)computeWithOpticalFlowBuffer:(__CVBuffer *)buffer
{
  bufferCopy = buffer;
  selfCopy = self;
  v6 = sub_2643142D8(bufferCopy);

  return v6;
}

@end