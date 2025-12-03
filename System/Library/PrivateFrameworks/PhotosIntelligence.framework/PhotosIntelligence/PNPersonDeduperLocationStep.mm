@interface PNPersonDeduperLocationStep
- (BOOL)isPersonSimilar:(id)similar withOtherPerson:(id)person withDistance:(float)distance minAgeType:(unsigned __int16)type;
- (id)momentWithBestLocationForPersons:(id)persons andOtherPersons:(id)otherPersons personsByMomentLocalIdentifiersCache:(id)cache;
- (void)dedupePersons:(id)persons withOtherPersons:(id)otherPersons updateBlock:(id)block resultBlock:(id)resultBlock;
@end

@implementation PNPersonDeduperLocationStep

- (void)dedupePersons:(id)persons withOtherPersons:(id)otherPersons updateBlock:(id)block resultBlock:(id)resultBlock
{
  v129 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  otherPersonsCopy = otherPersons;
  blockCopy = block;
  resultBlockCopy = resultBlock;
  if (personsCopy)
  {
    if (otherPersonsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PNPersonDeduperLocationStep.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"persons"}];

    if (otherPersonsCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperLocationStep.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"otherPersons"}];

LABEL_3:
  if (blockCopy)
  {
    if (resultBlockCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperLocationStep.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"updateBlock"}];

    if (resultBlockCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperLocationStep.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"resultBlock"}];

LABEL_5:
  v13 = +[PNPersonClusterManager personProcessingSortDescriptors];
  v14 = [personsCopy sortedArrayUsingDescriptors:v13];
  v15 = [otherPersonsCopy sortedArrayUsingDescriptors:v13];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v89 = [MEMORY[0x1E695DFA8] set];
  v94 = dictionary;
  v17 = [(PNPersonDeduperLocationStep *)self momentWithBestLocationForPersons:v14 andOtherPersons:v15 personsByMomentLocalIdentifiersCache:dictionary];
  v18 = [v17 count];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v119 objects:v128 count:16];
  if (v20)
  {
    v87 = personsCopy;
    v88 = 0;
    v22 = *v120;
    v23 = v18;
    v86 = otherPersonsCopy;
    v83 = v13;
    v84 = resultBlockCopy;
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
        strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
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

              localIdentifier = [*(*(&v115 + 1) + 8 * i) localIdentifier];
              v30 = [v94 objectForKeyedSubscript:localIdentifier];

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
                    v37 = [strongToStrongObjectsMapTable objectForKey:v36];
                    unsignedIntegerValue = [v37 unsignedIntegerValue];

                    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
                    [strongToStrongObjectsMapTable setObject:v39 forKey:v36];
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
        keyEnumerator = [strongToStrongObjectsMapTable keyEnumerator];
        v42 = [keyEnumerator countByEnumeratingWithState:&v107 objects:v125 count:16];
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
                objc_enumerationMutation(keyEnumerator);
              }

              v46 = *(*(&v107 + 1) + 8 * k);
              v47 = [strongToStrongObjectsMapTable objectForKey:v46];
              unsignedIntegerValue2 = [v47 unsignedIntegerValue];

              if ((unsignedIntegerValue2 / [obj count]) >= 0.0)
              {
                [v40 addObject:v46];
              }
            }

            v43 = [keyEnumerator countByEnumeratingWithState:&v107 objects:v125 count:16];
          }

          while (v43);
        }

        personsCopy = v87;
        v49 = [v87 mutableCopy];
        otherPersonsCopy = v86;
        v50 = [v86 mutableCopy];
        v51 = v89;
        if ([v89 count])
        {
          allObjects = [v89 allObjects];
          [v50 removeObjectsInArray:allObjects];
          [v49 removeObjectsInArray:allObjects];
        }

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v53 = v49;
        selfCopy2 = self;
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
                      if ([(PNPersonDeduperStep *)selfCopy2 shouldStop]|| [(PNPersonDeduperStep *)selfCopy2 shouldStopWithUpdateBlock:blockCopy])
                      {
                        v50 = obja;

                        v53 = v93;
                        otherPersonsCopy = v86;
                        personsCopy = v87;
                        goto LABEL_60;
                      }

                      if ([v40 containsObject:v62])
                      {
                        v63 = objc_autoreleasePoolPush();
                        [(PNPersonDeduperStep *)self addPotentialMergeCandidateForPerson:v57 withOtherPerson:v62 updateBlock:blockCopy];
                        v64 = v63;
                        selfCopy2 = self;
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
            otherPersonsCopy = v86;
            personsCopy = v87;
            v51 = v89;
            v96 = [v53 countByEnumeratingWithState:&v103 objects:v124 count:16];
          }

          while (v96);
        }

        if ([(PNPersonDeduperStep *)selfCopy2 shouldStop])
        {
LABEL_60:
          v15 = v81;

          objc_autoreleasePoolPop(context);
          v70 = v80;
          v66 = v80;
          v13 = v83;
          resultBlockCopy = v84;
          v14 = v82;
          v69 = v89;
          goto LABEL_61;
        }

        ++v88;
        v65 = [(PNPersonDeduperStep *)selfCopy2 mergeCandidatePersonsWithUpdateBlock:blockCopy];
        [v51 unionSet:v65];

        objc_autoreleasePoolPop(context);
        v22 = v77;
        v24 = v78 + 1;
        v13 = v83;
        resultBlockCopy = v84;
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

  v66 = [personsCopy mutableCopy];
  v67 = v19;
  v68 = [otherPersonsCopy mutableCopy];
  v69 = v89;
  [v66 minusSet:v89];
  [v68 minusSet:v89];
  resultBlockCopy[2](resultBlockCopy, v66, v68);

  v70 = v67;
LABEL_61:
}

- (id)momentWithBestLocationForPersons:(id)persons andOtherPersons:(id)otherPersons personsByMomentLocalIdentifiersCache:(id)cache
{
  selfCopy = self;
  v57 = *MEMORY[0x1E69E9840];
  otherPersonsCopy = otherPersons;
  cacheCopy = cache;
  v9 = [MEMORY[0x1E695DFA8] setWithArray:persons];
  v37 = otherPersonsCopy;
  [v9 addObjectsFromArray:otherPersonsCopy];
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
        backingMomentIdentifiers = [v11 backingMomentIdentifiers];
        [v40 unionSet:backingMomentIdentifiers];

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        backingMomentIdentifiers2 = [v11 backingMomentIdentifiers];
        v14 = [backingMomentIdentifiers2 countByEnumeratingWithState:&v46 objects:v55 count:16];
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
                objc_enumerationMutation(backingMomentIdentifiers2);
              }

              v18 = *(*(&v46 + 1) + 8 * j);
              v19 = [cacheCopy objectForKeyedSubscript:v18];
              if (!v19)
              {
                v19 = [MEMORY[0x1E695DFA8] set];
                [cacheCopy setObject:v19 forKeyedSubscript:v18];
              }

              [v19 addObject:v11];
            }

            v15 = [backingMomentIdentifiers2 countByEnumeratingWithState:&v46 objects:v55 count:16];
          }

          while (v15);
        }
      }

      v41 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v41);
  }

  v20 = selfCopy;
  personClusterManager = [(PNPersonDeduperStep *)selfCopy personClusterManager];
  allObjects = [v40 allObjects];
  v23 = [personClusterManager pn_fetchMomentsWithLocalIdentifiers:allObjects];

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

  delegate = [(PNPersonDeduperStep *)v20 delegate];
  v34 = [delegate densityClusteringForObjects:v24 maximumDistance:3 minimumNumberOfObjects:&__block_literal_global_3667 withDistanceBlock:500.0];

  return v34;
}

uint64_t __117__PNPersonDeduperLocationStep_momentWithBestLocationForPersons_andOtherPersons_personsByMomentLocalIdentifiersCache___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 approximateCoordinate];
  [v4 approximateCoordinate];

  return CLLocationCoordinate2DGetDistanceFrom();
}

- (BOOL)isPersonSimilar:(id)similar withOtherPerson:(id)person withDistance:(float)distance minAgeType:(unsigned __int16)type
{
  typeCopy = type;
  v9 = [(PNPersonDeduperStep *)self profile:similar];
  shouldRelaxThreshold = [v9 shouldRelaxThreshold];
  profile = [(PNPersonDeduperStep *)self profile];
  v12 = profile;
  if (shouldRelaxThreshold)
  {
    [profile fuzzyMaximumDistance];
  }

  else
  {
    [profile normalMaximumDistance];
  }

  v14 = v13;

  *&v14 = v14;
  LODWORD(v15) = LODWORD(v14);
  [(PNPersonDeduperStep *)self adjustedThreshold:typeCopy forMinAgeType:v15];
  return v16 > distance;
}

@end