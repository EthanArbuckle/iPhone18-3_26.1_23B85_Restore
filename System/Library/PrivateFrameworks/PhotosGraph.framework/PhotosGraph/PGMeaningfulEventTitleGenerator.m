@interface PGMeaningfulEventTitleGenerator
- (PGMeaningfulEventTitleGenerator)initWithCollection:(id)a3 meaningLabel:(id)a4 meaningIsReliable:(BOOL)a5 titleGenerationContext:(id)a6 featureNodes:(id)a7;
- (id)_meaningLabelForTitle;
- (id)_timeTitle;
- (id)_title;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGMeaningfulEventTitleGenerator

- (id)_timeTitle
{
  v3 = objc_alloc_init(PGTimeTitleOptions);
  if ([(NSString *)self->_meaningLabel isEqualToString:@"Birthday"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [(PGTimeTitleOptions *)v3 setAllowedFormats:v4];
  v5 = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v3 setMomentNodes:v5];

  v6 = [(PGTitleGenerator *)self usedLocationNodes];
  [(PGTimeTitleOptions *)v3 setLocationNodes:v6];

  v7 = [PGTimeTitleUtility timeTitleWithOptions:v3];
  v8 = [PGTitle titleWithString:v7 category:5];

  return v8;
}

- (id)_meaningLabelForTitle
{
  v3 = self->_meaningLabel;
  if ([(NSString *)v3 isEqualToString:@"AmusementPark"]|| [(NSString *)v3 isEqualToString:@"Festival"]|| [(NSString *)v3 isEqualToString:@"Museum"])
  {
    v4 = kPGGraphNodeMeaningEntertainment;
  }

  else
  {
    if (![(NSString *)v3 isEqualToString:@"Concert"]&& ![(NSString *)v3 isEqualToString:@"Theater"]&& ![(NSString *)v3 isEqualToString:@"Dance"])
    {
      goto LABEL_6;
    }

    v4 = kPGGraphNodeMeaningPerformance;
  }

  v5 = *v4;

  v3 = v5;
LABEL_6:
  if (self->_meaningIsReliable)
  {
    goto LABEL_7;
  }

  if (_meaningLabelForTitle_onceToken2 != -1)
  {
    dispatch_once(&_meaningLabelForTitle_onceToken2, &__block_literal_global_63248);
  }

  v6 = [_meaningLabelForTitle_meaningLabelToUnreliableMeaningLabel objectForKeyedSubscript:v3];
  if (!v6)
  {
LABEL_7:
    v6 = v3;
  }

  if ([(NSString *)v3 isEqualToString:@"Wedding"])
  {
    v7 = @"Celebration";

    v6 = @"Celebration";
  }

  return v6;
}

void __56__PGMeaningfulEventTitleGenerator__meaningLabelForTitle__block_invoke()
{
  v4[14] = *MEMORY[0x277D85DE8];
  v3[0] = @"Wedding";
  v3[1] = @"AmusementPark";
  v4[0] = @"Celebration";
  v4[1] = @"Entertainment";
  v3[2] = @"Performance";
  v3[3] = @"Concert";
  v4[2] = @"Entertainment";
  v4[3] = @"Entertainment";
  v3[4] = @"Festival";
  v3[5] = @"Theater";
  v4[4] = @"Entertainment";
  v4[5] = @"Entertainment";
  v3[6] = @"Dance";
  v3[7] = @"Museum";
  v4[6] = @"Entertainment";
  v4[7] = @"Entertainment";
  v3[8] = @"NightOut";
  v3[9] = @"SportEvent";
  v4[8] = @"Entertainment";
  v4[9] = @"Entertainment";
  v3[10] = @"WinterSport";
  v3[11] = @"Diving";
  v4[10] = @"Activity";
  v4[11] = @"Activity";
  v3[12] = @"Hiking";
  v3[13] = @"Climbing";
  v4[12] = @"Activity";
  v4[13] = @"Activity";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:14];
  v1 = _meaningLabelForTitle_meaningLabelToUnreliableMeaningLabel;
  _meaningLabelForTitle_meaningLabelToUnreliableMeaningLabel = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)_title
{
  v3 = [(PGMeaningfulEventTitleGenerator *)self _meaningLabelForTitle];
  if (-[MAElementCollection count](self->_featureNodes, "count") && [v3 isEqualToString:@"HolidayEvent"])
  {
    v4 = [(PGGraphNodeCollection *)PGGraphHolidayNodeCollection subsetInCollection:self->_featureNodes];
    if ([v4 count])
    {
      v5 = [v4 localizedHolidayNames];
      v6 = [v5 anyObject];

      v7 = [PGTitle titleWithString:v6 category:5];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PGMeaningfulEventTitleGenerator.m] MeaningfulEvent memory of type kPGGraphNodeMeaningHolidayEvent has no featureNode of type PGGraphHolidayNode.", v13, 2u);
      }

      v7 = 0;
    }
  }

  else
  {
    v8 = [PGSpecBasedTitleGenerator alloc];
    v9 = [(PGTitleGenerator *)self momentNodes];
    v10 = [(PGTitleGenerator *)self titleGenerationContext];
    v11 = [(PGSpecBasedTitleGenerator *)v8 initWithMomentNodes:v9 meaningLabel:v3 titleGenerationContext:v10];

    [(PGSpecBasedTitleGenerator *)v11 setLineBreakBehavior:[(PGTitleGenerator *)self lineBreakBehavior]];
    v7 = [(PGSpecBasedTitleGenerator *)v11 title];
  }

  return v7;
}

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v4 = a3;
  v5 = [(PGMeaningfulEventTitleGenerator *)self _title];
  v6 = [(PGMeaningfulEventTitleGenerator *)self _timeTitle];
  v7 = [v5 stringValue];
  v8 = [v7 length];

  if (v8)
  {
    v4[2](v4, v5, v6);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PGMeaningfulEventTitleGenerator;
    [(PGTitleGenerator *)&v9 _generateTitleAndSubtitleWithResult:v4];
  }
}

- (PGMeaningfulEventTitleGenerator)initWithCollection:(id)a3 meaningLabel:(id)a4 meaningIsReliable:(BOOL)a5 titleGenerationContext:(id)a6 featureNodes:(id)a7
{
  v13 = a4;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = PGMeaningfulEventTitleGenerator;
  v15 = [(PGDefaultCollectionTitleGenerator *)&v18 initWithCollection:a3 keyAsset:0 curatedAssetCollection:0 titleGenerationContext:a6];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_meaningLabel, a4);
    v16->_meaningIsReliable = a5;
    objc_storeStrong(&v16->_featureNodes, a7);
  }

  return v16;
}

@end