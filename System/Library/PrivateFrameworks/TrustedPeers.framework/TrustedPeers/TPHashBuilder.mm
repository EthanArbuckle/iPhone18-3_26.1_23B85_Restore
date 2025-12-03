@interface TPHashBuilder
+ (id)hashWithAlgo:(int64_t)algo ofBytes:(const void *)bytes len:(unint64_t)len;
+ (id)hashWithAlgo:(int64_t)algo ofData:(id)data;
+ (id)keyedHashWithAlgo:(int64_t)algo key:(id)key data:(id)data;
+ (int64_t)algoOfHash:(id)hash;
- (CC_SHA256state_st)ctxSHA256;
- (CC_SHA512state_st)ctxSHA512;
- (TPHashBuilder)init;
- (TPHashBuilder)initWithAlgo:(int64_t)algo;
- (TPHashBuilder)initWithKeyedAlgo:(int64_t)algo key:(id)key;
- (id)finalHash;
- (id)finalKeyedHash;
- (void)resetWithAlgo:(int64_t)algo;
- (void)setCtxSHA256:(CC_SHA256state_st *)a256;
- (void)setCtxSHA512:(CC_SHA512state_st *)a512;
- (void)throwInvalidAlgo;
- (void)updateWithBytes:(const void *)bytes len:(unint64_t)len;
- (void)updateWithData:(id)data;
@end

@implementation TPHashBuilder

- (void)setCtxSHA512:(CC_SHA512state_st *)a512
{
  *self->_ctxSHA512.count = *a512->count;
  v3 = *a512->hash;
  v4 = *&a512->hash[2];
  v5 = *&a512->hash[6];
  *&self->_ctxSHA512.hash[4] = *&a512->hash[4];
  *&self->_ctxSHA512.hash[6] = v5;
  *self->_ctxSHA512.hash = v3;
  *&self->_ctxSHA512.hash[2] = v4;
  v6 = *a512->wbuf;
  v7 = *&a512->wbuf[2];
  v8 = *&a512->wbuf[6];
  *&self->_ctxSHA512.wbuf[4] = *&a512->wbuf[4];
  *&self->_ctxSHA512.wbuf[6] = v8;
  *self->_ctxSHA512.wbuf = v6;
  *&self->_ctxSHA512.wbuf[2] = v7;
  v9 = *&a512->wbuf[8];
  v10 = *&a512->wbuf[10];
  v11 = *&a512->wbuf[14];
  *&self->_ctxSHA512.wbuf[12] = *&a512->wbuf[12];
  *&self->_ctxSHA512.wbuf[14] = v11;
  *&self->_ctxSHA512.wbuf[8] = v9;
  *&self->_ctxSHA512.wbuf[10] = v10;
}

- (CC_SHA512state_st)ctxSHA512
{
  v3 = *&self[1].wbuf[2];
  *&retstr->wbuf[10] = *self[1].wbuf;
  *&retstr->wbuf[12] = v3;
  *&retstr->wbuf[14] = *&self[1].wbuf[4];
  v4 = *&self[1].hash[2];
  *&retstr->wbuf[2] = *self[1].hash;
  *&retstr->wbuf[4] = v4;
  v5 = *&self[1].hash[6];
  *&retstr->wbuf[6] = *&self[1].hash[4];
  *&retstr->wbuf[8] = v5;
  v6 = *&self->wbuf[12];
  *&retstr->hash[2] = *&self->wbuf[10];
  *&retstr->hash[4] = v6;
  v7 = *self[1].count;
  *&retstr->hash[6] = *&self->wbuf[14];
  *retstr->wbuf = v7;
  v8 = *&self->wbuf[8];
  *retstr->count = *&self->wbuf[6];
  *retstr->hash = v8;
  return self;
}

- (void)setCtxSHA256:(CC_SHA256state_st *)a256
{
  v3 = *a256->count;
  v4 = *&a256->hash[2];
  *&self->_ctxSHA256.hash[6] = *&a256->hash[6];
  *&self->_ctxSHA256.hash[2] = v4;
  *self->_ctxSHA256.count = v3;
  v5 = *&a256->wbuf[2];
  v6 = *&a256->wbuf[6];
  v7 = *&a256->wbuf[10];
  *&self->_ctxSHA256.wbuf[14] = *&a256->wbuf[14];
  *&self->_ctxSHA256.wbuf[10] = v7;
  *&self->_ctxSHA256.wbuf[6] = v6;
  *&self->_ctxSHA256.wbuf[2] = v5;
}

- (CC_SHA256state_st)ctxSHA256
{
  v3 = *&self->wbuf[8];
  v4 = *self[1].count;
  *&retstr->wbuf[6] = *&self->wbuf[12];
  *&retstr->wbuf[10] = v4;
  *&retstr->wbuf[14] = *&self[1].hash[2];
  v5 = *self->wbuf;
  *retstr->count = *&self->hash[4];
  *&retstr->hash[2] = v5;
  *&retstr->hash[6] = *&self->wbuf[4];
  *&retstr->wbuf[2] = v3;
  return self;
}

- (void)throwInvalidAlgo
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:@"InvalidTPHashAlgo" reason:@"Invalid TPHash algorithm" userInfo:0];
  objc_exception_throw(v2);
}

- (id)finalKeyedHash
{
  v3 = objc_alloc(MEMORY[0x277CBEB28]);
  if ([(TPHashBuilder *)self algo]== 4)
  {
    v3 = [v3 initWithLength:32];
    CCHmacFinal(&self->_ctxHMAC, [v3 mutableBytes]);
  }

  else
  {
    [(TPHashBuilder *)self throwInvalidAlgo];
  }

  [(TPHashBuilder *)self setAlgo:-1];

  return v3;
}

- (id)finalHash
{
  v3 = objc_alloc(MEMORY[0x277CBEB28]);
  algo = [(TPHashBuilder *)self algo];
  if (algo > 1)
  {
    if (algo != 2)
    {
      if (algo == 3)
      {
        v3 = [v3 initWithLength:64];
        CC_SHA512_Final([v3 mutableBytes], &self->_ctxSHA512);
        v5 = @"SHA512";
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v3 = [v3 initWithLength:48];
    CC_SHA384_Final([v3 mutableBytes], &self->_ctxSHA512);
    v5 = @"SHA384";
  }

  else
  {
    if (algo)
    {
      if (algo == 1)
      {
        v3 = [v3 initWithLength:32];
        CC_SHA256_Final([v3 mutableBytes], &self->_ctxSHA256);
        v5 = @"SHA256";
        goto LABEL_11;
      }

LABEL_8:
      [(TPHashBuilder *)self throwInvalidAlgo];
      v5 = 0;
      goto LABEL_11;
    }

    v3 = [v3 initWithLength:28];
    CC_SHA224_Final([v3 mutableBytes], &self->_ctxSHA256);
    v5 = @"SHA224";
  }

LABEL_11:
  v6 = MEMORY[0x277CCACA8];
  v7 = [v3 base64EncodedStringWithOptions:0];
  v8 = [v6 stringWithFormat:@"%@:%@", v5, v7];

  [(TPHashBuilder *)self setAlgo:-1];

  return v8;
}

- (void)updateWithBytes:(const void *)bytes len:(unint64_t)len
{
  lenCopy = len;
  algo = [(TPHashBuilder *)self algo];
  if (algo <= 1)
  {
    if (algo)
    {
      if (algo != 1)
      {
LABEL_22:

        [(TPHashBuilder *)self throwInvalidAlgo];
        return;
      }

      CC_SHA256_Update(&self->_ctxSHA256, bytes, lenCopy);
    }

    else
    {

      CC_SHA224_Update(&self->_ctxSHA256, bytes, lenCopy);
    }
  }

  else
  {
    switch(algo)
    {
      case 2:

        CC_SHA384_Update(&self->_ctxSHA512, bytes, lenCopy);
        break;
      case 3:

        CC_SHA512_Update(&self->_ctxSHA512, bytes, lenCopy);
        break;
      case 4:

        CCHmacUpdate(&self->_ctxHMAC, bytes, lenCopy);
        return;
      default:
        goto LABEL_22;
    }
  }
}

- (void)updateWithData:(id)data
{
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v8 = [dataCopy2 length];

  [(TPHashBuilder *)self updateWithBytes:bytes len:v8];
}

- (void)resetWithAlgo:(int64_t)algo
{
  self->_algo = algo;
  if (algo > 1)
  {
    if (algo == 2)
    {
      CC_SHA384_Init(&self->_ctxSHA512);
      goto LABEL_13;
    }

    if (algo == 3)
    {
      CC_SHA512_Init(&self->_ctxSHA512);
      goto LABEL_13;
    }
  }

  else
  {
    if (!algo)
    {
      CC_SHA224_Init(&self->_ctxSHA256);
      goto LABEL_13;
    }

    if (algo == 1)
    {
      CC_SHA256_Init(&self->_ctxSHA256);
LABEL_13:
      self->_keyed = 0;
      return;
    }
  }

  [(TPHashBuilder *)self throwInvalidAlgo];
}

- (TPHashBuilder)initWithKeyedAlgo:(int64_t)algo key:(id)key
{
  keyCopy = key;
  v7 = [(TPHashBuilder *)self init];
  v8 = v7;
  v7->_algo = algo;
  if (algo == 4)
  {
    CCHmacInit(&v7->_ctxHMAC, 2u, [keyCopy bytes], objc_msgSend(keyCopy, "length"));
    v8->_keyed = 1;
  }

  else
  {
    [(TPHashBuilder *)v7 throwInvalidAlgo];
  }

  return v8;
}

- (TPHashBuilder)initWithAlgo:(int64_t)algo
{
  v4 = [(TPHashBuilder *)self init];
  [(TPHashBuilder *)v4 resetWithAlgo:algo];
  return v4;
}

- (TPHashBuilder)init
{
  v3.receiver = self;
  v3.super_class = TPHashBuilder;
  result = [(TPHashBuilder *)&v3 init];
  if (result)
  {
    result->_algo = -1;
    result->_keyed = 0;
  }

  return result;
}

+ (id)keyedHashWithAlgo:(int64_t)algo key:(id)key data:(id)data
{
  dataCopy = data;
  keyCopy = key;
  v9 = [[TPHashBuilder alloc] initWithKeyedAlgo:algo key:keyCopy];

  [(TPHashBuilder *)v9 updateWithData:dataCopy];
  finalKeyedHash = [(TPHashBuilder *)v9 finalKeyedHash];

  return finalKeyedHash;
}

+ (id)hashWithAlgo:(int64_t)algo ofBytes:(const void *)bytes len:(unint64_t)len
{
  v7 = [[TPHashBuilder alloc] initWithAlgo:algo];
  [(TPHashBuilder *)v7 updateWithBytes:bytes len:len];
  finalHash = [(TPHashBuilder *)v7 finalHash];

  return finalHash;
}

+ (id)hashWithAlgo:(int64_t)algo ofData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v7 = [dataCopy length];

  return [TPHashBuilder hashWithAlgo:algo ofBytes:bytes len:v7];
}

+ (int64_t)algoOfHash:(id)hash
{
  hashCopy = hash;
  if ([hashCopy hasPrefix:@"SHA224:"])
  {
    v4 = 0;
  }

  else if ([hashCopy hasPrefix:@"SHA256:"])
  {
    v4 = 1;
  }

  else if ([hashCopy hasPrefix:@"SHA384:"])
  {
    v4 = 2;
  }

  else if ([hashCopy hasPrefix:@"SHA512:"])
  {
    v4 = 3;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

@end