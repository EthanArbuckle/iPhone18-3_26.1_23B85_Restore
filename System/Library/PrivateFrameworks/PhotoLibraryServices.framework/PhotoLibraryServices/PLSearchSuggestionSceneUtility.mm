@interface PLSearchSuggestionSceneUtility
+ (id)_templateKeyPrefixForSceneTemplateType:(unint64_t)type;
+ (id)_templateSceneKeyForAtTheSceneTemplateType:(unint64_t)type;
+ (id)generateAtTheSceneBasedTemplateWithAtTheSceneTemplateType:(unint64_t)type sceneTemplateSubType:(unint64_t)subType;
+ (id)generateSceneBasedTemplateWithSceneTemplateType:(unint64_t)type sceneTemplateSubType:(unint64_t)subType;
+ (id)sceneIdentifierForAtTheSceneTemplateType:(unint64_t)type;
+ (id)sceneIdentifierForSceneTemplateType:(unint64_t)type;
+ (id)supportedSceneIdentifiers;
@end

@implementation PLSearchSuggestionSceneUtility

+ (id)_templateSceneKeyForAtTheSceneTemplateType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E756F8E8[type - 1];
  }
}

+ (id)_templateKeyPrefixForSceneTemplateType:(unint64_t)type
{
  if (type - 1 > 0x2E)
  {
    return 0;
  }

  else
  {
    return off_1E756F770[type - 1];
  }
}

+ (id)generateAtTheSceneBasedTemplateWithAtTheSceneTemplateType:(unint64_t)type sceneTemplateSubType:(unint64_t)subType
{
  v20 = *MEMORY[0x1E69E9840];
  if (subType > 5)
  {
    v6 = 0;
    v7 = 0;
    v9 = 0;
    v11 = 0;
  }

  else
  {
    v5 = off_1E756F740[subType];
    v6 = qword_19C60F9F8[subType];
    v7 = qword_19C60FA28[subType];
    v8 = MEMORY[0x1E696AEC0];
    v9 = qword_19C60FA58[subType];
    v10 = [PLSearchSuggestionSceneUtility _templateSceneKeyForAtTheSceneTemplateType:type];
    v11 = [v8 stringWithFormat:v5, v10];
  }

  v12 = [PLSearchSuggestionSceneUtility sceneIdentifierForAtTheSceneTemplateType:type];
  if ([v12 length])
  {
    v13 = [[PLSearchSuggestionTemplate alloc] initWithSuggestionTemplateKey:v11 firstIndexCategory:1500 secondIndexCategory:v7 templateType:v9 templateContentType:8 templateDateType:v6 styleType:0 identifier:v12];
  }

  else
  {
    v14 = PLSearchBackendInitialSuggestionsGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = v11;
      v18 = 2048;
      typeCopy = type;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Unable to generate scene template for key: %@, at the scene template type: %tu", buf, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

+ (id)generateSceneBasedTemplateWithSceneTemplateType:(unint64_t)type sceneTemplateSubType:(unint64_t)subType
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = subType - 1;
  if (subType - 1 > 4)
  {
    v7 = 0;
    v8 = 0;
    v10 = 0;
    v12 = 0;
  }

  else
  {
    v6 = off_1E756F718[v5];
    v7 = qword_19C60FB18[v5];
    v8 = qword_19C60FB40[v5];
    v9 = MEMORY[0x1E696AEC0];
    v10 = qword_19C60FB68[v5];
    v11 = [PLSearchSuggestionSceneUtility _templateKeyPrefixForSceneTemplateType:type];
    v12 = [v9 stringWithFormat:v6, v11];
  }

  v13 = [PLSearchSuggestionSceneUtility sceneIdentifierForSceneTemplateType:type];
  if ([v13 length])
  {
    v14 = [[PLSearchSuggestionTemplate alloc] initWithSuggestionTemplateKey:v12 firstIndexCategory:1500 secondIndexCategory:v8 templateType:v10 templateContentType:8 templateDateType:v7 styleType:0 identifier:v13];
  }

  else
  {
    v15 = PLSearchBackendInitialSuggestionsGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = v12;
      v19 = 2048;
      typeCopy = type;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Unable to generate scene template for key: %@, scene template type: %tu", buf, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

+ (id)sceneIdentifierForAtTheSceneTemplateType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%llu", @"scene", qword_19C60F9D8[type - 1], v3];
  }

  return v5;
}

+ (id)sceneIdentifierForSceneTemplateType:(unint64_t)type
{
  if (type - 1 > 0x2E)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%llu", @"scene", qword_19C60F860[type - 1], v3];
  }

  return v5;
}

+ (id)supportedSceneIdentifiers
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 1; i != 48; ++i)
  {
    v4 = [PLSearchSuggestionSceneUtility sceneIdentifierForSceneTemplateType:i];
    if (v4)
    {
      [v2 addObject:v4];
    }
  }

  v5 = [v2 copy];

  return v5;
}

@end