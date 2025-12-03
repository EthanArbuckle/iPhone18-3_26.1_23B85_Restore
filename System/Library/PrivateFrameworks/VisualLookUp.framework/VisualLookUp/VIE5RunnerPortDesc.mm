@interface VIE5RunnerPortDesc
- (VIE5RunnerPortDesc)initWithShape:(id)shape type:(unint64_t)type dtype:(VIE5RunnerPortDType)dtype csize:(unint64_t)csize strides:(id)strides;
@end

@implementation VIE5RunnerPortDesc

- (VIE5RunnerPortDesc)initWithShape:(id)shape type:(unint64_t)type dtype:(VIE5RunnerPortDType)dtype csize:(unint64_t)csize strides:(id)strides
{
  shapeCopy = shape;
  stridesCopy = strides;
  v19.receiver = self;
  v19.super_class = VIE5RunnerPortDesc;
  v15 = [(VIE5RunnerPortDesc *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_shape, shape);
    v16->_type = type;
    v16->_dtype = dtype;
    v16->_csize = csize;
    objc_storeStrong(&v16->_strides, strides);
    v17 = v16;
  }

  return v16;
}

@end