@interface CSSPUTriad
- (CSSPUTriad)initWithTimestamp:(unint64_t)timestamp x:(float)x y:(float)y z:(float)z;
@end

@implementation CSSPUTriad

- (CSSPUTriad)initWithTimestamp:(unint64_t)timestamp x:(float)x y:(float)y z:(float)z
{
  v11.receiver = self;
  v11.super_class = CSSPUTriad;
  result = [(CSSPUTriad *)&v11 init];
  if (result)
  {
    result->_c_struct.timestamp = timestamp;
    result->_c_struct.x = x;
    result->_c_struct.y = y;
    result->_c_struct.z = z;
  }

  return result;
}

@end