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

  v5 = [a3 UTF8String];
  if (!v5)
  {
    return 0;
  }

  strlen(v5);
  [SFUCryptoUtils generateRandomSaltWithLength:16];

  return MEMORY[0x2821F9670](self, sel_initAes128KeyFromPassphrase_length_iterationCount_saltData_);
}

- (id)initAes128KeyFromPassphrase:(id)a3 withIterationCountAndSaltDataFromCryptoKey:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  strlen([a3 UTF8String]);
  [a4 iterationCount];
  [a4 saltData];

  return MEMORY[0x2821F9670](self, sel_initAes128KeyFromPassphrase_length_iterationCount_saltData_);
}

- (id)initAes128KeyFromPassphrase:(id)a3 iterationCount:(unsigned int)a4 saltData:(id)a5
{
  if (!a3)
  {
    return 0;
  }

  [a3 UTF8String];
  strlen([a3 UTF8String]);

  return MEMORY[0x2821F9670](self, sel_initAes128KeyFromPassphrase_length_iterationCount_saltData_);
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
    if ((sub_27709A804(a3, a4, v11->mIterationCount, v11->mKey, v11->mKeyLength, [(NSData *)v12 bytes], [(NSData *)v11->mSaltData length]) & 1) == 0)
    {

      return 0;
    }
  }

  return v11;
}

- (id)initAes128Key:(const char *)a3 length:(unsigned int)a4 iterationCount:(unsigned int)a5
{
  v10.receiver = self;
  v10.super_class = SFUCryptoKey;
  v7 = [(SFUCryptoKey *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->mIterationCount = a5;
    v7->mKeyLength = 16;
    if (a4 == 16)
    {
      v7->mKey = malloc_type_calloc(1uLL, 0x10uLL, 0x100004077774924uLL);
      __memcpy_chk();
    }

    else
    {

      return 0;
    }
  }

  return v8;
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