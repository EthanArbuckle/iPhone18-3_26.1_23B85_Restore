@interface SKUIJSAppleAccount
- (SKUIJSAppleAccount)initWithACAccount:(id)a3;
@end

@implementation SKUIJSAppleAccount

- (SKUIJSAppleAccount)initWithACAccount:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIJSAppleAccount initWithACAccount:];
  }

  v9.receiver = self;
  v9.super_class = SKUIJSAppleAccount;
  v6 = [(SKUIJSAppleAccount *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (void)initWithACAccount:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIJSAppleAccount initWithACAccount:]";
}

@end