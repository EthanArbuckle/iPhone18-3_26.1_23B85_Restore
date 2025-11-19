@interface PNPersonDeduperStep
- (BOOL)addPotentialMergeCandidateForPerson:(id)a3 withOtherPerson:(id)a4 updateBlock:(id)a5;
- (BOOL)isPersonSimilar:(id)a3 withOtherPerson:(id)a4 withDistance:(float)a5 minAgeType:(unsigned __int16)a6;
- (BOOL)shouldStopWithUpdateBlock:(id)a3;
- (NSString)metricsKey;
- (NSString)name;
- (PNPersonDeduperStep)initWithPersonClusterManager:(id)a3 invalidCandidatesMapping:(id)a4 profile:(id)a5;
- (PNPersonPromoterDelegate)delegate;
- (float)adjustedThreshold:(float)a3 forMinAgeType:(unsigned __int16)a4;
- (id)_resolveMergeCandidate:(id)a3 forPerson:(id)a4;
- (id)mergeCandidatePersonsWithUpdateBlock:(id)a3;
- (void)dedupePersons:(id)a3 withOtherPersons:(id)a4 updateBlock:(id)a5 resultBlock:(id)a6;
@end

@implementation PNPersonDeduperStep

- (PNPersonPromoterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (float)adjustedThreshold:(float)a3 forMinAgeType:(unsigned __int16)a4
{
  v4 = a4;
  if ([(PNPersonDeduperProfile *)self->_profile shouldAdjustThresholdOnAgeType])
  {
    if (v4 == 2)
    {
      v6 = 0.8;
      return a3 * v6;
    }

    if (v4 == 1)
    {
      v6 = 0.7;
      return a3 * v6;
    }
  }

  return a3;
}

- (BOOL)addPotentialMergeCandidateForPerson:(id)a3 withOtherPerson:(id)a4 updateBlock:(id)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 quarantined] & 1) != 0 || (objc_msgSend(v9, "quarantined"))
  {
    goto LABEL_5;
  }

  v11 = [(PNPersonDeduperStep *)self invalidCandidatesMapping];
  v12 = [v9 localIdentifier];
  v13 = [v11 objectForKeyedSubscript:v12];
  v14 = [v8 localIdentifier];
  if (([v13 containsObject:v14] & 1) == 0)
  {
    v45 = v10;
    v17 = [(PNPersonDeduperStep *)self invalidCandidatesMapping];
    [v8 localIdentifier];
    v18 = v42 = self;
    v19 = [v17 objectForKeyedSubscript:v18];
    v20 = [v9 localIdentifier];
    v43 = [v19 containsObject:v20];

    if (v43)
    {
      v15 = 0;
      v10 = v45;
      goto LABEL_6;
    }

    v51 = 0;
    v21 = [(PNPersonDeduperStep *)v42 personClusterManager];
    v50 = 0;
    v10 = v45;
    [v21 distanceWithOverlapCheckBetweenPerson:v8 andPerson:v9 useCommonMoments:1 minAgeType:&v51 updateBlock:v45 error:&v50];
    v23 = v22;
    v24 = COERCE_DOUBLE(v50);

    if (v24 == 0.0)
    {
      if (![(PNPersonDeduperStep *)v42 shouldStopWithUpdateBlock:v45])
      {
        *&v25 = v23;
        if ([(PNPersonDeduperStep *)v42 isPersonSimilar:v8 withOtherPerson:v9 withDistance:v51 minAgeType:v25])
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *buf = 134218498;
            v55 = v23;
            v56 = 2112;
            v57 = v9;
            v58 = 2112;
            v59 = v8;
            _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Found a merge candidate with distance %.3f: %@ for %@", buf, 0x20u);
          }

          v53[0] = v8;
          v53[1] = v9;
          v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v26 = [(PNPersonDeduperStep *)v42 mergeRelations];
          v27 = NSAllMapTableKeys(v26);

          v28 = [v27 countByEnumeratingWithState:&v46 objects:v52 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v47;
LABEL_18:
            v31 = 0;
            while (1)
            {
              if (*v47 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v46 + 1) + 8 * v31);
              v33 = [v32 lastObject];
              v34 = v33;
              if (v33 == v9)
              {
                break;
              }

              if (v29 == ++v31)
              {
                v29 = [v27 countByEnumeratingWithState:&v46 objects:v52 count:16];
                if (v29)
                {
                  goto LABEL_18;
                }

                goto LABEL_29;
              }
            }

            v35 = [(PNPersonDeduperStep *)v42 mergeRelations];
            v36 = [v35 objectForKey:v32];
            [v36 floatValue];
            v38 = v37;

            if (v38 > v23)
            {
              v39 = [(PNPersonDeduperStep *)v42 mergeRelations];
              [v39 removeObjectForKey:v32];

              goto LABEL_29;
            }

            v41 = v44;
            v10 = v45;
          }

          else
          {
LABEL_29:

            v27 = [(PNPersonDeduperStep *)v42 mergeRelations];
            *&v40 = v23;
            v34 = [MEMORY[0x1E696AD98] numberWithFloat:v40];
            v41 = v44;
            [v27 setObject:v34 forKey:v44];
            v10 = v45;
          }

          v15 = 1;
          goto LABEL_26;
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v55 = v24;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PNPersonClusterManager distanceWithOverlapCheckBetweenPerson:andPerson:useCommonMoments:error:] return an error: %@", buf, 0xCu);
    }

    v15 = 0;
LABEL_26:

    goto LABEL_6;
  }

LABEL_5:
  v15 = 0;
LABEL_6:

  return v15;
}

- (id)mergeCandidatePersonsWithUpdateBlock:(id)a3
{
  v184 = *MEMORY[0x1E69E9840];
  v111 = a3;
  v106 = [MEMORY[0x1E695DFA8] set];
  v4 = [(PNPersonDeduperStep *)self personClusterManager];
  v5 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:5 valueOptions:0];
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v6 = [(PNPersonDeduperStep *)self mergeRelations];
  v7 = [v6 keyEnumerator];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v165 objects:v183 count:16];
  v112 = v5;
  v114 = self;
  if (v8)
  {
    v9 = v8;
    v10 = *v166;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v166 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v165 + 1) + 8 * i);
        if ([(PNPersonDeduperStep *)self shouldStopWithUpdateBlock:v111])
        {
          v98 = v106;
          v100 = v106;
          v101 = obj;
LABEL_110:

          goto LABEL_111;
        }

        v13 = [v12 firstObject];
        v14 = [v12 lastObject];
        v15 = [v13 isVerified];
        v16 = [v14 isVerified];
        if (v15)
        {
          v17 = v16 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          if ((v16 & 1) != 0 || (v18 = [v13 faceCount], !((v18 >= objc_msgSend(v14, "faceCount")) | v15 & 1)))
          {
            v20 = [v12 lastObject];

            v19 = [v12 firstObject];

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              *v178 = v19;
              *&v178[8] = 2112;
              *&v178[10] = v20;
              _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Swaping source person and person to merge: %@ merging in to %@", buf, 0x16u);
            }
          }

          else
          {
            v19 = v14;
            v20 = v13;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v31 = [MEMORY[0x1E696AAA8] currentHandler];
            [v31 handleFailureInMethod:a2 object:v114 file:@"PNPersonDeduperStep.m" lineNumber:176 description:@"Person source should be type of PNPersonCluster"];
          }

          v22 = [(PNPersonDeduperStep *)v114 mergeRelations];
          v23 = [v22 objectForKey:v12];
          [v23 floatValue];
          v25 = v24;

          v26 = [v4 numberOfAssetsInCommonBetweenPerson:v20 andPerson:v19];
          v27 = [v4 numberOfMomentsInCommonBetweenPerson:v20 andPerson:v19];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            v29 = [v19 localIdentifier];
            v30 = [v20 localIdentifier];
            *buf = 138413314;
            *v178 = v29;
            *&v178[8] = 2112;
            *&v178[10] = v30;
            v179 = 2048;
            v180 = v25;
            v181 = 1024;
            *v182 = v26;
            *&v182[4] = 1024;
            *&v182[6] = v27;
            _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Resolving merge %@ into %@]\nDistance: %.3f, common assets: %d, common moments: %d", buf, 0x2Cu);

            v5 = v112;
          }

          v28 = [(NSMapTable *)v5 objectForKey:v20];
          if (v28)
          {
            v21 = v28;
            [v28 addObject:v19];
          }

          else
          {
            v21 = [MEMORY[0x1E695DFA8] setWithObject:v19];
            [(NSMapTable *)v5 setObject:v21 forKey:v20];
          }

          v14 = v19;
          v13 = v20;
          self = v114;
        }

        else
        {
          v21 = [MEMORY[0x1E696AAA8] currentHandler];
          [v21 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperStep.m" lineNumber:164 description:@"It's impossible at this point to merge two verified persons together."];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v165 objects:v183 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v107 = NSAllMapTableKeys(v5);
  v109 = [v107 countByEnumeratingWithState:&v161 objects:v176 count:16];
  if (v109)
  {
    v33 = MEMORY[0x1E69E9C10];
    v108 = *v162;
    *&v32 = 67109378;
    v105 = v32;
    while (2)
    {
      v34 = 0;
      do
      {
        if (*v162 != v108)
        {
          v35 = v34;
          objc_enumerationMutation(v107);
          v34 = v35;
        }

        v110 = v34;
        v36 = *(*(&v161 + 1) + 8 * v34);
        if ([(PNPersonDeduperStep *)self shouldStopWithUpdateBlock:v111, v105])
        {
          v98 = v106;
          v102 = v106;
          v101 = v107;
          goto LABEL_110;
        }

        v130 = v36;
        v37 = [(PNPersonDeduperStep *)self _resolveMergeCandidate:v5 forPerson:v36];
        v115 = v37;
        if ([v37 count] >= 2)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            v88 = [v37 count];
            *buf = v105;
            *v178 = v88;
            *&v178[4] = 2112;
            *&v178[6] = v130;
            _os_log_debug_impl(&dword_1C6F5C000, v33, OS_LOG_TYPE_DEBUG, "Resolving %d potential conflicts for %@", buf, 0x12u);
          }

          v38 = [v37 mutableCopy];
          [v38 addObject:v130];
          v39 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"faceCount" ascending:1];
          v175 = v39;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v175 count:1];
          v41 = [v38 sortedArrayUsingDescriptors:v40];

          v159 = 0u;
          v160 = 0u;
          v157 = 0u;
          v158 = 0u;
          v127 = v41;
          v42 = [v127 countByEnumeratingWithState:&v157 objects:v174 count:16];
          v5 = v112;
          if (v42)
          {
            v43 = v42;
            v44 = *v158;
            v123 = *v158;
            do
            {
              v45 = 0;
              v125 = v43;
              do
              {
                if (*v158 != v44)
                {
                  objc_enumerationMutation(v127);
                }

                v46 = *(*(&v157 + 1) + 8 * v45);
                v47 = objc_autoreleasePoolPush();
                if ([v38 containsObject:v46])
                {
                  obja = v47;
                  v48 = objc_opt_new();
                  v153 = 0u;
                  v154 = 0u;
                  v155 = 0u;
                  v156 = 0u;
                  v49 = v38;
                  v50 = v38;
                  v51 = [v50 countByEnumeratingWithState:&v153 objects:v173 count:16];
                  if (v51)
                  {
                    v52 = v51;
                    v53 = *v154;
                    do
                    {
                      for (j = 0; j != v52; ++j)
                      {
                        if (*v154 != v53)
                        {
                          objc_enumerationMutation(v50);
                        }

                        v55 = *(*(&v153 + 1) + 8 * j);
                        if (v46 != v55)
                        {
                          v56 = [v55 backingAssetIdentifiers];
                          [v48 unionSet:v56];
                        }
                      }

                      v52 = [v50 countByEnumeratingWithState:&v153 objects:v173 count:16];
                    }

                    while (v52);
                  }

                  v57 = [v46 backingAssetIdentifiers];
                  v58 = [v4 assetsOverlapBetweenPersonAssetIdentifiers:v57 andPersonAssetIdentifiers:v48];

                  v5 = v112;
                  if (v58)
                  {
                    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      *v178 = v46;
                      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Found a conflict for %@, removing.", buf, 0xCu);
                    }

                    [v115 removeObject:v46];
                    [v50 removeObject:v46];
                  }

                  v38 = v49;
                  v44 = v123;
                  v43 = v125;
                  v47 = obja;
                }

                objc_autoreleasePoolPop(v47);
                ++v45;
              }

              while (v45 != v43);
              v43 = [v127 countByEnumeratingWithState:&v157 objects:v174 count:16];
            }

            while (v43);
          }

          self = v114;
          v37 = v115;
          v33 = MEMORY[0x1E69E9C10];
        }

        if ([v37 count])
        {
          v152 = 0;
          v59 = [v4 representativeFaceObservationForPerson:v130 ageType:&v152];
          v60 = [v130 representativeFaceByFaceIdentifiers];
          v61 = [v60 allValues];

          v62 = [v37 copy];
          v148 = 0u;
          v149 = 0u;
          v150 = 0u;
          v151 = 0u;
          v116 = v62;
          v119 = [v116 countByEnumeratingWithState:&v148 objects:v172 count:16];
          if (v119)
          {
            v118 = *v149;
            v113 = v61;
            do
            {
              for (k = 0; k != v119; ++k)
              {
                if (*v149 != v118)
                {
                  objc_enumerationMutation(v116);
                }

                objb = *(*(&v148 + 1) + 8 * k);
                v64 = [objb representativeFaceByFaceIdentifiers];
                v65 = [v64 allValues];

                if ([v61 count] > 1 || objc_msgSend(v65, "count") >= 2)
                {
                  v120 = k;
                  v66 = [v61 count];
                  v67 = [v65 count];
                  v147 = 0;
                  v68 = [v4 representativeFaceObservationForPerson:objb ageType:&v147];
                  v69 = [v4 minAgeTypeForFaceAgeType:v152 andFaceAgeType:v147];
                  v143 = 0u;
                  v144 = 0u;
                  v70 = (v69 - 1) < 2;
                  v145 = 0u;
                  v146 = 0u;
                  v71 = v61;
                  v126 = [v71 countByEnumeratingWithState:&v143 objects:v171 count:16];
                  if (v126)
                  {
                    v121 = v71;
                    v72 = 0;
                    v117 = vcvtps_u32_f32(vcvts_n_f32_u64(v67 * v66, 1uLL));
                    v73 = flt_1C7592EE0[v70];
                    v122 = *v144;
                    v124 = v65;
                    do
                    {
                      v74 = 0;
                      do
                      {
                        if (*v144 != v122)
                        {
                          objc_enumerationMutation(v121);
                        }

                        v128 = v74;
                        v75 = *(*(&v143 + 1) + 8 * v74);
                        v139 = 0u;
                        v140 = 0u;
                        v141 = 0u;
                        v142 = 0u;
                        v76 = v65;
                        v77 = [v76 countByEnumeratingWithState:&v139 objects:v170 count:16];
                        if (v77)
                        {
                          v78 = v77;
                          v79 = *v140;
                          do
                          {
                            for (m = 0; m != v78; ++m)
                            {
                              if (*v140 != v79)
                              {
                                objc_enumerationMutation(v76);
                              }

                              v81 = *(*(&v139 + 1) + 8 * m);
                              v82 = [v4 visionHelper];
                              v138 = 0;
                              [v82 distanceBetweenFaceObservation:v75 andFaceObservation:v81 error:&v138];
                              v84 = v83;
                              v85 = v138;

                              if (v84 > v73)
                              {
                                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                                {
                                  v86 = [v130 localIdentifier];
                                  v87 = [objb localIdentifier];
                                  *buf = 138413058;
                                  *v178 = v86;
                                  *&v178[8] = 2112;
                                  *&v178[10] = v87;
                                  v179 = 2048;
                                  v180 = v84;
                                  v181 = 2048;
                                  *v182 = v73;
                                  _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Found suspicious merge between %@ and %@, distance %.3f > %.2f.", buf, 0x2Au);

                                  v33 = MEMORY[0x1E69E9C10];
                                }

                                ++v72;
                              }
                            }

                            v78 = [v76 countByEnumeratingWithState:&v139 objects:v170 count:16];
                          }

                          while (v78);
                        }

                        v74 = v128 + 1;
                        v65 = v124;
                      }

                      while (v128 + 1 != v126);
                      v126 = [v121 countByEnumeratingWithState:&v143 objects:v171 count:16];
                    }

                    while (v126);

                    v61 = v113;
                    self = v114;
                    k = v120;
                    if (v72 > v117)
                    {
                      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 134218498;
                        *v178 = v72;
                        *&v178[8] = 2048;
                        *&v178[10] = v117;
                        v179 = 2112;
                        v180 = *&objb;
                        _os_log_impl(&dword_1C6F5C000, v33, OS_LOG_TYPE_DEFAULT, "Found %tu suspicious merges (threshold %tu) for %@, removing.", buf, 0x20u);
                      }

                      [v115 removeObject:objb];
                    }
                  }

                  else
                  {

                    k = v120;
                  }
                }
              }

              v119 = [v116 countByEnumeratingWithState:&v148 objects:v172 count:16];
            }

            while (v119);
          }

          v5 = v112;
          v37 = v115;
        }

        if ([v37 count])
        {
          [(NSMapTable *)v5 setObject:v37 forKey:v130];
        }

        v34 = v110 + 1;
      }

      while (v110 + 1 != v109);
      v109 = [v107 countByEnumeratingWithState:&v161 objects:v176 count:16];
      if (v109)
      {
        continue;
      }

      break;
    }
  }

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v89 = NSAllMapTableKeys(v5);
  v90 = [v89 countByEnumeratingWithState:&v134 objects:v169 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = *v135;
    while (2)
    {
      for (n = 0; n != v91; ++n)
      {
        if (*v135 != v92)
        {
          objc_enumerationMutation(v89);
        }

        v94 = *(*(&v134 + 1) + 8 * n);
        v95 = objc_autoreleasePoolPush();
        if ([(PNPersonDeduperStep *)self shouldStopWithUpdateBlock:v111])
        {
          v98 = v106;
          v104 = v106;
          objc_autoreleasePoolPop(v95);

          goto LABEL_115;
        }

        v96 = [(PNPersonDeduperStep *)self _resolveMergeCandidate:v112 forPerson:v94];
        if ([v96 count])
        {
          [v4 mergePersons:v96 withPerson:v94];
          [v106 unionSet:v96];
        }

        objc_autoreleasePoolPop(v95);
      }

      v91 = [v89 countByEnumeratingWithState:&v134 objects:v169 count:16];
      if (v91)
      {
        continue;
      }

      break;
    }
  }

  v97 = [(PNPersonDeduperStep *)self mergeRelations];
  [v97 removeAllObjects];

  v98 = v106;
  v99 = v106;
LABEL_115:
  v5 = v112;
LABEL_111:

  return v98;
}

- (id)_resolveMergeCandidate:(id)a3 forPerson:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:v7];
  if ([v8 count])
  {
    [v6 removeObjectForKey:v7];
    v9 = [(PNPersonDeduperStep *)self personClusterManager];
    v28 = [v8 mutableCopy];
    v26 = v7;
    v27 = [v7 localIdentifier];
    v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v27, 0}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = v8;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = [v15 localIdentifier];
          [v9 mergeConfidenceBetweenPersonLocalIdentifier:v16 andCandidateLocalIdentifiers:v10];
          if (v17 == -1.0)
          {
            v18 = v6;
            v30 = 0;
            v29 = 0;
            [v9 distanceBetweenPerson:v15 andPerson:v26 useCommonMoments:1 minAgeType:&v30 updateBlock:&__block_literal_global_1194 error:&v29];
            v20 = v19;
            v21 = v29;
            if (v21)
            {
              v20 = 1.0;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v36 = v27;
                v37 = 2112;
                v38 = v16;
                v39 = 2112;
                v40 = v21;
                _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "error updating confidence cache between %@ and %@: %@", buf, 0x20u);
              }
            }

            [v9 updateConfidenceCacheBetweenPersonLocalIdentifier:v16 andOtherPersonLocalIdentifier:v27 withDistance:v20];

            v6 = v18;
          }

          v22 = [(PNPersonDeduperStep *)self _resolveMergeCandidate:v6 forPerson:v15];
          [v28 unionSet:v22];
        }

        v12 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v12);
    }

    v7 = v26;
    v8 = v24;
  }

  else
  {
    v28 = [MEMORY[0x1E695DFA8] set];
  }

  return v28;
}

- (BOOL)shouldStopWithUpdateBlock:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_shouldStop && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v8 = [MEMORY[0x1E696AF00] callStackSymbols];
    v9 = 138412290;
    v10 = v8;
    _os_log_fault_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Progress reported again but it should have stop. %@", &v9, 0xCu);
  }

  [(PNPersonDeduperStep *)self progress];
  v4[2](v4, &self->_shouldStop);
  if (self->_shouldStop)
  {
    shouldStop = 1;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v6 = [(PNPersonDeduperStep *)self name];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Step %@ got cancelled.", &v9, 0xCu);

      shouldStop = self->_shouldStop;
    }
  }

  else
  {
    shouldStop = 0;
  }

  return shouldStop;
}

- (NSString)metricsKey
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperStep.m" lineNumber:75 description:{@"%s needs to be implemented by subclasses", "-[PNPersonDeduperStep metricsKey]"}];

  abort();
}

- (BOOL)isPersonSimilar:(id)a3 withOtherPerson:(id)a4 withDistance:(float)a5 minAgeType:(unsigned __int16)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperStep.m" lineNumber:68 description:{@"%s needs to be implemented by subclasses", "-[PNPersonDeduperStep isPersonSimilar:withOtherPerson:withDistance:minAgeType:]"}];

  abort();
}

- (void)dedupePersons:(id)a3 withOtherPersons:(id)a4 updateBlock:(id)a5 resultBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperStep.m" lineNumber:62 description:{@"%s needs to be implemented by subclasses", "-[PNPersonDeduperStep dedupePersons:withOtherPersons:updateBlock:resultBlock:]"}];

  abort();
}

- (NSString)name
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperStep.m" lineNumber:55 description:{@"%s needs to be implemented by subclasses", "-[PNPersonDeduperStep name]"}];

  abort();
}

- (PNPersonDeduperStep)initWithPersonClusterManager:(id)a3 invalidCandidatesMapping:(id)a4 profile:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = PNPersonDeduperStep;
  v12 = [(PNPersonDeduperStep *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_personClusterManager, a3);
    objc_storeStrong(&v13->_invalidCandidatesMapping, a4);
    objc_storeStrong(&v13->_profile, a5);
    v14 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:0];
    mergeRelations = v13->_mergeRelations;
    v13->_mergeRelations = v14;
  }

  return v13;
}

@end