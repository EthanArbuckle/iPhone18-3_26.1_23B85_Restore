@interface UIScrollViewSkipIsEnabled
@end

@implementation UIScrollViewSkipIsEnabled

void ____UIScrollViewSkipIsEnabled_block_invoke()
{
  if (((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_EnableUIScrollViewFrameSkip, @"EnableUIScrollViewFrameSkip", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1ED48B68C) && !_UIVariableFrameDurationEnabled())
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 _refreshRate];
    byte_1EA9690B9 = v0 < 0.01;
  }

  else
  {
    byte_1EA9690B9 = 0;
  }
}

@end