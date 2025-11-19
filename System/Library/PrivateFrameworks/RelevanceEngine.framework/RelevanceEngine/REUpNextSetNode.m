@interface REUpNextSetNode
- (REUpNextSetNode)initWithItem:(id)a3;
- (id)rootNode;
- (void)_addChild:(id)a3;
- (void)_removeChild:(id)a3;
- (void)join:(id)a3;
- (void)remove;
@end

@implementation REUpNextSetNode

- (REUpNextSetNode)initWithItem:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = REUpNextSetNode;
  v6 = [(REUpNextSetNode *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
    children = v7->_children;
    v7->_children = 0;

    v7->_rank = 0;
    parent = v7->_parent;
    v7->_parent = 0;
  }

  return v7;
}

- (void)_addChild:(id)a3
{
  v4 = a3;
  children = self->_children;
  v8 = v4;
  if (!children)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_children;
    self->_children = v6;

    v4 = v8;
    children = self->_children;
  }

  [(NSMutableArray *)children addObject:v4];
}

- (void)_removeChild:(id)a3
{
  [(NSMutableArray *)self->_children removeObject:a3];
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
    v5 = [(REUpNextSetNode *)parent rootNode];
    v6 = *p_parent;
    if (*p_parent != v5)
    {
      [v6 _removeChild:self];
      objc_storeStrong(p_parent, v5);
      [v5 _addChild:self];
      v6 = self->_parent;
    }

    v7 = v6;
  }

  else
  {
    v7 = self;
  }

  return v7;
}

- (void)join:(id)a3
{
  v4 = a3;
  v9 = [(REUpNextSetNode *)self rootNode];
  v5 = [v4 rootNode];

  if (v9 != v5)
  {
    v6 = [v9 rank];
    if (v6 >= [v5 rank])
    {
      v7 = [v9 rank];
      v8 = [v5 rank];
      [v5 setParent:v9];
      if (v7 <= v8)
      {
        ++v9[4];
      }
    }

    else
    {
      [v9 setParent:v5];
      [v5 _addChild:v9];
    }
  }
}

- (void)remove
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_parent)
  {
    v3 = [(REUpNextSetNode *)self rootNode];
    [(REUpNextSetNode *)self->_parent _removeChild:self];
    parent = self->_parent;
    self->_parent = 0;

    if (!v3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = [(NSMutableArray *)self->_children lastObject];
    v3 = v5;
    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = *(v5 + 16);
    *(v5 + 16) = 0;

    v3[4] = self->_rank - 1;
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
        [v3 _addChild:{v12, v15}];
        objc_storeStrong((v12 + 16), v3);
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