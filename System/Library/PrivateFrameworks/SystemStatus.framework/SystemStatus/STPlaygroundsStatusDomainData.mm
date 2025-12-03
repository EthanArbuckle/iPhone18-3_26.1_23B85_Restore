@interface STPlaygroundsStatusDomainData
- (BOOL)isEqual:(id)equal;
- (STPlaygroundsStatusDomainData)init;
- (STPlaygroundsStatusDomainData)initWithCoder:(id)coder;
- (id)dataByApplyingDiff:(id)diff;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffFromData:(id)data;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STPlaygroundsStatusDomainData

- (STPlaygroundsStatusDomainData)init
{
  if (self)
  {
    selfCopy = self;
    isPlaygroundsActive = [0 isPlaygroundsActive];
    v4.receiver = selfCopy;
    v4.super_class = STPlaygroundsStatusDomainData;
    self = [(STPlaygroundsStatusDomainData *)&v4 init];
    if (self)
    {
      self->_playgroundsActive = isPlaygroundsActive;
    }
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  isPlaygroundsActive = [(STPlaygroundsStatusDomainData *)self isPlaygroundsActive];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__STPlaygroundsStatusDomainData_isEqual___block_invoke;
  v10[3] = &unk_1E85DDD50;
  v11 = equalCopy;
  v7 = equalCopy;
  v8 = [v5 appendBool:isPlaygroundsActive counterpart:v10];
  LOBYTE(isPlaygroundsActive) = [v5 isEqual];

  return isPlaygroundsActive;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:{-[STPlaygroundsStatusDomainData isPlaygroundsActive](self, "isPlaygroundsActive")}];
  v5 = [builder hash];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  result = [STMutablePlaygroundsStatusDomainData allocWithZone:zone];
  if (result)
  {
    v5 = result;
    isPlaygroundsActive = [(STPlaygroundsStatusDomainData *)self isPlaygroundsActive];
    v7.receiver = v5;
    v7.super_class = STPlaygroundsStatusDomainData;
    result = [(STPlaygroundsStatusDomainData *)&v7 init];
    if (result)
    {
      *(result + 8) = isPlaygroundsActive;
    }
  }

  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STPlaygroundsStatusDomainData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STPlaygroundsStatusDomainData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STPlaygroundsStatusDomainData *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__STPlaygroundsStatusDomainData_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E85DDD00;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

- (id)diffFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STPlaygroundsStatusDomainDataDiff diffFromData:dataCopy toData:self];
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
      v5 = [(STPlaygroundsStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STPlaygroundsStatusDomainData *)self mutableCopy];
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
  [coderCopy encodeBool:-[STPlaygroundsStatusDomainData isPlaygroundsActive](self forKey:{"isPlaygroundsActive"), @"playgroundsActive"}];
}

- (STPlaygroundsStatusDomainData)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"playgroundsActive"];
  if (!self)
  {
    return 0;
  }

  v5 = v4;
  v7.receiver = self;
  v7.super_class = STPlaygroundsStatusDomainData;
  result = [(STPlaygroundsStatusDomainData *)&v7 init];
  if (result)
  {
    result->_playgroundsActive = v5;
  }

  return result;
}

@end