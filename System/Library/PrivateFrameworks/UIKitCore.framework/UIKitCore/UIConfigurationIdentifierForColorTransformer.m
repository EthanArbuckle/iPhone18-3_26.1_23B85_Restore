@interface UIConfigurationIdentifierForColorTransformer
@end

@implementation UIConfigurationIdentifierForColorTransformer

void ___UIConfigurationIdentifierForColorTransformer_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:1282];
  v1 = _MergedGlobals_1090;
  _MergedGlobals_1090 = v0;

  for (i = 2; i != 29; ++i)
  {
    v3 = _UIConfigurationColorTransformerForIdentifier(i);
    if (os_variant_has_internal_diagnostics())
    {
      if (!v3)
      {
        v4 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          v7 = i;
          _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Missing color transformer for identifier: %ld", buf, 0xCu);
        }
      }
    }

    else if (!v3)
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49DD18) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v7 = i;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Missing color transformer for identifier: %ld", buf, 0xCu);
      }
    }

    NSMapInsert(_MergedGlobals_1090, v3, i);
  }
}

@end