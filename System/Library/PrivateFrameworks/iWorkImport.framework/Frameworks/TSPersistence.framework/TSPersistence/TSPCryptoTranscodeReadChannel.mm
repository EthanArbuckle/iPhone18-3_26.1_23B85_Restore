@interface TSPCryptoTranscodeReadChannel
- (TSPCryptoTranscodeReadChannel)init;
- (TSPCryptoTranscodeReadChannel)initWithReadChannel:(id)a3 decryptionInfo:(id)a4 encryptionInfo:(id)a5;
- (void)close;
- (void)readWithHandler:(id)a3;
@end

@implementation TSPCryptoTranscodeReadChannel

- (TSPCryptoTranscodeReadChannel)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPCryptoTranscodeReadChannel init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoTranscodeReadChannel.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 33, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPCryptoTranscodeReadChannel init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPCryptoTranscodeReadChannel)initWithReadChannel:(id)a3 decryptionInfo:(id)a4 encryptionInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = TSPCryptoTranscodeReadChannel;
  v11 = [(TSPCryptoTranscodeReadChannel *)&v24 init];
  if (v11)
  {
    if (v9)
    {
      v12 = [TSPCryptoReadChannel alloc];
      v15 = objc_msgSend_cryptoKey(v9, v13, v14);
      v18 = objc_msgSend_blockInfos(v9, v16, v17);
      Channel_decryptionKey_blockInfos = objc_msgSend_initWithReadChannel_decryptionKey_blockInfos_(v12, v19, v8, v15, v18);
      readChannel = v11->_readChannel;
      v11->_readChannel = Channel_decryptionKey_blockInfos;
    }

    else
    {
      v22 = v8;
      v15 = v11->_readChannel;
      v11->_readChannel = v22;
    }

    objc_storeStrong(&v11->_encryptionInfo, a5);
    if (!v11->_readChannel)
    {

      v11 = 0;
    }
  }

  return v11;
}

- (void)readWithHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_encryptionInfo)
  {
    v6 = [TSPIOHandlerWriteChannelAdapter alloc];
    v8 = objc_msgSend_initWithHandler_(v6, v7, v5);
    v9 = [TSPCryptoComponentWriteChannel alloc];
    v11 = objc_msgSend_initWithWriteChannel_encryptionInfo_(v9, v10, v8, self->_encryptionInfo);
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v25 = 0;
    readChannel = self->_readChannel;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_276B00420;
    v20[3] = &unk_27A6E7710;
    v23 = v24;
    v13 = v8;
    v21 = v13;
    v22 = v11;
    v14 = v11;
    objc_msgSend_readWithHandler_(readChannel, v15, v20);

    _Block_object_dispose(v24, 8);
  }

  else
  {
    v16 = self->_readChannel;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_276B004F8;
    v18[3] = &unk_27A6E7738;
    v19 = v4;
    objc_msgSend_readWithHandler_(v16, v17, v18);
    v13 = v19;
  }
}

- (void)close
{
  objc_msgSend_close(self->_readChannel, a2, v2);
  readChannel = self->_readChannel;
  self->_readChannel = 0;
}

@end