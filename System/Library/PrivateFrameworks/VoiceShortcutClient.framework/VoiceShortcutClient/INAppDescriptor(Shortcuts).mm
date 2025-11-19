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
  v3 = [a1 localizedName];
  [v2 setValue:v3 forKey:@"Name"];

  v4 = [a1 bundleIdentifier];
  [v2 setValue:v4 forKey:@"BundleIdentifier"];

  v5 = [a1 extensionBundleIdentifier];
  [v2 setValue:v5 forKey:@"ExtensionBundleIdentifier"];

  v6 = [a1 teamIdentifier];
  [v2 setValue:v6 forKey:@"TeamIdentifier"];

  return v2;
}

- (id)selfIfNotShortcutsApp
{
  if ([a1 isShortcutsApp])
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (uint64_t)isShortcutsApp
{
  v1 = [a1 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.shortcuts"];

  return v2;
}

- (BOOL)isProbablySecondParty
{
  v1 = [a1 applicationRecord];
  v2 = v1;
  v3 = v1 && [v1 developerType] == -1;

  return v3;
}

- (uint64_t)isThirdParty
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.siri.TeaMinus", @"com.iosframeworksqa.Receptor", 0}];
  v3 = [a1 applicationRecord];
  v4 = [v3 bundleIdentifier];
  v5 = [v2 containsObject:v4];

  if ((v5 & 1) == 0)
  {
    v7 = [a1 extensionBundleIdentifier];
    v8 = [v7 isEqualToString:@"com.apple.PBBridgeSupport.BridgeIntents"];

    if (v8)
    {
      v6 = 0;
      goto LABEL_12;
    }

    v9 = [a1 applicationRecord];
    v10 = v9;
    if (v9)
    {
      if ([v9 developerType] == 3)
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

    v11 = [a1 bundleIdentifier];
    v12 = [v11 lowercaseString];
    v13 = [v12 hasPrefix:@"com.apple."];

    v14 = [a1 extensionBundleIdentifier];
    v15 = [v14 lowercaseString];
    LOBYTE(v12) = [v15 hasPrefix:@"com.apple."];

    v6 = (v13 | v12) ^ 1;
    goto LABEL_11;
  }

  v6 = 1;
LABEL_12:

  return v6 & 1;
}

- (uint64_t)isEqualForSmartPromptPurposes:()Shortcuts
{
  v4 = a3;
  if (a1 == v4)
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

      v9 = [a1 bundleIdentifier];
      if ([&unk_1F29314A0 containsObject:v9])
      {
        v10 = [v8 bundleIdentifier];
        v7 = [&unk_1F29314A0 containsObject:v10];
      }

      else
      {
        v7 = 0;
      }

      v11 = [a1 bundleIdentifier];
      v12 = [v8 bundleIdentifier];
      v13 = v11;
      v14 = v12;
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
  v2 = [a1 localizedName];
  v3 = [v2 hash];
  v4 = [a1 bundleIdentifier];
  v5 = [v4 hash] ^ v3;
  v6 = [a1 teamIdentifier];
  v7 = [v6 hash];

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

  v17 = [a1 initWithLocalizedName:v7 bundleIdentifier:v10 extensionBundleIdentifier:v13 counterpartIdentifiers:0 teamIdentifier:v16 supportedIntents:0 bundleURL:0 documentTypes:0];
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

    v14 = [v13 if_extensionAttributesDictionary];
    v15 = MEMORY[0x1E695DFD8];
    v16 = [v14 objectForKeyedSubscript:*MEMORY[0x1E696E560]];
    v17 = [v15 setWithArray:v16];

    v18 = objc_alloc(MEMORY[0x1E696E720]);
    v19 = [v13 localizedName];
    v20 = [v13 bundleIdentifier];
    v21 = [v13 teamIdentifier];
    v22 = [v13 URL];

    v7 = [v18 initWithLocalizedName:v19 bundleIdentifier:0 extensionBundleIdentifier:v20 counterpartIdentifiers:0 teamIdentifier:v21 supportedIntents:v17 bundleURL:v22 documentTypes:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a1 = [a1 initWithApplicationRecord:v4];
      v7 = a1;
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x1E696E720]);
      v9 = [v4 localizedName];
      v10 = [v4 bundleIdentifier];
      v11 = [v4 teamIdentifier];
      v12 = [v4 URL];
      v7 = [v8 initWithLocalizedName:v9 bundleIdentifier:v10 extensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:v11 supportedIntents:0 bundleURL:v12 documentTypes:0];
    }
  }

  return v7;
}

@end