@interface VMUDepthGraph
- (VMUDepthGraph)initWithGraph:(id)graph;
- (int64_t)markNodes:(void *)nodes atDepth:(unsigned int)depth;
- (void)_buildDepthMap;
- (void)_buildNextDepth:(id)depth into:(id)into depth:(unsigned int)a5;
- (void)_processNodes:(void *)nodes withDepth:(unsigned int)depth;
- (void)dealloc;
@end

@implementation VMUDepthGraph

- (VMUDepthGraph)initWithGraph:(id)graph
{
  objc_storeStrong(&self->_graph, graph);
  [(VMUDepthGraph *)self _buildDepthMap];
  return self;
}

- (void)dealloc
{
  free(self->_depthMap);
  v3.receiver = self;
  v3.super_class = VMUDepthGraph;
  [(VMUDepthGraph *)&v3 dealloc];
}

- (int64_t)markNodes:(void *)nodes atDepth:(unsigned int)depth
{
  nodeNamespaceSize = [(VMUDirectedGraph *)self->_graph nodeNamespaceSize];
  if (nodeNamespaceSize < 1)
  {
    return 0;
  }

  v8 = nodeNamespaceSize;
  v9 = 0;
  result = 0;
  do
  {
    if (self->_depthMap[v9] == depth)
    {
      ++result;
      if (v9 < *nodes)
      {
        *(nodes + (v9 >> 3) + 4) |= 1 << (v9 & 7);
      }
    }

    ++v9;
  }

  while (v8 != v9);
  return result;
}

- (void)_processNodes:(void *)nodes withDepth:(unsigned int)depth
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v14 = __41__VMUDepthGraph__processNodes_withDepth___block_invoke;
  v15 = &unk_1E8278D20;
  selfCopy = self;
  depthCopy = depth;
  v5 = v13;
  v8 = *nodes;
  v6 = nodes + 4;
  v7 = v8;
  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = v9 >> 3;
      v11 = v6[v10];
      v12 = v9;
      if (v6[v10])
      {
        do
        {
          if (v11)
          {
            v14(v5, v12);
          }

          if (v11 < 2)
          {
            break;
          }

          v12 = (v12 + 1);
          v11 >>= 1;
        }

        while (v12 < v7);
      }

      v9 = (v9 + 8);
    }

    while (v9 < v7);
  }
}

- (void)_buildNextDepth:(id)depth into:(id)into depth:(unsigned int)a5
{
  v26 = *MEMORY[0x1E69E9840];
  depthCopy = depth;
  intoCopy = into;
  v10 = self->_graph;
  [intoCopy removeAllObjects];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = depthCopy;
  v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(obj);
        }

        intValue = [*(*(&v21 + 1) + 8 * v14) intValue];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __44__VMUDepthGraph__buildNextDepth_into_depth___block_invoke;
        v18[3] = &unk_1E8278D48;
        v18[4] = self;
        v20 = a5;
        v19 = intoCopy;
        [(VMUDirectedGraph *)v10 enumerateEdgesOfNode:intValue withBlock:v18];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __44__VMUDepthGraph__buildNextDepth_into_depth___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 32) + 16);
  if (*(v5 + 4 * a4) == -1)
  {
    *(v5 + 4 * a4) = *(a1 + 48);
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a4];
    [v6 addObject:v7];
  }
}

- (void)_buildDepthMap
{
  v3 = self->_graph;
  v4 = 4 * [(VMUDirectedGraph *)v3 nodeNamespaceSize];
  v5 = malloc_type_malloc(v4, 0x100004052888210uLL);
  __pattern4 = -1;
  memset_pattern4(v5, &__pattern4, v4);
  self->_depthMap = v5;
  LODWORD(v4) = [(VMUDirectedGraph *)v3 nodeNamespaceSize];
  v6 = malloc_type_calloc(1uLL, ((v4 + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v6 = v4;
  v22 = v3;
  [(VMUProcessObjectGraph *)v3 markRootNodes:v6];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v24 = __31__VMUDepthGraph__buildDepthMap__block_invoke;
  v25 = &unk_1E8278D70;
  v9 = v7;
  v26 = v9;
  selfCopy = self;
  v10 = v23;
  v21 = v6;
  v13 = *v6;
  v11 = v6 + 1;
  v12 = v13;
  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = v14 >> 3;
      v16 = *(v11 + v15);
      v17 = v14;
      if (*(v11 + v15))
      {
        do
        {
          if (v16)
          {
            v24(v10, v17);
          }

          if (v16 < 2)
          {
            break;
          }

          v17 = (v17 + 1);
          v16 >>= 1;
        }

        while (v17 < v12);
      }

      v14 = (v14 + 8);
    }

    while (v14 < v12);
  }

  free(v21);
  v18 = 1;
  do
  {
    if (v18)
    {
      v19 = v9;
      v20 = v8;
    }

    else
    {
      v19 = v8;
      v20 = v9;
    }

    [(VMUDepthGraph *)self _buildNextDepth:v19 into:v20 depth:v18];
    v18 = (v18 + 1);
  }

  while ([v9 count]);
}

void __31__VMUDepthGraph__buildDepthMap__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v4 addObject:v5];

  *(*(*(a1 + 40) + 16) + 4 * v2) = 0;
}

@end