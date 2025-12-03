@interface PLSearchSuggestionSeasonUtility
+ (id)_templateKeySubstringForSeasonTemplateType:(unint64_t)type;
+ (id)generateSeasonBasedTemplateWithSeasonTemplateType:(unint64_t)type seasonTemplateSubType:(unint64_t)subType;
+ (id)seasonIdentifierForSeasonTemplateType:(unint64_t)type;
+ (id)supportedSeasonIdentifiers;
@end

@implementation PLSearchSuggestionSeasonUtility

+ (id)_templateKeySubstringForSeasonTemplateType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E756DB40[type - 1];
  }
}

+ (id)generateSeasonBasedTemplateWithSeasonTemplateType:(unint64_t)type seasonTemplateSubType:(unint64_t)subType
{
  v19 = *MEMORY[0x1E69E9840];
  if (subType == 2)
  {
    v9 = [self _templateKeySubstringForSeasonTemplateType:type];
    v7 = 1104;
    v8 = 1101;
    v6 = @"_YEAR";
  }

  else if (subType == 1)
  {
    v6 = [self _templateKeySubstringForSeasonTemplateType:type];
    v7 = 5;
    v8 = 1104;
    v9 = @"CITY_IN_THE_";
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v9 = 0;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v9, v6];
  v11 = [self seasonIdentifierForSeasonTemplateType:type];
  if (-[__CFString length](v9, "length") && -[__CFString length](v6, "length") && [v11 length])
  {
    v12 = [[PLSearchSuggestionTemplate alloc] initWithSuggestionTemplateKey:v10 firstIndexCategory:v7 secondIndexCategory:v8 templateType:11 templateContentType:2 templateDateType:0 styleType:0 identifier:v11];
  }

  else
  {
    v13 = PLSearchBackendInitialSuggestionsGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = v9;
      v17 = 2048;
      typeCopy = type;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Unable to generate scene template for key: %@, scene template type: %tu", buf, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

+ (id)seasonIdentifierForSeasonTemplateType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%lu", @"season", qword_19C60BE48[type - 1], v3];
  }

  return v5;
}

+ (id)supportedSeasonIdentifiers
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 1; i != 5; ++i)
  {
    v4 = [PLSearchSuggestionSeasonUtility seasonIdentifierForSeasonTemplateType:i];
    if (v4)
    {
      [v2 addObject:v4];
    }
  }

  v5 = [v2 copy];

  return v5;
}

@end