@interface SKUIITunesPassLearnMoreAlertDelegate
+ (BOOL)shouldShowAlertForRedeem:(id)a3 configuration:(id)a4;
+ (void)beginThrottleInterval;
- (SKUIITunesPassLearnMoreAlertDelegate)initWithRedeemConfiguration:(id)a3 clientContext:(id)a4;
- (UIViewController)presentingViewController;
- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4;
- (void)show;
@end

@implementation SKUIITunesPassLearnMoreAlertDelegate

- (SKUIITunesPassLearnMoreAlertDelegate)initWithRedeemConfiguration:(id)a3 clientContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIITunesPassLearnMoreAlertDelegate *)v9 initWithRedeemConfiguration:v10 clientContext:v11, v12, v13, v14, v15, v16];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUIITunesPassLearnMoreAlertDelegate;
  v17 = [(SKUIITunesPassLearnMoreAlertDelegate *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientContext, a4);
    objc_storeStrong(&v18->_redeemConfiguration, a3);
  }

  return v18;
}

+ (void)beginThrottleInterval
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIITunesPassLearnMoreAlertDelegate *)v2 beginThrottleInterval:v3];
      }
    }
  }

  v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v10 setDouble:@"SKUILastITunesPassLearnMoreAlertTime" forKey:CFAbsoluteTimeGetCurrent()];
  [v10 synchronize];
}

+ (BOOL)shouldShowAlertForRedeem:(id)a3 configuration:(id)a4
{
  v5 = a4;
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIITunesPassLearnMoreAlertDelegate *)v7 shouldShowAlertForRedeem:v8 configuration:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [v5 ITunesPassConfiguration];
  v16 = [v15 learnMoreAlertView];

  [v6 ITunesPassLearnMoreAlertInterval];
  v18 = v17;

  if (v18 >= 0.0)
  {
    v20 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v21 = [v20 objectForKey:@"SKUILastITunesPassLearnMoreAlertTime"];

    if (objc_opt_respondsToSelector())
    {
      v22 = MEMORY[0x277CBEAA8];
      [v21 doubleValue];
      v23 = [v22 dateWithTimeIntervalSinceReferenceDate:?];
      [v23 timeIntervalSinceNow];
      if (v24 > -v18)
      {

        v16 = 0;
      }
    }

    v19 = v16 != 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)show
{
  v3 = [(SKUIRedeemConfiguration *)self->_redeemConfiguration ITunesPassConfiguration];
  object = [v3 learnMoreAlertView];

  [object setDelegate:self];
  objc_setAssociatedObject(object, "com.apple.StoreKitUI.SKUIITunesPassLearnMoreAlertDelegate", self, 1);
  [object show];
  [objc_opt_class() beginThrottleInterval];
}

- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4
{
  object = a3;
  if ([object cancelButtonIndex] != a4)
  {
    v6 = [(SKUIITunesPassLearnMoreAlertDelegate *)self presentingViewController];
    if (v6)
    {
      v7 = objc_alloc_init(SKUIRedeemITunesPassLearnMoreViewController);
      [(SKUIRedeemStepViewController *)v7 setClientContext:self->_clientContext];
      [(SKUIRedeemStepViewController *)v7 setConfiguration:self->_redeemConfiguration];
      v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
      [v6 presentViewController:v8 animated:1 completion:0];
    }
  }

  [object setDelegate:0];
  objc_setAssociatedObject(object, "com.apple.StoreKitUI.SKUIITunesPassLearnMoreAlertDelegate", 0, 1);
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end