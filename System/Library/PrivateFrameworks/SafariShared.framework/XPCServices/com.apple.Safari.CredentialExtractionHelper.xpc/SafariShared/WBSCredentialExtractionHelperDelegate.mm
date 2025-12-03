@interface WBSCredentialExtractionHelperDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation WBSCredentialExtractionHelperDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___WBSCredentialExtractionHelperProtocol];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v6 = [NSArray arrayWithObjects:v10 count:2];
  v7 = [NSSet setWithArray:v6];
  [v5 setClasses:v7 forSelector:"fetchExtractedCredentialsFromCSVFile:sandboxExtension:completionHandler:" argumentIndex:0 ofReply:1];

  [connectionCopy setExportedInterface:v5];
  v8 = objc_alloc_init(WBSCredentialExtractionHelper);
  [connectionCopy setExportedObject:v8];
  [connectionCopy resume];

  return 1;
}

@end