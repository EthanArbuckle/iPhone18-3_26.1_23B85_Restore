@interface UISceneRequestOptions
+ (id)_sceneRequestOptionsForActivatingSceneSession:(id)a3 activationOptions:(id)a4;
+ (id)initialClientSettings:(id)a3 activationOptions:(id)a4 targetSession:(id)a5;
@end

@implementation UISceneRequestOptions

+ (id)_sceneRequestOptionsForActivatingSceneSession:(id)a3 activationOptions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [a1 initialClientSettings:v8 activationOptions:v6 targetSession:v7];

  return v9;
}

+ (id)initialClientSettings:(id)a3 activationOptions:(id)a4 targetSession:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(_UIApplicationSceneRequestBuilder);
  v18 = 0;
  v12 = [(_UIApplicationSceneRequestBuilder *)v11 _optionsWithInitialClientSettings:v10 activationOptions:v9 targetSession:v8 optionsClass:a1 outError:&v18];

  v13 = v18;
  if (os_variant_has_internal_diagnostics())
  {
    if (!v13)
    {
      goto LABEL_3;
    }

    v15 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    v16 = [v13 localizedDescription];
    *buf = 138412290;
    v20 = v16;
    _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "An error was produced while building scene request options but will be ignored because a deprecated factory method was used. Error: %@", buf, 0xCu);
LABEL_11:

LABEL_12:
    goto LABEL_3;
  }

  if (v13)
  {
    v17 = *(__UILogGetCategoryCachedImpl("Assert", &initialClientSettings_activationOptions_targetSession____s_category) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v15 = v17;
      v16 = [v13 localizedDescription];
      *buf = 138412290;
      v20 = v16;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "An error was produced while building scene request options but will be ignored because a deprecated factory method was used. Error: %@", buf, 0xCu);
      goto LABEL_11;
    }
  }

LABEL_3:

  return v12;
}

@end