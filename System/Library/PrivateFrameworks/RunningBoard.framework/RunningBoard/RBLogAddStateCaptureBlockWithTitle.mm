@interface RBLogAddStateCaptureBlockWithTitle
@end

@implementation RBLogAddStateCaptureBlockWithTitle

_DWORD *___RBLogAddStateCaptureBlockWithTitle_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1 && *(a2 + 16) != 3)
  {
    return 0;
  }

  v3 = *(a1 + 40);
  v4 = (*(*(a1 + 40) + 16))();
  v18 = 0;
  v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:v4 format:200 options:0 error:&v18];
  v6 = v18;
  if (v5 && ([v5 length] + 200) <= 0x8000)
  {
    v7 = [v5 length];
    v8 = malloc_type_calloc(1uLL, v7 + 200, 0x1000040BEF03554uLL);
    *v8 = 1;
    v8[1] = v7;
    [*(a1 + 32) UTF8String];
    __strlcpy_chk();
    memcpy(v8 + 50, [v5 bytes], v7);
  }

  else
  {
    v9 = rbs_state_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v10)
      {
        ___RBLogAddStateCaptureBlockWithTitle_block_invoke_cold_1(a1, v6, v9);
      }
    }

    else if (v10)
    {
      ___RBLogAddStateCaptureBlockWithTitle_block_invoke_cold_2(a1, v9, v11, v12, v13, v14, v15, v16);
    }

    v8 = 0;
  }

  return v8;
}

void ___RBLogAddStateCaptureBlockWithTitle_block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [a2 localizedDescription];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_262485000, a3, OS_LOG_TYPE_ERROR, "Error: RBLogAddStateCaptureBlockWithTitle(%@) state data format error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void ___RBLogAddStateCaptureBlockWithTitle_block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_2_2(&dword_262485000, a2, a3, "Error: RBLogAddStateCaptureBlockWithTitle(%@) cannot capture state data larger than 32KB", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end