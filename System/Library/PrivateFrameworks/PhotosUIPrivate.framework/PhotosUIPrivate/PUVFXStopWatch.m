@interface PUVFXStopWatch
- (PUVFXStopWatch)initWithLog:(id)a3;
@end

@implementation PUVFXStopWatch

- (PUVFXStopWatch)initWithLog:(id)a3
{
  v5.receiver = self;
  v5.super_class = PUVFXStopWatch;
  result = [(PUVFXStopWatch *)&v5 init];
  result->_log = a3;
  return result;
}

@end