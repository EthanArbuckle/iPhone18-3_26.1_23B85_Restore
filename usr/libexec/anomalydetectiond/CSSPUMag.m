@interface CSSPUMag
- (CSSPUMag)initWithStruct:(const MagSample *)a3;
@end

@implementation CSSPUMag

- (CSSPUMag)initWithStruct:(const MagSample *)a3
{
  v6.receiver = self;
  v6.super_class = CSSPUMag;
  result = [(CSSPUMag *)&v6 init];
  if (result)
  {
    v5 = *&a3->x;
    result->_c_struct.timestamp = a3->timestamp;
    *&result->_c_struct.x = v5;
  }

  return result;
}

@end