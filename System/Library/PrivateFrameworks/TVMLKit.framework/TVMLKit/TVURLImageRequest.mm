@interface TVURLImageRequest
- (NSString)identifier;
- (TVURLImageRequest)initWithURL:(id)l headers:(id)headers identifier:(id)identifier decrypter:(id)decrypter;
@end

@implementation TVURLImageRequest

- (TVURLImageRequest)initWithURL:(id)l headers:(id)headers identifier:(id)identifier decrypter:(id)decrypter
{
  lCopy = l;
  headersCopy = headers;
  identifierCopy = identifier;
  decrypterCopy = decrypter;
  v18.receiver = self;
  v18.super_class = TVURLImageRequest;
  v15 = [(TVURLImageRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_url, l);
    objc_storeStrong(&v16->_headers, headers);
    objc_storeStrong(&v16->_identifier, identifier);
    objc_storeStrong(&v16->_decrypter, decrypter);
  }

  return v16;
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (identifier)
  {
    absoluteString = identifier;
  }

  else
  {
    absoluteString = [(NSURL *)self->_url absoluteString];
  }

  return absoluteString;
}

@end