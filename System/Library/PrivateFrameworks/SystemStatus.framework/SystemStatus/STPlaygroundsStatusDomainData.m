@interface STPlaygroundsStatusDomainData
- (BOOL)isEqual:(id)a3;
- (STPlaygroundsStatusDomainData)init;
- (STPlaygroundsStatusDomainData)initWithCoder:(id)a3;
- (id)dataByApplyingDiff:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffFromData:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STPlaygroundsStatusDomainData

- (STPlaygroundsStatusDomainData)init
{
  if (self)
  {
    v2 = self;
    v3 = [0 isPlaygroundsActive];
    v4.receiver = v2;
    v4.super_class = STPlaygroundsStatusDomainData;
    self = [(STPlaygroundsStatusDomainData *)&v4 init];
    if (self)
    {
      self->_playgroundsActive = v3;
    }
  }

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STPlaygroundsStatusDomainData *)self isPlaygroundsActive];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__STPlaygroundsStatusDomainData_isEqual___block_invoke;
  v10[3] = &unk_1E85DDD50;
  v11 = v4;
  v7 = v4;
  v8 = [v5 appendBool:v6 counterpart:v10];
  LOBYTE(v6) = [v5 isEqual];

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendBool:{-[STPlaygroundsStatusDomainData isPlaygroundsActive](self, "isPlaygroundsActive")}];
  v5 = [v3 hash];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  result = [STMutablePlaygroundsStatusDomainData allocWithZone:a3];
  if (result)
  {
    v5 = result;
    v6 = [(STPlaygroundsStatusDomainData *)self isPlaygroundsActive];
    v7.receiver = v5;
    v7.super_class = STPlaygroundsStatusDomainData;
    result = [(STPlaygroundsStatusDomainData *)&v7 init];
    if (result)
    {
      *(result + 8) = v6;
    }
  }

  return result;
}

- (id)succinctDescription
{
  v2 = [(STPlaygroundsStatusDomainData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STPlaygroundsStatusDomainData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(STPlaygroundsStatusDomainData *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__STPlaygroundsStatusDomainData_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E85DDD00;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

- (id)diffFromData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STPlaygroundsStatusDomainDataDiff diffFromData:v4 toData:self];
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
      v5 = [(STPlaygroundsStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STPlaygroundsStatusDomainData *)self mutableCopy];
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
  [v4 encodeBool:-[STPlaygroundsStatusDomainData isPlaygroundsActive](self forKey:{"isPlaygroundsActive"), @"playgroundsActive"}];
}

- (STPlaygroundsStatusDomainData)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"playgroundsActive"];
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