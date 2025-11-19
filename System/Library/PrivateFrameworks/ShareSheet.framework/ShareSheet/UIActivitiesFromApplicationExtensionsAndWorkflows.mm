@interface UIActivitiesFromApplicationExtensionsAndWorkflows
@end

@implementation UIActivitiesFromApplicationExtensionsAndWorkflows

void ___UIActivitiesFromApplicationExtensionsAndWorkflows_block_invoke(uint64_t a1, void *a2)
{
  v3 = _UIActivityFromApplicationExtension(a2);
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

void ___UIActivitiesFromApplicationExtensionsAndWorkflows_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [[UIShortcutActivity alloc] initWithPartial:v4];
    [*(a1 + 32) addObject:v5];
  }

  else
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___UIActivitiesFromApplicationExtensionsAndWorkflows_block_invoke_2_cold_1(v3, v6);
    }
  }
}

void ___UIActivitiesFromApplicationExtensionsAndWorkflows_block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Activity is not an expected UIShortcutActivity:%@", &v2, 0xCu);
}

@end