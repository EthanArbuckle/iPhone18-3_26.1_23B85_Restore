@interface WFAutoShortcutsPreferences
+ (id)appDescriptorWithBundleIdentifier:(id)a3;
+ (id)defaultSettingsForAppDescriptor:(id)a3;
+ (int)crossPlatformHashForAppDescriptor:(id)a3;
- (WFAutoShortcutsPreferences)initWithAppDescriptor:(id)a3 isSiriEnabled:(BOOL)a4 isSpotlightEnabled:(BOOL)a5 disabledAutoShortcuts:(id)a6 cloudKitMetadata:(id)a7 lastSyncedHash:(int64_t)a8;
- (WFAutoShortcutsPreferences)initWithCoder:(id)a3;
- (int64_t)computedSyncHash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAutoShortcutsPreferences

- (int64_t)computedSyncHash
{
  v3 = objc_opt_new();
  v4 = [(WFAutoShortcutsPreferences *)self appDescriptor];

  if (v4)
  {
    v5 = [(WFAutoShortcutsPreferences *)self appDescriptor];
    v6 = [v3 combineInteger:{+[WFAutoShortcutsPreferences crossPlatformHashForAppDescriptor:](WFAutoShortcutsPreferences, "crossPlatformHashForAppDescriptor:", v5)}];
  }

  v7 = [(WFAutoShortcutsPreferences *)self disabledAutoShortcuts];

  if (v7)
  {
    v8 = [(WFAutoShortcutsPreferences *)self disabledAutoShortcuts];
    v9 = [v8 allObjects];
    v10 = [v9 sortedArrayUsingSelector:sel_compare_];

    v11 = [v3 combineContentsOfPropertyListObject:v10];
  }

  v12 = [v3 combineBool:{-[WFAutoShortcutsPreferences isSiriEnabled](self, "isSiriEnabled")}];
  v13 = [v3 combineBool:{-[WFAutoShortcutsPreferences isSpotlightEnabled](self, "isSpotlightEnabled")}];
  v14 = [v3 finalize];

  return v14;
}

- (WFAutoShortcutsPreferences)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appDescriptor"];
  v6 = [v4 decodeBoolForKey:@"isSiriEnabled"];
  v7 = [v4 decodeBoolForKey:@"isSpotlightEnabled"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"disabledAutoShortcuts"];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cloudKitMetadata"];
  v13 = [v4 decodeInt64ForKey:@"lastSyncedHash"];

  v14 = [(WFAutoShortcutsPreferences *)self initWithAppDescriptor:v5 isSiriEnabled:v6 isSpotlightEnabled:v7 disabledAutoShortcuts:v11 cloudKitMetadata:v12 lastSyncedHash:v13];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(WFAutoShortcutsPreferences *)self appDescriptor];
  [v7 encodeObject:v4 forKey:@"appDescriptor"];

  [v7 encodeBool:-[WFAutoShortcutsPreferences isSiriEnabled](self forKey:{"isSiriEnabled"), @"isSiriEnabled"}];
  [v7 encodeBool:-[WFAutoShortcutsPreferences isSpotlightEnabled](self forKey:{"isSpotlightEnabled"), @"isSpotlightEnabled"}];
  v5 = [(WFAutoShortcutsPreferences *)self disabledAutoShortcuts];
  [v7 encodeObject:v5 forKey:@"disabledAutoShortcuts"];

  v6 = [(WFAutoShortcutsPreferences *)self cloudKitMetadata];
  [v7 encodeObject:v6 forKey:@"cloudKitMetadata"];

  [v7 encodeInt64:-[WFAutoShortcutsPreferences lastSyncedHash](self forKey:{"lastSyncedHash"), @"lastSyncedHash"}];
}

- (WFAutoShortcutsPreferences)initWithAppDescriptor:(id)a3 isSiriEnabled:(BOOL)a4 isSpotlightEnabled:(BOOL)a5 disabledAutoShortcuts:(id)a6 cloudKitMetadata:(id)a7 lastSyncedHash:(int64_t)a8
{
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v22.receiver = self;
  v22.super_class = WFAutoShortcutsPreferences;
  v18 = [(WFAutoShortcutsPreferences *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_appDescriptor, a3);
    v19->_isSiriEnabled = a4;
    v19->_isSpotlightEnabled = a5;
    objc_storeStrong(&v19->_disabledAutoShortcuts, a6);
    objc_storeStrong(&v19->_cloudKitMetadata, a7);
    v19->_lastSyncedHash = a8;
    v20 = v19;
  }

  return v19;
}

+ (int)crossPlatformHashForAppDescriptor:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"WFAutoShortcutsPreferences.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"appDescriptor"}];
  }

  v6 = objc_opt_new();
  v7 = [v5 applicationRecord];
  v8 = [v7 infoDictionary];
  v9 = [v8 objectForKey:@"CFBundleDisplayName" ofClass:objc_opt_class()];
  if (!v9)
  {
    v9 = [v8 objectForKey:@"CFBundleName" ofClass:objc_opt_class()];
  }

  v10 = [v9 hash];
  v11 = [v5 teamIdentifier];
  v12 = [v11 hash];

  v13 = [v6 combineInteger:v10];
  v14 = [v6 combineInteger:v12];
  LODWORD(v10) = [v6 finalize];

  return v10;
}

+ (id)appDescriptorWithBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x1E69635F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];

  v6 = [objc_alloc(MEMORY[0x1E696E720]) initWithApplicationRecord:v5];

  return v6;
}

+ (id)defaultSettingsForAppDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [v5 lowercaseString];
  v7 = [v6 hasPrefix:@"com.apple."];

  v8 = [a1 alloc];
  v9 = objc_opt_new();
  v10 = [v8 initWithAppDescriptor:v4 isSiriEnabled:v7 isSpotlightEnabled:1 disabledAutoShortcuts:v9 cloudKitMetadata:0 lastSyncedHash:0x7FFFFFFFFFFFFFFFLL];

  return v10;
}

@end