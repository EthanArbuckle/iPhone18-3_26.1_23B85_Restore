@interface REHTTPServer
- (BOOL)_valid;
- (REHTTPServer)initWithPort:(unsigned __int16)a3 delegate:(id)a4;
- (void)connection:(id)a3 didReceiveRequest:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)didCloseConnection:(_CFHTTPServerConnection *)a3;
- (void)didOpenConnection:(_CFHTTPServerConnection *)a3;
- (void)didRecievedError:(id)a3;
- (void)invalidate;
- (void)invalidated;
@end

@implementation REHTTPServer

- (REHTTPServer)initWithPort:(unsigned __int16)a3 delegate:(id)a4
{
  v7 = a4;
  v23.receiver = self;
  v23.super_class = REHTTPServer;
  v8 = [(REHTTPServer *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegate, a4);
    v10 = RECreateSharedQueue(@"HTTPServer");
    queue = v9->_queue;
    v9->_queue = v10;

    v12 = [MEMORY[0x277CBEB18] array];
    connections = v9->_connections;
    v9->_connections = v12;

    [MEMORY[0x277CCAE60] valueWithWeakObject:v9];
    v22 = off_283B964A0;
    v20 = xmmword_283B96480;
    v21 = *off_283B96490;
    v9->_port = a3;
    v14 = *MEMORY[0x277CBECE8];
    v9->_server = _CFHTTPServerCreateService();
    v15 = v9->_queue;
    _CFHTTPServerSetDispatchQueue();
    if (!v9->_port)
    {
      server = v9->_server;
      v17 = *MEMORY[0x277CBAC70];
      v18 = _CFHTTPServerCopyProperty();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v18 unsignedIntegerValue])
      {
        v9->_port = [v18 unsignedIntegerValue];
      }
    }
  }

  return v9;
}

- (void)dealloc
{
  [(REHTTPServer *)self invalidate];
  v3.receiver = self;
  v3.super_class = REHTTPServer;
  [(REHTTPServer *)&v3 dealloc];
}

- (void)invalidate
{
  if ([(REHTTPServer *)self _valid])
  {
    server = self->_server;

    MEMORY[0x28210D0F8](server);
  }
}

- (BOOL)_valid
{
  server = self->_server;
  if (server)
  {
    LOBYTE(server) = _CFHTTPServerIsValid() != 0;
  }

  return server;
}

- (void)invalidated
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_connections;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v17 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_connections removeAllObjects];
  v8 = RELogForDomain(21);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(REHTTPServer *)v8 invalidated:v9];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)didRecievedError:(id)a3
{
  v3 = a3;
  v4 = RELogForDomain(21);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(REHTTPServer *)v3 didRecievedError:v4];
  }
}

- (void)didOpenConnection:(_CFHTTPServerConnection *)a3
{
  v4 = [[REHTTPConnection alloc] initWithConnection:a3];
  if (v4)
  {
    [(NSMutableArray *)self->_connections addObject:v4];
    [(REHTTPConnection *)v4 setDelegate:self];
    [(REHTTPConnection *)v4 open];
    v5 = RELogForDomain(21);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(REHTTPServer *)v5 didOpenConnection:v6, v7, v8, v9, v10, v11, v12];
    }
  }
}

- (void)didCloseConnection:(_CFHTTPServerConnection *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  connections = self->_connections;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __35__REHTTPServer_didCloseConnection___block_invoke;
  v13[3] = &unk_2785FDC38;
  v13[4] = &v14;
  v13[5] = a3;
  [(NSMutableArray *)connections enumerateObjectsUsingBlock:v13];
  if (v15[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_connections removeObjectAtIndex:?];
    v5 = RELogForDomain(21);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(REHTTPServer *)v5 didCloseConnection:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  _Block_object_dispose(&v14, 8);
}

void __35__REHTTPServer_didCloseConnection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 connection] == *(a1 + 40))
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = a3;
    [v7 close];
  }
}

- (void)connection:(id)a3 didReceiveRequest:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = RELogForDomain(21);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [REHTTPServer connection:v7 didReceiveRequest:v9 completion:?];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__REHTTPServer_connection_didReceiveRequest_completion___block_invoke;
  block[3] = &unk_2785F99C8;
  block[4] = self;
  v14 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  dispatch_async(queue, block);
}

void __56__REHTTPServer_connection_didReceiveRequest_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 httpServer:*(a1 + 32) handleRequest:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)didRecievedError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_22859F000, a2, OS_LOG_TYPE_DEBUG, "Server encountered error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)connection:(void *)a1 didReceiveRequest:(NSObject *)a2 completion:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 url];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_22859F000, a2, OS_LOG_TYPE_DEBUG, "Received request at path %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end