@interface TUWindowRestorationManager
- (TUWindowRestorationManager)initWithPluginBundleName:(id)a3 windowFrameName:(id)a4 delegate:(id)a5;
- (TUWindowRestorationManagerDelegate)delegate;
- (id)application;
- (void)didFinishRestoringWindows;
- (void)setFrameName:(id)a3 forWindow:(id)a4 changeFrame:(BOOL)a5;
- (void)windowSceneDidBecomeVisible;
@end

@implementation TUWindowRestorationManager

- (TUWindowRestorationManager)initWithPluginBundleName:(id)a3 windowFrameName:(id)a4 delegate:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = TUWindowRestorationManager;
  v11 = [(TUWindowRestorationManager *)&v25 init];
  if (v11)
  {
    v12 = os_log_create("com.apple.teaui.windowrestoration", "Window Restoration");
    v13 = WindowRestorationLog;
    WindowRestorationLog = v12;

    v14 = [MEMORY[0x1E696AAE8] mainBundle];
    v15 = [v14 builtInPlugInsPath];
    v16 = [v15 stringByAppendingFormat:@"/%@", v8];

    v17 = [MEMORY[0x1E696AC08] defaultManager];
    LODWORD(v15) = [v17 fileExistsAtPath:v16];

    if (v15)
    {
      v18 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithPath:v16];
      [v18 load];
      v19 = objc_alloc_init([v18 principalClass]);
      appKitWindow = v11->_appKitWindow;
      v11->_appKitWindow = v19;

      objc_storeStrong(&v11->_windowFrameName, a4);
      objc_storeWeak(&v11->_delegate, v10);
      v21 = [MEMORY[0x1E696AD88] defaultCenter];
      [v21 addObserver:v11 selector:sel_windowSceneDidBecomeVisible name:@"_UIWindowSceneDidBecomeVisibleNotification" object:0];

      v22 = [MEMORY[0x1E696AD88] defaultCenter];
      [v22 addObserver:v11 selector:sel_didFinishRestoringWindows name:@"TUDidFinishRestoringWindowsNotification" object:0];
    }

    else
    {
      v23 = WindowRestorationLog;
      if (os_log_type_enabled(WindowRestorationLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v16;
        _os_log_impl(&dword_1D7DFF000, v23, OS_LOG_TYPE_DEFAULT, "Failed to load plugin bundle at path=%@ in window restoration manager", buf, 0xCu);
      }
    }
  }

  return v11;
}

- (void)windowSceneDidBecomeVisible
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(TUWindowRestorationManager *)self application];
  v4 = v3;
  if (v3)
  {
    if ([v3 shouldChangeWindowFrameSize])
    {
      v5 = [MEMORY[0x1E69DC668] sharedApplication];
      v6 = [v5 connectedScenes];
      v7 = [v6 count] == 1;
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

    v9 = [(TUWindowRestorationManager *)self windowFrameName];
    v10 = [(TUWindowRestorationManager *)self delegate];
    v11 = [v10 windowRestorationManagerWindowForRestoration:self];
    [(TUWindowRestorationManager *)self setFrameName:v9 forWindow:v11 changeFrame:v7];

    if (v7)
    {
      [v4 setShouldChangeWindowFrameSize:0];
    }
  }
}

- (void)didFinishRestoringWindows
{
  v3 = [(TUWindowRestorationManager *)self application];
  v4 = WindowRestorationLog;
  if (os_log_type_enabled(WindowRestorationLog, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1D7DFF000, v4, OS_LOG_TYPE_DEFAULT, "AppKit did finish restoring windows", v11, 2u);
  }

  if (v3)
  {
    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    v6 = [v5 connectedScenes];
    v7 = [v6 count] == 1;

    v8 = [(TUWindowRestorationManager *)self windowFrameName];
    v9 = [(TUWindowRestorationManager *)self delegate];
    v10 = [v9 windowRestorationManagerWindowForRestoration:self];
    [(TUWindowRestorationManager *)self setFrameName:v8 forWindow:v10 changeFrame:v7];

    [v3 setShouldChangeWindowFrameSize:0];
  }
}

- (void)setFrameName:(id)a3 forWindow:(id)a4 changeFrame:(BOOL)a5
{
  v5 = a5;
  v12 = a3;
  v8 = a4;
  v9 = [(TUWindowRestorationManager *)self appKitWindow];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(TUWindowRestorationManager *)self appKitWindow];
    [v11 setFrameName:v12 forWindow:v8 changeFrame:v5];
  }
}

- (id)application
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 conformsToProtocol:&unk_1F539EF88];

  if (v3)
  {
    v4 = [MEMORY[0x1E69DC668] sharedApplication];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (TUWindowRestorationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end