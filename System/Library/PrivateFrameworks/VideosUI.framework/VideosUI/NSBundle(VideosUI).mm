@interface NSBundle(VideosUI)
+ (id)vui_videosUIBundle;
@end

@implementation NSBundle(VideosUI)

+ (id)vui_videosUIBundle
{
  if (vui_videosUIBundle_onceToken != -1)
  {
    +[NSBundle(VideosUI) vui_videosUIBundle];
  }

  v1 = vui_videosUIBundle_bundle;

  return v1;
}

@end