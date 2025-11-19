@interface SectionL3Scores
+ (void)getComparableL3Score:(id)a3 sectionMapping:(id)a4 bundleId1:(id)a5 bundleId2:(id)a6 score1:(float *)a7 score2:(float *)a8 usePommesScore:(BOOL)a9 useLegacyScore:(BOOL)a10;
+ (void)getComparableModelL3Score:(id)a3 bundleId1:(id)a4 bundleId2:(id)a5 score1:(float *)a6 score2:(float *)a7;
- (BOOL)computeScore:(id)a3 rankingConfig:(id)a4 hasGoodLocalResult:(BOOL)a5 pos:(int)a6 queryContext:(id)a7;
- (SectionL3Scores)init;
- (float)getL3Score:(int)a3 isLegacy:(BOOL)a4;
- (float)getResultScore:(id)a3 section:(id)a4 isLegacy:(BOOL)a5;
- (id)getIFunScore:(id)a3 rankingConfig:(id)a4 isLocal:(BOOL)a5 result:(id)a6 queryContext:(id)a7 isQUIntent:(BOOL *)a8;
@end

@implementation SectionL3Scores

- (SectionL3Scores)init
{
  v12.receiver = self;
  v12.super_class = SectionL3Scores;
  v2 = [(SectionL3Scores *)&v12 init];
  v3 = v2;
  if (v2)
  {
    memset_pattern16(v2->l3Score, &unk_1DA0D53C0, 0xCuLL);
    memset_pattern16(v3->l3ScoreLegacy, &unk_1DA0D53C0, 0xCuLL);
    __asm { FMOV            V0.2S, #-1.0 }

    *&v3->_iFunScore = _D0;
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:67];
    features = v3->_features;
    v3->_features = v9;

    v3->_modelScore = -1.0;
  }

  return v3;
}

- (float)getL3Score:(int)a3 isLegacy:(BOOL)a4
{
  v4 = 8;
  if (a4)
  {
    v4 = 20;
  }

  return *(&self->super.isa + 4 * a3 + v4);
}

- (float)getResultScore:(id)a3 section:(id)a4 isLegacy:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v5)
  {
    if ([v8 domain] == 2)
    {
      [v7 l2score];
    }

    else
    {
      v16 = [v7 rankingItem];
      v17 = [v16 L2FeatureVector];

      if (!v17)
      {
        v12 = -1.0;
        goto LABEL_17;
      }

      v18 = [v7 rankingItem];
      v19 = [v18 L2FeatureVector];
      [v19 originalL2Score];
      v21 = v20;

      if (v21 < -1000.0)
      {
        v22 = [v7 rankingItem];
        [v22 keywordMatchScore];
        v24 = v23;

        if (v24 > 0.05)
        {
          [v7 l2score];
          v21 = *&v10;
        }
      }

      *&v10 = v21;
    }

    [SectionL3Scores normalizeLegacyScore:v10];
    v12 = v25;
  }

  else
  {
    v11 = [v7 rankingItem];
    v12 = -1.0;
    if (v11)
    {
      v13 = v11;
      v14 = [v7 rankingItem];
      [v14 keywordMatchScore];
      if (v15 >= 0.0)
      {
        v26 = [v7 rankingItem];
        [v26 likelihood];
        v28 = v27;

        if (v28 <= 0.0)
        {
          goto LABEL_17;
        }

        v13 = [v7 rankingItem];
        [v13 likelihood];
        v12 = v29;
      }

      else
      {
      }
    }
  }

LABEL_17:

  return v12;
}

- (BOOL)computeScore:(id)a3 rankingConfig:(id)a4 hasGoodLocalResult:(BOOL)a5 pos:(int)a6 queryContext:(id)a7
{
  v198 = a5;
  v226 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v189 = a4;
  v12 = a7;
  if ([v11 resultsCount])
  {
    v185 = a6;
    v13 = [v11 resultsAtIndex:0];
    v14 = [v11 domain];
    if (v14 == 2)
    {
      v16 = [v13 sectionBundleIdentifier];
    }

    else
    {
      v15 = [v13 rankingItem];
      v16 = [v15 sectionBundleIdentifier];
    }

    v212 = 0;
    v190 = [(SectionL3Scores *)self getIFunScore:v16 rankingConfig:v189 isLocal:v14 != 2 result:v13 queryContext:v12 isQUIntent:&v212];
    if (v212 == 1)
    {
      v187 = v13;
      v18 = v16;
      v19 = self;
      v210 = 0u;
      v211 = 0u;
      v208 = 0u;
      v209 = 0u;
      v20 = [v11 resultSet];
      v21 = [v20 countByEnumeratingWithState:&v208 objects:v225 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v209;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v209 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v208 + 1) + 8 * i);
            v26 = [v25 rankingItem];

            if (v26)
            {
              v27 = [v25 rankingItem];
              [v27 setShouldHideUnderShowMore:0];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v208 objects:v225 count:16];
        }

        while (v22);
      }

      self = v19;
      v16 = v18;
      v13 = v187;
    }

    v28 = [v11 resultsCount];
    v223 = 0xBF800000BF800000;
    v224 = -1082130432;
    v221 = 0xBF800000BF800000;
    v222 = -1082130432;
    if (v28 >= 1)
    {
      v29 = 0;
      if (v28 >= 3)
      {
        v30 = 3;
      }

      else
      {
        v30 = v28;
      }

      if (v30 <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = v30;
      }

      do
      {
        v32 = [v11 resultsAtIndex:v29];

        v13 = v32;
        [(SectionL3Scores *)self getResultScore:v32 section:v11 isLegacy:1];
        *(&v223 + v29) = v33;
        [(SectionL3Scores *)self getResultScore:v32 section:v11 isLegacy:0];
        *(&v221 + v29++) = v34;
      }

      while (v31 != v29);
      l3ScoreLegacy = self->l3ScoreLegacy;
      v36 = &v221;
      v37 = &v223;
      v38 = &computeScore_rankingConfig_hasGoodLocalResult_pos_queryContext__positionDiscount;
      v39 = 1.0;
      v40 = 1.0;
      v41 = v190;
      do
      {
        if (*v37 >= 0.0)
        {
          v40 = (1.0 - (*v37 * *v38)) * v40;
          *l3ScoreLegacy = 1.0 - v40;
        }

        if (*v36 >= 0.0)
        {
          v39 = (1.0 - (*v36 * *v38)) * v39;
          *(l3ScoreLegacy - 3) = 1.0 - v39;
        }

        if (v41)
        {
          [v41 floatValue];
          self->_iFunScore = v42;
          if (*l3ScoreLegacy > 0.0)
          {
            *l3ScoreLegacy = v42 * *l3ScoreLegacy;
          }

          v43 = *(l3ScoreLegacy - 3);
          v41 = v190;
          if (v43 > 0.0)
          {
            *(l3ScoreLegacy - 3) = v43 * self->_iFunScore;
          }
        }

        ++l3ScoreLegacy;
        ++v38;
        ++v36;
        ++v37;
        --v31;
      }

      while (v31);
      v13 = v32;
    }

    v186 = v12;
    if ([v11 domain] == 2)
    {
      v44 = [v189 serverRelevanceScores];
      if (v44)
      {
        v45 = v44;
        v46 = [v16 isEqualToString:@"com.apple.parsec.web_index"];

        if (v46)
        {
          v47 = v13;
          v206 = 0u;
          v207 = 0u;
          v204 = 0u;
          v205 = 0u;
          v48 = [v11 results];
          v49 = [v48 countByEnumeratingWithState:&v204 objects:v220 count:16];
          if (v49)
          {
            v50 = v49;
            v181 = v16;
            v183 = v11;
            v51 = self;
            v52 = 0;
            v53 = *v205;
            v54 = v47;
            while (2)
            {
              v55 = 0;
              v56 = v52;
              v196 = v52 + v50;
              v57 = v54;
              do
              {
                if (*v205 != v53)
                {
                  objc_enumerationMutation(v48);
                }

                v54 = *(*(&v204 + 1) + 8 * v55);

                v58 = [v189 serverRelevanceScores];
                v59 = [v54 identifier];
                v60 = [v58 objectForKey:v59];

                if (v60)
                {
                  if (!v56)
                  {
                    [v60 floatValue];
                    v51->_serverRelevanceScore = v61;
                  }

                  [v60 floatValue];
                  v63 = v62;
                  [v189 serverRelevanceScoreThreshold];
                  if (v63 < v64 && v198)
                  {
                    self = v51;
                    memset_pattern16(v51->l3Score, &unk_1DA0D53B0, 0xCuLL);
                    *v51->l3ScoreLegacy = 0x80000000800000;
                    v51->l3ScoreLegacy[2] = -3.4028e38;
                    v11 = v183;
                    v66 = [v183 results];
                    v67 = [v66 count] - v56;

                    v68 = [v183 resultSet];
                    [v68 removeObjectsInRange:{v56, v67}];

                    v69 = SSGeneralLog();
                    v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT);
                    v47 = v60;
                    if (v70)
                    {
                      [v189 serverRelevanceScoreThreshold];
                      *buf = 138412802;
                      v215 = v60;
                      v216 = 2048;
                      v217 = v71;
                      v218 = 1024;
                      v219 = v56;
                      _os_log_impl(&dword_1D9F69000, v69, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] L3: website relevance score %@ < threshold %f, filter results starting from index %i", buf, 0x1Cu);
                    }

                    goto LABEL_59;
                  }
                }

                ++v55;
                ++v56;
                v57 = v54;
              }

              while (v50 != v55);
              v50 = [v48 countByEnumeratingWithState:&v204 objects:v220 count:16];
              v52 = v196;
              if (v50)
              {
                continue;
              }

              break;
            }

            v47 = v54;
            v54 = 0;
            v11 = v183;
            self = v51;
LABEL_59:
            v16 = v181;
          }

          else
          {
            v54 = 0;
          }

          v13 = v54;
        }
      }
    }

    [(NSMutableDictionary *)self->_features setObject:v16 forKeyedSubscript:@"section_bundle_id"];
    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    obj = [v11 resultSet];
    v197 = [obj countByEnumeratingWithState:&v200 objects:v213 count:16];
    if (v197)
    {
      v188 = v13;
      v182 = v16;
      v184 = v11;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v195 = 0;
      v75 = 0;
      v194 = *v201;
      v76 = 0.0;
      v77 = 0.0;
      v78 = 0.0;
      v79 = 0.0;
      do
      {
        v80 = 0;
        do
        {
          if (*v201 != v194)
          {
            objc_enumerationMutation(obj);
          }

          v81 = *(*(&v200 + 1) + 8 * v80);
          v199 = v80;
          if (v72 <= 2)
          {
            if ([v81 topHit])
            {
              v82 = &unk_1F55B39D8;
            }

            else
            {
              v82 = &unk_1F55B39F0;
            }

            v193 = v75;
            v83 = self;
            features = self->_features;
            [MEMORY[0x1E696AEC0] stringWithFormat:@"results_top3_is_tophit_%d", v72];
            v85 = v192 = v74;
            [(NSMutableDictionary *)features setObject:v82 forKeyedSubscript:v85];

            if ([v81 topHit])
            {
              v73 = 1;
            }

            v86 = MEMORY[0x1E696AD98];
            v87 = [v81 rankingItem];
            [v87 l2Score];
            v88 = [v86 numberWithFloat:?];
            v89 = v83->_features;
            v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results_top3_pommesL2Score_%d", v72];
            [(NSMutableDictionary *)v89 setObject:v88 forKeyedSubscript:v90];

            v91 = MEMORY[0x1E696AD98];
            v92 = [v81 rankingItem];
            [v92 keywordMatchScore];
            v93 = [v91 numberWithFloat:?];
            v94 = v83->_features;
            v95 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results_top3_topicalityScore_%d", v72];
            [(NSMutableDictionary *)v94 setObject:v93 forKeyedSubscript:v95];

            v96 = MEMORY[0x1E696AD98];
            v97 = [v81 rankingItem];
            [v97 freshnessScore];
            *&v98 = v98;
            v99 = [v96 numberWithFloat:v98];
            v100 = v83->_features;
            v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results_top3_freshness_%d", v72];
            [(NSMutableDictionary *)v100 setObject:v99 forKeyedSubscript:v101];

            v102 = MEMORY[0x1E696AD98];
            v103 = [v81 rankingItem];
            [v103 engagementScore];
            *&v104 = v104;
            v105 = [v102 numberWithFloat:v104];
            v106 = v83->_features;
            v107 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results_top3_engagementScore_%d", v72];
            [(NSMutableDictionary *)v106 setObject:v105 forKeyedSubscript:v107];

            v108 = MEMORY[0x1E696AD98];
            v109 = [v81 rankingItem];
            [v109 likelihood];
            *&v110 = v110;
            v111 = [v108 numberWithFloat:v110];
            v112 = v83->_features;
            v113 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results_top3_predictedLikelihoodOfEngagement_%d", v72];
            [(NSMutableDictionary *)v112 setObject:v111 forKeyedSubscript:v113];

            v114 = MEMORY[0x1E696AD98];
            v115 = [v81 topHit];
            v116 = 1.0;
            if (!v115)
            {
              v116 = 0.0;
            }

            v117 = [v114 numberWithDouble:v116];
            v118 = v83->_features;
            v119 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results_top3_wasNominatedAsTopHit_%d", v72];
            [(NSMutableDictionary *)v118 setObject:v117 forKeyedSubscript:v119];

            v120 = MEMORY[0x1E696AD98];
            v121 = [v81 rankingItem];
            if ([v121 exactMatchedLaunchString])
            {
              *&v122 = 1.0;
            }

            else
            {
              *&v122 = 0.0;
            }

            v123 = [v120 numberWithFloat:v122];
            v124 = v83->_features;
            v125 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results_top3_isExactMatchOfLaunchString_%d", v72];
            [(NSMutableDictionary *)v124 setObject:v123 forKeyedSubscript:v125];

            v126 = MEMORY[0x1E696AD98];
            v127 = [v81 rankingItem];
            if ([v127 wasEngagedInSpotlight])
            {
              *&v128 = 1.0;
            }

            else
            {
              *&v128 = 0.0;
            }

            v129 = [v126 numberWithFloat:v128];
            v130 = v83->_features;
            v131 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results_top3_wasEngagedInSpotlight_%d", v72];
            [(NSMutableDictionary *)v130 setObject:v129 forKeyedSubscript:v131];

            v132 = MEMORY[0x1E696AD98];
            v133 = [v81 rankingItem];
            v134 = [v133 L2FeatureVector];
            [v134 originalL2Score];
            v135 = [v132 numberWithFloat:?];
            v136 = v83->_features;
            v137 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results_top3_originalL2Score_%d", v72];
            v138 = v136;
            v74 = v192;
            [(NSMutableDictionary *)v138 setObject:v135 forKeyedSubscript:v137];

            self = v83;
            v75 = v193;

            v139 = MEMORY[0x1E696AD98];
            [v81 l2score];
            v140 = [v139 numberWithFloat:?];
            v141 = self->_features;
            v142 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results_top3_l2Score_%d", v72];
            [(NSMutableDictionary *)v141 setObject:v140 forKeyedSubscript:v142];
          }

          if ([v81 topHit] == 1)
          {
            ++v74;
          }

          else
          {
            v143 = [v81 topHit];
            v144 = v195;
            if (v143 == 2)
            {
              v144 = v195 + 1;
            }

            v195 = v144;
          }

          v75 += [SSTopHitNominationManager passLikelihoodForTopHitCandidate:v81];
          v145 = [v81 rankingItem];
          [v145 likelihood];
          v147 = v146;

          if (v147 > v76)
          {
            v76 = v147;
          }

          v148 = [v81 rankingItem];
          [v148 keywordMatchScore];
          v150 = v149;

          if (v77 < v150)
          {
            v77 = v150;
          }

          v151 = [v81 rankingItem];
          v152 = [v151 L2FeatureVector];
          [v152 originalL2Score];
          v154 = v153;

          if (v78 < v154)
          {
            v78 = v154;
          }

          [v81 l2score];
          if (v79 < v155)
          {
            v79 = v155;
          }

          v72 = (v72 + 1);
          v80 = v199 + 1;
        }

        while (v197 != v199 + 1);
        v197 = [obj countByEnumeratingWithState:&v200 objects:v213 count:16];
      }

      while (v197);
      v156 = v73;
      v157 = v74;
      v158 = v195;
      v159 = v75;
      v16 = v182;
      v11 = v184;
      v13 = v188;
    }

    else
    {
      v156 = 0.0;
      v157 = 0.0;
      v158 = 0.0;
      v159 = 0.0;
      v76 = 0.0;
      v77 = 0.0;
      v78 = 0.0;
      v79 = 0.0;
    }

    v12 = v186;
    if ([v11 domain] == 2)
    {
      *&v160 = v185;
      v161 = [MEMORY[0x1E696AD98] numberWithFloat:v160];
      [(NSMutableDictionary *)self->_features setObject:v161 forKeyedSubscript:@"server_section_dpos"];
    }

    *&v160 = v156;
    v162 = [MEMORY[0x1E696AD98] numberWithFloat:v160];
    [(NSMutableDictionary *)self->_features setObject:v162 forKeyedSubscript:@"section_is_tophit"];

    *&v163 = v157;
    v164 = [MEMORY[0x1E696AD98] numberWithFloat:v163];
    [(NSMutableDictionary *)self->_features setObject:v164 forKeyedSubscript:@"section_tophit_should_be_count"];

    *&v165 = v158;
    v166 = [MEMORY[0x1E696AD98] numberWithFloat:v165];
    [(NSMutableDictionary *)self->_features setObject:v166 forKeyedSubscript:@"section_tophit_must_be_count"];

    *&v167 = v159;
    v168 = [MEMORY[0x1E696AD98] numberWithFloat:v167];
    [(NSMutableDictionary *)self->_features setObject:v168 forKeyedSubscript:@"score_over_th_threshold_count"];

    *&v169 = v76;
    v170 = [MEMORY[0x1E696AD98] numberWithFloat:v169];
    [(NSMutableDictionary *)self->_features setObject:v170 forKeyedSubscript:@"max_likelihood"];

    *&v171 = v77;
    v172 = [MEMORY[0x1E696AD98] numberWithFloat:v171];
    [(NSMutableDictionary *)self->_features setObject:v172 forKeyedSubscript:@"max_topicality"];

    *&v173 = v78;
    v174 = [MEMORY[0x1E696AD98] numberWithFloat:v173];
    [(NSMutableDictionary *)self->_features setObject:v174 forKeyedSubscript:@"max_original_l2_score"];

    *&v175 = v79;
    v176 = [MEMORY[0x1E696AD98] numberWithFloat:v175];
    [(NSMutableDictionary *)self->_features setObject:v176 forKeyedSubscript:@"max_l2_score"];

    v177 = MEMORY[0x1E696AD98];
    [v190 floatValue];
    v178 = [v177 numberWithFloat:?];
    [(NSMutableDictionary *)self->_features setObject:v178 forKeyedSubscript:@"ifun_score"];

    v17 = v212;
  }

  else
  {
    v17 = 0;
  }

  v179 = *MEMORY[0x1E69E9840];
  return v17 & 1;
}

- (id)getIFunScore:(id)a3 rankingConfig:(id)a4 isLocal:(BOOL)a5 result:(id)a6 queryContext:(id)a7 isQUIntent:(BOOL *)a8
{
  v11 = a5;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  if (([(__CFString *)v13 isEqualToString:@"com.apple.spotlight.contacts"]& 1) != 0 || ([(__CFString *)v13 isEqualToString:@"com.apple.contacts"]& 1) != 0)
  {
    v17 = @"com.apple.MobileAddressBook";
LABEL_4:

    v13 = v17;
    goto LABEL_5;
  }

  if (([(__CFString *)v13 isEqualToString:@"com.apple.calculation"]& 1) != 0)
  {
    v17 = @"com.apple.calculator";
    goto LABEL_4;
  }

  if ([(__CFString *)v13 isEqualToString:@"com.apple.DocumentsApp"])
  {
    v17 = @"com.apple.CloudDocs.MobileDocumentsFileProvider";
    goto LABEL_4;
  }

LABEL_5:
  if (isQUIntentMatchBundle([v16 intentFromQU], v13))
  {
    *a8 = 1;
    v18 = &unk_1F55B6CA8;
    goto LABEL_200;
  }

  v19 = v13;
  if ([(__CFString *)v19 compare:@"com.apple.unknown" options:3])
  {
    if ([(__CFString *)v19 compare:@"com.apple.applications" options:3])
    {
      if ([(__CFString *)v19 compare:@"com.apple.bookmarks" options:3])
      {
        v20 = 3;
        if ([(__CFString *)v19 compare:@"com.apple.calculator" options:3])
        {
          if ([(__CFString *)v19 compare:@"com.apple.calendar" options:3])
          {
            if ([(__CFString *)v19 compare:@"com.apple.coresuggestions" options:3])
            {
              if ([(__CFString *)v19 compare:@"com.apple.developer" options:3])
              {
                if ([(__CFString *)v19 compare:@"com.apple.dictionary" options:3])
                {
                  if ([(__CFString *)v19 compare:@"com.apple.directories" options:3])
                  {
                    if ([(__CFString *)v19 compare:@"com.apple.documents" options:3])
                    {
                      if ([(__CFString *)v19 compare:@"com.apple.ibooks" options:3])
                      {
                        if ([(__CFString *)v19 compare:@"com.apple.keynote" options:3])
                        {
                          if ([(__CFString *)v19 compare:@"com.apple.mail" options:3])
                          {
                            if ([(__CFString *)v19 compare:@"com.apple.mobiletimer" options:3])
                            {
                              if ([(__CFString *)v19 compare:@"com.apple.news" options:3])
                              {
                                if ([(__CFString *)v19 compare:@"com.apple.numbers" options:3])
                                {
                                  if ([(__CFString *)v19 compare:@"com.apple.other" options:3])
                                  {
                                    if ([(__CFString *)v19 compare:@"com.apple.pdfs" options:3])
                                    {
                                      if ([(__CFString *)v19 compare:@"com.apple.photos" options:3])
                                      {
                                        if ([(__CFString *)v19 compare:@"com.apple.reminders" options:3])
                                        {
                                          if ([(__CFString *)v19 compare:@"com.apple.settings" options:3])
                                          {
                                            if ([(__CFString *)v19 compare:@"com.apple.voicememos" options:3])
                                            {
                                              if ([(__CFString *)v19 compare:@"com.apple.application" options:3])
                                              {
                                                if ([(__CFString *)v19 compare:@"com.apple.parsec.itunes.iossoftware" options:3])
                                                {
                                                  if ([(__CFString *)v19 compare:@"com.getdropbox.dropbox" options:3])
                                                  {
                                                    if ([(__CFString *)v19 compare:@"com.apple.parsec.flights" options:3])
                                                    {
                                                      if ([(__CFString *)v19 compare:@"com.giphy.giphyformessenger" options:3])
                                                      {
                                                        if ([(__CFString *)v19 compare:@"com.google.chrome.ios" options:3])
                                                        {
                                                          if ([(__CFString *)v19 compare:@"com.google.maps" options:3])
                                                          {
                                                            if ([(__CFString *)v19 compare:@"com.google.photos" options:3])
                                                            {
                                                              if ([(__CFString *)v19 compare:@"com.groupon.grouponapp" options:3])
                                                              {
                                                                if ([(__CFString *)v19 compare:@"com.apple.parsec.kg" options:3])
                                                                {
                                                                  if ([(__CFString *)v19 compare:@"com.linkedin.linkedin" options:3])
                                                                  {
                                                                    if ([(__CFString *)v19 compare:@"com.apple.maps" options:3])
                                                                    {
                                                                      if ([(__CFString *)v19 compare:@"com.apple.parsec.maps" options:3])
                                                                      {
                                                                        if ([(__CFString *)v19 compare:@"com.apple.parsec.itunes.artist" options:3])
                                                                        {
                                                                          if ([(__CFString *)v19 compare:@"com.microsoft.office.outlook" options:3])
                                                                          {
                                                                            if ([(__CFString *)v19 compare:@"com.mlb.atbatuniversal" options:3])
                                                                            {
                                                                              if ([(__CFString *)v19 compare:@"com.apple.mobileaddressbook" options:3])
                                                                              {
                                                                                if ([(__CFString *)v19 compare:@"com.apple.mobilecal" options:3])
                                                                                {
                                                                                  if ([(__CFString *)v19 compare:@"com.apple.clouddocs.mobiledocumentsfileprovider" options:3])
                                                                                  {
                                                                                    if ([(__CFString *)v19 compare:@"com.apple.mobilemail" options:3])
                                                                                    {
                                                                                      if ([(__CFString *)v19 compare:@"com.apple.mobilenotes" options:3])
                                                                                      {
                                                                                        if ([(__CFString *)v19 compare:@"com.apple.mobilesafari" options:3])
                                                                                        {
                                                                                          if ([(__CFString *)v19 compare:@"com.apple.mobilesms" options:3])
                                                                                          {
                                                                                            if ([(__CFString *)v19 compare:@"com.apple.parsec.movies" options:3])
                                                                                            {
                                                                                              if ([(__CFString *)v19 compare:@"com.apple.music" options:3])
                                                                                              {
                                                                                                if ([(__CFString *)v19 compare:@"com.apple.parsec.news" options:3])
                                                                                                {
                                                                                                  if ([(__CFString *)v19 compare:@"com.apple.other:search_app_store" options:3])
                                                                                                  {
                                                                                                    if ([(__CFString *)v19 compare:@"com.apple.other:search_maps" options:3])
                                                                                                    {
                                                                                                      if ([(__CFString *)v19 compare:@"com.apple.other:search_web" options:3])
                                                                                                      {
                                                                                                        if ([(__CFString *)v19 compare:@"com.apple.other:taptoradar" options:3])
                                                                                                        {
                                                                                                          if ([(__CFString *)v19 compare:@"com.pandora" options:3])
                                                                                                          {
                                                                                                            if ([(__CFString *)v19 compare:@"pinterest" options:3])
                                                                                                            {
                                                                                                              if ([(__CFString *)v19 compare:@"com.apple.podcasts" options:3])
                                                                                                              {
                                                                                                                if ([(__CFString *)v19 compare:@"com.apple.preferences" options:3])
                                                                                                                {
                                                                                                                  if ([(__CFString *)v19 compare:@"com.apple.spotlight.related_search" options:3])
                                                                                                                  {
                                                                                                                    if ([(__CFString *)v19 compare:@"com.riffsy.riffsykeyboard" options:3])
                                                                                                                    {
                                                                                                                      if ([(__CFString *)v19 compare:@"com.apple.parsec.sports" options:3])
                                                                                                                      {
                                                                                                                        if ([(__CFString *)v19 compare:@"com.apple.spotlight.suggestionlist.contact" options:3])
                                                                                                                        {
                                                                                                                          if ([(__CFString *)v19 compare:@"com.apple.spotlight.suggestionlist.local" options:3])
                                                                                                                          {
                                                                                                                            if ([(__CFString *)v19 compare:@"com.apple.spotlight.suggestionlist.usertypedstring" options:3])
                                                                                                                            {
                                                                                                                              if ([(__CFString *)v19 compare:@"com.apple.stocks" options:3])
                                                                                                                              {
                                                                                                                                if ([(__CFString *)v19 compare:@"com.apple.parsec.stocks" options:3])
                                                                                                                                {
                                                                                                                                  if ([(__CFString *)v19 compare:@"com.stubhub.stubhub" options:3])
                                                                                                                                  {
                                                                                                                                    if ([(__CFString *)v19 compare:@"com.apple.searchd.suggestions" options:3])
                                                                                                                                    {
                                                                                                                                      if ([(__CFString *)v19 compare:@"com.apple.spotlight.suggestionlist.parsec" options:3])
                                                                                                                                      {
                                                                                                                                        if ([(__CFString *)v19 compare:@"com.apple.taptoradar" options:3])
                                                                                                                                        {
                                                                                                                                          if ([(__CFString *)v19 compare:@"com.apple.parsec.tv.tvshow" options:3])
                                                                                                                                          {
                                                                                                                                            if ([(__CFString *)v19 compare:@"com.atebits.tweetie2" options:3])
                                                                                                                                            {
                                                                                                                                              if ([(__CFString *)v19 compare:@"tv.twitch" options:3])
                                                                                                                                              {
                                                                                                                                                if ([(__CFString *)v19 compare:@"com.apple.weather" options:3])
                                                                                                                                                {
                                                                                                                                                  if ([(__CFString *)v19 compare:@"com.apple.parsec.weather" options:3])
                                                                                                                                                  {
                                                                                                                                                    if ([(__CFString *)v19 compare:@"com.apple.parsec.web_answer" options:3])
                                                                                                                                                    {
                                                                                                                                                      if ([(__CFString *)v19 compare:@"com.apple.parsec.web_images" options:3])
                                                                                                                                                      {
                                                                                                                                                        if ([(__CFString *)v19 compare:@"com.apple.parsec.web_index" options:3])
                                                                                                                                                        {
                                                                                                                                                          if ([(__CFString *)v19 compare:@"com.google.ios.youtube" options:3])
                                                                                                                                                          {
                                                                                                                                                            if ([(__CFString *)v19 compare:@"net.whatsapp.whatsapp" options:3])
                                                                                                                                                            {
                                                                                                                                                              if ([(__CFString *)v19 compare:@"com.yahoo.aerogram" options:3])
                                                                                                                                                              {
                                                                                                                                                                if ([(__CFString *)v19 compare:@"com.yelp.yelpiphone" options:3])
                                                                                                                                                                {
                                                                                                                                                                  if ([(__CFString *)v19 compare:@"com.google.ios.youtube" options:3])
                                                                                                                                                                  {
                                                                                                                                                                    if ([(__CFString *)v19 compare:@"com.zillow.zillowmap" options:3])
                                                                                                                                                                    {
                                                                                                                                                                      if ([(__CFString *)v19 compare:@"com.apple.parsec.dictionary" options:3])
                                                                                                                                                                      {
                                                                                                                                                                        if ([(__CFString *)v19 compare:@"com.apple.shortcuts" options:3])
                                                                                                                                                                        {
                                                                                                                                                                          if ([(__CFString *)v19 compare:@"com.apple.tips" options:3])
                                                                                                                                                                          {
                                                                                                                                                                            if ([(__CFString *)v19 compare:@"com.apple.health" options:3])
                                                                                                                                                                            {
                                                                                                                                                                              if ([(__CFString *)v19 compare:@"com.apple.systempreferences" options:3])
                                                                                                                                                                              {
                                                                                                                                                                                if ([(__CFString *)v19 compare:@"com.apple.conversion" options:3])
                                                                                                                                                                                {
                                                                                                                                                                                  v20 = 0;
                                                                                                                                                                                }

                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                  v20 = 87;
                                                                                                                                                                                }
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v20 = 86;
                                                                                                                                                                              }
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              v20 = 85;
                                                                                                                                                                            }
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v20 = 84;
                                                                                                                                                                          }
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v20 = 83;
                                                                                                                                                                        }
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v20 = 82;
                                                                                                                                                                      }
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v20 = 81;
                                                                                                                                                                    }
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v20 = 80;
                                                                                                                                                                  }
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v20 = 79;
                                                                                                                                                                }
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v20 = 78;
                                                                                                                                                              }
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v20 = 77;
                                                                                                                                                            }
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v20 = 76;
                                                                                                                                                          }
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v20 = 75;
                                                                                                                                                        }
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v20 = 74;
                                                                                                                                                      }
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v20 = 73;
                                                                                                                                                    }
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v20 = 72;
                                                                                                                                                  }
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v20 = 71;
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v20 = 70;
                                                                                                                                              }
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v20 = 69;
                                                                                                                                            }
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v20 = 68;
                                                                                                                                          }
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v20 = 67;
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v20 = 66;
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v20 = 65;
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v20 = 64;
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v20 = 63;
                                                                                                                                }
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v20 = 62;
                                                                                                                              }
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v20 = 61;
                                                                                                                            }
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v20 = 60;
                                                                                                                          }
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v20 = 59;
                                                                                                                        }
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v20 = 58;
                                                                                                                      }
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v20 = 57;
                                                                                                                    }
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v20 = 56;
                                                                                                                  }
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v20 = 55;
                                                                                                                }
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v20 = 54;
                                                                                                              }
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v20 = 53;
                                                                                                            }
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v20 = 52;
                                                                                                          }
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v20 = 51;
                                                                                                        }
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v20 = 50;
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v20 = 49;
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v20 = 48;
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v20 = 47;
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v20 = 46;
                                                                                              }
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v20 = 45;
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v20 = 44;
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v20 = 43;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v20 = 42;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v20 = 41;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v20 = 40;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  v20 = 39;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v20 = 38;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v20 = 37;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v20 = 36;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v20 = 35;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v20 = 34;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v20 = 33;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v20 = 32;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v20 = 31;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v20 = 30;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v20 = 29;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v20 = 28;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v20 = 27;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v20 = 26;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v20 = 25;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v20 = 24;
                                                  }
                                                }

                                                else
                                                {
                                                  v20 = 23;
                                                }
                                              }

                                              else
                                              {
                                                v20 = 22;
                                              }
                                            }

                                            else
                                            {
                                              v20 = 21;
                                            }
                                          }

                                          else
                                          {
                                            v20 = 20;
                                          }
                                        }

                                        else
                                        {
                                          v20 = 19;
                                        }
                                      }

                                      else
                                      {
                                        v20 = 18;
                                      }
                                    }

                                    else
                                    {
                                      v20 = 17;
                                    }
                                  }

                                  else
                                  {
                                    v20 = 16;
                                  }
                                }

                                else
                                {
                                  v20 = 15;
                                }
                              }

                              else
                              {
                                v20 = 14;
                              }
                            }

                            else
                            {
                              v20 = 13;
                            }
                          }

                          else
                          {
                            v20 = 12;
                          }
                        }

                        else
                        {
                          v20 = 11;
                        }
                      }

                      else
                      {
                        v20 = 10;
                      }
                    }

                    else
                    {
                      v20 = 9;
                    }
                  }

                  else
                  {
                    v20 = 8;
                  }
                }

                else
                {
                  v20 = 7;
                }
              }

              else
              {
                v20 = 6;
              }
            }

            else
            {
              v20 = 5;
            }
          }

          else
          {
            v20 = 4;
          }
        }
      }

      else
      {
        v20 = 2;
      }
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = [v14 iFunScores];
  v22 = [v21 domainScores];
  v23 = [MEMORY[0x1E696AD98] numberWithInt:v20];
  v18 = [v22 objectForKey:v23];

  if (!v18)
  {
    if (v11)
    {
      v24 = [v15 rankingItem];
      if (v24)
      {
        v25 = v24;
        v26 = [v15 rankingItem];
        [v26 keywordMatchScore];
        if (v27 <= 0.0)
        {
        }

        else
        {
          v28 = [v15 rankingItem];
          v29 = [v28 sectionBundleIdentifier];
          v30 = [v29 isEqualToString:@"com.apple.tips"];

          if ((v30 & 1) == 0)
          {
            v31 = [v14 iFunScores];
            v32 = [v31 localScore];

            if (v32)
            {
              v33 = [v14 iFunScores];
              v18 = [v33 localScore];

              goto LABEL_200;
            }

            goto LABEL_198;
          }
        }
      }
    }

    v34 = [v14 iFunScores];

    if (v34)
    {
      if (v20 != 34)
      {
        goto LABEL_198;
      }

      v35 = [v14 iFunScores];
      v36 = [v35 domainScores];
      v18 = [v36 objectForKey:&unk_1F55B3A08];

      if (!v18)
      {
LABEL_198:
        v18 = &unk_1F55B6F48;
      }
    }

    else
    {
      v18 = 0;
    }
  }

LABEL_200:

  return v18;
}

+ (void)getComparableL3Score:(id)a3 sectionMapping:(id)a4 bundleId1:(id)a5 bundleId2:(id)a6 score1:(float *)a7 score2:(float *)a8 usePommesScore:(BOOL)a9 useLegacyScore:(BOOL)a10
{
  v36 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (SSEnableSpotlightFullPageRanking())
  {
    v18 = [v36 objectForKey:v16];
    v19 = [v36 objectForKey:v17];
    v20 = v19;
    if (!v18 || !v19)
    {
      goto LABEL_21;
    }

    v34 = a8;
    v21 = [v15 objectForKey:v16];
    v22 = [v15 objectForKey:v17];
    v35 = v22;
    if ([v21 resultsCount] && objc_msgSend(v22, "resultsCount"))
    {
      v23 = [v21 resultsCount];
      v33 = v21;
      v24 = a7;
      v25 = v23;
      v26 = [v22 resultsCount];
      if (v25 >= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v25;
      }

      a7 = v24;
      v21 = v33;
      if (v27 >= 3)
      {
        LODWORD(v27) = 3;
      }

      v28 = (v27 - 1);
      if (!a9)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v28 = 0;
      if (!a9)
      {
        goto LABEL_16;
      }
    }

    [v18 getL3Score:v28 isLegacy:0];
    v30 = v29;
    [v20 getL3Score:v28 isLegacy:0];
    if (v30 >= 0.0 && v31 >= 0.0)
    {
LABEL_19:
      *a7 = v30;
      *v34 = v31;
LABEL_20:

LABEL_21:
      goto LABEL_22;
    }

LABEL_16:
    if (!a10)
    {
      goto LABEL_20;
    }

    [v18 getL3Score:v28 isLegacy:1];
    v30 = v32;
    [v20 getL3Score:v28 isLegacy:1];
    if (v30 < 0.0 || v31 < 0.0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_22:
}

+ (void)getComparableModelL3Score:(id)a3 bundleId1:(id)a4 bundleId2:(id)a5 score1:(float *)a6 score2:(float *)a7
{
  v20 = a3;
  v11 = a4;
  v12 = a5;
  if (SSEnableSpotlightFullPageRanking())
  {
    v13 = [v20 objectForKey:v11];
    v14 = [v20 objectForKey:v12];
    v15 = v14;
    if (v13)
    {
      if (v14)
      {
        [v13 modelScore];
        if (v16 >= 0.0)
        {
          [v15 modelScore];
          if (v17 >= 0.0)
          {
            [v13 modelScore];
            *a6 = v18;
            [v15 modelScore];
            *a7 = v19;
          }
        }
      }
    }
  }
}

@end