@interface IPAGeometryOperator
- (IPAGeometryOperator)init;
- (IPAGeometryOperator)initWithIdentifier:(id)identifier;
- (id)transformForGeometry:(id)geometry;
@end

@implementation IPAGeometryOperator

- (id)transformForGeometry:(id)geometry
{
  geometryCopy = geometry;
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  result = _PFAssertFailHandler();
  __break(1u);
  return result;
}

- (IPAGeometryOperator)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v9.receiver = self;
    v9.super_class = IPAGeometryOperator;
    v6 = [(IPAGeometryOperator *)&v9 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_identifer, identifier);
    }

    return v7;
  }

  else
  {
    result = _PFAssertFailHandler();
    __break(1u);
  }

  return result;
}

- (IPAGeometryOperator)init
{
  result = _PFAssertFailHandler();
  __break(1u);
  return result;
}

@end