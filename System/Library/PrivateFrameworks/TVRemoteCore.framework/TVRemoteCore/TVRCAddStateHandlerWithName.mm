@interface TVRCAddStateHandlerWithName
@end

@implementation TVRCAddStateHandlerWithName

_DWORD *___TVRCAddStateHandlerWithName_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = (*(*(a1 + 32) + 16))();
  v11 = 0;
  v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:v2 format:100 options:0 error:&v11];
  v4 = v11;
  if (v4)
  {
    v5 = _TVRCGeneralLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 136315394;
      v13 = v6;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Error serializing state data for %s: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v7 = malloc_type_calloc(1uLL, [v3 length] + 200, 0x1000040BEF03554uLL);
    if (v7)
    {
      v8 = *(a1 + 40);
      __strlcpy_chk();
      *v7 = 1;
      v7[1] = [v3 length];
      memcpy(v7 + 50, [v3 bytes], objc_msgSend(v3, "length"));
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

@end