@interface REUpNextDisjointSet
- (BOOL)addItemDidTriggerException:(id)exception;
- (BOOL)containsItem:(id)item;
- (BOOL)isItem:(id)item connectedToItem:(id)toItem;
- (REUpNextDisjointSet)init;
- (id)allItemsConnectedToItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addItem:(id)item;
- (void)connectItem:(id)item withItem:(id)withItem;
- (void)dealloc;
- (void)removeItem:(id)item;
@end

@implementation REUpNextDisjointSet

- (REUpNextDisjointSet)init
{
  v6.receiver = self;
  v6.super_class = REUpNextDisjointSet;
  v2 = [(REUpNextDisjointSet *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:0];
    nodes = v2->_nodes;
    v2->_nodes = v3;
  }

  return v2;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_nodes;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_nodes objectForKey:*(*(&v12 + 1) + 8 * v7)];
        [v8 setParent:0];
        children = [v8 children];
        [children removeAllObjects];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11.receiver = self;
  v11.super_class = REUpNextDisjointSet;
  [(REUpNextDisjointSet *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = [[REUpNextDisjointSet allocWithZone:?]];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3042000000;
  v29 = __Block_byref_object_copy__9;
  v30 = __Block_byref_object_dispose__9;
  v31 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __36__REUpNextDisjointSet_copyWithZone___block_invoke;
  v23[3] = &unk_2785FB930;
  v5 = v4;
  v24 = v5;
  v25 = &v26;
  v6 = MEMORY[0x22AABC5E0](v23);
  objc_storeWeak(v27 + 5, v6);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_nodes;
  v8 = [(NSMapTable *)v7 countByEnumeratingWithState:&v19 objects:v32 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v5[1] objectForKey:{v11, v19}];
        v13 = v12 == 0;

        if (v13)
        {
          v14 = [(NSMapTable *)self->_nodes objectForKey:v11];
          rootNode = [v14 rootNode];
          (v6)[2](v6, rootNode, 0);
        }
      }

      v8 = [(NSMapTable *)v7 countByEnumeratingWithState:&v19 objects:v32 count:16];
    }

    while (v8);
  }

  v16 = v5;
  _Block_object_dispose(&v26, 8);
  objc_destroyWeak(&v31);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void __36__REUpNextDisjointSet_copyWithZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = [v5 item];
  v9 = [v7 objectForKey:v8];

  if (!v9)
  {
    v10 = [REUpNextSetNode alloc];
    v11 = [v5 item];
    v12 = [(REUpNextSetNode *)v10 initWithItem:v11];

    v13 = *(*(a1 + 32) + 8);
    v14 = [v5 item];
    [v13 setObject:v12 forKey:v14];

    if (v6)
    {
      [(REUpNextSetNode *)v12 join:v6];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = [v5 children];
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        v19 = 0;
        do
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * v19);
          WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
          WeakRetained[2](WeakRetained, v20, v12);

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)addItemDidTriggerException:(id)exception
{
  exceptionCopy = exception;
  v5 = [(REUpNextDisjointSet *)self containsItem:exceptionCopy];
  if (v5)
  {
    v6 = RELogForDomain(3);
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      [(REUpNextDisjointSet *)exceptionCopy addItemDidTriggerException:&v6->super];
    }
  }

  else
  {
    v6 = [[REUpNextSetNode alloc] initWithItem:exceptionCopy];
    [(NSMapTable *)self->_nodes setObject:v6 forKey:exceptionCopy];
  }

  return v5;
}

- (void)addItem:(id)item
{
  itemCopy = item;
  if ([(REUpNextDisjointSet *)self containsItem:?])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Item %@ already in disjoint set %@", itemCopy, self}];
  }

  v4 = [[REUpNextSetNode alloc] initWithItem:itemCopy];
  [(NSMapTable *)self->_nodes setObject:v4 forKey:itemCopy];
}

- (void)removeItem:(id)item
{
  itemCopy = item;
  v4 = [(NSMapTable *)self->_nodes objectForKey:?];
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Item %@ not in disjoint set %@", itemCopy, self}];
  }

  [v4 remove];
  [(NSMapTable *)self->_nodes removeObjectForKey:itemCopy];
}

- (void)connectItem:(id)item withItem:(id)withItem
{
  itemCopy = item;
  withItemCopy = withItem;
  v7 = [(NSMapTable *)self->_nodes objectForKey:itemCopy];
  v8 = [(NSMapTable *)self->_nodes objectForKey:withItemCopy];
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Item %@ not in disjoint set %@", itemCopy, self}];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Item %@ not in disjoint set %@", withItemCopy, self}];
LABEL_3:
  [v7 join:v9];
}

- (BOOL)containsItem:(id)item
{
  v3 = [(NSMapTable *)self->_nodes objectForKey:item];
  v4 = v3 != 0;

  return v4;
}

- (id)allItemsConnectedToItem:(id)item
{
  itemCopy = item;
  v5 = [(NSMapTable *)self->_nodes objectForKey:itemCopy];
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Item %@ not in disjoint set %@", itemCopy, self}];
  }

  v6 = [MEMORY[0x277CBEB58] set];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3042000000;
  v20 = __Block_byref_object_copy__9;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__REUpNextDisjointSet_allItemsConnectedToItem___block_invoke;
  v13[3] = &unk_2785FB958;
  v7 = v5;
  v14 = v7;
  v8 = v6;
  v15 = v8;
  v16 = &v17;
  v9 = MEMORY[0x22AABC5E0](v13);
  objc_storeWeak(v18 + 5, v9);
  rootNode = [v7 rootNode];
  (v9)[2](v9, rootNode);
  v11 = [v8 copy];

  _Block_object_dispose(&v17, 8);
  objc_destroyWeak(&v22);

  return v11;
}

void __47__REUpNextDisjointSet_allItemsConnectedToItem___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1[4] != v3)
  {
    v5 = a1[5];
    v6 = [v3 item];
    [v5 addObject:v6];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v4 children];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        WeakRetained = objc_loadWeakRetained((*(a1[6] + 8) + 40));
        WeakRetained[2](WeakRetained, v12);

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isItem:(id)item connectedToItem:(id)toItem
{
  itemCopy = item;
  toItemCopy = toItem;
  v8 = [(NSMapTable *)self->_nodes objectForKey:itemCopy];
  v9 = [(NSMapTable *)self->_nodes objectForKey:toItemCopy];
  v10 = v9;
  if (!v8)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Item %@ not in disjoint set %@", itemCopy, self}];
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Item %@ not in disjoint set %@", toItemCopy, self}];
    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  rootNode = [v8 rootNode];
  rootNode2 = [v10 rootNode];
  v13 = [rootNode isEqual:rootNode2];

  return v13;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = REUpNextDisjointSet;
  v3 = [(REUpNextDisjointSet *)&v7 description];
  v4 = [(NSMapTable *)self->_nodes description];
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

- (void)addItemDidTriggerException:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_22859F000, log, OS_LOG_TYPE_ERROR, "Item %@ already in disjoint set %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end