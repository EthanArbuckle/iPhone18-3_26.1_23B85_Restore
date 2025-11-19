@interface PLSearchSuggestionTemplate
- (BOOL)isDateOnlyTemplate;
- (BOOL)isEqual:(id)a3;
- (PLSearchSuggestionTemplate)initWithSuggestionTemplateKey:(id)a3 firstIndexCategory:(unint64_t)a4 secondIndexCategory:(unint64_t)a5 templateType:(unint64_t)a6 templateContentType:(unint64_t)a7 templateDateType:(unint64_t)a8 styleType:(unint64_t)a9 identifier:(id)a10;
- (PSIDateFilter)dateFilter;
- (id)_initWithSuggestionTemplateKey:(id)a3 firstIndexCategory:(unint64_t)a4 secondIndexCategory:(unint64_t)a5 templateType:(unint64_t)a6 templateContentType:(unint64_t)a7 templateDateType:(unint64_t)a8 styleType:(unint64_t)a9 identifier:(id)a10;
- (id)description;
- (id)initForTestingWithSuggestionTemplateKey:(id)a3 firstIndexCategory:(unint64_t)a4 secondIndexCategory:(unint64_t)a5 templateType:(unint64_t)a6 templateContentType:(unint64_t)a7 templateDateType:(unint64_t)a8 styleType:(unint64_t)a9 identifier:(id)a10;
- (unint64_t)hash;
@end

@implementation PLSearchSuggestionTemplate

- (id)initForTestingWithSuggestionTemplateKey:(id)a3 firstIndexCategory:(unint64_t)a4 secondIndexCategory:(unint64_t)a5 templateType:(unint64_t)a6 templateContentType:(unint64_t)a7 templateDateType:(unint64_t)a8 styleType:(unint64_t)a9 identifier:(id)a10
{
  v17 = a3;
  v18 = a10;
  if (!v17)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PLSearchSuggestionTemplate.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v19 = [(PLSearchSuggestionTemplate *)self _initWithSuggestionTemplateKey:v17 firstIndexCategory:a4 secondIndexCategory:a5 templateType:a6 templateContentType:a7 templateDateType:a8 styleType:a9 identifier:v18];

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  templateType = self->_templateType;
  suggestionTemplateKey = self->_suggestionTemplateKey;
  v6 = PLDebugStringForSearchIndexCategory(self->_firstIndexCategory);
  v7 = PLDebugStringForSearchIndexCategory(self->_secondIndexCategory);
  v8 = self->_templateContentType - 1;
  if (v8 > 8)
  {
    v9 = @"PLSearchSuggestionTemplateContentTypeNone";
  }

  else
  {
    v9 = off_1E7574CD0[v8];
  }

  v10 = v9;
  v11 = self->_templateDateType - 1;
  if (v11 > 8)
  {
    v12 = @"PLSearchSuggestionDateTemplateCategoryTypeNone";
  }

  else
  {
    v12 = off_1E7564C90[v11];
  }

  v13 = v12;
  v14 = [(PLSearchSuggestionTemplate *)self dateFilter];
  identifier = self->_identifier;
  v16 = [(PLSearchSuggestionTemplate *)self isMeTemplate];
  v17 = @"NO";
  if (v16)
  {
    v17 = @"YES";
  }

  v18 = [v3 stringWithFormat:@"Key: %@, templateType: %tu, firstCategory: %@, secondCategory: %@, contentType:%@, dateType: %@, date filter: %@, identifier: %@, isMeTemplate: %@", suggestionTemplateKey, templateType, v6, v7, v10, v13, v14, identifier, v17];

  return v18;
}

- (unint64_t)hash
{
  v3 = [(PLSearchSuggestionTemplate *)self suggestionTemplateKey];
  v4 = [v3 hash];
  v5 = [(PLSearchSuggestionTemplate *)self firstIndexCategory];
  v6 = v5 ^ [(PLSearchSuggestionTemplate *)self secondIndexCategory]^ v4;
  v7 = [(PLSearchSuggestionTemplate *)self templateType];
  v8 = v7 ^ [(PLSearchSuggestionTemplate *)self templateDateType];
  v9 = [(PLSearchSuggestionTemplate *)self identifier];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(PLSearchSuggestionTemplate *)self templateContentType];

  return v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PLSearchSuggestionTemplate *)self suggestionTemplateKey];
      v7 = [(PLSearchSuggestionTemplate *)v5 suggestionTemplateKey];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [v6 isEqual:v7];

        if ((v9 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v11 = [(PLSearchSuggestionTemplate *)self firstIndexCategory];
      if (v11 == [(PLSearchSuggestionTemplate *)v5 firstIndexCategory])
      {
        v12 = [(PLSearchSuggestionTemplate *)self secondIndexCategory];
        if (v12 == [(PLSearchSuggestionTemplate *)v5 secondIndexCategory])
        {
          v13 = [(PLSearchSuggestionTemplate *)self templateType];
          if (v13 == [(PLSearchSuggestionTemplate *)v5 templateType])
          {
            v14 = [(PLSearchSuggestionTemplate *)self templateContentType];
            if (v14 == [(PLSearchSuggestionTemplate *)v5 templateContentType])
            {
              v15 = [(PLSearchSuggestionTemplate *)self templateDateType];
              if (v15 == [(PLSearchSuggestionTemplate *)v5 templateDateType])
              {
                v16 = [(PLSearchSuggestionTemplate *)self identifier];
                v17 = [(PLSearchSuggestionTemplate *)v5 identifier];
                if (v16 == v17)
                {
                  v10 = 1;
                }

                else
                {
                  v10 = [v16 isEqualToString:v17];
                }

                goto LABEL_17;
              }
            }
          }
        }
      }

LABEL_16:
      v10 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v10 = 0;
  }

LABEL_18:

  return v10;
}

- (BOOL)isDateOnlyTemplate
{
  v3 = [(PLSearchSuggestionTemplate *)self templateType];
  v4 = [(PLSearchSuggestionTemplate *)self templateType]& 2 | v3 & 1;
  v5 = [(PLSearchSuggestionTemplate *)self templateDateType];
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  return !v6;
}

- (PSIDateFilter)dateFilter
{
  dateFilter = self->_dateFilter;
  if (!dateFilter)
  {
    v4 = [(PLSearchSuggestionTemplate *)self templateDateType];
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
    v6 = [MEMORY[0x1E695DF00] date];
    v7 = [PLSearchSuggestionDateUtility dateFilterForSearchSuggestionTemplateDateType:v4 calendar:v5 relativeDate:v6];
    v8 = self->_dateFilter;
    self->_dateFilter = v7;

    dateFilter = self->_dateFilter;
  }

  return dateFilter;
}

- (id)_initWithSuggestionTemplateKey:(id)a3 firstIndexCategory:(unint64_t)a4 secondIndexCategory:(unint64_t)a5 templateType:(unint64_t)a6 templateContentType:(unint64_t)a7 templateDateType:(unint64_t)a8 styleType:(unint64_t)a9 identifier:(id)a10
{
  v16 = a3;
  v17 = a10;
  if (!a4 && (a5 || !a8))
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PLSearchSuggestionTemplate.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"secondIndexCategory == PLSearchIndexCategoryNone && templateDateType != PLSearchSuggestionDateTemplateCategoryTypeNone"}];
  }

  if (a5 | a4 | a8)
  {
    v18 = a2;
    v19 = a4 != 0;
    if (a4 && a5 && a8)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      [v26 handleFailureInMethod:v18 object:self file:@"PLSearchSuggestionTemplate.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"templateDateType == PLSearchSuggestionDateTemplateCategoryTypeNone"}];

      [v17 length];
      goto LABEL_11;
    }
  }

  else
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = a2;
    [v29 handleFailureInMethod:a2 object:self file:@"PLSearchSuggestionTemplate.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"firstIndexCategory != PLSearchIndexCategoryNone || templateDateType != PLSearchSuggestionDateTemplateCategoryTypeNone"}];

    v19 = a4 != 0;
  }

  v20 = [v17 length];
  if (!v19 && v20)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:v18 object:self file:@"PLSearchSuggestionTemplate.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"firstIndexCategory != PLSearchIndexCategoryNone"}];
  }

LABEL_11:
  v31.receiver = self;
  v31.super_class = PLSearchSuggestionTemplate;
  v21 = [(PLSearchSuggestionTemplate *)&v31 init];
  v22 = v21;
  if (v21)
  {
    v21->_templateStyleType = a9;
    v23 = [v16 copy];
    suggestionTemplateKey = v22->_suggestionTemplateKey;
    v22->_suggestionTemplateKey = v23;

    v22->_firstIndexCategory = a4;
    v22->_secondIndexCategory = a5;
    v22->_templateDateType = a8;
    v22->_templateType = a6;
    v22->_templateContentType = a7;
    objc_storeStrong(&v22->_identifier, a10);
  }

  return v22;
}

- (PLSearchSuggestionTemplate)initWithSuggestionTemplateKey:(id)a3 firstIndexCategory:(unint64_t)a4 secondIndexCategory:(unint64_t)a5 templateType:(unint64_t)a6 templateContentType:(unint64_t)a7 templateDateType:(unint64_t)a8 styleType:(unint64_t)a9 identifier:(id)a10
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a10;
  if (a9)
  {
    goto LABEL_2;
  }

  if (!v17)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PLSearchSuggestionTemplate.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v20 = PLServicesLocalizedFrameworkString();
  if ([v20 length] && !objc_msgSend(v20, "isEqualToString:", v17))
  {

LABEL_2:
    self = [(PLSearchSuggestionTemplate *)self _initWithSuggestionTemplateKey:v17 firstIndexCategory:a4 secondIndexCategory:a5 templateType:a6 templateContentType:a7 templateDateType:a8 styleType:a9 identifier:v18];
    v19 = self;
    goto LABEL_10;
  }

  v21 = PLSearchBackendInitialSuggestionsGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v17;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_INFO, "Template for key %@ is not available in the current locale", buf, 0xCu);
  }

  v19 = 0;
LABEL_10:

  return v19;
}

@end