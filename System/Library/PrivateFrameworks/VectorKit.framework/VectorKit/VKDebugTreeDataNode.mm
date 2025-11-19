@interface VKDebugTreeDataNode
- (BOOL)isExpandable;
- (VKDebugTreeDataNode)initWithDebugTreeNode:(const void *)a3 withParent:(id)a4;
- (id)name;
- (id)propertyColumn;
- (void)buildChildren;
- (void)searchNodes:(id)a3 withParameter:(id)a4;
@end

@implementation VKDebugTreeDataNode

- (void)searchNodes:(id)a3 withParameter:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  node = self->_node;
  if (*(node + 23) < 0)
  {
    node = *node;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:node];
  v10 = [v9 rangeOfString:v7 options:1];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 addObject:self];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v11 = [(VKDebugTreeNode *)self children];
  v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v15 + 1) + 8 * i) searchNodes:v6 withParameter:v7];
      }

      v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (id)propertyColumn
{
  node = self->_node;
  if (*(node + 23) < 0)
  {
    node = *node;
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:node];
}

- (id)name
{
  node = self->_node;
  if (*(node + 23) < 0)
  {
    node = *node;
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:node];
}

- (BOOL)isExpandable
{
  v2 = [(VKDebugTreeNode *)self children];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)buildChildren
{
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  node = self->_node;
  v4 = node[9];
  v5 = node[10];
  if (v4 != v5)
  {
    do
    {
      v6 = [[VKDebugTreePropertyNode alloc] initWithDebugTreeProperty:v4 withParent:self];
      [v10 addObject:v6];

      v4 += 80;
    }

    while (v4 != v5);
    node = self->_node;
  }

  v7 = node[6];
  for (i = node[7]; v7 != i; v7 += 96)
  {
    v9 = [[VKDebugTreeDataNode alloc] initWithDebugTreeNode:v7 withParent:self];
    [(VKDebugTreeDataNode *)v9 buildChildren];
    [v10 addObject:v9];
  }

  [(VKDebugTreeNode *)self setChildren:v10];
}

- (VKDebugTreeDataNode)initWithDebugTreeNode:(const void *)a3 withParent:(id)a4
{
  v6.receiver = self;
  v6.super_class = VKDebugTreeDataNode;
  result = [(VKDebugTreeNode *)&v6 initWithParent:a4];
  if (result)
  {
    result->_node = a3;
  }

  return result;
}

@end