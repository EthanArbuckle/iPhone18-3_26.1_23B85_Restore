@interface SystemProperties
+ (id)sharedInstance;
+ (int)systemPropertiesDeviceClassFromMGQDeviceClass:(int)a3;
+ (unint64_t)retrieveDeviceConfigTypeForKey:(__CFString *)a3;
+ (unint64_t)retrieveDeviceConfigTypePreferenceForKey:(__CFString *)a3;
+ (void)deleteDeviceConfigTypePreferenceForKey:(__CFString *)a3;
+ (void)saveDeviceConfigType:(unint64_t)a3 forKey:(__CFString *)a4;
+ (void)setDeviceConfigTypeForSerialNumber:(id)a3;
- (BOOL)carrierBuild;
- (BOOL)carrierSeedBuild;
- (BOOL)customerSeedBuild;
- (BOOL)seedBuild;
- (BOOL)vendorBuild;
- (NSString)buildVariant;
- (NSString)deviceClassString;
- (SystemProperties)init;
- (const)dualSIMCapabilityString;
- (id)description;
- (int)getDualSIMCapabilityFromCoreTelephony;
- (void)buildVariant;
- (void)refreshDualSIMCapability;
- (void)refreshDualSIMCapabilityIfNecessary;
- (void)setCarrierSeedBuildOverride:(id)a3;
- (void)setInternalBuildDisabledByOverride:(BOOL)a3;
- (void)setSeedBuildOverride:(id)a3;
- (void)setVendorBuildOverride:(id)a3;
@end

@implementation SystemProperties

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SystemProperties_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_instancePred != -1)
  {
    dispatch_once(&sharedInstance_instancePred, block);
  }

  v2 = sharedInstance;

  return v2;
}

uint64_t __34__SystemProperties_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (void)saveDeviceConfigType:(unint64_t)a3 forKey:(__CFString *)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Saving device config type: %lu", &v9, 0xCu);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  CFPreferencesSetValue(a4, v7, @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  CFPreferencesAppSynchronize(@"com.apple.symptomsd");
  v8 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)retrieveDeviceConfigTypeForKey:(__CFString *)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SystemProperties_retrieveDeviceConfigTypeForKey___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  if (retrieveDeviceConfigTypeForKey__pred != -1)
  {
    dispatch_once(&retrieveDeviceConfigTypeForKey__pred, block);
  }

  return configType;
}

unint64_t __51__SystemProperties_retrieveDeviceConfigTypeForKey___block_invoke(uint64_t a1)
{
  result = [SystemProperties retrieveDeviceConfigTypePreferenceForKey:*(a1 + 32)];
  configType = result;
  return result;
}

+ (unint64_t)retrieveDeviceConfigTypePreferenceForKey:(__CFString *)a3
{
  result = CFPreferencesCopyValue(a3, @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  if (result)
  {
    v4 = result;
    v5 = [result unsignedIntegerValue];

    return v5;
  }

  return result;
}

+ (void)deleteDeviceConfigTypePreferenceForKey:(__CFString *)a3
{
  CFPreferencesSetValue(a3, 0, @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  CFPreferencesAppSynchronize(@"com.apple.symptomsd");
}

+ (int)systemPropertiesDeviceClassFromMGQDeviceClass:(int)a3
{
  if ((a3 - 1) >= 7)
  {
    return -1;
  }

  else
  {
    return a3;
  }
}

- (id)description
{
  productName = self->_productName;
  v22 = MEMORY[0x277CCACA8];
  v23 = [(SystemProperties *)self deviceClassString];
  productVersion = self->_productVersion;
  productType = self->_productType;
  buildVersion = self->_buildVersion;
  buildPlatform = self->_buildPlatform;
  v3 = [(SystemProperties *)self buildVariant];
  basebandCapability = self->_basebandCapability;
  v16 = [(SystemProperties *)self dualSIMCapabilityString];
  if ([(NSString *)self->_basebandChipset length])
  {
    basebandChipset = self->_basebandChipset;
  }

  else
  {
    basebandChipset = @"No baseband";
  }

  v15 = basebandChipset;
  if (basebandCapability)
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  if ([(SystemProperties *)self internalBuild])
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  if (self->_vendorBuild)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (self->_carrierBuild)
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  if ([(SystemProperties *)self seedBuild])
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if ([(SystemProperties *)self carrierSeedBuild])
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  if ([(SystemProperties *)self customerSeedBuild])
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  v13 = [v22 stringWithFormat:@"ProductName = %@, ProductClass = %@, ProductType = %@, ProductVersion = %@, BuildVersion = %@, BuildPlatform = %@, BuildVariant = %@, basebandCapability = %s, dualSIMCapability = %s, Baseband Chipset = %@, InternalBuild = %s, VendorBuild = %s, CarrierBuild = %s, SeedBuild = %s, CarrierSeedBuild = %s, CustomerSeedBuild = %s", productName, v23, productType, productVersion, buildVersion, buildPlatform, v3, v6, v16, v15, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (SystemProperties)init
{
  v40 = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = SystemProperties;
  v2 = [(SystemProperties *)&v37 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAC38] processInfo];
    v4 = [v3 arguments];

    if ([v4 count])
    {
      v5 = [v4 objectAtIndexedSubscript:0];
      v2->_isSymptomsdHelper = [v5 hasPrefix:@"/usr/libexec/symptomsd-helper"];
    }

    else
    {
      v2->_isSymptomsdHelper = 0;
    }

    v6 = _CFCopySystemVersionDictionary();
    v2->_deviceClass = -1;
    productType = v2->_productType;
    v2->_productType = @"Unknown Product Type";

    productName = v2->_productName;
    v2->_productName = @"Unknown Product Name";

    productVersion = v2->_productVersion;
    v2->_productVersion = @"Unknown Product Version";

    buildVersion = v2->_buildVersion;
    v2->_buildVersion = @"Unknown Build Version";

    basebandChipset = v2->_basebandChipset;
    v2->_basebandChipset = &stru_2847966D8;

    buildPlatform = v2->_buildPlatform;
    v2->_buildPlatform = @"iOS";

    if (v6)
    {
      Value = CFDictionaryGetValue(v6, *MEMORY[0x277CBEC78]);
      if (Value)
      {
        objc_storeStrong(&v2->_productName, Value);
      }

      v14 = CFDictionaryGetValue(v6, *MEMORY[0x277CBEC88]);
      if (v14)
      {
        objc_storeStrong(&v2->_productVersion, v14);
      }

      v15 = CFDictionaryGetValue(v6, *MEMORY[0x277CBEC70]);
      if (v15)
      {
        objc_storeStrong(&v2->_buildVersion, v15);
      }

      CFRelease(v6);
    }

    v2->_seedBuild = 0;
    v2->_internalBuild = os_variant_has_internal_diagnostics();
    v2->_carrierBuild = 0;
    v16 = dlopen("/usr/lib/libMobileGestalt.dylib", 261);
    if (v16)
    {
      v17 = v16;
      v18 = dlsym(v16, "MGGetStringAnswer");
      v19 = v18(@"ReleaseType");
      if (v19)
      {
        v2->_vendorBuild = CFStringCompare(v19, @"Vendor", 0) == kCFCompareEqualTo;
      }

      v20 = v18(@"SerialNumber");
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = @"Unknown";
      }

      v22 = v18(@"ProductType");
      v23 = v2->_productType;
      v2->_productType = v22;

      v24 = dlsym(v17, "MGGetSInt32Answer");
      v2->_deviceClass = [SystemProperties systemPropertiesDeviceClassFromMGQDeviceClass:v24(@"DeviceClassNumber", 0)];
      v25 = dlsym(v17, "MGGetBoolAnswer");
      if (v25)
      {
        v26 = v25;
        if (v25(@"CarrierInstallCapability"))
        {
          v27 = !v2->_internalBuild;
        }

        else
        {
          v27 = 0;
        }

        v2->_carrierBuild = v27;
        LOBYTE(v25) = v26(@"HasBaseband");
      }

      else
      {
        v2->_carrierBuild = 0;
      }

      v2->_basebandCapability = v25;
      v2->_dualSIMCapability = 0;
      [(SystemProperties *)v2 refreshDualSIMCapabilityIfNecessary];
      v29 = v18(@"BasebandChipset");
      if (v29)
      {
        v30 = v2->_basebandChipset;
        v2->_basebandChipset = v29;
      }

      else
      {
        v31 = configurationLogHandle;
        if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEFAULT, "No baseband chipset", buf, 2u);
        }
      }

      dlclose(v17);
      v32 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v39 = v2;
        _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_INFO, "System Properties: %{private}@", buf, 0xCu);
      }
    }

    else
    {
      v28 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_ERROR, "Unable to open MobileGestalt", buf, 2u);
      }

      v21 = @"Unknown";
    }

    serialNumber = v2->_serialNumber;
    v2->_serialNumber = &v21->isa;
    v34 = v21;

    [SystemProperties setDeviceConfigTypeForSerialNumber:v34];
  }

  v35 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (void)setDeviceConfigTypeForSerialNumber:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    if ([v4 characterAtIndex:{objc_msgSend(v4, "length") - 1}])
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    [SystemProperties saveDeviceConfigType:v3 forKey:@"deviceConfigType"];
  }
}

- (const)dualSIMCapabilityString
{
  dualSIMCapability = self->_dualSIMCapability;
  if (dualSIMCapability > 3)
  {
    return "Undefined";
  }

  else
  {
    return off_27898A888[dualSIMCapability];
  }
}

- (NSString)deviceClassString
{
  deviceClass = self->_deviceClass;
  if (deviceClass > 7)
  {
    return @"Unknown";
  }

  else
  {
    return &off_27898A8A8[deviceClass]->isa;
  }
}

- (BOOL)seedBuild
{
  seedBuildOverride = self->_seedBuildOverride;
  if (seedBuildOverride)
  {
    LOBYTE(v4) = [(NSNumber *)seedBuildOverride BOOLValue];
  }

  else
  {
    return self->_seedBuild;
  }

  return v4;
}

- (BOOL)customerSeedBuild
{
  v3 = [(SystemProperties *)self seedBuild];
  if (v3)
  {
    if ([(SystemProperties *)self internalBuild]|| [(SystemProperties *)self carrierBuild])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(SystemProperties *)self vendorBuild];
    }
  }

  return v3;
}

- (BOOL)carrierBuild
{
  if (![(NSNumber *)self->_carrierSeedBuildOverride BOOLValue])
  {
    return self->_carrierBuild;
  }

  carrierSeedBuildOverride = self->_carrierSeedBuildOverride;

  return [(NSNumber *)carrierSeedBuildOverride BOOLValue];
}

- (BOOL)carrierSeedBuild
{
  if (self->_carrierSeedBuildOverride)
  {
    return [(NSNumber *)self->_carrierSeedBuildOverride BOOLValue];
  }

  if (self->_carrierBuild)
  {
    return [(SystemProperties *)self seedBuild];
  }

  return 0;
}

- (BOOL)vendorBuild
{
  vendorBuildOverride = self->_vendorBuildOverride;
  if (vendorBuildOverride)
  {
    LOBYTE(v4) = [(NSNumber *)vendorBuildOverride BOOLValue];
  }

  else
  {
    return self->_vendorBuild;
  }

  return v4;
}

- (void)setInternalBuildDisabledByOverride:(BOOL)a3
{
  if (self->_internalBuildDisabledByOverride != a3)
  {
    self->_internalBuildDisabledByOverride = a3;
    buildVariant = self->_buildVariant;
    self->_buildVariant = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (void)setCarrierSeedBuildOverride:(id)a3
{
  v5 = a3;
  p_carrierSeedBuildOverride = &self->_carrierSeedBuildOverride;
  if (self->_carrierSeedBuildOverride != v5)
  {
    v8 = v5;
    objc_storeStrong(p_carrierSeedBuildOverride, a3);
    self->_internalBuildDisabledByOverride = [(NSNumber *)self->_carrierSeedBuildOverride BOOLValue];
    buildVariant = self->_buildVariant;
    self->_buildVariant = 0;

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_carrierSeedBuildOverride, v5);
}

- (void)setSeedBuildOverride:(id)a3
{
  v5 = a3;
  p_seedBuildOverride = &self->_seedBuildOverride;
  if (self->_seedBuildOverride != v5)
  {
    v8 = v5;
    objc_storeStrong(p_seedBuildOverride, a3);
    buildVariant = self->_buildVariant;
    self->_buildVariant = 0;

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_seedBuildOverride, v5);
}

- (void)setVendorBuildOverride:(id)a3
{
  v5 = a3;
  p_vendorBuildOverride = &self->_vendorBuildOverride;
  if (self->_vendorBuildOverride != v5)
  {
    v8 = v5;
    objc_storeStrong(p_vendorBuildOverride, a3);
    buildVariant = self->_buildVariant;
    self->_buildVariant = 0;

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_vendorBuildOverride, v5);
}

- (NSString)buildVariant
{
  buildVariant = self->_buildVariant;
  if (!buildVariant)
  {
    v6[1] = v2;
    v7 = v3;
    [(SystemProperties *)self buildVariant];
    buildVariant = v6[0];
    v3 = v7;
  }

  return buildVariant;
}

- (void)refreshDualSIMCapabilityIfNecessary
{
  if (!self->_dualSIMCapability && !self->_isSymptomsdHelper)
  {
    [(SystemProperties *)self refreshDualSIMCapability];
  }
}

- (void)refreshDualSIMCapability
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(SystemProperties *)self basebandCapability])
  {
    v3 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_INFO))
    {
      dualSIMCapability = self->_dualSIMCapability;
      v15 = 67109120;
      v16 = dualSIMCapability;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "Refreshing knowledge of dual SIM capability from %d", &v15, 8u);
    }

    v5 = [(SystemProperties *)self getDualSIMCapabilityFromCoreTelephony];
    v6 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v15 = 67109120;
      v16 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Result of CTDualSimCapability lookup: %d", &v15, 8u);
    }

    v7 = self;
    objc_sync_enter(v7);
    if (v5 <= 4)
    {
      v7->_dualSIMCapability = dword_2328168B8[v5];
    }

    objc_sync_exit(v7);

    v8 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = v7->_dualSIMCapability;
      v15 = 67109120;
      v16 = v9;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "New dual SIM capability: %d", &v15, 8u);
    }

    v10 = v7->_dualSIMCapability & 0xFFFFFFFE;
    v11 = configurationLogHandle;
    v12 = os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v10 == 2)
    {
      if (v12)
      {
        LOWORD(v15) = 0;
        v13 = "CoreTelephony reported this as a dual SIM capable device";
LABEL_16:
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, v13, &v15, 2u);
      }
    }

    else if (v12)
    {
      LOWORD(v15) = 0;
      v13 = "Not a dual SIM capable device, but will use CoreTelephonyClient";
      goto LABEL_16;
    }
  }

  else
  {
    self->_dualSIMCapability = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (int)getDualSIMCapabilityFromCoreTelephony
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  v3 = _CTServerConnectionCreateWithIdentifier();
  if (v3)
  {
    v4 = v3;
    v5 = _CTServerConnectionCopyDualSimCapability();
    v6 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v11 = v5;
      v12 = 1024;
      v13 = HIDWORD(v5);
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "_CTServerConnectionCopyDualSimCapability(%d, %d)", buf, 0xEu);
    }

    CFRelease(v4);
  }

  else
  {
    v7 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Unable to create connection to CTServer!", buf, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)buildVariant
{
  if ([a1 internalBuild])
  {
    v6 = *a2;
    *a2 = @"Internal";

    v7 = [a1 carrierBuild];
    v8 = [a1 seedBuild];
    if (v8)
    {
      v9 = @"Seed";
    }

    else
    {
      v9 = 0;
    }

    if (v7)
    {
      v10 = [*a2 stringByAppendingString:@"Carrier"];
      v11 = *a2;
      *a2 = v10;
    }

    if (v8)
    {
      v12 = *a2;
      v13 = v9;
LABEL_16:
      v17 = [v12 stringByAppendingString:v13];
      v18 = *a2;
      *a2 = v17;
    }
  }

  else
  {
    if ([a1 carrierBuild])
    {
      v14 = @"Carrier";
    }

    else if ([a1 vendorBuild])
    {
      v14 = @"Vendor";
    }

    else
    {
      v14 = @"Customer";
    }

    v15 = [a1 seedBuild];
    v16 = *a2;
    *a2 = v14;

    if (v15)
    {
      v12 = *a2;
      v13 = @"Seed";
      goto LABEL_16;
    }
  }

  *a3 = *a2;
}

@end