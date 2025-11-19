@interface VMUGraphEnumerator
- (VMUGraphEnumerator)initWithGraph:(id)a3;
- (unsigned)buildReversePostOrderWithRoots:(void *)a3;
- (void)destinationsOfGroup:(id)a3;
- (void)destinationsOfNodes:(void *)a3;
- (void)enumerateDestinationsOfGroup:(id)a3 groupedBy:(id)a4 withBlock:(id)a5;
- (void)enumerateDestinationsOfNodes:(void *)a3 groupedBy:(id)a4 withBlock:(id)a5;
@end

@implementation VMUGraphEnumerator

- (VMUGraphEnumerator)initWithGraph:(id)a3
{
  v4 = a3;
  v5 = [(VMUGraphEnumerator *)self init];
  graph = v5->_graph;
  v5->_graph = v4;

  return v5;
}

uint64_t __70__VMUGraphEnumerator_enumerateDestinationsOfNode_groupedBy_withBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(result + 32);
  if (*v4 > a4)
  {
    *(v4 + (a4 >> 3) + 4) |= 1 << (a4 & 7);
  }

  return result;
}

- (void)enumerateDestinationsOfNodes:(void *)a3 groupedBy:(id)a4 withBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(VMUGraphEnumerator *)self destinationsOfNodes:a3];
  [v9 enumerateGroups:v10 withBlock:v8];

  free(v10);
}

- (void)enumerateDestinationsOfGroup:(id)a3 groupedBy:(id)a4 withBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(VMUGraphEnumerator *)self destinationsOfGroup:a3];
  [v9 enumerateGroups:v10 withBlock:v8];

  free(v10);
}

- (void)destinationsOfNodes:(void *)a3
{
  v5 = [(VMUDirectedGraph *)self->_graph nodeNamespaceSize];
  v6 = malloc_type_calloc(1uLL, ((v5 + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v6 = v5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = __42__VMUGraphEnumerator_destinationsOfNodes___block_invoke;
  v18 = &unk_1E82785F8;
  v19 = self;
  v20 = v6;
  v7 = v16;
  v10 = *a3;
  v8 = a3 + 4;
  v9 = v10;
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = v11 >> 3;
      v13 = v8[v12];
      v14 = v11;
      if (v8[v12])
      {
        do
        {
          if (v13)
          {
            v17(v7, v14);
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

  return v6;
}

uint64_t __42__VMUGraphEnumerator_destinationsOfNodes___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__VMUGraphEnumerator_destinationsOfNodes___block_invoke_2;
  v4[3] = &__block_descriptor_40_e18_v28__0I8I12I16_B20l;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [v2 enumerateEdgesOfNode:a2 withBlock:v4];
}

uint64_t __42__VMUGraphEnumerator_destinationsOfNodes___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(result + 32);
  if (*v4 > a4)
  {
    *(v4 + (a4 >> 3) + 4) |= 1 << (a4 & 7);
  }

  return result;
}

- (void)destinationsOfGroup:(id)a3
{
  graph = self->_graph;
  v5 = a3;
  LODWORD(graph) = [(VMUDirectedGraph *)graph nodeNamespaceSize];
  v6 = malloc_type_calloc(1uLL, ((graph + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v6 = graph;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__VMUGraphEnumerator_destinationsOfGroup___block_invoke;
  v8[3] = &unk_1E8278620;
  v8[4] = self;
  v8[5] = v6;
  [v5 enumerateNodesWithBlock:v8];

  return v6;
}

uint64_t __42__VMUGraphEnumerator_destinationsOfGroup___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__VMUGraphEnumerator_destinationsOfGroup___block_invoke_2;
  v4[3] = &__block_descriptor_40_e18_v28__0I8I12I16_B20l;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [v2 enumerateEdgesOfNode:a2 withBlock:v4];
}

uint64_t __42__VMUGraphEnumerator_destinationsOfGroup___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(result + 32);
  if (*v4 > a4)
  {
    *(v4 + (a4 >> 3) + 4) |= 1 << (a4 & 7);
  }

  return result;
}

- (unsigned)buildReversePostOrderWithRoots:(void *)a3
{
  v5 = self->_graph;
  v6 = self;
  v7 = [(VMUDirectedGraph *)v5 nodeNamespaceSize];
  v8 = malloc_type_calloc(1uLL, ((v7 + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v8 = v7;
  v9 = 4 * [(VMUDirectedGraph *)v5 nodeNamespaceSize];
  v10 = malloc_type_malloc(v9, 0x100004052888210uLL);
  LODWORD(__pattern4[0]) = -1;
  memset_pattern4(v10, __pattern4, v9);
  v27 = v5;
  v11 = 4 * [(VMUDirectedGraph *)v5 nodeNamespaceSize];
  v12 = malloc_type_malloc(v11, 0x100004052888210uLL);
  LODWORD(__pattern4[0]) = -1;
  memset_pattern4(v12, __pattern4, v11);
  __pattern4[0] = 0;
  __pattern4[1] = __pattern4;
  __pattern4[2] = 0x2020000000;
  v37 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v29 = __53__VMUGraphEnumerator_buildReversePostOrderWithRoots___block_invoke;
  v30 = &unk_1E8278670;
  v25 = v12;
  v26 = v8;
  v34 = v8;
  v35 = v12;
  v32 = __pattern4;
  v33 = v10;
  v13 = v6;
  v31 = v13;
  v14 = v28;
  v17 = *a3;
  v15 = a3 + 4;
  v16 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = 1;
    do
    {
      v20 = v18 >> 3;
      v21 = v15[v20];
      v22 = v19;
      if (v15[v20])
      {
        do
        {
          if (v21)
          {
            v29(v14, v22 - 1);
          }

          if (v21 < 2)
          {
            break;
          }

          v21 >>= 1;
        }

        while (v22++ < v16);
      }

      v18 += 8;
      v19 += 8;
    }

    while (v18 < v16);
  }

  free(v10);
  free(v26);

  _Block_object_dispose(__pattern4, 8);
  return v25;
}

void __53__VMUGraphEnumerator_buildReversePostOrderWithRoots___block_invoke(uint64_t a1, int a2)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v2 = *(a1 + 48);
  v19 = 1;
  *v2 = a2;
  v3 = v17;
  v4 = *(v17 + 6);
  if (v4)
  {
    while (1)
    {
      v6 = v4 - 1;
      *(v3 + 6) = v4 - 1;
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = *(v7 + 4 * v6);
      if (*v8 <= v9)
      {
        goto LABEL_5;
      }

      v10 = v8 + (v9 >> 3);
      v11 = v10[4];
      v12 = 1 << (v9 & 7);
      if ((v12 & v11) == 0)
      {
        break;
      }

LABEL_6:
      v4 = *(v3 + 6);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    v10[4] = v11 | v12;
    v7 = *(a1 + 48);
LABEL_5:
    v13 = *(a1 + 64);
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 24);
    *(v14 + 24) = v15 + 1;
    *(v13 + 4 * v15) = v9;
    [*(a1 + 32) enumerateEdgesOfNode:MEMORY[0x1E69E9820] withBlock:{3221225472, __53__VMUGraphEnumerator_buildReversePostOrderWithRoots___block_invoke_2, &unk_1E8278648, &v16, v7}];
    v3 = v17;
    goto LABEL_6;
  }

LABEL_7:
  _Block_object_dispose(&v16, 8);
}

uint64_t __53__VMUGraphEnumerator_buildReversePostOrderWithRoots___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 40);
  v5 = *(*(result + 32) + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  *(v4 + 4 * v6) = a4;
  return result;
}

@end