@interface _SFCiphertext
- (BOOL)isEqual:(id)a3;
- (_SFCiphertext)initWithCiphertext:(id)a3;
- (_SFCiphertext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _SFCiphertext

- (_SFCiphertext)initWithCiphertext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [_SFCiphertext initWithCiphertext:];
  }

  v10.receiver = self;
  v10.super_class = _SFCiphertext;
  v6 = [(_SFCiphertext *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(SFCiphertext_Ivars);
    ciphertextInternal = v6->_ciphertextInternal;
    v6->_ciphertextInternal = v7;

    objc_storeStrong(v6->_ciphertextInternal + 1, a3);
  }

  return v6;
}

- (_SFCiphertext)initWithCoder:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _SFCiphertext;
  v5 = [(_SFCiphertext *)&v17 init];
  if (v5)
  {
    v6 = objc_alloc_init(SFCiphertext_Ivars);
    ciphertextInternal = v5->_ciphertextInternal;
    v5->_ciphertextInternal = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SFCiphertext"];
    v9 = v5->_ciphertextInternal;
    v10 = v9[1];
    v9[1] = v8;

    if (!*(v5->_ciphertextInternal + 1))
    {
      v11 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to deserialize object of type %@", objc_opt_class()];
      v19[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v14 = [v11 errorWithDomain:@"SFCryptoServicesErrorDomain" code:8 userInfo:v13];

      [v4 failWithError:v14];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [*(self->_ciphertextInternal + 1) copy];
  v6 = v4[1];
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = *(self->_ciphertextInternal + 1);
    v7 = [(_SFCiphertext *)v5 ciphertext];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)initWithCiphertext:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"ciphertext" object:? file:? lineNumber:? description:?];
}

@end