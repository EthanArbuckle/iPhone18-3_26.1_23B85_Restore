@interface PLSearchSuggestionMeaningUtility
+ (id)_templateKeyPrefixForMeaningTemplateType:(unint64_t)type;
+ (id)generateMeaningBasedTemplateWithMeaningTemplateType:(unint64_t)type meaningTemplateSubType:(unint64_t)subType;
+ (id)meaningIdentifierForMeaningTemplateType:(unint64_t)type;
+ (id)supportedMeaningIdentifiers;
@end

@implementation PLSearchSuggestionMeaningUtility

+ (id)_templateKeyPrefixForMeaningTemplateType:(unint64_t)type
{
  if (type - 1 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7571108 + type - 1);
  }
}

+ (id)generateMeaningBasedTemplateWithMeaningTemplateType:(unint64_t)type meaningTemplateSubType:(unint64_t)subType
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = [PLSearchSuggestionMeaningUtility _templateKeyPrefixForMeaningTemplateType:?];
  v7 = subType - 1;
  if (subType - 1 > 4)
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
  v13 = [PLSearchSuggestionMeaningUtility meaningIdentifierForMeaningTemplateType:type];
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
      typeCopy = type;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Unable to generate scene template for key: %@, scene template type: %tu", buf, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

+ (id)meaningIdentifierForMeaningTemplateType:(unint64_t)type
{
  if (type - 1 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%lu", @"meaning", type + 35, v3];
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