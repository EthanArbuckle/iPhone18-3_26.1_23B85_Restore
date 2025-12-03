@interface SDTTRSupport
+ (id)getSharedInstance;
- (SDTTRSupport)init;
- (void)clearExistingFiles;
- (void)collectResultSetForQueryString:(id)string;
- (void)dumpFeatureVectorForSections:(id)sections query:(id)query;
- (void)dumpTTRDebugFilesForQuery:(id)query sections:(id)sections enableKeyLogRanking:(BOOL)ranking;
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

- (void)dumpTTRDebugFilesForQuery:(id)query sections:(id)sections enableKeyLogRanking:(BOOL)ranking
{
  queryCopy = query;
  sectionsCopy = sections;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__SDTTRSupport_dumpTTRDebugFilesForQuery_sections_enableKeyLogRanking___block_invoke;
  v13[3] = &unk_1E82F8DA0;
  rankingCopy = ranking;
  v13[4] = self;
  v14 = queryCopy;
  v15 = sectionsCopy;
  v11 = sectionsCopy;
  v12 = queryCopy;
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
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [defaultManager contentsOfDirectoryAtPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search" error:0];
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
          [defaultManager removeItemAtPath:v9 error:0];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/Ranking/", @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search"];
  v11 = [defaultManager contentsOfDirectoryAtPath:v10 error:0];

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
        [defaultManager removeItemAtPath:v17 error:0];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)dumpFeatureVectorForSections:(id)sections query:(id)query
{
  v39 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  queryCopy = query;
  if ([sectionsCopy count])
  {
    queryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/Spotlight_Ranking_Diagnostic_Dump_L2_%@.log", @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search", queryCopy];
    [queryCopy UTF8String];
    v8 = json_writer_create_with_path();
    if (v8)
    {
      v9 = v8;
      v24 = queryCopy;
      v25 = queryCopy;
      json_writer_begin_array();
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v26 = sectionsCopy;
      obj = sectionsCopy;
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
            arrayOfRankingItems = [v13 arrayOfRankingItems];
            v15 = [arrayOfRankingItems countByEnumeratingWithState:&v29 objects:v37 count:16];
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
                    objc_enumerationMutation(arrayOfRankingItems);
                  }

                  v19 = *(*(&v29 + 1) + 8 * j);
                  identifier = [v19 identifier];
                  l2FeatureVector = [v19 L2FeatureVector];
                  if ([identifier length])
                  {
                    v22 = l2FeatureVector == 0;
                  }

                  else
                  {
                    v22 = 1;
                  }

                  if (!v22)
                  {
                    json_writer_begin_dictionary();
                    json_writer_add_key();
                    [identifier UTF8String];
                    json_writer_add_string();
                    [l2FeatureVector serializeToJSON:v9 options:2];
                    json_writer_end_dictionary();
                  }
                }

                v16 = [arrayOfRankingItems countByEnumeratingWithState:&v29 objects:v37 count:16];
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
      queryCopy = v25;
      sectionsCopy = v26;
      queryCopy = v24;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)collectResultSetForQueryString:(id)string
{
  v17[4] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if (([array containsObject:@"_kMDItemSDBInfo"] & 1) == 0)
  {
    [array insertObject:@"_kMDItemSDBInfo" atIndex:0];
  }

  v7 = objc_opt_new();
  if ([array count])
  {
    [v7 setFetchAttributes:array];
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
  if ([stringCopy length])
  {
    stringCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/TTR_allResults_%@", @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search", stringCopy];
    stringCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@/Spotlight_Ranking_Diagnostic_Dump_Filtered_%@", @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search", stringCopy];
    stringCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"**=%@*cdwt", stringCopy];
    runQuery(stringCopy3, array2, v7, 1, stringCopy);
    runQuery(stringCopy, array2, v11, 0, stringCopy2);
  }

  objc_autoreleasePoolPop(v12);

  objc_autoreleasePoolPop(v4);
  v16 = *MEMORY[0x1E69E9840];
}

@end