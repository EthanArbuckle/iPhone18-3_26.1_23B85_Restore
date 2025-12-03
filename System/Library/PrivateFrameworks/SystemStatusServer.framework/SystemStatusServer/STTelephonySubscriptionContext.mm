@interface STTelephonySubscriptionContext
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation STTelephonySubscriptionContext

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STTelephonySubscriptionContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  subscriptionInfo = [(STTelephonySubscriptionContext *)self subscriptionInfo];
  succinctDescription = [subscriptionInfo succinctDescription];
  [v3 appendString:succinctDescription withName:@"subscriptionInfo"];

  v6 = STTelephonyDataConnectionTypeDebugName([(STTelephonySubscriptionContext *)self modemDataConnectionType]);
  [v3 appendString:v6 withName:@"modemDataConnectionType"];

  cachedCTOperatorName = [(STTelephonySubscriptionContext *)self cachedCTOperatorName];
  [v3 appendString:cachedCTOperatorName withName:@"cachedCTOperatorName"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STTelephonySubscriptionContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__STTelephonySubscriptionContext_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279D34B18;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v8 = v7;
  return v7;
}

void __72__STTelephonySubscriptionContext_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) subscriptionInfo];
  v4 = [v2 appendObject:v3 withName:@"subscriptionInfo"];

  v5 = *(a1 + 32);
  v6 = STTelephonyDataConnectionTypeDebugName([*(a1 + 40) modemDataConnectionType]);
  [v5 appendString:v6 withName:@"modemDataConnectionType"];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) cachedCTOperatorName];
  [v7 appendString:v8 withName:@"cachedCTOperatorName"];
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  selfCopy = self;
  if (self)
  {
    v4 = MEMORY[0x277CF0C00];
    prefixCopy = prefix;
    v6 = [v4 builderWithObject:selfCopy];
    [v6 setUseDebugDescription:1];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __77__STTelephonySubscriptionContext_debugDescriptionBuilderWithMultilinePrefix___block_invoke;
    v13 = &unk_279D34B18;
    v7 = v6;
    v14 = v7;
    v15 = selfCopy;
    [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:&v10];

    selfCopy = v7;
  }

  v8 = [(STTelephonySubscriptionContext *)selfCopy build:prefix];

  return v8;
}

id __77__STTelephonySubscriptionContext_debugDescriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) subscriptionInfo];
  v4 = [v2 appendObject:v3 withName:@"subscriptionInfo"];

  v5 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isFakingService"), @"fakingService"}];
  v6 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isFakingRegistration"), @"fakingRegistration"}];
  v7 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isFakingCellularRegistration"), @"fakingCellularRegistration"}];
  v8 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isPretendingToSearch"), @"isPretendingToSearch"}];
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) cachedCTRegistrationDisplayStatus];
  [v9 appendString:v10 withName:@"cachedCTRegistrationDisplayStatus"];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) cachedCTRegistrationCellularStatus];
  [v11 appendString:v12 withName:@"cachedCTRegistrationCellularStatus"];

  v13 = *(a1 + 32);
  v14 = STTelephonyDataConnectionTypeDebugName([*(a1 + 40) modemDataConnectionType]);
  [v13 appendString:v14 withName:@"modemDataConnectionType"];

  v15 = *(a1 + 32);
  v16 = [*(a1 + 40) cachedCTOperatorName];
  [v15 appendString:v16 withName:@"cachedCTOperatorName"];

  v17 = *(a1 + 32);
  v18 = [*(a1 + 40) statusBarImages];
  v19 = [v17 appendObject:v18 withName:@"statusBarImages"];

  v20 = *(a1 + 32);
  v21 = [*(a1 + 40) carrierBundleInfo];
  v22 = [v20 appendObject:v21 withName:@"carrierBundleInfo"];

  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isSatelliteSystem"), @"isSatelliteSystem"}];
}

@end