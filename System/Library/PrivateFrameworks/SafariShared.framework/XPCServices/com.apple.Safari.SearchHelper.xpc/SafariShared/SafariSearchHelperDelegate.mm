@interface SafariSearchHelperDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation SafariSearchHelperDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.private.safari.can-use-search-helper"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___WBSSafariSearchHelper];
    [v7 setClass:objc_opt_class() forSelector:"updateSuggestionsRequestWithSearchTerms:suggestionsURLTemplate:userAgentString:completionHandler:" argumentIndex:0 ofReply:1];
    [connectionCopy setExportedInterface:v7];
    v8 = objc_alloc_init(SafariSearchHelper);
    [connectionCopy setExportedObject:v8];
    [connectionCopy resume];
  }

  return bOOLValue;
}

@end