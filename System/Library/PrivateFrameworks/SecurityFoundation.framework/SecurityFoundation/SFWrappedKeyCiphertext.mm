@interface SFWrappedKeyCiphertext
- (SFWrappedKeyCiphertext)initWithCiphertext:(id)ciphertext ciphertextKey:(id)key;
@end

@implementation SFWrappedKeyCiphertext

- (SFWrappedKeyCiphertext)initWithCiphertext:(id)ciphertext ciphertextKey:(id)key
{
  ciphertextCopy = ciphertext;
  keyCopy = key;
  v8 = keyCopy;
  if (ciphertextCopy)
  {
    if (keyCopy)
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
  v9 = [(_SFCiphertext *)&v12 initWithCiphertext:ciphertextCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9->_wrappedKeyCiphertextInternal + 1, key);
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