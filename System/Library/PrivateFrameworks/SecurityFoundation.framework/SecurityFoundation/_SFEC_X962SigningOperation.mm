@interface _SFEC_X962SigningOperation
- (_SFECKeySpecifier)signingKeySpecifier;
- (_SFEC_X962SigningOperation)init;
- (_SFEC_X962SigningOperation)initWithCoder:(id)a3;
- (_SFEC_X962SigningOperation)initWithKeySpecifier:(id)a3;
- (_SFEC_X962SigningOperation)initWithKeySpecifier:(id)a3 digestOperation:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sign:(id)a3 withKey:(id)a4 error:(id *)a5;
- (id)verify:(id)a3 withKey:(id)a4 error:(id *)a5;
- (void)setSigningKeySpecifier:(id)a3;
@end

@implementation _SFEC_X962SigningOperation

- (_SFEC_X962SigningOperation)init
{
  v3 = [[_SFECKeySpecifier alloc] initWithCurve:2];
  v4 = [(_SFEC_X962SigningOperation *)self initWithKeySpecifier:v3];

  return v4;
}

- (_SFEC_X962SigningOperation)initWithKeySpecifier:(id)a3
{
  v4 = a3;
  v5 = _defaultDigestOperation();
  v6 = [(_SFEC_X962SigningOperation *)self initWithKeySpecifier:v4 digestOperation:v5];

  return v6;
}

- (_SFEC_X962SigningOperation)initWithKeySpecifier:(id)a3 digestOperation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = _SFEC_X962SigningOperation;
  v8 = [(_SFEC_X962SigningOperation *)&v18 init];
  if (v8)
  {
    v9 = objc_alloc_init(SFEC_X962SigningOperation_Ivars);
    x962SigningOperationInternal = v8->_x962SigningOperationInternal;
    v8->_x962SigningOperationInternal = v9;

    v11 = [v6 copy];
    v12 = v8->_x962SigningOperationInternal;
    v13 = v12[1];
    v12[1] = v11;

    v14 = [v7 copyWithZone:0];
    v15 = v8->_x962SigningOperationInternal;
    v16 = v15[2];
    v15[2] = v14;
  }

  return v8;
}

- (_SFEC_X962SigningOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFEC_X962SigningOperation;
  return [(_SFEC_X962SigningOperation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = *(self->_x962SigningOperationInternal + 1);

  return [v4 initWithKeySpecifier:v5];
}

- (id)sign:(id)a3 withKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    error = 0;
    v10 = [v9 _secKey];
    v11 = [*(self->_x962SigningOperationInternal + 2) _secKeyECDSAAlgorithm];
    v12 = *(self->_x962SigningOperationInternal + 2);
    v13 = [objc_opt_class() digest:v8];
    v14 = SecKeyCreateSignature(v10, v11, v13, &error);
    v15 = error;
    if (error)
    {
      if (!a5)
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
        v16 = [[_SFSignedData alloc] initWithData:v8 signature:v14];
        goto LABEL_11;
      }

      if (!a5)
      {
        v16 = 0;
        goto LABEL_11;
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-67688 userInfo:0];
    }

    v16 = 0;
    *a5 = v15;
LABEL_11:

    goto LABEL_12;
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:9 userInfo:0];
    *a5 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_12:

  return v16;
}

- (id)verify:(id)a3 withKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_11;
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:9 userInfo:0];
    goto LABEL_10;
  }

  error = 0;
  v10 = [v9 _secKey];
  v11 = [*(self->_x962SigningOperationInternal + 2) _secKeyECDSAAlgorithm];
  v12 = *(self->_x962SigningOperationInternal + 2);
  v13 = objc_opt_class();
  v14 = [v8 data];
  v15 = [v13 digest:v14];
  v16 = [v8 signature];
  LODWORD(v15) = SecKeyVerifySignature(v10, v11, v15, v16, &error);

  v17 = error;
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
    if (!a5)
    {
      CFRelease(error);
LABEL_11:
      v19 = 0;
      goto LABEL_13;
    }

LABEL_10:
    v19 = 0;
    *a5 = v17;
    goto LABEL_13;
  }

  v19 = [v8 data];
LABEL_13:

  return v19;
}

- (_SFECKeySpecifier)signingKeySpecifier
{
  v2 = [*(self->_x962SigningOperationInternal + 1) copy];

  return v2;
}

- (void)setSigningKeySpecifier:(id)a3
{
  v4 = [a3 copy];
  x962SigningOperationInternal = self->_x962SigningOperationInternal;
  v6 = x962SigningOperationInternal[1];
  x962SigningOperationInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

@end