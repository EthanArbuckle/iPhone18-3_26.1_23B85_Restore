@interface SPHistoricalReportManager
+ (id)sharedInstance;
- (SPHistoricalReportManager)init;
- (id)filenameDateFormatter;
- (void)cleanupOldReports;
- (void)getReportsForDateInterval:(id)a3 reportHandler:(id)a4;
- (void)init;
- (void)saveReport:(id)a3 withType:(unsigned int)a4 errorHandler:(id)a5;
@end

@implementation SPHistoricalReportManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SPHistoricalReportManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __43__SPHistoricalReportManager_sharedInstance__block_invoke()
{
  result = isAppleInternalInstall();
  if (result)
  {
    sharedInstance_sharedInstance = objc_alloc_init(SPHistoricalReportManager);

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (SPHistoricalReportManager)init
{
  v16.receiver = self;
  v16.super_class = SPHistoricalReportManager;
  v2 = [(SPHistoricalReportManager *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.spotlightknowledge.historicalReports", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_retentionDays = 30;
    v5 = NSHomeDirectory();
    v6 = [v5 stringByAppendingString:@"/Library/Spotlight/CoreSpotlight/HistoricalReports"];
    reportsDirectory = v2->_reportsDirectory;
    v2->_reportsDirectory = v6;

    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v8 fileExistsAtPath:v2->_reportsDirectory];

    if ((v9 & 1) == 0)
    {
      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v11 = v2->_reportsDirectory;
      v15 = 0;
      [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v15];
      v12 = v15;

      if (v12)
      {
        v13 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(SPHistoricalReportManager *)v12 init];
        }
      }
    }
  }

  return v2;
}

- (id)filenameDateFormatter
{
  if (filenameDateFormatter_onceToken != -1)
  {
    [SPHistoricalReportManager filenameDateFormatter];
  }

  v3 = filenameDateFormatter_formatter;

  return v3;
}

void __50__SPHistoricalReportManager_filenameDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = filenameDateFormatter_formatter;
  filenameDateFormatter_formatter = v0;

  [filenameDateFormatter_formatter setDateFormat:@"yyyyMMdd-HHmm"];
  v2 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [filenameDateFormatter_formatter setLocale:v2];
}

- (void)saveReport:(id)a3 withType:(unsigned int)a4 errorHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self->_reportsDirectory;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SPHistoricalReportManager_saveReport_withType_errorHandler___block_invoke;
  block[3] = &unk_278934000;
  v20 = a4;
  v16 = v8;
  v17 = self;
  v18 = v10;
  v19 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, block);
}

void __62__SPHistoricalReportManager_saveReport_withType_errorHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SPHistoricalReport);
  [(SPHistoricalReport *)v2 setType:*(a1 + 64)];
  v3 = [MEMORY[0x277CBEAA8] date];
  [(SPHistoricalReport *)v2 setTimestamp:v3];

  [(SPHistoricalReport *)v2 setReport:*(a1 + 32)];
  v4 = [(SPHistoricalReport *)v2 dictionaryRepresentation];
  v40 = 0;
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:1 error:&v40];
  v6 = v40;
  if (v5)
  {
    v7 = [*(a1 + 40) filenameDateFormatter];
    v8 = [(SPHistoricalReport *)v2 timestamp];
    v9 = [v7 stringFromDate:v8];

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_type%d.json", v9, -[SPHistoricalReport type](v2, "type")];
    v11 = [*(a1 + 48) stringByAppendingPathComponent:v10];
    v12 = open([v11 fileSystemRepresentation], 513, 420);
    if (v12 == -1)
    {
      if (*(a1 + 56))
      {
        v38 = v10;
        v23 = v9;
        v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
        (*(*(a1 + 56) + 16))();

        v9 = v23;
        v10 = v38;
      }
    }

    else
    {
      v13 = v12;
      if (flock(v12, 2))
      {
        if (*(a1 + 56))
        {
          v37 = v9;
          v14 = MEMORY[0x277CCA9B8];
          v35 = v4;
          v15 = v10;
          v16 = v6;
          v17 = v7;
          v18 = *MEMORY[0x277CCA5B8];
          v19 = __error();
          v20 = v18;
          v7 = v17;
          v6 = v16;
          v10 = v15;
          v4 = v35;
          v21 = [v14 errorWithDomain:v20 code:*v19 userInfo:0];
          (*(*(a1 + 56) + 16))();

          v9 = v37;
        }

        close(v13);
      }

      else
      {
        v39 = v9;
        v25 = write(v13, [v5 bytes], objc_msgSend(v5, "length"));
        if (v25 == [v5 length])
        {
          fsync(v13);
          flock(v13, 8);
          close(v13);
          [*(a1 + 40) cleanupOldReports];
          v26 = *(a1 + 56);
          v9 = v39;
          if (v26)
          {
            (*(v26 + 16))(v26, 0);
          }
        }

        else
        {
          if (*(a1 + 56))
          {
            v27 = MEMORY[0x277CCA9B8];
            v36 = v4;
            v28 = v10;
            v29 = v6;
            v30 = v7;
            v31 = *MEMORY[0x277CCA5B8];
            v32 = __error();
            v33 = v31;
            v7 = v30;
            v6 = v29;
            v10 = v28;
            v4 = v36;
            v34 = [v27 errorWithDomain:v33 code:*v32 userInfo:0];
            (*(*(a1 + 56) + 16))();
          }

          flock(v13, 8);
          close(v13);
          v9 = v39;
        }
      }
    }
  }

  else
  {
    v22 = *(a1 + 56);
    if (v22)
    {
      (*(v22 + 16))(v22, v6);
    }
  }
}

- (void)getReportsForDateInterval:(id)a3 reportHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_reportsDirectory;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__SPHistoricalReportManager_getReportsForDateInterval_reportHandler___block_invoke;
  v13[3] = &unk_278934028;
  v14 = v8;
  v15 = self;
  v16 = v6;
  v17 = v7;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  dispatch_async(queue, v13);
}

void __69__SPHistoricalReportManager_getReportsForDateInterval_reportHandler___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v33 = [MEMORY[0x277CBEB18] array];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = *(a1 + 32);
  v42 = 0;
  v4 = [v2 contentsOfDirectoryAtPath:v3 error:&v42];
  v5 = v42;
  v6 = v5;
  if (v4)
  {
    v30 = v5;
    v32 = v2;
    v7 = [*(a1 + 40) filenameDateFormatter];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v31 = v4;
    obj = [v4 sortedArrayUsingSelector:sel_compare_];
    v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    v9 = a1;
    if (!v8)
    {
      goto LABEL_24;
    }

    v10 = v8;
    v11 = *v39;
    v35 = v7;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v38 + 1) + 8 * v12);
        if ([v13 length] >= 0xD)
        {
          v14 = [v13 substringToIndex:13];
          v15 = [v7 dateFromString:v14];
          if (v15)
          {
            v16 = [*(v9 + 48) startDate];
            if ([v16 compare:v15] == 1)
            {
              goto LABEL_16;
            }

            v17 = [*(v9 + 48) endDate];
            v18 = v9;
            v19 = [v17 compare:v15];

            v7 = v35;
            v20 = v19 == -1;
            v9 = v18;
            if (!v20)
            {
              v16 = [*(v18 + 32) stringByAppendingPathComponent:v13];
              v21 = open([v16 fileSystemRepresentation], 0);
              if (v21 != -1)
              {
                v22 = v21;
                if (flock(v21, 1))
                {
                  goto LABEL_15;
                }

                memset(&v37, 0, sizeof(v37));
                if (fstat(v22, &v37))
                {
                  flock(v22, 8);
LABEL_15:
                  close(v22);
                }

                else
                {
                  st_size = v37.st_size;
                  v24 = [MEMORY[0x277CBEB28] dataWithLength:v37.st_size];
                  v34 = read(v22, [v24 mutableBytes], st_size);
                  flock(v22, 8);
                  close(v22);
                  if (v34 == st_size)
                  {
                    v25 = [v24 copy];
                    [v33 addObject:v25];
                  }

                  v9 = v18;
                  v7 = v35;
                }
              }

LABEL_16:
            }
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v26 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      v10 = v26;
      if (!v26)
      {
LABEL_24:

        v27 = *(v9 + 56);
        if (v27)
        {
          (*(v27 + 16))(v27, v33, 0);
        }

        v4 = v31;
        v2 = v32;
        v6 = v30;
        goto LABEL_29;
      }
    }
  }

  v28 = *(a1 + 56);
  if (v28)
  {
    (*(v28 + 16))(v28, MEMORY[0x277CBEBF8], v6);
  }

LABEL_29:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)cleanupOldReports
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  reportsDirectory = self->_reportsDirectory;
  v30 = 0;
  v25 = v3;
  v5 = [v3 contentsOfDirectoryAtPath:reportsDirectory error:&v30];
  v6 = v30;
  v7 = v6;
  if (v5)
  {
    v23 = v6;
    v8 = [MEMORY[0x277CBEAA8] date];
    retentionDays = self->_retentionDays;
    v10 = [(SPHistoricalReportManager *)self filenameDateFormatter];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = v5;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = (86400 * retentionDays);
      v15 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          if ([v17 length] >= 0xD)
          {
            v18 = [v17 substringToIndex:13];
            v19 = [v10 dateFromString:v18];
            if (v19)
            {
              [v8 timeIntervalSinceDate:v19];
              if (v20 > v14)
              {
                v21 = [(NSString *)self->_reportsDirectory stringByAppendingPathComponent:v17];
                [v25 removeItemAtPath:v21 error:0];
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v13);
    }

    v7 = v23;
    v5 = v24;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_231A35000, a2, OS_LOG_TYPE_ERROR, "Error creating historical reports directory: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end