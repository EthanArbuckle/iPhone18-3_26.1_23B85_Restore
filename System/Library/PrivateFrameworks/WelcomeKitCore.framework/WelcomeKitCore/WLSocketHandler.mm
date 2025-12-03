@interface WLSocketHandler
+ (id)_commandStringWithData:(id)data;
+ (int)connectToHost:(id)host address:(hostent *)address port:(unsigned __int16)port;
+ (void)lookupAndConnectToHost:(id)host port:(unsigned __int16)port completion:(id)completion;
+ (void)performDNSLookupForHost:(id)host completion:(id)completion;
- (BOOL)waitForCommand:(id)command fromReadCacheReturningError:(id *)error;
- (WLSocketHandler)init;
- (char)readBytesFromSocket:(int)socket maximumSize:(unint64_t)size bytesRead:(int64_t *)read;
- (id)observeSocket:(int)socket forSourceEventType:(dispatch_source_type_s *)type handler:(id)handler;
- (id)waitForBlobDataFromReadCacheReturningError:(id *)error;
- (id)waitForDataFromReadCacheReturningError:(id *)error;
- (id)waitForMessageFromReadCacheReturningError:(id *)error;
- (void)_writeBytes:(const void *)bytes offset:(unint64_t)offset length:(unint64_t)length toSocket:(int)socket completion:(id)completion;
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

- (id)observeSocket:(int)socket forSourceEventType:(dispatch_source_type_s *)type handler:(id)handler
{
  handlerCopy = handler;
  v8 = dispatch_source_create(type, socket, 0, MEMORY[0x277D85CD0]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__WLSocketHandler_observeSocket_forSourceEventType_handler___block_invoke;
  v11[3] = &unk_279EB5450;
  v12 = handlerCopy;
  socketCopy = socket;
  v9 = handlerCopy;
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

+ (void)performDNSLookupForHost:(id)host completion:(id)completion
{
  hostCopy = host;
  completionCopy = completion;
  v6 = hostCopy;
  v7 = gethostbyname([hostCopy UTF8String]);
  if (!v7)
  {
    _WLLog();
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v7 != 0, v7);
  }
}

+ (int)connectToHost:(id)host address:(hostent *)address port:(unsigned __int16)port
{
  portCopy = port;
  v17 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  *&v16.sa_len = 512;
  *&v16.sa_data[6] = 0;
  v8 = *address->h_addr_list;
  h_length = address->h_length;
  __memmove_chk();
  *v16.sa_data = __rev16(portCopy);
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

+ (void)lookupAndConnectToHost:(id)host port:(unsigned __int16)port completion:(id)completion
{
  hostCopy = host;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__WLSocketHandler_lookupAndConnectToHost_port_completion___block_invoke;
  v12[3] = &unk_279EB5F68;
  v14 = completionCopy;
  selfCopy = self;
  portCopy = port;
  v13 = hostCopy;
  v10 = completionCopy;
  v11 = hostCopy;
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

- (char)readBytesFromSocket:(int)socket maximumSize:(unint64_t)size bytesRead:(int64_t *)read
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
  v9[6] = size;
  socketCopy = socket;
  v9[4] = &v15;
  dispatch_sync(readQueue, v9);
  if (read)
  {
    *read = v16[3];
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

- (id)waitForDataFromReadCacheReturningError:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  dispatch_semaphore_wait(self->_dataCacheSema, 0xFFFFFFFFFFFFFFFFLL);
  v5 = self->_dataCache;
  objc_sync_enter(v5);
  firstObject = [(NSMutableArray *)self->_dataCache firstObject];
  if (firstObject)
  {
    [(NSMutableArray *)self->_dataCache removeObjectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = firstObject;
      goto LABEL_9;
    }

    if (error)
    {
      v10 = firstObject;
      v7 = 0;
      *error = firstObject;
      goto LABEL_9;
    }
  }

  else if (error)
  {
    v8 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"read queue empty";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = [v8 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v9];
  }

  v7 = 0;
LABEL_9:

  objc_sync_exit(v5);
  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)waitForBlobDataFromReadCacheReturningError:(id *)error
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
  if (error)
  {
    v12 = v7;
    *error = v7;
  }

  v4 = 0;
LABEL_12:

  return v4;
}

- (BOOL)waitForCommand:(id)command fromReadCacheReturningError:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v7 = [(WLSocketHandler *)self waitForMessageFromReadCacheReturningError:error];
  v8 = v7;
  if (error && *error)
  {
    v19 = *error;
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

  command = [v8 command];
  v10 = [command isEqualToString:commandCopy];

  if ((v10 & 1) == 0)
  {
    command2 = [v8 command];
    if (error)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected '%@' but got '%@' instead", commandCopy, command2];
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D7B8F8];
      v20 = *MEMORY[0x277CCA450];
      v21[0] = v15;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      *error = [v16 errorWithDomain:v17 code:1 userInfo:v18];
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

- (id)waitForMessageFromReadCacheReturningError:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(WLSocketHandler *)self waitForDataFromReadCacheReturningError:?];
  if ([v4 length])
  {
    v5 = [WLSocketMessage messageWithData:v4 error:error];
  }

  else
  {
    if (error && !*error)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected data but got no data instead"];
      v7 = MEMORY[0x277CCA9B8];
      v8 = *MEMORY[0x277D7B8F8];
      v12 = *MEMORY[0x277CCA450];
      v13[0] = v6;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      *error = [v7 errorWithDomain:v8 code:1 userInfo:v9];
    }

    _WLLog();
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_commandStringWithData:(id)data
{
  v3 = MEMORY[0x277CCACA8];
  dataCopy = data;
  v5 = [v3 alloc];
  bytes = [dataCopy bytes];
  v7 = [dataCopy length];

  v8 = [v5 initWithBytesNoCopy:bytes length:v7 encoding:4 freeWhenDone:0];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"\r\n"];
  LODWORD(bytes) = [v8 hasSuffix:v9];

  if (bytes)
  {
    v10 = [v8 stringByReplacingCharactersInRange:objc_msgSend(v8 withString:{"length") - 2, 2, &stru_2882CBB40}];

    v8 = v10;
  }

  return v8;
}

- (void)_writeBytes:(const void *)bytes offset:(unint64_t)offset length:(unint64_t)length toSocket:(int)socket completion:(id)completion
{
  v31[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v13 = write(socket, bytes, length);
  if (v13 == length)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else if (v13 < 0)
  {
    if (completionCopy)
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277D7B8F8];
      v30 = *MEMORY[0x277CCA450];
      v31[0] = @"Socket write failed";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v20 = [v17 errorWithDomain:v18 code:1 userInfo:v19];
      (completionCopy)[2](completionCopy, 0, v20);
    }
  }

  else
  {
    v14 = v13 + offset;
    v15 = dispatch_source_create(MEMORY[0x277D85D50], socket, 0, MEMORY[0x277D85CD0]);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__WLSocketHandler__writeBytes_offset_length_toSocket_completion___block_invoke;
    v22[3] = &unk_279EB5FE0;
    v23 = v15;
    selfCopy = self;
    bytesCopy = bytes;
    v27 = v14;
    lengthCopy = length;
    socketCopy = socket;
    v25 = completionCopy;
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