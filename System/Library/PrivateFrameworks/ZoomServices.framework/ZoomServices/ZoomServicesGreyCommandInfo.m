@interface ZoomServicesGreyCommandInfo
+ (BOOL)isZoomGreyFeatureOn;
+ (id)_pairedDevice;
+ (id)defaultCustomizeGestures;
+ (id)nameForAction:(unint64_t)a3;
+ (id)symbolNameForAction:(unint64_t)a3;
@end

@implementation ZoomServicesGreyCommandInfo

+ (id)defaultCustomizeGestures
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_2883FD900;
  v5[1] = &unk_2883FD930;
  v6[0] = &unk_2883FD918;
  v6[1] = &unk_2883FD948;
  v5[2] = &unk_2883FD960;
  v5[3] = &unk_2883FD978;
  v6[2] = &unk_2883FD918;
  v6[3] = &unk_2883FD918;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)nameForAction:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_27A6466D0[a3];
  }
}

+ (id)symbolNameForAction:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_27A6466F0[a3];
  }
}

+ (BOOL)isZoomGreyFeatureOn
{
  v2 = _os_feature_enabled_impl();
  v3 = [objc_opt_class() _pairedDevice];
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"1FD8E157-2B7C-45B6-B939-FFB8BE14E27F"];
  v5 = [v3 supportsCapability:v4];

  return v2 & v5;
}

+ (id)_pairedDevice
{
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  v6 = [v5 valueForProperty:*MEMORY[0x277D2BB30]];
  if ([v6 BOOLValue])
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

@end