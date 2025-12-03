@interface JournalTimeStamp
+ (BOOL)shouldPurgeJournal:(id)journal olderThan:(id)than;
+ (id)getCurrentJournalNameUsingPrefix:(id)prefix;
+ (id)getDateFromJournalName:(id)name;
+ (id)getJournalNameUsingPrefix:(id)prefix forDate:(id)date;
@end

@implementation JournalTimeStamp

+ (id)getCurrentJournalNameUsingPrefix:(id)prefix
{
  v3 = MEMORY[0x277CBEAA8];
  prefixCopy = prefix;
  date = [v3 date];
  v6 = [JournalTimeStamp getJournalNameUsingPrefix:prefixCopy forDate:date];

  return v6;
}

+ (id)getJournalNameUsingPrefix:(id)prefix forDate:(id)date
{
  prefixCopy = prefix;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-%.0lf", prefixCopy, timeIntervalFrom1970ToMidnight(date)];

  return v6;
}

+ (id)getDateFromJournalName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (([nameCopy hasPrefix:@"AnalyticsJournal"] & 1) != 0 || objc_msgSend(nameCopy, "hasPrefix:", @"AnalyticsMixedJournal"))
  {
    v4 = [nameCopy componentsSeparatedByString:@"-"];
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
          v16 = nameCopy;
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
        v16 = nameCopy;
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
      v16 = nameCopy;
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

+ (BOOL)shouldPurgeJournal:(id)journal olderThan:(id)than
{
  v19 = *MEMORY[0x277D85DE8];
  journalCopy = journal;
  thanCopy = than;
  v7 = [JournalTimeStamp getDateFromJournalName:journalCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 compare:thanCopy];
    date = [MEMORY[0x277CBEAA8] date];
    v11 = [v8 compare:date];

    v13 = v11 == 1 || v9 == -1;
  }

  else
  {
    v14 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = journalCopy;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Failed to get NSDate from journal %@", &v17, 0xCu);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

@end