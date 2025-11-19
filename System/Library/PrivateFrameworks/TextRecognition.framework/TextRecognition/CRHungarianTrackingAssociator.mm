@interface CRHungarianTrackingAssociator
+ (id)performAssociationOnCandidates:(id)a3 useRegionsAtOCRDispatchTime:(BOOL)a4 existingRegions:(id)a5 fineGrainedResults:(id)a6 newRegionHandler:(id)a7 matchedRegionHandler:(id)a8;
@end

@implementation CRHungarianTrackingAssociator

+ (id)performAssociationOnCandidates:(id)a3 useRegionsAtOCRDispatchTime:(BOOL)a4 existingRegions:(id)a5 fineGrainedResults:(id)a6 newRegionHandler:(id)a7 matchedRegionHandler:(id)a8
{
  v175 = a4;
  v215[16] = *MEMORY[0x1E69E9840];
  v163 = a3;
  v170 = a5;
  v155 = a6;
  v159 = a7;
  v158 = a8;
  v172 = [MEMORY[0x1E695DF70] array];
  v157 = [MEMORY[0x1E695DF70] array];
  v162 = [MEMORY[0x1E695DF70] array];
  v171 = [MEMORY[0x1E695DF70] array];
  v205 = 0;
  v206 = &v205;
  v207 = 0x2050000000;
  v12 = _MergedGlobals_26;
  v208 = _MergedGlobals_26;
  if (!_MergedGlobals_26)
  {
    v204[0] = MEMORY[0x1E69E9820];
    v204[1] = 3221225472;
    v204[2] = __getFTBipartiteMatcherClass_block_invoke;
    v204[3] = &unk_1E7BC2EF0;
    v204[4] = &v205;
    __getFTBipartiteMatcherClass_block_invoke(v204);
    v12 = v206[3];
  }

  v13 = v12;
  _Block_object_dispose(&v205, 8);
  v156 = objc_alloc_init(v12);
  [v170 count];
  v14 = [v163 count];
  v154 = &v154;
  *&v16 = MEMORY[0x1EEE9AC00](v14, v15).n128_u64[0];
  v18 = &v154 - v17;
  if ([v163 count])
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = [v163 objectAtIndexedSubscript:v20];
      if ([v170 count])
      {
        v22 = 0;
        do
        {
          v23 = [v170 objectAtIndexedSubscript:v22];
          v24 = v23;
          if (v175)
          {
            [v23 boundingQuadAtOCRDispatch];
          }

          else
          {
            [v23 boundingQuad];
          }
          v25 = ;
          v26 = [v21 boundingQuad];
          [v25 boundingBoxClippedIOUWithQuad:v26];
          v28 = v27;

          v29 = [v170 count];
          v30 = 1.0 - v28;
          *&v18[4 * v22 + v19 * v29] = v30;

          ++v22;
        }

        while (v22 < [v170 count]);
      }

      ++v20;
      v19 += 4;
    }

    while (v20 < [v163 count]);
  }

  if ([v163 count])
  {
    v31 = [v163 count];
    v32 = [v170 count];
    v164 = [v156 computeMatchingForCostMatrix:v18 withRowCount:v31 columnCount:v32];
  }

  else
  {
    v164 = 0;
  }

  v166 = objc_opt_new();
  v167 = objc_opt_new();
  v33 = 0.0;
  if (v164 && [v164 count])
  {
    v34 = 0;
    v165 = v158 + 16;
    do
    {
      v35 = [v163 objectAtIndexedSubscript:v34];
      v36 = [v164 objectAtIndexedSubscript:v34];
      v37 = [v36 isEqual:&unk_1F2BF85F0];

      if (v37)
      {
        v38 = [MEMORY[0x1E696AFB0] UUID];
        [v35 setTrackingID:v38];

        LOBYTE(v204[0]) = 1;
        v159[2](v159, v35, v204);
        if (LOBYTE(v204[0]) == 1)
        {
          v39 = [v35 trackingID];
          [v171 addObject:v39];

          [v172 addObject:v35];
          [v166 addObject:v35];
          v40 = [v35 boundingQuad];
          v41 = [v40 denormalizedQuad];
          [v41 area];
          v43 = v42;

          v33 = v33 + v43;
        }
      }

      else
      {
        v44 = [v170 count];
        v45 = [v164 objectAtIndexedSubscript:v34];
        v46 = *&v18[4 * v44 * v34 + 4 * [v45 intValue]] < 0.55;

        v47 = [v164 objectAtIndexedSubscript:v34];
        v48 = [v47 intValue];
        v174 = [v170 objectAtIndexedSubscript:v48];

        if (v46)
        {
          v49 = [v174 trackingID];
          [v35 setTrackingID:v49];

          LOBYTE(v204[0]) = 1;
          (*(v158 + 2))(v158, v174, v35, v204);
          if ((v204[0] & 1) == 0)
          {
            v50 = [v35 originalBoundingQuad];
            [v174 setOriginalBoundingQuad:v50];

            v51 = [v35 boundingQuad];
            [v174 setBoundingQuad:v51];

            [v35 boundingQuadHomography];
            v53 = v52;
            HIDWORD(v53) = HIDWORD(v168);
            HIDWORD(v54) = HIDWORD(v169);
            HIDWORD(v55) = HIDWORD(v173);
            v168 = v53;
            v169 = v54;
            v173 = v55;
            [v174 setBoundingQuadHomography:*&v52];
          }

          v56 = [v174 trackingID];
          [v157 addObject:v56];

          [v172 addObject:v174];
          v57 = [v170 count];
          v58 = [v164 objectAtIndexedSubscript:v34];
          v59 = *&v18[4 * v57 * v34 + 4 * [v58 intValue]];
          v60 = [v174 boundingQuad];
          v61 = [v60 denormalizedQuad];
          [v61 area];
          v63 = v62;
          v64 = [v35 boundingQuad];
          v65 = [v64 denormalizedQuad];
          [v65 area];
          v67 = v66;
        }

        else
        {
          v68 = [MEMORY[0x1E696AFB0] UUID];
          [v35 setTrackingID:v68];

          LOBYTE(v204[0]) = 1;
          v159[2](v159, v35, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            [v166 addObject:v35];
            v69 = [v35 trackingID];
            [v171 addObject:v69];

            [v172 addObject:v35];
          }

          [v167 addObject:v174];
          v70 = [v174 trackingID];
          [v162 addObject:v70];

          v71 = [v170 count];
          v72 = [v164 objectAtIndexedSubscript:v34];
          v59 = *&v18[4 * v71 * v34 + 4 * [v72 intValue]];
          v73 = [v174 boundingQuad];
          v74 = [v73 denormalizedQuad];
          [v74 area];
          v63 = v75;
          v76 = [v35 boundingQuad];
          v77 = [v76 denormalizedQuad];
          [v77 area];
          v67 = v78;
        }

        v33 = v33 + (v63 + v67) * v59 * 0.5;
      }

      ++v34;
    }

    while (v34 < [v164 count]);
  }

  if ([v170 count])
  {
    v79 = 0;
    do
    {
      v80 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v79];
      v81 = [v164 containsObject:v80];

      if ((v81 & 1) == 0)
      {
        v82 = [v170 objectAtIndexedSubscript:v79];
        v83 = [v82 trackingID];
        [v162 addObject:v83];

        v84 = [v170 objectAtIndexedSubscript:v79];
        v85 = [v84 boundingQuad];
        v86 = [v85 denormalizedQuad];
        [v86 area];
        v88 = v87;

        v33 = v33 + v88;
      }

      ++v79;
    }

    while (v79 < [v170 count]);
  }

  v161 = objc_opt_new();
  v160 = objc_opt_new();
  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  *&v168 = v167;
  v167 = [v168 countByEnumeratingWithState:&v200 objects:v215 count:16];
  if (v167)
  {
    v165 = *v201;
    do
    {
      *&v169 = 0;
      do
      {
        if (*v201 != v165)
        {
          objc_enumerationMutation(v168);
        }

        v174 = *(*(&v200 + 1) + 8 * v169);
        *&v173 = objc_opt_new();
        v198 = 0u;
        v199 = 0u;
        v196 = 0u;
        v197 = 0u;
        v89 = v166;
        v90 = 0;
        v91 = [v89 countByEnumeratingWithState:&v196 objects:v214 count:16];
        if (v91)
        {
          v92 = *v197;
          do
          {
            for (i = 0; i != v91; ++i)
            {
              if (*v197 != v92)
              {
                objc_enumerationMutation(v89);
              }

              v94 = *(*(&v196 + 1) + 8 * i);
              if (v175)
              {
                [v174 boundingQuadAtOCRDispatch];
              }

              else
              {
                [v174 boundingQuad];
              }
              v95 = ;
              v96 = [v94 boundingQuad];
              v97 = [v95 overlapsNormalizedQuad:v96];

              if (v97)
              {
                [v173 addObject:v94];
                v98 = [v94 boundingQuad];
                v99 = v98;
                if (v90)
                {
                  [v90 baselineAngle];
                  *&v100 = v100;
                  v101 = [v90 unionWithNormalizedQuad:v99 baselineAngle:v100];

                  v90 = v101;
                }

                else
                {
                  v90 = v98;
                }
              }
            }

            v91 = [v89 countByEnumeratingWithState:&v196 objects:v214 count:16];
          }

          while (v91);
        }

        if ([v173 count] >= 2)
        {
          v102 = [v174 boundingQuad];
          [v102 boundingBoxClippedIOUWithQuad:v90];
          v104 = v103;

          if (1.0 - v104 <= 0.550000012)
          {
            v105 = [v174 boundingQuad];
            v106 = [v105 denormalizedQuad];
            [v106 area];
            v108 = v107;

            v194 = 0u;
            v195 = 0u;
            v192 = 0u;
            v193 = 0u;
            v109 = v173;
            v110 = [v109 countByEnumeratingWithState:&v192 objects:v213 count:16];
            v33 = v33 - v108;
            if (v110)
            {
              v111 = *v193;
              do
              {
                for (j = 0; j != v110; ++j)
                {
                  if (*v193 != v111)
                  {
                    objc_enumerationMutation(v109);
                  }

                  v113 = [*(*(&v192 + 1) + 8 * j) boundingQuad];
                  v114 = [v113 denormalizedQuad];
                  [v114 area];
                  v116 = v115;

                  v33 = v33 - v116;
                }

                v110 = [v109 countByEnumeratingWithState:&v192 objects:v213 count:16];
              }

              while (v110);
            }

            [v161 addObject:v174];
            [v172 addObject:v174];
            [v160 addObjectsFromArray:v109];
            v117 = [v174 trackingID];
            [v162 removeObject:v117];

            v190 = 0u;
            v191 = 0u;
            v188 = 0u;
            v189 = 0u;
            v118 = v109;
            v119 = [v118 countByEnumeratingWithState:&v188 objects:v212 count:16];
            if (v119)
            {
              v120 = *v189;
              do
              {
                for (k = 0; k != v119; ++k)
                {
                  if (*v189 != v120)
                  {
                    objc_enumerationMutation(v118);
                  }

                  v122 = *(*(&v188 + 1) + 8 * k);
                  [v172 removeObject:v122];
                  v123 = [v122 trackingID];
                  [v171 removeObject:v123];
                }

                v119 = [v118 countByEnumeratingWithState:&v188 objects:v212 count:16];
              }

              while (v119);
            }
          }
        }

        *&v169 = v169 + 1;
      }

      while (v169 != v167);
      v167 = [v168 countByEnumeratingWithState:&v200 objects:v215 count:16];
    }

    while (v167);
  }

  [v168 removeObjectsInArray:v161];
  [v166 removeObjectsInArray:v160];
  [v161 removeAllObjects];
  [v160 removeAllObjects];
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v165 = v166;
  v167 = [v165 countByEnumeratingWithState:&v184 objects:v211 count:16];
  if (v167)
  {
    v166 = *v185;
    do
    {
      *&v169 = 0;
      do
      {
        if (*v185 != v166)
        {
          objc_enumerationMutation(v165);
        }

        v174 = *(*(&v184 + 1) + 8 * v169);
        *&v173 = objc_opt_new();
        v182 = 0u;
        v183 = 0u;
        v180 = 0u;
        v181 = 0u;
        v124 = v168;
        v125 = 0;
        v126 = [v124 countByEnumeratingWithState:&v180 objects:v210 count:16];
        if (v126)
        {
          v127 = *v181;
          do
          {
            for (m = 0; m != v126; ++m)
            {
              if (*v181 != v127)
              {
                objc_enumerationMutation(v124);
              }

              v129 = *(*(&v180 + 1) + 8 * m);
              if (v175)
              {
                [*(*(&v180 + 1) + 8 * m) boundingQuadAtOCRDispatch];
              }

              else
              {
                [*(*(&v180 + 1) + 8 * m) boundingQuad];
              }
              v130 = ;
              v131 = [v174 boundingQuad];
              v132 = [v130 overlapsNormalizedQuad:v131];

              if (v132)
              {
                [v173 addObject:v129];
                if (v125)
                {
                  [v125 baselineAngle];
                  *&v133 = v133;
                  v134 = [v125 unionWithNormalizedQuad:v130 baselineAngle:v133];

                  v125 = v134;
                }

                else
                {
                  v125 = [v129 boundingQuad];
                }
              }
            }

            v126 = [v124 countByEnumeratingWithState:&v180 objects:v210 count:16];
          }

          while (v126);
        }

        if ([v173 count] >= 2)
        {
          v135 = [v174 boundingQuad];
          [v135 boundingBoxClippedIOUWithQuad:v125];
          v137 = v136;

          if (1.0 - v137 <= 0.550000012)
          {
            v138 = [v174 boundingQuad];
            v139 = [v138 denormalizedQuad];
            [v139 area];
            v141 = v140;

            v178 = 0u;
            v179 = 0u;
            v176 = 0u;
            v177 = 0u;
            v142 = v173;
            v143 = [v142 countByEnumeratingWithState:&v176 objects:v209 count:16];
            v33 = v33 - v141;
            if (v143)
            {
              v144 = *v177;
              do
              {
                for (n = 0; n != v143; ++n)
                {
                  if (*v177 != v144)
                  {
                    objc_enumerationMutation(v142);
                  }

                  v146 = [*(*(&v176 + 1) + 8 * n) boundingQuad];
                  v147 = [v146 denormalizedQuad];
                  [v147 area];
                  v149 = v148;

                  v33 = v33 - v149;
                }

                v143 = [v142 countByEnumeratingWithState:&v176 objects:v209 count:16];
              }

              while (v143);
            }

            [v172 addObjectsFromArray:v142];
            [v162 removeObjectsInArray:v142];
            [v172 removeObject:v174];
            v150 = [v174 trackingID];
            [v171 removeObject:v150];
          }
        }

        *&v169 = v169 + 1;
      }

      while (v169 != v167);
      v167 = [v165 countByEnumeratingWithState:&v184 objects:v211 count:16];
    }

    while (v167);
  }

  v151 = [CRTrackingAssociatorResults alloc];
  v152 = [(CRTrackingAssociatorResults *)v151 initWithTotalError:v172 tracked:v157 updatedRegionIDs:v162 removedRegionIDs:v171 addedRegionIDs:v33];

  return v152;
}

@end