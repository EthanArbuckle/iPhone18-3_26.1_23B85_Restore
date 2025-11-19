@interface PSSearchableItem
- (id)toAutomationDictionary;
- (id)toCSSearchableItem;
- (id)toManifestDictionary;
@end

@implementation PSSearchableItem

- (id)toCSSearchableItem
{
  v3 = objc_alloc(MEMORY[0x1E6964E90]);
  v4 = [(PSSearchableItem *)self classIdentifier];
  v5 = [v3 initWithItemContentType:v4];

  v6 = [(PSSearchableItem *)self name];
  [v5 setSubject:v6];

  v7 = [(PSSearchableItem *)self contentDescription];
  [v5 setContentDescription:v7];

  v8 = [(PSSearchableItem *)self keywords];
  [v5 setKeywords:v8];

  v9 = [(PSSearchableItem *)self category];

  if (v9)
  {
    [(PSSearchableItem *)self category];
  }

  else
  {
    [(PSSearchableItem *)self identifier];
  }
  v10 = ;
  [v5 setTheme:v10];

  v11 = [(PSSearchableItem *)self url];
  [v5 setIdentifier:v11];

  v12 = [(PSSearchableItem *)self rankingHint];
  [v5 setRankingHint:v12];

  v13 = [MEMORY[0x1E696AAE8] mainBundle];
  v14 = [v13 bundleIdentifier];
  v15 = [@"com.apple.Preferences" isEqualToString:v14];

  if (v15)
  {
    v16 = [(PSSearchableItem *)self name];
    [v5 setTitle:v16];

    v17 = [(PSSearchableItem *)self contentDescription];
    [v5 setSubtitle:v17];
  }

  v18 = [(PSSearchableItem *)self url];
  v19 = [v18 hasPrefix:@"settings-navigation:"];

  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x1E695DFF8]);
    v21 = [(PSSearchableItem *)self url];
    v22 = [v20 initWithString:v21];

    v23 = [v22 pathComponents];
    v24 = [v22 host];
    if ([@"com.apple.Settings.Apps" isEqualToString:v24])
    {
      v25 = [v23 count];

      if (v25 < 2)
      {
LABEL_11:

        goto LABEL_12;
      }

      v24 = [v23 objectAtIndexedSubscript:1];
      [v5 setRelatedAppBundleIdentifier:v24];
    }

    goto LABEL_11;
  }

LABEL_12:
  v26 = objc_alloc(MEMORY[0x1E6964E80]);
  v27 = [(PSSearchableItem *)self url];
  v28 = [(PSSearchableItem *)self classIdentifier];
  v29 = [v26 initWithUniqueIdentifier:v27 domainIdentifier:v28 attributeSet:v5];

  return v29;
}

- (id)toManifestDictionary
{
  v3 = objc_opt_new();
  v4 = [(PSSearchableItem *)self name];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(PSSearchableItem *)self name];
    [v3 setObject:v6 forKeyedSubscript:@"label"];
  }

  v7 = [(PSSearchableItem *)self url];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(PSSearchableItem *)self url];
    [v3 setObject:v9 forKeyedSubscript:@"searchURL"];
  }

  v10 = [(PSSearchableItem *)self category];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [(PSSearchableItem *)self category];
  }

  else
  {
    v13 = [(PSSearchableItem *)self identifier];
    v14 = [v13 length];

    if (!v14)
    {
      goto LABEL_10;
    }

    v12 = [(PSSearchableItem *)self identifier];
  }

  v15 = v12;
  [v3 setObject:v12 forKeyedSubscript:@"searchSectionID"];

LABEL_10:
  v16 = [(PSSearchableItem *)self keywords];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [(PSSearchableItem *)self keywords];
    v19 = [v18 componentsJoinedByString:{@", "}];
    [v3 setObject:v19 forKeyedSubscript:@"keywords"];
  }

  v20 = [(PSSearchableItem *)self requiredCapabilities];
  v21 = [v20 count];

  if (v21)
  {
    v22 = [(PSSearchableItem *)self requiredCapabilities];
    [v3 setObject:v22 forKeyedSubscript:@"requiredCapabilities"];
  }

  v23 = [(PSSearchableItem *)self requiredCapabilitiesOr];
  v24 = [v23 count];

  if (v24)
  {
    v25 = [(PSSearchableItem *)self requiredCapabilitiesOr];
    [v3 setObject:v25 forKeyedSubscript:@"requiredCapabilitiesOr"];
  }

  v26 = [(PSSearchableItem *)self contentDescription];
  v27 = [v26 length];

  if (v27)
  {
    v28 = [(PSSearchableItem *)self contentDescription];
    [v3 setObject:v28 forKeyedSubscript:@"contentDescription"];
  }

  v29 = [v3 copy];

  return v29;
}

- (id)toAutomationDictionary
{
  v3 = objc_opt_new();
  v4 = [(PSSearchableItem *)self name];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(PSSearchableItem *)self name];
    [v3 setObject:v6 forKeyedSubscript:@"title"];
  }

  v7 = [(PSSearchableItem *)self contentDescription];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(PSSearchableItem *)self contentDescription];
    [v3 setObject:v9 forKeyedSubscript:@"subtitle"];
  }

  v10 = [(PSSearchableItem *)self url];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [(PSSearchableItem *)self url];
    [v3 setObject:v12 forKeyedSubscript:@"url"];
  }

  v13 = [(PSSearchableItem *)self keywords];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [(PSSearchableItem *)self keywords];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"keywords"];
  }

  v17 = [v3 copy];

  return v17;
}

@end