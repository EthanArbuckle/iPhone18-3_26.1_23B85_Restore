@interface PNPersonDeduperSocialGroupOverlaps
- (BOOL)isPersonSimilar:(id)a3 withOtherPerson:(id)a4 withDistance:(float)a5 minAgeType:(unsigned __int16)a6;
- (void)dedupePersons:(id)a3 withOtherPersons:(id)a4 updateBlock:(id)a5 resultBlock:(id)a6;
- (void)mergePersons:(id)a3 otherPersonLocalIdentifiers:(id)a4 personsFetchResult:(id)a5 mergeSocialGroupPersonIdentifiers:(id)a6;
@end

@implementation PNPersonDeduperSocialGroupOverlaps

- (void)dedupePersons:(id)a3 withOtherPersons:(id)a4 updateBlock:(id)a5 resultBlock:(id)a6
{
  v115 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v93 = a5;
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
    v62 = v12;
    v63 = [MEMORY[0x1E696AAA8] currentHandler];
    [v63 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperSocialGroupOverlaps.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"persons"}];

    v12 = v62;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v64 = v12;
  v65 = [MEMORY[0x1E696AAA8] currentHandler];
  [v65 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperSocialGroupOverlaps.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"otherPersons"}];

  v12 = v64;
LABEL_3:
  if (!v93)
  {
    v66 = v12;
    v67 = [MEMORY[0x1E696AAA8] currentHandler];
    [v67 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperSocialGroupOverlaps.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"updateBlock"}];

    v12 = v66;
  }

  v77 = v12;
  if (!v12)
  {
    v68 = [MEMORY[0x1E696AAA8] currentHandler];
    [v68 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperSocialGroupOverlaps.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"resultBlock"}];
  }

  v13 = [v10 mutableCopy];
  [v13 unionSet:v11];
  v90 = [MEMORY[0x1E695DF90] dictionary];
  v14 = [(PNPersonDeduperStep *)self delegate];
  v15 = [(PNPersonDeduperStep *)self personClusterManager];
  v74 = v13;
  v16 = [v14 performSocialGroupsIdentifiersWithPersonClusterManager:v15 forPersons:v13 overTheYearsComputation:0 updateBlock:v93];

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
    v80 = v11;
    v82 = v10;
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
        v24 = self;
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
              if ([(PNPersonDeduperStep *)v24 shouldStopWithUpdateBlock:v93])
              {

                objc_autoreleasePoolPop(v75);
                v10 = v82;
                v18 = v84;
                v42 = v84;
                v17 = v78;
                v11 = v80;
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
                v37 = [(PNPersonDeduperStep *)v24 personClusterManager];
                v38 = [v36 allObjects];
                v39 = [v37 pn_fetchPersonsWithLocalIdentifiers:v38];

                v40 = [v22 mutableCopy];
                [v40 minusSet:v29];
                [(PNPersonDeduperSocialGroupOverlaps *)self mergePersons:v40 otherPersonLocalIdentifiers:v28 personsFetchResult:v39 mergeSocialGroupPersonIdentifiers:v90];
                v41 = [v28 mutableCopy];

                [v41 minusSet:v29];
                [(PNPersonDeduperSocialGroupOverlaps *)self mergePersons:v41 otherPersonLocalIdentifiers:v22 personsFetchResult:v39 mergeSocialGroupPersonIdentifiers:v90];

                v24 = self;
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
        v11 = v80;
        v10 = v82;
        v17 = v78;
        v18 = v84;
        v19 = v69;
      }

      while (v72 + 1 != v70);
      v70 = [v84 countByEnumeratingWithState:&v107 objects:v114 count:16];
    }

    while (v70);
  }

  v42 = [v11 mutableCopy];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v43 = v10;
  v73 = [v43 countByEnumeratingWithState:&v99 objects:v112 count:16];
  if (v73)
  {
    v44 = *v100;
    v81 = v11;
    v83 = v10;
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
            v52 = self;
            do
            {
              if (*v96 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v53 = *(*(&v95 + 1) + 8 * v51);
              if ([(PNPersonDeduperStep *)v52 shouldStop]|| [(PNPersonDeduperStep *)v52 shouldStopWithUpdateBlock:v93])
              {

                objc_autoreleasePoolPop(context);
                v11 = v81;
                v10 = v83;
                v17 = v79;
                v18 = v85;
                v42 = v87;
                v59 = obja;
                goto LABEL_52;
              }

              v54 = [v46 localIdentifier];
              v55 = [v90 objectForKeyedSubscript:v54];
              v56 = [v53 localIdentifier];
              v57 = [v55 containsObject:v56];

              v52 = self;
              if (v57)
              {
                v58 = objc_autoreleasePoolPush();
                [(PNPersonDeduperStep *)self addPotentialMergeCandidateForPerson:v46 withOtherPerson:v53 updateBlock:v93];
                objc_autoreleasePoolPop(v58);
              }

              ++v51;
            }

            while (v49 != v51);
            v49 = [v47 countByEnumeratingWithState:&v95 objects:v111 count:16];
            v11 = v81;
            v10 = v83;
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
    v59 = [(PNPersonDeduperStep *)self mergeCandidatePersonsWithUpdateBlock:v93];
    v60 = [v43 mutableCopy];
    v61 = [v11 mutableCopy];
    [v60 minusSet:v59];
    [v61 minusSet:v59];
    (v77)[2](v77, v60, v61);

LABEL_52:
  }

LABEL_53:
}

- (void)mergePersons:(id)a3 otherPersonLocalIdentifiers:(id)a4 personsFetchResult:(id)a5 mergeSocialGroupPersonIdentifiers:(id)a6
{
  v68 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 count] && objc_msgSend(v10, "count"))
  {
    v13 = objc_opt_new();
    v49 = objc_opt_new();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v43 = v11;
    v14 = v11;
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
          v20 = [v19 localIdentifier];
          v21 = [v9 containsObject:v20];
          v22 = v13;
          if ((v21 & 1) != 0 || (v23 = [v10 containsObject:v20], v22 = v49, v23))
          {
            [v22 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v61 objects:v67 count:16];
      }

      while (v16);
    }

    v44 = v10;
    v45 = v9;

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
                v31 = [v30 localIdentifier];
                v32 = [v25 localIdentifier];
                v33 = [v31 isEqualToString:v32];

                if ((v33 & 1) == 0)
                {
                  v34 = objc_autoreleasePoolPush();
                  v35 = [v25 localIdentifier];
                  v36 = [v12 objectForKeyedSubscript:v35];

                  if (!v36)
                  {
                    v36 = [MEMORY[0x1E695DF70] array];
                    v37 = [v25 localIdentifier];
                    [v12 setObject:v36 forKeyedSubscript:v37];
                  }

                  v38 = [v30 localIdentifier];
                  [v36 addObject:v38];

                  v39 = [v30 localIdentifier];
                  v40 = [v12 objectForKeyedSubscript:v39];

                  if (!v40)
                  {
                    v40 = [MEMORY[0x1E695DF70] array];
                    v41 = [v30 localIdentifier];
                    [v12 setObject:v40 forKeyedSubscript:v41];
                  }

                  v42 = [v25 localIdentifier];
                  [v40 addObject:v42];

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

    v10 = v44;
    v9 = v45;
    v11 = v43;
  }
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