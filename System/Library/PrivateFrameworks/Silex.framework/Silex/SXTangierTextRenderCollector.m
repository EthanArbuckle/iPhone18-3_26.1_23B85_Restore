@interface SXTangierTextRenderCollector
- (BOOL)tangierTextRepAllowsSelection:(id)a3;
- (SXTangierTextRenderCollector)initWithSearchManager:(id)a3;
- (id)componentIdentifierForFlowLayout:(id)a3;
- (id)flowLayoutForComponentIdentifier:(id)a3;
- (id)getAllItemsWithICC:(id)a3;
- (id)infoForStorage:(id)a3 selection:(id)a4;
- (id)itemWithIdentifier:(id)a3 storage:(id)a4 directLayerHost:(id)a5 inItems:(id)a6;
- (id)searchWithContext:(id)a3 icc:(id)a4;
- (void)addTextStorage:(id)a3 withLayout:(id)a4 forNamedFlow:(id)a5 directLayerHostView:(id)a6 selectable:(BOOL)a7 componentIdentifier:(id)a8;
- (void)buildFlowsAndUpdateInfosWithICC:(id)a3;
- (void)buildFlowsAndUpdateInfosWithICC:(id)a3 updateBlock:(id)a4;
- (void)reloadWithICC:(id)a3;
- (void)storeItem:(id)a3 forFlowName:(id)a4;
@end

@implementation SXTangierTextRenderCollector

- (SXTangierTextRenderCollector)initWithSearchManager:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SXTangierTextRenderCollector;
  v6 = [(SXTangierTextRenderCollector *)&v12 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    flows = v6->_flows;
    v6->_flows = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    layoutsByComponentIdentifier = v6->_layoutsByComponentIdentifier;
    v6->_layoutsByComponentIdentifier = v9;

    objc_storeStrong(&v6->_searchManager, a3);
  }

  return v6;
}

- (void)addTextStorage:(id)a3 withLayout:(id)a4 forNamedFlow:(id)a5 directLayerHostView:(id)a6 selectable:(BOOL)a7 componentIdentifier:(id)a8
{
  v32 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = [(SXTangierTextRenderCollector *)self previousFlows];
  v19 = [v18 objectForKey:v15];
  v20 = [(SXTangierTextRenderCollector *)self itemWithIdentifier:v17 storage:v32 directLayerHost:v16 inItems:v19];

  if (v20)
  {
    [(SXTangierTextRenderCollectorItem *)v20 updateWithLayout:v14];
    v21 = [v32 range];
    v22 = [v32 characterStyleAtCharIndex:v21 effectiveRange:0];
    v23 = [v32 paragraphStyleAtCharIndex:v21 effectiveRange:0];
    v24 = [(SXTangierTextRenderCollectorItem *)v20 storage];
    v25 = [(SXTangierTextRenderCollectorItem *)v20 storage];
    v26 = [v25 range];
    [v24 setCharacterStyle:v22 range:v26 undoTransaction:{v27, 0}];

    v28 = [(SXTangierTextRenderCollectorItem *)v20 storage];
    v29 = [(SXTangierTextRenderCollectorItem *)v20 storage];
    v30 = [v29 range];
    [v28 setParagraphStyle:v23 forCharRange:v30 undoTransaction:{v31, 0}];
  }

  else
  {
    v20 = [[SXTangierTextRenderCollectorItem alloc] initWithStorage:v32 layout:v14 directLayerHost:v16 selectable:a7 componentIdentifier:v17];
  }

  [(SXTangierTextRenderCollector *)self storeItem:v20 forFlowName:v15];
}

- (id)itemWithIdentifier:(id)a3 storage:(id)a4 directLayerHost:(id)a5 inItems:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v31 = v10;
  v13 = [v10 length];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
  v30 = v11;
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = v15;
  v17 = *v35;
  v28 = v14;
  v29 = v9;
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
      v20 = [(SXTangierTextRenderCollectorItem *)v19 directLayerHost];
      if (v20 != v11)
      {
        goto LABEL_13;
      }

      v21 = [(SXTangierTextRenderCollectorItem *)v19 storage];
      if ([v21 length] != v13)
      {
        goto LABEL_12;
      }

      v22 = [(SXTangierTextRenderCollectorItem *)v19 componentIdentifier];
      if (([v22 isEqualToString:v9] & 1) == 0)
      {

        v13 = v33;
LABEL_12:

LABEL_13:
        continue;
      }

      v23 = [(SXTangierTextRenderCollectorItem *)v19 storage];
      v24 = [v23 string];
      v25 = [v31 string];
      v32 = [v24 isEqualToString:v25];

      v11 = v30;
      v9 = v29;

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

- (void)buildFlowsAndUpdateInfosWithICC:(id)a3 updateBlock:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(SXTangierTextRenderCollector *)self flows];
  v8 = [v7 copy];
  [(SXTangierTextRenderCollector *)self setPreviousFlows:v8];

  v9 = [(SXTangierTextRenderCollector *)self flows];
  [v9 removeAllObjects];

  v10 = [(SXTangierTextRenderCollector *)self layoutsByComponentIdentifier];
  [v10 removeAllObjects];

  if (v6)
  {
    v6[2](v6);
  }

  [(SXTangierTextRenderCollector *)self buildFlowsAndUpdateInfosWithICC:v11];
  [(SXTangierTextRenderCollector *)self setPreviousFlows:0];
}

- (void)buildFlowsAndUpdateInfosWithICC:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(SXTangierTextRenderCollector *)self flows];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__SXTangierTextRenderCollector_buildFlowsAndUpdateInfosWithICC___block_invoke;
  v9[3] = &unk_1E85018B8;
  v10 = v5;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

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

- (id)infoForStorage:(id)a3 selection:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = TSUDynamicCast();
  v9 = [(SXTangierTextRenderCollector *)self flows];
  v10 = [v8 flowName];
  v11 = [v9 objectForKey:v10];

  v12 = [v7 range];
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
        v19 = [(SXTangierTextRenderCollectorItem *)v18 flowRange];
        if (v12 >= v19 && v12 - v19 < v20)
        {
          v22 = [(SXTangierTextRenderCollectorItem *)v18 flowInfo];
          goto LABEL_14;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v22 = 0;
LABEL_14:

  return v22;
}

- (id)flowLayoutForComponentIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SXTangierTextRenderCollector *)self layoutsByComponentIdentifier];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)componentIdentifierForFlowLayout:(id)a3
{
  v4 = a3;
  v5 = [(SXTangierTextRenderCollector *)self layoutsByComponentIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__SXTangierTextRenderCollector_componentIdentifierForFlowLayout___block_invoke;
  v10[3] = &unk_1E85018E0;
  v11 = v4;
  v6 = v4;
  v7 = [v5 keysOfEntriesPassingTest:v10];
  v8 = [v7 anyObject];

  return v8;
}

- (BOOL)tangierTextRepAllowsSelection:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SXTangierTextRenderCollector *)self flows];
  v6 = [v4 storage];
  v7 = [v6 flowName];
  v8 = [v5 objectForKey:v7];

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
        v14 = [(SXTangierTextRenderCollectorItem *)v13 flowInfo];
        v15 = [v4 info];

        if (v14 == v15)
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

- (void)storeItem:(id)a3 forFlowName:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SXTangierTextRenderCollector *)self flows];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [(SXTangierTextRenderCollector *)self flows];
    [v9 setObject:v8 forKey:v6];
  }

  [v8 addObject:v10];
}

- (id)getAllItemsWithICC:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [(SXTangierTextRenderCollector *)self flows];
  v7 = [v6 allKeys];

  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [(SXTangierTextRenderCollector *)self flows];
        v14 = [v13 objectForKeyedSubscript:v12];

        [v5 addObjectsFromArray:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__SXTangierTextRenderCollector_getAllItemsWithICC___block_invoke;
  v19[3] = &unk_1E8501908;
  v20 = v4;
  v15 = v4;
  v16 = [v5 sortedArrayUsingComparator:v19];
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

- (id)searchWithContext:(id)a3 icc:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 action];
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        v10 = [(SXTangierTextRenderCollector *)self searchManager];
        [v10 clearSearchHighlights:v8];

        v4 = [[SXSearchResults alloc] initWithTotal:0 index:0];
      }

      goto LABEL_10;
    }

LABEL_8:
    v11 = [(SXTangierTextRenderCollector *)self searchManager];
    v4 = [v11 moveHighlightWithContext:v7 icc:v8];

    goto LABEL_10;
  }

  if (!v9)
  {
    v12 = [(SXTangierTextRenderCollector *)self searchManager];
    v13 = [(SXTangierTextRenderCollector *)self getAllItemsWithICC:v8];
    v4 = [v12 searchItems:v13 withContext:v7 icc:v8];

    goto LABEL_10;
  }

  if (v9 == 1)
  {
    goto LABEL_8;
  }

LABEL_10:

  return v4;
}

- (void)reloadWithICC:(id)a3
{
  v4 = a3;
  v6 = [(SXTangierTextRenderCollector *)self searchManager];
  v5 = [(SXTangierTextRenderCollector *)self getAllItemsWithICC:v4];
  [v6 reloadWithItems:v5 icc:v4];
}

@end