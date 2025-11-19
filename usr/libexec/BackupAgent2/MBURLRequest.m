@interface MBURLRequest
+ (MBURLRequest)requestWithMethod:(id)a3 URL:(id)a4;
+ (MBURLRequest)requestWithURL:(id)a3;
+ (id)request;
- (MBURLRequest)init;
- (NSDictionary)headers;
- (id)NSURLRequest;
- (void)dealloc;
@end

@implementation MBURLRequest

+ (id)request
{
  v2 = objc_alloc_init(MBURLRequest);

  return v2;
}

+ (MBURLRequest)requestWithURL:(id)a3
{
  v4 = +[MBURLRequest request];
  [(MBURLRequest *)v4 setURL:a3];
  return v4;
}

+ (MBURLRequest)requestWithMethod:(id)a3 URL:(id)a4
{
  v6 = +[MBURLRequest request];
  [(MBURLRequest *)v6 setMethod:a3];
  [(MBURLRequest *)v6 setURL:a4];
  return v6;
}

- (MBURLRequest)init
{
  v5.receiver = self;
  v5.super_class = MBURLRequest;
  v2 = [(MBURLRequest *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_method = @"GET";
    v2->_headers = objc_alloc_init(NSMutableDictionary);
    v3->_log = 1;
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MBURLRequest;
  [(MBURLRequest *)&v3 dealloc];
}

- (NSDictionary)headers
{
  v2 = [(NSMutableDictionary *)self->_headers copy];

  return v2;
}

- (id)NSURLRequest
{
  v3 = [NSMutableURLRequest requestWithURL:self->_URL];
  [(NSMutableURLRequest *)v3 setCachePolicy:1];
  [(NSMutableURLRequest *)v3 setTimeoutInterval:30.0];
  [(NSMutableURLRequest *)v3 setHTTPBody:self->_data];
  [(NSMutableURLRequest *)v3 setHTTPMethod:self->_method];
  [(NSMutableURLRequest *)v3 setHTTPShouldUsePipelining:1];
  [(NSMutableURLRequest *)v3 setAllHTTPHeaderFields:self->_headers];
  if (self->_MMePreAuth)
  {
    [(NSMutableURLRequest *)v3 _setProperty:&__kCFBooleanTrue forKey:kCFURLRequestPreAuthXMMeAuthToken];
  }

  if (MBIsInternalInstall() && [(NSURL *)self->_URL user]&& [(NSURL *)self->_URL password])
  {
    v4 = [NSString stringWithFormat:@"Basic %@", [(NSData *)[[NSString stringWithFormat:?], "dataUsingEncoding:", 4], "base64EncodedStringWithOptions:", 0]];
    [(NSMutableURLRequest *)v3 setValue:v4 forHTTPHeaderField:@"Authorization"];
    [(NSMutableDictionary *)self->_headers setObject:v4 forKeyedSubscript:@"Authorization"];
  }

  v5 = sub_100006724();
  [(NSMutableURLRequest *)v3 setValue:v5 forHTTPHeaderField:@"User-Agent"];
  [(NSMutableDictionary *)self->_headers setObject:v5 forKeyedSubscript:@"User-Agent"];
  v6 = [[AKAppleIDSession alloc] initWithIdentifier:@"com.apple.MobileBackup"];
  v7 = [v6 appleIDHeadersForRequest:v3];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        [(NSMutableURLRequest *)v3 setValue:v13 forHTTPHeaderField:v12];
        [(NSMutableDictionary *)self->_headers setObject:v13 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v3;
}

@end