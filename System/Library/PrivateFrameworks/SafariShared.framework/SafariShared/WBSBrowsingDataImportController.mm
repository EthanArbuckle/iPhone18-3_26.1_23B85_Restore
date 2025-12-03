@interface WBSBrowsingDataImportController
+ (NSArray)allowedImportContentTypes;
+ (NSString)suggestedImportedBookmarksFolderName;
+ (id)localizedDescriptionOfTheNumberOfItems:(unint64_t)items exportType:(id)type;
+ (id)localizedStringForExtensionsConflictViewWithNumberOfFailedExtensionsFailedToImport:(unint64_t)import appsCount:(unint64_t)count;
+ (id)localizedStringForNumberOfItemsToBeImported:(id)imported;
+ (id)localizedStringForPasswordsConflictViewWithNumberOfPasswordsFailedToImport:(unint64_t)import;
+ (id)localizedSuccessStringForImportedItems:(id)items;
+ (id)uniqueImportedBookmarksFolderNameWithSuggestedName:(id)name existingFolderNames:(id)names;
+ (int64_t)importedDataClassificationFromImportedItems:(id)items;
- (id)importErrorAlertMessageForFailureReason:(int64_t)reason filename:(id)filename;
- (void)_computeNumberOfBookmarksToBeImportedFromURL:(id)l completionHandler:(id)handler;
- (void)_computeNumberOfChromeExtensionsToBeImportedFromURL:(id)l completionHandler:(id)handler;
- (void)_computeNumberOfChromeHistorySitesToBeImportedFromURL:(id)l completionHandler:(id)handler;
- (void)_computeNumberOfCreditCardsToBeImportedFromURL:(id)l completionHandler:(id)handler;
- (void)_computeNumberOfExtensionsToBeImportedFromURL:(id)l completionHandler:(id)handler;
- (void)_computeNumberOfHistorySitesToBeImportedFromURL:(id)l completionHandler:(id)handler;
- (void)_importBookmarksFromURL:(id)l completionHandler:(id)handler;
- (void)_importChromeExtensionsFromURL:(id)l completionHandler:(id)handler;
- (void)_importChromeHistoryFromURL:(id)l completionHandler:(id)handler;
- (void)_importCreditCardsFromURL:(id)l completionHandler:(id)handler;
- (void)_importExtensionsFromURL:(id)l completionHandler:(id)handler;
- (void)_importHistoryFromURL:(id)l completionHandler:(id)handler;
- (void)_removeTemporaryUnzippedDirectoryURLs:(id)ls sandboxExtensionHandles:(id)handles;
- (void)_scanImportURLs:(id)ls sandboxExtensions:(id)extensions completionHandler:(id)handler;
- (void)computeNumberOfItemsToBeImportedFromFiles:(id)files withCompletionHandler:(id)handler;
- (void)importBrowsingDataFromFiles:(id)files withCompletionHandler:(id)handler;
- (void)scanImportURLs:(id)ls completionHandler:(id)handler;
@end

@implementation WBSBrowsingDataImportController

+ (NSString)suggestedImportedBookmarksFolderName
{
  v2 = CFLocaleCopyCurrent();
  v3 = CFDateFormatterCreate(0, v2, kCFDateFormatterShortStyle, kCFDateFormatterNoStyle);
  CFRelease(v2);
  Current = CFAbsoluteTimeGetCurrent();
  v5 = CFDateCreate(0, Current);
  StringWithDate = CFDateFormatterCreateStringWithDate(0, v3, v5);
  CFRelease(v5);
  CFRelease(v3);
  v7 = MEMORY[0x1E696AEC0];
  v8 = _WBSLocalizedString();
  stringWithDate = [v7 localizedStringWithFormat:v8, StringWithDate];

  return stringWithDate;
}

+ (id)uniqueImportedBookmarksFolderNameWithSuggestedName:(id)name existingFolderNames:(id)names
{
  nameCopy = name;
  namesCopy = names;
  v7 = nameCopy;
  v8 = v7;
  if ([namesCopy containsObject:v7])
  {
    v9 = 2;
    v10 = v7;
    do
    {
      v11 = v9 + 1;
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %lu", v7, v9];

      v12 = [namesCopy containsObject:v8];
      v10 = v8;
      v9 = v11;
    }

    while ((v12 & 1) != 0);
  }

  return v8;
}

+ (NSArray)allowedImportContentTypes
{
  v9[10] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69830D0];
  v9[0] = *MEMORY[0x1E6982DC8];
  v9[1] = v2;
  v3 = *MEMORY[0x1E69830B0];
  v9[2] = *MEMORY[0x1E6982F40];
  v9[3] = v3;
  v4 = *MEMORY[0x1E6982F68];
  v9[4] = *MEMORY[0x1E6982E18];
  v9[5] = v4;
  v5 = *MEMORY[0x1E6982D38];
  v9[6] = *MEMORY[0x1E6982E68];
  v9[7] = v5;
  v6 = *MEMORY[0x1E6982DF0];
  v9[8] = *MEMORY[0x1E6983018];
  v9[9] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:10];

  return v7;
}

+ (id)localizedDescriptionOfTheNumberOfItems:(unint64_t)items exportType:(id)type
{
  typeCopy = type;
  v6 = typeCopy;
  if (items)
  {
    if ([typeCopy isEqualToString:*MEMORY[0x1E69C8B00]])
    {
      v7 = MEMORY[0x1E696AEC0];
LABEL_7:
      v8 = _WBSLocalizedString();
      items = [v7 localizedStringWithFormat:v8, items];

      goto LABEL_8;
    }

    if (([v6 isEqualToString:*MEMORY[0x1E69C8BF8]] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69C8B10]))
    {
      v7 = MEMORY[0x1E696AEC0];
      goto LABEL_7;
    }

    if (([v6 isEqualToString:*MEMORY[0x1E69C8B90]] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69C8B08]))
    {
      v7 = MEMORY[0x1E696AEC0];
      goto LABEL_7;
    }

    if ([v6 isEqualToString:*MEMORY[0x1E69C8B50]])
    {
      v7 = MEMORY[0x1E696AEC0];
      goto LABEL_7;
    }

    if ([v6 isEqualToString:*MEMORY[0x1E69C8CC8]])
    {
      v7 = MEMORY[0x1E696AEC0];
      goto LABEL_7;
    }

    items = 0;
  }

LABEL_8:

  return items;
}

+ (id)localizedSuccessStringForImportedItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v6 = [itemsCopy mutableCopy];
    v7 = *MEMORY[0x1E69C8B10];
    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C8B10]];
    if (v8)
    {
      v9 = v8;
      v10 = *MEMORY[0x1E69C8BF8];
      v11 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C8BF8]];

      if (v11)
      {
        v12 = [v6 objectForKeyedSubscript:v10];
        v13 = [v6 objectForKeyedSubscript:v7];
        [v12 setNumberOfItemsSuccessfullyImported:{objc_msgSend(v12, "numberOfItemsSuccessfullyImported") + objc_msgSend(v13, "numberOfItemsSuccessfullyImported")}];

        v14 = [v6 objectForKeyedSubscript:v10];
        v15 = [v6 objectForKeyedSubscript:v7];
        [v14 setNumberOfItemsFailedToImport:{objc_msgSend(v14, "numberOfItemsFailedToImport") + objc_msgSend(v15, "numberOfItemsFailedToImport")}];

        [v6 setObject:0 forKeyedSubscript:v7];
      }
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __74__WBSBrowsingDataImportController_localizedSuccessStringForImportedItems___block_invoke;
    v22[3] = &unk_1E7FC6BE0;
    v16 = array;
    v23 = v16;
    selfCopy = self;
    [v6 enumerateKeysAndObjectsUsingBlock:v22];
    if ([v16 count])
    {
      v17 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v16];
      v18 = MEMORY[0x1E696AEC0];
      v19 = _WBSLocalizedString();
      v20 = [v18 localizedStringWithFormat:v19, v17];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __74__WBSBrowsingDataImportController_localizedSuccessStringForImportedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 numberOfItemsSuccessfullyImported])
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) localizedDescriptionOfTheNumberOfItems:objc_msgSend(v5 exportType:{"numberOfItemsSuccessfullyImported"), v8}];
    [v6 addObject:v7];
  }
}

+ (id)localizedStringForNumberOfItemsToBeImported:(id)imported
{
  importedCopy = imported;
  if ([importedCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v6 = [importedCopy mutableCopy];
    v7 = *MEMORY[0x1E69C8B10];
    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C8B10]];
    if (v8)
    {
      v9 = v8;
      v10 = *MEMORY[0x1E69C8BF8];
      v11 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C8BF8]];

      if (v11)
      {
        v12 = MEMORY[0x1E696AD98];
        v13 = [v6 objectForKeyedSubscript:v10];
        unsignedIntegerValue = [v13 unsignedIntegerValue];
        v15 = [v6 objectForKeyedSubscript:v7];
        v16 = [v12 numberWithUnsignedInteger:{objc_msgSend(v15, "unsignedIntegerValue") + unsignedIntegerValue}];
        [v6 setObject:v16 forKeyedSubscript:v10];

        [v6 setObject:0 forKeyedSubscript:v7];
      }
    }

    v17 = *MEMORY[0x1E69C8B08];
    v18 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C8B08]];
    if (v18)
    {
      v19 = v18;
      v20 = *MEMORY[0x1E69C8B90];
      v21 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C8B90]];

      if (v21)
      {
        v22 = MEMORY[0x1E696AD98];
        v23 = [v6 objectForKeyedSubscript:v20];
        unsignedIntegerValue2 = [v23 unsignedIntegerValue];
        v25 = [v6 objectForKeyedSubscript:v17];
        v26 = [v22 numberWithUnsignedInteger:{objc_msgSend(v25, "unsignedIntegerValue") + unsignedIntegerValue2}];
        [v6 setObject:v26 forKeyedSubscript:v20];

        [v6 setObject:0 forKeyedSubscript:v17];
      }
    }

    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __79__WBSBrowsingDataImportController_localizedStringForNumberOfItemsToBeImported___block_invoke;
    v33 = &unk_1E7FC6C08;
    v27 = array;
    v34 = v27;
    selfCopy = self;
    [v6 enumerateKeysAndObjectsUsingBlock:&v30];
    if ([v27 count])
    {
      v28 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v27];
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

void __79__WBSBrowsingDataImportController_localizedStringForNumberOfItemsToBeImported___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 unsignedIntegerValue])
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) localizedDescriptionOfTheNumberOfItems:objc_msgSend(v5 exportType:{"unsignedIntegerValue"), v8}];
    [v6 addObject:v7];
  }
}

+ (id)localizedStringForPasswordsConflictViewWithNumberOfPasswordsFailedToImport:(unint64_t)import
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = _WBSLocalizedString();
  import = [v4 localizedStringWithFormat:v5, import];

  return import;
}

+ (id)localizedStringForExtensionsConflictViewWithNumberOfFailedExtensionsFailedToImport:(unint64_t)import appsCount:(unint64_t)count
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = _WBSLocalizedString();
  import = [v5 localizedStringWithFormat:v6, import];

  return import;
}

+ (int64_t)importedDataClassificationFromImportedItems:(id)items
{
  itemsCopy = items;
  v4 = [itemsCopy objectForKeyedSubscript:*MEMORY[0x1E69C8CC8]];

  if (v4)
  {
    if ([itemsCopy count] <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  return v4;
}

- (id)importErrorAlertMessageForFailureReason:(int64_t)reason filename:(id)filename
{
  filenameCopy = filename;
  if (reason)
  {
    if (reason != 1)
    {
      goto LABEL_6;
    }

    v7 = MEMORY[0x1E696AEC0];
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
  }

  v8 = _WBSLocalizedString();
  filenameCopy = [v7 localizedStringWithFormat:v8, filenameCopy];

LABEL_6:

  return filenameCopy;
}

- (void)_scanImportURLs:(id)ls sandboxExtensions:(id)extensions completionHandler:(id)handler
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A798];
  handlerCopy = handler;
  v9 = [v6 errorWithDomain:v7 code:14 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v9);
}

- (void)scanImportURLs:(id)ls completionHandler:(id)handler
{
  handlerCopy = handler;
  lsCopy = ls;
  v8 = [lsCopy safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_60];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__WBSBrowsingDataImportController_scanImportURLs_completionHandler___block_invoke_95;
  v10[3] = &unk_1E7FC6C80;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(WBSBrowsingDataImportController *)self _scanImportURLs:lsCopy sandboxExtensions:v8 completionHandler:v10];
}

id __68__WBSBrowsingDataImportController_scanImportURLs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 path];
  [v3 fileSystemRepresentation];
  v4 = sandbox_extension_issue_file();

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v4 length:strlen(v4) encoding:4 freeWhenDone:1];
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __68__WBSBrowsingDataImportController_scanImportURLs_completionHandler___block_invoke_cold_1(v2, v6);
    }

    v5 = 0;
  }

  return v5;
}

void __68__WBSBrowsingDataImportController_scanImportURLs_completionHandler___block_invoke_95(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = [MEMORY[0x1E695DF70] array];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __68__WBSBrowsingDataImportController_scanImportURLs_completionHandler___block_invoke_2;
  v22[3] = &unk_1E7FC6C30;
  v9 = v7;
  v23 = v9;
  v10 = v8;
  v24 = v10;
  [v5 enumerateKeysAndObjectsUsingBlock:v22];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__WBSBrowsingDataImportController_scanImportURLs_completionHandler___block_invoke_3;
  block[3] = &unk_1E7FC6C58;
  v11 = *(a1 + 32);
  v20 = v6;
  v21 = v11;
  v17 = v5;
  v18 = v9;
  v19 = v10;
  v12 = v6;
  v13 = v10;
  v14 = v9;
  v15 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __68__WBSBrowsingDataImportController_scanImportURLs_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = [v9 safari_URLForKey:*MEMORY[0x1E69C8C08]];
  if (v4)
  {
    v5 = [v9 safari_stringForKey:*MEMORY[0x1E69C8C00]];
    [v5 UTF8String];
    v6 = sandbox_extension_consume();
    [*(a1 + 32) addObject:v4];
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
    [v7 addObject:v8];
  }
}

- (void)_importChromeExtensionsFromURL:(id)l completionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  handlerCopy = handler;
  v8 = [v5 errorWithDomain:v6 code:14 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)_importHistoryFromURL:(id)l completionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  handlerCopy = handler;
  v8 = [v5 errorWithDomain:v6 code:14 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)_importBookmarksFromURL:(id)l completionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  handlerCopy = handler;
  v8 = [v5 errorWithDomain:v6 code:14 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)_importExtensionsFromURL:(id)l completionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  handlerCopy = handler;
  v8 = [v5 errorWithDomain:v6 code:14 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)_importCreditCardsFromURL:(id)l completionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  handlerCopy = handler;
  v8 = [v5 errorWithDomain:v6 code:14 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)_importChromeHistoryFromURL:(id)l completionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  handlerCopy = handler;
  v8 = [v5 errorWithDomain:v6 code:14 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)importBrowsingDataFromFiles:(id)files withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke;
  v8[3] = &unk_1E7FC6D70;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(WBSBrowsingDataImportController *)self scanImportURLs:files completionHandler:v8];
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_cold_1(v13);
    }

    v14 = *(*(a1 + 40) + 16);
  }

  else
  {
    if ([v9 count])
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v16 = dispatch_group_create();
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_101;
      v28[3] = &unk_1E7FC6D20;
      v17 = *(a1 + 32);
      v29 = v16;
      v30 = v17;
      v18 = v15;
      v31 = v18;
      v19 = v16;
      [v9 enumerateKeysAndObjectsUsingBlock:v28];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_120;
      v23[3] = &unk_1E7FC6D48;
      v23[4] = *(a1 + 32);
      v24 = v10;
      v25 = v11;
      v20 = *(a1 + 40);
      v26 = v18;
      v27 = v20;
      v21 = v18;
      dispatch_group_notify(v19, MEMORY[0x1E69E96A0], v23);

      goto LABEL_8;
    }

    v22 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v22, OS_LOG_TYPE_INFO, "Didn't find any importable files.", buf, 2u);
    }

    v14 = *(*(a1 + 40) + 16);
  }

  v14();
LABEL_8:
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_101(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 safari_stringForKey:*MEMORY[0x1E69C8B80]];
  if ([v6 isEqualToString:*MEMORY[0x1E69C8B08]])
  {
    dispatch_group_enter(*(a1 + 32));
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2;
    v41[3] = &unk_1E7FC6CD0;
    v7 = *(a1 + 40);
    v42 = *(a1 + 48);
    v43 = v6;
    v44 = *(a1 + 32);
    [v7 _importChromeExtensionsFromURL:v5 completionHandler:v41];

    v8 = v42;
LABEL_15:

    goto LABEL_16;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E69C8BF8]])
  {
    dispatch_group_enter(*(a1 + 32));
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_105;
    v37[3] = &unk_1E7FC6CD0;
    v9 = *(a1 + 40);
    v38 = *(a1 + 48);
    v39 = v6;
    v40 = *(a1 + 32);
    [v9 _importHistoryFromURL:v5 completionHandler:v37];

    v8 = v38;
    goto LABEL_15;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E69C8B00]])
  {
    dispatch_group_enter(*(a1 + 32));
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_107;
    v33[3] = &unk_1E7FC6CD0;
    v10 = *(a1 + 40);
    v34 = *(a1 + 48);
    v35 = v6;
    v36 = *(a1 + 32);
    [v10 _importBookmarksFromURL:v5 completionHandler:v33];

    v8 = v34;
    goto LABEL_15;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E69C8B90]])
  {
    dispatch_group_enter(*(a1 + 32));
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_109;
    v29[3] = &unk_1E7FC6CD0;
    v11 = *(a1 + 40);
    v30 = *(a1 + 48);
    v31 = v6;
    v32 = *(a1 + 32);
    [v11 _importExtensionsFromURL:v5 completionHandler:v29];

    v8 = v30;
    goto LABEL_15;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E69C8B50]])
  {
    dispatch_group_enter(*(a1 + 32));
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_111;
    v25[3] = &unk_1E7FC6CD0;
    v12 = *(a1 + 40);
    v26 = *(a1 + 48);
    v27 = v6;
    v28 = *(a1 + 32);
    [v12 _importCreditCardsFromURL:v5 completionHandler:v25];

    v8 = v26;
    goto LABEL_15;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E69C8CC8]])
  {
    dispatch_group_enter(*(a1 + 32));
    v13 = objc_alloc_init(WBSPasswordsDataImporter);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_114;
    block[3] = &unk_1E7FB72D0;
    v20 = v13;
    v21 = v5;
    v22 = *(a1 + 48);
    v23 = v6;
    v24 = *(a1 + 32);
    v8 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    goto LABEL_15;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E69C8B10]])
  {
    dispatch_group_enter(*(a1 + 32));
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_118;
    v15[3] = &unk_1E7FC6CD0;
    v14 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = v6;
    v18 = *(a1 + 32);
    [v14 _importChromeHistoryFromURL:v5 completionHandler:v15];

    v8 = v16;
    goto LABEL_15;
  }

LABEL_16:
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_cold_1(v7);
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (!v5)
    {
LABEL_4:
      v8 = [WBSBrowsingDataImportData alloc];
      v9 = [v6 localizedDescription];
      v5 = [(WBSBrowsingDataImportData *)v8 initWithNumberOfItemsSuccessfullyImported:0 numberOfItemsFailedToImport:0 errorMessage:v9];
    }
  }

LABEL_5:
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_103;
  v11[3] = &unk_1E7FC6CA8;
  v12 = a1[4];
  v13 = a1[5];
  v14 = v5;
  v15 = a1[6];
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_103(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v2 combine:v3];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 56);

  dispatch_group_leave(v5);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_105(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_105_cold_1(v7);
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (!v5)
    {
LABEL_4:
      v8 = [WBSBrowsingDataImportData alloc];
      v9 = [v6 localizedDescription];
      v5 = [(WBSBrowsingDataImportData *)v8 initWithNumberOfItemsSuccessfullyImported:0 numberOfItemsFailedToImport:0 errorMessage:v9];
    }
  }

LABEL_5:
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_106;
  v11[3] = &unk_1E7FC6CA8;
  v12 = a1[4];
  v13 = a1[5];
  v14 = v5;
  v15 = a1[6];
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_106(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v2 combine:v3];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 56);

  dispatch_group_leave(v5);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_107(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_107_cold_1(v7);
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (!v5)
    {
LABEL_4:
      v8 = [WBSBrowsingDataImportData alloc];
      v9 = [v6 localizedDescription];
      v5 = [(WBSBrowsingDataImportData *)v8 initWithNumberOfItemsSuccessfullyImported:0 numberOfItemsFailedToImport:0 errorMessage:v9];
    }
  }

LABEL_5:
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_108;
  v11[3] = &unk_1E7FC6CA8;
  v12 = a1[4];
  v13 = a1[5];
  v14 = v5;
  v15 = a1[6];
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_108(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v2 combine:v3];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 56);

  dispatch_group_leave(v5);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_109(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_109_cold_1(v7);
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (!v5)
    {
LABEL_4:
      v8 = [WBSBrowsingDataImportData alloc];
      v9 = [v6 localizedDescription];
      v5 = [(WBSBrowsingDataImportData *)v8 initWithNumberOfItemsSuccessfullyImported:0 numberOfItemsFailedToImport:0 errorMessage:v9];
    }
  }

LABEL_5:
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_110;
  v11[3] = &unk_1E7FC6CA8;
  v12 = a1[4];
  v13 = a1[5];
  v14 = v5;
  v15 = a1[6];
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_110(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v2 combine:v3];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 56);

  dispatch_group_leave(v5);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_111(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_111_cold_1(v7);
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (!v5)
    {
LABEL_4:
      v8 = [WBSBrowsingDataImportData alloc];
      v9 = [v6 localizedDescription];
      v5 = [(WBSBrowsingDataImportData *)v8 initWithNumberOfItemsSuccessfullyImported:0 numberOfItemsFailedToImport:0 errorMessage:v9];
    }
  }

LABEL_5:
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_112;
  v11[3] = &unk_1E7FC6CA8;
  v12 = a1[4];
  v13 = a1[5];
  v14 = v5;
  v15 = a1[6];
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_112(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v2 combine:v3];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 56);

  dispatch_group_leave(v5);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_114(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_3;
  v4[3] = &unk_1E7FC6CF8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 importFromCSVWithFileURL:v3 progressHandler:v4];
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_3(id *a1, uint64_t a2, __int128 *a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (a2 == 3)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3254779904;
    v14[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_115;
    v14[3] = &unk_1F3A5C630;
    v19 = *a3;
    v13 = *(a3 + 3);
    v20 = *(a3 + 2);
    v10 = &v21;
    v21 = v13;
    v9 = &v22;
    v22 = *(a3 + 4);
    v11 = &v15;
    v15 = v8;
    v12 = &v16;
    v16 = a1[4];
    v17 = a1[5];
    v18 = a1[6];
    dispatch_async(MEMORY[0x1E69E96A0], v14);

    goto LABEL_5;
  }

  if (a2 == 2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_4;
    block[3] = &unk_1E7FC6CA8;
    v9 = &v24;
    v24 = v7;
    v10 = &v25;
    v25 = a1[4];
    v11 = &v26;
    v26 = a1[5];
    v12 = &v27;
    v27 = a1[6];
    dispatch_async(MEMORY[0x1E69E96A0], block);
LABEL_5:
  }
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXImport();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_4_cold_1(a1, v2);
  }

  v3 = [WBSBrowsingDataImportData alloc];
  v4 = [*(a1 + 32) localizedDescription];
  v5 = [(WBSBrowsingDataImportData *)v3 initWithNumberOfItemsSuccessfullyImported:0 numberOfItemsFailedToImport:0 errorMessage:v4];

  v6 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  v7 = [(WBSBrowsingDataImportData *)v5 combine:v6];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:*(a1 + 48)];

  dispatch_group_leave(*(a1 + 56));
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_115(uint64_t a1)
{
  v2 = [WBSBrowsingDataImportData alloc];
  v3 = *(a1 + 80);
  v4 = [*(a1 + 88) count];
  v5 = [*(a1 + 96) count];
  v6 = [*(a1 + 32) localizedDescription];
  v9 = [(WBSBrowsingDataImportData *)v2 initWithNumberOfItemsSuccessfullyImported:v3 numberOfItemsFailedToImport:v5 + v4 errorMessage:v6];

  v7 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  v8 = [(WBSBrowsingDataImportData *)v9 combine:v7];
  [*(a1 + 40) setObject:v8 forKeyedSubscript:*(a1 + 48)];

  dispatch_group_leave(*(a1 + 56));
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_118(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_105_cold_1(v7);
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (!v5)
    {
LABEL_4:
      v8 = [WBSBrowsingDataImportData alloc];
      v9 = [v6 localizedDescription];
      v5 = [(WBSBrowsingDataImportData *)v8 initWithNumberOfItemsSuccessfullyImported:0 numberOfItemsFailedToImport:0 errorMessage:v9];
    }
  }

LABEL_5:
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_119;
  v11[3] = &unk_1E7FC6CA8;
  v12 = a1[4];
  v13 = a1[5];
  v14 = v5;
  v15 = a1[6];
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_119(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v2 combine:v3];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 56);

  dispatch_group_leave(v5);
}

uint64_t __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_120(uint64_t a1)
{
  [*(a1 + 32) _removeTemporaryUnzippedDirectoryURLs:*(a1 + 40) sandboxExtensionHandles:*(a1 + 48)];
  v2 = *(*(a1 + 64) + 16);

  return v2();
}

- (void)_computeNumberOfHistorySitesToBeImportedFromURL:(id)l completionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  handlerCopy = handler;
  v8 = [v5 errorWithDomain:v6 code:14 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)_computeNumberOfChromeHistorySitesToBeImportedFromURL:(id)l completionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  handlerCopy = handler;
  v8 = [v5 errorWithDomain:v6 code:14 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)_computeNumberOfExtensionsToBeImportedFromURL:(id)l completionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  handlerCopy = handler;
  v8 = [v5 errorWithDomain:v6 code:14 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)_computeNumberOfBookmarksToBeImportedFromURL:(id)l completionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  handlerCopy = handler;
  v8 = [v5 errorWithDomain:v6 code:14 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)_computeNumberOfCreditCardsToBeImportedFromURL:(id)l completionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  handlerCopy = handler;
  v8 = [v5 errorWithDomain:v6 code:14 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)_computeNumberOfChromeExtensionsToBeImportedFromURL:(id)l completionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A798];
  handlerCopy = handler;
  v8 = [v5 errorWithDomain:v6 code:14 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)computeNumberOfItemsToBeImportedFromFiles:(id)files withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke;
  v8[3] = &unk_1E7FC6D70;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(WBSBrowsingDataImportController *)self scanImportURLs:files completionHandler:v8];
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_cold_1(v13);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = dispatch_group_create();
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_122;
    v26[3] = &unk_1E7FC6D20;
    v16 = *(a1 + 32);
    v27 = v15;
    v28 = v16;
    v17 = v14;
    v29 = v17;
    v18 = v15;
    [v9 enumerateKeysAndObjectsUsingBlock:v26];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_137;
    v21[3] = &unk_1E7FC6D48;
    v21[4] = *(a1 + 32);
    v22 = v10;
    v23 = v11;
    v19 = *(a1 + 40);
    v24 = v17;
    v25 = v19;
    v20 = v17;
    dispatch_group_notify(v18, MEMORY[0x1E69E96A0], v21);
  }
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_122(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 safari_stringForKey:*MEMORY[0x1E69C8B80]];
  if ([v6 isEqualToString:*MEMORY[0x1E69C8BF8]])
  {
    dispatch_group_enter(*(a1 + 32));
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2;
    v41[3] = &unk_1E7FC6DC0;
    v7 = *(a1 + 40);
    v42 = *(a1 + 48);
    v43 = v6;
    v44 = *(a1 + 32);
    [v7 _computeNumberOfHistorySitesToBeImportedFromURL:v5 completionHandler:v41];

    v8 = v42;
LABEL_15:

    goto LABEL_16;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E69C8B00]])
  {
    dispatch_group_enter(*(a1 + 32));
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_125;
    v37[3] = &unk_1E7FC6DC0;
    v9 = *(a1 + 40);
    v38 = *(a1 + 48);
    v39 = v6;
    v40 = *(a1 + 32);
    [v9 _computeNumberOfBookmarksToBeImportedFromURL:v5 completionHandler:v37];

    v8 = v38;
    goto LABEL_15;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E69C8B90]])
  {
    dispatch_group_enter(*(a1 + 32));
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_127;
    v33[3] = &unk_1E7FC6DC0;
    v10 = *(a1 + 40);
    v34 = *(a1 + 48);
    v35 = v6;
    v36 = *(a1 + 32);
    [v10 _computeNumberOfExtensionsToBeImportedFromURL:v5 completionHandler:v33];

    v8 = v34;
    goto LABEL_15;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E69C8B50]])
  {
    dispatch_group_enter(*(a1 + 32));
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_129;
    v29[3] = &unk_1E7FC6DC0;
    v11 = *(a1 + 40);
    v30 = *(a1 + 48);
    v31 = v6;
    v32 = *(a1 + 32);
    [v11 _computeNumberOfCreditCardsToBeImportedFromURL:v5 completionHandler:v29];

    v8 = v30;
    goto LABEL_15;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E69C8B08]])
  {
    dispatch_group_enter(*(a1 + 32));
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_131;
    v25[3] = &unk_1E7FC6DC0;
    v12 = *(a1 + 40);
    v26 = *(a1 + 48);
    v27 = v6;
    v28 = *(a1 + 32);
    [v12 _computeNumberOfChromeExtensionsToBeImportedFromURL:v5 completionHandler:v25];

    v8 = v26;
    goto LABEL_15;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E69C8CC8]])
  {
    dispatch_group_enter(*(a1 + 32));
    v13 = objc_alloc_init(WBSPasswordsDataImporter);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_133;
    block[3] = &unk_1E7FB72D0;
    v20 = v13;
    v21 = v5;
    v22 = *(a1 + 48);
    v23 = v6;
    v24 = *(a1 + 32);
    v8 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    goto LABEL_15;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E69C8B10]])
  {
    dispatch_group_enter(*(a1 + 32));
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_135;
    v15[3] = &unk_1E7FC6DC0;
    v14 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = v6;
    v18 = *(a1 + 32);
    [v14 _computeNumberOfChromeHistorySitesToBeImportedFromURL:v5 completionHandler:v15];

    v8 = v16;
    goto LABEL_15;
  }

LABEL_16:
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_cold_1(v6);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_123;
  v7[3] = &unk_1E7FC6D98;
  v8 = a1[4];
  v9 = a1[5];
  v11 = a2;
  v10 = a1[6];
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_123(uint64_t a1)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v2 numberWithUnsignedInteger:{*(a1 + 56) + objc_msgSend(v3, "unsignedIntegerValue")}];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_125(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_125_cold_1(v6);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_126;
  v7[3] = &unk_1E7FC6D98;
  v8 = a1[4];
  v9 = a1[5];
  v11 = a2;
  v10 = a1[6];
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_126(uint64_t a1)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v2 numberWithUnsignedInteger:{*(a1 + 56) + objc_msgSend(v3, "unsignedIntegerValue")}];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_127(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_127_cold_1(v6);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_128;
  v7[3] = &unk_1E7FC6D98;
  v8 = a1[4];
  v9 = a1[5];
  v11 = a2;
  v10 = a1[6];
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_128(uint64_t a1)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v2 numberWithUnsignedInteger:{*(a1 + 56) + objc_msgSend(v3, "unsignedIntegerValue")}];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_129(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_cold_1(v6);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_130;
  v7[3] = &unk_1E7FC6D98;
  v8 = a1[4];
  v9 = a1[5];
  v11 = a2;
  v10 = a1[6];
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_130(uint64_t a1)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v2 numberWithUnsignedInteger:{*(a1 + 56) + objc_msgSend(v3, "unsignedIntegerValue")}];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_131(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_131_cold_1(v6);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_132;
  v7[3] = &unk_1E7FC6D98;
  v8 = a1[4];
  v9 = a1[5];
  v11 = a2;
  v10 = a1[6];
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_132(uint64_t a1)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v2 numberWithUnsignedInteger:{*(a1 + 56) + objc_msgSend(v3, "unsignedIntegerValue")}];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_133(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_3;
  v4[3] = &unk_1E7FC6DC0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 computeNumberOfCredentialsToBeImportedFromCSVWithFileURL:v3 completionHandler:v4];
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_3(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_3_cold_1(v6);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_134;
  v7[3] = &unk_1E7FC6D98;
  v8 = a1[4];
  v9 = a1[5];
  v11 = a2;
  v10 = a1[6];
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_134(uint64_t a1)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v2 numberWithUnsignedInteger:{*(a1 + 56) + objc_msgSend(v3, "unsignedIntegerValue")}];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_135(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_cold_1(v6);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_136;
  v7[3] = &unk_1E7FC6D98;
  v8 = a1[4];
  v9 = a1[5];
  v11 = a2;
  v10 = a1[6];
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_136(uint64_t a1)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v2 numberWithUnsignedInteger:{*(a1 + 56) + objc_msgSend(v3, "unsignedIntegerValue")}];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

uint64_t __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_137(uint64_t a1)
{
  [*(a1 + 32) _removeTemporaryUnzippedDirectoryURLs:*(a1 + 40) sandboxExtensionHandles:*(a1 + 48)];
  v2 = *(*(a1 + 64) + 16);

  return v2();
}

- (void)_removeTemporaryUnzippedDirectoryURLs:(id)ls sandboxExtensionHandles:(id)handles
{
  lsCopy = ls;
  handlesCopy = handles;
  v7 = dispatch_get_global_queue(25, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __97__WBSBrowsingDataImportController__removeTemporaryUnzippedDirectoryURLs_sandboxExtensionHandles___block_invoke;
  v10[3] = &unk_1E7FB6E30;
  v11 = lsCopy;
  v12 = handlesCopy;
  v8 = handlesCopy;
  v9 = lsCopy;
  dispatch_async(v7, v10);
}

void __97__WBSBrowsingDataImportController__removeTemporaryUnzippedDirectoryURLs_sandboxExtensionHandles___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = [MEMORY[0x1E696AC08] defaultManager];
        [v8 removeItemAtURL:v7 error:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) longLongValue];
        sandbox_extension_release();
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }
}

void __68__WBSBrowsingDataImportController_scanImportURLs_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = a2;
  __error();
  OUTLINED_FUNCTION_0_12();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_12();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_12();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_105_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_12();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_107_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_12();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_109_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_12();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_2_111_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_12();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __85__WBSBrowsingDataImportController_importBrowsingDataFromFiles_withCompletionHandler___block_invoke_4_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_12();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_12();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_125_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_12();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_127_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_12();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_2_131_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_12();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __99__WBSBrowsingDataImportController_computeNumberOfItemsToBeImportedFromFiles_withCompletionHandler___block_invoke_3_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_12();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

@end