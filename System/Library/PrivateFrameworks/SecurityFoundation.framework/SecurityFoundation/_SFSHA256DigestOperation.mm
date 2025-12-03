@interface _SFSHA256DigestOperation
+ (id)digest:(id)digest;
- (NSData)hashValue;
- (_SFSHA256DigestOperation)init;
- (_SFSHA256DigestOperation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addData:(id)data;
@end

@implementation _SFSHA256DigestOperation

+ (id)digest:(id)digest
{
  digestCopy = digest;
  v4 = objc_alloc_init(_SFSHA256DigestOperation);
  [(_SFSHA256DigestOperation *)v4 addData:digestCopy];

  hashValue = [(_SFSHA256DigestOperation *)v4 hashValue];

  return hashValue;
}

- (_SFSHA256DigestOperation)init
{
  v6.receiver = self;
  v6.super_class = _SFSHA256DigestOperation;
  v2 = [(_SFSHA256DigestOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SFSHA256DigestOperation_Ivars);
    sha256DigestOperationInternal = v2->_sha256DigestOperationInternal;
    v2->_sha256DigestOperationInternal = v3;

    CC_SHA256_Init((v2->_sha256DigestOperationInternal + 8));
  }

  return v2;
}

- (_SFSHA256DigestOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _SFSHA256DigestOperation;
  return [(_SFSHA256DigestOperation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (NSData)hashValue
{
  v13 = *MEMORY[0x277D85DE8];
  sha256DigestOperationInternal = self->_sha256DigestOperationInternal;
  v3 = *(sha256DigestOperationInternal + 40);
  v4 = *(sha256DigestOperationInternal + 24);
  *v11.count = *(sha256DigestOperationInternal + 8);
  *&v11.hash[2] = v4;
  *&v11.hash[6] = v3;
  v5 = *(sha256DigestOperationInternal + 56);
  v6 = *(sha256DigestOperationInternal + 72);
  v7 = *(sha256DigestOperationInternal + 88);
  *&v11.wbuf[14] = *(sha256DigestOperationInternal + 13);
  *&v11.wbuf[6] = v6;
  *&v11.wbuf[10] = v7;
  *&v11.wbuf[2] = v5;
  CC_SHA256_Final(md, &v11);
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)addData:(id)data
{
  sha256DigestOperationInternal = self->_sha256DigestOperationInternal;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v8 = [dataCopy2 length];

  CC_SHA256_Update((sha256DigestOperationInternal + 8), bytes, v8);
}

@end