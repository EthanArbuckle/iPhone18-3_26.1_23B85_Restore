@interface SBSUIWallpaperPreviewViewController
- (CGRect)cropRect;
- (SBFLegibilitySettingsProviderDelegate)delegate;
- (SBFWallpaperOptions)wallpaperOptions;
- (SBSUIWallpaperPreviewViewController)initWithImage:(id)image;
- (SBSUIWallpaperPreviewViewController)initWithImage:(id)image name:(id)name video:(id)video time:(double)time;
- (SBSUIWallpaperPreviewViewController)initWithImage:(id)image video:(id)video variant:(int64_t)variant options:(id)options disableSegmentedControl:(BOOL)control enableButtons:(BOOL)buttons disableContents:(BOOL)contents;
- (SBSUIWallpaperPreviewViewController)initWithImages:(id)images videos:(id)videos variant:(int64_t)variant options:(id)options disableSegmentedControl:(BOOL)control enableButtons:(BOOL)buttons disableContents:(BOOL)contents disableParallax:(BOOL)self0;
- (SBSUIWallpaperPreviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SBSUIWallpaperPreviewViewController)initWithProceduralWallpaper:(id)wallpaper options:(id)options;
- (SBSUIWallpaperPreviewViewController)initWithProceduralWallpaper:(id)wallpaper options:(id)options variant:(int64_t)variant disableSegmentedControl:(BOOL)control enableButtons:(BOOL)buttons disableContents:(BOOL)contents;
- (SBSUIWallpaperPreviewViewController)initWithScrollableImage:(id)image video:(id)video time:(double)time;
- (SBSUIWallpaperPreviewViewController)initWithWallpaperVariant:(int64_t)variant;
- (SBSUIWallpaperPreviewViewControllerDelegate)previewDelegate;
- (_UILegibilitySettings)legibilitySettings;
- (double)_parallaxFactor;
- (id)_colorWallpaperViewWithFrame:(CGRect)frame variant:(int64_t)variant configuration:(id)configuration;
- (id)_dateView;
- (id)_proceduralWallpaperViewWithFrame:(CGRect)frame variant:(int64_t)variant configuration:(id)configuration;
- (id)_wallpaperConfigurationManager;
- (id)_wallpaperTypeDescription;
- (id)_wallpaperView;
- (id)_wallpaperViewIfLoaded;
- (id)_wallpaperViewWithFrame:(CGRect)frame;
- (id)_wallpaperViewWithFrame:(CGRect)frame image:(id)image video:(id)video videoURL:(id)l stillTimeInVideo:(double)inVideo supportsCropping:(BOOL)cropping variant:(int64_t)variant needsWallpaperDimming:(BOOL)self0;
- (id)_wallpaperViewWithFrame:(CGRect)frame variant:(int64_t)variant options:(id)options;
- (int64_t)_wallpaperType;
- (void)_applyHomeScreenPreview;
- (void)_displaySettingWallpaperHUD;
- (void)_enableIrisOrParallaxIfEligible;
- (void)_logWallpaperChangeForLocations:(int64_t)locations;
- (void)_setImageWallpaperForLocationsOnMainThread:(int64_t)thread completionHandler:(id)handler;
- (void)_setProceduralWallpaperForLocationsOnMainThread:(int64_t)thread completionHandler:(id)handler;
- (void)_setWallpaperForLocationsOnMainThread:(int64_t)thread completionHandler:(id)handler;
- (void)_setWallpaperImagesOnMainThread:(id)thread options:(id)options locations:(int64_t)locations completionHandler:(id)handler;
- (void)_startDateTimer;
- (void)_stopDateTimer;
- (void)_updateDateView;
- (void)dealloc;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)providerLegibilitySettingsChanged:(id)changed;
- (void)setImageWallpaperForLocations:(int64_t)locations completionHandler:(id)handler;
- (void)setIrisEnabled:(BOOL)enabled;
- (void)setMotionEnabled:(BOOL)enabled updateParallaxOnWallpaperView:(BOOL)view;
- (void)setWallpaperForLocations:(int64_t)locations completionHandler:(id)handler;
- (void)setWallpaperImages:(id)images options:(id)options locations:(int64_t)locations completionHandler:(id)handler;
- (void)traitCollectionDidChange:(id)change;
- (void)userDidTapOnCancelButton:(id)button;
- (void)userDidTapOnIrisButton:(id)button;
- (void)userDidTapOnParallaxButton:(id)button;
- (void)userDidTapOnSetButton:(id)button;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SBSUIWallpaperPreviewViewController

- (SBSUIWallpaperPreviewViewController)initWithNibName:(id)name bundle:(id)bundle
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

- (SBSUIWallpaperPreviewViewController)initWithImage:(id)image
{
  imageCopy = image;
  v5 = [(SBSUIWallpaperPreviewViewController *)self initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B7DE0]) initWithVariant:-1 type:1];
    initialConfiguration = v5->_initialConfiguration;
    v5->_initialConfiguration = v6;

    if ([imageCopy imageOrientation])
    {
      defaultFormat = [MEMORY[0x1E69DCA80] defaultFormat];
      v9 = [defaultFormat copy];

      [imageCopy scale];
      [v9 setScale:?];
      [imageCopy size];
      v11 = v10;
      v13 = v12;
      v14 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v9 format:{v10, v12}];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __53__SBSUIWallpaperPreviewViewController_initWithImage___block_invoke;
      v23[3] = &unk_1E789F290;
      v24 = imageCopy;
      v25 = v11;
      v26 = v13;
      imageCopy = [v14 imageWithActions:v23];
    }

    v15 = objc_alloc(MEMORY[0x1E69B7E00]);
    cGImage = [imageCopy CGImage];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v19 = [v15 initWithCGImage:cGImage scale:objc_msgSend(imageCopy orientation:"imageOrientation") wallpaperFileURL:{0, v18}];

    wallpaperImage = v5->_wallpaperImage;
    v5->_wallpaperImage = v19;
    v21 = v19;

    [(PBUIWallpaperConfiguration *)v5->_initialConfiguration setWallpaperImage:v21];
  }

  return v5;
}

- (SBSUIWallpaperPreviewViewController)initWithWallpaperVariant:(int64_t)variant
{
  v4 = [(SBSUIWallpaperPreviewViewController *)self initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69B7DE0]) initWithVariant:-1 type:1];
    initialConfiguration = v4->_initialConfiguration;
    v4->_initialConfiguration = v5;

    v4->_variant = variant;
  }

  return v4;
}

- (SBSUIWallpaperPreviewViewController)initWithProceduralWallpaper:(id)wallpaper options:(id)options
{
  wallpaperCopy = wallpaper;
  optionsCopy = options;
  v9 = [(SBSUIWallpaperPreviewViewController *)self initWithNibName:0 bundle:0];
  if (v9)
  {
    v10 = [wallpaperCopy mutableCopy];
    v11 = v10;
    if (optionsCopy)
    {
      [v10 setObject:optionsCopy forKey:*MEMORY[0x1E69B7E28]];
    }

    v12 = [objc_alloc(MEMORY[0x1E69B7DE0]) initWithVariant:-1 type:2];
    initialConfiguration = v9->_initialConfiguration;
    v9->_initialConfiguration = v12;

    [(PBUIWallpaperConfiguration *)v9->_initialConfiguration setProceduralWallpaperInfo:v11];
    objc_storeStrong(&v9->_proceduralWallpaper, wallpaper);
    objc_storeStrong(&v9->_proceduralWallpaperOptions, options);
  }

  return v9;
}

- (SBSUIWallpaperPreviewViewController)initWithProceduralWallpaper:(id)wallpaper options:(id)options variant:(int64_t)variant disableSegmentedControl:(BOOL)control enableButtons:(BOOL)buttons disableContents:(BOOL)contents
{
  wallpaperCopy = wallpaper;
  optionsCopy = options;
  v16 = [(SBSUIWallpaperPreviewViewController *)self initWithNibName:0 bundle:0];
  if (v16)
  {
    v17 = [wallpaperCopy mutableCopy];
    v18 = v17;
    if (optionsCopy)
    {
      [v17 setObject:optionsCopy forKey:*MEMORY[0x1E69B7E28]];
    }

    v19 = [objc_alloc(MEMORY[0x1E69B7DE0]) initWithVariant:-1 type:2];
    initialConfiguration = v16->_initialConfiguration;
    v16->_initialConfiguration = v19;

    [(PBUIWallpaperConfiguration *)v16->_initialConfiguration setProceduralWallpaperInfo:v18];
    objc_storeStrong(&v16->_proceduralWallpaper, wallpaper);
    objc_storeStrong(&v16->_proceduralWallpaperOptions, options);
    v16->_variant = variant;
    v16->_enableButtons = buttons;
    v16->_disableContents = contents;
  }

  return v16;
}

- (SBSUIWallpaperPreviewViewController)initWithImage:(id)image name:(id)name video:(id)video time:(double)time
{
  nameCopy = name;
  videoCopy = video;
  v12 = [(SBSUIWallpaperPreviewViewController *)self initWithImage:image];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E69B7E08]);
    [v13 setName:nameCopy];
    [v13 setStillTimeInVideo:time];
    [(PBUIWallpaperConfiguration *)v12->_initialConfiguration setWallpaperOptions:v13];
    v14 = [nameCopy copy];
    name = v12->_name;
    v12->_name = v14;

    objc_storeStrong(&v12->_video, video);
    if (videoCopy)
    {
      v12->_stillTimeInVideo = time;
    }

    v16 = v12;
  }

  return v12;
}

- (SBSUIWallpaperPreviewViewController)initWithImage:(id)image video:(id)video variant:(int64_t)variant options:(id)options disableSegmentedControl:(BOOL)control enableButtons:(BOOL)buttons disableContents:(BOOL)contents
{
  controlCopy = control;
  buttonsCopy = buttons;
  v34 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  videoCopy = video;
  imageCopy = image;
  v16 = SBLogWallpaper();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = PBUIStringForWallpaperVariant();
    *buf = 67240706;
    v29 = imageCopy != 0;
    v30 = 2114;
    v31 = optionsCopy;
    v32 = 2114;
    v33 = v17;
    _os_log_impl(&dword_1A9A79000, v16, OS_LOG_TYPE_DEFAULT, "Initializing full screen preview with given image: %{public}d and options: %{public}@ for variant: %{public}@", buf, 0x1Cu);
  }

  v18 = PBUIStringForWallpaperMode();
  v19 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{imageCopy, v18, 0}];
  v20 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{videoCopy, v18, 0}];

  v21 = objc_alloc(MEMORY[0x1E695DF20]);
  v22 = [v21 initWithObjectsAndKeys:{optionsCopy, v18, 0}];
  LOWORD(v25) = contents;
  v23 = [(SBSUIWallpaperPreviewViewController *)self initWithImages:v19 videos:v20 variant:variant options:v22 disableSegmentedControl:controlCopy enableButtons:buttonsCopy disableContents:v25 disableParallax:?];

  return v23;
}

- (SBSUIWallpaperPreviewViewController)initWithImages:(id)images videos:(id)videos variant:(int64_t)variant options:(id)options disableSegmentedControl:(BOOL)control enableButtons:(BOOL)buttons disableContents:(BOOL)contents disableParallax:(BOOL)self0
{
  v42 = *MEMORY[0x1E69E9840];
  imagesCopy = images;
  videosCopy = videos;
  optionsCopy = options;
  v17 = SBLogWallpaper();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = PBUIStringForWallpaperVariant();
    *buf = 67240706;
    v37 = imagesCopy != 0;
    v38 = 2114;
    v39 = optionsCopy;
    v40 = 2114;
    v41 = v18;
    _os_log_impl(&dword_1A9A79000, v17, OS_LOG_TYPE_DEFAULT, "Initializing full screen preview with given image: %{public}d and options: %{public}@ for variant: %{public}@", buf, 0x1Cu);
  }

  v19 = [(SBSUIWallpaperPreviewViewController *)self init];
  if ([imagesCopy count] >= 2)
  {
    traitCollection = [(SBSUIWallpaperPreviewViewController *)v19 traitCollection];
    [traitCollection userInterfaceStyle];
  }

  v21 = PBUIStringForWallpaperMode();
  v22 = [imagesCopy objectForKeyedSubscript:v21];
  v23 = [(SBSUIWallpaperPreviewViewController *)v19 initWithImage:v22];

  if (v23)
  {
    objc_storeStrong((v23 + 1032), images);
    objc_storeStrong((v23 + 1096), videos);
    objc_storeStrong((v23 + 1120), options);
    v24 = [optionsCopy objectForKeyedSubscript:v21];
    v25 = *(v23 + 1112);
    *(v23 + 1112) = v24;

    [*(v23 + 1016) setWallpaperOptions:*(v23 + 1112)];
    name = [*(v23 + 1112) name];
    v27 = [name copy];
    v28 = *(v23 + 1072);
    *(v23 + 1072) = v27;

    v29 = [videosCopy objectForKeyedSubscript:v21];
    v30 = *(v23 + 1088);
    *(v23 + 1088) = v29;

    *(v23 + 1064) = variant;
    *(v23 + 1056) = [*(v23 + 1112) supportsCropping];
    *(v23 + 1128) = buttons;
    *(v23 + 1129) = contents;
    *(v23 + 1130) = parallax;
    if (*(v23 + 1088))
    {
      [*(v23 + 1112) stillTimeInVideo];
      *(v23 + 1104) = v31;
    }

    v32 = v23;
  }

  return v23;
}

- (SBSUIWallpaperPreviewViewController)initWithScrollableImage:(id)image video:(id)video time:(double)time
{
  videoCopy = video;
  v10 = [(SBSUIWallpaperPreviewViewController *)self initWithImage:image];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69B7E08]);
    [v11 setStillTimeInVideo:time];
    [(PBUIWallpaperConfiguration *)v10->_initialConfiguration setWallpaperOptions:v11];
    v10->_allowScrolling = 1;
    objc_storeStrong(&v10->_video, video);
    if (videoCopy)
    {
      v10->_stillTimeInVideo = time;
    }

    v12 = v10;
  }

  return v10;
}

- (void)dealloc
{
  if ([(SBSUIWallpaperPreviewViewController *)self isViewLoaded])
  {
    _wallpaperView = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
    [_wallpaperView removeObserver:self forKeyPath:@"parallaxEnabled"];
    [_wallpaperView setDelegate:0];
    if (_os_feature_enabled_impl())
    {
      _previewView = [(SBSUIWallpaperPreviewViewController *)self _previewView];
      [_previewView setDateView:0];

      [(SBFLockScreenDateViewController *)self->_dateViewController removeFromParentViewController];
    }
  }

  v5.receiver = self;
  v5.super_class = SBSUIWallpaperPreviewViewController;
  [(SBSUIWallpaperPreviewViewController *)&v5 dealloc];
}

- (void)loadView
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v32 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperViewWithFrame:v5, v7, v9, v11];
  parallaxEnabled = [v32 parallaxEnabled];
  v13 = [[SBSUIWallpaperPreviewView alloc] initWithFrame:v32 wallpaperView:self->_disableParallax disableParallax:v5, v7, v9, v11];
  [(SBSUIWallpaperPreviewView *)v13 setDelegate:self];
  [(SBSUIWallpaperPreviewViewController *)self setView:v13];
  [v32 addObserver:self forKeyPath:@"parallaxEnabled" options:0 context:&SBParallaxEnabledChanged];
  [(SBSUIWallpaperPreviewViewController *)self setMotionEnabled:parallaxEnabled];
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
    view = [(SBSUIWallpaperPreviewViewController *)self view];
    [view addSubview:v23];

    if (_os_feature_enabled_impl())
    {
      v25 = objc_alloc_init(MEMORY[0x1E69D3FE0]);
      dateViewController = self->_dateViewController;
      self->_dateViewController = v25;

      dateView = [(SBFLockScreenDateViewController *)self->_dateViewController dateView];
      timeFont = [MEMORY[0x1E69D3FD8] timeFont];
      [dateView setCustomTimeFont:timeFont];

      legibilitySettings = [(SBSUIWallpaperPreviewViewController *)self legibilitySettings];
      [dateView setLegibilitySettings:legibilitySettings];

      [(SBSUIWallpaperPreviewViewController *)self addChildViewController:self->_dateViewController];
      _previewView = [(SBSUIWallpaperPreviewViewController *)self _previewView];
      [_previewView setDateView:dateView];
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
        view2 = [(SBSUIWallpaperPreviewViewController *)self view];
        [view2 addSubview:self->_homeScreenPreviewView];

        [(SBSUIWallpaperPreviewViewController *)self _applyHomeScreenPreview];
      }
    }
  }

  [(SBSUIWallpaperPreviewViewController *)self _enableIrisOrParallaxIfEligible];
  if ([v32 parallaxEnabled] & 1) == 0 && (objc_opt_respondsToSelector())
  {
    [v32 setAutomaticallyEnablesParallax:0];
  }

  legibilitySettings2 = [v32 legibilitySettings];
  if (legibilitySettings2)
  {
    [(SBSUIWallpaperPreviewViewController *)self providerLegibilitySettingsChanged:v32];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBSUIWallpaperPreviewViewController;
  [(SBSUIWallpaperPreviewViewController *)&v4 viewWillAppear:appear];
  [(SBSUIWallpaperPreviewViewController *)self _updateDateView];
  [(SBSUIWallpaperPreviewViewController *)self _enableIrisOrParallaxIfEligible];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBSUIWallpaperPreviewViewController;
  [(SBSUIWallpaperPreviewViewController *)&v4 viewWillDisappear:disappear];
  [(SBSUIWallpaperPreviewViewController *)self _stopDateTimer];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = SBSUIWallpaperPreviewViewController;
  [(SBSUIWallpaperPreviewViewController *)&v6 viewDidAppear:appear];
  v4 = SBLogWallpaper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _wallpaperTypeDescription = [(SBSUIWallpaperPreviewViewController *)self _wallpaperTypeDescription];
    *buf = 138543362;
    v8 = _wallpaperTypeDescription;
    _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "PRESENTING Wallpaper Preview View Controller: %{public}@", buf, 0xCu);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = SBSUIWallpaperPreviewViewController;
  [(SBSUIWallpaperPreviewViewController *)&v6 viewDidDisappear:disappear];
  v4 = SBLogWallpaper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _wallpaperTypeDescription = [(SBSUIWallpaperPreviewViewController *)self _wallpaperTypeDescription];
    *buf = 138543362;
    v8 = _wallpaperTypeDescription;
    _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "DISMISSING Wallpaper Preview View Controller: %{public}@", buf, 0xCu);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(SBSUIWallpaperPreviewViewController *)self traitCollection];
  v6 = [traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (!v6)
  {
    return;
  }

  if ([(NSDictionary *)self->_wallpaperImageDict count]>= 2)
  {
    traitCollection2 = [(SBSUIWallpaperPreviewViewController *)self traitCollection];
    [traitCollection2 userInterfaceStyle];

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

  _wallpaperConfigurationManager = [(SBSUIWallpaperPreviewViewController *)self _wallpaperConfigurationManager];
  if (![_wallpaperConfigurationManager enableWallpaperDimming])
  {
LABEL_18:

    goto LABEL_19;
  }

  v16 = [(NSDictionary *)self->_wallpaperImageDict count];

  if (v16 == 1)
  {
LABEL_11:
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperViewWithFrame:v19, v21, v23, v25];
    _wallpaperConfigurationManager = v26;
    if (v26)
    {
      [v26 setDelegate:self];
      [_wallpaperConfigurationManager addObserver:self forKeyPath:@"parallaxEnabled" options:0 context:&SBParallaxEnabledChanged];
      [_wallpaperConfigurationManager setParallaxEnabled:{-[SBSUIWallpaperPreviewViewController motionEnabled](self, "motionEnabled")}];
      if (self->_video)
      {
        v27 = _wallpaperConfigurationManager;
        if (objc_opt_respondsToSelector())
        {
          v28 = v27;
        }

        else
        {
          v28 = 0;
        }

        v29 = v28;

        irisGestureRecognizer = [v29 irisGestureRecognizer];

        _previewView = [(SBSUIWallpaperPreviewViewController *)self _previewView];
        irisButton = [_previewView irisButton];
        [irisGestureRecognizer setEnabled:{objc_msgSend(irisButton, "isSelected")}];
      }

      _previewView2 = [(SBSUIWallpaperPreviewViewController *)self _previewView];
      [_previewView2 setWallpaperView:_wallpaperConfigurationManager];
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
  _wallpaperType = [(SBSUIWallpaperPreviewViewController *)self _wallpaperType];
  switch(_wallpaperType)
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
  _wallpaperView = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  v3 = 0.0;
  if ([_wallpaperView parallaxEnabled])
  {
    [_wallpaperView parallaxFactor];
    v3 = v4;
  }

  return v3;
}

- (void)setWallpaperForLocations:(int64_t)locations completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(SBSUIWallpaperPreviewViewController *)self _setWallpaperForLocationsOnMainThread:locations completionHandler:handlerCopy];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__SBSUIWallpaperPreviewViewController_setWallpaperForLocations_completionHandler___block_invoke;
    block[3] = &unk_1E789F2B8;
    block[4] = self;
    locationsCopy = locations;
    v8 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_setWallpaperForLocationsOnMainThread:(int64_t)thread completionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(SBSUIWallpaperPreviewViewController *)self _logWallpaperChangeForLocations:thread];
  _wallpaperView = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  wallpaperType = [_wallpaperView wallpaperType];
  if (wallpaperType <= 5)
  {
    if (((1 << wallpaperType) & 0xB) != 0)
    {
      [(SBSUIWallpaperPreviewViewController *)self setImageWallpaperForLocations:thread completionHandler:handlerCopy];
    }

    else if (((1 << wallpaperType) & 0x30) != 0)
    {
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, handlerCopy);
      }
    }

    else
    {
      [(SBSUIWallpaperPreviewViewController *)self _setProceduralWallpaperForLocationsOnMainThread:thread completionHandler:handlerCopy];
    }
  }
}

- (void)setWallpaperImages:(id)images options:(id)options locations:(int64_t)locations completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  v12 = [images copy];
  v13 = [optionsCopy copy];

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(SBSUIWallpaperPreviewViewController *)self _setWallpaperImagesOnMainThread:v12 options:v13 locations:locations completionHandler:handlerCopy];
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
    locationsCopy = locations;
    v17 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_setWallpaperImagesOnMainThread:(id)thread options:(id)options locations:(int64_t)locations completionHandler:(id)handler
{
  threadCopy = thread;
  optionsCopy = options;
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(SBSUIWallpaperPreviewViewController *)self _displaySettingWallpaperHUD];
  traitCollection = [(SBSUIWallpaperPreviewViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * (userInterfaceStyle == 2);
  }

  irisEnabled = [(SBSUIWallpaperPreviewViewController *)self irisEnabled];
  v17 = [(NSDictionary *)self->_videoDict count]!= 0 && irisEnabled;
  v18 = dispatch_get_global_queue(0, 0);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __107__SBSUIWallpaperPreviewViewController__setWallpaperImagesOnMainThread_options_locations_completionHandler___block_invoke;
  v22[3] = &unk_1E789F308;
  v28 = v17;
  v23 = threadCopy;
  v24 = optionsCopy;
  locationsCopy = locations;
  v27 = v15;
  v25 = handlerCopy;
  v19 = handlerCopy;
  v20 = optionsCopy;
  v21 = threadCopy;
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

- (void)setImageWallpaperForLocations:(int64_t)locations completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(SBSUIWallpaperPreviewViewController *)self _setImageWallpaperForLocationsOnMainThread:locations completionHandler:handlerCopy];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__SBSUIWallpaperPreviewViewController_setImageWallpaperForLocations_completionHandler___block_invoke;
    block[3] = &unk_1E789F2B8;
    block[4] = self;
    locationsCopy = locations;
    v8 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_setImageWallpaperForLocationsOnMainThread:(int64_t)thread completionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _wallpaperView = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  wallpaperImage = [(SBSUIWallpaperPreviewViewController *)self wallpaperImage];
  untreatedWallpaperImage = wallpaperImage;
  [(SBSUIWallpaperPreviewViewController *)self _parallaxFactor];
  v10 = v9;
  [_wallpaperView cropZoomScale];
  v12 = v11;
  [_wallpaperView cropRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  supportsCropping = [_wallpaperView supportsCropping];
  activeInterfaceOrientation = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
  stillTimeInVideo = 0.0;
  if ((thread & 1) == 0 || ![(SBSUIWallpaperPreviewViewController *)self irisEnabled])
  {
LABEL_12:
    videoFileURL = 0;
    v79 = 0;
    goto LABEL_13;
  }

  if (self->_variant == -1)
  {
    video = self->_video;
    v33 = video;
    if (video)
    {
      videoFileURL = v33;
      stillTimeInVideo = self->_stillTimeInVideo;
      v79 = 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v24 = _wallpaperView;
  if (objc_opt_respondsToSelector())
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  videoFileURL = [v26 videoFileURL];
  v79 = videoFileURL != 0;

  if (videoFileURL)
  {
    v28 = MEMORY[0x1E6988168];
    [v26 videoFileURL];
    v30 = v29 = supportsCropping;
    videoFileURL = [v28 assetWithURL:v30];

    supportsCropping = v29;
    [v26 stillTimeInVideo];
    stillTimeInVideo = v31;
  }

LABEL_13:
  if (!wallpaperImage)
  {
    untreatedWallpaperImage = [_wallpaperView untreatedWallpaperImage];
  }

  if ([(SBSUIWallpaperPreviewViewController *)self irisEnabled])
  {
    v34 = [(NSDictionary *)self->_videoDict count];
    if ((thread & 1) != 0 && v34 >= 2)
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
      v95 = untreatedWallpaperImage;
      selfCopy = self;
      v101 = supportsCropping;
      dispatch_async(v35, block);
    }
  }

  v74 = supportsCropping;
  v75 = videoFileURL;
  threadCopy = thread;
  v77 = untreatedWallpaperImage;
  v78 = _wallpaperView;
  v36 = activeInterfaceOrientation - 1;
  if ([(NSDictionary *)self->_wallpaperImageDict count]< 2)
  {
    [(SBSUIWallpaperPreviewViewController *)self _displaySettingWallpaperHUD];
    v64 = MEMORY[0x1E69B7E08];
    v65 = [(NSString *)self->_name copy];
    optionsDict = self->_optionsDict;
    v67 = PBUIStringForWallpaperMode();
    v68 = [(NSDictionary *)optionsDict objectForKeyedSubscript:v67];
    wallpaperKitData = [v68 wallpaperKitData];
    v70 = [v64 optionsWithName:v65 parallaxFactor:v74 zoomScale:v36 < 2 supportsCropping:v79 cropRect:0 portrait:1 hasVideo:v10 stillTimeInVideo:v12 wallpaperMode:v14 wallpaperStatus:v16 wallpaperKitData:{v18, v20, stillTimeInVideo, wallpaperKitData}];

    v71 = dispatch_get_global_queue(0, 0);
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __100__SBSUIWallpaperPreviewViewController__setImageWallpaperForLocationsOnMainThread_completionHandler___block_invoke_2;
    v81[3] = &unk_1E789F358;
    v91 = v79;
    v62 = v77;
    threadCopy2 = thread;
    v92 = wallpaperImage == 0;
    v87 = v14;
    v88 = v16;
    v89 = v18;
    v90 = v20;
    v82 = v77;
    v63 = v75;
    v93 = v74;
    v83 = v75;
    v84 = v70;
    v85 = handlerCopy;
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
    name = [v41 name];
    v43 = self->_optionsDict;
    v44 = PBUIStringForWallpaperMode();
    v45 = [(NSDictionary *)v43 objectForKeyedSubscript:v44];
    wallpaperKitData2 = [v45 wallpaperKitData];
    v73 = [v38 optionsWithName:name parallaxFactor:v74 zoomScale:v37 supportsCropping:v79 cropRect:1 portrait:0 hasVideo:v10 stillTimeInVideo:v12 wallpaperMode:v14 wallpaperStatus:v16 wallpaperKitData:{v18, v20, stillTimeInVideo, wallpaperKitData2}];

    v47 = MEMORY[0x1E69B7E08];
    v48 = self->_optionsDict;
    v49 = PBUIStringForWallpaperMode();
    v50 = [(NSDictionary *)v48 objectForKeyedSubscript:v49];
    name2 = [v50 name];
    v52 = self->_optionsDict;
    v53 = PBUIStringForWallpaperMode();
    v54 = [(NSDictionary *)v52 objectForKeyedSubscript:v53];
    wallpaperKitData3 = [v54 wallpaperKitData];
    v56 = [v47 optionsWithName:name2 parallaxFactor:v74 zoomScale:v72 supportsCropping:v79 cropRect:2 portrait:0 hasVideo:v10 stillTimeInVideo:v12 wallpaperMode:v14 wallpaperStatus:v16 wallpaperKitData:{v18, v20, stillTimeInVideo, wallpaperKitData3}];

    v57 = v73;
    v58 = objc_alloc(MEMORY[0x1E695DF20]);
    v59 = PBUIStringForWallpaperMode();
    v60 = PBUIStringForWallpaperMode();
    v61 = [v58 initWithObjectsAndKeys:{v73, v59, v56, v60, 0}];

    [(SBSUIWallpaperPreviewViewController *)self setWallpaperImages:self->_wallpaperImageDict options:v61 locations:threadCopy completionHandler:handlerCopy];
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

- (void)_setProceduralWallpaperForLocationsOnMainThread:(int64_t)thread completionHandler:(id)handler
{
  handlerCopy = handler;
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
  v16 = handlerCopy;
  threadCopy = thread;
  v10 = handlerCopy;
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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
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
  _wallpaperViewIfLoaded = [(SBSUIWallpaperPreviewViewController *)self _wallpaperViewIfLoaded];

  if (_wallpaperViewIfLoaded)
  {
    _wallpaperView = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
    [_wallpaperView cropRect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    _wallpaperView2 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
    [_wallpaperView2 cropZoomScale];
    v16 = v15;

    _wallpaperView3 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
    parallaxEnabled = [_wallpaperView3 parallaxEnabled];

    v19 = 0.0;
    if (parallaxEnabled)
    {
      _wallpaperView4 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
      [_wallpaperView4 parallaxFactor];
      v19 = v21;
    }

    [v3 setCropRect:{v7, v9, v11, v13}];
    [v3 setZoomScale:v16];
    [v3 setParallaxFactor:v19];
  }

  return v3;
}

- (void)setIrisEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (self->_irisEnabled != enabled)
  {
    [(SBSUIWallpaperPreviewViewController *)self willChangeValueForKey:@"irisEnabled"];
    self->_irisEnabled = enabledCopy;
    [(SBSUIWallpaperPreviewViewController *)self didChangeValueForKey:@"irisEnabled"];
  }

  _previewView = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  irisButton = [_previewView irisButton];
  [irisButton setSelected:enabledCopy];

  _wallpaperView = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  if (objc_opt_respondsToSelector())
  {
    v8 = _wallpaperView;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  irisGestureRecognizer = [v9 irisGestureRecognizer];

  [irisGestureRecognizer setEnabled:enabledCopy];
  if (enabledCopy)
  {
    [(SBSUIWallpaperPreviewViewController *)self setMotionEnabled:0];
  }

  _previewView2 = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  [_previewView2 displayInstructionsForEffect:1 enabled:enabledCopy animated:1];
}

- (void)setMotionEnabled:(BOOL)enabled updateParallaxOnWallpaperView:(BOOL)view
{
  viewCopy = view;
  enabledCopy = enabled;
  if (self->_motionEnabled != enabled)
  {
    [(SBSUIWallpaperPreviewViewController *)self willChangeValueForKey:@"motionEnabled"];
    self->_motionEnabled = enabledCopy;
    [(SBSUIWallpaperPreviewViewController *)self didChangeValueForKey:@"motionEnabled"];
  }

  _previewView = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  parallaxButton = [_previewView parallaxButton];
  [parallaxButton setSelected:enabledCopy];

  if (enabledCopy)
  {
    [(SBSUIWallpaperPreviewViewController *)self setIrisEnabled:0];
  }

  if (viewCopy)
  {
    _wallpaperView = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
    [_wallpaperView setParallaxEnabled:enabledCopy];
  }

  _previewView2 = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  [_previewView2 displayInstructionsForEffect:0 enabled:enabledCopy animated:1];
}

- (_UILegibilitySettings)legibilitySettings
{
  _wallpaperView = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  legibilitySettings = [_wallpaperView legibilitySettings];

  return legibilitySettings;
}

- (void)providerLegibilitySettingsChanged:(id)changed
{
  legibilitySettings = [changed legibilitySettings];
  _dateView = [(SBSUIWallpaperPreviewViewController *)self _dateView];
  [_dateView setLegibilitySettings:legibilitySettings];

  _previewView = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  [_previewView updateForChangedSettings:legibilitySettings];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained providerLegibilitySettingsChanged:self];
}

- (void)userDidTapOnIrisButton:(id)button
{
  v4 = [(SBSUIWallpaperPreviewViewController *)self irisEnabled]^ 1;

  [(SBSUIWallpaperPreviewViewController *)self setIrisEnabled:v4];
}

- (void)userDidTapOnParallaxButton:(id)button
{
  v4 = [(SBSUIWallpaperPreviewViewController *)self motionEnabled]^ 1;

  [(SBSUIWallpaperPreviewViewController *)self setMotionEnabled:v4];
}

- (void)userDidTapOnCancelButton:(id)button
{
  previewDelegate = [(SBSUIWallpaperPreviewViewController *)self previewDelegate];
  [previewDelegate wallpaperPreviewViewControllerCancelButtonPressed:self];
}

- (void)userDidTapOnSetButton:(id)button
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

  _wallpaperView = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  [_wallpaperView cropRect];
  [(SBSUIWallpaperPreviewViewController *)self setCropRect:?];

  _wallpaperView2 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  [_wallpaperView2 cropZoomScale];
  [(SBSUIWallpaperPreviewViewController *)self setZoomScale:?];

  _wallpaperView3 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  [_wallpaperView3 parallaxFactor];
  [(SBSUIWallpaperPreviewViewController *)self setParallaxFactor:?];

  previewDelegate = [(SBSUIWallpaperPreviewViewController *)self previewDelegate];
  [previewDelegate wallpaperPreviewViewControllerSetButtonPressed:self];
}

- (id)_wallpaperViewWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    parallaxEnabled = [(PBUIWallpaperOptions *)self->_options parallaxEnabled];
    _wallpaperConfigurationManager = [(SBSUIWallpaperPreviewViewController *)self _wallpaperConfigurationManager];
    if ([_wallpaperConfigurationManager enableWallpaperDimming])
    {
      traitCollection = [(SBSUIWallpaperPreviewViewController *)self traitCollection];
      v21 = [traitCollection userInterfaceStyle] == 2 && -[NSDictionary count](self->_wallpaperImageDict, "count") == 1;
    }

    else
    {
      v21 = 0;
    }

    wallpaperImage = self->_wallpaperImage;
    video = self->_video;
    v25 = [(AVURLAsset *)video URL];
    height = [(SBSUIWallpaperPreviewViewController *)self _wallpaperViewWithFrame:wallpaperImage image:video video:v25 videoURL:self->_allowScrolling stillTimeInVideo:self->_variant supportsCropping:v21 variant:x needsWallpaperDimming:y, width, height, self->_stillTimeInVideo];

    goto LABEL_12;
  }

  v11 = *(MEMORY[0x1E695F050] + 8);
  v40 = *MEMORY[0x1E695F050];
  v13 = *(MEMORY[0x1E695F050] + 16);
  v15 = *(MEMORY[0x1E695F050] + 24);
  if (self->_proceduralWallpaper)
  {
    height = [(SBSUIWallpaperPreviewViewController *)self _proceduralWallpaperViewWithFrame:0 variant:self->_initialConfiguration configuration:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
LABEL_7:
    parallaxEnabled = 1;
    v17 = 1.0;
    goto LABEL_12;
  }

  v27 = self->_video;
  v28 = self->_wallpaperImage;
  if (v27)
  {
    v29 = [(AVURLAsset *)self->_video URL];
    height = [(SBSUIWallpaperPreviewViewController *)self _wallpaperViewWithFrame:v28 image:v27 video:v29 videoURL:self->_allowScrolling stillTimeInVideo:0 supportsCropping:0 variant:x needsWallpaperDimming:y, width, height, self->_stillTimeInVideo];

LABEL_19:
    currentMagnifyMode = [MEMORY[0x1E69D3FF0] currentMagnifyMode];
    v31 = currentMagnifyMode;
    if (currentMagnifyMode)
    {
      [currentMagnifyMode zoomFactor];
      v17 = 1.0 / v32;
    }

    else
    {
      v17 = 1.0;
    }

    parallaxEnabled = 1;
    goto LABEL_12;
  }

  if (v28)
  {
    height = [(SBSUIWallpaperPreviewViewController *)self _wallpaperViewWithFrame:self->_wallpaperImage image:0 video:0 videoURL:self->_allowScrolling stillTimeInVideo:0 supportsCropping:0 variant:frame.origin.x needsWallpaperDimming:frame.origin.y, frame.size.width, frame.size.height, 0.0];
    goto LABEL_19;
  }

  if (self->_variant == -1)
  {
    v39 = [objc_alloc(MEMORY[0x1E69B7DE0]) initWithVariant:self->_variant type:0];
    height = [objc_alloc(MEMORY[0x1E69B7E10]) initWithFrame:v39 configuration:self->_variant variant:0 cacheGroup:0 delegate:0 options:{x, y, width, height}];

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

  parallaxEnabled = [v33 parallaxEnabled];
  height = [(SBSUIWallpaperPreviewViewController *)self _wallpaperViewWithFrame:self->_variant variant:v33 options:x, y, width, height];

LABEL_12:
  [height setDelegate:self];
  [height setParallaxEnabled:parallaxEnabled];
  [height setCropRect:v40 zoomScale:{v11, v13, v15, v17}];

  return height;
}

- (id)_wallpaperViewWithFrame:(CGRect)frame image:(id)image video:(id)video videoURL:(id)l stillTimeInVideo:(double)inVideo supportsCropping:(BOOL)cropping variant:(int64_t)variant needsWallpaperDimming:(BOOL)self0
{
  dimmingCopy = dimming;
  croppingCopy = cropping;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  videoCopy = video;
  lCopy = l;
  v50 = videoCopy;
  v22 = (videoCopy | lCopy) == 0;
  v23 = (videoCopy | lCopy) != 0;
  if (v22)
  {
    v24 = 1;
  }

  else
  {
    v24 = 3;
  }

  v25 = MEMORY[0x1E69B7DE0];
  imageCopy = image;
  v27 = [[v25 alloc] initWithVariant:variant type:v24];
  v28 = objc_alloc(MEMORY[0x1E69B7E00]);
  cGImage = [imageCopy CGImage];
  [imageCopy scale];
  v31 = v30;
  imageOrientation = [imageCopy imageOrientation];

  v33 = [v28 initWithCGImage:cGImage scale:imageOrientation orientation:0 wallpaperFileURL:v31];
  [v27 setWallpaperImage:v33];

  [v27 setVideoURL:lCopy];
  v34 = objc_alloc_init(MEMORY[0x1E69B7E08]);
  [v34 setStillTimeInVideo:inVideo];
  [v34 setSupportsCropping:croppingCopy];
  [v27 setWallpaperOptions:v34];
  [v27 setNeedsWallpaperDimmingTreatment:dimmingCopy];
  if (!croppingCopy)
  {
    if (v23)
    {
      v39 = objc_alloc(MEMORY[0x1E69B7DC0]);
      v40 = x;
      v41 = y;
      v42 = width;
      v43 = height;
      v44 = v27;
      variantCopy2 = variant;
      v46 = 16;
LABEL_13:
      v38 = [v39 initWithFrame:v44 configuration:variantCopy2 variant:0 cacheGroup:0 delegate:v46 options:{v40, v41, v42, v43}];
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
    variantCopy2 = variant;
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
    v38 = [v35 initWithFrame:v27 configuration:v50 wallpaperVideo:variant variant:{x, y, width, height}];
  }

  else
  {
    v49 = [MEMORY[0x1E6987E28] assetWithURL:lCopy];
    v38 = [v36 initWithFrame:v27 configuration:v49 wallpaperVideo:variant variant:{x, y, width, height}];
  }

LABEL_14:

  return v38;
}

- (id)_wallpaperViewWithFrame:(CGRect)frame variant:(int64_t)variant options:(id)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  optionsCopy = options;
  _wallpaperConfigurationManager = [(SBSUIWallpaperPreviewViewController *)self _wallpaperConfigurationManager];
  v13 = [_wallpaperConfigurationManager wallpaperConfigurationForVariant:variant includingValuesForTypes:51 wallpaperMode:0];

  objc_storeStrong(&self->_wallpaperConfiguration, v13);
  _wallpaperConfigurationManager2 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperConfigurationManager];
  v15 = [_wallpaperConfigurationManager2 hasWallpaperImageForVariant:variant wallpaperMode:2];

  v16 = 0;
  if (variant == 1 && (v15 & 1) == 0)
  {
    _wallpaperConfigurationManager3 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperConfigurationManager];
    v16 = [_wallpaperConfigurationManager3 hasWallpaperImageForVariant:1 wallpaperMode:0] ^ 1;
  }

  if ((v15 | v16))
  {
    _wallpaperConfigurationManager4 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperConfigurationManager];
    v19 = [_wallpaperConfigurationManager4 wallpaperConfigurationForVariant:variant includingValuesForTypes:51 wallpaperMode:2];
  }

  else
  {
    v19 = 0;
  }

  proceduralWallpaperInfo = [v13 proceduralWallpaperInfo];
  if (proceduralWallpaperInfo)
  {
    objc_storeStrong(&self->_proceduralWallpaper, proceduralWallpaperInfo);
    height = [(SBSUIWallpaperPreviewViewController *)self _proceduralWallpaperViewWithFrame:variant variant:v13 configuration:x, y, width, height];
LABEL_11:
    v22 = height;
    goto LABEL_12;
  }

  if ([v13 wallpaperType] == 4)
  {
    height = [(SBSUIWallpaperPreviewViewController *)self _colorWallpaperViewWithFrame:variant variant:v13 configuration:x, y, width, height];
    goto LABEL_11;
  }

  wallpaperOriginalImage = [v13 wallpaperOriginalImage];
  if (!wallpaperOriginalImage)
  {
    wallpaperOriginalImage = [v13 wallpaperImage];
  }

  videoURL = [v13 videoURL];
  if (v19)
  {
    v25 = wallpaperOriginalImage;
    v73 = optionsCopy;
    wallpaperOriginalImage2 = [v19 wallpaperOriginalImage];
    if (!wallpaperOriginalImage2)
    {
      wallpaperOriginalImage2 = [v19 wallpaperImage];
    }

    v75 = wallpaperOriginalImage2;
    videoURL2 = [v19 videoURL];
    v27 = objc_alloc(MEMORY[0x1E695DF20]);
    v28 = PBUIStringForWallpaperMode();
    v29 = PBUIStringForWallpaperMode();
    v74 = v25;
    v30 = [v27 initWithObjectsAndKeys:{v25, v28, wallpaperOriginalImage2, v29, 0}];
    wallpaperImageDict = self->_wallpaperImageDict;
    self->_wallpaperImageDict = v30;

    v32 = objc_alloc(MEMORY[0x1E695DF20]);
    wallpaperOptions = [v13 wallpaperOptions];
    v34 = PBUIStringForWallpaperMode();
    wallpaperOptions2 = [v19 wallpaperOptions];
    v36 = PBUIStringForWallpaperMode();
    v37 = [v32 initWithObjectsAndKeys:{wallpaperOptions, v34, wallpaperOptions2, v36, 0}];
    optionsDict = self->_optionsDict;
    self->_optionsDict = v37;

    v39 = objc_alloc(MEMORY[0x1E695DF20]);
    v40 = [MEMORY[0x1E6987E28] assetWithURL:videoURL];
    v41 = PBUIStringForWallpaperMode();
    v42 = [MEMORY[0x1E6987E28] assetWithURL:videoURL2];
    v43 = PBUIStringForWallpaperMode();
    v44 = [v39 initWithObjectsAndKeys:{v40, v41, v42, v43, 0}];
    videoDict = self->_videoDict;
    self->_videoDict = v44;

    traitCollection = [(SBSUIWallpaperPreviewViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    v48 = v75;
    if (userInterfaceStyle == 2)
    {
      v49 = videoURL2;
    }

    else
    {
      v48 = v74;
      v49 = videoURL;
    }

    v50 = v48;
    v51 = v49;
    optionsCopy = v73;
    [v73 stillTimeInVideo];
    v53 = v52;
    supportsCropping = [v73 supportsCropping];
    needsWallpaperDimmingTreatment = [v13 needsWallpaperDimmingTreatment];
    selfCopy = self;
    v57 = videoURL;
    wallpaperOriginalImage = v74;
    v22 = [(SBSUIWallpaperPreviewViewController *)selfCopy _wallpaperViewWithFrame:v50 image:0 video:v51 videoURL:supportsCropping stillTimeInVideo:variant supportsCropping:needsWallpaperDimmingTreatment variant:x needsWallpaperDimming:y, width, height, v53];
  }

  else
  {
    v58 = objc_alloc(MEMORY[0x1E695DF20]);
    v59 = PBUIStringForWallpaperMode();
    v60 = [v58 initWithObjectsAndKeys:{wallpaperOriginalImage, v59, 0}];
    v61 = self->_wallpaperImageDict;
    self->_wallpaperImageDict = v60;

    v62 = objc_alloc(MEMORY[0x1E695DF20]);
    wallpaperOptions3 = [v13 wallpaperOptions];
    v64 = PBUIStringForWallpaperMode();
    v65 = [v62 initWithObjectsAndKeys:{wallpaperOptions3, v64, 0}];
    v66 = self->_optionsDict;
    self->_optionsDict = v65;

    [optionsCopy stillTimeInVideo];
    v68 = v67;
    supportsCropping2 = [optionsCopy supportsCropping];
    needsWallpaperDimmingTreatment2 = [v13 needsWallpaperDimmingTreatment];
    selfCopy2 = self;
    v57 = videoURL;
    v22 = [(SBSUIWallpaperPreviewViewController *)selfCopy2 _wallpaperViewWithFrame:wallpaperOriginalImage image:0 video:videoURL videoURL:supportsCropping2 stillTimeInVideo:variant supportsCropping:needsWallpaperDimmingTreatment2 variant:x needsWallpaperDimming:y, width, height, v68];
  }

  [optionsCopy parallaxFactor];
  [v22 setParallaxFactor:?];

LABEL_12:

  return v22;
}

- (id)_proceduralWallpaperViewWithFrame:(CGRect)frame variant:(int64_t)variant configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = MEMORY[0x1E69B7DB0];
  configurationCopy = configuration;
  v12 = [[v10 alloc] initWithFrame:configurationCopy configuration:variant variant:0 cacheGroup:0 delegate:0 options:{x, y, width, height}];

  [v12 prepareToAppear];

  return v12;
}

- (id)_colorWallpaperViewWithFrame:(CGRect)frame variant:(int64_t)variant configuration:(id)configuration
{
  v6 = MEMORY[0x1E69B7DB8];
  configurationCopy = configuration;
  v8 = [v6 alloc];
  v9 = [v8 initWithFrame:configurationCopy configuration:variant variant:0 cacheGroup:0 delegate:0 options:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  [v9 prepareToAppear];

  return v9;
}

- (id)_wallpaperView
{
  _previewView = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  wallpaperView = [_previewView wallpaperView];

  return wallpaperView;
}

- (id)_wallpaperViewIfLoaded
{
  _previewViewIfLoaded = [(SBSUIWallpaperPreviewViewController *)self _previewViewIfLoaded];
  wallpaperView = [_previewViewIfLoaded wallpaperView];

  return wallpaperView;
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
  _previewView = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  [(SBSUIWallpaperProgressHUD *)v5 showMessage:v6 inView:_previewView];
}

- (void)_enableIrisOrParallaxIfEligible
{
  _wallpaperView = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  v4 = objc_opt_respondsToSelector();

  _wallpaperView2 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  parallaxEnabled = [_wallpaperView2 parallaxEnabled];

  if ((v4 & 1) != 0 && _wallpaperView)
  {

    [(SBSUIWallpaperPreviewViewController *)self setIrisEnabled:1];
  }

  else if (parallaxEnabled)
  {

    [(SBSUIWallpaperPreviewViewController *)self setMotionEnabled:1];
  }
}

- (void)_logWallpaperChangeForLocations:(int64_t)locations
{
  _wallpaperView = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView];
  wallpaperType = [_wallpaperView wallpaperType];
  v6 = objc_alloc_init(MEMORY[0x1E69D4020]);
  wallpaperCoreAnalyticsLogger = self->_wallpaperCoreAnalyticsLogger;
  self->_wallpaperCoreAnalyticsLogger = v6;

  if ((wallpaperType & 0xFFFFFFFFFFFFFFFDLL) == 1 && [(SBSUIWallpaperPreviewViewController *)self irisEnabled])
  {
    v8 = _wallpaperView;
    objc_opt_respondsToSelector();
  }

  v9 = objc_alloc_init(MEMORY[0x1E69B7DF0]);
  date = [MEMORY[0x1E695DF00] date];
  [v9 setDateWallpaperLastChanged:date];

  v11 = _wallpaperView;
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
  _previewView = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  dateView = [_previewView dateView];

  return dateView;
}

- (void)_updateDateView
{
  [(SBSUIWallpaperPreviewViewController *)self _stopDateTimer];
  _previewView = [(SBSUIWallpaperPreviewViewController *)self _previewView];
  dateView = [_previewView dateView];
  date = [MEMORY[0x1E695DF00] date];
  [dateView setDate:date];

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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &SBParallaxEnabledChanged)
  {
    v7 = [(SBSUIWallpaperPreviewViewController *)self _wallpaperView:path];
    -[SBSUIWallpaperPreviewViewController setMotionEnabled:updateParallaxOnWallpaperView:](self, "setMotionEnabled:updateParallaxOnWallpaperView:", [v7 parallaxEnabled], 0);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBSUIWallpaperPreviewViewController;
    [(SBSUIWallpaperPreviewViewController *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
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