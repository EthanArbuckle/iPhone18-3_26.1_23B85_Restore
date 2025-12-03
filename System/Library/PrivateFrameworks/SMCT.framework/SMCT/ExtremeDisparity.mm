@interface ExtremeDisparity
- (id)computeWithLeftBuffer:(__CVBuffer *)buffer rightBuffer:(__CVBuffer *)rightBuffer percentile:(float)percentile;
@end

@implementation ExtremeDisparity

- (id)computeWithLeftBuffer:(__CVBuffer *)buffer rightBuffer:(__CVBuffer *)rightBuffer percentile:(float)percentile
{
  bufferCopy = buffer;
  rightBufferCopy = rightBuffer;
  selfCopy = self;
  sub_264319F7C(bufferCopy, rightBufferCopy, percentile);
  v12 = v11;

  return v12;
}

@end