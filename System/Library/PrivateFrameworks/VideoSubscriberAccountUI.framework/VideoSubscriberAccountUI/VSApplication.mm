@interface VSApplication
- (NSHTTPCookieStorage)cookieStorage;
- (VSApplication)init;
- (VSApplication)initWithBootURL:(id)l;
- (VSApplicationDelegate)delegate;
- (id)activeDocument;
- (id)appIdentifier;
- (id)appLaunchParams;
- (id)sourceApplicationAuditTokenDataForContext:(id)context;
- (id)sourceApplicationBundleIdentifierForContext:(id)context;
- (id)viewElementRegistry;
- (id)xhrSessionConfigurationForContext:(id)context;
- (void)appContext:(id)context didFailWithError:(id)error;
- (void)appContext:(id)context didStartWithOptions:(id)options;
- (void)appContext:(id)context didStopWithOptions:(id)options;
- (void)appContext:(id)context evaluateAppJavaScriptInContext:(id)inContext;
- (void)appDocumentForDocument:(id)document completionHandler:(id)handler;
- (void)dealloc;
- (void)evaluate:(id)evaluate completionHandler:(id)handler;
- (void)release;
- (void)sendErrorWithMessage:(id)message;
- (void)start;
- (void)stop;
- (void)transitionToInvalidState;
- (void)transitionToStoppingState;
@end

@implementation VSApplication

- (void)release
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4.receiver = self;
    v4.super_class = VSApplication;
    [(VSApplication *)&v4 release];
  }

  else
  {
    v3 = MEMORY[0x277D85CD0];

    dispatch_sync_f(v3, self, VSMainThreadRelease);
  }
}

- (VSApplication)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSApplication)initWithBootURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The bootURL parameter must not be nil."];
  }

  v13.receiver = self;
  v13.super_class = VSApplication;
  v5 = [(VSApplication *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(VSAppDeviceConfig);
    appDeviceConfig = v5->_appDeviceConfig;
    v5->_appDeviceConfig = v6;

    v8 = [lCopy copy];
    bootURL = v5->_bootURL;
    v5->_bootURL = v8;

    v10 = objc_alloc_init(MEMORY[0x277CE22E0]);
    [v10 setName:@"VSApplication"];
    [v10 setDestinationState:@"Starting" forEvent:@"Start" inState:@"Initial"];
    [v10 setDestinationState:@"Notifying of failure to start" forEvent:@"Failed to start" inState:@"Starting"];
    [v10 setDestinationState:@"Ready" forEvent:@"Finished starting" inState:@"Starting"];
    [v10 setDestinationState:@"Waiting to stop" forEvent:@"Stop" inState:@"Starting"];
    [v10 ignoreEvent:@"Stop" inState:@"Notifying of failure to start"];
    [v10 setDestinationState:@"Invalid" forEvent:@"Finished notifying of failure to start" inState:@"Notifying of failure to start"];
    [v10 ignoreEvent:@"Stop" inState:@"Waiting to stop"];
    [v10 setDestinationState:@"Stopping" forEvent:@"Finished starting" inState:@"Waiting to stop"];
    [v10 setDestinationState:@"Invalid" forEvent:@"Failed to start" inState:@"Waiting to stop"];
    [v10 setDestinationState:@"Stopping" forEvent:@"Stop" inState:@"Ready"];
    [v10 ignoreEvent:@"Stop" inState:@"Stopping"];
    [v10 setDestinationState:@"Invalid" forEvent:@"Finished stopping" inState:@"Stopping"];
    [v10 ignoreEvent:@"Stop" inState:@"Invalid"];
    [v10 setDelegate:v5];
    [v10 activateWithState:@"Initial"];
    stateMachine = v5->_stateMachine;
    v5->_stateMachine = v10;
  }

  return v5;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating application: %p", buf, 0xCu);
  }

  VSRequireMainThread();
  v5.receiver = self;
  v5.super_class = VSApplication;
  [(VSApplication *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

void __42__VSApplication_transitionToStartingState__block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x277D1B028]) initWithApplication:*(a1 + 32) mode:0 delegate:*(a1 + 32)];
  [v3 setCanRequireSystemTrustForXHRs:{objc_msgSend(*(a1 + 32), "canRequireSystemTrust")}];
  [*(a1 + 32) setAppContext:v3];
  v2 = [*(a1 + 32) appContext];
  [v2 start];
}

void __59__VSApplication_transitionToNotifyingOfFailureToStartState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 failureToStart];
  [v2 application:v3 startDidFailWithError:v4];

  [*(a1 + 32) setFailureToStart:0];
  v5 = [*(a1 + 32) stateMachine];
  [v5 enqueueEvent:@"Finished notifying of failure to start"];
}

void __39__VSApplication_transitionToReadyState__block_invoke(uint64_t a1)
{
  VSRequireMainThread();
  v2 = [*(a1 + 32) delegate];
  [v2 applicationDidStart:*(a1 + 32)];
}

- (void)transitionToStoppingState
{
  appContext = [(VSApplication *)self appContext];
  [appContext stop];
}

- (void)transitionToInvalidState
{
  [(VSApplication *)self setAppContext:0];
  cookieStorage = [(VSApplication *)self cookieStorage];
  [cookieStorage vs_saveCookies];

  CFRelease(self);
}

- (void)start
{
  stateMachine = [(VSApplication *)self stateMachine];
  [stateMachine enqueueEvent:@"Start"];
}

- (void)stop
{
  stateMachine = [(VSApplication *)self stateMachine];
  [stateMachine enqueueEvent:@"Stop"];
}

- (void)evaluate:(id)evaluate completionHandler:(id)handler
{
  handlerCopy = handler;
  evaluateCopy = evaluate;
  appContext = [(VSApplication *)self appContext];
  [appContext evaluate:evaluateCopy completionBlock:handlerCopy];
}

- (void)sendErrorWithMessage:(id)message
{
  messageCopy = message;
  appContext = [(VSApplication *)self appContext];
  [appContext setException:0 withErrorMessage:messageCopy];
}

- (void)appDocumentForDocument:(id)document completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  documentCopy = document;
  v7 = VSDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[VSApplication appDocumentForDocument:completionHandler:]";
    _os_log_impl(&dword_270DD4000, v7, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  currentAppContext = [MEMORY[0x277D1B028] currentAppContext];
  jsContext = [currentAppContext jsContext];
  v10 = [jsContext objectForKeyedSubscript:@"App"];

  v11 = v10;
  v12 = [objc_alloc(MEMORY[0x277D1B038]) initWithAppContext:currentAppContext document:documentCopy owner:v11];

  v13 = VSDefaultLogObject();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (handlerCopy)
  {
    if (v14)
    {
      *buf = 136315138;
      v21 = "[VSApplication appDocumentForDocument:completionHandler:]";
      _os_log_impl(&dword_270DD4000, v13, OS_LOG_TYPE_DEFAULT, "Will call completion handler passed to %s", buf, 0xCu);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__VSApplication_appDocumentForDocument_completionHandler___block_invoke;
    v17[3] = &unk_279E1A000;
    v19 = handlerCopy;
    v18 = v12;
    __58__VSApplication_appDocumentForDocument_completionHandler___block_invoke(v17);
    v15 = VSDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[VSApplication appDocumentForDocument:completionHandler:]";
      _os_log_impl(&dword_270DD4000, v15, OS_LOG_TYPE_DEFAULT, "Did call completion handler passed to %s", buf, 0xCu);
    }

    v13 = v19;
  }

  else if (v14)
  {
    *buf = 136315138;
    v21 = "[VSApplication appDocumentForDocument:completionHandler:]";
    _os_log_impl(&dword_270DD4000, v13, OS_LOG_TYPE_DEFAULT, "No completion handler passed to %s", buf, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)appContext:(id)context didStartWithOptions:(id)options
{
  v4 = [(VSApplication *)self stateMachine:context];
  [v4 enqueueEvent:@"Finished starting"];
}

- (void)appContext:(id)context didFailWithError:(id)error
{
  errorCopy = error;
  v6 = VSErrorLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [VSApplication appContext:errorCopy didFailWithError:v6];
  }

  [(VSApplication *)self setFailureToStart:errorCopy];
  stateMachine = [(VSApplication *)self stateMachine];
  [stateMachine enqueueEvent:@"Failed to start"];
}

- (void)appContext:(id)context didStopWithOptions:(id)options
{
  v11 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = optionsCopy;
    _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "App context did stop with options: %@.", &v9, 0xCu);
  }

  stateMachine = [(VSApplication *)self stateMachine];
  [stateMachine enqueueEvent:@"Finished stopping"];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)appContext:(id)context evaluateAppJavaScriptInContext:(id)inContext
{
  inContextCopy = inContext;
  delegate = [(VSApplication *)self delegate];
  [delegate application:self evaluateAppJavascriptInContext:inContextCopy];
}

- (id)xhrSessionConfigurationForContext:(id)context
{
  cookieStorage = [(VSApplication *)self cookieStorage];
  if (cookieStorage)
  {
    v5 = MEMORY[0x277CCAD38];
    auditToken = [(VSApplication *)self auditToken];
    v7 = [v5 vs_defaultSessionConfigurationForSourceAppWithAuditToken:auditToken];

    [v7 setHTTPCookieStorage:cookieStorage];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)sourceApplicationBundleIdentifierForContext:(id)context
{
  auditToken = [(VSApplication *)self auditToken];
  bundleIdentifier = [auditToken bundleIdentifier];

  return bundleIdentifier;
}

- (id)sourceApplicationAuditTokenDataForContext:(id)context
{
  auditToken = [(VSApplication *)self auditToken];
  tokenBytes = [auditToken tokenBytes];

  return tokenBytes;
}

- (id)appIdentifier
{
  vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  bundleIdentifier = [vs_frameworkBundle bundleIdentifier];

  return bundleIdentifier;
}

- (id)appLaunchParams
{
  delegate = [(VSApplication *)self delegate];
  v4 = [delegate launchParamsForApplication:self];

  return v4;
}

- (id)activeDocument
{
  delegate = [(VSApplication *)self delegate];
  v4 = [delegate activeAppDocumentForApplication:self];

  return v4;
}

- (id)viewElementRegistry
{
  if (viewElementRegistry___vs_lazy_init_predicate != -1)
  {
    [VSApplication viewElementRegistry];
  }

  v3 = viewElementRegistry___vs_lazy_init_variable;

  return v3;
}

uint64_t __36__VSApplication_viewElementRegistry__block_invoke()
{
  viewElementRegistry___vs_lazy_init_variable = __36__VSApplication_viewElementRegistry__block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

id __36__VSApplication_viewElementRegistry__block_invoke_2()
{
  [MEMORY[0x277D1B080] registerClass:objc_opt_class() forFeatureName:@"WebMessagePort"];
  v0 = objc_alloc_init(MEMORY[0x277D1B138]);
  [v0 registerClass:objc_opt_class() forElementName:*MEMORY[0x277CE2458] elementType:162];
  [v0 registerClass:objc_opt_class() forElementName:*MEMORY[0x277CE2450] elementType:161];
  [v0 registerClass:objc_opt_class() forElementName:*MEMORY[0x277CE2460] elementType:165];
  [v0 registerClass:objc_opt_class() forElementName:*MEMORY[0x277CE2468] elementType:163];
  [v0 registerClass:objc_opt_class() forElementName:@"accountName" elementType:138];
  [v0 registerClass:objc_opt_class() forElementName:@"buttonLockup" elementType:156];
  [v0 registerClass:objc_opt_class() forElementName:@"description" elementType:138];
  [v0 registerClass:objc_opt_class() forElementName:@"displayLink" elementType:157];
  [v0 registerClass:objc_opt_class() forElementName:0x2880B8CD0 elementType:158];
  [v0 registerClass:objc_opt_class() forElementName:@"item" elementType:159];
  [v0 registerClass:objc_opt_class() forElementName:@"img" elementType:49];
  [v0 registerClass:objc_opt_class() forElementName:@"text" elementType:138];
  [v0 registerClass:objc_opt_class() forElementName:@"textField" elementType:140];
  [v0 registerClass:objc_opt_class() forElementName:@"textFieldGroup" elementType:160];
  [v0 registerClass:objc_opt_class() forElementName:@"title" elementType:138];
  [v0 registerClass:objc_opt_class() forElementName:@"twoFactorTextField" elementType:140];
  +[VSIKItemGroup registerFeature];

  return v0;
}

- (NSHTTPCookieStorage)cookieStorage
{
  vs_sharedCookieStorage = self->_cookieStorage;
  if (!vs_sharedCookieStorage)
  {
    vs_sharedCookieStorage = [MEMORY[0x277CCAA38] vs_sharedCookieStorage];
    if (!vs_sharedCookieStorage)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The storage parameter must not be nil."];
      vs_sharedCookieStorage = 0;
    }
  }

  return vs_sharedCookieStorage;
}

- (VSApplicationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)appContext:(uint64_t)a1 didFailWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "App context did fail with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end