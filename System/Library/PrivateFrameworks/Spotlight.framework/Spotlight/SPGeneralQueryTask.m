@interface SPGeneralQueryTask
+ (id)contactEntityFromQueryContext:(id)a3;
- (SPClientSession)session;
- (id)displayedText;
- (id)initForSession:(id)a3 withQuery:(id)a4;
- (id)retainAndMergeSections:(id)a3 forState:(unint64_t)a4;
- (id)searchString;
- (id)unsafeSections;
- (id)unsafeSessionEntityString;
- (void)addSections:(id)a3 delayedTopHit:(BOOL)a4;
- (void)cancel;
- (void)clear;
- (void)handleOptionsForNewSections:(id)a3;
- (void)mergeRelatedContentFromSections:(id)a3 bundlesToMerge:(id)a4 mergedSectionId:(id)a5;
- (void)mergeSections;
- (void)processAppResults:(id)a3 maxAppResults:(unint64_t)a4 section:(id)a5 topHitsIndex:(unint64_t *)a6;
- (void)relatedContentSectionMerging:(id)a3;
- (void)searchDaemonQuery:(id)a3 encounteredError:(id)a4;
- (void)searchDaemonQuery:(id)a3 gotResultSet:(id)a4 replace:(BOOL)a5 partiallyComplete:(BOOL)a6 priorityFastPath:(BOOL)a7 update:(BOOL)a8 complete:(BOOL)a9 delayedTopHit:(BOOL)a10 unchanged:(BOOL)a11 forceStable:(BOOL)a12 blendingDuration:(double)a13 geoEntityString:(id)a14 supportedAppScopes:(id)a15 showMoreInAppInfo:(id)a16;
- (void)start;
- (void)truncateSuggestionsSectionToFit:(id)a3;
- (void)updateResultsWithContactHeader;
@end

@implementation SPGeneralQueryTask

+ (id)contactEntityFromQueryContext:(id)a3
{
  if (a3)
  {
    v3 = [a3 searchEntities];
    v4 = [v3 firstObject];

    if ([v4 isContactEntitySearch])
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)initForSession:(id)a3 withQuery:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SPQueryTask *)self init];
  v9 = v8;
  if (v8)
  {
    [(SPQueryTask *)v8 setQuery:v7];
    [(SPGeneralQueryTask *)v9 setSession:v6];
  }

  return v9;
}

- (void)updateResultsWithContactHeader
{
  v11 = [(SPQueryTask *)self previousQueryContext];
  v3 = [objc_opt_class() contactEntityFromQueryContext:v11];
  v4 = [(SPQueryTask *)self query];
  v5 = [v4 queryContext];

  v6 = [objc_opt_class() contactEntityFromQueryContext:v5];
  if (updateResultsWithContactHeader_onceToken_0 != -1)
  {
    [SPGeneralQueryTask updateResultsWithContactHeader];
  }

  if ((updateResultsWithContactHeader_isPeopleViewService_0 & 1) != 0 || v6 && (!v3 || ([v6 hasSameContactAsContactEntity:v3] & 1) == 0))
  {
    v7 = objc_alloc(MEMORY[0x277D4BEB8]);
    v8 = [v7 initWithSections:MEMORY[0x277CBEBF8]];
    v9 = [(SPQueryTask *)self token];
    LODWORD(v10) = 0;
    [SPGeneralQueryTask searchDaemonQuery:"searchDaemonQuery:gotResultSet:replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:" gotResultSet:v9 replace:v8 partiallyComplete:1 priorityFastPath:1 update:0 complete:0 delayedTopHit:0.0 unchanged:v10 forceStable:0 blendingDuration:0 geoEntityString:0 supportedAppScopes:? showMoreInAppInfo:?];
  }
}

void __52__SPGeneralQueryTask_updateResultsWithContactHeader__block_invoke()
{
  v1 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v1 processName];
  updateResultsWithContactHeader_isPeopleViewService_0 = [v0 isEqualToString:@"PeopleViewService"];
}

- (void)start
{
  if ([(SPGeneralQueryTask *)self started])
  {
    [SPGeneralQueryTask start];
  }

  [(SPGeneralQueryTask *)self setNewQuery:1];
  v3 = [MEMORY[0x277CC3468] sharedInstance];
  [v3 logWithBundleID:@"com.apple.SpotlightUI" indexOperation:3 itemCount:1 reason:@"UserInput"];

  v4 = [(SPQueryTask *)self queryProcessor];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__SPGeneralQueryTask_start__block_invoke;
  block[3] = &unk_279CFE2D8;
  block[4] = self;
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(v4, v5);
}

void __27__SPGeneralQueryTask_start__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) started])
  {
    __27__SPGeneralQueryTask_start__block_invoke_cold_1();
  }

  [*(a1 + 32) setStarted:1];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [*(a1 + 32) setMutableSections:v2];

  v3 = objc_alloc(MEMORY[0x277D4C270]);
  v4 = [*(a1 + 32) query];
  v5 = [v3 initWithEvent:@"com.apple.searchd.frontend.query.start" timeInterval:0 queryId:{objc_msgSend(v4, "queryIdent")}];

  v6 = [MEMORY[0x277D4BEA8] sharedConnection];
  v7 = [*(a1 + 32) query];
  v8 = [*(a1 + 32) queryProcessor];
  v9 = [v6 startQuery:v7 queue:v8 delegate:*(a1 + 32)];
  [*(a1 + 32) setToken:v9];

  [*(a1 + 32) updateResultsWithContactHeader];
  v10 = [MEMORY[0x277D4BEB0] sharedManager];
  v11 = [*(a1 + 32) query];
  [v10 reportFeedback:v5 queryId:{objc_msgSend(v11, "queryIdent")}];

  v12 = SPLogForSPLogCategoryTelemetry();
  v13 = [*(a1 + 32) token];
  v14 = [v13 queryID];

  if (v14 && os_signpost_enabled(v12))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_26B71B000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "queryUI", " enableTelemetry=YES ", v16, 2u);
  }

  v15 = [*(a1 + 32) token];
  [v15 queryID];
  kdebug_trace();
}

- (void)clear
{
  v4 = [MEMORY[0x277D4BEA8] sharedConnection];
  v3 = [(SPQueryTask *)self token];
  [v4 clearInput:v3];
}

- (void)cancel
{
  v3 = [MEMORY[0x277CC3468] sharedInstance];
  [v3 logWithBundleID:@"com.apple.SpotlightUI" indexOperation:4 itemCount:1 reason:@"UserInput"];

  v5 = [MEMORY[0x277D4BEA8] sharedConnection];
  v4 = [(SPQueryTask *)self token];
  [v5 cancelQuery:v4];
}

- (id)searchString
{
  v2 = [(SPQueryTask *)self query];
  v3 = [v2 queryContext];
  v4 = [v3 searchString];

  return v4;
}

- (void)mergeSections
{
  v4 = self;
  v208 = *MEMORY[0x277D85DE8];
  v5 = [(SPQueryTask *)self queryProcessor];
  dispatch_assert_queue_V2(v5);

  v162 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v152 = v4;
  v7 = [(SPQueryTask *)v4 mutableSections];
  v8 = [v7 firstObject];

  v9 = [v8 bundleIdentifier];
  LOBYTE(v4) = [v9 isEqualToString:@"com.apple.spotlight.tophits"];

  if ((v4 & 1) == 0)
  {

    v8 = 0;
  }

  v153 = v8;
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v10 = [v152 mutableSections];
  v11 = [v10 copy];

  obj = v11;
  v164 = [v11 countByEnumeratingWithState:&v194 objects:v207 count:16];
  if (v164)
  {
    v163 = *v195;
    v172 = *MEMORY[0x277D65B98];
    v171 = *MEMORY[0x277D65A00];
    v154 = v6;
    v155 = *MEMORY[0x277D65B80];
    do
    {
      for (i = 0; i != v164; ++i)
      {
        if (*v195 != v163)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v194 + 1) + 8 * i);
        if (![v13 resultsCount])
        {
          continue;
        }

        v14 = [v13 title];
        v165 = i;
        if (v14)
        {
          v15 = v13;
          v16 = [v13 title];
          v17 = [v16 uppercaseString];
        }

        else
        {
          v16 = [v13 bundleIdentifier];
          if (!v16)
          {
            v19 = 0;
            goto LABEL_14;
          }

          v15 = v13;
          v17 = [v13 bundleIdentifier];
        }

        v18 = v17;
        v19 = [v162 objectForKey:v17];

        v13 = v15;
LABEL_14:

        if (([v19 doNotFold] & 1) != 0 || objc_msgSend(v13, "doNotFold"))
        {

LABEL_17:
          [v6 addObject:v13];
          v20 = [v13 title];

          if (v20)
          {
            [v13 title];
            v22 = v21 = v13;
            v23 = [v22 uppercaseString];
            [v162 setObject:v21 forKey:v23];

            i = v165;
            goto LABEL_142;
          }

          v24 = [v13 bundleIdentifier];

          i = v165;
          if (v24)
          {
            v25 = [v13 bundleIdentifier];
            v26 = v13;
            v22 = v25;
            [v162 setObject:v26 forKey:v25];
            goto LABEL_142;
          }

          continue;
        }

        if (!v19)
        {
          goto LABEL_17;
        }

        v27 = v19;
        v28 = [v6 indexOfObject:v27];
        v170 = v27;
        if (v28 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_141;
        }

        v29 = v28;
        v30 = [v13 maxInitiallyVisibleResults];
        if (v30 <= [v27 maxInitiallyVisibleResults])
        {
          v31 = v27;
        }

        else
        {
          v31 = v13;
        }

        [v27 setMaxInitiallyVisibleResults:{objc_msgSend(v31, "maxInitiallyVisibleResults")}];
        v158 = v13;
        [v13 setMaxInitiallyVisibleResults:{objc_msgSend(v27, "maxInitiallyVisibleResults")}];
        [v6 replaceObjectAtIndex:v29 withObject:v27];
        v173 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v32 = [v27 resultSet];
        [v32 objectAtIndexedSubscript:0];
        v34 = v33 = v27;
        v35 = [v34 sectionBundleIdentifier];
        v36 = v35;
        v37 = v155;
        if (v35)
        {
          v157 = v35;
        }

        else
        {
          v38 = [v33 resultSet];
          v39 = [v38 objectAtIndexedSubscript:0];
          v157 = [v39 applicationBundleIdentifier];
        }

        v40 = [v158 resultSet];
        v41 = [v40 objectAtIndexedSubscript:0];
        v42 = [v41 sectionBundleIdentifier];
        v43 = v42;
        if (v42)
        {
          v156 = v42;
        }

        else
        {
          v44 = [v158 resultSet];
          v45 = [v44 objectAtIndexedSubscript:0];
          v156 = [v45 applicationBundleIdentifier];
        }

        if (([v157 isEqualToString:@"com.apple.Maps"] & 1) != 0 || objc_msgSend(v156, "isEqualToString:", @"com.apple.Maps"))
        {
          v46 = v158;
          if ([v157 isEqualToString:@"com.apple.Maps"])
          {
            v47 = [v170 results];
            v48 = [v47 copy];

            [v170 clearResults];
            v49 = [v158 results];

            if (v49)
            {
              v50 = [v158 results];
              [v170 addResultsFromArray:v50];
            }

            [v158 clearResults];
            if (v48)
            {
              [v158 addResultsFromArray:v48];
            }

            v51 = [v158 domain];
            [v158 setDomain:{objc_msgSend(v170, "domain")}];
            [v170 setDomain:v51];
            v52 = [v158 title];
            v53 = [v170 title];
            [v158 setTitle:v53];

            v54 = v52;
            [v170 setTitle:v52];
LABEL_77:
          }

          goto LABEL_78;
        }

        if ([v170 domain] != 2)
        {
          v55 = [v170 resultSet];
          v56 = [v55 objectAtIndexedSubscript:0];
          v57 = [v56 applicationBundleIdentifier];
          v58 = v57;
          if (v57)
          {
            v48 = v57;
          }

          else
          {
            v59 = [v170 resultSet];
            v60 = [v59 objectAtIndexedSubscript:0];
            v48 = [v60 sectionBundleIdentifier];
          }

          v61 = [v158 resultSet];
          v62 = [v61 objectAtIndexedSubscript:0];
          v63 = [v62 applicationBundleIdentifier];
          v64 = v63;
          if (v63)
          {
            v161 = v63;
          }

          else
          {
            v65 = [v158 resultSet];
            v66 = [v65 objectAtIndexedSubscript:0];
            v161 = [v66 sectionBundleIdentifier];
          }

          v67 = [v158 title];
          v166 = [v67 uppercaseString];

          v192 = 0u;
          v193 = 0u;
          v190 = 0u;
          v191 = 0u;
          v168 = [v153 resultSet];
          v68 = [v168 countByEnumeratingWithState:&v190 objects:v206 count:16];
          if (!v68)
          {
            v54 = v161;
            goto LABEL_76;
          }

          v69 = v68;
          v70 = *v191;
          v160 = v48;
          v54 = v161;
          while (1)
          {
            for (j = 0; j != v69; ++j)
            {
              if (*v191 != v70)
              {
                objc_enumerationMutation(v168);
              }

              v72 = *(*(&v190 + 1) + 8 * j);
              v73 = [v72 title];
              if (!v73)
              {
                goto LABEL_72;
              }

              if (v48)
              {
                v3 = [v72 resultBundleId];
                if ([v3 isEqualToString:v48])
                {
                  goto LABEL_60;
                }
              }

              if (v54)
              {
                v2 = [v72 resultBundleId];
                if ([v2 isEqualToString:v54])
                {

                  if (v48)
                  {
LABEL_60:
                  }

LABEL_71:
                  [v173 addObject:v73];
                  goto LABEL_72;
                }

                if (!v166)
                {
                  v74 = 0;
LABEL_67:

                  goto LABEL_68;
                }
              }

              else if (!v166)
              {
                v74 = 0;
                goto LABEL_68;
              }

              v75 = v2;
              v76 = v3;
              v77 = [v72 sectionHeader];
              v78 = [v77 uppercaseString];
              v74 = [v78 isEqual:v166];

              v3 = v76;
              v2 = v75;
              v48 = v160;
              v54 = v161;
              if (v161)
              {
                goto LABEL_67;
              }

LABEL_68:
              if (v48)
              {
              }

              if (v74)
              {
                goto LABEL_71;
              }

LABEL_72:
            }

            v69 = [v168 countByEnumeratingWithState:&v190 objects:v206 count:16];
            if (!v69)
            {
LABEL_76:

              v46 = v158;
              goto LABEL_77;
            }
          }
        }

        v46 = v158;
LABEL_78:
        v169 = v3;
        v79 = [v46 bundleIdentifier];
        v80 = [v79 isEqualToString:*MEMORY[0x277D4BF10]];

        if (v80)
        {
          v167 = v2;
          v81 = objc_opt_new();
          v186 = 0u;
          v187 = 0u;
          v188 = 0u;
          v189 = 0u;
          v82 = [v170 resultSet];
          v83 = [v82 countByEnumeratingWithState:&v186 objects:v205 count:16];
          if (v83)
          {
            v84 = v83;
            v85 = *v187;
            do
            {
              for (k = 0; k != v84; ++k)
              {
                if (*v187 != v85)
                {
                  objc_enumerationMutation(v82);
                }

                v87 = *(*(&v186 + 1) + 8 * k);
                v88 = [v87 resultBundleId];
                if (v88)
                {
                  v89 = v88;
                  v90 = [v87 completion];

                  if (v90)
                  {
                    v91 = [v87 resultBundleId];
                    v204[0] = v91;
                    v92 = [v87 completion];
                    v204[1] = v92;
                    v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v204 count:2];

                    [v81 setObject:v87 forKeyedSubscript:v93];
                  }
                }
              }

              v84 = [v82 countByEnumeratingWithState:&v186 objects:v205 count:16];
            }

            while (v84);
          }

          v184 = 0u;
          v185 = 0u;
          v182 = 0u;
          v183 = 0u;
          v94 = [v158 resultSet];
          v95 = [v94 countByEnumeratingWithState:&v182 objects:v203 count:16];
          if (v95)
          {
            v96 = v95;
            v97 = *v183;
            do
            {
              for (m = 0; m != v96; ++m)
              {
                if (*v183 != v97)
                {
                  objc_enumerationMutation(v94);
                }

                v99 = *(*(&v182 + 1) + 8 * m);
                v100 = [v99 resultBundleId];
                if (v100)
                {
                  v101 = v100;
                  v102 = [v99 completion];

                  if (v102)
                  {
                    v103 = [v99 resultBundleId];
                    v202[0] = v103;
                    v104 = [v99 completion];
                    v202[1] = v104;
                    v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v202 count:2];
                    v106 = [v81 objectForKeyedSubscript:v105];

                    if (!v106)
                    {
                      [v170 addResults:v99];
                    }
                  }
                }
              }

              v96 = [v94 countByEnumeratingWithState:&v182 objects:v203 count:16];
            }

            while (v96);
          }

          v37 = v155;
          v2 = v167;
        }

        v180 = 0u;
        v181 = 0u;
        v178 = 0u;
        v179 = 0u;
        v107 = [v170 resultSet];
        v108 = [v107 countByEnumeratingWithState:&v178 objects:v201 count:16];
        if (v108)
        {
          v109 = v108;
          v110 = *v179;
          do
          {
            v111 = 0;
            do
            {
              if (*v179 != v110)
              {
                objc_enumerationMutation(v107);
              }

              v112 = *(*(&v178 + 1) + 8 * v111);
              v113 = [v112 resultBundleId];
              v114 = [v113 isEqualToString:v37];

              if (v114)
              {
                v115 = [v112 contentURL];
              }

              else
              {
                v116 = [v112 resultBundleId];
                v117 = [v116 isEqualToString:v172];

                if (v117 || ([v112 contentType], v118 = objc_claimAutoreleasedReturnValue(), v119 = objc_msgSend(v118, "isEqualToString:", v171), v118, v119))
                {
                  v115 = [v112 identifier];
                }

                else
                {
                  v121 = [v112 title];
                  if (!v121)
                  {
                    goto LABEL_114;
                  }

                  v122 = v121;
                  v123 = [v112 title];
                  v124 = [v123 text];

                  if (!v124)
                  {
                    goto LABEL_114;
                  }

                  v115 = [v112 title];
                }
              }

              v120 = v115;
              if (v115)
              {
                [v173 addObject:v115];
              }

LABEL_114:
              ++v111;
            }

            while (v109 != v111);
            v125 = [v107 countByEnumeratingWithState:&v178 objects:v201 count:16];
            v109 = v125;
          }

          while (v125);
        }

        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        v126 = [v158 resultSet];
        v127 = [v126 countByEnumeratingWithState:&v174 objects:v200 count:16];
        if (!v127)
        {
          goto LABEL_140;
        }

        v128 = v127;
        v129 = *v175;
        do
        {
          v130 = 0;
          do
          {
            if (*v175 != v129)
            {
              objc_enumerationMutation(v126);
            }

            v131 = *(*(&v174 + 1) + 8 * v130);
            v132 = [v131 resultBundleId];
            v133 = [v132 isEqualToString:v37];

            if (v133)
            {
              v134 = [v131 contentURL];
            }

            else
            {
              v135 = [v131 resultBundleId];
              v136 = [v135 isEqualToString:v172];

              if (v136 || ([v131 contentType], v137 = objc_claimAutoreleasedReturnValue(), v138 = objc_msgSend(v137, "isEqualToString:", v171), v137, v138))
              {
                v134 = [v131 identifier];
              }

              else
              {
                v139 = [v131 title];
                if (!v139)
                {
                  goto LABEL_133;
                }

                v140 = [v131 title];
                v141 = [v140 text];

                if (!v141)
                {
                  v139 = 0;
                  goto LABEL_133;
                }

                v134 = [v131 title];
              }
            }

            v139 = v134;
            if (v134 && ([v173 containsObject:v134] & 1) == 0)
            {
              [v170 addResults:v131];
            }

LABEL_133:

            ++v130;
          }

          while (v128 != v130);
          v142 = [v126 countByEnumeratingWithState:&v174 objects:v200 count:16];
          v128 = v142;
        }

        while (v142);
LABEL_140:

        v6 = v154;
        v3 = v169;
LABEL_141:
        i = v165;
        v22 = v170;

LABEL_142:
      }

      v164 = [obj countByEnumeratingWithState:&v194 objects:v207 count:16];
    }

    while (v164);
  }

  if (_os_feature_enabled_impl() && [v6 count])
  {
    [v152 relatedContentSectionMerging:v6];
  }

  v143 = [v6 count];
  [v152 setMutableSections:v6];
  v144 = SPLogForSPLogCategoryDefault();
  v145 = *MEMORY[0x277D4BF50];
  v146 = os_log_type_enabled(v144, ((*MEMORY[0x277D4BF50] & 1) == 0));
  if (v143)
  {
    if (v146)
    {
      *buf = 138412290;
      v199 = v6;
      v147 = "Merge sections %@";
      v148 = (v145 & 1) == 0;
      v149 = v144;
      v150 = 12;
LABEL_153:
      _os_log_impl(&dword_26B71B000, v149, v148, v147, buf, v150);
    }
  }

  else if (v146)
  {
    *buf = 0;
    v147 = "Empty after updates";
    v148 = (v145 & 1) == 0;
    v149 = v144;
    v150 = 2;
    goto LABEL_153;
  }

  v151 = *MEMORY[0x277D85DE8];
}

- (void)relatedContentSectionMerging:(id)a3
{
  v4 = relatedContentSectionMerging__onceToken_0;
  v5 = a3;
  v7 = v5;
  if (v4 == -1)
  {
    v6 = v5;
  }

  else
  {
    [SPGeneralQueryTask relatedContentSectionMerging:];
    v6 = v7;
  }

  [(SPGeneralQueryTask *)self mergeRelatedContentFromSections:v6 bundlesToMerge:relatedContentSectionMerging__webBundles_0 mergedSectionId:SectionMergingBlendedWeb];
  [(SPGeneralQueryTask *)self mergeRelatedContentFromSections:v7 bundlesToMerge:relatedContentSectionMerging__musicBundles_0 mergedSectionId:SectionMergingBlendedMusic];
}

void __51__SPGeneralQueryTask_relatedContentSectionMerging___block_invoke()
{
  v13[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277D65B30];
  v13[0] = *MEMORY[0x277D65B80];
  v13[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = relatedContentSectionMerging__webBundles_0;
  relatedContentSectionMerging__webBundles_0 = v3;

  v5 = MEMORY[0x277CBEB98];
  v6 = *MEMORY[0x277D65B68];
  v12[0] = *MEMORY[0x277D65AD8];
  v12[1] = v6;
  v7 = *MEMORY[0x277D65AF0];
  v12[2] = *MEMORY[0x277D65B18];
  v12[3] = v7;
  v12[4] = *MEMORY[0x277D65B00];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:5];
  v9 = [v5 setWithArray:v8];
  v10 = relatedContentSectionMerging__musicBundles_0;
  relatedContentSectionMerging__musicBundles_0 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)mergeRelatedContentFromSections:(id)a3 bundlesToMerge:(id)a4 mergedSectionId:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB18] array];
  if ([v7 count])
  {
    v11 = 0;
    do
    {
      v12 = [v7 objectAtIndexedSubscript:v11];
      v13 = [v12 bundleIdentifier];
      v14 = [v12 results];
      if ([v14 count])
      {
        v15 = [v8 containsObject:v13];

        if (v15)
        {
          [v10 addObject:v12];
        }
      }

      else
      {
      }

      ++v11;
    }

    while (v11 < [v7 count]);
  }

  if ([v10 count])
  {
    v16 = [v10 objectAtIndexedSubscript:0];
    if ([v10 count] >= 2)
    {
      v43 = v16;
      v44 = v9;
      v17 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v10;
        _os_log_impl(&dword_26B71B000, v17, OS_LOG_TYPE_DEFAULT, "[release2023SectionMerging] Merging sections %@", buf, 0xCu);
      }

      v18 = [MEMORY[0x277CBEB18] array];
      v19 = [MEMORY[0x277CBEB18] array];
      if ([v10 count])
      {
        v20 = 0;
        do
        {
          v21 = [v10 objectAtIndexedSubscript:{v20, v43}];
          v22 = [v21 maxInitiallyVisibleResults];
          if (!v22)
          {
            v23 = [v21 results];
            v24 = [v23 count];

            if (v24 >= 3)
            {
              v22 = 3;
            }

            else
            {
              v22 = v24;
            }
          }

          v25 = [v21 results];
          v26 = [v25 count];

          if (v22 <= v26)
          {
            v27 = [v21 results];
            v28 = [v27 subarrayWithRange:{0, v22}];
            [v18 addObjectsFromArray:v28];
          }

          v29 = [v21 results];
          v30 = [v29 count];

          if (v30 > v22)
          {
            v31 = [v21 results];
            v32 = [v21 results];
            v33 = [v31 subarrayWithRange:{v22, objc_msgSend(v32, "count") - v22}];
            [v19 addObjectsFromArray:v33];
          }

          [v21 clearResults];

          ++v20;
        }

        while (v20 < [v10 count]);
      }

      v16 = v43;
      [v43 addResultsFromArray:{v18, v43}];
      [v16 addResultsFromArray:v19];
      [v16 setMaxInitiallyVisibleResults:{objc_msgSend(v18, "count")}];

      v9 = v44;
    }

    if ([v9 isEqualToString:SectionMergingBlendedWeb])
    {
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v34 localizedStringForKey:@"DOMAIN_TITLE_BLENDED_WEB" value:&stru_287C35638 table:@"SpotlightServices"];
      [v16 setTitle:v35];

      if ([v10 count] >= 2)
      {
        v36 = MEMORY[0x277D65B80];
LABEL_31:
        [v16 setPreMergeBundleIdentifier:*v36];
        goto LABEL_32;
      }
    }

    else
    {
      if (![v9 isEqualToString:SectionMergingBlendedMusic])
      {
LABEL_33:
        v40 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [v16 bundleIdentifier];
          *buf = 138412546;
          v46 = v41;
          v47 = 2112;
          v48 = v9;
          _os_log_impl(&dword_26B71B000, v40, OS_LOG_TYPE_DEFAULT, "[release2023SectionMerging] Section %@ becomes %@", buf, 0x16u);
        }

        [v16 setBundleIdentifier:v9];
        goto LABEL_36;
      }

      v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v38 = [v37 localizedStringForKey:@"DOMAIN_TITLE_BLENDED_MUSIC" value:&stru_287C35638 table:@"SpotlightServices"];
      [v16 setTitle:v38];

      if ([v10 count] >= 2)
      {
        v36 = MEMORY[0x277D65AD8];
        goto LABEL_31;
      }
    }

    v39 = [v16 bundleIdentifier];
    [v16 setPreMergeBundleIdentifier:v39];

LABEL_32:
    [v16 setMaxInitiallyVisibleResults:3];
    goto LABEL_33;
  }

LABEL_36:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)truncateSuggestionsSectionToFit:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SPQueryTask *)self maxUISuggestions];
  v6 = [v4 resultSet];
  v7 = objc_alloc(MEMORY[0x277CBEB40]);
  v8 = [v4 resultsCount];
  if (v8 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 initWithCapacity:v9];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        if ([v18 type] == 21)
        {
          if (v14)
          {
            v19 = v14;
          }

          else
          {
            v19 = v18;
          }

          v20 = v19;

          v14 = v20;
        }

        else if (v15 < v5)
        {
          [v10 addObject:v18];
          ++v15;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);

    if (v14)
    {
      if (v15 && v15 >= v5)
      {
        [v10 replaceObjectAtIndex:v15 - 1 withObject:v14];
      }

      else
      {
        [v10 addObject:v14];
      }
    }
  }

  else
  {

    v14 = 0;
  }

  [v4 setResultSet:{v10, v22}];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleOptionsForNewSections:(id)a3
{
  v231 = *MEMORY[0x277D85DE8];
  v157 = a3;
  v4 = SPLogForSPLogCategoryDefault();
  v5 = v4;
  if (*MEMORY[0x277D4BF48])
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    v7 = [MEMORY[0x277CCACC8] currentThread];
    *buf = 134218240;
    v228 = v7;
    v229 = 1024;
    v230 = [v157 count];
    _os_log_impl(&dword_26B71B000, v5, v6, "[%p] handleOptions for sections (%d)", buf, 0x12u);
  }

  v8 = SPLogForSPLogCategoryDefault();
  v9 = MEMORY[0x277D4BF50];
  v10 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v8, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    *buf = 138412290;
    v228 = v157;
    _os_log_impl(&dword_26B71B000, v8, ((v10 & 1) == 0), "handleOptionsForNewSections: %@", buf, 0xCu);
  }

  if ([v157 count])
  {
    v11 = [(SPQueryTask *)self queryProcessor];
    dispatch_assert_queue_V2(v11);

    v12 = SPLogForSPLogCategoryDefault();
    v13 = *v9;
    if (os_log_type_enabled(v12, ((v13 & 1) == 0)))
    {
      *buf = 138412290;
      v228 = v157;
      _os_log_impl(&dword_26B71B000, v12, ((v13 & 1) == 0), "handleOptionsForNewSections: %@", buf, 0xCu);
    }

    v179 = [MEMORY[0x277CBEB38] dictionary];
    v174 = [MEMORY[0x277CBEB38] dictionary];
    v177 = [MEMORY[0x277CBEB38] dictionary];
    v178 = [MEMORY[0x277CBEB38] dictionary];
    v176 = [MEMORY[0x277CBEB38] dictionary];
    v175 = [MEMORY[0x277CBEB38] dictionary];
    v14 = [(SPQueryTask *)self query];
    v15 = [v14 queryContext];
    v16 = [v15 searchEntities];
    v17 = [v16 firstObject];

    v156 = v17;
    v18 = [v17 isServerEntitySearch];
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v19 = [(SPQueryTask *)self mutableSections];
    v20 = [v19 countByEnumeratingWithState:&v214 objects:v226 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v215;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v215 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v214 + 1) + 8 * i);
          v25 = [v24 bundleIdentifier];
          v26 = [v25 hasPrefix:@"com.apple.parsec."];

          if (v26)
          {
            v27 = [v24 results];
            v28 = [v27 firstObject];
            [v24 setDoNotFold:{objc_msgSend(v28, "doNotFold")}];
          }

          createDedupeDicts(v24, v174, v179, v177, v178, v176, v175, v18);
        }

        v21 = [v19 countByEnumeratingWithState:&v214 objects:v226 count:16];
      }

      while (v21);
    }

    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v29 = v157;
    v30 = [v29 countByEnumeratingWithState:&v210 objects:v225 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v211;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v211 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v210 + 1) + 8 * j);
          v35 = [v34 bundleIdentifier];
          v36 = [v35 hasPrefix:@"com.apple.parsec."];

          if (v36)
          {
            v37 = [v34 results];
            v38 = [v37 firstObject];
            [v34 setDoNotFold:{objc_msgSend(v38, "doNotFold")}];
          }

          createDedupeDicts(v34, v174, v179, v177, v178, v176, v175, v18);
        }

        v31 = [v29 countByEnumeratingWithState:&v210 objects:v225 count:16];
      }

      while (v31);
    }

    v39 = [v29 count];
    if (v39)
    {
      v40 = v39;
      v170 = *MEMORY[0x277D65BA8];
      v166 = *MEMORY[0x277D65BC8];
      v155 = *MEMORY[0x277D65A00];
      v172 = *MEMORY[0x277D65A30];
      v164 = *MEMORY[0x277D65B28];
      v168 = *MEMORY[0x277D65B20];
      v160 = v29;
      while (1)
      {
        v41 = [v29 objectAtIndex:--v40];
        v42 = [v41 bundleIdentifier];
        v43 = [v42 hasPrefix:@"com.apple.parsec."];

        if (v43)
        {
          v44 = [v41 results];
          v45 = [v44 count];

          if (!v45)
          {
            goto LABEL_81;
          }

          v46 = [v41 results];
          v47 = [v46 copy];

          [v41 clearResults];
          v208 = 0u;
          v209 = 0u;
          v206 = 0u;
          v207 = 0u;
          v48 = v47;
          v49 = [v48 countByEnumeratingWithState:&v206 objects:v224 count:16];
          if (v49)
          {
            v50 = v49;
            v158 = v40;
            v51 = *v207;
            do
            {
              for (k = 0; k != v50; ++k)
              {
                if (*v207 != v51)
                {
                  objc_enumerationMutation(v48);
                }

                v53 = *(*(&v206 + 1) + 8 * k);
                v54 = [v41 bundleIdentifier];
                v55 = [v54 hasPrefix:@"com.apple.parsec."];

                if (!v55)
                {
                  goto LABEL_44;
                }

                v56 = [v53 storeIdentifier];
                if (v56)
                {
                  v57 = v56;
                  v58 = [v53 storeIdentifier];
                  v59 = [v179 objectForKey:v58];

                  if (v59)
                  {
                    goto LABEL_43;
                  }
                }

                v60 = [v53 calendarIdentifier];
                if (!v60)
                {
                  goto LABEL_44;
                }

                v61 = v60;
                v62 = [v53 calendarIdentifier];
                v59 = [v177 objectForKey:v62];

                if (v59)
                {
LABEL_43:
                  handleHiddenResult();
                }

                else
                {
LABEL_44:
                  [v41 addResults:v53];
                }
              }

              v50 = [v48 countByEnumeratingWithState:&v206 objects:v224 count:16];
            }

            while (v50);
            v40 = v158;
          }

          goto LABEL_80;
        }

        v63 = [v41 bundleIdentifier];
        v64 = [v63 isEqualToString:@"com.apple.dictionary"];

        if (v64)
        {
          v65 = [v41 results];
          v66 = [v65 count];

          if (!v66)
          {
            goto LABEL_81;
          }

          v67 = [v41 results];
          v68 = [v67 copy];

          [v41 clearResults];
          v204 = 0u;
          v205 = 0u;
          v202 = 0u;
          v203 = 0u;
          v48 = v68;
          v69 = [v48 countByEnumeratingWithState:&v202 objects:v223 count:16];
          if (v69)
          {
            v70 = v69;
            v71 = v40;
            v72 = *v203;
            do
            {
              for (m = 0; m != v70; ++m)
              {
                if (*v203 != v72)
                {
                  objc_enumerationMutation(v48);
                }

                v74 = *(*(&v202 + 1) + 8 * m);
                v75 = [v74 identifier];
                if (!v75 || ([v178 objectForKey:v75], v76 = objc_claimAutoreleasedReturnValue(), v76, !v76))
                {
                  [v41 addResults:v74];
                }
              }

              v70 = [v48 countByEnumeratingWithState:&v202 objects:v223 count:16];
            }

            while (v70);
            goto LABEL_79;
          }

          goto LABEL_80;
        }

        v77 = [v41 bundleIdentifier];
        if ([v77 isEqualToString:v170])
        {
          break;
        }

        v78 = [v41 bundleIdentifier];
        v79 = [v78 isEqualToString:v166];

        if (v79)
        {
          goto LABEL_64;
        }

        v97 = [v41 bundleIdentifier];
        v98 = [v97 isEqualToString:*MEMORY[0x277D4BF10]];

        if (v98)
        {
          v159 = v40;
          obj = objc_alloc_init(MEMORY[0x277CCAB58]);
          v194 = 0u;
          v195 = 0u;
          v196 = 0u;
          v197 = 0u;
          v99 = [v41 results];
          v100 = [v99 countByEnumeratingWithState:&v194 objects:v221 count:16];
          if (v100)
          {
            v101 = v100;
            v102 = 0;
            v103 = *v195;
            do
            {
              for (n = 0; n != v101; ++n)
              {
                if (*v195 != v103)
                {
                  objc_enumerationMutation(v99);
                }

                v105 = *(*(&v194 + 1) + 8 * n);
                v106 = [v105 identifier];
                v107 = [v106 hasPrefix:v172];

                if (v107)
                {
                  v108 = [v105 sectionBundleIdentifier];
                  v109 = [v108 isEqualToString:v170];

                  v110 = v168;
                  if ((v109 & 1) != 0 || ([v105 sectionBundleIdentifier], v111 = objc_claimAutoreleasedReturnValue(), v112 = objc_msgSend(v111, "isEqualToString:", v166), v111, v110 = v164, v112))
                  {
                    v113 = [v176 objectForKey:v110];
                    if (v113)
                    {
                      v114 = v113;
                      handleHiddenResult();
                      [obj addIndex:v102];
                    }
                  }
                }

                ++v102;
              }

              v101 = [v99 countByEnumeratingWithState:&v194 objects:v221 count:16];
            }

            while (v101);
          }

          v115 = [v41 resultSet];
          [v115 removeObjectsAtIndexes:obj];

          [(SPGeneralQueryTask *)self truncateSuggestionsSectionToFit:v41];
          v40 = v159;
          v29 = v160;
          goto LABEL_83;
        }

        v116 = [v41 bundleIdentifier];
        v117 = [v116 isEqualToString:v155];

        if (v117)
        {
          v118 = [v41 results];
          v119 = [v118 count];

          if (v119)
          {
            v120 = [v41 results];
            v121 = [v120 copy];

            [v41 clearResults];
            v192 = 0u;
            v193 = 0u;
            v190 = 0u;
            v191 = 0u;
            v48 = v121;
            v122 = [v48 countByEnumeratingWithState:&v190 objects:v220 count:16];
            if (v122)
            {
              v123 = v122;
              v71 = v40;
              v124 = *v191;
              do
              {
                for (ii = 0; ii != v123; ++ii)
                {
                  if (*v191 != v124)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v126 = *(*(&v190 + 1) + 8 * ii);
                  v127 = [v126 applicationBundleIdentifier];
                  v128 = [v175 objectForKey:v127];
                  v129 = v128;
                  if (v127)
                  {
                    v130 = v128 == 0;
                  }

                  else
                  {
                    v130 = 1;
                  }

                  if (v130)
                  {
                    [v41 addResults:v126];
                  }

                  else
                  {
                    handleHiddenResult();
                  }
                }

                v123 = [v48 countByEnumeratingWithState:&v190 objects:v220 count:16];
              }

              while (v123);
LABEL_79:
              v40 = v71;
            }

LABEL_80:

            v29 = v160;
          }
        }

LABEL_81:
        if (![v41 resultsCount])
        {
          [v29 removeObjectAtIndex:v40];
        }

LABEL_83:

        if (!v40)
        {
          goto LABEL_115;
        }
      }

LABEL_64:
      v80 = [v41 results];
      v81 = [v80 count];

      if (!v81)
      {
        goto LABEL_81;
      }

      v82 = [v41 results];
      v83 = [v82 copy];

      [v41 clearResults];
      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v48 = v83;
      v84 = [v48 countByEnumeratingWithState:&v198 objects:v222 count:16];
      if (v84)
      {
        v85 = v84;
        v71 = v40;
        v86 = *v199;
        do
        {
          for (jj = 0; jj != v85; ++jj)
          {
            if (*v199 != v86)
            {
              objc_enumerationMutation(v48);
            }

            v88 = *(*(&v198 + 1) + 8 * jj);
            v89 = [v88 identifier];
            v90 = [v89 hasPrefix:v172];

            if (v90)
            {
              v91 = [v88 sectionBundleIdentifier];
              v92 = [v91 isEqualToString:v170];

              v93 = v168;
              if ((v92 & 1) == 0 && ([v88 sectionBundleIdentifier], v94 = objc_claimAutoreleasedReturnValue(), v95 = objc_msgSend(v94, "isEqualToString:", v166), v94, v93 = v164, !v95) || (objc_msgSend(v176, "objectForKey:", v93), (v96 = objc_claimAutoreleasedReturnValue()) == 0))
              {
                [v41 addResults:v88];
                v96 = 0;
              }
            }

            else
            {
              [v41 addResults:v88];
            }
          }

          v85 = [v48 countByEnumeratingWithState:&v198 objects:v222 count:16];
        }

        while (v85);
        goto LABEL_79;
      }

      goto LABEL_80;
    }

LABEL_115:
    [v179 removeAllObjects];
    [v174 removeAllObjects];
    [v177 removeAllObjects];
    [v178 removeAllObjects];
    [v176 removeAllObjects];
    [v175 removeAllObjects];
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    obja = v29;
    v167 = [obja countByEnumeratingWithState:&v186 objects:v219 count:16];
    if (!v167)
    {
      goto LABEL_149;
    }

    v165 = *v187;
    v161 = *MEMORY[0x277D4BEF0];
LABEL_117:
    v131 = 0;
    while (1)
    {
      if (*v187 != v165)
      {
        objc_enumerationMutation(obja);
      }

      v132 = *(*(&v186 + 1) + 8 * v131);
      v133 = [v132 bundleIdentifier];
      if ([v133 isEqualToString:@"com.apple.spotlight.tophits"])
      {
        goto LABEL_123;
      }

      v134 = [v132 bundleIdentifier];
      if ([v134 isEqualToString:v161])
      {
        break;
      }

      v151 = [v132 bundleIdentifier];
      v152 = [v151 isEqualToString:*MEMORY[0x277D4BF10]];

      if (v152)
      {
        goto LABEL_124;
      }

LABEL_144:
      if (++v131 == v167)
      {
        v153 = [obja countByEnumeratingWithState:&v186 objects:v219 count:16];
        v167 = v153;
        if (!v153)
        {
LABEL_149:

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __50__SPGeneralQueryTask_handleOptionsForNewSections___block_invoke;
          block[3] = &unk_279CFE2D8;
          v181 = obja;
          dispatch_sync(MEMORY[0x277D85CD0], block);

          goto LABEL_150;
        }

        goto LABEL_117;
      }
    }

LABEL_123:
LABEL_124:
    v169 = v131;
    v173 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v182 = 0u;
    v183 = 0u;
    v184 = 0u;
    v185 = 0u;
    v171 = [v132 results];
    v135 = [v171 countByEnumeratingWithState:&v182 objects:v218 count:16];
    if (v135)
    {
      v136 = v135;
      v137 = 0;
      v138 = *v183;
      do
      {
        for (kk = 0; kk != v136; ++kk)
        {
          if (*v183 != v138)
          {
            objc_enumerationMutation(v171);
          }

          v140 = *(*(&v182 + 1) + 8 * kk);
          v141 = updateDedupeDictsForResult(v140, v174, v179, v177, v178, v176, v175);
          v142 = v141;
          if (v141)
          {
            v143 = [v141 inlineCard];
            v144 = [v140 inlineCard];
            v145 = v144;
            if (v143)
            {
              v146 = 1;
            }

            else
            {
              v146 = v144 == 0;
            }

            if (!v146)
            {
              [v142 setInlineCard:v144];
            }

            v147 = [v142 compactCard];

            v148 = [v140 compactCard];

            if (v147)
            {
              v149 = 1;
            }

            else
            {
              v149 = v148 == 0;
            }

            if (!v149)
            {
              [v142 setCompactCard:v148];
            }

            handleHiddenResult();
            [v173 addIndex:v137];
          }

          ++v137;
        }

        v136 = [v171 countByEnumeratingWithState:&v182 objects:v218 count:16];
      }

      while (v136);
    }

    v150 = [v132 resultSet];
    [v150 removeObjectsAtIndexes:v173];

    v131 = v169;
    goto LABEL_144;
  }

LABEL_150:

  v154 = *MEMORY[0x277D85DE8];
}

void __50__SPGeneralQueryTask_handleOptionsForNewSections___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) count];
  if (v1)
  {
    v2 = v1;
    v19 = *MEMORY[0x277D4BEF0];
    while (1)
    {
      v3 = [*(a1 + 32) objectAtIndex:--v2];
      v4 = [v3 bundleIdentifier];
      if ([v4 isEqualToString:@"com.apple.spotlight.tophits"])
      {
        goto LABEL_6;
      }

      v5 = [v3 bundleIdentifier];
      if ([v5 isEqualToString:v19])
      {
        break;
      }

      v16 = [v3 bundleIdentifier];
      v17 = [v16 isEqualToString:*MEMORY[0x277D4BF10]];

      if (v17)
      {
        goto LABEL_7;
      }

LABEL_21:

      if (!v2)
      {
        goto LABEL_25;
      }
    }

LABEL_6:
LABEL_7:
    v21 = v2;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [v3 results];
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * v10);
          if ([v11 isLocalApplicationResult])
          {
            if (SectionMergingBlendedMusic_block_invoke_onceToken != -1)
            {
              __50__SPGeneralQueryTask_handleOptionsForNewSections___block_invoke_cold_1();
            }

            v12 = SectionMergingBlendedMusic_block_invoke_sbsservice;
            v13 = [v11 applicationBundleIdentifier];
            v14 = [v12 folderPathToIconWithBundleIdentifier:v13];

            if ([v14 count] >= 2)
            {
              v15 = [v14 firstObject];
              [v11 setAuxiliaryTopText:v15];
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    v2 = v21;
    goto LABEL_21;
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __50__SPGeneralQueryTask_handleOptionsForNewSections___block_invoke_2()
{
  SectionMergingBlendedMusic_block_invoke_sbsservice = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)addSections:(id)a3 delayedTopHit:(BOOL)a4
{
  v8 = a3;
  [(SPGeneralQueryTask *)self handleOptionsForNewSections:?];
  if (a4)
  {
    if (![v8 count])
    {
      goto LABEL_6;
    }

    v6 = [(SPQueryTask *)self mutableSections];
    v7 = [v8 firstObject];
    [v6 insertObject:v7 atIndex:0];
  }

  else
  {
    v6 = [(SPQueryTask *)self mutableSections];
    [v6 addObjectsFromArray:v8];
  }

LABEL_6:
  [(SPGeneralQueryTask *)self mergeSections];
}

- (id)unsafeSessionEntityString
{
  v2 = [(SPGeneralQueryTask *)self mutableSessionEntityString];
  v3 = [v2 copy];

  return v3;
}

- (id)displayedText
{
  v3 = [(SPQueryTask *)self query];
  v4 = [v3 queryContext];

  if ([v4 hasMarkedText])
  {
    v5 = [v4 markedTextArray];
    v6 = [v5 componentsJoinedByString:&stru_287C35638];
  }

  else
  {
    v6 = [(SPGeneralQueryTask *)self searchString];
  }

  return v6;
}

- (void)processAppResults:(id)a3 maxAppResults:(unint64_t)a4 section:(id)a5 topHitsIndex:(unint64_t *)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v9 bundleIdentifier];
  v11 = [v10 isEqualToString:@"com.apple.spotlight.tophits"];

  v12 = [v9 bundleIdentifier];
  v13 = [v12 isEqualToString:*MEMORY[0x277D4BEF0]];

  if ((v13 & 1) != 0 || v11)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [v9 results];
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
LABEL_5:
      v18 = 0;
      while (1)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        if ([v19 isLocalApplicationResult] && (objc_msgSend(v19, "isAppClip") & 1) == 0)
        {
          v20 = [v19 title];
          [v20 setMaxLines:1];

          v21 = [v9 bundleIdentifier];
          v22 = [v21 isEqualToString:@"com.apple.spotlight.tophits"];

          if (v22)
          {
            ++*a6;
            [v8 insertObject:v19 atIndex:?];
          }

          else
          {
            [v8 addObject:v19];
          }

          if ([v8 count] >= a4)
          {
            break;
          }
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v16)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    [v9 setMaxInitiallyVisibleResults:a4];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)unsafeSections
{
  v3 = SPLogForSPLogCategoryDefault();
  v4 = v3;
  if (*MEMORY[0x277D4BF48])
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_26B71B000, v4, v5, "unsafeSections", buf, 2u);
  }

  v6 = [(SPQueryTask *)self mutableSections];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  v11 = [v10 firstObject];
  v12 = [v11 bundleIdentifier];
  v13 = [v12 isEqual:@"com.apple.spotlight.tophits"];

  if (v13)
  {
    v14 = [v10 firstObject];
    if (v14)
    {
      v15 = v14;
      v16 = [(SPQueryTask *)self maxTopHitAppResults];
      v27 = 0;
      [(SPGeneralQueryTask *)self processAppResults:0 maxAppResults:v16 section:v15 topHitsIndex:&v27];
      v17 = [v15 resultSet];
      v18 = [v17 count];

      if (v18 > v16)
      {
        v19 = [v15 resultSet];
        v20 = [v15 resultSet];
        [v19 removeObjectsInRange:{v16, objc_msgSend(v20, "count") - v16}];
      }
    }
  }

  v21 = MEMORY[0x277D659A8];
  v22 = [(SPQueryTask *)self query];
  v23 = [v22 queryContext];
  v24 = [(SPGeneralQueryTask *)self showMoreInAppInfo];
  v25 = [v21 buildSectionsWithSections:v10 queryContext:v23 searchInAppInfo:v24 renderState:{-[SPQueryTask unsafeState](self, "unsafeState")}];

  return v25;
}

- (void)searchDaemonQuery:(id)a3 gotResultSet:(id)a4 replace:(BOOL)a5 partiallyComplete:(BOOL)a6 priorityFastPath:(BOOL)a7 update:(BOOL)a8 complete:(BOOL)a9 delayedTopHit:(BOOL)a10 unchanged:(BOOL)a11 forceStable:(BOOL)a12 blendingDuration:(double)a13 geoEntityString:(id)a14 supportedAppScopes:(id)a15 showMoreInAppInfo:(id)a16
{
  v18 = a7;
  v19 = a6;
  v87 = a5;
  v96 = *MEMORY[0x277D85DE8];
  v88 = a3;
  v22 = a4;
  v90 = a14;
  v23 = a15;
  v89 = a16;
  v24 = [(SPQueryTask *)self queryProcessor];
  dispatch_assert_queue_V2(v24);

  v25 = objc_alloc(MEMORY[0x277D4C270]);
  v26 = [(SPQueryTask *)self query];
  v27 = [v25 initWithEvent:@"com.apple.searchd.frontend.query.end" timeInterval:0 queryId:{objc_msgSend(v26, "queryIdent")}];

  v28 = [MEMORY[0x277D4BEB0] sharedManager];
  v29 = [(SPQueryTask *)self query];
  v85 = v27;
  [v28 reportFeedback:v27 queryId:{objc_msgSend(v29, "queryIdent")}];

  staleResultsTimer = self->_staleResultsTimer;
  if (staleResultsTimer)
  {
    dispatch_source_cancel(staleResultsTimer);
    v31 = self->_staleResultsTimer;
    self->_staleResultsTimer = 0;
  }

  if (v19 || a8 || v18 || a9)
  {
    v32 = 2;
    if (!v19)
    {
      v32 = 3;
    }

    if (v18)
    {
      v32 = 1;
    }

    if (a9)
    {
      v33 = 4;
    }

    else
    {
      v33 = v32;
    }

    [(SPQueryTask *)self setUnsafeState:v33];
  }

  v34 = [v23 count];
  v35 = v23;
  v36 = v88;
  v37 = v90;
  if (v34)
  {
    [(SPGeneralQueryTask *)self setSupportedAppScopes:v35];
  }

  v86 = v35;
  if ([v89 count])
  {
    [(SPGeneralQueryTask *)self setShowMoreInAppInfo:v89];
  }

  if ((-[SPQueryTask forceStableResults](self, "forceStableResults") || a12) && ([v22 stableSections], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v39 = v38;
    v40 = [v22 stableSections];
  }

  else
  {
    v40 = [v22 resultSections];
  }

  if (v87)
  {
    v41 = [(SPQueryTask *)self mutableSections];
    [v41 removeAllObjects];

    [(SPGeneralQueryTask *)self setMutableSessionEntityString:0];
  }

  if (v90)
  {
    [(SPGeneralQueryTask *)self setMutableSessionEntityString:v90];
  }

  if ([v40 count])
  {
    if (!a11)
    {
      v42 = [v40 mutableCopy];
      [(SPGeneralQueryTask *)self addSections:v42 delayedTopHit:a10];

      [v88 queryID];
      kdebug_trace();
      if ([(SPGeneralQueryTask *)self newQuery])
      {
        [(SPGeneralQueryTask *)self setNewQuery:0];
        v43 = [v88 query];
        v44 = [v43 creationStamp];
        v45 = [MEMORY[0x277CCA8D8] mainBundle];
        v46 = [v45 bundleIdentifier];
        sp_analytics_log_timing_with_bundle_id("com.apple.searchd.query.client", "ttfr", v44, v46);

        v37 = v90;
      }
    }
  }

  v47 = [(SPGeneralQueryTask *)self unsafeSections];
  v48 = SPLogForSPLogCategoryDefault();
  v49 = v48;
  if (*MEMORY[0x277D4BF48])
  {
    v50 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v50 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v48, v50))
  {
    *buf = 138412290;
    v95 = *&v47;
    _os_log_impl(&dword_26B71B000, v49, v50, "sections: %@", buf, 0xCu);
  }

  if (!a11 && [(SPGeneralQueryTask *)self readyToUpdate])
  {
    if (![(SPGeneralQueryTask *)self didReceiveCompleteCallback])
    {
      [v88 queryID];
      kdebug_trace();
      v51 = SPLogForSPLogCategoryTelemetry();
      v52 = [v88 queryID];
      if (v52)
      {
        v53 = v52;
        if (os_signpost_enabled(v51))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_26B71B000, v51, OS_SIGNPOST_INTERVAL_END, v53, "queryUI", " enableTelemetry=YES ", buf, 2u);
        }
      }
    }

    v83 = v22;
    v54 = [(SPGeneralQueryTask *)self session];
    v55 = MEMORY[0x277D65968];
    v56 = [v88 query];
    v57 = [v56 queryContext];
    v58 = [v57 queryIntent];
    [v54 finishRanking:v47 blendingDuration:objc_msgSend(v55 spotlightQueryIntent:{"spotlightQueryIntent:", v58), a13}];

    [(SPGeneralQueryTask *)self setDidReceiveCompleteCallback:1];
    if (v87)
    {
      v59 = "session reset";
    }

    else
    {
      v59 = "session complete";
    }

    v60 = [v88 query];
    v61 = [v60 creationStamp];
    v62 = [MEMORY[0x277CCA8D8] mainBundle];
    v63 = [v62 bundleIdentifier];
    v64 = sp_analytics_log_timing_with_bundle_id("com.apple.searchd.query.client", v59, v61, v63);

    v65 = SPLogForSPLogCategoryDefault();
    v66 = v65;
    if (*MEMORY[0x277D4BF48])
    {
      v67 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v67 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v65, v67))
    {
      *buf = 134217984;
      v95 = v64 / 1000000000.0;
      _os_log_impl(&dword_26B71B000, v66, v67, "- SearchAgent time %gs", buf, 0xCu);
    }

    v36 = v88;
    v22 = v83;
    v37 = v90;
  }

  v68 = [v36 query];
  v69 = [v68 queryContext];
  v70 = [v69 fetchL2Signals];

  if (v70)
  {
    v84 = v22;
    v71 = MEMORY[0x277CCAAB0];
    v72 = [(SPQueryTask *)self mutableSections];
    v92 = 0;
    v73 = [v71 archivedDataWithRootObject:v72 requiringSecureCoding:1 error:&v92];
    v74 = v92;

    if (v74)
    {
      v75 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        [SPFederatedQueryTask searchQuery:v74 gotResultSet:v75 replace:? partiallyComplete:? priorityFastPath:? update:? complete:? delayedTopHit:? unchanged:? forceStable:? blendingDuration:? geoEntityString:? supportedAppScopes:? showMoreInAppInfo:?];
      }

      v76 = 0;
      v77 = v89;
    }

    else
    {
      v78 = MEMORY[0x277CCAAC8];
      v79 = MEMORY[0x277CBEB98];
      v93[0] = objc_opt_class();
      v93[1] = objc_opt_class();
      v93[2] = objc_opt_class();
      v93[3] = objc_opt_class();
      v93[4] = objc_opt_class();
      v93[5] = objc_opt_class();
      v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:6];
      v81 = [v79 setWithArray:v80];
      v91 = 0;
      v76 = [v78 unarchivedObjectOfClasses:v81 fromData:v73 error:&v91];
      v74 = v91;

      if (!v74)
      {
        v77 = v89;
        goto LABEL_63;
      }

      v75 = SPLogForSPLogCategoryDefault();
      v77 = v89;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        [SPFederatedQueryTask searchQuery:v74 gotResultSet:v75 replace:? partiallyComplete:? priorityFastPath:? update:? complete:? delayedTopHit:? unchanged:? forceStable:? blendingDuration:? geoEntityString:? supportedAppScopes:? showMoreInAppInfo:?];
      }
    }

LABEL_63:
    [(SPQueryTask *)self updateResultsThroughDelegate:0 state:[(SPQueryTask *)self unsafeState] unchanged:a11 sections:v76];

    v22 = v84;
    v37 = v90;
    goto LABEL_64;
  }

  [(SPQueryTask *)self updateResultsThroughDelegate:0 state:[(SPQueryTask *)self unsafeState] unchanged:a11 sections:v47];
  v77 = v89;
LABEL_64:

  v82 = *MEMORY[0x277D85DE8];
}

- (void)searchDaemonQuery:(id)a3 encounteredError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SPQueryTask *)self queryProcessor];
  dispatch_assert_queue_V2(v8);

  v9 = [(SPQueryTask *)self token];
  LODWORD(v8) = [v9 isEqual:v6];

  if (v8)
  {
    v10 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SPGeneralQueryTask *)v7 searchDaemonQuery:v6 encounteredError:v10];
    }
  }
}

- (id)retainAndMergeSections:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SPGeneralQueryTask *)self session];
  v8 = [(SPQueryTask *)self query];
  v9 = [v8 queryContext];
  v10 = [v9 queryKind] - 5;

  if (v10 < 4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(buf[0]) = 0;
    v11 = MEMORY[0x277D86220];
    v12 = "Skipped 1";
    goto LABEL_11;
  }

  if (!v7)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(buf[0]) = 0;
    v11 = MEMORY[0x277D86220];
    v12 = "Skipped 2";
    goto LABEL_11;
  }

  if (a4 != 1)
  {
    v13 = [(SPQueryTask *)self query];
    [v7 setLastSections:v6 forQuery:v13];
LABEL_13:

    goto LABEL_14;
  }

  if (self->_staleResultsFired)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(buf[0]) = 0;
    v11 = MEMORY[0x277D86220];
    v12 = "Skipped 3";
    goto LABEL_11;
  }

  if ([v6 count] == 1)
  {
    v13 = [v6 objectAtIndex:0];
    v15 = [v13 bundleIdentifier];
    v16 = [v15 isEqual:@"com.apple.spotlight.tophits"];

    if (v16)
    {
      v17 = [(SPQueryTask *)self query];
      v18 = [v7 copyStaleSectionsForQuery:v17];

      if ([v18 count])
      {
        v19 = [v18 mutableCopy];
        v20 = [v18 objectAtIndex:0];
        v21 = [(SPQueryTask *)self queryProcessor];
        v22 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v21);
        staleResultsTimer = self->_staleResultsTimer;
        self->_staleResultsTimer = v22;

        v24 = self->_staleResultsTimer;
        v25 = dispatch_time(0, 750000000);
        dispatch_source_set_timer(v24, v25, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
        objc_initWeak(buf, self);
        v26 = self->_staleResultsTimer;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __54__SPGeneralQueryTask_retainAndMergeSections_forState___block_invoke;
        handler[3] = &unk_279CFE300;
        objc_copyWeak(v33, buf);
        v33[1] = 1;
        v27 = v6;
        v32 = v27;
        dispatch_source_set_event_handler(v26, handler);
        dispatch_activate(self->_staleResultsTimer);
        v28 = [v20 bundleIdentifier];
        LODWORD(v26) = [v28 isEqual:@"com.apple.spotlight.tophits"];

        v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v26)
        {
          if (v29)
          {
            *v30 = 0;
            _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Merged - case 1!", v30, 2u);
          }

          [v19 replaceObjectAtIndex:0 withObject:v13];
        }

        else
        {
          if (v29)
          {
            *v30 = 0;
            _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Merged - case 2!", v30, 2u);
          }

          [v19 insertObject:v13 atIndex:0];
        }

        objc_destroyWeak(v33);
        objc_destroyWeak(buf);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Skipped 6", buf, 2u);
        }

        v19 = v6;
      }

      v6 = v19;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Skipped 5", buf, 2u);
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    v11 = MEMORY[0x277D86220];
    v12 = "Skipped 4";
LABEL_11:
    _os_log_impl(&dword_26B71B000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
  }

LABEL_14:

  return v6;
}

void __54__SPGeneralQueryTask_retainAndMergeSections_forState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Clear stale results -- timeout", v4, 2u);
    }

    *(WeakRetained + 200) = 1;
    dispatch_source_cancel(*(WeakRetained + 24));
    v3 = *(WeakRetained + 24);
    *(WeakRetained + 24) = 0;

    [WeakRetained updateResultsThroughDelegate:0 state:*(a1 + 48) unchanged:0 sections:*(a1 + 32)];
  }
}

- (SPClientSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)searchDaemonQuery:(os_log_t)log encounteredError:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_26B71B000, log, OS_LOG_TYPE_ERROR, "Received search error %@ for query %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end