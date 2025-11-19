@interface PNPersonDeduperSocialGroupTimeWarpingStep
- (BOOL)isPersonSimilar:(id)a3 withOtherPerson:(id)a4 withDistance:(float)a5 minAgeType:(unsigned __int16)a6;
- (void)dedupePersons:(id)a3 withOtherPersons:(id)a4 updateBlock:(id)a5 resultBlock:(id)a6;
@end

@implementation PNPersonDeduperSocialGroupTimeWarpingStep

- (void)dedupePersons:(id)a3 withOtherPersons:(id)a4 updateBlock:(id)a5 resultBlock:(id)a6
{
  v98 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_45:
    v56 = [MEMORY[0x1E696AAA8] currentHandler];
    [v56 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperSocialGroupTimeWarpingStep.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"otherPersons"}];

    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_46;
  }

  v55 = [MEMORY[0x1E696AAA8] currentHandler];
  [v55 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperSocialGroupTimeWarpingStep.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"verifiedPersons"}];

  if (!v12)
  {
    goto LABEL_45;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_46:
  v57 = [MEMORY[0x1E696AAA8] currentHandler];
  [v57 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperSocialGroupTimeWarpingStep.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"updateBlock"}];

LABEL_4:
  v69 = v14;
  if (!v14)
  {
    v58 = [MEMORY[0x1E696AAA8] currentHandler];
    [v58 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperSocialGroupTimeWarpingStep.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"resultBlock"}];
  }

  v61 = a2;
  v70 = v12;
  v15 = [v11 setByAddingObjectsFromSet:v12];
  v16 = [(PNPersonDeduperStep *)self delegate];
  v76 = self;
  v17 = [(PNPersonDeduperStep *)self personClusterManager];
  v18 = [v16 performSocialGroupsIdentifiersWithPersonClusterManager:v17 forPersons:v15 overTheYearsComputation:1 updateBlock:v13];

  v19 = objc_opt_new();
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v20 = v15;
  v21 = [v20 countByEnumeratingWithState:&v91 objects:v97 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v92;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v92 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v91 + 1) + 8 * i);
        v26 = [v25 localIdentifier];
        [v19 setObject:v25 forKeyedSubscript:v26];
      }

      v22 = [v20 countByEnumeratingWithState:&v91 objects:v97 count:16];
    }

    while (v22);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__PNPersonDeduperSocialGroupTimeWarpingStep_dedupePersons_withOtherPersons_updateBlock_resultBlock___block_invoke;
  aBlock[3] = &unk_1E82A26B8;
  v67 = v19;
  v27 = v76;
  v87 = v67;
  v88 = v76;
  v77 = v13;
  v90 = v77;
  v28 = v11;
  v89 = v28;
  v29 = _Block_copy(aBlock);
  v30 = [v18 count];
  v31 = [v18 mutableCopy];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v32 = v18;
  v73 = v29;
  v63 = [v32 countByEnumeratingWithState:&v82 objects:v96 count:16];
  v71 = v31;
  if (v63)
  {
    v33 = *v83;
    v34 = v30;
    v72 = 0;
    v65 = v32;
    v66 = v28;
    v62 = *v83;
    do
    {
      v35 = 0;
      do
      {
        if (*v83 != v33)
        {
          objc_enumerationMutation(v32);
        }

        v64 = v35;
        v36 = *(*(&v82 + 1) + 8 * v35);
        v68 = objc_autoreleasePoolPush();
        *&v37 = v72 / v34;
        [(PNPersonDeduperStep *)v27 setProgress:v37];
        [v31 removeObject:v36];
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        obj = v31;
        v38 = [obj countByEnumeratingWithState:&v78 objects:v95 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v79;
          while (2)
          {
            for (j = 0; j != v39; ++j)
            {
              if (*v79 != v40)
              {
                objc_enumerationMutation(obj);
              }

              v42 = *(*(&v78 + 1) + 8 * j);
              if ([(PNPersonDeduperStep *)v27 shouldStop]|| [(PNPersonDeduperStep *)v27 shouldStopWithUpdateBlock:v77])
              {

                objc_autoreleasePoolPop(v68);
                v32 = v65;
                v28 = v66;
                v52 = v65;
                v29 = v73;
                goto LABEL_42;
              }

              v43 = [v36 mutableCopy];
              [v43 intersectSet:v42];
              v44 = [v36 count];
              v45 = [v42 count];
              if (v44 >= v45)
              {
                v46 = v45;
              }

              else
              {
                v46 = v44;
              }

              v47 = vcvtmd_u64_f64(vcvtd_n_f64_u64(v46, 1uLL));
              if (v47 <= 2)
              {
                v48 = 2;
              }

              else
              {
                v48 = v47;
              }

              if ([v43 count] >= v48)
              {
                context = objc_autoreleasePoolPush();
                v49 = [v36 mutableCopy];
                [v49 minusSet:v43];
                v73[2](v73, v49, v42);
                v50 = [v42 mutableCopy];

                [v50 minusSet:v43];
                v73[2](v73, v50, v36);

                objc_autoreleasePoolPop(context);
              }

              v27 = v76;
            }

            v39 = [obj countByEnumeratingWithState:&v78 objects:v95 count:16];
            v32 = v65;
            v28 = v66;
            if (v39)
            {
              continue;
            }

            break;
          }
        }

        ++v72;

        objc_autoreleasePoolPop(v68);
        v35 = v64 + 1;
        v31 = v71;
        v33 = v62;
        v29 = v73;
      }

      while (v64 + 1 != v63);
      v63 = [v32 countByEnumeratingWithState:&v82 objects:v96 count:16];
    }

    while (v63);
  }

  v51 = v70;
  if (![(PNPersonDeduperStep *)v27 shouldStop])
  {
    v52 = [(PNPersonDeduperStep *)v27 mergeCandidatePersonsWithUpdateBlock:v77];
    v53 = [v28 mutableCopy];
    if ([v53 intersectsSet:v52])
    {
      [MEMORY[0x1E696AAA8] currentHandler];
      v60 = v59 = v32;
      [v60 handleFailureInMethod:v61 object:v27 file:@"PNPersonDeduperSocialGroupTimeWarpingStep.m" lineNumber:139 description:@"Cannot dedup verified persons"];

      v32 = v59;
      v29 = v73;
    }

    v54 = [v70 mutableCopy];
    [v54 minusSet:v52];
    (v69)[2](v69, v53, v54);

LABEL_42:
    v51 = v70;
  }
}

void __100__PNPersonDeduperSocialGroupTimeWarpingStep_dedupePersons_withOtherPersons_updateBlock_resultBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v5;
  v20 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v20)
  {
    v8 = *v27;
    v21 = v6;
    v19 = *v27;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v10 = [*(a1 + 32) objectForKeyedSubscript:*(*(&v26 + 1) + 8 * i)];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = v6;
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v22 + 1) + 8 * j);
              if ([*(a1 + 40) shouldStop] & 1) != 0 || (objc_msgSend(*(a1 + 40), "shouldStopWithUpdateBlock:", *(a1 + 56)))
              {

                v6 = v21;
                goto LABEL_22;
              }

              v17 = [*(a1 + 32) objectForKeyedSubscript:v16];
              if (![*(a1 + 48) containsObject:v10] || (objc_msgSend(*(a1 + 48), "containsObject:", v17) & 1) == 0)
              {
                v18 = objc_autoreleasePoolPush();
                [*(a1 + 40) addPotentialMergeCandidateForPerson:v10 withOtherPerson:v17 updateBlock:*(a1 + 56)];
                objc_autoreleasePoolPop(v18);
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
            v6 = v21;
            v8 = v19;
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v20 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v20);
  }

LABEL_22:
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