@interface _SFMD5DigestOperation
+ (id)digest:(id)a3;
- (NSData)hashValue;
- (_SFMD5DigestOperation)init;
- (_SFMD5DigestOperation)initWithCoder:(id)a3;
- (void)addData:(id)a3;
@end

@implementation _SFMD5DigestOperation

+ (id)digest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SFMD5DigestOperation);
  [(_SFMD5DigestOperation *)v4 addData:v3];

  v5 = [(_SFMD5DigestOperation *)v4 hashValue];

  return v5;
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

- (_SFMD5DigestOperation)initWithCoder:(id)a3
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

- (void)addData:(id)a3
{
  md5DigestOperationInternal = self->_md5DigestOperationInternal;
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  CC_MD5_Update((md5DigestOperationInternal + 8), v7, v8);
}

@end