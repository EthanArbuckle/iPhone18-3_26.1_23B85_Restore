@interface STAttributedEntity
+ (id)genericSystemServicesEntity;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesAttributedEntity:(id)a3;
- (NSString)bundleIdentifier;
- (NSString)bundlePath;
- (NSString)executablePath;
- (STAttributedEntity)initWithAuditToken:(id *)a3;
- (STAttributedEntity)initWithBundlePath:(id)a3;
- (STAttributedEntity)initWithCoder:(id)a3;
- (STAttributedEntity)initWithExecutableIdentity:(id)a3 website:(id)a4 systemService:(BOOL)a5 localizedDisplayName:(id)a6 localizedExecutableDisplayName:(id)a7;
- (STAttributedEntity)initWithExecutablePath:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STAttributedEntity

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STAttributedEntity *)self executableIdentity];
  v5 = [v3 appendObject:v4];

  v6 = [(STAttributedEntity *)self website];
  v7 = [v3 appendString:v6];

  v8 = [v3 appendBool:{-[STAttributedEntity isSystemService](self, "isSystemService")}];
  v9 = [(STAttributedEntity *)self localizedDisplayName];
  v10 = [v3 appendString:v9];

  v11 = [(STAttributedEntity *)self localizedExecutableDisplayName];
  v12 = [v3 appendString:v11];

  v13 = [v3 hash];
  return v13;
}

- (NSString)bundlePath
{
  v2 = [(STAttributedEntity *)self executableIdentity];
  v3 = [v2 bundlePath];

  return v3;
}

- (NSString)bundleIdentifier
{
  v2 = [(STAttributedEntity *)self executableIdentity];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v4 = [(STAttributedEntity *)self executableIdentity];
  if (v4)
  {
    v6 = v4;
    [v4 auditToken];
    v4 = v6;
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

+ (id)genericSystemServicesEntity
{
  v3 = [STExecutableIdentity alloc];
  *&v4 = -1;
  *(&v4 + 1) = -1;
  v8[0] = v4;
  v8[1] = v4;
  v5 = [(STExecutableIdentity *)v3 initWithAuditToken:v8 bundlePath:0 executablePath:0 systemExecutable:0];
  v6 = [[a1 alloc] initWithExecutableIdentity:v5 systemService:1];

  return v6;
}

- (STAttributedEntity)initWithAuditToken:(id *)a3
{
  v5 = [STExecutableIdentity alloc];
  v6 = *&a3->var0[4];
  v10[0] = *a3->var0;
  v10[1] = v6;
  v7 = [(STExecutableIdentity *)v5 initWithAuditToken:v10];
  v8 = [(STAttributedEntity *)self initWithExecutableIdentity:v7];

  return v8;
}

- (STAttributedEntity)initWithBundlePath:(id)a3
{
  v4 = a3;
  v5 = [[STExecutableIdentity alloc] initWithBundlePath:v4];

  v6 = [(STAttributedEntity *)self initWithExecutableIdentity:v5];
  return v6;
}

- (STAttributedEntity)initWithExecutablePath:(id)a3
{
  v4 = a3;
  v5 = [[STExecutableIdentity alloc] initWithExecutablePath:v4];

  v6 = [(STAttributedEntity *)self initWithExecutableIdentity:v5];
  return v6;
}

- (STAttributedEntity)initWithExecutableIdentity:(id)a3 website:(id)a4 systemService:(BOOL)a5 localizedDisplayName:(id)a6 localizedExecutableDisplayName:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (self)
  {
    v25.receiver = self;
    v25.super_class = STAttributedEntity;
    self = [(STAttributedEntity *)&v25 init];
    if (self)
    {
      v16 = [v12 copy];
      executableIdentity = self->_executableIdentity;
      self->_executableIdentity = v16;

      v18 = [v13 copy];
      website = self->_website;
      self->_website = v18;

      self->_systemService = a5;
      v20 = [v14 copy];
      localizedDisplayName = self->_localizedDisplayName;
      self->_localizedDisplayName = v20;

      v22 = [v15 copy];
      localizedExecutableDisplayName = self->_localizedExecutableDisplayName;
      self->_localizedExecutableDisplayName = v22;
    }
  }

  return self;
}

- (NSString)executablePath
{
  v2 = [(STAttributedEntity *)self executableIdentity];
  v3 = [v2 executablePath];

  return v3;
}

- (BOOL)matchesAttributedEntity:(id)a3
{
  v4 = a3;
  v5 = [(STAttributedEntity *)self website];
  v6 = [v4 website];
  if ((!(v5 | v6) || [v5 isEqualToString:v6]) && (v7 = -[STAttributedEntity isSystemService](self, "isSystemService"), v7 == objc_msgSend(v4, "isSystemService")))
  {
    v9 = [(STAttributedEntity *)self localizedDisplayName];
    v10 = [v4 localizedDisplayName];
    if (v9 | v10 && ![v9 isEqualToString:v10])
    {
      v8 = 0;
    }

    else
    {
      v11 = [(STAttributedEntity *)self localizedExecutableDisplayName];
      v12 = [v4 localizedExecutableDisplayName];
      if (v11 | v12 && ![v11 isEqualToString:v12])
      {
        v8 = 0;
      }

      else
      {
        v13 = [(STAttributedEntity *)self executableIdentity];
        v14 = [v4 executableIdentity];
        v8 = [v13 matchesExecutableIdentity:v14];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STAttributedEntity *)self executableIdentity];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __30__STAttributedEntity_isEqual___block_invoke;
  v30[3] = &unk_1E85DDCD8;
  v7 = v4;
  v31 = v7;
  v8 = [v5 appendObject:v6 counterpart:v30];

  v9 = [(STAttributedEntity *)self website];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __30__STAttributedEntity_isEqual___block_invoke_2;
  v28[3] = &unk_1E85DDD28;
  v10 = v7;
  v29 = v10;
  v11 = [v5 appendString:v9 counterpart:v28];

  v12 = [(STAttributedEntity *)self isSystemService];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __30__STAttributedEntity_isEqual___block_invoke_3;
  v26[3] = &unk_1E85DDD50;
  v13 = v10;
  v27 = v13;
  v14 = [v5 appendBool:v12 counterpart:v26];
  v15 = [(STAttributedEntity *)self localizedDisplayName];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __30__STAttributedEntity_isEqual___block_invoke_4;
  v24[3] = &unk_1E85DDD28;
  v16 = v13;
  v25 = v16;
  v17 = [v5 appendString:v15 counterpart:v24];

  v18 = [(STAttributedEntity *)self localizedExecutableDisplayName];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __30__STAttributedEntity_isEqual___block_invoke_5;
  v22[3] = &unk_1E85DDD28;
  v23 = v16;
  v19 = v16;
  v20 = [v5 appendString:v18 counterpart:v22];

  LOBYTE(v18) = [v5 isEqual];
  return v18;
}

- (id)succinctDescription
{
  v2 = [(STAttributedEntity *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STAttributedEntity *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STAttributedEntity *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__STAttributedEntity__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDF30;
    v7 = v6;
    v11 = v7;
    v12 = a1;
    v13 = a3;
    [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __70__STAttributedEntity__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) executableIdentity];
  v4 = [v2 appendObject:v3 withName:@"executableIdentity"];

  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) website];
  v8 = v7;
  if (v5 == 1)
  {
    [v6 appendString:v7 withName:@"website" skipIfEmpty:1];
  }

  else
  {
    v9 = [v6 appendBool:v7 != 0 withName:@"websiteNonNil"];
  }

  v10 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isSystemService"), @"systemService"}];
  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) localizedDisplayName];
  [v11 appendString:v12 withName:@"localizedDisplayName" skipIfEmpty:1];

  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) localizedExecutableDisplayName];
  [v13 appendString:v14 withName:@"localizedExecutableDisplayName" skipIfEmpty:1];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(STAttributedEntity *)self executableIdentity];
  [v4 encodeObject:v5 forKey:@"executableIdentity"];

  v6 = [(STAttributedEntity *)self website];
  [v4 encodeObject:v6 forKey:@"website"];

  [v4 encodeBool:-[STAttributedEntity isSystemService](self forKey:{"isSystemService"), @"systemService"}];
  v7 = [(STAttributedEntity *)self localizedDisplayName];
  [v4 encodeObject:v7 forKey:@"localizedDisplayName"];

  v8 = [(STAttributedEntity *)self localizedExecutableDisplayName];
  [v4 encodeObject:v8 forKey:@"localizedExecutableDisplayName"];
}

- (STAttributedEntity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"executableIdentity"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"website"];
  v7 = [v4 decodeBoolForKey:@"systemService"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDisplayName"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedExecutableDisplayName"];

  if (v5)
  {
    self = [(STAttributedEntity *)self initWithExecutableIdentity:v5 website:v6 systemService:v7 localizedDisplayName:v8 localizedExecutableDisplayName:v9];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end