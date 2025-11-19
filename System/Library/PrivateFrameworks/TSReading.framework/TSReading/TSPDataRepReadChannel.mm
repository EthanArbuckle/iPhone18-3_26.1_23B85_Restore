@interface TSPDataRepReadChannel
- (TSPDataRepReadChannel)initWithRepresentation:(id)a3;
- (void)close;
- (void)dealloc;
- (void)readWithQueue:(id)a3 handler:(id)a4;
@end

@implementation TSPDataRepReadChannel

- (TSPDataRepReadChannel)initWithRepresentation:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = TSPDataRepReadChannel;
  v6 = [(TSPDataRepReadChannel *)&v19 init];
  v7 = v6;
  if (!v6)
  {
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  objc_storeStrong(&v6->_representation, a3);
  v8 = [(SFUDataRepresentation *)v7->_representation inputStream];
  inputStream = v7->_inputStream;
  v7->_inputStream = v8;

  if (([(SFUInputStream *)v7->_inputStream canSeek]& 1) == 0)
  {
    [(SFUInputStream *)v7->_inputStream close];
    v10 = [(SFUDataRepresentation *)v7->_representation bufferedInputStream];
    v11 = v7->_inputStream;
    v7->_inputStream = v10;

    if (!v7->_inputStream)
    {
      if ([(SFUDataRepresentation *)v7->_representation encodedLength])
      {
        v15 = [MEMORY[0x277D6C290] currentHandler];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDataRepReadChannel initWithRepresentation:]"];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDataRepReadChannel.mm"];
        [v15 handleFailureInFunction:v16 file:v17 lineNumber:35 description:@"Could not create the buffered input stream."];
      }

      goto LABEL_7;
    }
  }

  v12 = dispatch_queue_create("TSPDataRepReadChannel.Read", 0);
  readQueue = v7->_readQueue;
  v7->_readQueue = v12;

  v14 = v7;
LABEL_8:

  return v14;
}

- (void)dealloc
{
  [(SFUInputStream *)self->_inputStream close];
  v3.receiver = self;
  v3.super_class = TSPDataRepReadChannel;
  [(TSPDataRepReadChannel *)&v3 dealloc];
}

- (void)readWithQueue:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_representation)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDataRepReadChannel readWithQueue:handler:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDataRepReadChannel.mm"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:52 description:@"Stream is closed"];
  }

  readQueue = self->_readQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__TSPDataRepReadChannel_readWithQueue_handler___block_invoke;
  block[3] = &unk_279D47248;
  block[4] = self;
  v15 = v6;
  v16 = v7;
  v12 = v7;
  v13 = v6;
  dispatch_async(readQueue, block);
}

void __47__TSPDataRepReadChannel_readWithQueue_handler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) dataLength];
  if (v2 < 1)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__TSPDataRepReadChannel_readWithQueue_handler___block_invoke_4;
    v17[3] = &unk_279D46BB8;
    v13 = &v18;
    v14 = *(a1 + 40);
    v18 = *(a1 + 48);
    dispatch_async(v14, v17);
  }

  else
  {
    v3 = v2;
    v4 = 0;
    v5 = *MEMORY[0x277D85CB0];
    while (1)
    {
      v6 = v3 - v4 >= 0x20000 ? 0x20000 : v3 - v4;
      v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
      v8 = [*(*(a1 + 32) + 16) readToBuffer:v7 size:v6];
      if (!v8)
      {
        break;
      }

      v4 += v8;
      v9 = dispatch_data_create(v7, v8, 0, v5);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__TSPDataRepReadChannel_readWithQueue_handler___block_invoke_2;
      block[3] = &unk_279D47220;
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v25 = v4 == v3;
      v23 = v9;
      v24 = v11;
      v12 = v9;
      dispatch_async(v10, block);

      if (v4 >= v3)
      {
        return;
      }
    }

    free(v7);
    TSULogErrorInFunction();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __47__TSPDataRepReadChannel_readWithQueue_handler___block_invoke_3;
    v19[3] = &unk_279D46A08;
    v13 = &v21;
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v20 = 0;
    v21 = v16;
    dispatch_async(v15, v19);
  }
}

- (void)close
{
  readQueue = self->_readQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__TSPDataRepReadChannel_close__block_invoke;
  block[3] = &unk_279D469B8;
  block[4] = self;
  dispatch_async(readQueue, block);
}

void __30__TSPDataRepReadChannel_close__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  [*(*(a1 + 32) + 16) close];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;
}

@end