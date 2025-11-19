@interface SSLegacySectionBuilder
+ (id)compactCardSectionForResult:(id)a3;
+ (id)supportedBundleIds;
- (id)buildSection;
@end

@implementation SSLegacySectionBuilder

+ (id)supportedBundleIds
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.spotlight.related_search";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)compactCardSectionForResult:(id)a3
{
  v3 = [a3 compactCard];
  v4 = [v3 cardSections];
  v5 = [v4 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)buildSection
{
  v2 = self;
  v76 = *MEMORY[0x1E69E9840];
  v3 = [(SSSectionBuilder *)self section];
  v4 = [v3 mutableDeepCopy];

  v5 = [(SSSectionBuilder *)v2 section];
  v6 = [v5 results];
  v7 = [v6 copy];
  [v4 setResults:v7];

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = [(SSSectionBuilder *)v2 isTopHitSection];
  v57 = objc_opt_new();
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v11 = [v4 results];
  v56 = v8;
  v60 = [v11 countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v60)
  {
    v59 = *v70;
    v54 = v2;
    v55 = v4;
    v53 = v9;
    v52 = v10;
    v51 = v11;
    do
    {
      v12 = 0;
      do
      {
        if (*v70 != v59)
        {
          objc_enumerationMutation(v11);
        }

        v13 = *(*(&v69 + 1) + 8 * v12);
        v14 = [v13 inlineCard];
        if (v14)
        {
          v15 = v14;
          v16 = v12;
          v17 = v13;
        }

        else
        {
          v18 = [v13 compactCard];

          if (v18)
          {
            goto LABEL_10;
          }

          v16 = v12;
          v15 = [SSResultBuilder resultBuilderWithResult:v13];
          v38 = [(SSSectionBuilder *)v2 queryContext];
          [v15 setQueryContext:v38];

          [v15 setIsTopHit:v10];
          v17 = [v15 buildResult];

          if ([v15 supportsClearingBackendData])
          {
            [v17 clearBackendData];
          }

          if (v17)
          {
            [v57 addObject:v17];
          }
        }

        v13 = v17;
        v12 = v16;
LABEL_10:
        v19 = [v4 results];
        if (([v19 count] == 1) & v10) != 1 || (objc_msgSend(v13, "usesCompactDisplay"))
        {
LABEL_31:
        }

        else
        {
          v20 = [v13 shouldUseCompactDisplay];

          if ((v20 & 1) == 0)
          {
            v58 = v12;
            v21 = [v13 inlineCard];
            v22 = [v21 cardSections];

            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v19 = v22;
            v23 = [v19 countByEnumeratingWithState:&v65 objects:v74 count:16];
            v24 = 0x1E69C9000uLL;
            if (!v23)
            {
              goto LABEL_30;
            }

            v25 = v23;
            v26 = *v66;
            while (1)
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v66 != v26)
                {
                  objc_enumerationMutation(v19);
                }

                v28 = *(*(&v65 + 1) + 8 * i);
                v29 = [v28 backgroundColor];
                if (!v29)
                {
                  v30 = [v13 contentType];
                  v31 = [v30 isEqualToString:@"com.apple.application-bundle"];

                  if (v31)
                  {
                    continue;
                  }

                  v32 = *(v24 + 3712);
                  v29 = objc_opt_new();
                  v33 = [v13 relatedAppIdentifier];
                  if (v33)
                  {
                    [v29 setApplicationBundleIdentifier:v33];
                  }

                  else
                  {
                    v34 = [v13 applicationBundleIdentifier];
                    if (v34)
                    {
                      [v29 setApplicationBundleIdentifier:v34];
                    }

                    else
                    {
                      v35 = [v13 sectionBundleIdentifier];
                      [v29 setApplicationBundleIdentifier:v35];
                    }

                    v24 = 0x1E69C9000;
                  }

                  [v28 setBackgroundColor:v29];
                }
              }

              v25 = [v19 countByEnumeratingWithState:&v65 objects:v74 count:16];
              if (!v25)
              {
LABEL_30:

                v2 = v54;
                v4 = v55;
                v8 = v56;
                v9 = v53;
                v10 = v52;
                v11 = v51;
                v12 = v58;
                goto LABEL_31;
              }
            }
          }
        }

        if (v13)
        {
          [v9 addObject:v13];
        }

        v36 = [objc_opt_class() compactCardSectionForResult:v13];
        v37 = v36;
        if (v36)
        {
          [v36 setSpotlightBackingResult:v13];
          [v8 addObject:v37];
        }

        ++v12;
      }

      while (v12 != v60);
      v39 = [v11 countByEnumeratingWithState:&v69 objects:v75 count:16];
      v60 = v39;
    }

    while (v39);
  }

  [objc_opt_class() disambiguateUIIfNecessary:v8];
  v40 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v41 = v9;
  v42 = [v41 countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v62;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v62 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v61 + 1) + 8 * j);
        if ([v57 containsObject:v46])
        {
          v47 = [objc_alloc(objc_opt_class()) initWithResult:v46];

          v46 = v47;
        }

        [v40 addObject:v46];
      }

      v43 = [v41 countByEnumeratingWithState:&v61 objects:v73 count:16];
    }

    while (v43);
  }

  [v4 setResults:v40];
  v48 = [(SSSectionBuilder *)v2 buildButtonItem];
  [v4 setButton:v48];

  v49 = *MEMORY[0x1E69E9840];

  return v4;
}

@end