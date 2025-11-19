@interface PGTitleSpecPublicEventArgument
+ (id)_cleanUpEventName:(id)a3;
+ (id)argumentWithPublicEventType:(unint64_t)a3;
- (PGTitleSpecPublicEventArgument)initWithPublicEventType:(unint64_t)a3;
- (PGTitleSpecPublicEventArgument)initWithPublicEventType:(unint64_t)a3 shouldUseLongPublicEventTitle:(BOOL)a4;
- (id)_commonPublicEventNodeForMomentNodes:(id)a3;
- (id)_generateTitleWithBusinessNameForPublicEventNode:(id)a3;
- (id)_generateTitleWithCategoryNameForPublicEventNode:(id)a3;
- (id)_generateTitleWithEventNameForPublicEventNode:(id)a3;
- (id)_generateTitleWithPerformerNamesForPublicEventNode:(id)a3;
- (id)_resolvedStringWithMomentNodes:(id)a3 argumentEvaluationContext:(id)a4;
- (id)_resolvedStringWithMomentNodes:(id)a3 features:(id)a4 argumentEvaluationContext:(id)a5;
- (id)_resolvedStringWithPublicEventNode:(id)a3 inMomentNodes:(id)a4;
@end

@implementation PGTitleSpecPublicEventArgument

- (id)_generateTitleWithCategoryNameForPublicEventNode:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 preciseLocalizedCategoryNames];
  if ([v4 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v20;
      v10 = -1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v12 length];
          if (v13 - 1 <= 0x19 && v13 < v10)
          {
            v15 = v13;
            v16 = v12;

            v8 = v16;
            v10 = v15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_generateTitleWithPerformerNamesForPublicEventNode:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__PGTitleSpecPublicEventArgument__generateTitleWithPerformerNamesForPublicEventNode___block_invoke;
  v19[3] = &unk_278880090;
  v19[4] = &v20;
  [v3 enumeratePublicEventCategoryNodesUsingBlock:v19];
  if (!*(v21 + 24))
  {
    v9 = 0;
    goto LABEL_15;
  }

  v4 = [v3 performers];
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:sel_localizedCompare_];
    v24[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v7 = [v4 sortedArrayUsingDescriptors:v6];

    v8 = [v7 count];
    if (v8 == 3)
    {
      v10 = [v7 objectAtIndexedSubscript:0];
      v11 = [v7 objectAtIndexedSubscript:1];
      v13 = [v7 objectAtIndexedSubscript:2];
      v15 = MEMORY[0x277CCACA8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v14 localizedStringForKey:@"PGMemoryPublicEventTitleFormatWithPeformer %@ secondPerformer %@ thirdPerformer %@" value:@"PGMemoryPublicEventTitleFormatWithPeformer %@ secondPerformer %@ thirdPerformer %@" table:@"Localizable"];
      v9 = [v15 localizedStringWithFormat:v16, v10, v11, v13];
    }

    else
    {
      if (v8 != 2)
      {
        if (v8 == 1)
        {
          v9 = [v7 objectAtIndexedSubscript:0];
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_13;
      }

      v10 = [v7 objectAtIndexedSubscript:0];
      v11 = [v7 objectAtIndexedSubscript:1];
      v12 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"PGMemoryPublicEventTitleFormatWithPeformer %@ otherPerformer %@" value:@"PGMemoryPublicEventTitleFormatWithPeformer %@ otherPerformer %@" table:@"Localizable"];
      v9 = [v12 localizedStringWithFormat:v14, v10, v11];
    }

LABEL_13:
    goto LABEL_14;
  }

  v9 = 0;
LABEL_14:

LABEL_15:
  _Block_object_dispose(&v20, 8);

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

void __85__PGTitleSpecPublicEventArgument__generateTitleWithPerformerNamesForPublicEventNode___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = [a2 label];
  v5 = [MEMORY[0x277D27780] nightLife];
  if ([v11 isEqualToString:v5])
  {
    v7 = *(a1 + 32);
    v6 = a1 + 32;
    *(*(v7 + 8) + 24) = 1;
  }

  else
  {
    v8 = [MEMORY[0x277D27780] musicConcerts];
    v9 = [v11 isEqualToString:v8];
    v10 = *(a1 + 32);
    v6 = a1 + 32;
    *(*(v10 + 8) + 24) = v9;
  }

  *a3 = *(*(*v6 + 8) + 24);
}

- (id)_generateTitleWithBusinessNameForPublicEventNode:(id)a3
{
  v3 = [a3 businessNode];
  v4 = [v3 name];

  return v4;
}

- (id)_generateTitleWithEventNameForPublicEventNode:(id)a3
{
  v3 = [a3 name];
  v4 = [objc_opt_class() _cleanUpEventName:v3];
  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_commonPublicEventNodeForMomentNodes:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v3;
  v41 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v41)
  {
    v5 = 0;
    v40 = *v53;
    do
    {
      v6 = 0;
      do
      {
        v43 = v5;
        if (*v53 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v6;
        v7 = *(*(&v52 + 1) + 8 * v6);
        v8 = [v7 numberOfAssets];
        v9 = [v7 publicEventNodes];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v48 objects:v59 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v49;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v49 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v48 + 1) + 8 * i);
              v15 = [v4 objectForKey:v14];
              v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "unsignedIntegerValue") + v8}];
              [v4 setObject:v16 forKey:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v48 objects:v59 count:16];
          }

          while (v11);
        }

        v5 = v8 + v43;

        v6 = v42 + 1;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v41);
    v17 = v5;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = [MEMORY[0x277CBEB58] set];
  v19 = [v4 keyEnumerator];
  v20 = [v19 allObjects];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v45;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v45 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v44 + 1) + 8 * j);
        v27 = [v4 objectForKey:v26];
        [v27 doubleValue];
        if (v28 / v17 >= 0.75)
        {
          [v18 addObject:v26];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v23);
  }

  if ([v18 count] == 1)
  {
    v29 = [v18 anyObject];
    v30 = [v29 categories];
    v31 = +[PGGraphPublicEventNode unsupportedCategoriesForTitles];
    v32 = [v30 intersectsSet:v31];

    if (v32)
    {
      v33 = +[PGLogging sharedLogging];
      v34 = [v33 loggingConnection];

      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = [v29 name];
        *buf = 138412290;
        v57 = v35;
        _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "Public event node has an unsupported category for titles %@", buf, 0xCu);
      }

      v36 = 0;
    }

    else
    {
      v36 = v29;
    }
  }

  else
  {
    v36 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)_resolvedStringWithPublicEventNode:(id)a3 inMomentNodes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 0;
  if (!v6)
  {
LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  type = self->_type;
  if (type > 1)
  {
    if (type == 2)
    {
      v10 = [(PGTitleSpecPublicEventArgument *)self _generateTitleWithPerformerNamesForPublicEventNode:v6];
      goto LABEL_11;
    }

    if (type == 3)
    {
      v10 = [(PGTitleSpecPublicEventArgument *)self _generateTitleWithCategoryNameForPublicEventNode:v6];
      goto LABEL_11;
    }
  }

  else
  {
    if (!type)
    {
      v10 = [(PGTitleSpecPublicEventArgument *)self _generateTitleWithEventNameForPublicEventNode:v6];
      goto LABEL_11;
    }

    if (type == 1)
    {
      v10 = [(PGTitleSpecPublicEventArgument *)self _generateTitleWithBusinessNameForPublicEventNode:v6];
LABEL_11:
      v8 = v10;
    }
  }

  v11 = [v8 length];
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = 26;
  if (self->_shouldUseLongPublicEventTitle)
  {
    v12 = 45;
  }

  if (v11 > v12)
  {
    goto LABEL_16;
  }

  v8 = v8;
  v13 = v8;
LABEL_17:

  return v13;
}

- (id)_resolvedStringWithMomentNodes:(id)a3 features:(id)a4 argumentEvaluationContext:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 anyObject];
  v10 = [v9 graph];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        if ([v16 type] == 21)
        {
          v18 = [v16 nodeInGraph:v10];
          v17 = [(PGTitleSpecPublicEventArgument *)self _resolvedStringWithPublicEventNode:v18 inMomentNodes:v7];

          goto LABEL_11;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_resolvedStringWithMomentNodes:(id)a3 argumentEvaluationContext:(id)a4
{
  v5 = a3;
  v6 = [(PGTitleSpecPublicEventArgument *)self _commonPublicEventNodeForMomentNodes:v5];
  v7 = [(PGTitleSpecPublicEventArgument *)self _resolvedStringWithPublicEventNode:v6 inMomentNodes:v5];

  return v7;
}

- (PGTitleSpecPublicEventArgument)initWithPublicEventType:(unint64_t)a3 shouldUseLongPublicEventTitle:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = PGTitleSpecPublicEventArgument;
  result = [(PGTitleSpecPublicEventArgument *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_shouldUseLongPublicEventTitle = a4;
  }

  return result;
}

- (PGTitleSpecPublicEventArgument)initWithPublicEventType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PGTitleSpecPublicEventArgument;
  result = [(PGTitleSpecPublicEventArgument *)&v5 init];
  if (result)
  {
    result->_type = a3;
    result->_shouldUseLongPublicEventTitle = 0;
  }

  return result;
}

+ (id)_cleanUpEventName:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 pg_stringByRemovingParenthesesAndBrackets];
    v5 = [v4 pg_stringByRemovingDates];
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

+ (id)argumentWithPublicEventType:(unint64_t)a3
{
  v3 = [[PGTitleSpecPublicEventArgument alloc] initWithPublicEventType:a3];

  return v3;
}

@end