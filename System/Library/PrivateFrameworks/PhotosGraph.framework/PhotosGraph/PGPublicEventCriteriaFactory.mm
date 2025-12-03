@interface PGPublicEventCriteriaFactory
+ (id)publicEventCriteriaByCategoryForGraph:(id)graph sceneTaxonomy:(id)taxonomy loggingConnection:(id)connection;
- (NSDictionary)disambiguationCriteriaByEventCategory;
- (NSDictionary)highConfidenceCriteriaByEventCategory;
- (NSDictionary)prohibitedCriteriaByEventCategory;
- (PGPublicEventCriteriaFactory)initWithGraph:(id)graph sceneTaxonomy:(id)taxonomy loggingConnection:(id)connection;
- (id)_appleEventsCriteriaArray;
- (id)_artsAndMuseumsCriteriaArray;
- (id)_danceCriteriaArray;
- (id)_festivalsAndFairsCriteriaArray;
- (id)_meaningCriteriaByEventCategoryForEventCategoriesByMeaningIdentifier:(id)identifier inferenceType:(unint64_t)type;
- (id)_musicConcertsCriteriaArray;
- (id)_nightLifeCriteriaArray;
- (id)_publicEventCriteriaByCategory;
- (id)_sportsCriteriaArray;
- (id)_theaterCriteriaArray;
@end

@implementation PGPublicEventCriteriaFactory

- (id)_appleEventsCriteriaArray
{
  v8[1] = *MEMORY[0x277D85DE8];
  appleEvents = [MEMORY[0x277D27780] appleEvents];
  v4 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
  [(PGPublicEventCriteria *)v4 setEventCategory:appleEvents];
  [(PGPublicEventCriteria *)v4 setMinimumTimeAttendance:300.0];
  [(PGPublicEventCriteria *)v4 setMaximumDistance:2000.0];
  [(PGPublicEventCriteria *)v4 setAllowsExpandingTimeAttendance:1];
  [(PGPublicEventCriteria *)v4 setPromoteToHighConfidenceBasedOnCategory:1];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_festivalsAndFairsCriteriaArray
{
  v12[1] = *MEMORY[0x277D85DE8];
  festivalsAndFairs = [MEMORY[0x277D27780] festivalsAndFairs];
  v4 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
  [(PGPublicEventCriteria *)v4 setEventCategory:festivalsAndFairs];
  [(PGPublicEventCriteria *)v4 setMinimumTimeAttendance:12600.0];
  [(PGPublicEventCriteria *)v4 setMaximumDistance:1000.0];
  [(PGPublicEventCriteria *)v4 setMinimumAttendance:15000];
  highConfidenceCriteriaByEventCategory = [(PGPublicEventCriteriaFactory *)self highConfidenceCriteriaByEventCategory];
  v6 = [highConfidenceCriteriaByEventCategory objectForKeyedSubscript:festivalsAndFairs];
  [(PGPublicEventCriteria *)v4 setHighConfidenceCriteria:v6];

  prohibitedCriteriaByEventCategory = [(PGPublicEventCriteriaFactory *)self prohibitedCriteriaByEventCategory];
  v8 = [prohibitedCriteriaByEventCategory objectForKeyedSubscript:festivalsAndFairs];
  [(PGPublicEventCriteria *)v4 setProhibitedCriteria:v8];

  [(PGPublicEventCriteria *)v4 setPromoteToHighConfidenceBasedOnCategory:1];
  v12[0] = v4;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_artsAndMuseumsCriteriaArray
{
  v14[1] = *MEMORY[0x277D85DE8];
  artsAndMuseums = [MEMORY[0x277D27780] artsAndMuseums];
  v4 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
  [(PGPublicEventCriteria *)v4 setEventCategory:artsAndMuseums];
  [(PGPublicEventCriteria *)v4 setMinimumTimeAttendance:3600.0];
  [(PGPublicEventCriteria *)v4 setMaximumDistance:100.0];
  disambiguationCriteriaByEventCategory = [(PGPublicEventCriteriaFactory *)self disambiguationCriteriaByEventCategory];
  v6 = [disambiguationCriteriaByEventCategory objectForKeyedSubscript:artsAndMuseums];
  [(PGPublicEventCriteria *)v4 setDisambiguationCriteria:v6];

  highConfidenceCriteriaByEventCategory = [(PGPublicEventCriteriaFactory *)self highConfidenceCriteriaByEventCategory];
  v8 = [highConfidenceCriteriaByEventCategory objectForKeyedSubscript:artsAndMuseums];
  [(PGPublicEventCriteria *)v4 setHighConfidenceCriteria:v8];

  prohibitedCriteriaByEventCategory = [(PGPublicEventCriteriaFactory *)self prohibitedCriteriaByEventCategory];
  v10 = [prohibitedCriteriaByEventCategory objectForKeyedSubscript:artsAndMuseums];
  [(PGPublicEventCriteria *)v4 setProhibitedCriteria:v10];

  [(PGPublicEventCriteria *)v4 setPromoteToHighConfidenceBasedOnCategory:1];
  v14[0] = v4;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_nightLifeCriteriaArray
{
  v12[1] = *MEMORY[0x277D85DE8];
  nightLife = [MEMORY[0x277D27780] nightLife];
  highConfidenceCriteriaByEventCategory = [(PGPublicEventCriteriaFactory *)self highConfidenceCriteriaByEventCategory];
  v5 = [highConfidenceCriteriaByEventCategory objectForKeyedSubscript:nightLife];

  prohibitedCriteriaByEventCategory = [(PGPublicEventCriteriaFactory *)self prohibitedCriteriaByEventCategory];
  v7 = [prohibitedCriteriaByEventCategory objectForKeyedSubscript:nightLife];

  v8 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
  [(PGPublicEventCriteria *)v8 setEventCategory:nightLife];
  [(PGPublicEventCriteria *)v8 setMinimumTimeAttendance:2700.0];
  [(PGPublicEventCriteria *)v8 setMaximumDistance:100.0];
  [(PGPublicEventCriteria *)v8 setHighConfidenceCriteria:v5];
  [(PGPublicEventCriteria *)v8 setProhibitedCriteria:v7];
  [(PGPublicEventCriteria *)v8 setPromoteToHighConfidenceBasedOnCategory:0];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_danceCriteriaArray
{
  v12[1] = *MEMORY[0x277D85DE8];
  dance = [MEMORY[0x277D27780] dance];
  v4 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
  [(PGPublicEventCriteria *)v4 setEventCategory:dance];
  [(PGPublicEventCriteria *)v4 setMinimumTimeAttendance:2700.0];
  [(PGPublicEventCriteria *)v4 setMaximumDistance:100.0];
  [(PGPublicEventCriteria *)v4 setAllowsExpandingTimeAttendance:1];
  highConfidenceCriteriaByEventCategory = [(PGPublicEventCriteriaFactory *)self highConfidenceCriteriaByEventCategory];
  v6 = [highConfidenceCriteriaByEventCategory objectForKeyedSubscript:dance];
  [(PGPublicEventCriteria *)v4 setHighConfidenceCriteria:v6];

  prohibitedCriteriaByEventCategory = [(PGPublicEventCriteriaFactory *)self prohibitedCriteriaByEventCategory];
  v8 = [prohibitedCriteriaByEventCategory objectForKeyedSubscript:dance];
  [(PGPublicEventCriteria *)v4 setProhibitedCriteria:v8];

  [(PGPublicEventCriteria *)v4 setPromoteToHighConfidenceBasedOnCategory:0];
  v12[0] = v4;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_theaterCriteriaArray
{
  v12[1] = *MEMORY[0x277D85DE8];
  theater = [MEMORY[0x277D27780] theater];
  v4 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
  [(PGPublicEventCriteria *)v4 setEventCategory:theater];
  [(PGPublicEventCriteria *)v4 setMinimumTimeAttendance:2700.0];
  [(PGPublicEventCriteria *)v4 setMaximumDistance:100.0];
  [(PGPublicEventCriteria *)v4 setAllowsExpandingTimeAttendance:1];
  highConfidenceCriteriaByEventCategory = [(PGPublicEventCriteriaFactory *)self highConfidenceCriteriaByEventCategory];
  v6 = [highConfidenceCriteriaByEventCategory objectForKeyedSubscript:theater];
  [(PGPublicEventCriteria *)v4 setHighConfidenceCriteria:v6];

  prohibitedCriteriaByEventCategory = [(PGPublicEventCriteriaFactory *)self prohibitedCriteriaByEventCategory];
  v8 = [prohibitedCriteriaByEventCategory objectForKeyedSubscript:theater];
  [(PGPublicEventCriteria *)v4 setProhibitedCriteria:v8];

  [(PGPublicEventCriteria *)v4 setPromoteToHighConfidenceBasedOnCategory:0];
  v12[0] = v4;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_musicConcertsCriteriaArray
{
  v17[1] = *MEMORY[0x277D85DE8];
  musicConcerts = [MEMORY[0x277D27780] musicConcerts];
  highConfidenceCriteriaByEventCategory = [(PGPublicEventCriteriaFactory *)self highConfidenceCriteriaByEventCategory];
  v5 = [highConfidenceCriteriaByEventCategory objectForKeyedSubscript:musicConcerts];

  prohibitedCriteriaByEventCategory = [(PGPublicEventCriteriaFactory *)self prohibitedCriteriaByEventCategory];
  v7 = [prohibitedCriteriaByEventCategory objectForKeyedSubscript:musicConcerts];

  v8 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
  [(PGPublicEventCriteria *)v8 setEventCategory:musicConcerts];
  [(PGPublicEventCriteria *)v8 setMinimumTimeAttendance:2700.0];
  [(PGPublicEventCriteria *)v8 setMaximumDistance:100.0];
  [(PGPublicEventCriteria *)v8 setAllowsExpandingTimeAttendance:1];
  [(PGPublicEventCriteria *)v8 setHighConfidenceCriteria:v5];
  [(PGPublicEventCriteria *)v8 setProhibitedCriteria:v7];
  [(PGPublicEventCriteria *)v8 setPromoteToHighConfidenceBasedOnCategory:0];
  disambiguationCriteriaByEventCategory = [(PGPublicEventCriteriaFactory *)self disambiguationCriteriaByEventCategory];
  v10 = [disambiguationCriteriaByEventCategory objectForKeyedSubscript:musicConcerts];

  if ([v10 count])
  {
    v11 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
    [(PGPublicEventCriteria *)v11 setEventCategory:musicConcerts];
    [(PGPublicEventCriteria *)v11 setMinimumTimeAttendance:1200.0];
    [(PGPublicEventCriteria *)v11 setMaximumDistance:250.0];
    [(PGPublicEventCriteria *)v11 setAllowsExpandingTimeAttendance:1];
    [(PGPublicEventCriteria *)v11 setDisambiguationCriteria:v10];
    [(PGPublicEventCriteria *)v11 setHighConfidenceCriteria:v5];
    [(PGPublicEventCriteria *)v11 setProhibitedCriteria:v7];
    [(PGPublicEventCriteria *)v11 setPromoteToHighConfidenceBasedOnCategory:0];
    v12 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
    [(PGPublicEventCriteria *)v12 setEventCategory:musicConcerts];
    [(PGPublicEventCriteria *)v12 setMinimumTimeAttendance:1200.0];
    [(PGPublicEventCriteria *)v12 setMaximumDistance:750.0];
    [(PGPublicEventCriteria *)v12 setAllowsExpandingTimeAttendance:1];
    [(PGPublicEventCriteria *)v12 setDisambiguationCriteria:v10];
    [(PGPublicEventCriteria *)v12 setHighConfidenceCriteria:v5];
    [(PGPublicEventCriteria *)v12 setProhibitedCriteria:v7];
    [(PGPublicEventCriteria *)v12 setMinimumAttendance:10000];
    [(PGPublicEventCriteria *)v12 setPromoteToHighConfidenceBasedOnCategory:0];
    v16[0] = v8;
    v16[1] = v11;
    v16[2] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  }

  else
  {
    v17[0] = v8;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_sportsCriteriaArray
{
  v27 = *MEMORY[0x277D85DE8];
  sports = [MEMORY[0x277D27780] sports];
  disambiguationCriteriaByEventCategory = [(PGPublicEventCriteriaFactory *)self disambiguationCriteriaByEventCategory];
  v5 = [disambiguationCriteriaByEventCategory objectForKeyedSubscript:sports];

  highConfidenceCriteriaByEventCategory = [(PGPublicEventCriteriaFactory *)self highConfidenceCriteriaByEventCategory];
  v7 = [highConfidenceCriteriaByEventCategory objectForKeyedSubscript:sports];

  prohibitedCriteriaByEventCategory = [(PGPublicEventCriteriaFactory *)self prohibitedCriteriaByEventCategory];
  v9 = [prohibitedCriteriaByEventCategory objectForKeyedSubscript:sports];

  v10 = [v5 count];
  if (v10)
  {
    v11 = v10;
    if (v10 != 2)
    {
      v12 = +[PGLogging sharedLogging];
      loggingConnection = [v12 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v26 = 2;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Number of sports disambiguation criteria must be %lu", buf, 0xCu);
      }
    }

    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v11];
    v15 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
    [(PGPublicEventCriteria *)v15 setEventCategory:sports];
    [(PGPublicEventCriteria *)v15 setMinimumTimeAttendance:1200.0];
    [(PGPublicEventCriteria *)v15 setMaximumDistance:500.0];
    [(PGPublicEventCriteria *)v15 setAllowsExpandingTimeAttendance:1];
    v16 = [v5 objectAtIndexedSubscript:0];
    v24 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    [(PGPublicEventCriteria *)v15 setDisambiguationCriteria:v17];

    [(PGPublicEventCriteria *)v15 setHighConfidenceCriteria:v7];
    [(PGPublicEventCriteria *)v15 setProhibitedCriteria:v9];
    [(PGPublicEventCriteria *)v15 setPromoteToHighConfidenceBasedOnCategory:1];
    [v14 addObject:v15];
    if (v11 != 1)
    {
      v18 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
      [(PGPublicEventCriteria *)v18 setEventCategory:sports];
      [(PGPublicEventCriteria *)v18 setMinimumTimeAttendance:300.0];
      [(PGPublicEventCriteria *)v18 setMaximumDistance:750.0];
      [(PGPublicEventCriteria *)v18 setAllowsExpandingTimeAttendance:1];
      v19 = [v5 objectAtIndexedSubscript:1];
      v23 = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      [(PGPublicEventCriteria *)v18 setDisambiguationCriteria:v20];

      [(PGPublicEventCriteria *)v18 setHighConfidenceCriteria:v7];
      [(PGPublicEventCriteria *)v18 setProhibitedCriteria:v9];
      [(PGPublicEventCriteria *)v18 setPromoteToHighConfidenceBasedOnCategory:1];
      [v14 addObject:v18];
    }
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_meaningCriteriaByEventCategoryForEventCategoriesByMeaningIdentifier:(id)identifier inferenceType:(unint64_t)type
{
  identifierCopy = identifier;
  allKeys = [identifierCopy allKeys];
  v8 = [PGMeaningfulEventRequiredCriteriaFactory requiredCriteriaForIdentifiers:allKeys inferenceType:type graph:self->_graph sceneTaxonomy:self->_sceneTaxonomy];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __115__PGPublicEventCriteriaFactory__meaningCriteriaByEventCategoryForEventCategoriesByMeaningIdentifier_inferenceType___block_invoke;
  v15[3] = &unk_2788855A0;
  v16 = identifierCopy;
  v10 = dictionary;
  v17 = v10;
  v11 = identifierCopy;
  [v8 enumerateKeysAndObjectsUsingBlock:v15];
  v12 = v17;
  v13 = v10;

  return v10;
}

void __115__PGPublicEventCriteriaFactory__meaningCriteriaByEventCategoryForEventCategoriesByMeaningIdentifier_inferenceType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 40) setObject:v5 forKeyedSubscript:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)prohibitedCriteriaByEventCategory
{
  v52[5] = *MEMORY[0x277D85DE8];
  prohibitedCriteriaByEventCategory = self->_prohibitedCriteriaByEventCategory;
  if (!prohibitedCriteriaByEventCategory)
  {
    v51[0] = @"Dinner";
    selfCopy = self;
    theater = [MEMORY[0x277D27780] theater];
    v50[0] = theater;
    musicConcerts = [MEMORY[0x277D27780] musicConcerts];
    v50[1] = musicConcerts;
    dance = [MEMORY[0x277D27780] dance];
    v50[2] = dance;
    sports = [MEMORY[0x277D27780] sports];
    v50[3] = sports;
    nightLife = [MEMORY[0x277D27780] nightLife];
    v50[4] = nightLife;
    festivalsAndFairs = [MEMORY[0x277D27780] festivalsAndFairs];
    v50[5] = festivalsAndFairs;
    artsAndMuseums = [MEMORY[0x277D27780] artsAndMuseums];
    v50[6] = artsAndMuseums;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:7];
    v52[0] = v37;
    v51[1] = @"Lunch";
    theater2 = [MEMORY[0x277D27780] theater];
    v49[0] = theater2;
    musicConcerts2 = [MEMORY[0x277D27780] musicConcerts];
    v49[1] = musicConcerts2;
    dance2 = [MEMORY[0x277D27780] dance];
    v49[2] = dance2;
    sports2 = [MEMORY[0x277D27780] sports];
    v49[3] = sports2;
    nightLife2 = [MEMORY[0x277D27780] nightLife];
    v49[4] = nightLife2;
    festivalsAndFairs2 = [MEMORY[0x277D27780] festivalsAndFairs];
    v49[5] = festivalsAndFairs2;
    artsAndMuseums2 = [MEMORY[0x277D27780] artsAndMuseums];
    v49[6] = artsAndMuseums2;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:7];
    v52[1] = v29;
    v51[2] = @"Breakfast";
    theater3 = [MEMORY[0x277D27780] theater];
    v48[0] = theater3;
    musicConcerts3 = [MEMORY[0x277D27780] musicConcerts];
    v48[1] = musicConcerts3;
    dance3 = [MEMORY[0x277D27780] dance];
    v48[2] = dance3;
    sports3 = [MEMORY[0x277D27780] sports];
    v48[3] = sports3;
    nightLife3 = [MEMORY[0x277D27780] nightLife];
    v48[4] = nightLife3;
    festivalsAndFairs3 = [MEMORY[0x277D27780] festivalsAndFairs];
    v48[5] = festivalsAndFairs3;
    artsAndMuseums3 = [MEMORY[0x277D27780] artsAndMuseums];
    v48[6] = artsAndMuseums3;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:7];
    v52[2] = v21;
    v51[3] = @"Wedding";
    theater4 = [MEMORY[0x277D27780] theater];
    v47[0] = theater4;
    musicConcerts4 = [MEMORY[0x277D27780] musicConcerts];
    v47[1] = musicConcerts4;
    dance4 = [MEMORY[0x277D27780] dance];
    v47[2] = dance4;
    sports4 = [MEMORY[0x277D27780] sports];
    v47[3] = sports4;
    nightLife4 = [MEMORY[0x277D27780] nightLife];
    v47[4] = nightLife4;
    festivalsAndFairs4 = [MEMORY[0x277D27780] festivalsAndFairs];
    v47[5] = festivalsAndFairs4;
    artsAndMuseums4 = [MEMORY[0x277D27780] artsAndMuseums];
    v47[6] = artsAndMuseums4;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:7];
    v52[3] = v9;
    v51[4] = @"Celebration";
    theater5 = [MEMORY[0x277D27780] theater];
    v46[0] = theater5;
    sports5 = [MEMORY[0x277D27780] sports];
    v46[1] = sports5;
    artsAndMuseums5 = [MEMORY[0x277D27780] artsAndMuseums];
    v46[2] = artsAndMuseums5;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
    v52[4] = v13;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:5];

    v14 = [(PGPublicEventCriteriaFactory *)selfCopy _meaningCriteriaByEventCategoryForEventCategoriesByMeaningIdentifier:v19 inferenceType:0];
    v15 = selfCopy->_prohibitedCriteriaByEventCategory;
    selfCopy->_prohibitedCriteriaByEventCategory = v14;

    prohibitedCriteriaByEventCategory = selfCopy->_prohibitedCriteriaByEventCategory;
  }

  v16 = *MEMORY[0x277D85DE8];

  return prohibitedCriteriaByEventCategory;
}

- (NSDictionary)disambiguationCriteriaByEventCategory
{
  v19[3] = *MEMORY[0x277D85DE8];
  disambiguationCriteriaByEventCategory = self->_disambiguationCriteriaByEventCategory;
  if (!disambiguationCriteriaByEventCategory)
  {
    v18[0] = @"SportEvent";
    sports = [MEMORY[0x277D27780] sports];
    v17 = sports;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v19[0] = v5;
    v18[1] = @"Concert";
    musicConcerts = [MEMORY[0x277D27780] musicConcerts];
    v16 = musicConcerts;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v19[1] = v7;
    v18[2] = @"Museum";
    artsAndMuseums = [MEMORY[0x277D27780] artsAndMuseums];
    v15 = artsAndMuseums;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v19[2] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

    v11 = [(PGPublicEventCriteriaFactory *)self _meaningCriteriaByEventCategoryForEventCategoriesByMeaningIdentifier:v10 inferenceType:1];
    v12 = self->_disambiguationCriteriaByEventCategory;
    self->_disambiguationCriteriaByEventCategory = v11;

    disambiguationCriteriaByEventCategory = self->_disambiguationCriteriaByEventCategory;
  }

  v13 = *MEMORY[0x277D85DE8];

  return disambiguationCriteriaByEventCategory;
}

- (NSDictionary)highConfidenceCriteriaByEventCategory
{
  v29[6] = *MEMORY[0x277D85DE8];
  highConfidenceCriteriaByEventCategory = self->_highConfidenceCriteriaByEventCategory;
  if (!highConfidenceCriteriaByEventCategory)
  {
    v28[0] = @"Performance";
    theater = [MEMORY[0x277D27780] theater];
    v27[0] = theater;
    dance = [MEMORY[0x277D27780] dance];
    v27[1] = dance;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v29[0] = v19;
    v28[1] = @"Concert";
    musicConcerts = [MEMORY[0x277D27780] musicConcerts];
    v26 = musicConcerts;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v29[1] = v17;
    v28[2] = @"Festival";
    festivalsAndFairs = [MEMORY[0x277D27780] festivalsAndFairs];
    v25 = festivalsAndFairs;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v29[2] = v5;
    v28[3] = @"SportEvent";
    sports = [MEMORY[0x277D27780] sports];
    v24 = sports;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v29[3] = v7;
    v28[4] = @"NightOut";
    nightLife = [MEMORY[0x277D27780] nightLife];
    v23 = nightLife;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    v29[4] = v9;
    v28[5] = @"Museum";
    artsAndMuseums = [MEMORY[0x277D27780] artsAndMuseums];
    v22 = artsAndMuseums;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    v29[5] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];

    v13 = [(PGPublicEventCriteriaFactory *)self _meaningCriteriaByEventCategoryForEventCategoriesByMeaningIdentifier:v12 inferenceType:0];
    v14 = self->_highConfidenceCriteriaByEventCategory;
    self->_highConfidenceCriteriaByEventCategory = v13;

    highConfidenceCriteriaByEventCategory = self->_highConfidenceCriteriaByEventCategory;
  }

  v15 = *MEMORY[0x277D85DE8];

  return highConfidenceCriteriaByEventCategory;
}

- (id)_publicEventCriteriaByCategory
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  _sportsCriteriaArray = [(PGPublicEventCriteriaFactory *)self _sportsCriteriaArray];
  sports = [MEMORY[0x277D27780] sports];
  [dictionary setObject:_sportsCriteriaArray forKeyedSubscript:sports];

  _musicConcertsCriteriaArray = [(PGPublicEventCriteriaFactory *)self _musicConcertsCriteriaArray];
  musicConcerts = [MEMORY[0x277D27780] musicConcerts];
  [dictionary setObject:_musicConcertsCriteriaArray forKeyedSubscript:musicConcerts];

  _nightLifeCriteriaArray = [(PGPublicEventCriteriaFactory *)self _nightLifeCriteriaArray];
  nightLife = [MEMORY[0x277D27780] nightLife];
  [dictionary setObject:_nightLifeCriteriaArray forKeyedSubscript:nightLife];

  _festivalsAndFairsCriteriaArray = [(PGPublicEventCriteriaFactory *)self _festivalsAndFairsCriteriaArray];
  festivalsAndFairs = [MEMORY[0x277D27780] festivalsAndFairs];
  [dictionary setObject:_festivalsAndFairsCriteriaArray forKeyedSubscript:festivalsAndFairs];

  _theaterCriteriaArray = [(PGPublicEventCriteriaFactory *)self _theaterCriteriaArray];
  theater = [MEMORY[0x277D27780] theater];
  [dictionary setObject:_theaterCriteriaArray forKeyedSubscript:theater];

  _danceCriteriaArray = [(PGPublicEventCriteriaFactory *)self _danceCriteriaArray];
  dance = [MEMORY[0x277D27780] dance];
  [dictionary setObject:_danceCriteriaArray forKeyedSubscript:dance];

  _artsAndMuseumsCriteriaArray = [(PGPublicEventCriteriaFactory *)self _artsAndMuseumsCriteriaArray];
  artsAndMuseums = [MEMORY[0x277D27780] artsAndMuseums];
  [dictionary setObject:_artsAndMuseumsCriteriaArray forKeyedSubscript:artsAndMuseums];

  _appleEventsCriteriaArray = [(PGPublicEventCriteriaFactory *)self _appleEventsCriteriaArray];
  appleEvents = [MEMORY[0x277D27780] appleEvents];
  [dictionary setObject:_appleEventsCriteriaArray forKeyedSubscript:appleEvents];

  return dictionary;
}

- (PGPublicEventCriteriaFactory)initWithGraph:(id)graph sceneTaxonomy:(id)taxonomy loggingConnection:(id)connection
{
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = PGPublicEventCriteriaFactory;
  v12 = [(PGPublicEventCriteriaFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_graph, graph);
    objc_storeStrong(&v13->_sceneTaxonomy, taxonomy);
    objc_storeStrong(&v13->_loggingConnection, connection);
  }

  return v13;
}

+ (id)publicEventCriteriaByCategoryForGraph:(id)graph sceneTaxonomy:(id)taxonomy loggingConnection:(id)connection
{
  connectionCopy = connection;
  taxonomyCopy = taxonomy;
  graphCopy = graph;
  v10 = [[PGPublicEventCriteriaFactory alloc] initWithGraph:graphCopy sceneTaxonomy:taxonomyCopy loggingConnection:connectionCopy];

  _publicEventCriteriaByCategory = [(PGPublicEventCriteriaFactory *)v10 _publicEventCriteriaByCategory];

  return _publicEventCriteriaByCategory;
}

@end