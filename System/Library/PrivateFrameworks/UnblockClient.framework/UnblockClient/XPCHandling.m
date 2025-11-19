@interface XPCHandling
@end

@implementation XPCHandling

int *__62__UBUnblockClient_XPCHandling__openConnectionToUnblockService__block_invoke(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x27439FD10](a2);
  if (result != MEMORY[0x277D86480])
  {
    v3 = *__error();
    v4 = _ublogt();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__UBUnblockClient_XPCHandling__openConnectionToUnblockService__block_invoke_cold_1();
    }

    result = __error();
    *result = v3;
  }

  return result;
}

id __70__UBUnblockClient_XPCHandling__handleRecoverReply_input_services_err___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "pid")}];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = v6;
  if (!v6)
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "pid")}];
    [v8 setObject:v3 forKeyedSubscript:v9];

    v7 = v3;
  }

  v10 = v7;

  return v10;
}

@end