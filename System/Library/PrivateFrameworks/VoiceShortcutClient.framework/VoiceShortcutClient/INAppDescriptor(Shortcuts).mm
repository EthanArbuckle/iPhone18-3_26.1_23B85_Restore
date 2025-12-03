@interface INAppDescriptor(Shortcuts)
- (BOOL)isProbablySecondParty;
- (id)selfIfNotShortcutsApp;
- (id)serializedRepresentation;
- (uint64_t)hashForSmartPromptPurposes;
- (uint64_t)initWithBundleRecord:()Shortcuts;
- (uint64_t)initWithSerializedRepresentation:()Shortcuts;
- (uint64_t)isEqualForSmartPromptPurposes:()Shortcuts;
- (uint64_t)isShortcutsApp;
- (uint64_t)isThirdParty;
@end

@implementation INAppDescriptor(Shortcuts)

- (id)serializedRepresentation
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  localizedName = [self localizedName];
  [v2 setValue:localizedName forKey:@"Name"];

  bundleIdentifier = [self bundleIdentifier];
  [v2 setValue:bundleIdentifier forKey:@"BundleIdentifier"];

  extensionBundleIdentifier = [self extensionBundleIdentifier];
  [v2 setValue:extensionBundleIdentifier forKey:@"ExtensionBundleIdentifier"];

  teamIdentifier = [self teamIdentifier];
  [v2 setValue:teamIdentifier forKey:@"TeamIdentifier"];

  return v2;
}

- (id)selfIfNotShortcutsApp
{
  if ([self isShortcutsApp])
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (uint64_t)isShortcutsApp
{
  bundleIdentifier = [self bundleIdentifier];
  v2 = [bundleIdentifier isEqualToString:@"com.apple.shortcuts"];

  return v2;
}

- (BOOL)isProbablySecondParty
{
  applicationRecord = [self applicationRecord];
  v2 = applicationRecord;
  v3 = applicationRecord && [applicationRecord developerType] == -1;

  return v3;
}

- (uint64_t)isThirdParty
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.siri.TeaMinus", @"com.iosframeworksqa.Receptor", 0}];
  applicationRecord = [self applicationRecord];
  bundleIdentifier = [applicationRecord bundleIdentifier];
  v5 = [v2 containsObject:bundleIdentifier];

  if ((v5 & 1) == 0)
  {
    extensionBundleIdentifier = [self extensionBundleIdentifier];
    v8 = [extensionBundleIdentifier isEqualToString:@"com.apple.PBBridgeSupport.BridgeIntents"];

    if (v8)
    {
      v6 = 0;
      goto LABEL_12;
    }

    applicationRecord2 = [self applicationRecord];
    v10 = applicationRecord2;
    if (applicationRecord2)
    {
      if ([applicationRecord2 developerType] == 3)
      {
        v6 = 1;
LABEL_11:

        goto LABEL_12;
      }

      if ([v10 developerType] == 1)
      {
        v6 = 0;
        goto LABEL_11;
      }
    }

    bundleIdentifier2 = [self bundleIdentifier];
    lowercaseString = [bundleIdentifier2 lowercaseString];
    v13 = [lowercaseString hasPrefix:@"com.apple."];

    extensionBundleIdentifier2 = [self extensionBundleIdentifier];
    lowercaseString2 = [extensionBundleIdentifier2 lowercaseString];
    LOBYTE(lowercaseString) = [lowercaseString2 hasPrefix:@"com.apple."];

    v6 = (v13 | lowercaseString) ^ 1;
    goto LABEL_11;
  }

  v6 = 1;
LABEL_12:

  return v6 & 1;
}

- (uint64_t)isEqualForSmartPromptPurposes:()Shortcuts
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = v5;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      v8 = v6;

      bundleIdentifier = [self bundleIdentifier];
      if ([&unk_1F29314A0 containsObject:bundleIdentifier])
      {
        bundleIdentifier2 = [v8 bundleIdentifier];
        v7 = [&unk_1F29314A0 containsObject:bundleIdentifier2];
      }

      else
      {
        v7 = 0;
      }

      bundleIdentifier3 = [self bundleIdentifier];
      bundleIdentifier4 = [v8 bundleIdentifier];
      v13 = bundleIdentifier3;
      v14 = bundleIdentifier4;
      v15 = v14;
      if (v13 == v14)
      {
        v7 = 1;
      }

      else if (v13 && v14)
      {
        v7 |= [v13 isEqualToString:v14];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

- (uint64_t)hashForSmartPromptPurposes
{
  localizedName = [self localizedName];
  v3 = [localizedName hash];
  bundleIdentifier = [self bundleIdentifier];
  v5 = [bundleIdentifier hash] ^ v3;
  teamIdentifier = [self teamIdentifier];
  v7 = [teamIdentifier hash];

  return v5 ^ v7;
}

- (uint64_t)initWithSerializedRepresentation:()Shortcuts
{
  v4 = a3;
  v5 = [v4 objectForKey:@"Name"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v4 objectForKey:@"BundleIdentifier"];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v4 objectForKey:@"ExtensionBundleIdentifier"];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v4 objectForKey:@"TeamIdentifier"];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = [self initWithLocalizedName:v7 bundleIdentifier:v10 extensionBundleIdentifier:v13 counterpartIdentifiers:0 teamIdentifier:v16 supportedIntents:0 bundleURL:0 documentTypes:0];
  return v17;
}

- (uint64_t)initWithBundleRecord:()Shortcuts
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v13 = v6;

    if_extensionAttributesDictionary = [v13 if_extensionAttributesDictionary];
    v15 = MEMORY[0x1E695DFD8];
    v16 = [if_extensionAttributesDictionary objectForKeyedSubscript:*MEMORY[0x1E696E560]];
    v17 = [v15 setWithArray:v16];

    v18 = objc_alloc(MEMORY[0x1E696E720]);
    localizedName = [v13 localizedName];
    bundleIdentifier = [v13 bundleIdentifier];
    teamIdentifier = [v13 teamIdentifier];
    v22 = [v13 URL];

    selfCopy = [v18 initWithLocalizedName:localizedName bundleIdentifier:0 extensionBundleIdentifier:bundleIdentifier counterpartIdentifiers:0 teamIdentifier:teamIdentifier supportedIntents:v17 bundleURL:v22 documentTypes:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self = [self initWithApplicationRecord:v4];
      selfCopy = self;
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x1E696E720]);
      localizedName2 = [v4 localizedName];
      bundleIdentifier2 = [v4 bundleIdentifier];
      teamIdentifier2 = [v4 teamIdentifier];
      v12 = [v4 URL];
      selfCopy = [v8 initWithLocalizedName:localizedName2 bundleIdentifier:bundleIdentifier2 extensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:teamIdentifier2 supportedIntents:0 bundleURL:v12 documentTypes:0];
    }
  }

  return selfCopy;
}

@end