@interface SKUIRedeemWebResultsViewController
+ (BOOL)canShowResultsForRedeem:(id)redeem;
- (void)dealloc;
- (void)storePage:(id)page finishedWithSuccess:(BOOL)success;
- (void)viewDidLoad;
@end

@implementation SKUIRedeemWebResultsViewController

+ (BOOL)canShowResultsForRedeem:(id)redeem
{
  redeemCopy = redeem;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIRedeemWebResultsViewController canShowResultsForRedeem:];
  }

  customizedThankyouURL = [redeemCopy customizedThankyouURL];

  return customizedThankyouURL != 0;
}

- (void)viewDidLoad
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemWebResultsViewController viewDidLoad]";
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  childViewControllers = [(SKUIRedeemWebResultsViewController *)self childViewControllers];
  v4 = [childViewControllers copy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        [v10 willMoveToParentViewController:0];
        view = [v10 view];
        [view removeFromSuperview];

        [v10 removeFromParentViewController];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12.receiver = self;
  v12.super_class = SKUIRedeemWebResultsViewController;
  [(SKUIRedeemWebResultsViewController *)&v12 dealloc];
}

- (void)storePage:(id)page finishedWithSuccess:(BOOL)success
{
  if (!success)
  {
    v6 = [SKUIRedeemNativeResultsViewController alloc];
    redeem = [(SKUIRedeemResultsViewController *)self redeem];
    v12 = [(SKUIRedeemNativeResultsViewController *)v6 initWithRedeem:redeem];

    clientContext = [(SKUIRedeemStepViewController *)self clientContext];
    [(SKUIRedeemStepViewController *)v12 setClientContext:clientContext];

    [(SKUIRedeemResultsViewController *)v12 setRedeemCategory:[(SKUIRedeemResultsViewController *)self redeemCategory]];
    operationQueue = [(SKUIRedeemStepViewController *)self operationQueue];
    [(SKUIRedeemNativeResultsViewController *)v12 setOperationQueue:operationQueue];

    configuration = [(SKUIRedeemStepViewController *)self configuration];
    [(SKUIRedeemStepViewController *)v12 setConfiguration:configuration];

    navigationController = [(SKUIRedeemWebResultsViewController *)self navigationController];
    [navigationController pushViewController:v12 animated:1];
  }
}

+ (void)canShowResultsForRedeem:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIRedeemWebResultsViewController canShowResultsForRedeem:]";
}

@end