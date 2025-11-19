@interface SKUIRedeemResultsViewController
+ (BOOL)canShowResultsForRedeem:(id)a3;
+ (id)redeemResultsControllerForRedeem:(id)a3;
- (SKUIRedeemResultsViewController)initWithCoder:(id)a3;
- (SKUIRedeemResultsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SKUIRedeemResultsViewController)initWithRedeem:(id)a3;
- (void)_doneAction:(id)a3;
- (void)viewDidLoad;
@end

@implementation SKUIRedeemResultsViewController

+ (BOOL)canShowResultsForRedeem:(id)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIRedeemResultsViewController *)v4 canShowResultsForRedeem:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = NSStringFromSelector(a2);
  [v12 raise:v13 format:{@"Your view controller class (%@) MUST override %@ to be considered for showing a redeem", v15, v16}];

  return 0;
}

+ (id)redeemResultsControllerForRedeem:(id)a3
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIRedeemResultsViewController *)v4 redeemResultsControllerForRedeem:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v23 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
LABEL_7:
    v16 = 0;
    while (1)
    {
      if (*v21 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v20 + 1) + 8 * v16);
      if ([v17 canShowResultsForRedeem:{v3, v20}])
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v14)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v17 = 0;
  }

  v18 = [[v17 alloc] initWithRedeem:v3];

  return v18;
}

- (SKUIRedeemResultsViewController)initWithRedeem:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIRedeemResultsViewController *)v6 initWithRedeem:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if ([(SKUIRedeemResultsViewController *)self isMemberOfClass:objc_opt_class()])
  {
    v14 = [SKUIRedeemResultsViewController redeemResultsControllerForRedeem:v5];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SKUIRedeemResultsViewController;
    v15 = [(SKUIRedeemResultsViewController *)&v19 initWithNibName:0 bundle:0];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_redeem, a3);
    }

    v14 = v16;
    self = v14;
  }

  v17 = v14;

  return v17;
}

- (SKUIRedeemResultsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIRedeemResultsViewController *)v5 initWithNibName:v6 bundle:v7, v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

- (SKUIRedeemResultsViewController)initWithCoder:(id)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIRedeemResultsViewController *)v4 initWithCoder:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  return 0;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SKUIRedeemResultsViewController;
  [(SKUIRedeemResultsViewController *)&v7 viewDidLoad];
  v3 = [(SKUIRedeemStepViewController *)self clientContext];
  v4 = [(SKUIRedeemResultsViewController *)self navigationItem];
  [v4 setHidesBackButton:1];
  v5 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v5 setAction:sel__doneAction_];
  [v5 setTarget:self];
  if (v3)
  {
    [v3 localizedStringForKey:@"REDEEM_SUCCESS_DONE_BUTTON" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"REDEEM_SUCCESS_DONE_BUTTON" inBundles:0 inTable:@"Redeem"];
  }
  v6 = ;
  [v5 setTitle:v6];

  [v5 setStyle:2];
  [v4 setRightBarButtonItem:v5];
}

- (void)_doneAction:(id)a3
{
  if ([(SKUIRedeemStepViewController *)self shouldShowPassbookLearnMore]&& ([(SKUIRedeemResultsViewController *)self redeem], v4 = objc_claimAutoreleasedReturnValue(), [(SKUIRedeemStepViewController *)self configuration], v5 = objc_claimAutoreleasedReturnValue(), v6 = [SKUIITunesPassLearnMoreAlertDelegate shouldShowAlertForRedeem:v4 configuration:v5], v5, v4, v6))
  {
    v7 = [SKUIITunesPassLearnMoreAlertDelegate alloc];
    v8 = [(SKUIRedeemStepViewController *)self configuration];
    v9 = [(SKUIRedeemStepViewController *)self clientContext];
    v10 = [(SKUIITunesPassLearnMoreAlertDelegate *)v7 initWithRedeemConfiguration:v8 clientContext:v9];

    v11 = [(SKUIRedeemResultsViewController *)self presentingViewController];
    [(SKUIITunesPassLearnMoreAlertDelegate *)v10 setPresentingViewController:v11];
  }

  else
  {
    v10 = 0;
  }

  v12 = [(SKUIRedeemResultsViewController *)self redeem];
  v13 = [v12 redirectURL];

  v14 = [(SKUIRedeemResultsViewController *)self parentViewController];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = self;
  }

  v17 = v16;

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__SKUIRedeemResultsViewController__doneAction___block_invoke;
  v20[3] = &unk_2781F80C8;
  v21 = v13;
  v22 = v10;
  v18 = v10;
  v19 = v13;
  [(SKUIRedeemResultsViewController *)v17 dismissViewControllerAnimated:1 completion:v20];
}

void __47__SKUIRedeemResultsViewController__doneAction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    SKUIMetricsOpenURL(v2);
  }

  else
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      [v3 show];
    }
  }
}

@end