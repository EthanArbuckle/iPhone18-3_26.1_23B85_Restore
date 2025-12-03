@interface IPAImageTransform
+ (id)compositeTransforms:(id)transforms;
+ (id)identityTransformForGeometry:(id)geometry;
- (IPAImageTransform)init;
- (IPAImageTransform)initWithInputGeometry:(id)geometry intrinsicGeometry:(id)intrinsicGeometry;
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

- (IPAImageTransform)initWithInputGeometry:(id)geometry intrinsicGeometry:(id)intrinsicGeometry
{
  geometryCopy = geometry;
  intrinsicGeometryCopy = intrinsicGeometry;
  v9 = intrinsicGeometryCopy;
  if (geometryCopy && intrinsicGeometryCopy)
  {
    v13.receiver = self;
    v13.super_class = IPAImageTransform;
    v10 = [(IPAImageTransform *)&v13 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_inputGeometry, geometry);
      objc_storeStrong(&v11->_intrinsicGeometry, intrinsicGeometry);
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

+ (id)compositeTransforms:(id)transforms
{
  transformsCopy = transforms;
  if ([transformsCopy count])
  {
    v4 = [[IPAImageTransformSequence alloc] initWithTransforms:transformsCopy];

    return v4;
  }

  else
  {
    result = _PFAssertFailHandler();
    __break(1u);
  }

  return result;
}

+ (id)identityTransformForGeometry:(id)geometry
{
  geometryCopy = geometry;
  if (geometryCopy)
  {
    v4 = [(IPAImageTransform *)[IPAImageIdentityTransform alloc] initWithInputGeometry:geometryCopy intrinsicGeometry:geometryCopy];

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