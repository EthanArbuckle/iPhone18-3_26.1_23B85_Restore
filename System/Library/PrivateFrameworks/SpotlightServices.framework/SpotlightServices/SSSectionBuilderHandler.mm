@interface SSSectionBuilderHandler
+ (Class)sectionBuilderClassForSection:(id)section withQueryContext:(id)context;
+ (id)buildSectionsWithSections:(id)sections queryContext:(id)context searchInAppInfo:(id)info renderState:(unint64_t)state;
+ (id)cachedValueForKey:(id)key cache:(id)cache computeHandler:(id)handler;
+ (id)findDistinctPathIdentifiersForSections:(id)sections;
+ (void)filterResultsFromSections:(id)sections queryContext:(id)context;
+ (void)injectRecentsOptionsIntoResult:(id)result;
- (NSSet)bundleIdentifiersForHiddenSections;
- (SPSearchContactEntity)contactEntity;
- (SPSearchEntity)searchEntity;
- (id)buildSections;
- (void)insertDummySectionsIntoSections:(id)sections;
@end

@implementation SSSectionBuilderHandler

+ (id)cachedValueForKey:(id)key cache:(id)cache computeHandler:(id)handler
{
  keyCopy = key;
  cacheCopy = cache;
  handlerCopy = handler;
  if (keyCopy)
  {
    v10 = [cacheCopy objectForKey:keyCopy];
    if (!v10)
    {
      v10 = handlerCopy[2](handlerCopy);
      if (v10)
      {
        [cacheCopy setObject:v10 forKey:keyCopy];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)filterResultsFromSections:(id)sections queryContext:(id)context
{
  v30 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  contextCopy = context;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  searchEntities = [contextCopy searchEntities];
  firstObject = [searchEntities firstObject];

  firstObject2 = [sectionsCopy firstObject];
  v12 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    +[SPSearchAppEntity metadataSpecialCasedAppEntityBundles];
    v13 = v24 = v7;
    effectiveBundleIdentifier = [firstObject effectiveBundleIdentifier];
    v15 = [v13 containsObject:effectiveBundleIdentifier];

    v7 = v24;
    if ((v15 & 1) == 0)
    {
      appURL = [firstObject appURL];
      path = [appURL path];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      resultSet = [firstObject2 resultSet];
      v18 = [resultSet countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        do
        {
          v21 = 0;
          do
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(resultSet);
            }

            [v12 addObject:{*(*(&v25 + 1) + 8 * v21++), path}];
          }

          while (v19 != v21);
          v19 = [resultSet countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v19);
      }

      [firstObject2 setResults:v12];
      v7 = v24;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

+ (id)buildSectionsWithSections:(id)sections queryContext:(id)context searchInAppInfo:(id)info renderState:(unint64_t)state
{
  infoCopy = info;
  contextCopy = context;
  sectionsCopy = sections;
  [self filterResultsFromSections:sectionsCopy queryContext:contextCopy];
  v13 = objc_opt_new();
  [v13 setSections:sectionsCopy];

  [v13 setQueryContext:contextCopy];
  [v13 setSearchInAppInfo:infoCopy];

  [v13 setRenderState:state];
  buildSections = [v13 buildSections];

  return buildSections;
}

+ (Class)sectionBuilderClassForSection:(id)section withQueryContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  contextCopy = context;
  if (sectionBuilderClassForSection_withQueryContext__onceToken != -1)
  {
    +[SSSectionBuilderHandler sectionBuilderClassForSection:withQueryContext:];
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
      if ([v12 supportsSection:sectionCopy queryContext:{contextCopy, v20}])
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

  searchEntities = [contextCopy searchEntities];
  v14 = [searchEntities count];
  v15 = off_1E85936D0;
  if (v14)
  {
    v15 = off_1E8593868;
  }

  v16 = *v15;
  v12 = objc_opt_class();

LABEL_16:
  v17 = v12;

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

void __74__SSSectionBuilderHandler_sectionBuilderClassForSection_withQueryContext___block_invoke()
{
  v3[17] = *MEMORY[0x1E69E9840];
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
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:17];
  v1 = sectionBuilderClassForSection_withQueryContext__supportedClasses;
  sectionBuilderClassForSection_withQueryContext__supportedClasses = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (void)injectRecentsOptionsIntoResult:(id)result
{
  v21[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if ([resultCopy shouldUseCompactDisplay] && (objc_msgSend(resultCopy, "compactCard"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    compactCard = [resultCopy compactCard];
  }

  else
  {
    compactCard = [resultCopy inlineCard];
  }

  cardSections = [compactCard cardSections];
  firstObject = [cardSections firstObject];

  sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
  if ([self isZKWRecentBundle:sectionBundleIdentifier])
  {
    v11 = [self makeClearProactiveCategoryButtonItemWithCategory:1 shouldClearWholeSection:1 result:resultCopy];
    v12 = [self makeClearProactiveCategoryButtonItemWithCategory:1 shouldClearWholeSection:0 result:resultCopy];
    previewButtonItems = [firstObject previewButtonItems];
    if (previewButtonItems)
    {
      previewButtonItems2 = [firstObject previewButtonItems];
      v15 = [previewButtonItems2 arrayByAddingObject:v11];
      [firstObject setPreviewButtonItems:v15];
    }

    else
    {
      v21[0] = v11;
      previewButtonItems2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [firstObject setPreviewButtonItems:previewButtonItems2];
    }

    trailingSwipeButtonItems = [firstObject trailingSwipeButtonItems];
    if (trailingSwipeButtonItems)
    {
      trailingSwipeButtonItems2 = [firstObject trailingSwipeButtonItems];
      v18 = [trailingSwipeButtonItems2 arrayByAddingObject:v12];
      [firstObject setTrailingSwipeButtonItems:v18];
    }

    else
    {
      v20 = v12;
      trailingSwipeButtonItems2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
      [firstObject setTrailingSwipeButtonItems:trailingSwipeButtonItems2];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

+ (id)findDistinctPathIdentifiersForSections:(id)sections
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);

  return v3;
}

- (void)insertDummySectionsIntoSections:(id)sections
{
  v31[3] = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  searchEntity = [(SSSectionBuilderHandler *)self searchEntity];
  if (([searchEntity isFolderSearch] & 1) == 0)
  {
    v6 = [SFMutableResultSection mutableSectionWithBundleId:@"com.apple.spotlight.contactHeader"];
    [sectionsCopy insertObject:v6 atIndex:0];

    lastObject = [sectionsCopy lastObject];
    bundleIdentifier = [lastObject bundleIdentifier];
    if ([bundleIdentifier isEqualToString:?])
    {
      v9 = lastObject;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = isMacOS();
    if (!searchEntity && (v11 & 1) == 0)
    {
      bundleIdentifiersForHiddenSections = [(SSSectionBuilderHandler *)self bundleIdentifiersForHiddenSections];
      v13 = [bundleIdentifiersForHiddenSections count];

      if (v13)
      {
        v14 = [sectionsCopy count] - (v10 != 0);
        v15 = [SFMutableResultSection mutableSectionWithBundleId:@"com.apple.other:show_more"];
        [sectionsCopy insertObject:v15 atIndex:v14];
      }
    }

    v30 = v10;
    bundleIdentifier2 = [lastObject bundleIdentifier];
    v17 = [bundleIdentifier2 isEqualToString:@"com.apple.spotlight.related_search"];

    if (lastObject)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = [sectionsCopy count];
    v31[0] = @"com.apple.MobileAddressBook.SocialMedia";
    v31[1] = @"com.apple.spotlight.contactInfo";
    v31[2] = @"com.apple.searchd.searchThroughSuggestions";
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
    v21 = [v20 count];
    v22 = (v21 - 1);
    if (v21 - 1 >= 0)
    {
      v23 = v19 - v18;
      do
      {
        v24 = [v20 objectAtIndexedSubscript:v22];
        v25 = [SFMutableResultSection mutableSectionWithBundleId:v24];
        [sectionsCopy insertObject:v25 atIndex:v23];

        --v22;
      }

      while (v22 != -1);
    }

    if ((isMacOS() & 1) == 0)
    {
      queryContext = [(SSSectionBuilderHandler *)self queryContext];
      if (([queryContext queryKind] - 5) >= 4)
      {
        v27 = [searchEntity isContactEntitySearch] ^ 1;
      }

      else
      {
        v27 = 0;
      }

      if ((v27 & 1) == 0 && !v30)
      {
        v28 = [SFMutableResultSection mutableSectionWithBundleId:@"com.apple.parsec.related_search"];
        [sectionsCopy addObject:v28];
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (id)buildSections
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = SSGeneralLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  v47 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9F69000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "buildSections", "", buf, 2u);
  }

  spid = v4;
  log = v6;

  v7 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  sections = [(SSSectionBuilderHandler *)self sections];
  v9 = [sections countByEnumeratingWithState:&v58 objects:v65 count:16];
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
          objc_enumerationMutation(sections);
        }

        v13 = *(*(&v58 + 1) + 8 * i);
        results = [v13 results];
        v15 = [results count];

        if (v15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [sections countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v10);
  }

  queryContext = [(SSSectionBuilderHandler *)self queryContext];
  if ([(SSSectionBuilderHandler *)self renderState]!= 1)
  {
    [(SSSectionBuilderHandler *)self insertDummySectionsIntoSections:v7];
  }

  contactEntity = [(SSSectionBuilderHandler *)self contactEntity];
  v46 = contactEntity;
  if (contactEntity)
  {
    v18 = contactEntity;
    v19 = [SSContactResultBuilder alloc];
    contact = [v18 contact];
    v21 = [contact mutableCopy];
    v22 = v18;
    v23 = v21;
    v24 = [(SSContactResultBuilder *)v19 initWithResult:0 contactEntity:v22 contact:v21];

    v48 = v24;
    [(SSResultBuilder *)v24 setQueryContext:queryContext];
  }

  else
  {
    v48 = 0;
  }

  v50 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
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
        v28 = [objc_opt_class() sectionBuilderClassForSection:v27 withQueryContext:queryContext];
        v29 = objc_opt_new();
        [v29 setQueryContext:queryContext];
        [v29 setSection:v27];
        [v29 setRenderState:{-[SSSectionBuilderHandler renderState](self, "renderState")}];
        bundleIdentifier = [v27 bundleIdentifier];
        [v29 setIsTopHitSection:{objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.spotlight.tophits"}];

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
            bundleIdentifiersForHiddenSections = [(SSSectionBuilderHandler *)self bundleIdentifiersForHiddenSections];
            [v29 setBundleIdentifiersForHiddenSections:bundleIdentifiersForHiddenSections];

            searchInAppInfo = [(SSSectionBuilderHandler *)self searchInAppInfo];
            [v29 setSearchInAppInfo:searchInAppInfo];
          }
        }

        v33 = os_signpost_id_generate(log);
        v34 = log;
        v35 = v34;
        if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
        {
          *buf = 138412290;
          v63 = v28;
          _os_signpost_emit_with_name_impl(&dword_1D9F69000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v33, "SSSectionBuilder: buildSection", "%@", buf, 0xCu);
        }

        buildSection = [v29 buildSection];
        v37 = v35;
        v38 = v37;
        if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
        {
          *buf = 138412290;
          v63 = v28;
          _os_signpost_emit_with_name_impl(&dword_1D9F69000, v38, OS_SIGNPOST_INTERVAL_END, v33, "SSSectionBuilder: buildSection", "%@", buf, 0xCu);
        }

        results2 = [buildSection results];
        v40 = [results2 count];

        if (v40)
        {
          [v50 addObject:buildSection];
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
    _os_signpost_emit_with_name_impl(&dword_1D9F69000, v42, OS_SIGNPOST_INTERVAL_END, spid, "SSSectionBuilder, buildSections", "%@", buf, 0xCu);
  }

  v43 = *MEMORY[0x1E69E9840];

  return v50;
}

- (NSSet)bundleIdentifiersForHiddenSections
{
  v20 = *MEMORY[0x1E69E9840];
  bundleIdentifiersForHiddenSections = self->_bundleIdentifiersForHiddenSections;
  if (!bundleIdentifiersForHiddenSections)
  {
    v4 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    sections = [(SSSectionBuilderHandler *)self sections];
    v6 = [sections countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(sections);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ([v10 isInitiallyHidden])
          {
            bundleIdentifier = [v10 bundleIdentifier];
            [(NSSet *)v4 addObject:bundleIdentifier];
          }
        }

        v7 = [sections countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v12 = self->_bundleIdentifiersForHiddenSections;
    self->_bundleIdentifiersForHiddenSections = v4;

    bundleIdentifiersForHiddenSections = self->_bundleIdentifiersForHiddenSections;
  }

  v13 = *MEMORY[0x1E69E9840];

  return bundleIdentifiersForHiddenSections;
}

- (SPSearchEntity)searchEntity
{
  searchEntity = self->_searchEntity;
  if (!searchEntity)
  {
    queryContext = [(SSSectionBuilderHandler *)self queryContext];
    searchEntities = [queryContext searchEntities];
    firstObject = [searchEntities firstObject];
    v7 = self->_searchEntity;
    self->_searchEntity = firstObject;

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
    searchEntity = [(SSSectionBuilderHandler *)self searchEntity];
    v6 = searchEntity;
    if (searchEntity)
    {
      firstObject = searchEntity;
    }

    else
    {
      queryContext = [(SSSectionBuilderHandler *)self queryContext];
      searchEntities = [queryContext searchEntities];
      firstObject = [searchEntities firstObject];
    }

    if ([firstObject isContactEntitySearch])
    {
      v10 = firstObject;
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