@interface TAMetricsVisit
- (NSString)description;
- (TAMetricsVisit)initWithSnapshotHistory:(id)a3 andAddress:(id)a4 andVisitFilterSettings:(id)a5;
- (id)descriptionDictionary;
@end

@implementation TAMetricsVisit

- (TAMetricsVisit)initWithSnapshotHistory:(id)a3 andAddress:(id)a4 andVisitFilterSettings:(id)a5
{
  v115 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v112.receiver = self;
  v112.super_class = TAMetricsVisit;
  v11 = [(TAMetricsVisit *)&v112 init];
  if (!v11)
  {
LABEL_44:
    v12 = v11;
    goto LABEL_47;
  }

  v12 = 0;
  if (v8 && v9 && v10)
  {
    if ([v8 count])
    {
      v13 = [v8 lastObject];
      v14 = v13;
      if (v13)
      {
        if ([v13 isClosed])
        {
          v15 = [v14 latestUtAdvertisements];
          v16 = [v15 objectForKey:v9];

          if (v16)
          {
            v17 = [v9 copy];
            v18 = *(v11 + 1);
            *(v11 + 1) = v17;

            v19 = [v14 representativeVisit];
            [v19 coordinate];
            *(v11 + 10) = v20;

            v21 = [v14 representativeVisit];
            [v21 coordinate];
            *(v11 + 11) = v22;

            v23 = [v14 getArrivalDelay];
            v24 = *(v11 + 8);
            *(v11 + 8) = v23;

            v25 = [v14 getDepartureDelay];
            v26 = *(v11 + 9);
            *(v11 + 9) = v25;

            [v10 entryDisplayOnBudget];
            [v14 getDurationOfVisitEntryConsideredWithDisplayOnBudget:?];
            *(v11 + 6) = v27;
            [v10 exitDisplayOnBudget];
            [v14 getDurationOfVisitExitConsideredWithDisplayOnBudget:?];
            *(v11 + 7) = v28;
            v29 = [v14 latestUtAdvertisements];
            v90 = v9;
            v30 = [v29 objectForKey:v9];
            v31 = *(v11 + 13);
            *(v11 + 13) = v30;

            v32 = vdupq_n_s64(1uLL);
            v33 = vaddq_s64(*(v11 + 1), v32);
            v34 = vaddq_s64(*(v11 + 2), v32);
            *(v11 + 1) = v33;
            *(v11 + 2) = v34;
            v35 = [MEMORY[0x277CBEB18] array];
            v36 = [TALocationLite alloc];
            v37 = [v14 representativeVisit];
            v38 = [v37 getDate];
            v39 = [v14 representativeVisit];
            [v39 coordinate];
            v41 = v40;
            [v14 representativeVisit];
            v42 = v100 = v11;
            [v42 coordinate];
            v44 = v43;
            [v14 representativeVisit];
            v45 = v96 = v14;
            [v45 horizontalAccuracy];
            v47 = [(TALocationLite *)v36 initWithTimestamp:v38 latitude:v41 longitude:v44 horizontalAccuracy:v46];

            v48 = v14;
            v11 = v100;

            v93 = v35;
            [v35 addObject:v47];
            v49 = v47;
            v108 = 0u;
            v109 = 0u;
            v110 = 0u;
            v111 = 0u;
            v91 = v8;
            obj = [v8 reverseObjectEnumerator];
            v50 = [obj countByEnumeratingWithState:&v108 objects:v114 count:16];
            v92 = v49;
            if (v50)
            {
              v51 = v50;
              v52 = *v109;
              v53 = 1;
              v54 = 1;
              v95 = *v109;
              do
              {
                v55 = 0;
                v103 = v49;
                v97 = v51;
                do
                {
                  if (*v109 != v52)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v56 = *(*(&v108 + 1) + 8 * v55);
                  if ([v56 isEqual:v48])
                  {
                    v49 = v103;
                  }

                  else
                  {
                    v101 = v54;
                    v102 = v53;
                    v57 = [TALocationLite alloc];
                    v58 = [v56 representativeVisit];
                    v59 = [v58 getDate];
                    v60 = [v56 representativeVisit];
                    [v60 coordinate];
                    v62 = v61;
                    v63 = [v56 representativeVisit];
                    [v63 coordinate];
                    v65 = v64;
                    v66 = [v56 representativeVisit];
                    [v66 horizontalAccuracy];
                    v49 = [(TALocationLite *)v57 initWithTimestamp:v59 latitude:v62 longitude:v65 horizontalAccuracy:v67];

                    v11 = v100;
                    v68 = [v10 minNSigmaBetweenVisits];
                    [v10 minInterVisitDistance];
                    v69 = [TALocationLite distanceFromLocation:v49 toLocation:v103 satisfyNSigma:v68 satisfyMinDistance:?];
                    v70 = [v56 latestUtAdvertisements];
                    v71 = [v70 objectForKey:v100[1]];

                    if (v71)
                    {
                      if (!v100[12])
                      {
                        v72 = objc_alloc(MEMORY[0x277CCABB0]);
                        [(TALocationLite *)v92 distanceFromLocation:v49];
                        v73 = [v72 initWithDouble:?];
                        v74 = v100[12];
                        v100[12] = v73;
                      }

                      v99 = v69;
                      v106 = 0u;
                      v107 = 0u;
                      v104 = 0u;
                      v105 = 0u;
                      v75 = v93;
                      v76 = [v75 countByEnumeratingWithState:&v104 objects:v113 count:16];
                      if (v76)
                      {
                        v77 = v76;
                        v94 = v71;
                        v78 = *v105;
                        LOBYTE(v79) = 1;
                        while (2)
                        {
                          for (i = 0; i != v77; ++i)
                          {
                            if (*v105 != v78)
                            {
                              objc_enumerationMutation(v75);
                            }

                            if (!v79)
                            {

                              LODWORD(v83) = 0;
                              v11 = v100;
                              v54 = v101;
                              v52 = v95;
                              v48 = v96;
                              v84 = v102;
                              v51 = v97;
                              v71 = v94;
                              goto LABEL_34;
                            }

                            v81 = *(*(&v104 + 1) + 8 * i);
                            v82 = [v10 minNSigmaBetweenVisits];
                            [v10 minInterVisitDistance];
                            v79 = [TALocationLite distanceFromLocation:v49 toLocation:v81 satisfyNSigma:v82 satisfyMinDistance:?];
                          }

                          v77 = [v75 countByEnumeratingWithState:&v104 objects:v113 count:16];
                          if (v77)
                          {
                            continue;
                          }

                          break;
                        }

                        v11 = v100;
                        v71 = v94;
                        if (!v79)
                        {
                          LODWORD(v83) = 0;
                          goto LABEL_33;
                        }
                      }

                      else
                      {
                      }

                      [v75 addObject:v49];
                      LODWORD(v83) = 1;
LABEL_33:
                      v52 = v95;
                      v48 = v96;
                      v54 = v101;
                      v84 = v102;
                      v51 = v97;
LABEL_34:
                      v69 = v99;
                    }

                    else
                    {
                      v54 = 0;
                      LODWORD(v83) = 1;
                      v52 = v95;
                      v48 = v96;
                      v84 = v102;
                      v51 = v97;
                    }

                    if (v71)
                    {
                      v83 = v83;
                    }

                    else
                    {
                      v83 = 0;
                    }

                    v53 = v84 & v54 & v69;
                    v85 = *(v11 + 2);
                    v86 = *(v11 + 3);
                    if (v71)
                    {
                      ++v85;
                    }

                    *(v11 + 2) = v85;
                    *(v11 + 3) = v86 + v83;
                    v87 = *(v11 + 5) + (v53 & 1);
                    *(v11 + 4) += v54 & 1;
                    *(v11 + 5) = v87;

                    v103 = v49;
                  }

                  ++v55;
                }

                while (v55 != v51);
                v51 = [obj countByEnumeratingWithState:&v108 objects:v114 count:16];
              }

              while (v51);
            }

            v9 = v90;
            v8 = v91;
            goto LABEL_44;
          }
        }
      }
    }

    v12 = 0;
  }

LABEL_47:

  v88 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)descriptionDictionary
{
  v38[13] = *MEMORY[0x277D85DE8];
  v3 = [(TAMetricsVisit *)self visitEntryDelay];
  v4 = 0.0;
  v5 = 0.0;
  if (v3)
  {
    v6 = [(TAMetricsVisit *)self visitEntryDelay];
    [v6 duration];
    v5 = v7;
  }

  v8 = [(TAMetricsVisit *)self visitExitDelay];
  if (v8)
  {
    v9 = [(TAMetricsVisit *)self visitExitDelay];
    [v9 duration];
    v4 = v10;
  }

  v11 = [(TAMetricsVisit *)self distanceToPreviousSeenVisit];
  if (v11)
  {
    v12 = [(TAMetricsVisit *)self distanceToPreviousSeenVisit];
    [v12 doubleValue];
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  v37[0] = @"MetricsType";
  v15 = objc_opt_class();
  v36 = NSStringFromClass(v15);
  v38[0] = v36;
  v37[1] = @"Address";
  v35 = [(TAMetricsVisit *)self address];
  v34 = [v35 hexString];
  v38[1] = v34;
  v37[2] = @"TotalVisitCount";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAMetricsVisit totalVisitCount](self, "totalVisitCount")}];
  v38[2] = v33;
  v37[3] = @"TotalDistinctVisitCount";
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAMetricsVisit totalDistinctVisitCount](self, "totalDistinctVisitCount")}];
  v38[3] = v32;
  v37[4] = @"ConsecutiveVisitCount";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAMetricsVisit consecutiveVisitCount](self, "consecutiveVisitCount")}];
  v38[4] = v16;
  v37[5] = @"ConsecutiveAndDistinctFromPrevVisitCount";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAMetricsVisit consecutiveAndDistinctFromPrevVisitCount](self, "consecutiveAndDistinctFromPrevVisitCount")}];
  v38[5] = v17;
  v37[6] = @"DurationOfVisitEntryConsideration";
  v18 = MEMORY[0x277CCABB0];
  [(TAMetricsVisit *)self durationOfVisitEntryConsideration];
  v19 = [v18 numberWithDouble:?];
  v38[6] = v19;
  v37[7] = @"DurationOfVisitExitConsideration";
  v20 = MEMORY[0x277CCABB0];
  [(TAMetricsVisit *)self durationOfVisitExitConsideration];
  v21 = [v20 numberWithDouble:?];
  v38[7] = v21;
  v37[8] = @"EntryDelay";
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  v38[8] = v22;
  v37[9] = @"ExitDelay";
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v38[9] = v23;
  v37[10] = @"Latitude";
  v24 = MEMORY[0x277CCABB0];
  [(TAMetricsVisit *)self latitude];
  v25 = [v24 numberWithDouble:?];
  v38[10] = v25;
  v37[11] = @"Longitude";
  v26 = MEMORY[0x277CCABB0];
  [(TAMetricsVisit *)self longitude];
  v27 = [v26 numberWithDouble:?];
  v38[11] = v27;
  v37[12] = @"DistanceToPreviousSeenVisit";
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  v38[12] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:13];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (NSString)description
{
  v3 = [(TAMetricsVisit *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v3 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    v7 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

@end