@interface SBLockOverlayView
- (id)_legibilitySettingsForStyle:(unint64_t)style;
@end

@implementation SBLockOverlayView

- (id)_legibilitySettingsForStyle:(unint64_t)style
{
  if (style > 1)
  {
    v8.receiver = self;
    v8.super_class = SBLockOverlayView;
    v6 = [(SBUILockOverlayView *)&v8 _legibilitySettingsForStyle:?];
  }

  else
  {
    v3 = +[SBWallpaperController sharedInstance];
    v4 = [v3 legibilitySettingsForVariant:0];

    if ([v4 style] == 2)
    {
      v5 = [MEMORY[0x277D760A8] sharedInstanceForStyle:2];
    }

    else
    {
      v5 = v4;
    }

    v6 = v5;
  }

  return v6;
}

@end