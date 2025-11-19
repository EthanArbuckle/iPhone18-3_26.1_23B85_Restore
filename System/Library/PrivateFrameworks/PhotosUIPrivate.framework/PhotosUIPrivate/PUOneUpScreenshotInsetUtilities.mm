@interface PUOneUpScreenshotInsetUtilities
+ (double)cornerRadiusForAspectRatio:(double)a3 traitCollection:(id)a4;
@end

@implementation PUOneUpScreenshotInsetUtilities

+ (double)cornerRadiusForAspectRatio:(double)a3 traitCollection:(id)a4
{
  v6 = a4;
  v7 = static OneUpScreenshotInsetUtilities.cornerRadiusForAspectRatio(_:traitCollection:)(a4, a3);

  return v7;
}

@end