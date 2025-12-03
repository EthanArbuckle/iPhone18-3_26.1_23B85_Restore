@interface ATXSpotlightUIBiomeStream
- (ATXSpotlightUIBiomeStream)initWithStoreConfig:(id)config;
- (void)sendEvent:(id)event;
@end

@implementation ATXSpotlightUIBiomeStream

- (ATXSpotlightUIBiomeStream)initWithStoreConfig:(id)config
{
  configCopy = config;
  v11.receiver = self;
  v11.super_class = ATXSpotlightUIBiomeStream;
  v5 = [(ATXSpotlightUIBiomeStream *)&v11 init];
  if (v5)
  {
    if (configCopy)
    {
      atx_storeConfig = configCopy;
    }

    else
    {
      atx_storeConfig = [MEMORY[0x1E698F130] atx_storeConfig];
    }

    v7 = atx_storeConfig;
    v8 = [objc_alloc(MEMORY[0x1E698F318]) initWithPrivateStreamIdentifier:@"spotlightUI" storeConfig:atx_storeConfig eventDataClass:objc_opt_class()];
    inner = v5->_inner;
    v5->_inner = v8;
  }

  return v5;
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  source = [(ATXSpotlightUIBiomeStream *)self source];
  [source sendEvent:eventCopy];

  v6 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ATXSpotlightUIBiomeStream *)eventCopy sendEvent:v6];
  }
}

- (void)sendEvent:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = +[ATXSpotlightUIEvent stringForATXSpotlightUIEventType:](ATXSpotlightUIEvent, "stringForATXSpotlightUIEventType:", [a1 eventType]);
  v5 = [a1 eventType];
  v6 = [a1 suggestionType];
  v7 = [a1 suggestionUniqueId];
  v8 = [a1 suggestionSubtype];
  v9 = [a1 suggestionContext];
  v11 = 138413570;
  v12 = v4;
  v13 = 2048;
  v14 = v5;
  v15 = 2112;
  v16 = v6;
  v17 = 2112;
  v18 = v7;
  v19 = 2112;
  v20 = v8;
  v21 = 2112;
  v22 = v9;
  _os_log_debug_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXSpotlightUIEvent\n\teventType: %lu\n\tsuggestionType: %@\n\tsuggestionUniqueId: %@\n\tsuggestionSubtype: %@\n\tsuggestionContext: %@", &v11, 0x3Eu);

  v10 = *MEMORY[0x1E69E9840];
}

@end