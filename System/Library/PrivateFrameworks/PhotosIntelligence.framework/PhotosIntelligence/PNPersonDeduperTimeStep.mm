@interface PNPersonDeduperTimeStep
- (BOOL)isPersonSimilar:(id)a3 withOtherPerson:(id)a4 withDistance:(float)a5 minAgeType:(unsigned __int16)a6;
- (void)dedupePersons:(id)a3 withOtherPersons:(id)a4 updateBlock:(id)a5 resultBlock:(id)a6;
@end

@implementation PNPersonDeduperTimeStep

- (void)dedupePersons:(id)a3 withOtherPersons:(id)a4 updateBlock:(id)a5 resultBlock:(id)a6
{
  v81 = *MEMORY[0x1E69E9840];
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
  }

  else
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperTimeStep.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"persons"}];

    if (v12)
    {
LABEL_3:
      if (v13)
      {
        goto LABEL_4;
      }

LABEL_45:
      v50 = [MEMORY[0x1E696AAA8] currentHandler];
      [v50 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperTimeStep.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"updateBlock"}];

      if (v14)
      {
        goto LABEL_5;
      }

      goto LABEL_46;
    }
  }

  v49 = [MEMORY[0x1E696AAA8] currentHandler];
  [v49 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperTimeStep.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"otherPersons"}];

  if (!v13)
  {
    goto LABEL_45;
  }

LABEL_4:
  if (v14)
  {
    goto LABEL_5;
  }

LABEL_46:
  v51 = [MEMORY[0x1E696AAA8] currentHandler];
  [v51 handleFailureInMethod:a2 object:self file:@"PNPersonDeduperTimeStep.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"resultBlock"}];

LABEL_5:
  v15 = +[PNPersonClusterManager personProcessingSortDescriptors];
  v16 = [v11 sortedArrayUsingDescriptors:v15];
  v62 = v15;
  v17 = [v12 sortedArrayUsingDescriptors:v15];
  v66 = [MEMORY[0x1E695DFA8] set];
  v65 = [v16 mutableCopy];
  v18 = [v11 count];
  v19 = [v12 count];
  if (v18 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  v63 = v17;
  if (v20)
  {
    v61 = 0;
    v21 = v20;
    v64 = v16;
    v52 = v20;
    while (1)
    {
      v22 = [v17 mutableCopy];
      v23 = v66;
      if ([v66 count])
      {
        v24 = [v66 allObjects];
        [v22 removeObjectsInArray:v24];
        [v65 removeObjectsInArray:v24];
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v25 = v65;
      v16 = v64;
      v55 = [v25 countByEnumeratingWithState:&v71 objects:v80 count:16];
      if (v55)
      {
        v26 = *v72;
        v27 = 0.0;
        v28 = 0.0;
        v58 = v12;
        v59 = v11;
        v57 = v14;
        v53 = v22;
        v54 = *v72;
        v60 = v25;
        do
        {
          v29 = 0;
          do
          {
            if (*v72 != v26)
            {
              v30 = v29;
              objc_enumerationMutation(v25);
              v29 = v30;
            }

            v56 = v29;
            v31 = *(*(&v71 + 1) + 8 * v29);
            [v22 removeObject:v31];
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v32 = v22;
            v33 = [v32 countByEnumeratingWithState:&v67 objects:v79 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v68;
              while (2)
              {
                for (i = 0; i != v34; ++i)
                {
                  if (*v68 != v35)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v37 = *(*(&v67 + 1) + 8 * i);
                  v38 = objc_autoreleasePoolPush();
                  *&v39 = ((v28 * v27) + (v21 * v61)) / (v21 * (v61 + 2));
                  [(PNPersonDeduperStep *)self setProgress:v39];
                  if ([(PNPersonDeduperStep *)self shouldStop]|| [(PNPersonDeduperStep *)self shouldStopWithUpdateBlock:v13])
                  {
                    objc_autoreleasePoolPop(v38);

                    v12 = v58;
                    v11 = v59;
                    v14 = v57;
                    v45 = v62;
                    v16 = v64;
                    v23 = v66;
                    v46 = v60;
                    goto LABEL_40;
                  }

                  v40 = objc_autoreleasePoolPush();
                  [(PNPersonDeduperStep *)self addPotentialMergeCandidateForPerson:v31 withOtherPerson:v37 updateBlock:v13];
                  objc_autoreleasePoolPop(v40);
                  v27 = v27 + 1.0;
                  objc_autoreleasePoolPop(v38);
                }

                v34 = [v32 countByEnumeratingWithState:&v67 objects:v79 count:16];
                v12 = v58;
                v11 = v59;
                v14 = v57;
                v23 = v66;
                if (v34)
                {
                  continue;
                }

                break;
              }
            }

            v28 = v28 + 1.0;
            v29 = v56 + 1;
            v17 = v63;
            v16 = v64;
            v22 = v53;
            v26 = v54;
            v25 = v60;
          }

          while (v56 + 1 != v55);
          v41 = [v60 countByEnumeratingWithState:&v71 objects:v80 count:16];
          v26 = v54;
          v55 = v41;
        }

        while (v41);
      }

      if ([(PNPersonDeduperStep *)self shouldStop])
      {
        break;
      }

      v42 = [(PNPersonDeduperStep *)self mergeCandidatePersonsWithUpdateBlock:v13];
      if ([v42 count] && !-[PNPersonDeduperStep shouldStop](self, "shouldStop"))
      {
        [v23 unionSet:v42];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v44 = [v42 count];
          *buf = 136315394;
          v76 = "[PNPersonDeduperTimeStep dedupePersons:withOtherPersons:updateBlock:resultBlock:]";
          v77 = 2048;
          v78 = v44;
          _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%s: Merged %lu persons -------- Re-running.", buf, 0x16u);
        }

        v43 = 1;
      }

      else
      {
        v43 = 0;
      }

      if (v43)
      {
        if (++v61 < v52)
        {
          continue;
        }
      }

      goto LABEL_39;
    }

    v47 = v65;
    v45 = v62;
  }

  else
  {
LABEL_39:
    v32 = [v11 mutableCopy];
    v46 = [v12 mutableCopy];
    v23 = v66;
    [v32 minusSet:v66];
    [v46 minusSet:v66];
    v14[2](v14, v32, v46);
    v45 = v62;
LABEL_40:

    v22 = v32;
    v17 = v63;
    v47 = v65;
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
    [v11 normalMaximumDistance];
  }

  else
  {
    [v11 strictMaximumDistance];
  }

  v14 = v13;

  *&v14 = v14;
  LODWORD(v15) = LODWORD(v14);
  [(PNPersonDeduperStep *)self adjustedThreshold:v6 forMinAgeType:v15];
  return v16 > a5;
}

@end