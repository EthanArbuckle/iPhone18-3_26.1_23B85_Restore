@interface PGMeaningDurationCriteria
+ (id)criteriaWithDictionary:(id)a3;
- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4;
- (NSString)description;
@end

@implementation PGMeaningDurationCriteria

+ (id)criteriaWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 objectForKeyedSubscript:@"minimumDuration"];
  [v5 setMinimumDuration:{objc_msgSend(v6, "unsignedIntegerValue")}];

  v7 = [v4 objectForKeyedSubscript:@"includeRoutineVisitsInDuration"];

  [v5 setIncludeRoutineVisitsInDuration:{objc_msgSend(v7, "BOOLValue")}];

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"minimumDuration: %d\n", -[PGMeaningDurationCriteria minimumDuration](self, "minimumDuration")];
  v4 = [(PGMeaningDurationCriteria *)self includeRoutineVisitsInDuration];
  v5 = @"NO";
  if (v4)
  {
    v5 = @"YES";
  }

  [v3 appendFormat:@"includeRoutineVisitsInDuration: %@\n", v5];

  return v3;
}

- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PGMeaningDurationCriteria *)self minimumDuration])
  {
    if ([(PGMeaningDurationCriteria *)self includeRoutineVisitsInDuration])
    {
      v8 = [v6 universalStartDate];
      v9 = [v6 universalEndDate];
      v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v9];
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__12616;
      v37 = __Block_byref_object_dispose__12617;
      v11 = v8;
      v38 = v11;
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__12616;
      v31 = __Block_byref_object_dispose__12617;
      v12 = v9;
      v32 = v12;
      v13 = [v7 preciseAddressNodes];
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __65__PGMeaningDurationCriteria_passesForMomentNode_momentNodeCache___block_invoke;
      v22 = &unk_278880248;
      v23 = self;
      v14 = v10;
      v24 = v14;
      v25 = &v33;
      v26 = &v27;
      [v13 enumerateObjectsUsingBlock:&v19];
      [v28[5] timeIntervalSinceDate:{v34[5], v19, v20, v21, v22, v23}];
      v16 = v15 >= [(PGMeaningDurationCriteria *)self minimumDuration];

      _Block_object_dispose(&v27, 8);
      _Block_object_dispose(&v33, 8);
    }

    else
    {
      v11 = [v6 universalEndDate];
      v12 = [v6 universalStartDate];
      [v11 timeIntervalSinceDate:v12];
      v16 = v17 >= [(PGMeaningDurationCriteria *)self minimumDuration];
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

void __65__PGMeaningDurationCriteria_passesForMomentNode_momentNodeCache___block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [a2 location];
  if (v3)
  {
    v4 = [*(a1[4] + 8) fetchLocationOfInterestVisitsAtLocation:v3 inDateInterval:a1[5]];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        v8 = 0;
        do
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v19 + 1) + 8 * v8) visitInterval];
          v10 = [v9 startDate];
          v11 = [v9 endDate];
          v12 = [*(*(a1[6] + 8) + 40) earlierDate:v10];
          v13 = *(a1[6] + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;

          v15 = [*(*(a1[7] + 8) + 40) laterDate:v11];
          v16 = *(a1[7] + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end