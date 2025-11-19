@interface CSSPUTriad
- (CSSPUTriad)initWithTimestamp:(unint64_t)a3 x:(float)a4 y:(float)a5 z:(float)a6;
@end

@implementation CSSPUTriad

- (CSSPUTriad)initWithTimestamp:(unint64_t)a3 x:(float)a4 y:(float)a5 z:(float)a6
{
  v11.receiver = self;
  v11.super_class = CSSPUTriad;
  result = [(CSSPUTriad *)&v11 init];
  if (result)
  {
    result->_c_struct.timestamp = a3;
    result->_c_struct.x = a4;
    result->_c_struct.y = a5;
    result->_c_struct.z = a6;
  }

  return result;
}

@end