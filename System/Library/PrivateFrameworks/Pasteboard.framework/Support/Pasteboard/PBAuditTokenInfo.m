@interface PBAuditTokenInfo
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (void)setAuditToken:(id *)a3;
@end

@implementation PBAuditTokenInfo

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[2].var0[6];
  *retstr->var0 = *&self[2].var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setAuditToken:(id *)a3
{
  v3 = *a3->var0;
  *&self->_auditToken.val[4] = *&a3->var0[4];
  *self->_auditToken.val = v3;
}

@end