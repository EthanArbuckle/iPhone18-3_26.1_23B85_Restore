@interface SafariSearchHelperDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation SafariSearchHelperDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:@"com.apple.private.safari.can-use-search-helper"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___WBSSafariSearchHelper];
    [v7 setClass:objc_opt_class() forSelector:"updateSuggestionsRequestWithSearchTerms:suggestionsURLTemplate:userAgentString:completionHandler:" argumentIndex:0 ofReply:1];
    [v4 setExportedInterface:v7];
    v8 = objc_alloc_init(SafariSearchHelper);
    [v4 setExportedObject:v8];
    [v4 resume];
  }

  return v6;
}

@end