@interface TVURLImageRequest
- (NSString)identifier;
- (TVURLImageRequest)initWithURL:(id)a3 headers:(id)a4 identifier:(id)a5 decrypter:(id)a6;
@end

@implementation TVURLImageRequest

- (TVURLImageRequest)initWithURL:(id)a3 headers:(id)a4 identifier:(id)a5 decrypter:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = TVURLImageRequest;
  v15 = [(TVURLImageRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_url, a3);
    objc_storeStrong(&v16->_headers, a4);
    objc_storeStrong(&v16->_identifier, a5);
    objc_storeStrong(&v16->_decrypter, a6);
  }

  return v16;
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (identifier)
  {
    v3 = identifier;
  }

  else
  {
    v3 = [(NSURL *)self->_url absoluteString];
  }

  return v3;
}

@end