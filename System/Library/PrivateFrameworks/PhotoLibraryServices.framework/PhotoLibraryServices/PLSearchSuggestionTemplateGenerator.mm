@interface PLSearchSuggestionTemplateGenerator
+ (id)allAtTheSceneTemplates;
+ (id)allDateTemplates;
+ (id)allHolidayTemplates;
+ (id)allMeaningTemplates;
+ (id)allMiscellaneousTemplates;
+ (id)allPersonTemplates;
+ (id)allPetTemplates;
+ (id)allSceneTemplates;
+ (id)allSeasonTemplates;
+ (id)allTemplates;
+ (id)allTripTemplates;
@end

@implementation PLSearchSuggestionTemplateGenerator

+ (id)allMeaningTemplates
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 1; i != 4; ++i)
  {
    for (j = 1; j != 6; ++j)
    {
      v5 = [PLSearchSuggestionMeaningUtility generateMeaningBasedTemplateWithMeaningTemplateType:i meaningTemplateSubType:j];
      if (v5)
      {
        [v2 addObject:v5];
      }
    }
  }

  v6 = [v2 copy];

  return v6;
}

+ (id)allTripTemplates
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [[PLSearchSuggestionTemplate alloc] initWithSuggestionTemplateKey:@"TRIPS_IN_YEAR" firstIndexCategory:1610 secondIndexCategory:1101 templateType:3 templateContentType:6 templateDateType:0 styleType:0 identifier:0];
  if (v3)
  {
    [v2 addObject:v3];
  }

  v4 = [v2 copy];

  return v4;
}

+ (id)allDateTemplates
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 1; i != 10; ++i)
  {
    if (i != 4 && (i & 0xE) != 2)
    {
      v4 = [PLSearchSuggestionDateUtility templateKeyForDateTemplateType:i];
      v5 = [[PLSearchSuggestionTemplate alloc] initWithSuggestionTemplateKey:v4 firstIndexCategory:0 secondIndexCategory:0 templateType:4 templateContentType:4 templateDateType:i styleType:0 identifier:0];
      if (v5)
      {
        [v2 addObject:v5];
      }
    }
  }

  v6 = [v2 copy];

  return v6;
}

+ (id)allMiscellaneousTemplates
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [v2 copy];

  return v3;
}

+ (id)allSeasonTemplates
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 1; i != 5; ++i)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v4;
      v7 = [PLSearchSuggestionSeasonUtility generateSeasonBasedTemplateWithSeasonTemplateType:i seasonTemplateSubType:v5];
      if (v7)
      {
        [v2 addObject:v7];
      }

      v4 = 1;
      v5 = 2;
    }

    while ((v6 & 1) == 0);
  }

  v8 = [v2 copy];

  return v8;
}

+ (id)allHolidayTemplates
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 0; i != 3; ++i)
  {
    v4 = [[PLSearchSuggestionTemplate alloc] initWithSuggestionTemplateKey:off_1E756BCC8[i] firstIndexCategory:1103 secondIndexCategory:qword_19C60BB98[i] templateType:qword_19C60BB68[i] templateContentType:3 templateDateType:qword_19C60BB80[i] styleType:0 identifier:0];
    if (v4)
    {
      [v2 addObject:v4];
    }
  }

  v5 = [v2 copy];

  return v5;
}

+ (id)allAtTheSceneTemplates
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 1; i != 5; ++i)
  {
    for (j = 0; j != 6; ++j)
    {
      v5 = [PLSearchSuggestionSceneUtility generateAtTheSceneBasedTemplateWithAtTheSceneTemplateType:i sceneTemplateSubType:j];
      if (v5)
      {
        [v2 addObject:v5];
      }
    }
  }

  v6 = [v2 copy];

  return v6;
}

+ (id)allSceneTemplates
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 1; i != 48; ++i)
  {
    for (j = 1; j != 6; ++j)
    {
      v5 = [PLSearchSuggestionSceneUtility generateSceneBasedTemplateWithSceneTemplateType:i sceneTemplateSubType:j];
      if (v5)
      {
        [v2 addObject:v5];
      }
    }
  }

  v6 = [v2 copy];

  return v6;
}

+ (id)allPetTemplates
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 0; i != 3; ++i)
  {
    v4 = [[PLSearchSuggestionTemplate alloc] initWithSuggestionTemplateKey:off_1E756BCB0[i] firstIndexCategory:qword_19C60BB38[i] secondIndexCategory:qword_19C60BB50[i] templateType:qword_19C60BB20[i] templateContentType:7 templateDateType:0 styleType:0 identifier:0];
    if (v4)
    {
      [v2 addObject:v4];
    }
  }

  v5 = [v2 copy];

  return v5;
}

+ (id)allPersonTemplates
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 0; i != 10; ++i)
  {
    v4 = [[PLSearchSuggestionTemplate alloc] initWithSuggestionTemplateKey:off_1E756BC60[i] firstIndexCategory:qword_19C60BA80[i] secondIndexCategory:qword_19C60BAD0[i] templateType:qword_19C60B9E0[i] templateContentType:9 templateDateType:qword_19C60BA30[i] styleType:0 identifier:0];
    if (v4)
    {
      [v2 addObject:v4];
    }
  }

  v5 = [v2 copy];

  return v5;
}

+ (id)allTemplates
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  allPersonTemplates = [self allPersonTemplates];
  [v3 addObjectsFromArray:allPersonTemplates];
  allPetTemplates = [self allPetTemplates];
  [v3 addObjectsFromArray:allPetTemplates];
  allSceneTemplates = [self allSceneTemplates];
  [v3 addObjectsFromArray:allSceneTemplates];
  allHolidayTemplates = [self allHolidayTemplates];
  [v3 addObjectsFromArray:allHolidayTemplates];
  allSeasonTemplates = [self allSeasonTemplates];
  [v3 addObjectsFromArray:allSeasonTemplates];
  allMiscellaneousTemplates = [self allMiscellaneousTemplates];
  [v3 addObjectsFromArray:allMiscellaneousTemplates];
  allDateTemplates = [self allDateTemplates];
  [v3 addObjectsFromArray:allDateTemplates];
  allMeaningTemplates = [self allMeaningTemplates];
  [v3 addObjectsFromArray:allMeaningTemplates];
  allTripTemplates = [self allTripTemplates];
  [v3 addObjectsFromArray:allTripTemplates];
  allAtTheSceneTemplates = [self allAtTheSceneTemplates];
  [v3 addObjectsFromArray:allAtTheSceneTemplates];
  v12 = [v3 copy];

  return v12;
}

@end