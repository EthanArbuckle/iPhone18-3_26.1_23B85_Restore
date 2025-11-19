@interface SMTRequestDispatcherSessionConfigurationMutating
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- (void)setClientAuditToken:(id *)a3;
@end

@implementation SMTRequestDispatcherSessionConfigurationMutating

- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken
{
  v3 = *&self[1].var0[6];
  *retstr->var0 = *&self[1].var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setClientAuditToken:(id *)a3
{
  v3 = *a3->var0;
  *&self->_clientAuditToken.val[4] = *&a3->var0[4];
  *self->_clientAuditToken.val = v3;
}

@end