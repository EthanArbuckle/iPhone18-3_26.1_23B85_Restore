@interface STStewieStatusDomainData
- (BOOL)isEqual:(id)equal;
- (STStewieStatusDomainData)initWithCoder:(id)coder;
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

@implementation STStewieStatusDomainData

- (id)initWithData:(id)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    isStewieActive = [v3 isStewieActive];
    isStewieConnected = [v3 isStewieConnected];
    stewieSignalStrengthBars = [v3 stewieSignalStrengthBars];
    maxStewieSignalStrengthBars = [v3 maxStewieSignalStrengthBars];

    v8.receiver = v2;
    v8.super_class = STStewieStatusDomainData;
    result = objc_msgSendSuper2(&v8, sel_init);
    if (result)
    {
      *(result + 8) = isStewieActive;
      *(result + 9) = isStewieConnected;
      *(result + 2) = stewieSignalStrengthBars;
      *(result + 3) = maxStewieSignalStrengthBars;
    }
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  isStewieActive = [(STStewieStatusDomainData *)self isStewieActive];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __36__STStewieStatusDomainData_isEqual___block_invoke;
  v28[3] = &unk_1E85DDD50;
  v7 = equalCopy;
  v29 = v7;
  v8 = [v5 appendBool:isStewieActive counterpart:v28];
  isStewieConnected = [(STStewieStatusDomainData *)self isStewieConnected];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __36__STStewieStatusDomainData_isEqual___block_invoke_2;
  v26[3] = &unk_1E85DDD50;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendBool:isStewieConnected counterpart:v26];
  stewieSignalStrengthBars = [(STStewieStatusDomainData *)self stewieSignalStrengthBars];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __36__STStewieStatusDomainData_isEqual___block_invoke_3;
  v24[3] = &unk_1E85DE2F8;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendUnsignedInteger:stewieSignalStrengthBars counterpart:v24];
  maxStewieSignalStrengthBars = [(STStewieStatusDomainData *)self maxStewieSignalStrengthBars];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __36__STStewieStatusDomainData_isEqual___block_invoke_4;
  v22 = &unk_1E85DE2F8;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendUnsignedInteger:maxStewieSignalStrengthBars counterpart:&v19];
  LOBYTE(maxStewieSignalStrengthBars) = [v5 isEqual];

  return maxStewieSignalStrengthBars;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:{-[STStewieStatusDomainData isStewieActive](self, "isStewieActive")}];
  v5 = [builder appendBool:{-[STStewieStatusDomainData isStewieConnected](self, "isStewieConnected")}];
  v6 = [builder appendUnsignedInteger:{-[STStewieStatusDomainData stewieSignalStrengthBars](self, "stewieSignalStrengthBars")}];
  v7 = [builder appendUnsignedInteger:{-[STStewieStatusDomainData maxStewieSignalStrengthBars](self, "maxStewieSignalStrengthBars")}];
  v8 = [builder hash];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableStewieStatusDomainData allocWithZone:zone];

  return [(STStewieStatusDomainData *)v4 initWithData:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STStewieStatusDomainData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStewieStatusDomainData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStewieStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[2] = __76__STStewieStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

id __76__STStewieStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isStewieActive"), @"stewieActive"}];
  v3 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isStewieConnected"), @"stewieConnected"}];
  v4 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"stewieSignalStrengthBars"), @"stewieSignalStrengthBars"}];
  return [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"maxStewieSignalStrengthBars"), @"maxStewieSignalStrengthBars"}];
}

- (id)diffFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STStewieStatusDomainDataDiff diffFromData:dataCopy toData:self];
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
      v5 = [(STStewieStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STStewieStatusDomainData *)self mutableCopy];
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
  [coderCopy encodeBool:-[STStewieStatusDomainData isStewieActive](self forKey:{"isStewieActive"), @"stewieActive"}];
  [coderCopy encodeBool:-[STStewieStatusDomainData isStewieConnected](self forKey:{"isStewieConnected"), @"stewieConnected"}];
  [coderCopy encodeInteger:-[STStewieStatusDomainData stewieSignalStrengthBars](self forKey:{"stewieSignalStrengthBars"), @"stewieSignalStrengthBars"}];
  [coderCopy encodeInteger:-[STStewieStatusDomainData maxStewieSignalStrengthBars](self forKey:{"maxStewieSignalStrengthBars"), @"maxStewieSignalStrengthBars"}];
}

- (STStewieStatusDomainData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"stewieActive"];
  v6 = [coderCopy decodeBoolForKey:@"stewieConnected"];
  v7 = [coderCopy decodeIntegerForKey:@"stewieSignalStrengthBars"];
  v8 = [coderCopy decodeIntegerForKey:@"maxStewieSignalStrengthBars"];

  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = STStewieStatusDomainData;
  result = [(STStewieStatusDomainData *)&v10 init];
  if (result)
  {
    result->_stewieActive = v5;
    result->_stewieConnected = v6;
    result->_stewieSignalStrengthBars = v7;
    result->_maxStewieSignalStrengthBars = v8;
  }

  return result;
}

@end