@interface BRDaemonCloudDocsHelper
- (id)queryPathsForPersona:(id)persona withError:(id *)error;
@end

@implementation BRDaemonCloudDocsHelper

- (id)queryPathsForPersona:(id)persona withError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  personaCopy = persona;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__47;
  v20 = __Block_byref_object_dispose__47;
  v21 = 0;
  v6 = objc_opt_new();
  BRPerformWithPersonaAndError();
  v7 = v17[5];
  if (v7)
  {
    v8 = v7;
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      v15 = "(passed to caller)";
      *buf = 136315906;
      v23 = "[BRDaemonCloudDocsHelper queryPathsForPersona:withError:]";
      v24 = 2080;
      if (!error)
      {
        v15 = "(ignored by caller)";
      }

      v25 = v15;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      _os_log_error_impl(&dword_223E7A000, v10, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }

    if (error)
    {
      v11 = v8;
      *error = v8;
    }

    v12 = 0;
  }

  else
  {
    v12 = v6;
  }

  _Block_object_dispose(&v16, 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __58__BRDaemonCloudDocsHelper_queryPathsForPersona_withError___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v5 = [MEMORY[0x277CFAEF0] homeDirForCurrentPersona];
    if (v5)
    {
      v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:1];
      [*(a1 + 32) setObject:v6 forKeyedSubscript:*MEMORY[0x277CFADA0]];

      v7 = +[BRCAccountsManager sharedManager];
      v8 = [v7 accountHandlerForCurrentPersona];
      v9 = [v8 session];

      if ([v9 isOpen])
      {
        v10 = [MEMORY[0x277CFAE58] br_getProviderDomainIDForCurrentPersona];
        if (v10)
        {
          v11 = *(*(a1 + 40) + 8);
          obj = *(v11 + 40);
          v12 = [MEMORY[0x277CC6420] providerDomainWithID:v10 cachePolicy:0 error:&obj];
          objc_storeStrong((v11 + 40), obj);
        }

        else
        {
          v12 = 0;
        }

        v17 = [v12 storageURLs];
        if ([v17 count])
        {
          v18 = [v17 objectAtIndexedSubscript:0];
          v19 = [v18 br_realpathURLWithIsDirectory:1];

          if (v19)
          {
            [*(a1 + 32) setObject:v19 forKeyedSubscript:*MEMORY[0x277CFAD60]];
          }
        }
      }

      else
      {
        v10 = brc_bread_crumbs();
        v12 = brc_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __58__BRDaemonCloudDocsHelper_queryPathsForPersona_withError___block_invoke_cold_1(v9, v10, v12);
        }
      }
    }

    else
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        __58__BRDaemonCloudDocsHelper_queryPathsForPersona_withError___block_invoke_cold_2(v13, v14);
      }

      v15 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: No home directory"];
      v16 = *(*(a1 + 40) + 8);
      v7 = *(v16 + 40);
      *(v16 + 40) = v15;
    }
  }
}

@end