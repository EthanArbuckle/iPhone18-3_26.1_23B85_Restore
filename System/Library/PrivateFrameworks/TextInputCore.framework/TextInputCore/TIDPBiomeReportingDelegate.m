@interface TIDPBiomeReportingDelegate
+ (id)_BMEventWithKeyboardTokenFrequency:(id)a3 withLocale:(id)a4 withTokenType:(id)a5;
- (BOOL)recordTokenFrequency:(id)a3 withLocale:(id)a4 withTokenType:(id)a5;
- (TIDPBiomeReportingDelegate)init;
@end

@implementation TIDPBiomeReportingDelegate

- (BOOL)recordTokenFrequency:(id)a3 withLocale:(id)a4 withTokenType:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() _BMEventWithKeyboardTokenFrequency:v10 withLocale:v9 withTokenType:v8];

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
    v5 = [v4 Keyboard];
    v6 = [v5 TokenFrequency];
    v7 = [v6 source];
    source = v3->_source;
    v3->_source = v7;
  }

  return v3;
}

+ (id)_BMEventWithKeyboardTokenFrequency:(id)a3 withLocale:(id)a4 withTokenType:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v22 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v7;
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

  v19 = [objc_alloc(MEMORY[0x277CF1238]) initWithTokenFrequencies:v9 locale:v22 tokenType:BMKeyboardTokenFrequencyTokenTypeFromString()];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end