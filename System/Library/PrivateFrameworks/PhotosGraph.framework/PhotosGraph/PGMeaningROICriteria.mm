@interface PGMeaningROICriteria
+ (id)criteriaWithDictionary:(id)dictionary;
- (BOOL)isValid;
- (BOOL)passesForMomentNode:(id)node momentNodeCache:(id)cache;
- (NSString)description;
@end

@implementation PGMeaningROICriteria

+ (id)criteriaWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(self);
  v6 = [dictionaryCopy objectForKeyedSubscript:@"positiveROIs"];
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

  [v5 setPositiveROIs:v10];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"minimumNumberOfROIs"];
  unsignedIntegerValue = [v11 unsignedIntegerValue];

  if (unsignedIntegerValue <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = unsignedIntegerValue;
  }

  [v5 setMinimumNumberOfROIs:v13];
  v14 = [dictionaryCopy objectForKeyedSubscript:@"negativeROIs"];

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v8;
  }

  v16 = v15;

  [v5 setNegativeROIs:v16];

  return v5;
}

- (NSString)description
{
  string = [MEMORY[0x277CCAB68] string];
  positiveROIs = [(PGMeaningROICriteria *)self positiveROIs];
  v5 = [positiveROIs componentsJoinedByString:{@", "}];

  negativeROIs = [(PGMeaningROICriteria *)self negativeROIs];
  v7 = [negativeROIs componentsJoinedByString:{@", "}];

  [string appendFormat:@"\t\tpositiveROIs: %@\n", v5];
  [string appendFormat:@"\t\tnegativeROIs: %@\n", v7];
  [string appendFormat:@"\t\tminimumNumberOfROIs: %d\n", -[PGMeaningROICriteria minimumNumberOfROIs](self, "minimumNumberOfROIs")];

  return string;
}

- (BOOL)isValid
{
  v27 = *MEMORY[0x277D85DE8];
  positiveROIs = [(PGMeaningROICriteria *)self positiveROIs];
  negativeROIs = [(PGMeaningROICriteria *)self negativeROIs];
  v5 = [positiveROIs arrayByAddingObjectsFromArray:negativeROIs];

  v6 = +[PGGraphROINode validROILabels];
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
          loggingConnection = [v15 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
          {
            *buf = v19;
            v25 = v14;
            _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MEANING CRITERIA] Invalid roi %@", buf, 0xCu);
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

- (BOOL)passesForMomentNode:(id)node momentNodeCache:(id)cache
{
  nodeCopy = node;
  cacheCopy = cache;
  positiveROIs = [(PGMeaningROICriteria *)self positiveROIs];
  v9 = [positiveROIs count];

  negativeROIs = [(PGMeaningROICriteria *)self negativeROIs];
  v11 = [negativeROIs count];

  if (v9 | v11)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = v9 == 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = 0;
    roiNodes = [cacheCopy roiNodes];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__PGMeaningROICriteria_passesForMomentNode_momentNodeCache___block_invoke;
    v15[3] = &unk_278886558;
    v15[4] = self;
    v15[5] = &v17;
    v15[6] = v16;
    v15[7] = v11;
    [roiNodes enumerateObjectsUsingBlock:v15];
    v12 = *(v18 + 24);

    _Block_object_dispose(v16, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

void __60__PGMeaningROICriteria_passesForMomentNode_momentNodeCache___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = [a2 label];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = [*(a1 + 32) positiveROIs];
    v6 = [v5 containsObject:v10];

    if (v6)
    {
      v7 = ++*(*(*(a1 + 48) + 8) + 24);
      if (v7 >= [*(a1 + 32) minimumNumberOfROIs])
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }

  if (*(a1 + 56))
  {
    v8 = [*(a1 + 32) negativeROIs];
    v9 = [v8 containsObject:v10];

    if (v9)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a3 = 1;
    }
  }
}

@end