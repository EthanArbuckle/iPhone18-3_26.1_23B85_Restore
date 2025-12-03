@interface SKUIJSRestrictions
- (BOOL)isRestrictedApp:(id)app;
- (SKUIJSRestrictions)initWithAppContext:(id)context clientContext:(id)clientContext;
- (int64_t)_explicitRestrictionAlertTypeForTypeString:(id)string;
- (void)didDisplayExplicitRestrictionAlertOfType:(id)type;
- (void)isExplicitContentDisallowedInCurrentStoreFront:(id)front;
- (void)isExplicitContentRestrictedByDefaultInCurrentStoreFront:(id)front;
- (void)isRestrictionsPasscodeSet:(id)set;
- (void)presentExplicitRestrictionAlertIfNeededOfType:(id)type :(id)a4;
- (void)shouldDisplayExplicitRestrictionAlertOfType:(id)type :(id)a4;
@end

@implementation SKUIJSRestrictions

- (SKUIJSRestrictions)initWithAppContext:(id)context clientContext:(id)clientContext
{
  contextCopy = context;
  clientContextCopy = clientContext;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIJSRestrictions initWithAppContext:clientContext:];
  }

  v11.receiver = self;
  v11.super_class = SKUIJSRestrictions;
  v8 = [(IKJSObject *)&v11 initWithAppContext:contextCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientContext, clientContext);
  }

  return v9;
}

- (BOOL)isRestrictedApp:(id)app
{
  appCopy = app;
  if ([MEMORY[0x277D7FD68] isRestrictedAppBundleIdentifier:appCopy])
  {
    LOBYTE(v4) = 1;
  }

  else if ([appCopy isEqualToString:@"com.apple.facetime"])
  {
    v5 = MGGetBoolAnswer();
    v4 = v5 & MGGetBoolAnswer() ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)isExplicitContentRestrictedByDefaultInCurrentStoreFront:(id)front
{
  v4 = MEMORY[0x277CD4650];
  frontCopy = front;
  v6 = [v4 managedValueWithValue:frontCopy];
  context = [frontCopy context];

  virtualMachine = [context virtualMachine];

  [virtualMachine addManagedReference:v6 withOwner:self];
  appContext = [(IKJSObject *)self appContext];
  v10 = MEMORY[0x277D69C38];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__SKUIJSRestrictions_isExplicitContentRestrictedByDefaultInCurrentStoreFront___block_invoke;
  v14[3] = &unk_2781F9E50;
  v15 = appContext;
  v16 = v6;
  v17 = virtualMachine;
  selfCopy = self;
  v11 = virtualMachine;
  v12 = v6;
  v13 = appContext;
  [v10 isExplicitContentRestrictedByDefaultInCurrentStoreFront:v14];
}

void __78__SKUIJSRestrictions_isExplicitContentRestrictedByDefaultInCurrentStoreFront___block_invoke(uint64_t a1, char a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__SKUIJSRestrictions_isExplicitContentRestrictedByDefaultInCurrentStoreFront___block_invoke_2;
  v7[3] = &unk_2781F9E28;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = a2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  [v4 evaluate:v7 completionBlock:0];
}

void __78__SKUIJSRestrictions_isExplicitContentRestrictedByDefaultInCurrentStoreFront___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = [v2 callWithArguments:v4];

  [*(a1 + 40) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 48)];
}

- (void)isExplicitContentDisallowedInCurrentStoreFront:(id)front
{
  v4 = MEMORY[0x277CD4650];
  frontCopy = front;
  v6 = [v4 managedValueWithValue:frontCopy];
  context = [frontCopy context];

  virtualMachine = [context virtualMachine];

  [virtualMachine addManagedReference:v6 withOwner:self];
  appContext = [(IKJSObject *)self appContext];
  v10 = MEMORY[0x277D69C38];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__SKUIJSRestrictions_isExplicitContentDisallowedInCurrentStoreFront___block_invoke;
  v14[3] = &unk_2781F9E50;
  v15 = appContext;
  v16 = v6;
  v17 = virtualMachine;
  selfCopy = self;
  v11 = virtualMachine;
  v12 = v6;
  v13 = appContext;
  [v10 isExplicitContentDisallowedInCurrentStoreFront:v14];
}

void __69__SKUIJSRestrictions_isExplicitContentDisallowedInCurrentStoreFront___block_invoke(uint64_t a1, char a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SKUIJSRestrictions_isExplicitContentDisallowedInCurrentStoreFront___block_invoke_2;
  v7[3] = &unk_2781F9E28;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = a2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  [v4 evaluate:v7 completionBlock:0];
}

void __69__SKUIJSRestrictions_isExplicitContentDisallowedInCurrentStoreFront___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = [v2 callWithArguments:v4];

  [*(a1 + 40) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 48)];
}

- (void)isRestrictionsPasscodeSet:(id)set
{
  v4 = MEMORY[0x277CD4650];
  setCopy = set;
  v6 = [v4 managedValueWithValue:setCopy];
  context = [setCopy context];

  virtualMachine = [context virtualMachine];

  [virtualMachine addManagedReference:v6 withOwner:self];
  appContext = [(IKJSObject *)self appContext];
  v10 = MEMORY[0x277D69C38];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__SKUIJSRestrictions_isRestrictionsPasscodeSet___block_invoke;
  v14[3] = &unk_2781F9E50;
  v15 = appContext;
  v16 = v6;
  v17 = virtualMachine;
  selfCopy = self;
  v11 = virtualMachine;
  v12 = v6;
  v13 = appContext;
  [v10 isRestrictionsPasscodeSet:v14];
}

void __48__SKUIJSRestrictions_isRestrictionsPasscodeSet___block_invoke(uint64_t a1, char a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SKUIJSRestrictions_isRestrictionsPasscodeSet___block_invoke_2;
  v7[3] = &unk_2781F9E28;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = a2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  [v4 evaluate:v7 completionBlock:0];
}

void __48__SKUIJSRestrictions_isRestrictionsPasscodeSet___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = [v2 callWithArguments:v4];

  [*(a1 + 40) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 48)];
}

- (void)shouldDisplayExplicitRestrictionAlertOfType:(id)type :(id)a4
{
  v6 = MEMORY[0x277CD4650];
  v7 = a4;
  typeCopy = type;
  v9 = [v6 managedValueWithValue:v7];
  context = [v7 context];

  virtualMachine = [context virtualMachine];

  [virtualMachine addManagedReference:v9 withOwner:self];
  appContext = [(IKJSObject *)self appContext];
  v13 = [(SKUIJSRestrictions *)self _explicitRestrictionAlertTypeForTypeString:typeCopy];

  if (v13 < 0)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __67__SKUIJSRestrictions_shouldDisplayExplicitRestrictionAlertOfType::__block_invoke_3;
    v21[3] = &unk_2781F9E78;
    v15 = &v22;
    v16 = v23;
    v22 = v9;
    v23[0] = virtualMachine;
    v23[1] = self;
    v19 = virtualMachine;
    v20 = v9;
    [appContext evaluate:v21 completionBlock:0];
  }

  else
  {
    v14 = MEMORY[0x277D69C38];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __67__SKUIJSRestrictions_shouldDisplayExplicitRestrictionAlertOfType::__block_invoke;
    v24[3] = &unk_2781F9E50;
    v15 = &v25;
    v16 = &v26;
    v25 = appContext;
    v26 = v9;
    v27 = virtualMachine;
    selfCopy = self;
    v17 = virtualMachine;
    v18 = v9;
    [v14 shouldDisplayExplicitRestrictionAlertOfType:v13 completionBlock:v24];
  }
}

void __67__SKUIJSRestrictions_shouldDisplayExplicitRestrictionAlertOfType::__block_invoke(uint64_t a1, char a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SKUIJSRestrictions_shouldDisplayExplicitRestrictionAlertOfType::__block_invoke_2;
  v7[3] = &unk_2781F9E28;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = a2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  [v4 evaluate:v7 completionBlock:0];
}

void __67__SKUIJSRestrictions_shouldDisplayExplicitRestrictionAlertOfType::__block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = [v2 callWithArguments:v4];

  [*(a1 + 40) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 48)];
}

void __67__SKUIJSRestrictions_shouldDisplayExplicitRestrictionAlertOfType::__block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) value];
  v2 = [v3 callWithArguments:&unk_2828D2EE8];
  [*(a1 + 40) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 48)];
}

- (void)didDisplayExplicitRestrictionAlertOfType:(id)type
{
  v3 = [(SKUIJSRestrictions *)self _explicitRestrictionAlertTypeForTypeString:type];
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v3;
    v5 = MEMORY[0x277D69C38];

    [v5 didDisplayExplicitRestrictionAlertOfType:v4];
  }
}

- (void)presentExplicitRestrictionAlertIfNeededOfType:(id)type :(id)a4
{
  v6 = MEMORY[0x277CD4650];
  v7 = a4;
  typeCopy = type;
  v9 = [v6 managedValueWithValue:v7];
  context = [v7 context];

  virtualMachine = [context virtualMachine];

  [virtualMachine addManagedReference:v9 withOwner:self];
  appContext = [(IKJSObject *)self appContext];
  v13 = [(SKUIJSRestrictions *)self _explicitRestrictionAlertTypeForTypeString:typeCopy];

  if (v13 < 0)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __69__SKUIJSRestrictions_presentExplicitRestrictionAlertIfNeededOfType::__block_invoke_3;
    v17[3] = &unk_2781F9E78;
    v18 = v9;
    v19 = virtualMachine;
    selfCopy = self;
    v16 = virtualMachine;
    v14 = v9;
    [appContext evaluate:v17 completionBlock:0];

    v15 = v18;
  }

  else
  {
    v14 = [[SKUIExplicitRestrictionAlertController alloc] initWithClientContext:self->_clientContext];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __69__SKUIJSRestrictions_presentExplicitRestrictionAlertIfNeededOfType::__block_invoke;
    v21[3] = &unk_2781F9E50;
    v22 = appContext;
    v23 = v9;
    v24 = virtualMachine;
    selfCopy2 = self;
    v15 = virtualMachine;
    v16 = v9;
    [(SKUIExplicitRestrictionAlertController *)v14 presentExplicitRestrictionAlertIfNeededOfType:v13 completionBlock:v21];
  }
}

void __69__SKUIJSRestrictions_presentExplicitRestrictionAlertIfNeededOfType::__block_invoke(uint64_t a1, char a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SKUIJSRestrictions_presentExplicitRestrictionAlertIfNeededOfType::__block_invoke_2;
  v7[3] = &unk_2781F9E28;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = a2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  [v4 evaluate:v7 completionBlock:0];
}

void __69__SKUIJSRestrictions_presentExplicitRestrictionAlertIfNeededOfType::__block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = [v2 callWithArguments:v4];

  [*(a1 + 40) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 48)];
}

void __69__SKUIJSRestrictions_presentExplicitRestrictionAlertIfNeededOfType::__block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) value];
  v2 = [v3 callWithArguments:&unk_2828D2F00];
  [*(a1 + 40) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 48)];
}

- (int64_t)_explicitRestrictionAlertTypeForTypeString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"onLaunch"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"onContainerLoad"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"onPlay"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"onPurchase"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"onAddToLibrary"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"onOpen"])
  {
    v4 = 5;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)initWithAppContext:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIJSRestrictions initWithAppContext:clientContext:]";
}

@end