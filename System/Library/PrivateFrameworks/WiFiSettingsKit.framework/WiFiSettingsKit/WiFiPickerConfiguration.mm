@interface WiFiPickerConfiguration
- (WiFiPickerConfiguration)initWithNetworks:(id)networks currentNetwork:(id)network;
- (WiFiPickerConfiguration)initWithNetworksInfo:(id)info currentNetwork:(id)network;
- (id)description;
- (int64_t)displayOption;
- (int64_t)interactionStyle;
- (int64_t)presentationStyle;
- (void)setAccessoryName:(id)name;
- (void)setDisplayOption:(int64_t)option;
- (void)setInteractionStyle:(int64_t)style;
- (void)setPresentationStyle:(int64_t)style;
@end

@implementation WiFiPickerConfiguration

- (WiFiPickerConfiguration)initWithNetworksInfo:(id)info currentNetwork:(id)network
{
  infoCopy = info;
  networkCopy = network;
  v12.receiver = self;
  v12.super_class = WiFiPickerConfiguration;
  v8 = [(WiFiPickerConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [[WiFiPickerConfiguration_Swift alloc] initWithNetworksInfo:infoCopy currentNetwork:networkCopy];
    pickerConfigurationSwift = v8->_pickerConfigurationSwift;
    v8->_pickerConfigurationSwift = v9;
  }

  return v8;
}

- (WiFiPickerConfiguration)initWithNetworks:(id)networks currentNetwork:(id)network
{
  v28 = *MEMORY[0x277D85DE8];
  networksCopy = networks;
  networkCopy = network;
  v26.receiver = self;
  v26.super_class = WiFiPickerConfiguration;
  v8 = [(WiFiPickerConfiguration *)&v26 init];
  if (v8)
  {
    v9 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = networksCopy;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        v14 = 0;
        do
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          wifiNetworkSwift = [*(*(&v22 + 1) + 8 * v14) wifiNetworkSwift];
          [v9 addObject:wifiNetworkSwift];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v12);
    }

    v16 = [WiFiPickerConfiguration_Swift alloc];
    wifiNetworkSwift2 = [networkCopy wifiNetworkSwift];
    v18 = [(WiFiPickerConfiguration_Swift *)v16 initWithNetworks:v9 currentNetwork:wifiNetworkSwift2];
    pickerConfigurationSwift = v8->_pickerConfigurationSwift;
    v8->_pickerConfigurationSwift = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)description
{
  pickerConfigurationSwift = [(WiFiPickerConfiguration *)self pickerConfigurationSwift];
  v3 = [pickerConfigurationSwift description];

  return v3;
}

- (int64_t)displayOption
{
  pickerConfigurationSwift = [(WiFiPickerConfiguration *)self pickerConfigurationSwift];
  displayOption = [pickerConfigurationSwift displayOption];

  if ((displayOption - 1) >= 3)
  {
    return 3;
  }

  else
  {
    return displayOption;
  }
}

- (void)setDisplayOption:(int64_t)option
{
  v3 = 2;
  if (option != 2)
  {
    v3 = 3;
  }

  if (option == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  pickerConfigurationSwift = [(WiFiPickerConfiguration *)self pickerConfigurationSwift];
  [pickerConfigurationSwift setDisplayOption:v4];
}

- (int64_t)presentationStyle
{
  pickerConfigurationSwift = [(WiFiPickerConfiguration *)self pickerConfigurationSwift];
  presentationStyle = [pickerConfigurationSwift presentationStyle];

  return presentationStyle;
}

- (void)setPresentationStyle:(int64_t)style
{
  pickerConfigurationSwift = [(WiFiPickerConfiguration *)self pickerConfigurationSwift];
  [pickerConfigurationSwift setPresentationStyle:style];
}

- (int64_t)interactionStyle
{
  pickerConfigurationSwift = [(WiFiPickerConfiguration *)self pickerConfigurationSwift];
  interactionStyle = [pickerConfigurationSwift interactionStyle];

  return interactionStyle;
}

- (void)setInteractionStyle:(int64_t)style
{
  pickerConfigurationSwift = [(WiFiPickerConfiguration *)self pickerConfigurationSwift];
  [pickerConfigurationSwift setInteractionStyle:style];
}

- (void)setAccessoryName:(id)name
{
  nameCopy = name;
  pickerConfigurationSwift = [(WiFiPickerConfiguration *)self pickerConfigurationSwift];
  [pickerConfigurationSwift setAccessoryName:nameCopy];
}

@end