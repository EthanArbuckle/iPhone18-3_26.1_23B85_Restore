@interface PSUIPrivacyProxySpecifier
- (PSUIPrivacyProxySpecifier)initWithDataCache:(id)cache context:(id)context;
- (id)groupSpecifier;
- (id)isPrivacyProxyEnabled;
- (void)setPrivacyProxyEnabled:(id)enabled;
@end

@implementation PSUIPrivacyProxySpecifier

- (PSUIPrivacyProxySpecifier)initWithDataCache:(id)cache context:(id)context
{
  cacheCopy = cache;
  contextCopy = context;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"PRIVACYPROXY" value:&stru_287733598 table:@"Cellular"];
  v13.receiver = self;
  v13.super_class = PSUIPrivacyProxySpecifier;
  v11 = [(PSUIPrivacyProxySpecifier *)&v13 initWithName:v10 target:self set:sel_setPrivacyProxyEnabled_ get:sel_isPrivacyProxyEnabled detail:0 cell:6 edit:0];

  if (v11)
  {
    objc_storeStrong(&v11->_dataCache, cache);
    objc_storeStrong(&v11->_context, context);
    [(PSUIPrivacyProxySpecifier *)v11 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  }

  return v11;
}

- (void)setPrivacyProxyEnabled:(id)enabled
{
  dataCache = self->_dataCache;
  context = self->_context;
  bOOLValue = [enabled BOOLValue];

  [(PSUICoreTelephonyDataCache *)dataCache setPrivacyProxy:context enabled:bOOLValue];
}

- (id)isPrivacyProxyEnabled
{
  v2 = [(PSUICoreTelephonyDataCache *)self->_dataCache isPrivacyProxyEnabled:self->_context];
  v3 = MEMORY[0x277CCABB0];

  return [v3 numberWithBool:v2];
}

- (id)groupSpecifier
{
  v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"PrivacyProxy"];
  v4 = [(PSUICoreTelephonyDataCache *)self->_dataCache isUserSubscribedToPrivacyProxy:self->_context];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4)
  {
    v7 = @"PRIVACYPROXY_FOOTER_SUBSCRIBED";
  }

  else
  {
    v7 = @"PRIVACYPROXY_FOOTER_UNSUBSCRIBED";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_287733598 table:@"Cellular"];
  [v3 setProperty:v8 forKey:*MEMORY[0x277D3FF88]];

  return v3;
}

@end