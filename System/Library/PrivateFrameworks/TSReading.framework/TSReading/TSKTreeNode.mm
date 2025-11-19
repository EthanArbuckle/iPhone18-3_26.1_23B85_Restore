@interface TSKTreeNode
- (BOOL)hasChildWithName:(id)a3;
- (TSKTreeNode)initWithContext:(id)a3;
- (TSKTreeNode)nodeWithObject:(id)a3;
- (id)nodeAtIndex:(unint64_t)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (id)shallowCopy;
- (int64_t)indexOfNodeWithObject:(id)a3;
- (void)addChildWithName:(id)a3 object:(id)a4;
- (void)addNode:(id)a3 atIndex:(unint64_t)a4;
- (void)addObject:(id)a3 atIndex:(unint64_t)a4;
- (void)dealloc;
- (void)enumerateAllChildrenWithBlock:(id)a3;
- (void)removeAllChildren;
- (void)removeChildAtIndex:(unint64_t)a3;
- (void)removeChildWithDataObject:(id)a3;
- (void)removeChildWithName:(id)a3;
- (void)setChildren:(id)a3;
- (void)setDataObject:(id)a3;
- (void)setName:(id)a3;
@end

@implementation TSKTreeNode

- (TSKTreeNode)initWithContext:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSKTreeNode;
  v3 = [(TSPObject *)&v6 initWithContext:a3];
  v4 = v3;
  if (v3)
  {
    v3->mObject = 0;
    v3->mDisplayName = 0;
    v3->mChildren = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKTreeNode;
  [(TSKTreeNode *)&v3 dealloc];
}

- (void)setName:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mDisplayName = a3;
}

- (void)setChildren:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mChildren = a3;
}

- (void)setDataObject:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mObject = a3;
}

- (id)objectAtIndex:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->mChildren objectAtIndex:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v3 dataObject];
}

- (id)nodeAtIndex:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->mChildren objectAtIndex:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKTreeNode nodeAtIndex:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKTreeNode.mm"), 119, @"Not a tree node where there should be one!"}];
  }

  return v3;
}

- (TSKTreeNode)nodeWithObject:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mChildren = self->mChildren;
  v5 = [(NSMutableArray *)mChildren countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(mChildren);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([-[TSKTreeNode dataObject](v9 "dataObject")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)mChildren countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (int64_t)indexOfNodeWithObject:(id)a3
{
  v5 = [(NSMutableArray *)self->mChildren count];
  if (v5 < 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  while (([objc_msgSend(-[NSMutableArray objectAtIndex:](self->mChildren objectAtIndex:{v7), "dataObject"), "isEqual:", a3}] & 1) == 0)
  {
    if (v6 == ++v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v7;
}

- (BOOL)hasChildWithName:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mChildren = self->mChildren;
  v5 = [(NSMutableArray *)mChildren countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(mChildren);
        }

        if ([objc_msgSend(*(*(&v10 + 1) + 8 * v8) "name")])
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [(NSMutableArray *)mChildren countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (void)addChildWithName:(id)a3 object:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  mChildren = self->mChildren;
  v8 = [(NSMutableArray *)mChildren countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(mChildren);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(v12 "name")])
        {
          [v12 setDataObject:a4];
          return;
        }
      }

      v9 = [(NSMutableArray *)mChildren countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  [(TSPObject *)self willModify];
  v13 = [[TSKTreeNode alloc] initWithContext:[(TSPObject *)self context]];
  [(TSKTreeNode *)v13 setName:a3];
  [(TSKTreeNode *)v13 setDataObject:a4];
  [(NSMutableArray *)self->mChildren addObject:v13];
}

- (void)addObject:(id)a3 atIndex:(unint64_t)a4
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKTreeNode addObject:atIndex:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKTreeNode.mm"), 184, @"Can't get a name for this object!"}];
  }

  [(TSPObject *)self willModify];
  v9 = [[TSKTreeNode alloc] initWithContext:[(TSPObject *)self context]];
  -[TSKTreeNode setName:](v9, "setName:", [a3 name]);
  [(TSKTreeNode *)v9 setDataObject:a3];
  [(NSMutableArray *)self->mChildren insertObject:v9 atIndex:a4];
}

- (void)addNode:(id)a3 atIndex:(unint64_t)a4
{
  [(TSPObject *)self willModify];
  mChildren = self->mChildren;

  [(NSMutableArray *)mChildren insertObject:a3 atIndex:a4];
}

- (void)removeChildWithName:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  mChildren = self->mChildren;
  v7 = [(NSMutableArray *)mChildren countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(mChildren);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([objc_msgSend(v11 "name")])
        {
          [(TSPObject *)self willModify];
          [(NSMutableArray *)self->mChildren removeObject:v11];
        }
      }

      v8 = [(NSMutableArray *)mChildren countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v5);
        }

        [(NSMutableArray *)self->mChildren removeObject:*(*(&v16 + 1) + 8 * j)];
      }

      v13 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (void)removeChildWithDataObject:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  mChildren = self->mChildren;
  v7 = [(NSMutableArray *)mChildren countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(mChildren);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([objc_msgSend(v11 "dataObject")])
        {
          [(TSPObject *)self willModify];
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)mChildren countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v5);
        }

        [(NSMutableArray *)self->mChildren removeObject:*(*(&v16 + 1) + 8 * j)];
      }

      v13 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (void)removeChildAtIndex:(unint64_t)a3
{
  [(TSPObject *)self willModify];
  mChildren = self->mChildren;

  [(NSMutableArray *)mChildren removeObjectAtIndex:a3];
}

- (void)removeAllChildren
{
  [(TSPObject *)self willModify];
  mChildren = self->mChildren;

  [(NSMutableArray *)mChildren removeAllObjects];
}

- (void)enumerateAllChildrenWithBlock:(id)a3
{
  mChildren = self->mChildren;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__TSKTreeNode_enumerateAllChildrenWithBlock___block_invoke;
  v4[3] = &unk_279D47730;
  v4[4] = a3;
  [(NSMutableArray *)mChildren enumerateObjectsUsingBlock:v4];
}

uint64_t __45__TSKTreeNode_enumerateAllChildrenWithBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ((*(*(a1 + 32) + 16))(*(a1 + 32), [a2 dataObject]))
  {
    *a4 = 1;
  }

  result = [a2 children];
  if (result)
  {
    v8 = *(a1 + 32);

    return [a2 enumerateAllChildrenWithBlock:v8];
  }

  return result;
}

- (id)shallowCopy
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [[TSKTreeNode alloc] initWithContext:[(TSPObject *)self context]];
  [(TSKTreeNode *)v3 setName:self->mDisplayName];
  [(TSKTreeNode *)v3 setDataObject:self->mObject];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mChildren = self->mChildren;
  v6 = [(NSMutableArray *)mChildren countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(mChildren);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) shallowCopy];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)mChildren countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(TSKTreeNode *)v3 setChildren:v4];

  return v3;
}

@end