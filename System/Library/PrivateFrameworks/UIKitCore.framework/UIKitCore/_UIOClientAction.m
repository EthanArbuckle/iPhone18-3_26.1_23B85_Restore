@interface _UIOClientAction
- (void)handleClientActionToOverlayService:(id)a3;
@end

@implementation _UIOClientAction

- (void)handleClientActionToOverlayService:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v5 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    v8 = objc_opt_class();
    v7 = NSStringFromClass(v8);
    v9 = 138412546;
    v10 = v7;
    v11 = 2048;
    v12 = self;
    _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "_UIOClientAction subclass <%@: %p> did not override -handleClientActionToOverlayService:", &v9, 0x16u);
  }

  else
  {
    v4 = *(__UILogGetCategoryCachedImpl("Assert", &handleClientActionToOverlayService____s_category) + 8);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138412546;
    v10 = v7;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "_UIOClientAction subclass <%@: %p> did not override -handleClientActionToOverlayService:", &v9, 0x16u);
  }

LABEL_5:
}

@end