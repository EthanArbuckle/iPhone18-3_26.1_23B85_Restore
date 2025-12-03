@interface PUVFXStopWatch
- (PUVFXStopWatch)initWithLog:(id)log;
@end

@implementation PUVFXStopWatch

- (PUVFXStopWatch)initWithLog:(id)log
{
  v5.receiver = self;
  v5.super_class = PUVFXStopWatch;
  result = [(PUVFXStopWatch *)&v5 init];
  result->_log = log;
  return result;
}

@end