@interface SBIconIndexMutableList
- (BOOL)containsNode:(id)node;
- (BOOL)containsNodeIdentifier:(id)identifier;
- (BOOL)directlyContainsNodeIdentifier:(id)identifier;
- (BOOL)directlyContainsNodeIdentifier:(id)identifier passingTest:(id)test;
- (SBIconIndexMutableList)init;
- (SBIconIndexMutableList)initWithList:(id)list copyNodes:(BOOL)nodes;
- (SBIconIndexMutableListObserver)observer;
- (id)containedNodeIdentifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)directlyContainedNodeIdentifier:(id)identifier;
- (id)indexPathsForContainedNodeIdentifier:(id)identifier prefixPath:(id)path;
- (id)nodes;
- (id)nodesAlongIndexPath:(id)path consumedIndexes:(unint64_t)indexes;
- (id)nodesContainingNodeIdentifier:(id)identifier;
- (void)addNode:(id)node;
- (void)dealloc;
- (void)didAddNode:(id)node;
- (void)didAddNodes:(id)nodes;
- (void)didRemoveNode:(id)node;
- (void)didRemoveNodes:(id)nodes;
- (void)insertNode:(id)node atIndex:(unint64_t)index;
- (void)insertNodes:(id)nodes atIndexes:(id)indexes;
- (void)moveNode:(id)node toIndex:(unint64_t)index;
- (void)moveNodes:(id)nodes toContiguousIndicesStartingAt:(unint64_t)at;
- (void)node:(id)node didAddContainedNodeIdentifiers:(id)identifiers;
- (void)node:(id)node didRemoveContainedNodeIdentifiers:(id)identifiers;
- (void)nodeDidMoveContainedNodes:(id)nodes;
- (void)removeAllNodes;
- (void)removeLastNode;
- (void)removeNode:(id)node;
- (void)removeNodeAtIndex:(unint64_t)index;
- (void)removeNodeIdenticalTo:(id)to;
- (void)removeNodesAtIndexes:(id)indexes;
- (void)removeNodesInArray:(id)array;
- (void)removeNodesInRange:(_NSRange)range;
- (void)replaceNodeAtIndex:(unint64_t)index withNode:(id)node;
- (void)setNodes:(id)nodes;
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

- (SBIconIndexMutableList)initWithList:(id)list copyNodes:(BOOL)nodes
{
  nodesCopy = nodes;
  listCopy = list;
  v11.receiver = self;
  v11.super_class = SBIconIndexMutableList;
  v7 = [(SBIconIndexMutableList *)&v11 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:listCopy[1] copyItems:nodesCopy];
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

- (BOOL)containsNodeIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
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
        nodeIdentifier = [v10 nodeIdentifier];
        if ([nodeIdentifier isEqual:identifierCopy])
        {

LABEL_13:
          v13 = 1;
          goto LABEL_14;
        }

        v12 = [v10 containsNodeIdentifier:identifierCopy];

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

- (BOOL)directlyContainsNodeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  nodes = self->_nodes;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__SBIconIndexMutableList_directlyContainsNodeIdentifier___block_invoke;
  v8[3] = &unk_1E808AFD8;
  v9 = identifierCopy;
  v6 = identifierCopy;
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

- (BOOL)directlyContainsNodeIdentifier:(id)identifier passingTest:(id)test
{
  identifierCopy = identifier;
  testCopy = test;
  nodes = self->_nodes;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__SBIconIndexMutableList_directlyContainsNodeIdentifier_passingTest___block_invoke;
  v12[3] = &unk_1E808B000;
  v13 = identifierCopy;
  v14 = testCopy;
  v9 = testCopy;
  v10 = identifierCopy;
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

- (id)directlyContainedNodeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  nodes = self->_nodes;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__SBIconIndexMutableList_directlyContainedNodeIdentifier___block_invoke;
  v10[3] = &unk_1E808B028;
  v6 = identifierCopy;
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

- (id)nodesContainingNodeIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
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
        nodeIdentifier = [v10 nodeIdentifier];
        if ([nodeIdentifier isEqual:identifierCopy] & 1) != 0 || (objc_msgSend(v10, "containsNodeIdentifier:", identifierCopy))
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
        nodeIdentifier = [v9 nodeIdentifier];
        [v3 addObject:nodeIdentifier];
        containedNodeIdentifiers = [v9 containedNodeIdentifiers];
        if (containedNodeIdentifiers)
        {
          [v3 unionSet:containedNodeIdentifiers];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)indexPathsForContainedNodeIdentifier:(id)identifier prefixPath:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
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
  v9 = identifierCopy;
  v17 = v9;
  v19 = &v20;
  v10 = pathCopy;
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

- (id)nodesAlongIndexPath:(id)path consumedIndexes:(unint64_t)indexes
{
  pathCopy = path;
  if ([pathCopy length] <= indexes || (v7 = objc_msgSend(pathCopy, "indexAtPosition:", indexes), v7 >= -[SBIconIndexMutableList count](self, "count")))
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:indexes + 1];
  }

  else
  {
    v8 = [(SBIconIndexMutableList *)self nodeAtIndex:v7];
    v9 = [v8 nodesAlongIndexPath:pathCopy consumedIndexes:indexes + 1];
  }

  return v9;
}

- (BOOL)containsNode:(id)node
{
  nodeIdentifier = [node nodeIdentifier];
  LOBYTE(self) = [(SBIconIndexMutableList *)self containsNodeIdentifier:nodeIdentifier];

  return self;
}

- (void)insertNode:(id)node atIndex:(unint64_t)index
{
  nodes = self->_nodes;
  nodeCopy = node;
  [(NSMutableArray *)nodes insertObject:nodeCopy atIndex:index];
  [(SBIconIndexMutableList *)self didAddNode:nodeCopy];
}

- (void)insertNodes:(id)nodes atIndexes:(id)indexes
{
  nodes = self->_nodes;
  nodesCopy = nodes;
  [(NSMutableArray *)nodes insertObjects:nodesCopy atIndexes:indexes];
  [(SBIconIndexMutableList *)self didAddNodes:nodesCopy];
}

- (void)addNode:(id)node
{
  nodeCopy = node;
  [(SBIconIndexMutableList *)self insertNode:nodeCopy atIndex:[(SBIconIndexMutableList *)self count]];
}

- (void)replaceNodeAtIndex:(unint64_t)index withNode:(id)node
{
  nodeCopy = node;
  v7 = [(SBIconIndexMutableList *)self nodeAtIndex:index];
  [(NSMutableArray *)self->_nodes replaceObjectAtIndex:index withObject:nodeCopy];
  [(SBIconIndexMutableList *)self didAddNode:nodeCopy];

  [(SBIconIndexMutableList *)self didRemoveNode:v7];
}

- (void)removeNode:(id)node
{
  nodeCopy = node;
  if ([(NSMutableArray *)self->_nodes containsObject:nodeCopy])
  {
    nodes = self->_nodes;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__SBIconIndexMutableList_removeNode___block_invoke;
    v9[3] = &unk_1E808B028;
    v6 = nodeCopy;
    v10 = v6;
    v7 = [(NSMutableArray *)nodes indexesOfObjectsPassingTest:v9];
    v8 = [(NSMutableArray *)self->_nodes objectsAtIndexes:v7];
    [(NSMutableArray *)self->_nodes removeObject:v6];
    [(SBIconIndexMutableList *)self didRemoveNodes:v8];
  }
}

- (void)removeNodeIdenticalTo:(id)to
{
  toCopy = to;
  if ([(NSMutableArray *)self->_nodes containsObject:?])
  {
    [(NSMutableArray *)self->_nodes removeObjectIdenticalTo:toCopy];
    [(SBIconIndexMutableList *)self didRemoveNode:toCopy];
  }
}

- (void)removeNodeAtIndex:(unint64_t)index
{
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:index];
  [(SBIconIndexMutableList *)self removeNodesAtIndexes:v4];
}

- (void)removeNodesAtIndexes:(id)indexes
{
  if (indexes)
  {
    nodes = self->_nodes;
    indexesCopy = indexes;
    v6 = [(NSMutableArray *)nodes objectsAtIndexes:indexesCopy];
    [(NSMutableArray *)self->_nodes removeObjectsAtIndexes:indexesCopy];

    [(SBIconIndexMutableList *)self didRemoveNodes:v6];
  }
}

- (void)removeNodesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [(NSMutableArray *)self->_nodes subarrayWithRange:?];
  [(NSMutableArray *)self->_nodes removeObjectsInRange:location, length];
  [(SBIconIndexMutableList *)self didRemoveNodes:v6];
}

- (void)removeNodesInArray:(id)array
{
  v14 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [arrayCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(arrayCopy);
        }

        [(SBIconIndexMutableList *)self removeNode:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [arrayCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeLastNode
{
  lastObject = [(NSMutableArray *)self->_nodes lastObject];
  [(NSMutableArray *)self->_nodes removeLastObject];
  [(SBIconIndexMutableList *)self didRemoveNode:lastObject];
}

- (void)removeAllNodes
{
  v3 = [(NSMutableArray *)self->_nodes count];

  [(SBIconIndexMutableList *)self removeNodesInRange:0, v3];
}

- (void)setNodes:(id)nodes
{
  v19 = *MEMORY[0x1E69E9840];
  nodesCopy = nodes;
  v5 = self->_nodes;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  nodes = self->_nodes;
  self->_nodes = v6;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = nodesCopy;
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

- (void)moveNode:(id)node toIndex:(unint64_t)index
{
  v10 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  v6 = MEMORY[0x1E695DEC8];
  nodeCopy2 = node;
  v8 = [v6 arrayWithObjects:&nodeCopy count:1];

  [(SBIconIndexMutableList *)self moveNodes:v8 toContiguousIndicesStartingAt:index, nodeCopy, v10];
}

- (void)moveNodes:(id)nodes toContiguousIndicesStartingAt:(unint64_t)at
{
  v46 = *MEMORY[0x1E69E9840];
  nodesCopy = nodes;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = [nodesCopy countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v40;
    atCopy = at;
    do
    {
      v12 = 0;
      v13 = atCopy;
      do
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(nodesCopy);
        }

        v9 |= v13++ != [(SBIconIndexMutableList *)self indexOfNode:*(*(&v39 + 1) + 8 * v12++)];
      }

      while (v8 != v12);
      atCopy += v8;
      v8 = [nodesCopy countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v8);
    if (v9)
    {
      v14 = [(NSMutableArray *)self->_nodes count];
      v15 = [nodesCopy count];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v16 = nodesCopy;
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
        atCopy2 = at;
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
            if (v24 <= at)
            {
              [(NSMutableArray *)nodes addObject:v28, v31];
            }

            else
            {
              [(NSMutableArray *)nodes insertObject:v28 atIndex:atCopy2++];
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

- (void)didAddNode:(id)node
{
  nodeCopy = node;
  [nodeCopy addNodeObserver:self];
  containedNodeIdentifiers = [nodeCopy containedNodeIdentifiers];
  [(SBIconIndexMutableList *)self node:nodeCopy didAddContainedNodeIdentifiers:containedNodeIdentifiers];
}

- (void)didAddNodes:(id)nodes
{
  v14 = *MEMORY[0x1E69E9840];
  nodesCopy = nodes;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [nodesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(nodesCopy);
        }

        [(SBIconIndexMutableList *)self didAddNode:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [nodesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)didRemoveNode:(id)node
{
  nodeCopy = node;
  [nodeCopy removeNodeObserver:self];
  containedNodeIdentifiers = [nodeCopy containedNodeIdentifiers];
  [(SBIconIndexMutableList *)self node:nodeCopy didRemoveContainedNodeIdentifiers:containedNodeIdentifiers];
}

- (void)didRemoveNodes:(id)nodes
{
  v14 = *MEMORY[0x1E69E9840];
  nodesCopy = nodes;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [nodesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(nodesCopy);
        }

        [(SBIconIndexMutableList *)self didRemoveNode:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [nodesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)node:(id)node didAddContainedNodeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained list:self didAddContainedNodeIdentifiers:identifiersCopy];
}

- (void)node:(id)node didRemoveContainedNodeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained list:self didRemoveContainedNodeIdentifiers:identifiersCopy];
}

- (void)nodeDidMoveContainedNodes:(id)nodes
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained listDidMoveNodes:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSMutableArray *)self->_nodes mutableCopyWithZone:zone];
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