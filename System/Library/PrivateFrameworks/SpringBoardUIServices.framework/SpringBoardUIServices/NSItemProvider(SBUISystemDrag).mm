@interface NSItemProvider(SBUISystemDrag)
- (id)sbui_preferredApplicationBundleIdentifier;
- (id)sbui_requiredApplicationBundleIdentifier;
- (uint64_t)sbui_isIgnored;
- (void)sbui_setIgnored:()SBUISystemDrag;
- (void)sbui_setPreferredApplicationBundleIdentifier:()SBUISystemDrag;
- (void)sbui_setRequiredApplicationBundleIdentifier:()SBUISystemDrag;
@end

@implementation NSItemProvider(SBUISystemDrag)

- (id)sbui_preferredApplicationBundleIdentifier
{
  v2 = getPBItemMetadataKey();
  v3 = [a1 _metadataValueForKey:v2];
  v4 = [v3 objectForKeyedSubscript:@"SBUIPreferredApplicationBundleIdentifier"];

  return v4;
}

- (void)sbui_setPreferredApplicationBundleIdentifier:()SBUISystemDrag
{
  v4 = a3;
  v5 = getPBItemMetadataKey();
  v6 = [a1 _metadataValueForKey:v5];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
  }

  v11 = v9;

  [v11 setObject:v4 forKeyedSubscript:@"SBUIPreferredApplicationBundleIdentifier"];
  v10 = getPBItemMetadataKey();
  [a1 _setMetadataValue:v11 forKey:v10];
}

- (id)sbui_requiredApplicationBundleIdentifier
{
  v2 = getPBItemMetadataKey();
  v3 = [a1 _metadataValueForKey:v2];
  v4 = [v3 objectForKeyedSubscript:@"SBUIRequiredApplicationBundleIdentifier"];

  return v4;
}

- (void)sbui_setRequiredApplicationBundleIdentifier:()SBUISystemDrag
{
  v4 = a3;
  v5 = getPBItemMetadataKey();
  v6 = [a1 _metadataValueForKey:v5];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
  }

  v11 = v9;

  [v11 setObject:v4 forKeyedSubscript:@"SBUIRequiredApplicationBundleIdentifier"];
  v10 = getPBItemMetadataKey();
  [a1 _setMetadataValue:v11 forKey:v10];
}

- (uint64_t)sbui_isIgnored
{
  v2 = getPBItemMetadataKey();
  v3 = [a1 _metadataValueForKey:v2];
  v4 = [v3 objectForKeyedSubscript:@"SBUIIgnore"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)sbui_setIgnored:()SBUISystemDrag
{
  v5 = getPBItemMetadataKey();
  v6 = [a1 _metadataValueForKey:v5];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
  }

  v12 = v9;

  v10 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [v12 setObject:v10 forKeyedSubscript:@"SBUIIgnore"];

  v11 = getPBItemMetadataKey();
  [a1 _setMetadataValue:v12 forKey:v11];
}

@end