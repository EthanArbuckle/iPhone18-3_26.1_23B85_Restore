@interface _SFIESCiphertext
- (BOOL)isEqual:(id)equal;
- (_SFIESCiphertext)initWithCiphertext:(id)ciphertext ephemeralSenderPublicKey:(id)key authenticationCode:(id)code;
- (_SFIESCiphertext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SFIESCiphertext

- (_SFIESCiphertext)initWithCiphertext:(id)ciphertext ephemeralSenderPublicKey:(id)key authenticationCode:(id)code
{
  ciphertextCopy = ciphertext;
  keyCopy = key;
  codeCopy = code;
  if (ciphertextCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [_SFIESCiphertext initWithCiphertext:ephemeralSenderPublicKey:authenticationCode:];
    if (codeCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [_SFIESCiphertext initWithCiphertext:ephemeralSenderPublicKey:authenticationCode:];
  if (!keyCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (codeCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [_SFIESCiphertext initWithCiphertext:ephemeralSenderPublicKey:authenticationCode:];
LABEL_4:
  v15.receiver = self;
  v15.super_class = _SFIESCiphertext;
  v11 = [(_SFCiphertext *)&v15 initWithCiphertext:ciphertextCopy];
  if (v11)
  {
    v12 = objc_alloc_init(SFIESCiphertext_Ivars);
    iesCiphertextInternal = v11->_iesCiphertextInternal;
    v11->_iesCiphertextInternal = v12;

    objc_storeStrong(v11->_iesCiphertextInternal + 1, key);
    objc_storeStrong(v11->_iesCiphertextInternal + 2, code);
  }

  return v11;
}

- (_SFIESCiphertext)initWithCoder:(id)coder
{
  v31[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = _SFIESCiphertext;
  v5 = [(_SFCiphertext *)&v27 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_alloc_init(SFIESCiphertext_Ivars);
    iesCiphertextInternal = v5->_iesCiphertextInternal;
    v5->_iesCiphertextInternal = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SFEphemeralSenderPublicKeyExternaRepresentation"];
    v9 = *MEMORY[0x277CDBFE0];
    v30[0] = *MEMORY[0x277CDC028];
    v30[1] = v9;
    v10 = *MEMORY[0x277CDC000];
    v31[0] = *MEMORY[0x277CDC030];
    v31[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v12 = SecKeyCreateWithData(v8, v11, 0);
    if (v12)
    {
      v13 = v12;
      v14 = [(_SFPublicKey *)[_SFECPublicKey alloc] initWithSecKey:v12];
      v15 = v5->_iesCiphertextInternal;
      v16 = v15[1];
      v15[1] = v14;

      v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SFIESAuthenticationCode"];
      v18 = v5->_iesCiphertextInternal;
      v19 = v18[2];
      v18[2] = v17;

      CFRelease(v13);
    }

    v20 = v5->_iesCiphertextInternal;
    if (!v20[1] || !v20[2])
    {
      v21 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to deserialize object of type %@", objc_opt_class()];
      v29 = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v24 = [v21 errorWithDomain:@"SFCryptoServicesErrorDomain" code:8 userInfo:v23];

      [coderCopy failWithError:v24];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _SFIESCiphertext;
  [(_SFCiphertext *)&v8 encodeWithCoder:coderCopy];
  error = 0;
  v5 = SecKeyCopyExternalRepresentation([*(self->_iesCiphertextInternal + 1) _secKey], &error);
  if (v5)
  {
    v6 = error == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [coderCopy encodeObject:v5 forKey:@"SFEphemeralSenderPublicKeyExternaRepresentation"];
    [coderCopy encodeObject:*(self->_iesCiphertextInternal + 2) forKey:@"SFIESAuthenticationCode"];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v13.receiver = self;
    v13.super_class = _SFIESCiphertext;
    if ([(_SFCiphertext *)&v13 isEqual:v6])
    {
      v7 = *(self->_iesCiphertextInternal + 1);
      ephemeralSenderPublicKey = [(_SFIESCiphertext *)v6 ephemeralSenderPublicKey];
      if ([v7 isEqual:ephemeralSenderPublicKey])
      {
        v9 = *(self->_iesCiphertextInternal + 2);
        authenticationCode = [(_SFIESCiphertext *)v6 authenticationCode];
        v11 = [v9 isEqual:authenticationCode];
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

- (void)initWithCiphertext:ephemeralSenderPublicKey:authenticationCode:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"ciphertext" object:? file:? lineNumber:? description:?];
}

- (void)initWithCiphertext:ephemeralSenderPublicKey:authenticationCode:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"ephemeralSenderPublicKey" object:? file:? lineNumber:? description:?];
}

- (void)initWithCiphertext:ephemeralSenderPublicKey:authenticationCode:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"authenticationCode" object:? file:? lineNumber:? description:?];
}

@end