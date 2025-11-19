@interface WiFiPickerConfiguration
- (WiFiPickerConfiguration)initWithNetworks:(id)a3 currentNetwork:(id)a4;
- (WiFiPickerConfiguration)initWithNetworksInfo:(id)a3 currentNetwork:(id)a4;
- (id)description;
- (int64_t)displayOption;
- (int64_t)interactionStyle;
- (int64_t)presentationStyle;
- (void)setAccessoryName:(id)a3;
- (void)setDisplayOption:(int64_t)a3;
- (void)setInteractionStyle:(int64_t)a3;
- (void)setPresentationStyle:(int64_t)a3;
@end

@implementation WiFiPickerConfiguration

- (WiFiPickerConfiguration)initWithNetworksInfo:(id)a3 currentNetwork:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = WiFiPickerConfiguration;
  v8 = [(WiFiPickerConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [[WiFiPickerConfiguration_Swift alloc] initWithNetworksInfo:v6 currentNetwork:v7];
    pickerConfigurationSwift = v8->_pickerConfigurationSwift;
    v8->_pickerConfigurationSwift = v9;
  }

  return v8;
}

- (WiFiPickerConfiguration)initWithNetworks:(id)a3 currentNetwork:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
    v10 = v6;
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

          v15 = [*(*(&v22 + 1) + 8 * v14) wifiNetworkSwift];
          [v9 addObject:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v12);
    }

    v16 = [WiFiPickerConfiguration_Swift alloc];
    v17 = [v7 wifiNetworkSwift];
    v18 = [(WiFiPickerConfiguration_Swift *)v16 initWithNetworks:v9 currentNetwork:v17];
    pickerConfigurationSwift = v8->_pickerConfigurationSwift;
    v8->_pickerConfigurationSwift = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)description
{
  v2 = [(WiFiPickerConfiguration *)self pickerConfigurationSwift];
  v3 = [v2 description];

  return v3;
}

- (int64_t)displayOption
{
  v2 = [(WiFiPickerConfiguration *)self pickerConfigurationSwift];
  v3 = [v2 displayOption];

  if ((v3 - 1) >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (void)setDisplayOption:(int64_t)a3
{
  v3 = 2;
  if (a3 != 2)
  {
    v3 = 3;
  }

  if (a3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = [(WiFiPickerConfiguration *)self pickerConfigurationSwift];
  [v5 setDisplayOption:v4];
}

- (int64_t)presentationStyle
{
  v2 = [(WiFiPickerConfiguration *)self pickerConfigurationSwift];
  v3 = [v2 presentationStyle];

  return v3;
}

- (void)setPresentationStyle:(int64_t)a3
{
  v4 = [(WiFiPickerConfiguration *)self pickerConfigurationSwift];
  [v4 setPresentationStyle:a3];
}

- (int64_t)interactionStyle
{
  v2 = [(WiFiPickerConfiguration *)self pickerConfigurationSwift];
  v3 = [v2 interactionStyle];

  return v3;
}

- (void)setInteractionStyle:(int64_t)a3
{
  v4 = [(WiFiPickerConfiguration *)self pickerConfigurationSwift];
  [v4 setInteractionStyle:a3];
}

- (void)setAccessoryName:(id)a3
{
  v4 = a3;
  v5 = [(WiFiPickerConfiguration *)self pickerConfigurationSwift];
  [v5 setAccessoryName:v4];
}

@end