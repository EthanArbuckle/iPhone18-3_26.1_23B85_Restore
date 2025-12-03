@interface PGPhotosChallengePublicEventAlgorithmWrapper
- (PGPhotosChallengePublicEventAlgorithmWrapper)initWithEvaluationContext:(id)context;
- (unsigned)predictedQuestionStateForAssetUUID:(id)d publicEventMUID:(unint64_t)iD;
@end

@implementation PGPhotosChallengePublicEventAlgorithmWrapper

- (unsigned)predictedQuestionStateForAssetUUID:(id)d publicEventMUID:(unint64_t)iD
{
  v60[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v8 = MEMORY[0x277CD97A8];
  v60[0] = dCopy;
  v9 = 1;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
  v11 = [v8 fetchAssetsWithUUIDs:v10 options:librarySpecificFetchOptions];
  firstObject = [v11 firstObject];

  if (firstObject)
  {
    v13 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:firstObject withType:3 options:librarySpecificFetchOptions];
    firstObject2 = [v13 firstObject];

    if (firstObject2)
    {
      v15 = [(PGGraph *)self->_graph momentNodeForMoment:firstObject2];
      if (v15)
      {
        v16 = [(CLSPublicEventManager *)self->_publicEventManager cachedPublicEventsForMuid:iD];
        if ([v16 count])
        {
          v46 = firstObject2;
          v47 = firstObject;
          v48 = librarySpecificFetchOptions;
          v49 = dCopy;
          largeFrequentLocationNodes = [(PGGraph *)self->_graph largeFrequentLocationNodes];
          publicEventDisambiguator = self->_publicEventDisambiguator;
          v19 = [(MANodeCollection *)[PGGraphMomentNodeCollection alloc] initWithNode:v15];
          v55 = 0;
          v56 = 0;
          v54 = 0;
          v45 = largeFrequentLocationNodes;
          [(PGPublicEventDisambiguator *)publicEventDisambiguator collectConsolidatedAddressesForMomentNodes:v19 largeFrequentLocationNodes:largeFrequentLocationNodes consolidatedAddresses:&v56 consolidatedAddressesByMomentIdentifier:&v55 momentNodesForConsolidatedAddresses:&v54 progressBlock:&__block_literal_global_10370];
          v44 = v56;
          v20 = v55;
          v42 = v54;

          v21 = [MEMORY[0x277CBEB58] set];
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "identifier")}];
          v43 = v20;
          v23 = [v20 objectForKeyedSubscript:v22];

          v24 = [PGMeaningfulEventProcessorCache alloc];
          collection = [v15 collection];
          v26 = [(PGMeaningfulEventProcessorCache *)v24 initWithMomentNodes:collection];

          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v27 = v23;
          v28 = [v27 countByEnumeratingWithState:&v50 objects:v57 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v51;
            do
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v51 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = [(PGPublicEventDisambiguator *)self->_publicEventDisambiguator disambiguateEvents:v16 forTimeLocationTuple:*(*(&v50 + 1) + 8 * i) momentNode:v15 graph:self->_graph meaningfulEventProcessorCache:v26 serviceManager:self->_serviceManager, v42];
                [v21 unionSet:v32];
              }

              v29 = [v27 countByEnumeratingWithState:&v50 objects:v57 count:16];
            }

            while (v29);
          }

          v33 = [v21 count];
          if (v33 == [v16 count])
          {
            v9 = 2;
          }

          else
          {
            v9 = 3;
          }

          librarySpecificFetchOptions = v48;
          dCopy = v49;
          firstObject2 = v46;
          firstObject = v47;
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        loggingConnection = self->_loggingConnection;
        v9 = 1;
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
        {
          v38 = loggingConnection;
          uuid = [firstObject2 uuid];
          *buf = 138412290;
          v59 = uuid;
          v9 = 1;
          _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_INFO, "[PublicEvents] No moment node found for moment with uuid: %@, skipping", buf, 0xCu);
        }
      }
    }

    else
    {
      v34 = self->_loggingConnection;
      v9 = 1;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = v34;
        uuid2 = [firstObject uuid];
        *buf = 138412290;
        v59 = uuid2;
        v9 = 1;
        _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "[PublicEvents] No moment found for asset with uuid: %@, skipping", buf, 0xCu);
      }
    }
  }

  v40 = *MEMORY[0x277D85DE8];
  return v9;
}

- (PGPhotosChallengePublicEventAlgorithmWrapper)initWithEvaluationContext:(id)context
{
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = PGPhotosChallengePublicEventAlgorithmWrapper;
  v5 = [(PGPhotosChallengePublicEventAlgorithmWrapper *)&v21 init];
  if (v5)
  {
    graph = [contextCopy graph];
    graph = v5->_graph;
    v5->_graph = graph;

    photoLibrary = [contextCopy photoLibrary];
    photoLibrary = v5->_photoLibrary;
    v5->_photoLibrary = photoLibrary;

    serviceManager = [contextCopy serviceManager];
    serviceManager = v5->_serviceManager;
    v5->_serviceManager = serviceManager;

    publicEventManager = [contextCopy publicEventManager];
    publicEventManager = v5->_publicEventManager;
    v5->_publicEventManager = publicEventManager;

    loggingConnection = [contextCopy loggingConnection];
    loggingConnection = v5->_loggingConnection;
    v5->_loggingConnection = loggingConnection;

    v16 = [PGPublicEventDisambiguator alloc];
    sceneTaxonomy = [contextCopy sceneTaxonomy];
    v18 = [(PGPublicEventDisambiguator *)v16 initWithSceneTaxonomy:sceneTaxonomy loggingConnection:v5->_loggingConnection];
    publicEventDisambiguator = v5->_publicEventDisambiguator;
    v5->_publicEventDisambiguator = v18;
  }

  return v5;
}

@end