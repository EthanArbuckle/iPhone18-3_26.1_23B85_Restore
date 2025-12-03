@interface CSSPUAccel800
- (CSSPUAccel800)initWithTimestamp:(unint64_t)timestamp x:(float)x y:(float)y z:(float)z;
@end

@implementation CSSPUAccel800

- (CSSPUAccel800)initWithTimestamp:(unint64_t)timestamp x:(float)x y:(float)y z:(float)z
{
  v7.receiver = self;
  v7.super_class = CSSPUAccel800;
  result = [CSSPUTriad initWithTimestamp:"initWithTimestamp:x:y:z:" x:timestamp y:? z:?];
  if (result)
  {
    result->_kReportInterval = 1250;
  }

  return result;
}

@end