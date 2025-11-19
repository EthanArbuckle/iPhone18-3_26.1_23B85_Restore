@interface WFSetupDataInternal
- (NSArray)prescriptionRecords;
- (NSDictionary)localePreferences;
- (WFSetupDataInternal)init;
- (WFSetupDataInternal)initWithKeyboards:(id)a3 appleID:(id)a4 usesSameAccountForiTunes:(BOOL)a5 isConnectedToWiFi:(BOOL)a6 networks:(id)a7 networkPasswords:(id)a8 localePreferences:(id)a9 isAutomaticTimeZoneEnabled:(BOOL)a10 timeZone:(id)a11 accessibilitySettings:(id)a12 firstName:(id)a13 deviceModel:(id)a14 deviceClass:(id)a15 hasHomeButton:(BOOL)a16 isRestoring:(BOOL)a17 deviceName:(id)a18 backupUUID:(id)a19 isBackupEnabled:(BOOL)a20 isOptedInToLocationServices:(BOOL)a21 isOptedInToDeviceAnalytics:(BOOL)a22 locationServicesData:(id)a23 isOptedInToFindMyDevice:(BOOL)a24 isOptedInToAppAnalytics:(BOOL)a25 siriAssistantIsEnabled:(BOOL)a26 siriVoiceTriggerIsEnabled:(BOOL)a27 siriAssistantLanguageCode:(id)a28 siriAssistantOutputVoice:(id)a29 siriDataSharingIsEnabled:(BOOL)a30 dictationIsEnabled:(BOOL)a31 suppressDictationOptIn:(BOOL)a32 deviceTermsIdentifier:(int64_t)a33 productVersion:(id)a34 anisetteDataProvider:(id)a35 prescriptionRecords:(id)a36 walletData:(id)a37;
- (id)keyboards;
- (void)encodeWithCoder:(id)a3;
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

- (WFSetupDataInternal)initWithKeyboards:(id)a3 appleID:(id)a4 usesSameAccountForiTunes:(BOOL)a5 isConnectedToWiFi:(BOOL)a6 networks:(id)a7 networkPasswords:(id)a8 localePreferences:(id)a9 isAutomaticTimeZoneEnabled:(BOOL)a10 timeZone:(id)a11 accessibilitySettings:(id)a12 firstName:(id)a13 deviceModel:(id)a14 deviceClass:(id)a15 hasHomeButton:(BOOL)a16 isRestoring:(BOOL)a17 deviceName:(id)a18 backupUUID:(id)a19 isBackupEnabled:(BOOL)a20 isOptedInToLocationServices:(BOOL)a21 isOptedInToDeviceAnalytics:(BOOL)a22 locationServicesData:(id)a23 isOptedInToFindMyDevice:(BOOL)a24 isOptedInToAppAnalytics:(BOOL)a25 siriAssistantIsEnabled:(BOOL)a26 siriVoiceTriggerIsEnabled:(BOOL)a27 siriAssistantLanguageCode:(id)a28 siriAssistantOutputVoice:(id)a29 siriDataSharingIsEnabled:(BOOL)a30 dictationIsEnabled:(BOOL)a31 suppressDictationOptIn:(BOOL)a32 deviceTermsIdentifier:(int64_t)a33 productVersion:(id)a34 anisetteDataProvider:(id)a35 prescriptionRecords:(id)a36 walletData:(id)a37
{
  if (a4)
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
  v102 = a3;
  swift_unknownObjectRetain();
  v42 = a13;
  v43 = a14;
  v44 = a15;
  v45 = a18;
  v46 = a19;
  v47 = a23;
  v48 = a28;
  v94 = a29;
  v85 = a34;
  v91 = a35;
  v87 = a36;
  v88 = a37;
  if (a12)
  {
    v49 = a12;
    v50 = sub_26C6D87A8();
    v92 = v51;
    v93 = v50;

    if (v42)
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
    if (v42)
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

  if (v46)
  {
    v105 = sub_26C6D8A08();
    v78 = v60;

    if (v47)
    {
      goto LABEL_11;
    }

LABEL_14:
    v61 = 0;
    v63 = 0xF000000000000000;
    if (v48)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v105 = 0;
  v78 = 0;
  if (!v47)
  {
    goto LABEL_14;
  }

LABEL_11:
  v61 = sub_26C6D87A8();
  v63 = v62;

  if (v48)
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
  v67 = a22;
  v68 = a17;
  v69 = a16;
  v70 = sub_26C6D8A08();
  v76 = v71;
  v77 = v70;

  type metadata accessor for PrescriptionRecord();
  v86 = sub_26C6D8AA8();

  if (v88)
  {
    v72 = sub_26C6D87A8();
    v74 = v73;

    v68 = a17;
    v69 = a16;
    v67 = a22;
  }

  else
  {
    v72 = 0;
    v74 = 0xF000000000000000;
  }

  return WFSetupData.init(keyboards:appleID:usesSameAccountForiTunes:isConnectedToWiFi:networks:networkPasswords:localePreferences:isAutomaticTimeZoneEnabled:timeZone:accessibilitySettings:firstName:deviceModel:deviceClass:hasHomeButton:isRestoring:deviceName:backupUUID:isBackupEnabled:isOptedInToLocationServices:isOptedInToDeviceAnalytics:locationServicesData:isOptedInToFindMyDevice:isOptedInToAppAnalytics:siriAssistantIsEnabled:siriVoiceTriggerIsEnabled:siriAssistantLanguageCode:siriAssistantOutputVoice:siriDataSharingIsEnabled:dictationIsEnabled:suppressDictationOptIn:deviceTermsIdentifier:productVersion:anisetteDataProvider:prescriptionRecords:walletData:)(v102, v101, v100, a5, a6, v99, v98, v97, a10, v96, v95, v93, v92, v90, v89, v84, v83, v82, v81, v69, v68, v80, v79, v105, v78, a20, a21, v67, v61, v63, a24, a25, a26, a27, v64, v66, v94, a30, a31, a32, a33, v77, v76, v91, v86, v72, v74);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26C681410(v4);
}

- (WFSetupDataInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end