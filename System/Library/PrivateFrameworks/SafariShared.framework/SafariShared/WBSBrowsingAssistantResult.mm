@interface WBSBrowsingAssistantResult
- (NSArray)allResults;
- (WBSBrowsingAssistantResult)initWithURL:(id)l contentOptions:(unint64_t)options;
- (id)_extractDisclaimerFromResult:(id)result;
- (id)_extractSummaryFromResult:(id)result;
- (void)_clearAllRemoteContent;
- (void)_clearSummaryAndTableOfContents;
- (void)_setUpTableOfContentsDataUsingResult:(id)result;
- (void)_setUpWithContentOptions:(unint64_t)options;
- (void)updateForRemoteContentWithOptions:(unint64_t)options;
- (void)updateWithSearchResults:(id)results;
@end

@implementation WBSBrowsingAssistantResult

- (WBSBrowsingAssistantResult)initWithURL:(id)l contentOptions:(unint64_t)options
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = WBSBrowsingAssistantResult;
  v7 = [(WBSBrowsingAssistantResult *)&v12 init];
  if (v7)
  {
    v8 = [lCopy copy];
    pageURL = v7->_pageURL;
    v7->_pageURL = v8;

    [(WBSBrowsingAssistantResult *)v7 _setUpWithContentOptions:options];
    v10 = v7;
  }

  return v7;
}

- (void)_setUpWithContentOptions:(unint64_t)options
{
  [(WBSBrowsingAssistantResult *)self updateForLocalContentWithOptions:?];

  [(WBSBrowsingAssistantResult *)self updateForRemoteContentWithOptions:options];
}

- (void)updateForRemoteContentWithOptions:(unint64_t)options
{
  optionsCopy = options;
  [(WBSBrowsingAssistantResult *)self _updateContentOptions:options inMask:31];
  if ((optionsCopy & 0x1F) != 0)
  {
    self->_remoteContentState = 2;
  }
}

- (id)_extractSummaryFromResult:(id)result
{
  inlineCard = [result inlineCard];
  cardSections = [inlineCard cardSections];
  firstObject = [cardSections firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = [firstObject text];
    text_elements = [text text_elements];
    firstObject2 = [text_elements firstObject];

    formatted_text = [firstObject2 formatted_text];
    firstObject3 = [formatted_text firstObject];

    if (firstObject3 && ([firstObject3 text], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, v13))
    {
      text2 = [firstObject3 text];
      v15 = [text2 copy];
    }

    else
    {
      v17 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(WBSBrowsingAssistantResult *)self _extractSummaryFromResult:v17];
      }

      [(WBSBrowsingAssistantResult *)self _clearSummaryAndTableOfContents];
      v15 = 0;
    }
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(WBSBrowsingAssistantResult *)self _extractSummaryFromResult:v16, firstObject];
    }

    [(WBSBrowsingAssistantResult *)self _clearSummaryAndTableOfContents];
    v15 = 0;
  }

  return v15;
}

- (id)_extractDisclaimerFromResult:(id)result
{
  inlineCard = [result inlineCard];
  cardSections = [inlineCard cardSections];
  v6 = [cardSections safari_firstObjectPassingTest:&__block_literal_global_101];
  v7 = v6;
  if (v6)
  {
    text = [v6 text];
    text_elements = [text text_elements];
    firstObject = [text_elements firstObject];

    formatted_text = [firstObject formatted_text];
    firstObject2 = [formatted_text firstObject];

    if (firstObject2 && ([firstObject2 text], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v14))
    {
      text2 = [firstObject2 text];
      v16 = [text2 copy];
    }

    else
    {
      v17 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(WBSBrowsingAssistantResult *)self _extractDisclaimerFromResult:v17];
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __59__WBSBrowsingAssistantResult__extractDisclaimerFromResult___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_setUpTableOfContentsDataUsingResult:(id)result
{
  inlineCard = [result inlineCard];
  cardSections = [inlineCard cardSections];
  lastObject = [cardSections lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_tableOfContentsType = [lastObject tableOfContentsType];
    tableOfContentsTitles = self->_tableOfContentsTitles;
    v8 = MEMORY[0x1E695E0F0];
    self->_tableOfContentsTitles = MEMORY[0x1E695E0F0];

    tableOfContentsPaths = self->_tableOfContentsPaths;
    self->_tableOfContentsPaths = v8;

    tableOfContentsTrailingText = self->_tableOfContentsTrailingText;
    self->_tableOfContentsTrailingText = v8;

    tableOfContentsItems = [lastObject tableOfContentsItems];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__WBSBrowsingAssistantResult__setUpTableOfContentsDataUsingResult___block_invoke;
    v12[3] = &unk_1E7FCA640;
    v12[4] = self;
    [tableOfContentsItems enumerateObjectsUsingBlock:v12];
  }
}

void __67__WBSBrowsingAssistantResult__setUpTableOfContentsDataUsingResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 64);
  v4 = a2;
  v5 = [v4 text];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F3A5E418;
  }

  v8 = [v3 arrayByAddingObject:v7];
  v9 = *(a1 + 32);
  v10 = *(v9 + 64);
  *(v9 + 64) = v8;

  v11 = *(*(a1 + 32) + 72);
  v12 = [v4 elementPath];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_1F3A5E418;
  }

  v15 = [v11 arrayByAddingObject:v14];
  v16 = *(a1 + 32);
  v17 = *(v16 + 72);
  *(v16 + 72) = v15;

  v18 = *(*(a1 + 32) + 80);
  v23 = [v4 trailingText];

  if (v23)
  {
    v19 = v23;
  }

  else
  {
    v19 = &stru_1F3A5E418;
  }

  v20 = [v18 arrayByAddingObject:v19];
  v21 = *(a1 + 32);
  v22 = *(v21 + 80);
  *(v21 + 80) = v20;
}

- (void)updateWithSearchResults:(id)results
{
  resultsCopy = results;
  self->_remoteContentState = 4;
  v12 = resultsCopy;
  if ([resultsCopy count])
  {
    v5 = [v12 safari_firstObjectPassingTest:&__block_literal_global_13_1];
    if (v5)
    {
      v6 = [(WBSBrowsingAssistantResult *)self _extractSummaryFromResult:v5];
      summaryText = self->_summaryText;
      self->_summaryText = v6;

      v8 = [(WBSBrowsingAssistantResult *)self _extractDisclaimerFromResult:v5];
      disclaimerText = self->_disclaimerText;
      self->_disclaimerText = v8;

      [(WBSBrowsingAssistantResult *)self _setUpTableOfContentsDataUsingResult:v5];
      if (self->_summaryText)
      {
        objc_storeStrong(&self->_summaryResult, v5);
      }

      v10 = [v12 safari_arrayByRemovingObject:v5];
    }

    else
    {
      v10 = v12;
    }

    entityResults = self->_entityResults;
    self->_entityResults = v10;
  }

  else
  {
    self->_tableOfContentsAvailable = 0;
    [(WBSBrowsingAssistantResult *)self _clearAllRemoteContent];
  }
}

uint64_t __54__WBSBrowsingAssistantResult_updateWithSearchResults___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 domainName];
  v3 = [v2 safari_isCaseInsensitiveEqualToString:@"sba"];

  return v3;
}

- (void)_clearSummaryAndTableOfContents
{
  summaryText = self->_summaryText;
  self->_summaryText = 0;

  summaryResult = self->_summaryResult;
  self->_summaryResult = 0;

  tableOfContentsTitles = self->_tableOfContentsTitles;
  self->_tableOfContentsTitles = 0;

  tableOfContentsPaths = self->_tableOfContentsPaths;
  self->_tableOfContentsPaths = 0;

  tableOfContentsTrailingText = self->_tableOfContentsTrailingText;
  self->_tableOfContentsTrailingText = 0;

  self->_tableOfContentsAvailable = 0;
  self->_tableOfContentsType = 0;
}

- (void)_clearAllRemoteContent
{
  [(WBSBrowsingAssistantResult *)self _clearSummaryAndTableOfContents];
  entityResults = self->_entityResults;
  self->_entityResults = 0;

  self->_contentOptions &= 0xFFFFFFFFFFFFFFE0;
}

- (NSArray)allResults
{
  array = [MEMORY[0x1E695DF70] array];
  [(NSArray *)array safari_addObjectUnlessNil:self->_summaryResult];
  [(NSArray *)array safari_addObjectsFromArrayUnlessNil:self->_entityResults];
  if ([(NSArray *)array count])
  {
    v4 = array;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)_extractSummaryFromResult:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = a2;
  v6 = [a3 type];
  v7 = 138478083;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Received unexpected summary card section: URL %{private}@, section %{public}@", &v7, 0x16u);
}

- (void)_extractSummaryFromResult:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = 138739971;
  v4 = v2;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Received empty summary for URL %{sensitive}@", &v3, 0xCu);
}

- (void)_extractDisclaimerFromResult:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = 138739971;
  v4 = v2;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Received an empty disclaimer for URL %{sensitive}@", &v3, 0xCu);
}

@end