@interface PGMeaningDurationCriteria
+ (id)criteriaWithDictionary:(id)dictionary;
- (BOOL)passesForMomentNode:(id)node momentNodeCache:(id)cache;
- (NSString)description;
@end

@implementation PGMeaningDurationCriteria

+ (id)criteriaWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(self);
  v6 = [dictionaryCopy objectForKeyedSubscript:@"minimumDuration"];
  [v5 setMinimumDuration:{objc_msgSend(v6, "unsignedIntegerValue")}];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"includeRoutineVisitsInDuration"];

  [v5 setIncludeRoutineVisitsInDuration:{objc_msgSend(v7, "BOOLValue")}];

  return v5;
}

- (NSString)description
{
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"minimumDuration: %d\n", -[PGMeaningDurationCriteria minimumDuration](self, "minimumDuration")];
  includeRoutineVisitsInDuration = [(PGMeaningDurationCriteria *)self includeRoutineVisitsInDuration];
  v5 = @"NO";
  if (includeRoutineVisitsInDuration)
  {
    v5 = @"YES";
  }

  [string appendFormat:@"includeRoutineVisitsInDuration: %@\n", v5];

  return string;
}

- (BOOL)passesForMomentNode:(id)node momentNodeCache:(id)cache
{
  nodeCopy = node;
  cacheCopy = cache;
  if ([(PGMeaningDurationCriteria *)self minimumDuration])
  {
    if ([(PGMeaningDurationCriteria *)self includeRoutineVisitsInDuration])
    {
      universalStartDate = [nodeCopy universalStartDate];
      universalEndDate = [nodeCopy universalEndDate];
      v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:universalStartDate endDate:universalEndDate];
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__12616;
      v37 = __Block_byref_object_dispose__12617;
      universalEndDate2 = universalStartDate;
      v38 = universalEndDate2;
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__12616;
      v31 = __Block_byref_object_dispose__12617;
      universalStartDate2 = universalEndDate;
      v32 = universalStartDate2;
      preciseAddressNodes = [cacheCopy preciseAddressNodes];
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __65__PGMeaningDurationCriteria_passesForMomentNode_momentNodeCache___block_invoke;
      v22 = &unk_278880248;
      selfCopy = self;
      v14 = v10;
      v24 = v14;
      v25 = &v33;
      v26 = &v27;
      [preciseAddressNodes enumerateObjectsUsingBlock:&v19];
      [v28[5] timeIntervalSinceDate:{v34[5], v19, v20, v21, v22, selfCopy}];
      v16 = v15 >= [(PGMeaningDurationCriteria *)self minimumDuration];

      _Block_object_dispose(&v27, 8);
      _Block_object_dispose(&v33, 8);
    }

    else
    {
      universalEndDate2 = [nodeCopy universalEndDate];
      universalStartDate2 = [nodeCopy universalStartDate];
      [universalEndDate2 timeIntervalSinceDate:universalStartDate2];
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