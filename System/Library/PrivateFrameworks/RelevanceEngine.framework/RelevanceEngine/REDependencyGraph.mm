@interface REDependencyGraph
- (BOOL)containsItem:(id)item;
- (BOOL)isEqual:(id)equal;
- (BOOL)item:(id)item isDependencyOfItem:(id)ofItem;
- (NSArray)allItems;
- (REDependencyGraph)initWithPointerFunctions:(unint64_t)functions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)topologicalSortedItemsWithComparator:(id)comparator;
- (void)_enumerateSortedFirstLevelDependenciesOfItem:(id)item usingComparator:(id)comparator withBlock:(id)block;
- (void)_visitNode:(id)node visited:(id)visited temporary:(id)temporary result:(id)result comparator:(id)comparator warn:(BOOL)warn;
- (void)addItem:(id)item;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)markItem:(id)item dependentOnItem:(id)onItem;
- (void)removeItem:(id)item;
@end

@implementation REDependencyGraph

- (REDependencyGraph)initWithPointerFunctions:(unint64_t)functions
{
  v8.receiver = self;
  v8.super_class = REDependencyGraph;
  v4 = [(REDependencyGraph *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:functions valueOptions:functions capacity:0];
    nodes = v4->_nodes;
    v4->_nodes = v5;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = [[REDependencyGraph allocWithZone:?]];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3042000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __34__REDependencyGraph_copyWithZone___block_invoke;
  v20[3] = &unk_2785F9E18;
  v5 = v4;
  v21 = v5;
  v22 = &v23;
  v6 = MEMORY[0x22AABC5E0](v20);
  objc_storeWeak(v24 + 5, v6);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_nodes;
  v8 = [(NSMapTable *)v7 countByEnumeratingWithState:&v16 objects:v29 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [(NSMapTable *)self->_nodes objectForKey:*(*(&v16 + 1) + 8 * v10), v16];
        v12 = (v6)[2](v6, v11);

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMapTable *)v7 countByEnumeratingWithState:&v16 objects:v29 count:16];
    }

    while (v8);
  }

  v13 = v5;
  _Block_object_dispose(&v23, 8);
  objc_destroyWeak(&v28);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

id __34__REDependencyGraph_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = [v3 item];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v7 = [REDependencyGraphNode alloc];
    v8 = [v3 item];
    v9 = [(REDependencyGraphNode *)v7 initWithItem:v8];

    v10 = *(*(a1 + 32) + 8);
    v11 = [v3 item];
    [v10 setObject:v9 forKey:v11];
  }

  v12 = *(*(a1 + 32) + 8);
  v13 = [v3 item];
  v14 = [v12 objectForKey:v13];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = [v3 connections];
  v16 = [v15 objectEnumerator];

  v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v29 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
        v23 = WeakRetained[2](WeakRetained, v21);

        v24 = [v14 connections];
        v25 = [v24 containsObject:v23];

        if ((v25 & 1) == 0)
        {
          v26 = [v14 connections];
          [v26 addObject:v23];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v18);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)addItem:(id)item
{
  itemCopy = item;
  if ([(REDependencyGraph *)self containsItem:?])
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Item %@ already in dependency graph %@", v4, v5, v6, v7, v8, v9, itemCopy);
  }

  v10 = [[REDependencyGraphNode alloc] initWithItem:itemCopy];
  [(NSMapTable *)self->_nodes setObject:v10 forKey:itemCopy];
}

- (void)removeItem:(id)item
{
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v11 = [(NSMapTable *)self->_nodes objectForKey:itemCopy];
  if (v11)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = self->_nodes;
    v13 = [(NSMapTable *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(NSMapTable *)self->_nodes objectForKey:*(*(&v20 + 1) + 8 * i)];
          connections = [v17 connections];
          [connections removeObject:v11];
        }

        v14 = [(NSMapTable *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [(NSMapTable *)self->_nodes removeObjectForKey:itemCopy];
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Item %@ not in dependency graph %@", v5, v6, v7, v8, v9, v10, itemCopy);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)markItem:(id)item dependentOnItem:(id)onItem
{
  itemCopy = item;
  onItemCopy = onItem;
  v7 = [(NSMapTable *)self->_nodes objectForKey:itemCopy];
  v8 = [(NSMapTable *)self->_nodes objectForKey:onItemCopy];
  v15 = v8;
  if (!v7)
  {
    v17 = *MEMORY[0x277CBE660];
    v18 = itemCopy;
LABEL_7:
    RERaiseInternalException(v17, @"Item %@ not in dependency graph %@", v9, v10, v11, v12, v13, v14, v18);
    goto LABEL_8;
  }

  if (!v8)
  {
    v17 = *MEMORY[0x277CBE660];
    v18 = onItemCopy;
    goto LABEL_7;
  }

  if (v7 == v8)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Cannot make item %@ not in dependency of itself", v9, v10, v11, v12, v13, v14, itemCopy);
  }

  else
  {
    connections = [v7 connections];
    [connections addObject:v15];
  }

LABEL_8:
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    v15 = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_nodes;
    v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v9), &v15);
        if (v15)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)containsItem:(id)item
{
  v3 = [(NSMapTable *)self->_nodes objectForKey:item];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)item:(id)item isDependencyOfItem:(id)ofItem
{
  itemCopy = item;
  ofItemCopy = ofItem;
  v8 = [(NSMapTable *)self->_nodes objectForKey:itemCopy];
  v9 = [(NSMapTable *)self->_nodes objectForKey:ofItemCopy];
  v16 = v9;
  if (!v8)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Item %@ not in dependency graph %@", v10, v11, v12, v13, v14, v15, itemCopy);
LABEL_6:
    v18 = 0;
    goto LABEL_7;
  }

  if (!v9)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Item %@ not in dependency graph %@", v10, v11, v12, v13, v14, v15, ofItemCopy);
    goto LABEL_6;
  }

  connections = [v8 connections];
  v18 = [connections containsObject:v16];

LABEL_7:
  return v18;
}

- (void)_enumerateSortedFirstLevelDependenciesOfItem:(id)item usingComparator:(id)comparator withBlock:(id)block
{
  v49 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  comparatorCopy = comparator;
  blockCopy = block;
  if (blockCopy)
  {
    v17 = [(NSMapTable *)self->_nodes objectForKey:itemCopy];
    if (v17)
    {
      v35 = blockCopy;
      v36 = comparatorCopy;
      v37 = itemCopy;
      v46 = 0;
      array = [MEMORY[0x277CBEB18] array];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v19 = self->_nodes;
      v20 = [(NSMapTable *)v19 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v43;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v43 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [(NSMapTable *)self->_nodes objectForKey:*(*(&v42 + 1) + 8 * i)];
            v25 = v24;
            if (v17 != v24)
            {
              connections = [v24 connections];
              v27 = [connections containsObject:v17];

              if (v27)
              {
                item = [v25 item];
                [array addObject:item];
              }
            }
          }

          v21 = [(NSMapTable *)v19 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v21);
      }

      blockCopy = v35;
      comparatorCopy = v36;
      if (v36)
      {
        [array sortUsingComparator:v36];
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v29 = array;
      v30 = [v29 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v39;
LABEL_17:
        v33 = 0;
        while (1)
        {
          if (*v39 != v32)
          {
            objc_enumerationMutation(v29);
          }

          (*(v35 + 2))(v35, *(*(&v38 + 1) + 8 * v33), &v46);
          if (v46)
          {
            break;
          }

          if (v31 == ++v33)
          {
            v31 = [v29 countByEnumeratingWithState:&v38 objects:v47 count:16];
            if (v31)
            {
              goto LABEL_17;
            }

            break;
          }
        }
      }

      itemCopy = v37;
    }

    else
    {
      RERaiseInternalException(*MEMORY[0x277CBE660], @"Item %@ not in dependency graph %@", v11, v12, v13, v14, v15, v16, itemCopy);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  v29 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(REDependencyGraph *)self count];
      p_isa = &v5->super.isa;
      if (v6 == [(REDependencyGraph *)v5 count])
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        obj = self->_nodes;
        v7 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v25;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v25 != v9)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v24 + 1) + 8 * i);
              v12 = [(NSMapTable *)self->_nodes objectForKey:v11];
              v13 = [p_isa[1] objectForKey:v11];
              v14 = v13;
              if (v12)
              {
                v15 = v13 == 0;
              }

              else
              {
                v15 = 1;
              }

              if (v15)
              {

LABEL_22:
                v19 = 0;
                goto LABEL_23;
              }

              connections = [v12 connections];
              connections2 = [v14 connections];
              v18 = [connections isEqualToHashTable:connections2];

              if (!v18)
              {
                goto LABEL_22;
              }
            }

            v8 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
            v19 = 1;
            if (v8)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v19 = 1;
        }

LABEL_23:
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = REDependencyGraph;
  v3 = [(REDependencyGraph *)&v7 description];
  v4 = [(NSMapTable *)self->_nodes description];
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

- (NSArray)allItems
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[REDependencyGraph count](self, "count")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__REDependencyGraph_REGraphExtensions__allItems__block_invoke;
  v7[3] = &unk_2785F9E40;
  v8 = v3;
  v4 = v3;
  [(REDependencyGraph *)self enumerateObjectsUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

- (id)topologicalSortedItemsWithComparator:(id)comparator
{
  v23 = *MEMORY[0x277D85DE8];
  comparatorCopy = comparator;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[REDependencyGraph count](self, "count")}];
  v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:512 capacity:{-[REDependencyGraph count](self, "count")}];
  v7 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:512 capacity:{-[REDependencyGraph count](self, "count")}];
  if (comparatorCopy)
  {
    allItems = [(REDependencyGraph *)self allItems];
    v9 = [allItems sortedArrayUsingComparator:comparatorCopy];
  }

  else
  {
    v9 = self->_nodes;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v9;
  v11 = [(NSMapTable *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(REDependencyGraph *)self _visitNode:*(*(&v18 + 1) + 8 * i) visited:v6 temporary:v7 result:v5 comparator:comparatorCopy warn:comparatorCopy == 0, v18];
      }

      v12 = [(NSMapTable *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v15 = [v5 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_visitNode:(id)node visited:(id)visited temporary:(id)temporary result:(id)result comparator:(id)comparator warn:(BOOL)warn
{
  warnCopy = warn;
  nodeCopy = node;
  visitedCopy = visited;
  temporaryCopy = temporary;
  resultCopy = result;
  comparatorCopy = comparator;
  if (([visitedCopy containsObject:nodeCopy] & 1) == 0)
  {
    if ([temporaryCopy containsObject:nodeCopy])
    {
      if (warnCopy)
      {
        RERaiseInternalException(*MEMORY[0x277CBE658], @"A cycle was detected in the graph. Cannot run topoligcal sort", v19, v20, v21, v22, v23, v24, v27);
      }
    }

    else
    {
      [temporaryCopy addObject:nodeCopy];
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __92__REDependencyGraph_REGraphExtensions___visitNode_visited_temporary_result_comparator_warn___block_invoke;
      v30 = &unk_2785F9E68;
      selfCopy = self;
      v25 = visitedCopy;
      v32 = v25;
      v33 = temporaryCopy;
      v26 = resultCopy;
      v34 = v26;
      v35 = comparatorCopy;
      v36 = warnCopy;
      [(REDependencyGraph *)self _enumerateSortedFirstLevelDependenciesOfItem:nodeCopy usingComparator:v35 withBlock:&v27];
      [v25 addObject:{nodeCopy, v27, v28, v29, v30, selfCopy}];
      [v26 insertObject:nodeCopy atIndex:0];
    }
  }
}

@end