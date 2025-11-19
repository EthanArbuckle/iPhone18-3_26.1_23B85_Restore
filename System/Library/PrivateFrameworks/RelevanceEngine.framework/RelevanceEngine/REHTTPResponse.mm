@interface REHTTPResponse
- (NSData)body;
- (NSDate)date;
- (NSDictionary)headerFields;
- (REHTTPResponse)initWithRequest:(id)a3 statusCode:(int64_t)a4;
- (_CFHTTPServerResponse)response;
- (id)_dateFormatter;
- (id)headerValueForKey:(id)a3;
- (void)dealloc;
- (void)setBody:(id)a3;
- (void)setDate:(id)a3;
@end

@implementation REHTTPResponse

- (REHTTPResponse)initWithRequest:(id)a3 statusCode:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = REHTTPResponse;
  v8 = [(REHTTPResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_request, a3);
    v9->_statusCode = a4;
    [v7 request];
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
  v3 = [(REHTTPResponse *)self _dateFormatter];
  v4 = [(REHTTPResponse *)self headerValueForKey:@"Date"];
  v5 = [v3 dateFromString:v4];

  return v5;
}

- (void)setDate:(id)a3
{
  v4 = a3;
  v6 = [(REHTTPResponse *)self _dateFormatter];
  v5 = [v6 stringFromDate:v4];

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

- (void)setBody:(id)a3
{
  message = self->_message;
  v5 = a3;
  CFHTTPMessageSetBody(message, v5);
  v6 = MEMORY[0x277CCACA8];
  v7 = [(__CFData *)v5 length];

  v8 = [v6 stringWithFormat:@"%lu", v7];
  [(REHTTPResponse *)self setHeaderValue:v8 forKey:@"Content-Length"];
}

- (id)headerValueForKey:(id)a3
{
  v3 = CFHTTPMessageCopyHeaderFieldValue(self->_message, a3);

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