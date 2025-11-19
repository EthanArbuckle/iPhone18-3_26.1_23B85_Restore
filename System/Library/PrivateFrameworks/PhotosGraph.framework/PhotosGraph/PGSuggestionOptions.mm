@interface PGSuggestionOptions
+ (PGSuggestionOptions)suggestionOptionsWithDictionary:(id)a3 subtypes:(id)a4;
- (PGSuggestionOptions)init;
- (PGSuggestionOptions)initWithOptionsDictionary:(id)a3;
- (void)setDefaultStartAndEndDatesIfNeededWithNumberOfDays:(int64_t)a3;
@end

@implementation PGSuggestionOptions

- (void)setDefaultStartAndEndDatesIfNeededWithNumberOfDays:(int64_t)a3
{
  v13 = [(PGSuggestionOptions *)self universalStartDate];
  v5 = [(PGSuggestionOptions *)self universalEndDate];
  if (v5)
  {
    if (v13)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v8 = MEMORY[0x277D27690];
  if (v13)
  {
    v5 = [MEMORY[0x277D27690] dateByAddingDays:a3 toDate:v13];
  }

  else
  {
    v9 = [(PGSuggestionOptions *)self localToday];
    v10 = [v8 startOfDayForDate:v9];

    v11 = MEMORY[0x277D27690];
    v12 = [MEMORY[0x277CBEBB0] defaultTimeZone];
    v5 = [v11 universalDateFromLocalDate:v10 inTimeZone:v12];
  }

  [(PGSuggestionOptions *)self setUniversalEndDate:v5];
  if (!v13)
  {
LABEL_12:
    v13 = [MEMORY[0x277D27690] dateByAddingDays:-a3 toDate:v5];
    [(PGSuggestionOptions *)self setUniversalStartDate:?];
  }

LABEL_3:
  v6 = [(PGSuggestionOptions *)self universalEndDateForWholeLibrarySuggestions];

  if (!v6)
  {
    v7 = [(PGSuggestionOptions *)self universalStartDate];
    [(PGSuggestionOptions *)self setUniversalEndDateForWholeLibrarySuggestions:v7];
  }
}

- (PGSuggestionOptions)initWithOptionsDictionary:(id)a3
{
  v4 = a3;
  v5 = [(PGSuggestionOptions *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B0C0]];
    if (v6)
    {
      objc_storeStrong(&v5->_localToday, v6);
    }

    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B0B0]];
    universalStartDate = v5->_universalStartDate;
    v5->_universalStartDate = v7;

    v9 = *MEMORY[0x277D3B078];
    v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B078]];
    universalEndDate = v5->_universalEndDate;
    v5->_universalEndDate = v10;

    v12 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B070]];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v4 objectForKeyedSubscript:v9];
    }

    universalEndDateForWholeLibrarySuggestions = v5->_universalEndDateForWholeLibrarySuggestions;
    v5->_universalEndDateForWholeLibrarySuggestions = v14;

    v16 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B058]];
    v17 = v16;
    if (v16)
    {
      v5->_allowNotification = [v16 BOOLValue];
    }

    v18 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B088]];
    v5->_ignoreCollisionsWithExistingSuggestions = [v18 BOOLValue];

    v19 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B090]];
    v5->_ignoreCollisionsWithSameBatchSuggestions = [v19 BOOLValue];

    v20 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B060]];
    v5->_computeReasons = [v20 BOOLValue];

    v21 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B0A8]];
    v5->_shouldProcessExistingSuggestions = [v21 BOOLValue];

    v22 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B068]];
    v5->_discardGeneratedSuggestions = [v22 BOOLValue];

    v23 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B0C8]];
    v24 = [v23 integerValue];

    v25 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B0B8]];
    v26 = [v25 integerValue];

    if (v24)
    {
      v27 = [MEMORY[0x277CCAA78] indexSetWithIndex:v24];
      suggestionTypeWhitelist = v5->_suggestionTypeWhitelist;
      v5->_suggestionTypeWhitelist = v27;
    }

    if (v26)
    {
      v29 = [MEMORY[0x277CCAA78] indexSetWithIndex:v26];
      suggestionSubtypeWhitelist = v5->_suggestionSubtypeWhitelist;
      v5->_suggestionSubtypeWhitelist = v29;
    }

    v31 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B0A0]];
    v32 = [v31 unsignedIntegerValue];

    if (v32)
    {
      v5->_maximumNumberOfSuggestions = v32;
    }

    v33 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B050]];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = v33;

    v35 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3B098]];
    v5->_noLimitPerFeature = [v35 BOOLValue];
  }

  return v5;
}

- (PGSuggestionOptions)init
{
  v6.receiver = self;
  v6.super_class = PGSuggestionOptions;
  v2 = [(PGSuggestionOptions *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D27690] currentLocalDate];
    localToday = v2->_localToday;
    v2->_localToday = v3;

    v2->_maximumNumberOfSuggestions = -1;
    v2->_shouldProcessExistingSuggestions = 1;
  }

  return v2;
}

+ (PGSuggestionOptions)suggestionOptionsWithDictionary:(id)a3 subtypes:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [[PGSuggestionOptions alloc] initWithOptionsDictionary:v5];
  }

  else
  {
    v7 = objc_alloc_init(PGSuggestionOptions);
  }

  v8 = v7;
  [(PGSuggestionOptions *)v7 setDefaultStartAndEndDatesIfNeeded];
  [(PGSuggestionOptions *)v8 setIgnoreCollisionsWithExistingSuggestions:1];
  v9 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v9 addIndex:{objc_msgSend(*(*(&v23 + 1) + 8 * i), "unsignedIntValue")}];
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v15 = [(PGSuggestionOptions *)v8 suggestionSubtypeWhitelist];
  if (v15)
  {
    v16 = v15;
    v17 = [(PGSuggestionOptions *)v8 suggestionSubtypeWhitelist];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__PGSuggestionOptions_suggestionOptionsWithDictionary_subtypes___block_invoke;
    v21[3] = &unk_278885578;
    v22 = v9;
    v18 = [v17 indexesPassingTest:v21];
    [(PGSuggestionOptions *)v8 setSuggestionSubtypeWhitelist:v18];
  }

  else
  {
    [(PGSuggestionOptions *)v8 setSuggestionSubtypeWhitelist:v9];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

@end