@interface DADiagnosticsRemoteViewController
+ (void)requestViewControllerWithHostBundleID:(id)d handler:(id)handler;
- (BOOL)prefersStatusBarHidden;
- (DADiagnosticsRemoteViewControllerDelegate)delegate;
- (id)_stringForReason:(unint64_t)reason;
- (void)requestViewControllerWithHostBundleID:(id)d handler:(id)handler;
- (void)requiredSerialNumbers:(id)numbers;
- (void)selectableSerialNumbers:(id)numbers;
- (void)sessionToken:(id)token;
- (void)setHostApplicationBundleIdentifier:(id)identifier;
- (void)setStartingFlow:(id)flow;
- (void)viewDidLoad;
- (void)viewServiceDidEnableVolumeHUD:(BOOL)d;
- (void)viewServiceDidFinishWithReason:(unint64_t)reason;
- (void)viewServiceDidSetScreenToBrightness:(float)brightness animate:(BOOL)animate;
- (void)viewServiceDidSuspend;
@end

@implementation DADiagnosticsRemoteViewController

+ (void)requestViewControllerWithHostBundleID:(id)d handler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v8 = objc_alloc_init(self);
  [v8 requestViewControllerWithHostBundleID:dCopy handler:handlerCopy];
}

- (void)requestViewControllerWithHostBundleID:(id)d handler:(id)handler
{
  v35[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  hostingController = [(DADiagnosticsRemoteViewController *)self hostingController];

  if (!hostingController)
  {
    [(DADiagnosticsRemoteViewController *)self _beginDelayingPresentation:&__block_literal_global_0 cancellationHandler:3.0];
    v32 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:@"com.apple.Diagnostics"];
    specification = [MEMORY[0x277D761F8] specification];
    v9 = [objc_alloc(MEMORY[0x277D761E0]) initWithProcessIdentity:v32 sceneSpecification:specification];
    [(DADiagnosticsRemoteViewController *)self setHostingController:v9];

    hostingController2 = [(DADiagnosticsRemoteViewController *)self hostingController];
    [hostingController2 setDelegate:self];

    hostingController3 = [(DADiagnosticsRemoteViewController *)self hostingController];
    sceneViewController = [hostingController3 sceneViewController];

    v30 = sceneViewController;
    [(DADiagnosticsRemoteViewController *)self addChildViewController:sceneViewController];
    view = [sceneViewController view];
    view2 = [(DADiagnosticsRemoteViewController *)self view];
    [view2 addSubview:view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = MEMORY[0x277CCAAD0];
    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [view2 leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v35[0] = v27;
    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [view2 trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[1] = v23;
    topAnchor = [view topAnchor];
    [view2 topAnchor];
    v16 = v33 = handlerCopy;
    v17 = [topAnchor constraintEqualToAnchor:v16];
    v35[2] = v17;
    [view bottomAnchor];
    v18 = v34 = dCopy;
    bottomAnchor = [view2 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:bottomAnchor];
    v35[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
    [v24 activateConstraints:v21];

    dCopy = v34;
    handlerCopy = v33;

    [v30 didMoveToParentViewController:self];
    [(DADiagnosticsRemoteViewController *)self setHostApplicationBundleIdentifier:v34];
    handlerCopy[2](handlerCopy, self, 0);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = DADiagnosticsRemoteViewController;
  [(DADiagnosticsRemoteViewController *)&v7 viewDidLoad];
  v3 = +[DADiagnosticFlow defaultFlow];
  startingFlow = self->_startingFlow;
  self->_startingFlow = v3;

  v5 = +[DADiagnosticResponder sharedInstance];
  [(DADiagnosticsRemoteViewController *)self setResponder:v5];

  BKSDisplayBrightnessGetCurrent();
  [(DADiagnosticsRemoteViewController *)self setOriginalScreenBrightness:?];
  [(DADiagnosticsRemoteViewController *)self setModalPresentationStyle:0];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setIdleTimerDisabled:1];
}

- (BOOL)prefersStatusBarHidden
{
  hostingController = [(DADiagnosticsRemoteViewController *)self hostingController];
  sceneViewController = [hostingController sceneViewController];
  prefersStatusBarHidden = [sceneViewController prefersStatusBarHidden];

  return prefersStatusBarHidden;
}

- (void)requiredSerialNumbers:(id)numbers
{
  v5 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:4 object:numbers];
  hostingController = [(DADiagnosticsRemoteViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)selectableSerialNumbers:(id)numbers
{
  v5 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:3 object:numbers];
  hostingController = [(DADiagnosticsRemoteViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)setStartingFlow:(id)flow
{
  v5 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:1 object:flow];
  hostingController = [(DADiagnosticsRemoteViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)sessionToken:(id)token
{
  v5 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:2 object:token];
  hostingController = [(DADiagnosticsRemoteViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)setHostApplicationBundleIdentifier:(id)identifier
{
  v5 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:0 object:identifier];
  hostingController = [(DADiagnosticsRemoteViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)viewServiceDidFinishWithReason:(unint64_t)reason
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(DADiagnosticsRemoteViewController *)self finished])
  {
    [(DADiagnosticsRemoteViewController *)self setFinished:1];
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(DADiagnosticsRemoteViewController *)self _stringForReason:reason];
      *buf = 136315394;
      v12 = "[DADiagnosticsRemoteViewController viewServiceDidFinishWithReason:]";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_275BB3000, v5, OS_LOG_TYPE_DEFAULT, "%s reason: %@", buf, 0x16u);
    }

    delegate = [(DADiagnosticsRemoteViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __68__DADiagnosticsRemoteViewController_viewServiceDidFinishWithReason___block_invoke;
      v10[3] = &unk_27A66EC98;
      v10[4] = self;
      v10[5] = reason;
      dispatch_async(MEMORY[0x277D85CD0], v10);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __68__DADiagnosticsRemoteViewController_viewServiceDidFinishWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteViewController:*(a1 + 32) didFinishWithReason:*(a1 + 40)];
}

- (void)viewServiceDidEnableVolumeHUD:(BOOL)d
{
  dCopy = d;
  v13 = *MEMORY[0x277D85DE8];
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[DADiagnosticsRemoteViewController viewServiceDidEnableVolumeHUD:]";
    v11 = 1024;
    v12 = dCopy;
    _os_log_impl(&dword_275BB3000, v5, OS_LOG_TYPE_DEFAULT, "%s enableVolumeHUD: %d", buf, 0x12u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__DADiagnosticsRemoteViewController_viewServiceDidEnableVolumeHUD___block_invoke;
  v7[3] = &unk_27A66ECC0;
  v7[4] = self;
  v8 = dCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__DADiagnosticsRemoteViewController_viewServiceDidEnableVolumeHUD___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) responder];
  [v2 enableVolumeHUD:*(a1 + 40)];
}

- (void)viewServiceDidSetScreenToBrightness:(float)brightness animate:(BOOL)animate
{
  animateCopy = animate;
  v18 = *MEMORY[0x277D85DE8];
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "[DADiagnosticsRemoteViewController viewServiceDidSetScreenToBrightness:animate:]";
    v14 = 2048;
    brightnessCopy = brightness;
    v16 = 1024;
    v17 = animateCopy;
    _os_log_impl(&dword_275BB3000, v7, OS_LOG_TYPE_DEFAULT, "%s brightness: %f animate: %d", buf, 0x1Cu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__DADiagnosticsRemoteViewController_viewServiceDidSetScreenToBrightness_animate___block_invoke;
  v9[3] = &unk_27A66EB70;
  v9[4] = self;
  brightnessCopy2 = brightness;
  v11 = animateCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __81__DADiagnosticsRemoteViewController_viewServiceDidSetScreenToBrightness_animate___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) responder];
  LODWORD(v2) = *(a1 + 40);
  [v3 setScreenToBrightness:*(a1 + 44) animate:v2];
}

- (void)viewServiceDidSuspend
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[DADiagnosticsRemoteViewController viewServiceDidSuspend]";
    _os_log_impl(&dword_275BB3000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_22);
  v3 = *MEMORY[0x277D85DE8];
}

- (id)_stringForReason:(unint64_t)reason
{
  if (reason > 0xF)
  {
    return @"UnknownReason";
  }

  else
  {
    return off_27A66ECE0[reason];
  }
}

- (DADiagnosticsRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end