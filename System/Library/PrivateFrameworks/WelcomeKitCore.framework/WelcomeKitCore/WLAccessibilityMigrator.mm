@interface WLAccessibilityMigrator
- (WLFeaturePayload)featurePayload;
- (void)addWorkingTime:(unint64_t)a3;
- (void)enable;
- (void)estimateItemSizeForSummary:(id)a3 account:(id)a4;
- (void)importRecordData:(id)a3 summary:(id)a4 account:(id)a5 completion:(id)a6;
- (void)setState:(id)a3;
@end

@implementation WLAccessibilityMigrator

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
  v33[1] = *MEMORY[0x277D85DE8];
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
        v24 = MEMORY[0x277CCA9B8];
        v25 = *MEMORY[0x277D7B8F8];
        v30 = *MEMORY[0x277CCA450];
        v31 = @"did fail to convert json";
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v27 = [v24 errorWithDomain:v25 code:1 userInfo:v26];

        (v12)[2](v12, 0, v27);
      }
    }

    goto LABEL_22;
  }

  _WLLog();
  if (v12)
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277D7B8F8];
    v32 = *MEMORY[0x277CCA450];
    v33[0] = @"could not import anything from nil data";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v14 = [v21 errorWithDomain:v22 code:1 userInfo:v23];

    (v12)[2](v12, 0, v14);
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