@interface UIInputViewSetPlacementInvisibleForFloatingTransition
+ (id)placementWithPlacement:(id)a3 forFloatingAssistantViewTransition:(BOOL)a4;
- (BOOL)showsEditItems;
@end

@implementation UIInputViewSetPlacementInvisibleForFloatingTransition

+ (id)placementWithPlacement:(id)a3 forFloatingAssistantViewTransition:(BOOL)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (([v7 isVisible] & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = 136315138;
        v14 = "+[UIInputViewSetPlacementInvisibleForFloatingTransition placementWithPlacement:forFloatingAssistantViewTransition:]";
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "%s: Should not be called with an invisible placement", &v13, 0xCu);
      }
    }

    else
    {
      v11 = *(__UILogGetCategoryCachedImpl("Assert", &placementWithPlacement_forFloatingAssistantViewTransition____s_category) + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315138;
        v14 = "+[UIInputViewSetPlacementInvisibleForFloatingTransition placementWithPlacement:forFloatingAssistantViewTransition:]";
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%s: Should not be called with an invisible placement", &v13, 0xCu);
      }
    }
  }

  v8 = objc_alloc_init(a1);
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 5, a3);
    v9[48] = a4;
  }

  return v9;
}

- (BOOL)showsEditItems
{
  if (self->_isFloatingAssistantView)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = UIInputViewSetPlacementInvisibleForFloatingTransition;
  return [(UIInputViewSetPlacementWrapper *)&v5 showsEditItems];
}

@end