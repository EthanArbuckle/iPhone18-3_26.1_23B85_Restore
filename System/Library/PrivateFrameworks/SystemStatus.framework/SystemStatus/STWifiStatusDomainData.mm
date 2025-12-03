@interface STWifiStatusDomainData
- (BOOL)isEqual:(id)equal;
- (STWifiStatusDomainData)initWithCoder:(id)coder;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)dataByApplyingDiff:(id)diff;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffFromData:(id)data;
- (id)initWithData:(id)result;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STWifiStatusDomainData

- (id)initWithData:(id)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    isWifiActive = [v3 isWifiActive];
    signalStrengthBars = [v3 signalStrengthBars];
    isAssociatedToIOSHotspot = [v3 isAssociatedToIOSHotspot];

    v7.receiver = v2;
    v7.super_class = STWifiStatusDomainData;
    result = objc_msgSendSuper2(&v7, sel_init);
    if (result)
    {
      *(result + 8) = isWifiActive;
      *(result + 2) = signalStrengthBars;
      *(result + 24) = isAssociatedToIOSHotspot;
    }
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  isWifiActive = [(STWifiStatusDomainData *)self isWifiActive];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __34__STWifiStatusDomainData_isEqual___block_invoke;
  v20[3] = &unk_1E85DDD50;
  v7 = equalCopy;
  v21 = v7;
  v8 = [v5 appendBool:isWifiActive counterpart:v20];
  signalStrengthBars = [(STWifiStatusDomainData *)self signalStrengthBars];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __34__STWifiStatusDomainData_isEqual___block_invoke_2;
  v18[3] = &unk_1E85DE2F8;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendUnsignedInteger:signalStrengthBars counterpart:v18];
  isAssociatedToIOSHotspot = [(STWifiStatusDomainData *)self isAssociatedToIOSHotspot];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __34__STWifiStatusDomainData_isEqual___block_invoke_3;
  v16[3] = &unk_1E85DDD50;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendBool:isAssociatedToIOSHotspot counterpart:v16];
  LOBYTE(isAssociatedToIOSHotspot) = [v5 isEqual];

  return isAssociatedToIOSHotspot;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:{-[STWifiStatusDomainData isWifiActive](self, "isWifiActive")}];
  v5 = [builder appendUnsignedInteger:{-[STWifiStatusDomainData signalStrengthBars](self, "signalStrengthBars")}];
  v6 = [builder appendBool:{-[STWifiStatusDomainData isAssociatedToIOSHotspot](self, "isAssociatedToIOSHotspot")}];
  v7 = [builder hash];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableWifiStatusDomainData allocWithZone:zone];

  return [(STWifiStatusDomainData *)v4 initWithData:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STWifiStatusDomainData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STWifiStatusDomainData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STWifiStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[2] = __74__STWifiStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

id __74__STWifiStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isWifiActive"), @"wifiActive"}];
  v3 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"signalStrengthBars"), @"signalStrengthBars"}];
  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isAssociatedToIOSHotspot"), @"associatedToIOSHotspot"}];
}

- (id)diffFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STWifiStatusDomainDataDiff diffFromData:dataCopy toData:self];
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
      v5 = [(STWifiStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STWifiStatusDomainData *)self mutableCopy];
      [diffCopy applyToMutableData:v5];
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
  [coderCopy encodeBool:-[STWifiStatusDomainData isWifiActive](self forKey:{"isWifiActive"), @"wifiActive"}];
  [coderCopy encodeInteger:-[STWifiStatusDomainData signalStrengthBars](self forKey:{"signalStrengthBars"), @"signalStrengthBars"}];
  [coderCopy encodeBool:-[STWifiStatusDomainData isAssociatedToIOSHotspot](self forKey:{"isAssociatedToIOSHotspot"), @"associatedToIOSHotspot"}];
}

- (STWifiStatusDomainData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"wifiActive"];
  v6 = [coderCopy decodeIntegerForKey:@"signalStrengthBars"];
  v7 = [coderCopy decodeBoolForKey:@"associatedToIOSHotspot"];

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