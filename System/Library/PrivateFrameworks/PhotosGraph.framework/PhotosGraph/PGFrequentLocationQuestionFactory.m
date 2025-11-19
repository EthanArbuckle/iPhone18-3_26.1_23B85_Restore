@interface PGFrequentLocationQuestionFactory
- (BOOL)_addIfNeededFrequentLocationQuestionForAsset:(id)a3 withLocationTypeName:(id)a4 toQuestions:(id)a5;
- (PHFetchResult)existingFrequentLocationQuestions;
- (id)_selectedAssetFromMomentNodes:(id)a3 closeToCoordinate:(CLLocationCoordinate2D)a4;
- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4;
@end

@implementation PGFrequentLocationQuestionFactory

- (id)_selectedAssetFromMomentNodes:(id)a3 closeToCoordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v33[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(PGSurveyQuestionFactory *)self workingContext];
  v9 = [v8 photoLibrary];

  v10 = [v9 librarySpecificFetchOptions];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"locationData != nil"];
  [v10 setInternalPredicate:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v33[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  [v10 setSortDescriptors:v13];

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__51381;
  v31 = __Block_byref_object_dispose__51382;
  v32 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0x7FEFFFFFFFFFFFFFLL;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__PGFrequentLocationQuestionFactory__selectedAssetFromMomentNodes_closeToCoordinate___block_invoke;
  v19[3] = &unk_278885710;
  v14 = v9;
  v20 = v14;
  v15 = v10;
  v24 = latitude;
  v25 = longitude;
  v21 = v15;
  v22 = v26;
  v23 = &v27;
  [v7 enumerateNodesUsingBlock:v19];
  v16 = v28[5];

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v27, 8);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __85__PGFrequentLocationQuestionFactory__selectedAssetFromMomentNodes_closeToCoordinate___block_invoke(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x277CD97A8];
  v6 = [v3 fetchAssetCollectionInPhotoLibrary:a1[4]];
  v7 = [v5 fetchAssetsInAssetCollection:v6 options:a1[5]];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        [v13 locationCoordinate];
        v19 = v14;
        v20 = v15;
        CLLocationCoordinate2DGetDistanceFrom();
        v17 = v16;
        if (v16 < *(*(a1[6] + 8) + 24))
        {
          objc_storeStrong((*(a1[7] + 8) + 40), v13);
          *(*(a1[6] + 8) + 24) = v17;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:{16, v19, v20}];
    }

    while (v10);
  }

  objc_autoreleasePoolPop(v4);
  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_addIfNeededFrequentLocationQuestionForAsset:(id)a3 withLocationTypeName:(id)a4 toQuestions:(id)a5
{
  v78 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v67 = a4;
  v8 = a5;
  v63 = v7;
  v62 = [v7 location];
  [v62 coordinate];
  v10 = v9;
  v12 = v11;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v8;
  v13 = [(PGFrequentLocationQuestion *)obj countByEnumeratingWithState:&v72 objects:v77 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v73;
    v16 = *MEMORY[0x277D3C920];
    v17 = *MEMORY[0x277D3C908];
    v18 = *MEMORY[0x277D3C910];
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v73 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v72 + 1) + 8 * i);
        v21 = [v20 additionalInfo];
        v22 = [v21 objectForKeyedSubscript:v16];
        v23 = [v22 isEqualToString:v67];

        if (v23)
        {
          v24 = [v20 additionalInfo];
          v25 = [v24 objectForKeyedSubscript:v17];
          [v25 doubleValue];
          v27 = v26;

          v28 = [v20 additionalInfo];
          v29 = [v28 objectForKeyedSubscript:v18];
          [v29 doubleValue];
          v31 = v30;

          v32 = CLLocationCoordinate2DMake(v27, v31);
          if ([(PGFrequentLocationQuestionFactory *)self _distanceTooCloseBetweenCoordinate:v10 otherCoordinate:v12, v32.latitude, v32.longitude])
          {
            v59 = 0;
            v58 = obj;
            v33 = obj;
            v56 = v62;
            v54 = v63;
            goto LABEL_23;
          }
        }
      }

      v14 = [(PGFrequentLocationQuestion *)obj countByEnumeratingWithState:&v72 objects:v77 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  [(PGFrequentLocationQuestionFactory *)self existingFrequentLocationQuestions];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v33 = v71 = 0u;
  v34 = [(PGFrequentLocationQuestion *)v33 countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v69;
    v37 = *MEMORY[0x277D3C920];
    v64 = *MEMORY[0x277D3C908];
    v38 = *MEMORY[0x277D3C910];
    while (2)
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v69 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v40 = *(*(&v68 + 1) + 8 * j);
        v41 = [v40 additionalInfo];
        v42 = [v41 objectForKeyedSubscript:v37];
        v43 = [v42 isEqualToString:v67];

        if (v43)
        {
          v44 = [v40 additionalInfo];
          v45 = [v44 objectForKeyedSubscript:v64];
          [v45 doubleValue];
          v47 = v46;

          v48 = [v40 additionalInfo];
          v49 = [v48 objectForKeyedSubscript:v38];
          [v49 doubleValue];
          v51 = v50;

          v52 = CLLocationCoordinate2DMake(v47, v51);
          if ([(PGFrequentLocationQuestionFactory *)self _distanceTooCloseBetweenCoordinate:v10 otherCoordinate:v12, v52.latitude, v52.longitude])
          {
            v59 = 0;
            v57 = v33;
            v56 = v62;
            v54 = v63;
            v58 = obj;
            goto LABEL_22;
          }
        }
      }

      v35 = [(PGFrequentLocationQuestion *)v33 countByEnumeratingWithState:&v68 objects:v76 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  v53 = [PGFrequentLocationQuestion alloc];
  v54 = v63;
  v55 = [v63 uuid];
  v56 = v62;
  v57 = [(PGFrequentLocationQuestion *)v53 initWithAssetUUID:v55 location:v62 locationTypeName:v67];

  v58 = obj;
  [(PGFrequentLocationQuestion *)obj addObject:v57];
  v59 = 1;
LABEL_22:

LABEL_23:
  v60 = *MEMORY[0x277D85DE8];
  return v59;
}

- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __78__PGFrequentLocationQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
  v16 = &unk_27888A2F8;
  v19 = v6;
  v20 = a3;
  v17 = v7;
  v18 = self;
  v9 = v7;
  v10 = v6;
  [v8 performSynchronousConcurrentGraphReadUsingBlock:&v13];

  v11 = [v9 allObjects];

  return v11;
}

void __78__PGFrequentLocationQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (!v4)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current - v29[3] >= 0.01)
  {
    v29[3] = Current;
    v27 = 0;
    v4[2](v4, &v27, 0.0);
    v6 = *(v33 + 24) | v27;
    *(v33 + 24) = v6;
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v37 = 60;
        v38 = 2080;
        v39 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/FrequentLocation/PGFrequentLocationQuestionFactory.m";
        v7 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_23;
      }

      goto LABEL_23;
    }
  }

  if (*(a1 + 56))
  {
LABEL_13:
    v10 = [v3 graph];
    v11 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:v10];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __78__PGFrequentLocationQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_225;
    v19[3] = &unk_2788856E8;
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    v20 = v12;
    v25 = v13;
    v14 = v4;
    v26 = 0x3F847AE147AE147BLL;
    v23 = &v28;
    v24 = &v32;
    v21 = *(a1 + 40);
    v22 = v14;
    [v11 enumerateIdentifiersAsCollectionsWithBlock:v19];
    if (*(v33 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_22:

        goto LABEL_23;
      }

      *buf = 67109378;
      v37 = 93;
      v38 = 2080;
      v39 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/FrequentLocation/PGFrequentLocationQuestionFactory.m";
      v15 = MEMORY[0x277D86220];
    }

    else
    {
      if (!v4)
      {
        goto LABEL_22;
      }

      v16 = CFAbsoluteTimeGetCurrent();
      if (v16 - v29[3] < 0.01)
      {
        goto LABEL_22;
      }

      v29[3] = v16;
      v27 = 0;
      v14[2](v14, &v27, 1.0);
      v17 = *(v33 + 24) | v27;
      *(v33 + 24) = v17;
      if ((v17 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      *buf = 67109378;
      v37 = 95;
      v38 = 2080;
      v39 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/FrequentLocation/PGFrequentLocationQuestionFactory.m";
      v15 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_22;
  }

  v8 = CFAbsoluteTimeGetCurrent();
  if (v8 - v29[3] >= 0.01)
  {
    v29[3] = v8;
    v27 = 0;
    v4[2](v4, &v27, 1.0);
    v9 = *(v33 + 24) | v27;
    *(v33 + 24) = v9;
    if ((v9 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v37 = 64;
      v38 = 2080;
      v39 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/FrequentLocation/PGFrequentLocationQuestionFactory.m";
      v7 = MEMORY[0x277D86220];
      goto LABEL_11;
    }
  }

LABEL_23:
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  v18 = *MEMORY[0x277D85DE8];
}

void __78__PGFrequentLocationQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_225(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [*(a1 + 32) count];
  if (*(a1 + 48) && (v8 = v7, v9 = *(a1 + 72), Current = CFAbsoluteTimeGetCurrent(), v11 = *(*(a1 + 56) + 8), Current - *(v11 + 24) >= *(a1 + 80)) && (*(v11 + 24) = Current, (*(*(a1 + 48) + 16))(v8 / v9), *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24), *(*(*(a1 + 64) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else
  {
    v12 = [v6 addressNodes];
    v13 = *(a1 + 40);
    v14 = [v12 momentNodes];
    v15 = [v12 anyNode];
    [v15 coordinate];
    v16 = [v13 _selectedAssetFromMomentNodes:v14 closeToCoordinate:?];

    if (!v16 || ([v16 location], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17) || objc_msgSend(*(a1 + 40), "_addIfNeededFrequentLocationQuestionForAsset:withLocationTypeName:toQuestions:", v16, @"FrequentLocation", *(a1 + 32)) && objc_msgSend(*(a1 + 32), "count") >= *(a1 + 72))
    {
      *a4 = 1;
    }
  }
}

- (PHFetchResult)existingFrequentLocationQuestions
{
  existingFrequentLocationQuestions = self->_existingFrequentLocationQuestions;
  if (!existingFrequentLocationQuestions)
  {
    v4 = [(PGSurveyQuestionFactory *)self fetchExistingQuestions];
    v5 = self->_existingFrequentLocationQuestions;
    self->_existingFrequentLocationQuestions = v4;

    existingFrequentLocationQuestions = self->_existingFrequentLocationQuestions;
  }

  return existingFrequentLocationQuestions;
}

@end