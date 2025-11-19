@interface SMBFPClient
+ (id)locallyDestroyFPDomain:(id)a3 provider:(id)a4;
+ (id)newClientForProvider:(id)a3;
- (id)fixupConnectionFor:(id)a3;
@end

@implementation SMBFPClient

- (id)fixupConnectionFor:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = OBJC_IVAR___LiveFSMountClient_helper;
  objc_storeStrong(&self->LiveFSMountClient_opaque[OBJC_IVAR___LiveFSMountClient_helper], v6);
  if (*&self->LiveFSMountClient_opaque[v7])
  {
    objc_storeStrong(&self->LiveFSMountClient_opaque[OBJC_IVAR___LiveFSMountClient_provider], a3);
    [v6 setProviderName:v5];
    v8 = *&self->LiveFSMountClient_opaque[v7];
    v9 = OBJC_IVAR___LiveFSMountClient_conn;
    [*&self->LiveFSMountClient_opaque[OBJC_IVAR___LiveFSMountClient_conn] setExportedObject:v8];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LiveFSMounterClient];
    [*&self->LiveFSMountClient_opaque[v9] setExportedInterface:v10];

    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)newClientForProvider:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithProvider:v4];

  return v5;
}

+ (id)locallyDestroyFPDomain:(id)a3 provider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7;
  if (v7)
  {
    [v7 setProviderName:v6];
    [v8 destroyDomain:v5];
  }

  else
  {
    [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
  }
  v9 = ;

  return v9;
}

@end