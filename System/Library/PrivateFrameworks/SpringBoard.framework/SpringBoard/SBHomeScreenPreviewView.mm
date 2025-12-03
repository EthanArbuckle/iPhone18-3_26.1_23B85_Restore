@interface SBHomeScreenPreviewView
- (SBHomeScreenPreviewView)initWithFrame:(CGRect)frame iconManager:(id)manager wallpaperController:(id)controller options:(unint64_t)options wallpaperImage:(id)image listView:(id)view;
- (id)iconView:(id)view backgroundViewForComponentsOfType:(int64_t)type;
- (id)makeFolderContentWithWallpaperController:(id)controller legibilitySettings:(id)settings options:(unint64_t)options;
- (id)makeIconFolderContentWithWallpaperController:(id)controller legibilitySettings:(id)settings options:(unint64_t)options;
- (id)makeSilhouetteFolderContent;
- (void)configureIconView:(id)view forIcon:(id)icon;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation SBHomeScreenPreviewView

- (SBHomeScreenPreviewView)initWithFrame:(CGRect)frame iconManager:(id)manager wallpaperController:(id)controller options:(unint64_t)options wallpaperImage:(id)image listView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v70 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  controllerCopy = controller;
  imageCopy = image;
  viewCopy = view;
  v67.receiver = self;
  v67.super_class = SBHomeScreenPreviewView;
  height = [(SBHomeScreenPreviewView *)&v67 initWithFrame:x, y, width, height];
  v23 = height;
  if (!height)
  {
    goto LABEL_41;
  }

  objc_storeStrong(&height->_iconManager, manager);
  v23->_snapshotOptions = options;
  if ((options & 0x400) != 0)
  {
    v27 = objc_alloc(MEMORY[0x277D760A8]);
    v28 = 2;
LABEL_8:
    v29 = [v27 initWithStyle:v28];
    goto LABEL_11;
  }

  if ((options & 0x800) != 0)
  {
    v27 = objc_alloc(MEMORY[0x277D760A8]);
    v28 = 1;
    goto LABEL_8;
  }

  legibilitySettings = [managerCopy legibilitySettings];
  v25 = legibilitySettings;
  if (legibilitySettings)
  {
    v26 = legibilitySettings;
  }

  else
  {
    v26 = [objc_alloc(MEMORY[0x277D760A8]) initWithStyle:2];
  }

  v29 = v26;

LABEL_11:
  [(SBHomeScreenPreviewView *)v23 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  if ((options & 0x40) != 0)
  {
    v66 = 0;
    if (!viewCopy)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  if (imageCopy)
  {
    v66 = 0;
LABEL_24:
    v43 = MEMORY[0x277D755E8];
    imageCopy = imageCopy;
    v44 = [[v43 alloc] initWithImage:imageCopy];
    [(SBWallpaperEffectView *)v44 setContentMode:2];

    goto LABEL_25;
  }

  if (!controllerCopy)
  {
    controllerCopy = +[SBWallpaperController sharedInstance];
  }

  wallpaperConfigurationManager = [controllerCopy wallpaperConfigurationManager];
  v39 = [wallpaperConfigurationManager homeScreenWallpaperConfigurationIncludingValuesForTypes:4];
  v66 = v39;
  if (_os_feature_enabled_impl())
  {
    v40 = SBLogWallpaper();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [SBHomeScreenPreviewView initWithFrame:v66 iconManager:v40 wallpaperController:? options:? wallpaperImage:? listView:?];
    }
  }

  else
  {
    proceduralWallpaperInfo = [v39 proceduralWallpaperInfo];

    if (!proceduralWallpaperInfo)
    {

      goto LABEL_43;
    }
  }

  wallpaperThumbnailImage = [v66 wallpaperThumbnailImage];
  imageCopy = [wallpaperThumbnailImage resizableImageWithCapInsets:1 resizingMode:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  if (imageCopy)
  {
    goto LABEL_24;
  }

LABEL_43:
  v44 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:1 transformOptions:2];
  [(PBUIWallpaperEffectViewBase *)v44 setForcesOpaque:1];
  [(PBUIWallpaperEffectViewBase *)v44 setStyle:0];
  imageCopy = 0;
LABEL_25:
  [(SBWallpaperEffectView *)v44 setFrame:v31, v33, v35, v37];
  [(SBHomeScreenPreviewView *)v23 addSubview:v44];

  if (!viewCopy)
  {
LABEL_26:
    userSessionController = [SBApp userSessionController];
    isLoginSession = [userSessionController isLoginSession];

    if (!isLoginSession)
    {
      v47 = [(SBHomeScreenPreviewView *)v23 makeFolderContentWithWallpaperController:controllerCopy legibilitySettings:v29 options:options];
      folderContent = v23->_folderContent;
      v23->_folderContent = v47;
    }

    goto LABEL_28;
  }

LABEL_15:
  objc_storeStrong(&v23->_folderContent, view);
LABEL_28:
  v49 = *MEMORY[0x277D76F08];
  [(UIView *)v23->_folderContent setFrame:0.0, *MEMORY[0x277D76F08], v35, v37 - *MEMORY[0x277D76F08]];
  [(SBHomeScreenPreviewView *)v23 addSubview:v23->_folderContent];
  isFloatingDockSupported = [managerCopy isFloatingDockSupported];
  if ((options & 0x2000) == 0 && isFloatingDockSupported)
  {
    v51 = [(SBFloatingDockViewController *)[SBPreviewFloatingDockViewController alloc] initWithIconManager:managerCopy iconViewProvider:v23];
    floatingDockViewController = v23->_floatingDockViewController;
    v23->_floatingDockViewController = &v51->super;

    view = [(SBFloatingDockViewController *)v23->_floatingDockViewController view];
    [view setFrame:{v31, v33, v35, v37}];
    [view layoutIfNeeded];
    [(SBFloatingDockViewController *)v23->_floatingDockViewController layoutUserControlledIconListsWithAnimationType:-1 forceRelayout:1];
    [(SBHomeScreenPreviewView *)v23 addSubview:view];
    objc_storeStrong(&v23->_floatingDock, view);
    if ((options & 0x200) != 0)
    {
      layer = [view layer];
      [layer setAllowsGroupOpacity:1];

      [view setAlpha:0.5];
    }
  }

  if ((options & 1) == 0)
  {
    rootFolderController = [managerCopy rootFolderController];
    _sbWindowScene = [rootFolderController _sbWindowScene];
    statusBarManager = [_sbWindowScene statusBarManager];
    windowSceneStatusBarManager = v23->_windowSceneStatusBarManager;
    v23->_windowSceneStatusBarManager = statusBarManager;

    reusePool = [(SBWindowSceneStatusBarManager *)v23->_windowSceneStatusBarManager reusePool];
    v60 = [reusePool getReusableStatusBarWithReason:@"Settings HomeScreen Preview View" withFrame:{0.0, 0.0, v35, v49}];

    [v60 requestResolvedStyle:0];
    [v60 setManager:0];
    [v60 setLegibilityStyle:{objc_msgSend(v29, "style")}];
    primaryColor = [v29 primaryColor];
    [v60 setForegroundColor:primaryColor];

    if ((options & 4) != 0)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [v60 sb_setSnapshotOverridesWithTimeEnabled:1 overriddenDate:date];
    }

    else
    {
      [v60 sb_setSnapshotOverridesWithTimeEnabled:1 overriddenDate:0];
    }

    [(SBHomeScreenPreviewView *)v23 addSubview:v60];
    statusBar = v23->_statusBar;
    v23->_statusBar = v60;
  }

  v64 = SBLogWallpaper();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v69 = v66;
    _os_log_impl(&dword_21ED4E000, v64, OS_LOG_TYPE_DEFAULT, "SETTING UP HomeScreenPreviewView WITH WALLPAPER '%{public}@", buf, 0xCu);
  }

LABEL_41:
  return v23;
}

- (void)dealloc
{
  if (self->_statusBar)
  {
    reusePool = [(SBWindowSceneStatusBarManager *)self->_windowSceneStatusBarManager reusePool];
    [reusePool recycleStatusBar:self->_statusBar];
  }

  v4.receiver = self;
  v4.super_class = SBHomeScreenPreviewView;
  [(SBHomeScreenPreviewView *)&v4 dealloc];
}

- (id)makeFolderContentWithWallpaperController:(id)controller legibilitySettings:(id)settings options:(unint64_t)options
{
  if ((options & 0x4000) != 0)
  {
    [(SBHomeScreenPreviewView *)self makeSilhouetteFolderContent:controller];
  }

  else
  {
    [(SBHomeScreenPreviewView *)self makeIconFolderContentWithWallpaperController:controller legibilitySettings:settings options:?];
  }
  v5 = ;

  return v5;
}

- (id)makeIconFolderContentWithWallpaperController:(id)controller legibilitySettings:(id)settings options:(unint64_t)options
{
  settingsCopy = settings;
  controllerCopy = controller;
  iconManager = [(SBHomeScreenPreviewView *)self iconManager];
  v11 = [[_SBHomeScreenFolderDelegate alloc] initWithForwardingTarget:iconManager];
  v12 = v11;
  v13 = 1;
  if ((options & 0x800) == 0)
  {
    v13 = (options >> 9) & 2;
  }

  if ((options & 0x200) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  [(_SBHomeScreenFolderDelegate *)v11 setDockStyle:v14];
  objc_storeStrong(&self->_folderDelegate, v12);
  v15 = objc_alloc_init(MEMORY[0x277D66428]);
  rootFolder = [iconManager rootFolder];
  [v15 setFolder:rootFolder];

  listLayoutProvider = [iconManager listLayoutProvider];
  [v15 setListLayoutProvider:listLayoutProvider];

  [v15 setLegibilitySettings:settingsCopy];
  [v15 setDockExternal:{+[SBFloatingDockController isFloatingDockSupported](SBFloatingDockController, "isFloatingDockSupported")}];
  [v15 setFolderDelegate:v12];
  [v15 setIconViewProvider:self];
  folderIconImageCache = [iconManager folderIconImageCache];
  [v15 setFolderIconImageCache:folderIconImageCache];

  iconImageCache = [iconManager iconImageCache];
  [v15 setIconImageCache:iconImageCache];

  v20 = [objc_alloc(MEMORY[0x277D66420]) initWithConfiguration:v15];
  v21 = [controllerCopy averageColorForVariant:1];

  [v20 setDefaultAccessibilityTintColor:v21];
  [v20 setPageControlHidden:(options >> 1) & 1];
  objc_storeStrong(&self->_rootFolderController, v20);
  if ((options & 0x2000) != 0)
  {
    v22 = [v20 beginModifyingDockOffscreenFractionForReason:@"Preview"];
    dockOffscreenModifier = self->_dockOffscreenModifier;
    self->_dockOffscreenModifier = v22;

    [(SBDockOffscreenFractionModifying *)self->_dockOffscreenModifier setDockOffscreenFraction:1.0];
  }

  view = [v20 view];

  return view;
}

- (id)makeSilhouetteFolderContent
{
  iconManager = [(SBHomeScreenPreviewView *)self iconManager];
  v4 = [iconManager silhouetteLayoutForPageAtIndex:0];
  v5 = objc_alloc(MEMORY[0x277D67B80]);
  [(SBHomeScreenPreviewView *)self bounds];
  v8 = [v5 initWithSilhouetteLayout:v4 viewSize:{v6, v7}];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__SBHomeScreenPreviewView_makeSilhouetteFolderContent__block_invoke;
  v20[3] = &unk_2783BF018;
  v11 = uUIDString;
  v21 = v11;
  [v8 setIconViewBuilder:v20];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __54__SBHomeScreenPreviewView_makeSilhouetteFolderContent__block_invoke_2;
  v18 = &unk_2783BF018;
  v19 = v11;
  v12 = v11;
  [v8 setDockViewBuilder:&v15];
  buildView = [v8 buildView];

  return buildView;
}

id __54__SBHomeScreenPreviewView_makeSilhouetteFolderContent__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D26718] materialViewWithRecipe:3];
  v3 = [@"homeScreenIconView" stringByAppendingString:*(a1 + 32)];
  [v2 setGroupNameBase:v3];

  return v2;
}

id __54__SBHomeScreenPreviewView_makeSilhouetteFolderContent__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D26718] materialViewWithRecipe:19];
  v3 = [@"homeScreenDockView" stringByAppendingString:*(a1 + 32)];
  [v2 setGroupNameBase:v3];

  return v2;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = SBHomeScreenPreviewView;
  [(SBHomeScreenPreviewView *)&v14 layoutSubviews];
  [(SBHomeScreenPreviewView *)self bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  remainder.origin.x = v3;
  remainder.origin.y = v4;
  remainder.size.width = v5;
  remainder.size.height = v6;
  if (self->_statusBar)
  {
    memset(&v12, 0, sizeof(v12));
    CGRectDivide(*&v3, &v12, &remainder, *MEMORY[0x277D76F08], CGRectMinYEdge);
    [(UIStatusBar *)self->_statusBar setFrame:*&v12.origin, *&v12.size];
  }

  if (self->_floatingDock)
  {
    memset(&v12, 0, sizeof(v12));
    [(SBFloatingDockViewController *)self->_floatingDockViewController maximumContentHeight];
    CGRectDivide(remainder, &v12, &remainder, v11, CGRectMaxYEdge);
    [(UIView *)self->_floatingDock setFrame:*&v12.origin, *&v12.size];
  }

  [(UIView *)self->_folderContent setFrame:v7, v8, v9, v10];
}

- (void)configureIconView:(id)view forIcon:(id)icon
{
  viewCopy = view;
  iconCopy = icon;
  iconManager = [(SBHomeScreenPreviewView *)self iconManager];
  [iconManager configureIconView:viewCopy forIcon:iconCopy];

  [viewCopy setDelegate:self];
  [viewCopy setLabelAccessoryHidden:1];
  [viewCopy setAllowsBlockedForScreenTimeExpiration:0];
  [viewCopy setImageLoadingBehavior:0];
  if (([(SBHomeScreenPreviewView *)self snapshotOptions]& 0x1000) != 0)
  {
    [viewCopy setHidden:1];
  }
}

- (id)iconView:(id)view backgroundViewForComponentsOfType:(int64_t)type
{
  location = [view location];
  v5 = SBIconLocationGroupContainsLocation();

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:1];
    [(PBUIWallpaperEffectViewBase *)v6 setStyle:29];
  }

  return v6;
}

- (void)initWithFrame:(void *)a1 iconManager:(NSObject *)a2 wallpaperController:options:wallpaperImage:listView:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 debugDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "WooP is on, using wallpaper thumbnail image from home screen wallpaper configuration: %{public}@", &v4, 0xCu);
}

@end