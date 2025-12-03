@interface INIntentDescriptor(Shortcuts)
- (id)_displayableAppDescriptor;
- (id)serializedRepresentation;
- (uint64_t)initWithSerializedRepresentation:()Shortcuts;
- (uint64_t)isEqualForSmartPromptPurposes:()Shortcuts;
- (unint64_t)hashForSmartPromptPurposes;
@end

@implementation INIntentDescriptor(Shortcuts)

- (uint64_t)isEqualForSmartPromptPurposes:()Shortcuts
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16.receiver = self;
      v16.super_class = &off_1F294BE08;
      v5 = objc_msgSendSuper2(&v16, sel_isEqualForSmartPromptPurposes_, v4);
      v6 = v4;
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = v7;

      if (v5)
      {
        displayableBundleIdentifier = [self displayableBundleIdentifier];
        displayableBundleIdentifier2 = [v9 displayableBundleIdentifier];
        v12 = displayableBundleIdentifier;
        v13 = displayableBundleIdentifier2;
        v14 = v13;
        if (v12 == v13)
        {
          v8 = 1;
        }

        else
        {
          v8 = 0;
          if (v12 && v13)
          {
            v8 = [v12 isEqualToString:v13];
          }
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hashForSmartPromptPurposes
{
  v6.receiver = self;
  v6.super_class = &off_1F294BE08;
  v2 = objc_msgSendSuper2(&v6, sel_hashForSmartPromptPurposes);
  displayableBundleIdentifier = [self displayableBundleIdentifier];
  v4 = [displayableBundleIdentifier hash];

  return v4 ^ v2;
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

  v17 = [v4 objectForKey:@"IntentClassName"];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = [self initWithIntentClassName:v19 localizedName:v7 bundleIdentifier:v10 displayableBundleIdentifier:0 extensionBundleIdentifier:v13 uiExtensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:v16 preferredCallProvider:0 supportedIntents:0 bundleURL:0 documentTypes:0];
  return v20;
}

- (id)serializedRepresentation
{
  v6.receiver = self;
  v6.super_class = &off_1F294BE08;
  v2 = objc_msgSendSuper2(&v6, sel_serializedRepresentation);
  v3 = [v2 mutableCopy];

  intentClassName = [self intentClassName];
  [v3 setValue:intentClassName forKey:@"IntentClassName"];

  return v3;
}

- (id)_displayableAppDescriptor
{
  v17 = *MEMORY[0x1E69E9840];
  bundleIdentifier = [self bundleIdentifier];
  displayableBundleIdentifier = [self displayableBundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:displayableBundleIdentifier];

  if (v4)
  {
    appDescriptor = [self appDescriptor];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E69635F8]);
    displayableBundleIdentifier2 = [self displayableBundleIdentifier];
    v14 = 0;
    v8 = [v6 initWithBundleIdentifier:displayableBundleIdentifier2 allowPlaceholder:0 error:&v14];
    v9 = v14;

    if (v8)
    {
      v10 = [objc_alloc(MEMORY[0x1E696E720]) initWithApplicationRecord:v8];
      extensionBundleIdentifier = [self extensionBundleIdentifier];
      appDescriptor = [v10 descriptorWithExtensionBundleIdentifier:extensionBundleIdentifier];
    }

    else
    {
      v10 = os_log_create("com.apple.siri", "Intents");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v9;
        _os_log_error_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_ERROR, "Unable to get an app record for the displayable app, returning the launchable app instead. (%@)", buf, 0xCu);
      }

      appDescriptor = [self appDescriptor];
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return appDescriptor;
}

@end