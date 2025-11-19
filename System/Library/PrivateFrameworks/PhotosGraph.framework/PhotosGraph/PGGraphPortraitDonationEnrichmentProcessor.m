@interface PGGraphPortraitDonationEnrichmentProcessor
- (id)_knowledgeToDonateFromAccumulatedNodesWithProgressBlock:(id)a3;
- (id)_locationNamedEntitiesFromAddressNodes:(id)a3 dates:(id)a4 currentProgress:(double *)a5 progressFraction:(double)a6 progressBlock:(id)a7;
- (id)_namedEntitiesFromNamedEntityNodes:(id)a3 currentProgress:(double *)a4 progressFraction:(double)a5 progressBlock:(id)a6;
- (id)_topicsFromTopicNodes:(id)a3 currentProgress:(double *)a4 progressFraction:(double)a5 progressBlock:(id)a6;
- (void)_accumulateKnowledgeNodesFromMomentNodes:(id)a3 progressBlock:(id)a4;
- (void)_donateKnowledge:(id)a3 donationDate:(id)a4 loggingConnection:(id)a5;
- (void)_donateKnowledgeWithManager:(id)a3 progressBlock:(id)a4;
- (void)_prepareForKnowledgeDonation;
- (void)enrichDataModelWithManager:(id)a3 curationContext:(id)a4 graphUpdateInventory:(id)a5 progressReporter:(id)a6;
@end

@implementation PGGraphPortraitDonationEnrichmentProcessor

- (id)_namedEntitiesFromNamedEntityNodes:(id)a3 currentProgress:(double *)a4 progressFraction:(double)a5 progressBlock:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  if (!a4)
  {
    v41 = 0;
    a4 = &v41;
  }

  v11 = [v9 count];
  if (!v11)
  {
    v18 = MEMORY[0x277CBEBF8];
    goto LABEL_31;
  }

  v12 = v11;
  v13 = [v9 pg_accumulatedCount];
  v14 = *a4;
  v15 = _Block_copy(v10);
  v16 = 0.0;
  if (!v15)
  {
    goto LABEL_12;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current < 0.01)
  {
    goto LABEL_12;
  }

  v40 = 0;
  v15[2](v15, &v40, v14);
  if (v40 != 1)
  {
    v16 = Current;
LABEL_12:
    v35 = a4;
    v19 = [MEMORY[0x277CBEB18] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v20 = v9;
    v21 = [v20 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = a5 / v12;
      v24 = *v37;
      v25 = v13;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v36 + 1) + 8 * i);
          v28 = [v20 countForObject:v27];
          v29 = [v27 pg_namedEntity];
          if (v29)
          {
            v30 = v29;
            v31 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v29 score:v28 / v25];
            [v19 addObject:v31];
            v14 = v23 + v14;
            if (v15)
            {
              v32 = CFAbsoluteTimeGetCurrent();
              if (v32 - v16 >= 0.01)
              {
                v40 = 0;
                v15[2](v15, &v40, v14);
                if (v40)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    v44 = 517;
                    v45 = 2080;
                    v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  v18 = MEMORY[0x277CBEBF8];
                  goto LABEL_29;
                }

                v16 = v32;
              }
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    *v35 = v14;
    v18 = v19;
LABEL_29:

    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v44 = 499;
    v45 = 2080;
    v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v18 = MEMORY[0x277CBEBF8];
LABEL_30:

LABEL_31:
  v33 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_locationNamedEntitiesFromAddressNodes:(id)a3 dates:(id)a4 currentProgress:(double *)a5 progressFraction:(double)a6 progressBlock:(id)a7
{
  v65 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v48 = a4;
  v12 = a7;
  if (!a5)
  {
    v58 = 0;
    a5 = &v58;
  }

  v13 = [v11 count];
  if (!v13)
  {
    v20 = MEMORY[0x277CBEBF8];
    goto LABEL_39;
  }

  v14 = v13;
  v15 = [v11 pg_accumulatedCount];
  v16 = *a5;
  v17 = _Block_copy(v12);
  v18 = 0.0;
  if (!v17)
  {
    goto LABEL_12;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current < 0.01)
  {
    goto LABEL_12;
  }

  v57 = 0;
  v17[2](v17, &v57, v16);
  if (v57 != 1)
  {
    v18 = Current;
LABEL_12:
    v41 = a5;
    v42 = v12;
    v21 = [MEMORY[0x277CBEB18] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v43 = v11;
    v22 = v11;
    v47 = [v22 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v47)
    {
      v23 = a6 / v14;
      v46 = *v54;
      v24 = v15;
      v44 = v22;
      v45 = v17;
      while (2)
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v54 != v46)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v53 + 1) + 8 * i);
          v27 = [v22 countForObject:v26];
          v28 = [v48 objectForKeyedSubscript:v26];
          if ([v28 count])
          {
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v29 = v28;
            v30 = [v29 countByEnumeratingWithState:&v49 objects:v59 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = v27 / v24;
              v33 = *v50;
LABEL_20:
              v34 = 0;
              while (1)
              {
                if (*v50 != v33)
                {
                  objc_enumerationMutation(v29);
                }

                v35 = *(*(&v49 + 1) + 8 * v34);
                v36 = [v26 pg_locationNamedEntity];
                if (!v36)
                {
                  break;
                }

                v37 = v36;
                [v36 setScore:v32];
                [v37 setDate:v35];
                [v21 addObject:v37];

                if (v31 == ++v34)
                {
                  v31 = [v29 countByEnumeratingWithState:&v49 objects:v59 count:16];
                  if (v31)
                  {
                    goto LABEL_20;
                  }

                  break;
                }
              }
            }

            v22 = v44;
            v17 = v45;
          }

          v16 = v23 + v16;
          if (v17)
          {
            v38 = CFAbsoluteTimeGetCurrent();
            if (v38 - v18 >= 0.01)
            {
              v57 = 0;
              v17[2](v17, &v57, v16);
              if (v57)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v62 = 473;
                  v63 = 2080;
                  v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v20 = MEMORY[0x277CBEBF8];
                goto LABEL_37;
              }

              v18 = v38;
            }
          }
        }

        v47 = [v22 countByEnumeratingWithState:&v53 objects:v60 count:16];
        if (v47)
        {
          continue;
        }

        break;
      }
    }

    *v41 = v16;
    v20 = v21;
LABEL_37:
    v11 = v43;

    v12 = v42;
    goto LABEL_38;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v62 = 447;
    v63 = 2080;
    v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v20 = MEMORY[0x277CBEBF8];
LABEL_38:

LABEL_39:
  v39 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_topicsFromTopicNodes:(id)a3 currentProgress:(double *)a4 progressFraction:(double)a5 progressBlock:(id)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  if (!a4)
  {
    v40 = 0;
    a4 = &v40;
  }

  v11 = [v9 count];
  if (!v11)
  {
    v18 = MEMORY[0x277CBEC10];
    goto LABEL_30;
  }

  v12 = v11;
  v13 = [v9 pg_accumulatedCount];
  v14 = *a4;
  v15 = _Block_copy(v10);
  v16 = 0.0;
  if (!v15)
  {
    goto LABEL_12;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current < 0.01)
  {
    goto LABEL_12;
  }

  v39 = 0;
  v15[2](v15, &v39, v14);
  if (v39 != 1)
  {
    v16 = Current;
LABEL_12:
    v34 = a4;
    v19 = [MEMORY[0x277CBEB38] dictionary];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = v9;
    v21 = [v20 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = a5 / v12;
      v24 = *v36;
      v25 = v13;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v35 + 1) + 8 * i);
          v28 = [v20 countForObject:v27];
          v29 = [v27 pg_topic];
          if (v29)
          {
            v30 = [MEMORY[0x277CCABB0] numberWithDouble:v28 / v25];
            [v19 setObject:v30 forKeyedSubscript:v29];

            v14 = v23 + v14;
            if (v15)
            {
              v31 = CFAbsoluteTimeGetCurrent();
              if (v31 - v16 >= 0.01)
              {
                v39 = 0;
                v15[2](v15, &v39, v14);
                if (v39)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    v43 = 421;
                    v44 = 2080;
                    v45 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  v18 = MEMORY[0x277CBEC10];
                  goto LABEL_28;
                }

                v16 = v31;
              }
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v35 objects:v41 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    *v34 = v14;
    v18 = v19;
LABEL_28:

    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v43 = 404;
    v44 = 2080;
    v45 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v18 = MEMORY[0x277CBEC10];
LABEL_29:

LABEL_30:
  v32 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)_donateKnowledge:(id)a3 donationDate:(id)a4 loggingConnection:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_opt_class() graphDonationBundleId];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __94__PGGraphPortraitDonationEnrichmentProcessor__donateKnowledge_donationDate_loggingConnection___block_invoke;
  v17[3] = &unk_278889470;
  v18 = v7;
  v19 = v10;
  v20 = v8;
  v21 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  v14 = v7;
  v15 = dispatch_block_create(0, v17);
  v16 = dispatch_get_global_queue(0, 0);
  dispatch_async(v16, v15);

  dispatch_block_wait(v15, 0x2540BE400uLL);
}

void __94__PGGraphPortraitDonationEnrichmentProcessor__donateKnowledge_donationDate_loggingConnection___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) topics];
  if (![v2 count])
  {
    v6 = 0;
    goto LABEL_7;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v25 = 0;
  v5 = [MEMORY[0x277D3A388] donatePhotosTopics:v2 bundleId:v3 date:v4 error:&v25];
  v6 = v25;
  if (v5)
  {
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v7 = *(a1 + 56);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "PortraitEnrichment - Failed to donate topics with error: %@", buf, 0xCu);
  }

  v8 = 0;
LABEL_8:
  v9 = [*(a1 + 32) locationNamedEntities];
  v10 = [v9 count];
  if (v8 && v10)
  {
    v11 = *(a1 + 40);
    v24 = v6;
    v12 = [MEMORY[0x277D3A388] donatePhotosLocationNamedEntities:v9 bundleId:v11 error:&v24];
    v13 = v24;

    if (v12)
    {
      v8 = 1;
    }

    else
    {
      v14 = *(a1 + 56);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v13;
        _os_log_error_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_ERROR, "PortraitEnrichment - Failed to donate location named entities with error: %@", buf, 0xCu);
      }

      v8 = 0;
    }
  }

  else
  {
    v13 = v6;
  }

  v15 = [*(a1 + 32) namedEntities];
  v16 = [v15 count];
  if (v8 && v16)
  {
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v23 = v13;
    v19 = [MEMORY[0x277D3A388] donatePhotosNamedEntities:v15 bundleId:v17 date:v18 error:&v23];
    v20 = v23;

    if ((v19 & 1) == 0)
    {
      v21 = *(a1 + 56);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v20;
        _os_log_error_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_ERROR, "PortraitEnrichment - Failed to donate named entities with error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v20 = v13;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_knowledgeToDonateFromAccumulatedNodesWithProgressBlock:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _Block_copy(v4);
  v30 = 0.5;
  v6 = [(PGGraphPortraitDonationEnrichmentProcessor *)self _locationNamedEntitiesFromAddressNodes:self->_addressNodes dates:self->_datesByAddressNode currentProgress:&v30 progressFraction:v4 progressBlock:0.0714285714];
  v7 = 0.0;
  if (!v5 || (v8 = CFAbsoluteTimeGetCurrent(), v8 < 0.01))
  {
LABEL_8:
    v10 = [(PGGraphPortraitDonationEnrichmentProcessor *)self _topicsFromTopicNodes:self->_meaningNodes currentProgress:&v30 progressFraction:v4 progressBlock:0.0714285714];
    if (v5)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v7 >= 0.01)
      {
        v29 = 0;
        v5[2](v5, &v29, v30);
        if (v29)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v32 = 310;
            v33 = 2080;
            v34 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v9 = 0;
          goto LABEL_55;
        }

        v7 = Current;
      }
    }

    v12 = [(PGGraphPortraitDonationEnrichmentProcessor *)self _topicsFromTopicNodes:self->_roiNodes currentProgress:&v30 progressFraction:v4 progressBlock:0.0714285714];
    if (v5)
    {
      v13 = CFAbsoluteTimeGetCurrent();
      if (v13 - v7 >= 0.01)
      {
        v29 = 0;
        v5[2](v5, &v29, v30);
        if (v29)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v32 = 313;
            v33 = 2080;
            v34 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v9 = 0;
          goto LABEL_54;
        }

        v7 = v13;
      }
    }

    v14 = [(PGGraphPortraitDonationEnrichmentProcessor *)self _topicsFromTopicNodes:self->_poiNodes currentProgress:&v30 progressFraction:v4 progressBlock:0.0714285714];
    if (v5)
    {
      v15 = CFAbsoluteTimeGetCurrent();
      if (v15 - v7 >= 0.01)
      {
        v29 = 0;
        v5[2](v5, &v29, v30);
        if (v29)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v32 = 316;
            v33 = 2080;
            v34 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v9 = 0;
          goto LABEL_53;
        }

        v7 = v15;
      }
    }

    v16 = [(PGGraphPortraitDonationEnrichmentProcessor *)self _namedEntitiesFromNamedEntityNodes:self->_businessNodes currentProgress:&v30 progressFraction:v4 progressBlock:0.0714285714];
    v27 = v16;
    if (v5)
    {
      v17 = CFAbsoluteTimeGetCurrent();
      if (v17 - v7 >= 0.01)
      {
        v29 = 0;
        v5[2](v5, &v29, v30);
        if (v29)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v32 = 319;
            v33 = 2080;
            v34 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v9 = 0;
          goto LABEL_52;
        }

        v7 = v17;
      }
    }

    v28 = [(PGGraphPortraitDonationEnrichmentProcessor *)self _namedEntitiesFromNamedEntityNodes:self->_publicEventNodes currentProgress:&v30 progressFraction:v4 progressBlock:0.0714285714, v16];
    if (v5)
    {
      v18 = CFAbsoluteTimeGetCurrent();
      if (v18 - v7 >= 0.01)
      {
        v29 = 0;
        v5[2](v5, &v29, v30);
        if (v29)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v32 = 322;
            v33 = 2080;
            v34 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v9 = 0;
LABEL_51:

LABEL_52:
LABEL_53:

LABEL_54:
LABEL_55:

          goto LABEL_56;
        }

        v7 = v18;
      }
    }

    v19 = v6;
    v20 = v10;
    v21 = v12;
    v22 = [(PGGraphPortraitDonationEnrichmentProcessor *)self _namedEntitiesFromNamedEntityNodes:self->_performerNodes currentProgress:&v30 progressFraction:v4 progressBlock:0.0714285714];
    if (v5 && CFAbsoluteTimeGetCurrent() - v7 >= 0.01 && (v29 = 0, v5[2](v5, &v29, v30), v29))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v32 = 325;
        v33 = 2080;
        v34 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v9 = 0;
    }

    else
    {
      v23 = [MEMORY[0x277CBEB18] arrayWithArray:v16];
      [v23 addObjectsFromArray:v28];
      [v23 addObjectsFromArray:v22];
      v24 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v20];
      [v24 addEntriesFromDictionary:v14];
      [v24 addEntriesFromDictionary:v21];
      v9 = [[PGGraphPortraitKnowledgeToDonate alloc] initWithTopics:v24 namedEntities:v23 locationNamedEntities:v19];

      v12 = v21;
    }

    v10 = v20;
    v6 = v19;
    goto LABEL_51;
  }

  v29 = 0;
  v5[2](v5, &v29, v30);
  if (v29 != 1)
  {
    v7 = v8;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v32 = 307;
    v33 = 2080;
    v34 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v9 = 0;
LABEL_56:

  v25 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_accumulateKnowledgeNodesFromMomentNodes:(id)a3 progressBlock:(id)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8)
  {
    v9 = v8;
    v36 = v7;
    v10 = _Block_copy(v7);
    v44 = self->_meaningNodes;
    v38 = self->_poiNodes;
    v39 = self->_roiNodes;
    v43 = self->_businessNodes;
    v41 = self->_publicEventNodes;
    v40 = self->_performerNodes;
    v45 = self->_datesByAddressNode;
    v11 = self->_addressNodes;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v37 = v6;
    obj = v6;
    v12 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (!v12)
    {
      goto LABEL_63;
    }

    v13 = v12;
    v14 = 0;
    v15 = 0.3 / v9 / 7.0;
    v16 = 0.2;
    v17 = *v63;
    v18 = 0.0;
    while (1)
    {
      v19 = 0;
      v20 = v18;
      do
      {
        if (*v63 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v62 + 1) + 8 * v19);
        v22 = objc_autoreleasePoolPush();
        v23 = [v21 localStartDate];
        [v23 timeIntervalSince1970];
        v25 = v24;

        v26 = [v21 universalStartDate];
        [v26 timeIntervalSince1970];
        v28 = v27;

        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke;
        v58[3] = &unk_278880D60;
        v61 = v25 - v28;
        v59 = v45;
        v60 = v11;
        [v21 enumerateAddressEdgesAndNodesUsingBlock:v58];
        v16 = v15 + v16;
        if (!v10 || (v18 = CFAbsoluteTimeGetCurrent(), v18 - v20 < 0.01))
        {
          v18 = v20;
LABEL_10:
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke_321;
          v55[3] = &unk_2788877E0;
          v56 = v44;
          [v21 enumerateMeaningNodesUsingBlock:v55];
          v16 = v15 + v16;
          if (v10 && (v29 = CFAbsoluteTimeGetCurrent(), v29 - v18 >= 0.01))
          {
            v57 = 0;
            v10[2](v10, &v57, v16);
            if (!(v57 | v14 & 1))
            {
              v14 = 0;
              goto LABEL_13;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v67 = 266;
              v68 = 2080;
              v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v34 = 0;
            v14 = 1;
          }

          else
          {
            v29 = v18;
LABEL_13:
            v53[0] = MEMORY[0x277D85DD0];
            v53[1] = 3221225472;
            v53[2] = __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke_323;
            v53[3] = &unk_278887620;
            v54 = v43;
            [v21 enumerateBusinessNodesUsingBlock:v53];
            v16 = v15 + v16;
            if (v10 && (v30 = CFAbsoluteTimeGetCurrent(), v30 - v29 >= 0.01))
            {
              v57 = 0;
              v10[2](v10, &v57, v16);
              if (!(v57 | v14 & 1))
              {
                v14 = 0;
                goto LABEL_16;
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v67 = 272;
                v68 = 2080;
                v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              v34 = 0;
              v14 = 1;
            }

            else
            {
              v30 = v29;
LABEL_16:
              v50[0] = MEMORY[0x277D85DD0];
              v50[1] = 3221225472;
              v50[2] = __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke_325;
              v50[3] = &unk_278888E90;
              v51 = v41;
              v52 = v40;
              [v21 enumeratePublicEventNodesUsingBlock:v50];
              v16 = v15 + v16;
              if (v10 && (v31 = CFAbsoluteTimeGetCurrent(), v31 - v30 >= 0.01))
              {
                v57 = 0;
                v10[2](v10, &v57, v16);
                if (!(v57 | v14 & 1))
                {
                  v14 = 0;
                  goto LABEL_19;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v67 = 282;
                  v68 = 2080;
                  v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v34 = 0;
                v14 = 1;
              }

              else
              {
                v31 = v30;
LABEL_19:
                v48[0] = MEMORY[0x277D85DD0];
                v48[1] = 3221225472;
                v48[2] = __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke_328;
                v48[3] = &unk_2788875F8;
                v49 = v39;
                [v21 enumerateROINodesUsingBlock:v48];
                v16 = v15 + v16;
                if (v10 && (v32 = CFAbsoluteTimeGetCurrent(), v32 - v31 >= 0.01))
                {
                  v57 = 0;
                  v10[2](v10, &v57, v16);
                  if (!(v57 | v14 & 1))
                  {
                    v14 = 0;
                    goto LABEL_22;
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    v67 = 288;
                    v68 = 2080;
                    v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  v34 = 0;
                  v14 = 1;
                }

                else
                {
                  v32 = v31;
LABEL_22:
                  v46[0] = MEMORY[0x277D85DD0];
                  v46[1] = 3221225472;
                  v46[2] = __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke_330;
                  v46[3] = &unk_2788875D0;
                  v47 = v38;
                  [v21 enumeratePOINodesUsingBlock:v46];
                  v16 = v15 + v16;
                  if (v10 && (Current = CFAbsoluteTimeGetCurrent(), Current - v32 >= 0.01))
                  {
                    v57 = 0;
                    v10[2](v10, &v57, v16);
                    if (v57 | v14 & 1)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 67109378;
                        v67 = 294;
                        v68 = 2080;
                        v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                      }

                      v34 = 0;
                      v14 = 1;
                    }

                    else
                    {
                      v14 = 0;
                      v34 = 1;
                    }
                  }

                  else
                  {
                    v34 = 1;
                    Current = v32;
                  }

                  v32 = Current;
                }

                v31 = v32;
              }

              v30 = v31;
            }

            v29 = v30;
          }

          v18 = v29;
          goto LABEL_60;
        }

        v57 = 0;
        v10[2](v10, &v57, v16);
        if (!(v57 | v14 & 1))
        {
          v14 = 0;
          goto LABEL_10;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v67 = 260;
          v68 = 2080;
          v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v34 = 0;
        v14 = 1;
LABEL_60:

        objc_autoreleasePoolPop(v22);
        if (!v34)
        {
          goto LABEL_63;
        }

        ++v19;
        v20 = v18;
      }

      while (v13 != v19);
      v13 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
      if (!v13)
      {
LABEL_63:

        v7 = v36;
        v6 = v37;
        break;
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  [a2 timestampUTCStart];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v5 + *(a1 + 48)];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v8];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }

  [v7 addObject:v6];
  [*(a1 + 40) addObject:v8];
}

void __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke_325(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:v4];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke_2;
  v5[3] = &unk_278882490;
  v6 = *(a1 + 40);
  [v4 enumeratePerformerNodesUsingBlock:v5];
}

- (void)_prepareForKnowledgeDonation
{
  v3 = [MEMORY[0x277CCA940] set];
  meaningNodes = self->_meaningNodes;
  self->_meaningNodes = v3;

  v5 = [MEMORY[0x277CCA940] set];
  poiNodes = self->_poiNodes;
  self->_poiNodes = v5;

  v7 = [MEMORY[0x277CCA940] set];
  roiNodes = self->_roiNodes;
  self->_roiNodes = v7;

  v9 = [MEMORY[0x277CCA940] set];
  businessNodes = self->_businessNodes;
  self->_businessNodes = v9;

  v11 = [MEMORY[0x277CCA940] set];
  publicEventNodes = self->_publicEventNodes;
  self->_publicEventNodes = v11;

  v13 = [MEMORY[0x277CCA940] set];
  performerNodes = self->_performerNodes;
  self->_performerNodes = v13;

  v15 = [MEMORY[0x277CBEB38] dictionary];
  datesByAddressNode = self->_datesByAddressNode;
  self->_datesByAddressNode = v15;

  v17 = [MEMORY[0x277CCA940] set];
  addressNodes = self->_addressNodes;
  self->_addressNodes = v17;
}

- (void)_donateKnowledgeWithManager:(id)a3 progressBlock:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 enrichmentLoggingConnection];
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SiriPortraitDonation", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v12 = mach_absolute_time();
  *buf = 0;
  v31 = buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__17296;
  v34 = __Block_byref_object_dispose__17297;
  v35 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __88__PGGraphPortraitDonationEnrichmentProcessor__donateKnowledgeWithManager_progressBlock___block_invoke;
  v25 = &unk_278880D38;
  v13 = v11;
  v26 = v13;
  v14 = v7;
  v27 = self;
  v28 = v14;
  v29 = buf;
  [v6 performSynchronousConcurrentGraphReadUsingBlock:&v22];
  if (*(v31 + 5))
  {
    v15 = [MEMORY[0x277CBEAA8] date];
    [(PGGraphPortraitDonationEnrichmentProcessor *)self _donateKnowledge:*(v31 + 5) donationDate:v15 loggingConnection:v13];
  }

  v16 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v19 = v13;
  v20 = v19;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *v37 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_END, v9, "SiriPortraitDonation", "", v37, 2u);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v37 = 136315394;
    v38 = "SiriPortraitDonation";
    v39 = 2048;
    v40 = ((((v16 - v12) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v37, 0x16u);
  }

  _Block_object_dispose(buf, 8);
  v21 = *MEMORY[0x277D85DE8];
}

void __88__PGGraphPortraitDonationEnrichmentProcessor__donateKnowledgeWithManager_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = *(a1 + 32);
  if (v3)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22F0FC000, v4, OS_LOG_TYPE_DEBUG, "PortraitEnrichment - Will donate graph knowledge to Portrait", buf, 2u);
    }

    v5 = _Block_copy(*(a1 + 48));
    v6 = 0.0;
    if (v5)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current >= 0.01)
      {
        v19 = 0;
        v5[2](v5, &v19, 0.0);
        if (v19 == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 161;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_33;
        }

        v6 = Current;
      }
    }

    [*(a1 + 40) _prepareForKnowledgeDonation];
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-31557600.0];
    v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v8];
    v11 = [v3 momentNodesOverlappingLocalDateInterval:v10];
    if (v5)
    {
      v12 = CFAbsoluteTimeGetCurrent();
      if (v12 - v6 >= 0.01)
      {
        v19 = 0;
        v5[2](v5, &v19, 0.2);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 171;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
            v13 = MEMORY[0x277D86220];
LABEL_31:
            _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_32;
          }

          goto LABEL_32;
        }

        v6 = v12;
      }
    }

    if ([v11 count])
    {
      [*(a1 + 40) _accumulateKnowledgeNodesFromMomentNodes:v11 progressBlock:*(a1 + 48)];
      if (v5)
      {
        v14 = CFAbsoluteTimeGetCurrent();
        if (v14 - v6 >= 0.01)
        {
          v19 = 0;
          v5[2](v5, &v19, 0.5);
          if (v19)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v21 = 177;
              v22 = 2080;
              v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
              v13 = MEMORY[0x277D86220];
              goto LABEL_31;
            }

LABEL_32:

LABEL_33:
            goto LABEL_34;
          }

          v6 = v14;
        }
      }

      v15 = [*(a1 + 40) _knowledgeToDonateFromAccumulatedNodesWithProgressBlock:*(a1 + 48)];
      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    if (!v5)
    {
      goto LABEL_32;
    }

    if (CFAbsoluteTimeGetCurrent() - v6 < 0.01)
    {
      goto LABEL_32;
    }

    v19 = 0;
    v5[2](v5, &v19, 1.0);
    if (!v19 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }

    *buf = 67109378;
    v21 = 182;
    v22 = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
    v13 = MEMORY[0x277D86220];
    goto LABEL_31;
  }

  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_22F0FC000, v4, OS_LOG_TYPE_FAULT, "PortraitEnrichment - portrait donation can not run because the graph is nil", buf, 2u);
  }

LABEL_34:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)enrichDataModelWithManager:(id)a3 curationContext:(id)a4 graphUpdateInventory:(id)a5 progressReporter:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 enrichmentLoggingConnection];
  v15 = os_signpost_id_generate(v14);
  v16 = v14;
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PGGraphPortraitDonationEnrichmentProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v18 = mach_absolute_time();
  v19 = v13;
  *buf = 0;
  v35 = buf;
  v36 = 0x2020000000;
  v37 = 0;
  v20 = [v19 isCancelledWithProgress:0.0];
  v35[24] = v20;
  if (v20)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v39 = 67109378;
      *v40 = 112;
      *&v40[4] = 2080;
      *&v40[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
      v21 = MEMORY[0x277D86220];
      v22 = "Cancelled at line %d in file %s";
LABEL_18:
      v24 = 18;
LABEL_19:
      _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, v22, v39, v24);
    }
  }

  else
  {
    if ([(PGGraphPortraitDonationEnrichmentProcessor *)self _shouldProcessGraphUpdate:v12])
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __127__PGGraphPortraitDonationEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke;
      v31[3] = &unk_278889448;
      v33 = buf;
      v32 = v19;
      [(PGGraphPortraitDonationEnrichmentProcessor *)self _donateKnowledgeWithManager:v10 progressBlock:v31];
      if (v35[24] == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v39 = 67109378;
          *v40 = 120;
          *&v40[4] = 2080;
          *&v40[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v39, 0x12u);
        }

        goto LABEL_20;
      }
    }

    if (v35[24])
    {
      v35[24] = 1;
    }

    else
    {
      v23 = [v19 isCancelledWithProgress:1.0];
      v35[24] = v23;
      if ((v23 & 1) == 0)
      {
        v26 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v29 = v17;
        v30 = v29;
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
        {
          *v39 = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v30, OS_SIGNPOST_INTERVAL_END, v15, "PGGraphPortraitDonationEnrichmentProcessor", "", v39, 2u);
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *v39 = 136315394;
          *v40 = "PGGraphPortraitDonationEnrichmentProcessor";
          *&v40[8] = 2048;
          *&v40[10] = ((((v26 - v18) * numer) / denom) / 1000000.0);
          v22 = "[Performance] %s: %f ms";
          v21 = v30;
          v24 = 22;
          goto LABEL_19;
        }

        goto LABEL_20;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v39 = 67109378;
      *v40 = 123;
      *&v40[4] = 2080;
      *&v40[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
      v21 = MEMORY[0x277D86220];
      v22 = "Cancelled at line %d in file %s";
      goto LABEL_18;
    }
  }

LABEL_20:
  _Block_object_dispose(buf, 8);

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __127__PGGraphPortraitDonationEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:?];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

@end