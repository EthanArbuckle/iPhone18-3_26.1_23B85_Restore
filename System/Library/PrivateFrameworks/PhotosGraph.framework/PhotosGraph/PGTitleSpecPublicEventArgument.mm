@interface PGTitleSpecPublicEventArgument
+ (id)_cleanUpEventName:(id)name;
+ (id)argumentWithPublicEventType:(unint64_t)type;
- (PGTitleSpecPublicEventArgument)initWithPublicEventType:(unint64_t)type;
- (PGTitleSpecPublicEventArgument)initWithPublicEventType:(unint64_t)type shouldUseLongPublicEventTitle:(BOOL)title;
- (id)_commonPublicEventNodeForMomentNodes:(id)nodes;
- (id)_generateTitleWithBusinessNameForPublicEventNode:(id)node;
- (id)_generateTitleWithCategoryNameForPublicEventNode:(id)node;
- (id)_generateTitleWithEventNameForPublicEventNode:(id)node;
- (id)_generateTitleWithPerformerNamesForPublicEventNode:(id)node;
- (id)_resolvedStringWithMomentNodes:(id)nodes argumentEvaluationContext:(id)context;
- (id)_resolvedStringWithMomentNodes:(id)nodes features:(id)features argumentEvaluationContext:(id)context;
- (id)_resolvedStringWithPublicEventNode:(id)node inMomentNodes:(id)nodes;
@end

@implementation PGTitleSpecPublicEventArgument

- (id)_generateTitleWithCategoryNameForPublicEventNode:(id)node
{
  v24 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  preciseLocalizedCategoryNames = [nodeCopy preciseLocalizedCategoryNames];
  if ([preciseLocalizedCategoryNames count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = preciseLocalizedCategoryNames;
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

- (id)_generateTitleWithPerformerNamesForPublicEventNode:(id)node
{
  v24[1] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__PGTitleSpecPublicEventArgument__generateTitleWithPerformerNamesForPublicEventNode___block_invoke;
  v19[3] = &unk_278880090;
  v19[4] = &v20;
  [nodeCopy enumeratePublicEventCategoryNodesUsingBlock:v19];
  if (!*(v21 + 24))
  {
    v9 = 0;
    goto LABEL_15;
  }

  performers = [nodeCopy performers];
  if ([performers count])
  {
    v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:sel_localizedCompare_];
    v24[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v7 = [performers sortedArrayUsingDescriptors:v6];

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

- (id)_generateTitleWithBusinessNameForPublicEventNode:(id)node
{
  businessNode = [node businessNode];
  name = [businessNode name];

  return name;
}

- (id)_generateTitleWithEventNameForPublicEventNode:(id)node
{
  name = [node name];
  v4 = [objc_opt_class() _cleanUpEventName:name];
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

- (id)_commonPublicEventNodeForMomentNodes:(id)nodes
{
  v61 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v4 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = nodesCopy;
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
        numberOfAssets = [v7 numberOfAssets];
        publicEventNodes = [v7 publicEventNodes];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v10 = [publicEventNodes countByEnumeratingWithState:&v48 objects:v59 count:16];
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
                objc_enumerationMutation(publicEventNodes);
              }

              v14 = *(*(&v48 + 1) + 8 * i);
              v15 = [v4 objectForKey:v14];
              v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "unsignedIntegerValue") + numberOfAssets}];
              [v4 setObject:v16 forKey:v14];
            }

            v11 = [publicEventNodes countByEnumeratingWithState:&v48 objects:v59 count:16];
          }

          while (v11);
        }

        v5 = numberOfAssets + v43;

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
  keyEnumerator = [v4 keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v21 = allObjects;
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
    anyObject = [v18 anyObject];
    categories = [anyObject categories];
    v31 = +[PGGraphPublicEventNode unsupportedCategoriesForTitles];
    v32 = [categories intersectsSet:v31];

    if (v32)
    {
      v33 = +[PGLogging sharedLogging];
      loggingConnection = [v33 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        name = [anyObject name];
        *buf = 138412290;
        v57 = name;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Public event node has an unsupported category for titles %@", buf, 0xCu);
      }

      v36 = 0;
    }

    else
    {
      v36 = anyObject;
    }
  }

  else
  {
    v36 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)_resolvedStringWithPublicEventNode:(id)node inMomentNodes:(id)nodes
{
  nodeCopy = node;
  nodesCopy = nodes;
  v8 = 0;
  if (!nodeCopy)
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
      v10 = [(PGTitleSpecPublicEventArgument *)self _generateTitleWithPerformerNamesForPublicEventNode:nodeCopy];
      goto LABEL_11;
    }

    if (type == 3)
    {
      v10 = [(PGTitleSpecPublicEventArgument *)self _generateTitleWithCategoryNameForPublicEventNode:nodeCopy];
      goto LABEL_11;
    }
  }

  else
  {
    if (!type)
    {
      v10 = [(PGTitleSpecPublicEventArgument *)self _generateTitleWithEventNameForPublicEventNode:nodeCopy];
      goto LABEL_11;
    }

    if (type == 1)
    {
      v10 = [(PGTitleSpecPublicEventArgument *)self _generateTitleWithBusinessNameForPublicEventNode:nodeCopy];
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

- (id)_resolvedStringWithMomentNodes:(id)nodes features:(id)features argumentEvaluationContext:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  featuresCopy = features;
  anyObject = [nodesCopy anyObject];
  graph = [anyObject graph];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = featuresCopy;
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
          v18 = [v16 nodeInGraph:graph];
          v17 = [(PGTitleSpecPublicEventArgument *)self _resolvedStringWithPublicEventNode:v18 inMomentNodes:nodesCopy];

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

- (id)_resolvedStringWithMomentNodes:(id)nodes argumentEvaluationContext:(id)context
{
  nodesCopy = nodes;
  v6 = [(PGTitleSpecPublicEventArgument *)self _commonPublicEventNodeForMomentNodes:nodesCopy];
  v7 = [(PGTitleSpecPublicEventArgument *)self _resolvedStringWithPublicEventNode:v6 inMomentNodes:nodesCopy];

  return v7;
}

- (PGTitleSpecPublicEventArgument)initWithPublicEventType:(unint64_t)type shouldUseLongPublicEventTitle:(BOOL)title
{
  v7.receiver = self;
  v7.super_class = PGTitleSpecPublicEventArgument;
  result = [(PGTitleSpecPublicEventArgument *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_shouldUseLongPublicEventTitle = title;
  }

  return result;
}

- (PGTitleSpecPublicEventArgument)initWithPublicEventType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PGTitleSpecPublicEventArgument;
  result = [(PGTitleSpecPublicEventArgument *)&v5 init];
  if (result)
  {
    result->_type = type;
    result->_shouldUseLongPublicEventTitle = 0;
  }

  return result;
}

+ (id)_cleanUpEventName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    pg_stringByRemovingParenthesesAndBrackets = [nameCopy pg_stringByRemovingParenthesesAndBrackets];
    pg_stringByRemovingDates = [pg_stringByRemovingParenthesesAndBrackets pg_stringByRemovingDates];
  }

  else
  {
    pg_stringByRemovingDates = nameCopy;
  }

  return pg_stringByRemovingDates;
}

+ (id)argumentWithPublicEventType:(unint64_t)type
{
  v3 = [[PGTitleSpecPublicEventArgument alloc] initWithPublicEventType:type];

  return v3;
}

@end