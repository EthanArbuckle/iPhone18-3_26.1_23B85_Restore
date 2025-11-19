@interface PSSystemPolicyForApp
+ (BOOL)isServiceRestricted:(id)a3;
+ (OS_dispatch_queue)_bbObserverQueue;
- (BOOL)_accountModificationDisabledByRestrictions;
- (BOOL)_isAppClip;
- (BOOL)_isBackgroundAppRefreshAllowed;
- (BOOL)_isWirelessDataRestricted;
- (BOOL)_supportsBackgroundAppRefresh;
- (BOOL)_supportsJournalingSuggestions;
- (BOOL)_supportsLiveActivities;
- (BOOL)_supportsLiveActivitiesFrequentUpdates;
- (BOOL)getMulticastAllowed:(BOOL *)a3;
- (BOOL)shouldShowPasteboardSpecifier;
- (PSSystemPolicyForApp)initWithBundleIdentifier:(id)a3;
- (PSSystemPolicyForAppDelegate)delegate;
- (id)_journalingSuggestionsSpecifiers;
- (id)accessoriesSpecifier;
- (id)accountsSpecifier;
- (id)assistantSpecifiers;
- (id)authLevelStringForStatus:(unint64_t)a3;
- (id)backgroundAppRefreshSpecifier;
- (id)calendarSpecifiers;
- (id)contactlessNFCSideButtonSpecifiers;
- (id)contactlessNFCSpecifiers;
- (id)contactsServicesSpecifier;
- (id)dataUsageWorkspaceInfo;
- (id)defaultAppSpecifierWithAppRecordsMatchingBlock:(id)a3 getter:(SEL)a4 setter:(SEL)a5 title:(id)a6;
- (id)defaultBrowser:(id)a3;
- (id)defaultBrowserSpecifier;
- (id)defaultMailApp:(id)a3;
- (id)defaultMailAppSpecifier;
- (id)documentSource:(id)a3;
- (id)documentsSpecifier;
- (id)driverKitSpecifiers;
- (id)exposureSpecifiersWithTCCServiceLookup:(id)a3;
- (id)familyControlsSpecifier;
- (id)getDoubleClickForNFC:(id)a3;
- (id)getNudityDetectionEnabledValue;
- (id)isBackgroundRefreshEnabled:(id)a3;
- (id)isFamilyControlsEnabled:(id)a3;
- (id)isLiveActivitiesEnabled:(id)a3;
- (id)isLocalNetworkEnabled:(id)a3;
- (id)isTapToPayAlwaysPlaySoundEnabled:(id)a3;
- (id)isTapToPayScreenLockEnabled:(id)a3;
- (id)liveActivitiesSpecifier;
- (id)locationServicesSpecifier;
- (id)locationStatus:(id)a3;
- (id)networkServicesSpecifier;
- (id)notificationSpecifier;
- (id)nudityDetectionSpeicier;
- (id)pasteboardAccessForSpecifier:(id)a3;
- (id)pasteboardSpecifier;
- (id)pathRuleForBundleID:(id)a3 create:(BOOL)a4;
- (id)photosServicesSpecifier;
- (id)preferredLanguage:(id)a3;
- (id)preferredLanguageSpecifier;
- (id)privacyAccessForSpecifier:(id)a3;
- (id)privacySpecifierForService:(__CFString *)a3 tccServiceLookup:(id)a4 tccServiceOverrides:(id)a5;
- (id)privacySpecifiersWithTCCServiceLookup:(id)a3 tccServiceOverrides:(id)a4;
- (id)searchSpecifiers;
- (id)specifiers;
- (id)specifiersForPolicyOptions:(unint64_t)a3 force:(BOOL)a4;
- (id)tapToPayAlwaysPlaySoundSpecifiers;
- (id)tapToPayScreenLockSpecifiers;
- (id)trackingSpecifiersWithTCCServiceLookup:(id)a3 tccServiceOverrides:(id)a4;
- (id)walletSpecifier;
- (id)wirelessDataSpecifierWithAppName:(id)a3;
- (int64_t)_getAuthorizationRecordsStatus;
- (void)_handleAddAccountButtonAction:(id)a3;
- (void)headerLinkWasTapped;
- (void)loadNetworkConfigurationsForceRefresh:(BOOL)a3;
- (void)monitoredStoreDidChange:(id)a3;
- (void)observer:(id)a3 updateSectionInfo:(id)a4;
- (void)reloadSpecifiers;
- (void)saveNetworkConfiguration;
- (void)setBackgroundRefreshEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setDefaultBrowser:(id)a3 specifier:(id)a4;
- (void)setDefaultMailApp:(id)a3 specifier:(id)a4;
- (void)setDoubleClickForNFC:(id)a3 specifier:(id)a4;
- (void)setFamilyControlsEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setLiveActivitiesEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setLocalNetworkEnabled:(id)a3 specifier:(id)a4;
- (void)setPasteboardAccess:(id)a3 forSpecifier:(id)a4;
- (void)setPrivacyAccess:(id)a3 forSpecifier:(id)a4;
- (void)setTapToPayAlwaysPlaySoundEnabled:(id)a3 specifier:(id)a4;
- (void)setTapToPayScreenLockEnabled:(id)a3 specifier:(id)a4;
- (void)setupNetworkConfiguration;
- (void)showController:(id)a3 animate:(BOOL)a4;
@end

@implementation PSSystemPolicyForApp

- (PSSystemPolicyForApp)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PSSystemPolicyForApp;
  v5 = [(PSSystemPolicyForApp *)&v18 init];
  v6 = v5;
  if (v5)
  {
    [(PSSystemPolicyForApp *)v5 setBundleIdentifier:v4];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v7 = getBBObserverClass_softClass;
    v23 = getBBObserverClass_softClass;
    if (!getBBObserverClass_softClass)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __getBBObserverClass_block_invoke;
      v19[3] = &unk_1E71DBC78;
      v19[4] = &v20;
      __getBBObserverClass_block_invoke(v19);
      v7 = v21[3];
    }

    v8 = v7;
    _Block_object_dispose(&v20, 8);
    v9 = [v7 alloc];
    v10 = [objc_opt_class() _bbObserverQueue];
    v11 = [v9 initWithQueue:v10];
    bbObserver = v6->__bbObserver;
    v6->__bbObserver = v11;

    [(BBObserver *)v6->__bbObserver setObserverFeed:512];
    [(BBObserver *)v6->__bbObserver setDelegate:v6];
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    v14 = *MEMORY[0x1E69599B0];
    v15 = +[PSAccountEnumerator sharedEnumerator];
    v16 = [v15 monitoredAccountStore];
    [v13 addObserver:v6 selector:sel_monitoredStoreDidChange_ name:v14 object:v16];

    if (initWithBundleIdentifier__onceToken != -1)
    {
      [PSSystemPolicyForApp initWithBundleIdentifier:];
    }
  }

  return v6;
}

void __49__PSSystemPolicyForApp_initWithBundleIdentifier___block_invoke()
{
  v90[24] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69D5500];
  v1 = *MEMORY[0x1E69D5518];
  v2 = MEMORY[0x1E69D5518];
  v89[0] = *MEMORY[0x1E69D5500];
  v89[1] = v1;
  v90[0] = &unk_1EFE65B20;
  v90[1] = &unk_1EFE65B38;
  v3 = MEMORY[0x1E69D55D8];
  v4 = MEMORY[0x1E69D55C8];
  v5 = *MEMORY[0x1E69D55C8];
  v89[2] = *MEMORY[0x1E69D55D8];
  v89[3] = v5;
  v90[2] = &unk_1EFE65B50;
  v90[3] = &unk_1EFE65B68;
  v6 = MEMORY[0x1E69D5508];
  v7 = MEMORY[0x1E69D5588];
  v8 = *MEMORY[0x1E69D5588];
  v89[4] = *MEMORY[0x1E69D5508];
  v89[5] = v8;
  v90[4] = &unk_1EFE65B80;
  v90[5] = &unk_1EFE65B98;
  v9 = *MEMORY[0x1E69D5520];
  v89[6] = *MEMORY[0x1E69D55F0];
  v89[7] = v9;
  v90[6] = &unk_1EFE65BB0;
  v90[7] = &unk_1EFE65BC8;
  v10 = *MEMORY[0x1E69D55A8];
  v89[8] = *MEMORY[0x1E69D5550];
  v89[9] = v10;
  v90[8] = &unk_1EFE65BE0;
  v90[9] = &unk_1EFE65BF8;
  v11 = *MEMORY[0x1E69D5610];
  v89[10] = *MEMORY[0x1E69D5620];
  v89[11] = v11;
  v90[10] = &unk_1EFE65C10;
  v90[11] = &unk_1EFE65C28;
  v12 = *MEMORY[0x1E69D5568];
  v89[12] = *MEMORY[0x1E69D5558];
  v89[13] = v12;
  v90[12] = &unk_1EFE65C40;
  v90[13] = &unk_1EFE65C58;
  v13 = *MEMORY[0x1E69D5578];
  v89[14] = *MEMORY[0x1E69D5580];
  v89[15] = v13;
  v90[14] = &unk_1EFE65C70;
  v90[15] = &unk_1EFE65C88;
  v14 = *MEMORY[0x1E69D5600];
  v89[16] = *MEMORY[0x1E69D5618];
  v89[17] = v14;
  v90[16] = &unk_1EFE65CA0;
  v90[17] = &unk_1EFE65CB8;
  v15 = *MEMORY[0x1E69D5560];
  v89[18] = *MEMORY[0x1E69D55C0];
  v89[19] = v15;
  v90[18] = &unk_1EFE65CD0;
  v90[19] = &unk_1EFE65CE8;
  v16 = *MEMORY[0x1E69D5540];
  v89[20] = *MEMORY[0x1E69D55B0];
  v89[21] = v16;
  v90[20] = &unk_1EFE65D00;
  v90[21] = &unk_1EFE65D18;
  v17 = *MEMORY[0x1E69D5528];
  v89[22] = *MEMORY[0x1E69D55E0];
  v89[23] = v17;
  v90[22] = &unk_1EFE65D30;
  v90[23] = &unk_1EFE65D48;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:24];
  v19 = _PSServicePolicyOptions;
  _PSServicePolicyOptions = v18;

  v87[0] = *v0;
  v82 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v81 = [v82 localizedStringForKey:@"CONTACTS" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[0] = v81;
  v87[1] = *v2;
  v80 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v79 = [v80 localizedStringForKey:@"CALENDARS" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[1] = v79;
  v87[2] = *v3;
  v78 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v77 = [v78 localizedStringForKey:@"REMINDERS" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[2] = v77;
  v87[3] = *MEMORY[0x1E69D55F8];
  v76 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v75 = [v76 localizedStringForKey:@"UBIQUITY" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[3] = v75;
  v87[4] = *v4;
  v74 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v73 = [v74 localizedStringForKey:@"PHOTOS" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[4] = v73;
  v87[5] = *v6;
  v72 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v71 = [v72 localizedStringForKey:@"BT_PERIPHERAL" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[5] = v71;
  v87[6] = *v7;
  v70 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v69 = [v70 localizedStringForKey:@"MICROPHONE" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[6] = v69;
  v87[7] = *MEMORY[0x1E69D55F0];
  v68 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v67 = [v68 localizedStringForKey:@"SPEECH_RECOGNITION" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[7] = v67;
  v87[8] = *MEMORY[0x1E69D5550];
  v66 = PSLocalizablePearlStringForKey(@"FACE_ID");
  v88[8] = v66;
  v87[9] = *MEMORY[0x1E69D55A8];
  v65 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v64 = [v65 localizedStringForKey:@"MOTION" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[9] = v64;
  v87[10] = *MEMORY[0x1E69D5620];
  v63 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v62 = [v63 localizedStringForKey:@"WILLOW" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[10] = v62;
  v87[11] = *MEMORY[0x1E69D5610];
  v61 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v60 = [v61 localizedStringForKey:@"PASSKEYS" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[11] = v60;
  v87[12] = *MEMORY[0x1E69D5568];
  v59 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v58 = [v59 localizedStringForKey:@"KEYBOARD_NETWORKING" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[12] = v58;
  v87[13] = *MEMORY[0x1E69D5580];
  v57 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v56 = [v57 localizedStringForKey:@"MEDIALIBRARY" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[13] = v56;
  v87[14] = *MEMORY[0x1E69D5578];
  v55 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v54 = [v55 localizedStringForKey:@"TV_PROVIDER" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[14] = v54;
  v87[15] = *MEMORY[0x1E69D5618];
  v53 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v52 = [v53 localizedStringForKey:@"WEBKIT_INTELLIGENT_TRACKING_PREVENTION" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[15] = v52;
  v87[16] = *MEMORY[0x1E69D5600];
  v51 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v50 = [v51 localizedStringForKey:@"CROSS_APP_TRACKING" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[16] = v50;
  v87[17] = *MEMORY[0x1E69D55C0];
  v49 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v48 = [v49 localizedStringForKey:@"PASTE_BETWEEN_APPS" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[17] = v48;
  v87[18] = *MEMORY[0x1E69D5560];
  v47 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v46 = [v47 localizedStringForKey:@"FOCUS" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[18] = v46;
  v87[19] = *MEMORY[0x1E69D55B0];
  v45 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v44 = [v45 localizedStringForKey:@"NEARBY_INTERACTIONS" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[19] = v44;
  v87[20] = *MEMORY[0x1E69D5540];
  v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"EXPOSURE_NOTIFICATION" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[20] = v21;
  v87[21] = *MEMORY[0x1E69D5520];
  v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"CAMERA" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[21] = v23;
  v87[22] = *MEMORY[0x1E69D55E0];
  v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"SECURE_ELEMENT" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[22] = v25;
  v87[23] = *MEMORY[0x1E69D5528];
  v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:@"CONTACTLESS_NFC" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v88[23] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:24];
  v29 = _PSLocalizedServiceNames;
  _PSLocalizedServiceNames = v28;

  v30 = _PSServiceIconNames;
  _PSServiceIconNames = MEMORY[0x1E695E0F8];

  v31 = *MEMORY[0x1E69D5528];
  v85[0] = *MEMORY[0x1E69D5610];
  v85[1] = v31;
  v86[0] = @"com.apple.graphic-icon.person-passkey";
  v86[1] = @"com.apple.graphic-icon.contactless-and-nfc";
  v32 = *MEMORY[0x1E69D5568];
  v85[2] = *MEMORY[0x1E69D55E0];
  v85[3] = v32;
  v86[2] = @"com.apple.graphic-icon.secure-element";
  v86[3] = @"com.apple.graphic-icon.keyboard";
  v33 = *MEMORY[0x1E69D5588];
  v85[4] = *MEMORY[0x1E69D5508];
  v85[5] = v33;
  v86[4] = @"com.apple.graphic-icon.bluetooth";
  v86[5] = @"com.apple.graphic-icon.microphone-access";
  v34 = *MEMORY[0x1E69D5550];
  v85[6] = *MEMORY[0x1E69D55F0];
  v85[7] = v34;
  v86[6] = @"com.apple.graphic-icon.waveform";
  v86[7] = @"com.apple.graphic-icon.face-id";
  v35 = *MEMORY[0x1E69D5578];
  v85[8] = *MEMORY[0x1E69D55A8];
  v85[9] = v35;
  v86[8] = @"com.apple.graphic-icon.motion-and-fitness";
  v86[9] = @"com.apple.graphic-icon.tv-provider";
  v36 = *MEMORY[0x1E69D55B0];
  v85[10] = *MEMORY[0x1E69D5560];
  v85[11] = v36;
  v86[10] = @"com.apple.graphic-icon.focus";
  v86[11] = @"com.apple.graphic-icon.nearby-interactions";
  v85[12] = *MEMORY[0x1E69D5520];
  v86[12] = @"com.apple.graphic-icon.camera";
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:13];
  v38 = _PSServiceIconTypeIDs;
  _PSServiceIconTypeIDs = v37;

  v39 = *MEMORY[0x1E69D5518];
  v83[0] = *MEMORY[0x1E69D5500];
  v83[1] = v39;
  v84[0] = @"com.apple.MobileAddressBook";
  v84[1] = @"com.apple.mobilecal";
  v40 = *MEMORY[0x1E69D55C8];
  v83[2] = *MEMORY[0x1E69D55D8];
  v83[3] = v40;
  v84[2] = @"com.apple.reminders";
  v84[3] = @"com.apple.mobileslideshow";
  v41 = *MEMORY[0x1E69D5580];
  v83[4] = *MEMORY[0x1E69D5620];
  v83[5] = v41;
  v84[4] = @"com.apple.Home";
  v84[5] = @"com.apple.Music";
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:6];
  v43 = _PSServiceIconApplicationBundleIdentifiers;
  _PSServiceIconApplicationBundleIdentifiers = v42;
}

+ (OS_dispatch_queue)_bbObserverQueue
{
  if (_bbObserverQueue_onceToken != -1)
  {
    +[PSSystemPolicyForApp _bbObserverQueue];
  }

  v3 = _bbObserverQueue__bbObserverQueue;

  return v3;
}

void __40__PSSystemPolicyForApp__bbObserverQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.preferencesframework.gateway", v2);
  v1 = _bbObserverQueue__bbObserverQueue;
  _bbObserverQueue__bbObserverQueue = v0;
}

- (id)specifiers
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = PKLogForCategory(6);
  v4 = os_signpost_id_make_with_pointer(v3, "PSSystemPolicyForApp.specifiers");

  v5 = PKLogForCategory(6);
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    *buf = 136315394;
    v13 = "[PSSystemPolicyForApp specifiers]";
    v14 = 2114;
    v15 = v7;
    _os_signpost_emit_with_name_impl(&dword_18B008000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PSSystemPolicyForApp.specifiers", "%s: %{public}@", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__PSSystemPolicyForApp_specifiers__block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v4;
  v8 = _Block_copy(aBlock);
  v9 = [(PSSystemPolicyForApp *)self specifiersForPolicyOptions:-134348801 force:0];
  if (v8)
  {
    v8[2](v8);
  }

  return v9;
}

void __34__PSSystemPolicyForApp_specifiers__block_invoke(uint64_t a1)
{
  v2 = PKLogForCategory(6);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_18B008000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PSSystemPolicyForApp.specifiers", &unk_18B1164E9, v5, 2u);
  }
}

- (id)specifiersForPolicyOptions:(unint64_t)a3 force:(BOOL)a4
{
  v90 = *MEMORY[0x1E69E9840];
  self->_policyOptions = a3;
  self->_forcePolicyOptions = a4;
  v5 = objc_alloc(MEMORY[0x1E69635F8]);
  v6 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v83 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:1 error:0];

  v7 = [MEMORY[0x1E695DF70] array];
  if (PSIsWebAppPlaceholder(v83))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [(PSSystemPolicyForApp *)self _isAppClip];
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = v10;
    if (v9)
    {
      v12 = @"ALLOW_APP_CLIP_ACCESS_FORMAT";
    }

    else
    {
      v12 = @"ALLOW_ACCESS_FORMAT";
    }

    v13 = [v10 localizedStringForKey:v12 value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v14 = [v83 localizedName];
    v15 = [v8 stringWithFormat:v13, v14];
    v16 = [PSSpecifier groupSpecifierWithName:v15];

    [v7 ps_addPossibleObject:v16];
    v17 = [(PSSystemPolicyForApp *)self notificationSpecifier];
    [v7 ps_addPossibleObject:v17];
  }

  else
  {
    if (v83)
    {
      v18 = [v83 URL];
      v19 = CFBundleCreate(0, v18);

      if (v19)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __57__PSSystemPolicyForApp_specifiersForPolicyOptions_force___block_invoke;
        aBlock[3] = &__block_descriptor_40_e5_v8__0l;
        aBlock[4] = v19;
        v81 = _Block_copy(aBlock);
        v20 = TCCAccessCopyInformationForBundle();
        v19 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v20, "count")}];
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v21 = v20;
        v22 = [v21 countByEnumeratingWithState:&v84 objects:v89 count:16];
        if (v22)
        {
          v23 = *v85;
          v24 = MEMORY[0x1E69D54F8];
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v85 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v84 + 1) + 8 * i);
              v27 = [v26 objectForKeyedSubscript:*v24];
              [v19 na_safeSetObject:v26 forKey:v27];
            }

            v22 = [v21 countByEnumeratingWithState:&v84 objects:v89 count:16];
          }

          while (v22);
        }

        v28 = v81;
        if (v81)
        {
          (*(v81 + 2))();
          v28 = v81;
        }
      }
    }

    else
    {
      v19 = 0;
    }

    v29 = MEMORY[0x18CFEF020]();
    v30 = [(PSSystemPolicyForApp *)self privacySpecifiersWithTCCServiceLookup:v19 tccServiceOverrides:v29];
    [v7 addObjectsFromArray:v30];

    v31 = [(PSSystemPolicyForApp *)self calendarSpecifiers];
    [v7 ps_addPossibleObject:v31];

    v32 = [(PSSystemPolicyForApp *)self assistantSpecifiers];
    [v7 ps_addPossibleObject:v32];

    v33 = [(PSSystemPolicyForApp *)self searchSpecifiers];
    [v7 ps_addPossibleObject:v33];

    v34 = [(PSSystemPolicyForApp *)self notificationSpecifier];
    [v7 ps_addPossibleObject:v34];

    v35 = [(PSSystemPolicyForApp *)self nudityDetectionSpeicier];
    [v7 ps_addPossibleObject:v35];

    v36 = [(PSSystemPolicyForApp *)self liveActivitiesSpecifier];
    [v7 ps_addPossibleObject:v36];

    v37 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5568] tccServiceLookup:v19 tccServiceOverrides:v29];
    [v7 ps_addPossibleObject:v37];

    v38 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D55F8] tccServiceLookup:v19 tccServiceOverrides:v29];
    [v7 ps_addPossibleObject:v38];

    v82 = [(PSSystemPolicyForApp *)self backgroundAppRefreshSpecifier];
    [v7 ps_addPossibleObject:v82];
    v39 = [v83 localizedName];
    if (!v39)
    {
      v40 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v41 = [(PSSystemPolicyForApp *)self bundleIdentifier];
      v42 = [v40 localizedStringForKey:v41 value:&stru_1EFE45030 table:@"RemovableApplications"];

      v39 = v42;
    }

    v78 = v39;
    v43 = [(PSSystemPolicyForApp *)self wirelessDataSpecifierWithAppName:?];
    [v7 ps_addPossibleObject:v43];

    v44 = [(PSSystemPolicyForApp *)self documentsSpecifier];
    [v7 ps_addPossibleObject:v44];

    v45 = [(PSSystemPolicyForApp *)self exposureSpecifiersWithTCCServiceLookup:v19];
    [v7 addObjectsFromArray:v45];

    v46 = [(PSSystemPolicyForApp *)self _journalingSuggestionsSpecifiers];
    [v7 na_safeAddObjectsFromArray:v46];

    v47 = [(PSSystemPolicyForApp *)self contactlessNFCSpecifiers];
    [v7 na_safeAddObjectsFromArray:v47];

    v48 = [(PSSystemPolicyForApp *)self contactlessNFCSideButtonSpecifiers];
    [v7 na_safeAddObjectsFromArray:v48];

    if ([v83 isEligibleWebBrowser])
    {
      v79 = [(PSSystemPolicyForApp *)self defaultBrowserSpecifier];
    }

    else
    {
      v79 = 0;
    }

    if ([v83 isEligibleMailClient])
    {
      v49 = [(PSSystemPolicyForApp *)self defaultMailAppSpecifier];
    }

    else
    {
      v49 = 0;
    }

    v77 = v49;
    if (v79 | v49)
    {
      v50 = [PSSpecifier groupSpecifierWithID:@"DEFAULT_APP"];
      [v7 addObject:v50];
      [v7 ps_addPossibleObject:v79];
      [v7 ps_addPossibleObject:v77];
    }

    v80 = [(PSSystemPolicyForApp *)self trackingSpecifiersWithTCCServiceLookup:v19 tccServiceOverrides:v29];
    if ([v80 count])
    {
      [v7 addObjectsFromArray:v80];
    }

    v51 = [(PSSystemPolicyForApp *)self pasteboardSpecifier];
    if (v51)
    {
      v52 = [PSSpecifier groupSpecifierWithID:@"PASTEBOARD_GROUP"];
      [v7 addObject:v52];

      [v7 addObject:v51];
    }

    if ([v7 count])
    {
      v53 = MEMORY[0x1E696AEC0];
      v54 = [(PSSystemPolicyForApp *)self _isAppClip];
      v55 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v56 = v55;
      if (v54)
      {
        v57 = @"ALLOW_APP_CLIP_ACCESS_FORMAT";
      }

      else
      {
        v57 = @"ALLOW_ACCESS_FORMAT";
      }

      v58 = [v55 localizedStringForKey:v57 value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      v59 = [v53 stringWithFormat:v58, v78];
      v60 = [PSSpecifier groupSpecifierWithName:v59];

      [v7 insertObject:v60 atIndex:0];
      if (v82 && ([MEMORY[0x1E696AE30] processInfo], v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v61, "isLowPowerModeEnabled"), v61, v62))
      {
        v63 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v64 = [v63 localizedStringForKey:@"ALLOW_APP_REFRESH_LPM" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      }

      else
      {
        v64 = 0;
      }

      if ([v64 length])
      {
        [v60 setProperty:v64 forKey:@"footerText"];
      }

      else
      {
        [v60 removePropertyForKey:@"footerText"];
      }
    }

    v65 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v66 = [v65 localizedStringForKey:@"PREFERRED_LANGUAGE" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v67 = [PSSpecifier groupSpecifierWithName:v66];

    v68 = [(PSSystemPolicyForApp *)self preferredLanguageSpecifier];
    if (v68)
    {
      [v7 addObject:v67];
      v69 = [(PSSystemPolicyForApp *)self preferredLanguageSpecifier];
      [v7 ps_addPossibleObject:v69];
    }

    v70 = [(PSSystemPolicyForApp *)self accountsSpecifier];
    if (v70)
    {
      v71 = [PSSpecifier groupSpecifierWithID:@"ACCOUNTS_GROUP" name:0];
      [v7 addObject:v71];

      [v7 addObject:v70];
    }

    v72 = [(PSSystemPolicyForApp *)self familyControlsSpecifier];
    if (v72)
    {
      [v7 ps_addPossibleObject:v72];
    }

    v73 = [(PSSystemPolicyForApp *)self tapToPayScreenLockSpecifiers];
    [v7 addObjectsFromArray:v73];

    v74 = [(PSSystemPolicyForApp *)self tapToPayAlwaysPlaySoundSpecifiers];
    [v7 addObjectsFromArray:v74];

    v75 = [(PSSystemPolicyForApp *)self driverKitSpecifiers];
    [v7 addObjectsFromArray:v75];
  }

  return v7;
}

- (BOOL)_isAppClip
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  v4 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v8 = 0;
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v8];

  v6 = [v5 appClipMetadata];
  LOBYTE(v4) = v6 != 0;

  return v4;
}

- (id)notificationSpecifier
{
  if (self->_policyOptions)
  {
    if (notificationSpecifier_onceToken != -1)
    {
      [PSSystemPolicyForApp notificationSpecifier];
    }

    v4 = +[PSNotificationSettingsController sharedInstance];
    v5 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v6 = [v4 sectionInfoForIdentifier:v5];

    if (v6)
    {
      v7 = objc_opt_class();
      v2 = PSApplicationSpecifierForBBSection(v6, 0, v7, notificationSpecifier_notificationDetailControllerClass);
      v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"NOTIFICATIONS" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      [v2 setName:v9];

      [v2 setIdentifier:@"NOTIFICATIONS"];
      [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
      [v2 setObject:@"com.apple.graphic-icon.notifications" forKeyedSubscript:@"iconUTTypeIdentifier"];
      v10 = objc_opt_new();
      [v10 refreshCellContentsWithSpecifier:v2];
      v11 = [v10 detailTextLabel];
      v12 = [v11 text];
      [v2 setObject:v12 forKeyedSubscript:@"cellSubtitleText"];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __45__PSSystemPolicyForApp_notificationSpecifier__block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = PSBundlePathForPreferenceBundle(@"NotificationsSettings");
  v3 = v2 = v1;
  v4 = [v0 bundleWithPath:v3];
  v5 = notificationSpecifier_notificationSettingsBundle;
  notificationSpecifier_notificationSettingsBundle = v4;

  notificationSpecifier_notificationCellClass = [notificationSpecifier_notificationSettingsBundle classNamed:@"NotificationCell"];
  result = [notificationSpecifier_notificationSettingsBundle classNamed:@"BulletinBoardAppDetailController"];
  notificationSpecifier_notificationDetailControllerClass = result;
  return result;
}

- (id)nudityDetectionSpeicier
{
  if ((self->_policyOptions & 0x80000000000) == 0 || ![getNudityDetectionPreferencesHelperClass() nudityDetectionFeatureEnabled])
  {
    goto LABEL_5;
  }

  NudityDetectionPreferencesHelperClass = getNudityDetectionPreferencesHelperClass();
  v4 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  if ([NudityDetectionPreferencesHelperClass nudityDetectionAvailableForBundleID:v4])
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v5 sf_inRetailKioskMode];

    if (v6)
    {
LABEL_5:
      v7 = 0;
      goto LABEL_6;
    }

    v9 = MEMORY[0x1E696AAE8];
    v10 = PSBundlePathForPreferenceBundle(@"CommunicationSafetySettings");
    v12 = v11 = v10;
    v4 = [v9 bundleWithPath:v12];

    v13 = [getNudityDetectionPreferencesHelperClass() nudityDetectionRowLabel];
    v14 = [getNudityDetectionPreferencesHelperClass() classForNudityAppDetectionSettings];
    v7 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v13, self, 0, sel_getNudityDetectionEnabledValue, [v4 classNamed:v14], 2, 0);

    v15 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    [v7 setProperty:v15 forKey:@"BUNDLE_ID"];

    [v7 setIdentifier:@"NUDITY_DETECTION"];
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(getNudityDetectionPreferencesHelperClass(), "nudityDetectionRowEnabled")}];
    [v7 setObject:v16 forKeyedSubscript:@"enabled"];

    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
    v17 = [getNudityDetectionPreferencesHelperClass() nudityDetectionRowIconID];
    [v7 setObject:v17 forKeyedSubscript:@"iconUTTypeIdentifier"];
  }

  else
  {
    v7 = 0;
  }

LABEL_6:

  return v7;
}

- (id)getNudityDetectionEnabledValue
{
  NudityDetectionPreferencesHelperClass = getNudityDetectionPreferencesHelperClass();
  v4 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v5 = [NudityDetectionPreferencesHelperClass nudityDetectionOnOffLabelForBundleID:v4];

  return v5;
}

- (id)liveActivitiesSpecifier
{
  if ((self->_policyOptions & 0x10000000000) != 0 && [(PSSystemPolicyForApp *)self _supportsLiveActivities])
  {
    if ([(PSSystemPolicyForApp *)self _supportsLiveActivitiesFrequentUpdates])
    {
      v3 = MEMORY[0x1E696AAE8];
      v4 = PSBundlePathForPreferenceBundle(@"ActivitySettings");
      v6 = v5 = v4;
      v7 = [v3 bundleWithPath:v6];

      v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"LIVE_ACTIVITIES" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      v10 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v9, 0, 0, 0, [v7 classNamed:@"ActivitySettingsDetailController"], 1, 0);

      v11 = [(PSSystemPolicyForApp *)self bundleIdentifier];
      [v10 setProperty:v11 forKey:@"BUNDLE_ID"];
    }

    else
    {
      v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"LIVE_ACTIVITIES" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      v10 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:sel_setLiveActivitiesEnabled_forSpecifier_ get:sel_isLiveActivitiesEnabled_ detail:0 cell:6 edit:0];

      [v10 setObject:objc_opt_class() forKeyedSubscript:@"cellClass"];
    }

    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
    [v10 setObject:@"com.apple.graphic-icon.live-activities" forKeyedSubscript:@"iconUTTypeIdentifier"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_supportsLiveActivities
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  v4 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:1 error:0];

  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v6 = getACActivityCenterClass_softClass;
  v15 = getACActivityCenterClass_softClass;
  if (!getACActivityCenterClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getACActivityCenterClass_block_invoke;
    v11[3] = &unk_1E71DBC78;
    v11[4] = &v12;
    __getACActivityCenterClass_block_invoke(v11);
    v6 = v13[3];
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);
  v8 = objc_alloc_init(v6);
  if ([v5 supportsLiveActivities])
  {
    v9 = [v8 areActivitiesEnabled];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_supportsLiveActivitiesFrequentUpdates
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69635F8]);
    v5 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v6 = [v4 initWithBundleIdentifier:v5 allowPlaceholder:1 error:0];

    LOBYTE(v5) = [v6 supportsLiveActivitiesFrequentUpdates];
    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)setLiveActivitiesEnabled:(id)a3 forSpecifier:(id)a4
{
  v10 = a3;
  v5 = objc_alloc_init(getACActivityAuthorizationClass());
  v6 = [v10 BOOLValue];
  v7 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  [v5 setActivitiesEnabled:v6 forBundleId:v7];

  v8 = [(PSSystemPolicyForApp *)self delegate];
  LOBYTE(v7) = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = [(PSSystemPolicyForApp *)self delegate];
    [v9 systemPolicyForApp:self didUpdateForSystemPolicyOptions:0x10000000000 withValue:v10];
  }
}

- (id)isLiveActivitiesEnabled:(id)a3
{
  v4 = objc_alloc_init(getACActivityAuthorizationClass());
  v5 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v6 = [v4 areActivitiesEnabledForBundleId:v5];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:v6];

  return v7;
}

- (BOOL)_supportsJournalingSuggestions
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  v4 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];

  LOBYTE(v4) = [v5 supportsJournalingSuggestions];
  return v4;
}

- (id)_journalingSuggestionsSpecifiers
{
  v3 = [MEMORY[0x1E695DF70] array];
  if ((self->_policyOptions & 0x100000000000) != 0 && [(PSSystemPolicyForApp *)self _supportsJournalingSuggestions]&& MomentsOnboardingAndSettingsLibraryCore_0())
  {
    if (!MomentsOnboardingAndSettingsLibraryCore_0())
    {
      v12 = 0;
      v11 = abort_report_np();
      free(v11);
    }

    v4 = [PSSpecifier groupSpecifierWithID:@"JOURNALING_SUGGESTIONS_GROUP", v12];
    [v3 addObject:v4];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"JOURNALING_SUGGESTIONS" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:NSClassFromString(&cfstr_Mosuggestionsh.isa) cell:2 edit:0];

    v8 = MEMORY[0x1E695E118];
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"allowMultilineTitleKey"];
    v9 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    [v7 setObject:v9 forKeyedSubscript:@"AppBundleID"];

    [v7 setObject:v8 forKeyedSubscript:@"useLazyIcons"];
    [v7 setObject:@"com.apple.graphic-icon.journaling-suggestions" forKeyedSubscript:@"iconUTTypeIdentifier"];
    [v3 addObject:v7];
  }

  return v3;
}

- (id)accessoriesSpecifier
{
  accessoriesPrivacyController = self->_accessoriesPrivacyController;
  if (!accessoriesPrivacyController)
  {
    v4 = [[PSAccessoriesPolicyController alloc] initWithAppBundleID:self->_bundleIdentifier];
    v5 = self->_accessoriesPrivacyController;
    self->_accessoriesPrivacyController = v4;

    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__PSSystemPolicyForApp_accessoriesSpecifier__block_invoke;
    v10[3] = &unk_1E71DC170;
    objc_copyWeak(&v11, &location);
    [(PSAccessoriesPolicyController *)self->_accessoriesPrivacyController setAccessChangedHandler:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    accessoriesPrivacyController = self->_accessoriesPrivacyController;
  }

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ACCESSORIES" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v8 = [(PSAccessoriesPolicyController *)accessoriesPrivacyController appSpecifierWithName:v7 bundleID:self->_bundleIdentifier];

  if (v8)
  {
    [v8 setIdentifier:@"ACCESSORIES"];
  }

  return v8;
}

void __44__PSSystemPolicyForApp_accessoriesSpecifier__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 reloadSpecifiers];
}

- (id)accountsSpecifier
{
  if (_os_feature_enabled_impl() && (self->_policyOptions & 0x8000000) != 0)
  {
    v4 = +[PSAccountEnumerator sharedEnumerator];
    v5 = [v4 visibleAccountCount];

    if (v5 < 1)
    {
      v3 = PSApplicationSpecifierForAddAccountButton();
      [v3 setTarget:self];
      [v3 setButtonAction:sel__handleAddAccountButtonAction_];
      v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[PSSystemPolicyForApp _accountModificationDisabledByRestrictions](self, "_accountModificationDisabledByRestrictions") ^ 1}];
      [v3 setProperty:v6 forKey:@"enabled"];
    }

    else
    {
      v3 = PSApplicationSpecifierForAccountsSection();
    }

    v7 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    [v3 setObject:v7 forKeyedSubscript:@"AppBundleID"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_handleAddAccountButtonAction:(id)a3
{
  v9 = a3;
  v4 = [(PSSystemPolicyForApp *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = v9;
  if (v5)
  {
    v7 = objc_alloc_init([v9 detailControllerClass]);
    if (v7)
    {
      v8 = [(PSSystemPolicyForApp *)self delegate];
      [v8 showController:v7 animate:1];
    }

    v6 = v9;
  }
}

- (BOOL)_accountModificationDisabledByRestrictions
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x1E69ADD70]] == 2;

  return v3;
}

- (void)monitoredStoreDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PSSystemPolicyForApp_monitoredStoreDidChange___block_invoke;
  block[3] = &unk_1E71DBE20;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __48__PSSystemPolicyForApp_monitoredStoreDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 reloadSpecifiers];
}

- (id)calendarSpecifiers
{
  if ((self->_policyOptions & 8) != 0)
  {
    if (!self->_calendarPrivacyController)
    {
      v4 = objc_opt_new();
      calendarPrivacyController = self->_calendarPrivacyController;
      self->_calendarPrivacyController = v4;
    }

    if (calendarSpecifiers_onceToken != -1)
    {
      [PSSystemPolicyForApp calendarSpecifiers];
    }

    v6 = self->_calendarPrivacyController;
    v7 = calendarSpecifiers_specifierName;
    v8 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v2 = [(PSCalendarPolicyController *)v6 appSpecifierWithName:v7 bundleID:v8];

    if (v2)
    {
      [v2 setIdentifier:@"CALENDAR"];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __42__PSSystemPolicyForApp_calendarSpecifiers__block_invoke()
{
  v2 = +[PSCalendarPolicyController loadPrivacySettingsBundle];
  v0 = [v2 localizedStringForKey:@"CALENDARS" value:&stru_1EFE45030 table:@"Privacy"];
  v1 = calendarSpecifiers_specifierName;
  calendarSpecifiers_specifierName = v0;
}

- (id)assistantSpecifiers
{
  if ((self->_policyOptions & 0x800000) != 0 && ([MEMORY[0x1E6963608] defaultWorkspace], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "applicationIsInstalled:", self->_bundleIdentifier), v3, v4))
  {
    v5 = PSApplicationSpecifierForAssistantSectionForBundleId(self->_bundleIdentifier, 1, 0, 0);
    [v5 setIdentifier:@"SIRI"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)searchSpecifiers
{
  if ((self->_policyOptions & 0x800000) != 0)
  {
    v2 = PSApplicationSpecifierForSearchSectionForBundleId(self->_bundleIdentifier, 1, 0, 0);
    [v2 setIdentifier:@"SEARCH"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)dataUsageWorkspaceInfo
{
  v12 = 0;
  v8 = 0;
  v10 = 0u;
  v11 = 0;
  v9 = self;
  v2 = _CTServerConnectionCreate();
  if (v2)
  {
    v3 = v2;
    _CTServerConnectionCopyCellularUsageWorkspaceInfo();
    CFRelease(v3);
  }

  v4 = _PSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "Failed to get the data usage workspace information", v7, 2u);
  }

  v5 = v12;

  return v5;
}

- (BOOL)_isWirelessDataRestricted
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x1E69ADD90]];

  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 sf_isChinaRegionCellularDevice];

  v6 = (v5 & 1) == 0 && CTCellularDataPlanGetIsEnabled() == 0;
  return v3 == 2 || v6;
}

- (id)wirelessDataSpecifierWithAppName:(id)a3
{
  v4 = a3;
  if ((self->_policyOptions & 0x8000) == 0 || !MGGetBoolAnswer())
  {
    goto LABEL_5;
  }

  v5 = [(PSSystemPolicyForApp *)self _isWirelessDataRestricted];
  [0 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"enabled"];
  if (v5)
  {
    [0 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"enabled"];
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v8 = getPSAppCellularUsageSpecifierClass_softClass;
  v20 = getPSAppCellularUsageSpecifierClass_softClass;
  if (!getPSAppCellularUsageSpecifierClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getPSAppCellularUsageSpecifierClass_block_invoke;
    v16[3] = &unk_1E71DBC78;
    v16[4] = &v17;
    __getPSAppCellularUsageSpecifierClass_block_invoke(v16);
    v8 = v18[3];
  }

  v9 = v8;
  _Block_object_dispose(&v17, 8);
  v10 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v11 = objc_opt_new();
  v6 = [v8 systemPolicySpecifierForAppName:v4 bundleID:v10 icon:v11 enabled:{-[PSSystemPolicyForApp _isWirelessDataRestricted](self, "_isWirelessDataRestricted") ^ 1}];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [v6 identifier];
  v14 = [v12 stringWithFormat:@"%@.wireless", v13];
  [v6 setIdentifier:v14];

  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
  [v6 setObject:@"com.apple.graphic-icon.cellular-settings" forKeyedSubscript:@"iconUTTypeIdentifier"];
  v15 = [v6 performGetter];
  [v6 removePropertyForKey:@"iconImage"];
LABEL_6:

  return v6;
}

- (id)familyControlsSpecifier
{
  if ((self->_policyOptions & 0x1000000000) != 0 && [(PSSystemPolicyForApp *)self _getAuthorizationRecordsStatus]!= 1)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"FAMILY_CONTROLS" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v3 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:sel_setFamilyControlsEnabled_forSpecifier_ get:sel_isFamilyControlsEnabled_ detail:0 cell:6 edit:0];

    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
    [v3 setObject:@"com.apple.graphic-icon.screen-time" forKeyedSubscript:@"iconUTTypeIdentifier"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)_getAuthorizationRecordsStatus
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [getFOAuthorizationCenterClass() sharedCenter];
  v4 = [v3 authorizationRecords];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = 1;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 bundleIdentifier];
        v12 = [(PSSystemPolicyForApp *)self bundleIdentifier];
        v13 = [v11 isEqualToString:v12];

        if (v13)
        {
          v8 = [v10 status];
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (void)setFamilyControlsEnabled:(id)a3 forSpecifier:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v19 = a4;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__0;
  v26[4] = __Block_byref_object_dispose__0;
  v7 = v6;
  v27 = v7;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [getFOAuthorizationCenterClass() sharedCenter];
  v9 = [v8 authorizationRecords];

  v10 = 0;
  v11 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v11)
  {
    v12 = *v23;
    do
    {
      v13 = 0;
      v14 = v10;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v22 + 1) + 8 * v13);
        v16 = [v15 bundleIdentifier];
        v17 = [(PSSystemPolicyForApp *)self bundleIdentifier];
        if ([v16 isEqualToString:v17])
        {
          v10 = [v15 recordIdentifier];
        }

        else
        {
          v10 = 0;
        }

        ++v13;
        v14 = v10;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v11);
  }

  if ([(PSSystemPolicyForApp *)self _getAuthorizationRecordsStatus]== 2)
  {
    v18 = [getFOAuthorizationCenterClass() sharedCenter];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __62__PSSystemPolicyForApp_setFamilyControlsEnabled_forSpecifier___block_invoke;
    v21[3] = &unk_1E71DC198;
    v21[4] = v26;
    [v18 resetAuthorizationForRecordIdentifier:v10 completionHandler:v21];
  }

  else
  {
    v18 = [getFOAuthorizationCenterClass() sharedCenter];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __62__PSSystemPolicyForApp_setFamilyControlsEnabled_forSpecifier___block_invoke_2;
    v20[3] = &unk_1E71DC198;
    v20[4] = v26;
    [v18 requestAuthorizationForRecordIdentifier:v10 completionHandler:v20];
  }

  _Block_object_dispose(v26, 8);
}

void __62__PSSystemPolicyForApp_setFamilyControlsEnabled_forSpecifier___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = MEMORY[0x1E695E110];
  }

  else
  {
    v2 = MEMORY[0x1E695E118];
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v2);
}

void __62__PSSystemPolicyForApp_setFamilyControlsEnabled_forSpecifier___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = MEMORY[0x1E695E118];
  }

  else
  {
    v2 = MEMORY[0x1E695E110];
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v2);
}

- (id)isFamilyControlsEnabled:(id)a3
{
  if ([(PSSystemPolicyForApp *)self _getAuthorizationRecordsStatus]== 2)
  {
    v3 = MEMORY[0x1E695E118];
  }

  else
  {
    v3 = MEMORY[0x1E695E110];
  }

  return v3;
}

- (id)backgroundAppRefreshSpecifier
{
  if ((self->_policyOptions & 2) != 0 && [(PSSystemPolicyForApp *)self _supportsBackgroundAppRefresh])
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"BACKGROUND_APP_REFRESH" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:sel_setBackgroundRefreshEnabled_forSpecifier_ get:sel_isBackgroundRefreshEnabled_ detail:0 cell:6 edit:0];

    [v5 setObject:objc_opt_class() forKeyedSubscript:@"cellClass"];
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[PSSystemPolicyForApp _isBackgroundAppRefreshAllowed](self, "_isBackgroundAppRefreshAllowed") ^ 1}];
    [v5 setProperty:v6 forKey:@"enabled"];

    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
    [v5 setObject:@"com.apple.graphic-icon.background-app-refresh" forKeyedSubscript:@"iconUTTypeIdentifier"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_supportsBackgroundAppRefresh
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  v4 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:1 error:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 UIBackgroundModes];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isEqualToString:@"remote-notification"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"newsstand-content") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"fetch") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"processing"))
        {
          v12 = 1;
          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v12 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_15:

  return v12;
}

- (BOOL)_isBackgroundAppRefreshAllowed
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v6 = [v5 isAutomaticAppUpdatesAllowed];
    v7 = [v5 isAutomaticAppUpdatesModificationAllowed];
    v4 = v6 & v7 ^ 1 | [v5 isBoolSettingLockedDownByRestrictions:*MEMORY[0x1E69ADDE0]];
  }

  return v4 & 1;
}

- (void)setBackgroundRefreshEnabled:(id)a3 forSpecifier:(id)a4
{
  v12 = a3;
  v5 = CFPreferencesCopyAppValue(@"KeepAppsUpToDateAppList", @"com.apple.mt");
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = objc_opt_new();
  }

  v7 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  [v6 setObject:v12 forKey:v7];

  CFPreferencesSetAppValue(@"KeepAppsUpToDateAppList", v6, @"com.apple.mt");
  CFPreferencesAppSynchronize(@"com.apple.mt");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kKeepAppsUpToDateEnabledChangedNotification", 0, 0, 1u);
  v9 = [(PSSystemPolicyForApp *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(PSSystemPolicyForApp *)self delegate];
    [v11 systemPolicyForApp:self didUpdateForSystemPolicyOptions:2 withValue:v12];
  }
}

- (id)isBackgroundRefreshEnabled:(id)a3
{
  v4 = [MEMORY[0x1E696AE30] processInfo];
  v5 = [v4 isLowPowerModeEnabled];

  if (v5)
  {
    v6 = MEMORY[0x1E695E110];
  }

  else
  {
    v7 = CFPreferencesCopyAppValue(@"KeepAppsUpToDateAppList", @"com.apple.mt");
    v8 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      v6 = v9;
    }

    else
    {
      v6 = MEMORY[0x1E695E118];
    }
  }

  return v6;
}

- (id)photosServicesSpecifier
{
  if ((self->_policyOptions & 0x20) != 0)
  {
    photosPrivacyController = self->_photosPrivacyController;
    if (!photosPrivacyController)
    {
      v5 = objc_opt_new();
      v6 = self->_photosPrivacyController;
      self->_photosPrivacyController = v5;

      photosPrivacyController = self->_photosPrivacyController;
    }

    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"PHOTOS" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v9 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v2 = [(PSPhotosPolicyController *)photosPrivacyController appSpecifierWithName:v8 bundleID:v9];

    if (v2)
    {
      [v2 setIdentifier:@"PHOTOS"];
      [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
      [v2 setObject:@"com.apple.mobileslideshow" forKeyedSubscript:@"appIDForLazyIcon"];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)walletSpecifier
{
  if ((self->_policyOptions & 0x800000000000) != 0)
  {
    v6 = [PSWalletPolicyController alloc];
    v7 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v8 = [(PSWalletPolicyController *)v6 initWithBundleIdentifier:v7];
    walletPrivacyController = self->_walletPrivacyController;
    self->_walletPrivacyController = v8;

    v3 = [(PSWalletPolicyController *)self->_walletPrivacyController specifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)contactsServicesSpecifier
{
  if ((self->_policyOptions & 4) != 0)
  {
    contactsPrivacyController = self->_contactsPrivacyController;
    if (!contactsPrivacyController)
    {
      v5 = objc_opt_new();
      v6 = self->_contactsPrivacyController;
      self->_contactsPrivacyController = v5;

      contactsPrivacyController = self->_contactsPrivacyController;
    }

    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CONTACTS" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v9 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v2 = [(PSContactsPolicyController *)contactsPrivacyController appSpecifierWithName:v8 bundleID:v9];

    if (v2)
    {
      [v2 setIdentifier:@"CONTACTS"];
      [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
      [v2 setObject:@"com.apple.MobileAddressBook" forKeyedSubscript:@"appIDForLazyIcon"];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)getMulticastAllowed:(BOOL *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [MEMORY[0x1E6977FB8] copyAggregatePathRules];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 matchSigningIdentifier];
        v12 = [(PSSystemPolicyForApp *)self bundleIdentifier];
        if ([v11 isEqualToString:v12])
        {
          v13 = [v10 multicastPreferenceSet];

          if (v13)
          {
            if (a3)
            {
              *a3 = 1;
            }

            v14 = [v10 denyMulticast] ^ 1;
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(v14) = 0;
LABEL_16:

  return v14;
}

- (void)setupNetworkConfiguration
{
  v9 = 0;
  [(PSSystemPolicyForApp *)self getMulticastAllowed:&v9];
  if (v9 == 1)
  {
    objc_initWeak(&location, self);
    v3 = [MEMORY[0x1E6977F90] sharedManagerForAllUsers];
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__PSSystemPolicyForApp_setupNetworkConfiguration__block_invoke;
    v6[3] = &unk_1E71DC1C0;
    objc_copyWeak(&v7, &location);
    [v3 setChangedQueue:v4 andHandler:v6];

    [(PSSystemPolicyForApp *)self loadNetworkConfigurationsForceRefresh:0];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __49__PSSystemPolicyForApp_setupNetworkConfiguration__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained loadNetworkConfigurationsForceRefresh:1];
}

- (void)loadNetworkConfigurationsForceRefresh:(BOOL)a3
{
  if (self->_pathControllerConfiguration)
  {
    v5 = !a3;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v8[7] = v3;
    v8[8] = v4;
    v7 = [MEMORY[0x1E6977F90] sharedManagerForAllUsers];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__PSSystemPolicyForApp_loadNetworkConfigurationsForceRefresh___block_invoke;
    v8[3] = &unk_1E71DBD10;
    v8[4] = self;
    [v7 loadConfigurationsWithCompletionQueue:MEMORY[0x1E69E96A0] handler:v8];
  }
}

void __62__PSSystemPolicyForApp_loadNetworkConfigurationsForceRefresh___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _PSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__PSSystemPolicyForApp_loadNetworkConfigurationsForceRefresh___block_invoke_cold_1(v6, v7);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 name];
        if ([v14 isEqualToString:@"com.apple.preferences.networkprivacy"])
        {
          v15 = [v13 pathController];

          if (!v15)
          {
            continue;
          }

          v16 = *(a1 + 32);
          v17 = v13;
          v14 = *(v16 + 72);
          *(v16 + 72) = v17;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)saveNetworkConfiguration
{
  v2 = self->_pathControllerConfiguration;
  v3 = [MEMORY[0x1E6977F90] sharedManagerForAllUsers];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__PSSystemPolicyForApp_saveNetworkConfiguration__block_invoke;
  v5[3] = &unk_1E71DC1E8;
  v6 = v2;
  v4 = v2;
  [v3 saveConfiguration:v4 withCompletionQueue:MEMORY[0x1E69E96A0] handler:v5];
}

void __48__PSSystemPolicyForApp_saveNetworkConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _PSLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__PSSystemPolicyForApp_saveNetworkConfiguration__block_invoke_cold_1(v3, a1, v4);
    }
  }
}

- (id)pathRuleForBundleID:(id)a3 create:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(NEConfiguration *)self->_pathControllerConfiguration pathController];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 pathRules];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 matchSigningIdentifier];
        v15 = [v14 isEqualToString:v6];

        if (v15)
        {
          v16 = v13;
          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (v4)
  {
    v16 = [objc_alloc(MEMORY[0x1E6977FC0]) initWithSigningIdentifier:v6];
    v17 = [v7 pathRules];

    if (v17)
    {
      v8 = [v7 pathRules];
      v18 = [v8 arrayByAddingObject:v16];
      [v7 setPathRules:v18];
    }

    else
    {
      v24 = v16;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
      [v7 setPathRules:v8];
    }

LABEL_13:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)setLocalNetworkEnabled:(id)a3 specifier:(id)a4
{
  v10 = a3;
  v5 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v6 = [(PSSystemPolicyForApp *)self pathRuleForBundleID:v5 create:1];

  [v6 setDenyMulticast:{objc_msgSend(v10, "BOOLValue") ^ 1}];
  [v6 setMulticastPreferenceSet:1];
  [(PSSystemPolicyForApp *)self saveNetworkConfiguration];
  v7 = [(PSSystemPolicyForApp *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PSSystemPolicyForApp *)self delegate];
    [v9 systemPolicyForApp:self didUpdateForSystemPolicyOptions:0x4000000 withValue:v10];
  }
}

- (id)isLocalNetworkEnabled:(id)a3
{
  if (self->_pathControllerConfiguration)
  {
    v4 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v5 = [(PSSystemPolicyForApp *)self pathRuleForBundleID:v4 create:0];

    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{objc_msgSend(v5, "denyMulticast") ^ 1}];
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[PSSystemPolicyForApp getMulticastAllowed:](self, "getMulticastAllowed:", 0)}];
  }

  return v6;
}

- (id)networkServicesSpecifier
{
  if ((self->_policyOptions & 0x4000000) != 0 && _os_feature_enabled_impl() && (v8 = 0, [(PSSystemPolicyForApp *)self getMulticastAllowed:&v8], v8 == 1))
  {
    [(PSSystemPolicyForApp *)self setupNetworkConfiguration];
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"LOCAL_NETWORK_PRIVACY" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:sel_setLocalNetworkEnabled_specifier_ get:sel_isLocalNetworkEnabled_ detail:0 cell:6 edit:0];

    v6 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    [v5 setProperty:v6 forKey:@"PUINetworkApplicationKey"];

    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
    [v5 setObject:@"com.apple.graphic-icon.local-network" forKeyedSubscript:@"iconUTTypeIdentifier"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)locationServicesSpecifier
{
  if ((self->_policyOptions & 0x10000) != 0)
  {
    v4 = CLCopyAppsUsingLocation();
    v5 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v6 = [v4 objectForKey:v5];

    if (v6 && [MEMORY[0x1E695FBE8] primaryEntityClassForLocationDictionary:v6] == 1)
    {
      v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"LOCATION_SERVICES" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      v2 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:sel_locationStatus_ detail:NSClassFromString(&cfstr_Puilocationser.isa) cell:2 edit:0];

      v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[PSSystemPolicyForApp _isLocationServicesRestricted](self, "_isLocationServicesRestricted") ^ 1}];
      [v2 setProperty:v9 forKey:@"enabled"];

      v10 = [(PSSystemPolicyForApp *)self bundleIdentifier];
      [v2 setProperty:v10 forKey:@"id"];

      [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
      [v2 setObject:@"com.apple.graphic-icon.location" forKeyedSubscript:@"iconUTTypeIdentifier"];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)locationStatus:(id)a3
{
  v4 = CLCopyAppsUsingLocation();
  v5 = MEMORY[0x1E695FBE8];
  v6 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v7 = [v4 objectForKey:v6];
  v8 = [v5 entityAuthorizationForLocationDictionary:v7];

  v9 = [(PSSystemPolicyForApp *)self authLevelStringForStatus:v8];

  return v9;
}

- (id)authLevelStringForStatus:(unint64_t)a3
{
  if (a3)
  {
    v4 = @"NEVER_AUTHORIZATION";
  }

  else if (a3)
  {
    if ((a3 & 4) != 0)
    {
      v4 = @"ALWAYS_AUTHORIZATION";
    }

    else
    {
      if ((a3 & 2) == 0)
      {
        v3 = 0;
        goto LABEL_11;
      }

      v4 = @"WHEN_IN_USE_AUTHORIZATION_SHORT";
    }
  }

  else
  {
    v4 = @"NOT_DETERMINED_AUTHORIZATION_SHORT";
  }

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v5 localizedStringForKey:v4 value:&stru_1EFE45030 table:@"LocationServicesPrivacy"];

LABEL_11:

  return v3;
}

- (id)privacySpecifiersWithTCCServiceLookup:(id)a3 tccServiceOverrides:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [(PSSystemPolicyForApp *)self locationServicesSpecifier];
  [v8 ps_addPossibleObject:v9];

  if (_os_feature_enabled_impl())
  {
    [(PSSystemPolicyForApp *)self contactsServicesSpecifier];
  }

  else
  {
    [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5500] tccServiceLookup:v6 tccServiceOverrides:v7];
  }
  v10 = ;
  [v8 ps_addPossibleObject:v10];

  v11 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D55D8] tccServiceLookup:v6 tccServiceOverrides:v7];
  [v8 ps_addPossibleObject:v11];

  v12 = [(PSSystemPolicyForApp *)self photosServicesSpecifier];
  [v8 ps_addPossibleObject:v12];

  v13 = [(PSSystemPolicyForApp *)self accessoriesSpecifier];
  [v8 ps_addPossibleObject:v13];

  v14 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5508] tccServiceLookup:v6 tccServiceOverrides:v7];
  [v8 ps_addPossibleObject:v14];

  v15 = [(PSSystemPolicyForApp *)self networkServicesSpecifier];
  [v8 ps_addPossibleObject:v15];

  v16 = +[PSCapabilityManager sharedManager];
  v17 = [v16 capabilityBoolAnswer:@"9RryeqF6OCWlbaXP2Qsoag"];

  if (v17)
  {
    v18 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D55B0] tccServiceLookup:v6 tccServiceOverrides:v7];
    [v8 ps_addPossibleObject:v18];
  }

  v19 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5588] tccServiceLookup:v6 tccServiceOverrides:v7];
  [v8 ps_addPossibleObject:v19];

  v20 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D55F0] tccServiceLookup:v6 tccServiceOverrides:v7];
  [v8 ps_addPossibleObject:v20];

  v21 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D55A8] tccServiceLookup:v6 tccServiceOverrides:v7];
  [v8 ps_addPossibleObject:v21];

  v22 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5520] tccServiceLookup:v6 tccServiceOverrides:v7];
  [v8 ps_addPossibleObject:v22];

  v23 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5550] tccServiceLookup:v6 tccServiceOverrides:v7];
  [v8 ps_addPossibleObject:v23];

  v24 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5528] tccServiceLookup:v6 tccServiceOverrides:v7];
  [v8 ps_addPossibleObject:v24];

  v25 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D55E0] tccServiceLookup:v6 tccServiceOverrides:v7];
  [v8 ps_addPossibleObject:v25];

  v26 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5620] tccServiceLookup:v6 tccServiceOverrides:v7];
  [v8 ps_addPossibleObject:v26];

  v27 = [(PSSystemPolicyForApp *)self walletSpecifier];
  [v8 ps_addPossibleObject:v27];

  v28 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5580] tccServiceLookup:v6 tccServiceOverrides:v7];
  [v8 ps_addPossibleObject:v28];

  v29 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5578] tccServiceLookup:v6 tccServiceOverrides:v7];
  [v8 ps_addPossibleObject:v29];

  if (_os_feature_enabled_impl())
  {
    v30 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5560] tccServiceLookup:v6 tccServiceOverrides:v7];
    [v8 ps_addPossibleObject:v30];
  }

  v31 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5610] tccServiceLookup:v6 tccServiceOverrides:v7];
  [v8 ps_addPossibleObject:v31];

  return v8;
}

- (id)privacySpecifierForService:(__CFString *)a3 tccServiceLookup:(id)a4 tccServiceOverrides:(id)a5
{
  v8 = a4;
  v9 = a5;
  policyOptions = self->_policyOptions;
  v11 = [_PSServicePolicyOptions objectForKey:a3];
  v12 = [v11 unsignedIntegerValue] & policyOptions;

  if (!v12)
  {
    v20 = 0;
    goto LABEL_46;
  }

  v13 = [v9 containsObject:a3];
  objc_opt_class();
  v14 = [v8 objectForKeyedSubscript:a3];
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  objc_opt_class();
  v17 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69D54E8]];
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (!v19)
  {
    if (!self->_forcePolicyOptions)
    {
      v22 = 0;
      v17 = 0;
LABEL_44:
      v22 = v22;
      v20 = v22;
      goto LABEL_45;
    }

    goto LABEL_13;
  }

  if (v13)
  {
LABEL_13:

    v17 = MEMORY[0x1E695E110];
  }

  v21 = [_PSLocalizedServiceNames objectForKey:a3];
  v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:sel_setPrivacyAccess_forSpecifier_ get:sel_privacyAccessForSpecifier_ detail:0 cell:6 edit:0];

  if (CFEqual(a3, *MEMORY[0x1E69D5578]))
  {
    [v22 setProperty:objc_opt_class() forKey:@"cellClass"];
  }

  if ((!CFEqual(a3, *MEMORY[0x1E69D55E0]) || objc_opt_class() && [MEMORY[0x1E69C86E8] isSecureElementTCCServiceEligible]) && (!CFEqual(a3, *MEMORY[0x1E69D5528]) || objc_opt_class() && objc_msgSend(MEMORY[0x1E69C86E8], "isContactlessTCCServiceEligible")))
  {
    v43 = v13;
    [v22 setProperty:a3 forKey:@"service"];
    v23 = +[PKIconImageCache settingsIconCache];
    v24 = [_PSServiceIconNames objectForKey:a3];
    v25 = [v23 imageForKey:v24];

    if (v25 || (v41 = MEMORY[0x1E69DCAB8], [_PSServiceIconNames objectForKey:a3], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "imageNamed:inBundle:compatibleWithTraitCollection:", v26, v27, 0), v25 = objc_claimAutoreleasedReturnValue(), v27, v26, v25))
    {
      [v22 setProperty:v25 forKey:@"iconImage"];
      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = [_PSServiceIconTypeIDs objectForKeyedSubscript:a3];
    v30 = v29;
    if (v28 && v29)
    {
      [v22 setObject:v29 forKeyedSubscript:@"iconUTTypeIdentifier"];
      [v22 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
    }

    v42 = v30;
    v31 = [_PSServiceIconApplicationBundleIdentifiers objectForKeyedSubscript:a3];
    if (v31)
    {
      v32 = v28;
    }

    else
    {
      v32 = 0;
    }

    if (v32 == 1)
    {
      [v22 setObject:v31 forKeyedSubscript:@"appIDForLazyIcon"];
      [v22 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
    }

    v33 = [PSSystemPolicyForApp isServiceRestricted:a3];
    if (CFEqual(a3, *MEMORY[0x1E69D5600]))
    {
      v45 = 0;
      v46 = &v45;
      v47 = 0x2050000000;
      v34 = getADTrackingTransparencyClass_softClass;
      v48 = getADTrackingTransparencyClass_softClass;
      if (!getADTrackingTransparencyClass_softClass)
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __getADTrackingTransparencyClass_block_invoke;
        v44[3] = &unk_1E71DBC78;
        v44[4] = &v45;
        __getADTrackingTransparencyClass_block_invoke(v44);
        v34 = v46[3];
      }

      v35 = v34;
      _Block_object_dispose(&v45, 8);
      v36 = objc_opt_new();
      if (([v36 crossAppTrackingAllowedSwitchEnabled] & 1) == 0)
      {

        v33 = 1;
        v17 = MEMORY[0x1E695E110];
      }
    }

    if (CFEqual(a3, *MEMORY[0x1E69D5618]))
    {
      v37 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "BOOLValue") ^ 1}];

      v17 = v37;
    }

    v38 = [MEMORY[0x1E696AD98] numberWithBool:((v33 | v43) & 1) == 0];
    [v22 setProperty:v38 forKey:@"enabled"];
    v39 = [v22 propertyForKey:@"cellObject"];
    [v39 setCellEnabled:{objc_msgSend(v38, "BOOLValue")}];

    [v22 setProperty:v17 forKey:@"value"];
    goto LABEL_44;
  }

  v20 = 0;
LABEL_45:

LABEL_46:

  return v20;
}

- (void)setPrivacyAccess:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(location, self);
  v8 = objc_alloc(MEMORY[0x1E69635F8]);
  v9 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v10 = [v8 initWithBundleIdentifier:v9 allowPlaceholder:1 error:0];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PSSystemPolicyForApp_setPrivacyAccess_forSpecifier___block_invoke;
  aBlock[3] = &unk_1E71DC238;
  objc_copyWeak(&v77, location);
  v11 = v10;
  v75 = v11;
  v12 = v6;
  v76 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [v7 propertyForKey:@"value"];
  v15 = [v12 isEqual:v14];

  if ((v15 & 1) == 0)
  {
    v16 = [v7 propertyForKey:@"service"];
    if (CFStringCompare(v16, *MEMORY[0x1E69D5618], 0) == kCFCompareEqualTo)
    {
      v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "BOOLValue") ^ 1}];

      v12 = v17;
    }

    if ([v12 BOOLValue] && CFStringCompare(v16, *MEMORY[0x1E69D5600], 0) == kCFCompareEqualTo)
    {
      v57 = MEMORY[0x1E69DC650];
      v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"CROSS_APP_TRACKING" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"CROSS_APP_TRACKING_PROMPT" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      v58 = [v57 alertControllerWithTitle:v19 message:v21 preferredStyle:1];

      v22 = MEMORY[0x1E69DC648];
      v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"ALLOW" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __54__PSSystemPolicyForApp_setPrivacyAccess_forSpecifier___block_invoke_473;
      v68[3] = &unk_1E71DC260;
      v72 = v13;
      v69 = v12;
      v73 = v16;
      v70 = v7;
      v71 = self;
      v25 = [v22 actionWithTitle:v24 style:0 handler:v68];

      [v58 addAction:v25];
      v55 = v25;
      v26 = MEMORY[0x1E69DC648];
      v27 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:@"CANCEL" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __54__PSSystemPolicyForApp_setPrivacyAccess_forSpecifier___block_invoke_2_478;
      v67[3] = &unk_1E71DC288;
      v67[4] = self;
      v29 = [v26 actionWithTitle:v28 style:0 handler:v67];

      [v58 addAction:v29];
      v30 = MEMORY[0x1E69DC648];
      v31 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v32 = [v31 localizedStringForKey:@"LEARN_MORE" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __54__PSSystemPolicyForApp_setPrivacyAccess_forSpecifier___block_invoke_3;
      v66[3] = &unk_1E71DC288;
      v66[4] = self;
      v33 = [v30 actionWithTitle:v32 style:0 handler:v66];

      [v58 addAction:v33];
      v34 = [(PSSystemPolicyForApp *)self delegate];
      [v34 showController:v58 animate:1];

      v35 = v72;
    }

    else
    {
      if (([v12 BOOLValue] & 1) != 0 || CFStringCompare(v16, *MEMORY[0x1E69D55E0], 0))
      {
        (*(v13 + 2))(v13, v12, v16, v7);
        goto LABEL_12;
      }

      v36 = MEMORY[0x1E696AEC0];
      v37 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v38 = [v37 localizedStringForKey:@"SECURE_ELEMENT_PROMPT_TITLE" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      v39 = [v11 localizedName];
      v58 = [v36 stringWithFormat:v38, v39];

      v40 = MEMORY[0x1E696AEC0];
      v41 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v42 = [v41 localizedStringForKey:@"SECURE_ELEMENT_PROMPT_DETAIL" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      v43 = [v11 localizedName];
      v44 = [v40 stringWithFormat:v42, v43];

      v56 = v44;
      v45 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v58 message:v44 preferredStyle:1];
      v46 = MEMORY[0x1E69DC648];
      v47 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v48 = [v47 localizedStringForKey:@"TCC_ALERT_TURN_OFF" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __54__PSSystemPolicyForApp_setPrivacyAccess_forSpecifier___block_invoke_4;
      v60[3] = &unk_1E71DC260;
      v64 = v13;
      v61 = v12;
      v65 = v16;
      v62 = v7;
      v63 = self;
      v49 = [v46 actionWithTitle:v48 style:2 handler:v60];
      [v45 addAction:v49];

      v50 = MEMORY[0x1E69DC648];
      v51 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v52 = [v51 localizedStringForKey:@"TCC_ALERT_CANCEL" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __54__PSSystemPolicyForApp_setPrivacyAccess_forSpecifier___block_invoke_5;
      v59[3] = &unk_1E71DC288;
      v59[4] = self;
      v53 = [v50 actionWithTitle:v52 style:1 handler:v59];
      [v45 addAction:v53];

      v54 = [(PSSystemPolicyForApp *)self delegate];
      [v54 showController:v45 animate:1];

      v35 = v56;
    }
  }

LABEL_12:

  objc_destroyWeak(&v77);
  objc_destroyWeak(location);
}

void __54__PSSystemPolicyForApp_setPrivacyAccess_forSpecifier___block_invoke(uint64_t a1, void *a2, const __CFString *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = [v10 URL];
    v12 = CFBundleCreate(0, v11);

    if (v12)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __54__PSSystemPolicyForApp_setPrivacyAccess_forSpecifier___block_invoke_2;
      v24 = &unk_1E71DC210;
      v27 = v12;
      v28 = a3;
      v25 = WeakRetained;
      v26 = *(a1 + 40);
      v13 = _Block_copy(&v21);
      [v7 BOOLValue];
      if (TCCAccessSetForBundle())
      {
        if (CFStringCompare(a3, *MEMORY[0x1E69D5618], 0) == kCFCompareEqualTo)
        {
          v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "BOOLValue") ^ 1}];

          v7 = v14;
        }

        [v8 setProperty:v7 forKey:@"value"];
      }

      if (v13)
      {
        v13[2](v13);
      }
    }
  }

  v15 = TCCAccessCopyBundleIdentifiersForService();
  if (![v15 count])
  {
    v16 = _PSLoggingFacility();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "[PSSystemPolicyForApp setPrivacyAccess:forSpecifier:]_block_invoke";
      _os_log_impl(&dword_18B008000, v16, OS_LOG_TYPE_DEFAULT, "%s: all apps were disabled for kTCCServiceUserTracking. Resetting ad identifier.", buf, 0xCu);
    }

    v17 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v17 clearAdvertisingIdentifier];
  }

  if ([*(a1 + 40) BOOLValue])
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  [MEMORY[0x1E69CA9B0] trackingStateOfRequestForSpecificApp:v18 view:@"AppSettings"];
  v19 = _PSLoggingFacility();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [WeakRetained bundleIdentifier];
    *buf = 138412290;
    v30 = v20;
    _os_log_impl(&dword_18B008000, v19, OS_LOG_TYPE_DEFAULT, "########### Quitting application (%@) in response to privacy settings change.", buf, 0xCu);
  }
}

void __54__PSSystemPolicyForApp_setPrivacyAccess_forSpecifier___block_invoke_2(uint64_t a1)
{
  CFRelease(*(a1 + 48));
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = [_PSServicePolicyOptions objectForKeyedSubscript:*(a1 + 56)];
    v4 = [*(a1 + 32) delegate];
    [v4 systemPolicyForApp:*(a1 + 32) didUpdateForSystemPolicyOptions:objc_msgSend(v5 withValue:{"unsignedLongLongValue"), *(a1 + 40)}];
  }
}

void __54__PSSystemPolicyForApp_setPrivacyAccess_forSpecifier___block_invoke_473(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v2 = [*(a1 + 48) delegate];
  [v2 reloadSpecifiers];
}

void __54__PSSystemPolicyForApp_setPrivacyAccess_forSpecifier___block_invoke_2_478(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 reloadSpecifiers];
}

void __54__PSSystemPolicyForApp_setPrivacyAccess_forSpecifier___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 reloadSpecifiers];

  v4 = objc_opt_new();
  v3 = [*(a1 + 32) delegate];
  [v3 showController:v4 animate:1];
}

void __54__PSSystemPolicyForApp_setPrivacyAccess_forSpecifier___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v2 = [*(a1 + 48) delegate];
  [v2 reloadSpecifiers];
}

void __54__PSSystemPolicyForApp_setPrivacyAccess_forSpecifier___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 reloadSpecifiers];
}

- (id)privacyAccessForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:@"value"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E110];
  }

  v6 = v5;

  return v5;
}

- (id)pasteboardSpecifier
{
  v13[3] = *MEMORY[0x1E69E9840];
  if ((self->_policyOptions & 0x20000000000) != 0 && [(PSSystemPolicyForApp *)self shouldShowPasteboardSpecifier])
  {
    v3 = [_PSLocalizedServiceNames objectForKey:*MEMORY[0x1E69D55C0]];
    v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:sel_setPasteboardAccess_forSpecifier_ get:sel_pasteboardAccessForSpecifier_ detail:objc_opt_class() cell:2 edit:0];

    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"PASTE_BETWEEN_APPS_ASK" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v13[0] = v6;
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"PASTE_BETWEEN_APPS_DENY" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v13[1] = v8;
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"PASTE_BETWEEN_APPS_ALLOW" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v13[2] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    [v4 setValues:&unk_1EFE65EB0 titles:v11];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldShowPasteboardSpecifier
{
  v3 = *MEMORY[0x1E69D55C0];
  v13 = 0;
  v14 = 0;
  v12 = 0;
  PSGetAuthorizationStatesForService(v3, &v14, &v13, &v12);
  v4 = v14;
  v5 = v13;
  v6 = v12;
  v7 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  if ([v4 containsObject:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    if ([v5 containsObject:v9])
    {
      v8 = 1;
    }

    else
    {
      v10 = [(PSSystemPolicyForApp *)self bundleIdentifier];
      v8 = [v6 containsObject:v10];
    }
  }

  return v8;
}

- (id)pasteboardAccessForSpecifier:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69D55C0];
  v19 = 0;
  v20 = 0;
  v18 = 0;
  PSGetAuthorizationStatesForService(v4, &v20, &v19, &v18);
  v5 = v20;
  v6 = v19;
  v7 = v18;
  v8 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v9 = [v5 containsObject:v8];

  if (v9)
  {
    v10 = &unk_1EFE65D90;
  }

  else
  {
    v11 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v12 = [v6 containsObject:v11];

    if (v12)
    {
      v10 = &unk_1EFE65D60;
    }

    else
    {
      v13 = [(PSSystemPolicyForApp *)self bundleIdentifier];
      v14 = [v7 containsObject:v13];

      if (v14)
      {
        v10 = &unk_1EFE65D78;
      }

      else
      {
        v15 = _PSLoggingFacility();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(PSSystemPolicyForApp *)self bundleIdentifier];
          *buf = 136315394;
          v22 = "[PSSystemPolicyForApp pasteboardAccessForSpecifier:]";
          v23 = 2112;
          v24 = v16;
          _os_log_impl(&dword_18B008000, v15, OS_LOG_TYPE_DEFAULT, "%s: couldn't find auth state for %@", buf, 0x16u);
        }

        v10 = &unk_1EFE65DA8;
      }
    }
  }

  return v10;
}

- (void)setPasteboardAccess:(id)a3 forSpecifier:(id)a4
{
  v5 = *MEMORY[0x1E69D55C0];
  v6 = a3;
  v8 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v7 = [v6 integerValue];

  PSSetTCCLevelForService(v5, v8, v7);
}

+ (BOOL)isServiceRestricted:(id)a3
{
  v3 = a3;
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v4 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  v5 = v4;
  if (v4)
  {
    v6 = [v4 containsObject:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)trackingSpecifiersWithTCCServiceLookup:(id)a3 tccServiceOverrides:(id)a4
{
  v6 = MEMORY[0x1E695DF70];
  v7 = a4;
  v8 = a3;
  v9 = [v6 array];
  v10 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5618] tccServiceLookup:v8 tccServiceOverrides:v7];
  [v9 ps_addPossibleObject:v10];

  v11 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5600] tccServiceLookup:v8 tccServiceOverrides:v7];

  [v9 ps_addPossibleObject:v11];
  if ([v9 count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v13 = [PSSpecifier groupSpecifierWithID:@"TRACKING_GROUP"];
    [v12 addObject:v13];
    [v12 addObjectsFromArray:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)headerLinkWasTapped
{
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.apple.com/privacy"];
  [v3 openURL:v2 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (id)documentsSpecifier
{
  if ((self->_policyOptions & 0x400000) != 0)
  {
    v4 = objc_alloc(MEMORY[0x1E69635F8]);
    v5 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v6 = [v4 initWithBundleIdentifier:v5 allowPlaceholder:1 error:0];

    v7 = [v6 URL];
    v8 = v7;
    if (v7 && [v7 isFileURL])
    {
      v9 = [MEMORY[0x1E696AAE8] bundleWithURL:v8];
      v10 = [v9 infoDictionary];

      v11 = [v10 objectForKeyedSubscript:@"UISupportsDocumentBrowser"];
      v12 = [v11 BOOLValue];

      if (v12)
      {
        v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v14 = [v13 localizedStringForKey:@"DOCUMENT_STORAGE" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
        v2 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:sel_documentSource_ detail:objc_opt_class() cell:2 edit:0];

        [v2 setIdentifier:@"DOCUMENT_STORAGE"];
        [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
        [v2 setObject:@"com.apple.DocumentsApp" forKeyedSubscript:@"appIDForLazyIcon"];
        v15 = [(PSSystemPolicyForApp *)self bundleIdentifier];
        [v2 setProperty:v15 forKey:PSDocumentBundleIdentifierKey];
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)documentSource:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v5 = dispatch_semaphore_create(0);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v6 = getDOCDocumentSourceClass_softClass;
  v25 = getDOCDocumentSourceClass_softClass;
  if (!getDOCDocumentSourceClass_softClass)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __getDOCDocumentSourceClass_block_invoke;
    v21[3] = &unk_1E71DBC78;
    v21[4] = &v22;
    __getDOCDocumentSourceClass_block_invoke(v21);
    v6 = v23[3];
  }

  v7 = v6;
  _Block_object_dispose(&v22, 8);
  v8 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__PSSystemPolicyForApp_documentSource___block_invoke;
  v12[3] = &unk_1E71DBFD8;
  v14 = &v15;
  v9 = v5;
  v13 = v9;
  [v6 defaultSourceForBundleIdentifier:v8 completionBlock:v12];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

intptr_t __39__PSSystemPolicyForApp_documentSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 displayName];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

- (id)contactlessNFCSpecifiers
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ((self->_policyOptions & 0x8000000000000) != 0)
  {
    v4 = [PSNFCDefaultAppSpecifier alloc];
    v5 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v6 = [(PSSystemPolicyForApp *)self delegate];
    v7 = [(PSNFCDefaultAppSpecifier *)v4 initWithBundleID:v5 delegate:v6 onChange:&__block_literal_global_543];

    v8 = [(PSNFCDefaultAppSpecifier *)v7 context];
    LODWORD(v5) = [v8 shouldShowDefaultNFCAppPicker];

    if (v5)
    {
      v9 = [PSSpecifier groupSpecifierWithID:@"NFC_DEFAULT_APP_GROUP"];
      v11[0] = v9;
      v11[1] = v7;
      v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)contactlessNFCSideButtonSpecifiers
{
  v24[2] = *MEMORY[0x1E69E9840];
  if ((self->_policyOptions & 0x10000000000000) == 0)
  {
    goto LABEL_5;
  }

  v3 = [(PSSystemPolicyForApp *)self nfcContext];

  if (!v3)
  {
    v4 = MEMORY[0x1E69C86D8];
    v5 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __58__PSSystemPolicyForApp_contactlessNFCSideButtonSpecifiers__block_invoke;
    v23[3] = &unk_1E71DBE20;
    v23[4] = self;
    v6 = [v4 contextWithBundleId:v5 onChange:v23];
    [(PSSystemPolicyForApp *)self setNfcContext:v6];
  }

  v7 = [(PSSystemPolicyForApp *)self nfcContext];
  v8 = [v7 doubleClickToggleVisibilityType];

  if (v8 != 2)
  {
    v10 = MGGetSInt32Answer();
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = v11;
    if (v10 == 2)
    {
      v13 = @"DOUBLE_CLICK_SIDE_BUTTON";
    }

    else
    {
      v13 = @"DOUBLE_CLICK_HOME_BUTTON";
    }

    if (v10 == 2)
    {
      v14 = @"DOUBLE_CLICK_SIDE_BUTTON_FOOTER";
    }

    else
    {
      v14 = @"DOUBLE_CLICK_HOME_BUTTON_FOOTER";
    }

    v15 = [v11 localizedStringForKey:v13 value:&stru_1EFE45030 table:@"ContactlessAndCredentialSettings_Localizable"];

    v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:v14 value:&stru_1EFE45030 table:@"ContactlessAndCredentialSettings_Localizable"];

    v18 = [PSSpecifier groupSpecifierWithID:@"DOUBLE_CLICK_FOR_NFC_GROUP"];
    [v18 setObject:v17 forKeyedSubscript:@"footerText"];
    v19 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:sel_setDoubleClickForNFC_specifier_ get:sel_getDoubleClickForNFC_ detail:0 cell:6 edit:0];
    [v19 setIdentifier:@"DOUBLE_CLICK_FOR_NFC"];
    v20 = [(PSSystemPolicyForApp *)self nfcContext];
    v21 = [v20 doubleClickToggleVisibilityType];

    if (v21 == 1)
    {
      [v19 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"enabled"];
    }

    v24[0] = v18;
    v24[1] = v19;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

  return v9;
}

void __58__PSSystemPolicyForApp_contactlessNFCSideButtonSpecifiers__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 reloadSpecifiers];
}

- (id)getDoubleClickForNFC:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(PSSystemPolicyForApp *)self nfcContext];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "isDoubleClickEnabled")}];

  return v5;
}

- (void)setDoubleClickForNFC:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v7 = [(PSSystemPolicyForApp *)self nfcContext];
  v6 = [v5 BOOLValue];

  [v7 setDoubleClickEnabled:v6];
}

- (id)exposureSpecifiersWithTCCServiceLookup:(id)a3
{
  v4 = a3;
  if ((self->_policyOptions & 0x100000000) == 0)
  {
    v5 = 0;
    goto LABEL_14;
  }

  if (![(PSSystemPolicyForApp *)self enServiceMatched])
  {
    [(PSSystemPolicyForApp *)self setEnServiceMatched:1];
    v6 = [(PSSystemPolicyForApp *)self matchingBundleIdentifier];
    if (v6)
    {
LABEL_7:

      goto LABEL_8;
    }

    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69D5540]];

    if (v7)
    {
      v6 = [(PSSystemPolicyForApp *)self bundleIdentifier];
      [(PSSystemPolicyForApp *)self setMatchingBundleIdentifier:v6];
      goto LABEL_7;
    }
  }

LABEL_8:
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [(PSSystemPolicyForApp *)self matchingBundleIdentifier];

  if (v9)
  {
    v10 = PSBundlePathForPreferenceBundle(@"ExposureNotificationSettingsUI");
    v11 = [MEMORY[0x1E696AAE8] bundleWithPath:v10];
    v12 = NSClassFromString(&cfstr_Enuiregiondeta.isa);
    if (v12 || ([v11 load], (v12 = NSClassFromString(&cfstr_Enuiregiondeta.isa)) != 0))
    {
      v13 = v12;
      v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"EXPOSURE_NOTIFICATION" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:0 set:0 get:0 detail:v13 cell:1 edit:0];

      v17 = [(PSSystemPolicyForApp *)self bundleIdentifier];
      [v16 setUserInfo:v17];

      [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
      [v16 setObject:@"com.apple.graphic-icon.exposure-notifications" forKeyedSubscript:@"iconUTTypeIdentifier"];
      [v8 addObject:v16];
    }
  }

  v5 = [v8 copy];

LABEL_14:

  return v5;
}

- (id)preferredLanguageSpecifier
{
  if ((self->_policyOptions & 0x2000000) != 0)
  {
    v4 = objc_alloc(MEMORY[0x1E69635F8]);
    v5 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v6 = [v4 initWithBundleIdentifier:v5 allowPlaceholder:1 error:0];

    v7 = [v6 URL];
    v8 = v7;
    if (v7 && [v7 isFileURL])
    {
      v9 = [MEMORY[0x1E696AAE8] bundleWithURL:v8];
      v10 = [v9 normalizedLocalizations];
      v11 = [v10 count];
      v12 = [MEMORY[0x1E695DF58] preferredLanguages];
      v13 = [v12 count];

      v14 = MEMORY[0x1E696AAE8];
      v15 = [MEMORY[0x1E695DF58] preferredLanguages];
      v35 = v10;
      v16 = [v14 preferredLocalizationsFromArray:v10 forPreferences:v15];
      v17 = [v16 firstObject];

      v18 = MEMORY[0x1E69AAE08];
      v19 = [(PSSystemPolicyForApp *)self bundleIdentifier];
      v20 = [v18 preferredLanguageForBundleID:v19];

      v21 = [v20 isEqualToString:v17];
      if (v13 > 1)
      {
        v24 = 0;
      }

      else
      {
        v22 = [v9 objectForInfoDictionaryKey:@"UIPrefersShowingLanguageSettings"];
        v23 = [v22 BOOLValue];

        v24 = v23 ^ 1;
      }

      if (v21 & ((v11 < 2) | v24))
      {
        v2 = 0;
      }

      else
      {
        v25 = MEMORY[0x1E696AAE8];
        v26 = PSBundlePathForPreferenceBundle(@"InternationalSettings");
        v28 = v27 = v26;
        [v25 bundleWithPath:v28];
        v29 = v34 = v17;

        v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v31 = [v30 localizedStringForKey:@"LANGUAGE" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
        v2 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v31, self, 0, sel_preferredLanguage_, [v29 classNamed:@"ISApplicationLanguageController"], 2, 0);

        [v2 setIdentifier:@"PREFERRED_LANGUAGE"];
        [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
        [v2 setObject:@"com.apple.graphic-icon.language" forKeyedSubscript:@"iconUTTypeIdentifier"];
        v32 = [(PSSystemPolicyForApp *)self bundleIdentifier];
        [v2 setProperty:v32 forKey:@"bundleID"];

        v17 = v34;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)preferredLanguage:(id)a3
{
  v3 = MEMORY[0x1E69AAE08];
  v4 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v5 = [v3 preferredLanguageForBundleID:v4];

  v6 = MEMORY[0x1E695DF58];
  v7 = [MEMORY[0x1E695DF58] _deviceLanguage];
  v8 = [v6 localeWithLocaleIdentifier:v7];
  v9 = [v8 localizedStringForLanguage:v5 context:3];

  return v9;
}

- (id)defaultAppSpecifierWithAppRecordsMatchingBlock:(id)a3 getter:(SEL)a4 setter:(SEL)a5 title:(id)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  if (v10)
  {
    v34 = objc_opt_new();
    v33 = objc_opt_new();
    v12 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
    v13 = MEMORY[0x1E696AE18];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __91__PSSystemPolicyForApp_defaultAppSpecifierWithAppRecordsMatchingBlock_getter_setter_title___block_invoke;
    v39[3] = &unk_1E71DC2B0;
    v40 = v10;
    v14 = [v13 predicateWithBlock:v39];
    [v12 setPredicate:v14];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v29 = a5;
      v30 = a4;
      v31 = v11;
      v32 = v10;
      v18 = 0;
      v19 = *v36;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          v22 = [v21 bundleIdentifier];
          v23 = [(PSSystemPolicyForApp *)self bundleIdentifier];
          v24 = [v22 isEqualToString:v23];

          v18 |= v24;
          v25 = [v21 bundleIdentifier];
          [v33 addObject:v25];

          v26 = [v21 localizedName];
          [v34 addObject:v26];
        }

        v17 = [v15 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v17);

      if (v18)
      {
        v11 = v31;
        v27 = [PSSpecifier preferenceSpecifierNamed:v31 target:self set:v29 get:v30 detail:objc_opt_class() cell:2 edit:0];
        [v27 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PSListItemsValuesAreAppIDsKey"];
        [v27 setValues:v33 titles:v34];
      }

      else
      {
        v27 = 0;
        v11 = v31;
      }

      v10 = v32;
    }

    else
    {

      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)defaultBrowserSpecifier
{
  if ((self->_policyOptions & 0x20000000) != 0)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"DEFAULT_BROWSER_APP" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v2 = [(PSSystemPolicyForApp *)self defaultAppSpecifierWithAppRecordsMatchingBlock:&__block_literal_global_611 getter:sel_defaultBrowser_ setter:sel_setDefaultBrowser_specifier_ title:v5];

    [v2 setIdentifier:@"DEFAULT_BROWSER_APP"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)defaultBrowser:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E6963630]);
  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"https://"];
  v13 = 0;
  v5 = [v3 initWithURL:v4 error:&v13];
  v6 = v13;

  v7 = _PSLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 bundleRecord];
    v9 = [v8 bundleIdentifier];
    *buf = 138543362;
    v15 = v9;
    _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "Default browser app is %{public}@", buf, 0xCu);
  }

  v10 = [v5 bundleRecord];
  v11 = [v10 bundleIdentifier];

  return v11;
}

- (void)setDefaultBrowser:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v8 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v6 allowPlaceholder:0 error:&v16];
  v9 = v16;
  objc_initWeak(&location, self);
  v10 = [MEMORY[0x1E6963608] defaultWorkspace];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__PSSystemPolicyForApp_setDefaultBrowser_specifier___block_invoke;
  v12[3] = &unk_1E71DC2F8;
  objc_copyWeak(&v14, &location);
  v11 = v6;
  v13 = v11;
  [v10 setDefaultWebBrowserToApplicationRecord:v8 completionHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __52__PSSystemPolicyForApp_setDefaultBrowser_specifier___block_invoke(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = _PSLoggingFacility();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if ((a2 & 1) == 0)
  {
    if (v8)
    {
      v12 = *(a1 + 32);
      v13 = 138543618;
      v14 = v12;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "Error setting default browser app to %{public}@: %{public}@", &v13, 0x16u);
    }

    goto LABEL_8;
  }

  if (v8)
  {
    v9 = *(a1 + 32);
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "Set default browser app to %{public}@", &v13, 0xCu);
  }

  v10 = [WeakRetained delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v7 = [WeakRetained delegate];
    [v7 systemPolicyForApp:WeakRetained didUpdateForSystemPolicyOptions:0x20000000 withValue:*(a1 + 32)];
LABEL_8:
  }
}

- (id)defaultMailAppSpecifier
{
  if ((self->_policyOptions & 0x40000000) != 0)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"DEFAULT_MAIL_APP" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v2 = [(PSSystemPolicyForApp *)self defaultAppSpecifierWithAppRecordsMatchingBlock:&__block_literal_global_627 getter:sel_defaultMailApp_ setter:sel_setDefaultMailApp_specifier_ title:v5];

    [v2 setIdentifier:@"DEFAULT_MAIL_APP"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)defaultMailApp:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E6963630]);
  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"mailto://"];
  v13 = 0;
  v5 = [v3 initWithURL:v4 error:&v13];
  v6 = v13;

  v7 = _PSLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 bundleRecord];
    v9 = [v8 bundleIdentifier];
    *buf = 138543362;
    v15 = v9;
    _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "Default mail app is %{public}@", buf, 0xCu);
  }

  v10 = [v5 bundleRecord];
  v11 = [v10 bundleIdentifier];

  return v11;
}

- (void)setDefaultMailApp:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v8 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v6 allowPlaceholder:0 error:&v16];
  v9 = v16;
  objc_initWeak(&location, self);
  v10 = [MEMORY[0x1E6963608] defaultWorkspace];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__PSSystemPolicyForApp_setDefaultMailApp_specifier___block_invoke;
  v12[3] = &unk_1E71DC2F8;
  objc_copyWeak(&v14, &location);
  v11 = v6;
  v13 = v11;
  [v10 setDefaultMailClientToApplicationRecord:v8 completionHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __52__PSSystemPolicyForApp_setDefaultMailApp_specifier___block_invoke(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = _PSLoggingFacility();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if ((a2 & 1) == 0)
  {
    if (v8)
    {
      v12 = *(a1 + 32);
      v13 = 138543618;
      v14 = v12;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "Error setting default mail app to %{public}@: %{public}@", &v13, 0x16u);
    }

    goto LABEL_8;
  }

  if (v8)
  {
    v9 = *(a1 + 32);
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "Set default mail app to %{public}@", &v13, 0xCu);
  }

  v10 = [WeakRetained delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v7 = [WeakRetained delegate];
    [v7 systemPolicyForApp:WeakRetained didUpdateForSystemPolicyOptions:0x40000000 withValue:*(a1 + 32)];
LABEL_8:
  }
}

- (id)tapToPayScreenLockSpecifiers
{
  v34[2] = *MEMORY[0x1E69E9840];
  if ((self->_policyOptions & 0x8000000000) != 0 && (v3 = getPRSettingsProviderClass(), -[PSSystemPolicyForApp bundleIdentifier](self, "bundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), LODWORD(v3) = [v3 isProximityReaderSupported:v4], v4, v3))
  {
    v5 = [PSSpecifier groupSpecifierWithID:@"TAP_TO_PAY_SCREEN_LOCK_GROUP"];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"TAP_TO_PAY_ON_IPHONE" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v8 = [PSSpecifier groupSpecifierWithName:v7];

    PRSettingsProviderClass = getPRSettingsProviderClass();
    v10 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v11 = [PRSettingsProviderClass shouldDisablePINPrivacyLockForBundleID:v10];

    if (v11)
    {
      v12 = [MEMORY[0x1E69ADFB8] sharedConnection];
      v13 = [v12 managingOrganizationInformation];

      v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69ADFD0]];
      if ([v14 length] && (objc_msgSend(v14, "isEqualToString:", @"unknown") & 1) == 0)
      {
        v24 = PSIsPearlAvailable();
        v25 = MEMORY[0x1E696AEC0];
        v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v17 = v26;
        if (v24)
        {
          v27 = @"TAP_TO_PAY_SCREEN_LOCK_FACEID_DISABLED_KNOWN_ORGANIZATION_FOOTER";
        }

        else
        {
          v27 = @"TAP_TO_PAY_SCREEN_LOCK_TOUCHID_DISABLED_KNOWN_ORGANIZATION_FOOTER";
        }

        v23 = [v26 localizedStringForKey:v27 value:&stru_1EFE45030 table:@"PSSystemPolicy"];
        v28 = [v25 localizedStringWithFormat:v23, v14];
        [v8 setObject:v28 forKeyedSubscript:@"footerText"];
      }

      else
      {
        v15 = PSIsPearlAvailable();
        v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v17 = v16;
        if (v15)
        {
          v18 = @"TAP_TO_PAY_SCREEN_LOCK_FACEID_DISABLED_UNKNOWN_ORGANIZATION_FOOTER";
        }

        else
        {
          v18 = @"TAP_TO_PAY_SCREEN_LOCK_TOUCHID_DISABLED_UNKNOWN_ORGANIZATION_FOOTER";
        }

        v23 = [v16 localizedStringForKey:v18 value:&stru_1EFE45030 table:@"PSSystemPolicy"];
        [v8 setObject:v23 forKeyedSubscript:@"footerText"];
      }
    }

    else
    {
      v20 = PSIsPearlAvailable();
      v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v13 = v21;
      if (v20)
      {
        v22 = @"TAP_TO_PAY_SCREEN_LOCK_FACEID_FOOTER";
      }

      else
      {
        v22 = @"TAP_TO_PAY_SCREEN_LOCK_TOUCHID_FOOTER";
      }

      v14 = [v21 localizedStringForKey:v22 value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      [v8 setObject:v14 forKeyedSubscript:@"footerText"];
    }

    v29 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"TAP_TO_PAY_SCREEN_LOCK" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:self set:sel_setTapToPayScreenLockEnabled_specifier_ get:sel_isTapToPayScreenLockEnabled_ detail:0 cell:6 edit:0];

    [v31 setIdentifier:@"TAP_TO_PAY_SCREEN_LOCK"];
    v32 = [MEMORY[0x1E696AD98] numberWithInt:v11 ^ 1u];
    [v31 setObject:v32 forKeyedSubscript:@"enabled"];

    v34[0] = v8;
    v34[1] = v31;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  return v19;
}

- (id)isTapToPayScreenLockEnabled:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  PRSettingsProviderClass = getPRSettingsProviderClass();
  v6 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v7 = [v4 numberWithBool:{objc_msgSend(PRSettingsProviderClass, "getPINPrivacyLockForBundleID:", v6)}];

  return v7;
}

- (void)setTapToPayScreenLockEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  PRSettingsProviderClass = getPRSettingsProviderClass();
  v7 = [v5 BOOLValue];

  v8 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  [PRSettingsProviderClass setPINPrivacyLock:v7 forBundleID:v8];
}

- (id)tapToPayAlwaysPlaySoundSpecifiers
{
  v13[2] = *MEMORY[0x1E69E9840];
  if ((self->_policyOptions & 0x40000000000) != 0 && (PRSettingsProviderClass = getPRSettingsProviderClass(), -[PSSystemPolicyForApp bundleIdentifier](self, "bundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), LODWORD(PRSettingsProviderClass) = [PRSettingsProviderClass isProximityReaderSupported:v4], v4, PRSettingsProviderClass))
  {
    v5 = [PSSpecifier groupSpecifierWithID:@"TAP_TO_PAY_ALWAYS_PLAY_SOUND_GROUP"];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"TAP_TO_PAY_ALWAYS_PLAY_SOUND_FOOTER" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    [v5 setObject:v7 forKeyedSubscript:@"footerText"];

    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"TAP_TO_PAY_ALWAYS_PLAY_SOUND" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:sel_setTapToPayAlwaysPlaySoundEnabled_specifier_ get:sel_isTapToPayAlwaysPlaySoundEnabled_ detail:0 cell:6 edit:0];

    [v10 setIdentifier:@"TAP_TO_PAY_ALWAYS_PLAY_SOUND"];
    v13[0] = v5;
    v13[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

- (id)isTapToPayAlwaysPlaySoundEnabled:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  PRSettingsProviderClass = getPRSettingsProviderClass();
  v6 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v7 = [v4 numberWithBool:{objc_msgSend(PRSettingsProviderClass, "getAlwaysPlaySoundForBundleID:", v6)}];

  return v7;
}

- (void)setTapToPayAlwaysPlaySoundEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  PRSettingsProviderClass = getPRSettingsProviderClass();
  v7 = [v5 BOOLValue];

  v8 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  [PRSettingsProviderClass setAlwaysPlaySound:v7 forBundleID:v8];
}

- (id)driverKitSpecifiers
{
  v3 = [PSDriverPolicyForApp alloc];
  v4 = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v5 = [(PSDriverPolicyForApp *)v3 initWithBundleIdentifier:v4];
  driverPolicy = self->_driverPolicy;
  self->_driverPolicy = v5;

  [(PSDriverPolicyForApp *)self->_driverPolicy setDelegate:self];
  v7 = self->_driverPolicy;

  return [(PSDriverPolicyForApp *)v7 specifiers];
}

- (void)observer:(id)a3 updateSectionInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8 = [v7 sectionID];
    v9 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v11 = [(PSSystemPolicyForApp *)self delegate];
      [v11 reloadSpecifiers];
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PSSystemPolicyForApp_observer_updateSectionInfo___block_invoke;
    block[3] = &unk_1E71DBCE8;
    block[4] = self;
    v13 = v6;
    v14 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)reloadSpecifiers
{
  v2 = [(PSSystemPolicyForApp *)self delegate];
  [v2 reloadSpecifiers];
}

- (void)showController:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PSSystemPolicyForApp *)self delegate];
  [v7 showController:v6 animate:v4];
}

- (PSSystemPolicyForAppDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __62__PSSystemPolicyForApp_loadNetworkConfigurationsForceRefresh___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136446466;
  v3 = "[PSSystemPolicyForApp loadNetworkConfigurationsForceRefresh:]_block_invoke";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_18B008000, a2, OS_LOG_TYPE_ERROR, "%{public}s: Failed to load with error %{public}@", &v2, 0x16u);
}

void __48__PSSystemPolicyForApp_saveNetworkConfiguration__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v4 = 136446722;
  v5 = "[PSSystemPolicyForApp saveNetworkConfiguration]_block_invoke";
  v6 = 2114;
  v7 = a1;
  v8 = 2114;
  v9 = v3;
  _os_log_error_impl(&dword_18B008000, log, OS_LOG_TYPE_ERROR, "%{public}s: Save error %{public}@ for %{public}@", &v4, 0x20u);
}

@end