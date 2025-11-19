@interface _SFSymmetricKey
- (_SFSymmetricKey)initWithData:(id)a3 specifier:(id)a4 error:(id *)a5;
- (id)initRandomKeyWithSpecifier:(id)a3 error:(id *)a4;
@end

@implementation _SFSymmetricKey

- (id)initRandomKeyWithSpecifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    [_SFSymmetricKey initRandomKeyWithSpecifier:error:];
  }

  v7 = [v6 keyLengthInBytes];
  v8 = malloc_type_malloc(v7, 0xF3B8A818uLL);
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], v7, v8))
  {
    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"SFKeychainErrorDomain" code:3 userInfo:0];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CBEA90]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52___SFSymmetricKey_initRandomKeyWithSpecifier_error___block_invoke;
    v13[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
    v13[4] = v7;
    v11 = [v10 initWithBytesNoCopy:v8 length:v7 deallocator:v13];
    self = [(_SFSymmetricKey *)self initWithData:v11 specifier:v6 error:a4];

    v9 = self;
  }

  return v9;
}

- (_SFSymmetricKey)initWithData:(id)a3 specifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_SFSymmetricKey initWithData:specifier:error:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [_SFSymmetricKey initWithData:specifier:error:];
LABEL_3:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    v12 = [v8 length];
    if (v12 == [v11 keyLengthInBytes])
    {
      v13 = [objc_msgSend(objc_msgSend(objc_opt_class() "_attributesClass")];
      v26.receiver = self;
      v26.super_class = _SFSymmetricKey;
      v14 = [(_SFKey *)&v26 initWithAttributes:v13];

      if (v14)
      {
        v15 = objc_alloc_init(SFSymmetricKey_Ivars);
        symmetricKeyInternal = v14->_symmetricKeyInternal;
        v14->_symmetricKeyInternal = v15;

        v17 = [v8 length];
        v18 = malloc_type_malloc(v17, 0x8BE9CEC6uLL);
        memcpy(v18, [v8 bytes], v17);
        v19 = objc_alloc(MEMORY[0x277CBEA90]);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __48___SFSymmetricKey_initWithData_specifier_error___block_invoke;
        v25[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
        v25[4] = v17;
        v20 = [v19 initWithBytesNoCopy:v18 length:v17 deallocator:v25];
        v21 = v14->_symmetricKeyInternal;
        v22 = v21[1];
        v21[1] = v20;
      }

      self = v14;
      v23 = self;
    }

    else if (a5)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"SFKeychainErrorDomain" code:2 userInfo:0];
      *a5 = v23 = 0;
    }

    else
    {
      v23 = 0;
    }
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:4 userInfo:0];
    *a5 = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)initRandomKeyWithSpecifier:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"specifier" object:? file:? lineNumber:? description:?];
}

- (void)initWithData:specifier:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"data" object:? file:? lineNumber:? description:?];
}

- (void)initWithData:specifier:error:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"keySpecifier2" object:? file:? lineNumber:? description:?];
}

@end