@interface PPQuickTypeEventsServant
- (BOOL)_shouldTreatAsUnscheduledFreeTime:(void *)a1;
- (PPQuickTypeEventsServant)init;
- (id)_busyEventsFromEvents:(void *)a1 people:(void *)a2 explanationSet:(void *)a3;
- (id)_freeEventsAndGapsFromEvents:(void *)a3 explanationSet:;
- (id)_unscheduledFreeTimeEventFrom:(void *)a3 to:;
- (id)quickTypeItemsWithQuery:(id)a3 limit:(unint64_t)a4 explanationSet:(id)a5;
@end

@implementation PPQuickTypeEventsServant

- (id)quickTypeItemsWithQuery:(id)a3 limit:(unint64_t)a4 explanationSet:(id)a5
{
  v189 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v141 = a5;
  v143 = v8;
  LODWORD(v8) = [v8 type];
  v9 = pp_quicktype_log_handle();
  v10 = v9;
  if (v8 != 2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "PPQuickTypeEventsServant ignoring request since it doesn't ask for events", buf, 2u);
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "prediction request to PPQuickTypeEventsServant", buf, 2u);
  }

  if (![PPQuickTypeSettings servantShouldRespondToQuery:self])
  {
    v17 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "ignoring prediction request for Events due to settings", buf, 2u);
    }

    [v141 push:47];
LABEL_16:
    self = 0;
    goto LABEL_158;
  }

  v11 = [v143 subtype];
  v12 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v11 == 3;
    _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_INFO, "looking for busy times? %d", buf, 8u);
  }

  v13 = objc_opt_new();
  if ([v143 time] == 1)
  {
    localEventStore = self->_localEventStore;
    v15 = [v13 dateByAddingTimeInterval:-600.0];
    v16 = [v13 dateByAddingTimeInterval:345600.0];
    v139 = [(PPLocalEventStore *)localEventStore eventsFromDate:v15 toDate:v16];
LABEL_9:

    goto LABEL_23;
  }

  if ([v143 time] == 2)
  {
    v18 = self->_localEventStore;
    v19 = PPNextMidnight();
  }

  else
  {
    if ([v143 time] == 3)
    {
      v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:172800.0];
      v20 = self->_localEventStore;
      v16 = PPNextMidnight();
      v21 = [MEMORY[0x277CBEA80] currentCalendar];
      v22 = [v21 startOfDayForDate:v15];
      v139 = [(PPLocalEventStore *)v20 eventsFromDate:v16 toDate:v22];

      goto LABEL_9;
    }

    v18 = self->_localEventStore;
    v19 = [v13 dateByAddingTimeInterval:604800.0];
  }

  v15 = v19;
  v139 = [(PPLocalEventStore *)v18 eventsFromDate:v13 toDate:v19];
LABEL_23:

  v23 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v139 count];
    *buf = 134217984;
    *&buf[4] = v24;
    _os_log_impl(&dword_23224A000, v23, OS_LOG_TYPE_DEFAULT, "%tu events matching predicate", buf, 0xCu);
  }

  if ([v139 count])
  {
    v25 = [v143 people];
    if (v25)
    {
      v26 = v25;
      if (objc_opt_respondsToSelector())
      {
        v140 = v26;
      }

      else
      {
        v181 = v26;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v181 count:1];

        v140 = v27;
      }
    }

    else
    {
      v140 = 0;
    }

    obj = [v143 recipients];
    v155 = objc_opt_new();
    v150 = v13;
    if ([v143 time] == 1 && v11 == 3 && (objc_msgSend(v143, "fields") & 0x30000) != 0)
    {
      if ((!obj || ![obj count]) && (!v140 || !objc_msgSend(v140, "count")))
      {
        v64 = pp_quicktype_log_handle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v64, OS_LOG_TYPE_DEFAULT, "shouldAddRecipientToPeopleOfInterest but no recipients", buf, 2u);
        }

        [v141 push:20];
        self = 0;
        goto LABEL_156;
      }

      v160 = self;
      v28 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_INFO, "recipient is person of interest", buf, 2u);
      }

      v29 = objc_opt_new();
      v166[0] = MEMORY[0x277D85DD0];
      v166[1] = 3221225472;
      v166[2] = __73__PPQuickTypeEventsServant_quickTypeItemsWithQuery_limit_explanationSet___block_invoke;
      v166[3] = &unk_278976948;
      v30 = v29;
      v167 = v30;
      [obj enumerateObjectsUsingBlock:v166];
      v31 = v30;

      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      obj = v31;
      v32 = [obj countByEnumeratingWithState:&v162 objects:v180 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v163;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v163 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v162 + 1) + 8 * i);
            v37 = objc_opt_new();
            if ([v36 containsString:@"@"])
            {
              [v37 setMatchingEmail:v36];
            }

            else
            {
              [v37 setMatchingPhone:v36];
            }

            v38 = +[PPLocalContactStore defaultStore];
            v39 = [v38 rankedContactsWithQuery:v37 error:0];
            v40 = [v39 firstObject];

            if (v40)
            {
              v41 = v40;
            }

            else
            {
              v41 = v36;
            }

            [v155 addObject:v41];
          }

          v33 = [obj countByEnumeratingWithState:&v162 objects:v180 count:16];
        }

        while (v33);
      }

      v13 = v150;
      self = v160;
      v11 = 3;
    }

    if ([v155 count])
    {
      if (v140 && [v140 count])
      {
        [v155 addObjectsFromArray:v140];
      }

      v42 = v155;

      v140 = v42;
    }

    v43 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = [v140 count];
      *buf = 134217984;
      *&buf[4] = v44;
      _os_log_impl(&dword_23224A000, v43, OS_LOG_TYPE_INFO, "%ld people of interest", buf, 0xCu);
    }

    v45 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138739971;
      *&buf[4] = v140;
      _os_log_debug_impl(&dword_23224A000, v45, OS_LOG_TYPE_DEBUG, "people of interest: %{sensitive}@", buf, 0xCu);
    }

    v46 = [v143 time];
    v47 = [v143 fields];
    v48 = v139;
    v140 = v140;
    v49 = v141;
    if (self)
    {
      v50 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        *&buf[4] = v46;
        *&buf[12] = 2112;
        *&buf[14] = v140;
        *&buf[22] = 1024;
        LODWORD(v185) = v11 == 3;
        _os_log_debug_impl(&dword_23224A000, v50, OS_LOG_TYPE_DEBUG, "filtering events for time: %lu: people: %@ busy: %d", buf, 0x1Cu);
      }

      if ((v46 & 0xFFFFFFFD) == 1)
      {
        if (v11 == 3)
        {
          v51 = v49;
          v52 = v140;
          v53 = v140;
          v54 = [v48 objectEnumerator];
LABEL_73:
          v55 = v54;
          v56 = [PPQuickTypeEventsServant _busyEventsFromEvents:v54 people:v53 explanationSet:v51];

          goto LABEL_86;
        }

        v57 = [(PPQuickTypeEventsServant *)self _freeEventsAndGapsFromEvents:v48 explanationSet:v49];
        v56 = v57;
        if ((v47 & 0x40000) != 0)
        {
          v58 = [v57 lastObject];
          v59 = [v58 endDate];
          v60 = PPNextMidnight();
          v61 = [v59 isEqualToDate:v60];

          if (v61)
          {
            v62 = [v56 subarrayWithRange:{0, objc_msgSend(v56, "count") - 1}];

            v56 = v62;
          }
        }

        goto LABEL_85;
      }

      if (v46 == 2)
      {
        if (v11 == 3)
        {
          v51 = v49;
          v52 = v140;
          v53 = v140;
          v54 = [v48 reverseObjectEnumerator];
          goto LABEL_73;
        }

        v65 = [(PPQuickTypeEventsServant *)self _freeEventsAndGapsFromEvents:v48 explanationSet:v49];
        v66 = [v65 reverseObjectEnumerator];
        v56 = [v66 allObjects];

LABEL_85:
        v52 = v140;
LABEL_86:

        v67 = pp_quicktype_log_handle();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
        {
          v68 = [v56 count];
          *buf = 134217984;
          *&buf[4] = v68;
          _os_log_impl(&dword_23224A000, v67, OS_LOG_TYPE_INFO, "%ld events after filtering", buf, 0xCu);
        }

        v69 = pp_quicktype_log_handle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138739971;
          *&buf[4] = v56;
          _os_log_debug_impl(&dword_23224A000, v69, OS_LOG_TYPE_DEBUG, "predicted events after filter: %{sensitive}@", buf, 0xCu);
        }

        +[PPQuickTypeMetrics eventsMatches:](PPQuickTypeMetrics, "eventsMatches:", [v56 count]);
        v70 = [v143 fields];
        v71 = [PPQuickTypeFormatter formatterWithQuery:v143];
        v72 = v56;
        v151 = v71;
        v138 = v49;
        if (self)
        {
          v73 = objc_alloc(MEMORY[0x277CBEB18]);
          v74 = [v72 count];
          if (v74 >= a4)
          {
            v75 = a4;
          }

          else
          {
            v75 = v74;
          }

          self = [v73 initWithCapacity:v75];
          v172 = 0u;
          v173 = 0u;
          v174 = 0u;
          v175 = 0u;
          v137 = v72;
          v76 = v72;
          v77 = +[PPConfiguration sharedInstance];
          v78 = [v77 nextEventsFuzzMinutes];

          v79 = [v76 firstObject];
          v80 = [v79 startDate];

          if ([v76 count] <= a4)
          {
            v86 = v76;
          }

          else
          {
            v81 = 60 * v78;
            v82 = [v76 subarrayWithRange:{0, a4}];
            v83 = [v82 mutableCopy];

            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __58__PPQuickTypeEventsServant__fuzzyNextEvents_minimumCount___block_invoke;
            v185 = &unk_278973B28;
            v186 = v80;
            v188 = v81;
            v84 = v83;
            v187 = v84;
            [v76 enumerateObjectsUsingBlock:buf];
            v85 = v187;
            v86 = v84;
          }

          v149 = [v86 countByEnumeratingWithState:&v172 objects:v183 count:16];
          if (v149)
          {
            v156 = 0;
            v144 = *v173;
            v142 = a4;
            v148 = self;
            v147 = v70;
            v145 = v86;
            v146 = v76;
            do
            {
              v87 = 0;
              do
              {
                if (*v173 != v144)
                {
                  objc_enumerationMutation(v86);
                }

                v152 = v87;
                v88 = *(*(&v172 + 1) + 8 * v87);
                v168 = 0u;
                v169 = 0u;
                v170 = 0u;
                v171 = 0u;
                v89 = v88;
                v90 = v151;
                v91 = objc_opt_new();
                v92 = v89;
                v93 = v90;
                v94 = objc_opt_new();
                v159 = v91;
                if ((v70 & 0x20000) != 0)
                {
                  v95 = [v92 startDate];
                  v96 = [v93 formattedEventTime:v95];
                  v97 = [PPQuickTypeLabeledValue labeledValueWithLabel:0 value:v96 scoreBoost:0x20000 fields:0.0];
                  [v94 addObject:v97];

                  v91 = v159;
                  if ((v70 & 0x40000) != 0)
                  {
LABEL_107:
                    v98 = [v92 endDate];
                    v99 = [v93 formattedEventTime:v98];
                    v100 = [PPQuickTypeLabeledValue labeledValueWithLabel:0 value:v99 scoreBoost:0x40000 fields:0.0];
                    [v94 addObject:v100];

                    v91 = v159;
                    if ((v70 & 0x8000) == 0)
                    {
                      goto LABEL_112;
                    }

                    goto LABEL_108;
                  }
                }

                else if ((v70 & 0x40000) != 0)
                {
                  goto LABEL_107;
                }

                if ((v70 & 0x8000) == 0)
                {
                  goto LABEL_112;
                }

LABEL_108:
                v101 = [v92 title];
                if (![v101 length])
                {
                  goto LABEL_111;
                }

                v102 = [v92 representsUnscheduledFreeTime];

                if ((v102 & 1) == 0)
                {
                  v101 = [v92 title];
                  v103 = [PPQuickTypeLabeledValue labeledValueWithLabel:0 value:v101 scoreBoost:0x8000 fields:0.0];
                  [v94 addObject:v103];

LABEL_111:
                }

LABEL_112:
                if ((v70 & 0x10000) != 0)
                {
                  v104 = [v92 location];
                  v105 = [v104 length];

                  if (v105)
                  {
                    v106 = [v92 location];
                    v107 = [PPQuickTypeLabeledValue labeledValueWithLabel:0 value:v106 scoreBoost:0x10000 fields:0.0];
                    [v94 addObject:v107];
                  }
                }

                v153 = v93;

                v108 = pp_quicktype_log_handle();
                if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  *&buf[4] = v92;
                  *&buf[12] = 2112;
                  *&buf[14] = v94;
                  _os_log_debug_impl(&dword_23224A000, v108, OS_LOG_TYPE_DEBUG, "valuesForPrediction event: %@: values: %@", buf, 0x16u);
                }

                v178 = 0u;
                v179 = 0u;
                v176 = 0u;
                v177 = 0u;
                v157 = v94;
                v161 = [v157 countByEnumeratingWithState:&v176 objects:buf count:16];
                if (v161)
                {
                  v158 = *v177;
                  do
                  {
                    for (j = 0; j != v161; ++j)
                    {
                      if (*v177 != v158)
                      {
                        objc_enumerationMutation(v157);
                      }

                      v110 = *(*(&v176 + 1) + 8 * j);
                      v111 = MEMORY[0x277D3A478];
                      v112 = [v110 value];
                      [v110 fields];
                      v113 = [v110 value];
                      v114 = [v92 title];
                      v115 = [v92 startDate];
                      v116 = [v110 fields];
                      if ([v92 representsUnscheduledFreeTime])
                      {
                        v117 = 2;
                      }

                      else
                      {
                        v117 = 0;
                      }

                      [v110 scoreBoost];
                      v119 = v118;
                      v120 = [v92 eventIdentifier];
                      BYTE2(v136) = 3;
                      BYTE1(v136) = v117;
                      LOBYTE(v136) = 0;
                      v121 = [v111 quickTypeItemWithLabel:&stru_284759D38 value:v113 name:v114 date:v115 fields:v116 originatingBundleID:0 originatingWebsiteURL:v119 predictionAge:0 shouldAggregate:-1 flags:v136 score:v120 source:? sourceIdentifier:?];
                      v91 = v159;
                      [v159 addObject:v121];
                    }

                    v161 = [v157 countByEnumeratingWithState:&v176 objects:buf count:16];
                  }

                  while (v161);
                }

                v122 = [v91 countByEnumeratingWithState:&v168 objects:v182 count:16];
                if (v122)
                {
                  v123 = v122;
                  v124 = *v169;
                  v13 = v150;
                  self = v148;
                  while (2)
                  {
                    v125 = 0;
                    if (v142 >= v156)
                    {
                      v126 = v142 - v156;
                    }

                    else
                    {
                      v126 = 0;
                    }

                    v127 = 100 - v156;
                    do
                    {
                      if (*v169 != v124)
                      {
                        objc_enumerationMutation(v159);
                      }

                      v128 = *(*(&v168 + 1) + 8 * v125);
                      v129 = pp_quicktype_log_handle();
                      if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        *&buf[4] = v128;
                        _os_log_debug_impl(&dword_23224A000, v129, OS_LOG_TYPE_DEBUG, "event item prediction: %@", buf, 0xCu);
                      }

                      if (v126 == v125)
                      {
                        v131 = v159;
                        goto LABEL_144;
                      }

                      v130 = v127;
                      if (v156 > 0x64)
                      {
                        v130 = 0.0;
                      }

                      ++v156;
                      [v128 setScore:v130];
                      [(PPQuickTypeEventsServant *)v148 addObject:v128];
                      ++v125;
                      --v127;
                    }

                    while (v123 != v125);
                    v131 = v159;
                    v123 = [v159 countByEnumeratingWithState:&v168 objects:v182 count:16];
                    if (v123)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_144:

                  v70 = v147;
                  v86 = v145;
                  v76 = v146;
                  if (v156 > v142)
                  {
                    goto LABEL_149;
                  }
                }

                else
                {

                  v13 = v150;
                  self = v148;
                  v70 = v147;
                  v86 = v145;
                  v76 = v146;
                }

                v87 = v152 + 1;
              }

              while (v152 + 1 != v149);
              v149 = [v86 countByEnumeratingWithState:&v172 objects:v183 count:16];
            }

            while (v149);
          }

LABEL_149:

          if ([v76 count])
          {
            v132 = [(PPQuickTypeEventsServant *)self count];
            v72 = v137;
            v133 = v138;
            if ((v70 & 0x10000) != 0 && !v132)
            {
              [v138 push:24];
            }

            goto LABEL_155;
          }

          v72 = v137;
        }

        v133 = v138;
LABEL_155:

LABEL_156:
        goto LABEL_157;
      }

      v63 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = v46;
        _os_log_error_impl(&dword_23224A000, v63, OS_LOG_TYPE_ERROR, "unsupported time criteria: %lu", buf, 0xCu);
      }

      [v49 push:25];
    }

    v56 = 0;
    goto LABEL_85;
  }

  [v141 push:19];
  self = 0;
LABEL_157:

LABEL_158:
  v134 = *MEMORY[0x277D85DE8];

  return self;
}

void __73__PPQuickTypeEventsServant_quickTypeItemsWithQuery_limit_explanationSet___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 containsString:@":"])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = [v7 componentsSeparatedByString:@":"];
    v6 = [v5 lastObject];
    [v4 addObject:v6];

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    [*(a1 + 32) addObject:v7];
  }
}

void __58__PPQuickTypeEventsServant__fuzzyNextEvents_minimumCount___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 startDate];
  [v3 timeIntervalSinceDate:*(a1 + 32)];
  if (v4 <= *(a1 + 48))
  {
    v5 = [*(a1 + 40) containsObject:v6];

    if ((v5 & 1) == 0)
    {
      [*(a1 + 40) addObject:v6];
    }
  }

  else
  {
  }
}

- (id)_freeEventsAndGapsFromEvents:(void *)a3 explanationSet:
{
  v79 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v55 = a3;
  v58 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  v5 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (v7)
  {
    v8 = *v68;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v68 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v67 + 1) + 8 * i);
        if ([v10 availability] != 1 && !-[PPQuickTypeEventsServant _shouldTreatAsUnscheduledFreeTime:](v10))
        {
          v11 = [v10 startDate];
          [v11 timeIntervalSinceReferenceDate];
          v13 = v12;

          v14 = [v10 endDate];
          v15 = [v10 startDate];
          [v14 timeIntervalSinceDate:v15];
          v17 = v16;

          [v5 addIndexesInRange:{v13, v17}];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v67 objects:v78 count:16];
    }

    while (v7);
  }

  v18 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *v74 = 138412290;
    *&v74[4] = v5;
    _os_log_debug_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEBUG, "freeEventsAndGapsFromEvents: busy ranges: %@", v74, 0xCu);
  }

  if ([v5 count])
  {
    v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v5, "firstIndex")}];
    v20 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *v74 = 138412290;
      *&v74[4] = v19;
      _os_log_debug_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEBUG, "freeEventsAndGapsFromEvents: busy start: %@", v74, 0xCu);
    }

    v57 = objc_opt_new();
    v21 = [v5 firstIndex];
    [v57 timeIntervalSinceReferenceDate];
    if (v22 < v21)
    {
      v23 = [MEMORY[0x277CBEA80] currentCalendar];
      v24 = [v23 components:124 fromDate:v57];
      v25 = [v24 minute] < 30;
      v26 = MEMORY[0x277CBEAA8];
      v27 = [v24 minute];
      v28 = 60;
      if (v25)
      {
        v28 = 30;
      }

      v29 = [v26 dateWithTimeInterval:v57 sinceDate:(60 * (v28 - v27))];
      v30 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *v74 = 138412290;
        *&v74[4] = v29;
        _os_log_debug_impl(&dword_23224A000, v30, OS_LOG_TYPE_DEBUG, "freeEventsAndGapsFromEvents: free start: %@", v74, 0xCu);
      }

      if ([v29 compare:v19] != 1)
      {
        v31 = pp_quicktype_log_handle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *v74 = 138412546;
          *&v74[4] = v29;
          *&v74[12] = 2112;
          *&v74[14] = v19;
          _os_log_debug_impl(&dword_23224A000, v31, OS_LOG_TYPE_DEBUG, "freeEventsAndGapsFromEvents: initial free added: %@-%@", v74, 0x16u);
        }

        v32 = [(PPQuickTypeEventsServant *)a1 _unscheduledFreeTimeEventFrom:v29 to:v19];
        [v58 addObject:v32];
      }
    }

    *v74 = 0;
    *&v74[8] = v74;
    *&v74[16] = 0x3032000000;
    v75 = __Block_byref_object_copy__6968;
    v76 = __Block_byref_object_dispose__6969;
    v54 = v19;
    v77 = v54;
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __72__PPQuickTypeEventsServant__freeEventsAndGapsFromEvents_explanationSet___block_invoke;
    v63[3] = &unk_278973B50;
    v66 = v74;
    v33 = v58;
    v64 = v33;
    v65 = a1;
    [v5 enumerateRangesWithOptions:0 usingBlock:v63];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v34 = v6;
    v35 = [v34 countByEnumeratingWithState:&v59 objects:v73 count:16];
    if (v35)
    {
      v36 = *v60;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v60 != v36)
          {
            objc_enumerationMutation(v34);
          }

          v38 = *(*(&v59 + 1) + 8 * j);
          if ([v38 availability] == 1 && !-[PPQuickTypeEventsServant _shouldTreatAsUnscheduledFreeTime:](v38))
          {
            v39 = [v38 startDate];
            [v39 timeIntervalSinceReferenceDate];
            v41 = v40;

            v42 = [v38 endDate];
            v43 = [v38 startDate];
            [v42 timeIntervalSinceDate:v43];
            v45 = v44;

            if (([v5 intersectsIndexesInRange:{v41, v45}] & 1) == 0)
            {
              v46 = pp_quicktype_log_handle();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v72 = v38;
                _os_log_debug_impl(&dword_23224A000, v46, OS_LOG_TYPE_DEBUG, "freeEventsAndGapsFromEvents: adding free event: %@", buf, 0xCu);
              }

              [v33 addObject:v38];
            }
          }
        }

        v35 = [v34 countByEnumeratingWithState:&v59 objects:v73 count:16];
      }

      while (v35);
    }

    v47 = [MEMORY[0x277CBEA80] currentCalendar];
    v48 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:*(*&v74[8] + 40) sinceDate:86400.0];
    v49 = [v47 startOfDayForDate:v48];

    v50 = [(PPQuickTypeEventsServant *)a1 _unscheduledFreeTimeEventFrom:v49 to:?];
    [v33 addObject:v50];

    if (![v33 count])
    {
      [v55 push:22];
    }

    v51 = [v33 sortedArrayUsingSelector:sel_compareStartDateWithEvent_];

    _Block_object_dispose(v74, 8);
  }

  else
  {
    v51 = v58;
  }

  v52 = *MEMORY[0x277D85DE8];

  return v51;
}

- (id)_busyEventsFromEvents:(void *)a1 people:(void *)a2 explanationSet:(void *)a3
{
  v106 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v9 = v5;
  v72 = [v9 countByEnumeratingWithState:&v80 objects:v101 count:16];
  if (!v72)
  {

    v57 = 23;
LABEL_68:
    [v7 push:v57];
    goto LABEL_69;
  }

  v60 = v7;
  v61 = 0;
  v10 = 0;
  v11 = *v81;
  v64 = v8;
  v65 = v6;
  v62 = *v81;
  v63 = v9;
  do
  {
    v12 = 0;
    do
    {
      if (*v81 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v80 + 1) + 8 * v12);
      v14 = [v13 startDate];
      [v14 timeIntervalSinceNow];
      v16 = v15;

      if (v16 < -600.0 || [v13 availability] == 1 || -[PPQuickTypeEventsServant _shouldTreatAsUnscheduledFreeTime:](v13))
      {
        goto LABEL_59;
      }

      if (!v6 || ![v6 count])
      {
        goto LABEL_57;
      }

      v66 = v13;
      v17 = [v13 attendees];
      v18 = v6;
      v71 = v17;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v19 = v18;
      v69 = [v19 countByEnumeratingWithState:&v97 objects:v105 count:16];
      v70 = v19;
      if (!v69)
      {
        goto LABEL_50;
      }

      v67 = *v98;
      v68 = v12;
      while (2)
      {
        v20 = 0;
        while (2)
        {
          if (*v98 != v67)
          {
            objc_enumerationMutation(v19);
          }

          v75 = v20;
          v21 = *(*(&v97 + 1) + 8 * v20);
          v22 = objc_autoreleasePoolPush();
          v23 = objc_opt_new();
          objc_opt_class();
          v76 = v22;
          if (objc_opt_isKindOfClass())
          {
            v24 = [v21 contact];
            v25 = [v24 localizedFullName];
            if (v25)
            {
              [v23 addObject:v25];
            }

            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v26 = [v24 emailAddresses];
            v27 = [v26 countByEnumeratingWithState:&v93 objects:v104 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v94;
              do
              {
                for (i = 0; i != v28; ++i)
                {
                  if (*v94 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = [*(*(&v93 + 1) + 8 * i) value];
                  [v23 addObject:v31];
                }

                v28 = [v26 countByEnumeratingWithState:&v93 objects:v104 count:16];
              }

              while (v28);
            }
          }

          else
          {
            [v23 addObject:v21];
          }

          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v32 = v71;
          v33 = [v32 countByEnumeratingWithState:&v89 objects:v103 count:16];
          if (!v33)
          {
LABEL_53:

            v55 = pp_quicktype_log_handle();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23224A000, v55, OS_LOG_TYPE_INFO, "one or more person of interest not found in attendees", buf, 2u);
            }

            objc_autoreleasePoolPop(v76);
            v53 = 0;
            v54 = v70;
            v52 = v70;
            v8 = v64;
            v6 = v65;
            v11 = v62;
            v9 = v63;
            v12 = v68;
            goto LABEL_56;
          }

          v34 = v33;
          v35 = *v90;
          v77 = v32;
          v73 = *v90;
LABEL_30:
          v36 = 0;
          v74 = v34;
          while (1)
          {
            if (*v90 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v89 + 1) + 8 * v36);
            v38 = objc_autoreleasePoolPush();
            if ([v37 status] == 3)
            {
              goto LABEL_45;
            }

            context = v38;
            v39 = [v37 url];
            v40 = [v39 absoluteString];
            v79 = [v40 lowercaseString];

            v41 = [v37 emailAddress];
            v42 = [v37 name];
            v43 = [v42 lowercaseString];

            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v44 = v23;
            v45 = [v44 countByEnumeratingWithState:&v85 objects:v102 count:16];
            if (v45)
            {
              break;
            }

LABEL_44:

            v34 = v74;
            v38 = context;
LABEL_45:
            objc_autoreleasePoolPop(v38);
            if (++v36 == v34)
            {
              v34 = [v32 countByEnumeratingWithState:&v89 objects:v103 count:16];
              if (v34)
              {
                goto LABEL_30;
              }

              goto LABEL_53;
            }
          }

          v46 = v45;
          v47 = *v86;
LABEL_36:
          v48 = 0;
          while (1)
          {
            if (*v86 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v85 + 1) + 8 * v48);
            v50 = objc_autoreleasePoolPush();
            v51 = [v49 lowercaseString];
            if (([v41 containsString:v51] & 1) != 0 || (objc_msgSend(v43, "containsString:", v51) & 1) != 0 || objc_msgSend(v79, "containsString:", v51))
            {
              break;
            }

            objc_autoreleasePoolPop(v50);
            if (v46 == ++v48)
            {
              v46 = [v44 countByEnumeratingWithState:&v85 objects:v102 count:16];
              v32 = v77;
              v35 = v73;
              if (v46)
              {
                goto LABEL_36;
              }

              goto LABEL_44;
            }
          }

          objc_autoreleasePoolPop(v50);
          objc_autoreleasePoolPop(context);

          objc_autoreleasePoolPop(v76);
          v20 = v75 + 1;
          v12 = v68;
          v19 = v70;
          if (v75 + 1 != v69)
          {
            continue;
          }

          break;
        }

        v69 = [v70 countByEnumeratingWithState:&v97 objects:v105 count:16];
        if (v69)
        {
          continue;
        }

        break;
      }

LABEL_50:

      v52 = pp_quicktype_log_handle();
      v53 = 1;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v52, OS_LOG_TYPE_INFO, "all people of interest found in attendees", buf, 2u);
      }

      v8 = v64;
      v6 = v65;
      v11 = v62;
      v9 = v63;
      v54 = v70;
LABEL_56:

      v13 = v66;
      if (v53)
      {
LABEL_57:
        [v8 addObject:v13];
      }

      else
      {
        v61 = 1;
      }

      v10 = 1;
LABEL_59:
      ++v12;
    }

    while (v12 != v72);
    v56 = [v9 countByEnumeratingWithState:&v80 objects:v101 count:16];
    v72 = v56;
  }

  while (v56);

  if ((v10 & 1) == 0)
  {
    v57 = 23;
    v7 = v60;
    goto LABEL_68;
  }

  v7 = v60;
  if ((([v6 count] != 0) & v61) == 1)
  {
    v57 = 21;
    goto LABEL_68;
  }

LABEL_69:

  v58 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_shouldTreatAsUnscheduledFreeTime:(void *)a1
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 availability] == 1 && (objc_msgSend(v1, "organizerIsCurrentUser") & 1) == 0)
  {
    v3 = v1;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [v3 attendees];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * v8);
          v10 = pp_quicktype_log_handle();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v20 = v9;
            _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "isFreeTime: attendee: %@", buf, 0xCu);
          }

          if ([v9 isCurrentUser])
          {
            v11 = pp_quicktype_log_handle();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v14 = [v9 status];
              *buf = 134217984;
              v20 = v14;
              _os_log_debug_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEBUG, "isFreeTime: is current user, status: %ld", buf, 0xCu);
            }

            v2 = [v9 status] != 255;
            goto LABEL_18;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v2 = 0;
LABEL_18:
  }

  else
  {
    v2 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)_unscheduledFreeTimeEventFrom:(void *)a3 to:
{
  if (a1)
  {
    v4 = MEMORY[0x277D3A390];
    v5 = a3;
    v6 = a2;
    v7 = [v4 alloc];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"PP-FT-%@-%@", v6, v5];
    v9 = [MEMORY[0x277CC5A60] temporaryObjectIDWithEntityType:2];
    v10 = [objc_alloc(MEMORY[0x277D3A330]) initWithCalendarIdentifier:@"PP-FT" title:@"PP-FT" color:0];
    LOBYTE(v15) = 0;
    LOBYTE(v14) = 3;
    LOBYTE(v13) = 1;
    v11 = [v7 initWithEventIdentifier:v8 objectID:v9 title:&stru_284759D38 location:&stru_284759D38 calendar:v10 startDate:v6 endDate:v5 availability:v13 externalURI:0 attendees:MEMORY[0x277CBEBF8] organizerName:&stru_284759D38 eventFlags:v14 notes:0 url:0 structuredLocationTitle:0 structuredLocationAddress:0 structuredLocationCoordinates:0 suggestedEventCategory:v15];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __72__PPQuickTypeEventsServant__freeEventsAndGapsFromEvents_explanationSet___block_invoke(void *a1, unint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:(a2 + a3)];
  if ([*(*(a1[6] + 8) + 40) compare:v6] == -1)
  {
    v8 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(*(a1[6] + 8) + 40);
      v15 = 138412546;
      v16 = v14;
      v17 = 2112;
      v18 = v6;
      _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "freeEventsAndGapsFromEvents: adding free block: %@-%@", &v15, 0x16u);
    }

    v9 = a1[4];
    v10 = [(PPQuickTypeEventsServant *)a1[5] _unscheduledFreeTimeEventFrom:v6 to:?];
    [v9 addObject:v10];
  }

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;

  v13 = *MEMORY[0x277D85DE8];
}

- (PPQuickTypeEventsServant)init
{
  v16.receiver = self;
  v16.super_class = PPQuickTypeEventsServant;
  v2 = [(PPQuickTypeEventsServant *)&v16 init];
  if (v2)
  {
    v3 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_INFO, "PPQuickTypeEventsServant initializing", buf, 2u);
    }

    v4 = +[PPLocalEventStore defaultStore];
    localEventStore = v2->_localEventStore;
    v2->_localEventStore = v4;

    v6 = MEMORY[0x277D3A480];
    v7 = [MEMORY[0x277CBEAF8] currentLocale];
    v8 = [v7 localeIdentifier];
    v9 = [v6 quickTypeQueryWithType:0 subtype:0 semanticTag:0 fields:0 time:0 options:0 subFields:0 label:0 people:0 localeIdentifier:v8 bundleIdentifier:0 recipients:0];
    v10 = [PPQuickTypeFormatter formatterWithQuery:v9];

    v11 = [v10 makeShortEventFormatter];
    v12 = [v10 makeLongEventFormatter];

    v13 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_INFO, "PPQuickTypeEventsServant initialization complete", buf, 2u);
    }
  }

  return v2;
}

@end