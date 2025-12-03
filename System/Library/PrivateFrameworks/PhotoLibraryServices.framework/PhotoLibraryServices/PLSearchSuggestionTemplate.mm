@interface PLSearchSuggestionTemplate
- (BOOL)isDateOnlyTemplate;
- (BOOL)isEqual:(id)equal;
- (PLSearchSuggestionTemplate)initWithSuggestionTemplateKey:(id)key firstIndexCategory:(unint64_t)category secondIndexCategory:(unint64_t)indexCategory templateType:(unint64_t)type templateContentType:(unint64_t)contentType templateDateType:(unint64_t)dateType styleType:(unint64_t)styleType identifier:(id)self0;
- (PSIDateFilter)dateFilter;
- (id)_initWithSuggestionTemplateKey:(id)key firstIndexCategory:(unint64_t)category secondIndexCategory:(unint64_t)indexCategory templateType:(unint64_t)type templateContentType:(unint64_t)contentType templateDateType:(unint64_t)dateType styleType:(unint64_t)styleType identifier:(id)self0;
- (id)description;
- (id)initForTestingWithSuggestionTemplateKey:(id)key firstIndexCategory:(unint64_t)category secondIndexCategory:(unint64_t)indexCategory templateType:(unint64_t)type templateContentType:(unint64_t)contentType templateDateType:(unint64_t)dateType styleType:(unint64_t)styleType identifier:(id)self0;
- (unint64_t)hash;
@end

@implementation PLSearchSuggestionTemplate

- (id)initForTestingWithSuggestionTemplateKey:(id)key firstIndexCategory:(unint64_t)category secondIndexCategory:(unint64_t)indexCategory templateType:(unint64_t)type templateContentType:(unint64_t)contentType templateDateType:(unint64_t)dateType styleType:(unint64_t)styleType identifier:(id)self0
{
  keyCopy = key;
  identifierCopy = identifier;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchSuggestionTemplate.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v19 = [(PLSearchSuggestionTemplate *)self _initWithSuggestionTemplateKey:keyCopy firstIndexCategory:category secondIndexCategory:indexCategory templateType:type templateContentType:contentType templateDateType:dateType styleType:styleType identifier:identifierCopy];

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
  dateFilter = [(PLSearchSuggestionTemplate *)self dateFilter];
  identifier = self->_identifier;
  isMeTemplate = [(PLSearchSuggestionTemplate *)self isMeTemplate];
  v17 = @"NO";
  if (isMeTemplate)
  {
    v17 = @"YES";
  }

  v18 = [v3 stringWithFormat:@"Key: %@, templateType: %tu, firstCategory: %@, secondCategory: %@, contentType:%@, dateType: %@, date filter: %@, identifier: %@, isMeTemplate: %@", suggestionTemplateKey, templateType, v6, v7, v10, v13, dateFilter, identifier, v17];

  return v18;
}

- (unint64_t)hash
{
  suggestionTemplateKey = [(PLSearchSuggestionTemplate *)self suggestionTemplateKey];
  v4 = [suggestionTemplateKey hash];
  firstIndexCategory = [(PLSearchSuggestionTemplate *)self firstIndexCategory];
  v6 = firstIndexCategory ^ [(PLSearchSuggestionTemplate *)self secondIndexCategory]^ v4;
  templateType = [(PLSearchSuggestionTemplate *)self templateType];
  v8 = templateType ^ [(PLSearchSuggestionTemplate *)self templateDateType];
  identifier = [(PLSearchSuggestionTemplate *)self identifier];
  v10 = v6 ^ v8 ^ [identifier hash];
  templateContentType = [(PLSearchSuggestionTemplate *)self templateContentType];

  return v10 ^ templateContentType;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      suggestionTemplateKey = [(PLSearchSuggestionTemplate *)self suggestionTemplateKey];
      suggestionTemplateKey2 = [(PLSearchSuggestionTemplate *)v5 suggestionTemplateKey];
      v8 = suggestionTemplateKey2;
      if (suggestionTemplateKey == suggestionTemplateKey2)
      {
      }

      else
      {
        v9 = [suggestionTemplateKey isEqual:suggestionTemplateKey2];

        if ((v9 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      firstIndexCategory = [(PLSearchSuggestionTemplate *)self firstIndexCategory];
      if (firstIndexCategory == [(PLSearchSuggestionTemplate *)v5 firstIndexCategory])
      {
        secondIndexCategory = [(PLSearchSuggestionTemplate *)self secondIndexCategory];
        if (secondIndexCategory == [(PLSearchSuggestionTemplate *)v5 secondIndexCategory])
        {
          templateType = [(PLSearchSuggestionTemplate *)self templateType];
          if (templateType == [(PLSearchSuggestionTemplate *)v5 templateType])
          {
            templateContentType = [(PLSearchSuggestionTemplate *)self templateContentType];
            if (templateContentType == [(PLSearchSuggestionTemplate *)v5 templateContentType])
            {
              templateDateType = [(PLSearchSuggestionTemplate *)self templateDateType];
              if (templateDateType == [(PLSearchSuggestionTemplate *)v5 templateDateType])
              {
                identifier = [(PLSearchSuggestionTemplate *)self identifier];
                identifier2 = [(PLSearchSuggestionTemplate *)v5 identifier];
                if (identifier == identifier2)
                {
                  v10 = 1;
                }

                else
                {
                  v10 = [identifier isEqualToString:identifier2];
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
  templateType = [(PLSearchSuggestionTemplate *)self templateType];
  v4 = [(PLSearchSuggestionTemplate *)self templateType]& 2 | templateType & 1;
  templateDateType = [(PLSearchSuggestionTemplate *)self templateDateType];
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = templateDateType == 0;
  }

  return !v6;
}

- (PSIDateFilter)dateFilter
{
  dateFilter = self->_dateFilter;
  if (!dateFilter)
  {
    templateDateType = [(PLSearchSuggestionTemplate *)self templateDateType];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    date = [MEMORY[0x1E695DF00] date];
    v7 = [PLSearchSuggestionDateUtility dateFilterForSearchSuggestionTemplateDateType:templateDateType calendar:currentCalendar relativeDate:date];
    v8 = self->_dateFilter;
    self->_dateFilter = v7;

    dateFilter = self->_dateFilter;
  }

  return dateFilter;
}

- (id)_initWithSuggestionTemplateKey:(id)key firstIndexCategory:(unint64_t)category secondIndexCategory:(unint64_t)indexCategory templateType:(unint64_t)type templateContentType:(unint64_t)contentType templateDateType:(unint64_t)dateType styleType:(unint64_t)styleType identifier:(id)self0
{
  keyCopy = key;
  identifierCopy = identifier;
  if (!category && (indexCategory || !dateType))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchSuggestionTemplate.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"secondIndexCategory == PLSearchIndexCategoryNone && templateDateType != PLSearchSuggestionDateTemplateCategoryTypeNone"}];
  }

  if (indexCategory | category | dateType)
  {
    v18 = a2;
    v19 = category != 0;
    if (category && indexCategory && dateType)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:v18 object:self file:@"PLSearchSuggestionTemplate.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"templateDateType == PLSearchSuggestionDateTemplateCategoryTypeNone"}];

      [identifierCopy length];
      goto LABEL_11;
    }
  }

  else
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = a2;
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLSearchSuggestionTemplate.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"firstIndexCategory != PLSearchIndexCategoryNone || templateDateType != PLSearchSuggestionDateTemplateCategoryTypeNone"}];

    v19 = category != 0;
  }

  v20 = [identifierCopy length];
  if (!v19 && v20)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:v18 object:self file:@"PLSearchSuggestionTemplate.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"firstIndexCategory != PLSearchIndexCategoryNone"}];
  }

LABEL_11:
  v31.receiver = self;
  v31.super_class = PLSearchSuggestionTemplate;
  v21 = [(PLSearchSuggestionTemplate *)&v31 init];
  v22 = v21;
  if (v21)
  {
    v21->_templateStyleType = styleType;
    v23 = [keyCopy copy];
    suggestionTemplateKey = v22->_suggestionTemplateKey;
    v22->_suggestionTemplateKey = v23;

    v22->_firstIndexCategory = category;
    v22->_secondIndexCategory = indexCategory;
    v22->_templateDateType = dateType;
    v22->_templateType = type;
    v22->_templateContentType = contentType;
    objc_storeStrong(&v22->_identifier, identifier);
  }

  return v22;
}

- (PLSearchSuggestionTemplate)initWithSuggestionTemplateKey:(id)key firstIndexCategory:(unint64_t)category secondIndexCategory:(unint64_t)indexCategory templateType:(unint64_t)type templateContentType:(unint64_t)contentType templateDateType:(unint64_t)dateType styleType:(unint64_t)styleType identifier:(id)self0
{
  v26 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  identifierCopy = identifier;
  if (styleType)
  {
    goto LABEL_2;
  }

  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchSuggestionTemplate.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v20 = PLServicesLocalizedFrameworkString();
  if ([v20 length] && !objc_msgSend(v20, "isEqualToString:", keyCopy))
  {

LABEL_2:
    self = [(PLSearchSuggestionTemplate *)self _initWithSuggestionTemplateKey:keyCopy firstIndexCategory:category secondIndexCategory:indexCategory templateType:type templateContentType:contentType templateDateType:dateType styleType:styleType identifier:identifierCopy];
    selfCopy = self;
    goto LABEL_10;
  }

  v21 = PLSearchBackendInitialSuggestionsGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = keyCopy;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_INFO, "Template for key %@ is not available in the current locale", buf, 0xCu);
  }

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

@end