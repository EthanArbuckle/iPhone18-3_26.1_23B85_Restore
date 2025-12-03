@interface WLServerConnection
- (BOOL)_isTerminated:(const char *)terminated length:(int64_t)length;
- (WLServerConnection)init;
- (WLServerConnectionDelegate)delegate;
- (int)_listen:(int)_listen;
- (void)_accept:(int)_accept;
- (void)close;
- (void)dealloc;
@end

@implementation WLServerConnection

- (WLServerConnection)init
{
  v9.receiver = self;
  v9.super_class = WLServerConnection;
  v2 = [(WLServerConnection *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_sockfd = -1;
    v4 = dispatch_queue_create("WLServerConnection Connection Pool Queue", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connections = v3->_connections;
    v3->_connections = v6;
  }

  return v3;
}

- (void)dealloc
{
  [(WLServerConnection *)self close];
  v3.receiver = self;
  v3.super_class = WLServerConnection;
  [(WLServerConnection *)&v3 dealloc];
}

void __29__WLServerConnection_listen___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accept:*(a1 + 40)];
}

- (void)close
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = self->_connections;
  objc_sync_enter(v3);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_connections;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        close([*(*(&v10 + 1) + 8 * v7++) intValue]);
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_connections removeAllObjects];
  objc_sync_exit(v3);

  sockfd = self->_sockfd;
  if (sockfd != -1)
  {
    close(sockfd);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (int)_listen:(int)_listen
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = socket(2, 1, 0);
  if (v4 == -1)
  {
    _WLLog();
  }

  else
  {
    _WLLog();
    *&v8.sa_len = 512;
    *&v8.sa_data[6] = 0;
    *v8.sa_data = bswap32(_listen) >> 16;
    v7 = 1;
    if (setsockopt(v4, 0xFFFF, 4, &v7, 4u) || bind(v4, &v8, 0x10u) || (_WLLog(), listen(v4, 5)))
    {
      _WLLog();
      v4 = -1;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_accept:(int)_accept
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0;
  _WLLog();
  if (_accept != -1)
  {
    *&v16.sa_len = 0;
    *&v16.sa_data[6] = 0;
    v15 = 16;
    for (i = accept(_accept, &v16, &v15); (i & 0x80000000) == 0; i = accept(_accept, &v16, &v15))
    {
      _WLLog();
      v6 = dispatch_queue_create("WLServerConnection Connection Read Queue", 0);
      v7 = self->_connections;
      objc_sync_enter(v7);
      connections = self->_connections;
      v9 = [MEMORY[0x277CCABB0] numberWithInt:i];
      [(NSMutableSet *)connections addObject:v9];

      objc_sync_exit(v7);
      objc_initWeak(&location, self);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __30__WLServerConnection__accept___block_invoke;
      block[3] = &unk_279EB5F40;
      objc_copyWeak(&v12, &location);
      v13 = i;
      dispatch_async(v6, block);
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);

      *&v16.sa_len = 0;
      *&v16.sa_data[6] = 0;
      v15 = 16;
    }

    _WLLog();
  }

  _WLLog();
  v10 = *MEMORY[0x277D85DE8];
}

void __30__WLServerConnection__accept___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _read:*(a1 + 40)];
}

- (BOOL)_isTerminated:(const char *)terminated length:(int64_t)length
{
  v4 = &terminated[length];
  v5 = terminated[length - 1];
  if (terminated[length - 1])
  {
    if (length < 4)
    {
      if (length < 2)
      {
        return 0;
      }
    }

    else if (*(v4 - 4) == 13 && *(v4 - 3) == 10 && v5 == 10 && *(v4 - 2) == 13)
    {
      return 1;
    }

    v7 = *(v4 - 2);
    if (v5 != 10 || v7 != 13)
    {
      return 0;
    }
  }

  return 1;
}

- (WLServerConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end