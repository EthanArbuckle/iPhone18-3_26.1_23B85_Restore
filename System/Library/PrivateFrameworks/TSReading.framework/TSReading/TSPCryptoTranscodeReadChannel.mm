@interface TSPCryptoTranscodeReadChannel
- (TSPCryptoTranscodeReadChannel)initWithReadChannel:(id)channel decryptionKey:(id)key encryptionKey:(id)encryptionKey;
- (void)close;
- (void)readWithQueue:(id)queue handler:(id)handler;
@end

@implementation TSPCryptoTranscodeReadChannel

- (TSPCryptoTranscodeReadChannel)initWithReadChannel:(id)channel decryptionKey:(id)key encryptionKey:(id)encryptionKey
{
  channelCopy = channel;
  keyCopy = key;
  encryptionKeyCopy = encryptionKey;
  v17.receiver = self;
  v17.super_class = TSPCryptoTranscodeReadChannel;
  v11 = [(TSPCryptoTranscodeReadChannel *)&v17 init];
  if (v11)
  {
    v12 = dispatch_queue_create("TSPCryptoTranscodeReadChannel.Read", 0);
    readQueue = v11->_readQueue;
    v11->_readQueue = v12;

    if (keyCopy)
    {
      v14 = [[TSPCryptoReadChannel alloc] initWithReadChannel:channelCopy decryptionKey:keyCopy];
    }

    else
    {
      v14 = channelCopy;
    }

    readChannel = v11->_readChannel;
    v11->_readChannel = v14;

    objc_storeStrong(&v11->_encryptionKey, encryptionKey);
    if (!v11->_readChannel)
    {

      v11 = 0;
    }
  }

  return v11;
}

- (void)readWithQueue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (self->_encryptionKey)
  {
    v8 = [[TSPIOHandlerWriteChannelAdapter alloc] initWithQueue:queueCopy handler:handlerCopy];
    v9 = [[TSPCryptoComponentWriteChannel alloc] initWithWriteChannel:v8 encryptionKey:self->_encryptionKey];
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v24 = 0;
    readChannel = self->_readChannel;
    readQueue = self->_readQueue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__TSPCryptoTranscodeReadChannel_readWithQueue_handler___block_invoke;
    v19[3] = &unk_279D47158;
    v22 = v23;
    v12 = v8;
    v20 = v12;
    v21 = v9;
    v13 = v9;
    [(TSUStreamReadChannel *)readChannel readWithQueue:readQueue handler:v19];

    _Block_object_dispose(v23, 8);
  }

  else
  {
    v14 = self->_readChannel;
    v15 = self->_readQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__TSPCryptoTranscodeReadChannel_readWithQueue_handler___block_invoke_2;
    v16[3] = &unk_279D474B8;
    v17 = queueCopy;
    v18 = handlerCopy;
    [(TSUStreamReadChannel *)v14 readWithQueue:v15 handler:v16];

    v12 = v17;
  }
}

void __55__TSPCryptoTranscodeReadChannel_readWithQueue_handler___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 48) + 8) + 24);
  if (v7 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) setError:v7];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v8 = *(*(*(a1 + 48) + 8) + 24);
  }

  if (v9 && (v8 & 1) == 0)
  {
    [*(a1 + 40) writeData:v9];
  }

  if (a2)
  {
    [*(a1 + 40) close];
  }
}

void __55__TSPCryptoTranscodeReadChannel_readWithQueue_handler___block_invoke_2(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__TSPCryptoTranscodeReadChannel_readWithQueue_handler___block_invoke_3;
  v13[3] = &unk_279D47490;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v15 = v8;
  v16 = v10;
  v17 = a2;
  v14 = v7;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, v13);
}

- (void)close
{
  [(TSUStreamReadChannel *)self->_readChannel close];
  readChannel = self->_readChannel;
  self->_readChannel = 0;
}

@end