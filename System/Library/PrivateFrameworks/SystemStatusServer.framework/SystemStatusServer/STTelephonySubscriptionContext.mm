@interface STTelephonySubscriptionContext
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation STTelephonySubscriptionContext

- (id)succinctDescription
{
  v2 = [(STTelephonySubscriptionContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(STTelephonySubscriptionContext *)self subscriptionInfo];
  v5 = [v4 succinctDescription];
  [v3 appendString:v5 withName:@"subscriptionInfo"];

  v6 = STTelephonyDataConnectionTypeDebugName([(STTelephonySubscriptionContext *)self modemDataConnectionType]);
  [v3 appendString:v6 withName:@"modemDataConnectionType"];

  v7 = [(STTelephonySubscriptionContext *)self cachedCTOperatorName];
  [v3 appendString:v7 withName:@"cachedCTOperatorName"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STTelephonySubscriptionContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__STTelephonySubscriptionContext_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279D34B18;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

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

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = self;
  if (self)
  {
    v4 = MEMORY[0x277CF0C00];
    v5 = a3;
    v6 = [v4 builderWithObject:v3];
    [v6 setUseDebugDescription:1];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __77__STTelephonySubscriptionContext_debugDescriptionBuilderWithMultilinePrefix___block_invoke;
    v13 = &unk_279D34B18;
    v7 = v6;
    v14 = v7;
    v15 = v3;
    [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:&v10];

    v3 = v7;
  }

  v8 = [(STTelephonySubscriptionContext *)v3 build:a3];

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