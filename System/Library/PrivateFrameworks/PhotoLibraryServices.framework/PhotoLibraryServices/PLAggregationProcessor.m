@interface PLAggregationProcessor
+ (BOOL)isEnabled;
+ (BOOL)requireContiguousAggregation;
+ (BOOL)requireStartAtFirstDayOfWeek;
+ (BOOL)shouldAggregateMoment:(id)a3 numberOfAssetsEligibleForCuration:(unint64_t *)a4;
+ (NSDate)allowedStartDateToAggregate;
+ (double)timeIntervalOfRecentContentToIgnore;
+ (unint64_t)maximumNumberOfAssetsPerAggregation;
+ (unint64_t)maximumNumberOfAssetsPerMoment;
+ (unint64_t)maximumNumberOfAssetsPerShortMoment;
+ (unint64_t)maximumNumberOfDaysPerAggregation;
+ (void)initialize;
+ (void)restoreDefaultEnablement;
+ (void)setEnabled:(BOOL)a3;
- (PLAggregationProcessor)init;
- (id)_aggregationMomentClustersForMomentClusters:(id)a3;
- (id)processAggregationsWithSortedMomentClusters:(id)a3 momentsContainedInOtherHighlights:(id)a4 progressBlock:(id)a5;
- (id)sortedNeighborMomentClustersOfMomentClusters:(id)a3 forAllMomentClusters:(id)a4;
@end

@implementation PLAggregationProcessor

+ (BOOL)shouldAggregateMoment:(id)a3 numberOfAssetsEligibleForCuration:(unint64_t *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[PLAggregationProcessor maximumNumberOfAssetsPerMoment];
  v6 = +[PLAggregationProcessor maximumNumberOfAssetsPerShortMoment];
  v7 = v6;
  v25 = 0u;
  v26 = 0u;
  if (v5 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v27 = 0uLL;
  v28 = 0uLL;
  v9 = [v4 assets];
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v26;
LABEL_6:
    v14 = 0;
    while (1)
    {
      if (*v26 != v13)
      {
        objc_enumerationMutation(v9);
      }

      if ([PLPhotosHighlightGenerator assetEligibleForCuration:*(*(&v25 + 1) + 8 * v14)])
      {
        if (++v12 > v8)
        {
          break;
        }
      }

      if (v11 == ++v14)
      {
        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v11)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = objc_alloc(MEMORY[0x1E696AB80]);
  v16 = [v4 startDate];
  v17 = [v4 endDate];
  v18 = [v15 initWithStartDate:v16 endDate:v17];

  [v18 duration];
  v21 = v19 <= 120.0 && v12 <= v7;
  v22 = v12 <= v5 || v21;
  if (a4)
  {
    *a4 = v12;
  }

  return v22;
}

- (id)_aggregationMomentClustersForMomentClusters:(id)a3
{
  v110 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v5 localStartDate];

  v7 = [v4 lastObject];
  v8 = [v7 localEndDate];

  v63 = v8;
  v64 = v6;
  v62 = [(NSCalendar *)self->_calendar components:16 fromDate:v6 toDate:v8 options:0];
  v77 = [v62 day];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v100 objects:v109 count:16];
  v79 = v9;
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v80 = *v101;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v101 != v80)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v100 + 1) + 8 * i);
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v15 = [v14 moments];
        v16 = [v15 countByEnumeratingWithState:&v96 objects:v108 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v97;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v97 != v18)
              {
                objc_enumerationMutation(v15);
              }

              curatedAssetCountByMomentUUID = self->_curatedAssetCountByMomentUUID;
              v21 = [*(*(&v96 + 1) + 8 * j) uuid];
              v22 = [(NSMutableDictionary *)curatedAssetCountByMomentUUID objectForKeyedSubscript:v21];
              v12 += [v22 unsignedIntegerValue];
            }

            v17 = [v15 countByEnumeratingWithState:&v96 objects:v108 count:16];
          }

          while (v17);
        }

        v9 = v79;
      }

      v11 = [v79 countByEnumeratingWithState:&v100 objects:v109 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v23 = [objc_opt_class() maximumNumberOfDaysPerAggregation];
  v24 = [objc_opt_class() maximumNumberOfAssetsPerAggregation];
  v25 = vcvtpd_u64_f64(v77 / v23);
  v26 = vcvtpd_u64_f64(v12 / v24);
  if (v25 <= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v25;
  }

  v67 = v27 - 1;
  if (v27 == 1)
  {
    v28 = [MEMORY[0x1E695DF70] array];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v29 = v9;
    v30 = [v29 countByEnumeratingWithState:&v92 objects:v107 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v93;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v93 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [*(*(&v92 + 1) + 8 * k) moments];
          [v28 addObjectsFromArray:v34];
        }

        v31 = [v29 countByEnumeratingWithState:&v92 objects:v107 count:16];
      }

      while (v31);
    }

    v35 = [[PLMomentCluster alloc] initWithMoments:v28];
    v106 = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
  }

  else
  {
    if (v77 <= v23)
    {
      v37 = v23;
    }

    else
    {
      v37 = v77;
    }

    if (v12 <= v24)
    {
      v38 = v24;
    }

    else
    {
      v38 = v12;
    }

    v39 = [MEMORY[0x1E695DF70] arrayWithCapacity:v27];
    v35 = [MEMORY[0x1E695DF70] array];
    v40 = v64;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__PLAggregationProcessor__aggregationMomentClustersForMomentClusters___block_invoke;
    aBlock[3] = &unk_1E7572578;
    v66 = v39;
    v91 = v66;
    v41 = _Block_copy(aBlock);
    v72 = [v9 lastObject];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = v9;
    v65 = v41;
    v73 = [obj countByEnumeratingWithState:&v86 objects:v105 count:16];
    if (v73)
    {
      v42 = 0;
      v69 = vcvtpd_u64_f64(v38 / v27);
      v70 = vcvtpd_u64_f64(v37 / v27);
      v71 = *v87;
      v74 = v40;
      do
      {
        v43 = 0;
        v44 = v40;
        do
        {
          v81 = v44;
          if (*v87 != v71)
          {
            objc_enumerationMutation(obj);
          }

          v75 = v42;
          v78 = v35;
          v45 = *(*(&v86 + 1) + 8 * v43);
          v76 = [v45 localStartDate];
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v46 = [v45 moments];
          v47 = [v46 countByEnumeratingWithState:&v82 objects:v104 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = 0;
            v50 = *v83;
            do
            {
              for (m = 0; m != v48; ++m)
              {
                if (*v83 != v50)
                {
                  objc_enumerationMutation(v46);
                }

                v52 = self->_curatedAssetCountByMomentUUID;
                v53 = [*(*(&v82 + 1) + 8 * m) uuid];
                v54 = [(NSMutableDictionary *)v52 objectForKeyedSubscript:v53];
                v49 += [v54 unsignedIntegerValue];
              }

              v48 = [v46 countByEnumeratingWithState:&v82 objects:v104 count:16];
            }

            while (v48);
          }

          else
          {
            v49 = 0;
          }

          v42 = v49 + v75;
          v40 = v76;
          v55 = [(NSCalendar *)self->_calendar components:16 fromDate:v74 toDate:v76 options:0];
          v56 = [v55 day];
          v57 = v81;
          if (v45 == v72 || (v56 <= v70 ? (v58 = v42 > v69) : (v58 = 1), !v58 || -[NSCalendar isDate:inSameDayAsDate:](self->_calendar, "isDate:inSameDayAsDate:", v76, v81) || [v66 count] == v67))
          {
            v35 = v78;
            [(PLMomentCluster *)v78 addObject:v45];
          }

          else
          {
            (v65)[2](v65, v78);
            v35 = [MEMORY[0x1E695DF70] arrayWithObject:v45];

            v59 = v76;
            v42 = v49;
            v74 = v59;
            v57 = v81;
          }

          ++v43;
          v44 = v76;
        }

        while (v43 != v73);
        v60 = [obj countByEnumeratingWithState:&v86 objects:v105 count:16];
        v73 = v60;
      }

      while (v60);
    }

    else
    {
      v74 = v40;
    }

    (v65)[2](v65, v35);
    v28 = v66;

    v36 = v28;
  }

  return v36;
}

void __70__PLAggregationProcessor__aggregationMomentClustersForMomentClusters___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count] >= 2)
  {
    v3 = [[PLMomentCluster alloc] initWithMomentClusters:v4];
    [*(a1 + 32) addObject:v3];
  }
}

- (id)processAggregationsWithSortedMomentClusters:(id)a3 momentsContainedInOtherHighlights:(id)a4 progressBlock:(id)a5
{
  v108 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v84 = a4;
  v9 = a5;
  if ([v8 count])
  {
    v68 = v9;
    v75 = _Block_copy(v9);
    v67 = [MEMORY[0x1E695DEC8] array];
    v10 = PLMomentGenerationGetLog();
    v11 = os_signpost_id_generate(v10);
    info = 0;
    mach_timebase_info(&info);
    v12 = v10;
    v13 = v12;
    v65 = v11 - 1;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "AggregationsProcessing", "", buf, 2u);
    }

    spid = v11;
    v70 = v13;

    v64 = mach_absolute_time();
    v66 = [v8 count];
    v14 = [MEMORY[0x1E695DEE8] currentCalendar];
    v15 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
    v74 = v14;
    [v14 setTimeZone:v15];

    v85 = [objc_opt_class() allowedStartDateToAggregate];
    v76 = [MEMORY[0x1E695DFA8] set];
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v69 = v8;
    obj = v8;
    v82 = [obj countByEnumeratingWithState:&v95 objects:v107 count:16];
    if (v82)
    {
      v80 = *v96;
      do
      {
        for (i = 0; i != v82; ++i)
        {
          if (*v96 != v80)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v95 + 1) + 8 * i);
          v18 = [v17 moments];
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v19 = v18;
          v20 = [v19 countByEnumeratingWithState:&v91 objects:v106 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v92;
            v79 = v17;
            while (2)
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v92 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v91 + 1) + 8 * j);
                v25 = objc_autoreleasePoolPush();
                *buf = 0;
                v26 = [v24 pl_startDate];
                if ([v26 compare:v85] == 1 || objc_msgSend(v84, "containsObject:", v24))
                {

LABEL_22:
                  objc_autoreleasePoolPop(v25);

                  goto LABEL_23;
                }

                v27 = [objc_opt_class() shouldAggregateMoment:v24 numberOfAssetsEligibleForCuration:buf];

                if (!v27)
                {
                  goto LABEL_22;
                }

                v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*buf];
                curatedAssetCountByMomentUUID = self->_curatedAssetCountByMomentUUID;
                v30 = [v24 uuid];
                [(NSMutableDictionary *)curatedAssetCountByMomentUUID setObject:v28 forKeyedSubscript:v30];

                objc_autoreleasePoolPop(v25);
              }

              v21 = [v19 countByEnumeratingWithState:&v91 objects:v106 count:16];
              v17 = v79;
              if (v21)
              {
                continue;
              }

              break;
            }
          }

          [v76 addObject:v17];
LABEL_23:
        }

        v82 = [obj countByEnumeratingWithState:&v95 objects:v107 count:16];
      }

      while (v82);
    }

    v71 = [MEMORY[0x1E695DF70] array];
    v72 = [objc_opt_class() requireContiguousAggregation];
    v81 = [objc_opt_class() requireStartAtFirstDayOfWeek];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v31 = obj;
    v32 = [v31 countByEnumeratingWithState:&v87 objects:v105 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = 0;
      v35 = 0;
      v73 = 0;
      v83 = *v88;
      obja = 0;
      v36 = 0.0;
LABEL_27:
      v37 = 0;
      while (1)
      {
        if (*v88 != v83)
        {
          objc_enumerationMutation(v31);
        }

        v38 = *(*(&v87 + 1) + 8 * v37);
        if (v75)
        {
          v86 = 0;
          v75[2](v75, &v86, v36);
          if (v86)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              *&buf[4] = 303;
              _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
            }

            v51 = v67;
            v50 = v67;

            v52 = v71;
            goto LABEL_73;
          }
        }

        v39 = [v38 localStartDate];
        v40 = [v35 count];
        v41 = [v76 containsObject:v38];
        if (v41)
        {
          v42 = v40 == 0;
        }

        else
        {
          v42 = 0;
        }

        if (v42)
        {
          goto LABEL_50;
        }

        v43 = v40 ? v41 : 0;
        if (v43 != 1)
        {
          break;
        }

        if (![(NSCalendar *)self->_calendar isDate:v39 equalToDate:v34 toUnitGranularity:8])
        {
          obja += v40;
          if (v40 == 1)
          {
            ++v73;
            goto LABEL_50;
          }

LABEL_49:
          v45 = [(PLAggregationProcessor *)self _aggregationMomentClustersForMomentClusters:v35];
          [v71 addObjectsFromArray:v45];

          if (v43)
          {
LABEL_50:
            v46 = [MEMORY[0x1E695DF70] arrayWithObject:v38];

            if (v81)
            {
              v47 = [v74 pl_startOfWeekForDate:v39];
            }

            else
            {
              v47 = v39;
            }

            v48 = v47;

            v34 = v48;
            goto LABEL_54;
          }

LABEL_57:
          v46 = [MEMORY[0x1E695DF70] array];

          v34 = 0;
LABEL_54:
          v35 = v46;
          goto LABEL_55;
        }

        [v35 addObject:v38];
LABEL_55:
        v36 = 1.0 / v66 + v36;

        if (v33 == ++v37)
        {
          v49 = [v31 countByEnumeratingWithState:&v87 objects:v105 count:16];
          v33 = v49;
          if (v49)
          {
            goto LABEL_27;
          }

          goto LABEL_65;
        }
      }

      v44 = v72;
      if (!v40)
      {
        v44 = 0;
      }

      if ((v44 & 1) == 0)
      {
        goto LABEL_55;
      }

      obja += v40;
      if (v40 != 1)
      {
        goto LABEL_49;
      }

      ++v73;
      goto LABEL_57;
    }

    v34 = 0;
    v35 = 0;
    obja = 0;
    v73 = 0;
LABEL_65:

    v52 = v71;
    if ([v35 count] >= 2)
    {
      v53 = [(PLAggregationProcessor *)self _aggregationMomentClustersForMomentClusters:v35];
      [v71 addObjectsFromArray:v53];
    }

    v54 = [v71 count];
    v55 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v58 = v70;
    v59 = v58;
    if (v65 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
    {
      *buf = 134218496;
      *&buf[4] = v54;
      v101 = 2048;
      v102 = v73;
      v103 = 2048;
      v104 = obja;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v59, OS_SIGNPOST_INTERVAL_END, spid, "AggregationsProcessing", "[HighlightsGeneration] Moment Aggregation statistics: %lu aggregations, %lu singletons, %lu moments contained", buf, 0x20u);
    }

    v60 = v59;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[HighlightsGeneration] Moment Aggregation statistics: %lu aggregations, %lu singletons, %lu moments contained", v54, v73, obja];
      *buf = 136315650;
      *&buf[4] = "AggregationsProcessing";
      v101 = 2112;
      v102 = v61;
      v103 = 2048;
      *&v104 = ((((v55 - v64) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
    }

    v50 = v71;
    v51 = v67;
LABEL_73:

    v9 = v68;
    v8 = v69;
  }

  else
  {
    v50 = MEMORY[0x1E695E0F0];
  }

  return v50;
}

- (id)sortedNeighborMomentClustersOfMomentClusters:(id)a3 forAllMomentClusters:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DFA8] set];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(v9);
        }

        calendar = self->_calendar;
        v15 = [*(*(&v37 + 1) + 8 * i) startDate];
        v16 = [(NSCalendar *)calendar pl_startOfMonthForDate:v15];

        [v8 addObject:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v11);
  }

  v32 = v9;
  v17 = [MEMORY[0x1E695DFA8] setWithArray:v9];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = v7;
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v33 + 1) + 8 * j);
        v24 = self->_calendar;
        v25 = [v23 startDate];
        v26 = [(NSCalendar *)v24 pl_startOfMonthForDate:v25];

        if ([v8 containsObject:v26])
        {
          [v17 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v20);
  }

  v27 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v41[0] = v27;
  v28 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"endDate" ascending:1];
  v41[1] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];

  v30 = [v17 sortedArrayUsingDescriptors:v29];

  return v30;
}

- (PLAggregationProcessor)init
{
  v9.receiver = self;
  v9.super_class = PLAggregationProcessor;
  v2 = [(PLAggregationProcessor *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DEE8] currentCalendar];
    calendar = v2->_calendar;
    v2->_calendar = v3;

    v5 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
    [(NSCalendar *)v2->_calendar setTimeZone:v5];

    v6 = objc_opt_new();
    curatedAssetCountByMomentUUID = v2->_curatedAssetCountByMomentUUID;
    v2->_curatedAssetCountByMomentUUID = v6;
  }

  return v2;
}

+ (double)timeIntervalOfRecentContentToIgnore
{
  if (timeIntervalOfRecentContentToIgnore_onceToken != -1)
  {
    dispatch_once(&timeIntervalOfRecentContentToIgnore_onceToken, &__block_literal_global_49_48227);
  }

  return *&timeIntervalOfRecentContentToIgnore_timeIntervalOfRecentContentToIgnore;
}

double __61__PLAggregationProcessor_timeIntervalOfRecentContentToIgnore__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 integerForKey:@"PLAggregationProcessorNumberOfRecentDaysToIgnore"];

  result = v1 * 86400.0;
  *&timeIntervalOfRecentContentToIgnore_timeIntervalOfRecentContentToIgnore = result;
  return result;
}

+ (NSDate)allowedStartDateToAggregate
{
  [a1 timeIntervalOfRecentContentToIgnore];
  v3 = v2;
  v4 = +[PLMomentGenerationUtils today];
  v5 = [v4 dateByAddingTimeInterval:-v3];

  return v5;
}

+ (BOOL)requireStartAtFirstDayOfWeek
{
  if (requireStartAtFirstDayOfWeek_onceToken != -1)
  {
    dispatch_once(&requireStartAtFirstDayOfWeek_onceToken, &__block_literal_global_46_48234);
  }

  return requireStartAtFirstDayOfWeek_requireStartAtFirstDayOfWeek;
}

void __54__PLAggregationProcessor_requireStartAtFirstDayOfWeek__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  requireStartAtFirstDayOfWeek_requireStartAtFirstDayOfWeek = [v0 BOOLForKey:@"PLAggregationProcessorRequireStartAtFirstDayOfWeek"];
}

+ (BOOL)requireContiguousAggregation
{
  if (requireContiguousAggregation_onceToken != -1)
  {
    dispatch_once(&requireContiguousAggregation_onceToken, &__block_literal_global_44);
  }

  return requireContiguousAggregation_requireContiguousAggregation;
}

void __54__PLAggregationProcessor_requireContiguousAggregation__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  requireContiguousAggregation_requireContiguousAggregation = [v0 BOOLForKey:@"PLAggregationProcessorRequireContiguousAggregation"];
}

+ (unint64_t)maximumNumberOfAssetsPerAggregation
{
  if (maximumNumberOfAssetsPerAggregation_onceToken != -1)
  {
    dispatch_once(&maximumNumberOfAssetsPerAggregation_onceToken, &__block_literal_global_42);
  }

  return maximumNumberOfAssetsPerAggregation_maximumNumberOfAssetsPerAggregation;
}

void __61__PLAggregationProcessor_maximumNumberOfAssetsPerAggregation__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  maximumNumberOfAssetsPerAggregation_maximumNumberOfAssetsPerAggregation = [v0 integerForKey:@"PLAggregationProcessorMaximumNumberOfAssetsPerAggregation"];
}

+ (unint64_t)maximumNumberOfDaysPerAggregation
{
  if (maximumNumberOfDaysPerAggregation_onceToken != -1)
  {
    dispatch_once(&maximumNumberOfDaysPerAggregation_onceToken, &__block_literal_global_40_48245);
  }

  return maximumNumberOfDaysPerAggregation_maximumNumberOfDaysPerAggregation;
}

void __59__PLAggregationProcessor_maximumNumberOfDaysPerAggregation__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  maximumNumberOfDaysPerAggregation_maximumNumberOfDaysPerAggregation = [v0 integerForKey:@"PLAggregationProcessorMaximumNumberOfDaysPerAggregation"];
}

+ (unint64_t)maximumNumberOfAssetsPerShortMoment
{
  if (maximumNumberOfAssetsPerShortMoment_onceToken != -1)
  {
    dispatch_once(&maximumNumberOfAssetsPerShortMoment_onceToken, &__block_literal_global_38);
  }

  return maximumNumberOfAssetsPerShortMoment_maximumNumberOfAssetsPerShortMoment;
}

void __61__PLAggregationProcessor_maximumNumberOfAssetsPerShortMoment__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  maximumNumberOfAssetsPerShortMoment_maximumNumberOfAssetsPerShortMoment = [v0 integerForKey:@"PLAggregationProcessorMaximumNumberOfAssetsPerShortMoment"];
}

+ (unint64_t)maximumNumberOfAssetsPerMoment
{
  if (maximumNumberOfAssetsPerMoment_onceToken != -1)
  {
    dispatch_once(&maximumNumberOfAssetsPerMoment_onceToken, &__block_literal_global_48253);
  }

  return maximumNumberOfAssetsPerMoment_maximumNumberOfAssetsPerMoment;
}

void __56__PLAggregationProcessor_maximumNumberOfAssetsPerMoment__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  maximumNumberOfAssetsPerMoment_maximumNumberOfAssetsPerMoment = [v0 integerForKey:@"PLAggregationProcessorMaximumNumberOfAssetsPerMoment"];
}

+ (void)restoreDefaultEnablement
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 removeObjectForKey:@"PLAggregationProcessorEnabled"];
}

+ (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"PLAggregationProcessorEnabled"];
}

+ (BOOL)isEnabled
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"PLAggregationProcessorEnabled"];

  return v3;
}

+ (void)initialize
{
  v8[8] = *MEMORY[0x1E69E9840];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___PLAggregationProcessor;
  objc_msgSendSuper2(&v6, sel_initialize);
  v2 = _os_feature_enabled_impl();
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7[0] = @"PLAggregationProcessorEnabled";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v2 ^ 1u];
  v8[0] = v4;
  v8[1] = &unk_1F0FBC9A0;
  v7[1] = @"PLAggregationProcessorMaximumNumberOfAssetsPerMoment";
  v7[2] = @"PLAggregationProcessorMaximumNumberOfAssetsPerShortMoment";
  v8[2] = &unk_1F0FBC9B8;
  v8[3] = &unk_1F0FBC9D0;
  v7[3] = @"PLAggregationProcessorMaximumNumberOfDaysPerAggregation";
  v7[4] = @"PLAggregationProcessorMaximumNumberOfAssetsPerAggregation";
  v8[4] = &unk_1F0FBC9E8;
  v8[5] = MEMORY[0x1E695E118];
  v7[5] = @"PLAggregationProcessorRequireContiguousAggregation";
  v7[6] = @"PLAggregationProcessorRequireStartAtFirstDayOfWeek";
  v7[7] = @"PLAggregationProcessorNumberOfRecentDaysToIgnore";
  v8[6] = MEMORY[0x1E695E110];
  v8[7] = &unk_1F0FBCA00;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:8];
  [v3 registerDefaults:v5];
}

@end