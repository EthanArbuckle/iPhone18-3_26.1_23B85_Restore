@interface SDRGetAllLogFileURLs
@end

@implementation SDRGetAllLogFileURLs

void ___SDRGetAllLogFileURLs_block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    *buf = 134217984;
    v23 = [v3 count];
    _os_log_impl(&dword_26C35F000, v5, OS_LOG_TYPE_INFO, "SDRDiagnosticReporter - retrieved configuration dictionary with %ld contents", buf, 0xCu);
  }

  if (v3)
  {
    v6 = [v3 objectForKeyedSubscript:@"logArchivePath"];
  }

  else
  {
    v6 = 0;
  }

  if ([v6 length])
  {
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
    if (v7)
    {
      v8 = [MEMORY[0x277CCAA00] defaultManager];
      v21 = *MEMORY[0x277CBF178];
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
      v20 = 0;
      v10 = [v8 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:v9 options:0 error:&v20];
      v11 = v20;
      v12 = v20;
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v10;

      v15 = *(a1 + 32);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(*(*(a1 + 48) + 8) + 40);
        v17 = v15;
        v18 = [v16 count];
        *buf = 134217984;
        v23 = v18;
        _os_log_impl(&dword_26C35F000, v17, OS_LOG_TYPE_INFO, "SDRDiagnosticReporter - finished enumeration with %ld entries", buf, 0xCu);
      }

      if (v12)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEBUG))
        {
          ___SDRGetAllLogFileURLs_block_invoke_cold_1();
        }

        objc_storeStrong((*(*(a1 + 56) + 8) + 40), v11);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v19 = *MEMORY[0x277D85DE8];
}

void ___SDRGetAllLogFileURLs_block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end