@interface _WBSSearchFoundationFeedbackGenerator
- (_WBSSearchFoundationFeedbackGenerator)init;
- (void)_commitPreviousSectionIfNecessary;
- (void)didAddItem:(id)item hidingOutrankedResults:(id)results hidingDuplicateResults:(id)duplicateResults;
- (void)didBeginRanking;
- (void)didBeginSectionWithBundleIdentifier:(id)identifier;
- (void)didEncounterHiddenSiriSuggestedSite:(id)site hideReason:(int)reason;
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
    array = [MEMORY[0x1E695DF70] array];
    sectionRankingFeedbackObjects = v2->_sectionRankingFeedbackObjects;
    v2->_sectionRankingFeedbackObjects = array;

    array2 = [MEMORY[0x1E695DF70] array];
    currentSectionResultRankingFeedbackObjects = v2->_currentSectionResultRankingFeedbackObjects;
    v2->_currentSectionResultRankingFeedbackObjects = array2;

    v7 = v2;
  }

  return v2;
}

- (void)didBeginRanking
{
  date = [MEMORY[0x1E695DF00] date];
  rankingStartDate = self->_rankingStartDate;
  self->_rankingStartDate = date;
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
  selfCopy = self;
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
        results = [v10 results];
        v12 = [results countByEnumeratingWithState:&v29 objects:v38 count:16];
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
                objc_enumerationMutation(results);
              }

              result = [*(*(&v29 + 1) + 8 * i) result];
              if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
              {
                [result setThirdPartyNavigationIntentScore:v7];
                [result setThirdPartyQueryCompletionMatched:v8];
              }
            }

            v13 = [results countByEnumeratingWithState:&v29 objects:v38 count:16];
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
  sectionRankingFeedbackObjects = selfCopy->_sectionRankingFeedbackObjects;
  [(NSDate *)selfCopy->_rankingStartDate timeIntervalSinceNow];
  v20 = [v17 initWithSections:sectionRankingFeedbackObjects blendingDuration:-v19];
  rankingFeedback = selfCopy->_rankingFeedback;
  selfCopy->_rankingFeedback = v20;

  if (selfCopy->_hiddenSiriSuggestedWebsite)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      [(SFSearchResult *)selfCopy->_hiddenSiriSuggestedWebsite setThirdPartyNavigationIntentScore:v7];
      [(SFSearchResult *)selfCopy->_hiddenSiriSuggestedWebsite setThirdPartyQueryCompletionMatched:v8];
    }

    hiddenSiriSuggestedWebsite = selfCopy->_hiddenSiriSuggestedWebsite;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&hiddenSiriSuggestedWebsite count:1];
    [(SFRankingFeedback *)selfCopy->_rankingFeedback setHiddenResults:v22];

    v23 = selfCopy->_hiddenSiriSuggestedWebsite;
  }

  else
  {
    v23 = 0;
  }

  selfCopy->_hiddenSiriSuggestedWebsite = 0;
}

- (void)didBeginSectionWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(_WBSSearchFoundationFeedbackGenerator *)self _commitPreviousSectionIfNecessary];
  currentSectionBundleIdentifier = self->_currentSectionBundleIdentifier;
  self->_currentSectionBundleIdentifier = identifierCopy;
}

- (void)didEncounterHiddenSiriSuggestedSite:(id)site hideReason:(int)reason
{
  v4 = *&reason;
  siteCopy = site;
  v8 = objc_alloc_init(MEMORY[0x1E69CA3C0]);
  [v8 setHideReason:v4];
  [siteCopy setSafariAttributes:v8];
  hiddenSiriSuggestedWebsite = self->_hiddenSiriSuggestedWebsite;
  self->_hiddenSiriSuggestedWebsite = siteCopy;
}

- (void)didAddItem:(id)item hidingOutrankedResults:(id)results hidingDuplicateResults:(id)duplicateResults
{
  resultsCopy = results;
  duplicateResultsCopy = duplicateResults;
  sfSearchResultValue = [item sfSearchResultValue];
  v10 = sfSearchResultValue;
  if (sfSearchResultValue)
  {
    v11 = [sfSearchResultValue copy];
    sectionBundleIdentifier = [v10 sectionBundleIdentifier];
    currentSectionBundleIdentifier = sectionBundleIdentifier;
    if (!sectionBundleIdentifier)
    {
      currentSectionBundleIdentifier = self->_currentSectionBundleIdentifier;
    }

    [v11 setSectionBundleIdentifier:currentSectionBundleIdentifier];

    v14 = [resultsCopy safari_mapObjectsUsingBlock:&__block_literal_global_0];
    v15 = [duplicateResultsCopy safari_mapObjectsUsingBlock:&__block_literal_global_93];
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