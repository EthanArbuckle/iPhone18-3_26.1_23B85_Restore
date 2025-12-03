@interface CalypsoReaderContext
- (id)readAll:(id)all withFileMapping:(id)mapping debug:(BOOL)debug error:(id *)error;
- (void)dumpAllFiles;
@end

@implementation CalypsoReaderContext

- (id)readAll:(id)all withFileMapping:(id)mapping debug:(BOOL)debug error:(id *)error
{
  debugCopy = debug;
  v49 = *MEMORY[0x277D85DE8];
  allCopy = all;
  mappingCopy = mapping;
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(mappingCopy, "count")}];
  selfCopy = self;
  [(CalypsoReaderContext *)self setFiles:v10];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = mappingCopy;
  v34 = [v11 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v34)
  {
    v35 = *v41;
    v36 = v11;
    while (2)
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(v11);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        v14 = ATLLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = [v11 objectForKeyedSubscript:v13];
          *buf = 138412546;
          v45 = v13;
          v46 = 2112;
          v47 = v15;
          _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_DEBUG, "sfi=%@ value=%@", buf, 0x16u);
        }

        v38 = v13;
        v16 = [v11 objectForKeyedSubscript:v13];
        v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
        v18 = [v16 objectForKeyedSubscript:@"sfi"];
        unsignedCharValue = [v18 unsignedCharValue];

        v20 = [v16 objectForKeyedSubscript:@"numRecords"];
        unsignedCharValue2 = [v20 unsignedCharValue];

        if (unsignedCharValue2)
        {
          v22 = 1;
          while (1)
          {
            v39 = 0;
            v23 = [CalypsoReaderContext readRecord:allCopy sfi:unsignedCharValue index:v22 recLength:0 error:&v39];
            v24 = v39;
            if (v24)
            {
              break;
            }

            if (v23)
            {
              v25 = [CalypsoRecord withRecordSfi:unsignedCharValue recordNumber:v22 recordData:v23];
              [v17 addObject:v25];
            }

            if (unsignedCharValue2 < ++v22)
            {
              goto LABEL_14;
            }
          }

          v28 = v24;
          if (error)
          {
            v29 = v24;
            *error = v28;
          }

          v11 = v36;
          v27 = 0;
          goto LABEL_22;
        }

LABEL_14:
        files = [(CalypsoReaderContext *)selfCopy files];
        [files setObject:v17 forKeyedSubscript:v38];

        v11 = v36;
      }

      v34 = [v36 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  if (debugCopy)
  {
    [(CalypsoReaderContext *)selfCopy dumpAllFiles];
  }

  v27 = selfCopy;
LABEL_22:

  v30 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)dumpAllFiles
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = ATLLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_INFO, "--- CALYPSO DUMP BEGIN --", buf, 2u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  files = [(CalypsoReaderContext *)self files];
  v5 = [files countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(files);
        }

        v11 = *(*(&v15 + 1) + 8 * v9);
        files2 = [(CalypsoReaderContext *)self files];
        v7 = [files2 objectForKeyedSubscript:v11];

        [v7 enumerateObjectsUsingBlock:&__block_literal_global_4];
        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [files countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = ATLLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_INFO, "--- CALYPSO DUMP END --", buf, 2u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __36__CalypsoReaderContext_dumpAllFiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = [v2 data];
  v3 = v10;
  v4 = [v10 bytes];
  v5 = [v2 data];
  v6 = [v5 length];
  v7 = [v2 sfi];
  [v2 number];

  LogBinary(OS_LOG_TYPE_DEFAULT, "[CalypsoReaderContext dumpAllFiles]_block_invoke", 94, v4, v6, @"    SFI 0x%02X record %u", v8, v9, v7);
}

@end