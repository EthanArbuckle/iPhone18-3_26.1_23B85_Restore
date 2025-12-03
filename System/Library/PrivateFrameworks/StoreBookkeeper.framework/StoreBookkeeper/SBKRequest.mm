@interface SBKRequest
+ (id)_contentEncodingTypeStringForBodyContentEncodingType:(int64_t)type;
+ (id)_contentTypeStringForBodyContentType:(int64_t)type;
+ (id)_methodStringForMethod:(int64_t)method;
+ (id)requestWithRequestURL:(id)l;
+ (int64_t)bodyContentEncodingType;
+ (int64_t)bodyContentType;
- (SBKRequest)initWithRequestURL:(id)l;
- (id)_defaultHeaderFields;
- (id)copyRequestProperties;
- (id)description;
- (id)descriptionWithoutHeaderFields;
- (void)setBodyData:(id)data;
- (void)setBodyDataWithPropertyList:(id)list;
- (void)setValue:(id)value forArgument:(id)argument;
@end

@implementation SBKRequest

- (id)_defaultHeaderFields
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(SBKRequest *)self acceptsGzipEncoding])
  {
    [dictionary setObject:@"gzip" forKey:@"Accept-Encoding"];
  }

  v4 = objc_opt_class();
  v5 = [v4 _contentEncodingTypeStringForBodyContentEncodingType:{objc_msgSend(objc_opt_class(), "bodyContentEncodingType")}];
  if (v5)
  {
    [dictionary setObject:v5 forKey:@"Content-Encoding"];
  }

  v6 = objc_opt_class();
  v7 = [v6 _contentTypeStringForBodyContentType:{objc_msgSend(objc_opt_class(), "bodyContentType")}];
  if (v7)
  {
    [dictionary setObject:v7 forKey:@"Content-Type"];
  }

  return dictionary;
}

- (id)copyRequestProperties
{
  v3 = [objc_alloc(MEMORY[0x277D69BD0]) initWithURL:self->_requestURL];
  v4 = [objc_opt_class() _methodStringForMethod:self->_method];
  [v3 setHTTPMethod:v4];

  headers = self->_headers;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __35__SBKRequest_copyRequestProperties__block_invoke;
  v19[3] = &unk_279D232B8;
  v6 = v3;
  v20 = v6;
  [(NSDictionary *)headers enumerateKeysAndObjectsUsingBlock:v19];
  arguments = self->_arguments;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __35__SBKRequest_copyRequestProperties__block_invoke_2;
  v17 = &unk_279D232B8;
  v8 = v6;
  v18 = v8;
  [(NSDictionary *)arguments enumerateKeysAndObjectsUsingBlock:&v14];
  if ([(SBKRequest *)self includeDeviceGUID:v14])
  {
    mEMORY[0x277D7FCE0] = [MEMORY[0x277D7FCE0] sharedInstance];
    guid = [mEMORY[0x277D7FCE0] guid];
    [v8 setValue:guid forRequestParameter:@"guid"];
  }

  [v8 setHTTPBody:self->_bodyData];
  [(SBKRequest *)self timeoutInterval];
  [v8 setTimeoutInterval:?];
  v11 = v18;
  v12 = v8;

  return v12;
}

- (void)setBodyDataWithPropertyList:(id)list
{
  v22 = *MEMORY[0x277D85DE8];
  listCopy = list;
  bodyContentType = [objc_opt_class() bodyContentType];
  if (bodyContentType == 2)
  {
    v7 = MEMORY[0x277CCAC58];
    v18 = 0;
    v8 = &v18;
    v9 = &v18;
    v10 = listCopy;
    v11 = 100;
  }

  else
  {
    if (bodyContentType != 3)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBKRequest.m" lineNumber:119 description:@"Invalid bodyContentType requested for propertyList"];

      v12 = 0;
      goto LABEL_10;
    }

    v7 = MEMORY[0x277CCAC58];
    v19 = 0;
    v8 = &v19;
    v9 = &v19;
    v10 = listCopy;
    v11 = 200;
  }

  v12 = [v7 dataWithPropertyList:v10 format:v11 options:0 error:{v9, v18, v19}];
  v13 = *v8;
  if (!v13)
  {
LABEL_10:
    [(SBKRequest *)self setBodyData:v12];
    goto LABEL_11;
  }

  v14 = v13;
  v15 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v14;
    _os_log_impl(&dword_26BC19000, v15, OS_LOG_TYPE_DEFAULT, "ERROR: failed to serialize property list with error = %@", buf, 0xCu);
  }

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)setBodyData:(id)data
{
  dataCopy = data;
  if ([objc_opt_class() bodyContentEncodingType] == 1)
  {
    sBKDataByDeflatingWithGZip = [(NSData *)dataCopy SBKDataByDeflatingWithGZip];

    dataCopy = sBKDataByDeflatingWithGZip;
  }

  bodyData = self->_bodyData;
  self->_bodyData = dataCopy;
}

- (void)setValue:(id)value forArgument:(id)argument
{
  valueCopy = value;
  argumentCopy = argument;
  arguments = self->_arguments;
  if (!arguments)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_arguments;
    self->_arguments = v8;

    arguments = self->_arguments;
  }

  [(NSDictionary *)arguments setObject:valueCopy forKey:argumentCopy];
}

- (id)descriptionWithoutHeaderFields
{
  v7.receiver = self;
  v7.super_class = SBKRequest;
  v3 = [(SBKRequest *)&v7 description];
  v4 = [objc_opt_class() _methodStringForMethod:self->_method];
  v5 = [v3 stringByAppendingFormat:@" %@ [%@]", v4, self->_action];

  return v5;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = SBKRequest;
  v3 = [(SBKRequest *)&v9 description];
  requestURL = self->_requestURL;
  v5 = [objc_opt_class() _methodStringForMethod:self->_method];
  headers = self->_headers;
  v7 = [v3 stringByAppendingFormat:@" %@ [%@] URL = %@, shouldAuthenticate = %d, arguments = %@, headers = %@, bodyData = %@ ", requestURL, v5, self->_action, self->_shouldAuthenticate, self->_arguments, headers, self->_bodyData];

  return v7;
}

- (SBKRequest)initWithRequestURL:(id)l
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = SBKRequest;
  v6 = [(SBKRequest *)&v15 init];
  if (v6)
  {
    absoluteString = [lCopy absoluteString];
    lastPathComponent = [absoluteString lastPathComponent];
    action = v6->_action;
    v6->_action = lastPathComponent;

    objc_storeStrong(&v6->_requestURL, l);
    _defaultHeaderFields = [(SBKRequest *)v6 _defaultHeaderFields];
    v11 = [_defaultHeaderFields mutableCopy];
    headers = v6->_headers;
    v6->_headers = v11;

    v13 = objc_alloc_init(MEMORY[0x277D7FD30]);
    [v13 setShouldPostFooterSectionChanged:0];
    [v13 setShouldProcessDialogs:0];
    [v13 setShouldTriggerDownloads:0];
    [(SBKRequest *)v6 setResponseDataProvider:v13];
  }

  return v6;
}

+ (id)_contentTypeStringForBodyContentType:(int64_t)type
{
  v3 = @"text/plain; charset=UTF-8";
  if (type == 2)
  {
    v3 = @"text/xml; charset=UTF-8";
  }

  if (type == 3)
  {
    return @"application/x-plist";
  }

  else
  {
    return v3;
  }
}

+ (id)_contentEncodingTypeStringForBodyContentEncodingType:(int64_t)type
{
  if (type == 1)
  {
    return @"gzip";
  }

  else
  {
    return 0;
  }
}

+ (id)_methodStringForMethod:(int64_t)method
{
  if (method == 1)
  {
    return @"POST";
  }

  else
  {
    return @"GET";
  }
}

+ (int64_t)bodyContentEncodingType
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"SBKRequestBodyContentType-EncodeGzip"];

  return v3;
}

+ (int64_t)bodyContentType
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"SBKRequestBodyContentType-TextXML"];

  if (v3)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

+ (id)requestWithRequestURL:(id)l
{
  lCopy = l;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"subclass must implement"];
  }

  v5 = [objc_alloc(objc_opt_class()) initWithRequestURL:lCopy];

  return v5;
}

@end