@interface TSPCryptoReadChannel
- (TSPCryptoReadChannel)init;
- (TSPCryptoReadChannel)initWithReadChannel:(id)a3 decryptionKey:(id)a4 blockInfos:(id)a5;
- (void)_readBlocksWithHandler:(id)a3;
- (void)_resetCryptor;
- (void)close;
- (void)dealloc;
- (void)readWithHandler:(id)a3;
@end

@implementation TSPCryptoReadChannel

- (TSPCryptoReadChannel)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPCryptoReadChannel init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoReadChannel.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 37, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPCryptoReadChannel init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPCryptoReadChannel)initWithReadChannel:(id)a3 decryptionKey:(id)a4 blockInfos:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v49.receiver = self;
  v49.super_class = TSPCryptoReadChannel;
  v13 = [(TSPCryptoReadChannel *)&v49 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_15;
  }

  if (!v9)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPCryptoReadChannel initWithReadChannel:decryptionKey:blockInfos:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoReadChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 43, 0, "invalid nil value for '%{public}s'", "readChannel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  objc_storeStrong(&v13->_readChannel, a3);
  if (!v10)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPCryptoReadChannel initWithReadChannel:decryptionKey:blockInfos:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoReadChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 46, 0, "invalid nil value for '%{public}s'", "decryptionKey");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  objc_storeStrong(&v13->_decryptionKey, a4);
  v32 = objc_msgSend_copy(v11, v30, v31);
  blockInfos = v13->_blockInfos;
  v13->_blockInfos = v32;

  if (!v13->_readChannel || !v13->_decryptionKey)
  {
LABEL_12:

    v14 = 0;
    goto LABEL_15;
  }

  v34 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  v13->_iv = v34;
  if (!v34)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSPCryptoReadChannel initWithReadChannel:decryptionKey:blockInfos:]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoReadChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v45, v42, v44, 62, 0, "Failed to allocate space for IV");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
    goto LABEL_12;
  }

  if (objc_msgSend_count(v13->_blockInfos, v35, v36))
  {
    v38 = objc_msgSend_objectAtIndexedSubscript_(v13->_blockInfos, v37, 0);
    v14->_remainingBlockSize = objc_msgSend_encodedLength(v38, v39, v40);
  }

  else
  {
    v13->_remainingBlockSize = -1;
  }

  v14->_nextBlockIndex = 0;
LABEL_15:

  return v14;
}

- (void)dealloc
{
  objc_msgSend_close(self, a2, v2);
  cryptor = self->_cryptor;
  if (cryptor)
  {
    CCCryptorRelease(cryptor);
    self->_cryptor = 0;
  }

  iv = self->_iv;
  if (iv)
  {
    free(iv);
    self->_iv = 0;
  }

  v6.receiver = self;
  v6.super_class = TSPCryptoReadChannel;
  [(TSPCryptoReadChannel *)&v6 dealloc];
}

- (void)close
{
  objc_msgSend_close(self->_readChannel, a2, v2);
  readChannel = self->_readChannel;
  self->_readChannel = 0;
}

- (void)readWithHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276AFED98;
  v7[3] = &unk_27A6E76C0;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  objc_msgSend__readBlocksWithHandler_(self, v6, v7);
}

- (void)_readBlocksWithHandler:(id)a3
{
  v5 = a3;
  readChannel = self->_readChannel;
  if (!readChannel)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPCryptoReadChannel _readBlocksWithHandler:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoReadChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 277, 0, "Read channel is already closed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    readChannel = self->_readChannel;
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 1;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_276AFFC9C;
  v16[3] = &unk_27A6E76E8;
  v18 = v19;
  v14 = v5;
  v16[4] = self;
  v17 = v14;
  objc_msgSend_readWithHandler_(readChannel, v15, v16);

  _Block_object_dispose(v19, 8);
}

- (void)_resetCryptor
{
  holdData = self->_holdData;
  self->_holdData = 0;

  self->_ivRead = 0;
  self->_initialBytesIgnored = 0;
  cryptor = self->_cryptor;
  if (cryptor)
  {
    CCCryptorRelease(cryptor);
    self->_cryptor = 0;
  }
}

@end