@interface PGPetMemoryTitleGenerator
- (PGPetMemoryTitleGenerator)initWithMomentNodes:(id)a3 type:(int64_t)a4 titleGenerationContext:(id)a5;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGPetMemoryTitleGenerator

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v41 = v4;
    if (self->_useAdventureTitle)
    {
      v5 = [(PGGraphPetNodeCollection *)self->_petNodes names];
      v6 = [v5 anyObject];

      v7 = [v6 length];
      v8 = MEMORY[0x277CCACA8];
      if (v7)
      {
        v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v10 = [v9 localizedStringForKey:@"PGPetAdventuresMemoryTitleWithNameFormat" value:@"PGPetAdventuresMemoryTitleWithNameFormat" table:@"Localizable"];
        [v8 localizedStringWithFormat:v10, v6];
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

      v22 = [PGTitle titleWithString:v17 category:1];
LABEL_17:
      v20 = v22;
      goto LABEL_34;
    }

    if (!self->_usePetAndPersonTitle)
    {
      v18 = [(PGGraphPetNodeCollection *)self->_petNodes names];
      v6 = [v18 anyObject];

      if ([v6 length])
      {
        v19 = [PGTitle titleWithString:v6 category:1];
        if (v19)
        {
          v20 = v19;
LABEL_35:

          if ([(NSString *)self->_seasonName length])
          {
            v36 = [(PGTitleGenerator *)self momentNodes];
            v37 = [PGSeasonMemoryTitleGenerator seasonSubtitleWithMomentNodes:v36 seasonName:self->_seasonName];
          }

          else
          {
            v36 = objc_alloc_init(PGTimeTitleOptions);
            v38 = [(PGTitleGenerator *)self momentNodes];
            [(PGTimeTitleOptions *)v36 setMomentNodes:v38];

            [(PGTimeTitleOptions *)v36 setAllowedFormats:20];
            v39 = [(PGTitleGenerator *)self featuredYearNodes];
            [(PGTimeTitleOptions *)v36 setFeaturedYearNodes:v39];

            v40 = [PGTimeTitleUtility timeTitleWithOptions:v36];
            v37 = [PGTitle titleWithString:v40 category:5];
          }

          v41[2](v41, v20, v37);
          v4 = v41;
          goto LABEL_39;
        }
      }

      v23 = [PGSpecBasedTitleGenerator alloc];
      v24 = [(PGTitleGenerator *)self momentNodes];
      v25 = [(PGTitleGenerator *)self titleGenerationContext];
      v17 = [(PGSpecBasedTitleGenerator *)v23 initWithMomentNodes:v24 memoryCategory:0 subcategory:212 titleGenerationContext:v25];

      v22 = [(PGSpecBasedTitleGenerator *)v17 title];
      goto LABEL_17;
    }

    v11 = [(MAElementCollection *)self->_personNodeAsCollection count];
    v12 = [(PGGraphPetNodeCollection *)self->_petNodes names];
    v13 = v12;
    if (v11)
    {
      v6 = [v12 anyObject];

      v14 = [(PGPetMemoryTitleGenerator *)self personNodeAsCollection];
      v15 = [v14 anyNode];

      if ([v15 isMeNode])
      {
        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:@"PGPeopleTitleFormatMePerson" value:@"PGPeopleTitleFormatMePerson" table:@"Localizable"];

LABEL_23:
        if ([v6 length] && -[PGSpecBasedTitleGenerator length](v17, "length"))
        {
          v28 = MEMORY[0x277CCACA8];
          v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v30 = [v29 localizedStringForKey:@"PGPeopleTitleFormatTwoPeopleWithPersonName %@ otherPersonName %@" value:@"PGPeopleTitleFormatTwoPeopleWithPersonName %@ otherPersonName %@" table:@"Localizable"];
          v31 = [v28 localizedStringWithFormat:v30, v6, v17];

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

      v27 = [PGPeopleTitleUtility nameFromPersonNode:v15 serviceManager:self->_serviceManager];
    }

    else
    {
      v26 = [v12 allObjects];
      v15 = [v26 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

      if ([v15 count] != 2)
      {
        v17 = 0;
        v6 = 0;
        goto LABEL_23;
      }

      v6 = [v15 objectAtIndexedSubscript:0];
      v27 = [v15 objectAtIndexedSubscript:1];
    }

    v17 = v27;
    goto LABEL_23;
  }

LABEL_39:
}

- (PGPetMemoryTitleGenerator)initWithMomentNodes:(id)a3 type:(int64_t)a4 titleGenerationContext:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = PGPetMemoryTitleGenerator;
  v9 = [(PGTitleGenerator *)&v13 initWithMomentNodes:a3 type:a4 titleGenerationContext:v8];
  if (v9)
  {
    v10 = [v8 serviceManager];
    serviceManager = v9->_serviceManager;
    v9->_serviceManager = v10;
  }

  return v9;
}

@end