@interface UIParallaxTransitionPanGestureRecognizer
@end

@implementation UIParallaxTransitionPanGestureRecognizer

uint64_t __70___UIParallaxTransitionPanGestureRecognizer_isContentBackSwipeEnabled__block_invoke()
{
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UINavigationContentBackSwipe, @"UINavigationContentBackSwipe", _UIInternalPreferenceUpdateInteger) & 1) == 0 && qword_1ED48ACB8)
  {
    result = qword_1ED48ACB8 >= 0;
  }

  else
  {
    result = dyld_program_sdk_at_least();
    if (result)
    {
      result = _os_feature_enabled_impl();
    }
  }

  _MergedGlobals_19_2 = result;
  return result;
}

@end