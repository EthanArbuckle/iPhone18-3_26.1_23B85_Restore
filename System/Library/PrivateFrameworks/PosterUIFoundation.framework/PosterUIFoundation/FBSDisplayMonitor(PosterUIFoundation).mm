@interface FBSDisplayMonitor(PosterUIFoundation)
+ (id)pui_sharedDisplayMonitor;
@end

@implementation FBSDisplayMonitor(PosterUIFoundation)

+ (id)pui_sharedDisplayMonitor
{
  if (pui_sharedDisplayMonitor_onceToken != -1)
  {
    +[FBSDisplayMonitor(PosterUIFoundation) pui_sharedDisplayMonitor];
  }

  v1 = pui_sharedDisplayMonitor_displayMonitor;

  return v1;
}

@end