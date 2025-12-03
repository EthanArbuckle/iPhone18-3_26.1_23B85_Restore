@interface CryptexRemoteDeviceIdentifier
- (CryptexRemoteDeviceIdentifier)initWithChipInstance:(const _img4_chip_instance *)instance;
- (void)dealloc;
@end

@implementation CryptexRemoteDeviceIdentifier

- (CryptexRemoteDeviceIdentifier)initWithChipInstance:(const _img4_chip_instance *)instance
{
  v15 = *MEMORY[0x29EDCA608];
  v12.receiver = self;
  v12.super_class = CryptexRemoteDeviceIdentifier;
  v4 = [(CryptexRemoteDeviceIdentifier *)&v12 init];
  v5 = malloc_type_calloc(1uLL, 0x90uLL, 0x8709206FuLL);
  if (!v5)
  {
    [(CryptexRemoteDeviceIdentifier *)&v13 initWithChipInstance:v14];
  }

  v4->_inst = v5;
  v6 = *&instance->var17.var2[32];
  *&v5->var17.var2[16] = *&instance->var17.var2[16];
  *&v5->var17.var2[32] = v6;
  *&v5->var18 = *&instance->var18;
  v7 = *&instance->var8;
  *&v5->var5 = *&instance->var5;
  *&v5->var8 = v7;
  v8 = *instance->var17.var2;
  *&v5->var17.var0 = *&instance->var17.var0;
  *v5->var17.var2 = v8;
  v9 = *&instance->var2;
  *&v5->var0 = *&instance->var0;
  *&v5->var2 = v9;
  v10 = *MEMORY[0x29EDCA608];
  return v4;
}

- (void)dealloc
{
  inst = self->_inst;
  if (inst)
  {
    free(inst);
    self->_inst = 0;
  }

  v4.receiver = self;
  v4.super_class = CryptexRemoteDeviceIdentifier;
  [(CryptexRemoteDeviceIdentifier *)&v4 dealloc];
}

- (void)initWithChipInstance:(void *)a1 .cold.1(void *a1, _OWORD *a2)
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