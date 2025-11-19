@interface CSSPUHgAccel
- (CSSPUHgAccel)initWithTimestamp:(unint64_t)a3 x:(float)a4 y:(float)a5 z:(float)a6;
@end

@implementation CSSPUHgAccel

- (CSSPUHgAccel)initWithTimestamp:(unint64_t)a3 x:(float)a4 y:(float)a5 z:(float)a6
{
  v7.receiver = self;
  v7.super_class = CSSPUHgAccel;
  result = [CSSPUTriad initWithTimestamp:"initWithTimestamp:x:y:z:" x:a3 y:? z:?];
  if (result)
  {
    result->_kReportInterval = 312;
  }

  return result;
}

@end