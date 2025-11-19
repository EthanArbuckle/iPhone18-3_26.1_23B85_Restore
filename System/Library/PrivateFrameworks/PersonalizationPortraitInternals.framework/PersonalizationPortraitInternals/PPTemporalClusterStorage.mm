@interface PPTemporalClusterStorage
+ (id)defaultStorage;
+ (id)enrichEntities:(id)a3 mediaRecords:(id)a4;
- (PPTemporalClusterStorage)initWithEventStore:(id)a3 topicStore:(id)a4 entityStore:(id)a5 locationStore:(id)a6 contactStore:(id)a7;
- (id)createTemporalClusterForEvent:(void *)a3 startDate:(void *)a4 endDate:(void *)a5 error:;
- (id)eventsWithStartDate:(id)a3 endDate:(id)a4;
- (id)rankedTemporalClusterForStartDate:(id)a3 endDate:(id)a4 error:(id *)a5;
@end

@implementation PPTemporalClusterStorage

- (id)eventsWithStartDate:(id)a3 endDate:(id)a4
{
  eventStore = self->_eventStore;
  v7 = a4;
  v8 = a3;
  v9 = [(PPLocalEventStore *)eventStore eventsFromDate:v8 toDate:v7];
  v10 = [(PPLocalEventStore *)self->_eventStore nlEventsFromDate:v8 toDate:v7];

  v11 = [v9 arrayByAddingObjectsFromArray:v10];

  return v11;
}

- (id)rankedTemporalClusterForStartDate:(id)a3 endDate:(id)a4 error:(id *)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  v35 = 0;
  v11 = [(PPTemporalClusterStorage *)self createTemporalClusterForEvent:v8 startDate:v9 endDate:&v35 error:?];
  v12 = v35;
  v29 = v10;
  [v10 addObject:v11];

  v13 = self;
  v26 = v9;
  v27 = v8;
  [(PPTemporalClusterStorage *)self eventsWithStartDate:v8 endDate:v9];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v14 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        v18 = v12;
        if (*v32 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        v20 = [v19 startDate];
        v21 = [v19 endDate];
        v30 = v18;
        v22 = [(PPTemporalClusterStorage *)v13 createTemporalClusterForEvent:v19 startDate:v20 endDate:v21 error:&v30];
        v12 = v30;

        [v29 addObject:v22];
        if (a5 && v12)
        {
          v23 = v12;
          *a5 = v12;
        }
      }

      v15 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v15);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)createTemporalClusterForEvent:(void *)a3 startDate:(void *)a4 endDate:(void *)a5 error:
{
  v216 = *MEMORY[0x277D85DE8];
  v137 = a2;
  v8 = a3;
  v9 = a4;
  v139 = v8;
  v140 = v9;
  if (!a1)
  {
    v129 = 0;
    goto LABEL_115;
  }

  v10 = v9;
  v11 = objc_opt_new();
  [v11 setFromDate:v8];
  [v11 setToDate:v10];
  [v11 setScoringDate:v10];
  [v11 setFilterByRelevanceDate:1];
  v153 = a1;
  v12 = a1[2];
  v201 = 0;
  v136 = v11;
  v13 = [v12 rankedTopicsWithQuery:v11 error:&v201];
  v14 = v201;
  if (!v13)
  {
    v15 = pp_temporal_clusters_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_23224A000, v15, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage: Topics Store query returned nil.", &buf, 2u);
    }

    if (v14)
    {
      v16 = pp_temporal_clusters_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v14;
        _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage: Topics Store query error: %@", &buf, 0xCu);
      }

      if (a5)
      {
        v17 = v14;
        *a5 = v14;
      }
    }

    v13 = MEMORY[0x277CBEBF8];
  }

  v142 = objc_opt_new();
  [v142 setFromDate:v139];
  [v142 setToDate:v140];
  [v142 setScoringDate:v140];
  [v142 setFilterByRelevanceDate:1];
  v18 = objc_autoreleasePoolPush();
  v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_284785298, 0}];
  objc_autoreleasePoolPop(v18);
  [v142 setExcludingAlgorithms:v19];

  v20 = v153[3];
  v200 = v14;
  v144 = [v20 rankedNamedEntitiesWithQuery:v142 error:&v200];
  v21 = v200;

  if (!v144)
  {
    v22 = pp_temporal_clusters_log_handle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_23224A000, v22, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage: Named Entities Store query returned nil.", &buf, 2u);
    }

    if (v21)
    {
      v23 = pp_temporal_clusters_log_handle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v21;
        _os_log_error_impl(&dword_23224A000, v23, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage: Named Entities Store query error: %@", &buf, 0xCu);
      }

      if (a5)
      {
        v24 = v21;
        *a5 = v21;
      }
    }

    v144 = MEMORY[0x277CBEBF8];
  }

  v141 = objc_opt_new();
  [v141 setFromDate:v139];
  [v141 setToDate:v140];
  [v141 setScoringDate:v140];
  [v141 setFilterByRelevanceDate:1];
  v194 = 0;
  v195 = &v194;
  v196 = 0x3032000000;
  v197 = __Block_byref_object_copy__26836;
  v198 = __Block_byref_object_dispose__26837;
  v199 = objc_opt_new();
  v25 = v153[4];
  v193 = v21;
  v192[0] = MEMORY[0x277D85DD0];
  v192[1] = 3221225472;
  v192[2] = __82__PPTemporalClusterStorage_createTemporalClusterForEvent_startDate_endDate_error___block_invoke;
  v192[3] = &unk_278979568;
  v192[4] = &v194;
  [v25 iterRankedLocationsWithQuery:v141 error:&v193 block:v192];
  v26 = v193;

  if (![v195[5] count] && v26)
  {
    v27 = pp_temporal_clusters_log_handle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v26;
      _os_log_error_impl(&dword_23224A000, v27, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage: Locations Store query error: %@", &buf, 0xCu);
    }

    if (a5)
    {
      v28 = v26;
      *a5 = v26;
    }
  }

  v29 = objc_opt_new();
  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  obj = v13;
  v30 = [obj countByEnumeratingWithState:&v188 objects:v208 count:16];
  if (v30)
  {
    v147 = *v189;
    do
    {
      v160 = 0;
      v150 = v30;
      do
      {
        if (*v189 != v147)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v188 + 1) + 8 * v160);
        context = objc_autoreleasePoolPush();
        v32 = [v31 item];
        v33 = [v32 mostRelevantRecord];
        v34 = [v33 source];
        v35 = [v34 metadata];
        v36 = [v35 contactHandleCount] == 0;

        if (!v36)
        {
          v37 = v153[5];
          v38 = [v31 item];
          v39 = [v38 mostRelevantRecord];
          v40 = [v39 source];
          v187 = v26;
          v41 = [v37 contactHandlesForSource:v40 error:&v187];
          v154 = v187;

          if (!v41)
          {
            v42 = pp_temporal_clusters_log_handle();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v154;
              _os_log_error_impl(&dword_23224A000, v42, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage: Contact Store query error: %@", &buf, 0xCu);
            }
          }

          v185 = 0u;
          v186 = 0u;
          v183 = 0u;
          v184 = 0u;
          v43 = v41;
          v44 = [v43 countByEnumeratingWithState:&v183 objects:v207 count:16];
          if (v44)
          {
            v45 = *v184;
            do
            {
              for (i = 0; i != v44; ++i)
              {
                if (*v184 != v45)
                {
                  objc_enumerationMutation(v43);
                }

                v47 = *(*(&v183 + 1) + 8 * i);
                v48 = MEMORY[0x277CCABB0];
                v49 = [v29 objectForKeyedSubscript:v47];
                [v49 doubleValue];
                v51 = v50;
                [v31 score];
                v53 = [v48 numberWithDouble:v51 + v52];
                [v29 setObject:v53 forKeyedSubscript:v47];
              }

              v44 = [v43 countByEnumeratingWithState:&v183 objects:v207 count:16];
            }

            while (v44);
          }

          v26 = v154;
        }

        objc_autoreleasePoolPop(context);
        ++v160;
      }

      while (v160 != v150);
      v30 = [obj countByEnumeratingWithState:&v188 objects:v208 count:16];
    }

    while (v30);
  }

  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v145 = v144;
  v54 = [v145 countByEnumeratingWithState:&v179 objects:v206 count:16];
  if (v54)
  {
    v148 = *v180;
    do
    {
      v161 = 0;
      v151 = v54;
      do
      {
        if (*v180 != v148)
        {
          objc_enumerationMutation(v145);
        }

        v55 = *(*(&v179 + 1) + 8 * v161);
        contexta = objc_autoreleasePoolPush();
        v56 = [v55 item];
        v57 = [v56 mostRelevantRecord];
        v58 = [v57 source];
        v59 = [v58 metadata];
        v60 = [v59 contactHandleCount] == 0;

        if (!v60)
        {
          v61 = v153[5];
          v62 = [v55 item];
          v63 = [v62 mostRelevantRecord];
          v64 = [v63 source];
          v178 = v26;
          v65 = [v61 contactHandlesForSource:v64 error:&v178];
          v155 = v178;

          if (!v65)
          {
            v66 = pp_temporal_clusters_log_handle();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v155;
              _os_log_error_impl(&dword_23224A000, v66, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage: Contact Store query error: %@", &buf, 0xCu);
            }
          }

          v176 = 0u;
          v177 = 0u;
          v174 = 0u;
          v175 = 0u;
          v67 = v65;
          v68 = [v67 countByEnumeratingWithState:&v174 objects:v205 count:16];
          if (v68)
          {
            v69 = *v175;
            do
            {
              for (j = 0; j != v68; ++j)
              {
                if (*v175 != v69)
                {
                  objc_enumerationMutation(v67);
                }

                v71 = *(*(&v174 + 1) + 8 * j);
                v72 = MEMORY[0x277CCABB0];
                v73 = [v29 objectForKeyedSubscript:v71];
                [v73 doubleValue];
                v75 = v74;
                [v55 score];
                v77 = [v72 numberWithDouble:v75 + v76];
                [v29 setObject:v77 forKeyedSubscript:v71];
              }

              v68 = [v67 countByEnumeratingWithState:&v174 objects:v205 count:16];
            }

            while (v68);
          }

          v26 = v155;
        }

        objc_autoreleasePoolPop(contexta);
        ++v161;
      }

      while (v161 != v151);
      v54 = [v145 countByEnumeratingWithState:&v179 objects:v206 count:16];
    }

    while (v54);
  }

  v78 = v137;
  if (v78)
  {
    v79 = v78;
    if ([v78 suggestedEventCategory] != 8)
    {
      v135 = MEMORY[0x277CBEBF8];
LABEL_91:
      v78 = v79;
      goto LABEL_92;
    }

    v80 = objc_opt_new();
    v81 = v153[1];
    v82 = [v79 eventIdentifier];
    v83 = [v81 customObjectForKey:*MEMORY[0x277D3A760] eventIdentifier:v82];

    if (!v83 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v92 = 0;
      goto LABEL_82;
    }

    v84 = v83;
    v85 = [v84 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
    if (v85)
    {
      v86 = [v84 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v88 = [v84 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
        v89 = [v88 firstObject];
        v90 = [v89 objectForKeyedSubscript:@"reservationFor"];

        if (v90)
        {
          v91 = [v89 objectForKeyedSubscript:@"reservationFor"];
          v92 = [v91 objectForKeyedSubscript:@"name"];

LABEL_81:
LABEL_82:
          if ([v92 length])
          {
            v93 = [v92 lowercaseString];

            v94 = objc_opt_new();
            v95 = objc_autoreleasePoolPush();
            v96 = objc_alloc(MEMORY[0x277CBEB98]);
            v97 = [v96 initWithObjects:{*MEMORY[0x277D3A660], 0}];
            objc_autoreleasePoolPop(v95);
            [v94 setMatchingSourceBundleIds:v97];

            v98 = v153[3];
            v202 = 0;
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v212 = __53__PPTemporalClusterStorage_fetchRelatedMediaRecords___block_invoke;
            v213 = &unk_2789795D8;
            v92 = v93;
            v214 = v92;
            v215 = v80;
            LOBYTE(v98) = [v98 iterNamedEntityRecordsWithQuery:v94 error:&v202 block:&buf];
            v99 = v202;
            if ((v98 & 1) == 0)
            {
              v100 = pp_temporal_clusters_log_handle();
              if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
              {
                *v209 = 138412290;
                v210 = v99;
                _os_log_error_impl(&dword_23224A000, v100, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage fetchRelatedMediaItems: Entity Store query error: %@", v209, 0xCu);
              }

              v135 = MEMORY[0x277CBEBF8];
              goto LABEL_90;
            }
          }

          else
          {
            v99 = 0;
          }

          v135 = [v80 copy];
LABEL_90:

          goto LABEL_91;
        }
      }
    }

    v88 = pp_temporal_clusters_log_handle();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_23224A000, v88, OS_LOG_TYPE_DEBUG, "PPTemporalClusterStorage ticketReservationFromMetadata: Couldn't fetch anything from the reservationFor schemaOrg property.", &buf, 2u);
    }

    v92 = 0;
    goto LABEL_81;
  }

  v135 = MEMORY[0x277CBEBF8];
LABEL_92:
  v132 = v78;

  v134 = [v135 _pas_mappedArrayWithTransform:&__block_literal_global_26843];
  v133 = [PPTemporalClusterStorage enrichEntities:v145 mediaRecords:v135];
  v172 = 0u;
  v173 = 0u;
  v171 = 0u;
  v170 = 0u;
  v143 = v195[5];
  v101 = [v143 countByEnumeratingWithState:&v170 objects:v204 count:16];
  if (v101)
  {
    v149 = *v171;
    do
    {
      v162 = 0;
      v152 = v101;
      do
      {
        if (*v171 != v149)
        {
          objc_enumerationMutation(v143);
        }

        v102 = *(*(&v170 + 1) + 8 * v162);
        contextb = objc_autoreleasePoolPush();
        v103 = [v102 location];
        v104 = [v103 mostRelevantRecord];
        v105 = [v104 source];
        v106 = [v105 metadata];
        v107 = [v106 contactHandleCount] == 0;

        if (!v107)
        {
          v108 = v153[5];
          v109 = [v102 location];
          v110 = [v109 mostRelevantRecord];
          v111 = [v110 source];
          v169 = v26;
          v112 = [v108 contactHandlesForSource:v111 error:&v169];
          v156 = v169;

          if (!v112)
          {
            v113 = pp_temporal_clusters_log_handle();
            if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v156;
              _os_log_error_impl(&dword_23224A000, v113, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage: Contact Store query error: %@", &buf, 0xCu);
            }
          }

          v167 = 0u;
          v168 = 0u;
          v165 = 0u;
          v166 = 0u;
          v114 = v112;
          v115 = [v114 countByEnumeratingWithState:&v165 objects:v203 count:16];
          if (v115)
          {
            v116 = *v166;
            do
            {
              for (k = 0; k != v115; ++k)
              {
                if (*v166 != v116)
                {
                  objc_enumerationMutation(v114);
                }

                v118 = *(*(&v165 + 1) + 8 * k);
                v119 = MEMORY[0x277CCABB0];
                v120 = [v29 objectForKeyedSubscript:v118];
                [v120 doubleValue];
                v122 = v121;
                [v102 score];
                v124 = [v119 numberWithDouble:v122 + v123];
                [v29 setObject:v124 forKeyedSubscript:v118];
              }

              v115 = [v114 countByEnumeratingWithState:&v165 objects:v203 count:16];
            }

            while (v115);
          }

          v26 = v156;
        }

        objc_autoreleasePoolPop(contextb);
        ++v162;
      }

      while (v162 != v152);
      v101 = [v143 countByEnumeratingWithState:&v170 objects:v204 count:16];
    }

    while (v101);
  }

  if (a5)
  {
    v125 = v26;
    *a5 = v26;
  }

  v126 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v29, "count")}];
  v163[0] = MEMORY[0x277D85DD0];
  v163[1] = 3221225472;
  v163[2] = __82__PPTemporalClusterStorage_createTemporalClusterForEvent_startDate_endDate_error___block_invoke_32;
  v163[3] = &unk_2789795B0;
  v127 = v126;
  v164 = v127;
  [v29 enumerateKeysAndObjectsUsingBlock:v163];
  [v127 sortUsingSelector:sel_reverseCompare_];
  v128 = objc_alloc(MEMORY[0x277D3A510]);
  v129 = [v128 initWithEvent:v132 startDate:v139 endDate:v140 score:obj topics:v133 entities:v195[5] locations:1.0 contacts:MEMORY[0x277CBEBF8] contactHandles:v127 mediaItems:v134];

  _Block_object_dispose(&v194, 8);
LABEL_115:

  v130 = *MEMORY[0x277D85DE8];

  return v129;
}

void __82__PPTemporalClusterStorage_createTemporalClusterForEvent_startDate_endDate_error___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277D3A490];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  [v6 doubleValue];
  v10 = v9;

  v11 = [v8 initWithContactHandle:v7 score:v10];
  [v4 addObject:v11];
}

id __82__PPTemporalClusterStorage_createTemporalClusterForEvent_startDate_endDate_error___block_invoke_30(uint64_t a1, void *a2)
{
  v2 = [a2 source];
  v3 = [v2 documentId];

  return v3;
}

void __53__PPTemporalClusterStorage_fetchRelatedMediaRecords___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 entity];
  v4 = [v3 name];
  v5 = [v4 lowercaseString];

  if (([*(a1 + 32) localizedCaseInsensitiveContainsString:v5] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3A578], "jaroSimilarityForString:other:", v5, *(a1 + 32)), v6 > 0.9))
  {
    [*(a1 + 40) addObject:v7];
  }
}

- (PPTemporalClusterStorage)initWithEventStore:(id)a3 topicStore:(id)a4 entityStore:(id)a5 locationStore:(id)a6 contactStore:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = PPTemporalClusterStorage;
  v17 = [(PPTemporalClusterStorage *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_eventStore, a3);
    objc_storeStrong(&v18->_topicStore, a4);
    objc_storeStrong(&v18->_entityStore, a5);
    objc_storeStrong(&v18->_locationStore, a6);
    objc_storeStrong(&v18->_contactStore, a7);
  }

  return v18;
}

+ (id)enrichEntities:(id)a3 mediaRecords:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v54;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v54 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v53 + 1) + 8 * i) entity];
        v13 = [v12 name];
        [v7 addObject:v13];
      }

      v9 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v9);
  }

  v14 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v44 = v5;
  v15 = [v44 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v50;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(v44);
        }

        v19 = *(*(&v49 + 1) + 8 * j);
        v20 = objc_autoreleasePoolPush();
        v21 = [v19 item];
        v22 = [v21 name];
        v23 = [v7 containsObject:v22];

        if (v23)
        {
          v24 = objc_alloc(MEMORY[0x277D3A498]);
          v25 = [v19 item];
          v26 = [v24 initWithItem:v25 score:1.0];
          [v14 addObject:v26];

          v27 = [v19 item];
          v28 = [v27 name];
          [v7 removeObject:v28];
        }

        else
        {
          [v14 addObject:v19];
        }

        objc_autoreleasePoolPop(v20);
      }

      v16 = [v44 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v16);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v29 = obj;
  v30 = [v29 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v46;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v46 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v45 + 1) + 8 * k);
        v35 = [v34 entity];
        v36 = [v35 name];
        v37 = [v7 containsObject:v36];

        if (v37)
        {
          v38 = objc_alloc(MEMORY[0x277D3A498]);
          v39 = [v34 entity];
          v40 = [v38 initWithItem:v39 score:1.0];
          [v14 addObject:v40];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v31);
  }

  v41 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)defaultStorage
{
  v2 = +[PPLocalEventStore defaultStore];
  v3 = +[PPLocalTopicStore defaultStore];
  v4 = +[PPLocalNamedEntityStore defaultStore];
  v5 = +[PPLocalLocationStore defaultStore];
  v6 = +[PPLocalContactStore defaultStore];
  v7 = v6;
  if (!v2)
  {
    v9 = pp_temporal_clusters_log_handle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v10 = "PPTemporalClusterStorage: Failed to obtain default Events Store";
LABEL_19:
    _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
    goto LABEL_20;
  }

  if (!v3)
  {
    v9 = pp_temporal_clusters_log_handle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v10 = "PPTemporalClusterStorage: Failed to obtain default Topics Store";
    goto LABEL_19;
  }

  if (!v4)
  {
    v9 = pp_temporal_clusters_log_handle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v10 = "PPTemporalClusterStorage: Failed to obtain default Named Entities Store";
    goto LABEL_19;
  }

  if (!v5)
  {
    v9 = pp_temporal_clusters_log_handle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v10 = "PPTemporalClusterStorage: Failed to obtain default Locations Store";
    goto LABEL_19;
  }

  if (!v6)
  {
    v9 = pp_temporal_clusters_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "PPTemporalClusterStorage: Failed to obtain default Contacts Store";
      goto LABEL_19;
    }

LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PPTemporalClusterStorage_defaultStorage__block_invoke;
  block[3] = &unk_278979540;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v7;
  if (defaultStorage__pasOnceToken9 != -1)
  {
    dispatch_once(&defaultStorage__pasOnceToken9, block);
  }

  v8 = defaultStorage__pasExprOnceResult_26886;

  v9 = v13;
LABEL_21:

  return v8;
}

void __42__PPTemporalClusterStorage_defaultStorage__block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[PPTemporalClusterStorage alloc] initWithEventStore:a1[4] topicStore:a1[5] entityStore:a1[6] locationStore:a1[7] contactStore:a1[8]];
  v4 = defaultStorage__pasExprOnceResult_26886;
  defaultStorage__pasExprOnceResult_26886 = v3;

  objc_autoreleasePoolPop(v2);
}

@end