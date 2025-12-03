@interface CSSPUMag
- (CSSPUMag)initWithStruct:(const MagSample *)struct;
@end

@implementation CSSPUMag

- (CSSPUMag)initWithStruct:(const MagSample *)struct
{
  v6.receiver = self;
  v6.super_class = CSSPUMag;
  result = [(CSSPUMag *)&v6 init];
  if (result)
  {
    v5 = *&struct->x;
    result->_c_struct.timestamp = struct->timestamp;
    *&result->_c_struct.x = v5;
  }

  return result;
}

@end