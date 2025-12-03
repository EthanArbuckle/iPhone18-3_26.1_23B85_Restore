@interface UIInterfaceActionConcreteVisualStyleFactory_CarPlay
+ (id)styleForTraitCollection:(id)collection presentationStyle:(int64_t)style;
@end

@implementation UIInterfaceActionConcreteVisualStyleFactory_CarPlay

+ (id)styleForTraitCollection:(id)collection presentationStyle:(int64_t)style
{
  v4 = off_1E70E9BB8;
  if (style)
  {
    v4 = off_1E70E9BB0;
  }

  v5 = objc_alloc_init(*v4);

  return v5;
}

@end