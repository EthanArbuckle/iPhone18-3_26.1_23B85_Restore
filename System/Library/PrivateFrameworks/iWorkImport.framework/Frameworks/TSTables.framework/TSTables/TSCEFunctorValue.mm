@interface TSCEFunctorValue
+ (id)functorValue:(const TSCEFunctor *)value;
- (TSCEFunctorValue)initWithFunctor:(const TSCEFunctor *)functor;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSCEFunctorValue

+ (id)functorValue:(const TSCEFunctor *)value
{
  v4 = [TSCEFunctorValue alloc];
  v8 = objc_msgSend_initWithFunctor_(v4, v5, value, v6, v7);

  return v8;
}

- (TSCEFunctorValue)initWithFunctor:(const TSCEFunctor *)functor
{
  v7.receiver = self;
  v7.super_class = TSCEFunctorValue;
  v4 = [(TSCEValue *)&v7 init];
  v5 = v4;
  if (v4)
  {
    TSCEFunctor::operator=(&v4->_functor._formula, functor);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = TSCEFunctorValue;
  v4 = [(TSCEValue *)&v6 copyWithZone:zone];
  TSCEFunctor::operator=(v4 + 7, &self->_functor);
  return v4;
}

@end