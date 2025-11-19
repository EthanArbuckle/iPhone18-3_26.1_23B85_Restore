@interface UAAuditToken
- (BOOL)isSandboxed;
- (UAAuditToken)initWithAuditToken:(id *)a3;
- (id)debugDescription;
- (id)description;
- (int)asid;
- (int)pid;
- (int)pidVersion;
- (unsigned)egid;
- (unsigned)euid;
- (unsigned)rgid;
- (unsigned)ruid;
- (void)getValue:(void *)a3;
@end

@implementation UAAuditToken

- (int)pid
{
  [(UAAuditToken *)self auditTokenValue];
  pidp = 0;
  atoken = v3;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  return pidp;
}

- (unsigned)egid
{
  [(UAAuditToken *)self auditTokenValue];
  egidp = 0;
  atoken = v3;
  audit_token_to_au32(&atoken, 0, 0, &egidp, 0, 0, 0, 0, 0);
  return egidp;
}

- (id)description
{
  v3 = [(UAAuditToken *)self pid];
  v4 = [(UAAuditToken *)self pidVersion];
  v5 = [(UAAuditToken *)self euid];
  v6 = [(UAAuditToken *)self ruid];
  v7 = [(UAAuditToken *)self egid];
  v8 = [(UAAuditToken *)self rgid];
  v9 = [(UAAuditToken *)self asid];
  v10 = [(UAAuditToken *)self isSandboxed];
  v11 = @"NO";
  if (v10)
  {
    v11 = @"YES";
  }

  return [NSString stringWithFormat:@"[pid=%d/%d uid=%d/%d gid=%d/%d asid=%d sb=%@]", v3, v4, v5, v6, v7, v8, v9, v11];
}

- (int)pidVersion
{
  [(UAAuditToken *)self auditTokenValue];
  tidp = 0;
  atoken = v3;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, 0, 0, &tidp);
  return tidp.port;
}

- (unsigned)euid
{
  [(UAAuditToken *)self auditTokenValue];
  ruidp = 0;
  atoken = v3;
  audit_token_to_au32(&atoken, 0, 0, 0, &ruidp, 0, 0, 0, 0);
  return ruidp;
}

- (unsigned)ruid
{
  [(UAAuditToken *)self auditTokenValue];
  ruidp = 0;
  atoken = v3;
  audit_token_to_au32(&atoken, 0, 0, 0, &ruidp, 0, 0, 0, 0);
  return ruidp;
}

- (unsigned)rgid
{
  [(UAAuditToken *)self auditTokenValue];
  rgidp = 0;
  atoken = v3;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, &rgidp, 0, 0, 0);
  return rgidp;
}

- (BOOL)isSandboxed
{
  v4 = 0;
  [(UAAuditToken *)self auditTokenValue:0];
  sub_100002A44(&v3, &v4);
  return v4;
}

- (int)asid
{
  [(UAAuditToken *)self auditTokenValue];
  asidp = 0;
  atoken = v3;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, 0, &asidp, 0);
  return asidp;
}

- (UAAuditToken)initWithAuditToken:(id *)a3
{
  v6.receiver = self;
  v6.super_class = UAAuditToken;
  result = [(UAAuditToken *)&v6 init];
  if (result)
  {
    v5 = *&a3->var0[4];
    *result->_auditTokenValue.val = *a3->var0;
    *&result->_auditTokenValue.val[4] = v5;
  }

  return result;
}

- (void)getValue:(void *)a3
{
  v3 = *&self->_auditTokenValue.val[4];
  *a3 = *self->_auditTokenValue.val;
  *(a3 + 1) = v3;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(UAAuditToken *)self description];
  v6 = [NSString stringWithFormat:@"<%@ %p> %@", v4, self, v5];

  return v6;
}

@end