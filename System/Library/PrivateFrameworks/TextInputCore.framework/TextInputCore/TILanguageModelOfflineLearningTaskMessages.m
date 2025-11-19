@interface TILanguageModelOfflineLearningTaskMessages
+ (id)dataSourceForTask;
@end

@implementation TILanguageModelOfflineLearningTaskMessages

+ (id)dataSourceForTask
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/TextInput/Plugins/MessagesDataKeyboardPlugin.bundle"];
  v3 = objc_alloc_init([v2 classNamed:@"MessagesTextInputModelDataSource"]);
  if (!v3)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v4 = TIOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Failed to load Messages plugin from %@", "+[TILanguageModelOfflineLearningTaskMessages dataSourceForTask]", @"/System/Library/TextInput/Plugins/MessagesDataKeyboardPlugin.bundle"];
      *buf = 138412290;
      v9 = v7;
      _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

@end