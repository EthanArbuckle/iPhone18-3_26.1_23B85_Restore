@interface WBSCyclerTestSuiteBookmarkAuxiliary
- (BOOL)hasPerformedOperation:(int64_t)a3;
- (WBSCyclerTestSuiteBookmarkAuxiliary)init;
- (id)_attributeStringForBookmark:(id)a3 multiline:(BOOL)a4;
- (id)_descriptionForBookmark:(id)a3;
- (id)_descriptionForErrorCode:(int64_t)a3;
- (id)_errorWithCode:(int64_t)a3 userInfo:(id)a4;
- (id)_expandedDescriptionForBookmark:(id)a3;
- (id)_formattedStringForBookmark:(id)a3 indentationLevel:(unint64_t)a4;
- (id)validateBookmarks:(id)a3 expectingBookmarks:(id)a4 context:(id)a5;
- (void)_attemptCloudKitMigrationWithCompletionHandler:(id)a3;
- (void)_attemptInitialClearWithTarget:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)_attemptResetToDAVModeWithCompletionHandler:(id)a3;
- (void)_attemptToClearDataWithOptions:(id)a3 completionHandler:(id)a4;
- (void)_attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler:(id)a3;
- (void)fetchAndValidateBookmarksWithExpectedBookmarks:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)performOperation:(int64_t)a3 withTarget:(id)a4 options:(id)a5 completionHandler:(id)a6;
- (void)resetOperation:(int64_t)a3;
@end

@implementation WBSCyclerTestSuiteBookmarkAuxiliary

- (WBSCyclerTestSuiteBookmarkAuxiliary)init
{
  v6.receiver = self;
  v6.super_class = WBSCyclerTestSuiteBookmarkAuxiliary;
  v2 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_operationBackoffRatio = 2.0;
    v4 = v2;
  }

  return v3;
}

- (void)fetchAndValidateBookmarksWithExpectedBookmarks:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 testTarget];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __112__WBSCyclerTestSuiteBookmarkAuxiliary_fetchAndValidateBookmarksWithExpectedBookmarks_context_completionHandler___block_invoke;
  v15[3] = &unk_1E7FC53C8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  [v11 fetchTopLevelBookmarkList:v15];
}

void __112__WBSCyclerTestSuiteBookmarkAuxiliary_fetchAndValidateBookmarksWithExpectedBookmarks_context_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) validateBookmarks:a2 expectingBookmarks:*(a1 + 40) context:*(a1 + 48)];
  (*(v2 + 16))(v2, v3);
}

- (id)validateBookmarks:(id)a3 expectingBookmarks:(id)a4 context:(id)a5
{
  v71[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a3;
  v9 = [v7 filterOutItemsWithoutTitlePrefixInList:a4];
  v10 = [v7 filterOutItemsWithoutTitlePrefixInList:v8];

  v11 = [v9 title];
  v12 = [v10 title];
  if (![v11 length] && !objc_msgSend(v12, "length"))
  {
    [v9 setTitle:0];
    [v10 setTitle:0];
  }

  v13 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _formattedStringForBookmark:v9 indentationLevel:0];
  v14 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _formattedStringForBookmark:v10 indentationLevel:0];
  v15 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [WBSCyclerTestSuiteBookmarkAuxiliary validateBookmarks:expectingBookmarks:context:];
  }

  v16 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [WBSCyclerTestSuiteBookmarkAuxiliary validateBookmarks:expectingBookmarks:context:];
  }

  if ([v10 isEquivalent:v9])
  {
    v17 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [WBSCyclerTestSuiteBookmarkAuxiliary validateBookmarks:expectingBookmarks:context:];
    }

    v18 = [v9 pairsOfItemsWithDifferingExtraAttributesComparedTo:v10];
    if ([v18 count])
    {
      v46 = v14;
      v47 = v11;
      v51 = v13;
      v53 = v12;
      v48 = v10;
      v49 = v9;
      v50 = v7;
      v57 = [MEMORY[0x1E695DF70] array];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v18 = v18;
      v19 = [v18 countByEnumeratingWithState:&v61 objects:v69 count:16];
      if (v19)
      {
        v20 = v19;
        v56 = *v62;
        obj = v18;
        do
        {
          v21 = 0;
          do
          {
            if (*v62 != v56)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v61 + 1) + 8 * v21);
            v59 = 0;
            v60 = 0;
            [v22 getFirst:&v60 second:&v59];
            v23 = v60;
            v24 = v59;
            v25 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _expandedDescriptionForBookmark:v23];
            v26 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _expandedDescriptionForBookmark:v24];
            v27 = WBS_LOG_CHANNEL_PREFIXCycler();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v68 = v25;
              _os_log_debug_impl(&dword_1BB6F3000, v27, OS_LOG_TYPE_DEBUG, "Expected bookmark attributes: %{public}@", buf, 0xCu);
            }

            v28 = WBS_LOG_CHANNEL_PREFIXCycler();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v68 = v26;
              _os_log_debug_impl(&dword_1BB6F3000, v28, OS_LOG_TYPE_DEBUG, "Actual bookmark attributes: %{public}@", buf, 0xCu);
            }

            v29 = [MEMORY[0x1E696AB08] newlineCharacterSet];
            v30 = [v25 componentsSeparatedByCharactersInSet:v29];

            v31 = [MEMORY[0x1E696AB08] newlineCharacterSet];
            v32 = [v26 componentsSeparatedByCharactersInSet:v31];

            v33 = [v30 safari_diffWithArray:v32];
            v34 = WBS_LOG_CHANNEL_PREFIXCycler();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v68 = v33;
              _os_log_error_impl(&dword_1BB6F3000, v34, OS_LOG_TYPE_ERROR, "Expected and actual attributes don't match: %{public}@", buf, 0xCu);
            }

            [v57 addObject:v33];

            ++v21;
          }

          while (v20 != v21);
          v18 = obj;
          v20 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
        }

        while (v20);
      }

      v65 = @"ExpectedAttributesVersusActualAttributes";
      v66 = v57;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      v36 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _errorWithCode:0 userInfo:v35];

      v9 = v49;
      v7 = v50;
      v11 = v47;
      v10 = v48;
      v13 = v51;
      v12 = v53;
      v14 = v46;
    }

    else
    {
      v44 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        [WBSCyclerTestSuiteBookmarkAuxiliary validateBookmarks:expectingBookmarks:context:];
      }

      v36 = 0;
    }
  }

  else
  {
    v54 = v12;
    v37 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v18 = [v13 componentsSeparatedByCharactersInSet:v37];

    v38 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v39 = [v14 componentsSeparatedByCharactersInSet:v38];

    v70 = @"ExpectedStateVersusActualState";
    [v18 safari_diffWithArray:v39];
    v40 = v52 = v13;
    v71[0] = v40;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
    v41 = v11;
    v43 = v42 = v14;
    v36 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _errorWithCode:0 userInfo:v43];

    v14 = v42;
    v11 = v41;

    v13 = v52;
    v12 = v54;
  }

  return v36;
}

- (BOOL)hasPerformedOperation:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return [*(&self->_initialClearOperation + a3) isFinished];
  }
}

- (void)performOperation:(int64_t)a3 withTarget:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v12 = a4;
  v10 = a5;
  v11 = a6;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _attemptResetToDAVModeWithCompletionHandler:v11];
      }
    }

    else
    {
      [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _attemptInitialClearWithTarget:v12 options:v10 completionHandler:v11];
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler:v11];
        break;
      case 3:
        [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _attemptCloudKitMigrationWithCompletionHandler:v11];
        break;
      case 4:
        [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _attemptToClearDataWithOptions:v10 completionHandler:v11];
        break;
    }
  }
}

- (void)resetOperation:(int64_t)a3
{
  if ([(WBSCyclerTestSuiteBookmarkAuxiliary *)self hasPerformedOperation:?]&& a3 <= 4)
  {
    v5 = &self->super.isa + a3;
    v6 = v5[1];
    v5[1] = 0;
  }
}

- (id)_descriptionForBookmark:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = MEMORY[0x1E696AD60];
  v7 = [v4 title];
  if (isKindOfClass)
  {
    v8 = [v4 url];
    v9 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _attributeStringForBookmark:v4 multiline:0];
    v10 = [v6 stringWithFormat:@"<Leaf title=%@ url=%@ attributes=%@>", v7, v8, v9];
  }

  else
  {
    v8 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _attributeStringForBookmark:v4 multiline:0];
    v10 = [v6 stringWithFormat:@"<List title=%@ attributes=%@>", v7, v8];
  }

  return v10;
}

- (id)_attributeStringForBookmark:(id)a3 multiline:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = [v5 array];
  v8 = [v6 extraAttributes];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__WBSCyclerTestSuiteBookmarkAuxiliary__attributeStringForBookmark_multiline___block_invoke;
  v13[3] = &unk_1E7FC53F0;
  v14 = v7;
  v9 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:v13];

  if (v4)
  {
    v10 = @"\n";
  }

  else
  {
    v10 = @", ";
  }

  v11 = [v9 componentsJoinedByString:v10];

  return v11;
}

void __77__WBSCyclerTestSuiteBookmarkAuxiliary__attributeStringForBookmark_multiline___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", a2, a3];
  [v3 addObject:v4];
}

- (id)_expandedDescriptionForBookmark:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = MEMORY[0x1E696AD60];
  v7 = [v4 title];
  v8 = v7;
  if (isKindOfClass)
  {
    v9 = [v4 url];
    v10 = [v6 stringWithFormat:@"<Leaf title=%@ url=%@>", v8, v9];
  }

  else
  {
    v10 = [v6 stringWithFormat:@"<List title=%@>", v7];
  }

  [v10 appendString:@"\n"];
  v11 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _attributeStringForBookmark:v4 multiline:1];
  [v10 appendString:v11];

  return v10;
}

- (id)_formattedStringForBookmark:(id)a3 indentationLevel:(unint64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _descriptionForBookmark:v6];
  v8 = [v7 mutableCopy];

  if (a4)
  {
    v9 = a4;
    do
    {
      [v8 insertString:@"    " atIndex:0];
      --v9;
    }

    while (v9);
  }

  [v8 appendString:@"\n"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _formattedStringForBookmark:*(*(&v17 + 1) + 8 * i) indentationLevel:a4 + 1, v17];
          [v8 appendString:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  return v8;
}

- (void)_attemptInitialClearWithTarget:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_initialClearOperation)
  {
    v11 = [WBSCyclerOperation alloc];
    *&v12 = self->_operationBackoffRatio;
    v13 = [(WBSCyclerOperation *)v11 initWithMaximumNumberOfAttempts:5 backoffRatio:v12];
    initialClearOperation = self->_initialClearOperation;
    self->_initialClearOperation = v13;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __96__WBSCyclerTestSuiteBookmarkAuxiliary__attemptInitialClearWithTarget_options_completionHandler___block_invoke;
  v22[3] = &unk_1E7FC5418;
  v23 = v9;
  v24 = v8;
  v15 = self->_initialClearOperation;
  v16 = v8;
  v17 = v9;
  [(WBSCyclerOperation *)v15 setBlock:v22];
  v18 = self->_initialClearOperation;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __96__WBSCyclerTestSuiteBookmarkAuxiliary__attemptInitialClearWithTarget_options_completionHandler___block_invoke_47;
  v20[3] = &unk_1E7FC5440;
  v20[4] = self;
  v21 = v10;
  v19 = v10;
  [(WBSCyclerOperation *)v18 executeWithResultHandler:v20];
}

void __96__WBSCyclerTestSuiteBookmarkAuxiliary__attemptInitialClearWithTarget_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Clearing all local and remote bookmarks before starting cycler", v8, 2u);
  }

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"forCloudKitTest"];
  v6 = [v5 isEqual:MEMORY[0x1E695E118]];

  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  [*(a1 + 40) clearBookmarksWithOptions:v7 completionHandler:v3];
}

void __96__WBSCyclerTestSuiteBookmarkAuxiliary__attemptInitialClearWithTarget_options_completionHandler___block_invoke_47(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 2:
      v5 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __96__WBSCyclerTestSuiteBookmarkAuxiliary__attemptInitialClearWithTarget_options_completionHandler___block_invoke_47_cold_1();
      }

      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) _errorWithCode:1];
      (*(v6 + 16))(v6, v7);

      break;
    case 1:
      v4 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __96__WBSCyclerTestSuiteBookmarkAuxiliary__attemptInitialClearWithTarget_options_completionHandler___block_invoke_47_cold_2();
      }

      (*(*(a1 + 40) + 16))();
      break;
    case 0:
      v3 = *(*(a1 + 40) + 16);

      v3();
      break;
  }
}

- (void)_attemptResetToDAVModeWithCompletionHandler:(id)a3
{
  v4 = a3;
  resetToDAVModeOperation = self->_resetToDAVModeOperation;
  if (!resetToDAVModeOperation)
  {
    v6 = [WBSCyclerOperation alloc];
    *&v7 = self->_operationBackoffRatio;
    v8 = [(WBSCyclerOperation *)v6 initWithMaximumNumberOfAttempts:5 backoffRatio:v7];
    v9 = self->_resetToDAVModeOperation;
    self->_resetToDAVModeOperation = v8;

    [(WBSCyclerOperation *)self->_resetToDAVModeOperation setBlock:&__block_literal_global_43];
    resetToDAVModeOperation = self->_resetToDAVModeOperation;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke_52;
  v11[3] = &unk_1E7FC5440;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [(WBSCyclerOperation *)resetToDAVModeOperation executeWithResultHandler:v11];
}

void __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_INFO, "Resetting bookmark database back to DAV mode", buf, 2u);
  }

  v4 = [MEMORY[0x1E69C8A08] sharedProxy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke_50;
  v6[3] = &unk_1E7FB8300;
  v7 = v2;
  v5 = v2;
  [v4 resetToDAVDatabaseWithCompletionHandler:v6];
}

void __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke_50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCycler();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke_50_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Reset bookmark database to DAV mode successfully", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke_52(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 2:
      v5 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke_52_cold_1();
      }

      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) _errorWithCode:3];
      (*(v6 + 16))(v6, v7);

      break;
    case 1:
      v4 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke_52_cold_2();
      }

      (*(*(a1 + 40) + 16))();
      break;
    case 0:
      v3 = *(*(a1 + 40) + 16);

      v3();
      break;
  }
}

- (void)_attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler:(id)a3
{
  v4 = a3;
  generateDAVServerIDsForExistingBookmarksOperation = self->_generateDAVServerIDsForExistingBookmarksOperation;
  if (!generateDAVServerIDsForExistingBookmarksOperation)
  {
    v6 = [WBSCyclerOperation alloc];
    *&v7 = self->_operationBackoffRatio;
    v8 = [(WBSCyclerOperation *)v6 initWithMaximumNumberOfAttempts:5 backoffRatio:v7];
    v9 = self->_generateDAVServerIDsForExistingBookmarksOperation;
    self->_generateDAVServerIDsForExistingBookmarksOperation = v8;

    [(WBSCyclerOperation *)self->_generateDAVServerIDsForExistingBookmarksOperation setBlock:&__block_literal_global_54];
    generateDAVServerIDsForExistingBookmarksOperation = self->_generateDAVServerIDsForExistingBookmarksOperation;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke_56;
  v11[3] = &unk_1E7FC5440;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [(WBSCyclerOperation *)generateDAVServerIDsForExistingBookmarksOperation executeWithResultHandler:v11];
}

void __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_INFO, "Generating DAV server IDs for current bookmarks", buf, 2u);
  }

  v4 = [MEMORY[0x1E69C8A08] sharedProxy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke_55;
  v6[3] = &unk_1E7FB8300;
  v7 = v2;
  v5 = v2;
  [v4 generateDAVServerIDsForExistingBookmarksWithCompletionHandler:v6];
}

void __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCycler();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke_55_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Generated DAV server IDs for existing bookmarks", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke_56(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 2:
      v5 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke_56_cold_1();
      }

      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) _errorWithCode:4];
      (*(v6 + 16))(v6, v7);

      break;
    case 1:
      v4 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke_56_cold_2();
      }

      (*(*(a1 + 40) + 16))();
      break;
    case 0:
      v3 = *(*(a1 + 40) + 16);

      v3();
      break;
  }
}

- (void)_attemptCloudKitMigrationWithCompletionHandler:(id)a3
{
  v4 = a3;
  cloudKitMigrationOperation = self->_cloudKitMigrationOperation;
  if (!cloudKitMigrationOperation)
  {
    v6 = [WBSCyclerOperation alloc];
    *&v7 = self->_operationBackoffRatio;
    v8 = [(WBSCyclerOperation *)v6 initWithMaximumNumberOfAttempts:5 backoffRatio:v7];
    v9 = self->_cloudKitMigrationOperation;
    self->_cloudKitMigrationOperation = v8;

    [(WBSCyclerOperation *)self->_cloudKitMigrationOperation setBlock:&__block_literal_global_58];
    cloudKitMigrationOperation = self->_cloudKitMigrationOperation;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke_60;
  v11[3] = &unk_1E7FC5440;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [(WBSCyclerOperation *)cloudKitMigrationOperation executeWithResultHandler:v11];
}

void __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_INFO, "Migrating from DAV to CloudKit", buf, 2u);
  }

  v4 = [MEMORY[0x1E69C8A08] sharedProxy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke_59;
  v6[3] = &unk_1E7FB8300;
  v7 = v2;
  v5 = v2;
  [v4 migrateToCloudKitWithCompletionHandler:v6];
}

void __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke_59(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCycler();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke_59_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Migrated from DAV to CloudKit successfully", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke_60(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 2:
      v5 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke_60_cold_1();
      }

      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) _errorWithCode:5];
      (*(v6 + 16))(v6, v7);

      break;
    case 1:
      v4 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke_60_cold_2();
      }

      (*(*(a1 + 40) + 16))();
      break;
    case 0:
      v3 = *(*(a1 + 40) + 16);

      v3();
      break;
  }
}

- (void)_attemptToClearDataWithOptions:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_clearLocalDataOperation)
  {
    v8 = [WBSCyclerOperation alloc];
    *&v9 = self->_operationBackoffRatio;
    v10 = [(WBSCyclerOperation *)v8 initWithMaximumNumberOfAttempts:5 backoffRatio:v9];
    clearLocalDataOperation = self->_clearLocalDataOperation;
    self->_clearLocalDataOperation = v10;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke;
  v18[3] = &unk_1E7FC5488;
  v19 = v6;
  v12 = self->_clearLocalDataOperation;
  v13 = v6;
  [(WBSCyclerOperation *)v12 setBlock:v18];
  v14 = self->_clearLocalDataOperation;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke_62;
  v16[3] = &unk_1E7FC5440;
  v16[4] = self;
  v17 = v7;
  v15 = v7;
  [(WBSCyclerOperation *)v14 executeWithResultHandler:v16];
}

void __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"includeMigrationState"];
  v5 = [v4 isEqual:MEMORY[0x1E695E118]];

  v6 = WBS_LOG_CHANNEL_PREFIXCycler();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      v8 = "Asking sync agent to clear local data and migration state";
LABEL_6:
      _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, v8, buf, 2u);
    }
  }

  else if (v7)
  {
    *buf = 0;
    v8 = "Asking sync agent to clear local data";
    goto LABEL_6;
  }

  v9 = [MEMORY[0x1E69C8A08] sharedProxy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke_61;
  v11[3] = &unk_1E7FB8300;
  v12 = v3;
  v10 = v3;
  [v9 clearLocalDataIncludingMigrationState:v5 completionHandler:v11];
}

void __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke_61(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCycler();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke_61_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Cleared local data successfully", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke_62(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 2:
      v5 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke_62_cold_1();
      }

      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) _errorWithCode:6];
      (*(v6 + 16))(v6, v7);

      break;
    case 1:
      v4 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke_62_cold_2();
      }

      break;
    case 0:
      v3 = *(*(a1 + 40) + 16);

      v3();
      break;
  }
}

- (id)_errorWithCode:(int64_t)a3 userInfo:(id)a4
{
  v6 = [a4 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
  }

  v9 = v8;

  v10 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _descriptionForErrorCode:a3];
  [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696A578]];

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSCyclerTestSuiteBookmarkAuxiliaryErrorDomain" code:a3 userInfo:v9];

  return v11;
}

- (id)_descriptionForErrorCode:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return @"Test target's bookmark state does not match the expected state";
  }

  else
  {
    return off_1E7FC54A8[a3 - 1];
  }
}

- (void)validateBookmarks:expectingBookmarks:context:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)validateBookmarks:expectingBookmarks:context:.cold.2()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)validateBookmarks:expectingBookmarks:context:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)validateBookmarks:expectingBookmarks:context:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __96__WBSCyclerTestSuiteBookmarkAuxiliary__attemptInitialClearWithTarget_options_completionHandler___block_invoke_47_cold_2()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_9(&dword_1BB6F3000, v3, v4, "Was not able to clear bookmarks. Will try again after %.2f seconds.", v5, v6, v7, v8, v9);
}

void __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke_52_cold_2()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_9(&dword_1BB6F3000, v3, v4, "Was not able to reset bookmark database to DAV mode. Will try again after %.2f seconds.", v5, v6, v7, v8, v9);
}

void __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke_56_cold_2()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_9(&dword_1BB6F3000, v3, v4, "Was not able to generate DAV server IDs for existing bookmarks. Will try again after %.2f seconds.", v5, v6, v7, v8, v9);
}

void __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke_60_cold_2()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_9(&dword_1BB6F3000, v3, v4, "Was not able to migrate from DAV to CloudKit. Will try again after %.2f seconds.", v5, v6, v7, v8, v9);
}

void __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke_62_cold_2()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_9(&dword_1BB6F3000, v3, v4, "Was not able to clear local data. Will try again after %.2f seconds.", v5, v6, v7, v8, v9);
}

@end