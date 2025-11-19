@interface UIFocusDebugWindow
@end

@implementation UIFocusDebugWindow

void __56___UIFocusDebugWindow_ModuleRegistration__moduleClasses__block_invoke()
{
  v0 = objc_opt_new();
  v5 = v0;
  if (qword_1ED49EFF8 == -1)
  {
    v1 = v0;
  }

  else
  {
    dispatch_once(&qword_1ED49EFF8, &__block_literal_global_4_7);
    v1 = v5;
  }

  if (_MergedGlobals_1170 == 1)
  {
    [v5 addObject:objc_opt_class()];
    v2 = dyld_program_sdk_at_least();
    v1 = v5;
    if (v2)
    {
      [v5 addObject:objc_opt_class()];
      v1 = v5;
    }
  }

  v3 = [v1 copy];
  v4 = qword_1ED49EFE8;
  qword_1ED49EFE8 = v3;
}

@end