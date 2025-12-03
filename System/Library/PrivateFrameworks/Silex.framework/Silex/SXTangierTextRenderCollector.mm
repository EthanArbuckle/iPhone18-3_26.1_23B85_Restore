@interface SXTangierTextRenderCollector
- (BOOL)tangierTextRepAllowsSelection:(id)selection;
- (SXTangierTextRenderCollector)initWithSearchManager:(id)manager;
- (id)componentIdentifierForFlowLayout:(id)layout;
- (id)flowLayoutForComponentIdentifier:(id)identifier;
- (id)getAllItemsWithICC:(id)c;
- (id)infoForStorage:(id)storage selection:(id)selection;
- (id)itemWithIdentifier:(id)identifier storage:(id)storage directLayerHost:(id)host inItems:(id)items;
- (id)searchWithContext:(id)context icc:(id)icc;
- (void)addTextStorage:(id)storage withLayout:(id)layout forNamedFlow:(id)flow directLayerHostView:(id)view selectable:(BOOL)selectable componentIdentifier:(id)identifier;
- (void)buildFlowsAndUpdateInfosWithICC:(id)c;
- (void)buildFlowsAndUpdateInfosWithICC:(id)c updateBlock:(id)block;
- (void)reloadWithICC:(id)c;
- (void)storeItem:(id)item forFlowName:(id)name;
@end

@implementation SXTangierTextRenderCollector

- (SXTangierTextRenderCollector)initWithSearchManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = SXTangierTextRenderCollector;
  v6 = [(SXTangierTextRenderCollector *)&v12 init];
  if (v6)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    flows = v6->_flows;
    v6->_flows = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    layoutsByComponentIdentifier = v6->_layoutsByComponentIdentifier;
    v6->_layoutsByComponentIdentifier = dictionary2;

    objc_storeStrong(&v6->_searchManager, manager);
  }

  return v6;
}

- (void)addTextStorage:(id)storage withLayout:(id)layout forNamedFlow:(id)flow directLayerHostView:(id)view selectable:(BOOL)selectable componentIdentifier:(id)identifier
{
  storageCopy = storage;
  layoutCopy = layout;
  flowCopy = flow;
  viewCopy = view;
  identifierCopy = identifier;
  previousFlows = [(SXTangierTextRenderCollector *)self previousFlows];
  v19 = [previousFlows objectForKey:flowCopy];
  v20 = [(SXTangierTextRenderCollector *)self itemWithIdentifier:identifierCopy storage:storageCopy directLayerHost:viewCopy inItems:v19];

  if (v20)
  {
    [(SXTangierTextRenderCollectorItem *)v20 updateWithLayout:layoutCopy];
    range = [storageCopy range];
    v22 = [storageCopy characterStyleAtCharIndex:range effectiveRange:0];
    v23 = [storageCopy paragraphStyleAtCharIndex:range effectiveRange:0];
    storage = [(SXTangierTextRenderCollectorItem *)v20 storage];
    storage2 = [(SXTangierTextRenderCollectorItem *)v20 storage];
    range2 = [storage2 range];
    [storage setCharacterStyle:v22 range:range2 undoTransaction:{v27, 0}];

    storage3 = [(SXTangierTextRenderCollectorItem *)v20 storage];
    storage4 = [(SXTangierTextRenderCollectorItem *)v20 storage];
    range3 = [storage4 range];
    [storage3 setParagraphStyle:v23 forCharRange:range3 undoTransaction:{v31, 0}];
  }

  else
  {
    v20 = [[SXTangierTextRenderCollectorItem alloc] initWithStorage:storageCopy layout:layoutCopy directLayerHost:viewCopy selectable:selectable componentIdentifier:identifierCopy];
  }

  [(SXTangierTextRenderCollector *)self storeItem:v20 forFlowName:flowCopy];
}

- (id)itemWithIdentifier:(id)identifier storage:(id)storage directLayerHost:(id)host inItems:(id)items
{
  v39 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  storageCopy = storage;
  hostCopy = host;
  itemsCopy = items;
  v31 = storageCopy;
  v13 = [storageCopy length];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = itemsCopy;
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
  v30 = hostCopy;
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = v15;
  v17 = *v35;
  v28 = v14;
  v29 = identifierCopy;
  v33 = v13;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v35 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v34 + 1) + 8 * i);
      directLayerHost = [(SXTangierTextRenderCollectorItem *)v19 directLayerHost];
      if (directLayerHost != hostCopy)
      {
        goto LABEL_13;
      }

      storage = [(SXTangierTextRenderCollectorItem *)v19 storage];
      if ([storage length] != v13)
      {
        goto LABEL_12;
      }

      componentIdentifier = [(SXTangierTextRenderCollectorItem *)v19 componentIdentifier];
      if (([componentIdentifier isEqualToString:identifierCopy] & 1) == 0)
      {

        v13 = v33;
LABEL_12:

LABEL_13:
        continue;
      }

      storage2 = [(SXTangierTextRenderCollectorItem *)v19 storage];
      string = [storage2 string];
      string2 = [v31 string];
      v32 = [string isEqualToString:string2];

      hostCopy = v30;
      identifierCopy = v29;

      v14 = v28;
      v13 = v33;
      if (v32)
      {
        v26 = v19;
        goto LABEL_17;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
  }

  while (v16);
LABEL_16:
  v26 = 0;
LABEL_17:

  return v26;
}

- (void)buildFlowsAndUpdateInfosWithICC:(id)c updateBlock:(id)block
{
  cCopy = c;
  blockCopy = block;
  flows = [(SXTangierTextRenderCollector *)self flows];
  v8 = [flows copy];
  [(SXTangierTextRenderCollector *)self setPreviousFlows:v8];

  flows2 = [(SXTangierTextRenderCollector *)self flows];
  [flows2 removeAllObjects];

  layoutsByComponentIdentifier = [(SXTangierTextRenderCollector *)self layoutsByComponentIdentifier];
  [layoutsByComponentIdentifier removeAllObjects];

  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

  [(SXTangierTextRenderCollector *)self buildFlowsAndUpdateInfosWithICC:cCopy];
  [(SXTangierTextRenderCollector *)self setPreviousFlows:0];
}

- (void)buildFlowsAndUpdateInfosWithICC:(id)c
{
  cCopy = c;
  v5 = objc_opt_new();
  flows = [(SXTangierTextRenderCollector *)self flows];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__SXTangierTextRenderCollector_buildFlowsAndUpdateInfosWithICC___block_invoke;
  v9[3] = &unk_1E85018B8;
  v10 = v5;
  v11 = cCopy;
  selfCopy = self;
  v7 = cCopy;
  v8 = v5;
  [flows enumerateKeysAndObjectsUsingBlock:v9];

  [v7 setInfosToDisplay:v8];
  [v7 invalidateReps];
}

void __64__SXTangierTextRenderCollector_buildFlowsAndUpdateInfosWithICC___block_invoke(id *a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 firstObject];
  v8 = [(SXAnimatedImageFrame *)v7 index];

  if (v8)
  {
    v9 = [(SXAnimatedImageFrame *)v7 index];
  }

  else
  {
    v10 = [SXTextTangierFlowStorage alloc];
    v11 = [(SXTangierTextRenderCollectorItem *)v7 storage];
    v12 = [v11 context];
    v13 = [(SXTangierTextRenderCollectorItem *)v7 storage];
    v14 = [v13 stylesheet];
    v15 = [(SXTangierTextRenderCollectorItem *)v7 storage];
    v9 = -[SXTextTangierFlowStorage initWithContext:string:stylesheet:kind:flowName:](v10, "initWithContext:string:stylesheet:kind:flowName:", v12, &stru_1F532F6C0, v14, [v15 wpKind], v5);
  }

  v34 = v7;
  v35 = v5;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v41;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v40 + 1) + 8 * i);
        if ([(SXTangierTextRenderCollectorItem *)v22 flowRange]== 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v19)
          {
            [(TSWPStorage *)v9 insertString:@"\n" atCharIndex:[(TSWPStorage *)v9 length:v34] undoTransaction:0];
          }

          [(SXTangierTextRenderCollectorItem *)v22 appendToFlowStorage:v9];
        }

        v19 = 1;
      }

      v18 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v18);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = v16;
  v24 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v37;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v36 + 1) + 8 * j);
        v29 = [(SXTangierTextRenderCollectorItem *)v28 flowInfo];
        [a1[4] addObject:v29];
        v30 = [(SXTangierTextRenderCollectorItem *)v28 flowLayoutWithICC:?];
        v31 = [a1[5] layoutController];
        [v31 preregisterLayout:v30];

        v32 = [a1[6] layoutsByComponentIdentifier];
        v33 = [(SXTangierTextRenderCollectorItem *)v28 componentIdentifier];
        [v32 setObject:v30 forKey:v33];
      }

      v25 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v25);
  }
}

- (id)infoForStorage:(id)storage selection:(id)selection
{
  v29 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  selectionCopy = selection;
  objc_opt_class();
  v8 = TSUDynamicCast();
  flows = [(SXTangierTextRenderCollector *)self flows];
  flowName = [v8 flowName];
  v11 = [flows objectForKey:flowName];

  range = [selectionCopy range];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        flowRange = [(SXTangierTextRenderCollectorItem *)v18 flowRange];
        if (range >= flowRange && range - flowRange < v20)
        {
          flowInfo = [(SXTangierTextRenderCollectorItem *)v18 flowInfo];
          goto LABEL_14;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  flowInfo = 0;
LABEL_14:

  return flowInfo;
}

- (id)flowLayoutForComponentIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    layoutsByComponentIdentifier = [(SXTangierTextRenderCollector *)self layoutsByComponentIdentifier];
    v6 = [layoutsByComponentIdentifier objectForKey:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)componentIdentifierForFlowLayout:(id)layout
{
  layoutCopy = layout;
  layoutsByComponentIdentifier = [(SXTangierTextRenderCollector *)self layoutsByComponentIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__SXTangierTextRenderCollector_componentIdentifierForFlowLayout___block_invoke;
  v10[3] = &unk_1E85018E0;
  v11 = layoutCopy;
  v6 = layoutCopy;
  v7 = [layoutsByComponentIdentifier keysOfEntriesPassingTest:v10];
  anyObject = [v7 anyObject];

  return anyObject;
}

- (BOOL)tangierTextRepAllowsSelection:(id)selection
{
  v22 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  flows = [(SXTangierTextRenderCollector *)self flows];
  storage = [selectionCopy storage];
  flowName = [storage flowName];
  v8 = [flows objectForKey:flowName];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        flowInfo = [(SXTangierTextRenderCollectorItem *)v13 flowInfo];
        info = [selectionCopy info];

        if (flowInfo == info)
        {
          LOBYTE(v10) = [(SXTangierTextRenderCollectorItem *)v13 selectable];
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (void)storeItem:(id)item forFlowName:(id)name
{
  itemCopy = item;
  nameCopy = name;
  flows = [(SXTangierTextRenderCollector *)self flows];
  array = [flows objectForKey:nameCopy];

  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    flows2 = [(SXTangierTextRenderCollector *)self flows];
    [flows2 setObject:array forKey:nameCopy];
  }

  [array addObject:itemCopy];
}

- (id)getAllItemsWithICC:(id)c
{
  v26 = *MEMORY[0x1E69E9840];
  cCopy = c;
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  flows = [(SXTangierTextRenderCollector *)self flows];
  allKeys = [flows allKeys];

  v8 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        flows2 = [(SXTangierTextRenderCollector *)self flows];
        v14 = [flows2 objectForKeyedSubscript:v12];

        [array addObjectsFromArray:v14];
      }

      v9 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__SXTangierTextRenderCollector_getAllItemsWithICC___block_invoke;
  v19[3] = &unk_1E8501908;
  v20 = cCopy;
  v15 = cCopy;
  v16 = [array sortedArrayUsingComparator:v19];
  v17 = [v16 copy];

  return v17;
}

uint64_t __51__SXTangierTextRenderCollector_getAllItemsWithICC___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [(SXTangierTextRenderCollectorItem *)a2 flowInfo];
  v8 = [v5 repForInfo:v7];

  v9 = *(a1 + 32);
  v10 = [(SXTangierTextRenderCollectorItem *)v6 flowInfo];

  v11 = [v9 repForInfo:v10];

  [v8 frameInCanvas];
  v13 = v12;
  [v11 frameInCanvas];
  if (v13 < v14)
  {
    v15 = -1;
  }

  else
  {
    v15 = v13 > v14;
  }

  return v15;
}

- (id)searchWithContext:(id)context icc:(id)icc
{
  contextCopy = context;
  iccCopy = icc;
  action = [contextCopy action];
  if (action > 1)
  {
    if (action != 2)
    {
      if (action == 3)
      {
        searchManager = [(SXTangierTextRenderCollector *)self searchManager];
        [searchManager clearSearchHighlights:iccCopy];

        v4 = [[SXSearchResults alloc] initWithTotal:0 index:0];
      }

      goto LABEL_10;
    }

LABEL_8:
    searchManager2 = [(SXTangierTextRenderCollector *)self searchManager];
    v4 = [searchManager2 moveHighlightWithContext:contextCopy icc:iccCopy];

    goto LABEL_10;
  }

  if (!action)
  {
    searchManager3 = [(SXTangierTextRenderCollector *)self searchManager];
    v13 = [(SXTangierTextRenderCollector *)self getAllItemsWithICC:iccCopy];
    v4 = [searchManager3 searchItems:v13 withContext:contextCopy icc:iccCopy];

    goto LABEL_10;
  }

  if (action == 1)
  {
    goto LABEL_8;
  }

LABEL_10:

  return v4;
}

- (void)reloadWithICC:(id)c
{
  cCopy = c;
  searchManager = [(SXTangierTextRenderCollector *)self searchManager];
  v5 = [(SXTangierTextRenderCollector *)self getAllItemsWithICC:cCopy];
  [searchManager reloadWithItems:v5 icc:cCopy];
}

@end