@interface WFNetworkSettingsCellFactory
- (WFNetworkSettingsCellFactory)initWithTableView:(id)view;
- (id)autoJoinCellAtIndexPath:(id)path;
- (id)autoLoginCellAtIndexPath:(id)path;
- (id)contentCachesCellAtIndexPath:(id)path;
- (id)dhcpClientIDCellAtIndexPath:(id)path;
- (id)dhcpClientIDTextCellAtIndexPath:(id)path;
- (id)dnsConfigureCellAtIndexPath:(id)path;
- (id)dnsSearchDomainsCellAtIndexPath:(id)path;
- (id)dnsServerAddressesCellAtIndexPath:(id)path;
- (id)forgetCellAtIndexPath:(id)path accessory:(BOOL)accessory;
- (id)httpProxyConfigCellAtIndexPath:(id)path;
- (id)httpProxyPasswordTextCellAtIndexPath:(id)path;
- (id)httpProxyPortTextCellAtIndexPath:(id)path;
- (id)httpProxyServerTextCellAtIndexPath:(id)path;
- (id)httpProxyURLTextCellAtIndexPath:(id)path;
- (id)httpProxyUserTextCellAtIndexPath:(id)path;
- (id)ipv4AddressCellAtIndexPath:(id)path;
- (id)ipv4AddressConfigCellAtIndexPath:(id)path;
- (id)ipv4AddressTextCellAtIndexPath:(id)path;
- (id)ipv4RouterCellAtIndexPath:(id)path;
- (id)ipv4RouterTextCellAtIndexPath:(id)path;
- (id)ipv4SubnetMaskCellAtIndexPath:(id)path;
- (id)ipv4SubnetMaskTextCellAtIndexPath:(id)path;
- (id)ipv6AddressCellAtIndexPath:(id)path;
- (id)ipv6AddressConfigCellAtIndexPath:(id)path;
- (id)ipv6RouterCellAtIndexPath:(id)path;
- (id)joinCellAtIndexPath:(id)path;
- (id)manageCellAtIndexPath:(id)path;
- (id)networkQualityCellAtIndexPath:(id)path;
- (id)outrankedCellAtIndexPath:(id)path chinaDevice:(BOOL)device;
- (id)priorityCellAtIndexPath:(id)path;
- (id)privacyProxyEnabledCellAtIndexPath:(id)path;
- (id)randomMACCellAtIndexPath:(id)path chinaDevice:(BOOL)device;
- (id)recommendationCellAtIndexPath:(id)path;
- (id)renewLeaseCellAtIndexPath:(id)path;
- (id)saveDataModeCellAtIndexPath:(id)path;
- (id)segmentedCellAtIndexPath:(id)path;
- (id)wifiModeCellAtIndexPath:(id)path;
- (void)_registerCells;
@end

@implementation WFNetworkSettingsCellFactory

- (WFNetworkSettingsCellFactory)initWithTableView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    objc_storeStrong(&self->_tableView, view);
    [(WFNetworkSettingsCellFactory *)self _registerCells];
  }

  else
  {

    self = 0;
  }

  return self;
}

- (void)_registerCells
{
  v3 = MEMORY[0x277D757B0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v3 nibWithNibName:@"WFTextFieldCell" bundle:v4];

  [(UITableView *)self->_tableView registerNib:v11 forCellReuseIdentifier:@"kWFTextFieldCellIdentifier"];
  v5 = MEMORY[0x277D757B0];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 nibWithNibName:@"WFRecommendationCell" bundle:v6];

  [(UITableView *)self->_tableView registerNib:v7 forCellReuseIdentifier:@"WFRecommendationCell"];
  v8 = MEMORY[0x277D757B0];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v8 nibWithNibName:@"WFSegmentedCell" bundle:v9];

  [(UITableView *)self->_tableView registerNib:v10 forCellReuseIdentifier:@"WFSegmentedCell"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"WFJoinCell"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"WFForgetCell"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"WFManageCell"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFDNSCellIdentifier"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"WFPriorityCell"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFAutoJoinCellIdentifier"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFAutoLoginCellIdentifier"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kWiFiSaveDataModeCellIdentifier"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFPrivacyProxyEnabledCellIdentifier"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFPrivateAddressModeCellIdentifier"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFRandomMACInfoCellIdentifier"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"WFOutrankCell"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFCredentialsCellIdentifier"];
}

- (id)segmentedCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"WFSegmentedCell" forIndexPath:pathCopy];

  return v6;
}

- (id)recommendationCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"WFRecommendationCell" forIndexPath:pathCopy];

  return v6;
}

- (id)joinCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"WFJoinCell" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingJoinNetworkTitle" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v6 textLabel];
  [textLabel setText:v8];

  defaultButtonColor = [MEMORY[0x277D75348] defaultButtonColor];
  textLabel2 = [v6 textLabel];
  [textLabel2 setTextColor:defaultButtonColor];

  return v6;
}

- (id)forgetCellAtIndexPath:(id)path accessory:(BOOL)accessory
{
  accessoryCopy = accessory;
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v8 = [tableView dequeueReusableCellWithIdentifier:@"WFForgetCell" forIndexPath:pathCopy];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v9;
  forgetDeviceButtonTitle = @"kWFLocSettingForgetNetworkTitle";
  if (accessoryCopy)
  {
    v12 = @"kWFLocSettingForgetDeviceTitle";
  }

  else
  {
    v12 = @"kWFLocSettingForgetNetworkTitle";
  }

  v13 = [v9 localizedStringForKey:v12 value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v8 textLabel];
  [textLabel setText:v13];

  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (accessoryCopy)
  {
    forgetDeviceButtonTitle = [MEMORY[0x277CB8900] forgetDeviceButtonTitle];
  }

  v16 = [v15 localizedStringForKey:forgetDeviceButtonTitle value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel2 = [v8 textLabel];
  [textLabel2 setText:v16];

  if (accessoryCopy)
  {
  }

  defaultButtonColor = [MEMORY[0x277D75348] defaultButtonColor];
  textLabel3 = [v8 textLabel];
  [textLabel3 setTextColor:defaultButtonColor];

  return v8;
}

- (id)outrankedCellAtIndexPath:(id)path chinaDevice:(BOOL)device
{
  deviceCopy = device;
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v8 = [tableView dequeueReusableCellWithIdentifier:@"WFOutrankCell" forIndexPath:pathCopy];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v9;
  if (deviceCopy)
  {
    v11 = @"kWFLocSettingOutrankTitle_CH";
  }

  else
  {
    v11 = @"kWFLocSettingOutrankTitle";
  }

  v12 = [v9 localizedStringForKey:v11 value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v8 textLabel];
  [textLabel setText:v12];

  defaultButtonColor = [MEMORY[0x277D75348] defaultButtonColor];
  textLabel2 = [v8 textLabel];
  [textLabel2 setTextColor:defaultButtonColor];

  return v8;
}

- (id)manageCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"WFManageCell" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingManageNetworkTitle" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v6 textLabel];
  [textLabel setText:v8];

  defaultButtonColor = [MEMORY[0x277D75348] defaultButtonColor];
  textLabel2 = [v6 textLabel];
  [textLabel2 setTextColor:defaultButtonColor];

  return v6;
}

- (id)priorityCellAtIndexPath:(id)path
{
  v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFPriorityCell"];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocSettingAutoJoinPriorityNetworkTitle" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  [v3 setAccessoryType:1];

  return v3;
}

- (id)autoJoinCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"kWFAutoJoinCellIdentifier" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingAutoJoinNetworkTitle" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v6 textLabel];
  [textLabel setText:v8];

  [v6 setSelectionStyle:0];

  return v6;
}

- (id)autoLoginCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"kWFAutoLoginCellIdentifier" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingAutoLoginNetworkTitle" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v6 textLabel];
  [textLabel setText:v8];

  [v6 setSelectionStyle:0];

  return v6;
}

- (id)saveDataModeCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"kWiFiSaveDataModeCellIdentifier" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingSaveDataModeTitle" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v6 textLabel];
  [textLabel setText:v8];

  [v6 setSelectionStyle:0];

  return v6;
}

- (id)privacyProxyEnabledCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"kWFPrivacyProxyEnabledCellIdentifier" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingPrivacyProxyEnabledTitle" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v6 textLabel];
  [textLabel setText:v8];

  textLabel2 = [v6 textLabel];
  [textLabel2 setNumberOfLines:0];

  [v6 setSelectionStyle:0];

  return v6;
}

- (id)networkQualityCellAtIndexPath:(id)path
{
  v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"kWiFiNetworkQualityCellIdentifier"];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocSettingNetworkQualityText" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  return v3;
}

- (id)wifiModeCellAtIndexPath:(id)path
{
  v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"kWFWiFiModeCellIdentifier"];
  defaultContentConfiguration = [v3 defaultContentConfiguration];
  [v3 setContentConfiguration:defaultContentConfiguration];

  return v3;
}

- (id)randomMACCellAtIndexPath:(id)path chinaDevice:(BOOL)device
{
  deviceCopy = device;
  pathCopy = path;
  if ([pathCopy row] == 1)
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"kWFRandomMACInfoCellIdentifier"];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = v7;
    if (deviceCopy)
    {
      v9 = @"KWFLocSettingRandomMACInfoChinaTitle";
    }

    else
    {
      v9 = @"KWFLocSettingRandomMACInfoTitle";
    }

    v10 = [v7 localizedStringForKey:v9 value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
    textLabel = [v6 textLabel];
    [textLabel setText:v10];

    [v6 setSelectionStyle:0];
    altTextColor = [MEMORY[0x277D75348] altTextColor];
    detailTextLabel = [v6 detailTextLabel];
    [detailTextLabel setTextColor:altTextColor];
  }

  else if ([pathCopy row])
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"kWFPrivateAddressModeCellIdentifier"];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = v14;
    if (deviceCopy)
    {
      v16 = @"KWFLocSettingRandomMACSwitchChinaTitle";
    }

    else
    {
      v16 = @"KWFLocSettingRandomMACSwitchTitle";
    }

    v17 = [v14 localizedStringForKey:v16 value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
    textLabel2 = [v6 textLabel];
    [textLabel2 setText:v17];

    [v6 setSelectionStyle:0];
    altTextColor2 = [MEMORY[0x277D75348] altTextColor];
    detailTextLabel2 = [v6 detailTextLabel];
    [detailTextLabel2 setTextColor:altTextColor2];

    [v6 setAccessoryType:1];
  }

  return v6;
}

- (id)ipv4AddressConfigCellAtIndexPath:(id)path
{
  v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocSettingsIPConfigureTitle" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  blackColor = [MEMORY[0x277D75348] blackColor];
  detailTextLabel = [v3 detailTextLabel];
  [detailTextLabel setTextColor:blackColor];

  [v3 setAccessoryType:1];
  [v3 setSelectionStyle:1];

  return v3;
}

- (id)ipv4AddressCellAtIndexPath:(id)path
{
  v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocSettingsIPV4AddressCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  [v3 setSelectionStyle:0];
  blackColor = [MEMORY[0x277D75348] blackColor];
  detailTextLabel = [v3 detailTextLabel];
  [detailTextLabel setTextColor:blackColor];

  return v3;
}

- (id)ipv4SubnetMaskCellAtIndexPath:(id)path
{
  v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocSettingsSubnetMaskCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  blackColor = [MEMORY[0x277D75348] blackColor];
  detailTextLabel = [v3 detailTextLabel];
  [detailTextLabel setTextColor:blackColor];

  [v3 setSelectionStyle:0];

  return v3;
}

- (id)ipv4RouterCellAtIndexPath:(id)path
{
  v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocSettingsIPV4RouterCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  blackColor = [MEMORY[0x277D75348] blackColor];
  detailTextLabel = [v3 detailTextLabel];
  [detailTextLabel setTextColor:blackColor];

  [v3 setSelectionStyle:0];

  return v3;
}

- (id)dhcpClientIDCellAtIndexPath:(id)path
{
  v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocSettingsClientIDCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  blackColor = [MEMORY[0x277D75348] blackColor];
  detailTextLabel = [v3 detailTextLabel];
  [detailTextLabel setTextColor:blackColor];

  [v3 setSelectionStyle:0];

  return v3;
}

- (id)renewLeaseCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"WFForgetCell" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingsRenewLeaseCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v6 textLabel];
  [textLabel setText:v8];

  defaultButtonColor = [MEMORY[0x277D75348] defaultButtonColor];
  textLabel2 = [v6 textLabel];
  [textLabel2 setTextColor:defaultButtonColor];

  return v6;
}

- (id)ipv6AddressConfigCellAtIndexPath:(id)path
{
  v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocSettingsIPConfigureTitle" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  blackColor = [MEMORY[0x277D75348] blackColor];
  detailTextLabel = [v3 detailTextLabel];
  [detailTextLabel setTextColor:blackColor];

  [v3 setAccessoryType:1];
  [v3 setSelectionStyle:1];

  return v3;
}

- (id)ipv6AddressCellAtIndexPath:(id)path
{
  v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocSettingsIPV6AddressCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  blackColor = [MEMORY[0x277D75348] blackColor];
  detailTextLabel = [v3 detailTextLabel];
  [detailTextLabel setTextColor:blackColor];

  [v3 setSelectionStyle:0];

  return v3;
}

- (id)ipv6RouterCellAtIndexPath:(id)path
{
  v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocSettingsIPV6RouterCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  blackColor = [MEMORY[0x277D75348] blackColor];
  detailTextLabel = [v3 detailTextLabel];
  [detailTextLabel setTextColor:blackColor];

  [v3 setSelectionStyle:0];

  return v3;
}

- (id)dnsConfigureCellAtIndexPath:(id)path
{
  v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"kWFDNSCellIdentifier"];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocSettingsDNSConfigureButton" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  blackColor = [MEMORY[0x277D75348] blackColor];
  detailTextLabel = [v3 detailTextLabel];
  [detailTextLabel setTextColor:blackColor];

  [v3 setAccessoryType:1];
  [v3 setSelectionStyle:1];

  return v3;
}

- (id)httpProxyConfigCellAtIndexPath:(id)path
{
  v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocSettingsProxyConfigureButton" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  blackColor = [MEMORY[0x277D75348] blackColor];
  detailTextLabel = [v3 detailTextLabel];
  [detailTextLabel setTextColor:blackColor];

  [v3 setAccessoryType:1];
  [v3 setSelectionStyle:1];

  return v3;
}

- (id)contentCachesCellAtIndexPath:(id)path
{
  v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocSettingsContentCachesButton" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  blackColor = [MEMORY[0x277D75348] blackColor];
  detailTextLabel = [v3 detailTextLabel];
  [detailTextLabel setTextColor:blackColor];

  [v3 setAccessoryType:1];
  [v3 setSelectionStyle:1];

  return v3;
}

- (id)dnsSearchDomainsCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingsSearchDomainsCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  label = [v6 label];
  [label setText:v8];

  textField = [v6 textField];
  [textField setTextAlignment:2];

  return v6;
}

- (id)dnsServerAddressesCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingsDNSCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  label = [v6 label];
  [label setText:v8];

  textField = [v6 textField];
  [textField setTextAlignment:2];

  return v6;
}

- (id)ipv4AddressTextCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingsIPV4AddressCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  label = [v6 label];
  [label setText:v8];

  textField = [v6 textField];
  [textField setTextAlignment:2];

  return v6;
}

- (id)ipv4SubnetMaskTextCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingsSubnetMaskCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  label = [v6 label];
  [label setText:v8];

  textField = [v6 textField];
  [textField setTextAlignment:2];

  return v6;
}

- (id)ipv4RouterTextCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingsIPV4RouterCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  label = [v6 label];
  [label setText:v8];

  textField = [v6 textField];
  [textField setTextAlignment:2];

  return v6;
}

- (id)dhcpClientIDTextCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingsClientIDCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  label = [v6 label];
  [label setText:v8];

  textField = [v6 textField];
  [textField setTextAlignment:2];

  return v6;
}

- (id)httpProxyURLTextCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingsProxyURLCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  label = [v6 label];
  [label setText:v8];

  textField = [v6 textField];
  [textField setTextAlignment:2];

  textField2 = [v6 textField];
  [textField2 setKeyboardType:3];

  return v6;
}

- (id)httpProxyServerTextCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingsProxyServerCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  label = [v6 label];
  [label setText:v8];

  textField = [v6 textField];
  [textField setTextAlignment:2];

  textField2 = [v6 textField];
  [textField2 setKeyboardType:3];

  return v6;
}

- (id)httpProxyPortTextCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingsProxyPortCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  label = [v6 label];
  [label setText:v8];

  textField = [v6 textField];
  [textField setTextAlignment:2];

  textField2 = [v6 textField];
  [textField2 setKeyboardType:4];

  return v6;
}

- (id)httpProxyUserTextCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingsProxyUsernameCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  label = [v6 label];
  [label setText:v8];

  textField = [v6 textField];
  [textField setTextAlignment:2];

  textField2 = [v6 textField];
  [textField2 setTextContentType:*MEMORY[0x277D77090]];

  return v6;
}

- (id)httpProxyPasswordTextCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WFNetworkSettingsCellFactory *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:pathCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocSettingsProxyPasswordCell" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  label = [v6 label];
  [label setText:v8];

  textField = [v6 textField];
  [textField setTextAlignment:2];

  textField2 = [v6 textField];
  [textField2 setTextContentType:*MEMORY[0x277D77030]];

  textField3 = [v6 textField];
  [textField3 setSecureTextEntry:1];

  return v6;
}

@end