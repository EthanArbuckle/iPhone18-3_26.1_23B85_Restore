@interface PSSystemPolicyForApp
+ (BOOL)isServiceRestricted:(id)restricted;
+ (OS_dispatch_queue)_bbObserverQueue;
- (BOOL)_accountModificationDisabledByRestrictions;
- (BOOL)_isAppClip;
- (BOOL)_isBackgroundAppRefreshAllowed;
- (BOOL)_isWirelessDataRestricted;
- (BOOL)_supportsBackgroundAppRefresh;
- (BOOL)_supportsJournalingSuggestions;
- (BOOL)_supportsLiveActivities;
- (BOOL)_supportsLiveActivitiesFrequentUpdates;
- (BOOL)getMulticastAllowed:(BOOL *)allowed;
- (BOOL)shouldShowPasteboardSpecifier;
- (PSSystemPolicyForApp)initWithBundleIdentifier:(id)identifier;
- (PSSystemPolicyForAppDelegate)delegate;
- (id)_journalingSuggestionsSpecifiers;
- (id)accessoriesSpecifier;
- (id)accountsSpecifier;
- (id)assistantSpecifiers;
- (id)authLevelStringForStatus:(unint64_t)status;
- (id)backgroundAppRefreshSpecifier;
- (id)calendarSpecifiers;
- (id)contactlessNFCSideButtonSpecifiers;
- (id)contactlessNFCSpecifiers;
- (id)contactsServicesSpecifier;
- (id)dataUsageWorkspaceInfo;
- (id)defaultAppSpecifierWithAppRecordsMatchingBlock:(id)block getter:(SEL)getter setter:(SEL)setter title:(id)title;
- (id)defaultBrowser:(id)browser;
- (id)defaultBrowserSpecifier;
- (id)defaultMailApp:(id)app;
- (id)defaultMailAppSpecifier;
- (id)documentSource:(id)source;
- (id)documentsSpecifier;
- (id)driverKitSpecifiers;
- (id)exposureSpecifiersWithTCCServiceLookup:(id)lookup;
- (id)familyControlsSpecifier;
- (id)getDoubleClickForNFC:(id)c;
- (id)getNudityDetectionEnabledValue;
- (id)isBackgroundRefreshEnabled:(id)enabled;
- (id)isFamilyControlsEnabled:(id)enabled;
- (id)isLiveActivitiesEnabled:(id)enabled;
- (id)isLocalNetworkEnabled:(id)enabled;
- (id)isTapToPayAlwaysPlaySoundEnabled:(id)enabled;
- (id)isTapToPayScreenLockEnabled:(id)enabled;
- (id)liveActivitiesSpecifier;
- (id)locationServicesSpecifier;
- (id)locationStatus:(id)status;
- (id)networkServicesSpecifier;
- (id)notificationSpecifier;
- (id)nudityDetectionSpeicier;
- (id)pasteboardAccessForSpecifier:(id)specifier;
- (id)pasteboardSpecifier;
- (id)pathRuleForBundleID:(id)d create:(BOOL)create;
- (id)photosServicesSpecifier;
- (id)preferredLanguage:(id)language;
- (id)preferredLanguageSpecifier;
- (id)privacyAccessForSpecifier:(id)specifier;
- (id)privacySpecifierForService:(__CFString *)service tccServiceLookup:(id)lookup tccServiceOverrides:(id)overrides;
- (id)privacySpecifiersWithTCCServiceLookup:(id)lookup tccServiceOverrides:(id)overrides;
- (id)searchSpecifiers;
- (id)specifiers;
- (id)specifiersForPolicyOptions:(unint64_t)options force:(BOOL)force;
- (id)tapToPayAlwaysPlaySoundSpecifiers;
- (id)tapToPayScreenLockSpecifiers;
- (id)trackingSpecifiersWithTCCServiceLookup:(id)lookup tccServiceOverrides:(id)overrides;
- (id)walletSpecifier;
- (id)wirelessDataSpecifierWithAppName:(id)name;
- (int64_t)_getAuthorizationRecordsStatus;
- (void)_handleAddAccountButtonAction:(id)action;
- (void)headerLinkWasTapped;
- (void)loadNetworkConfigurationsForceRefresh:(BOOL)refresh;
- (void)monitoredStoreDidChange:(id)change;
- (void)observer:(id)observer updateSectionInfo:(id)info;
- (void)reloadSpecifiers;
- (void)saveNetworkConfiguration;
- (void)setBackgroundRefreshEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setDefaultBrowser:(id)browser specifier:(id)specifier;
- (void)setDefaultMailApp:(id)app specifier:(id)specifier;
- (void)setDoubleClickForNFC:(id)c specifier:(id)specifier;
- (void)setFamilyControlsEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setLiveActivitiesEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setLocalNetworkEnabled:(id)enabled specifier:(id)specifier;
- (void)setPasteboardAccess:(id)access forSpecifier:(id)specifier;
- (void)setPrivacyAccess:(id)access forSpecifier:(id)specifier;
- (void)setTapToPayAlwaysPlaySoundEnabled:(id)enabled specifier:(id)specifier;
- (void)setTapToPayScreenLockEnabled:(id)enabled specifier:(id)specifier;
- (void)setupNetworkConfiguration;
- (void)showController:(id)controller animate:(BOOL)animate;
@end

@implementation PSSystemPolicyForApp

- (PSSystemPolicyForApp)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = PSSystemPolicyForApp;
  v5 = [(PSSystemPolicyForApp *)&v18 init];
  v6 = v5;
  if (v5)
  {
    [(PSSystemPolicyForApp *)v5 setBundleIdentifier:identifierCopy];
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
    _bbObserverQueue = [objc_opt_class() _bbObserverQueue];
    v11 = [v9 initWithQueue:_bbObserverQueue];
    bbObserver = v6->__bbObserver;
    v6->__bbObserver = v11;

    [(BBObserver *)v6->__bbObserver setObserverFeed:512];
    [(BBObserver *)v6->__bbObserver setDelegate:v6];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v14 = *MEMORY[0x1E69599B0];
    v15 = +[PSAccountEnumerator sharedEnumerator];
    monitoredAccountStore = [v15 monitoredAccountStore];
    [defaultCenter addObserver:v6 selector:sel_monitoredStoreDidChange_ name:v14 object:monitoredAccountStore];

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
    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    *buf = 136315394;
    v13 = "[PSSystemPolicyForApp specifiers]";
    v14 = 2114;
    v15 = bundleIdentifier;
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

- (id)specifiersForPolicyOptions:(unint64_t)options force:(BOOL)force
{
  v90 = *MEMORY[0x1E69E9840];
  self->_policyOptions = options;
  self->_forcePolicyOptions = force;
  v5 = objc_alloc(MEMORY[0x1E69635F8]);
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v83 = [v5 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:0];

  array = [MEMORY[0x1E695DF70] array];
  if (PSIsWebAppPlaceholder(v83))
  {
    v8 = MEMORY[0x1E696AEC0];
    _isAppClip = [(PSSystemPolicyForApp *)self _isAppClip];
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = v10;
    if (_isAppClip)
    {
      v12 = @"ALLOW_APP_CLIP_ACCESS_FORMAT";
    }

    else
    {
      v12 = @"ALLOW_ACCESS_FORMAT";
    }

    v13 = [v10 localizedStringForKey:v12 value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    localizedName = [v83 localizedName];
    v15 = [v8 stringWithFormat:v13, localizedName];
    v16 = [PSSpecifier groupSpecifierWithName:v15];

    [array ps_addPossibleObject:v16];
    notificationSpecifier = [(PSSystemPolicyForApp *)self notificationSpecifier];
    [array ps_addPossibleObject:notificationSpecifier];
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
    [array addObjectsFromArray:v30];

    calendarSpecifiers = [(PSSystemPolicyForApp *)self calendarSpecifiers];
    [array ps_addPossibleObject:calendarSpecifiers];

    assistantSpecifiers = [(PSSystemPolicyForApp *)self assistantSpecifiers];
    [array ps_addPossibleObject:assistantSpecifiers];

    searchSpecifiers = [(PSSystemPolicyForApp *)self searchSpecifiers];
    [array ps_addPossibleObject:searchSpecifiers];

    notificationSpecifier2 = [(PSSystemPolicyForApp *)self notificationSpecifier];
    [array ps_addPossibleObject:notificationSpecifier2];

    nudityDetectionSpeicier = [(PSSystemPolicyForApp *)self nudityDetectionSpeicier];
    [array ps_addPossibleObject:nudityDetectionSpeicier];

    liveActivitiesSpecifier = [(PSSystemPolicyForApp *)self liveActivitiesSpecifier];
    [array ps_addPossibleObject:liveActivitiesSpecifier];

    v37 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5568] tccServiceLookup:v19 tccServiceOverrides:v29];
    [array ps_addPossibleObject:v37];

    v38 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D55F8] tccServiceLookup:v19 tccServiceOverrides:v29];
    [array ps_addPossibleObject:v38];

    backgroundAppRefreshSpecifier = [(PSSystemPolicyForApp *)self backgroundAppRefreshSpecifier];
    [array ps_addPossibleObject:backgroundAppRefreshSpecifier];
    localizedName2 = [v83 localizedName];
    if (!localizedName2)
    {
      v40 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      bundleIdentifier2 = [(PSSystemPolicyForApp *)self bundleIdentifier];
      v42 = [v40 localizedStringForKey:bundleIdentifier2 value:&stru_1EFE45030 table:@"RemovableApplications"];

      localizedName2 = v42;
    }

    v78 = localizedName2;
    v43 = [(PSSystemPolicyForApp *)self wirelessDataSpecifierWithAppName:?];
    [array ps_addPossibleObject:v43];

    documentsSpecifier = [(PSSystemPolicyForApp *)self documentsSpecifier];
    [array ps_addPossibleObject:documentsSpecifier];

    v45 = [(PSSystemPolicyForApp *)self exposureSpecifiersWithTCCServiceLookup:v19];
    [array addObjectsFromArray:v45];

    _journalingSuggestionsSpecifiers = [(PSSystemPolicyForApp *)self _journalingSuggestionsSpecifiers];
    [array na_safeAddObjectsFromArray:_journalingSuggestionsSpecifiers];

    contactlessNFCSpecifiers = [(PSSystemPolicyForApp *)self contactlessNFCSpecifiers];
    [array na_safeAddObjectsFromArray:contactlessNFCSpecifiers];

    contactlessNFCSideButtonSpecifiers = [(PSSystemPolicyForApp *)self contactlessNFCSideButtonSpecifiers];
    [array na_safeAddObjectsFromArray:contactlessNFCSideButtonSpecifiers];

    if ([v83 isEligibleWebBrowser])
    {
      defaultBrowserSpecifier = [(PSSystemPolicyForApp *)self defaultBrowserSpecifier];
    }

    else
    {
      defaultBrowserSpecifier = 0;
    }

    if ([v83 isEligibleMailClient])
    {
      defaultMailAppSpecifier = [(PSSystemPolicyForApp *)self defaultMailAppSpecifier];
    }

    else
    {
      defaultMailAppSpecifier = 0;
    }

    v77 = defaultMailAppSpecifier;
    if (defaultBrowserSpecifier | defaultMailAppSpecifier)
    {
      v50 = [PSSpecifier groupSpecifierWithID:@"DEFAULT_APP"];
      [array addObject:v50];
      [array ps_addPossibleObject:defaultBrowserSpecifier];
      [array ps_addPossibleObject:v77];
    }

    v80 = [(PSSystemPolicyForApp *)self trackingSpecifiersWithTCCServiceLookup:v19 tccServiceOverrides:v29];
    if ([v80 count])
    {
      [array addObjectsFromArray:v80];
    }

    pasteboardSpecifier = [(PSSystemPolicyForApp *)self pasteboardSpecifier];
    if (pasteboardSpecifier)
    {
      v52 = [PSSpecifier groupSpecifierWithID:@"PASTEBOARD_GROUP"];
      [array addObject:v52];

      [array addObject:pasteboardSpecifier];
    }

    if ([array count])
    {
      v53 = MEMORY[0x1E696AEC0];
      _isAppClip2 = [(PSSystemPolicyForApp *)self _isAppClip];
      v55 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v56 = v55;
      if (_isAppClip2)
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

      [array insertObject:v60 atIndex:0];
      if (backgroundAppRefreshSpecifier && ([MEMORY[0x1E696AE30] processInfo], v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v61, "isLowPowerModeEnabled"), v61, v62))
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

    preferredLanguageSpecifier = [(PSSystemPolicyForApp *)self preferredLanguageSpecifier];
    if (preferredLanguageSpecifier)
    {
      [array addObject:v67];
      preferredLanguageSpecifier2 = [(PSSystemPolicyForApp *)self preferredLanguageSpecifier];
      [array ps_addPossibleObject:preferredLanguageSpecifier2];
    }

    accountsSpecifier = [(PSSystemPolicyForApp *)self accountsSpecifier];
    if (accountsSpecifier)
    {
      v71 = [PSSpecifier groupSpecifierWithID:@"ACCOUNTS_GROUP" name:0];
      [array addObject:v71];

      [array addObject:accountsSpecifier];
    }

    familyControlsSpecifier = [(PSSystemPolicyForApp *)self familyControlsSpecifier];
    if (familyControlsSpecifier)
    {
      [array ps_addPossibleObject:familyControlsSpecifier];
    }

    tapToPayScreenLockSpecifiers = [(PSSystemPolicyForApp *)self tapToPayScreenLockSpecifiers];
    [array addObjectsFromArray:tapToPayScreenLockSpecifiers];

    tapToPayAlwaysPlaySoundSpecifiers = [(PSSystemPolicyForApp *)self tapToPayAlwaysPlaySoundSpecifiers];
    [array addObjectsFromArray:tapToPayAlwaysPlaySoundSpecifiers];

    driverKitSpecifiers = [(PSSystemPolicyForApp *)self driverKitSpecifiers];
    [array addObjectsFromArray:driverKitSpecifiers];
  }

  return array;
}

- (BOOL)_isAppClip
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v8 = 0;
  v5 = [v3 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:&v8];

  appClipMetadata = [v5 appClipMetadata];
  LOBYTE(bundleIdentifier) = appClipMetadata != 0;

  return bundleIdentifier;
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
    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v6 = [v4 sectionInfoForIdentifier:bundleIdentifier];

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
      detailTextLabel = [v10 detailTextLabel];
      text = [detailTextLabel text];
      [v2 setObject:text forKeyedSubscript:@"cellSubtitleText"];
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
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  if ([NudityDetectionPreferencesHelperClass nudityDetectionAvailableForBundleID:bundleIdentifier])
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    sf_inRetailKioskMode = [currentDevice sf_inRetailKioskMode];

    if (sf_inRetailKioskMode)
    {
LABEL_5:
      v7 = 0;
      goto LABEL_6;
    }

    v9 = MEMORY[0x1E696AAE8];
    v10 = PSBundlePathForPreferenceBundle(@"CommunicationSafetySettings");
    v12 = v11 = v10;
    bundleIdentifier = [v9 bundleWithPath:v12];

    nudityDetectionRowLabel = [getNudityDetectionPreferencesHelperClass() nudityDetectionRowLabel];
    classForNudityAppDetectionSettings = [getNudityDetectionPreferencesHelperClass() classForNudityAppDetectionSettings];
    v7 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", nudityDetectionRowLabel, self, 0, sel_getNudityDetectionEnabledValue, [bundleIdentifier classNamed:classForNudityAppDetectionSettings], 2, 0);

    bundleIdentifier2 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    [v7 setProperty:bundleIdentifier2 forKey:@"BUNDLE_ID"];

    [v7 setIdentifier:@"NUDITY_DETECTION"];
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(getNudityDetectionPreferencesHelperClass(), "nudityDetectionRowEnabled")}];
    [v7 setObject:v16 forKeyedSubscript:@"enabled"];

    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
    nudityDetectionRowIconID = [getNudityDetectionPreferencesHelperClass() nudityDetectionRowIconID];
    [v7 setObject:nudityDetectionRowIconID forKeyedSubscript:@"iconUTTypeIdentifier"];
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
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v5 = [NudityDetectionPreferencesHelperClass nudityDetectionOnOffLabelForBundleID:bundleIdentifier];

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

      bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
      [v10 setProperty:bundleIdentifier forKey:@"BUNDLE_ID"];
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
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:0];

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
    areActivitiesEnabled = [v8 areActivitiesEnabled];
  }

  else
  {
    areActivitiesEnabled = 0;
  }

  return areActivitiesEnabled;
}

- (BOOL)_supportsLiveActivitiesFrequentUpdates
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69635F8]);
    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v6 = [v4 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:0];

    LOBYTE(bundleIdentifier) = [v6 supportsLiveActivitiesFrequentUpdates];
    LOBYTE(v3) = bundleIdentifier;
  }

  return v3;
}

- (void)setLiveActivitiesEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  v5 = objc_alloc_init(getACActivityAuthorizationClass());
  bOOLValue = [enabledCopy BOOLValue];
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  [v5 setActivitiesEnabled:bOOLValue forBundleId:bundleIdentifier];

  delegate = [(PSSystemPolicyForApp *)self delegate];
  LOBYTE(bundleIdentifier) = objc_opt_respondsToSelector();

  if (bundleIdentifier)
  {
    delegate2 = [(PSSystemPolicyForApp *)self delegate];
    [delegate2 systemPolicyForApp:self didUpdateForSystemPolicyOptions:0x10000000000 withValue:enabledCopy];
  }
}

- (id)isLiveActivitiesEnabled:(id)enabled
{
  v4 = objc_alloc_init(getACActivityAuthorizationClass());
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v6 = [v4 areActivitiesEnabledForBundleId:bundleIdentifier];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:v6];

  return v7;
}

- (BOOL)_supportsJournalingSuggestions
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];

  LOBYTE(bundleIdentifier) = [v5 supportsJournalingSuggestions];
  return bundleIdentifier;
}

- (id)_journalingSuggestionsSpecifiers
{
  array = [MEMORY[0x1E695DF70] array];
  if ((self->_policyOptions & 0x100000000000) != 0 && [(PSSystemPolicyForApp *)self _supportsJournalingSuggestions]&& MomentsOnboardingAndSettingsLibraryCore_0())
  {
    if (!MomentsOnboardingAndSettingsLibraryCore_0())
    {
      v12 = 0;
      v11 = abort_report_np();
      free(v11);
    }

    v4 = [PSSpecifier groupSpecifierWithID:@"JOURNALING_SUGGESTIONS_GROUP", v12];
    [array addObject:v4];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"JOURNALING_SUGGESTIONS" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:NSClassFromString(&cfstr_Mosuggestionsh.isa) cell:2 edit:0];

    v8 = MEMORY[0x1E695E118];
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"allowMultilineTitleKey"];
    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    [v7 setObject:bundleIdentifier forKeyedSubscript:@"AppBundleID"];

    [v7 setObject:v8 forKeyedSubscript:@"useLazyIcons"];
    [v7 setObject:@"com.apple.graphic-icon.journaling-suggestions" forKeyedSubscript:@"iconUTTypeIdentifier"];
    [array addObject:v7];
  }

  return array;
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
    visibleAccountCount = [v4 visibleAccountCount];

    if (visibleAccountCount < 1)
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

    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    [v3 setObject:bundleIdentifier forKeyedSubscript:@"AppBundleID"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_handleAddAccountButtonAction:(id)action
{
  actionCopy = action;
  delegate = [(PSSystemPolicyForApp *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = actionCopy;
  if (v5)
  {
    v7 = objc_alloc_init([actionCopy detailControllerClass]);
    if (v7)
    {
      delegate2 = [(PSSystemPolicyForApp *)self delegate];
      [delegate2 showController:v7 animate:1];
    }

    v6 = actionCopy;
  }
}

- (BOOL)_accountModificationDisabledByRestrictions
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADD70]] == 2;

  return v3;
}

- (void)monitoredStoreDidChange:(id)change
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
    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v2 = [(PSCalendarPolicyController *)v6 appSpecifierWithName:v7 bundleID:bundleIdentifier];

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
  selfCopy = self;
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
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADD90]];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  sf_isChinaRegionCellularDevice = [currentDevice sf_isChinaRegionCellularDevice];

  v6 = (sf_isChinaRegionCellularDevice & 1) == 0 && CTCellularDataPlanGetIsEnabled() == 0;
  return v3 == 2 || v6;
}

- (id)wirelessDataSpecifierWithAppName:(id)name
{
  nameCopy = name;
  if ((self->_policyOptions & 0x8000) == 0 || !MGGetBoolAnswer())
  {
    goto LABEL_5;
  }

  _isWirelessDataRestricted = [(PSSystemPolicyForApp *)self _isWirelessDataRestricted];
  [0 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"enabled"];
  if (_isWirelessDataRestricted)
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
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v11 = objc_opt_new();
  v6 = [v8 systemPolicySpecifierForAppName:nameCopy bundleID:bundleIdentifier icon:v11 enabled:{-[PSSystemPolicyForApp _isWirelessDataRestricted](self, "_isWirelessDataRestricted") ^ 1}];

  v12 = MEMORY[0x1E696AEC0];
  identifier = [v6 identifier];
  v14 = [v12 stringWithFormat:@"%@.wireless", identifier];
  [v6 setIdentifier:v14];

  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
  [v6 setObject:@"com.apple.graphic-icon.cellular-settings" forKeyedSubscript:@"iconUTTypeIdentifier"];
  performGetter = [v6 performGetter];
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
  sharedCenter = [getFOAuthorizationCenterClass() sharedCenter];
  authorizationRecords = [sharedCenter authorizationRecords];

  v5 = [authorizationRecords countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    status = 1;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(authorizationRecords);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        bundleIdentifier = [v10 bundleIdentifier];
        bundleIdentifier2 = [(PSSystemPolicyForApp *)self bundleIdentifier];
        v13 = [bundleIdentifier isEqualToString:bundleIdentifier2];

        if (v13)
        {
          status = [v10 status];
          goto LABEL_12;
        }
      }

      v6 = [authorizationRecords countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    status = 1;
  }

LABEL_12:

  return status;
}

- (void)setFamilyControlsEnabled:(id)enabled forSpecifier:(id)specifier
{
  v29 = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  specifierCopy = specifier;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__0;
  v26[4] = __Block_byref_object_dispose__0;
  v7 = enabledCopy;
  v27 = v7;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  sharedCenter = [getFOAuthorizationCenterClass() sharedCenter];
  authorizationRecords = [sharedCenter authorizationRecords];

  recordIdentifier = 0;
  v11 = [authorizationRecords countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v11)
  {
    v12 = *v23;
    do
    {
      v13 = 0;
      v14 = recordIdentifier;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(authorizationRecords);
        }

        v15 = *(*(&v22 + 1) + 8 * v13);
        bundleIdentifier = [v15 bundleIdentifier];
        bundleIdentifier2 = [(PSSystemPolicyForApp *)self bundleIdentifier];
        if ([bundleIdentifier isEqualToString:bundleIdentifier2])
        {
          recordIdentifier = [v15 recordIdentifier];
        }

        else
        {
          recordIdentifier = 0;
        }

        ++v13;
        v14 = recordIdentifier;
      }

      while (v11 != v13);
      v11 = [authorizationRecords countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v11);
  }

  if ([(PSSystemPolicyForApp *)self _getAuthorizationRecordsStatus]== 2)
  {
    sharedCenter2 = [getFOAuthorizationCenterClass() sharedCenter];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __62__PSSystemPolicyForApp_setFamilyControlsEnabled_forSpecifier___block_invoke;
    v21[3] = &unk_1E71DC198;
    v21[4] = v26;
    [sharedCenter2 resetAuthorizationForRecordIdentifier:recordIdentifier completionHandler:v21];
  }

  else
  {
    sharedCenter2 = [getFOAuthorizationCenterClass() sharedCenter];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __62__PSSystemPolicyForApp_setFamilyControlsEnabled_forSpecifier___block_invoke_2;
    v20[3] = &unk_1E71DC198;
    v20[4] = v26;
    [sharedCenter2 requestAuthorizationForRecordIdentifier:recordIdentifier completionHandler:v20];
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

- (id)isFamilyControlsEnabled:(id)enabled
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
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  uIBackgroundModes = [v5 UIBackgroundModes];
  v7 = [uIBackgroundModes countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(uIBackgroundModes);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isEqualToString:@"remote-notification"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"newsstand-content") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"fetch") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"processing"))
        {
          v12 = 1;
          goto LABEL_15;
        }
      }

      v8 = [uIBackgroundModes countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    v4 = 1;
  }

  else
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    isAutomaticAppUpdatesAllowed = [mEMORY[0x1E69ADFB8] isAutomaticAppUpdatesAllowed];
    isAutomaticAppUpdatesModificationAllowed = [mEMORY[0x1E69ADFB8] isAutomaticAppUpdatesModificationAllowed];
    v4 = isAutomaticAppUpdatesAllowed & isAutomaticAppUpdatesModificationAllowed ^ 1 | [mEMORY[0x1E69ADFB8] isBoolSettingLockedDownByRestrictions:*MEMORY[0x1E69ADDE0]];
  }

  return v4 & 1;
}

- (void)setBackgroundRefreshEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  v5 = CFPreferencesCopyAppValue(@"KeepAppsUpToDateAppList", @"com.apple.mt");
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = objc_opt_new();
  }

  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  [v6 setObject:enabledCopy forKey:bundleIdentifier];

  CFPreferencesSetAppValue(@"KeepAppsUpToDateAppList", v6, @"com.apple.mt");
  CFPreferencesAppSynchronize(@"com.apple.mt");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kKeepAppsUpToDateEnabledChangedNotification", 0, 0, 1u);
  delegate = [(PSSystemPolicyForApp *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(PSSystemPolicyForApp *)self delegate];
    [delegate2 systemPolicyForApp:self didUpdateForSystemPolicyOptions:2 withValue:enabledCopy];
  }
}

- (id)isBackgroundRefreshEnabled:(id)enabled
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    v6 = MEMORY[0x1E695E110];
  }

  else
  {
    v7 = CFPreferencesCopyAppValue(@"KeepAppsUpToDateAppList", @"com.apple.mt");
    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v9 = [v7 objectForKey:bundleIdentifier];

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
    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v2 = [(PSPhotosPolicyController *)photosPrivacyController appSpecifierWithName:v8 bundleID:bundleIdentifier];

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
    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v8 = [(PSWalletPolicyController *)v6 initWithBundleIdentifier:bundleIdentifier];
    walletPrivacyController = self->_walletPrivacyController;
    self->_walletPrivacyController = v8;

    specifier = [(PSWalletPolicyController *)self->_walletPrivacyController specifier];
  }

  else
  {
    specifier = 0;
  }

  return specifier;
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
    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v2 = [(PSContactsPolicyController *)contactsPrivacyController appSpecifierWithName:v8 bundleID:bundleIdentifier];

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

- (BOOL)getMulticastAllowed:(BOOL *)allowed
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  copyAggregatePathRules = [MEMORY[0x1E6977FB8] copyAggregatePathRules];
  v6 = [copyAggregatePathRules countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(copyAggregatePathRules);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        matchSigningIdentifier = [v10 matchSigningIdentifier];
        bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
        if ([matchSigningIdentifier isEqualToString:bundleIdentifier])
        {
          multicastPreferenceSet = [v10 multicastPreferenceSet];

          if (multicastPreferenceSet)
          {
            if (allowed)
            {
              *allowed = 1;
            }

            v14 = [v10 denyMulticast] ^ 1;
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v7 = [copyAggregatePathRules countByEnumeratingWithState:&v16 objects:v20 count:16];
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
    mEMORY[0x1E6977F90] = [MEMORY[0x1E6977F90] sharedManagerForAllUsers];
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__PSSystemPolicyForApp_setupNetworkConfiguration__block_invoke;
    v6[3] = &unk_1E71DC1C0;
    objc_copyWeak(&v7, &location);
    [mEMORY[0x1E6977F90] setChangedQueue:v4 andHandler:v6];

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

- (void)loadNetworkConfigurationsForceRefresh:(BOOL)refresh
{
  if (self->_pathControllerConfiguration)
  {
    v5 = !refresh;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v8[7] = v3;
    v8[8] = v4;
    mEMORY[0x1E6977F90] = [MEMORY[0x1E6977F90] sharedManagerForAllUsers];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__PSSystemPolicyForApp_loadNetworkConfigurationsForceRefresh___block_invoke;
    v8[3] = &unk_1E71DBD10;
    v8[4] = self;
    [mEMORY[0x1E6977F90] loadConfigurationsWithCompletionQueue:MEMORY[0x1E69E96A0] handler:v8];
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
  mEMORY[0x1E6977F90] = [MEMORY[0x1E6977F90] sharedManagerForAllUsers];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__PSSystemPolicyForApp_saveNetworkConfiguration__block_invoke;
  v5[3] = &unk_1E71DC1E8;
  v6 = v2;
  v4 = v2;
  [mEMORY[0x1E6977F90] saveConfiguration:v4 withCompletionQueue:MEMORY[0x1E69E96A0] handler:v5];
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

- (id)pathRuleForBundleID:(id)d create:(BOOL)create
{
  createCopy = create;
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  pathController = [(NEConfiguration *)self->_pathControllerConfiguration pathController];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  pathRules = [pathController pathRules];
  v9 = [pathRules countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(pathRules);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        matchSigningIdentifier = [v13 matchSigningIdentifier];
        v15 = [matchSigningIdentifier isEqualToString:dCopy];

        if (v15)
        {
          v16 = v13;
          goto LABEL_13;
        }
      }

      v10 = [pathRules countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (createCopy)
  {
    v16 = [objc_alloc(MEMORY[0x1E6977FC0]) initWithSigningIdentifier:dCopy];
    pathRules2 = [pathController pathRules];

    if (pathRules2)
    {
      pathRules = [pathController pathRules];
      v18 = [pathRules arrayByAddingObject:v16];
      [pathController setPathRules:v18];
    }

    else
    {
      v24 = v16;
      pathRules = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
      [pathController setPathRules:pathRules];
    }

LABEL_13:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)setLocalNetworkEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v6 = [(PSSystemPolicyForApp *)self pathRuleForBundleID:bundleIdentifier create:1];

  [v6 setDenyMulticast:{objc_msgSend(enabledCopy, "BOOLValue") ^ 1}];
  [v6 setMulticastPreferenceSet:1];
  [(PSSystemPolicyForApp *)self saveNetworkConfiguration];
  delegate = [(PSSystemPolicyForApp *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(PSSystemPolicyForApp *)self delegate];
    [delegate2 systemPolicyForApp:self didUpdateForSystemPolicyOptions:0x4000000 withValue:enabledCopy];
  }
}

- (id)isLocalNetworkEnabled:(id)enabled
{
  if (self->_pathControllerConfiguration)
  {
    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v5 = [(PSSystemPolicyForApp *)self pathRuleForBundleID:bundleIdentifier create:0];

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

    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    [v5 setProperty:bundleIdentifier forKey:@"PUINetworkApplicationKey"];

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
    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v6 = [v4 objectForKey:bundleIdentifier];

    if (v6 && [MEMORY[0x1E695FBE8] primaryEntityClassForLocationDictionary:v6] == 1)
    {
      v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"LOCATION_SERVICES" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      v2 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:sel_locationStatus_ detail:NSClassFromString(&cfstr_Puilocationser.isa) cell:2 edit:0];

      v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[PSSystemPolicyForApp _isLocationServicesRestricted](self, "_isLocationServicesRestricted") ^ 1}];
      [v2 setProperty:v9 forKey:@"enabled"];

      bundleIdentifier2 = [(PSSystemPolicyForApp *)self bundleIdentifier];
      [v2 setProperty:bundleIdentifier2 forKey:@"id"];

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

- (id)locationStatus:(id)status
{
  v4 = CLCopyAppsUsingLocation();
  v5 = MEMORY[0x1E695FBE8];
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v7 = [v4 objectForKey:bundleIdentifier];
  v8 = [v5 entityAuthorizationForLocationDictionary:v7];

  v9 = [(PSSystemPolicyForApp *)self authLevelStringForStatus:v8];

  return v9;
}

- (id)authLevelStringForStatus:(unint64_t)status
{
  if (status)
  {
    v4 = @"NEVER_AUTHORIZATION";
  }

  else if (status)
  {
    if ((status & 4) != 0)
    {
      v4 = @"ALWAYS_AUTHORIZATION";
    }

    else
    {
      if ((status & 2) == 0)
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

- (id)privacySpecifiersWithTCCServiceLookup:(id)lookup tccServiceOverrides:(id)overrides
{
  lookupCopy = lookup;
  overridesCopy = overrides;
  array = [MEMORY[0x1E695DF70] array];
  locationServicesSpecifier = [(PSSystemPolicyForApp *)self locationServicesSpecifier];
  [array ps_addPossibleObject:locationServicesSpecifier];

  if (_os_feature_enabled_impl())
  {
    [(PSSystemPolicyForApp *)self contactsServicesSpecifier];
  }

  else
  {
    [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5500] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  }
  v10 = ;
  [array ps_addPossibleObject:v10];

  v11 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D55D8] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array ps_addPossibleObject:v11];

  photosServicesSpecifier = [(PSSystemPolicyForApp *)self photosServicesSpecifier];
  [array ps_addPossibleObject:photosServicesSpecifier];

  accessoriesSpecifier = [(PSSystemPolicyForApp *)self accessoriesSpecifier];
  [array ps_addPossibleObject:accessoriesSpecifier];

  v14 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5508] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array ps_addPossibleObject:v14];

  networkServicesSpecifier = [(PSSystemPolicyForApp *)self networkServicesSpecifier];
  [array ps_addPossibleObject:networkServicesSpecifier];

  v16 = +[PSCapabilityManager sharedManager];
  v17 = [v16 capabilityBoolAnswer:@"9RryeqF6OCWlbaXP2Qsoag"];

  if (v17)
  {
    v18 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D55B0] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
    [array ps_addPossibleObject:v18];
  }

  v19 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5588] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array ps_addPossibleObject:v19];

  v20 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D55F0] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array ps_addPossibleObject:v20];

  v21 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D55A8] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array ps_addPossibleObject:v21];

  v22 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5520] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array ps_addPossibleObject:v22];

  v23 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5550] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array ps_addPossibleObject:v23];

  v24 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5528] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array ps_addPossibleObject:v24];

  v25 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D55E0] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array ps_addPossibleObject:v25];

  v26 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5620] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array ps_addPossibleObject:v26];

  walletSpecifier = [(PSSystemPolicyForApp *)self walletSpecifier];
  [array ps_addPossibleObject:walletSpecifier];

  v28 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5580] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array ps_addPossibleObject:v28];

  v29 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5578] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array ps_addPossibleObject:v29];

  if (_os_feature_enabled_impl())
  {
    v30 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5560] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
    [array ps_addPossibleObject:v30];
  }

  v31 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5610] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array ps_addPossibleObject:v31];

  return array;
}

- (id)privacySpecifierForService:(__CFString *)service tccServiceLookup:(id)lookup tccServiceOverrides:(id)overrides
{
  lookupCopy = lookup;
  overridesCopy = overrides;
  policyOptions = self->_policyOptions;
  v11 = [_PSServicePolicyOptions objectForKey:service];
  v12 = [v11 unsignedIntegerValue] & policyOptions;

  if (!v12)
  {
    v20 = 0;
    goto LABEL_46;
  }

  v13 = [overridesCopy containsObject:service];
  objc_opt_class();
  v14 = [lookupCopy objectForKeyedSubscript:service];
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

  v21 = [_PSLocalizedServiceNames objectForKey:service];
  v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:sel_setPrivacyAccess_forSpecifier_ get:sel_privacyAccessForSpecifier_ detail:0 cell:6 edit:0];

  if (CFEqual(service, *MEMORY[0x1E69D5578]))
  {
    [v22 setProperty:objc_opt_class() forKey:@"cellClass"];
  }

  if ((!CFEqual(service, *MEMORY[0x1E69D55E0]) || objc_opt_class() && [MEMORY[0x1E69C86E8] isSecureElementTCCServiceEligible]) && (!CFEqual(service, *MEMORY[0x1E69D5528]) || objc_opt_class() && objc_msgSend(MEMORY[0x1E69C86E8], "isContactlessTCCServiceEligible")))
  {
    v43 = v13;
    [v22 setProperty:service forKey:@"service"];
    v23 = +[PKIconImageCache settingsIconCache];
    v24 = [_PSServiceIconNames objectForKey:service];
    v25 = [v23 imageForKey:v24];

    if (v25 || (v41 = MEMORY[0x1E69DCAB8], [_PSServiceIconNames objectForKey:service], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "imageNamed:inBundle:compatibleWithTraitCollection:", v26, v27, 0), v25 = objc_claimAutoreleasedReturnValue(), v27, v26, v25))
    {
      [v22 setProperty:v25 forKey:@"iconImage"];
      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = [_PSServiceIconTypeIDs objectForKeyedSubscript:service];
    v30 = v29;
    if (v28 && v29)
    {
      [v22 setObject:v29 forKeyedSubscript:@"iconUTTypeIdentifier"];
      [v22 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
    }

    v42 = v30;
    v31 = [_PSServiceIconApplicationBundleIdentifiers objectForKeyedSubscript:service];
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

    v33 = [PSSystemPolicyForApp isServiceRestricted:service];
    if (CFEqual(service, *MEMORY[0x1E69D5600]))
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

    if (CFEqual(service, *MEMORY[0x1E69D5618]))
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

- (void)setPrivacyAccess:(id)access forSpecifier:(id)specifier
{
  accessCopy = access;
  specifierCopy = specifier;
  objc_initWeak(location, self);
  v8 = objc_alloc(MEMORY[0x1E69635F8]);
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v10 = [v8 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:0];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PSSystemPolicyForApp_setPrivacyAccess_forSpecifier___block_invoke;
  aBlock[3] = &unk_1E71DC238;
  objc_copyWeak(&v77, location);
  v11 = v10;
  v75 = v11;
  v12 = accessCopy;
  v76 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [specifierCopy propertyForKey:@"value"];
  v15 = [v12 isEqual:v14];

  if ((v15 & 1) == 0)
  {
    v16 = [specifierCopy propertyForKey:@"service"];
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
      v70 = specifierCopy;
      selfCopy = self;
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
      delegate = [(PSSystemPolicyForApp *)self delegate];
      [delegate showController:v58 animate:1];

      v35 = v72;
    }

    else
    {
      if (([v12 BOOLValue] & 1) != 0 || CFStringCompare(v16, *MEMORY[0x1E69D55E0], 0))
      {
        (*(v13 + 2))(v13, v12, v16, specifierCopy);
        goto LABEL_12;
      }

      v36 = MEMORY[0x1E696AEC0];
      v37 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v38 = [v37 localizedStringForKey:@"SECURE_ELEMENT_PROMPT_TITLE" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      localizedName = [v11 localizedName];
      v58 = [v36 stringWithFormat:v38, localizedName];

      v40 = MEMORY[0x1E696AEC0];
      v41 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v42 = [v41 localizedStringForKey:@"SECURE_ELEMENT_PROMPT_DETAIL" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
      localizedName2 = [v11 localizedName];
      v44 = [v40 stringWithFormat:v42, localizedName2];

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
      v62 = specifierCopy;
      selfCopy2 = self;
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

      delegate2 = [(PSSystemPolicyForApp *)self delegate];
      [delegate2 showController:v45 animate:1];

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

- (id)privacyAccessForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:@"value"];
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
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  if ([v4 containsObject:bundleIdentifier])
  {
    v8 = 1;
  }

  else
  {
    bundleIdentifier2 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    if ([v5 containsObject:bundleIdentifier2])
    {
      v8 = 1;
    }

    else
    {
      bundleIdentifier3 = [(PSSystemPolicyForApp *)self bundleIdentifier];
      v8 = [v6 containsObject:bundleIdentifier3];
    }
  }

  return v8;
}

- (id)pasteboardAccessForSpecifier:(id)specifier
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
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v9 = [v5 containsObject:bundleIdentifier];

  if (v9)
  {
    v10 = &unk_1EFE65D90;
  }

  else
  {
    bundleIdentifier2 = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v12 = [v6 containsObject:bundleIdentifier2];

    if (v12)
    {
      v10 = &unk_1EFE65D60;
    }

    else
    {
      bundleIdentifier3 = [(PSSystemPolicyForApp *)self bundleIdentifier];
      v14 = [v7 containsObject:bundleIdentifier3];

      if (v14)
      {
        v10 = &unk_1EFE65D78;
      }

      else
      {
        v15 = _PSLoggingFacility();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier4 = [(PSSystemPolicyForApp *)self bundleIdentifier];
          *buf = 136315394;
          v22 = "[PSSystemPolicyForApp pasteboardAccessForSpecifier:]";
          v23 = 2112;
          v24 = bundleIdentifier4;
          _os_log_impl(&dword_18B008000, v15, OS_LOG_TYPE_DEFAULT, "%s: couldn't find auth state for %@", buf, 0x16u);
        }

        v10 = &unk_1EFE65DA8;
      }
    }
  }

  return v10;
}

- (void)setPasteboardAccess:(id)access forSpecifier:(id)specifier
{
  v5 = *MEMORY[0x1E69D55C0];
  accessCopy = access;
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  integerValue = [accessCopy integerValue];

  PSSetTCCLevelForService(v5, bundleIdentifier, integerValue);
}

+ (BOOL)isServiceRestricted:(id)restricted
{
  restrictedCopy = restricted;
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v4 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  v5 = v4;
  if (v4)
  {
    v6 = [v4 containsObject:restrictedCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)trackingSpecifiersWithTCCServiceLookup:(id)lookup tccServiceOverrides:(id)overrides
{
  v6 = MEMORY[0x1E695DF70];
  overridesCopy = overrides;
  lookupCopy = lookup;
  array = [v6 array];
  v10 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5618] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array ps_addPossibleObject:v10];

  v11 = [(PSSystemPolicyForApp *)self privacySpecifierForService:*MEMORY[0x1E69D5600] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];

  [array ps_addPossibleObject:v11];
  if ([array count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v13 = [PSSpecifier groupSpecifierWithID:@"TRACKING_GROUP"];
    [array2 addObject:v13];
    [array2 addObjectsFromArray:array];
  }

  else
  {
    array2 = 0;
  }

  return array2;
}

- (void)headerLinkWasTapped
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.apple.com/privacy"];
  [mEMORY[0x1E69DC668] openURL:v2 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (id)documentsSpecifier
{
  if ((self->_policyOptions & 0x400000) != 0)
  {
    v4 = objc_alloc(MEMORY[0x1E69635F8]);
    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v6 = [v4 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:0];

    v7 = [v6 URL];
    v8 = v7;
    if (v7 && [v7 isFileURL])
    {
      v9 = [MEMORY[0x1E696AAE8] bundleWithURL:v8];
      infoDictionary = [v9 infoDictionary];

      v11 = [infoDictionary objectForKeyedSubscript:@"UISupportsDocumentBrowser"];
      bOOLValue = [v11 BOOLValue];

      if (bOOLValue)
      {
        v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v14 = [v13 localizedStringForKey:@"DOCUMENT_STORAGE" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
        v2 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:sel_documentSource_ detail:objc_opt_class() cell:2 edit:0];

        [v2 setIdentifier:@"DOCUMENT_STORAGE"];
        [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
        [v2 setObject:@"com.apple.DocumentsApp" forKeyedSubscript:@"appIDForLazyIcon"];
        bundleIdentifier2 = [(PSSystemPolicyForApp *)self bundleIdentifier];
        [v2 setProperty:bundleIdentifier2 forKey:PSDocumentBundleIdentifierKey];
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

- (id)documentSource:(id)source
{
  sourceCopy = source;
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
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__PSSystemPolicyForApp_documentSource___block_invoke;
  v12[3] = &unk_1E71DBFD8;
  v14 = &v15;
  v9 = v5;
  v13 = v9;
  [v6 defaultSourceForBundleIdentifier:bundleIdentifier completionBlock:v12];

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
    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    delegate = [(PSSystemPolicyForApp *)self delegate];
    v7 = [(PSNFCDefaultAppSpecifier *)v4 initWithBundleID:bundleIdentifier delegate:delegate onChange:&__block_literal_global_543];

    context = [(PSNFCDefaultAppSpecifier *)v7 context];
    LODWORD(bundleIdentifier) = [context shouldShowDefaultNFCAppPicker];

    if (bundleIdentifier)
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

  nfcContext = [(PSSystemPolicyForApp *)self nfcContext];

  if (!nfcContext)
  {
    v4 = MEMORY[0x1E69C86D8];
    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __58__PSSystemPolicyForApp_contactlessNFCSideButtonSpecifiers__block_invoke;
    v23[3] = &unk_1E71DBE20;
    v23[4] = self;
    v6 = [v4 contextWithBundleId:bundleIdentifier onChange:v23];
    [(PSSystemPolicyForApp *)self setNfcContext:v6];
  }

  nfcContext2 = [(PSSystemPolicyForApp *)self nfcContext];
  doubleClickToggleVisibilityType = [nfcContext2 doubleClickToggleVisibilityType];

  if (doubleClickToggleVisibilityType != 2)
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
    nfcContext3 = [(PSSystemPolicyForApp *)self nfcContext];
    doubleClickToggleVisibilityType2 = [nfcContext3 doubleClickToggleVisibilityType];

    if (doubleClickToggleVisibilityType2 == 1)
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

- (id)getDoubleClickForNFC:(id)c
{
  v3 = MEMORY[0x1E696AD98];
  nfcContext = [(PSSystemPolicyForApp *)self nfcContext];
  v5 = [v3 numberWithBool:{objc_msgSend(nfcContext, "isDoubleClickEnabled")}];

  return v5;
}

- (void)setDoubleClickForNFC:(id)c specifier:(id)specifier
{
  cCopy = c;
  nfcContext = [(PSSystemPolicyForApp *)self nfcContext];
  bOOLValue = [cCopy BOOLValue];

  [nfcContext setDoubleClickEnabled:bOOLValue];
}

- (id)exposureSpecifiersWithTCCServiceLookup:(id)lookup
{
  lookupCopy = lookup;
  if ((self->_policyOptions & 0x100000000) == 0)
  {
    v5 = 0;
    goto LABEL_14;
  }

  if (![(PSSystemPolicyForApp *)self enServiceMatched])
  {
    [(PSSystemPolicyForApp *)self setEnServiceMatched:1];
    matchingBundleIdentifier = [(PSSystemPolicyForApp *)self matchingBundleIdentifier];
    if (matchingBundleIdentifier)
    {
LABEL_7:

      goto LABEL_8;
    }

    v7 = [lookupCopy objectForKeyedSubscript:*MEMORY[0x1E69D5540]];

    if (v7)
    {
      matchingBundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
      [(PSSystemPolicyForApp *)self setMatchingBundleIdentifier:matchingBundleIdentifier];
      goto LABEL_7;
    }
  }

LABEL_8:
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  matchingBundleIdentifier2 = [(PSSystemPolicyForApp *)self matchingBundleIdentifier];

  if (matchingBundleIdentifier2)
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

      bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
      [v16 setUserInfo:bundleIdentifier];

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
    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v6 = [v4 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:0];

    v7 = [v6 URL];
    v8 = v7;
    if (v7 && [v7 isFileURL])
    {
      v9 = [MEMORY[0x1E696AAE8] bundleWithURL:v8];
      normalizedLocalizations = [v9 normalizedLocalizations];
      v11 = [normalizedLocalizations count];
      preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
      v13 = [preferredLanguages count];

      v14 = MEMORY[0x1E696AAE8];
      preferredLanguages2 = [MEMORY[0x1E695DF58] preferredLanguages];
      v35 = normalizedLocalizations;
      v16 = [v14 preferredLocalizationsFromArray:normalizedLocalizations forPreferences:preferredLanguages2];
      firstObject = [v16 firstObject];

      v18 = MEMORY[0x1E69AAE08];
      bundleIdentifier2 = [(PSSystemPolicyForApp *)self bundleIdentifier];
      v20 = [v18 preferredLanguageForBundleID:bundleIdentifier2];

      v21 = [v20 isEqualToString:firstObject];
      if (v13 > 1)
      {
        v24 = 0;
      }

      else
      {
        v22 = [v9 objectForInfoDictionaryKey:@"UIPrefersShowingLanguageSettings"];
        bOOLValue = [v22 BOOLValue];

        v24 = bOOLValue ^ 1;
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
        v29 = v34 = firstObject;

        v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v31 = [v30 localizedStringForKey:@"LANGUAGE" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
        v2 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v31, self, 0, sel_preferredLanguage_, [v29 classNamed:@"ISApplicationLanguageController"], 2, 0);

        [v2 setIdentifier:@"PREFERRED_LANGUAGE"];
        [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
        [v2 setObject:@"com.apple.graphic-icon.language" forKeyedSubscript:@"iconUTTypeIdentifier"];
        bundleIdentifier3 = [(PSSystemPolicyForApp *)self bundleIdentifier];
        [v2 setProperty:bundleIdentifier3 forKey:@"bundleID"];

        firstObject = v34;
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

- (id)preferredLanguage:(id)language
{
  v3 = MEMORY[0x1E69AAE08];
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v5 = [v3 preferredLanguageForBundleID:bundleIdentifier];

  v6 = MEMORY[0x1E695DF58];
  _deviceLanguage = [MEMORY[0x1E695DF58] _deviceLanguage];
  v8 = [v6 localeWithLocaleIdentifier:_deviceLanguage];
  v9 = [v8 localizedStringForLanguage:v5 context:3];

  return v9;
}

- (id)defaultAppSpecifierWithAppRecordsMatchingBlock:(id)block getter:(SEL)getter setter:(SEL)setter title:(id)title
{
  v42 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  titleCopy = title;
  if (blockCopy)
  {
    v34 = objc_opt_new();
    v33 = objc_opt_new();
    v12 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
    v13 = MEMORY[0x1E696AE18];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __91__PSSystemPolicyForApp_defaultAppSpecifierWithAppRecordsMatchingBlock_getter_setter_title___block_invoke;
    v39[3] = &unk_1E71DC2B0;
    v40 = blockCopy;
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
      setterCopy = setter;
      getterCopy = getter;
      v31 = titleCopy;
      v32 = blockCopy;
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
          bundleIdentifier = [v21 bundleIdentifier];
          bundleIdentifier2 = [(PSSystemPolicyForApp *)self bundleIdentifier];
          v24 = [bundleIdentifier isEqualToString:bundleIdentifier2];

          v18 |= v24;
          bundleIdentifier3 = [v21 bundleIdentifier];
          [v33 addObject:bundleIdentifier3];

          localizedName = [v21 localizedName];
          [v34 addObject:localizedName];
        }

        v17 = [v15 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v17);

      if (v18)
      {
        titleCopy = v31;
        v27 = [PSSpecifier preferenceSpecifierNamed:v31 target:self set:setterCopy get:getterCopy detail:objc_opt_class() cell:2 edit:0];
        [v27 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PSListItemsValuesAreAppIDsKey"];
        [v27 setValues:v33 titles:v34];
      }

      else
      {
        v27 = 0;
        titleCopy = v31;
      }

      blockCopy = v32;
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

- (id)defaultBrowser:(id)browser
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
    bundleRecord = [v5 bundleRecord];
    bundleIdentifier = [bundleRecord bundleIdentifier];
    *buf = 138543362;
    v15 = bundleIdentifier;
    _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "Default browser app is %{public}@", buf, 0xCu);
  }

  bundleRecord2 = [v5 bundleRecord];
  bundleIdentifier2 = [bundleRecord2 bundleIdentifier];

  return bundleIdentifier2;
}

- (void)setDefaultBrowser:(id)browser specifier:(id)specifier
{
  browserCopy = browser;
  specifierCopy = specifier;
  v16 = 0;
  v8 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:browserCopy allowPlaceholder:0 error:&v16];
  v9 = v16;
  objc_initWeak(&location, self);
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__PSSystemPolicyForApp_setDefaultBrowser_specifier___block_invoke;
  v12[3] = &unk_1E71DC2F8;
  objc_copyWeak(&v14, &location);
  v11 = browserCopy;
  v13 = v11;
  [defaultWorkspace setDefaultWebBrowserToApplicationRecord:v8 completionHandler:v12];

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

- (id)defaultMailApp:(id)app
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
    bundleRecord = [v5 bundleRecord];
    bundleIdentifier = [bundleRecord bundleIdentifier];
    *buf = 138543362;
    v15 = bundleIdentifier;
    _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "Default mail app is %{public}@", buf, 0xCu);
  }

  bundleRecord2 = [v5 bundleRecord];
  bundleIdentifier2 = [bundleRecord2 bundleIdentifier];

  return bundleIdentifier2;
}

- (void)setDefaultMailApp:(id)app specifier:(id)specifier
{
  appCopy = app;
  specifierCopy = specifier;
  v16 = 0;
  v8 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:appCopy allowPlaceholder:0 error:&v16];
  v9 = v16;
  objc_initWeak(&location, self);
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__PSSystemPolicyForApp_setDefaultMailApp_specifier___block_invoke;
  v12[3] = &unk_1E71DC2F8;
  objc_copyWeak(&v14, &location);
  v11 = appCopy;
  v13 = v11;
  [defaultWorkspace setDefaultMailClientToApplicationRecord:v8 completionHandler:v12];

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
    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v11 = [PRSettingsProviderClass shouldDisablePINPrivacyLockForBundleID:bundleIdentifier];

    if (v11)
    {
      mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
      managingOrganizationInformation = [mEMORY[0x1E69ADFB8] managingOrganizationInformation];

      v14 = [managingOrganizationInformation objectForKeyedSubscript:*MEMORY[0x1E69ADFD0]];
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
      managingOrganizationInformation = v21;
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

- (id)isTapToPayScreenLockEnabled:(id)enabled
{
  v4 = MEMORY[0x1E696AD98];
  PRSettingsProviderClass = getPRSettingsProviderClass();
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v7 = [v4 numberWithBool:{objc_msgSend(PRSettingsProviderClass, "getPINPrivacyLockForBundleID:", bundleIdentifier)}];

  return v7;
}

- (void)setTapToPayScreenLockEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  PRSettingsProviderClass = getPRSettingsProviderClass();
  bOOLValue = [enabledCopy BOOLValue];

  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  [PRSettingsProviderClass setPINPrivacyLock:bOOLValue forBundleID:bundleIdentifier];
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

- (id)isTapToPayAlwaysPlaySoundEnabled:(id)enabled
{
  v4 = MEMORY[0x1E696AD98];
  PRSettingsProviderClass = getPRSettingsProviderClass();
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v7 = [v4 numberWithBool:{objc_msgSend(PRSettingsProviderClass, "getAlwaysPlaySoundForBundleID:", bundleIdentifier)}];

  return v7;
}

- (void)setTapToPayAlwaysPlaySoundEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  PRSettingsProviderClass = getPRSettingsProviderClass();
  bOOLValue = [enabledCopy BOOLValue];

  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  [PRSettingsProviderClass setAlwaysPlaySound:bOOLValue forBundleID:bundleIdentifier];
}

- (id)driverKitSpecifiers
{
  v3 = [PSDriverPolicyForApp alloc];
  bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
  v5 = [(PSDriverPolicyForApp *)v3 initWithBundleIdentifier:bundleIdentifier];
  driverPolicy = self->_driverPolicy;
  self->_driverPolicy = v5;

  [(PSDriverPolicyForApp *)self->_driverPolicy setDelegate:self];
  v7 = self->_driverPolicy;

  return [(PSDriverPolicyForApp *)v7 specifiers];
}

- (void)observer:(id)observer updateSectionInfo:(id)info
{
  observerCopy = observer;
  infoCopy = info;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    sectionID = [infoCopy sectionID];
    bundleIdentifier = [(PSSystemPolicyForApp *)self bundleIdentifier];
    v10 = [sectionID isEqualToString:bundleIdentifier];

    if (v10)
    {
      delegate = [(PSSystemPolicyForApp *)self delegate];
      [delegate reloadSpecifiers];
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PSSystemPolicyForApp_observer_updateSectionInfo___block_invoke;
    block[3] = &unk_1E71DBCE8;
    block[4] = self;
    v13 = observerCopy;
    v14 = infoCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)reloadSpecifiers
{
  delegate = [(PSSystemPolicyForApp *)self delegate];
  [delegate reloadSpecifiers];
}

- (void)showController:(id)controller animate:(BOOL)animate
{
  animateCopy = animate;
  controllerCopy = controller;
  delegate = [(PSSystemPolicyForApp *)self delegate];
  [delegate showController:controllerCopy animate:animateCopy];
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