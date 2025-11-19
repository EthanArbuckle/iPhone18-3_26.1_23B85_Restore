@interface UISceneSizeRestrictionsLayoutPreferencesImpl
@end

@implementation UISceneSizeRestrictionsLayoutPreferencesImpl

void __83___UISceneSizeRestrictionsLayoutPreferencesImpl__setNeedsUpdateOfLayoutPreferences__block_invoke(double *a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (a1[4] > 0.0)
  {
    [v6 setMinimumWidth:?];
  }

  if (a1[5] > 0.0)
  {
    [v6 setMinimumHeight:?];
  }

  if (a1[6] < 1.79769313e308)
  {
    [v6 setMaximumWidth:?];
  }

  if (a1[7] < 1.79769313e308)
  {
    [v6 setMaximumHeight:?];
  }
}

@end