@interface WuluReaderContext
- (id)readAll:(id)all debug:(BOOL)debug error:(id *)error;
- (id)readBalance:(id)balance error:(id *)error;
- (void)dumpAllFiles;
- (void)readAdditionalFile:(id)file cityCode:(id)code;
@end

@implementation WuluReaderContext

- (id)readAll:(id)all debug:(BOOL)debug error:(id *)error
{
  debugCopy = debug;
  v99[1] = *MEMORY[0x277D85DE8];
  allCopy = all;
  v9 = [(WuluReaderContext *)self readBalance:allCopy error:error];
  v10 = v9;
  if (!v9)
  {
    v25 = ATLLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Failed to get balance", buf, 2u);
    }

    v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to get balance"];
    v18 = v26;
    if (error)
    {
      v27 = *error;
      v20 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v29 = *MEMORY[0x277CCA7E8];
        v96[0] = *MEMORY[0x277CCA450];
        v96[1] = v29;
        v97[0] = v26;
        v97[1] = v27;
        v22 = MEMORY[0x277CBEAC0];
        v23 = v97;
        v24 = v96;
        goto LABEL_14;
      }

      v98 = *MEMORY[0x277CCA450];
      v99[0] = v26;
      v22 = MEMORY[0x277CBEAC0];
      v23 = v99;
      v24 = &v98;
LABEL_56:
      v30 = 1;
      goto LABEL_57;
    }

LABEL_42:
    selfCopy = 0;
    goto LABEL_65;
  }

  v11 = [v9 objectAtIndexedSubscript:0];
  [(WuluReaderContext *)self setBalance:v11];

  v12 = [v10 objectAtIndexedSubscript:1];
  [(WuluReaderContext *)self setOverdraft:v12];

  balance = [(WuluReaderContext *)self balance];
  if (![balance unsignedIntValue])
  {

    goto LABEL_16;
  }

  overdraft = [(WuluReaderContext *)self overdraft];
  unsignedIntValue = [overdraft unsignedIntValue];

  if (!unsignedIntValue)
  {
LABEL_16:
    v18 = [(WuluReaderContext *)self readBinary:allCopy sfi:21 error:error];
    if ([v18 length] != 30)
    {
      v56 = ATLLogObject();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v56, OS_LOG_TYPE_ERROR, "Failed to read SFI 15", buf, 2u);
      }

      v57 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to read SFI 15"];
      v31 = v57;
      if (error)
      {
        v58 = *error;
        v59 = MEMORY[0x277CCA9B8];
        v60 = *MEMORY[0x277CCA450];
        if (*error)
        {
          v61 = *MEMORY[0x277CCA7E8];
          v88[0] = *MEMORY[0x277CCA450];
          v88[1] = v61;
          v89[0] = v57;
          v89[1] = v58;
          v62 = MEMORY[0x277CBEAC0];
          v63 = v89;
          v64 = v88;
          v65 = 2;
        }

        else
        {
          v90 = *MEMORY[0x277CCA450];
          v91 = v57;
          v62 = MEMORY[0x277CBEAC0];
          v63 = &v91;
          v64 = &v90;
          v65 = 1;
        }

        v54 = [v62 dictionaryWithObjects:v63 forKeys:v64 count:v65];
        [v59 errorWithDomain:@"ATL" code:5 userInfo:v54];
        *error = selfCopy = 0;
        goto LABEL_63;
      }

      selfCopy = 0;
      goto LABEL_64;
    }

    [(WuluReaderContext *)self setFile15:v18];
    v31 = [(WuluReaderContext *)self readBinary:allCopy sfi:23 error:error];
    if ([v31 length] != 60)
    {
      v66 = ATLLogObject();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v66, OS_LOG_TYPE_ERROR, "Failed to read SFI 17", buf, 2u);
      }

      v67 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to read SFI 17"];
      v54 = v67;
      if (error)
      {
        v68 = *error;
        v69 = MEMORY[0x277CCA9B8];
        v70 = *MEMORY[0x277CCA450];
        if (*error)
        {
          v71 = *MEMORY[0x277CCA7E8];
          v84[0] = *MEMORY[0x277CCA450];
          v84[1] = v71;
          v85[0] = v67;
          v85[1] = v68;
          v72 = MEMORY[0x277CBEAC0];
          v73 = v85;
          v74 = v84;
          v75 = 2;
        }

        else
        {
          v86 = *MEMORY[0x277CCA450];
          v87 = v67;
          v72 = MEMORY[0x277CBEAC0];
          v73 = &v87;
          v74 = &v86;
          v75 = 1;
        }

        v76 = [v72 dictionaryWithObjects:v73 forKeys:v74 count:v75];
        *error = [v69 errorWithDomain:@"ATL" code:5 userInfo:v76];
      }

      selfCopy = 0;
LABEL_63:

      goto LABEL_64;
    }

    v81 = debugCopy;
    v79 = v31;
    v80 = v18;
    [(WuluReaderContext *)self setFile17:v31];
    v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
    [(WuluReaderContext *)self setFile18:v32];

    v33 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
    [(WuluReaderContext *)self setFile1E:v33];

    v34 = 1;
    while (1)
    {
      v35 = [(WuluReaderContext *)self readRecord:allCopy sfi:24 index:v34 error:error];
      if ([v35 length] == 23 && (objc_msgSend(v35, "isAll00") & 1) == 0)
      {
        file18 = [(WuluReaderContext *)self file18];
        v37 = +[WuluRecord withRecordSfi:recordNumber:recordData:associatedSerialNumber:](WuluRecord, "withRecordSfi:recordNumber:recordData:associatedSerialNumber:", 24, v34, v35, bswap32(*[v35 bytes]) >> 16);
        [file18 addObject:v37];
      }

      v38 = [(WuluReaderContext *)self readExtendedRecord:allCopy sfi:30 index:v34 error:error];
      data = [v38 data];
      if ([data length] != 48)
      {
        goto LABEL_25;
      }

      data2 = [v38 data];
      isAll00 = [data2 isAll00];

      if ((isAll00 & 1) == 0)
      {
        break;
      }

LABEL_26:

      v42 = v34++;
      if (v42 >= 0xA)
      {
        v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
        [(WuluReaderContext *)self setFile1A:v43];

        v44 = 0;
        while (1)
        {
          v45 = readAll_debug_error__file1A_indices[v44];
          v46 = [(WuluReaderContext *)self readExtendedRecord:allCopy sfi:26 index:readAll_debug_error__file1A_indices[v44] error:0];
          v47 = v46;
          if (!v46)
          {
            break;
          }

          data3 = [v46 data];
          v49 = *([data3 bytes] + 14);

          if (v49)
          {
            file1A = [(WuluReaderContext *)self file1A];
            [file1A addObject:v47];
            goto LABEL_37;
          }

          if (v81)
          {
            file1A = ATLLogObject();
            if (os_log_type_enabled(file1A, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              v83 = v45;
              v51 = file1A;
              v52 = "SFI 0x1A index %d is not initialized";
LABEL_36:
              _os_log_impl(&dword_22EEF5000, v51, OS_LOG_TYPE_DEFAULT, v52, buf, 8u);
            }

            goto LABEL_37;
          }

LABEL_38:

          if (++v44 == 3)
          {
            file17 = [(WuluReaderContext *)self file17];
            v54 = [file17 subdataWithOffset:6 length:2];

            [(WuluReaderContext *)self readAdditionalFile:allCopy cityCode:v54];
            if (v81)
            {
              [(WuluReaderContext *)self dumpAllFiles];
            }

            selfCopy = self;
            v31 = v79;
            v18 = v80;
            goto LABEL_63;
          }
        }

        file1A = ATLLogObject();
        if (os_log_type_enabled(file1A, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v83 = v45;
          v51 = file1A;
          v52 = "Failed to get SFI 0x1A index %u";
          goto LABEL_36;
        }

LABEL_37:

        goto LABEL_38;
      }
    }

    data = [(WuluReaderContext *)self file1E];
    [data addObject:v38];
LABEL_25:

    goto LABEL_26;
  }

  v16 = ATLLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_ERROR, "Balance and overdraft are not consistent.", buf, 2u);
  }

  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Balance and overdraft are not consistent."];
  v18 = v17;
  if (!error)
  {
    goto LABEL_42;
  }

  v19 = *error;
  v20 = MEMORY[0x277CCA9B8];
  if (!*error)
  {
    v94 = *MEMORY[0x277CCA450];
    v95 = v17;
    v22 = MEMORY[0x277CBEAC0];
    v23 = &v95;
    v24 = &v94;
    goto LABEL_56;
  }

  v21 = *MEMORY[0x277CCA7E8];
  v92[0] = *MEMORY[0x277CCA450];
  v92[1] = v21;
  v93[0] = v17;
  v93[1] = v19;
  v22 = MEMORY[0x277CBEAC0];
  v23 = v93;
  v24 = v92;
LABEL_14:
  v30 = 2;
LABEL_57:
  v31 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v30];
  [v20 errorWithDomain:@"ATL" code:5 userInfo:v31];
  *error = selfCopy = 0;
LABEL_64:

LABEL_65:
  v77 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (void)readAdditionalFile:(id)file cityCode:(id)code
{
  v83[3] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  codeCopy = code;
  v8 = +[AppletConfigurationData getWuluSettings];
  v9 = [v8 objectForKeyedSubscript:@"cityRules"];
  asHexString = [codeCopy asHexString];
  v11 = [v9 objectForKeyedSubscript:asHexString];

  if (!v11)
  {
    v31 = ATLLogObject();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    *buf = 138412290;
    v77 = codeCopy;
    v32 = "Configuration does not define city rules for city code %@";
    goto LABEL_40;
  }

  unsignedIntValue = [v11 unsignedIntValue];
  if ((unsignedIntValue - 7) < 2 || unsignedIntValue == 5)
  {
    v14 = +[AppletConfigurationData getWuluSettings];
    v15 = [v14 objectForKeyedSubscript:@"localLogSettings"];
    asHexString2 = [codeCopy asHexString];
    v17 = [v15 objectForKeyedSubscript:asHexString2];

    if (v17)
    {
      v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
      [(WuluReaderContext *)self setLocalRecords:v18];

      v19 = [v17 objectForKey:@"localRecordSfi"];
      v64 = v17;
      v20 = [v17 objectForKey:@"localRecordId"];
      v21 = v20;
      if (!v19 || !v20)
      {
        v27 = ATLLogObject();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v77 = codeCopy;
          _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_DEFAULT, "Local log data is not retrived from settings for city %@.", buf, 0xCu);
        }

        goto LABEL_64;
      }

      v60 = v11;
      v22 = [MEMORY[0x277CBEA90] dataWithHexString:v19];
      v23 = [v22 u8:0];

      v24 = [MEMORY[0x277CBEA90] dataWithHexString:v21];
      v25 = [v24 u8:0];

      v26 = [(WuluReaderContext *)self readWuluRecord:fileCopy sfi:v23 index:v25];
      if (!v26)
      {
        v27 = ATLLogObject();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v77 = codeCopy;
          _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_DEFAULT, "Local record not read for city %@.", buf, 0xCu);
        }

        goto LABEL_63;
      }

      v27 = v26;
      localRecords = [(WuluReaderContext *)self localRecords];
      [localRecords addObject:v27];

      if ([v11 unsignedIntValue] == 5 || objc_msgSend(v11, "unsignedIntValue") == 8)
      {
        localRecords2 = [(WuluReaderContext *)self localRecords];
        [localRecords2 addObject:v27];

        localRecords3 = [(WuluReaderContext *)self localRecords];
        [localRecords3 addObject:v27];

LABEL_63:
        v11 = v60;
LABEL_64:

        v31 = v64;
        goto LABEL_65;
      }

      v44 = codeCopy;
      v45 = MEMORY[0x277CBEA90];
      v46 = [v64 objectForKey:@"metroEntryStationCode"];
      v47 = [v45 dataWithHexString:v46];

      if (!v47 || [v47 length] != 4)
      {
        v53 = ATLLogObject();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v77 = v44;
          _os_log_impl(&dword_22EEF5000, v53, OS_LOG_TYPE_DEFAULT, "Local log extra data is not retrived from settings for city %@.", buf, 0xCu);
        }

        goto LABEL_62;
      }

      v48 = -[WuluReaderContext readWuluRecord:sfi:index:](self, "readWuluRecord:sfi:index:", fileCopy, [v47 u8:2], objc_msgSend(v47, "u8:", 3));

      v27 = v48;
      if (v48)
      {
        v49 = ATLLogObject();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v77 = v44;
          _os_log_impl(&dword_22EEF5000, v49, OS_LOG_TYPE_DEFAULT, "Local entry record not read for city %@.", buf, 0xCu);
        }

        localRecords4 = [(WuluReaderContext *)self localRecords];
        [localRecords4 addObject:v27];
      }

      v51 = MEMORY[0x277CBEA90];
      v52 = [v64 objectForKey:@"metroExitStationCode"];
      v53 = [v51 dataWithHexString:v52];

      if (v53 && [v53 length]== 4)
      {
        v54 = [(WuluReaderContext *)self readWuluRecord:fileCopy sfi:[v53 u8:2] index:[v53 u8:3]];
        v55 = v27;
        v27 = v54;

        if (!v27)
        {
LABEL_62:

          codeCopy = v44;
          goto LABEL_63;
        }

        v56 = ATLLogObject();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v77 = v44;
          _os_log_impl(&dword_22EEF5000, v56, OS_LOG_TYPE_DEFAULT, "Local exit record not read for city %@.", buf, 0xCu);
        }

        localRecords5 = [(WuluReaderContext *)self localRecords];
        [localRecords5 addObject:v27];
      }

      else
      {
        localRecords5 = ATLLogObject();
        if (os_log_type_enabled(localRecords5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v77 = v44;
          _os_log_impl(&dword_22EEF5000, localRecords5, OS_LOG_TYPE_DEFAULT, "Local log extra data is not retrived from settings for city %@.", buf, 0xCu);
        }
      }

      goto LABEL_62;
    }

    v31 = ATLLogObject();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    *buf = 138412290;
    v77 = codeCopy;
    v32 = "Local log data settings missing for city %@.";
LABEL_40:
    _os_log_impl(&dword_22EEF5000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 0xCu);
    goto LABEL_65;
  }

  if (unsignedIntValue != 4)
  {
    v31 = ATLLogObject();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    *buf = 138412290;
    v77 = v11;
    v32 = "Configuration gave us unknown rule type %@";
    goto LABEL_40;
  }

  v59 = codeCopy;
  v61 = v11;
  v82[0] = &unk_2843C6920;
  v82[1] = &unk_2843C6980;
  v83[0] = &unk_2843C7388;
  v83[1] = &unk_2843C73A0;
  v82[2] = &unk_2843C6998;
  v83[2] = &unk_2843C73B8;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:3];
  v33 = [MEMORY[0x277CBEB18] arrayWithCapacity:{3 * -[NSObject count](v31, "count")}];
  [(WuluReaderContext *)self setLocalRecords:v33];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = [v31 allKeys];
  v66 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v66)
  {
    v63 = *v73;
    v65 = v31;
    do
    {
      v34 = 0;
      do
      {
        if (*v73 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v67 = v34;
        v35 = *(*(&v72 + 1) + 8 * v34);
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v36 = [v31 objectForKeyedSubscript:v35];
        v37 = [v36 countByEnumeratingWithState:&v68 objects:v80 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v69;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v69 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v68 + 1) + 8 * i);
              v42 = -[WuluReaderContext readWuluRecord:sfi:index:](self, "readWuluRecord:sfi:index:", fileCopy, [v35 unsignedCharValue], objc_msgSend(v41, "unsignedCharValue"));
              if (v42)
              {
                localRecords6 = [(WuluReaderContext *)self localRecords];
                [localRecords6 addObject:v42];
              }

              else
              {
                localRecords6 = ATLLogObject();
                if (os_log_type_enabled(localRecords6, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v77 = v35;
                  v78 = 2112;
                  v79 = v41;
                  _os_log_impl(&dword_22EEF5000, localRecords6, OS_LOG_TYPE_DEFAULT, "Failed to get SFI %@ index %@", buf, 0x16u);
                }
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v68 objects:v80 count:16];
          }

          while (v38);
        }

        v34 = v67 + 1;
        v31 = v65;
      }

      while (v67 + 1 != v66);
      v66 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
    }

    while (v66);
  }

  codeCopy = v59;
  v11 = v61;
LABEL_65:

  v58 = *MEMORY[0x277D85DE8];
}

- (void)dumpAllFiles
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = ATLLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_INFO, "--- WULU DUMP BEGIN --", buf, 2u);
  }

  v4 = ATLLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    balance = [(WuluReaderContext *)self balance];
    *buf = 138412290;
    v44 = balance;
    _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_INFO, "    Balance File %@", buf, 0xCu);
  }

  file15 = [(WuluReaderContext *)self file15];
  bytes = [file15 bytes];
  file152 = [(WuluReaderContext *)self file15];
  v9 = [file152 length];
  LogBinary(OS_LOG_TYPE_DEFAULT, "[WuluReaderContext dumpAllFiles]", 242, bytes, v9, @"    SFI 0x15:", v10, v11, v35);

  file17 = [(WuluReaderContext *)self file17];
  bytes2 = [file17 bytes];
  file172 = [(WuluReaderContext *)self file17];
  v15 = [file172 length];
  LogBinary(OS_LOG_TYPE_DEFAULT, "[WuluReaderContext dumpAllFiles]", 243, bytes2, v15, @"    SFI 0x17:", v16, v17, v36);

  file18 = [(WuluReaderContext *)self file18];
  [file18 enumerateObjectsUsingBlock:&__block_literal_global_5];

  file1E = [(WuluReaderContext *)self file1E];
  [file1E enumerateObjectsUsingBlock:&__block_literal_global_753];

  file1A = [(WuluReaderContext *)self file1A];
  [file1A enumerateObjectsUsingBlock:&__block_literal_global_758];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(WuluReaderContext *)self localRecords];
  v21 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v39;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v38 + 1) + 8 * i);
        data = [v25 data];
        bytes3 = [data bytes];
        data2 = [v25 data];
        v29 = [data2 length];
        v30 = [v25 sfi];
        [v25 number];
        [v25 associatedSerialNumber];
        LogBinary(OS_LOG_TYPE_DEFAULT, "[WuluReaderContext dumpAllFiles]", 255, bytes3, v29, @"    SFI %02X record %u (SN 0x%X) localRecord", v31, v32, v30);
      }

      v22 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v22);
  }

  v33 = ATLLogObject();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_INFO, "--- WULU DUMP END --", buf, 2u);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __33__WuluReaderContext_dumpAllFiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = [v2 data];
  v3 = v10;
  v4 = [v10 bytes];
  v5 = [v2 data];
  v6 = [v5 length];
  v7 = [v2 number];
  [v2 associatedSerialNumber];

  LogBinary(OS_LOG_TYPE_DEFAULT, "[WuluReaderContext dumpAllFiles]_block_invoke", 245, v4, v6, @"    SFI 18 record %u (SN 0x%X)", v8, v9, v7);
}

void __33__WuluReaderContext_dumpAllFiles__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = [v2 data];
  v3 = v10;
  v4 = [v10 bytes];
  v5 = [v2 data];
  v6 = [v5 length];
  v7 = [v2 number];
  [v2 associatedSerialNumber];

  LogBinary(OS_LOG_TYPE_DEFAULT, "[WuluReaderContext dumpAllFiles]_block_invoke_2", 248, v4, v6, @"    SFI 1E record %u (SN 0x%X)", v8, v9, v7);
}

void __33__WuluReaderContext_dumpAllFiles__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = [v2 data];
  v3 = v10;
  v4 = [v10 bytes];
  v5 = [v2 data];
  v6 = [v5 length];
  v7 = [v2 number];
  [v2 associatedSerialNumber];

  LogBinary(OS_LOG_TYPE_DEFAULT, "[WuluReaderContext dumpAllFiles]_block_invoke_3", 251, v4, v6, @"    SFI 1A record %u (SN 0x%X)", v8, v9, v7);
}

- (id)readBalance:(id)balance error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  balanceCopy = balance;
  v6 = [balanceCopy transceiveBytesAndCheckSW:&readBalance_error__getBalanceCmd_0 length:5 error:error];
  v7 = v6;
  if (v6 && [v6 length] == 16)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*objc_msgSend(v7, "bytes"))}];
    v23[0] = v8;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(v7, "bytes") + 8))}];
    v23[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  }

  else
  {
    v11 = ATLLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v29 = [v7 length];
      _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "Failed or short balance %u", buf, 8u);
    }

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed or short balance %u", objc_msgSend(v7, "length")];
    v8 = v12;
    if (!error)
    {
      v10 = 0;
      goto LABEL_13;
    }

    v13 = *error;
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v16 = *MEMORY[0x277CCA7E8];
      v24[0] = *MEMORY[0x277CCA450];
      v24[1] = v16;
      v25[0] = v12;
      v25[1] = v13;
      v17 = MEMORY[0x277CBEAC0];
      v18 = v25;
      v19 = v24;
      v20 = 2;
    }

    else
    {
      v26 = *MEMORY[0x277CCA450];
      v27 = v12;
      v17 = MEMORY[0x277CBEAC0];
      v18 = &v27;
      v19 = &v26;
      v20 = 1;
    }

    v9 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
    [v14 errorWithDomain:@"ATL" code:5 userInfo:v9];
    *error = v10 = 0;
  }

LABEL_13:
  v21 = *MEMORY[0x277D85DE8];

  return v10;
}

@end