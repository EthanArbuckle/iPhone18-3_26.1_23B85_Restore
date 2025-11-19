@interface UIImageTextAttachment
@end

@implementation UIImageTextAttachment

id __90___UIImageTextAttachment__imageAdaptedForTextAtIndex_withAttributes_inContainer_sizeOnly___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) textContentManager];
  v2 = objc_opt_class();
  v3 = v1;
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (os_variant_has_internal_diagnostics())
  {
    if (!v5)
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v9 = 138412546;
        v10 = 0;
        v11 = 2080;
        v12 = "NSTextContentStorage";
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "%@ is of unexpected class (expected class %s)", &v9, 0x16u);
      }
    }
  }

  else if (!v5)
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &_block_invoke___s_category_5) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = 0;
      v11 = 2080;
      v12 = "NSTextContentStorage";
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "%@ is of unexpected class (expected class %s)", &v9, 0x16u);
    }
  }

  return v5;
}

id __90___UIImageTextAttachment__imageAdaptedForTextAtIndex_withAttributes_inContainer_sizeOnly___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = [*(a1 + 32) _colorForFlattening];
    if (!v3)
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        [v4 objectForKeyedSubscript:*off_1E70EC920];
      }

      else
      {
        [*(a1 + 48) _deriveAttribute:*off_1E70EC920 inStorage:*(a1 + 56) atIndex:*(a1 + 64)];
      }
      v3 = ;
    }
  }

  return v3;
}

@end