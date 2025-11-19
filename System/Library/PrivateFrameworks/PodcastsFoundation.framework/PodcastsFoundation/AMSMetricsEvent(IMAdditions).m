@interface AMSMetricsEvent(IMAdditions)
- (void)im_addPropertiesWithDictionary:()IMAdditions;
- (void)im_setProperty:()IMAdditions forBodyKey:;
@end

@implementation AMSMetricsEvent(IMAdditions)

- (void)im_addPropertiesWithDictionary:()IMAdditions
{
  v4 = [a3 im_jsonSerializableValue];
  [a1 addPropertiesWithDictionary:v4];
}

- (void)im_setProperty:()IMAdditions forBodyKey:
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 conformsToProtocol:&unk_1F54E01E8];
  if (!v6 || v8)
  {
    v9 = [v6 im_jsonSerializableValue];
  }

  else
  {
    v9 = v6;
    v10 = _IMStoreLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1D8CEC000, v10, OS_LOG_TYPE_ERROR, "The property %@ for key %@ isn't JSON serializable", &v12, 0x16u);
    }
  }

  [a1 setProperty:v9 forBodyKey:v7];

  v11 = *MEMORY[0x1E69E9840];
}

@end