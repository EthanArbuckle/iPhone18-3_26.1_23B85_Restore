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
  v3 = [self _metadataValueForKey:v2];
  v4 = [v3 objectForKeyedSubscript:@"SBUIPreferredApplicationBundleIdentifier"];

  return v4;
}

- (void)sbui_setPreferredApplicationBundleIdentifier:()SBUISystemDrag
{
  v4 = a3;
  v5 = getPBItemMetadataKey();
  v6 = [self _metadataValueForKey:v5];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    dictionary = v7;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v11 = dictionary;

  [v11 setObject:v4 forKeyedSubscript:@"SBUIPreferredApplicationBundleIdentifier"];
  v10 = getPBItemMetadataKey();
  [self _setMetadataValue:v11 forKey:v10];
}

- (id)sbui_requiredApplicationBundleIdentifier
{
  v2 = getPBItemMetadataKey();
  v3 = [self _metadataValueForKey:v2];
  v4 = [v3 objectForKeyedSubscript:@"SBUIRequiredApplicationBundleIdentifier"];

  return v4;
}

- (void)sbui_setRequiredApplicationBundleIdentifier:()SBUISystemDrag
{
  v4 = a3;
  v5 = getPBItemMetadataKey();
  v6 = [self _metadataValueForKey:v5];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    dictionary = v7;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v11 = dictionary;

  [v11 setObject:v4 forKeyedSubscript:@"SBUIRequiredApplicationBundleIdentifier"];
  v10 = getPBItemMetadataKey();
  [self _setMetadataValue:v11 forKey:v10];
}

- (uint64_t)sbui_isIgnored
{
  v2 = getPBItemMetadataKey();
  v3 = [self _metadataValueForKey:v2];
  v4 = [v3 objectForKeyedSubscript:@"SBUIIgnore"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)sbui_setIgnored:()SBUISystemDrag
{
  v5 = getPBItemMetadataKey();
  v6 = [self _metadataValueForKey:v5];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    dictionary = v7;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v12 = dictionary;

  v10 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [v12 setObject:v10 forKeyedSubscript:@"SBUIIgnore"];

  v11 = getPBItemMetadataKey();
  [self _setMetadataValue:v12 forKey:v11];
}

@end