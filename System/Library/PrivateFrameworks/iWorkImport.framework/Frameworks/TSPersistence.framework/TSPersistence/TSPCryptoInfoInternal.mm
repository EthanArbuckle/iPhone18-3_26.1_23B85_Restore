@interface TSPCryptoInfoInternal
- (TSPCryptoInfoInternal)initWithCryptoInfo:(id)info;
- (TSPCryptoInfoInternal)initWithCryptoKey:(id)key preferredBlockSize:(unint64_t)size blockInfos:(id)infos decodedLength:(unint64_t)length;
- (id)mutableCryptoInfoCopy;
@end

@implementation TSPCryptoInfoInternal

- (TSPCryptoInfoInternal)initWithCryptoKey:(id)key preferredBlockSize:(unint64_t)size blockInfos:(id)infos decodedLength:(unint64_t)length
{
  keyCopy = key;
  infosCopy = infos;
  if (keyCopy)
  {
    v21.receiver = self;
    v21.super_class = TSPCryptoInfoInternal;
    v13 = [(TSPCryptoInfoInternal *)&v21 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_cryptoKey, key);
      v14->_preferredBlockSize = size;
      v17 = objc_msgSend_copy(infosCopy, v15, v16);
      blockInfos = v14->_blockInfos;
      v14->_blockInfos = v17;

      v14->_decodedLength = length;
    }

    self = v14;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (TSPCryptoInfoInternal)initWithCryptoInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_cryptoKey(infoCopy, v5, v6);
  v10 = objc_msgSend_preferredBlockSize(infoCopy, v8, v9);
  v13 = objc_msgSend_blockInfos(infoCopy, v11, v12);
  v16 = objc_msgSend_decodedLength(infoCopy, v14, v15);
  v18 = objc_msgSend_initWithCryptoKey_preferredBlockSize_blockInfos_decodedLength_(self, v17, v7, v10, v13, v16);

  return v18;
}

- (id)mutableCryptoInfoCopy
{
  v3 = [TSPMutableCryptoInfoInternal alloc];

  return MEMORY[0x2821F9670](v3, sel_initWithCryptoInfo_, self);
}

@end