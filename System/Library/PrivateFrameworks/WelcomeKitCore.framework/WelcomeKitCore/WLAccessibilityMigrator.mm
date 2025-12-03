@interface WLAccessibilityMigrator
- (WLFeaturePayload)featurePayload;
- (void)addWorkingTime:(unint64_t)time;
- (void)enable;
- (void)estimateItemSizeForSummary:(id)summary account:(id)account;
- (void)importRecordData:(id)data summary:(id)summary account:(id)account completion:(id)completion;
- (void)setState:(id)state;
@end

@implementation WLAccessibilityMigrator

- (void)enable
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setEnabled:1];

  v4 = objc_loadWeakRetained(&self->_featurePayload);
  [v4 setState:@"enabled"];
}

- (void)setState:(id)state
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setState:stateCopy];
}

- (void)addWorkingTime:(unint64_t)time
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setElapsedTime:{objc_msgSend(WeakRetained, "elapsedTime") + time}];
}

- (void)estimateItemSizeForSummary:(id)summary account:(id)account
{
  summaryCopy = summary;
  if (![summaryCopy itemSize])
  {
    [summaryCopy setItemSize:5242880];
  }
}

- (void)importRecordData:(id)data summary:(id)summary account:(id)account completion:(id)completion
{
  v33[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  summaryCopy = summary;
  accountCopy = account;
  completionCopy = completion;
  if (dataCopy && [dataCopy length])
  {
    v13 = [MEMORY[0x277D7B898] settingsWithData:dataCopy];
    v14 = v13;
    if (v13)
    {
      if ([v13 enableAccessibilityDisplayInversion])
      {
        _AXSInvertColorsSetEnabled();
      }

      [v14 accessibilityFontScale];
      if (v15 > 0.0)
      {
        [v14 accessibilityFontScale];
        if (v16 != 1.0)
        {
          [v14 accessibilityFontScale];
          if (v17 >= 1.29999995)
          {
            v19 = MEMORY[0x277D76828];
          }

          else
          {
            [v14 accessibilityFontScale];
            if (v18 >= 1.14999998)
            {
              v19 = MEMORY[0x277D76838];
            }

            else
            {
              [v14 accessibilityFontScale];
              v19 = MEMORY[0x277D76858];
              if (v20 < 0.850000024)
              {
                v19 = MEMORY[0x277D76830];
              }
            }
          }

          v28 = *v19;
          _AXSSetPreferredContentSizeCategoryName();
        }
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1, 0);
      }
    }

    else
    {
      _WLLog();
      if (completionCopy)
      {
        v24 = MEMORY[0x277CCA9B8];
        v25 = *MEMORY[0x277D7B8F8];
        v30 = *MEMORY[0x277CCA450];
        v31 = @"did fail to convert json";
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v27 = [v24 errorWithDomain:v25 code:1 userInfo:v26];

        (completionCopy)[2](completionCopy, 0, v27);
      }
    }

    goto LABEL_22;
  }

  _WLLog();
  if (completionCopy)
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277D7B8F8];
    v32 = *MEMORY[0x277CCA450];
    v33[0] = @"could not import anything from nil data";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v14 = [v21 errorWithDomain:v22 code:1 userInfo:v23];

    (completionCopy)[2](completionCopy, 0, v14);
LABEL_22:
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (WLFeaturePayload)featurePayload
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);

  return WeakRetained;
}

@end