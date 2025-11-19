@interface PGGraphSyndicatedAssetsMetricEvent
- (PGGraphSyndicatedAssetsMetricEvent)initWithWorkingContext:(id)a3;
- (void)gatherMetricsWithProgressBlock:(id)a3;
@end

@implementation PGGraphSyndicatedAssetsMetricEvent

- (void)gatherMetricsWithProgressBlock:(id)a3
{
  v98 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = 0.0;
  v90 = _Block_copy(v4);
  if (!v90 || (v6 = CFAbsoluteTimeGetCurrent(), v6 < 0.01))
  {
LABEL_7:
    v7 = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
    v8 = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
    if (([v8 isSystemPhotoLibrary] & 1) == 0)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "PGGraphSyndicatedAssetsMetricEvent: Only reporting for system photo library.", buf, 2u);
      }

      if (v90)
      {
        if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
        {
          v92 = 0;
          v90[2](v90, &v92, 1.0);
          if (v92)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v97 = 55;
              *&v97[4] = 2080;
              *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphSyndicatedAssetsMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }

      goto LABEL_106;
    }

    v91 = 0;
    v9 = [MEMORY[0x277CD9948] openPhotoLibraryWithWellKnownIdentifier:3 error:&v91];
    v10 = v91;
    v11 = v10;
    if (!v9 || v10)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v97 = v11;
        _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "PGGraphSyndicatedAssetsMetricEvent: Failed to open syndicated library: %@", buf, 0xCu);
      }

      if (v90)
      {
        if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
        {
          v92 = 0;
          v90[2](v90, &v92, 1.0);
          if (v92)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v97 = 63;
              *&v97[4] = 2080;
              *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphSyndicatedAssetsMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }

      goto LABEL_105;
    }

    v12 = [v9 librarySpecificFetchOptions];
    [v12 setIncludeGuestAssets:1];
    v13 = *MEMORY[0x277CD9AD0];
    v95[0] = *MEMORY[0x277CD9B10];
    v95[1] = v13;
    v95[2] = *MEMORY[0x277CD9A80];
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:3];
    [v12 setFetchPropertySets:v14];

    v89 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v12];
    context = [v89 count];
    if (!context)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_DEFAULT, "PGGraphSyndicatedAssetsMetricEvent: No assets to report.", buf, 2u);
      }

      if (v90)
      {
        if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
        {
          v92 = 0;
          v90[2](v90, &v92, 1.0);
          if (v92)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v97 = 76;
              *&v97[4] = 2080;
              *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphSyndicatedAssetsMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }

      goto LABEL_104;
    }

    v77 = self;
    v78 = v12;
    v79 = v9;
    v85 = v8;
    v80 = v7;
    v81 = v4;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (2)
    {
      v82 = v22;
      while (1)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = [v89 objectAtIndexedSubscript:v22];
        v25 = [v24 syndicationEligibility];
        if (v25 == 2)
        {
          v26 = v21 + 1;
        }

        else
        {
          v26 = v21;
        }

        if (v25 == 1)
        {
          v26 = v21;
          v27 = v20 + 1;
        }

        else
        {
          v27 = v20;
        }

        if (v25)
        {
          v28 = v19;
        }

        else
        {
          v28 = v19 + 1;
        }

        if ((v25 + 2) >= 2)
        {
          v29 = v28;
        }

        else
        {
          v29 = v19;
        }

        if (v25 < 0xFFFFFFFFFFFFFFFELL)
        {
          v30 = v18;
        }

        else
        {
          v30 = v18 + 1;
        }

        if (v25 > 0)
        {
          v29 = v19;
          v30 = v18;
        }

        else
        {
          v26 = v21;
          v27 = v20;
        }

        v31 = v25 + 4;
        if (v25 == -5)
        {
          v32 = v16 + 1;
        }

        else
        {
          v32 = v16;
        }

        if (v25 == -6)
        {
          v32 = v16;
          v33 = v15 + 1;
        }

        else
        {
          v33 = v15;
        }

        v34 = v31 >= 2;
        if (v31 >= 2)
        {
          v35 = v17;
        }

        else
        {
          v35 = v17 + 1;
        }

        if (!v34)
        {
          v32 = v16;
          v33 = v15;
        }

        if (v25 <= -3)
        {
          v17 = v35;
        }

        else
        {
          v21 = v26;
          v20 = v27;
          v19 = v29;
          v18 = v30;
        }

        if (v25 <= -3)
        {
          v16 = v32;
          v15 = v33;
        }

        if (v90)
        {
          break;
        }

        objc_autoreleasePoolPop(v23);
        if (context == ++v22)
        {
          goto LABEL_84;
        }
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v5 >= 0.01)
      {
        v92 = 0;
        v90[2](v90, &v92, 0.2);
        if (v92)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v97 = 122;
            *&v97[4] = 2080;
            *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphSyndicatedAssetsMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          objc_autoreleasePoolPop(v23);
          goto LABEL_82;
        }

        v5 = Current;
      }

      objc_autoreleasePoolPop(v23);
      v22 = v82 + 1;
      if (v82 + 1 != context)
      {
        continue;
      }

      break;
    }

    v37 = CFAbsoluteTimeGetCurrent();
    if (v37 - v5 >= 0.01)
    {
      v92 = 0;
      v90[2](v90, &v92, 0.4);
      if (v92)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v97 = 125;
          *&v97[4] = 2080;
          *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphSyndicatedAssetsMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

LABEL_82:
        v7 = v80;
        v4 = v81;
        v8 = v85;
        v11 = 0;
        v9 = v79;
        v12 = v78;
        goto LABEL_104;
      }

      v5 = v37;
    }

LABEL_84:
    contextb = objc_autoreleasePoolPush();
    v38 = [v85 librarySpecificFetchOptions];
    v39 = [MEMORY[0x277D3B248] predicateForIncludeMask:objc_msgSend(MEMORY[0x277D3B248] useIndex:{"maskForGuestAsset"), 1}];
    [v38 setIncludeGuestAssets:1];
    [v38 setInternalPredicate:v39];
    v40 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v38];

    objc_autoreleasePoolPop(contextb);
    v83 = objc_autoreleasePoolPush();
    v41 = MEMORY[0x277CD98F8];
    v42 = [v85 librarySpecificFetchOptions];
    contexta = v40;
    v43 = [v41 fetchMomentUUIDByAssetUUIDForAssets:v40 options:v42];

    v44 = MEMORY[0x277CBEB98];
    v45 = [v43 allValues];
    v46 = [v44 setWithArray:v45];

    v47 = [v46 count];
    objc_autoreleasePoolPop(v83);
    if (v90)
    {
      v48 = CFAbsoluteTimeGetCurrent();
      if (v48 - v5 >= 0.01)
      {
        v92 = 0;
        v90[2](v90, &v92, 0.6);
        if (v92)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v97 = 144;
            *&v97[4] = 2080;
            *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphSyndicatedAssetsMetricEvent.m";
            v49 = MEMORY[0x277D86220];
LABEL_95:
            _os_log_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_96;
          }

          goto LABEL_96;
        }

        v5 = v48;
      }
    }

    v84 = v47;
    v50 = objc_autoreleasePoolPush();
    v51 = MEMORY[0x277CD97B8];
    v52 = [v85 librarySpecificFetchOptions];
    v53 = [v51 fetchAssetCollectionsContainingAssets:contexta withType:4 options:v52];

    v76 = [v53 count];
    objc_autoreleasePoolPop(v50);
    if (v90)
    {
      v54 = CFAbsoluteTimeGetCurrent();
      if (v54 - v5 >= 0.01)
      {
        v92 = 0;
        v90[2](v90, &v92, 0.8);
        if (v92)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v97 = 152;
            *&v97[4] = 2080;
            *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphSyndicatedAssetsMetricEvent.m";
            v49 = MEMORY[0x277D86220];
            goto LABEL_95;
          }

LABEL_96:
          v7 = v80;
          v4 = v81;
          v8 = v85;
          v11 = 0;
          v9 = v79;
          v12 = v78;
LABEL_103:

LABEL_104:
LABEL_105:

LABEL_106:
          goto LABEL_107;
        }

        v5 = v54;
      }
    }

    v74 = objc_autoreleasePoolPush();
    v55 = [v85 librarySpecificFetchOptions];
    v56 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type == %d", 18];
    v72 = v55;
    [v55 setPredicate:v56];

    v57 = [MEMORY[0x277CD9970] fetchAnsweredYesOrNoQuestionsWithOptions:v55 validQuestionsOnly:0];
    v58 = [MEMORY[0x277CD9970] questionsWithValidEntitiesFromQuestions:v57 photoLibrary:v85];
    v59 = [v57 count];
    v73 = v59 - [v58 count];

    objc_autoreleasePoolPop(v74);
    v93[0] = @"numberOfAssetsWithoutResource";
    v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
    v94[0] = v75;
    v93[1] = @"numberOfAssetsWithSyndicationStateIncompatible";
    v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
    v94[1] = v60;
    v93[2] = @"numberOfAssetsNotProcessed";
    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
    v94[2] = v61;
    v93[3] = @"numberOfAssetsNotComputed";
    v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    v94[3] = v62;
    v93[4] = @"numberOfAssetsNotEligible";
    v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
    v94[4] = v63;
    v93[5] = @"numberOfAssetsEligible";
    v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
    v94[5] = v64;
    v93[6] = @"numberOfAssetsInferredAsGuest";
    v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
    v94[6] = v65;
    v93[7] = @"numberOfMomentsFeaturingGuestAssets";
    v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v84];
    v94[7] = v66;
    v93[8] = @"numberOfMemoriesFeaturingGuestAssets";
    v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v76];
    v94[8] = v67;
    v93[9] = @"numberOfInvalidQuestions";
    v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v73];
    v94[9] = v68;
    v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:10];
    payload = v77->_payload;
    v77->_payload = v69;

    v8 = v85;
    v7 = v80;
    v4 = v81;
    v11 = 0;
    v9 = v79;
    v12 = v78;
    if (v90)
    {
      if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
      {
        v92 = 0;
        v90[2](v90, &v92, 1.0);
        if (v92)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v97 = 176;
            *&v97[4] = 2080;
            *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphSyndicatedAssetsMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_103;
  }

  v92 = 0;
  v90[2](v90, &v92, 0.0);
  if (v92 != 1)
  {
    v5 = v6;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v97 = 48;
    *&v97[4] = 2080;
    *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphSyndicatedAssetsMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_107:

  v71 = *MEMORY[0x277D85DE8];
}

- (PGGraphSyndicatedAssetsMetricEvent)initWithWorkingContext:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PGGraphSyndicatedAssetsMetricEvent;
  v6 = [(PGGraphSyndicatedAssetsMetricEvent *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workingContext, a3);
    payload = v7->_payload;
    v7->_payload = MEMORY[0x277CBEC10];
  }

  return v7;
}

@end