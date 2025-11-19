@interface SBHIconLibrarySpotlightQueryEngine
- (BOOL)_processingQueue_isBundleIdentifierValid:(id)a3 iconLibraryQueryContext:(id)a4;
- (id)_processingQueue_sortComperatorForQueryContext:(id)a3;
- (id)_relevancyQueryForLibraryQuery:(id)a3;
- (id)_searchQueryForIconLibraryQuery:(id)a3;
- (void)_processingQueue_markBundleIdentifiers:(id)a3 iconLibraryQueryContext:(id)a4;
- (void)_processingQueue_noteQueryResultsWereUpdated:(id)a3 iconLibraryQueryContext:(id)a4 notifyDelegate:(BOOL)a5;
- (void)_processingQueue_teardownQueryContext:(id)a3;
- (void)_processingQueue_unmarkBundleIdentifiers:(id)a3 iconLibraryQueryContext:(id)a4;
- (void)_processingQueue_updateQueryRelevancyScores:(id)a3 iconLibraryQueryContext:(id)a4;
- (void)_teardownCSSearchQuery:(id)a3;
- (void)dealloc;
- (void)executeQuery:(id)a3;
@end

@implementation SBHIconLibrarySpotlightQueryEngine

- (void)dealloc
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_currentlyRunningQueryContext);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_currentlyRunningQueryContext);
    v5 = objc_opt_new();
    v6 = [v4 objectForKeyedSubscript:@"kRunningQueryKey"];
    [v5 bs_safeAddObject:v6];
    v7 = [v4 objectForKeyedSubscript:@"kRelevancyQueryKey"];
    [v5 bs_safeAddObject:v7];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(SBHIconLibrarySpotlightQueryEngine *)self _teardownCSSearchQuery:*(*(&v14 + 1) + 8 * v12++)];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  v13.receiver = self;
  v13.super_class = SBHIconLibrarySpotlightQueryEngine;
  [(SBHIconLibraryAbstractQueryEngine *)&v13 dealloc];
}

- (id)_searchQueryForIconLibraryQuery:(id)a3
{
  v28[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 searchString];
  v5 = [v4 length];
  if (v5)
  {
    [v3 searchString];
    StringByAddingBackslashEscapes = __MDQueryCreateStringByAddingBackslashEscapes();
  }

  else
  {
    StringByAddingBackslashEscapes = 0;
  }

  v7 = [v3 keyboardLanguageHint];
  v8 = *MEMORY[0x1E6963C08];
  v28[0] = *MEMORY[0x1E6963F48];
  v28[1] = v8;
  v28[2] = *MEMORY[0x1E6964520];
  v28[3] = @"kMDItemDisplayNameCorrections";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  if (v5)
  {
    if (([v7 hasPrefix:@"zh"] & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"ja") & 1) != 0 || objc_msgSend(v7, "hasSuffix:", @"CN"))
    {
      v10 = [@"cdwt" stringByAppendingString:@"s"];
    }

    else
    {
      v10 = @"cdwt";
    }

    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __70__SBHIconLibrarySpotlightQueryEngine__searchQueryForIconLibraryQuery___block_invoke;
    v24 = &unk_1E8091E98;
    v25 = StringByAddingBackslashEscapes;
    v26 = v10;
    v11 = v10;
    v12 = [v9 bs_map:&v21];
    v13 = [v12 componentsJoinedByString:{@" || ", v21, v22, v23, v24}];
  }

  else
  {
    v13 = @"(*==*)";
  }

  v14 = objc_alloc_init(MEMORY[0x1E6964E70]);
  [v14 setLive:1];
  v15 = [v3 keyboardLanguageHint];
  [v14 setKeyboardLanguage:v15];

  v16 = [v3 markedTextArray];

  if (v16)
  {
    v17 = [v3 markedTextArray];
    [v14 setMarkedTextArray:v17];
  }

  v18 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:v13 queryContext:v14];
  v27 = *MEMORY[0x1E696A388];
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  [v18 setProtectionClasses:v19];

  [v18 setBundleIDs:&unk_1F3DB2D38];

  return v18;
}

- (id)_relevancyQueryForLibraryQuery:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 searchString];
  if ([v4 length] && (objc_msgSend(v3, "keyboardLanguageHint"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v16[0] = *MEMORY[0x1E6964D98];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v7 = objc_alloc_init(MEMORY[0x1E6964E70]);
    [v7 setMaxCount:25];
    [v7 setFetchAttributes:v6];
    v8 = [v3 keyboardLanguageHint];
    [v7 setKeyboardLanguage:v8];

    v9 = [v3 markedTextArray];

    if (v9)
    {
      v10 = [v3 markedTextArray];
      [v7 setMarkedTextArray:v10];
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(*=%@*cdwt)", v4];
    v12 = [objc_alloc(MEMORY[0x1E6964EC0]) initWithQueryString:v11 queryContext:v7];
    v15 = *MEMORY[0x1E696A388];
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [v12 setProtectionClasses:v13];

    [v12 setBundleIDs:&unk_1F3DB2D50];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)executeQuery:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconLibraryAbstractQueryEngine *)self iconModel];
  v6 = [(SBHIconLibraryAbstractQueryEngine *)self processingQueue];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke;
  block[3] = &unk_1E808A1E0;
  objc_copyWeak(&v14, &location);
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = v4;
  dispatch_async(v7, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke(id *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained _processingQueue_isIconModelReloading] & 1) == 0 && (objc_msgSend(v3, "_processingQueue_isShutdown") & 1) == 0)
  {
    v4 = objc_loadWeakRetained(v3 + 8);
    if (v4)
    {
      v5 = v4;
      [v3 _processingQueue_teardownQueryContext:v4];
    }

    v6 = [[SBHIconLibraryQueryContext alloc] initWithQuery:a1[4]];
    objc_storeWeak(v3 + 8, v6);
    [v3 _processingQueue_startNewQueryContext:v6];
    v7 = [a1[4] searchString];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [v3 _searchQueryForIconLibraryQuery:a1[4]];
      [(SBHIconLibraryQueryContext *)v6 setObject:v9 forKeyedSubscript:@"kRunningQueryKey"];
      v10 = [v3 _relevancyQueryForLibraryQuery:a1[4]];
      [(SBHIconLibraryQueryContext *)v6 setObject:v10 forKeyedSubscript:@"kRelevancyQueryKey"];
      v11 = SBLogLibrarySearchController();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = a1[4];
        *buf = 138412290;
        v54 = v12;
        _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "Starting new Library Search Query '%@'", buf, 0xCu);
      }

      Current = CFAbsoluteTimeGetCurrent();
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_52;
      v43[3] = &unk_1E8091EE0;
      objc_copyWeak(&v47, a1 + 7);
      v44 = a1[6];
      v45 = a1[4];
      v14 = v6;
      v46 = v14;
      [v9 setFoundItemsHandler:v43];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_57;
      v38[3] = &unk_1E8091F08;
      objc_copyWeak(&v42, a1 + 7);
      v39 = a1[6];
      v40 = a1[4];
      v15 = v14;
      v41 = v15;
      [v9 setRemovedItemsHandler:v38];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_60;
      v33[3] = &unk_1E8091F58;
      v34 = a1[6];
      objc_copyWeak(&v37, a1 + 7);
      v16 = v15;
      v35 = v16;
      v36 = a1[4];
      [v9 setCompletionHandler:v33];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_64;
      v28[3] = &unk_1E8091F80;
      v29 = a1[4];
      v32[1] = *&Current;
      v17 = v9;
      v30 = v17;
      v31 = a1[6];
      objc_copyWeak(v32, a1 + 7);
      [v17 setGatherEndedHandler:v28];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_66;
      v24[3] = &unk_1E8091FD0;
      v25 = a1[6];
      objc_copyWeak(&v27, a1 + 7);
      v18 = v16;
      v26 = v18;
      [v10 setFoundItemsHandler:v24];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_4_71;
      v19[3] = &unk_1E8091FF8;
      v20 = a1[4];
      v23[1] = *&Current;
      v21 = a1[6];
      objc_copyWeak(v23, a1 + 7);
      v22 = v18;
      [v10 setCompletionHandler:v19];
      [v10 start];
      [v17 start];

      objc_destroyWeak(v23);
      objc_destroyWeak(&v27);

      objc_destroyWeak(v32);
      objc_destroyWeak(&v37);

      objc_destroyWeak(&v42);
      objc_destroyWeak(&v47);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_2;
      block[3] = &unk_1E8089E68;
      v49 = a1[5];
      v50 = a1[6];
      v51 = v6;
      v52 = v3;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v17 = v49;
    }
  }
}

void __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) leafIconsUniquedByApplicationBundleIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_3;
  v12[3] = &unk_1E808A1B8;
  v13 = *(a1 + 32);
  v3 = [v2 bs_filter:v12];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_4;
  v8[3] = &unk_1E8088F88;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  v11 = v3;
  v7 = v3;
  dispatch_async(v4, v8);
}

uint64_t __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isIconVisible:v3])
  {
    IsLeafIconAndNotWidgetIcon = _SBIconIsLeafIconAndNotWidgetIcon(v3);
  }

  else
  {
    IsLeafIconAndNotWidgetIcon = 0;
  }

  return IsLeafIconAndNotWidgetIcon;
}

void __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_4(void *a1)
{
  v2 = a1[4];
  WeakRetained = objc_loadWeakRetained((a1[5] + 64));
  LODWORD(v2) = [v2 isEqual:WeakRetained];

  if (v2)
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[4];

    [v4 _processingQueue_addIcons:v5 iconLibraryQueryContext:v6 notifyDelegate:1];
  }
}

void __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_52(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = [v3 bs_mapNoNulls:&__block_literal_global_83];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_3_55;
    v8[3] = &unk_1E8089E68;
    v6 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v5;
    v11 = WeakRetained;
    v12 = *(a1 + 48);
    v7 = v5;
    dispatch_async(v6, v8);
  }
}

id __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_2_53(uint64_t a1, void *a2)
{
  v2 = [a2 attributeSet];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

uint64_t __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_3_55(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = SBLogLibrarySearchController();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1BEB18000, v2, OS_LOG_TYPE_DEFAULT, "Library Search Query '%@' adding bundle identifiers: '%@'", &v6, 0x16u);
  }

  [*(a1 + 48) _processingQueue_markBundleIdentifiers:*(a1 + 40) iconLibraryQueryContext:*(a1 + 56)];
  return [*(a1 + 48) _addItemsWithBundleIdentifiers:*(a1 + 40) iconLibraryQueryContext:*(a1 + 56) notifyDelegate:1];
}

void __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_57(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_2_58;
    v7[3] = &unk_1E8089E68;
    v6 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = v4;
    v10 = WeakRetained;
    v11 = *(a1 + 48);
    dispatch_async(v6, v7);
  }
}

uint64_t __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_2_58(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = SBLogLibrarySearchController();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1BEB18000, v2, OS_LOG_TYPE_DEFAULT, "Library Search Query '%@' removing bundle identifiers: '%@'", &v6, 0x16u);
  }

  [*(a1 + 48) _processingQueue_unmarkBundleIdentifiers:*(a1 + 40) iconLibraryQueryContext:*(a1 + 56)];
  return [*(a1 + 48) _processingQueue_removeItemsWithBundleIdentifiers:*(a1 + 40) iconLibraryQueryContext:*(a1 + 56) notifyDelegate:1];
}

void __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_2_61;
  v6[3] = &unk_1E8091F30;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v10, (a1 + 56));
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  dispatch_async(v4, v6);

  objc_destroyWeak(&v10);
}

void __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_2_61(uint64_t a1)
{
  v2 = SBLogLibrarySearchController();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_2_61_cold_1(a1, v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _processingQueue_lastQueryResultForContext:*(a1 + 40)];
    v6 = v5;
    v7 = *(a1 + 32);
    if (v7 || !v5)
    {
      if (v7)
      {
        [v4 _processingQueue_observerDispatchError:v7 forQuery:*(a1 + 48)];
      }

      else
      {
        v8 = +[SBHIconLibraryQueryResult nullQueryResults];
        [v4 _processingQueue_observerDispatchQueryResultsWereUpdated:v8];
      }
    }
  }
}

void __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_64(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = SBLogLibrarySearchController();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = CFAbsoluteTimeGetCurrent() - *(a1 + 64);
    *buf = 138412546;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&dword_1BEB18000, v2, OS_LOG_TYPE_DEFAULT, "Library Search Query '%@' execution time: %f", buf, 0x16u);
  }

  if (![*(a1 + 40) foundItemCount])
  {
    v5 = *(a1 + 48);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_65;
    v6[3] = &unk_1E808C628;
    objc_copyWeak(&v8, (a1 + 56));
    v7 = *(a1 + 32);
    dispatch_async(v5, v6);

    objc_destroyWeak(&v8);
  }
}

void __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_65(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = SBLogLibrarySearchController();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "Library Search Query '%@' ended with no found items", &v6, 0xCu);
    }

    v5 = +[SBHIconLibraryQueryResult nullQueryResults];
    [WeakRetained _processingQueue_observerDispatchQueryResultsWereUpdated:v5];
  }
}

void __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_66(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_2_68;
  v12[3] = &unk_1E8091FA8;
  v5 = v4;
  v13 = v5;
  [v3 enumerateObjectsUsingBlock:v12];

  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_3_70;
  v8[3] = &unk_1E808B3E8;
  objc_copyWeak(&v11, (a1 + 48));
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, v8);

  objc_destroyWeak(&v11);
}

void __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_2_68(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 attributeSet];
  v4 = [v7 attributeForKey:*MEMORY[0x1E6964DA8]];
  v5 = *(a1 + 32);
  v6 = [v3 uniqueIdentifier];

  [v5 setObject:v4 forKeyedSubscript:v6];
}

void __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_3_70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _processingQueue_updateQueryRelevancyScores:*(a1 + 32) iconLibraryQueryContext:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_4_71(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SBLogLibrarySearchController();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 64);
    *buf = 138412546;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "Library Relevancy Query '%@' execution time: %f", buf, 0x16u);
  }

  v7 = *(a1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_72;
  block[3] = &unk_1E808B3E8;
  objc_copyWeak(&v12, (a1 + 56));
  v10 = *(a1 + 48);
  v11 = v3;
  v8 = v3;
  dispatch_async(v7, block);

  objc_destroyWeak(&v12);
}

void __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_72(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"kRelevancyQueryErrorKey"];
    [v3 _processingQueue_updateQueryRelevancyScores:MEMORY[0x1E695E0F8] iconLibraryQueryContext:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_processingQueue_teardownQueryContext:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 objectForKeyedSubscript:@"kRunningQueryKey"];
  [v5 bs_safeAddObject:v6];
  v7 = [v4 objectForKeyedSubscript:@"kRelevancyQueryKey"];
  [v5 bs_safeAddObject:v7];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(SBHIconLibrarySpotlightQueryEngine *)self _teardownCSSearchQuery:*(*(&v15 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [v4 setObject:0 forKeyedSubscript:@"kRelevancyQueryKey"];
  [v4 setObject:0 forKeyedSubscript:@"kRunningQueryKey"];
  v14.receiver = self;
  v14.super_class = SBHIconLibrarySpotlightQueryEngine;
  [(SBHIconLibraryAbstractQueryEngine *)&v14 _processingQueue_teardownQueryContext:v4];
  WeakRetained = objc_loadWeakRetained(&self->_currentlyRunningQueryContext);

  if (WeakRetained == v4)
  {
    objc_storeWeak(&self->_currentlyRunningQueryContext, 0);
  }
}

- (void)_teardownCSSearchQuery:(id)a3
{
  v3 = a3;
  [v3 setCompletionHandler:0];
  [v3 setFoundItemsHandler:0];
  [v3 setRemovedItemsHandler:0];
  [v3 setGatherEndedHandler:0];
  [v3 setCompletionScoresHandler:0];
  [v3 cancel];
}

- (BOOL)_processingQueue_isBundleIdentifierValid:(id)a3 iconLibraryQueryContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 query];
  v8 = [v7 searchString];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [v6 objectForKeyedSubscript:@"markedBundleIdentifiers"];
    v11 = [v10 containsObject:v5];
  }

  else
  {
    v11 = v5 != 0;
  }

  return v11;
}

- (void)_processingQueue_markBundleIdentifiers:(id)a3 iconLibraryQueryContext:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:@"markedBundleIdentifiers"];
  if (!v6)
  {
    v6 = objc_opt_new();
    [v5 setObject:v6 forKeyedSubscript:@"markedBundleIdentifiers"];
  }

  v7 = [MEMORY[0x1E695DFD8] setWithArray:v8];
  [v6 unionSet:v7];
}

- (void)_processingQueue_unmarkBundleIdentifiers:(id)a3 iconLibraryQueryContext:(id)a4
{
  v5 = a3;
  v7 = [a4 objectForKeyedSubscript:@"markedBundleIdentifiers"];
  v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];

  [v7 minusSet:v6];
}

- (void)_processingQueue_updateQueryRelevancyScores:(id)a3 iconLibraryQueryContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"kRelevancyQueryKey"];

  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:@"kRelevancyQueryErrorKey"];
    if (!v9)
    {
      v10 = [v7 objectForKeyedSubscript:@"kRelevancyMapKey"];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = objc_opt_new();
      }

      v13 = v12;

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __106__SBHIconLibrarySpotlightQueryEngine__processingQueue_updateQueryRelevancyScores_iconLibraryQueryContext___block_invoke;
      v21[3] = &unk_1E808AA60;
      v22 = v13;
      v14 = v13;
      [v6 enumerateKeysAndObjectsUsingBlock:v21];
      [v7 setObject:v14 forKeyedSubscript:@"kRelevancyMapKey"];
    }

    v15 = [(SBHIconLibraryAbstractQueryEngine *)self _processingQueue_lastQueryResultForContext:v7];
    if (v9 | v15)
    {
      v16 = [(SBHIconLibrarySpotlightQueryEngine *)self _processingQueue_sortComperatorForQueryContext:v7];
      v17 = [v7 query];
      v18 = [SBHIconLibraryQueryResult alloc];
      v19 = [v15 icons];
      v20 = [(SBHIconLibraryQueryResult *)v18 initWithQuery:v17 icons:v19 sortComparator:v16];

      [(SBHIconLibrarySpotlightQueryEngine *)self _processingQueue_noteQueryResultsWereUpdated:v20 iconLibraryQueryContext:v7 notifyDelegate:1];
    }
  }
}

- (id)_processingQueue_sortComperatorForQueryContext:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"kRelevancyMapKey"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    if ([v5 count])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __buildIconComparatorForIconsFromRelevancyMap_block_invoke;
      aBlock[3] = &unk_1E808F358;
      v9 = v5;
      v6 = _Block_copy(aBlock);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_processingQueue_noteQueryResultsWereUpdated:(id)a3 iconLibraryQueryContext:(id)a4 notifyDelegate:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v5)
  {
    v11 = [v9 objectForKeyedSubscript:@"kRelevancyQueryKey"];
    if (v11 && (v12 = v11, [v10 objectForKeyedSubscript:@"kRelevancyQueryErrorKey"], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, !v13))
    {
      v14 = [v10 objectForKeyedSubscript:@"kRelevancyMapKey"];
      v5 = v14 != 0;
    }

    else
    {
      v5 = 1;
    }
  }

  v15.receiver = self;
  v15.super_class = SBHIconLibrarySpotlightQueryEngine;
  [(SBHIconLibraryAbstractQueryEngine *)&v15 _processingQueue_noteQueryResultsWereUpdated:v8 iconLibraryQueryContext:v10 notifyDelegate:v5];
}

void __51__SBHIconLibrarySpotlightQueryEngine_executeQuery___block_invoke_2_61_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "ERROR: %@", &v3, 0xCu);
}

@end