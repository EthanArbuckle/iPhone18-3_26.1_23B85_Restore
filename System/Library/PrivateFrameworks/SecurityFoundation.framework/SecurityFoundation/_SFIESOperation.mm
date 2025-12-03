@interface _SFIESOperation
+ (void)initialize;
- (SFDigestOperation)digestOperation;
- (_SFAuthenticatedEncryptionOperation)encryptionOperation;
- (_SFECDHOperation)diffieHellmanOperation;
- (_SFIESOperation)initWithCoder:(id)coder;
- (_SFIESOperation)initWithCurve:(int64_t)curve;
- (_SFIESOperation)initWithCurve:(int64_t)curve diffieHellmanOperation:(id)operation encryptionOperation:(id)encryptionOperation digestOperation:(id)digestOperation;
- (const)_ccDigestInfoWithError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decrypt:(id)decrypt withKey:(id)key error:(id *)error;
- (id)encrypt:(id)encrypt withKey:(id)key error:(id *)error;
- (void)setDiffieHellmanOperation:(id)operation;
- (void)setDigestOperation:(id)operation;
- (void)setEncryptionOperation:(id)operation;
@end

@implementation _SFIESOperation

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    MEMORY[0x282201808](&__rngSystemState);
  }
}

- (_SFIESOperation)initWithCurve:(int64_t)curve
{
  v5 = +[_SFECDHOperation _defaultOperation];
  v6 = +[_SFAuthenticatedEncryptionOperation _defaultEncryptionOperation];
  v7 = _defaultDigestOperation();
  v8 = [(_SFIESOperation *)self initWithCurve:curve diffieHellmanOperation:v5 encryptionOperation:v6 digestOperation:v7];

  return v8;
}

- (_SFIESOperation)initWithCurve:(int64_t)curve diffieHellmanOperation:(id)operation encryptionOperation:(id)encryptionOperation digestOperation:(id)digestOperation
{
  operationCopy = operation;
  encryptionOperationCopy = encryptionOperation;
  digestOperationCopy = digestOperation;
  v18.receiver = self;
  v18.super_class = _SFIESOperation;
  v14 = [(_SFIESOperation *)&v18 init];
  if (v14)
  {
    v15 = objc_alloc_init(SFIESOperation_Ivars);
    iesOperationInternal = v14->_iesOperationInternal;
    v14->_iesOperationInternal = v15;

    *(v14->_iesOperationInternal + 1) = curve;
    objc_storeStrong(v14->_iesOperationInternal + 2, operation);
    objc_storeStrong(v14->_iesOperationInternal + 3, encryptionOperation);
    objc_storeStrong(v14->_iesOperationInternal + 4, digestOperation);
  }

  return v14;
}

- (_SFIESOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _SFIESOperation;
  return [(_SFIESOperation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  iesOperationInternal = self->_iesOperationInternal;
  v6 = iesOperationInternal[1];
  v7 = iesOperationInternal[2];
  v8 = iesOperationInternal[3];
  v9 = iesOperationInternal[4];

  return [v4 initWithCurve:v6 diffieHellmanOperation:v7 encryptionOperation:v8 digestOperation:v9];
}

- (const)_ccDigestInfoWithError:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = *(self->_iesOperationInternal + 4);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (v6 = *(self->_iesOperationInternal + 4), objc_opt_class(), (objc_opt_isKindOfClass()) || (v7 = *(self->_iesOperationInternal + 4), (objc_opt_respondsToSelector() & 1) == 0))
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *(self->_iesOperationInternal + 4);
    v15 = @"SFCryptoServicesErrorDigest";
    v16[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v11 errorWithDomain:@"SFCryptoServicesErrorDomain" code:1 userInfo:v13];

    v14 = *MEMORY[0x277D85DE8];
    return 0;
  }

  else
  {
    v8 = *(self->_iesOperationInternal + 4);
    v9 = *MEMORY[0x277D85DE8];

    return [v8 _ccDigestInfo];
  }
}

- (id)encrypt:(id)encrypt withKey:(id)key error:(id *)error
{
  encryptCopy = encrypt;
  keyCopy = key;
  v10 = keyCopy;
  if (encryptCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_SFIESOperation encrypt:withKey:error:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [_SFIESOperation encrypt:withKey:error:];
LABEL_3:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__0;
    v23 = __Block_byref_object_dispose__0;
    v24 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41___SFIESOperation_encrypt_withKey_error___block_invoke;
    v15[3] = &unk_2788496D8;
    v18 = &v19;
    v15[4] = self;
    v16 = encryptCopy;
    v12 = v11;
    v17 = v12;
    v13 = [v12 performWithCCKey:v15];
    if (error)
    {
      *error = v20[5];
    }

    _Block_object_dispose(&v19, 8);
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:9 userInfo:0];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)decrypt:(id)decrypt withKey:(id)key error:(id *)error
{
  decryptCopy = decrypt;
  keyCopy = key;
  v10 = keyCopy;
  if (decryptCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_SFIESOperation decrypt:withKey:error:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [_SFIESOperation decrypt:withKey:error:];
LABEL_3:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = decryptCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v10;
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__0;
      v22 = __Block_byref_object_dispose__0;
      v23 = 0;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __41___SFIESOperation_decrypt_withKey_error___block_invoke;
      v15[3] = &unk_278849700;
      v17 = &v18;
      v15[4] = self;
      v16 = v11;
      v13 = [v12 performWithCCKey:v15];
      if (error)
      {
        *error = v19[5];
      }

      _Block_object_dispose(&v18, 8);
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:9 userInfo:0];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:9 userInfo:0];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (_SFECDHOperation)diffieHellmanOperation
{
  v2 = [*(self->_iesOperationInternal + 2) copy];

  return v2;
}

- (void)setDiffieHellmanOperation:(id)operation
{
  v4 = [operation copy];
  iesOperationInternal = self->_iesOperationInternal;
  v6 = iesOperationInternal[2];
  iesOperationInternal[2] = v4;

  MEMORY[0x2821F96F8]();
}

- (_SFAuthenticatedEncryptionOperation)encryptionOperation
{
  v2 = [*(self->_iesOperationInternal + 3) copy];

  return v2;
}

- (void)setEncryptionOperation:(id)operation
{
  v4 = [operation copy];
  iesOperationInternal = self->_iesOperationInternal;
  v6 = iesOperationInternal[3];
  iesOperationInternal[3] = v4;

  MEMORY[0x2821F96F8]();
}

- (SFDigestOperation)digestOperation
{
  v2 = [*(self->_iesOperationInternal + 4) copyWithZone:0];

  return v2;
}

- (void)setDigestOperation:(id)operation
{
  v4 = [operation copyWithZone:0];
  iesOperationInternal = self->_iesOperationInternal;
  v6 = iesOperationInternal[4];
  iesOperationInternal[4] = v4;

  MEMORY[0x2821F96F8]();
}

- (void)encrypt:withKey:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"plaintext" object:? file:? lineNumber:? description:?];
}

- (void)encrypt:withKey:error:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"key2" object:? file:? lineNumber:? description:?];
}

- (void)decrypt:withKey:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"ciphertext2" object:? file:? lineNumber:? description:?];
}

- (void)decrypt:withKey:error:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"key2" object:? file:? lineNumber:? description:?];
}

@end