@interface PXBarAppearance(DefaultImplementationDelegate)
+ (PUPXBarAppearanceImplementationDelegate)defaultImplementationDelegate;
@end

@implementation PXBarAppearance(DefaultImplementationDelegate)

+ (PUPXBarAppearanceImplementationDelegate)defaultImplementationDelegate
{
  v0 = objc_alloc_init(PUPXBarAppearanceImplementationDelegate);

  return v0;
}

@end