@interface PNPersonDeduperSocialGroupComplementStep
- (BOOL)isPersonSimilar:(id)similar withOtherPerson:(id)person withDistance:(float)distance minAgeType:(unsigned __int16)type;
- (void)dedupePersons:(id)persons withOtherPersons:(id)otherPersons updateBlock:(id)block resultBlock:(id)resultBlock;
@end

@implementation PNPersonDeduperSocialGroupComplementStep

- (void)dedupePersons:(id)persons withOtherPersons:(id)otherPersons updateBlock:(id)block resultBlock:(id)resultBlock
{
  v138 = *MEMORY[0x1E69E9840];
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

LABEL_78:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PNPersonDeduperSocialGroupComplementStep.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"otherPersons"}];

    if (blockCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_79;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperSocialGroupComplementStep.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"persons"}];

  if (!otherPersonsCopy)
  {
    goto LABEL_78;
  }

LABEL_3:
  if (blockCopy)
  {
    goto LABEL_4;
  }

LABEL_79:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperSocialGroupComplementStep.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"updateBlock"}];

LABEL_4:
  v83 = resultBlockCopy;
  if (!resultBlockCopy)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperSocialGroupComplementStep.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"resultBlock"}];
  }

  v85 = personsCopy;
  v15 = [personsCopy mutableCopy];
  [v15 unionSet:otherPersonsCopy];
  delegate = [(PNPersonDeduperStep *)self delegate];
  personClusterManager = [(PNPersonDeduperStep *)self personClusterManager];
  v88 = [delegate performSocialGroupsIdentifiersWithPersonClusterManager:personClusterManager forPersons:v15 overTheYearsComputation:0 updateBlock:blockCopy];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v19 = v15;
  selfCopy = self;
  v103 = blockCopy;
  v82 = [v19 countByEnumeratingWithState:&v128 objects:v137 count:16];
  v87 = v19;
  if (v82)
  {
    v84 = *v129;
    v90 = otherPersonsCopy;
    while (2)
    {
      v20 = 0;
      v21 = blockCopy;
      do
      {
        if (*v129 != v84)
        {
          objc_enumerationMutation(v19);
        }

        v22 = *(*(&v128 + 1) + 8 * v20);
        v23 = objc_autoreleasePoolPush();
        if ([(PNPersonDeduperStep *)self shouldStopWithUpdateBlock:v21])
        {
LABEL_72:
          blockCopy = v21;
          objc_autoreleasePoolPop(v23);
          v59 = v19;
          otherPersonsCopy = v90;
          goto LABEL_73;
        }

        v89 = v23;
        v86 = v20;
        v24 = MEMORY[0x1E695DFA8];
        localIdentifier = [v22 localIdentifier];
        obj = [v24 setWithObject:localIdentifier];

        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v26 = v90;
        v27 = [v26 countByEnumeratingWithState:&v124 objects:v136 count:16];
        v28 = v22;
        if (v27)
        {
          v29 = v27;
          v30 = *v125;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v125 != v30)
              {
                objc_enumerationMutation(v26);
              }

              v32 = *(*(&v124 + 1) + 8 * i);
              if (v32 != v28)
              {
                backingAssetIdentifiers = [v28 backingAssetIdentifiers];
                backingAssetIdentifiers2 = [v32 backingAssetIdentifiers];
                v35 = [backingAssetIdentifiers intersectsSet:backingAssetIdentifiers2];

                if (v35)
                {
                  localIdentifier2 = [v32 localIdentifier];
                  [obj addObject:localIdentifier2];
                }
              }
            }

            v29 = [v26 countByEnumeratingWithState:&v124 objects:v136 count:16];
          }

          while (v29);
        }

        v98 = v28;

        self = selfCopy;
        v21 = v103;
        if ([obj count])
        {
          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v37 = v88;
          v38 = [v37 countByEnumeratingWithState:&v120 objects:v135 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v121;
            v92 = *v121;
            v94 = v37;
            while (2)
            {
              v41 = 0;
              v96 = v39;
              do
              {
                if (*v121 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = *(*(&v120 + 1) + 8 * v41);
                v43 = objc_autoreleasePoolPush();
                if ([(PNPersonDeduperStep *)self shouldStopWithUpdateBlock:v21])
                {
                  objc_autoreleasePoolPop(v43);

                  v19 = v87;
                  v23 = v89;
                  goto LABEL_72;
                }

                context = v43;
                v44 = [v42 mutableCopy];
                [v44 intersectSet:obj];
                v45 = [v44 count];
                if (v45 != [v42 count])
                {
                  v46 = vcvtmd_u64_f64(vcvtd_n_f64_u64([v42 count], 1uLL));
                  v47 = v46 <= 2 ? 2 : v46;
                  if ([v44 count] >= v47)
                  {
                    v100 = v41;
                    localIdentifier3 = [v98 localIdentifier];
                    v49 = [v42 mutableCopy];
                    [v49 minusSet:v44];
                    v118 = 0u;
                    v119 = 0u;
                    v116 = 0u;
                    v117 = 0u;
                    v50 = v49;
                    v51 = [v50 countByEnumeratingWithState:&v116 objects:v134 count:16];
                    v52 = v44;
                    if (v51)
                    {
                      v53 = v51;
                      v54 = *v117;
                      do
                      {
                        for (j = 0; j != v53; ++j)
                        {
                          if (*v117 != v54)
                          {
                            objc_enumerationMutation(v50);
                          }

                          v56 = *(*(&v116 + 1) + 8 * j);
                          v57 = [dictionary objectForKeyedSubscript:localIdentifier3];
                          if (!v57)
                          {
                            v57 = [MEMORY[0x1E695DFA8] set];
                            [dictionary setObject:v57 forKeyedSubscript:localIdentifier3];
                          }

                          [v57 addObject:v56];
                          v58 = [dictionary objectForKeyedSubscript:v56];

                          if (!v58)
                          {
                            v58 = [MEMORY[0x1E695DFA8] set];
                            [dictionary setObject:v58 forKeyedSubscript:v56];
                          }

                          [v58 addObject:localIdentifier3];
                        }

                        v53 = [v50 countByEnumeratingWithState:&v116 objects:v134 count:16];
                      }

                      while (v53);
                    }

                    self = selfCopy;
                    v44 = v52;
                    v21 = v103;
                    v40 = v92;
                    v37 = v94;
                    v39 = v96;
                    v41 = v100;
                  }
                }

                objc_autoreleasePoolPop(context);
                ++v41;
              }

              while (v41 != v39);
              v39 = [v37 countByEnumeratingWithState:&v120 objects:v135 count:16];
              if (v39)
              {
                continue;
              }

              break;
            }
          }
        }

        objc_autoreleasePoolPop(v89);
        v19 = v87;
        v20 = v86 + 1;
      }

      while (v86 + 1 != v82);
      blockCopy = v21;
      otherPersonsCopy = v90;
      v82 = [v87 countByEnumeratingWithState:&v128 objects:v137 count:16];
      if (v82)
      {
        continue;
      }

      break;
    }
  }

  v59 = [otherPersonsCopy mutableCopy];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v60 = v85;
  v95 = [v60 countByEnumeratingWithState:&v112 objects:v133 count:16];
  if (v95)
  {
    v61 = *v113;
    v91 = otherPersonsCopy;
    v93 = *v113;
    v99 = v60;
    v101 = v59;
    do
    {
      v62 = 0;
      do
      {
        if (*v113 != v61)
        {
          objc_enumerationMutation(v60);
        }

        v97 = v62;
        v63 = *(*(&v112 + 1) + 8 * v62);
        contexta = objc_autoreleasePoolPush();
        [v59 removeObject:v63];
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        obja = v59;
        v64 = [obja countByEnumeratingWithState:&v108 objects:v132 count:16];
        if (v64)
        {
          v65 = v64;
          v66 = *v109;
          while (2)
          {
            for (k = 0; k != v65; ++k)
            {
              if (*v109 != v66)
              {
                objc_enumerationMutation(obja);
              }

              v68 = *(*(&v108 + 1) + 8 * k);
              if ([(PNPersonDeduperStep *)self shouldStop]|| [(PNPersonDeduperStep *)self shouldStopWithUpdateBlock:blockCopy])
              {

                objc_autoreleasePoolPop(contexta);
                otherPersonsCopy = v91;
                v74 = v99;
                v59 = v101;
                goto LABEL_75;
              }

              localIdentifier4 = [v63 localIdentifier];
              v70 = [dictionary objectForKeyedSubscript:localIdentifier4];
              localIdentifier5 = [v68 localIdentifier];
              v72 = [v70 containsObject:localIdentifier5];

              blockCopy = v103;
              self = selfCopy;
              if (v72)
              {
                v73 = objc_autoreleasePoolPush();
                [(PNPersonDeduperStep *)selfCopy addPotentialMergeCandidateForPerson:v63 withOtherPerson:v68 updateBlock:v103];
                objc_autoreleasePoolPop(v73);
              }
            }

            v65 = [obja countByEnumeratingWithState:&v108 objects:v132 count:16];
            v19 = v87;
            v60 = v99;
            v59 = v101;
            if (v65)
            {
              continue;
            }

            break;
          }
        }

        objc_autoreleasePoolPop(contexta);
        v62 = v97 + 1;
        otherPersonsCopy = v91;
        v61 = v93;
      }

      while (v97 + 1 != v95);
      v95 = [v60 countByEnumeratingWithState:&v112 objects:v133 count:16];
    }

    while (v95);
  }

  if ([(PNPersonDeduperStep *)self shouldStop])
  {
LABEL_73:
    v77 = v83;
  }

  else
  {
    v74 = [(PNPersonDeduperStep *)self mergeCandidatePersonsWithUpdateBlock:blockCopy];
    v75 = [v60 mutableCopy];
    v76 = [otherPersonsCopy mutableCopy];
    [v75 minusSet:v74];
    [v76 minusSet:v74];
    v83[2](v83, v75, v76);

LABEL_75:
    v77 = v83;
    v19 = v87;
  }
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