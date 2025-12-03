@interface RBSAuditToken
+ (id)tokenFromAuditToken:(id *)token;
+ (id)tokenFromAuditTokenRef:(id *)ref;
+ (id)tokenFromXPCConnection:(id)connection;
- ($115C4C562B26FF47E01F9F4EA65B5887)realToken;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RBSAuditToken)initWithAuditToken:(id *)token;
- (RBSAuditToken)initWithCoder:(id)coder;
- (RBSAuditToken)initWithRBSXPCCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (int)pidversion;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSAuditToken

- ($115C4C562B26FF47E01F9F4EA65B5887)realToken
{
  v3 = *&self->var0[6];
  *retstr->var0 = *&self->var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (int)pidversion
{
  v2 = *&self->_auditToken.val[4];
  *v4.val = *self->_auditToken.val;
  *&v4.val[4] = v2;
  return audit_token_to_pidversion(&v4);
}

+ (id)tokenFromAuditToken:(id *)token
{
  v4 = [self alloc];
  v5 = *&token->var0[4];
  v8[0] = *token->var0;
  v8[1] = v5;
  v6 = [v4 initWithAuditToken:v8];

  return v6;
}

+ (id)tokenFromAuditTokenRef:(id *)ref
{
  if (!ref)
  {
    [(RBSAuditToken *)a2 tokenFromAuditTokenRef:self];
  }

  v5 = *&ref->var0[4];
  v8[0] = *ref->var0;
  v8[1] = v5;
  v6 = [self tokenFromAuditToken:v8];

  return v6;
}

+ (id)tokenFromXPCConnection:(id)connection
{
  connectionCopy = connection;
  if (!connectionCopy)
  {
    [(RBSAuditToken *)a2 tokenFromXPCConnection:self];
  }

  *&v6 = -1;
  *(&v6 + 1) = -1;
  *v9.val = v6;
  *&v9.val[4] = v6;
  xpc_connection_get_audit_token();
  atoken = v9;
  if (audit_token_to_pid(&atoken) == -1)
  {
    v7 = 0;
  }

  else
  {
    atoken = v9;
    v7 = [self tokenFromAuditToken:&atoken];
  }

  return v7;
}

- (RBSAuditToken)initWithAuditToken:(id *)token
{
  v6.receiver = self;
  v6.super_class = RBSAuditToken;
  result = [(RBSAuditToken *)&v6 init];
  if (result)
  {
    v5 = *token->var0;
    *&result->_auditToken.val[4] = *&token->var0[4];
    *result->_auditToken.val = v5;
  }

  return result;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v4 = xpc_data_create(&self->_auditToken, 0x20uLL);
  if (v4)
  {
    [coderCopy encodeXPCObject:v4 forKey:@"_auditToken"];
  }
}

- (RBSAuditToken)initWithRBSXPCCoder:(id)coder
{
  *&v4 = -1;
  *(&v4 + 1) = -1;
  buffer = v4;
  v11 = v4;
  v5 = [coder decodeXPCObjectOfType:MEMORY[0x1E69E9E70] forKey:@"_auditToken"];
  v6 = v5;
  if (v5 && xpc_data_get_bytes(v5, &buffer, 0, 0x20uLL) == 32)
  {
    v9[0] = buffer;
    v9[1] = v11;
    self = [(RBSAuditToken *)self initWithAuditToken:v9];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (RBSAuditToken)initWithCoder:(id)coder
{
  *&v4 = -1;
  *(&v4 + 1) = -1;
  v7 = v4;
  v8 = v4;
  [coder decodeValueOfObjCType:"{?=[8I]}" at:&v7 size:32];
  v6[0] = v7;
  v6[1] = v8;
  return [(RBSAuditToken *)self initWithAuditToken:v6];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    if (equalCopy)
    {
      [(RBSAuditToken *)equalCopy realToken];
    }

    if (LODWORD(v12[0]) == self->_auditToken.val[0])
    {
      v6 = 0;
      do
      {
        v7 = v6;
        if (v6 == 7)
        {
          break;
        }

        v8 = *(v12 + v6 + 1);
        v9 = self->_auditToken.val[++v6];
      }

      while (v8 == v9);
      v10 = v7 > 6;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = *&self->_auditToken.val[4];
  *v4.val = *self->_auditToken.val;
  *&v4.val[4] = v2;
  return audit_token_to_pid(&v4);
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = *&self->_auditToken.val[4];
  *atoken.val = *self->_auditToken.val;
  *&atoken.val[4] = v5;
  v6 = audit_token_to_auid(&atoken);
  v7 = *&self->_auditToken.val[4];
  *atoken.val = *self->_auditToken.val;
  *&atoken.val[4] = v7;
  v8 = audit_token_to_euid(&atoken);
  v9 = *&self->_auditToken.val[4];
  *atoken.val = *self->_auditToken.val;
  *&atoken.val[4] = v9;
  v10 = audit_token_to_egid(&atoken);
  v11 = *&self->_auditToken.val[4];
  *atoken.val = *self->_auditToken.val;
  *&atoken.val[4] = v11;
  v12 = audit_token_to_ruid(&atoken);
  v13 = *&self->_auditToken.val[4];
  *atoken.val = *self->_auditToken.val;
  *&atoken.val[4] = v13;
  v14 = audit_token_to_rgid(&atoken);
  v15 = *&self->_auditToken.val[4];
  *atoken.val = *self->_auditToken.val;
  *&atoken.val[4] = v15;
  v16 = audit_token_to_pid(&atoken);
  v17 = *&self->_auditToken.val[4];
  *atoken.val = *self->_auditToken.val;
  *&atoken.val[4] = v17;
  v18 = [v3 initWithFormat:@"<%@| AUID:%d EUID:%d EGID:%d RUID:%d RGID:%d PID:%d ASID:%d>", v4, v6, v8, v10, v12, v14, v16, audit_token_to_asid(&atoken)];

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = *&self->_auditToken.val[4];
  v7[0] = *self->_auditToken.val;
  v7[1] = v5;
  return [v4 initWithAuditToken:v7];
}

+ (void)tokenFromAuditTokenRef:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSSecurityUtilities.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"auditToken"}];
}

+ (void)tokenFromXPCConnection:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSSecurityUtilities.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
}

@end