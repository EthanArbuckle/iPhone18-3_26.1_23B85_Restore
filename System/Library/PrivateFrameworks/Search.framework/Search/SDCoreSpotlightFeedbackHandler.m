@interface SDCoreSpotlightFeedbackHandler
+ (id)sharedInstance;
- (BOOL)_isSafari:(id)a3;
- (SDCoreSpotlightFeedbackHandler)init;
- (id)_remapSafariSyntheticBookmarkID:(id)a3;
- (void)deleteEngagementItem:(id)a3 externalIdentifier:(id)a4 protectionClass:(id)a5;
- (void)didEngageResult:(id)a3 engagedAnalyticsItem:(id)a4 atPosition:(unint64_t)a5 withEvent:(unint64_t)a6 forQuery:(id)a7 currentTime:(id)a8;
- (void)didEngageSection:(id)a3;
- (void)didEngageSection:(id)a3 withEvent:(unint64_t)a4;
- (void)didPerformCommand:(id)a3;
- (void)didRankSections:(id)a3;
- (void)didStartSearch:(id)a3;
- (void)indexEngagementItem:(id)a3 currentTime:(id)a4 externalIdentifier:(id)a5 protectionClass:(id)a6 expire:(BOOL)a7 shortcutString:(id)a8 update:(BOOL)a9;
- (void)searchViewDidDisappear:(id)a3;
- (void)updateRankingSectionItemsForResult:(id)a3 withQuery:(id)a4;
- (void)updateShortcutForResult:(id)a3 withQuery:(id)a4 currentTime:(id)a5;
- (void)updateSpotlightUsageCount;
@end

@implementation SDCoreSpotlightFeedbackHandler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SDCoreSpotlightFeedbackHandler sharedInstance];
  }

  v3 = sharedInstance_handler;

  return v3;
}

uint64_t __48__SDCoreSpotlightFeedbackHandler_sharedInstance__block_invoke()
{
  sharedInstance_handler = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (SDCoreSpotlightFeedbackHandler)init
{
  v5.receiver = self;
  v5.super_class = SDCoreSpotlightFeedbackHandler;
  v2 = [(SDCoreSpotlightFeedbackHandler *)&v5 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
    -[SDCoreSpotlightFeedbackHandler setIgnoreResultEngagements:](v2, "setIgnoreResultEngagements:", [v3 BOOLForKey:@"ignoreResultEngagements"]);
    [(SDCoreSpotlightFeedbackHandler *)v2 setClientRankAndBlend:_os_feature_enabled_impl()];
  }

  return v2;
}

- (void)didEngageSection:(id)a3
{
  v4 = a3;
  v6 = [v4 section];
  v5 = [v4 triggerEvent];

  [(SDCoreSpotlightFeedbackHandler *)self didEngageSection:v6 withEvent:v5];
}

- (void)didEngageSection:(id)a3 withEvent:(unint64_t)a4
{
  v5 = [a3 bundleIdentifier];
  [SPCoreAnalyticsManager logEngagementWithBundleIdentifier:v5 forEvent:a4];
}

- (void)didStartSearch:(id)a3
{
  v11 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v11;
  if (isKindOfClass)
  {
    v6 = v11;
    if ([v6 indexType] == 1)
    {
      if ([v6 triggerEvent] == 23)
      {
        v7 = [v6 input];
        if (v7)
        {
          [MEMORY[0x1E69D3E98] cacheSearchString:v7];
        }
      }

      v8 = [v6 input];
      [(SDCoreSpotlightFeedbackHandler *)self setLastQuery:v8];

      v9 = objc_opt_new();
      analyticsItems = self->_analyticsItems;
      self->_analyticsItems = v9;
    }

    v5 = v11;
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v5);
}

- (void)didRankSections:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  topAnalyticsItemPerSection = self->_topAnalyticsItemPerSection;
  self->_topAnalyticsItemPerSection = 0;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v36 = v4;
  obj = [v4 sections];
  v6 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v50;
    v9 = *MEMORY[0x1E69D3F10];
    v10 = 0x1E695D000uLL;
    v37 = *v50;
    v38 = self;
    do
    {
      v11 = 0;
      v39 = v7;
      do
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v49 + 1) + 8 * v11);
        v13 = [v12 section];
        if (!v13)
        {
          goto LABEL_33;
        }

        v42 = v11;
        if (!self->_topAnalyticsItemPerSection)
        {
          v14 = *(v10 + 3952);
          v15 = objc_opt_new();
          v16 = self->_topAnalyticsItemPerSection;
          self->_topAnalyticsItemPerSection = v15;
        }

        v17 = [v12 results];
        v18 = *(v10 + 3952);
        v44 = objc_opt_new();
        v43 = [v13 maxInitiallyVisibleResults];
        v19 = [v13 bundleIdentifier];
        if (![v19 isEqualToString:@"com.apple.spotlight.tophits"] || (objc_msgSend(v13, "isInitiallyHidden") & 1) != 0)
        {
          goto LABEL_13;
        }

        v20 = [v13 results];
        v21 = [v20 count];

        if (v43 != v21)
        {
          v19 = [v13 results];
          v43 = [v19 count];
LABEL_13:
        }

        v41 = v13;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v22 = v17;
        v23 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = 0;
          v26 = 0;
          v27 = *v46;
          while (2)
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v46 != v27)
              {
                objc_enumerationMutation(v22);
              }

              v29 = [*(*(&v45 + 1) + 8 * i) result];
              [v29 type];
              if ((SSResultTypeIsSuggestion() & 1) == 0)
              {
                v30 = [v29 sectionBundleIdentifier];
                v31 = [v30 isEqualToString:v9];

                if ((v31 & 1) == 0)
                {
                  v32 = [[SPAnalyticsItem alloc] initWithResult:v29];
                  v33 = v32;
                  if (!v25)
                  {
                    v34 = v32;

                    v26 = v34;
                  }

                  [v44 addObject:v33];
                  ++v25;

                  if (v25 == v43)
                  {

                    goto LABEL_28;
                  }
                }
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }

LABEL_28:

          v8 = v37;
          v7 = v39;
          self = v38;
          if (v26)
          {
            [(NSMutableArray *)v38->_topAnalyticsItemPerSection addObject:v26];
          }

          v10 = 0x1E695D000;
        }

        else
        {

          v26 = 0;
        }

        v11 = v42;
        [(NSMutableArray *)self->_analyticsItems addObjectsFromArray:v44];

        v13 = v41;
LABEL_33:

        ++v11;
      }

      while (v11 != v7);
      v7 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v7);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isSafari:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.mobilesafari"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.Safari"];
  }

  return v4;
}

- (id)_remapSafariSyntheticBookmarkID:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:SyntheticBookmarkPrefix])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(SyntheticBookmarkPrefix, "length")}];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (void)didPerformCommand:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 result];
  if (!self->_ignoreResultEngagements)
  {
    v26 = v4;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = self->_analyticsItems;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        v12 = [v11 identifier];
        v13 = [v5 identifier];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v16 = [(NSMutableArray *)self->_analyticsItems indexOfObject:v11];
      v15 = v11;

      if (!v15)
      {
        goto LABEL_14;
      }

      [SPCoreAnalyticsManager computeEngagementMatrixForEngagedItem:v15 topAnalyticsItemsPerSection:self->_topAnalyticsItemPerSection];
      v17 = 0;
    }

    else
    {
LABEL_11:

      v15 = 0;
      v16 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:
      v17 = 1;
    }

    v18 = [MEMORY[0x1E695DF00] date];
    v19 = [v5 applicationBundleIdentifier];
    v20 = [(SDCoreSpotlightFeedbackHandler *)self _isSafari:v19];

    if (v20)
    {
      v21 = [v5 identifier];
      v22 = [(SDCoreSpotlightFeedbackHandler *)self _remapSafariSyntheticBookmarkID:v21];
      [v5 setIdentifier:v22];
    }

    v4 = v26;
    if ((PRSRankingSDEnabledFlagState() & 2) != 0)
    {
      [(SDCoreSpotlightFeedbackHandler *)v18 didPerformCommand:?];
      v18 = v31;
      if (v17)
      {
        goto LABEL_20;
      }
    }

    else if (v17)
    {
LABEL_20:

      goto LABEL_21;
    }

    v23 = [v26 triggerEvent];
    v24 = [(SDCoreSpotlightFeedbackHandler *)self lastQuery];
    [(SDCoreSpotlightFeedbackHandler *)self didEngageResult:v5 engagedAnalyticsItem:v15 atPosition:v16 withEvent:v23 forQuery:v24 currentTime:v18];

    goto LABEL_20;
  }

  NSLog(&cfstr_SkippingFeedba.isa);
LABEL_21:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)didEngageResult:(id)a3 engagedAnalyticsItem:(id)a4 atPosition:(unint64_t)a5 withEvent:(unint64_t)a6 forQuery:(id)a7 currentTime:(id)a8
{
  v16 = a3;
  v14 = a7;
  v15 = a8;
  [SPCoreAnalyticsManager logEngagementWithItem:a4 atPosition:a5 forEvent:a6];
  if (a6 != 5)
  {
    [(SDCoreSpotlightFeedbackHandler *)self updateRankingSectionItemsForResult:v16 withQuery:v14];
    [(SDCoreSpotlightFeedbackHandler *)self updateSpotlightUsageCount];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SDCoreSpotlightFeedbackHandler *)self updateShortcutForResult:v16 withQuery:v14 currentTime:v15];
    }
  }
}

- (void)searchViewDidDisappear:(id)a3
{
  analyticsItems = self->_analyticsItems;
  self->_analyticsItems = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)updateSpotlightUsageCount
{
  v2 = dispatch_get_global_queue(17, 0);
  dispatch_async(v2, &__block_literal_global_128_0);
}

void __59__SDCoreSpotlightFeedbackHandler_updateSpotlightUsageCount__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
  v0 = [v2 objectForKey:@"usedCount"];

  if (v0)
  {
    v1 = [v2 integerForKey:@"usedCount"] + 1;
  }

  else
  {
    v1 = 1;
  }

  [v2 setInteger:v1 forKey:@"usedCount"];
}

- (void)indexEngagementItem:(id)a3 currentTime:(id)a4 externalIdentifier:(id)a5 protectionClass:(id)a6 expire:(BOOL)a7 shortcutString:(id)a8 update:(BOOL)a9
{
  v10 = a7;
  v34[3] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  v19 = MEMORY[0x1E6964E80];
  v20 = a5;
  v21 = objc_alloc_init(v19);
  [v21 setUniqueIdentifier:v20];

  [v21 setBundleID:v15];
  if (v10)
  {
    v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:2592000.0];
    [v21 setExpirationDate:v22];
  }

  v23 = objc_alloc(MEMORY[0x1E6964E90]);
  v33[0] = @"_kMDItemShortcutLastUsedDate";
  v33[1] = @"kMDItemLastUsedDate";
  v34[0] = v16;
  v34[1] = v16;
  v33[2] = @"_kMDItemLaunchString";
  v34[2] = v18;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
  v25 = [v23 initWithAttributes:v24];
  [v21 setAttributeSet:v25];

  if (!a9)
  {
    v26 = [v21 attributeSet];
    [v26 setDisplayName:v18];
  }

  [v21 setIsUpdate:a9];
  if (self->_clientRankAndBlend)
  {
    v27 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
    v32 = v21;
    v28 = &v32;
  }

  else
  {
    v27 = [MEMORY[0x1E69D3DC0] sharedInstance];
    v31 = v21;
    v28 = &v31;
  }

  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [v27 indexSearchableItems:v29 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v17 forBundleID:v15 options:0 completionHandler:0];

  v30 = *MEMORY[0x1E69E9840];
}

- (void)deleteEngagementItem:(id)a3 externalIdentifier:(id)a4 protectionClass:(id)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (self->_clientRankAndBlend)
  {
    v8 = MEMORY[0x1E6964E78];
    v9 = a5;
    v10 = a4;
    v11 = a3;
    v12 = [v8 defaultSearchableIndex];
    v21[0] = v10;
    v13 = v21;
  }

  else
  {
    v14 = MEMORY[0x1E69D3DC0];
    v15 = a5;
    v16 = a4;
    v17 = a3;
    v12 = [v14 sharedInstance];
    v20 = v16;
    v13 = &v20;
  }

  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  [v12 indexSearchableItems:0 deleteSearchableItemsWithIdentifiers:v18 clientState:0 protectionClass:a5 forBundleID:a3 options:0 completionHandler:0];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)updateShortcutForResult:(id)a3 withQuery:(id)a4 currentTime:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  NSLog(&cfstr_Updateshortcut.isa, v7);
  v10 = [v7 getStableServerResultIdentifier];
  v11 = [v7 feedbackSectionIdentifier];
  v23 = [MEMORY[0x1E69D3E40] getSPMLSharedInstance];
  v12 = [v7 type] == 36 || objc_msgSend(v7, "type") == 37;
  v13 = [v7 protectionClass];
  if (!_os_feature_enabled_impl())
  {
    v14 = 0;
    goto LABEL_12;
  }

  if ([v11 isEqual:*MEMORY[0x1E69D3F20]] & 1) != 0 || (objc_msgSend(v11, "isEqual:", *MEMORY[0x1E69D3F18]) & 1) != 0 || (objc_msgSend(v11, "isEqual:", *MEMORY[0x1E69D3F08]))
  {
    v14 = 1;
  }

  else
  {
    v14 = [v11 isEqual:*MEMORY[0x1E69D3F00]];
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  if (!v13)
  {
    v13 = *MEMORY[0x1E696A388];
    v14 = 1;
  }

LABEL_12:
  v15 = [v7 type];
  if (v8)
  {
    v16 = v8;
    goto LABEL_15;
  }

  v16 = [v7 userInput];
  if (v16)
  {
LABEL_15:
    v17 = [v11 isEqual:*MEMORY[0x1E69D3F78]];
    if (v15 == 20)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 && v11 && v13)
    {
      v19 = v15 == 2 || v12;
      if (v19 & 1) != 0 || v15 <= 7 && ((1 << v15) & 0xD0) != 0 || ((v14 | v18))
      {
        [v23 addCategoryAndGroupNameToTrainCategories:v11 groupName:v11];
        LOBYTE(v21) = 1;
        [(SDCoreSpotlightFeedbackHandler *)self indexEngagementItem:v11 currentTime:v9 externalIdentifier:v10 protectionClass:v13 expire:v14 shortcutString:v16 update:v21];
      }
    }

    if (updateShortcutForResult_withQuery_currentTime__onceToken == -1)
    {
      if (!v11)
      {
        goto LABEL_39;
      }
    }

    else
    {
      [SDCoreSpotlightFeedbackHandler updateShortcutForResult:withQuery:currentTime:];
      if (!v11)
      {
        goto LABEL_39;
      }
    }

    if ([updateShortcutForResult_withQuery_currentTime__priorityBundleIds containsObject:v11])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v25 = v11;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_1C81BF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Clear non-priority engagement for %@ (%@)", buf, 0x16u);
      }

      [(SDCoreSpotlightFeedbackHandler *)self deleteEngagementItem:@"com.apple.searchd.engagement" externalIdentifier:v16 protectionClass:@"Priority"];
LABEL_42:

      goto LABEL_43;
    }

LABEL_39:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = v11;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_1C81BF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Capture non-priority engagement for %@ (%@)", buf, 0x16u);
    }

    LOBYTE(v21) = 0;
    [(SDCoreSpotlightFeedbackHandler *)self indexEngagementItem:@"com.apple.searchd.engagement" currentTime:v9 externalIdentifier:v16 protectionClass:@"Priority" expire:1 shortcutString:v16 update:v21];
    goto LABEL_42;
  }

LABEL_43:

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __80__SDCoreSpotlightFeedbackHandler_updateShortcutForResult_withQuery_currentTime___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F47DBEA0];
  v1 = updateShortcutForResult_withQuery_currentTime__priorityBundleIds;
  updateShortcutForResult_withQuery_currentTime__priorityBundleIds = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)updateRankingSectionItemsForResult:(id)a3 withQuery:(id)a4
{
  v34[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [v7 feedbackSectionIdentifier];
  v9 = [v7 sectionBundleIdentifier];

  if (([v9 isEqualToString:@"com.apple.application"] & 1) != 0 || !v8)
  {
  }

  else
  {

    if (v6)
    {
      if (self->_clientRankAndBlend)
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __79__SDCoreSpotlightFeedbackHandler_updateRankingSectionItemsForResult_withQuery___block_invoke;
        v27[3] = &unk_1E82F8FF0;
        v28 = v6;
        v10 = &v29;
        v11 = v8;
        v12 = &v30;
        v29 = v11;
        v30 = @"com.apple.spotlight.category";
        v13 = MEMORY[0x1CCA71310](v27);
        v14 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
        v15 = *MEMORY[0x1E6964980];
        v34[0] = *MEMORY[0x1E6964988];
        v34[1] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
        v17 = *MEMORY[0x1E696A378];
        v33 = v11;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
        v19 = v17;
        v20 = &v28;
        [v14 slowFetchAttributes:v16 protectionClass:v19 bundleID:@"com.apple.spotlight.category" identifiers:v18 completionHandler:v13];
      }

      else
      {
        v13 = [MEMORY[0x1E69D3DC0] sharedInstance];
        v21 = *MEMORY[0x1E696A378];
        v22 = *MEMORY[0x1E6964980];
        v32[0] = *MEMORY[0x1E6964988];
        v32[1] = v22;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
        v31 = v8;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
        v20 = &v24;
        v24 = v8;
        v10 = &v25;
        v12 = &v26;
        v25 = v6;
        v26 = @"com.apple.spotlight.category";
        [v13 fetchAttributesForProtectionClass:v21 attributes:v14 bundleID:? identifiers:? completion:?];
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __79__SDCoreSpotlightFeedbackHandler_updateRankingSectionItemsForResult_withQuery___block_invoke(void *a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count] && (objc_msgSend(v3, "objectAtIndexedSubscript:", 0), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v30 objects:v37 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v31;
        while (2)
        {
          v10 = 0;
          do
          {
            if (*v31 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v30 + 1) + 8 * v10);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v12 = v6;
              goto LABEL_16;
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v30 objects:v37 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v12 = 0;
LABEL_16:
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = [v12 firstObject];
      v14 = [v12 objectAtIndex:1];
      v15 = objc_opt_new();
      v16 = objc_opt_new();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v15 addObjectsFromArray:v13];
        [v16 addObjectsFromArray:v14];
      }

      v28 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.0];
      [v15 addObject:a1[4]];
      [v16 addObject:v28];
      v29 = v14;
      v17 = objc_opt_new();
      [v17 setUniqueIdentifier:a1[5]];
      [v17 setBundleID:a1[6]];
      v18 = objc_alloc(MEMORY[0x1E6964E90]);
      v19 = *MEMORY[0x1E6964980];
      v35[0] = *MEMORY[0x1E6964988];
      v35[1] = v19;
      v36[0] = v15;
      v36[1] = v16;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
      v20 = v27 = v13;
      v21 = [v18 initWithAttributes:v20];
      [v17 setAttributeSet:v21];

      v22 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
      v34 = v17;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
      v24 = *MEMORY[0x1E696A378];
      v25 = [v17 bundleID];
      [v22 indexSearchableItems:v23 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v24 forBundleID:v25 options:0 completionHandler:0];
    }
  }

  else
  {
    v5 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __79__SDCoreSpotlightFeedbackHandler_updateRankingSectionItemsForResult_withQuery___block_invoke_2(void *a1, void *a2)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = [a2 valueForKey:a1[4]];
  v4 = [v3 firstObject];
  v5 = [v3 objectAtIndex:1];
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 addObjectsFromArray:v4];
    [v7 addObjectsFromArray:v5];
  }

  [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.0];
  v8 = v19 = v5;
  [v6 addObject:a1[5]];
  [v7 addObject:v8];
  v9 = objc_opt_new();
  [v9 setUniqueIdentifier:a1[4]];
  [v9 setBundleID:a1[6]];
  v10 = objc_alloc(MEMORY[0x1E6964E90]);
  v11 = *MEMORY[0x1E6964980];
  v21[0] = *MEMORY[0x1E6964988];
  v21[1] = v11;
  v22[0] = v6;
  v22[1] = v7;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v13 = [v10 initWithAttributes:v12];
  [v9 setAttributeSet:v13];

  v14 = [MEMORY[0x1E69D3DC0] sharedInstance];
  v20 = v9;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v16 = *MEMORY[0x1E696A378];
  v17 = [v9 bundleID];
  [v14 indexSearchableItems:v15 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v16 forBundleID:v17 options:0 completionHandler:0];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)didPerformCommand:(void *)a1 .cold.1(void *a1, void *a2)
{
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
  [v4 doubleForKey:@"RankingFeaturesTestFirstQueryTime"];
  v6 = v5;
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"RankingFeaturesTest: RankingFeaturesTestFirstQueryTime = %f", *&v5];
  NSLog(&stru_1F47D4948.isa, v7);

  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  [a1 timeIntervalSinceReferenceDate];
  v10 = [v8 initWithFormat:@"RankingFeaturesTest: currentTime = %f", v9];
  NSLog(&stru_1F47D4948.isa, v10);

  if (v6 == 0.0)
  {
    [a1 timeIntervalSinceReferenceDate];
    [v4 setDouble:@"RankingFeaturesTestFirstQueryTime" forKey:?];
    v11 = @"RankingFeaturesTest: updated RankingFeaturesTestFirstQueryTime to currentTime";
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v6];

    v11 = @"RankingFeaturesTest: updated currentTime to RankingFeaturesTestFirstQueryTime";
    a1 = v12;
  }

  *a2 = a1;
  NSLog(&v11->isa);
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  [a1 timeIntervalSinceReferenceDate];
  v15 = [v13 initWithFormat:@"RankingFeaturesTest: currentTime = %f", v14];
  NSLog(&stru_1F47D4948.isa, v15);
}

@end