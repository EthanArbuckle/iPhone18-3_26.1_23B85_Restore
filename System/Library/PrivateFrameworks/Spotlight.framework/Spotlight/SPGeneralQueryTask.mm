@interface SPGeneralQueryTask
+ (id)contactEntityFromQueryContext:(id)context;
- (SPClientSession)session;
- (id)displayedText;
- (id)initForSession:(id)session withQuery:(id)query;
- (id)retainAndMergeSections:(id)sections forState:(unint64_t)state;
- (id)searchString;
- (id)unsafeSections;
- (id)unsafeSessionEntityString;
- (void)addSections:(id)sections delayedTopHit:(BOOL)hit;
- (void)cancel;
- (void)clear;
- (void)handleOptionsForNewSections:(id)sections;
- (void)mergeRelatedContentFromSections:(id)sections bundlesToMerge:(id)merge mergedSectionId:(id)id;
- (void)mergeSections;
- (void)processAppResults:(id)results maxAppResults:(unint64_t)appResults section:(id)section topHitsIndex:(unint64_t *)index;
- (void)relatedContentSectionMerging:(id)merging;
- (void)searchDaemonQuery:(id)query encounteredError:(id)error;
- (void)searchDaemonQuery:(id)query gotResultSet:(id)set replace:(BOOL)replace partiallyComplete:(BOOL)complete priorityFastPath:(BOOL)path update:(BOOL)update complete:(BOOL)a9 delayedTopHit:(BOOL)self0 unchanged:(BOOL)self1 forceStable:(BOOL)self2 blendingDuration:(double)self3 geoEntityString:(id)self4 supportedAppScopes:(id)self5 showMoreInAppInfo:(id)self6;
- (void)start;
- (void)truncateSuggestionsSectionToFit:(id)fit;
- (void)updateResultsWithContactHeader;
@end

@implementation SPGeneralQueryTask

+ (id)contactEntityFromQueryContext:(id)context
{
  if (context)
  {
    searchEntities = [context searchEntities];
    firstObject = [searchEntities firstObject];

    if ([firstObject isContactEntitySearch])
    {
      v5 = firstObject;
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

- (id)initForSession:(id)session withQuery:(id)query
{
  sessionCopy = session;
  queryCopy = query;
  v8 = [(SPQueryTask *)self init];
  v9 = v8;
  if (v8)
  {
    [(SPQueryTask *)v8 setQuery:queryCopy];
    [(SPGeneralQueryTask *)v9 setSession:sessionCopy];
  }

  return v9;
}

- (void)updateResultsWithContactHeader
{
  previousQueryContext = [(SPQueryTask *)self previousQueryContext];
  v3 = [objc_opt_class() contactEntityFromQueryContext:previousQueryContext];
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];

  v6 = [objc_opt_class() contactEntityFromQueryContext:queryContext];
  if (updateResultsWithContactHeader_onceToken_0 != -1)
  {
    [SPGeneralQueryTask updateResultsWithContactHeader];
  }

  if ((updateResultsWithContactHeader_isPeopleViewService_0 & 1) != 0 || v6 && (!v3 || ([v6 hasSameContactAsContactEntity:v3] & 1) == 0))
  {
    v7 = objc_alloc(MEMORY[0x277D4BEB8]);
    v8 = [v7 initWithSections:MEMORY[0x277CBEBF8]];
    token = [(SPQueryTask *)self token];
    LODWORD(v10) = 0;
    [SPGeneralQueryTask searchDaemonQuery:"searchDaemonQuery:gotResultSet:replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:" gotResultSet:token replace:v8 partiallyComplete:1 priorityFastPath:1 update:0 complete:0 delayedTopHit:0.0 unchanged:v10 forceStable:0 blendingDuration:0 geoEntityString:0 supportedAppScopes:? showMoreInAppInfo:?];
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
  mEMORY[0x277CC3468] = [MEMORY[0x277CC3468] sharedInstance];
  [mEMORY[0x277CC3468] logWithBundleID:@"com.apple.SpotlightUI" indexOperation:3 itemCount:1 reason:@"UserInput"];

  queryProcessor = [(SPQueryTask *)self queryProcessor];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__SPGeneralQueryTask_start__block_invoke;
  block[3] = &unk_279CFE2D8;
  block[4] = self;
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(queryProcessor, v5);
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
  mEMORY[0x277D4BEA8] = [MEMORY[0x277D4BEA8] sharedConnection];
  token = [(SPQueryTask *)self token];
  [mEMORY[0x277D4BEA8] clearInput:token];
}

- (void)cancel
{
  mEMORY[0x277CC3468] = [MEMORY[0x277CC3468] sharedInstance];
  [mEMORY[0x277CC3468] logWithBundleID:@"com.apple.SpotlightUI" indexOperation:4 itemCount:1 reason:@"UserInput"];

  mEMORY[0x277D4BEA8] = [MEMORY[0x277D4BEA8] sharedConnection];
  token = [(SPQueryTask *)self token];
  [mEMORY[0x277D4BEA8] cancelQuery:token];
}

- (id)searchString
{
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  searchString = [queryContext searchString];

  return searchString;
}

- (void)mergeSections
{
  selfCopy = self;
  v208 = *MEMORY[0x277D85DE8];
  queryProcessor = [(SPQueryTask *)self queryProcessor];
  dispatch_assert_queue_V2(queryProcessor);

  v162 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v152 = selfCopy;
  mutableSections = [(SPQueryTask *)selfCopy mutableSections];
  firstObject = [mutableSections firstObject];

  bundleIdentifier = [firstObject bundleIdentifier];
  LOBYTE(selfCopy) = [bundleIdentifier isEqualToString:@"com.apple.spotlight.tophits"];

  if ((selfCopy & 1) == 0)
  {

    firstObject = 0;
  }

  v153 = firstObject;
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  mutableSections2 = [v152 mutableSections];
  v11 = [mutableSections2 copy];

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

        title = [v13 title];
        v165 = i;
        if (title)
        {
          v15 = v13;
          title2 = [v13 title];
          uppercaseString = [title2 uppercaseString];
        }

        else
        {
          title2 = [v13 bundleIdentifier];
          if (!title2)
          {
            v19 = 0;
            goto LABEL_14;
          }

          v15 = v13;
          uppercaseString = [v13 bundleIdentifier];
        }

        v18 = uppercaseString;
        v19 = [v162 objectForKey:uppercaseString];

        v13 = v15;
LABEL_14:

        if (([v19 doNotFold] & 1) != 0 || objc_msgSend(v13, "doNotFold"))
        {

LABEL_17:
          [v6 addObject:v13];
          title3 = [v13 title];

          if (title3)
          {
            [v13 title];
            v22 = v21 = v13;
            uppercaseString2 = [v22 uppercaseString];
            [v162 setObject:v21 forKey:uppercaseString2];

            i = v165;
            goto LABEL_142;
          }

          bundleIdentifier2 = [v13 bundleIdentifier];

          i = v165;
          if (bundleIdentifier2)
          {
            bundleIdentifier3 = [v13 bundleIdentifier];
            v26 = v13;
            v22 = bundleIdentifier3;
            [v162 setObject:v26 forKey:bundleIdentifier3];
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
        maxInitiallyVisibleResults = [v13 maxInitiallyVisibleResults];
        if (maxInitiallyVisibleResults <= [v27 maxInitiallyVisibleResults])
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
        resultSet = [v27 resultSet];
        [resultSet objectAtIndexedSubscript:0];
        v34 = v33 = v27;
        sectionBundleIdentifier = [v34 sectionBundleIdentifier];
        v36 = sectionBundleIdentifier;
        v37 = v155;
        if (sectionBundleIdentifier)
        {
          applicationBundleIdentifier = sectionBundleIdentifier;
        }

        else
        {
          resultSet2 = [v33 resultSet];
          v39 = [resultSet2 objectAtIndexedSubscript:0];
          applicationBundleIdentifier = [v39 applicationBundleIdentifier];
        }

        resultSet3 = [v158 resultSet];
        v41 = [resultSet3 objectAtIndexedSubscript:0];
        sectionBundleIdentifier2 = [v41 sectionBundleIdentifier];
        v43 = sectionBundleIdentifier2;
        if (sectionBundleIdentifier2)
        {
          applicationBundleIdentifier2 = sectionBundleIdentifier2;
        }

        else
        {
          resultSet4 = [v158 resultSet];
          v45 = [resultSet4 objectAtIndexedSubscript:0];
          applicationBundleIdentifier2 = [v45 applicationBundleIdentifier];
        }

        if (([applicationBundleIdentifier isEqualToString:@"com.apple.Maps"] & 1) != 0 || objc_msgSend(applicationBundleIdentifier2, "isEqualToString:", @"com.apple.Maps"))
        {
          v46 = v158;
          if ([applicationBundleIdentifier isEqualToString:@"com.apple.Maps"])
          {
            results = [v170 results];
            sectionBundleIdentifier3 = [results copy];

            [v170 clearResults];
            results2 = [v158 results];

            if (results2)
            {
              results3 = [v158 results];
              [v170 addResultsFromArray:results3];
            }

            [v158 clearResults];
            if (sectionBundleIdentifier3)
            {
              [v158 addResultsFromArray:sectionBundleIdentifier3];
            }

            domain = [v158 domain];
            [v158 setDomain:{objc_msgSend(v170, "domain")}];
            [v170 setDomain:domain];
            title4 = [v158 title];
            title5 = [v170 title];
            [v158 setTitle:title5];

            v54 = title4;
            [v170 setTitle:title4];
LABEL_77:
          }

          goto LABEL_78;
        }

        if ([v170 domain] != 2)
        {
          resultSet5 = [v170 resultSet];
          v56 = [resultSet5 objectAtIndexedSubscript:0];
          applicationBundleIdentifier3 = [v56 applicationBundleIdentifier];
          v58 = applicationBundleIdentifier3;
          if (applicationBundleIdentifier3)
          {
            sectionBundleIdentifier3 = applicationBundleIdentifier3;
          }

          else
          {
            resultSet6 = [v170 resultSet];
            v60 = [resultSet6 objectAtIndexedSubscript:0];
            sectionBundleIdentifier3 = [v60 sectionBundleIdentifier];
          }

          resultSet7 = [v158 resultSet];
          v62 = [resultSet7 objectAtIndexedSubscript:0];
          applicationBundleIdentifier4 = [v62 applicationBundleIdentifier];
          v64 = applicationBundleIdentifier4;
          if (applicationBundleIdentifier4)
          {
            sectionBundleIdentifier4 = applicationBundleIdentifier4;
          }

          else
          {
            resultSet8 = [v158 resultSet];
            v66 = [resultSet8 objectAtIndexedSubscript:0];
            sectionBundleIdentifier4 = [v66 sectionBundleIdentifier];
          }

          title6 = [v158 title];
          uppercaseString3 = [title6 uppercaseString];

          v192 = 0u;
          v193 = 0u;
          v190 = 0u;
          v191 = 0u;
          resultSet9 = [v153 resultSet];
          v68 = [resultSet9 countByEnumeratingWithState:&v190 objects:v206 count:16];
          if (!v68)
          {
            v54 = sectionBundleIdentifier4;
            goto LABEL_76;
          }

          v69 = v68;
          v70 = *v191;
          v160 = sectionBundleIdentifier3;
          v54 = sectionBundleIdentifier4;
          while (1)
          {
            for (j = 0; j != v69; ++j)
            {
              if (*v191 != v70)
              {
                objc_enumerationMutation(resultSet9);
              }

              v72 = *(*(&v190 + 1) + 8 * j);
              title7 = [v72 title];
              if (!title7)
              {
                goto LABEL_72;
              }

              if (sectionBundleIdentifier3)
              {
                resultBundleId = [v72 resultBundleId];
                if ([resultBundleId isEqualToString:sectionBundleIdentifier3])
                {
                  goto LABEL_60;
                }
              }

              if (v54)
              {
                resultBundleId2 = [v72 resultBundleId];
                if ([resultBundleId2 isEqualToString:v54])
                {

                  if (sectionBundleIdentifier3)
                  {
LABEL_60:
                  }

LABEL_71:
                  [v173 addObject:title7];
                  goto LABEL_72;
                }

                if (!uppercaseString3)
                {
                  v74 = 0;
LABEL_67:

                  goto LABEL_68;
                }
              }

              else if (!uppercaseString3)
              {
                v74 = 0;
                goto LABEL_68;
              }

              v75 = resultBundleId2;
              v76 = resultBundleId;
              sectionHeader = [v72 sectionHeader];
              uppercaseString4 = [sectionHeader uppercaseString];
              v74 = [uppercaseString4 isEqual:uppercaseString3];

              resultBundleId = v76;
              resultBundleId2 = v75;
              sectionBundleIdentifier3 = v160;
              v54 = sectionBundleIdentifier4;
              if (sectionBundleIdentifier4)
              {
                goto LABEL_67;
              }

LABEL_68:
              if (sectionBundleIdentifier3)
              {
              }

              if (v74)
              {
                goto LABEL_71;
              }

LABEL_72:
            }

            v69 = [resultSet9 countByEnumeratingWithState:&v190 objects:v206 count:16];
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
        v169 = resultBundleId;
        bundleIdentifier4 = [v46 bundleIdentifier];
        v80 = [bundleIdentifier4 isEqualToString:*MEMORY[0x277D4BF10]];

        if (v80)
        {
          v167 = resultBundleId2;
          v81 = objc_opt_new();
          v186 = 0u;
          v187 = 0u;
          v188 = 0u;
          v189 = 0u;
          resultSet10 = [v170 resultSet];
          v83 = [resultSet10 countByEnumeratingWithState:&v186 objects:v205 count:16];
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
                  objc_enumerationMutation(resultSet10);
                }

                v87 = *(*(&v186 + 1) + 8 * k);
                resultBundleId3 = [v87 resultBundleId];
                if (resultBundleId3)
                {
                  v89 = resultBundleId3;
                  completion = [v87 completion];

                  if (completion)
                  {
                    resultBundleId4 = [v87 resultBundleId];
                    v204[0] = resultBundleId4;
                    completion2 = [v87 completion];
                    v204[1] = completion2;
                    v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v204 count:2];

                    [v81 setObject:v87 forKeyedSubscript:v93];
                  }
                }
              }

              v84 = [resultSet10 countByEnumeratingWithState:&v186 objects:v205 count:16];
            }

            while (v84);
          }

          v184 = 0u;
          v185 = 0u;
          v182 = 0u;
          v183 = 0u;
          resultSet11 = [v158 resultSet];
          v95 = [resultSet11 countByEnumeratingWithState:&v182 objects:v203 count:16];
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
                  objc_enumerationMutation(resultSet11);
                }

                v99 = *(*(&v182 + 1) + 8 * m);
                resultBundleId5 = [v99 resultBundleId];
                if (resultBundleId5)
                {
                  v101 = resultBundleId5;
                  completion3 = [v99 completion];

                  if (completion3)
                  {
                    resultBundleId6 = [v99 resultBundleId];
                    v202[0] = resultBundleId6;
                    completion4 = [v99 completion];
                    v202[1] = completion4;
                    v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v202 count:2];
                    v106 = [v81 objectForKeyedSubscript:v105];

                    if (!v106)
                    {
                      [v170 addResults:v99];
                    }
                  }
                }
              }

              v96 = [resultSet11 countByEnumeratingWithState:&v182 objects:v203 count:16];
            }

            while (v96);
          }

          v37 = v155;
          resultBundleId2 = v167;
        }

        v180 = 0u;
        v181 = 0u;
        v178 = 0u;
        v179 = 0u;
        resultSet12 = [v170 resultSet];
        v108 = [resultSet12 countByEnumeratingWithState:&v178 objects:v201 count:16];
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
                objc_enumerationMutation(resultSet12);
              }

              v112 = *(*(&v178 + 1) + 8 * v111);
              resultBundleId7 = [v112 resultBundleId];
              v114 = [resultBundleId7 isEqualToString:v37];

              if (v114)
              {
                contentURL = [v112 contentURL];
              }

              else
              {
                resultBundleId8 = [v112 resultBundleId];
                v117 = [resultBundleId8 isEqualToString:v172];

                if (v117 || ([v112 contentType], v118 = objc_claimAutoreleasedReturnValue(), v119 = objc_msgSend(v118, "isEqualToString:", v171), v118, v119))
                {
                  contentURL = [v112 identifier];
                }

                else
                {
                  title8 = [v112 title];
                  if (!title8)
                  {
                    goto LABEL_114;
                  }

                  v122 = title8;
                  title9 = [v112 title];
                  text = [title9 text];

                  if (!text)
                  {
                    goto LABEL_114;
                  }

                  contentURL = [v112 title];
                }
              }

              v120 = contentURL;
              if (contentURL)
              {
                [v173 addObject:contentURL];
              }

LABEL_114:
              ++v111;
            }

            while (v109 != v111);
            v125 = [resultSet12 countByEnumeratingWithState:&v178 objects:v201 count:16];
            v109 = v125;
          }

          while (v125);
        }

        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        resultSet13 = [v158 resultSet];
        v127 = [resultSet13 countByEnumeratingWithState:&v174 objects:v200 count:16];
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
              objc_enumerationMutation(resultSet13);
            }

            v131 = *(*(&v174 + 1) + 8 * v130);
            resultBundleId9 = [v131 resultBundleId];
            v133 = [resultBundleId9 isEqualToString:v37];

            if (v133)
            {
              contentURL2 = [v131 contentURL];
            }

            else
            {
              resultBundleId10 = [v131 resultBundleId];
              v136 = [resultBundleId10 isEqualToString:v172];

              if (v136 || ([v131 contentType], v137 = objc_claimAutoreleasedReturnValue(), v138 = objc_msgSend(v137, "isEqualToString:", v171), v137, v138))
              {
                contentURL2 = [v131 identifier];
              }

              else
              {
                title10 = [v131 title];
                if (!title10)
                {
                  goto LABEL_133;
                }

                title11 = [v131 title];
                text2 = [title11 text];

                if (!text2)
                {
                  title10 = 0;
                  goto LABEL_133;
                }

                contentURL2 = [v131 title];
              }
            }

            title10 = contentURL2;
            if (contentURL2 && ([v173 containsObject:contentURL2] & 1) == 0)
            {
              [v170 addResults:v131];
            }

LABEL_133:

            ++v130;
          }

          while (v128 != v130);
          v142 = [resultSet13 countByEnumeratingWithState:&v174 objects:v200 count:16];
          v128 = v142;
        }

        while (v142);
LABEL_140:

        v6 = v154;
        resultBundleId = v169;
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

- (void)relatedContentSectionMerging:(id)merging
{
  v4 = relatedContentSectionMerging__onceToken_0;
  mergingCopy = merging;
  v7 = mergingCopy;
  if (v4 == -1)
  {
    v6 = mergingCopy;
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

- (void)mergeRelatedContentFromSections:(id)sections bundlesToMerge:(id)merge mergedSectionId:(id)id
{
  v49 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  mergeCopy = merge;
  idCopy = id;
  array = [MEMORY[0x277CBEB18] array];
  if ([sectionsCopy count])
  {
    v11 = 0;
    do
    {
      v12 = [sectionsCopy objectAtIndexedSubscript:v11];
      bundleIdentifier = [v12 bundleIdentifier];
      results = [v12 results];
      if ([results count])
      {
        v15 = [mergeCopy containsObject:bundleIdentifier];

        if (v15)
        {
          [array addObject:v12];
        }
      }

      else
      {
      }

      ++v11;
    }

    while (v11 < [sectionsCopy count]);
  }

  if ([array count])
  {
    v16 = [array objectAtIndexedSubscript:0];
    if ([array count] >= 2)
    {
      v43 = v16;
      v44 = idCopy;
      v17 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = array;
        _os_log_impl(&dword_26B71B000, v17, OS_LOG_TYPE_DEFAULT, "[release2023SectionMerging] Merging sections %@", buf, 0xCu);
      }

      array2 = [MEMORY[0x277CBEB18] array];
      array3 = [MEMORY[0x277CBEB18] array];
      if ([array count])
      {
        v20 = 0;
        do
        {
          v21 = [array objectAtIndexedSubscript:{v20, v43}];
          maxInitiallyVisibleResults = [v21 maxInitiallyVisibleResults];
          if (!maxInitiallyVisibleResults)
          {
            results2 = [v21 results];
            v24 = [results2 count];

            if (v24 >= 3)
            {
              maxInitiallyVisibleResults = 3;
            }

            else
            {
              maxInitiallyVisibleResults = v24;
            }
          }

          results3 = [v21 results];
          v26 = [results3 count];

          if (maxInitiallyVisibleResults <= v26)
          {
            results4 = [v21 results];
            v28 = [results4 subarrayWithRange:{0, maxInitiallyVisibleResults}];
            [array2 addObjectsFromArray:v28];
          }

          results5 = [v21 results];
          v30 = [results5 count];

          if (v30 > maxInitiallyVisibleResults)
          {
            results6 = [v21 results];
            results7 = [v21 results];
            v33 = [results6 subarrayWithRange:{maxInitiallyVisibleResults, objc_msgSend(results7, "count") - maxInitiallyVisibleResults}];
            [array3 addObjectsFromArray:v33];
          }

          [v21 clearResults];

          ++v20;
        }

        while (v20 < [array count]);
      }

      v16 = v43;
      [v43 addResultsFromArray:{array2, v43}];
      [v16 addResultsFromArray:array3];
      [v16 setMaxInitiallyVisibleResults:{objc_msgSend(array2, "count")}];

      idCopy = v44;
    }

    if ([idCopy isEqualToString:SectionMergingBlendedWeb])
    {
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v34 localizedStringForKey:@"DOMAIN_TITLE_BLENDED_WEB" value:&stru_287C35638 table:@"SpotlightServices"];
      [v16 setTitle:v35];

      if ([array count] >= 2)
      {
        v36 = MEMORY[0x277D65B80];
LABEL_31:
        [v16 setPreMergeBundleIdentifier:*v36];
        goto LABEL_32;
      }
    }

    else
    {
      if (![idCopy isEqualToString:SectionMergingBlendedMusic])
      {
LABEL_33:
        v40 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier2 = [v16 bundleIdentifier];
          *buf = 138412546;
          v46 = bundleIdentifier2;
          v47 = 2112;
          v48 = idCopy;
          _os_log_impl(&dword_26B71B000, v40, OS_LOG_TYPE_DEFAULT, "[release2023SectionMerging] Section %@ becomes %@", buf, 0x16u);
        }

        [v16 setBundleIdentifier:idCopy];
        goto LABEL_36;
      }

      v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v38 = [v37 localizedStringForKey:@"DOMAIN_TITLE_BLENDED_MUSIC" value:&stru_287C35638 table:@"SpotlightServices"];
      [v16 setTitle:v38];

      if ([array count] >= 2)
      {
        v36 = MEMORY[0x277D65AD8];
        goto LABEL_31;
      }
    }

    bundleIdentifier3 = [v16 bundleIdentifier];
    [v16 setPreMergeBundleIdentifier:bundleIdentifier3];

LABEL_32:
    [v16 setMaxInitiallyVisibleResults:3];
    goto LABEL_33;
  }

LABEL_36:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)truncateSuggestionsSectionToFit:(id)fit
{
  v27 = *MEMORY[0x277D85DE8];
  fitCopy = fit;
  maxUISuggestions = [(SPQueryTask *)self maxUISuggestions];
  resultSet = [fitCopy resultSet];
  v7 = objc_alloc(MEMORY[0x277CBEB40]);
  resultsCount = [fitCopy resultsCount];
  if (resultsCount >= maxUISuggestions)
  {
    v9 = maxUISuggestions;
  }

  else
  {
    v9 = resultsCount;
  }

  v10 = [v7 initWithCapacity:v9];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = resultSet;
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

        else if (v15 < maxUISuggestions)
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
      if (v15 && v15 >= maxUISuggestions)
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

  [fitCopy setResultSet:{v10, v22}];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleOptionsForNewSections:(id)sections
{
  v231 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
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
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    *buf = 134218240;
    v228 = currentThread;
    v229 = 1024;
    v230 = [sectionsCopy count];
    _os_log_impl(&dword_26B71B000, v5, v6, "[%p] handleOptions for sections (%d)", buf, 0x12u);
  }

  v8 = SPLogForSPLogCategoryDefault();
  v9 = MEMORY[0x277D4BF50];
  v10 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v8, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    *buf = 138412290;
    v228 = sectionsCopy;
    _os_log_impl(&dword_26B71B000, v8, ((v10 & 1) == 0), "handleOptionsForNewSections: %@", buf, 0xCu);
  }

  if ([sectionsCopy count])
  {
    queryProcessor = [(SPQueryTask *)self queryProcessor];
    dispatch_assert_queue_V2(queryProcessor);

    v12 = SPLogForSPLogCategoryDefault();
    v13 = *v9;
    if (os_log_type_enabled(v12, ((v13 & 1) == 0)))
    {
      *buf = 138412290;
      v228 = sectionsCopy;
      _os_log_impl(&dword_26B71B000, v12, ((v13 & 1) == 0), "handleOptionsForNewSections: %@", buf, 0xCu);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    dictionary6 = [MEMORY[0x277CBEB38] dictionary];
    query = [(SPQueryTask *)self query];
    queryContext = [query queryContext];
    searchEntities = [queryContext searchEntities];
    firstObject = [searchEntities firstObject];

    v156 = firstObject;
    isServerEntitySearch = [firstObject isServerEntitySearch];
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    mutableSections = [(SPQueryTask *)self mutableSections];
    v20 = [mutableSections countByEnumeratingWithState:&v214 objects:v226 count:16];
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
            objc_enumerationMutation(mutableSections);
          }

          v24 = *(*(&v214 + 1) + 8 * i);
          bundleIdentifier = [v24 bundleIdentifier];
          v26 = [bundleIdentifier hasPrefix:@"com.apple.parsec."];

          if (v26)
          {
            results = [v24 results];
            firstObject2 = [results firstObject];
            [v24 setDoNotFold:{objc_msgSend(firstObject2, "doNotFold")}];
          }

          createDedupeDicts(v24, dictionary2, dictionary, dictionary3, dictionary4, dictionary5, dictionary6, isServerEntitySearch);
        }

        v21 = [mutableSections countByEnumeratingWithState:&v214 objects:v226 count:16];
      }

      while (v21);
    }

    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v29 = sectionsCopy;
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
          bundleIdentifier2 = [v34 bundleIdentifier];
          v36 = [bundleIdentifier2 hasPrefix:@"com.apple.parsec."];

          if (v36)
          {
            results2 = [v34 results];
            firstObject3 = [results2 firstObject];
            [v34 setDoNotFold:{objc_msgSend(firstObject3, "doNotFold")}];
          }

          createDedupeDicts(v34, dictionary2, dictionary, dictionary3, dictionary4, dictionary5, dictionary6, isServerEntitySearch);
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
        bundleIdentifier3 = [v41 bundleIdentifier];
        v43 = [bundleIdentifier3 hasPrefix:@"com.apple.parsec."];

        if (v43)
        {
          results3 = [v41 results];
          v45 = [results3 count];

          if (!v45)
          {
            goto LABEL_81;
          }

          results4 = [v41 results];
          v47 = [results4 copy];

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
                bundleIdentifier4 = [v41 bundleIdentifier];
                v55 = [bundleIdentifier4 hasPrefix:@"com.apple.parsec."];

                if (!v55)
                {
                  goto LABEL_44;
                }

                storeIdentifier = [v53 storeIdentifier];
                if (storeIdentifier)
                {
                  v57 = storeIdentifier;
                  storeIdentifier2 = [v53 storeIdentifier];
                  v59 = [dictionary objectForKey:storeIdentifier2];

                  if (v59)
                  {
                    goto LABEL_43;
                  }
                }

                calendarIdentifier = [v53 calendarIdentifier];
                if (!calendarIdentifier)
                {
                  goto LABEL_44;
                }

                v61 = calendarIdentifier;
                calendarIdentifier2 = [v53 calendarIdentifier];
                v59 = [dictionary3 objectForKey:calendarIdentifier2];

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

        bundleIdentifier5 = [v41 bundleIdentifier];
        v64 = [bundleIdentifier5 isEqualToString:@"com.apple.dictionary"];

        if (v64)
        {
          results5 = [v41 results];
          v66 = [results5 count];

          if (!v66)
          {
            goto LABEL_81;
          }

          results6 = [v41 results];
          v68 = [results6 copy];

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
                identifier = [v74 identifier];
                if (!identifier || ([dictionary4 objectForKey:identifier], v76 = objc_claimAutoreleasedReturnValue(), v76, !v76))
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

        bundleIdentifier6 = [v41 bundleIdentifier];
        if ([bundleIdentifier6 isEqualToString:v170])
        {
          break;
        }

        bundleIdentifier7 = [v41 bundleIdentifier];
        v79 = [bundleIdentifier7 isEqualToString:v166];

        if (v79)
        {
          goto LABEL_64;
        }

        bundleIdentifier8 = [v41 bundleIdentifier];
        v98 = [bundleIdentifier8 isEqualToString:*MEMORY[0x277D4BF10]];

        if (v98)
        {
          v159 = v40;
          obj = objc_alloc_init(MEMORY[0x277CCAB58]);
          v194 = 0u;
          v195 = 0u;
          v196 = 0u;
          v197 = 0u;
          results7 = [v41 results];
          v100 = [results7 countByEnumeratingWithState:&v194 objects:v221 count:16];
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
                  objc_enumerationMutation(results7);
                }

                v105 = *(*(&v194 + 1) + 8 * n);
                identifier2 = [v105 identifier];
                v107 = [identifier2 hasPrefix:v172];

                if (v107)
                {
                  sectionBundleIdentifier = [v105 sectionBundleIdentifier];
                  v109 = [sectionBundleIdentifier isEqualToString:v170];

                  v110 = v168;
                  if ((v109 & 1) != 0 || ([v105 sectionBundleIdentifier], v111 = objc_claimAutoreleasedReturnValue(), v112 = objc_msgSend(v111, "isEqualToString:", v166), v111, v110 = v164, v112))
                  {
                    v113 = [dictionary5 objectForKey:v110];
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

              v101 = [results7 countByEnumeratingWithState:&v194 objects:v221 count:16];
            }

            while (v101);
          }

          resultSet = [v41 resultSet];
          [resultSet removeObjectsAtIndexes:obj];

          [(SPGeneralQueryTask *)self truncateSuggestionsSectionToFit:v41];
          v40 = v159;
          v29 = v160;
          goto LABEL_83;
        }

        bundleIdentifier9 = [v41 bundleIdentifier];
        v117 = [bundleIdentifier9 isEqualToString:v155];

        if (v117)
        {
          results8 = [v41 results];
          v119 = [results8 count];

          if (v119)
          {
            results9 = [v41 results];
            v121 = [results9 copy];

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
                  applicationBundleIdentifier = [v126 applicationBundleIdentifier];
                  v128 = [dictionary6 objectForKey:applicationBundleIdentifier];
                  v129 = v128;
                  if (applicationBundleIdentifier)
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
      results10 = [v41 results];
      v81 = [results10 count];

      if (!v81)
      {
        goto LABEL_81;
      }

      results11 = [v41 results];
      v83 = [results11 copy];

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
            identifier3 = [v88 identifier];
            v90 = [identifier3 hasPrefix:v172];

            if (v90)
            {
              sectionBundleIdentifier2 = [v88 sectionBundleIdentifier];
              v92 = [sectionBundleIdentifier2 isEqualToString:v170];

              v93 = v168;
              if ((v92 & 1) == 0 && ([v88 sectionBundleIdentifier], v94 = objc_claimAutoreleasedReturnValue(), v95 = objc_msgSend(v94, "isEqualToString:", v166), v94, v93 = v164, !v95) || (objc_msgSend(dictionary5, "objectForKey:", v93), (v96 = objc_claimAutoreleasedReturnValue()) == 0))
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
    [dictionary removeAllObjects];
    [dictionary2 removeAllObjects];
    [dictionary3 removeAllObjects];
    [dictionary4 removeAllObjects];
    [dictionary5 removeAllObjects];
    [dictionary6 removeAllObjects];
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
      bundleIdentifier10 = [v132 bundleIdentifier];
      if ([bundleIdentifier10 isEqualToString:@"com.apple.spotlight.tophits"])
      {
        goto LABEL_123;
      }

      bundleIdentifier11 = [v132 bundleIdentifier];
      if ([bundleIdentifier11 isEqualToString:v161])
      {
        break;
      }

      bundleIdentifier12 = [v132 bundleIdentifier];
      v152 = [bundleIdentifier12 isEqualToString:*MEMORY[0x277D4BF10]];

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
    results12 = [v132 results];
    v135 = [results12 countByEnumeratingWithState:&v182 objects:v218 count:16];
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
            objc_enumerationMutation(results12);
          }

          v140 = *(*(&v182 + 1) + 8 * kk);
          v141 = updateDedupeDictsForResult(v140, dictionary2, dictionary, dictionary3, dictionary4, dictionary5, dictionary6);
          v142 = v141;
          if (v141)
          {
            inlineCard = [v141 inlineCard];
            inlineCard2 = [v140 inlineCard];
            v145 = inlineCard2;
            if (inlineCard)
            {
              v146 = 1;
            }

            else
            {
              v146 = inlineCard2 == 0;
            }

            if (!v146)
            {
              [v142 setInlineCard:inlineCard2];
            }

            compactCard = [v142 compactCard];

            compactCard2 = [v140 compactCard];

            if (compactCard)
            {
              v149 = 1;
            }

            else
            {
              v149 = compactCard2 == 0;
            }

            if (!v149)
            {
              [v142 setCompactCard:compactCard2];
            }

            handleHiddenResult();
            [v173 addIndex:v137];
          }

          ++v137;
        }

        v136 = [results12 countByEnumeratingWithState:&v182 objects:v218 count:16];
      }

      while (v136);
    }

    resultSet2 = [v132 resultSet];
    [resultSet2 removeObjectsAtIndexes:v173];

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

- (void)addSections:(id)sections delayedTopHit:(BOOL)hit
{
  sectionsCopy = sections;
  [(SPGeneralQueryTask *)self handleOptionsForNewSections:?];
  if (hit)
  {
    if (![sectionsCopy count])
    {
      goto LABEL_6;
    }

    mutableSections = [(SPQueryTask *)self mutableSections];
    firstObject = [sectionsCopy firstObject];
    [mutableSections insertObject:firstObject atIndex:0];
  }

  else
  {
    mutableSections = [(SPQueryTask *)self mutableSections];
    [mutableSections addObjectsFromArray:sectionsCopy];
  }

LABEL_6:
  [(SPGeneralQueryTask *)self mergeSections];
}

- (id)unsafeSessionEntityString
{
  mutableSessionEntityString = [(SPGeneralQueryTask *)self mutableSessionEntityString];
  v3 = [mutableSessionEntityString copy];

  return v3;
}

- (id)displayedText
{
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];

  if ([queryContext hasMarkedText])
  {
    markedTextArray = [queryContext markedTextArray];
    searchString = [markedTextArray componentsJoinedByString:&stru_287C35638];
  }

  else
  {
    searchString = [(SPGeneralQueryTask *)self searchString];
  }

  return searchString;
}

- (void)processAppResults:(id)results maxAppResults:(unint64_t)appResults section:(id)section topHitsIndex:(unint64_t *)index
{
  v30 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  sectionCopy = section;
  bundleIdentifier = [sectionCopy bundleIdentifier];
  v11 = [bundleIdentifier isEqualToString:@"com.apple.spotlight.tophits"];

  bundleIdentifier2 = [sectionCopy bundleIdentifier];
  v13 = [bundleIdentifier2 isEqualToString:*MEMORY[0x277D4BEF0]];

  if ((v13 & 1) != 0 || v11)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    results = [sectionCopy results];
    v15 = [results countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(results);
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        if ([v19 isLocalApplicationResult] && (objc_msgSend(v19, "isAppClip") & 1) == 0)
        {
          title = [v19 title];
          [title setMaxLines:1];

          bundleIdentifier3 = [sectionCopy bundleIdentifier];
          v22 = [bundleIdentifier3 isEqualToString:@"com.apple.spotlight.tophits"];

          if (v22)
          {
            ++*index;
            [resultsCopy insertObject:v19 atIndex:?];
          }

          else
          {
            [resultsCopy addObject:v19];
          }

          if ([resultsCopy count] >= appResults)
          {
            break;
          }
        }

        if (v16 == ++v18)
        {
          v16 = [results countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v16)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    [sectionCopy setMaxInitiallyVisibleResults:appResults];
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

  mutableSections = [(SPQueryTask *)self mutableSections];
  v7 = [mutableSections mutableCopy];
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

  firstObject = [v10 firstObject];
  bundleIdentifier = [firstObject bundleIdentifier];
  v13 = [bundleIdentifier isEqual:@"com.apple.spotlight.tophits"];

  if (v13)
  {
    firstObject2 = [v10 firstObject];
    if (firstObject2)
    {
      v15 = firstObject2;
      maxTopHitAppResults = [(SPQueryTask *)self maxTopHitAppResults];
      v27 = 0;
      [(SPGeneralQueryTask *)self processAppResults:0 maxAppResults:maxTopHitAppResults section:v15 topHitsIndex:&v27];
      resultSet = [v15 resultSet];
      v18 = [resultSet count];

      if (v18 > maxTopHitAppResults)
      {
        resultSet2 = [v15 resultSet];
        resultSet3 = [v15 resultSet];
        [resultSet2 removeObjectsInRange:{maxTopHitAppResults, objc_msgSend(resultSet3, "count") - maxTopHitAppResults}];
      }
    }
  }

  v21 = MEMORY[0x277D659A8];
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  showMoreInAppInfo = [(SPGeneralQueryTask *)self showMoreInAppInfo];
  v25 = [v21 buildSectionsWithSections:v10 queryContext:queryContext searchInAppInfo:showMoreInAppInfo renderState:{-[SPQueryTask unsafeState](self, "unsafeState")}];

  return v25;
}

- (void)searchDaemonQuery:(id)query gotResultSet:(id)set replace:(BOOL)replace partiallyComplete:(BOOL)complete priorityFastPath:(BOOL)path update:(BOOL)update complete:(BOOL)a9 delayedTopHit:(BOOL)self0 unchanged:(BOOL)self1 forceStable:(BOOL)self2 blendingDuration:(double)self3 geoEntityString:(id)self4 supportedAppScopes:(id)self5 showMoreInAppInfo:(id)self6
{
  pathCopy = path;
  completeCopy = complete;
  replaceCopy = replace;
  v96 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  setCopy = set;
  stringCopy = string;
  scopesCopy = scopes;
  infoCopy = info;
  queryProcessor = [(SPQueryTask *)self queryProcessor];
  dispatch_assert_queue_V2(queryProcessor);

  v25 = objc_alloc(MEMORY[0x277D4C270]);
  query = [(SPQueryTask *)self query];
  v27 = [v25 initWithEvent:@"com.apple.searchd.frontend.query.end" timeInterval:0 queryId:{objc_msgSend(query, "queryIdent")}];

  mEMORY[0x277D4BEB0] = [MEMORY[0x277D4BEB0] sharedManager];
  query2 = [(SPQueryTask *)self query];
  v85 = v27;
  [mEMORY[0x277D4BEB0] reportFeedback:v27 queryId:{objc_msgSend(query2, "queryIdent")}];

  staleResultsTimer = self->_staleResultsTimer;
  if (staleResultsTimer)
  {
    dispatch_source_cancel(staleResultsTimer);
    v31 = self->_staleResultsTimer;
    self->_staleResultsTimer = 0;
  }

  if (completeCopy || update || pathCopy || a9)
  {
    v32 = 2;
    if (!completeCopy)
    {
      v32 = 3;
    }

    if (pathCopy)
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

  v34 = [scopesCopy count];
  v35 = scopesCopy;
  v36 = queryCopy;
  v37 = stringCopy;
  if (v34)
  {
    [(SPGeneralQueryTask *)self setSupportedAppScopes:v35];
  }

  v86 = v35;
  if ([infoCopy count])
  {
    [(SPGeneralQueryTask *)self setShowMoreInAppInfo:infoCopy];
  }

  if ((-[SPQueryTask forceStableResults](self, "forceStableResults") || stable) && ([setCopy stableSections], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v39 = v38;
    stableSections = [setCopy stableSections];
  }

  else
  {
    stableSections = [setCopy resultSections];
  }

  if (replaceCopy)
  {
    mutableSections = [(SPQueryTask *)self mutableSections];
    [mutableSections removeAllObjects];

    [(SPGeneralQueryTask *)self setMutableSessionEntityString:0];
  }

  if (stringCopy)
  {
    [(SPGeneralQueryTask *)self setMutableSessionEntityString:stringCopy];
  }

  if ([stableSections count])
  {
    if (!unchanged)
    {
      v42 = [stableSections mutableCopy];
      [(SPGeneralQueryTask *)self addSections:v42 delayedTopHit:hit];

      [queryCopy queryID];
      kdebug_trace();
      if ([(SPGeneralQueryTask *)self newQuery])
      {
        [(SPGeneralQueryTask *)self setNewQuery:0];
        query3 = [queryCopy query];
        creationStamp = [query3 creationStamp];
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        sp_analytics_log_timing_with_bundle_id("com.apple.searchd.query.client", "ttfr", creationStamp, bundleIdentifier);

        v37 = stringCopy;
      }
    }
  }

  unsafeSections = [(SPGeneralQueryTask *)self unsafeSections];
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
    v95 = *&unsafeSections;
    _os_log_impl(&dword_26B71B000, v49, v50, "sections: %@", buf, 0xCu);
  }

  if (!unchanged && [(SPGeneralQueryTask *)self readyToUpdate])
  {
    if (![(SPGeneralQueryTask *)self didReceiveCompleteCallback])
    {
      [queryCopy queryID];
      kdebug_trace();
      v51 = SPLogForSPLogCategoryTelemetry();
      queryID = [queryCopy queryID];
      if (queryID)
      {
        v53 = queryID;
        if (os_signpost_enabled(v51))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_26B71B000, v51, OS_SIGNPOST_INTERVAL_END, v53, "queryUI", " enableTelemetry=YES ", buf, 2u);
        }
      }
    }

    v83 = setCopy;
    session = [(SPGeneralQueryTask *)self session];
    v55 = MEMORY[0x277D65968];
    query4 = [queryCopy query];
    queryContext = [query4 queryContext];
    queryIntent = [queryContext queryIntent];
    [session finishRanking:unsafeSections blendingDuration:objc_msgSend(v55 spotlightQueryIntent:{"spotlightQueryIntent:", queryIntent), duration}];

    [(SPGeneralQueryTask *)self setDidReceiveCompleteCallback:1];
    if (replaceCopy)
    {
      v59 = "session reset";
    }

    else
    {
      v59 = "session complete";
    }

    query5 = [queryCopy query];
    creationStamp2 = [query5 creationStamp];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    v64 = sp_analytics_log_timing_with_bundle_id("com.apple.searchd.query.client", v59, creationStamp2, bundleIdentifier2);

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

    v36 = queryCopy;
    setCopy = v83;
    v37 = stringCopy;
  }

  query6 = [v36 query];
  queryContext2 = [query6 queryContext];
  fetchL2Signals = [queryContext2 fetchL2Signals];

  if (fetchL2Signals)
  {
    v84 = setCopy;
    v71 = MEMORY[0x277CCAAB0];
    mutableSections2 = [(SPQueryTask *)self mutableSections];
    v92 = 0;
    v73 = [v71 archivedDataWithRootObject:mutableSections2 requiringSecureCoding:1 error:&v92];
    v74 = v92;

    if (v74)
    {
      v75 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        [SPFederatedQueryTask searchQuery:v74 gotResultSet:v75 replace:? partiallyComplete:? priorityFastPath:? update:? complete:? delayedTopHit:? unchanged:? forceStable:? blendingDuration:? geoEntityString:? supportedAppScopes:? showMoreInAppInfo:?];
      }

      v76 = 0;
      v77 = infoCopy;
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
        v77 = infoCopy;
        goto LABEL_63;
      }

      v75 = SPLogForSPLogCategoryDefault();
      v77 = infoCopy;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        [SPFederatedQueryTask searchQuery:v74 gotResultSet:v75 replace:? partiallyComplete:? priorityFastPath:? update:? complete:? delayedTopHit:? unchanged:? forceStable:? blendingDuration:? geoEntityString:? supportedAppScopes:? showMoreInAppInfo:?];
      }
    }

LABEL_63:
    [(SPQueryTask *)self updateResultsThroughDelegate:0 state:[(SPQueryTask *)self unsafeState] unchanged:unchanged sections:v76];

    setCopy = v84;
    v37 = stringCopy;
    goto LABEL_64;
  }

  [(SPQueryTask *)self updateResultsThroughDelegate:0 state:[(SPQueryTask *)self unsafeState] unchanged:unchanged sections:unsafeSections];
  v77 = infoCopy;
LABEL_64:

  v82 = *MEMORY[0x277D85DE8];
}

- (void)searchDaemonQuery:(id)query encounteredError:(id)error
{
  queryCopy = query;
  errorCopy = error;
  queryProcessor = [(SPQueryTask *)self queryProcessor];
  dispatch_assert_queue_V2(queryProcessor);

  token = [(SPQueryTask *)self token];
  LODWORD(queryProcessor) = [token isEqual:queryCopy];

  if (queryProcessor)
  {
    v10 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SPGeneralQueryTask *)errorCopy searchDaemonQuery:queryCopy encounteredError:v10];
    }
  }
}

- (id)retainAndMergeSections:(id)sections forState:(unint64_t)state
{
  sectionsCopy = sections;
  session = [(SPGeneralQueryTask *)self session];
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  v10 = [queryContext queryKind] - 5;

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

  if (!session)
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

  if (state != 1)
  {
    query2 = [(SPQueryTask *)self query];
    [session setLastSections:sectionsCopy forQuery:query2];
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

  if ([sectionsCopy count] == 1)
  {
    query2 = [sectionsCopy objectAtIndex:0];
    bundleIdentifier = [query2 bundleIdentifier];
    v16 = [bundleIdentifier isEqual:@"com.apple.spotlight.tophits"];

    if (v16)
    {
      query3 = [(SPQueryTask *)self query];
      v18 = [session copyStaleSectionsForQuery:query3];

      if ([v18 count])
      {
        v19 = [v18 mutableCopy];
        v20 = [v18 objectAtIndex:0];
        queryProcessor = [(SPQueryTask *)self queryProcessor];
        v22 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queryProcessor);
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
        v27 = sectionsCopy;
        v32 = v27;
        dispatch_source_set_event_handler(v26, handler);
        dispatch_activate(self->_staleResultsTimer);
        bundleIdentifier2 = [v20 bundleIdentifier];
        LODWORD(v26) = [bundleIdentifier2 isEqual:@"com.apple.spotlight.tophits"];

        v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v26)
        {
          if (v29)
          {
            *v30 = 0;
            _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Merged - case 1!", v30, 2u);
          }

          [v19 replaceObjectAtIndex:0 withObject:query2];
        }

        else
        {
          if (v29)
          {
            *v30 = 0;
            _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Merged - case 2!", v30, 2u);
          }

          [v19 insertObject:query2 atIndex:0];
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

        v19 = sectionsCopy;
      }

      sectionsCopy = v19;
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

  return sectionsCopy;
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