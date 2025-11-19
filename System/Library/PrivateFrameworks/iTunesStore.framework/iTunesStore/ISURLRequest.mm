@interface ISURLRequest
+ (id)requestWithURL:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ISURLRequest)initWithCoder:(id)a3;
- (ISURLRequest)initWithRequestProperties:(id)a3;
- (ISURLRequest)initWithURL:(id)a3;
- (ISURLRequest)initWithURLRequest:(id)a3;
- (id)_initCommon;
- (id)copyWithZone:(_NSZone *)a3;
- (id)requestProperties;
- (void)encodeWithCoder:(id)a3;
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

- (ISURLRequest)initWithRequestProperties:(id)a3
{
  v4 = a3;
  v5 = [(ISURLRequest *)self _initCommon];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    properties = v5->_properties;
    v5->_properties = v6;
  }

  return v5;
}

- (ISURLRequest)initWithURLRequest:(id)a3
{
  v4 = a3;
  v5 = [(ISURLRequest *)self _initCommon];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D69BD0]) initWithURLRequest:v4];
    properties = v5->_properties;
    v5->_properties = v6;
  }

  return v5;
}

- (ISURLRequest)initWithURL:(id)a3
{
  v4 = a3;
  v5 = [(ISURLRequest *)self _initCommon];
  v6 = v5;
  if (v5)
  {
    [v5[2] setURL:v4];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSLock *)lock lock];
  v6 = [v5 allowsKeyedCoding];
  properties = self->_properties;
  if (v6)
  {
    [v5 encodeObject:properties forKey:@"properties"];
  }

  else
  {
    [v5 encodeObject:properties];
  }

  v8 = self->_lock;

  [(NSLock *)v8 unlock];
}

- (ISURLRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ISURLRequest *)self _initCommon];
  if (v5)
  {
    if (![v4 allowsKeyedCoding])
    {
      v8 = [v4 decodeObject];
      properties = v5->_properties;
      v5->_properties = v8;
LABEL_9:

      goto LABEL_10;
    }

    if ([v4 containsValueForKey:@"properties"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"properties"];
      v7 = v5->_properties;
      v5->_properties = v6;
    }

    else
    {
      -[SSMutableURLRequestProperties setAllowedRetryCount:](v5->_properties, "setAllowedRetryCount:", [v4 decodeIntegerForKey:@"retryCount"]);
      -[SSMutableURLRequestProperties setCachePolicy:](v5->_properties, "setCachePolicy:", [v4 decodeIntegerForKey:@"cachePolicy"]);
      v10 = v5->_properties;
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"body"];
      [(SSMutableURLRequestProperties *)v10 setHTTPBody:v11];

      v12 = v5->_properties;
      v13 = MEMORY[0x277CBEB98];
      v14 = objc_opt_class();
      v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
      v16 = [v4 decodeObjectOfClasses:v15 forKey:@"headers"];
      [(SSMutableURLRequestProperties *)v12 setHTTPHeaders:v16];

      v17 = v5->_properties;
      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"method"];
      [(SSMutableURLRequestProperties *)v17 setHTTPMethod:v18];

      v19 = v5->_properties;
      v20 = MEMORY[0x277CBEB98];
      v21 = objc_opt_class();
      v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
      v23 = [v4 decodeObjectOfClasses:v22 forKey:@"query"];
      [(SSMutableURLRequestProperties *)v19 setRequestParameters:v23];

      v24 = v5->_properties;
      [v4 decodeDoubleForKey:@"timeout"];
      [(SSMutableURLRequestProperties *)v24 setTimeoutInterval:?];
    }

    if ([v4 containsValueForKey:@"urls"])
    {
      -[SSMutableURLRequestProperties setExpectedContentLength:](v5->_properties, "setExpectedContentLength:", [v4 decodeInt64ForKey:@"expectedlength"]);
      -[SSMutableURLRequestProperties setURLBagType:](v5->_properties, "setURLBagType:", [v4 decodeIntegerForKey:@"bagtype"]);
      v25 = v5->_properties;
      v26 = MEMORY[0x277CBEB98];
      v27 = objc_opt_class();
      v28 = objc_opt_class();
      properties = [v26 setWithObjects:{v27, v28, objc_opt_class(), 0}];
      v29 = [v4 decodeObjectOfClasses:properties forKey:@"urls"];
      [(SSMutableURLRequestProperties *)v25 setURLs:v29];

      goto LABEL_9;
    }
  }

LABEL_10:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  [(NSLock *)self->_lock lock];
  v6 = [(SSMutableURLRequestProperties *)self->_properties mutableCopyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  [(NSLock *)self->_lock unlock];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ISURLRequest *)self requestProperties];
    v6 = [v4 requestProperties];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)requestWithURL:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithURL:v4];

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