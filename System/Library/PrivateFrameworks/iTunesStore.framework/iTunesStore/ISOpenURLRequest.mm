@interface ISOpenURLRequest
+ (ISOpenURLRequest)openURLRequestWithURL:(id)l;
- (ISOpenURLRequest)initWithURL:(id)l;
- (ISOpenURLRequest)initWithURLBagKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation ISOpenURLRequest

- (ISOpenURLRequest)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = ISOpenURLRequest;
  v6 = [(ISOpenURLRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_isITunesStoreURL = 1;
    objc_storeStrong(&v6->_url, l);
  }

  return v7;
}

- (ISOpenURLRequest)initWithURLBagKey:(id)key
{
  keyCopy = key;
  v10.receiver = self;
  v10.super_class = ISOpenURLRequest;
  v5 = [(ISOpenURLRequest *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_isITunesStoreURL = 1;
    v7 = [keyCopy copy];
    urlBagKey = v6->_urlBagKey;
    v6->_urlBagKey = v7;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 40) = self->_interruptsKeybagRefresh;
  *(v5 + 8) = self->_isITunesStoreURL;
  v6 = [(NSString *)self->_targetIdentifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSURL *)self->_url copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_urlBagKey copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  return v5;
}

+ (ISOpenURLRequest)openURLRequestWithURL:(id)l
{
  lCopy = l;
  v5 = [[self alloc] initWithURL:lCopy];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = ISOpenURLRequest;
  v4 = [(ISOpenURLRequest *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: (%@, %@)", v4, self->_urlBagKey, self->_url];

  return v5;
}

@end