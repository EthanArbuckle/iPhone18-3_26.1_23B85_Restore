@interface WFLinkDialogViewController
- (double)contentHeightForWidth:(double)a3 withMaximumVisibleHeight:(double)a4;
- (double)platterHeightForWidth:(double)a3 withMaximumHeight:(double)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidLoad;
@end

@implementation WFLinkDialogViewController

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v5 = [(WFLinkDialogViewController *)self snippetViewController];

  if (v5 == v4)
  {

    [(WFCompactPlatterViewController *)self invalidateContentSize];
  }
}

- (double)contentHeightForWidth:(double)a3 withMaximumVisibleHeight:(double)a4
{
  v4 = [(WFLinkDialogViewController *)self snippetViewController:a3];
  v5 = [v4 view];
  [v5 intrinsicContentSize];
  v7 = v6;

  return v7;
}

- (double)platterHeightForWidth:(double)a3 withMaximumHeight:(double)a4
{
  v7 = [(WFCompactPlatterViewController *)self platterView];
  [v7 sizeThatFits:{a3, a4}];
  v9 = v8;

  v10 = 0.0;
  v11 = fmax(a4 - v9, 0.0);
  v12 = [(WFCompactPlatterViewController *)self platterView];
  if ([v12 insetsContent])
  {
    v10 = 30.0;
  }

  [(WFLinkDialogViewController *)self contentHeightForWidth:a3 - v10 withMaximumVisibleHeight:v11];
  return v9 + fmin(v13, 340.0);
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = WFLinkDialogViewController;
  [(WFLinkDialogViewController *)&v11 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  v4 = [MEMORY[0x277D75348] systemPurpleColor];
  [v3 setBackgroundColor:v4];

  v5 = [(WFCompactDialogViewController *)self request];
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
  v6 = [v5 viewControllerWithSnippetEnvironmentProvider:v10 snippetResultValueUpdated:v9 tapHandler:v8];

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