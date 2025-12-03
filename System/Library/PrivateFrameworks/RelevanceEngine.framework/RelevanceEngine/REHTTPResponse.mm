@interface REHTTPResponse
- (NSData)body;
- (NSDate)date;
- (NSDictionary)headerFields;
- (REHTTPResponse)initWithRequest:(id)request statusCode:(int64_t)code;
- (_CFHTTPServerResponse)response;
- (id)_dateFormatter;
- (id)headerValueForKey:(id)key;
- (void)dealloc;
- (void)setBody:(id)body;
- (void)setDate:(id)date;
@end

@implementation REHTTPResponse

- (REHTTPResponse)initWithRequest:(id)request statusCode:(int64_t)code
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = REHTTPResponse;
  v8 = [(REHTTPResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_request, request);
    v9->_statusCode = code;
    [requestCopy request];
    v9->_message = _CFHTTPServerRequestCreateResponseMessage();
  }

  return v9;
}

- (void)dealloc
{
  message = self->_message;
  if (message)
  {
    CFRelease(message);
  }

  v4.receiver = self;
  v4.super_class = REHTTPResponse;
  [(REHTTPResponse *)&v4 dealloc];
}

- (id)_dateFormatter
{
  if (_dateFormatter_onceToken_0 != -1)
  {
    [REHTTPResponse _dateFormatter];
  }

  v3 = _dateFormatter_dateFormatter;

  return v3;
}

void __32__REHTTPResponse__dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _dateFormatter_dateFormatter;
  _dateFormatter_dateFormatter = v0;

  [_dateFormatter_dateFormatter setDateFormat:@"EEE, d MMM yyyy HH:mm:ss z"];
  v2 = _dateFormatter_dateFormatter;
  v3 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
  [v2 setLocale:v3];

  v4 = _dateFormatter_dateFormatter;
  v5 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  [v4 setTimeZone:v5];
}

- (NSDate)date
{
  _dateFormatter = [(REHTTPResponse *)self _dateFormatter];
  v4 = [(REHTTPResponse *)self headerValueForKey:@"Date"];
  v5 = [_dateFormatter dateFromString:v4];

  return v5;
}

- (void)setDate:(id)date
{
  dateCopy = date;
  _dateFormatter = [(REHTTPResponse *)self _dateFormatter];
  v5 = [_dateFormatter stringFromDate:dateCopy];

  [(REHTTPResponse *)self setHeaderValue:v5 forKey:@"Date"];
}

- (NSDictionary)headerFields
{
  v2 = CFHTTPMessageCopyAllHeaderFields(self->_message);

  return v2;
}

- (NSData)body
{
  v2 = CFHTTPMessageCopyBody(self->_message);

  return v2;
}

- (void)setBody:(id)body
{
  message = self->_message;
  bodyCopy = body;
  CFHTTPMessageSetBody(message, bodyCopy);
  v6 = MEMORY[0x277CCACA8];
  v7 = [(__CFData *)bodyCopy length];

  v8 = [v6 stringWithFormat:@"%lu", v7];
  [(REHTTPResponse *)self setHeaderValue:v8 forKey:@"Content-Length"];
}

- (id)headerValueForKey:(id)key
{
  v3 = CFHTTPMessageCopyHeaderFieldValue(self->_message, key);

  return v3;
}

- (_CFHTTPServerResponse)response
{
  [(REHTTPRequest *)self->_request request];
  message = self->_message;
  [(REHTTPResponse *)self body];
  v4 = _CFHTTPServerResponseCreateWithData();
  _CFHTTPServerResponseSetClient();
  return v4;
}

@end