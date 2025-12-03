@interface SBExternalDisplayCoverSheetViewController
- (SBWindowScene)_sbWindowScene;
- (id)_floatingDockController;
- (id)_initWithWindowScene:(id)scene wallpaperEffectViewFactory:(id)factory;
- (id)newWallpaperEffectView;
- (void)cleanupAfterDismissal;
- (void)dealloc;
- (void)prepareForPresentation;
- (void)viewDidLoad;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
@end

@implementation SBExternalDisplayCoverSheetViewController

- (id)_initWithWindowScene:(id)scene wallpaperEffectViewFactory:(id)factory
{
  sceneCopy = scene;
  factoryCopy = factory;
  v14.receiver = self;
  v14.super_class = SBExternalDisplayCoverSheetViewController;
  v8 = [(SBExternalDisplayCoverSheetViewController *)&v14 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_sbWindowScene, sceneCopy);
    objc_storeStrong(&v9->_wallpaperEffectViewFactory, factory);
    zStackResolver = [sceneCopy zStackResolver];
    v11 = [zStackResolver acquireParticipantWithIdentifier:8 delegate:v9];
    zStackParticipant = v9->_zStackParticipant;
    v9->_zStackParticipant = v11;
  }

  return v9;
}

- (void)dealloc
{
  [(SBFZStackParticipant *)self->_zStackParticipant invalidate];
  zStackParticipant = self->_zStackParticipant;
  self->_zStackParticipant = 0;

  [(SBFloatingDockBehaviorAssertion *)self->_externalDisplayFloatingDockBehaviorAssertion invalidate];
  externalDisplayFloatingDockBehaviorAssertion = self->_externalDisplayFloatingDockBehaviorAssertion;
  self->_externalDisplayFloatingDockBehaviorAssertion = 0;

  v5.receiver = self;
  v5.super_class = SBExternalDisplayCoverSheetViewController;
  [(SBExternalDisplayCoverSheetViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = SBExternalDisplayCoverSheetViewController;
  [(SBExternalDisplayCoverSheetViewController *)&v17 viewDidLoad];
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  screen = [WeakRetained screen];
  [screen bounds];
  v6 = [v4 initWithFrame:?];
  wallpaperContainerView = self->_wallpaperContainerView;
  self->_wallpaperContainerView = v6;

  v8 = self->_wallpaperContainerView;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UIView *)v8 setBackgroundColor:clearColor];

  [(UIView *)self->_wallpaperContainerView setUserInteractionEnabled:0];
  [(UIView *)self->_wallpaperContainerView setHidden:0];
  [(UIView *)self->_wallpaperContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(SBExternalDisplayCoverSheetViewController *)self view];
  [view addSubview:self->_wallpaperContainerView];

  view2 = [(SBExternalDisplayCoverSheetViewController *)self view];
  v12 = SBHPinViewWithinView();

  if (self->_wallpaperEffectViewFactory)
  {
    wallpaperEffectViewFactory = self->_wallpaperEffectViewFactory;
  }

  else
  {
    wallpaperEffectViewFactory = self;
  }

  newWallpaperEffectView = [wallpaperEffectViewFactory newWallpaperEffectView];
  wallpaperEffectView = self->_wallpaperEffectView;
  self->_wallpaperEffectView = newWallpaperEffectView;

  [(UIView *)self->_wallpaperEffectView setClipsToBounds:1];
  [(UIView *)self->_wallpaperEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_wallpaperContainerView addSubview:self->_wallpaperEffectView];
  v16 = SBHPinViewWithinView();
}

- (void)prepareForPresentation
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SBExternalDisplayCoverSheetViewController prepareForPresentation]";
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "[EXTERNAL] %s", &v1, 0xCu);
}

- (void)cleanupAfterDismissal
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SBExternalDisplayCoverSheetViewController cleanupAfterDismissal]";
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "[EXTERNAL] %s", &v1, 0xCu);
}

- (id)_floatingDockController
{
  _sbWindowScene = [(SBExternalDisplayCoverSheetViewController *)self _sbWindowScene];
  floatingDockController = [_sbWindowScene floatingDockController];

  return floatingDockController;
}

- (id)newWallpaperEffectView
{
  v3 = [SBExternalDisplayWallpaperEffectView alloc];

  return [(SBExternalDisplayWallpaperEffectView *)v3 initExternalDisplayWithDelegate:self wallpaperVariant:0 transformOptions:15];
}

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  if (self->_isPresented)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [preferences setActivationPolicyForParticipantsBelow:v4];
}

- (SBWindowScene)_sbWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);

  return WeakRetained;
}

@end