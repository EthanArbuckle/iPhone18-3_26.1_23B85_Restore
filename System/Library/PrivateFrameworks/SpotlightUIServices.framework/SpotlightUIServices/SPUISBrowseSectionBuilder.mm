@interface SPUISBrowseSectionBuilder
+ (id)_sectionResultForResults:(id)a3 style:(int)a4 sectionTitle:(id)a5 sectionIdentifier:(id)a6;
+ (id)resultCardForResult:(id)a3;
+ (void)_fillSection:(id)a3 withListResults:(id)a4;
@end

@implementation SPUISBrowseSectionBuilder

+ (id)_sectionResultForResults:(id)a3 style:(int)a4 sectionTitle:(id)a5 sectionIdentifier:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([a1 useWiderBrowseView])
  {
    v13 = 7;
  }

  else
  {
    v13 = 5;
  }

  if (a4 == 2)
  {
    v14 = objc_opt_new();
  }

  else if (a4 == 1)
  {
    v14 = objc_opt_new();
    [v14 setNumberOfColumns:v13];
    [v14 setInitiallyVisibleCardSectionCount:v13];
  }

  else if (a4)
  {
    v14 = 0;
  }

  else
  {
    v14 = objc_opt_new();
    [v14 setNumberOfColumns:v13];
  }

  v15 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = v10;
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [a1 _resultCardSectionForResult:{*(*(&v32 + 1) + 8 * i), v32}];
        if (v21)
        {
          [v15 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v18);
  }

  v22 = objc_opt_new();
  [v22 setCardSections:v15];
  [v22 setCollectionStyle:v14];
  v23 = [MEMORY[0x277D4C598] textWithString:v11];
  [v22 setTitle:v23];

  v24 = [v22 cardSections];
  v25 = [v24 count];

  if (v25)
  {
    v26 = objc_alloc_init(MEMORY[0x277D65850]);
    v27 = objc_opt_new();
    [v26 setInlineCard:v27];

    v36 = v22;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    v29 = [v26 inlineCard];
    [v29 setCardSections:v28];

    [v26 setSectionBundleIdentifier:v12];
  }

  else
  {
    v26 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (void)_fillSection:(id)a3 withListResults:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = [v6 bundleIdentifier];
        v14 = [a1 _configureResultForAppList:v12 sectionBundleIdentifier:v13];

        if (v14)
        {
          [v6 addResults:v14];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [v6 setMaxInitiallyVisibleResults:-1];

  v15 = *MEMORY[0x277D85DE8];
}

+ (id)resultCardForResult:(id)a3
{
  v3 = [SPUISResultBuilder resultBuilderWithResult:a3];
  [v3 setIsForBrowseMode:1];
  v4 = [v3 buildDetailedRowCardSection];

  return v4;
}

@end