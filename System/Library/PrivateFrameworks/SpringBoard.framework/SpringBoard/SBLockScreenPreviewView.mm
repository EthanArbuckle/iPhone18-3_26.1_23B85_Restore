@interface SBLockScreenPreviewView
- (SBLockScreenPreviewView)initWithFrame:(CGRect)a3 wallpaperController:(id)a4 options:(unint64_t)a5 wallpaperImage:(id)a6;
- (id)_statusBarReusePool;
- (void)_layoutCallToActionLabel;
- (void)_layoutDateView;
- (void)_layoutHomeGrabberView;
- (void)_layoutPageControl;
- (void)_layoutProudLockIconView;
- (void)_layoutQuickActionsView;
- (void)_layoutStatusBar;
- (void)_layoutWallpaperView;
- (void)_setupCallToActionLabel;
- (void)_setupDateViewWithOptions:(unint64_t)a3;
- (void)_setupHomeGrabberView;
- (void)_setupPageControl;
- (void)_setupProudLockIconView;
- (void)_setupQuickActionView;
- (void)_setupStatusBar;
- (void)_setupWallpaperViewWithImage:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation SBLockScreenPreviewView

- (SBLockScreenPreviewView)initWithFrame:(CGRect)a3 wallpaperController:(id)a4 options:(unint64_t)a5 wallpaperImage:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a4;
  v15 = a6;
  v24.receiver = self;
  v24.super_class = SBLockScreenPreviewView;
  v16 = [(SBLockScreenPreviewView *)&v24 initWithFrame:x, y, width, height];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_wallpaperController, a4);
    if ((a5 & 0x400) != 0)
    {
      v19 = objc_alloc(MEMORY[0x277D760A8]);
      v20 = 2;
    }

    else
    {
      if ((a5 & 0x800) == 0)
      {
        v18 = [v14 legibilitySettingsForVariant:0];
        goto LABEL_8;
      }

      v19 = objc_alloc(MEMORY[0x277D760A8]);
      v20 = 1;
    }

    v18 = [v19 initWithStyle:v20];
LABEL_8:
    legibilitySettings = v17->_legibilitySettings;
    v17->_legibilitySettings = v18;

    if ((a5 & 0x40) == 0)
    {
      [(SBLockScreenPreviewView *)v17 _setupWallpaperViewWithImage:v15];
    }

    [(SBLockScreenPreviewView *)v17 _setupDateViewWithOptions:a5];
    if ((a5 & 1) == 0)
    {
      [(SBLockScreenPreviewView *)v17 _setupStatusBar];
    }

    if ((a5 & 0x22) == 0x20)
    {
      [(SBLockScreenPreviewView *)v17 _setupPageControl];
    }

    [(SBLockScreenPreviewView *)v17 _setupCallToActionLabel];
    if (SBFEffectiveHomeButtonType() != 2)
    {
      goto LABEL_19;
    }

    if ((a5 & 8) != 0)
    {
      if ((a5 & 0x10) != 0)
      {
LABEL_17:
        if ((a5 & 0x20) != 0)
        {
LABEL_19:
          v22 = v17;
          goto LABEL_20;
        }

LABEL_18:
        [(SBLockScreenPreviewView *)v17 _setupHomeGrabberView];
        goto LABEL_19;
      }
    }

    else
    {
      [(SBLockScreenPreviewView *)v17 _setupProudLockIconView];
      if ((a5 & 0x10) != 0)
      {
        goto LABEL_17;
      }
    }

    [(SBLockScreenPreviewView *)v17 _setupQuickActionView];
    if ((a5 & 0x20) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:

  return v17;
}

- (void)dealloc
{
  v3 = [(SBLockScreenPreviewView *)self _statusBarReusePool];
  [v3 recycleStatusBar:self->_statusBar];

  v4.receiver = self;
  v4.super_class = SBLockScreenPreviewView;
  [(SBLockScreenPreviewView *)&v4 dealloc];
}

- (void)_setupWallpaperViewWithImage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    goto LABEL_8;
  }

  v5 = [(SBWallpaperController *)self->_wallpaperController wallpaperConfigurationManager];
  v6 = [v5 wallpaperConfigurationForVariant:0 includingValuesForTypes:4];
  if (_os_feature_enabled_impl())
  {
    v7 = SBLogWallpaper();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(SBLockScreenPreviewView *)v6 _setupWallpaperViewWithImage:v7];
    }
  }

  else
  {
    v8 = [v6 proceduralWallpaperInfo];

    if (!v8)
    {

      goto LABEL_11;
    }
  }

  v9 = [v6 wallpaperThumbnailImage];
  v4 = [v9 resizableImageWithCapInsets:1 resizingMode:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  if (!v4)
  {
LABEL_11:
    v14 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:0 transformOptions:2];
    [(PBUIWallpaperEffectViewBase *)v14 setForcesOpaque:1];
    [(PBUIWallpaperEffectViewBase *)v14 setStyle:0];
    wallpaperView = self->_wallpaperView;
    self->_wallpaperView = &v14->super.super;
    goto LABEL_9;
  }

LABEL_8:
  v10 = MEMORY[0x277D755E8];
  wallpaperView = v4;
  v12 = [[v10 alloc] initWithImage:wallpaperView];
  v13 = self->_wallpaperView;
  self->_wallpaperView = v12;

  [(UIView *)self->_wallpaperView setContentMode:2];
LABEL_9:

  [(SBLockScreenPreviewView *)self addSubview:self->_wallpaperView];
}

- (void)_setupDateViewWithOptions:(unint64_t)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = objc_alloc_init(MEMORY[0x277D65EB8]);
    dateViewController = self->_dateViewController;
    self->_dateViewController = v5;

    v7 = [(SBFLockScreenDateViewController *)self->_dateViewController dateView];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277D65EB0]);
    v7 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  }

  dateView = self->_dateView;
  self->_dateView = v7;

  v10 = self->_dateView;
  if ((v3 & 4) != 0)
  {
    v11 = [MEMORY[0x277CBEAA8] date];
    [(SBFLockScreenDateView *)v10 setDate:v11];
  }

  else
  {
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:190057260.0];
    v12 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"America/Los_Angeles"];
    [(SBFLockScreenDateView *)v10 _setDate:v11 inTimeZone:v12];
  }

  v13 = [MEMORY[0x277D02C20] rootSettings];
  v18 = [v13 lookSettings];

  if ([v18 useSettingsDateTime] && objc_msgSend(v18, "customizesDateTime"))
  {
    v14 = self->_dateView;
    v15 = [v18 customTimeFont];
    [(SBFLockScreenDateView *)v14 setCustomTimeFont:v15];

    -[SBFLockScreenDateView setSubtitleOnTop:](self->_dateView, "setSubtitleOnTop:", [v18 subtitleAboveTime]);
  }

  v16 = self->_dateView;
  v17 = [MEMORY[0x277D65EB0] timeFont];
  [(SBFLockScreenDateView *)v16 setCustomTimeFont:v17];

  [(SBFLockScreenDateView *)self->_dateView setLegibilitySettings:self->_legibilitySettings];
  [(SBLockScreenPreviewView *)self addSubview:self->_dateView];
}

- (void)_setupStatusBar
{
  v3 = [(SBLockScreenPreviewView *)self _statusBarReusePool];
  [(SBLockScreenPreviewView *)self bounds];
  v4 = [v3 getReusableStatusBarWithReason:@"Lock Screen Preview Status Bar" withFrame:{0.0, 0.0}];
  statusBar = self->_statusBar;
  self->_statusBar = v4;

  [(UIStatusBar *)self->_statusBar setOrientation:1];
  [(UIStatusBar *)self->_statusBar setLegibilityStyle:[(_UILegibilitySettings *)self->_legibilitySettings style]];
  v6 = self->_statusBar;
  v7 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UIStatusBar *)v6 setForegroundColor:v7];

  [(UIStatusBar *)self->_statusBar requestStyle:[(_UILegibilitySettings *)self->_legibilitySettings style]!= 2];
  [(UIStatusBar *)self->_statusBar sb_setSnapshotOverridesWithTimeEnabled:0 overriddenDate:0];
  v8 = self->_statusBar;

  [(SBLockScreenPreviewView *)self addSubview:v8];
}

- (void)_setupPageControl
{
  v3 = objc_alloc(MEMORY[0x277D02C48]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  dashBoardPageControl = self->_dashBoardPageControl;
  self->_dashBoardPageControl = v4;

  [(CSPageControl *)self->_dashBoardPageControl setLegibilitySettings:self->_legibilitySettings];
  [(CSPageControl *)self->_dashBoardPageControl setCameraPageIndex:2];
  [(CSPageControl *)self->_dashBoardPageControl setNumberOfPages:3];
  [(CSPageControl *)self->_dashBoardPageControl setCurrentPage:1];
  v6 = self->_dashBoardPageControl;

  [(SBLockScreenPreviewView *)self addSubview:v6];
}

- (void)_setupCallToActionLabel
{
  v3 = objc_opt_new();
  callToActionLabel = self->_callToActionLabel;
  self->_callToActionLabel = v3;

  [(SBUICallToActionLabel *)self->_callToActionLabel setVisible:1 animated:0];
  [(SBUICallToActionLabel *)self->_callToActionLabel setLegibilitySettings:self->_legibilitySettings];
  v5 = self->_callToActionLabel;

  [(SBLockScreenPreviewView *)self addSubview:v5];
}

- (void)_setupProudLockIconView
{
  v3 = objc_alloc_init(MEMORY[0x277D67D88]);
  proudLockIconView = self->_proudLockIconView;
  self->_proudLockIconView = v3;

  [(SBUIProudLockIconView *)self->_proudLockIconView setLegibilitySettings:self->_legibilitySettings];
  [(SBUIProudLockIconView *)self->_proudLockIconView setState:1];
  v5 = self->_proudLockIconView;

  [(SBLockScreenPreviewView *)self addSubview:v5];
}

- (void)_setupQuickActionView
{
  v5 = objc_alloc_init(MEMORY[0x277D02C78]);
  v3 = [v5 view];
  quickActionsView = self->_quickActionsView;
  self->_quickActionsView = v3;

  [(CSQuickActionsView *)self->_quickActionsView setLegibilitySettings:self->_legibilitySettings];
  [(SBLockScreenPreviewView *)self addSubview:self->_quickActionsView];
}

- (void)_setupHomeGrabberView
{
  v3 = [SBHomeGrabberView alloc];
  v4 = [(SBHomeGrabberView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  homeGrabberView = self->_homeGrabberView;
  self->_homeGrabberView = v4;

  if ([(_UILegibilitySettings *)self->_legibilitySettings style]== 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [(SBHomeGrabberView *)self->_homeGrabberView setColorBias:v6];
  v7 = self->_homeGrabberView;

  [(SBLockScreenPreviewView *)self addSubview:v7];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBLockScreenPreviewView;
  [(SBLockScreenPreviewView *)&v3 layoutSubviews];
  [(SBLockScreenPreviewView *)self _layoutWallpaperView];
  [(SBLockScreenPreviewView *)self _layoutStatusBar];
  [(SBLockScreenPreviewView *)self _layoutDateView];
  [(SBLockScreenPreviewView *)self _layoutPageControl];
  [(SBLockScreenPreviewView *)self _layoutCallToActionLabel];
  [(SBLockScreenPreviewView *)self _layoutProudLockIconView];
  [(SBLockScreenPreviewView *)self _layoutQuickActionsView];
  [(SBLockScreenPreviewView *)self _layoutHomeGrabberView];
}

- (void)_layoutStatusBar
{
  [(SBLockScreenPreviewView *)self bounds];
  statusBar = self->_statusBar;

  [(UIStatusBar *)statusBar setFrame:0.0, 0.0];
}

- (void)_layoutDateView
{
  [(SBFLockScreenDateView *)self->_dateView layoutIfNeeded];
  [(SBLockScreenPreviewView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v11 = MEMORY[0x277D65E38];
    [(SBLockScreenPreviewView *)self bounds];
    [v11 suggestedFrameForDateTimeViewInScreenCoordinates:0 centeredX:?];
    v4 = v12;
    v6 = v13;
    v8 = v14;
    v10 = v15;
  }

  dateView = self->_dateView;

  [(SBFLockScreenDateView *)dateView setFrame:v4, v6, v8, v10];
}

- (void)_layoutWallpaperView
{
  [(SBLockScreenPreviewView *)self bounds];
  wallpaperView = self->_wallpaperView;

  [(UIView *)wallpaperView setFrame:?];
}

- (void)_layoutPageControl
{
  [(CSPageControl *)self->_dashBoardPageControl sizeForNumberOfPages:[(CSPageControl *)self->_dashBoardPageControl numberOfPages]];
  v3 = MEMORY[0x277D02C48];
  [(SBLockScreenPreviewView *)self bounds];
  [v3 suggestedFrameForPageBounds:? desiredSize:?];
  dashBoardPageControl = self->_dashBoardPageControl;

  [(CSPageControl *)dashBoardPageControl setFrame:?];
}

- (void)_layoutCallToActionLabel
{
  [(SBLockScreenPreviewView *)self bounds];
  MaxY = CGRectGetMaxY(v15);
  [(CSPageControl *)self->_dashBoardPageControl frame];
  v5 = MaxY - (v4 + 5.0);
  [(SBUICallToActionLabel *)self->_callToActionLabel baselineOffset];
  v7 = v6 + v5;
  callToActionLabel = self->_callToActionLabel;
  v9 = MEMORY[0x277D65E38];
  [(SBLockScreenPreviewView *)self bounds];
  [v9 suggestedFrameForCallToActionLabel:callToActionLabel yOffset:v7 inBounds:{v10, v11, v12, v13}];

  [(SBUICallToActionLabel *)callToActionLabel setFrame:?];
}

- (void)_layoutProudLockIconView
{
  [(SBLockScreenPreviewView *)self bounds];
  proudLockIconView = self->_proudLockIconView;

  [(SBUIProudLockIconView *)proudLockIconView setFrame:?];
}

- (void)_layoutQuickActionsView
{
  [(SBLockScreenPreviewView *)self bounds];
  quickActionsView = self->_quickActionsView;

  [(CSQuickActionsView *)quickActionsView setFrame:?];
}

- (void)_layoutHomeGrabberView
{
  [(SBLockScreenPreviewView *)self bounds];
  homeGrabberView = self->_homeGrabberView;

  [(SBHomeGrabberView *)homeGrabberView setFrame:?];
}

- (id)_statusBarReusePool
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 embeddedDisplayWindowScene];
  v4 = [v3 statusBarManager];
  v5 = [v4 reusePool];

  return v5;
}

- (void)_setupWallpaperViewWithImage:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 debugDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "WooP is on, using wallpaper thumbnail image from lock screen wallpaper configuration: %{public}@", &v4, 0xCu);
}

@end