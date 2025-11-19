@interface SBHomeScreenPreviewView
- (SBHomeScreenPreviewView)initWithFrame:(CGRect)a3 iconManager:(id)a4 wallpaperController:(id)a5 options:(unint64_t)a6 wallpaperImage:(id)a7 listView:(id)a8;
- (id)iconView:(id)a3 backgroundViewForComponentsOfType:(int64_t)a4;
- (id)makeFolderContentWithWallpaperController:(id)a3 legibilitySettings:(id)a4 options:(unint64_t)a5;
- (id)makeIconFolderContentWithWallpaperController:(id)a3 legibilitySettings:(id)a4 options:(unint64_t)a5;
- (id)makeSilhouetteFolderContent;
- (void)configureIconView:(id)a3 forIcon:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation SBHomeScreenPreviewView

- (SBHomeScreenPreviewView)initWithFrame:(CGRect)a3 iconManager:(id)a4 wallpaperController:(id)a5 options:(unint64_t)a6 wallpaperImage:(id)a7 listView:(id)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v70 = *MEMORY[0x277D85DE8];
  v18 = a4;
  v19 = a5;
  v20 = a7;
  v21 = a8;
  v67.receiver = self;
  v67.super_class = SBHomeScreenPreviewView;
  v22 = [(SBHomeScreenPreviewView *)&v67 initWithFrame:x, y, width, height];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_41;
  }

  objc_storeStrong(&v22->_iconManager, a4);
  v23->_snapshotOptions = a6;
  if ((a6 & 0x400) != 0)
  {
    v27 = objc_alloc(MEMORY[0x277D760A8]);
    v28 = 2;
LABEL_8:
    v29 = [v27 initWithStyle:v28];
    goto LABEL_11;
  }

  if ((a6 & 0x800) != 0)
  {
    v27 = objc_alloc(MEMORY[0x277D760A8]);
    v28 = 1;
    goto LABEL_8;
  }

  v24 = [v18 legibilitySettings];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
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
  if ((a6 & 0x40) != 0)
  {
    v66 = 0;
    if (!v21)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  if (v20)
  {
    v66 = 0;
LABEL_24:
    v43 = MEMORY[0x277D755E8];
    v20 = v20;
    v44 = [[v43 alloc] initWithImage:v20];
    [(SBWallpaperEffectView *)v44 setContentMode:2];

    goto LABEL_25;
  }

  if (!v19)
  {
    v19 = +[SBWallpaperController sharedInstance];
  }

  v38 = [v19 wallpaperConfigurationManager];
  v39 = [v38 homeScreenWallpaperConfigurationIncludingValuesForTypes:4];
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
    v41 = [v39 proceduralWallpaperInfo];

    if (!v41)
    {

      goto LABEL_43;
    }
  }

  v42 = [v66 wallpaperThumbnailImage];
  v20 = [v42 resizableImageWithCapInsets:1 resizingMode:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  if (v20)
  {
    goto LABEL_24;
  }

LABEL_43:
  v44 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:1 transformOptions:2];
  [(PBUIWallpaperEffectViewBase *)v44 setForcesOpaque:1];
  [(PBUIWallpaperEffectViewBase *)v44 setStyle:0];
  v20 = 0;
LABEL_25:
  [(SBWallpaperEffectView *)v44 setFrame:v31, v33, v35, v37];
  [(SBHomeScreenPreviewView *)v23 addSubview:v44];

  if (!v21)
  {
LABEL_26:
    v45 = [SBApp userSessionController];
    v46 = [v45 isLoginSession];

    if (!v46)
    {
      v47 = [(SBHomeScreenPreviewView *)v23 makeFolderContentWithWallpaperController:v19 legibilitySettings:v29 options:a6];
      folderContent = v23->_folderContent;
      v23->_folderContent = v47;
    }

    goto LABEL_28;
  }

LABEL_15:
  objc_storeStrong(&v23->_folderContent, a8);
LABEL_28:
  v49 = *MEMORY[0x277D76F08];
  [(UIView *)v23->_folderContent setFrame:0.0, *MEMORY[0x277D76F08], v35, v37 - *MEMORY[0x277D76F08]];
  [(SBHomeScreenPreviewView *)v23 addSubview:v23->_folderContent];
  v50 = [v18 isFloatingDockSupported];
  if ((a6 & 0x2000) == 0 && v50)
  {
    v51 = [(SBFloatingDockViewController *)[SBPreviewFloatingDockViewController alloc] initWithIconManager:v18 iconViewProvider:v23];
    floatingDockViewController = v23->_floatingDockViewController;
    v23->_floatingDockViewController = &v51->super;

    v53 = [(SBFloatingDockViewController *)v23->_floatingDockViewController view];
    [v53 setFrame:{v31, v33, v35, v37}];
    [v53 layoutIfNeeded];
    [(SBFloatingDockViewController *)v23->_floatingDockViewController layoutUserControlledIconListsWithAnimationType:-1 forceRelayout:1];
    [(SBHomeScreenPreviewView *)v23 addSubview:v53];
    objc_storeStrong(&v23->_floatingDock, v53);
    if ((a6 & 0x200) != 0)
    {
      v54 = [v53 layer];
      [v54 setAllowsGroupOpacity:1];

      [v53 setAlpha:0.5];
    }
  }

  if ((a6 & 1) == 0)
  {
    v55 = [v18 rootFolderController];
    v56 = [v55 _sbWindowScene];
    v57 = [v56 statusBarManager];
    windowSceneStatusBarManager = v23->_windowSceneStatusBarManager;
    v23->_windowSceneStatusBarManager = v57;

    v59 = [(SBWindowSceneStatusBarManager *)v23->_windowSceneStatusBarManager reusePool];
    v60 = [v59 getReusableStatusBarWithReason:@"Settings HomeScreen Preview View" withFrame:{0.0, 0.0, v35, v49}];

    [v60 requestResolvedStyle:0];
    [v60 setManager:0];
    [v60 setLegibilityStyle:{objc_msgSend(v29, "style")}];
    v61 = [v29 primaryColor];
    [v60 setForegroundColor:v61];

    if ((a6 & 4) != 0)
    {
      v62 = [MEMORY[0x277CBEAA8] date];
      [v60 sb_setSnapshotOverridesWithTimeEnabled:1 overriddenDate:v62];
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
    v3 = [(SBWindowSceneStatusBarManager *)self->_windowSceneStatusBarManager reusePool];
    [v3 recycleStatusBar:self->_statusBar];
  }

  v4.receiver = self;
  v4.super_class = SBHomeScreenPreviewView;
  [(SBHomeScreenPreviewView *)&v4 dealloc];
}

- (id)makeFolderContentWithWallpaperController:(id)a3 legibilitySettings:(id)a4 options:(unint64_t)a5
{
  if ((a5 & 0x4000) != 0)
  {
    [(SBHomeScreenPreviewView *)self makeSilhouetteFolderContent:a3];
  }

  else
  {
    [(SBHomeScreenPreviewView *)self makeIconFolderContentWithWallpaperController:a3 legibilitySettings:a4 options:?];
  }
  v5 = ;

  return v5;
}

- (id)makeIconFolderContentWithWallpaperController:(id)a3 legibilitySettings:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(SBHomeScreenPreviewView *)self iconManager];
  v11 = [[_SBHomeScreenFolderDelegate alloc] initWithForwardingTarget:v10];
  v12 = v11;
  v13 = 1;
  if ((a5 & 0x800) == 0)
  {
    v13 = (a5 >> 9) & 2;
  }

  if ((a5 & 0x200) != 0)
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
  v16 = [v10 rootFolder];
  [v15 setFolder:v16];

  v17 = [v10 listLayoutProvider];
  [v15 setListLayoutProvider:v17];

  [v15 setLegibilitySettings:v8];
  [v15 setDockExternal:{+[SBFloatingDockController isFloatingDockSupported](SBFloatingDockController, "isFloatingDockSupported")}];
  [v15 setFolderDelegate:v12];
  [v15 setIconViewProvider:self];
  v18 = [v10 folderIconImageCache];
  [v15 setFolderIconImageCache:v18];

  v19 = [v10 iconImageCache];
  [v15 setIconImageCache:v19];

  v20 = [objc_alloc(MEMORY[0x277D66420]) initWithConfiguration:v15];
  v21 = [v9 averageColorForVariant:1];

  [v20 setDefaultAccessibilityTintColor:v21];
  [v20 setPageControlHidden:(a5 >> 1) & 1];
  objc_storeStrong(&self->_rootFolderController, v20);
  if ((a5 & 0x2000) != 0)
  {
    v22 = [v20 beginModifyingDockOffscreenFractionForReason:@"Preview"];
    dockOffscreenModifier = self->_dockOffscreenModifier;
    self->_dockOffscreenModifier = v22;

    [(SBDockOffscreenFractionModifying *)self->_dockOffscreenModifier setDockOffscreenFraction:1.0];
  }

  v24 = [v20 view];

  return v24;
}

- (id)makeSilhouetteFolderContent
{
  v3 = [(SBHomeScreenPreviewView *)self iconManager];
  v4 = [v3 silhouetteLayoutForPageAtIndex:0];
  v5 = objc_alloc(MEMORY[0x277D67B80]);
  [(SBHomeScreenPreviewView *)self bounds];
  v8 = [v5 initWithSilhouetteLayout:v4 viewSize:{v6, v7}];
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [v9 UUIDString];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__SBHomeScreenPreviewView_makeSilhouetteFolderContent__block_invoke;
  v20[3] = &unk_2783BF018;
  v11 = v10;
  v21 = v11;
  [v8 setIconViewBuilder:v20];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __54__SBHomeScreenPreviewView_makeSilhouetteFolderContent__block_invoke_2;
  v18 = &unk_2783BF018;
  v19 = v11;
  v12 = v11;
  [v8 setDockViewBuilder:&v15];
  v13 = [v8 buildView];

  return v13;
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

- (void)configureIconView:(id)a3 forIcon:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBHomeScreenPreviewView *)self iconManager];
  [v7 configureIconView:v8 forIcon:v6];

  [v8 setDelegate:self];
  [v8 setLabelAccessoryHidden:1];
  [v8 setAllowsBlockedForScreenTimeExpiration:0];
  [v8 setImageLoadingBehavior:0];
  if (([(SBHomeScreenPreviewView *)self snapshotOptions]& 0x1000) != 0)
  {
    [v8 setHidden:1];
  }
}

- (id)iconView:(id)a3 backgroundViewForComponentsOfType:(int64_t)a4
{
  v4 = [a3 location];
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