@interface STStewieStatusDomainDataDiff
+ (id)diffFromData:(id)a3 toData:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOrthogonalToDiff:(id)a3;
- (STStewieStatusDomainDataDiff)initWithCoder:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)dataByApplyingToData:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffByApplyingDiff:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableData:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)initWithStewieActiveChangedValue:(void *)a3 stewieConnectedChangedValue:(void *)a4 stewieSignalStrengthBarsChangedValue:(void *)a5 maxStewieSignalStrengthBarsChangedValue:;
@end

@implementation STStewieStatusDomainDataDiff

+ (id)diffFromData:(id)a3 toData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 isStewieActive];
  if (v7 == [v5 isStewieActive])
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  }

  v9 = [v6 isStewieConnected];
  if (v9 == [v5 isStewieConnected])
  {
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  }

  v11 = [v6 stewieSignalStrengthBars];
  if ([v5 stewieSignalStrengthBars] == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  }

  v13 = [v6 maxStewieSignalStrengthBars];
  if ([v5 maxStewieSignalStrengthBars] == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
  }

  v15 = [[STStewieStatusDomainDataDiff alloc] initWithStewieActiveChangedValue:v8 stewieConnectedChangedValue:v10 stewieSignalStrengthBarsChangedValue:v12 maxStewieSignalStrengthBarsChangedValue:v14];

  return v15;
}

- (void)initWithStewieActiveChangedValue:(void *)a3 stewieConnectedChangedValue:(void *)a4 stewieSignalStrengthBarsChangedValue:(void *)a5 maxStewieSignalStrengthBarsChangedValue:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v22.receiver = a1;
    v22.super_class = STStewieStatusDomainDataDiff;
    a1 = objc_msgSendSuper2(&v22, sel_init);
    if (a1)
    {
      v13 = [v9 copy];
      v14 = a1[1];
      a1[1] = v13;

      v15 = [v10 copy];
      v16 = a1[2];
      a1[2] = v15;

      v17 = [v11 copy];
      v18 = a1[3];
      a1[3] = v17;

      v19 = [v12 copy];
      v20 = a1[4];
      a1[4] = v19;
    }
  }

  return a1;
}

- (id)dataByApplyingToData:(id)a3
{
  v4 = [a3 mutableCopy];
  [(STStewieStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)a3
{
  v12 = a3;
  if (self)
  {
    v4 = self->_stewieActiveChangedValue;
    v5 = v4;
    if (v4)
    {
      [v12 setStewieActive:{-[NSNumber BOOLValue](v4, "BOOLValue")}];
    }

    v6 = self->_stewieConnectedChangedValue;
    v7 = v6;
    if (v6)
    {
      [v12 setStewieConnected:{-[NSNumber BOOLValue](v6, "BOOLValue")}];
    }

    v8 = self->_stewieSignalStrengthBarsChangedValue;
    v9 = v8;
    if (v8)
    {
      [v12 setStewieSignalStrengthBars:{-[NSNumber unsignedIntegerValue](v8, "unsignedIntegerValue")}];
    }

    v10 = self->_maxStewieSignalStrengthBarsChangedValue;
    if (v10)
    {
      v11 = v10;
      [v12 setMaxStewieSignalStrengthBars:{-[NSNumber unsignedIntegerValue](v10, "unsignedIntegerValue")}];
    }
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v5 = 0;
  }
}

- (BOOL)isEmpty
{
  if (!self)
  {
    maxStewieSignalStrengthBarsChangedValue = 0;
    goto LABEL_9;
  }

  v3 = self->_stewieActiveChangedValue;
  if (!v3)
  {
    v5 = self->_stewieConnectedChangedValue;
    if (v5)
    {
      v4 = 0;
LABEL_11:

      v3 = 0;
      goto LABEL_12;
    }

    v6 = self->_stewieSignalStrengthBarsChangedValue;
    if (v6)
    {
      v4 = 0;
LABEL_10:

      v5 = 0;
      goto LABEL_11;
    }

    maxStewieSignalStrengthBarsChangedValue = self->_maxStewieSignalStrengthBarsChangedValue;
LABEL_9:
    v6 = 0;
    v4 = maxStewieSignalStrengthBarsChangedValue == 0;
    goto LABEL_10;
  }

  v4 = 0;
LABEL_12:

  return v4;
}

- (id)diffByApplyingDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (((!v4 || (v5 = v4[1]) == 0) && (!self ? (stewieActiveChangedValue = 0) : (stewieActiveChangedValue = self->_stewieActiveChangedValue), v5 = stewieActiveChangedValue, !v4) || (v7 = v4[2]) == 0) && (!self ? (stewieConnectedChangedValue = 0) : (stewieConnectedChangedValue = self->_stewieConnectedChangedValue), v7 = stewieConnectedChangedValue, !v4) || (v9 = v4[3]) == 0)
    {
      v10 = self ? self->_stewieSignalStrengthBarsChangedValue : 0;
      v9 = v10;
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    v11 = v4[4];
    if (!v11)
    {
LABEL_16:
      if (self)
      {
        maxStewieSignalStrengthBarsChangedValue = self->_maxStewieSignalStrengthBarsChangedValue;
      }

      else
      {
        maxStewieSignalStrengthBarsChangedValue = 0;
      }

      v11 = maxStewieSignalStrengthBarsChangedValue;
    }

    v13 = [[STStewieStatusDomainDataDiff alloc] initWithStewieActiveChangedValue:v5 stewieConnectedChangedValue:v7 stewieSignalStrengthBarsChangedValue:v9 maxStewieSignalStrengthBarsChangedValue:v11];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isOrthogonalToDiff:(id)a3
{
  v4 = a3;
  if ([(STStewieStatusDomainDataDiff *)self isEmpty])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEmpty];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  if (self)
  {
    stewieActiveChangedValue = self->_stewieActiveChangedValue;
  }

  else
  {
    stewieActiveChangedValue = 0;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __40__STStewieStatusDomainDataDiff_isEqual___block_invoke;
  v28[3] = &unk_1E85DDCD8;
  v7 = v4;
  v29 = v7;
  v8 = [v5 appendObject:stewieActiveChangedValue counterpart:v28];
  if (self)
  {
    stewieConnectedChangedValue = self->_stewieConnectedChangedValue;
  }

  else
  {
    stewieConnectedChangedValue = 0;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __40__STStewieStatusDomainDataDiff_isEqual___block_invoke_2;
  v26[3] = &unk_1E85DDCD8;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendObject:stewieConnectedChangedValue counterpart:v26];
  if (self)
  {
    stewieSignalStrengthBarsChangedValue = self->_stewieSignalStrengthBarsChangedValue;
  }

  else
  {
    stewieSignalStrengthBarsChangedValue = 0;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __40__STStewieStatusDomainDataDiff_isEqual___block_invoke_3;
  v24[3] = &unk_1E85DDCD8;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendObject:stewieSignalStrengthBarsChangedValue counterpart:v24];
  if (self)
  {
    self = self->_maxStewieSignalStrengthBarsChangedValue;
  }

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __40__STStewieStatusDomainDataDiff_isEqual___block_invoke_4;
  v22 = &unk_1E85DDCD8;
  v23 = v13;
  v15 = v13;
  v16 = [v5 appendObject:self counterpart:&v19];
  v17 = [v5 isEqual];

  return v17;
}

id __40__STStewieStatusDomainDataDiff_isEqual___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

id __40__STStewieStatusDomainDataDiff_isEqual___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

id __40__STStewieStatusDomainDataDiff_isEqual___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return 0;
  }
}

id __40__STStewieStatusDomainDataDiff_isEqual___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 32);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = v3;
  if (self)
  {
    v5 = [v3 appendObject:self->_stewieActiveChangedValue];
    stewieConnectedChangedValue = self->_stewieConnectedChangedValue;
  }

  else
  {
    v13 = [v3 appendObject:0];
    stewieConnectedChangedValue = 0;
  }

  v7 = [v4 appendObject:stewieConnectedChangedValue];
  if (self)
  {
    v8 = [v4 appendObject:self->_stewieSignalStrengthBarsChangedValue];
    maxStewieSignalStrengthBarsChangedValue = self->_maxStewieSignalStrengthBarsChangedValue;
  }

  else
  {
    v14 = [v4 appendObject:0];
    maxStewieSignalStrengthBarsChangedValue = 0;
  }

  v10 = [v4 appendObject:maxStewieSignalStrengthBarsChangedValue];
  v11 = [v4 hash];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (self)
  {
    [v5 encodeObject:self->_stewieActiveChangedValue forKey:@"stewieActiveChangedValue"];
    [v5 encodeObject:self->_stewieConnectedChangedValue forKey:@"stewieConnectedChangedValue"];
    [v5 encodeObject:self->_stewieSignalStrengthBarsChangedValue forKey:@"stewieSignalStrengthBarsChangedValue"];
    maxStewieSignalStrengthBarsChangedValue = self->_maxStewieSignalStrengthBarsChangedValue;
  }

  else
  {
    [v5 encodeObject:0 forKey:@"stewieActiveChangedValue"];
    [v5 encodeObject:0 forKey:@"stewieConnectedChangedValue"];
    [v5 encodeObject:0 forKey:@"stewieSignalStrengthBarsChangedValue"];
    maxStewieSignalStrengthBarsChangedValue = 0;
  }

  [v5 encodeObject:maxStewieSignalStrengthBarsChangedValue forKey:@"maxStewieSignalStrengthBarsChangedValue"];
}

- (STStewieStatusDomainDataDiff)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stewieActiveChangedValue"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stewieConnectedChangedValue"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stewieSignalStrengthBarsChangedValue"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxStewieSignalStrengthBarsChangedValue"];

  v9 = [(STStewieStatusDomainDataDiff *)self initWithStewieActiveChangedValue:v5 stewieConnectedChangedValue:v6 stewieSignalStrengthBarsChangedValue:v7 maxStewieSignalStrengthBarsChangedValue:v8];
  return v9;
}

- (id)succinctDescription
{
  v2 = [(STStewieStatusDomainDataDiff *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStewieStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStewieStatusDomainDataDiff *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v10[2] = __80__STStewieStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

void __80__STStewieStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v2 = v2[1];
  }

  v4 = v2;
  v5 = [v3 appendBool:objc_msgSend(v4 withName:{"BOOLValue"), @"stewieActiveChanged"}];

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v6)
  {
    v6 = v6[2];
  }

  v8 = v6;
  v9 = [v7 appendBool:objc_msgSend(v8 withName:{"BOOLValue"), @"stewieConnectedChanged"}];

  v10 = *(a1 + 40);
  if (v10)
  {
    v16 = *(v10 + 24);
    if (v16)
    {
      v11 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(v16 withName:{"unsignedIntegerValue"), @"stewieSignalStrengthBarsChanged"}];
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = *(v12 + 32);
      if (v13)
      {
        v14 = v13;
        v15 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(v13 withName:{"unsignedIntegerValue"), @"maxStewieSignalStrengthBarsChanged"}];
      }
    }
  }

  else
  {
    v16 = 0;
  }
}

@end