@interface PPConfigServerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation PPConfigServerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v4 = MEMORY[0x277CCAE90];
  connectionCopy = connection;
  v6 = [v4 interfaceWithProtocol:&unk_28478CC48];
  v7 = objc_opt_new();
  v8 = [PPXPCServerHelper shouldAcceptConnection:connectionCopy serviceName:@"com.apple.proactive.PersonalizationPortrait.Config" allowedServerInterface:v6 allowedClientInterface:0 requestHandler:v7 validateConnection:&__block_literal_global_2605 setupClientProxy:0 interruptionHandler:&__block_literal_global_78 invalidationHandler:&__block_literal_global_80_2607];

  return v8;
}

@end