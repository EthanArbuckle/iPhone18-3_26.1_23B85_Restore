@interface _UIButtonBarGroupOrderer
+ (id)groupOrdererForCustomizationIdentifier:(id)identifier;
- (id)_initWithCustomizationIdentifier:(id)identifier data:(id)data;
- (id)groups;
- (id)setOwner:(id *)result;
- (void)_orderGroups;
- (void)enumerateOrderedGroupsPartitionedIntoSections:(void *)sections;
- (void)enumerateSourceGroups:(id *)groups;
- (void)invalidate;
- (void)orderedGroups;
- (void)reset;
- (void)save;
- (void)setIncludedIdentifiers:(void *)identifiers excludedIdentifiers:;
@end

@implementation _UIButtonBarGroupOrderer

- (void)invalidate
{
  if (self)
  {
    v2 = *(self + 24);
    *(self + 24) = 0;

    v3 = *(self + 32);
    *(self + 32) = 0;
  }
}

+ (id)groupOrdererForCustomizationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIButtonBarGroupOrderer.m" lineNumber:42 description:@"Cannot instantiate a _UIButtonBarGroupOrderer with a nil customizationIdentifier"];
  }

  v6 = [_UIButtonBarGroupOrderer alloc];
  v7 = __customizationDataForIdentifier(identifierCopy);
  v8 = [(_UIButtonBarGroupOrderer *)v6 _initWithCustomizationIdentifier:identifierCopy data:v7];

  return v8;
}

- (id)_initWithCustomizationIdentifier:(id)identifier data:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  v31.receiver = self;
  v31.super_class = _UIButtonBarGroupOrderer;
  v8 = [(_UIButtonBarGroupOrderer *)&v31 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    customizationIdentifier = v8->_customizationIdentifier;
    v8->_customizationIdentifier = v9;

    v11 = [dataCopy objectForKeyedSubscript:@"version"];
    v12 = v11;
    if (v11 == &unk_1EFE33F70 || v11 && (v13 = [v11 isEqual:&unk_1EFE33F70], v12, v13))
    {
      v14 = [dataCopy objectForKey:@"includedItems"];
      v15 = v14;
      v16 = MEMORY[0x1E695E0F0];
      if (v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = MEMORY[0x1E695E0F0];
      }

      v18 = v17;

      v19 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v18];
      includedItems = v8->_includedItems;
      v8->_includedItems = v19;

      v21 = [dataCopy objectForKey:@"excludedItems"];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = v16;
      }

      v24 = v23;

      v25 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v24];
      excludedItems = v8->_excludedItems;
      v8->_excludedItems = v25;
    }

    else
    {
      orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
      v28 = v8->_includedItems;
      v8->_includedItems = orderedSet;

      v29 = [MEMORY[0x1E695DFA8] set];
      v18 = v8->_excludedItems;
      v8->_excludedItems = v29;
    }
  }

  return v8;
}

- (void)save
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if ([self _hasCustomization])
    {
      v7[0] = &unk_1EFE33F70;
      v6[0] = @"version";
      v6[1] = @"includedItems";
      array = [*(self + 8) array];
      v3 = [array copy];
      v7[1] = v3;
      v6[2] = @"excludedItems";
      allObjects = [*(self + 16) allObjects];
      v7[2] = allObjects;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
    }

    else
    {
      v5 = 0;
    }

    __setCustomizationDataForIdentifier(v5, *(self + 40));
  }
}

- (void)reset
{
  if (self)
  {
    __setCustomizationDataForIdentifier(0, *(self + 40));
    [*(self + 8) removeAllObjects];
    [*(self + 16) removeAllObjects];
    v2 = *(self + 24);
    *(self + 24) = 0;

    v3 = *(self + 32);
    *(self + 32) = 0;

    WeakRetained = objc_loadWeakRetained((self + 48));
    [WeakRetained _groupOrdererDidUpdate:self];
  }
}

- (id)groups
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 6);
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = [WeakRetained _groupOrdererGroups:selfCopy];
      v5 = v4;
      v6 = MEMORY[0x1E695E0F0];
      if (v4)
      {
        v6 = v4;
      }

      selfCopy = v6;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)enumerateSourceGroups:(id *)groups
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (groups)
  {
    orderedGroups = [(_UIButtonBarGroupOrderer *)groups orderedGroups];
    v5 = [MEMORY[0x1E695DFA8] set];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = orderedGroups;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v3[2](v3, v11, 1);
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }

    groups = [(_UIButtonBarGroupOrderer *)groups groups];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = [groups countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(groups);
          }

          v17 = *(*(&v18 + 1) + 8 * j);
          if (([v5 containsObject:v17] & 1) == 0)
          {
            v3[2](v3, v17, 0);
          }
        }

        v14 = [groups countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }
  }
}

- (void)orderedGroups
{
  if (self)
  {
    selfCopy = self;
    v3 = self[3];
    if (!v3)
    {
      [self _orderGroups];
      v3 = selfCopy[3];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)enumerateOrderedGroupsPartitionedIntoSections:(void *)sections
{
  v3 = a2;
  v4 = v3;
  if (sections)
  {
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_enumerateOrderedGroupsPartitionedIntoSections_ object:sections file:@"_UIButtonBarGroupOrderer.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"sectionHandler != nil"}];
    }

    v5 = sections[4];
    if (!v5)
    {
      [sections _orderGroups];
      v5 = sections[4];
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74___UIButtonBarGroupOrderer_enumerateOrderedGroupsPartitionedIntoSections___block_invoke;
    v8[3] = &unk_1E712B930;
    v9 = v4;
    v6 = v5;
    [v6 enumerateObjectsUsingBlock:v8];
  }
}

- (void)setIncludedIdentifiers:(void *)identifiers excludedIdentifiers:
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  identifiersCopy = identifiers;
  if (self)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    groups = [(_UIButtonBarGroupOrderer *)self groups];
    v9 = [groups countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(groups);
          }

          v13 = *(*(&v40 + 1) + 8 * i);
          _customizationIdentifier = [v13 _customizationIdentifier];
          if (_customizationIdentifier)
          {
            [dictionary setObject:v13 forKeyedSubscript:_customizationIdentifier];
          }
        }

        v10 = [groups countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v10);
    }

    [*(self + 8) removeAllObjects];
    [*(self + 16) removeAllObjects];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v15 = identifiersCopy;
    v16 = [v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v37;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v36 + 1) + 8 * j);
          v21 = [dictionary objectForKeyedSubscript:v20];

          if (v21)
          {
            [*(self + 16) addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v17);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = v5;
    v23 = [v22 countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v33;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v32 + 1) + 8 * k);
          v28 = [dictionary objectForKeyedSubscript:{v27, v32}];

          if (v28)
          {
            [*(self + 8) addObject:v27];
            [*(self + 16) removeObject:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v24);
    }

    v29 = *(self + 24);
    *(self + 24) = 0;

    v30 = *(self + 32);
    *(self + 32) = 0;

    WeakRetained = objc_loadWeakRetained((self + 48));
    [WeakRetained _groupOrdererDidUpdate:self];
  }
}

- (void)_orderGroups
{
  v40 = *MEMORY[0x1E69E9840];
  groups = [(_UIButtonBarGroupOrderer *)&self->super.isa groups];
  if (groups)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(groups, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = groups;
    v6 = groups;
    v7 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v35;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          _customizationIdentifier = [v12 _customizationIdentifier];
          if (_customizationIdentifier)
          {
            if ([(NSMutableOrderedSet *)self->_includedItems containsObject:_customizationIdentifier])
            {
              [dictionary setObject:v12 forKeyedSubscript:_customizationIdentifier];
            }

            else if ([v12 _isDefaultItem] && (-[NSMutableSet containsObject:](self->_excludedItems, "containsObject:", _customizationIdentifier) & 1) == 0)
            {
              [v5 addObject:v12];
            }
          }

          else
          {
            [v5 insertObject:v12 atIndex:v9++];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = self->_includedItems;
    v15 = [(NSMutableOrderedSet *)v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [dictionary objectForKeyedSubscript:{*(*(&v30 + 1) + 8 * j), v27}];
          if (v19)
          {
            [v5 insertObject:v19 atIndex:v9++];
          }
        }

        v16 = [(NSMutableOrderedSet *)v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v16);
    }

    v20 = [v5 copy];
    orderedGroups = self->_orderedGroups;
    self->_orderedGroups = v20;

    v22 = objc_opt_new();
    v23 = self->_orderedGroups;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __40___UIButtonBarGroupOrderer__orderGroups__block_invoke;
    v28[3] = &unk_1E70F2FC8;
    v24 = v22;
    v29 = v24;
    [UINavigationItem _partitionGroupsIntoSections:v23 sectionHandler:v28];
    orderedGroupsPartitionedIntoSections = self->_orderedGroupsPartitionedIntoSections;
    self->_orderedGroupsPartitionedIntoSections = v24;
    v26 = v24;

    groups = v27;
  }
}

- (id)setOwner:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 6, a2);
  }

  return result;
}

@end