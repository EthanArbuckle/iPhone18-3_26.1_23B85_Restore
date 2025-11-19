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
    v19.receiver = self;
    v19.super_class = TSPCryptoInfoInternal;
    v13 = [(TSPCryptoInfoInternal *)&v19 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_cryptoKey, a3);
      v14->_preferredBlockSize = a4;
      v15 = [v12 copy];
      blockInfos = v14->_blockInfos;
      v14->_blockInfos = v15;

      v14->_decodedLength = a6;
    }

    self = v14;
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (TSPCryptoInfoInternal)initWithCryptoInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 cryptoKey];
  v6 = [v4 preferredBlockSize];
  v7 = [v4 blockInfos];
  v8 = -[TSPCryptoInfoInternal initWithCryptoKey:preferredBlockSize:blockInfos:decodedLength:](self, "initWithCryptoKey:preferredBlockSize:blockInfos:decodedLength:", v5, v6, v7, [v4 decodedLength]);

  return v8;
}

- (id)mutableCryptoInfoCopy
{
  v3 = [TSPMutableCryptoInfoInternal alloc];

  return [(TSPCryptoInfoInternal *)v3 initWithCryptoInfo:self];
}

@end