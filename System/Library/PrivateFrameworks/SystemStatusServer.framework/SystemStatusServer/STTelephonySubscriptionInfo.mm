@interface STTelephonySubscriptionInfo
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)initWithSubscriptionInfo:(id)info;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation STTelephonySubscriptionInfo

- (id)initWithSubscriptionInfo:(id)info
{
  v3 = a2;
  if (info)
  {
    v23.receiver = info;
    v23.super_class = STTelephonySubscriptionInfo;
    info = objc_msgSendSuper2(&v23, sel_init);
    if (info)
    {
      identifier = [v3 identifier];
      v5 = [identifier copy];
      v6 = *(info + 1);
      *(info + 1) = v5;

      sIMLabel = [v3 SIMLabel];
      v8 = [sIMLabel copy];
      v9 = *(info + 2);
      *(info + 2) = v8;

      shortSIMLabel = [v3 shortSIMLabel];
      v11 = [shortSIMLabel copy];
      v12 = *(info + 3);
      *(info + 3) = v11;

      sIMStatus = [v3 SIMStatus];
      v14 = [sIMStatus copy];
      v15 = *(info + 4);
      *(info + 4) = v14;

      *(info + 40) = [v3 isHiddenSIM];
      *(info + 6) = [v3 registrationStatus];
      *(info + 7) = [v3 cellularRegistrationStatus];
      *(info + 8) = [v3 dataConnectionType];
      *(info + 72) = [v3 isPreferredForDataConnections];
      *(info + 73) = [v3 isProvidingDataConnection];
      *(info + 74) = [v3 isBootstrap];
      *(info + 75) = [v3 isRegisteredWithoutCellular];
      *(info + 10) = [v3 signalStrengthBars];
      *(info + 11) = [v3 maxSignalStrengthBars];
      operatorName = [v3 operatorName];
      v17 = [operatorName copy];
      v18 = *(info + 12);
      *(info + 12) = v17;

      lastKnownNetworkCountryCode = [v3 lastKnownNetworkCountryCode];
      v20 = [lastKnownNetworkCountryCode copy];
      v21 = *(info + 13);
      *(info + 13) = v20;

      *(info + 14) = [v3 callForwardingIndicator];
      *(info + 120) = [v3 isNetworkReselectionNeeded];
      *(info + 16) = [v3 registrationRejectionCauseCode];
    }
  }

  return info;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableTelephonySubscriptionInfo allocWithZone:zone];

  return [(STTelephonySubscriptionInfo *)v4 initWithSubscriptionInfo:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STTelephonySubscriptionInfo *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  sIMStatus = [(STTelephonySubscriptionInfo *)self SIMStatus];
  [v3 appendString:sIMStatus withName:@"SIMStatus"];

  v5 = [v3 appendBool:-[STTelephonySubscriptionInfo isHiddenSIM](self withName:"isHiddenSIM") ifEqualTo:{@"hiddenSIM", 1}];
  v6 = STTelephonyRegistrationStatusDebugName([(STTelephonySubscriptionInfo *)self registrationStatus]);
  [v3 appendString:v6 withName:@"registrationStatus"];

  v7 = STTelephonyRegistrationStatusDebugName([(STTelephonySubscriptionInfo *)self cellularRegistrationStatus]);
  [v3 appendString:v7 withName:@"cellularRegistrationStatus"];

  v8 = STTelephonyDataConnectionTypeDebugName([(STTelephonySubscriptionInfo *)self dataConnectionType]);
  [v3 appendString:v8 withName:@"dataConnectionType"];

  v9 = [v3 appendUnsignedInteger:-[STTelephonySubscriptionInfo signalStrengthBars](self withName:{"signalStrengthBars"), @"signalStrengthBars"}];
  v10 = [v3 appendBool:-[STTelephonySubscriptionInfo isPreferredForDataConnections](self withName:{"isPreferredForDataConnections"), @"isPreferredForDataConnections"}];
  v11 = [v3 appendBool:-[STTelephonySubscriptionInfo isProvidingDataConnection](self withName:{"isProvidingDataConnection"), @"isProvidingDataConnection"}];
  operatorName = [(STTelephonySubscriptionInfo *)self operatorName];
  [v3 appendString:operatorName withName:@"operatorName"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STTelephonySubscriptionInfo *)self descriptionBuilderWithMultilinePrefix:prefix];
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
  v10[2] = __69__STTelephonySubscriptionInfo_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279D34B18;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v8 = v7;
  return v7;
}

void __69__STTelephonySubscriptionInfo_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) SIMStatus];
  [v2 appendString:v3 withName:@"SIMStatus"];

  v4 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"isHiddenSIM") ifEqualTo:{@"hiddenSIM", 1}];
  v5 = *(a1 + 32);
  v6 = STTelephonyRegistrationStatusDebugName([*(a1 + 40) registrationStatus]);
  [v5 appendString:v6 withName:@"registrationStatus"];

  v7 = *(a1 + 32);
  v8 = STTelephonyRegistrationStatusDebugName([*(a1 + 40) cellularRegistrationStatus]);
  [v7 appendString:v8 withName:@"cellularRegistrationStatus"];

  v9 = *(a1 + 32);
  v10 = STTelephonyDataConnectionTypeDebugName([*(a1 + 40) dataConnectionType]);
  [v9 appendString:v10 withName:@"dataConnectionType"];

  v11 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"signalStrengthBars"), @"signalStrengthBars"}];
  v12 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isPreferredForDataConnections"), @"isPreferredForDataConnections"}];
  v13 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isProvidingDataConnection"), @"isProvidingDataConnection"}];
  v14 = *(a1 + 32);
  v15 = [*(a1 + 40) operatorName];
  [v14 appendString:v15 withName:@"operatorName"];
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
    v12 = __74__STTelephonySubscriptionInfo_debugDescriptionBuilderWithMultilinePrefix___block_invoke;
    v13 = &unk_279D34B18;
    v7 = v6;
    v14 = v7;
    v15 = selfCopy;
    [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:&v10];

    selfCopy = v7;
  }

  v8 = [(STTelephonySubscriptionInfo *)selfCopy build:prefix];

  return v8;
}

id __74__STTelephonySubscriptionInfo_debugDescriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v2 appendString:v3 withName:@"identifier"];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) SIMLabel];
  [v4 appendString:v5 withName:@"SIMLabel"];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) shortSIMLabel];
  [v6 appendString:v7 withName:@"shortSIMLabel"];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) SIMStatus];
  [v8 appendString:v9 withName:@"SIMStatus"];

  v10 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"isHiddenSIM") ifEqualTo:{@"hiddenSIM", 1}];
  v11 = *(a1 + 32);
  v12 = STTelephonyRegistrationStatusDebugName([*(a1 + 40) registrationStatus]);
  [v11 appendString:v12 withName:@"registrationStatus"];

  v13 = *(a1 + 32);
  v14 = STTelephonyRegistrationStatusDebugName([*(a1 + 40) cellularRegistrationStatus]);
  [v13 appendString:v14 withName:@"cellularRegistrationStatus"];

  v15 = *(a1 + 32);
  v16 = STTelephonyDataConnectionTypeDebugName([*(a1 + 40) dataConnectionType]);
  [v15 appendString:v16 withName:@"dataConnectionType"];

  v17 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isPreferredForDataConnections"), @"isPreferredForDataConnections"}];
  v18 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isProvidingDataConnection"), @"isProvidingDataConnection"}];
  v19 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isBootstrap"), @"isBootstrap"}];
  v20 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isRegisteredWithoutCellular"), @"isRegisteredWithoutCellular"}];
  v21 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"signalStrengthBars"), @"signalStrengthBars"}];
  v22 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"maxSignalStrengthBars"), @"maxSignalStrengthBars"}];
  v23 = *(a1 + 32);
  v24 = [*(a1 + 40) operatorName];
  [v23 appendString:v24 withName:@"operatorName"];

  v25 = *(a1 + 32);
  v26 = [*(a1 + 40) lastKnownNetworkCountryCode];
  [v25 appendString:v26 withName:@"lastKnownNetworkCountryCode"];

  v27 = *(a1 + 32);
  v28 = STTelephonyCallForwardingIndicatorDebugName([*(a1 + 40) callForwardingIndicator]);
  [v27 appendString:v28 withName:@"callForwardingIndicator"];

  v29 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isNetworkReselectionNeeded"), @"isNetworkReselectionNeeded"}];
  return [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"registrationRejectionCauseCode"), @"registrationRejectionCauseCode"}];
}

@end