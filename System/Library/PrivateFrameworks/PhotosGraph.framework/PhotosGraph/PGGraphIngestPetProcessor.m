@interface PGGraphIngestPetProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)a3;
- (PGGraphIngestPetProcessor)initWithGraphBuilder:(id)a3;
- (id)_fetchAllVerifiedPetsInPhotosLibrary:(id)a3;
- (id)_fetchVerifiedPetsWithLocalIdentifiers:(id)a3 inPhotoLibrary:(id)a4;
- (id)initForTestingWithGraphBuilder:(id)a3;
- (id)momentNodesForPerson:(id)a3 inPhotoLibrary:(id)a4 withGraph:(id)a5;
- (unint64_t)_speciesForDetectionType:(signed __int16)a3;
- (void)_deleteAllPetNodesInGraph:(id)a3;
- (void)_deletePetNodesWithLocalIdentifiers:(id)a3 inGraph:(id)a4;
- (void)runPetIngestWithGraphUpdate:(id)a3 progressBlock:(id)a4;
@end

@implementation PGGraphIngestPetProcessor

void __92__PGGraphIngestPetProcessor__donatePetRelationshipsForPetNodes_isFullRebuild_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_error_impl(&dword_22F0FC000, v4, OS_LOG_TYPE_ERROR, "PGGraphIngestPetProcessor - inferred pet relationship donation failed: %{public}@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_INFO))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_22F0FC000, v4, OS_LOG_TYPE_INFO, "PGGraphIngestPetProcessor - inferred pet relationship donation succeeded", &v6, 2u);
  }

  dispatch_group_leave(*(a1 + 40));

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_deleteAllPetNodesInGraph:(id)a3
{
  v3 = a3;
  v5 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection nodesInGraph:v3];
  v4 = objc_alloc_init(MEMORY[0x277D22C50]);
  [v4 removeNodes:v5];
  [v3 executeGraphChangeRequest:v4];
}

- (void)_deletePetNodesWithLocalIdentifiers:(id)a3 inGraph:(id)a4
{
  v8 = a3;
  v5 = a4;
  if ([v8 count])
  {
    v6 = [PGGraphPetNodeCollection petNodesForLocalIdentifiers:v8 inGraph:v5];
    v7 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v7 removeNodes:v6];
    [v5 executeGraphChangeRequest:v7];
  }
}

- (id)_fetchVerifiedPetsWithLocalIdentifiers:(id)a3 inPhotoLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [v6 librarySpecificFetchOptions];
    v8 = [objc_opt_class() supportedPetDetectionTypes];
    [v7 setIncludedDetectionTypes:v8];

    [v7 setPersonContext:1];
    v9 = MEMORY[0x277CD9938];
    v10 = [v5 allObjects];
    v11 = [v9 fetchPersonsWithLocalIdentifiers:v10 options:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_fetchAllVerifiedPetsInPhotosLibrary:(id)a3
{
  v3 = [a3 librarySpecificFetchOptions];
  v4 = [objc_opt_class() supportedPetDetectionTypes];
  [v3 setIncludedDetectionTypes:v4];

  [v3 setPersonContext:1];
  v5 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:v3];

  return v5;
}

- (unint64_t)_speciesForDetectionType:(signed __int16)a3
{
  result = 1;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v9 = v3;
        v10 = v4;
        v6 = +[PGLogging sharedLogging];
        v7 = [v6 loggingConnection];

        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *v8 = 0;
          _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "Received person's face when expected animal's face", v8, 2u);
        }

        return 0;
      }

      return result;
    }

    return 0;
  }

  if (a3 == 2)
  {
    return 0;
  }

  if (a3 == 3)
  {
    return 2;
  }

  return result;
}

- (id)momentNodesForPerson:(id)a3 inPhotoLibrary:(id)a4 withGraph:(id)a5
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x277CD98F8];
  v10 = [a3 localIdentifier];
  v29[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v12 = [v7 librarySpecificFetchOptions];
  v13 = [v9 fetchMomentsForPersonsWithLocalIdentifiers:v11 options:v12];

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v24 + 1) + 8 * i) uuid];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  v21 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v14 inGraph:v8];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)runPetIngestWithGraphUpdate:(id)a3 progressBlock:(id)a4
{
  v116 = *MEMORY[0x277D85DE8];
  v90 = a3;
  v81 = a4;
  v5 = 0.0;
  v94 = _Block_copy(v81);
  if (!v94 || (v6 = CFAbsoluteTimeGetCurrent(), v6 < 0.01))
  {
LABEL_7:
    v92 = [(PGGraphBuilder *)self->_graphBuilder graph];
    v85 = [(PGGraphBuilder *)self->_graphBuilder photoLibrary];
    v7 = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    v8 = os_signpost_id_generate(v7);
    v9 = v7;
    v10 = v9;
    spid = v8;
    v79 = v8 - 1;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PGGraphIngestPetProcessor", "", buf, 2u);
    }

    v83 = v10;

    info = 0;
    mach_timebase_info(&info);
    v77 = mach_absolute_time();
    if (v94)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v5 >= 0.01)
      {
        v108[0] = 0;
        v94[2](v94, v108, 0.0);
        if (v108[0])
        {
          v12 = v10;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *&buf[4] = 120;
            *&buf[8] = 2080;
            *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_106;
        }

        v5 = Current;
      }
    }

    v80 = [v90 isResumingFullAnalysis];
    if (v80)
    {
      [(PGGraphIngestPetProcessor *)self _deleteAllPetNodesInGraph:v92];
      v86 = [(PGGraphIngestPetProcessor *)self _fetchAllVerifiedPetsInPhotosLibrary:v85];
    }

    else
    {
      v13 = [v90 momentNodesToProcessInGraph:v92 forMomentUpdateTypes:objc_msgSend(objc_opt_class() includeInsertedNodes:{"requiredMomentUpdateTypes"), 1}];
      v14 = [v13 petNodes];
      v15 = [v14 localIdentifiers];

      v16 = [MEMORY[0x277CBEB58] set];
      [v16 unionSet:v15];
      v17 = [v90 localIdentifiersOfPersonsToUpdate];
      [v16 unionSet:v17];

      v18 = [v90 localIdentifiersOfPersonsToDelete];
      [v16 unionSet:v18];

      v19 = [MEMORY[0x277CBEB58] set];
      [v19 unionSet:v15];
      v20 = [v90 localIdentifiersOfPersonsToUpdate];
      [v19 unionSet:v20];

      [(PGGraphIngestPetProcessor *)self _deletePetNodesWithLocalIdentifiers:v16 inGraph:v92];
      v86 = [(PGGraphIngestPetProcessor *)self _fetchVerifiedPetsWithLocalIdentifiers:v19 inPhotoLibrary:v85];
    }

    if (!v86 || ![v86 count])
    {
      v25 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v28 = v83;
      v29 = v28;
      if (v79 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphIngestPetProcessor", "", buf, 2u);
      }

      if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        goto LABEL_105;
      }

      *buf = 136315394;
      *&buf[4] = "PGGraphIngestPetProcessor";
      *&buf[12] = 2048;
      *&buf[14] = ((((v25 - v77) * numer) / denom) / 1000000.0);
      v23 = "[Performance] %s: %f ms";
      v22 = v29;
      v24 = 22;
      goto LABEL_31;
    }

    if (v94)
    {
      v21 = CFAbsoluteTimeGetCurrent();
      if (v21 - v5 >= 0.01)
      {
        v108[0] = 0;
        v94[2](v94, v108, 0.2);
        if (v108[0])
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_105:

            v12 = v83;
LABEL_106:

            goto LABEL_107;
          }

          *buf = 67109378;
          *&buf[4] = 155;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
          v22 = MEMORY[0x277D86220];
          v23 = "Cancelled at line %d in file %s";
          v24 = 18;
LABEL_31:
          _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, v23, buf, v24);
          goto LABEL_105;
        }

        v5 = v21;
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v113 = __Block_byref_object_copy__11977;
    v114 = __Block_byref_object_dispose__11978;
    v115 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = __71__PGGraphIngestPetProcessor_runPetIngestWithGraphUpdate_progressBlock___block_invoke;
    v106[3] = &unk_2788800B8;
    v106[4] = buf;
    [v86 enumerateObjectsUsingBlock:v106];
    v89 = [MEMORY[0x277CD98F8] fetchMomentUUIDsByPersonUUIDForPersonsWithUUIDs:*(*&buf[8] + 40) photoLibrary:v85];
    if (v94)
    {
      v30 = CFAbsoluteTimeGetCurrent();
      if (v30 - v5 >= 0.01)
      {
        v105 = 0;
        v94[2](v94, &v105, 0.3);
        if (v105)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v108 = 67109378;
            *v109 = 164;
            *&v109[4] = 2080;
            *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v108, 0x12u);
          }

          goto LABEL_104;
        }

        v5 = v30;
      }
    }

    v31 = [v86 count];
    v84 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v31];
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    obj = v86;
    v32 = [obj countByEnumeratingWithState:&v101 objects:v111 count:16];
    v34 = v31;
    if (v32)
    {
      v91 = 0;
      v87 = *v102;
      v35 = 0.3;
      *&v33 = 67109378;
      v76 = v33;
      while (2)
      {
        v36 = 0;
        v37 = v5;
        v88 = v32;
        do
        {
          if (*v102 != v87)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v101 + 1) + 8 * v36);
          v39 = objc_autoreleasePoolPush();
          v40 = -[PGGraphIngestPetProcessor _speciesForDetectionType:](self, "_speciesForDetectionType:", [v38 detectionType]);
          v41 = [v38 uuid];
          v42 = [v89 objectForKeyedSubscript:v41];

          if ([v42 count])
          {
            v43 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v42 inGraph:v92];
            v44 = [v38 type];
            v45 = [PGPet alloc];
            v46 = [v38 localIdentifier];
            v47 = [v38 name];
            v48 = [(PGPet *)v45 initWithLocalIdentifier:v46 petSpecies:v40 name:v47 isFavorite:v44 == 1 momentNodes:v43 ownerNodes:0];

            [v84 addObject:v48];
          }

          v35 = 0.2 / v34 + v35;
          if (v94 && (v5 = CFAbsoluteTimeGetCurrent(), v5 - v37 >= 0.01))
          {
            v105 = 0;
            v94[2](v94, &v105, v35);
            if (v105 | v91 & 1)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *v108 = v76;
                *v109 = 182;
                *&v109[4] = 2080;
                *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v108, 0x12u);
              }

              v49 = 0;
              v91 = 1;
            }

            else
            {
              v91 = 0;
              v49 = 1;
            }
          }

          else
          {
            v49 = 1;
            v5 = v37;
          }

          objc_autoreleasePoolPop(v39);
          if (!v49)
          {

            goto LABEL_103;
          }

          ++v36;
          v37 = v5;
        }

        while (v88 != v36);
        v32 = [obj countByEnumeratingWithState:&v101 objects:v111 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v91 = 0;
      v35 = 0.3;
    }

    if (v94)
    {
      v50 = &unk_22F784000;
      v51 = CFAbsoluteTimeGetCurrent();
      if (v51 - v5 >= 0.01)
      {
        v105 = 0;
        v94[2](v94, &v105, 0.5);
        if (v105 | v91 & 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v108 = 67109378;
            *v109 = 185;
            *&v109[4] = 2080;
            *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
            v52 = MEMORY[0x277D86220];
LABEL_83:
            _os_log_impl(&dword_22F0FC000, v52, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v108, 0x12u);
            goto LABEL_103;
          }

          goto LABEL_103;
        }

        v91 = 0;
        v5 = v51;
      }
    }

    else
    {
      v50 = &unk_22F784000;
    }

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v53 = v84;
    v54 = [v53 countByEnumeratingWithState:&v97 objects:v110 count:16];
    if (v54)
    {
      v55 = *v98;
      v56 = v50[76];
      v57 = 0.3 / v34;
      while (2)
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v98 != v55)
          {
            objc_enumerationMutation(v53);
          }

          v59 = [(PGGraphBuilder *)self->_graphBuilder insertPet:*(*(&v97 + 1) + 8 * i), v76];
          v35 = v57 + v35;
          if (v94)
          {
            v60 = CFAbsoluteTimeGetCurrent();
            if (v60 - v5 >= v56)
            {
              v105 = 0;
              v94[2](v94, &v105, v35);
              if (v105 | v91 & 1)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *v108 = 67109378;
                  *v109 = 192;
                  *&v109[4] = 2080;
                  *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v108, 0x12u);
                }

                goto LABEL_103;
              }

              v91 = 0;
              v5 = v60;
            }
          }
        }

        v54 = [v53 countByEnumeratingWithState:&v97 objects:v110 count:16];
        if (v54)
        {
          continue;
        }

        break;
      }
    }

    if (v94)
    {
      v61 = &unk_22F784000;
      v62 = CFAbsoluteTimeGetCurrent();
      if (v62 - v5 >= 0.01)
      {
        v105 = 0;
        v94[2](v94, &v105, 0.8);
        if (v105 | v91 & 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v108 = 67109378;
            *v109 = 195;
            *&v109[4] = 2080;
            *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
            v52 = MEMORY[0x277D86220];
            goto LABEL_83;
          }

LABEL_103:

LABEL_104:
          _Block_object_dispose(buf, 8);

          goto LABEL_105;
        }

        v91 = 0;
        v5 = v62;
      }
    }

    else
    {
      v61 = &unk_22F784000;
    }

    v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __71__PGGraphIngestPetProcessor_runPetIngestWithGraphUpdate_progressBlock___block_invoke_323;
    v95[3] = &unk_2788800E0;
    v64 = v63;
    v96 = v64;
    [PGImportantEntitiesPetProcessor processUserPetsInGraph:v92 progressBlock:v81 withProcessInferredPetNodeClosure:v95];
    if ([v64 count])
    {
      graphBuilder = self->_graphBuilder;
      v66 = [v92 meNode];
      [(PGGraphBuilder *)graphBuilder insertOwner:v66 forPets:v64];

      v61 = &unk_22F784000;
    }

    [(PGGraphIngestPetProcessor *)self _donatePetRelationshipsForPetNodes:v64 isFullRebuild:v80 progressBlock:v81, v76];
    if (v94 && CFAbsoluteTimeGetCurrent() - v5 >= v61[76] && (v105 = 0, v94[2](v94, &v105, 1.0), v105 | v91 & 1))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_102:

        goto LABEL_103;
      }

      *v108 = 67109378;
      *v109 = 211;
      *&v109[4] = 2080;
      *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
      v67 = MEMORY[0x277D86220];
      v68 = "Cancelled at line %d in file %s";
      v69 = 18;
    }

    else
    {
      v70 = mach_absolute_time();
      v71 = info.numer;
      v72 = info.denom;
      v73 = v83;
      v74 = v73;
      if (v79 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
      {
        *v108 = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v74, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphIngestPetProcessor", "", v108, 2u);
      }

      if (!os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        goto LABEL_102;
      }

      *v108 = 136315394;
      *v109 = "PGGraphIngestPetProcessor";
      *&v109[8] = 2048;
      *&v109[10] = ((((v70 - v77) * v71) / v72) / 1000000.0);
      v68 = "[Performance] %s: %f ms";
      v67 = v74;
      v69 = 22;
    }

    _os_log_impl(&dword_22F0FC000, v67, OS_LOG_TYPE_INFO, v68, v108, v69);
    goto LABEL_102;
  }

  v108[0] = 0;
  v94[2](v94, v108, 0.0);
  if (v108[0] != 1)
  {
    v5 = v6;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 113;
    *&buf[8] = 2080;
    *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_107:

  v75 = *MEMORY[0x277D85DE8];
}

void __71__PGGraphIngestPetProcessor_runPetIngestWithGraphUpdate_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 uuid];
  [v2 addObject:v3];
}

- (BOOL)shouldRunWithGraphUpdate:(id)a3
{
  v3 = a3;
  if ([v3 isResumingFullAnalysis] & 1) != 0 || (objc_msgSend(v3, "hasPersonsToUpdate") & 1) != 0 || (objc_msgSend(v3, "hasPersonsToDelete"))
  {
    v4 = 1;
  }

  else
  {
    v6 = [v3 momentUpdateTypes];
    v4 = ([objc_opt_class() requiredMomentUpdateTypes] & v6) != 0;
  }

  return v4;
}

- (id)initForTestingWithGraphBuilder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphIngestPetProcessor;
  v6 = [(PGGraphIngestPetProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, a3);
    v7->_petPrintClusteringEnabled = 0;
  }

  return v7;
}

- (PGGraphIngestPetProcessor)initWithGraphBuilder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphIngestPetProcessor;
  v6 = [(PGGraphIngestPetProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, a3);
    v7->_petPrintClusteringEnabled = 1;
  }

  return v7;
}

@end