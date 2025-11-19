@interface UIKeyboardDockViewShouldShowDebugHitRect
@end

@implementation UIKeyboardDockViewShouldShowDebugHitRect

uint64_t ___UIKeyboardDockViewShouldShowDebugHitRect_block_invoke()
{
  v0 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"ShowDockItemTouchArea"];
  v2 = [v1 BOOLValue];

  result = os_variant_has_internal_diagnostics();
  if (!result)
  {
    v2 = 0;
  }

  _MergedGlobals_17_3 = v2;
  return result;
}

@end