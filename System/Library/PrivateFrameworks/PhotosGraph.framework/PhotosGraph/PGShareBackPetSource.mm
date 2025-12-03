@interface PGShareBackPetSource
- (BOOL)prepareSourceWithGraph:(id)graph;
- (PGShareBackPetSource)initWithLoggingConnection:(id)connection photoLibrary:(id)library;
- (PGShareBackPetSource)initWithLoggingConnection:(id)connection photoLibrary:(id)library faceIdentification:(id)identification;
- (id)suggesterResultsForInputs:(id)inputs momentNodes:(id)nodes inGraph:(id)graph error:(id *)error;
@end

@implementation PGShareBackPetSource

- (id)suggesterResultsForInputs:(id)inputs momentNodes:(id)nodes inGraph:(id)graph error:(id *)error
{
  v107 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  nodesCopy = nodes;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v12 = inputsCopy;
  v13 = [v12 countByEnumeratingWithState:&v95 objects:v106 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v96;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v96 != v15)
        {
          objc_enumerationMutation(v12);
        }

        localIdentifier = [*(*(&v95 + 1) + 8 * i) localIdentifier];
        if (localIdentifier)
        {
          [v11 addObject:localIdentifier];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v95 objects:v106 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v105 = *MEMORY[0x277CD9AA8];
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v19];

    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != nil", @"faceAdjustmentVersion"];
    [librarySpecificFetchOptions setInternalPredicate:v20];

    v21 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v11 options:librarySpecificFetchOptions];
    if ([v21 count])
    {
      v77 = nodesCopy;
      errorCopy = error;
      selfCopy = self;
      librarySpecificFetchOptions2 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      [librarySpecificFetchOptions2 setIncludedDetectionTypes:&unk_284485400];
      v73 = librarySpecificFetchOptions2;
      v74 = v21;
      v24 = [MEMORY[0x277CD9868] fetchFacesGroupedByAssetLocalIdentifierForAssets:v21 options:librarySpecificFetchOptions2];
      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v76 = v24;
      allValues = [v24 allValues];
      v27 = [allValues countByEnumeratingWithState:&v91 objects:v102 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v92;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v92 != v29)
            {
              objc_enumerationMutation(allValues);
            }

            fetchedObjects = [*(*(&v91 + 1) + 8 * j) fetchedObjects];
            [v25 addObjectsFromArray:fetchedObjects];
          }

          v28 = [allValues countByEnumeratingWithState:&v91 objects:v102 count:16];
        }

        while (v28);
      }

      if ([v25 count])
      {
        v32 = selfCopy;
        faceIdentification = selfCopy->_faceIdentification;
        v90 = 0;
        v34 = [(CLSFaceIdentificationProtocol *)faceIdentification requestIdentificationOfFaces:v25 error:&v90];
        v35 = v90;
        loggingConnection2 = v35;
        if (v35)
        {
          if (errorCopy)
          {
            v37 = v35;
            *errorCopy = loggingConnection2;
          }

          loggingConnection = [(PGShareBackSource *)selfCopy loggingConnection];
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v104 = loggingConnection2;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGShareBackPetSource] Error while getting classification results for faces: %@", buf, 0xCu);
          }

          v39 = 0;
          nodesCopy = v77;
        }

        else
        {
          nodesCopy = v77;
          if ([v34 count])
          {
            v70 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            v89 = 0u;
            loggingConnection = v12;
            v43 = [loggingConnection countByEnumeratingWithState:&v86 objects:v101 count:16];
            if (v43)
            {
              v71 = v34;
              v44 = *v87;
              v69 = loggingConnection;
              v63 = *v87;
              do
              {
                v45 = 0;
                v64 = v43;
                do
                {
                  if (*v87 != v44)
                  {
                    v46 = v45;
                    objc_enumerationMutation(loggingConnection);
                    v45 = v46;
                  }

                  v66 = v45;
                  v47 = *(*(&v86 + 1) + 8 * v45);
                  v82 = 0u;
                  v83 = 0u;
                  v84 = 0u;
                  v85 = 0u;
                  localIdentifier2 = [v47 localIdentifier];
                  v49 = [v76 objectForKeyedSubscript:localIdentifier2];

                  obj = v49;
                  v67 = [v49 countByEnumeratingWithState:&v82 objects:v100 count:16];
                  if (v67)
                  {
                    v50 = *v83;
                    v65 = *v83;
                    do
                    {
                      v51 = 0;
                      v52 = v71;
                      do
                      {
                        if (*v83 != v50)
                        {
                          v53 = v51;
                          objc_enumerationMutation(obj);
                          v51 = v53;
                        }

                        v68 = v51;
                        localIdentifier3 = [*(*(&v82 + 1) + 8 * v51) localIdentifier];
                        v55 = [v52 objectForKeyedSubscript:localIdentifier3];

                        v80 = 0u;
                        v81 = 0u;
                        v78 = 0u;
                        v79 = 0u;
                        v56 = v32->_petPersonLocalIdentifiersToCheck;
                        v57 = [(NSSet *)v56 countByEnumeratingWithState:&v78 objects:v99 count:16];
                        if (v57)
                        {
                          v58 = v57;
                          v59 = *v79;
                          while (2)
                          {
                            for (k = 0; k != v58; ++k)
                            {
                              if (*v79 != v59)
                              {
                                objc_enumerationMutation(v56);
                              }

                              v61 = [v55 objectForKeyedSubscript:*(*(&v78 + 1) + 8 * k)];

                              if (v61)
                              {

                                loggingConnection = v69;
                                nodesCopy = v77;
                                v62 = [[PGShareBackSuggesterResult alloc] initWithInputs:v69 processingValue:512 momentNodes:v77];
                                v39 = v70;
                                [v70 addObject:v62];

                                loggingConnection2 = 0;
                                goto LABEL_66;
                              }
                            }

                            v58 = [(NSSet *)v56 countByEnumeratingWithState:&v78 objects:v99 count:16];
                            if (v58)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        v51 = v68 + 1;
                        nodesCopy = v77;
                        v32 = selfCopy;
                        loggingConnection = v69;
                        loggingConnection2 = 0;
                        v52 = v71;
                        v50 = v65;
                      }

                      while (v68 + 1 != v67);
                      v67 = [obj countByEnumeratingWithState:&v82 objects:v100 count:16];
                    }

                    while (v67);
                  }

                  v45 = v66 + 1;
                  v44 = v63;
                }

                while (v66 + 1 != v64);
                v43 = [loggingConnection countByEnumeratingWithState:&v86 objects:v101 count:16];
              }

              while (v43);
              v39 = v70;
LABEL_66:
              v34 = v71;
            }

            else
            {
              v39 = v70;
            }
          }

          else
          {
            loggingConnection = [(PGShareBackSource *)selfCopy loggingConnection];
            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No classification results for faces", buf, 2u);
            }

            v39 = MEMORY[0x277CBEBF8];
          }
        }
      }

      else
      {
        loggingConnection2 = [(PGShareBackSource *)selfCopy loggingConnection];
        if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No pet faces for assets", buf, 2u);
        }

        v39 = MEMORY[0x277CBEBF8];
        nodesCopy = v77;
      }

      loggingConnection3 = v73;
      v21 = v74;
    }

    else
    {
      loggingConnection3 = [(PGShareBackSource *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v104 = v11;
        _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No assets with faces processed for asset local identifiers: %@", buf, 0xCu);
      }

      v39 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    librarySpecificFetchOptions = [(PGShareBackSource *)self loggingConnection];
    if (os_log_type_enabled(librarySpecificFetchOptions, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, librarySpecificFetchOptions, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No assets to process", buf, 2u);
    }

    v39 = MEMORY[0x277CBEBF8];
  }

  v41 = *MEMORY[0x277D85DE8];

  return v39;
}

- (BOOL)prepareSourceWithGraph:(id)graph
{
  graphCopy = graph;
  loggingConnection = [(PGShareBackSource *)self loggingConnection];
  meNode = [graphCopy meNode];

  if (meNode)
  {
    collection = [meNode collection];
    ownedPetNodes = [collection ownedPetNodes];

    if ([ownedPetNodes count])
    {
      localIdentifiers = [ownedPetNodes localIdentifiers];
      if ([(NSSet *)localIdentifiers count])
      {
        petPersonLocalIdentifiersToCheck = self->_petPersonLocalIdentifiersToCheck;
        self->_petPersonLocalIdentifiersToCheck = localIdentifiers;
        v11 = localIdentifiers;

        v12 = 1;
LABEL_14:

        goto LABEL_15;
      }

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGShareBackPetSource] No pet local identifiers available", v14, 2u);
      }
    }

    else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No pets available", v15, 2u);
    }

    v12 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No me node available, unable to infer user's pets", buf, 2u);
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (PGShareBackPetSource)initWithLoggingConnection:(id)connection photoLibrary:(id)library faceIdentification:(id)identification
{
  libraryCopy = library;
  identificationCopy = identification;
  v14.receiver = self;
  v14.super_class = PGShareBackPetSource;
  v11 = [(PGShareBackSource *)&v14 initWithLoggingConnection:connection];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_photoLibrary, library);
    objc_storeStrong(&v12->_faceIdentification, identification);
  }

  return v12;
}

- (PGShareBackPetSource)initWithLoggingConnection:(id)connection photoLibrary:(id)library
{
  v6 = MEMORY[0x277D276B0];
  libraryCopy = library;
  connectionCopy = connection;
  v9 = objc_alloc_init(v6);
  v10 = [(PGShareBackPetSource *)self initWithLoggingConnection:connectionCopy photoLibrary:libraryCopy faceIdentification:v9];

  return v10;
}

@end