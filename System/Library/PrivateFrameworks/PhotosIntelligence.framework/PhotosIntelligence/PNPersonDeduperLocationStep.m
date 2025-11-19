@interface PNPersonDeduperLocationStep
- (BOOL)isPersonSimilar:(id)a3 withOtherPerson:(id)a4 withDistance:(float)a5 minAgeType:(unsigned __int16)a6;
- (id)momentWithBestLocationForPersons:(id)a3 andOtherPersons:(id)a4 personsByMomentLocalIdentifiersCache:(id)a5;
- (void)dedupePersons:(id)a3 withOtherPersons:(id)a4 updateBlock:(id)a5 resultBlock:(id)a6;
@end

@implementation PNPersonDeduperLocationStep

- (void)dedupePersons:(id)a3 withOtherPersons:(id)a4 updateBlock:(id)a5 resultBlock:(id)a6
{
  v129 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v91 = a5;
  v12 = a6;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v71 = [MEMORY[0x1E696AAA8] currentHandler];
    [v71 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperLocationStep.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"persons"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v72 = [MEMORY[0x1E696AAA8] currentHandler];
  [v72 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperLocationStep.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"otherPersons"}];

LABEL_3:
  if (v91)
  {
    if (v12)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v73 = [MEMORY[0x1E696AAA8] currentHandler];
    [v73 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperLocationStep.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"updateBlock"}];

    if (v12)
    {
      goto LABEL_5;
    }
  }

  v74 = [MEMORY[0x1E696AAA8] currentHandler];
  [v74 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperLocationStep.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"resultBlock"}];

LABEL_5:
  v13 = +[PNPersonClusterManager personProcessingSortDescriptors];
  v14 = [v10 sortedArrayUsingDescriptors:v13];
  v15 = [v11 sortedArrayUsingDescriptors:v13];
  v16 = [MEMORY[0x1E695DF90] dictionary];
  v89 = [MEMORY[0x1E695DFA8] set];
  v94 = v16;
  v17 = [(PNPersonDeduperLocationStep *)self momentWithBestLocationForPersons:v14 andOtherPersons:v15 personsByMomentLocalIdentifiersCache:v16];
  v18 = [v17 count];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v119 objects:v128 count:16];
  if (v20)
  {
    v87 = v10;
    v88 = 0;
    v22 = *v120;
    v23 = v18;
    v86 = v11;
    v83 = v13;
    v84 = v12;
    v81 = v15;
    v82 = v14;
    v80 = v19;
    v77 = *v120;
    while (2)
    {
      v24 = 0;
      v76 = v20;
      do
      {
        if (*v120 != v22)
        {
          v25 = v24;
          objc_enumerationMutation(v19);
          v24 = v25;
        }

        v78 = v24;
        v26 = *(*(&v119 + 1) + 8 * v24);
        *&v21 = v88 / v23;
        [(PNPersonDeduperStep *)self setProgress:v21];
        context = objc_autoreleasePoolPush();
        v27 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        obj = v26;
        v95 = [obj countByEnumeratingWithState:&v115 objects:v127 count:16];
        if (v95)
        {
          v92 = *v116;
          do
          {
            for (i = 0; i != v95; ++i)
            {
              if (*v116 != v92)
              {
                objc_enumerationMutation(obj);
              }

              v29 = [*(*(&v115 + 1) + 8 * i) localIdentifier];
              v30 = [v94 objectForKeyedSubscript:v29];

              v113 = 0u;
              v114 = 0u;
              v111 = 0u;
              v112 = 0u;
              v31 = v30;
              v32 = [v31 countByEnumeratingWithState:&v111 objects:v126 count:16];
              if (v32)
              {
                v33 = v32;
                v34 = *v112;
                do
                {
                  for (j = 0; j != v33; ++j)
                  {
                    if (*v112 != v34)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v36 = *(*(&v111 + 1) + 8 * j);
                    v37 = [v27 objectForKey:v36];
                    v38 = [v37 unsignedIntegerValue];

                    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v38 + 1];
                    [v27 setObject:v39 forKey:v36];
                  }

                  v33 = [v31 countByEnumeratingWithState:&v111 objects:v126 count:16];
                }

                while (v33);
              }
            }

            v95 = [obj countByEnumeratingWithState:&v115 objects:v127 count:16];
          }

          while (v95);
        }

        v40 = [MEMORY[0x1E695DFA8] set];
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v41 = [v27 keyEnumerator];
        v42 = [v41 countByEnumeratingWithState:&v107 objects:v125 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v108;
          do
          {
            for (k = 0; k != v43; ++k)
            {
              if (*v108 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = *(*(&v107 + 1) + 8 * k);
              v47 = [v27 objectForKey:v46];
              v48 = [v47 unsignedIntegerValue];

              if ((v48 / [obj count]) >= 0.0)
              {
                [v40 addObject:v46];
              }
            }

            v43 = [v41 countByEnumeratingWithState:&v107 objects:v125 count:16];
          }

          while (v43);
        }

        v10 = v87;
        v49 = [v87 mutableCopy];
        v11 = v86;
        v50 = [v86 mutableCopy];
        v51 = v89;
        if ([v89 count])
        {
          v52 = [v89 allObjects];
          [v50 removeObjectsInArray:v52];
          [v49 removeObjectsInArray:v52];
        }

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v53 = v49;
        v54 = self;
        v96 = [v53 countByEnumeratingWithState:&v103 objects:v124 count:16];
        if (v96)
        {
          v79 = *v104;
          v75 = v50;
          v93 = v53;
          do
          {
            v55 = 0;
            v56 = v79;
            do
            {
              if (*v104 != v56)
              {
                objc_enumerationMutation(v53);
              }

              v57 = *(*(&v103 + 1) + 8 * v55);
              [v50 removeObject:v57];
              if ([v40 containsObject:v57])
              {
                v101 = 0u;
                v102 = 0u;
                v99 = 0u;
                v100 = 0u;
                obja = v50;
                v58 = [obja countByEnumeratingWithState:&v99 objects:v123 count:16];
                if (v58)
                {
                  v59 = v58;
                  v60 = *v100;
                  while (2)
                  {
                    for (m = 0; m != v59; ++m)
                    {
                      if (*v100 != v60)
                      {
                        objc_enumerationMutation(obja);
                      }

                      v62 = *(*(&v99 + 1) + 8 * m);
                      if ([(PNPersonDeduperStep *)v54 shouldStop]|| [(PNPersonDeduperStep *)v54 shouldStopWithUpdateBlock:v91])
                      {
                        v50 = obja;

                        v53 = v93;
                        v11 = v86;
                        v10 = v87;
                        goto LABEL_60;
                      }

                      if ([v40 containsObject:v62])
                      {
                        v63 = objc_autoreleasePoolPush();
                        [(PNPersonDeduperStep *)self addPotentialMergeCandidateForPerson:v57 withOtherPerson:v62 updateBlock:v91];
                        v64 = v63;
                        v54 = self;
                        objc_autoreleasePoolPop(v64);
                      }
                    }

                    v59 = [obja countByEnumeratingWithState:&v99 objects:v123 count:16];
                    v50 = v75;
                    v56 = v79;
                    if (v59)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v53 = v93;
              }

              ++v55;
            }

            while (v55 != v96);
            v11 = v86;
            v10 = v87;
            v51 = v89;
            v96 = [v53 countByEnumeratingWithState:&v103 objects:v124 count:16];
          }

          while (v96);
        }

        if ([(PNPersonDeduperStep *)v54 shouldStop])
        {
LABEL_60:
          v15 = v81;

          objc_autoreleasePoolPop(context);
          v70 = v80;
          v66 = v80;
          v13 = v83;
          v12 = v84;
          v14 = v82;
          v69 = v89;
          goto LABEL_61;
        }

        ++v88;
        v65 = [(PNPersonDeduperStep *)v54 mergeCandidatePersonsWithUpdateBlock:v91];
        [v51 unionSet:v65];

        objc_autoreleasePoolPop(context);
        v22 = v77;
        v24 = v78 + 1;
        v13 = v83;
        v12 = v84;
        v15 = v81;
        v14 = v82;
        v19 = v80;
      }

      while (v78 + 1 != v76);
      v20 = [v80 countByEnumeratingWithState:&v119 objects:v128 count:16];
      v22 = v77;
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v66 = [v10 mutableCopy];
  v67 = v19;
  v68 = [v11 mutableCopy];
  v69 = v89;
  [v66 minusSet:v89];
  [v68 minusSet:v89];
  v12[2](v12, v66, v68);

  v70 = v67;
LABEL_61:
}

- (id)momentWithBestLocationForPersons:(id)a3 andOtherPersons:(id)a4 personsByMomentLocalIdentifiersCache:(id)a5
{
  v36 = self;
  v57 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E695DFA8] setWithArray:a3];
  v37 = v7;
  [v9 addObjectsFromArray:v7];
  v40 = [MEMORY[0x1E695DFA8] set];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v9;
  v41 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v41)
  {
    v39 = *v51;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v51 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v50 + 1) + 8 * i);
        v12 = [v11 backingMomentIdentifiers];
        [v40 unionSet:v12];

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v13 = [v11 backingMomentIdentifiers];
        v14 = [v13 countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v47;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v47 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v46 + 1) + 8 * j);
              v19 = [v8 objectForKeyedSubscript:v18];
              if (!v19)
              {
                v19 = [MEMORY[0x1E695DFA8] set];
                [v8 setObject:v19 forKeyedSubscript:v18];
              }

              [v19 addObject:v11];
            }

            v15 = [v13 countByEnumeratingWithState:&v46 objects:v55 count:16];
          }

          while (v15);
        }
      }

      v41 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v41);
  }

  v20 = v36;
  v21 = [(PNPersonDeduperStep *)v36 personClusterManager];
  v22 = [v40 allObjects];
  v23 = [v21 pn_fetchMomentsWithLocalIdentifiers:v22];

  v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v23, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v25 = v23;
  v26 = [v25 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v43;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v42 + 1) + 8 * k);
        [v30 approximateCoordinate];
        if (v32 != 0.0 && v31 != 0.0 && CLLocationCoordinate2DIsValid(*&v31) && ([v30 isCoarse] & 1) == 0)
        {
          [v24 addObject:v30];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v27);
  }

  v33 = [(PNPersonDeduperStep *)v20 delegate];
  v34 = [v33 densityClusteringForObjects:v24 maximumDistance:3 minimumNumberOfObjects:&__block_literal_global_3667 withDistanceBlock:500.0];

  return v34;
}

uint64_t __117__PNPersonDeduperLocationStep_momentWithBestLocationForPersons_andOtherPersons_personsByMomentLocalIdentifiersCache___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 approximateCoordinate];
  [v4 approximateCoordinate];

  return CLLocationCoordinate2DGetDistanceFrom();
}

- (BOOL)isPersonSimilar:(id)a3 withOtherPerson:(id)a4 withDistance:(float)a5 minAgeType:(unsigned __int16)a6
{
  v6 = a6;
  v9 = [(PNPersonDeduperStep *)self profile:a3];
  v10 = [v9 shouldRelaxThreshold];
  v11 = [(PNPersonDeduperStep *)self profile];
  v12 = v11;
  if (v10)
  {
    [v11 fuzzyMaximumDistance];
  }

  else
  {
    [v11 normalMaximumDistance];
  }

  v14 = v13;

  *&v14 = v14;
  LODWORD(v15) = LODWORD(v14);
  [(PNPersonDeduperStep *)self adjustedThreshold:v6 forMinAgeType:v15];
  return v16 > a5;
}

@end