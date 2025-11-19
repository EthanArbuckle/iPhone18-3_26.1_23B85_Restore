@interface SBSUIWallpaperPreviewViewController
- (CGRect)cropRect;
- (SBFLegibilitySettingsProviderDelegate)delegate;
- (SBFWallpaperOptions)wallpaperOptions;
- (SBSUIWallpaperPreviewViewController)initWithImage:(id)a3;
- (SBSUIWallpaperPreviewViewController)initWithImage:(id)a3 name:(id)a4 video:(id)a5 time:(double)a6;
- (SBSUIWallpaperPreviewViewController)initWithImage:(id)a3 video:(id)a4 variant:(int64_t)a5 options:(id)a6 disableSegmentedControl:(BOOL)a7 enableButtons:(BOOL)a8 disableContents:(BOOL)a9;
- (SBSUIWallpaperPreviewViewController)initWithImages:(id)a3 videos:(id)a4 variant:(int64_t)a5 options:(id)a6 disableSegmentedControl:(BOOL)a7 enableButtons:(BOOL)a8 disableContents:(BOOL)a9 disableParallax:(BOOL)a10;
- (SBSUIWallpaperPreviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SBSUIWallpaperPreviewViewController)initWithProceduralWallpaper:(id)a3 options:(id)a4;
- (SBSUIWallpaperPreviewViewController)initWithProceduralWallpaper:(id)a3 options:(id)a4 variant:(int64_t)a5 disableSegmentedControl:(BOOL)a6 enableButtons:(BOOL)a7 disableContents:(BOOL)a8;
- (SBSUIWallpaperPreviewViewController)initWithScrollableImage:(id)a3 video:(id)a4 time:(double)a5;
- (SBSUIWallpaperPreviewViewController)initWithWallpaperVariant:(int64_t)a3;
- (SBSUIWallpaperPreviewViewControllerDelegate)previewDelegate;
- (_UILegibilitySettings)legibilitySettings;
- (double)_parallaxFactor;
- (id)_colorWallpaperViewWithFrame:(CGRect)a3 variant:(int64_t)a4 configuration:(id)a5;
- (id)_dateView;
- (id)_proceduralWallpaperViewWithFrame:(CGRect)a3 variant:(int64_t)a4 configuration:(id)a5;
- (id)_wallpaperConfigurationManager;
- (id)_wallpaperTypeDescription;
- (id)_wallpaperView;
- (id)_wallpaperViewIfLoaded;
- (id)_wallpaperViewWithFrame:(CGRect)a3;
- (id)_wallpaperViewWithFrame:(CGRect)a3 image:(id)a4 video:(id)a5 videoURL:(id)a6 stillTimeInVideo:(double)a7 supportsCropping:(BOOL)a8 variant:(int64_t)a9 needsWallpaperDimming:(BOOL)a10;
- (id)_wallpaperViewWithFrame:(CGRect)a3 variant:(int64_t)a4 options:(id)a5;
- (int64_t)_wallpaperType;
- (void)_applyHomeScreenPreview;
- (void)_displaySettingWallpaperHUD;
- (void)_enableIrisOrParallaxIfEligible;
- (void)_logWallpaperChangeForLocations:(int64_t)a3;
- (void)_setImageWallpaperForLocationsOnMainThread:(int64_t)a3 completionHandler:(id)a4;
- (void)_setProceduralWallpaperForLocationsOnMainThread:(int64_t)a3 completionHandler:(id)a4;
- (void)_setWallpaperForLocationsOnMainThread:(int64_t)a3 completionHandler:(id)a4;
- (void)_setWallpaperImagesOnMainThread:(id)a3 options:(id)a4 locations:(int64_t)a5 completionHandler:(id)a6;
- (void)_startDateTimer;
- (void)_stopDateTimer;
- (void)_updateDateView;
- (void)dealloc;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)providerLegibilitySettingsChanged:(id)a3;
- (void)setImageWallpaperForLocations:(int64_t)a3 completionHandler:(id)a4;
- (void)setIrisEnabled:(BOOL)a3;
- (void)setMotionEnabled:(BOOL)a3 updateParallaxOnWallpaperView:(BOOL)a4;
- (void)setWallpaperForLocations:(int64_t)a3 completionHandler:(id)a4;
- (void)setWallpaperImages:(id)a3 options:(id)a4 locations:(int64_t)a5 completionHandler:(id)a6;
- (void)traitCollectionDidChange:(id)a3;
- (void)userDidTapOnCancelButton:(id)a3;
- (void)userDidTapOnIrisButton:(id)a3;
- (void)userDidTapOnParallaxButton:(id)a3;
- (void)userDidTapOnSetButton:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SBSUIWallpaperPreviewViewController

- (SBSUIWallpaperPreviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = SBSUIWallpaperPreviewViewController;
  result = [(SBSUIWallpaperPreviewViewController *)&v5 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_motionEnabled = 1;
    result->_variant = -1;
  }

  return result;
}

- (SBSUIWallpaperPreviewViewController)initWithImage:(id)a3
{
  v4 = a3;
  v5 = [(SBSUIWallpaperPreviewViewController *)self initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B7DE0]) initWithVariant:-1 type:1];
    initialConfiguration = v5->_initialConfiguration;
    v5->_initialConfiguration = v6;

    if ([v4 imageOrientation])
    {
      v8 = [MEMORY[0x1E69DCA80] defaultFormat];
      v9 = [v8 copy];

      [v4 scale];
      [v9 setScale:?];
      [v4 size];
      v11 = v10;
      v13 = v12;
      v14 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v9 format:{v10, v12}];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __53__SBSUIWallpaperPreviewViewController_initWithImage___block_invoke;
      v23[3] = &unk_1E789F290;
      v24 = v4;
      v25 = v11;
      v26 = v13;
      v4 = [v14 imageWithActions:v23];
    }

    v15 = objc_alloc(MEMORY[0x1E69B7E00]);
    v16 = [v4 CGImage];
    v17 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v17 scale];
    v19 = [v15 initWithCGImage:v16 scale:objc_msgSend(v4 orientation:"imageOrientation") wallpaperFileURL:{0, v18}];

    wallpaperImage = v5->_wallpaperImage;
    v5->_wallpaperImage = v19;
    v21 = v19;

    [(PBUIWallpaperConfiguration *)v5->_initialConfiguration setWallpaperImage:v21];
  }

  return v5;
}

- (SBSUIWallpaperPreviewViewController)initWithWallpaperVariant:(int64_t)a3
{
  v4 = [(SBSUIWallpaperPreviewViewController *)self initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69B7DE0]) initWithVariant:-1 type:1];
    initialConfiguration = v4->_initialConfiguration;
    v4->_initialConfiguration = v5;

    v4->_variant = a3;
  }

  return v4;
}

- (SBSUIWallpaperPreviewViewController)initWithProceduralWallpaper:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SBSUIWallpaperPreviewViewController *)self initWithNibName:0 bundle:0];
  if (v9)
  {
    v10 = [v7 mutableCopy];
    v11 = v10;
    if (v8)
    {
      [v10 setObject:v8 forKey:*MEMORY[0x1E69B7E28]];
    }

    v12 = [objc_alloc(MEMORY[0x1E69B7DE0]) initWithVariant:-1 type:2];
    initialConfiguration = v9->_initialConfiguration;
    v9->_initialConfiguration = v12;

    [(PBUIWallpaperConfiguration *)v9->_initialConfiguration setProceduralWallpaperInfo:v11];
    objc_storeStrong(&v9->_proceduralWallpaper, a3);
    objc_storeStrong(&v9->_proceduralWallpaperOptions, a4);
  }

  return v9;
}

- (SBSUIWallpaperPreviewViewController)initWithProceduralWallpaper:(id)a3 options:(id)a4 variant:(int64_t)a5 disableSegmentedControl:(BOOL)a6 enableButtons:(BOOL)a7 disableContents:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = [(SBSUIWallpaperPreviewViewController *)self initWithNibName:0 bundle:0];
  if (v16)
  {
    v17 = [v14 mutableCopy];
    v18 = v17;
    if (v15)
    {
      [v17 setObject:v15 forKey:*MEMORY[0x1E69B7E28]];
    }

    v19 = [objc_alloc(MEMORY[0x1E69B7DE0]) initWithVariant:-1 type:2];
    initialConfiguration = v16->_initialConfiguration;
    v16->_initialConfiguration = v19;

    [(PBUIWallpaperConfiguration *)v16->_initialConfiguration setProceduralWallpaperInfo:v18];
    objc_storeStrong(&v16->_proceduralWallpaper, a3);
    objc_storeStrong(&v16->_proceduralWallpaperOptions, a4);
    v16->_variant = a5;
    v16->_enableButtons = a7;
    v16->_disableContents = a8;
  }

  return v16;
}

- (SBSUIWallpaperPreviewViewController)initWithImage:(id)a3 name:(id)a4 video:(id)a5 time:(double)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [(SBSUIWallpaperPreviewViewController *)self initWithImage:a3];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E69B7E08]);
    [v13 setName:v10];
    [v13 setStillTimeInVideo:a6];
    [(PBUIWallpaperConfiguration *)v12->_initialConfiguration setWallpaperOptions:v13];
    v14 = [v10 copy];
    name = v12->_name;
    v12->_name = v14;

    objc_storeStrong(&v12->_video, a5);
    if (v11)
    {
      v12->_stillTimeInVideo = a6;
    }

    v16 = v12;
  }

  return v12;
}

- (SBSUIWallpaperPreviewViewController)initWithImage:(id)a3 video:(id)a4 variant:(int64_t)a5 options:(id)a6 disableSegmentedControl:(BOOL)a7 enableButtons:(BOOL)a8 disableContents:(BOOL)a9
{
  v26 = a7;
  v27 = a8;
  v34 = *MEMORY[0x1E69E9840];
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = SBLogWallpaper();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = PBUIStringForWallpaperVariant();
    *buf = 67240706;
    v29 = v15 != 0;
    v30 = 2114;
    v31 = v13;
    v32 = 2114;
    v33 = v17;
    _os_log_impl(&dword_1A9A79000, v16, OS_LOG_TYPE_DEFAULT, "Initializing full screen preview with given image: %{public}d and options: %{public}@ for variant: %{public}@", buf, 0x1Cu);
  }

  v18 = PBUIStringForWallpaperMode();
  v19 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v15, v18, 0}];
  v20 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v14, v18, 0}];

  v21 = objc_alloc(MEMORY[0x1E695DF20]);
  v22 = [v21 initWithObjectsAndKeys:{v13, v18, 0}];
  LOWORD(v25) = a9;
  v23 = [(SBSUIWallpaperPreviewViewController *)self initWithImages:v19 videos:v20 variant:a5 options:v22 disableSegmentedControl:v26 enableButtons:v27 disableContents:v25 disableParallax:?];

  return v23;
}

- (SBSUIWallpaperPreviewViewController)initWithImages:(id)a3 videos:(id)a4 variant:(int64_t)a5 options:(id)a6 disableSegmentedControl:(BOOL)a7 enableButtons:(BOOL)a8 disableContents:(BOOL)a9 disableParallax:(BOOL)a10
{
  v42 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = SBLogWallpaper();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = PBUIStringForWallpaperVariant();
    *buf = 67240706;
    v37 = v14 != 0;
    v38 = 2114;
    v39 = v16;
    v40 = 2114;
    v41 = v18;
    _os_log_impl(&dword_1A9A79000, v17, OS_LOG_TYPE_DEFAULT, "Initializing full screen preview with given image: %{public}d and options: %{public}@ for variant: %{public}@", buf, 0x1Cu);
  }

  v19 = [(SBSUIWallpaperPreviewViewController *)self init];
  if ([v14 count] >= 2)
  {
    v20 = [(SBSUIWallpaperPreviewViewController *)v19 traitCollection];
    [v20 userInterfaceStyle];
  }

  v21 = PBUIStringForWallpaperMode();
  v22 = [v14 objectForKeyedSubscript:v21];
  v23 = [(SBSUIWallpaperPreviewViewController *)v19 initWithImage:v22];

  if (v23)
  {
    objc_storeStrong((v23 + 1032), a3);
    objc_storeStrong((v23 + 1096), a4);
    objc_storeStrong((v23 + 1120), a6);
    v24 = [v16 objectForKeyedSubscript:v21];
    v25 = *(v23 + 1112);
    *(v23 + 1112) = v24;

    [*(v23 + 1016) setWallpaperOptions:*(v23 + 1112)];
    v26 = [*(v23 + 1112) name];
    v27 = [v26 copy];
    v28 = *(v23 + 1072);
    *(v23 + 1072) = v27;

    v29 = [v15 objectForKeyedSubscript:v21];
    v30 = *(v23 + 1088);
    *(v23 + 1088) = v29;

    *(v23 + 1064) = a5;
    *(v23 + 1056) = [*(v23 + 1112) supportsCropping];
    *(v23 + 1128) = a8;
    *(v23 + 1129) = a9;
    *(v23 + 1130) = a10;
    if (*(v23 + 1088))
    {
      [*(v23 + 1112) stillTimeInVideo];
      *(v23 + 1104) = v31;
    }

    v32 = v23;
  }

  return v23;
}

- (SBSUIWallpaperPreviewViewController)initWithScrollableImage:(id)a3 video:(id)a4 time:(double)a5
{
  v9 = a4;
  v10 = [(SBSUIWallpaperPreviewViewController *)self initWithImage:a3];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69B7E08]);
    [v11 setStillTimeInVideo:a5];
    [(PBUIWallpaperConfiguration *)v10->_initialConfiguration setWallpaperOptions:v11];
    v10->_allowScrolling = 1;
    objc_storeStrong(&v10->_video, a4);
    if (v9)
    {
      v10->_stillTimeInVideo = a5;
    }

    v12 = v10;
  }

  return v10;
}

- (void)dealloc
{
  if ([(SBSUIWallpaperPreviewViewController *)self isViewLoaded])
  {
    v3 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
    [v3 removeObserver:self forKeyPath:@"parallaxEnabled"];
    [v3 setDelegate:0];
    if (_os_feature_enabled_impl())
    {
      v4 = [(SBSUIWallpaperPreviewViewController *)self _previewView];
      [v4 setDateView:0];

      [(SBFLockScreenDateViewController *)self->_dateViewController removeFromParentViewController];
    }
  }

  v5.receiver = self;
  v5.super_class = SBSUIWallpaperPreviewViewController;
  [(SBSUIWallpaperPreviewViewController *)&v5 dealloc];
}

- (void)loadView
{
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v32 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperViewWithFrame:v5, v7, v9, v11];
  v12 = [v32 parallaxEnabled];
  v13 = [[SBSUIWallpaperPreviewView alloc] initWithFrame:v32 wallpaperView:self->_disableParallax disableParallax:v5, v7, v9, v11];
  [(SBSUIWallpaperPreviewView *)v13 setDelegate:self];
  [(SBSUIWallpaperPreviewViewController *)self setView:v13];
  [v32 addObserver:self forKeyPath:@"parallaxEnabled" options:0 context:&SBParallaxEnabledChanged];
  [(SBSUIWallpaperPreviewViewController *)self setMotionEnabled:v12];
  if (!self->_enableButtons)
  {
    [(SBSUIWallpaperPreviewView *)v13 setIrisButton:0];
    [(SBSUIWallpaperPreviewView *)v13 setParallaxButton:0];
    [(SBSUIWallpaperPreviewView *)v13 setCancelButton:0];
    [(SBSUIWallpaperPreviewView *)v13 setSetButton:0];
  }

  if (self->_variant == 1)
  {
    goto LABEL_4;
  }

  if (!self->_disableContents)
  {
    v34.origin.x = v5;
    v34.origin.y = v7;
    v34.size.width = v9;
    v34.size.height = v11;
    Width = CGRectGetWidth(v34);
    v35.origin.x = v5;
    v35.origin.y = v7;
    v35.size.width = v9;
    v35.size.height = v11;
    Height = CGRectGetHeight(v35);
    if (Width >= Height)
    {
      Width = Height;
    }

    v36.origin.x = v5;
    v36.origin.y = v7;
    v36.size.width = v9;
    v36.size.height = v11;
    v19 = CGRectGetWidth(v36);
    v37.origin.x = v5;
    v37.origin.y = v7;
    v37.size.width = v9;
    v37.size.height = v11;
    v20 = CGRectGetHeight(v37);
    if (v19 < v20)
    {
      v19 = v20;
    }

    v21 = SBSUIWallpaperGetPreview(0, 250, Width);
    v22 = SBSUIWallpaperGetPreview(0, 378, v19);
    v23 = [[_SBSUIOrientedImageView alloc] initWithFrame:v5, v7, v9, v11];
    [(_SBSUIOrientedImageView *)v23 setAutoresizingMask:18];
    [(_SBSUIOrientedImageView *)v23 setPortraitImage:v21];
    [(_SBSUIOrientedImageView *)v23 setLandscapeImage:v22];
    v24 = [(SBSUIWallpaperPreviewViewController *)self view];
    [v24 addSubview:v23];

    if (_os_feature_enabled_impl())
    {
      v25 = objc_alloc_init(MEMORY[0x1E69D3FE0]);
      dateViewController = self->_dateViewController;
      self->_dateViewController = v25;

      v27 = [(SBFLockScreenDateViewController *)self->_dateViewController dateView];
      v28 = [MEMORY[0x1E69D3FD8] timeFont];
      [v27 setCustomTimeFont:v28];

      v29 = [(SBSUIWallpaperPreviewViewController *)self legibilitySettings];
      [v27 setLegibilitySettings:v29];

      [(SBSUIWallpaperPreviewViewController *)self addChildViewController:self->_dateViewController];
      v30 = [(SBSUIWallpaperPreviewViewController *)self _previewView];
      [v30 setDateView:v27];
    }

    if (self->_variant == 1)
    {
LABEL_4:
      if (!self->_disableContents)
      {
        v14 = [[_SBSUIOrientedImageView alloc] initWithFrame:v5, v7, v9, v11];
        homeScreenPreviewView = self->_homeScreenPreviewView;
        self->_homeScreenPreviewView = v14;

        [(_SBSUIOrientedImageView *)self->_homeScreenPreviewView setAutoresizingMask:18];
        v16 = [(SBSUIWallpaperPreviewViewController *)self view];
        [v16 addSubview:self->_homeScreenPreviewView];

        [(SBSUIWallpaperPreviewViewController *)self _applyHomeScreenPreview];
      }
    }
  }

  [(SBSUIWallpaperPreviewViewController *)self _enableIrisOrParallaxIfEligible];
  if ([v32 parallaxEnabled] & 1) == 0 && (objc_opt_respondsToSelector())
  {
    [v32 setAutomaticallyEnablesParallax:0];
  }

  v31 = [v32 legibilitySettings];
  if (v31)
  {
    [(SBSUIWallpaperPreviewViewController *)self providerLegibilitySettingsChanged:v32];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBSUIWallpaperPreviewViewController;
  [(SBSUIWallpaperPreviewViewController *)&v4 viewWillAppear:a3];
  [(SBSUIWallpaperPreviewViewController *)self _updateDateView];
  [(SBSUIWallpaperPreviewViewController *)self _enableIrisOrParallaxIfEligible];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBSUIWallpaperPreviewViewController;
  [(SBSUIWallpaperPreviewViewController *)&v4 viewWillDisappear:a3];
  [(SBSUIWallpaperPreviewViewController *)self _stopDateTimer];
}

- (void)viewDidAppear:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = SBSUIWallpaperPreviewViewController;
  [(SBSUIWallpaperPreviewViewController *)&v6 viewDidAppear:a3];
  v4 = SBLogWallpaper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperTypeDescription];
    *buf = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "PRESENTING Wallpaper Preview View Controller: %{public}@", buf, 0xCu);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = SBSUIWallpaperPreviewViewController;
  [(SBSUIWallpaperPreviewViewController *)&v6 viewDidDisappear:a3];
  v4 = SBLogWallpaper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperTypeDescription];
    *buf = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "DISMISSING Wallpaper Preview View Controller: %{public}@", buf, 0xCu);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(SBSUIWallpaperPreviewViewController *)self traitCollection];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (!v6)
  {
    return;
  }

  if ([(NSDictionary *)self->_wallpaperImageDict count]>= 2)
  {
    v7 = [(SBSUIWallpaperPreviewViewController *)self traitCollection];
    [v7 userInterfaceStyle];

    v8 = PBUIStringForWallpaperMode();
    v9 = [(NSDictionary *)self->_wallpaperImageDict objectForKeyedSubscript:v8];
    wallpaperImage = self->_wallpaperImage;
    self->_wallpaperImage = v9;

    if ([(NSDictionary *)self->_videoDict count]>= 2)
    {
      v11 = [(NSDictionary *)self->_videoDict objectForKeyedSubscript:v8];
      video = self->_video;
      self->_video = v11;
    }

    if ([(NSDictionary *)self->_optionsDict count]>= 2)
    {
      v13 = [(NSDictionary *)self->_optionsDict objectForKeyedSubscript:v8];
      options = self->_options;
      self->_options = v13;
    }
  }

  if ([(NSDictionary *)self->_wallpaperImageDict count]> 1)
  {
    goto LABEL_11;
  }

  v15 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperConfigurationManager];
  if (![v15 enableWallpaperDimming])
  {
LABEL_18:

    goto LABEL_19;
  }

  v16 = [(NSDictionary *)self->_wallpaperImageDict count];

  if (v16 == 1)
  {
LABEL_11:
    v17 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperViewWithFrame:v19, v21, v23, v25];
    v15 = v26;
    if (v26)
    {
      [v26 setDelegate:self];
      [v15 addObserver:self forKeyPath:@"parallaxEnabled" options:0 context:&SBParallaxEnabledChanged];
      [v15 setParallaxEnabled:{-[SBSUIWallpaperPreviewViewController motionEnabled](self, "motionEnabled")}];
      if (self->_video)
      {
        v27 = v15;
        if (objc_opt_respondsToSelector())
        {
          v28 = v27;
        }

        else
        {
          v28 = 0;
        }

        v29 = v28;

        v30 = [v29 irisGestureRecognizer];

        v31 = [(SBSUIWallpaperPreviewViewController *)self _previewView];
        v32 = [v31 irisButton];
        [v30 setEnabled:{objc_msgSend(v32, "isSelected")}];
      }

      v33 = [(SBSUIWallpaperPreviewViewController *)self _previewView];
      [v33 setWallpaperView:v15];
    }

    goto LABEL_18;
  }

LABEL_19:
  if (self->_variant == 1 && !self->_disableContents)
  {

    [(SBSUIWallpaperPreviewViewController *)self _applyHomeScreenPreview];
  }
}

- (id)_wallpaperConfigurationManager
{
  wallpaperConfigurationManager = self->_wallpaperConfigurationManager;
  if (!wallpaperConfigurationManager)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69B7DE8]);
    v5 = self->_wallpaperConfigurationManager;
    self->_wallpaperConfigurationManager = v4;

    v6 = objc_alloc_init(MEMORY[0x1E69B7DF0]);
    -[PBUIWallpaperConfigurationManager setEnableWallpaperDimming:](self->_wallpaperConfigurationManager, "setEnableWallpaperDimming:", [v6 enableWallpaperDimming]);

    wallpaperConfigurationManager = self->_wallpaperConfigurationManager;
  }

  return wallpaperConfigurationManager;
}

- (id)_wallpaperTypeDescription
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperType];
  switch(v3)
  {
    case 1:
      v8 = 1024;
      goto LABEL_11;
    case 3:
      v8 = 1088;
LABEL_11:
      v7 = [*(&self->super.super.super.isa + v8) description];
      break;
    case 2:
      proceduralWallpaperOptions = self->_proceduralWallpaperOptions;
      v13[0] = @"proceduralWallpaperOptions";
      v13[1] = @"proceduralWallpaper";
      proceduralWallpaper = self->_proceduralWallpaper;
      if (!proceduralWallpaperOptions)
      {
        proceduralWallpaperOptions = MEMORY[0x1E695E0F8];
      }

      if (!proceduralWallpaper)
      {
        proceduralWallpaper = MEMORY[0x1E695E0F8];
      }

      v14[0] = proceduralWallpaperOptions;
      v14[1] = proceduralWallpaper;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
      v7 = [v6 description];

      break;
    default:
      v7 = @"(NO CONTEXT)";
      break;
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = PBUIStringForWallpaperType();
  v11 = [v9 stringWithFormat:@"%@ : %@", v10, v7];

  return v11;
}

- (int64_t)_wallpaperType
{
  if (self->_proceduralWallpaper)
  {
    return 2;
  }

  if (self->_video)
  {
    return 3;
  }

  return self->_wallpaperImage != 0;
}

- (double)_parallaxFactor
{
  v2 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  v3 = 0.0;
  if ([v2 parallaxEnabled])
  {
    [v2 parallaxFactor];
    v3 = v4;
  }

  return v3;
}

- (void)setWallpaperForLocations:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(SBSUIWallpaperPreviewViewController *)self _setWallpaperForLocationsOnMainThread:a3 completionHandler:v6];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__SBSUIWallpaperPreviewViewController_setWallpaperForLocations_completionHandler___block_invoke;
    block[3] = &unk_1E789F2B8;
    block[4] = self;
    v9 = a3;
    v8 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_setWallpaperForLocationsOnMainThread:(int64_t)a3 completionHandler:(id)a4
{
  v8 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(SBSUIWallpaperPreviewViewController *)self _logWallpaperChangeForLocations:a3];
  v6 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  v7 = [v6 wallpaperType];
  if (v7 <= 5)
  {
    if (((1 << v7) & 0xB) != 0)
    {
      [(SBSUIWallpaperPreviewViewController *)self setImageWallpaperForLocations:a3 completionHandler:v8];
    }

    else if (((1 << v7) & 0x30) != 0)
    {
      if (v8)
      {
        v8[2](v8, v8);
      }
    }

    else
    {
      [(SBSUIWallpaperPreviewViewController *)self _setProceduralWallpaperForLocationsOnMainThread:a3 completionHandler:v8];
    }
  }
}

- (void)setWallpaperImages:(id)a3 options:(id)a4 locations:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [a3 copy];
  v13 = [v11 copy];

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(SBSUIWallpaperPreviewViewController *)self _setWallpaperImagesOnMainThread:v12 options:v13 locations:a5 completionHandler:v10];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__SBSUIWallpaperPreviewViewController_setWallpaperImages_options_locations_completionHandler___block_invoke;
    block[3] = &unk_1E789F2E0;
    block[4] = self;
    v15 = v12;
    v16 = v13;
    v18 = a5;
    v17 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_setWallpaperImagesOnMainThread:(id)a3 options:(id)a4 locations:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(SBSUIWallpaperPreviewViewController *)self _displaySettingWallpaperHUD];
  v13 = [(SBSUIWallpaperPreviewViewController *)self traitCollection];
  v14 = [v13 userInterfaceStyle];

  if (v14 == 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * (v14 == 2);
  }

  v16 = [(SBSUIWallpaperPreviewViewController *)self irisEnabled];
  v17 = [(NSDictionary *)self->_videoDict count]!= 0 && v16;
  v18 = dispatch_get_global_queue(0, 0);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __107__SBSUIWallpaperPreviewViewController__setWallpaperImagesOnMainThread_options_locations_completionHandler___block_invoke;
  v22[3] = &unk_1E789F308;
  v28 = v17;
  v23 = v10;
  v24 = v11;
  v26 = a5;
  v27 = v15;
  v25 = v12;
  v19 = v12;
  v20 = v11;
  v21 = v10;
  dispatch_async(v18, v22);
}

uint64_t __107__SBSUIWallpaperPreviewViewController__setWallpaperImagesOnMainThread_options_locations_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if ((v2 & 1) != 0 && (*(a1 + 72) & 1) == 0)
  {
    SBSUIWallpaperClearVideo();
    v2 = *(a1 + 56);
  }

  SBSUIWallpaperSetImages(*(a1 + 32), *(a1 + 40), v2, *(a1 + 64));
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)setImageWallpaperForLocations:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(SBSUIWallpaperPreviewViewController *)self _setImageWallpaperForLocationsOnMainThread:a3 completionHandler:v6];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__SBSUIWallpaperPreviewViewController_setImageWallpaperForLocations_completionHandler___block_invoke;
    block[3] = &unk_1E789F2B8;
    block[4] = self;
    v9 = a3;
    v8 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_setImageWallpaperForLocationsOnMainThread:(int64_t)a3 completionHandler:(id)a4
{
  v80 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  v7 = [(SBSUIWallpaperPreviewViewController *)self wallpaperImage];
  v8 = v7;
  [(SBSUIWallpaperPreviewViewController *)self _parallaxFactor];
  v10 = v9;
  [v6 cropZoomScale];
  v12 = v11;
  [v6 cropRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v6 supportsCropping];
  v22 = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
  stillTimeInVideo = 0.0;
  if ((a3 & 1) == 0 || ![(SBSUIWallpaperPreviewViewController *)self irisEnabled])
  {
LABEL_12:
    v27 = 0;
    v79 = 0;
    goto LABEL_13;
  }

  if (self->_variant == -1)
  {
    video = self->_video;
    v33 = video;
    if (video)
    {
      v27 = v33;
      stillTimeInVideo = self->_stillTimeInVideo;
      v79 = 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v24 = v6;
  if (objc_opt_respondsToSelector())
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  v27 = [v26 videoFileURL];
  v79 = v27 != 0;

  if (v27)
  {
    v28 = MEMORY[0x1E6988168];
    [v26 videoFileURL];
    v30 = v29 = v21;
    v27 = [v28 assetWithURL:v30];

    v21 = v29;
    [v26 stillTimeInVideo];
    stillTimeInVideo = v31;
  }

LABEL_13:
  if (!v7)
  {
    v8 = [v6 untreatedWallpaperImage];
  }

  if ([(SBSUIWallpaperPreviewViewController *)self irisEnabled])
  {
    v34 = [(NSDictionary *)self->_videoDict count];
    if ((a3 & 1) != 0 && v34 >= 2)
    {
      v35 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __100__SBSUIWallpaperPreviewViewController__setImageWallpaperForLocationsOnMainThread_completionHandler___block_invoke;
      block[3] = &unk_1E789F330;
      v97 = v14;
      v98 = v16;
      v99 = v18;
      v100 = v20;
      v95 = v8;
      v96 = self;
      v101 = v21;
      dispatch_async(v35, block);
    }
  }

  v74 = v21;
  v75 = v27;
  v76 = a3;
  v77 = v8;
  v78 = v6;
  v36 = v22 - 1;
  if ([(NSDictionary *)self->_wallpaperImageDict count]< 2)
  {
    [(SBSUIWallpaperPreviewViewController *)self _displaySettingWallpaperHUD];
    v64 = MEMORY[0x1E69B7E08];
    v65 = [(NSString *)self->_name copy];
    optionsDict = self->_optionsDict;
    v67 = PBUIStringForWallpaperMode();
    v68 = [(NSDictionary *)optionsDict objectForKeyedSubscript:v67];
    v69 = [v68 wallpaperKitData];
    v70 = [v64 optionsWithName:v65 parallaxFactor:v74 zoomScale:v36 < 2 supportsCropping:v79 cropRect:0 portrait:1 hasVideo:v10 stillTimeInVideo:v12 wallpaperMode:v14 wallpaperStatus:v16 wallpaperKitData:{v18, v20, stillTimeInVideo, v69}];

    v71 = dispatch_get_global_queue(0, 0);
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __100__SBSUIWallpaperPreviewViewController__setImageWallpaperForLocationsOnMainThread_completionHandler___block_invoke_2;
    v81[3] = &unk_1E789F358;
    v91 = v79;
    v62 = v77;
    v86 = a3;
    v92 = v7 == 0;
    v87 = v14;
    v88 = v16;
    v89 = v18;
    v90 = v20;
    v82 = v77;
    v63 = v75;
    v93 = v74;
    v83 = v75;
    v84 = v70;
    v85 = v80;
    v57 = v70;
    dispatch_async(v71, v81);

    v56 = v82;
  }

  else
  {
    v37 = v36 < 2;
    v72 = v36 < 2;
    v38 = MEMORY[0x1E69B7E08];
    v39 = self->_optionsDict;
    v40 = PBUIStringForWallpaperMode();
    v41 = [(NSDictionary *)v39 objectForKeyedSubscript:v40];
    v42 = [v41 name];
    v43 = self->_optionsDict;
    v44 = PBUIStringForWallpaperMode();
    v45 = [(NSDictionary *)v43 objectForKeyedSubscript:v44];
    v46 = [v45 wallpaperKitData];
    v73 = [v38 optionsWithName:v42 parallaxFactor:v74 zoomScale:v37 supportsCropping:v79 cropRect:1 portrait:0 hasVideo:v10 stillTimeInVideo:v12 wallpaperMode:v14 wallpaperStatus:v16 wallpaperKitData:{v18, v20, stillTimeInVideo, v46}];

    v47 = MEMORY[0x1E69B7E08];
    v48 = self->_optionsDict;
    v49 = PBUIStringForWallpaperMode();
    v50 = [(NSDictionary *)v48 objectForKeyedSubscript:v49];
    v51 = [v50 name];
    v52 = self->_optionsDict;
    v53 = PBUIStringForWallpaperMode();
    v54 = [(NSDictionary *)v52 objectForKeyedSubscript:v53];
    v55 = [v54 wallpaperKitData];
    v56 = [v47 optionsWithName:v51 parallaxFactor:v74 zoomScale:v72 supportsCropping:v79 cropRect:2 portrait:0 hasVideo:v10 stillTimeInVideo:v12 wallpaperMode:v14 wallpaperStatus:v16 wallpaperKitData:{v18, v20, stillTimeInVideo, v55}];

    v57 = v73;
    v58 = objc_alloc(MEMORY[0x1E695DF20]);
    v59 = PBUIStringForWallpaperMode();
    v60 = PBUIStringForWallpaperMode();
    v61 = [v58 initWithObjectsAndKeys:{v73, v59, v56, v60, 0}];

    [(SBSUIWallpaperPreviewViewController *)self setWallpaperImages:self->_wallpaperImageDict options:v61 locations:v76 completionHandler:v80];
    v62 = v77;
    v63 = v75;
  }
}

void __100__SBSUIWallpaperPreviewViewController__setImageWallpaperForLocationsOnMainThread_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) size];
  v3 = 1.0 / v2;
  [*(a1 + 32) size];
  CGAffineTransformMakeScale(&v15, v3, 1.0 / v4);
  v16 = CGRectApplyAffineTransform(*(a1 + 48), &v15);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v9 = *(*(a1 + 40) + 1096);
  v10 = PBUIStringForWallpaperMode();
  v11 = [v9 objectForKeyedSubscript:v10];
  SBSUIWallpaperSetVideoWithWallpaperMode(v11, *(a1 + 80), 1, x, y, width, height);

  v12 = *(*(a1 + 40) + 1096);
  v13 = PBUIStringForWallpaperMode();
  v14 = [v12 objectForKeyedSubscript:v13];
  SBSUIWallpaperSetVideoWithWallpaperMode(v14, *(a1 + 80), 2, x, y, width, height);
}

uint64_t __100__SBSUIWallpaperPreviewViewController__setImageWallpaperForLocationsOnMainThread_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 104) == 1)
  {
    if (v2)
    {
      if ((*(a1 + 105) & 1) == 0)
      {
        SBSUIWallpaperClearVideo();
      }

      [*(a1 + 32) size];
      v4 = 1.0 / v3;
      [*(a1 + 32) size];
      CGAffineTransformMakeScale(&v7, v4, 1.0 / v5);
      v8 = CGRectApplyAffineTransform(*(a1 + 72), &v7);
      SBSUIWallpaperSetVideo(*(a1 + 40), *(a1 + 106), v8.origin.x, v8.origin.y, v8.size.width, v8.size.height);
    }
  }

  else if (v2)
  {
    SBSUIWallpaperClearVideo();
  }

  SBSUIWallpaperSetImage(*(a1 + 32), *(a1 + 48), *(a1 + 64));
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_setProceduralWallpaperForLocationsOnMainThread:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(SBSUIWallpaperPreviewViewController *)self _displaySettingWallpaperHUD];
  v7 = [(NSDictionary *)self->_proceduralWallpaper copy];
  v8 = [(NSDictionary *)self->_proceduralWallpaperOptions copy];
  v9 = dispatch_get_global_queue(0, 0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __105__SBSUIWallpaperPreviewViewController__setProceduralWallpaperForLocationsOnMainThread_completionHandler___block_invoke;
  v13[3] = &unk_1E789F380;
  v14 = v7;
  v15 = v8;
  v16 = v6;
  v17 = a3;
  v10 = v6;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, v13);
}

uint64_t __105__SBSUIWallpaperPreviewViewController__setProceduralWallpaperForLocationsOnMainThread_completionHandler___block_invoke(uint64_t a1)
{
  SBSUIMagicWallpaperSetWithOptions(*(a1 + 32), *(a1 + 56), *(a1 + 40));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_applyHomeScreenPreview
{
  if (self->_homeScreenPreviewView)
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = v11;
    Width = CGRectGetWidth(v20);
    v21.origin.x = v5;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    Height = CGRectGetHeight(v21);
    if (Width >= Height)
    {
      Width = Height;
    }

    v22.origin.x = v5;
    v22.origin.y = v7;
    v22.size.width = v9;
    v22.size.height = v11;
    v14 = CGRectGetWidth(v22);
    v23.origin.x = v5;
    v23.origin.y = v7;
    v23.size.width = v9;
    v23.size.height = v11;
    v15 = CGRectGetHeight(v23);
    if (v14 >= v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    v18 = SBSUIWallpaperGetPreview(1u, 704, Width);
    v17 = SBSUIWallpaperGetPreview(1u, 832, v16);
    [(_SBSUIOrientedImageView *)self->_homeScreenPreviewView setPortraitImage:v18];
    [(_SBSUIOrientedImageView *)self->_homeScreenPreviewView setLandscapeImage:v17];
  }
}

- (SBFWallpaperOptions)wallpaperOptions
{
  v3 = [(PBUIWallpaperOptions *)self->_options copy];
  v4 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperViewIfLoaded];

  if (v4)
  {
    v5 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
    [v5 cropRect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
    [v14 cropZoomScale];
    v16 = v15;

    v17 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
    v18 = [v17 parallaxEnabled];

    v19 = 0.0;
    if (v18)
    {
      v20 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
      [v20 parallaxFactor];
      v19 = v21;
    }

    [v3 setCropRect:{v7, v9, v11, v13}];
    [v3 setZoomScale:v16];
    [v3 setParallaxFactor:v19];
  }

  return v3;
}

- (void)setIrisEnabled:(BOOL)a3
{
  v3 = a3;
  if (self->_irisEnabled != a3)
  {
    [(SBSUIWallpaperPreviewViewController *)self willChangeValueForKey:@"irisEnabled"];
    self->_irisEnabled = v3;
    [(SBSUIWallpaperPreviewViewController *)self didChangeValueForKey:@"irisEnabled"];
  }

  v5 = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  v6 = [v5 irisButton];
  [v6 setSelected:v3];

  v7 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  if (objc_opt_respondsToSelector())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 irisGestureRecognizer];

  [v10 setEnabled:v3];
  if (v3)
  {
    [(SBSUIWallpaperPreviewViewController *)self setMotionEnabled:0];
  }

  v11 = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  [v11 displayInstructionsForEffect:1 enabled:v3 animated:1];
}

- (void)setMotionEnabled:(BOOL)a3 updateParallaxOnWallpaperView:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (self->_motionEnabled != a3)
  {
    [(SBSUIWallpaperPreviewViewController *)self willChangeValueForKey:@"motionEnabled"];
    self->_motionEnabled = v5;
    [(SBSUIWallpaperPreviewViewController *)self didChangeValueForKey:@"motionEnabled"];
  }

  v7 = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  v8 = [v7 parallaxButton];
  [v8 setSelected:v5];

  if (v5)
  {
    [(SBSUIWallpaperPreviewViewController *)self setIrisEnabled:0];
  }

  if (v4)
  {
    v9 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
    [v9 setParallaxEnabled:v5];
  }

  v10 = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  [v10 displayInstructionsForEffect:0 enabled:v5 animated:1];
}

- (_UILegibilitySettings)legibilitySettings
{
  v2 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  v3 = [v2 legibilitySettings];

  return v3;
}

- (void)providerLegibilitySettingsChanged:(id)a3
{
  v7 = [a3 legibilitySettings];
  v4 = [(SBSUIWallpaperPreviewViewController *)self _dateView];
  [v4 setLegibilitySettings:v7];

  v5 = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  [v5 updateForChangedSettings:v7];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained providerLegibilitySettingsChanged:self];
}

- (void)userDidTapOnIrisButton:(id)a3
{
  v4 = [(SBSUIWallpaperPreviewViewController *)self irisEnabled]^ 1;

  [(SBSUIWallpaperPreviewViewController *)self setIrisEnabled:v4];
}

- (void)userDidTapOnParallaxButton:(id)a3
{
  v4 = [(SBSUIWallpaperPreviewViewController *)self motionEnabled]^ 1;

  [(SBSUIWallpaperPreviewViewController *)self setMotionEnabled:v4];
}

- (void)userDidTapOnCancelButton:(id)a3
{
  v4 = [(SBSUIWallpaperPreviewViewController *)self previewDelegate];
  [v4 wallpaperPreviewViewControllerCancelButtonPressed:self];
}

- (void)userDidTapOnSetButton:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = SBLogWallpaper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    optionsDict = self->_optionsDict;
    v10 = 138543362;
    v11 = optionsDict;
    _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "This is what we believe the wallpaper options are when the user tapped on the set button: %{public}@", &v10, 0xCu);
  }

  v6 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  [v6 cropRect];
  [(SBSUIWallpaperPreviewViewController *)self setCropRect:?];

  v7 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  [v7 cropZoomScale];
  [(SBSUIWallpaperPreviewViewController *)self setZoomScale:?];

  v8 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  [v8 parallaxFactor];
  [(SBSUIWallpaperPreviewViewController *)self setParallaxFactor:?];

  v9 = [(SBSUIWallpaperPreviewViewController *)self previewDelegate];
  [v9 wallpaperPreviewViewControllerSetButtonPressed:self];
}

- (id)_wallpaperViewWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  options = self->_options;
  if (options)
  {
    [(PBUIWallpaperOptions *)options cropRect];
    v40 = v9;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(PBUIWallpaperOptions *)self->_options zoomScale];
    v17 = v16;
    v18 = [(PBUIWallpaperOptions *)self->_options parallaxEnabled];
    v19 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperConfigurationManager];
    if ([v19 enableWallpaperDimming])
    {
      v20 = [(SBSUIWallpaperPreviewViewController *)self traitCollection];
      v21 = [v20 userInterfaceStyle] == 2 && -[NSDictionary count](self->_wallpaperImageDict, "count") == 1;
    }

    else
    {
      v21 = 0;
    }

    wallpaperImage = self->_wallpaperImage;
    video = self->_video;
    v25 = [(AVURLAsset *)video URL];
    v22 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperViewWithFrame:wallpaperImage image:video video:v25 videoURL:self->_allowScrolling stillTimeInVideo:self->_variant supportsCropping:v21 variant:x needsWallpaperDimming:y, width, height, self->_stillTimeInVideo];

    goto LABEL_12;
  }

  v11 = *(MEMORY[0x1E695F050] + 8);
  v40 = *MEMORY[0x1E695F050];
  v13 = *(MEMORY[0x1E695F050] + 16);
  v15 = *(MEMORY[0x1E695F050] + 24);
  if (self->_proceduralWallpaper)
  {
    v22 = [(SBSUIWallpaperPreviewViewController *)self _proceduralWallpaperViewWithFrame:0 variant:self->_initialConfiguration configuration:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
LABEL_7:
    v18 = 1;
    v17 = 1.0;
    goto LABEL_12;
  }

  v27 = self->_video;
  v28 = self->_wallpaperImage;
  if (v27)
  {
    v29 = [(AVURLAsset *)self->_video URL];
    v22 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperViewWithFrame:v28 image:v27 video:v29 videoURL:self->_allowScrolling stillTimeInVideo:0 supportsCropping:0 variant:x needsWallpaperDimming:y, width, height, self->_stillTimeInVideo];

LABEL_19:
    v30 = [MEMORY[0x1E69D3FF0] currentMagnifyMode];
    v31 = v30;
    if (v30)
    {
      [v30 zoomFactor];
      v17 = 1.0 / v32;
    }

    else
    {
      v17 = 1.0;
    }

    v18 = 1;
    goto LABEL_12;
  }

  if (v28)
  {
    v22 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperViewWithFrame:self->_wallpaperImage image:0 video:0 videoURL:self->_allowScrolling stillTimeInVideo:0 supportsCropping:0 variant:a3.origin.x needsWallpaperDimming:a3.origin.y, a3.size.width, a3.size.height, 0.0];
    goto LABEL_19;
  }

  if (self->_variant == -1)
  {
    v39 = [objc_alloc(MEMORY[0x1E69B7DE0]) initWithVariant:self->_variant type:0];
    v22 = [objc_alloc(MEMORY[0x1E69B7E10]) initWithFrame:v39 configuration:self->_variant variant:0 cacheGroup:0 delegate:0 options:{x, y, width, height}];

    goto LABEL_7;
  }

  v33 = SBSUIWallpaperGetOptions();
  v17 = 1.0;
  if ([v33 supportsCropping])
  {
    [v33 cropRect];
    v40 = v34;
    v11 = v35;
    v13 = v36;
    v15 = v37;
    [v33 zoomScale];
    v17 = v38;
  }

  v18 = [v33 parallaxEnabled];
  v22 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperViewWithFrame:self->_variant variant:v33 options:x, y, width, height];

LABEL_12:
  [v22 setDelegate:self];
  [v22 setParallaxEnabled:v18];
  [v22 setCropRect:v40 zoomScale:{v11, v13, v15, v17}];

  return v22;
}

- (id)_wallpaperViewWithFrame:(CGRect)a3 image:(id)a4 video:(id)a5 videoURL:(id)a6 stillTimeInVideo:(double)a7 supportsCropping:(BOOL)a8 variant:(int64_t)a9 needsWallpaperDimming:(BOOL)a10
{
  v10 = a10;
  v12 = a8;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v20 = a5;
  v21 = a6;
  v50 = v20;
  v22 = (v20 | v21) == 0;
  v23 = (v20 | v21) != 0;
  if (v22)
  {
    v24 = 1;
  }

  else
  {
    v24 = 3;
  }

  v25 = MEMORY[0x1E69B7DE0];
  v26 = a4;
  v27 = [[v25 alloc] initWithVariant:a9 type:v24];
  v28 = objc_alloc(MEMORY[0x1E69B7E00]);
  v29 = [v26 CGImage];
  [v26 scale];
  v31 = v30;
  v32 = [v26 imageOrientation];

  v33 = [v28 initWithCGImage:v29 scale:v32 orientation:0 wallpaperFileURL:v31];
  [v27 setWallpaperImage:v33];

  [v27 setVideoURL:v21];
  v34 = objc_alloc_init(MEMORY[0x1E69B7E08]);
  [v34 setStillTimeInVideo:a7];
  [v34 setSupportsCropping:v12];
  [v27 setWallpaperOptions:v34];
  [v27 setNeedsWallpaperDimmingTreatment:v10];
  if (!v12)
  {
    if (v23)
    {
      v39 = objc_alloc(MEMORY[0x1E69B7DC0]);
      v40 = x;
      v41 = y;
      v42 = width;
      v43 = height;
      v44 = v27;
      v45 = a9;
      v46 = 16;
LABEL_13:
      v38 = [v39 initWithFrame:v44 configuration:v45 variant:0 cacheGroup:0 delegate:v46 options:{v40, v41, v42, v43}];
      v37 = v50;
      goto LABEL_14;
    }

    v47 = MEMORY[0x1E69B7DD8];
LABEL_12:
    v39 = [v47 alloc];
    v40 = x;
    v41 = y;
    v42 = width;
    v43 = height;
    v44 = v27;
    v45 = a9;
    v46 = 0;
    goto LABEL_13;
  }

  if (!v23)
  {
    v47 = MEMORY[0x1E69B7DD0];
    goto LABEL_12;
  }

  v35 = objc_alloc(MEMORY[0x1E69B7DC8]);
  v36 = v35;
  v37 = v50;
  if (v50)
  {
    v38 = [v35 initWithFrame:v27 configuration:v50 wallpaperVideo:a9 variant:{x, y, width, height}];
  }

  else
  {
    v49 = [MEMORY[0x1E6987E28] assetWithURL:v21];
    v38 = [v36 initWithFrame:v27 configuration:v49 wallpaperVideo:a9 variant:{x, y, width, height}];
  }

LABEL_14:

  return v38;
}

- (id)_wallpaperViewWithFrame:(CGRect)a3 variant:(int64_t)a4 options:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v12 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperConfigurationManager];
  v13 = [v12 wallpaperConfigurationForVariant:a4 includingValuesForTypes:51 wallpaperMode:0];

  objc_storeStrong(&self->_wallpaperConfiguration, v13);
  v14 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperConfigurationManager];
  v15 = [v14 hasWallpaperImageForVariant:a4 wallpaperMode:2];

  v16 = 0;
  if (a4 == 1 && (v15 & 1) == 0)
  {
    v17 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperConfigurationManager];
    v16 = [v17 hasWallpaperImageForVariant:1 wallpaperMode:0] ^ 1;
  }

  if ((v15 | v16))
  {
    v18 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperConfigurationManager];
    v19 = [v18 wallpaperConfigurationForVariant:a4 includingValuesForTypes:51 wallpaperMode:2];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v13 proceduralWallpaperInfo];
  if (v20)
  {
    objc_storeStrong(&self->_proceduralWallpaper, v20);
    v21 = [(SBSUIWallpaperPreviewViewController *)self _proceduralWallpaperViewWithFrame:a4 variant:v13 configuration:x, y, width, height];
LABEL_11:
    v22 = v21;
    goto LABEL_12;
  }

  if ([v13 wallpaperType] == 4)
  {
    v21 = [(SBSUIWallpaperPreviewViewController *)self _colorWallpaperViewWithFrame:a4 variant:v13 configuration:x, y, width, height];
    goto LABEL_11;
  }

  v24 = [v13 wallpaperOriginalImage];
  if (!v24)
  {
    v24 = [v13 wallpaperImage];
  }

  v76 = [v13 videoURL];
  if (v19)
  {
    v25 = v24;
    v73 = v11;
    v26 = [v19 wallpaperOriginalImage];
    if (!v26)
    {
      v26 = [v19 wallpaperImage];
    }

    v75 = v26;
    v72 = [v19 videoURL];
    v27 = objc_alloc(MEMORY[0x1E695DF20]);
    v28 = PBUIStringForWallpaperMode();
    v29 = PBUIStringForWallpaperMode();
    v74 = v25;
    v30 = [v27 initWithObjectsAndKeys:{v25, v28, v26, v29, 0}];
    wallpaperImageDict = self->_wallpaperImageDict;
    self->_wallpaperImageDict = v30;

    v32 = objc_alloc(MEMORY[0x1E695DF20]);
    v33 = [v13 wallpaperOptions];
    v34 = PBUIStringForWallpaperMode();
    v35 = [v19 wallpaperOptions];
    v36 = PBUIStringForWallpaperMode();
    v37 = [v32 initWithObjectsAndKeys:{v33, v34, v35, v36, 0}];
    optionsDict = self->_optionsDict;
    self->_optionsDict = v37;

    v39 = objc_alloc(MEMORY[0x1E695DF20]);
    v40 = [MEMORY[0x1E6987E28] assetWithURL:v76];
    v41 = PBUIStringForWallpaperMode();
    v42 = [MEMORY[0x1E6987E28] assetWithURL:v72];
    v43 = PBUIStringForWallpaperMode();
    v44 = [v39 initWithObjectsAndKeys:{v40, v41, v42, v43, 0}];
    videoDict = self->_videoDict;
    self->_videoDict = v44;

    v46 = [(SBSUIWallpaperPreviewViewController *)self traitCollection];
    v47 = [v46 userInterfaceStyle];

    v48 = v75;
    if (v47 == 2)
    {
      v49 = v72;
    }

    else
    {
      v48 = v74;
      v49 = v76;
    }

    v50 = v48;
    v51 = v49;
    v11 = v73;
    [v73 stillTimeInVideo];
    v53 = v52;
    v54 = [v73 supportsCropping];
    v55 = [v13 needsWallpaperDimmingTreatment];
    v56 = self;
    v57 = v76;
    v24 = v74;
    v22 = [(SBSUIWallpaperPreviewViewController *)v56 _wallpaperViewWithFrame:v50 image:0 video:v51 videoURL:v54 stillTimeInVideo:a4 supportsCropping:v55 variant:x needsWallpaperDimming:y, width, height, v53];
  }

  else
  {
    v58 = objc_alloc(MEMORY[0x1E695DF20]);
    v59 = PBUIStringForWallpaperMode();
    v60 = [v58 initWithObjectsAndKeys:{v24, v59, 0}];
    v61 = self->_wallpaperImageDict;
    self->_wallpaperImageDict = v60;

    v62 = objc_alloc(MEMORY[0x1E695DF20]);
    v63 = [v13 wallpaperOptions];
    v64 = PBUIStringForWallpaperMode();
    v65 = [v62 initWithObjectsAndKeys:{v63, v64, 0}];
    v66 = self->_optionsDict;
    self->_optionsDict = v65;

    [v11 stillTimeInVideo];
    v68 = v67;
    v69 = [v11 supportsCropping];
    v70 = [v13 needsWallpaperDimmingTreatment];
    v71 = self;
    v57 = v76;
    v22 = [(SBSUIWallpaperPreviewViewController *)v71 _wallpaperViewWithFrame:v24 image:0 video:v76 videoURL:v69 stillTimeInVideo:a4 supportsCropping:v70 variant:x needsWallpaperDimming:y, width, height, v68];
  }

  [v11 parallaxFactor];
  [v22 setParallaxFactor:?];

LABEL_12:

  return v22;
}

- (id)_proceduralWallpaperViewWithFrame:(CGRect)a3 variant:(int64_t)a4 configuration:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = MEMORY[0x1E69B7DB0];
  v11 = a5;
  v12 = [[v10 alloc] initWithFrame:v11 configuration:a4 variant:0 cacheGroup:0 delegate:0 options:{x, y, width, height}];

  [v12 prepareToAppear];

  return v12;
}

- (id)_colorWallpaperViewWithFrame:(CGRect)a3 variant:(int64_t)a4 configuration:(id)a5
{
  v6 = MEMORY[0x1E69B7DB8];
  v7 = a5;
  v8 = [v6 alloc];
  v9 = [v8 initWithFrame:v7 configuration:a4 variant:0 cacheGroup:0 delegate:0 options:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  [v9 prepareToAppear];

  return v9;
}

- (id)_wallpaperView
{
  v2 = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  v3 = [v2 wallpaperView];

  return v3;
}

- (id)_wallpaperViewIfLoaded
{
  v2 = [(SBSUIWallpaperPreviewViewController *)self _previewViewIfLoaded];
  v3 = [v2 wallpaperView];

  return v3;
}

- (void)_displaySettingWallpaperHUD
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = objc_alloc_init(SBSUIWallpaperProgressHUD);
  hud = self->_hud;
  self->_hud = v3;

  v5 = self->_hud;
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v8 localizedStringForKey:@"SETTING_WALLPAPER" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
  v7 = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  [(SBSUIWallpaperProgressHUD *)v5 showMessage:v6 inView:v7];
}

- (void)_enableIrisOrParallaxIfEligible
{
  v3 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  v4 = objc_opt_respondsToSelector();

  v5 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  v6 = [v5 parallaxEnabled];

  if ((v4 & 1) != 0 && v3)
  {

    [(SBSUIWallpaperPreviewViewController *)self setIrisEnabled:1];
  }

  else if (v6)
  {

    [(SBSUIWallpaperPreviewViewController *)self setMotionEnabled:1];
  }
}

- (void)_logWallpaperChangeForLocations:(int64_t)a3
{
  v4 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  v5 = [v4 wallpaperType];
  v6 = objc_alloc_init(MEMORY[0x1E69D4020]);
  wallpaperCoreAnalyticsLogger = self->_wallpaperCoreAnalyticsLogger;
  self->_wallpaperCoreAnalyticsLogger = v6;

  if ((v5 & 0xFFFFFFFFFFFFFFFDLL) == 1 && [(SBSUIWallpaperPreviewViewController *)self irisEnabled])
  {
    v8 = v4;
    objc_opt_respondsToSelector();
  }

  v9 = objc_alloc_init(MEMORY[0x1E69B7DF0]);
  v10 = [MEMORY[0x1E695DF00] date];
  [v9 setDateWallpaperLastChanged:v10];

  v11 = v4;
  AnalyticsSendEventLazy();
}

id __71__SBSUIWallpaperPreviewViewController__logWallpaperChangeForLocations___block_invoke(uint64_t a1)
{
  v23[5] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) parallaxEnabled])
  {
    v2 = [objc_opt_class() allowsParallax];
  }

  else
  {
    v2 = 0;
  }

  v22[0] = @"bundleID";
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v23[0] = v4;
  v22[1] = @"age";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(a1 + 40) + 1160), "ageOfWallpaper")}];
  v23[1] = v5;
  v22[2] = @"type";
  v6 = PBUIStringForWallpaperType();
  v23[2] = v6;
  v22[3] = @"locations";
  v7 = PBUIStringForWallpaperLocations();
  v23[3] = v7;
  v22[4] = @"parallax";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v2];
  v23[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:5];
  v10 = [v9 mutableCopy];

  v11 = *(a1 + 64);
  if (v11 < 2)
  {
LABEL_7:
    v12 = *(*(a1 + 40) + 1120);
    v13 = PBUIStringForWallpaperMode();
    v14 = [v12 objectForKeyedSubscript:v13];
    v15 = [v14 name];
    v16 = v15;
    if (!v15)
    {
      v16 = *(*(a1 + 40) + 1072);
    }

    v17 = v16;

    if (![v17 length])
    {
      goto LABEL_14;
    }

    v18 = @"name";
    goto LABEL_13;
  }

  if (v11 != 2)
  {
    if (v11 != 3)
    {
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  v19 = [*(*(a1 + 40) + 1040) objectForKeyedSubscript:*MEMORY[0x1E69B7E28]];
  v17 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69B7E20]];

  if ([v17 length])
  {
    v18 = @"bokehVariant";
LABEL_13:
    v20 = [v17 copy];
    [v10 setObject:v20 forKeyedSubscript:v18];
  }

LABEL_14:

LABEL_15:

  return v10;
}

- (id)_dateView
{
  v2 = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  v3 = [v2 dateView];

  return v3;
}

- (void)_updateDateView
{
  [(SBSUIWallpaperPreviewViewController *)self _stopDateTimer];
  v3 = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  v4 = [v3 dateView];
  v5 = [MEMORY[0x1E695DF00] date];
  [v4 setDate:v5];

  [(SBSUIWallpaperPreviewViewController *)self _startDateTimer];
}

- (void)_stopDateTimer
{
  [(NSTimer *)self->_dateTimer invalidate];
  dateTimer = self->_dateTimer;
  self->_dateTimer = 0;
}

- (void)_startDateTimer
{
  v3 = MEMORY[0x1E695DFF0];
  BSTimeUntilNextClockMinute();
  v4 = [v3 scheduledTimerWithTimeInterval:self target:sel__updateDateView selector:0 userInfo:0 repeats:?];
  dateTimer = self->_dateTimer;
  self->_dateTimer = v4;

  MEMORY[0x1EEE66BB8](v4, dateTimer);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &SBParallaxEnabledChanged)
  {
    v7 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView:a3];
    -[SBSUIWallpaperPreviewViewController setMotionEnabled:updateParallaxOnWallpaperView:](self, "setMotionEnabled:updateParallaxOnWallpaperView:", [v7 parallaxEnabled], 0);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBSUIWallpaperPreviewViewController;
    [(SBSUIWallpaperPreviewViewController *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (SBFLegibilitySettingsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBSUIWallpaperPreviewViewControllerDelegate)previewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_previewDelegate);

  return WeakRetained;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end