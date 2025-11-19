@interface TPHashBuilder
+ (id)hashWithAlgo:(int64_t)a3 ofBytes:(const void *)a4 len:(unint64_t)a5;
+ (id)hashWithAlgo:(int64_t)a3 ofData:(id)a4;
+ (id)keyedHashWithAlgo:(int64_t)a3 key:(id)a4 data:(id)a5;
+ (int64_t)algoOfHash:(id)a3;
- (CC_SHA256state_st)ctxSHA256;
- (CC_SHA512state_st)ctxSHA512;
- (TPHashBuilder)init;
- (TPHashBuilder)initWithAlgo:(int64_t)a3;
- (TPHashBuilder)initWithKeyedAlgo:(int64_t)a3 key:(id)a4;
- (id)finalHash;
- (id)finalKeyedHash;
- (void)resetWithAlgo:(int64_t)a3;
- (void)setCtxSHA256:(CC_SHA256state_st *)a3;
- (void)setCtxSHA512:(CC_SHA512state_st *)a3;
- (void)throwInvalidAlgo;
- (void)updateWithBytes:(const void *)a3 len:(unint64_t)a4;
- (void)updateWithData:(id)a3;
@end

@implementation TPHashBuilder

- (void)setCtxSHA512:(CC_SHA512state_st *)a3
{
  *self->_ctxSHA512.count = *a3->count;
  v3 = *a3->hash;
  v4 = *&a3->hash[2];
  v5 = *&a3->hash[6];
  *&self->_ctxSHA512.hash[4] = *&a3->hash[4];
  *&self->_ctxSHA512.hash[6] = v5;
  *self->_ctxSHA512.hash = v3;
  *&self->_ctxSHA512.hash[2] = v4;
  v6 = *a3->wbuf;
  v7 = *&a3->wbuf[2];
  v8 = *&a3->wbuf[6];
  *&self->_ctxSHA512.wbuf[4] = *&a3->wbuf[4];
  *&self->_ctxSHA512.wbuf[6] = v8;
  *self->_ctxSHA512.wbuf = v6;
  *&self->_ctxSHA512.wbuf[2] = v7;
  v9 = *&a3->wbuf[8];
  v10 = *&a3->wbuf[10];
  v11 = *&a3->wbuf[14];
  *&self->_ctxSHA512.wbuf[12] = *&a3->wbuf[12];
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

- (void)setCtxSHA256:(CC_SHA256state_st *)a3
{
  v3 = *a3->count;
  v4 = *&a3->hash[2];
  *&self->_ctxSHA256.hash[6] = *&a3->hash[6];
  *&self->_ctxSHA256.hash[2] = v4;
  *self->_ctxSHA256.count = v3;
  v5 = *&a3->wbuf[2];
  v6 = *&a3->wbuf[6];
  v7 = *&a3->wbuf[10];
  *&self->_ctxSHA256.wbuf[14] = *&a3->wbuf[14];
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
  v4 = [(TPHashBuilder *)self algo];
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
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
    if (v4)
    {
      if (v4 == 1)
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

- (void)updateWithBytes:(const void *)a3 len:(unint64_t)a4
{
  v4 = a4;
  v7 = [(TPHashBuilder *)self algo];
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
LABEL_22:

        [(TPHashBuilder *)self throwInvalidAlgo];
        return;
      }

      CC_SHA256_Update(&self->_ctxSHA256, a3, v4);
    }

    else
    {

      CC_SHA224_Update(&self->_ctxSHA256, a3, v4);
    }
  }

  else
  {
    switch(v7)
    {
      case 2:

        CC_SHA384_Update(&self->_ctxSHA512, a3, v4);
        break;
      case 3:

        CC_SHA512_Update(&self->_ctxSHA512, a3, v4);
        break;
      case 4:

        CCHmacUpdate(&self->_ctxHMAC, a3, v4);
        return;
      default:
        goto LABEL_22;
    }
  }
}

- (void)updateWithData:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  [(TPHashBuilder *)self updateWithBytes:v7 len:v8];
}

- (void)resetWithAlgo:(int64_t)a3
{
  self->_algo = a3;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      CC_SHA384_Init(&self->_ctxSHA512);
      goto LABEL_13;
    }

    if (a3 == 3)
    {
      CC_SHA512_Init(&self->_ctxSHA512);
      goto LABEL_13;
    }
  }

  else
  {
    if (!a3)
    {
      CC_SHA224_Init(&self->_ctxSHA256);
      goto LABEL_13;
    }

    if (a3 == 1)
    {
      CC_SHA256_Init(&self->_ctxSHA256);
LABEL_13:
      self->_keyed = 0;
      return;
    }
  }

  [(TPHashBuilder *)self throwInvalidAlgo];
}

- (TPHashBuilder)initWithKeyedAlgo:(int64_t)a3 key:(id)a4
{
  v6 = a4;
  v7 = [(TPHashBuilder *)self init];
  v8 = v7;
  v7->_algo = a3;
  if (a3 == 4)
  {
    CCHmacInit(&v7->_ctxHMAC, 2u, [v6 bytes], objc_msgSend(v6, "length"));
    v8->_keyed = 1;
  }

  else
  {
    [(TPHashBuilder *)v7 throwInvalidAlgo];
  }

  return v8;
}

- (TPHashBuilder)initWithAlgo:(int64_t)a3
{
  v4 = [(TPHashBuilder *)self init];
  [(TPHashBuilder *)v4 resetWithAlgo:a3];
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

+ (id)keyedHashWithAlgo:(int64_t)a3 key:(id)a4 data:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[TPHashBuilder alloc] initWithKeyedAlgo:a3 key:v8];

  [(TPHashBuilder *)v9 updateWithData:v7];
  v10 = [(TPHashBuilder *)v9 finalKeyedHash];

  return v10;
}

+ (id)hashWithAlgo:(int64_t)a3 ofBytes:(const void *)a4 len:(unint64_t)a5
{
  v7 = [[TPHashBuilder alloc] initWithAlgo:a3];
  [(TPHashBuilder *)v7 updateWithBytes:a4 len:a5];
  v8 = [(TPHashBuilder *)v7 finalHash];

  return v8;
}

+ (id)hashWithAlgo:(int64_t)a3 ofData:(id)a4
{
  v5 = a4;
  v6 = [v5 bytes];
  v7 = [v5 length];

  return [TPHashBuilder hashWithAlgo:a3 ofBytes:v6 len:v7];
}

+ (int64_t)algoOfHash:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"SHA224:"])
  {
    v4 = 0;
  }

  else if ([v3 hasPrefix:@"SHA256:"])
  {
    v4 = 1;
  }

  else if ([v3 hasPrefix:@"SHA384:"])
  {
    v4 = 2;
  }

  else if ([v3 hasPrefix:@"SHA512:"])
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