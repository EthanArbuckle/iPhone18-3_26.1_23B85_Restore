@interface STPlaygroundsStatusDomainDataDiff
+ (id)diffFromData:(id)data toData:(id)toData;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOrthogonalToDiff:(id)diff;
- (STPlaygroundsStatusDomainDataDiff)initWithCoder:(id)coder;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)dataByApplyingToData:(id)data;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffByApplyingDiff:(id)diff;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableData:(id)data;
- (void)encodeWithCoder:(id)coder;
- (void)initWithPlaygroundsActiveChangedValue:(void *)value;
@end

@implementation STPlaygroundsStatusDomainDataDiff

+ (id)diffFromData:(id)data toData:(id)toData
{
  dataCopy = data;
  isPlaygroundsActive = [toData isPlaygroundsActive];
  isPlaygroundsActive2 = [dataCopy isPlaygroundsActive];

  if (isPlaygroundsActive == isPlaygroundsActive2)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:isPlaygroundsActive];
  }

  v9 = [[STPlaygroundsStatusDomainDataDiff alloc] initWithPlaygroundsActiveChangedValue:v8];

  return v9;
}

- (void)initWithPlaygroundsActiveChangedValue:(void *)value
{
  v3 = a2;
  if (value)
  {
    v7.receiver = value;
    v7.super_class = STPlaygroundsStatusDomainDataDiff;
    value = objc_msgSendSuper2(&v7, sel_init);
    if (value)
    {
      v4 = [v3 copy];
      v5 = value[1];
      value[1] = v4;
    }
  }

  return value;
}

- (id)dataByApplyingToData:(id)data
{
  v4 = [data mutableCopy];
  [(STPlaygroundsStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)data
{
  dataCopy = data;
  if (self)
  {
    v4 = self->_playgroundsActiveChangedValue;
    if (v4)
    {
      v5 = v4;
      [dataCopy setPlaygroundsActive:{-[NSNumber BOOLValue](v4, "BOOLValue")}];
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

- (id)diffByApplyingDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!diffCopy || (v5 = diffCopy[1]) == 0)
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

- (BOOL)isOrthogonalToDiff:(id)diff
{
  diffCopy = diff;
  if ([(STPlaygroundsStatusDomainDataDiff *)self isEmpty])
  {
    isEmpty = 1;
  }

  else
  {
    isEmpty = [diffCopy isEmpty];
  }

  return isEmpty;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  if (self)
  {
    self = self->_playgroundsActiveChangedValue;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__STPlaygroundsStatusDomainDataDiff_isEqual___block_invoke;
  v10[3] = &unk_1E85DDCD8;
  v11 = equalCopy;
  v6 = equalCopy;
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
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = builder;
  if (self)
  {
    playgroundsActiveChangedValue = self->_playgroundsActiveChangedValue;
  }

  else
  {
    playgroundsActiveChangedValue = 0;
  }

  v6 = [builder appendObject:playgroundsActiveChangedValue];
  v7 = [v4 hash];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    playgroundsActiveChangedValue = self->_playgroundsActiveChangedValue;
  }

  else
  {
    playgroundsActiveChangedValue = 0;
  }

  [coder encodeObject:playgroundsActiveChangedValue forKey:@"playgroundsActiveChangedValue"];
}

- (STPlaygroundsStatusDomainDataDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playgroundsActiveChangedValue"];

  v6 = [(STPlaygroundsStatusDomainDataDiff *)self initWithPlaygroundsActiveChangedValue:v5];
  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STPlaygroundsStatusDomainDataDiff *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STPlaygroundsStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STPlaygroundsStatusDomainDataDiff *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[2] = __85__STPlaygroundsStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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