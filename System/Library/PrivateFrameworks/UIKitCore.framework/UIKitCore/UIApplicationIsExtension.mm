@interface UIApplicationIsExtension
@end

@implementation UIApplicationIsExtension

void ___UIApplicationIsExtension_block_invoke()
{
  v0 = [MEMORY[0x1E696ABD0] extensionInfoForCurrentProcess];

  if (v0)
  {
    byte_1EA992DAB = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v1 infoDictionary];
    v3 = [v2 objectForKey:@"NSExtension"];

    if (v3 || ([MEMORY[0x1E696AAE8] mainBundle], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "infoDictionary"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKey:", @"PlugInKit"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v6))
    {
      if (os_variant_has_internal_diagnostics())
      {
        v9 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Plist keys indicate the current process is an extension but NSExtensionMain() has not been called. UIKit will treat this process as an extension.", buf, 2u);
        }
      }

      else
      {
        v7 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA992E80) + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *v10 = 0;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Plist keys indicate the current process is an extension but NSExtensionMain() has not been called. UIKit will treat this process as an extension.", v10, 2u);
        }
      }

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    byte_1EA992DAB = v8;
  }
}

@end