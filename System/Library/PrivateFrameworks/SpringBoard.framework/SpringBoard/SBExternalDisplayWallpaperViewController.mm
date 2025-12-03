@interface SBExternalDisplayWallpaperViewController
- (SBExternalDisplayWallpaperViewController)initWithWindowScene:(id)scene;
@end

@implementation SBExternalDisplayWallpaperViewController

- (SBExternalDisplayWallpaperViewController)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v23.receiver = self;
  v23.super_class = SBExternalDisplayWallpaperViewController;
  v5 = [(SBExternalDisplayWallpaperViewController *)&v23 init];
  if (v5)
  {
    v6 = [[SBExternalDisplayWallpaperEffectView alloc] initExternalDisplayWithDelegate:v5 wallpaperVariant:1 transformOptions:15];
    wallpaperEffectView = v5->_wallpaperEffectView;
    v5->_wallpaperEffectView = v6;

    [(SBExternalDisplayWallpaperEffectView *)v5->_wallpaperEffectView setClipsToBounds:1];
    [(SBExternalDisplayWallpaperEffectView *)v5->_wallpaperEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    screen = [sceneCopy screen];
    [screen bounds];
    v10 = [v8 initWithFrame:?];
    wallpaperContainerView = v5->_wallpaperContainerView;
    v5->_wallpaperContainerView = v10;

    v12 = v5->_wallpaperContainerView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v12 setBackgroundColor:clearColor];

    [(UIView *)v5->_wallpaperContainerView setUserInteractionEnabled:0];
    [(UIView *)v5->_wallpaperContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(SBExternalDisplayWallpaperViewController *)v5 view];
    [view addSubview:v5->_wallpaperContainerView];

    view2 = [(SBExternalDisplayWallpaperViewController *)v5 view];
    v16 = SBHPinViewWithinView();

    wallpaperContainerView = [(SBExternalDisplayWallpaperViewController *)v5 wallpaperContainerView];
    wallpaperEffectView = [(SBExternalDisplayWallpaperViewController *)v5 wallpaperEffectView];
    [wallpaperContainerView addSubview:wallpaperEffectView];

    wallpaperEffectView2 = [(SBExternalDisplayWallpaperViewController *)v5 wallpaperEffectView];
    wallpaperContainerView2 = [(SBExternalDisplayWallpaperViewController *)v5 wallpaperContainerView];
    v21 = SBHPinViewWithinView();
  }

  return v5;
}

@end