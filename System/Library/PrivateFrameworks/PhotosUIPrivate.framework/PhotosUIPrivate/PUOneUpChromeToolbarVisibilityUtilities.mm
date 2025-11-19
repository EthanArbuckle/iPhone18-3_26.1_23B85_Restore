@interface PUOneUpChromeToolbarVisibilityUtilities
+ (BOOL)sizeClassSupportsVisibleToolbarWithTraitCollection:(id)a3;
@end

@implementation PUOneUpChromeToolbarVisibilityUtilities

+ (BOOL)sizeClassSupportsVisibleToolbarWithTraitCollection:(id)a3
{
  v3 = a3;
  v4 = static OneUpChromeToolbarVisibilityUtilities.sizeClassSupportsVisibleToolbar(traitCollection:)(v3);

  return v4;
}

@end