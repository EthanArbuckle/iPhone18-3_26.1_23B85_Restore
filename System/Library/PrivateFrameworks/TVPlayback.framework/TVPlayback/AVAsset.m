@interface AVAsset
@end

@implementation AVAsset

uint64_t __79__AVAsset_TVPAudioSubtitleAdditions__tvp_sortedSubtitleAVMediaSelectionOptions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 tvp_languageCodeFromLocale];
  v7 = [v5 tvp_languageCodeFromLocale];

  v8 = [v6 isEqual:*(a1 + 32)];
  v9 = [v7 isEqual:*(a1 + 32)];
  if (!(v6 | v7))
  {
    goto LABEL_2;
  }

  if (!v6 && v7)
  {
LABEL_5:
    v10 = 1;
    goto LABEL_9;
  }

  if (v6 && !v7)
  {
LABEL_8:
    v10 = -1;
    goto LABEL_9;
  }

  v12 = v9 ^ 1;
  if (((v8 ^ 1) & 1) != 0 || v12)
  {
    if ((v8 ^ 1 | v9))
    {
      if ((v8 | v12))
      {
        v13 = *MEMORY[0x277CBE6C8];
        v14 = [*(a1 + 40) displayNameForKey:*MEMORY[0x277CBE6C8] value:v6];
        v15 = [*(a1 + 40) displayNameForKey:v13 value:v7];
        v10 = [v14 localizedCaseInsensitiveCompare:v15];

        goto LABEL_9;
      }

      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_2:
  v10 = 0;
LABEL_9:

  return v10;
}

void __79__AVAsset_TVPAudioSubtitleAdditions__tvp_sortedSubtitleAVMediaSelectionOptions__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v17 = a2;
  v5 = [v17 hasMediaCharacteristic:*MEMORY[0x277CE5E20]];
  v6 = 40;
  if (v5)
  {
    v6 = 32;
  }

  [*(a1 + v6) addObject:v17];
  if (*(a1 + 72) - 1 <= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 48) objectAtIndex:a3 + 1];
  }

  v8 = [v17 tvp_languageCodeFromLocale];
  v9 = [v7 tvp_languageCodeFromLocale];
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] string];
    if (v10)
    {
LABEL_8:
      if (!v7)
      {
        goto LABEL_13;
      }

LABEL_12:
      if ([v8 isEqualToString:v10])
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  v10 = [MEMORY[0x277CCACA8] string];
  if (v7)
  {
    goto LABEL_12;
  }

LABEL_13:
  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  v13 = [objc_opt_class() tvp_filteredAndSubsortedMainProgramSubtitleOptionsFromOptions:*(a1 + 32)];
  [v12 addObjectsFromArray:v13];

  v15 = *(a1 + 56);
  v14 = *(a1 + 64);
  v16 = [objc_opt_class() tvp_sortedAuxSubtitleOptionsFromOptions:*(a1 + 40)];
  [v15 addObjectsFromArray:v16];

  [*(a1 + 32) removeAllObjects];
  [*(a1 + 40) removeAllObjects];
LABEL_14:
}

uint64_t __85__AVAsset_ATVAudioSubtitleAdditionsPrivate__tvp_sortedAuxSubtitleOptionsFromOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 tvp_localizedDisplayString];
  v6 = [v4 tvp_localizedDisplayString];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

@end