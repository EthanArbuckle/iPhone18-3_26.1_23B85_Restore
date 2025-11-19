@interface PGMeaningPartsOfDayCriteria
+ (id)_partsOfDayAsNumbersFromStrings:(id)a3;
+ (id)criteriaWithDictionary:(id)a3;
- (BOOL)_passesPartsOfDayWithMomentNodePartsOfDay:(unint64_t)a3 positivePartsOfDay:(id)a4 negativePartsOfDay:(id)a5;
- (BOOL)isValid;
- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4;
- (NSString)description;
@end

@implementation PGMeaningPartsOfDayCriteria

+ (id)_partsOfDayAsNumbersFromStrings:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [a1 _partsOfDayNumbersByString];
    v6 = [MEMORY[0x277CBEB18] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [v5 objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * i), v15}];
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)criteriaWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 objectForKeyedSubscript:@"positiveSignificantPartsOfDay"];
  [v5 setPositiveSignificantPartsOfDayStrings:v6];
  v7 = [a1 _partsOfDayAsNumbersFromStrings:v6];
  [v5 setPositiveSignificantPartsOfDay:v7];

  v8 = [v4 objectForKeyedSubscript:@"negativeSignificantPartsOfDay"];
  [v5 setNegativeSignificantPartsOfDayStrings:v8];
  v9 = [a1 _partsOfDayAsNumbersFromStrings:v8];
  [v5 setNegativeSignificantPartsOfDay:v9];

  v10 = [v4 objectForKeyedSubscript:@"positivePartsOfDay"];
  [v5 setPositivePartsOfDayStrings:v10];
  v11 = [a1 _partsOfDayAsNumbersFromStrings:v10];
  [v5 setPositivePartsOfDay:v11];

  v12 = [v4 objectForKeyedSubscript:@"negativePartsOfDay"];

  [v5 setNegativePartsOfDayStrings:v12];
  v13 = [a1 _partsOfDayAsNumbersFromStrings:v12];
  [v5 setNegativePartsOfDay:v13];

  return v5;
}

- (BOOL)_passesPartsOfDayWithMomentNodePartsOfDay:(unint64_t)a3 positivePartsOfDay:(id)a4 negativePartsOfDay:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if ([v7 count] || objc_msgSend(v8, "count"))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (([*(*(&v25 + 1) + 8 * v13) unsignedIntegerValue] & a3) != 0)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
          if (v11)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v8;
      v15 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (!v15)
      {
        v14 = 1;
        goto LABEL_22;
      }

      v16 = v15;
      v17 = *v22;
LABEL_14:
      v18 = 0;
      while (1)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v9);
        }

        if (([*(*(&v21 + 1) + 8 * v18) unsignedIntegerValue] & a3) != 0)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
          v14 = 1;
          if (v16)
          {
            goto LABEL_14;
          }

          goto LABEL_22;
        }
      }
    }

LABEL_11:
    v14 = 0;
LABEL_22:
  }

  else
  {
    v14 = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(PGMeaningPartsOfDayCriteria *)self positiveSignificantPartsOfDayStrings];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = [(PGMeaningPartsOfDayCriteria *)self negativeSignificantPartsOfDayStrings];
  v7 = [v6 componentsJoinedByString:{@", "}];

  [v3 appendFormat:@"positiveSignificantPartsOfDay: %@\n", v5];
  [v3 appendFormat:@"negativeSignificantPartsOfDay: %@\n", v7];
  v8 = [(PGMeaningPartsOfDayCriteria *)self positivePartsOfDayStrings];
  v9 = [v8 componentsJoinedByString:{@", "}];

  v10 = [(PGMeaningPartsOfDayCriteria *)self negativePartsOfDayStrings];
  v11 = [v10 componentsJoinedByString:{@", "}];

  [v3 appendFormat:@"positivePartsOfDay: %@\n", v9];
  [v3 appendFormat:@"negativePartsOfDay: %@\n", v11];

  return v3;
}

- (BOOL)isValid
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() _partsOfDayNumbersByString];
  v4 = [(PGMeaningPartsOfDayCriteria *)self positiveSignificantPartsOfDayStrings];
  v31 = self;
  v5 = [(PGMeaningPartsOfDayCriteria *)self negativeSignificantPartsOfDayStrings];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        v14 = [v3 objectForKeyedSubscript:v13];

        if (!v14)
        {
          v15 = +[PGLogging sharedLogging];
          v16 = [v15 loggingConnection];

          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v42 = v13;
            _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[MEANING CRITERIA] Invalid significant part of day %@", buf, 0xCu);
          }

          v11 = 0;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 1;
  }

  v17 = [(PGMeaningPartsOfDayCriteria *)v31 positivePartsOfDayStrings];
  v18 = [(PGMeaningPartsOfDayCriteria *)v31 negativePartsOfDayStrings];
  v19 = [v17 arrayByAddingObjectsFromArray:v18];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v32 + 1) + 8 * j);
        v26 = [v3 objectForKeyedSubscript:v25];

        if (!v26)
        {
          v27 = +[PGLogging sharedLogging];
          v28 = [v27 loggingConnection];

          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v42 = v25;
            _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[MEANING CRITERIA] Invalid part of day %@", buf, 0xCu);
          }

          v11 = 0;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v22);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4
{
  v5 = a4;
  v6 = [v5 significantPartsOfDay];
  v7 = [(PGMeaningPartsOfDayCriteria *)self positiveSignificantPartsOfDay];
  v8 = [(PGMeaningPartsOfDayCriteria *)self negativeSignificantPartsOfDay];
  LODWORD(v6) = [(PGMeaningPartsOfDayCriteria *)self _passesPartsOfDayWithMomentNodePartsOfDay:v6 positivePartsOfDay:v7 negativePartsOfDay:v8];

  if (v6)
  {
    v9 = [v5 partsOfDay];
    v10 = [(PGMeaningPartsOfDayCriteria *)self positivePartsOfDay];
    v11 = [(PGMeaningPartsOfDayCriteria *)self negativePartsOfDay];
    v12 = [(PGMeaningPartsOfDayCriteria *)self _passesPartsOfDayWithMomentNodePartsOfDay:v9 positivePartsOfDay:v10 negativePartsOfDay:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end