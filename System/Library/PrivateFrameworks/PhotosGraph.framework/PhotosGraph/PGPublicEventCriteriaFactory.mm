@interface PGPublicEventCriteriaFactory
+ (id)publicEventCriteriaByCategoryForGraph:(id)a3 sceneTaxonomy:(id)a4 loggingConnection:(id)a5;
- (NSDictionary)disambiguationCriteriaByEventCategory;
- (NSDictionary)highConfidenceCriteriaByEventCategory;
- (NSDictionary)prohibitedCriteriaByEventCategory;
- (PGPublicEventCriteriaFactory)initWithGraph:(id)a3 sceneTaxonomy:(id)a4 loggingConnection:(id)a5;
- (id)_appleEventsCriteriaArray;
- (id)_artsAndMuseumsCriteriaArray;
- (id)_danceCriteriaArray;
- (id)_festivalsAndFairsCriteriaArray;
- (id)_meaningCriteriaByEventCategoryForEventCategoriesByMeaningIdentifier:(id)a3 inferenceType:(unint64_t)a4;
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
  v3 = [MEMORY[0x277D27780] appleEvents];
  v4 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
  [(PGPublicEventCriteria *)v4 setEventCategory:v3];
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
  v3 = [MEMORY[0x277D27780] festivalsAndFairs];
  v4 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
  [(PGPublicEventCriteria *)v4 setEventCategory:v3];
  [(PGPublicEventCriteria *)v4 setMinimumTimeAttendance:12600.0];
  [(PGPublicEventCriteria *)v4 setMaximumDistance:1000.0];
  [(PGPublicEventCriteria *)v4 setMinimumAttendance:15000];
  v5 = [(PGPublicEventCriteriaFactory *)self highConfidenceCriteriaByEventCategory];
  v6 = [v5 objectForKeyedSubscript:v3];
  [(PGPublicEventCriteria *)v4 setHighConfidenceCriteria:v6];

  v7 = [(PGPublicEventCriteriaFactory *)self prohibitedCriteriaByEventCategory];
  v8 = [v7 objectForKeyedSubscript:v3];
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
  v3 = [MEMORY[0x277D27780] artsAndMuseums];
  v4 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
  [(PGPublicEventCriteria *)v4 setEventCategory:v3];
  [(PGPublicEventCriteria *)v4 setMinimumTimeAttendance:3600.0];
  [(PGPublicEventCriteria *)v4 setMaximumDistance:100.0];
  v5 = [(PGPublicEventCriteriaFactory *)self disambiguationCriteriaByEventCategory];
  v6 = [v5 objectForKeyedSubscript:v3];
  [(PGPublicEventCriteria *)v4 setDisambiguationCriteria:v6];

  v7 = [(PGPublicEventCriteriaFactory *)self highConfidenceCriteriaByEventCategory];
  v8 = [v7 objectForKeyedSubscript:v3];
  [(PGPublicEventCriteria *)v4 setHighConfidenceCriteria:v8];

  v9 = [(PGPublicEventCriteriaFactory *)self prohibitedCriteriaByEventCategory];
  v10 = [v9 objectForKeyedSubscript:v3];
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
  v3 = [MEMORY[0x277D27780] nightLife];
  v4 = [(PGPublicEventCriteriaFactory *)self highConfidenceCriteriaByEventCategory];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [(PGPublicEventCriteriaFactory *)self prohibitedCriteriaByEventCategory];
  v7 = [v6 objectForKeyedSubscript:v3];

  v8 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
  [(PGPublicEventCriteria *)v8 setEventCategory:v3];
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
  v3 = [MEMORY[0x277D27780] dance];
  v4 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
  [(PGPublicEventCriteria *)v4 setEventCategory:v3];
  [(PGPublicEventCriteria *)v4 setMinimumTimeAttendance:2700.0];
  [(PGPublicEventCriteria *)v4 setMaximumDistance:100.0];
  [(PGPublicEventCriteria *)v4 setAllowsExpandingTimeAttendance:1];
  v5 = [(PGPublicEventCriteriaFactory *)self highConfidenceCriteriaByEventCategory];
  v6 = [v5 objectForKeyedSubscript:v3];
  [(PGPublicEventCriteria *)v4 setHighConfidenceCriteria:v6];

  v7 = [(PGPublicEventCriteriaFactory *)self prohibitedCriteriaByEventCategory];
  v8 = [v7 objectForKeyedSubscript:v3];
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
  v3 = [MEMORY[0x277D27780] theater];
  v4 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
  [(PGPublicEventCriteria *)v4 setEventCategory:v3];
  [(PGPublicEventCriteria *)v4 setMinimumTimeAttendance:2700.0];
  [(PGPublicEventCriteria *)v4 setMaximumDistance:100.0];
  [(PGPublicEventCriteria *)v4 setAllowsExpandingTimeAttendance:1];
  v5 = [(PGPublicEventCriteriaFactory *)self highConfidenceCriteriaByEventCategory];
  v6 = [v5 objectForKeyedSubscript:v3];
  [(PGPublicEventCriteria *)v4 setHighConfidenceCriteria:v6];

  v7 = [(PGPublicEventCriteriaFactory *)self prohibitedCriteriaByEventCategory];
  v8 = [v7 objectForKeyedSubscript:v3];
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
  v3 = [MEMORY[0x277D27780] musicConcerts];
  v4 = [(PGPublicEventCriteriaFactory *)self highConfidenceCriteriaByEventCategory];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [(PGPublicEventCriteriaFactory *)self prohibitedCriteriaByEventCategory];
  v7 = [v6 objectForKeyedSubscript:v3];

  v8 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
  [(PGPublicEventCriteria *)v8 setEventCategory:v3];
  [(PGPublicEventCriteria *)v8 setMinimumTimeAttendance:2700.0];
  [(PGPublicEventCriteria *)v8 setMaximumDistance:100.0];
  [(PGPublicEventCriteria *)v8 setAllowsExpandingTimeAttendance:1];
  [(PGPublicEventCriteria *)v8 setHighConfidenceCriteria:v5];
  [(PGPublicEventCriteria *)v8 setProhibitedCriteria:v7];
  [(PGPublicEventCriteria *)v8 setPromoteToHighConfidenceBasedOnCategory:0];
  v9 = [(PGPublicEventCriteriaFactory *)self disambiguationCriteriaByEventCategory];
  v10 = [v9 objectForKeyedSubscript:v3];

  if ([v10 count])
  {
    v11 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
    [(PGPublicEventCriteria *)v11 setEventCategory:v3];
    [(PGPublicEventCriteria *)v11 setMinimumTimeAttendance:1200.0];
    [(PGPublicEventCriteria *)v11 setMaximumDistance:250.0];
    [(PGPublicEventCriteria *)v11 setAllowsExpandingTimeAttendance:1];
    [(PGPublicEventCriteria *)v11 setDisambiguationCriteria:v10];
    [(PGPublicEventCriteria *)v11 setHighConfidenceCriteria:v5];
    [(PGPublicEventCriteria *)v11 setProhibitedCriteria:v7];
    [(PGPublicEventCriteria *)v11 setPromoteToHighConfidenceBasedOnCategory:0];
    v12 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
    [(PGPublicEventCriteria *)v12 setEventCategory:v3];
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
  v3 = [MEMORY[0x277D27780] sports];
  v4 = [(PGPublicEventCriteriaFactory *)self disambiguationCriteriaByEventCategory];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [(PGPublicEventCriteriaFactory *)self highConfidenceCriteriaByEventCategory];
  v7 = [v6 objectForKeyedSubscript:v3];

  v8 = [(PGPublicEventCriteriaFactory *)self prohibitedCriteriaByEventCategory];
  v9 = [v8 objectForKeyedSubscript:v3];

  v10 = [v5 count];
  if (v10)
  {
    v11 = v10;
    if (v10 != 2)
    {
      v12 = +[PGLogging sharedLogging];
      v13 = [v12 loggingConnection];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v26 = 2;
        _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "Number of sports disambiguation criteria must be %lu", buf, 0xCu);
      }
    }

    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v11];
    v15 = [[PGPublicEventCriteria alloc] initWithLoggingConnection:self->_loggingConnection];
    [(PGPublicEventCriteria *)v15 setEventCategory:v3];
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
      [(PGPublicEventCriteria *)v18 setEventCategory:v3];
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

- (id)_meaningCriteriaByEventCategoryForEventCategoriesByMeaningIdentifier:(id)a3 inferenceType:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 allKeys];
  v8 = [PGMeaningfulEventRequiredCriteriaFactory requiredCriteriaForIdentifiers:v7 inferenceType:a4 graph:self->_graph sceneTaxonomy:self->_sceneTaxonomy];

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __115__PGPublicEventCriteriaFactory__meaningCriteriaByEventCategoryForEventCategoriesByMeaningIdentifier_inferenceType___block_invoke;
  v15[3] = &unk_2788855A0;
  v16 = v6;
  v10 = v9;
  v17 = v10;
  v11 = v6;
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
    v45 = self;
    v44 = [MEMORY[0x277D27780] theater];
    v50[0] = v44;
    v43 = [MEMORY[0x277D27780] musicConcerts];
    v50[1] = v43;
    v42 = [MEMORY[0x277D27780] dance];
    v50[2] = v42;
    v41 = [MEMORY[0x277D27780] sports];
    v50[3] = v41;
    v40 = [MEMORY[0x277D27780] nightLife];
    v50[4] = v40;
    v39 = [MEMORY[0x277D27780] festivalsAndFairs];
    v50[5] = v39;
    v38 = [MEMORY[0x277D27780] artsAndMuseums];
    v50[6] = v38;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:7];
    v52[0] = v37;
    v51[1] = @"Lunch";
    v36 = [MEMORY[0x277D27780] theater];
    v49[0] = v36;
    v35 = [MEMORY[0x277D27780] musicConcerts];
    v49[1] = v35;
    v34 = [MEMORY[0x277D27780] dance];
    v49[2] = v34;
    v33 = [MEMORY[0x277D27780] sports];
    v49[3] = v33;
    v32 = [MEMORY[0x277D27780] nightLife];
    v49[4] = v32;
    v31 = [MEMORY[0x277D27780] festivalsAndFairs];
    v49[5] = v31;
    v30 = [MEMORY[0x277D27780] artsAndMuseums];
    v49[6] = v30;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:7];
    v52[1] = v29;
    v51[2] = @"Breakfast";
    v28 = [MEMORY[0x277D27780] theater];
    v48[0] = v28;
    v27 = [MEMORY[0x277D27780] musicConcerts];
    v48[1] = v27;
    v26 = [MEMORY[0x277D27780] dance];
    v48[2] = v26;
    v25 = [MEMORY[0x277D27780] sports];
    v48[3] = v25;
    v24 = [MEMORY[0x277D27780] nightLife];
    v48[4] = v24;
    v23 = [MEMORY[0x277D27780] festivalsAndFairs];
    v48[5] = v23;
    v22 = [MEMORY[0x277D27780] artsAndMuseums];
    v48[6] = v22;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:7];
    v52[2] = v21;
    v51[3] = @"Wedding";
    v20 = [MEMORY[0x277D27780] theater];
    v47[0] = v20;
    v18 = [MEMORY[0x277D27780] musicConcerts];
    v47[1] = v18;
    v4 = [MEMORY[0x277D27780] dance];
    v47[2] = v4;
    v5 = [MEMORY[0x277D27780] sports];
    v47[3] = v5;
    v6 = [MEMORY[0x277D27780] nightLife];
    v47[4] = v6;
    v7 = [MEMORY[0x277D27780] festivalsAndFairs];
    v47[5] = v7;
    v8 = [MEMORY[0x277D27780] artsAndMuseums];
    v47[6] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:7];
    v52[3] = v9;
    v51[4] = @"Celebration";
    v10 = [MEMORY[0x277D27780] theater];
    v46[0] = v10;
    v11 = [MEMORY[0x277D27780] sports];
    v46[1] = v11;
    v12 = [MEMORY[0x277D27780] artsAndMuseums];
    v46[2] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
    v52[4] = v13;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:5];

    v14 = [(PGPublicEventCriteriaFactory *)v45 _meaningCriteriaByEventCategoryForEventCategoriesByMeaningIdentifier:v19 inferenceType:0];
    v15 = v45->_prohibitedCriteriaByEventCategory;
    v45->_prohibitedCriteriaByEventCategory = v14;

    prohibitedCriteriaByEventCategory = v45->_prohibitedCriteriaByEventCategory;
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
    v4 = [MEMORY[0x277D27780] sports];
    v17 = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v19[0] = v5;
    v18[1] = @"Concert";
    v6 = [MEMORY[0x277D27780] musicConcerts];
    v16 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v19[1] = v7;
    v18[2] = @"Museum";
    v8 = [MEMORY[0x277D27780] artsAndMuseums];
    v15 = v8;
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
    v21 = [MEMORY[0x277D27780] theater];
    v27[0] = v21;
    v20 = [MEMORY[0x277D27780] dance];
    v27[1] = v20;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v29[0] = v19;
    v28[1] = @"Concert";
    v18 = [MEMORY[0x277D27780] musicConcerts];
    v26 = v18;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v29[1] = v17;
    v28[2] = @"Festival";
    v4 = [MEMORY[0x277D27780] festivalsAndFairs];
    v25 = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v29[2] = v5;
    v28[3] = @"SportEvent";
    v6 = [MEMORY[0x277D27780] sports];
    v24 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v29[3] = v7;
    v28[4] = @"NightOut";
    v8 = [MEMORY[0x277D27780] nightLife];
    v23 = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    v29[4] = v9;
    v28[5] = @"Museum";
    v10 = [MEMORY[0x277D27780] artsAndMuseums];
    v22 = v10;
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(PGPublicEventCriteriaFactory *)self _sportsCriteriaArray];
  v5 = [MEMORY[0x277D27780] sports];
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [(PGPublicEventCriteriaFactory *)self _musicConcertsCriteriaArray];
  v7 = [MEMORY[0x277D27780] musicConcerts];
  [v3 setObject:v6 forKeyedSubscript:v7];

  v8 = [(PGPublicEventCriteriaFactory *)self _nightLifeCriteriaArray];
  v9 = [MEMORY[0x277D27780] nightLife];
  [v3 setObject:v8 forKeyedSubscript:v9];

  v10 = [(PGPublicEventCriteriaFactory *)self _festivalsAndFairsCriteriaArray];
  v11 = [MEMORY[0x277D27780] festivalsAndFairs];
  [v3 setObject:v10 forKeyedSubscript:v11];

  v12 = [(PGPublicEventCriteriaFactory *)self _theaterCriteriaArray];
  v13 = [MEMORY[0x277D27780] theater];
  [v3 setObject:v12 forKeyedSubscript:v13];

  v14 = [(PGPublicEventCriteriaFactory *)self _danceCriteriaArray];
  v15 = [MEMORY[0x277D27780] dance];
  [v3 setObject:v14 forKeyedSubscript:v15];

  v16 = [(PGPublicEventCriteriaFactory *)self _artsAndMuseumsCriteriaArray];
  v17 = [MEMORY[0x277D27780] artsAndMuseums];
  [v3 setObject:v16 forKeyedSubscript:v17];

  v18 = [(PGPublicEventCriteriaFactory *)self _appleEventsCriteriaArray];
  v19 = [MEMORY[0x277D27780] appleEvents];
  [v3 setObject:v18 forKeyedSubscript:v19];

  return v3;
}

- (PGPublicEventCriteriaFactory)initWithGraph:(id)a3 sceneTaxonomy:(id)a4 loggingConnection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGPublicEventCriteriaFactory;
  v12 = [(PGPublicEventCriteriaFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_graph, a3);
    objc_storeStrong(&v13->_sceneTaxonomy, a4);
    objc_storeStrong(&v13->_loggingConnection, a5);
  }

  return v13;
}

+ (id)publicEventCriteriaByCategoryForGraph:(id)a3 sceneTaxonomy:(id)a4 loggingConnection:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[PGPublicEventCriteriaFactory alloc] initWithGraph:v9 sceneTaxonomy:v8 loggingConnection:v7];

  v11 = [(PGPublicEventCriteriaFactory *)v10 _publicEventCriteriaByCategory];

  return v11;
}

@end