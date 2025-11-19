@interface WiFiPickerManager
- (WiFiPickerManager)initWithConfiguration:(id)a3 context:(id)a4;
- (id)presentingViewController;
- (void)beginScan;
- (void)dealloc;
- (void)endScan;
- (void)updateCurrentNetwork:(id)a3;
- (void)updateScannedNetworks:(id)a3;
- (void)updateScannedNetworksWithInfo:(id)a3;
@end

@implementation WiFiPickerManager

- (WiFiPickerManager)initWithConfiguration:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = WiFiPickerManager;
  v8 = [(WiFiPickerManager *)&v13 init];
  if (v8)
  {
    v9 = [v6 pickerConfigurationSwift];
    v10 = [[WiFiPickerManager_Swift alloc] initWithConfiguration:v9 context:v7];
    pickerManagerSwift = v8->_pickerManagerSwift;
    v8->_pickerManagerSwift = v10;
  }

  return v8;
}

- (void)dealloc
{
  pickerManagerSwift = self->_pickerManagerSwift;
  self->_pickerManagerSwift = 0;

  v4.receiver = self;
  v4.super_class = WiFiPickerManager;
  [(WiFiPickerManager *)&v4 dealloc];
}

- (id)presentingViewController
{
  v2 = [(WiFiPickerManager *)self pickerManagerSwift];
  v3 = [v2 presentingViewController];

  return v3;
}

- (void)beginScan
{
  v2 = [(WiFiPickerManager *)self pickerManagerSwift];
  [v2 beginScan];
}

- (void)endScan
{
  v2 = [(WiFiPickerManager *)self pickerManagerSwift];
  [v2 endScan];
}

- (void)updateCurrentNetwork:(id)a3
{
  v6 = a3;
  objc_opt_class();
  v4 = v6;
  if (objc_opt_isKindOfClass())
  {
    v4 = [v6 wifiNetworkSwift];
  }

  v5 = [(WiFiPickerManager *)self pickerManagerSwift];
  [v5 updateCurrentNetwork:v4];
}

- (void)updateScannedNetworks:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 wifiNetworkSwift];

          v11 = v12;
        }

        [v5 addObject:{v11, v15}];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [(WiFiPickerManager *)self pickerManagerSwift];
  [v13 updateScannedNetworks:v5];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateScannedNetworksWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(WiFiPickerManager *)self pickerManagerSwift];
  [v5 updateScannedNetworksWithInfo:v4];
}

@end