@interface WLDisplayMigrator
- (WLFeaturePayload)featurePayload;
- (void)addWorkingTime:(unint64_t)time;
- (void)enable;
- (void)estimateItemSizeForSummary:(id)summary account:(id)account;
- (void)importRecordData:(id)data summary:(id)summary account:(id)account completion:(id)completion;
- (void)setState:(id)state;
@end

@implementation WLDisplayMigrator

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
  v27[1] = *MEMORY[0x277D85DE8];
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
      [MEMORY[0x277D7B8B0] setBool:objc_msgSend(v13 forKey:{"enableDisplayZoom"), @"enable_display_zoom"}];
      if ([v14 enableDisplayDarkMode])
      {
        v15 = [objc_alloc(MEMORY[0x277D777F8]) initWithDelegate:0];
        [v15 setModeValue:2];
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
        v20 = MEMORY[0x277CCA9B8];
        v21 = *MEMORY[0x277D7B8F8];
        v24 = *MEMORY[0x277CCA450];
        v25 = @"did fail to convert json";
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v23 = [v20 errorWithDomain:v21 code:1 userInfo:v22];

        (completionCopy)[2](completionCopy, 0, v23);
      }
    }

    goto LABEL_10;
  }

  _WLLog();
  if (completionCopy)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D7B8F8];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"could not import anything from nil data";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v14 = [v16 errorWithDomain:v17 code:1 userInfo:v18];

    (completionCopy)[2](completionCopy, 0, v14);
LABEL_10:
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (WLFeaturePayload)featurePayload
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);

  return WeakRetained;
}

@end