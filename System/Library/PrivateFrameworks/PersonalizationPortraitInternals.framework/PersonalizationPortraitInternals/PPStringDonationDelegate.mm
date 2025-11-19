@interface PPStringDonationDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PPStringDonationDelegate)init;
@end

@implementation PPStringDonationDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = MEMORY[0x277CCAE90];
  v5 = a4;
  v6 = [v4 interfaceWithProtocol:&unk_284793A28];
  v7 = objc_opt_new();
  v8 = [PPXPCServerHelper shouldAcceptConnection:v5 serviceName:@"com.apple.suggestd.PersonalizationPortrait.StringDonation" allowedServerInterface:v6 allowedClientInterface:0 requestHandler:v7 validateConnection:&__block_literal_global_21515 setupClientProxy:0 interruptionHandler:&__block_literal_global_71_21519 invalidationHandler:&__block_literal_global_73_21520];

  return v8;
}

BOOL __63__PPStringDonationDelegate_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([PPXPCServerHelper checkForAndLogTrueBooleanEntitlement:@"com.apple.proactive.PersonalizationPortrait.NamedEntity.readWrite" connection:v2 serviceName:@"com.apple.suggestd.PersonalizationPortrait.StringDonation"])
  {
    v3 = [PPXPCServerHelper checkForAndLogTrueBooleanEntitlement:@"com.apple.proactive.PersonalizationPortrait.Topic.readWrite" connection:v2 serviceName:@"com.apple.suggestd.PersonalizationPortrait.StringDonation"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PPStringDonationDelegate)init
{
  v3.receiver = self;
  v3.super_class = PPStringDonationDelegate;
  return [(PPStringDonationDelegate *)&v3 init];
}

@end