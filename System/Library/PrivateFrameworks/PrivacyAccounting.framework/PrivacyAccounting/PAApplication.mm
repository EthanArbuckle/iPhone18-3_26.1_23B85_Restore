@interface PAApplication
+ (PAApplication)applicationForCurrentProcess;
+ (PAApplication)applicationWithAuditToken:(id *)token;
+ (PAApplication)applicationWithBundleID:(id)d;
+ (PAApplication)applicationWithPath:(id)path;
+ (PAApplication)applicationWithType:(int64_t)type identifier:(id)identifier;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)equal;
- (NSString)descriptionForIdentifier;
- (NSString)identifier;
- (PAApplication)initWithAuditToken:(id *)token;
- (PAApplication)initWithBundleID:(id)d;
- (PAApplication)initWithCoder:(id)coder;
- (PAApplication)initWithInProcessAssumedIdentity:(id)identity;
- (PAApplication)initWithInProcessBridgedAssumedIdentity:(id)identity;
- (PAApplication)initWithInsecureProcessIdentifier:(int)identifier;
- (PAApplication)initWithPath:(id)path;
- (PAApplication)initWithProto:(id)proto;
- (PAApplication)initWithProtoData:(id)data;
- (PAApplication)initWithTCCIdentity:(id)identity;
- (PAApplication)initWithType:(int64_t)type identifier:(id)identifier;
- (id)JSONObject;
- (id)description;
- (id)descriptionForIdentifierType;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PAApplication

+ (PAApplication)applicationForCurrentProcess
{
  if (applicationForCurrentProcess_onceToken != -1)
  {
    +[PAApplication applicationForCurrentProcess];
  }

  v3 = applicationForCurrentProcess_application;

  return v3;
}

uint64_t __45__PAApplication_applicationForCurrentProcess__block_invoke()
{
  applicationForCurrentProcess_application = [[PAApplication alloc] initWithInProcessIdentity];

  return MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  result = self->_identifierType;
  if (result <= 1)
  {
    if (result)
    {
      if (result == 1)
      {
        return [(NSString *)self->_path hash]+ 31;
      }
    }

    else
    {
      bundleID = self->_bundleID;

      return [(NSString *)bundleID hash];
    }
  }

  else
  {
    switch(result)
    {
      case 2uLL:
        v4 = veorq_s8(*self->_auditToken.val, *&self->_auditToken.val[4]);
        v5 = vmovl_high_s8(v4);
        v6 = vmovl_s16(*v5.i8);
        v7 = vmovl_s8(*v4.i8);
        v8 = vmovl_s16(*v7.i8);
        v9 = vmovl_high_s16(v5);
        v10 = vmovl_high_s16(v7);
        *v10.i8 = veor_s8(veor_s8(veor_s8(*v8.i8, *v6.i8), veor_s8(*v10.i8, *v9.i8)), veor_s8(veor_s8(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v6, v6, 8uLL)), veor_s8(*&vextq_s8(v10, v10, 8uLL), *&vextq_s8(v9, v9, 8uLL))));
        v11.i64[0] = v10.i32[0];
        v11.i64[1] = v10.i32[1];
        return *&veor_s8(v10.i32[0], *&vextq_s8(v11, v11, 8uLL)) + 62;
      case 3uLL:
        return self->_insecureProcessIdentifier + 93;
      case 4uLL:
        return [(PABridgedTCCIdentity *)self->_bridgedAssumedIdentity hash]+ 124;
    }
  }

  return result;
}

- (id)JSONObject
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  descriptionForIdentifierType = [(PAApplication *)self descriptionForIdentifierType];
  [v3 setObject:descriptionForIdentifierType forKeyedSubscript:@"identifierType"];

  descriptionForIdentifier = [(PAApplication *)self descriptionForIdentifier];
  [v3 setObject:descriptionForIdentifier forKeyedSubscript:@"identifier"];

  if (self->_identifierType == 4)
  {
    v6 = [(PABridgedTCCIdentity *)self->_bridgedAssumedIdentity description];
    [v3 setObject:v6 forKeyedSubscript:@"assumedIdentity"];
  }

  return v3;
}

- (id)descriptionForIdentifierType
{
  identifierType = self->_identifierType;
  if (identifierType > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E86AC4E0[identifierType];
  }
}

- (NSString)descriptionForIdentifier
{
  v3 = 0;
  identifierType = self->_identifierType;
  if (identifierType > 1)
  {
    if (identifierType == 2)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"{pid:%d, version:%d}", self->_auditToken.val[5], self->_auditToken.val[7]];
    }

    else
    {
      if (identifierType != 3)
      {
        goto LABEL_12;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"{pid:%d}", self->_insecureProcessIdentifier, v7];
    }
    v3 = ;
  }

  else
  {
    if (identifierType)
    {
      if (identifierType != 1)
      {
        goto LABEL_12;
      }

      path = self->_path;
    }

    else
    {
      path = self->_bundleID;
    }

    v3 = path;
  }

LABEL_12:

  return v3;
}

- (id)description
{
  identifierType = self->_identifierType;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  descriptionForIdentifierType = [(PAApplication *)self descriptionForIdentifierType];
  v7 = descriptionForIdentifierType;
  if (identifierType == 4)
  {
    v8 = [v4 stringWithFormat:@"<%@ %p identifierType:%@ assumedIdentity:%@>", v5, self, descriptionForIdentifierType, self->_bridgedAssumedIdentity];
  }

  else
  {
    descriptionForIdentifier = [(PAApplication *)self descriptionForIdentifier];
    v8 = [v4 stringWithFormat:@"<%@ %p identifierType:%@ identifier:%@>", v5, self, v7, descriptionForIdentifier];
  }

  return v8;
}

+ (PAApplication)applicationWithType:(int64_t)type identifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [[self alloc] initWithType:type identifier:identifierCopy];

  return v7;
}

+ (PAApplication)applicationWithBundleID:(id)d
{
  dCopy = d;
  v5 = [[self alloc] initWithBundleID:dCopy];

  return v5;
}

+ (PAApplication)applicationWithPath:(id)path
{
  pathCopy = path;
  v5 = [[self alloc] initWithPath:pathCopy];

  return v5;
}

+ (PAApplication)applicationWithAuditToken:(id *)token
{
  v4 = [self alloc];
  v5 = *&token->var0[4];
  v8[0] = *token->var0;
  v8[1] = v5;
  v6 = [v4 initWithAuditToken:v8];

  return v6;
}

- (PAApplication)initWithType:(int64_t)type identifier:(id)identifier
{
  identifierCopy = identifier;
  if (type == 1)
  {
    v7 = [(PAApplication *)self initWithPath:identifierCopy];
  }

  else
  {
    if (type)
    {
      selfCopy = 0;
      goto LABEL_7;
    }

    v7 = [(PAApplication *)self initWithBundleID:identifierCopy];
  }

  self = v7;
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (PAApplication)initWithBundleID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = PAApplication;
  v5 = [(PAApplication *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_identifierType = 0;
    v7 = [dCopy copy];
    bundleID = v6->_bundleID;
    v6->_bundleID = v7;
  }

  return v6;
}

- (PAApplication)initWithPath:(id)path
{
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = PAApplication;
  v5 = [(PAApplication *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_identifierType = 1;
    v7 = [pathCopy copy];
    path = v6->_path;
    v6->_path = v7;
  }

  return v6;
}

- (PAApplication)initWithAuditToken:(id *)token
{
  v6.receiver = self;
  v6.super_class = PAApplication;
  result = [(PAApplication *)&v6 init];
  if (result)
  {
    result->_identifierType = 2;
    v5 = *&token->var0[4];
    *result->_auditToken.val = *token->var0;
    *&result->_auditToken.val[4] = v5;
  }

  return result;
}

- (PAApplication)initWithInProcessAssumedIdentity:(id)identity
{
  if (identity)
  {
    identityCopy = identity;
    v5 = [[PABridgedTCCIdentity alloc] initWithTCCIdentity:identityCopy];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PAApplication *)self initWithInProcessBridgedAssumedIdentity:v5];

  return v6;
}

- (PAApplication)initWithInProcessBridgedAssumedIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = PAApplication;
  v6 = [(PAApplication *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_identifierType = 4;
    objc_storeStrong(&v6->_bridgedAssumedIdentity, identity);
  }

  return v7;
}

- (PAApplication)initWithTCCIdentity:(id)identity
{
  identityCopy = identity;
  type = tcc_identity_get_type();
  if (type == 1)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
    v7 = [(PAApplication *)self initWithPath:v6];
  }

  else
  {
    if (type)
    {
      selfCopy = 0;
      goto LABEL_7;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
    v7 = [(PAApplication *)self initWithBundleID:v6];
  }

  self = v7;

  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (PAApplication)initWithInsecureProcessIdentifier:(int)identifier
{
  v5.receiver = self;
  v5.super_class = PAApplication;
  result = [(PAApplication *)&v5 init];
  if (result)
  {
    result->_identifierType = 3;
    result->_insecureProcessIdentifier = identifier;
  }

  return result;
}

- (NSString)identifier
{
  identifierType = self->_identifierType;
  if (identifierType == 1)
  {
    path = [(PAApplication *)self path];
  }

  else if (identifierType)
  {
    path = 0;
  }

  else
  {
    path = [(PAApplication *)self bundleID];
  }

  return path;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *self[2].var0;
  *retstr->var0 = *&self[1].var0[4];
  *&retstr->var0[4] = v3;
  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(identifierType) = 1;
  }

  else
  {
    if ([(PAApplication *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      identifierType = self->_identifierType;
      if (identifierType == [(PAApplication *)v5 identifierType])
      {
        v7 = self->_identifierType;
        if (v7 <= 1)
        {
          if (v7)
          {
            if (v7 != 1)
            {
              goto LABEL_32;
            }

            path = self->_path;
            bundleID = v5->_path;
          }

          else
          {
            path = self->_bundleID;
            bundleID = v5->_bundleID;
          }

          v9 = [(NSString *)path isEqualToString:bundleID];
LABEL_31:
          LOBYTE(identifierType) = v9;
          goto LABEL_32;
        }

        switch(v7)
        {
          case 2:
            v18 = *self->_auditToken.val;
            v19 = *&self->_auditToken.val[4];
            v12 = *&v5->_auditToken.val[4];
            v17 = *v5->_auditToken.val;
            v15 = v18 == v17 && *(&v18 + 1) == *(&v17 + 1) && v19 == v12 && *(&v19 + 1) == *(&v12 + 1);
            break;
          case 3:
            v15 = self->_insecureProcessIdentifier == v5->_insecureProcessIdentifier;
            break;
          case 4:
            bridgedAssumedIdentity = self->_bridgedAssumedIdentity;
            if (bridgedAssumedIdentity == v5->_bridgedAssumedIdentity)
            {
              LOBYTE(identifierType) = 1;
              goto LABEL_32;
            }

            v9 = [(PABridgedTCCIdentity *)bridgedAssumedIdentity isEqual:?];
            goto LABEL_31;
          default:
LABEL_32:

            goto LABEL_33;
        }

        LOBYTE(identifierType) = v15;
        goto LABEL_32;
      }

      LOBYTE(identifierType) = 0;
      goto LABEL_32;
    }

    LOBYTE(identifierType) = 0;
  }

LABEL_33:

  return identifierType & 1;
}

- (PAApplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"identifierType"];
  selfCopy = 0;
  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v13 = 0u;
        v14 = 0u;
        v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
        [v9 getValue:&v13 size:32];

        v12[0] = v13;
        v12[1] = v14;
        v10 = [(PAApplication *)self initWithAuditToken:v12];
        break;
      case 3:
        v10 = -[PAApplication initWithInsecureProcessIdentifier:](self, "initWithInsecureProcessIdentifier:", [coderCopy decodeIntForKey:@"insecureProcessIdentifier"]);
        break;
      case 4:
        v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assumedIdentity"];
        v8 = [(PAApplication *)self initWithInProcessBridgedAssumedIdentity:v7];
LABEL_13:
        self = v8;

        selfCopy = self;
        goto LABEL_14;
      default:
        goto LABEL_14;
    }

    self = v10;
    selfCopy = v10;
    goto LABEL_14;
  }

  if (!v5)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    v8 = [(PAApplication *)self initWithBundleID:v7];
    goto LABEL_13;
  }

  if (v5 == 1)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    v8 = [(PAApplication *)self initWithPath:v7];
    goto LABEL_13;
  }

LABEL_14:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_identifierType forKey:@"identifierType"];
  identifierType = self->_identifierType;
  if (identifierType <= 1)
  {
    if (identifierType)
    {
      v5 = coderCopy;
      if (identifierType != 1)
      {
        goto LABEL_14;
      }

      path = self->_path;
      v7 = @"path";
    }

    else
    {
      path = self->_bundleID;
      v7 = @"bundleID";
    }

    goto LABEL_12;
  }

  if (identifierType == 2)
  {
    v8 = [MEMORY[0x1E696B098] valueWithBytes:&self->_auditToken objCType:"{?=[8I]}"];
    [coderCopy encodeObject:v8 forKey:@"auditToken"];
  }

  else
  {
    if (identifierType != 3)
    {
      v5 = coderCopy;
      if (identifierType != 4)
      {
        goto LABEL_14;
      }

      path = self->_bridgedAssumedIdentity;
      v7 = @"assumedIdentity";
LABEL_12:
      [coderCopy encodeObject:path forKey:v7];
      goto LABEL_13;
    }

    [coderCopy encodeInt:self->_insecureProcessIdentifier forKey:@"insecureProcessIdentifier"];
  }

LABEL_13:
  v5 = coderCopy;
LABEL_14:
}

- (id)encodeAsProto
{
  proto = [(PAApplication *)self proto];
  data = [proto data];

  return data;
}

- (PAApplication)initWithProto:(id)proto
{
  protoCopy = proto;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = protoCopy;
    selfCopy = [v5 identifier];

    if (selfCopy)
    {
      identifierType = [v5 identifierType];
      if (identifierType == 2)
      {
        identifier = [v5 identifier];
        v9 = [(PAApplication *)self initWithPath:identifier];
      }

      else
      {
        if (identifierType != 1)
        {
          selfCopy = 0;
          goto LABEL_10;
        }

        identifier = [v5 identifier];
        v9 = [(PAApplication *)self initWithBundleID:identifier];
      }

      self = v9;

      selfCopy = self;
    }

LABEL_10:

    goto LABEL_11;
  }

  selfCopy = 0;
LABEL_11:

  return selfCopy;
}

- (PAApplication)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[PAPBApplication alloc] initWithData:dataCopy];

    v6 = [(PAApplication *)self initWithProto:v5];
    self = v6;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = v3;
  identifierType = self->_identifierType;
  if (!identifierType)
  {
    v6 = 1;
    v7 = 16;
    goto LABEL_5;
  }

  if (identifierType == 1)
  {
    v6 = 2;
    v7 = 24;
LABEL_5:
    [v3 setIdentifierType:v6];
    [v4 setIdentifier:*(&self->super.isa + v7)];
    v8 = v4;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end