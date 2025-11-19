@interface IPAGeometryOperator
- (IPAGeometryOperator)init;
- (IPAGeometryOperator)initWithIdentifier:(id)a3;
- (id)transformForGeometry:(id)a3;
@end

@implementation IPAGeometryOperator

- (id)transformForGeometry:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  result = _PFAssertFailHandler();
  __break(1u);
  return result;
}

- (IPAGeometryOperator)initWithIdentifier:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v9.receiver = self;
    v9.super_class = IPAGeometryOperator;
    v6 = [(IPAGeometryOperator *)&v9 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_identifer, a3);
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