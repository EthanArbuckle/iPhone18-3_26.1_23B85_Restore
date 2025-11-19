@interface STStatusItemsStatusDomainDataChangeContext
- (BOOL)isEqual:(id)a3;
- (STStatusItemsStatusDomainDataChangeContext)init;
- (STStatusItemsStatusDomainDataChangeContext)initWithCoder:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusItemsStatusDomainDataChangeContext

- (STStatusItemsStatusDomainDataChangeContext)init
{
  if (self)
  {
    v2 = self;
    v3 = [0 isUserInitiated];
    v4.receiver = v2;
    v4.super_class = STStatusItemsStatusDomainDataChangeContext;
    self = [(STStatusItemsStatusDomainDataChangeContext *)&v4 init];
    if (self)
    {
      self->_userInitiated = v3;
    }
  }

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STStatusItemsStatusDomainDataChangeContext *)self isUserInitiated];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__STStatusItemsStatusDomainDataChangeContext_isEqual___block_invoke;
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
  v4 = [v3 appendBool:{-[STStatusItemsStatusDomainDataChangeContext isUserInitiated](self, "isUserInitiated")}];
  v5 = [v3 hash];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  result = [STMutableStatusItemsStatusDomainDataChangeContext allocWithZone:a3];
  if (result)
  {
    v5 = result;
    v6 = [(STStatusItemsStatusDomainDataChangeContext *)self isUserInitiated];
    v7.receiver = v5;
    v7.super_class = STStatusItemsStatusDomainDataChangeContext;
    result = [(STStatusItemsStatusDomainDataChangeContext *)&v7 init];
    if (result)
    {
      *(result + 8) = v6;
    }
  }

  return result;
}

- (id)succinctDescription
{
  v2 = [(STStatusItemsStatusDomainDataChangeContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusItemsStatusDomainDataChangeContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusItemsStatusDomainDataChangeContext *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v10[2] = __94__STStatusItemsStatusDomainDataChangeContext__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[STStatusItemsStatusDomainDataChangeContext isUserInitiated](self forKey:{"isUserInitiated"), @"userInitiated"}];
}

- (STStatusItemsStatusDomainDataChangeContext)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"userInitiated"];
  if (!self)
  {
    return 0;
  }

  v5 = v4;
  v7.receiver = self;
  v7.super_class = STStatusItemsStatusDomainDataChangeContext;
  result = [(STStatusItemsStatusDomainDataChangeContext *)&v7 init];
  if (result)
  {
    result->_userInitiated = v5;
  }

  return result;
}

@end