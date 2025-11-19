@interface SPUITapToRadarView
+ (BOOL)shouldDisplayTapToRadar;
+ (id)generateComponentQueryItems;
+ (void)openTapToRadarWithQuery:(id)a3 sections:(id)a4 rankingDebugLog:(id)a5;
- (SPUITapToRadarView)initWithTarget:(id)a3 action:(SEL)a4;
- (void)updateImage;
@end

@implementation SPUITapToRadarView

+ (BOOL)shouldDisplayTapToRadar
{
  if (shouldDisplayTapToRadar_onceToken != -1)
  {
    +[SPUITapToRadarView shouldDisplayTapToRadar];
  }

  return shouldDisplayTapToRadar_shouldDisplayTapToRadar;
}

void __45__SPUITapToRadarView_shouldDisplayTapToRadar__block_invoke()
{
  [@"com.apple.spotlightui" cStringUsingEncoding:1];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    shouldDisplayTapToRadar_shouldDisplayTapToRadar = [v0 BOOLForKey:*MEMORY[0x277D4BF40]] ^ 1;
  }

  else
  {
    shouldDisplayTapToRadar_shouldDisplayTapToRadar = 0;
  }
}

- (SPUITapToRadarView)initWithTarget:(id)a3 action:(SEL)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v15.receiver = self;
  v15.super_class = SPUITapToRadarView;
  v7 = [(SPUITapToRadarView *)&v15 init];
  if (v7)
  {
    v8 = objc_opt_new();
    [v8 setProminence:2];
    [v8 setTitle:@"Tap-to-Radar"];
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
    [v8 setFont:v9];

    v10 = [v8 titleLabel];
    [v10 setAdjustsFontForContentSizeCategory:1];

    [v8 setMinimumLayoutSize:{44.0, 44.0}];
    [(SPUITapToRadarView *)v7 setLayoutMargins:16.0, 0.0, 16.0, 0.0];
    [(SPUITapToRadarView *)v7 setLayoutMarginsRelativeArrangement:1];
    [(NUIContainerBoxView *)v7 setHorizontalAlignment:3];
    [v8 addTarget:v6 action:a4];
    v16[0] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [(SPUITapToRadarView *)v7 setArrangedSubviews:v11];

    [(SPUITapToRadarView *)v7 updateImage];
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v7 selector:sel_updateImage name:*MEMORY[0x277D76810] object:0];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)updateImage
{
  v2 = [(SPUITapToRadarView *)self arrangedSubviews];
  v6 = [v2 firstObject];

  v3 = MEMORY[0x277D4C890];
  v4 = [v6 font];
  v5 = [v3 uiImageWithSymbolName:@"ant.fill" font:v4 scale:1];
  [v6 setImage:v5 forState:0];
}

+ (void)openTapToRadarWithQuery:(id)a3 sections:(id)a4 rankingDebugLog:(id)a5
{
  v78 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v65 = a5;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"<Build>"];
  v11 = [MEMORY[0x277CCAC38] processInfo];
  v12 = [v11 operatingSystemVersionString];

  v61 = a1;
  v62 = v12;
  if (v12)
  {
    v13 = objc_msgSend(v12, "rangeOfString:", @"(Build ");
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [v12 substringFromIndex:v13 + v14];
      v16 = [v15 rangeOfString:@""]);
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [v15 substringToIndex:v16];

        v15 = v17;
        v10 = v15;
      }
    }
  }

  v18 = [MEMORY[0x277CCAB68] string];
  v64 = v10;
  [v18 appendFormat:@"Build: %@\n\n", v10];
  v63 = v8;
  [v18 appendFormat:@"Query: %@\n\n", v8];
  [v18 appendString:@"Results:\n"];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v9;
  v19 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v72;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v72 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v71 + 1) + 8 * i);
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v24 = [v23 results];
        v25 = [v24 countByEnumeratingWithState:&v67 objects:v76 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v68;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v68 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = [*(*(&v67 + 1) + 8 * j) debugDescription];
              [v18 appendString:v29];

              [v18 appendString:@"\n"];
            }

            v26 = [v24 countByEnumeratingWithState:&v67 objects:v76 count:16];
          }

          while (v26);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
    }

    while (v20);
  }

  v30 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v30 setScheme:@"tap-to-radar"];
  v60 = v30;
  [v30 setHost:@"new"];
  v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:8];
  v32 = [v61 generateComponentQueryItems];
  [v31 addObjectsFromArray:v32];

  v33 = SSExtensionIdentifiersForSections();
  v34 = MEMORY[0x277CCAD18];
  v59 = v33;
  v58 = [v33 componentsJoinedByString:{@", "}];
  v57 = [v34 queryItemWithName:@"ExtensionIdentifiers" value:v58];
  v75[0] = v57;
  v35 = [MEMORY[0x277CCAD18] queryItemWithName:@"Classification" value:@"Other Bug"];
  v75[1] = v35;
  v36 = [MEMORY[0x277CCAD18] queryItemWithName:@"Reproducibility" value:@"I Didn't Try"];
  v75[2] = v36;
  v37 = MEMORY[0x277CCAD18];
  v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: ", v64];
  v39 = [v37 queryItemWithName:@"Title" value:v38];
  v75[3] = v39;
  v40 = MEMORY[0x277CCAD18];
  v41 = MEMORY[0x277CCACA8];
  v42 = [MEMORY[0x277D65D78] internalReleaseAgreementText];
  v43 = v42;
  v44 = &stru_287C49600;
  if (v65)
  {
    v44 = v65;
  }

  v45 = [v41 stringWithFormat:@"Summary: \n\n\n*** Note: Debug info contains the titles of items in the UI. Please review for confidential information.  %@ ***\n\n===  DEBUG INFO  ===\n\n%@\n\n%@", v42, v18, v44];
  v46 = [v40 queryItemWithName:@"Description" value:v45];
  v75[4] = v46;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:5];
  [v31 addObjectsFromArray:v47];

  v48 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v49 = [MEMORY[0x277D65D78] filePathForCapturedScreenshot];
  if (v49)
  {
    [v48 addObject:v49];
  }

  v50 = [v48 componentsJoinedByString:{@", "}];
  v51 = [MEMORY[0x277CCAD18] queryItemWithName:@"Attachments" value:v50];
  [v31 addObject:v51];

  [v60 setQueryItems:v31];
  v52 = MEMORY[0x277D4C898];
  v53 = MEMORY[0x277D4C550];
  v54 = [v60 URL];
  v55 = [v53 punchoutWithURL:v54];
  [v52 openPunchout:v55];

  v56 = *MEMORY[0x277D85DE8];
}

+ (id)generateComponentQueryItems
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentName" value:@"Spotlight (New Bugs)"];
  v3 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentVersion" value:{@"iOS", v2}];
  v8[1] = v3;
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentID" value:@"312963"];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end