@interface SRUIFTreeNode
+ (id)absoluteIndexPathsForTreeNodes:(id)nodes;
- (BOOL)containsNodeAtIndexPath:(id)path;
- (SRUIFTreeNode)init;
- (SRUIFTreeNode)parentNode;
- (id)absoluteIndexPath;
- (id)childNodeAtIndex:(int64_t)index;
- (id)description;
- (id)indexPathFromAncestorNode:(id)node;
- (id)indexPathOfNodeWithItem:(id)item;
- (id)lastChildNode;
- (id)nodeAtIndexPath:(id)path;
- (int64_t)indexOfChildNode:(id)node;
- (int64_t)numberOfChildNodes;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)_appendDescriptionToString:(id)string withIndentation:(id)indentation;
- (void)addChildNode:(id)node;
- (void)enumerateChildNodesWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateDescendentNodesUsingBlock:(id)block;
- (void)insertChildNode:(id)node atIndex:(int64_t)index;
- (void)removeChildNode:(id)node;
- (void)removeChildNodeAtIndex:(int64_t)index;
- (void)removeFromParentNode;
- (void)replaceChildNodeAtIndex:(int64_t)index withNode:(id)node;
@end

@implementation SRUIFTreeNode

+ (id)absoluteIndexPathsForTreeNodes:(id)nodes
{
  v18 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(nodesCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = nodesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        absoluteIndexPath = [*(*(&v13 + 1) + 8 * i) absoluteIndexPath];
        [v4 addObject:absoluteIndexPath];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (SRUIFTreeNode)init
{
  v6.receiver = self;
  v6.super_class = SRUIFTreeNode;
  v2 = [(SRUIFTreeNode *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    childNodes = v2->_childNodes;
    v2->_childNodes = array;
  }

  return v2;
}

- (void)_appendDescriptionToString:(id)string withIndentation:(id)indentation
{
  v26 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  indentationCopy = indentation;
  [stringCopy appendString:indentationCopy];
  v8 = objc_opt_class();
  item = [(SRUIFTreeNode *)self item];
  _childNodes = [(SRUIFTreeNode *)self _childNodes];
  objc_msgSend(stringCopy, "appendFormat:", @"<%@ %p: item=%@; %lu children=("), v8, self, item, objc_msgSend(_childNodes, "count");

  _childNodes2 = [(SRUIFTreeNode *)self _childNodes];
  v12 = [_childNodes2 count];

  if (v12)
  {
    v13 = [indentationCopy stringByAppendingString:@"  "];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    selfCopy = self;
    v15 = [(SRUIFTreeNode *)selfCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(selfCopy);
          }

          v19 = *(*(&v21 + 1) + 8 * v18);
          [stringCopy appendString:@"\n"];
          [v19 _appendDescriptionToString:stringCopy withIndentation:v13];
          ++v18;
        }

        while (v16 != v18);
        v16 = [(SRUIFTreeNode *)selfCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    [stringCopy appendString:indentationCopy];
    [stringCopy appendString:@"\n>"]);
  }

  else
  {
    [stringCopy appendString:@"none>"]);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  [(SRUIFTreeNode *)self _appendDescriptionToString:string withIndentation:&stru_287A10D80];

  return string;
}

- (id)indexPathFromAncestorNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCAA70]);
  }

  else
  {
    parentNode = [(SRUIFTreeNode *)self parentNode];

    if (!parentNode)
    {
      v11 = MEMORY[0x277CBEAD8];
      v12 = *MEMORY[0x277CBE660];
      nodeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot generate an index path relative to node %@, which isn't an ancestor", nodeCopy];
      v14 = [v11 exceptionWithName:v12 reason:nodeCopy userInfo:0];
      v15 = v14;

      objc_exception_throw(v14);
    }

    parentNode2 = [(SRUIFTreeNode *)self parentNode];
    v7 = [parentNode2 indexPathFromAncestorNode:nodeCopy];
    parentNode3 = [(SRUIFTreeNode *)self parentNode];
    v9 = [v7 indexPathByAddingIndex:{objc_msgSend(parentNode3, "indexOfChildNode:", self)}];
  }

  return v9;
}

- (id)absoluteIndexPath
{
  parentNode = [(SRUIFTreeNode *)self parentNode];

  if (parentNode)
  {
    parentNode2 = [(SRUIFTreeNode *)self parentNode];
    absoluteIndexPath = [parentNode2 absoluteIndexPath];
    parentNode3 = [(SRUIFTreeNode *)self parentNode];
    v7 = [absoluteIndexPath indexPathByAddingIndex:{objc_msgSend(parentNode3, "indexOfChildNode:", self)}];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAA70]);
  }

  return v7;
}

- (BOOL)containsNodeAtIndexPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  v6 = [pathCopy length];
  v7 = v6 == 0;
  if (v6)
  {
    v8 = 0;
    while (1)
    {
      v9 = [pathCopy indexAtPosition:v8];
      if (v9 >= [(SRUIFTreeNode *)selfCopy numberOfChildNodes])
      {
        break;
      }

      v10 = [(SRUIFTreeNode *)selfCopy childNodeAtIndex:v9];

      ++v8;
      v11 = [pathCopy length];
      selfCopy = v10;
      v7 = v8 >= v11;
      if (v8 >= v11)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = selfCopy;
LABEL_7:

  return v7;
}

- (id)nodeAtIndexPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  if ([pathCopy length])
  {
    v6 = 0;
    do
    {
      v7 = -[SRUIFTreeNode childNodeAtIndex:](selfCopy, "childNodeAtIndex:", [pathCopy indexAtPosition:v6]);

      ++v6;
      selfCopy = v7;
    }

    while (v6 < [pathCopy length]);
  }

  else
  {
    v7 = selfCopy;
  }

  return v7;
}

- (id)indexPathOfNodeWithItem:(id)item
{
  itemCopy = item;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__SRUIFTreeNode_indexPathOfNodeWithItem___block_invoke;
  aBlock[3] = &unk_279C62830;
  v5 = itemCopy;
  v15 = v5;
  v6 = _Block_copy(aBlock);
  if ((*(v6 + 2))(v6, self))
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAA70]);
    v8 = v17[5];
    v17[5] = v7;
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__SRUIFTreeNode_indexPathOfNodeWithItem___block_invoke_2;
    v11[3] = &unk_279C62858;
    v12 = v6;
    v13 = &v16;
    v11[4] = self;
    [(SRUIFTreeNode *)self enumerateDescendentNodesUsingBlock:v11];
    v8 = v12;
  }

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

uint64_t __41__SRUIFTreeNode_indexPathOfNodeWithItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 item];
  if (v4 == *(a1 + 32))
  {
    v6 = 1;
  }

  else
  {
    v5 = [v3 item];
    v6 = [v5 isEqual:*(a1 + 32)];
  }

  return v6;
}

void __41__SRUIFTreeNode_indexPathOfNodeWithItem___block_invoke_2(void *a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if ((*(a1[5] + 16))())
  {
    v5 = [v8 indexPathFromAncestorNode:a1[4]];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *a3 = 1;
  }
}

- (void)removeFromParentNode
{
  parentNode = [(SRUIFTreeNode *)self parentNode];
  [parentNode removeChildNode:self];
}

- (int64_t)numberOfChildNodes
{
  _childNodes = [(SRUIFTreeNode *)self _childNodes];
  v3 = [_childNodes count];

  return v3;
}

- (int64_t)indexOfChildNode:(id)node
{
  nodeCopy = node;
  _childNodes = [(SRUIFTreeNode *)self _childNodes];
  v6 = [_childNodes indexOfObject:nodeCopy];

  return v6;
}

- (id)childNodeAtIndex:(int64_t)index
{
  _childNodes = [(SRUIFTreeNode *)self _childNodes];
  v5 = [_childNodes objectAtIndex:index];

  return v5;
}

- (id)lastChildNode
{
  _childNodes = [(SRUIFTreeNode *)self _childNodes];
  lastObject = [_childNodes lastObject];

  return lastObject;
}

- (void)insertChildNode:(id)node atIndex:(int64_t)index
{
  nodeCopy = node;
  v6 = [MEMORY[0x277CBEB58] setWithObject:self];
  parentNode = [(SRUIFTreeNode *)self parentNode];
  if (parentNode)
  {
    v8 = parentNode;
    do
    {
      [v6 addObject:v8];
      parentNode2 = [v8 parentNode];

      v8 = parentNode2;
    }

    while (parentNode2);
  }

  [nodeCopy enumerateDescendentNodesUsingBlock:&__block_literal_global_4];
  [nodeCopy removeFromParentNode];
  _childNodes = [(SRUIFTreeNode *)self _childNodes];
  [_childNodes insertObject:nodeCopy atIndex:index];

  [nodeCopy _setParentNode:self];
}

- (void)addChildNode:(id)node
{
  nodeCopy = node;
  _childNodes = [(SRUIFTreeNode *)self _childNodes];
  -[SRUIFTreeNode insertChildNode:atIndex:](self, "insertChildNode:atIndex:", nodeCopy, [_childNodes count]);
}

- (void)removeChildNodeAtIndex:(int64_t)index
{
  _childNodes = [(SRUIFTreeNode *)self _childNodes];
  v7 = [_childNodes objectAtIndex:index];

  _childNodes2 = [(SRUIFTreeNode *)self _childNodes];
  [_childNodes2 removeObjectAtIndex:index];

  [v7 _setParentNode:0];
}

- (void)removeChildNode:(id)node
{
  nodeCopy = node;
  _childNodes = [(SRUIFTreeNode *)self _childNodes];
  v6 = [_childNodes indexOfObject:nodeCopy];

  [(SRUIFTreeNode *)self removeChildNodeAtIndex:v6];
}

- (void)replaceChildNodeAtIndex:(int64_t)index withNode:(id)node
{
  nodeCopy = node;
  [(SRUIFTreeNode *)self removeChildNodeAtIndex:index];
  [(SRUIFTreeNode *)self insertChildNode:nodeCopy atIndex:index];
}

- (void)enumerateChildNodesWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    _childNodes = [(SRUIFTreeNode *)self _childNodes];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__SRUIFTreeNode_enumerateChildNodesWithOptions_usingBlock___block_invoke;
    v8[3] = &unk_279C628A0;
    v9 = blockCopy;
    [_childNodes enumerateObjectsWithOptions:options usingBlock:v8];
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  _childNodes = [(SRUIFTreeNode *)self _childNodes];
  v9 = [_childNodes countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (void)enumerateDescendentNodesUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v10 = 0;
    v5 = objc_alloc_init(MEMORY[0x277CEF370]);
    _childNodes = [(SRUIFTreeNode *)self _childNodes];
    [v5 enqueueObjects:_childNodes];

    do
    {
      frontObject = [v5 frontObject];

      if (!frontObject)
      {
        break;
      }

      dequeueObject = [v5 dequeueObject];
      if (dequeueObject != self)
      {
        blockCopy[2](blockCopy, dequeueObject, &v10);
        _childNodes2 = [(SRUIFTreeNode *)dequeueObject _childNodes];
        [v5 enqueueObjects:_childNodes2];
      }
    }

    while (!v10);
  }
}

- (SRUIFTreeNode)parentNode
{
  WeakRetained = objc_loadWeakRetained(&self->_parentNode);

  return WeakRetained;
}

@end