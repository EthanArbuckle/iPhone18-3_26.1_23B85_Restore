@interface PGShareBackFacesSource
- (BOOL)prepareSourceWithGraph:(id)graph;
- (PGShareBackFacesSource)initWithLoggingConnection:(id)connection photoLibrary:(id)library;
- (PGShareBackFacesSource)initWithLoggingConnection:(id)connection photoLibrary:(id)library faceIdentification:(id)identification;
- (id)suggesterResultsForInputs:(id)inputs momentNodes:(id)nodes inGraph:(id)graph error:(id *)error;
@end

@implementation PGShareBackFacesSource

- (id)suggesterResultsForInputs:(id)inputs momentNodes:(id)nodes inGraph:(id)graph error:(id *)error
{
  v141 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  nodesCopy = nodes;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v12 = inputsCopy;
  v13 = [v12 countByEnumeratingWithState:&v127 objects:v140 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v128;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v128 != v15)
        {
          objc_enumerationMutation(v12);
        }

        localIdentifier = [*(*(&v127 + 1) + 8 * i) localIdentifier];
        if (localIdentifier)
        {
          [v11 addObject:localIdentifier];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v127 objects:v140 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v139 = *MEMORY[0x277CD9AA8];
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v19];

    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != nil", @"faceAdjustmentVersion"];
    [librarySpecificFetchOptions setInternalPredicate:v20];

    v21 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v11 options:librarySpecificFetchOptions];
    if ([v21 count])
    {
      selfCopy = self;
      v96 = v21;
      v97 = librarySpecificFetchOptions;
      v22 = [MEMORY[0x277CD9868] fetchFacesGroupedByAssetLocalIdentifierForAssets:v21 options:0];
      v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v98 = v22;
      allValues = [v22 allValues];
      v25 = [allValues countByEnumeratingWithState:&v123 objects:v136 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v124;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v124 != v27)
            {
              objc_enumerationMutation(allValues);
            }

            fetchedObjects = [*(*(&v123 + 1) + 8 * j) fetchedObjects];
            [v23 addObjectsFromArray:fetchedObjects];
          }

          v26 = [allValues countByEnumeratingWithState:&v123 objects:v136 count:16];
        }

        while (v26);
      }

      if ([v23 count])
      {
        p_isa = &selfCopy->super.super.isa;
        faceIdentification = selfCopy->_faceIdentification;
        v122 = 0;
        v32 = [(CLSFaceIdentificationProtocol *)faceIdentification requestIdentificationOfFaces:v23 error:&v122];
        v33 = v122;
        loggingConnection4 = v33;
        if (v33)
        {
          if (error)
          {
            v35 = v33;
            *error = loggingConnection4;
          }

          loggingConnection = [(PGShareBackSource *)selfCopy loggingConnection];
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v138 = loggingConnection4;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGShareBackFacesSource] Error while getting classification results for faces: %@", buf, 0xCu);
          }

          v37 = 0;
        }

        else if ([v32 count])
        {
          loggingConnection = objc_alloc_init(MEMORY[0x277CBEB58]);
          v94 = nodesCopy;
          v95 = v32;
          if ([nodesCopy count])
          {
            v39 = loggingConnection;
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            obj = nodesCopy;
            v40 = [obj countByEnumeratingWithState:&v118 objects:v135 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v119;
              do
              {
                for (k = 0; k != v41; ++k)
                {
                  if (*v119 != v42)
                  {
                    objc_enumerationMutation(obj);
                  }

                  collection = [*(*(&v118 + 1) + 8 * k) collection];
                  personNodes = [collection personNodes];
                  localIdentifiers = [personNodes localIdentifiers];
                  [v39 unionSet:localIdentifiers];
                }

                v41 = [obj countByEnumeratingWithState:&v118 objects:v135 count:16];
              }

              while (v41);
            }

            p_isa = &selfCopy->super.super.isa;
            loggingConnection2 = [(PGShareBackSource *)selfCopy loggingConnection];
            loggingConnection = v39;
            if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v138 = v39;
              _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[PGShareBackFacesSource] Persons to match: %@", buf, 0xCu);
            }

            nodesCopy = v94;
            v32 = v95;
            loggingConnection4 = 0;
          }

          v48 = [p_isa[3] length];
          if ([loggingConnection count]| v48)
          {
            v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v114 = 0u;
            v115 = 0u;
            v116 = 0u;
            v117 = 0u;
            loggingConnection3 = v12;
            v50 = [loggingConnection3 countByEnumeratingWithState:&v114 objects:v134 count:16];
            if (!v50)
            {
              goto LABEL_100;
            }

            v51 = *v115;
            v91 = loggingConnection3;
            v85 = v48;
            v87 = *v115;
            while (1)
            {
              v52 = 0;
              v86 = v50;
              do
              {
                if (*v115 != v51)
                {
                  v53 = v52;
                  objc_enumerationMutation(loggingConnection3);
                  v52 = v53;
                }

                v89 = v52;
                v54 = *(*(&v114 + 1) + 8 * v52);
                v110 = 0u;
                v111 = 0u;
                v112 = 0u;
                v113 = 0u;
                localIdentifier2 = [v54 localIdentifier];
                v56 = [v98 objectForKeyedSubscript:localIdentifier2];

                v57 = v56;
                v58 = [v56 countByEnumeratingWithState:&v110 objects:v133 count:16];
                if (!v58)
                {

                  goto LABEL_87;
                }

                v59 = 0;
                v60 = *v111;
                v93 = loggingConnection;
                v90 = v57;
                v84 = *v111;
                while (2)
                {
                  v61 = 0;
                  v83 = v58;
                  do
                  {
                    v92 = v59;
                    if (*v111 != v60)
                    {
                      v62 = v61;
                      objc_enumerationMutation(v57);
                      v61 = v62;
                    }

                    v88 = v61;
                    localIdentifier3 = [*(*(&v110 + 1) + 8 * v61) localIdentifier];
                    v64 = [v32 objectForKeyedSubscript:localIdentifier3];

                    v108 = 0u;
                    v109 = 0u;
                    v106 = 0u;
                    v107 = 0u;
                    v65 = v93;
                    v66 = [v65 countByEnumeratingWithState:&v106 objects:v132 count:16];
                    if (v66)
                    {
                      v67 = v66;
                      v68 = *v107;
                      while (2)
                      {
                        for (m = 0; m != v67; ++m)
                        {
                          if (*v107 != v68)
                          {
                            objc_enumerationMutation(v65);
                          }

                          v70 = [v64 objectForKeyedSubscript:*(*(&v106 + 1) + 8 * m)];

                          if (v70)
                          {

                            goto LABEL_97;
                          }
                        }

                        v67 = [v65 countByEnumeratingWithState:&v106 objects:v132 count:16];
                        if (v67)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    if (v92 == 64)
                    {
LABEL_97:
                      LOWORD(v59) = 64;
                      nodesCopy = v94;
LABEL_98:

                      v32 = v95;
                      loggingConnection4 = 0;
                      loggingConnection = v93;
LABEL_99:
                      v78 = [PGShareBackSuggesterResult alloc];
                      v79 = v59;
                      loggingConnection3 = v91;
                      v80 = [(PGShareBackSuggesterResult *)v78 initWithInputs:v91 processingValue:v79 momentNodes:nodesCopy];
                      [v37 addObject:v80];

                      goto LABEL_100;
                    }

                    nodesCopy = v94;
                    if (v85)
                    {
                      v71 = selfCopy;
                      v72 = [v64 objectForKeyedSubscript:selfCopy->_meLocalIdentifier];

                      LOWORD(v59) = 32;
                      if (v72 || v92 == 32)
                      {
                        goto LABEL_98;
                      }
                    }

                    else
                    {
                      v71 = selfCopy;
                      if (v92 == 32)
                      {
                        LOWORD(v59) = 32;
                        goto LABEL_98;
                      }
                    }

                    v104 = 0u;
                    v105 = 0u;
                    v102 = 0u;
                    v103 = 0u;
                    obja = v71->_childPersonLocalIdentifiers;
                    v73 = [(NSSet *)obja countByEnumeratingWithState:&v102 objects:v131 count:16];
                    if (v73)
                    {
                      v74 = v73;
                      v75 = *v103;
                      while (2)
                      {
                        for (n = 0; n != v74; ++n)
                        {
                          if (*v103 != v75)
                          {
                            objc_enumerationMutation(obja);
                          }

                          v77 = [v64 objectForKeyedSubscript:*(*(&v102 + 1) + 8 * n)];

                          if (v77)
                          {
                            v59 = 0x4000;
                            goto LABEL_82;
                          }
                        }

                        v74 = [(NSSet *)obja countByEnumeratingWithState:&v102 objects:v131 count:16];
                        if (v74)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v59 = v92;
LABEL_82:

                    v61 = v88 + 1;
                    v60 = v84;
                    v32 = v95;
                    loggingConnection4 = 0;
                    loggingConnection = v93;
                    v57 = v90;
                  }

                  while (v88 + 1 != v83);
                  v58 = [v90 countByEnumeratingWithState:&v110 objects:v133 count:16];
                  v60 = v84;
                  if (v58)
                  {
                    continue;
                  }

                  break;
                }

                if (v59)
                {
                  goto LABEL_99;
                }

LABEL_87:
                v52 = v89 + 1;
                v51 = v87;
                loggingConnection3 = v91;
              }

              while (v89 + 1 != v86);
              v50 = [v91 countByEnumeratingWithState:&v114 objects:v134 count:16];
              v51 = v87;
              if (!v50)
              {
                goto LABEL_100;
              }
            }
          }

          loggingConnection3 = [p_isa loggingConnection];
          if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "[PGShareBackFacesSource] No persons to match", buf, 2u);
          }

          v37 = MEMORY[0x277CBEBF8];
LABEL_100:
        }

        else
        {
          loggingConnection = [(PGShareBackSource *)selfCopy loggingConnection];
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGShareBackFacesSource] No classification results for faces", buf, 2u);
          }

          v37 = MEMORY[0x277CBEBF8];
        }
      }

      else
      {
        loggingConnection4 = [(PGShareBackSource *)selfCopy loggingConnection];
        if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_INFO, "[PGShareBackFacesSource] No faces for assets", buf, 2u);
        }

        v37 = MEMORY[0x277CBEBF8];
      }

      v21 = v96;
      librarySpecificFetchOptions = v97;
      loggingConnection5 = v98;
    }

    else
    {
      loggingConnection5 = [(PGShareBackSource *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v138 = v11;
        _os_log_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_INFO, "[PGShareBackFacesSource] No assets with faces processed for asset local identifiers: %@", buf, 0xCu);
      }

      v37 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    librarySpecificFetchOptions = [(PGShareBackSource *)self loggingConnection];
    if (os_log_type_enabled(librarySpecificFetchOptions, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, librarySpecificFetchOptions, OS_LOG_TYPE_INFO, "[PGShareBackFacesSource] No assets to process", buf, 2u);
    }

    v37 = MEMORY[0x277CBEBF8];
  }

  v81 = *MEMORY[0x277D85DE8];

  return v37;
}

- (BOOL)prepareSourceWithGraph:(id)graph
{
  v24 = *MEMORY[0x277D85DE8];
  meNodeWithFallbackInferredMeNode = [graph meNodeWithFallbackInferredMeNode];
  v5 = meNodeWithFallbackInferredMeNode;
  if (meNodeWithFallbackInferredMeNode)
  {
    if (([meNodeWithFallbackInferredMeNode isMeNode] & 1) == 0)
    {
      loggingConnection = [(PGShareBackSource *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v5;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGShareBackFacesSource] No meNode set, using inferred meNode %@", &v22, 0xCu);
      }
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    localIdentifier = [v5 localIdentifier];
    meLocalIdentifier = self->_meLocalIdentifier;
    self->_meLocalIdentifier = localIdentifier;

    collection = [v5 collection];
    childPersonNodes = [collection childPersonNodes];
    localIdentifiers = [childPersonNodes localIdentifiers];
    [v7 unionSet:localIdentifiers];

    inferredChildPersonNodes = [collection inferredChildPersonNodes];
    localIdentifiers2 = [inferredChildPersonNodes localIdentifiers];
    [v7 unionSet:localIdentifiers2];

    if ([v7 count])
    {
      loggingConnection2 = [(PGShareBackSource *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v7 debugDescription];
        v22 = 138412290;
        v23 = v16;
        _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_DEFAULT, "[PGShareBackFacesSource] Child persons to check %@", &v22, 0xCu);
      }
    }
  }

  else
  {
    loggingConnection3 = [(PGShareBackSource *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_DEFAULT, "[PGShareBackFacesSource] Couldn't infer device owner", &v22, 2u);
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v18 = [v7 copy];
  childPersonLocalIdentifiers = self->_childPersonLocalIdentifiers;
  self->_childPersonLocalIdentifiers = v18;

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

- (PGShareBackFacesSource)initWithLoggingConnection:(id)connection photoLibrary:(id)library faceIdentification:(id)identification
{
  libraryCopy = library;
  identificationCopy = identification;
  v14.receiver = self;
  v14.super_class = PGShareBackFacesSource;
  v11 = [(PGShareBackSource *)&v14 initWithLoggingConnection:connection];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_photoLibrary, library);
    objc_storeStrong(&v12->_faceIdentification, identification);
  }

  return v12;
}

- (PGShareBackFacesSource)initWithLoggingConnection:(id)connection photoLibrary:(id)library
{
  v6 = MEMORY[0x277D276B0];
  libraryCopy = library;
  connectionCopy = connection;
  v9 = objc_alloc_init(v6);
  v10 = [(PGShareBackFacesSource *)self initWithLoggingConnection:connectionCopy photoLibrary:libraryCopy faceIdentification:v9];

  return v10;
}

@end