@interface PPHealthKitImporter
- (PPHealthKitImporter)initWithDatabase:(id)database;
- (void)importHealthKitDataWithShouldContinueBlock:(id)block;
@end

@implementation PPHealthKitImporter

- (void)importHealthKitDataWithShouldContinueBlock:(id)block
{
  blockCopy = block;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v20 = dispatch_semaphore_create(0);
  if (*(v27 + 24) == 1)
  {
    v19 = &v39;
    v17 = &v37;
    v18 = &v32;
    while (2)
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x2050000000;
      v4 = getHKAnchoredObjectQueryClass_softClass;
      v33 = getHKAnchoredObjectQueryClass_softClass;
      if (!getHKAnchoredObjectQueryClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        v36 = 3221225472;
        v37 = __getHKAnchoredObjectQueryClass_block_invoke;
        v38 = &unk_2789792D0;
        v39 = &v30;
        __getHKAnchoredObjectQueryClass_block_invoke(buf);
        v4 = *(v31 + 24);
      }

      v5 = v4;
      _Block_object_dispose(&v30, 8);
      v6 = [v4 alloc];
      v30 = 0;
      v31 = &v30;
      v32 = 0x2050000000;
      v7 = getHKObjectTypeClass_softClass;
      v33 = getHKObjectTypeClass_softClass;
      if (!getHKObjectTypeClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        v36 = 3221225472;
        v37 = __getHKObjectTypeClass_block_invoke;
        v38 = &unk_2789792D0;
        v39 = &v30;
        __getHKObjectTypeClass_block_invoke(buf);
        v7 = *(v31 + 24);
      }

      v8 = v7;
      _Block_object_dispose(&v30, 8);
      workoutType = [v7 workoutType];
      if (self)
      {
        *buf = 0;
        v36 = buf;
        v37 = 0x3032000000;
        v38 = __Block_byref_object_copy__22649;
        v39 = __Block_byref_object_dispose__22650;
        v40 = 0;
        db = self->_db;
        v30 = MEMORY[0x277D85DD0];
        v31 = 3221225472;
        v32 = __38__PPHealthKitImporter__getSavedAnchor__block_invoke;
        v33 = &unk_278977E98;
        v34 = buf;
        [(PPSQLDatabase *)db readTransactionWithClient:6 block:&v30];
        v11 = *(v36 + 40);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        v11 = 0;
      }

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __66__PPHealthKitImporter_importHealthKitDataWithShouldContinueBlock___block_invoke;
      v22[3] = &unk_278977E50;
      v25 = &v26;
      v12 = blockCopy;
      v24 = v12;
      v22[4] = self;
      v13 = v20;
      v23 = v13;
      v14 = [v6 initWithType:workoutType predicate:0 anchor:v11 limit:50 resultsHandler:v22];

      [(HKHealthStore *)self->_healthStore executeQuery:v14];
      while ([MEMORY[0x277D425A0] waitForSemaphore:v13 timeoutSeconds:1.0] == 1)
      {
        if ((blockCopy[2](v12) & 1) == 0)
        {
          v15 = pp_default_log_handle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: HealthKitImporter: deferring", buf, 2u);
          }

          [(HKHealthStore *)self->_healthStore stopQuery:v14];
          goto LABEL_19;
        }
      }

      if (*(v27 + 24) == 1)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  _Block_object_dispose(&v26, 8);
}

void __66__PPHealthKitImporter_importHealthKitDataWithShouldContinueBlock___block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v245 = *MEMORY[0x277D85DE8];
  v66 = a2;
  v69 = a3;
  v68 = a4;
  v67 = a5;
  v71 = a6;
  objc_opt_self();
  v10 = +[PPSettings sharedInstance];
  v77 = *MEMORY[0x277D3A618];
  LOBYTE(a5) = [v10 bundleIdentifierIsEnabledForDonation:?];

  if ((a5 & 1) == 0)
  {
    v11 = pp_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_INFO, "Portrait maintenance: HealthKitImporter disabled due to settings.", &buf, 2u);
    }

    goto LABEL_8;
  }

  if (!v71)
  {
    if (![v69 count] && !objc_msgSend(v68, "count"))
    {
      v11 = pp_default_log_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_INFO, "Portrait maintenance: HealthKitImporter: All Workouts have been imported", &buf, 2u);
      }

      goto LABEL_8;
    }

    if (((*(a1[6] + 16))() & 1) == 0)
    {
      goto LABEL_9;
    }

    if (a1[4])
    {
      v91 = 0;
      v14 = [v68 _pas_mappedArrayWithTransform:&__block_literal_global_17];
      v15 = +[PPLocalTopicStore defaultStore];
      *&v87 = 0;
      v16 = [v15 deleteAllTopicsFromSourcesWithBundleId:v77 documentIds:v14 deletedCount:&v91 error:&v87];
      v17 = v87;

      v18 = pp_default_log_handle();
      v19 = v18;
      if (v16)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v91;
          _os_log_impl(&dword_23224A000, v19, OS_LOG_TYPE_INFO, "Portrait maintenance: HealthKitImporter: deleted %tu workouts", &buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_error_impl(&dword_23224A000, v19, OS_LOG_TYPE_ERROR, "Portrait maintenance: HealthKitImporter: failed to delete workouts, %@", &buf, 0xCu);
      }
    }

    if (((*(a1[6] + 16))() & 1) == 0)
    {
      goto LABEL_9;
    }

    v20 = a1[4];
    v65 = v69;
    if (v20)
    {
      v21 = pp_default_log_handle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [v65 count];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v22;
        _os_log_impl(&dword_23224A000, v21, OS_LOG_TYPE_INFO, "Portrait maintenance: HealthKitImporter: Received donation of %tu workout(s)", &buf, 0xCu);
      }

      objc_opt_self();
      v91 = &unk_2847847B8;
      v92 = &unk_2847847D0;
      *&buf = &unk_284785628;
      *(&buf + 1) = &unk_284785640;
      v93 = &unk_2847847E8;
      v94 = &unk_284784800;
      v169 = &unk_284785658;
      v170 = &unk_284785670;
      v95 = &unk_284784818;
      v96 = &unk_284784830;
      v171 = &unk_284785688;
      v172 = &unk_2847856A0;
      v97 = &unk_284784848;
      v98 = &unk_284784860;
      v173 = &unk_2847856B8;
      v174 = &unk_2847856D0;
      v99 = &unk_284784878;
      v100 = &unk_284784890;
      v175 = &unk_2847856E8;
      v176 = &unk_284785700;
      v101 = &unk_2847848A8;
      v102 = &unk_2847848C0;
      v177 = &unk_284785718;
      v178 = &unk_284785730;
      v103 = &unk_2847848D8;
      v104 = &unk_2847848F0;
      v179 = &unk_284785748;
      v180 = &unk_284785760;
      v105 = &unk_284784908;
      v106 = &unk_284784920;
      v181 = &unk_284785778;
      v182 = &unk_284785790;
      v107 = &unk_284784938;
      v108 = &unk_284784950;
      v183 = &unk_2847857A8;
      v184 = &unk_2847857C0;
      v109 = &unk_284784968;
      v110 = &unk_284784980;
      v185 = &unk_2847857D8;
      v186 = &unk_2847857F0;
      v111 = &unk_284784998;
      v112 = &unk_2847849B0;
      v187 = &unk_284785808;
      v188 = &unk_284785820;
      v113 = &unk_2847849C8;
      v114 = &unk_2847849E0;
      v189 = &unk_284785838;
      v190 = &unk_284785850;
      v115 = &unk_2847849F8;
      v116 = &unk_284784A10;
      v191 = &unk_284785868;
      v192 = &unk_284785880;
      v117 = &unk_284784A28;
      v118 = &unk_284784A40;
      v193 = &unk_284785898;
      v194 = &unk_2847858B0;
      v119 = &unk_284784A58;
      v120 = &unk_284784A70;
      v195 = &unk_2847858C8;
      v196 = &unk_2847858E0;
      v121 = &unk_284784A88;
      v122 = &unk_284784AA0;
      v197 = &unk_2847858F8;
      v198 = &unk_284785910;
      v123 = &unk_284784AB8;
      v124 = &unk_284784AD0;
      v199 = &unk_284785928;
      v200 = &unk_284785940;
      v125 = &unk_284784AE8;
      v126 = &unk_284784B00;
      v201 = &unk_284785958;
      v202 = &unk_284785970;
      v127 = &unk_284784B18;
      v128 = &unk_284784B30;
      v203 = &unk_284785988;
      v204 = &unk_2847859A0;
      v129 = &unk_284784B48;
      v130 = &unk_284784B60;
      v205 = &unk_2847859B8;
      v206 = &unk_2847859D0;
      v131 = &unk_284784B78;
      v132 = &unk_284784B90;
      v207 = &unk_2847859E8;
      v208 = &unk_284785A00;
      v133 = &unk_284784BA8;
      v134 = &unk_284784BC0;
      v209 = &unk_284785A18;
      v210 = &unk_284785A30;
      v135 = &unk_284784BD8;
      v136 = &unk_284784BF0;
      v211 = &unk_284785A48;
      v212 = &unk_284785A60;
      v137 = &unk_284784C08;
      v138 = &unk_284784C20;
      v213 = &unk_284785A78;
      v214 = &unk_284785A90;
      v139 = &unk_284784C38;
      v140 = &unk_284784C50;
      v215 = &unk_284785AA8;
      v216 = &unk_284785AC0;
      v141 = &unk_284784C68;
      v142 = &unk_284784C80;
      v217 = &unk_284785AD8;
      v218 = &unk_284785AF0;
      v143 = &unk_284784C98;
      v144 = &unk_284784CB0;
      v219 = &unk_284785B08;
      v220 = &unk_284785B20;
      v145 = &unk_284784CC8;
      v146 = &unk_284784CE0;
      v221 = &unk_284785B38;
      v222 = &unk_284785B50;
      v147 = &unk_284784CF8;
      v148 = &unk_284784D10;
      v223 = &unk_284785B68;
      v224 = &unk_284785B80;
      v149 = &unk_284784D28;
      v150 = &unk_284784D40;
      v225 = &unk_284785B98;
      v226 = &unk_284785BB0;
      v151 = &unk_284784D58;
      v152 = &unk_284784D70;
      v227 = &unk_284785BC8;
      v228 = &unk_284785BE0;
      v153 = &unk_284784D88;
      v154 = &unk_284784DA0;
      v229 = &unk_284785BF8;
      v230 = &unk_284785C10;
      v155 = &unk_284784DB8;
      v231 = &unk_284785C28;
      v156 = &unk_284784DD0;
      v232 = &unk_284785C40;
      v157 = &unk_284784DE8;
      v233 = &unk_284785C58;
      v158 = &unk_284784E00;
      v234 = &unk_284785C70;
      v159 = &unk_284784E18;
      v235 = &unk_284785C88;
      v160 = &unk_284784E30;
      v236 = &unk_284785CA0;
      v161 = &unk_284784E48;
      v237 = &unk_284785CB8;
      v162 = &unk_284784E60;
      v238 = &unk_284785CD0;
      v163 = &unk_284784E78;
      v239 = &unk_284785CE8;
      v164 = &unk_284784E90;
      v240 = &unk_284785D00;
      v165 = &unk_284784EA8;
      v241 = &unk_284785D18;
      v166 = &unk_284784EC0;
      v242 = &unk_284785D30;
      v167 = &unk_284784ED8;
      v243 = &unk_284785D48;
      v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:&v91 count:77];
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      obj = v65;
      v76 = [obj countByEnumeratingWithState:&v83 objects:&v91 count:16];
      if (v76)
      {
        v73 = *MEMORY[0x277D3A6E8];
        v74 = *v84;
        do
        {
          for (i = 0; i != v76; ++i)
          {
            if (*v84 != v74)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v83 + 1) + 8 * i);
            context = objc_autoreleasePoolPush();
            v24 = pp_default_log_handle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = [v23 workoutActivityType];
              LODWORD(buf) = 134217984;
              *(&buf + 4) = v25;
              _os_log_impl(&dword_23224A000, v24, OS_LOG_TYPE_INFO, "Portrait maintenance: HealthKitImporter: Workout Type %tu", &buf, 0xCu);
            }

            v26 = v23;
            v80 = v75;
            v27 = objc_opt_new();
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "workoutActivityType")}];
            v29 = [v80 objectForKeyedSubscript:v28];

            v30 = [v29 countByEnumeratingWithState:&v87 objects:&buf count:16];
            if (v30)
            {
              v31 = *v88;
              do
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v88 != v31)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v33 = *(*(&v87 + 1) + 8 * j);
                  if (v33)
                  {
                    v34 = [objc_alloc(MEMORY[0x277D3A530]) initWithTopicIdentifier:v33];
                    v35 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v34 score:0.5];
                    [v27 addObject:v35];
                  }

                  else
                  {
                    v34 = pp_default_log_handle();
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                    {
                      v36 = [v26 workoutActivityType];
                      *v244 = 134217984;
                      *&v244[4] = v36;
                      _os_log_impl(&dword_23224A000, v34, OS_LOG_TYPE_INFO, "Portrait maintenance: HealthKitImporter: No unmapping found for workout activity type to QID: %tu", v244, 0xCu);
                    }
                  }
                }

                v30 = [v29 countByEnumeratingWithState:&v87 objects:&buf count:16];
              }

              while (v30);
            }

            v37 = v26;
            v38 = v27;
            v39 = [v37 workoutEvents];
            v40 = v39;
            if (v39)
            {
              v41 = [v39 lastObject];
              v42 = [v41 dateInterval];

              v43 = objc_alloc(MEMORY[0x277D3A4E0]);
              [v42 duration];
              LODWORD(v45) = vcvtad_u64_f64(v44);
              v81 = [v43 initWithDwellTimeSeconds:0 lengthSeconds:v45 lengthCharacters:0 donationCount:1 contactHandleCount:0 flags:0];
              v79 = [v42 endDate];
            }

            else
            {
              v79 = 0;
              v81 = 0;
            }

            v46 = objc_alloc(MEMORY[0x277D3A4D8]);
            v47 = [v37 UUID];
            v48 = [v47 UUIDString];
            if (v79)
            {
              v49 = [v46 initWithBundleId:v77 groupId:v73 documentId:v48 date:v79 relevanceDate:0 contactHandles:0 language:0 metadata:v81];
            }

            else
            {
              v50 = objc_opt_new();
              v49 = [v46 initWithBundleId:v77 groupId:v73 documentId:v48 date:v50 relevanceDate:0 contactHandles:0 language:0 metadata:v81];
            }

            v51 = +[PPLocalTopicStore defaultStore];
            *&v87 = 0;
            v52 = [v51 donateTopics:v38 source:v49 algorithm:9 cloudSync:0 sentimentScore:0 exactMatchesInSourceText:&v87 error:0.0];

            v53 = v87;
            if (v52)
            {
              v54 = +[PPLocalTopicStore defaultStore];
              *v244 = 0;
              v55 = [v54 flushDonationsWithError:v244];
              v56 = *v244;

              if ((v55 & 1) == 0)
              {
                v57 = pp_default_log_handle();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = v56;
                  _os_log_impl(&dword_23224A000, v57, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: HealthKitImporter: Warning: failed to flush: %@", &buf, 0xCu);
                }
              }

              v58 = pp_default_log_handle();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
              {
                v59 = [v37 workoutActivityType];
                LODWORD(buf) = 134217984;
                *(&buf + 4) = v59;
                _os_log_impl(&dword_23224A000, v58, OS_LOG_TYPE_INFO, "Portrait maintenance: HealthKitImporter: Donated topics for workout activity type: %tu", &buf, 0xCu);
              }
            }

            else
            {
              v56 = pp_default_log_handle();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v53;
                _os_log_error_impl(&dword_23224A000, v56, OS_LOG_TYPE_ERROR, "Portrait maintenance: HealthKitImporter: Error donating topics %@", &buf, 0xCu);
              }
            }

            objc_autoreleasePoolPop(context);
          }

          v76 = [obj countByEnumeratingWithState:&v83 objects:&v91 count:16];
        }

        while (v76);
      }
    }

    if (v67)
    {
      v60 = a1[4];
      v61 = v67;
      if (v60)
      {
        v91 = 0;
        v92 = &v91;
        v93 = 0x2020000000;
        LOBYTE(v94) = 0;
        v62 = *(v60 + 16);
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v169 = __35__PPHealthKitImporter__saveAnchor___block_invoke;
        v170 = &unk_278978DE0;
        v63 = v61;
        v171 = v63;
        v172 = &v91;
        [v62 writeTransactionWithClient:6 block:&buf];
        LOBYTE(v62) = *(v92 + 24);

        _Block_object_dispose(&v91, 8);
        if ((v62 & 1) == 0)
        {
          v64 = pp_default_log_handle();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_23224A000, v64, OS_LOG_TYPE_INFO, "Portrait maintenance: HealthKitImporter: saved new anchor", &buf, 2u);
          }

          goto LABEL_73;
        }
      }

      else
      {
      }
    }

    v64 = pp_default_log_handle();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_23224A000, v64, OS_LOG_TYPE_ERROR, "Portrait maintenance: HealthKitImporter: failed to save new anchor", &buf, 2u);
    }

LABEL_73:

    v12 = a1;
    goto LABEL_10;
  }

  v11 = pp_default_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v71;
    _os_log_error_impl(&dword_23224A000, v11, OS_LOG_TYPE_ERROR, "Portrait maintenance: HealthKitImporter: %@", &buf, 0xCu);
  }

LABEL_8:

LABEL_9:
  v12 = a1;
  *(*(a1[7] + 8) + 24) = 0;
LABEL_10:
  dispatch_semaphore_signal(v12[5]);

  v13 = *MEMORY[0x277D85DE8];
}

void __35__PPHealthKitImporter__saveAnchor___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v9];
  v6 = v9;
  if (v5)
  {
    [PPSQLKVStore storeBlob:v5 forKey:@"workoutQueryAnchorIdentifiers" transaction:v3];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v7 = pp_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "Portrait maintenance: HealthKitImporter: _workoutQueryAnchorIdentifiers: failed to serialize HKQueryAnchor: %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

id __46__PPHealthKitImporter__removeDeletedWorkouts___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 UUID];
  v3 = [v2 UUIDString];

  return v3;
}

void __38__PPHealthKitImporter__getSavedAnchor__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [PPSQLKVStore loadBlobForKey:@"workoutQueryAnchorIdentifiers" transaction:v3];
  if (v4)
  {
    v5 = MEMORY[0x277CCAAC8];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v6 = getHKQueryAnchorClass_softClass;
    v18 = getHKQueryAnchorClass_softClass;
    if (!getHKQueryAnchorClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v20 = __getHKQueryAnchorClass_block_invoke;
      v21 = &unk_2789792D0;
      v22 = &v15;
      __getHKQueryAnchorClass_block_invoke(&buf);
      v6 = v16[3];
    }

    v7 = v6;
    _Block_object_dispose(&v15, 8);
    v14 = 0;
    v8 = [v5 unarchivedObjectOfClass:v6 fromData:v4 error:&v14];
    v9 = v14;
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v8;

    if (!*(*(*(a1 + 32) + 8) + 40))
    {
      v12 = pp_default_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v9;
        _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "Portrait maintenance: HealthKitImporter: _workoutQueryAnchorIdentifiers: failed to deserialize HKQueryAnchor: %@", &buf, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (PPHealthKitImporter)initWithDatabase:(id)database
{
  databaseCopy = database;
  v12.receiver = self;
  v12.super_class = PPHealthKitImporter;
  v6 = [(PPHealthKitImporter *)&v12 init];
  if (v6)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v7 = getHKHealthStoreClass_softClass_22668;
    v17 = getHKHealthStoreClass_softClass_22668;
    if (!getHKHealthStoreClass_softClass_22668)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __getHKHealthStoreClass_block_invoke_22669;
      v13[3] = &unk_2789792D0;
      v13[4] = &v14;
      __getHKHealthStoreClass_block_invoke_22669(v13);
      v7 = v15[3];
    }

    v8 = v7;
    _Block_object_dispose(&v14, 8);
    v9 = objc_opt_new();
    healthStore = v6->_healthStore;
    v6->_healthStore = v9;

    objc_storeStrong(&v6->_db, database);
  }

  return v6;
}

@end