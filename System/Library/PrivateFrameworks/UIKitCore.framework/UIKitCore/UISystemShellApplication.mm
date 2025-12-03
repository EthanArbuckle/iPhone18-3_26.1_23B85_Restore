@interface UISystemShellApplication
- (BOOL)_openURL:(id)l;
- (UISystemShellApplication)init;
- (int64_t)_interfaceOrientationRotationDirectionFromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation;
- (void)noteActiveInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithSettings:(id)settings fromOrientation:(int64_t)fromOrientation;
- (void)noteActiveInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithSettings:(id)settings fromOrientation:(int64_t)fromOrientation screen:(id)screen;
- (void)noteActiveInterfaceOrientationWillChangeToOrientation:(int64_t)orientation;
- (void)noteActiveInterfaceOrientationWillChangeToOrientation:(int64_t)orientation screen:(id)screen;
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

    mEMORY[0x1E699F7B0] = [MEMORY[0x1E699F7B0] sharedInstance];
    [mEMORY[0x1E699F7B0] setInterfaceOrientation:-[UISystemShellApplication startupInterfaceOrientation](v3 animationSettings:"startupInterfaceOrientation") direction:{0, 0}];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    objc_initWeak(&location, defaultCenter);

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

- (BOOL)_openURL:(id)l
{
  lCopy = l;
  if (lCopy && [(UISystemShellApplication *)self canOpenURL:lCopy])
  {
    [(UIApplication *)self _applicationOpenURL:lCopy payload:0];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)noteActiveInterfaceOrientationWillChangeToOrientation:(int64_t)orientation
{
  mainScreen = [objc_opt_self() mainScreen];
  [(UISystemShellApplication *)self noteActiveInterfaceOrientationWillChangeToOrientation:orientation screen:mainScreen];
}

- (void)noteActiveInterfaceOrientationWillChangeToOrientation:(int64_t)orientation screen:(id)screen
{
  screenCopy = screen;
  if ([(FBDisplayLayoutTransition *)self->_interfaceOrientationTransition interfaceOrientation]!= orientation)
  {
    [(FBDisplayLayoutTransition *)self->_interfaceOrientationTransition setInterfaceOrientation:orientation];
    [(FBDisplayLayoutTransition *)self->_interfaceOrientationTransition beginTransition];
  }

  v7.receiver = self;
  v7.super_class = UISystemShellApplication;
  [(UIApplication *)&v7 noteActiveInterfaceOrientationWillChangeToOrientation:orientation screen:screenCopy];
}

- (void)noteActiveInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithSettings:(id)settings fromOrientation:(int64_t)fromOrientation
{
  settingsCopy = settings;
  mainScreen = [objc_opt_self() mainScreen];
  [(UISystemShellApplication *)self noteActiveInterfaceOrientationDidChangeToOrientation:orientation willAnimateWithSettings:settingsCopy fromOrientation:fromOrientation screen:mainScreen];
}

- (void)noteActiveInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithSettings:(id)settings fromOrientation:(int64_t)fromOrientation screen:(id)screen
{
  settingsCopy = settings;
  v13.receiver = self;
  v13.super_class = UISystemShellApplication;
  [(UIApplication *)&v13 noteActiveInterfaceOrientationDidChangeToOrientation:orientation willAnimateWithSettings:settingsCopy fromOrientation:fromOrientation screen:screen];
  if ([(FBDisplayLayoutTransition *)self->_interfaceOrientationTransition isTransitioning])
  {
    [(FBDisplayLayoutTransition *)self->_interfaceOrientationTransition setInterfaceOrientation:orientation];
    [(FBDisplayLayoutTransition *)self->_interfaceOrientationTransition endTransition];
    v11 = [(UISystemShellApplication *)self _interfaceOrientationRotationDirectionFromOrientation:fromOrientation toOrientation:orientation];
    mEMORY[0x1E699F7B0] = [MEMORY[0x1E699F7B0] sharedInstance];
    [mEMORY[0x1E699F7B0] setInterfaceOrientation:orientation animationSettings:settingsCopy direction:v11];
  }
}

- (int64_t)_interfaceOrientationRotationDirectionFromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation
{
  if (toOrientation == 2)
  {
    v4 = 180;
  }

  else
  {
    v4 = 0;
  }

  if (toOrientation == 4)
  {
    v5 = -90;
  }

  else
  {
    v5 = v4;
  }

  if (toOrientation == 3)
  {
    v6 = 90;
  }

  else
  {
    v6 = v5;
  }

  if (toOrientation == 1)
  {
    v6 = 0;
  }

  if (orientation == 2)
  {
    v7 = -180;
  }

  else
  {
    v7 = 0;
  }

  if (orientation == 4)
  {
    v8 = 90;
  }

  else
  {
    v8 = v7;
  }

  if (orientation == 3)
  {
    v9 = -90;
  }

  else
  {
    v9 = v8;
  }

  if (orientation == 1)
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