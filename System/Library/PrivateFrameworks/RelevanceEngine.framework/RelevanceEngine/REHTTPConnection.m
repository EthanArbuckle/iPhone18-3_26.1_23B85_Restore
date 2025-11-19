@interface REHTTPConnection
- (BOOL)isValid;
- (BOOL)open;
- (REHTTPConnection)initWithConnection:(_CFHTTPServerConnection *)a3;
- (REHTTPConnectionDelegate)delegate;
- (void)_handleCompleteRequest:(id)a3 stream:(id)a4 error:(id)a5;
- (void)_sendResponse:(id)a3;
- (void)dealloc;
- (void)didCompleteResponse:(_CFHTTPServerResponse *)a3 error:(id)a4;
- (void)didRecieveRequest:(_CFHTTPServerRequest *)a3;
- (void)invalidate;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation REHTTPConnection

- (REHTTPConnection)initWithConnection:(_CFHTTPServerConnection *)a3
{
  v13.receiver = self;
  v13.super_class = REHTTPConnection;
  v4 = [(REHTTPConnection *)&v13 init];
  if (v4)
  {
    v4->_connection = CFRetain(a3);
    v5 = dispatch_queue_create("com.apple.HTTPConnection", 0);
    queue = v4->_queue;
    v4->_queue = v5;

    v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    pendingRequests = v4->_pendingRequests;
    v4->_pendingRequests = v7;

    v9 = [MEMORY[0x277CBEB18] array];
    pendingResponse = v4->_pendingResponse;
    v4->_pendingResponse = v9;

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
  v3 = [(REHTTPConnection *)self isValid];
  if (v3)
  {
    connection = self->_connection;
    queue = self->_queue;
    _CFHTTPServerConnectionSetDispatchQueue();
  }

  return v3;
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__REHTTPConnection_stream_handleEvent___block_invoke;
  block[3] = &unk_2785FCE98;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
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

- (void)_handleCompleteRequest:(id)a3 stream:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB88];
  v10 = a4;
  v11 = [v9 mainRunLoop];
  [v10 removeFromRunLoop:v11 forMode:*MEMORY[0x277CBE640]];

  [v10 close];
  [(NSMapTable *)self->_pendingRequests removeObjectForKey:v10];

  if (a5)
  {
    v12 = [v8 responseWithStatusCode:500];
    [(REHTTPConnection *)self _sendResponse:v12];
  }

  else
  {
    v12 = [(REHTTPConnection *)self delegate];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__REHTTPConnection__handleCompleteRequest_stream_error___block_invoke;
    v13[3] = &unk_2785FCEC0;
    v13[4] = self;
    [v12 connection:self didReceiveRequest:v8 completion:v13];
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

- (void)_sendResponse:(id)a3
{
  pendingResponse = self->_pendingResponse;
  v4 = a3;
  [(NSMutableArray *)pendingResponse addObject:v4];
  v5 = [v4 response];

  MEMORY[0x28210D150](v5);
}

- (void)didRecieveRequest:(_CFHTTPServerRequest *)a3
{
  v6 = [[REHTTPRequest alloc] initWithConnect:self request:a3];
  v4 = [(REHTTPRequest *)v6 stream];
  [v4 setDelegate:self];
  [(NSMapTable *)self->_pendingRequests setObject:v6 forKey:v4];
  if ([v4 streamStatus] == 7)
  {
    [(REHTTPConnection *)self stream:v4 handleEvent:8];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v4 scheduleInRunLoop:v5 forMode:*MEMORY[0x277CBE640]];

    [v4 open];
  }
}

- (void)didCompleteResponse:(_CFHTTPServerResponse *)a3 error:(id)a4
{
  v6 = a4;
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
  v8[5] = a3;
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