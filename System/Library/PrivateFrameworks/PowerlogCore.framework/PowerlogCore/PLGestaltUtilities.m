@interface PLGestaltUtilities
+ (BOOL)has5G;
+ (BOOL)hasANE;
+ (BOOL)hasAOP;
+ (BOOL)hasAOP2;
+ (BOOL)hasAOT;
+ (BOOL)hasAlwaysListening;
+ (BOOL)hasBaseband;
+ (BOOL)hasBattery;
+ (BOOL)hasBatteryModuleAuth;
+ (BOOL)hasDCP;
+ (BOOL)hasDynamicChargingLimit;
+ (BOOL)hasFixedChargingLimit;
+ (BOOL)hasGasGauge;
+ (BOOL)hasInductiveCharging;
+ (BOOL)hasLPEM;
+ (BOOL)hasLPM;
+ (BOOL)hasLPW;
+ (BOOL)hasMesa;
+ (BOOL)hasNFC;
+ (BOOL)hasOrb;
+ (BOOL)hasPearl;
+ (BOOL)hasPerseus;
+ (BOOL)hasPlatinum;
+ (BOOL)hasRearALS;
+ (BOOL)hasWirelessCharger;
+ (BOOL)hasWristTemperature;
+ (BOOL)is64Bit;
+ (BOOL)isDevBoard;
+ (BOOL)isVirtualDevice;
+ (id)getBasebandChipset;
+ (id)getBasebandFirmwareVersion;
+ (id)getBuildVersion;
+ (id)getHardwareModel;
+ (id)getHardwarePlatform;
+ (id)getInverseDeviceID;
+ (id)getProductType;
+ (id)getUserAssignedDeviceName;
+ (id)getWifiChipset;
+ (int)getDeviceClass;
+ (int)getNumberOfDCPEXT;
+ (int)getProductTypeCode;
@end

@implementation PLGestaltUtilities

+ (BOOL)hasWirelessCharger
{
  if (hasWirelessCharger_onceToken != -1)
  {
    +[PLGestaltUtilities hasWirelessCharger];
  }

  return hasWirelessCharger_ret;
}

+ (BOOL)hasInductiveCharging
{
  if (hasInductiveCharging_onceToken != -1)
  {
    +[PLGestaltUtilities hasInductiveCharging];
  }

  return hasInductiveCharging_ret;
}

+ (int)getDeviceClass
{
  if (getDeviceClass_onceToken != -1)
  {
    +[PLGestaltUtilities getDeviceClass];
  }

  return getDeviceClass_ret;
}

+ (BOOL)hasRearALS
{
  if (hasRearALS_onceToken != -1)
  {
    +[PLGestaltUtilities hasRearALS];
  }

  return hasRearALS_ret;
}

+ (BOOL)hasFixedChargingLimit
{
  if (hasFixedChargingLimit_onceToken != -1)
  {
    +[PLGestaltUtilities hasFixedChargingLimit];
  }

  return hasFixedChargingLimit_ret;
}

+ (BOOL)hasAlwaysListening
{
  if (hasAlwaysListening_onceToken != -1)
  {
    +[PLGestaltUtilities hasAlwaysListening];
  }

  return hasAlwaysListening_ret;
}

uint64_t __40__PLGestaltUtilities_hasAlwaysListening__block_invoke()
{
  result = MGGetBoolAnswer();
  hasAlwaysListening_ret = result;
  return result;
}

+ (BOOL)hasANE
{
  if (hasANE_onceToken_0 != -1)
  {
    +[PLGestaltUtilities hasANE];
  }

  return hasANE_ret;
}

uint64_t __28__PLGestaltUtilities_hasANE__block_invoke()
{
  result = MGGetBoolAnswer();
  hasANE_ret = result;
  return result;
}

+ (BOOL)hasAOP
{
  if (hasAOP_onceToken_0 != -1)
  {
    +[PLGestaltUtilities hasAOP];
  }

  return hasAOP_ret;
}

uint64_t __28__PLGestaltUtilities_hasAOP__block_invoke()
{
  result = MGGetBoolAnswer();
  hasAOP_ret = result;
  return result;
}

+ (BOOL)hasAOP2
{
  if (hasAOP2_onceToken_0 != -1)
  {
    +[PLGestaltUtilities hasAOP2];
  }

  return hasAOP2_ret;
}

uint64_t __29__PLGestaltUtilities_hasAOP2__block_invoke()
{
  result = MGGetBoolAnswer();
  hasAOP2_ret = result;
  return result;
}

+ (BOOL)hasAOT
{
  if (hasAOT_onceToken_0 != -1)
  {
    +[PLGestaltUtilities hasAOT];
  }

  return hasAOT_ret;
}

uint64_t __28__PLGestaltUtilities_hasAOT__block_invoke()
{
  result = MGGetBoolAnswer();
  hasAOT_ret = result;
  return result;
}

+ (BOOL)hasBattery
{
  if (hasBattery_onceToken_0 != -1)
  {
    +[PLGestaltUtilities hasBattery];
  }

  return hasBattery_ret;
}

uint64_t __32__PLGestaltUtilities_hasBattery__block_invoke()
{
  result = MGGetBoolAnswer();
  hasBattery_ret = result;
  return result;
}

+ (BOOL)hasBatteryModuleAuth
{
  if (hasBatteryModuleAuth_onceToken != -1)
  {
    +[PLGestaltUtilities hasBatteryModuleAuth];
  }

  return hasBatteryModuleAuth_ret;
}

uint64_t __42__PLGestaltUtilities_hasBatteryModuleAuth__block_invoke()
{
  result = MGGetBoolAnswer();
  hasBatteryModuleAuth_ret = result;
  return result;
}

+ (BOOL)hasBaseband
{
  if (hasBaseband_onceToken != -1)
  {
    +[PLGestaltUtilities hasBaseband];
  }

  return hasBaseband_ret;
}

uint64_t __33__PLGestaltUtilities_hasBaseband__block_invoke()
{
  result = MGGetBoolAnswer();
  hasBaseband_ret = result;
  return result;
}

+ (BOOL)hasDCP
{
  if (hasDCP_onceToken_0 != -1)
  {
    +[PLGestaltUtilities hasDCP];
  }

  return hasDCP_ret;
}

uint64_t __28__PLGestaltUtilities_hasDCP__block_invoke()
{
  result = MGGetBoolAnswer();
  hasDCP_ret = result;
  return result;
}

+ (BOOL)hasDynamicChargingLimit
{
  if (hasDynamicChargingLimit_onceToken != -1)
  {
    +[PLGestaltUtilities hasDynamicChargingLimit];
  }

  return hasDynamicChargingLimit_ret;
}

uint64_t __45__PLGestaltUtilities_hasDynamicChargingLimit__block_invoke()
{
  result = MGGetBoolAnswer();
  hasDynamicChargingLimit_ret = result;
  return result;
}

uint64_t __43__PLGestaltUtilities_hasFixedChargingLimit__block_invoke()
{
  result = MGGetBoolAnswer();
  hasFixedChargingLimit_ret = result;
  return result;
}

+ (BOOL)hasGasGauge
{
  if (hasGasGauge_onceToken_0 != -1)
  {
    +[PLGestaltUtilities hasGasGauge];
  }

  return hasGasGauge_ret;
}

uint64_t __33__PLGestaltUtilities_hasGasGauge__block_invoke()
{
  result = MGGetBoolAnswer();
  hasGasGauge_ret = result;
  return result;
}

uint64_t __42__PLGestaltUtilities_hasInductiveCharging__block_invoke()
{
  result = MGGetBoolAnswer();
  hasInductiveCharging_ret = result;
  return result;
}

+ (BOOL)hasLPEM
{
  if (hasLPEM_onceToken_0 != -1)
  {
    +[PLGestaltUtilities hasLPEM];
  }

  return hasLPEM_ret;
}

uint64_t __29__PLGestaltUtilities_hasLPEM__block_invoke()
{
  result = MGGetBoolAnswer();
  hasLPEM_ret = result;
  return result;
}

+ (BOOL)hasLPM
{
  if (hasLPM_onceToken != -1)
  {
    +[PLGestaltUtilities hasLPM];
  }

  return hasLPM_ret;
}

uint64_t __28__PLGestaltUtilities_hasLPM__block_invoke()
{
  result = MGGetBoolAnswer();
  hasLPM_ret = result;
  return result;
}

+ (BOOL)hasLPW
{
  if (hasLPW_onceToken != -1)
  {
    +[PLGestaltUtilities hasLPW];
  }

  return hasLPW_ret;
}

uint64_t __28__PLGestaltUtilities_hasLPW__block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = MGIsDeviceOfType();
  hasLPW_ret = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)hasMesa
{
  if (hasMesa_onceToken != -1)
  {
    +[PLGestaltUtilities hasMesa];
  }

  return hasMesa_ret;
}

uint64_t __29__PLGestaltUtilities_hasMesa__block_invoke()
{
  result = MGGetBoolAnswer();
  hasMesa_ret = result;
  return result;
}

+ (BOOL)hasNFC
{
  if (hasNFC_onceToken_0 != -1)
  {
    +[PLGestaltUtilities hasNFC];
  }

  return hasNFC_ret;
}

uint64_t __28__PLGestaltUtilities_hasNFC__block_invoke()
{
  result = MGGetBoolAnswer();
  hasNFC_ret = result;
  return result;
}

+ (BOOL)hasOrb
{
  if (hasOrb_onceToken != -1)
  {
    +[PLGestaltUtilities hasOrb];
  }

  return hasOrb_ret;
}

uint64_t __28__PLGestaltUtilities_hasOrb__block_invoke()
{
  result = MGGetBoolAnswer();
  hasOrb_ret = result;
  return result;
}

+ (BOOL)hasPearl
{
  if (hasPearl_onceToken != -1)
  {
    +[PLGestaltUtilities hasPearl];
  }

  return hasPearl_ret;
}

uint64_t __30__PLGestaltUtilities_hasPearl__block_invoke()
{
  result = MGGetBoolAnswer();
  hasPearl_ret = result;
  return result;
}

+ (BOOL)hasPerseus
{
  if (hasPerseus_onceToken != -1)
  {
    +[PLGestaltUtilities hasPerseus];
  }

  return hasPerseus_ret;
}

uint64_t __32__PLGestaltUtilities_hasPerseus__block_invoke()
{
  result = MGGetBoolAnswer();
  hasPerseus_ret = result;
  return result;
}

uint64_t __32__PLGestaltUtilities_hasRearALS__block_invoke()
{
  result = MGGetBoolAnswer();
  hasRearALS_ret = result;
  return result;
}

+ (BOOL)hasPlatinum
{
  if (hasPlatinum_onceToken != -1)
  {
    +[PLGestaltUtilities hasPlatinum];
  }

  return hasPlatinum_ret;
}

uint64_t __33__PLGestaltUtilities_hasPlatinum__block_invoke()
{
  result = MGGetBoolAnswer();
  hasPlatinum_ret = result;
  return result;
}

uint64_t __40__PLGestaltUtilities_hasWirelessCharger__block_invoke()
{
  result = MGGetBoolAnswer();
  hasWirelessCharger_ret = result;
  return result;
}

+ (BOOL)hasWristTemperature
{
  if (hasWristTemperature_onceToken != -1)
  {
    +[PLGestaltUtilities hasWristTemperature];
  }

  return hasWristTemperature_ret;
}

uint64_t __41__PLGestaltUtilities_hasWristTemperature__block_invoke()
{
  result = MGGetBoolAnswer();
  hasWristTemperature_ret = result;
  return result;
}

+ (BOOL)has5G
{
  if (has5G_onceToken != -1)
  {
    +[PLGestaltUtilities has5G];
  }

  return has5G_ret;
}

uint64_t __27__PLGestaltUtilities_has5G__block_invoke()
{
  result = MGGetBoolAnswer();
  has5G_ret = result;
  return result;
}

+ (BOOL)is64Bit
{
  if (is64Bit_onceToken_0 != -1)
  {
    +[PLGestaltUtilities is64Bit];
  }

  return is64Bit_ret;
}

uint64_t __29__PLGestaltUtilities_is64Bit__block_invoke()
{
  result = MGGetBoolAnswer();
  is64Bit_ret = result;
  return result;
}

+ (BOOL)isDevBoard
{
  if (isDevBoard_onceToken != -1)
  {
    +[PLGestaltUtilities isDevBoard];
  }

  return isDevBoard_ret;
}

void __32__PLGestaltUtilities_isDevBoard__block_invoke()
{
  v0 = MGGetStringAnswer();
  if ([v0 hasSuffix:@"DEV"])
  {
    isDevBoard_ret = 1;
  }
}

+ (BOOL)isVirtualDevice
{
  if (isVirtualDevice_onceToken != -1)
  {
    +[PLGestaltUtilities isVirtualDevice];
  }

  return isVirtualDevice_ret;
}

uint64_t __37__PLGestaltUtilities_isVirtualDevice__block_invoke()
{
  result = MGGetBoolAnswer();
  isVirtualDevice_ret = result;
  return result;
}

+ (id)getUserAssignedDeviceName
{
  if (getUserAssignedDeviceName_onceToken != -1)
  {
    +[PLGestaltUtilities getUserAssignedDeviceName];
  }

  v3 = getUserAssignedDeviceName_ret;

  return v3;
}

uint64_t __47__PLGestaltUtilities_getUserAssignedDeviceName__block_invoke()
{
  getUserAssignedDeviceName_ret = MGGetStringAnswer();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)getBasebandFirmwareVersion
{
  if (getBasebandFirmwareVersion_onceToken != -1)
  {
    +[PLGestaltUtilities getBasebandFirmwareVersion];
  }

  v3 = getBasebandFirmwareVersion_ret;

  return v3;
}

uint64_t __48__PLGestaltUtilities_getBasebandFirmwareVersion__block_invoke()
{
  getBasebandFirmwareVersion_ret = MGGetStringAnswer();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)getBasebandChipset
{
  if (getBasebandChipset_onceToken != -1)
  {
    +[PLGestaltUtilities getBasebandChipset];
  }

  v3 = getBasebandChipset_ret;

  return v3;
}

uint64_t __40__PLGestaltUtilities_getBasebandChipset__block_invoke()
{
  getBasebandChipset_ret = MGGetStringAnswer();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)getBuildVersion
{
  if (getBuildVersion_onceToken != -1)
  {
    +[PLGestaltUtilities getBuildVersion];
  }

  v3 = getBuildVersion_ret;

  return v3;
}

uint64_t __37__PLGestaltUtilities_getBuildVersion__block_invoke()
{
  getBuildVersion_ret = MGGetStringAnswer();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)getHardwareModel
{
  if (getHardwareModel_onceToken != -1)
  {
    +[PLGestaltUtilities getHardwareModel];
  }

  v2 = [getHardwareModel_ret length];
  v3 = [getHardwareModel_ret hasSuffix:@"AP"];
  v4 = getHardwareModel_ret;
  if (v3)
  {
    v5 = -2;
  }

  else
  {
    if (![getHardwareModel_ret hasSuffix:@"DEV"])
    {
      goto LABEL_8;
    }

    v4 = getHardwareModel_ret;
    v5 = -3;
  }

  v2 = [v4 length] + v5;
LABEL_8:
  v6 = getHardwareModel_ret;

  return [v6 substringWithRange:{0, v2}];
}

void __38__PLGestaltUtilities_getHardwareModel__block_invoke()
{
  v2 = MobileGestalt_get_current_device();
  v0 = MobileGestalt_copy_hwModelDescriptionForPowerPerf_obj();
  v1 = getHardwareModel_ret;
  getHardwareModel_ret = v0;
}

+ (id)getHardwarePlatform
{
  if (getHardwarePlatform_onceToken != -1)
  {
    +[PLGestaltUtilities getHardwarePlatform];
  }

  v3 = getHardwarePlatform_ret;

  return v3;
}

uint64_t __41__PLGestaltUtilities_getHardwarePlatform__block_invoke()
{
  getHardwarePlatform_ret = MGGetStringAnswer();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)getInverseDeviceID
{
  if (getInverseDeviceID_onceToken != -1)
  {
    +[PLGestaltUtilities getInverseDeviceID];
  }

  v3 = getInverseDeviceID_ret;

  return v3;
}

uint64_t __40__PLGestaltUtilities_getInverseDeviceID__block_invoke()
{
  getInverseDeviceID_ret = MGGetStringAnswer();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)getProductType
{
  if (getProductType_onceToken != -1)
  {
    +[PLGestaltUtilities getProductType];
  }

  v3 = getProductType_ret;

  return v3;
}

void __36__PLGestaltUtilities_getProductType__block_invoke()
{
  v2 = MobileGestalt_get_current_device();
  v0 = MobileGestalt_copy_productTypeDescForPowerPerf_obj();
  v1 = getProductType_ret;
  getProductType_ret = v0;
}

+ (id)getWifiChipset
{
  if (getWifiChipset_onceToken != -1)
  {
    +[PLGestaltUtilities getWifiChipset];
  }

  v3 = getWifiChipset_ret;

  return v3;
}

uint64_t __36__PLGestaltUtilities_getWifiChipset__block_invoke()
{
  getWifiChipset_ret = MGGetStringAnswer();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __36__PLGestaltUtilities_getDeviceClass__block_invoke()
{
  result = MGGetSInt32Answer();
  getDeviceClass_ret = result;
  return result;
}

+ (int)getNumberOfDCPEXT
{
  if (getNumberOfDCPEXT_onceToken != -1)
  {
    +[PLGestaltUtilities getNumberOfDCPEXT];
  }

  return -1;
}

+ (int)getProductTypeCode
{
  if (getProductTypeCode_onceToken != -1)
  {
    +[PLGestaltUtilities getProductTypeCode];
  }

  return getProductTypeCode_ret;
}

uint64_t __40__PLGestaltUtilities_getProductTypeCode__block_invoke()
{
  result = MGGetProductType();
  getProductTypeCode_ret = result;
  return result;
}

@end