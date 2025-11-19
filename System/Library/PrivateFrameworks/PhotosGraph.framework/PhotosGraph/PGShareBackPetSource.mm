@interface PGShareBackPetSource
- (BOOL)prepareSourceWithGraph:(id)a3;
- (PGShareBackPetSource)initWithLoggingConnection:(id)a3 photoLibrary:(id)a4;
- (PGShareBackPetSource)initWithLoggingConnection:(id)a3 photoLibrary:(id)a4 faceIdentification:(id)a5;
- (id)suggesterResultsForInputs:(id)a3 momentNodes:(id)a4 inGraph:(id)a5 error:(id *)a6;
@end

@implementation PGShareBackPetSource

- (id)suggesterResultsForInputs:(id)a3 momentNodes:(id)a4 inGraph:(id)a5 error:(id *)a6
{
  v107 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v12 = v9;
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

        v17 = [*(*(&v95 + 1) + 8 * i) localIdentifier];
        if (v17)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v95 objects:v106 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    v18 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v105 = *MEMORY[0x277CD9AA8];
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
    [v18 setFetchPropertySets:v19];

    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != nil", @"faceAdjustmentVersion"];
    [v18 setInternalPredicate:v20];

    v21 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v11 options:v18];
    if ([v21 count])
    {
      v77 = v10;
      v22 = a6;
      v75 = self;
      v23 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      [v23 setIncludedDetectionTypes:&unk_284485400];
      v73 = v23;
      v74 = v21;
      v24 = [MEMORY[0x277CD9868] fetchFacesGroupedByAssetLocalIdentifierForAssets:v21 options:v23];
      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v76 = v24;
      v26 = [v24 allValues];
      v27 = [v26 countByEnumeratingWithState:&v91 objects:v102 count:16];
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
              objc_enumerationMutation(v26);
            }

            v31 = [*(*(&v91 + 1) + 8 * j) fetchedObjects];
            [v25 addObjectsFromArray:v31];
          }

          v28 = [v26 countByEnumeratingWithState:&v91 objects:v102 count:16];
        }

        while (v28);
      }

      if ([v25 count])
      {
        v32 = v75;
        faceIdentification = v75->_faceIdentification;
        v90 = 0;
        v34 = [(CLSFaceIdentificationProtocol *)faceIdentification requestIdentificationOfFaces:v25 error:&v90];
        v35 = v90;
        v36 = v35;
        if (v35)
        {
          if (v22)
          {
            v37 = v35;
            *v22 = v36;
          }

          v38 = [(PGShareBackSource *)v75 loggingConnection];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v104 = v36;
            _os_log_error_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_ERROR, "[PGShareBackPetSource] Error while getting classification results for faces: %@", buf, 0xCu);
          }

          v39 = 0;
          v10 = v77;
        }

        else
        {
          v10 = v77;
          if ([v34 count])
          {
            v70 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            v89 = 0u;
            v38 = v12;
            v43 = [v38 countByEnumeratingWithState:&v86 objects:v101 count:16];
            if (v43)
            {
              v71 = v34;
              v44 = *v87;
              v69 = v38;
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
                    objc_enumerationMutation(v38);
                    v45 = v46;
                  }

                  v66 = v45;
                  v47 = *(*(&v86 + 1) + 8 * v45);
                  v82 = 0u;
                  v83 = 0u;
                  v84 = 0u;
                  v85 = 0u;
                  v48 = [v47 localIdentifier];
                  v49 = [v76 objectForKeyedSubscript:v48];

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
                        v54 = [*(*(&v82 + 1) + 8 * v51) localIdentifier];
                        v55 = [v52 objectForKeyedSubscript:v54];

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

                                v38 = v69;
                                v10 = v77;
                                v62 = [[PGShareBackSuggesterResult alloc] initWithInputs:v69 processingValue:512 momentNodes:v77];
                                v39 = v70;
                                [v70 addObject:v62];

                                v36 = 0;
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
                        v10 = v77;
                        v32 = v75;
                        v38 = v69;
                        v36 = 0;
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
                v43 = [v38 countByEnumeratingWithState:&v86 objects:v101 count:16];
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
            v38 = [(PGShareBackSource *)v75 loggingConnection];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No classification results for faces", buf, 2u);
            }

            v39 = MEMORY[0x277CBEBF8];
          }
        }
      }

      else
      {
        v36 = [(PGShareBackSource *)v75 loggingConnection];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No pet faces for assets", buf, 2u);
        }

        v39 = MEMORY[0x277CBEBF8];
        v10 = v77;
      }

      v40 = v73;
      v21 = v74;
    }

    else
    {
      v40 = [(PGShareBackSource *)self loggingConnection];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v104 = v11;
        _os_log_impl(&dword_22F0FC000, v40, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No assets with faces processed for asset local identifiers: %@", buf, 0xCu);
      }

      v39 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v18 = [(PGShareBackSource *)self loggingConnection];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No assets to process", buf, 2u);
    }

    v39 = MEMORY[0x277CBEBF8];
  }

  v41 = *MEMORY[0x277D85DE8];

  return v39;
}

- (BOOL)prepareSourceWithGraph:(id)a3
{
  v4 = a3;
  v5 = [(PGShareBackSource *)self loggingConnection];
  v6 = [v4 meNode];

  if (v6)
  {
    v7 = [v6 collection];
    v8 = [v7 ownedPetNodes];

    if ([v8 count])
    {
      v9 = [v8 localIdentifiers];
      if ([(NSSet *)v9 count])
      {
        petPersonLocalIdentifiersToCheck = self->_petPersonLocalIdentifiersToCheck;
        self->_petPersonLocalIdentifiersToCheck = v9;
        v11 = v9;

        v12 = 1;
LABEL_14:

        goto LABEL_15;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_error_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_ERROR, "[PGShareBackPetSource] No pet local identifiers available", v14, 2u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No pets available", v15, 2u);
    }

    v12 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No me node available, unable to infer user's pets", buf, 2u);
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (PGShareBackPetSource)initWithLoggingConnection:(id)a3 photoLibrary:(id)a4 faceIdentification:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PGShareBackPetSource;
  v11 = [(PGShareBackSource *)&v14 initWithLoggingConnection:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_photoLibrary, a4);
    objc_storeStrong(&v12->_faceIdentification, a5);
  }

  return v12;
}

- (PGShareBackPetSource)initWithLoggingConnection:(id)a3 photoLibrary:(id)a4
{
  v6 = MEMORY[0x277D276B0];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [(PGShareBackPetSource *)self initWithLoggingConnection:v8 photoLibrary:v7 faceIdentification:v9];

  return v10;
}

@end