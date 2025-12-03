@interface PGMomentFeatureSpecificationFactory
- (BOOL)_vskIndexIsFullClusteredForCurrentEmbeddingVersionWithPhotoLibrary:(id)library;
- (PGMomentFeatureSpecificationFactory)initWithSceneTaxonomy:(id)taxonomy photoLibrary:(id)library loggingConnection:(id)connection;
- (id)_CLIPTrendsSpecificationsWithProgress:(id)progress;
- (id)_beachROISpecification;
- (id)_excitementAudioSpecification;
- (id)_foodSpecification;
- (id)_generateSceneAssetFilterForTrendsConfiguration:(id)configuration;
- (id)_mountainROISpecification;
- (id)_natureROISpecification;
- (id)_peopleSpecification;
- (id)_performRetrievalSearchWithQueries:(id)queries retrievalThreshold:(int64_t)threshold;
- (id)_petPersonSpecification;
- (id)_petSpecification;
- (id)_socialGroupSpecification;
- (id)_trendsSpecifications;
- (id)_unifiedSearchTrendsFeatureSpecificationsForTrendsConfigurations:(id)configurations withProgress:(id)progress;
- (id)_urbanROISpecification;
- (id)_v3TrendsFeatureSpecificationsForTrendsConfigurations:(id)configurations withProgress:(id)progress;
- (id)_waterROISpecification;
- (id)allSupportedFeatureTypes;
- (id)defaultPeopleAssetFilter;
- (id)specificationsForFeatureType:(unint64_t)type progressReporter:(id)reporter;
@end

@implementation PGMomentFeatureSpecificationFactory

- (id)_foodSpecification
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [PGAssetCollectionFeatureDefinition alloc];
  v3 = +[PGCustomFoodieAssetFilter name];
  v13 = v3;
  v4 = objc_alloc_init(PGCustomFoodieAssetFilter);
  v14[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v6 = [(PGAssetCollectionFeatureDefinition *)v2 initWithAssetFilterByName:v5];

  v7 = [PGAssetCollectionFeatureSpecification alloc];
  v12 = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v9 = [(PGAssetCollectionFeatureSpecification *)v7 initWithFeatureType:13 featureLabel:@"Food" featureDefinitions:v8 shouldRunAtMomentIngest:1 shouldCreateFeatureNodeIfNeeded:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_excitementAudioSpecification
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCAB58]);
  [v2 addIndex:8];
  [v2 addIndex:4];
  [v2 addIndex:1];
  v3 = [[PGAudioAssetFilter alloc] initWithAudioClassifications:v2];
  v4 = [PGAssetCollectionFeatureDefinition alloc];
  v5 = +[PGAudioAssetFilter name];
  v14 = v5;
  v15[0] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v7 = [(PGAssetCollectionFeatureDefinition *)v4 initWithAssetFilterByName:v6];

  v8 = [PGAssetCollectionFeatureSpecification alloc];
  v13 = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v10 = [(PGAssetCollectionFeatureSpecification *)v8 initWithFeatureType:12 featureLabel:@"ExcitementAudio" featureDefinitions:v9 shouldRunAtMomentIngest:1 shouldCreateFeatureNodeIfNeeded:1];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_petPersonSpecification
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [[PGPeopleAssetFilter alloc] initForPetWithMaximumNumberOfOtherFacesPresent:-1];
  v3 = [PGAssetCollectionFeatureDefinition alloc];
  v4 = +[PGPeopleAssetFilter name];
  v13 = v4;
  v14[0] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v6 = [(PGAssetCollectionFeatureDefinition *)v3 initWithAssetFilterByName:v5];

  v7 = [PGAssetCollectionFeatureSpecification alloc];
  v12 = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v9 = [(PGAssetCollectionFeatureSpecification *)v7 initWithFeatureType:11 featureLabel:0 featureDefinitions:v8 shouldRunAtMomentIngest:0 shouldCreateFeatureNodeIfNeeded:0];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_socialGroupSpecification
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(PGSocialGroupAssetFilter);
  v3 = [PGAssetCollectionFeatureDefinition alloc];
  v4 = +[PGSocialGroupAssetFilter name];
  v13 = v4;
  v14[0] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v6 = [(PGAssetCollectionFeatureDefinition *)v3 initWithAssetFilterByName:v5];

  v7 = [PGAssetCollectionFeatureSpecification alloc];
  v12 = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v9 = [(PGAssetCollectionFeatureSpecification *)v7 initWithFeatureType:2 featureLabel:0 featureDefinitions:v8 shouldRunAtMomentIngest:0 shouldCreateFeatureNodeIfNeeded:0];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_peopleSpecification
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = [PGAssetCollectionFeatureDefinition alloc];
  v4 = +[PGPeopleAssetFilter name];
  v14 = v4;
  defaultPeopleAssetFilter = [(PGMomentFeatureSpecificationFactory *)self defaultPeopleAssetFilter];
  v15[0] = defaultPeopleAssetFilter;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v7 = [(PGAssetCollectionFeatureDefinition *)v3 initWithAssetFilterByName:v6];

  v8 = [PGAssetCollectionFeatureSpecification alloc];
  v13 = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v10 = [(PGAssetCollectionFeatureSpecification *)v8 initWithFeatureType:1 featureLabel:0 featureDefinitions:v9 shouldRunAtMomentIngest:1 shouldCreateFeatureNodeIfNeeded:0];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)defaultPeopleAssetFilter
{
  v2 = [[PGPeopleAssetFilter alloc] initWithMaximumNumberOfOtherFacesPresent:4];

  return v2;
}

- (id)_natureROISpecification
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [[PGSceneAssetFilter alloc] initWithPositiveScenes:&unk_284486210 negativeScenes:&unk_284486228 sceneTaxonomy:self->_sceneTaxonomy];
  if (v3)
  {
    v4 = [PGAssetCollectionFeatureDefinition alloc];
    v5 = +[PGSceneAssetFilter name];
    v16 = v5;
    v17[0] = v3;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [(PGAssetCollectionFeatureDefinition *)v4 initWithAssetFilterByName:v6];

    v8 = [PGAssetCollectionFeatureSpecification alloc];
    v15 = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v10 = [(PGAssetCollectionFeatureSpecification *)v8 initWithFeatureType:5 featureLabel:0 featureDefinitions:v9 shouldRunAtMomentIngest:1 shouldCreateFeatureNodeIfNeeded:1];
  }

  else
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      *v14 = 0;
      _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "Nature ROI specification has an invalid scene asset filter, disabling", v14, 2u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_mountainROISpecification
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [PGSceneAssetFilter alloc];
  v4 = [(PGSceneAssetFilter *)v3 initWithPositiveScenes:&unk_2844861F8 negativeScenes:MEMORY[0x277CBEBF8] sceneTaxonomy:self->_sceneTaxonomy];
  if (v4)
  {
    v5 = [PGAssetCollectionFeatureDefinition alloc];
    v6 = +[PGSceneAssetFilter name];
    v17 = v6;
    v18[0] = v4;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v8 = [(PGAssetCollectionFeatureDefinition *)v5 initWithAssetFilterByName:v7];

    v9 = [PGAssetCollectionFeatureSpecification alloc];
    v16 = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v11 = [(PGAssetCollectionFeatureSpecification *)v9 initWithFeatureType:4 featureLabel:0 featureDefinitions:v10 shouldRunAtMomentIngest:1 shouldCreateFeatureNodeIfNeeded:1];
  }

  else
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      *v15 = 0;
      _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "Mountain ROI specification has an invalid scene asset filter, disabling", v15, 2u);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_waterROISpecification
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [[PGSceneAssetFilter alloc] initWithPositiveScenes:&unk_2844861C8 negativeScenes:&unk_2844861E0 sceneTaxonomy:self->_sceneTaxonomy];
  if (v3)
  {
    v4 = [PGAssetCollectionFeatureDefinition alloc];
    v5 = +[PGSceneAssetFilter name];
    v16 = v5;
    v17[0] = v3;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [(PGAssetCollectionFeatureDefinition *)v4 initWithAssetFilterByName:v6];

    v8 = [PGAssetCollectionFeatureSpecification alloc];
    v15 = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v10 = [(PGAssetCollectionFeatureSpecification *)v8 initWithFeatureType:7 featureLabel:0 featureDefinitions:v9 shouldRunAtMomentIngest:1 shouldCreateFeatureNodeIfNeeded:1];
  }

  else
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      *v14 = 0;
      _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "Water ROI specification has an invalid scene asset filter, disabling", v14, 2u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_urbanROISpecification
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [PGSceneAssetFilter alloc];
  v4 = [(PGSceneAssetFilter *)v3 initWithPositiveScenes:&unk_2844861B0 negativeScenes:MEMORY[0x277CBEBF8] sceneTaxonomy:self->_sceneTaxonomy];
  if (v4)
  {
    v5 = [PGAssetCollectionFeatureDefinition alloc];
    v6 = +[PGSceneAssetFilter name];
    v17 = v6;
    v18[0] = v4;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v8 = [(PGAssetCollectionFeatureDefinition *)v5 initWithAssetFilterByName:v7];

    v9 = [PGAssetCollectionFeatureSpecification alloc];
    v16 = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v11 = [(PGAssetCollectionFeatureSpecification *)v9 initWithFeatureType:6 featureLabel:0 featureDefinitions:v10 shouldRunAtMomentIngest:1 shouldCreateFeatureNodeIfNeeded:1];
  }

  else
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      *v15 = 0;
      _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "Urban ROI specification has an invalid scene asset filter, disabling", v15, 2u);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_beachROISpecification
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [PGSceneAssetFilter alloc];
  v4 = [(PGSceneAssetFilter *)v3 initWithPositiveScenes:&unk_284486198 negativeScenes:MEMORY[0x277CBEBF8] sceneTaxonomy:self->_sceneTaxonomy];
  if (v4)
  {
    v5 = [PGAssetCollectionFeatureDefinition alloc];
    v6 = +[PGSceneAssetFilter name];
    v17 = v6;
    v18[0] = v4;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v8 = [(PGAssetCollectionFeatureDefinition *)v5 initWithAssetFilterByName:v7];

    v9 = [PGAssetCollectionFeatureSpecification alloc];
    v16 = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v11 = [(PGAssetCollectionFeatureSpecification *)v9 initWithFeatureType:3 featureLabel:0 featureDefinitions:v10 shouldRunAtMomentIngest:1 shouldCreateFeatureNodeIfNeeded:1];
  }

  else
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      *v15 = 0;
      _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "Beach ROI specification has an invalid scene asset filter, disabling", v15, 2u);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_petSpecification
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [[PGSceneAssetFilter alloc] initWithPositiveScenes:&unk_284486168 negativeScenes:&unk_284486180 sceneTaxonomy:self->_sceneTaxonomy];
  if (v3)
  {
    v4 = [PGAssetCollectionFeatureDefinition alloc];
    v5 = +[PGSceneAssetFilter name];
    v16 = v5;
    v17[0] = v3;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [(PGAssetCollectionFeatureDefinition *)v4 initWithAssetFilterByName:v6];

    v8 = [PGAssetCollectionFeatureSpecification alloc];
    v15 = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v10 = [(PGAssetCollectionFeatureSpecification *)v8 initWithFeatureType:8 featureLabel:@"Pet" featureDefinitions:v9 shouldRunAtMomentIngest:1 shouldCreateFeatureNodeIfNeeded:1];
  }

  else
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      *v14 = 0;
      _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "Pet specification has an invalid scene asset filter, disabling", v14, 2u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_vskIndexIsFullClusteredForCurrentEmbeddingVersionWithPhotoLibrary:(id)library
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD9878];
  libraryCopy = library;
  v6 = objc_alloc_init(v4);
  [v6 setUseJustInTimeGraphAvailability:0];
  v13 = 0;
  v7 = [libraryCopy featureAvailabilityForFeature:1 readOptions:v6 error:&v13];

  v8 = v13;
  if (v7)
  {
    if ([v7 vuIndexIsFullClustered])
    {
      hasConsistentMediaAnalysisImageVersion = [v7 hasConsistentMediaAnalysisImageVersion];
    }

    else
    {
      hasConsistentMediaAnalysisImageVersion = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v15) = hasConsistentMediaAnalysisImageVersion;
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "VSK Search Index is clustered with embeddings matching the most recent MAD model version = %d", buf, 8u);
    }
  }

  else
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGMemoryProcessedScenesAndFacesCache] Failed to read feature availability with error: %@", buf, 0xCu);
    }

    LOBYTE(hasConsistentMediaAnalysisImageVersion) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return hasConsistentMediaAnalysisImageVersion;
}

- (id)_generateSceneAssetFilterForTrendsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  positiveScenes = [configurationCopy positiveScenes];
  negativeScenes = [configurationCopy negativeScenes];

  v7 = [PGSceneAssetFilter alloc];
  v8 = [(PGSceneAssetFilter *)v7 initWithPositiveScenes:positiveScenes positiveSceneCustomSignalModelBlock:&__block_literal_global_221 secondaryPositiveScenes:MEMORY[0x277CBEBF8] positiveDominantScenes:MEMORY[0x277CBEBF8] positiveDominantSceneCustomSignalModelBlock:&__block_literal_global_221 positiveSemDevScenes:MEMORY[0x277CBEBF8] negativeScenes:negativeScenes sceneTaxonomy:self->_sceneTaxonomy];

  return v8;
}

- (id)_v3TrendsFeatureSpecificationsForTrendsConfigurations:(id)configurations withProgress:(id)progress
{
  v80 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  progressCopy = progress;
  v7 = [configurationsCopy count];
  if (v7)
  {
    v8 = v7;
    v9 = 0x277CBE000uLL;
    v55 = configurationsCopy;
    v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v10 = configurationsCopy;
    v11 = [v10 countByEnumeratingWithState:&v69 objects:v77 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = 1.0 / v8;
      v15 = *v70;
      v16 = 0.0;
      *&v12 = 138412290;
      v54 = v12;
      v58 = *v70;
      v60 = v10;
LABEL_4:
      v17 = 0;
      v59 = v13;
      while (1)
      {
        if (*v70 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v69 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        featureLabel = [v18 featureLabel];
        positiveQueries = [v18 positiveQueries];
        v22 = positiveQueries;
        if (!featureLabel || ![positiveQueries count])
        {
          goto LABEL_37;
        }

        v63 = featureLabel;
        v64 = v22;
        context = v19;
        v23 = objc_alloc_init(*(v9 + 2840));
        useAveragedEmbeddingAsNumber = [v18 useAveragedEmbeddingAsNumber];
        bOOLValue = [useAveragedEmbeddingAsNumber BOOLValue];

        if (!bOOLValue)
        {
          break;
        }

        v26 = [MEMORY[0x277D3CAB0] encodeTextAverage:v64 textEncoder:self->_CLIPTextEncoder];
        v27 = 0x27887A000;
        if (v26)
        {
          v28 = v26;
          [v23 addObject:v26];
LABEL_22:

          v16 = v14 + v16;
          if ([progressCopy isCancelledWithProgress:v16])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v79 = 450;
              *&v79[4] = 2080;
              *&v79[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMomentFeatureSpecificationFactory.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            objc_autoreleasePoolPop(context);
            v50 = 0;
            configurationsCopy = v55;
            v49 = v56;
            goto LABEL_49;
          }

          cosineSimilarityThresholdByVersion = [v18 cosineSimilarityThresholdByVersion];
          v36 = [objc_alloc(*(v27 + 1704)) initWithPositiveQueryEmbeddings:v23 cosineSimilarityThresholdByVersion:cosineSimilarityThresholdByVersion];
          if (v36)
          {
            v37 = [(PGMomentFeatureSpecificationFactory *)self _generateSceneAssetFilterForTrendsConfiguration:v18];
            v38 = [PGAssetCollectionFeatureDefinition alloc];
            name = [*(v27 + 1704) name];
            v74[0] = name;
            v75[0] = v36;
            v40 = +[PGSceneAssetFilter name];
            v74[1] = v40;
            v75[1] = v37;
            v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
            v42 = [(PGAssetCollectionFeatureDefinition *)v38 initWithAssetFilterByName:v41];

            v43 = [PGAssetCollectionFeatureSpecification alloc];
            v73 = v42;
            v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
            v45 = [(PGAssetCollectionFeatureSpecification *)v43 initWithFeatureType:10 featureLabel:v63 featureDefinitions:v44 shouldRunAtMomentIngest:1 shouldCreateFeatureNodeIfNeeded:1];

            if (v45)
            {
              [v56 addObject:v45];
            }

            v15 = v58;
            v13 = v59;
            v19 = context;
          }

          else
          {
            loggingConnection = self->_loggingConnection;
            v19 = context;
            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
            {
              *buf = v54;
              *v79 = v63;
              _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "Trend configuration '%@' has an invalid CLIP asset filter, disabling", buf, 0xCu);
            }
          }

          featureLabel = v63;
          v9 = 0x277CBE000;
          v10 = v60;
          goto LABEL_36;
        }

        v47 = self->_loggingConnection;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22F0FC000, v47, OS_LOG_TYPE_ERROR, "[PGMomentFeatureSpecificationFactory] CLIP text encoder failed", buf, 2u);
        }

LABEL_32:
        v19 = context;
        featureLabel = v63;
LABEL_36:

        v22 = v64;
LABEL_37:

        objc_autoreleasePoolPop(v19);
        if (++v17 == v13)
        {
          v13 = [v10 countByEnumeratingWithState:&v69 objects:v77 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          goto LABEL_39;
        }
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v28 = v64;
      v29 = [v28 countByEnumeratingWithState:&v65 objects:v76 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v66;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v66 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v65 + 1) + 8 * i);
            v34 = [MEMORY[0x277D3CAB0] encodeText:v33 textEncoder:{self->_CLIPTextEncoder, v54}];
            if (!v34)
            {
              v46 = self->_loggingConnection;
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                *buf = v54;
                *v79 = v33;
                _os_log_error_impl(&dword_22F0FC000, v46, OS_LOG_TYPE_ERROR, "[PGMomentFeatureSpecificationFactory] CLIP text encoder failed for text query %@", buf, 0xCu);
              }

              v13 = v59;
              v10 = v60;
              v9 = 0x277CBE000;
              v15 = v58;
              goto LABEL_32;
            }

            v35 = v34;
            [v23 addObject:v34];
          }

          v30 = [v28 countByEnumeratingWithState:&v65 objects:v76 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }

        v13 = v59;
        v10 = v60;
        v15 = v58;
      }

      v27 = 0x27887A000uLL;
      goto LABEL_22;
    }

LABEL_39:

    v49 = v56;
    v50 = v56;
    configurationsCopy = v55;
LABEL_49:
  }

  else
  {
    v51 = self->_loggingConnection;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v51, OS_LOG_TYPE_ERROR, "[PGMomentFeatureSpecificationFactory] No CLIP Trends configurations returned", buf, 2u);
    }

    if ([progressCopy isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v79 = 406;
      *&v79[4] = 2080;
      *&v79[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMomentFeatureSpecificationFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v50 = 0;
  }

  v52 = *MEMORY[0x277D85DE8];

  return v50;
}

- (id)_performRetrievalSearchWithQueries:(id)queries retrievalThreshold:(int64_t)threshold
{
  queriesCopy = queries;
  if ([queriesCopy count])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__49689;
    v23 = __Block_byref_object_dispose__49690;
    v24 = 0;
    v7 = dispatch_group_create();
    dispatch_group_enter(v7);
    embeddingsBasedAssetFetcher = self->_embeddingsBasedAssetFetcher;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __93__PGMomentFeatureSpecificationFactory__performRetrievalSearchWithQueries_retrievalThreshold___block_invoke;
    v15[3] = &unk_278885430;
    v17 = &v19;
    thresholdCopy = threshold;
    v15[4] = self;
    v9 = v7;
    v16 = v9;
    [(PNBackgroundMemoriesEmbeddingSearcher *)embeddingsBasedAssetFetcher performSearchWithQueries:queriesCopy retrievalThreshold:threshold completionHandler:v15];
    v10 = dispatch_time(0, maximumCLIPTrendsEmbeddingsSearchRetrievalTime);
    if (dispatch_group_wait(v9, v10))
    {
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGMomentFeatureSpecificationFactory] Embedding query retrieval for CLIP Trend Memory timed out.", v14, 2u);
      }

      v12 = 0;
    }

    else
    {
      v12 = v20[5];
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __93__PGMomentFeatureSpecificationFactory__performRetrievalSearchWithQueries_retrievalThreshold___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    if (*(a1 + 56))
    {
      v8 = @"PNBackgroundMemoriesEmbeddingSearcherRetrievalThresholdMCHighPrecision";
    }

    else
    {
      v8 = @"PNBackgroundMemoriesEmbeddingSearcherRetrievalThresholdMCDefault";
    }

    v9 = v8;
    v10 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v7;
      _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "[PGMomentFeatureSpecificationFactory] Embedding query retrieval for CLIP Trend Memory (%@ threshold) failed with error %@", &v12, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_unifiedSearchTrendsFeatureSpecificationsForTrendsConfigurations:(id)configurations withProgress:(id)progress
{
  v104 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  progressCopy = progress;
  v8 = [configurationsCopy count];
  if (v8)
  {
    v78 = v8;
    selfCopy = self;
    v70 = progressCopy;
    v71 = objc_alloc_init(MEMORY[0x277CBEB18]);
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v69 = configurationsCopy;
    v10 = configurationsCopy;
    v11 = [v10 countByEnumeratingWithState:&v92 objects:v103 count:16];
    v81 = array;
    if (v11)
    {
      v12 = v11;
      v13 = *v93;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v93 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v92 + 1) + 8 * i);
          v16 = +[PGUserDefaults retrievalThresholdForCLIPTrendsMemories];
          if (v16 == 2)
          {
            v17 = @"PNBackgroundMemoriesEmbeddingSearcherRetrievalThresholdMCHighPrecision";
            v18 = array2;
          }

          else if (v16 == 1)
          {
            v17 = @"PNBackgroundMemoriesEmbeddingSearcherRetrievalThresholdMCDefault";
            v18 = array;
          }

          else
          {
            useHighPrecisionRetrievalThresholdForEmbeddingSearch = [v15 useHighPrecisionRetrievalThresholdForEmbeddingSearch];

            if (useHighPrecisionRetrievalThresholdForEmbeddingSearch)
            {
              v17 = @"PNBackgroundMemoriesEmbeddingSearcherRetrievalThresholdMCHighPrecision";
            }

            else
            {
              v17 = @"PNBackgroundMemoriesEmbeddingSearcherRetrievalThresholdMCDefault";
            }

            v18 = array2;
            if (!useHighPrecisionRetrievalThresholdForEmbeddingSearch)
            {
              v18 = array;
            }
          }

          v20 = v18;
          loggingConnection = selfCopy->_loggingConnection;
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
          {
            v23 = loggingConnection;
            featureLabel = [v15 featureLabel];
            *buf = 138412546;
            *v102 = v17;
            *&v102[8] = 2112;
            *&v102[10] = featureLabel;
            _os_log_debug_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_DEBUG, "[PGMomentFeatureSpecificationFactory] Using %@ retrieval threshold for %@ trend.", buf, 0x16u);

            array = v81;
          }

          positiveQueries = [v15 positiveQueries];
          [v20 addObjectsFromArray:positiveQueries];
        }

        v12 = [v10 countByEnumeratingWithState:&v92 objects:v103 count:16];
      }

      while (v12);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v26 = [(PGMomentFeatureSpecificationFactory *)selfCopy _performRetrievalSearchWithQueries:array2 retrievalThreshold:1];
    if (v26)
    {
      [dictionary addEntriesFromDictionary:v26];
    }

    v27 = [(PGMomentFeatureSpecificationFactory *)selfCopy _performRetrievalSearchWithQueries:v81 retrievalThreshold:0];
    if (v27)
    {
      [dictionary addEntriesFromDictionary:v27];
    }

    progressCopy = v70;
    if ([dictionary count])
    {
      v67 = v27;
      v68 = v26;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      obj = v10;
      v28 = [obj countByEnumeratingWithState:&v88 objects:v100 count:16];
      if (v28)
      {
        v30 = v28;
        v77 = 0;
        v31 = 1.0 / v78;
        v32 = *v89;
        v33 = 0.0;
        *&v29 = 138412290;
        v66 = v29;
        v72 = *v89;
LABEL_27:
        v34 = 0;
        v73 = v30;
        while (1)
        {
          if (*v89 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v88 + 1) + 8 * v34);
          v36 = objc_autoreleasePoolPush();
          featureLabel2 = [v35 featureLabel];
          positiveQueries2 = [v35 positiveQueries];
          v39 = positiveQueries2;
          if (featureLabel2 && [positiveQueries2 count])
          {
            v79 = featureLabel2;
            context = v36;
            v40 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v84 = 0u;
            v85 = 0u;
            v86 = 0u;
            v87 = 0u;
            v39 = v39;
            v41 = [v39 countByEnumeratingWithState:&v84 objects:v99 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v85;
              do
              {
                for (j = 0; j != v42; ++j)
                {
                  if (*v85 != v43)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v45 = [dictionary objectForKeyedSubscript:{*(*(&v84 + 1) + 8 * j), v66}];
                  [v40 addObjectsFromArray:v45];
                }

                v42 = [v39 countByEnumeratingWithState:&v84 objects:v99 count:16];
              }

              while (v42);
            }

            v46 = [[PGAllowlistAssetFilter alloc] initWithAllowedAssetUUIDs:v40];
            if (v46)
            {
              v47 = v46;
              v48 = [(PGMomentFeatureSpecificationFactory *)selfCopy _generateSceneAssetFilterForTrendsConfiguration:v35];
              v49 = [PGAssetCollectionFeatureDefinition alloc];
              v50 = +[PGAllowlistAssetFilter name];
              v97[0] = v50;
              v75 = v47;
              v98[0] = v47;
              v51 = +[PGSceneAssetFilter name];
              v97[1] = v51;
              v74 = v48;
              v98[1] = v48;
              v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:2];
              v53 = [(PGAssetCollectionFeatureDefinition *)v49 initWithAssetFilterByName:v52];

              v54 = v53;
              v55 = [PGAssetCollectionFeatureSpecification alloc];
              v96 = v54;
              v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v96 count:1];
              v57 = [(PGAssetCollectionFeatureSpecification *)v55 initWithFeatureType:10 featureLabel:v79 featureDefinitions:v56 shouldRunAtMomentIngest:1 shouldCreateFeatureNodeIfNeeded:1];

              v30 = v73;
              if (v57)
              {
                [v71 addObject:v57];
              }

              v33 = v31 + v33;
              v32 = v72;
              v58 = MEMORY[0x277D86220];
              if ((v77 & 1) != 0 || [v70 isCancelledWithProgress:v33])
              {
                v77 = 1;
                if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v102 = 367;
                  *&v102[4] = 2080;
                  *&v102[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMomentFeatureSpecificationFactory.m";
                  v77 = 1;
                  _os_log_impl(&dword_22F0FC000, v58, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v59 = 0;
              }

              else
              {
                v77 = 0;
                v59 = 1;
              }

              objc_autoreleasePoolPop(context);
              if ((v59 & 1) == 0)
              {

                v62 = 0;
                v61 = v71;
                goto LABEL_64;
              }

              goto LABEL_53;
            }

            v60 = selfCopy->_loggingConnection;
            v30 = v73;
            featureLabel2 = v79;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
            {
              *buf = v66;
              *v102 = v79;
              _os_log_fault_impl(&dword_22F0FC000, v60, OS_LOG_TYPE_FAULT, "Trend configuration '%@' has an invalid allowlist asset filter, disabling", buf, 0xCu);
            }

            v32 = v72;
            v36 = context;
          }

          objc_autoreleasePoolPop(v36);
LABEL_53:
          if (++v34 == v30)
          {
            v30 = [obj countByEnumeratingWithState:&v88 objects:v100 count:16];
            if (v30)
            {
              goto LABEL_27;
            }

            break;
          }
        }
      }

      v61 = v71;
      v62 = v71;
LABEL_64:
      v27 = v67;
      v26 = v68;
      progressCopy = v70;
    }

    else
    {
      v61 = v71;
      v62 = v71;
    }

    configurationsCopy = v69;
  }

  else
  {
    v63 = self->_loggingConnection;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v63, OS_LOG_TYPE_ERROR, "[PGMomentFeatureSpecificationFactory] No CLIP Trends configurations returned", buf, 2u);
    }

    if ([progressCopy isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v102 = 291;
      *&v102[4] = 2080;
      *&v102[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMomentFeatureSpecificationFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v62 = 0;
  }

  v64 = *MEMORY[0x277D85DE8];

  return v62;
}

- (id)_CLIPTrendsSpecificationsWithProgress:(id)progress
{
  v29 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  if ([progressCopy isCancelledWithProgress:0.0])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
LABEL_5:
      v8 = 0;
      goto LABEL_34;
    }

    *buf = 67109378;
    *v28 = 257;
    *&v28[4] = 2080;
    *&v28[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMomentFeatureSpecificationFactory.m";
    v5 = MEMORY[0x277D86220];
    v6 = "Cancelled at line %d in file %s";
    v7 = 18;
LABEL_4:
    _os_log_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_INFO, v6, buf, v7);
    goto LABEL_5;
  }

  if ([(PGMomentFeatureSpecificationFactory *)self _isUnifiedEmbeddingModelAvailable]&& !self->_embeddingsBasedAssetFetcher)
  {
    loggingConnection = self->_loggingConnection;
    if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v6 = "[PGMomentFeatureSpecificationFactory] No Unified Embeddings model available to generate CLIP Trends memory, processing status not reached.";
    v5 = loggingConnection;
    v7 = 2;
    goto LABEL_4;
  }

  if (![(PGMomentFeatureSpecificationFactory *)self _isUnifiedEmbeddingModelAvailable]&& !self->_CLIPTextEncoder)
  {
    v25 = self->_loggingConnection;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_ERROR, "[PGMomentFeatureSpecificationFactory] No CLIP v3.1 text encoder available to generate CLIP Trends memory.", buf, 2u);
    }

    goto LABEL_5;
  }

  v9 = +[PGCLIPTrendsMemoryGenerator CLIPTrendsConfigurations];
  v10 = [progressCopy childProgressReporterFromStart:0.1 toEnd:1.0];
  if ([progressCopy isCancelledWithProgress:0.1])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v28 = 271;
      *&v28[4] = 2080;
      *&v28[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMomentFeatureSpecificationFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v8 = 0;
  }

  else
  {
    v11 = self->_loggingConnection;
    v12 = os_signpost_id_generate(v11);
    v13 = v11;
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CLIPTrendsMomentFeatureSpecifications", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v15 = mach_absolute_time();
    if ([(PGMomentFeatureSpecificationFactory *)self _isUnifiedEmbeddingModelAvailable])
    {
      [(PGMomentFeatureSpecificationFactory *)self _unifiedSearchTrendsFeatureSpecificationsForTrendsConfigurations:v9 withProgress:v10];
    }

    else
    {
      [(PGMomentFeatureSpecificationFactory *)self _v3TrendsFeatureSpecificationsForTrendsConfigurations:v9 withProgress:v10];
    }
    v17 = ;
    v18 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v21 = v14;
    v22 = v21;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v22, OS_SIGNPOST_INTERVAL_END, v12, "CLIPTrendsMomentFeatureSpecifications", "", buf, 2u);
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v28 = "CLIPTrendsMomentFeatureSpecifications";
      *&v28[8] = 2048;
      *&v28[10] = ((((v18 - v15) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if ([progressCopy isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v28 = 282;
        *&v28[4] = 2080;
        *&v28[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMomentFeatureSpecificationFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v8 = 0;
    }

    else
    {
      v8 = v17;
    }
  }

LABEL_34:
  v23 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_trendsSpecifications
{
  v54 = *MEMORY[0x277D85DE8];
  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  +[PGTrendsMemoryGenerator trendsConfigurations];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v47 = 0u;
  v41 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v41)
  {
    v40 = *v45;
    v2 = off_27887B000;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v45 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v44 + 1) + 8 * i);
        featureLabel = [v4 featureLabel];
        positiveScenes = [v4 positiveScenes];
        v7 = positiveScenes;
        v8 = MEMORY[0x277CBEBF8];
        if (positiveScenes)
        {
          v9 = positiveScenes;
        }

        else
        {
          v9 = MEMORY[0x277CBEBF8];
        }

        v10 = v9;

        secondaryPositiveScenes = [v4 secondaryPositiveScenes];
        v12 = secondaryPositiveScenes;
        if (secondaryPositiveScenes)
        {
          v13 = secondaryPositiveScenes;
        }

        else
        {
          v13 = v8;
        }

        v14 = v13;

        positiveDominantScenes = [v4 positiveDominantScenes];
        v16 = positiveDominantScenes;
        if (positiveDominantScenes)
        {
          v17 = positiveDominantScenes;
        }

        else
        {
          v17 = v8;
        }

        v18 = v17;

        positiveSemDevScenes = [v4 positiveSemDevScenes];
        v20 = positiveSemDevScenes;
        if (positiveSemDevScenes)
        {
          v21 = positiveSemDevScenes;
        }

        else
        {
          v21 = v8;
        }

        v22 = v21;

        negativeScenes = [v4 negativeScenes];
        v24 = negativeScenes;
        if (negativeScenes)
        {
          v25 = negativeScenes;
        }

        else
        {
          v25 = v8;
        }

        v26 = v25;

        v43 = v22;
        v27 = [objc_alloc(v2[467]) initWithPositiveScenes:v10 positiveSceneCustomSignalModelBlock:&__block_literal_global_49722 secondaryPositiveScenes:v14 positiveDominantScenes:v18 positiveDominantSceneCustomSignalModelBlock:&__block_literal_global_49722 positiveSemDevScenes:v22 negativeScenes:v26 sceneTaxonomy:self->_sceneTaxonomy];

        if (v27)
        {
          v28 = [PGAssetCollectionFeatureDefinition alloc];
          name = [(__objc2_class *)v2[467] name];
          v49 = name;
          v50 = v27;
          v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          v31 = [(PGAssetCollectionFeatureDefinition *)v28 initWithAssetFilterByName:v30];

          v32 = [PGAssetCollectionFeatureSpecification alloc];
          v48 = v31;
          v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
          v34 = [(PGAssetCollectionFeatureSpecification *)v32 initWithFeatureType:9 featureLabel:featureLabel featureDefinitions:v33 shouldRunAtMomentIngest:1 shouldCreateFeatureNodeIfNeeded:1];

          v2 = off_27887B000;
          [v39 addObject:v34];
        }

        else
        {
          loggingConnection = self->_loggingConnection;
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v52 = featureLabel;
            _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "Trend configuration '%@' has an invalid scene asset filter, disabling", buf, 0xCu);
          }
        }
      }

      v41 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v41);
  }

  v36 = *MEMORY[0x277D85DE8];

  return v39;
}

- (id)specificationsForFeatureType:(unint64_t)type progressReporter:(id)reporter
{
  reporterCopy = reporter;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  switch(type)
  {
    case 0uLL:
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
      {
        *v15 = 0;
        _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "Attempting to get specification for unknown feature type", v15, 2u);
      }

      break;
    case 1uLL:
      _peopleSpecification = [(PGMomentFeatureSpecificationFactory *)self _peopleSpecification];
      goto LABEL_16;
    case 2uLL:
      _peopleSpecification = [(PGMomentFeatureSpecificationFactory *)self _socialGroupSpecification];
      goto LABEL_16;
    case 3uLL:
      _beachROISpecification = [(PGMomentFeatureSpecificationFactory *)self _beachROISpecification];
      goto LABEL_21;
    case 4uLL:
      _beachROISpecification = [(PGMomentFeatureSpecificationFactory *)self _mountainROISpecification];
      goto LABEL_21;
    case 5uLL:
      _beachROISpecification = [(PGMomentFeatureSpecificationFactory *)self _natureROISpecification];
      goto LABEL_21;
    case 6uLL:
      _beachROISpecification = [(PGMomentFeatureSpecificationFactory *)self _urbanROISpecification];
      goto LABEL_21;
    case 7uLL:
      _beachROISpecification = [(PGMomentFeatureSpecificationFactory *)self _waterROISpecification];
      goto LABEL_21;
    case 8uLL:
      _beachROISpecification = [(PGMomentFeatureSpecificationFactory *)self _petSpecification];
LABEL_21:
      v13 = _beachROISpecification;
      if (_beachROISpecification)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    case 9uLL:
      _trendsSpecifications = [(PGMomentFeatureSpecificationFactory *)self _trendsSpecifications];
      if (_trendsSpecifications)
      {
        _trendsSpecifications2 = [(PGMomentFeatureSpecificationFactory *)self _trendsSpecifications];
        [v7 addObjectsFromArray:_trendsSpecifications2];
      }

      break;
    case 0xAuLL:
      v13 = [(PGMomentFeatureSpecificationFactory *)self _CLIPTrendsSpecificationsWithProgress:reporterCopy];
      if (v13)
      {
        [v7 addObjectsFromArray:v13];
      }

      goto LABEL_23;
    case 0xBuLL:
      _peopleSpecification = [(PGMomentFeatureSpecificationFactory *)self _petPersonSpecification];
      goto LABEL_16;
    case 0xCuLL:
      _peopleSpecification = [(PGMomentFeatureSpecificationFactory *)self _excitementAudioSpecification];
      goto LABEL_16;
    case 0xDuLL:
      _peopleSpecification = [(PGMomentFeatureSpecificationFactory *)self _foodSpecification];
LABEL_16:
      v13 = _peopleSpecification;
LABEL_22:
      [v7 addObject:v13];
LABEL_23:

      break;
    default:
      break;
  }

  return v7;
}

- (id)allSupportedFeatureTypes
{
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  [indexSet addIndex:1];
  [indexSet addIndex:2];
  [indexSet addIndex:3];
  [indexSet addIndex:4];
  [indexSet addIndex:5];
  [indexSet addIndex:7];
  [indexSet addIndex:8];
  [indexSet addIndex:13];
  [indexSet addIndex:9];
  [indexSet addIndex:10];
  [indexSet addIndex:11];
  [indexSet addIndex:12];

  return indexSet;
}

- (PGMomentFeatureSpecificationFactory)initWithSceneTaxonomy:(id)taxonomy photoLibrary:(id)library loggingConnection:(id)connection
{
  v33 = *MEMORY[0x277D85DE8];
  taxonomyCopy = taxonomy;
  libraryCopy = library;
  connectionCopy = connection;
  v30.receiver = self;
  v30.super_class = PGMomentFeatureSpecificationFactory;
  v12 = [(PGMomentFeatureSpecificationFactory *)&v30 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_17;
  }

  objc_storeStrong(&v12->_sceneTaxonomy, taxonomy);
  objc_storeStrong(&v13->_photoLibrary, library);
  objc_storeStrong(&v13->_loggingConnection, connection);
  if (![(PGMomentFeatureSpecificationFactory *)v13 _isUnifiedEmbeddingModelAvailable])
  {
    v29 = 0;
    v18 = [MEMORY[0x277D014C0] CLIPTextEncoderV3ConfigurationForRevision:objc_msgSend(MEMORY[0x277D3CAB0] error:{"requiredCSUCLIPTextEncoderRevision"), &v29}];
    v19 = v29;
    if (v18)
    {
      v20 = [objc_alloc(MEMORY[0x277D014B8]) initWithConfiguration:v18];
      CLIPTextEncoder = v13->_CLIPTextEncoder;
      v13->_CLIPTextEncoder = v20;

      loggingConnection = v13->_loggingConnection;
      if (v13->_CLIPTextEncoder)
      {
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGMomentFeatureSpecificationFactory] Using CLIP v3.1 model for CLIP Trends Memory Generation", buf, 2u);
        }

        goto LABEL_16;
      }

      if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        goto LABEL_17;
      }

      *buf = 0;
      v24 = "[PGMomentFeatureSpecificationFactory] CLIP model from CSUCLIPTextEncoderV3 is nil";
      v25 = loggingConnection;
      v26 = 2;
    }

    else
    {
      v23 = v13->_loggingConnection;
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *buf = 138412290;
      v32 = v19;
      v24 = "[PGMomentFeatureSpecificationFactory] CLIP model CSUCLIPTextEncoderV3Configuration creation failed with error %@";
      v25 = v23;
      v26 = 12;
    }

    _os_log_error_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
    goto LABEL_16;
  }

  if ([(PGMomentFeatureSpecificationFactory *)v13 _vskIndexIsFullClusteredForCurrentEmbeddingVersionWithPhotoLibrary:v13->_photoLibrary])
  {
    v14 = [objc_alloc(MEMORY[0x277D3C7C8]) initWithPhotoLibrary:v13->_photoLibrary];
    embeddingsBasedAssetFetcher = v13->_embeddingsBasedAssetFetcher;
    v13->_embeddingsBasedAssetFetcher = v14;

    v16 = v13->_loggingConnection;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v17 = "[PGMomentFeatureSpecificationFactory] Using unified embeddings model for CLIP Trends Memory Generation";
LABEL_12:
      _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, v17, buf, 2u);
    }
  }

  else
  {
    v16 = v13->_loggingConnection;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v17 = "[PGMomentFeatureSpecificationFactory] VSK Search Index is not full clustered, waiting for next graph rebuild to generate CLIP Trends Memory with unified embeddings model.";
      goto LABEL_12;
    }
  }

LABEL_17:

  v27 = *MEMORY[0x277D85DE8];
  return v13;
}

@end