@interface WFRemoteWebSheetViewController
+ (id)requestViewControllerWithConnectionHandler:(id)a3;
- (WFRemoteWebSheetViewControllerDelegate)delegate;
- (void)viewDidLoad;
- (void)viewServiceDidTerminateWithError:(id)a3;
- (void)webSheetViewControllerContentDidFinishLoading;
- (void)webSheetViewControllerContentDidStartLoading;
- (void)webSheetViewControllerContentReadyForPresentation;
@end

@implementation WFRemoteWebSheetViewController

+ (id)requestViewControllerWithConnectionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() requestViewController:@"WebSheetViewController" fromServiceWithBundleIdentifier:@"com.apple.NanoWebSheet" connectionHandler:v3];

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

  v5 = [(WFRemoteWebSheetViewController *)self delegate];
  [v5 remoteWebSheetViewController:self handleEvent:0 context:0];

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

  v5 = [(WFRemoteWebSheetViewController *)self delegate];
  [v5 remoteWebSheetViewController:self handleEvent:1 context:0];

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

  v5 = [(WFRemoteWebSheetViewController *)self delegate];
  [v5 remoteWebSheetViewController:self handleEvent:2 context:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v12 = 136315394;
    v13 = "[WFRemoteWebSheetViewController viewServiceDidTerminateWithError:]";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: error %@", &v12, 0x16u);
  }

  if (v4)
  {
    v7 = [v4 domain];
    if ([v7 isEqualToString:*MEMORY[0x277D77620]])
    {
      [v4 code];
    }
  }

  v8 = [(WFRemoteWebSheetViewController *)self delegate];

  if (v8)
  {
    v9 = objc_alloc_init(WFRemoteWebSheetViewControllerErrorContext);
    [(WFRemoteWebSheetViewControllerErrorContext *)v9 setError:v4];
    v10 = [(WFRemoteWebSheetViewController *)self delegate];
    [v10 remoteWebSheetViewController:self handleEvent:3 context:v9];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (WFRemoteWebSheetViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end