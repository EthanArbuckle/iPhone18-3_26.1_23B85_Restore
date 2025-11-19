@interface SFUCryptoKey
- (id)initAes128Key:(const char *)a3 length:(unsigned int)a4 iterationCount:(unsigned int)a5;
- (id)initAes128KeyFromPassphrase:(const char *)a3 length:(unsigned int)a4 iterationCount:(unsigned int)a5 saltData:(id)a6;
- (id)initAes128KeyFromPassphrase:(id)a3 iterationCount:(unsigned int)a4;
- (id)initAes128KeyFromPassphrase:(id)a3 iterationCount:(unsigned int)a4 saltData:(id)a5;
- (id)initAes128KeyFromPassphrase:(id)a3 withIterationCountAndSaltDataFromCryptoKey:(id)a4;
- (void)dealloc;
@end

@implementation SFUCryptoKey

- (id)initAes128KeyFromPassphrase:(id)a3 iterationCount:(unsigned int)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = *&a4;
  v6 = [a3 UTF8String];
  v7 = strlen(v6);
  v8 = [SFUCryptoUtils generateRandomSaltWithLength:16];

  return [(SFUCryptoKey *)self initAes128KeyFromPassphrase:v6 length:v7 iterationCount:v4 saltData:v8];
}

- (id)initAes128KeyFromPassphrase:(id)a3 withIterationCountAndSaltDataFromCryptoKey:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = [a3 UTF8String];
  v7 = strlen(v6);
  v8 = [a4 iterationCount];
  v9 = [a4 saltData];

  return [(SFUCryptoKey *)self initAes128KeyFromPassphrase:v6 length:v7 iterationCount:v8 saltData:v9];
}

- (id)initAes128KeyFromPassphrase:(id)a3 iterationCount:(unsigned int)a4 saltData:(id)a5
{
  if (!a3)
  {
    return 0;
  }

  v6 = *&a4;
  v9 = [a3 UTF8String];
  v10 = strlen([a3 UTF8String]);

  return [(SFUCryptoKey *)self initAes128KeyFromPassphrase:v9 length:v10 iterationCount:v6 saltData:a5];
}

- (id)initAes128KeyFromPassphrase:(const char *)a3 length:(unsigned int)a4 iterationCount:(unsigned int)a5 saltData:(id)a6
{
  v14.receiver = self;
  v14.super_class = SFUCryptoKey;
  v10 = [(SFUCryptoKey *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->mIterationCount = a5;
    v10->mKeyLength = 16;
    v10->mKey = malloc_type_calloc(1uLL, 0x10uLL, 0x100004077774924uLL);
    v11->_passphrase = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 length:a4 encoding:4];
    v12 = [a6 copy];
    v11->mSaltData = v12;
    if ((SFUDeriveAes128Key(a3, a4, v11->mIterationCount, v11->mKey, v11->mKeyLength, [(NSData *)v12 bytes], [(NSData *)v11->mSaltData length]) & 1) == 0)
    {

      return 0;
    }
  }

  return v11;
}

- (id)initAes128Key:(const char *)a3 length:(unsigned int)a4 iterationCount:(unsigned int)a5
{
  v12.receiver = self;
  v12.super_class = SFUCryptoKey;
  v8 = [(SFUCryptoKey *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->mIterationCount = a5;
    v8->mKeyLength = 16;
    v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x100004077774924uLL);
    v9->mKey = v10;
    memcpy(v10, a3, v9->mKeyLength);
    if (v9->mKeyLength != a4)
    {

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  mKey = self->mKey;
  if (mKey)
  {
    free(mKey);
    self->mKey = 0;
  }

  v4.receiver = self;
  v4.super_class = SFUCryptoKey;
  [(SFUCryptoKey *)&v4 dealloc];
}

@end