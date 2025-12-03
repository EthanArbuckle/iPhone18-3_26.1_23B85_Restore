@interface _SFAuthenticatedCiphertext
- (BOOL)isEqual:(id)equal;
- (_SFAuthenticatedCiphertext)initWithCiphertext:(id)ciphertext authenticationCode:(id)code initializationVector:(id)vector;
- (_SFAuthenticatedCiphertext)initWithCoder:(id)coder;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SFAuthenticatedCiphertext

- (_SFAuthenticatedCiphertext)initWithCiphertext:(id)ciphertext authenticationCode:(id)code initializationVector:(id)vector
{
  ciphertextCopy = ciphertext;
  codeCopy = code;
  vectorCopy = vector;
  if (ciphertextCopy)
  {
    if (codeCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [_SFAuthenticatedCiphertext initWithCiphertext:authenticationCode:initializationVector:];
    if (vectorCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [_SFAuthenticatedCiphertext initWithCiphertext:authenticationCode:initializationVector:];
  if (!codeCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (vectorCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [_SFAuthenticatedCiphertext initWithCiphertext:authenticationCode:initializationVector:];
LABEL_4:
  v15.receiver = self;
  v15.super_class = _SFAuthenticatedCiphertext;
  v11 = [(_SFCiphertext *)&v15 initWithCiphertext:ciphertextCopy];
  if (v11)
  {
    v12 = objc_alloc_init(SFAuthenticatedCiphertext_Ivars);
    authenticatedCiphertextInternal = v11->_authenticatedCiphertextInternal;
    v11->_authenticatedCiphertextInternal = v12;

    objc_storeStrong(v11->_authenticatedCiphertextInternal + 1, code);
    objc_storeStrong(v11->_authenticatedCiphertextInternal + 2, vector);
  }

  return v11;
}

- (_SFAuthenticatedCiphertext)initWithCoder:(id)coder
{
  v23[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = _SFAuthenticatedCiphertext;
  v5 = [(_SFCiphertext *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_alloc_init(SFAuthenticatedCiphertext_Ivars);
    authenticatedCiphertextInternal = v5->_authenticatedCiphertextInternal;
    v5->_authenticatedCiphertextInternal = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SFAuthenticationCode"];
    v9 = v5->_authenticatedCiphertextInternal;
    v10 = v9[1];
    v9[1] = v8;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SFInitializationVector"];
    v12 = v5->_authenticatedCiphertextInternal;
    v13 = v12[2];
    v12[2] = v11;

    v14 = v5->_authenticatedCiphertextInternal;
    if (!v14[1] || !v14[2])
    {
      v15 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA450];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to deserialize object of type %@", objc_opt_class()];
      v23[0] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v18 = [v15 errorWithDomain:@"SFCryptoServicesErrorDomain" code:8 userInfo:v17];

      [coderCopy failWithError:v18];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _SFAuthenticatedCiphertext;
  coderCopy = coder;
  [(_SFCiphertext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:*(self->_authenticatedCiphertextInternal + 1) forKey:{@"SFAuthenticationCode", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:*(self->_authenticatedCiphertextInternal + 2) forKey:@"SFInitializationVector"];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = _SFAuthenticatedCiphertext;
  v4 = [(_SFAuthenticatedCiphertext *)&v11 debugDescription];
  authenticatedCiphertextInternal = self->_authenticatedCiphertextInternal;
  v6 = authenticatedCiphertextInternal[1];
  v7 = authenticatedCiphertextInternal[2];
  ciphertext = [(_SFCiphertext *)self ciphertext];
  v9 = [v3 stringWithFormat:@"%@\nAuth Code: %@\nIV: %@\ndata: %@", v4, v6, v7, ciphertext];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v13.receiver = self;
    v13.super_class = _SFAuthenticatedCiphertext;
    if ([(_SFCiphertext *)&v13 isEqual:v6])
    {
      v7 = *(self->_authenticatedCiphertextInternal + 1);
      authenticationCode = [(_SFAuthenticatedCiphertext *)v6 authenticationCode];
      if ([v7 isEqual:authenticationCode])
      {
        v9 = *(self->_authenticatedCiphertextInternal + 2);
        initializationVector = [(_SFAuthenticatedCiphertext *)v6 initializationVector];
        v11 = [v9 isEqual:initializationVector];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)initWithCiphertext:authenticationCode:initializationVector:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"ciphertext" object:? file:? lineNumber:? description:?];
}

- (void)initWithCiphertext:authenticationCode:initializationVector:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"authenticationCode" object:? file:? lineNumber:? description:?];
}

- (void)initWithCiphertext:authenticationCode:initializationVector:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"initializationVector" object:? file:? lineNumber:? description:?];
}

@end