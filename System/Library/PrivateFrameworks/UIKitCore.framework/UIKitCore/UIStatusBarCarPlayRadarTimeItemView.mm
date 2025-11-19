@interface UIStatusBarCarPlayRadarTimeItemView
- (UIStatusBarCarPlayRadarTimeItemView)initWithFrame:(CGRect)a3;
- (id)_timeImageSet;
- (id)contentsImage;
- (id)highlightImage;
- (void)_gatheringLogsDidChangeStatusNotification:(id)a3;
- (void)dealloc;
@end

@implementation UIStatusBarCarPlayRadarTimeItemView

- (UIStatusBarCarPlayRadarTimeItemView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = UIStatusBarCarPlayRadarTimeItemView;
  v3 = [(UIView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v3->_isInternalInstall = os_variant_has_internal_diagnostics();
    if (CFPreferencesGetAppBooleanValue(@"UIStatusBarRadarTimeItemEnabled", @"com.apple.UIKit", 0))
    {
      v4 = 1;
    }

    else if (v3->_isInternalInstall)
    {
      if (_UIInternalPreferencesRevisionOnce != -1)
      {
        dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
      }

      if (_UIInternalPreferencesRevisionVar >= 1)
      {
        v9 = _UIInternalPreference_UIStatusBarInternalRadarTimeItemEnabled;
        if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_UIStatusBarInternalRadarTimeItemEnabled)
        {
          v5 = 1;
        }

        else
        {
          v10 = _UIInternalPreferencesRevisionVar;
          do
          {
            v5 = v10 >= v9;
            if (v10 < v9)
            {
              break;
            }

            _UIInternalPreferenceSync(v10, &_UIInternalPreference_UIStatusBarInternalRadarTimeItemEnabled, @"UIStatusBarInternalRadarTimeItemEnabled", _UIInternalPreferenceUpdateBool);
            v9 = _UIInternalPreference_UIStatusBarInternalRadarTimeItemEnabled;
          }

          while (v10 != _UIInternalPreference_UIStatusBarInternalRadarTimeItemEnabled);
        }
      }

      else
      {
        v5 = 1;
      }

      if (byte_1EA95E674)
      {
        v4 = 1;
      }

      else
      {
        v4 = v5;
      }
    }

    else
    {
      v4 = 0;
    }

    v3->_radarItemEnabled = v4;
    if (v3->_isInternalInstall)
    {
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 addObserver:v3 selector:sel__gatheringLogsDidChangeStatusNotification_ name:@"UIStatusBarCarPlayDiagnosticsStartedNotification" object:0];

      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 addObserver:v3 selector:sel__gatheringLogsDidChangeStatusNotification_ name:@"UIStatusBarCarPlayDiagnosticsCompletedNotification" object:0];
    }
  }

  return v3;
}

- (void)dealloc
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIStatusBarCarPlayDiagnosticsStartedNotification";
  v6[1] = @"UIStatusBarCarPlayDiagnosticsCompletedNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = UIStatusBarCarPlayRadarTimeItemView;
  [(UIStatusBarItemView *)&v5 dealloc];
}

- (id)highlightImage
{
  v2 = [(UIStatusBarItemView *)self foregroundStyle];
  v3 = MEMORY[0x1E696AEC0];
  [v2 scale];
  v5 = [v3 stringWithFormat:@"_internal_radar_time_highlight_%ix.png", v4];
  v6 = MEMORY[0x1E696AAE8];
  v7 = _UIKitResourceBundlePath(@"CarPlayArtwork.bundle");
  v8 = [v6 bundleWithPath:v7];

  v9 = [UIImage imageNamed:v5 inBundle:v8];
  v10 = [v9 CGImage];
  [v2 scale];
  v11 = [UIImage imageWithCGImage:v10 scale:0 orientation:?];

  v12 = [_UILegibilityImageSet imageFromImage:v11 withShadowImage:0];

  return v12;
}

- (id)contentsImage
{
  if ([(UIStatusBarCarPlayRadarTimeItemView *)self _showRadarButtonForInternalInstalls]&& [(UIView *)self isFocused])
  {
    v3 = [(UIStatusBarItemView *)self foregroundStyle];
    v4 = MEMORY[0x1E696AEC0];
    [v3 scale];
    v6 = [v4 stringWithFormat:@"_internal_radar_time_%ix.png", v5];
    v7 = MEMORY[0x1E696AAE8];
    v8 = _UIKitResourceBundlePath(@"CarPlayArtwork.bundle");
    v9 = [v7 bundleWithPath:v8];

    v10 = [UIImage imageNamed:v6 inBundle:v9];
    v11 = [v10 CGImage];
    [v3 scale];
    v12 = [UIImage imageWithCGImage:v11 scale:0 orientation:?];

    v13 = [_UILegibilityImageSet imageFromImage:v12 withShadowImage:0];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = UIStatusBarCarPlayRadarTimeItemView;
    v13 = [(UIStatusBarCarPlayTimeItemView *)&v15 contentsImage];
  }

  return v13;
}

- (id)_timeImageSet
{
  if (self->_currentlyGatheringLogs)
  {
    v3 = +[UIColor systemPurpleColor];
    v4 = [(UIStatusBarCarPlayTimeItemView *)self _timeImageSetForColor:v3];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIStatusBarCarPlayRadarTimeItemView;
    v4 = [(UIStatusBarCarPlayTimeItemView *)&v6 _timeImageSet];
  }

  return v4;
}

- (void)_gatheringLogsDidChangeStatusNotification:(id)a3
{
  v4 = [a3 name];
  v5 = [v4 isEqualToString:@"UIStatusBarCarPlayDiagnosticsStartedNotification"];

  if (self->_currentlyGatheringLogs != v5)
  {
    self->_currentlyGatheringLogs = v5;

    [(UIStatusBarButtonActionItemView *)self updateContentsAndWidth];
  }
}

@end