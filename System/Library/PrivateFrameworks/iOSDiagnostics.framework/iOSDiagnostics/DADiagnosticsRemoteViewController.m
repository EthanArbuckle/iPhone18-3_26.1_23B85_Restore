@interface DADiagnosticsRemoteViewController
+ (void)requestViewControllerWithHostBundleID:(id)a3 handler:(id)a4;
- (BOOL)prefersStatusBarHidden;
- (DADiagnosticsRemoteViewControllerDelegate)delegate;
- (id)_stringForReason:(unint64_t)a3;
- (void)requestViewControllerWithHostBundleID:(id)a3 handler:(id)a4;
- (void)requiredSerialNumbers:(id)a3;
- (void)selectableSerialNumbers:(id)a3;
- (void)sessionToken:(id)a3;
- (void)setHostApplicationBundleIdentifier:(id)a3;
- (void)setStartingFlow:(id)a3;
- (void)viewDidLoad;
- (void)viewServiceDidEnableVolumeHUD:(BOOL)a3;
- (void)viewServiceDidFinishWithReason:(unint64_t)a3;
- (void)viewServiceDidSetScreenToBrightness:(float)a3 animate:(BOOL)a4;
- (void)viewServiceDidSuspend;
@end

@implementation DADiagnosticsRemoteViewController

+ (void)requestViewControllerWithHostBundleID:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 requestViewControllerWithHostBundleID:v7 handler:v6];
}

- (void)requestViewControllerWithHostBundleID:(id)a3 handler:(id)a4
{
  v35[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DADiagnosticsRemoteViewController *)self hostingController];

  if (!v8)
  {
    [(DADiagnosticsRemoteViewController *)self _beginDelayingPresentation:&__block_literal_global_0 cancellationHandler:3.0];
    v32 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:@"com.apple.Diagnostics"];
    v31 = [MEMORY[0x277D761F8] specification];
    v9 = [objc_alloc(MEMORY[0x277D761E0]) initWithProcessIdentity:v32 sceneSpecification:v31];
    [(DADiagnosticsRemoteViewController *)self setHostingController:v9];

    v10 = [(DADiagnosticsRemoteViewController *)self hostingController];
    [v10 setDelegate:self];

    v11 = [(DADiagnosticsRemoteViewController *)self hostingController];
    v12 = [v11 sceneViewController];

    v30 = v12;
    [(DADiagnosticsRemoteViewController *)self addChildViewController:v12];
    v13 = [v12 view];
    v14 = [(DADiagnosticsRemoteViewController *)self view];
    [v14 addSubview:v13];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = MEMORY[0x277CCAAD0];
    v29 = [v13 leadingAnchor];
    v28 = [v14 leadingAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v35[0] = v27;
    v26 = [v13 trailingAnchor];
    v25 = [v14 trailingAnchor];
    v23 = [v26 constraintEqualToAnchor:v25];
    v35[1] = v23;
    v15 = [v13 topAnchor];
    [v14 topAnchor];
    v16 = v33 = v7;
    v17 = [v15 constraintEqualToAnchor:v16];
    v35[2] = v17;
    [v13 bottomAnchor];
    v18 = v34 = v6;
    v19 = [v14 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v35[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
    [v24 activateConstraints:v21];

    v6 = v34;
    v7 = v33;

    [v30 didMoveToParentViewController:self];
    [(DADiagnosticsRemoteViewController *)self setHostApplicationBundleIdentifier:v34];
    v7[2](v7, self, 0);
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
  v6 = [MEMORY[0x277D75128] sharedApplication];
  [v6 setIdleTimerDisabled:1];
}

- (BOOL)prefersStatusBarHidden
{
  v2 = [(DADiagnosticsRemoteViewController *)self hostingController];
  v3 = [v2 sceneViewController];
  v4 = [v3 prefersStatusBarHidden];

  return v4;
}

- (void)requiredSerialNumbers:(id)a3
{
  v5 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:4 object:a3];
  v4 = [(DADiagnosticsRemoteViewController *)self hostingController];
  [v4 sendAction:v5];
}

- (void)selectableSerialNumbers:(id)a3
{
  v5 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:3 object:a3];
  v4 = [(DADiagnosticsRemoteViewController *)self hostingController];
  [v4 sendAction:v5];
}

- (void)setStartingFlow:(id)a3
{
  v5 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:1 object:a3];
  v4 = [(DADiagnosticsRemoteViewController *)self hostingController];
  [v4 sendAction:v5];
}

- (void)sessionToken:(id)a3
{
  v5 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:2 object:a3];
  v4 = [(DADiagnosticsRemoteViewController *)self hostingController];
  [v4 sendAction:v5];
}

- (void)setHostApplicationBundleIdentifier:(id)a3
{
  v5 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:0 object:a3];
  v4 = [(DADiagnosticsRemoteViewController *)self hostingController];
  [v4 sendAction:v5];
}

- (void)viewServiceDidFinishWithReason:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(DADiagnosticsRemoteViewController *)self finished])
  {
    [(DADiagnosticsRemoteViewController *)self setFinished:1];
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(DADiagnosticsRemoteViewController *)self _stringForReason:a3];
      *buf = 136315394;
      v12 = "[DADiagnosticsRemoteViewController viewServiceDidFinishWithReason:]";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_275BB3000, v5, OS_LOG_TYPE_DEFAULT, "%s reason: %@", buf, 0x16u);
    }

    v7 = [(DADiagnosticsRemoteViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __68__DADiagnosticsRemoteViewController_viewServiceDidFinishWithReason___block_invoke;
      v10[3] = &unk_27A66EC98;
      v10[4] = self;
      v10[5] = a3;
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

- (void)viewServiceDidEnableVolumeHUD:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[DADiagnosticsRemoteViewController viewServiceDidEnableVolumeHUD:]";
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&dword_275BB3000, v5, OS_LOG_TYPE_DEFAULT, "%s enableVolumeHUD: %d", buf, 0x12u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__DADiagnosticsRemoteViewController_viewServiceDidEnableVolumeHUD___block_invoke;
  v7[3] = &unk_27A66ECC0;
  v7[4] = self;
  v8 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__DADiagnosticsRemoteViewController_viewServiceDidEnableVolumeHUD___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) responder];
  [v2 enableVolumeHUD:*(a1 + 40)];
}

- (void)viewServiceDidSetScreenToBrightness:(float)a3 animate:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "[DADiagnosticsRemoteViewController viewServiceDidSetScreenToBrightness:animate:]";
    v14 = 2048;
    v15 = a3;
    v16 = 1024;
    v17 = v4;
    _os_log_impl(&dword_275BB3000, v7, OS_LOG_TYPE_DEFAULT, "%s brightness: %f animate: %d", buf, 0x1Cu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__DADiagnosticsRemoteViewController_viewServiceDidSetScreenToBrightness_animate___block_invoke;
  v9[3] = &unk_27A66EB70;
  v9[4] = self;
  v10 = a3;
  v11 = v4;
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

- (id)_stringForReason:(unint64_t)a3
{
  if (a3 > 0xF)
  {
    return @"UnknownReason";
  }

  else
  {
    return off_27A66ECE0[a3];
  }
}

- (DADiagnosticsRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end