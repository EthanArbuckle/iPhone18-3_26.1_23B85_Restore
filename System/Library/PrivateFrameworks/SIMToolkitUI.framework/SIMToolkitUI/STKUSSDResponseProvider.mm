@interface STKUSSDResponseProvider
@end

@implementation STKUSSDResponseProvider

void __41___STKUSSDResponseProvider_sendResponse___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 24);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_262BB4000, v2, OS_LOG_TYPE_DEFAULT, "_STKUSSDResponseProvider: sendResponse: _options:%@", &v6, 0xCu);
  }

  if (*(a1 + 40) == 1)
  {
    v4 = [*(*(a1 + 32) + 16) cancelSIMToolkitUSSDSession:0];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void *__58___STKUSSDResponseProvider_sendResponse_withStringResult___block_invoke(void *result)
{
  v1 = result[6];
  if (v1 == 1)
  {
    return [*(result[4] + 16) cancelSIMToolkitUSSDSession:0];
  }

  if (!v1)
  {
    return [*(result[4] + 16) sendSIMToolkitUSSDResponse:0 response:result[5]];
  }

  return result;
}

@end