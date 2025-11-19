@interface WFLinkSnippetActionDialogViewController
- (void)viewDidLoad;
@end

@implementation WFLinkSnippetActionDialogViewController

- (void)viewDidLoad
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = WFLinkSnippetActionDialogViewController;
  [(WFLinkDialogViewController *)&v13 viewDidLoad];
  v3 = [(WFCompactPlatterViewController *)self platterView];
  [v3 setAccessibilityIdentifier:@"junior_link_snippet_action_platter_view"];

  objc_initWeak(&location, self);
  v4 = [MEMORY[0x277D79F28] doneButton];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __54__WFLinkSnippetActionDialogViewController_viewDidLoad__block_invoke;
  v10 = &unk_279EE8908;
  objc_copyWeak(&v11, &location);
  v5 = [WFCompactDialogAction actionForButton:v4 handler:&v7];
  v14[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:{1, v7, v8, v9, v10}];
  [(WFCompactDialogViewController *)self configureActionGroupWithActions:v6];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __54__WFLinkSnippetActionDialogViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = objc_alloc(MEMORY[0x277D7C5E8]);
  v2 = [WeakRetained currentSnippetResult];
  v3 = [v1 initWithResult:v2];

  [WeakRetained finishWithResponse:v3];
}

@end