@interface ISURLRequest
+ (id)requestWithURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (ISURLRequest)initWithCoder:(id)coder;
- (ISURLRequest)initWithRequestProperties:(id)properties;
- (ISURLRequest)initWithURL:(id)l;
- (ISURLRequest)initWithURLRequest:(id)request;
- (id)_initCommon;
- (id)copyWithZone:(_NSZone *)zone;
- (id)requestProperties;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISURLRequest

- (id)_initCommon
{
  v8.receiver = self;
  v8.super_class = ISURLRequest;
  v2 = [(ISURLRequest *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D69BD0]);
    properties = v2->_properties;
    v2->_properties = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v2->_lock;
    v2->_lock = v5;
  }

  return v2;
}

- (ISURLRequest)initWithRequestProperties:(id)properties
{
  propertiesCopy = properties;
  _initCommon = [(ISURLRequest *)self _initCommon];
  if (_initCommon)
  {
    v6 = [propertiesCopy mutableCopy];
    properties = _initCommon->_properties;
    _initCommon->_properties = v6;
  }

  return _initCommon;
}

- (ISURLRequest)initWithURLRequest:(id)request
{
  requestCopy = request;
  _initCommon = [(ISURLRequest *)self _initCommon];
  if (_initCommon)
  {
    v6 = [objc_alloc(MEMORY[0x277D69BD0]) initWithURLRequest:requestCopy];
    properties = _initCommon->_properties;
    _initCommon->_properties = v6;
  }

  return _initCommon;
}

- (ISURLRequest)initWithURL:(id)l
{
  lCopy = l;
  _initCommon = [(ISURLRequest *)self _initCommon];
  v6 = _initCommon;
  if (_initCommon)
  {
    [_initCommon[2] setURL:lCopy];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  lock = self->_lock;
  coderCopy = coder;
  [(NSLock *)lock lock];
  allowsKeyedCoding = [coderCopy allowsKeyedCoding];
  properties = self->_properties;
  if (allowsKeyedCoding)
  {
    [coderCopy encodeObject:properties forKey:@"properties"];
  }

  else
  {
    [coderCopy encodeObject:properties];
  }

  v8 = self->_lock;

  [(NSLock *)v8 unlock];
}

- (ISURLRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  _initCommon = [(ISURLRequest *)self _initCommon];
  if (_initCommon)
  {
    if (![coderCopy allowsKeyedCoding])
    {
      decodeObject = [coderCopy decodeObject];
      properties = _initCommon->_properties;
      _initCommon->_properties = decodeObject;
LABEL_9:

      goto LABEL_10;
    }

    if ([coderCopy containsValueForKey:@"properties"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"properties"];
      v7 = _initCommon->_properties;
      _initCommon->_properties = v6;
    }

    else
    {
      -[SSMutableURLRequestProperties setAllowedRetryCount:](_initCommon->_properties, "setAllowedRetryCount:", [coderCopy decodeIntegerForKey:@"retryCount"]);
      -[SSMutableURLRequestProperties setCachePolicy:](_initCommon->_properties, "setCachePolicy:", [coderCopy decodeIntegerForKey:@"cachePolicy"]);
      v10 = _initCommon->_properties;
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
      [(SSMutableURLRequestProperties *)v10 setHTTPBody:v11];

      v12 = _initCommon->_properties;
      v13 = MEMORY[0x277CBEB98];
      v14 = objc_opt_class();
      v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
      v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"headers"];
      [(SSMutableURLRequestProperties *)v12 setHTTPHeaders:v16];

      v17 = _initCommon->_properties;
      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"method"];
      [(SSMutableURLRequestProperties *)v17 setHTTPMethod:v18];

      v19 = _initCommon->_properties;
      v20 = MEMORY[0x277CBEB98];
      v21 = objc_opt_class();
      v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
      v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"query"];
      [(SSMutableURLRequestProperties *)v19 setRequestParameters:v23];

      v24 = _initCommon->_properties;
      [coderCopy decodeDoubleForKey:@"timeout"];
      [(SSMutableURLRequestProperties *)v24 setTimeoutInterval:?];
    }

    if ([coderCopy containsValueForKey:@"urls"])
    {
      -[SSMutableURLRequestProperties setExpectedContentLength:](_initCommon->_properties, "setExpectedContentLength:", [coderCopy decodeInt64ForKey:@"expectedlength"]);
      -[SSMutableURLRequestProperties setURLBagType:](_initCommon->_properties, "setURLBagType:", [coderCopy decodeIntegerForKey:@"bagtype"]);
      v25 = _initCommon->_properties;
      v26 = MEMORY[0x277CBEB98];
      v27 = objc_opt_class();
      v28 = objc_opt_class();
      properties = [v26 setWithObjects:{v27, v28, objc_opt_class(), 0}];
      v29 = [coderCopy decodeObjectOfClasses:properties forKey:@"urls"];
      [(SSMutableURLRequestProperties *)v25 setURLs:v29];

      goto LABEL_9;
    }
  }

LABEL_10:

  return _initCommon;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  [(NSLock *)self->_lock lock];
  v6 = [(SSMutableURLRequestProperties *)self->_properties mutableCopyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  [(NSLock *)self->_lock unlock];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    requestProperties = [(ISURLRequest *)self requestProperties];
    requestProperties2 = [equalCopy requestProperties];
    v7 = [requestProperties isEqual:requestProperties2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)requestWithURL:(id)l
{
  lCopy = l;
  v5 = [[self alloc] initWithURL:lCopy];

  return v5;
}

- (id)requestProperties
{
  [(NSLock *)self->_lock lock];
  v3 = [(SSMutableURLRequestProperties *)self->_properties copy];
  [(NSLock *)self->_lock unlock];

  return v3;
}

@end