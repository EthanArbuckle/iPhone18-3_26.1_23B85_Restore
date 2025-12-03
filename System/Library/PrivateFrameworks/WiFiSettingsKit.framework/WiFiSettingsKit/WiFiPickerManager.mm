@interface WiFiPickerManager
- (WiFiPickerManager)initWithConfiguration:(id)configuration context:(id)context;
- (id)presentingViewController;
- (void)beginScan;
- (void)dealloc;
- (void)endScan;
- (void)updateCurrentNetwork:(id)network;
- (void)updateScannedNetworks:(id)networks;
- (void)updateScannedNetworksWithInfo:(id)info;
@end

@implementation WiFiPickerManager

- (WiFiPickerManager)initWithConfiguration:(id)configuration context:(id)context
{
  configurationCopy = configuration;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = WiFiPickerManager;
  v8 = [(WiFiPickerManager *)&v13 init];
  if (v8)
  {
    pickerConfigurationSwift = [configurationCopy pickerConfigurationSwift];
    v10 = [[WiFiPickerManager_Swift alloc] initWithConfiguration:pickerConfigurationSwift context:contextCopy];
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
  pickerManagerSwift = [(WiFiPickerManager *)self pickerManagerSwift];
  presentingViewController = [pickerManagerSwift presentingViewController];

  return presentingViewController;
}

- (void)beginScan
{
  pickerManagerSwift = [(WiFiPickerManager *)self pickerManagerSwift];
  [pickerManagerSwift beginScan];
}

- (void)endScan
{
  pickerManagerSwift = [(WiFiPickerManager *)self pickerManagerSwift];
  [pickerManagerSwift endScan];
}

- (void)updateCurrentNetwork:(id)network
{
  networkCopy = network;
  objc_opt_class();
  wifiNetworkSwift = networkCopy;
  if (objc_opt_isKindOfClass())
  {
    wifiNetworkSwift = [networkCopy wifiNetworkSwift];
  }

  pickerManagerSwift = [(WiFiPickerManager *)self pickerManagerSwift];
  [pickerManagerSwift updateCurrentNetwork:wifiNetworkSwift];
}

- (void)updateScannedNetworks:(id)networks
{
  v20 = *MEMORY[0x277D85DE8];
  networksCopy = networks;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = networksCopy;
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
          wifiNetworkSwift = [v11 wifiNetworkSwift];

          v11 = wifiNetworkSwift;
        }

        [v5 addObject:{v11, v15}];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  pickerManagerSwift = [(WiFiPickerManager *)self pickerManagerSwift];
  [pickerManagerSwift updateScannedNetworks:v5];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateScannedNetworksWithInfo:(id)info
{
  infoCopy = info;
  pickerManagerSwift = [(WiFiPickerManager *)self pickerManagerSwift];
  [pickerManagerSwift updateScannedNetworksWithInfo:infoCopy];
}

@end