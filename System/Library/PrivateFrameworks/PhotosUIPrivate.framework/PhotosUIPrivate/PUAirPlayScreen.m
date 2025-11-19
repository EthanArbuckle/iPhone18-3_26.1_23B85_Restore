@interface PUAirPlayScreen
+ (PUAirPlayScreen)new;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAirPlayScreen:(id)a3;
- (BOOL)isValid;
- (CGSize)size;
- (NSString)_typeName;
- (NSString)debugDescription;
- (NSString)description;
- (PUAirPlayScreen)init;
- (PUAirPlayScreen)initWithScreen:(id)a3;
- (id)_associatedWindowScene;
- (unint64_t)hash;
- (unint64_t)placeholderType;
- (void)_updateWindow;
- (void)dealloc;
- (void)setRootViewController:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
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

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v7 = a4;
  v8 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PUAirPlayScreen.m" lineNumber:209 description:{@"Invalid parameter not satisfying: %@", @"[settings isKindOfClass:[PUAirPlaySettings class]]"}];
  }

  v10 = NSStringFromSelector(sel_compensateForOverscan);
  v11 = [v7 isEqual:v10];

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

  v4 = [(PUAirPlayScreen *)self screen];
  v5 = [(PUAirPlayScreen *)self _associatedWindowScene];
  v6 = [(PUAirPlayScreen *)self _window];
  v7 = [(PUAirPlayScreen *)self rootViewController];
  [v4 setOverscanCompensation:2];
  [v4 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = +[PUAirPlaySettings sharedInstance];
  v17 = [v16 compensateForOverscan];

  if (v17)
  {
    [v4 overscanCompensationInsets];
    v9 = v9 + v18;
    v11 = v11 + v19;
    v13 = v13 - (v18 + v20);
    v15 = v15 - (v19 + v21);
  }

  if (!v4 || !v5)
  {
    v27 = PLAirPlayGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_1B36F3000, v27, OS_LOG_TYPE_DEFAULT, "\tUnderlying UIScreen is missing; discarding window and removing any content", v35, 2u);
    }

    [(PUAirPlayScreen *)self _setWindow:0];
    v7 = 0;
    goto LABEL_17;
  }

  if (!v6 && v7)
  {
    v22 = PLAirPlayGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_DEFAULT, "\tAirPlay screen has content but no window; creating one", v34, 2u);
    }

    v6 = [objc_alloc(MEMORY[0x1E69DD2E8]) initWithWindowScene:v5];
    [(PUAirPlayScreen *)self _setWindow:v6];
    goto LABEL_12;
  }

  if (!v6 || v7)
  {
    if (v6 && v7)
    {
      v30 = [v6 rootViewController];

      if (v30 != v7)
      {
        v31 = PLAirPlayGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 0;
          _os_log_impl(&dword_1B36F3000, v31, OS_LOG_TYPE_DEFAULT, "\tLoading new root controller in existing window", v32, 2u);
        }
      }
    }

    else if (!v7)
    {
LABEL_17:
      v28 = 0;
      goto LABEL_18;
    }

LABEL_12:
    v23 = [v6 rootViewController];

    if (v23 != v7)
    {
      v24 = *MEMORY[0x1E695EFF8];
      v25 = *(MEMORY[0x1E695EFF8] + 8);
      v26 = [v7 view];
      [v26 setFrame:{v24, v25, v13, v15}];
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
  v7 = 0;
  v28 = 1;
LABEL_18:
  [v6 setFrame:{v9, v11, v13, v15}];
  [v6 setRootViewController:v7];
  [v6 setHidden:v28];
}

- (id)_associatedWindowScene
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(PUAirPlayScreen *)self screen];
  if (v2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    v4 = [v3 connectedScenes];

    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            v11 = [v10 screen];

            if (v11 == v2)
            {
              goto LABEL_13;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v3 = [(PUAirPlayScreen *)self screen];
  if (v3)
  {
    v4 = [(PUAirPlayScreen *)self _associatedWindowScene];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)_typeName
{
  v2 = [(PUAirPlayScreen *)self type];
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return &off_1E7B74C50[v2]->isa;
  }
}

- (NSString)debugDescription
{
  v24.receiver = self;
  v24.super_class = PUAirPlayScreen;
  v3 = [(PUAirPlayScreen *)&v24 description];
  v4 = [v3 mutableCopy];

  v5 = [(PUAirPlayScreen *)self _typeName];
  [v4 appendFormat:@"\n\tType: %@", v5];

  [(PUAirPlayScreen *)self size];
  v6 = NSStringFromCGSize(v26);
  [v4 appendFormat:@"\n\tSize: %@", v6];

  v7 = [(PUAirPlayScreen *)self rootViewController];
  [v4 appendFormat:@"\n\tRoot: %@", v7];

  v8 = [(PUAirPlayScreen *)self screen];
  v9 = [v8 pl_briefDescription];
  [v4 appendFormat:@"\n\tBacking screen: %@", v9];

  v10 = [(PUAirPlayScreen *)self _window];
  v11 = [v10 pl_briefDescription];
  [v4 appendFormat:@"\n\tWindow: %@", v11];

  v12 = [(PUAirPlayScreen *)self _window];
  [v12 frame];
  v13 = NSStringFromCGRect(v27);
  [v4 appendFormat:@"\n\t\tFrame: %@", v13];

  v14 = [(PUAirPlayScreen *)self _window];
  if ([v14 isHidden])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  [v4 appendFormat:@"\n\t\tHidden: %@", v15];

  v16 = [(PUAirPlayScreen *)self _window];
  v17 = [v16 screen];
  v18 = [v17 pl_briefDescription];
  [v4 appendFormat:@"\n\t\tScreen: %@", v18];

  v19 = [(PUAirPlayScreen *)self screen];
  v20 = [(PUAirPlayScreen *)self _window];
  v21 = [v20 screen];
  if (v19 == v21)
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
  v6 = [(PUAirPlayScreen *)self _typeName];
  [(PUAirPlayScreen *)self size];
  v7 = NSStringFromCGSize(v14);
  v8 = [(PUAirPlayScreen *)self rootViewController];
  v9 = v8;
  v10 = @"nil";
  if (v8)
  {
    v10 = v8;
  }

  v11 = [v3 stringWithFormat:@"<%@: %p type = %@; size = %@; rootViewController = %@>", v5, self, v6, v7, v10];;

  return v11;
}

- (void)setRootViewController:(id)a3
{
  v5 = a3;
  p_rootViewController = &self->_rootViewController;
  if (self->_rootViewController != v5)
  {
    v7 = v5;
    objc_storeStrong(p_rootViewController, a3);
    p_rootViewController = [(PUAirPlayScreen *)self _updateWindow];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_rootViewController, v5);
}

- (unint64_t)placeholderType
{
  v2 = [(PUAirPlayScreen *)self type];
  v3 = +[PUAirPlaySettings sharedInstance];
  v4 = v3;
  if (v2 == 2)
  {
    v5 = [v3 placeholderForMirroredScreen];
  }

  else
  {
    v5 = [v3 placeholderForSecondScreen];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqualToAirPlayScreen:(id)a3
{
  v4 = [a3 screen];
  v5 = [(PUAirPlayScreen *)self screen];
  LOBYTE(self) = v4 == v5;

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUAirPlayScreen *)self isEqualToAirPlayScreen:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(PUAirPlayScreen *)self identifier];
  v3 = [v2 hash];

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

- (PUAirPlayScreen)initWithScreen:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = PUAirPlayScreen;
  v6 = [(PUAirPlayScreen *)&v16 init];
  if (v6)
  {
    if (!v5)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:v6 file:@"PUAirPlayScreen.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"screen"}];
    }

    [(PUAirPlayScreen *)v6 _setScreen:v5];
    v7 = [v5 _displayID];
    [(PUAirPlayScreen *)v6 _setIdentifier:v7];

    [v5 bounds];
    [(PUAirPlayScreen *)v6 _setSize:v8, v9];
    v10 = [(PUAirPlayScreen *)v6 screen];
    v11 = [v10 mirroredScreen];

    if (v11)
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUAirPlayScreen.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PUAirPlayScreen init]"}];

  abort();
}

+ (PUAirPlayScreen)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PUAirPlayScreen.m" lineNumber:39 description:{@"%s is not available as initializer", "+[PUAirPlayScreen new]"}];

  abort();
}

@end