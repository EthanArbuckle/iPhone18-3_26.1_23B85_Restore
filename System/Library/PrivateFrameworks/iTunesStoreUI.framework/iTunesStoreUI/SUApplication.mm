@interface SUApplication
- (BOOL)application:(id)application openURL:(id)l sourceApplication:(id)sourceApplication annotation:(id)annotation;
- (BOOL)applicationSuspendWithSettings:(id)settings;
- (BOOL)runTest:(id)test options:(id)options;
- (SUApplication)init;
- (double)defaultImageSnapshotExpiration;
- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window;
- (void)_applicationDidFinishLaunching:(id)launching;
- (void)_exitForStoreNotAvailable;
- (void)_exitIfStoreNotAvailable;
- (void)_runScriptTestWithOptions:(id)options;
- (void)_setupUI;
- (void)_teardownUI;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)dealloc;
- (void)runTestInvocation:(id)invocation;
- (void)setInteractionTintColor:(id)color;
@end

@implementation SUApplication

- (SUApplication)init
{
  v4.receiver = self;
  v4.super_class = SUApplication;
  v2 = [(SUApplication *)&v4 init];
  if (v2)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  return v2;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [(SUApplication *)self _teardownUI];

  v3.receiver = self;
  v3.super_class = SUApplication;
  [(SUApplication *)&v3 dealloc];
}

- (void)setInteractionTintColor:(id)color
{
  if (self->_interactionTintColor != color)
  {
    v4 = [color copy];
    self->_interactionTintColor = v4;
    window = self->_window;

    [(UIWindow *)window setInteractionTintColor:v4];
  }
}

- (BOOL)application:(id)application openURL:(id)l sourceApplication:(id)sourceApplication annotation:(id)annotation
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  absoluteString = [annotation objectForKey:*MEMORY[0x1E6963598]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    absoluteString = [absoluteString absoluteString];
  }

  else
  {
LABEL_5:
    absoluteString = 0;
  }

LABEL_6:
  v10 = +[SUClientApplicationController sharedController];

  return [v10 openClientURL:l withSourceApplication:sourceApplication sourceURLString:absoluteString];
}

- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window
{
  if ([objc_msgSend(MEMORY[0x1E69DC938] currentDevice])
  {
    return 30;
  }

  else
  {
    return 26;
  }
}

- (void)applicationDidEnterBackground:(id)background
{
  [+[SUClientApplicationController sharedController](SUClientApplicationController sharedController];
  if (self->_terminateOnNextSuspend)
  {
    self->_terminateOnNextSuspend = 0;

    [(SUApplication *)self terminateWithSuccess];
  }
}

- (BOOL)applicationSuspendWithSettings:(id)settings
{
  v4 = [+[SUClientApplicationController sharedController](SUClientApplicationController "sharedController")];
  [settings addEntriesFromDictionary:v4];

  return 1;
}

- (void)applicationWillEnterForeground:(id)foreground
{
  [(SUApplication *)self _setupUI];
  if (([objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")] & 1) == 0)
  {
    [+[SUClientApplicationController sharedController](SUClientApplicationController "sharedController")];
  }

  [(SUApplication *)self _exitIfStoreNotAvailable];
}

- (double)defaultImageSnapshotExpiration
{
  v2 = +[SUClientApplicationController sharedController];

  [v2 defaultImageSnapshotExpiration];
  return result;
}

- (void)_applicationDidFinishLaunching:(id)launching
{
  v17 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v13 = 138412546;
    v14 = objc_opt_class();
    v15 = 2048;
    Current = CFAbsoluteTimeGetCurrent();
    LODWORD(v12) = 22;
    v11 = &v13;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v13, v12}];
      free(v9);
      v11 = v10;
      SSFileLog();
    }
  }

  [(SUApplication *)self _setupUI];
  if (([launching launchedToTest] & 1) == 0)
  {
    [+[SUClientApplicationController sharedController](SUClientApplicationController "sharedController")];
  }
}

- (void)_exitForStoreNotAvailable
{
  v3 = +[SUClientApplicationController sharedController];
  [v3 cancelAllOperations];
  v4 = objc_alloc_init(SULockoutViewController);
  -[SUViewController setClientInterface:](v4, "setClientInterface:", [v3 clientInterface]);
  v5 = [[SUNavigationController alloc] initWithRootViewController:v4];
  -[SUNavigationController setClientInterface:](v5, "setClientInterface:", [v3 clientInterface]);
  [objc_msgSend(v3 "tabBarController")];

  self->_terminateOnNextSuspend = 1;
  v6 = +[SUDialogManager sharedInstance];
  -[SUDialogManager presentDialog:](v6, "presentDialog:", [MEMORY[0x1E69E4750] ITunesStoreNotAvailableDialog]);

  [v3 exitStoreAfterDialogsDismiss];
}

- (void)_exitIfStoreNotAvailable
{
  mEMORY[0x1E69E47F8] = [MEMORY[0x1E69E47F8] sharedCache];
  if ([mEMORY[0x1E69E47F8] URLBagForContext:{objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0)}] && (objc_msgSend(+[SUClientApplicationController sharedController](SUClientApplicationController, "sharedController"), "isStoreEnabled") & 1) == 0)
  {

    [(SUApplication *)self _exitForStoreNotAvailable];
  }
}

- (void)_setupUI
{
  window = self->_window;
  if (!window)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD2E8]);
    [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    v5 = [v4 initWithFrame:?];
    self->_window = v5;
    [(UIWindow *)v5 setAutoresizingMask:18];
    [(UIWindow *)self->_window setInteractionTintColor:self->_interactionTintColor];
    -[UIWindow setRootViewController:](self->_window, "setRootViewController:", [+[SUClientApplicationController sharedController](SUClientApplicationController "sharedController")]);
    window = self->_window;
  }

  [(UIWindow *)window makeKeyAndVisible];
}

- (void)_teardownUI
{
  [(UIWindow *)self->_window setHidden:1];

  self->_window = 0;
}

- (void)runTestInvocation:(id)invocation
{
  [(SUApplication *)self startedTest:__CurrentTestName];
  v5 = 0;
  [invocation invoke];
  [invocation getReturnValue:&v5];
  if (v5 == 1)
  {
    [(UIApplication *)self endCurrentPPT];
  }
}

- (BOOL)runTest:(id)test options:(id)options
{
  optionsCopy = options;
  setupSelector = [options setupSelector];
  testSelector = [options testSelector];
  if (setupSelector | testSelector)
  {
    v9 = testSelector;
    if (setupSelector && (objc_opt_respondsToSelector() & 1) != 0 || v9 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(UIApplication *)self beginPPTWithName:test];
      v10 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:{-[SUApplication methodSignatureForSelector:](self, "methodSignatureForSelector:", v9)}];
      [v10 setSelector:v9];
      [v10 setTarget:self];
      [v10 setArgument:&optionsCopy atIndex:2];
      [v10 retainArguments];
      if (setupSelector && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [(SUApplication *)self performSelector:setupSelector withObject:optionsCopy];
        [(SUApplication *)self performSelector:sel_runTestInvocation_ withObject:v10 afterDelay:1.0];
      }

      else
      {
        [(SUApplication *)self runTestInvocation:v10];
      }

      return 1;
    }

LABEL_12:
    v12.receiver = self;
    v12.super_class = SUApplication;
    return [(SUApplication *)&v12 runTest:test options:options];
  }

  if (![options scriptPath] || !objc_msgSend(options, "scriptEntry"))
  {
    goto LABEL_12;
  }

  [(SUApplication *)self _runScriptTestWithOptions:options];
  return 1;
}

- (void)_runScriptTestWithOptions:(id)options
{
  v4 = +[SUClientDispatch scriptExecutionContext];
  v5 = _runScriptTestWithOptions__scriptsLoaded;
  if (!_runScriptTestWithOptions__scriptsLoaded)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    _runScriptTestWithOptions__scriptsLoaded = v5;
  }

  if (![v5 member:{objc_msgSend(options, "scriptPath")}])
  {
    v6 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    [v4 evaluateData:objc_msgSend(MEMORY[0x1E695DEF0] MIMEType:"dataWithContentsOfFile:options:error:" textEncodingName:v6 baseURL:{1, 0), @"text/javascript", 0, 0}];
    [_runScriptTestWithOptions__scriptsLoaded addObject:{objc_msgSend(options, "scriptPath")}];
  }

  WebThreadRun();
}

void __50__SUApplication_SUPPT___runScriptTestWithOptions___block_invoke(uint64_t a1)
{
  v4 = [[SUScriptDictionary alloc] initWithDictionary:*(a1 + 32)];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) scriptEntry];
  [v2 callWebScriptMethod:v3 withArguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v4)}];
}

@end