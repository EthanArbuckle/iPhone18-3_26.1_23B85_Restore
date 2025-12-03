@interface _SFMD5DigestOperation
+ (id)digest:(id)digest;
- (NSData)hashValue;
- (_SFMD5DigestOperation)init;
- (_SFMD5DigestOperation)initWithCoder:(id)coder;
- (void)addData:(id)data;
@end

@implementation _SFMD5DigestOperation

+ (id)digest:(id)digest
{
  digestCopy = digest;
  v4 = objc_alloc_init(_SFMD5DigestOperation);
  [(_SFMD5DigestOperation *)v4 addData:digestCopy];

  hashValue = [(_SFMD5DigestOperation *)v4 hashValue];

  return hashValue;
}

- (_SFMD5DigestOperation)init
{
  v6.receiver = self;
  v6.super_class = _SFMD5DigestOperation;
  v2 = [(_SFMD5DigestOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SFMD5DigestOperation_Ivars);
    md5DigestOperationInternal = v2->_md5DigestOperationInternal;
    v2->_md5DigestOperationInternal = v3;

    CC_MD5_Init((v2->_md5DigestOperationInternal + 8));
  }

  return v2;
}

- (_SFMD5DigestOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _SFMD5DigestOperation;
  return [(_SFMD5DigestOperation *)&v4 init];
}

- (NSData)hashValue
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v5, 0, sizeof(v5));
  CC_MD5_Final(md, &v5);
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:md length:16];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)addData:(id)data
{
  md5DigestOperationInternal = self->_md5DigestOperationInternal;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v8 = [dataCopy2 length];

  CC_MD5_Update((md5DigestOperationInternal + 8), bytes, v8);
}

@end