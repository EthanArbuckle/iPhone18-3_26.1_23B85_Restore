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

+ (BOOL)hasAlwaysListening
{
  if (qword_100015788 != -1)
  {
    sub_1000077C8();
  }

  return byte_100015780;
}

+ (BOOL)hasANE
{
  if (qword_100015798 != -1)
  {
    sub_1000077DC();
  }

  return byte_100015790;
}

+ (BOOL)hasAOP
{
  if (qword_1000157A8 != -1)
  {
    sub_1000077F0();
  }

  return byte_1000157A0;
}

+ (BOOL)hasAOP2
{
  if (qword_1000157B8 != -1)
  {
    sub_100007804();
  }

  return byte_1000157B0;
}

+ (BOOL)hasAOT
{
  if (qword_1000157C8 != -1)
  {
    sub_100007818();
  }

  return byte_1000157C0;
}

+ (BOOL)hasBattery
{
  if (qword_1000157D8 != -1)
  {
    sub_10000782C();
  }

  return byte_1000157D0;
}

+ (BOOL)hasBatteryModuleAuth
{
  if (qword_1000157E8 != -1)
  {
    sub_100007840();
  }

  return byte_1000157E0;
}

+ (BOOL)hasBaseband
{
  if (qword_1000157F8 != -1)
  {
    sub_100007854();
  }

  return byte_1000157F0;
}

+ (BOOL)hasDCP
{
  if (qword_100015808 != -1)
  {
    sub_100007868();
  }

  return byte_100015800;
}

+ (BOOL)hasDynamicChargingLimit
{
  if (qword_100015818 != -1)
  {
    sub_10000787C();
  }

  return byte_100015810;
}

+ (BOOL)hasFixedChargingLimit
{
  if (qword_100015828 != -1)
  {
    sub_100007890();
  }

  return byte_100015820;
}

+ (BOOL)hasGasGauge
{
  if (qword_100015838 != -1)
  {
    sub_1000078A4();
  }

  return byte_100015830;
}

+ (BOOL)hasInductiveCharging
{
  if (qword_100015848 != -1)
  {
    sub_1000078B8();
  }

  return byte_100015840;
}

+ (BOOL)hasLPEM
{
  if (qword_100015858 != -1)
  {
    sub_1000078CC();
  }

  return byte_100015850;
}

+ (BOOL)hasLPM
{
  if (qword_100015868 != -1)
  {
    sub_1000078E0();
  }

  return byte_100015860;
}

+ (BOOL)hasLPW
{
  if (qword_100015878 != -1)
  {
    sub_1000078F4();
  }

  return byte_100015870;
}

+ (BOOL)hasMesa
{
  if (qword_100015888 != -1)
  {
    sub_100007908();
  }

  return byte_100015880;
}

+ (BOOL)hasNFC
{
  if (qword_100015898 != -1)
  {
    sub_10000791C();
  }

  return byte_100015890;
}

+ (BOOL)hasOrb
{
  if (qword_1000158A8 != -1)
  {
    sub_100007930();
  }

  return byte_1000158A0;
}

+ (BOOL)hasPearl
{
  if (qword_1000158B8 != -1)
  {
    sub_100007944();
  }

  return byte_1000158B0;
}

+ (BOOL)hasPerseus
{
  if (qword_1000158C8 != -1)
  {
    sub_100007958();
  }

  return byte_1000158C0;
}

+ (BOOL)hasRearALS
{
  if (qword_1000158D8 != -1)
  {
    sub_10000796C();
  }

  return byte_1000158D0;
}

+ (BOOL)hasPlatinum
{
  if (qword_1000158E8 != -1)
  {
    sub_100007980();
  }

  return byte_1000158E0;
}

+ (BOOL)hasWirelessCharger
{
  if (qword_1000158F8 != -1)
  {
    sub_100007994();
  }

  return byte_1000158F0;
}

+ (BOOL)hasWristTemperature
{
  if (qword_100015908 != -1)
  {
    sub_1000079A8();
  }

  return byte_100015900;
}

+ (BOOL)has5G
{
  if (qword_100015918 != -1)
  {
    sub_1000079BC();
  }

  return byte_100015910;
}

+ (BOOL)is64Bit
{
  if (qword_100015928 != -1)
  {
    sub_1000079D0();
  }

  return byte_100015920;
}

+ (BOOL)isDevBoard
{
  if (qword_100015938 != -1)
  {
    sub_1000079E4();
  }

  return byte_100015930;
}

+ (BOOL)isVirtualDevice
{
  if (qword_100015948 != -1)
  {
    sub_1000079F8();
  }

  return byte_100015940;
}

+ (id)getUserAssignedDeviceName
{
  if (qword_100015958 != -1)
  {
    sub_100007A0C();
  }

  v3 = qword_100015950;

  return v3;
}

+ (id)getBasebandFirmwareVersion
{
  if (qword_100015968 != -1)
  {
    sub_100007A20();
  }

  v3 = qword_100015960;

  return v3;
}

+ (id)getBasebandChipset
{
  if (qword_100015978 != -1)
  {
    sub_100007A34();
  }

  v3 = qword_100015970;

  return v3;
}

+ (id)getBuildVersion
{
  if (qword_100015988 != -1)
  {
    sub_100007A48();
  }

  v3 = qword_100015980;

  return v3;
}

+ (id)getHardwareModel
{
  if (qword_100015998 != -1)
  {
    sub_100007A5C();
  }

  v2 = [qword_100015990 length];
  v3 = [qword_100015990 hasSuffix:@"AP"];
  v4 = qword_100015990;
  if (v3)
  {
    v5 = -2;
  }

  else
  {
    if (![qword_100015990 hasSuffix:@"DEV"])
    {
      goto LABEL_8;
    }

    v4 = qword_100015990;
    v5 = -3;
  }

  v2 = [v4 length] + v5;
LABEL_8:
  v6 = qword_100015990;

  return [v6 substringWithRange:{0, v2}];
}

+ (id)getHardwarePlatform
{
  if (qword_1000159A8 != -1)
  {
    sub_100007A70();
  }

  v3 = qword_1000159A0;

  return v3;
}

+ (id)getInverseDeviceID
{
  if (qword_1000159B8 != -1)
  {
    sub_100007A84();
  }

  v3 = qword_1000159B0;

  return v3;
}

+ (id)getProductType
{
  if (qword_1000159C8 != -1)
  {
    sub_100007A98();
  }

  v3 = qword_1000159C0;

  return v3;
}

+ (id)getWifiChipset
{
  if (qword_1000159D8 != -1)
  {
    sub_100007AAC();
  }

  v3 = qword_1000159D0;

  return v3;
}

+ (int)getDeviceClass
{
  if (qword_1000159E0 != -1)
  {
    sub_100007AC0();
  }

  return dword_100015740;
}

+ (int)getNumberOfDCPEXT
{
  if (qword_1000159E8 != -1)
  {
    sub_100007AD4();
  }

  return -1;
}

+ (int)getProductTypeCode
{
  if (qword_1000159F0 != -1)
  {
    sub_100007AE8();
  }

  return dword_100015744;
}

@end