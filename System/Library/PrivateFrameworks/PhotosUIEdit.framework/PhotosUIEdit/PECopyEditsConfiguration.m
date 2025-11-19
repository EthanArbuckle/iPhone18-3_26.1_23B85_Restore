@interface PECopyEditsConfiguration
- (PECopyEditsConfiguration)initWithCompositionController:(id)a3 asset:(id)a4;
- (id)result;
@end

@implementation PECopyEditsConfiguration

- (id)result
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [PECopyEditsConfigurationResult alloc];
  v4 = [(PECopyEditsConfiguration *)self compositionController];
  v5 = [(PECopyEditsConfigurationResult *)v3 initWithCompositionController:v4];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = self;
  obj = [(PECopyEditsConfiguration *)self settings];
  v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        v11 = [v10 identifier];
        if (v11 <= 9)
        {
          if (v11 == 6)
          {
            -[PECopyEditsConfigurationResult setSmartCopyEnabled:](v5, "setSmartCopyEnabled:", [v10 enabled]);
          }

          else if (([v10 enabled] & 1) == 0)
          {
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v12 = [v10 compositionKeys];
            v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v26;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v26 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v25 + 1) + 8 * i);
                  v18 = [(PECopyEditsConfigurationResult *)v5 compositionController];
                  [v18 removeAdjustmentWithKey:v17];
                }

                v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
              }

              while (v14);
            }
          }
        }

        ++v9;
      }

      while (v9 != v7);
      v19 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      v7 = v19;
    }

    while (v19);
  }

  v20 = [(PECopyEditsConfiguration *)v23 settings];
  v21 = [PEAnalyticsUtility analyticPayloadForCopyEditsSettings:v20];
  [(PECopyEditsConfigurationResult *)v5 setAnalyticsPayload:v21];

  return v5;
}

- (PECopyEditsConfiguration)initWithCompositionController:(id)a3 asset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = PECopyEditsConfiguration;
  v9 = [(PECopyEditsConfiguration *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_compositionController, a3);
    v11 = +[PECopyEditsSetting allSettings];
    v15 = v7;
    v16 = v8;
    v12 = PFFilter();
    settings = v10->_settings;
    v10->_settings = v12;
  }

  return v10;
}

@end