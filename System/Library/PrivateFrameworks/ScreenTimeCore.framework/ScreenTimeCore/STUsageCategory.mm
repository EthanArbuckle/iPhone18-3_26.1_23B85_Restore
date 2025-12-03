@interface STUsageCategory
+ (id)applicationAndWebItemsExcludingSystemHiddenApplications:(id)applications;
+ (id)categoryItemsExcludingSystemCategories:(id)categories;
@end

@implementation STUsageCategory

+ (id)categoryItemsExcludingSystemCategories:(id)categories
{
  v27 = *MEMORY[0x1E69E9840];
  categoriesCopy = categories;
  v3 = [categoriesCopy valueForKeyPath:@"@distinctUnionOfObjects.identifier"];
  v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    v8 = *MEMORY[0x1E6993B40];
    v9 = *MEMORY[0x1E6993B30];
    v10 = *MEMORY[0x1E6993B48];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (([v12 isEqualToString:v8] & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", v9) & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", v10) & 1) == 0)
        {
          v13 = [[STUsageDetailItem alloc] initWithType:3 identifier:v12 usageTrusted:1];
          v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"identifier", v12];
          v15 = [categoriesCopy filteredArrayUsingPredicate:v14];

          v16 = [v15 valueForKeyPath:@"@sum.totalTimeInSeconds"];
          [v16 floatValue];
          [(STUsageDetailItem *)v13 setQuantity:?];

          [v20 addObject:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v17 = [v20 copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)applicationAndWebItemsExcludingSystemHiddenApplications:(id)applications
{
  v62 = *MEMORY[0x1E69E9840];
  applicationsCopy = applications;
  v49 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E6993B98] systemHiddenBundleIdentifiersForDeviceFamily:102];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = applicationsCopy;
  v46 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v46)
  {
    v45 = *v57;
    v6 = 0x1E7CE5000uLL;
    do
    {
      v7 = 0;
      do
      {
        if (*v57 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v7;
        v8 = *(*(&v56 + 1) + 8 * v7);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        timedItems = [v8 timedItems];
        v51 = [timedItems countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (v51)
        {
          v50 = *v53;
          v48 = timedItems;
          do
          {
            for (i = 0; i != v51; ++i)
            {
              if (*v53 != v50)
              {
                objc_enumerationMutation(timedItems);
              }

              v11 = *(*(&v52 + 1) + 8 * i);
              bundleIdentifier = [v11 bundleIdentifier];
              usageTrusted = [v11 usageTrusted];
              if (bundleIdentifier && ([v5 containsObject:bundleIdentifier] & 1) == 0)
              {
                v23 = [objc_alloc(*(v6 + 4064)) initWithIdentifier:bundleIdentifier usageTrusted:usageTrusted];
                totalTimeInSeconds = [v11 totalTimeInSeconds];
                v25 = v23;
                v17 = v49;
                v26 = [v17 objectForKeyedSubscript:v25];
                if (v26)
                {
                  v18 = v26;
                  [(STUsageDetailItem *)v26 quantity];
                  *&v28 = v27 + totalTimeInSeconds;
                  [(STUsageDetailItem *)v18 setQuantity:v28];
                }

                else
                {
                  v35 = [STUsageDetailItem alloc];
                  identifier = [v25 identifier];
                  v18 = -[STUsageDetailItem initWithType:identifier:usageTrusted:](v35, "initWithType:identifier:usageTrusted:", 1, identifier, [v25 usageTrusted]);

                  *&v37 = totalTimeInSeconds;
                  [(STUsageDetailItem *)v18 setQuantity:v37];
                  [v17 setObject:v18 forKeyedSubscript:v25];
                }

                domain = v25;
              }

              else
              {
                domain = [v11 domain];
                if (!domain)
                {
                  goto LABEL_23;
                }

                v15 = [objc_alloc(*(v6 + 4064)) initWithIdentifier:domain usageTrusted:usageTrusted];
                totalTimeInSeconds2 = [v11 totalTimeInSeconds];
                v17 = v15;
                v18 = v4;
                v19 = [(STUsageDetailItem *)v18 objectForKeyedSubscript:v17];
                if (v19)
                {
                  v20 = v19;
                  [(STUsageDetailItem *)v19 quantity];
                  *&v22 = v21 + totalTimeInSeconds2;
                  [(STUsageDetailItem *)v20 setQuantity:v22];
                }

                else
                {
                  v29 = [STUsageDetailItem alloc];
                  [v17 identifier];
                  v30 = v6;
                  v31 = v5;
                  v33 = v32 = v4;
                  v20 = -[STUsageDetailItem initWithType:identifier:usageTrusted:](v29, "initWithType:identifier:usageTrusted:", 2, v33, [v17 usageTrusted]);

                  v4 = v32;
                  v5 = v31;
                  v6 = v30;
                  timedItems = v48;
                  *&v34 = totalTimeInSeconds2;
                  [(STUsageDetailItem *)v20 setQuantity:v34];
                  [(STUsageDetailItem *)v18 setObject:v20 forKeyedSubscript:v17];
                }

                v25 = v17;
              }

LABEL_23:
            }

            v51 = [timedItems countByEnumeratingWithState:&v52 objects:v60 count:16];
          }

          while (v51);
        }

        v7 = v47 + 1;
      }

      while (v47 + 1 != v46);
      v46 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v46);
  }

  [v49 allValues];
  v39 = v38 = v4;
  allValues = [v38 allValues];
  v41 = [v39 arrayByAddingObjectsFromArray:allValues];

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

@end