@interface _UIFeedbackButtonBehavior
+ (id)buttonBehaviorWithStyle:(int64_t)style coordinateSpace:(id)space;
@end

@implementation _UIFeedbackButtonBehavior

+ (id)buttonBehaviorWithStyle:(int64_t)style coordinateSpace:(id)space
{
  spaceCopy = space;
  _UIIsPrivateMainBundle();
  if (dyld_program_sdk_at_least())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIButtonFeedbackGenerator.m" lineNumber:177 description:@"Use of _UIFeedbackButtonBehavior methods have been deprecated since iOS 10 and will be removed in a future version. Update to view-based _UIFeedbackButtonGenerator methods."];
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v12 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Use of _UIFeedbackButtonBehavior methods have been deprecated since iOS 10 and will be removed in a future version. Update to view-based _UIFeedbackButtonGenerator methods. This will become an assert in a future version.", buf, 2u);
    }
  }

  else
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &buttonBehaviorWithStyle_coordinateSpace____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Use of _UIFeedbackButtonBehavior methods have been deprecated since iOS 10 and will be removed in a future version. Update to view-based _UIFeedbackButtonGenerator methods. This will become an assert in a future version.", v13, 2u);
    }
  }

  v10 = [[self alloc] initWithStyle:style coordinateSpace:spaceCopy];

  return v10;
}

@end