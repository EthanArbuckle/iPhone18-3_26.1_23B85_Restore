@interface CSEventListenerManagerDefaultSignposter
- (unint64_t)beginProcessJournalsInterval;
- (void)endProcessJournalsIntervalWithSignpostID:(unint64_t)a3 stopReason:(id)a4 indexType:(int)a5 taskName:(id)a6 processedJournalsCount:(unint64_t)a7 journalQueueCount:(unint64_t)a8;
@end

@implementation CSEventListenerManagerDefaultSignposter

- (unint64_t)beginProcessJournalsInterval
{
  v2 = SKGLogUpdaterInit();
  v3 = os_signpost_id_generate(v2);

  v4 = SKGLogUpdaterInit();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "ProcessJournals", "", v7, 2u);
  }

  return v3;
}

- (void)endProcessJournalsIntervalWithSignpostID:(unint64_t)a3 stopReason:(id)a4 indexType:(int)a5 taskName:(id)a6 processedJournalsCount:(unint64_t)a7 journalQueueCount:(unint64_t)a8
{
  v28 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a6;
  v15 = SKGLogUpdaterInit();
  v16 = v15;
  if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v18 = 138544386;
    v19 = v13;
    v20 = 1024;
    v21 = a5;
    v22 = 2112;
    v23 = v14;
    v24 = 2048;
    v25 = a7;
    v26 = 2048;
    v27 = a8;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v16, OS_SIGNPOST_INTERVAL_END, a3, "ProcessJournals", "stopReason=%{public}@ indexType=%d taskName=%@ processedJournalsCount=%lu journalQueueCount=%lu", &v18, 0x30u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end