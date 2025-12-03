@interface PGHighlightTitleGenerator
+ (id)commonMeaningLabelForTitleUsingMomentNodes:(id)nodes;
+ (id)meaningLabelsSortedByPriority;
- (PGHighlightTitleGenerator)initWithCollection:(id)collection filteredMomentNodes:(id)nodes curatedAssetCollection:(id)assetCollection keyAsset:(id)asset createVerboseTitle:(BOOL)title titleGenerationContext:(id)context;
- (PGTitleTuple)titleTuple;
- (void)_generateTitleTuples;
@end

@implementation PGHighlightTitleGenerator

- (void)_generateTitleTuples
{
  collection = [(PGHighlightTitleGenerator *)self collection];
  if ([collection isAggregation])
  {
    titleTuple = self->_titleTuple;
    self->_titleTuple = 0;

    v5 = +[PGLogging sharedLogging];
    loggingConnection = [v5 loggingConnection];

    if (os_log_type_enabled(&loggingConnection->super.super, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, &loggingConnection->super.super, OS_LOG_TYPE_INFO, "Collection is aggregation, skipping title generation", buf, 2u);
    }

    goto LABEL_26;
  }

  if (![collection isTrip])
  {
    temporarySet = [(MAElementCollection *)self->_momentNodes temporarySet];
    v8 = [objc_opt_class() commonMeaningLabelForTitleUsingMomentNodes:temporarySet];
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

        v13 = [[PGSpecBasedHighlightTitleGenerator alloc] initWithMomentNodes:temporarySet meaningLabel:v8 createVerboseTitle:self->_createVerboseTitle titleGenerationContext:self->_titleGenerationContext];
        if (v13)
        {
          loggingConnection = v13;
LABEL_21:

          goto LABEL_22;
        }
      }
    }

LABEL_18:
    publicEventNodes = [(PGGraphMomentNodeCollection *)self->_momentNodes publicEventNodes];
    categoryNodes = [publicEventNodes categoryNodes];
    appleEventsCategoryNodes = [(PGTitleGenerationContext *)self->_titleGenerationContext appleEventsCategoryNodes];
    v17 = [categoryNodes intersectsCollection:appleEventsCategoryNodes];

    if (!v17 || (v18 = [PGSpecBasedHighlightTitleGenerator alloc], [MEMORY[0x277D27780] appleEvents], v19 = objc_claimAutoreleasedReturnValue(), loggingConnection = -[PGSpecBasedHighlightTitleGenerator initWithMomentNodes:meaningLabel:createVerboseTitle:titleGenerationContext:](v18, "initWithMomentNodes:meaningLabel:createVerboseTitle:titleGenerationContext:", temporarySet, v19, self->_createVerboseTitle, self->_titleGenerationContext), v19, !loggingConnection))
    {
      v20 = [PGTitleGenerator alloc];
      keyAsset = [(PGHighlightTitleGenerator *)self keyAsset];
      loggingConnection = [(PGTitleGenerator *)v20 initWithMomentNodes:temporarySet referenceDateInterval:0 keyAsset:keyAsset curatedAssetCollection:self->_curatedAssetCollection assetCollection:self->_curatedAssetCollection type:0 titleGenerationContext:self->_titleGenerationContext];

      [(PGTitleGenerator *)loggingConnection setIsForHighlight:1];
    }

    goto LABEL_21;
  }

  loggingConnection = [[PGTripHighlightTitleGenerator alloc] initWithCollection:collection titleGenerationContext:self->_titleGenerationContext];
LABEL_22:
  [(PGTitleGenerator *)loggingConnection setLineBreakBehavior:2];
  if (self->_createVerboseTitle)
  {
    v22 = 3;
  }

  else
  {
    v22 = 2;
  }

  [(PGTitleGenerator *)loggingConnection setPreferredTitleType:v22];
  title = [(PGTitleGenerator *)loggingConnection title];
  v24 = [PGTitle titleWithString:&stru_2843F5C58 category:0];
  v25 = [[PGTitleTuple alloc] initWithWithTitle:title subtitle:v24];
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

- (PGHighlightTitleGenerator)initWithCollection:(id)collection filteredMomentNodes:(id)nodes curatedAssetCollection:(id)assetCollection keyAsset:(id)asset createVerboseTitle:(BOOL)title titleGenerationContext:(id)context
{
  collectionCopy = collection;
  nodesCopy = nodes;
  assetCollectionCopy = assetCollection;
  assetCopy = asset;
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = PGHighlightTitleGenerator;
  v18 = [(PGHighlightTitleGenerator *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_collection, collection);
    objc_storeStrong(&v19->_momentNodes, nodes);
    objc_storeStrong(&v19->_curatedAssetCollection, assetCollection);
    objc_storeStrong(&v19->_keyAsset, asset);
    v19->_createVerboseTitle = title;
    objc_storeStrong(&v19->_titleGenerationContext, context);
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

+ (id)commonMeaningLabelForTitleUsingMomentNodes:(id)nodes
{
  v51 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = nodesCopy;
  v30 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  selfCopy = self;
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
        numberOfAssets = [v8 numberOfAssets];
        meaningLabels = [v8 meaningLabels];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v11 = [meaningLabels countByEnumeratingWithState:&v40 objects:v49 count:16];
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
                objc_enumerationMutation(meaningLabels);
              }

              v15 = *(*(&v40 + 1) + 8 * i);
              v16 = [dictionary objectForKeyedSubscript:v15];
              v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "unsignedIntegerValue") + numberOfAssets}];
              [dictionary setObject:v17 forKeyedSubscript:v15];
            }

            v12 = [meaningLabels countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v12);
        }

        v6 = numberOfAssets + v32;

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
  [dictionary enumerateKeysAndObjectsUsingBlock:v37];
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
        if ([v19 containsObject:{v24, selfCopy}])
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