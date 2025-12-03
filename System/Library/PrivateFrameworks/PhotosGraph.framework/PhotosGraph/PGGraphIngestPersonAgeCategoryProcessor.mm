@interface PGGraphIngestPersonAgeCategoryProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestPersonAgeCategoryProcessor)initWithGraphBuilder:(id)builder;
- (void)_updatePhotoLibrary:(id)library withAgeCategoryByPersonLocalIdentifier:(id)identifier;
- (void)processPersonAgeCategoryForPersonNodes:(id)nodes photoLibrary:(id)library withProgressBlock:(id)block;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestPersonAgeCategoryProcessor

- (void)_updatePhotoLibrary:(id)library withAgeCategoryByPersonLocalIdentifier:(id)identifier
{
  v44 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  identifierCopy = identifier;
  if ([identifierCopy count])
  {
    v7 = MEMORY[0x277CD9938];
    allKeys = [identifierCopy allKeys];
    v31 = libraryCopy;
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    v10 = [v7 fetchPersonsWithLocalIdentifiers:allKeys options:librarySpecificFetchOptions];

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v36;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          localIdentifier = [v17 localIdentifier];
          v19 = [identifierCopy objectForKeyedSubscript:localIdentifier];

          if (v19)
          {
            v20 = +[PGPeopleUtilities ageTypeFromAgeCategory:](PGPeopleUtilities, "ageTypeFromAgeCategory:", [v19 unsignedIntegerValue]);
            if (v20 != [v17 ageType])
            {
              v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v20];
              [v11 setObject:v21 forKeyedSubscript:v17];
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v14);
    }

    v22 = v11;
    v23 = [v11 count];
    libraryCopy = v31;
    if (v23)
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __102__PGGraphIngestPersonAgeCategoryProcessor__updatePhotoLibrary_withAgeCategoryByPersonLocalIdentifier___block_invoke;
      v33[3] = &unk_27888A660;
      v24 = v22;
      v34 = v24;
      v32 = 0;
      v25 = [v31 performChangesAndWait:v33 error:&v32];
      v26 = v32;
      if ((v25 & 1) == 0)
      {
        v27 = +[PGLogging sharedLogging];
        loggingConnection = [v27 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          allKeys2 = [v24 allKeys];
          *buf = 138478083;
          v40 = allKeys2;
          v41 = 2112;
          v42 = v26;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PersonAgeCategoryProcessor] Error setting the age type of persons: %{private}@, error: %@", buf, 0x16u);
        }
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __102__PGGraphIngestPersonAgeCategoryProcessor__updatePhotoLibrary_withAgeCategoryByPersonLocalIdentifier___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CD9940];
  v5 = a3;
  v6 = [v4 changeRequestForPerson:a2];
  LOWORD(a2) = [v5 unsignedIntegerValue];

  [v6 setAgeType:a2];
}

- (void)processPersonAgeCategoryForPersonNodes:(id)nodes photoLibrary:(id)library withProgressBlock:(id)block
{
  v65 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  libraryCopy = library;
  blockCopy = block;
  v9 = _Block_copy(blockCopy);
  v45 = nodesCopy;
  if (v9)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v11 = 0.0;
    if (Current >= 0.01)
    {
      v12 = Current;
      v56[0] = 0;
      v9[2](v9, v56, 0.0);
      if (v56[0] == 1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_58;
        }

        *buf = 67109378;
        *&buf[4] = 89;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPersonAgeCategoryProcessor.m";
        v13 = MEMORY[0x277D86220];
        goto LABEL_49;
      }

      v11 = v12;
    }

    v15 = [nodesCopy count];
    if (!v15)
    {
      if (CFAbsoluteTimeGetCurrent() - v11 < 0.01)
      {
        goto LABEL_58;
      }

      v56[0] = 0;
      v9[2](v9, v56, 1.0);
      if (!v56[0] || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_58;
      }

      *buf = 67109378;
      *&buf[4] = 94;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPersonAgeCategoryProcessor.m";
      v13 = MEMORY[0x277D86220];
LABEL_49:
      _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_58;
    }
  }

  else
  {
    v14 = [nodesCopy count];
    if (!v14)
    {
      goto LABEL_58;
    }

    v15 = v14;
    v11 = 0.0;
  }

  v46 = objc_alloc_init(MEMORY[0x277D3C7A0]);
  v49 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v15];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = nodesCopy;
  v16 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (!v16)
  {
    goto LABEL_37;
  }

  v18 = 0.9 / v15;
  v50 = *v53;
  v19 = 0.0;
  *&v17 = 138477827;
  v43 = v17;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v53 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v52 + 1) + 8 * i);
      v22 = objc_autoreleasePoolPush();
      if (v9)
      {
        v23 = CFAbsoluteTimeGetCurrent();
        if (v23 - v11 >= 0.01)
        {
          v56[0] = 0;
          v9[2](v9, v56, v19);
          if (v56[0])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *&buf[4] = 105;
              *&buf[8] = 2080;
              *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPersonAgeCategoryProcessor.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            objc_autoreleasePoolPop(v22);

            goto LABEL_57;
          }

          v11 = v23;
        }
      }

      blockCopy = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)self->_helper ageCategoryFromBirthdayDateForPersonNode:v21, v43, blockCopy];
      if (blockCopy)
      {
        v25 = +[PGLogging sharedLogging];
        loggingConnection = [v25 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
        {
          stringDescription = [v21 stringDescription];
          v28 = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)self->_helper ageDescriptionFromAge:blockCopy];
          *buf = 138478083;
          *&buf[4] = stringDescription;
          *&buf[12] = 2112;
          *&buf[14] = v28;
          _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PersonAgeCategoryProcessor] Person %{private}@ classified as **%@** based on birthday year", buf, 0x16u);
        }

LABEL_32:

        goto LABEL_33;
      }

      blockCopy = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)self->_helper ageCategoryUsingFaceAttributesForPersonNode:v21 photoLibrary:libraryCopy];
      if (blockCopy)
      {
        v29 = +[PGLogging sharedLogging];
        loggingConnection = [v29 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
        {
          stringDescription2 = [v21 stringDescription];
          v31 = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)self->_helper ageDescriptionFromAge:blockCopy];
          *buf = 138478083;
          *&buf[4] = stringDescription2;
          *&buf[12] = 2112;
          *&buf[14] = v31;
          _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PersonAgeCategoryProcessor] Person %{private}@ classified as **%@** based on face attributes", buf, 0x16u);
        }

        goto LABEL_32;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v61 = __Block_byref_object_copy__44152;
      v62 = __Block_byref_object_dispose__44153;
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __113__PGGraphIngestPersonAgeCategoryProcessor_processPersonAgeCategoryForPersonNodes_photoLibrary_withProgressBlock___block_invoke;
      v51[3] = &unk_278884A38;
      v51[4] = buf;
      [v21 enumerateMomentEdgesAndNodesUsingBlock:v51];
      blockCopy = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)self->_helper ageCategoryFromAssetSamplingScenesForPersonNode:v21 photoLibrary:libraryCopy curationSession:v46];
      if (!blockCopy)
      {
        _Block_object_dispose(buf, 8);

        v36 = +[PGLogging sharedLogging];
        loggingConnection = [v36 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
        {
          stringDescription3 = [v21 stringDescription];
          *buf = v43;
          *&buf[4] = stringDescription3;
          _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PersonAgeCategoryProcessor] Person %{private}@ age range could not be classified", buf, 0xCu);
        }

        blockCopy = 0;
        goto LABEL_32;
      }

      v32 = +[PGLogging sharedLogging];
      loggingConnection2 = [v32 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
      {
        stringDescription4 = [v21 stringDescription];
        v35 = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)self->_helper ageDescriptionFromAge:blockCopy];
        *v56 = 138478083;
        v57 = stringDescription4;
        v58 = 2112;
        v59 = v35;
        _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[PersonAgeCategoryProcessor] Person %{private}@ classified as %@ based on scenes", v56, 0x16u);
      }

      _Block_object_dispose(buf, 8);
LABEL_33:
      -[PGGraphBuilder setAgeCategory:onPersonNodeForIdentifier:](self->_graphBuilder, "setAgeCategory:onPersonNodeForIdentifier:", blockCopy, [v21 identifier]);
      localIdentifier = [v21 localIdentifier];
      if ([localIdentifier length])
      {
        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:blockCopy];
        [v49 setObject:v39 forKeyedSubscript:localIdentifier];
      }

      objc_autoreleasePoolPop(v22);
      v19 = v18 + v19;
    }

    v16 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_37:

  if (!v9)
  {
    [(PGGraphIngestPersonAgeCategoryProcessor *)self _updatePhotoLibrary:libraryCopy withAgeCategoryByPersonLocalIdentifier:v49];
    goto LABEL_57;
  }

  v40 = CFAbsoluteTimeGetCurrent();
  if (v40 - v11 >= 0.01)
  {
    v56[0] = 0;
    v9[2](v9, v56, 0.9);
    if (v56[0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 150;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPersonAgeCategoryProcessor.m";
        v41 = MEMORY[0x277D86220];
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    v11 = v40;
  }

  [(PGGraphIngestPersonAgeCategoryProcessor *)self _updatePhotoLibrary:libraryCopy withAgeCategoryByPersonLocalIdentifier:v49];
  if (CFAbsoluteTimeGetCurrent() - v11 >= 0.01)
  {
    v56[0] = 0;
    v9[2](v9, v56, 1.0);
    if (v56[0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 154;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPersonAgeCategoryProcessor.m";
        v41 = MEMORY[0x277D86220];
LABEL_56:
        _os_log_impl(&dword_22F0FC000, v41, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }
  }

LABEL_57:

LABEL_58:
  v42 = *MEMORY[0x277D85DE8];
}

void __113__PGGraphIngestPersonAgeCategoryProcessor_processPersonAgeCategoryForPersonNodes_photoLibrary_withProgressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  if ([a2 numberOfAssets] >= 2)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = [v10 universalStartDate];
    v7 = [v5 earlierDate:v6];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  graphBuilder = self->_graphBuilder;
  blockCopy = block;
  graph = [(PGGraphBuilder *)graphBuilder graph];
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  v11 = os_signpost_id_generate(loggingConnection);
  v12 = loggingConnection;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PGGraphIngestPersonAgeCategoryProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v14 = mach_absolute_time();
  if ([updateCopy isResumingFullAnalysis])
  {
    [graph personNodesIncludingMe:1];
  }

  else
  {
    [updateCopy insertedAndUpdatedPersonNodes];
  }
  v15 = ;
  photoLibrary = [(PGGraphBuilder *)self->_graphBuilder photoLibrary];
  [(PGGraphIngestPersonAgeCategoryProcessor *)self processPersonAgeCategoryForPersonNodes:v15 photoLibrary:photoLibrary withProgressBlock:blockCopy];

  v17 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v20 = v13;
  v21 = v20;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v21, OS_SIGNPOST_INTERVAL_END, v11, "PGGraphIngestPersonAgeCategoryProcessor", "", buf, 2u);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "PGGraphIngestPersonAgeCategoryProcessor";
    v26 = 2048;
    v27 = ((((v17 - v14) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis])
  {
    hasUpdatedPersonNodes = 1;
  }

  else
  {
    hasUpdatedPersonNodes = [updateCopy hasUpdatedPersonNodes];
  }

  return hasUpdatedPersonNodes;
}

- (PGGraphIngestPersonAgeCategoryProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v11.receiver = self;
  v11.super_class = PGGraphIngestPersonAgeCategoryProcessor;
  v6 = [(PGGraphIngestPersonAgeCategoryProcessor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
    v8 = objc_alloc_init(PGGraphIngestPersonAgeCategoryProcessorHelper);
    helper = v7->_helper;
    v7->_helper = v8;
  }

  return v7;
}

@end