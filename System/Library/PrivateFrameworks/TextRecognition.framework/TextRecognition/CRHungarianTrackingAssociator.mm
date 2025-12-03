@interface CRHungarianTrackingAssociator
+ (id)performAssociationOnCandidates:(id)candidates useRegionsAtOCRDispatchTime:(BOOL)time existingRegions:(id)regions fineGrainedResults:(id)results newRegionHandler:(id)handler matchedRegionHandler:(id)regionHandler;
@end

@implementation CRHungarianTrackingAssociator

+ (id)performAssociationOnCandidates:(id)candidates useRegionsAtOCRDispatchTime:(BOOL)time existingRegions:(id)regions fineGrainedResults:(id)results newRegionHandler:(id)handler matchedRegionHandler:(id)regionHandler
{
  timeCopy = time;
  v215[16] = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  regionsCopy = regions;
  resultsCopy = results;
  handlerCopy = handler;
  regionHandlerCopy = regionHandler;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
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
  [regionsCopy count];
  v14 = [candidatesCopy count];
  v154 = &v154;
  *&v16 = MEMORY[0x1EEE9AC00](v14, v15).n128_u64[0];
  v18 = &v154 - v17;
  if ([candidatesCopy count])
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = [candidatesCopy objectAtIndexedSubscript:v20];
      if ([regionsCopy count])
      {
        v22 = 0;
        do
        {
          v23 = [regionsCopy objectAtIndexedSubscript:v22];
          v24 = v23;
          if (timeCopy)
          {
            [v23 boundingQuadAtOCRDispatch];
          }

          else
          {
            [v23 boundingQuad];
          }
          v25 = ;
          boundingQuad = [v21 boundingQuad];
          [v25 boundingBoxClippedIOUWithQuad:boundingQuad];
          v28 = v27;

          v29 = [regionsCopy count];
          v30 = 1.0 - v28;
          *&v18[4 * v22 + v19 * v29] = v30;

          ++v22;
        }

        while (v22 < [regionsCopy count]);
      }

      ++v20;
      v19 += 4;
    }

    while (v20 < [candidatesCopy count]);
  }

  if ([candidatesCopy count])
  {
    v31 = [candidatesCopy count];
    v32 = [regionsCopy count];
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
    v165 = regionHandlerCopy + 16;
    do
    {
      v35 = [candidatesCopy objectAtIndexedSubscript:v34];
      v36 = [v164 objectAtIndexedSubscript:v34];
      v37 = [v36 isEqual:&unk_1F2BF85F0];

      if (v37)
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
        [v35 setTrackingID:uUID];

        LOBYTE(v204[0]) = 1;
        handlerCopy[2](handlerCopy, v35, v204);
        if (LOBYTE(v204[0]) == 1)
        {
          trackingID = [v35 trackingID];
          [array4 addObject:trackingID];

          [array addObject:v35];
          [v166 addObject:v35];
          boundingQuad2 = [v35 boundingQuad];
          denormalizedQuad = [boundingQuad2 denormalizedQuad];
          [denormalizedQuad area];
          v43 = v42;

          v33 = v33 + v43;
        }
      }

      else
      {
        v44 = [regionsCopy count];
        v45 = [v164 objectAtIndexedSubscript:v34];
        v46 = *&v18[4 * v44 * v34 + 4 * [v45 intValue]] < 0.55;

        v47 = [v164 objectAtIndexedSubscript:v34];
        intValue = [v47 intValue];
        v174 = [regionsCopy objectAtIndexedSubscript:intValue];

        if (v46)
        {
          trackingID2 = [v174 trackingID];
          [v35 setTrackingID:trackingID2];

          LOBYTE(v204[0]) = 1;
          (*(regionHandlerCopy + 2))(regionHandlerCopy, v174, v35, v204);
          if ((v204[0] & 1) == 0)
          {
            originalBoundingQuad = [v35 originalBoundingQuad];
            [v174 setOriginalBoundingQuad:originalBoundingQuad];

            boundingQuad3 = [v35 boundingQuad];
            [v174 setBoundingQuad:boundingQuad3];

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

          trackingID3 = [v174 trackingID];
          [array2 addObject:trackingID3];

          [array addObject:v174];
          v57 = [regionsCopy count];
          v58 = [v164 objectAtIndexedSubscript:v34];
          v59 = *&v18[4 * v57 * v34 + 4 * [v58 intValue]];
          boundingQuad4 = [v174 boundingQuad];
          denormalizedQuad2 = [boundingQuad4 denormalizedQuad];
          [denormalizedQuad2 area];
          v63 = v62;
          boundingQuad5 = [v35 boundingQuad];
          denormalizedQuad3 = [boundingQuad5 denormalizedQuad];
          [denormalizedQuad3 area];
          v67 = v66;
        }

        else
        {
          uUID2 = [MEMORY[0x1E696AFB0] UUID];
          [v35 setTrackingID:uUID2];

          LOBYTE(v204[0]) = 1;
          handlerCopy[2](handlerCopy, v35, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            [v166 addObject:v35];
            trackingID4 = [v35 trackingID];
            [array4 addObject:trackingID4];

            [array addObject:v35];
          }

          [v167 addObject:v174];
          trackingID5 = [v174 trackingID];
          [array3 addObject:trackingID5];

          v71 = [regionsCopy count];
          v72 = [v164 objectAtIndexedSubscript:v34];
          v59 = *&v18[4 * v71 * v34 + 4 * [v72 intValue]];
          boundingQuad6 = [v174 boundingQuad];
          denormalizedQuad4 = [boundingQuad6 denormalizedQuad];
          [denormalizedQuad4 area];
          v63 = v75;
          boundingQuad7 = [v35 boundingQuad];
          denormalizedQuad5 = [boundingQuad7 denormalizedQuad];
          [denormalizedQuad5 area];
          v67 = v78;
        }

        v33 = v33 + (v63 + v67) * v59 * 0.5;
      }

      ++v34;
    }

    while (v34 < [v164 count]);
  }

  if ([regionsCopy count])
  {
    v79 = 0;
    do
    {
      v80 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v79];
      v81 = [v164 containsObject:v80];

      if ((v81 & 1) == 0)
      {
        v82 = [regionsCopy objectAtIndexedSubscript:v79];
        trackingID6 = [v82 trackingID];
        [array3 addObject:trackingID6];

        v84 = [regionsCopy objectAtIndexedSubscript:v79];
        boundingQuad8 = [v84 boundingQuad];
        denormalizedQuad6 = [boundingQuad8 denormalizedQuad];
        [denormalizedQuad6 area];
        v88 = v87;

        v33 = v33 + v88;
      }

      ++v79;
    }

    while (v79 < [regionsCopy count]);
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
              if (timeCopy)
              {
                [v174 boundingQuadAtOCRDispatch];
              }

              else
              {
                [v174 boundingQuad];
              }
              v95 = ;
              boundingQuad9 = [v94 boundingQuad];
              v97 = [v95 overlapsNormalizedQuad:boundingQuad9];

              if (v97)
              {
                [v173 addObject:v94];
                boundingQuad10 = [v94 boundingQuad];
                v99 = boundingQuad10;
                if (v90)
                {
                  [v90 baselineAngle];
                  *&v100 = v100;
                  v101 = [v90 unionWithNormalizedQuad:v99 baselineAngle:v100];

                  v90 = v101;
                }

                else
                {
                  v90 = boundingQuad10;
                }
              }
            }

            v91 = [v89 countByEnumeratingWithState:&v196 objects:v214 count:16];
          }

          while (v91);
        }

        if ([v173 count] >= 2)
        {
          boundingQuad11 = [v174 boundingQuad];
          [boundingQuad11 boundingBoxClippedIOUWithQuad:v90];
          v104 = v103;

          if (1.0 - v104 <= 0.550000012)
          {
            boundingQuad12 = [v174 boundingQuad];
            denormalizedQuad7 = [boundingQuad12 denormalizedQuad];
            [denormalizedQuad7 area];
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

                  boundingQuad13 = [*(*(&v192 + 1) + 8 * j) boundingQuad];
                  denormalizedQuad8 = [boundingQuad13 denormalizedQuad];
                  [denormalizedQuad8 area];
                  v116 = v115;

                  v33 = v33 - v116;
                }

                v110 = [v109 countByEnumeratingWithState:&v192 objects:v213 count:16];
              }

              while (v110);
            }

            [v161 addObject:v174];
            [array addObject:v174];
            [v160 addObjectsFromArray:v109];
            trackingID7 = [v174 trackingID];
            [array3 removeObject:trackingID7];

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
                  [array removeObject:v122];
                  trackingID8 = [v122 trackingID];
                  [array4 removeObject:trackingID8];
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
        boundingQuad15 = 0;
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
              if (timeCopy)
              {
                [*(*(&v180 + 1) + 8 * m) boundingQuadAtOCRDispatch];
              }

              else
              {
                [*(*(&v180 + 1) + 8 * m) boundingQuad];
              }
              v130 = ;
              boundingQuad14 = [v174 boundingQuad];
              v132 = [v130 overlapsNormalizedQuad:boundingQuad14];

              if (v132)
              {
                [v173 addObject:v129];
                if (boundingQuad15)
                {
                  [boundingQuad15 baselineAngle];
                  *&v133 = v133;
                  v134 = [boundingQuad15 unionWithNormalizedQuad:v130 baselineAngle:v133];

                  boundingQuad15 = v134;
                }

                else
                {
                  boundingQuad15 = [v129 boundingQuad];
                }
              }
            }

            v126 = [v124 countByEnumeratingWithState:&v180 objects:v210 count:16];
          }

          while (v126);
        }

        if ([v173 count] >= 2)
        {
          boundingQuad16 = [v174 boundingQuad];
          [boundingQuad16 boundingBoxClippedIOUWithQuad:boundingQuad15];
          v137 = v136;

          if (1.0 - v137 <= 0.550000012)
          {
            boundingQuad17 = [v174 boundingQuad];
            denormalizedQuad9 = [boundingQuad17 denormalizedQuad];
            [denormalizedQuad9 area];
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

                  boundingQuad18 = [*(*(&v176 + 1) + 8 * n) boundingQuad];
                  denormalizedQuad10 = [boundingQuad18 denormalizedQuad];
                  [denormalizedQuad10 area];
                  v149 = v148;

                  v33 = v33 - v149;
                }

                v143 = [v142 countByEnumeratingWithState:&v176 objects:v209 count:16];
              }

              while (v143);
            }

            [array addObjectsFromArray:v142];
            [array3 removeObjectsInArray:v142];
            [array removeObject:v174];
            trackingID9 = [v174 trackingID];
            [array4 removeObject:trackingID9];
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
  v152 = [(CRTrackingAssociatorResults *)v151 initWithTotalError:array tracked:array2 updatedRegionIDs:array3 removedRegionIDs:array4 addedRegionIDs:v33];

  return v152;
}

@end