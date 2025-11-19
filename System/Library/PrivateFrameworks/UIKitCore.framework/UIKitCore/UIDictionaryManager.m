@interface UIDictionaryManager
@end

@implementation UIDictionaryManager

uint64_t __56___UIDictionaryManager__downloadDictionaryAssetCatalog___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_Uidictionaryma.isa, a2);
  }

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __59___UIDictionaryManager__allAvailableDefinitionDictionaries__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 definitionLanguage];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  v9 = [v6 definitionLanguage];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (!v8 || v10)
  {
    if (v8 & 1 | ((v10 & 1) == 0))
    {
      v12 = [v6 localizedLanguageName];
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = &stru_1EFB14550;
      }

      v14 = [v5 localizedLanguageName];
      v11 = [v14 localizedStandardCompare:v13];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

@end