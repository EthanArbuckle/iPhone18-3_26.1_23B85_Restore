@interface DreamworksReaderContext
- (id)readAll:(id)a3 debug:(BOOL)a4 error:(id *)a5;
- (id)readBalance:(id)a3 error:(id *)a4;
- (id)readTransSN:(id)a3 error:(id *)a4;
- (void)dumpAllFiles;
@end

@implementation DreamworksReaderContext

- (id)readAll:(id)a3 debug:(BOOL)a4 error:(id *)a5
{
  v82[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v70 = 0;
  v69 = 61824;
  v9 = [v8 transceiveBytesAndCheckSW:&v69 length:5 error:a5];
  v10 = v9;
  if (v9 && [v9 length] > 0x8F)
  {
    v21 = *([v10 bytes] + 52);
    v22 = __rev16(v21);
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
    [(DreamworksReaderContext *)self setFilePurseMaxRecCount:v23];

    v13 = [(DreamworksReaderContext *)self readBalance:v8 error:a5];
    if (v13)
    {
      [(DreamworksReaderContext *)self setBalance:v13];
      v24 = [(DreamworksReaderContext *)self readRecord:v8 sfi:2 index:1 error:a5];
      if ([v24 length] == 51)
      {
        v64 = a4;
        v65 = v24;
        v66 = v13;
        [(DreamworksReaderContext *)self setFilePurseInfo:v24];
        v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:v22];
        [(DreamworksReaderContext *)self setFilePurse:v25];

        if (v21)
        {
          v26 = 1;
          do
          {
            v27 = [(DreamworksReaderContext *)self readRecord:v8 sfi:4 index:v26 error:a5];
            if ([v27 length] == 46 && (objc_msgSend(v27, "isAll00") & 1) == 0)
            {
              v28 = [(DreamworksReaderContext *)self filePurse];
              v29 = [DreamworksPurseRecord recordNumber:v26 recordData:v27];
              [v28 addObject:v29];
            }

            ++v26;
          }

          while (v22 >= v26);
        }

        v30 = [(DreamworksReaderContext *)self filePurse];
        [DreamworksPurseRecord adjustRecords:v30];

        v67 = [(DreamworksReaderContext *)self readTransSN:v8 error:a5];
        v31 = [v67 count];
        v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:v31];
        [(DreamworksReaderContext *)self setFileTrans:v32];

        if (v31)
        {
          v33 = 1;
          for (i = 1; i <= v31; v33 = ++i)
          {
            v35 = [(DreamworksReaderContext *)self readRecord:v8 sfi:3 index:i error:a5];
            if ([v35 length] == 52 && (objc_msgSend(v35, "isAll00") & 1) == 0)
            {
              v36 = [(DreamworksReaderContext *)self fileTrans];
              v37 = [v67 objectAtIndexedSubscript:v33 - 1];
              v38 = +[DreamworksTransRecord recordNumber:recordData:seqnum:](DreamworksTransRecord, "recordNumber:recordData:seqnum:", i, v35, [v37 unsignedIntValue]);
              [v36 addObject:v38];
            }
          }
        }

        if (v64)
        {
          [(DreamworksReaderContext *)self dumpAllFiles];
        }

        v39 = self;
        v24 = v65;
        v13 = v66;
        v40 = v67;
      }

      else
      {
        v51 = ATLLogObject();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22EEF5000, v51, OS_LOG_TYPE_ERROR, "Failed to read EF_Purse_Info", buf, 2u);
        }

        v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to read EF_Purse_Info"];
        v40 = v52;
        if (a5)
        {
          v53 = *a5;
          v54 = MEMORY[0x277CCA9B8];
          v55 = *MEMORY[0x277CCA450];
          if (*a5)
          {
            v56 = *MEMORY[0x277CCA7E8];
            v71[0] = *MEMORY[0x277CCA450];
            v71[1] = v56;
            v72[0] = v52;
            v72[1] = v53;
            v57 = MEMORY[0x277CBEAC0];
            v58 = v72;
            v59 = v71;
            v60 = 2;
          }

          else
          {
            v73 = *MEMORY[0x277CCA450];
            v74 = v52;
            v57 = MEMORY[0x277CBEAC0];
            v58 = &v74;
            v59 = &v73;
            v60 = 1;
          }

          v61 = [v57 dictionaryWithObjects:v58 forKeys:v59 count:v60];
          *a5 = [v54 errorWithDomain:@"ATL" code:5 userInfo:v61];
        }

        v39 = 0;
      }
    }

    else
    {
      v41 = ATLLogObject();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v41, OS_LOG_TYPE_ERROR, "Failed to get balance", buf, 2u);
      }

      v42 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to get balance"];
      v24 = v42;
      if (!a5)
      {
        v39 = 0;
        goto LABEL_45;
      }

      v43 = *a5;
      v44 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA450];
      if (*a5)
      {
        v46 = *MEMORY[0x277CCA7E8];
        v75[0] = *MEMORY[0x277CCA450];
        v75[1] = v46;
        v76[0] = v42;
        v76[1] = v43;
        v47 = MEMORY[0x277CBEAC0];
        v48 = v76;
        v49 = v75;
        v50 = 2;
      }

      else
      {
        v77 = *MEMORY[0x277CCA450];
        v78 = v42;
        v47 = MEMORY[0x277CBEAC0];
        v48 = &v78;
        v49 = &v77;
        v50 = 1;
      }

      v40 = [v47 dictionaryWithObjects:v48 forKeys:v49 count:v50];
      [v44 errorWithDomain:@"ATL" code:5 userInfo:v40];
      *a5 = v39 = 0;
    }

    goto LABEL_45;
  }

  v11 = ATLLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "Failed to get correct signed state", buf, 2u);
  }

  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to get correct signed state"];
  v13 = v12;
  if (!a5)
  {
    v39 = 0;
    goto LABEL_46;
  }

  v14 = *a5;
  v15 = MEMORY[0x277CCA9B8];
  if (*a5)
  {
    v16 = *MEMORY[0x277CCA7E8];
    v79[0] = *MEMORY[0x277CCA450];
    v79[1] = v16;
    v80[0] = v12;
    v80[1] = v14;
    v17 = MEMORY[0x277CBEAC0];
    v18 = v80;
    v19 = v79;
    v20 = 2;
  }

  else
  {
    v81 = *MEMORY[0x277CCA450];
    v82[0] = v12;
    v17 = MEMORY[0x277CBEAC0];
    v18 = v82;
    v19 = &v81;
    v20 = 1;
  }

  v24 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
  [v15 errorWithDomain:@"ATL" code:5 userInfo:v24];
  *a5 = v39 = 0;
LABEL_45:

LABEL_46:
  v62 = *MEMORY[0x277D85DE8];

  return v39;
}

- (void)dumpAllFiles
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = ATLLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_INFO, "--- Dreamworks DUMP BEGIN --", v16, 2u);
  }

  v4 = ATLLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(DreamworksReaderContext *)self balance];
    *v16 = 138412290;
    *&v16[4] = v5;
    _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_INFO, "    Balance File %@", v16, 0xCu);
  }

  v6 = [(DreamworksReaderContext *)self filePurseInfo];
  v7 = [v6 bytes];
  v8 = [(DreamworksReaderContext *)self filePurseInfo];
  v9 = [v8 length];
  LogBinary(OS_LOG_TYPE_DEFAULT, "[DreamworksReaderContext dumpAllFiles]", 109, v7, v9, @"    SFI 0x02:", v10, v11, *v16);

  v12 = [(DreamworksReaderContext *)self filePurse];
  [v12 enumerateObjectsUsingBlock:&__block_literal_global_2];

  v13 = [(DreamworksReaderContext *)self fileTrans];
  [v13 enumerateObjectsUsingBlock:&__block_literal_global_752];

  v14 = ATLLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_INFO, "--- Dreamworks DUMP END --", v16, 2u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __39__DreamworksReaderContext_dumpAllFiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = [v2 data];
  v3 = v10;
  v4 = [v10 bytes];
  v5 = [v2 data];
  v6 = [v5 length];
  v7 = [v2 number];
  [v2 seqnum];

  LogBinary(OS_LOG_TYPE_DEFAULT, "[DreamworksReaderContext dumpAllFiles]_block_invoke", 112, v4, v6, @"    Purse file record %u (SN 0x%X)", v8, v9, v7);
}

void __39__DreamworksReaderContext_dumpAllFiles__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = [v2 data];
  v3 = v10;
  v4 = [v10 bytes];
  v5 = [v2 data];
  v6 = [v5 length];
  v7 = [v2 number];
  [v2 seqnum];

  LogBinary(OS_LOG_TYPE_DEFAULT, "[DreamworksReaderContext dumpAllFiles]_block_invoke_2", 115, v4, v6, @"    Trans file record %u (SN 0x%X)", v8, v9, v7);
}

- (id)readTransSN:(id)a3 error:(id *)a4
{
  v12 = 0;
  v11 = 130688;
  v4 = [a3 transceiveBytesAndCheckSW:&v11 length:5 error:a4];
  v5 = [v4 length];
  if (v5 >= 4)
  {
    v7 = v5;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v5 >> 2];
    for (i = 0; i < v7; i += 4)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "u32BE:", i)}];
      [v6 addObject:v9];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)readBalance:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [a3 transceiveBytesAndCheckSW:&readBalance_error__getBalanceCmd length:5 error:a4];
  v6 = v5;
  if (v5 && [v5 length] == 4)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*objc_msgSend(v6, "bytes"))}];
  }

  else
  {
    v8 = ATLLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v27 = [v6 length];
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Failed or short balance %u", buf, 8u);
    }

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed or short balance %u", objc_msgSend(v6, "length")];
    v10 = v9;
    if (a4)
    {
      v11 = *a4;
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA450];
      if (*a4)
      {
        v14 = *MEMORY[0x277CCA7E8];
        v22[0] = *MEMORY[0x277CCA450];
        v22[1] = v14;
        v23[0] = v9;
        v23[1] = v11;
        v15 = MEMORY[0x277CBEAC0];
        v16 = v23;
        v17 = v22;
        v18 = 2;
      }

      else
      {
        v24 = *MEMORY[0x277CCA450];
        v25 = v9;
        v15 = MEMORY[0x277CBEAC0];
        v16 = &v25;
        v17 = &v24;
        v18 = 1;
      }

      v19 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
      *a4 = [v12 errorWithDomain:@"ATL" code:5 userInfo:v19];
    }

    v7 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

@end