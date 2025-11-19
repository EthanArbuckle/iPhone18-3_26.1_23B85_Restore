@interface STUsageReport
- (NSDateInterval)maxPickupsDateInterval;
- (STUsageReport)init;
- (STUsageReport)initWithCoder:(id)a3;
- (STUsageReport)initWithReportType:(unint64_t)a3 startDate:(id)a4 lastUpdatedDate:(id)a5 firstPickup:(id)a6 usageItems:(id)a7;
- (STUsageReportGraphDataSet)pickupsDataSet;
- (STUsageReportGraphDataSet)screenTimeDataSet;
- (id)_countedDataSetForItemType:(unint64_t)a3 trustIdentifier:(id)a4 includeIndicatorImageName:(BOOL)a5;
- (id)_dataSetForItemType:(unint64_t)a3 trustIdentifier:(id)a4 includeIndicatorImageName:(BOOL)a5 useDarkColors:(BOOL)a6;
- (id)_timedDataSetForItemType:(unint64_t)a3 trustIdentifier:(id)a4;
- (id)_timedDataSetForItemType:(unint64_t)a3 useDarkColors:(BOOL)a4;
- (id)dataSetWithUsageItem:(id)a3;
- (id)description;
- (id)topUsageItemsWithMaxCount:(unint64_t)a3 type:(unint64_t)a4 includeAggregateItem:(BOOL)a5 nonAggregateItems:(id *)a6 darkColors:(BOOL)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STUsageReport

- (STUsageReport)initWithReportType:(unint64_t)a3 startDate:(id)a4 lastUpdatedDate:(id)a5 firstPickup:(id)a6 usageItems:(id)a7
{
  v421 = *MEMORY[0x277D85DE8];
  v315 = a4;
  v310 = a5;
  v322 = a5;
  v309 = a6;
  v312 = a6;
  v323 = a7;
  v402.receiver = self;
  v402.super_class = STUsageReport;
  v355 = [(STUsageReport *)&v402 init];
  if (!v355)
  {
    goto LABEL_184;
  }

  v11 = objc_opt_new();
  dataSetByUsageIdentifier = v355->_dataSetByUsageIdentifier;
  v355->_dataSetByUsageIdentifier = v11;

  v362 = [MEMORY[0x277CBEA80] currentCalendar];
  if (a3)
  {
    if (a3 != 1)
    {
      v351 = 0;
      v15 = 0;
      v343 = 0;
      v13 = 0;
      goto LABEL_8;
    }

    v13 = [v362 startOfDayForDate:v315];
    v343 = [v362 dateByAddingUnit:16 value:1 toDate:v13 options:0];
    v14 = [v362 components:32 fromDate:v13 toDate:v343 options:0];
    v15 = [v14 hour];
    v16 = 32;
  }

  else
  {
    v13 = [v362 startOfDayForDate:v315];
    v343 = [v362 dateByAddingUnit:0x2000 value:1 toDate:v13 options:0];
    v14 = [v362 components:16 fromDate:v13 toDate:v343 options:0];
    v15 = [v14 day];
    v16 = 16;
  }

  v351 = v16;

LABEL_8:
  v345 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v15];
  v17 = v13;
  v344 = v17;
  if (v15)
  {
    v18 = v17;
    do
    {
      v17 = [v362 dateByAddingUnit:v351 value:1 toDate:v18 options:0];
      v19 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v18 endDate:v17];
      [v345 addObject:v19];

      v18 = v17;
      --v15;
    }

    while (v15);
  }

  v308 = v17;
  v311 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v344 endDate:v343];
  v335 = objc_opt_new();
  v330 = objc_opt_new();
  v331 = objc_opt_new();
  v334 = objc_opt_new();
  v348 = objc_opt_new();
  v325 = objc_opt_new();
  v326 = objc_opt_new();
  v324 = objc_opt_new();
  if (a3)
  {
    v321 = objc_opt_new();
    v320 = objc_opt_new();
    v319 = objc_opt_new();
    v313 = objc_opt_new();
    v314 = objc_opt_new();
    v316 = 0;
    v317 = 0;
    v318 = v326;
    v326 = 0;
  }

  else
  {
    v313 = 0;
    v314 = 0;
    v318 = 0;
    v319 = 0;
    v320 = 0;
    v321 = 0;
    v316 = v324;
    v317 = v325;
    v324 = 0;
    v325 = 0;
  }

  v400 = 0u;
  v401 = 0u;
  v398 = 0u;
  v399 = 0u;
  obj = v323;
  v342 = [obj countByEnumeratingWithState:&v398 objects:v420 count:16];
  if (!v342)
  {
    v328 = 0;
    v329 = 0;
    goto LABEL_84;
  }

  v328 = 0;
  v329 = 0;
  v341 = *v399;
  while (2)
  {
    v20 = 0;
    do
    {
      if (*v399 != v341)
      {
        v21 = v20;
        objc_enumerationMutation(obj);
        v20 = v21;
      }

      v349 = v20;
      v22 = *(*(&v398 + 1) + 8 * v20);
      v23 = [v22 startDate];
      v360 = [v362 components:v351 | 0x221E fromDate:v23];

      v365 = [v362 dateFromComponents:v360];
      if ([v343 compare:v365] != 1)
      {

        goto LABEL_84;
      }

      v24 = [v22 itemType];
      if ((v24 - 1) > 5)
      {
        v25 = 0;
      }

      else
      {
        v25 = *(&off_279B7EAD0 + v24 - 1);
      }

      v356 = [v22 totalUsage];
      v363 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
      if ([v365 compare:v344] == -1)
      {
        switch(v24)
        {
          case 6:
            v358 = v326;
            v353 = v318;
            v333 = v320;
            v28 = v313;
            v83 = v22;
            v346 = v360;
            v29 = v83;
            v84 = [v83 totalUsage];
            [v84 doubleValue];
            v86 = v85;

            v339 = [MEMORY[0x277CBEA80] currentCalendar];
            v87 = [v29 startDate];
            v336 = [v339 startOfDayForDate:v87];

            v337 = [v339 components:8766 fromDate:v336];
            v88 = [v358 objectForKeyedSubscript:v337];
            v89 = MEMORY[0x277CCABB0];
            [v88 doubleValue];
            v37 = [v89 numberWithDouble:v86 + v90];

            [v358 setObject:v37 forKeyedSubscript:v337];
            v38 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v346, "weekday")}];
            v39 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v346, "hour")}];
            v43 = [v353 objectForKeyedSubscript:v38];
            if (!v43)
            {
              v43 = objc_opt_new();
              [v353 setObject:v43 forKeyedSubscript:v38];
            }

            v91 = [v43 objectForKeyedSubscript:v39];
            v92 = MEMORY[0x277CCABB0];
            [v91 doubleValue];
            v44 = [v92 numberWithDouble:v86 + v93];

            [v43 setObject:v44 forKeyedSubscript:v39];
            if ([v28 containsObject:v346])
            {
              goto LABEL_72;
            }

            [v28 addObject:v346];
            v46 = [v333 objectForKeyedSubscript:v38];
            if (!v46)
            {
              v46 = objc_opt_new();
              [v333 setObject:v46 forKeyedSubscript:v38];
            }

            break;
          case 5:
            v358 = v316;
            v353 = v324;
            v333 = v319;
            v28 = v314;
            v72 = v22;
            v346 = v360;
            v29 = v72;
            v73 = [v72 totalUsage];
            [v73 doubleValue];
            v75 = v74;

            v339 = [MEMORY[0x277CBEA80] currentCalendar];
            v76 = [v29 startDate];
            v336 = [v339 startOfDayForDate:v76];

            v337 = [v339 components:8766 fromDate:v336];
            v77 = [v358 objectForKeyedSubscript:v337];
            v78 = MEMORY[0x277CCABB0];
            [v77 doubleValue];
            v37 = [v78 numberWithDouble:v75 + v79];

            [v358 setObject:v37 forKeyedSubscript:v337];
            v38 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v346, "weekday")}];
            v39 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v346, "hour")}];
            v43 = [v353 objectForKeyedSubscript:v38];
            if (!v43)
            {
              v43 = objc_opt_new();
              [v353 setObject:v43 forKeyedSubscript:v38];
            }

            v80 = [v43 objectForKeyedSubscript:v39];
            v81 = MEMORY[0x277CCABB0];
            [v80 doubleValue];
            v44 = [v81 numberWithDouble:v75 + v82];

            [v43 setObject:v44 forKeyedSubscript:v39];
            if ([v28 containsObject:v346])
            {
              goto LABEL_72;
            }

            [v28 addObject:v346];
            v46 = [v333 objectForKeyedSubscript:v38];
            if (!v46)
            {
              v46 = objc_opt_new();
              [v333 setObject:v46 forKeyedSubscript:v38];
            }

            break;
          case 1:
            v358 = v317;
            v353 = v325;
            v333 = v321;
            v28 = v22;
            v29 = v360;
            v30 = [v28 totalUsage];
            [v30 doubleValue];
            v32 = v31;

            v346 = [MEMORY[0x277CBEA80] currentCalendar];
            v33 = [v28 startDate];
            v339 = [v346 startOfDayForDate:v33];

            v336 = [v346 components:8766 fromDate:v339];
            v34 = [v358 objectForKeyedSubscript:v336];
            v35 = MEMORY[0x277CCABB0];
            [v34 doubleValue];
            v337 = [v35 numberWithDouble:v32 + v36];

            [v358 setObject:v337 forKeyedSubscript:v336];
            v37 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v29, "weekday")}];
            v38 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v29, "hour")}];
            v39 = [v353 objectForKeyedSubscript:v37];
            if (!v39)
            {
              v39 = objc_opt_new();
              [v353 setObject:v39 forKeyedSubscript:v37];
            }

            v40 = [v39 objectForKeyedSubscript:v38];
            v41 = MEMORY[0x277CCABB0];
            [v40 doubleValue];
            v43 = [v41 numberWithDouble:v32 + v42];

            [v39 setObject:v43 forKeyedSubscript:v38];
            if ([0 containsObject:v29])
            {
              goto LABEL_73;
            }

            [0 addObject:v29];
            v44 = [v333 objectForKeyedSubscript:v37];
            if (!v44)
            {
              v44 = objc_opt_new();
              [v333 setObject:v44 forKeyedSubscript:v37];
            }

            v45 = [v44 objectForKeyedSubscript:v38];
            v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v45, "unsignedIntegerValue") + 1}];

            [v44 setObject:v46 forKeyedSubscript:v38];
            goto LABEL_71;
          default:
            goto LABEL_79;
        }

        v94 = [v46 objectForKeyedSubscript:v39];
        v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v94, "unsignedIntegerValue") + 1}];

        [v46 setObject:v95 forKeyedSubscript:v39];
LABEL_71:

LABEL_72:
LABEL_73:

        goto LABEL_78;
      }

      v26 = [v348 objectForKeyedSubscript:v363];
      v358 = (*(v25 + 16))(v25, v26, v356);

      [v348 setObject:v358 forKeyedSubscript:v363];
      if (v24 != 1)
      {
        v47 = [v335 objectForKeyedSubscript:v363];
        if (!v47)
        {
          v48 = objc_opt_new();
          [v335 setObject:v48 forKeyedSubscript:v363];
          v47 = v48;
        }

        v353 = v47;
        v49 = [v47 objectForKeyedSubscript:v365];
        if (!v49)
        {
          v50 = [v22 copy];
          v51 = [v22 identifier];
          v52 = [v51 componentsSeparatedByString:@"-"];
          v53 = [v52 firstObject];
          [v50 setIdentifier:v53];

          [v50 setTotalUsage:&unk_28769D670];
          [v50 setMaxUsage:&unk_28769D670];
          [v50 setMinUsage:&unk_28769D670];
          [v353 setObject:v50 forKeyedSubscript:v365];
          v49 = v50;
        }

        v340 = v49;
        v54 = [v49 totalUsage];
        v55 = [v22 totalUsage];
        v56 = (*(v25 + 16))(v25, v54, v55);
        [v340 setTotalUsage:v56];

        v347 = [v22 budgetItemIdentifier];
        if (v347)
        {
          v57 = [v331 objectForKeyedSubscript:v363];
          if (!v57)
          {
            v57 = objc_opt_new();
            [v331 setObject:v57 forKeyedSubscript:v363];
          }

          v338 = [objc_alloc(MEMORY[0x277D4BAD0]) initWithIdentifier:v347 usageTrusted:{objc_msgSend(v22, "usageTrusted")}];
          v58 = [v57 objectForKeyedSubscript:v338];
          if (!v58)
          {
            v58 = [v22 copy];
            [v58 setTotalUsage:&unk_28769D670];
            [v58 setMaxUsage:&unk_28769D670];
            [v58 setMinUsage:&unk_28769D670];
            [v57 setObject:v58 forKeyedSubscript:v338];
          }

          v59 = [v58 totalUsage];
          v60 = [v22 totalUsage];
          v61 = (*(v25 + 16))(v25, v59, v60);
          [v58 setTotalUsage:v61];

          v62 = [v330 objectForKeyedSubscript:v363];
          if (!v62)
          {
            v62 = objc_opt_new();
            [v330 setObject:v62 forKeyedSubscript:v363];
          }

          v63 = [v62 objectForKeyedSubscript:v338];
          if (!v63)
          {
            v63 = objc_opt_new();
            [v62 setObject:v63 forKeyedSubscript:v338];
          }

          v64 = [v63 objectForKeyedSubscript:v365];
          if (!v64)
          {
            v64 = [v22 copy];
            [v64 setTotalUsage:&unk_28769D670];
            [v64 setMaxUsage:&unk_28769D670];
            [v64 setMinUsage:&unk_28769D670];
            [v63 setObject:v64 forKeyedSubscript:v365];
          }

          v65 = [v64 totalUsage];
          v66 = [v22 totalUsage];
          v67 = (*(v25 + 16))(v25, v65, v66);
          [v64 setTotalUsage:v67];
        }

        if (v24 == 6)
        {
          if (v329)
          {
            v68 = [v365 compare:?];
            v71 = v328;
            v69 = v329;
            v70 = v365;
LABEL_57:
            if (v68 == -1)
            {
              goto LABEL_76;
            }

LABEL_77:

            goto LABEL_78;
          }

          v69 = 0;
          v71 = v328;
          v70 = v365;
        }

        else
        {
          if (v24 != 5)
          {
            goto LABEL_77;
          }

          if (v328)
          {
            v68 = [v365 compare:?];
            v69 = v328;
            v70 = v329;
            v71 = v365;
            goto LABEL_57;
          }

          v69 = 0;
          v71 = v365;
          v70 = v329;
        }

LABEL_76:
        v96 = v365;

        v328 = v71;
        v329 = v70;
        goto LABEL_77;
      }

      v27 = [v334 objectForKeyedSubscript:v365];
      v353 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v356, "unsignedIntegerValue") + objc_msgSend(v27, "unsignedIntegerValue")}];

      [v334 setObject:v353 forKeyedSubscript:v365];
LABEL_78:

LABEL_79:
      v20 = v349 + 1;
    }

    while (v342 != v349 + 1);
    v342 = [obj countByEnumeratingWithState:&v398 objects:v420 count:16];
    if (v342)
    {
      continue;
    }

    break;
  }

LABEL_84:

  v366 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"totalUsage" ascending:0];
  v364 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"identifier" ascending:1];
  v419[0] = v366;
  v419[1] = v364;
  v97 = [MEMORY[0x277CBEA60] arrayWithObjects:v419 count:2];
  v355->_type = a3;
  objc_storeStrong(&v355->_reportDateInterval, v311);
  objc_storeStrong(&v355->_lastUpdatedDate, v310);
  v98 = [v345 copy];
  dateIntervals = v355->_dateIntervals;
  v355->_dateIntervals = v98;

  v100 = [v348 objectForKeyedSubscript:&unk_28769D688];
  [v100 doubleValue];
  v355->_totalScreenTime = v101;

  v102 = [v334 copy];
  screenTimeByStartOfDateInterval = v355->_screenTimeByStartOfDateInterval;
  v355->_screenTimeByStartOfDateInterval = v102;

  v104 = [(NSDictionary *)v355->_screenTimeByStartOfDateInterval allValues];
  v105 = [v104 valueForKeyPath:@"@max.self"];
  [v105 doubleValue];
  v355->_maxScreenTime = v106;

  v107 = [v348 objectForKeyedSubscript:&unk_28769D6A0];
  v355->_totalPickups = [v107 unsignedIntegerValue];

  v108 = [v331 objectForKeyedSubscript:&unk_28769D6A0];
  v109 = [v108 copy];
  pickupsByTrustIdentifier = v355->_pickupsByTrustIdentifier;
  v355->_pickupsByTrustIdentifier = v109;

  v111 = [v335 objectForKeyedSubscript:&unk_28769D6A0];
  v112 = [v111 copy];
  pickupsByStartOfDateInterval = v355->_pickupsByStartOfDateInterval;
  v355->_pickupsByStartOfDateInterval = v112;

  v114 = [v330 objectForKeyedSubscript:&unk_28769D6A0];
  v115 = [v114 copy];
  pickupsByStartOfDateIntervalByTrustIdentifier = v355->_pickupsByStartOfDateIntervalByTrustIdentifier;
  v355->_pickupsByStartOfDateIntervalByTrustIdentifier = v115;

  v117 = [(NSDictionary *)v355->_pickupsByTrustIdentifier allValues];
  v118 = [v117 sortedArrayUsingDescriptors:v97];
  v119 = v118;
  v120 = MEMORY[0x277CBEBF8];
  if (v118)
  {
    v121 = v118;
  }

  else
  {
    v121 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong(&v355->_pickups, v121);

  v394 = 0;
  v395 = &v394;
  v396 = 0x2020000000;
  v397 = 0x7FFFFFFFFFFFFFFFLL;
  v390 = 0;
  v391 = &v390;
  v392 = 0x2020000000;
  v393 = 0x7FFFFFFFFFFFFFFFLL;
  v386 = 0;
  v387 = &v386;
  v388 = 0x2020000000;
  v389 = 0;
  v382 = 0;
  v383 = &v382;
  v384 = 0x2020000000;
  v385 = 0;
  v122 = v355->_pickupsByStartOfDateInterval;
  v123 = v355->_dateIntervals;
  v374[0] = MEMORY[0x277D85DD0];
  v374[1] = 3221225472;
  v374[2] = __85__STUsageReport_initWithReportType_startDate_lastUpdatedDate_firstPickup_usageItems___block_invoke_28;
  v374[3] = &unk_279B7E9C0;
  v352 = v329;
  v375 = v352;
  v378 = &v394;
  v124 = v322;
  v376 = v124;
  v379 = &v390;
  v354 = v122;
  v377 = v354;
  v380 = &v386;
  v381 = &v382;
  [(NSArray *)v123 enumerateObjectsUsingBlock:v374];
  v125 = v355;
  v126 = [(NSArray *)v355->_dateIntervals count];
  v127 = v391;
  if (v391[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v391[3] = v126 - 1;
  }

  v128 = v395[3];
  if (v128 >= v126)
  {
    v128 = v126;
  }

  v395[3] = v128;
  if (v355->_type == 1)
  {
    if (v312)
    {
      [v124 timeIntervalSinceDate:?];
      activePickupDateIntervals = v129 / 3600.0;
    }

    else
    {
      v136 = v127[3];
      v137 = [(NSArray *)v355->_dateIntervals count];
      if (v136 + 1 < v137)
      {
        v138 = v136 + 1;
      }

      else
      {
        v138 = v137;
      }

      activePickupDateIntervals = (v138 - v395[3]);
    }

    v355->_activePickupDateIntervals = activePickupDateIntervals;
  }

  else
  {
    v131 = v127[3] + 1;
    v355->_activePickupDateIntervals = v131;
    v132 = objc_opt_new();
    v133 = v132;
    v134 = 0x7FFFFFFFFFFFFFFFLL;
    if (v131 < 0x7FFFFFFFFFFFFFFFLL)
    {
      v134 = v131;
    }

    [v132 setDay:-v134];
    v135 = [v362 dateByAddingComponents:v133 toDate:v124 options:0];
    [v124 timeIntervalSinceDate:v135];

    v125 = v355;
    activePickupDateIntervals = v355->_activePickupDateIntervals;
  }

  v139 = 0.0;
  if (activePickupDateIntervals > 0.0)
  {
    v139 = v125->_totalPickups / activePickupDateIntervals;
  }

  v125->_pickupRate = v139;
  v125->_maxPickupDateIntervalIndex = v383[3];
  objc_storeStrong(&v125->_firstPickup, v309);
  v355->_maxPickups = v387[3];
  pickups = v355->_pickups;
  v141 = [MEMORY[0x277CCACA8] stringWithFormat:@"@max.%@", @"totalUsage"];
  v361 = [(NSArray *)pickups valueForKeyPath:v141];

  [(NSArray *)v355->_pickups setValue:v361 forKeyPath:@"maxUsage"];
  v142 = [v348 objectForKeyedSubscript:&unk_28769D6B8];
  v355->_totalNotifications = [v142 unsignedIntegerValue];

  v143 = [v331 objectForKeyedSubscript:&unk_28769D6B8];
  v144 = [v143 copy];
  v145 = v144;
  v146 = MEMORY[0x277CBEC10];
  if (v144)
  {
    v147 = v144;
  }

  else
  {
    v147 = MEMORY[0x277CBEC10];
  }

  objc_storeStrong(&v355->_notificationsByTrustIdentifier, v147);

  v148 = [v335 objectForKeyedSubscript:&unk_28769D6B8];
  v149 = [v148 copy];
  v150 = v149;
  if (v149)
  {
    v151 = v149;
  }

  else
  {
    v151 = v146;
  }

  objc_storeStrong(&v355->_notificationsByStartOfDateInterval, v151);

  v152 = [v330 objectForKeyedSubscript:&unk_28769D6B8];
  v153 = [v152 copy];
  v154 = v153;
  if (v153)
  {
    v155 = v153;
  }

  else
  {
    v155 = v146;
  }

  objc_storeStrong(&v355->_notificationsByStartOfDateIntervalByTrustIdentifier, v155);

  v156 = [(NSDictionary *)v355->_notificationsByTrustIdentifier allValues];
  v157 = [v156 sortedArrayUsingDescriptors:v97];
  v158 = v157;
  if (v157)
  {
    v159 = v157;
  }

  else
  {
    v159 = v120;
  }

  objc_storeStrong(&v355->_notifications, v159);

  v370 = 0;
  v371 = &v370;
  v372 = 0x2020000000;
  v373 = 0x7FFFFFFFFFFFFFFFLL;
  v160 = v355->_dateIntervals;
  v367[0] = MEMORY[0x277D85DD0];
  v367[1] = 3221225472;
  v367[2] = __85__STUsageReport_initWithReportType_startDate_lastUpdatedDate_firstPickup_usageItems___block_invoke_40;
  v367[3] = &unk_279B7E9E8;
  v350 = v328;
  v368 = v350;
  v369 = &v370;
  [(NSArray *)v160 enumerateObjectsUsingBlock:v367];
  v161 = v371[3];
  v162 = [(NSArray *)v355->_dateIntervals count];
  if (v161 >= v162)
  {
    v163 = v162;
  }

  else
  {
    v163 = v161;
  }

  v371[3] = v163;
  v164 = [v345 count];
  if (v355->_type == 1)
  {
    v165 = v391[3];
    v166 = [(NSArray *)v355->_dateIntervals count];
    if (v165 + 1 < v166)
    {
      v167 = v165 + 1;
    }

    else
    {
      v167 = v166;
    }

    v164 = v167 - v371[3];
  }

  if (v164)
  {
    v168 = v355->_totalNotifications / v164;
  }

  else
  {
    v168 = 0.0;
  }

  v355->_notificationRate = v168;
  notifications = v355->_notifications;
  v170 = [MEMORY[0x277CCACA8] stringWithFormat:@"@max.%@", @"totalUsage"];
  v359 = [(NSArray *)notifications valueForKeyPath:v170];

  [(NSArray *)v355->_notifications setValue:v359 forKeyPath:@"maxUsage"];
  v171 = [v348 objectForKeyedSubscript:&unk_28769D6D0];
  [v171 doubleValue];
  v355->_totalAppUsage = v172;

  v173 = [v331 objectForKeyedSubscript:&unk_28769D6D0];
  v174 = [v173 copy];
  v175 = v174;
  if (v174)
  {
    v176 = v174;
  }

  else
  {
    v176 = v146;
  }

  objc_storeStrong(&v355->_applicationUsageByTrustIdentifier, v176);

  v177 = [v335 objectForKeyedSubscript:&unk_28769D6D0];
  v178 = [v177 copy];
  v179 = v178;
  if (v178)
  {
    v180 = v178;
  }

  else
  {
    v180 = v146;
  }

  objc_storeStrong(&v355->_appUsageByStartOfDateInterval, v180);

  v181 = [v330 objectForKeyedSubscript:&unk_28769D6D0];
  v182 = [v181 copy];
  v183 = v182;
  if (v182)
  {
    v184 = v182;
  }

  else
  {
    v184 = v146;
  }

  objc_storeStrong(&v355->_applicationUsageByStartOfDateIntervalByTrustIdentifier, v184);

  v185 = [(NSDictionary *)v355->_applicationUsageByTrustIdentifier allValues];
  v186 = [v185 sortedArrayUsingDescriptors:v97];
  appUsages = v355->_appUsages;
  v355->_appUsages = v186;

  v188 = [v348 objectForKeyedSubscript:&unk_28769D6E8];
  [v188 doubleValue];
  v355->_totalWebUsage = v189;

  v190 = [v331 objectForKeyedSubscript:&unk_28769D6E8];
  v191 = [v190 copy];
  v192 = v191;
  if (v191)
  {
    v193 = v191;
  }

  else
  {
    v193 = v146;
  }

  objc_storeStrong(&v355->_webUsageByTrustIdentifier, v193);

  v194 = [v335 objectForKeyedSubscript:&unk_28769D6E8];
  v195 = [v194 copy];
  v196 = v195;
  if (v195)
  {
    v197 = v195;
  }

  else
  {
    v197 = v146;
  }

  objc_storeStrong(&v355->_webUsageByStartOfDateInterval, v197);

  v198 = [v330 objectForKeyedSubscript:&unk_28769D6E8];
  v199 = [v198 copy];
  v200 = v199;
  if (v199)
  {
    v201 = v199;
  }

  else
  {
    v201 = v146;
  }

  objc_storeStrong(&v355->_webUsageByStartOfDateIntervalByTrustIdentifier, v201);

  v202 = [(NSDictionary *)v355->_webUsageByTrustIdentifier allValues];
  v203 = [v202 sortedArrayUsingDescriptors:v97];
  webUsages = v355->_webUsages;
  v355->_webUsages = v203;

  v205 = objc_opt_new();
  v206 = [(NSDictionary *)v355->_applicationUsageByTrustIdentifier allValues];
  [v205 addObjectsFromArray:v206];

  v207 = [(NSDictionary *)v355->_webUsageByTrustIdentifier allValues];
  [v205 addObjectsFromArray:v207];

  v208 = [v205 sortedArrayUsingDescriptors:v97];
  v209 = v208;
  if (v208)
  {
    v210 = v208;
  }

  else
  {
    v210 = v120;
  }

  objc_storeStrong(&v355->_appAndWebUsages, v210);

  appAndWebUsages = v355->_appAndWebUsages;
  v212 = [MEMORY[0x277CCACA8] stringWithFormat:@"@max.%@", @"totalUsage"];
  v357 = [(NSArray *)appAndWebUsages valueForKeyPath:v212];

  [(NSArray *)v355->_appAndWebUsages setValue:v357 forKeyPath:@"maxUsage"];
  v213 = [v348 objectForKeyedSubscript:&unk_28769D700];
  [v213 doubleValue];
  v355->_totalCategoryUsage = v214;

  v215 = [v331 objectForKeyedSubscript:&unk_28769D700];
  v216 = [v215 copy];
  v217 = v216;
  if (v216)
  {
    v218 = v216;
  }

  else
  {
    v218 = v146;
  }

  objc_storeStrong(&v355->_categoryUsageByTrustIdentifier, v218);

  v219 = [v335 objectForKeyedSubscript:&unk_28769D700];
  v220 = [v219 copy];
  v221 = v220;
  if (v220)
  {
    v222 = v220;
  }

  else
  {
    v222 = v146;
  }

  objc_storeStrong(&v355->_categoryUsageByStartOfDateInterval, v222);

  v223 = [v330 objectForKeyedSubscript:&unk_28769D700];
  v224 = [v223 copy];
  v225 = v224;
  if (v224)
  {
    v226 = v224;
  }

  else
  {
    v226 = v146;
  }

  objc_storeStrong(&v355->_categoryUsageByStartOfDateIntervalByTrustIdentifier, v226);

  v227 = [(NSDictionary *)v355->_categoryUsageByTrustIdentifier allValues];
  v228 = [v227 sortedArrayUsingDescriptors:v97];
  v229 = v228;
  if (v228)
  {
    v230 = v228;
  }

  else
  {
    v230 = v120;
  }

  objc_storeStrong(&v355->_categoryUsages, v230);

  categoryUsages = v355->_categoryUsages;
  v232 = [MEMORY[0x277CCACA8] stringWithFormat:@"@max.%@", @"totalUsage"];
  v233 = [(NSArray *)categoryUsages valueForKeyPath:v232];

  [(NSArray *)v355->_categoryUsages setValue:v233 forKeyPath:@"maxUsage"];
  if (a3)
  {
    if (a3 == 1)
    {
      v234 = [v362 components:544 fromDate:v344];
      v235 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v234, "weekday")}];
      v236 = [v362 rangeOfUnit:32 inUnit:16 forDate:v344];
      v237 = objc_alloc(MEMORY[0x277CCAA78]);
      v238 = [v237 initWithIndexesInRange:{v236, v391[3] + 1}];
      totalScreenTime = v355->_totalScreenTime;
      v240 = [v325 objectForKeyedSubscript:v235];
      v241 = [v321 objectForKeyedSubscript:v235];
      v242 = v240;
      v243 = v241;
      v244 = v238;
      v415 = 0;
      v416 = &v415;
      v417 = 0x2020000000;
      v418 = 0;
      v403 = 0;
      v404 = &v403;
      v405 = 0x2020000000;
      v406 = 0;
      v407 = MEMORY[0x277D85DD0];
      v408 = 3221225472;
      v409 = __dailyUsageDeltaFromHistoricalAverageForWeekday_block_invoke;
      v410 = &unk_279B7EA88;
      v413 = &v415;
      v245 = v242;
      v411 = v245;
      v414 = &v403;
      v246 = v243;
      v412 = v246;
      [v244 enumerateIndexesUsingBlock:&v407];
      v247 = v404[3];
      if (v247)
      {
        v248 = totalScreenTime - v416[3] / v247;
      }

      else
      {
        v248 = 0.0;
      }

      _Block_object_dispose(&v403, 8);
      _Block_object_dispose(&v415, 8);

      v355->_screenTimeDeltaFromHistoricalAverage = v248;
      totalPickups = v355->_totalPickups;
      v288 = [v318 objectForKeyedSubscript:v235];
      v289 = [v320 objectForKeyedSubscript:v235];
      v290 = v288;
      v291 = v289;
      v292 = v244;
      v415 = 0;
      v416 = &v415;
      v417 = 0x2020000000;
      v418 = 0;
      v403 = 0;
      v404 = &v403;
      v405 = 0x2020000000;
      v406 = 0;
      v407 = MEMORY[0x277D85DD0];
      v408 = 3221225472;
      v409 = __dailyUsageDeltaFromHistoricalAverageForWeekday_block_invoke;
      v410 = &unk_279B7EA88;
      v413 = &v415;
      v293 = v290;
      v411 = v293;
      v414 = &v403;
      v294 = v291;
      v412 = v294;
      [v292 enumerateIndexesUsingBlock:&v407];
      v295 = v404[3];
      if (v295)
      {
        v296 = totalPickups - v416[3] / v295;
      }

      else
      {
        v296 = 0.0;
      }

      _Block_object_dispose(&v403, 8);
      _Block_object_dispose(&v415, 8);

      v355->_pickupDeltaFromHistoricalAverage = v296;
      totalNotifications = v355->_totalNotifications;
      v298 = [v324 objectForKeyedSubscript:v235];
      v299 = [v319 objectForKeyedSubscript:v235];
      v300 = v298;
      v301 = v299;
      v302 = v292;
      v415 = 0;
      v416 = &v415;
      v417 = 0x2020000000;
      v418 = 0;
      v403 = 0;
      v404 = &v403;
      v405 = 0x2020000000;
      v406 = 0;
      v407 = MEMORY[0x277D85DD0];
      v408 = 3221225472;
      v409 = __dailyUsageDeltaFromHistoricalAverageForWeekday_block_invoke;
      v410 = &unk_279B7EA88;
      v413 = &v415;
      v303 = v300;
      v411 = v303;
      v414 = &v403;
      v304 = v301;
      v412 = v304;
      [v302 enumerateIndexesUsingBlock:&v407];
      v305 = v404[3];
      if (v305)
      {
        v306 = totalNotifications - v416[3] / v305;
      }

      else
      {
        v306 = 0.0;
      }

      _Block_object_dispose(&v403, 8);
      _Block_object_dispose(&v415, 8);

      v355->_notificationDeltaFromHistoricalAverage = v306;
      goto LABEL_182;
    }
  }

  else
  {
    v249 = [v311 startDate];
    v250 = [v362 startOfDayForDate:v249];

    v251 = objc_alloc(MEMORY[0x277CCAA78]);
    v252 = [v251 initWithIndexesInRange:{0, v391[3] + 1}];
    v253 = v355->_totalScreenTime;
    v254 = v317;
    v255 = v250;
    v256 = v252;
    v257 = [MEMORY[0x277CBEA80] currentCalendar];
    v258 = [v257 dateByAddingUnit:0x2000 value:-1 toDate:v255 options:0];
    v415 = 0;
    v416 = &v415;
    v417 = 0x2020000000;
    v418 = 0;
    v407 = MEMORY[0x277D85DD0];
    v408 = 3221225472;
    v409 = __weeklyUsageDeltaFromHistoricalAverage_block_invoke;
    v410 = &unk_279B7EAB0;
    v259 = v257;
    v411 = v259;
    v260 = v258;
    v412 = v260;
    v414 = &v415;
    v261 = v254;
    v413 = v261;
    [v256 enumerateIndexesUsingBlock:&v407];
    v262 = [v256 count];
    v263 = 0.0;
    if (v262)
    {
      v264 = v416[3] / v262;
      if (v264 > 0.0)
      {
        v263 = (v253 / v262 - v264) / v264;
      }
    }

    _Block_object_dispose(&v415, 8);
    v355->_screenTimeDeltaFromHistoricalAverage = v263;
    v265 = v355->_totalPickups;
    v266 = v326;
    v267 = v255;
    v268 = v256;
    v269 = [MEMORY[0x277CBEA80] currentCalendar];
    v270 = [v269 dateByAddingUnit:0x2000 value:-1 toDate:v267 options:0];
    v415 = 0;
    v416 = &v415;
    v417 = 0x2020000000;
    v418 = 0;
    v407 = MEMORY[0x277D85DD0];
    v408 = 3221225472;
    v409 = __weeklyUsageDeltaFromHistoricalAverage_block_invoke;
    v410 = &unk_279B7EAB0;
    v271 = v269;
    v411 = v271;
    v272 = v270;
    v412 = v272;
    v414 = &v415;
    v273 = v266;
    v413 = v273;
    [v268 enumerateIndexesUsingBlock:&v407];
    v274 = [v268 count];
    v275 = 0.0;
    if (v274)
    {
      v276 = v416[3] / v274;
      if (v276 > 0.0)
      {
        v275 = (v265 / v274 - v276) / v276;
      }
    }

    _Block_object_dispose(&v415, 8);
    v355->_pickupDeltaFromHistoricalAverage = v275;
    v277 = v355->_totalNotifications;
    v278 = v316;
    v234 = v267;
    v235 = v268;
    v279 = [MEMORY[0x277CBEA80] currentCalendar];
    v280 = [v279 dateByAddingUnit:0x2000 value:-1 toDate:v234 options:0];
    v415 = 0;
    v416 = &v415;
    v417 = 0x2020000000;
    v418 = 0;
    v407 = MEMORY[0x277D85DD0];
    v408 = 3221225472;
    v409 = __weeklyUsageDeltaFromHistoricalAverage_block_invoke;
    v410 = &unk_279B7EAB0;
    v281 = v279;
    v411 = v281;
    v282 = v280;
    v412 = v282;
    v414 = &v415;
    v283 = v278;
    v413 = v283;
    [v235 enumerateIndexesUsingBlock:&v407];
    v284 = [v235 count];
    v285 = 0.0;
    if (v284)
    {
      v286 = v416[3] / v284;
      if (v286 > 0.0)
      {
        v285 = (v277 / v284 - v286) / v286;
      }
    }

    _Block_object_dispose(&v415, 8);
    v355->_notificationDeltaFromHistoricalAverage = v285;
LABEL_182:
  }

  _Block_object_dispose(&v370, 8);
  _Block_object_dispose(&v382, 8);
  _Block_object_dispose(&v386, 8);
  _Block_object_dispose(&v390, 8);
  _Block_object_dispose(&v394, 8);

LABEL_184:
  return v355;
}

uint64_t __85__STUsageReport_initWithReportType_startDate_lastUpdatedDate_firstPickup_usageItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  v9 = v8;

  return [v4 numberWithDouble:v7 + v9];
}

uint64_t __85__STUsageReport_initWithReportType_startDate_lastUpdatedDate_firstPickup_usageItems___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [a2 unsignedIntegerValue];
  v7 = [v5 unsignedIntegerValue];

  return [v4 numberWithUnsignedInteger:v7 + v6];
}

void __85__STUsageReport_initWithReportType_startDate_lastUpdatedDate_firstPickup_usageItems___block_invoke_28(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1[4];
  v22 = v5;
  if (v6)
  {
    v7 = [v5 startDate];
    if ([v6 compare:v7] == -1)
    {

      v5 = v22;
    }

    else
    {
      v8 = a1[4];
      v9 = [v22 endDate];
      v10 = [v8 compare:v9];

      v5 = v22;
      if (v10 == -1)
      {
        *(*(a1[7] + 8) + 24) = a3;
      }
    }
  }

  v11 = a1[5];
  v12 = [v5 startDate];
  if ([v11 compare:v12] == -1)
  {
  }

  else
  {
    v13 = a1[5];
    v14 = [v22 endDate];
    v15 = [v13 compare:v14];

    if (v15 == -1)
    {
      *(*(a1[8] + 8) + 24) = a3;
    }
  }

  v16 = a1[6];
  v17 = [v22 startDate];
  v18 = [v16 objectForKeyedSubscript:v17];
  v19 = [v18 totalUsage];
  v20 = [v19 unsignedIntegerValue];

  v21 = *(a1[9] + 8);
  if (v20 > *(v21 + 24))
  {
    *(v21 + 24) = v20;
    *(*(a1[10] + 8) + 24) = a3;
  }
}

void __85__STUsageReport_initWithReportType_startDate_lastUpdatedDate_firstPickup_usageItems___block_invoke_40(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    v11 = v5;
    v7 = [v5 startDate];
    if ([v6 compare:v7] == -1)
    {

      v5 = v11;
    }

    else
    {
      v8 = *(a1 + 32);
      v9 = [v11 endDate];
      v10 = [v8 compare:v9];

      v5 = v11;
      if (v10 == -1)
      {
        *(*(*(a1 + 40) + 8) + 24) = a3;
      }
    }
  }
}

- (STUsageReport)init
{
  v3.receiver = self;
  v3.super_class = STUsageReport;
  return [(STUsageReport *)&v3 init];
}

- (STUsageReport)initWithCoder:(id)a3
{
  v4 = a3;
  v167.receiver = self;
  v167.super_class = STUsageReport;
  v5 = [(STUsageReport *)&v167 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_type"];
    v5->_type = [v8 unsignedIntegerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_reportDateInterval"];
    reportDateInterval = v5->_reportDateInterval;
    v5->_reportDateInterval = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v11;

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"_dateIntervals"];
    dateIntervals = v5->_dateIntervals;
    v5->_dateIntervals = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_totalScreenTime"];
    [v18 doubleValue];
    v5->_totalScreenTime = v19;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_maxScreenTime"];
    [v20 doubleValue];
    v5->_maxScreenTime = v21;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v22 setWithObjects:{v23, v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"_screenTimeByStartOfDateInterval"];
    screenTimeByStartOfDateInterval = v5->_screenTimeByStartOfDateInterval;
    v5->_screenTimeByStartOfDateInterval = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_screenTimeDeltaFromHistoricalAverage"];
    [v28 doubleValue];
    v5->_screenTimeDeltaFromHistoricalAverage = v29;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_totalPickups"];
    v5->_totalPickups = [v30 unsignedIntegerValue];

    v31 = MEMORY[0x277CBEB98];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = [v31 setWithObjects:{v32, v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"_pickupsByTrustIdentifier"];
    pickupsByTrustIdentifier = v5->_pickupsByTrustIdentifier;
    v5->_pickupsByTrustIdentifier = v35;

    v37 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = [v37 setWithObjects:{v38, v39, objc_opt_class(), 0}];
    v41 = [v4 decodeObjectOfClasses:v40 forKey:@"_pickupsByStartOfDateInterval"];
    pickupsByStartOfDateInterval = v5->_pickupsByStartOfDateInterval;
    v5->_pickupsByStartOfDateInterval = v41;

    v43 = MEMORY[0x277CBEB98];
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = [v43 setWithObjects:{v44, v45, v46, objc_opt_class(), 0}];
    v48 = [v4 decodeObjectOfClasses:v47 forKey:@"_pickupsByStartOfDateIntervalByTrustIdentifier"];
    pickupsByStartOfDateIntervalByTrustIdentifier = v5->_pickupsByStartOfDateIntervalByTrustIdentifier;
    v5->_pickupsByStartOfDateIntervalByTrustIdentifier = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_pickupRate"];
    [v50 doubleValue];
    v5->_pickupRate = v51;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_activePickupDateIntervals"];
    [v52 doubleValue];
    v5->_activePickupDateIntervals = v53;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_maxPickups"];
    v5->_maxPickups = [v54 unsignedIntegerValue];

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_maxPickupDateIntervalIndex"];
    v5->_maxPickupDateIntervalIndex = [v55 unsignedIntegerValue];

    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_pickupDeltaFromHistoricalAverage"];
    [v56 doubleValue];
    v5->_pickupDeltaFromHistoricalAverage = v57;

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_totalNotifications"];
    v5->_totalNotifications = [v58 unsignedIntegerValue];

    v59 = MEMORY[0x277CBEB98];
    v60 = objc_opt_class();
    v61 = objc_opt_class();
    v62 = [v59 setWithObjects:{v60, v61, objc_opt_class(), 0}];
    v63 = [v4 decodeObjectOfClasses:v62 forKey:@"_notificationsByTrustIdentifier"];
    notificationsByTrustIdentifier = v5->_notificationsByTrustIdentifier;
    v5->_notificationsByTrustIdentifier = v63;

    v65 = MEMORY[0x277CBEB98];
    v66 = objc_opt_class();
    v67 = objc_opt_class();
    v68 = [v65 setWithObjects:{v66, v67, objc_opt_class(), 0}];
    v69 = [v4 decodeObjectOfClasses:v68 forKey:@"_notificationsByStartOfDateInterval"];
    notificationsByStartOfDateInterval = v5->_notificationsByStartOfDateInterval;
    v5->_notificationsByStartOfDateInterval = v69;

    v71 = MEMORY[0x277CBEB98];
    v72 = objc_opt_class();
    v73 = objc_opt_class();
    v74 = objc_opt_class();
    v75 = [v71 setWithObjects:{v72, v73, v74, objc_opt_class(), 0}];
    v76 = [v4 decodeObjectOfClasses:v75 forKey:@"_notificationsByStartOfDateIntervalByTrustIdentifier"];
    notificationsByStartOfDateIntervalByTrustIdentifier = v5->_notificationsByStartOfDateIntervalByTrustIdentifier;
    v5->_notificationsByStartOfDateIntervalByTrustIdentifier = v76;

    v78 = MEMORY[0x277CBEB98];
    v79 = objc_opt_class();
    v80 = [v78 setWithObjects:{v79, objc_opt_class(), 0}];
    v81 = [v4 decodeObjectOfClasses:v80 forKey:@"_notifications"];
    notifications = v5->_notifications;
    v5->_notifications = v81;

    v83 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_notificationRate"];
    [v83 doubleValue];
    v5->_notificationRate = v84;

    v85 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_notificationDeltaFromHistoricalAverage"];
    [v85 doubleValue];
    v5->_notificationDeltaFromHistoricalAverage = v86;

    v87 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_totalAppUsage"];
    [v87 doubleValue];
    v5->_totalAppUsage = v88;

    v89 = MEMORY[0x277CBEB98];
    v90 = objc_opt_class();
    v91 = objc_opt_class();
    v92 = [v89 setWithObjects:{v90, v91, objc_opt_class(), 0}];
    v93 = [v4 decodeObjectOfClasses:v92 forKey:@"_applicationUsageByTrustIdentifier"];
    applicationUsageByTrustIdentifier = v5->_applicationUsageByTrustIdentifier;
    v5->_applicationUsageByTrustIdentifier = v93;

    v95 = MEMORY[0x277CBEB98];
    v96 = objc_opt_class();
    v97 = objc_opt_class();
    v98 = [v95 setWithObjects:{v96, v97, objc_opt_class(), 0}];
    v99 = [v4 decodeObjectOfClasses:v98 forKey:@"_appUsageByStartOfDateInterval"];
    appUsageByStartOfDateInterval = v5->_appUsageByStartOfDateInterval;
    v5->_appUsageByStartOfDateInterval = v99;

    v101 = MEMORY[0x277CBEB98];
    v102 = objc_opt_class();
    v103 = objc_opt_class();
    v104 = objc_opt_class();
    v105 = [v101 setWithObjects:{v102, v103, v104, objc_opt_class(), 0}];
    v106 = [v4 decodeObjectOfClasses:v105 forKey:@"_applicationUsageByStartOfDateIntervalByTrustIdentifier"];
    applicationUsageByStartOfDateIntervalByTrustIdentifier = v5->_applicationUsageByStartOfDateIntervalByTrustIdentifier;
    v5->_applicationUsageByStartOfDateIntervalByTrustIdentifier = v106;

    v108 = MEMORY[0x277CBEB98];
    v109 = objc_opt_class();
    v110 = [v108 setWithObjects:{v109, objc_opt_class(), 0}];
    v111 = [v4 decodeObjectOfClasses:v110 forKey:@"_appUsages"];
    appUsages = v5->_appUsages;
    v5->_appUsages = v111;

    v113 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_totalWebUsage"];
    [v113 doubleValue];
    v5->_totalWebUsage = v114;

    v115 = MEMORY[0x277CBEB98];
    v116 = objc_opt_class();
    v117 = objc_opt_class();
    v118 = [v115 setWithObjects:{v116, v117, objc_opt_class(), 0}];
    v119 = [v4 decodeObjectOfClasses:v118 forKey:@"_webUsageByTrustIdentifier"];
    webUsageByTrustIdentifier = v5->_webUsageByTrustIdentifier;
    v5->_webUsageByTrustIdentifier = v119;

    v121 = MEMORY[0x277CBEB98];
    v122 = objc_opt_class();
    v123 = objc_opt_class();
    v124 = [v121 setWithObjects:{v122, v123, objc_opt_class(), 0}];
    v125 = [v4 decodeObjectOfClasses:v124 forKey:@"_webUsageByStartOfDateInterval"];
    webUsageByStartOfDateInterval = v5->_webUsageByStartOfDateInterval;
    v5->_webUsageByStartOfDateInterval = v125;

    v127 = MEMORY[0x277CBEB98];
    v128 = objc_opt_class();
    v129 = objc_opt_class();
    v130 = objc_opt_class();
    v131 = [v127 setWithObjects:{v128, v129, v130, objc_opt_class(), 0}];
    v132 = [v4 decodeObjectOfClasses:v131 forKey:@"_webUsageByStartOfDateIntervalByTrustIdentifier"];
    webUsageByStartOfDateIntervalByTrustIdentifier = v5->_webUsageByStartOfDateIntervalByTrustIdentifier;
    v5->_webUsageByStartOfDateIntervalByTrustIdentifier = v132;

    v134 = MEMORY[0x277CBEB98];
    v135 = objc_opt_class();
    v136 = [v134 setWithObjects:{v135, objc_opt_class(), 0}];
    v137 = [v4 decodeObjectOfClasses:v136 forKey:@"_appAndWebUsages"];
    appAndWebUsages = v5->_appAndWebUsages;
    v5->_appAndWebUsages = v137;

    v139 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_totalCategoryUsage"];
    [v139 doubleValue];
    v5->_totalCategoryUsage = v140;

    v141 = MEMORY[0x277CBEB98];
    v142 = objc_opt_class();
    v143 = objc_opt_class();
    v144 = [v141 setWithObjects:{v142, v143, objc_opt_class(), 0}];
    v145 = [v4 decodeObjectOfClasses:v144 forKey:@"_categoryUsageByTrustIdentifier"];
    categoryUsageByTrustIdentifier = v5->_categoryUsageByTrustIdentifier;
    v5->_categoryUsageByTrustIdentifier = v145;

    v147 = MEMORY[0x277CBEB98];
    v148 = objc_opt_class();
    v149 = objc_opt_class();
    v150 = objc_opt_class();
    v151 = [v147 setWithObjects:{v148, v149, v150, objc_opt_class(), 0}];
    v152 = [v4 decodeObjectOfClasses:v151 forKey:@"_categoryUsageByStartOfDateInterval"];
    categoryUsageByStartOfDateInterval = v5->_categoryUsageByStartOfDateInterval;
    v5->_categoryUsageByStartOfDateInterval = v152;

    v154 = MEMORY[0x277CBEB98];
    v155 = objc_opt_class();
    v156 = objc_opt_class();
    v157 = objc_opt_class();
    v158 = [v154 setWithObjects:{v155, v156, v157, objc_opt_class(), 0}];
    v159 = [v4 decodeObjectOfClasses:v158 forKey:@"_categoryUsageByStartOfDateIntervalByTrustIdentifier"];
    categoryUsageByStartOfDateIntervalByTrustIdentifier = v5->_categoryUsageByStartOfDateIntervalByTrustIdentifier;
    v5->_categoryUsageByStartOfDateIntervalByTrustIdentifier = v159;

    v161 = MEMORY[0x277CBEB98];
    v162 = objc_opt_class();
    v163 = [v161 setWithObjects:{v162, objc_opt_class(), 0}];
    v164 = [v4 decodeObjectOfClasses:v163 forKey:@"_categoryUsages"];
    categoryUsages = v5->_categoryUsages;
    v5->_categoryUsages = v164;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  displayName = self->_displayName;
  v21 = a3;
  [v21 encodeObject:displayName forKey:@"_displayName"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_type];
  [v21 encodeObject:v5 forKey:@"_type"];

  [v21 encodeObject:self->_reportDateInterval forKey:@"_reportDateInterval"];
  [v21 encodeObject:self->_lastUpdatedDate forKey:@"_lastUpdatedDate"];
  [v21 encodeObject:self->_dateIntervals forKey:@"_dateIntervals"];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalScreenTime];
  [v21 encodeObject:v6 forKey:@"_totalScreenTime"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maxScreenTime];
  [v21 encodeObject:v7 forKey:@"_maxScreenTime"];

  [v21 encodeObject:self->_screenTimeByStartOfDateInterval forKey:@"_screenTimeByStartOfDateInterval"];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_screenTimeDeltaFromHistoricalAverage];
  [v21 encodeObject:v8 forKey:@"_screenTimeDeltaFromHistoricalAverage"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_totalPickups];
  [v21 encodeObject:v9 forKey:@"_totalPickups"];

  [v21 encodeObject:self->_pickupsByTrustIdentifier forKey:@"_pickupsByTrustIdentifier"];
  [v21 encodeObject:self->_pickupsByStartOfDateInterval forKey:@"_pickupsByStartOfDateInterval"];
  [v21 encodeObject:self->_pickupsByStartOfDateIntervalByTrustIdentifier forKey:@"_pickupsByStartOfDateIntervalByTrustIdentifier"];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_pickupRate];
  [v21 encodeObject:v10 forKey:@"_pickupRate"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_activePickupDateIntervals];
  [v21 encodeObject:v11 forKey:@"_activePickupDateIntervals"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxPickups];
  [v21 encodeObject:v12 forKey:@"_maxPickups"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxPickupDateIntervalIndex];
  [v21 encodeObject:v13 forKey:@"_maxPickupDateIntervalIndex"];

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_pickupDeltaFromHistoricalAverage];
  [v21 encodeObject:v14 forKey:@"_pickupDeltaFromHistoricalAverage"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_totalNotifications];
  [v21 encodeObject:v15 forKey:@"_totalNotifications"];

  [v21 encodeObject:self->_notificationsByTrustIdentifier forKey:@"_notificationsByTrustIdentifier"];
  [v21 encodeObject:self->_notificationsByStartOfDateInterval forKey:@"_notificationsByStartOfDateInterval"];
  [v21 encodeObject:self->_notificationsByStartOfDateIntervalByTrustIdentifier forKey:@"_notificationsByStartOfDateIntervalByTrustIdentifier"];
  [v21 encodeObject:self->_notifications forKey:@"_notifications"];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_notificationRate];
  [v21 encodeObject:v16 forKey:@"_notificationRate"];

  v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_notificationDeltaFromHistoricalAverage];
  [v21 encodeObject:v17 forKey:@"_notificationDeltaFromHistoricalAverage"];

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalAppUsage];
  [v21 encodeObject:v18 forKey:@"_totalAppUsage"];

  [v21 encodeObject:self->_applicationUsageByTrustIdentifier forKey:@"_applicationUsageByTrustIdentifier"];
  [v21 encodeObject:self->_appUsageByStartOfDateInterval forKey:@"_appUsageByStartOfDateInterval"];
  [v21 encodeObject:self->_applicationUsageByStartOfDateIntervalByTrustIdentifier forKey:@"_applicationUsageByStartOfDateIntervalByTrustIdentifier"];
  [v21 encodeObject:self->_appUsages forKey:@"_appUsages"];
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalWebUsage];
  [v21 encodeObject:v19 forKey:@"_totalWebUsage"];

  [v21 encodeObject:self->_webUsageByTrustIdentifier forKey:@"_webUsageByTrustIdentifier"];
  [v21 encodeObject:self->_webUsageByStartOfDateInterval forKey:@"_webUsageByStartOfDateInterval"];
  [v21 encodeObject:self->_webUsageByStartOfDateIntervalByTrustIdentifier forKey:@"_webUsageByStartOfDateIntervalByTrustIdentifier"];
  [v21 encodeObject:self->_appAndWebUsages forKey:@"_appAndWebUsages"];
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalCategoryUsage];
  [v21 encodeObject:v20 forKey:@"_totalCategoryUsage"];

  [v21 encodeObject:self->_categoryUsageByTrustIdentifier forKey:@"_categoryUsageByTrustIdentifier"];
  [v21 encodeObject:self->_categoryUsageByStartOfDateInterval forKey:@"_categoryUsageByStartOfDateInterval"];
  [v21 encodeObject:self->_categoryUsageByStartOfDateIntervalByTrustIdentifier forKey:@"_categoryUsageByStartOfDateIntervalByTrustIdentifier"];
  [v21 encodeObject:self->_categoryUsages forKey:@"_categoryUsages"];
}

- (id)description
{
  v6[9] = *MEMORY[0x277D85DE8];
  v6[0] = @"displayName";
  v6[1] = @"type";
  v6[2] = @"reportDateInterval";
  v6[3] = @"lastUpdatedDate";
  v6[4] = @"screenTimeDeltaFromHistoricalAverage";
  v6[5] = @"totalNotifications";
  v6[6] = @"totalPickups";
  v6[7] = @"maxPickups";
  v6[8] = @"maxPickupsDateInterval";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:9];
  v4 = STUIObjectDescriptionWithProperties(self, v3);

  return v4;
}

- (NSDateInterval)maxPickupsDateInterval
{
  maxPickupsDateInterval = self->_maxPickupsDateInterval;
  if (!maxPickupsDateInterval)
  {
    v4 = [(STUsageReport *)self maxPickupDateIntervalIndex];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
      goto LABEL_6;
    }

    v6 = v4;
    v7 = [(STUsageReport *)self dateIntervals];
    v8 = [v7 objectAtIndexedSubscript:v6];
    v9 = self->_maxPickupsDateInterval;
    self->_maxPickupsDateInterval = v8;

    maxPickupsDateInterval = self->_maxPickupsDateInterval;
  }

  v5 = maxPickupsDateInterval;
LABEL_6:

  return v5;
}

- (id)topUsageItemsWithMaxCount:(unint64_t)a3 type:(unint64_t)a4 includeAggregateItem:(BOOL)a5 nonAggregateItems:(id *)a6 darkColors:(BOOL)a7
{
  if (!a3)
  {
    v14 = MEMORY[0x277CBEBF8];
    goto LABEL_46;
  }

  v9 = a5;
  v13 = 0;
  v14 = MEMORY[0x277CBEBF8];
  if (a4 <= 3)
  {
    switch(a4)
    {
      case 1uLL:
        goto LABEL_46;
      case 2uLL:
        v15 = [(STUsageReport *)self appUsages];
        break;
      case 3uLL:
        v15 = [(STUsageReport *)self categoryUsages];
        break;
      default:
        goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a4 - 5 < 2)
  {
    goto LABEL_46;
  }

  if (a4 == 4)
  {
    v15 = [(STUsageReport *)self webUsages];
LABEL_12:
    v13 = v15;
  }

LABEL_13:
  v16 = [v13 count];
  v18 = v16 >= a3 || v16 == 0;
  v19 = v9 && v18;
  if (v16 >= a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = v16;
  }

  if (v16)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v22 = v20 - v21;
  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
  v23 = [v13 subarrayWithRange:{0, v22}];
  [v14 addObjectsFromArray:v23];

  v24 = +[STUsageColors orderedUsageColors];
  v25 = [v24 count];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __98__STUsageReport_topUsageItemsWithMaxCount_type_includeAggregateItem_nonAggregateItems_darkColors___block_invoke;
  v37[3] = &unk_279B7EA10;
  v26 = v24;
  v38 = v26;
  v39 = v25;
  [v14 enumerateObjectsUsingBlock:v37];
  if (a6)
  {
    *a6 = [v14 copy];
  }

  if (!v19)
  {
    goto LABEL_45;
  }

  v27 = objc_opt_new();
  if (a7)
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGray4Color];
  }
  v28 = ;
  [v27 setColor:v28];

  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"@sum.%@", @"totalUsage"];
  v30 = [v14 valueForKeyPath:v29];

  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v31 = MEMORY[0x277CCABB0];
      [(STUsageReport *)self totalCategoryUsage];
      goto LABEL_43;
    }

    if (a4 == 4)
    {
      v31 = MEMORY[0x277CCABB0];
      [(STUsageReport *)self totalWebUsage];
      goto LABEL_43;
    }
  }

  else
  {
    if (a4 == 1)
    {
      v31 = MEMORY[0x277CCABB0];
      [(STUsageReport *)self totalScreenTime];
      goto LABEL_43;
    }

    if (a4 == 2)
    {
      v31 = MEMORY[0x277CCABB0];
      [(STUsageReport *)self totalAppUsage];
LABEL_43:
      v33 = v32;
      [v30 doubleValue];
      v35 = [v31 numberWithDouble:v33 - v34];
      [v27 setTotalUsage:v35];
    }
  }

  [v14 addObject:v27];

LABEL_45:
LABEL_46:

  return v14;
}

void __98__STUsageReport_topUsageItemsWithMaxCount_type_includeAggregateItem_nonAggregateItems_darkColors___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = a3 % *(a1 + 40);
  v5 = a2;
  v6 = [v3 objectAtIndexedSubscript:v4];
  [v5 setColor:v6];
}

- (STUsageReportGraphDataSet)screenTimeDataSet
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = [(STUsageReport *)self type];
  [(STUsageReport *)self maxScreenTime];
  v5 = v4;
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  [v6 maximumRangeOfUnit:128];
  v8 = v7;
  [v6 maximumRangeOfUnit:64];
  v10 = v8 * v9;
  v11 = v10 * 2uLL;
  if (!v3 || (v12 = 0.0, v3 == 1) && (v12 = v10, v10 < v5))
  {
    v13 = v11 * ceil(v5 / v11);
    if (v13 >= v11)
    {
      v12 = v13;
    }

    else
    {
      v12 = v11;
    }
  }

  v14 = 2 * (v3 == 0);
  if (v3 == 1)
  {
    v14 = 1;
  }

  v48 = v14;
  v49 = [(STUsageReport *)self screenTimeByStartOfDateInterval];
  v46 = self;
  v15 = [(STUsageReport *)self dateIntervals];
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v15;
  v17 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = MEMORY[0x277CBEBF8];
    v20 = *v52;
    p_info = (&OBJC_METACLASS___STEyeReliefViewModel + 32);
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v52 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v51 + 1) + 8 * i);
        v50 = [v23 startDate];
        v24 = [v49 objectForKeyedSubscript:?];
        [v24 doubleValue];
        v26 = v25;
        v27 = v19;
        if (v25 > 0.0)
        {
          v28 = [STUsageReportGraphSegment alloc];
          v29 = [MEMORY[0x277D75348] systemTealColor];
          v30 = v18;
          v31 = v20;
          v32 = v16;
          v33 = v19;
          v34 = [(STUsageReportGraphSegment *)v28 initWithAmount:v24 amountAsPercentageOfDataPointTotal:v29 color:1.0];

          v55 = v34;
          v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];

          v19 = v33;
          v16 = v32;
          v20 = v31;
          v18 = v30;
          p_info = &OBJC_METACLASS___STEyeReliefViewModel.info;
        }

        v35 = [objc_alloc((p_info + 121)) initWithTimePeriod:v48 itemType:1 dateInterval:v23 total:v24 totalAsPercentageOfMax:v27 segments:0.0];
        [v35 setTotalAsPercentageOfMax:v26 / v12];
        [v16 addObject:v35];
      }

      v18 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v18);
  }

  [(STUsageReport *)v46 totalScreenTime];
  v37 = v36;
  [(STUsageReport *)v46 activePickupDateIntervals];
  if (v38 <= 0.0)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = v37 / v38;
  }

  v40 = [STUsageReportGraphDataSet alloc];
  v41 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
  v42 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v43 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
  v44 = [(STUsageReportGraphDataSet *)v40 initWithTimePeriod:v48 itemType:1 total:v41 max:v42 average:v43 averageAsPercentageOfMax:v16 dataPoints:v39 / v12];

  return v44;
}

- (STUsageReportGraphDataSet)pickupsDataSet
{
  v3 = [(STUsageReport *)self type]== 1;

  return [(STUsageReport *)self _dataSetForItemType:6 trustIdentifier:0 includeIndicatorImageName:v3 useDarkColors:0];
}

- (id)dataSetWithUsageItem:(id)a3
{
  v4 = a3;
  v5 = [v4 itemType];
  v6 = [v4 trustIdentifier];

  v7 = [(STUsageReport *)self _dataSetForItemType:v5 trustIdentifier:v6 includeIndicatorImageName:0 useDarkColors:0];

  return v7;
}

- (id)_dataSetForItemType:(unint64_t)a3 trustIdentifier:(id)a4 includeIndicatorImageName:(BOOL)a5 useDarkColors:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = a4;
  if (a3 == 1)
  {
    [STUsageReport _dataSetForItemType:a2 trustIdentifier:self includeIndicatorImageName:? useDarkColors:?];
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu-%@", a3, v11];
  v13 = [(STUsageReport *)self dataSetByUsageIdentifier];
  v14 = [v13 objectForKey:v12];

  if (v14)
  {
    v15 = v14;
    goto LABEL_17;
  }

  if (a3 - 2 < 3)
  {
    if (v11)
    {
      [(STUsageReport *)self _timedDataSetForItemType:a3 trustIdentifier:v11];
    }

    else
    {
      [(STUsageReport *)self _timedDataSetForItemType:a3 useDarkColors:v6];
    }
    v16 = ;
    goto LABEL_14;
  }

  if (a3 - 5 < 2)
  {
    v16 = [(STUsageReport *)self _countedDataSetForItemType:a3 trustIdentifier:v11 includeIndicatorImageName:v7];
LABEL_14:
    v15 = v16;
    if (!v16)
    {
      goto LABEL_17;
    }

    v17 = [(STUsageReport *)self dataSetByUsageIdentifier];
    [v17 setObject:v15 forKey:v12];
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"STUsageReport.m" lineNumber:815 description:{@"Cannot generate data set for %ld", 1}];
    v15 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (id)_countedDataSetForItemType:(unint64_t)a3 trustIdentifier:(id)a4 includeIndicatorImageName:(BOOL)a5
{
  v5 = a5;
  v84 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (a3 - 1 < 4)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"STUsageReport.m" lineNumber:877 description:{@"Cannot generate counted data set for %ld", a3}];

LABEL_3:
    v69 = 0;
    v70 = 0;
    v11 = 0;
    v67 = 0;
    v12 = 0;
    goto LABEL_4;
  }

  if (a3 == 6)
  {
    v70 = [MEMORY[0x277D75348] systemTealColor];
    if (v9)
    {
      v55 = [(STUsageReport *)self pickupsByTrustIdentifier];
      v56 = [v55 objectForKeyedSubscript:v9];
      v57 = [v56 totalUsage];
      v12 = [v57 unsignedIntegerValue];
    }

    else
    {
      v12 = [(STUsageReport *)self totalPickups];
    }

    v58 = @"PickupArrowSmall";
    if (!v5)
    {
      v58 = 0;
    }

    v67 = v58;
    v11 = [MEMORY[0x277D75348] systemGrayColor];
    if (v9)
    {
      v59 = [(STUsageReport *)self pickupsByStartOfDateIntervalByTrustIdentifier];
      v69 = [v59 objectForKeyedSubscript:v9];
    }

    else
    {
      v69 = [(STUsageReport *)self pickupsByStartOfDateInterval];
    }
  }

  else
  {
    if (a3 != 5)
    {
      goto LABEL_3;
    }

    v70 = [MEMORY[0x277D75348] systemRedColor];
    if (v9)
    {
      v15 = [(STUsageReport *)self notificationsByTrustIdentifier];
      v16 = [v15 objectForKeyedSubscript:v9];
      v17 = [v16 totalUsage];
      v12 = [v17 unsignedIntegerValue];

      v18 = [(STUsageReport *)self notificationsByStartOfDateIntervalByTrustIdentifier];
      v69 = [v18 objectForKeyedSubscript:v9];
    }

    else
    {
      v12 = [(STUsageReport *)self totalNotifications];
      v69 = [(STUsageReport *)self notificationsByStartOfDateInterval];
    }

    v11 = 0;
    v67 = 0;
  }

LABEL_4:
  v13 = [(STUsageReport *)self type];
  if (v13)
  {
    if (v13 != 1)
    {
      v65 = 0;
      v68 = 0;
      v64 = 1;
      goto LABEL_14;
    }

    v64 = 0;
    v65 = 1;
    v14 = 1;
  }

  else
  {
    v65 = 0;
    v64 = 1;
    v14 = 2;
  }

  v68 = v14;
LABEL_14:
  v19 = [(STUsageReport *)self dateIntervals];
  v72 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v19, "count")}];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v77 objects:v83 count:16];
  v71 = a3;
  obj = v20;
  if (!v21)
  {
    v39 = 10;
    goto LABEL_47;
  }

  v22 = v21;
  v60 = v11;
  v61 = v12;
  v62 = self;
  v63 = v9;
  v23 = 0;
  v24 = *v78;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v78 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v77 + 1) + 8 * i);
      v27 = [v26 startDate];
      v28 = [v69 objectForKeyedSubscript:v27];
      v29 = [v28 totalUsage];
      v30 = [v29 unsignedIntegerValue];

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
      if (v23 <= v30)
      {
        v23 = v30;
      }

      v32 = [[STUsageReportGraphSegment alloc] initWithAmount:v31 amountAsPercentageOfDataPointTotal:v70 color:1.0];
      v33 = [STUsageReportGraphDataPoint alloc];
      v82 = v32;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
      v35 = [(STUsageReportGraphDataPoint *)v33 initWithTimePeriod:v68 itemType:v71 dateInterval:v26 total:v31 totalAsPercentageOfMax:v34 segments:0.0];

      [v72 addObject:v35];
    }

    v22 = [obj countByEnumeratingWithState:&v77 objects:v83 count:16];
  }

  while (v22);

  if (!v23)
  {
    v39 = 10;
    self = v62;
    v9 = v63;
    v11 = v60;
    v12 = v61;
    goto LABEL_48;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v20 = v72;
  v36 = [v20 countByEnumeratingWithState:&v73 objects:v81 count:16];
  self = v62;
  v11 = v60;
  if (!v36)
  {
    v39 = 10 * (v23 / 0xA) + 10;
    goto LABEL_46;
  }

  v37 = v36;
  v38 = *v74;
  v39 = 10 * (v23 / 0xA) + 10;
  do
  {
    for (j = 0; j != v37; ++j)
    {
      if (*v74 != v38)
      {
        objc_enumerationMutation(v20);
      }

      v41 = *(*(&v73 + 1) + 8 * j);
      v42 = [v41 total];
      v43 = [v42 unsignedIntegerValue];

      [v41 setTotalAsPercentageOfMax:v43 / v39];
      if (!v67)
      {
        goto LABEL_39;
      }

      if (v43)
      {
        v44 = v65;
      }

      else
      {
        v44 = 0;
      }

      if (v43 == v39)
      {
        v45 = v64;
      }

      else
      {
        v45 = 0;
      }

      if ((v44 & 1) != 0 || v45)
      {
        [v41 setIndicatorImageName:v67];

        [v41 setIndicatorImageColor:v11];
        v11 = 0;
LABEL_39:
        v67 = 0;
        continue;
      }
    }

    v37 = [v20 countByEnumeratingWithState:&v73 objects:v81 count:16];
  }

  while (v37);
LABEL_46:
  v9 = v63;
  v12 = v61;
LABEL_47:

LABEL_48:
  [(STUsageReport *)self activePickupDateIntervals];
  v47 = 0.0;
  v48 = 0.0;
  if (v46 > 0.0)
  {
    v48 = v12 / v46;
  }

  if (v39)
  {
    v47 = v48 / v39;
  }

  v49 = [STUsageReportGraphDataSet alloc];
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v39];
  v52 = [MEMORY[0x277CCABB0] numberWithDouble:v48];
  v53 = [(STUsageReportGraphDataSet *)v49 initWithTimePeriod:v68 itemType:v71 total:v50 max:v51 average:v52 averageAsPercentageOfMax:v72 dataPoints:v47];

  return v53;
}

- (id)_timedDataSetForItemType:(unint64_t)a3 useDarkColors:(BOOL)a4
{
  v69 = a4;
  v4 = self;
  v73 = 0;
  v112[2] = *MEMORY[0x277D85DE8];
  if (a3 > 6)
  {
    v77 = 0;
  }

  else
  {
    if (((1 << a3) & 0x62) != 0)
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      v4 = self;
      [v14 handleFailureInMethod:a2 object:self file:@"STUsageReport.m" lineNumber:958 description:{@"Cannot generate timed data set for %ld", a3}];

      v73 = 0;
      v77 = 0;
      goto LABEL_33;
    }

    if (((1 << a3) & 0x14) != 0)
    {
      v111[0] = &unk_28769D6D0;
      v5 = [(STUsageReport *)self appUsageByStartOfDateInterval];
      v6 = v5;
      if (!v5)
      {
        v6 = objc_opt_new();
      }

      v111[1] = &unk_28769D6E8;
      v112[0] = v6;
      v7 = [(STUsageReport *)self webUsageByStartOfDateInterval];
      v8 = v7;
      if (!v7)
      {
        v8 = objc_opt_new();
      }

      v112[1] = v8;
      v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:2];
      if (!v7)
      {
      }

      if (!v5)
      {
      }

      v109[0] = &unk_28769D6D0;
      v9 = [(STUsageReport *)self applicationUsageByStartOfDateIntervalByTrustIdentifier];
      v10 = v9;
      if (!v9)
      {
        v10 = objc_opt_new();
      }

      v109[1] = &unk_28769D6E8;
      v110[0] = v10;
      v11 = [(STUsageReport *)self webUsageByStartOfDateIntervalByTrustIdentifier];
      v12 = v11;
      if (!v11)
      {
        v12 = objc_opt_new();
      }

      v110[1] = v12;
      v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:2];
      if (!v11)
      {
      }

      if (!v9)
      {
      }
    }

    else
    {
      v77 = 0;
      if (a3 != 3)
      {
        goto LABEL_33;
      }

      v107 = &unk_28769D700;
      v15 = [(STUsageReport *)self categoryUsageByStartOfDateInterval];
      v16 = v15;
      if (!v15)
      {
        v16 = objc_opt_new();
      }

      v108 = v16;
      v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      if (!v15)
      {
      }

      v105 = &unk_28769D700;
      v17 = [(STUsageReport *)self categoryUsageByStartOfDateIntervalByTrustIdentifier];
      v18 = v17;
      if (!v17)
      {
        v18 = objc_opt_new();
      }

      v106 = v18;
      v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
      if (!v17)
      {
      }
    }

    v4 = self;
  }

LABEL_33:
  v19 = [(STUsageReport *)v4 type];
  v20 = 2 * (v19 == 0);
  if (v19 == 1)
  {
    v20 = 1;
  }

  v76 = v20;
  v72 = +[STUsageColors orderedUsageColors];
  v71 = [(STUsageReport *)self topUsageItemsWithMaxCount:3 type:a3 includeAggregateItem:0 nonAggregateItems:0 darkColors:v69];
  v21 = [v71 count];
  v22 = [v72 count];
  if (v21 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  if (v23 <= 1)
  {
    v23 = 1;
  }

  v70 = v23;
  v24 = [(STUsageReport *)self dateIntervals];
  v78 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v24, "count")}];
  [(STUsageReport *)self maxScreenTime];
  v26 = v25;
  v27 = [(STUsageReport *)self type];
  v28 = [MEMORY[0x277CBEA80] currentCalendar];
  [v28 maximumRangeOfUnit:128];
  v30 = v29;
  [v28 maximumRangeOfUnit:64];
  v32 = v30 * v31;
  v33 = v32 * 2uLL;
  if (!v27 || (v34 = 0.0, v27 == 1) && (v34 = v30 * v31, v32 < v26))
  {
    v35 = v33 * ceil(v26 / v33);
    if (v35 >= v33)
    {
      v34 = v35;
    }

    else
    {
      v34 = v33;
    }
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v24;
  v36 = [obj countByEnumeratingWithState:&v100 objects:v104 count:16];
  if (v36)
  {
    v75 = *v101;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v101 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v100 + 1) + 8 * i);
        v39 = [v38 startDate];
        v40 = [(STUsageReport *)self screenTimeByStartOfDateInterval];
        v41 = [v40 objectForKeyedSubscript:v39];
        [v41 doubleValue];
        v43 = v42;

        v96 = 0;
        v97 = &v96;
        v98 = 0x2020000000;
        v99 = 0;
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __56__STUsageReport__timedDataSetForItemType_useDarkColors___block_invoke;
        v93[3] = &unk_279B7EA38;
        v95 = &v96;
        v44 = v39;
        v94 = v44;
        [v77 enumerateKeysAndObjectsUsingBlock:v93];
        v45 = v97[3];
        if (v45 < v43)
        {
          v45 = v43;
        }

        v97[3] = v45;
        v46 = objc_opt_new();
        if (v97[3] > 0.0)
        {
          v89 = 0;
          v90 = &v89;
          v91 = 0x2020000000;
          v92 = 0;
          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 3221225472;
          v81[2] = __56__STUsageReport__timedDataSetForItemType_useDarkColors___block_invoke_2;
          v81[3] = &unk_279B7EA60;
          v82 = v73;
          v83 = v44;
          v84 = v72;
          v86 = &v89;
          v87 = &v96;
          v88 = v70;
          v47 = v46;
          v85 = v47;
          [v71 enumerateObjectsUsingBlock:v81];
          v48 = v90[3];
          v49 = v97[3];
          if (v48 < v49)
          {
            v50 = v49 - v48;
            v51 = [MEMORY[0x277CCABB0] numberWithDouble:v49 - v48];
            if (v69)
            {
              [MEMORY[0x277D75348] systemGrayColor];
            }

            else
            {
              [MEMORY[0x277D75348] systemGray4Color];
            }
            v52 = ;
            v53 = [[STUsageReportGraphSegment alloc] initWithAmount:v51 amountAsPercentageOfDataPointTotal:v52 color:v50 / v97[3]];
            [v47 addObject:v53];
          }

          _Block_object_dispose(&v89, 8);
        }

        if (v34 <= 0.0)
        {
          v54 = 0.0;
        }

        else
        {
          v54 = v43 / v34;
        }

        v55 = [STUsageReportGraphDataPoint alloc];
        v56 = [MEMORY[0x277CCABB0] numberWithDouble:v43];
        v57 = [(STUsageReportGraphDataPoint *)v55 initWithTimePeriod:v76 itemType:a3 dateInterval:v38 total:v56 totalAsPercentageOfMax:v46 segments:v54];

        [v78 addObject:v57];
        _Block_object_dispose(&v96, 8);
      }

      v36 = [obj countByEnumeratingWithState:&v100 objects:v104 count:16];
    }

    while (v36);
  }

  [(STUsageReport *)self totalScreenTime];
  v59 = v58;
  [(STUsageReport *)self activePickupDateIntervals];
  if (v60 <= 0.0)
  {
    v61 = 0.0;
  }

  else
  {
    v61 = v59 / v60;
  }

  if (v34 <= 0.0)
  {
    v62 = 0.0;
  }

  else
  {
    v62 = v61 / v34;
  }

  v63 = [STUsageReportGraphDataSet alloc];
  v64 = [MEMORY[0x277CCABB0] numberWithDouble:v59];
  v65 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
  v66 = [MEMORY[0x277CCABB0] numberWithDouble:v61];
  v67 = [(STUsageReportGraphDataSet *)v63 initWithTimePeriod:v76 itemType:a3 total:v64 max:v65 average:v66 averageAsPercentageOfMax:v78 dataPoints:v62];

  return v67;
}

void __56__STUsageReport__timedDataSetForItemType_useDarkColors___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [a3 objectForKeyedSubscript:*(a1 + 32)];
  v4 = [v6 totalUsage];
  [v4 doubleValue];
  *(*(*(a1 + 40) + 8) + 24) = v5 + *(*(*(a1 + 40) + 8) + 24);
}

void __56__STUsageReport__timedDataSetForItemType_useDarkColors___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCABB0];
  v7 = a2;
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "itemType")}];
  v9 = [v5 objectForKeyedSubscript:v8];
  v10 = [v7 trustIdentifier];

  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [v11 objectForKeyedSubscript:*(a1 + 40)];
  v20 = [v12 totalUsage];

  [v20 doubleValue];
  if (v13 > 0.0)
  {
    v14 = v13;
    v15 = [*(a1 + 48) objectAtIndexedSubscript:a3 % *(a1 + 80)];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [MEMORY[0x277D75348] systemTealColor];
    }

    v18 = v17;

    *(*(*(a1 + 64) + 8) + 24) = v14 + *(*(*(a1 + 64) + 8) + 24);
    v19 = [[STUsageReportGraphSegment alloc] initWithAmount:v20 amountAsPercentageOfDataPointTotal:v18 color:v14 / *(*(*(a1 + 72) + 8) + 24)];
    [*(a1 + 56) addObject:v19];
  }
}

- (id)_timedDataSetForItemType:(unint64_t)a3 trustIdentifier:(id)a4
{
  v86 = *MEMORY[0x277D85DE8];
  v73 = a4;
  v75 = 0;
  if (a3 <= 3)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v7 = [(STUsageReport *)self applicationUsageByTrustIdentifier];
        v8 = [(STUsageReport *)self applicationUsageByStartOfDateIntervalByTrustIdentifier];
      }

      else
      {
        v7 = 0;
        if (a3 != 3)
        {
          goto LABEL_12;
        }

        v7 = [(STUsageReport *)self categoryUsageByTrustIdentifier];
        v8 = [(STUsageReport *)self categoryUsageByStartOfDateIntervalByTrustIdentifier];
      }

      goto LABEL_11;
    }

LABEL_7:
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"STUsageReport.m" lineNumber:1071 description:{@"Cannot generate timed data set for %ld", a3}];

    v75 = 0;
    v7 = 0;
    goto LABEL_12;
  }

  if (a3 - 5 < 2)
  {
    goto LABEL_7;
  }

  v7 = 0;
  if (a3 != 4)
  {
    goto LABEL_12;
  }

  v7 = [(STUsageReport *)self webUsageByTrustIdentifier];
  v8 = [(STUsageReport *)self webUsageByStartOfDateIntervalByTrustIdentifier];
LABEL_11:
  v75 = v8;
LABEL_12:
  v10 = [(STUsageReport *)self type];
  v11 = 2 * (v10 == 0);
  if (v10 == 1)
  {
    v11 = 1;
  }

  v72 = v11;
  v70 = [MEMORY[0x277D75348] systemBlueColor];
  v12 = [(STUsageReport *)self dateIntervals];
  v74 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v12, "count")}];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v80 objects:v85 count:16];
  obj = v13;
  if (v14)
  {
    v15 = v14;
    v68 = self;
    v69 = v7;
    v16 = *v81;
    v17 = 0.0;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v81 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v80 + 1) + 8 * i);
        v20 = [v19 startDate];
        v21 = [v75 objectForKeyedSubscript:v73];
        v22 = [v21 objectForKeyedSubscript:v20];
        v23 = [v22 totalUsage];

        [v23 doubleValue];
        v25 = v24;
        if (v17 < v24)
        {
          v17 = v24;
        }

        v26 = objc_opt_new();
        if (v25 > 0.0)
        {
          v27 = [[STUsageReportGraphSegment alloc] initWithAmount:v23 amountAsPercentageOfDataPointTotal:v70 color:1.0];
          [v26 addObject:v27];
        }

        v28 = [[STUsageReportGraphDataPoint alloc] initWithTimePeriod:v72 itemType:a3 dateInterval:v19 total:v23 totalAsPercentageOfMax:v26 segments:0.0];
        [v74 addObject:v28];
      }

      v15 = [obj countByEnumeratingWithState:&v80 objects:v85 count:16];
    }

    while (v15);

    if (v17 != 0.0)
    {
      self = v68;
      v38 = [(STUsageReport *)v68 type];
      v39 = [MEMORY[0x277CBEA80] currentCalendar];
      [v39 maximumRangeOfUnit:128];
      v41 = v40;
      [v39 maximumRangeOfUnit:64];
      v43 = v41 * v42;
      v44 = v43 * 2uLL;
      if (v38)
      {
        v36 = 0.0;
        v7 = v69;
        if (v38 == 1)
        {
          v36 = v43;
          if (v43 < v17)
          {
            v45 = v44 * ceil(v17 / v44);
            if (v45 >= v44)
            {
              v36 = v45;
            }

            else
            {
              v36 = v44;
            }
          }
        }
      }

      else
      {
        v46 = v44 * ceil(v17 / v44);
        if (v46 >= v44)
        {
          v36 = v46;
        }

        else
        {
          v36 = v44;
        }

        v7 = v69;
      }

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v30 = v74;
      v47 = [v30 countByEnumeratingWithState:&v76 objects:v84 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v77;
        do
        {
          for (j = 0; j != v48; ++j)
          {
            if (*v77 != v49)
            {
              objc_enumerationMutation(v30);
            }

            v51 = *(*(&v76 + 1) + 8 * j);
            v52 = [v51 total];
            [v52 doubleValue];
            v54 = v53;

            [v51 setTotalAsPercentageOfMax:v54 / v36];
          }

          v48 = [v30 countByEnumeratingWithState:&v76 objects:v84 count:16];
        }

        while (v48);
      }

      goto LABEL_52;
    }

    self = v68;
    v7 = v69;
  }

  else
  {

    v17 = 0.0;
  }

  v29 = [(STUsageReport *)self type];
  v30 = [MEMORY[0x277CBEA80] currentCalendar];
  [v30 maximumRangeOfUnit:128];
  v32 = v31;
  [v30 maximumRangeOfUnit:64];
  v34 = v32 * v33;
  v35 = v34 * 2uLL;
  if (!v29)
  {
    goto LABEL_31;
  }

  v36 = 0.0;
  if (v29 == 1)
  {
    if (v34 < v17)
    {
LABEL_31:
      v37 = v35 * ceil(v17 / v35);
      if (v37 >= v35)
      {
        v36 = v37;
      }

      else
      {
        v36 = v35;
      }

      goto LABEL_52;
    }

    v36 = v34;
  }

LABEL_52:

  v55 = [v7 objectForKeyedSubscript:v73];
  v56 = [v55 totalUsage];
  [v56 doubleValue];
  v58 = v57;

  [(STUsageReport *)self activePickupDateIntervals];
  if (v59 <= 0.0)
  {
    v60 = 0.0;
  }

  else
  {
    v60 = v58 / v59;
  }

  if (v36 <= 0.0)
  {
    v61 = 0.0;
  }

  else
  {
    v61 = v60 / v36;
  }

  v62 = [STUsageReportGraphDataSet alloc];
  v63 = [MEMORY[0x277CCABB0] numberWithDouble:v58];
  v64 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
  v65 = [MEMORY[0x277CCABB0] numberWithDouble:v60];
  v66 = [(STUsageReportGraphDataSet *)v62 initWithTimePeriod:v72 itemType:a3 total:v63 max:v64 average:v65 averageAsPercentageOfMax:v74 dataPoints:v61];

  return v66;
}

- (void)_dataSetForItemType:(uint64_t)a1 trustIdentifier:(uint64_t)a2 includeIndicatorImageName:useDarkColors:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STUsageReport.m" lineNumber:804 description:{@"Cannot generate data set for just screen time, you need to specify app or category"}];
}

@end