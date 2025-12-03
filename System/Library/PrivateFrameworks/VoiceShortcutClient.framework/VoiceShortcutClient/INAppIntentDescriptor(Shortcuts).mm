@interface INAppIntentDescriptor(Shortcuts)
- (id)serializedRepresentation;
- (uint64_t)initWithFullyQualifiedActionIdentifier:()Shortcuts;
- (uint64_t)initWithSerializedRepresentation:()Shortcuts;
- (uint64_t)isEqualForSmartPromptPurposes:()Shortcuts;
- (unint64_t)hashForSmartPromptPurposes;
@end

@implementation INAppIntentDescriptor(Shortcuts)

- (id)serializedRepresentation
{
  v6.receiver = self;
  v6.super_class = &off_1F294C268;
  v2 = objc_msgSendSuper2(&v6, sel_serializedRepresentation);
  v3 = [v2 mutableCopy];

  intentIdentifier = [self intentIdentifier];
  [v3 setValue:intentIdentifier forKey:@"AppIntentIdentifier"];

  return v3;
}

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
      v16.super_class = &off_1F294C268;
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
        intentIdentifier = [self intentIdentifier];
        intentIdentifier2 = [v9 intentIdentifier];
        v12 = intentIdentifier;
        v13 = intentIdentifier2;
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
  v6.super_class = &off_1F294C268;
  v2 = objc_msgSendSuper2(&v6, sel_hashForSmartPromptPurposes);
  intentIdentifier = [self intentIdentifier];
  v4 = [intentIdentifier hash];

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

  v17 = [v4 objectForKey:@"AppIntentIdentifier"];
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

  v20 = [self initWithIntentIdentifier:v19 localizedName:v7 bundleIdentifier:v10 extensionBundleIdentifier:v13 counterpartIdentifiers:0 teamIdentifier:v16 supportedIntents:0 supportedEntities:0 bundleURL:0 documentTypes:0];
  return v20;
}

- (uint64_t)initWithFullyQualifiedActionIdentifier:()Shortcuts
{
  v4 = a3;
  v5 = MEMORY[0x1E6963620];
  bundleIdentifier = [v4 bundleIdentifier];
  v7 = [v5 bundleRecordWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];

  v8 = v7;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    containingBundleRecord = [v8 containingBundleRecord];
    v10 = 0;
    v11 = v8;
    if (!containingBundleRecord)
    {
LABEL_9:

      bundleIdentifier3 = 0;
      containingBundleRecord = 0;
      if (v10)
      {
        goto LABEL_10;
      }

LABEL_8:
      bundleIdentifier2 = [v11 bundleIdentifier];
      goto LABEL_11;
    }
  }

  else
  {

    containingBundleRecord = v8;
    v11 = 0;
    v10 = 1;
    if (!containingBundleRecord)
    {
      goto LABEL_9;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  bundleIdentifier3 = [containingBundleRecord bundleIdentifier];
  if ((v10 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  bundleIdentifier2 = 0;
LABEL_11:
  if (!(bundleIdentifier3 | bundleIdentifier2))
  {
    bundleIdentifier3 = [v4 bundleIdentifier];
  }

  actionIdentifier = [v4 actionIdentifier];
  localizedName = [containingBundleRecord localizedName];
  teamIdentifier = [containingBundleRecord teamIdentifier];
  v17 = [self initWithIntentIdentifier:actionIdentifier localizedName:localizedName bundleIdentifier:bundleIdentifier3 extensionBundleIdentifier:bundleIdentifier2 counterpartIdentifiers:0 teamIdentifier:teamIdentifier supportedIntents:0 supportedEntities:0 bundleURL:0 documentTypes:0];

  return v17;
}

@end