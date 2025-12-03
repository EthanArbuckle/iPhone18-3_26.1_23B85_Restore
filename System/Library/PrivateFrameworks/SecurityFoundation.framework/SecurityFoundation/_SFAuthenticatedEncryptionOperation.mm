@interface _SFAuthenticatedEncryptionOperation
+ (id)_defaultEncryptionOperation;
- (_SFAuthenticatedEncryptionOperation)init;
- (_SFAuthenticatedEncryptionOperation)initWithCoder:(id)coder;
- (_SFAuthenticatedEncryptionOperation)initWithKeySpecifier:(id)specifier;
- (_SFAuthenticatedEncryptionOperation)initWithKeySpecifier:(id)specifier authenticationMode:(int64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decrypt:(id)decrypt withKey:(id)key additionalAuthenticatedData:(id)data error:(id *)error;
- (id)decrypt:(id)decrypt withKey:(id)key error:(id *)error;
- (id)encrypt:(id)encrypt withKey:(id)key additionalAuthenticatedData:(id)data error:(id *)error;
- (id)encrypt:(id)encrypt withKey:(id)key additionalAuthenticatedData:(id)data ivGenerator:(id)generator error:(id *)error;
- (id)encrypt:(id)encrypt withKey:(id)key error:(id *)error;
- (void)setAuthenticationMode:(int64_t)mode;
- (void)setEncryptionKeySpecifier:(id)specifier;
@end

@implementation _SFAuthenticatedEncryptionOperation

+ (id)_defaultEncryptionOperation
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (_SFAuthenticatedEncryptionOperation)init
{
  v3 = [[_SFAESKeySpecifier alloc] initWithBitSize:2];
  v4 = [(_SFAuthenticatedEncryptionOperation *)self initWithKeySpecifier:v3];

  return v4;
}

- (_SFAuthenticatedEncryptionOperation)initWithKeySpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = -[_SFAuthenticatedEncryptionOperation initWithKeySpecifier:authenticationMode:](self, "initWithKeySpecifier:authenticationMode:", specifierCopy, [objc_opt_class() _defaultAuthenticationMode]);

  return v5;
}

- (_SFAuthenticatedEncryptionOperation)initWithKeySpecifier:(id)specifier authenticationMode:(int64_t)mode
{
  specifierCopy = specifier;
  if (!specifierCopy)
  {
    [_SFAuthenticatedEncryptionOperation initWithKeySpecifier:authenticationMode:];
  }

  if (mode != 1)
  {
    [_SFAuthenticatedEncryptionOperation initWithKeySpecifier:authenticationMode:];
  }

  v12.receiver = self;
  v12.super_class = _SFAuthenticatedEncryptionOperation;
  v8 = [(_SFAuthenticatedEncryptionOperation *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(SFAuthenticatedEncryptionOperation_Ivars);
    authenticatedEncryptionOperationInternal = v8->_authenticatedEncryptionOperationInternal;
    v8->_authenticatedEncryptionOperationInternal = v9;

    objc_storeStrong(v8->_authenticatedEncryptionOperationInternal + 1, specifier);
    *(v8->_authenticatedEncryptionOperationInternal + 2) = mode;
    *(v8->_authenticatedEncryptionOperationInternal + 3) = [specifierCopy blockSize];
  }

  return v8;
}

- (_SFAuthenticatedEncryptionOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _SFAuthenticatedEncryptionOperation;
  return [(_SFAuthenticatedEncryptionOperation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_alloc(objc_opt_class()) initWithKeySpecifier:*(self->_authenticatedEncryptionOperationInternal + 1) authenticationMode:*(self->_authenticatedEncryptionOperationInternal + 2)];
  *(*(result + 1) + 24) = *(self->_authenticatedEncryptionOperationInternal + 3);
  return result;
}

- (id)encrypt:(id)encrypt withKey:(id)key error:(id *)error
{
  keyCopy = key;
  encryptCopy = encrypt;
  v10 = objc_alloc_init(SFIncrementingIVGenerator);
  v11 = [(_SFAuthenticatedEncryptionOperation *)self encrypt:encryptCopy withKey:keyCopy additionalAuthenticatedData:0 ivGenerator:v10 error:error];

  return v11;
}

- (id)encrypt:(id)encrypt withKey:(id)key additionalAuthenticatedData:(id)data error:(id *)error
{
  dataCopy = data;
  keyCopy = key;
  encryptCopy = encrypt;
  v13 = objc_alloc_init(SFIncrementingIVGenerator);
  v14 = [(_SFAuthenticatedEncryptionOperation *)self encrypt:encryptCopy withKey:keyCopy additionalAuthenticatedData:dataCopy ivGenerator:v13 error:error];

  return v14;
}

- (id)encrypt:(id)encrypt withKey:(id)key additionalAuthenticatedData:(id)data ivGenerator:(id)generator error:(id *)error
{
  encryptCopy = encrypt;
  keyCopy = key;
  dataCopy = data;
  generatorCopy = generator;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [_SFAuthenticatedEncryptionOperation encrypt:withKey:additionalAuthenticatedData:ivGenerator:error:];
  }

  keyData = [keyCopy keyData];
  v17 = [generatorCopy generateIVWithLength:objc_msgSend(keyData error:{"length"), error}];

  if (v17)
  {
    v28 = keyCopy;
    v18 = [encryptCopy length];
    v27 = malloc_type_malloc(v18, 0x11B28C1FuLL);
    v19 = malloc_type_malloc(*(self->_authenticatedEncryptionOperationInternal + 3), 0xA4026CBFuLL);
    v30 = *(self->_authenticatedEncryptionOperationInternal + 3);
    [keyData bytes];
    [v17 bytes];
    [v17 length];
    [dataCopy bytes];
    [dataCopy length];
    v20 = encryptCopy;
    v29 = encryptCopy;
    v21 = v27;
    bytes = [v20 bytes];
    if (CCCryptorGCM())
    {
      v22 = 0;
    }

    else
    {
      v23 = [MEMORY[0x277CBEA90] dataWithBytes:v27 length:{v18, bytes, v18, v27, v19, &v30}];
      v24 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:v30];
      v22 = [[_SFAuthenticatedCiphertext alloc] initWithCiphertext:v23 authenticationCode:v24 initializationVector:v17];

      v21 = v27;
    }

    free(v21);
    free(v19);
    keyCopy = v28;
    encryptCopy = v29;
    if (error && !v22)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:2 userInfo:0];
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:4 userInfo:0];
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)decrypt:(id)decrypt withKey:(id)key error:(id *)error
{
  decryptCopy = decrypt;
  keyCopy = key;
  if (decryptCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [(_SFAuthenticatedEncryptionOperation *)self decrypt:decryptCopy withKey:keyCopy additionalAuthenticatedData:0 error:error];
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:9 userInfo:0];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)decrypt:(id)decrypt withKey:(id)key additionalAuthenticatedData:(id)data error:(id *)error
{
  decryptCopy = decrypt;
  keyCopy = key;
  dataCopy = data;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [_SFAuthenticatedEncryptionOperation decrypt:withKey:additionalAuthenticatedData:error:];
  }

  v13 = keyCopy;
  authenticationCode = [decryptCopy authenticationCode];
  v15 = [authenticationCode length];
  v16 = *(self->_authenticatedEncryptionOperationInternal + 3);

  if (v15 == v16)
  {
    errorCopy = error;
    v31 = v13;
    keyData = [v13 keyData];
    [keyData length];
    initializationVector = [decryptCopy initializationVector];
    ciphertext = [decryptCopy ciphertext];
    v20 = [ciphertext length];

    v21 = malloc_type_malloc(v20, 0x8C929CFAuLL);
    v22 = malloc_type_malloc(*(self->_authenticatedEncryptionOperationInternal + 3), 0xC3A3346uLL);
    v35 = *(self->_authenticatedEncryptionOperationInternal + 3);
    v33 = keyData;
    [keyData bytes];
    [initializationVector bytes];
    v32 = initializationVector;
    [initializationVector length];
    [dataCopy bytes];
    [dataCopy length];
    ciphertext2 = [decryptCopy ciphertext];
    bytes = [ciphertext2 bytes];
    LODWORD(keyData) = CCCryptorGCM();

    if (keyData || ([decryptCopy authenticationCode], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "bytes"), v26 = timingsafe_bcmp(v22, v25, v35), v24, v26))
    {
      v27 = 0;
      v28 = errorCopy;
    }

    else
    {
      v27 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:v20];
      v28 = errorCopy;
    }

    free(v21);
    free(v22);
    if (v28 && !v27)
    {
      *v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:3 userInfo:0];
    }

    v13 = v31;
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:5 userInfo:0];
    *error = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)setEncryptionKeySpecifier:(id)specifier
{
  v4 = [specifier copy];
  authenticatedEncryptionOperationInternal = self->_authenticatedEncryptionOperationInternal;
  v6 = authenticatedEncryptionOperationInternal[1];
  authenticatedEncryptionOperationInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setAuthenticationMode:(int64_t)mode
{
  if (mode != 1)
  {
    [_SFAuthenticatedEncryptionOperation setAuthenticationMode:];
  }

  *(self->_authenticatedEncryptionOperationInternal + 2) = mode;
}

- (void)initWithKeySpecifier:authenticationMode:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"keySpecifier" object:? file:? lineNumber:? description:?];
}

- (void)initWithKeySpecifier:authenticationMode:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)encrypt:withKey:additionalAuthenticatedData:ivGenerator:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)decrypt:withKey:additionalAuthenticatedData:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setAuthenticationMode:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end