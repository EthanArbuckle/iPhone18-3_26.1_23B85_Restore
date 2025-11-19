@interface STStewieStatusDomainData
- (BOOL)isEqual:(id)a3;
- (STStewieStatusDomainData)initWithCoder:(id)a3;
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

@implementation STStewieStatusDomainData

- (id)initWithData:(id)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    v4 = [v3 isStewieActive];
    v5 = [v3 isStewieConnected];
    v6 = [v3 stewieSignalStrengthBars];
    v7 = [v3 maxStewieSignalStrengthBars];

    v8.receiver = v2;
    v8.super_class = STStewieStatusDomainData;
    result = objc_msgSendSuper2(&v8, sel_init);
    if (result)
    {
      *(result + 8) = v4;
      *(result + 9) = v5;
      *(result + 2) = v6;
      *(result + 3) = v7;
    }
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STStewieStatusDomainData *)self isStewieActive];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __36__STStewieStatusDomainData_isEqual___block_invoke;
  v28[3] = &unk_1E85DDD50;
  v7 = v4;
  v29 = v7;
  v8 = [v5 appendBool:v6 counterpart:v28];
  v9 = [(STStewieStatusDomainData *)self isStewieConnected];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __36__STStewieStatusDomainData_isEqual___block_invoke_2;
  v26[3] = &unk_1E85DDD50;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendBool:v9 counterpart:v26];
  v12 = [(STStewieStatusDomainData *)self stewieSignalStrengthBars];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __36__STStewieStatusDomainData_isEqual___block_invoke_3;
  v24[3] = &unk_1E85DE2F8;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendUnsignedInteger:v12 counterpart:v24];
  v15 = [(STStewieStatusDomainData *)self maxStewieSignalStrengthBars];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __36__STStewieStatusDomainData_isEqual___block_invoke_4;
  v22 = &unk_1E85DE2F8;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendUnsignedInteger:v15 counterpart:&v19];
  LOBYTE(v15) = [v5 isEqual];

  return v15;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendBool:{-[STStewieStatusDomainData isStewieActive](self, "isStewieActive")}];
  v5 = [v3 appendBool:{-[STStewieStatusDomainData isStewieConnected](self, "isStewieConnected")}];
  v6 = [v3 appendUnsignedInteger:{-[STStewieStatusDomainData stewieSignalStrengthBars](self, "stewieSignalStrengthBars")}];
  v7 = [v3 appendUnsignedInteger:{-[STStewieStatusDomainData maxStewieSignalStrengthBars](self, "maxStewieSignalStrengthBars")}];
  v8 = [v3 hash];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableStewieStatusDomainData allocWithZone:a3];

  return [(STStewieStatusDomainData *)v4 initWithData:?];
}

- (id)succinctDescription
{
  v2 = [(STStewieStatusDomainData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStewieStatusDomainData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStewieStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v10[2] = __76__STStewieStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

id __76__STStewieStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isStewieActive"), @"stewieActive"}];
  v3 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isStewieConnected"), @"stewieConnected"}];
  v4 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"stewieSignalStrengthBars"), @"stewieSignalStrengthBars"}];
  return [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"maxStewieSignalStrengthBars"), @"maxStewieSignalStrengthBars"}];
}

- (id)diffFromData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STStewieStatusDomainDataDiff diffFromData:v4 toData:self];
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
      v5 = [(STStewieStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STStewieStatusDomainData *)self mutableCopy];
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
  [v4 encodeBool:-[STStewieStatusDomainData isStewieActive](self forKey:{"isStewieActive"), @"stewieActive"}];
  [v4 encodeBool:-[STStewieStatusDomainData isStewieConnected](self forKey:{"isStewieConnected"), @"stewieConnected"}];
  [v4 encodeInteger:-[STStewieStatusDomainData stewieSignalStrengthBars](self forKey:{"stewieSignalStrengthBars"), @"stewieSignalStrengthBars"}];
  [v4 encodeInteger:-[STStewieStatusDomainData maxStewieSignalStrengthBars](self forKey:{"maxStewieSignalStrengthBars"), @"maxStewieSignalStrengthBars"}];
}

- (STStewieStatusDomainData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"stewieActive"];
  v6 = [v4 decodeBoolForKey:@"stewieConnected"];
  v7 = [v4 decodeIntegerForKey:@"stewieSignalStrengthBars"];
  v8 = [v4 decodeIntegerForKey:@"maxStewieSignalStrengthBars"];

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