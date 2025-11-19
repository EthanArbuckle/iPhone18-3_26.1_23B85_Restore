@interface SSURLBagContext
+ (SSURLBagContext)contextWithBagType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)allHTTPHeaders;
- (NSNumber)userIdentifier;
- (NSString)cacheKey;
- (NSString)clientBundleIdentifier;
- (NSString)description;
- (SSURLBagContext)init;
- (SSURLBagContext)initWithXPCEncoding:(id)a3;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)valueForHTTPHeaderField:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)setAllHTTPHeaders:(id)a3;
- (void)setUserIdentifier:(id)a3;
- (void)setValue:(id)a3 forHTTPHeaderField:(id)a4;
@end

@implementation SSURLBagContext

- (SSURLBagContext)init
{
  result = [(SSURLBagContext *)self _init];
  if (result)
  {
    result->_allowedRetryCount = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSURLBagContext;
  [(SSURLBagContext *)&v3 dealloc];
}

+ (SSURLBagContext)contextWithBagType:(int64_t)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setBagType:a3];

  return v4;
}

- (NSDictionary)allHTTPHeaders
{
  v2 = [(NSMutableDictionary *)self->_httpHeaders copy];

  return v2;
}

- (NSString)cacheKey
{
  v3 = [(NSMutableDictionary *)self->_httpHeaders objectForKey:@"X-Apple-Store-Front"];
  v4 = [(NSMutableDictionary *)self->_httpHeaders objectForKey:@"User-Agent"];
  v5 = [(SSURLBagContext *)self userIdentifier];
  if (!v3)
  {
    v9 = +[SSAccountStore defaultStore];
    v10 = v9;
    if (v5)
    {
      v11 = [v9 accountWithUniqueIdentifier:v5];
      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = [v9 activeAccount];
      if (v11)
      {
LABEL_8:
        v3 = SSVStoreFrontIdentifierForAccount(v11);
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = [v10 localiTunesAccount];
    goto LABEL_8;
  }

  if (v4)
  {
    goto LABEL_3;
  }

LABEL_9:
  v4 = SSVDefaultUserAgent();
LABEL_3:
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(SSURLBagContext *)self bagType];
  if (v5)
  {
    v8 = [(NSNumber *)v5 stringValue];
  }

  else
  {
    v8 = @"nil";
  }

  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = @"nil";
  }

  if (v3)
  {
    v13 = v3;
  }

  else
  {
    v13 = @"nil";
  }

  if (self->_useBinCompatBag)
  {
    v14 = @"binCompat";
  }

  else
  {
    v14 = @"nonBinCompat";
  }

  return [v6 stringWithFormat:@"%ld-%@-%@-%@-%@", v7, v8, v12, v13, v14];
}

- (NSString)clientBundleIdentifier
{
  if ([(NSData *)[(SSURLBagContext *)self clientAuditTokenData] length]!= 32)
  {
    return 0;
  }

  [(NSData *)[(SSURLBagContext *)self clientAuditTokenData:0] getBytes:&v4 length:32];
  return CPCopyBundleIdentifierFromAuditToken();
}

- (void)setAllHTTPHeaders:(id)a3
{
  httpHeaders = self->_httpHeaders;
  if (httpHeaders != a3)
  {

    self->_httpHeaders = [a3 copy];
  }
}

- (void)setValue:(id)a3 forHTTPHeaderField:(id)a4
{
  httpHeaders = self->_httpHeaders;
  if (a3)
  {
    if (!httpHeaders)
    {
      httpHeaders = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_httpHeaders = httpHeaders;
    }

    [(NSMutableDictionary *)httpHeaders setObject:a3 forKey:a4];
  }

  else
  {

    [(NSMutableDictionary *)httpHeaders removeObjectForKey:a4];
  }
}

- (id)valueForHTTPHeaderField:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_httpHeaders objectForKey:a3];

  return v3;
}

- (NSNumber)userIdentifier
{
  [(NSLock *)self->_lock lock];
  userIdentifier = self->_userIdentifier;
  if (!userIdentifier)
  {
    if ([(SSURLBagContext *)self bagType]== 1)
    {
      v4 = [objc_msgSend(objc_msgSend(MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:{*MEMORY[0x1E698C4C8]), "ams_activeiTunesAccount"), "ams_DSID"}];
    }

    else
    {
      v4 = [objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
    }

    userIdentifier = v4;
    self->_userIdentifier = userIdentifier;
  }

  [(NSLock *)self->_lock unlock];
  return userIdentifier;
}

- (void)setUserIdentifier:(id)a3
{
  [(NSLock *)self->_lock lock];
  userIdentifier = self->_userIdentifier;
  if (userIdentifier)
  {

    self->_userIdentifier = 0;
  }

  self->_userIdentifier = a3;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (NSString)description
{
  v3.receiver = self;
  v3.super_class = SSURLBagContext;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: [%@]", -[SSURLBagContext description](&v3, sel_description), -[SSURLBagContext cacheKey](self, "cacheKey")];
}

- (unint64_t)hash
{
  bagType = self->_bagType;
  v4 = [(NSData *)self->_clientAuditTokenData hash];
  v5 = v4 + bagType + [(NSNumber *)[(SSURLBagContext *)self userIdentifier] hash];
  return v5 + [(NSMutableDictionary *)self->_httpHeaders hash];
}

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && self->_allowedRetryCount == *(a3 + 1) && self->_allowsBootstrapCellularData == *(a3 + 16) && self->_allowsExpiredBags == *(a3 + 17) && self->_bagType == *(a3 + 3) && self->_ignoresCaches == *(a3 + 48) && self->_usesCachedBagsOnly == *(a3 + 72) && self->_useBinCompatBag == *(a3 + 49))
  {
    clientAuditTokenData = self->_clientAuditTokenData;
    if (clientAuditTokenData == *(a3 + 4) || (v7 = [(NSData *)clientAuditTokenData isEqual:?]) != 0)
    {
      v8 = [(SSURLBagContext *)self userIdentifier];
      if (v8 == [a3 userIdentifier] || (v7 = -[NSNumber isEqual:](-[SSURLBagContext userIdentifier](self, "userIdentifier"), "isEqual:", objc_msgSend(a3, "userIdentifier"))) != 0)
      {
        httpHeaders = self->_httpHeaders;
        if (httpHeaders == *(a3 + 5))
        {
          LOBYTE(v7) = 1;
        }

        else
        {

          LOBYTE(v7) = [(NSMutableDictionary *)httpHeaders isEqualToDictionary:?];
        }
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_allowedRetryCount;
  *(v5 + 16) = self->_allowsBootstrapCellularData;
  *(v5 + 17) = self->_allowsExpiredBags;
  *(v5 + 24) = self->_bagType;
  *(v5 + 32) = [(NSData *)self->_clientAuditTokenData copyWithZone:a3];
  *(v5 + 40) = [(NSMutableDictionary *)self->_httpHeaders mutableCopyWithZone:a3];
  *(v5 + 48) = self->_ignoresCaches;
  *(v5 + 64) = [(NSNumber *)self->_userIdentifier copyWithZone:a3];
  *(v5 + 72) = self->_usesCachedBagsOnly;
  *(v5 + 49) = self->_useBinCompatBag;
  return v5;
}

- (SSURLBagContext)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v5 = [(SSURLBagContext *)self _init];
    if (!v5)
    {
      return v5;
    }

    v5->_allowedRetryCount = xpc_dictionary_get_int64(a3, "4");
    v5->_allowsBootstrapCellularData = xpc_dictionary_get_BOOL(a3, "7");
    v5->_allowsExpiredBags = xpc_dictionary_get_BOOL(a3, "5");
    v5->_bagType = xpc_dictionary_get_int64(a3, "0");
    objc_opt_class();
    v5->_clientAuditTokenData = SSXPCDictionaryCopyCFObjectWithClass(a3, "8");
    v5->_ignoresCaches = xpc_dictionary_get_BOOL(a3, "3");
    objc_opt_class();
    v5->_userIdentifier = SSXPCDictionaryCopyCFObjectWithClass(a3, "2");
    v5->_usesCachedBagsOnly = xpc_dictionary_get_BOOL(a3, "6");
    v5->_useBinCompatBag = xpc_dictionary_get_BOOL(a3, "9");
    objc_opt_class();
    self = SSXPCDictionaryCopyCFObjectWithClass(a3, "1");
    v5->_httpHeaders = [(SSURLBagContext *)self mutableCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "4", self->_allowedRetryCount);
  xpc_dictionary_set_BOOL(v3, "7", self->_allowsBootstrapCellularData);
  xpc_dictionary_set_BOOL(v3, "5", self->_allowsExpiredBags);
  xpc_dictionary_set_int64(v3, "0", self->_bagType);
  SSXPCDictionarySetCFObject(v3, "8", self->_clientAuditTokenData);
  SSXPCDictionarySetCFObject(v3, "1", self->_httpHeaders);
  xpc_dictionary_set_BOOL(v3, "3", self->_ignoresCaches);
  SSXPCDictionarySetCFObject(v3, "2", self->_userIdentifier);
  xpc_dictionary_set_BOOL(v3, "6", self->_usesCachedBagsOnly);
  return v3;
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = SSURLBagContext;
  v2 = [(SSURLBagContext *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    v2->_lock = v3;
    [(NSLock *)v3 setName:@"com.apple.StoreServices.SSURLBagContext"];
  }

  return v2;
}

@end