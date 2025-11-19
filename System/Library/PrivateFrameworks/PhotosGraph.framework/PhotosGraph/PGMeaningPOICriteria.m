@interface PGMeaningPOICriteria
+ (id)criteriaWithDictionary:(id)a3;
- (BOOL)_parkIsLargerThanMaximumDiameterWithAreaNodes:(id)a3;
- (BOOL)isValid;
- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4;
- (NSString)description;
@end

@implementation PGMeaningPOICriteria

+ (id)criteriaWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 objectForKeyedSubscript:@"positivePOIs"];
  v7 = v6;
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;

  [v5 setPositivePOIs:v10];
  v11 = [v4 objectForKeyedSubscript:@"minimumNumberOfPOIs"];
  v12 = [v11 unsignedIntegerValue];

  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  [v5 setMinimumNumberOfPOIs:v13];
  v14 = [v4 objectForKeyedSubscript:@"mustBeSpecial"];
  [v5 setMustBeSpecial:{objc_msgSend(v14, "BOOLValue")}];

  v15 = [v4 objectForKeyedSubscript:@"negativePOIs"];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v8;
  }

  v18 = v17;

  [v5 setNegativePOIs:v18];
  v19 = [v4 objectForKeyedSubscript:@"maximumParkDiameter"];

  [v19 doubleValue];
  [v5 setMaximumParkDiameter:?];

  return v5;
}

- (BOOL)_parkIsLargerThanMaximumDiameterWithAreaNodes:(id)a3
{
  v4 = a3;
  [(PGMeaningPOICriteria *)self maximumParkDiameter];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__PGMeaningPOICriteria__parkIsLargerThanMaximumDiameterWithAreaNodes___block_invoke;
  v7[3] = &unk_27887F2A8;
  v7[4] = &v8;
  v7[5] = v5;
  [v4 enumerateObjectsUsingBlock:v7];
  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return self;
}

uint64_t __70__PGMeaningPOICriteria__parkIsLargerThanMaximumDiameterWithAreaNodes___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 diameterIsLargerThanDiameter:*(a1 + 40)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(PGMeaningPOICriteria *)self positivePOIs];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = [(PGMeaningPOICriteria *)self negativePOIs];
  v7 = [v6 componentsJoinedByString:{@", "}];

  [v3 appendFormat:@"positivePOIs: %@\n", v5];
  [v3 appendFormat:@"negativePOIs: %@\n", v7];
  [v3 appendFormat:@"minimumNumberOfPOIs: %d\n", -[PGMeaningPOICriteria minimumNumberOfPOIs](self, "minimumNumberOfPOIs")];
  [v3 appendFormat:@"minimumNumberOfPOIs: %d\n", -[PGMeaningPOICriteria minimumNumberOfPOIs](self, "minimumNumberOfPOIs")];
  v8 = [(PGMeaningPOICriteria *)self mustBeSpecial];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  [v3 appendFormat:@"mustBeSpecial: %@\n", v9];
  [(PGMeaningPOICriteria *)self maximumParkDiameter];
  [v3 appendFormat:@"maximumParkDiameter: %d\n", v10];

  return v3;
}

- (BOOL)isValid
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(PGMeaningPOICriteria *)self positivePOIs];
  v4 = [(PGMeaningPOICriteria *)self negativePOIs];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  v6 = +[PGGraphPOINode validPOILabels];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v21;
    v12 = 1;
    *&v9 = 138412290;
    v19 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (([v6 containsObject:{v14, v19, v20}] & 1) == 0)
        {
          v15 = +[PGLogging sharedLogging];
          v16 = [v15 loggingConnection];

          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = v19;
            v25 = v14;
            _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[MEANING CRITERIA] Invalid poi %@", buf, 0xCu);
          }

          v12 = 0;
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PGMeaningPOICriteria *)self positivePOIs];
  v9 = [v8 count];

  v10 = [(PGMeaningPOICriteria *)self negativePOIs];
  v11 = [v10 count];

  if (v9 | v11)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = v9 == 0;
    if ([(PGMeaningPOICriteria *)self mustBeSpecial])
    {
      [v7 specialPOINodes];
    }

    else
    {
      [v7 poiNodes];
    }
    v13 = ;
    v14 = [v7 preciseAreaNodes];
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v22[3] = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__PGMeaningPOICriteria_passesForMomentNode_momentNodeCache___block_invoke;
    v17[3] = &unk_27887F280;
    v19 = &v23;
    v17[4] = self;
    v15 = v14;
    v18 = v15;
    v20 = v22;
    v21 = v11;
    [v13 enumerateObjectsUsingBlock:v17];
    v12 = *(v24 + 24);

    _Block_object_dispose(v22, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

void __60__PGMeaningPOICriteria_passesForMomentNode_momentNodeCache___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 label];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) != 0 || (v13 = v5, [*(a1 + 32) positivePOIs], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", v13), v6, v5 = v13, !v7))
  {
    if (*(a1 + 64))
    {
      v14 = v5;
      v11 = [*(a1 + 32) negativePOIs];
      v12 = [v11 containsObject:v14];

      v5 = v14;
      if (v12)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
        *a3 = 1;
      }
    }
  }

  else if (![v13 isEqualToString:@"Park"] || (v8 = objc_msgSend(*(a1 + 32), "_parkIsLargerThanMaximumDiameterWithAreaNodes:", *(a1 + 40)), v5 = v13, (v8 & 1) == 0))
  {
    v9 = ++*(*(*(a1 + 56) + 8) + 24);
    v10 = [*(a1 + 32) minimumNumberOfPOIs];
    v5 = v13;
    if (v9 >= v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

@end