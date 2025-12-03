@interface PPInternalServerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation PPInternalServerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v4 = MEMORY[0x277CCAE90];
  connectionCopy = connection;
  v6 = [v4 interfaceWithProtocol:&unk_2847A3B78];
  v7 = objc_opt_new();
  v8 = [PPXPCServerHelper shouldAcceptConnection:connectionCopy serviceName:@"com.apple.proactive.PersonalizationPortrait.Internal" allowedServerInterface:v6 allowedClientInterface:0 requestHandler:v7 validateConnection:&__block_literal_global_19579 setupClientProxy:0 interruptionHandler:&__block_literal_global_94_19582 invalidationHandler:&__block_literal_global_96_19583];

  return v8;
}

@end