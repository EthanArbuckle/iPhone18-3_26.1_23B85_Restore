@interface WFRemoteWebSheetViewController
+ (id)requestViewControllerWithConnectionHandler:(id)handler;
- (WFRemoteWebSheetViewControllerDelegate)delegate;
- (void)viewDidLoad;
- (void)viewServiceDidTerminateWithError:(id)error;
- (void)webSheetViewControllerContentDidFinishLoading;
- (void)webSheetViewControllerContentDidStartLoading;
- (void)webSheetViewControllerContentReadyForPresentation;
@end

@implementation WFRemoteWebSheetViewController

+ (id)requestViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [objc_opt_class() requestViewController:@"WebSheetViewController" fromServiceWithBundleIdentifier:@"com.apple.NanoWebSheet" connectionHandler:handlerCopy];

  return v4;
}

- (void)viewDidLoad
{
  v9 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = WFRemoteWebSheetViewController;
  [(WFRemoteWebSheetViewController *)&v6 viewDidLoad];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    *buf = 136315138;
    v8 = "[WFRemoteWebSheetViewController viewDidLoad]";
    _os_log_impl(&dword_273FB9000, v3, v4, "%s", buf, 0xCu);
  }

  [(WFRemoteWebSheetViewController *)self _setupButtonListener];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)webSheetViewControllerContentDidStartLoading
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    v7 = 136315138;
    v8 = "[WFRemoteWebSheetViewController webSheetViewControllerContentDidStartLoading]";
    _os_log_impl(&dword_273FB9000, v3, v4, "%s", &v7, 0xCu);
  }

  delegate = [(WFRemoteWebSheetViewController *)self delegate];
  [delegate remoteWebSheetViewController:self handleEvent:0 context:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)webSheetViewControllerContentReadyForPresentation
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    v7 = 136315138;
    v8 = "[WFRemoteWebSheetViewController webSheetViewControllerContentReadyForPresentation]";
    _os_log_impl(&dword_273FB9000, v3, v4, "%s", &v7, 0xCu);
  }

  delegate = [(WFRemoteWebSheetViewController *)self delegate];
  [delegate remoteWebSheetViewController:self handleEvent:1 context:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)webSheetViewControllerContentDidFinishLoading
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    v7 = 136315138;
    v8 = "[WFRemoteWebSheetViewController webSheetViewControllerContentDidFinishLoading]";
    _os_log_impl(&dword_273FB9000, v3, v4, "%s", &v7, 0xCu);
  }

  delegate = [(WFRemoteWebSheetViewController *)self delegate];
  [delegate remoteWebSheetViewController:self handleEvent:2 context:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v12 = 136315394;
    v13 = "[WFRemoteWebSheetViewController viewServiceDidTerminateWithError:]";
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: error %@", &v12, 0x16u);
  }

  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277D77620]])
    {
      [errorCopy code];
    }
  }

  delegate = [(WFRemoteWebSheetViewController *)self delegate];

  if (delegate)
  {
    v9 = objc_alloc_init(WFRemoteWebSheetViewControllerErrorContext);
    [(WFRemoteWebSheetViewControllerErrorContext *)v9 setError:errorCopy];
    delegate2 = [(WFRemoteWebSheetViewController *)self delegate];
    [delegate2 remoteWebSheetViewController:self handleEvent:3 context:v9];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (WFRemoteWebSheetViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end