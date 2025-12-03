@interface WFAutoShortcutsPreferences
+ (id)appDescriptorWithBundleIdentifier:(id)identifier;
+ (id)defaultSettingsForAppDescriptor:(id)descriptor;
+ (int)crossPlatformHashForAppDescriptor:(id)descriptor;
- (WFAutoShortcutsPreferences)initWithAppDescriptor:(id)descriptor isSiriEnabled:(BOOL)enabled isSpotlightEnabled:(BOOL)spotlightEnabled disabledAutoShortcuts:(id)shortcuts cloudKitMetadata:(id)metadata lastSyncedHash:(int64_t)hash;
- (WFAutoShortcutsPreferences)initWithCoder:(id)coder;
- (int64_t)computedSyncHash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAutoShortcutsPreferences

- (int64_t)computedSyncHash
{
  v3 = objc_opt_new();
  appDescriptor = [(WFAutoShortcutsPreferences *)self appDescriptor];

  if (appDescriptor)
  {
    appDescriptor2 = [(WFAutoShortcutsPreferences *)self appDescriptor];
    v6 = [v3 combineInteger:{+[WFAutoShortcutsPreferences crossPlatformHashForAppDescriptor:](WFAutoShortcutsPreferences, "crossPlatformHashForAppDescriptor:", appDescriptor2)}];
  }

  disabledAutoShortcuts = [(WFAutoShortcutsPreferences *)self disabledAutoShortcuts];

  if (disabledAutoShortcuts)
  {
    disabledAutoShortcuts2 = [(WFAutoShortcutsPreferences *)self disabledAutoShortcuts];
    allObjects = [disabledAutoShortcuts2 allObjects];
    v10 = [allObjects sortedArrayUsingSelector:sel_compare_];

    v11 = [v3 combineContentsOfPropertyListObject:v10];
  }

  v12 = [v3 combineBool:{-[WFAutoShortcutsPreferences isSiriEnabled](self, "isSiriEnabled")}];
  v13 = [v3 combineBool:{-[WFAutoShortcutsPreferences isSpotlightEnabled](self, "isSpotlightEnabled")}];
  v14 = [v3 finalize];

  return v14;
}

- (WFAutoShortcutsPreferences)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appDescriptor"];
  v6 = [coderCopy decodeBoolForKey:@"isSiriEnabled"];
  v7 = [coderCopy decodeBoolForKey:@"isSpotlightEnabled"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"disabledAutoShortcuts"];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloudKitMetadata"];
  v13 = [coderCopy decodeInt64ForKey:@"lastSyncedHash"];

  v14 = [(WFAutoShortcutsPreferences *)self initWithAppDescriptor:v5 isSiriEnabled:v6 isSpotlightEnabled:v7 disabledAutoShortcuts:v11 cloudKitMetadata:v12 lastSyncedHash:v13];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appDescriptor = [(WFAutoShortcutsPreferences *)self appDescriptor];
  [coderCopy encodeObject:appDescriptor forKey:@"appDescriptor"];

  [coderCopy encodeBool:-[WFAutoShortcutsPreferences isSiriEnabled](self forKey:{"isSiriEnabled"), @"isSiriEnabled"}];
  [coderCopy encodeBool:-[WFAutoShortcutsPreferences isSpotlightEnabled](self forKey:{"isSpotlightEnabled"), @"isSpotlightEnabled"}];
  disabledAutoShortcuts = [(WFAutoShortcutsPreferences *)self disabledAutoShortcuts];
  [coderCopy encodeObject:disabledAutoShortcuts forKey:@"disabledAutoShortcuts"];

  cloudKitMetadata = [(WFAutoShortcutsPreferences *)self cloudKitMetadata];
  [coderCopy encodeObject:cloudKitMetadata forKey:@"cloudKitMetadata"];

  [coderCopy encodeInt64:-[WFAutoShortcutsPreferences lastSyncedHash](self forKey:{"lastSyncedHash"), @"lastSyncedHash"}];
}

- (WFAutoShortcutsPreferences)initWithAppDescriptor:(id)descriptor isSiriEnabled:(BOOL)enabled isSpotlightEnabled:(BOOL)spotlightEnabled disabledAutoShortcuts:(id)shortcuts cloudKitMetadata:(id)metadata lastSyncedHash:(int64_t)hash
{
  descriptorCopy = descriptor;
  shortcutsCopy = shortcuts;
  metadataCopy = metadata;
  v22.receiver = self;
  v22.super_class = WFAutoShortcutsPreferences;
  v18 = [(WFAutoShortcutsPreferences *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_appDescriptor, descriptor);
    v19->_isSiriEnabled = enabled;
    v19->_isSpotlightEnabled = spotlightEnabled;
    objc_storeStrong(&v19->_disabledAutoShortcuts, shortcuts);
    objc_storeStrong(&v19->_cloudKitMetadata, metadata);
    v19->_lastSyncedHash = hash;
    v20 = v19;
  }

  return v19;
}

+ (int)crossPlatformHashForAppDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (!descriptorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAutoShortcutsPreferences.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"appDescriptor"}];
  }

  v6 = objc_opt_new();
  applicationRecord = [descriptorCopy applicationRecord];
  infoDictionary = [applicationRecord infoDictionary];
  v9 = [infoDictionary objectForKey:@"CFBundleDisplayName" ofClass:objc_opt_class()];
  if (!v9)
  {
    v9 = [infoDictionary objectForKey:@"CFBundleName" ofClass:objc_opt_class()];
  }

  v10 = [v9 hash];
  teamIdentifier = [descriptorCopy teamIdentifier];
  v12 = [teamIdentifier hash];

  v13 = [v6 combineInteger:v10];
  v14 = [v6 combineInteger:v12];
  LODWORD(v10) = [v6 finalize];

  return v10;
}

+ (id)appDescriptorWithBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E69635F8];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:0];

  v6 = [objc_alloc(MEMORY[0x1E696E720]) initWithApplicationRecord:v5];

  return v6;
}

+ (id)defaultSettingsForAppDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  bundleIdentifier = [descriptorCopy bundleIdentifier];
  lowercaseString = [bundleIdentifier lowercaseString];
  v7 = [lowercaseString hasPrefix:@"com.apple."];

  v8 = [self alloc];
  v9 = objc_opt_new();
  v10 = [v8 initWithAppDescriptor:descriptorCopy isSiriEnabled:v7 isSpotlightEnabled:1 disabledAutoShortcuts:v9 cloudKitMetadata:0 lastSyncedHash:0x7FFFFFFFFFFFFFFFLL];

  return v10;
}

@end