@interface STExecutableIdentity
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesExecutableIdentity:(id)a3;
- (STExecutableIdentity)initWithApplicationBundleIdentifier:(id)a3;
- (STExecutableIdentity)initWithApplicationBundleIdentifier:(id)a3 personaUniqueString:(id)a4;
- (STExecutableIdentity)initWithAuditToken:(id *)a3;
- (STExecutableIdentity)initWithAuditToken:(id *)a3 bundlePath:(id)a4 executablePath:(id)a5 bundleIdentifier:(id)a6 personaUniqueString:(id)a7 systemExecutable:(BOOL)a8;
- (STExecutableIdentity)initWithAuditToken:(id *)a3 bundlePath:(id)a4 executablePath:(id)a5 systemExecutable:(BOOL)a6;
- (STExecutableIdentity)initWithBundlePath:(id)a3;
- (STExecutableIdentity)initWithCoder:(id)a3;
- (STExecutableIdentity)initWithExecutablePath:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initWithBSAuditToken:(void *)a3 bundlePath:(void *)a4 executablePath:(void *)a5 bundleIdentifier:(void *)a6 personaUniqueString:(char)a7 systemExecutable:;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STExecutableIdentity

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  if (self && (self = *&self[1].var0[4]) != 0)
  {
    v4 = self;
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STExecutableIdentity *)self executablePath];
  v5 = [v3 appendString:v4];

  v6 = [(STExecutableIdentity *)self bundlePath];
  v7 = [v3 appendString:v6];

  if (self)
  {
    bsAuditToken = self->_bsAuditToken;
  }

  else
  {
    bsAuditToken = 0;
  }

  v9 = [v3 appendObject:bsAuditToken];
  v10 = [(STExecutableIdentity *)self bundleIdentifier];
  v11 = [v3 appendString:v10];

  v12 = [(STExecutableIdentity *)self personaUniqueString];
  v13 = [v3 appendString:v12];

  v14 = [v3 appendBool:{-[STExecutableIdentity isSystemExecutable](self, "isSystemExecutable")}];
  v15 = [v3 hash];

  return v15;
}

- (STExecutableIdentity)initWithAuditToken:(id *)a3
{
  v3 = *&a3->var0[4];
  v5[0] = *a3->var0;
  v5[1] = v3;
  return [(STExecutableIdentity *)self initWithAuditToken:v5 bundlePath:0 executablePath:0 bundleIdentifier:0 personaUniqueString:0 systemExecutable:0];
}

- (STExecutableIdentity)initWithBundlePath:(id)a3
{
  *&v3 = -1;
  *(&v3 + 1) = -1;
  v5[0] = v3;
  v5[1] = v3;
  return [(STExecutableIdentity *)self initWithAuditToken:v5 bundlePath:a3 executablePath:0 bundleIdentifier:0 personaUniqueString:0 systemExecutable:0];
}

- (STExecutableIdentity)initWithExecutablePath:(id)a3
{
  *&v3 = -1;
  *(&v3 + 1) = -1;
  v5[0] = v3;
  v5[1] = v3;
  return [(STExecutableIdentity *)self initWithAuditToken:v5 bundlePath:0 executablePath:a3 bundleIdentifier:0 personaUniqueString:0 systemExecutable:0];
}

- (STExecutableIdentity)initWithApplicationBundleIdentifier:(id)a3
{
  *&v3 = -1;
  *(&v3 + 1) = -1;
  v5[0] = v3;
  v5[1] = v3;
  return [(STExecutableIdentity *)self initWithAuditToken:v5 bundlePath:0 executablePath:0 bundleIdentifier:a3 personaUniqueString:0 systemExecutable:0];
}

- (STExecutableIdentity)initWithApplicationBundleIdentifier:(id)a3 personaUniqueString:(id)a4
{
  *&v4 = -1;
  *(&v4 + 1) = -1;
  v6[0] = v4;
  v6[1] = v4;
  return [(STExecutableIdentity *)self initWithAuditToken:v6 bundlePath:0 executablePath:0 bundleIdentifier:a3 personaUniqueString:a4 systemExecutable:0];
}

- (STExecutableIdentity)initWithAuditToken:(id *)a3 bundlePath:(id)a4 executablePath:(id)a5 systemExecutable:(BOOL)a6
{
  v10 = MEMORY[0x1E698E620];
  v11 = a5;
  v12 = a4;
  v13 = [v10 alloc];
  v14 = *&a3->var0[4];
  v18[0] = *a3->var0;
  v18[1] = v14;
  v15 = [v13 initWithAuditToken:v18];
  v16 = [(STExecutableIdentity *)self initWithBSAuditToken:v15 bundlePath:v12 executablePath:v11 bundleIdentifier:0 personaUniqueString:0 systemExecutable:a6];

  return v16;
}

- (id)initWithBSAuditToken:(void *)a3 bundlePath:(void *)a4 executablePath:(void *)a5 bundleIdentifier:(void *)a6 personaUniqueString:(char)a7 systemExecutable:
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (a1)
  {
    v29.receiver = a1;
    v29.super_class = STExecutableIdentity;
    a1 = objc_msgSendSuper2(&v29, sel_init);
    if (a1)
    {
      v18 = [v13 copy];
      v19 = *(a1 + 6);
      *(a1 + 6) = v18;

      v20 = [v14 copy];
      v21 = *(a1 + 2);
      *(a1 + 2) = v20;

      v22 = [v15 copy];
      v23 = *(a1 + 3);
      *(a1 + 3) = v22;

      v24 = [v16 copy];
      v25 = *(a1 + 4);
      *(a1 + 4) = v24;

      v26 = [v17 copy];
      v27 = *(a1 + 5);
      *(a1 + 5) = v26;

      *(a1 + 8) = a7;
    }
  }

  return a1;
}

- (STExecutableIdentity)initWithAuditToken:(id *)a3 bundlePath:(id)a4 executablePath:(id)a5 bundleIdentifier:(id)a6 personaUniqueString:(id)a7 systemExecutable:(BOOL)a8
{
  v14 = MEMORY[0x1E698E620];
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = [v14 alloc];
  v20 = *&a3->var0[4];
  v24[0] = *a3->var0;
  v24[1] = v20;
  v21 = [v19 initWithAuditToken:v24];
  v22 = [(STExecutableIdentity *)self initWithBSAuditToken:v21 bundlePath:v18 executablePath:v17 bundleIdentifier:v16 personaUniqueString:v15 systemExecutable:a8];

  return v22;
}

- (BOOL)matchesExecutableIdentity:(id)a3
{
  v4 = a3;
  v5 = [(STExecutableIdentity *)self isSystemExecutable];
  if (v5 == [v4 isSystemExecutable])
  {
    v7 = [(STExecutableIdentity *)self personaUniqueString];
    v8 = [v4 personaUniqueString];
    if (v7 | v8 && ![v7 isEqualToString:v8])
    {
      v6 = 0;
    }

    else
    {
      v9 = [(STExecutableIdentity *)self bundleIdentifier];
      v10 = [v4 bundleIdentifier];
      v11 = v10;
      if (v9 && v10)
      {
        v6 = [v9 isEqualToString:v10];
      }

      else
      {
        v12 = [(STExecutableIdentity *)self executablePath];
        v13 = [v4 executablePath];
        v14 = v13;
        if (v12 && v13)
        {
          v6 = [v12 isEqualToString:v13];
        }

        else
        {
          v15 = [(STExecutableIdentity *)self bundlePath];
          v16 = [v4 bundlePath];
          v17 = v16;
          if (v15 && v16)
          {
            v6 = [v15 isEqualToString:v16];
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

            v22 = v15;
            if (v4)
            {
              v19 = v4[6];
            }

            else
            {
              v19 = 0;
            }

            v20 = bsAuditToken;
            v6 = [(BSAuditToken *)v20 isEqual:v19];

            v15 = v22;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STExecutableIdentity *)self executablePath];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __32__STExecutableIdentity_isEqual___block_invoke;
  v38[3] = &unk_1E85DDD28;
  v7 = v4;
  v39 = v7;
  v8 = [v5 appendString:v6 counterpart:v38];

  v9 = [(STExecutableIdentity *)self bundlePath];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __32__STExecutableIdentity_isEqual___block_invoke_2;
  v36[3] = &unk_1E85DDD28;
  v10 = v7;
  v37 = v10;
  v11 = [v5 appendString:v9 counterpart:v36];

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
  v15 = [(STExecutableIdentity *)self bundleIdentifier];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __32__STExecutableIdentity_isEqual___block_invoke_4;
  v32[3] = &unk_1E85DDD28;
  v16 = v13;
  v33 = v16;
  v17 = [v5 appendString:v15 counterpart:v32];

  v18 = [(STExecutableIdentity *)self personaUniqueString];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __32__STExecutableIdentity_isEqual___block_invoke_5;
  v30[3] = &unk_1E85DDD28;
  v19 = v16;
  v31 = v19;
  v20 = [v5 appendString:v18 counterpart:v30];

  v21 = [(STExecutableIdentity *)self isSystemExecutable];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __32__STExecutableIdentity_isEqual___block_invoke_6;
  v28 = &unk_1E85DDD50;
  v29 = v19;
  v22 = v19;
  v23 = [v5 appendBool:v21 counterpart:&v25];
  LOBYTE(v21) = [v5 isEqual];

  return v21;
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
  v2 = [(STExecutableIdentity *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STExecutableIdentity *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(STExecutableIdentity *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__STExecutableIdentity_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E85DDD00;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    bsAuditToken = self->_bsAuditToken;
  }

  else
  {
    bsAuditToken = 0;
  }

  v9 = a3;
  [v9 encodeObject:bsAuditToken forKey:@"bsAuditToken"];
  v5 = [(STExecutableIdentity *)self bundlePath];
  [v9 encodeObject:v5 forKey:@"bundlePath"];

  v6 = [(STExecutableIdentity *)self executablePath];
  [v9 encodeObject:v6 forKey:@"executablePath"];

  v7 = [(STExecutableIdentity *)self bundleIdentifier];
  [v9 encodeObject:v7 forKey:@"bundleIdentifier"];

  v8 = [(STExecutableIdentity *)self personaUniqueString];
  [v9 encodeObject:v8 forKey:@"personaUniqueString"];

  [v9 encodeBool:-[STExecutableIdentity isSystemExecutable](self forKey:{"isSystemExecutable"), @"systemExecutable"}];
}

- (STExecutableIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bsAuditToken"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"executablePath"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueString"];
  v10 = [v4 decodeBoolForKey:@"systemExecutable"];

  v11 = [(STExecutableIdentity *)self initWithBSAuditToken:v5 bundlePath:v6 executablePath:v7 bundleIdentifier:v8 personaUniqueString:v9 systemExecutable:v10];
  return v11;
}

@end