@interface SBIconIndexMutableList
- (BOOL)containsNode:(id)a3;
- (BOOL)containsNodeIdentifier:(id)a3;
- (BOOL)directlyContainsNodeIdentifier:(id)a3;
- (BOOL)directlyContainsNodeIdentifier:(id)a3 passingTest:(id)a4;
- (SBIconIndexMutableList)init;
- (SBIconIndexMutableList)initWithList:(id)a3 copyNodes:(BOOL)a4;
- (SBIconIndexMutableListObserver)observer;
- (id)containedNodeIdentifiers;
- (id)copyWithZone:(_NSZone *)a3;
- (id)directlyContainedNodeIdentifier:(id)a3;
- (id)indexPathsForContainedNodeIdentifier:(id)a3 prefixPath:(id)a4;
- (id)nodes;
- (id)nodesAlongIndexPath:(id)a3 consumedIndexes:(unint64_t)a4;
- (id)nodesContainingNodeIdentifier:(id)a3;
- (void)addNode:(id)a3;
- (void)dealloc;
- (void)didAddNode:(id)a3;
- (void)didAddNodes:(id)a3;
- (void)didRemoveNode:(id)a3;
- (void)didRemoveNodes:(id)a3;
- (void)insertNode:(id)a3 atIndex:(unint64_t)a4;
- (void)insertNodes:(id)a3 atIndexes:(id)a4;
- (void)moveNode:(id)a3 toIndex:(unint64_t)a4;
- (void)moveNodes:(id)a3 toContiguousIndicesStartingAt:(unint64_t)a4;
- (void)node:(id)a3 didAddContainedNodeIdentifiers:(id)a4;
- (void)node:(id)a3 didRemoveContainedNodeIdentifiers:(id)a4;
- (void)nodeDidMoveContainedNodes:(id)a3;
- (void)removeAllNodes;
- (void)removeLastNode;
- (void)removeNode:(id)a3;
- (void)removeNodeAtIndex:(unint64_t)a3;
- (void)removeNodeIdenticalTo:(id)a3;
- (void)removeNodesAtIndexes:(id)a3;
- (void)removeNodesInArray:(id)a3;
- (void)removeNodesInRange:(_NSRange)a3;
- (void)replaceNodeAtIndex:(unint64_t)a3 withNode:(id)a4;
- (void)setNodes:(id)a3;
@end

@implementation SBIconIndexMutableList

- (id)nodes
{
  v2 = [(NSMutableArray *)self->_nodes copy];

  return v2;
}

- (SBIconIndexMutableList)init
{
  v6.receiver = self;
  v6.super_class = SBIconIndexMutableList;
  v2 = [(SBIconIndexMutableList *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    nodes = v2->_nodes;
    v2->_nodes = v3;
  }

  return v2;
}

- (SBIconIndexMutableList)initWithList:(id)a3 copyNodes:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SBIconIndexMutableList;
  v7 = [(SBIconIndexMutableList *)&v11 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v6[1] copyItems:v4];
    nodes = v7->_nodes;
    v7->_nodes = v8;
  }

  return v7;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_nodes;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeNodeObserver:self];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SBIconIndexMutableList;
  [(SBIconIndexMutableList *)&v8 dealloc];
}

- (BOOL)containsNodeIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_nodes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 nodeIdentifier];
        if ([v11 isEqual:v4])
        {

LABEL_13:
          v13 = 1;
          goto LABEL_14;
        }

        v12 = [v10 containsNodeIdentifier:v4];

        if (v12)
        {
          goto LABEL_13;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v13 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_14:

  return v13;
}

- (BOOL)directlyContainsNodeIdentifier:(id)a3
{
  v4 = a3;
  nodes = self->_nodes;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__SBIconIndexMutableList_directlyContainsNodeIdentifier___block_invoke;
  v8[3] = &unk_1E808AFD8;
  v9 = v4;
  v6 = v4;
  LOBYTE(nodes) = [(NSMutableArray *)nodes bs_containsObjectPassingTest:v8];

  return nodes;
}

uint64_t __57__SBIconIndexMutableList_directlyContainsNodeIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 nodeIdentifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (BOOL)directlyContainsNodeIdentifier:(id)a3 passingTest:(id)a4
{
  v6 = a3;
  v7 = a4;
  nodes = self->_nodes;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__SBIconIndexMutableList_directlyContainsNodeIdentifier_passingTest___block_invoke;
  v12[3] = &unk_1E808B000;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  LOBYTE(nodes) = [(NSMutableArray *)nodes bs_containsObjectPassingTest:v12];

  return nodes;
}

uint64_t __69__SBIconIndexMutableList_directlyContainsNodeIdentifier_passingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 nodeIdentifier];
  if ([v4 isEqual:v5])
  {
    v6 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)directlyContainedNodeIdentifier:(id)a3
{
  v4 = a3;
  nodes = self->_nodes;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__SBIconIndexMutableList_directlyContainedNodeIdentifier___block_invoke;
  v10[3] = &unk_1E808B028;
  v6 = v4;
  v11 = v6;
  v7 = [(NSMutableArray *)nodes indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSMutableArray *)self->_nodes objectAtIndex:v7];
  }

  return v8;
}

uint64_t __58__SBIconIndexMutableList_directlyContainedNodeIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 nodeIdentifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (id)nodesContainingNodeIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_nodes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 nodeIdentifier];
        if ([v11 isEqual:v4] & 1) != 0 || (objc_msgSend(v10, "containsNodeIdentifier:", v4))
        {
          v12 = [MEMORY[0x1E695DFA8] setWithObject:v10];

          goto LABEL_13;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v12 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (id)containedNodeIdentifiers
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_nodes;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 nodeIdentifier];
        [v3 addObject:v10];
        v11 = [v9 containedNodeIdentifiers];
        if (v11)
        {
          [v3 unionSet:v11];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)indexPathsForContainedNodeIdentifier:(id)a3 prefixPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  nodes = self->_nodes;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__SBIconIndexMutableList_indexPathsForContainedNodeIdentifier_prefixPath___block_invoke;
  v16[3] = &unk_1E808B050;
  v9 = v6;
  v17 = v9;
  v19 = &v20;
  v10 = v7;
  v18 = v10;
  [(NSMutableArray *)nodes enumerateObjectsUsingBlock:v16];
  v11 = v21[5];
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFA8] set];
    v13 = v21[5];
    v21[5] = v12;

    v11 = v21[5];
  }

  v14 = v11;

  _Block_object_dispose(&v20, 8);

  return v14;
}

void __74__SBIconIndexMutableList_indexPathsForContainedNodeIdentifier_prefixPath___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v5 = [v18 nodeIdentifier];
  if ([v5 isEqual:*(a1 + 32)])
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    if (!v6)
    {
      v7 = [MEMORY[0x1E695DFA8] set];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 48) + 8) + 40);
    }

    v10 = [*(a1 + 40) indexPathByAddingIndex:a3];
    [v6 addObject:v10];
  }

  else
  {
    v11 = [v18 containedNodeIdentifiers];
    v12 = [v11 containsObject:*(a1 + 32)];

    if (!v12)
    {
      goto LABEL_11;
    }

    v10 = [*(a1 + 40) indexPathByAddingIndex:a3];
    v13 = [v18 indexPathsForContainedNodeIdentifier:*(a1 + 32) prefixPath:v10];
    v14 = *(*(a1 + 48) + 8);
    v17 = *(v14 + 40);
    v15 = (v14 + 40);
    v16 = v17;
    if (v17)
    {
      [v16 unionSet:v13];
    }

    else
    {
      objc_storeStrong(v15, v13);
    }
  }

LABEL_11:
}

- (id)nodesAlongIndexPath:(id)a3 consumedIndexes:(unint64_t)a4
{
  v6 = a3;
  if ([v6 length] <= a4 || (v7 = objc_msgSend(v6, "indexAtPosition:", a4), v7 >= -[SBIconIndexMutableList count](self, "count")))
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:a4 + 1];
  }

  else
  {
    v8 = [(SBIconIndexMutableList *)self nodeAtIndex:v7];
    v9 = [v8 nodesAlongIndexPath:v6 consumedIndexes:a4 + 1];
  }

  return v9;
}

- (BOOL)containsNode:(id)a3
{
  v4 = [a3 nodeIdentifier];
  LOBYTE(self) = [(SBIconIndexMutableList *)self containsNodeIdentifier:v4];

  return self;
}

- (void)insertNode:(id)a3 atIndex:(unint64_t)a4
{
  nodes = self->_nodes;
  v7 = a3;
  [(NSMutableArray *)nodes insertObject:v7 atIndex:a4];
  [(SBIconIndexMutableList *)self didAddNode:v7];
}

- (void)insertNodes:(id)a3 atIndexes:(id)a4
{
  nodes = self->_nodes;
  v7 = a3;
  [(NSMutableArray *)nodes insertObjects:v7 atIndexes:a4];
  [(SBIconIndexMutableList *)self didAddNodes:v7];
}

- (void)addNode:(id)a3
{
  v4 = a3;
  [(SBIconIndexMutableList *)self insertNode:v4 atIndex:[(SBIconIndexMutableList *)self count]];
}

- (void)replaceNodeAtIndex:(unint64_t)a3 withNode:(id)a4
{
  v6 = a4;
  v7 = [(SBIconIndexMutableList *)self nodeAtIndex:a3];
  [(NSMutableArray *)self->_nodes replaceObjectAtIndex:a3 withObject:v6];
  [(SBIconIndexMutableList *)self didAddNode:v6];

  [(SBIconIndexMutableList *)self didRemoveNode:v7];
}

- (void)removeNode:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_nodes containsObject:v4])
  {
    nodes = self->_nodes;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__SBIconIndexMutableList_removeNode___block_invoke;
    v9[3] = &unk_1E808B028;
    v6 = v4;
    v10 = v6;
    v7 = [(NSMutableArray *)nodes indexesOfObjectsPassingTest:v9];
    v8 = [(NSMutableArray *)self->_nodes objectsAtIndexes:v7];
    [(NSMutableArray *)self->_nodes removeObject:v6];
    [(SBIconIndexMutableList *)self didRemoveNodes:v8];
  }
}

- (void)removeNodeIdenticalTo:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_nodes containsObject:?])
  {
    [(NSMutableArray *)self->_nodes removeObjectIdenticalTo:v4];
    [(SBIconIndexMutableList *)self didRemoveNode:v4];
  }
}

- (void)removeNodeAtIndex:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:a3];
  [(SBIconIndexMutableList *)self removeNodesAtIndexes:v4];
}

- (void)removeNodesAtIndexes:(id)a3
{
  if (a3)
  {
    nodes = self->_nodes;
    v5 = a3;
    v6 = [(NSMutableArray *)nodes objectsAtIndexes:v5];
    [(NSMutableArray *)self->_nodes removeObjectsAtIndexes:v5];

    [(SBIconIndexMutableList *)self didRemoveNodes:v6];
  }
}

- (void)removeNodesInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(NSMutableArray *)self->_nodes subarrayWithRange:?];
  [(NSMutableArray *)self->_nodes removeObjectsInRange:location, length];
  [(SBIconIndexMutableList *)self didRemoveNodes:v6];
}

- (void)removeNodesInArray:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SBIconIndexMutableList *)self removeNode:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeLastNode
{
  v3 = [(NSMutableArray *)self->_nodes lastObject];
  [(NSMutableArray *)self->_nodes removeLastObject];
  [(SBIconIndexMutableList *)self didRemoveNode:v3];
}

- (void)removeAllNodes
{
  v3 = [(NSMutableArray *)self->_nodes count];

  [(SBIconIndexMutableList *)self removeNodesInRange:0, v3];
}

- (void)setNodes:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_nodes;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  nodes = self->_nodes;
  self->_nodes = v6;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([(NSMutableArray *)v5 containsObject:v13, v14])
        {
          [(NSMutableArray *)v5 removeObject:v13];
        }

        else
        {
          [(SBIconIndexMutableList *)self didAddNode:v13];
        }

        [(NSMutableArray *)self->_nodes addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(SBIconIndexMutableList *)self didRemoveNodes:v5];
}

- (void)moveNode:(id)a3 toIndex:(unint64_t)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v9 count:1];

  [(SBIconIndexMutableList *)self moveNodes:v8 toContiguousIndicesStartingAt:a4, v9, v10];
}

- (void)moveNodes:(id)a3 toContiguousIndicesStartingAt:(unint64_t)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v40;
    v11 = a4;
    do
    {
      v12 = 0;
      v13 = v11;
      do
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 |= v13++ != [(SBIconIndexMutableList *)self indexOfNode:*(*(&v39 + 1) + 8 * v12++)];
      }

      while (v8 != v12);
      v11 += v8;
      v8 = [v6 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v8);
    if (v9)
    {
      v14 = [(NSMutableArray *)self->_nodes count];
      v15 = [v6 count];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v16 = v6;
      v17 = [v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v36;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v36 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [(NSMutableArray *)self->_nodes removeObject:*(*(&v35 + 1) + 8 * i)];
          }

          v18 = [v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
        }

        while (v18);
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v21 = v16;
      v22 = [v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = v14 - v15;
        v25 = *v32;
        v26 = a4;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v32 != v25)
            {
              objc_enumerationMutation(v21);
            }

            v28 = *(*(&v31 + 1) + 8 * j);
            nodes = self->_nodes;
            if (v24 <= a4)
            {
              [(NSMutableArray *)nodes addObject:v28, v31];
            }

            else
            {
              [(NSMutableArray *)nodes insertObject:v28 atIndex:v26++];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
        }

        while (v23);
      }

      WeakRetained = objc_loadWeakRetained(&self->_observer);
      [WeakRetained listDidMoveNodes:self];
    }
  }
}

- (void)didAddNode:(id)a3
{
  v4 = a3;
  [v4 addNodeObserver:self];
  v5 = [v4 containedNodeIdentifiers];
  [(SBIconIndexMutableList *)self node:v4 didAddContainedNodeIdentifiers:v5];
}

- (void)didAddNodes:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SBIconIndexMutableList *)self didAddNode:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)didRemoveNode:(id)a3
{
  v4 = a3;
  [v4 removeNodeObserver:self];
  v5 = [v4 containedNodeIdentifiers];
  [(SBIconIndexMutableList *)self node:v4 didRemoveContainedNodeIdentifiers:v5];
}

- (void)didRemoveNodes:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SBIconIndexMutableList *)self didRemoveNode:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)node:(id)a3 didAddContainedNodeIdentifiers:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained list:self didAddContainedNodeIdentifiers:v5];
}

- (void)node:(id)a3 didRemoveContainedNodeIdentifiers:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained list:self didRemoveContainedNodeIdentifiers:v5];
}

- (void)nodeDidMoveContainedNodes:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained listDidMoveNodes:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSMutableArray *)self->_nodes mutableCopyWithZone:a3];
    v7 = v5[1];
    v5[1] = v6;

    v8 = v5;
  }

  return v5;
}

- (SBIconIndexMutableListObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end