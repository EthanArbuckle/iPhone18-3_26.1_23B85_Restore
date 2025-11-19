@interface STVoiceControlStatusDomainData
- (BOOL)isEqual:(id)a3;
- (STVoiceControlStatusDomainData)initWithCoder:(id)a3;
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

@implementation STVoiceControlStatusDomainData

- (id)initWithData:(id)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    v4 = [v3 isVoiceControlActive];
    v5 = [v3 listeningState];

    v6.receiver = v2;
    v6.super_class = STVoiceControlStatusDomainData;
    result = objc_msgSendSuper2(&v6, sel_init);
    if (result)
    {
      *(result + 8) = v4;
      *(result + 2) = v5;
    }
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STVoiceControlStatusDomainData *)self isVoiceControlActive];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __42__STVoiceControlStatusDomainData_isEqual___block_invoke;
  v18[3] = &unk_1E85DDD50;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendBool:v6 counterpart:v18];
  v9 = [(STVoiceControlStatusDomainData *)self listeningState];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __42__STVoiceControlStatusDomainData_isEqual___block_invoke_2;
  v16 = &unk_1E85DE2F8;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendUnsignedInteger:v9 counterpart:&v13];
  LOBYTE(v9) = [v5 isEqual];

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendBool:{-[STVoiceControlStatusDomainData isVoiceControlActive](self, "isVoiceControlActive")}];
  v5 = [v3 appendUnsignedInteger:{-[STVoiceControlStatusDomainData listeningState](self, "listeningState")}];
  v6 = [v3 hash];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableVoiceControlStatusDomainData allocWithZone:a3];

  return [(STVoiceControlStatusDomainData *)v4 initWithData:?];
}

- (id)succinctDescription
{
  v2 = [(STVoiceControlStatusDomainData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STVoiceControlStatusDomainData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STVoiceControlStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v10[2] = __82__STVoiceControlStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

- (id)diffFromData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STVoiceControlStatusDomainDataDiff diffFromData:v4 toData:self];
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
      v5 = [(STVoiceControlStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STVoiceControlStatusDomainData *)self mutableCopy];
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
  [v4 encodeBool:-[STVoiceControlStatusDomainData isVoiceControlActive](self forKey:{"isVoiceControlActive"), @"voiceControlActive"}];
  [v4 encodeInteger:-[STVoiceControlStatusDomainData listeningState](self forKey:{"listeningState"), @"listeningState"}];
}

- (STVoiceControlStatusDomainData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"voiceControlActive"];
  v6 = [v4 decodeIntegerForKey:@"listeningState"];

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