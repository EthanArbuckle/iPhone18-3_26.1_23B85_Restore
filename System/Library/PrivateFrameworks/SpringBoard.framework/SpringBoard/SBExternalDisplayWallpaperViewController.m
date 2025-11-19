@interface SBExternalDisplayWallpaperViewController
- (SBExternalDisplayWallpaperViewController)initWithWindowScene:(id)a3;
@end

@implementation SBExternalDisplayWallpaperViewController

- (SBExternalDisplayWallpaperViewController)initWithWindowScene:(id)a3
{
  v4 = a3;
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
    v9 = [v4 screen];
    [v9 bounds];
    v10 = [v8 initWithFrame:?];
    wallpaperContainerView = v5->_wallpaperContainerView;
    v5->_wallpaperContainerView = v10;

    v12 = v5->_wallpaperContainerView;
    v13 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v12 setBackgroundColor:v13];

    [(UIView *)v5->_wallpaperContainerView setUserInteractionEnabled:0];
    [(UIView *)v5->_wallpaperContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [(SBExternalDisplayWallpaperViewController *)v5 view];
    [v14 addSubview:v5->_wallpaperContainerView];

    v15 = [(SBExternalDisplayWallpaperViewController *)v5 view];
    v16 = SBHPinViewWithinView();

    v17 = [(SBExternalDisplayWallpaperViewController *)v5 wallpaperContainerView];
    v18 = [(SBExternalDisplayWallpaperViewController *)v5 wallpaperEffectView];
    [v17 addSubview:v18];

    v19 = [(SBExternalDisplayWallpaperViewController *)v5 wallpaperEffectView];
    v20 = [(SBExternalDisplayWallpaperViewController *)v5 wallpaperContainerView];
    v21 = SBHPinViewWithinView();
  }

  return v5;
}

@end