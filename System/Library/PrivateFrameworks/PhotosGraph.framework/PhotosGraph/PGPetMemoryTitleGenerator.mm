@interface PGPetMemoryTitleGenerator
- (PGPetMemoryTitleGenerator)initWithMomentNodes:(id)nodes type:(int64_t)type titleGenerationContext:(id)context;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGPetMemoryTitleGenerator

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  resultCopy = result;
  if (resultCopy)
  {
    v41 = resultCopy;
    if (self->_useAdventureTitle)
    {
      names = [(PGGraphPetNodeCollection *)self->_petNodes names];
      anyObject = [names anyObject];

      v7 = [anyObject length];
      v8 = MEMORY[0x277CCACA8];
      if (v7)
      {
        v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v10 = [v9 localizedStringForKey:@"PGPetAdventuresMemoryTitleWithNameFormat" value:@"PGPetAdventuresMemoryTitleWithNameFormat" table:@"Localizable"];
        [v8 localizedStringWithFormat:v10, anyObject];
      }

      else
      {
        v9 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"PGPetAdventuresMemoryTitleFormat"];
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v10 localizedStringForKey:v9 value:v9 table:@"Localizable"];
      }
      v21 = ;

      v17 = [PGCommonTitleUtility titleWithLineBreakForTitle:v21];

      if (!v17)
      {
        v20 = 0;
LABEL_34:

        goto LABEL_35;
      }

      title = [PGTitle titleWithString:v17 category:1];
LABEL_17:
      v20 = title;
      goto LABEL_34;
    }

    if (!self->_usePetAndPersonTitle)
    {
      names2 = [(PGGraphPetNodeCollection *)self->_petNodes names];
      anyObject = [names2 anyObject];

      if ([anyObject length])
      {
        v19 = [PGTitle titleWithString:anyObject category:1];
        if (v19)
        {
          v20 = v19;
LABEL_35:

          if ([(NSString *)self->_seasonName length])
          {
            momentNodes = [(PGTitleGenerator *)self momentNodes];
            v37 = [PGSeasonMemoryTitleGenerator seasonSubtitleWithMomentNodes:momentNodes seasonName:self->_seasonName];
          }

          else
          {
            momentNodes = objc_alloc_init(PGTimeTitleOptions);
            momentNodes2 = [(PGTitleGenerator *)self momentNodes];
            [(PGTimeTitleOptions *)momentNodes setMomentNodes:momentNodes2];

            [(PGTimeTitleOptions *)momentNodes setAllowedFormats:20];
            featuredYearNodes = [(PGTitleGenerator *)self featuredYearNodes];
            [(PGTimeTitleOptions *)momentNodes setFeaturedYearNodes:featuredYearNodes];

            v40 = [PGTimeTitleUtility timeTitleWithOptions:momentNodes];
            v37 = [PGTitle titleWithString:v40 category:5];
          }

          v41[2](v41, v20, v37);
          resultCopy = v41;
          goto LABEL_39;
        }
      }

      v23 = [PGSpecBasedTitleGenerator alloc];
      momentNodes3 = [(PGTitleGenerator *)self momentNodes];
      titleGenerationContext = [(PGTitleGenerator *)self titleGenerationContext];
      v17 = [(PGSpecBasedTitleGenerator *)v23 initWithMomentNodes:momentNodes3 memoryCategory:0 subcategory:212 titleGenerationContext:titleGenerationContext];

      title = [(PGSpecBasedTitleGenerator *)v17 title];
      goto LABEL_17;
    }

    v11 = [(MAElementCollection *)self->_personNodeAsCollection count];
    names3 = [(PGGraphPetNodeCollection *)self->_petNodes names];
    v13 = names3;
    if (v11)
    {
      anyObject = [names3 anyObject];

      personNodeAsCollection = [(PGPetMemoryTitleGenerator *)self personNodeAsCollection];
      anyNode = [personNodeAsCollection anyNode];

      if ([anyNode isMeNode])
      {
        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:@"PGPeopleTitleFormatMePerson" value:@"PGPeopleTitleFormatMePerson" table:@"Localizable"];

LABEL_23:
        if ([anyObject length] && -[PGSpecBasedTitleGenerator length](v17, "length"))
        {
          v28 = MEMORY[0x277CCACA8];
          v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v30 = [v29 localizedStringForKey:@"PGPeopleTitleFormatTwoPeopleWithPersonName %@ otherPersonName %@" value:@"PGPeopleTitleFormatTwoPeopleWithPersonName %@ otherPersonName %@" table:@"Localizable"];
          v31 = [v28 localizedStringWithFormat:v30, anyObject, v17];

          v32 = [PGCommonTitleUtility titleWithLineBreakForTitle:v31];

          if (v32)
          {
            v20 = [PGTitle titleWithString:v32 category:1];
            if (v20)
            {
LABEL_33:

              goto LABEL_34;
            }
          }
        }

        else
        {
          v32 = 0;
        }

        v33 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"PGPetAndPersonMemoryTitleFormat"];
        v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v35 = [v34 localizedStringForKey:v33 value:v33 table:@"Localizable"];

        v32 = [PGCommonTitleUtility titleWithLineBreakForTitle:v35];

        if (v32)
        {
          v20 = [PGTitle titleWithString:v32 category:1];
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_33;
      }

      v27 = [PGPeopleTitleUtility nameFromPersonNode:anyNode serviceManager:self->_serviceManager];
    }

    else
    {
      allObjects = [names3 allObjects];
      anyNode = [allObjects sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

      if ([anyNode count] != 2)
      {
        v17 = 0;
        anyObject = 0;
        goto LABEL_23;
      }

      anyObject = [anyNode objectAtIndexedSubscript:0];
      v27 = [anyNode objectAtIndexedSubscript:1];
    }

    v17 = v27;
    goto LABEL_23;
  }

LABEL_39:
}

- (PGPetMemoryTitleGenerator)initWithMomentNodes:(id)nodes type:(int64_t)type titleGenerationContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = PGPetMemoryTitleGenerator;
  v9 = [(PGTitleGenerator *)&v13 initWithMomentNodes:nodes type:type titleGenerationContext:contextCopy];
  if (v9)
  {
    serviceManager = [contextCopy serviceManager];
    serviceManager = v9->_serviceManager;
    v9->_serviceManager = serviceManager;
  }

  return v9;
}

@end