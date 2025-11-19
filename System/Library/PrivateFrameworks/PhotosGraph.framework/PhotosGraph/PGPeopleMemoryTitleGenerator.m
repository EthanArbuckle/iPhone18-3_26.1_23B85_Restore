@interface PGPeopleMemoryTitleGenerator
+ (id)peopleOverTimeTimeTitleOptionsWithMomentNodes:(id)a3;
- (BOOL)_person:(id)a3 isPresentInAnyMomentOfMomentNodes:(id)a4;
- (PGPeopleMemoryTitleGenerator)initWithMomentNodes:(id)a3 personNodes:(id)a4 seasonName:(id)a5 type:(unint64_t)a6 titleGenerationContext:(id)a7;
- (PGPeopleMemoryTitleGenerator)initWithMomentNodes:(id)a3 personNodes:(id)a4 timeTitleOptions:(id)a5 type:(unint64_t)a6 titleGenerationContext:(id)a7;
- (id)_birthdayTitleForPeople;
- (id)_timeTitleForEarlyMoments;
- (id)_timeTitleForPeople;
- (id)_titleForChildAndPerson;
- (id)_titleForEarlyMoments;
- (id)_titleForPeople;
- (id)_titleForSocialGroup;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGPeopleMemoryTitleGenerator

- (id)_timeTitleForPeople
{
  v2 = [(PGTitleGenerator *)self momentNodes];
  v3 = [PGTimeTitleUtility peopleTimeTitleWithEventNodes:v2];

  v4 = [PGTitle titleWithString:v3 category:5];

  return v4;
}

- (id)_birthdayTitleForPeople
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = self->_personNodes;
  if ([(NSSet *)self->_personNodes count]!= 1)
  {
    v4 = +[PGLogging sharedLogging];
    v5 = [v4 loggingConnection];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v17 = [(NSSet *)self->_personNodes count];
      *buf = 134217984;
      v19 = v17;
      _os_log_error_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_ERROR, "Trying to create birthday title with %lu people. Choosing any person.", buf, 0xCu);
    }

    v6 = [(NSSet *)self->_personNodes anyObject];
    if (v6)
    {
      v7 = [MEMORY[0x277CBEB98] setWithObject:v6];

      v3 = v7;
    }
  }

  v8 = [(PGTitleGenerator *)self titleGenerationContext];
  v9 = [v8 serviceManager];
  v10 = [PGPeopleTitleUtility nameStringForPersonNodes:v3 includeMe:0 insertLineBreaks:1 serviceManager:v9];

  if (v10 && [v10 length])
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"PGPeopleBirthdayTitleFormatWithName %@" value:@"PGPeopleBirthdayTitleFormatWithName %@" table:@"Localizable"];
    v14 = [v11 localizedStringWithFormat:v13, v10];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)_person:(id)a3 isPresentInAnyMomentOfMomentNodes:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && [v6 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v14 + 1) + 8 * i) hasEdgeFromNode:{v5, v14}])
          {
            LOBYTE(v9) = 1;
            goto LABEL_14;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_timeTitleForEarlyMoments
{
  v3 = objc_opt_new();
  v4 = [(PGTitleGenerator *)self momentNodes];
  [v3 setMomentNodes:v4];

  [v3 setAllowedFormats:4];
  [v3 setFilterDates:0];
  v5 = [(PGTitleGenerator *)self featuredYearNodes];
  [v3 setFeaturedYearNodes:v5];

  v6 = [PGTimeTitleUtility timeTitleWithOptions:v3];
  v7 = [PGTitle titleWithString:v6 category:5];

  return v7;
}

- (id)_titleForEarlyMoments
{
  v3 = [PGSpecBasedTitleGenerator alloc];
  v4 = [(PGTitleGenerator *)self momentNodes];
  personNodes = self->_personNodes;
  v6 = [(PGTitleGenerator *)self titleGenerationContext];
  v7 = [(PGSpecBasedTitleGenerator *)v3 initWithMomentNodes:v4 personNodes:personNodes memoryCategory:219 subcategory:0 titleGenerationContext:v6];

  v8 = [(PGSpecBasedTitleGenerator *)v7 title];

  return v8;
}

- (id)_titleForChildAndPerson
{
  v3 = [(NSSet *)self->_personNodes anyObject];
  v4 = [v3 graph];
  v5 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v4];
  v6 = [v5 anyNode];

  if (v6)
  {
    v7 = [(NSSet *)self->_personNodes containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  personNodes = self->_personNodes;
  v9 = [(PGTitleGenerator *)self titleGenerationContext];
  v10 = [v9 serviceManager];
  v11 = [PGPeopleTitleUtility nameStringForPersonNodes:personNodes includeMe:v7 allowUnnamed:1 allowedGroupsFormat:1 insertLineBreaks:1 serviceManager:v10];

  v12 = [PGTitle titleWithString:v11 category:3];

  return v12;
}

- (id)_titleForSocialGroup
{
  v3 = [(NSSet *)self->_personNodes anyObject];
  v4 = [v3 graph];
  v5 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v4];
  v6 = [v5 anyNode];

  if (v6)
  {
    if ([(NSSet *)self->_personNodes containsObject:v6])
    {
      v7 = 1;
    }

    else
    {
      v8 = [(PGTitleGenerator *)self momentNodes];
      v7 = [(PGPeopleMemoryTitleGenerator *)self _person:v6 isPresentInAnyMomentOfMomentNodes:v8];
    }
  }

  else
  {
    v7 = 0;
  }

  personNodes = self->_personNodes;
  v10 = [(PGTitleGenerator *)self titleGenerationContext];
  v11 = [v10 serviceManager];
  v12 = [PGPeopleTitleUtility nameStringForPersonNodes:personNodes includeMe:v7 insertLineBreaks:1 serviceManager:v11];

  v13 = [PGTitle titleWithString:v12 category:3];

  return v13;
}

- (id)_titleForPeople
{
  personNodes = self->_personNodes;
  v3 = [(PGTitleGenerator *)self titleGenerationContext];
  v4 = [v3 serviceManager];
  v5 = [PGPeopleTitleUtility nameStringForPersonNodes:personNodes includeMe:0 insertLineBreaks:1 serviceManager:v4];

  v6 = [PGTitle titleWithString:v5 category:3];

  return v6;
}

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v12 = a3;
  if (self->_timeTitleOptions)
  {
    v4 = [PGTimeTitleUtility timeTitleWithOptions:?];
    if (v4)
    {
      v5 = [PGTitle titleWithString:v4 category:5];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
  type = self->_type;
  if (type <= 2)
  {
    if (type < 2)
    {
      v8 = [(PGPeopleMemoryTitleGenerator *)self _titleForPeople];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_22;
      }

      v8 = [(PGPeopleMemoryTitleGenerator *)self _titleForSocialGroup];
    }

LABEL_16:
    v6 = v8;
    if (v5)
    {
      goto LABEL_22;
    }

    v9 = [(PGPeopleMemoryTitleGenerator *)self _timeTitleForPeople];
    goto LABEL_18;
  }

  switch(type)
  {
    case 3:
      v6 = [(PGPeopleMemoryTitleGenerator *)self _titleForEarlyMoments];
      if (!v5)
      {
        v9 = [(PGPeopleMemoryTitleGenerator *)self _timeTitleForEarlyMoments];
LABEL_18:
        v5 = v9;
      }

      break;
    case 4:
      v6 = [(PGPeopleMemoryTitleGenerator *)self _titleForPeople];
      v10 = [(PGTitleGenerator *)self momentNodes];
      v11 = [PGSeasonMemoryTitleGenerator seasonSubtitleWithMomentNodes:v10 seasonName:self->_seasonName];

      v5 = v11;
      break;
    case 5:
      v8 = [(PGPeopleMemoryTitleGenerator *)self _titleForChildAndPerson];
      goto LABEL_16;
    default:
      break;
  }

LABEL_22:
  if (v12)
  {
    v12[2](v12, v6, v5);
  }
}

- (PGPeopleMemoryTitleGenerator)initWithMomentNodes:(id)a3 personNodes:(id)a4 seasonName:(id)a5 type:(unint64_t)a6 titleGenerationContext:(id)a7
{
  v13 = a5;
  v14 = [(PGPeopleMemoryTitleGenerator *)self initWithMomentNodes:a3 personNodes:a4 type:a6 titleGenerationContext:a7];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_seasonName, a5);
  }

  return v15;
}

- (PGPeopleMemoryTitleGenerator)initWithMomentNodes:(id)a3 personNodes:(id)a4 timeTitleOptions:(id)a5 type:(unint64_t)a6 titleGenerationContext:(id)a7
{
  v13 = a4;
  v14 = a5;
  v19.receiver = self;
  v19.super_class = PGPeopleMemoryTitleGenerator;
  v15 = [(PGTitleGenerator *)&v19 initWithMomentNodes:a3 referenceDateInterval:0 keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:0 titleGenerationContext:a7];
  v16 = v15;
  if (v15)
  {
    v15->_type = a6;
    objc_storeStrong(&v15->_personNodes, a4);
    objc_storeStrong(&v16->_timeTitleOptions, a5);
    v17 = [(PGTitleGenerator *)v16 locale];
    [(PGTimeTitleOptions *)v16->_timeTitleOptions setLocale:v17];
  }

  return v16;
}

+ (id)peopleOverTimeTimeTitleOptionsWithMomentNodes:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PGTimeTitleOptions);
  [(PGTimeTitleOptions *)v4 setMomentNodes:v3];

  [(PGTimeTitleOptions *)v4 setAllowedFormats:20];
  [(PGTimeTitleOptions *)v4 setUsePeopleSubtitleFormatWithYears:1];
  [(PGTimeTitleOptions *)v4 setFilterDates:0];

  return v4;
}

@end