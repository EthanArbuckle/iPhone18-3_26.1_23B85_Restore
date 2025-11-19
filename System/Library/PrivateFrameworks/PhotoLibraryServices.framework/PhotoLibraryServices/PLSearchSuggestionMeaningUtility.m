@interface PLSearchSuggestionMeaningUtility
+ (id)_templateKeyPrefixForMeaningTemplateType:(unint64_t)a3;
+ (id)generateMeaningBasedTemplateWithMeaningTemplateType:(unint64_t)a3 meaningTemplateSubType:(unint64_t)a4;
+ (id)meaningIdentifierForMeaningTemplateType:(unint64_t)a3;
+ (id)supportedMeaningIdentifiers;
@end

@implementation PLSearchSuggestionMeaningUtility

+ (id)_templateKeyPrefixForMeaningTemplateType:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7571108 + a3 - 1);
  }
}

+ (id)generateMeaningBasedTemplateWithMeaningTemplateType:(unint64_t)a3 meaningTemplateSubType:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = [PLSearchSuggestionMeaningUtility _templateKeyPrefixForMeaningTemplateType:?];
  v7 = a4 - 1;
  if (a4 - 1 > 4)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v8 = qword_19C60FB18[v7];
    v9 = qword_19C60FB40[v7];
    v10 = qword_19C60FB68[v7];
    v11 = *(&off_1E75710E0 + v7);
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v6, v11];
  v13 = [PLSearchSuggestionMeaningUtility meaningIdentifierForMeaningTemplateType:a3];
  if ([v6 length] && objc_msgSend(v6, "length") && objc_msgSend(v13, "length"))
  {
    v14 = [[PLSearchSuggestionTemplate alloc] initWithSuggestionTemplateKey:v12 firstIndexCategory:1600 secondIndexCategory:v9 templateType:v10 templateContentType:5 templateDateType:v8 styleType:0 identifier:v13];
  }

  else
  {
    v15 = PLSearchBackendInitialSuggestionsGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = v6;
      v19 = 2048;
      v20 = a3;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Unable to generate scene template for key: %@, scene template type: %tu", buf, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

+ (id)meaningIdentifierForMeaningTemplateType:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%lu", @"meaning", a3 + 35, v3];
  }

  return v5;
}

+ (id)supportedMeaningIdentifiers
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 1; i != 4; ++i)
  {
    v4 = [PLSearchSuggestionMeaningUtility meaningIdentifierForMeaningTemplateType:i];
    if (v4)
    {
      [v2 addObject:v4];
    }
  }

  v5 = [v2 copy];

  return v5;
}

@end