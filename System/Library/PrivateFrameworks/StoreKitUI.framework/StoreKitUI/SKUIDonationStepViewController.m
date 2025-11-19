@interface SKUIDonationStepViewController
- (SKUIDonationStepViewController)initWithCharity:(id)a3 configuration:(id)a4;
- (SKUIDonationViewController)donationViewController;
@end

@implementation SKUIDonationStepViewController

- (SKUIDonationStepViewController)initWithCharity:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDonationStepViewController initWithCharity:configuration:];
  }

  v12.receiver = self;
  v12.super_class = SKUIDonationStepViewController;
  v9 = [(SKUIDonationStepViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_charity, a3);
    objc_storeStrong(&v10->_configuration, a4);
  }

  return v10;
}

- (SKUIDonationViewController)donationViewController
{
  v2 = [(SKUIDonationStepViewController *)self navigationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)initWithCharity:configuration:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDonationStepViewController initWithCharity:configuration:]";
}

@end