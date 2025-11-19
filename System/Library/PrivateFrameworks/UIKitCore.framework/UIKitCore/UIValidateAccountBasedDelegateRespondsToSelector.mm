@interface UIValidateAccountBasedDelegateRespondsToSelector
@end

@implementation UIValidateAccountBasedDelegateRespondsToSelector

void ___UIValidateAccountBasedDelegateRespondsToSelector_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("com.apple.UIKit.accountBasedValidation", v2);
  v1 = qword_1ED4A2720;
  qword_1ED4A2720 = v0;
}

void ___UIValidateAccountBasedDelegateRespondsToSelector_block_invoke_2(uint64_t a1)
{
  if (qword_1ED4A2710 != -1)
  {
    dispatch_once(&qword_1ED4A2710, &__block_literal_global_655);
  }

  if (_MergedGlobals_1357 == 1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = ___UIValidateAccountBasedDelegateRespondsToSelector_block_invoke_3;
    v4[3] = &unk_1E70F32F0;
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

void ___UIValidateAccountBasedDelegateRespondsToSelector_block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("EnterpriseUtilities", &_block_invoke___s_category_9) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(a1 + 32);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412802;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "UIKit detected a client bug in an account based app: Delegate <%@: %p> does not respond to -%@", &v8, 0x20u);
  }
}

@end