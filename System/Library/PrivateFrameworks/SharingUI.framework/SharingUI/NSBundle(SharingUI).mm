@interface NSBundle(SharingUI)
+ (id)sfui_bundle;
@end

@implementation NSBundle(SharingUI)

+ (id)sfui_bundle
{
  if (sfui_bundle_onceToken != -1)
  {
    +[NSBundle(SharingUI) sfui_bundle];
  }

  v1 = sfui_bundle_frameworkBundle;

  return v1;
}

@end