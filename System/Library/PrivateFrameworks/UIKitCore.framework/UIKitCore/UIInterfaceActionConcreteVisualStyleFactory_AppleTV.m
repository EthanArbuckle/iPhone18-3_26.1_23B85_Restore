@interface UIInterfaceActionConcreteVisualStyleFactory_AppleTV
+ (id)styleForTraitCollection:(id)a3 presentationStyle:(int64_t)a4;
@end

@implementation UIInterfaceActionConcreteVisualStyleFactory_AppleTV

+ (id)styleForTraitCollection:(id)a3 presentationStyle:(int64_t)a4
{
  if ([a3 userInterfaceIdiom] == 8)
  {
    v4 = off_1E70E9B90;
  }

  else if (_UISolariumEnabled())
  {
    v4 = off_1E70E9BA0;
  }

  else if (dyld_program_sdk_at_least() && (_os_feature_enabled_impl() & 1) != 0)
  {
    v4 = off_1E70E9BA8;
  }

  else
  {
    v4 = off_1E70E9B98;
  }

  v5 = objc_alloc_init(*v4);

  return v5;
}

@end