@interface REUpNextSetNode
- (REUpNextSetNode)initWithItem:(id)item;
- (id)rootNode;
- (void)_addChild:(id)child;
- (void)_removeChild:(id)child;
- (void)join:(id)join;
- (void)remove;
@end

@implementation REUpNextSetNode

- (REUpNextSetNode)initWithItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = REUpNextSetNode;
  v6 = [(REUpNextSetNode *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
    children = v7->_children;
    v7->_children = 0;

    v7->_rank = 0;
    parent = v7->_parent;
    v7->_parent = 0;
  }

  return v7;
}

- (void)_addChild:(id)child
{
  childCopy = child;
  children = self->_children;
  v8 = childCopy;
  if (!children)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_children;
    self->_children = v6;

    childCopy = v8;
    children = self->_children;
  }

  [(NSMutableArray *)children addObject:childCopy];
}

- (void)_removeChild:(id)child
{
  [(NSMutableArray *)self->_children removeObject:child];
  if (![(NSMutableArray *)self->_children count])
  {
    children = self->_children;
    self->_children = 0;
  }
}

- (id)rootNode
{
  p_parent = &self->_parent;
  parent = self->_parent;
  if (parent)
  {
    rootNode = [(REUpNextSetNode *)parent rootNode];
    v6 = *p_parent;
    if (*p_parent != rootNode)
    {
      [v6 _removeChild:self];
      objc_storeStrong(p_parent, rootNode);
      [rootNode _addChild:self];
      v6 = self->_parent;
    }

    selfCopy = v6;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)join:(id)join
{
  joinCopy = join;
  rootNode = [(REUpNextSetNode *)self rootNode];
  rootNode2 = [joinCopy rootNode];

  if (rootNode != rootNode2)
  {
    rank = [rootNode rank];
    if (rank >= [rootNode2 rank])
    {
      rank2 = [rootNode rank];
      rank3 = [rootNode2 rank];
      [rootNode2 setParent:rootNode];
      if (rank2 <= rank3)
      {
        ++rootNode[4];
      }
    }

    else
    {
      [rootNode setParent:rootNode2];
      [rootNode2 _addChild:rootNode];
    }
  }
}

- (void)remove
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_parent)
  {
    rootNode = [(REUpNextSetNode *)self rootNode];
    [(REUpNextSetNode *)self->_parent _removeChild:self];
    parent = self->_parent;
    self->_parent = 0;

    if (!rootNode)
    {
      goto LABEL_14;
    }
  }

  else
  {
    lastObject = [(NSMutableArray *)self->_children lastObject];
    rootNode = lastObject;
    if (!lastObject)
    {
      goto LABEL_14;
    }

    v6 = *(lastObject + 16);
    *(lastObject + 16) = 0;

    rootNode[4] = self->_rank - 1;
    [(NSMutableArray *)self->_children removeLastObject];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_children;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        [rootNode _addChild:{v12, v15}];
        objc_storeStrong((v12 + 16), rootNode);
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

LABEL_14:
  [(NSMutableArray *)self->_children removeAllObjects];
  children = self->_children;
  self->_children = 0;

  v14 = *MEMORY[0x277D85DE8];
}

@end