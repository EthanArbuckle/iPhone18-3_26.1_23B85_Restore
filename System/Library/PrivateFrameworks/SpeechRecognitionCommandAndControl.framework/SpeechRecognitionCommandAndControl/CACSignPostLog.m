@interface CACSignPostLog
+ (id)_sFetchElementsLog;
+ (id)sharedInstance;
+ (id)sharedLog;
+ (void)CommandStringExecuted:(id)a3 success:(BOOL)a4;
+ (void)CommandStringReceived:(id)a3;
+ (void)FetchElementsEventBeganWithReason:(id)a3 expectedDelay:(double)a4;
+ (void)FetchElementsEventCompletedWithNumberOfElements:(unint64_t)a3 numberOfElementsAlreadyCached:(unint64_t)a4;
@end

@implementation CACSignPostLog

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CACSignPostLog sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

uint64_t __32__CACSignPostLog_sharedInstance__block_invoke()
{
  sharedInstance_sSharedInstance = objc_alloc_init(CACSignPostLog);

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedLog
{
  if (sharedLog_onceToken != -1)
  {
    +[CACSignPostLog sharedLog];
  }

  v3 = sharedLog_signpostLog;

  return v3;
}

uint64_t __27__CACSignPostLog_sharedLog__block_invoke()
{
  sharedLog_signpostLog = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "SignPosts");

  return MEMORY[0x2821F96F8]();
}

+ (id)_sFetchElementsLog
{
  if (_sFetchElementsLog_onceToken != -1)
  {
    +[CACSignPostLog _sFetchElementsLog];
  }

  v3 = _sFetchElementsLog_signpostLog;

  return v3;
}

uint64_t __36__CACSignPostLog__sFetchElementsLog__block_invoke()
{
  _sFetchElementsLog_signpostLog = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "FetchElements");

  return MEMORY[0x2821F96F8]();
}

+ (void)FetchElementsEventBeganWithReason:(id)a3 expectedDelay:(double)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[CACSignPostLog _sFetchElementsLog];
  v7 = os_signpost_id_generate(v6);

  v8 = +[CACSignPostLog _sFetchElementsLog];
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2048;
    v14 = a4;
    _os_signpost_emit_with_name_impl(&dword_26B354000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FetchElements", "Requesting elements refreshed with reason %@; expected delay: %f", &v11, 0x16u);
  }

  v10 = CACLogElementCollection();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2048;
    v14 = a4;
    _os_log_impl(&dword_26B354000, v10, OS_LOG_TYPE_INFO, "FetchElements: Requesting elements refreshed with reason %@; expected delay: %f", &v11, 0x16u);
  }
}

+ (void)FetchElementsEventCompletedWithNumberOfElements:(unint64_t)a3 numberOfElementsAlreadyCached:(unint64_t)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = +[CACSignPostLog _sFetchElementsLog];
  v7 = os_signpost_id_generate(v6);

  v8 = +[CACSignPostLog _sFetchElementsLog];
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = 134218240;
    v11 = a3;
    v12 = 2048;
    v13 = a4;
    _os_signpost_emit_with_name_impl(&dword_26B354000, v9, OS_SIGNPOST_INTERVAL_END, v7, "FetchElements", "%lu elements fetched; %lu elements already cached", &v10, 0x16u);
  }
}

+ (void)CommandStringReceived:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[CACSignPostLog sharedLog];
  if (os_signpost_enabled(v4))
  {
    v5 = 138412290;
    v6 = v3;
    _os_signpost_emit_with_name_impl(&dword_26B354000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CommandStringReceived", "Starting to execute command with identifier %@", &v5, 0xCu);
  }
}

+ (void)CommandStringExecuted:(id)a3 success:(BOOL)a4
{
  v4 = a4;
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[CACSignPostLog sharedLog];
  if (os_signpost_enabled(v6))
  {
    v7 = @"NO";
    if (v4)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_signpost_emit_with_name_impl(&dword_26B354000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CommandStringExecuted", "Finished executing command with identifier %@; success: %@", &v8, 0x16u);
  }
}

@end