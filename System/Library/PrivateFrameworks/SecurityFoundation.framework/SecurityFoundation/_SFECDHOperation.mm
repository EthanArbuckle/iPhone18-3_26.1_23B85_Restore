@interface _SFECDHOperation
+ (id)_defaultOperation;
- (_SFECDHOperation)init;
- (_SFECDHOperation)initWithCoder:(id)a3;
- (_SFECDHOperation)initWithMode:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deriveKeyWithSpecifier:(id)a3 fromKeySource:(id)a4 error:(id *)a5;
@end

@implementation _SFECDHOperation

+ (id)_defaultOperation
{
  v2 = [[a1 alloc] initWithMode:{objc_msgSend(a1, "_defaultMode")}];

  return v2;
}

- (_SFECDHOperation)init
{
  v3 = [objc_opt_class() _defaultMode];

  return [(_SFECDHOperation *)self initWithMode:v3];
}

- (_SFECDHOperation)initWithMode:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = _SFECDHOperation;
  v4 = [(_SFECDHOperation *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(SFECDHOperation_Ivars);
    ecdhOperationInternal = v4->_ecdhOperationInternal;
    v4->_ecdhOperationInternal = v5;

    *(v4->_ecdhOperationInternal + 1) = a3;
  }

  return v4;
}

- (_SFECDHOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFECDHOperation;
  return [(_SFECDHOperation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = *(self->_ecdhOperationInternal + 1);

  return [v4 initWithMode:v5];
}

- (id)deriveKeyWithSpecifier:(id)a3 fromKeySource:(id)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = [v8 keyLengthInBytes];
    if (*(self->_ecdhOperationInternal + 1))
    {
      v12 = MEMORY[0x277CDC280];
    }

    else
    {
      v12 = MEMORY[0x277CDC288];
    }

    v13 = *v12;
    v25 = *MEMORY[0x277CDC3F8];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
    v26[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

    v16 = [v10 localKeyPair];
    v17 = [v16 _secKey];
    v18 = [v10 remotePublicKey];
    v19 = SecKeyCopyKeyExchangeResult(v17, v13, [v18 _secKey], v15, a5);

    if ([(__CFData *)v19 length]>= v11)
    {
      v21 = objc_alloc([objc_opt_class() keyClass]);
      v22 = [(__CFData *)v19 subdataWithRange:0, v11];
      v20 = [v21 initWithData:v22 specifier:v8 error:a5];
    }

    else
    {
      v20 = 0;
    }
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:4 userInfo:0];
    *a5 = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

@end