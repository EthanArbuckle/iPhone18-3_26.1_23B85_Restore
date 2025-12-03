@interface REMLExplanationFormatter
- (REMLExplanationFormatter)init;
- (id)descriptionFromExplanations:(id)explanations;
@end

@implementation REMLExplanationFormatter

- (REMLExplanationFormatter)init
{
  v4.receiver = self;
  v4.super_class = REMLExplanationFormatter;
  v2 = [(REMLExplanationFormatter *)&v4 init];
  if (v2)
  {
    v2->_style = REMLExplanationsEnabled();
  }

  return v2;
}

- (id)descriptionFromExplanations:(id)explanations
{
  v47 = *MEMORY[0x277D85DE8];
  explanationsCopy = explanations;
  if (![explanationsCopy count])
  {
    v31 = &stru_283B97458;
    goto LABEL_38;
  }

  array = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEB58] set];
  v36 = v34 = explanationsCopy;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = explanationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = *v42;
  do
  {
    v10 = 0;
    do
    {
      if (*v42 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v41 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v36;
LABEL_14:
        [v12 addObject:{v11, v34}];
        goto LABEL_15;
      }

      if (![array count])
      {
LABEL_13:
        v12 = array;
        goto LABEL_14;
      }

      v13 = 0;
      while (1)
      {
        v14 = [array objectAtIndexedSubscript:{v13, v34}];
        if ([v11 canCombineExplanationWithExplanation:v14])
        {
          break;
        }

        if (++v13 >= [array count])
        {
          goto LABEL_13;
        }
      }

      v15 = [v11 explanationByCombiningWithExplanation:v14];

      [array setObject:v15 atIndexedSubscript:v13];
LABEL_15:
      ++v10;
    }

    while (v10 != v8);
    v16 = [v6 countByEnumeratingWithState:&v41 objects:v46 count:16];
    v8 = v16;
  }

  while (v16);
LABEL_19:

  v17 = [_REMLFeatureExplanation combinedExplanationsFromExplanations:v36];
  allObjects = [v17 allObjects];
  [array addObjectsFromArray:allObjects];

  if ([array count])
  {
    v19 = 0;
    do
    {
      v20 = [array objectAtIndexedSubscript:{v19, v34}];
      if (([v20 shouldProvideExplanation] & 1) == 0)
      {
        [array removeObjectAtIndex:v19--];
      }

      ++v19;
    }

    while (v19 < [array count]);
  }

  [array sortUsingComparator:{&__block_literal_global_36, v34}];
  string = [MEMORY[0x277CCAB68] string];
  v22 = [array count];
  v23 = 5;
  if (!self->_style)
  {
    v23 = 1;
  }

  v37 = 0u;
  v38 = 0u;
  if (v22 >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  v39 = 0uLL;
  v40 = 0uLL;
  v25 = [array subarrayWithRange:{0, v24}];
  v26 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v38;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v37 + 1) + 8 * i) explanationWithStyle:self->_style];
        [string appendString:v30];

        [string appendString:@"\n"];
      }

      v27 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v27);
  }

  v31 = [string copy];
  explanationsCopy = v35;
LABEL_38:

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

@end