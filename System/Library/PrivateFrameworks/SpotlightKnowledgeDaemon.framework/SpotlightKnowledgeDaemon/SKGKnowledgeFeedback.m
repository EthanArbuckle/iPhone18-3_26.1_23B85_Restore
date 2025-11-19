@interface SKGKnowledgeFeedback
- (BOOL)generateReportUsingBlock:(id)a3;
- (BOOL)hasCurrentFlagWithName:(id)a3;
- (BOOL)hasError:(int64_t)a3;
- (BOOL)hasEvent:(int64_t)a3;
- (BOOL)hasFlag:(int64_t)a3;
- (BOOL)modeWithKey:(id)a3;
- (NSDate)documentUnderstandingGenStartTime;
- (NSDate)embeddingGenStartTime;
- (NSDate)keyphraseGenStartTime;
- (NSDate)suggestedEventsGenStartTime;
- (NSDictionary)feedbackData;
- (NSDictionary)feedbackDefaults;
- (SKGKnowledgeFeedback)init;
- (SKGKnowledgeFeedback)initWithVersionName:(id)a3;
- (double)elapsedTime;
- (double)timeWithKey:(id)a3;
- (id)defaultPropertiesForVersionName:(id)a3;
- (id)defaultValueWithKey:(id)a3;
- (id)defaultValueWithKey:(id)a3 versionName:(id)a4;
- (id)defaults;
- (id)getDefaultWithIdentifier:(id)a3 protectionClass:(id)a4 key:(id)a5;
- (id)getEmbeddingDonationItemCounts;
- (id)getEmbeddingGenCompletenessForBundle:(id)a3;
- (id)getReindexRequestItemCounts;
- (id)recoveryTimesWithKey:(id)a3;
- (id)versionName;
- (int64_t)archiveGeneratedCount;
- (int64_t)archiveItemExtractedCount;
- (int64_t)archiveProcessedCount;
- (int64_t)currentArchiveCount;
- (int64_t)currentArchiveSize;
- (int64_t)currentDeletesCount;
- (int64_t)currentGraphSize;
- (int64_t)currentJournalCount;
- (int64_t)currentJournalSize;
- (int64_t)getCurrentExtractedArchiveItemCount;
- (int64_t)getCurrentExtractedJournalItemCount;
- (int64_t)getCurrentExtractedQueryItemCount;
- (int64_t)getGenCompleteDayString:(id)a3 forBundle:(id)a4;
- (int64_t)graphVersion;
- (int64_t)journalItemExtractedCount;
- (int64_t)journalProcessedCount;
- (int64_t)queryItemArchivedCount;
- (int64_t)queryItemExtractedCount;
- (int64_t)queryItemUpdatedCount;
- (unint64_t)getReindexCountForTask:(id)a3;
- (unint64_t)getUpdateTaskReindexCount;
- (unint64_t)getUpdateTaskRunCount;
- (unint64_t)indexWithKey:(id)a3;
- (unint64_t)itemCountWithKey:(id)a3;
- (void)clear;
- (void)clearDefaultWithIdentifier:(id)a3 protectionClass:(id)a4 key:(id)a5;
- (void)clearDocumentUnderstandingGenCompleteDay;
- (void)clearEmbeddingDefaults;
- (void)clearEmbeddingGenCompleteDay;
- (void)clearKeyphraseGenCompleteDay;
- (void)clearSuggestedEventsGenCompleteDay;
- (void)commonInitWithVersionName:(id)a3 graphVersion:(id)a4 stats:(id)a5;
- (void)getQueryTimeWithIdentifier:(id)a3 protectionClass:(id)a4 startTime:(double *)a5 endTime:(double *)a6 processingEndTime:(double *)a7;
- (void)logArchiveCount:(unint64_t)a3;
- (void)logArchiveSize:(unint64_t)a3;
- (void)logArchiveWithIdentifier:(id)a3 protectionClass:(id)a4;
- (void)logArchivedQueryItemCount:(unint64_t)a3 bundleIdentifier:(id)a4;
- (void)logDefaultWithIdentifier:(id)a3 protectionClass:(id)a4 key:(id)a5 value:(id)a6;
- (void)logDeletesCount:(unint64_t)a3;
- (void)logEmbeddingDonationItemCounts:(unint64_t)a3 bundleId:(id)a4;
- (void)logEnd;
- (void)logError:(int64_t)a3 message:(id)a4;
- (void)logEvent:(int64_t)a3 message:(id)a4;
- (void)logExtractedArchiveItemCount:(unint64_t)a3 bundleIdentifier:(id)a4;
- (void)logExtractedJournalItemCount:(unint64_t)a3 bundleIdentifier:(id)a4;
- (void)logExtractedQueryItemCount:(unint64_t)a3 bundleIdentifier:(id)a4;
- (void)logFlag:(int64_t)a3 message:(id)a4;
- (void)logGraphSize:(unint64_t)a3;
- (void)logGraphVersion:(int64_t)a3;
- (void)logJournalCount:(unint64_t)a3;
- (void)logJournalSize:(unint64_t)a3;
- (void)logMarkedPurgeableAtPath:(id)a3;
- (void)logProcessedArchiveWithName:(id)a3;
- (void)logProcessedJournalWithName:(id)a3;
- (void)logQueryTimeWithIdentifier:(id)a3 protectionClass:(id)a4 startTime:(double)a5 doneProcessing:(BOOL)a6;
- (void)logReindexRequestItemCounts:(unint64_t)a3 bundleId:(id)a4;
- (void)logSignpost:(int64_t)a3 message:(id)a4;
- (void)logStart;
- (void)logUpdateTaskReindexCount:(unint64_t)a3 taskName:(id)a4;
- (void)logUpdatedQueryItemCount:(unint64_t)a3 bundleIdentifier:(id)a4;
- (void)removeDefaults;
- (void)removeKey:(id)a3;
- (void)resetCleanupItemCountsForAllListenerTypes;
- (void)resetEmbeddingDonationItemCounts;
- (void)resetReindexRequestItemCounts;
- (void)setDefaultWithKey:(id)a3 value:(id)a4;
- (void)setEmbeddingGenCompleteness:(id)a3 forBundle:(id)a4;
- (void)setGenCompleteDayString:(id)a3 forBundle:(id)a4 day:(int64_t)a5;
- (void)setIndexWithKey:(id)a3 value:(unint64_t)a4;
- (void)setTimeWithKey:(id)a3 value:(double)a4;
- (void)updateDefaults;
- (void)updateFeedback;
- (void)updateItemCountWithKey:(id)a3;
@end

@implementation SKGKnowledgeFeedback

- (void)commonInitWithVersionName:(id)a3 graphVersion:(id)a4 stats:(id)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v64 = a3;
  v63 = a4;
  v9 = a5;
  objc_storeStrong(&self->_versionName, a3);
  v10 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
  v11 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  currentCalendar = self->_currentCalendar;
  self->_currentCalendar = v11;

  v62 = v10;
  [(NSCalendar *)self->_currentCalendar setTimeZone:v10];
  v13 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v14 = self->_currentCalendar;
  v15 = [MEMORY[0x277CBEAA8] date];
  [v13 setDay:{-[NSCalendar component:fromDate:](v14, "component:fromDate:", 16, v15)}];

  v16 = self->_currentCalendar;
  v17 = [MEMORY[0x277CBEAA8] date];
  [v13 setMonth:{-[NSCalendar component:fromDate:](v16, "component:fromDate:", 8, v17)}];

  v18 = self->_currentCalendar;
  v19 = [MEMORY[0x277CBEAA8] date];
  [v13 setYear:{-[NSCalendar component:fromDate:](v18, "component:fromDate:", 4, v19)}];

  v61 = v13;
  v20 = [(NSCalendar *)self->_currentCalendar dateFromComponents:v13];
  currentDate = self->_currentDate;
  self->_currentDate = v20;

  v22 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v22 setCalendar:self->_currentCalendar];
  [v22 setDateStyle:1];
  v60 = v22;
  v23 = [v22 stringFromDate:self->_currentDate];
  currentDateKey = self->_currentDateKey;
  self->_currentDateKey = v23;

  *&self->_numArchivesGenerated = 0u;
  *&self->_numJournalsProcessed = 0u;
  *&self->_numArchiveItemsExtracted = 0u;
  *&self->_numQueryItemsArchived = 0u;
  *&self->_currentDeletesCount = 0u;
  *&self->_currentArchiveCount = 0u;
  *&self->_currentArchiveSize = 0u;
  *&self->_startTime = 0u;
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  feedback = self->_feedback;
  self->_feedback = v25;

  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
  defaults = self->_defaults;
  self->_defaults = v27;

  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  bundles = self->_bundles;
  self->_bundles = v29;

  v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
  sessions = self->_sessions;
  self->_sessions = v31;

  v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
  signposts = self->_signposts;
  self->_signposts = v33;

  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
  stats = self->_stats;
  self->_stats = v35;

  v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
  embeddingGenCompleteness = self->_embeddingGenCompleteness;
  self->_embeddingGenCompleteness = v37;

  self->_embeddingGenCompletenessLock._os_unfair_lock_opaque = 0;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v39 = v9;
  v40 = [v39 countByEnumeratingWithState:&v65 objects:v69 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v66;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v66 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v65 + 1) + 8 * i);
        if ([v44 hasPrefix:self->_currentDateKey])
        {
          v45 = [v44 componentsSeparatedByString:@":"];
          if ([v45 count] == 3)
          {
            v46 = [v45 objectAtIndex:1];
            v47 = [v45 lastObject];
            v48 = [v47 intValue];

            v49 = self->_stats;
            v50 = [MEMORY[0x277CCABB0] numberWithInteger:v48];
            [(NSMutableDictionary *)v49 setObject:v50 forKey:v46];
          }
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v65 objects:v69 count:16];
    }

    while (v41);
  }

  v51 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:@"currentPid"];

  if (!v51)
  {
    [(NSMutableDictionary *)self->_stats setObject:&unk_2846E7E30 forKeyedSubscript:@"currentPid"];
  }

  v52 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:@"currentPid"];
  self->_currentPid = ([v52 intValue] + 1);

  v53 = objc_alloc_init(MEMORY[0x277CBEB58]);
  errors = self->_errors;
  self->_errors = v53;

  v55 = objc_alloc_init(MEMORY[0x277CBEB58]);
  events = self->_events;
  self->_events = v55;

  v57 = objc_alloc_init(MEMORY[0x277CBEB58]);
  flags = self->_flags;
  self->_flags = v57;

  self->_graphVersion = [v63 integerValue];
  v59 = *MEMORY[0x277D85DE8];
}

- (SKGKnowledgeFeedback)init
{
  v11.receiver = self;
  v11.super_class = SKGKnowledgeFeedback;
  v2 = [(SKGKnowledgeFeedback *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(SKGKnowledgeFeedback *)v2 defaultValueWithKey:@"stats" versionName:@"SpotlightKnowledgeV2"];
    v5 = [(SKGKnowledgeFeedback *)v3 defaultValueWithKey:@"graphVersionV2" versionName:@"SpotlightKnowledgeV2"];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = [MEMORY[0x277D657A0] sharedContext];
      v7 = [v8 numberWithInteger:{objc_msgSend(v9, "graphVersion")}];
    }

    [(SKGKnowledgeFeedback *)v3 commonInitWithVersionName:@"SpotlightKnowledgeV2" graphVersion:v7 stats:v4];
    [(SKGKnowledgeFeedback *)v3 updateDefaults];
  }

  return v3;
}

- (SKGKnowledgeFeedback)initWithVersionName:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SKGKnowledgeFeedback;
  v5 = [(SKGKnowledgeFeedback *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SKGKnowledgeFeedback *)v5 defaultValueWithKey:@"stats" versionName:v4];
    v8 = [(SKGKnowledgeFeedback *)v6 defaultValueWithKey:@"graphVersionV2" versionName:v4];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = MEMORY[0x277CCABB0];
      v12 = [MEMORY[0x277D657A0] sharedContext];
      v10 = [v11 numberWithInteger:{objc_msgSend(v12, "graphVersion")}];
    }

    [(SKGKnowledgeFeedback *)v6 commonInitWithVersionName:v4 graphVersion:v10 stats:v7];
    [(SKGKnowledgeFeedback *)v6 updateDefaults];
  }

  return v6;
}

- (void)clear
{
  v41 = *MEMORY[0x277D85DE8];
  if (clear_onceToken != -1)
  {
    [SKGKnowledgeFeedback clear];
  }

  v3 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"graphVersionV2"];
  v4 = v3;
  if (v3)
  {
    v28 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [MEMORY[0x277D657A0] sharedContext];
    v28 = [v5 numberWithInteger:{objc_msgSend(v6, "graphVersion")}];
  }

  [(SKGKnowledgeFeedback *)self versionName];
  v27 = v29 = self;
  v7 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:?];
  v8 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    v13 = &requiredAttributes_onceKeyReqToken;
    v30 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        if ([v13[21] containsObject:v15])
        {
LABEL_22:
          v16 = [v9 objectForKeyedSubscript:v15];
          [v8 setObject:v16 forKeyedSubscript:v15];
        }

        else
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v16 = clear_prefixesToPreserve;
          v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = v8;
            v20 = v13;
            v21 = *v32;
            while (2)
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v32 != v21)
                {
                  objc_enumerationMutation(v16);
                }

                if ([v15 hasPrefix:*(*(&v31 + 1) + 8 * j)])
                {

                  v13 = v20;
                  v8 = v19;
                  v12 = v30;
                  goto LABEL_22;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }

            v13 = v20;
            v8 = v19;
            v12 = v30;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  [(SKGKnowledgeFeedback *)v29 removeDefaults];
  os_unfair_lock_lock(&gFeedbackLock_0);
  [(SKGKnowledgeFeedback *)v29 commonInitWithVersionName:v27 graphVersion:v28 stats:MEMORY[0x277CBEBF8]];
  os_unfair_lock_unlock(&gFeedbackLock_0);
  v23 = [(SKGKnowledgeFeedback *)v29 defaultPropertiesForVersionName:v27];
  v24 = [v23 mutableCopy];

  [v24 addEntriesFromDictionary:v8];
  v25 = [(SKGKnowledgeFeedback *)v29 defaults];
  [v25 setObject:v24 forKey:v27];

  [(SKGKnowledgeFeedback *)v29 updateDefaults];
  v26 = *MEMORY[0x277D85DE8];
}

void __29__SKGKnowledgeFeedback_clear__block_invoke()
{
  v0 = clear_keysToPreserve;
  clear_keysToPreserve = &unk_2846E8490;

  v1 = clear_prefixesToPreserve;
  clear_prefixesToPreserve = &unk_2846E84A8;
}

- (int64_t)getGenCompleteDayString:(id)a3 forBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@#%@", v6, v7];
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:v8];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 integerValue];
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (void)setGenCompleteDayString:(id)a3 forBundle:(id)a4 day:(int64_t)a5
{
  v12 = a3;
  v8 = a4;
  if ([v8 length])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@#%@", v12, v8];
  }

  else
  {
    v9 = v12;
  }

  v10 = v9;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:v10 value:v11];
}

- (id)getEmbeddingGenCompletenessForBundle:(id)a3
{
  v4 = a3;
  if ([v4 length] && (objc_msgSend(v4, "isEqualToString:", @"Total") & 1) == 0)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"embeddingGenCompleteness#%@", v4];
  }

  else
  {
    v5 = @"embeddingGenComplete";
  }

  os_unfair_lock_lock(&self->_embeddingGenCompletenessLock);
  v6 = [(NSMutableDictionary *)self->_embeddingGenCompleteness objectForKeyedSubscript:v5];
  os_unfair_lock_unlock(&self->_embeddingGenCompletenessLock);
  if (!v6)
  {
    v6 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:v5];
    if (v6)
    {
      os_unfair_lock_lock(&self->_embeddingGenCompletenessLock);
      [(NSMutableDictionary *)self->_embeddingGenCompleteness setObject:v6 forKeyedSubscript:v5];
      os_unfair_lock_unlock(&self->_embeddingGenCompletenessLock);
    }
  }

  return v6;
}

- (void)setEmbeddingGenCompleteness:(id)a3 forBundle:(id)a4
{
  v8 = a4;
  v6 = a3;
  if ([v8 length] && (objc_msgSend(v8, "isEqualToString:", @"Total") & 1) == 0)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"embeddingGenCompleteness#%@", v8];
  }

  else
  {
    v7 = @"embeddingGenComplete";
  }

  os_unfair_lock_lock(&self->_embeddingGenCompletenessLock);
  [(NSMutableDictionary *)self->_embeddingGenCompleteness setObject:v6 forKeyedSubscript:v7];
  os_unfair_lock_unlock(&self->_embeddingGenCompletenessLock);
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:v7 value:v6];
}

- (void)clearEmbeddingDefaults
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(SKGKnowledgeFeedback *)self versionName];
  v4 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:v3];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v5 = [(SKGKnowledgeFeedback *)self defaults];
  v6 = [v4 mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (([v12 hasPrefix:{@"embeddingGenCompleteDay", v14}] & 1) != 0 || objc_msgSend(v12, "isEqual:", @"embeddingModelVersion"))
        {
          [v6 removeObjectForKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v5 setObject:v6 forKey:v3];
  os_unfair_lock_unlock(&gFeedbackLock_0);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)clearEmbeddingGenCompleteDay
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(SKGKnowledgeFeedback *)self versionName];
  v4 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:v3];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v5 = [(SKGKnowledgeFeedback *)self defaults];
  v6 = [v4 mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 hasPrefix:{@"embeddingGenCompleteDay", v14}])
        {
          [v6 removeObjectForKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v5 setObject:v6 forKey:v3];
  os_unfair_lock_unlock(&gFeedbackLock_0);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)clearSuggestedEventsGenCompleteDay
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(SKGKnowledgeFeedback *)self versionName];
  v4 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:v3];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v5 = [(SKGKnowledgeFeedback *)self defaults];
  v6 = [v4 mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 hasPrefix:{@"suggestedEventsGenCompleteDay", v14}])
        {
          [v6 removeObjectForKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v5 setObject:v6 forKey:v3];
  os_unfair_lock_unlock(&gFeedbackLock_0);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)clearDocumentUnderstandingGenCompleteDay
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(SKGKnowledgeFeedback *)self versionName];
  v4 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:v3];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v5 = [(SKGKnowledgeFeedback *)self defaults];
  v6 = [v4 mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 hasPrefix:{@"documentUnderstandingGenCompleteDay", v14}])
        {
          [v6 removeObjectForKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v5 setObject:v6 forKey:v3];
  os_unfair_lock_unlock(&gFeedbackLock_0);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)clearKeyphraseGenCompleteDay
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(SKGKnowledgeFeedback *)self versionName];
  v4 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:v3];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v5 = [(SKGKnowledgeFeedback *)self defaults];
  v6 = [v4 mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 hasPrefix:{@"keyphraseGenCompleteDay", v14}])
        {
          [v6 removeObjectForKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v5 setObject:v6 forKey:v3];
  os_unfair_lock_unlock(&gFeedbackLock_0);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateDefaults
{
  v131 = *MEMORY[0x277D85DE8];
  v3 = [(SKGKnowledgeFeedback *)self versionName];
  os_unfair_lock_lock(&gFeedbackLock_0);
  feedback = self->_feedback;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent() - self->_startTime];
  [(NSMutableDictionary *)feedback setObject:v5 forKey:@"timeSinceStart"];

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v6 = self->_events;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v122 objects:v130 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v123;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v123 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v122 + 1) + 8 * i);
        if ([v11 intValue] != 7 && objc_msgSend(v11, "intValue") != 6)
        {
          if (self->_numQueryItemsExtracted)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]queryItemExtractedCount", v11];
            numQueryItemsExtracted = self->_numQueryItemsExtracted;
            v14 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v12];

            if (v14)
            {
              v15 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v12];
              numQueryItemsExtracted += [v15 intValue];
            }

            stats = self->_stats;
            v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numQueryItemsExtracted];
            [(NSMutableDictionary *)stats setObject:v17 forKey:v12];
          }

          if (self->_numQueryItemsUpdated)
          {
            v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]queryItemUpdatedCount", v11];
            numQueryItemsUpdated = self->_numQueryItemsUpdated;
            v20 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v18];

            if (v20)
            {
              v21 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v18];
              numQueryItemsUpdated += [v21 intValue];
            }

            v22 = self->_stats;
            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numQueryItemsUpdated];
            [(NSMutableDictionary *)v22 setObject:v23 forKey:v18];
          }

          if (self->_numQueryItemsArchived)
          {
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]queryItemArchivedCount", v11];
            numQueryItemsArchived = self->_numQueryItemsArchived;
            v26 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v24];

            if (v26)
            {
              v27 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v24];
              numQueryItemsArchived += [v27 intValue];
            }

            v28 = self->_stats;
            v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numQueryItemsArchived];
            [(NSMutableDictionary *)v28 setObject:v29 forKey:v24];
          }

          if (self->_numArchiveItemsExtracted)
          {
            v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]archiveItemExtractedCount", v11];
            numArchiveItemsExtracted = self->_numArchiveItemsExtracted;
            v32 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v30];

            if (v32)
            {
              v33 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v30];
              numArchiveItemsExtracted += [v33 intValue];
            }

            v34 = self->_stats;
            v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numArchiveItemsExtracted];
            [(NSMutableDictionary *)v34 setObject:v35 forKey:v30];
          }

          if (self->_numJournalItemsExtracted)
          {
            v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]journalItemExtractedCount", v11];
            numJournalItemsExtracted = self->_numJournalItemsExtracted;
            v38 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v36];

            if (v38)
            {
              v39 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v36];
              numJournalItemsExtracted += [v39 intValue];
            }

            v40 = self->_stats;
            v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numJournalItemsExtracted];
            [(NSMutableDictionary *)v40 setObject:v41 forKey:v36];
          }

          if (self->_numJournalsProcessed)
          {
            v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]journalProcessedCount", v11];
            numJournalsProcessed = self->_numJournalsProcessed;
            v44 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v42];

            if (v44)
            {
              v45 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v42];
              numJournalsProcessed += [v45 intValue];
            }

            v46 = self->_stats;
            v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numJournalsProcessed];
            [(NSMutableDictionary *)v46 setObject:v47 forKey:v42];
          }

          if (self->_numArchivesProcessed)
          {
            v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]archiveProcessedCount", v11];
            numArchivesProcessed = self->_numArchivesProcessed;
            v50 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v48];

            if (v50)
            {
              v51 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v48];
              numArchivesProcessed += [v51 intValue];
            }

            v52 = self->_stats;
            v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numArchivesProcessed];
            [(NSMutableDictionary *)v52 setObject:v53 forKey:v48];
          }
        }
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v122 objects:v130 count:16];
    }

    while (v8);
  }

  v54 = self->_stats;
  v55 = [MEMORY[0x277CCABB0] numberWithInteger:self->_currentPid];
  [(NSMutableDictionary *)v54 setObject:v55 forKey:@"currentPid"];

  if ([(NSMutableDictionary *)self->_stats count])
  {
    v112 = v3;
    v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    obj = self->_stats;
    v57 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v118 objects:v129 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v119;
      do
      {
        for (j = 0; j != v58; ++j)
        {
          if (*v119 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v61 = *(*(&v118 + 1) + 8 * j);
          v62 = MEMORY[0x277CCACA8];
          currentDateKey = self->_currentDateKey;
          v64 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v61];
          v65 = [v62 stringWithFormat:@"%@:%@:%@", currentDateKey, v61, v64];

          [v56 addObject:v65];
        }

        v58 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v118 objects:v129 count:16];
      }

      while (v58);
    }

    v3 = v112;
    v66 = v56;
  }

  else
  {
    v66 = 0;
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
  if (_os_feature_enabled_impl() && ([MEMORY[0x277D65768] sharedInstance], v67 = objc_claimAutoreleasedReturnValue(), v68 = objc_msgSend(v67, "deviceCanGenerateEmbeddings"), v67, v68))
  {
    v69 = objc_opt_new();
    v70 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"embeddingModelVersion"];
    v71 = v70;
    if (v70 && (v72 = [v70 unsignedIntValue], objc_msgSend(MEMORY[0x277D65768], "version") == v72))
    {
      v73 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"embeddingGenStartTime"];
      v74 = [v69 dateFromString:v73];
      if (!v74)
      {
        v74 = [MEMORY[0x277CBEAA8] now];
        v75 = [v69 stringFromDate:v74];
        [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"embeddingGenStartTime" value:v75];

        [(SKGKnowledgeFeedback *)self clearEmbeddingGenCompleteDay];
      }

      v76 = v71;
    }

    else
    {
      v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277D65768], "version")}];

      [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"embeddingModelVersion" value:v76];
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v77 = SKGLogInit();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v128 = v76;
          _os_log_impl(&dword_231B25000, v77, OS_LOG_TYPE_DEFAULT, "SKG: updated embedding model version to %@", buf, 0xCu);
        }
      }

      v74 = [MEMORY[0x277CBEAA8] now];
      v78 = [v69 stringFromDate:v74];
      [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"embeddingGenStartTime" value:v78];

      [(SKGKnowledgeFeedback *)self clearEmbeddingGenCompleteDay];
    }

    os_unfair_lock_lock(&gFeedbackLock_0);
    embeddingGenStartTime = self->_embeddingGenStartTime;
    self->_embeddingGenStartTime = v74;

    os_unfair_lock_unlock(&gFeedbackLock_0);
  }

  else
  {
    [(SKGKnowledgeFeedback *)self clearEmbeddingDefaults];
  }

  v80 = [MEMORY[0x277D657A0] sharedContext];
  v81 = [v80 enableSuggestedEvents];

  if (v81)
  {
    v82 = objc_opt_new();
    v83 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"suggestedEventsGenStartTime"];
    v84 = [v82 dateFromString:v83];
    if (!v84)
    {
      v84 = [MEMORY[0x277CBEAA8] now];
      v85 = [v82 stringFromDate:v84];
      [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"suggestedEventsGenStartTime" value:v85];

      [(SKGKnowledgeFeedback *)self clearSuggestedEventsGenCompleteDay];
    }

    os_unfair_lock_lock(&gFeedbackLock_0);
    suggestedEventsGenStartTime = self->_suggestedEventsGenStartTime;
    self->_suggestedEventsGenStartTime = v84;

    os_unfair_lock_unlock(&gFeedbackLock_0);
  }

  v87 = [MEMORY[0x277D657A0] sharedContext];
  v88 = [v87 enableDocumentUnderstanding];

  if (v88)
  {
    v89 = objc_opt_new();
    v90 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"documentUnderstandingGenStartTime"];
    v91 = [v89 dateFromString:v90];
    if (!v91)
    {
      v91 = [MEMORY[0x277CBEAA8] now];
      v92 = [v89 stringFromDate:v91];
      [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"documentUnderstandingGenStartTime" value:v92];

      [(SKGKnowledgeFeedback *)self clearDocumentUnderstandingGenCompleteDay];
    }

    os_unfair_lock_lock(&gFeedbackLock_0);
    documentUnderstandingGenStartTime = self->_documentUnderstandingGenStartTime;
    self->_documentUnderstandingGenStartTime = v91;

    os_unfair_lock_unlock(&gFeedbackLock_0);
  }

  v94 = [MEMORY[0x277D657A0] sharedContext];
  v95 = [v94 enableKeyphrases];

  if (v95)
  {
    v96 = objc_opt_new();
    v97 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"keyphraseGenStartTime"];
    v98 = [v96 dateFromString:v97];
    if (!v98)
    {
      v98 = [MEMORY[0x277CBEAA8] now];
      v99 = [v96 stringFromDate:v98];
      [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"keyphraseGenStartTime" value:v99];

      [(SKGKnowledgeFeedback *)self clearKeyphraseGenCompleteDay];
    }

    os_unfair_lock_lock(&gFeedbackLock_0);
    keyphraseGenStartTime = self->_keyphraseGenStartTime;
    self->_keyphraseGenStartTime = v98;

    os_unfair_lock_unlock(&gFeedbackLock_0);
  }

  if (v66)
  {
    [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"stats" value:v66];
  }

  v101 = [MEMORY[0x277CCABB0] numberWithInteger:self->_graphVersion];
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"graphVersionV2" value:v101];

  v102 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:v3];
  os_unfair_lock_lock(&gFeedbackLock_0);
  [(NSMutableDictionary *)self->_defaults removeAllObjects];
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v103 = v102;
  v104 = [v103 countByEnumeratingWithState:&v114 objects:v126 count:16];
  if (v104)
  {
    v105 = v104;
    v106 = *v115;
    do
    {
      for (k = 0; k != v105; ++k)
      {
        if (*v115 != v106)
        {
          objc_enumerationMutation(v103);
        }

        v108 = *(*(&v114 + 1) + 8 * k);
        defaults = self->_defaults;
        v110 = [v103 objectForKeyedSubscript:v108];
        [(NSMutableDictionary *)defaults setObject:v110 forKey:v108];
      }

      v105 = [v103 countByEnumeratingWithState:&v114 objects:v126 count:16];
    }

    while (v105);
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
  v111 = *MEMORY[0x277D85DE8];
}

- (void)updateFeedback
{
  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasEvent:](self, "hasEvent:", 7)}];
  [v28 setObject:v3 forKey:@"shouldReset"];

  v4 = MEMORY[0x277CBEC28];
  [v28 setObject:MEMORY[0x277CBEC28] forKey:@"shouldRefresh"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasFlag:](self, "hasFlag:", 1)}];
  [v28 setObject:v5 forKey:@"shouldIgnore"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasEvent:](self, "hasEvent:", 1)}];
  [v28 setObject:v6 forKey:@"shouldAnalyze"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasFlag:](self, "hasFlag:", 11)}];
  [v28 setObject:v7 forKey:@"didReset"];

  [v28 setObject:v4 forKey:@"didRefresh"];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasFlag:](self, "hasFlag:", 10)}];
  [v28 setObject:v8 forKey:@"didIgnore"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasFlag:](self, "hasFlag:", 0)}];
  [v28 setObject:v9 forKey:@"didComplete"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasFlag:](self, "hasFlag:", 29)}];
  [v28 setObject:v10 forKey:@"didExceedItems"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasFlag:](self, "hasFlag:", 17)}];
  [v28 setObject:v11 forKey:@"didRunTooLong"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasFlag:](self, "hasFlag:", 18)}];
  [v28 setObject:v12 forKey:@"invalidGraphVersion"];

  v13 = [(SKGKnowledgeFeedback *)self hasFlag:9];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  [v28 setObject:v14 forKey:@"numAnalysisRuns"];

  os_unfair_lock_lock(&gFeedbackLock_0);
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numPeopleGenerated];
  [v28 setObject:v15 forKey:@"numPeopleGenerated"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numQueryItemsArchived];
  [v28 setObject:v16 forKey:@"numArchivedItems"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numArchiveItemsExtracted + self->_numQueryItemsExtracted];
  [v28 setObject:v17 forKey:@"numItemsExtracted"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numQueryItemsExtracted + self->_numJournalItemsExtracted];
  [v28 setObject:v18 forKey:@"numJournalItemsExtracted"];

  v19 = [(NSMutableDictionary *)self->_bundles count];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
  [v28 setObject:v20 forKey:@"numBundlesExtracted"];

  [v28 setObject:&unk_2846E7E30 forKey:@"timeSinceRefresh"];
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent() - self->_startTime];
  [v28 setObject:v21 forKey:@"timeSinceStart"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentGraphSize];
  [v28 setObject:v22 forKey:@"graphSize"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentArchiveSize];
  [v28 setObject:v23 forKey:@"archiveSize"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentJournalSize];
  [v28 setObject:v24 forKey:@"journalSize"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentArchiveCount];
  [v28 setObject:v25 forKey:@"archiveCount"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentJournalCount];
  [v28 setObject:v26 forKey:@"journalCount"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentDeletesCount];
  [v28 setObject:v27 forKey:@"deletesCount"];

  [(NSMutableDictionary *)self->_feedback removeAllObjects];
  [(NSMutableDictionary *)self->_feedback addEntriesFromDictionary:v28];
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (NSDictionary)feedbackDefaults
{
  if ([(SKGKnowledgeFeedback *)self hasFlag:12])
  {
    v3 = 0;
  }

  else
  {
    [(SKGKnowledgeFeedback *)self updateDefaults];
    os_unfair_lock_lock(&gFeedbackLock_0);
    v3 = [(NSMutableDictionary *)self->_defaults copy];
    os_unfair_lock_unlock(&gFeedbackLock_0);
  }

  return v3;
}

- (NSDictionary)feedbackData
{
  [(SKGKnowledgeFeedback *)self updateFeedback];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v3 = [(NSMutableDictionary *)self->_feedback copy];
  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v3;
}

- (id)versionName
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  v3 = [(NSString *)self->_versionName copy];
  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v3;
}

- (NSDate)embeddingGenStartTime
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  v3 = [(NSDate *)self->_embeddingGenStartTime copy];
  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v3;
}

- (NSDate)suggestedEventsGenStartTime
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  v3 = [(NSDate *)self->_suggestedEventsGenStartTime copy];
  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v3;
}

- (NSDate)documentUnderstandingGenStartTime
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  v3 = [(NSDate *)self->_documentUnderstandingGenStartTime copy];
  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v3;
}

- (NSDate)keyphraseGenStartTime
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  v3 = [(NSDate *)self->_keyphraseGenStartTime copy];
  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v3;
}

- (int64_t)graphVersion
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  graphVersion = self->_graphVersion;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return graphVersion;
}

- (int64_t)currentGraphSize
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  currentGraphSize = self->_currentGraphSize;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return currentGraphSize;
}

- (int64_t)currentArchiveSize
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  currentArchiveSize = self->_currentArchiveSize;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return currentArchiveSize;
}

- (int64_t)currentJournalSize
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  currentJournalSize = self->_currentJournalSize;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return currentJournalSize;
}

- (int64_t)currentArchiveCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  currentArchiveCount = self->_currentArchiveCount;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return currentArchiveCount;
}

- (int64_t)currentJournalCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  currentJournalCount = self->_currentJournalCount;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return currentJournalCount;
}

- (int64_t)currentDeletesCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  currentDeletesCount = self->_currentDeletesCount;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return currentDeletesCount;
}

- (int64_t)queryItemExtractedCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  numQueryItemsExtracted = self->_numQueryItemsExtracted;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return numQueryItemsExtracted;
}

- (int64_t)queryItemUpdatedCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  numQueryItemsUpdated = self->_numQueryItemsUpdated;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return numQueryItemsUpdated;
}

- (int64_t)queryItemArchivedCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  numQueryItemsArchived = self->_numQueryItemsArchived;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return numQueryItemsArchived;
}

- (int64_t)archiveItemExtractedCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  numArchiveItemsExtracted = self->_numArchiveItemsExtracted;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return numArchiveItemsExtracted;
}

- (int64_t)journalItemExtractedCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  numJournalItemsExtracted = self->_numJournalItemsExtracted;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return numJournalItemsExtracted;
}

- (int64_t)journalProcessedCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  numJournalsProcessed = self->_numJournalsProcessed;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return numJournalsProcessed;
}

- (int64_t)archiveProcessedCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  numArchivesProcessed = self->_numArchivesProcessed;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return numArchivesProcessed;
}

- (int64_t)archiveGeneratedCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  numArchivesGenerated = self->_numArchivesGenerated;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return numArchivesGenerated;
}

- (double)elapsedTime
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  v3 = CFAbsoluteTimeGetCurrent() - self->_startTime;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return v3;
}

- (void)logStart
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_startTime = CFAbsoluteTimeGetCurrent();

  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logEnd
{
  v57 = *MEMORY[0x277D85DE8];
  [(SKGKnowledgeFeedback *)self updateDefaults];
  v3 = [(SKGKnowledgeFeedback *)self versionName];
  os_unfair_lock_lock(&gFeedbackLock_0);
  if (self->_sessions)
  {
    v41 = v3;
    v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = [(NSMutableDictionary *)self->_sessions allKeys];
    v5 = [v4 sortedArrayUsingSelector:sel_compare_];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v7)
    {
      v8 = v7;
      v46 = *v52;
      v9 = @"start";
      v10 = @"end";
      allocator = *MEMORY[0x277CBECE8];
      do
      {
        v11 = 0;
        v43 = v8;
        do
        {
          if (*v52 != v46)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v51 + 1) + 8 * v11);
          v13 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v12];
          v14 = [v13 objectForKey:v9];

          v15 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v12];
          v16 = [v15 objectForKey:v10];

          [v14 doubleValue];
          v18 = CFDateCreate(allocator, v17);
          v19 = [v12 intValue] - 1;
          if (v19 <= 4 && v18 != 0 && v16 != 0)
          {
            v22 = off_27893EDF8[v19];
            v44 = MEMORY[0x277CCACA8];
            v23 = v10;
            v24 = v9;
            v25 = v6;
            currentDateKey = self->_currentDateKey;
            [v16 doubleValue];
            v40 = v22;
            v8 = v43;
            v39 = currentDateKey;
            v6 = v25;
            v9 = v24;
            v10 = v23;
            v28 = [v44 stringWithFormat:@"%@ - %@ (%@): %5.0f", v39, v40, v18, v27];
            [v42 addObject:v28];
          }

          ++v11;
        }

        while (v8 != v11);
        v8 = [v6 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v8);
    }

    os_unfair_lock_unlock(&gFeedbackLock_0);
    v3 = v41;
    if (v42)
    {
      v29 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"sessions" versionName:v41];
      v30 = v29;
      if (v29)
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v31 = v29;
        v32 = [v31 countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = 0;
          v35 = *v48;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v48 != v35)
              {
                objc_enumerationMutation(v31);
              }

              v37 = *(*(&v47 + 1) + 8 * i);
              if ([v37 hasPrefix:self->_currentDateKey])
              {
                [v42 addObject:v37];
              }

              else
              {
                if (v34 > 0x13)
                {
                  goto LABEL_30;
                }

                [v42 addObject:v37];
                ++v34;
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v47 objects:v55 count:16];
          }

          while (v33);
        }

LABEL_30:
      }

      [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"sessions" value:v42];
    }
  }

  else
  {
    os_unfair_lock_unlock(&gFeedbackLock_0);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)logGraphVersion:(int64_t)a3
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_graphVersion = a3;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_graphVersion];
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"graphVersionV2" value:v5];
}

- (void)logFlag:(int64_t)a3 message:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = 134218242;
      v14 = a3;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "SKG: flag (%lu) %@", &v13, 0x16u);
    }

    os_unfair_lock_lock(&gFeedbackLock_0);
    flags = self->_flags;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableSet *)flags addObject:v8];

    stats = self->_stats;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableDictionary *)stats setObject:v10 forKey:v6];
  }

  else
  {
    os_unfair_lock_lock(&gFeedbackLock_0);
    v11 = self->_flags;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableSet *)v11 addObject:v10];
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)logEvent:(int64_t)a3 message:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = a3;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: event (%lu) %@", &v10, 0x16u);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  events = self->_events;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableSet *)events addObject:v8];

  os_unfair_lock_unlock(&gFeedbackLock_0);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)logError:(int64_t)a3 message:(id)a4
{
  v6 = a4;
  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [SKGKnowledgeFeedback logError:v6 message:a3];
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  errors = self->_errors;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableSet *)errors addObject:v8];

  os_unfair_lock_unlock(&gFeedbackLock_0);
  [(SKGKnowledgeFeedback *)self updateDefaults];
}

- (void)logSignpost:(int64_t)a3 message:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  os_unfair_lock_lock(&gFeedbackLock_0);
  v7 = SKGLogInit();
  v8 = v7;
  v9 = __ROR8__(a3 - 1, 1);
  if ((v9 - 6) < 9 || v9 == 0)
  {
    v11 = os_signpost_id_make_with_pointer(v7, self);
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
    [(NSMutableDictionary *)self->_signposts setObject:v12 forKeyedSubscript:v6];

    v13 = v8;
    if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_10;
    }

    v14 = v13;
    if (!os_signpost_enabled(v13))
    {
      goto LABEL_10;
    }

    v23 = 138412290;
    v24 = v6;
    v15 = "SKG start";
    v16 = v14;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_9;
  }

  v19 = [(NSMutableDictionary *)self->_signposts objectForKeyedSubscript:v6];

  if (v19)
  {
    v20 = [(NSMutableDictionary *)self->_signposts objectForKeyedSubscript:v6];
    v11 = [v20 unsignedLongLongValue];

    v21 = v8;
    if ((v11 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_10;
    }

    v22 = v21;
    if (!os_signpost_enabled(v21))
    {
      goto LABEL_10;
    }

    v23 = 138412290;
    v24 = v6;
    v15 = "SKG end";
    v16 = v22;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_9:
    _os_signpost_emit_with_name_impl(&dword_231B25000, v16, v17, v11, v15, "%@", &v23, 0xCu);
LABEL_10:
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)logGraphSize:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: graph size %lu", &v6, 0xCu);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_currentGraphSize = a3;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logArchiveSize:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: archive size %lu", &v6, 0xCu);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_currentArchiveSize = a3;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logJournalSize:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: journal size %lu", &v6, 0xCu);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_currentJournalSize = a3;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logArchiveCount:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: archive count %lu", &v6, 0xCu);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_currentArchiveCount = a3;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logJournalCount:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: journal count %lu", &v6, 0xCu);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_currentJournalCount = a3;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logDeletesCount:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: deletes journal count %lu", &v6, 0xCu);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_currentDeletesCount = a3;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logMarkedPurgeableAtPath:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = a3;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: purgeable %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)logProcessedJournalWithName:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a3;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: processed journal %@", &v6, 0xCu);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  ++self->_numJournalsProcessed;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logProcessedArchiveWithName:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a3;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: processed archive %@", &v6, 0xCu);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  ++self->_numArchivesProcessed;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logExtractedQueryItemCount:(unint64_t)a3 bundleIdentifier:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  os_unfair_lock_lock(&gFeedbackLock_0);
  v7 = self->_numQueryItemsExtracted + a3;
  self->_numQueryItemsExtracted = v7;
  if (__ROR8__(0x8F5C28F5C28F5C29 * v7, 2) <= 0x28F5C28F5C28F5CuLL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    numQueryItemsExtracted = self->_numQueryItemsExtracted;
    v15 = 134217984;
    v16 = numQueryItemsExtracted;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: %lu items extracted", &v15, 0xCu);
  }

  v9 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:v6];

  if (!v9)
  {
    [(NSMutableDictionary *)self->_bundles setObject:&unk_2846E7E30 forKey:v6];
  }

  v10 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:v6];
  v11 = a3 + [v10 intValue];

  bundles = self->_bundles;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  [(NSMutableDictionary *)bundles setObject:v13 forKey:v6];

  os_unfair_lock_unlock(&gFeedbackLock_0);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)logUpdatedQueryItemCount:(unint64_t)a3 bundleIdentifier:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_numQueryItemsUpdated += a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    numQueryItemsUpdated = self->_numQueryItemsUpdated;
    v14 = 134217984;
    v15 = numQueryItemsUpdated;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: %lu query items updated", &v14, 0xCu);
  }

  v8 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:v6];

  if (!v8)
  {
    [(NSMutableDictionary *)self->_bundles setObject:&unk_2846E7E30 forKey:v6];
  }

  v9 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:v6];
  v10 = a3 + [v9 intValue];

  bundles = self->_bundles;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  [(NSMutableDictionary *)bundles setObject:v12 forKey:v6];

  os_unfair_lock_unlock(&gFeedbackLock_0);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)logArchivedQueryItemCount:(unint64_t)a3 bundleIdentifier:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_numQueryItemsArchived += a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    numQueryItemsArchived = self->_numQueryItemsArchived;
    v14 = 134217984;
    v15 = numQueryItemsArchived;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: %lu query items archived", &v14, 0xCu);
  }

  v8 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:v6];

  if (!v8)
  {
    [(NSMutableDictionary *)self->_bundles setObject:&unk_2846E7E30 forKey:v6];
  }

  v9 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:v6];
  v10 = a3 + [v9 intValue];

  bundles = self->_bundles;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  [(NSMutableDictionary *)bundles setObject:v12 forKey:v6];

  os_unfair_lock_unlock(&gFeedbackLock_0);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)logExtractedJournalItemCount:(unint64_t)a3 bundleIdentifier:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  os_unfair_lock_lock(&gFeedbackLock_0);
  v7 = self->_numJournalItemsExtracted + a3;
  self->_numJournalItemsExtracted = v7;
  if (__ROR8__(0x8F5C28F5C28F5C29 * v7, 2) <= 0x28F5C28F5C28F5CuLL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    numJournalItemsExtracted = self->_numJournalItemsExtracted;
    v15 = 134217984;
    v16 = numJournalItemsExtracted;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: %lu journal items extracted", &v15, 0xCu);
  }

  v9 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:v6];

  if (!v9)
  {
    [(NSMutableDictionary *)self->_bundles setObject:&unk_2846E7E30 forKey:v6];
  }

  v10 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:v6];
  v11 = a3 + [v10 intValue];

  bundles = self->_bundles;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  [(NSMutableDictionary *)bundles setObject:v13 forKey:v6];

  os_unfair_lock_unlock(&gFeedbackLock_0);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)logExtractedArchiveItemCount:(unint64_t)a3 bundleIdentifier:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  os_unfair_lock_lock(&gFeedbackLock_0);
  v7 = self->_numArchiveItemsExtracted + a3;
  self->_numArchiveItemsExtracted = v7;
  if (__ROR8__(0x8F5C28F5C28F5C29 * v7, 2) <= 0x28F5C28F5C28F5CuLL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    numArchiveItemsExtracted = self->_numArchiveItemsExtracted;
    v15 = 134217984;
    v16 = numArchiveItemsExtracted;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: %lu archive items extracted", &v15, 0xCu);
  }

  v9 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:v6];

  if (!v9)
  {
    [(NSMutableDictionary *)self->_bundles setObject:&unk_2846E7E30 forKey:v6];
  }

  v10 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:v6];
  v11 = a3 + [v10 intValue];

  bundles = self->_bundles;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  [(NSMutableDictionary *)bundles setObject:v13 forKey:v6];

  os_unfair_lock_unlock(&gFeedbackLock_0);
  v14 = *MEMORY[0x277D85DE8];
}

- (int64_t)getCurrentExtractedQueryItemCount
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_events;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = -1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 intValue] != 7 && objc_msgSend(v9, "intValue") != 6)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]queryItemExtractedCount", v9];
          v11 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v10];

          if (v11)
          {
            if (v7 == -1)
            {
              v7 = 0;
            }

            v12 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v10];
            v7 += [v12 integerValue];
          }
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = -1;
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int64_t)getCurrentExtractedJournalItemCount
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_events;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = -1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 intValue] != 7 && objc_msgSend(v9, "intValue") != 6)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]journalItemExtractedCount", v9];
          v11 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v10];

          if (v11)
          {
            if (v7 == -1)
            {
              v7 = 0;
            }

            v12 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v10];
            v7 += [v12 integerValue];
          }
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = -1;
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int64_t)getCurrentExtractedArchiveItemCount
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_events;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = -1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 intValue] != 7 && objc_msgSend(v9, "intValue") != 6)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]archiveItemExtractedCount", v9];
          v11 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v10];

          if (v11)
          {
            if (v7 == -1)
            {
              v7 = 0;
            }

            v12 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v10];
            v7 += [v12 integerValue];
          }
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = -1;
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)hasCurrentFlagWithName:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&gFeedbackLock_0);
  v5 = [(NSMutableDictionary *)self->_stats objectForKey:v4];

  os_unfair_lock_unlock(&gFeedbackLock_0);
  return v5 != 0;
}

- (void)logQueryTimeWithIdentifier:(id)a3 protectionClass:(id)a4 startTime:(double)a5 doneProcessing:(BOOL)a6
{
  v6 = a6;
  v9 = @"None";
  if (a4)
  {
    v9 = a4;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v9, a3];
  v18 = v10;
  if (v6)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"startTime.%@", v10];
    [(SKGKnowledgeFeedback *)self timeWithKey:v11];
    v13 = v12;

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"processingTime.%@", v18];
    [(SKGKnowledgeFeedback *)self setTimeWithKey:v14 value:v13];

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"finished.%@", v18];
    [(SKGKnowledgeFeedback *)self setModeWithKey:v15 value:1];

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"startTime.%@", v18];
    [(SKGKnowledgeFeedback *)self removeKey:v16];

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"endTime.%@", v18];
    [(SKGKnowledgeFeedback *)self removeKey:v17];
  }

  else
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"endTime.%@", v10];
    [(SKGKnowledgeFeedback *)self setTimeWithKey:v17 value:a5];
  }

  [(SKGKnowledgeFeedback *)self updateDefaults];
}

- (void)getQueryTimeWithIdentifier:(id)a3 protectionClass:(id)a4 startTime:(double *)a5 endTime:(double *)a6 processingEndTime:(double *)a7
{
  v11 = @"None";
  if (a4)
  {
    v11 = a4;
  }

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v11, a3];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"finished.%@", v23];
  v13 = [(SKGKnowledgeFeedback *)self modeWithKey:v12];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"endTime.%@", v23];
  [(SKGKnowledgeFeedback *)self timeWithKey:v14];
  Current = v15;

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"processingTime.%@", v23];
  [(SKGKnowledgeFeedback *)self timeWithKey:v17];
  v19 = v18;

  if (v13 || Current == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current + -60.0 >= v19)
    {
      v20 = Current + -60.0;
    }

    else
    {
      v20 = v19;
    }

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"startTime.%@", v23];
    [(SKGKnowledgeFeedback *)self setTimeWithKey:v21 value:Current];

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"finished.%@", v23];
    [(SKGKnowledgeFeedback *)self removeKey:v22];
  }

  else
  {
    v20 = Current + -60.0;
  }

  *a6 = Current;
  *a5 = v20;
  *a7 = v19;
  [(SKGKnowledgeFeedback *)self updateDefaults];
}

- (void)logArchiveWithIdentifier:(id)a3 protectionClass:(id)a4
{
  v5 = @"None";
  if (a4)
  {
    v5 = a4;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.CurrentFileIndex-%@", v5, a3];
  [(SKGKnowledgeFeedback *)self setIndexWithKey:v6 value:[(SKGKnowledgeFeedback *)self indexWithKey:v6]+ 1];
  os_unfair_lock_lock(&gFeedbackLock_0);
  ++self->_numArchivesGenerated;
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logDefaultWithIdentifier:(id)a3 protectionClass:(id)a4 key:(id)a5 value:(id)a6
{
  v9 = MEMORY[0x277CCACA8];
  if (a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = @"None";
  }

  v11 = a6;
  v12 = a5;
  v14 = [v9 stringWithFormat:@"%@.%@", v10, a3];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v14, v12];

  [(SKGKnowledgeFeedback *)self setDefaultWithKey:v13 value:v11];
  [(SKGKnowledgeFeedback *)self updateDefaults];
}

- (id)getDefaultWithIdentifier:(id)a3 protectionClass:(id)a4 key:(id)a5
{
  v7 = MEMORY[0x277CCACA8];
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = @"None";
  }

  v9 = a5;
  v10 = [v7 stringWithFormat:@"%@.%@", v8, a3];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v10, v9];

  v12 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:v11];

  return v12;
}

- (void)clearDefaultWithIdentifier:(id)a3 protectionClass:(id)a4 key:(id)a5
{
  v7 = MEMORY[0x277CCACA8];
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = @"None";
  }

  v9 = a5;
  v11 = [v7 stringWithFormat:@"%@.%@", v8, a3];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v11, v9];

  [(SKGKnowledgeFeedback *)self removeKey:v10];
}

- (BOOL)hasEvent:(int64_t)a3
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  events = self->_events;
  if (events)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v7 = [(NSMutableSet *)events containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
  return v7;
}

- (BOOL)hasError:(int64_t)a3
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  errors = self->_errors;
  if (errors)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v7 = [(NSMutableSet *)errors containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
  return v7;
}

- (BOOL)hasFlag:(int64_t)a3
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  flags = self->_flags;
  if (flags)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v7 = [(NSMutableSet *)flags containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
  return v7;
}

- (BOOL)generateReportUsingBlock:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v52 = 0;
  v5 = [(SKGKnowledgeFeedback *)self feedbackData];
  v38 = v5;
  if ([v5 count])
  {
    v36 = self;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v49;
      while (2)
      {
        v10 = 0;
        v11 = v8;
        do
        {
          if (*v49 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v48 + 1) + 8 * v10);
          v13 = MEMORY[0x277CCACA8];
          v14 = [obj objectForKeyedSubscript:v12];
          v8 = [v13 stringWithFormat:@"%@: %@", v12, v14];

          v4[2](v4, v8, &v52);
          if (v52)
          {
            v15 = 0;
            goto LABEL_38;
          }

          ++v10;
          v11 = v8;
        }

        while (v7 != v10);
        v7 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = 0;
    }

    self = v36;
  }

  else
  {
    v8 = 0;
  }

  obj = [(SKGKnowledgeFeedback *)self versionName];
  [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:?];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v16 = v47 = 0u;
  v37 = [v16 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v37)
  {
    v17 = *v45;
    v18 = 0x277CBE000uLL;
    v33 = *v45;
    v34 = v16;
    while (2)
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v45 != v17)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v44 + 1) + 8 * i);
        v21 = [v16 objectForKeyedSubscript:v20];
        v22 = *(v18 + 2656);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v35 = v21;
          v23 = v21;
          v24 = [v23 countByEnumeratingWithState:&v40 objects:v53 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v41;
            while (2)
            {
              v27 = 0;
              v28 = v8;
              do
              {
                if (*v41 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", *(*(&v40 + 1) + 8 * v27)];

                v4[2](v4, v8, &v52);
                if (v52)
                {

                  v30 = v8;
                  v16 = v34;
                  v29 = v35;
                  goto LABEL_35;
                }

                ++v27;
                v28 = v8;
              }

              while (v25 != v27);
              v25 = [v23 countByEnumeratingWithState:&v40 objects:v53 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }
          }

          v17 = v33;
          v16 = v34;
          v18 = 0x277CBE000;
          v29 = v35;
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", v20, v21];
          v30 = v29 = v21;

          v4[2](v4, v30, &v52);
          v8 = v30;
          if (v52 == 1)
          {
LABEL_35:

            v15 = 0;
            v8 = v30;
            goto LABEL_37;
          }
        }
      }

      v15 = 1;
      v37 = [v16 countByEnumeratingWithState:&v44 objects:v54 count:16];
      if (v37)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_37:

LABEL_38:
  v31 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)logUpdateTaskReindexCount:(unint64_t)a3 taskName:(id)a4
{
  v30[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([v6 length])
  {
    v7 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"embeddingGenUpdates"];
    v8 = v7;
    if (v7)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "unsignedIntegerValue") + 1}];
      [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"embeddingGenUpdates" value:v9];

      if (!a3)
      {
        goto LABEL_17;
      }
    }

    else
    {
      [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"embeddingGenUpdates" value:&unk_2846E7E48];
      if (!a3)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:v6];
    v12 = v11;
    v27 = v10;
    if (v11)
    {
      v13 = [v11 mutableCopy];
      v14 = [v10 dateByAddingTimeInterval:-86400.0];
      v15 = [v13 count];
      if (v15)
      {
        v16 = v15 - 1;
        do
        {
          v17 = [v13 objectAtIndexedSubscript:v16];
          v18 = [v17 objectAtIndexedSubscript:0];
          if ([v18 compare:v14] == -1)
          {
            [v13 removeObjectAtIndex:v16];
          }

          --v16;
        }

        while (v16 != -1);
      }

      v30[0] = v27;
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v30[1] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
      [v13 addObject:v20];

      [(SKGKnowledgeFeedback *)self setDefaultWithKey:v6 value:v13];
    }

    else
    {
      v28[0] = v10;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v28[1] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      v29 = v14;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      [(SKGKnowledgeFeedback *)self setDefaultWithKey:v6 value:v21];
    }

    v22 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"embeddingGenUpdateReindexCount"];
    v23 = v22;
    v24 = MEMORY[0x277CCABB0];
    if (v22)
    {
      a3 = [v22 unsignedIntegerValue] + 1;
    }

    v25 = [v24 numberWithUnsignedInteger:a3];
    [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"embeddingGenUpdateReindexCount" value:v25];

    goto LABEL_17;
  }

LABEL_18:

  v26 = *MEMORY[0x277D85DE8];
}

- (unint64_t)getUpdateTaskReindexCount
{
  v2 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"embeddingGenUpdateReindexCount"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)getUpdateTaskRunCount
{
  v2 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"embeddingGenUpdates"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)getReindexCountForTask:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [v5 dateByAddingTimeInterval:-86400.0];
    v7 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:v4];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 objectAtIndexedSubscript:0];
          if ([v14 compare:v6] == 1)
          {
            v15 = [v13 objectAtIndexedSubscript:1];
            v10 += [v15 unsignedIntegerValue];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)logEmbeddingDonationItemCounts:(unint64_t)a3 bundleId:(id)a4
{
  v13 = a4;
  os_unfair_lock_lock(&gEmbeddingDonationCountLock);
  v6 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"embeddingDonationCount"];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = [v8 objectForKey:v13];
  v10 = v9;
  v11 = MEMORY[0x277CCABB0];
  if (v9)
  {
    a3 += [v9 unsignedIntegerValue];
  }

  v12 = [v11 numberWithUnsignedInteger:a3];
  [v8 setObject:v12 forKey:v13];

  [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"embeddingDonationCount" value:v8];
  os_unfair_lock_unlock(&gEmbeddingDonationCountLock);
}

- (id)getEmbeddingDonationItemCounts
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"embeddingDonationCount"];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 mutableCopy];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 += [*(*(&v14 + 1) + 8 * i) unsignedIntegerValue];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v4 setObject:v11 forKeyedSubscript:@"Total"];

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)resetEmbeddingDonationItemCounts
{
  os_unfair_lock_lock(&gEmbeddingDonationCountLock);
  v3 = objc_opt_new();
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"embeddingDonationCount" value:v3];

  os_unfair_lock_unlock(&gEmbeddingDonationCountLock);
}

- (void)resetCleanupItemCountsForAllListenerTypes
{
  os_unfair_lock_lock(&gCleanupCountLock);
  v3 = objc_opt_new();
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"cleanupPerBundleCount" value:v3];

  os_unfair_lock_unlock(&gCleanupCountLock);
}

- (void)logReindexRequestItemCounts:(unint64_t)a3 bundleId:(id)a4
{
  v13 = a4;
  os_unfair_lock_lock(&gReindexRequestCountLock);
  v6 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"reindexRequestPerBundleCount"];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = [v8 objectForKey:v13];
  v10 = v9;
  v11 = MEMORY[0x277CCABB0];
  if (v9)
  {
    a3 += [v9 unsignedIntegerValue];
  }

  v12 = [v11 numberWithUnsignedInteger:a3];
  [v8 setObject:v12 forKey:v13];

  [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"reindexRequestPerBundleCount" value:v8];
  os_unfair_lock_unlock(&gReindexRequestCountLock);
}

- (id)getReindexRequestItemCounts
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"reindexRequestPerBundleCount"];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 mutableCopy];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 += [*(*(&v14 + 1) + 8 * i) unsignedIntegerValue];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v4 setObject:v11 forKeyedSubscript:@"Total"];

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)resetReindexRequestItemCounts
{
  os_unfair_lock_lock(&gReindexRequestCountLock);
  v3 = objc_opt_new();
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"reindexRequestPerBundleCount" value:v3];

  os_unfair_lock_unlock(&gReindexRequestCountLock);
}

- (id)defaults
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.spotlightknowledge"];

  return v2;
}

- (id)defaultPropertiesForVersionName:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&gFeedbackLock_0);
  v5 = [(SKGKnowledgeFeedback *)self defaults];
  v6 = [v5 dictionaryRepresentation];
  v7 = [v6 objectForKey:v4];

  if (!v7)
  {
    [v5 setObject:&unk_2846E86F0 forKey:v4];
    v8 = [v5 dictionaryRepresentation];
    v7 = [v8 objectForKey:v4];
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v7;
}

- (void)setDefaultWithKey:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [(SKGKnowledgeFeedback *)self versionName];
  v8 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:?];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v9 = [(SKGKnowledgeFeedback *)self defaults];
  if (v8)
  {
    v10 = [v8 mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v11 = v10;
  [v10 setObject:v6 forKey:v7];

  [v9 setObject:v11 forKey:v12];
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (id)defaultValueWithKey:(id)a3 versionName:(id)a4
{
  v6 = a3;
  v7 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:a4];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v8 = [v7 objectForKey:v6];

  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v8;
}

- (id)defaultValueWithKey:(id)a3
{
  v4 = a3;
  v5 = [(SKGKnowledgeFeedback *)self versionName];
  v6 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:v5];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v7 = [v6 objectForKey:v4];

  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v7;
}

- (void)removeKey:(id)a3
{
  v4 = a3;
  v8 = [(SKGKnowledgeFeedback *)self versionName];
  v5 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:v8];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v6 = [(SKGKnowledgeFeedback *)self defaults];
  v7 = [v5 mutableCopy];
  [v7 removeObjectForKey:v4];

  [v6 setObject:v7 forKey:v8];
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)removeDefaults
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 removePersistentDomainForName:@"com.apple.spotlightknowledge"];

  [MEMORY[0x277CBEBD0] resetStandardUserDefaults];

  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (BOOL)modeWithKey:(id)a3
{
  v4 = a3;
  v5 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:v4];
  if (v5)
  {
    v6 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:v4];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)recoveryTimesWithKey:(id)a3
{
  v3 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (void)setTimeWithKey:(id)a3 value:(double)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithDouble:a4];
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:v7 value:v8];
}

- (double)timeWithKey:(id)a3
{
  v4 = a3;
  v5 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:v4];
  if (v5)
  {
    v6 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:v4];
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (void)setIndexWithKey:(id)a3 value:(unint64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedInteger:a4];
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:v7 value:v8];
}

- (unint64_t)indexWithKey:(id)a3
{
  v4 = a3;
  v5 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:v4];
  if (v5)
  {
    v6 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:v4];
    v7 = [v6 intValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateItemCountWithKey:(id)a3
{
  v4 = a3;
  v5 = [(SKGKnowledgeFeedback *)self itemCountWithKey:v4];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5 + 1];
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:v4 value:v6];
}

- (unint64_t)itemCountWithKey:(id)a3
{
  v4 = a3;
  v5 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:v4];
  if (v5)
  {
    v6 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:v4];
    v7 = [v6 intValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)logError:(uint64_t)a1 message:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SKG: error (%lu) %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end