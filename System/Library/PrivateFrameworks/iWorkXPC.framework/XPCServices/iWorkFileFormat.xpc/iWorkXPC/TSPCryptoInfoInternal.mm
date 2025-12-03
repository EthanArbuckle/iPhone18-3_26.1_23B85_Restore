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
    v19.receiver = self;
    v19.super_class = TSPCryptoInfoInternal;
    v13 = [(TSPCryptoInfoInternal *)&v19 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_cryptoKey, key);
      v14->_preferredBlockSize = size;
      v15 = [infosCopy copy];
      blockInfos = v14->_blockInfos;
      v14->_blockInfos = v15;

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
  cryptoKey = [infoCopy cryptoKey];
  preferredBlockSize = [infoCopy preferredBlockSize];
  blockInfos = [infoCopy blockInfos];
  v8 = -[TSPCryptoInfoInternal initWithCryptoKey:preferredBlockSize:blockInfos:decodedLength:](self, "initWithCryptoKey:preferredBlockSize:blockInfos:decodedLength:", cryptoKey, preferredBlockSize, blockInfos, [infoCopy decodedLength]);

  return v8;
}

- (id)mutableCryptoInfoCopy
{
  v3 = [TSPMutableCryptoInfoInternal alloc];

  return [(TSPCryptoInfoInternal *)v3 initWithCryptoInfo:self];
}

@end