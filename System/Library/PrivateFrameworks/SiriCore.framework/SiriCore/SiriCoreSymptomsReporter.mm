@interface SiriCoreSymptomsReporter
+ (id)sharedInstance;
- (id)_processNameForPid:(int)pid;
- (id)_subtypeContextStringFromContext:(id)context;
- (void)_getTypeForError:(id)error completion:(id)completion;
@end

@implementation SiriCoreSymptomsReporter

void __105__SiriCoreSymptomsReporter_reportIssueForType_subType_context_processIdentifier_walkboutStatus_withPcap___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v15 = [v3 stringByAppendingString:v4];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D6B198]];

  LODWORD(v4) = [v6 BOOLValue];
  v7 = [*(a1 + 48) lock];
  [v7 lock];

  v8 = *(a1 + 48);
  if (v4)
  {
    v9 = 8;
    if (*(v8 + 8))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 16;
    if (*(v8 + 16))
    {
      goto LABEL_6;
    }
  }

  v10 = objc_opt_new();
  v11 = *(a1 + 48);
  v12 = *(v11 + v9);
  *(v11 + v9) = v10;

LABEL_6:
  v13 = [MEMORY[0x277CBEAA8] date];
  [*(*(a1 + 48) + v9) setObject:v13 forKeyedSubscript:v15];

  v14 = [*(a1 + 48) lock];
  [v14 unlock];
}

- (id)_subtypeContextStringFromContext:(id)context
{
  contextCopy = context;
  if ([contextCopy count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    allKeys = [contextCopy allKeys];
    v6 = [allKeys sortedArrayUsingComparator:&__block_literal_global_35];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__SiriCoreSymptomsReporter__subtypeContextStringFromContext___block_invoke_2;
    v11[3] = &unk_279BD6030;
    v12 = contextCopy;
    v7 = v4;
    v13 = v7;
    [v6 enumerateObjectsUsingBlock:v11];
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = &stru_28782DDB0;
  }

  return v9;
}

void __61__SiriCoreSymptomsReporter__subtypeContextStringFromContext___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v11 = [v5 objectForKey:v6];
  v7 = *(a1 + 40);
  v8 = [v11 description];
  v9 = v8;
  if (a3)
  {
    v10 = @", %@: %@";
  }

  else
  {
    v10 = @"%@: %@";
  }

  [v7 appendFormat:v10, v6, v8];
}

void __136__SiriCoreSymptomsReporter_reportIssueForError_type_subtype_context_processIdentifier_walkboutStatus_triggerForIDSIdentifiers_withPcap___block_invoke(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = "Not ";
    v8 = *(a1 + 32);
    v20 = "[SiriCoreSymptomsReporter reportIssueForError:type:subtype:context:processIdentifier:walkboutStatus:triggerForIDSIdentifiers:withPcap:]_block_invoke";
    v21 = 2080;
    *buf = 136315906;
    if (a2)
    {
      v7 = "";
    }

    v22 = v7;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_2669D1000, v6, OS_LOG_TYPE_DEFAULT, "%s %sReporting error with signature %@ %@", buf, 0x2Au);
  }

  if (a2)
  {
    if ((AFIsHorseman() & 1) != 0 || AFIsNano())
    {
      if (*(a1 + 80))
      {
        v9 = @"_Carry";
      }

      else
      {
        v9 = @"_NonCarry";
      }

      v10 = [v5 stringByAppendingString:v9];

      v5 = v10;
    }

    v11 = [*(a1 + 40) signatureWithDomain:@"SiriAssistant" type:*(a1 + 32) subType:*(a1 + 48) subtypeContext:v5 detectedProcess:*(a1 + 56) triggerThresholdValues:0];
    v12 = 0;
    if (*(a1 + 81) == 1)
    {
      v17 = *MEMORY[0x277D6B010];
      v15 = *MEMORY[0x277D6B008];
      v16 = &unk_2878382E8;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v18 = v13;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    }

    [*(a1 + 40) snapshotWithSignature:v11 withIDSDestinations:*(a1 + 64) validFor:0 duration:*(a1 + 72) events:v12 payload:0 actions:600.0 reply:120.0];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_processNameForPid:(int)pid
{
  v12 = *MEMORY[0x277D85DE8];
  buffer = 0u;
  memset(v11, 0, sizeof(v11));
  v4 = proc_pidinfo(pid, 13, 1uLL, &buffer, 64);
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  if (v4 < 1)
  {
    v6 = [v5 initWithFormat:@"pid(%ld)", pid, v9];
  }

  else
  {
    v6 = [v5 initWithFormat:@"%.*s", 16, v11];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_getTypeForError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  domain = [errorCopy domain];
  code = [errorCopy code];
  v9 = 0;
  if ([domain isEqualToString:*MEMORY[0x277CEF588]])
  {
    if (code > 199)
    {
      if ((code - 200) <= 0x16)
      {
        if (((1 << (code + 56)) & 0x700327) != 0)
        {
          goto LABEL_13;
        }

        if (code == 203)
        {
          userInfo = [errorCopy userInfo];
          v11 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];

          domain2 = [v11 domain];
          v13 = [domain2 isEqualToString:*MEMORY[0x277CEF100]];

          v9 = 0;
          if (v13)
          {
            code2 = [v11 code];
            if (code2 == 1 || code2 == 201 || code2 == 102)
            {
              v9 = 1;
            }
          }

          goto LABEL_14;
        }
      }

      if (code != 1107 && code != 1101)
      {
        goto LABEL_14;
      }

LABEL_13:
      v9 = 1;
      goto LABEL_14;
    }

    if (code <= 0x16 && ((1 << code) & 0x4000B6) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  v15 = objc_alloc_init(MEMORY[0x277CCAB68]);
  AFErrorEnumerate();
  if (completionCopy)
  {
    if ([v15 length])
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    (completionCopy)[2](completionCopy, v9, v16);
  }
}

void __56__SiriCoreSymptomsReporter__getTypeForError_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 length];
  v6 = *(a1 + 32);
  v9 = [v4 domain];
  v7 = [v4 code];

  if (v5)
  {
    v8 = @"_%@.%ld";
  }

  else
  {
    v8 = @"%@.%ld";
  }

  [v6 appendFormat:v8, v9, v7];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1869 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1869, &__block_literal_global_1870);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __42__SiriCoreSymptomsReporter_sharedInstance__block_invoke()
{
  if (AFIsInternalInstall())
  {
    v0 = objc_alloc_init(SiriCoreSymptomsReporter);
    v1 = sharedInstance_sharedInstance;
    sharedInstance_sharedInstance = v0;

    v2 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    [sharedInstance_sharedInstance setLock:v2];
  }
}

@end