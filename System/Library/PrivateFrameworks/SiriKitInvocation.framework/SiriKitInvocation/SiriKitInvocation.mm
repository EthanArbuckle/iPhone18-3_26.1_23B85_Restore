id SKIDefaultLog()
{
  if (SKIDefaultLog_onceToken != -1)
  {
    SKIDefaultLog_cold_1();
  }

  v1 = SKIDefaultLog_SKIDefaultLog;

  return v1;
}

uint64_t __SKIDefaultLog_block_invoke()
{
  SKIDefaultLog_SKIDefaultLog = os_log_create(SKILogSubsystem, "SiriKitInvocation");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}