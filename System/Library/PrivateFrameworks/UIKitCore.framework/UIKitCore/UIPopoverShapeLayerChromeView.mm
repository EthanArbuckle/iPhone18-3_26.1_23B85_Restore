@interface UIPopoverShapeLayerChromeView
@end

@implementation UIPopoverShapeLayerChromeView

void __57___UIPopoverShapeLayerChromeView__disableGlassForProcess__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.commandandcontrol"];

  if (v2)
  {
    _MergedGlobals_5_20 = 1;
  }
}

@end