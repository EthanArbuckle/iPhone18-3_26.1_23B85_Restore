@interface SKUIRedeemWebResultsViewController
+ (BOOL)canShowResultsForRedeem:(id)a3;
- (void)dealloc;
- (void)storePage:(id)a3 finishedWithSuccess:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation SKUIRedeemWebResultsViewController

+ (BOOL)canShowResultsForRedeem:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIRedeemWebResultsViewController canShowResultsForRedeem:];
  }

  v4 = [v3 customizedThankyouURL];

  return v4 != 0;
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
  v3 = [(SKUIRedeemWebResultsViewController *)self childViewControllers];
  v4 = [v3 copy];

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
        v11 = [v10 view];
        [v11 removeFromSuperview];

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

- (void)storePage:(id)a3 finishedWithSuccess:(BOOL)a4
{
  if (!a4)
  {
    v6 = [SKUIRedeemNativeResultsViewController alloc];
    v7 = [(SKUIRedeemResultsViewController *)self redeem];
    v12 = [(SKUIRedeemNativeResultsViewController *)v6 initWithRedeem:v7];

    v8 = [(SKUIRedeemStepViewController *)self clientContext];
    [(SKUIRedeemStepViewController *)v12 setClientContext:v8];

    [(SKUIRedeemResultsViewController *)v12 setRedeemCategory:[(SKUIRedeemResultsViewController *)self redeemCategory]];
    v9 = [(SKUIRedeemStepViewController *)self operationQueue];
    [(SKUIRedeemNativeResultsViewController *)v12 setOperationQueue:v9];

    v10 = [(SKUIRedeemStepViewController *)self configuration];
    [(SKUIRedeemStepViewController *)v12 setConfiguration:v10];

    v11 = [(SKUIRedeemWebResultsViewController *)self navigationController];
    [v11 pushViewController:v12 animated:1];
  }
}

+ (void)canShowResultsForRedeem:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIRedeemWebResultsViewController canShowResultsForRedeem:]";
}

@end