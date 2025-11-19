@interface ISOpenURLRequest
+ (ISOpenURLRequest)openURLRequestWithURL:(id)a3;
- (ISOpenURLRequest)initWithURL:(id)a3;
- (ISOpenURLRequest)initWithURLBagKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation ISOpenURLRequest

- (ISOpenURLRequest)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ISOpenURLRequest;
  v6 = [(ISOpenURLRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_isITunesStoreURL = 1;
    objc_storeStrong(&v6->_url, a3);
  }

  return v7;
}

- (ISOpenURLRequest)initWithURLBagKey:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ISOpenURLRequest;
  v5 = [(ISOpenURLRequest *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_isITunesStoreURL = 1;
    v7 = [v4 copy];
    urlBagKey = v6->_urlBagKey;
    v6->_urlBagKey = v7;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 40) = self->_interruptsKeybagRefresh;
  *(v5 + 8) = self->_isITunesStoreURL;
  v6 = [(NSString *)self->_targetIdentifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSURL *)self->_url copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_urlBagKey copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  return v5;
}

+ (ISOpenURLRequest)openURLRequestWithURL:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithURL:v4];

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