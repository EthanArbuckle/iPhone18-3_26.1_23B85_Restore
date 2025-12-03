@interface LNIntentsValueType(ContentItem)
- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem;
- (id)wf_contentItemFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:teamIdentifier:disclosureLevel:;
@end

@implementation LNIntentsValueType(ContentItem)

- (id)wf_contentItemFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:teamIdentifier:disclosureLevel:
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  typeIdentifier = [self typeIdentifier];
  value = [v12 value];
  v18 = value;
  if (typeIdentifier <= 11)
  {
    if (typeIdentifier)
    {
      if (typeIdentifier != 3)
      {
LABEL_11:
        if (value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v20 = objc_alloc(MEMORY[0x1E696E720]);
          if (v14)
          {
            v21 = v14;
          }

          else
          {
            v21 = v13;
          }

          v22 = [v20 initWithLocalizedName:0 bundleIdentifier:v21 extensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:v15 supportedIntents:0 bundleURL:0 documentTypes:0];
          v23 = [MEMORY[0x1E6996C90] locationWithAppDescriptor:v22];
          v24 = MEMORY[0x1E6996D58];
          wf_fileRepresentation = [v18 wf_fileRepresentation];
          v26 = [v24 itemWithFile:wf_fileRepresentation origin:v23 disclosureLevel:a7];
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_40;
      }

      if (value)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v34 = v19;

      v18 = [MEMORY[0x1E6996D00] cnContactWithINPerson:v34];

      v33 = MEMORY[0x1E6996D08];
    }

    else
    {
      if (value)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v18;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 0;
      }

      v32 = v29;

      v18 = [objc_alloc(MEMORY[0x1E6996C80]) initWithBundleIdentifier:v32 localizedName:0];
      v33 = MEMORY[0x1E6996C88];
    }

    v26 = [v33 itemWithObject:v18];
  }

  else
  {
    if (typeIdentifier == 14)
    {
      if (value)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v18;
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
      }

      v30 = v27;

      v31 = MEMORY[0x1E6996DA8];
    }

    else
    {
      if (typeIdentifier != 13)
      {
        goto LABEL_11;
      }

      if (value)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = v18;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }

      v30 = v28;

      v31 = MEMORY[0x1E6996EF0];
    }

    v26 = [v31 itemWithObject:v30];
    v18 = v30;
  }

LABEL_40:

  return v26;
}

- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem
{
  typeIdentifier = [self typeIdentifier];
  v2 = 0x1E6996E50;
  v3 = 0x1E6996EF0uLL;
  v4 = 0x1E6996DA8uLL;
  if (typeIdentifier != 14)
  {
    v4 = 0x1E6996E50uLL;
  }

  if (typeIdentifier != 13)
  {
    v3 = v4;
  }

  if (typeIdentifier == 3)
  {
    v2 = 0x1E6996D08;
  }

  if (!typeIdentifier)
  {
    v2 = 0x1E6996C88;
  }

  if (typeIdentifier > 12)
  {
    v2 = v3;
  }

  v5 = *v2;
  v6 = objc_opt_class();

  return v6;
}

@end