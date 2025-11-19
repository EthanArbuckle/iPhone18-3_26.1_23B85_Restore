@interface JournalTimeStamp
+ (BOOL)shouldPurgeJournal:(id)a3 olderThan:(id)a4;
+ (id)getCurrentJournalNameUsingPrefix:(id)a3;
+ (id)getDateFromJournalName:(id)a3;
+ (id)getJournalNameUsingPrefix:(id)a3 forDate:(id)a4;
@end

@implementation JournalTimeStamp

+ (id)getCurrentJournalNameUsingPrefix:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 date];
  v6 = [JournalTimeStamp getJournalNameUsingPrefix:v4 forDate:v5];

  return v6;
}

+ (id)getJournalNameUsingPrefix:(id)a3 forDate:(id)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-%.0lf", v5, timeIntervalFrom1970ToMidnight(a4)];

  return v6;
}

+ (id)getDateFromJournalName:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (([v3 hasPrefix:@"AnalyticsJournal"] & 1) != 0 || objc_msgSend(v3, "hasPrefix:", @"AnalyticsMixedJournal"))
  {
    v4 = [v3 componentsSeparatedByString:@"-"];
    if ([v4 count] == 2)
    {
      v5 = [v4 objectAtIndex:1];
      v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
      v7 = [v6 numberFromString:v5];
      v8 = v7;
      if (v7)
      {
        v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v7, "integerValue")}];
      }

      else
      {
        v12 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
        {
          v15 = 138412290;
          v16 = v3;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Invalid journal date format: %@", &v15, 0xCu);
        }

        v9 = 0;
      }
    }

    else
    {
      v10 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = v3;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Invalid journal format: %@", &v15, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v11 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412802;
      v16 = v3;
      v17 = 2112;
      v18 = @"AnalyticsJournal";
      v19 = 2112;
      v20 = @"AnalyticsMixedJournal";
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "journal name %@ does not have a known prefix (%@, %@)", &v15, 0x20u);
    }

    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)shouldPurgeJournal:(id)a3 olderThan:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [JournalTimeStamp getDateFromJournalName:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 compare:v6];
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [v8 compare:v10];

    v13 = v11 == 1 || v9 == -1;
  }

  else
  {
    v14 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v5;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Failed to get NSDate from journal %@", &v17, 0xCu);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

@end