@interface CSSPUSpl
- (CSSPUSpl)initWithTimestamp:(unint64_t)timestamp rms:(float)rms;
@end

@implementation CSSPUSpl

- (CSSPUSpl)initWithTimestamp:(unint64_t)timestamp rms:(float)rms
{
  v7.receiver = self;
  v7.super_class = CSSPUSpl;
  result = [(CSSPUSpl *)&v7 init];
  if (result)
  {
    result->_c_struct.timestamp = timestamp;
    result->_c_struct.rms = rms;
  }

  return result;
}

@end