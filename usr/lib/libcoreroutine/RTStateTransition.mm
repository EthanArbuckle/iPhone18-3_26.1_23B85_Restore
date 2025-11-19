@interface RTStateTransition
- (RTStateTransition)init;
- (RTStateTransition)initWithCoder:(id)a3;
- (id)getPredTrans:(double)a3 duration:(double)a4 numOfWeeks:(int)a5 uniqueID:(id)a6;
- (int64_t)count;
- (void)addStateTransitionOneTimeTransFromStateTransition:(id)a3;
- (void)cleanTransition:(double)a3;
- (void)encodeWithCoder:(id)a3;
- (void)showTransition;
- (void)submitTransition:(id)a3;
@end

@implementation RTStateTransition

- (RTStateTransition)init
{
  v5.receiver = self;
  v5.super_class = RTStateTransition;
  v2 = [(RTStateTransition *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(RTStateTransition *)v2 setListTransitions:v3];
  }

  return v2;
}

- (void)addStateTransitionOneTimeTransFromStateTransition:(id)a3
{
  v4 = a3;
  v5 = [(RTStateTransition *)self listTransitions];
  v6 = [v4 listTransitions];

  [v5 addObjectsFromArray:v6];
  v7 = [(RTStateTransition *)self listTransitions];
  [v7 sortUsingComparator:&__block_literal_global_211];

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = [(RTStateTransition *)self listTransitions];
    [v8 enumerateObjectsUsingBlock:&__block_literal_global_213];
  }
}

uint64_t __71__RTStateTransition_addStateTransitionOneTimeTransFromStateTransition___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 start_s];
  v6 = v5;
  [v4 start_s];
  v8 = v7;

  if (v6 >= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void __71__RTStateTransition_addStateTransitionOneTimeTransFromStateTransition___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = MEMORY[0x277CBEAA8];
      [v2 start_s];
      v5 = [v4 stringFromTimestamp:?];
      v6 = MEMORY[0x277CBEAA8];
      [v2 stop_s];
      v7 = [v6 stringFromTimestamp:?];
      [v2 stop_s];
      v9 = v8;
      [v2 start_s];
      v11 = (v9 - v10) / 60.0;
      v12 = [MEMORY[0x277D011B8] motionActivityTypeToString:{objc_msgSend(v2, "motionActivityType")}];
      v13 = 138413059;
      v14 = v5;
      v15 = 2112;
      v16 = v7;
      v17 = 2053;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "Redirecting transitions: Start, %@, Stop, %@, Commute time, %{sensitive}.2f [min], motionActivityType, %@", &v13, 0x2Au);
    }
  }
}

- (void)submitTransition:(id)a3
{
  v4 = a3;
  v5 = [(RTStateTransition *)self listTransitions];
  [v5 addObject:v4];
}

- (void)showTransition
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = [(RTStateTransition *)self listTransitions];
    v4 = [v3 count];

    if (v4)
    {
      v6 = [(RTStateTransition *)self listTransitions];
      [v6 enumerateObjectsUsingBlock:&__block_literal_global_215];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "No Transition Data ", buf, 2u);
      }
    }
  }
}

void __35__RTStateTransition_showTransition__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = a3 + 1;
      v7 = MEMORY[0x277CBEAA8];
      [v4 start_s];
      v8 = [v7 stringFromTimestamp:?];
      v9 = MEMORY[0x277CBEAA8];
      [v4 stop_s];
      v10 = [v9 stringFromTimestamp:?];
      [v4 stop_s];
      v12 = v11;
      [v4 start_s];
      v14 = (v12 - v13) / 60.0;
      v15 = [MEMORY[0x277D011B8] motionActivityTypeToString:{objc_msgSend(v4, "motionActivityType")}];
      v16 = 134219010;
      v17 = v6;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v10;
      v22 = 2048;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "transition %lu, start, %@, stop, %@, duration, %.2f [min], motionActivityType, %@", &v16, 0x34u);
    }
  }
}

- (void)cleanTransition:(double)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(RTStateTransition *)self listTransitions];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __37__RTStateTransition_cleanTransition___block_invoke;
  v11 = &unk_2788CF328;
  v13 = a3;
  v12 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:&v8];

  [(RTStateTransition *)self setListTransitions:v7, v8, v9, v10, v11];
}

void __37__RTStateTransition_cleanTransition___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 stop_s];
  if (v3 >= *(a1 + 40))
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (id)getPredTrans:(double)a3 duration:(double)a4 numOfWeeks:(int)a5 uniqueID:(id)a6
{
  v10 = a6;
  v214 = 0;
  v215 = &v214;
  v216 = 0x3032000000;
  v217 = __Block_byref_object_copy__129;
  v218 = __Block_byref_object_dispose__129;
  v219 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v208 = 0;
  v209 = &v208;
  v210 = 0x3032000000;
  v211 = __Block_byref_object_copy__129;
  v212 = __Block_byref_object_dispose__129;
  v213 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v202 = 0;
  v203 = &v202;
  v204 = 0x3032000000;
  v205 = __Block_byref_object_copy__129;
  v206 = __Block_byref_object_dispose__129;
  v207 = objc_opt_new();
  v196 = 0;
  v197 = &v196;
  v198 = 0x3032000000;
  v199 = __Block_byref_object_copy__129;
  v200 = __Block_byref_object_dispose__129;
  v201 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v190 = 0;
  v191 = &v190;
  v192 = 0x3032000000;
  v193 = __Block_byref_object_copy__129;
  v194 = __Block_byref_object_dispose__129;
  v101 = v10;
  v195 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v184 = 0;
  v185 = &v184;
  v186 = 0x3032000000;
  v187 = __Block_byref_object_copy__129;
  v188 = __Block_byref_object_dispose__129;
  v189 = objc_opt_new();
  v11 = objc_alloc_init(RTStateTransitionMotionActivityTypeHistogram);
  v12 = objc_alloc_init(RTStateTransitionMotionActivityTypeHistogram);
  v102 = objc_alloc_init(RTStateTransitionOneTransPred);
  v180 = 0;
  v181 = &v180;
  v182 = 0x2020000000;
  v183 = 0xC26D1A94A2000000;
  v176 = 0;
  v177 = &v176;
  v178 = 0x2020000000;
  v179 = 0x426D1A94A2000000;
  v172 = 0;
  v173 = &v172;
  v174 = 0x2020000000;
  v175 = 0xC26D1A94A2000000;
  v168 = 0;
  v169 = &v168;
  v170 = 0x2020000000;
  v171 = 0x426D1A94A2000000;
  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a3 + -7200.0];
  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a3 + a4];
  [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a3];
  v98 = v11;
  v162 = 0;
  v163 = &v162;
  v164 = 0x3032000000;
  v165 = __Block_byref_object_copy__129;
  v15 = v166 = __Block_byref_object_dispose__129;
  v97 = v12;
  v16 = self;
  v167 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v156 = 0;
  v157 = &v156;
  v158 = 0x3032000000;
  v159 = __Block_byref_object_copy__129;
  v160 = __Block_byref_object_dispose__129;
  v161 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a5 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = v163[5];
      v19 = [MEMORY[0x277CCABB0] numberWithInt:0];
      [v18 addObject:v19];

      v20 = 7;
      do
      {
        v21 = v157[5];
        v22 = [MEMORY[0x277CCABB0] numberWithInt:0];
        [v21 addObject:v22];

        --v20;
      }

      while (v20);
      ++v17;
    }

    while (v17 != a5);
  }

  [(RTStateTransition *)v16 listTransitions];
  v24 = v23 = v10;
  v25 = a5;
  v136[0] = MEMORY[0x277D85DD0];
  v136[1] = 3221225472;
  v136[2] = __63__RTStateTransition_getPredTrans_duration_numOfWeeks_uniqueID___block_invoke;
  v136[3] = &unk_2788CF350;
  v154 = a3 + -7200.0 + a5 * -604800.0;
  v155 = a3;
  v26 = v13;
  v137 = v26;
  v27 = v14;
  v138 = v27;
  v142 = &v196;
  v143 = &v190;
  v144 = &v180;
  v145 = &v176;
  v28 = v15;
  v139 = v28;
  v146 = &v184;
  v29 = v98;
  v140 = v29;
  v147 = &v162;
  v148 = &v214;
  v149 = &v208;
  v150 = &v172;
  v151 = &v168;
  v152 = &v202;
  v30 = v97;
  v141 = v30;
  v153 = &v156;
  [v24 enumerateObjectsUsingBlock:v136];

  if ([v197[5] count] && objc_msgSend(v191[5], "count"))
  {
    v132 = 0;
    v133 = &v132;
    v134 = 0x2020000000;
    v135 = 0;
    v128 = 0;
    v129 = &v128;
    v130 = 0x2020000000;
    v131 = 0;
    v31 = v197[5];
    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 3221225472;
    v127[2] = __63__RTStateTransition_getPredTrans_duration_numOfWeeks_uniqueID___block_invoke_220;
    v127[3] = &unk_2788CF378;
    v127[4] = &v132;
    v127[5] = &v128;
    [v31 enumerateObjectsUsingBlock:v127];
    v123 = 0;
    v124 = &v123;
    v125 = 0x2020000000;
    v126 = 0;
    v119 = 0;
    v120 = &v119;
    v121 = 0x2020000000;
    v122 = 0;
    v32 = v191[5];
    v118[0] = MEMORY[0x277D85DD0];
    v118[1] = 3221225472;
    v118[2] = __63__RTStateTransition_getPredTrans_duration_numOfWeeks_uniqueID___block_invoke_2;
    v118[3] = &unk_2788CF378;
    v118[4] = &v123;
    v118[5] = &v119;
    [v32 enumerateObjectsUsingBlock:v118];
    v114 = 0;
    v115 = &v114;
    v116 = 0x2020000000;
    LODWORD(v117) = 0;
    v110 = 0;
    v111 = &v110;
    v112 = 0x2020000000;
    v113 = 0;
    v33 = v163[5];
    v109[0] = MEMORY[0x277D85DD0];
    v109[1] = 3221225472;
    v109[2] = __63__RTStateTransition_getPredTrans_duration_numOfWeeks_uniqueID___block_invoke_3;
    v109[3] = &unk_2788CF378;
    v109[4] = &v114;
    v109[5] = &v110;
    [v33 enumerateObjectsUsingBlock:v109];
    v34 = [(RTStateTransitionOneTransPred *)v102 weekly];
    [v34 setYield:{objc_msgSend(v197[5], "count") / v25}];

    v35 = v133[3];
    v36 = v35 / [v197[5] count];
    if (v36 + -7200.0 >= 0.0)
    {
      v37 = v36 + -7200.0;
    }

    else
    {
      v37 = 0.0;
    }

    if ([v197[5] count] >= 3)
    {
      v38 = sqrt(v129[3] / [v197[5] count] - v36 * v36);
      if (v38 < 2700.0)
      {
        v39 = [(RTStateTransitionOneTransPred *)v102 weekly];
        [v39 setPredResidualStart_s:v37];

        v40 = [(RTStateTransitionOneTransPred *)v102 weekly];
        [v40 setResUncStart_s:v38];
      }
    }

    v41 = v124[3];
    v42 = v41 / [v191[5] count];
    if (v42 + -7200.0 >= 0.0)
    {
      v43 = v42 + -7200.0;
    }

    else
    {
      v43 = 0.0;
    }

    if ([v191[5] count] >= 3)
    {
      v44 = sqrt(v120[3] / [v191[5] count] - v42 * v42);
      if (v44 < 2700.0)
      {
        v45 = [(RTStateTransitionOneTransPred *)v102 weekly];
        [v45 setPredResidualStop_s:v43];

        v46 = [(RTStateTransitionOneTransPred *)v102 weekly];
        [v46 setResUncStop_s:v44];
      }
    }

    v47 = [(RTStateTransitionOneTransPred *)v102 weekly];
    [v47 setNumOfTrans:{objc_msgSend(v197[5], "count")}];

    v48 = [(RTStateTransitionOneTransPred *)v102 weekly];
    [v48 setEarliestTransTimeStart_s:v177[3]];

    v49 = [(RTStateTransitionOneTransPred *)v102 weekly];
    [v49 setLatestTransTimeStart_s:v181[3]];

    v50 = [(RTStateTransitionOneTransPred *)v102 weekly];
    [v50 setDensity:v115[6] / v111[6]];

    v51 = [(RTStateTransitionOneTransPred *)v102 weekly];
    [v51 setMotionActivityType:{-[RTStateTransitionMotionActivityTypeHistogram getDominantMotionActivityType](v29, "getDominantMotionActivityType")}];
    v99 = v30;
    v52 = v29;
    v53 = v28;
    v54 = v27;
    v55 = v26;

    v56 = [v185[5] valueForKeyPath:@"@max.self"];
    v57 = [RTStateModelAlgorithms bucketizeDates:v185[5] bucketInterval:v56 latestDate:7200.0];
    v58 = [v57 allValues];
    v59 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", @"numOfDates", &unk_28459F1C8];
    v60 = [v58 filteredArrayUsingPredicate:v59];

    v61 = [v60 valueForKeyPath:@"@min.averageDate"];
    v62 = [(RTStateTransitionOneTransPred *)v102 weekly];
    [v62 setPrimaryStopDate:v61];

    _Block_object_dispose(&v110, 8);
    _Block_object_dispose(&v114, 8);
    _Block_object_dispose(&v119, 8);
    _Block_object_dispose(&v123, 8);
    _Block_object_dispose(&v128, 8);
    _Block_object_dispose(&v132, 8);
    v26 = v55;
    v23 = v101;
    v27 = v54;
    v28 = v53;
    v29 = v52;
    v30 = v99;
  }

  if ([v215[5] count] && objc_msgSend(v209[5], "count"))
  {
    v132 = 0;
    v133 = &v132;
    v134 = 0x2020000000;
    v135 = 0;
    v128 = 0;
    v129 = &v128;
    v130 = 0x2020000000;
    v131 = 0;
    v63 = v215[5];
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __63__RTStateTransition_getPredTrans_duration_numOfWeeks_uniqueID___block_invoke_235;
    v108[3] = &unk_2788CF378;
    v108[4] = &v132;
    v108[5] = &v128;
    [v63 enumerateObjectsUsingBlock:v108];
    v123 = 0;
    v124 = &v123;
    v125 = 0x2020000000;
    v126 = 0;
    v119 = 0;
    v120 = &v119;
    v121 = 0x2020000000;
    v122 = 0;
    v64 = v209[5];
    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = __63__RTStateTransition_getPredTrans_duration_numOfWeeks_uniqueID___block_invoke_2_236;
    v107[3] = &unk_2788CF378;
    v107[4] = &v123;
    v107[5] = &v119;
    [v64 enumerateObjectsUsingBlock:v107];
    v114 = 0;
    v115 = &v114;
    v116 = 0x2020000000;
    v117 = 0;
    v110 = 0;
    v111 = &v110;
    v112 = 0x2020000000;
    v113 = 0;
    v106[0] = 0;
    v106[1] = v106;
    v106[2] = 0x2020000000;
    v106[3] = 1;
    v104[0] = 0;
    v104[1] = v104;
    v104[2] = 0x2020000000;
    v105 = 0;
    v65 = v157[5];
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __63__RTStateTransition_getPredTrans_duration_numOfWeeks_uniqueID___block_invoke_3_237;
    v103[3] = &unk_2788CA7A0;
    v103[4] = v104;
    v103[5] = v106;
    v103[6] = &v114;
    v103[7] = &v110;
    [v65 enumerateObjectsUsingBlock:v103];
    v66 = [(RTStateTransitionOneTransPred *)v102 daily];
    [v66 setYield:{objc_msgSend(v215[5], "count") / v25 * 7.0}];

    v67 = v133[3];
    v68 = v67 / [v215[5] count];
    if (v68 + -7200.0 >= 0.0)
    {
      v69 = v68 + -7200.0;
    }

    else
    {
      v69 = 0.0;
    }

    if ([v215[5] count] >= 3)
    {
      v70 = sqrt(v129[3] / [v215[5] count] - v68 * v68);
      if (v70 < 2700.0)
      {
        v71 = [(RTStateTransitionOneTransPred *)v102 daily];
        [v71 setPredResidualStart_s:v69];

        v72 = [(RTStateTransitionOneTransPred *)v102 daily];
        [v72 setResUncStart_s:v70];
      }
    }

    v73 = v124[3];
    v74 = v73 / [v209[5] count];
    if (v74 + -7200.0 >= 0.0)
    {
      v75 = v74 + -7200.0;
    }

    else
    {
      v75 = 0.0;
    }

    if ([v209[5] count] >= 3)
    {
      v76 = sqrt(v120[3] / [v209[5] count] - v74 * v74);
      if (v76 < 2700.0)
      {
        v77 = [(RTStateTransitionOneTransPred *)v102 daily];
        [v77 setPredResidualStop_s:v75];

        v78 = [(RTStateTransitionOneTransPred *)v102 daily];
        [v78 setResUncStop_s:v76];
      }
    }

    v79 = [(RTStateTransitionOneTransPred *)v102 daily];
    [v79 setNumOfTrans:{objc_msgSend(v215[5], "count")}];

    v80 = [(RTStateTransitionOneTransPred *)v102 daily];
    [v80 setEarliestTransTimeStart_s:v169[3]];

    v81 = [(RTStateTransitionOneTransPred *)v102 daily];
    [v81 setLatestTransTimeStart_s:v173[3]];

    v82 = [(RTStateTransitionOneTransPred *)v102 daily];
    [v82 setDensity:*(v115 + 3) / v111[6]];

    v83 = [(RTStateTransitionOneTransPred *)v102 daily];
    [v83 setMotionActivityType:{-[RTStateTransitionMotionActivityTypeHistogram getDominantMotionActivityType](v30, "getDominantMotionActivityType")}];
    v100 = v30;
    v84 = v29;
    v85 = v28;
    v86 = v27;
    v87 = v23;
    v88 = v26;

    v89 = [v203[5] valueForKeyPath:@"@max.self"];
    v90 = [RTStateModelAlgorithms bucketizeDates:v203[5] bucketInterval:v89 latestDate:7200.0];
    v91 = [v90 allValues];
    v92 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", @"numOfDates", &unk_28459F1C8];
    v93 = [v91 filteredArrayUsingPredicate:v92];

    v94 = [v93 valueForKeyPath:@"@min.averageDate"];
    v95 = [(RTStateTransitionOneTransPred *)v102 daily];
    [v95 setPrimaryStopDate:v94];

    _Block_object_dispose(v104, 8);
    _Block_object_dispose(v106, 8);
    _Block_object_dispose(&v110, 8);
    _Block_object_dispose(&v114, 8);
    _Block_object_dispose(&v119, 8);
    _Block_object_dispose(&v123, 8);
    _Block_object_dispose(&v128, 8);
    _Block_object_dispose(&v132, 8);
    v26 = v88;
    v23 = v87;
    v27 = v86;
    v28 = v85;
    v29 = v84;
    v30 = v100;
  }

  [(RTStateTransitionOneTransPred *)v102 setStateUUID:v23];

  _Block_object_dispose(&v156, 8);
  _Block_object_dispose(&v162, 8);

  _Block_object_dispose(&v168, 8);
  _Block_object_dispose(&v172, 8);
  _Block_object_dispose(&v176, 8);
  _Block_object_dispose(&v180, 8);

  _Block_object_dispose(&v184, 8);
  _Block_object_dispose(&v190, 8);

  _Block_object_dispose(&v196, 8);
  _Block_object_dispose(&v202, 8);

  _Block_object_dispose(&v208, 8);
  _Block_object_dispose(&v214, 8);

  return v102;
}

void __63__RTStateTransition_getPredTrans_duration_numOfWeeks_uniqueID___block_invoke(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 start_s];
  if (v4 > *(a1 + 168))
  {
    [v3 stop_s];
    if (v5 <= *(a1 + 176) + -7200.0)
    {
      [v3 start_s];
      v7 = v6 - *(a1 + 168);
      v8 = MEMORY[0x277CBEAA8];
      [v3 start_s];
      v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
      v10 = MEMORY[0x277CBEAA8];
      [v3 stop_s];
      v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
      v12 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v11];
      v13 = [RTStateModelAlgorithms adjustedDateInterval:v12 betweenMinDate:*(a1 + 32) maxDate:*(a1 + 40) strideDays:7];
      v14 = v13;
      v15 = 0x277CCA000uLL;
      if (v13)
      {
        v16 = *(*(*(a1 + 72) + 8) + 40);
        v17 = MEMORY[0x277CCABB0];
        v18 = [v13 startDate];
        [v18 timeIntervalSinceDate:*(a1 + 32)];
        v19 = [v17 numberWithDouble:?];
        [v16 addObject:v19];

        v20 = *(*(*(a1 + 80) + 8) + 40);
        v21 = MEMORY[0x277CCABB0];
        v22 = [v14 endDate];
        [v22 timeIntervalSinceDate:*(a1 + 32)];
        v23 = [v21 numberWithDouble:?];
        [v20 addObject:v23];

        v24 = *(*(*(a1 + 88) + 8) + 24);
        [v3 start_s];
        if (v24 < v25)
        {
          [v3 start_s];
          *(*(*(a1 + 88) + 8) + 24) = v26;
        }

        v27 = *(*(*(a1 + 96) + 8) + 24);
        [v3 start_s];
        if (v27 > v28)
        {
          [v3 start_s];
          *(*(*(a1 + 96) + 8) + 24) = v29;
        }

        v30 = [v14 endDate];
        v31 = [v30 isOnOrAfter:*(a1 + 48)];

        if (v31)
        {
          v32 = *(*(*(a1 + 104) + 8) + 40);
          v33 = [v14 endDate];
          [v32 addObject:v33];
        }

        [*(a1 + 56) addMotionActivityType:{objc_msgSend(v3, "motionActivityType")}];
        v34 = (v7 / 604800.0);
        if ([*(*(*(a1 + 112) + 8) + 40) count] <= v34)
        {
          v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v69 = "[RTStateTransition getPredTrans:duration:numOfWeeks:uniqueID:]_block_invoke";
            v70 = 1024;
            v71 = 587;
            _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "weekNum is out of bound - should not happen (in %s:%d)", buf, 0x12u);
          }
        }

        else
        {
          v35 = *(*(*(a1 + 112) + 8) + 40);
          v36 = MEMORY[0x277CCABB0];
          [v35 objectAtIndex:v34];
          v38 = v37 = v9;
          v39 = [v36 numberWithInteger:{objc_msgSend(v38, "integerValue") + 1}];
          [v35 setObject:v39 atIndexedSubscript:v34];

          v9 = v37;
          v15 = 0x277CCA000;
        }
      }

      v41 = [RTStateModelAlgorithms adjustedDateInterval:v12 betweenMinDate:*(a1 + 32) maxDate:*(a1 + 40) strideDays:1];
      v42 = v41;
      if (v41)
      {
        v67 = v9;
        v43 = *(*(*(a1 + 120) + 8) + 40);
        v44 = *(v15 + 2992);
        v45 = [v41 startDate];
        [v45 timeIntervalSinceDate:*(a1 + 32)];
        v46 = [v44 numberWithDouble:?];
        [v43 addObject:v46];

        v47 = *(*(*(a1 + 128) + 8) + 40);
        v48 = *(v15 + 2992);
        v49 = [v42 endDate];
        [v49 timeIntervalSinceDate:*(a1 + 32)];
        v50 = [v48 numberWithDouble:?];
        [v47 addObject:v50];

        v51 = *(*(*(a1 + 136) + 8) + 24);
        [v3 start_s];
        if (v51 < v52)
        {
          [v3 start_s];
          *(*(*(a1 + 136) + 8) + 24) = v53;
        }

        v54 = *(*(*(a1 + 144) + 8) + 24);
        [v3 start_s];
        if (v54 > v55)
        {
          [v3 start_s];
          *(*(*(a1 + 144) + 8) + 24) = v56;
        }

        v57 = v15;
        v58 = [v42 endDate];
        v59 = [v58 isOnOrAfter:*(a1 + 48)];

        if (v59)
        {
          v60 = *(*(*(a1 + 152) + 8) + 40);
          v61 = [v42 endDate];
          [v60 addObject:v61];
        }

        [*(a1 + 64) addMotionActivityType:{objc_msgSend(v3, "motionActivityType")}];
        v62 = (v7 / 86400.0);
        if ([*(*(*(a1 + 160) + 8) + 40) count] <= v62)
        {
          v65 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v69 = "[RTStateTransition getPredTrans:duration:numOfWeeks:uniqueID:]_block_invoke";
            v70 = 1024;
            v71 = 622;
            _os_log_error_impl(&dword_2304B3000, v65, OS_LOG_TYPE_ERROR, "dayNum is out of bound - should not happen (in %s:%d)", buf, 0x12u);
          }
        }

        else
        {
          v63 = *(*(*(a1 + 160) + 8) + 40);
          v64 = *(v57 + 2992);
          v65 = [v63 objectAtIndex:v62];
          v66 = [v64 numberWithInteger:{-[NSObject integerValue](v65, "integerValue") + 1}];
          [v63 setObject:v66 atIndexedSubscript:v62];
        }

        v9 = v67;
      }
    }
  }
}

double __63__RTStateTransition_getPredTrans_duration_numOfWeeks_uniqueID___block_invoke_220(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v4 + *(*(*(a1 + 32) + 8) + 24);
  [v3 doubleValue];
  v6 = v5;
  [v3 doubleValue];
  v8 = v7;

  v9 = *(*(a1 + 40) + 8);
  result = *(v9 + 24) + v6 * v8;
  *(v9 + 24) = result;
  return result;
}

double __63__RTStateTransition_getPredTrans_duration_numOfWeeks_uniqueID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v4 + *(*(*(a1 + 32) + 8) + 24);
  [v3 doubleValue];
  v6 = v5;
  [v3 doubleValue];
  v8 = v7;

  v9 = *(*(a1 + 40) + 8);
  result = *(v9 + 24) + v6 * v8;
  *(v9 + 24) = result;
  return result;
}

uint64_t __63__RTStateTransition_getPredTrans_duration_numOfWeeks_uniqueID___block_invoke_3(uint64_t a1, void *a2)
{
  result = [a2 integerValue];
  *(*(*(a1 + 32) + 8) + 24) += result;
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

double __63__RTStateTransition_getPredTrans_duration_numOfWeeks_uniqueID___block_invoke_235(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v4 + *(*(*(a1 + 32) + 8) + 24);
  [v3 doubleValue];
  v6 = v5;
  [v3 doubleValue];
  v8 = v7;

  v9 = *(*(a1 + 40) + 8);
  result = *(v9 + 24) + v6 * v8;
  *(v9 + 24) = result;
  return result;
}

double __63__RTStateTransition_getPredTrans_duration_numOfWeeks_uniqueID___block_invoke_2_236(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v4 + *(*(*(a1 + 32) + 8) + 24);
  [v3 doubleValue];
  v6 = v5;
  [v3 doubleValue];
  v8 = v7;

  v9 = *(*(a1 + 40) + 8);
  result = *(v9 + 24) + v6 * v8;
  *(v9 + 24) = result;
  return result;
}

uint64_t __63__RTStateTransition_getPredTrans_duration_numOfWeeks_uniqueID___block_invoke_3_237(void *a1, void *a2)
{
  result = [a2 integerValue];
  *(*(a1[4] + 8) + 24) += result;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 24);
  if ((0x6DB6DB6DB6DB6DB7 * v5 + 0x1249249249249249) <= 0x2492492492492492)
  {
    *(*(a1[6] + 8) + 24) = *(*(a1[4] + 8) + 24) / 7.0 + *(*(a1[6] + 8) + 24);
    *(*(a1[4] + 8) + 24) = 0;
    ++*(*(a1[7] + 8) + 24);
    v4 = *(a1[5] + 8);
    v5 = *(v4 + 24);
  }

  *(v4 + 24) = v5 + 1;
  return result;
}

- (int64_t)count
{
  v2 = [(RTStateTransition *)self listTransitions];
  v3 = [v2 count];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RTStateTransition *)self listTransitions];
  [v4 encodeObject:v5 forKey:@"listTransitions"];
}

- (RTStateTransition)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RTStateTransition;
  v5 = [(RTStateTransition *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"listTransitions"];
    [(RTStateTransition *)v5 setListTransitions:v9];
  }

  return v5;
}

@end