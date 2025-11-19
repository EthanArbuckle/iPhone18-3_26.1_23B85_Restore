@interface _UIDiffableDataSourceExpandCollapseAnimationContext
- (id)indexPathsForChildItemsInCollapsingParent:(id)a3;
- (id)indexPathsForChildItemsInExpandingParent:(id)a3;
- (id)indexPathsForCollapsedParentItems;
- (id)indexPathsForExpandedParentItems;
- (uint64_t)_visibleIndexForIndex:(void *)a3 identifiers:(void *)a4 visibleIdentifiers:;
@end

@implementation _UIDiffableDataSourceExpandCollapseAnimationContext

- (uint64_t)_visibleIndexForIndex:(void *)a3 identifiers:(void *)a4 visibleIdentifiers:
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    if ([v7 count] <= a2)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = [v7 objectAtIndexedSubscript:a2];
      v10 = [v8 indexOfObject:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)indexPathsForExpandedParentItems
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_identifiersOfExpandedItems count])
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_identifiersOfExpandedItems, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_identifiersOfExpandedItems;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(NSOrderedSet *)self->_initialVisibleIdentifiers indexOfObject:*(*(&v12 + 1) + 8 * i), v12];
          if (v9 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:self->_sectionIndex];
            [v3 addObject:v10];
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (id)indexPathsForChildItemsInExpandingParent:(id)a3
{
  v4 = -[NSOrderedSet objectAtIndex:](self->_initialVisibleIdentifiers, "objectAtIndex:", [a3 item]);
  v5 = [(NSDiffableDataSourceSectionSnapshot *)self->_finalSectionSnapshot _indexesOfChildrenForParent:v4 recursive:1];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96___UIDiffableDataSourceExpandCollapseAnimationContext_indexPathsForChildItemsInExpandingParent___block_invoke;
  v11[3] = &unk_1E70F43F0;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v5 enumerateIndexesUsingBlock:v11];
  v8 = v12;
  v9 = v7;

  return v7;
}

- (id)indexPathsForCollapsedParentItems
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_identifiersOfCollapsedItems count])
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_identifiersOfCollapsedItems, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_identifiersOfCollapsedItems;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(NSOrderedSet *)self->_initialVisibleIdentifiers indexOfObject:*(*(&v12 + 1) + 8 * i), v12];
          if (v9 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:self->_sectionIndex];
            [v3 addObject:v10];
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (id)indexPathsForChildItemsInCollapsingParent:(id)a3
{
  v4 = -[NSOrderedSet objectAtIndex:](self->_initialVisibleIdentifiers, "objectAtIndex:", [a3 item]);
  v5 = [(NSDiffableDataSourceSectionSnapshot *)self->_finalSectionSnapshot _indexesOfChildrenForParent:v4 recursive:1];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __97___UIDiffableDataSourceExpandCollapseAnimationContext_indexPathsForChildItemsInCollapsingParent___block_invoke;
  v11[3] = &unk_1E70F43F0;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v5 enumerateIndexesUsingBlock:v11];
  v8 = v12;
  v9 = v7;

  return v7;
}

@end