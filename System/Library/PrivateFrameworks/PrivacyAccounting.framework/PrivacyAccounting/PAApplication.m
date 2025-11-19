@interface PAApplication
+ (PAApplication)applicationForCurrentProcess;
+ (PAApplication)applicationWithAuditToken:(id *)a3;
+ (PAApplication)applicationWithBundleID:(id)a3;
+ (PAApplication)applicationWithPath:(id)a3;
+ (PAApplication)applicationWithType:(int64_t)a3 identifier:(id)a4;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)a3;
- (NSString)descriptionForIdentifier;
- (NSString)identifier;
- (PAApplication)initWithAuditToken:(id *)a3;
- (PAApplication)initWithBundleID:(id)a3;
- (PAApplication)initWithCoder:(id)a3;
- (PAApplication)initWithInProcessAssumedIdentity:(id)a3;
- (PAApplication)initWithInProcessBridgedAssumedIdentity:(id)a3;
- (PAApplication)initWithInsecureProcessIdentifier:(int)a3;
- (PAApplication)initWithPath:(id)a3;
- (PAApplication)initWithProto:(id)a3;
- (PAApplication)initWithProtoData:(id)a3;
- (PAApplication)initWithTCCIdentity:(id)a3;
- (PAApplication)initWithType:(int64_t)a3 identifier:(id)a4;
- (id)JSONObject;
- (id)description;
- (id)descriptionForIdentifierType;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v4 = [(PAApplication *)self descriptionForIdentifierType];
  [v3 setObject:v4 forKeyedSubscript:@"identifierType"];

  v5 = [(PAApplication *)self descriptionForIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"identifier"];

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
  v6 = [(PAApplication *)self descriptionForIdentifierType];
  v7 = v6;
  if (identifierType == 4)
  {
    v8 = [v4 stringWithFormat:@"<%@ %p identifierType:%@ assumedIdentity:%@>", v5, self, v6, self->_bridgedAssumedIdentity];
  }

  else
  {
    v9 = [(PAApplication *)self descriptionForIdentifier];
    v8 = [v4 stringWithFormat:@"<%@ %p identifierType:%@ identifier:%@>", v5, self, v7, v9];
  }

  return v8;
}

+ (PAApplication)applicationWithType:(int64_t)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithType:a3 identifier:v6];

  return v7;
}

+ (PAApplication)applicationWithBundleID:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBundleID:v4];

  return v5;
}

+ (PAApplication)applicationWithPath:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPath:v4];

  return v5;
}

+ (PAApplication)applicationWithAuditToken:(id *)a3
{
  v4 = [a1 alloc];
  v5 = *&a3->var0[4];
  v8[0] = *a3->var0;
  v8[1] = v5;
  v6 = [v4 initWithAuditToken:v8];

  return v6;
}

- (PAApplication)initWithType:(int64_t)a3 identifier:(id)a4
{
  v6 = a4;
  if (a3 == 1)
  {
    v7 = [(PAApplication *)self initWithPath:v6];
  }

  else
  {
    if (a3)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = [(PAApplication *)self initWithBundleID:v6];
  }

  self = v7;
  v8 = self;
LABEL_7:

  return v8;
}

- (PAApplication)initWithBundleID:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PAApplication;
  v5 = [(PAApplication *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_identifierType = 0;
    v7 = [v4 copy];
    bundleID = v6->_bundleID;
    v6->_bundleID = v7;
  }

  return v6;
}

- (PAApplication)initWithPath:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PAApplication;
  v5 = [(PAApplication *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_identifierType = 1;
    v7 = [v4 copy];
    path = v6->_path;
    v6->_path = v7;
  }

  return v6;
}

- (PAApplication)initWithAuditToken:(id *)a3
{
  v6.receiver = self;
  v6.super_class = PAApplication;
  result = [(PAApplication *)&v6 init];
  if (result)
  {
    result->_identifierType = 2;
    v5 = *&a3->var0[4];
    *result->_auditToken.val = *a3->var0;
    *&result->_auditToken.val[4] = v5;
  }

  return result;
}

- (PAApplication)initWithInProcessAssumedIdentity:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[PABridgedTCCIdentity alloc] initWithTCCIdentity:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PAApplication *)self initWithInProcessBridgedAssumedIdentity:v5];

  return v6;
}

- (PAApplication)initWithInProcessBridgedAssumedIdentity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PAApplication;
  v6 = [(PAApplication *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_identifierType = 4;
    objc_storeStrong(&v6->_bridgedAssumedIdentity, a3);
  }

  return v7;
}

- (PAApplication)initWithTCCIdentity:(id)a3
{
  v4 = a3;
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
      v8 = 0;
      goto LABEL_7;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
    v7 = [(PAApplication *)self initWithBundleID:v6];
  }

  self = v7;

  v8 = self;
LABEL_7:

  return v8;
}

- (PAApplication)initWithInsecureProcessIdentifier:(int)a3
{
  v5.receiver = self;
  v5.super_class = PAApplication;
  result = [(PAApplication *)&v5 init];
  if (result)
  {
    result->_identifierType = 3;
    result->_insecureProcessIdentifier = a3;
  }

  return result;
}

- (NSString)identifier
{
  identifierType = self->_identifierType;
  if (identifierType == 1)
  {
    v3 = [(PAApplication *)self path];
  }

  else if (identifierType)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(PAApplication *)self bundleID];
  }

  return v3;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *self[2].var0;
  *retstr->var0 = *&self[1].var0[4];
  *&retstr->var0[4] = v3;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(identifierType) = 1;
  }

  else
  {
    if ([(PAApplication *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
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

- (PAApplication)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"identifierType"];
  v6 = 0;
  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v13 = 0u;
        v14 = 0u;
        v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
        [v9 getValue:&v13 size:32];

        v12[0] = v13;
        v12[1] = v14;
        v10 = [(PAApplication *)self initWithAuditToken:v12];
        break;
      case 3:
        v10 = -[PAApplication initWithInsecureProcessIdentifier:](self, "initWithInsecureProcessIdentifier:", [v4 decodeIntForKey:@"insecureProcessIdentifier"]);
        break;
      case 4:
        v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assumedIdentity"];
        v8 = [(PAApplication *)self initWithInProcessBridgedAssumedIdentity:v7];
LABEL_13:
        self = v8;

        v6 = self;
        goto LABEL_14;
      default:
        goto LABEL_14;
    }

    self = v10;
    v6 = v10;
    goto LABEL_14;
  }

  if (!v5)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    v8 = [(PAApplication *)self initWithBundleID:v7];
    goto LABEL_13;
  }

  if (v5 == 1)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    v8 = [(PAApplication *)self initWithPath:v7];
    goto LABEL_13;
  }

LABEL_14:

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  [v9 encodeInteger:self->_identifierType forKey:@"identifierType"];
  identifierType = self->_identifierType;
  if (identifierType <= 1)
  {
    if (identifierType)
    {
      v5 = v9;
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
    [v9 encodeObject:v8 forKey:@"auditToken"];
  }

  else
  {
    if (identifierType != 3)
    {
      v5 = v9;
      if (identifierType != 4)
      {
        goto LABEL_14;
      }

      path = self->_bridgedAssumedIdentity;
      v7 = @"assumedIdentity";
LABEL_12:
      [v9 encodeObject:path forKey:v7];
      goto LABEL_13;
    }

    [v9 encodeInt:self->_insecureProcessIdentifier forKey:@"insecureProcessIdentifier"];
  }

LABEL_13:
  v5 = v9;
LABEL_14:
}

- (id)encodeAsProto
{
  v2 = [(PAApplication *)self proto];
  v3 = [v2 data];

  return v3;
}

- (PAApplication)initWithProto:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 identifier];

    if (v6)
    {
      v7 = [v5 identifierType];
      if (v7 == 2)
      {
        v8 = [v5 identifier];
        v9 = [(PAApplication *)self initWithPath:v8];
      }

      else
      {
        if (v7 != 1)
        {
          v6 = 0;
          goto LABEL_10;
        }

        v8 = [v5 identifier];
        v9 = [(PAApplication *)self initWithBundleID:v8];
      }

      self = v9;

      v6 = self;
    }

LABEL_10:

    goto LABEL_11;
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (PAApplication)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[PAPBApplication alloc] initWithData:v4];

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