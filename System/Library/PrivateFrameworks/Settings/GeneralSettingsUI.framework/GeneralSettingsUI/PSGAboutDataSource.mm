@interface PSGAboutDataSource
- (BOOL)_isUsingBootstrap:(id)a3;
- (BOOL)shouldShowSIMSpecifier:(id)a3;
- (PSGAboutDataSource)init;
- (id)_ERIString:(id)a3;
- (id)_ICCIDString:(id)a3;
- (id)_IMSStatusString:(id)a3;
- (id)_MINString:(id)a3;
- (id)_NAIString:(id)a3;
- (id)_PRLString:(id)a3;
- (id)_bluetoothMACAddress;
- (id)_carrierVersion:(id)a3;
- (id)_macAddress;
- (id)_macAddressLocalizedString;
- (id)_macAddressSpecifierKey;
- (id)_modelNameString;
- (id)_modelRegionString;
- (id)_myNumber;
- (id)_productBuildVersionString;
- (id)_productVersionStringFallback;
- (id)_regulatoryModelNumberString;
- (id)aboutController;
- (id)countForKey:(id)a3;
- (id)getAPFSCurrentUserVolumeNode;
- (id)getCarrierSpecifierForSlot:(id)a3;
- (id)softwareVersionString;
- (id)specifiersForSpecifier:(id)a3 observer:(id)a4;
- (id)suManagerClient;
- (void)_accessoryDidUpdate:(id)a3;
- (void)_addKey:(id)a3 localizedString:(id)a4 isCopyable:(BOOL)a5;
- (void)_addLocalizedKey:(id)a3 identifier:(id)a4 isCopyable:(BOOL)a5 allowMultilineTitle:(BOOL)a6;
- (void)_getBootStrapIccid;
- (void)_loadMediaFinished:(id)a3;
- (void)_loadValues;
- (void)_setValue:(id)a3 forPropertyKey:(id)a4 forSpecifierWithKey:(id)a5;
- (void)_setValue:(id)a3 forSpecifier:(id)a4;
- (void)_setValue:(id)a3 forSpecifierWithKey:(id)a4;
- (void)cancelAbout;
- (void)carrierBundleChange:(id)a3;
- (void)cleanupMLReloadTimer;
- (void)dealloc;
- (void)enableMLUpdates:(BOOL)a3;
- (void)forceReloadMediaStats:(id)a3;
- (void)loadSpecifiers;
- (void)mediaLibraryDidChange:(id)a3;
- (void)prlVersionChanged:(id)a3;
- (void)prlVersionChangedForSlot:(id)a3;
- (void)reloadSpecifiers;
- (void)setDeviceName:(id)a3 specifier:(id)a4;
- (void)simStatusChangedToReady;
- (void)updateCarrierSpecifier:(id)a3;
- (void)updateProductModelSpecifier:(id)a3;
@end

@implementation PSGAboutDataSource

- (void)_addKey:(id)a3 localizedString:(id)a4 isCopyable:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x277D3FAD8];
  v9 = a3;
  v11 = [v8 preferenceSpecifierNamed:a4 target:self set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];
  [v11 setProperty:v9 forKey:*MEMORY[0x277D3FFB8]];

  if (v5)
  {
    [v11 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FED8]];
  }

  v10 = [(PSSpecifierDataSource *)self specifiers];
  [v10 addObject:v11];
}

- (void)_addLocalizedKey:(id)a3 identifier:(id)a4 isCopyable:(BOOL)a5 allowMultilineTitle:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v14 = a3;
  v10 = a4;
  v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:self set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];
  v12 = v10;
  if (v10 || (v12 = v14) != 0)
  {
    [v11 setProperty:v12 forKey:*MEMORY[0x277D3FFB8]];
  }

  if (v7)
  {
    [v11 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FED8]];
  }

  if (v6)
  {
    [v11 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  }

  v13 = [(PSSpecifierDataSource *)self specifiers];
  [v13 addObject:v11];
}

- (void)_setValue:(id)a3 forSpecifierWithKey:(id)a4
{
  v6 = a3;
  v7 = [(PSSpecifierDataSource *)self specifierForID:a4];
  [(PSGAboutDataSource *)self _setValue:v6 forSpecifier:v7];
}

- (void)_setValue:(id)a3 forSpecifier:(id)a4
{
  if (a3)
  {
    v5 = *MEMORY[0x277D401A8];
    v8 = a4;
    [v8 setProperty:a3 forKey:v5];
  }

  else
  {
    v6 = a4;
    v8 = PSG_BundleForGeneralSettingsUIFramework();
    v7 = [v8 localizedStringForKey:@"N/A" value:&stru_282E88A90 table:0];
    [v6 setProperty:v7 forKey:*MEMORY[0x277D401A8]];
  }
}

- (void)_setValue:(id)a3 forPropertyKey:(id)a4 forSpecifierWithKey:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(PSSpecifierDataSource *)self specifierForID:a5];
  [v10 setProperty:v9 forKey:v8];
}

- (id)_myNumber
{
  active = CPPhoneNumberCopyActiveCountryCode();
  v3 = CTSettingCopyEffectiveSimInfo();
  if (v3)
  {
    v4 = v3;
    if (CFDictionaryGetValue(v3, *MEMORY[0x277CC41F0]))
    {
      v5 = active == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5 || (v6 = *MEMORY[0x277CBECE8], (v7 = CFPhoneNumberCreate()) == 0))
    {
      String = &stru_282E88A90;
    }

    else
    {
      v8 = v7;
      String = CFPhoneNumberCreateString();
      CFRelease(v8);
    }

    CFRelease(v4);
    if (active)
    {
      goto LABEL_10;
    }
  }

  else
  {
    String = &stru_282E88A90;
    if (active)
    {
LABEL_10:
      CFRelease(active);
    }
  }

  if (![(__CFString *)String length])
  {
    v10 = PSG_BundleForGeneralSettingsUIFramework();
    v11 = [v10 localizedStringForKey:@"UNKNOWN_NUMBER" value:&stru_282E88A90 table:0];

    String = v11;
  }

  return String;
}

- (id)_bluetoothMACAddress
{
  mainPort = 0;
  if (!IOMasterPort(0, &mainPort) && (v4 = IOServiceNameMatching("bluetooth")) != 0 && (MatchingService = IOServiceGetMatchingService(mainPort, v4)) != 0)
  {
    v6 = MatchingService;
    v7 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"local-mac-address", *MEMORY[0x277CBECE8], 1u);
    if (v7)
    {
      v15 = v7;
      PSGGreenTeaBluetoothHardwareAddressLog(@"Reading MAC Address from Bluetooth", v8, v9, v10, v11, v12, v13, v14, v16);
      v20.location = 0;
      v20.length = 6;
      CFDataGetBytes(v15, v20, buffer);
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", buffer[0], buffer[1], buffer[2], buffer[3], buffer[4], buffer[5]];
      CFRelease(v15);
    }

    else
    {
      v2 = 0;
    }

    IOObjectRelease(v6);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_macAddressSpecifierKey
{
  if (MGGetBoolAnswer())
  {
    v2 = @"MACAddress_WLAN";
  }

  else
  {
    v2 = @"MACAddress";
  }

  return v2;
}

- (id)_macAddressLocalizedString
{
  v2 = MGGetBoolAnswer();
  v3 = PSG_BundleForGeneralSettingsUIFramework();
  v4 = v3;
  if (v2)
  {
    v5 = @"MACAddress_WLAN";
  }

  else
  {
    v5 = @"MACAddress";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_282E88A90 table:0];

  return v6;
}

- (id)_macAddress
{
  v2 = SCNetworkInterfaceCopyAll();
  v3 = [(__CFArray *)v2 count];
  if (v3)
  {
    v4 = 0;
    v5 = *MEMORY[0x277CE16D8];
    while (1)
    {
      v6 = [(__CFArray *)v2 objectAtIndex:v4];
      if ([(__CFString *)SCNetworkInterfaceGetInterfaceType(v6) isEqualToString:v5])
      {
        break;
      }

      if (v3 == ++v4)
      {
        v3 = 0;
        goto LABEL_7;
      }
    }

    PSGGreenTeaWLANHardwareAddressLog(@"Reading MAC Address from WLAN", v7, v8, v9, v10, v11, v12, v13, v15);
    v3 = SCNetworkInterfaceGetHardwareAddressString(v6);
  }

LABEL_7:

  return v3;
}

- (id)_carrierVersion:(id)a3
{
  v3 = [a3 propertyForKey:*MEMORY[0x277D40128]];
  v4 = [MEMORY[0x277D4D8C8] sharedInstance];
  v5 = [v4 carrierName:v3];

  if (v5)
  {
    v6 = [MEMORY[0x277D4D8C8] sharedInstance];
    v7 = [v6 carrierBundleVersion:v3];

    if (v7)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = PSG_BundleForGeneralSettingsUIFramework();
      v10 = [v9 localizedStringForKey:@"CARRIER_VERSION_FORMAT" value:&stru_282E88A90 table:0];
      v11 = [v8 stringWithFormat:v10, v5, v7];

      goto LABEL_7;
    }

    v12 = v5;
  }

  else
  {
    v7 = PSG_BundleForGeneralSettingsUIFramework();
    v12 = [v7 localizedStringForKey:@"NO_NETWORK" value:&stru_282E88A90 table:0];
  }

  v11 = v12;
LABEL_7:

  return v11;
}

- (void)_getBootStrapIccid
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [MEMORY[0x277D4D868] sharedInstance];
  v4 = [v3 subscriptionContexts];

  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [MEMORY[0x277D4D8D8] sharedInstance];
        v11 = [v10 mobileEquipmentInfo:v9];

        v12 = [v11 baseId];
        if (v12)
        {
          v13 = v12;
          v14 = [v11 baseId];
          v15 = [v14 length];

          if (v15)
          {
            v16 = [v11 baseId];
            bootstrapIccid = self->_bootstrapIccid;
            self->_bootstrapIccid = v16;

            goto LABEL_12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isUsingBootstrap:(id)a3
{
  v4 = MEMORY[0x277D4D8D8];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v6 mobileEquipmentInfo:v5];

  v8 = [v7 ICCID];
  bootstrapIccid = self->_bootstrapIccid;
  if (bootstrapIccid)
  {
    v10 = [(NSString *)bootstrapIccid isEqualToString:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)shouldShowSIMSpecifier:(id)a3
{
  v4 = MEMORY[0x277D4D8D8];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v6 mobileEquipmentInfo:v5];

  v8 = [v7 ICCID];
  bootstrapIccid = self->_bootstrapIccid;
  if (bootstrapIccid)
  {
    v10 = ![(NSString *)bootstrapIccid isEqualToString:v8];
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  v11 = [v8 length] != 0;

  return v11 & v10;
}

- (id)_PRLString:(id)a3
{
  v3 = [a3 propertyForKey:*MEMORY[0x277D40128]];
  v4 = [MEMORY[0x277D4D8D8] sharedInstance];
  v5 = [v4 mobileEquipmentInfo:v3];
  v6 = [v5 PRLVersion];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%hu", objc_msgSend(v6, "unsignedShortValue")];

  return v7;
}

- (id)_ERIString:(id)a3
{
  v3 = [a3 propertyForKey:*MEMORY[0x277D40128]];
  v4 = [MEMORY[0x277D4D8D8] sharedInstance];
  v5 = [v4 mobileEquipmentInfo:v3];
  v6 = [v5 ERIVersion];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%hi", objc_msgSend(v6, "shortValue")];

  return v7;
}

- (id)_NAIString:(id)a3
{
  v3 = [a3 propertyForKey:*MEMORY[0x277D40128]];
  v4 = [MEMORY[0x277D4D8D8] sharedInstance];
  v5 = [v4 mobileEquipmentInfo:v3];
  v6 = [v5 NAI];

  return v6;
}

- (id)_MINString:(id)a3
{
  v3 = [a3 propertyForKey:*MEMORY[0x277D40128]];
  v4 = [MEMORY[0x277D4D8D8] sharedInstance];
  v5 = [v4 mobileEquipmentInfo:v3];
  v6 = [v5 MIN];

  return v6;
}

- (id)_IMSStatusString:(id)a3
{
  v3 = [a3 propertyForKey:*MEMORY[0x277D40128]];
  v4 = [MEMORY[0x277D4D8D0] sharedInstance];
  v5 = [v4 IMSStatusVoice:v3];

  v6 = [MEMORY[0x277D4D8D0] sharedInstance];
  v7 = [v6 IMSStatusSMS:v3];

  v8 = [MEMORY[0x277D4D8D0] sharedInstance];
  v9 = [v8 RCSStatus:v3];

  if (v9)
  {
    v10 = v5 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && (v7 & 1) != 0)
  {
    v11 = @"STATUS_VOICE_AND_SMS_AND_RCS";
LABEL_13:
    v13 = PSG_LocalizedStringForGeneral(v11);
    goto LABEL_15;
  }

  v12 = @"IMS_STATUS_VOICE";
  if ((v5 & v7) != 0)
  {
    v12 = @"IMS_STATUS_VOICE_AND_SMS";
  }

  if (v5)
  {
    v11 = v12;
  }

  else
  {
    v11 = @"IMS_STATUS_SMS";
  }

  if ((v5 | v7))
  {
    goto LABEL_13;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)_ICCIDString:(id)a3
{
  v4 = [a3 propertyForKey:*MEMORY[0x277D40128]];
  LODWORD(self) = [(PSGAboutDataSource *)self _isUsingBootstrap:v4];
  v5 = [MEMORY[0x277D4D8D8] sharedInstance];
  v6 = [v5 mobileEquipmentInfo:v4];
  v7 = v6;
  if (self)
  {
    [v6 effectiveICCID];
  }

  else
  {
    [v6 ICCID];
  }
  v8 = ;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v10 = PSG_BundleForGeneralSettingsUIFramework();
    v9 = [v10 localizedStringForKey:@"NO_SIM" value:&stru_282E88A90 table:0];
  }

  return v9;
}

- (void)updateCarrierSpecifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_24;
  }

  v6 = [v4 propertyForKey:*MEMORY[0x277D40128]];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "slotID")}];
  v8 = [(NSMutableDictionary *)self->_carrierCellState objectForKeyedSubscript:v7];
  v9 = [v8 intValue];

  v10 = [(NSMutableDictionary *)self->_carrierCellState objectForKeyedSubscript:v7];
  v11 = ([v10 intValue] + 1) % 6uLL;

  v12 = [MEMORY[0x277D4D8D8] sharedInstance];
  v13 = [v12 mobileEquipmentInfo:v6];

  v31 = v13;
  if (v11 <= 2)
  {
    if (v11 == 1)
    {
      v14 = [v13 PRLVersion];

      if (v14)
      {
        v15 = v9;
        v16 = PSG_BundleForGeneralSettingsUIFramework();
        v17 = [v16 localizedStringForKey:@"PRL" value:&stru_282E88A90 table:0];
        [v5 setName:v17];

        v18 = 1;
        v19 = &selRef__PRLString_;
        goto LABEL_21;
      }
    }

    else if (v11 != 2)
    {
      goto LABEL_20;
    }

    v20 = [v13 ERIVersion];

    if (v20)
    {
      v15 = v9;
      v16 = PSG_BundleForGeneralSettingsUIFramework();
      v21 = [v16 localizedStringForKey:@"ERI" value:&stru_282E88A90 table:0];
      [v5 setName:v21];

      v18 = 2;
      v19 = &selRef__ERIString_;
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v11 == 3)
  {
LABEL_14:
    v22 = [v13 NAI];

    if (v22)
    {
      v15 = v9;
      v16 = PSG_BundleForGeneralSettingsUIFramework();
      v23 = [v16 localizedStringForKey:@"NAI" value:&stru_282E88A90 table:0];
      [v5 setName:v23];

      v18 = 3;
      v19 = &selRef__NAIString_;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v11 == 4)
  {
LABEL_16:
    v24 = [v13 MIN];

    if (v24)
    {
      v15 = v9;
      v16 = PSG_BundleForGeneralSettingsUIFramework();
      v25 = [v16 localizedStringForKey:@"MSID" value:&stru_282E88A90 table:0];
      [v5 setName:v25];

      v18 = 4;
      v19 = &selRef__MINString_;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v11 != 5)
  {
    goto LABEL_20;
  }

LABEL_18:
  v26 = [(PSGAboutDataSource *)self _IMSStatusString:v5, v31];

  if (!v26)
  {
LABEL_20:
    v15 = v9;
    v16 = PSG_BundleForGeneralSettingsUIFramework();
    v27 = [v16 localizedStringForKey:@"CARRIER_VERSION" value:&stru_282E88A90 table:0];
    [v5 setName:v27];

    v18 = 0;
    v19 = &selRef__carrierVersion_;
    goto LABEL_21;
  }

  v15 = v9;
  v16 = PSG_LocalizedStringForGeneral(@"IMS_STATUS");
  [v5 setName:v16];
  v18 = 5;
  v19 = &selRef__IMSStatusString_;
LABEL_21:

  *&v5[*MEMORY[0x277D3FCA8]] = *v19;
  v28 = [MEMORY[0x277CCABB0] numberWithInt:v18];
  [(NSMutableDictionary *)self->_carrierCellState setObject:v28 forKeyedSubscript:v7];

  v29 = [(NSMutableDictionary *)self->_carrierCellState objectForKeyedSubscript:v7];
  v30 = [v29 intValue];

  if (v30 != v15)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __45__PSGAboutDataSource_updateCarrierSpecifier___block_invoke;
    v32[3] = &unk_278324F08;
    v33 = v5;
    [(PSSpecifierDataSource *)self performUpdatesAnimated:0 usingBlock:v32];
  }

LABEL_24:
}

void __45__PSGAboutDataSource_updateCarrierSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v5 indexOfSpecifier:v3];
  [v5 removeSpecifierAtIndex:v4];
  [v5 insertSpecifier:*(a1 + 32) atIndex:v4];
}

- (id)_modelRegionString
{
  if (_modelRegionString_onceToken != -1)
  {
    [PSGAboutDataSource _modelRegionString];
  }

  v3 = _modelRegionString_modelRegionString;

  return v3;
}

void __40__PSGAboutDataSource__modelRegionString__block_invoke()
{
  v4 = MGCopyAnswer();
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = &stru_282E88A90;
  }

  v2 = [v4 length];
  if (v2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v4, v1];
  }

  v3 = _modelRegionString_modelRegionString;
  _modelRegionString_modelRegionString = v2;
}

- (id)_regulatoryModelNumberString
{
  if (_regulatoryModelNumberString_onceToken != -1)
  {
    [PSGAboutDataSource _regulatoryModelNumberString];
  }

  v3 = _regulatoryModelNumberString_regulatoryModelNumberString;

  return v3;
}

uint64_t __50__PSGAboutDataSource__regulatoryModelNumberString__block_invoke()
{
  _regulatoryModelNumberString_regulatoryModelNumberString = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

- (id)_modelNameString
{
  if (_modelNameString_onceToken != -1)
  {
    [PSGAboutDataSource _modelNameString];
  }

  v3 = _modelNameString_modelNameString;

  return PSG_LocalizedStringForModelNames(v3);
}

void __38__PSGAboutDataSource__modelNameString__block_invoke()
{
  v2 = MGCopyAnswer();
  v0 = [v2 objectForKey:@"ArtworkDeviceProductDescription"];
  v1 = _modelNameString_modelNameString;
  _modelNameString_modelNameString = v0;
}

- (id)_productVersionStringFallback
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = v3 = @"/System/Library/CoreServices/SystemVersion.plist";
  v5 = [v2 initWithContentsOfFile:v4];

  v6 = [v5 objectForKey:@"ProductVersion"];

  return v6;
}

- (id)_productBuildVersionString
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 sf_isiPad];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAC38] processInfo];
    v6 = v5;
    if (v5)
    {
      [v5 operatingSystemVersion];
    }
  }

  v7 = _CFCopySupplementalVersionDictionary();
  v8 = v7;
  if (v7 && ([v7 objectForKeyedSubscript:*MEMORY[0x277CBEC90]], v9 = objc_claimAutoreleasedReturnValue(), v10 = _productBuildVersionString_productVersion, _productBuildVersionString_productVersion = v9, v10, _productBuildVersionString_productVersion))
  {
    v11 = _productBuildVersionString_productVersion;
  }

  else
  {
    v11 = [(PSGAboutDataSource *)self _productVersionStringFallback];
  }

  v12 = v11;

  return v12;
}

- (id)suManagerClient
{
  suClient = self->_suClient;
  if (!suClient)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.preferences.about.sumanagerclient", v4);

    v6 = [objc_alloc(MEMORY[0x277D648B8]) initWithDelegate:0 queue:v5 clientType:0];
    v7 = self->_suClient;
    self->_suClient = v6;

    suClient = self->_suClient;
  }

  return suClient;
}

- (id)softwareVersionString
{
  v2 = PSG_BundleForGeneralSettingsUIFramework();
  v3 = [v2 localizedStringForKey:@"OS Version" value:&stru_282E88A90 table:0];
  v4 = softwareVersionString_softwareVersionString;
  softwareVersionString_softwareVersionString = v3;

  v5 = softwareVersionString_softwareVersionString;

  return v5;
}

- (void)cancelAbout
{
  v2 = [(PSGAboutDataSource *)self aboutController];
  [v2 dismissModalViewControllerWithTransition:7];
}

- (void)updateProductModelSpecifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PSGAboutDataSource *)self _modelRegionString];
    v6 = [(PSGAboutDataSource *)self _regulatoryModelNumberString];
    v7 = v6;
    if (v5 && v6)
    {
      v8 = *MEMORY[0x277D401A8];
      v9 = [v4 propertyForKey:*MEMORY[0x277D401A8]];
      v10 = [v9 isEqualToString:v5];

      v11 = v7;
      if ((v10 & 1) != 0 || ([v4 propertyForKey:v8], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", v7), v12, v11 = v5, v13))
      {
        [(PSGAboutDataSource *)self _setValue:v11 forSpecifier:v4];
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __50__PSGAboutDataSource_updateProductModelSpecifier___block_invoke;
      v14[3] = &unk_278324F08;
      v15 = v4;
      [(PSSpecifierDataSource *)self performUpdatesAnimated:0 usingBlock:v14];
    }
  }
}

- (void)_loadMediaFinished:(id)a3
{
  v6 = a3;
  mediaDict = self->_mediaDict;
  self->_mediaDict = 0;

  if (!self->_cancel)
  {
    self->_loaded = 1;
    objc_storeStrong(&self->_mediaDict, a3);
    [(PSSpecifierDataSource *)self performUpdatesAnimated:0 usingBlock:&__block_literal_global_432];
  }

  self->_threadRunning = 0;
  [(NSLock *)self->_lock unlock];
}

- (id)countForKey:(id)a3
{
  v4 = a3;
  if (self->_reloadTimer || !self->_loaded && (self->_threadRunning || (self->_threadRunning = 1, [(NSLock *)self->_lock lock], ALGetPhotosAndVideosCount(), !self->_loaded)))
  {
    v5 = self->_loading;
  }

  else
  {
    v6 = MEMORY[0x277CCABB8];
    v7 = [(NSMutableDictionary *)self->_mediaDict objectForKey:v4];
    v5 = [v6 localizedStringFromNumber:v7 numberStyle:1];
  }

  return v5;
}

void __34__PSGAboutDataSource_countForKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [MEMORY[0x277CD5E38] setFilteringDisabled:1];
  v8 = [MEMORY[0x277CD5E38] songsQuery];
  [v8 setIgnoreSystemFilterPredicates:1];
  [v8 setIgnoreRestrictionsPredicates:1];
  [v8 setShouldIncludeNonLibraryEntities:1];
  v9 = *MEMORY[0x277CD5768];
  v10 = [MEMORY[0x277CD5E30] predicateWithValue:MEMORY[0x277CBEC38] forProperty:*MEMORY[0x277CD5768]];
  [v8 addFilterPredicate:v10];

  v11 = [v8 _countOfItems];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  [v7 setObject:v12 forKey:@"songs"];

  if (v17)
  {
    [v7 setObject:v17 forKey:@"photos"];
  }

  else
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
    [v7 setObject:v13 forKey:@"photos"];
  }

  v14 = [MEMORY[0x277CD5E38] videosQuery];
  [v14 setIgnoreSystemFilterPredicates:1];
  [v14 setIgnoreRestrictionsPredicates:1];
  v15 = [MEMORY[0x277CD5E30] predicateWithValue:MEMORY[0x277CBEC38] forProperty:v9];
  [v14 addFilterPredicate:v15];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "unsignedIntegerValue") + objc_msgSend(v14, "_countOfItems")}];
  [v7 setObject:v16 forKey:@"videos"];

  [*(a1 + 32) performSelectorOnMainThread:sel__loadMediaFinished_ withObject:v7 waitUntilDone:0];
  objc_autoreleasePoolPop(v6);
}

- (void)setDeviceName:(id)a3 specifier:(id)a4
{
  v7 = a3;
  v5 = [(PSGAboutDataSource *)self deviceNameToIgnoreOnce];
  v6 = [v5 isEqualToString:v7];

  if (v6)
  {
    [(PSGAboutDataSource *)self setDeviceNameToIgnoreOnce:0];
  }

  else
  {
    SetDeviceName();
    [(PSSpecifierDataSource *)self performUpdatesAnimated:0 usingBlock:&__block_literal_global_459];
  }
}

- (id)specifiersForSpecifier:(id)a3 observer:(id)a4
{
  v5 = a4;
  if (![(PSGAboutDataSource *)self areSpecifiersLoaded])
  {
    [(PSGAboutDataSource *)self loadSpecifiers];
  }

  if ([v5 observerType] == 1)
  {
    [(PSGAboutDataSource *)self _loadValues];
  }

  v6 = MEMORY[0x277CBEA60];
  v7 = [(PSSpecifierDataSource *)self specifiers];
  v8 = [v6 arrayWithArray:v7];

  return v8;
}

- (void)_loadValues
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_21CF20000, v0, OS_LOG_TYPE_ERROR, "%s error fetching volume space info: %d", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

void __33__PSGAboutDataSource__loadValues__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 appState];
  v4 = [v3 isInstalled];

  v5 = v8;
  if (v4)
  {
    v6 = [v8 correspondingApplicationRecord];
    v7 = [v6 appClipMetadata];

    if (!v7)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }

    v5 = v8;
  }
}

- (id)getAPFSCurrentUserVolumeNode
{
  if (getAPFSCurrentUserVolumeNode_onceToken != -1)
  {
    [PSGAboutDataSource getAPFSCurrentUserVolumeNode];
  }

  v3 = getAPFSCurrentUserVolumeNode_volumeDeviceNode;

  return v3;
}

void __50__PSGAboutDataSource_getAPFSCurrentUserVolumeNode__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  bzero(&v6, 0x878uLL);
  v0 = NSHomeDirectory();
  v1 = statfs([v0 UTF8String], &v6);

  if (v1)
  {
    v2 = _PSGLoggingFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __50__PSGAboutDataSource_getAPFSCurrentUserVolumeNode__block_invoke_cold_1();
    }
  }

  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6.f_mntfromname];
  v4 = getAPFSCurrentUserVolumeNode_volumeDeviceNode;
  getAPFSCurrentUserVolumeNode_volumeDeviceNode = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (void)reloadSpecifiers
{
  self->_hasLoadedSpecifiers = 0;
  v2.receiver = self;
  v2.super_class = PSGAboutDataSource;
  [(PSSpecifierDataSource *)&v2 reloadSpecifiers];
}

- (id)aboutController
{
  v2 = [(PSSpecifierDataSource *)self observersOfClass:NSClassFromString(&cfstr_Psgaboutcontro_2.isa)];
  v3 = [v2 anyObject];

  return v3;
}

- (void)loadSpecifiers
{
  v2 = self;
  v385 = *MEMORY[0x277D85DE8];
  [(PSGAboutDataSource *)self _getBootStrapIccid];
  if (v2->_hasLoadedSpecifiers)
  {
    goto LABEL_188;
  }

  v2->_hasLoadedSpecifiers = 1;
  v3 = [(PSSpecifierDataSource *)v2 specifiers];
  v4 = PSG_LocalizedStringForGeneral(@"Device_Name");
  v5 = MGGetBoolAnswer();
  obj = MGGetBoolAnswer();
  v337 = MGGetBoolAnswer();
  v6 = MGGetBoolAnswer();
  v7 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v353 = v3;
  [v3 addObject:v7];
  v8 = PSGIsDeviceNameSettable();
  v9 = MEMORY[0x277D3FAD8];
  v324 = v7;
  if (v8)
  {
    v10 = objc_opt_class();
    v11 = 2;
  }

  else
  {
    v10 = 0;
    v11 = 4;
  }

  v12 = [v9 preferenceSpecifierNamed:v4 target:v2 set:sel_setDeviceName_specifier_ get:sel_deviceName_ detail:v10 cell:v11 edit:0];
  v343 = *MEMORY[0x277D3FFB8];
  [v12 setProperty:@"NAME_CELL_ID" forKey:?];
  v323 = v12;
  [v353 addObject:v12];
  LODWORD(v12) = _os_feature_enabled_impl();
  v13 = MEMORY[0x277D3FAD8];
  v14 = [(PSGAboutDataSource *)v2 softwareVersionString];
  v15 = [v13 preferenceSpecifierNamed:v14 target:v2 set:0 get:sel__productBuildVersionString detail:objc_opt_class() cell:2 edit:0];

  v345 = v6;
  if (v12)
  {
    v16 = PSBundlePathForPreferenceBundle();
    v18 = v17 = v16;
    [v15 setProperty:v18 forKey:*MEMORY[0x277D40000]];

    [v15 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FDF8]];
    [v15 setControllerLoadAction:sel_lazyLoadBundle_];
  }

  else
  {
    v19 = [(PSGAboutDataSource *)v2 suManagerClient];
    [v15 setProperty:v19 forKey:@"SUManagerClient"];
  }

  [v15 setProperty:@"SW_VERSION_SPECIFIER" forKey:v343];
  v330 = *MEMORY[0x277D3FED8];
  [v15 setProperty:MEMORY[0x277CBEC38] forKey:?];
  v322 = v15;
  [v353 addObject:v15];
  v20 = PSG_BundleForGeneralSettingsUIFramework();
  v21 = [v20 localizedStringForKey:@"ProductModelName" value:&stru_282E88A90 table:0];
  [(PSGAboutDataSource *)v2 _addKey:@"ProductModelName" localizedString:v21 isCopyable:1];

  v22 = PSG_BundleForGeneralSettingsUIFramework();
  v23 = [v22 localizedStringForKey:@"ProductModel" value:&stru_282E88A90 table:0];
  [(PSGAboutDataSource *)v2 _addKey:@"ProductModel" localizedString:v23 isCopyable:1];

  v24 = PSG_BundleForGeneralSettingsUIFramework();
  v25 = [v24 localizedStringForKey:@"SerialNumber" value:&stru_282E88A90 table:0];
  [(PSGAboutDataSource *)v2 _addKey:@"SerialNumber" localizedString:v25 isCopyable:1];

  v26 = [(PSGAboutDataSource *)v2 sharedNDOController];
  v27 = [v26 specifiers];

  if (v27)
  {
    [v353 addObjectsFromArray:v27];
  }

  v321 = v27;
  v325 = v4;
  if (objc_opt_class())
  {
    v28 = [(PSGAboutDataSource *)v2 systemHealthUIClient];
    v29 = [v28 getCurrentSystemHealthInfoSpecifiers];
    [v353 addObjectsFromArray:v29];
  }

  v30 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [v30 setProperty:@"INFORMATION_GROUP" forKey:v343];
  v320 = v30;
  [v353 addObject:v30];
  if (v5)
  {
    v31 = [MEMORY[0x277D4D868] sharedInstance];
    v32 = [v31 subscriptionContexts];

    v33 = [MEMORY[0x277D4D8D8] sharedInstance];
    v34 = [v33 mobileEquipmentInfoLength];

    if (v34 <= 1)
    {
      v35 = [v32 objectAtIndexedSubscript:0];
      if (![(PSGAboutDataSource *)v2 _isUsingBootstrap:v35])
      {
        v36 = MEMORY[0x277D3FAD8];
        v37 = PSG_BundleForGeneralSettingsUIFramework();
        [v37 localizedStringForKey:@"NETWORK" value:&stru_282E88A90 table:0];
        v39 = v38 = v5;
        v40 = [v36 preferenceSpecifierNamed:v39 target:v2 set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

        v5 = v38;
        v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"NETWORK", objc_msgSend(v35, "slotID")];
        [v40 setProperty:v41 forKey:v343];
        [v353 addObject:v40];
      }
    }
  }

  v348 = v5;
  v42 = PSG_BundleForGeneralSettingsUIFramework();
  v43 = [v42 localizedStringForKey:@"SONGS" value:&stru_282E88A90 table:0];

  v44 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v43 target:v2 set:0 get:sel__songs_ detail:0 cell:4 edit:0];
  [v44 setProperty:@"SONGS" forKey:v343];
  v45 = v353;
  [v353 addObject:v44];
  v46 = PSG_BundleForGeneralSettingsUIFramework();
  v47 = [v46 localizedStringForKey:@"VIDEOS" value:&stru_282E88A90 table:0];

  v48 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v47 target:v2 set:0 get:sel__videos_ detail:0 cell:4 edit:0];

  [v48 setProperty:@"VIDEOS" forKey:v343];
  [v353 addObject:v48];
  v49 = PSG_BundleForGeneralSettingsUIFramework();
  v50 = [v49 localizedStringForKey:@"PHOTOS" value:&stru_282E88A90 table:0];

  v319 = v50;
  v51 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v50 target:v2 set:0 get:sel__photos_ detail:0 cell:4 edit:0];

  [v51 setProperty:@"PHOTOS" forKey:v343];
  v336 = v51;
  [v353 addObject:v51];
  v52 = PSG_BundleForGeneralSettingsUIFramework();
  v53 = [v52 localizedStringForKey:@"APPLICATIONS" value:&stru_282E88A90 table:0];

  v318 = v53;
  v54 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v53 target:v2 set:0 get:0 detail:? cell:? edit:?];
  [v54 setProperty:@"APPLICATIONS" forKey:v343];
  v317 = v54;
  [v353 addObject:v54];
  v55 = PSG_BundleForGeneralSettingsUIFramework();
  v56 = [v55 localizedStringForKey:@"User Data Capacity" value:&stru_282E88A90 table:0];
  [(PSGAboutDataSource *)v2 _addKey:@"User Data Capacity" localizedString:v56 isCopyable:0];

  v57 = PSG_BundleForGeneralSettingsUIFramework();
  v58 = [v57 localizedStringForKey:@"User Data Available" value:&stru_282E88A90 table:0];
  v354 = v2;
  [(PSGAboutDataSource *)v2 _addKey:@"User Data Available" localizedString:v58 isCopyable:0];

  if ([MEMORY[0x277D03538] isSharediPad])
  {
    v59 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v353 addObject:v59];
    v60 = [MEMORY[0x277D77BF8] sharedManager];
    v61 = [v60 currentUser];

    v62 = objc_opt_new();
    v63 = [v61 givenName];
    [v62 setGivenName:v63];

    v64 = [v61 familyName];
    [v62 setFamilyName:v64];

    v65 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v62 style:1 options:0];
    if (!v65)
    {
      v65 = PSG_LocalizedStringForAbout(@"USER");
    }

    v66 = v65;

    v67 = MEMORY[0x277CCACA8];
    v68 = PSG_LocalizedStringForAbout(@"SHARED_IPAD_USER_CAPACITY");
    v69 = [v67 stringWithFormat:v68, v66];
    [(PSGAboutDataSource *)v2 _addLocalizedKey:v69 identifier:@"SHARED_IPAD_USER_CAPACITY" isCopyable:0 allowMultilineTitle:1];

    v70 = MEMORY[0x277CCACA8];
    v71 = PSG_LocalizedStringForAbout(@"SHARED_IPAD_USER_AVAILABE");
    v72 = [v70 stringWithFormat:v71, v66];
    [(PSGAboutDataSource *)v2 _addLocalizedKey:v72 identifier:@"SHARED_IPAD_USER_AVAILABE" isCopyable:0 allowMultilineTitle:1];

    v45 = v353;
  }

  v73 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HARDWARE_GROUP"];
  [v45 addObject:v73];

  v74 = v45;
  v75 = v348;
  if (v348)
  {
    v76 = [MEMORY[0x277D4D868] sharedInstance];
    v77 = [v76 subscriptionContexts];

    v78 = [MEMORY[0x277D4D8D8] sharedInstance];
    v79 = [v78 mobileEquipmentInfoLength];

    if (v79 <= 1)
    {
      v80 = [v77 objectAtIndexedSubscript:0];
      v81 = MEMORY[0x277D3FAD8];
      v82 = PSG_BundleForGeneralSettingsUIFramework();
      v83 = [v82 localizedStringForKey:@"CARRIER_VERSION" value:&stru_282E88A90 table:0];
      v84 = [v81 preferenceSpecifierNamed:v83 target:v2 set:0 get:sel__carrierVersion_ detail:0 cell:4 edit:0];

      v85 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"CARRIER_VERSION", objc_msgSend(v80, "slotID")];
      [v84 setProperty:v85 forKey:v343];
      [v84 setProperty:v80 forKey:*MEMORY[0x277D40128]];
      [v353 addObject:v84];

      v74 = v353;
      v336 = v84;
    }

    v86 = [MEMORY[0x277D75418] currentDevice];
    v87 = [v86 sf_isiPad];

    if (v87)
    {
      v88 = PSG_BundleForGeneralSettingsUIFramework();
      v89 = [v88 localizedStringForKey:@"CellularDataAddress" value:&stru_282E88A90 table:0];
      [(PSGAboutDataSource *)v2 _addKey:@"CellularDataAddress" localizedString:v89 isCopyable:0];
    }
  }

  if (v337)
  {
    v90 = [(PSGAboutDataSource *)v2 _macAddressSpecifierKey];
    v91 = [(PSGAboutDataSource *)v2 _macAddressLocalizedString];
    [(PSGAboutDataSource *)v2 _addKey:v90 localizedString:v91 isCopyable:1];

    if (!obj)
    {
LABEL_29:
      if (!v348)
      {
        goto LABEL_47;
      }

      goto LABEL_33;
    }
  }

  else if (!obj)
  {
    goto LABEL_29;
  }

  v92 = PSG_BundleForGeneralSettingsUIFramework();
  v93 = [v92 localizedStringForKey:@"BTMACAddress" value:&stru_282E88A90 table:0];
  [(PSGAboutDataSource *)v2 _addKey:@"BTMACAddress" localizedString:v93 isCopyable:1];

  if (!v348)
  {
    goto LABEL_47;
  }

LABEL_33:
  v94 = [MEMORY[0x277D4D868] sharedInstance];
  v95 = [v94 subscriptionContexts];

  v96 = [MEMORY[0x277D4D8D8] sharedInstance];
  v97 = [v96 mobileEquipmentInfoLength];

  if (v97 <= 1)
  {
    v98 = [v95 objectAtIndexedSubscript:0];
    v99 = [MEMORY[0x277D4D8D8] sharedInstance];
    v100 = [v99 mobileEquipmentInfo:v98];

    if (v100)
    {
      v101 = [v100 IMEI];

      if (v101)
      {
        v102 = MEMORY[0x277D3FAD8];
        v103 = PSG_BundleForGeneralSettingsUIFramework();
        v104 = [v103 localizedStringForKey:@"ModemIMEI" value:&stru_282E88A90 table:0];
        v105 = [v102 preferenceSpecifierNamed:v104 target:v354 set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

        v106 = MEMORY[0x277CCACA8];
        [v98 slotID];
        v107 = [v106 stringWithFormat:@"%@.%li"];
        [v105 setProperty:v107 forKey:v343];
        PSGGreenTeaIMEILog(@"Reading IMEI from CTMobileEquipmentInfo", v108, v109, v110, v111, v112, v113, v114, @"ModemIMEI");
        v115 = [v100 IMEI];
        v116 = [v115 psg_IMEIString];
        v117 = *MEMORY[0x277D401A8];
        [v105 setProperty:v116 forKey:*MEMORY[0x277D401A8]];

        v2 = v354;
        v118 = MEMORY[0x277CBEC38];
        [v105 setProperty:MEMORY[0x277CBEC38] forKey:v330];
        obja = *MEMORY[0x277D40188];
        [v105 setProperty:v118 forKey:?];
        [v353 addObject:v105];
        if ([(PSGAboutDataSource *)v354 shouldShowSIMSpecifier:v98])
        {
          v119 = MEMORY[0x277D3FAD8];
          v120 = PSG_BundleForGeneralSettingsUIFramework();
          v121 = [v120 localizedStringForKey:@"ICCID" value:&stru_282E88A90 table:0];
          v122 = [v119 preferenceSpecifierNamed:v121 target:v354 set:0 get:sel__ICCIDString_ detail:0 cell:4 edit:0];

          v123 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"ICCID", objc_msgSend(v98, "slotID")];
          [v122 setProperty:v123 forKey:v343];
          v124 = MEMORY[0x277CBEC38];
          [v122 setProperty:MEMORY[0x277CBEC38] forKey:v330];
          [v122 setProperty:v124 forKey:obja];
          [v122 setProperty:v98 forKey:*MEMORY[0x277D40128]];
          [v353 addObject:v122];

          v2 = v354;
        }

        v125 = [v100 MEID];

        if (v125)
        {
          v126 = MEMORY[0x277D3FAD8];
          v127 = PSG_BundleForGeneralSettingsUIFramework();
          [v127 localizedStringForKey:@"MEID" value:&stru_282E88A90 table:0];
          v129 = v128 = v117;
          v130 = [v126 preferenceSpecifierNamed:v129 target:v2 set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

          v131 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"MEID", objc_msgSend(v98, "slotID")];
          [v130 setProperty:v131 forKey:v343];
          v132 = [v100 MEID];
          [v130 setProperty:v132 forKey:v128];

          v133 = MEMORY[0x277CBEC38];
          [v130 setProperty:MEMORY[0x277CBEC38] forKey:v330];
          [v130 setProperty:v133 forKey:obja];
          [v353 addObject:v130];

          v2 = v354;
        }

        v75 = v348;
      }
    }

    v74 = v353;
  }

  *buf = 0;
  v383 = 0u;
  v384 = 0;
  *&buf[8] = v2;
  v134 = *MEMORY[0x277CBECE8];
  v135 = _CTServerConnectionCreate();
  if (v135)
  {
    v136 = v135;
    cf = 0;
    if (!(_CTServerConnectionCopyFirmwareVersion() >> 32))
    {
      v137 = PSG_BundleForGeneralSettingsUIFramework();
      v138 = [v137 localizedStringForKey:@"ModemVersion" value:&stru_282E88A90 table:0];
      v74 = v353;
      [(PSGAboutDataSource *)v2 _addKey:@"ModemVersion" localizedString:v138 value:cf isCopyable:0];

      v139 = [v353 lastObject];
      [v139 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40188]];
    }

    CFRelease(v136);
  }

LABEL_47:
  if (v345)
  {
    v140 = PSG_BundleForGeneralSettingsUIFramework();
    v141 = [v140 localizedStringForKey:@"SEID" value:&stru_282E88A90 table:0];

    v142 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v141 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    [v74 addObject:v142];
  }

  if (!v75)
  {
    goto LABEL_77;
  }

  v143 = [MEMORY[0x277D4D8C0] sharedInstance];
  v144 = [v143 isActivationCodeFlowSupported];

  if (v144)
  {
    v145 = [MEMORY[0x277D4D868] sharedInstance];
    v146 = [v145 subscriptionContexts];

    v147 = [MEMORY[0x277D4D8D8] sharedInstance];
    v148 = [v146 objectAtIndexedSubscript:0];
    v149 = [v147 mobileEquipmentInfo:v148];

    if ([v146 count] < 2)
    {
      if (!v149)
      {
LABEL_59:
        v156 = &stru_282E88A90;
LABEL_66:

        goto LABEL_67;
      }

      v152 = 0;
    }

    else
    {
      v150 = [MEMORY[0x277D4D8D8] sharedInstance];
      v151 = [v146 objectAtIndexedSubscript:1];
      v152 = [v150 mobileEquipmentInfo:v151];

      if (!v149)
      {
        if (!v152)
        {
          goto LABEL_59;
        }

        goto LABEL_61;
      }
    }

    v153 = [v149 CSN];
    v154 = [v153 length];

    if (v154)
    {
      v155 = v149;
LABEL_63:
      v156 = [v155 CSN];
LABEL_65:
      v159 = MEMORY[0x277D3FAD8];
      v160 = PSG_LocalizedStringForGeneral(@"EID");
      v161 = [v159 preferenceSpecifierNamed:v160 target:v354 set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

      v2 = v354;
      [v161 setProperty:@"EID" forKey:v343];
      [v161 setProperty:v156 forKey:*MEMORY[0x277D40160]];
      [v161 setProperty:v156 forKey:*MEMORY[0x277D401A8]];
      [v161 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      [v161 setProperty:MEMORY[0x277CBEC38] forKey:v330];
      [v353 addObject:v161];

      goto LABEL_66;
    }

    if (!v152)
    {
LABEL_64:
      v156 = &stru_282E88A90;
      goto LABEL_65;
    }

LABEL_61:
    v157 = [v152 CSN];
    v158 = [v157 length];

    if (v158)
    {
      v155 = v152;
      goto LABEL_63;
    }

    goto LABEL_64;
  }

LABEL_67:
  v162 = +[PSUICoreTelephonyPostponementCache sharedInstance];
  v163 = [v162 getActivationPolicyState];

  if (v163 && [v163 carrierLock])
  {
    v164 = [v163 carrierLock];
    v165 = PSG_LocalizedStringForGeneral(@"CARRIER_LOCK");
    if (v164 == 1)
    {
      v166 = @"CARRIER_LOCK_UNLOCKED";
    }

    else
    {
      v166 = @"CARRIER_LOCK_LOCKED";
    }

    v167 = PSG_LocalizedStringForGeneral(v166);
    v168 = MEMORY[0x277D3FAD8];
    if (v164 == 1)
    {
      v169 = 0;
      v170 = 4;
    }

    else
    {
      v169 = objc_opt_class();
      v170 = 2;
    }

    v171 = [v168 preferenceSpecifierNamed:v165 target:v2 set:0 get:sel_valueForSpecifier_ detail:v169 cell:v170 edit:0];
    [v171 setProperty:v167 forKey:*MEMORY[0x277D401A8]];
    [v353 addObject:v171];
  }

LABEL_77:
  v172 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
  v173 = [v172 availableAccessories];

  v374 = 0u;
  v375 = 0u;
  v372 = 0u;
  v373 = 0u;
  objb = v173;
  v174 = [objb countByEnumeratingWithState:&v372 objects:v381 count:16];
  v175 = 0x277D3F000uLL;
  if (v174)
  {
    v176 = v174;
    v177 = *v373;
    do
    {
      for (i = 0; i != v176; ++i)
      {
        if (*v373 != v177)
        {
          objc_enumerationMutation(objb);
        }

        v179 = *(*(&v372 + 1) + 8 * i);
        if (_shouldShowAccessoryInfo(v179))
        {
          v180 = [v179 name];
          if (![v180 length])
          {
            v181 = PSG_BundleForGeneralSettingsUIFramework();
            v182 = [v181 localizedStringForKey:@"ACCESSORY" value:&stru_282E88A90 table:0];

            v180 = v182;
            v2 = v354;
          }

          v183 = [*(v175 + 2776) preferenceSpecifierNamed:v180 target:v2 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
          [v183 setUserInfo:v179];
          v184 = [v179 bonjourName];
          v185 = [v184 length];

          v186 = MEMORY[0x277CCAB68];
          if (v185)
          {
            v187 = [v179 bonjourName];
            v188 = [v186 stringWithString:v187];
          }

          else
          {
            v187 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v179, "connectionID")}];
            v189 = [v187 stringValue];
            v188 = [v186 stringWithString:v189];
          }

          [v188 appendString:@"_ACCESSORY"];
          [v183 setIdentifier:v188];

          [v353 addObject:v183];
          v175 = 0x277D3F000;
          v2 = v354;
        }
      }

      v176 = [objb countByEnumeratingWithState:&v372 objects:v381 count:16];
    }

    while (v176);
  }

  v190 = 0x277D4D000uLL;
  v191 = [MEMORY[0x277D4D8D8] sharedInstance];
  v192 = [v191 mobileEquipmentInfoLength];

  if (v192 >= 2)
  {
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    v193 = [MEMORY[0x277D4D868] sharedInstance];
    v194 = [v193 subscriptionContexts];

    v195 = [v194 countByEnumeratingWithState:&v368 objects:v380 count:16];
    v196 = MEMORY[0x277CC3ED8];
    v197 = v353;
    if (v195)
    {
      v198 = v195;
      v346 = 0;
      v349 = *v369;
      v338 = *MEMORY[0x277CC3ED8];
      v199 = 1;
      v334 = v194;
      do
      {
        for (j = 0; j != v198; ++j)
        {
          if (*v369 != v349)
          {
            objc_enumerationMutation(v334);
          }

          v201 = *(*(&v368 + 1) + 8 * j);
          v202 = [(CoreTelephonyClient *)v2->__client getSimHardwareInfo:v201 error:0];
          v203 = [v202 hardwareType] != 2;
          v204 = [MEMORY[0x277D4D868] sharedInstance];
          [v204 simStatus:v201];
          v206 = v205 = v2;
          v207 = [v206 isEqualToString:v338];

          if ((v207 & 1) == 0)
          {
            v346 += [(PSGAboutDataSource *)v205 shouldShowSIMSpecifier:v201];
          }

          v197 = v353;
          v2 = v205;
          v199 &= v203;
        }

        v198 = [v334 countByEnumeratingWithState:&v368 objects:v380 count:16];
      }

      while (v198);

      if (!v199)
      {
        v196 = MEMORY[0x277CC3ED8];
        if (v346 != 1)
        {
          v335 = 0;
          goto LABEL_111;
        }

        v212 = [MEMORY[0x277D4D868] sharedInstance];
        v213 = [v212 subscriptionContexts];
        v211 = [v213 sortedArrayUsingComparator:&__block_literal_global_622];

        v335 = 0;
        v346 = 1;
LABEL_106:
        v208 = 0x277D3F000;
        if (v211)
        {
LABEL_112:
          v365 = 0u;
          v366 = 0u;
          v363 = 0u;
          v364 = 0u;
          v327 = v211;
          v339 = [v327 countByEnumeratingWithState:&v363 objects:v379 count:16];
          if (!v339)
          {
            goto LABEL_164;
          }

          v215 = @"AVAILABLE_SIM";
          if (!v346)
          {
            v215 = @"AVAILABLE_SIMS";
          }

          v326 = v215;
          v331 = 1;
          v332 = *v196;
          v333 = *v364;
          v328 = *MEMORY[0x277D401A8];
          v329 = *MEMORY[0x277D40128];
          while (1)
          {
            for (k = 0; k != v339; ++k)
            {
              if (*v364 != v333)
              {
                objc_enumerationMutation(v327);
              }

              v217 = *(*(&v363 + 1) + 8 * k);
              v218 = [MEMORY[0x277D4D868] sharedInstance];
              v219 = [v218 simStatus:v217];
              if ([v219 isEqualToString:v332])
              {
                LOBYTE(v220) = 1;
              }

              else
              {
                LODWORD(v220) = ![(PSGAboutDataSource *)v2 shouldShowSIMSpecifier:v217];
              }

              v221 = [(CoreTelephonyClient *)v2->__client getSimHardwareInfo:v217 error:0];
              v222 = v221;
              if (v335)
              {
                if (v346 > 1)
                {
                  goto LABEL_144;
                }

                v223 = [v221 simLocation];
                v224 = @"FRONT_SIM";
                if (v223 == 1 || (v225 = [v222 simLocation], v224 = @"BACK_SIM", v225 == 2))
                {
                  v226 = PSG_LocalizedStringForGeneral(v224);
                  if (!v226)
                  {
                    goto LABEL_144;
                  }
                }

                else
                {
                  v232 = _PSGLoggingFacility();
                  if (os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = v217;
                    _os_log_error_impl(&dword_21CF20000, v232, OS_LOG_TYPE_ERROR, "subscription context slot unknown: %@", buf, 0xCu);
                  }

LABEL_144:
                  v226 = [v217 label];
                }

                v228 = v226;
                goto LABEL_146;
              }

              v227 = v326;
              if ((v220 & 1) == 0)
              {
                if (v346 > 1)
                {
                  goto LABEL_137;
                }

                v229 = [v222 hardwareType];
                v227 = @"eSIM";
                if (v229 != 2)
                {
                  v230 = [v222 hardwareType];
                  v227 = @"PHYSICAL_SIM";
                  if (v230 != 1)
                  {
                    v231 = _PSGLoggingFacility();
                    if (os_log_type_enabled(v231, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v217;
                      _os_log_error_impl(&dword_21CF20000, v231, OS_LOG_TYPE_ERROR, "subscription context slot unknown: %@", buf, 0xCu);
                    }

LABEL_137:
                    v228 = [v217 label];
                    goto LABEL_138;
                  }
                }
              }

              v228 = PSG_LocalizedStringForGeneral(v227);
              if (!v228)
              {
                goto LABEL_137;
              }

LABEL_138:
              if (!v331)
              {
                v331 = 0;
                goto LABEL_147;
              }

              v331 = v346 != 0;
LABEL_146:
              v233 = [*(v208 + 2776) groupSpecifierWithName:v228];
              [v197 addObject:v233];

LABEL_147:
              v234 = [MEMORY[0x277D4D8D8] sharedInstance];
              v235 = [v234 mobileEquipmentInfo:v217];

              if ((v220 & 1) == 0)
              {
                v350 = v220;
                v220 = v197;
                if (![(PSGAboutDataSource *)v2 _isUsingBootstrap:v217])
                {
                  v236 = *(v208 + 2776);
                  v237 = PSG_BundleForGeneralSettingsUIFramework();
                  v238 = [v237 localizedStringForKey:@"NETWORK" value:&stru_282E88A90 table:0];
                  v239 = [v236 preferenceSpecifierNamed:v238 target:v2 set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

                  v240 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"NETWORK", objc_msgSend(v217, "slotID")];
                  [v239 setProperty:v240 forKey:v343];
                  [v220 addObject:v239];

                  v208 = 0x277D3F000uLL;
                }

                v241 = *(v208 + 2776);
                v242 = PSG_BundleForGeneralSettingsUIFramework();
                v243 = [v242 localizedStringForKey:@"CARRIER_VERSION" value:&stru_282E88A90 table:0];
                v244 = [v241 preferenceSpecifierNamed:v243 target:v2 set:0 get:sel__carrierVersion_ detail:0 cell:4 edit:0];

                v245 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"CARRIER_VERSION", objc_msgSend(v217, "slotID")];
                [v244 setProperty:v245 forKey:v343];
                [v244 setProperty:v217 forKey:v329];
                v197 = v220;
                [v220 addObject:v244];

                v336 = v244;
                LOBYTE(v220) = v350;
              }

              if (v235)
              {
                v246 = [v235 IMEI];

                if (v246)
                {
                  v351 = v220;
                  if ([v217 slotID] == 2)
                  {
                    v247 = PSG_LocalizedStringForGeneral(@"ModemIMEI2");
                    v248 = v247;
                  }

                  else
                  {
                    v247 = PSG_BundleForGeneralSettingsUIFramework();
                    v248 = [v247 localizedStringForKey:@"ModemIMEI" value:&stru_282E88A90 table:0];
                  }

                  v249 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v248 target:v354 set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];
                  v250 = MEMORY[0x277CCACA8];
                  [v217 slotID];
                  v251 = [v250 stringWithFormat:@"%@.%li"];
                  [v249 setProperty:v251 forKey:v343];
                  PSGGreenTeaIMEILog(@"Reading IMEI from CTMobileEquipmentInfo", v252, v253, v254, v255, v256, v257, v258, @"ModemIMEI");
                  v220 = [v235 IMEI];
                  v259 = [v220 psg_IMEIString];
                  [v249 setProperty:v259 forKey:v328];

                  [v249 setProperty:MEMORY[0x277CBEC38] forKey:v330];
                  [v353 addObject:v249];

                  v197 = v353;
                  LOBYTE(v220) = v351;
                }

                if ((v220 & 1) == 0)
                {
                  if ([(PSGAboutDataSource *)v354 shouldShowSIMSpecifier:v217])
                  {
                    v260 = MEMORY[0x277D3FAD8];
                    v261 = PSG_BundleForGeneralSettingsUIFramework();
                    v262 = [v261 localizedStringForKey:@"ICCID" value:&stru_282E88A90 table:0];
                    v263 = [v260 preferenceSpecifierNamed:v262 target:v354 set:0 get:sel__ICCIDString_ detail:0 cell:4 edit:0];

                    v197 = v353;
                    v264 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"ICCID", objc_msgSend(v217, "slotID")];
                    [v263 setProperty:v264 forKey:v343];
                    [v263 setProperty:MEMORY[0x277CBEC38] forKey:v330];
                    [v263 setProperty:v217 forKey:v329];
                    [v353 addObject:v263];
                  }

                  v265 = [v235 MEID];

                  if (v265)
                  {
                    v266 = MEMORY[0x277D3FAD8];
                    v267 = PSG_BundleForGeneralSettingsUIFramework();
                    v268 = [v267 localizedStringForKey:@"MEID" value:&stru_282E88A90 table:0];
                    v269 = [v266 preferenceSpecifierNamed:v268 target:v354 set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

                    v197 = v353;
                    v270 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"MEID", objc_msgSend(v217, "slotID")];
                    [v269 setProperty:v270 forKey:v343];
                    v271 = [v235 MEID];
                    [v269 setProperty:v271 forKey:v328];

                    [v269 setProperty:MEMORY[0x277CBEC38] forKey:v330];
                    [v353 addObject:v269];
                  }
                }
              }

              v208 = 0x277D3F000;
              v2 = v354;
            }

            v339 = [v327 countByEnumeratingWithState:&v363 objects:v379 count:16];
            if (!v339)
            {
LABEL_164:

              v190 = 0x277D4D000;
              goto LABEL_165;
            }
          }
        }

LABEL_111:
        v214 = [MEMORY[0x277D4D868] sharedInstance];
        v211 = [v214 subscriptionContexts];

        v208 = 0x277D3F000uLL;
        goto LABEL_112;
      }

      v196 = MEMORY[0x277CC3ED8];
    }

    else
    {

      v346 = 0;
    }

    v209 = [MEMORY[0x277D4D868] sharedInstance];
    v210 = [v209 subscriptionContexts];
    v367[0] = MEMORY[0x277D85DD0];
    v367[1] = 3221225472;
    v367[2] = __36__PSGAboutDataSource_loadSpecifiers__block_invoke;
    v367[3] = &unk_278324FA0;
    v367[4] = v2;
    v211 = [v210 sortedArrayUsingComparator:v367];

    v335 = 1;
    goto LABEL_106;
  }

  v197 = v353;
  v208 = 0x277D3F000;
LABEL_165:
  if ((_os_feature_enabled_impl() & 1) == 0 && _os_feature_enabled_impl() && PSGetCapabilityBoolAnswer())
  {
    v272 = objc_opt_new();
    [v272 setLocalizedDateFormatFromTemplate:@"MMMM yyyy"];
    v273 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
    [v272 setTimeZone:v273];

    v274 = MEMORY[0x277D3FAD8];
    v275 = PSG_LocalizedStringForLOTX(@"BATTERY");
    v276 = [v274 groupSpecifierWithID:@"BATTERY_HEALTH_GROUP" name:v275];

    [v197 addObject:v276];
    v277 = PSG_LocalizedStringForLOTX(@"UNKNOWN");
    v278 = MEMORY[0x277D3FAD8];
    v279 = PSG_LocalizedStringForLOTX(@"BATTERY_MANUFACTURE_DATE");
    v280 = [v278 preferenceSpecifierNamed:v279 target:v2 set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

    v281 = *MEMORY[0x277D401A8];
    [v280 setObject:v277 forKeyedSubscript:*MEMORY[0x277D401A8]];
    [v353 addObject:v280];
    v282 = MEMORY[0x277D3FAD8];
    PSG_LocalizedStringForLOTX(@"BATTERY_FIRST_USE");
    v284 = v283 = v2;
    v285 = [v282 preferenceSpecifierNamed:v284 target:v283 set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

    [v285 setObject:v277 forKeyedSubscript:v281];
    [v353 addObject:v285];
    v286 = MEMORY[0x277D3FAD8];
    v287 = PSG_LocalizedStringForLOTX(@"BATTERY_CYCLE_COUNT");
    v288 = v283;
    v190 = 0x277D4D000uLL;
    v289 = [v286 preferenceSpecifierNamed:v287 target:v288 set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

    [v289 setObject:v277 forKeyedSubscript:v281];
    [v353 addObject:v289];

    v197 = v353;
    v208 = 0x277D3F000uLL;
  }

  v352 = [*(v208 + 2776) groupSpecifierWithID:@"CERT_TRUST_SETTINGS_GROUP"];
  [v197 addObject:?];
  v290 = PSG_BundleForGeneralSettingsUIFramework();
  v291 = [v290 localizedStringForKey:@"CERT_TRUST_SETTINGS" value:&stru_282E88A90 table:0];

  v347 = v291;
  v292 = [*(v208 + 2776) preferenceSpecifierNamed:v291 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  [v292 setIdentifier:@"CERT_TRUST_SETTINGS"];
  v344 = v292;
  [v197 addObject:v292];
  v293 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_282E8FD10];
  v294 = [*(v190 + 2264) sharedInstance];
  v295 = [v294 mobileEquipmentInfoLength];

  if (v295 >= 2)
  {
    v361 = 0u;
    v362 = 0u;
    v359 = 0u;
    v360 = 0u;
    v296 = [MEMORY[0x277D4D868] sharedInstance];
    v297 = [v296 subscriptionContexts];

    v298 = [v297 countByEnumeratingWithState:&v359 objects:v378 count:16];
    if (v298)
    {
      v299 = v298;
      v300 = *v360;
      do
      {
        for (m = 0; m != v299; ++m)
        {
          if (*v360 != v300)
          {
            objc_enumerationMutation(v297);
          }

          v302 = *(*(&v359 + 1) + 8 * m);
          v303 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"ModemIMEI", objc_msgSend(v302, "slotID")];
          [v293 addObject:v303];

          v304 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"ICCID", objc_msgSend(v302, "slotID")];
          [v293 addObject:v304];

          v305 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"MEID", objc_msgSend(v302, "slotID")];
          [v293 addObject:v305];
        }

        v299 = [v297 countByEnumeratingWithState:&v359 objects:v378 count:16];
      }

      while (v299);
    }
  }

  v357 = 0u;
  v358 = 0u;
  v355 = 0u;
  v356 = 0u;
  v306 = v353;
  v307 = [v306 countByEnumeratingWithState:&v355 objects:v377 count:16];
  if (v307)
  {
    v308 = v307;
    v309 = *v356;
    v310 = *MEMORY[0x277D40188];
    v311 = MEMORY[0x277CBEC38];
    do
    {
      for (n = 0; n != v308; ++n)
      {
        if (*v356 != v309)
        {
          objc_enumerationMutation(v306);
        }

        v313 = *(*(&v355 + 1) + 8 * n);
        v314 = [v313 identifier];
        v315 = [v293 containsObject:v314];

        if (v315)
        {
          [v313 setProperty:v311 forKey:v310];
        }
      }

      v308 = [v306 countByEnumeratingWithState:&v355 objects:v377 count:16];
    }

    while (v308);
  }

LABEL_188:
  v316 = *MEMORY[0x277D85DE8];
}

uint64_t __36__PSGAboutDataSource_loadSpecifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 144);
  v6 = a3;
  v7 = [v5 getSimHardwareInfo:a2 error:0];
  v8 = [*(*(a1 + 32) + 144) getSimHardwareInfo:v6 error:0];

  v9 = [v7 simLocation];
  if (v9 >= [v8 simLocation])
  {
    v11 = [v7 simLocation];
    v10 = v11 > [v8 simLocation];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

uint64_t __36__PSGAboutDataSource_loadSpecifiers__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D4D868];
  v5 = a3;
  v6 = a2;
  v7 = [v4 sharedInstance];
  v8 = [v7 simStatus:v6];

  v9 = *MEMORY[0x277CC3ED8];
  v10 = [v8 isEqualToString:*MEMORY[0x277CC3ED8]];

  v11 = [MEMORY[0x277D4D868] sharedInstance];
  v12 = [v11 simStatus:v5];

  v13 = [v12 isEqualToString:v9];
  if (v10)
  {
    return 1;
  }

  else
  {
    return v13 << 63 >> 63;
  }
}

- (void)cleanupMLReloadTimer
{
  [(NSTimer *)self->_reloadTimer invalidate];
  reloadTimer = self->_reloadTimer;
  self->_reloadTimer = 0;
}

- (void)forceReloadMediaStats:(id)a3
{
  [(PSGAboutDataSource *)self cleanupMLReloadTimer];
  self->_loaded = 0;

  [(PSSpecifierDataSource *)self performUpdatesAnimated:0 usingBlock:&__block_literal_global_692];
}

- (void)enableMLUpdates:(BOOL)a3
{
  if (a3)
  {
    if (self->_isGeneratingNotifications)
    {
      return;
    }

    v4 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [v4 beginGeneratingLibraryChangeNotifications];
    v5 = 1;
  }

  else
  {
    if (!self->_isGeneratingNotifications)
    {
      return;
    }

    v4 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [v4 endGeneratingLibraryChangeNotifications];
    v5 = 0;
  }

  self->_isGeneratingNotifications = v5;
}

- (void)mediaLibraryDidChange:(id)a3
{
  [(PSGAboutDataSource *)self cleanupMLReloadTimer];
  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_forceReloadMediaStats_ selector:0 userInfo:0 repeats:1.0];
  reloadTimer = self->_reloadTimer;
  self->_reloadTimer = v4;

  [(PSSpecifierDataSource *)self performUpdatesAnimated:0 usingBlock:&__block_literal_global_701];
}

- (void)simStatusChangedToReady
{
  v3 = [(PSSpecifierDataSource *)self specifierForID:@"CellularDataAddress"];
  if (v3)
  {
    v4 = [(PSGAboutDataSource *)self _myNumber];
    [v3 setProperty:v4 forKey:*MEMORY[0x277D401A8]];

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __45__PSGAboutDataSource_simStatusChangedToReady__block_invoke;
    v5[3] = &unk_278324FE8;
    v5[4] = self;
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __45__PSGAboutDataSource_simStatusChangedToReady__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__PSGAboutDataSource_simStatusChangedToReady__block_invoke_2;
  v2[3] = &unk_278324F08;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 performUpdatesAnimated:0 usingBlock:v2];
}

- (void)prlVersionChanged:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];

  if (v5)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKey:@"SubscriptionContext"];

    v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "slotID")}];
    [(PSGAboutDataSource *)self prlVersionChangedForSlot:v8];
  }

  else
  {
    v9 = [MEMORY[0x277D4D868] sharedInstance];
    v10 = [v9 subscriptionContexts];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(*(&v18 + 1) + 8 * v15), "slotID", v18)}];
          [(PSGAboutDataSource *)self prlVersionChangedForSlot:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)prlVersionChangedForSlot:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_carrierCellState objectForKeyedSubscript:v4];
  v6 = [v5 intValue];

  if (v6 == 1)
  {
    v7 = [(PSGAboutDataSource *)self getCarrierSpecifierForSlot:v4];
    v8 = v7;
    if (v7)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __47__PSGAboutDataSource_prlVersionChangedForSlot___block_invoke;
      v9[3] = &unk_278324FE8;
      v9[4] = self;
      v10 = v7;
      dispatch_async(MEMORY[0x277D85CD0], v9);
    }
  }
}

void __47__PSGAboutDataSource_prlVersionChangedForSlot___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__PSGAboutDataSource_prlVersionChangedForSlot___block_invoke_2;
  v2[3] = &unk_278324F08;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 performUpdatesAnimated:0 usingBlock:v2];
}

- (id)getCarrierSpecifierForSlot:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"CARRIER_VERSION", a3];
  v5 = [(PSSpecifierDataSource *)self specifierForID:v4];

  return v5;
}

- (PSGAboutDataSource)init
{
  v20.receiver = self;
  v20.super_class = PSGAboutDataSource;
  v2 = [(PSSpecifierDataSource *)&v20 init];
  if (v2)
  {
    v3 = PSG_BundleForGeneralSettingsUIFramework();
    v4 = [v3 localizedStringForKey:@"LOADING" value:&stru_282E88A90 table:0];
    loading = v2->_loading;
    v2->_loading = v4;

    bootstrapIccid = v2->_bootstrapIccid;
    v2->_bootstrapIccid = 0;

    v7 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v2->_lock;
    v2->_lock = v7;

    [(NSLock *)v2->_lock setName:@"AboutController"];
    v9 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
    [v9 registerForLocalNotifications];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, HostRenamedDevice, *MEMORY[0x277D82A10], 0, CFNotificationSuspensionBehaviorCoalesce);
    v11 = objc_alloc_init(MEMORY[0x277CC37B0]);
    client = v2->__client;
    v2->__client = v11;

    [(CoreTelephonyClient *)v2->__client setDelegate:v2];
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5E88] object:0];
    [v13 addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EA0] object:0];
    [v13 addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5E90] object:0];
    [v13 addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EB0] object:0];
    [v13 addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EC8] object:0];
    [v13 addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EB8] object:0];
    [v13 addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EC0] object:0];
    [v13 addObserver:v2 selector:sel_mediaLibraryDidChange_ name:*MEMORY[0x277CD58D8] object:0];
    [v13 addObserver:v2 selector:sel_simStatusChangedToReady name:*MEMORY[0x277D4D890] object:0];
    [v13 addObserver:v2 selector:sel_mediaLibraryDidChange_ name:@"PSPhotoVideoCountChange" object:0];
    [v13 addObserver:v2 selector:sel_prlVersionChanged_ name:*MEMORY[0x277D4D8E0] object:0];
    v14 = ALRegisterForPhotosAndVideosCount();
    photoVideoNotificationToken = v2->_photoVideoNotificationToken;
    v2->_photoVideoNotificationToken = v14;

    v16 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
    [v16 startIPAccessoryDiscovery];

    v17 = [MEMORY[0x277D2D0F8] sharedController];
    [(PSGAboutDataSource *)v2 setSharedNDOController:v17];

    if (objc_opt_class())
    {
      v18 = [MEMORY[0x277D01058] sharedInstance];
      [(PSGAboutDataSource *)v2 setSystemHealthUIClient:v18];
    }
  }

  return v2;
}

void __26__PSGAboutDataSource_init__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"PSPhotoVideoCountChange" object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
  [v3 stopIPAccessoryDiscovery];

  [(NSTimer *)self->_reloadTimer invalidate];
  [(PSGAboutDataSource *)self enableMLUpdates:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  self->_cancel = 1;
  [(NSLock *)self->_lock lock];
  [(NSLock *)self->_lock unlock];
  v5 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
  [v5 unregisterForLocalNotifications];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self];

  photoVideoNotificationToken = self->_photoVideoNotificationToken;
  ALUnregisterForPhotosAndVideosCount();
  v8.receiver = self;
  v8.super_class = PSGAboutDataSource;
  [(PSGAboutDataSource *)&v8 dealloc];
}

- (void)_accessoryDidUpdate:(id)a3
{
  v4 = a3;
  if (![MEMORY[0x277CCACC8] isMainThread])
  {
    objc_initWeak(&location, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __42__PSGAboutDataSource__accessoryDidUpdate___block_invoke_2;
    v25[3] = &unk_278325038;
    objc_copyWeak(&v27, &location);
    v26 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v25);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    goto LABEL_18;
  }

  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277CC5E98]];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "connectionID")}];
  v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v9 = [v6 bonjourName];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [v6 bonjourName];
LABEL_7:
    v14 = v11;
    goto LABEL_8;
  }

  v12 = [v6 name];
  v13 = [v12 length];

  if (v13)
  {
    v11 = [v6 name];
    goto LABEL_7;
  }

  v14 = 0;
LABEL_8:
  if (![v14 length] || (objc_msgSend(v8, "setString:", v14), objc_msgSend(v8, "appendString:", @"_ACCESSORY"), -[PSSpecifierDataSource specifierForID:](self, "specifierForID:", v8), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = [v7 stringValue];
    [v8 setString:v16];

    [v8 appendString:@"_ACCESSORY"];
    v15 = [(PSSpecifierDataSource *)self specifierForID:v8];
  }

  if (_shouldShowAccessoryInfo(v6))
  {
    v17 = [v4 name];
    if ([v17 isEqualToString:*MEMORY[0x277CC5E90]])
    {
      v18 = [v4 name];
      v19 = [v18 isEqualToString:*MEMORY[0x277CC5EC8]] ^ 1;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __42__PSGAboutDataSource__accessoryDidUpdate___block_invoke;
  v29[3] = &unk_278325010;
  v36 = v19;
  v30 = v15;
  v31 = v14;
  v32 = self;
  v33 = v6;
  v34 = v8;
  v35 = v7;
  v20 = v7;
  v21 = v8;
  v22 = v6;
  v23 = v14;
  v24 = v15;
  [(PSSpecifierDataSource *)self performUpdatesAnimated:1 usingBlock:v29];

LABEL_18:
}

void __42__PSGAboutDataSource__accessoryDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = v3;
  if (*(a1 + 32))
  {
    [v3 removeSpecifier:?];
    v3 = v19;
  }

  if (*(a1 + 80) == 1)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v6 = PSG_BundleForGeneralSettingsUIFramework();
      v5 = [v6 localizedStringForKey:@"ACCESSORY" value:&stru_282E88A90 table:0];
    }

    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:*(a1 + 48) set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    v8 = v7;
    if (*(a1 + 56))
    {
      [v7 setUserInfo:?];
      v9 = *(a1 + 56);
    }

    else
    {
      v9 = 0;
    }

    v10 = [v9 bonjourName];
    v11 = [v10 length];

    if (v11)
    {
      v14 = *(a1 + 64);
      v12 = (a1 + 64);
      v13 = v14;
      v15 = [*(v12 - 1) bonjourName];
    }

    else
    {
      if (![*(a1 + 72) intValue])
      {
LABEL_15:
        v18 = [v19 specifierForID:@"HARDWARE_GROUP"];
        [v19 appendSpecifier:v8 toGroup:v18];

        v3 = v19;
        goto LABEL_16;
      }

      v13 = *(a1 + 64);
      v16 = *(a1 + 72);
      v12 = (a1 + 64);
      v15 = [v16 stringValue];
    }

    v17 = v15;
    [v13 setString:v15];

    [*v12 appendString:@"_ACCESSORY"];
    [v8 setIdentifier:*v12];
    goto LABEL_15;
  }

LABEL_16:
}

void __42__PSGAboutDataSource__accessoryDidUpdate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _accessoryDidUpdate:*(a1 + 32)];
}

- (void)carrierBundleChange:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(PSGAboutDataSource *)self reloadSpecifiers];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __42__PSGAboutDataSource_carrierBundleChange___block_invoke;
    v5[3] = &unk_278324FE8;
    v5[4] = self;
    v6 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __50__PSGAboutDataSource_getAPFSCurrentUserVolumeNode__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_21CF20000, v0, OS_LOG_TYPE_ERROR, "%s error fetching current user volume: %d", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end