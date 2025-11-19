@interface UISystemShellApplication
- (BOOL)_openURL:(id)a3;
- (UISystemShellApplication)init;
- (int64_t)_interfaceOrientationRotationDirectionFromOrientation:(int64_t)a3 toOrientation:(int64_t)a4;
- (void)noteActiveInterfaceOrientationDidChangeToOrientation:(int64_t)a3 willAnimateWithSettings:(id)a4 fromOrientation:(int64_t)a5;
- (void)noteActiveInterfaceOrientationDidChangeToOrientation:(int64_t)a3 willAnimateWithSettings:(id)a4 fromOrientation:(int64_t)a5 screen:(id)a6;
- (void)noteActiveInterfaceOrientationWillChangeToOrientation:(int64_t)a3;
- (void)noteActiveInterfaceOrientationWillChangeToOrientation:(int64_t)a3 screen:(id)a4;
@end

@implementation UISystemShellApplication

- (UISystemShellApplication)init
{
  v17.receiver = self;
  v17.super_class = UISystemShellApplication;
  v2 = [(UIApplication *)&v17 init];
  v3 = v2;
  if (v2)
  {
    [(UIApplication *)v2 _setShouldFixMainThreadPriority:1];
    v4 = [objc_alloc(MEMORY[0x1E699F7A0]) initWithDisplayType:0 name:@"FBSystemAppActiveInterfaceOrientationChanged"];
    interfaceOrientationTransition = v3->_interfaceOrientationTransition;
    v3->_interfaceOrientationTransition = v4;

    v6 = [MEMORY[0x1E699F7B0] sharedInstance];
    [v6 setInterfaceOrientation:-[UISystemShellApplication startupInterfaceOrientation](v3 animationSettings:"startupInterfaceOrientation") direction:{0, 0}];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    objc_initWeak(&location, v7);

    v8 = objc_loadWeakRetained(&location);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __32__UISystemShellApplication_init__block_invoke;
    v13[3] = &unk_1E710C240;
    objc_copyWeak(&v15, &location);
    v9 = v3;
    v14 = v9;
    v10 = [v8 addObserverForName:@"UIApplicationDidFinishLaunchingNotification" object:0 queue:0 usingBlock:v13];
    didFinishLaunchingObserver = v9->_didFinishLaunchingObserver;
    v9->_didFinishLaunchingObserver = v10;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __32__UISystemShellApplication_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  BSRunLoopPerformAfterCACommit();
  [WeakRetained removeObserver:*(*(a1 + 32) + 480)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 480);
  *(v2 + 480) = 0;
}

void __32__UISystemShellApplication_init__block_invoke_2()
{
  v0 = [MEMORY[0x1E699F800] sharedInstance];
  [v0 readyForInteraction];
}

- (BOOL)_openURL:(id)a3
{
  v4 = a3;
  if (v4 && [(UISystemShellApplication *)self canOpenURL:v4])
  {
    [(UIApplication *)self _applicationOpenURL:v4 payload:0];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)noteActiveInterfaceOrientationWillChangeToOrientation:(int64_t)a3
{
  v5 = [objc_opt_self() mainScreen];
  [(UISystemShellApplication *)self noteActiveInterfaceOrientationWillChangeToOrientation:a3 screen:v5];
}

- (void)noteActiveInterfaceOrientationWillChangeToOrientation:(int64_t)a3 screen:(id)a4
{
  v6 = a4;
  if ([(FBDisplayLayoutTransition *)self->_interfaceOrientationTransition interfaceOrientation]!= a3)
  {
    [(FBDisplayLayoutTransition *)self->_interfaceOrientationTransition setInterfaceOrientation:a3];
    [(FBDisplayLayoutTransition *)self->_interfaceOrientationTransition beginTransition];
  }

  v7.receiver = self;
  v7.super_class = UISystemShellApplication;
  [(UIApplication *)&v7 noteActiveInterfaceOrientationWillChangeToOrientation:a3 screen:v6];
}

- (void)noteActiveInterfaceOrientationDidChangeToOrientation:(int64_t)a3 willAnimateWithSettings:(id)a4 fromOrientation:(int64_t)a5
{
  v8 = a4;
  v9 = [objc_opt_self() mainScreen];
  [(UISystemShellApplication *)self noteActiveInterfaceOrientationDidChangeToOrientation:a3 willAnimateWithSettings:v8 fromOrientation:a5 screen:v9];
}

- (void)noteActiveInterfaceOrientationDidChangeToOrientation:(int64_t)a3 willAnimateWithSettings:(id)a4 fromOrientation:(int64_t)a5 screen:(id)a6
{
  v10 = a4;
  v13.receiver = self;
  v13.super_class = UISystemShellApplication;
  [(UIApplication *)&v13 noteActiveInterfaceOrientationDidChangeToOrientation:a3 willAnimateWithSettings:v10 fromOrientation:a5 screen:a6];
  if ([(FBDisplayLayoutTransition *)self->_interfaceOrientationTransition isTransitioning])
  {
    [(FBDisplayLayoutTransition *)self->_interfaceOrientationTransition setInterfaceOrientation:a3];
    [(FBDisplayLayoutTransition *)self->_interfaceOrientationTransition endTransition];
    v11 = [(UISystemShellApplication *)self _interfaceOrientationRotationDirectionFromOrientation:a5 toOrientation:a3];
    v12 = [MEMORY[0x1E699F7B0] sharedInstance];
    [v12 setInterfaceOrientation:a3 animationSettings:v10 direction:v11];
  }
}

- (int64_t)_interfaceOrientationRotationDirectionFromOrientation:(int64_t)a3 toOrientation:(int64_t)a4
{
  if (a4 == 2)
  {
    v4 = 180;
  }

  else
  {
    v4 = 0;
  }

  if (a4 == 4)
  {
    v5 = -90;
  }

  else
  {
    v5 = v4;
  }

  if (a4 == 3)
  {
    v6 = 90;
  }

  else
  {
    v6 = v5;
  }

  if (a4 == 1)
  {
    v6 = 0;
  }

  if (a3 == 2)
  {
    v7 = -180;
  }

  else
  {
    v7 = 0;
  }

  if (a3 == 4)
  {
    v8 = 90;
  }

  else
  {
    v8 = v7;
  }

  if (a3 == 3)
  {
    v9 = -90;
  }

  else
  {
    v9 = v8;
  }

  if (a3 == 1)
  {
    v9 = 0;
  }

  v10 = v9 + v6;
  v11 = v10;
  if (v10 <= -181)
  {
    do
    {
      v11 = v11 + 360.0;
    }

    while (v11 < -180.0);
  }

    ;
  }

  if (fabs(v11) != 180.0 && v11 < 0.0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end