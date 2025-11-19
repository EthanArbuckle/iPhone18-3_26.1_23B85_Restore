@interface IMBasePlatformLookupService
- (IMBasePlatformLookupService)init;
- (NSString)protocolVersion;
- (id)baseUrl;
- (id)urlRequest;
- (void)performRequest:(id)a3;
@end

@implementation IMBasePlatformLookupService

- (IMBasePlatformLookupService)init
{
  v5.receiver = self;
  v5.super_class = IMBasePlatformLookupService;
  v2 = [(IMBaseStoreService *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IMBaseStoreService *)v2 setWantsJSSignature:1];
  }

  return v3;
}

- (NSString)protocolVersion
{
  protocolVersion = self->_protocolVersion;
  if (protocolVersion)
  {
    v4 = protocolVersion;
  }

  else
  {
    v4 = @"1";
  }

  return v4;
}

- (id)baseUrl
{
  v2 = [(IMBaseStoreService *)self bag];
  v3 = [v2 URLForKey:@"storeplatform-base-url-unpersonalized"];
  v4 = [v3 valueWithError:0];

  if (!v4)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:@"https://client-api.itunes.apple.com/WebObjects/MZStorePlatform.woa/wa/"];
  }

  v5 = [v4 pf_components];
  v6 = [v5 path];
  if ([v6 hasSuffix:@"lookup"])
  {
    v7 = [v6 stringByDeletingLastPathComponent];
    [v5 setPath:v7];
  }

  v8 = [v5 URL];

  return v8;
}

- (id)urlRequest
{
  v3 = [(IMBasePlatformLookupService *)self baseUrl];
  v4 = [(IMBasePlatformLookupService *)self platformAction];
  v5 = [v3 URLByAppendingPathComponent:v4];

  v6 = +[PFClientUtil clientIdentifier];
  v7 = [v5 pf_URLByAppendingQueryParameterKey:@"caller" value:v6];

  v8 = [v7 pf_URLByAppendingQueryParameterKey:@"platform" value:@"iphone"];

  v9 = [(IMBasePlatformLookupService *)self protocolVersion];
  v10 = [v8 pf_URLByAppendingQueryParameterKey:@"version" value:v9];

  v11 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v10];

  return v11;
}

- (void)performRequest:(id)a3
{
  v4 = a3;
  v5 = [(IMBasePlatformLookupService *)self urlRequest];
  [(IMBaseStoreService *)self performUrlRequest:v5 callback:v4];
}

@end