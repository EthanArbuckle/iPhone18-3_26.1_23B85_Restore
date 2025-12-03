@interface PNPersonDeduperSocialGroupOverlaps
- (BOOL)isPersonSimilar:(id)similar withOtherPerson:(id)person withDistance:(float)distance minAgeType:(unsigned __int16)type;
- (void)dedupePersons:(id)persons withOtherPersons:(id)otherPersons updateBlock:(id)block resultBlock:(id)resultBlock;
- (void)mergePersons:(id)persons otherPersonLocalIdentifiers:(id)identifiers personsFetchResult:(id)result mergeSocialGroupPersonIdentifiers:(id)personIdentifiers;
@end

@implementation PNPersonDeduperSocialGroupOverlaps

- (void)dedupePersons:(id)persons withOtherPersons:(id)otherPersons updateBlock:(id)block resultBlock:(id)resultBlock
{
  v115 = *MEMORY[0x1E69E9840];
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
    v62 = resultBlockCopy;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PNPersonDeduperSocialGroupOverlaps.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"persons"}];

    resultBlockCopy = v62;
    if (otherPersonsCopy)
    {
      goto LABEL_3;
    }
  }

  v64 = resultBlockCopy;
  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperSocialGroupOverlaps.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"otherPersons"}];

  resultBlockCopy = v64;
LABEL_3:
  if (!blockCopy)
  {
    v66 = resultBlockCopy;
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperSocialGroupOverlaps.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"updateBlock"}];

    resultBlockCopy = v66;
  }

  v77 = resultBlockCopy;
  if (!resultBlockCopy)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperSocialGroupOverlaps.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"resultBlock"}];
  }

  v13 = [personsCopy mutableCopy];
  [v13 unionSet:otherPersonsCopy];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  delegate = [(PNPersonDeduperStep *)self delegate];
  personClusterManager = [(PNPersonDeduperStep *)self personClusterManager];
  v74 = v13;
  v16 = [delegate performSocialGroupsIdentifiersWithPersonClusterManager:personClusterManager forPersons:v13 overTheYearsComputation:0 updateBlock:blockCopy];

  v17 = [v16 mutableCopy];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v18 = v16;
  v70 = [v18 countByEnumeratingWithState:&v107 objects:v114 count:16];
  if (v70)
  {
    v19 = *v108;
    v80 = otherPersonsCopy;
    v82 = personsCopy;
    v78 = v17;
    v84 = v18;
    v69 = *v108;
    do
    {
      v20 = 0;
      do
      {
        if (*v108 != v19)
        {
          v21 = v20;
          objc_enumerationMutation(v18);
          v20 = v21;
        }

        v72 = v20;
        v22 = *(*(&v107 + 1) + 8 * v20);
        v75 = objc_autoreleasePoolPush();
        [v17 removeObject:v22];
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        obj = v17;
        v23 = [obj countByEnumeratingWithState:&v103 objects:v113 count:16];
        selfCopy2 = self;
        if (v23)
        {
          v25 = v23;
          v26 = *v104;
          v86 = *v104;
          while (2)
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v104 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v103 + 1) + 8 * i);
              if ([(PNPersonDeduperStep *)selfCopy2 shouldStopWithUpdateBlock:blockCopy])
              {

                objc_autoreleasePoolPop(v75);
                personsCopy = v82;
                v18 = v84;
                v42 = v84;
                v17 = v78;
                otherPersonsCopy = v80;
                goto LABEL_53;
              }

              v29 = [v22 mutableCopy];
              [v29 intersectSet:v28];
              v30 = [v22 count];
              v31 = [v28 count];
              if (v30 >= v31)
              {
                v32 = v31;
              }

              else
              {
                v32 = v30;
              }

              v33 = vcvtmd_u64_f64(vcvtd_n_f64_u64(v32, 1uLL));
              if (v33 <= 2)
              {
                v34 = 2;
              }

              else
              {
                v34 = v33;
              }

              if ([v29 count] >= v34)
              {
                contexta = objc_autoreleasePoolPush();
                v35 = v25;
                v36 = [v22 mutableCopy];
                [v36 unionSet:v28];
                personClusterManager2 = [(PNPersonDeduperStep *)selfCopy2 personClusterManager];
                allObjects = [v36 allObjects];
                v39 = [personClusterManager2 pn_fetchPersonsWithLocalIdentifiers:allObjects];

                v40 = [v22 mutableCopy];
                [v40 minusSet:v29];
                [(PNPersonDeduperSocialGroupOverlaps *)self mergePersons:v40 otherPersonLocalIdentifiers:v28 personsFetchResult:v39 mergeSocialGroupPersonIdentifiers:dictionary];
                v41 = [v28 mutableCopy];

                [v41 minusSet:v29];
                [(PNPersonDeduperSocialGroupOverlaps *)self mergePersons:v41 otherPersonLocalIdentifiers:v22 personsFetchResult:v39 mergeSocialGroupPersonIdentifiers:dictionary];

                selfCopy2 = self;
                v25 = v35;
                v26 = v86;
                objc_autoreleasePoolPop(contexta);
              }
            }

            v25 = [obj countByEnumeratingWithState:&v103 objects:v113 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        objc_autoreleasePoolPop(v75);
        v20 = v72 + 1;
        otherPersonsCopy = v80;
        personsCopy = v82;
        v17 = v78;
        v18 = v84;
        v19 = v69;
      }

      while (v72 + 1 != v70);
      v70 = [v84 countByEnumeratingWithState:&v107 objects:v114 count:16];
    }

    while (v70);
  }

  v42 = [otherPersonsCopy mutableCopy];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v43 = personsCopy;
  v73 = [v43 countByEnumeratingWithState:&v99 objects:v112 count:16];
  if (v73)
  {
    v44 = *v100;
    v81 = otherPersonsCopy;
    v83 = personsCopy;
    v79 = v17;
    v85 = v18;
    v87 = v42;
    obja = v43;
    v71 = *v100;
    do
    {
      v45 = 0;
      do
      {
        if (*v100 != v44)
        {
          objc_enumerationMutation(v43);
        }

        v76 = v45;
        v46 = *(*(&v99 + 1) + 8 * v45);
        context = objc_autoreleasePoolPush();
        [v42 removeObject:v46];
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v47 = v42;
        v48 = [v47 countByEnumeratingWithState:&v95 objects:v111 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v96;
          while (2)
          {
            v51 = 0;
            selfCopy4 = self;
            do
            {
              if (*v96 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v53 = *(*(&v95 + 1) + 8 * v51);
              if ([(PNPersonDeduperStep *)selfCopy4 shouldStop]|| [(PNPersonDeduperStep *)selfCopy4 shouldStopWithUpdateBlock:blockCopy])
              {

                objc_autoreleasePoolPop(context);
                otherPersonsCopy = v81;
                personsCopy = v83;
                v17 = v79;
                v18 = v85;
                v42 = v87;
                v59 = obja;
                goto LABEL_52;
              }

              localIdentifier = [v46 localIdentifier];
              v55 = [dictionary objectForKeyedSubscript:localIdentifier];
              localIdentifier2 = [v53 localIdentifier];
              v57 = [v55 containsObject:localIdentifier2];

              selfCopy4 = self;
              if (v57)
              {
                v58 = objc_autoreleasePoolPush();
                [(PNPersonDeduperStep *)self addPotentialMergeCandidateForPerson:v46 withOtherPerson:v53 updateBlock:blockCopy];
                objc_autoreleasePoolPop(v58);
              }

              ++v51;
            }

            while (v49 != v51);
            v49 = [v47 countByEnumeratingWithState:&v95 objects:v111 count:16];
            otherPersonsCopy = v81;
            personsCopy = v83;
            v17 = v79;
            v42 = v87;
            if (v49)
            {
              continue;
            }

            break;
          }
        }

        objc_autoreleasePoolPop(context);
        v45 = v76 + 1;
        v44 = v71;
        v18 = v85;
        v43 = obja;
      }

      while (v76 + 1 != v73);
      v73 = [obja countByEnumeratingWithState:&v99 objects:v112 count:16];
    }

    while (v73);
  }

  if (![(PNPersonDeduperStep *)self shouldStop])
  {
    v59 = [(PNPersonDeduperStep *)self mergeCandidatePersonsWithUpdateBlock:blockCopy];
    v60 = [v43 mutableCopy];
    v61 = [otherPersonsCopy mutableCopy];
    [v60 minusSet:v59];
    [v61 minusSet:v59];
    (v77)[2](v77, v60, v61);

LABEL_52:
  }

LABEL_53:
}

- (void)mergePersons:(id)persons otherPersonLocalIdentifiers:(id)identifiers personsFetchResult:(id)result mergeSocialGroupPersonIdentifiers:(id)personIdentifiers
{
  v68 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  identifiersCopy = identifiers;
  resultCopy = result;
  personIdentifiersCopy = personIdentifiers;
  if ([personsCopy count] && objc_msgSend(identifiersCopy, "count"))
  {
    v13 = objc_opt_new();
    v49 = objc_opt_new();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v43 = resultCopy;
    v14 = resultCopy;
    v15 = [v14 countByEnumeratingWithState:&v61 objects:v67 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v62;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v62 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v61 + 1) + 8 * i);
          localIdentifier = [v19 localIdentifier];
          v21 = [personsCopy containsObject:localIdentifier];
          v22 = v13;
          if ((v21 & 1) != 0 || (v23 = [identifiersCopy containsObject:localIdentifier], v22 = v49, v23))
          {
            [v22 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v61 objects:v67 count:16];
      }

      while (v16);
    }

    v44 = identifiersCopy;
    v45 = personsCopy;

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v13;
    v48 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v48)
    {
      v47 = *v58;
      do
      {
        v24 = 0;
        do
        {
          if (*v58 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v51 = v24;
          v25 = *(*(&v57 + 1) + 8 * v24);
          context = objc_autoreleasePoolPush();
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v52 = v49;
          v26 = [v52 countByEnumeratingWithState:&v53 objects:v65 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v54;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v54 != v28)
                {
                  objc_enumerationMutation(v52);
                }

                v30 = *(*(&v53 + 1) + 8 * j);
                localIdentifier2 = [v30 localIdentifier];
                localIdentifier3 = [v25 localIdentifier];
                v33 = [localIdentifier2 isEqualToString:localIdentifier3];

                if ((v33 & 1) == 0)
                {
                  v34 = objc_autoreleasePoolPush();
                  localIdentifier4 = [v25 localIdentifier];
                  array = [personIdentifiersCopy objectForKeyedSubscript:localIdentifier4];

                  if (!array)
                  {
                    array = [MEMORY[0x1E695DF70] array];
                    localIdentifier5 = [v25 localIdentifier];
                    [personIdentifiersCopy setObject:array forKeyedSubscript:localIdentifier5];
                  }

                  localIdentifier6 = [v30 localIdentifier];
                  [array addObject:localIdentifier6];

                  localIdentifier7 = [v30 localIdentifier];
                  array2 = [personIdentifiersCopy objectForKeyedSubscript:localIdentifier7];

                  if (!array2)
                  {
                    array2 = [MEMORY[0x1E695DF70] array];
                    localIdentifier8 = [v30 localIdentifier];
                    [personIdentifiersCopy setObject:array2 forKeyedSubscript:localIdentifier8];
                  }

                  localIdentifier9 = [v25 localIdentifier];
                  [array2 addObject:localIdentifier9];

                  objc_autoreleasePoolPop(v34);
                }
              }

              v27 = [v52 countByEnumeratingWithState:&v53 objects:v65 count:16];
            }

            while (v27);
          }

          objc_autoreleasePoolPop(context);
          v24 = v51 + 1;
        }

        while (v51 + 1 != v48);
        v48 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v48);
    }

    identifiersCopy = v44;
    personsCopy = v45;
    resultCopy = v43;
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