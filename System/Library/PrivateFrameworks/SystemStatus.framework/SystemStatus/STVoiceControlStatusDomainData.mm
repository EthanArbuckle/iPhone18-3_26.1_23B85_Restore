@interface STVoiceControlStatusDomainData
- (BOOL)isEqual:(id)equal;
- (STVoiceControlStatusDomainData)initWithCoder:(id)coder;
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

@implementation STVoiceControlStatusDomainData

- (id)initWithData:(id)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    isVoiceControlActive = [v3 isVoiceControlActive];
    listeningState = [v3 listeningState];

    v6.receiver = v2;
    v6.super_class = STVoiceControlStatusDomainData;
    result = objc_msgSendSuper2(&v6, sel_init);
    if (result)
    {
      *(result + 8) = isVoiceControlActive;
      *(result + 2) = listeningState;
    }
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  isVoiceControlActive = [(STVoiceControlStatusDomainData *)self isVoiceControlActive];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __42__STVoiceControlStatusDomainData_isEqual___block_invoke;
  v18[3] = &unk_1E85DDD50;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendBool:isVoiceControlActive counterpart:v18];
  listeningState = [(STVoiceControlStatusDomainData *)self listeningState];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __42__STVoiceControlStatusDomainData_isEqual___block_invoke_2;
  v16 = &unk_1E85DE2F8;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendUnsignedInteger:listeningState counterpart:&v13];
  LOBYTE(listeningState) = [v5 isEqual];

  return listeningState;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:{-[STVoiceControlStatusDomainData isVoiceControlActive](self, "isVoiceControlActive")}];
  v5 = [builder appendUnsignedInteger:{-[STVoiceControlStatusDomainData listeningState](self, "listeningState")}];
  v6 = [builder hash];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableVoiceControlStatusDomainData allocWithZone:zone];

  return [(STVoiceControlStatusDomainData *)v4 initWithData:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STVoiceControlStatusDomainData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STVoiceControlStatusDomainData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STVoiceControlStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[2] = __82__STVoiceControlStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

uint64_t __82__STVoiceControlStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isVoiceControlActive"), @"voiceControlActive"}];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) listeningState];
  if (v4 > 2)
  {
    v5 = @"(unknown)";
  }

  else
  {
    v5 = off_1E85DEE00[v4];
  }

  return [v3 appendString:v5 withName:@"listeningState"];
}

- (id)diffFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STVoiceControlStatusDomainDataDiff diffFromData:dataCopy toData:self];
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
      v5 = [(STVoiceControlStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STVoiceControlStatusDomainData *)self mutableCopy];
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
  [coderCopy encodeBool:-[STVoiceControlStatusDomainData isVoiceControlActive](self forKey:{"isVoiceControlActive"), @"voiceControlActive"}];
  [coderCopy encodeInteger:-[STVoiceControlStatusDomainData listeningState](self forKey:{"listeningState"), @"listeningState"}];
}

- (STVoiceControlStatusDomainData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"voiceControlActive"];
  v6 = [coderCopy decodeIntegerForKey:@"listeningState"];

  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = STVoiceControlStatusDomainData;
  result = [(STVoiceControlStatusDomainData *)&v8 init];
  if (result)
  {
    result->_voiceControlActive = v5;
    result->_listeningState = v6;
  }

  return result;
}

@end