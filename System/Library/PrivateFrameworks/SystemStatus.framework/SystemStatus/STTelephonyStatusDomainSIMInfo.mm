@interface STTelephonyStatusDomainSIMInfo
- (BOOL)isEqual:(id)equal;
- (STTelephonyStatusDomainSIMInfo)initWithCoder:(id)coder;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)dataByApplyingDiff:(id)diff;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffFromData:(id)data;
- (id)initWithSIMInfo:(void *)info;
- (id)initWithSIMPresent:(char)present bootstrap:(void *)bootstrap label:(void *)label shortLabel:(uint64_t)shortLabel signalStrengthBars:(uint64_t)bars maxSignalStrengthBars:(uint64_t)strengthBars serviceState:(uint64_t)state cellularServiceState:(void *)self0 serviceDescription:(void *)self1 secondaryServiceDescription:(uint64_t)self2 dataNetworkType:(char)self3 providingDataConnection:(char)self4 preferredForDataConnections:(char)self5 registeredWithoutCellular:(char)self6 callForwardingEnabled:;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STTelephonyStatusDomainSIMInfo

- (id)initWithSIMInfo:(void *)info
{
  infoCopy = info;
  if (info)
  {
    v3 = a2;
    isSIMPresent = [v3 isSIMPresent];
    isBootstrap = [v3 isBootstrap];
    label = [v3 label];
    shortLabel = [v3 shortLabel];
    signalStrengthBars = [v3 signalStrengthBars];
    maxSignalStrengthBars = [v3 maxSignalStrengthBars];
    serviceState = [v3 serviceState];
    cellularServiceState = [v3 cellularServiceState];
    serviceDescription = [v3 serviceDescription];
    secondaryServiceDescription = [v3 secondaryServiceDescription];
    dataNetworkType = [v3 dataNetworkType];
    isProvidingDataConnection = [v3 isProvidingDataConnection];
    isPreferredForDataConnections = [v3 isPreferredForDataConnections];
    isRegisteredWithoutCellular = [v3 isRegisteredWithoutCellular];
    isCallForwardingEnabled = [v3 isCallForwardingEnabled];

    infoCopy = [(STTelephonyStatusDomainSIMInfo *)infoCopy initWithSIMPresent:isSIMPresent bootstrap:isBootstrap label:label shortLabel:shortLabel signalStrengthBars:signalStrengthBars maxSignalStrengthBars:maxSignalStrengthBars serviceState:serviceState cellularServiceState:cellularServiceState serviceDescription:serviceDescription secondaryServiceDescription:secondaryServiceDescription dataNetworkType:dataNetworkType providingDataConnection:isProvidingDataConnection preferredForDataConnections:isPreferredForDataConnections registeredWithoutCellular:isRegisteredWithoutCellular callForwardingEnabled:isCallForwardingEnabled];
  }

  return infoCopy;
}

- (id)initWithSIMPresent:(char)present bootstrap:(void *)bootstrap label:(void *)label shortLabel:(uint64_t)shortLabel signalStrengthBars:(uint64_t)bars maxSignalStrengthBars:(uint64_t)strengthBars serviceState:(uint64_t)state cellularServiceState:(void *)self0 serviceDescription:(void *)self1 secondaryServiceDescription:(uint64_t)self2 dataNetworkType:(char)self3 providingDataConnection:(char)self4 preferredForDataConnections:(char)self5 registeredWithoutCellular:(char)self6 callForwardingEnabled:
{
  bootstrapCopy = bootstrap;
  labelCopy = label;
  serviceStateCopy = serviceState;
  descriptionCopy = description;
  if (self)
  {
    v37.receiver = self;
    v37.super_class = STTelephonyStatusDomainSIMInfo;
    v27 = objc_msgSendSuper2(&v37, sel_init);
    self = v27;
    if (v27)
    {
      v27[8] = a2;
      v27[9] = present;
      v28 = [bootstrapCopy copy];
      v29 = *(self + 2);
      *(self + 2) = v28;

      v30 = [labelCopy copy];
      v31 = *(self + 3);
      *(self + 3) = v30;

      *(self + 4) = shortLabel;
      *(self + 5) = bars;
      *(self + 6) = strengthBars;
      *(self + 7) = state;
      v32 = [serviceStateCopy copy];
      v33 = *(self + 8);
      *(self + 8) = v32;

      v34 = [descriptionCopy copy];
      v35 = *(self + 9);
      *(self + 9) = v34;

      *(self + 10) = serviceDescription;
      *(self + 88) = type;
      *(self + 89) = connection;
      *(self + 90) = connections;
      *(self + 91) = cellular;
    }
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  isSIMPresent = [(STTelephonyStatusDomainSIMInfo *)self isSIMPresent];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke;
  v80[3] = &unk_1E85DDD50;
  v7 = equalCopy;
  v81 = v7;
  v8 = [v5 appendBool:isSIMPresent counterpart:v80];
  isBootstrap = [(STTelephonyStatusDomainSIMInfo *)self isBootstrap];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_2;
  v78[3] = &unk_1E85DDD50;
  v10 = v7;
  v79 = v10;
  v11 = [v5 appendBool:isBootstrap counterpart:v78];
  label = [(STTelephonyStatusDomainSIMInfo *)self label];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_3;
  v76[3] = &unk_1E85DDD28;
  v13 = v10;
  v77 = v13;
  v14 = [v5 appendString:label counterpart:v76];

  shortLabel = [(STTelephonyStatusDomainSIMInfo *)self shortLabel];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_4;
  v74[3] = &unk_1E85DDD28;
  v16 = v13;
  v75 = v16;
  v17 = [v5 appendString:shortLabel counterpart:v74];

  signalStrengthBars = [(STTelephonyStatusDomainSIMInfo *)self signalStrengthBars];
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_5;
  v72[3] = &unk_1E85DE2F8;
  v19 = v16;
  v73 = v19;
  v20 = [v5 appendUnsignedInteger:signalStrengthBars counterpart:v72];
  maxSignalStrengthBars = [(STTelephonyStatusDomainSIMInfo *)self maxSignalStrengthBars];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_6;
  v70[3] = &unk_1E85DE2F8;
  v22 = v19;
  v71 = v22;
  v23 = [v5 appendUnsignedInteger:maxSignalStrengthBars counterpart:v70];
  serviceState = [(STTelephonyStatusDomainSIMInfo *)self serviceState];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_7;
  v68[3] = &unk_1E85DE2F8;
  v25 = v22;
  v69 = v25;
  v26 = [v5 appendUnsignedInteger:serviceState counterpart:v68];
  cellularServiceState = [(STTelephonyStatusDomainSIMInfo *)self cellularServiceState];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_8;
  v66[3] = &unk_1E85DE2F8;
  v28 = v25;
  v67 = v28;
  v29 = [v5 appendUnsignedInteger:cellularServiceState counterpart:v66];
  serviceDescription = [(STTelephonyStatusDomainSIMInfo *)self serviceDescription];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_9;
  v64[3] = &unk_1E85DDD28;
  v31 = v28;
  v65 = v31;
  v32 = [v5 appendString:serviceDescription counterpart:v64];

  secondaryServiceDescription = [(STTelephonyStatusDomainSIMInfo *)self secondaryServiceDescription];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_10;
  v62[3] = &unk_1E85DDD28;
  v34 = v31;
  v63 = v34;
  v35 = [v5 appendString:secondaryServiceDescription counterpart:v62];

  dataNetworkType = [(STTelephonyStatusDomainSIMInfo *)self dataNetworkType];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_11;
  v60[3] = &unk_1E85DE2F8;
  v37 = v34;
  v61 = v37;
  v38 = [v5 appendUnsignedInteger:dataNetworkType counterpart:v60];
  isProvidingDataConnection = [(STTelephonyStatusDomainSIMInfo *)self isProvidingDataConnection];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_12;
  v58[3] = &unk_1E85DDD50;
  v40 = v37;
  v59 = v40;
  v41 = [v5 appendBool:isProvidingDataConnection counterpart:v58];
  isPreferredForDataConnections = [(STTelephonyStatusDomainSIMInfo *)self isPreferredForDataConnections];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_13;
  v56[3] = &unk_1E85DDD50;
  v43 = v40;
  v57 = v43;
  v44 = [v5 appendBool:isPreferredForDataConnections counterpart:v56];
  isRegisteredWithoutCellular = [(STTelephonyStatusDomainSIMInfo *)self isRegisteredWithoutCellular];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_14;
  v54[3] = &unk_1E85DDD50;
  v46 = v43;
  v55 = v46;
  v47 = [v5 appendBool:isRegisteredWithoutCellular counterpart:v54];
  isCallForwardingEnabled = [(STTelephonyStatusDomainSIMInfo *)self isCallForwardingEnabled];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_15;
  v52[3] = &unk_1E85DDD50;
  v53 = v46;
  v49 = v46;
  v50 = [v5 appendBool:isCallForwardingEnabled counterpart:v52];
  LOBYTE(v46) = [v5 isEqual];

  return v46;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:{-[STTelephonyStatusDomainSIMInfo isSIMPresent](self, "isSIMPresent")}];
  v5 = [builder appendBool:{-[STTelephonyStatusDomainSIMInfo isBootstrap](self, "isBootstrap")}];
  label = [(STTelephonyStatusDomainSIMInfo *)self label];
  v7 = [builder appendString:label];

  shortLabel = [(STTelephonyStatusDomainSIMInfo *)self shortLabel];
  v9 = [builder appendString:shortLabel];

  v10 = [builder appendUnsignedInteger:{-[STTelephonyStatusDomainSIMInfo signalStrengthBars](self, "signalStrengthBars")}];
  v11 = [builder appendUnsignedInteger:{-[STTelephonyStatusDomainSIMInfo maxSignalStrengthBars](self, "maxSignalStrengthBars")}];
  v12 = [builder appendUnsignedInteger:{-[STTelephonyStatusDomainSIMInfo serviceState](self, "serviceState")}];
  v13 = [builder appendUnsignedInteger:{-[STTelephonyStatusDomainSIMInfo cellularServiceState](self, "cellularServiceState")}];
  serviceDescription = [(STTelephonyStatusDomainSIMInfo *)self serviceDescription];
  v15 = [builder appendString:serviceDescription];

  secondaryServiceDescription = [(STTelephonyStatusDomainSIMInfo *)self secondaryServiceDescription];
  v17 = [builder appendString:secondaryServiceDescription];

  v18 = [builder appendUnsignedInteger:{-[STTelephonyStatusDomainSIMInfo dataNetworkType](self, "dataNetworkType")}];
  v19 = [builder appendBool:{-[STTelephonyStatusDomainSIMInfo isProvidingDataConnection](self, "isProvidingDataConnection")}];
  v20 = [builder appendBool:{-[STTelephonyStatusDomainSIMInfo isPreferredForDataConnections](self, "isPreferredForDataConnections")}];
  v21 = [builder appendBool:{-[STTelephonyStatusDomainSIMInfo isRegisteredWithoutCellular](self, "isRegisteredWithoutCellular")}];
  v22 = [builder appendBool:{-[STTelephonyStatusDomainSIMInfo isCallForwardingEnabled](self, "isCallForwardingEnabled")}];
  v23 = [builder hash];

  return v23;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableTelephonyStatusDomainSIMInfo allocWithZone:zone];

  return [(STTelephonyStatusDomainSIMInfo *)v4 initWithSIMInfo:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STTelephonyStatusDomainSIMInfo *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STTelephonyStatusDomainSIMInfo *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STTelephonyStatusDomainSIMInfo *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:
{
  if (self)
  {
    v5 = a2;
    succinctDescriptionBuilder = [self succinctDescriptionBuilder];
    [succinctDescriptionBuilder setUseDebugDescription:prefix];
    [succinctDescriptionBuilder setActiveMultilinePrefix:v5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__STTelephonyStatusDomainSIMInfo__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDD00;
    v7 = succinctDescriptionBuilder;
    v11 = v7;
    selfCopy = self;
    [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __82__STTelephonyStatusDomainSIMInfo__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isSIMPresent"), @"SIMPresent"}];
  v3 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isBootstrap"), @"bootstrap"}];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) label];
  v6 = [v4 appendObject:v5 withName:@"label"];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) shortLabel];
  v9 = [v7 appendObject:v8 withName:@"shortLabel"];

  v10 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"signalStrengthBars"), @"signalStrengthBars"}];
  v11 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"maxSignalStrengthBars"), @"maxSignalStrengthBars"}];
  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) serviceState] - 1;
  if (v13 > 2)
  {
    v14 = @"No Service";
  }

  else
  {
    v14 = off_1E85DE3D0[v13];
  }

  v15 = [v12 appendObject:v14 withName:@"serviceState"];
  v16 = *(a1 + 32);
  v17 = [*(a1 + 40) cellularServiceState] - 1;
  if (v17 > 2)
  {
    v18 = @"No Service";
  }

  else
  {
    v18 = off_1E85DE3D0[v17];
  }

  v19 = [v16 appendObject:v18 withName:@"cellularServiceState"];
  v20 = *(a1 + 32);
  v21 = [*(a1 + 40) serviceDescription];
  v22 = [v20 appendObject:v21 withName:@"serviceDescription"];

  v23 = *(a1 + 32);
  v24 = [*(a1 + 40) secondaryServiceDescription];
  v25 = [v23 appendObject:v24 withName:@"secondaryServiceDescription"];

  v26 = *(a1 + 32);
  v27 = STDescriptionForDataNetworkType([*(a1 + 40) dataNetworkType]);
  v28 = [v26 appendObject:v27 withName:@"dataNetworkType"];

  v29 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isProvidingDataConnection"), @"providingDataConnection"}];
  v30 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isPreferredForDataConnections"), @"preferredForDataConnections"}];
  v31 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isRegisteredWithoutCellular"), @"registeredWithoutCellular"}];
  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isCallForwardingEnabled"), @"callForwardingEnabled"}];
}

- (id)diffFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STTelephonyStatusDomainSIMInfoDiff diffFromInfo:dataCopy toInfo:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataByApplyingDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([diffCopy isEmpty])
    {
      v5 = [(STTelephonyStatusDomainSIMInfo *)self copy];
    }

    else
    {
      v5 = [(STTelephonyStatusDomainSIMInfo *)self mutableCopy];
      [diffCopy applyToMutableInfo:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[STTelephonyStatusDomainSIMInfo isSIMPresent](self forKey:{"isSIMPresent"), @"SIMPresent"}];
  [coderCopy encodeBool:-[STTelephonyStatusDomainSIMInfo isBootstrap](self forKey:{"isBootstrap"), @"bootstrap"}];
  label = [(STTelephonyStatusDomainSIMInfo *)self label];
  [coderCopy encodeObject:label forKey:@"label"];

  shortLabel = [(STTelephonyStatusDomainSIMInfo *)self shortLabel];
  [coderCopy encodeObject:shortLabel forKey:@"shortLabel"];

  [coderCopy encodeInteger:-[STTelephonyStatusDomainSIMInfo signalStrengthBars](self forKey:{"signalStrengthBars"), @"signalStrengthBars"}];
  [coderCopy encodeInteger:-[STTelephonyStatusDomainSIMInfo maxSignalStrengthBars](self forKey:{"maxSignalStrengthBars"), @"maxSignalStrengthBars"}];
  [coderCopy encodeInteger:-[STTelephonyStatusDomainSIMInfo serviceState](self forKey:{"serviceState"), @"serviceState"}];
  [coderCopy encodeInteger:-[STTelephonyStatusDomainSIMInfo cellularServiceState](self forKey:{"cellularServiceState"), @"cellularServiceState"}];
  serviceDescription = [(STTelephonyStatusDomainSIMInfo *)self serviceDescription];
  [coderCopy encodeObject:serviceDescription forKey:@"serviceDescription"];

  secondaryServiceDescription = [(STTelephonyStatusDomainSIMInfo *)self secondaryServiceDescription];
  [coderCopy encodeObject:secondaryServiceDescription forKey:@"secondaryServiceDescription"];

  [coderCopy encodeInteger:-[STTelephonyStatusDomainSIMInfo dataNetworkType](self forKey:{"dataNetworkType"), @"dataNetworkType"}];
  [coderCopy encodeBool:-[STTelephonyStatusDomainSIMInfo isProvidingDataConnection](self forKey:{"isProvidingDataConnection"), @"providingDataConnection"}];
  [coderCopy encodeBool:-[STTelephonyStatusDomainSIMInfo isPreferredForDataConnections](self forKey:{"isPreferredForDataConnections"), @"preferredForDataConnections"}];
  [coderCopy encodeBool:-[STTelephonyStatusDomainSIMInfo isRegisteredWithoutCellular](self forKey:{"isRegisteredWithoutCellular"), @"registeredWithoutCellular"}];
  [coderCopy encodeBool:-[STTelephonyStatusDomainSIMInfo isCallForwardingEnabled](self forKey:{"isCallForwardingEnabled"), @"callForwardingEnabled"}];
}

- (STTelephonyStatusDomainSIMInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20 = [coderCopy decodeBoolForKey:@"SIMPresent"];
  v19 = [coderCopy decodeBoolForKey:@"bootstrap"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortLabel"];
  v17 = [coderCopy decodeIntegerForKey:@"signalStrengthBars"];
  v16 = [coderCopy decodeIntegerForKey:@"maxSignalStrengthBars"];
  v15 = [coderCopy decodeIntegerForKey:@"serviceState"];
  v5 = [coderCopy decodeIntegerForKey:@"cellularServiceState"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceDescription"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryServiceDescription"];
  v8 = [coderCopy decodeIntegerForKey:@"dataNetworkType"];
  v9 = [coderCopy decodeBoolForKey:@"providingDataConnection"];
  v10 = [coderCopy decodeBoolForKey:@"preferredForDataConnections"];
  v11 = [coderCopy decodeBoolForKey:@"registeredWithoutCellular"];
  v12 = [coderCopy decodeBoolForKey:@"callForwardingEnabled"];

  v13 = [(STTelephonyStatusDomainSIMInfo *)self initWithSIMPresent:v20 bootstrap:v19 label:v18 shortLabel:v4 signalStrengthBars:v17 maxSignalStrengthBars:v16 serviceState:v15 cellularServiceState:v5 serviceDescription:v6 secondaryServiceDescription:v7 dataNetworkType:v8 providingDataConnection:v9 preferredForDataConnections:v10 registeredWithoutCellular:v11 callForwardingEnabled:v12];
  return v13;
}

@end