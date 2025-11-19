@interface UIInterfaceActionConcreteVisualStyleFactory_CarPlay
+ (id)styleForTraitCollection:(id)a3 presentationStyle:(int64_t)a4;
@end

@implementation UIInterfaceActionConcreteVisualStyleFactory_CarPlay

+ (id)styleForTraitCollection:(id)a3 presentationStyle:(int64_t)a4
{
  v4 = off_1E70E9BB8;
  if (a4)
  {
    v4 = off_1E70E9BB0;
  }

  v5 = objc_alloc_init(*v4);

  return v5;
}

@end