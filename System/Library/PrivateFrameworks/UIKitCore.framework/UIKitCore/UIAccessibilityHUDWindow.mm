@interface UIAccessibilityHUDWindow
+ (void)createSharedWindowWithScene:(id)scene;
+ (void)removeSharedWindow;
@end

@implementation UIAccessibilityHUDWindow

+ (void)createSharedWindowWithScene:(id)scene
{
  sceneCopy = scene;
  v5 = _SharedWindow;
  if (_SharedWindow)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Attempted to create shared Accessibility HUD window when one was already present", v10, 2u);
      v5 = _SharedWindow;
    }

    [v5 setHidden:1];
  }

  v6 = [[self alloc] initWithWindowScene:sceneCopy];
  v7 = _SharedWindow;
  _SharedWindow = v6;

  [_SharedWindow setWindowLevel:10000002.0];
  v8 = objc_opt_new();
  [v8 setSizesWindowToScene:1];
  v9 = +[UIColor clearColor];
  [_SharedWindow setBackgroundColor:v9];

  [_SharedWindow setRootViewController:v8];
}

+ (void)removeSharedWindow
{
  v2 = _SharedWindow;
  _SharedWindow = 0;
}

@end