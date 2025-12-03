@interface PSSearchableItem
- (id)toAutomationDictionary;
- (id)toCSSearchableItem;
- (id)toManifestDictionary;
@end

@implementation PSSearchableItem

- (id)toCSSearchableItem
{
  v3 = objc_alloc(MEMORY[0x1E6964E90]);
  classIdentifier = [(PSSearchableItem *)self classIdentifier];
  v5 = [v3 initWithItemContentType:classIdentifier];

  name = [(PSSearchableItem *)self name];
  [v5 setSubject:name];

  contentDescription = [(PSSearchableItem *)self contentDescription];
  [v5 setContentDescription:contentDescription];

  keywords = [(PSSearchableItem *)self keywords];
  [v5 setKeywords:keywords];

  category = [(PSSearchableItem *)self category];

  if (category)
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

  rankingHint = [(PSSearchableItem *)self rankingHint];
  [v5 setRankingHint:rankingHint];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v15 = [@"com.apple.Preferences" isEqualToString:bundleIdentifier];

  if (v15)
  {
    name2 = [(PSSearchableItem *)self name];
    [v5 setTitle:name2];

    contentDescription2 = [(PSSearchableItem *)self contentDescription];
    [v5 setSubtitle:contentDescription2];
  }

  v18 = [(PSSearchableItem *)self url];
  v19 = [v18 hasPrefix:@"settings-navigation:"];

  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x1E695DFF8]);
    v21 = [(PSSearchableItem *)self url];
    v22 = [v20 initWithString:v21];

    pathComponents = [v22 pathComponents];
    host = [v22 host];
    if ([@"com.apple.Settings.Apps" isEqualToString:host])
    {
      v25 = [pathComponents count];

      if (v25 < 2)
      {
LABEL_11:

        goto LABEL_12;
      }

      host = [pathComponents objectAtIndexedSubscript:1];
      [v5 setRelatedAppBundleIdentifier:host];
    }

    goto LABEL_11;
  }

LABEL_12:
  v26 = objc_alloc(MEMORY[0x1E6964E80]);
  v27 = [(PSSearchableItem *)self url];
  classIdentifier2 = [(PSSearchableItem *)self classIdentifier];
  v29 = [v26 initWithUniqueIdentifier:v27 domainIdentifier:classIdentifier2 attributeSet:v5];

  return v29;
}

- (id)toManifestDictionary
{
  v3 = objc_opt_new();
  name = [(PSSearchableItem *)self name];
  v5 = [name length];

  if (v5)
  {
    name2 = [(PSSearchableItem *)self name];
    [v3 setObject:name2 forKeyedSubscript:@"label"];
  }

  v7 = [(PSSearchableItem *)self url];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(PSSearchableItem *)self url];
    [v3 setObject:v9 forKeyedSubscript:@"searchURL"];
  }

  category = [(PSSearchableItem *)self category];
  v11 = [category length];

  if (v11)
  {
    category2 = [(PSSearchableItem *)self category];
  }

  else
  {
    identifier = [(PSSearchableItem *)self identifier];
    v14 = [identifier length];

    if (!v14)
    {
      goto LABEL_10;
    }

    category2 = [(PSSearchableItem *)self identifier];
  }

  v15 = category2;
  [v3 setObject:category2 forKeyedSubscript:@"searchSectionID"];

LABEL_10:
  keywords = [(PSSearchableItem *)self keywords];
  v17 = [keywords count];

  if (v17)
  {
    keywords2 = [(PSSearchableItem *)self keywords];
    v19 = [keywords2 componentsJoinedByString:{@", "}];
    [v3 setObject:v19 forKeyedSubscript:@"keywords"];
  }

  requiredCapabilities = [(PSSearchableItem *)self requiredCapabilities];
  v21 = [requiredCapabilities count];

  if (v21)
  {
    requiredCapabilities2 = [(PSSearchableItem *)self requiredCapabilities];
    [v3 setObject:requiredCapabilities2 forKeyedSubscript:@"requiredCapabilities"];
  }

  requiredCapabilitiesOr = [(PSSearchableItem *)self requiredCapabilitiesOr];
  v24 = [requiredCapabilitiesOr count];

  if (v24)
  {
    requiredCapabilitiesOr2 = [(PSSearchableItem *)self requiredCapabilitiesOr];
    [v3 setObject:requiredCapabilitiesOr2 forKeyedSubscript:@"requiredCapabilitiesOr"];
  }

  contentDescription = [(PSSearchableItem *)self contentDescription];
  v27 = [contentDescription length];

  if (v27)
  {
    contentDescription2 = [(PSSearchableItem *)self contentDescription];
    [v3 setObject:contentDescription2 forKeyedSubscript:@"contentDescription"];
  }

  v29 = [v3 copy];

  return v29;
}

- (id)toAutomationDictionary
{
  v3 = objc_opt_new();
  name = [(PSSearchableItem *)self name];
  v5 = [name length];

  if (v5)
  {
    name2 = [(PSSearchableItem *)self name];
    [v3 setObject:name2 forKeyedSubscript:@"title"];
  }

  contentDescription = [(PSSearchableItem *)self contentDescription];
  v8 = [contentDescription length];

  if (v8)
  {
    contentDescription2 = [(PSSearchableItem *)self contentDescription];
    [v3 setObject:contentDescription2 forKeyedSubscript:@"subtitle"];
  }

  v10 = [(PSSearchableItem *)self url];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [(PSSearchableItem *)self url];
    [v3 setObject:v12 forKeyedSubscript:@"url"];
  }

  keywords = [(PSSearchableItem *)self keywords];
  v14 = [keywords count];

  if (v14)
  {
    keywords2 = [(PSSearchableItem *)self keywords];
    v16 = [keywords2 copy];
    [v3 setObject:v16 forKeyedSubscript:@"keywords"];
  }

  v17 = [v3 copy];

  return v17;
}

@end