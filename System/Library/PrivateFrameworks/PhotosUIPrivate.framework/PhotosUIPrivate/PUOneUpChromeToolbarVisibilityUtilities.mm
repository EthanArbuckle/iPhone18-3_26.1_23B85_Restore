@interface PUOneUpChromeToolbarVisibilityUtilities
+ (BOOL)sizeClassSupportsVisibleToolbarWithTraitCollection:(id)collection;
@end

@implementation PUOneUpChromeToolbarVisibilityUtilities

+ (BOOL)sizeClassSupportsVisibleToolbarWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = static OneUpChromeToolbarVisibilityUtilities.sizeClassSupportsVisibleToolbar(traitCollection:)(collectionCopy);

  return v4;
}

@end