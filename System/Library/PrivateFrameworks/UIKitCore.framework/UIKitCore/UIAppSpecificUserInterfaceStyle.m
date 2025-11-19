@interface UIAppSpecificUserInterfaceStyle
@end

@implementation UIAppSpecificUserInterfaceStyle

void ___UIAppSpecificUserInterfaceStyle_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least())
  {
    v0 = [MEMORY[0x1E696AAE8] mainBundle];
    v1 = [v0 objectForInfoDictionaryKey:@"UIUserInterfaceStyle"];

    if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v2 = dyld_program_sdk_at_least();

      if (v2)
      {
        v1 = @"Automatic";
      }

      else
      {
        v1 = @"Light";
      }
    }

    if (([(__CFString *)v1 isEqualToString:@"Automatic"]& 1) != 0)
    {
      v3 = 0;
    }

    else if (([(__CFString *)v1 isEqualToString:@"Dark"]& 1) != 0)
    {
      v3 = 2;
    }

    else
    {
      if (([(__CFString *)v1 isEqualToString:@"Light"]& 1) == 0)
      {
        v4 = *(__UILogGetCategoryCachedImpl("UIInterfaceStyle", &qword_1EA9931E8) + 8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = 138543874;
          v6 = v1;
          v7 = 2114;
          v8 = @"UIUserInterfaceStyle";
          v9 = 2114;
          v10 = @"Light";
          _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "'%{public}@' is not a recognized value for %{public}@. Defaulting to %{public}@.", &v5, 0x20u);
        }
      }

      v3 = 1;
    }

    qword_1EA9931D8 = v3;
  }

  else
  {
    qword_1EA9931D8 = 1;
  }
}

@end