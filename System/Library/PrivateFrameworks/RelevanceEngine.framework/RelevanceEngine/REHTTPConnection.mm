@interface REHTTPConnection
- (BOOL)isValid;
- (BOOL)open;
- (REHTTPConnection)initWithConnection:(_CFHTTPServerConnection *)connection;
- (REHTTPConnectionDelegate)delegate;
- (void)_handleCompleteRequest:(id)request stream:(id)stream error:(id)error;
- (void)_sendResponse:(id)response;
- (void)dealloc;
- (void)didCompleteResponse:(_CFHTTPServerResponse *)response error:(id)error;
- (void)didRecieveRequest:(_CFHTTPServerRequest *)request;
- (void)invalidate;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation REHTTPConnection

- (REHTTPConnection)initWithConnection:(_CFHTTPServerConnection *)connection
{
  v13.receiver = self;
  v13.super_class = REHTTPConnection;
  v4 = [(REHTTPConnection *)&v13 init];
  if (v4)
  {
    v4->_connection = CFRetain(connection);
    v5 = dispatch_queue_create("com.apple.HTTPConnection", 0);
    queue = v4->_queue;
    v4->_queue = v5;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    pendingRequests = v4->_pendingRequests;
    v4->_pendingRequests = strongToStrongObjectsMapTable;

    array = [MEMORY[0x277CBEB18] array];
    pendingResponse = v4->_pendingResponse;
    v4->_pendingResponse = array;

    [MEMORY[0x277CCAE60] valueWithWeakObject:v4];
    connection = v4->_connection;
    _CFHTTPServerConnectionSetClient();
  }

  return v4;
}

- (void)dealloc
{
  [(REHTTPConnection *)self invalidate];
  connection = self->_connection;
  if (connection)
  {
    CFRelease(connection);
  }

  v4.receiver = self;
  v4.super_class = REHTTPConnection;
  [(REHTTPConnection *)&v4 dealloc];
}

- (BOOL)isValid
{
  connection = self->_connection;
  if (connection)
  {
    LOBYTE(connection) = _CFHTTPServerConnectionIsValid() != 0;
  }

  return connection;
}

- (void)invalidate
{
  if ([(REHTTPConnection *)self isValid])
  {
    connection = self->_connection;

    MEMORY[0x28210D0B0](connection);
  }
}

- (BOOL)open
{
  isValid = [(REHTTPConnection *)self isValid];
  if (isValid)
  {
    connection = self->_connection;
    queue = self->_queue;
    _CFHTTPServerConnectionSetDispatchQueue();
  }

  return isValid;
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__REHTTPConnection_stream_handleEvent___block_invoke;
  block[3] = &unk_2785FCE98;
  block[4] = self;
  v10 = streamCopy;
  eventCopy = event;
  v8 = streamCopy;
  dispatch_async(queue, block);
}

void __39__REHTTPConnection_stream_handleEvent___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3 == 2 || v3 == 16)
  {
    v5 = [*(a1 + 40) read:v11 maxLength:1024];
    if (v5 < 1)
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      if (!v5)
      {
        [v8 _handleCompleteRequest:v2 stream:v7 error:0];
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v6 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v11 length:v5 freeWhenDone:0];
    [v2 appendData:v6];
  }

  else if (v3 == 8)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
LABEL_11:
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBE648] code:500 userInfo:0];
    [v8 _handleCompleteRequest:v2 stream:v7 error:v9];
  }

LABEL_12:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleCompleteRequest:(id)request stream:(id)stream error:(id)error
{
  requestCopy = request;
  v9 = MEMORY[0x277CBEB88];
  streamCopy = stream;
  mainRunLoop = [v9 mainRunLoop];
  [streamCopy removeFromRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE640]];

  [streamCopy close];
  [(NSMapTable *)self->_pendingRequests removeObjectForKey:streamCopy];

  if (error)
  {
    delegate = [requestCopy responseWithStatusCode:500];
    [(REHTTPConnection *)self _sendResponse:delegate];
  }

  else
  {
    delegate = [(REHTTPConnection *)self delegate];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__REHTTPConnection__handleCompleteRequest_stream_error___block_invoke;
    v13[3] = &unk_2785FCEC0;
    v13[4] = self;
    [delegate connection:self didReceiveRequest:requestCopy completion:v13];
  }
}

void __56__REHTTPConnection__handleCompleteRequest_stream_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__REHTTPConnection__handleCompleteRequest_stream_error___block_invoke_2;
  v7[3] = &unk_2785F9AE0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)_sendResponse:(id)response
{
  pendingResponse = self->_pendingResponse;
  responseCopy = response;
  [(NSMutableArray *)pendingResponse addObject:responseCopy];
  response = [responseCopy response];

  MEMORY[0x28210D150](response);
}

- (void)didRecieveRequest:(_CFHTTPServerRequest *)request
{
  v6 = [[REHTTPRequest alloc] initWithConnect:self request:request];
  stream = [(REHTTPRequest *)v6 stream];
  [stream setDelegate:self];
  [(NSMapTable *)self->_pendingRequests setObject:v6 forKey:stream];
  if ([stream streamStatus] == 7)
  {
    [(REHTTPConnection *)self stream:stream handleEvent:8];
  }

  else
  {
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [stream scheduleInRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE640]];

    [stream open];
  }
}

- (void)didCompleteResponse:(_CFHTTPServerResponse *)response error:(id)error
{
  errorCopy = error;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  pendingResponse = self->_pendingResponse;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__REHTTPConnection_didCompleteResponse_error___block_invoke;
  v8[3] = &unk_2785FCEE8;
  v8[4] = &v9;
  v8[5] = response;
  [(NSMutableArray *)pendingResponse enumerateObjectsUsingBlock:v8];
  if (v10[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_pendingResponse removeObjectAtIndex:?];
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __46__REHTTPConnection_didCompleteResponse_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 response];
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (REHTTPConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end