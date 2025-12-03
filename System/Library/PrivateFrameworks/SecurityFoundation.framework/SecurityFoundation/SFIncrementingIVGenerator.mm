@interface SFIncrementingIVGenerator
- (NSData)messageID;
- (SFIncrementingIVGenerator)initWithMessageID:(id)d;
- (SFIncrementingIVGenerator)initWithRandomMessageID;
- (id)generateIVWithLength:(int64_t)length error:(id *)error;
- (void)setMessageID:(id)d;
@end

@implementation SFIncrementingIVGenerator

- (SFIncrementingIVGenerator)initWithRandomMessageID
{
  v3 = [MEMORY[0x277CBEB28] dataWithCapacity:32];
  [v3 setLength:32];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, [v3 mutableBytes]))
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"could not get a random initialization vector" userInfo:0];
    objc_exception_throw(v6);
  }

  v4 = [(SFIncrementingIVGenerator *)self initWithMessageID:v3];

  return v4;
}

- (SFIncrementingIVGenerator)initWithMessageID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = SFIncrementingIVGenerator;
  v5 = [(SFIncrementingIVGenerator *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(SFIncrementingIVGenerator_Ivars);
    incrementingIVGeneratorInternal = v5->_incrementingIVGeneratorInternal;
    v5->_incrementingIVGeneratorInternal = v6;

    v8 = [dCopy mutableCopy];
    v9 = v5->_incrementingIVGeneratorInternal;
    v10 = v9[1];
    v9[1] = v8;
  }

  return v5;
}

- (NSData)messageID
{
  v2 = [*(self->_incrementingIVGeneratorInternal + 1) copy];

  return v2;
}

- (void)setMessageID:(id)d
{
  v4 = [d copy];
  incrementingIVGeneratorInternal = self->_incrementingIVGeneratorInternal;
  v6 = incrementingIVGeneratorInternal[1];
  incrementingIVGeneratorInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

- (id)generateIVWithLength:(int64_t)length error:(id *)error
{
  incrementingIVGeneratorInternal = self->_incrementingIVGeneratorInternal;
  if (*(incrementingIVGeneratorInternal + 2) >= length)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:6 userInfo:0];
    incrementingIVGeneratorInternal = self->_incrementingIVGeneratorInternal;
  }

  else
  {
    v8 = 0;
  }

  if (length - 1 >= [*(incrementingIVGeneratorInternal + 1) length])
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:7 userInfo:0];

    v8 = v9;
  }

  if (error && v8)
  {
    v10 = v8;
    v11 = 0;
    *error = v8;
  }

  else
  {
    v11 = [*(self->_incrementingIVGeneratorInternal + 1) subdataWithRange:{objc_msgSend(*(self->_incrementingIVGeneratorInternal + 1), "length") - length, length}];
    v13 = [*(self->_incrementingIVGeneratorInternal + 1) length];
    mutableBytes = [*(self->_incrementingIVGeneratorInternal + 1) mutableBytes];
    v15 = (*(mutableBytes + v13 - 1))++ + 1;
    if ((v15 & 0x100) != 0 && v13 != 1)
    {
      v16 = 1 - v13;
      v17 = (v13 + mutableBytes - 2);
      do
      {
        v18 = [*(self->_incrementingIVGeneratorInternal + 1) length] + v16;
        v19 = self->_incrementingIVGeneratorInternal;
        if (v18 <= v19[2])
        {
          v18 = v19[2];
        }

        v19[2] = v18;
        v20 = (*v17--)++ + 1;
        if ((v20 & 0x100) == 0)
        {
          break;
        }

        ++v16;
      }

      while (v16);
    }
  }

  return v11;
}

@end