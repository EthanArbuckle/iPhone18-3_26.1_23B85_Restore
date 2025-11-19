@interface PGHighlightTailorHighlightInfo
- (NSArray)childHighlights;
- (PGHighlightTailorHighlightInfo)initWithHighlight:(id)a3 graph:(id)a4 highlightTailorContext:(id)a5;
- (PGHighlightTailorHighlightInfo)initWithHighlight:(id)a3 serviceManager:(id)a4 loggingConnection:(id)a5;
- (PHFetchResult)momentFetchResult;
- (id)assetsForSharingFilter:(unsigned __int16)a3;
- (id)description;
- (id)initForTestingWithHighlight:(id)a3;
- (id)uuidsOfRequiredAssetsForSharingFilter:(unsigned __int16)a3;
- (void)setHighlightSummarizedFeaturesWithGraph:(id)a3;
@end

@implementation PGHighlightTailorHighlightInfo

- (PHFetchResult)momentFetchResult
{
  momentFetchResult = self->_momentFetchResult;
  if (!momentFetchResult)
  {
    v4 = [(PGHighlightTailorHighlightInfo *)self highlight];
    v5 = [v4 assetCollection];

    v6 = [MEMORY[0x277CD98F8] fetchMomentsInHighlight:v5 options:0];
    v7 = self->_momentFetchResult;
    self->_momentFetchResult = v6;

    momentFetchResult = self->_momentFetchResult;
  }

  return momentFetchResult;
}

- (id)assetsForSharingFilter:(unsigned __int16)a3
{
  switch(a3)
  {
    case 2u:
      v3 = [(PGHighlightTailorHighlightInfo *)self feeder];
      v4 = [v3 allItems];
      goto LABEL_7;
    case 1u:
      v3 = [(PGHighlightTailorHighlightInfo *)self feeder];
      v4 = [v3 sharedItems];
      goto LABEL_7;
    case 0u:
      v3 = [(PGHighlightTailorHighlightInfo *)self feeder];
      v4 = [v3 privateItems];
LABEL_7:
      v5 = v4;

      goto LABEL_9;
  }

  v5 = MEMORY[0x277CBEBF8];
LABEL_9:

  return v5;
}

- (id)uuidsOfRequiredAssetsForSharingFilter:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
  if (v3 == 1)
  {
    goto LABEL_5;
  }

  v6 = [(PGHighlightTailorHighlightInfo *)self keyAssetPrivateUUID];

  if (v6)
  {
    v7 = [(PGHighlightTailorHighlightInfo *)self keyAssetPrivateUUID];
    [v5 addObject:v7];
  }

  if (v3)
  {
LABEL_5:
    v8 = [(PGHighlightTailorHighlightInfo *)self keyAssetSharedUUID];

    if (v8)
    {
      v9 = [(PGHighlightTailorHighlightInfo *)self keyAssetSharedUUID];
      [v5 addObject:v9];
    }
  }

  return v5;
}

- (NSArray)childHighlights
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (self->_childHighlights || [(PGHighlightModel *)self->_highlight kind]!= 3)
  {
    goto LABEL_5;
  }

  v3 = [(PGHighlightModel *)self->_highlight assetCollection];
  v4 = [v3 photoLibrary];
  v5 = [v4 librarySpecificFetchOptions];

  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v17[0] = v6;
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v17[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [v5 setSortDescriptors:v8];

  v9 = [MEMORY[0x277CD9958] fetchChildDayGroupHighlightsForHighlight:v3 options:v5];
  if ([v9 count])
  {
    v10 = [v9 fetchedObjects];
    childHighlights = self->_childHighlights;
    self->_childHighlights = v10;

LABEL_5:
    v12 = self->_childHighlights;
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v15 = 138412290;
    v16 = v3;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Day Group Highlight does not have any child day highlights: %@", &v15, 0xCu);
  }

  v12 = 0;
LABEL_6:
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)setHighlightSummarizedFeaturesWithGraph:(id)a3
{
  v17 = a3;
  v4 = [[PGDayHighlightFeatureSummaryGenerator alloc] initWithHighlightNode:self->_highlightNode loggingConnection:self->_loggingConnection highlightTailorContext:self->_highlightTailorContext graph:v17];
  v5 = [(PGHighlightModel *)self->_highlight sharingComposition];
  if (v5 == 2)
  {
    v12 = [(PGHighlightTailorHighlightInfo *)self generateSortedSummarizedFeaturesForSharingFilter:0 graph:v17 featureSummaryGenerator:v4];
    privateSummarizedFeatures = self->_privateSummarizedFeatures;
    self->_privateSummarizedFeatures = v12;

    v14 = [(PGHighlightTailorHighlightInfo *)self generateSortedSummarizedFeaturesForSharingFilter:1 graph:v17 featureSummaryGenerator:v4];
    sharedSummarizedFeatures = self->_sharedSummarizedFeatures;
    self->_sharedSummarizedFeatures = v14;

    v9 = [(PGHighlightTailorHighlightInfo *)self generateSortedSummarizedFeaturesForSharingFilter:2 graph:v17 featureSummaryGenerator:v4];
  }

  else
  {
    if (v5 == 1)
    {
      v10 = self->_privateSummarizedFeatures;
      v9 = MEMORY[0x277CBEBF8];
      self->_privateSummarizedFeatures = MEMORY[0x277CBEBF8];

      v11 = [(PGHighlightTailorHighlightInfo *)self generateSortedSummarizedFeaturesForSharingFilter:1 graph:v17 featureSummaryGenerator:v4];
      v8 = self->_sharedSummarizedFeatures;
      self->_sharedSummarizedFeatures = v11;
    }

    else
    {
      if (v5)
      {
        goto LABEL_9;
      }

      v6 = [(PGHighlightTailorHighlightInfo *)self generateSortedSummarizedFeaturesForSharingFilter:0 graph:v17 featureSummaryGenerator:v4];
      v7 = self->_privateSummarizedFeatures;
      self->_privateSummarizedFeatures = v6;

      v8 = self->_sharedSummarizedFeatures;
      v9 = MEMORY[0x277CBEBF8];
      self->_sharedSummarizedFeatures = MEMORY[0x277CBEBF8];
    }
  }

  mixedSummarizedFeatures = self->_mixedSummarizedFeatures;
  self->_mixedSummarizedFeatures = v9;

LABEL_9:
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = PGHighlightTailorHighlightInfo;
  v4 = [(PGHighlightTailorHighlightInfo *)&v9 description];
  v5 = [(PGHighlightTailorHighlightInfo *)self highlight];
  v6 = [(PGHighlightTailorHighlightInfo *)self highlightNode];
  v7 = [v3 stringWithFormat:@"%@: %@, %@", v4, v5, v6];

  return v7;
}

- (id)initForTestingWithHighlight:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGHighlightTailorHighlightInfo;
  v6 = [(PGHighlightTailorHighlightInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_highlight, a3);
  }

  return v7;
}

- (PGHighlightTailorHighlightInfo)initWithHighlight:(id)a3 serviceManager:(id)a4 loggingConnection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v33.receiver = self;
  v33.super_class = PGHighlightTailorHighlightInfo;
  v12 = [(PGHighlightTailorHighlightInfo *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_highlight, a3);
    v14 = [v9 assetCollection];
    v15 = [v14 photoLibrary];

    v16 = [[PGHighlightTailorContext alloc] initWithPhotoLibrary:v15 graph:0 serviceManager:v10 loggingConnection:v11];
    highlightTailorContext = v13->_highlightTailorContext;
    v13->_highlightTailorContext = v16;

    v13->_promotionScore = -1.0;
    privateSummarizedFeatures = v13->_privateSummarizedFeatures;
    v32 = v10;
    v19 = MEMORY[0x277CBEBF8];
    v13->_privateSummarizedFeatures = MEMORY[0x277CBEBF8];

    sharedSummarizedFeatures = v13->_sharedSummarizedFeatures;
    v13->_sharedSummarizedFeatures = v19;

    mixedSummarizedFeatures = v13->_mixedSummarizedFeatures;
    v13->_mixedSummarizedFeatures = v19;

    objc_storeStrong(&v13->_loggingConnection, a5);
    v22 = [v15 librarySpecificFetchOptions];
    v23 = +[PGCurationManager assetPropertySetsForCuration];
    v24 = [v23 mutableCopy];

    [v24 addObject:*MEMORY[0x277CD9AE8]];
    [v22 addFetchPropertySets:v24];
    v25 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:2];
    v26 = MEMORY[0x277D27710];
    v27 = [v9 assetCollection];
    v28 = [(PGHighlightTailorContext *)v13->_highlightTailorContext curationContext];
    v29 = [v26 feederForAssetCollection:v27 options:v22 feederPrefetchOptions:v25 curationContext:v28];
    feeder = v13->_feeder;
    v13->_feeder = v29;

    v10 = v32;
  }

  return v13;
}

- (PGHighlightTailorHighlightInfo)initWithHighlight:(id)a3 graph:(id)a4 highlightTailorContext:(id)a5
{
  v73 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 loggingConnection];
  v13 = [v9 uuid];
  v14 = [PGGraphHighlightNodeCollection highlightNodeForUUID:v13 inGraph:v10];
  v15 = [v14 anyNode];

  obj = v15;
  if (!v15)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v70 = v13;
      _os_log_error_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_ERROR, "Cannot find highlight node for highlightUUID %@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v16 = [v15 eventEnrichmentMomentNodes];
  v17 = [v16 temporarySet];

  if (![v17 count])
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v70 = obj;
      v71 = 2112;
      v72 = v13;
      _os_log_error_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_ERROR, "No Moment nodes connected to highlight node %@ with highlightUUID %@", buf, 0x16u);
    }

LABEL_18:
    v40 = 0;
    goto LABEL_25;
  }

  v67.receiver = self;
  v67.super_class = PGHighlightTailorHighlightInfo;
  v18 = [(PGHighlightTailorHighlightInfo *)&v67 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_highlight, a3);
    objc_storeStrong(&v19->_highlightTailorContext, a5);
    v19->_promotionScore = -1.0;
    privateSummarizedFeatures = v19->_privateSummarizedFeatures;
    v21 = v17;
    v22 = MEMORY[0x277CBEBF8];
    v19->_privateSummarizedFeatures = MEMORY[0x277CBEBF8];

    sharedSummarizedFeatures = v19->_sharedSummarizedFeatures;
    v19->_sharedSummarizedFeatures = v22;

    mixedSummarizedFeatures = v19->_mixedSummarizedFeatures;
    v19->_mixedSummarizedFeatures = v22;

    objc_storeStrong(&v19->_loggingConnection, v12);
    v25 = obj;
    objc_storeStrong(&v19->_highlightNode, obj);
    v59 = v21;
    objc_storeStrong(&v19->_momentNodes, v21);
    v60 = v13;
    v61 = v12;
    if ([(PGGraphHighlightNode *)v19->_highlightNode isTrip])
    {
      v56 = v11;
      v57 = v10;
      v58 = v9;
      v26 = v19->_highlightNode;
      v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v55 = v26;
      v28 = [(PGGraphHighlightNode *)v26 highlightNodes];
      v29 = [v28 countByEnumeratingWithState:&v63 objects:v68 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v64;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v64 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v63 + 1) + 8 * i);
            v34 = [v33 eventEnrichmentMomentNodes];
            v35 = [v34 meaningNodes];
            v36 = [v35 meaningLabels];
            v37 = [v33 localIdentifier];
            [(NSDictionary *)v27 setObject:v36 forKeyedSubscript:v37];
          }

          v30 = [v28 countByEnumeratingWithState:&v63 objects:v68 count:16];
        }

        while (v30);
      }

      meaningLabelsByChildHighlightUUID = v19->_meaningLabelsByChildHighlightUUID;
      v19->_meaningLabelsByChildHighlightUUID = v27;

      v10 = v57;
      v9 = v58;
      meaningLabels = v55;
      v11 = v56;
      v25 = obj;
    }

    else
    {
      v41 = [obj meaningLabels];
      meaningLabels = v19->_meaningLabels;
      v19->_meaningLabels = v41;
    }

    v19->_petIsPresent = [v25 petIsPresent];
    if (![(PGGraphHighlightNode *)v19->_highlightNode isAggregation]&& ![(PGGraphHighlightNode *)v19->_highlightNode isTrip])
    {
      [(PGHighlightTailorHighlightInfo *)v19 setHighlightSummarizedFeaturesWithGraph:v10];
    }

    v42 = [v11 photoLibrary];
    v43 = [v42 librarySpecificFetchOptions];

    v44 = +[PGCurationManager assetPropertySetsForCuration];
    v45 = [v44 mutableCopy];

    [v45 addObject:*MEMORY[0x277CD9AE8]];
    [v43 addFetchPropertySets:v45];
    v46 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:2];
    v47 = MEMORY[0x277D27710];
    v48 = [v9 assetCollection];
    [v11 curationContext];
    v50 = v49 = v11;
    v51 = [v47 feederForAssetCollection:v48 options:v43 feederPrefetchOptions:v46 curationContext:v50];
    feeder = v19->_feeder;
    v19->_feeder = v51;

    v11 = v49;
    v13 = v60;
    v12 = v61;
    v17 = v59;
  }

  self = v19;

  v40 = self;
LABEL_25:

  v53 = *MEMORY[0x277D85DE8];
  return v40;
}

@end