@interface STLocationStatusDomainDataChangeContext
- (BOOL)isEqual:(id)a3;
- (STLocationStatusDomainDataChangeContext)initWithCoder:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initWithChangeContext:(id)result;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STLocationStatusDomainDataChangeContext

- (id)initWithChangeContext:(id)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    v4 = [v3 isUserInitiated];
    v5 = [v3 wantsProminentIndication];

    v6.receiver = v2;
    v6.super_class = STLocationStatusDomainDataChangeContext;
    result = objc_msgSendSuper2(&v6, sel_init);
    if (result)
    {
      *(result + 8) = v4;
      *(result + 9) = v5;
    }
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STLocationStatusDomainDataChangeContext *)self isUserInitiated];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__STLocationStatusDomainDataChangeContext_isEqual___block_invoke;
  v18[3] = &unk_1E85DDD50;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendBool:v6 counterpart:v18];
  v9 = [(STLocationStatusDomainDataChangeContext *)self wantsProminentIndication];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __51__STLocationStatusDomainDataChangeContext_isEqual___block_invoke_2;
  v16 = &unk_1E85DDD50;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendBool:v9 counterpart:&v13];
  LOBYTE(v9) = [v5 isEqual];

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendBool:{-[STLocationStatusDomainDataChangeContext isUserInitiated](self, "isUserInitiated")}];
  v5 = [v3 appendBool:{-[STLocationStatusDomainDataChangeContext wantsProminentIndication](self, "wantsProminentIndication")}];
  v6 = [v3 hash];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableLocationStatusDomainDataChangeContext allocWithZone:a3];

  return [(STLocationStatusDomainDataChangeContext *)v4 initWithChangeContext:?];
}

- (id)succinctDescription
{
  v2 = [(STLocationStatusDomainDataChangeContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STLocationStatusDomainDataChangeContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  if (self)
  {
    v4 = a3;
    v5 = [(STLocationStatusDomainDataChangeContext *)self succinctDescriptionBuilder];
    [v5 setUseDebugDescription:0];
    [v5 setActiveMultilinePrefix:v4];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __91__STLocationStatusDomainDataChangeContext__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v9[3] = &unk_1E85DDD00;
    v6 = v5;
    v10 = v6;
    v11 = self;
    [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[STLocationStatusDomainDataChangeContext isUserInitiated](self forKey:{"isUserInitiated"), @"userInitiated"}];
  [v4 encodeBool:-[STLocationStatusDomainDataChangeContext wantsProminentIndication](self forKey:{"wantsProminentIndication"), @"wantsProminentIndication"}];
}

- (STLocationStatusDomainDataChangeContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"userInitiated"];
  v6 = [v4 decodeBoolForKey:@"wantsProminentIndication"];

  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = STLocationStatusDomainDataChangeContext;
  result = [(STLocationStatusDomainDataChangeContext *)&v8 init];
  if (result)
  {
    result->_userInitiated = v5;
    result->_wantsProminentIndication = v6;
  }

  return result;
}

@end