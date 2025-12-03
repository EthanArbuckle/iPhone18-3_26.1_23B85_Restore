@interface TILanguageModelOfflineLearningTaskMail
+ (id)dataSourceForTask;
- (id)forwardedMessageSeparators;
- (id)linePaddingCharacters;
@end

@implementation TILanguageModelOfflineLearningTaskMail

- (id)forwardedMessageSeparators
{
  forwardedMessageSeparators = self->_forwardedMessageSeparators;
  if (!forwardedMessageSeparators)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.TextInput"];
    v5 = [v4 pathForResource:@"ForwardedMessageSeparators" ofType:@"plist"];
    if (v5)
    {
      v6 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:v5];
      if (v6)
      {
        v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v6];
        v8 = self->_forwardedMessageSeparators;
        self->_forwardedMessageSeparators = v7;
      }
    }

    forwardedMessageSeparators = self->_forwardedMessageSeparators;
  }

  return forwardedMessageSeparators;
}

- (id)linePaddingCharacters
{
  linePaddingCharacters = self->_linePaddingCharacters;
  if (!linePaddingCharacters)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v5 = [whitespaceAndNewlineCharacterSet mutableCopy];

    [v5 addCharactersInString:@"\u200E\u200F"];
    v6 = [v5 copy];
    v7 = self->_linePaddingCharacters;
    self->_linePaddingCharacters = v6;

    linePaddingCharacters = self->_linePaddingCharacters;
  }

  return linePaddingCharacters;
}

+ (id)dataSourceForTask
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(NSClassFromString(&cfstr_Timaildatasour.isa));
  if (!v2)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v3 = TIOSLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Failed to load TIMailDataSource", "+[TILanguageModelOfflineLearningTaskMail dataSourceForTask]"];
      *buf = 138412290;
      v8 = v6;
      _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

@end