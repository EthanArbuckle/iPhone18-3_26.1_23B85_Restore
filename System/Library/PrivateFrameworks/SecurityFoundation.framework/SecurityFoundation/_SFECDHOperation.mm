@interface _SFECDHOperation
+ (id)_defaultOperation;
- (_SFECDHOperation)init;
- (_SFECDHOperation)initWithCoder:(id)coder;
- (_SFECDHOperation)initWithMode:(int64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deriveKeyWithSpecifier:(id)specifier fromKeySource:(id)source error:(id *)error;
@end

@implementation _SFECDHOperation

+ (id)_defaultOperation
{
  v2 = [[self alloc] initWithMode:{objc_msgSend(self, "_defaultMode")}];

  return v2;
}

- (_SFECDHOperation)init
{
  _defaultMode = [objc_opt_class() _defaultMode];

  return [(_SFECDHOperation *)self initWithMode:_defaultMode];
}

- (_SFECDHOperation)initWithMode:(int64_t)mode
{
  v8.receiver = self;
  v8.super_class = _SFECDHOperation;
  v4 = [(_SFECDHOperation *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(SFECDHOperation_Ivars);
    ecdhOperationInternal = v4->_ecdhOperationInternal;
    v4->_ecdhOperationInternal = v5;

    *(v4->_ecdhOperationInternal + 1) = mode;
  }

  return v4;
}

- (_SFECDHOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _SFECDHOperation;
  return [(_SFECDHOperation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = *(self->_ecdhOperationInternal + 1);

  return [v4 initWithMode:v5];
}

- (id)deriveKeyWithSpecifier:(id)specifier fromKeySource:(id)source error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  sourceCopy = source;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = sourceCopy;
    keyLengthInBytes = [specifierCopy keyLengthInBytes];
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
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:keyLengthInBytes];
    v26[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

    localKeyPair = [v10 localKeyPair];
    _secKey = [localKeyPair _secKey];
    remotePublicKey = [v10 remotePublicKey];
    v19 = SecKeyCopyKeyExchangeResult(_secKey, v13, [remotePublicKey _secKey], v15, error);

    if ([(__CFData *)v19 length]>= keyLengthInBytes)
    {
      v21 = objc_alloc([objc_opt_class() keyClass]);
      v22 = [(__CFData *)v19 subdataWithRange:0, keyLengthInBytes];
      v20 = [v21 initWithData:v22 specifier:specifierCopy error:error];
    }

    else
    {
      v20 = 0;
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:4 userInfo:0];
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

@end