@interface SSURLBagContext
+ (SSURLBagContext)contextWithBagType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)allHTTPHeaders;
- (NSNumber)userIdentifier;
- (NSString)cacheKey;
- (NSString)clientBundleIdentifier;
- (NSString)description;
- (SSURLBagContext)init;
- (SSURLBagContext)initWithXPCEncoding:(id)encoding;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)valueForHTTPHeaderField:(id)field;
- (unint64_t)hash;
- (void)dealloc;
- (void)setAllHTTPHeaders:(id)headers;
- (void)setUserIdentifier:(id)identifier;
- (void)setValue:(id)value forHTTPHeaderField:(id)field;
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

+ (SSURLBagContext)contextWithBagType:(int64_t)type
{
  v4 = objc_alloc_init(self);
  [v4 setBagType:type];

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
  userIdentifier = [(SSURLBagContext *)self userIdentifier];
  if (!v3)
  {
    v9 = +[SSAccountStore defaultStore];
    v10 = v9;
    if (userIdentifier)
    {
      activeAccount = [v9 accountWithUniqueIdentifier:userIdentifier];
      if (activeAccount)
      {
        goto LABEL_8;
      }
    }

    else
    {
      activeAccount = [v9 activeAccount];
      if (activeAccount)
      {
LABEL_8:
        v3 = SSVStoreFrontIdentifierForAccount(activeAccount);
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    activeAccount = [v10 localiTunesAccount];
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
  bagType = [(SSURLBagContext *)self bagType];
  if (userIdentifier)
  {
    stringValue = [(NSNumber *)userIdentifier stringValue];
  }

  else
  {
    stringValue = @"nil";
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

  return [v6 stringWithFormat:@"%ld-%@-%@-%@-%@", bagType, stringValue, v12, v13, v14];
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

- (void)setAllHTTPHeaders:(id)headers
{
  httpHeaders = self->_httpHeaders;
  if (httpHeaders != headers)
  {

    self->_httpHeaders = [headers copy];
  }
}

- (void)setValue:(id)value forHTTPHeaderField:(id)field
{
  httpHeaders = self->_httpHeaders;
  if (value)
  {
    if (!httpHeaders)
    {
      httpHeaders = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_httpHeaders = httpHeaders;
    }

    [(NSMutableDictionary *)httpHeaders setObject:value forKey:field];
  }

  else
  {

    [(NSMutableDictionary *)httpHeaders removeObjectForKey:field];
  }
}

- (id)valueForHTTPHeaderField:(id)field
{
  v3 = [(NSMutableDictionary *)self->_httpHeaders objectForKey:field];

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

- (void)setUserIdentifier:(id)identifier
{
  [(NSLock *)self->_lock lock];
  userIdentifier = self->_userIdentifier;
  if (userIdentifier)
  {

    self->_userIdentifier = 0;
  }

  self->_userIdentifier = identifier;
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

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && self->_allowedRetryCount == *(equal + 1) && self->_allowsBootstrapCellularData == *(equal + 16) && self->_allowsExpiredBags == *(equal + 17) && self->_bagType == *(equal + 3) && self->_ignoresCaches == *(equal + 48) && self->_usesCachedBagsOnly == *(equal + 72) && self->_useBinCompatBag == *(equal + 49))
  {
    clientAuditTokenData = self->_clientAuditTokenData;
    if (clientAuditTokenData == *(equal + 4) || (v7 = [(NSData *)clientAuditTokenData isEqual:?]) != 0)
    {
      userIdentifier = [(SSURLBagContext *)self userIdentifier];
      if (userIdentifier == [equal userIdentifier] || (v7 = -[NSNumber isEqual:](-[SSURLBagContext userIdentifier](self, "userIdentifier"), "isEqual:", objc_msgSend(equal, "userIdentifier"))) != 0)
      {
        httpHeaders = self->_httpHeaders;
        if (httpHeaders == *(equal + 5))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_allowedRetryCount;
  *(v5 + 16) = self->_allowsBootstrapCellularData;
  *(v5 + 17) = self->_allowsExpiredBags;
  *(v5 + 24) = self->_bagType;
  *(v5 + 32) = [(NSData *)self->_clientAuditTokenData copyWithZone:zone];
  *(v5 + 40) = [(NSMutableDictionary *)self->_httpHeaders mutableCopyWithZone:zone];
  *(v5 + 48) = self->_ignoresCaches;
  *(v5 + 64) = [(NSNumber *)self->_userIdentifier copyWithZone:zone];
  *(v5 + 72) = self->_usesCachedBagsOnly;
  *(v5 + 49) = self->_useBinCompatBag;
  return v5;
}

- (SSURLBagContext)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    _init = [(SSURLBagContext *)self _init];
    if (!_init)
    {
      return _init;
    }

    _init->_allowedRetryCount = xpc_dictionary_get_int64(encoding, "4");
    _init->_allowsBootstrapCellularData = xpc_dictionary_get_BOOL(encoding, "7");
    _init->_allowsExpiredBags = xpc_dictionary_get_BOOL(encoding, "5");
    _init->_bagType = xpc_dictionary_get_int64(encoding, "0");
    objc_opt_class();
    _init->_clientAuditTokenData = SSXPCDictionaryCopyCFObjectWithClass(encoding, "8");
    _init->_ignoresCaches = xpc_dictionary_get_BOOL(encoding, "3");
    objc_opt_class();
    _init->_userIdentifier = SSXPCDictionaryCopyCFObjectWithClass(encoding, "2");
    _init->_usesCachedBagsOnly = xpc_dictionary_get_BOOL(encoding, "6");
    _init->_useBinCompatBag = xpc_dictionary_get_BOOL(encoding, "9");
    objc_opt_class();
    self = SSXPCDictionaryCopyCFObjectWithClass(encoding, "1");
    _init->_httpHeaders = [(SSURLBagContext *)self mutableCopy];
  }

  else
  {
    _init = 0;
  }

  return _init;
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