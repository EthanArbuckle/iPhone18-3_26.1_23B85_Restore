@interface VSAMSAppsValueTransformer
- (BOOL)responseDeviceFamilies:(id)a3 compatibleWithDevice:(id)a4;
- (id)platformAttributes:(id)a3 forDevice:(id)a4;
- (id)transformedValue:(id)a3;
@end

@implementation VSAMSAppsValueTransformer

- (BOOL)responseDeviceFamilies:(id)a3 compatibleWithDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 stringForAMSDeviceFamilies];
  v8 = [v5 containsObject:v7];

  v9 = [v6 bincompatPlatform];

  if (v9)
  {
    v10 = [v5 containsObject:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = v8 | v10;

  return v11 & 1;
}

- (id)platformAttributes:(id)a3 forDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 stringForAMSPlatformAttributes];
  v8 = [v5 vs_dictionaryForKey:v7];

  if (!v8)
  {
    v9 = [v6 bincompatOS];
    if (v9)
    {
      v8 = [v5 vs_dictionaryForKey:v9];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)transformedValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MEMORY[0x277CBEAD8];
      v6 = *MEMORY[0x277CBE660];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      [v5 raise:v6 format:{@"Unexpectedly, value was %@, instead of NSDictionary.", v8}];
    }

    v9 = v4;
    v10 = [v9 vs_stringForKey:@"id"];
    v11 = [v9 vs_dictionaryForKey:@"attributes"];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 vs_stringForKey:@"name"];
      v14 = [v12 vs_stringForKey:@"artistName"];
      v15 = [v12 vs_arrayOfStringsForKey:@"deviceFamilies"];
      v16 = [MEMORY[0x277CE2238] currentDevice];
      if ([(VSAMSAppsValueTransformer *)self responseDeviceFamilies:v15 compatibleWithDevice:v16])
      {
        v47 = v15;
        v45 = [v12 vs_dictionaryForKey:@"platformAttributes"];
        v46 = v16;
        v17 = [VSAMSAppsValueTransformer platformAttributes:"platformAttributes:forDevice:" forDevice:?];
        v51 = [v17 vs_stringForKey:@"bundleId"];
        v18 = [v17 vs_numberForKey:@"hasInAppPurchases"];
        v33 = [v18 BOOLValue];

        v44 = [v17 vs_numberForKey:@"isXROSCompatible"];
        v43 = [v17 vs_dictionaryForKey:@"artwork"];
        v50 = [v43 vs_stringForKey:@"url"];
        v42 = [v17 vs_arrayForKey:@"offers"];
        v19 = [v42 firstObject];
        v40 = [v19 vs_arrayForKey:@"assets"];
        v39 = [v40 firstObject];
        [v39 vs_numberForKey:@"size"];
        v38 = v37 = v17;
        v49 = [v17 vs_numberForKey:@"externalVersionId"];
        v41 = v19;
        v36 = [v19 vs_stringForKey:@"buyParams"];
        v20 = [v12 vs_stringForKey:@"url"];
        v34 = [v12 vs_dictionaryForKey:@"contentRatingsBySystem"];
        v21 = [v34 vs_dictionaryForKey:@"appsApple"];
        v22 = [v21 vs_stringForKey:@"name"];
        v31 = v21;
        v32 = [v21 vs_numberForKey:@"value"];
        v35 = v9;
        v30 = [v9 vs_dictionaryForKey:@"meta"];
        v23 = [v30 vs_numberForKey:@"defaultApp"];
        v24 = [v23 BOOLValue];

        v25 = objc_alloc_init(VSAppDescription);
        v48 = v13;
        [(VSAppDescription *)v25 setDisplayName:v13];
        [(VSAppDescription *)v25 setBundleID:v51];
        v26 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "intValue")}];
        [(VSAppDescription *)v25 setAdamID:v26];

        [(VSAppDescription *)v25 setSellerName:v14];
        if (v20)
        {
          v27 = [MEMORY[0x277CBEBC0] URLWithString:v20];
          [(VSAppDescription *)v25 setAppStoreURL:v27];
        }

        [(VSAppDescription *)v25 setRating:v22];
        [(VSAppDescription *)v25 setContentRank:v32];
        [(VSAppDescription *)v25 setOffersInAppPurchases:v33];
        [(VSAppDescription *)v25 setArtworkURLTemplate:v50];
        v28 = [v49 stringValue];
        [(VSAppDescription *)v25 setExternalVersionID:v28];

        [(VSAppDescription *)v25 setBuyParams:v36];
        [(VSAppDescription *)v25 setDefaultAppForProvider:v24];
        [(VSAppDescription *)v25 setDeviceFamilies:v47];
        [(VSAppDescription *)v25 setAppSizeBytes:v38];
        [(VSAppDescription *)v25 setVisionOSCompatible:v44];

        v15 = v47;
        v13 = v48;
        v16 = v46;
        v9 = v35;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end