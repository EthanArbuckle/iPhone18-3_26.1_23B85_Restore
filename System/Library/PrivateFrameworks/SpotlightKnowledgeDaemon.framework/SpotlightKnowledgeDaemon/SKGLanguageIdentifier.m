@interface SKGLanguageIdentifier
+ (id)sharedIdentifier;
- (id)languageFromString:(id)a3 normalizedChunkBlock:(id)a4;
@end

@implementation SKGLanguageIdentifier

+ (id)sharedIdentifier
{
  if (sharedIdentifier_onceToken != -1)
  {
    +[SKGLanguageIdentifier sharedIdentifier];
  }

  v3 = sharedIdentifier_gIdentifier;

  return v3;
}

void __41__SKGLanguageIdentifier_sharedIdentifier__block_invoke()
{
  v0 = objc_alloc_init(SKGLanguageIdentifier);
  v1 = sharedIdentifier_gIdentifier;
  sharedIdentifier_gIdentifier = v0;
}

- (id)languageFromString:(id)a3 normalizedChunkBlock:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  memset(v26, 0, 240);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = v26;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v7 = [v5 length];
  v8 = v7;
  if (v7 - 16 > 0x53)
  {
    if (v7 >= 0x65)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __65__SKGLanguageIdentifier_languageFromString_normalizedChunkBlock___block_invoke;
      v17[3] = &unk_27893EE28;
      v18 = v6;
      v19 = &v22;
      v20 = v21;
      [v5 enumerateSubstringsInRange:0 options:v8 usingBlock:{1, v17}];
    }
  }

  else
  {
    v9 = SILanguagesGuessLanguageInString();
    ++*(v23[3] + 4 * v9);
  }

  v10 = 0;
  v11 = 1;
  for (i = 2; i != 59; ++i)
  {
    if (v26[i] > v10)
    {
      v11 = i;
      v10 = v26[i];
    }
  }

  if (v11 <= 1)
  {
    Language = 0;
  }

  else
  {
    Language = SILanguagesGetLanguage();
  }

  v14 = Language;
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v22, 8);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __65__SKGLanguageIdentifier_languageFromString_normalizedChunkBlock___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v10 = a2;
  if (v10 && a4)
  {
    v15 = v10;
    v11 = (*(a1[4] + 16))();
    v12 = v11;
    if (v11)
    {
      [v11 length];
      v13 = SILanguagesGuessLanguageInString();
      v14 = *(*(a1[5] + 8) + 24);
      ++*(v14 + 4 * v13);
      ++*(*(a1[6] + 8) + 24);
    }

    v10 = v15;
  }

  if (*(*(a1[6] + 8) + 24) >= 0xAuLL)
  {
    *a7 = 1;
  }
}

@end