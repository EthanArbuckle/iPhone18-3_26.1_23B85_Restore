@interface PGAOINameShortener
+ (BOOL)isCountryWithAOISubstitutions:(id)a3;
+ (id)_shortenedAOIForName:(id)a3;
+ (id)s_aoiReplacementsDictionary;
+ (id)shortenedAOIForLocationOrAreaNode:(id)a3 locationHelper:(id)a4;
+ (void)_enumerateWordCombinationsForName:(id)a3 usingBlock:(id)a4;
@end

@implementation PGAOINameShortener

+ (id)s_aoiReplacementsDictionary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PGAOINameShortener_s_aoiReplacementsDictionary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (s_aoiReplacementsDictionary_onceToken != -1)
  {
    dispatch_once(&s_aoiReplacementsDictionary_onceToken, block);
  }

  v2 = s_aoiReplacementsDictionary_s_aoiReplacementsDictionary;

  return v2;
}

void __49__PGAOINameShortener_s_aoiReplacementsDictionary__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v2 URLForResource:@"aoiReplacements" withExtension:@"plist"];

  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v5];
  v4 = s_aoiReplacementsDictionary_s_aoiReplacementsDictionary;
  s_aoiReplacementsDictionary_s_aoiReplacementsDictionary = v3;
}

+ (BOOL)isCountryWithAOISubstitutions:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (isCountryWithAOISubstitutions__onceToken != -1)
    {
      dispatch_once(&isCountryWithAOISubstitutions__onceToken, &__block_literal_global_55767);
    }

    v4 = [isCountryWithAOISubstitutions__countriesWithSubstitutions containsObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __52__PGAOINameShortener_isCountryWithAOISubstitutions___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"US", @"CA", 0}];
  v1 = isCountryWithAOISubstitutions__countriesWithSubstitutions;
  isCountryWithAOISubstitutions__countriesWithSubstitutions = v0;
}

+ (void)_enumerateWordCombinationsForName:(id)a3 usingBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 componentsSeparatedByString:@" "];
  if ([v7 count])
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v14 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__PGAOINameShortener__enumerateWordCombinationsForName_usingBlock___block_invoke;
    aBlock[3] = &unk_2788867B0;
    v10 = v7;
    v12 = v13;
    v11 = v6;
    v8 = _Block_copy(aBlock);
    v8[2](v8, 1);

    _Block_object_dispose(v13, 8);
  }
}

void __67__PGAOINameShortener__enumerateWordCombinationsForName_usingBlock___block_invoke(void *a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  if (a2)
  {
    [v4 reverseObjectEnumerator];
  }

  else
  {
    [v4 objectEnumerator];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = v12;
        if (*(*(a1[6] + 8) + 24) == 1)
        {
          objc_autoreleasePoolPop(v12);
          goto LABEL_20;
        }

        if (v8)
        {
          if (a2)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v11, v8, v17];
          }

          else
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v8, v11, v17];
          }
          v14 = ;

          v8 = v14;
        }

        else
        {
          v8 = v11;
        }

        v15 = *(a1[6] + 8);
        (*(a1[5] + 16))();
        objc_autoreleasePoolPop(v13);
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

LABEL_20:
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)_shortenedAOIForName:(id)a3
{
  v4 = a3;
  v5 = [a1 s_aoiReplacementsDictionary];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__55784;
  v33 = __Block_byref_object_dispose__55785;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__55784;
  v27 = __Block_byref_object_dispose__55785;
  v28 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __43__PGAOINameShortener__shortenedAOIForName___block_invoke;
  v18 = &unk_278886788;
  v6 = v5;
  v19 = v6;
  v21 = &v29;
  v7 = v4;
  v20 = v7;
  v22 = &v23;
  [a1 _enumerateWordCombinationsForName:v7 usingBlock:&v15];
  v8 = v30[5];
  if (v8)
  {
    v9 = [v7 stringByReplacingOccurrencesOfString:v8 withString:{v24[5], v15, v16, v17, v18, v19}];
    if ([v9 hasSuffix:@" and "])
    {
      v10 = v7;
      v11 = v9;
    }

    else
    {
      v13 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v11 = [v9 pg_stringByTrailingCharactersInSet:v13 options:3];

      if ([v11 length])
      {
        v10 = v11;
      }

      else
      {
        v10 = v7;
      }
    }

    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v12;
}

void __43__PGAOINameShortener__shortenedAOIForName___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v10 = v4;
  v6 = [v4 lowercaseString];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v10 length];
    if (v8 > [*(*(*(a1 + 48) + 8) + 40) length])
    {
      v9 = [v7 length];
      if (v9 < [*(a1 + 40) length])
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);
      }
    }
  }
}

+ (id)shortenedAOIForLocationOrAreaNode:(id)a3 locationHelper:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 label];
  v9 = [v8 isEqualToString:@"Area"];

  if (v9)
  {
    v10 = v6;
    v11 = [v10 name];
    v12 = [v10 collection];

    v13 = [v7 addressNodesFromAreaNodes:v12];
LABEL_5:
    v17 = v13;

    goto LABEL_7;
  }

  v14 = [v6 label];
  v15 = [v14 isEqualToString:@"City"];

  if (v15)
  {
    v16 = v6;
    v11 = [v16 name];
    v12 = [v16 collection];

    v13 = [v7 addressNodesFromLocationNodes:v12];
    goto LABEL_5;
  }

  v17 = 0;
  v11 = 0;
LABEL_7:
  if ([v11 length])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __71__PGAOINameShortener_shortenedAOIForLocationOrAreaNode_locationHelper___block_invoke;
    v21[3] = &unk_278886760;
    v22 = v7;
    v23 = &v25;
    v24 = a1;
    [v17 enumerateIdentifiersAsCollectionsWithBlock:v21];
    if (v26[3])
    {
      v18 = [a1 _shortenedAOIForName:v11];
    }

    else
    {
      v18 = v11;
    }

    v19 = v18;

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

void __71__PGAOINameShortener_shortenedAOIForLocationOrAreaNode_locationHelper___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = [*(a1 + 32) countryNodeFromAddressNodeAsCollection:?];
  v6 = [v8 names];
  v7 = [v6 firstObject];

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 48) isCountryWithAOISubstitutions:v7];
  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

@end