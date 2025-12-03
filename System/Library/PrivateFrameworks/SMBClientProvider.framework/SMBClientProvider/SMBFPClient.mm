@interface SMBFPClient
+ (id)locallyDestroyFPDomain:(id)domain provider:(id)provider;
+ (id)newClientForProvider:(id)provider;
- (id)fixupConnectionFor:(id)for;
@end

@implementation SMBFPClient

- (id)fixupConnectionFor:(id)for
{
  forCopy = for;
  v6 = objc_opt_new();
  v7 = OBJC_IVAR___LiveFSMountClient_helper;
  objc_storeStrong(&self->LiveFSMountClient_opaque[OBJC_IVAR___LiveFSMountClient_helper], v6);
  if (*&self->LiveFSMountClient_opaque[v7])
  {
    objc_storeStrong(&self->LiveFSMountClient_opaque[OBJC_IVAR___LiveFSMountClient_provider], for);
    [v6 setProviderName:forCopy];
    v8 = *&self->LiveFSMountClient_opaque[v7];
    v9 = OBJC_IVAR___LiveFSMountClient_conn;
    [*&self->LiveFSMountClient_opaque[OBJC_IVAR___LiveFSMountClient_conn] setExportedObject:v8];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LiveFSMounterClient];
    [*&self->LiveFSMountClient_opaque[v9] setExportedInterface:v10];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)newClientForProvider:(id)provider
{
  providerCopy = provider;
  v5 = [[self alloc] initWithProvider:providerCopy];

  return v5;
}

+ (id)locallyDestroyFPDomain:(id)domain provider:(id)provider
{
  domainCopy = domain;
  providerCopy = provider;
  v7 = objc_opt_new();
  v8 = v7;
  if (v7)
  {
    [v7 setProviderName:providerCopy];
    [v8 destroyDomain:domainCopy];
  }

  else
  {
    [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
  }
  v9 = ;

  return v9;
}

@end