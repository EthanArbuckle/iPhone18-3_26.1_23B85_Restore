@interface WFWebSheetViewController
- (WFWebSheetViewController)initWithDelegate:(id)a3;
- (WFWebSheetViewControllerDelegate)delegate;
- (void)_finishSetupWithError:(id)a3;
- (void)_requestRemoteViewController;
- (void)_showRemoteViewController;
- (void)dealloc;
- (void)remoteWebSheetViewController:(id)a3 handleEvent:(unint64_t)a4 context:(id)a5;
- (void)webSheetViewControllerServiceShouldTerminate;
@end

@implementation WFWebSheetViewController

- (WFWebSheetViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFWebSheetViewController;
  v5 = [(WFWebSheetViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    [(WFWebSheetViewController *)v6 _requestRemoteViewController];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(WFWebSheetViewController *)self cancelServiceInvocation];

  if (v3)
  {
    v4 = [(WFWebSheetViewController *)self cancelServiceInvocation];
    v5 = [v4 invoke];
  }

  v6.receiver = self;
  v6.super_class = WFWebSheetViewController;
  [(WFWebSheetViewController *)&v6 dealloc];
}

- (void)_requestRemoteViewController
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__WFWebSheetViewController__requestRemoteViewController__block_invoke;
  v4[3] = &unk_279EC61D0;
  v4[4] = self;
  v3 = [WFRemoteWebSheetViewController requestViewControllerWithConnectionHandler:v4];
  [(WFWebSheetViewController *)self setCancelServiceInvocation:v3];
}

void __56__WFWebSheetViewController__requestRemoteViewController__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
  {
    *buf = 136315650;
    v18 = "[WFWebSheetViewController _requestRemoteViewController]_block_invoke";
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_273FB9000, v7, v8, "%s: vc %@ error %@", buf, 0x20u);
  }

  if (v5)
  {
    [*(a1 + 32) setRemoteViewController:v5];
    v9 = *(a1 + 32);
    v10 = [v9 remoteViewController];
    [v10 setDelegate:v9];

    [*(a1 + 32) _showRemoteViewController];
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA7E8];
    v16 = v6;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v13 = [v11 errorWithDomain:@"com.apple.wifi" code:100 userInfo:v12];

    [*(a1 + 32) _finishSetupWithError:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_finishSetupWithError:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v13 = 136315394;
    v14 = "[WFWebSheetViewController _finishSetupWithError:]";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: error %@", &v13, 0x16u);
  }

  v7 = [(WFWebSheetViewController *)self presentingViewController];
  [v7 dismissViewControllerAnimated:1 completion:0];

  [(WFWebSheetViewController *)self _endDelayingPresentation];
  v8 = [(WFWebSheetViewController *)self remoteViewController];
  [(WFWebSheetViewController *)self removeChildViewController:v8];

  [(WFWebSheetViewController *)self setRemoteViewController:0];
  v9 = [(WFWebSheetViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(WFWebSheetViewController *)self delegate];
    [v11 webSheetViewController:self didTerminateWithError:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_showRemoteViewController
{
  v3 = [(WFWebSheetViewController *)self remoteViewController];
  [(WFWebSheetViewController *)self addChildViewController:v3];

  v4 = [(WFWebSheetViewController *)self remoteViewController];
  v8 = [v4 view];

  v5 = [(WFWebSheetViewController *)self view];
  [v5 addSubview:v8];

  v6 = [(WFWebSheetViewController *)self view];
  [v6 frame];
  [v8 setFrame:?];

  v7 = [(WFWebSheetViewController *)self remoteViewController];
  [v7 didMoveToParentViewController:self];
}

- (void)webSheetViewControllerServiceShouldTerminate
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    v10 = 136315138;
    v11 = "[WFWebSheetViewController webSheetViewControllerServiceShouldTerminate]";
    _os_log_impl(&dword_273FB9000, v3, v4, "%s", &v10, 0xCu);
  }

  v5 = [(WFWebSheetViewController *)self cancelServiceInvocation];
  v6 = [v5 invoke];

  v7 = [(WFWebSheetViewController *)self remoteViewController];
  v8 = [v7 disconnect];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)remoteWebSheetViewController:(id)a3 handleEvent:(unint64_t)a4 context:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v8 && os_log_type_enabled(v8, v9))
  {
    v25 = 136315650;
    v26 = "[WFWebSheetViewController remoteWebSheetViewController:handleEvent:context:]";
    v27 = 2048;
    v28 = a4;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_273FB9000, v8, v9, "%s: event %lu context %@", &v25, 0x20u);
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v15 = [(WFWebSheetViewController *)self delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v12 = [(WFWebSheetViewController *)self delegate];
        [v12 webSheetViewControllerContentDidStartLoading:self];
        goto LABEL_22;
      }
    }

    else if (a4 == 3)
    {
      if (v7)
      {
        v12 = [v7 error];
      }

      else
      {
        v12 = 0;
      }

      v17 = [(WFWebSheetViewController *)self delegate];
      v18 = objc_opt_respondsToSelector();

      if (v18)
      {
        v19 = [(WFWebSheetViewController *)self delegate];
        [v19 webSheetViewController:self didTerminateWithError:v12];
      }

      v20 = [(WFWebSheetViewController *)self cancelServiceInvocation];
      v21 = [v20 invoke];

      v22 = [(WFWebSheetViewController *)self remoteViewController];
      v23 = [v22 disconnect];

      goto LABEL_22;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      v10 = [(WFWebSheetViewController *)self delegate];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = [(WFWebSheetViewController *)self delegate];
        [v12 webSheetViewControllerContentReadyForPresentation:self];
LABEL_22:
      }
    }
  }

  else
  {
    v13 = [(WFWebSheetViewController *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v12 = [(WFWebSheetViewController *)self delegate];
      [v12 webSheetViewControllerContentDidFinishLoading:self];
      goto LABEL_22;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (WFWebSheetViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end