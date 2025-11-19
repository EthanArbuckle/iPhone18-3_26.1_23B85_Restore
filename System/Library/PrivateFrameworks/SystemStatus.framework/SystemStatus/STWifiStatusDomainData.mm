@interface STWifiStatusDomainData
- (BOOL)isEqual:(id)a3;
- (STWifiStatusDomainData)initWithCoder:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)dataByApplyingDiff:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffFromData:(id)a3;
- (id)initWithData:(id)result;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STWifiStatusDomainData

- (id)initWithData:(id)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    v4 = [v3 isWifiActive];
    v5 = [v3 signalStrengthBars];
    v6 = [v3 isAssociatedToIOSHotspot];

    v7.receiver = v2;
    v7.super_class = STWifiStatusDomainData;
    result = objc_msgSendSuper2(&v7, sel_init);
    if (result)
    {
      *(result + 8) = v4;
      *(result + 2) = v5;
      *(result + 24) = v6;
    }
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STWifiStatusDomainData *)self isWifiActive];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __34__STWifiStatusDomainData_isEqual___block_invoke;
  v20[3] = &unk_1E85DDD50;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendBool:v6 counterpart:v20];
  v9 = [(STWifiStatusDomainData *)self signalStrengthBars];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __34__STWifiStatusDomainData_isEqual___block_invoke_2;
  v18[3] = &unk_1E85DE2F8;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendUnsignedInteger:v9 counterpart:v18];
  v12 = [(STWifiStatusDomainData *)self isAssociatedToIOSHotspot];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __34__STWifiStatusDomainData_isEqual___block_invoke_3;
  v16[3] = &unk_1E85DDD50;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendBool:v12 counterpart:v16];
  LOBYTE(v12) = [v5 isEqual];

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendBool:{-[STWifiStatusDomainData isWifiActive](self, "isWifiActive")}];
  v5 = [v3 appendUnsignedInteger:{-[STWifiStatusDomainData signalStrengthBars](self, "signalStrengthBars")}];
  v6 = [v3 appendBool:{-[STWifiStatusDomainData isAssociatedToIOSHotspot](self, "isAssociatedToIOSHotspot")}];
  v7 = [v3 hash];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableWifiStatusDomainData allocWithZone:a3];

  return [(STWifiStatusDomainData *)v4 initWithData:?];
}

- (id)succinctDescription
{
  v2 = [(STWifiStatusDomainData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STWifiStatusDomainData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STWifiStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v10[2] = __74__STWifiStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

id __74__STWifiStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isWifiActive"), @"wifiActive"}];
  v3 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"signalStrengthBars"), @"signalStrengthBars"}];
  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isAssociatedToIOSHotspot"), @"associatedToIOSHotspot"}];
}

- (id)diffFromData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STWifiStatusDomainDataDiff diffFromData:v4 toData:self];
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
      v5 = [(STWifiStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STWifiStatusDomainData *)self mutableCopy];
      [v4 applyToMutableData:v5];
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
  v4 = a3;
  [v4 encodeBool:-[STWifiStatusDomainData isWifiActive](self forKey:{"isWifiActive"), @"wifiActive"}];
  [v4 encodeInteger:-[STWifiStatusDomainData signalStrengthBars](self forKey:{"signalStrengthBars"), @"signalStrengthBars"}];
  [v4 encodeBool:-[STWifiStatusDomainData isAssociatedToIOSHotspot](self forKey:{"isAssociatedToIOSHotspot"), @"associatedToIOSHotspot"}];
}

- (STWifiStatusDomainData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"wifiActive"];
  v6 = [v4 decodeIntegerForKey:@"signalStrengthBars"];
  v7 = [v4 decodeBoolForKey:@"associatedToIOSHotspot"];

  if (!self)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = STWifiStatusDomainData;
  result = [(STWifiStatusDomainData *)&v9 init];
  if (result)
  {
    result->_wifiActive = v5;
    result->_signalStrengthBars = v6;
    result->_associatedToIOSHotspot = v7;
  }

  return result;
}

@end