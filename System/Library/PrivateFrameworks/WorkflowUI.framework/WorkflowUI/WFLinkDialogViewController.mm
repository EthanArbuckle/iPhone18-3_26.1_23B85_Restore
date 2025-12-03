@interface WFLinkDialogViewController
- (double)contentHeightForWidth:(double)width withMaximumVisibleHeight:(double)height;
- (double)platterHeightForWidth:(double)width withMaximumHeight:(double)height;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidLoad;
@end

@implementation WFLinkDialogViewController

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  snippetViewController = [(WFLinkDialogViewController *)self snippetViewController];

  if (snippetViewController == containerCopy)
  {

    [(WFCompactPlatterViewController *)self invalidateContentSize];
  }
}

- (double)contentHeightForWidth:(double)width withMaximumVisibleHeight:(double)height
{
  v4 = [(WFLinkDialogViewController *)self snippetViewController:width];
  view = [v4 view];
  [view intrinsicContentSize];
  v7 = v6;

  return v7;
}

- (double)platterHeightForWidth:(double)width withMaximumHeight:(double)height
{
  platterView = [(WFCompactPlatterViewController *)self platterView];
  [platterView sizeThatFits:{width, height}];
  v9 = v8;

  v10 = 0.0;
  v11 = fmax(height - v9, 0.0);
  platterView2 = [(WFCompactPlatterViewController *)self platterView];
  if ([platterView2 insetsContent])
  {
    v10 = 30.0;
  }

  [(WFLinkDialogViewController *)self contentHeightForWidth:width - v10 withMaximumVisibleHeight:v11];
  return v9 + fmin(v13, 340.0);
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = WFLinkDialogViewController;
  [(WFLinkDialogViewController *)&v11 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  systemPurpleColor = [MEMORY[0x277D75348] systemPurpleColor];
  [v3 setBackgroundColor:systemPurpleColor];

  request = [(WFCompactDialogViewController *)self request];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__WFLinkDialogViewController_viewDidLoad__block_invoke;
  v10[3] = &unk_279EE8330;
  v10[4] = self;
  v8[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__WFLinkDialogViewController_viewDidLoad__block_invoke_2;
  v9[3] = &unk_279EE8358;
  v9[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__WFLinkDialogViewController_viewDidLoad__block_invoke_3;
  v8[3] = &unk_279EE8380;
  v6 = [request viewControllerWithSnippetEnvironmentProvider:v10 snippetResultValueUpdated:v9 tapHandler:v8];

  [(WFCompactPlatterViewController *)self setContentViewController:v6];
  snippetViewController = self->_snippetViewController;
  self->_snippetViewController = v6;
}

id __41__WFLinkDialogViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 bounds];
  v9 = CGRectInset(v8, 15.0, 0.0);
  width = v9.size.width;

  v4 = [*(a1 + 32) traitCollection];
  v5 = [v4 snippetEnviornmentWithSize:{width, 1.79769313e308}];

  return v5;
}

void __41__WFLinkDialogViewController_viewDidLoad__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) snippetInteractedResponseWithURL:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) finishWithResponse:v3];
    v3 = v4;
  }
}

@end