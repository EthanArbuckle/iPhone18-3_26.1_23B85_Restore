@interface UIViewAutoLayoutShouldAbandonKVO2
@end

@implementation UIViewAutoLayoutShouldAbandonKVO2

void ___UIViewAutoLayoutShouldAbandonKVO2_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UIViewAutoLayoutAbandonKVO2, @"UIViewAutoLayoutAbandonKVO2");
  if (byte_1ED48B67C)
  {
    v1 = 1;
  }

  else
  {
    v1 = v0;
  }

  _MergedGlobals_64 = v1;
  if (v1 == 1)
  {
    _MergedGlobals_64 = [MEMORY[0x1E6997788] instancesRespondToSelector:sel_isObservingChangesForVariable_];
  }

  if (os_variant_has_internal_diagnostics())
  {
    if ((_MergedGlobals_64 & 1) == 0)
    {
      v2 = *(__UILogGetCategoryCachedImpl("LayoutConstraints", &qword_1ED4981C0) + 8);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = @"Auto Layout is using KVO2 to observe variable changes. To allow use of an alternative if available in Foundation, as mobile, defaults write com.apple.UIKit UIViewAutoLayoutAbandonKVO2 -BOOL YES";
        if (v1)
        {
          v3 = @"Auto Layout is using KVO2 to observe variable changes because the current version of Foundation does not support any other option";
        }

        v4 = 138412290;
        v5 = v3;
        _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "%@", &v4, 0xCu);
      }
    }
  }
}

@end