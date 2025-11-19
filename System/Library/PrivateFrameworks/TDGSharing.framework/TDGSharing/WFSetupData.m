@interface WFSetupData
- (WFSetupData)initWithCoder:(id)a3;
- (WFSetupData)initWithKeyboards:(void *)a3 appleID:(id)a4 usesSameAccountForiTunes:(BOOL)a5 isConnectedToWiFi:(BOOL)a6 networks:(id)a7 networkPasswords:(id)a8 localePreferences:(id)a9 isAutomaticTimeZoneEnabled:(BOOL)a10 timeZone:(id)a11 accessibilitySettings:(id)a12 firstName:(id)a13 deviceModel:(id)a14 deviceClass:(id)a15 hasHomeButton:(BOOL)a16 isRestoring:(BOOL)a17 deviceName:(id)a18 backupUUID:(id)a19 isBackupEnabled:(BOOL)a20 dateOfLastBackup:(id)a21 isOptedInToLocationServices:(BOOL)a22 isOptedInToDeviceAnalytics:(BOOL)a23 locationServicesData:(id)a24 isOptedInToFindMyDevice:(BOOL)a25 isOptedInToAppAnalytics:(BOOL)a26 siriAssistantIsEnabled:(BOOL)a27 siriVoiceTriggerIsEnabled:(BOOL)a28 siriAssistantLanguageCode:(id)a29 siriAssistantOutputVoice:(id)a30 siriDataSharingIsEnabled:(BOOL)a31 dictationIsEnabled:(BOOL)a32 suppressDictationOptIn:(BOOL)a33 deviceTermsIdentifier:(int64_t)a34 productVersion:(id)a35 anisetteDataProvider:(id)a36 prescriptionRecords:(id)a37 walletData:(id)a38;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSetupData

- (WFSetupData)initWithKeyboards:(void *)a3 appleID:(id)a4 usesSameAccountForiTunes:(BOOL)a5 isConnectedToWiFi:(BOOL)a6 networks:(id)a7 networkPasswords:(id)a8 localePreferences:(id)a9 isAutomaticTimeZoneEnabled:(BOOL)a10 timeZone:(id)a11 accessibilitySettings:(id)a12 firstName:(id)a13 deviceModel:(id)a14 deviceClass:(id)a15 hasHomeButton:(BOOL)a16 isRestoring:(BOOL)a17 deviceName:(id)a18 backupUUID:(id)a19 isBackupEnabled:(BOOL)a20 dateOfLastBackup:(id)a21 isOptedInToLocationServices:(BOOL)a22 isOptedInToDeviceAnalytics:(BOOL)a23 locationServicesData:(id)a24 isOptedInToFindMyDevice:(BOOL)a25 isOptedInToAppAnalytics:(BOOL)a26 siriAssistantIsEnabled:(BOOL)a27 siriVoiceTriggerIsEnabled:(BOOL)a28 siriAssistantLanguageCode:(id)a29 siriAssistantOutputVoice:(id)a30 siriDataSharingIsEnabled:(BOOL)a31 dictationIsEnabled:(BOOL)a32 suppressDictationOptIn:(BOOL)a33 deviceTermsIdentifier:(int64_t)a34 productVersion:(id)a35 anisetteDataProvider:(id)a36 prescriptionRecords:(id)a37 walletData:(id)a38
{
  v60 = a5;
  v61 = a6;
  v71 = a4;
  v70 = a7;
  v40 = a8;
  v41 = a9;
  v42 = a11;
  v43 = a12;
  v44 = a13;
  v45 = a14;
  v46 = a15;
  v47 = a18;
  v48 = a19;
  v69 = a24;
  v68 = a29;
  v67 = a30;
  v66 = a35;
  v65 = a36;
  v64 = a37;
  v63 = a38;
  v72.receiver = self;
  v72.super_class = WFSetupData;
  v49 = [(WFSetupData *)&v72 init];
  if (v49)
  {
    BYTE2(v58) = a33;
    LOWORD(v58) = __PAIR16__(a32, a31);
    WORD1(v57) = __PAIR16__(a28, a27);
    LOWORD(v57) = __PAIR16__(a26, a25);
    *(&v56 + 1) = __PAIR16__(a23, a22);
    LOBYTE(v56) = a20;
    LOWORD(v55) = __PAIR16__(a17, a16);
    LOBYTE(v54) = a10;
    v50 = [WFSetupDataInternal initWithKeyboards:"initWithKeyboards:appleID:usesSameAccountForiTunes:isConnectedToWiFi:networks:networkPasswords:localePreferences:isAutomaticTimeZoneEnabled:timeZone:accessibilitySettings:firstName:deviceModel:deviceClass:hasHomeButton:isRestoring:deviceName:backupUUID:isBackupEnabled:isOptedInToLocationServices:isOptedInToDeviceAnalytics:locationServicesData:isOptedInToFindMyDevice:isOptedInToAppAnalytics:siriAssistantIsEnabled:siriVoiceTriggerIsEnabled:siriAssistantLanguageCode:siriAssistantOutputVoice:siriDataSharingIsEnabled:dictationIsEnabled:suppressDictationOptIn:deviceTermsIdentifier:productVersion:anisetteDataProvider:prescriptionRecords:walletData:" appleID:a3 usesSameAccountForiTunes:v71 isConnectedToWiFi:v60 networks:v61 networkPasswords:v70 localePreferences:v41 isAutomaticTimeZoneEnabled:v54 timeZone:v42 accessibilitySettings:v43 firstName:v44 deviceModel:v45 deviceClass:v46 hasHomeButton:v55 isRestoring:v47 deviceName:v48 backupUUID:v56 isBackupEnabled:v69 isOptedInToLocationServices:v57 isOptedInToDeviceAnalytics:v68 locationServicesData:v67 isOptedInToFindMyDevice:v58 isOptedInToAppAnalytics:a34 siriAssistantIsEnabled:v66 siriVoiceTriggerIsEnabled:v65 siriAssistantLanguageCode:v64 siriAssistantOutputVoice:v63 siriDataSharingIsEnabled:? dictationIsEnabled:? suppressDictationOptIn:? deviceTermsIdentifier:? productVersion:? anisetteDataProvider:? prescriptionRecords:? walletData:?];
    underlyingSwiftObject = v49->_underlyingSwiftObject;
    v49->_underlyingSwiftObject = v50;

    v52 = v49;
  }

  return v49;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFSetupData *)self underlyingSwiftObject];
  [v5 encodeWithCoder:v4];
}

- (WFSetupData)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WFSetupData;
  v5 = [(WFSetupData *)&v9 init];
  if (v5)
  {
    v6 = [[WFSetupDataInternal alloc] initWithCoder:v4];
    [(WFSetupData *)v5 setUnderlyingSwiftObject:v6];

    v7 = [(WFSetupData *)v5 underlyingSwiftObject];

    if (v7)
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end