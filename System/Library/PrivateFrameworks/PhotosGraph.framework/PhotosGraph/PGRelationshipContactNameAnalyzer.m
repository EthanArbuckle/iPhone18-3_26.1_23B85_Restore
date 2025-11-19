@interface PGRelationshipContactNameAnalyzer
- (PGRelationshipContactNameAnalyzer)initWithRelationshipProcessor:(id)a3;
- (void)runAnalysisWithProgressBlock:(id)a3;
@end

@implementation PGRelationshipContactNameAnalyzer

- (void)runAnalysisWithProgressBlock:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _Block_copy(v4);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (v5 && (v6 = CFAbsoluteTimeGetCurrent(), v6 - v36[3] >= 0.01) && (v36[3] = v6, LOBYTE(v43[0]) = 0, (*(v5 + 2))(v5, v43, 0.0), v7 = *(v40 + 24) | LOBYTE(v43[0]), *(v40 + 24) = v7, (v7 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x2604000202;
      LOWORD(v47) = 2080;
      *(&v47 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipContactNameAnalyzer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    v9 = [WeakRetained graph];
    v10 = [v9 inferredUserLocales];
    v11 = [WeakRetained serviceManager];
    v12 = [v11 mePerson];
    v13 = [WeakRetained personNodes];
    v14 = [v13 count];
    buf = 0;
    *&v47 = &buf;
    *(&v47 + 1) = 0x2020000000;
    v48 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __66__PGRelationshipContactNameAnalyzer_runAnalysisWithProgressBlock___block_invoke;
    v24[3] = &unk_278889A50;
    p_buf = &buf;
    v33 = 1.0 / v14;
    v15 = v5;
    v29 = v15;
    v31 = &v35;
    v34 = 0x3F847AE147AE147BLL;
    v32 = &v39;
    v16 = v11;
    v25 = v16;
    v17 = v10;
    v26 = v17;
    v18 = WeakRetained;
    v27 = v18;
    v19 = v12;
    v28 = v19;
    [v13 enumerateNodesUsingBlock:v24];
    if (v5)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v36[3] >= 0.01)
      {
        v36[3] = Current;
        v23 = 0;
        (*(v15 + 2))(v15, &v23, 1.0);
        v21 = *(v40 + 24) | v23;
        *(v40 + 24) = v21;
        if ((v21 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v43[0] = 67109378;
          v43[1] = 105;
          v44 = 2080;
          v45 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipContactNameAnalyzer.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v43, 0x12u);
        }
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  v22 = *MEMORY[0x277D85DE8];
}

void __66__PGRelationshipContactNameAnalyzer_runAnalysisWithProgressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  *(*(*(a1 + 72) + 8) + 24) = *(a1 + 96) + *(*(*(a1 + 72) + 8) + 24);
  if (!*(a1 + 64) || (Current = CFAbsoluteTimeGetCurrent(), v7 = *(*(a1 + 80) + 8), Current - *(v7 + 24) < *(a1 + 104)) || (*(v7 + 24) = Current, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) != 1))
  {
    v8 = [v5 name];
    if (![v8 length])
    {
LABEL_20:

      goto LABEL_21;
    }

    v9 = [v5 contactIdentifier];
    if ([v9 length] && (objc_msgSend(*(a1 + 32), "personForIdentifier:", v9), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = v10;
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277D27760]);
      [v11 setFullName:v8];
      if (!v11)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    if (([*(a1 + 32) relationshipHintForPerson:v11 usingLocales:*(a1 + 40)] - 8) <= 2)
    {
      v12 = *(a1 + 48);
      v13 = [v5 localIdentifier];
      v14 = [v12 relationshipAnalyzerPropertiesForPersonLocalIdentifier:v13];

      if (v14)
      {
        [v14 registerParentContactName];
      }
    }

    if (*(a1 + 56) && [v11 hasSameFamilyNameAsPerson:?])
    {
      v15 = *(a1 + 48);
      v16 = [v5 localIdentifier];
      v17 = [v15 relationshipAnalyzerPropertiesForPersonLocalIdentifier:v16];

      if (v17)
      {
        [v17 registerSameFamilyNameAsMePerson];
      }
    }

    goto LABEL_19;
  }

  *a3 = 1;
LABEL_21:
}

- (PGRelationshipContactNameAnalyzer)initWithRelationshipProcessor:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PGRelationshipContactNameAnalyzer;
  v5 = [(PGRelationshipContactNameAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, v4);
  }

  return v6;
}

@end