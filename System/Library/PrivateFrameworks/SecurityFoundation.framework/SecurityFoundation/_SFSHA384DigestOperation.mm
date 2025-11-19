@interface _SFSHA384DigestOperation
+ (id)digest:(id)a3;
- (NSData)hashValue;
- (_SFSHA384DigestOperation)init;
- (_SFSHA384DigestOperation)initWithCoder:(id)a3;
- (void)addData:(id)a3;
@end

@implementation _SFSHA384DigestOperation

+ (id)digest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SFSHA384DigestOperation);
  [(_SFSHA384DigestOperation *)v4 addData:v3];

  v5 = [(_SFSHA384DigestOperation *)v4 hashValue];

  return v5;
}

- (_SFSHA384DigestOperation)init
{
  v6.receiver = self;
  v6.super_class = _SFSHA384DigestOperation;
  v2 = [(_SFSHA384DigestOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SFSHA384DigestOperation_Ivars);
    sha384DigestOperationInternal = v2->_sha384DigestOperationInternal;
    v2->_sha384DigestOperationInternal = v3;

    CC_SHA384_Init((v2->_sha384DigestOperationInternal + 8));
  }

  return v2;
}

- (_SFSHA384DigestOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFSHA384DigestOperation;
  return [(_SFSHA384DigestOperation *)&v4 init];
}

- (NSData)hashValue
{
  v17 = *MEMORY[0x277D85DE8];
  sha384DigestOperationInternal = self->_sha384DigestOperationInternal;
  *v15.count = *(sha384DigestOperationInternal + 8);
  v3 = *(sha384DigestOperationInternal + 40);
  v4 = *(sha384DigestOperationInternal + 72);
  v5 = *(sha384DigestOperationInternal + 24);
  *&v15.hash[4] = *(sha384DigestOperationInternal + 56);
  *&v15.hash[6] = v4;
  *v15.hash = v5;
  *&v15.hash[2] = v3;
  v6 = *(sha384DigestOperationInternal + 104);
  v7 = *(sha384DigestOperationInternal + 136);
  v8 = *(sha384DigestOperationInternal + 88);
  *&v15.wbuf[4] = *(sha384DigestOperationInternal + 120);
  *&v15.wbuf[6] = v7;
  *v15.wbuf = v8;
  *&v15.wbuf[2] = v6;
  v9 = *(sha384DigestOperationInternal + 168);
  v10 = *(sha384DigestOperationInternal + 200);
  v11 = *(sha384DigestOperationInternal + 152);
  *&v15.wbuf[12] = *(sha384DigestOperationInternal + 184);
  *&v15.wbuf[14] = v10;
  *&v15.wbuf[8] = v11;
  *&v15.wbuf[10] = v9;
  CC_SHA384_Final(md, &v15);
  v12 = [MEMORY[0x277CBEA90] dataWithBytes:md length:48];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)addData:(id)a3
{
  sha384DigestOperationInternal = self->_sha384DigestOperationInternal;
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  CC_SHA384_Update((sha384DigestOperationInternal + 8), v7, v8);
}

@end