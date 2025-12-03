@interface PGPeopleMemoryTitleGenerator
+ (id)peopleOverTimeTimeTitleOptionsWithMomentNodes:(id)nodes;
- (BOOL)_person:(id)_person isPresentInAnyMomentOfMomentNodes:(id)nodes;
- (PGPeopleMemoryTitleGenerator)initWithMomentNodes:(id)nodes personNodes:(id)personNodes seasonName:(id)name type:(unint64_t)type titleGenerationContext:(id)context;
- (PGPeopleMemoryTitleGenerator)initWithMomentNodes:(id)nodes personNodes:(id)personNodes timeTitleOptions:(id)options type:(unint64_t)type titleGenerationContext:(id)context;
- (id)_birthdayTitleForPeople;
- (id)_timeTitleForEarlyMoments;
- (id)_timeTitleForPeople;
- (id)_titleForChildAndPerson;
- (id)_titleForEarlyMoments;
- (id)_titleForPeople;
- (id)_titleForSocialGroup;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGPeopleMemoryTitleGenerator

- (id)_timeTitleForPeople
{
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  v3 = [PGTimeTitleUtility peopleTimeTitleWithEventNodes:momentNodes];

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
    loggingConnection = [v4 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v17 = [(NSSet *)self->_personNodes count];
      *buf = 134217984;
      v19 = v17;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Trying to create birthday title with %lu people. Choosing any person.", buf, 0xCu);
    }

    anyObject = [(NSSet *)self->_personNodes anyObject];
    if (anyObject)
    {
      v7 = [MEMORY[0x277CBEB98] setWithObject:anyObject];

      v3 = v7;
    }
  }

  titleGenerationContext = [(PGTitleGenerator *)self titleGenerationContext];
  serviceManager = [titleGenerationContext serviceManager];
  v10 = [PGPeopleTitleUtility nameStringForPersonNodes:v3 includeMe:0 insertLineBreaks:1 serviceManager:serviceManager];

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

- (BOOL)_person:(id)_person isPresentInAnyMomentOfMomentNodes:(id)nodes
{
  v19 = *MEMORY[0x277D85DE8];
  _personCopy = _person;
  nodesCopy = nodes;
  v7 = nodesCopy;
  if (_personCopy && [nodesCopy count])
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

          if ([*(*(&v14 + 1) + 8 * i) hasEdgeFromNode:{_personCopy, v14}])
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
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  [v3 setMomentNodes:momentNodes];

  [v3 setAllowedFormats:4];
  [v3 setFilterDates:0];
  featuredYearNodes = [(PGTitleGenerator *)self featuredYearNodes];
  [v3 setFeaturedYearNodes:featuredYearNodes];

  v6 = [PGTimeTitleUtility timeTitleWithOptions:v3];
  v7 = [PGTitle titleWithString:v6 category:5];

  return v7;
}

- (id)_titleForEarlyMoments
{
  v3 = [PGSpecBasedTitleGenerator alloc];
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  personNodes = self->_personNodes;
  titleGenerationContext = [(PGTitleGenerator *)self titleGenerationContext];
  v7 = [(PGSpecBasedTitleGenerator *)v3 initWithMomentNodes:momentNodes personNodes:personNodes memoryCategory:219 subcategory:0 titleGenerationContext:titleGenerationContext];

  title = [(PGSpecBasedTitleGenerator *)v7 title];

  return title;
}

- (id)_titleForChildAndPerson
{
  anyObject = [(NSSet *)self->_personNodes anyObject];
  graph = [anyObject graph];
  v5 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graph];
  anyNode = [v5 anyNode];

  if (anyNode)
  {
    v7 = [(NSSet *)self->_personNodes containsObject:anyNode];
  }

  else
  {
    v7 = 0;
  }

  personNodes = self->_personNodes;
  titleGenerationContext = [(PGTitleGenerator *)self titleGenerationContext];
  serviceManager = [titleGenerationContext serviceManager];
  v11 = [PGPeopleTitleUtility nameStringForPersonNodes:personNodes includeMe:v7 allowUnnamed:1 allowedGroupsFormat:1 insertLineBreaks:1 serviceManager:serviceManager];

  v12 = [PGTitle titleWithString:v11 category:3];

  return v12;
}

- (id)_titleForSocialGroup
{
  anyObject = [(NSSet *)self->_personNodes anyObject];
  graph = [anyObject graph];
  v5 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graph];
  anyNode = [v5 anyNode];

  if (anyNode)
  {
    if ([(NSSet *)self->_personNodes containsObject:anyNode])
    {
      v7 = 1;
    }

    else
    {
      momentNodes = [(PGTitleGenerator *)self momentNodes];
      v7 = [(PGPeopleMemoryTitleGenerator *)self _person:anyNode isPresentInAnyMomentOfMomentNodes:momentNodes];
    }
  }

  else
  {
    v7 = 0;
  }

  personNodes = self->_personNodes;
  titleGenerationContext = [(PGTitleGenerator *)self titleGenerationContext];
  serviceManager = [titleGenerationContext serviceManager];
  v12 = [PGPeopleTitleUtility nameStringForPersonNodes:personNodes includeMe:v7 insertLineBreaks:1 serviceManager:serviceManager];

  v13 = [PGTitle titleWithString:v12 category:3];

  return v13;
}

- (id)_titleForPeople
{
  personNodes = self->_personNodes;
  titleGenerationContext = [(PGTitleGenerator *)self titleGenerationContext];
  serviceManager = [titleGenerationContext serviceManager];
  v5 = [PGPeopleTitleUtility nameStringForPersonNodes:personNodes includeMe:0 insertLineBreaks:1 serviceManager:serviceManager];

  v6 = [PGTitle titleWithString:v5 category:3];

  return v6;
}

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  resultCopy = result;
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

  _titleForEarlyMoments = 0;
  type = self->_type;
  if (type <= 2)
  {
    if (type < 2)
    {
      _titleForPeople = [(PGPeopleMemoryTitleGenerator *)self _titleForPeople];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_22;
      }

      _titleForPeople = [(PGPeopleMemoryTitleGenerator *)self _titleForSocialGroup];
    }

LABEL_16:
    _titleForEarlyMoments = _titleForPeople;
    if (v5)
    {
      goto LABEL_22;
    }

    _timeTitleForPeople = [(PGPeopleMemoryTitleGenerator *)self _timeTitleForPeople];
    goto LABEL_18;
  }

  switch(type)
  {
    case 3:
      _titleForEarlyMoments = [(PGPeopleMemoryTitleGenerator *)self _titleForEarlyMoments];
      if (!v5)
      {
        _timeTitleForPeople = [(PGPeopleMemoryTitleGenerator *)self _timeTitleForEarlyMoments];
LABEL_18:
        v5 = _timeTitleForPeople;
      }

      break;
    case 4:
      _titleForEarlyMoments = [(PGPeopleMemoryTitleGenerator *)self _titleForPeople];
      momentNodes = [(PGTitleGenerator *)self momentNodes];
      v11 = [PGSeasonMemoryTitleGenerator seasonSubtitleWithMomentNodes:momentNodes seasonName:self->_seasonName];

      v5 = v11;
      break;
    case 5:
      _titleForPeople = [(PGPeopleMemoryTitleGenerator *)self _titleForChildAndPerson];
      goto LABEL_16;
    default:
      break;
  }

LABEL_22:
  if (resultCopy)
  {
    resultCopy[2](resultCopy, _titleForEarlyMoments, v5);
  }
}

- (PGPeopleMemoryTitleGenerator)initWithMomentNodes:(id)nodes personNodes:(id)personNodes seasonName:(id)name type:(unint64_t)type titleGenerationContext:(id)context
{
  nameCopy = name;
  v14 = [(PGPeopleMemoryTitleGenerator *)self initWithMomentNodes:nodes personNodes:personNodes type:type titleGenerationContext:context];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_seasonName, name);
  }

  return v15;
}

- (PGPeopleMemoryTitleGenerator)initWithMomentNodes:(id)nodes personNodes:(id)personNodes timeTitleOptions:(id)options type:(unint64_t)type titleGenerationContext:(id)context
{
  personNodesCopy = personNodes;
  optionsCopy = options;
  v19.receiver = self;
  v19.super_class = PGPeopleMemoryTitleGenerator;
  v15 = [(PGTitleGenerator *)&v19 initWithMomentNodes:nodes referenceDateInterval:0 keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:0 titleGenerationContext:context];
  v16 = v15;
  if (v15)
  {
    v15->_type = type;
    objc_storeStrong(&v15->_personNodes, personNodes);
    objc_storeStrong(&v16->_timeTitleOptions, options);
    locale = [(PGTitleGenerator *)v16 locale];
    [(PGTimeTitleOptions *)v16->_timeTitleOptions setLocale:locale];
  }

  return v16;
}

+ (id)peopleOverTimeTimeTitleOptionsWithMomentNodes:(id)nodes
{
  nodesCopy = nodes;
  v4 = objc_alloc_init(PGTimeTitleOptions);
  [(PGTimeTitleOptions *)v4 setMomentNodes:nodesCopy];

  [(PGTimeTitleOptions *)v4 setAllowedFormats:20];
  [(PGTimeTitleOptions *)v4 setUsePeopleSubtitleFormatWithYears:1];
  [(PGTimeTitleOptions *)v4 setFilterDates:0];

  return v4;
}

@end