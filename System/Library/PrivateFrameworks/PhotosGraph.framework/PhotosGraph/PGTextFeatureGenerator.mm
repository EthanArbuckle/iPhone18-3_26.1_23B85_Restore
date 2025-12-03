@interface PGTextFeatureGenerator
+ (id)_knowledgeOptionsByDomain;
+ (id)_naturalLanguageOptionsByDomain;
- (PGTextFeatureGenerator)initWithMomentNodes:(id)nodes graph:(id)graph;
- (id)_sortedTextFeaturesUsingWeightAndTypeFromTextFeatures:(id)features;
- (id)_textFeaturesForNode:(id)node type:(unint64_t)type weight:(double)weight;
- (id)_textFeaturesForNodes:(id)nodes type:(unint64_t)type;
- (id)_textFeaturesForPersonNodes:(id)nodes;
- (id)bestTextFeaturesFromTextFeatures:(id)features;
- (id)generateTextFeatures;
- (id)knowledgeFeatures;
- (id)naturalLanguageFeatures;
- (void)_resetProperties;
- (void)analyzeMomentNodes;
@end

@implementation PGTextFeatureGenerator

- (id)_sortedTextFeaturesUsingWeightAndTypeFromTextFeatures:(id)features
{
  v36 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v6 = MEMORY[0x277CBEB98];
  v7 = +[PGTextFeature vipTextFeatureTypes];
  v28 = [v6 setWithArray:v7];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = featuresCopy;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        if ([v13 origin] != 1 || (objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", objc_msgSend(v13, "type")), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v28, "containsObject:", v14), v14, v16 = array, (v15 & 1) == 0))
        {
          v16 = array2;
        }

        [v16 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v10);
  }

  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"weight" ascending:0];
  v34[0] = v17;
  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"string" ascending:1];
  v34[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v20 = [array sortedArrayUsingDescriptors:v19];

  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"weight" ascending:0];
  v33[0] = v21;
  v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"string" ascending:1];
  v33[1] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v24 = [array2 sortedArrayUsingDescriptors:v23];

  v25 = [v20 arrayByAddingObjectsFromArray:v24];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_textFeaturesForPersonNodes:(id)nodes
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_personNodes;
  v6 = [(NSCountedSet *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(NSCountedSet *)self->_personNodes countForObject:v10, v17]/ self->_numberOfMoments;
        v12 = [(PGTextFeatureGenerator *)self _textFeaturesForNode:v10 type:3 weight:v11];
        [v4 unionSet:v12];
        localIdentifier = [v10 localIdentifier];
        if ([localIdentifier length])
        {
          v14 = [PGTextFeature textFeaturesFromString:localIdentifier type:3 weight:0 options:v11];
          [v4 unionSet:v14];
        }
      }

      v7 = [(NSCountedSet *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_textFeaturesForNode:(id)node type:(unint64_t)type weight:(double)weight
{
  optionsByDomain = self->_optionsByDomain;
  v9 = MEMORY[0x277CCABB0];
  nodeCopy = node;
  v11 = [v9 numberWithUnsignedInteger:type];
  v12 = [(NSDictionary *)optionsByDomain objectForKeyedSubscript:v11];
  unsignedIntegerValue = [v12 unsignedIntegerValue];

  v14 = [PGTextFeature textFeaturesFromNode:nodeCopy type:type weight:unsignedIntegerValue options:self->_locationHelper locationHelper:weight];

  return v14;
}

- (id)_textFeaturesForNodes:(id)nodes type:(unint64_t)type
{
  v21 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v7 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = nodesCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = -[PGTextFeatureGenerator _textFeaturesForNode:type:weight:](self, "_textFeaturesForNode:type:weight:", *(*(&v16 + 1) + 8 * i), type, ([v8 countForObject:{*(*(&v16 + 1) + 8 * i), v16}] / self->_numberOfMoments));
        [v7 unionSet:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)bestTextFeaturesFromTextFeatures:(id)features
{
  v56 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CBEB58] set];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = featuresCopy;
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v48 + 1) + 8 * i);
        string = [v11 string];
        v13 = [dictionary objectForKeyedSubscript:string];
        if (v13)
        {
          v14 = v13;
          [v5 addObject:string];
          [v14 addObject:v11];
        }

        else
        {
          v14 = [MEMORY[0x277CBEB58] setWithObject:v11];
          [dictionary setObject:v14 forKeyedSubscript:string];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v8);
  }

  v15 = [MEMORY[0x277CBEB58] setWithSet:v6];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v45;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [dictionary objectForKeyedSubscript:*(*(&v44 + 1) + 8 * j)];
        v22 = [PGTextFeature mergedTextFeatureFromTextFeatures:v21];
        [v15 minusSet:v21];
        if (v22)
        {
          [v15 addObject:v22];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v18);
  }

  v23 = [v15 count];
  maximumNumberOfTextFeaturesPerEvent = [(PGTextFeatureGenerator *)self maximumNumberOfTextFeaturesPerEvent];
  boundTextFeaturesPerEvent = [(PGTextFeatureGenerator *)self boundTextFeaturesPerEvent];
  v43 = maximumNumberOfTextFeaturesPerEvent;
  v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:maximumNumberOfTextFeaturesPerEvent];
  v26 = [(PGTextFeatureGenerator *)self _sortedTextFeaturesUsingWeightAndTypeFromTextFeatures:v15];
  if (v23)
  {
    v28 = v23;
    v29 = 0;
    *&v27 = 138412290;
    v39 = v27;
    v41 = v25;
    while (1)
    {
      v30 = [v26 objectAtIndexedSubscript:{v29, v39}];
      v31 = v30;
      if (v29 < v43)
      {
        break;
      }

      if (!boundTextFeaturesPerEvent)
      {
        [v30 markAsStrippedOut];
        v32 = [MEMORY[0x277CD99F0] pg_textFeatureForFeature:v31];
        if (v32)
        {
LABEL_28:
          v35 = v32;
          [v25 addObject:v32];
LABEL_31:

          goto LABEL_32;
        }

        v36 = +[PGLogging sharedLogging];
        loggingConnection = [v36 loggingConnection];

        if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
LABEL_30:

          v35 = 0;
          v25 = v41;
          goto LABEL_31;
        }

LABEL_34:
        *buf = v39;
        v53 = v31;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failure generating PHTextFeature from PGTextFeature %@", buf, 0xCu);
        goto LABEL_30;
      }

LABEL_32:

      if (v28 == ++v29)
      {
        goto LABEL_35;
      }
    }

    v32 = [MEMORY[0x277CD99F0] pg_textFeatureForFeature:v30];
    if (v32)
    {
      goto LABEL_28;
    }

    v33 = +[PGLogging sharedLogging];
    loggingConnection = [v33 loggingConnection];

    if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    goto LABEL_34;
  }

LABEL_35:

  v37 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)generateTextFeatures
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  if (self->_numberOfAssets)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v4 = self->_numberOfAssetsBySceneNode;
    v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v73;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v73 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v72 + 1) + 8 * i);
          v10 = [(NSMapTable *)self->_numberOfAssetsBySceneNode objectForKey:v9];
          v11 = -[PGTextFeatureGenerator _textFeaturesForNode:type:weight:](self, "_textFeaturesForNode:type:weight:", v9, 18, [v10 unsignedIntegerValue] / self->_numberOfAssets);
          [v3 unionSet:v11];
        }

        v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v72 objects:v80 count:16];
      }

      while (v6);
    }

    v63 = [(PGTextFeatureGenerator *)self _textFeaturesForPersonNodes:self->_personNodes];
    [v3 unionSet:?];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v12 = self->_roiNodes;
    v13 = [(NSCountedSet *)v12 countByEnumeratingWithState:&v68 objects:v79 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v69;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v69 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v68 + 1) + 8 * j);
          label = [v17 label];
          v19 = [label isEqualToString:@"Urban"];

          if ((v19 & 1) == 0)
          {
            v20 = [(PGTextFeatureGenerator *)self _textFeaturesForNode:v17 type:9 weight:([(NSCountedSet *)self->_roiNodes countForObject:v17]/ self->_numberOfMoments)];
            [v3 unionSet:v20];
          }
        }

        v14 = [(NSCountedSet *)v12 countByEnumeratingWithState:&v68 objects:v79 count:16];
      }

      while (v14);
    }

    v62 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_poiNodes type:10];
    [v3 unionSet:?];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v21 = self->_meaningNodes;
    v22 = [(NSCountedSet *)v21 countByEnumeratingWithState:&v64 objects:v78 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v65;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v65 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v64 + 1) + 8 * k);
          v27 = [(NSCountedSet *)self->_meaningNodes countForObject:v26];
          isVeryMeaningful = [v26 isVeryMeaningful];
          v29 = 1.0;
          if ((isVeryMeaningful & 1) == 0)
          {
            v29 = (v27 / self->_numberOfMoments);
          }

          v30 = [(PGTextFeatureGenerator *)self _textFeaturesForNode:v26 type:13 weight:v29];
          [v3 unionSet:v30];
        }

        v23 = [(NSCountedSet *)v21 countByEnumeratingWithState:&v64 objects:v78 count:16];
      }

      while (v23);
    }

    v31 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_districtNodes type:19];
    [v3 unionSet:v31];
    v32 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_cityNodes type:4];
    [v3 unionSet:v32];
    v33 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_stateNodes type:5];
    [v3 unionSet:v33];
    v34 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_countryNodes type:6];
    [v3 unionSet:v34];
    v35 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_areaNodes type:20];
    [v3 unionSet:v35];
    v61 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_businessNodes type:17];
    [v3 unionSet:?];
    if ([(NSCountedSet *)self->_businessCategoryNodes count]> 3)
    {
      v39 = +[PGLogging sharedLogging];
      loggingConnection = [v39 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        businessCategoryNodes = self->_businessCategoryNodes;
        *buf = 138412290;
        v77 = businessCategoryNodes;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "PHSuggestion text features generation: ignoring business categories (too many) : %@", buf, 0xCu);
      }
    }

    else
    {
      loggingConnection = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_businessCategoryNodes type:24];
      [v3 unionSet:loggingConnection];
    }

    v41 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_holidayNodes type:15];
    [v3 unionSet:v41];
    v42 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_publicEventNodes type:21];
    [v3 unionSet:v42];
    v60 = v41;
    if ([(NSCountedSet *)self->_publicEventPerformerNodes count]> 3)
    {
      v44 = v34;
      v45 = v33;
      v46 = v32;
      v47 = v31;
      v48 = +[PGLogging sharedLogging];
      loggingConnection2 = [v48 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
      {
        publicEventPerformerNodes = self->_publicEventPerformerNodes;
        *buf = 138412290;
        v77 = publicEventPerformerNodes;
        _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "PHSuggestion text features generation: ignoring performers (too many) : %@", buf, 0xCu);
      }

      v31 = v47;
      v32 = v46;
      v33 = v45;
      v34 = v44;
      v41 = v60;
    }

    else
    {
      loggingConnection2 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_publicEventPerformerNodes type:26];
      [v3 unionSet:loggingConnection2];
    }

    if ([(NSCountedSet *)self->_publicEventCategoryNodes count]> 3)
    {
      v51 = v35;
      v52 = v34;
      v53 = v33;
      v54 = v32;
      v55 = v31;
      v56 = +[PGLogging sharedLogging];
      loggingConnection3 = [v56 loggingConnection];

      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
      {
        publicEventCategoryNodes = self->_publicEventCategoryNodes;
        *buf = 138412290;
        v77 = publicEventCategoryNodes;
        _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "PHSuggestion text features generation: ignoring public event categories (too many) : %@", buf, 0xCu);
      }

      v31 = v55;
      v32 = v54;
      v33 = v53;
      v34 = v52;
      v35 = v51;
      v41 = v60;
    }

    else
    {
      loggingConnection3 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_publicEventCategoryNodes type:25];
      [v3 unionSet:loggingConnection3];
    }

    loggingConnection4 = v63;
  }

  else
  {
    v37 = +[PGLogging sharedLogging];
    loggingConnection4 = [v37 loggingConnection];

    if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_ERROR, "Can't generate text features from no assets", buf, 2u);
    }
  }

  v58 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)analyzeMomentNodes
{
  v52 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = self->_momentNodes;
  v28 = [(NSSet *)obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v28)
  {
    v27 = *v48;
    do
    {
      v3 = 0;
      do
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v47 + 1) + 8 * v3);
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke;
        v46[3] = &unk_278888D88;
        v46[4] = self;
        [v4 enumerateSceneEdgesAndNodesUsingBlock:v46];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_2;
        v45[3] = &unk_278889240;
        v45[4] = self;
        [v4 enumeratePersonNodesUsingBlock:v45];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_3;
        v44[3] = &unk_2788875F8;
        v44[4] = self;
        [v4 enumerateROINodesUsingBlock:v44];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_4;
        v43[3] = &unk_2788875D0;
        v43[4] = self;
        [v4 enumeratePOINodesUsingBlock:v43];
        v5 = [MEMORY[0x277CBEB58] set];
        v6 = [MEMORY[0x277CBEB98] setWithObjects:{@"Entertainment", @"Activity", 0}];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_5;
        v40[3] = &unk_278883BA8;
        v41 = v6;
        v42 = v5;
        v29 = v5;
        v30 = v6;
        [v4 enumerateReliableMeaningNodesUsingBlock:v40];
        meaningNodes = [(PGTextFeatureGenerator *)self meaningNodes];
        [meaningNodes unionSet:v29];

        v8 = [MEMORY[0x277CBEB58] set];
        v9 = [MEMORY[0x277CBEB58] set];
        v10 = [MEMORY[0x277CBEB58] set];
        v11 = [MEMORY[0x277CBEB58] set];
        v12 = [MEMORY[0x277CBEB58] set];
        collection = [v4 collection];
        addressNodes = [collection addressNodes];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_6;
        v34[3] = &unk_278882468;
        v35 = v8;
        v36 = v9;
        v37 = v10;
        v38 = v11;
        v39 = v12;
        v15 = v12;
        v16 = v11;
        v17 = v10;
        v18 = v9;
        v19 = v8;
        [addressNodes enumerateIdentifiersAsCollectionsWithBlock:v34];

        districtNodes = [(PGTextFeatureGenerator *)self districtNodes];
        [districtNodes unionSet:v19];

        cityNodes = [(PGTextFeatureGenerator *)self cityNodes];
        [cityNodes unionSet:v18];

        stateNodes = [(PGTextFeatureGenerator *)self stateNodes];
        [stateNodes unionSet:v17];

        countryNodes = [(PGTextFeatureGenerator *)self countryNodes];
        [countryNodes unionSet:v16];

        areaNodes = [(PGTextFeatureGenerator *)self areaNodes];
        [areaNodes unionSet:v15];

        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_7;
        v33[3] = &unk_278887620;
        v33[4] = self;
        [v4 enumerateBusinessNodesUsingBlock:v33];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_9;
        v32[3] = &unk_2788875A8;
        v32[4] = self;
        [v4 enumerateDateNodesUsingBlock:v32];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_11;
        v31[3] = &unk_278887648;
        v31[4] = self;
        [v4 enumeratePublicEventNodesUsingBlock:v31];

        ++v3;
      }

      while (v28 != v3);
      v28 = [(NSSet *)obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v28);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([v5 isIndexed] && objc_msgSend(v5, "isSuitableForSuggestions") && objc_msgSend(v12, "isReliable"))
  {
    v6 = [v12 numberOfAssets];
    v7 = [*(a1 + 32) numberOfAssetsBySceneNode];
    v8 = [v7 objectForKey:v5];

    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "unsignedIntegerValue") + v6}];
    }

    else
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    }

    v10 = [*(a1 + 32) numberOfAssetsBySceneNode];
    [v10 setObject:v9 forKey:v5];

    v11 = [*(a1 + 32) sceneNodes];
    [v11 addObject:v5];
  }
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([v6 isMeNode] & 1) == 0)
  {
    v3 = [v6 name];
    v4 = [v3 length];

    if (v4)
    {
      v5 = [*(a1 + 32) personNodes];
      [v5 addObject:v6];
    }
  }
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 roiNodes];
  [v4 addObject:v3];
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 poiNodes];
  [v4 addObject:v3];
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v5 = [v3 label];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) addObject:v10];
  }

  v6 = [v10 parentMeaningNode];
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 32);
    v9 = [v6 label];
    LOBYTE(v8) = [v8 containsObject:v9];

    if ((v8 & 1) == 0)
    {
      [*(a1 + 40) addObject:v7];
    }
  }
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_6(id *a1, uint64_t a2, void *a3)
{
  v14 = a3;
  v4 = [v14 districtNodes];
  v5 = [v4 anyNode];

  if (v5)
  {
    [a1[4] addObject:v5];
  }

  v6 = [v14 cityNodes];
  v7 = [v6 anyNode];

  if (v7)
  {
    [a1[5] addObject:v7];
  }

  v8 = [v14 stateNodes];
  v9 = [v8 anyNode];

  if (v9)
  {
    [a1[6] addObject:v9];
  }

  v10 = [v14 countryNodes];
  v11 = [v10 anyNode];

  if (v11)
  {
    [a1[7] addObject:v11];
  }

  v12 = [v14 areaNodes];
  v13 = [v12 temporarySet];

  [a1[8] unionSet:v13];
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 businessNodes];
  [v5 addObject:v4];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_8;
  v6[3] = &unk_2788840D8;
  v6[4] = *(a1 + 32);
  [v4 enumerateBusinessCategoryNodesUsingBlock:v6];
}

uint64_t __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_9(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_10;
  v3[3] = &unk_278888D00;
  v3[4] = *(a1 + 32);
  return [a2 enumerateHolidayNodesUsingBlock:v3];
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 publicEventNodes];
  [v5 addObject:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_12;
  v7[3] = &unk_278887118;
  v7[4] = *(a1 + 32);
  [v4 enumeratePublicEventCategoryNodesUsingBlock:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_13;
  v6[3] = &unk_278882490;
  v6[4] = *(a1 + 32);
  [v4 enumeratePerformerNodesUsingBlock:v6];
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 publicEventCategoryNodes];
  [v4 addObject:v3];
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 publicEventPerformerNodes];
  [v4 addObject:v3];
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 holidayNodes];
  [v4 addObject:v3];
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 businessCategoryNodes];
  [v4 addObject:v3];
}

- (id)naturalLanguageFeatures
{
  v24 = *MEMORY[0x277D85DE8];
  _naturalLanguageOptionsByDomain = [objc_opt_class() _naturalLanguageOptionsByDomain];
  [(PGTextFeatureGenerator *)self setOptionsByDomain:_naturalLanguageOptionsByDomain];

  if (!self->_numberOfMoments)
  {
    v12 = +[PGLogging sharedLogging];
    loggingConnection = [v12 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Cannot generate natural language features with no moment nodes", &v18, 2u);
    }

    goto LABEL_11;
  }

  [(PGTextFeatureGenerator *)self analyzeMomentNodes];
  loggingConnection = [(PGTextFeatureGenerator *)self generateTextFeatures];
  v5 = [loggingConnection count];
  if (!v5)
  {
    v13 = +[PGLogging sharedLogging];
    loggingConnection2 = [v13 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      momentNodes = self->_momentNodes;
      v18 = 138477827;
      v19 = momentNodes;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "No text features were generated from moments %{private}@", &v18, 0xCu);
    }

LABEL_11:
    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_12;
  }

  v6 = v5;
  v7 = [(PGTextFeatureGenerator *)self bestTextFeaturesFromTextFeatures:loggingConnection];
  v8 = +[PGLogging sharedLogging];
  loggingConnection3 = [v8 loggingConnection];

  if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
  {
    v10 = [v7 count];
    v11 = self->_momentNodes;
    v18 = 134218498;
    v19 = v10;
    v20 = 2048;
    v21 = v6;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "%lu out of %lu text teatures are saved for moments %@", &v18, 0x20u);
  }

  [(PGTextFeatureGenerator *)self _resetProperties];
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)knowledgeFeatures
{
  v24 = *MEMORY[0x277D85DE8];
  _knowledgeOptionsByDomain = [objc_opt_class() _knowledgeOptionsByDomain];
  [(PGTextFeatureGenerator *)self setOptionsByDomain:_knowledgeOptionsByDomain];

  if (!self->_numberOfMoments)
  {
    v11 = +[PGLogging sharedLogging];
    loggingConnection = [v11 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Cannot generate text features with no moment nodes", buf, 2u);
    }

    goto LABEL_18;
  }

  [(PGTextFeatureGenerator *)self analyzeMomentNodes];
  loggingConnection = [(PGTextFeatureGenerator *)self generateTextFeatures];
  if (![loggingConnection count])
  {
    v12 = +[PGLogging sharedLogging];
    loggingConnection2 = [v12 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      momentNodes = self->_momentNodes;
      *buf = 138477827;
      v23 = momentNodes;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "No text features were generated from moments %{private}@", buf, 0xCu);
    }

LABEL_18:
    v5 = MEMORY[0x277CBEBF8];
    goto LABEL_19;
  }

  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  loggingConnection = loggingConnection;
  v6 = [loggingConnection countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(loggingConnection);
        }

        v10 = [MEMORY[0x277CD99F0] pg_textFeatureForFeature:{*(*(&v17 + 1) + 8 * i), v17}];
        if (v10)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [loggingConnection countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(PGTextFeatureGenerator *)self _resetProperties];
LABEL_19:

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_resetProperties
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB00]);
  numberOfAssetsBySceneNode = self->_numberOfAssetsBySceneNode;
  self->_numberOfAssetsBySceneNode = v3;

  v5 = [MEMORY[0x277CCA940] set];
  sceneNodes = self->_sceneNodes;
  self->_sceneNodes = v5;

  v7 = [MEMORY[0x277CCA940] set];
  personNodes = self->_personNodes;
  self->_personNodes = v7;

  v9 = [MEMORY[0x277CCA940] set];
  roiNodes = self->_roiNodes;
  self->_roiNodes = v9;

  v11 = [MEMORY[0x277CCA940] set];
  poiNodes = self->_poiNodes;
  self->_poiNodes = v11;

  v13 = [MEMORY[0x277CCA940] set];
  meaningNodes = self->_meaningNodes;
  self->_meaningNodes = v13;

  v15 = [MEMORY[0x277CCA940] set];
  districtNodes = self->_districtNodes;
  self->_districtNodes = v15;

  v17 = [MEMORY[0x277CCA940] set];
  cityNodes = self->_cityNodes;
  self->_cityNodes = v17;

  v19 = [MEMORY[0x277CCA940] set];
  stateNodes = self->_stateNodes;
  self->_stateNodes = v19;

  v21 = [MEMORY[0x277CCA940] set];
  countryNodes = self->_countryNodes;
  self->_countryNodes = v21;

  v23 = [MEMORY[0x277CCA940] set];
  areaNodes = self->_areaNodes;
  self->_areaNodes = v23;

  v25 = [MEMORY[0x277CCA940] set];
  businessNodes = self->_businessNodes;
  self->_businessNodes = v25;

  v27 = [MEMORY[0x277CCA940] set];
  businessCategoryNodes = self->_businessCategoryNodes;
  self->_businessCategoryNodes = v27;

  v29 = [MEMORY[0x277CCA940] set];
  holidayNodes = self->_holidayNodes;
  self->_holidayNodes = v29;

  v31 = [MEMORY[0x277CCA940] set];
  publicEventNodes = self->_publicEventNodes;
  self->_publicEventNodes = v31;

  v33 = [MEMORY[0x277CCA940] set];
  publicEventPerformerNodes = self->_publicEventPerformerNodes;
  self->_publicEventPerformerNodes = v33;

  v35 = [MEMORY[0x277CCA940] set];
  publicEventCategoryNodes = self->_publicEventCategoryNodes;
  self->_publicEventCategoryNodes = v35;
}

- (PGTextFeatureGenerator)initWithMomentNodes:(id)nodes graph:(id)graph
{
  v32 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  graphCopy = graph;
  v30.receiver = self;
  v30.super_class = PGTextFeatureGenerator;
  v9 = [(PGTextFeatureGenerator *)&v30 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_momentNodes, nodes);
    v11 = [[PGGraphLocationHelper alloc] initWithGraph:graphCopy];
    locationHelper = v10->_locationHelper;
    v10->_locationHelper = v11;

    v13 = [nodesCopy count];
    v10->_numberOfMoments = v13;
    v14 = [MEMORY[0x277CBEB58] setWithCapacity:v13];
    momentIdentifiers = v10->_momentIdentifiers;
    v10->_momentIdentifiers = v14;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = nodesCopy;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v26 + 1) + 8 * i);
          v10->_numberOfAssets += [v21 numberOfAssets];
          v22 = v10->_momentIdentifiers;
          localIdentifier = [v21 localIdentifier];
          [(NSMutableSet *)v22 addObject:localIdentifier];
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v18);
    }

    [(PGTextFeatureGenerator *)v10 _resetProperties];
  }

  v24 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)_knowledgeOptionsByDomain
{
  v6[16] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_284483510;
  v5[1] = &unk_284483540;
  v6[0] = &unk_2844836C0;
  v6[1] = &unk_2844836C0;
  v5[2] = &unk_284483570;
  v5[3] = &unk_284483588;
  v6[2] = &unk_2844836C0;
  v6[3] = &unk_2844836C0;
  v5[4] = &unk_2844835A0;
  v5[5] = &unk_2844835B8;
  v6[4] = &unk_2844836C0;
  v6[5] = &unk_2844836C0;
  v5[6] = &unk_284483558;
  v5[7] = &unk_2844835E8;
  v6[6] = &unk_2844836C0;
  v6[7] = &unk_2844836C0;
  v5[8] = &unk_284483600;
  v5[9] = &unk_284483618;
  v6[8] = &unk_2844836C0;
  v6[9] = &unk_2844836C0;
  v5[10] = &unk_284483630;
  v5[11] = &unk_284483648;
  v6[10] = &unk_2844836C0;
  v6[11] = &unk_2844836C0;
  v5[12] = &unk_284483660;
  v5[13] = &unk_284483678;
  v6[12] = &unk_2844836C0;
  v6[13] = &unk_2844836C0;
  v5[14] = &unk_284483690;
  v5[15] = &unk_2844836A8;
  v6[14] = &unk_2844836C0;
  v6[15] = &unk_2844836C0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:16];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_naturalLanguageOptionsByDomain
{
  v6[16] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_284483510;
  v5[1] = &unk_284483540;
  v6[0] = &unk_284483528;
  v6[1] = &unk_284483558;
  v5[2] = &unk_284483570;
  v5[3] = &unk_284483588;
  v6[2] = &unk_284483528;
  v6[3] = &unk_284483528;
  v5[4] = &unk_2844835A0;
  v5[5] = &unk_2844835B8;
  v6[4] = &unk_284483528;
  v6[5] = &unk_2844835D0;
  v5[6] = &unk_284483558;
  v5[7] = &unk_2844835E8;
  v6[6] = &unk_2844835D0;
  v6[7] = &unk_2844835D0;
  v5[8] = &unk_284483600;
  v5[9] = &unk_284483618;
  v6[8] = &unk_2844835D0;
  v6[9] = &unk_2844835D0;
  v5[10] = &unk_284483630;
  v5[11] = &unk_284483648;
  v6[10] = &unk_2844835D0;
  v6[11] = &unk_284483648;
  v5[12] = &unk_284483660;
  v5[13] = &unk_284483678;
  v6[12] = &unk_2844835D0;
  v6[13] = &unk_2844835D0;
  v5[14] = &unk_284483690;
  v5[15] = &unk_2844836A8;
  v6[14] = &unk_2844835D0;
  v6[15] = &unk_284483648;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:16];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end