@interface _WBSSearchFoundationFeedbackGenerator
- (_WBSSearchFoundationFeedbackGenerator)init;
- (void)_commitPreviousSectionIfNecessary;
- (void)didAddItem:(id)a3 hidingOutrankedResults:(id)a4 hidingDuplicateResults:(id)a5;
- (void)didBeginRanking;
- (void)didBeginSectionWithBundleIdentifier:(id)a3;
- (void)didEncounterHiddenSiriSuggestedSite:(id)a3 hideReason:(int)a4;
- (void)didEndRanking;
- (void)removeAllSectionsAndItems;
@end

@implementation _WBSSearchFoundationFeedbackGenerator

- (_WBSSearchFoundationFeedbackGenerator)init
{
  v9.receiver = self;
  v9.super_class = _WBSSearchFoundationFeedbackGenerator;
  v2 = [(_WBSSearchFoundationFeedbackGenerator *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    sectionRankingFeedbackObjects = v2->_sectionRankingFeedbackObjects;
    v2->_sectionRankingFeedbackObjects = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    currentSectionResultRankingFeedbackObjects = v2->_currentSectionResultRankingFeedbackObjects;
    v2->_currentSectionResultRankingFeedbackObjects = v5;

    v7 = v2;
  }

  return v2;
}

- (void)didBeginRanking
{
  v3 = [MEMORY[0x1E695DF00] date];
  rankingStartDate = self->_rankingStartDate;
  self->_rankingStartDate = v3;
}

- (void)didEndRanking
{
  v40 = *MEMORY[0x1E69E9840];
  [(_WBSSearchFoundationFeedbackGenerator *)self _commitPreviousSectionIfNecessary];
  prefixNavigationalIntent = self->_prefixNavigationalIntent;
  if (prefixNavigationalIntent)
  {
    v4 = MEMORY[0x1E696AD98];
    [(NSNumber *)prefixNavigationalIntent floatValue];
    *&v6 = v5 / 100.0;
    v7 = [v4 numberWithFloat:v6];
  }

  else
  {
    v7 = &unk_1F3A9A958;
  }

  if (self->_serverCompletionDidMatchFirstSearchSuggestionFrom3rdParty)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = self;
  obj = self->_sectionRankingFeedbackObjects;
  v27 = [(NSMutableArray *)obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v27)
  {
    v26 = *v34;
    do
    {
      v9 = 0;
      do
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v9;
        v10 = *(*(&v33 + 1) + 8 * v9);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v11 = [v10 results];
        v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v30;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v30 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v29 + 1) + 8 * i) result];
              if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
              {
                [v16 setThirdPartyNavigationIntentScore:v7];
                [v16 setThirdPartyQueryCompletionMatched:v8];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v13);
        }

        v9 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [(NSMutableArray *)obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v27);
  }

  v17 = objc_alloc(MEMORY[0x1E69CA340]);
  sectionRankingFeedbackObjects = v24->_sectionRankingFeedbackObjects;
  [(NSDate *)v24->_rankingStartDate timeIntervalSinceNow];
  v20 = [v17 initWithSections:sectionRankingFeedbackObjects blendingDuration:-v19];
  rankingFeedback = v24->_rankingFeedback;
  v24->_rankingFeedback = v20;

  if (v24->_hiddenSiriSuggestedWebsite)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      [(SFSearchResult *)v24->_hiddenSiriSuggestedWebsite setThirdPartyNavigationIntentScore:v7];
      [(SFSearchResult *)v24->_hiddenSiriSuggestedWebsite setThirdPartyQueryCompletionMatched:v8];
    }

    hiddenSiriSuggestedWebsite = v24->_hiddenSiriSuggestedWebsite;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&hiddenSiriSuggestedWebsite count:1];
    [(SFRankingFeedback *)v24->_rankingFeedback setHiddenResults:v22];

    v23 = v24->_hiddenSiriSuggestedWebsite;
  }

  else
  {
    v23 = 0;
  }

  v24->_hiddenSiriSuggestedWebsite = 0;
}

- (void)didBeginSectionWithBundleIdentifier:(id)a3
{
  v4 = a3;
  [(_WBSSearchFoundationFeedbackGenerator *)self _commitPreviousSectionIfNecessary];
  currentSectionBundleIdentifier = self->_currentSectionBundleIdentifier;
  self->_currentSectionBundleIdentifier = v4;
}

- (void)didEncounterHiddenSiriSuggestedSite:(id)a3 hideReason:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E69CA3C0]);
  [v8 setHideReason:v4];
  [v6 setSafariAttributes:v8];
  hiddenSiriSuggestedWebsite = self->_hiddenSiriSuggestedWebsite;
  self->_hiddenSiriSuggestedWebsite = v6;
}

- (void)didAddItem:(id)a3 hidingOutrankedResults:(id)a4 hidingDuplicateResults:(id)a5
{
  v17 = a4;
  v8 = a5;
  v9 = [a3 sfSearchResultValue];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 copy];
    v12 = [v10 sectionBundleIdentifier];
    currentSectionBundleIdentifier = v12;
    if (!v12)
    {
      currentSectionBundleIdentifier = self->_currentSectionBundleIdentifier;
    }

    [v11 setSectionBundleIdentifier:currentSectionBundleIdentifier];

    v14 = [v17 safari_mapObjectsUsingBlock:&__block_literal_global_0];
    v15 = [v8 safari_mapObjectsUsingBlock:&__block_literal_global_93];
    v16 = [objc_alloc(MEMORY[0x1E69CA388]) initWithResult:v11 hiddenResults:v14 duplicateResults:v15 localResultPosition:{-[NSMutableArray count](self->_currentSectionResultRankingFeedbackObjects, "count")}];
    if (v16)
    {
      [(NSMutableArray *)self->_currentSectionResultRankingFeedbackObjects addObject:v16];
    }
  }
}

- (void)removeAllSectionsAndItems
{
  [(NSMutableArray *)self->_sectionRankingFeedbackObjects removeAllObjects];
  [(NSMutableArray *)self->_currentSectionResultRankingFeedbackObjects removeAllObjects];
  currentSectionBundleIdentifier = self->_currentSectionBundleIdentifier;
  self->_currentSectionBundleIdentifier = 0;

  hiddenSiriSuggestedWebsite = self->_hiddenSiriSuggestedWebsite;
  self->_hiddenSiriSuggestedWebsite = 0;
}

- (void)_commitPreviousSectionIfNecessary
{
  currentSectionBundleIdentifier = self->_currentSectionBundleIdentifier;
  if (currentSectionBundleIdentifier)
  {
    v9 = currentSectionBundleIdentifier;
    v4 = [(NSMutableArray *)self->_currentSectionResultRankingFeedbackObjects copy];
    v5 = self->_currentSectionBundleIdentifier;
    self->_currentSectionBundleIdentifier = 0;

    [(NSMutableArray *)self->_currentSectionResultRankingFeedbackObjects removeAllObjects];
    v6 = objc_alloc_init(MEMORY[0x1E69CA390]);
    v7 = v6;
    if (v6)
    {
      [v6 setBundleIdentifier:v9];
      v8 = [objc_alloc(MEMORY[0x1E69CA418]) initWithResults:v4 section:v7 localSectionPosition:-[NSMutableArray count](self->_sectionRankingFeedbackObjects personalizationScore:{"count"), 0.0}];
      if (v8)
      {
        [(NSMutableArray *)self->_sectionRankingFeedbackObjects addObject:v8];
      }
    }
  }
}

@end