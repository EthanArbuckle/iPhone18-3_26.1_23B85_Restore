@interface WLDisplayMigrator
- (WLFeaturePayload)featurePayload;
- (void)addWorkingTime:(unint64_t)a3;
- (void)enable;
- (void)estimateItemSizeForSummary:(id)a3 account:(id)a4;
- (void)importRecordData:(id)a3 summary:(id)a4 account:(id)a5 completion:(id)a6;
- (void)setState:(id)a3;
@end

@implementation WLDisplayMigrator

- (void)enable
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setEnabled:1];

  v4 = objc_loadWeakRetained(&self->_featurePayload);
  [v4 setState:@"enabled"];
}

- (void)setState:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setState:v4];
}

- (void)addWorkingTime:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setElapsedTime:{objc_msgSend(WeakRetained, "elapsedTime") + a3}];
}

- (void)estimateItemSizeForSummary:(id)a3 account:(id)a4
{
  v4 = a3;
  if (![v4 itemSize])
  {
    [v4 setItemSize:5242880];
  }
}

- (void)importRecordData:(id)a3 summary:(id)a4 account:(id)a5 completion:(id)a6
{
  v27[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v9 && [v9 length])
  {
    v13 = [MEMORY[0x277D7B898] settingsWithData:v9];
    v14 = v13;
    if (v13)
    {
      [MEMORY[0x277D7B8B0] setBool:objc_msgSend(v13 forKey:{"enableDisplayZoom"), @"enable_display_zoom"}];
      if ([v14 enableDisplayDarkMode])
      {
        v15 = [objc_alloc(MEMORY[0x277D777F8]) initWithDelegate:0];
        [v15 setModeValue:2];
      }

      if (v12)
      {
        v12[2](v12, 1, 0);
      }
    }

    else
    {
      _WLLog();
      if (v12)
      {
        v20 = MEMORY[0x277CCA9B8];
        v21 = *MEMORY[0x277D7B8F8];
        v24 = *MEMORY[0x277CCA450];
        v25 = @"did fail to convert json";
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v23 = [v20 errorWithDomain:v21 code:1 userInfo:v22];

        (v12)[2](v12, 0, v23);
      }
    }

    goto LABEL_10;
  }

  _WLLog();
  if (v12)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D7B8F8];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"could not import anything from nil data";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v14 = [v16 errorWithDomain:v17 code:1 userInfo:v18];

    (v12)[2](v12, 0, v14);
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