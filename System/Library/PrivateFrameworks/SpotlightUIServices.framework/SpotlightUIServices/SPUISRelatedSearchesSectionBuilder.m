@interface SPUISRelatedSearchesSectionBuilder
+ (id)supportedBundleIds;
- (BOOL)shouldSkipSection;
- (id)buildCardSections;
- (id)buildTitle;
@end

@implementation SPUISRelatedSearchesSectionBuilder

+ (id)supportedBundleIds
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"com.apple.parsec.related_search";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)shouldSkipSection
{
  v8.receiver = self;
  v8.super_class = SPUISRelatedSearchesSectionBuilder;
  if ([(SPUISSectionBuilder *)&v8 shouldSkipSection])
  {
    return 1;
  }

  v4 = [(SPUISSectionBuilder *)self queryContext];
  v5 = [v4 searchEntities];
  v6 = [v5 firstObject];
  if ([v6 isContactEntitySearch])
  {
    v3 = [(SPUISSectionBuilder *)self renderState]!= 4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)buildCardSections
{
  v2 = self;
  v54 = *MEMORY[0x277D85DE8];
  v3 = [(SPUISSectionBuilder *)self queryContext];
  v4 = [v3 searchEntities];
  v5 = [v4 firstObject];

  v6 = [v3 searchString];
  if (![(__CFString *)v6 length])
  {
    v7 = [v5 searchString];

    v6 = v7;
  }

  v8 = [v5 tokenText];
  v44 = v3;
  if ([v8 length] && -[__CFString length](v6, "length") && (-[__CFString isEqualToString:](v6, "isEqualToString:", v8) & 1) == 0 && (objc_msgSend(v5, "isPhotosEntitySearch") & 1) == 0)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [SPUISUtilities localizedStringForKey:@"SEARCH_CONTINUATION_STRING_FORMAT"];
    v9 = [v10 localizedStringWithFormat:v11, v8, v6];

    v6 = v11;
    goto LABEL_12;
  }

  if ([v8 length] && !-[__CFString length](v6, "length") && (objc_msgSend(v5, "isPhotosEntitySearch") & 1) == 0)
  {
    v9 = v8;
LABEL_12:

    v6 = v9;
  }

  v43 = v8;
  if (!v6)
  {
    v6 = &stru_287C50EE8;
  }

  v12 = [(SPUISSectionBuilder *)v2 section];
  v13 = [v12 resultSet];
  v14 = [v13 array];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v47 objects:v53 count:16];
  v45 = v5;
  if (v16)
  {
    v17 = v16;
    v42 = v2;
    v18 = *v48;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v47 + 1) + 8 * i);
        v21 = [v20 inlineCard];
        v22 = [v21 cardSections];
        v23 = [v22 firstObject];
        v24 = [v23 command];

        v25 = [v20 title];
        v26 = [v25 text];
        if ([v26 isEqualToString:v6])
        {

LABEL_29:
          v29 = 1;
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = [v24 searchString];
          v28 = [v27 isEqualToString:v6];

          if (v28)
          {
            goto LABEL_29;
          }
        }

        else
        {
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    v29 = 0;
LABEL_30:
    v5 = v45;
    v2 = v42;
  }

  else
  {
    v29 = 0;
  }

  v46.receiver = v2;
  v46.super_class = SPUISRelatedSearchesSectionBuilder;
  v30 = [(SPUISSectionBuilder *)&v46 buildCardSections];
  v31 = [v5 isContactEntitySearch];
  if ((v29 & 1) == 0)
  {
    if (v31)
    {
      v32 = @"rs: contactAsTypedSuggestion";
    }

    else
    {
      v32 = [@"rs:" stringByAppendingString:v6];
    }

    v33 = [MEMORY[0x277D4C3A0] textWithString:v6];
    [v33 setIsEmphasized:1];
    v34 = objc_opt_new();
    v52 = v33;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
    [v34 setFormattedTextPieces:v35];

    v36 = objc_opt_new();
    [v36 setSearchString:v6];
    v37 = objc_opt_new();
    [v37 setSuggestionText:v34];
    [v37 setSuggestionType:4];
    [v37 setResultIdentifier:v32];
    [v37 setCardSectionId:v32];
    [v37 setCommand:v36];
    v51 = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    v39 = [v38 arrayByAddingObjectsFromArray:v30];

    v30 = v39;
    v5 = v45;
  }

  v40 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)buildTitle
{
  v2 = MEMORY[0x277D4C598];
  v3 = [SPUISUtilities localizedStringForKey:@"RELATED_SEARCHES"];
  v4 = [v2 textWithString:v3];

  return v4;
}

@end