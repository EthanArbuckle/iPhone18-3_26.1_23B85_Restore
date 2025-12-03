@interface WBSSafariSandboxBroker
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (WBSSafariSandboxBroker)initWithPID:(int)d auditToken:(id *)token;
@end

@implementation WBSSafariSandboxBroker

- (WBSSafariSandboxBroker)initWithPID:(int)d auditToken:(id *)token
{
  v15.receiver = self;
  v15.super_class = WBSSafariSandboxBroker;
  v6 = [(WBSSafariSandboxBroker *)&v15 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 2) = d;
    v8 = *token->var0;
    *(v6 + 40) = *&token->var0[4];
    *(v6 + 24) = v8;
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    v11 = os_log_create([processName UTF8String], "Sandbox");
    log = v7->_log;
    v7->_log = v11;

    v13 = v7;
  }

  return v7;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[2];
  *retstr->var0 = *&self->var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

@end