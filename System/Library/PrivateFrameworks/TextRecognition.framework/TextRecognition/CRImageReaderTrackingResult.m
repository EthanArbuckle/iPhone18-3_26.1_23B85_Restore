@interface CRImageReaderTrackingResult
- (CRImageReaderTrackingResult)initWithTrackingLevel:(unint64_t)a3;
- (CRImageReaderTrackingResult)resultByUpdatingWithDocument:(__n128)a3 sceneHomography:(__n128)a4 usesGroupedRegions:(uint64_t)a5;
- (void)markTracksNotConformingSameHomographyUsingGroupsAtOCRDispatch:(BOOL)a3 ransacReprojError:(float)a4 markedQuadArea:(double)a5;
@end

@implementation CRImageReaderTrackingResult

- (CRImageReaderTrackingResult)initWithTrackingLevel:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = CRImageReaderTrackingResult;
  v4 = [(CRImageReaderTrackingResult *)&v12 init];
  v5 = v4;
  if (v4)
  {
    trackedRegions = v4->_trackedRegions;
    v7 = MEMORY[0x1E695E0F0];
    v4->_trackedRegions = MEMORY[0x1E695E0F0];

    addedRegionIDs = v5->_addedRegionIDs;
    v5->_addedRegionIDs = v7;

    removedRegionIDs = v5->_removedRegionIDs;
    v5->_removedRegionIDs = v7;

    updatedRegionIDs = v5->_updatedRegionIDs;
    v5->_updatedRegionIDs = v7;

    v5->_trackedRegionType = [CRImageReaderTrackingSession regionTypeForTrackingLevel:a3];
  }

  return v5;
}

- (CRImageReaderTrackingResult)resultByUpdatingWithDocument:(__n128)a3 sceneHomography:(__n128)a4 usesGroupedRegions:(uint64_t)a5
{
  v299 = *MEMORY[0x1E69E9840];
  v203 = a6;
  v8 = objc_alloc_init(CRImageReaderTrackingResult);
  if (a1)
  {
    v9 = a1[6];
  }

  else
  {
    v9 = 0;
  }

  v208 = v8;
  v197 = a1;
  if (!v8)
  {
    v193 = a1;
    v194 = v203;
    goto LABEL_149;
  }

  v8->_trackedRegionType = v9;
  v10 = a1;
  v11 = v203;
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v12 = CRSignpostLog_signPostOSLog;
  spid = os_signpost_id_generate(v12);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v13 = CRSignpostLog_signPostOSLog;
  v14 = v13;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, spid, "OCRTrackingPerformAssociationTime", "", buf, 2u);
  }

  v204 = [v10 trackedRegions];
  v15 = [v10 regionTrackingGroups];
  LODWORD(v16) = 0.75;
  [v10 markTracksNotConformingSameHomographyUsingGroupsAtOCRDispatch:1 ransacReprojError:v16 markedQuadArea:0.0];
  if (v208->_trackedRegionType == 4)
  {
    v17 = [v11 contentsWithTypes:2];
    v18 = objc_opt_new();
    v275 = 0u;
    v276 = 0u;
    v277 = 0u;
    v278 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v275 objects:v298 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v276;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v276 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v275 + 1) + 8 * i) contentsWithTypes:4];
          [v18 addObjectsFromArray:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v275 objects:v298 count:16];
      }

      while (v21);
    }

    v25 = v18;
  }

  else
  {
    v25 = [v11 contentsWithTypes:?];
  }

  v200 = v25;
  v26 = [v25 mutableCopy];
  [CRTrackingFilter filterLowQualityTranscriptRegions:v26];
  v27 = CROSLogForCategory(1);
  v213 = v26;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v204 count];
    v29 = [v200 count];
    v30 = [v213 count];
    v31 = [v15 count];
    *buf = 134218752;
    v289 = v28;
    v290 = 2048;
    v291 = *&v29;
    v26 = v213;
    v292 = 2048;
    v293 = v30;
    v294 = 2048;
    v295 = v31;
    _os_log_impl(&dword_1B40D2000, v27, OS_LOG_TYPE_DEFAULT, "Association: START existingR=%ld candidatesR=%ld,%ld existingG=%ld", buf, 0x2Au);
  }

  v269[0] = MEMORY[0x1E69E9820];
  v269[1] = 3221225472;
  v269[2] = __130__CRImageReaderTrackingResult_performHungarianAssociationWithPreviousResult_candidateDocument_sceneHomography_usesGroupedRegions___block_invoke;
  v269[3] = &unk_1E7BC3248;
  v32 = v15;
  v273 = v32;
  v206 = v10;
  v274 = v206;
  v270 = a2;
  v271 = a3;
  v272 = a4;
  v267[0] = MEMORY[0x1E69E9820];
  v267[1] = 3221225472;
  v267[2] = __130__CRImageReaderTrackingResult_performHungarianAssociationWithPreviousResult_candidateDocument_sceneHomography_usesGroupedRegions___block_invoke_20;
  v267[3] = &unk_1E7BC3270;
  v267[4] = v208;
  v268 = a7;
  v33 = [(CRTrackingAssociator *)CRHungarianTrackingAssociator performAssociationOnCandidates:v26 useRegionsAtOCRDispatchTime:1 existingRegions:v204 newRegionHandler:v269 matchedRegionHandler:v267];
  v34 = CROSLogForCategory(1);
  v207 = v33;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v33 tracked];
    v36 = [v35 count];
    v37 = [v33 updatedRegionIDs];
    v38 = [v37 count];
    v39 = [v33 removedRegionIDs];
    v40 = [v39 count];
    v41 = [v33 addedRegionIDs];
    v42 = [v41 count];
    [v207 totalError];
    *buf = 134219008;
    v289 = v36;
    v290 = 2048;
    v291 = *&v38;
    v292 = 2048;
    v293 = v40;
    v294 = 2048;
    v295 = v42;
    v296 = 2048;
    v297 = v43;
    _os_log_impl(&dword_1B40D2000, v34, OS_LOG_TYPE_DEFAULT, "Association: - REGION tracked=%ld updated=%ld removed=%ld added=%ld error=%f", buf, 0x34u);

    v33 = v207;
  }

  v44 = [v33 tracked];
  v45 = [v44 count];

  if (v45)
  {
    v46 = [v33 tracked];
    v47 = [CRTrackedRegionGroup groupsFromOutputRegions:v46];
  }

  else
  {
    v47 = MEMORY[0x1E695E0F0];
  }

  v48 = CROSLogForCategory(1);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = [v47 count];
    *buf = 134217984;
    v289 = v49;
    _os_log_impl(&dword_1B40D2000, v48, OS_LOG_TYPE_DEFAULT, "Association: - candidateG=%ld", buf, 0xCu);
  }

  v50 = [MEMORY[0x1E695DFA8] set];
  v51 = [MEMORY[0x1E695DF90] dictionary];
  v264[0] = MEMORY[0x1E69E9820];
  v264[1] = 3221225472;
  v264[2] = __130__CRImageReaderTrackingResult_performHungarianAssociationWithPreviousResult_candidateDocument_sceneHomography_usesGroupedRegions___block_invoke_29;
  v264[3] = &unk_1E7BC3298;
  v52 = v50;
  v265 = v52;
  v218 = v51;
  v266 = v218;
  v196 = v32;
  v53 = [CRHungarianTrackingAssociator performAssociationOnCandidates:v47 useRegionsAtOCRDispatchTime:0 existingRegions:v32 fineGrainedResults:v33 newRegionHandler:&__block_literal_global_28_0 matchedRegionHandler:v264];
  v54 = CROSLogForCategory(1);
  v195 = v47;
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v226 = [v53 tracked];
    v55 = v52;
    v56 = [v226 count];
    v57 = [v53 updatedRegionIDs];
    v58 = [v57 count];
    v59 = [v53 removedRegionIDs];
    v60 = [v59 count];
    v61 = [v53 addedRegionIDs];
    v62 = [v61 count];
    [v53 totalError];
    *buf = 134219008;
    v289 = v56;
    v52 = v55;
    v290 = 2048;
    v291 = *&v58;
    v33 = v207;
    v292 = 2048;
    v293 = v60;
    v294 = 2048;
    v295 = v62;
    v296 = 2048;
    v297 = v63;
    _os_log_impl(&dword_1B40D2000, v54, OS_LOG_TYPE_DEFAULT, "Association: - GROUP tracked=%ld updated=%ld removed=%ld added=%ld error=%f", buf, 0x34u);
  }

  if (a7)
  {
    v64 = v53;
  }

  else
  {
    v64 = v33;
  }

  v199 = [v64 updatedRegionIDs];

  v198 = [v64 removedRegionIDs];

  v202 = [v64 addedRegionIDs];

  [v64 totalError];
  v66 = v65;
  v260 = 0u;
  v261 = 0u;
  v262 = 0u;
  v263 = 0u;
  v67 = [v64 tracked];

  v68 = [v67 countByEnumeratingWithState:&v260 objects:v287 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v261;
    v71 = 0.0;
    do
    {
      for (j = 0; j != v69; ++j)
      {
        if (*v261 != v70)
        {
          objc_enumerationMutation(v67);
        }

        v73 = [*(*(&v260 + 1) + 8 * j) boundingQuad];
        v74 = [v73 denormalizedQuad];
        [v74 area];
        v71 = v71 + v75;
      }

      v69 = [v67 countByEnumeratingWithState:&v260 objects:v287 count:16];
    }

    while (v69);
  }

  else
  {
    v71 = 0.0;
  }

  v212 = v53;

  v76 = v66 / v71;
  v77 = CROSLogForCategory(1);
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
  {
    v78 = &stru_1F2BB4348;
    if (v71 == 0.0)
    {
      v78 = @"FIRST_RUN";
    }

    *buf = 138412546;
    v289 = v78;
    v290 = 2048;
    v291 = v76;
    _os_log_impl(&dword_1B40D2000, v77, OS_LOG_TYPE_DEFAULT, "Association: END %@ normalizedTotalError=%f", buf, 0x16u);
  }

  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  obj = v52;
  v79 = v213;
  v214 = [obj countByEnumeratingWithState:&v256 objects:v286 count:16];
  if (v214)
  {
    v210 = *v257;
    do
    {
      v80 = 0;
      do
      {
        if (*v257 != v210)
        {
          objc_enumerationMutation(obj);
        }

        v81 = *(*(&v256 + 1) + 8 * v80);
        v82 = CROSLogForCategory(1);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v289 = v81;
          _os_log_impl(&dword_1B40D2000, v82, OS_LOG_TYPE_DEFAULT, "Association: - replace homography group %@", buf, 0xCu);
        }

        v216 = v80;
        if (v76 < 0.300000012)
        {
          v83 = v208->_regionTrackingGroups;
        }

        else
        {
          v83 = [v212 tracked];
        }

        v254 = 0u;
        v255 = 0u;
        v252 = 0u;
        v253 = 0u;
        v84 = v83;
        v85 = [(NSArray *)v84 countByEnumeratingWithState:&v252 objects:v285 count:16];
        if (v85)
        {
          v86 = v85;
          v87 = *v253;
          do
          {
            for (k = 0; k != v86; ++k)
            {
              if (*v253 != v87)
              {
                objc_enumerationMutation(v84);
              }

              if (v81)
              {
                v89 = *(*(&v252 + 1) + 8 * k);
                v90 = [v89 homographyGroupID];
                if (v90)
                {
                  v91 = v90;
                  v92 = [v89 homographyGroupID];
                  v93 = [v92 integerValue];
                  v94 = [v81 integerValue];

                  if (v93 == v94)
                  {
                    v95 = [v89 trackingID];
                    v96 = [v218 objectForKeyedSubscript:v95];

                    if (v96)
                    {
                      v97 = [v96 originalBoundingQuad];
                      [v89 setOriginalBoundingQuad:v97];

                      v98 = [v96 boundingQuad];
                      [v89 setBoundingQuad:v98];

                      [v96 boundingQuadHomography];
                      [v89 setBoundingQuadHomography:v99];
                    }
                  }
                }
              }
            }

            v86 = [(NSArray *)v84 countByEnumeratingWithState:&v252 objects:v285 count:16];
          }

          while (v86);
        }

        v80 = v216 + 1;
        v79 = v213;
      }

      while (v216 + 1 != v214);
      v214 = [obj countByEnumeratingWithState:&v256 objects:v286 count:16];
    }

    while (v214);
  }

  if (v76 >= 0.300000012)
  {
    v100 = v207;
    v101 = [v207 tracked];
    v102 = [v101 copy];
    trackedRegions = v208->_trackedRegions;
    v208->_trackedRegions = v102;

    v104 = [v212 tracked];
    v105 = [v104 copy];
    regionTrackingGroups = v208->_regionTrackingGroups;
    v208->_regionTrackingGroups = v105;

    v107 = [v202 copy];
    addedRegionIDs = v208->_addedRegionIDs;
    v208->_addedRegionIDs = v107;

    v109 = [v198 copy];
    removedRegionIDs = v208->_removedRegionIDs;
    v208->_removedRegionIDs = v109;

    v111 = [v199 copy];
    updatedRegionIDs = v208->_updatedRegionIDs;
    v208->_updatedRegionIDs = v111;
    v113 = v196;
    goto LABEL_143;
  }

  v227 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v202, "count")}];
  v217 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v202, "count")}];
  v114 = objc_alloc(MEMORY[0x1E695DF70]);
  v115 = [v212 addedRegionIDs];
  v215 = [v114 initWithCapacity:{objc_msgSend(v115, "count")}];

  v116 = objc_alloc(MEMORY[0x1E695DF70]);
  v100 = v207;
  v117 = [v207 addedRegionIDs];
  v211 = [v116 initWithCapacity:{objc_msgSend(v117, "count")}];

  v250 = 0u;
  v251 = 0u;
  v248 = 0u;
  v249 = 0u;
  v118 = [v212 tracked];
  v119 = [v118 countByEnumeratingWithState:&v248 objects:v284 count:16];
  if (v119)
  {
    v120 = v119;
    v121 = *v249;
    v223 = v118;
    v220 = *v249;
    do
    {
      for (m = 0; m != v120; ++m)
      {
        if (*v249 != v121)
        {
          objc_enumerationMutation(v118);
        }

        v123 = *(*(&v248 + 1) + 8 * m);
        v124 = [v212 addedRegionIDs];
        v125 = [v123 trackingID];
        if ([v124 containsObject:v125])
        {
          v126 = [v123 boundingQuad];
          v127 = [v126 denormalizedQuad];
          [v127 area];
          v129 = v128;

          if (v129 <= 900.0)
          {
            continue;
          }

          v246 = 0u;
          v247 = 0u;
          v244 = 0u;
          v245 = 0u;
          v124 = [v206 regionTrackingGroups];
          v130 = [v124 countByEnumeratingWithState:&v244 objects:v283 count:16];
          if (v130)
          {
            v131 = v130;
            v132 = *v245;
LABEL_84:
            v133 = 0;
            while (1)
            {
              if (*v245 != v132)
              {
                objc_enumerationMutation(v124);
              }

              v134 = *(*(&v244 + 1) + 8 * v133);
              v135 = [v123 boundingQuad];
              v136 = [v134 boundingQuad];
              v137 = [v135 overlapsNormalizedQuad:v136];

              if (v137)
              {
                break;
              }

              if (v131 == ++v133)
              {
                v131 = [v124 countByEnumeratingWithState:&v244 objects:v283 count:16];
                if (v131)
                {
                  goto LABEL_84;
                }

                goto LABEL_90;
              }
            }
          }

          else
          {
LABEL_90:

            v138 = [v123 trackingID];

            if (!v138)
            {
              v139 = [MEMORY[0x1E696AFB0] UUID];
              [v123 setTrackingID:v139];
            }

            [(NSArray *)v227 addObject:v123];
            v124 = [v123 trackingID];
            [v215 addObject:v124];
          }

          v100 = v207;
          v118 = v223;
          v121 = v220;
        }

        else
        {
        }
      }

      v120 = [v118 countByEnumeratingWithState:&v248 objects:v284 count:16];
    }

    while (v120);
  }

  v242 = 0u;
  v243 = 0u;
  v240 = 0u;
  v241 = 0u;
  v140 = [v100 tracked];
  v141 = [v140 countByEnumeratingWithState:&v240 objects:v282 count:16];
  if (!v141)
  {
    goto LABEL_121;
  }

  v142 = v141;
  v143 = *v241;
  v224 = v140;
  v221 = *v241;
  do
  {
    for (n = 0; n != v142; ++n)
    {
      if (*v241 != v143)
      {
        objc_enumerationMutation(v140);
      }

      v145 = *(*(&v240 + 1) + 8 * n);
      v146 = [v100 addedRegionIDs];
      v147 = [v145 trackingID];
      if ([v146 containsObject:v147])
      {
        v148 = [v145 boundingQuad];
        v149 = [v148 denormalizedQuad];
        [v149 area];
        v151 = v150;

        v100 = v207;
        if (v151 <= 900.0)
        {
          continue;
        }

        v238 = 0u;
        v239 = 0u;
        v236 = 0u;
        v237 = 0u;
        v146 = [v206 trackedRegions];
        v152 = [v146 countByEnumeratingWithState:&v236 objects:v281 count:16];
        if (v152)
        {
          v153 = v152;
          v154 = *v237;
LABEL_107:
          v155 = 0;
          while (1)
          {
            if (*v237 != v154)
            {
              objc_enumerationMutation(v146);
            }

            v156 = *(*(&v236 + 1) + 8 * v155);
            v157 = [v145 boundingQuad];
            v158 = [v156 boundingQuad];
            v159 = [v157 overlapsNormalizedQuad:v158];

            if (v159)
            {
              break;
            }

            if (v153 == ++v155)
            {
              v153 = [v146 countByEnumeratingWithState:&v236 objects:v281 count:16];
              if (v153)
              {
                goto LABEL_107;
              }

              goto LABEL_113;
            }
          }
        }

        else
        {
LABEL_113:

          v160 = [v145 trackingID];

          if (!v160)
          {
            v161 = [MEMORY[0x1E696AFB0] UUID];
            [v145 setTrackingID:v161];
          }

          [v217 addObject:v145];
          v146 = [v145 trackingID];
          [v211 addObject:v146];
        }

        v100 = v207;
        v140 = v224;
        v143 = v221;
      }

      else
      {
      }
    }

    v142 = [v140 countByEnumeratingWithState:&v240 objects:v282 count:16];
  }

  while (v142);
LABEL_121:

  v162 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](v208->_trackedRegions, "count")}];
  v163 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](v208->_regionTrackingGroups, "count")}];
  if (a7)
  {
    v234 = 0u;
    v235 = 0u;
    v232 = 0u;
    v233 = 0u;
    v164 = v208->_regionTrackingGroups;
    v165 = [(NSArray *)v164 countByEnumeratingWithState:&v232 objects:v280 count:16];
    if (v165)
    {
      v166 = v165;
      v167 = *v233;
      do
      {
        for (ii = 0; ii != v166; ++ii)
        {
          if (*v233 != v167)
          {
            objc_enumerationMutation(v164);
          }

          v169 = *(*(&v232 + 1) + 8 * ii);
          v170 = v163;
          if (([v169 trackNeedsReplacement] & 1) == 0)
          {
            [(NSArray *)v227 addObject:v169];
            v170 = v162;
          }

          v171 = [v169 trackingID];
          [v170 addObject:v171];
        }

        v166 = [(NSArray *)v164 countByEnumeratingWithState:&v232 objects:v280 count:16];
      }

      while (v166);
    }

    v172 = v215;
  }

  else
  {
    v230 = 0u;
    v231 = 0u;
    v228 = 0u;
    v229 = 0u;
    v164 = [v206 trackedRegions];
    v173 = [(NSArray *)v164 countByEnumeratingWithState:&v228 objects:v279 count:16];
    if (v173)
    {
      v174 = v173;
      v175 = *v229;
      do
      {
        for (jj = 0; jj != v174; ++jj)
        {
          if (*v229 != v175)
          {
            objc_enumerationMutation(v164);
          }

          v177 = [*(*(&v228 + 1) + 8 * jj) trackingID];
          [v162 addObject:v177];
        }

        v174 = [(NSArray *)v164 countByEnumeratingWithState:&v228 objects:v279 count:16];
      }

      while (v174);
    }

    v172 = v211;
  }

  objc_storeStrong(&v208->_updatedRegionIDs, v162);
  v178 = [v172 copy];
  objc_storeStrong(&v208->_addedRegionIDs, v178);

  v179 = [v163 copy];
  v180 = v208->_removedRegionIDs;
  v208->_removedRegionIDs = v179;

  v181 = [v206 trackedRegions];
  v182 = [v217 arrayByAddingObjectsFromArray:v181];
  v183 = v208->_trackedRegions;
  v208->_trackedRegions = v182;

  v184 = [v206 regionTrackingGroups];
  v185 = [(NSArray *)v227 arrayByAddingObjectsFromArray:v184];
  v186 = v208->_regionTrackingGroups;
  v208->_regionTrackingGroups = v185;

  v187 = CROSLogForCategory(1);
  v79 = v213;
  if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
  {
    v188 = [(NSArray *)v208->_removedRegionIDs count];
    v189 = [(NSArray *)v208->_addedRegionIDs count];
    *buf = 134218240;
    v289 = v188;
    v290 = 2048;
    v291 = *&v189;
    _os_log_impl(&dword_1B40D2000, v187, OS_LOG_TYPE_DEFAULT, "Association: Removed %lu regions that were marked for replacement and added %lu new regions despite being below the error threshold", buf, 0x16u);
  }

  v113 = v196;
  updatedRegionIDs = v227;
LABEL_143:

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v190 = CRSignpostLog_signPostOSLog;
  v191 = v190;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v190))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v191, OS_SIGNPOST_INTERVAL_END, spid, "OCRTrackingPerformAssociationTime", "", buf, 2u);
  }

LABEL_149:

  return v208;
}

- (void)markTracksNotConformingSameHomographyUsingGroupsAtOCRDispatch:(BOOL)a3 ransacReprojError:(float)a4 markedQuadArea:(double)a5
{
  v38 = a3;
  v46 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_regionTrackingGroups, "count")}];
    v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_regionTrackingGroups, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = self->_regionTrackingGroups;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v42;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v42 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v41 + 1) + 8 * i);
          if (v38)
          {
            v12 = [*(*(&v41 + 1) + 8 * i) boundingQuadAtOCRDispatch];
            v13 = [v12 denormalizedQuad];
          }

          else
          {
            v13 = [v11 boundingQuadAfterOCR];
          }

          v14 = [CRVCQuad alloc];
          v15 = [MEMORY[0x1E696AFB0] UUID];
          v16 = [(CRVCQuad *)v14 initWithImageSpaceQuad:v13 uuid:v15];

          [v40 addObject:v16];
          v17 = [v11 boundingQuad];
          v18 = [v17 denormalizedQuad];

          v19 = [CRVCQuad alloc];
          v20 = [MEMORY[0x1E696AFB0] UUID];
          v21 = [(CRVCQuad *)v19 initWithImageSpaceQuad:v18 uuid:v20];

          [v39 addObject:v21];
        }

        v8 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v8);
    }

    *&v22 = a4;
    v23 = [MEMORY[0x1E69DF9A0] quadsConformHomographySrcQuads:v40 destQuads:v39 reprojError:v22];
    if ([(NSArray *)self->_regionTrackingGroups count])
    {
      v24 = 0;
      while (1)
      {
        v25 = [v23 objectAtIndexedSubscript:v24];
        if ([v25 isEqual:&unk_1F2BF8638])
        {
          break;
        }

        v26 = [v23 objectAtIndexedSubscript:v24];
        v27 = [v26 isEqual:&unk_1F2BF8650];

        if (v27)
        {
          goto LABEL_17;
        }

        v34 = [(NSArray *)self->_regionTrackingGroups objectAtIndexedSubscript:v24];
        [v34 setTrackNeedsReplacement:1];

        v33 = [(NSArray *)self->_regionTrackingGroups objectAtIndexedSubscript:v24];
        v35 = [v33 boundingQuad];
        v36 = [v35 denormalizedQuad];
        [v36 area];

LABEL_21:
        if ([(NSArray *)self->_regionTrackingGroups count]<= ++v24)
        {
          goto LABEL_22;
        }
      }

LABEL_17:
      v28 = [(NSArray *)self->_regionTrackingGroups objectAtIndexedSubscript:v24];
      v29 = [v28 trackNeedsReplacement];

      if (v29)
      {
        v30 = [(NSArray *)self->_regionTrackingGroups objectAtIndexedSubscript:v24];
        v31 = [v30 boundingQuad];
        v32 = [v31 denormalizedQuad];
        [v32 area];
      }

      v33 = [(NSArray *)self->_regionTrackingGroups objectAtIndexedSubscript:v24];
      [v33 setTrackNeedsReplacement:0];
      goto LABEL_21;
    }

LABEL_22:
  }
}

void __130__CRImageReaderTrackingResult_performHungarianAssociationWithPreviousResult_candidateDocument_sceneHomography_usesGroupedRegions___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  [v5 setSignificantTranscriptChange:1];
  if ([CRTrackingFilter shouldStartTrackingRegion:v5])
  {
    if (![*(a1 + 80) count])
    {
      goto LABEL_8;
    }

    v6 = 0;
    v30 = *(MEMORY[0x1E69E9B10] + 16);
    v32 = *MEMORY[0x1E69E9B10];
    v28 = *(MEMORY[0x1E69E9B10] + 32);
    v7 = 3.4028e38;
    do
    {
      v8 = [v5 boundingQuad];
      v9 = [v8 denormalizedQuad];
      v10 = [*(a1 + 88) regionTrackingGroups];
      v11 = [v10 objectAtIndexedSubscript:v6];
      v12 = [v11 boundingQuadAtOCRDispatch];
      v13 = [v12 denormalizedQuad];
      [v9 shortestDistanceFromCornersOfQuad:v13];
      v15 = v14;

      if (v7 > v15)
      {
        v16 = [*(a1 + 88) regionTrackingGroups];
        v17 = [v16 objectAtIndexedSubscript:v6];
        [v17 boundingQuadHomographySinceOCRDispatch];
        v30 = v19;
        v32 = v18;
        v28 = v20;

        v7 = v15;
        if (v15 == 0.0)
        {
          break;
        }
      }

      ++v6;
      v15 = v7;
    }

    while ([*(a1 + 80) count] > v6);
    if (v15 == 3.4028e38)
    {
LABEL_8:
      v30 = *(a1 + 48);
      v32 = *(a1 + 32);
      v28 = *(a1 + 64);
    }

    *&v38 = 0;
    *(&v38 + 1) = &v38;
    v39 = 0x2020000000;
    v40 = 0;
    v21 = [v5 boundingQuad];
    v22 = [v21 denormalizedQuad];

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __130__CRImageReaderTrackingResult_performHungarianAssociationWithPreviousResult_candidateDocument_sceneHomography_usesGroupedRegions___block_invoke_19;
    v35[3] = &unk_1E7BC3200;
    v37 = &v38;
    v23 = v22;
    v36 = v23;
    LODWORD(v24) = 4.0;
    [v5 applyHomographyTransform:v35 downscaleRate:v33 shouldApply:{v31, v29, v24}];
    if (*(*(&v38 + 1) + 24) == 1)
    {
      v25 = CROSLogForCategory(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B40D2000, v25, OS_LOG_TYPE_DEFAULT, "Association: - filterNewR HG", buf, 2u);
      }

      *a3 = 0;
    }

    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v26 = CROSLogForCategory(1);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      [v5 activationProbability];
      LODWORD(v38) = 134217984;
      *(&v38 + 4) = v27;
      _os_log_impl(&dword_1B40D2000, v26, OS_LOG_TYPE_DEFAULT, "Association: - filterNewR activationProb=%f", &v38, 0xCu);
    }

    *a3 = 0;
  }
}

void __130__CRImageReaderTrackingResult_performHungarianAssociationWithPreviousResult_candidateDocument_sceneHomography_usesGroupedRegions___block_invoke_20(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v10 = v8;
  if (v7)
  {
    if (qword_1ED960240 != -1)
    {
      dispatch_once(&qword_1ED960240, &__block_literal_global_37);
    }

    v11 = [v9 text];
    v12 = [v11 lowercaseString];
    v13 = [v12 _crStringByReplacingCharactersInSet:_MergedGlobals_33 withString:&stru_1F2BB4348];

    v14 = [v10 text];
    v15 = [v14 lowercaseString];
    v16 = [v15 _crStringByReplacingCharactersInSet:_MergedGlobals_33 withString:&stru_1F2BB4348];

    v17 = [v13 isEqualToString:v16] ^ 1;
  }

  else
  {
    v17 = 0;
  }

  [v10 setSignificantTranscriptChange:v17];
  [v9 boundingQuadHomographySinceOCRDispatch];
  v23 = v19;
  v24 = v18;
  v22 = v20;

  LODWORD(v21) = 4.0;
  [v10 applyHomographyTransform:&__block_literal_global_22_0 downscaleRate:v24 shouldApply:{v23, v22, v21}];

  *a4 = *(a1 + 40) ^ 1;
}

void __130__CRImageReaderTrackingResult_performHungarianAssociationWithPreviousResult_candidateDocument_sceneHomography_usesGroupedRegions___block_invoke_26(uint64_t a1, void *a2, _BYTE *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if ([CRTrackingFilter shouldStartTrackingGroup:v4])
  {
    v5 = [v4 boundingQuad];
    [v5 normalizationSize];
    v7 = v6;
    v9 = v8;

    v10 = [v4 boundingQuad];
    v11 = [v10 denormalizedQuad];
    v12 = [v11 intersectsImageMargin:fmin(v7 imageSize:{v9) * 0.0399999991, v7, v9}];

    if ((v12 & 1) == 0)
    {
      v13 = [v4 estimatedPerspectiveQuad];
      if (v13)
      {
        v14 = [v4 boundingQuad];
        v15 = [v13 isEqual:v14];

        if ((v15 & 1) == 0)
        {
          v16 = [v13 denormalizedQuad];
          [v16 orthogonalityScore];
          [v4 setInitialOrthogonalityScore:?];

          [v4 initialOrthogonalityScore];
          if (v17 < 0.300000012)
          {
            v18 = CROSLogForCategory(1);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              [v4 initialOrthogonalityScore];
              v21 = 134217984;
              v22 = v19;
              _os_log_impl(&dword_1B40D2000, v18, OS_LOG_TYPE_DEFAULT, "Association: - filterNewG orthogonalityScore=%f", &v21, 0xCu);
            }

            *a3 = 0;
          }
        }
      }
    }
  }

  else
  {
    v20 = CROSLogForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1B40D2000, v20, OS_LOG_TYPE_DEFAULT, "Association: - filterNewG", &v21, 2u);
    }

    *a3 = 0;
  }
}

void __130__CRImageReaderTrackingResult_performHungarianAssociationWithPreviousResult_candidateDocument_sceneHomography_usesGroupedRegions___block_invoke_29(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v71 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  [v7 lastOriginalBoundingQuadUpdateTime];
  if (Current - v10 > 120.0)
  {
    v11 = CROSLogForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B40D2000, v11, OS_LOG_TYPE_DEFAULT, "Association: - replaceG timeout", buf, 2u);
    }

    *a4 = 0;
  }

  v12 = [v8 boundingQuad];
  [v12 normalizationSize];
  v14 = v13;
  v16 = v15;

  v17 = [v8 boundingQuad];
  v18 = [v17 denormalizedQuad];
  v19 = [v18 intersectsImageMargin:fmin(v14 imageSize:{v16) * 0.0399999991, v14, v16}];

  v20 = [v7 boundingQuadAtOCRDispatch];
  v21 = [v20 denormalizedQuad];
  [v21 area];
  v23 = v22 * 0.930000007;
  v24 = [v7 boundingQuad];
  v25 = [v24 denormalizedQuad];
  [v25 area];
  v27 = v23 > v26;
  if (v23 <= v26)
  {

    v32 = 0;
  }

  else
  {
    v28 = a4;
    v29 = a1;
    v66 = v28;
    v30 = *v28;

    v31 = v19;
    if (v19 & 1 | ((v30 & 1) == 0))
    {
      v32 = 0;
      v27 = 0;
LABEL_13:
      a1 = v29;
      a4 = v66;
      goto LABEL_14;
    }

    v32 = [v7 estimatedPerspectiveQuad];
    v33 = [v32 denormalizedQuad];
    [v33 orthogonalityScore];
    v35 = v34;

    if (v32 && v35 <= 0.899999976)
    {
      v27 = 1;
      goto LABEL_13;
    }

    v56 = CROSLogForCategory(1);
    a1 = v29;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [v7 boundingQuad];
      v65 = [v57 denormalizedQuad];
      [v65 area];
      v59 = v58;
      v60 = [v7 boundingQuadAtOCRDispatch];
      v61 = [v60 denormalizedQuad];
      [v61 area];
      *buf = 134218240;
      v68 = v35;
      v69 = 2048;
      v70 = v59 / v62;
      _os_log_impl(&dword_1B40D2000, v56, OS_LOG_TYPE_DEFAULT, "Association: - replaceG orthogonalityScore=%f areaRatio=%f", buf, 0x16u);
    }

    a4 = v66;
    *v66 = 0;
    v63 = [v7 homographyGroupID];

    v19 = v31;
    if (!v63)
    {
      v27 = 1;
      goto LABEL_14;
    }

    v64 = *(a1 + 32);
    v20 = [v7 homographyGroupID];
    [v64 addObject:v20];
  }

LABEL_14:
  [v7 initialOrthogonalityScore];
  if (v36 < 0.800000012 && !(v19 & 1 | ((*a4 & 1) == 0)))
  {
    if (!v27)
    {
      v37 = [v8 estimatedPerspectiveQuad];

      v32 = v37;
    }

    if (v32)
    {
      v38 = [v8 boundingQuad];
      v39 = [v32 isEqual:v38];

      if ((v39 & 1) == 0)
      {
        v40 = [v32 denormalizedQuad];
        [v40 orthogonalityScore];
        v42 = v41;

        if (v42 > 0.800000012)
        {
          v43 = CROSLogForCategory(1);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            [v7 initialOrthogonalityScore];
            *buf = 134218240;
            v68 = v44;
            v69 = 2048;
            v70 = v42;
            _os_log_impl(&dword_1B40D2000, v43, OS_LOG_TYPE_DEFAULT, "Association: - replaceG initialOrthogonalityScore=%f orthogonalityScore=%f", buf, 0x16u);
          }

          [v7 setInitialOrthogonalityScore:v42];
          *a4 = 0;
          v45 = [v7 homographyGroupID];

          if (v45)
          {
            v46 = *(a1 + 32);
            v47 = [v7 homographyGroupID];
            [v46 addObject:v47];
          }
        }
      }
    }
  }

  if ([v7 trackNeedsReplacement])
  {
    *a4 = 0;
    [v7 setTrackNeedsReplacement:0];
  }

  if (*a4 == 1)
  {
    [v7 initialOrthogonalityScore];
    [v8 setInitialOrthogonalityScore:?];
  }

  [v8 setTextAlignment:{objc_msgSend(v7, "textAlignment")}];
  v48 = MEMORY[0x1E696AD98];
  v49 = [v7 vcQuad];
  v50 = [v48 numberWithInt:{objc_msgSend(v49, "homographyGroupID")}];
  [v8 setHomographyGroupID:v50];

  v51 = [v7 vcQuad];
  v52 = [v51 homographyGroupID];
  v53 = [v8 vcQuad];
  [v53 setHomographyGroupID:v52];

  v54 = *(a1 + 40);
  v55 = [v7 trackingID];
  [v54 setObject:v8 forKeyedSubscript:v55];
}

void __82__CRImageReaderTrackingResult__significantTranscriptChangeBetweenRegion1_region2___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] symbolCharacterSet];
  v4 = [v0 mutableCopy];

  v1 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  [v4 formUnionWithCharacterSet:v1];

  v2 = [v4 copy];
  v3 = _MergedGlobals_33;
  _MergedGlobals_33 = v2;
}

@end