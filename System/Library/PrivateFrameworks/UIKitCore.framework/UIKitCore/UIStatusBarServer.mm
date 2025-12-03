@interface UIStatusBarServer
+ ($38BCDC8E708A2560E43DD4D455FC8F47)getStatusBarOverrideData;
+ ($6C45178016D353444451090973A2A97F)_statusBarData;
+ (id)_cachedTimeStringFromData:(id *)data;
+ (id)getDoubleHeightStatusStringForStyle:(int64_t)style;
+ (unint64_t)getStyleOverrides;
+ (void)_updateStatusBarDataAnimated:(BOOL)animated;
+ (void)addStatusBarItem:(int)item;
+ (void)addStyleOverrides:(unint64_t)overrides;
+ (void)permanentizeStatusBarOverrideData;
+ (void)postDoubleHeightStatusString:(id)string forStyle:(int64_t)style;
+ (void)postStatusBarData:(id *)data withActions:(int)actions;
+ (void)postStatusBarOverrideData:(id *)data;
+ (void)removeStatusBarItem:(int)item;
+ (void)removeStyleOverrides:(unint64_t)overrides;
+ (void)runServer;
- (UIStatusBarServer)initWithStatusBar:(id)bar;
- (void)_receivedStatusBarData:(id *)data actions:(int)actions animated:(BOOL)animated;
- (void)_receivedStyleOverrides:(unint64_t)overrides;
- (void)dealloc;
- (void)setStatusBar:(id)bar;
@end

@implementation UIStatusBarServer

+ (unint64_t)getStyleOverrides
{
  if (([UIApp _isSpringBoard] & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Unsupported use of UIStatusBarSever SPI outside of SpringBoard. Use System Status APIs instead.", buf, 2u);
      }
    }

    else
    {
      v3 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A1100) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Unsupported use of UIStatusBarSever SPI outside of SpringBoard. Use System Status APIs instead.", v5, 2u);
      }
    }
  }

  return qword_1ED4A10B0;
}

+ ($6C45178016D353444451090973A2A97F)_statusBarData
{
  v13 = *MEMORY[0x1E69E9840];
  if ((_MergedGlobals_1310[0] & 1) == 0)
  {
    memcpy(&unk_1ED4A1108, &statusBarData, 0xF28uLL);
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = qword_1ED4A10C0;
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          _MergedGlobals_1310[[*(*(&v8 + 1) + 8 * v6++) intValue] + 104] = 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }

    [UIStatusBar getData:&unk_1ED4A1108 forRequestedData:&unk_1ED4A1108 withOverrides:&statusBarOverrides];
    _MergedGlobals_1310[0] = 1;
  }

  return &unk_1ED4A1108;
}

- (void)dealloc
{
  [(UIStatusBarServer *)self setStatusBar:0];
  v3.receiver = self;
  v3.super_class = UIStatusBarServer;
  [(UIStatusBarServer *)&v3 dealloc];
}

+ (void)runServer
{
  if (!qword_1ED4A10A8)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:6];
    v4 = qword_1ED4A10A8;
    qword_1ED4A10A8 = v3;

    qword_1ED4A10B0 = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v6 = qword_1ED4A10B8;
    qword_1ED4A10B8 = dictionary;

    v7 = [MEMORY[0x1E695DFA8] set];
    v8 = qword_1ED4A10C0;
    qword_1ED4A10C0 = v7;

    v9 = NSHomeDirectory();
    v12 = [v9 stringByAppendingPathComponent:@"Library/SpringBoard/statusBarOverrides"];

    v10 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v12];
    v11 = v10;
    if (v10 && [v10 length] == 3944)
    {
      memcpy(&statusBarOverrides, [v11 bytes], 0xF68uLL);
    }

    else
    {
      bzero(&statusBarOverrides, 0xF68uLL);
    }
  }
}

+ (void)_updateStatusBarDataAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v15 = *MEMORY[0x1E69E9840];
  _MergedGlobals_1310[0] = 0;
  _statusBarData = [self _statusBarData];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = qword_1ED4A10A8;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _receivedStatusBarData:_statusBarData actions:0 animated:{animatedCopy, v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

+ (void)postStatusBarData:(id *)data withActions:(int)actions
{
  v4 = *&actions;
  v19 = *MEMORY[0x1E69E9840];
  v7 = +[UIView areAnimationsEnabled];
  memcpy(&statusBarData, data, 0xF28uLL);
  _MergedGlobals_1310[0] = 0;
  _statusBarData = [self _statusBarData];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = qword_1ED4A10A8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) _receivedStatusBarData:_statusBarData actions:v4 animated:{v7, v14}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

+ (void)addStyleOverrides:(unint64_t)overrides
{
  v17 = *MEMORY[0x1E69E9840];
  if (([UIApp _isSpringBoard] & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Unsupported use of UIStatusBarSever SPI outside of SpringBoard. Use System Status APIs instead.", buf, 2u);
      }
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A10C8) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unsupported use of UIStatusBarSever SPI outside of SpringBoard. Use System Status APIs instead.", buf, 2u);
      }
    }
  }

  qword_1ED4A10B0 |= overrides;
  _MergedGlobals_1310[0] = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = qword_1ED4A10A8;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) _receivedStyleOverrides:{qword_1ED4A10B0, v11}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }
}

+ (void)removeStyleOverrides:(unint64_t)overrides
{
  v17 = *MEMORY[0x1E69E9840];
  if (([UIApp _isSpringBoard] & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Unsupported use of UIStatusBarSever SPI outside of SpringBoard. Use System Status APIs instead.", buf, 2u);
      }
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A10D0) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unsupported use of UIStatusBarSever SPI outside of SpringBoard. Use System Status APIs instead.", buf, 2u);
      }
    }
  }

  qword_1ED4A10B0 &= ~overrides;
  _MergedGlobals_1310[0] = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = qword_1ED4A10A8;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) _receivedStyleOverrides:{qword_1ED4A10B0, v11}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }
}

+ (void)postDoubleHeightStatusString:(id)string forStyle:(int64_t)style
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [string copy];
  v6 = qword_1ED4A10B8;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [v6 setObject:v5 forKeyedSubscript:v7];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = qword_1ED4A10A8;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        statusBar = [v13 statusBar];
        [statusBar statusBarServer:v13 didReceiveDoubleHeightStatusString:v5 forStyle:style];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

+ (void)addStatusBarItem:(int)item
{
  v3 = *&item;
  if (([UIApp _isSpringBoard] & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Unsupported use of UIStatusBarSever SPI outside of SpringBoard. Use System Status APIs instead.", buf, 2u);
      }
    }

    else
    {
      v7 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A10D8) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Unsupported use of UIStatusBarSever SPI outside of SpringBoard. Use System Status APIs instead.", v9, 2u);
      }
    }
  }

  v5 = qword_1ED4A10C0;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [v5 addObject:v6];

  [self _updateStatusBarDataAnimated:1];
}

+ (void)removeStatusBarItem:(int)item
{
  v3 = *&item;
  if (([UIApp _isSpringBoard] & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Unsupported use of UIStatusBarSever SPI outside of SpringBoard. Use System Status APIs instead.", buf, 2u);
      }
    }

    else
    {
      v7 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A10E0) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Unsupported use of UIStatusBarSever SPI outside of SpringBoard. Use System Status APIs instead.", v9, 2u);
      }
    }
  }

  v5 = qword_1ED4A10C0;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [v5 removeObject:v6];

  [self _updateStatusBarDataAnimated:1];
}

+ (void)postStatusBarOverrideData:(id *)data
{
  if (([UIApp _isSpringBoard] & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Unsupported use of UIStatusBarSever SPI outside of SpringBoard. Use System Status APIs instead.", buf, 2u);
      }
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A10E8) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Unsupported use of UIStatusBarSever SPI outside of SpringBoard. Use System Status APIs instead.", v7, 2u);
      }
    }
  }

  memcpy(&statusBarOverrides, data, 0xF68uLL);
  [self _updateStatusBarDataAnimated:1];
}

+ (void)permanentizeStatusBarOverrideData
{
  if (([UIApp _isSpringBoard] & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Unsupported use of UIStatusBarSever SPI outside of SpringBoard. Use System Status APIs instead.", buf, 2u);
      }
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A10F0) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Unsupported use of UIStatusBarSever SPI outside of SpringBoard. Use System Status APIs instead.", v7, 2u);
      }
    }
  }

  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/SpringBoard/statusBarOverrides"];

  v4 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:&statusBarOverrides length:3944 freeWhenDone:0];
  [v4 writeToFile:v3 atomically:0];
}

- (UIStatusBarServer)initWithStatusBar:(id)bar
{
  barCopy = bar;
  v8.receiver = self;
  v8.super_class = UIStatusBarServer;
  v5 = [(UIStatusBarServer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIStatusBarServer *)v5 setStatusBar:barCopy];
    [qword_1ED4A10A8 addObject:v6];
  }

  return v6;
}

- (void)setStatusBar:(id)bar
{
  barCopy = bar;
  if (self->_source)
  {
    v5 = CPGetMachPortForMIGServerSource();
    CFRunLoopSourceInvalidate(self->_source);
    CFRelease(self->_source);
    self->_source = 0;
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], v5, 1u, -1);
  }

  statusBar = self->_statusBar;
  self->_statusBar = barCopy;
}

+ (id)_cachedTimeStringFromData:(id *)data
{
  if (_UIDeviceNativeUserInterfaceIdiom() == 1)
  {
    v4 = _UIKitUserDefaults();
    if ([v4 BOOLForKey:0x1EFB9AA50])
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:data->var2];

      goto LABEL_6;
    }
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:data->var1];
LABEL_6:

  return v5;
}

+ ($38BCDC8E708A2560E43DD4D455FC8F47)getStatusBarOverrideData
{
  if (([UIApp _isSpringBoard] & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Unsupported use of UIStatusBarSever SPI outside of SpringBoard. Use System Status APIs instead.", buf, 2u);
      }
    }

    else
    {
      v3 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A10F8) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Unsupported use of UIStatusBarSever SPI outside of SpringBoard. Use System Status APIs instead.", v5, 2u);
      }
    }
  }

  return &statusBarOverrides;
}

+ (id)getDoubleHeightStatusStringForStyle:(int64_t)style
{
  v3 = qword_1ED4A10B8;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

- (void)_receivedStatusBarData:(id *)data actions:(int)actions animated:(BOOL)animated
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__UIStatusBarServer__receivedStatusBarData_actions_animated___block_invoke;
  v5[3] = &unk_1E7116B98;
  v5[4] = self;
  v5[5] = data;
  actionsCopy = actions;
  if (animated)
  {
    [(UIStatusBarServerClient *)self->_statusBar statusBarServer:self didReceiveStatusBarData:data withActions:*&actions];
  }

  else
  {
    [UIView performWithoutAnimation:v5, data];
  }
}

- (void)_receivedStyleOverrides:(unint64_t)overrides
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = _UIStatusBar_Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    overridesCopy = overrides;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "StatusBar received style overrides: %llu", &v6, 0xCu);
  }

  [(UIStatusBarServerClient *)self->_statusBar statusBarServer:self didReceiveStyleOverrides:overrides];
}

@end