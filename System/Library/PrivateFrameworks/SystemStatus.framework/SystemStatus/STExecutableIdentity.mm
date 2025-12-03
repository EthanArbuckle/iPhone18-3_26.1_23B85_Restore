@interface STExecutableIdentity
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesExecutableIdentity:(id)identity;
- (STExecutableIdentity)initWithApplicationBundleIdentifier:(id)identifier;
- (STExecutableIdentity)initWithApplicationBundleIdentifier:(id)identifier personaUniqueString:(id)string;
- (STExecutableIdentity)initWithAuditToken:(id *)token;
- (STExecutableIdentity)initWithAuditToken:(id *)token bundlePath:(id)path executablePath:(id)executablePath bundleIdentifier:(id)identifier personaUniqueString:(id)string systemExecutable:(BOOL)executable;
- (STExecutableIdentity)initWithAuditToken:(id *)token bundlePath:(id)path executablePath:(id)executablePath systemExecutable:(BOOL)executable;
- (STExecutableIdentity)initWithBundlePath:(id)path;
- (STExecutableIdentity)initWithCoder:(id)coder;
- (STExecutableIdentity)initWithExecutablePath:(id)path;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)initWithBSAuditToken:(void *)token bundlePath:(void *)path executablePath:(void *)executablePath bundleIdentifier:(void *)identifier personaUniqueString:(char)string systemExecutable:;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STExecutableIdentity

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  if (self && (self = *&self[1].var0[4]) != 0)
  {
    selfCopy = self;
    [($115C4C562B26FF47E01F9F4EA65B5887 *)self realToken];
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return self;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  executablePath = [(STExecutableIdentity *)self executablePath];
  v5 = [builder appendString:executablePath];

  bundlePath = [(STExecutableIdentity *)self bundlePath];
  v7 = [builder appendString:bundlePath];

  if (self)
  {
    bsAuditToken = self->_bsAuditToken;
  }

  else
  {
    bsAuditToken = 0;
  }

  v9 = [builder appendObject:bsAuditToken];
  bundleIdentifier = [(STExecutableIdentity *)self bundleIdentifier];
  v11 = [builder appendString:bundleIdentifier];

  personaUniqueString = [(STExecutableIdentity *)self personaUniqueString];
  v13 = [builder appendString:personaUniqueString];

  v14 = [builder appendBool:{-[STExecutableIdentity isSystemExecutable](self, "isSystemExecutable")}];
  v15 = [builder hash];

  return v15;
}

- (STExecutableIdentity)initWithAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  v5[0] = *token->var0;
  v5[1] = v3;
  return [(STExecutableIdentity *)self initWithAuditToken:v5 bundlePath:0 executablePath:0 bundleIdentifier:0 personaUniqueString:0 systemExecutable:0];
}

- (STExecutableIdentity)initWithBundlePath:(id)path
{
  *&v3 = -1;
  *(&v3 + 1) = -1;
  v5[0] = v3;
  v5[1] = v3;
  return [(STExecutableIdentity *)self initWithAuditToken:v5 bundlePath:path executablePath:0 bundleIdentifier:0 personaUniqueString:0 systemExecutable:0];
}

- (STExecutableIdentity)initWithExecutablePath:(id)path
{
  *&v3 = -1;
  *(&v3 + 1) = -1;
  v5[0] = v3;
  v5[1] = v3;
  return [(STExecutableIdentity *)self initWithAuditToken:v5 bundlePath:0 executablePath:path bundleIdentifier:0 personaUniqueString:0 systemExecutable:0];
}

- (STExecutableIdentity)initWithApplicationBundleIdentifier:(id)identifier
{
  *&v3 = -1;
  *(&v3 + 1) = -1;
  v5[0] = v3;
  v5[1] = v3;
  return [(STExecutableIdentity *)self initWithAuditToken:v5 bundlePath:0 executablePath:0 bundleIdentifier:identifier personaUniqueString:0 systemExecutable:0];
}

- (STExecutableIdentity)initWithApplicationBundleIdentifier:(id)identifier personaUniqueString:(id)string
{
  *&v4 = -1;
  *(&v4 + 1) = -1;
  v6[0] = v4;
  v6[1] = v4;
  return [(STExecutableIdentity *)self initWithAuditToken:v6 bundlePath:0 executablePath:0 bundleIdentifier:identifier personaUniqueString:string systemExecutable:0];
}

- (STExecutableIdentity)initWithAuditToken:(id *)token bundlePath:(id)path executablePath:(id)executablePath systemExecutable:(BOOL)executable
{
  v10 = MEMORY[0x1E698E620];
  executablePathCopy = executablePath;
  pathCopy = path;
  v13 = [v10 alloc];
  v14 = *&token->var0[4];
  v18[0] = *token->var0;
  v18[1] = v14;
  v15 = [v13 initWithAuditToken:v18];
  v16 = [(STExecutableIdentity *)self initWithBSAuditToken:v15 bundlePath:pathCopy executablePath:executablePathCopy bundleIdentifier:0 personaUniqueString:0 systemExecutable:executable];

  return v16;
}

- (id)initWithBSAuditToken:(void *)token bundlePath:(void *)path executablePath:(void *)executablePath bundleIdentifier:(void *)identifier personaUniqueString:(char)string systemExecutable:
{
  v13 = a2;
  tokenCopy = token;
  pathCopy = path;
  executablePathCopy = executablePath;
  identifierCopy = identifier;
  if (self)
  {
    v29.receiver = self;
    v29.super_class = STExecutableIdentity;
    self = objc_msgSendSuper2(&v29, sel_init);
    if (self)
    {
      v18 = [v13 copy];
      v19 = *(self + 6);
      *(self + 6) = v18;

      v20 = [tokenCopy copy];
      v21 = *(self + 2);
      *(self + 2) = v20;

      v22 = [pathCopy copy];
      v23 = *(self + 3);
      *(self + 3) = v22;

      v24 = [executablePathCopy copy];
      v25 = *(self + 4);
      *(self + 4) = v24;

      v26 = [identifierCopy copy];
      v27 = *(self + 5);
      *(self + 5) = v26;

      *(self + 8) = string;
    }
  }

  return self;
}

- (STExecutableIdentity)initWithAuditToken:(id *)token bundlePath:(id)path executablePath:(id)executablePath bundleIdentifier:(id)identifier personaUniqueString:(id)string systemExecutable:(BOOL)executable
{
  v14 = MEMORY[0x1E698E620];
  stringCopy = string;
  identifierCopy = identifier;
  executablePathCopy = executablePath;
  pathCopy = path;
  v19 = [v14 alloc];
  v20 = *&token->var0[4];
  v24[0] = *token->var0;
  v24[1] = v20;
  v21 = [v19 initWithAuditToken:v24];
  v22 = [(STExecutableIdentity *)self initWithBSAuditToken:v21 bundlePath:pathCopy executablePath:executablePathCopy bundleIdentifier:identifierCopy personaUniqueString:stringCopy systemExecutable:executable];

  return v22;
}

- (BOOL)matchesExecutableIdentity:(id)identity
{
  identityCopy = identity;
  isSystemExecutable = [(STExecutableIdentity *)self isSystemExecutable];
  if (isSystemExecutable == [identityCopy isSystemExecutable])
  {
    personaUniqueString = [(STExecutableIdentity *)self personaUniqueString];
    personaUniqueString2 = [identityCopy personaUniqueString];
    if (personaUniqueString | personaUniqueString2 && ![personaUniqueString isEqualToString:personaUniqueString2])
    {
      v6 = 0;
    }

    else
    {
      bundleIdentifier = [(STExecutableIdentity *)self bundleIdentifier];
      bundleIdentifier2 = [identityCopy bundleIdentifier];
      v11 = bundleIdentifier2;
      if (bundleIdentifier && bundleIdentifier2)
      {
        v6 = [bundleIdentifier isEqualToString:bundleIdentifier2];
      }

      else
      {
        executablePath = [(STExecutableIdentity *)self executablePath];
        executablePath2 = [identityCopy executablePath];
        v14 = executablePath2;
        if (executablePath && executablePath2)
        {
          v6 = [executablePath isEqualToString:executablePath2];
        }

        else
        {
          bundlePath = [(STExecutableIdentity *)self bundlePath];
          bundlePath2 = [identityCopy bundlePath];
          v17 = bundlePath2;
          if (bundlePath && bundlePath2)
          {
            v6 = [bundlePath isEqualToString:bundlePath2];
          }

          else
          {
            if (self)
            {
              bsAuditToken = self->_bsAuditToken;
            }

            else
            {
              bsAuditToken = 0;
            }

            v22 = bundlePath;
            if (identityCopy)
            {
              v19 = identityCopy[6];
            }

            else
            {
              v19 = 0;
            }

            v20 = bsAuditToken;
            v6 = [(BSAuditToken *)v20 isEqual:v19];

            bundlePath = v22;
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  executablePath = [(STExecutableIdentity *)self executablePath];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __32__STExecutableIdentity_isEqual___block_invoke;
  v38[3] = &unk_1E85DDD28;
  v7 = equalCopy;
  v39 = v7;
  v8 = [v5 appendString:executablePath counterpart:v38];

  bundlePath = [(STExecutableIdentity *)self bundlePath];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __32__STExecutableIdentity_isEqual___block_invoke_2;
  v36[3] = &unk_1E85DDD28;
  v10 = v7;
  v37 = v10;
  v11 = [v5 appendString:bundlePath counterpart:v36];

  if (self)
  {
    bsAuditToken = self->_bsAuditToken;
  }

  else
  {
    bsAuditToken = 0;
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __32__STExecutableIdentity_isEqual___block_invoke_3;
  v34[3] = &unk_1E85DDCD8;
  v13 = v10;
  v35 = v13;
  v14 = [v5 appendObject:bsAuditToken counterpart:v34];
  bundleIdentifier = [(STExecutableIdentity *)self bundleIdentifier];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __32__STExecutableIdentity_isEqual___block_invoke_4;
  v32[3] = &unk_1E85DDD28;
  v16 = v13;
  v33 = v16;
  v17 = [v5 appendString:bundleIdentifier counterpart:v32];

  personaUniqueString = [(STExecutableIdentity *)self personaUniqueString];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __32__STExecutableIdentity_isEqual___block_invoke_5;
  v30[3] = &unk_1E85DDD28;
  v19 = v16;
  v31 = v19;
  v20 = [v5 appendString:personaUniqueString counterpart:v30];

  isSystemExecutable = [(STExecutableIdentity *)self isSystemExecutable];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __32__STExecutableIdentity_isEqual___block_invoke_6;
  v28 = &unk_1E85DDD50;
  v29 = v19;
  v22 = v19;
  v23 = [v5 appendBool:isSystemExecutable counterpart:&v25];
  LOBYTE(isSystemExecutable) = [v5 isEqual];

  return isSystemExecutable;
}

id __32__STExecutableIdentity_isEqual___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 48);
  }

  else
  {
    return 0;
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STExecutableIdentity *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STExecutableIdentity *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STExecutableIdentity *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__STExecutableIdentity_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E85DDD00;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __62__STExecutableIdentity_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleIdentifier];
  [v2 appendString:v3 withName:@"bundleIdentifier" skipIfEmpty:1];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) personaUniqueString];
  [v4 appendString:v5 withName:@"personaUniqueString" skipIfEmpty:1];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) bundlePath];
  [v6 appendString:v7 withName:@"bundlePath" skipIfEmpty:1];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) executablePath];
  [v8 appendString:v9 withName:@"executablePath" skipIfEmpty:1];

  if ([*(a1 + 40) hasAuditToken])
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(v10 + 48);
    }

    else
    {
      v11 = 0;
    }

    v12 = [*(a1 + 32) appendObject:v11 withName:@"auditToken"];
  }

  v13 = *(a1 + 32);
  v14 = MEMORY[0x1E1274220]([*(a1 + 40) isSystemExecutable]);
  [v13 appendString:v14 withName:@"isSystemExecutable"];
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    bsAuditToken = self->_bsAuditToken;
  }

  else
  {
    bsAuditToken = 0;
  }

  coderCopy = coder;
  [coderCopy encodeObject:bsAuditToken forKey:@"bsAuditToken"];
  bundlePath = [(STExecutableIdentity *)self bundlePath];
  [coderCopy encodeObject:bundlePath forKey:@"bundlePath"];

  executablePath = [(STExecutableIdentity *)self executablePath];
  [coderCopy encodeObject:executablePath forKey:@"executablePath"];

  bundleIdentifier = [(STExecutableIdentity *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  personaUniqueString = [(STExecutableIdentity *)self personaUniqueString];
  [coderCopy encodeObject:personaUniqueString forKey:@"personaUniqueString"];

  [coderCopy encodeBool:-[STExecutableIdentity isSystemExecutable](self forKey:{"isSystemExecutable"), @"systemExecutable"}];
}

- (STExecutableIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bsAuditToken"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"executablePath"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueString"];
  v10 = [coderCopy decodeBoolForKey:@"systemExecutable"];

  v11 = [(STExecutableIdentity *)self initWithBSAuditToken:v5 bundlePath:v6 executablePath:v7 bundleIdentifier:v8 personaUniqueString:v9 systemExecutable:v10];
  return v11;
}

@end