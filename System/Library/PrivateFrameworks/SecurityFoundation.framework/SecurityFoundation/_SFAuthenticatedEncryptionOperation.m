@interface _SFAuthenticatedEncryptionOperation
+ (id)_defaultEncryptionOperation;
- (_SFAuthenticatedEncryptionOperation)init;
- (_SFAuthenticatedEncryptionOperation)initWithCoder:(id)a3;
- (_SFAuthenticatedEncryptionOperation)initWithKeySpecifier:(id)a3;
- (_SFAuthenticatedEncryptionOperation)initWithKeySpecifier:(id)a3 authenticationMode:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decrypt:(id)a3 withKey:(id)a4 additionalAuthenticatedData:(id)a5 error:(id *)a6;
- (id)decrypt:(id)a3 withKey:(id)a4 error:(id *)a5;
- (id)encrypt:(id)a3 withKey:(id)a4 additionalAuthenticatedData:(id)a5 error:(id *)a6;
- (id)encrypt:(id)a3 withKey:(id)a4 additionalAuthenticatedData:(id)a5 ivGenerator:(id)a6 error:(id *)a7;
- (id)encrypt:(id)a3 withKey:(id)a4 error:(id *)a5;
- (void)setAuthenticationMode:(int64_t)a3;
- (void)setEncryptionKeySpecifier:(id)a3;
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

- (_SFAuthenticatedEncryptionOperation)initWithKeySpecifier:(id)a3
{
  v4 = a3;
  v5 = -[_SFAuthenticatedEncryptionOperation initWithKeySpecifier:authenticationMode:](self, "initWithKeySpecifier:authenticationMode:", v4, [objc_opt_class() _defaultAuthenticationMode]);

  return v5;
}

- (_SFAuthenticatedEncryptionOperation)initWithKeySpecifier:(id)a3 authenticationMode:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    [_SFAuthenticatedEncryptionOperation initWithKeySpecifier:authenticationMode:];
  }

  if (a4 != 1)
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

    objc_storeStrong(v8->_authenticatedEncryptionOperationInternal + 1, a3);
    *(v8->_authenticatedEncryptionOperationInternal + 2) = a4;
    *(v8->_authenticatedEncryptionOperationInternal + 3) = [v7 blockSize];
  }

  return v8;
}

- (_SFAuthenticatedEncryptionOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFAuthenticatedEncryptionOperation;
  return [(_SFAuthenticatedEncryptionOperation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_alloc(objc_opt_class()) initWithKeySpecifier:*(self->_authenticatedEncryptionOperationInternal + 1) authenticationMode:*(self->_authenticatedEncryptionOperationInternal + 2)];
  *(*(result + 1) + 24) = *(self->_authenticatedEncryptionOperationInternal + 3);
  return result;
}

- (id)encrypt:(id)a3 withKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(SFIncrementingIVGenerator);
  v11 = [(_SFAuthenticatedEncryptionOperation *)self encrypt:v9 withKey:v8 additionalAuthenticatedData:0 ivGenerator:v10 error:a5];

  return v11;
}

- (id)encrypt:(id)a3 withKey:(id)a4 additionalAuthenticatedData:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(SFIncrementingIVGenerator);
  v14 = [(_SFAuthenticatedEncryptionOperation *)self encrypt:v12 withKey:v11 additionalAuthenticatedData:v10 ivGenerator:v13 error:a6];

  return v14;
}

- (id)encrypt:(id)a3 withKey:(id)a4 additionalAuthenticatedData:(id)a5 ivGenerator:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [_SFAuthenticatedEncryptionOperation encrypt:withKey:additionalAuthenticatedData:ivGenerator:error:];
  }

  v16 = [v13 keyData];
  v17 = [v15 generateIVWithLength:objc_msgSend(v16 error:{"length"), a7}];

  if (v17)
  {
    v28 = v13;
    v18 = [v12 length];
    v27 = malloc_type_malloc(v18, 0x11B28C1FuLL);
    v19 = malloc_type_malloc(*(self->_authenticatedEncryptionOperationInternal + 3), 0xA4026CBFuLL);
    v30 = *(self->_authenticatedEncryptionOperationInternal + 3);
    [v16 bytes];
    [v17 bytes];
    [v17 length];
    [v14 bytes];
    [v14 length];
    v20 = v12;
    v29 = v12;
    v21 = v27;
    v26 = [v20 bytes];
    if (CCCryptorGCM())
    {
      v22 = 0;
    }

    else
    {
      v23 = [MEMORY[0x277CBEA90] dataWithBytes:v27 length:{v18, v26, v18, v27, v19, &v30}];
      v24 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:v30];
      v22 = [[_SFAuthenticatedCiphertext alloc] initWithCiphertext:v23 authenticationCode:v24 initializationVector:v17];

      v21 = v27;
    }

    free(v21);
    free(v19);
    v13 = v28;
    v12 = v29;
    if (a7 && !v22)
    {
      *a7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:2 userInfo:0];
    }
  }

  else if (a7)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:4 userInfo:0];
    *a7 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)decrypt:(id)a3 withKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [(_SFAuthenticatedEncryptionOperation *)self decrypt:v8 withKey:v9 additionalAuthenticatedData:0 error:a5];
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:9 userInfo:0];
    *a5 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)decrypt:(id)a3 withKey:(id)a4 additionalAuthenticatedData:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [_SFAuthenticatedEncryptionOperation decrypt:withKey:additionalAuthenticatedData:error:];
  }

  v13 = v11;
  v14 = [v10 authenticationCode];
  v15 = [v14 length];
  v16 = *(self->_authenticatedEncryptionOperationInternal + 3);

  if (v15 == v16)
  {
    v34 = a6;
    v31 = v13;
    v17 = [v13 keyData];
    [v17 length];
    v18 = [v10 initializationVector];
    v19 = [v10 ciphertext];
    v20 = [v19 length];

    v21 = malloc_type_malloc(v20, 0x8C929CFAuLL);
    v22 = malloc_type_malloc(*(self->_authenticatedEncryptionOperationInternal + 3), 0xC3A3346uLL);
    v35 = *(self->_authenticatedEncryptionOperationInternal + 3);
    v33 = v17;
    [v17 bytes];
    [v18 bytes];
    v32 = v18;
    [v18 length];
    [v12 bytes];
    [v12 length];
    v23 = [v10 ciphertext];
    v30 = [v23 bytes];
    LODWORD(v17) = CCCryptorGCM();

    if (v17 || ([v10 authenticationCode], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "bytes"), v26 = timingsafe_bcmp(v22, v25, v35), v24, v26))
    {
      v27 = 0;
      v28 = v34;
    }

    else
    {
      v27 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:v20];
      v28 = v34;
    }

    free(v21);
    free(v22);
    if (v28 && !v27)
    {
      *v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:3 userInfo:0];
    }

    v13 = v31;
  }

  else if (a6)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:5 userInfo:0];
    *a6 = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)setEncryptionKeySpecifier:(id)a3
{
  v4 = [a3 copy];
  authenticatedEncryptionOperationInternal = self->_authenticatedEncryptionOperationInternal;
  v6 = authenticatedEncryptionOperationInternal[1];
  authenticatedEncryptionOperationInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setAuthenticationMode:(int64_t)a3
{
  if (a3 != 1)
  {
    [_SFAuthenticatedEncryptionOperation setAuthenticationMode:];
  }

  *(self->_authenticatedEncryptionOperationInternal + 2) = a3;
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