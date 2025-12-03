@interface SMTRequestDispatcherSessionConfigurationMutating
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- (void)setClientAuditToken:(id *)token;
@end

@implementation SMTRequestDispatcherSessionConfigurationMutating

- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken
{
  v3 = *&self[1].var0[6];
  *retstr->var0 = *&self[1].var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setClientAuditToken:(id *)token
{
  v3 = *token->var0;
  *&self->_clientAuditToken.val[4] = *&token->var0[4];
  *self->_clientAuditToken.val = v3;
}

@end