@interface IPAImageTransform
+ (id)compositeTransforms:(id)a3;
+ (id)identityTransformForGeometry:(id)a3;
- (IPAImageTransform)init;
- (IPAImageTransform)initWithInputGeometry:(id)a3 intrinsicGeometry:(id)a4;
- (id)description;
- (id)inverseTransform;
@end

@implementation IPAImageTransform

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@.%p inputGeometry:%@ intrinsicGeometry:%@>", v5, self, self->_inputGeometry, self->_intrinsicGeometry];

  return v6;
}

- (id)inverseTransform
{
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  result = _PFAssertFailHandler();
  __break(1u);
  return result;
}

- (IPAImageTransform)initWithInputGeometry:(id)a3 intrinsicGeometry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && v8)
  {
    v13.receiver = self;
    v13.super_class = IPAImageTransform;
    v10 = [(IPAImageTransform *)&v13 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_inputGeometry, a3);
      objc_storeStrong(&v11->_intrinsicGeometry, a4);
    }

    return v11;
  }

  else
  {
    result = _PFAssertFailHandler();
    __break(1u);
  }

  return result;
}

- (IPAImageTransform)init
{
  result = _PFAssertFailHandler();
  __break(1u);
  return result;
}

+ (id)compositeTransforms:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [[IPAImageTransformSequence alloc] initWithTransforms:v3];

    return v4;
  }

  else
  {
    result = _PFAssertFailHandler();
    __break(1u);
  }

  return result;
}

+ (id)identityTransformForGeometry:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [(IPAImageTransform *)[IPAImageIdentityTransform alloc] initWithInputGeometry:v3 intrinsicGeometry:v3];

    return v4;
  }

  else
  {
    result = _PFAssertFailHandler();
    __break(1u);
  }

  return result;
}

@end