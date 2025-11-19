@interface PGPhotosChallengePublicEventAlgorithmWrapper
- (PGPhotosChallengePublicEventAlgorithmWrapper)initWithEvaluationContext:(id)a3;
- (unsigned)predictedQuestionStateForAssetUUID:(id)a3 publicEventMUID:(unint64_t)a4;
@end

@implementation PGPhotosChallengePublicEventAlgorithmWrapper

- (unsigned)predictedQuestionStateForAssetUUID:(id)a3 publicEventMUID:(unint64_t)a4
{
  v60[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v8 = MEMORY[0x277CD97A8];
  v60[0] = v6;
  v9 = 1;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
  v11 = [v8 fetchAssetsWithUUIDs:v10 options:v7];
  v12 = [v11 firstObject];

  if (v12)
  {
    v13 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:v12 withType:3 options:v7];
    v14 = [v13 firstObject];

    if (v14)
    {
      v15 = [(PGGraph *)self->_graph momentNodeForMoment:v14];
      if (v15)
      {
        v16 = [(CLSPublicEventManager *)self->_publicEventManager cachedPublicEventsForMuid:a4];
        if ([v16 count])
        {
          v46 = v14;
          v47 = v12;
          v48 = v7;
          v49 = v6;
          v17 = [(PGGraph *)self->_graph largeFrequentLocationNodes];
          publicEventDisambiguator = self->_publicEventDisambiguator;
          v19 = [(MANodeCollection *)[PGGraphMomentNodeCollection alloc] initWithNode:v15];
          v55 = 0;
          v56 = 0;
          v54 = 0;
          v45 = v17;
          [(PGPublicEventDisambiguator *)publicEventDisambiguator collectConsolidatedAddressesForMomentNodes:v19 largeFrequentLocationNodes:v17 consolidatedAddresses:&v56 consolidatedAddressesByMomentIdentifier:&v55 momentNodesForConsolidatedAddresses:&v54 progressBlock:&__block_literal_global_10370];
          v44 = v56;
          v20 = v55;
          v42 = v54;

          v21 = [MEMORY[0x277CBEB58] set];
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "identifier")}];
          v43 = v20;
          v23 = [v20 objectForKeyedSubscript:v22];

          v24 = [PGMeaningfulEventProcessorCache alloc];
          v25 = [v15 collection];
          v26 = [(PGMeaningfulEventProcessorCache *)v24 initWithMomentNodes:v25];

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

          v7 = v48;
          v6 = v49;
          v14 = v46;
          v12 = v47;
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
          v39 = [v14 uuid];
          *buf = 138412290;
          v59 = v39;
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
        v36 = [v12 uuid];
        *buf = 138412290;
        v59 = v36;
        v9 = 1;
        _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "[PublicEvents] No moment found for asset with uuid: %@, skipping", buf, 0xCu);
      }
    }
  }

  v40 = *MEMORY[0x277D85DE8];
  return v9;
}

- (PGPhotosChallengePublicEventAlgorithmWrapper)initWithEvaluationContext:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PGPhotosChallengePublicEventAlgorithmWrapper;
  v5 = [(PGPhotosChallengePublicEventAlgorithmWrapper *)&v21 init];
  if (v5)
  {
    v6 = [v4 graph];
    graph = v5->_graph;
    v5->_graph = v6;

    v8 = [v4 photoLibrary];
    photoLibrary = v5->_photoLibrary;
    v5->_photoLibrary = v8;

    v10 = [v4 serviceManager];
    serviceManager = v5->_serviceManager;
    v5->_serviceManager = v10;

    v12 = [v4 publicEventManager];
    publicEventManager = v5->_publicEventManager;
    v5->_publicEventManager = v12;

    v14 = [v4 loggingConnection];
    loggingConnection = v5->_loggingConnection;
    v5->_loggingConnection = v14;

    v16 = [PGPublicEventDisambiguator alloc];
    v17 = [v4 sceneTaxonomy];
    v18 = [(PGPublicEventDisambiguator *)v16 initWithSceneTaxonomy:v17 loggingConnection:v5->_loggingConnection];
    publicEventDisambiguator = v5->_publicEventDisambiguator;
    v5->_publicEventDisambiguator = v18;
  }

  return v5;
}

@end