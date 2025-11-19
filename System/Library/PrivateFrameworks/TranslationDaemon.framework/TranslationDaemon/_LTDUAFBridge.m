@interface _LTDUAFBridge
+ (id)assetIdentifierForAssetSpecifier:(id)a3;
+ (id)assetSpecifierForAssetIdentifier:(id)a3;
+ (id)assetSpecifierForAssetUsages:(id)a3;
+ (id)assetSpecifiersForAssetType:(unint64_t)a3 locale:(id)a4;
+ (id)assetUsagesForAssetSpecifier:(id)a3;
+ (id)assetUsagesForAssetType:(unint64_t)a3;
+ (id)assetUsagesForAssetType:(unint64_t)a3 locale:(id)a4;
+ (unint64_t)assetSubtypeForAssetSpecifier:(id)a3;
+ (unint64_t)assetTypeForAssetSpecifier:(id)a3;
+ (unint64_t)assetTypeForAssetUsage:(id)a3;
@end

@implementation _LTDUAFBridge

+ (id)assetUsagesForAssetType:(unint64_t)a3
{
  v3 = 0;
  v14[1] = *MEMORY[0x277D85DE8];
  if (a3 > 6)
  {
    switch(a3)
    {
      case 7uLL:
        v11 = @"lid";
        v4 = MEMORY[0x277CBEA60];
        v5 = &v11;
        break;
      case 8uLL:
        v10[0] = @"mt.family";
        v10[1] = @"mt.language";
        v10[2] = @"mt.capability";
        v4 = MEMORY[0x277CBEA60];
        v5 = v10;
        v6 = 3;
        goto LABEL_14;
      case 0xAuLL:
        v9 = @"pb.language";
        v4 = MEMORY[0x277CBEA60];
        v5 = &v9;
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(a3)
    {
      case 2uLL:
        v14[0] = @"asr.language";
        v4 = MEMORY[0x277CBEA60];
        v5 = v14;
        break;
      case 5uLL:
        v13 = @"config";
        v4 = MEMORY[0x277CBEA60];
        v5 = &v13;
        break;
      case 6uLL:
        v12 = @"endpointer";
        v4 = MEMORY[0x277CBEA60];
        v5 = &v12;
        break;
      default:
        goto LABEL_15;
    }
  }

  v6 = 1;
LABEL_14:
  v3 = [v4 arrayWithObjects:v5 count:v6];
LABEL_15:
  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (unint64_t)assetTypeForAssetUsage:(id)a3
{
  v3 = a3;
  if ([v3 length] >= 2)
  {
    v5 = [v3 characterAtIndex:0];
    v4 = 0;
    if (v5 > 107)
    {
      switch(v5)
      {
        case 'l':
          v6 = @"lid";
          v4 = 7;
          break;
        case 'm':
          v6 = @"mt";
          v4 = 8;
          break;
        case 'p':
          v6 = @"pb";
          v4 = 10;
          break;
        default:
          goto LABEL_18;
      }
    }

    else
    {
      switch(v5)
      {
        case 'a':
          v6 = @"asr";
          v4 = 2;
          break;
        case 'c':
          v6 = @"config";
          v4 = 5;
          break;
        case 'e':
          v6 = @"endpointer";
          v4 = 6;
          break;
        default:
          goto LABEL_18;
      }
    }

    if (![v3 hasPrefix:v6])
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_18:

  return v4;
}

+ (unint64_t)assetTypeForAssetSpecifier:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"com.apple.sequoia.asset"])
  {
    v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
    v6 = [v4 componentsSeparatedByCharactersInSet:v5];

    if ([v6 count] >= 5)
    {
      v8 = [v6 objectAtIndexedSubscript:4];
      if ([v8 length] >= 2)
      {
        v7 = [a1 assetTypeForAssetUsage:v8];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (unint64_t)assetSubtypeForAssetSpecifier:(id)a3
{
  v3 = a3;
  v4 = [_LTDUAFBridge assetTypeForAssetSpecifier:v3];
  if (v4 == 8)
  {
    v5 = [_LTDUAFBridge assetIdentifierForAssetSpecifier:v3];
    v6 = [v5 componentsSeparatedByString:@"-"];
    v7 = [v6 containsObject:@"partial"];

    if (v7)
    {
      v4 = 9;
    }
  }

  return v4;
}

+ (id)assetSpecifierForAssetIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"com.apple.sequoia.asset"])
  {
    v5 = 0;
    goto LABEL_21;
  }

  v6 = [v4 componentsSeparatedByString:@"-"];
  if ([v6 count] >= 2)
  {
    v7 = [v6 firstObject];
    v8 = [v7 lowercaseString];

    v9 = [a1 assetTypeForAssetUsage:v8];
    v5 = 0;
    if (v9 > 6)
    {
      if (v9 == 7)
      {
LABEL_14:
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.sequoia.asset", v8];
        goto LABEL_19;
      }

      if (v9 == 8)
      {
        v12 = [v6 count];
        v13 = v12 - 2;
        v14 = [v6 objectAtIndexedSubscript:v12 - 1];
        if ([v6 containsObject:@"partial"])
        {
          v15 = [v6 objectAtIndexedSubscript:v13];
          v16 = [v6 subarrayWithRange:{1, v12 - 4}];
          v17 = [v16 componentsJoinedByString:@"-"];

          v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@.%@.%@", @"com.apple.sequoia.asset", v8, v17, v15, v14];
        }

        else
        {
          v18 = [v6 subarrayWithRange:{1, v13}];
          v15 = [v18 componentsJoinedByString:@"-"];

          v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@.%@", @"com.apple.sequoia.asset", v8, v15, v14];
        }

        goto LABEL_19;
      }

      if (v9 != 10)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else if (v9 != 2)
    {
      if (v9 != 5 && v9 != 6)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    v10 = MEMORY[0x277CCACA8];
    v11 = [v6 lastObject];
    v5 = [v10 stringWithFormat:@"%@.%@.%@", @"com.apple.sequoia.asset", v8, v11];

    goto LABEL_19;
  }

  v5 = 0;
LABEL_20:

LABEL_21:

  return v5;
}

+ (id)assetIdentifierForAssetSpecifier:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 hasPrefix:@"com.apple.sequoia.asset"])
  {
    v11 = 0;
    goto LABEL_22;
  }

  v5 = [v4 componentsSeparatedByString:@"."];
  v6 = [v5 mutableCopy];

  v7 = [v6 subarrayWithRange:{4, objc_msgSend(v6, "count") - 4}];

  v8 = [a1 assetTypeForAssetSpecifier:v4];
  if (v8 > 6)
  {
    if (v8 == 7)
    {
      v10 = &unk_284867DE0;
      goto LABEL_21;
    }

    if (v8 == 8)
    {
      v15 = [v7 subarrayWithRange:{1, objc_msgSend(v7, "count") - 1}];

      if ([v15 count] >= 3)
      {
        v16 = [v15 mutableCopy];
        [v16 insertObject:@"partial" atIndex:{objc_msgSend(v15, "count") - 2}];

        v15 = v16;
      }

      v10 = [&unk_284867DF8 arrayByAddingObjectsFromArray:v15];
      v7 = v15;
      goto LABEL_21;
    }

    if (v8 != 10)
    {
      v10 = 0;
      goto LABEL_21;
    }

    v19[0] = @"PB";
    v12 = [v7 lastObject];
    v19[1] = v12;
    v13 = MEMORY[0x277CBEA60];
    v14 = v19;
  }

  else
  {
    if (v8 != 2)
    {
      v9 = &unk_284867DC8;
      if (v8 != 6)
      {
        v9 = 0;
      }

      if (v8 == 5)
      {
        v10 = &unk_284867DB0;
      }

      else
      {
        v10 = v9;
      }

      goto LABEL_21;
    }

    v20[0] = @"ASR";
    v12 = [v7 lastObject];
    v20[1] = v12;
    v13 = MEMORY[0x277CBEA60];
    v14 = v20;
  }

  v10 = [v13 arrayWithObjects:v14 count:2];

LABEL_21:
  v11 = [v10 componentsJoinedByString:@"-"];

LABEL_22:
  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)assetSpecifiersForAssetType:(unint64_t)a3 locale:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [a1 assetUsagesForAssetType:a3 locale:v6];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [a1 assetSpecifierForAssetUsages:*(*(&v17 + 1) + 8 * i)];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)assetUsagesForAssetType:(unint64_t)a3 locale:(id)a4
{
  v46[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 languageCode];
  v7 = [v6 lowercaseString];

  if (a3 != 10)
  {
    if (a3 == 8)
    {
      if (([v7 isEqualToString:@"en"] & 1) == 0)
      {
        v13 = +[_LTDANEService capability];
        v8 = [_LTDUAFAssetService assetUsageValuesForAssetType:8];
        v14 = [v8 objectForKeyedSubscript:@"mt.capability"];
        v15 = [v14 lastObject];
        v26 = v14;
        if (v13 < [v15 integerValue])
        {
          [v14 firstObject];
        }

        else
        {
          [v14 lastObject];
        }
        v17 = ;

        v25 = [v8 objectForKeyedSubscript:?];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __48___LTDUAFBridge_assetUsagesForAssetType_locale___block_invoke;
        v27[3] = &unk_2789B6A48;
        v18 = v7;
        v28 = v18;
        v19 = [v25 lt_firstObjectPassingTest:v27];
        v33[0] = @"mt.capability";
        v33[1] = @"mt.family";
        v34[0] = v17;
        v34[1] = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
        v35[0] = v20;
        v31[0] = @"mt.capability";
        v31[1] = @"mt.family";
        v32[0] = v17;
        v32[1] = v19;
        v31[2] = @"mt.language";
        v32[2] = v18;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
        v35[1] = v21;
        v29[0] = @"mt.capability";
        v29[1] = @"mt.family";
        v30[0] = v17;
        v30[1] = v19;
        v29[2] = @"mt.language";
        v30[2] = @"en";
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
        v35[2] = v22;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];

        goto LABEL_18;
      }
    }

    else
    {
      if (a3 != 2)
      {
        v16 = 0;
        goto LABEL_19;
      }

      if (([v7 isEqualToString:@"hi"] & 1) == 0)
      {
        v8 = [v5 _ltLocaleIdentifier];
        v44 = @"asr.language";
        v45 = v8;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v46[0] = v9;
        v10 = MEMORY[0x277CBEA60];
        v11 = v46;
        v12 = 1;
LABEL_17:
        v16 = [v10 arrayWithObjects:v11 count:v12];

        goto LABEL_18;
      }
    }

LABEL_11:
    v16 = MEMORY[0x277CBEBF8];
    goto LABEL_19;
  }

  if ([v7 isEqualToString:@"uk"])
  {
    goto LABEL_11;
  }

  if (![v7 isEqualToString:@"en"])
  {
    v38 = @"pb.language";
    v39 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v40[0] = v8;
    v36 = @"pb.language";
    v37 = @"en";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v40[1] = v9;
    v10 = MEMORY[0x277CBEA60];
    v11 = v40;
    v12 = 2;
    goto LABEL_17;
  }

  v41 = @"pb.language";
  v42 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v43 = v8;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
LABEL_18:

LABEL_19:
  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)assetUsagesForAssetSpecifier:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 hasPrefix:@"com.apple.sequoia.asset"])
  {
    v8 = 0;
    goto LABEL_20;
  }

  v5 = [v4 componentsSeparatedByString:@"."];
  v6 = [v5 mutableCopy];

  v7 = [v6 count];
  if (v7 == 4)
  {
    goto LABEL_3;
  }

  v9 = v7;
  v10 = [a1 assetTypeForAssetSpecifier:v4];
  switch(v10)
  {
    case 10:
      v25 = @"pb.language";
      v11 = [v6 lastObject];
      v26 = v11;
      v12 = MEMORY[0x277CBEAC0];
      v13 = &v26;
      v14 = &v25;
      goto LABEL_12;
    case 8:
      v11 = [v6 objectAtIndexedSubscript:v9 - 1];
      if ([v6 count] == 8)
      {
        v15 = [v6 objectAtIndexedSubscript:v9 - 2];
        v16 = v9 - 6;
      }

      else
      {
        v15 = 0;
        v16 = v9 - 5;
      }

      v17 = [v6 objectAtIndexedSubscript:v16 + 3];
      v18 = v17;
      if (v15)
      {
        v29[0] = @"mt.family";
        v29[1] = @"mt.language";
        v30[0] = v17;
        v30[1] = v15;
        v29[2] = @"mt.capability";
        v30[2] = v11;
        v19 = MEMORY[0x277CBEAC0];
        v20 = v30;
        v21 = v29;
        v22 = 3;
      }

      else
      {
        v27[0] = @"mt.family";
        v27[1] = @"mt.capability";
        v28[0] = v17;
        v28[1] = v11;
        v19 = MEMORY[0x277CBEAC0];
        v20 = v28;
        v21 = v27;
        v22 = 2;
      }

      v8 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];

      goto LABEL_18;
    case 2:
      v31 = @"asr.language";
      v11 = [v6 lastObject];
      v32[0] = v11;
      v12 = MEMORY[0x277CBEAC0];
      v13 = v32;
      v14 = &v31;
LABEL_12:
      v8 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
LABEL_18:

      goto LABEL_19;
  }

LABEL_3:
  v8 = 0;
LABEL_19:

LABEL_20:
  v23 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)assetSpecifierForAssetUsages:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    v7 = 0;
    goto LABEL_25;
  }

  v5 = [v4 allKeys];
  v6 = [v5 firstObject];

  if ([v4 count] < 2 || (v7 = 0, objc_msgSend(v6, "characterAtIndex:", 0) == 109))
  {
    v8 = [v6 componentsSeparatedByString:@"."];
    if (![v8 count])
    {
      v7 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v9 = [v8 firstObject];
    v10 = [a1 assetTypeForAssetUsage:v9];
    v7 = 0;
    if (v10 > 6)
    {
      if (v10 == 7)
      {
LABEL_16:
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.sequoia.asset", v9];
        goto LABEL_22;
      }

      if (v10 == 8)
      {
        v13 = [v4 count];
        v14 = MEMORY[0x277CCACA8];
        v12 = [v4 objectForKeyedSubscript:@"mt.family"];
        if (v13 == 2)
        {
          v15 = [v4 objectForKeyedSubscript:@"mt.capability"];
          v7 = [v14 stringWithFormat:@"%@.%@.%@.%@", @"com.apple.sequoia.asset", v9, v12, v15];
        }

        else
        {
          v15 = [v4 objectForKeyedSubscript:@"mt.language"];
          v16 = [v4 objectForKeyedSubscript:@"mt.capability"];
          v7 = [v14 stringWithFormat:@"%@.%@.%@.%@.%@", @"com.apple.sequoia.asset", v9, v12, v15, v16];
        }

        goto LABEL_21;
      }

      if (v10 != 10)
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    else if (v10 != 2)
    {
      if (v10 != 5 && v10 != 6)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = [v4 objectForKeyedSubscript:v6];
    v7 = [v11 stringWithFormat:@"%@.%@.%@", @"com.apple.sequoia.asset", v9, v12];
LABEL_21:

    goto LABEL_22;
  }

LABEL_24:

LABEL_25:

  return v7;
}

@end