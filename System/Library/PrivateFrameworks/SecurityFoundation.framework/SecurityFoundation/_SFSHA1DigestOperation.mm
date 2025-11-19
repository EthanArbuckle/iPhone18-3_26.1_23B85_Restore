@interface _SFSHA1DigestOperation
+ (id)digest:(id)a3;
- (NSData)hashValue;
- (_SFSHA1DigestOperation)init;
- (_SFSHA1DigestOperation)initWithCoder:(id)a3;
- (void)addData:(id)a3;
@end

@implementation _SFSHA1DigestOperation

+ (id)digest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SFSHA1DigestOperation);
  [(_SFSHA1DigestOperation *)v4 addData:v3];

  v5 = [(_SFSHA1DigestOperation *)v4 hashValue];

  return v5;
}

- (_SFSHA1DigestOperation)init
{
  v6.receiver = self;
  v6.super_class = _SFSHA1DigestOperation;
  v2 = [(_SFSHA1DigestOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SFSHA1DigestOperation_Ivars);
    sha1DigestOperationInternal = v2->_sha1DigestOperationInternal;
    v2->_sha1DigestOperationInternal = v3;

    CC_SHA1_Init((v2->_sha1DigestOperationInternal + 8));
  }

  return v2;
}

- (_SFSHA1DigestOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFSHA1DigestOperation;
  return [(_SFSHA1DigestOperation *)&v4 init];
}

- (NSData)hashValue
{
  v12 = *MEMORY[0x277D85DE8];
  sha1DigestOperationInternal = self->_sha1DigestOperationInternal;
  v3 = *(sha1DigestOperationInternal + 24);
  *&v10.h0 = *(sha1DigestOperationInternal + 8);
  *&v10.h4 = v3;
  v4 = *(sha1DigestOperationInternal + 56);
  v5 = *(sha1DigestOperationInternal + 88);
  v6 = *(sha1DigestOperationInternal + 40);
  *&v10.data[9] = *(sha1DigestOperationInternal + 72);
  *&v10.data[13] = v5;
  *&v10.data[1] = v6;
  *&v10.data[5] = v4;
  CC_SHA1_Final(md, &v10);
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:md length:20];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)addData:(id)a3
{
  sha1DigestOperationInternal = self->_sha1DigestOperationInternal;
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  CC_SHA1_Update((sha1DigestOperationInternal + 8), v7, v8);
}

@end