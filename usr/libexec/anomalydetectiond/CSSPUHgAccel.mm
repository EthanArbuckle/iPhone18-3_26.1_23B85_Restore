@interface CSSPUHgAccel
- (CSSPUHgAccel)initWithTimestamp:(unint64_t)timestamp x:(float)x y:(float)y z:(float)z;
@end

@implementation CSSPUHgAccel

- (CSSPUHgAccel)initWithTimestamp:(unint64_t)timestamp x:(float)x y:(float)y z:(float)z
{
  v7.receiver = self;
  v7.super_class = CSSPUHgAccel;
  result = [CSSPUTriad initWithTimestamp:"initWithTimestamp:x:y:z:" x:timestamp y:? z:?];
  if (result)
  {
    result->_kReportInterval = 312;
  }

  return result;
}

@end