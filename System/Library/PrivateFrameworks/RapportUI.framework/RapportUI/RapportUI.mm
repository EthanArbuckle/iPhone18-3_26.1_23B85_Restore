void *RPUILocalizedString(void *a1)
{
  v1 = RPUILocalizedString_sOnce;
  v2 = a1;
  if (v1 != -1)
  {
    RPUILocalizedString_cold_1();
  }

  v3 = [RPUILocalizedString_sBundle localizedStringForKey:v2 value:0 table:@"Localizable"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

uint64_t __RPUILocalizedString_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.RapportUI"];
  v1 = RPUILocalizedString_sBundle;
  RPUILocalizedString_sBundle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id RPUILocalizedStringF(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = RPUILocalizedStringV(a1, &a9);

  return v9;
}

void *RPUILocalizedStringV(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a1;
  v5 = [v3 alloc];
  v6 = RPUILocalizedString(v4);
  v7 = [v5 initWithFormat:v6 arguments:a2];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v8;
}

id RPImageForDeviceModel(CFStringRef inTag, int *a2)
{
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F50], inTag, 0);
  v4 = PreferredIdentifierForTag;
  if (!PreferredIdentifierForTag)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_27;
  }

  PreferredIdentifierForTag = UTTypeCopyDeclaration(PreferredIdentifierForTag);
  v5 = PreferredIdentifierForTag;
  v6 = 0;
  if (!PreferredIdentifierForTag)
  {
LABEL_27:
    v12 = 0;
    v11 = -6727;
    goto LABEL_15;
  }

  v7 = *MEMORY[0x277CC20A0];
  v8 = *MEMORY[0x277CC2040];
  v9 = v4;
  while (1)
  {
    v10 = v6;
    v6 = [(__CFDictionary *)v5 objectForKeyedSubscript:v7];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v4 = [(__CFDictionary *)v5 objectForKeyedSubscript:v8];

    if (!v4)
    {
      goto LABEL_8;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = -6756;
      goto LABEL_25;
    }

    v5 = UTTypeCopyDeclaration(v4);
    v9 = v4;
    if (!v5)
    {
LABEL_8:
      v11 = -6727;
LABEL_25:

      PreferredIdentifierForTag = 0;
      v5 = 0;
      v12 = 0;
      goto LABEL_15;
    }
  }

  PreferredIdentifierForTag = UTTypeCopyDeclaringBundleURL(v9);
  v5 = PreferredIdentifierForTag;
  if (PreferredIdentifierForTag)
  {
    PreferredIdentifierForTag = [MEMORY[0x277CCA8D8] bundleWithURL:PreferredIdentifierForTag];
    v12 = PreferredIdentifierForTag;
    v11 = -6704;
    if (PreferredIdentifierForTag)
    {
      PreferredIdentifierForTag = [(__CFString *)PreferredIdentifierForTag pathForResource:v6 ofType:0];
      if (PreferredIdentifierForTag)
      {
        v11 = 0;
      }

      else
      {
        v11 = -6704;
      }
    }
  }

  else
  {
    v12 = 0;
    v11 = -6704;
  }

  v4 = v9;
LABEL_15:
  v13 = PreferredIdentifierForTag;

  if (v13)
  {
    v14 = [MEMORY[0x277D755B8] imageWithContentsOfFile:v13];
    if (v14)
    {
      v11 = 0;
    }

    else
    {
      v11 = -6755;
    }

    if (!a2)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v14 = 0;
  if (a2)
  {
LABEL_20:
    *a2 = v11;
  }

LABEL_21:

  return v14;
}