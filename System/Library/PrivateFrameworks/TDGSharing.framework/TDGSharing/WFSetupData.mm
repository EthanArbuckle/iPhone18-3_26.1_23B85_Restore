@interface WFSetupData
- (WFSetupData)initWithCoder:(id)coder;
- (WFSetupData)initWithKeyboards:(void *)keyboards appleID:(id)d usesSameAccountForiTunes:(BOOL)tunes isConnectedToWiFi:(BOOL)fi networks:(id)networks networkPasswords:(id)passwords localePreferences:(id)preferences isAutomaticTimeZoneEnabled:(BOOL)self0 timeZone:(id)self1 accessibilitySettings:(id)self2 firstName:(id)self3 deviceModel:(id)self4 deviceClass:(id)self5 hasHomeButton:(BOOL)self6 isRestoring:(BOOL)self7 deviceName:(id)self8 backupUUID:(id)self9 isBackupEnabled:(BOOL)backupEnabled dateOfLastBackup:(id)backup isOptedInToLocationServices:(BOOL)services isOptedInToDeviceAnalytics:(BOOL)analytics locationServicesData:(id)data isOptedInToFindMyDevice:(BOOL)device isOptedInToAppAnalytics:(BOOL)appAnalytics siriAssistantIsEnabled:(BOOL)isEnabled siriVoiceTriggerIsEnabled:(BOOL)triggerIsEnabled siriAssistantLanguageCode:(id)code siriAssistantOutputVoice:(id)keyboards0 siriDataSharingIsEnabled:(BOOL)keyboards1 dictationIsEnabled:(BOOL)keyboards2 suppressDictationOptIn:(BOOL)keyboards3 deviceTermsIdentifier:(int64_t)keyboards4 productVersion:(id)keyboards5 anisetteDataProvider:(id)keyboards6 prescriptionRecords:(id)keyboards7 walletData:(id)keyboards8;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSetupData

- (WFSetupData)initWithKeyboards:(void *)keyboards appleID:(id)d usesSameAccountForiTunes:(BOOL)tunes isConnectedToWiFi:(BOOL)fi networks:(id)networks networkPasswords:(id)passwords localePreferences:(id)preferences isAutomaticTimeZoneEnabled:(BOOL)self0 timeZone:(id)self1 accessibilitySettings:(id)self2 firstName:(id)self3 deviceModel:(id)self4 deviceClass:(id)self5 hasHomeButton:(BOOL)self6 isRestoring:(BOOL)self7 deviceName:(id)self8 backupUUID:(id)self9 isBackupEnabled:(BOOL)backupEnabled dateOfLastBackup:(id)backup isOptedInToLocationServices:(BOOL)services isOptedInToDeviceAnalytics:(BOOL)analytics locationServicesData:(id)data isOptedInToFindMyDevice:(BOOL)device isOptedInToAppAnalytics:(BOOL)appAnalytics siriAssistantIsEnabled:(BOOL)isEnabled siriVoiceTriggerIsEnabled:(BOOL)triggerIsEnabled siriAssistantLanguageCode:(id)code siriAssistantOutputVoice:(id)keyboards0 siriDataSharingIsEnabled:(BOOL)keyboards1 dictationIsEnabled:(BOOL)keyboards2 suppressDictationOptIn:(BOOL)keyboards3 deviceTermsIdentifier:(int64_t)keyboards4 productVersion:(id)keyboards5 anisetteDataProvider:(id)keyboards6 prescriptionRecords:(id)keyboards7 walletData:(id)keyboards8
{
  tunesCopy = tunes;
  fiCopy = fi;
  dCopy = d;
  networksCopy = networks;
  passwordsCopy = passwords;
  preferencesCopy = preferences;
  zoneCopy = zone;
  settingsCopy = settings;
  nameCopy = name;
  modelCopy = model;
  classCopy = class;
  deviceNameCopy = deviceName;
  iDCopy = iD;
  dataCopy = data;
  codeCopy = code;
  voiceCopy = voice;
  versionCopy = version;
  providerCopy = provider;
  recordsCopy = records;
  walletDataCopy = walletData;
  v72.receiver = self;
  v72.super_class = WFSetupData;
  v49 = [(WFSetupData *)&v72 init];
  if (v49)
  {
    BYTE2(v58) = in;
    LOWORD(v58) = __PAIR16__(dictationIsEnabled, sharingIsEnabled);
    WORD1(v57) = __PAIR16__(triggerIsEnabled, isEnabled);
    LOWORD(v57) = __PAIR16__(appAnalytics, device);
    *(&v56 + 1) = __PAIR16__(analytics, services);
    LOBYTE(v56) = backupEnabled;
    LOWORD(v55) = __PAIR16__(restoring, button);
    LOBYTE(v54) = enabled;
    v50 = [WFSetupDataInternal initWithKeyboards:"initWithKeyboards:appleID:usesSameAccountForiTunes:isConnectedToWiFi:networks:networkPasswords:localePreferences:isAutomaticTimeZoneEnabled:timeZone:accessibilitySettings:firstName:deviceModel:deviceClass:hasHomeButton:isRestoring:deviceName:backupUUID:isBackupEnabled:isOptedInToLocationServices:isOptedInToDeviceAnalytics:locationServicesData:isOptedInToFindMyDevice:isOptedInToAppAnalytics:siriAssistantIsEnabled:siriVoiceTriggerIsEnabled:siriAssistantLanguageCode:siriAssistantOutputVoice:siriDataSharingIsEnabled:dictationIsEnabled:suppressDictationOptIn:deviceTermsIdentifier:productVersion:anisetteDataProvider:prescriptionRecords:walletData:" appleID:keyboards usesSameAccountForiTunes:dCopy isConnectedToWiFi:tunesCopy networks:fiCopy networkPasswords:networksCopy localePreferences:preferencesCopy isAutomaticTimeZoneEnabled:v54 timeZone:zoneCopy accessibilitySettings:settingsCopy firstName:nameCopy deviceModel:modelCopy deviceClass:classCopy hasHomeButton:v55 isRestoring:deviceNameCopy deviceName:iDCopy backupUUID:v56 isBackupEnabled:dataCopy isOptedInToLocationServices:v57 isOptedInToDeviceAnalytics:codeCopy locationServicesData:voiceCopy isOptedInToFindMyDevice:v58 isOptedInToAppAnalytics:identifier siriAssistantIsEnabled:versionCopy siriVoiceTriggerIsEnabled:providerCopy siriAssistantLanguageCode:recordsCopy siriAssistantOutputVoice:walletDataCopy siriDataSharingIsEnabled:? dictationIsEnabled:? suppressDictationOptIn:? deviceTermsIdentifier:? productVersion:? anisetteDataProvider:? prescriptionRecords:? walletData:?];
    underlyingSwiftObject = v49->_underlyingSwiftObject;
    v49->_underlyingSwiftObject = v50;

    v52 = v49;
  }

  return v49;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  underlyingSwiftObject = [(WFSetupData *)self underlyingSwiftObject];
  [underlyingSwiftObject encodeWithCoder:coderCopy];
}

- (WFSetupData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = WFSetupData;
  v5 = [(WFSetupData *)&v9 init];
  if (v5)
  {
    v6 = [[WFSetupDataInternal alloc] initWithCoder:coderCopy];
    [(WFSetupData *)v5 setUnderlyingSwiftObject:v6];

    underlyingSwiftObject = [(WFSetupData *)v5 underlyingSwiftObject];

    if (underlyingSwiftObject)
    {
      underlyingSwiftObject = v5;
    }
  }

  else
  {
    underlyingSwiftObject = 0;
  }

  return underlyingSwiftObject;
}

@end