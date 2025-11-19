@interface _SFSHA224DigestOperation
+ (id)digest:(id)a3;
- (NSData)hashValue;
- (_SFSHA224DigestOperation)init;
- (_SFSHA224DigestOperation)initWithCoder:(id)a3;
- (void)addData:(id)a3;
@end

@implementation _SFSHA224DigestOperation

+ (id)digest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SFSHA224DigestOperation);
  [(_SFSHA224DigestOperation *)v4 addData:v3];

  v5 = [(_SFSHA224DigestOperation *)v4 hashValue];

  return v5;
}

- (_SFSHA224DigestOperation)init
{
  v6.receiver = self;
  v6.super_class = _SFSHA224DigestOperation;
  v2 = [(_SFSHA224DigestOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SFSHA224DigestOperation_Ivars);
    sha224DigestOperationInternal = v2->_sha224DigestOperationInternal;
    v2->_sha224DigestOperationInternal = v3;

    CC_SHA224_Init((v2->_sha224DigestOperationInternal + 8));
  }

  return v2;
}

- (_SFSHA224DigestOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFSHA224DigestOperation;
  return [(_SFSHA224DigestOperation *)&v4 init];
}

- (NSData)hashValue
{
  v13 = *MEMORY[0x277D85DE8];
  sha224DigestOperationInternal = self->_sha224DigestOperationInternal;
  v3 = *(sha224DigestOperationInternal + 40);
  v4 = *(sha224DigestOperationInternal + 24);
  *v11.count = *(sha224DigestOperationInternal + 8);
  *&v11.hash[2] = v4;
  *&v11.hash[6] = v3;
  v5 = *(sha224DigestOperationInternal + 56);
  v6 = *(sha224DigestOperationInternal + 72);
  v7 = *(sha224DigestOperationInternal + 88);
  *&v11.wbuf[14] = *(sha224DigestOperationInternal + 13);
  *&v11.wbuf[6] = v6;
  *&v11.wbuf[10] = v7;
  *&v11.wbuf[2] = v5;
  CC_SHA224_Final(md, &v11);
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:md length:28];
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)addData:(id)a3
{
  sha224DigestOperationInternal = self->_sha224DigestOperationInternal;
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  CC_SHA224_Update((sha224DigestOperationInternal + 8), v7, v8);
}

@end