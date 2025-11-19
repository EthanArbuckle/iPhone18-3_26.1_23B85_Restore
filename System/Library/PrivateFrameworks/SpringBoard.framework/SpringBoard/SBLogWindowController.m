@interface SBLogWindowController
+ (UIWindowScene)windowScene;
+ (id)sharedInstance;
+ (void)setWindowScene:(id)a3;
- (SBLogWindowController)initWithNibName:(id)a3 bundle:(id)a4;
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

+ (void)setWindowScene:(id)a3
{
  obj = a3;
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

- (SBLogWindowController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = SBLogWindowController;
  v4 = [(SBLogWindowController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(SBLogWindowController *)v4 _createAndUpdateWindowIfNecessary];
  }

  return v5;
}

- (void)_createAndUpdateWindowIfNecessary
{
  v16 = [objc_opt_class() windowScene];
  logWindow = self->_logWindow;
  if (logWindow)
  {
    v4 = [(SBWindow *)logWindow windowScene];

    if (v4 != v16)
    {
      [(SBWindow *)self->_logWindow setWindowScene:v16];
    }
  }

  else
  {
    v5 = [[SBWindow alloc] initWithWindowScene:v16 role:@"SBTraitsParticipantRoleLogWindowRecipe" debugName:@"LogWindow"];
    v6 = self->_logWindow;
    self->_logWindow = v5;

    v7 = self->_logWindow;
    v8 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
    [(SBWindow *)v7 setRootViewController:v8];

    v9 = [(SBWindow *)self->_logWindow rootViewController];
    v10 = [v9 view];

    [(SBWindow *)self->_logWindow setWindowLevel:*MEMORY[0x277D76EE8] + 250.0 + -1.0];
    [(SBWindow *)self->_logWindow setHidden:1];
    v11 = objc_alloc_init(MEMORY[0x277D75C40]);
    logTextView = self->_logTextView;
    self->_logTextView = v11;

    [(UITextView *)self->_logTextView setAutoresizingMask:18];
    v13 = self->_logTextView;
    v14 = [(SBWindow *)self->_logWindow rootViewController];
    v15 = [v14 view];
    [v15 bounds];
    [(UITextView *)v13 setFrame:?];

    [v10 addSubview:self->_logTextView];
  }
}

- (void)show
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
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