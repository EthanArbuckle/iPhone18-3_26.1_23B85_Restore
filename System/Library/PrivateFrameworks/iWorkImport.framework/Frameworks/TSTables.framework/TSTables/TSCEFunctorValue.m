@interface TSCEFunctorValue
+ (id)functorValue:(const TSCEFunctor *)a3;
- (TSCEFunctorValue)initWithFunctor:(const TSCEFunctor *)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TSCEFunctorValue

+ (id)functorValue:(const TSCEFunctor *)a3
{
  v4 = [TSCEFunctorValue alloc];
  v8 = objc_msgSend_initWithFunctor_(v4, v5, a3, v6, v7);

  return v8;
}

- (TSCEFunctorValue)initWithFunctor:(const TSCEFunctor *)a3
{
  v7.receiver = self;
  v7.super_class = TSCEFunctorValue;
  v4 = [(TSCEValue *)&v7 init];
  v5 = v4;
  if (v4)
  {
    TSCEFunctor::operator=(&v4->_functor._formula, a3);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TSCEFunctorValue;
  v4 = [(TSCEValue *)&v6 copyWithZone:a3];
  TSCEFunctor::operator=(v4 + 7, &self->_functor);
  return v4;
}

@end