@interface _SFSHA512DigestOperation
+ (id)digest:(id)a3;
- (NSData)hashValue;
- (_SFSHA512DigestOperation)init;
- (_SFSHA512DigestOperation)initWithCoder:(id)a3;
- (void)addData:(id)a3;
@end

@implementation _SFSHA512DigestOperation

+ (id)digest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SFSHA512DigestOperation);
  [(_SFSHA512DigestOperation *)v4 addData:v3];

  v5 = [(_SFSHA512DigestOperation *)v4 hashValue];

  return v5;
}

- (_SFSHA512DigestOperation)init
{
  v6.receiver = self;
  v6.super_class = _SFSHA512DigestOperation;
  v2 = [(_SFSHA512DigestOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SFSHA512DigestOperation_Ivars);
    sha512DigestOperationInternal = v2->_sha512DigestOperationInternal;
    v2->_sha512DigestOperationInternal = v3;

    CC_SHA512_Init((v2->_sha512DigestOperationInternal + 8));
  }

  return v2;
}

- (_SFSHA512DigestOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFSHA512DigestOperation;
  return [(_SFSHA512DigestOperation *)&v4 init];
}

- (NSData)hashValue
{
  v17 = *MEMORY[0x277D85DE8];
  sha512DigestOperationInternal = self->_sha512DigestOperationInternal;
  *v15.count = *(sha512DigestOperationInternal + 8);
  v3 = *(sha512DigestOperationInternal + 40);
  v4 = *(sha512DigestOperationInternal + 72);
  v5 = *(sha512DigestOperationInternal + 24);
  *&v15.hash[4] = *(sha512DigestOperationInternal + 56);
  *&v15.hash[6] = v4;
  *v15.hash = v5;
  *&v15.hash[2] = v3;
  v6 = *(sha512DigestOperationInternal + 104);
  v7 = *(sha512DigestOperationInternal + 136);
  v8 = *(sha512DigestOperationInternal + 88);
  *&v15.wbuf[4] = *(sha512DigestOperationInternal + 120);
  *&v15.wbuf[6] = v7;
  *v15.wbuf = v8;
  *&v15.wbuf[2] = v6;
  v9 = *(sha512DigestOperationInternal + 168);
  v10 = *(sha512DigestOperationInternal + 200);
  v11 = *(sha512DigestOperationInternal + 152);
  *&v15.wbuf[12] = *(sha512DigestOperationInternal + 184);
  *&v15.wbuf[14] = v10;
  *&v15.wbuf[8] = v11;
  *&v15.wbuf[10] = v9;
  CC_SHA512_Final(md, &v15);
  v12 = [MEMORY[0x277CBEA90] dataWithBytes:md length:64];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)addData:(id)a3
{
  sha512DigestOperationInternal = self->_sha512DigestOperationInternal;
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  CC_SHA512_Update((sha512DigestOperationInternal + 8), v7, v8);
}

@end