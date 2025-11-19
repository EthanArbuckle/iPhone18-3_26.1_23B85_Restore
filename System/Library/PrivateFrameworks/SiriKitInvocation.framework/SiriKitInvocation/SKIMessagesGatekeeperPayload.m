@interface SKIMessagesGatekeeperPayload
- (SKIDirectInvocationPayload)invocationPayload;
- (SKIMessagesGatekeeperPayload)initWithAppBundleId:(id)a3;
- (SKIMessagesGatekeeperPayload)initWithDictionary:(id)a3;
@end

@implementation SKIMessagesGatekeeperPayload

- (SKIDirectInvocationPayload)invocationPayload
{
  v3 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.DirectInvocation.Messages.TriggerGatekeeper"];
  v4 = v3;
  if (self->_appBundleId)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    [v5 setObject:self->_appBundleId forKey:@"appBundleId"];
    [(SKIDirectInvocationPayload *)v4 setUserData:v5];
  }

  else
  {
    [(SKIDirectInvocationPayload *)v3 setUserData:MEMORY[0x277CBEC10]];
  }

  return v4;
}

- (SKIMessagesGatekeeperPayload)initWithAppBundleId:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKIMessagesGatekeeperPayload;
  v6 = [(SKIMessagesGatekeeperPayload *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appBundleId, a3);
  }

  return v7;
}

- (SKIMessagesGatekeeperPayload)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKIMessagesGatekeeperPayload;
  v5 = [(SKIMessagesGatekeeperPayload *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"appBundleId"];
    appBundleId = v5->_appBundleId;
    v5->_appBundleId = v6;
  }

  return v5;
}

@end