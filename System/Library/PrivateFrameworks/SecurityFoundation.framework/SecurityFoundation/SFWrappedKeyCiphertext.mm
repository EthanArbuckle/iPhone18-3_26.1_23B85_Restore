@interface SFWrappedKeyCiphertext
- (SFWrappedKeyCiphertext)initWithCiphertext:(id)a3 ciphertextKey:(id)a4;
@end

@implementation SFWrappedKeyCiphertext

- (SFWrappedKeyCiphertext)initWithCiphertext:(id)a3 ciphertextKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SFWrappedKeyCiphertext initWithCiphertext:ciphertextKey:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [SFWrappedKeyCiphertext initWithCiphertext:ciphertextKey:];
LABEL_3:
  v12.receiver = self;
  v12.super_class = SFWrappedKeyCiphertext;
  v9 = [(_SFCiphertext *)&v12 initWithCiphertext:v6];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9->_wrappedKeyCiphertextInternal + 1, a4);
  }

  return v10;
}

- (void)initWithCiphertext:ciphertextKey:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"ciphertext" object:? file:? lineNumber:? description:?];
}

- (void)initWithCiphertext:ciphertextKey:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"ciphertextKey" object:? file:? lineNumber:? description:?];
}

@end