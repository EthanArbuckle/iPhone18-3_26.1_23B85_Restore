@interface PLHighlightItemClusterer
- (PLHighlightItemClusterer)initWithRule:(id)a3;
- (id)processHighlightItems:(id)a3 withRestoredHighlightItemLists:(id)a4 progressBlock:(id)a5;
- (void)restoreExistingHighlightItemListsFromUpdatedHighlightItems:(id)a3 deletedHighlightItems:(id)a4 usingModelReader:(id)a5 progressBlock:(id)a6 restoreBlock:(id)a7;
@end

@implementation PLHighlightItemClusterer

- (id)processHighlightItems:(id)a3 withRestoredHighlightItemLists:(id)a4 progressBlock:(id)a5
{
  v121 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v92 = a5;
  v10 = _Block_copy(v92);
  v11 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v12 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [v11 setTimeZone:v12];

  v98 = v11;
  [v11 setDateFormat:@"MM/dd/yyyy"];
  v13 = PLMomentsGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    buf = 134218240;
    v112 = [v8 count];
    v113 = 2048;
    v114 = [v9 count];
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "[HighlightCluster] Clustering %lu highlight items with existing lists (%lu)", &buf, 0x16u);
  }

  v14 = [v9 mutableCopy];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [MEMORY[0x1E695DF70] array];
  }

  v17 = v16;

  v18 = +[PLHighlightItemList timeSortDescriptors];
  [v17 sortUsingDescriptors:v18];

  v19 = +[PLHighlightItemList timeSortDescriptors];
  v20 = [v8 sortedArrayUsingDescriptors:v19];
  v21 = [v20 mutableCopy];

  if (![v21 count])
  {
    goto LABEL_61;
  }

  v80 = v8;
  v22 = [v21 count];
  v23 = [v17 firstObject];
  v94 = v9;
  v95 = v10;
  v96 = v21;
  v97 = v17;
  if (![v21 count])
  {
    v25 = 0.0;
LABEL_39:
    v60 = +[PLHighlightItemList timeSortDescriptors];
    [v17 sortUsingDescriptors:v60];

    v87 = [MEMORY[0x1E695DF70] array];
    if ([v17 count])
    {
      v61 = 0;
      v102 = v23;
      while (1)
      {
        if (v61 >= [v17 count] - 1)
        {
          goto LABEL_60;
        }

        v62 = [v17 objectAtIndexedSubscript:v61];
        v63 = [v17 objectAtIndexedSubscript:v61 + 1];
        v64 = [(PLHighlightItemClusterer *)self rule];
        v65 = [v64 highlightItemList:v62 canBeMergedWithOtherHighlightItemList:v63];

        if (v65)
        {
          break;
        }

        if (!v10)
        {
          ++v61;
LABEL_58:
          v23 = v102;
          goto LABEL_59;
        }

        v105 = 0;
        v10[2](v10, &v105, v25);
        v23 = v102;
        if (v105)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            buf = 67109120;
            LODWORD(v112) = 162;
            _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
          }

          v75 = MEMORY[0x1E695E0F0];
          v8 = v80;
          v9 = v94;
          goto LABEL_62;
        }

        ++v61;
LABEL_59:

        if (![v17 count])
        {
          goto LABEL_60;
        }
      }

      v66 = PLMomentsGetLog();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        v104 = [v62 startDate];
        v93 = [v98 stringFromDate:v104];
        v99 = [v62 endDate];
        v91 = [v98 stringFromDate:v99];
        v90 = [v63 startDate];
        v67 = [v98 stringFromDate:v90];
        v68 = [v63 endDate];
        v69 = [v98 stringFromDate:v68];
        buf = 138413058;
        v112 = v93;
        v113 = 2112;
        v114 = v91;
        v115 = 2112;
        v116 = v67;
        v70 = v67;
        v117 = 2112;
        v118 = v69;
        _os_log_impl(&dword_19BF1F000, v66, OS_LOG_TYPE_DEBUG, "[HighlightCluster] Highlight Item lists should be merged (%@ - %@) - (%@ - %@)", &buf, 0x2Au);

        v10 = v95;
        v17 = v97;

        v21 = v96;
      }

      if ([v62 isNewList])
      {
        v71 = v63;
      }

      else
      {
        v71 = v62;
      }

      v72 = v71;
      if ([v62 isNewList])
      {
        v73 = v62;
      }

      else
      {
        v73 = v63;
      }

      v74 = v73;
      [v72 mergeWithHighlightItemList:v74];
      if (([v74 isNewList] & 1) == 0)
      {
        [v87 addObject:v74];
        [v74 reset];
      }

      [v17 removeObject:v74];

      goto LABEL_58;
    }

LABEL_60:
    [v17 addObjectsFromArray:v87];

    v8 = v80;
    v9 = v94;
LABEL_61:
    v75 = v17;
LABEL_62:
    v76 = v92;
    goto LABEL_63;
  }

  v24 = 1.0 / v22;
  v25 = 0.0;
  while (1)
  {
    v26 = objc_autoreleasePoolPush();
    v25 = v24 + v25;
    v27 = [v21 firstObject];
    v103 = v26;
    if (v23)
    {
      break;
    }

LABEL_31:
    v53 = [[PLHighlightItemList alloc] initAsNewList];
    [v53 addHighlightItem:v27];
    [v17 addObject:v53];

    v54 = PLMomentsGetLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      v55 = [v27 startDate];
      v56 = [v98 stringFromDate:v55];
      v57 = [v27 endDate];
      v58 = [v98 stringFromDate:v57];
      buf = 138412546;
      v112 = v56;
      v113 = 2112;
      v114 = v58;
      _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_DEBUG, "[HighlightCluster] New list for time period (%@ - %@)", &buf, 0x16u);

      v17 = v97;
      v21 = v96;
    }

    v23 = v53;
LABEL_34:
    [v21 removeObject:v27];
    v59 = v103;
    if (v10)
    {
      v105 = 0;
      v10[2](v10, &v105, v25);
      if (v105)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          buf = 67109120;
          LODWORD(v112) = 136;
          _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
        }

        v76 = v92;
        goto LABEL_72;
      }
    }

    objc_autoreleasePoolPop(v103);
    if (![v21 count])
    {
      goto LABEL_39;
    }
  }

  v28 = [(PLHighlightItemClusterer *)self rule];
  v29 = [v28 highlightItem:v27 belongsToHighlightItemList:v23];

  if (v29)
  {
    v30 = PLMomentsGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v88 = [v27 startDate];
      v81 = [v98 stringFromDate:v88];
      v85 = [v27 endDate];
      v31 = [v98 stringFromDate:v85];
      v83 = [v23 startDate];
      v32 = [v98 stringFromDate:v83];
      [v23 endDate];
      v33 = v100 = v23;
      v34 = [v98 stringFromDate:v33];
      v35 = [(PLHighlightItemClusterer *)self rule];
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      buf = 138413314;
      v112 = v81;
      v113 = 2112;
      v114 = v31;
      v115 = 2112;
      v116 = v32;
      v117 = 2112;
      v118 = v34;
      v119 = 2112;
      v120 = v37;
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEBUG, "[HighlightCluster] Highlight item (%@ - %@) matches cluster (%@ - %@) for rules %@", &buf, 0x34u);

      v9 = v94;
      v23 = v100;

      v21 = v96;
      v10 = v95;

      v17 = v97;
    }

    [v23 addHighlightItem:v27];
    v38 = 0;
    if (!v10)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v39 = v17;
    v40 = [v39 countByEnumeratingWithState:&v106 objects:v110 count:16];
    if (v40)
    {
      v41 = v40;
      v101 = v23;
      v42 = *v107;
      while (2)
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v107 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v106 + 1) + 8 * i);
          v45 = [(PLHighlightItemClusterer *)self rule];
          v46 = [v45 highlightItem:v27 belongsToHighlightItemList:v44];

          if (v46)
          {
            v47 = PLMomentsGetLog();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              v86 = [v27 startDate];
              v89 = [v98 stringFromDate:v86];
              v84 = [v27 endDate];
              v79 = [v98 stringFromDate:v84];
              v82 = [v44 startDate];
              v48 = [v98 stringFromDate:v82];
              v78 = [v44 endDate];
              v49 = [v98 stringFromDate:v78];
              v50 = [(PLHighlightItemClusterer *)self rule];
              v51 = objc_opt_class();
              v52 = NSStringFromClass(v51);
              buf = 138413314;
              v112 = v89;
              v113 = 2112;
              v114 = v79;
              v115 = 2112;
              v116 = v48;
              v117 = 2112;
              v118 = v49;
              v119 = 2112;
              v120 = v52;
              _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_DEBUG, "[HighlightCluster] Highlight item (%@ - %@) matches cluster (%@ - %@) for rules %@", &buf, 0x34u);

              v9 = v94;
            }

            [v44 addHighlightItem:v27];
            v23 = v44;

            v38 = 0;
            v10 = v95;
            v21 = v96;
            v17 = v97;
            goto LABEL_28;
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v106 objects:v110 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }

      v38 = 1;
      v10 = v95;
      v21 = v96;
      v17 = v97;
      v23 = v101;
    }

    else
    {
      v38 = 1;
    }

LABEL_28:

    if (!v10)
    {
LABEL_30:
      if (!v38)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    }
  }

  v105 = 0;
  v10[2](v10, &v105, v25);
  if (!v105)
  {
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    buf = 67109120;
    LODWORD(v112) = 124;
    _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
  }

  v76 = v92;
  v59 = v103;
LABEL_72:

  objc_autoreleasePoolPop(v59);
  v75 = MEMORY[0x1E695E0F0];
  v8 = v80;
LABEL_63:

  return v75;
}

- (void)restoreExistingHighlightItemListsFromUpdatedHighlightItems:(id)a3 deletedHighlightItems:(id)a4 usingModelReader:(id)a5 progressBlock:(id)a6 restoreBlock:(id)a7
{
  v74 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v48 = a7;
  v53 = _Block_copy(a6);
  v14 = [MEMORY[0x1E695DFA8] setWithSet:v11];
  [v14 unionSet:v12];
  v15 = [v13 fetchNeighborHighlightItemsForHighlightItems:v14];
  [v14 addObjectsFromArray:v15];
  v16 = [MEMORY[0x1E695DF70] array];
  v52 = v13;
  v17 = [v13 fetchParentHighlightItemsForHighlightItems:v14];
  if ([v17 count])
  {
    v45 = v15;
    v46 = v12;
    v47 = v11;
    v44 = v17;
    v18 = [MEMORY[0x1E695DFD8] setWithArray:v17];
    v19 = [v18 count];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = v18;
    v51 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v51)
    {
      v20 = 1.0 / v19;
      v50 = *v64;
      v21 = 0.0;
      while (2)
      {
        for (i = 0; i != v51; ++i)
        {
          v23 = v16;
          if (*v64 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v63 + 1) + 8 * i);
          v25 = [v52 fetchChildHighlightItemsForHighlightItem:v24];
          v26 = [MEMORY[0x1E695DF70] array];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v27 = v25;
          v28 = [v27 countByEnumeratingWithState:&v59 objects:v72 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v60;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v60 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = *(*(&v59 + 1) + 8 * j);
                if ([v14 containsObject:v32])
                {
                  [v26 addObject:v32];
                }
              }

              v29 = [v27 countByEnumeratingWithState:&v59 objects:v72 count:16];
            }

            while (v29);
          }

          v33 = [[PLHighlightItemList alloc] initWithParentHighlightItem:v24 childHighlightItems:v27];
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v34 = v26;
          v35 = [v34 countByEnumeratingWithState:&v55 objects:v71 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v56;
            do
            {
              for (k = 0; k != v36; ++k)
              {
                if (*v56 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                [(PLHighlightItemList *)v33 removeHighlightItem:*(*(&v55 + 1) + 8 * k)];
              }

              v36 = [v34 countByEnumeratingWithState:&v55 objects:v71 count:16];
            }

            while (v36);
          }

          v21 = v20 + v21;

          v16 = v23;
          [v23 addObject:v33];
          if (v53)
          {
            v54 = 0;
            v53[2](v53, &v54, v21);
            if (v54)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
              {
                buf = 67109120;
                LODWORD(v68) = 69;
                _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
              }

              v12 = v46;
              v11 = v47;
              v43 = v48;
              v17 = v44;
              v15 = v45;
              goto LABEL_34;
            }
          }
        }

        v51 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
        if (v51)
        {
          continue;
        }

        break;
      }
    }

    v12 = v46;
    v11 = v47;
    v17 = v44;
    v15 = v45;
  }

  v39 = PLMomentsGetLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = v15;
    v41 = [v16 count];
    v42 = [v11 count];
    buf = 134218240;
    v68 = v41;
    v15 = v40;
    v69 = 2048;
    v70 = v42;
    _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_INFO, "[HighlightCluster] Restored (%lu) highlight item lists for (%lu) highlights", &buf, 0x16u);
  }

  [v14 minusSet:v12];
  v43 = v48;
  (*(v48 + 2))(v48, v16, v14);
LABEL_34:
}

- (PLHighlightItemClusterer)initWithRule:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLHighlightItemClusterer;
  v6 = [(PLHighlightItemClusterer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rule, a3);
  }

  return v7;
}

@end