@interface SSBullseyeTopHitsManager
+ (id)dedupeWebURLSuggestionsFromSections:(id)a3;
- (SSBullseyeTopHitsManager)initWithQueryId:(int64_t)a3 categoryToResultMapping:(id)a4 currentTopHitSection:(id)a5 queryContext:(id)a6 ranker:(id)a7;
- (id)bullseyeTopHitSection;
- (id)bullseyeTopHitSections:(id)a3 maxTopHitsCount:(int)a4 minThresholdForBigResult:(double)a5 needExceptionForSafariSection:(BOOL)a6;
- (id)tagOrFilterHiddenSectionsForClient:(id)a3 isCommittedSearch:(BOOL)a4 maxVisibleSections:(int64_t)a5 maxTopHitsCount:(int)a6 minThresholdForBigResult:(double)a7 topHitSection:(id *)a8;
@end

@implementation SSBullseyeTopHitsManager

- (SSBullseyeTopHitsManager)initWithQueryId:(int64_t)a3 categoryToResultMapping:(id)a4 currentTopHitSection:(id)a5 queryContext:(id)a6 ranker:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v30.receiver = self;
  v30.super_class = SSBullseyeTopHitsManager;
  v17 = [(SSBullseyeTopHitsManager *)&v30 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_categoryToResultMapping, a4);
    v18->_queryID = a3;
    objc_storeStrong(&v18->_topHitSection, a5);
    objc_storeStrong(&v18->_queryContext, a6);
    objc_storeStrong(&v18->_ranker, a7);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = v13;
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
  v3 = [(SFMutableResultSection *)self->_topHitSection relatedSectionBundleIdentifier];
  if (v3)
  {
    v4 = [(NSDictionary *)self->_categoryToResultMapping objectForKey:v3];
    if (v4)
    {
      v5 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        queryID = self->_queryID;
        v7 = [v4 title];
        v11[0] = 67109378;
        v11[1] = queryID;
        v12 = 2112;
        v13 = v7;
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

- (id)bullseyeTopHitSections:(id)a3 maxTopHitsCount:(int)a4 minThresholdForBigResult:(double)a5 needExceptionForSafariSection:(BOOL)a6
{
  v186 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = +[SSRankingManager getTopHitsContinuationThresholds];
  v140 = +[SSRankingManager getForbiddenSecondSections];
  v10 = +[SSRankingManager getPoorSecondSections];
  v144 = [v8 count];
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
  v143 = v8;
  v145 = a4;
  v123 = v9;
  v124 = v11;
  v121 = v10;
  v120 = a6;
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
    v15 = v8;
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
          v21 = [v20 bundleIdentifier];
          v22 = [v21 isEqualToString:@"com.apple.searchd.suggestions"];

          if (v22)
          {
            v146 = v20;
            a4 = v145;
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
      a4 = v145;
    }

    else
    {
      v146 = 0;
LABEL_18:
      v13 = v144;
    }

    v8 = v143;
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
    if (!v13 || v23 >= a4)
    {
      goto LABEL_163;
    }

    v153 = 0;
    v138 = 0;
    v24 = 0;
    do
    {
      v25 = [v8 objectAtIndexedSubscript:v24];
      v26 = [v25 bundleIdentifier];
      v27 = [v25 domain];
      if (v27 == 2 && (v153 & 1) != 0)
      {
        goto LABEL_51;
      }

      v148 = v27;
      v154 = v23;
      v155 = v26;
      v28 = [v25 bundleIdentifier];
      v29 = v25;
      v30 = [v28 isEqualToString:@"com.apple.spotlight.tophits"];

      if (v30)
      {
        v31 = objc_opt_new();
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v172 = 0u;
        v151 = v29;
        v32 = [v29 resultSet];
        v33 = [v32 countByEnumeratingWithState:&v169 objects:v184 count:16];
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
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v169 + 1) + 8 * j);
              v38 = [v37 applicationBundleIdentifier];
              v39 = SSScreenTimeStatusForBundleIDWithCompletionHandler(v38, 0);

              if ((v39 & 1) == 0)
              {
                [v31 addObject:v37];
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v169 objects:v184 count:16];
          }

          while (v34);
        }

        v40 = [v31 count];
        v41 = v40 == 0;
        if (v40)
        {
          v25 = v151;
          [v151 setResultSet:v31];
          v41 = 0;
          v8 = v143;
          v13 = v144;
          a4 = v145;
        }

        else
        {
          v8 = v143;
          v13 = v144;
          a4 = v145;
          v25 = v151;
        }
      }

      else
      {
        v31 = [v29 bundleIdentifier];
        v41 = SSScreenTimeStatusForBundleIDWithCompletionHandler(v31, 0);
        v25 = v29;
      }

      if (v25 == v146 && v147 == 0)
      {
        v23 = v154;
LABEL_50:
        v26 = v155;
        goto LABEL_51;
      }

      v23 = v154;
      if (v41)
      {
        goto LABEL_50;
      }

      v43 = [v25 bundleIdentifier];
      IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos(v43);

      if (IsSyndicatedPhotos)
      {
        goto LABEL_50;
      }

      v45 = [v25 bundleIdentifier];
      v152 = v25;
      if ([v45 isEqualToString:@"com.apple.spotlight.tophits"])
      {
        v46 = [v25 relatedSectionBundleIdentifier];
        v47 = SSSectionIsSyndicatedPhotos(v46);

        if (v47)
        {
          goto LABEL_162;
        }
      }

      else
      {
      }

      v26 = v155;
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

        v48 = [v152 resultSet];
        v49 = [v48 firstObject];

        if (!v49 || ([v49 rankingItem], v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "topHitReason") & 0xF, v50, !v51))
        {
          v26 = v155;
          goto LABEL_160;
        }
      }

      v49 = [v152 title];
      v52 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        queryID = self->_queryID;
        *buf = 1.5048e-36;
        v181 = queryID;
        v182 = 1024;
        *v183 = v24;
        *&v183[4] = 2112;
        *&v183[6] = v49;
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

      v54 = [v152 bundleIdentifier];
      v55 = [v54 isEqualToString:@"com.apple.searchd.suggestions"];

      v138 |= v55;
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v56 = [v152 resultSet];
      v57 = [v56 countByEnumeratingWithState:&v165 objects:v179 count:16];
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
              objc_enumerationMutation(v56);
            }

            v61 = *(*(&v165 + 1) + 8 * k);
            v164 = 3233;
            *buf = (v24 - (v138 & 1));
            v181 = 0;
            v62 = [v61 rankingItem];
            v63 = v62;
            if (v62)
            {
              v64 = [v62 L2FeatureVector];
              [v64 setScores:buf forFeatures:&v164 count:1];
            }
          }

          v58 = [v56 countByEnumeratingWithState:&v165 objects:v179 count:16];
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

      a4 = v145;
      v13 = v144;
      v134 = v65;
      if (![v65 resultsCount])
      {
        v153 |= v148 == 2;
        v26 = v155;
        goto LABEL_159;
      }

      v66 = [v65 resultSet];
      v67 = [v66 firstObject];

      if (!v67)
      {
        v26 = v155;
        goto LABEL_158;
      }

      v68 = v148 != 2;
      v149 = v148 == 2;
      v69 = v67;
      v132 |= [v67 isSafariTopHit];
      v70 = [v67 rankingItem];
      v71 = [v70 L2FeatureVector];
      [v71 originalL2Score];
      v73 = v72;

      [v69 sectionBundleIdentifier];
      v127 = v126 = v69;
      v74 = [v69 preferTopPlatter];
      v75 = v74;
      if (v154 > 0 || (v68 & v74 & 1) != 0 || (v149 & v74 & 1) != 0)
      {
        v8 = v143;
        if (v154 > 0)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v8 = v143;
        if (([v127 isEqualToString:@"com.apple.application"] & 1) == 0 && (objc_msgSend(v140, "containsObject:", v127) & 1) == 0)
        {
          v76 = [v69 rankingItem];
          v77 = [v76 topHitReason];

          if (!v77)
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
              v78 = [v134 resultSet];
              v79 = [v78 countByEnumeratingWithState:&v160 objects:v178 count:16];
              if (v79)
              {
                v80 = v79;
                v118 = v49;
                LODWORD(v81) = 0;
                v82 = *v161;
                do
                {
                  for (m = 0; m != v80; ++m)
                  {
                    if (*v161 != v82)
                    {
                      objc_enumerationMutation(v78);
                    }

                    v84 = *(*(&v160 + 1) + 8 * m);
                    [v84 setUsesCompactDisplay:{objc_msgSend(v84, "shouldUseCompactDisplay") | objc_msgSend(v84, "usesCompactDisplay")}];
                    if (v141 > v145)
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

                  v80 = [v78 countByEnumeratingWithState:&v160 objects:v178 count:16];
                }

                while (v80);
LABEL_109:
                a4 = v145;
                LODWORD(v23) = v154;
                v49 = v118;
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
        v78 = [v126 sectionBundleIdentifier];
        if ([v121 containsObject:v78])
        {
          v85 = [v133 count];

          if (v85)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v86 = [v126 rankingItem];
          if (![v86 topHitReason])
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
      v119 = v49;
      if ([v155 isEqualToString:@"com.apple.spotlight.tophits"])
      {
        v88 = [v152 relatedSectionBundleIdentifier];
        v89 = [v88 isEqualToString:@"com.apple.application"];

        v142 &= v89 ^ 1;
      }

      [v133 addObject:v134];
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v90 = [v134 resultSet];
      v150 = [v90 countByEnumeratingWithState:&v156 objects:v177 count:16];
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
            objc_enumerationMutation(v90);
          }

          v23 = *(*(&v156 + 1) + 8 * n);
          [v23 setUsesCompactDisplay:{objc_msgSend(v23, "shouldUseCompactDisplay") | objc_msgSend(v23, "usesCompactDisplay")}];
          [v139 addObject:v23];
          v93 = [v23 sectionBundleIdentifier];
          if ([v93 isEqualToString:@"com.apple.application"])
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
            if (v141 > v145)
            {

              v13 = v144;
              LODWORD(v23) = v154;
              goto LABEL_147;
            }

            if ([v93 isEqualToString:@"com.apple.mobiletimer"])
            {
              v130 = v91;
              v95 = v81;
              v81 = v90;
              v96 = [v23 rankingItem];
              v97 = [v96 L2FeatureVector];
              [v97 scoreForFeature:1982];
              v99 = v98;

              if (v99 == 0.0)
              {
                LODWORD(v23) = v154;
                v129 |= v154 == 0;
                v90 = v81;
                LODWORD(v81) = v95;
              }

              else
              {
                v90 = v81;
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

        v150 = [v90 countByEnumeratingWithState:&v156 objects:v177 count:16];
        if (v150)
        {
          continue;
        }

        break;
      }

      v13 = v144;
LABEL_147:

      v101 = v134;
      v102 = v132 | ~(v91 & v120);
      v125 = v101;
      a4 = v145;
      v49 = v119;
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
      v26 = v155;
      v67 = v126;
LABEL_158:

LABEL_159:
LABEL_160:

LABEL_51:
      ++v24;
    }

    while (v24 < v13 && v23 < a4);
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
      v108 = v125;
      if (!v108)
      {
        v109 = [SFMutableResultSection alloc];
        v110 = [v143 objectAtIndexedSubscript:0];
        v108 = [(SFMutableResultSection *)v109 initWithSection:v110];

        v111 = [(SFMutableResultSection *)v108 resultSet];
        [v111 removeAllObjects];

        [v133 addObject:v108];
      }

      v112 = [(SFMutableResultSection *)v108 resultSet];
      [v112 addObjectsFromArray:v128];
    }

    else
    {
      v108 = [v146 results];
      if ([(SFMutableResultSection *)v108 count])
      {
        v113 = MEMORY[0x1E695DF70];
        v114 = [(SFMutableResultSection *)v108 firstObject];
        v112 = [v113 arrayWithObject:v114];

        [v112 addObjectsFromArray:v128];
        if ([(SFMutableResultSection *)v108 count]>= 2)
        {
          v115 = [(SFMutableResultSection *)v108 subarrayWithRange:1, [(SFMutableResultSection *)v108 count]- 1];
          [v112 addObjectsFromArray:v115];
        }
      }

      else
      {
        v112 = v128;
      }

      [v146 setResults:v112];
    }

    v8 = v143;
  }

  v14 = v133;

LABEL_176:
  v116 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)tagOrFilterHiddenSectionsForClient:(id)a3 isCommittedSearch:(BOOL)a4 maxVisibleSections:(int64_t)a5 maxTopHitsCount:(int)a6 minThresholdForBigResult:(double)a7 topHitSection:(id *)a8
{
  v12 = a4;
  v335[16] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v271 = self;
  v244 = v12;
  v247 = a5;
  if (v12)
  {
    v239 = v14;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_75;
  }

  LODWORD(v283) = a6;
  v297 = 0u;
  v298 = 0u;
  v295 = 0u;
  v296 = 0u;
  v284 = v14;
  v18 = [v284 countByEnumeratingWithState:&v295 objects:v335 count:16];
  v282 = a8;
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
          objc_enumerationMutation(v284);
        }

        v26 = *(*(&v295 + 1) + 8 * i);
        v27 = [v26 bundleIdentifier];
        if ([v27 isEqualToString:v23])
        {
          v21 = 1;
        }

        else
        {
          [v26 relatedSectionBundleIdentifier];
          LODWORD(v285) = v21;
          v28 = v20;
          v29 = v24;
          v30 = v19;
          v32 = v31 = v22;
          v33 = [v32 isEqualToString:v23];

          v22 = v31;
          v19 = v30;
          v24 = v29;
          v20 = v28;
          v21 = v33 | v285;
        }

        v34 = [v26 bundleIdentifier];
        v35 = [v34 isEqualToString:v24];

        v20 |= v35;
        if (v21 & 1) != 0 && (v20)
        {
          v36 = 1;
          goto LABEL_17;
        }

        v23 = v286;
      }

      v19 = [v284 countByEnumeratingWithState:&v295 objects:v335 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

    v36 = 0;
LABEL_17:
    self = v271;
    a8 = v282;
  }

  else
  {
    v36 = 0;
  }

  v285 = objc_opt_new();
  v37 = [(SSBullseyeTopHitsManager *)self bullseyeTopHitSections:v284 maxTopHitsCount:v283 minThresholdForBigResult:v36 needExceptionForSafariSection:a7];
  v291 = 0u;
  v292 = 0u;
  v293 = 0u;
  v294 = 0u;
  v38 = v284;
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
      v43 = [v42 bundleIdentifier];
      v44 = [v43 isEqualToString:@"com.apple.searchd.suggestions"];

      if (v44)
      {
        v45 = v42;

        v39 = v45;
      }

      v46 = [v42 bundleIdentifier];
      IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos(v46);

      if (IsSyndicatedPhotos)
      {
        v49 = [v42 resultSet];
        v50 = [v49 firstObject];

        v51 = [v50 rankingItem];
        if ([v51 photosMatch])
        {
        }

        else
        {
          v52 = [v50 rankingItem];
          v53 = [v52 photosExactMatch];

          if (!v53)
          {
            v48 = 0;
            goto LABEL_36;
          }
        }

        v48 = v42;
LABEL_36:
        self = v271;

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
  self = v271;
LABEL_37:
  v16 = v39;
  a8 = v282;
  v37 = v283;
LABEL_38:

  v54 = [*a8 results];
  v55 = [v54 count];

  if (v55)
  {
    self->_haveBullseyeTopHitSection = 1;
    if (![v285 count])
    {
      [v285 addObject:*a8];
    }
  }

  else if ([v37 count])
  {
    [v285 addObjectsFromArray:v37];
    v56 = [v37 firstObject];
    [v56 setBundleIdentifier:@"com.apple.spotlight.tophits"];
    v57 = v56;
    *a8 = v56;
    self->_haveBullseyeTopHitSection = 1;
  }

  v235 = v48;
  if (v16)
  {
    [v285 addObject:v16];
  }

  if (!v247)
  {

    v68 = v38;
    v69 = 0;
    v239 = v68;
    v17 = v235;
    goto LABEL_206;
  }

  v58 = *a8;
  v59 = [(SFMutableResultSection *)v58 results];
  v277 = v58;
  if ([v59 count] != 1)
  {

    v61 = 0;
    goto LABEL_55;
  }

  v60 = [(SFMutableResultSection *)v58 results];
  v61 = [v60 firstObject];

  if (!v61)
  {
LABEL_55:
    v284 = v61;
    v66 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v70 = [v66 localizedStringForKey:@"DOMAIN_TOPHIT" value:&stru_1F556FE60 table:@"SpotlightServices"];
    v67 = v277;
    [(SFResultSection *)v277 setTitle:v70];

    goto LABEL_56;
  }

  v62 = v16;
  v63 = [v61 sectionBundleIdentifier];
  if ([v63 isEqualToString:@"com.apple.datadetector.quick_actions"])
  {
    goto LABEL_51;
  }

  [v61 sectionBundleIdentifier];
  v65 = v64 = v61;
  if (![v65 isEqualToString:@"com.apple.calculation"])
  {
    v228 = [v64 sectionBundleIdentifier];
    LODWORD(v286) = [v228 isEqualToString:@"com.apple.conversion"];

    v61 = v64;
    if (v286)
    {
      goto LABEL_52;
    }

    v16 = v62;
    goto LABEL_55;
  }

  v61 = v64;
LABEL_51:

LABEL_52:
  v284 = v61;
  v66 = [v61 sectionHeader];
  v67 = v277;
  [(SFResultSection *)v277 setTitle:v66];
  v16 = v62;
LABEL_56:

  v71 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v72 = [v71 localizedStringForKey:@"SUGGESTIONS" value:&stru_1F556FE60 table:@"SpotlightServices"];

  v73 = [(SFMutableResultSection *)v67 results];
  v74 = [v73 count];

  v15 = v67;
  v236 = v16;
  v282 = v72;
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
          v81 = [*(*(&v287 + 1) + 8 * k) bundleIdentifier];
          if ([v81 isEqualToString:@"com.apple.spotlight.tophits"])
          {
          }

          else
          {
            v82 = [(SFResultSection *)v80 bundleIdentifier];
            v83 = [v82 isEqualToString:v286];

            v15 = v277;
            if ((v83 & 1) == 0)
            {
              if (!v271->_haveBullseyeTopHitSection)
              {
                goto LABEL_71;
              }

              v84 = [(SFMutableResultSection *)v80 resultSet];
              v85 = [(SFMutableResultSection *)v277 resultSet];
              v86 = [v84 intersectsOrderedSet:v85];

              v15 = v277;
              if (v86)
              {
                v87 = [(SFMutableResultSection *)v277 resultSet];
                v88 = [(SFMutableResultSection *)v80 copySectionRemovingResults:v87];

                [v285 addObject:v88];
                v15 = v277;
              }

              else
              {
LABEL_71:
                [v285 addObject:v80];
              }
            }
          }
        }
      }

      v77 = [v75 countByEnumeratingWithState:&v287 objects:v333 count:16];
    }

    while (v77);
  }

  v89 = v285;
  v239 = v89;

  self = v271;
  v17 = v235;
  v16 = v236;
LABEL_75:
  v90 = [(SPSearchQueryContext *)self->_queryContext queryKind];
  v91 = [(SPSearchQueryContext *)self->_queryContext whyQuery];
  v92 = PRSLogCategoryDefault();
  v236 = v16;
  v277 = v15;
  if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
  {
    queryID = self->_queryID;
    v94 = [(SPSearchQueryContext *)self->_queryContext searchString];
    v95 = SSRedactString(v94, 0);
    v299 = 67109890;
    *v300 = queryID;
    v16 = v236;
    *&v300[4] = 1024;
    *&v300[6] = v90;
    *v301 = 2112;
    *&v301[2] = v95;
    *&v301[10] = 2048;
    *&v301[12] = v91;
    _os_log_impl(&dword_1D9F69000, v92, OS_LOG_TYPE_INFO, "### [%d] sections %d %@ %lu", &v299, 0x22u);

    v15 = v277;
    self = v271;
  }

  v252 = objc_opt_new();
  v96 = v239;
  v246 = [v239 count];
  v97 = [(SFMutableResultSection *)self->_topHitSection relatedSectionBundleIdentifier];
  v232 = v97;
  if (v97)
  {
    v237 = [(NSDictionary *)self->_categoryToResultMapping objectForKeyedSubscript:v97];
  }

  else
  {
    v237 = 0;
  }

  v98 = v247;
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
    v247 = v98;
    v115 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      v116 = self->_queryID;
      v117 = v253;
      v118 = [(SFResultSection *)v253 maxInitiallyVisibleResults];
      v119 = [(SFResultSection *)v117 title];
      v299 = v234;
      *v300 = v116;
      v15 = v277;
      *&v300[4] = 1024;
      *&v300[6] = v270;
      *v301 = 1024;
      *&v301[2] = v118;
      *&v301[6] = 2112;
      *&v301[8] = v119;
      _os_log_impl(&dword_1D9F69000, v115, OS_LOG_TYPE_DEFAULT, "### [%d] section[%d] maxInitiallyVisibleResults[%d] %@", &v299, 0x1Eu);
    }

    v120 = [SFMutableResultSection alloc];
    v121 = v253;
    v122 = [(SFMutableResultSection *)v120 initWithPrototype:v253];
    v123 = objc_opt_new();
    v243 = v122;
    [(SFMutableResultSection *)v122 setResultSet:v123];
    v279 = [(SFMutableResultSection *)v121 resultSet];
    v124 = [v279 count];
    v241 = [(SFResultSection *)v121 maxInitiallyVisibleResults];
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
      v127 = [v279 objectAtIndex:v125];
      v285 = [v127 score];
      v129 = v128;
      [v127 l2score];
      v131 = v130;
      v132 = [v127 rankingItem];
      v133 = [v132 L2FeatureVector];
      [v133 originalL2Score];
      v135 = v134;

      LODWORD(v282) = [v132 eligibleForDemotion];
      v136 = [v132 shouldHideUnderShowMore];
      v281 = [v132 recentForTopHit];
      v280 = [v132 recentForAboveThresholdTopHit];
      if (([v132 bundleIDType] & 0x100) != 0)
      {
        v137 = v123;
        v138 = self;
        [v132 L2FeatureVector];
        v140 = v139 = v136;
        [v140 scoreForFeature:1];
        v142 = v141;

        v143 = [v132 L2FeatureVector];
        [v143 scoreForFeature:41];
        v145 = v144;

        if (v139)
        {
          self = v138;
          v146 = [(PRSRankingItemRanker *)v138->_ranker queryTermLength];
          v147 = +[PRSRankingItemRanker spellCorrectedAppMinQueryLen];
          v148 = v142 != 1.0;
          if (v145 != 0.0)
          {
            v148 = 1;
          }

          if (v146 <= v147)
          {
            v148 = 1;
          }

          LODWORD(v286) = v148;
        }

        else
        {
          LODWORD(v286) = 0;
          self = v138;
        }

        v123 = v137;
      }

      else
      {
        LODWORD(v286) = v136;
      }

      v149 = [v127 topHit];
      v150 = [v127 title];
      v284 = [v150 text];

      v151 = v285 | v129;
      v283 = PRSLogCategoryDefault();
      v152 = os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT);
      if (!v151)
      {
        if (v152)
        {
          v156 = self->_queryID;
          v285 = [v127 sectionBundleIdentifier];
          v274 = [v127 applicationBundleIdentifier];
          v157 = [v127 identifier];
          v158 = [v127 sectionBundleIdentifier];
          v273 = SSRedactSuggestionIdentifier(v157, v158);
          v159 = [v127 sectionBundleIdentifier];
          v276 = v126;
          v275 = v149;
          v272 = v157;
          v268 = v159;
          v269 = v158;
          LODWORD(v267) = v156;
          if (v159 && ([v127 sectionBundleIdentifier], v251 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v251, "isEqualToString:", v255) & 1) != 0))
          {
            v160 = v284;
            v266 = 0;
            v161 = @"(private)";
          }

          else
          {
            v266 = 1;
            v160 = v284;
            v161 = SSRedactString(v284, 1);
            v249 = v161;
          }

          v173 = [v127 rankingItem];
          v174 = [v127 rankingItem];
          v175 = [v174 attributes];
          v176 = [v127 rankingItem];
          Count = SSCompactRankingAttrsGetCount([v176 attributes]);
          v299 = v245;
          *v300 = v267;
          *&v300[4] = 1024;
          *&v300[6] = v270;
          *v301 = 1024;
          *&v301[2] = v125;
          *&v301[6] = 1024;
          *&v301[8] = v275;
          *&v301[12] = 1024;
          *&v301[14] = v286;
          *&v301[18] = 1024;
          v302 = v282;
          v303 = 1024;
          v304 = v281;
          v305 = 1024;
          v306 = v280;
          v307 = 2112;
          v308 = v285;
          v309 = 2112;
          v310 = v274;
          v311 = 2112;
          v312 = v273;
          v313 = 2048;
          v314 = v135;
          v315 = 2048;
          v316 = v131;
          v317 = 2112;
          v318 = v161;
          v319 = 2048;
          v320 = v173;
          v321 = 2048;
          v322 = v175;
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

          v180 = v273;
          self = v271;
          goto LABEL_140;
        }

LABEL_127:
        v160 = v284;
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
      v274 = [v127 sectionBundleIdentifier];
      v273 = [v127 applicationBundleIdentifier];
      v154 = [v127 identifier];
      v155 = [v127 sectionBundleIdentifier];
      v272 = SSRedactSuggestionIdentifier(v154, v155);
      v267 = [v127 sectionBundleIdentifier];
      v268 = v155;
      v276 = v126;
      v275 = v149;
      v269 = v154;
      v265 = v153;
      if (v267 && ([v127 sectionBundleIdentifier], v259 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v259, "isEqualToString:", v255) & 1) != 0))
      {
        v266 = 0;
        v264 = @"(private)";
      }

      else
      {
        v266 = 1;
        v258 = SSRedactString(v284, 1);
        v264 = v258;
      }

      v262 = v129 & v256;
      v162 = v285;
      v263 = v285 & v257;
      v163 = [v127 rankingItem];
      v164 = [v127 rankingItem];
      v165 = [v164 attributes];
      v166 = [v127 rankingItem];
      v167 = SSCompactRankingAttrsGetCount([v166 attributes]);
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
      v302 = v282;
      v303 = 1024;
      v304 = v281;
      v305 = 1024;
      v306 = v280;
      v307 = 2112;
      v308 = v274;
      v309 = 2112;
      v310 = v273;
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
      v328 = v163;
      v329 = 2048;
      v330 = v165;
      v331 = 2048;
      v332 = v167;
      v168 = v283;
      _os_log_impl(&dword_1D9F69000, v283, OS_LOG_TYPE_DEFAULT, "### [%d] result[%d,%d] %d %d %d %d %d %@ %@ %@ %f %f 0x%16.16llx%16.16llx 0x%16.16llx%16.16llx %@ (%p, %p, %lu)", &v299, 0xB4u);

      if (v266)
      {
      }

      v160 = v284;
      v123 = v261;
      v126 = v276;
      v169 = v267;
      v170 = v268;
      if (v267)
      {
      }

      v171 = v272;
      self = v271;
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
      if (initiallyVisibleSectionSentCount + v248 + v185 >= v247)
      {
        v186 = [(SFResultSection *)v243 bundleIdentifier];
        v182 = [v186 isEqualToString:v233] ^ 1;
      }

      else
      {
        v182 = 0;
      }

      goto LABEL_154;
    }

    v183 = [(SFResultSection *)v243 isInitiallyHidden];
    v17 = v235;
    v16 = v236;
    if (!v183 && v126)
    {
      goto LABEL_150;
    }

    v182 = 1;
    if (!v126)
    {
LABEL_160:
      v15 = v277;
LABEL_161:
      v189 = v241;
      goto LABEL_162;
    }

LABEL_154:
    v187 = [(SFResultSection *)v243 bundleIdentifier];
    v188 = SSSectionIsSyndicatedPhotos(v187);

    v189 = v241;
    if (v126 >= v241)
    {
      v190 = v241;
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
      v194 = v192 - v260 + self->_initiallyVisibleSectionSentCount == v247 - 1;
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
      v198 = [(SFMutableResultSection *)v17 resultSet];
      v199 = [v198 count];
      if (v199 >= 1)
      {
        v200 = v199;
        for (m = 0; m != v200; ++m)
        {
          v202 = [v198 objectAtIndex:m];
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
        v204 = v271->_initiallyVisibleSectionSentCount;
        v205 = [v252 count];
        if (v204 + v248 + v205 >= v247)
        {
          v206 = [(SFResultSection *)v243 bundleIdentifier];
          v182 = [v206 isEqualToString:v233] ^ 1;
        }

        else
        {
          v182 = 0;
        }
      }

      v250 = 1;
      if (v17 != v253)
      {
        self = v271;
        v15 = v277;
        v193 = v260;
        goto LABEL_181;
      }

      v242 = 0;
      v104 = v270;
      self = v271;
      v15 = v277;
      v208 = v243;
    }

    v98 = v247;
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
        v216 = [v214 bundleIdentifier];
        v299 = v286;
        *v300 = v213;
        *&v300[8] = 2112;
        *v301 = v216;
        *&v301[8] = 1024;
        *&v301[10] = 2;
        _os_log_impl(&dword_1D9F69000, v215, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] Unhiding section (%lu) %@ due to minimum hiding quota (%d)", &v299, 0x1Cu);
      }

      ++v213;
    }

    while (v260 != v213);
    v260 = 0;
    self = v271;
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

+ (id)dedupeWebURLSuggestionsFromSections:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count] >= 2)
  {
    v58 = objc_opt_new();
    v4 = [v3 firstObject];
    v5 = [v4 bundleIdentifier];
    v6 = [v5 isEqualToString:@"com.apple.spotlight.tophits"];

    if (v6)
    {
      v52 = v3;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v7 = v4;
      v8 = [v4 results];
      v9 = [v8 countByEnumeratingWithState:&v63 objects:v68 count:16];
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
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v63 + 1) + 8 * i);
            v14 = [v13 url];
            v15 = v14;
            if (v14)
            {
              v16 = v14;
            }

            else
            {
              v17 = [v13 punchout];
              v18 = [v17 urls];
              v16 = [v18 firstObject];
            }

            v19 = [v13 contentURL];
            v20 = v19;
            if (v19)
            {
              v21 = v19;
            }

            else
            {
              v21 = [v16 absoluteString];
            }

            v22 = v21;

            v23 = strippedURL(v22);
            if (v23)
            {
              [v58 addObject:v23];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v63 objects:v68 count:16];
        }

        while (v10);
      }

      v3 = v52;
      v4 = v7;
    }

    v24 = [v3 objectAtIndex:1];
    if ([v58 count])
    {
      v25 = [v24 bundleIdentifier];
      v26 = [v25 isEqualToString:@"com.apple.searchd.suggestions"];

      if (v26)
      {
        v51 = v4;
        v53 = v3;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v54 = v24;
        v27 = [v24 results];
        v28 = [v27 countByEnumeratingWithState:&v59 objects:v67 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v60;
          v31 = 0x1E69CA000uLL;
          v55 = *v60;
          v56 = v27;
          do
          {
            v32 = 0;
            v57 = v29;
            do
            {
              if (*v60 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v33 = *(*(&v59 + 1) + 8 * v32);
              v34 = [v33 compactCard];
              v35 = v34;
              if (v34)
              {
                v36 = v34;
              }

              else
              {
                v36 = [v33 inlineCard];
              }

              v37 = v36;

              v38 = [v37 cardSections];
              v39 = [v38 firstObject];

              v40 = *(v31 + 1208);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v41 = v39;
                v42 = [v41 suggestionText];
                v43 = [v42 text];
                v44 = v43;
                if (v43)
                {
                  v45 = v43;
                }

                else
                {
                  v46 = [v42 formattedTextPieces];
                  v47 = [v46 firstObject];
                  v45 = [v47 text];

                  v27 = v56;
                  v30 = v55;
                }

                if ([v58 containsObject:v45] && objc_msgSend(v41, "suggestionType") == 4)
                {
                  [v54 removeResults:v33];
                }

                v31 = 0x1E69CA000;
                v29 = v57;
              }

              ++v32;
            }

            while (v29 != v32);
            v29 = [v27 countByEnumeratingWithState:&v59 objects:v67 count:16];
          }

          while (v29);
        }

        v24 = v54;
        if ([v54 resultsCount])
        {
          v3 = v53;
        }

        else
        {
          v48 = [v53 mutableCopy];
          [v48 removeObject:v54];

          v3 = v48;
        }

        v4 = v51;
      }
    }
  }

  v49 = *MEMORY[0x1E69E9840];

  return v3;
}

@end