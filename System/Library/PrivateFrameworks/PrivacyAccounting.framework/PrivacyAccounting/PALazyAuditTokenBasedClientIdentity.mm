@interface PALazyAuditTokenBasedClientIdentity
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (NSString)description;
- (OS_tcc_identity)identity;
- (PALazyAuditTokenBasedClientIdentity)initWithAuditToken:(id *)token;
@end

@implementation PALazyAuditTokenBasedClientIdentity

- (PALazyAuditTokenBasedClientIdentity)initWithAuditToken:(id *)token
{
  v6.receiver = self;
  v6.super_class = PALazyAuditTokenBasedClientIdentity;
  result = [(PALazyAuditTokenBasedClientIdentity *)&v6 init];
  if (result)
  {
    v5 = *token->var0;
    *&result->_auditToken.val[4] = *&token->var0[4];
    *result->_auditToken.val = v5;
  }

  return result;
}

- (OS_tcc_identity)identity
{
  if (!self->_identityResolved)
  {
    v3 = *&self->_auditToken.val[4];
    v11 = *self->_auditToken.val;
    v4 = tcc_server_singleton_default();
    v5 = tcc_credential_create_for_process_with_audit_token();
    v6 = tcc_message_options_create();
    tcc_message_options_set_reply_handler_policy();
    *&v11 = 0;
    *(&v11 + 1) = &v11;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = 0;
    tcc_server_message_get_identity_for_credential();
    v7 = *(*(&v11 + 1) + 40);
    _Block_object_dispose(&v11, 8);

    identity = self->_identity;
    self->_identity = v7;

    self->_identityResolved = 1;
  }

  v9 = self->_identity;

  return v9;
}

- (NSString)description
{
  v2 = MEMORY[0x1EEE9AC00](self, a2);
  v12 = *MEMORY[0x1E69E9840];
  identity = [v2 identity];
  if (identity)
  {
    v4 = tcc_object_copy_description();
  }

  else
  {
    v5 = *(v2 + 40);
    *audittoken.val = *(v2 + 24);
    *&audittoken.val[4] = v5;
    bzero(buffer, 0x1000uLL);
    if (proc_pidpath_audittoken(&audittoken, buffer, 0x1000u) > 0 && ([MEMORY[0x1E696AEC0] stringWithUTF8String:buffer], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<IDENTIFICATION_FAILED:%@>", v6, 0, *audittoken.val, *&audittoken.val[2], *&audittoken.val[4], *&audittoken.val[6]];
    }

    else
    {
      v4 = @"<IDENTITY_UNKNOWN>";
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[2];
  *retstr->var0 = *&self->var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

@end