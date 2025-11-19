@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SFCredentialProviderExtensionHelperProtocol];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
  [v5 setClasses:v8 forSelector:"replaceCredentialIdentitiesWithIdentities:completion:" argumentIndex:0 ofReply:0];
  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
  [v5 setClasses:v10 forSelector:"fetchPasswordCredentialIdentitiesMatchingDomains:forExtension:completion:" argumentIndex:0 ofReply:0];

  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
  [v5 setClasses:v12 forSelector:"fetchPasswordCredentialIdentitiesMatchingDomains:completion:" argumentIndex:0 ofReply:0];

  v13 = objc_opt_class();
  v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
  [v5 setClasses:v14 forSelector:"fetchPasskeyCredentialIdentitiesMatchingDomains:completion:" argumentIndex:0 ofReply:0];

  v15 = objc_opt_class();
  v16 = [NSSet setWithObjects:v15, objc_opt_class(), 0];
  [v5 setClasses:v16 forSelector:"fetchOneTimeCodeCredentialIdentitiesMatchingDomains:forExtension:completion:" argumentIndex:0 ofReply:0];

  v17 = objc_opt_class();
  v18 = [NSSet setWithObjects:v17, objc_opt_class(), 0];
  [v5 setClasses:v18 forSelector:"fetchOneTimeCodeCredentialIdentitiesMatchingDomains:completion:" argumentIndex:0 ofReply:0];

  [v5 setClasses:v8 forSelector:"saveCredentialIdentities:completion:" argumentIndex:0 ofReply:0];
  [v5 setClasses:v8 forSelector:"removeCredentialIdentities:completion:" argumentIndex:0 ofReply:0];
  [v5 setClasses:v8 forSelector:"removeAllCredentialIdentitiesWithCompletion:" argumentIndex:0 ofReply:0];
  [v4 setExportedInterface:v5];
  v19 = objc_alloc_init(CredentialProviderExtensionHelper);
  [v4 setExportedObject:v19];
  [v4 resume];

  return 1;
}

@end