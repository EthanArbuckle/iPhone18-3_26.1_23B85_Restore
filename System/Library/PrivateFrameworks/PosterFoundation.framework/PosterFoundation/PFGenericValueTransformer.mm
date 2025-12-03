@interface PFGenericValueTransformer
- (PFGenericValueTransformer)init;
- (PFGenericValueTransformer)initWithTransformedValueClass:(Class)class transformer:(id)transformer;
- (PFGenericValueTransformer)initWithTransformedValueClass:(Class)class transformer:(id)transformer reverseValueClass:(Class)valueClass reverseTransformer:(id)reverseTransformer;
- (id)_init;
- (id)reverseTransformedValue:(id)value;
- (id)reverseTransformedValue:(id)value context:(id)context;
- (id)transformedValue:(id)value;
- (id)transformedValue:(id)value context:(id)context;
@end

@implementation PFGenericValueTransformer

- (PFGenericValueTransformer)init
{
  [(PFGenericValueTransformer *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PFGenericValueTransformer;
  return [(PFGenericValueTransformer *)&v3 init];
}

- (PFGenericValueTransformer)initWithTransformedValueClass:(Class)class transformer:(id)transformer reverseValueClass:(Class)valueClass reverseTransformer:(id)reverseTransformer
{
  v9 = MEMORY[0x1E696AEC0];
  reverseTransformerCopy = reverseTransformer;
  transformerCopy = transformer;
  v11 = objc_opt_self();
  v12 = NSStringFromClass(v11);
  if (class)
  {
    v13 = NSStringFromClass(class);
    if (valueClass)
    {
LABEL_3:
      v14 = NSStringFromClass(valueClass);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = @"NILTRANSFORMEDVALUECLASS";
    if (valueClass)
    {
      goto LABEL_3;
    }
  }

  v14 = @"NILREVERSEVALUECLASS";
LABEL_6:
  v15 = [v9 stringWithFormat:@"%@_%@_TO_%@_TRANSFORMER", v12, v13, v14];
  v16 = objc_opt_self();
  v17 = BSObjCClassCreate();

  if (valueClass)
  {
  }

  if (class)
  {
  }

  v18 = [[v17 alloc] initWithTransformedValueClass:class transformer:transformerCopy reverseValueClass:valueClass reverseTransformer:reverseTransformerCopy];
  return v18;
}

BOOL __108__PFGenericValueTransformer_initWithTransformedValueClass_transformer_reverseValueClass_reverseTransformer___block_invoke(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __108__PFGenericValueTransformer_initWithTransformedValueClass_transformer_reverseValueClass_reverseTransformer___block_invoke_2;
  v7[3] = &__block_descriptor_40_e11__24__0_8_16lu32l8;
  v7[4] = *(a1 + 32);
  v3 = MEMORY[0x1C691C400](v7);
  v4 = imp_implementationWithBlock(v3);

  Class = object_getClass(a2);
  return class_addMethod(Class, sel_transformedValueClass, v4, "@");
}

- (PFGenericValueTransformer)initWithTransformedValueClass:(Class)class transformer:(id)transformer
{
  v6 = MEMORY[0x1E696AEC0];
  transformerCopy = transformer;
  v8 = objc_opt_self();
  v9 = NSStringFromClass(v8);
  v10 = NSStringFromClass(class);
  v11 = [v6 stringWithFormat:@"%@_%@", v9, v10];
  v12 = objc_opt_self();
  v13 = BSObjCClassCreate();

  v14 = [[v13 alloc] initWithTransformedValueClass:class transformer:transformerCopy];
  return v14;
}

BOOL __71__PFGenericValueTransformer_initWithTransformedValueClass_transformer___block_invoke(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PFGenericValueTransformer_initWithTransformedValueClass_transformer___block_invoke_2;
  v7[3] = &__block_descriptor_40_e11__24__0_8_16lu32l8;
  v7[4] = *(a1 + 32);
  v3 = MEMORY[0x1C691C400](v7);
  v4 = imp_implementationWithBlock(v3);

  Class = object_getClass(a2);
  return class_addMethod(Class, sel_transformedValueClass, v4, "@");
}

- (id)reverseTransformedValue:(id)value
{
  v5.receiver = self;
  v5.super_class = PFGenericValueTransformer;
  v3 = [(PFGenericValueTransformer *)&v5 reverseTransformedValue:value];

  return v3;
}

- (id)transformedValue:(id)value
{
  v5.receiver = self;
  v5.super_class = PFGenericValueTransformer;
  v3 = [(PFGenericValueTransformer *)&v5 transformedValue:value];

  return v3;
}

- (id)transformedValue:(id)value context:(id)context
{
  v6.receiver = self;
  v6.super_class = PFGenericValueTransformer;
  context = [(PFGenericValueTransformer *)&v6 transformedValue:value, context];

  return context;
}

- (id)reverseTransformedValue:(id)value context:(id)context
{
  v6.receiver = self;
  v6.super_class = PFGenericValueTransformer;
  context = [(PFGenericValueTransformer *)&v6 reverseTransformedValue:value, context];

  return context;
}

@end