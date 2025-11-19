@interface CSSPUAccel800
- (CSSPUAccel800)initWithTimestamp:(unint64_t)a3 x:(float)a4 y:(float)a5 z:(float)a6;
@end

@implementation CSSPUAccel800

- (CSSPUAccel800)initWithTimestamp:(unint64_t)a3 x:(float)a4 y:(float)a5 z:(float)a6
{
  v7.receiver = self;
  v7.super_class = CSSPUAccel800;
  result = [CSSPUTriad initWithTimestamp:"initWithTimestamp:x:y:z:" x:a3 y:? z:?];
  if (result)
  {
    result->_kReportInterval = 1250;
  }

  return result;
}

@end