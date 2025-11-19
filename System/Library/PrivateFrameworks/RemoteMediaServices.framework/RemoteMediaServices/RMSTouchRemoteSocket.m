@interface RMSTouchRemoteSocket
- (BOOL)sendTouchCode:(int64_t)a3 timeInMilliseconds:(unsigned int)a4 location:(CGPoint)a5;
- (RMSTouchRemoteSocket)initWithHost:(id)a3 port:(int)a4 encryptionKey:(int)a5;
- (RMSTouchRemoteSocketDelegate)delegate;
- (id)_encryptData:(id)a3;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation RMSTouchRemoteSocket

- (RMSTouchRemoteSocket)initWithHost:(id)a3 port:(int)a4 encryptionKey:(int)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = RMSTouchRemoteSocket;
  v10 = [(RMSTouchRemoteSocket *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_host, a3);
    v11->_port = a4;
    v11->_encryptionKey = a5;
  }

  return v11;
}

- (void)dealloc
{
  [(RMSTouchRemoteSocket *)self disconnect];
  v3.receiver = self;
  v3.super_class = RMSTouchRemoteSocket;
  [(RMSTouchRemoteSocket *)&v3 dealloc];
}

- (void)disconnect
{
  v3 = RMSLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_261E98000, v3, OS_LOG_TYPE_DEFAULT, "Closing socket", v7, 2u);
  }

  [(NSOutputStream *)self->_outputStream close];
  outputStream = self->_outputStream;
  v5 = [MEMORY[0x277CBEB88] currentRunLoop];
  [(NSOutputStream *)outputStream removeFromRunLoop:v5 forMode:*MEMORY[0x277CBE640]];

  v6 = self->_outputStream;
  self->_outputStream = 0;
}

- (void)connect
{
  writeStream = 0;
  CFStreamCreatePairWithSocketToHost(0, self->_host, self->_port, 0, &writeStream);
  outputStream = self->_outputStream;
  self->_outputStream = writeStream;

  [(NSOutputStream *)self->_outputStream setDelegate:self];
  v4 = self->_outputStream;
  v5 = [MEMORY[0x277CBEB88] currentRunLoop];
  [(NSOutputStream *)v4 scheduleInRunLoop:v5 forMode:*MEMORY[0x277CBE640]];

  [(NSOutputStream *)self->_outputStream open];
}

- (BOOL)sendTouchCode:(int64_t)a3 timeInMilliseconds:(unsigned int)a4 location:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = *&a4;
  v8 = a3;
  v35 = *MEMORY[0x277D85DE8];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  [v10 addObject:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  [v10 addObject:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:y | (x << 16)];
  [v10 addObject:v13];

  v14 = [v10 count];
  v15 = v14;
  if (v14 < 0x15)
  {
    v18 = 4 * v14 + 20;
    v34[0] = v18 << 24;
    v34[1] = 256;
    v34[2] = bswap32(v8);
    v34[3] = 0;
    v34[4] = v14 << 26;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = v10;
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      v23 = 5;
      do
      {
        v24 = 0;
        v25 = v23;
        do
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v23 = v25 + 1;
          v34[v25++] = bswap32([*(*(&v29 + 1) + 8 * v24++) intValue]);
        }

        while (v21 != v24);
        v21 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v21);
    }

    v26 = [MEMORY[0x277CBEA90] dataWithBytes:v34 length:v18];
    v27 = [(RMSTouchRemoteSocket *)self _encryptData:v26];
    v17 = -[NSOutputStream write:maxLength:](self->_outputStream, "write:maxLength:", [v27 bytes], objc_msgSend(v27, "length")) != 0;
  }

  else
  {
    v16 = RMSLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [RMSTouchRemoteSocket sendTouchCode:v15 timeInMilliseconds:v16 location:?];
    }

    v17 = 0;
  }

  return v17;
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 8)
  {
    v10 = RMSLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [RMSTouchRemoteSocket stream:v7 handleEvent:v10];
    }

    [(RMSTouchRemoteSocket *)self disconnect];
    goto LABEL_13;
  }

  if (a4 == 1)
  {
    v8 = RMSLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261E98000, v8, OS_LOG_TYPE_DEFAULT, "Touch remote socket opened", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained touchRemoteSocketDidConnect:self];
    goto LABEL_14;
  }

  if ([v6 streamStatus] == 6)
  {
    v11 = RMSLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "Touch remote socket closed", v12, 2u);
    }

LABEL_13:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained touchRemoteSocketDidDisconnect:self];
LABEL_14:
  }
}

- (id)_encryptData:(id)a3
{
  v4 = a3;
  v5 = [v4 bytes];
  v6 = [v4 length];
  v7 = malloc_type_malloc([v4 length], 0x100004052888210uLL);
  v8 = v7;
  if (v6 >= 4)
  {
    v9 = v6 >> 2;
    v10 = v7;
    do
    {
      v11 = *v5++;
      *v10++ = self->_encryptionKey ^ v11;
      --v9;
    }

    while (v9);
  }

  v12 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:v6];
  free(v8);

  return v12;
}

- (RMSTouchRemoteSocketDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sendTouchCode:(int)a1 timeInMilliseconds:(NSObject *)a2 location:.cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_261E98000, a2, OS_LOG_TYPE_ERROR, "Touch remote socket attempted to write too much data: %u", v2, 8u);
}

- (void)stream:(void *)a1 handleEvent:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 streamError];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_261E98000, a2, OS_LOG_TYPE_ERROR, "Stream error: %@", &v4, 0xCu);
}

@end