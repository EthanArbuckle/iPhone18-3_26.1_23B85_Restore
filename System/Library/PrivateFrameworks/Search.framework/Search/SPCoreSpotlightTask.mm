@interface SPCoreSpotlightTask
- (id)_docIDsToResultsDictionaryForSection:(id)section;
- (id)rankBatch:(id)batch withRanker:(id)ranker withBundle:(id)bundle clientBundle:(id)clientBundle maxCount:(int64_t)count userQuery:(id)query queryID:(int64_t)d rankingConfiguration:(id)self0 isCJK:(BOOL)self1 isKeyboardCJK:(BOOL)self2 privateQuery:(BOOL)self3 collectL2Signals:(BOOL)self4;
- (id)selectFromBatch:(id)batch withBundle:(id)bundle rankCount:(unint64_t)count maxCount:(unint64_t)maxCount userQuery:(id)query queryID:(int64_t)d isCJK:(BOOL)k clientBundle:(id)self0 isKeyboardCJK:(BOOL)self1 currentTime:(double)self2;
- (void)_filterDuplicateiCloudDriveResultsForSection:(id)section iCloudDriveSection:(id)driveSection iCloudDriveResultsDictionary:(id)dictionary;
- (void)enumerateTopHitResultsByBundle:(id)bundle addingToItems:(id)items withHandler:(id)handler;
- (void)filterItemsForL2:(id)l2 rankCount:(int64_t)count rankingConfiguration:(id)configuration;
@end

@implementation SPCoreSpotlightTask

- (id)_docIDsToResultsDictionaryForSection:(id)section
{
  sectionCopy = section;
  if (([(SPCoreSpotlightTask *)self canceled]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = +[NSMutableDictionary dictionary];
    if (sectionCopy)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      resultSet = [sectionCopy resultSet];
      v7 = [resultSet countByEnumeratingWithState:&v14 objects:v18 count:16];
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
              objc_enumerationMutation(resultSet);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            documentIdentifier = [v11 documentIdentifier];
            if (documentIdentifier)
            {
              [v5 setObject:v11 forKeyedSubscript:documentIdentifier];
            }
          }

          v8 = [resultSet countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v8);
      }
    }
  }

  return v5;
}

- (void)_filterDuplicateiCloudDriveResultsForSection:(id)section iCloudDriveSection:(id)driveSection iCloudDriveResultsDictionary:(id)dictionary
{
  driveSectionCopy = driveSection;
  dictionaryCopy = dictionary;
  if (driveSectionCopy && section != driveSectionCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    resultSet = [section resultSet];
    v10 = [resultSet countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(resultSet);
          }

          documentIdentifier = [*(*(&v16 + 1) + 8 * v13) documentIdentifier];
          v15 = [dictionaryCopy objectForKeyedSubscript:documentIdentifier];
          if (v15)
          {
            os_unfair_lock_lock(&stru_1000A8424);
            [driveSectionCopy removeResults:v15];
            os_unfair_lock_unlock(&stru_1000A8424);
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [resultSet countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

- (void)enumerateTopHitResultsByBundle:(id)bundle addingToItems:(id)items withHandler:(id)handler
{
  bundleCopy = bundle;
  itemsCopy = items;
  handlerCopy = handler;
  if (([(SPCoreSpotlightTask *)self canceled]& 1) == 0)
  {
    [bundleCopy sortWithOptions:1 usingComparator:&stru_1000931B8];
    v9 = objc_opt_new();
    v10 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = bundleCopy;
    v11 = bundleCopy;
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
            handlerCopy[2](handlerCopy, v14, v10, v9);
            [v10 removeAllObjects];
            [v9 removeAllObjects];
            bundleID = [v17 bundleID];

            rankingItem = [v17 rankingItem];
            [v9 addObject:rankingItem];
            v14 = bundleID;
          }

          else
          {
            rankingItem2 = [v17 rankingItem];
            [v9 addObject:rankingItem2];

            rankingItem3 = [v17 rankingItem];
            [itemsCopy addObject:rankingItem3];

            [v17 bundleID];
            v14 = rankingItem = v14;
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
      handlerCopy[2](handlerCopy, v14, v10, v9);
      [v10 removeAllObjects];
      [v9 removeAllObjects];
    }

    bundleCopy = v24;
  }
}

- (void)filterItemsForL2:(id)l2 rankCount:(int64_t)count rankingConfiguration:(id)configuration
{
  l2Copy = l2;
  configurationCopy = configuration;
  if (([(SPCoreSpotlightTask *)self canceled]& 1) == 0)
  {
    dominantRankingQueryCount = [configurationCopy dominantRankingQueryCount];
    dominatedRankingQueryCount = [configurationCopy dominatedRankingQueryCount];
    rankingBitCount = [configurationCopy rankingBitCount];
    if (((rankingBitCount - dominantRankingQueryCount) & 0x40) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1 << (rankingBitCount - dominantRankingQueryCount);
    }

    v26 = v13;
    v14 = (-1 << (rankingBitCount - dominantRankingQueryCount)) | (0x7FFFFFFFFFFFFFFFuLL >> ~(rankingBitCount - dominantRankingQueryCount));
    if (((rankingBitCount - dominantRankingQueryCount) & 0x40) != 0)
    {
      v14 = -1 << (rankingBitCount - dominantRankingQueryCount);
    }

    v25 = v14;
    if ((dominatedRankingQueryCount & 0x40) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = -1 << dominatedRankingQueryCount;
    }

    if ((dominatedRankingQueryCount & 0x40) != 0)
    {
      v16 = -1 << dominatedRankingQueryCount;
    }

    else
    {
      v16 = (-1 << dominatedRankingQueryCount) | (0x7FFFFFFFFFFFFFFFuLL >> ~dominatedRankingQueryCount);
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
      *v29 = dominantRankingQueryCount;
      *&v29[8] = 2048;
      v30 = dominatedRankingQueryCount;
      _os_log_impl(&_mh_execute_header, v18, v19, "dominantRankingQueryCount:%ld dominatedRankingQueryCount:%ld", buf, 0x16u);
    }

    if ([l2Copy count] > 2 * count)
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
        v23 = [l2Copy count];
        *buf = 67109376;
        *v29 = v23;
        *&v29[4] = 1024;
        *&v29[6] = count;
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
      [l2Copy sortWithOptions:1 usingComparator:v27];
      [l2Copy removeObjectsInRange:{count, objc_msgSend(l2Copy, "count") - count}];
    }
  }
}

- (id)selectFromBatch:(id)batch withBundle:(id)bundle rankCount:(unint64_t)count maxCount:(unint64_t)maxCount userQuery:(id)query queryID:(int64_t)d isCJK:(BOOL)k clientBundle:(id)self0 isKeyboardCJK:(BOOL)self1 currentTime:(double)self2
{
  batchCopy = batch;
  bundleCopy = bundle;
  queryCopy = query;
  v82 = bundleCopy;
  if (![queryCopy length])
  {
    goto LABEL_8;
  }

  v20 = +[NSCharacterSet whitespaceCharacterSet];
  v21 = [queryCopy stringByTrimmingCharactersInSet:v20];
  v22 = [v21 length];

  if (!v22 || ([v82 isEqualToString:SSMailBundleIdentifier] & 1) == 0 && !objc_msgSend(v82, "isEqualToString:", PommesCtlBundleID))
  {
    goto LABEL_8;
  }

  v23 = v22 != 1;
  if (!k && !jK)
  {
    v23 = v22 > 2;
  }

  if (!v23)
  {
    v70 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      v71 = [queryCopy length];
      *buf = 134218752;
      if (k || jK)
      {
        v72 = 2;
      }

      else
      {
        v72 = 3;
      }

      dCopy2 = d;
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
      dCopy2 = d;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "[queryID: %lu] returning empty tophits", buf, 0xCu);
    }

    [batchCopy removeAllObjects];
    v68 = objc_alloc_init(NSMutableDictionary);
  }

  else
  {
LABEL_8:

    IsMailOrPommesCTL = SSSectionIsMailOrPommesCTL();
    IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();
    v26 = 0;
    v77 = queryCopy;
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
    *&v108[4] = time;
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
    v81 = [v31 initWithComparator:v102 maxCount:count];
    v34 = [SSBinaryHeap alloc];
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = sub_1000327CC;
    v100[3] = &unk_100093268;
    v75 = v28;
    v101 = v75;
    v80 = [v34 initWithComparator:v100 maxCount:count];
    v35 = [SSBinaryHeap alloc];
    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_10003285C;
    v98[3] = &unk_100093268;
    v36 = v82;
    v74 = v30;
    v99 = v74;
    v78 = batchCopy;
    v79 = [v35 initWithComparator:v98 maxCount:count];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = batchCopy;
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
          rankingItem = [v42 rankingItem];
          [rankingItem setSectionBundleIdentifier:v36];

          if (!v33)
          {
            goto LABEL_18;
          }

          rankingItem2 = [v42 rankingItem];
          [rankingItem2 attributes];
          v45 = SSCompactRankingAttrsGetValue();

          LODWORD(rankingItem2) = [v45 isEqualToString:PhotosResultContentTypeAsset];
          if (rankingItem2)
          {
LABEL_18:
            rankingItem3 = [v42 rankingItem];
            retrievalType = [rankingItem3 retrievalType];
            if ([retrievalType intValue])
            {
              rankingItem4 = [v42 rankingItem];
              retrievalType2 = [rankingItem4 retrievalType];
              intValue = [retrievalType2 intValue];

              v36 = v82;
              if ((intValue & 2) == 0)
              {
                goto LABEL_21;
              }

              v116[0] = @"item";
              rankingItem5 = [v42 rankingItem];
              v117[0] = rankingItem5;
              v116[1] = @"index";
              v55 = [NSNumber numberWithUnsignedInteger:v39];
              v117[1] = v55;
              v56 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:2];
              v57 = v79;
            }

            else
            {

LABEL_21:
              rankingItem6 = [v42 rankingItem];
              retrievalType3 = [rankingItem6 retrievalType];
              intValue2 = [retrievalType3 intValue];

              if ((intValue2 & 2) != 0)
              {
                v114[0] = @"item";
                rankingItem5 = [v42 rankingItem];
                v115[0] = rankingItem5;
                v114[1] = @"index";
                v55 = [NSNumber numberWithUnsignedInteger:v39];
                v115[1] = v55;
                v56 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:2];
                v57 = v80;
              }

              else
              {
                v112[0] = @"item";
                rankingItem5 = [v42 rankingItem];
                v113[0] = rankingItem5;
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

    queryCopy = v77;
    batchCopy = v78;
  }

  return v68;
}

- (id)rankBatch:(id)batch withRanker:(id)ranker withBundle:(id)bundle clientBundle:(id)clientBundle maxCount:(int64_t)count userQuery:(id)query queryID:(int64_t)d rankingConfiguration:(id)self0 isCJK:(BOOL)self1 isKeyboardCJK:(BOOL)self2 privateQuery:(BOOL)self3 collectL2Signals:(BOOL)self4
{
  batchCopy = batch;
  rankerCopy = ranker;
  bundleCopy = bundle;
  clientBundleCopy = clientBundle;
  queryCopy = query;
  configurationCopy = configuration;
  v22 = [batchCopy mutableCopy];
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

        rankingItem = [*(*(&v44 + 1) + 8 * i) rankingItem];
        [v23 addObject:rankingItem];
      }

      v26 = [v24 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v26);
  }

  if (SSSectionIsSyndicatedPhotos())
  {
    v30 = +[SSPommesPhotosRanker sharedInstance];
    [rankerCopy currentTime];
    v32 = v31;
    keyboardLanguage = [rankerCopy keyboardLanguage];
    BYTE2(v39) = 0;
    LOWORD(v39) = 0;
    dCopy2 = d;
    [v30 updateScoresForItems:v23 withSectionBundle:bundleCopy userQuery:queryCopy queryID:d currentTime:0 collectL2Signals:keyboardLanguage keyboardLanguage:v32 onlyEmbeddingResults:v39 isCardSearch:? isDocumentSearch:?];

    countCopy2 = count;
    privateQueryCopy2 = privateQuery;
    v37 = clientBundleCopy;
  }

  else
  {
    kdebug_trace();
    [rankerCopy prepareItems:v23 inBundle:bundleCopy];
    kdebug_trace();
    kdebug_trace();
    LOBYTE(v39) = 0;
    v37 = clientBundleCopy;
    [rankerCopy updateScoresForPreparedItems:v23 isCJK:k clientBundleID:clientBundleCopy thresholdValue:0 queryNodeMatchInfo:signals collectL2Signals:0 isCardSearch:-1.79769313e308 isDocumentSearch:v39];
    kdebug_trace();
    countCopy2 = count;
    privateQueryCopy2 = privateQuery;
    dCopy2 = d;
  }

  [rankerCopy currentTime];
  [(SPCoreSpotlightTask *)self filterRankedItems:v24 maxCount:countCopy2 bundle:bundleCopy userQuery:queryCopy queryID:dCopy2 privateQuery:privateQueryCopy2 rankingConfiguration:configurationCopy currentTime:v37 clientBundle:rankerCopy ranker:?];
  [batchCopy removeObjectsInArray:v24];

  return v24;
}

@end