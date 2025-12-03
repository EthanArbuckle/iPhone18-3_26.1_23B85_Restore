@interface VSAMSAppsValueTransformer
- (BOOL)responseDeviceFamilies:(id)families compatibleWithDevice:(id)device;
- (id)platformAttributes:(id)attributes forDevice:(id)device;
- (id)transformedValue:(id)value;
@end

@implementation VSAMSAppsValueTransformer

- (BOOL)responseDeviceFamilies:(id)families compatibleWithDevice:(id)device
{
  familiesCopy = families;
  deviceCopy = device;
  stringForAMSDeviceFamilies = [deviceCopy stringForAMSDeviceFamilies];
  v8 = [familiesCopy containsObject:stringForAMSDeviceFamilies];

  bincompatPlatform = [deviceCopy bincompatPlatform];

  if (bincompatPlatform)
  {
    v10 = [familiesCopy containsObject:bincompatPlatform];
  }

  else
  {
    v10 = 0;
  }

  v11 = v8 | v10;

  return v11 & 1;
}

- (id)platformAttributes:(id)attributes forDevice:(id)device
{
  attributesCopy = attributes;
  deviceCopy = device;
  stringForAMSPlatformAttributes = [deviceCopy stringForAMSPlatformAttributes];
  v8 = [attributesCopy vs_dictionaryForKey:stringForAMSPlatformAttributes];

  if (!v8)
  {
    bincompatOS = [deviceCopy bincompatOS];
    if (bincompatOS)
    {
      v8 = [attributesCopy vs_dictionaryForKey:bincompatOS];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
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

    v9 = valueCopy;
    v10 = [v9 vs_stringForKey:@"id"];
    v11 = [v9 vs_dictionaryForKey:@"attributes"];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 vs_stringForKey:@"name"];
      v14 = [v12 vs_stringForKey:@"artistName"];
      v15 = [v12 vs_arrayOfStringsForKey:@"deviceFamilies"];
      currentDevice = [MEMORY[0x277CE2238] currentDevice];
      if ([(VSAMSAppsValueTransformer *)self responseDeviceFamilies:v15 compatibleWithDevice:currentDevice])
      {
        v47 = v15;
        v45 = [v12 vs_dictionaryForKey:@"platformAttributes"];
        v46 = currentDevice;
        v17 = [VSAMSAppsValueTransformer platformAttributes:"platformAttributes:forDevice:" forDevice:?];
        v51 = [v17 vs_stringForKey:@"bundleId"];
        v18 = [v17 vs_numberForKey:@"hasInAppPurchases"];
        bOOLValue = [v18 BOOLValue];

        v44 = [v17 vs_numberForKey:@"isXROSCompatible"];
        v43 = [v17 vs_dictionaryForKey:@"artwork"];
        v50 = [v43 vs_stringForKey:@"url"];
        v42 = [v17 vs_arrayForKey:@"offers"];
        firstObject = [v42 firstObject];
        v40 = [firstObject vs_arrayForKey:@"assets"];
        firstObject2 = [v40 firstObject];
        [firstObject2 vs_numberForKey:@"size"];
        v38 = v37 = v17;
        v49 = [v17 vs_numberForKey:@"externalVersionId"];
        v41 = firstObject;
        v36 = [firstObject vs_stringForKey:@"buyParams"];
        v20 = [v12 vs_stringForKey:@"url"];
        v34 = [v12 vs_dictionaryForKey:@"contentRatingsBySystem"];
        v21 = [v34 vs_dictionaryForKey:@"appsApple"];
        v22 = [v21 vs_stringForKey:@"name"];
        v31 = v21;
        v32 = [v21 vs_numberForKey:@"value"];
        v35 = v9;
        v30 = [v9 vs_dictionaryForKey:@"meta"];
        v23 = [v30 vs_numberForKey:@"defaultApp"];
        bOOLValue2 = [v23 BOOLValue];

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
        [(VSAppDescription *)v25 setOffersInAppPurchases:bOOLValue];
        [(VSAppDescription *)v25 setArtworkURLTemplate:v50];
        stringValue = [v49 stringValue];
        [(VSAppDescription *)v25 setExternalVersionID:stringValue];

        [(VSAppDescription *)v25 setBuyParams:v36];
        [(VSAppDescription *)v25 setDefaultAppForProvider:bOOLValue2];
        [(VSAppDescription *)v25 setDeviceFamilies:v47];
        [(VSAppDescription *)v25 setAppSizeBytes:v38];
        [(VSAppDescription *)v25 setVisionOSCompatible:v44];

        v15 = v47;
        v13 = v48;
        currentDevice = v46;
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