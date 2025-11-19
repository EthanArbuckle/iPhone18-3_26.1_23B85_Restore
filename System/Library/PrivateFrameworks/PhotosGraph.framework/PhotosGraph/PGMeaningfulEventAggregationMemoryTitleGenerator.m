@interface PGMeaningfulEventAggregationMemoryTitleGenerator
+ (id)_momentNodesFromMeaningfulEvents:(id)a3;
- (PGMeaningfulEventAggregationMemoryTitleGenerator)initWithMeaning:(unint64_t)a3 features:(id)a4 meaningfulEvents:(id)a5 titleGenerationContext:(id)a6;
- (id)_subtitle;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGMeaningfulEventAggregationMemoryTitleGenerator

- (id)_subtitle
{
  v3 = objc_alloc_init(PGTimeTitleOptions);
  v4 = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v3 setMomentNodes:v4];

  [(PGTimeTitleOptions *)v3 setAllowedFormats:20];
  [(PGTimeTitleOptions *)v3 setFilterDates:0];
  v5 = [(PGTitleGenerator *)self locale];
  [(PGTimeTitleOptions *)v3 setLocale:v5];

  v6 = [(PGTitleGenerator *)self featuredYearNodes];
  [(PGTimeTitleOptions *)v3 setFeaturedYearNodes:v6];

  v7 = [PGTimeTitleUtility timeTitleWithOptions:v3];
  v8 = [PGTitle titleWithString:v7 category:5];

  return v8;
}

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGMeaningfulEventAggregationMemoryTitleGenerator *)self _meaningLabelForTitle];
  v6 = [PGSpecBasedTitleGenerator alloc];
  v7 = [(PGTitleGenerator *)self momentNodes];
  features = self->_features;
  v9 = [(PGTitleGenerator *)self titleGenerationContext];
  v10 = [(PGSpecBasedTitleGenerator *)v6 initWithMomentNodes:v7 features:features meaningLabel:v5 isAggregation:1 titleGenerationContext:v9];

  v11 = [(PGSpecBasedTitleGenerator *)v10 title];
  v12 = [(PGMeaningfulEventAggregationMemoryTitleGenerator *)self _subtitle];
  if (!v11)
  {
    v13 = +[PGLogging sharedLogging];
    v14 = [v13 loggingConnection];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = self->_features;
      v17 = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v16;
      _os_log_error_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_ERROR, "Title for meaningful aggregation nil (meaning: %@, features: %@. Please press Provide Feedback from Memory Detail View.", &v17, 0x16u);
    }
  }

  if (v4)
  {
    v4[2](v4, v11, v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (PGMeaningfulEventAggregationMemoryTitleGenerator)initWithMeaning:(unint64_t)a3 features:(id)a4 meaningfulEvents:(id)a5 titleGenerationContext:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [objc_opt_class() _momentNodesFromMeaningfulEvents:v12];
  v17.receiver = self;
  v17.super_class = PGMeaningfulEventAggregationMemoryTitleGenerator;
  v15 = [(PGTitleGenerator *)&v17 initWithMomentNodes:v14 referenceDateInterval:0 keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:0 titleGenerationContext:v13];

  if (v15)
  {
    v15->_meaning = a3;
    objc_storeStrong(&v15->_features, a4);
    objc_storeStrong(&v15->_meaningfulEvents, a5);
    v15->_unreliableMeaningRatioThresholdForSpecificTitle = 1.0;
  }

  return v15;
}

+ (id)_momentNodesFromMeaningfulEvents:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) eventCollection];
        v11 = [v10 eventMomentNodes];
        v12 = [v11 temporarySet];
        [v4 unionSet:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

@end