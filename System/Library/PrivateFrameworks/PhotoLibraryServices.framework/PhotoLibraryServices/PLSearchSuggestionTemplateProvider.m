@interface PLSearchSuggestionTemplateProvider
+ (id)templateForRankedGroup:(id)a3;
- (NSArray)allDateFilters;
- (NSArray)allTemplates;
- (NSArray)allTemplatesKeys;
- (NSArray)dateOnlyTemplates;
- (NSArray)supportedIdentifiers;
- (NSIndexSet)nonIdentifierBasedSupportedSearchEntityTypes;
- (id)_allDateFilters;
- (id)_dateOnlyTemplates;
- (id)dateFilterForSearchSuggestionTemplateDateType:(unint64_t)a3;
- (id)templatesForSearchIndexCategory:(unint64_t)a3 secondIndexCategory:(unint64_t)a4;
@end

@implementation PLSearchSuggestionTemplateProvider

+ (id)templateForRankedGroup:(id)a3
{
  v3 = a3;
  v4 = [v3 group];
  v5 = [v4 category];

  if ([v3 isMePerson])
  {
    v6 = 17;
  }

  else
  {
    v6 = 1;
  }

  if (v5 <= 0x531u)
  {
    if (v5 > 0x44Fu)
    {
      if (v5 == 1104)
      {
        v10 = [v3 group];
        v7 = [v10 lookupIdentifier];

        v6 |= 8uLL;
        v8 = 2;
        goto LABEL_26;
      }

      if (v5 == 1300)
      {
        v7 = 0;
        v8 = 9;
        goto LABEL_26;
      }
    }

    else
    {
      if (v5 - 1100 < 2)
      {
        v7 = 0;
        v8 = 4;
        goto LABEL_26;
      }

      if (v5 == 1103)
      {
        v7 = 0;
        v8 = 3;
        goto LABEL_26;
      }
    }

    goto LABEL_25;
  }

  if (v5 <= 0x63Fu)
  {
    if (v5 == 1330)
    {
      v7 = 0;
      v8 = 7;
      goto LABEL_26;
    }

    if (v5 != 1500)
    {
      goto LABEL_25;
    }

LABEL_18:
    v9 = [v3 group];
    v7 = [v9 lookupIdentifier];

    v6 |= 8uLL;
    v8 = 8;
    goto LABEL_26;
  }

  switch(v5)
  {
    case 0x640u:
      v11 = [v3 group];
      v7 = [v11 lookupIdentifier];

      v6 |= 8uLL;
      v8 = 5;
      goto LABEL_26;
    case 0x64Au:
      v7 = 0;
      v8 = 6;
      goto LABEL_26;
    case 0xA28u:
      goto LABEL_18;
  }

LABEL_25:
  v7 = 0;
  v8 = 1;
LABEL_26:
  v12 = [[PLSearchSuggestionTemplate alloc] initWithSuggestionTemplateKey:0 firstIndexCategory:v5 secondIndexCategory:0 templateType:v6 templateContentType:v8 templateDateType:0 styleType:1 identifier:v7];

  return v12;
}

- (id)_dateOnlyTemplates
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(PLSearchSuggestionTemplateProvider *)self allTemplates];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isDateOnlyTemplate])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)dateFilterForSearchSuggestionTemplateDateType:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [PLSearchSuggestionDateUtility dateFilterForSearchSuggestionTemplateDateType:a3 calendar:v4 relativeDate:v5];

  if (v6)
  {
    v7 = [[PLInitialSuggestionDateFilter alloc] initWithTemplateDateType:a3 psiDateFilter:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_allDateFilters
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = +[PLSearchSuggestionDateUtility allTemplateDateTypes];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__PLSearchSuggestionTemplateProvider__allDateFilters__block_invoke;
  v9[3] = &unk_1E7576388;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateIndexesUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __53__PLSearchSuggestionTemplateProvider__allDateFilters__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) dateFilterForSearchSuggestionTemplateDateType:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) addObject:v3];
    v3 = v4;
  }
}

- (id)templatesForSearchIndexCategory:(unint64_t)a3 secondIndexCategory:(unint64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PLSearchSuggestionTemplateProvider.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"firstIndexCategory != PLSearchIndexCategoryNone"}];

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_27:
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PLSearchSuggestionTemplateProvider.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"secondIndexCategory != PLSearchIndexCategoryNone"}];

    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_27;
  }

LABEL_3:
  v8 = [(PLSearchSuggestionTemplateProvider *)self allTemplates];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v11)
  {
    goto LABEL_23;
  }

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

      v15 = *(*(&v23 + 1) + 8 * i);
      v16 = [v15 templateType];
      if ((~v16 & 3) != 0)
      {
        if ((v16 & 1) != 0 && ([v15 firstIndexCategory] == a3 || objc_msgSend(v15, "firstIndexCategory") == a4))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v17 = [v15 firstIndexCategory] == a3 && objc_msgSend(v15, "secondIndexCategory") == a4;
        v18 = [v15 secondIndexCategory] == a3 && objc_msgSend(v15, "firstIndexCategory") == a4;
        if (v17 || v18)
        {
LABEL_20:
          [v9 addObject:v15];
          continue;
        }
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v12);
LABEL_23:

  v19 = [v9 copy];

  return v19;
}

- (NSArray)allDateFilters
{
  allDateFilters = self->_allDateFilters;
  if (!allDateFilters)
  {
    v4 = [(PLSearchSuggestionTemplateProvider *)self _allDateFilters];
    v5 = self->_allDateFilters;
    self->_allDateFilters = v4;

    allDateFilters = self->_allDateFilters;
  }

  return allDateFilters;
}

- (NSArray)supportedIdentifiers
{
  supportedIdentifiers = self->_supportedIdentifiers;
  if (!supportedIdentifiers)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = +[PLSearchSuggestionSceneUtility supportedSceneIdentifiers];
    [v4 addObjectsFromArray:v5];

    v6 = +[PLSearchSuggestionMeaningUtility supportedMeaningIdentifiers];
    [v4 addObjectsFromArray:v6];

    v7 = +[PLSearchSuggestionSeasonUtility supportedSeasonIdentifiers];
    [v4 addObjectsFromArray:v7];

    v8 = [v4 copy];
    v9 = self->_supportedIdentifiers;
    self->_supportedIdentifiers = v8;

    supportedIdentifiers = self->_supportedIdentifiers;
  }

  return supportedIdentifiers;
}

- (NSIndexSet)nonIdentifierBasedSupportedSearchEntityTypes
{
  v21 = *MEMORY[0x1E69E9840];
  nonIdentifierBasedSupportedSearchEntityTypes = self->_nonIdentifierBasedSupportedSearchEntityTypes;
  if (!nonIdentifierBasedSupportedSearchEntityTypes)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(PLSearchSuggestionTemplateProvider *)self allTemplates];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 identifier];
          v12 = [v11 length];

          if (!v12)
          {
            if ([v10 firstIndexCategory])
            {
              [v4 addIndex:{objc_msgSend(v10, "firstIndexCategory")}];
            }

            if ([v10 secondIndexCategory])
            {
              [v4 addIndex:{objc_msgSend(v10, "secondIndexCategory")}];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v13 = [v4 copy];
    v14 = self->_nonIdentifierBasedSupportedSearchEntityTypes;
    self->_nonIdentifierBasedSupportedSearchEntityTypes = v13;

    nonIdentifierBasedSupportedSearchEntityTypes = self->_nonIdentifierBasedSupportedSearchEntityTypes;
  }

  return nonIdentifierBasedSupportedSearchEntityTypes;
}

- (NSArray)dateOnlyTemplates
{
  dateOnlyTemplates = self->_dateOnlyTemplates;
  if (!dateOnlyTemplates)
  {
    v4 = [(PLSearchSuggestionTemplateProvider *)self _dateOnlyTemplates];
    v5 = self->_dateOnlyTemplates;
    self->_dateOnlyTemplates = v4;

    dateOnlyTemplates = self->_dateOnlyTemplates;
  }

  return dateOnlyTemplates;
}

- (NSArray)allTemplatesKeys
{
  v19 = *MEMORY[0x1E69E9840];
  allTemplatesKeys = self->_allTemplatesKeys;
  if (!allTemplatesKeys)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(PLSearchSuggestionTemplateProvider *)self allTemplates];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * v9) suggestionTemplateKey];
          [v4 addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [v4 copy];
    v12 = self->_allTemplatesKeys;
    self->_allTemplatesKeys = v11;

    allTemplatesKeys = self->_allTemplatesKeys;
  }

  return allTemplatesKeys;
}

- (NSArray)allTemplates
{
  allTemplates = self->_allTemplates;
  if (!allTemplates)
  {
    v4 = +[PLSearchSuggestionTemplateGenerator allTemplates];
    v5 = self->_allTemplates;
    self->_allTemplates = v4;

    allTemplates = self->_allTemplates;
  }

  return allTemplates;
}

@end