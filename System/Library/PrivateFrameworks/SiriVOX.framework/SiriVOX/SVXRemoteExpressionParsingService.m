@interface SVXRemoteExpressionParsingService
@end

@implementation SVXRemoteExpressionParsingService

void __74___SVXRemoteExpressionParsingService_parseExpressions_targetDevice_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = [v3 parsedExpressions];
    (*(v4 + 16))(v4, 1, v5);
  }

  else
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[_SVXRemoteExpressionParsingService parseExpressions:targetDevice:reply:]_block_invoke";
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_2695B9000, v6, OS_LOG_TYPE_ERROR, "%s Got an unknown response %@ when attempting to parse expressions. Bailing", &v9, 0x16u);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, 0);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end