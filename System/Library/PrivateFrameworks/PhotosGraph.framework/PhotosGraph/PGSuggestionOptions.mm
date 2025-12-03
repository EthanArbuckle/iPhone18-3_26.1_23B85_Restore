@interface PGSuggestionOptions
+ (PGSuggestionOptions)suggestionOptionsWithDictionary:(id)dictionary subtypes:(id)subtypes;
- (PGSuggestionOptions)init;
- (PGSuggestionOptions)initWithOptionsDictionary:(id)dictionary;
- (void)setDefaultStartAndEndDatesIfNeededWithNumberOfDays:(int64_t)days;
@end

@implementation PGSuggestionOptions

- (void)setDefaultStartAndEndDatesIfNeededWithNumberOfDays:(int64_t)days
{
  universalStartDate = [(PGSuggestionOptions *)self universalStartDate];
  universalEndDate = [(PGSuggestionOptions *)self universalEndDate];
  if (universalEndDate)
  {
    if (universalStartDate)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v8 = MEMORY[0x277D27690];
  if (universalStartDate)
  {
    universalEndDate = [MEMORY[0x277D27690] dateByAddingDays:days toDate:universalStartDate];
  }

  else
  {
    localToday = [(PGSuggestionOptions *)self localToday];
    v10 = [v8 startOfDayForDate:localToday];

    v11 = MEMORY[0x277D27690];
    defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
    universalEndDate = [v11 universalDateFromLocalDate:v10 inTimeZone:defaultTimeZone];
  }

  [(PGSuggestionOptions *)self setUniversalEndDate:universalEndDate];
  if (!universalStartDate)
  {
LABEL_12:
    universalStartDate = [MEMORY[0x277D27690] dateByAddingDays:-days toDate:universalEndDate];
    [(PGSuggestionOptions *)self setUniversalStartDate:?];
  }

LABEL_3:
  universalEndDateForWholeLibrarySuggestions = [(PGSuggestionOptions *)self universalEndDateForWholeLibrarySuggestions];

  if (!universalEndDateForWholeLibrarySuggestions)
  {
    universalStartDate2 = [(PGSuggestionOptions *)self universalStartDate];
    [(PGSuggestionOptions *)self setUniversalEndDateForWholeLibrarySuggestions:universalStartDate2];
  }
}

- (PGSuggestionOptions)initWithOptionsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(PGSuggestionOptions *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B0C0]];
    if (v6)
    {
      objc_storeStrong(&v5->_localToday, v6);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B0B0]];
    universalStartDate = v5->_universalStartDate;
    v5->_universalStartDate = v7;

    v9 = *MEMORY[0x277D3B078];
    v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B078]];
    universalEndDate = v5->_universalEndDate;
    v5->_universalEndDate = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B070]];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [dictionaryCopy objectForKeyedSubscript:v9];
    }

    universalEndDateForWholeLibrarySuggestions = v5->_universalEndDateForWholeLibrarySuggestions;
    v5->_universalEndDateForWholeLibrarySuggestions = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B058]];
    v17 = v16;
    if (v16)
    {
      v5->_allowNotification = [v16 BOOLValue];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B088]];
    v5->_ignoreCollisionsWithExistingSuggestions = [v18 BOOLValue];

    v19 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B090]];
    v5->_ignoreCollisionsWithSameBatchSuggestions = [v19 BOOLValue];

    v20 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B060]];
    v5->_computeReasons = [v20 BOOLValue];

    v21 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B0A8]];
    v5->_shouldProcessExistingSuggestions = [v21 BOOLValue];

    v22 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B068]];
    v5->_discardGeneratedSuggestions = [v22 BOOLValue];

    v23 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B0C8]];
    integerValue = [v23 integerValue];

    v25 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B0B8]];
    integerValue2 = [v25 integerValue];

    if (integerValue)
    {
      v27 = [MEMORY[0x277CCAA78] indexSetWithIndex:integerValue];
      suggestionTypeWhitelist = v5->_suggestionTypeWhitelist;
      v5->_suggestionTypeWhitelist = v27;
    }

    if (integerValue2)
    {
      v29 = [MEMORY[0x277CCAA78] indexSetWithIndex:integerValue2];
      suggestionSubtypeWhitelist = v5->_suggestionSubtypeWhitelist;
      v5->_suggestionSubtypeWhitelist = v29;
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B0A0]];
    unsignedIntegerValue = [v31 unsignedIntegerValue];

    if (unsignedIntegerValue)
    {
      v5->_maximumNumberOfSuggestions = unsignedIntegerValue;
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B050]];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = v33;

    v35 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B098]];
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
    currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
    localToday = v2->_localToday;
    v2->_localToday = currentLocalDate;

    v2->_maximumNumberOfSuggestions = -1;
    v2->_shouldProcessExistingSuggestions = 1;
  }

  return v2;
}

+ (PGSuggestionOptions)suggestionOptionsWithDictionary:(id)dictionary subtypes:(id)subtypes
{
  v28 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  subtypesCopy = subtypes;
  if (dictionaryCopy)
  {
    v7 = [[PGSuggestionOptions alloc] initWithOptionsDictionary:dictionaryCopy];
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
  v10 = subtypesCopy;
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

  suggestionSubtypeWhitelist = [(PGSuggestionOptions *)v8 suggestionSubtypeWhitelist];
  if (suggestionSubtypeWhitelist)
  {
    v16 = suggestionSubtypeWhitelist;
    suggestionSubtypeWhitelist2 = [(PGSuggestionOptions *)v8 suggestionSubtypeWhitelist];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__PGSuggestionOptions_suggestionOptionsWithDictionary_subtypes___block_invoke;
    v21[3] = &unk_278885578;
    v22 = v9;
    v18 = [suggestionSubtypeWhitelist2 indexesPassingTest:v21];
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