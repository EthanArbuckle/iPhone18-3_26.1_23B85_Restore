@interface _SFAuthenticatedCiphertext
- (BOOL)isEqual:(id)a3;
- (_SFAuthenticatedCiphertext)initWithCiphertext:(id)a3 authenticationCode:(id)a4 initializationVector:(id)a5;
- (_SFAuthenticatedCiphertext)initWithCoder:(id)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SFAuthenticatedCiphertext

- (_SFAuthenticatedCiphertext)initWithCiphertext:(id)a3 authenticationCode:(id)a4 initializationVector:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    [_SFAuthenticatedCiphertext initWithCiphertext:authenticationCode:initializationVector:];
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [_SFAuthenticatedCiphertext initWithCiphertext:authenticationCode:initializationVector:];
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_9:
  [_SFAuthenticatedCiphertext initWithCiphertext:authenticationCode:initializationVector:];
LABEL_4:
  v15.receiver = self;
  v15.super_class = _SFAuthenticatedCiphertext;
  v11 = [(_SFCiphertext *)&v15 initWithCiphertext:v8];
  if (v11)
  {
    v12 = objc_alloc_init(SFAuthenticatedCiphertext_Ivars);
    authenticatedCiphertextInternal = v11->_authenticatedCiphertextInternal;
    v11->_authenticatedCiphertextInternal = v12;

    objc_storeStrong(v11->_authenticatedCiphertextInternal + 1, a4);
    objc_storeStrong(v11->_authenticatedCiphertextInternal + 2, a5);
  }

  return v11;
}

- (_SFAuthenticatedCiphertext)initWithCoder:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _SFAuthenticatedCiphertext;
  v5 = [(_SFCiphertext *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_alloc_init(SFAuthenticatedCiphertext_Ivars);
    authenticatedCiphertextInternal = v5->_authenticatedCiphertextInternal;
    v5->_authenticatedCiphertextInternal = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SFAuthenticationCode"];
    v9 = v5->_authenticatedCiphertextInternal;
    v10 = v9[1];
    v9[1] = v8;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SFInitializationVector"];
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

      [v4 failWithError:v18];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _SFAuthenticatedCiphertext;
  v4 = a3;
  [(_SFCiphertext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:*(self->_authenticatedCiphertextInternal + 1) forKey:{@"SFAuthenticationCode", v5.receiver, v5.super_class}];
  [v4 encodeObject:*(self->_authenticatedCiphertextInternal + 2) forKey:@"SFInitializationVector"];
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
  v8 = [(_SFCiphertext *)self ciphertext];
  v9 = [v3 stringWithFormat:@"%@\nAuth Code: %@\nIV: %@\ndata: %@", v4, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v13.receiver = self;
    v13.super_class = _SFAuthenticatedCiphertext;
    if ([(_SFCiphertext *)&v13 isEqual:v6])
    {
      v7 = *(self->_authenticatedCiphertextInternal + 1);
      v8 = [(_SFAuthenticatedCiphertext *)v6 authenticationCode];
      if ([v7 isEqual:v8])
      {
        v9 = *(self->_authenticatedCiphertextInternal + 2);
        v10 = [(_SFAuthenticatedCiphertext *)v6 initializationVector];
        v11 = [v9 isEqual:v10];
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