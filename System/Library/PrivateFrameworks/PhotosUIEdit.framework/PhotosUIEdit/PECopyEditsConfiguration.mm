@interface PECopyEditsConfiguration
- (PECopyEditsConfiguration)initWithCompositionController:(id)controller asset:(id)asset;
- (id)result;
@end

@implementation PECopyEditsConfiguration

- (id)result
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [PECopyEditsConfigurationResult alloc];
  compositionController = [(PECopyEditsConfiguration *)self compositionController];
  v5 = [(PECopyEditsConfigurationResult *)v3 initWithCompositionController:compositionController];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
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
        identifier = [v10 identifier];
        if (identifier <= 9)
        {
          if (identifier == 6)
          {
            -[PECopyEditsConfigurationResult setSmartCopyEnabled:](v5, "setSmartCopyEnabled:", [v10 enabled]);
          }

          else if (([v10 enabled] & 1) == 0)
          {
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            compositionKeys = [v10 compositionKeys];
            v13 = [compositionKeys countByEnumeratingWithState:&v25 objects:v33 count:16];
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
                    objc_enumerationMutation(compositionKeys);
                  }

                  v17 = *(*(&v25 + 1) + 8 * i);
                  compositionController2 = [(PECopyEditsConfigurationResult *)v5 compositionController];
                  [compositionController2 removeAdjustmentWithKey:v17];
                }

                v14 = [compositionKeys countByEnumeratingWithState:&v25 objects:v33 count:16];
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

  settings = [(PECopyEditsConfiguration *)selfCopy settings];
  v21 = [PEAnalyticsUtility analyticPayloadForCopyEditsSettings:settings];
  [(PECopyEditsConfigurationResult *)v5 setAnalyticsPayload:v21];

  return v5;
}

- (PECopyEditsConfiguration)initWithCompositionController:(id)controller asset:(id)asset
{
  controllerCopy = controller;
  assetCopy = asset;
  v17.receiver = self;
  v17.super_class = PECopyEditsConfiguration;
  v9 = [(PECopyEditsConfiguration *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_compositionController, controller);
    v11 = +[PECopyEditsSetting allSettings];
    v15 = controllerCopy;
    v16 = assetCopy;
    v12 = PFFilter();
    settings = v10->_settings;
    v10->_settings = v12;
  }

  return v10;
}

@end