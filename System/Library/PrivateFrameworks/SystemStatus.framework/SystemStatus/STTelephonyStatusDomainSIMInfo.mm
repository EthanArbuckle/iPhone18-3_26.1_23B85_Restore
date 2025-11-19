@interface STTelephonyStatusDomainSIMInfo
- (BOOL)isEqual:(id)a3;
- (STTelephonyStatusDomainSIMInfo)initWithCoder:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)dataByApplyingDiff:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffFromData:(id)a3;
- (id)initWithSIMInfo:(void *)a1;
- (id)initWithSIMPresent:(char)a3 bootstrap:(void *)a4 label:(void *)a5 shortLabel:(uint64_t)a6 signalStrengthBars:(uint64_t)a7 maxSignalStrengthBars:(uint64_t)a8 serviceState:(uint64_t)a9 cellularServiceState:(void *)a10 serviceDescription:(void *)a11 secondaryServiceDescription:(uint64_t)a12 dataNetworkType:(char)a13 providingDataConnection:(char)a14 preferredForDataConnections:(char)a15 registeredWithoutCellular:(char)a16 callForwardingEnabled:;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STTelephonyStatusDomainSIMInfo

- (id)initWithSIMInfo:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v19 = [v3 isSIMPresent];
    v18 = [v3 isBootstrap];
    v17 = [v3 label];
    v16 = [v3 shortLabel];
    v15 = [v3 signalStrengthBars];
    v14 = [v3 maxSignalStrengthBars];
    v13 = [v3 serviceState];
    v4 = [v3 cellularServiceState];
    v5 = [v3 serviceDescription];
    v6 = [v3 secondaryServiceDescription];
    v7 = [v3 dataNetworkType];
    v8 = [v3 isProvidingDataConnection];
    v9 = [v3 isPreferredForDataConnections];
    v10 = [v3 isRegisteredWithoutCellular];
    v11 = [v3 isCallForwardingEnabled];

    v2 = [(STTelephonyStatusDomainSIMInfo *)v2 initWithSIMPresent:v19 bootstrap:v18 label:v17 shortLabel:v16 signalStrengthBars:v15 maxSignalStrengthBars:v14 serviceState:v13 cellularServiceState:v4 serviceDescription:v5 secondaryServiceDescription:v6 dataNetworkType:v7 providingDataConnection:v8 preferredForDataConnections:v9 registeredWithoutCellular:v10 callForwardingEnabled:v11];
  }

  return v2;
}

- (id)initWithSIMPresent:(char)a3 bootstrap:(void *)a4 label:(void *)a5 shortLabel:(uint64_t)a6 signalStrengthBars:(uint64_t)a7 maxSignalStrengthBars:(uint64_t)a8 serviceState:(uint64_t)a9 cellularServiceState:(void *)a10 serviceDescription:(void *)a11 secondaryServiceDescription:(uint64_t)a12 dataNetworkType:(char)a13 providingDataConnection:(char)a14 preferredForDataConnections:(char)a15 registeredWithoutCellular:(char)a16 callForwardingEnabled:
{
  v23 = a4;
  v24 = a5;
  v25 = a10;
  v26 = a11;
  if (a1)
  {
    v37.receiver = a1;
    v37.super_class = STTelephonyStatusDomainSIMInfo;
    v27 = objc_msgSendSuper2(&v37, sel_init);
    a1 = v27;
    if (v27)
    {
      v27[8] = a2;
      v27[9] = a3;
      v28 = [v23 copy];
      v29 = *(a1 + 2);
      *(a1 + 2) = v28;

      v30 = [v24 copy];
      v31 = *(a1 + 3);
      *(a1 + 3) = v30;

      *(a1 + 4) = a6;
      *(a1 + 5) = a7;
      *(a1 + 6) = a8;
      *(a1 + 7) = a9;
      v32 = [v25 copy];
      v33 = *(a1 + 8);
      *(a1 + 8) = v32;

      v34 = [v26 copy];
      v35 = *(a1 + 9);
      *(a1 + 9) = v34;

      *(a1 + 10) = a12;
      *(a1 + 88) = a13;
      *(a1 + 89) = a14;
      *(a1 + 90) = a15;
      *(a1 + 91) = a16;
    }
  }

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STTelephonyStatusDomainSIMInfo *)self isSIMPresent];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke;
  v80[3] = &unk_1E85DDD50;
  v7 = v4;
  v81 = v7;
  v8 = [v5 appendBool:v6 counterpart:v80];
  v9 = [(STTelephonyStatusDomainSIMInfo *)self isBootstrap];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_2;
  v78[3] = &unk_1E85DDD50;
  v10 = v7;
  v79 = v10;
  v11 = [v5 appendBool:v9 counterpart:v78];
  v12 = [(STTelephonyStatusDomainSIMInfo *)self label];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_3;
  v76[3] = &unk_1E85DDD28;
  v13 = v10;
  v77 = v13;
  v14 = [v5 appendString:v12 counterpart:v76];

  v15 = [(STTelephonyStatusDomainSIMInfo *)self shortLabel];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_4;
  v74[3] = &unk_1E85DDD28;
  v16 = v13;
  v75 = v16;
  v17 = [v5 appendString:v15 counterpart:v74];

  v18 = [(STTelephonyStatusDomainSIMInfo *)self signalStrengthBars];
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_5;
  v72[3] = &unk_1E85DE2F8;
  v19 = v16;
  v73 = v19;
  v20 = [v5 appendUnsignedInteger:v18 counterpart:v72];
  v21 = [(STTelephonyStatusDomainSIMInfo *)self maxSignalStrengthBars];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_6;
  v70[3] = &unk_1E85DE2F8;
  v22 = v19;
  v71 = v22;
  v23 = [v5 appendUnsignedInteger:v21 counterpart:v70];
  v24 = [(STTelephonyStatusDomainSIMInfo *)self serviceState];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_7;
  v68[3] = &unk_1E85DE2F8;
  v25 = v22;
  v69 = v25;
  v26 = [v5 appendUnsignedInteger:v24 counterpart:v68];
  v27 = [(STTelephonyStatusDomainSIMInfo *)self cellularServiceState];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_8;
  v66[3] = &unk_1E85DE2F8;
  v28 = v25;
  v67 = v28;
  v29 = [v5 appendUnsignedInteger:v27 counterpart:v66];
  v30 = [(STTelephonyStatusDomainSIMInfo *)self serviceDescription];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_9;
  v64[3] = &unk_1E85DDD28;
  v31 = v28;
  v65 = v31;
  v32 = [v5 appendString:v30 counterpart:v64];

  v33 = [(STTelephonyStatusDomainSIMInfo *)self secondaryServiceDescription];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_10;
  v62[3] = &unk_1E85DDD28;
  v34 = v31;
  v63 = v34;
  v35 = [v5 appendString:v33 counterpart:v62];

  v36 = [(STTelephonyStatusDomainSIMInfo *)self dataNetworkType];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_11;
  v60[3] = &unk_1E85DE2F8;
  v37 = v34;
  v61 = v37;
  v38 = [v5 appendUnsignedInteger:v36 counterpart:v60];
  v39 = [(STTelephonyStatusDomainSIMInfo *)self isProvidingDataConnection];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_12;
  v58[3] = &unk_1E85DDD50;
  v40 = v37;
  v59 = v40;
  v41 = [v5 appendBool:v39 counterpart:v58];
  v42 = [(STTelephonyStatusDomainSIMInfo *)self isPreferredForDataConnections];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_13;
  v56[3] = &unk_1E85DDD50;
  v43 = v40;
  v57 = v43;
  v44 = [v5 appendBool:v42 counterpart:v56];
  v45 = [(STTelephonyStatusDomainSIMInfo *)self isRegisteredWithoutCellular];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_14;
  v54[3] = &unk_1E85DDD50;
  v46 = v43;
  v55 = v46;
  v47 = [v5 appendBool:v45 counterpart:v54];
  v48 = [(STTelephonyStatusDomainSIMInfo *)self isCallForwardingEnabled];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __42__STTelephonyStatusDomainSIMInfo_isEqual___block_invoke_15;
  v52[3] = &unk_1E85DDD50;
  v53 = v46;
  v49 = v46;
  v50 = [v5 appendBool:v48 counterpart:v52];
  LOBYTE(v46) = [v5 isEqual];

  return v46;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendBool:{-[STTelephonyStatusDomainSIMInfo isSIMPresent](self, "isSIMPresent")}];
  v5 = [v3 appendBool:{-[STTelephonyStatusDomainSIMInfo isBootstrap](self, "isBootstrap")}];
  v6 = [(STTelephonyStatusDomainSIMInfo *)self label];
  v7 = [v3 appendString:v6];

  v8 = [(STTelephonyStatusDomainSIMInfo *)self shortLabel];
  v9 = [v3 appendString:v8];

  v10 = [v3 appendUnsignedInteger:{-[STTelephonyStatusDomainSIMInfo signalStrengthBars](self, "signalStrengthBars")}];
  v11 = [v3 appendUnsignedInteger:{-[STTelephonyStatusDomainSIMInfo maxSignalStrengthBars](self, "maxSignalStrengthBars")}];
  v12 = [v3 appendUnsignedInteger:{-[STTelephonyStatusDomainSIMInfo serviceState](self, "serviceState")}];
  v13 = [v3 appendUnsignedInteger:{-[STTelephonyStatusDomainSIMInfo cellularServiceState](self, "cellularServiceState")}];
  v14 = [(STTelephonyStatusDomainSIMInfo *)self serviceDescription];
  v15 = [v3 appendString:v14];

  v16 = [(STTelephonyStatusDomainSIMInfo *)self secondaryServiceDescription];
  v17 = [v3 appendString:v16];

  v18 = [v3 appendUnsignedInteger:{-[STTelephonyStatusDomainSIMInfo dataNetworkType](self, "dataNetworkType")}];
  v19 = [v3 appendBool:{-[STTelephonyStatusDomainSIMInfo isProvidingDataConnection](self, "isProvidingDataConnection")}];
  v20 = [v3 appendBool:{-[STTelephonyStatusDomainSIMInfo isPreferredForDataConnections](self, "isPreferredForDataConnections")}];
  v21 = [v3 appendBool:{-[STTelephonyStatusDomainSIMInfo isRegisteredWithoutCellular](self, "isRegisteredWithoutCellular")}];
  v22 = [v3 appendBool:{-[STTelephonyStatusDomainSIMInfo isCallForwardingEnabled](self, "isCallForwardingEnabled")}];
  v23 = [v3 hash];

  return v23;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableTelephonyStatusDomainSIMInfo allocWithZone:a3];

  return [(STTelephonyStatusDomainSIMInfo *)v4 initWithSIMInfo:?];
}

- (id)succinctDescription
{
  v2 = [(STTelephonyStatusDomainSIMInfo *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STTelephonyStatusDomainSIMInfo *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STTelephonyStatusDomainSIMInfo *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:
{
  if (a1)
  {
    v5 = a2;
    v6 = [a1 succinctDescriptionBuilder];
    [v6 setUseDebugDescription:a3];
    [v6 setActiveMultilinePrefix:v5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__STTelephonyStatusDomainSIMInfo__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDD00;
    v7 = v6;
    v11 = v7;
    v12 = a1;
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

- (id)diffFromData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STTelephonyStatusDomainSIMInfoDiff diffFromInfo:v4 toInfo:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataByApplyingDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 isEmpty])
    {
      v5 = [(STTelephonyStatusDomainSIMInfo *)self copy];
    }

    else
    {
      v5 = [(STTelephonyStatusDomainSIMInfo *)self mutableCopy];
      [v4 applyToMutableInfo:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeBool:-[STTelephonyStatusDomainSIMInfo isSIMPresent](self forKey:{"isSIMPresent"), @"SIMPresent"}];
  [v8 encodeBool:-[STTelephonyStatusDomainSIMInfo isBootstrap](self forKey:{"isBootstrap"), @"bootstrap"}];
  v4 = [(STTelephonyStatusDomainSIMInfo *)self label];
  [v8 encodeObject:v4 forKey:@"label"];

  v5 = [(STTelephonyStatusDomainSIMInfo *)self shortLabel];
  [v8 encodeObject:v5 forKey:@"shortLabel"];

  [v8 encodeInteger:-[STTelephonyStatusDomainSIMInfo signalStrengthBars](self forKey:{"signalStrengthBars"), @"signalStrengthBars"}];
  [v8 encodeInteger:-[STTelephonyStatusDomainSIMInfo maxSignalStrengthBars](self forKey:{"maxSignalStrengthBars"), @"maxSignalStrengthBars"}];
  [v8 encodeInteger:-[STTelephonyStatusDomainSIMInfo serviceState](self forKey:{"serviceState"), @"serviceState"}];
  [v8 encodeInteger:-[STTelephonyStatusDomainSIMInfo cellularServiceState](self forKey:{"cellularServiceState"), @"cellularServiceState"}];
  v6 = [(STTelephonyStatusDomainSIMInfo *)self serviceDescription];
  [v8 encodeObject:v6 forKey:@"serviceDescription"];

  v7 = [(STTelephonyStatusDomainSIMInfo *)self secondaryServiceDescription];
  [v8 encodeObject:v7 forKey:@"secondaryServiceDescription"];

  [v8 encodeInteger:-[STTelephonyStatusDomainSIMInfo dataNetworkType](self forKey:{"dataNetworkType"), @"dataNetworkType"}];
  [v8 encodeBool:-[STTelephonyStatusDomainSIMInfo isProvidingDataConnection](self forKey:{"isProvidingDataConnection"), @"providingDataConnection"}];
  [v8 encodeBool:-[STTelephonyStatusDomainSIMInfo isPreferredForDataConnections](self forKey:{"isPreferredForDataConnections"), @"preferredForDataConnections"}];
  [v8 encodeBool:-[STTelephonyStatusDomainSIMInfo isRegisteredWithoutCellular](self forKey:{"isRegisteredWithoutCellular"), @"registeredWithoutCellular"}];
  [v8 encodeBool:-[STTelephonyStatusDomainSIMInfo isCallForwardingEnabled](self forKey:{"isCallForwardingEnabled"), @"callForwardingEnabled"}];
}

- (STTelephonyStatusDomainSIMInfo)initWithCoder:(id)a3
{
  v3 = a3;
  v20 = [v3 decodeBoolForKey:@"SIMPresent"];
  v19 = [v3 decodeBoolForKey:@"bootstrap"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"shortLabel"];
  v17 = [v3 decodeIntegerForKey:@"signalStrengthBars"];
  v16 = [v3 decodeIntegerForKey:@"maxSignalStrengthBars"];
  v15 = [v3 decodeIntegerForKey:@"serviceState"];
  v5 = [v3 decodeIntegerForKey:@"cellularServiceState"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"serviceDescription"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryServiceDescription"];
  v8 = [v3 decodeIntegerForKey:@"dataNetworkType"];
  v9 = [v3 decodeBoolForKey:@"providingDataConnection"];
  v10 = [v3 decodeBoolForKey:@"preferredForDataConnections"];
  v11 = [v3 decodeBoolForKey:@"registeredWithoutCellular"];
  v12 = [v3 decodeBoolForKey:@"callForwardingEnabled"];

  v13 = [(STTelephonyStatusDomainSIMInfo *)self initWithSIMPresent:v20 bootstrap:v19 label:v18 shortLabel:v4 signalStrengthBars:v17 maxSignalStrengthBars:v16 serviceState:v15 cellularServiceState:v5 serviceDescription:v6 secondaryServiceDescription:v7 dataNetworkType:v8 providingDataConnection:v9 preferredForDataConnections:v10 registeredWithoutCellular:v11 callForwardingEnabled:v12];
  return v13;
}

@end