@interface SSBullseyeTopHitsManager
+ (id)dedupeWebURLSuggestionsFromSections:(id)sections;
- (SSBullseyeTopHitsManager)initWithQueryId:(int64_t)id categoryToResultMapping:(id)mapping currentTopHitSection:(id)section queryContext:(id)context ranker:(id)ranker;
- (id)bullseyeTopHitSection;
- (id)bullseyeTopHitSections:(id)sections maxTopHitsCount:(int)count minThresholdForBigResult:(double)result needExceptionForSafariSection:(BOOL)section;
- (id)tagOrFilterHiddenSectionsForClient:(id)client isCommittedSearch:(BOOL)search maxVisibleSections:(int64_t)sections maxTopHitsCount:(int)count minThresholdForBigResult:(double)result topHitSection:(id *)section;
@end

@implementation SSBullseyeTopHitsManager

- (SSBullseyeTopHitsManager)initWithQueryId:(int64_t)id categoryToResultMapping:(id)mapping currentTopHitSection:(id)section queryContext:(id)context ranker:(id)ranker
{
  v32 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  sectionCopy = section;
  contextCopy = context;
  rankerCopy = ranker;
  v30.receiver = self;
  v30.super_class = SSBullseyeTopHitsManager;
  v17 = [(SSBullseyeTopHitsManager *)&v30 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_categoryToResultMapping, mapping);
    v18->_queryID = id;
    objc_storeStrong(&v18->_topHitSection, section);
    objc_storeStrong(&v18->_queryContext, context);
    objc_storeStrong(&v18->_ranker, ranker);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = mappingCopy;
    v20 = [v19 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        v23 = 0;
        do
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          SSScreenTimeStatusForBundleIDWithCompletionHandler(*(*(&v26 + 1) + 8 * v23++), 0);
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v21);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)bullseyeTopHitSection
{
  v14 = *MEMORY[0x1E69E9840];
  relatedSectionBundleIdentifier = [(SFMutableResultSection *)self->_topHitSection relatedSectionBundleIdentifier];
  if (relatedSectionBundleIdentifier)
  {
    v4 = [(NSDictionary *)self->_categoryToResultMapping objectForKey:relatedSectionBundleIdentifier];
    if (v4)
    {
      v5 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        queryID = self->_queryID;
        title = [v4 title];
        v11[0] = 67109378;
        v11[1] = queryID;
        v12 = 2112;
        v13 = title;
        _os_log_impl(&dword_1D9F69000, v5, OS_LOG_TYPE_INFO, "### [%d] top hit section title:%@", v11, 0x12u);
      }

      v8 = [(SSBullseyeTopHitsManager *)self bullseyeSectionForTopHit:v4 initiallyHidden:0 checkForTopHit:0 thresholdCounter:0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)bullseyeTopHitSections:(id)sections maxTopHitsCount:(int)count minThresholdForBigResult:(double)result needExceptionForSafariSection:(BOOL)section
{
  v186 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  v9 = +[SSRankingManager getTopHitsContinuationThresholds];
  v140 = +[SSRankingManager getForbiddenSecondSections];
  v10 = +[SSRankingManager getPoorSecondSections];
  v144 = [sectionsCopy count];
  v11 = [v9 count];
  v147 = SSMaxSectionsBelowSuggestions();
  v12 = PRSLogCategoryDefault();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 1.5047e-36;
    v181 = v11;
    v182 = 2112;
    *v183 = v9;
    _os_log_impl(&dword_1D9F69000, v12, OS_LOG_TYPE_INFO, "### [%d] %@", buf, 0x12u);
  }

  if (!v11)
  {
    v14 = 0;
    goto LABEL_176;
  }

  v139 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v143 = sectionsCopy;
  countCopy = count;
  v123 = v9;
  v124 = v11;
  v121 = v10;
  sectionCopy = section;
  if (v147)
  {
    v146 = 0;
    v13 = v144;
  }

  else
  {
    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    v15 = sectionsCopy;
    v16 = [v15 countByEnumeratingWithState:&v173 objects:v185 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v174;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v174 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v173 + 1) + 8 * i);
          bundleIdentifier = [v20 bundleIdentifier];
          v22 = [bundleIdentifier isEqualToString:@"com.apple.searchd.suggestions"];

          if (v22)
          {
            v146 = v20;
            count = countCopy;
            goto LABEL_18;
          }

          v13 = v144;
        }

        v17 = [v15 countByEnumeratingWithState:&v173 objects:v185 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

      v146 = 0;
      count = countCopy;
    }

    else
    {
      v146 = 0;
LABEL_18:
      v13 = v144;
    }

    sectionsCopy = v143;
  }

  v125 = 0;
  v141 = 0;
  v23 = 0;
  v128 = 0;
  v133 = 0;
  v132 = 0;
  v142 = 1;
  do
  {
    if (!v13 || v23 >= count)
    {
      goto LABEL_163;
    }

    v153 = 0;
    v138 = 0;
    v24 = 0;
    do
    {
      v25 = [sectionsCopy objectAtIndexedSubscript:v24];
      bundleIdentifier2 = [v25 bundleIdentifier];
      domain = [v25 domain];
      if (domain == 2 && (v153 & 1) != 0)
      {
        goto LABEL_51;
      }

      v148 = domain;
      v154 = v23;
      v155 = bundleIdentifier2;
      bundleIdentifier3 = [v25 bundleIdentifier];
      v29 = v25;
      v30 = [bundleIdentifier3 isEqualToString:@"com.apple.spotlight.tophits"];

      if (v30)
      {
        bundleIdentifier4 = objc_opt_new();
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v172 = 0u;
        v151 = v29;
        resultSet = [v29 resultSet];
        v33 = [resultSet countByEnumeratingWithState:&v169 objects:v184 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v170;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v170 != v35)
              {
                objc_enumerationMutation(resultSet);
              }

              v37 = *(*(&v169 + 1) + 8 * j);
              applicationBundleIdentifier = [v37 applicationBundleIdentifier];
              v39 = SSScreenTimeStatusForBundleIDWithCompletionHandler(applicationBundleIdentifier, 0);

              if ((v39 & 1) == 0)
              {
                [bundleIdentifier4 addObject:v37];
              }
            }

            v34 = [resultSet countByEnumeratingWithState:&v169 objects:v184 count:16];
          }

          while (v34);
        }

        v40 = [bundleIdentifier4 count];
        v41 = v40 == 0;
        if (v40)
        {
          v25 = v151;
          [v151 setResultSet:bundleIdentifier4];
          v41 = 0;
          sectionsCopy = v143;
          v13 = v144;
          count = countCopy;
        }

        else
        {
          sectionsCopy = v143;
          v13 = v144;
          count = countCopy;
          v25 = v151;
        }
      }

      else
      {
        bundleIdentifier4 = [v29 bundleIdentifier];
        v41 = SSScreenTimeStatusForBundleIDWithCompletionHandler(bundleIdentifier4, 0);
        v25 = v29;
      }

      if (v25 == v146 && v147 == 0)
      {
        v23 = v154;
LABEL_50:
        bundleIdentifier2 = v155;
        goto LABEL_51;
      }

      v23 = v154;
      if (v41)
      {
        goto LABEL_50;
      }

      bundleIdentifier5 = [v25 bundleIdentifier];
      IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos(bundleIdentifier5);

      if (IsSyndicatedPhotos)
      {
        goto LABEL_50;
      }

      bundleIdentifier6 = [v25 bundleIdentifier];
      v152 = v25;
      if ([bundleIdentifier6 isEqualToString:@"com.apple.spotlight.tophits"])
      {
        relatedSectionBundleIdentifier = [v25 relatedSectionBundleIdentifier];
        v47 = SSSectionIsSyndicatedPhotos(relatedSectionBundleIdentifier);

        if (v47)
        {
          goto LABEL_162;
        }
      }

      else
      {
      }

      bundleIdentifier2 = v155;
      if (v142 & 1) == 0 && ([v155 isEqualToString:@"com.apple.application"])
      {
        v25 = v152;
        goto LABEL_51;
      }

      v25 = v152;
      if (v154 >= 1 && v155 && [v140 containsObject:v155])
      {
        if (![v155 isEqualToString:@"com.apple.Preferences"])
        {
          goto LABEL_51;
        }

        resultSet2 = [v152 resultSet];
        firstObject = [resultSet2 firstObject];

        if (!firstObject || ([firstObject rankingItem], v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "topHitReason") & 0xF, v50, !v51))
        {
          bundleIdentifier2 = v155;
          goto LABEL_160;
        }
      }

      firstObject = [v152 title];
      v52 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        queryID = self->_queryID;
        *buf = 1.5048e-36;
        v181 = queryID;
        v182 = 1024;
        *v183 = v24;
        *&v183[4] = 2112;
        *&v183[6] = firstObject;
        _os_log_impl(&dword_1D9F69000, v52, OS_LOG_TYPE_INFO, "### [%d] section[%d] title:%@", buf, 0x18u);
      }

      if (v148 == 3)
      {
        v136 = 0;
      }

      else
      {
        v136 = (v148 == 2) ^ (v148 != 10);
      }

      bundleIdentifier7 = [v152 bundleIdentifier];
      v55 = [bundleIdentifier7 isEqualToString:@"com.apple.searchd.suggestions"];

      v138 |= v55;
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      resultSet3 = [v152 resultSet];
      v57 = [resultSet3 countByEnumeratingWithState:&v165 objects:v179 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v166;
        do
        {
          for (k = 0; k != v58; ++k)
          {
            if (*v166 != v59)
            {
              objc_enumerationMutation(resultSet3);
            }

            v61 = *(*(&v165 + 1) + 8 * k);
            v164 = 3233;
            *buf = (v24 - (v138 & 1));
            v181 = 0;
            rankingItem = [v61 rankingItem];
            v63 = rankingItem;
            if (rankingItem)
            {
              l2FeatureVector = [rankingItem L2FeatureVector];
              [l2FeatureVector setScores:buf forFeatures:&v164 count:1];
            }
          }

          v58 = [resultSet3 countByEnumeratingWithState:&v165 objects:v179 count:16];
        }

        while (v58);
      }

      v25 = v152;
      v23 = v154;
      v65 = [(SSBullseyeTopHitsManager *)self bullseyeSectionForTopHit:v152 initiallyHidden:0 checkForTopHit:v136 boostSafari:(v132 & 1) == 0 thresholdCounter:v154 existingResults:v139 allowMultipleTopHits:v147 == 0];
      if (!v133)
      {
        v133 = objc_opt_new();
      }

      count = countCopy;
      v13 = v144;
      v134 = v65;
      if (![v65 resultsCount])
      {
        v153 |= v148 == 2;
        bundleIdentifier2 = v155;
        goto LABEL_159;
      }

      resultSet4 = [v65 resultSet];
      firstObject2 = [resultSet4 firstObject];

      if (!firstObject2)
      {
        bundleIdentifier2 = v155;
        goto LABEL_158;
      }

      v68 = v148 != 2;
      v149 = v148 == 2;
      v69 = firstObject2;
      v132 |= [firstObject2 isSafariTopHit];
      rankingItem2 = [firstObject2 rankingItem];
      l2FeatureVector2 = [rankingItem2 L2FeatureVector];
      [l2FeatureVector2 originalL2Score];
      v73 = v72;

      [v69 sectionBundleIdentifier];
      v127 = v126 = v69;
      preferTopPlatter = [v69 preferTopPlatter];
      v75 = preferTopPlatter;
      if (v154 > 0 || (v68 & preferTopPlatter & 1) != 0 || (v149 & preferTopPlatter & 1) != 0)
      {
        sectionsCopy = v143;
        if (v154 > 0)
        {
          goto LABEL_96;
        }
      }

      else
      {
        sectionsCopy = v143;
        if (([v127 isEqualToString:@"com.apple.application"] & 1) == 0 && (objc_msgSend(v140, "containsObject:", v127) & 1) == 0)
        {
          rankingItem3 = [v69 rankingItem];
          topHitReason = [rankingItem3 topHitReason];

          if (!topHitReason)
          {
LABEL_96:
            if (v147)
            {
LABEL_112:
              LODWORD(v81) = 0;
            }

            else
            {
              if (!v128)
              {
                v128 = objc_opt_new();
              }

              v162 = 0u;
              v163 = 0u;
              v160 = 0u;
              v161 = 0u;
              resultSet5 = [v134 resultSet];
              v79 = [resultSet5 countByEnumeratingWithState:&v160 objects:v178 count:16];
              if (v79)
              {
                v80 = v79;
                v118 = firstObject;
                LODWORD(v81) = 0;
                v82 = *v161;
                do
                {
                  for (m = 0; m != v80; ++m)
                  {
                    if (*v161 != v82)
                    {
                      objc_enumerationMutation(resultSet5);
                    }

                    v84 = *(*(&v160 + 1) + 8 * m);
                    [v84 setUsesCompactDisplay:{objc_msgSend(v84, "shouldUseCompactDisplay") | objc_msgSend(v84, "usesCompactDisplay")}];
                    if (v141 > countCopy)
                    {
                      goto LABEL_109;
                    }

                    if (([v139 containsObject:v84] & 1) == 0)
                    {
                      [v128 addObject:v84];
                      ++v141;
                      LODWORD(v81) = v81 + 1;
                      [v139 addObject:v84];
                    }
                  }

                  v80 = [resultSet5 countByEnumeratingWithState:&v160 objects:v178 count:16];
                }

                while (v80);
LABEL_109:
                count = countCopy;
                LODWORD(v23) = v154;
                firstObject = v118;
              }

              else
              {
                LODWORD(v81) = 0;
                LODWORD(v23) = v154;
              }

LABEL_151:
            }

            v13 = v144;
LABEL_153:
            if (v124 <= v23)
            {
              goto LABEL_155;
            }

            v103 = v73;
            v104 = [v123 objectAtIndexedSubscript:v23];
            [v104 doubleValue];
            v106 = v105;

            if (v106 >= v103)
            {
              goto LABEL_155;
            }

LABEL_162:
            break;
          }
        }
      }

      if (v75)
      {
        if ([v133 count])
        {
          goto LABEL_112;
        }
      }

      else
      {
        resultSet5 = [v126 sectionBundleIdentifier];
        if ([v121 containsObject:resultSet5])
        {
          v85 = [v133 count];

          if (v85)
          {
            goto LABEL_112;
          }
        }

        else
        {
          rankingItem4 = [v126 rankingItem];
          if (![rankingItem4 topHitReason])
          {

            LODWORD(v81) = 0;
            goto LABEL_151;
          }

          v87 = [v133 count];

          if (v87)
          {
            goto LABEL_112;
          }
        }
      }

      v13 = v144;
      v119 = firstObject;
      if ([v155 isEqualToString:@"com.apple.spotlight.tophits"])
      {
        relatedSectionBundleIdentifier2 = [v152 relatedSectionBundleIdentifier];
        v89 = [relatedSectionBundleIdentifier2 isEqualToString:@"com.apple.application"];

        v142 &= v89 ^ 1;
      }

      [v133 addObject:v134];
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      resultSet6 = [v134 resultSet];
      v150 = [resultSet6 countByEnumeratingWithState:&v156 objects:v177 count:16];
      v91 = 0;
      v81 = 0;
      if (!v150)
      {
        goto LABEL_147;
      }

      v137 = 0;
      v129 = 0;
      v122 = 0;
      v135 = *v157;
      while (2)
      {
        for (n = 0; n != v150; ++n)
        {
          if (*v157 != v135)
          {
            objc_enumerationMutation(resultSet6);
          }

          v23 = *(*(&v156 + 1) + 8 * n);
          [v23 setUsesCompactDisplay:{objc_msgSend(v23, "shouldUseCompactDisplay") | objc_msgSend(v23, "usesCompactDisplay")}];
          [v139 addObject:v23];
          sectionBundleIdentifier = [v23 sectionBundleIdentifier];
          if ([sectionBundleIdentifier isEqualToString:@"com.apple.application"])
          {
            if ((v91 & 1) == 0)
            {
              v91 = 1;
            }

            if (v137)
            {
              v81 = v81;
            }

            else
            {
              v81 = (v81 + 1);
            }

            v94 = v141;
            if ((v137 & 1) == 0)
            {
              v94 = v141 + 1;
            }

            v141 = v94;
            v137 = 1;
            LODWORD(v23) = v154;
          }

          else
          {
            if (v141 > countCopy)
            {

              v13 = v144;
              LODWORD(v23) = v154;
              goto LABEL_147;
            }

            if ([sectionBundleIdentifier isEqualToString:@"com.apple.mobiletimer"])
            {
              v130 = v91;
              v95 = v81;
              v81 = resultSet6;
              rankingItem5 = [v23 rankingItem];
              l2FeatureVector3 = [rankingItem5 L2FeatureVector];
              [l2FeatureVector3 scoreForFeature:1982];
              v99 = v98;

              if (v99 == 0.0)
              {
                LODWORD(v23) = v154;
                v129 |= v154 == 0;
                resultSet6 = v81;
                LODWORD(v81) = v95;
              }

              else
              {
                resultSet6 = v81;
                if ((v99 != 1.0 || (v129 & 1) == 0) | v122 & 1)
                {
                  LODWORD(v23) = v154;
                  v81 = v95;
                  v91 = v130;
                  goto LABEL_143;
                }

                [v23 setUsesCompactDisplay:1];
                v100 = v128;
                LODWORD(v81) = v95;
                if (!v128)
                {
                  v100 = objc_opt_new();
                }

                v128 = v100;
                [v100 addObject:v23];
                [v139 addObject:v23];
                v122 = 1;
                LODWORD(v23) = v154;
              }

              v91 = v130;
            }

            else
            {
              LODWORD(v23) = v154;
            }

            ++v141;
            v81 = (v81 + 1);
          }

LABEL_143:
        }

        v150 = [resultSet6 countByEnumeratingWithState:&v156 objects:v177 count:16];
        if (v150)
        {
          continue;
        }

        break;
      }

      v13 = v144;
LABEL_147:

      v101 = v134;
      v102 = v132 | ~(v91 & sectionCopy);
      v125 = v101;
      count = countCopy;
      firstObject = v119;
      if (v102)
      {
        goto LABEL_153;
      }

LABEL_155:
      v23 = (v81 + v23);
      if (v81)
      {
        v24 = 0;
      }

      v25 = v152;
      bundleIdentifier2 = v155;
      firstObject2 = v126;
LABEL_158:

LABEL_159:
LABEL_160:

LABEL_51:
      ++v24;
    }

    while (v24 < v13 && v23 < count);
LABEL_163:
    v107 = v23;
    v23 = 1;
  }

  while (!v107);
  v9 = v123;
  v10 = v121;
  if ([v128 count])
  {
    if (v147)
    {
      results = v125;
      if (!results)
      {
        v109 = [SFMutableResultSection alloc];
        v110 = [v143 objectAtIndexedSubscript:0];
        results = [(SFMutableResultSection *)v109 initWithSection:v110];

        resultSet7 = [(SFMutableResultSection *)results resultSet];
        [resultSet7 removeAllObjects];

        [v133 addObject:results];
      }

      resultSet8 = [(SFMutableResultSection *)results resultSet];
      [resultSet8 addObjectsFromArray:v128];
    }

    else
    {
      results = [v146 results];
      if ([(SFMutableResultSection *)results count])
      {
        v113 = MEMORY[0x1E695DF70];
        firstObject3 = [(SFMutableResultSection *)results firstObject];
        resultSet8 = [v113 arrayWithObject:firstObject3];

        [resultSet8 addObjectsFromArray:v128];
        if ([(SFMutableResultSection *)results count]>= 2)
        {
          v115 = [(SFMutableResultSection *)results subarrayWithRange:1, [(SFMutableResultSection *)results count]- 1];
          [resultSet8 addObjectsFromArray:v115];
        }
      }

      else
      {
        resultSet8 = v128;
      }

      [v146 setResults:resultSet8];
    }

    sectionsCopy = v143;
  }

  v14 = v133;

LABEL_176:
  v116 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)tagOrFilterHiddenSectionsForClient:(id)client isCommittedSearch:(BOOL)search maxVisibleSections:(int64_t)sections maxTopHitsCount:(int)count minThresholdForBigResult:(double)result topHitSection:(id *)section
{
  searchCopy = search;
  v335[16] = *MEMORY[0x1E69E9840];
  clientCopy = client;
  selfCopy = self;
  v244 = searchCopy;
  sectionsCopy = sections;
  if (searchCopy)
  {
    v239 = clientCopy;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_75;
  }

  LODWORD(v283) = count;
  v297 = 0u;
  v298 = 0u;
  v295 = 0u;
  v296 = 0u;
  text = clientCopy;
  v18 = [text countByEnumeratingWithState:&v295 objects:v335 count:16];
  sectionCopy = section;
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = 0;
    v22 = *v296;
    v23 = @"com.apple.application";
    v24 = @"com.apple.mobilesafari";
    *&v286 = @"com.apple.application";
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v296 != v22)
        {
          objc_enumerationMutation(text);
        }

        v26 = *(*(&v295 + 1) + 8 * i);
        bundleIdentifier = [v26 bundleIdentifier];
        if ([bundleIdentifier isEqualToString:v23])
        {
          v21 = 1;
        }

        else
        {
          [v26 relatedSectionBundleIdentifier];
          LODWORD(score) = v21;
          v28 = v20;
          v29 = v24;
          v30 = v19;
          v32 = v31 = v22;
          v33 = [v32 isEqualToString:v23];

          v22 = v31;
          v19 = v30;
          v24 = v29;
          v20 = v28;
          v21 = v33 | score;
        }

        bundleIdentifier2 = [v26 bundleIdentifier];
        v35 = [bundleIdentifier2 isEqualToString:v24];

        v20 |= v35;
        if (v21 & 1) != 0 && (v20)
        {
          v36 = 1;
          goto LABEL_17;
        }

        v23 = v286;
      }

      v19 = [text countByEnumeratingWithState:&v295 objects:v335 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

    v36 = 0;
LABEL_17:
    self = selfCopy;
    section = sectionCopy;
  }

  else
  {
    v36 = 0;
  }

  score = objc_opt_new();
  v37 = [(SSBullseyeTopHitsManager *)self bullseyeTopHitSections:text maxTopHitsCount:v283 minThresholdForBigResult:v36 needExceptionForSafariSection:result];
  v291 = 0u;
  v292 = 0u;
  v293 = 0u;
  v294 = 0u;
  v38 = text;
  v16 = [v38 countByEnumeratingWithState:&v291 objects:v334 count:16];
  v283 = v37;
  if (!v16)
  {
    v48 = 0;
    goto LABEL_38;
  }

  v39 = 0;
  v40 = *v292;
  while (2)
  {
    for (j = 0; j != v16; j = (j + 1))
    {
      if (*v292 != v40)
      {
        objc_enumerationMutation(v38);
      }

      v42 = *(*(&v291 + 1) + 8 * j);
      bundleIdentifier3 = [v42 bundleIdentifier];
      v44 = [bundleIdentifier3 isEqualToString:@"com.apple.searchd.suggestions"];

      if (v44)
      {
        v45 = v42;

        v39 = v45;
      }

      bundleIdentifier4 = [v42 bundleIdentifier];
      IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos(bundleIdentifier4);

      if (IsSyndicatedPhotos)
      {
        resultSet = [v42 resultSet];
        firstObject = [resultSet firstObject];

        rankingItem = [firstObject rankingItem];
        if ([rankingItem photosMatch])
        {
        }

        else
        {
          rankingItem2 = [firstObject rankingItem];
          photosExactMatch = [rankingItem2 photosExactMatch];

          if (!photosExactMatch)
          {
            v48 = 0;
            goto LABEL_36;
          }
        }

        v48 = v42;
LABEL_36:
        self = selfCopy;

        goto LABEL_37;
      }
    }

    v16 = [v38 countByEnumeratingWithState:&v291 objects:v334 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

  v48 = 0;
  self = selfCopy;
LABEL_37:
  v16 = v39;
  section = sectionCopy;
  v37 = v283;
LABEL_38:

  results = [*section results];
  v55 = [results count];

  if (v55)
  {
    self->_haveBullseyeTopHitSection = 1;
    if (![score count])
    {
      [score addObject:*section];
    }
  }

  else if ([v37 count])
  {
    [score addObjectsFromArray:v37];
    firstObject2 = [v37 firstObject];
    [firstObject2 setBundleIdentifier:@"com.apple.spotlight.tophits"];
    v57 = firstObject2;
    *section = firstObject2;
    self->_haveBullseyeTopHitSection = 1;
  }

  v235 = v48;
  if (v16)
  {
    [score addObject:v16];
  }

  if (!sectionsCopy)
  {

    v68 = v38;
    v69 = 0;
    v239 = v68;
    v17 = v235;
    goto LABEL_206;
  }

  v58 = *section;
  results2 = [(SFMutableResultSection *)v58 results];
  v277 = v58;
  if ([results2 count] != 1)
  {

    firstObject3 = 0;
    goto LABEL_55;
  }

  results3 = [(SFMutableResultSection *)v58 results];
  firstObject3 = [results3 firstObject];

  if (!firstObject3)
  {
LABEL_55:
    text = firstObject3;
    sectionHeader = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v70 = [sectionHeader localizedStringForKey:@"DOMAIN_TOPHIT" value:&stru_1F556FE60 table:@"SpotlightServices"];
    v67 = v277;
    [(SFResultSection *)v277 setTitle:v70];

    goto LABEL_56;
  }

  v62 = v16;
  sectionBundleIdentifier = [firstObject3 sectionBundleIdentifier];
  if ([sectionBundleIdentifier isEqualToString:@"com.apple.datadetector.quick_actions"])
  {
    goto LABEL_51;
  }

  [firstObject3 sectionBundleIdentifier];
  v65 = v64 = firstObject3;
  if (![v65 isEqualToString:@"com.apple.calculation"])
  {
    sectionBundleIdentifier2 = [v64 sectionBundleIdentifier];
    LODWORD(v286) = [sectionBundleIdentifier2 isEqualToString:@"com.apple.conversion"];

    firstObject3 = v64;
    if (v286)
    {
      goto LABEL_52;
    }

    v16 = v62;
    goto LABEL_55;
  }

  firstObject3 = v64;
LABEL_51:

LABEL_52:
  text = firstObject3;
  sectionHeader = [firstObject3 sectionHeader];
  v67 = v277;
  [(SFResultSection *)v277 setTitle:sectionHeader];
  v16 = v62;
LABEL_56:

  v71 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v72 = [v71 localizedStringForKey:@"SUGGESTIONS" value:&stru_1F556FE60 table:@"SpotlightServices"];

  results4 = [(SFMutableResultSection *)v67 results];
  v74 = [results4 count];

  v15 = v67;
  v236 = v16;
  sectionCopy = v72;
  if (v74)
  {
    [(SFResultSection *)v16 setSubtitle:v72];
  }

  else
  {
    [(SFResultSection *)v16 setTitle:v72];
  }

  v289 = 0u;
  v290 = 0u;
  v287 = 0u;
  v288 = 0u;
  v75 = v38;
  v76 = [v75 countByEnumeratingWithState:&v287 objects:v333 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v288;
    *&v286 = @"com.apple.searchd.suggestions";
    do
    {
      for (k = 0; k != v77; ++k)
      {
        if (*v288 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v80 = *(*(&v287 + 1) + 8 * k);
        if (v80 != v15)
        {
          bundleIdentifier5 = [*(*(&v287 + 1) + 8 * k) bundleIdentifier];
          if ([bundleIdentifier5 isEqualToString:@"com.apple.spotlight.tophits"])
          {
          }

          else
          {
            bundleIdentifier6 = [(SFResultSection *)v80 bundleIdentifier];
            v83 = [bundleIdentifier6 isEqualToString:v286];

            v15 = v277;
            if ((v83 & 1) == 0)
            {
              if (!selfCopy->_haveBullseyeTopHitSection)
              {
                goto LABEL_71;
              }

              resultSet2 = [(SFMutableResultSection *)v80 resultSet];
              resultSet3 = [(SFMutableResultSection *)v277 resultSet];
              v86 = [resultSet2 intersectsOrderedSet:resultSet3];

              v15 = v277;
              if (v86)
              {
                resultSet4 = [(SFMutableResultSection *)v277 resultSet];
                v88 = [(SFMutableResultSection *)v80 copySectionRemovingResults:resultSet4];

                [score addObject:v88];
                v15 = v277;
              }

              else
              {
LABEL_71:
                [score addObject:v80];
              }
            }
          }
        }
      }

      v77 = [v75 countByEnumeratingWithState:&v287 objects:v333 count:16];
    }

    while (v77);
  }

  v89 = score;
  v239 = v89;

  self = selfCopy;
  v17 = v235;
  v16 = v236;
LABEL_75:
  queryKind = [(SPSearchQueryContext *)self->_queryContext queryKind];
  whyQuery = [(SPSearchQueryContext *)self->_queryContext whyQuery];
  v92 = PRSLogCategoryDefault();
  v236 = v16;
  v277 = v15;
  if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
  {
    queryID = self->_queryID;
    searchString = [(SPSearchQueryContext *)self->_queryContext searchString];
    v95 = SSRedactString(searchString, 0);
    v299 = 67109890;
    *v300 = queryID;
    v16 = v236;
    *&v300[4] = 1024;
    *&v300[6] = queryKind;
    *v301 = 2112;
    *&v301[2] = v95;
    *&v301[10] = 2048;
    *&v301[12] = whyQuery;
    _os_log_impl(&dword_1D9F69000, v92, OS_LOG_TYPE_INFO, "### [%d] sections %d %@ %lu", &v299, 0x22u);

    v15 = v277;
    self = selfCopy;
  }

  v252 = objc_opt_new();
  v96 = v239;
  v246 = [v239 count];
  relatedSectionBundleIdentifier = [(SFMutableResultSection *)self->_topHitSection relatedSectionBundleIdentifier];
  v232 = relatedSectionBundleIdentifier;
  if (relatedSectionBundleIdentifier)
  {
    v237 = [(NSDictionary *)self->_categoryToResultMapping objectForKeyedSubscript:relatedSectionBundleIdentifier];
  }

  else
  {
    v237 = 0;
  }

  v98 = sectionsCopy;
  ImportantBits = PRSRankingQueryImportantBits(1);
  v256 = v100;
  v257 = ImportantBits;
  v231 = &v229;
  v101 = v246;
  v238 = &v229 - ((8 * v246 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = 8 * v246;
  bzero(v238, 8 * v246);
  if (v101 < 1)
  {
LABEL_199:
    v260 = 0;
    goto LABEL_200;
  }

  v248 = 0;
  v103 = 0;
  v242 = 0;
  v250 = 0;
  v104 = 0;
  v255 = @"com.apple.mobilesafari";
  v233 = @"com.apple.parsec.related_search";
  *&v102 = 138412546;
  v229 = v102;
  *&v102 = 67109890;
  v234 = v102;
  *&v102 = 67113218;
  v245 = v102;
  *&v102 = 67114242;
  v254 = v102;
  v235 = v17;
  while (2)
  {
    v260 = v103;
    v105 = [v96 objectAtIndexedSubscript:{v104, v229}];
    v106 = v105;
    if (v98 && !v244)
    {
      if (v105 == v15 || v105 == v16)
      {
        v107 = v105;
        [v252 addObject:?];
        v106 = v107;
        ++v98;
        goto LABEL_186;
      }

      goto LABEL_91;
    }

    if (v104)
    {
      if (v105 == v237 || v244 && v105 == self->_topHitSection)
      {
        goto LABEL_186;
      }

LABEL_91:
      v108 = 0;
    }

    else if (v105 == self->_topHitSection)
    {
      v109 = v98;
      v110 = v237;
      v111 = v105;
      v112 = v237;

      if (!v110)
      {
        v211 = PRSLogCategoryDefault();
        v104 = 0;
        if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
        {
          topHitSection = self->_topHitSection;
          v299 = v229;
          *v300 = v232;
          *&v300[8] = 2112;
          *v301 = topHitSection;
          _os_log_impl(&dword_1D9F69000, v211, OS_LOG_TYPE_DEFAULT, "### missing results section %@ for %@", &v299, 0x16u);
        }

        v106 = 0;
        v98 = v109;
        v96 = v239;
        goto LABEL_186;
      }

      v108 = 1;
      v106 = v112;
      v98 = v109;
      v96 = v239;
      v104 = 0;
    }

    else
    {
      v108 = 1;
    }

    if (v17)
    {
      v113 = v17 == v106;
    }

    else
    {
      v113 = 0;
    }

    v114 = v113;
    if (v114 & v250)
    {
      v250 = 1;
      goto LABEL_186;
    }

    v240 = v108;
    v253 = v106;
    v270 = v104;
    sectionsCopy = v98;
    v115 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      v116 = self->_queryID;
      v117 = v253;
      maxInitiallyVisibleResults = [(SFResultSection *)v253 maxInitiallyVisibleResults];
      title = [(SFResultSection *)v117 title];
      v299 = v234;
      *v300 = v116;
      v15 = v277;
      *&v300[4] = 1024;
      *&v300[6] = v270;
      *v301 = 1024;
      *&v301[2] = maxInitiallyVisibleResults;
      *&v301[6] = 2112;
      *&v301[8] = title;
      _os_log_impl(&dword_1D9F69000, v115, OS_LOG_TYPE_DEFAULT, "### [%d] section[%d] maxInitiallyVisibleResults[%d] %@", &v299, 0x1Eu);
    }

    v120 = [SFMutableResultSection alloc];
    v121 = v253;
    v122 = [(SFMutableResultSection *)v120 initWithPrototype:v253];
    v123 = objc_opt_new();
    v243 = v122;
    [(SFMutableResultSection *)v122 setResultSet:v123];
    resultSet5 = [(SFMutableResultSection *)v121 resultSet];
    v124 = [resultSet5 count];
    maxInitiallyVisibleResults2 = [(SFResultSection *)v121 maxInitiallyVisibleResults];
    v278 = v124;
    v261 = v123;
    if (v124 < 1)
    {
      v181 = [v123 count];
      if ((v240 & 1) == 0)
      {
        [(SFResultSection *)v243 isInitiallyHidden];
      }

      v182 = 1;
      goto LABEL_161;
    }

    v125 = 0;
    v126 = 0;
    while (2)
    {
      v127 = [resultSet5 objectAtIndex:v125];
      score = [v127 score];
      v129 = v128;
      [v127 l2score];
      v131 = v130;
      rankingItem3 = [v127 rankingItem];
      l2FeatureVector = [rankingItem3 L2FeatureVector];
      [l2FeatureVector originalL2Score];
      v135 = v134;

      LODWORD(sectionCopy) = [rankingItem3 eligibleForDemotion];
      shouldHideUnderShowMore = [rankingItem3 shouldHideUnderShowMore];
      recentForTopHit = [rankingItem3 recentForTopHit];
      recentForAboveThresholdTopHit = [rankingItem3 recentForAboveThresholdTopHit];
      if (([rankingItem3 bundleIDType] & 0x100) != 0)
      {
        v137 = v123;
        selfCopy2 = self;
        [rankingItem3 L2FeatureVector];
        v140 = v139 = shouldHideUnderShowMore;
        [v140 scoreForFeature:1];
        v142 = v141;

        l2FeatureVector2 = [rankingItem3 L2FeatureVector];
        [l2FeatureVector2 scoreForFeature:41];
        v145 = v144;

        if (v139)
        {
          self = selfCopy2;
          queryTermLength = [(PRSRankingItemRanker *)selfCopy2->_ranker queryTermLength];
          v147 = +[PRSRankingItemRanker spellCorrectedAppMinQueryLen];
          v148 = v142 != 1.0;
          if (v145 != 0.0)
          {
            v148 = 1;
          }

          if (queryTermLength <= v147)
          {
            v148 = 1;
          }

          LODWORD(v286) = v148;
        }

        else
        {
          LODWORD(v286) = 0;
          self = selfCopy2;
        }

        v123 = v137;
      }

      else
      {
        LODWORD(v286) = shouldHideUnderShowMore;
      }

      topHit = [v127 topHit];
      title2 = [v127 title];
      text = [title2 text];

      v151 = score | v129;
      v283 = PRSLogCategoryDefault();
      v152 = os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT);
      if (!v151)
      {
        if (v152)
        {
          v156 = self->_queryID;
          score = [v127 sectionBundleIdentifier];
          applicationBundleIdentifier = [v127 applicationBundleIdentifier];
          identifier = [v127 identifier];
          sectionBundleIdentifier3 = [v127 sectionBundleIdentifier];
          applicationBundleIdentifier2 = SSRedactSuggestionIdentifier(identifier, sectionBundleIdentifier3);
          sectionBundleIdentifier4 = [v127 sectionBundleIdentifier];
          v276 = v126;
          v275 = topHit;
          v272 = identifier;
          v268 = sectionBundleIdentifier4;
          v269 = sectionBundleIdentifier3;
          LODWORD(sectionBundleIdentifier6) = v156;
          if (sectionBundleIdentifier4 && ([v127 sectionBundleIdentifier], v251 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v251, "isEqualToString:", v255) & 1) != 0))
          {
            v160 = text;
            v266 = 0;
            v161 = @"(private)";
          }

          else
          {
            v266 = 1;
            v160 = text;
            v161 = SSRedactString(text, 1);
            v249 = v161;
          }

          rankingItem4 = [v127 rankingItem];
          rankingItem5 = [v127 rankingItem];
          attributes = [rankingItem5 attributes];
          rankingItem6 = [v127 rankingItem];
          Count = SSCompactRankingAttrsGetCount([rankingItem6 attributes]);
          v299 = v245;
          *v300 = sectionBundleIdentifier6;
          *&v300[4] = 1024;
          *&v300[6] = v270;
          *v301 = 1024;
          *&v301[2] = v125;
          *&v301[6] = 1024;
          *&v301[8] = v275;
          *&v301[12] = 1024;
          *&v301[14] = v286;
          *&v301[18] = 1024;
          v302 = sectionCopy;
          v303 = 1024;
          v304 = recentForTopHit;
          v305 = 1024;
          v306 = recentForAboveThresholdTopHit;
          v307 = 2112;
          v308 = score;
          v309 = 2112;
          v310 = applicationBundleIdentifier;
          v311 = 2112;
          v312 = applicationBundleIdentifier2;
          v313 = 2048;
          v314 = v135;
          v315 = 2048;
          v316 = v131;
          v317 = 2112;
          v318 = v161;
          v319 = 2048;
          v320 = rankingItem4;
          v321 = 2048;
          v322 = attributes;
          v323 = 2048;
          v324 = Count;
          _os_log_impl(&dword_1D9F69000, v283, OS_LOG_TYPE_DEFAULT, "### [%d] result[%d,%d] %d %d %d %d %d %@ %@ %@ %f %f %@ (%p, %p, %lu)", &v299, 0x8Cu);

          if (v266)
          {
          }

          v123 = v261;
          v126 = v276;
          v178 = v268;
          v179 = v269;
          if (v268)
          {
          }

          v180 = applicationBundleIdentifier2;
          self = selfCopy;
          goto LABEL_140;
        }

LABEL_127:
        v160 = text;
LABEL_140:
        v172 = v286;
        v168 = v283;
        goto LABEL_141;
      }

      if (!v152)
      {
        goto LABEL_127;
      }

      v153 = self->_queryID;
      applicationBundleIdentifier = [v127 sectionBundleIdentifier];
      applicationBundleIdentifier2 = [v127 applicationBundleIdentifier];
      identifier2 = [v127 identifier];
      sectionBundleIdentifier5 = [v127 sectionBundleIdentifier];
      v272 = SSRedactSuggestionIdentifier(identifier2, sectionBundleIdentifier5);
      sectionBundleIdentifier6 = [v127 sectionBundleIdentifier];
      v268 = sectionBundleIdentifier5;
      v276 = v126;
      v275 = topHit;
      v269 = identifier2;
      v265 = v153;
      if (sectionBundleIdentifier6 && ([v127 sectionBundleIdentifier], v259 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v259, "isEqualToString:", v255) & 1) != 0))
      {
        v266 = 0;
        v264 = @"(private)";
      }

      else
      {
        v266 = 1;
        v258 = SSRedactString(text, 1);
        v264 = v258;
      }

      v262 = v129 & v256;
      v162 = score;
      v263 = score & v257;
      rankingItem7 = [v127 rankingItem];
      rankingItem8 = [v127 rankingItem];
      attributes2 = [rankingItem8 attributes];
      rankingItem9 = [v127 rankingItem];
      v167 = SSCompactRankingAttrsGetCount([rankingItem9 attributes]);
      v299 = v254;
      *v300 = v265;
      *&v300[4] = 1024;
      *&v300[6] = v270;
      *v301 = 1024;
      *&v301[2] = v125;
      *&v301[6] = 1024;
      *&v301[8] = v275;
      *&v301[12] = 1024;
      *&v301[14] = v286;
      *&v301[18] = 1024;
      v302 = sectionCopy;
      v303 = 1024;
      v304 = recentForTopHit;
      v305 = 1024;
      v306 = recentForAboveThresholdTopHit;
      v307 = 2112;
      v308 = applicationBundleIdentifier;
      v309 = 2112;
      v310 = applicationBundleIdentifier2;
      v311 = 2112;
      v312 = v272;
      v313 = 2048;
      v314 = v135;
      v315 = 2048;
      v316 = v131;
      v317 = 2048;
      v318 = v129;
      v319 = 2048;
      v320 = v162;
      v321 = 2048;
      v322 = v262;
      v323 = 2048;
      v324 = v263;
      v325 = 2112;
      v326 = v264;
      v327 = 2048;
      v328 = rankingItem7;
      v329 = 2048;
      v330 = attributes2;
      v331 = 2048;
      v332 = v167;
      v168 = v283;
      _os_log_impl(&dword_1D9F69000, v283, OS_LOG_TYPE_DEFAULT, "### [%d] result[%d,%d] %d %d %d %d %d %@ %@ %@ %f %f 0x%16.16llx%16.16llx 0x%16.16llx%16.16llx %@ (%p, %p, %lu)", &v299, 0xB4u);

      if (v266)
      {
      }

      v160 = text;
      v123 = v261;
      v126 = v276;
      v169 = sectionBundleIdentifier6;
      v170 = v268;
      if (sectionBundleIdentifier6)
      {
      }

      v171 = v272;
      self = selfCopy;
      v172 = v286;
LABEL_141:

      [v123 addObject:v127];
      v126 += v172 ^ 1u;

      if (v278 != ++v125)
      {
        continue;
      }

      break;
    }

    v181 = [v123 count];
    if (v240)
    {
      v17 = v235;
      v16 = v236;
      if (!v126)
      {
        v182 = 1;
        goto LABEL_160;
      }

LABEL_150:
      initiallyVisibleSectionSentCount = self->_initiallyVisibleSectionSentCount;
      v185 = [v252 count];
      if (initiallyVisibleSectionSentCount + v248 + v185 >= sectionsCopy)
      {
        bundleIdentifier7 = [(SFResultSection *)v243 bundleIdentifier];
        v182 = [bundleIdentifier7 isEqualToString:v233] ^ 1;
      }

      else
      {
        v182 = 0;
      }

      goto LABEL_154;
    }

    isInitiallyHidden = [(SFResultSection *)v243 isInitiallyHidden];
    v17 = v235;
    v16 = v236;
    if (!isInitiallyHidden && v126)
    {
      goto LABEL_150;
    }

    v182 = 1;
    if (!v126)
    {
LABEL_160:
      v15 = v277;
LABEL_161:
      v189 = maxInitiallyVisibleResults2;
      goto LABEL_162;
    }

LABEL_154:
    bundleIdentifier8 = [(SFResultSection *)v243 bundleIdentifier];
    v188 = SSSectionIsSyndicatedPhotos(bundleIdentifier8);

    v189 = maxInitiallyVisibleResults2;
    if (v126 >= maxInitiallyVisibleResults2)
    {
      v190 = maxInitiallyVisibleResults2;
    }

    else
    {
      v190 = v126;
    }

    if ((v188 & 1) == 0)
    {
      v189 = v190;
    }

    v15 = v277;
LABEL_162:
    if (v189 >= v181)
    {
      v191 = 0;
    }

    else
    {
      v191 = v189;
    }

    v192 = [v252 count];
    v193 = v260;
    if (v17)
    {
      v194 = v192 - v260 + self->_initiallyVisibleSectionSentCount == sectionsCopy - 1;
    }

    else
    {
      v194 = 0;
    }

    v195 = !v194;
    if ((v195 | v242 | v250))
    {
LABEL_181:
      if (v182)
      {
        v207 = v193 + 1;
        v208 = v243;
        objc_storeStrong(&v238[8 * v193], v243);
        v260 = v207;
      }

      else
      {
        v208 = v243;
      }

      v209 = v17 == v253;
      [(SFResultSection *)v208 setIsInitiallyHidden:v182];
      [(SFResultSection *)v208 setMaxInitiallyVisibleResults:v191];
      [v252 addObject:v208];
      v242 |= v209;
      v104 = v270;
    }

    else
    {
      v196 = [[SFMutableResultSection alloc] initWithPrototype:v17];
      v197 = objc_opt_new();
      [(SFMutableResultSection *)v196 setResultSet:v197];
      resultSet6 = [(SFMutableResultSection *)v17 resultSet];
      v199 = [resultSet6 count];
      if (v199 >= 1)
      {
        v200 = v199;
        for (m = 0; m != v200; ++m)
        {
          v202 = [resultSet6 objectAtIndex:m];
          [v197 addObject:v202];
        }
      }

      v203 = v17 == v253;
      [(SFResultSection *)v196 setIsInitiallyHidden:[(SFResultSection *)v17 isInitiallyHidden]];
      [v252 addObject:v196];
      v16 = v236;
      v123 = v261;
      if (((v203 | v182) & 1) == 0)
      {
        v204 = selfCopy->_initiallyVisibleSectionSentCount;
        v205 = [v252 count];
        if (v204 + v248 + v205 >= sectionsCopy)
        {
          bundleIdentifier9 = [(SFResultSection *)v243 bundleIdentifier];
          v182 = [bundleIdentifier9 isEqualToString:v233] ^ 1;
        }

        else
        {
          v182 = 0;
        }
      }

      v250 = 1;
      if (v17 != v253)
      {
        self = selfCopy;
        v15 = v277;
        v193 = v260;
        goto LABEL_181;
      }

      v242 = 0;
      v104 = v270;
      self = selfCopy;
      v15 = v277;
      v208 = v243;
    }

    v98 = sectionsCopy;
    v96 = v239;
    v106 = v253;
LABEL_186:

    ++v104;
    v103 = v260;
    v248 = -v260;
    if (v104 != v246)
    {
      continue;
    }

    break;
  }

  if (!v260)
  {
    goto LABEL_199;
  }

  if ((self->_initiallyHiddenSectionSentCount + v260) <= 1)
  {
    v213 = 0;
    *&v210 = 134218498;
    v286 = v210;
    do
    {
      v214 = *&v238[8 * v213];
      [v214 setIsInitiallyHidden:0];
      v215 = SSGeneralLog();
      if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier10 = [v214 bundleIdentifier];
        v299 = v286;
        *v300 = v213;
        *&v300[8] = 2112;
        *v301 = bundleIdentifier10;
        *&v301[8] = 1024;
        *&v301[10] = 2;
        _os_log_impl(&dword_1D9F69000, v215, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] Unhiding section (%lu) %@ due to minimum hiding quota (%d)", &v299, 0x1Cu);
      }

      ++v213;
    }

    while (v260 != v213);
    v260 = 0;
    self = selfCopy;
    v16 = v236;
  }

LABEL_200:
  v217 = [v252 count];
  v218 = v217;
  if (!self->_initiallyVisibleSectionSentCount && !self->_initiallyHiddenSectionSentCount && (!v16 && v260 == v217 || v16 && v260 == v217 - 1))
  {
    v224 = 2;
    if (v16)
    {
      v224 = 3;
    }

    v225 = v217 >= v224 ? v224 : v217;
    if (v217)
    {
      for (n = 0; v225 != n; ++n)
      {
        v227 = [v252 objectAtIndexedSubscript:n];
        if ([v227 isInitiallyHidden])
        {
          [v227 setIsInitiallyHidden:0];
          --v260;
        }

        else if (!v16 || n)
        {

          break;
        }
      }
    }
  }

  v219 = self->_initiallyHiddenSectionSentCount + v260;
  self->_initiallyVisibleSectionSentCount += v218 - v260;
  self->_initiallyHiddenSectionSentCount = v219;
  v68 = [SSBullseyeTopHitsManager dedupeWebURLSuggestionsFromSections:v252];
  v220 = v230;
  if (v246)
  {
    v221 = v238 - 8;
    do
    {

      v220 -= 8;
    }

    while (v220);
  }

  v69 = v277;
LABEL_206:

  v222 = *MEMORY[0x1E69E9840];

  return v68;
}

+ (id)dedupeWebURLSuggestionsFromSections:(id)sections
{
  v69 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  if ([sectionsCopy count] >= 2)
  {
    v58 = objc_opt_new();
    firstObject = [sectionsCopy firstObject];
    bundleIdentifier = [firstObject bundleIdentifier];
    v6 = [bundleIdentifier isEqualToString:@"com.apple.spotlight.tophits"];

    if (v6)
    {
      v52 = sectionsCopy;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v7 = firstObject;
      results = [firstObject results];
      v9 = [results countByEnumeratingWithState:&v63 objects:v68 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v64;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v64 != v11)
            {
              objc_enumerationMutation(results);
            }

            v13 = *(*(&v63 + 1) + 8 * i);
            v14 = [v13 url];
            v15 = v14;
            if (v14)
            {
              firstObject2 = v14;
            }

            else
            {
              punchout = [v13 punchout];
              urls = [punchout urls];
              firstObject2 = [urls firstObject];
            }

            contentURL = [v13 contentURL];
            v20 = contentURL;
            if (contentURL)
            {
              absoluteString = contentURL;
            }

            else
            {
              absoluteString = [firstObject2 absoluteString];
            }

            v22 = absoluteString;

            v23 = strippedURL(v22);
            if (v23)
            {
              [v58 addObject:v23];
            }
          }

          v10 = [results countByEnumeratingWithState:&v63 objects:v68 count:16];
        }

        while (v10);
      }

      sectionsCopy = v52;
      firstObject = v7;
    }

    v24 = [sectionsCopy objectAtIndex:1];
    if ([v58 count])
    {
      bundleIdentifier2 = [v24 bundleIdentifier];
      v26 = [bundleIdentifier2 isEqualToString:@"com.apple.searchd.suggestions"];

      if (v26)
      {
        v51 = firstObject;
        v53 = sectionsCopy;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v54 = v24;
        results2 = [v24 results];
        v28 = [results2 countByEnumeratingWithState:&v59 objects:v67 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v60;
          v31 = 0x1E69CA000uLL;
          v55 = *v60;
          v56 = results2;
          do
          {
            v32 = 0;
            v57 = v29;
            do
            {
              if (*v60 != v30)
              {
                objc_enumerationMutation(results2);
              }

              v33 = *(*(&v59 + 1) + 8 * v32);
              compactCard = [v33 compactCard];
              v35 = compactCard;
              if (compactCard)
              {
                inlineCard = compactCard;
              }

              else
              {
                inlineCard = [v33 inlineCard];
              }

              v37 = inlineCard;

              cardSections = [v37 cardSections];
              firstObject3 = [cardSections firstObject];

              v40 = *(v31 + 1208);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v41 = firstObject3;
                suggestionText = [v41 suggestionText];
                text = [suggestionText text];
                v44 = text;
                if (text)
                {
                  text2 = text;
                }

                else
                {
                  formattedTextPieces = [suggestionText formattedTextPieces];
                  firstObject4 = [formattedTextPieces firstObject];
                  text2 = [firstObject4 text];

                  results2 = v56;
                  v30 = v55;
                }

                if ([v58 containsObject:text2] && objc_msgSend(v41, "suggestionType") == 4)
                {
                  [v54 removeResults:v33];
                }

                v31 = 0x1E69CA000;
                v29 = v57;
              }

              ++v32;
            }

            while (v29 != v32);
            v29 = [results2 countByEnumeratingWithState:&v59 objects:v67 count:16];
          }

          while (v29);
        }

        v24 = v54;
        if ([v54 resultsCount])
        {
          sectionsCopy = v53;
        }

        else
        {
          v48 = [v53 mutableCopy];
          [v48 removeObject:v54];

          sectionsCopy = v48;
        }

        firstObject = v51;
      }
    }
  }

  v49 = *MEMORY[0x1E69E9840];

  return sectionsCopy;
}

@end