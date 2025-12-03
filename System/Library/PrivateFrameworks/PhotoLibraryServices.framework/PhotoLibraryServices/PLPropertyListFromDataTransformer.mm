@interface PLPropertyListFromDataTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation PLPropertyListFromDataTransformer

- (id)reverseTransformedValue:(id)value
{
  v7 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 0;
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:valueCopy options:0 format:0 error:&v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)transformedValue:(id)value
{
  v11 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (valueCopy)
  {
    v8 = 0;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:valueCopy format:200 options:0 error:&v8];
    v5 = v8;
    if (!v4)
    {
      v6 = PLBackendGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v5;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Unable to convert property list: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end