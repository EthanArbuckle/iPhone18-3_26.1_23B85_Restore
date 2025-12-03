@interface PLQuotaRequest
- (PLQuotaRequest)initWithURLString:(id)string authToken:(id)token personID:(id)d;
- (id)urlRequest;
@end

@implementation PLQuotaRequest

- (id)urlRequest
{
  v18.receiver = self;
  v18.super_class = PLQuotaRequest;
  urlRequest = [(AARequest *)&v18 urlRequest];
  v4 = [urlRequest mutableCopy];

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", self->_personID, self->_authToken];
  v5 = [v17 dataUsingEncoding:4];
  v6 = [v5 base64EncodedStringWithOptions:0];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v6];
  [v4 setValue:v7 forHTTPHeaderField:@"Authorization"];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v11 = [v8 objectForKey:@"ProductVersion"];
  v12 = [infoDictionary objectForKey:@"CFBundleName"];
  v13 = [infoDictionary objectForKey:@"CFBundleVersion"];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@ iOS/%@", v12, v13, v11];
  [v4 setValue:v14 forHTTPHeaderField:@"User-agent"];
  udid = [MEMORY[0x1E698B890] udid];
  [v4 setValue:udid forHTTPHeaderField:@"X-Client-UDID"];

  return v4;
}

- (PLQuotaRequest)initWithURLString:(id)string authToken:(id)token personID:(id)d
{
  tokenCopy = token;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = PLQuotaRequest;
  v10 = [(AARequest *)&v16 initWithURLString:string];
  if (v10)
  {
    v11 = [tokenCopy copy];
    authToken = v10->_authToken;
    v10->_authToken = v11;

    v13 = [dCopy copy];
    personID = v10->_personID;
    v10->_personID = v13;
  }

  return v10;
}

@end