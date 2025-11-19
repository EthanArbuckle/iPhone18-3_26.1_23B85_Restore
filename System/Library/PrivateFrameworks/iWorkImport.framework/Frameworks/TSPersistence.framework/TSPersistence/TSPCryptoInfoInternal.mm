@interface TSPCryptoInfoInternal
- (TSPCryptoInfoInternal)initWithCryptoInfo:(id)a3;
- (TSPCryptoInfoInternal)initWithCryptoKey:(id)a3 preferredBlockSize:(unint64_t)a4 blockInfos:(id)a5 decodedLength:(unint64_t)a6;
- (id)mutableCryptoInfoCopy;
@end

@implementation TSPCryptoInfoInternal

- (TSPCryptoInfoInternal)initWithCryptoKey:(id)a3 preferredBlockSize:(unint64_t)a4 blockInfos:(id)a5 decodedLength:(unint64_t)a6
{
  v11 = a3;
  v12 = a5;
  if (v11)
  {
    v21.receiver = self;
    v21.super_class = TSPCryptoInfoInternal;
    v13 = [(TSPCryptoInfoInternal *)&v21 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_cryptoKey, a3);
      v14->_preferredBlockSize = a4;
      v17 = objc_msgSend_copy(v12, v15, v16);
      blockInfos = v14->_blockInfos;
      v14->_blockInfos = v17;

      v14->_decodedLength = a6;
    }

    self = v14;
    v19 = self;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (TSPCryptoInfoInternal)initWithCryptoInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_cryptoKey(v4, v5, v6);
  v10 = objc_msgSend_preferredBlockSize(v4, v8, v9);
  v13 = objc_msgSend_blockInfos(v4, v11, v12);
  v16 = objc_msgSend_decodedLength(v4, v14, v15);
  v18 = objc_msgSend_initWithCryptoKey_preferredBlockSize_blockInfos_decodedLength_(self, v17, v7, v10, v13, v16);

  return v18;
}

- (id)mutableCryptoInfoCopy
{
  v3 = [TSPMutableCryptoInfoInternal alloc];

  return MEMORY[0x2821F9670](v3, sel_initWithCryptoInfo_, self);
}

@end