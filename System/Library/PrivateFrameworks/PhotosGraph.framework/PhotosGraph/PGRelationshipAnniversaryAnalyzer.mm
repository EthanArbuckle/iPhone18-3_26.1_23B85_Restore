@interface PGRelationshipAnniversaryAnalyzer
- (PGRelationshipAnniversaryAnalyzer)initWithRelationshipProcessor:(id)a3;
- (void)runAnalysisWithProgressBlock:(id)a3;
@end

@implementation PGRelationshipAnniversaryAnalyzer

- (void)runAnalysisWithProgressBlock:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _Block_copy(v4);
  v29 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  if (v5 && (v6 = CFAbsoluteTimeGetCurrent(), v6 - v27[3] >= 0.01) && (v27[3] = v6, LOBYTE(v34[0]) = 0, (*(v5 + 2))(v5, v34, 0.0), v7 = *(v31 + 24) | LOBYTE(v34[0]), *(v31 + 24) = v7, (v7 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x2104000202;
      LOWORD(v38) = 2080;
      *(&v38 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipAnniversaryAnalyzer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    v9 = [WeakRetained personNodes];
    v10 = [v9 count];
    buf = 0;
    *&v38 = &buf;
    *(&v38 + 1) = 0x2020000000;
    v39 = 0;
    v11 = 1.0 / v10;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __66__PGRelationshipAnniversaryAnalyzer_runAnalysisWithProgressBlock___block_invoke;
    v18[3] = &unk_27887FBD0;
    v12 = WeakRetained;
    v19 = v12;
    p_buf = &buf;
    v24 = v11;
    v13 = v5;
    v20 = v13;
    v22 = &v26;
    v25 = 0x3F847AE147AE147BLL;
    v23 = &v30;
    [v9 enumerateNodesUsingBlock:v18];
    if (v5)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v27[3] >= 0.01)
      {
        v27[3] = Current;
        v17 = 0;
        (*(v13 + 2))(v13, &v17, 1.0);
        v15 = *(v31 + 24) | v17;
        *(v31 + 24) = v15;
        if ((v15 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v34[0] = 67109378;
          v34[1] = 54;
          v35 = 2080;
          v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipAnniversaryAnalyzer.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v34, 0x12u);
        }
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  v16 = *MEMORY[0x277D85DE8];
}

void __66__PGRelationshipAnniversaryAnalyzer_runAnalysisWithProgressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 anniversaryDate];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v5 localIdentifier];
    v9 = [v7 relationshipAnalyzerPropertiesForPersonLocalIdentifier:v8];

    if (v9)
    {
      [v9 registerAnniversaryDate];
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = *(a1 + 72) + *(*(*(a1 + 48) + 8) + 24);
  if (*(a1 + 40))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v11 = *(*(a1 + 56) + 8);
    if (Current - *(v11 + 24) >= *(a1 + 80))
    {
      *(v11 + 24) = Current;
      (*(*(a1 + 40) + 16))(*(*(*(a1 + 48) + 8) + 24));
      *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        *a3 = 1;
      }
    }
  }
}

- (PGRelationshipAnniversaryAnalyzer)initWithRelationshipProcessor:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PGRelationshipAnniversaryAnalyzer;
  v5 = [(PGRelationshipAnniversaryAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, v4);
  }

  return v6;
}

@end