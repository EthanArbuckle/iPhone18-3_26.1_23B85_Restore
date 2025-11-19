@interface PGMemoryTriggerUpcomingCalendarEvent
- (PGMemoryTriggerUpcomingCalendarEvent)initWithServiceManager:(id)a3 locationCache:(id)a4 loggingConnection:(id)a5;
- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5;
@end

@implementation PGMemoryTriggerUpcomingCalendarEvent

- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5
{
  v175[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 47;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingCalendarEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v12 = [v8 localDate];
    v137 = v8;
    v13 = [v8 timeZone];
    v119 = v12;
    v118 = [MEMORY[0x277D27690] startOfDayForDate:v12];
    v136 = v13;
    v14 = [MEMORY[0x277D27690] universalDateFromLocalDate:? inTimeZone:?];
    v15 = [v14 dateByAddingTimeInterval:86400.0];
    v117 = v14;
    v16 = [v14 dateByAddingTimeInterval:345600.0];
    v124 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:1 inGraph:v9];
    v125 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = MEMORY[0x277D276F0];
    v115 = v16;
    v116 = v15;
    v175[0] = v15;
    v175[1] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v175 count:2];
    v19 = [v17 clueWithDates:v18 serviceManager:self->_serviceManager];

    v114 = v19;
    [v19 events];
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v20 = v169 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v166 objects:v174 count:16];
    v138 = v9;
    v122 = v10;
    v123 = v20;
    v140 = self;
    if (v21)
    {
      v22 = v21;
      v23 = *v167;
      v24 = *MEMORY[0x277CE4208];
      v25 = *MEMORY[0x277CE4228] + *MEMORY[0x277CE4228];
      v120 = *v167;
      while (2)
      {
        v26 = 0;
        v121 = v22;
        do
        {
          if (*v167 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v166 + 1) + 8 * v26);
          v28 = objc_autoreleasePoolPush();
          if ([v10 isCancelledWithProgress:0.5])
          {
            v8 = v137;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *&buf[4] = 64;
              *&buf[8] = 2080;
              *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingCalendarEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            objc_autoreleasePoolPop(v28);
            v11 = MEMORY[0x277CBEBF8];
            v111 = v20;
            v9 = v138;
            goto LABEL_77;
          }

          if (([v27 hasMeetingRoom] & 1) == 0)
          {
            v133 = v28;
            v29 = [v27 endDate];
            v134 = [v125 objectForKeyedSubscript:v29];
            if (!v134)
            {
              v134 = objc_alloc_init(MEMORY[0x277D22BD0]);
              [v125 setObject:? forKeyedSubscript:?];
            }

            v131 = v29;
            v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v31 = [v27 attendees];
            v32 = [v31 valueForKey:@"name"];
            v33 = v32;
            v132 = v26;
            if (v32)
            {
              v34 = v32;
            }

            else
            {
              v34 = objc_alloc_init(MEMORY[0x277CBEB98]);
            }

            v35 = v34;

            v36 = MEMORY[0x277D276E8];
            v130 = v35;
            v37 = [v35 allObjects];
            v38 = [v36 cluesWithPeoples:v37 serviceManager:self->_serviceManager];

            v164 = 0u;
            v165 = 0u;
            v162 = 0u;
            v163 = 0u;
            v39 = v38;
            v40 = [v39 countByEnumeratingWithState:&v162 objects:v173 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v163;
              do
              {
                for (i = 0; i != v41; ++i)
                {
                  if (*v163 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v44 = *(*(&v162 + 1) + 8 * i);
                  [v44 prepareIfNeeded];
                  v45 = [v44 person];
                  v46 = v45;
                  if (v45 && ([v45 isMe] & 1) == 0)
                  {
                    v47 = [v46 CNIdentifier];
                    if (v47)
                    {
                      [v30 addObject:v47];
                    }

                    else
                    {
                      v48 = [(PGMemoryTrigger *)self loggingConnection];
                      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
                      {
                        v49 = [v44 name];
                        *buf = 138477827;
                        *&buf[4] = v49;
                        _os_log_impl(&dword_22F0FC000, v48, OS_LOG_TYPE_INFO, "[PGMemoryTriggerUpcomingCalendarEvent] person.CNIdentifier found to be nil for person %{private}@", buf, 0xCu);
                      }

                      self = v140;
                    }
                  }
                }

                v41 = [v39 countByEnumeratingWithState:&v162 objects:v173 count:16];
              }

              while (v41);
            }

            v129 = [PGGraphPersonNodeCollection personNodesForContactIdentifiers:v30 inGraph:v138];
            v50 = [v129 momentNodes];
            v51 = [v50 memoryNodes];
            v52 = [v51 collectionByIntersecting:v124];
            v128 = [v52 elementIdentifiers];

            v127 = objc_alloc_init(MEMORY[0x277D22BD0]);
            v161 = 0.0;
            v160 = 0.0;
            v53 = [v27 location];
            [v53 coordinate];
            v160 = v54;
            v161 = v55;

            v56 = [(CLSLocationCache *)self->_locationCache placemarksForLocationCoordinate:v160 withHorizontalAccuracy:v161 queryAccuracy:v24, v25];
            v126 = v56;
            if ([v56 count])
            {
              v158 = 0u;
              v159 = 0u;
              v156 = 0u;
              v157 = 0u;
              v57 = v56;
              v58 = [v57 countByEnumeratingWithState:&v156 objects:v172 count:16];
              if (v58)
              {
                v59 = v58;
                v60 = 0;
                v61 = *v157;
                v62 = 1.79769313e308;
                do
                {
                  for (j = 0; j != v59; ++j)
                  {
                    if (*v157 != v61)
                    {
                      objc_enumerationMutation(v57);
                    }

                    v64 = *(*(&v156 + 1) + 8 * j);
                    *&buf[8] = 0;
                    *buf = 0;
                    v65 = [v64 location];
                    [v65 coordinate];
                    *buf = v66;
                    *&buf[8] = v67;

                    CLLocationCoordinate2DGetDistanceFrom();
                    if (v68 < v62)
                    {
                      v69 = v68;
                      v70 = v64;

                      v62 = v69;
                      v60 = v70;
                    }
                  }

                  v59 = [v57 countByEnumeratingWithState:&v156 objects:v172 count:16];
                }

                while (v59);
              }

              else
              {
                v60 = 0;
                v62 = 1.79769313e308;
              }

              v73 = [v60 locality];

              if (v73)
              {
                v74 = [v60 locality];
                v75 = [(PGGraphNamedLocationNodeCollection *)PGGraphLocationCityNodeCollection locationNodeWithName:v74 inGraph:v138];

                v76 = [v60 administrativeArea];

                if (v76)
                {
                  v77 = [v60 administrativeArea];
                  v76 = [(PGGraphNamedLocationNodeCollection *)PGGraphLocationStateNodeCollection locationNodeWithName:v77 inGraph:v138];
                }

                v78 = [v60 ISOcountryCode];

                if (v78)
                {
                  v79 = [v60 ISOcountryCode];
                  v78 = [(PGGraphNamedLocationNodeCollection *)PGGraphLocationCountryNodeCollection locationNodeWithName:v79 inGraph:v138];
                }

                v151[0] = MEMORY[0x277D85DD0];
                v151[1] = 3221225472;
                v151[2] = __93__PGMemoryTriggerUpcomingCalendarEvent_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
                v151[3] = &unk_278888EE0;
                v154 = v76 != 0;
                v155 = v78 != 0;
                v152 = v76;
                v153 = v78;
                v80 = v76;
                v81 = v78;
                v82 = [v75 filteredCollectionUsingBlock:v151];
                v83 = v75;
                v84 = v82;

                v85 = [v84 momentNodes];
                v86 = [v60 location];
                [v86 coordinate];
                v88 = v87;
                v90 = v89;

                v145[0] = MEMORY[0x277D85DD0];
                v145[1] = 3221225472;
                v145[2] = __93__PGMemoryTriggerUpcomingCalendarEvent_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2;
                v145[3] = &unk_278888F30;
                v148 = v88;
                v149 = v90;
                v150 = v62;
                v71 = v127;
                v146 = v127;
                v147 = v124;
                [v85 enumerateIdentifiersAsCollectionsWithBlock:v145];

                v72 = v128;
              }

              else
              {
                v84 = [(PGMemoryTrigger *)self loggingConnection];
                if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
                {
                  *buf = 134283777;
                  *&buf[4] = v160;
                  *&buf[12] = 2049;
                  *&buf[14] = v161;
                  _os_log_impl(&dword_22F0FC000, v84, OS_LOG_TYPE_INFO, "[PGMemoryTriggerUpcomingCalendarEvent] closestPlacemark.locality is nil, not going to try matching location for event coordinate (%{private}f, %{private}f)", buf, 0x16u);
                }

                v71 = v127;
                v72 = v128;
              }

              v20 = v123;
              v23 = v120;
              v22 = v121;
            }

            else
            {
              v60 = [(PGMemoryTrigger *)self loggingConnection];
              if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
              {
                *buf = 134283777;
                *&buf[4] = v160;
                *&buf[12] = 2049;
                *&buf[14] = v161;
                _os_log_impl(&dword_22F0FC000, v60, OS_LOG_TYPE_INFO, "[PGMemoryTriggerUpcomingCalendarEvent] No placemarks found matching event coordinate (%{private}f, %{private}f)", buf, 0x16u);
              }

              v20 = v123;
              v23 = v120;
              v22 = v121;
              v71 = v127;
              v72 = v128;
            }

            v91 = [v72 identifierSetByIntersectingIdentifierSet:v71];
            v92 = [v91 count];
            v93 = v91;
            if (!v92)
            {
              [v134 unionWithIdentifierSet:v72];
              v93 = v71;
            }

            [v134 unionWithIdentifierSet:v93];

            v26 = v132;
            v28 = v133;
            v10 = v122;
          }

          objc_autoreleasePoolPop(v28);
          ++v26;
        }

        while (v26 != v22);
        v22 = [v20 countByEnumeratingWithState:&v166 objects:v174 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v139 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v94 = v125;
    v95 = [v94 countByEnumeratingWithState:&v141 objects:v170 count:16];
    if (v95)
    {
      v96 = v95;
      v135 = *v142;
      do
      {
        for (k = 0; k != v96; ++k)
        {
          if (*v142 != v135)
          {
            objc_enumerationMutation(v94);
          }

          v98 = *(*(&v141 + 1) + 8 * k);
          v99 = [v94 objectForKeyedSubscript:v98];
          v100 = [(MAElementCollection *)[PGGraphMemoryNodeCollection alloc] initWithGraph:v138 elementIdentifiers:v99];
          v101 = MEMORY[0x277D27690];
          v102 = [v98 dateByAddingTimeInterval:-259200.0];
          v103 = [v101 localDateFromUniversalDate:v102 inTimeZone:v136];

          v104 = MEMORY[0x277D27690];
          v105 = [v98 dateByAddingTimeInterval:-86400.0];
          v106 = [v104 localDateFromUniversalDate:v105 inTimeZone:v136];

          v107 = objc_opt_class();
          v108 = [v137 timeZone];
          v109 = [v107 validityIntervalForLocalStartDate:v103 localEndDate:v106 timeZone:v108];

          v110 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v100 withValidityInterval:v109];
          [v139 addObjectsFromArray:v110];
        }

        v96 = [v94 countByEnumeratingWithState:&v141 objects:v170 count:16];
      }

      while (v96);
    }

    v10 = v122;
    if ([v122 isCancelledWithProgress:1.0])
    {
      v20 = v123;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 178;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingCalendarEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
      v8 = v137;
      v9 = v138;
      v111 = v139;
    }

    else
    {
      v111 = v139;
      v11 = v111;
      v8 = v137;
      v9 = v138;
      v20 = v123;
    }

LABEL_77:
  }

  v112 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __93__PGMemoryTriggerUpcomingCalendarEvent_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48))
  {
    v5 = [v3 stateNodes];
    v6 = [v5 intersectsCollection:*(a1 + 32)];
  }

  else
  {
    v6 = 1;
  }

  if (*(a1 + 49))
  {
    v7 = [v4 countryNodes];
    v8 = [v7 intersectsCollection:*(a1 + 40)];
  }

  else
  {
    v8 = 1;
  }

  return v6 & v8;
}

void __93__PGMemoryTriggerUpcomingCalendarEvent_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 cityNodes];
  v6 = [v5 count];

  if (v6 <= 1)
  {
    v7 = [v4 addressNodes];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __93__PGMemoryTriggerUpcomingCalendarEvent_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_3;
    v8[3] = &unk_278888F08;
    v12 = *(a1 + 48);
    v13 = *(a1 + 64);
    v9 = *(a1 + 32);
    v10 = v4;
    v11 = *(a1 + 40);
    [v7 enumerateIdentifiersAsCollectionsWithBlock:v8];
  }
}

void __93__PGMemoryTriggerUpcomingCalendarEvent_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  [a3 centroidCoordinate];
  v13 = v6;
  v14 = v7;
  CLLocationCoordinate2DGetDistanceFrom();
  if (v8 <= *(a1 + 72) + 0.01)
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) memoryNodes];
    v11 = [v10 collectionByIntersecting:*(a1 + 48)];
    v12 = [v11 elementIdentifiers];
    [v9 unionWithIdentifierSet:v12];

    *a4 = 1;
  }
}

- (PGMemoryTriggerUpcomingCalendarEvent)initWithServiceManager:(id)a3 locationCache:(id)a4 loggingConnection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PGMemoryTriggerUpcomingCalendarEvent;
  v11 = [(PGMemoryTrigger *)&v14 initWithLoggingConnection:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_serviceManager, a3);
    objc_storeStrong(&v12->_locationCache, a4);
  }

  return v12;
}

@end