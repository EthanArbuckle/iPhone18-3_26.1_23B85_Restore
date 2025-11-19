@interface PGShareBackFacesSource
- (BOOL)prepareSourceWithGraph:(id)a3;
- (PGShareBackFacesSource)initWithLoggingConnection:(id)a3 photoLibrary:(id)a4;
- (PGShareBackFacesSource)initWithLoggingConnection:(id)a3 photoLibrary:(id)a4 faceIdentification:(id)a5;
- (id)suggesterResultsForInputs:(id)a3 momentNodes:(id)a4 inGraph:(id)a5 error:(id *)a6;
@end

@implementation PGShareBackFacesSource

- (id)suggesterResultsForInputs:(id)a3 momentNodes:(id)a4 inGraph:(id)a5 error:(id *)a6
{
  v141 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v12 = v9;
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

        v17 = [*(*(&v127 + 1) + 8 * i) localIdentifier];
        if (v17)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v127 objects:v140 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    v18 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v139 = *MEMORY[0x277CD9AA8];
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
    [v18 setFetchPropertySets:v19];

    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != nil", @"faceAdjustmentVersion"];
    [v18 setInternalPredicate:v20];

    v21 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v11 options:v18];
    if ([v21 count])
    {
      v99 = self;
      v96 = v21;
      v97 = v18;
      v22 = [MEMORY[0x277CD9868] fetchFacesGroupedByAssetLocalIdentifierForAssets:v21 options:0];
      v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v98 = v22;
      v24 = [v22 allValues];
      v25 = [v24 countByEnumeratingWithState:&v123 objects:v136 count:16];
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
              objc_enumerationMutation(v24);
            }

            v29 = [*(*(&v123 + 1) + 8 * j) fetchedObjects];
            [v23 addObjectsFromArray:v29];
          }

          v26 = [v24 countByEnumeratingWithState:&v123 objects:v136 count:16];
        }

        while (v26);
      }

      if ([v23 count])
      {
        p_isa = &v99->super.super.isa;
        faceIdentification = v99->_faceIdentification;
        v122 = 0;
        v32 = [(CLSFaceIdentificationProtocol *)faceIdentification requestIdentificationOfFaces:v23 error:&v122];
        v33 = v122;
        v34 = v33;
        if (v33)
        {
          if (a6)
          {
            v35 = v33;
            *a6 = v34;
          }

          v36 = [(PGShareBackSource *)v99 loggingConnection];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v138 = v34;
            _os_log_error_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_ERROR, "[PGShareBackFacesSource] Error while getting classification results for faces: %@", buf, 0xCu);
          }

          v37 = 0;
        }

        else if ([v32 count])
        {
          v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v94 = v10;
          v95 = v32;
          if ([v10 count])
          {
            v39 = v36;
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            obj = v10;
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

                  v44 = [*(*(&v118 + 1) + 8 * k) collection];
                  v45 = [v44 personNodes];
                  v46 = [v45 localIdentifiers];
                  [v39 unionSet:v46];
                }

                v41 = [obj countByEnumeratingWithState:&v118 objects:v135 count:16];
              }

              while (v41);
            }

            p_isa = &v99->super.super.isa;
            v47 = [(PGShareBackSource *)v99 loggingConnection];
            v36 = v39;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v138 = v39;
              _os_log_impl(&dword_22F0FC000, v47, OS_LOG_TYPE_INFO, "[PGShareBackFacesSource] Persons to match: %@", buf, 0xCu);
            }

            v10 = v94;
            v32 = v95;
            v34 = 0;
          }

          v48 = [p_isa[3] length];
          if ([v36 count]| v48)
          {
            v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v114 = 0u;
            v115 = 0u;
            v116 = 0u;
            v117 = 0u;
            v49 = v12;
            v50 = [v49 countByEnumeratingWithState:&v114 objects:v134 count:16];
            if (!v50)
            {
              goto LABEL_100;
            }

            v51 = *v115;
            v91 = v49;
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
                  objc_enumerationMutation(v49);
                  v52 = v53;
                }

                v89 = v52;
                v54 = *(*(&v114 + 1) + 8 * v52);
                v110 = 0u;
                v111 = 0u;
                v112 = 0u;
                v113 = 0u;
                v55 = [v54 localIdentifier];
                v56 = [v98 objectForKeyedSubscript:v55];

                v57 = v56;
                v58 = [v56 countByEnumeratingWithState:&v110 objects:v133 count:16];
                if (!v58)
                {

                  goto LABEL_87;
                }

                v59 = 0;
                v60 = *v111;
                v93 = v36;
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
                    v63 = [*(*(&v110 + 1) + 8 * v61) localIdentifier];
                    v64 = [v32 objectForKeyedSubscript:v63];

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
                      v10 = v94;
LABEL_98:

                      v32 = v95;
                      v34 = 0;
                      v36 = v93;
LABEL_99:
                      v78 = [PGShareBackSuggesterResult alloc];
                      v79 = v59;
                      v49 = v91;
                      v80 = [(PGShareBackSuggesterResult *)v78 initWithInputs:v91 processingValue:v79 momentNodes:v10];
                      [v37 addObject:v80];

                      goto LABEL_100;
                    }

                    v10 = v94;
                    if (v85)
                    {
                      v71 = v99;
                      v72 = [v64 objectForKeyedSubscript:v99->_meLocalIdentifier];

                      LOWORD(v59) = 32;
                      if (v72 || v92 == 32)
                      {
                        goto LABEL_98;
                      }
                    }

                    else
                    {
                      v71 = v99;
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
                    v34 = 0;
                    v36 = v93;
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
                v49 = v91;
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

          v49 = [p_isa loggingConnection];
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_INFO, "[PGShareBackFacesSource] No persons to match", buf, 2u);
          }

          v37 = MEMORY[0x277CBEBF8];
LABEL_100:
        }

        else
        {
          v36 = [(PGShareBackSource *)v99 loggingConnection];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "[PGShareBackFacesSource] No classification results for faces", buf, 2u);
          }

          v37 = MEMORY[0x277CBEBF8];
        }
      }

      else
      {
        v34 = [(PGShareBackSource *)v99 loggingConnection];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "[PGShareBackFacesSource] No faces for assets", buf, 2u);
        }

        v37 = MEMORY[0x277CBEBF8];
      }

      v21 = v96;
      v18 = v97;
      v38 = v98;
    }

    else
    {
      v38 = [(PGShareBackSource *)self loggingConnection];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v138 = v11;
        _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_INFO, "[PGShareBackFacesSource] No assets with faces processed for asset local identifiers: %@", buf, 0xCu);
      }

      v37 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v18 = [(PGShareBackSource *)self loggingConnection];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[PGShareBackFacesSource] No assets to process", buf, 2u);
    }

    v37 = MEMORY[0x277CBEBF8];
  }

  v81 = *MEMORY[0x277D85DE8];

  return v37;
}

- (BOOL)prepareSourceWithGraph:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [a3 meNodeWithFallbackInferredMeNode];
  v5 = v4;
  if (v4)
  {
    if (([v4 isMeNode] & 1) == 0)
    {
      v6 = [(PGShareBackSource *)self loggingConnection];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v5;
        _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_DEFAULT, "[PGShareBackFacesSource] No meNode set, using inferred meNode %@", &v22, 0xCu);
      }
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v8 = [v5 localIdentifier];
    meLocalIdentifier = self->_meLocalIdentifier;
    self->_meLocalIdentifier = v8;

    v10 = [v5 collection];
    v11 = [v10 childPersonNodes];
    v12 = [v11 localIdentifiers];
    [v7 unionSet:v12];

    v13 = [v10 inferredChildPersonNodes];
    v14 = [v13 localIdentifiers];
    [v7 unionSet:v14];

    if ([v7 count])
    {
      v15 = [(PGShareBackSource *)self loggingConnection];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v7 debugDescription];
        v22 = 138412290;
        v23 = v16;
        _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_DEFAULT, "[PGShareBackFacesSource] Child persons to check %@", &v22, 0xCu);
      }
    }
  }

  else
  {
    v17 = [(PGShareBackSource *)self loggingConnection];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_DEFAULT, "[PGShareBackFacesSource] Couldn't infer device owner", &v22, 2u);
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v18 = [v7 copy];
  childPersonLocalIdentifiers = self->_childPersonLocalIdentifiers;
  self->_childPersonLocalIdentifiers = v18;

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

- (PGShareBackFacesSource)initWithLoggingConnection:(id)a3 photoLibrary:(id)a4 faceIdentification:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PGShareBackFacesSource;
  v11 = [(PGShareBackSource *)&v14 initWithLoggingConnection:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_photoLibrary, a4);
    objc_storeStrong(&v12->_faceIdentification, a5);
  }

  return v12;
}

- (PGShareBackFacesSource)initWithLoggingConnection:(id)a3 photoLibrary:(id)a4
{
  v6 = MEMORY[0x277D276B0];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [(PGShareBackFacesSource *)self initWithLoggingConnection:v8 photoLibrary:v7 faceIdentification:v9];

  return v10;
}

@end