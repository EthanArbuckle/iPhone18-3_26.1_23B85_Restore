@interface TSPCryptoComponentWriteChannel
- (BOOL)_finalizeBlockForClosing:(BOOL)a3;
- (BOOL)_initializeBlock;
- (BOOL)_resetBuffer;
- (TSPCryptoComponentWriteChannel)init;
- (TSPCryptoComponentWriteChannel)initWithWriteChannel:(id)a3 encryptionInfo:(id)a4 bufferSize:(unint64_t)a5;
- (void)_writeData:(id)a3 isDecryptedData:(BOOL)a4;
- (void)close;
- (void)dealloc;
@end

@implementation TSPCryptoComponentWriteChannel

- (TSPCryptoComponentWriteChannel)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPCryptoComponentWriteChannel init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 40, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPCryptoComponentWriteChannel init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPCryptoComponentWriteChannel)initWithWriteChannel:(id)a3 encryptionInfo:(id)a4 bufferSize:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v51.receiver = self;
  v51.super_class = TSPCryptoComponentWriteChannel;
  v12 = [(TSPCryptoComponentWriteChannel *)&v51 init];
  v13 = v12;
  if (v12)
  {
    if (!v9)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPCryptoComponentWriteChannel initWithWriteChannel:encryptionInfo:bufferSize:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 50, 0, "invalid nil value for '%{public}s'", "writeChannel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    }

    objc_storeStrong(&v12->_writeChannel, a3);
    if (!v10)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSPCryptoComponentWriteChannel initWithWriteChannel:encryptionInfo:bufferSize:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 53, 0, "invalid nil value for '%{public}s'", "encryptionInfo");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
    }

    objc_storeStrong(&v12->_encryptionInfo, a4);
    objc_msgSend_reset(v12->_encryptionInfo, v29, v30);
    v33 = 144;
    if (a5 > 0x90)
    {
      v33 = a5;
    }

    v12->_bufferSize = v33;
    v34 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v31, v32);
    v37 = objc_msgSend_physicalMemory(v34, v35, v36);

    if (v37 / 0x64 / v12->_bufferSize <= 0x20)
    {
      v38 = 32;
    }

    else
    {
      v38 = v37 / 0x64 / v12->_bufferSize;
    }

    v39 = dispatch_semaphore_create(v38);
    bufferSemaphore = v12->_bufferSemaphore;
    v12->_bufferSemaphore = v39;

    if (v12->_writeChannel)
    {
      v45 = objc_msgSend_cryptoKey(v12->_encryptionInfo, v41, v42);
      if (v45 && objc_msgSend__resetBuffer(v12, v43, v44))
      {
        v48 = objc_msgSend__initializeBlock(v12, v46, v47);

        if (v48)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    writeChannel = v13->_writeChannel;
    v13->_writeChannel = 0;

    v13 = 0;
  }

LABEL_18:

  return v13;
}

- (BOOL)_resetBuffer
{
  v3 = self->_bufferSemaphore;
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = malloc_type_malloc(self->_bufferSize, 0x100004077774924uLL);
  v5 = v4;
  if (v4)
  {
    self->_buffer = v4;
    bufferSize = self->_bufferSize;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_276AFD95C;
    v20[3] = &unk_27A6E2CA0;
    v22 = v4;
    v21 = v3;
    v7 = dispatch_data_create(v5, bufferSize, 0, v20);
    bufferDispatchData = self->_bufferDispatchData;
    self->_bufferDispatchData = v7;

    v9 = self->_bufferSize;
    self->_bufferPosition = 0;
    self->_remainingBufferSize = v9;
    v10 = self->_bufferDispatchData != 0;
  }

  else
  {
    dispatch_semaphore_signal(v3);
    v11 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPCryptoComponentWriteChannel _resetBuffer]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v13, v15, 85, 0, "Failed to allocate space for encryption buffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    v10 = 0;
  }

  return v10;
}

- (BOOL)_initializeBlock
{
  v4 = objc_msgSend_cryptoKey(self->_encryptionInfo, a2, v2);
  v6 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  if (!v6 || (v7 = *MEMORY[0x277CDC540], SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, v6)))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPCryptoComponentWriteChannel _initializeBlock]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 109, 0, "Failed to generate IV");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
LABEL_4:
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v16 = objc_msgSend_keyData(v4, v5, v8);
  v19 = objc_msgSend_keyLength(v4, v17, v18);
  v22 = CCCryptorCreate(0, 0, 1u, v16, v19, v6, &self->_cryptor);
  if (v22 || !self->_cryptor)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSPCryptoComponentWriteChannel _initializeBlock]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 115, 0, "CCCryptorCreate() failed: %d", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  else
  {
    *self->_ccHmacContext.ctx = 0u;
    *&self->_ccHmacContext.ctx[88] = 0u;
    *&self->_ccHmacContext.ctx[92] = 0u;
    *&self->_ccHmacContext.ctx[80] = 0u;
    *&self->_ccHmacContext.ctx[84] = 0u;
    *&self->_ccHmacContext.ctx[72] = 0u;
    *&self->_ccHmacContext.ctx[76] = 0u;
    *&self->_ccHmacContext.ctx[64] = 0u;
    *&self->_ccHmacContext.ctx[68] = 0u;
    *&self->_ccHmacContext.ctx[56] = 0u;
    *&self->_ccHmacContext.ctx[60] = 0u;
    *&self->_ccHmacContext.ctx[48] = 0u;
    *&self->_ccHmacContext.ctx[52] = 0u;
    *&self->_ccHmacContext.ctx[40] = 0u;
    *&self->_ccHmacContext.ctx[44] = 0u;
    *&self->_ccHmacContext.ctx[32] = 0u;
    *&self->_ccHmacContext.ctx[36] = 0u;
    *&self->_ccHmacContext.ctx[24] = 0u;
    *&self->_ccHmacContext.ctx[28] = 0u;
    *&self->_ccHmacContext.ctx[16] = 0u;
    *&self->_ccHmacContext.ctx[20] = 0u;
    *&self->_ccHmacContext.ctx[8] = 0u;
    *&self->_ccHmacContext.ctx[12] = 0u;
    *&self->_ccHmacContext.ctx[4] = 0u;
    v31 = objc_msgSend_passphrase(v4, v20, v21);
    v32 = v31;
    v34 = objc_msgSend_cStringUsingEncoding_(v32, v33, 4);

    if (v34)
    {
      v36 = strlen(v34);
      CCHmacInit(&self->_ccHmacContext, 0, v34, v36);
      writeChannel = self->_writeChannel;
      v38 = *MEMORY[0x277D85CB0];
      v39 = dispatch_data_create(v6, 0x10uLL, 0, *MEMORY[0x277D85CB0]);
      objc_msgSend_writeData_(writeChannel, v40, v39);

      self->_encodedBlockLength += 16;
      v6 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
      if (v6 && !SecRandomCopyBytes(v7, 0x10uLL, v6))
      {
        v56 = dispatch_data_create(v6, 0x10uLL, 0, v38);
        objc_msgSend__writeData_isDecryptedData_(self, v57, v56, 0);

        LOBYTE(v6) = 1;
        goto LABEL_9;
      }

      v42 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSPCryptoComponentWriteChannel _initializeBlock]");
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 139, 0, "Failed to generate initial block of random plaintext");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
      goto LABEL_4;
    }

    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSPCryptoComponentWriteChannel _initializeBlock]");
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 124, 0, "Invalid passphrase");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
  }

LABEL_8:
  free(v6);
  LOBYTE(v6) = 0;
LABEL_9:

  return v6;
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

  v5.receiver = self;
  v5.super_class = TSPCryptoComponentWriteChannel;
  [(TSPCryptoComponentWriteChannel *)&v5 dealloc];
}

- (void)_writeData:(id)a3 isDecryptedData:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_276AFDEE4;
  v4[3] = &unk_27A6E7670;
  v4[4] = self;
  v5 = a4;
  dispatch_data_apply(a3, v4);
}

- (void)close
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_writeChannel)
  {
    objc_msgSend__finalizeBlockForClosing_(obj, v2, 1);
    objc_msgSend_close(obj->_writeChannel, v3, v4);
    writeChannel = obj->_writeChannel;
    obj->_writeChannel = 0;
  }

  objc_sync_exit(obj);
}

- (BOOL)_finalizeBlockForClosing:(BOOL)a3
{
  if (!self->_writeChannel)
  {
    TSUSetCrashReporterInfo();
    v48 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "[TSPCryptoComponentWriteChannel _finalizeBlockForClosing:]", "[TSPCryptoComponentWriteChannel _finalizeBlockForClosing:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm", 265);
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v53, v50, v52, 265, 1, "Tried to write data when already closed.");

    TSUCrashBreakpoint();
    abort();
  }

  dataOutMoved = 0;
  v5 = CCCryptorFinal(self->_cryptor, &self->_buffer[self->_bufferPosition], self->_remainingBufferSize, &dataOutMoved);
  v6 = MEMORY[0x277D85CB0];
  if (v5 != -4301)
  {
    if (!dataOutMoved)
    {
      subrange = 0;
      v26 = 1;
      goto LABEL_17;
    }

    subrange = dispatch_data_create_subrange(self->_bufferDispatchData, self->_bufferPosition, dataOutMoved);
    v21 = dataOutMoved;
    v22 = self->_bufferPosition + dataOutMoved;
    self->_bufferPosition = v22;
    if (v22 > self->_bufferSize)
    {
      TSUSetCrashReporterInfo();
      v54 = MEMORY[0x277D81150];
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "[TSPCryptoComponentWriteChannel _finalizeBlockForClosing:]", "[TSPCryptoComponentWriteChannel _finalizeBlockForClosing:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm", 296);
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v59, v56, v58, 296, 1, "Buffer overflow");

      TSUCrashBreakpoint();
    }

    else
    {
      remainingBufferSize = self->_remainingBufferSize;
      v24 = remainingBufferSize >= v21;
      v25 = remainingBufferSize - v21;
      if (v24)
      {
        self->_remainingBufferSize = v25;
        goto LABEL_11;
      }

      TSUSetCrashReporterInfo();
      v60 = MEMORY[0x277D81150];
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "[TSPCryptoComponentWriteChannel _finalizeBlockForClosing:]", "[TSPCryptoComponentWriteChannel _finalizeBlockForClosing:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm", 297);
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v65, v62, v64, 297, 1, "Buffer overflow");

      TSUCrashBreakpoint();
    }

    abort();
  }

  OutputLength = CCCryptorGetOutputLength(self->_cryptor, 0, 1);
  v8 = malloc_type_malloc(OutputLength, 0x100004077774924uLL);
  v10 = v8;
  if (!v8)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPCryptoComponentWriteChannel _finalizeBlockForClosing:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 280, 0, "Failed to allocate buffer for finalizing encryption");

    subrange = 0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
    goto LABEL_14;
  }

  subrange = dispatch_data_create(v8, OutputLength, 0, *v6);
  dataOutMoved = 0;
  v13 = CCCryptorFinal(self->_cryptor, v10, OutputLength, &dataOutMoved);
  if (!v13)
  {
LABEL_11:
    v26 = 1;
    goto LABEL_15;
  }

  v14 = MEMORY[0x277D81150];
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPCryptoComponentWriteChannel _finalizeBlockForClosing:]");
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 290, 0, "Finalizing encryption failed: CCCryptorFinal status %i", v13);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
LABEL_14:
  v26 = 0;
LABEL_15:
  if (dataOutMoved)
  {
    objc_msgSend_writeData_(self->_writeChannel, v12, subrange);
    self->_encodedBlockLength += dataOutMoved;
  }

LABEL_17:
  v34 = malloc_type_calloc(0x14uLL, 1uLL, 0x100004077774924uLL);
  CCHmacFinal(&self->_ccHmacContext, v34);
  writeChannel = self->_writeChannel;
  v36 = dispatch_data_create(v34, 0x14uLL, 0, *v6);
  objc_msgSend_writeData_(writeChannel, v37, v36);

  self->_encodedBlockLength += 20;
  if (objc_msgSend_preferredBlockSize(self->_encryptionInfo, v38, v39) != -1)
  {
    objc_msgSend_incrementDecodedLengthBy_(self->_encryptionInfo, v40, self->_decryptedBlockLength);
  }

  if (!a3)
  {
    encryptionInfo = self->_encryptionInfo;
    encodedBlockLength = self->_encodedBlockLength;
    decryptedBlockLength = self->_decryptedBlockLength;
    v44 = TSUEncodedBlockInfoCreate();
    objc_msgSend_addBlockInfo_(encryptionInfo, v45, v44);

    self->_encodedBlockLength = 0;
    self->_decryptedBlockLength = 0;
    cryptor = self->_cryptor;
    if (cryptor)
    {
      CCCryptorRelease(cryptor);
      self->_cryptor = 0;
    }
  }

  return v26;
}

@end