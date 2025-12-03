@interface PGHighlightTailorHighlightInfo
- (NSArray)childHighlights;
- (PGHighlightTailorHighlightInfo)initWithHighlight:(id)highlight graph:(id)graph highlightTailorContext:(id)context;
- (PGHighlightTailorHighlightInfo)initWithHighlight:(id)highlight serviceManager:(id)manager loggingConnection:(id)connection;
- (PHFetchResult)momentFetchResult;
- (id)assetsForSharingFilter:(unsigned __int16)filter;
- (id)description;
- (id)initForTestingWithHighlight:(id)highlight;
- (id)uuidsOfRequiredAssetsForSharingFilter:(unsigned __int16)filter;
- (void)setHighlightSummarizedFeaturesWithGraph:(id)graph;
@end

@implementation PGHighlightTailorHighlightInfo

- (PHFetchResult)momentFetchResult
{
  momentFetchResult = self->_momentFetchResult;
  if (!momentFetchResult)
  {
    highlight = [(PGHighlightTailorHighlightInfo *)self highlight];
    assetCollection = [highlight assetCollection];

    v6 = [MEMORY[0x277CD98F8] fetchMomentsInHighlight:assetCollection options:0];
    v7 = self->_momentFetchResult;
    self->_momentFetchResult = v6;

    momentFetchResult = self->_momentFetchResult;
  }

  return momentFetchResult;
}

- (id)assetsForSharingFilter:(unsigned __int16)filter
{
  switch(filter)
  {
    case 2u:
      feeder = [(PGHighlightTailorHighlightInfo *)self feeder];
      allItems = [feeder allItems];
      goto LABEL_7;
    case 1u:
      feeder = [(PGHighlightTailorHighlightInfo *)self feeder];
      allItems = [feeder sharedItems];
      goto LABEL_7;
    case 0u:
      feeder = [(PGHighlightTailorHighlightInfo *)self feeder];
      allItems = [feeder privateItems];
LABEL_7:
      v5 = allItems;

      goto LABEL_9;
  }

  v5 = MEMORY[0x277CBEBF8];
LABEL_9:

  return v5;
}

- (id)uuidsOfRequiredAssetsForSharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
  if (filterCopy == 1)
  {
    goto LABEL_5;
  }

  keyAssetPrivateUUID = [(PGHighlightTailorHighlightInfo *)self keyAssetPrivateUUID];

  if (keyAssetPrivateUUID)
  {
    keyAssetPrivateUUID2 = [(PGHighlightTailorHighlightInfo *)self keyAssetPrivateUUID];
    [v5 addObject:keyAssetPrivateUUID2];
  }

  if (filterCopy)
  {
LABEL_5:
    keyAssetSharedUUID = [(PGHighlightTailorHighlightInfo *)self keyAssetSharedUUID];

    if (keyAssetSharedUUID)
    {
      keyAssetSharedUUID2 = [(PGHighlightTailorHighlightInfo *)self keyAssetSharedUUID];
      [v5 addObject:keyAssetSharedUUID2];
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

  assetCollection = [(PGHighlightModel *)self->_highlight assetCollection];
  photoLibrary = [assetCollection photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v17[0] = v6;
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v17[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v8];

  v9 = [MEMORY[0x277CD9958] fetchChildDayGroupHighlightsForHighlight:assetCollection options:librarySpecificFetchOptions];
  if ([v9 count])
  {
    fetchedObjects = [v9 fetchedObjects];
    childHighlights = self->_childHighlights;
    self->_childHighlights = fetchedObjects;

LABEL_5:
    v12 = self->_childHighlights;
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v15 = 138412290;
    v16 = assetCollection;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Day Group Highlight does not have any child day highlights: %@", &v15, 0xCu);
  }

  v12 = 0;
LABEL_6:
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)setHighlightSummarizedFeaturesWithGraph:(id)graph
{
  graphCopy = graph;
  v4 = [[PGDayHighlightFeatureSummaryGenerator alloc] initWithHighlightNode:self->_highlightNode loggingConnection:self->_loggingConnection highlightTailorContext:self->_highlightTailorContext graph:graphCopy];
  sharingComposition = [(PGHighlightModel *)self->_highlight sharingComposition];
  if (sharingComposition == 2)
  {
    v12 = [(PGHighlightTailorHighlightInfo *)self generateSortedSummarizedFeaturesForSharingFilter:0 graph:graphCopy featureSummaryGenerator:v4];
    privateSummarizedFeatures = self->_privateSummarizedFeatures;
    self->_privateSummarizedFeatures = v12;

    v14 = [(PGHighlightTailorHighlightInfo *)self generateSortedSummarizedFeaturesForSharingFilter:1 graph:graphCopy featureSummaryGenerator:v4];
    sharedSummarizedFeatures = self->_sharedSummarizedFeatures;
    self->_sharedSummarizedFeatures = v14;

    v9 = [(PGHighlightTailorHighlightInfo *)self generateSortedSummarizedFeaturesForSharingFilter:2 graph:graphCopy featureSummaryGenerator:v4];
  }

  else
  {
    if (sharingComposition == 1)
    {
      v10 = self->_privateSummarizedFeatures;
      v9 = MEMORY[0x277CBEBF8];
      self->_privateSummarizedFeatures = MEMORY[0x277CBEBF8];

      v11 = [(PGHighlightTailorHighlightInfo *)self generateSortedSummarizedFeaturesForSharingFilter:1 graph:graphCopy featureSummaryGenerator:v4];
      v8 = self->_sharedSummarizedFeatures;
      self->_sharedSummarizedFeatures = v11;
    }

    else
    {
      if (sharingComposition)
      {
        goto LABEL_9;
      }

      v6 = [(PGHighlightTailorHighlightInfo *)self generateSortedSummarizedFeaturesForSharingFilter:0 graph:graphCopy featureSummaryGenerator:v4];
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
  highlight = [(PGHighlightTailorHighlightInfo *)self highlight];
  highlightNode = [(PGHighlightTailorHighlightInfo *)self highlightNode];
  v7 = [v3 stringWithFormat:@"%@: %@, %@", v4, highlight, highlightNode];

  return v7;
}

- (id)initForTestingWithHighlight:(id)highlight
{
  highlightCopy = highlight;
  v9.receiver = self;
  v9.super_class = PGHighlightTailorHighlightInfo;
  v6 = [(PGHighlightTailorHighlightInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_highlight, highlight);
  }

  return v7;
}

- (PGHighlightTailorHighlightInfo)initWithHighlight:(id)highlight serviceManager:(id)manager loggingConnection:(id)connection
{
  highlightCopy = highlight;
  managerCopy = manager;
  connectionCopy = connection;
  v33.receiver = self;
  v33.super_class = PGHighlightTailorHighlightInfo;
  v12 = [(PGHighlightTailorHighlightInfo *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_highlight, highlight);
    assetCollection = [highlightCopy assetCollection];
    photoLibrary = [assetCollection photoLibrary];

    v16 = [[PGHighlightTailorContext alloc] initWithPhotoLibrary:photoLibrary graph:0 serviceManager:managerCopy loggingConnection:connectionCopy];
    highlightTailorContext = v13->_highlightTailorContext;
    v13->_highlightTailorContext = v16;

    v13->_promotionScore = -1.0;
    privateSummarizedFeatures = v13->_privateSummarizedFeatures;
    v32 = managerCopy;
    v19 = MEMORY[0x277CBEBF8];
    v13->_privateSummarizedFeatures = MEMORY[0x277CBEBF8];

    sharedSummarizedFeatures = v13->_sharedSummarizedFeatures;
    v13->_sharedSummarizedFeatures = v19;

    mixedSummarizedFeatures = v13->_mixedSummarizedFeatures;
    v13->_mixedSummarizedFeatures = v19;

    objc_storeStrong(&v13->_loggingConnection, connection);
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v23 = +[PGCurationManager assetPropertySetsForCuration];
    v24 = [v23 mutableCopy];

    [v24 addObject:*MEMORY[0x277CD9AE8]];
    [librarySpecificFetchOptions addFetchPropertySets:v24];
    v25 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:2];
    v26 = MEMORY[0x277D27710];
    assetCollection2 = [highlightCopy assetCollection];
    curationContext = [(PGHighlightTailorContext *)v13->_highlightTailorContext curationContext];
    v29 = [v26 feederForAssetCollection:assetCollection2 options:librarySpecificFetchOptions feederPrefetchOptions:v25 curationContext:curationContext];
    feeder = v13->_feeder;
    v13->_feeder = v29;

    managerCopy = v32;
  }

  return v13;
}

- (PGHighlightTailorHighlightInfo)initWithHighlight:(id)highlight graph:(id)graph highlightTailorContext:(id)context
{
  v73 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  graphCopy = graph;
  contextCopy = context;
  loggingConnection = [contextCopy loggingConnection];
  uuid = [highlightCopy uuid];
  v14 = [PGGraphHighlightNodeCollection highlightNodeForUUID:uuid inGraph:graphCopy];
  anyNode = [v14 anyNode];

  obj = anyNode;
  if (!anyNode)
  {
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v70 = uuid;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Cannot find highlight node for highlightUUID %@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  eventEnrichmentMomentNodes = [anyNode eventEnrichmentMomentNodes];
  temporarySet = [eventEnrichmentMomentNodes temporarySet];

  if (![temporarySet count])
  {
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v70 = obj;
      v71 = 2112;
      v72 = uuid;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "No Moment nodes connected to highlight node %@ with highlightUUID %@", buf, 0x16u);
    }

LABEL_18:
    selfCopy = 0;
    goto LABEL_25;
  }

  v67.receiver = self;
  v67.super_class = PGHighlightTailorHighlightInfo;
  v18 = [(PGHighlightTailorHighlightInfo *)&v67 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_highlight, highlight);
    objc_storeStrong(&v19->_highlightTailorContext, context);
    v19->_promotionScore = -1.0;
    privateSummarizedFeatures = v19->_privateSummarizedFeatures;
    v21 = temporarySet;
    v22 = MEMORY[0x277CBEBF8];
    v19->_privateSummarizedFeatures = MEMORY[0x277CBEBF8];

    sharedSummarizedFeatures = v19->_sharedSummarizedFeatures;
    v19->_sharedSummarizedFeatures = v22;

    mixedSummarizedFeatures = v19->_mixedSummarizedFeatures;
    v19->_mixedSummarizedFeatures = v22;

    objc_storeStrong(&v19->_loggingConnection, loggingConnection);
    v25 = obj;
    objc_storeStrong(&v19->_highlightNode, obj);
    v59 = v21;
    objc_storeStrong(&v19->_momentNodes, v21);
    v60 = uuid;
    v61 = loggingConnection;
    if ([(PGGraphHighlightNode *)v19->_highlightNode isTrip])
    {
      v56 = contextCopy;
      v57 = graphCopy;
      v58 = highlightCopy;
      v26 = v19->_highlightNode;
      v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v55 = v26;
      highlightNodes = [(PGGraphHighlightNode *)v26 highlightNodes];
      v29 = [highlightNodes countByEnumeratingWithState:&v63 objects:v68 count:16];
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
              objc_enumerationMutation(highlightNodes);
            }

            v33 = *(*(&v63 + 1) + 8 * i);
            eventEnrichmentMomentNodes2 = [v33 eventEnrichmentMomentNodes];
            meaningNodes = [eventEnrichmentMomentNodes2 meaningNodes];
            meaningLabels = [meaningNodes meaningLabels];
            localIdentifier = [v33 localIdentifier];
            [(NSDictionary *)v27 setObject:meaningLabels forKeyedSubscript:localIdentifier];
          }

          v30 = [highlightNodes countByEnumeratingWithState:&v63 objects:v68 count:16];
        }

        while (v30);
      }

      meaningLabelsByChildHighlightUUID = v19->_meaningLabelsByChildHighlightUUID;
      v19->_meaningLabelsByChildHighlightUUID = v27;

      graphCopy = v57;
      highlightCopy = v58;
      meaningLabels = v55;
      contextCopy = v56;
      v25 = obj;
    }

    else
    {
      meaningLabels2 = [obj meaningLabels];
      meaningLabels = v19->_meaningLabels;
      v19->_meaningLabels = meaningLabels2;
    }

    v19->_petIsPresent = [v25 petIsPresent];
    if (![(PGGraphHighlightNode *)v19->_highlightNode isAggregation]&& ![(PGGraphHighlightNode *)v19->_highlightNode isTrip])
    {
      [(PGHighlightTailorHighlightInfo *)v19 setHighlightSummarizedFeaturesWithGraph:graphCopy];
    }

    photoLibrary = [contextCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v44 = +[PGCurationManager assetPropertySetsForCuration];
    v45 = [v44 mutableCopy];

    [v45 addObject:*MEMORY[0x277CD9AE8]];
    [librarySpecificFetchOptions addFetchPropertySets:v45];
    v46 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:2];
    v47 = MEMORY[0x277D27710];
    assetCollection = [highlightCopy assetCollection];
    [contextCopy curationContext];
    v50 = v49 = contextCopy;
    v51 = [v47 feederForAssetCollection:assetCollection options:librarySpecificFetchOptions feederPrefetchOptions:v46 curationContext:v50];
    feeder = v19->_feeder;
    v19->_feeder = v51;

    contextCopy = v49;
    uuid = v60;
    loggingConnection = v61;
    temporarySet = v59;
  }

  self = v19;

  selfCopy = self;
LABEL_25:

  v53 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end