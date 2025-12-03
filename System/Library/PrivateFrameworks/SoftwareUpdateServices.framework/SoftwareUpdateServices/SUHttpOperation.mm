@interface SUHttpOperation
- (SUHttpOperation)initWithRequest:(id)request;
- (id)connection:(id)connection willSendRequest:(id)request redirectResponse:(id)response;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)connection:(id)connection didReceiveResponse:(id)response;
- (void)connectionDidFinishLoading:(id)loading;
- (void)main;
@end

@implementation SUHttpOperation

- (SUHttpOperation)initWithRequest:(id)request
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = SUHttpOperation;
  v5 = [(SUHttpOperation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SUHttpOperation *)v5 setRequest:requestCopy];
    v6->_allowRedirects = 1;
    v6->_done = 0;
  }

  return v6;
}

- (void)main
{
  v3 = [objc_alloc(MEMORY[0x277CBAB78]) initWithRequest:self->_request delegate:self startImmediately:1];
  connection = self->_connection;
  self->_connection = v3;

  if (!self->_done)
  {
    v5 = *MEMORY[0x277CBF058];
    while ((CFRunLoopRunInMode(v5, 5.0, 1u) - 1) > 1)
    {
      if (self->_done)
      {
        return;
      }
    }

    self->_done = 1;
  }
}

- (void)connectionDidFinishLoading:(id)loading
{
  SULogDebug(@"Connection completed successfully.", a2, loading, v3, v4, v5, v6, v7, v9);

  [(SUHttpOperation *)self _finished];
}

- (void)connection:(id)connection didFailWithError:(id)error
{
  errorCopy = error;
  SULogDebug(@"Connection failed with error: %@", v6, v7, v8, v9, v10, v11, v12, errorCopy);
  [(SUHttpOperation *)self setData:0];
  [(SUHttpOperation *)self setResponse:0];
  [(SUHttpOperation *)self setError:errorCopy];

  [(SUHttpOperation *)self _finished];
}

- (id)connection:(id)connection willSendRequest:(id)request redirectResponse:(id)response
{
  connectionCopy = connection;
  requestCopy = request;
  v9 = [requestCopy URL];
  SULogDebug(@"Connection received redirect request to: %@", v10, v11, v12, v13, v14, v15, v16, v9);

  if (self->_allowRedirects)
  {
    v17 = [requestCopy mutableCopy];
    hTTPBody = [(NSURLRequest *)self->_request HTTPBody];
    [v17 setHTTPBody:hTTPBody];

    hTTPMethod = [(NSURLRequest *)self->_request HTTPMethod];
    [v17 setHTTPMethod:hTTPMethod];

    [v17 setCachePolicy:{-[NSURLRequest cachePolicy](self->_request, "cachePolicy")}];
    [v17 setHTTPShouldHandleCookies:{-[NSURLRequest HTTPShouldHandleCookies](self->_request, "HTTPShouldHandleCookies")}];
    [v17 setHTTPShouldUsePipelining:{-[NSURLRequest HTTPShouldUsePipelining](self->_request, "HTTPShouldUsePipelining")}];
    [(NSURLRequest *)self->_request timeoutInterval];
    [v17 setTimeoutInterval:?];
    allHTTPHeaderFields = [(NSURLRequest *)self->_request allHTTPHeaderFields];
    [v17 setAllHTTPHeaderFields:allHTTPHeaderFields];

    v21 = [requestCopy URL];
    [v17 setURL:v21];

    [(SUHttpOperation *)self setRequest:v17];
  }

  else
  {
    [connectionCopy cancel];
    v17 = 0;
  }

  return v17;
}

- (void)connection:(id)connection didReceiveResponse:(id)response
{
  connectionCopy = connection;
  responseCopy = response;
  statusCode = [responseCopy statusCode];
  self->_statusCode = statusCode;
  SULogDebug(@"Connection received response: %ld", v8, v9, v10, v11, v12, v13, v14, statusCode);
  [(SUHttpOperation *)self setResponse:responseCopy];

  [(SUHttpOperation *)self setData:0];
  if ((self->_statusCode - 200) > 0x63)
  {
    self->_saveData = 0;
    [connectionCopy cancel];
    v15 = [SUUtility errorWithCode:27];
    [(SUHttpOperation *)self setError:v15];
  }

  else
  {
    self->_saveData = 1;
  }
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy length];
  SULogDebug(@"Connection received %lu bytes of data.", v6, v7, v8, v9, v10, v11, v12, v5);
  if (self->_saveData)
  {
    data = self->_data;
    if (data)
    {
      [(NSMutableData *)data appendData:dataCopy];
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x277CBEB28]) initWithData:dataCopy];
      v15 = self->_data;
      self->_data = v14;
    }
  }
}

@end