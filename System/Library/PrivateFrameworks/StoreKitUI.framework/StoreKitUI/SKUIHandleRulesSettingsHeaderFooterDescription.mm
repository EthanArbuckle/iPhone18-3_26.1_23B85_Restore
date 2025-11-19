@interface SKUIHandleRulesSettingsHeaderFooterDescription
- (SKUIHandleRulesSettingsHeaderFooterDescription)initWithClientContext:(id)a3;
- (id)text;
@end

@implementation SKUIHandleRulesSettingsHeaderFooterDescription

- (SKUIHandleRulesSettingsHeaderFooterDescription)initWithClientContext:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIHandleRulesSettingsHeaderFooterDescription initWithClientContext:];
  }

  v6 = [(SKUIHandleRulesSettingsHeaderFooterDescription *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, a3);
  }

  return v7;
}

- (id)text
{
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SKUIClientContext *)clientContext localizedStringForKey:@"SETTINGS_PROFILE_EDIT_HANDLE_RULES" inTable:@"Settings"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"SETTINGS_PROFILE_EDIT_HANDLE_RULES" inBundles:0 inTable:@"Settings"];
  }
  v3 = ;

  return v3;
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIHandleRulesSettingsHeaderFooterDescription initWithClientContext:]";
}

@end