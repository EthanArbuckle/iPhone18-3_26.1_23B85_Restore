@interface PLQuotaRequest
- (PLQuotaRequest)initWithURLString:(id)a3 authToken:(id)a4 personID:(id)a5;
- (id)urlRequest;
@end

@implementation PLQuotaRequest

- (id)urlRequest
{
  v18.receiver = self;
  v18.super_class = PLQuotaRequest;
  v3 = [(AARequest *)&v18 urlRequest];
  v4 = [v3 mutableCopy];

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", self->_personID, self->_authToken];
  v5 = [v17 dataUsingEncoding:4];
  v6 = [v5 base64EncodedStringWithOptions:0];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v6];
  [v4 setValue:v7 forHTTPHeaderField:@"Authorization"];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v9 = [MEMORY[0x1E696AAE8] mainBundle];
  v10 = [v9 infoDictionary];

  v11 = [v8 objectForKey:@"ProductVersion"];
  v12 = [v10 objectForKey:@"CFBundleName"];
  v13 = [v10 objectForKey:@"CFBundleVersion"];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@ iOS/%@", v12, v13, v11];
  [v4 setValue:v14 forHTTPHeaderField:@"User-agent"];
  v15 = [MEMORY[0x1E698B890] udid];
  [v4 setValue:v15 forHTTPHeaderField:@"X-Client-UDID"];

  return v4;
}

- (PLQuotaRequest)initWithURLString:(id)a3 authToken:(id)a4 personID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = PLQuotaRequest;
  v10 = [(AARequest *)&v16 initWithURLString:a3];
  if (v10)
  {
    v11 = [v8 copy];
    authToken = v10->_authToken;
    v10->_authToken = v11;

    v13 = [v9 copy];
    personID = v10->_personID;
    v10->_personID = v13;
  }

  return v10;
}

@end