@interface WFSetupDataInternal
- (NSArray)prescriptionRecords;
- (NSDictionary)localePreferences;
- (WFSetupDataInternal)init;
- (WFSetupDataInternal)initWithKeyboards:(id)keyboards appleID:(id)d usesSameAccountForiTunes:(BOOL)tunes isConnectedToWiFi:(BOOL)fi networks:(id)networks networkPasswords:(id)passwords localePreferences:(id)preferences isAutomaticTimeZoneEnabled:(BOOL)self0 timeZone:(id)self1 accessibilitySettings:(id)self2 firstName:(id)self3 deviceModel:(id)self4 deviceClass:(id)self5 hasHomeButton:(BOOL)self6 isRestoring:(BOOL)self7 deviceName:(id)self8 backupUUID:(id)self9 isBackupEnabled:(BOOL)backupEnabled isOptedInToLocationServices:(BOOL)services isOptedInToDeviceAnalytics:(BOOL)analytics locationServicesData:(id)data isOptedInToFindMyDevice:(BOOL)device isOptedInToAppAnalytics:(BOOL)appAnalytics siriAssistantIsEnabled:(BOOL)isEnabled siriVoiceTriggerIsEnabled:(BOOL)triggerIsEnabled siriAssistantLanguageCode:(id)code siriAssistantOutputVoice:(id)voice siriDataSharingIsEnabled:(BOOL)keyboards0 dictationIsEnabled:(BOOL)keyboards1 suppressDictationOptIn:(BOOL)keyboards2 deviceTermsIdentifier:(int64_t)keyboards3 productVersion:(id)keyboards4 anisetteDataProvider:(id)keyboards5 prescriptionRecords:(id)keyboards6 walletData:(id)keyboards7;
- (id)keyboards;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSetupDataInternal

- (id)keyboards
{
  v2 = *(self + OBJC_IVAR___WFSetupDataInternal_keyboards);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (NSDictionary)localePreferences
{
  v2 = *(self + OBJC_IVAR___WFSetupDataInternal_localePreferences);

  v3 = sub_26C6D89A8();

  return v3;
}

- (NSArray)prescriptionRecords
{
  v2 = *(self + OBJC_IVAR___WFSetupDataInternal_prescriptionRecords);
  type metadata accessor for PrescriptionRecord();

  v3 = sub_26C6D8A98();

  return v3;
}

- (WFSetupDataInternal)initWithKeyboards:(id)keyboards appleID:(id)d usesSameAccountForiTunes:(BOOL)tunes isConnectedToWiFi:(BOOL)fi networks:(id)networks networkPasswords:(id)passwords localePreferences:(id)preferences isAutomaticTimeZoneEnabled:(BOOL)self0 timeZone:(id)self1 accessibilitySettings:(id)self2 firstName:(id)self3 deviceModel:(id)self4 deviceClass:(id)self5 hasHomeButton:(BOOL)self6 isRestoring:(BOOL)self7 deviceName:(id)self8 backupUUID:(id)self9 isBackupEnabled:(BOOL)backupEnabled isOptedInToLocationServices:(BOOL)services isOptedInToDeviceAnalytics:(BOOL)analytics locationServicesData:(id)data isOptedInToFindMyDevice:(BOOL)device isOptedInToAppAnalytics:(BOOL)appAnalytics siriAssistantIsEnabled:(BOOL)isEnabled siriVoiceTriggerIsEnabled:(BOOL)triggerIsEnabled siriAssistantLanguageCode:(id)code siriAssistantOutputVoice:(id)voice siriDataSharingIsEnabled:(BOOL)keyboards0 dictationIsEnabled:(BOOL)keyboards1 suppressDictationOptIn:(BOOL)keyboards2 deviceTermsIdentifier:(int64_t)keyboards3 productVersion:(id)keyboards4 anisetteDataProvider:(id)keyboards5 prescriptionRecords:(id)keyboards6 walletData:(id)keyboards7
{
  if (d)
  {
    v38 = sub_26C6D8A08();
    v100 = v39;
    v101 = v38;
  }

  else
  {
    v100 = 0;
    v101 = 0;
  }

  sub_26C6779D0(0, &qword_2804A8808, 0x277CBEAC0);
  v99 = sub_26C6D8AA8();
  sub_26C6779D0(0, &qword_2804A8990, 0x277CCACA8);
  v98 = sub_26C6D8AA8();
  v97 = sub_26C6D89B8();
  v40 = sub_26C6D8A08();
  v95 = v41;
  v96 = v40;
  keyboardsCopy = keyboards;
  swift_unknownObjectRetain();
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
  if (settings)
  {
    settingsCopy = settings;
    v50 = sub_26C6D87A8();
    v92 = v51;
    v93 = v50;

    if (nameCopy)
    {
LABEL_6:
      v52 = sub_26C6D8A08();
      v89 = v53;
      v90 = v52;

      goto LABEL_9;
    }
  }

  else
  {
    v92 = 0xF000000000000000;
    v93 = 0;
    if (nameCopy)
    {
      goto LABEL_6;
    }
  }

  v89 = 0;
  v90 = 0;
LABEL_9:
  v54 = sub_26C6D8A08();
  v83 = v55;
  v84 = v54;

  v56 = sub_26C6D8A08();
  v81 = v57;
  v82 = v56;

  v58 = sub_26C6D8A08();
  v79 = v59;
  v80 = v58;

  if (iDCopy)
  {
    v105 = sub_26C6D8A08();
    v78 = v60;

    if (dataCopy)
    {
      goto LABEL_11;
    }

LABEL_14:
    v61 = 0;
    v63 = 0xF000000000000000;
    if (codeCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v105 = 0;
  v78 = 0;
  if (!dataCopy)
  {
    goto LABEL_14;
  }

LABEL_11:
  v61 = sub_26C6D87A8();
  v63 = v62;

  if (codeCopy)
  {
LABEL_12:
    v64 = sub_26C6D8A08();
    v66 = v65;

    goto LABEL_16;
  }

LABEL_15:
  v64 = 0;
  v66 = 0;
LABEL_16:
  analyticsCopy2 = analytics;
  restoringCopy2 = restoring;
  buttonCopy2 = button;
  v70 = sub_26C6D8A08();
  v76 = v71;
  v77 = v70;

  type metadata accessor for PrescriptionRecord();
  v86 = sub_26C6D8AA8();

  if (walletDataCopy)
  {
    v72 = sub_26C6D87A8();
    v74 = v73;

    restoringCopy2 = restoring;
    buttonCopy2 = button;
    analyticsCopy2 = analytics;
  }

  else
  {
    v72 = 0;
    v74 = 0xF000000000000000;
  }

  return WFSetupData.init(keyboards:appleID:usesSameAccountForiTunes:isConnectedToWiFi:networks:networkPasswords:localePreferences:isAutomaticTimeZoneEnabled:timeZone:accessibilitySettings:firstName:deviceModel:deviceClass:hasHomeButton:isRestoring:deviceName:backupUUID:isBackupEnabled:isOptedInToLocationServices:isOptedInToDeviceAnalytics:locationServicesData:isOptedInToFindMyDevice:isOptedInToAppAnalytics:siriAssistantIsEnabled:siriVoiceTriggerIsEnabled:siriAssistantLanguageCode:siriAssistantOutputVoice:siriDataSharingIsEnabled:dictationIsEnabled:suppressDictationOptIn:deviceTermsIdentifier:productVersion:anisetteDataProvider:prescriptionRecords:walletData:)(keyboardsCopy, v101, v100, tunes, fi, v99, v98, v97, enabled, v96, v95, v93, v92, v90, v89, v84, v83, v82, v81, buttonCopy2, restoringCopy2, v80, v79, v105, v78, backupEnabled, services, analyticsCopy2, v61, v63, device, appAnalytics, isEnabled, triggerIsEnabled, v64, v66, voiceCopy, sharingIsEnabled, dictationIsEnabled, in, identifier, v77, v76, providerCopy, v86, v72, v74);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_26C681410(coderCopy);
}

- (WFSetupDataInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end