@interface WFPINEntryViewController
- (BOOL)hasUIWebViewSubView:(id)view;
- (WFPINEntryViewController)initWithURL:(id)l pageTitle:(id)title completion:(id)completion;
- (void)dealloc;
- (void)insertRemoteViewController:(id)controller;
- (void)userDidCancel;
- (void)userEnteredCorrectPIN;
@end

@implementation WFPINEntryViewController

- (WFPINEntryViewController)initWithURL:(id)l pageTitle:(id)title completion:(id)completion
{
  v15.receiver = self;
  v15.super_class = WFPINEntryViewController;
  v9 = [(WFPINEntryViewController *)&v15 initWithNibName:0 bundle:0];
  if (v9)
  {
    if (!l)
    {
      [WFPINEntryViewController initWithURL:a2 pageTitle:v9 completion:?];
    }

    v9->_URL = l;
    if (!title)
    {
      [WFPINEntryViewController initWithURL:a2 pageTitle:v9 completion:?];
    }

    v9->_pageTitle = [title copy];
    if (!completion)
    {
      [WFPINEntryViewController initWithURL:a2 pageTitle:v9 completion:?];
    }

    v9->_completion = [completion copy];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__WFPINEntryViewController_initWithURL_pageTitle_completion___block_invoke;
    v14[3] = &unk_279E7DE00;
    v14[4] = completion;
    [(WFPINEntryViewController *)v9 _beginDelayingPresentation:v14 cancellationHandler:3.0];
    remoteViewControllerClass = [objc_opt_class() remoteViewControllerClass];
    serviceViewControllerClassName = [objc_opt_class() serviceViewControllerClassName];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__WFPINEntryViewController_initWithURL_pageTitle_completion___block_invoke_2;
    v13[3] = &unk_279E7DE28;
    v13[4] = v9;
    v13[5] = completion;
    [remoteViewControllerClass requestViewController:serviceViewControllerClassName fromServiceWithBundleIdentifier:@"com.apple.WebContentFilter.remoteUI.WebContentAnalysisUI" connectionHandler:v13];
  }

  return v9;
}

uint64_t __61__WFPINEntryViewController_initWithURL_pageTitle_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, [MEMORY[0x277CCA9B8] errorWithDomain:@"WFPINEntryErrorDomain" code:0 userInfo:0]);
  }

  return 0;
}

uint64_t __61__WFPINEntryViewController_initWithURL_pageTitle_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (a3)
  {
    [v4 dismissViewControllerAnimated:0 completion:0];
    v6 = *(a1 + 40);
    v11 = *MEMORY[0x277CCA7E8];
    v12[0] = a3;
    result = (*(v6 + 16))(v6, 0, [MEMORY[0x277CCA9B8] errorWithDomain:@"WFPINEntryErrorDomain" code:1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)}]);
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [v4 insertRemoteViewController:a2];
    v9 = *(a1 + 32);
    v10 = *MEMORY[0x277D85DE8];

    return [v9 _endDelayingPresentation];
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WFPINEntryViewController;
  [(WFPINEntryViewController *)&v3 dealloc];
}

- (void)insertRemoteViewController:(id)controller
{
  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 16;
  }

  else
  {
    v5 = 17;
  }

  [(WFPINEntryViewController *)self setModalPresentationStyle:v5];
  [(WFPINEntryViewController *)self view];
  [(WFPINEntryViewController *)self addChildViewController:controller];
  view = [controller view];
  [-[WFPINEntryViewController view](self "view")];
  [view setFrame:?];
  [-[WFPINEntryViewController view](self "view")];
  objc_storeWeak(&self->_remoteViewController, controller);
  [objc_loadWeak(&self->_remoteViewController) setDelegate:self];
  [objc_loadWeak(&self->_remoteViewController) setURL:self->_URL];
  Weak = objc_loadWeak(&self->_remoteViewController);
  pageTitle = self->_pageTitle;

  [Weak setPageTitle:pageTitle];
}

- (BOOL)hasUIWebViewSubView:(id)view
{
  v17 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    subviews = [view subviews];
    v5 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (!v5)
    {
      goto LABEL_3;
    }

    v8 = v5;
    v9 = *v13;
LABEL_6:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(subviews);
      }

      if ([(WFPINEntryViewController *)self hasUIWebViewSubView:*(*(&v12 + 1) + 8 * v10)])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
        LOBYTE(v5) = 0;
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_3;
      }
    }
  }

  LOBYTE(v5) = 1;
LABEL_3:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)userEnteredCorrectPIN
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __49__WFPINEntryViewController_userEnteredCorrectPIN__block_invoke;
  v2[3] = &unk_279E7DDC0;
  v2[4] = self;
  [(WFPINEntryViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

uint64_t __49__WFPINEntryViewController_userEnteredCorrectPIN__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[124])
  {
    v3 = v1[131];
    if (v3)
    {
      (*(v3 + 16))();
      v1 = *(a1 + 32);
    }
  }

  v4 = *(v1[130] + 16);

  return v4();
}

- (void)userDidCancel
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __41__WFPINEntryViewController_userDidCancel__block_invoke;
  v2[3] = &unk_279E7DDC0;
  v2[4] = self;
  [(WFPINEntryViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

uint64_t __41__WFPINEntryViewController_userDidCancel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[124])
  {
    v3 = v1[131];
    if (v3)
    {
      (*(v3 + 16))();
      v1 = *(a1 + 32);
    }
  }

  v4 = v1[130];
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WFPINEntryErrorDomain" code:2 userInfo:0];
  v6 = *(v4 + 16);

  return v6(v4, 0, v5);
}

@end