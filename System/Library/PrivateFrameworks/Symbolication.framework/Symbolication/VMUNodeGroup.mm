@interface VMUNodeGroup
- (VMUNodeGroup)initWithName:(id)name graph:(id)graph;
- (void)_createGroup;
- (void)addNode:(unsigned int)node;
- (void)dealloc;
- (void)enumerateNodesWithBlock:(id)block;
@end

@implementation VMUNodeGroup

- (VMUNodeGroup)initWithName:(id)name graph:(id)graph
{
  objc_storeStrong(&self->_name, name);
  graphCopy = graph;
  nodeNamespaceSize = [graphCopy nodeNamespaceSize];

  self->_nodeNamespaceSize = nodeNamespaceSize;
  self->_singleNode = -1;
  return self;
}

- (void)dealloc
{
  group = self->_group;
  if (group)
  {
    free(group);
  }

  v4.receiver = self;
  v4.super_class = VMUNodeGroup;
  [(VMUNodeGroup *)&v4 dealloc];
}

- (void)_createGroup
{
  if (!self->_group)
  {
    nodeNamespaceSize = self->_nodeNamespaceSize;
    v4 = malloc_type_calloc(1uLL, ((nodeNamespaceSize + 7) >> 3) + 4, 0xB2EC2458uLL);
    *v4 = nodeNamespaceSize;
    self->_group = v4;
    count = self->_count;
    if (count)
    {
      for (i = 0; i < count; ++i)
      {
        group = self->_group;
        v8 = self->_inlineNodes[i];
        if (*group > v8)
        {
          *(group + (v8 >> 3) + 4) |= 1 << (v8 & 7);
          count = self->_count;
        }
      }
    }
  }
}

- (void)addNode:(unsigned int)node
{
  if (!self->_group)
  {
    count = self->_count;
    if (count <= 0xF)
    {
      if (count)
      {
        inlineNodes = self->_inlineNodes;
        v7 = self->_count;
        while (1)
        {
          v8 = *inlineNodes++;
          if (v8 == node)
          {
            return;
          }

          if (!--v7)
          {
            v9 = self->_count;
            goto LABEL_14;
          }
        }
      }

      v9 = 0;
LABEL_14:
      self->_count = count + 1;
      p_singleNode = &self->_inlineNodes[v9];
LABEL_15:
      *p_singleNode = node;
      return;
    }
  }

  [(VMUNodeGroup *)self _createGroup];
  group = self->_group;
  if (*group > node)
  {
    v11 = group + (node >> 3);
    v12 = v11[4];
    v13 = 1 << (node & 7);
    if ((v13 & v12) != 0)
    {
      return;
    }

    v11[4] = v12 | v13;
  }

  v14 = self->_count;
  self->_count = v14 + 1;
  if (!v14)
  {
    p_singleNode = &self->_singleNode;
    goto LABEL_15;
  }
}

- (void)enumerateNodesWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  group = self->_group;
  if (group)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v18 = __40__VMUNodeGroup_enumerateNodesWithBlock___block_invoke;
    v19 = &unk_1E8279DB8;
    v20 = blockCopy;
    v7 = v17;
    v10 = *group;
    v8 = group + 1;
    v9 = v10;
    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = v11 >> 3;
        v13 = *(v8 + v12);
        v14 = v11;
        if (*(v8 + v12))
        {
          do
          {
            if (v13)
            {
              (v18)(v7, v14);
            }

            if (v13 < 2)
            {
              break;
            }

            v14 = (v14 + 1);
            v13 >>= 1;
          }

          while (v14 < v9);
        }

        v11 = (v11 + 8);
      }

      while (v11 < v9);
    }
  }

  else if (self->_count)
  {
    v15 = 0;
    do
    {
      v16 = objc_autoreleasePoolPush();
      v21 = 0;
      (v5)[2](v5, self->_inlineNodes[v15], &v21);
      objc_autoreleasePoolPop(v16);
      ++v15;
    }

    while (v15 < self->_count);
  }
}

void __40__VMUNodeGroup_enumerateNodesWithBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
}

@end