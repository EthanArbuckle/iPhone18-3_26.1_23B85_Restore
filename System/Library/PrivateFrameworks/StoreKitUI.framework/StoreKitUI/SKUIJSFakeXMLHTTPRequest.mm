@interface SKUIJSFakeXMLHTTPRequest
- (IKJSXMLDocument)responseXML;
- (NSString)responseText;
- (NSString)statusText;
- (SKUIJSFakeXMLHTTPRequest)initWithAppContext:(id)context data:(id)data URLResponse:(id)response performanceMetrics:(id)metrics;
- (id)getAllResponseHeaders;
- (id)getResponseHeader:(id)header;
@end

@implementation SKUIJSFakeXMLHTTPRequest

- (SKUIJSFakeXMLHTTPRequest)initWithAppContext:(id)context data:(id)data URLResponse:(id)response performanceMetrics:(id)metrics
{
  contextCopy = context;
  dataCopy = data;
  responseCopy = response;
  metricsCopy = metrics;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIJSFakeXMLHTTPRequest initWithAppContext:data:URLResponse:performanceMetrics:];
  }

  v17.receiver = self;
  v17.super_class = SKUIJSFakeXMLHTTPRequest;
  v14 = [(IKJSObject *)&v17 initWithAppContext:contextCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_data, data);
    objc_storeStrong(&v15->_performanceMetrics, metrics);
    objc_storeStrong(&v15->_response, response);
  }

  return v15;
}

- (id)getAllResponseHeaders
{
  string = [MEMORY[0x277CCAB68] string];
  allHeaderFields = [(NSHTTPURLResponse *)self->_response allHeaderFields];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SKUIJSFakeXMLHTTPRequest_getAllResponseHeaders__block_invoke;
  v7[3] = &unk_2781FD230;
  v5 = string;
  v8 = v5;
  [allHeaderFields enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (id)getResponseHeader:(id)header
{
  if (header)
  {
    response = self->_response;
    headerCopy = header;
    allHeaderFields = [(NSHTTPURLResponse *)response allHeaderFields];
    v6 = [allHeaderFields objectForKey:headerCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)responseText
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_data encoding:4];

  return v2;
}

- (IKJSXMLDocument)responseXML
{
  v3 = objc_alloc(NSClassFromString(&cfstr_Ikjsxmldomimpl.isa));
  appContext = [(IKJSObject *)self appContext];
  v5 = [v3 initWithAppContext:appContext];

  createLSInput = [v5 createLSInput];
  [createLSInput setByteStream:self->_data];
  v7 = [v5 createLSParser:1 :0];
  v8 = [v7 parse:createLSInput];

  return v8;
}

- (NSString)statusText
{
  v2 = MEMORY[0x277CBAB48];
  statusCode = [(NSHTTPURLResponse *)self->_response statusCode];

  return [v2 localizedStringForStatusCode:statusCode];
}

- (void)initWithAppContext:data:URLResponse:performanceMetrics:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIJSFakeXMLHTTPRequest initWithAppContext:data:URLResponse:performanceMetrics:]";
}

@end