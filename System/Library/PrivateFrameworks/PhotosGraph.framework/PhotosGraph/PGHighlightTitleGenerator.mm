@interface PGHighlightTitleGenerator
+ (id)commonMeaningLabelForTitleUsingMomentNodes:(id)a3;
+ (id)meaningLabelsSortedByPriority;
- (PGHighlightTitleGenerator)initWithCollection:(id)a3 filteredMomentNodes:(id)a4 curatedAssetCollection:(id)a5 keyAsset:(id)a6 createVerboseTitle:(BOOL)a7 titleGenerationContext:(id)a8;
- (PGTitleTuple)titleTuple;
- (void)_generateTitleTuples;
@end

@implementation PGHighlightTitleGenerator

- (void)_generateTitleTuples
{
  v3 = [(PGHighlightTitleGenerator *)self collection];
  if ([v3 isAggregation])
  {
    titleTuple = self->_titleTuple;
    self->_titleTuple = 0;

    v5 = +[PGLogging sharedLogging];
    v6 = [v5 loggingConnection];

    if (os_log_type_enabled(&v6->super.super, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, &v6->super.super, OS_LOG_TYPE_INFO, "Collection is aggregation, skipping title generation", buf, 2u);
    }

    goto LABEL_26;
  }

  if (![v3 isTrip])
  {
    v7 = [(MAElementCollection *)self->_momentNodes temporarySet];
    v8 = [objc_opt_class() commonMeaningLabelForTitleUsingMomentNodes:v7];
    if (v8)
    {
      v9 = +[PGMeaningfulEventRequiredCriteriaFactory availableMeaningLabels];
      v10 = [v9 containsObject:v8];

      if (v10)
      {
        v11 = +[PGUserDefaults isAlwaysShowingHolidayCalendarEvents](PGUserDefaults, "isAlwaysShowingHolidayCalendarEvents") || +[PGUserDefaults isShowingHolidayCalendarEvents];
        v12 = [v8 isEqualToString:@"HolidayEvent"];
        if (v12 && v11)
        {
          if (self->_createVerboseTitle)
          {
            goto LABEL_18;
          }
        }

        else if (v12)
        {
          goto LABEL_18;
        }

        v13 = [[PGSpecBasedHighlightTitleGenerator alloc] initWithMomentNodes:v7 meaningLabel:v8 createVerboseTitle:self->_createVerboseTitle titleGenerationContext:self->_titleGenerationContext];
        if (v13)
        {
          v6 = v13;
LABEL_21:

          goto LABEL_22;
        }
      }
    }

LABEL_18:
    v14 = [(PGGraphMomentNodeCollection *)self->_momentNodes publicEventNodes];
    v15 = [v14 categoryNodes];
    v16 = [(PGTitleGenerationContext *)self->_titleGenerationContext appleEventsCategoryNodes];
    v17 = [v15 intersectsCollection:v16];

    if (!v17 || (v18 = [PGSpecBasedHighlightTitleGenerator alloc], [MEMORY[0x277D27780] appleEvents], v19 = objc_claimAutoreleasedReturnValue(), v6 = -[PGSpecBasedHighlightTitleGenerator initWithMomentNodes:meaningLabel:createVerboseTitle:titleGenerationContext:](v18, "initWithMomentNodes:meaningLabel:createVerboseTitle:titleGenerationContext:", v7, v19, self->_createVerboseTitle, self->_titleGenerationContext), v19, !v6))
    {
      v20 = [PGTitleGenerator alloc];
      v21 = [(PGHighlightTitleGenerator *)self keyAsset];
      v6 = [(PGTitleGenerator *)v20 initWithMomentNodes:v7 referenceDateInterval:0 keyAsset:v21 curatedAssetCollection:self->_curatedAssetCollection assetCollection:self->_curatedAssetCollection type:0 titleGenerationContext:self->_titleGenerationContext];

      [(PGTitleGenerator *)v6 setIsForHighlight:1];
    }

    goto LABEL_21;
  }

  v6 = [[PGTripHighlightTitleGenerator alloc] initWithCollection:v3 titleGenerationContext:self->_titleGenerationContext];
LABEL_22:
  [(PGTitleGenerator *)v6 setLineBreakBehavior:2];
  if (self->_createVerboseTitle)
  {
    v22 = 3;
  }

  else
  {
    v22 = 2;
  }

  [(PGTitleGenerator *)v6 setPreferredTitleType:v22];
  v23 = [(PGTitleGenerator *)v6 title];
  v24 = [PGTitle titleWithString:&stru_2843F5C58 category:0];
  v25 = [[PGTitleTuple alloc] initWithWithTitle:v23 subtitle:v24];
  v26 = self->_titleTuple;
  self->_titleTuple = v25;

LABEL_26:
}

- (PGTitleTuple)titleTuple
{
  titleTuple = self->_titleTuple;
  if (!titleTuple)
  {
    [(PGHighlightTitleGenerator *)self _generateTitleTuples];
    titleTuple = self->_titleTuple;
  }

  return titleTuple;
}

- (PGHighlightTitleGenerator)initWithCollection:(id)a3 filteredMomentNodes:(id)a4 curatedAssetCollection:(id)a5 keyAsset:(id)a6 createVerboseTitle:(BOOL)a7 titleGenerationContext:(id)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = PGHighlightTitleGenerator;
  v18 = [(PGHighlightTitleGenerator *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_collection, a3);
    objc_storeStrong(&v19->_momentNodes, a4);
    objc_storeStrong(&v19->_curatedAssetCollection, a5);
    objc_storeStrong(&v19->_keyAsset, a6);
    v19->_createVerboseTitle = a7;
    objc_storeStrong(&v19->_titleGenerationContext, a8);
  }

  return v19;
}

+ (id)meaningLabelsSortedByPriority
{
  if (meaningLabelsSortedByPriority_onceToken != -1)
  {
    dispatch_once(&meaningLabelsSortedByPriority_onceToken, &__block_literal_global_16182);
  }

  v3 = meaningLabelsSortedByPriority_sortedLabels;

  return v3;
}

void __58__PGHighlightTitleGenerator_meaningLabelsSortedByPriority__block_invoke()
{
  v0 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"Birthday", @"HolidayEvent", 0}];
  v1 = meaningLabelsSortedByPriority_sortedLabels;
  meaningLabelsSortedByPriority_sortedLabels = v0;

  v2 = MEMORY[0x277CBEB18];
  v3 = +[PGMeaningfulEventRequiredCriteriaFactory availableMeaningLabels];
  v4 = [v2 arrayWithArray:v3];

  [v4 removeObjectsInArray:meaningLabelsSortedByPriority_sortedLabels];
  [meaningLabelsSortedByPriority_sortedLabels addObjectsFromArray:v4];
}

+ (id)commonMeaningLabelForTitleUsingMomentNodes:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v4;
  v30 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  v27 = a1;
  v6 = 0;
  if (v30)
  {
    v29 = *v45;
    do
    {
      v7 = 0;
      do
      {
        v32 = v6;
        if (*v45 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v7;
        v8 = *(*(&v44 + 1) + 8 * v7);
        v9 = [v8 numberOfAssets];
        v10 = [v8 meaningLabels];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v41;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v41 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v40 + 1) + 8 * i);
              v16 = [v5 objectForKeyedSubscript:v15];
              v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "unsignedIntegerValue") + v9}];
              [v5 setObject:v17 forKeyedSubscript:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v12);
        }

        v6 = v9 + v32;

        v7 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v30);
  }

  v18 = [MEMORY[0x277CBEB58] set];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __72__PGHighlightTitleGenerator_commonMeaningLabelForTitleUsingMomentNodes___block_invoke;
  v37[3] = &unk_278881E88;
  v39 = v6;
  v19 = v18;
  v38 = v19;
  [v5 enumerateKeysAndObjectsUsingBlock:v37];
  [objc_opt_class() meaningLabelsSortedByPriority];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = v36 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v48 count:16];
  if (v21)
  {
    v22 = *v34;
    while (2)
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v33 + 1) + 8 * j);
        if ([v19 containsObject:{v24, v27}])
        {
          v21 = v24;
          goto LABEL_25;
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v33 objects:v48 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  v25 = *MEMORY[0x277D85DE8];

  return v21;
}

void __72__PGHighlightTitleGenerator_commonMeaningLabelForTitleUsingMomentNodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  [a3 doubleValue];
  v6 = v5 / *(a1 + 40);
  if (v6 >= 0.75 || v6 >= 0.5 && [v7 isEqualToString:@"Birthday"])
  {
    [*(a1 + 32) addObject:v7];
  }
}

@end