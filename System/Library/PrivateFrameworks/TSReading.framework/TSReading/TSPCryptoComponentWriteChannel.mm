@interface TSPCryptoComponentWriteChannel
- (TSPCryptoComponentWriteChannel)initWithWriteChannel:(id)channel encryptionKey:(id)key;
- (void)_writeData:(id)data updateHmac:(BOOL)hmac;
- (void)close;
- (void)dealloc;
@end

@implementation TSPCryptoComponentWriteChannel

- (TSPCryptoComponentWriteChannel)initWithWriteChannel:(id)channel encryptionKey:(id)key
{
  channelCopy = channel;
  keyCopy = key;
  v38.receiver = self;
  v38.super_class = TSPCryptoComponentWriteChannel;
  v9 = [(TSPCryptoComponentWriteChannel *)&v38 init];
  v10 = v9;
  if (v9)
  {
    if (!channelCopy)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoComponentWriteChannel initWithWriteChannel:encryptionKey:]"];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
      [currentHandler handleFailureInFunction:v12 file:v13 lineNumber:30 description:{@"invalid nil value for '%s'", "writeChannel"}];
    }

    objc_storeStrong(v9 + 1, channel);
    if (!keyCopy)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoComponentWriteChannel initWithWriteChannel:encryptionKey:]"];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
      [currentHandler2 handleFailureInFunction:v15 file:v16 lineNumber:33 description:{@"invalid nil value for '%s'", "encryptionKey"}];
    }

    v17 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
    *(v9 + 3) = v17;
    if (!v17)
    {
      currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoComponentWriteChannel initWithWriteChannel:encryptionKey:]"];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
      [currentHandler3 handleFailureInFunction:v19 file:v20 lineNumber:36 description:@"Failed to allocate space for encryption buffer"];
    }

    v21 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
    if (v21 && ([MEMORY[0x277D6C278] generateRandomDataInBuffer:v21 length:16] & 1) != 0)
    {
      v22 = CCCryptorCreate(0, 0, 1u, [keyCopy keyData], objc_msgSend(keyCopy, "keyLength"), v21, v9 + 2);
      if (v22 || !*(v9 + 2))
      {
        currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoComponentWriteChannel initWithWriteChannel:encryptionKey:]"];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
        [currentHandler4 handleFailureInFunction:v24 file:v25 lineNumber:48 description:{@"CCCryptorCreate() failed: %d", v22}];
      }

      else
      {
        passphrase = [keyCopy passphrase];
        v33 = [passphrase cStringUsingEncoding:4];

        if (v33)
        {
          v34 = strlen(v33);
          CCHmacInit((v9 + 32), 0, v33, v34);
          v35 = *(v9 + 1);
          v36 = *MEMORY[0x277D85CB0];
          v37 = dispatch_data_create(v21, 0x10uLL, 0, *MEMORY[0x277D85CB0]);
          [v35 writeData:v37];

          v21 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
          if (v21 && ([MEMORY[0x277D6C278] generateRandomDataInBuffer:v21 length:16] & 1) != 0)
          {
            v30 = dispatch_data_create(v21, 0x10uLL, 0, v36);
            [v9 _writeData:v30 updateHmac:0];
            goto LABEL_17;
          }

          currentHandler5 = [MEMORY[0x277D6C290] currentHandler];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoComponentWriteChannel initWithWriteChannel:encryptionKey:]"];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
          [currentHandler5 handleFailureInFunction:v27 file:v28 lineNumber:72 description:@"Failed to generate initial block of random plaintext"];
LABEL_14:

          if (!v21)
          {
LABEL_16:
            v29 = *(v9 + 1);
            *(v9 + 1) = 0;

            v30 = v9;
            v10 = 0;
LABEL_17:

            goto LABEL_18;
          }

LABEL_15:
          free(v21);
          goto LABEL_16;
        }

        currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoComponentWriteChannel initWithWriteChannel:encryptionKey:]"];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
        [currentHandler4 handleFailureInFunction:v24 file:v25 lineNumber:56 description:@"Invalid passphrase"];
      }

      goto LABEL_15;
    }

    currentHandler5 = [MEMORY[0x277D6C290] currentHandler];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoComponentWriteChannel initWithWriteChannel:encryptionKey:]"];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
    [currentHandler5 handleFailureInFunction:v27 file:v28 lineNumber:41 description:@"Failed to generate IV"];
    goto LABEL_14;
  }

LABEL_18:

  return v10;
}

- (void)dealloc
{
  [(TSPCryptoComponentWriteChannel *)self close];
  cryptor = self->_cryptor;
  if (cryptor)
  {
    CCCryptorRelease(cryptor);
    self->_cryptor = 0;
  }

  buffer = self->_buffer;
  if (buffer)
  {
    free(buffer);
    self->_buffer = 0;
  }

  v5.receiver = self;
  v5.super_class = TSPCryptoComponentWriteChannel;
  [(TSPCryptoComponentWriteChannel *)&v5 dealloc];
}

- (void)_writeData:(id)data updateHmac:(BOOL)hmac
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__TSPCryptoComponentWriteChannel__writeData_updateHmac___block_invoke;
  v4[3] = &unk_279D473F0;
  v4[4] = self;
  hmacCopy = hmac;
  dispatch_data_apply(data, v4);
}

uint64_t __56__TSPCryptoComponentWriteChannel__writeData_updateHmac___block_invoke(uint64_t a1, void *a2, uint64_t a3, char *a4, size_t a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (!*(v9 + 8))
  {
    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoComponentWriteChannel _writeData:updateHmac:]_block_invoke"];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
    [v16 handleFailureInFunction:v17 file:v18 lineNumber:124 description:@"Tried to write data when already closed."];
LABEL_15:

    v15 = 0;
    goto LABEL_16;
  }

  if (*(a1 + 40) == 1)
  {
    CCHmacUpdate((v9 + 32), a4, a5);
  }

  if (a5)
  {
    while (1)
    {
      v10 = a5 >= 0x1FFF0 ? 131056 : a5;
      dataOutMoved = 0;
      v11 = CCCryptorUpdate(*(*(a1 + 32) + 16), a4, v10, *(*(a1 + 32) + 24), 0x20000uLL, &dataOutMoved);
      if (v11)
      {
        break;
      }

      if (dataOutMoved)
      {
        v12 = *(a1 + 32);
        v13 = *(v12 + 8);
        v14 = dispatch_data_create(*(v12 + 24), dataOutMoved, 0, 0);
        [v13 writeData:v14];
      }

      a4 += v10;
      a5 -= v10;
      if (!a5)
      {
        goto LABEL_12;
      }
    }

    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoComponentWriteChannel _writeData:updateHmac:]_block_invoke"];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
    [v16 handleFailureInFunction:v17 file:v18 lineNumber:145 description:{@"Encryption failed: CCCryptorUpdate result %d", v11}];
    goto LABEL_15;
  }

LABEL_12:
  v15 = 1;
LABEL_16:

  return v15;
}

- (void)close
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_writeChannel)
  {
    goto LABEL_15;
  }

  dataOutMoved = 0;
  buffer = selfCopy->_buffer;
  if (CCCryptorFinal(selfCopy->_cryptor, buffer, 0x20000uLL, &dataOutMoved) == -4301)
  {
    OutputLength = CCCryptorGetOutputLength(selfCopy->_cryptor, 0, 1);
    buffer = malloc_type_malloc(OutputLength, 0x100004077774924uLL);
    if (buffer)
    {
      v5 = CCCryptorFinal(selfCopy->_cryptor, buffer, OutputLength, &dataOutMoved);
      if (!v5)
      {
LABEL_9:
        v9 = buffer;
        goto LABEL_10;
      }

      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoComponentWriteChannel close]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
      [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:194 description:{@"Finalizing encryption failed: CCCryptorFinal status %i", v5}];
    }

    else
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoComponentWriteChannel close]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
      [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:188 description:@"Failed to allocate buffer for finalizing encryption"];
      buffer = 0;
    }

    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:
  if (dataOutMoved)
  {
    writeChannel = selfCopy->_writeChannel;
    v11 = dispatch_data_create(buffer, dataOutMoved, 0, 0);
    [(TSPComponentWriteChannel *)writeChannel writeData:v11];
  }

  if (v9)
  {
    free(v9);
  }

  CCHmacFinal(&selfCopy->_ccHmacContext, macOut);
  v12 = selfCopy->_writeChannel;
  v13 = dispatch_data_create(macOut, 0x14uLL, 0, 0);
  [(TSPComponentWriteChannel *)v12 writeData:v13];

  [(TSPComponentWriteChannel *)selfCopy->_writeChannel close];
  v14 = selfCopy->_writeChannel;
  selfCopy->_writeChannel = 0;

LABEL_15:
  objc_sync_exit(selfCopy);
}

@end