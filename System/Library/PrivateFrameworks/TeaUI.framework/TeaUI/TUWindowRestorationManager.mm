@interface TUWindowRestorationManager
- (TUWindowRestorationManager)initWithPluginBundleName:(id)name windowFrameName:(id)frameName delegate:(id)delegate;
- (TUWindowRestorationManagerDelegate)delegate;
- (id)application;
- (void)didFinishRestoringWindows;
- (void)setFrameName:(id)name forWindow:(id)window changeFrame:(BOOL)frame;
- (void)windowSceneDidBecomeVisible;
@end

@implementation TUWindowRestorationManager

- (TUWindowRestorationManager)initWithPluginBundleName:(id)name windowFrameName:(id)frameName delegate:(id)delegate
{
  v28 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  frameNameCopy = frameName;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = TUWindowRestorationManager;
  v11 = [(TUWindowRestorationManager *)&v25 init];
  if (v11)
  {
    v12 = os_log_create("com.apple.teaui.windowrestoration", "Window Restoration");
    v13 = WindowRestorationLog;
    WindowRestorationLog = v12;

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    builtInPlugInsPath = [mainBundle builtInPlugInsPath];
    nameCopy = [builtInPlugInsPath stringByAppendingFormat:@"/%@", nameCopy];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    LODWORD(builtInPlugInsPath) = [defaultManager fileExistsAtPath:nameCopy];

    if (builtInPlugInsPath)
    {
      v18 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithPath:nameCopy];
      [v18 load];
      v19 = objc_alloc_init([v18 principalClass]);
      appKitWindow = v11->_appKitWindow;
      v11->_appKitWindow = v19;

      objc_storeStrong(&v11->_windowFrameName, frameName);
      objc_storeWeak(&v11->_delegate, delegateCopy);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v11 selector:sel_windowSceneDidBecomeVisible name:@"_UIWindowSceneDidBecomeVisibleNotification" object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:v11 selector:sel_didFinishRestoringWindows name:@"TUDidFinishRestoringWindowsNotification" object:0];
    }

    else
    {
      v23 = WindowRestorationLog;
      if (os_log_type_enabled(WindowRestorationLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = nameCopy;
        _os_log_impl(&dword_1D7DFF000, v23, OS_LOG_TYPE_DEFAULT, "Failed to load plugin bundle at path=%@ in window restoration manager", buf, 0xCu);
      }
    }
  }

  return v11;
}

- (void)windowSceneDidBecomeVisible
{
  v13 = *MEMORY[0x1E69E9840];
  application = [(TUWindowRestorationManager *)self application];
  v4 = application;
  if (application)
  {
    if ([application shouldChangeWindowFrameSize])
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      connectedScenes = [mEMORY[0x1E69DC668] connectedScenes];
      v7 = [connectedScenes count] == 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = WindowRestorationLog;
    if (os_log_type_enabled(WindowRestorationLog, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109120;
      v12[1] = v7;
      _os_log_impl(&dword_1D7DFF000, v8, OS_LOG_TYPE_DEFAULT, "Window scene did become visible, changeFrame=%hhd", v12, 8u);
    }

    windowFrameName = [(TUWindowRestorationManager *)self windowFrameName];
    delegate = [(TUWindowRestorationManager *)self delegate];
    v11 = [delegate windowRestorationManagerWindowForRestoration:self];
    [(TUWindowRestorationManager *)self setFrameName:windowFrameName forWindow:v11 changeFrame:v7];

    if (v7)
    {
      [v4 setShouldChangeWindowFrameSize:0];
    }
  }
}

- (void)didFinishRestoringWindows
{
  application = [(TUWindowRestorationManager *)self application];
  v4 = WindowRestorationLog;
  if (os_log_type_enabled(WindowRestorationLog, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1D7DFF000, v4, OS_LOG_TYPE_DEFAULT, "AppKit did finish restoring windows", v11, 2u);
  }

  if (application)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    connectedScenes = [mEMORY[0x1E69DC668] connectedScenes];
    v7 = [connectedScenes count] == 1;

    windowFrameName = [(TUWindowRestorationManager *)self windowFrameName];
    delegate = [(TUWindowRestorationManager *)self delegate];
    v10 = [delegate windowRestorationManagerWindowForRestoration:self];
    [(TUWindowRestorationManager *)self setFrameName:windowFrameName forWindow:v10 changeFrame:v7];

    [application setShouldChangeWindowFrameSize:0];
  }
}

- (void)setFrameName:(id)name forWindow:(id)window changeFrame:(BOOL)frame
{
  frameCopy = frame;
  nameCopy = name;
  windowCopy = window;
  appKitWindow = [(TUWindowRestorationManager *)self appKitWindow];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    appKitWindow2 = [(TUWindowRestorationManager *)self appKitWindow];
    [appKitWindow2 setFrameName:nameCopy forWindow:windowCopy changeFrame:frameCopy];
  }
}

- (id)application
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [mEMORY[0x1E69DC668] conformsToProtocol:&unk_1F539EF88];

  if (v3)
  {
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
  }

  else
  {
    mEMORY[0x1E69DC668]2 = 0;
  }

  return mEMORY[0x1E69DC668]2;
}

- (TUWindowRestorationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end