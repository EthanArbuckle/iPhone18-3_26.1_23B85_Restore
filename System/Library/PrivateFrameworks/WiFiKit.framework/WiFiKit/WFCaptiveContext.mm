@interface WFCaptiveContext
- (WFCaptiveContext)init;
- (void)_presentationTimerFired:(id)fired;
- (void)_readyForPresentation:(id)presentation;
- (void)cancel;
- (void)init;
- (void)webSheetViewController:(id)controller didTerminateWithError:(id)error;
- (void)webSheetViewControllerContentReadyForPresentation:(id)presentation;
@end

@implementation WFCaptiveContext

- (WFCaptiveContext)init
{
  v8.receiver = self;
  v8.super_class = WFCaptiveContext;
  v2 = [(WFCaptiveContext *)&v8 init];
  v3 = [objc_alloc(MEMORY[0x277D7BA10]) initWithDelegate:v2];
  webSheetViewController = v2->_webSheetViewController;
  v2->_webSheetViewController = v3;

  if (v2->_webSheetViewController)
  {
    v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:v2 target:sel__presentationTimerFired_ selector:0 userInfo:0 repeats:10.0];
    timer = v2->_timer;
    v2->_timer = v5;
  }

  else
  {
    [(WFCaptiveContext *)v2 init];
    return 0;
  }

  return v2;
}

- (void)cancel
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(2uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
  {
    v7 = 136315138;
    v8 = "[WFCaptiveContext cancel]";
    _os_log_impl(&dword_273ECD000, v3, v4, "%s", &v7, 0xCu);
  }

  completionHandler = [(WFCaptiveContext *)self completionHandler];
  completionHandler[2]();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_presentationTimerFired:(id)fired
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(WFCaptiveContext *)self readyForPresentation])
  {
    v4 = WFLogForCategory(2uLL);
    v5 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v4)
    {
      v6 = v4;
      if (os_log_type_enabled(v6, v5))
      {
        webSheetViewController = [(WFCaptiveContext *)self webSheetViewController];
        v10 = 136315394;
        v11 = "[WFCaptiveContext _presentationTimerFired:]";
        v12 = 2112;
        v13 = webSheetViewController;
        _os_log_impl(&dword_273ECD000, v6, v5, "%s: presenting view controller %@", &v10, 0x16u);
      }
    }

    webSheetViewController2 = [(WFCaptiveContext *)self webSheetViewController];
    [(WFCaptiveContext *)self _readyForPresentation:webSheetViewController2];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_readyForPresentation:(id)presentation
{
  presentationCopy = presentation;
  readyForPresentationHandler = [(WFCaptiveContext *)self readyForPresentationHandler];
  (readyForPresentationHandler)[2](readyForPresentationHandler, presentationCopy);

  timer = [(WFCaptiveContext *)self timer];
  [timer invalidate];

  [(WFCaptiveContext *)self setTimer:0];
}

- (void)webSheetViewControllerContentReadyForPresentation:(id)presentation
{
  v12 = *MEMORY[0x277D85DE8];
  presentationCopy = presentation;
  v5 = WFLogForCategory(2uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    v8 = 136315394;
    v9 = "[WFCaptiveContext webSheetViewControllerContentReadyForPresentation:]";
    v10 = 2112;
    v11 = presentationCopy;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: viewController %@", &v8, 0x16u);
  }

  [(WFCaptiveContext *)self _readyForPresentation:presentationCopy];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)webSheetViewController:(id)controller didTerminateWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = WFLogForCategory(2uLL);
  v7 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
  {
    v9 = 136315394;
    v10 = "[WFCaptiveContext webSheetViewController:didTerminateWithError:]";
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&dword_273ECD000, v6, v7, "%s: error %@", &v9, 0x16u);
  }

  [(WFCaptiveContext *)self cancel];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(2uLL);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    v5 = 136315138;
    v6 = "[WFCaptiveContext init]";
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: web sheet view controller is nil", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end