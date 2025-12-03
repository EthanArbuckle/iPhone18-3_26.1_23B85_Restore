@interface STAttributedEntity
+ (id)genericSystemServicesEntity;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesAttributedEntity:(id)entity;
- (NSString)bundleIdentifier;
- (NSString)bundlePath;
- (NSString)executablePath;
- (STAttributedEntity)initWithAuditToken:(id *)token;
- (STAttributedEntity)initWithBundlePath:(id)path;
- (STAttributedEntity)initWithCoder:(id)coder;
- (STAttributedEntity)initWithExecutableIdentity:(id)identity website:(id)website systemService:(BOOL)service localizedDisplayName:(id)name localizedExecutableDisplayName:(id)displayName;
- (STAttributedEntity)initWithExecutablePath:(id)path;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STAttributedEntity

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  executableIdentity = [(STAttributedEntity *)self executableIdentity];
  v5 = [builder appendObject:executableIdentity];

  website = [(STAttributedEntity *)self website];
  v7 = [builder appendString:website];

  v8 = [builder appendBool:{-[STAttributedEntity isSystemService](self, "isSystemService")}];
  localizedDisplayName = [(STAttributedEntity *)self localizedDisplayName];
  v10 = [builder appendString:localizedDisplayName];

  localizedExecutableDisplayName = [(STAttributedEntity *)self localizedExecutableDisplayName];
  v12 = [builder appendString:localizedExecutableDisplayName];

  v13 = [builder hash];
  return v13;
}

- (NSString)bundlePath
{
  executableIdentity = [(STAttributedEntity *)self executableIdentity];
  bundlePath = [executableIdentity bundlePath];

  return bundlePath;
}

- (NSString)bundleIdentifier
{
  executableIdentity = [(STAttributedEntity *)self executableIdentity];
  bundleIdentifier = [executableIdentity bundleIdentifier];

  return bundleIdentifier;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  executableIdentity = [(STAttributedEntity *)self executableIdentity];
  if (executableIdentity)
  {
    v6 = executableIdentity;
    [executableIdentity auditToken];
    executableIdentity = v6;
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
  v6 = [[self alloc] initWithExecutableIdentity:v5 systemService:1];

  return v6;
}

- (STAttributedEntity)initWithAuditToken:(id *)token
{
  v5 = [STExecutableIdentity alloc];
  v6 = *&token->var0[4];
  v10[0] = *token->var0;
  v10[1] = v6;
  v7 = [(STExecutableIdentity *)v5 initWithAuditToken:v10];
  v8 = [(STAttributedEntity *)self initWithExecutableIdentity:v7];

  return v8;
}

- (STAttributedEntity)initWithBundlePath:(id)path
{
  pathCopy = path;
  v5 = [[STExecutableIdentity alloc] initWithBundlePath:pathCopy];

  v6 = [(STAttributedEntity *)self initWithExecutableIdentity:v5];
  return v6;
}

- (STAttributedEntity)initWithExecutablePath:(id)path
{
  pathCopy = path;
  v5 = [[STExecutableIdentity alloc] initWithExecutablePath:pathCopy];

  v6 = [(STAttributedEntity *)self initWithExecutableIdentity:v5];
  return v6;
}

- (STAttributedEntity)initWithExecutableIdentity:(id)identity website:(id)website systemService:(BOOL)service localizedDisplayName:(id)name localizedExecutableDisplayName:(id)displayName
{
  identityCopy = identity;
  websiteCopy = website;
  nameCopy = name;
  displayNameCopy = displayName;
  if (self)
  {
    v25.receiver = self;
    v25.super_class = STAttributedEntity;
    self = [(STAttributedEntity *)&v25 init];
    if (self)
    {
      v16 = [identityCopy copy];
      executableIdentity = self->_executableIdentity;
      self->_executableIdentity = v16;

      v18 = [websiteCopy copy];
      website = self->_website;
      self->_website = v18;

      self->_systemService = service;
      v20 = [nameCopy copy];
      localizedDisplayName = self->_localizedDisplayName;
      self->_localizedDisplayName = v20;

      v22 = [displayNameCopy copy];
      localizedExecutableDisplayName = self->_localizedExecutableDisplayName;
      self->_localizedExecutableDisplayName = v22;
    }
  }

  return self;
}

- (NSString)executablePath
{
  executableIdentity = [(STAttributedEntity *)self executableIdentity];
  executablePath = [executableIdentity executablePath];

  return executablePath;
}

- (BOOL)matchesAttributedEntity:(id)entity
{
  entityCopy = entity;
  website = [(STAttributedEntity *)self website];
  website2 = [entityCopy website];
  if ((!(website | website2) || [website isEqualToString:website2]) && (v7 = -[STAttributedEntity isSystemService](self, "isSystemService"), v7 == objc_msgSend(entityCopy, "isSystemService")))
  {
    localizedDisplayName = [(STAttributedEntity *)self localizedDisplayName];
    localizedDisplayName2 = [entityCopy localizedDisplayName];
    if (localizedDisplayName | localizedDisplayName2 && ![localizedDisplayName isEqualToString:localizedDisplayName2])
    {
      v8 = 0;
    }

    else
    {
      localizedExecutableDisplayName = [(STAttributedEntity *)self localizedExecutableDisplayName];
      localizedExecutableDisplayName2 = [entityCopy localizedExecutableDisplayName];
      if (localizedExecutableDisplayName | localizedExecutableDisplayName2 && ![localizedExecutableDisplayName isEqualToString:localizedExecutableDisplayName2])
      {
        v8 = 0;
      }

      else
      {
        executableIdentity = [(STAttributedEntity *)self executableIdentity];
        executableIdentity2 = [entityCopy executableIdentity];
        v8 = [executableIdentity matchesExecutableIdentity:executableIdentity2];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  executableIdentity = [(STAttributedEntity *)self executableIdentity];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __30__STAttributedEntity_isEqual___block_invoke;
  v30[3] = &unk_1E85DDCD8;
  v7 = equalCopy;
  v31 = v7;
  v8 = [v5 appendObject:executableIdentity counterpart:v30];

  website = [(STAttributedEntity *)self website];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __30__STAttributedEntity_isEqual___block_invoke_2;
  v28[3] = &unk_1E85DDD28;
  v10 = v7;
  v29 = v10;
  v11 = [v5 appendString:website counterpart:v28];

  isSystemService = [(STAttributedEntity *)self isSystemService];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __30__STAttributedEntity_isEqual___block_invoke_3;
  v26[3] = &unk_1E85DDD50;
  v13 = v10;
  v27 = v13;
  v14 = [v5 appendBool:isSystemService counterpart:v26];
  localizedDisplayName = [(STAttributedEntity *)self localizedDisplayName];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __30__STAttributedEntity_isEqual___block_invoke_4;
  v24[3] = &unk_1E85DDD28;
  v16 = v13;
  v25 = v16;
  v17 = [v5 appendString:localizedDisplayName counterpart:v24];

  localizedExecutableDisplayName = [(STAttributedEntity *)self localizedExecutableDisplayName];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __30__STAttributedEntity_isEqual___block_invoke_5;
  v22[3] = &unk_1E85DDD28;
  v23 = v16;
  v19 = v16;
  v20 = [v5 appendString:localizedExecutableDisplayName counterpart:v22];

  LOBYTE(localizedExecutableDisplayName) = [v5 isEqual];
  return localizedExecutableDisplayName;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STAttributedEntity *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STAttributedEntity *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STAttributedEntity *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__STAttributedEntity__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDF30;
    v7 = succinctDescriptionBuilder;
    v11 = v7;
    selfCopy = self;
    prefixCopy = prefix;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  executableIdentity = [(STAttributedEntity *)self executableIdentity];
  [coderCopy encodeObject:executableIdentity forKey:@"executableIdentity"];

  website = [(STAttributedEntity *)self website];
  [coderCopy encodeObject:website forKey:@"website"];

  [coderCopy encodeBool:-[STAttributedEntity isSystemService](self forKey:{"isSystemService"), @"systemService"}];
  localizedDisplayName = [(STAttributedEntity *)self localizedDisplayName];
  [coderCopy encodeObject:localizedDisplayName forKey:@"localizedDisplayName"];

  localizedExecutableDisplayName = [(STAttributedEntity *)self localizedExecutableDisplayName];
  [coderCopy encodeObject:localizedExecutableDisplayName forKey:@"localizedExecutableDisplayName"];
}

- (STAttributedEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"executableIdentity"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"website"];
  v7 = [coderCopy decodeBoolForKey:@"systemService"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDisplayName"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedExecutableDisplayName"];

  if (v5)
  {
    self = [(STAttributedEntity *)self initWithExecutableIdentity:v5 website:v6 systemService:v7 localizedDisplayName:v8 localizedExecutableDisplayName:v9];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end