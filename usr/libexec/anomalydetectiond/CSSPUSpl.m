@interface CSSPUSpl
- (CSSPUSpl)initWithTimestamp:(unint64_t)a3 rms:(float)a4;
@end

@implementation CSSPUSpl

- (CSSPUSpl)initWithTimestamp:(unint64_t)a3 rms:(float)a4
{
  v7.receiver = self;
  v7.super_class = CSSPUSpl;
  result = [(CSSPUSpl *)&v7 init];
  if (result)
  {
    result->_c_struct.timestamp = a3;
    result->_c_struct.rms = a4;
  }

  return result;
}

@end