@interface _PFGenericValueTransformerConcreteImplementation
- (_PFGenericValueTransformerConcreteImplementation)initWithTransformedValueClass:(Class)class;
- (_PFGenericValueTransformerConcreteImplementation)initWithTransformedValueClass:(Class)class reverseValueClass:(Class)valueClass;
- (id)_init;
- (id)reverseTransformedValue:(id)value context:(id)context;
- (id)transformedValue:(id)value context:(id)context;
- (id)transformedValueClass;
@end

@implementation _PFGenericValueTransformerConcreteImplementation

- (_PFGenericValueTransformerConcreteImplementation)initWithTransformedValueClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = _PFGenericValueTransformerConcreteImplementation;
  result = [(PFGenericValueTransformer *)&v5 _init];
  if (result)
  {
    result->_transformedValueClass = class;
    result->_reverseValueClass = 0;
  }

  return result;
}

- (_PFGenericValueTransformerConcreteImplementation)initWithTransformedValueClass:(Class)class reverseValueClass:(Class)valueClass
{
  v7.receiver = self;
  v7.super_class = _PFGenericValueTransformerConcreteImplementation;
  result = [(PFGenericValueTransformer *)&v7 _init];
  if (result)
  {
    result->_transformedValueClass = class;
    result->_reverseValueClass = valueClass;
  }

  return result;
}

- (id)_init
{
  [(_PFGenericValueTransformerConcreteImplementation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)transformedValue:(id)value context:(id)context
{
  v6.receiver = self;
  v6.super_class = _PFGenericValueTransformerConcreteImplementation;
  context = [(PFGenericValueTransformer *)&v6 transformedValue:value, context];

  return context;
}

- (id)reverseTransformedValue:(id)value context:(id)context
{
  v6.receiver = self;
  v6.super_class = _PFGenericValueTransformerConcreteImplementation;
  context = [(PFGenericValueTransformer *)&v6 reverseTransformedValue:value, context];

  return context;
}

- (id)transformedValueClass
{
  if (self)
  {
    self = self[2];
    v1 = vars8;
  }

  return self;
}

@end