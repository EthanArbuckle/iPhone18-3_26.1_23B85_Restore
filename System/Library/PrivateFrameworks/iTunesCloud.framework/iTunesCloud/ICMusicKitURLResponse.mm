@interface ICMusicKitURLResponse
- (ICMusicKitURLResponse)initWithURLResponse:(id)response urlRequest:(id)request bodyData:(id)data performanceMetrics:(id)metrics;
- (ICMusicKitURLResponse)initWithURLResponse:(id)response urlRequest:(id)request bodyDataURL:(id)l performanceMetrics:(id)metrics;
- (id)_parseServerError;
- (id)_parseServerErrorDictionary:(id)dictionary;
- (id)description;
- (void)_initializeMusicKitURLResponse;
@end

@implementation ICMusicKitURLResponse

- (void)_initializeMusicKitURLResponse
{
  urlResponse = [(ICURLResponse *)self urlResponse];
  v3 = [urlResponse ic_valueForHTTPHeaderField:@"x-apple-jingle-correlation-key"];
  serverCorrelationKey = self->_serverCorrelationKey;
  self->_serverCorrelationKey = v3;

  v5 = [urlResponse ic_valueForHTTPHeaderField:@"X-Apple-Application-Site"];
  serverEnvironment = self->_serverEnvironment;
  self->_serverEnvironment = v5;

  _parseServerError = [(ICMusicKitURLResponse *)self _parseServerError];
  serverError = self->_serverError;
  self->_serverError = _parseServerError;
}

- (id)_parseServerErrorDictionary:(id)dictionary
{
  v18 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy ic_stringValueForKey:@"id"];
  v6 = [dictionaryCopy ic_integerValueForKey:@"status"];
  v7 = [dictionaryCopy ic_integerValueForKey:@"code"];
  v8 = [dictionaryCopy ic_stringValueForKey:@"title"];
  v9 = [dictionaryCopy ic_stringValueForKey:@"detail"];
  v10 = v9;
  if (v5 && v6 && v7 && v8 && v9)
  {
    v11 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICMusicKitServerError" code:v7 debugDescription:{@"%@ (%ld). %@ (%ld). id=%@", v8, v6, v9, v7, v5}];
  }

  else
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v16 = 2114;
      v17 = dictionaryCopy;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "Failed to parse server error for %{public}@. Raw error dictionary: %{public}@.", buf, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)_parseServerError
{
  urlResponse = [(ICURLResponse *)self urlResponse];
  if ([urlResponse statusCode] < 400)
  {
    v7 = 0;
  }

  else
  {
    parsedBodyDictionary = [(ICURLResponse *)self parsedBodyDictionary];
    v5 = [parsedBodyDictionary ic_arrayValueForKey:@"errors"];
    firstObject = [v5 firstObject];
    if (_NSIsNSDictionary())
    {
      v7 = [(ICMusicKitURLResponse *)self _parseServerErrorDictionary:firstObject];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  statusCode = [(ICURLResponse *)self statusCode];
  if (statusCode)
  {
    v8 = ICURLResponseStatusCodeGetDebuggingDescription(statusCode);
    [v6 appendFormat:@"; statusCode = %@", v8];
  }

  if (self->_serverCorrelationKey)
  {
    [v6 appendFormat:@"; serverCorrelationKey = %@", self->_serverCorrelationKey];
  }

  if (self->_serverEnvironment)
  {
    [v6 appendFormat:@"; serverEnvironment = %@", self->_serverEnvironment];
  }

  if (self->_serverError)
  {
    [v6 appendFormat:@"; serverError = %@", self->_serverError];
  }

  [v6 appendString:@">"];

  return v6;
}

- (ICMusicKitURLResponse)initWithURLResponse:(id)response urlRequest:(id)request bodyDataURL:(id)l performanceMetrics:(id)metrics
{
  v9.receiver = self;
  v9.super_class = ICMusicKitURLResponse;
  v6 = [(ICURLResponse *)&v9 initWithURLResponse:response urlRequest:request bodyDataURL:l performanceMetrics:metrics];
  v7 = v6;
  if (v6)
  {
    [(ICMusicKitURLResponse *)v6 _initializeMusicKitURLResponse];
  }

  return v7;
}

- (ICMusicKitURLResponse)initWithURLResponse:(id)response urlRequest:(id)request bodyData:(id)data performanceMetrics:(id)metrics
{
  v9.receiver = self;
  v9.super_class = ICMusicKitURLResponse;
  v6 = [(ICURLResponse *)&v9 initWithURLResponse:response urlRequest:request bodyData:data performanceMetrics:metrics];
  v7 = v6;
  if (v6)
  {
    [(ICMusicKitURLResponse *)v6 _initializeMusicKitURLResponse];
  }

  return v7;
}

@end