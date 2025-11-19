@interface WFThreeWayMergingObjectGraph
- (id)description;
- (void)addEdgeFromVertex:(void *)a3 toVertex:;
- (void)addStandaloneVertex:(uint64_t)a1;
- (void)initWithVertexComparator:(void *)a1;
@end

@implementation WFThreeWayMergingObjectGraph

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self)
  {
    orderedVertexes = self->_orderedVertexes;
  }

  else
  {
    orderedVertexes = 0;
  }

  v8 = [v3 stringWithFormat:@"<%@: %p>\n             Ordered Vertexes: %@\n             Direct Successors Map: %@\n             Direct Predecessors Map: %@", v5, self, orderedVertexes, self->_directSuccessorsForVertexes, self->_directPredecessorsForVertexes];

  return v8;
}

- (void)initWithVertexComparator:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:sel_initWithVertexComparator_ object:a1 file:@"WFThreeWayMergingObjectGraph.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"comparator"}];
    }

    v15.receiver = a1;
    v15.super_class = WFThreeWayMergingObjectGraph;
    a1 = objc_msgSendSuper2(&v15, sel_init);
    if (a1)
    {
      v5 = _Block_copy(v4);
      v6 = a1[1];
      a1[1] = v5;

      v7 = objc_opt_new();
      v8 = a1[2];
      a1[2] = v7;

      v9 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v10 = a1[3];
      a1[3] = v9;

      v11 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v12 = a1[4];
      a1[4] = v11;
    }
  }

  return a1;
}

- (void)addStandaloneVertex:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    if (!v3)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:sel_addStandaloneVertex_ object:a1 file:@"WFThreeWayMergingObjectGraph.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"vertex"}];
    }

    v4 = *(a1 + 16);
    v5 = [v4 indexOfObject:v7 inSortedRange:0 options:objc_msgSend(v4 usingComparator:{"count"), 1024, *(a1 + 8)}];

    [*(a1 + 16) insertObject:v7 atIndex:v5];
    v3 = v7;
  }
}

- (void)addEdgeFromVertex:(void *)a3 toVertex:
{
  v14 = a2;
  v5 = a3;
  if (!a1)
  {
    goto LABEL_9;
  }

  if (!v14)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:sel_addEdgeFromVertex_toVertex_ object:a1 file:@"WFThreeWayMergingObjectGraph.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"from"}];

    if (v5)
    {
      goto LABEL_4;
    }

LABEL_13:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:sel_addEdgeFromVertex_toVertex_ object:a1 file:@"WFThreeWayMergingObjectGraph.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"to"}];

    goto LABEL_4;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  v6 = *(a1 + 16);
  v7 = [v6 indexOfObject:v14 inSortedRange:0 options:objc_msgSend(v6 usingComparator:{"count"), 1024, *(a1 + 8)}];

  [*(a1 + 16) insertObject:v14 atIndex:v7];
  v8 = *(a1 + 16);
  v9 = [v8 indexOfObject:v5 inSortedRange:0 options:objc_msgSend(v8 usingComparator:{"count"), 1024, *(a1 + 8)}];

  [*(a1 + 16) insertObject:v5 atIndex:v9];
  v10 = [*(a1 + 24) objectForKey:v14];
  if (!v10)
  {
    v10 = objc_opt_new();
    [*(a1 + 24) setObject:v10 forKey:v14];
  }

  [v10 insertObject:v5 atIndex:{objc_msgSend(v10, "indexOfObject:inSortedRange:options:usingComparator:", v5, 0, objc_msgSend(v10, "count"), 1024, *(a1 + 8))}];
  v11 = [*(a1 + 32) objectForKey:v5];
  if (!v11)
  {
    v11 = objc_opt_new();
    [*(a1 + 32) setObject:v11 forKey:v5];
  }

  [v11 insertObject:v14 atIndex:{objc_msgSend(v11, "indexOfObject:inSortedRange:options:usingComparator:", v14, 0, objc_msgSend(v11, "count"), 1024, *(a1 + 8))}];

LABEL_9:
}

void __78__WFThreeWayMergingObjectGraph_enumerateStronglyConnectedComponentsWithBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastObject];
  [*(a1 + 32) removeLastObject];
  if (v2)
  {
    v3 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [*(*(a1 + 40) + 32) objectForKey:v4];
  v6 = v5;
  v46 = v2;
  v47 = v4;
  if (!v2)
  {
    v8 = 0;
LABEL_6:
    v9 = *(a1 + 48);
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 80) + 8) + 24)];
    [v9 setObject:v10 forKey:v4];

    v11 = *(a1 + 56);
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 80) + 8) + 24)];
    [v11 setObject:v12 forKey:v4];

    ++*(*(*(a1 + 80) + 8) + 24);
    [*(a1 + 64) addObject:v4];
    goto LABEL_18;
  }

  v7 = v2[2];
  v8 = v2[3];
  if (v7 != 1)
  {
    if (v7)
    {
      goto LABEL_18;
    }

    goto LABEL_6;
  }

  v13 = [v5 objectAtIndex:v2[3]];
  v14 = *(a1 + 56);
  v15 = MEMORY[0x1E696AD98];
  v16 = [v14 objectForKey:v4];
  v17 = [v16 unsignedIntegerValue];

  v18 = [*(a1 + 56) objectForKey:v13];
  v19 = [v18 unsignedIntegerValue];

  if (v17 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  v4 = v47;
  v21 = [v15 numberWithUnsignedInteger:v20];
  [v14 setObject:v21 forKey:v47];

  ++v8;
LABEL_18:
  while (v8 < [v6 count])
  {
    v22 = objc_autoreleasePoolPush();
    v23 = [v6 objectAtIndex:v8];
    v24 = [*(a1 + 48) objectForKey:v23];

    if (!v24)
    {
      v43 = v4;
      v44 = objc_alloc(objc_opt_self());
      v45 = [(WFThreeWayMergingObjectGraphComponentEnumerationStackItem *)v44 initWithVertex:v43 step:1 predecessorIndex:v8];

      [*(a1 + 32) addObject:v45];
      v42 = [WFThreeWayMergingObjectGraphComponentEnumerationStackItem initialItemWithVertex:v23];

      [*(a1 + 32) addObject:v42];
      objc_autoreleasePoolPop(v22);
      goto LABEL_23;
    }

    if ([*(a1 + 64) containsObject:v23])
    {
      v25 = *(a1 + 56);
      v26 = MEMORY[0x1E696AD98];
      v27 = [v25 objectForKey:v4];
      v28 = [v27 unsignedIntegerValue];

      v29 = [*(a1 + 48) objectForKey:v23];
      v30 = [v29 unsignedIntegerValue];

      v4 = v47;
      if (v28 >= v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = v28;
      }

      v32 = [v26 numberWithUnsignedInteger:v31];
      [v25 setObject:v32 forKey:v47];
    }

    objc_autoreleasePoolPop(v22);
    ++v8;
  }

  v33 = [*(a1 + 56) objectForKey:v4];
  v34 = [*(a1 + 48) objectForKey:v4];
  v35 = [v33 isEqualToNumber:v34];

  if (v35)
  {
    v36 = [*(a1 + 64) indexOfObject:v4];
    v37 = [*(a1 + 64) count] - v36;
    v38 = objc_opt_new();
    v39 = *(a1 + 64);
    v40 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v36, v37}];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __78__WFThreeWayMergingObjectGraph_enumerateStronglyConnectedComponentsWithBlock___block_invoke_2;
    v48[3] = &unk_1E837DC48;
    v49 = v38;
    v41 = v38;
    [v39 enumerateObjectsAtIndexes:v40 options:2 usingBlock:v48];

    [*(a1 + 64) removeObjectsInRange:{v36, v37}];
    (*(*(a1 + 72) + 16))();
  }

  v42 = v46;
LABEL_23:
}

@end