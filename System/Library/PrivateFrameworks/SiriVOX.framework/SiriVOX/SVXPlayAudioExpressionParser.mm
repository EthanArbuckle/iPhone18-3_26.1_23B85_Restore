@interface SVXPlayAudioExpressionParser
@end

@implementation SVXPlayAudioExpressionParser

void __54___SVXPlayAudioExpressionParser_parsePlayAudio_reply___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [v5 firstObject];
    v8 = MEMORY[0x277CEF098];
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v16 = 136315394;
      v17 = "[_SVXPlayAudioExpressionParser parsePlayAudio:reply:]_block_invoke";
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s Service successfully parsed expression: %@", &v16, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = *(a1 + 40);
      v11 = [v7 attachment];
      (*(v10 + 16))(v10, 1, v11);
    }

    else
    {
      v13 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        v16 = 136315394;
        v17 = "[_SVXPlayAudioExpressionParser parsePlayAudio:reply:]_block_invoke";
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s Parsed expression has no data: %@", &v16, 0x16u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v12 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = 136315394;
      v17 = "[_SVXPlayAudioExpressionParser parsePlayAudio:reply:]_block_invoke";
      v18 = 2112;
      v19 = v15;
      _os_log_error_impl(&dword_2695B9000, v12, OS_LOG_TYPE_ERROR, "%s Service failed to parse expression: %@", &v16, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end