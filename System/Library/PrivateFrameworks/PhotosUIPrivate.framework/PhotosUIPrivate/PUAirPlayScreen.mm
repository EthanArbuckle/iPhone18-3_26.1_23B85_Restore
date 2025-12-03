@interface PUAirPlayScreen
+ (PUAirPlayScreen)new;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAirPlayScreen:(id)screen;
- (BOOL)isValid;
- (CGSize)size;
- (NSString)_typeName;
- (NSString)debugDescription;
- (NSString)description;
- (PUAirPlayScreen)init;
- (PUAirPlayScreen)initWithScreen:(id)screen;
- (id)_associatedWindowScene;
- (unint64_t)hash;
- (unint64_t)placeholderType;
- (void)_updateWindow;
- (void)dealloc;
- (void)setRootViewController:(id)controller;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation PUAirPlayScreen

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  keyCopy = key;
  settingsCopy = settings;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAirPlayScreen.m" lineNumber:209 description:{@"Invalid parameter not satisfying: %@", @"[settings isKindOfClass:[PUAirPlaySettings class]]"}];
  }

  v10 = NSStringFromSelector(sel_compensateForOverscan);
  v11 = [keyCopy isEqual:v10];

  if (v11)
  {

    [(PUAirPlayScreen *)self _updateWindow];
  }
}

- (void)_updateWindow
{
  v3 = PLAirPlayGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "Updating PUAirPlayScreen", buf, 2u);
  }

  screen = [(PUAirPlayScreen *)self screen];
  _associatedWindowScene = [(PUAirPlayScreen *)self _associatedWindowScene];
  _window = [(PUAirPlayScreen *)self _window];
  rootViewController = [(PUAirPlayScreen *)self rootViewController];
  [screen setOverscanCompensation:2];
  [screen bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = +[PUAirPlaySettings sharedInstance];
  compensateForOverscan = [v16 compensateForOverscan];

  if (compensateForOverscan)
  {
    [screen overscanCompensationInsets];
    v9 = v9 + v18;
    v11 = v11 + v19;
    v13 = v13 - (v18 + v20);
    v15 = v15 - (v19 + v21);
  }

  if (!screen || !_associatedWindowScene)
  {
    v27 = PLAirPlayGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_1B36F3000, v27, OS_LOG_TYPE_DEFAULT, "\tUnderlying UIScreen is missing; discarding window and removing any content", v35, 2u);
    }

    [(PUAirPlayScreen *)self _setWindow:0];
    rootViewController = 0;
    goto LABEL_17;
  }

  if (!_window && rootViewController)
  {
    v22 = PLAirPlayGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_DEFAULT, "\tAirPlay screen has content but no window; creating one", v34, 2u);
    }

    _window = [objc_alloc(MEMORY[0x1E69DD2E8]) initWithWindowScene:_associatedWindowScene];
    [(PUAirPlayScreen *)self _setWindow:_window];
    goto LABEL_12;
  }

  if (!_window || rootViewController)
  {
    if (_window && rootViewController)
    {
      rootViewController2 = [_window rootViewController];

      if (rootViewController2 != rootViewController)
      {
        v31 = PLAirPlayGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 0;
          _os_log_impl(&dword_1B36F3000, v31, OS_LOG_TYPE_DEFAULT, "\tLoading new root controller in existing window", v32, 2u);
        }
      }
    }

    else if (!rootViewController)
    {
LABEL_17:
      v28 = 0;
      goto LABEL_18;
    }

LABEL_12:
    rootViewController3 = [_window rootViewController];

    if (rootViewController3 != rootViewController)
    {
      v24 = *MEMORY[0x1E695EFF8];
      v25 = *(MEMORY[0x1E695EFF8] + 8);
      view = [rootViewController view];
      [view setFrame:{v24, v25, v13, v15}];
    }

    goto LABEL_17;
  }

  v29 = PLAirPlayGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 0;
    _os_log_impl(&dword_1B36F3000, v29, OS_LOG_TYPE_DEFAULT, "\tAirPlay screen has a window but no content; removing window from the UIScreen", v33, 2u);
  }

  [(PUAirPlayScreen *)self _setWindow:0];
  rootViewController = 0;
  v28 = 1;
LABEL_18:
  [_window setFrame:{v9, v11, v13, v15}];
  [_window setRootViewController:rootViewController];
  [_window setHidden:v28];
}

- (id)_associatedWindowScene
{
  v18 = *MEMORY[0x1E69E9840];
  screen = [(PUAirPlayScreen *)self screen];
  if (screen)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    connectedScenes = [mEMORY[0x1E69DC668] connectedScenes];

    v5 = [connectedScenes countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(connectedScenes);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            screen2 = [v10 screen];

            if (screen2 == screen)
            {
              goto LABEL_13;
            }
          }
        }

        v6 = [connectedScenes countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v10 = 0;
LABEL_13:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isValid
{
  screen = [(PUAirPlayScreen *)self screen];
  if (screen)
  {
    _associatedWindowScene = [(PUAirPlayScreen *)self _associatedWindowScene];
    v5 = _associatedWindowScene != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)_typeName
{
  type = [(PUAirPlayScreen *)self type];
  if (type > 2)
  {
    return 0;
  }

  else
  {
    return &off_1E7B74C50[type]->isa;
  }
}

- (NSString)debugDescription
{
  v24.receiver = self;
  v24.super_class = PUAirPlayScreen;
  v3 = [(PUAirPlayScreen *)&v24 description];
  v4 = [v3 mutableCopy];

  _typeName = [(PUAirPlayScreen *)self _typeName];
  [v4 appendFormat:@"\n\tType: %@", _typeName];

  [(PUAirPlayScreen *)self size];
  v6 = NSStringFromCGSize(v26);
  [v4 appendFormat:@"\n\tSize: %@", v6];

  rootViewController = [(PUAirPlayScreen *)self rootViewController];
  [v4 appendFormat:@"\n\tRoot: %@", rootViewController];

  screen = [(PUAirPlayScreen *)self screen];
  pl_briefDescription = [screen pl_briefDescription];
  [v4 appendFormat:@"\n\tBacking screen: %@", pl_briefDescription];

  _window = [(PUAirPlayScreen *)self _window];
  pl_briefDescription2 = [_window pl_briefDescription];
  [v4 appendFormat:@"\n\tWindow: %@", pl_briefDescription2];

  _window2 = [(PUAirPlayScreen *)self _window];
  [_window2 frame];
  v13 = NSStringFromCGRect(v27);
  [v4 appendFormat:@"\n\t\tFrame: %@", v13];

  _window3 = [(PUAirPlayScreen *)self _window];
  if ([_window3 isHidden])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  [v4 appendFormat:@"\n\t\tHidden: %@", v15];

  _window4 = [(PUAirPlayScreen *)self _window];
  screen2 = [_window4 screen];
  pl_briefDescription3 = [screen2 pl_briefDescription];
  [v4 appendFormat:@"\n\t\tScreen: %@", pl_briefDescription3];

  screen3 = [(PUAirPlayScreen *)self screen];
  _window5 = [(PUAirPlayScreen *)self _window];
  screen4 = [_window5 screen];
  if (screen3 == screen4)
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  [v4 appendFormat:@"\n\tBacking and window screens match: %@", v22];

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  _typeName = [(PUAirPlayScreen *)self _typeName];
  [(PUAirPlayScreen *)self size];
  v7 = NSStringFromCGSize(v14);
  rootViewController = [(PUAirPlayScreen *)self rootViewController];
  v9 = rootViewController;
  v10 = @"nil";
  if (rootViewController)
  {
    v10 = rootViewController;
  }

  v11 = [v3 stringWithFormat:@"<%@: %p type = %@; size = %@; rootViewController = %@>", v5, self, _typeName, v7, v10];;

  return v11;
}

- (void)setRootViewController:(id)controller
{
  controllerCopy = controller;
  p_rootViewController = &self->_rootViewController;
  if (self->_rootViewController != controllerCopy)
  {
    v7 = controllerCopy;
    objc_storeStrong(p_rootViewController, controller);
    p_rootViewController = [(PUAirPlayScreen *)self _updateWindow];
    controllerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_rootViewController, controllerCopy);
}

- (unint64_t)placeholderType
{
  type = [(PUAirPlayScreen *)self type];
  v3 = +[PUAirPlaySettings sharedInstance];
  v4 = v3;
  if (type == 2)
  {
    placeholderForMirroredScreen = [v3 placeholderForMirroredScreen];
  }

  else
  {
    placeholderForMirroredScreen = [v3 placeholderForSecondScreen];
  }

  v6 = placeholderForMirroredScreen;

  return v6;
}

- (BOOL)isEqualToAirPlayScreen:(id)screen
{
  screen = [screen screen];
  screen2 = [(PUAirPlayScreen *)self screen];
  LOBYTE(self) = screen == screen2;

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUAirPlayScreen *)self isEqualToAirPlayScreen:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  identifier = [(PUAirPlayScreen *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)dealloc
{
  [(UIWindow *)self->__window setHidden:1];
  [(UIWindow *)self->__window setRootViewController:0];
  v3.receiver = self;
  v3.super_class = PUAirPlayScreen;
  [(PUAirPlayScreen *)&v3 dealloc];
}

- (PUAirPlayScreen)initWithScreen:(id)screen
{
  screenCopy = screen;
  v16.receiver = self;
  v16.super_class = PUAirPlayScreen;
  v6 = [(PUAirPlayScreen *)&v16 init];
  if (v6)
  {
    if (!screenCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"PUAirPlayScreen.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"screen"}];
    }

    [(PUAirPlayScreen *)v6 _setScreen:screenCopy];
    _displayID = [screenCopy _displayID];
    [(PUAirPlayScreen *)v6 _setIdentifier:_displayID];

    [screenCopy bounds];
    [(PUAirPlayScreen *)v6 _setSize:v8, v9];
    screen = [(PUAirPlayScreen *)v6 screen];
    mirroredScreen = [screen mirroredScreen];

    if (mirroredScreen)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [(PUAirPlayScreen *)v6 _setType:v12];
    v13 = +[PUAirPlaySettings sharedInstance];
    [v13 addKeyObserver:v6];
  }

  return v6;
}

- (PUAirPlayScreen)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUAirPlayScreen.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PUAirPlayScreen init]"}];

  abort();
}

+ (PUAirPlayScreen)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUAirPlayScreen.m" lineNumber:39 description:{@"%s is not available as initializer", "+[PUAirPlayScreen new]"}];

  abort();
}

@end