@interface _PSLastCommunicatedFeatures
+ (double)timeIntervalSinceNowForInteraction:(id)interaction;
+ (id)featureValueFromTimeInterval:(double)interval;
+ (id)lastCommunicationFromCandidates:(id)candidates direction:(int64_t)direction mechanisms:(id)mechanisms caches:(id)caches;
+ (id)lastInteractionFromCandidate:(id)candidate caches:(id)caches direction:(int64_t)direction mechanisms:(id)mechanisms;
+ (id)recipientDetailsFromContact:(id)contact;
+ (int)bucketFromTimeInterval:(double)interval;
@end

@implementation _PSLastCommunicatedFeatures

+ (id)lastCommunicationFromCandidates:(id)candidates direction:(int64_t)direction mechanisms:(id)mechanisms caches:(id)caches
{
  mechanismsCopy = mechanisms;
  cachesCopy = caches;
  allObjects = [candidates allObjects];
  v12 = [_PSFeatureDictionary alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __91___PSLastCommunicatedFeatures_lastCommunicationFromCandidates_direction_mechanisms_caches___block_invoke;
  v18[3] = &unk_1E7C26920;
  v20 = mechanismsCopy;
  directionCopy = direction;
  v19 = cachesCopy;
  v13 = mechanismsCopy;
  v14 = cachesCopy;
  v15 = [allObjects _pas_mappedArrayWithTransform:v18];
  v16 = [(_PSFeatureDictionary *)v12 initWithObjects:v15 forKeys:allObjects];

  return v16;
}

+ (id)lastInteractionFromCandidate:(id)candidate caches:(id)caches direction:(int64_t)direction mechanisms:(id)mechanisms
{
  directionCopy = direction;
  v127 = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  cachesCopy = caches;
  mechanismsCopy = mechanisms;
  v75 = _PSShareSheetSuggestionBundleIDMapping(0);
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v10 = cachesCopy;
  v81 = v10;
  v94 = [v10 countByEnumeratingWithState:&v117 objects:v126 count:16];
  if (v94)
  {
    v11 = 0;
    v93 = *v118;
    do
    {
      v12 = 0;
      do
      {
        if (*v118 != v93)
        {
          objc_enumerationMutation(v81);
        }

        v95 = v12;
        v13 = *(*(&v117 + 1) + 8 * v12);
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v14 = mechanismsCopy;
        v15 = [v14 countByEnumeratingWithState:&v113 objects:v125 count:{16, v75}];
        if (v15)
        {
          v16 = v15;
          v17 = *v114;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v114 != v17)
              {
                objc_enumerationMutation(v14);
              }

              integerValue = [*(*(&v113 + 1) + 8 * i) integerValue];
              candidateIdentifier = [candidateCopy candidateIdentifier];
              v21 = [v13 mostRecentInteractionForCandidateIdentifier:candidateIdentifier direction:directionCopy mechanism:integerValue];

              if (!v11 || v21 && _CDStartDateCompare() == -1)
              {
                v22 = v21;

                v11 = v22;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v113 objects:v125 count:16];
          }

          while (v16);
        }

        v12 = v95 + 1;
      }

      while (v95 + 1 != v94);
      v94 = [v81 countByEnumeratingWithState:&v117 objects:v126 count:16];
    }

    while (v94);

    if (v11)
    {
      goto LABEL_85;
    }
  }

  else
  {
  }

  v84 = candidateCopy;
  v94 = v74;
  memset(v74, 0, 21);
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v23 = mechanismsCopy;
  v24 = [v23 countByEnumeratingWithState:&v109 objects:v124 count:16];
  v25 = v81;
  if (v24)
  {
    v26 = v24;
    v27 = *v110;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v110 != v27)
        {
          objc_enumerationMutation(v23);
        }

        integerValue2 = [*(*(&v109 + 1) + 8 * j) integerValue];
        if ((integerValue2 & 0x8000000000000000) != 0 || integerValue2 >= 0x15)
        {
          __break(1u);
        }

        v94[integerValue2] = 1;
      }

      v26 = [v23 countByEnumeratingWithState:&v109 objects:v124 count:16];
    }

    while (v26);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v78 = v25;
  v30 = [v78 countByEnumeratingWithState:&v105 objects:v123 count:16];
  if (v30)
  {
    v31 = v30;
    v11 = 0;
    v32 = *v106;
    candidateCopy = v84;
    v76 = *v106;
    do
    {
      v33 = 0;
      v77 = v31;
      do
      {
        if (*v106 != v32)
        {
          objc_enumerationMutation(v78);
        }

        v34 = *(*(&v105 + 1) + 8 * v33);
        v90 = objc_autoreleasePoolPush();
        candidateIdentifier2 = [candidateCopy candidateIdentifier];
        v36 = [v34 mostRecentInteractionForCandidateIdentifier:candidateIdentifier2 direction:directionCopy];

        if (v36)
        {
          v83 = v36;
          recipients = [v36 recipients];
          v38 = recipients;
          v39 = MEMORY[0x1E695E0F0];
          if (recipients)
          {
            v39 = recipients;
          }

          v40 = v39;

          sender = [v11 sender];

          if (sender)
          {
            sender2 = [v11 sender];
            v43 = [v40 arrayByAddingObject:sender2];

            v44 = v43;
          }

          else
          {
            v44 = v40;
          }

          v82 = v44;
          v45 = [_PSLastCommunicatedFeatures recipientDetailsFromContact:?];
          if (v45)
          {
            v80 = v33;
            v46 = v45;
            v91 = [v45 objectForKeyedSubscript:@"identifierSet"];
            v79 = v46;
            v85 = [v46 objectForKeyedSubscript:@"personIdSet"];
            v47 = objc_opt_new();
            v48 = objc_opt_new();
            v101 = 0u;
            v102 = 0u;
            v103 = 0u;
            v104 = 0u;
            interactions = [v34 interactions];
            v50 = [interactions countByEnumeratingWithState:&v101 objects:v122 count:16];
            if (v50)
            {
              v51 = v50;
              v52 = *v102;
              v86 = *v102;
              v87 = interactions;
              while (2)
              {
                v53 = 0;
                v89 = v51;
                do
                {
                  if (*v102 != v52)
                  {
                    objc_enumerationMutation(interactions);
                  }

                  v54 = *(*(&v101 + 1) + 8 * v53);
                  v95 = objc_autoreleasePoolPush();
                  if (v11 && _CDStartDateCompare() != -1)
                  {
                    goto LABEL_77;
                  }

                  direction = [v54 direction];
                  if (direction == directionCopy && [v54 mechanism] <= 0x14)
                  {
                    mechanism = [v54 mechanism];
                    if (v94[mechanism] == 1)
                    {
                      v92 = v53;
                      [v47 removeAllObjects];
                      [v48 removeAllObjects];
                      v99 = 0u;
                      v100 = 0u;
                      v97 = 0u;
                      v98 = 0u;
                      v93 = v54;
                      recipients2 = [v54 recipients];
                      v58 = [recipients2 countByEnumeratingWithState:&v97 objects:v121 count:16];
                      if (v58)
                      {
                        v59 = v58;
                        v60 = *v98;
                        do
                        {
                          for (k = 0; k != v59; ++k)
                          {
                            if (*v98 != v60)
                            {
                              objc_enumerationMutation(recipients2);
                            }

                            v62 = *(*(&v97 + 1) + 8 * k);
                            identifier = [v62 identifier];
                            if (identifier)
                            {
                              [v47 addObject:identifier];
                            }

                            personId = [v62 personId];
                            if (personId)
                            {
                              [v48 addObject:personId];
                            }
                          }

                          v59 = [recipients2 countByEnumeratingWithState:&v97 objects:v121 count:16];
                        }

                        while (v59);
                      }

                      v65 = v93;
                      sender3 = [v93 sender];
                      v67 = sender3;
                      candidateCopy = v84;
                      if (sender3)
                      {
                        identifier2 = [sender3 identifier];
                        if (identifier2)
                        {
                          [v47 addObject:identifier2];
                        }

                        personId2 = [v67 personId];
                        if (personId2)
                        {
                          [v48 addObject:personId2];
                        }
                      }

                      if ([v47 isEqual:v91] && (objc_msgSend(v48, "isEqual:", v85) & 1) != 0)
                      {
                        v70 = v65;

                        v11 = v70;
                        interactions = v87;
LABEL_77:
                        objc_autoreleasePoolPop(v95);
                        goto LABEL_78;
                      }

                      v52 = v86;
                      interactions = v87;
                      v51 = v89;
                      v53 = v92;
                    }
                  }

                  objc_autoreleasePoolPop(v95);
                  ++v53;
                }

                while (v53 != v51);
                v51 = [interactions countByEnumeratingWithState:&v101 objects:v122 count:16];
                if (v51)
                {
                  continue;
                }

                break;
              }
            }

LABEL_78:

            v32 = v76;
            v31 = v77;
            v45 = v79;
            v33 = v80;
          }

          v36 = v83;
        }

        objc_autoreleasePoolPop(v90);
        ++v33;
      }

      while (v33 != v31);
      v31 = [v78 countByEnumeratingWithState:&v105 objects:v123 count:16];
    }

    while (v31);
  }

  else
  {
    v11 = 0;
    candidateCopy = v84;
  }

LABEL_85:
  v71 = v11;

  v72 = *MEMORY[0x1E69E9840];

  return v71;
}

+ (double)timeIntervalSinceNowForInteraction:(id)interaction
{
  interactionCopy = interaction;
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [distantPast timeIntervalSinceNow];
  v6 = v5;

  if (interactionCopy)
  {
    endDate = [interactionCopy endDate];

    if (endDate)
    {
      endDate2 = [interactionCopy endDate];
      [endDate2 timeIntervalSinceNow];
      v6 = v9;
    }
  }

  return v6;
}

+ (id)featureValueFromTimeInterval:(double)interval
{
  v4 = [_PSLastCommunicatedFeatures bucketFromTimeInterval:?];
  v5 = objc_alloc(MEMORY[0x1E698ECC0]);
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:interval];
  v7 = [v5 initWithIntValue:0 doubleValue:v6 stringValue:0 BOOLValue:0 timeBucketValue:v4];

  return v7;
}

+ (int)bucketFromTimeInterval:(double)interval
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v5 = objc_alloc(MEMORY[0x1E695DEE8]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v7 setMonth:-1];
  v8 = [v6 dateByAddingComponents:v7 toDate:v4 options:0];
  [v8 timeIntervalSinceNow];
  v10 = v9;

  v11 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v11 setMonth:-3];
  v12 = [v6 dateByAddingComponents:v11 toDate:v4 options:0];
  [v12 timeIntervalSinceNow];
  v14 = v13;

  v15 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v15 setMonth:-6];
  v16 = [v6 dateByAddingComponents:v15 toDate:v4 options:0];
  [v16 timeIntervalSinceNow];
  v18 = v17;

  v19 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v15 setYear:-1];
  v20 = [v6 dateByAddingComponents:v19 toDate:v4 options:0];
  [v20 timeIntervalSinceNow];
  v22 = v21;

  v23 = fabs(interval);
  if (v23 >= 120.0)
  {
    if (v23 >= 300.0)
    {
      if (v23 >= 600.0)
      {
        if (v23 >= 1800.0)
        {
          if (v23 >= 3600.0)
          {
            if (v23 >= 7200.0)
            {
              if (v23 >= 14400.0)
              {
                if (v23 >= 21600.0)
                {
                  if (v23 >= 43200.0)
                  {
                    if (v23 >= 86400.0)
                    {
                      if (v23 >= 172800.0)
                      {
                        if (v23 >= 259200.0)
                        {
                          if (v23 >= 345600.0)
                          {
                            if (v23 >= 432000.0)
                            {
                              if (v23 >= 518400.0)
                              {
                                if (v23 >= 604800.0)
                                {
                                  if (v23 >= fabs(v10))
                                  {
                                    if (v23 >= fabs(v14))
                                    {
                                      if (v23 >= fabs(v18))
                                      {
                                        v25 = fabs(v22);
                                        if (v23 >= v25)
                                        {
                                          if (v23 >= v25 * 5.0)
                                          {
                                            v24 = 22;
                                          }

                                          else
                                          {
                                            v24 = 21;
                                          }
                                        }

                                        else
                                        {
                                          v24 = 20;
                                        }
                                      }

                                      else
                                      {
                                        v24 = 19;
                                      }
                                    }

                                    else
                                    {
                                      v24 = 18;
                                    }
                                  }

                                  else
                                  {
                                    v24 = 17;
                                  }
                                }

                                else
                                {
                                  v24 = 16;
                                }
                              }

                              else
                              {
                                v24 = 15;
                              }
                            }

                            else
                            {
                              v24 = 14;
                            }
                          }

                          else
                          {
                            v24 = 13;
                          }
                        }

                        else
                        {
                          v24 = 12;
                        }
                      }

                      else
                      {
                        v24 = 11;
                      }
                    }

                    else
                    {
                      v24 = 10;
                    }
                  }

                  else
                  {
                    v24 = 9;
                  }
                }

                else
                {
                  v24 = 8;
                }
              }

              else
              {
                v24 = 7;
              }
            }

            else
            {
              v24 = 6;
            }
          }

          else
          {
            v24 = 5;
          }
        }

        else
        {
          v24 = 4;
        }
      }

      else
      {
        v24 = 3;
      }
    }

    else
    {
      v24 = 2;
    }
  }

  else
  {
    v24 = 1;
  }

  return v24;
}

+ (id)recipientDetailsFromContact:(id)contact
{
  v24 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (contactCopy)
  {
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = contactCopy;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          identifier = [v12 identifier];

          if (identifier)
          {
            identifier2 = [v12 identifier];
            [v5 addObject:identifier2];
          }

          personId = [v12 personId];

          if (personId)
          {
            personId2 = [v12 personId];
            [v6 addObject:personId2];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [v4 setObject:v5 forKeyedSubscript:@"identifierSet"];
    [v4 setObject:v6 forKeyedSubscript:@"personIdSet"];
  }

  else
  {
    v4 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

@end