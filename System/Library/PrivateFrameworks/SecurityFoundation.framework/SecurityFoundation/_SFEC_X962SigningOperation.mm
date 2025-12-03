@interface _SFEC_X962SigningOperation
- (_SFECKeySpecifier)signingKeySpecifier;
- (_SFEC_X962SigningOperation)init;
- (_SFEC_X962SigningOperation)initWithCoder:(id)coder;
- (_SFEC_X962SigningOperation)initWithKeySpecifier:(id)specifier;
- (_SFEC_X962SigningOperation)initWithKeySpecifier:(id)specifier digestOperation:(id)operation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sign:(id)sign withKey:(id)key error:(id *)error;
- (id)verify:(id)verify withKey:(id)key error:(id *)error;
- (void)setSigningKeySpecifier:(id)specifier;
@end

@implementation _SFEC_X962SigningOperation

- (_SFEC_X962SigningOperation)init
{
  v3 = [[_SFECKeySpecifier alloc] initWithCurve:2];
  v4 = [(_SFEC_X962SigningOperation *)self initWithKeySpecifier:v3];

  return v4;
}

- (_SFEC_X962SigningOperation)initWithKeySpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = _defaultDigestOperation();
  v6 = [(_SFEC_X962SigningOperation *)self initWithKeySpecifier:specifierCopy digestOperation:v5];

  return v6;
}

- (_SFEC_X962SigningOperation)initWithKeySpecifier:(id)specifier digestOperation:(id)operation
{
  specifierCopy = specifier;
  operationCopy = operation;
  v18.receiver = self;
  v18.super_class = _SFEC_X962SigningOperation;
  v8 = [(_SFEC_X962SigningOperation *)&v18 init];
  if (v8)
  {
    v9 = objc_alloc_init(SFEC_X962SigningOperation_Ivars);
    x962SigningOperationInternal = v8->_x962SigningOperationInternal;
    v8->_x962SigningOperationInternal = v9;

    v11 = [specifierCopy copy];
    v12 = v8->_x962SigningOperationInternal;
    v13 = v12[1];
    v12[1] = v11;

    v14 = [operationCopy copyWithZone:0];
    v15 = v8->_x962SigningOperationInternal;
    v16 = v15[2];
    v15[2] = v14;
  }

  return v8;
}

- (_SFEC_X962SigningOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _SFEC_X962SigningOperation;
  return [(_SFEC_X962SigningOperation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = *(self->_x962SigningOperationInternal + 1);

  return [v4 initWithKeySpecifier:v5];
}

- (id)sign:(id)sign withKey:(id)key error:(id *)error
{
  signCopy = sign;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    error = 0;
    _secKey = [keyCopy _secKey];
    _secKeyECDSAAlgorithm = [*(self->_x962SigningOperationInternal + 2) _secKeyECDSAAlgorithm];
    v12 = *(self->_x962SigningOperationInternal + 2);
    v13 = [objc_opt_class() digest:signCopy];
    v14 = SecKeyCreateSignature(_secKey, _secKeyECDSAAlgorithm, v13, &error);
    errorCopy = error;
    if (error)
    {
      if (!error)
      {
        CFRelease(error);
        v16 = 0;
        error = 0;
        goto LABEL_11;
      }
    }

    else
    {
      if (v14)
      {
        v16 = [[_SFSignedData alloc] initWithData:signCopy signature:v14];
        goto LABEL_11;
      }

      if (!error)
      {
        v16 = 0;
        goto LABEL_11;
      }

      errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-67688 userInfo:0];
    }

    v16 = 0;
    *error = errorCopy;
LABEL_11:

    goto LABEL_12;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:9 userInfo:0];
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_12:

  return v16;
}

- (id)verify:(id)verify withKey:(id)key error:(id *)error
{
  verifyCopy = verify;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:9 userInfo:0];
    goto LABEL_10;
  }

  error = 0;
  _secKey = [keyCopy _secKey];
  _secKeyECDSAAlgorithm = [*(self->_x962SigningOperationInternal + 2) _secKeyECDSAAlgorithm];
  v12 = *(self->_x962SigningOperationInternal + 2);
  v13 = objc_opt_class();
  data = [verifyCopy data];
  v15 = [v13 digest:data];
  signature = [verifyCopy signature];
  LODWORD(v15) = SecKeyVerifySignature(_secKey, _secKeyECDSAAlgorithm, v15, signature, &error);

  errorCopy = error;
  if (v15)
  {
    v18 = error == 0;
  }

  else
  {
    v18 = 0;
  }

  if (!v18)
  {
    if (!error)
    {
      CFRelease(error);
LABEL_11:
      data2 = 0;
      goto LABEL_13;
    }

LABEL_10:
    data2 = 0;
    *error = errorCopy;
    goto LABEL_13;
  }

  data2 = [verifyCopy data];
LABEL_13:

  return data2;
}

- (_SFECKeySpecifier)signingKeySpecifier
{
  v2 = [*(self->_x962SigningOperationInternal + 1) copy];

  return v2;
}

- (void)setSigningKeySpecifier:(id)specifier
{
  v4 = [specifier copy];
  x962SigningOperationInternal = self->_x962SigningOperationInternal;
  v6 = x962SigningOperationInternal[1];
  x962SigningOperationInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

@end