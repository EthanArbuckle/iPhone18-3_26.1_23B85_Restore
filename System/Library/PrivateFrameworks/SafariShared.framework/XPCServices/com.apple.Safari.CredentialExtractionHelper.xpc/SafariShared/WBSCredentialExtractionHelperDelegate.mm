@interface WBSCredentialExtractionHelperDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation WBSCredentialExtractionHelperDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___WBSCredentialExtractionHelperProtocol];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v6 = [NSArray arrayWithObjects:v10 count:2];
  v7 = [NSSet setWithArray:v6];
  [v5 setClasses:v7 forSelector:"fetchExtractedCredentialsFromCSVFile:sandboxExtension:completionHandler:" argumentIndex:0 ofReply:1];

  [v4 setExportedInterface:v5];
  v8 = objc_alloc_init(WBSCredentialExtractionHelper);
  [v4 setExportedObject:v8];
  [v4 resume];

  return 1;
}

@end