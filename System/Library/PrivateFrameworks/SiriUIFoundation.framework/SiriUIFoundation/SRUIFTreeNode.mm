@interface SRUIFTreeNode
+ (id)absoluteIndexPathsForTreeNodes:(id)a3;
- (BOOL)containsNodeAtIndexPath:(id)a3;
- (SRUIFTreeNode)init;
- (SRUIFTreeNode)parentNode;
- (id)absoluteIndexPath;
- (id)childNodeAtIndex:(int64_t)a3;
- (id)description;
- (id)indexPathFromAncestorNode:(id)a3;
- (id)indexPathOfNodeWithItem:(id)a3;
- (id)lastChildNode;
- (id)nodeAtIndexPath:(id)a3;
- (int64_t)indexOfChildNode:(id)a3;
- (int64_t)numberOfChildNodes;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)_appendDescriptionToString:(id)a3 withIndentation:(id)a4;
- (void)addChildNode:(id)a3;
- (void)enumerateChildNodesWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateDescendentNodesUsingBlock:(id)a3;
- (void)insertChildNode:(id)a3 atIndex:(int64_t)a4;
- (void)removeChildNode:(id)a3;
- (void)removeChildNodeAtIndex:(int64_t)a3;
- (void)removeFromParentNode;
- (void)replaceChildNodeAtIndex:(int64_t)a3 withNode:(id)a4;
@end

@implementation SRUIFTreeNode

+ (id)absoluteIndexPathsForTreeNodes:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v13 + 1) + 8 * i) absoluteIndexPath];
        [v4 addObject:v10];
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
    v3 = [MEMORY[0x277CBEB18] array];
    childNodes = v2->_childNodes;
    v2->_childNodes = v3;
  }

  return v2;
}

- (void)_appendDescriptionToString:(id)a3 withIndentation:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v6 appendString:v7];
  v8 = objc_opt_class();
  v9 = [(SRUIFTreeNode *)self item];
  v10 = [(SRUIFTreeNode *)self _childNodes];
  objc_msgSend(v6, "appendFormat:", @"<%@ %p: item=%@; %lu children=("), v8, self, v9, objc_msgSend(v10, "count");

  v11 = [(SRUIFTreeNode *)self _childNodes];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [v7 stringByAppendingString:@"  "];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = self;
    v15 = [(SRUIFTreeNode *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v21 + 1) + 8 * v18);
          [v6 appendString:@"\n"];
          [v19 _appendDescriptionToString:v6 withIndentation:v13];
          ++v18;
        }

        while (v16 != v18);
        v16 = [(SRUIFTreeNode *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    [v6 appendString:v7];
    [v6 appendString:@"\n>"]);
  }

  else
  {
    [v6 appendString:@"none>"]);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  [(SRUIFTreeNode *)self _appendDescriptionToString:v3 withIndentation:&stru_287A10D80];

  return v3;
}

- (id)indexPathFromAncestorNode:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCAA70]);
  }

  else
  {
    v5 = [(SRUIFTreeNode *)self parentNode];

    if (!v5)
    {
      v11 = MEMORY[0x277CBEAD8];
      v12 = *MEMORY[0x277CBE660];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot generate an index path relative to node %@, which isn't an ancestor", v4];
      v14 = [v11 exceptionWithName:v12 reason:v13 userInfo:0];
      v15 = v14;

      objc_exception_throw(v14);
    }

    v6 = [(SRUIFTreeNode *)self parentNode];
    v7 = [v6 indexPathFromAncestorNode:v4];
    v8 = [(SRUIFTreeNode *)self parentNode];
    v9 = [v7 indexPathByAddingIndex:{objc_msgSend(v8, "indexOfChildNode:", self)}];
  }

  return v9;
}

- (id)absoluteIndexPath
{
  v3 = [(SRUIFTreeNode *)self parentNode];

  if (v3)
  {
    v4 = [(SRUIFTreeNode *)self parentNode];
    v5 = [v4 absoluteIndexPath];
    v6 = [(SRUIFTreeNode *)self parentNode];
    v7 = [v5 indexPathByAddingIndex:{objc_msgSend(v6, "indexOfChildNode:", self)}];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAA70]);
  }

  return v7;
}

- (BOOL)containsNodeAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [v4 length];
  v7 = v6 == 0;
  if (v6)
  {
    v8 = 0;
    while (1)
    {
      v9 = [v4 indexAtPosition:v8];
      if (v9 >= [(SRUIFTreeNode *)v5 numberOfChildNodes])
      {
        break;
      }

      v10 = [(SRUIFTreeNode *)v5 childNodeAtIndex:v9];

      ++v8;
      v11 = [v4 length];
      v5 = v10;
      v7 = v8 >= v11;
      if (v8 >= v11)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = v5;
LABEL_7:

  return v7;
}

- (id)nodeAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 length])
  {
    v6 = 0;
    do
    {
      v7 = -[SRUIFTreeNode childNodeAtIndex:](v5, "childNodeAtIndex:", [v4 indexAtPosition:v6]);

      ++v6;
      v5 = v7;
    }

    while (v6 < [v4 length]);
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (id)indexPathOfNodeWithItem:(id)a3
{
  v4 = a3;
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
  v5 = v4;
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
  v3 = [(SRUIFTreeNode *)self parentNode];
  [v3 removeChildNode:self];
}

- (int64_t)numberOfChildNodes
{
  v2 = [(SRUIFTreeNode *)self _childNodes];
  v3 = [v2 count];

  return v3;
}

- (int64_t)indexOfChildNode:(id)a3
{
  v4 = a3;
  v5 = [(SRUIFTreeNode *)self _childNodes];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (id)childNodeAtIndex:(int64_t)a3
{
  v4 = [(SRUIFTreeNode *)self _childNodes];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (id)lastChildNode
{
  v2 = [(SRUIFTreeNode *)self _childNodes];
  v3 = [v2 lastObject];

  return v3;
}

- (void)insertChildNode:(id)a3 atIndex:(int64_t)a4
{
  v11 = a3;
  v6 = [MEMORY[0x277CBEB58] setWithObject:self];
  v7 = [(SRUIFTreeNode *)self parentNode];
  if (v7)
  {
    v8 = v7;
    do
    {
      [v6 addObject:v8];
      v9 = [v8 parentNode];

      v8 = v9;
    }

    while (v9);
  }

  [v11 enumerateDescendentNodesUsingBlock:&__block_literal_global_4];
  [v11 removeFromParentNode];
  v10 = [(SRUIFTreeNode *)self _childNodes];
  [v10 insertObject:v11 atIndex:a4];

  [v11 _setParentNode:self];
}

- (void)addChildNode:(id)a3
{
  v4 = a3;
  v5 = [(SRUIFTreeNode *)self _childNodes];
  -[SRUIFTreeNode insertChildNode:atIndex:](self, "insertChildNode:atIndex:", v4, [v5 count]);
}

- (void)removeChildNodeAtIndex:(int64_t)a3
{
  v5 = [(SRUIFTreeNode *)self _childNodes];
  v7 = [v5 objectAtIndex:a3];

  v6 = [(SRUIFTreeNode *)self _childNodes];
  [v6 removeObjectAtIndex:a3];

  [v7 _setParentNode:0];
}

- (void)removeChildNode:(id)a3
{
  v4 = a3;
  v5 = [(SRUIFTreeNode *)self _childNodes];
  v6 = [v5 indexOfObject:v4];

  [(SRUIFTreeNode *)self removeChildNodeAtIndex:v6];
}

- (void)replaceChildNodeAtIndex:(int64_t)a3 withNode:(id)a4
{
  v6 = a4;
  [(SRUIFTreeNode *)self removeChildNodeAtIndex:a3];
  [(SRUIFTreeNode *)self insertChildNode:v6 atIndex:a3];
}

- (void)enumerateChildNodesWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(SRUIFTreeNode *)self _childNodes];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__SRUIFTreeNode_enumerateChildNodesWithOptions_usingBlock___block_invoke;
    v8[3] = &unk_279C628A0;
    v9 = v6;
    [v7 enumerateObjectsWithOptions:a3 usingBlock:v8];
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(SRUIFTreeNode *)self _childNodes];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (void)enumerateDescendentNodesUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = 0;
    v5 = objc_alloc_init(MEMORY[0x277CEF370]);
    v6 = [(SRUIFTreeNode *)self _childNodes];
    [v5 enqueueObjects:v6];

    do
    {
      v7 = [v5 frontObject];

      if (!v7)
      {
        break;
      }

      v8 = [v5 dequeueObject];
      if (v8 != self)
      {
        v4[2](v4, v8, &v10);
        v9 = [(SRUIFTreeNode *)v8 _childNodes];
        [v5 enqueueObjects:v9];
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