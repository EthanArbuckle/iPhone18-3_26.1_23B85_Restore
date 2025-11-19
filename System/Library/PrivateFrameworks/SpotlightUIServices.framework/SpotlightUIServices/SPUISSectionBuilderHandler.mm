@interface SPUISSectionBuilderHandler
+ (Class)sectionBuilderClassForSection:(id)a3 withQueryContext:(id)a4;
+ (id)buildSectionsWithSections:(id)a3 queryContext:(id)a4 searchInAppInfo:(id)a5 renderState:(unint64_t)a6;
+ (id)cachedValueForKey:(id)a3 cache:(id)a4 computeHandler:(id)a5;
+ (id)findDistinctPathIdentifiersForSections:(id)a3;
+ (void)filterResultsFromSections:(id)a3 queryContext:(id)a4;
+ (void)injectRecentsOptionsIntoResult:(id)a3;
- (NSSet)bundleIdentifiersForHiddenSections;
- (SPSearchContactEntity)contactEntity;
- (SPSearchEntity)searchEntity;
- (id)buildSections;
- (void)insertDummySectionsIntoSections:(id)a3;
@end

@implementation SPUISSectionBuilderHandler

+ (id)cachedValueForKey:(id)a3 cache:(id)a4 computeHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = [v8 objectForKey:v7];
    if (!v10)
    {
      v10 = v9[2](v9);
      if (v10)
      {
        [v8 setObject:v10 forKey:v7];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)filterResultsFromSections:(id)a3 queryContext:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = [v7 searchEntities];
  v11 = [v10 firstObject];

  v12 = [v6 firstObject];
  v13 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [a1 metadataSpecialCasedAppEntityBundles];
    [v11 bundleIdentifier];
    v15 = v25 = v8;
    v16 = [v14 containsObject:v15];

    v8 = v25;
    if ((v16 & 1) == 0)
    {
      v17 = [v11 appURL];
      v24 = [v17 path];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v18 = [v12 resultSet];
      v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v27;
        do
        {
          v22 = 0;
          do
          {
            if (*v27 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [v13 addObject:{*(*(&v26 + 1) + 8 * v22++), v24}];
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v20);
      }

      [v12 setResults:v13];
      v8 = v25;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (id)buildSectionsWithSections:(id)a3 queryContext:(id)a4 searchInAppInfo:(id)a5 renderState:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  [a1 filterResultsFromSections:v12 queryContext:v11];
  v13 = objc_opt_new();
  [v13 setSections:v12];

  [v13 setQueryContext:v11];
  [v13 setSearchInAppInfo:v10];

  [v13 setRenderState:a6];
  v14 = [v13 buildSections];

  return v14;
}

+ (Class)sectionBuilderClassForSection:(id)a3 withQueryContext:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (sectionBuilderClassForSection_withQueryContext__onceToken != -1)
  {
    +[SPUISSectionBuilderHandler sectionBuilderClassForSection:withQueryContext:];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = sectionBuilderClassForSection_withQueryContext__supportedClasses;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v20 + 1) + 8 * v11);
      if ([v12 supportsSection:v5 queryContext:{v6, v20}])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    if (v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_11:
  }

  v13 = [v6 searchEntities];
  v14 = [v13 count];
  v15 = off_279D0AAC0;
  if (v14)
  {
    v15 = off_279D0ABB8;
  }

  v16 = *v15;
  v12 = objc_opt_class();

LABEL_16:
  v17 = v12;

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

void __77__SPUISSectionBuilderHandler_sectionBuilderClassForSection_withQueryContext___block_invoke()
{
  v3[17] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  v3[9] = objc_opt_class();
  v3[10] = objc_opt_class();
  v3[11] = objc_opt_class();
  v3[12] = objc_opt_class();
  v3[13] = objc_opt_class();
  v3[14] = objc_opt_class();
  v3[15] = objc_opt_class();
  v3[16] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:17];
  v1 = sectionBuilderClassForSection_withQueryContext__supportedClasses;
  sectionBuilderClassForSection_withQueryContext__supportedClasses = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (void)injectRecentsOptionsIntoResult:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 shouldUseCompactDisplay] && (objc_msgSend(v4, "compactCard"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v4 compactCard];
  }

  else
  {
    v7 = [v4 inlineCard];
  }

  v8 = [v7 cardSections];
  v9 = [v8 firstObject];

  v10 = [v4 sectionBundleIdentifier];
  if ([a1 isZKWRecentBundle:v10])
  {
    v11 = [a1 makeClearProactiveCategoryButtonItemWithCategory:1 shouldClearWholeSection:1 result:v4];
    v12 = [a1 makeClearProactiveCategoryButtonItemWithCategory:1 shouldClearWholeSection:0 result:v4];
    v13 = [v9 previewButtonItems];
    if (v13)
    {
      v14 = [v9 previewButtonItems];
      v15 = [v14 arrayByAddingObject:v11];
      [v9 setPreviewButtonItems:v15];
    }

    else
    {
      v21[0] = v11;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
      [v9 setPreviewButtonItems:v14];
    }

    v16 = [v9 trailingSwipeButtonItems];
    if (v16)
    {
      v17 = [v9 trailingSwipeButtonItems];
      v18 = [v17 arrayByAddingObject:v12];
      [v9 setTrailingSwipeButtonItems:v18];
    }

    else
    {
      v20 = v12;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      [v9 setTrailingSwipeButtonItems:v17];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)findDistinctPathIdentifiersForSections:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);

  return v3;
}

- (void)insertDummySectionsIntoSections:(id)a3
{
  v32[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SPUISSectionBuilderHandler *)self searchEntity];
  if (([v5 isFolderSearch] & 1) == 0)
  {
    v6 = [MEMORY[0x277D65848] mutableSectionWithBundleId:@"com.apple.spotlight.contactHeader"];
    [v4 insertObject:v6 atIndex:0];

    v7 = [v4 lastObject];
    v8 = [v7 bundleIdentifier];
    if ([v8 isEqualToString:@"com.apple.parsec.related_search"])
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = +[SPUISUtilities isMacOS];
    if (!v5 && !v11)
    {
      v12 = [(SPUISSectionBuilderHandler *)self bundleIdentifiersForHiddenSections];
      v13 = [v12 count];

      if (v13)
      {
        v14 = [v4 count] - (v10 != 0);
        v15 = [MEMORY[0x277D65848] mutableSectionWithBundleId:@"com.apple.other:show_more"];
        [v4 insertObject:v15 atIndex:v14];
      }
    }

    v31 = v10;
    v16 = [v7 bundleIdentifier];
    v17 = [v16 isEqualToString:@"com.apple.spotlight.related_search"];

    if (v7)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = [v4 count];
    v32[0] = @"com.apple.MobileAddressBook.SocialMedia";
    v32[1] = @"com.apple.spotlight.contactInfo";
    v32[2] = @"com.apple.searchd.searchThroughSuggestions";
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
    v21 = [v20 count];
    v22 = (v21 - 1);
    if (v21 - 1 >= 0)
    {
      v23 = v19 - v18;
      do
      {
        v24 = MEMORY[0x277D65848];
        v25 = [v20 objectAtIndexedSubscript:v22];
        v26 = [v24 mutableSectionWithBundleId:v25];
        [v4 insertObject:v26 atIndex:v23];

        --v22;
      }

      while (v22 != -1);
    }

    if (!+[SPUISUtilities isMacOS])
    {
      v27 = [(SPUISSectionBuilderHandler *)self queryContext];
      if (([v27 queryKind] - 5) >= 4)
      {
        v28 = [v5 isContactEntitySearch] ^ 1;
      }

      else
      {
        v28 = 0;
      }

      if ((v28 & 1) == 0 && !v31)
      {
        v29 = [MEMORY[0x277D65848] mutableSectionWithBundleId:@"com.apple.parsec.related_search"];
        [v4 addObject:v29];
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)buildSections
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = SPUISGeneralLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  v47 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B882000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "buildSections", "", buf, 2u);
  }

  spid = v4;
  log = v6;

  v7 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v8 = [(SPUISSectionBuilderHandler *)self sections];
  v9 = [v8 countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v59;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v58 + 1) + 8 * i);
        v14 = [v13 results];
        v15 = [v14 count];

        if (v15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v10);
  }

  v16 = [(SPUISSectionBuilderHandler *)self queryContext];
  if ([(SPUISSectionBuilderHandler *)self renderState]!= 1)
  {
    [(SPUISSectionBuilderHandler *)self insertDummySectionsIntoSections:v7];
  }

  v17 = [(SPUISSectionBuilderHandler *)self contactEntity];
  v46 = v17;
  if (v17)
  {
    v18 = v17;
    v19 = [SPUISContactResultBuilder alloc];
    v20 = [v18 contact];
    v21 = [v20 mutableCopy];
    v22 = v18;
    v23 = v21;
    v24 = [(SPUISContactResultBuilder *)v19 initWithResult:0 contactEntity:v22 contact:v21];

    v48 = v24;
    [(SPUISResultBuilder *)v24 setQueryContext:v16];
  }

  else
  {
    v48 = 0;
  }

  v50 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v25 = v7;
  v53 = [v25 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v53)
  {
    v51 = *v55;
    obj = v25;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v55 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v54 + 1) + 8 * j);
        v28 = [objc_opt_class() sectionBuilderClassForSection:v27 withQueryContext:v16];
        v29 = objc_opt_new();
        [v29 setQueryContext:v16];
        [v29 setSection:v27];
        [v29 setRenderState:{-[SPUISSectionBuilderHandler renderState](self, "renderState")}];
        v30 = [v27 bundleIdentifier];
        [v29 setIsTopHitSection:{objc_msgSend(v30, "isEqualToString:", @"com.apple.spotlight.tophits"}];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v29 setContactResultBuilder:v48];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = [(SPUISSectionBuilderHandler *)self bundleIdentifiersForHiddenSections];
            [v29 setBundleIdentifiersForHiddenSections:v31];

            v32 = [(SPUISSectionBuilderHandler *)self searchInAppInfo];
            [v29 setSearchInAppInfo:v32];
          }
        }

        v33 = os_signpost_id_generate(log);
        v34 = log;
        v35 = v34;
        if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
        {
          *buf = 138412290;
          v63 = v28;
          _os_signpost_emit_with_name_impl(&dword_26B882000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v33, "SPUISSectionBuilder: buildSection", "%@", buf, 0xCu);
        }

        v36 = [v29 buildSection];
        v37 = v35;
        v38 = v37;
        if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
        {
          *buf = 138412290;
          v63 = v28;
          _os_signpost_emit_with_name_impl(&dword_26B882000, v38, OS_SIGNPOST_INTERVAL_END, v33, "SPUISSectionBuilder: buildSection", "%@", buf, 0xCu);
        }

        v39 = [v36 results];
        v40 = [v39 count];

        if (v40)
        {
          [v50 addObject:v36];
        }
      }

      v25 = obj;
      v53 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v53);
  }

  v41 = log;
  v42 = v41;
  if (v47 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 138412290;
    v63 = v25;
    _os_signpost_emit_with_name_impl(&dword_26B882000, v42, OS_SIGNPOST_INTERVAL_END, spid, "SPUISSectionBuilder, buildSections", "%@", buf, 0xCu);
  }

  v43 = *MEMORY[0x277D85DE8];

  return v50;
}

- (NSSet)bundleIdentifiersForHiddenSections
{
  v20 = *MEMORY[0x277D85DE8];
  bundleIdentifiersForHiddenSections = self->_bundleIdentifiersForHiddenSections;
  if (!bundleIdentifiersForHiddenSections)
  {
    v4 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [(SPUISSectionBuilderHandler *)self sections];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ([v10 isInitiallyHidden])
          {
            v11 = [v10 bundleIdentifier];
            [(NSSet *)v4 addObject:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v12 = self->_bundleIdentifiersForHiddenSections;
    self->_bundleIdentifiersForHiddenSections = v4;

    bundleIdentifiersForHiddenSections = self->_bundleIdentifiersForHiddenSections;
  }

  v13 = *MEMORY[0x277D85DE8];

  return bundleIdentifiersForHiddenSections;
}

- (SPSearchEntity)searchEntity
{
  searchEntity = self->_searchEntity;
  if (!searchEntity)
  {
    v4 = [(SPUISSectionBuilderHandler *)self queryContext];
    v5 = [v4 searchEntities];
    v6 = [v5 firstObject];
    v7 = self->_searchEntity;
    self->_searchEntity = v6;

    searchEntity = self->_searchEntity;
  }

  return searchEntity;
}

- (SPSearchContactEntity)contactEntity
{
  p_contactEntity = &self->_contactEntity;
  contactEntity = self->_contactEntity;
  if (!contactEntity)
  {
    v5 = [(SPUISSectionBuilderHandler *)self searchEntity];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = [(SPUISSectionBuilderHandler *)self queryContext];
      v9 = [v8 searchEntities];
      v7 = [v9 firstObject];
    }

    if ([v7 isContactEntitySearch])
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong(p_contactEntity, v10);

    contactEntity = *p_contactEntity;
  }

  return contactEntity;
}

@end