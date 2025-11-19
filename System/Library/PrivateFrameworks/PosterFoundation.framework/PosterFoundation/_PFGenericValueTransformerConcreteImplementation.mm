@interface _PFGenericValueTransformerConcreteImplementation
- (_PFGenericValueTransformerConcreteImplementation)initWithTransformedValueClass:(Class)a3;
- (_PFGenericValueTransformerConcreteImplementation)initWithTransformedValueClass:(Class)a3 reverseValueClass:(Class)a4;
- (id)_init;
- (id)reverseTransformedValue:(id)a3 context:(id)a4;
- (id)transformedValue:(id)a3 context:(id)a4;
- (id)transformedValueClass;
@end

@implementation _PFGenericValueTransformerConcreteImplementation

- (_PFGenericValueTransformerConcreteImplementation)initWithTransformedValueClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = _PFGenericValueTransformerConcreteImplementation;
  result = [(PFGenericValueTransformer *)&v5 _init];
  if (result)
  {
    result->_transformedValueClass = a3;
    result->_reverseValueClass = 0;
  }

  return result;
}

- (_PFGenericValueTransformerConcreteImplementation)initWithTransformedValueClass:(Class)a3 reverseValueClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = _PFGenericValueTransformerConcreteImplementation;
  result = [(PFGenericValueTransformer *)&v7 _init];
  if (result)
  {
    result->_transformedValueClass = a3;
    result->_reverseValueClass = a4;
  }

  return result;
}

- (id)_init
{
  [(_PFGenericValueTransformerConcreteImplementation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)transformedValue:(id)a3 context:(id)a4
{
  v6.receiver = self;
  v6.super_class = _PFGenericValueTransformerConcreteImplementation;
  v4 = [(PFGenericValueTransformer *)&v6 transformedValue:a3, a4];

  return v4;
}

- (id)reverseTransformedValue:(id)a3 context:(id)a4
{
  v6.receiver = self;
  v6.super_class = _PFGenericValueTransformerConcreteImplementation;
  v4 = [(PFGenericValueTransformer *)&v6 reverseTransformedValue:a3, a4];

  return v4;
}

- (id)transformedValueClass
{
  if (a1)
  {
    a1 = a1[2];
    v1 = vars8;
  }

  return a1;
}

@end