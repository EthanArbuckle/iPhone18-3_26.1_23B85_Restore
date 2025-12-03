@interface TIDPBiomeReportingDelegate
+ (id)_BMEventWithKeyboardTokenFrequency:(id)frequency withLocale:(id)locale withTokenType:(id)type;
- (BOOL)recordTokenFrequency:(id)frequency withLocale:(id)locale withTokenType:(id)type;
- (TIDPBiomeReportingDelegate)init;
@end

@implementation TIDPBiomeReportingDelegate

- (BOOL)recordTokenFrequency:(id)frequency withLocale:(id)locale withTokenType:(id)type
{
  typeCopy = type;
  localeCopy = locale;
  frequencyCopy = frequency;
  v11 = [objc_opt_class() _BMEventWithKeyboardTokenFrequency:frequencyCopy withLocale:localeCopy withTokenType:typeCopy];

  [(BMSource *)self->_source sendEvent:v11];
  return 1;
}

- (TIDPBiomeReportingDelegate)init
{
  v10.receiver = self;
  v10.super_class = TIDPBiomeReportingDelegate;
  v3 = [(TIDPBiomeReportingDelegate *)&v10 init];
  if (v3 == self)
  {
    v4 = BiomeLibrary();
    keyboard = [v4 Keyboard];
    tokenFrequency = [keyboard TokenFrequency];
    source = [tokenFrequency source];
    source = v3->_source;
    v3->_source = source;
  }

  return v3;
}

+ (id)_BMEventWithKeyboardTokenFrequency:(id)frequency withLocale:(id)locale withTokenType:(id)type
{
  v28 = *MEMORY[0x277D85DE8];
  frequencyCopy = frequency;
  localeCopy = locale;
  typeCopy = type;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = frequencyCopy;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = objc_alloc(MEMORY[0x277CF1240]);
        v17 = [v10 objectForKeyedSubscript:v15];
        v18 = [v16 initWithToken:v15 count:v17];
        [v9 addObject:v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v19 = [objc_alloc(MEMORY[0x277CF1238]) initWithTokenFrequencies:v9 locale:localeCopy tokenType:BMKeyboardTokenFrequencyTokenTypeFromString()];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end