@interface UITreeDataSourceSnapshotter
@end

@implementation UITreeDataSourceSnapshotter

void __64___UITreeDataSourceSnapshotter_deleteIndexes_orphanDisposition___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _nodeIndexForGlobalIndex:a2];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"nodeIndex != NSNotFound"}];
  }

  v5 = *(a1 + 32);
  v6 = (v5[1] + 24 * v4);
  v8 = *v6;
  v7 = v6[1];
  if (!v7)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"_UITreeDataSourceSnapshotter.mm" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"range.length > 0"}];

    v9 = -1;
    goto LABEL_5;
  }

  v9 = v7 - 1;
  if (v9)
  {
LABEL_5:
    *v6 = v8;
    v6[1] = v9;
    --*(*(a1 + 32) + 32);
    return;
  }

  if (*(a1 + 56) == 1)
  {
    v24 = [v5 _deleteChildNodesForParentNodeIndex:v4];
    [*(a1 + 40) addIndexes:?];
    *(*(a1 + 32) + 32) += ~[v24 count];
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v12 = *(v10 + 8) + 24 * v4;
    v13 = v11 - (v12 + 24);
    if (v11 != v12 + 24)
    {
      memmove(v12, (v12 + 24), v11 - (v12 + 24));
    }

    *(v10 + 16) = v12 + v13;
  }

  else if (*(a1 + 57) == 1)
  {
    v14 = [v5 childrenForParentAtIndex:a2 recursive:1];
    v15 = v14;
    v16 = *(a1 + 32);
    v25 = v14;
    if (v4 + 1 < (0xAAAAAAAAAAAAAAABLL * ((v16[2] - v16[1]) >> 3)))
    {
      v17 = ~v4 - 0x5555555555555555 * ((v16[2] - v16[1]) >> 3);
      v18 = 24 * v4;
      do
      {
        v19 = *(*(a1 + 32) + 8);
        v14 = [v15 containsIndexesInRange:{*(v19 + v18 + 24), *(v19 + v18 + 32)}];
        v15 = v25;
        if (!v14)
        {
          break;
        }

        --*(v19 + v18 + 40);
        v18 += 24;
        --v17;
      }

      while (v17);
      v16 = *(a1 + 32);
    }

    --v16[4];
    v20 = *(a1 + 32);
    v21 = *(v20 + 16);
    v22 = *(v20 + 8) + 24 * v4;
    v23 = v21 - (v22 + 24);
    if (v21 != v22 + 24)
    {
      v14 = memmove(v22, (v22 + 24), v21 - (v22 + 24));
    }

    *(v20 + 16) = v22 + v23;

    MEMORY[0x1EEE66C38](v14);
  }
}

void __67___UITreeDataSourceSnapshotter_childrenForParentAtIndex_recursive___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) childrenForParentAtIndex:a2 recursive:1];
  [*(*(*(a1 + 40) + 8) + 40) addIndexes:?];
}

void *__68___UITreeDataSourceSnapshotter__deleteChildNodesForParentNodeIndex___block_invoke(void *result, uint64_t a2)
{
  *(*(result[5] + 8) + 24) += *(*(result[4] + 8) + 24 * a2 + 8);
  v2 = result[4];
  v3 = *(v2 + 16);
  v4 = *(v2 + 8) + 24 * a2;
  v5 = v3 - (v4 + 24);
  if (v3 != v4 + 24)
  {
    result = memmove(v4, (v4 + 24), v3 - (v4 + 24));
  }

  *(v2 + 16) = v4 + v5;
  return result;
}

uint64_t __75___UITreeDataSourceSnapshotter__recomputeExpandedIndexesForDeletedIndexes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a2)
  {
    v6 = [*(a1 + 32) countOfIndexesInRange:{0, a2}];
    if (v6 >= 1)
    {
      v4 = (v4 - v6) & ~((v4 - v6) >> 63);
    }
  }

  v7 = *(a1 + 40);

  return [v7 addIndexesInRange:{v4, a3}];
}

@end