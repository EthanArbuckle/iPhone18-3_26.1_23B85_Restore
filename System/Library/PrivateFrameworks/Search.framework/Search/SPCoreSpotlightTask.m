@interface SPCoreSpotlightTask
- (id)_docIDsToResultsDictionaryForSection:(id)a3;
- (id)rankBatch:(id)a3 withRanker:(id)a4 withBundle:(id)a5 clientBundle:(id)a6 maxCount:(int64_t)a7 userQuery:(id)a8 queryID:(int64_t)a9 rankingConfiguration:(id)a10 isCJK:(BOOL)a11 isKeyboardCJK:(BOOL)a12 privateQuery:(BOOL)a13 collectL2Signals:(BOOL)a14;
- (id)selectFromBatch:(id)a3 withBundle:(id)a4 rankCount:(unint64_t)a5 maxCount:(unint64_t)a6 userQuery:(id)a7 queryID:(int64_t)a8 isCJK:(BOOL)a9 clientBundle:(id)a10 isKeyboardCJK:(BOOL)a11 currentTime:(double)a12;
- (void)_filterDuplicateiCloudDriveResultsForSection:(id)a3 iCloudDriveSection:(id)a4 iCloudDriveResultsDictionary:(id)a5;
- (void)enumerateTopHitResultsByBundle:(id)a3 addingToItems:(id)a4 withHandler:(id)a5;
- (void)filterItemsForL2:(id)a3 rankCount:(int64_t)a4 rankingConfiguration:(id)a5;
@end

@implementation SPCoreSpotlightTask

- (id)_docIDsToResultsDictionaryForSection:(id)a3
{
  v4 = a3;
  if (([(SPCoreSpotlightTask *)self canceled]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = +[NSMutableDictionary dictionary];
    if (v4)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = [v4 resultSet];
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            v12 = [v11 documentIdentifier];
            if (v12)
            {
              [v5 setObject:v11 forKeyedSubscript:v12];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v8);
      }
    }
  }

  return v5;
}

- (void)_filterDuplicateiCloudDriveResultsForSection:(id)a3 iCloudDriveSection:(id)a4 iCloudDriveResultsDictionary:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v7 && a3 != v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [a3 resultSet];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v16 + 1) + 8 * v13) documentIdentifier];
          v15 = [v8 objectForKeyedSubscript:v14];
          if (v15)
          {
            os_unfair_lock_lock(&stru_1000A8424);
            [v7 removeResults:v15];
            os_unfair_lock_unlock(&stru_1000A8424);
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

- (void)enumerateTopHitResultsByBundle:(id)a3 addingToItems:(id)a4 withHandler:(id)a5
{
  v8 = a3;
  v26 = a4;
  v25 = a5;
  if (([(SPCoreSpotlightTask *)self canceled]& 1) == 0)
  {
    [v8 sortWithOptions:1 usingComparator:&stru_1000931B8];
    v9 = objc_opt_new();
    v10 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = v8;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v28;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          if (v14 && ([*(*(&v27 + 1) + 8 * i) bundleID], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v14, "isEqualToString:", v18), v18, !v19))
          {
            v25[2](v25, v14, v10, v9);
            [v10 removeAllObjects];
            [v9 removeAllObjects];
            v23 = [v17 bundleID];

            v22 = [v17 rankingItem];
            [v9 addObject:v22];
            v14 = v23;
          }

          else
          {
            v20 = [v17 rankingItem];
            [v9 addObject:v20];

            v21 = [v17 rankingItem];
            [v26 addObject:v21];

            [v17 bundleID];
            v14 = v22 = v14;
          }

          [v10 addObject:v17];
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    if ([v9 count])
    {
      v25[2](v25, v14, v10, v9);
      [v10 removeAllObjects];
      [v9 removeAllObjects];
    }

    v8 = v24;
  }
}

- (void)filterItemsForL2:(id)a3 rankCount:(int64_t)a4 rankingConfiguration:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (([(SPCoreSpotlightTask *)self canceled]& 1) == 0)
  {
    v10 = [v9 dominantRankingQueryCount];
    v11 = [v9 dominatedRankingQueryCount];
    v12 = [v9 rankingBitCount];
    if (((v12 - v10) & 0x40) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1 << (v12 - v10);
    }

    v26 = v13;
    v14 = (-1 << (v12 - v10)) | (0x7FFFFFFFFFFFFFFFuLL >> ~(v12 - v10));
    if (((v12 - v10) & 0x40) != 0)
    {
      v14 = -1 << (v12 - v10);
    }

    v25 = v14;
    if ((v11 & 0x40) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = -1 << v11;
    }

    if ((v11 & 0x40) != 0)
    {
      v16 = -1 << v11;
    }

    else
    {
      v16 = (-1 << v11) | (0x7FFFFFFFFFFFFFFFuLL >> ~v11);
    }

    v17 = SPLogForSPLogCategoryDefault();
    v18 = v17;
    if (gSPLogDebugAsDefault)
    {
      v19 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v19 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v17, v19))
    {
      *buf = 134218240;
      *v29 = v10;
      *&v29[8] = 2048;
      v30 = v11;
      _os_log_impl(&_mh_execute_header, v18, v19, "dominantRankingQueryCount:%ld dominatedRankingQueryCount:%ld", buf, 0x16u);
    }

    if ([v8 count] > 2 * a4)
    {
      v20 = SPLogForSPLogCategoryDefault();
      v21 = v20;
      if (gSPLogDebugAsDefault)
      {
        v22 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v22 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v20, v22))
      {
        v23 = [v8 count];
        *buf = 67109376;
        *v29 = v23;
        *&v29[4] = 1024;
        *&v29[6] = a4;
        _os_log_impl(&_mh_execute_header, v21, v22, "Post pruning %d results to %d", buf, 0xEu);
      }

      +[NSDate timeIntervalSinceReferenceDate];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100031188;
      v27[3] = &unk_1000931D8;
      v27[4] = v26;
      v27[5] = v25;
      v27[6] = v15;
      v27[7] = v16;
      v27[8] = v24;
      [v8 sortWithOptions:1 usingComparator:v27];
      [v8 removeObjectsInRange:{a4, objc_msgSend(v8, "count") - a4}];
    }
  }
}

- (id)selectFromBatch:(id)a3 withBundle:(id)a4 rankCount:(unint64_t)a5 maxCount:(unint64_t)a6 userQuery:(id)a7 queryID:(int64_t)a8 isCJK:(BOOL)a9 clientBundle:(id)a10 isKeyboardCJK:(BOOL)a11 currentTime:(double)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a7;
  v82 = v18;
  if (![v19 length])
  {
    goto LABEL_8;
  }

  v20 = +[NSCharacterSet whitespaceCharacterSet];
  v21 = [v19 stringByTrimmingCharactersInSet:v20];
  v22 = [v21 length];

  if (!v22 || ([v82 isEqualToString:SSMailBundleIdentifier] & 1) == 0 && !objc_msgSend(v82, "isEqualToString:", PommesCtlBundleID))
  {
    goto LABEL_8;
  }

  v23 = v22 != 1;
  if (!a9 && !a11)
  {
    v23 = v22 > 2;
  }

  if (!v23)
  {
    v70 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      v71 = [v19 length];
      *buf = 134218752;
      if (a9 || a11)
      {
        v72 = 2;
      }

      else
      {
        v72 = 3;
      }

      v120 = a8;
      v121 = 2048;
      v122 = v71;
      v123 = 2048;
      v124 = v22;
      v125 = 1024;
      v126 = v72;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "[qid=%lu] query (length=%lu, trimmed length=%lu) is too short (threshold=%d) for topHit results", buf, 0x26u);
    }

    v65 = v82;
    v73 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v120 = a8;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "[queryID: %lu] returning empty tophits", buf, 0xCu);
    }

    [v17 removeAllObjects];
    v68 = objc_alloc_init(NSMutableDictionary);
  }

  else
  {
LABEL_8:

    IsMailOrPommesCTL = SSSectionIsMailOrPommesCTL();
    IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();
    v26 = 0;
    v77 = v19;
    if ((IsMailOrPommesCTL & 1) == 0 && (IsSyndicatedPhotos & 1) == 0)
    {
      v26 = SSPommesRankingForSectionBundle();
    }

    v108[0] = _NSConcreteStackBlock;
    v108[1] = 3221225472;
    v108[2] = sub_10003250C;
    v108[3] = &unk_100093218;
    v109 = IsMailOrPommesCTL;
    v110 = IsSyndicatedPhotos;
    v111 = v26;
    *&v108[4] = a12;
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_1000325D4;
    v106[3] = &unk_100093240;
    v27 = objc_retainBlock(v108);
    v107 = v27;
    v28 = objc_retainBlock(v106);
    v104[0] = _NSConcreteStackBlock;
    v104[1] = 3221225472;
    v104[2] = sub_100032670;
    v104[3] = &unk_100093240;
    v84 = IsSyndicatedPhotos;
    v29 = v27;
    v105 = v29;
    v30 = objc_retainBlock(v104);
    v31 = [SSBinaryHeap alloc];
    v102[0] = _NSConcreteStackBlock;
    v102[1] = 3221225472;
    v102[2] = sub_10003273C;
    v102[3] = &unk_100093268;
    v32 = v29;
    v33 = v84;
    v76 = v32;
    v103 = v32;
    v81 = [v31 initWithComparator:v102 maxCount:a5];
    v34 = [SSBinaryHeap alloc];
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = sub_1000327CC;
    v100[3] = &unk_100093268;
    v75 = v28;
    v101 = v75;
    v80 = [v34 initWithComparator:v100 maxCount:a5];
    v35 = [SSBinaryHeap alloc];
    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_10003285C;
    v98[3] = &unk_100093268;
    v36 = v82;
    v74 = v30;
    v99 = v74;
    v78 = v17;
    v79 = [v35 initWithComparator:v98 maxCount:a5];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = v17;
    v37 = [obj countByEnumeratingWithState:&v94 objects:v118 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = 0;
      v40 = *v95;
      do
      {
        for (i = 0; i != v38; i = i + 1)
        {
          if (*v95 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v94 + 1) + 8 * i);
          v43 = [v42 rankingItem];
          [v43 setSectionBundleIdentifier:v36];

          if (!v33)
          {
            goto LABEL_18;
          }

          v44 = [v42 rankingItem];
          [v44 attributes];
          v45 = SSCompactRankingAttrsGetValue();

          LODWORD(v44) = [v45 isEqualToString:PhotosResultContentTypeAsset];
          if (v44)
          {
LABEL_18:
            v46 = [v42 rankingItem];
            v47 = [v46 retrievalType];
            if ([v47 intValue])
            {
              v48 = [v42 rankingItem];
              v49 = [v48 retrievalType];
              v50 = [v49 intValue];

              v36 = v82;
              if ((v50 & 2) == 0)
              {
                goto LABEL_21;
              }

              v116[0] = @"item";
              v54 = [v42 rankingItem];
              v117[0] = v54;
              v116[1] = @"index";
              v55 = [NSNumber numberWithUnsignedInteger:v39];
              v117[1] = v55;
              v56 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:2];
              v57 = v79;
            }

            else
            {

LABEL_21:
              v51 = [v42 rankingItem];
              v52 = [v51 retrievalType];
              v53 = [v52 intValue];

              if ((v53 & 2) != 0)
              {
                v114[0] = @"item";
                v54 = [v42 rankingItem];
                v115[0] = v54;
                v114[1] = @"index";
                v55 = [NSNumber numberWithUnsignedInteger:v39];
                v115[1] = v55;
                v56 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:2];
                v57 = v80;
              }

              else
              {
                v112[0] = @"item";
                v54 = [v42 rankingItem];
                v113[0] = v54;
                v112[1] = @"index";
                v55 = [NSNumber numberWithUnsignedInteger:v39];
                v113[1] = v55;
                v56 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:2];
                v57 = v81;
              }
            }

            [v57 addObject:v56];

            v33 = v84;
          }

          ++v39;
        }

        v38 = [obj countByEnumeratingWithState:&v94 objects:v118 count:16];
      }

      while (v38);
    }

    v58 = objc_alloc_init(NSMutableArray);
    v59 = objc_alloc_init(NSMutableArray);
    v60 = objc_alloc_init(NSMutableArray);
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_1000328EC;
    v91[3] = &unk_100093290;
    v61 = obj;
    v92 = v61;
    v93 = v58;
    v62 = v58;
    [v81 enumerateObjectsUsingBlock:v91];
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_100032974;
    v88[3] = &unk_100093290;
    v63 = v61;
    v89 = v63;
    v90 = v59;
    v64 = v59;
    [v80 enumerateObjectsUsingBlock:v88];
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_1000329FC;
    v85[3] = &unk_100093290;
    v65 = v82;
    v66 = v63;
    v86 = v66;
    v87 = v60;
    v67 = v60;
    [v79 enumerateObjectsUsingBlock:v85];
    [v66 removeObjectsInArray:v62];
    [v66 removeObjectsInArray:v64];
    [v66 removeObjectsInArray:v67];
    v68 = [NSMutableDictionary dictionaryWithCapacity:3];
    [v68 setObject:v62 forKeyedSubscript:@"sparse"];
    [v68 setObject:v64 forKeyedSubscript:@"dense"];
    [v68 setObject:v67 forKeyedSubscript:@"hybrid"];

    v19 = v77;
    v17 = v78;
  }

  return v68;
}

- (id)rankBatch:(id)a3 withRanker:(id)a4 withBundle:(id)a5 clientBundle:(id)a6 maxCount:(int64_t)a7 userQuery:(id)a8 queryID:(int64_t)a9 rankingConfiguration:(id)a10 isCJK:(BOOL)a11 isKeyboardCJK:(BOOL)a12 privateQuery:(BOOL)a13 collectL2Signals:(BOOL)a14
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v42 = a6;
  v21 = a8;
  v40 = a10;
  v22 = [v18 mutableCopy];
  v23 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v24 = v22;
  v25 = [v24 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v45;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v45 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v44 + 1) + 8 * i) rankingItem];
        [v23 addObject:v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v26);
  }

  if (SSSectionIsSyndicatedPhotos())
  {
    v30 = +[SSPommesPhotosRanker sharedInstance];
    [v19 currentTime];
    v32 = v31;
    v33 = [v19 keyboardLanguage];
    BYTE2(v39) = 0;
    LOWORD(v39) = 0;
    v34 = a9;
    [v30 updateScoresForItems:v23 withSectionBundle:v20 userQuery:v21 queryID:a9 currentTime:0 collectL2Signals:v33 keyboardLanguage:v32 onlyEmbeddingResults:v39 isCardSearch:? isDocumentSearch:?];

    v35 = a7;
    v36 = a13;
    v37 = v42;
  }

  else
  {
    kdebug_trace();
    [v19 prepareItems:v23 inBundle:v20];
    kdebug_trace();
    kdebug_trace();
    LOBYTE(v39) = 0;
    v37 = v42;
    [v19 updateScoresForPreparedItems:v23 isCJK:a11 clientBundleID:v42 thresholdValue:0 queryNodeMatchInfo:a14 collectL2Signals:0 isCardSearch:-1.79769313e308 isDocumentSearch:v39];
    kdebug_trace();
    v35 = a7;
    v36 = a13;
    v34 = a9;
  }

  [v19 currentTime];
  [(SPCoreSpotlightTask *)self filterRankedItems:v24 maxCount:v35 bundle:v20 userQuery:v21 queryID:v34 privateQuery:v36 rankingConfiguration:v40 currentTime:v37 clientBundle:v19 ranker:?];
  [v18 removeObjectsInArray:v24];

  return v24;
}

@end