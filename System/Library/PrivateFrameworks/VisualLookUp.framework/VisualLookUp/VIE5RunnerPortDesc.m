@interface VIE5RunnerPortDesc
- (VIE5RunnerPortDesc)initWithShape:(id)a3 type:(unint64_t)a4 dtype:(VIE5RunnerPortDType)a5 csize:(unint64_t)a6 strides:(id)a7;
@end

@implementation VIE5RunnerPortDesc

- (VIE5RunnerPortDesc)initWithShape:(id)a3 type:(unint64_t)a4 dtype:(VIE5RunnerPortDType)a5 csize:(unint64_t)a6 strides:(id)a7
{
  v13 = a3;
  v14 = a7;
  v19.receiver = self;
  v19.super_class = VIE5RunnerPortDesc;
  v15 = [(VIE5RunnerPortDesc *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_shape, a3);
    v16->_type = a4;
    v16->_dtype = a5;
    v16->_csize = a6;
    objc_storeStrong(&v16->_strides, a7);
    v17 = v16;
  }

  return v16;
}

@end