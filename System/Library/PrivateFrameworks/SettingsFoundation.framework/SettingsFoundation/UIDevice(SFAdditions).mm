@interface UIDevice(SFAdditions)
- (BOOL)sf_isiPad;
- (BOOL)sf_isiPhone;
- (id)sf_colorCodedSerialNumber;
- (id)sf_configString;
- (id)sf_deviceSubTypeString;
- (id)sf_deviceType;
- (id)sf_monthAndYearOfManufacture;
- (id)sf_plantCode;
- (id)sf_productType;
- (id)sf_regionCode;
- (id)sf_regulatoryDeviceVariant;
- (id)sf_screenClassString;
- (id)sf_serialNumber;
- (id)sf_serialNumberQRImage;
- (id)sf_udidString;
- (uint64_t)sf_deviceSupportsDisplayZoom;
- (uint64_t)sf_isCarrierInstall;
- (uint64_t)sf_isChinaRegionCellularDevice;
- (uint64_t)sf_isInternalInstall;
- (uint64_t)sf_weekOfManufacture;
- (uint64_t)sf_yearOfManufacture;
@end

@implementation UIDevice(SFAdditions)

- (BOOL)sf_isiPad
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v1 = [currentDevice userInterfaceIdiom] == 1;

  return v1;
}

- (uint64_t)sf_isInternalInstall
{
  if (sf_isInternalInstall___onceToken != -1)
  {
    [UIDevice(SFAdditions) sf_isInternalInstall];
  }

  return sf_isInternalInstall___internalInstall;
}

- (uint64_t)sf_isCarrierInstall
{
  if (sf_isCarrierInstall___onceToken != -1)
  {
    [UIDevice(SFAdditions) sf_isCarrierInstall];
  }

  return sf_isCarrierInstall___carrierInstall;
}

- (BOOL)sf_isiPhone
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v1 = [currentDevice userInterfaceIdiom] == 0;

  return v1;
}

- (uint64_t)sf_isChinaRegionCellularDevice
{
  if (sf_isChinaRegionCellularDevice___greenTeaCapabilityToken != -1)
  {
    [UIDevice(SFAdditions) sf_isChinaRegionCellularDevice];
  }

  sf_isChinaRegionCellularDevice___greenTea |= CFPreferencesGetAppBooleanValue(@"fakeGreenTea", @"com.apple.preferences.cn", 0) != 0;
  return sf_isChinaRegionCellularDevice___greenTea & 1;
}

- (id)sf_serialNumber
{
  v0 = +[SFDeviceRegulatoryAttributes currentDeviceAttributes];
  serialNumber = [v0 serialNumber];

  return serialNumber;
}

- (uint64_t)sf_yearOfManufacture
{
  v0 = +[SFDeviceRegulatoryAttributes currentDeviceAttributes];
  yearForWeekOfManufacture = [v0 yearForWeekOfManufacture];

  return yearForWeekOfManufacture;
}

- (uint64_t)sf_weekOfManufacture
{
  v0 = +[SFDeviceRegulatoryAttributes currentDeviceAttributes];
  weekOfManufacture = [v0 weekOfManufacture];

  return weekOfManufacture;
}

- (id)sf_monthAndYearOfManufacture
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"year";
  v0 = MEMORY[0x277CCABB0];
  v1 = +[SFDeviceRegulatoryAttributes currentDeviceAttributes];
  v2 = [v0 numberWithUnsignedInteger:{objc_msgSend(v1, "yearOfManufacture")}];
  v9[1] = @"month";
  v10[0] = v2;
  v3 = MEMORY[0x277CCABB0];
  v4 = +[SFDeviceRegulatoryAttributes currentDeviceAttributes];
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "monthOfManufacture")}];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)sf_configString
{
  if (sf_configString_onceToken != -1)
  {
    [UIDevice(SFAdditions) sf_configString];
  }

  v1 = sf_configString___config;

  return v1;
}

- (id)sf_colorCodedSerialNumber
{
  v2 = objc_alloc(MEMORY[0x277CCA898]);
  sf_serialNumber = [self sf_serialNumber];
  v4 = [v2 initWithString:sf_serialNumber];

  if (v4)
  {
    if ([v4 length] == 12)
    {
      v5 = MEMORY[0x277CCAB68];
      string = [v4 string];
      v7 = [v5 stringWithString:string];

      [v7 insertString:@" " atIndex:3];
      [v7 insertString:@" " atIndex:6];
      [v7 insertString:@" " atIndex:10];
      v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v7];
      v9 = *MEMORY[0x277D740C0];
      orangeColor = [MEMORY[0x277D75348] orangeColor];
      [v8 addAttribute:v9 value:orangeColor range:{0, 3}];

      purpleColor = [MEMORY[0x277D75348] purpleColor];
      [v8 addAttribute:v9 value:purpleColor range:{4, 1}];

      v12 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.5 blue:0.0 alpha:1.0];
      [v8 addAttribute:v9 value:v12 range:{5, 1}];

      brownColor = [MEMORY[0x277D75348] brownColor];
      [v8 addAttribute:v9 value:brownColor range:{7, 3}];

      blueColor = [MEMORY[0x277D75348] blueColor];
      [v8 addAttribute:v9 value:blueColor range:{11, 4}];

      v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithAttributedString:v8];
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)sf_deviceSubTypeString
{
  if (sf_deviceSubTypeString_onceToken != -1)
  {
    [UIDevice(SFAdditions) sf_deviceSubTypeString];
  }

  v1 = sf_deviceSubTypeString_deviceSubTypeString;

  return v1;
}

- (id)sf_screenClassString
{
  v0 = MGGetSInt32Answer();
  if (sf_screenClassString_token != -1)
  {
    [UIDevice(SFAdditions) sf_screenClassString];
  }

  v1 = MEMORY[0x277CCACA8];
  v2 = [sf_screenClassString_screenClass objectForKeyedSubscript:@"main-screen-width"];
  v3 = [sf_screenClassString_screenClass objectForKeyedSubscript:@"main-screen-height"];
  v4 = [sf_screenClassString_screenClass objectForKeyedSubscript:@"main-screen-scale"];
  v5 = [sf_screenClassString_screenClass objectForKeyedSubscript:@"main-screen-pitch"];
  v6 = v5;
  v7 = &stru_287749F98;
  if (v0 == -1)
  {
    v7 = @" (Invalid)";
  }

  v8 = [v1 stringWithFormat:@"%@x%@x%@x%@%@", v2, v3, v4, v5, v7];

  return v8;
}

- (id)sf_regionCode
{
  if (sf_regionCode___onceToken != -1)
  {
    [UIDevice(SFAdditions) sf_regionCode];
  }

  v1 = sf_regionCode___regionCode;

  return v1;
}

- (id)sf_plantCode
{
  v0 = +[SFDeviceRegulatoryAttributes currentDeviceAttributes];
  plantCode = [v0 plantCode];

  return plantCode;
}

- (id)sf_udidString
{
  v0 = MGCopyAnswer();

  return v0;
}

- (uint64_t)sf_deviceSupportsDisplayZoom
{
  if (sf_deviceSupportsDisplayZoom_onceToken != -1)
  {
    [UIDevice(SFAdditions) sf_deviceSupportsDisplayZoom];
  }

  return sf_deviceSupportsDisplayZoom__supportsDisplayZoom;
}

- (id)sf_productType
{
  v0 = MGCopyAnswer();

  return v0;
}

- (id)sf_deviceType
{
  v0 = MGCopyAnswer();

  return v0;
}

- (id)sf_regulatoryDeviceVariant
{
  v0 = MGCopyAnswer();

  return v0;
}

- (id)sf_serialNumberQRImage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__UIDevice_SFAdditions__sf_serialNumberQRImage__block_invoke;
  block[3] = &unk_279BB09C0;
  block[4] = self;
  if (sf_serialNumberQRImage_onceToken != -1)
  {
    dispatch_once(&sf_serialNumberQRImage_onceToken, block);
  }

  return sf_serialNumberQRImage_qrCodeImageByTransform;
}

@end