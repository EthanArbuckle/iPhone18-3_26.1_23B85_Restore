@interface CryptexRemoteServiceNonce
- (CryptexRemoteServiceNonce)initWithNonce:(const _img4_nonce *)a3;
- (void)dealloc;
@end

@implementation CryptexRemoteServiceNonce

- (CryptexRemoteServiceNonce)initWithNonce:(const _img4_nonce *)a3
{
  v12 = *MEMORY[0x29EDCA608];
  v9.receiver = self;
  v9.super_class = CryptexRemoteServiceNonce;
  v4 = [(CryptexRemoteServiceNonce *)&v9 init];
  v5 = malloc_type_calloc(1uLL, 0x38uLL, 0x8709206FuLL);
  if (!v5)
  {
    [(CryptexRemoteServiceNonce *)&v10 initWithNonce:v11];
  }

  v4->_nonce = v5;
  v6 = *&a3->var1[14];
  *&v5->var0 = *&a3->var0;
  *&v5->var1[14] = v6;
  *&v5->var1[30] = *&a3->var1[30];
  *&v5->var1[46] = *&a3->var1[46];
  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

- (void)dealloc
{
  if ([(CryptexRemoteServiceNonce *)self nonce])
  {
    free(self->_nonce);
    self->_nonce = 0;
  }

  v3.receiver = self;
  v3.super_class = CryptexRemoteServiceNonce;
  [(CryptexRemoteServiceNonce *)&v3 dealloc];
}

- (void)initWithNonce:(void *)a1 .cold.1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

@end