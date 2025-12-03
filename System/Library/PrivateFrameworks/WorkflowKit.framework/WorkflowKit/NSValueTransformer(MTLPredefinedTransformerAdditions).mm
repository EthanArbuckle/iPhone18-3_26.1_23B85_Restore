@interface NSValueTransformer(MTLPredefinedTransformerAdditions)
+ (id)mtl_BOOLeanValueTransformer;
+ (id)mtl_URLValueTransformer;
+ (id)mtl_UUIDValueTransformer;
+ (id)mtl_arrayMappingTransformerWithTransformer:()MTLPredefinedTransformerAdditions;
+ (id)mtl_dateTransformerWithDateFormat:()MTLPredefinedTransformerAdditions calendar:locale:timeZone:defaultDate:;
+ (id)mtl_numberTransformerWithNumberStyle:()MTLPredefinedTransformerAdditions locale:;
+ (id)mtl_transformerWithFormatter:()MTLPredefinedTransformerAdditions forObjectClass:;
+ (id)mtl_validatingTransformerForClass:()MTLPredefinedTransformerAdditions;
+ (id)mtl_valueMappingTransformerWithDictionary:()MTLPredefinedTransformerAdditions defaultValue:reverseDefaultValue:;
@end

@implementation NSValueTransformer(MTLPredefinedTransformerAdditions)

+ (id)mtl_transformerWithFormatter:()MTLPredefinedTransformerAdditions forObjectClass:
{
  v7 = a3;
  if (v7)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSValueTransformer+MTLPredefinedTransformerAdditions.m" lineNumber:360 description:{@"Invalid parameter not satisfying: %@", @"formatter != nil"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSValueTransformer+MTLPredefinedTransformerAdditions.m" lineNumber:361 description:{@"Invalid parameter not satisfying: %@", @"objectClass != nil"}];

LABEL_3:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __101__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_transformerWithFormatter_forObjectClass___block_invoke;
  v16[3] = &unk_1E837D368;
  v18 = a4;
  v17 = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_transformerWithFormatter_forObjectClass___block_invoke_2;
  v13[3] = &unk_1E837D390;
  v14 = v17;
  v15 = a4;
  v8 = v17;
  v9 = [MTLValueTransformer transformerUsingForwardBlock:v16 reverseBlock:v13];

  return v9;
}

+ (id)mtl_numberTransformerWithNumberStyle:()MTLPredefinedTransformerAdditions locale:
{
  v6 = MEMORY[0x1E696ADA0];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  [v8 setNumberStyle:a3];
  [v8 setLocale:v7];

  v9 = [self mtl_transformerWithFormatter:v8 forObjectClass:objc_opt_class()];

  return v9;
}

+ (id)mtl_dateTransformerWithDateFormat:()MTLPredefinedTransformerAdditions calendar:locale:timeZone:defaultDate:
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  if (![v17 length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSValueTransformer+MTLPredefinedTransformerAdditions.m" lineNumber:334 description:{@"Invalid parameter not satisfying: %@", @"dateFormat.length"}];
  }

  v18 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v18 setDateFormat:v17];

  [v18 setCalendar:v16];
  [v18 setLocale:v15];

  [v18 setTimeZone:v14];
  [v18 setDefaultDate:v13];

  v19 = [MEMORY[0x1E696B0A0] mtl_transformerWithFormatter:v18 forObjectClass:objc_opt_class()];

  return v19;
}

+ (id)mtl_valueMappingTransformerWithDictionary:()MTLPredefinedTransformerAdditions defaultValue:reverseDefaultValue:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSValueTransformer+MTLPredefinedTransformerAdditions.m" lineNumber:309 description:{@"Invalid parameter not satisfying: %@", @"dictionary != nil"}];
  }

  v12 = [v9 count];
  v13 = MEMORY[0x1E695DFD8];
  allValues = [v9 allValues];
  v15 = [v13 setWithArray:allValues];
  v16 = [v15 count];

  if (v12 != v16)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSValueTransformer+MTLPredefinedTransformerAdditions.m" lineNumber:310 description:{@"Invalid parameter not satisfying: %@", @"dictionary.count == [[NSSet setWithArray:dictionary.allValues] count]"}];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __132__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_valueMappingTransformerWithDictionary_defaultValue_reverseDefaultValue___block_invoke;
  v27[3] = &unk_1E837D2F0;
  v28 = v9;
  v29 = v10;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __132__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_valueMappingTransformerWithDictionary_defaultValue_reverseDefaultValue___block_invoke_2;
  v24[3] = &unk_1E837D340;
  v25 = v28;
  v26 = v11;
  v17 = v11;
  v18 = v28;
  v19 = v10;
  v20 = [MTLValueTransformer transformerUsingForwardBlock:v27 reverseBlock:v24];

  return v20;
}

+ (id)mtl_validatingTransformerForClass:()MTLPredefinedTransformerAdditions
{
  if (!a3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSValueTransformer+MTLPredefinedTransformerAdditions.m" lineNumber:287 description:{@"Invalid parameter not satisfying: %@", @"modelClass != nil"}];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_validatingTransformerForClass___block_invoke;
  v9[3] = &__block_descriptor_40_e16__32__0_8_B16__24lu32l8;
  v9[4] = a3;
  v4 = [MTLValueTransformer transformerUsingForwardBlock:v9];

  return v4;
}

+ (id)mtl_arrayMappingTransformerWithTransformer:()MTLPredefinedTransformerAdditions
{
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSValueTransformer+MTLPredefinedTransformerAdditions.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"transformer != nil"}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_arrayMappingTransformerWithTransformer___block_invoke;
  aBlock[3] = &unk_1E837E190;
  v6 = v5;
  v15 = v6;
  v7 = _Block_copy(aBlock);
  if ([objc_opt_class() allowsReverseTransformation] && (v12[0] = MEMORY[0x1E69E9820], v12[1] = 3221225472, v12[2] = __100__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_arrayMappingTransformerWithTransformer___block_invoke_2, v12[3] = &unk_1E837E190, v13 = v6, v8 = _Block_copy(v12), v13, v8))
  {
    v9 = [MTLValueTransformer transformerUsingForwardBlock:v7 reverseBlock:v8];
  }

  else
  {
    v9 = [MTLValueTransformer transformerUsingForwardBlock:v7];
  }

  return v9;
}

+ (id)mtl_BOOLeanValueTransformer
{
  if (mtl_BOOLeanValueTransformer_onceToken != -1)
  {
    dispatch_once(&mtl_BOOLeanValueTransformer_onceToken, &__block_literal_global_49);
  }

  v1 = mtl_BOOLeanValueTransformer_BOOLeanValueTransformer;

  return v1;
}

+ (id)mtl_UUIDValueTransformer
{
  if (mtl_UUIDValueTransformer_onceToken != -1)
  {
    dispatch_once(&mtl_UUIDValueTransformer_onceToken, &__block_literal_global_29);
  }

  v1 = mtl_UUIDValueTransformer_UUIDValueTransformer;

  return v1;
}

+ (id)mtl_URLValueTransformer
{
  if (mtl_URLValueTransformer_onceToken != -1)
  {
    dispatch_once(&mtl_URLValueTransformer_onceToken, &__block_literal_global_61492);
  }

  v1 = mtl_URLValueTransformer_URLValueTransformer;

  return v1;
}

@end