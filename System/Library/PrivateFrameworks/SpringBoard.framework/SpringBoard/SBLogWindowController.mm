@interface SBLogWindowController
+ (UIWindowScene)windowScene;
+ (id)sharedInstance;
+ (void)setWindowScene:(id)scene;
- (SBLogWindowController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_createAndUpdateWindowIfNecessary;
- (void)show;
@end

@implementation SBLogWindowController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_50 != -1)
  {
    +[SBLogWindowController sharedInstance];
  }

  v3 = gSharedInstance;

  return v3;
}

void __39__SBLogWindowController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBLogWindowController);
  v1 = gSharedInstance;
  gSharedInstance = v0;
}

+ (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&_windowScene);

  return WeakRetained;
}

+ (void)setWindowScene:(id)scene
{
  obj = scene;
  WeakRetained = objc_loadWeakRetained(&_windowScene);

  v4 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&_windowScene, obj);
    v5 = +[SBLogWindowController sharedInstanceIfAvailable];
    [v5 _createAndUpdateWindowIfNecessary];

    v4 = obj;
  }
}

- (SBLogWindowController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = SBLogWindowController;
  v4 = [(SBLogWindowController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(SBLogWindowController *)v4 _createAndUpdateWindowIfNecessary];
  }

  return v5;
}

- (void)_createAndUpdateWindowIfNecessary
{
  windowScene = [objc_opt_class() windowScene];
  logWindow = self->_logWindow;
  if (logWindow)
  {
    windowScene2 = [(SBWindow *)logWindow windowScene];

    if (windowScene2 != windowScene)
    {
      [(SBWindow *)self->_logWindow setWindowScene:windowScene];
    }
  }

  else
  {
    v5 = [[SBWindow alloc] initWithWindowScene:windowScene role:@"SBTraitsParticipantRoleLogWindowRecipe" debugName:@"LogWindow"];
    v6 = self->_logWindow;
    self->_logWindow = v5;

    v7 = self->_logWindow;
    v8 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
    [(SBWindow *)v7 setRootViewController:v8];

    rootViewController = [(SBWindow *)self->_logWindow rootViewController];
    view = [rootViewController view];

    [(SBWindow *)self->_logWindow setWindowLevel:*MEMORY[0x277D76EE8] + 250.0 + -1.0];
    [(SBWindow *)self->_logWindow setHidden:1];
    v11 = objc_alloc_init(MEMORY[0x277D75C40]);
    logTextView = self->_logTextView;
    self->_logTextView = v11;

    [(UITextView *)self->_logTextView setAutoresizingMask:18];
    v13 = self->_logTextView;
    rootViewController2 = [(SBWindow *)self->_logWindow rootViewController];
    view2 = [rootViewController2 view];
    [view2 bounds];
    [(UITextView *)v13 setFrame:?];

    [view addSubview:self->_logTextView];
  }
}

- (void)show
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SBWindow *)self->_logWindow setHidden:0];
  logWindow = self->_logWindow;
  v15.origin.x = v5;
  v15.origin.y = v7;
  v15.size.width = v9;
  v15.size.height = v11;
  v13 = CGRectGetMaxX(v15) + -300.0;

  [(SBWindow *)logWindow setFrame:v13, 0.0, 300.0, 300.0];
}

@end