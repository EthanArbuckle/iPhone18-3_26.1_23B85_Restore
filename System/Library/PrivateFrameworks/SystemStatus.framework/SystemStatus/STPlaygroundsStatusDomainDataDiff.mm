@interface STPlaygroundsStatusDomainDataDiff
+ (id)diffFromData:(id)a3 toData:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOrthogonalToDiff:(id)a3;
- (STPlaygroundsStatusDomainDataDiff)initWithCoder:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)dataByApplyingToData:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffByApplyingDiff:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableData:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)initWithPlaygroundsActiveChangedValue:(void *)a1;
@end

@implementation STPlaygroundsStatusDomainDataDiff

+ (id)diffFromData:(id)a3 toData:(id)a4
{
  v5 = a3;
  v6 = [a4 isPlaygroundsActive];
  v7 = [v5 isPlaygroundsActive];

  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  }

  v9 = [[STPlaygroundsStatusDomainDataDiff alloc] initWithPlaygroundsActiveChangedValue:v8];

  return v9;
}

- (void)initWithPlaygroundsActiveChangedValue:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = STPlaygroundsStatusDomainDataDiff;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

- (id)dataByApplyingToData:(id)a3
{
  v4 = [a3 mutableCopy];
  [(STPlaygroundsStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)a3
{
  v6 = a3;
  if (self)
  {
    v4 = self->_playgroundsActiveChangedValue;
    if (v4)
    {
      v5 = v4;
      [v6 setPlaygroundsActive:{-[NSNumber BOOLValue](v4, "BOOLValue")}];
    }
  }
}

- (BOOL)isEmpty
{
  if (self)
  {
    playgroundsActiveChangedValue = self->_playgroundsActiveChangedValue;
  }

  else
  {
    playgroundsActiveChangedValue = 0;
  }

  return playgroundsActiveChangedValue == 0;
}

- (id)diffByApplyingDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v4 || (v5 = v4[1]) == 0)
    {
      if (self)
      {
        playgroundsActiveChangedValue = self->_playgroundsActiveChangedValue;
      }

      else
      {
        playgroundsActiveChangedValue = 0;
      }

      v5 = playgroundsActiveChangedValue;
    }

    v7 = [[STPlaygroundsStatusDomainDataDiff alloc] initWithPlaygroundsActiveChangedValue:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isOrthogonalToDiff:(id)a3
{
  v4 = a3;
  if ([(STPlaygroundsStatusDomainDataDiff *)self isEmpty])
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
    self = self->_playgroundsActiveChangedValue;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__STPlaygroundsStatusDomainDataDiff_isEqual___block_invoke;
  v10[3] = &unk_1E85DDCD8;
  v11 = v4;
  v6 = v4;
  v7 = [v5 appendObject:self counterpart:v10];
  v8 = [v5 isEqual];

  return v8;
}

id __45__STPlaygroundsStatusDomainDataDiff_isEqual___block_invoke(uint64_t a1)
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

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = v3;
  if (self)
  {
    playgroundsActiveChangedValue = self->_playgroundsActiveChangedValue;
  }

  else
  {
    playgroundsActiveChangedValue = 0;
  }

  v6 = [v3 appendObject:playgroundsActiveChangedValue];
  v7 = [v4 hash];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    playgroundsActiveChangedValue = self->_playgroundsActiveChangedValue;
  }

  else
  {
    playgroundsActiveChangedValue = 0;
  }

  [a3 encodeObject:playgroundsActiveChangedValue forKey:@"playgroundsActiveChangedValue"];
}

- (STPlaygroundsStatusDomainDataDiff)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playgroundsActiveChangedValue"];

  v6 = [(STPlaygroundsStatusDomainDataDiff *)self initWithPlaygroundsActiveChangedValue:v5];
  return v6;
}

- (id)succinctDescription
{
  v2 = [(STPlaygroundsStatusDomainDataDiff *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STPlaygroundsStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STPlaygroundsStatusDomainDataDiff *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v10[2] = __85__STPlaygroundsStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

void __85__STPlaygroundsStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = v1[1];
  }

  v4 = v1;
  v3 = [v2 appendBool:objc_msgSend(v4 withName:{"BOOLValue"), @"playgroundsActiveChanged"}];
}

@end