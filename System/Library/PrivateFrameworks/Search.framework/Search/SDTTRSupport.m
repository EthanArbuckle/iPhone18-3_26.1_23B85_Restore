@interface SDTTRSupport
+ (id)getSharedInstance;
- (SDTTRSupport)init;
- (void)clearExistingFiles;
- (void)collectResultSetForQueryString:(id)a3;
- (void)dumpFeatureVectorForSections:(id)a3 query:(id)a4;
- (void)dumpTTRDebugFilesForQuery:(id)a3 sections:(id)a4 enableKeyLogRanking:(BOOL)a5;
@end

@implementation SDTTRSupport

+ (id)getSharedInstance
{
  if (getSharedInstance_onceToken != -1)
  {
    +[SDTTRSupport getSharedInstance];
  }

  v3 = sharedInstance;

  return v3;
}

void __33__SDTTRSupport_getSharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance;
  sharedInstance = v0;

  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 fileExistsAtPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search"];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    [v4 createDirectoryAtPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search" withIntermediateDirectories:0 attributes:0 error:0];
  }
}

- (SDTTRSupport)init
{
  v7.receiver = self;
  v7.super_class = SDTTRSupport;
  v2 = [(SDTTRSupport *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.searchd.ttr", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)dumpTTRDebugFilesForQuery:(id)a3 sections:(id)a4 enableKeyLogRanking:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__SDTTRSupport_dumpTTRDebugFilesForQuery_sections_enableKeyLogRanking___block_invoke;
  v13[3] = &unk_1E82F8DA0;
  v16 = a5;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_sync(queue, v13);
}

uint64_t __71__SDTTRSupport_dumpTTRDebugFilesForQuery_sections_enableKeyLogRanking___block_invoke(uint64_t a1)
{
  [*(a1 + 32) clearExistingFiles];
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) collectResultSetForQueryString:*(a1 + 40)];
  }

  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [v4 dumpFeatureVectorForSections:v2 query:v3];
}

- (void)clearExistingFiles
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 contentsOfDirectoryAtPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search" error:0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        if ([v8 hasPrefix:@"Spotlight_Ranking_Diagnostic_Dump_L"])
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search", v8];
          [v2 removeItemAtPath:v9 error:0];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/Ranking/", @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search"];
  v11 = [v2 contentsOfDirectoryAtPath:v10 error:0];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/Ranking/%@", @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search", *(*(&v19 + 1) + 8 * j), v19];
        [v2 removeItemAtPath:v17 error:0];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)dumpFeatureVectorForSections:(id)a3 query:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/Spotlight_Ranking_Diagnostic_Dump_L2_%@.log", @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search", v6];
    [v7 UTF8String];
    v8 = json_writer_create_with_path();
    if (v8)
    {
      v9 = v8;
      v24 = v7;
      v25 = v6;
      json_writer_begin_array();
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v26 = v5;
      obj = v5;
      v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v10)
      {
        v11 = v10;
        v28 = *v34;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v34 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v33 + 1) + 8 * i);
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v14 = [v13 arrayOfRankingItems];
            v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v30;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v30 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v29 + 1) + 8 * j);
                  v20 = [v19 identifier];
                  v21 = [v19 L2FeatureVector];
                  if ([v20 length])
                  {
                    v22 = v21 == 0;
                  }

                  else
                  {
                    v22 = 1;
                  }

                  if (!v22)
                  {
                    json_writer_begin_dictionary();
                    json_writer_add_key();
                    [v20 UTF8String];
                    json_writer_add_string();
                    [v21 serializeToJSON:v9 options:2];
                    json_writer_end_dictionary();
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
              }

              while (v16);
            }
          }

          v11 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v11);
      }

      json_writer_end_array();
      json_writer_dispose();
      v6 = v25;
      v5 = v26;
      v7 = v24;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)collectResultSetForQueryString:(id)a3
{
  v17[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DF70] array];
  if (([v5 containsObject:@"_kMDItemSDBInfo"] & 1) == 0)
  {
    [v5 insertObject:@"_kMDItemSDBInfo" atIndex:0];
  }

  v7 = objc_opt_new();
  if ([v5 count])
  {
    [v7 setFetchAttributes:v5];
  }

  v8 = *MEMORY[0x1E696A380];
  v17[0] = *MEMORY[0x1E696A378];
  v17[1] = v8;
  v9 = *MEMORY[0x1E696A388];
  v17[2] = *MEMORY[0x1E696A398];
  v17[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  [v7 setProtectionClasses:v10];

  v11 = [v7 copy];
  [v11 setFetchAttributes:&unk_1F47DBDE0];
  v12 = objc_autoreleasePoolPush();
  if ([v3 length])
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/TTR_allResults_%@", @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search", v3];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@/Spotlight_Ranking_Diagnostic_Dump_Filtered_%@", @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search", v3];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"**=%@*cdwt", v3];
    runQuery(v15, v6, v7, 1, v13);
    runQuery(v3, v6, v11, 0, v14);
  }

  objc_autoreleasePoolPop(v12);

  objc_autoreleasePoolPop(v4);
  v16 = *MEMORY[0x1E69E9840];
}

@end