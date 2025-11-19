@interface TSPMutableCryptoInfoInternal
- (TSPMutableCryptoInfoInternal)initWithCryptoKey:(id)a3 preferredBlockSize:(unint64_t)a4 blockInfos:(id)a5 decodedLength:(unint64_t)a6;
- (void)addBlockInfo:(id)a3;
- (void)incrementDecodedLengthBy:(unint64_t)a3;
- (void)reset;
@end

@implementation TSPMutableCryptoInfoInternal

- (TSPMutableCryptoInfoInternal)initWithCryptoKey:(id)a3 preferredBlockSize:(unint64_t)a4 blockInfos:(id)a5 decodedLength:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = TSPMutableCryptoInfoInternal;
  v14 = [(TSPCryptoInfoInternal *)&v18 initWithCryptoKey:v10 preferredBlockSize:a4 blockInfos:0 decodedLength:a6];
  if (v14)
  {
    v15 = objc_msgSend_mutableCopy(v11, v12, v13);
    objc_msgSend_setBlockInfos_(v14, v16, v15);
  }

  return v14;
}

- (void)reset
{
  objc_msgSend_setBlockInfos_(self, a2, 0);

  MEMORY[0x2821F9670](self, sel_setDecodedLength_, 0);
}

- (void)addBlockInfo:(id)a3
{
  v18 = a3;
  if (objc_msgSend_preferredBlockSize(self, v4, v5) == -1)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPMutableCryptoInfoInternal addBlockInfo:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 97, 0, "We should not be adding a block info when the preferred block size is SIZE_T_MAX.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  else
  {
    v9 = objc_msgSend_blockInfos(self, v6, v7);
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setBlockInfos_(self, v10, v9);
    }

    objc_msgSend_addObject_(v9, v8, v18);
  }
}

- (void)incrementDecodedLengthBy:(unint64_t)a3
{
  v4 = objc_msgSend_decodedLength(self, a2, a3) + a3;

  MEMORY[0x2821F9670](self, sel_setDecodedLength_, v4);
}

@end