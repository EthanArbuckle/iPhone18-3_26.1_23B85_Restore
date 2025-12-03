@interface PUOneUpScreenshotInsetUtilities
+ (double)cornerRadiusForAspectRatio:(double)ratio traitCollection:(id)collection;
@end

@implementation PUOneUpScreenshotInsetUtilities

+ (double)cornerRadiusForAspectRatio:(double)ratio traitCollection:(id)collection
{
  collectionCopy = collection;
  v7 = static OneUpScreenshotInsetUtilities.cornerRadiusForAspectRatio(_:traitCollection:)(collection, ratio);

  return v7;
}

@end