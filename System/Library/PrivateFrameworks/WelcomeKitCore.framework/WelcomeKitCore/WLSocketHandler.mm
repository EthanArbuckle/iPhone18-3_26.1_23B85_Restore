@interface WLSocketHandler
+ (id)_commandStringWithData:(id)a3;
+ (int)connectToHost:(id)a3 address:(hostent *)a4 port:(unsigned __int16)a5;
+ (void)lookupAndConnectToHost:(id)a3 port:(unsigned __int16)a4 completion:(id)a5;
+ (void)performDNSLookupForHost:(id)a3 completion:(id)a4;
- (BOOL)waitForCommand:(id)a3 fromReadCacheReturningError:(id *)a4;
- (WLSocketHandler)init;
- (char)readBytesFromSocket:(int)a3 maximumSize:(unint64_t)a4 bytesRead:(int64_t *)a5;
- (id)observeSocket:(int)a3 forSourceEventType:(dispatch_source_type_s *)a4 handler:(id)a5;
- (id)waitForBlobDataFromReadCacheReturningError:(id *)a3;
- (id)waitForDataFromReadCacheReturningError:(id *)a3;
- (id)waitForMessageFromReadCacheReturningError:(id *)a3;
- (void)_writeBytes:(const void *)a3 offset:(unint64_t)a4 length:(unint64_t)a5 toSocket:(int)a6 completion:(id)a7;
- (void)cancel;
- (void)dealloc;
- (void)endReadingIntoCache;
@end

@implementation WLSocketHandler

- (WLSocketHandler)init
{
  v10.receiver = self;
  v10.super_class = WLSocketHandler;
  v2 = [(WLSocketHandler *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("Socket Read Serialization Queue", 0);
    readQueue = v2->_readQueue;
    v2->_readQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    dataCache = v2->_dataCache;
    v2->_dataCache = v5;

    v7 = dispatch_semaphore_create(0);
    dataCacheSema = v2->_dataCacheSema;
    v2->_dataCacheSema = v7;
  }

  return v2;
}

- (void)dealloc
{
  _WLLog();
  [(WLSocketHandler *)self endReadingIntoCache];
  v4.receiver = self;
  v4.super_class = WLSocketHandler;
  [(WLSocketHandler *)&v4 dealloc];
}

- (id)observeSocket:(int)a3 forSourceEventType:(dispatch_source_type_s *)a4 handler:(id)a5
{
  v7 = a5;
  v8 = dispatch_source_create(a4, a3, 0, MEMORY[0x277D85CD0]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__WLSocketHandler_observeSocket_forSourceEventType_handler___block_invoke;
  v11[3] = &unk_279EB5450;
  v12 = v7;
  v13 = a3;
  v9 = v7;
  dispatch_source_set_event_handler(v8, v11);
  dispatch_resume(v8);

  return v8;
}

uint64_t __60__WLSocketHandler_observeSocket_forSourceEventType_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

+ (void)performDNSLookupForHost:(id)a3 completion:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = v8;
  v7 = gethostbyname([v8 UTF8String]);
  if (!v7)
  {
    _WLLog();
  }

  if (v5)
  {
    v5[2](v5, v7 != 0, v7);
  }
}

+ (int)connectToHost:(id)a3 address:(hostent *)a4 port:(unsigned __int16)a5
{
  v5 = a5;
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  *&v16.sa_len = 512;
  *&v16.sa_data[6] = 0;
  v8 = *a4->h_addr_list;
  h_length = a4->h_length;
  __memmove_chk();
  *v16.sa_data = __rev16(v5);
  v10 = socket(2, 1, 0);
  v11 = v10;
  if (v10 == -1)
  {
    _WLLog();
  }

  else
  {
    v15 = 1;
    setsockopt(v10, 0xFFFF, 4130, &v15, 4u);
    if (connect(v11, &v16, 0x10u) == -1)
    {
      v12 = __error();
      strerror(*v12);
      _WLLog();
      v11 = -1;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (void)lookupAndConnectToHost:(id)a3 port:(unsigned __int16)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__WLSocketHandler_lookupAndConnectToHost_port_completion___block_invoke;
  v12[3] = &unk_279EB5F68;
  v14 = v9;
  v15 = a1;
  v16 = a4;
  v13 = v8;
  v10 = v9;
  v11 = v8;
  [WLSocketHandler performDNSLookupForHost:v11 completion:v12];
}

void __58__WLSocketHandler_lookupAndConnectToHost_port_completion___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  if (!a2)
  {
    v23 = *(a1 + 48);
    v24 = *(a1 + 32);
    _WLLog();
    v14 = *(a1 + 40);
    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D7B8F8];
    v27 = *MEMORY[0x277CCA450];
    v28 = @"couldn't resolve host";
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v28;
    v19 = &v27;
LABEL_11:
    v20 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:{1, v23, v24, v25, v27, v28, v29, v30[0]}];
    v21 = [v15 errorWithDomain:v16 code:1 userInfo:v20];
    (*(v14 + 16))(v14, 0xFFFFFFFFLL, v21);

    goto LABEL_12;
  }

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 56)];
  _WLLog();

  LODWORD(a3) = [WLSocketHandler connectToHost:*(a1 + 32) address:a3 port:*(a1 + 56), v4, v5, v26];
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 56)];
  v10 = v9;
  if (a3 == -1)
  {
    v24 = v8;
    v25 = v9;
    v23 = v7;
    _WLLog();

    v14 = *(a1 + 40);
    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D7B8F8];
    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"couldn't connect to host";
    v17 = MEMORY[0x277CBEAC0];
    v18 = v30;
    v19 = &v29;
    goto LABEL_11;
  }

  _WLLog();

  v11 = *(a1 + 40);
  if (!v11)
  {
LABEL_12:
    v22 = *MEMORY[0x277D85DE8];
    return;
  }

  v12 = *(v11 + 16);
  v13 = *MEMORY[0x277D85DE8];

  v12();
}

- (char)readBytesFromSocket:(int)a3 maximumSize:(unint64_t)a4 bytesRead:(int64_t *)a5
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  readQueue = self->_readQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__WLSocketHandler_readBytesFromSocket_maximumSize_bytesRead___block_invoke;
  v9[3] = &unk_279EB5F90;
  v9[5] = &v11;
  v9[6] = a4;
  v10 = a3;
  v9[4] = &v15;
  dispatch_sync(readQueue, v9);
  if (a5)
  {
    *a5 = v16[3];
  }

  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v7;
}

int64_t __61__WLSocketHandler_readBytesFromSocket_maximumSize_bytesRead___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(*(*(a1 + 32) + 8) + 24) = read(*(a1 + 56), v3, v2);
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result >= 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = malloc_type_calloc(result, 1uLL, 0xB1AD4679uLL);
    result = memcpy(*(*(*(a1 + 40) + 8) + 24), v3, *(*(*(a1 + 32) + 8) + 24));
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)endReadingIntoCache
{
  obj = self->_dataCache;
  objc_sync_enter(obj);
  dataCacheReadSource = self->_dataCacheReadSource;
  if (dataCacheReadSource)
  {
    dispatch_source_cancel(dataCacheReadSource);
    v4 = self->_dataCacheReadSource;
    self->_dataCacheReadSource = 0;
  }

  [(NSMutableArray *)self->_dataCache removeAllObjects];
  objc_sync_exit(obj);
}

- (id)waitForDataFromReadCacheReturningError:(id *)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  dispatch_semaphore_wait(self->_dataCacheSema, 0xFFFFFFFFFFFFFFFFLL);
  v5 = self->_dataCache;
  objc_sync_enter(v5);
  v6 = [(NSMutableArray *)self->_dataCache firstObject];
  if (v6)
  {
    [(NSMutableArray *)self->_dataCache removeObjectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      goto LABEL_9;
    }

    if (a3)
    {
      v10 = v6;
      v7 = 0;
      *a3 = v6;
      goto LABEL_9;
    }
  }

  else if (a3)
  {
    v8 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"read queue empty";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a3 = [v8 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v9];
  }

  v7 = 0;
LABEL_9:

  objc_sync_exit(v5);
  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)waitForBlobDataFromReadCacheReturningError:(id *)a3
{
  v4 = 0;
  while (1)
  {
    v20 = 0;
    v5 = [(WLSocketHandler *)self waitForDataFromReadCacheReturningError:&v20, v14, v16];
    v6 = v20;
    v7 = v6;
    if (!v4)
    {
      break;
    }

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "length")}];
    _WLLog();

    if (v7)
    {
      goto LABEL_9;
    }

    v8 = [v4 mutableCopy];
    [v8 appendData:v5];
    v9 = v8;

    v10 = MEMORY[0x277CCABB0];
    v11 = [v9 length];

    [v10 numberWithUnsignedInteger:v11];
    v17 = v15 = self;
    _WLLog();

    v4 = v9;
LABEL_7:
    if ([v4 wl_blobIsComplete])
    {
      goto LABEL_12;
    }

    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "length")}];
    v16 = v14 = self;
    _WLLog();
  }

  if (!v6)
  {
    v4 = v5;
    goto LABEL_7;
  }

LABEL_9:
  if (a3)
  {
    v12 = v7;
    *a3 = v7;
  }

  v4 = 0;
LABEL_12:

  return v4;
}

- (BOOL)waitForCommand:(id)a3 fromReadCacheReturningError:(id *)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(WLSocketHandler *)self waitForMessageFromReadCacheReturningError:a4];
  v8 = v7;
  if (a4 && *a4)
  {
    v19 = *a4;
LABEL_10:
    _WLLog();
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  if ([v7 type] != 1)
  {
    [v8 type];
    goto LABEL_10;
  }

  v9 = [v8 command];
  v10 = [v9 isEqualToString:v6];

  if ((v10 & 1) == 0)
  {
    v14 = [v8 command];
    if (a4)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected '%@' but got '%@' instead", v6, v14];
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D7B8F8];
      v20 = *MEMORY[0x277CCA450];
      v21[0] = v15;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      *a4 = [v16 errorWithDomain:v17 code:1 userInfo:v18];
    }

    _WLLog();

    goto LABEL_11;
  }

  v11 = 1;
  _WLLog();
LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)waitForMessageFromReadCacheReturningError:(id *)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(WLSocketHandler *)self waitForDataFromReadCacheReturningError:?];
  if ([v4 length])
  {
    v5 = [WLSocketMessage messageWithData:v4 error:a3];
  }

  else
  {
    if (a3 && !*a3)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected data but got no data instead"];
      v7 = MEMORY[0x277CCA9B8];
      v8 = *MEMORY[0x277D7B8F8];
      v12 = *MEMORY[0x277CCA450];
      v13[0] = v6;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      *a3 = [v7 errorWithDomain:v8 code:1 userInfo:v9];
    }

    _WLLog();
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_commandStringWithData:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 bytes];
  v7 = [v4 length];

  v8 = [v5 initWithBytesNoCopy:v6 length:v7 encoding:4 freeWhenDone:0];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"\r\n"];
  LODWORD(v6) = [v8 hasSuffix:v9];

  if (v6)
  {
    v10 = [v8 stringByReplacingCharactersInRange:objc_msgSend(v8 withString:{"length") - 2, 2, &stru_2882CBB40}];

    v8 = v10;
  }

  return v8;
}

- (void)_writeBytes:(const void *)a3 offset:(unint64_t)a4 length:(unint64_t)a5 toSocket:(int)a6 completion:(id)a7
{
  v31[1] = *MEMORY[0x277D85DE8];
  v12 = a7;
  v13 = write(a6, a3, a5);
  if (v13 == a5)
  {
    if (v12)
    {
      v12[2](v12, 1, 0);
    }
  }

  else if (v13 < 0)
  {
    if (v12)
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277D7B8F8];
      v30 = *MEMORY[0x277CCA450];
      v31[0] = @"Socket write failed";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v20 = [v17 errorWithDomain:v18 code:1 userInfo:v19];
      (v12)[2](v12, 0, v20);
    }
  }

  else
  {
    v14 = v13 + a4;
    v15 = dispatch_source_create(MEMORY[0x277D85D50], a6, 0, MEMORY[0x277D85CD0]);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__WLSocketHandler__writeBytes_offset_length_toSocket_completion___block_invoke;
    v22[3] = &unk_279EB5FE0;
    v23 = v15;
    v24 = self;
    v26 = a3;
    v27 = v14;
    v28 = a5;
    v29 = a6;
    v25 = v12;
    v16 = v15;
    dispatch_source_set_event_handler(v16, v22);
    dispatch_resume(v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __65__WLSocketHandler__writeBytes_offset_length_toSocket_completion___block_invoke(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  return [v6 _writeBytes:v2 offset:v3 length:v4 toSocket:v5 completion:v7];
}

uint64_t __51__WLSocketHandler_sendCommand_toSocket_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void __48__WLSocketHandler_sendData_toSocket_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  v7 = v5;
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
    v5 = v7;
  }

  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) endReadingIntoCache];
    v5 = v7;
  }
}

- (void)cancel
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = self->_dataCache;
  objc_sync_enter(v3);
  [(NSMutableArray *)self->_dataCache removeAllObjects];
  v4 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"SocketHandler is canceled.";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v5];

  [(NSMutableArray *)self->_dataCache addObject:v6];
  objc_sync_exit(v3);

  dispatch_semaphore_signal(self->_dataCacheSema);
  v7 = *MEMORY[0x277D85DE8];
}

@end