@interface KTNSErrorValueTransformer
+ (void)registerTransformer;
- (id)allowedTopLevelClasses;
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation KTNSErrorValueTransformer

- (id)allowedTopLevelClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (void)registerTransformer
{
  v2 = MEMORY[0x1E696B0A0];
  v4 = objc_alloc_init(KTNSErrorValueTransformer);
  v3 = +[KTNSErrorValueTransformer name];
  [v2 setValueTransformer:v4 forName:v3];
}

- (id)transformedValue:(id)value
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD0];
  valueCopy = value;
  v10 = 0;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:valueCopy error:&v10];

  v6 = v10;
  if (v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_11 != -1)
    {
      [KTNSErrorValueTransformer transformedValue:];
    }

    v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_11;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_ERROR, "failed to transform from data to NSError: %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t __46__KTNSErrorValueTransformer_transformedValue___block_invoke()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_11 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (id)reverseTransformedValue:(id)value
{
  v14 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E697AAC0] cleanseErrorForXPC:valueCopy];

    v5 = [TransparencyError truncateUnderlyingErrorDepth:v4 maxDepth:10];

    v11 = 0;
    v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v11];
    v7 = v11;
    if (!v6)
    {
      if (TRANSPARENCY_DEFAULT_LOG_BLOCK_11 != -1)
      {
        [KTNSErrorValueTransformer reverseTransformedValue:];
      }

      v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_11;
      if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v7;
        _os_log_impl(&dword_1E10DB000, v8, OS_LOG_TYPE_ERROR, "failed to transform from NSError to data: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
    v5 = valueCopy;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __53__KTNSErrorValueTransformer_reverseTransformedValue___block_invoke()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_11 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

@end