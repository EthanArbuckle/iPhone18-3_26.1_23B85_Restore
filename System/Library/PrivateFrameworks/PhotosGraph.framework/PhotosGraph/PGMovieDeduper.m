@interface PGMovieDeduper
- (id)deduplicatedItemsWithItems:(id)a3 debugInfo:(id)a4 progressBlock:(id)a5;
@end

@implementation PGMovieDeduper

- (id)deduplicatedItemsWithItems:(id)a3 debugInfo:(id)a4 progressBlock:(id)a5
{
  v137 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v94 = a4;
  v9 = a5;
  v10 = 0.0;
  v113 = _Block_copy(v9);
  if (v113)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v130 = 0;
      v113[2](v113, &v130, 0.0);
      if (v130 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v133 = 30;
          *&v133[4] = 2080;
          *&v133[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGMovieDeduper.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v12 = MEMORY[0x277CBEBF8];
        goto LABEL_115;
      }

      v10 = Current;
    }
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v126 objects:v136 count:16];
  if (!v14)
  {
LABEL_16:

    v12 = v13;
    goto LABEL_115;
  }

  v15 = v14;
  v16 = *v127;
LABEL_10:
  v17 = 0;
  while (1)
  {
    if (*v127 != v16)
    {
      objc_enumerationMutation(v13);
    }

    if ([*(*(&v126 + 1) + 8 * v17) isVideo])
    {
      break;
    }

    if (v15 == ++v17)
    {
      v15 = [v13 countByEnumeratingWithState:&v126 objects:v136 count:16];
      if (!v15)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }
  }

  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v135[0] = v18;
  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v135[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v135 count:2];

  v21 = [v13 sortedArrayUsingDescriptors:v20];
  v100 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v21, "count")}];
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = [v21 lastObject];
  v24 = [MEMORY[0x277D267F0] sharedMediaAnalyzer];
  v108 = [(PGDeduper *)self identifiersOfRequiredItems];
  v25 = [v21 count];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  obj = v21;
  v91 = [obj countByEnumeratingWithState:&v122 objects:v134 count:16];
  v27 = 0;
  if (!v91)
  {
LABEL_101:

    if (v113 && CFAbsoluteTimeGetCurrent() - v10 >= 0.01 && (v130 = 0, v113[2](v113, &v130, 1.0), v130))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v133 = 205;
        *&v133[4] = 2080;
        *&v133[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGMovieDeduper.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v12 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v12 = v100;
    }

    v77 = obj;
    goto LABEL_114;
  }

  v98 = 1.0 / v25;
  v92 = *v123;
  v107 = *MEMORY[0x277D26790];
  v105 = *MEMORY[0x277D26770];
  v106 = *MEMORY[0x277D267C0];
  v101 = *MEMORY[0x277D267A0];
  v102 = *MEMORY[0x277D26798];
  v28 = 0.0;
  v29 = MEMORY[0x277D86220];
  *&v26 = 134218242;
  v80 = v26;
  v30 = 0.5;
LABEL_19:
  v31 = 0;
  while (2)
  {
    v96 = v27;
    if (*v123 != v92)
    {
      v32 = v31;
      objc_enumerationMutation(obj);
      v31 = v32;
    }

    v93 = v31;
    v97 = *(*(&v122 + 1) + 8 * v31);
    v33 = [v97 creationDate];
    v34 = v33;
    if (v96)
    {
      [v33 timeIntervalSinceDate:?];
      v36 = v35 >= 180.0;
    }

    else
    {
      v36 = 0;
    }

    v37 = v97;
    v95 = v34;
    if (!v36 && v97 != v23)
    {
      goto LABEL_93;
    }

    v90 = v36;
    if (v97 != v23)
    {
      v36 = 1;
    }

    if (!v36)
    {
      [v22 addObject:v97];
    }

    if ([v22 count] == 1)
    {
      [v100 addObjectsFromArray:v22];
      goto LABEL_89;
    }

    context = objc_autoreleasePoolPush();
    v121 = 0;
    v110 = [v24 requestAnalysis:66560 forAssets:v22 withOptions:0 andProgressHandler:0 andError:&v121];
    v88 = v121;
    if (v113)
    {
      v38 = CFAbsoluteTimeGetCurrent();
      if (v38 - v10 >= 0.01)
      {
        v130 = 0;
        v113[2](v113, &v130, v28 + v98 * v30);
        if (v130)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v133 = 84;
            *&v133[4] = 2080;
            *&v133[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGMovieDeduper.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v46 = v88;
          v77 = obj;
LABEL_110:

          objc_autoreleasePoolPop(context);
          v27 = v96;
          goto LABEL_111;
        }

        v10 = v38;
      }
    }

    if (!v110 || v88)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = v80;
        *v133 = 66560;
        *&v133[8] = 2112;
        *&v133[10] = v88;
        _os_log_error_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_ERROR, "Error requesting analysis types 0x%llx from MediaAnalyzer. %@", buf, 0x16u);
      }

      [v100 addObjectsFromArray:v22];
      goto LABEL_88;
    }

    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v40 = [v22 count];
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v41 = v22;
    v109 = [v41 countByEnumeratingWithState:&v117 objects:v131 count:16];
    if (!v109)
    {

      v46 = 0;
      v34 = v95;
      goto LABEL_87;
    }

    v99 = v41;
    v81 = v24;
    v82 = v23;
    v83 = v22;
    v84 = v20;
    v85 = v9;
    v86 = v8;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = v30 / v40;
    v103 = *v118;
    v104 = v39;
    v48 = 0.5;
    v49 = -1.79769313e308;
    while (2)
    {
      for (i = 0; i != v109; ++i)
      {
        v51 = v44;
        v111 = v43;
        if (*v118 != v103)
        {
          objc_enumerationMutation(v99);
        }

        v52 = *(*(&v117 + 1) + 8 * i);
        v53 = [v110 objectAtIndexedSubscript:v45];
        v54 = [v53 objectForKeyedSubscript:v107];
        v115 = v54;
        if (v54)
        {
          [v54 doubleValue];
          v56 = v55;
        }

        else
        {
          v56 = 0.5;
        }

        v112 = v42;
        v116 = v53;
        v57 = [v53 objectForKeyedSubscript:v106];
        v58 = [v57 objectForKeyedSubscript:v105];

        v114 = v58;
        v59 = v46;
        if (v58)
        {
          v60 = [v58 firstObject];
          v61 = [v60 objectForKeyedSubscript:v102];
          v62 = [v61 objectForKeyedSubscript:v101];
          [v62 doubleValue];
          v64 = v63 < 0.1;
        }

        else
        {
          v64 = 0;
        }

        v44 = [v52 isVideo];
        v43 = [v52 isFavorite];
        v65 = [v52 clsIdentifier];
        v66 = [v108 containsObject:v65];

        v46 = v59;
        if (!v59 || !v64 || ((v51 | v44) & 1) == 0)
        {
          v39 = v104;
          if (v59)
          {
            [v100 addObject:v59];
            if ([v104 count])
            {
              [v94 dedupItems:v104 toItem:v59 withDedupingType:3];
              [v104 removeAllObjects];
            }
          }

LABEL_68:
          v46 = v52;

          v42 = v66;
          v49 = v56;
          goto LABEL_73;
        }

        v67 = v111 & (v43 ^ 1);
        v68 = v67 ^ 1;
        if (v67)
        {
          v69 = v112;
        }

        else
        {
          v69 = v112;
          if (((v51 ^ 1) & 1) == 0)
          {
            if (v56 > v49)
            {
              v68 = v44;
            }

            else
            {
              v68 = 0;
            }
          }
        }

        v39 = v104;
        if ((v69 & 1) == 0)
        {
          if (((v66 | v68) & 1) == 0)
          {
            [v104 addObject:v52];
            v42 = 0;
            goto LABEL_73;
          }

          [v104 addObject:v59];
          goto LABEL_68;
        }

        if (!v66)
        {
          v71 = v104;
LABEL_72:
          [v71 addObject:v52];
          v42 = 1;
          goto LABEL_73;
        }

        if (!v68)
        {
          v71 = v100;
          goto LABEL_72;
        }

        [v100 addObject:v59];
        v70 = v52;

        v42 = 1;
        v49 = v56;
        v46 = v70;
LABEL_73:
        v48 = v47 + v48;
        if (v113)
        {
          v72 = CFAbsoluteTimeGetCurrent();
          if (v72 - v10 >= 0.01)
          {
            v130 = 0;
            v113[2](v113, &v130, v28 + v98 * v48);
            if (v130)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v133 = 171;
                *&v133[4] = 2080;
                *&v133[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGMovieDeduper.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              v9 = v85;
              v8 = v86;
              v22 = v83;
              v20 = v84;
              v24 = v81;
              v23 = v82;
              v77 = obj;
              goto LABEL_110;
            }

            v10 = v72;
          }
        }

        ++v45;
      }

      v109 = [v99 countByEnumeratingWithState:&v117 objects:v131 count:16];
      if (v109)
      {
        continue;
      }

      break;
    }

    v23 = v82;
    v34 = v95;
    if (v46)
    {
      [v100 addObject:v46];
      v73 = [v39 count];
      v22 = v83;
      v20 = v84;
      v24 = v81;
      v29 = MEMORY[0x277D86220];
      v30 = 0.5;
      if (v73)
      {
        [v94 dedupItems:v39 toItem:v46 withDedupingType:3];
        [v39 removeAllObjects];
      }

      v9 = v85;
      v8 = v86;
    }

    else
    {
      v9 = v85;
      v8 = v86;
      v22 = v83;
      v20 = v84;
      v24 = v81;
      v29 = MEMORY[0x277D86220];
      v30 = 0.5;
    }

LABEL_87:

LABEL_88:
    objc_autoreleasePoolPop(context);
LABEL_89:
    [v22 removeAllObjects];
    v37 = v97;
    v74 = !v90;
    if (v97 != v23)
    {
      v74 = 1;
    }

    if ((v74 & 1) == 0)
    {
      [v100 addObject:v97];
      v37 = v97;
    }

LABEL_93:
    [v22 addObject:v37];
    [v37 duration];
    v27 = [v34 dateByAddingTimeInterval:?];

    v28 = v98 + v28;
    if (!v113 || (v75 = CFAbsoluteTimeGetCurrent(), v75 - v10 < 0.01))
    {
LABEL_97:

      v31 = v93 + 1;
      if (v93 + 1 != v91)
      {
        continue;
      }

      v76 = [obj countByEnumeratingWithState:&v122 objects:v134 count:16];
      v91 = v76;
      if (!v76)
      {
        goto LABEL_101;
      }

      goto LABEL_19;
    }

    break;
  }

  v130 = 0;
  v113[2](v113, &v130, v28);
  if (!v130)
  {
    v10 = v75;
    goto LABEL_97;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v133 = 199;
    *&v133[4] = 2080;
    *&v133[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGMovieDeduper.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v77 = obj;
LABEL_111:

  v12 = MEMORY[0x277CBEBF8];
LABEL_114:

LABEL_115:
  v78 = *MEMORY[0x277D85DE8];

  return v12;
}

@end