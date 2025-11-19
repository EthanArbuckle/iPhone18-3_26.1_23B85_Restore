@interface _PSDBSCAN
- (_PSDBSCAN)initWithMinimumPointsForClustering:(unint64_t)a3 MaxNeighborDistance:(double)a4;
- (id)expandClusterForPoint:(id)a3 withNeighborIndices:(id)a4;
- (id)getNeighborIndices:(unint64_t)a3;
- (void)emptyCollections;
- (void)fitData:(id)a3;
- (void)mergeCurrNeighbors:(id)a3 withArray:(id)a4 andUpdateSet:(id)a5;
@end

@implementation _PSDBSCAN

- (_PSDBSCAN)initWithMinimumPointsForClustering:(unint64_t)a3 MaxNeighborDistance:(double)a4
{
  v17.receiver = self;
  v17.super_class = _PSDBSCAN;
  v6 = [(_PSDBSCAN *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_minPts = a3;
    v6->_eps = a4;
    v8 = [MEMORY[0x1E695DFA8] set];
    visitedPoints = v7->_visitedPoints;
    v7->_visitedPoints = v8;

    v10 = [MEMORY[0x1E695DFA8] set];
    clusteredPoints = v7->_clusteredPoints;
    v7->_clusteredPoints = v10;

    v12 = [MEMORY[0x1E695DF70] array];
    noisePoints = v7->_noisePoints;
    v7->_noisePoints = v12;

    v14 = [MEMORY[0x1E695DF70] array];
    clusters = v7->_clusters;
    v7->_clusters = v14;
  }

  return v7;
}

- (void)emptyCollections
{
  v3 = [MEMORY[0x1E695DF70] array];
  [(_PSDBSCAN *)self setPointsArray:v3];

  v4 = [MEMORY[0x1E695DFA8] set];
  [(_PSDBSCAN *)self setClusteredPoints:v4];

  v5 = [MEMORY[0x1E695DFA8] set];
  [(_PSDBSCAN *)self setVisitedPoints:v5];

  v6 = [MEMORY[0x1E695DF70] array];
  [(_PSDBSCAN *)self setClusters:v6];

  v7 = [MEMORY[0x1E695DF70] array];
  [(_PSDBSCAN *)self setNoisePoints:v7];
}

- (void)fitData:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = [a3 mutableCopy];
  [(_PSDBSCAN *)self setPointsArray:v4];

  v5 = [(_PSDBSCAN *)self pointsArray];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [(_PSDBSCAN *)self pointsArray];
      v9 = [v8 objectAtIndexedSubscript:v7];

      v10 = [(_PSDBSCAN *)self visitedPoints];
      v11 = [v10 containsObject:v9];

      if ((v11 & 1) == 0)
      {
        v12 = [(_PSDBSCAN *)self visitedPoints];
        [v12 addObject:v9];

        v13 = [(_PSDBSCAN *)self getNeighborIndices:v7];
        v14 = [v13 count] + 1;
        if (v14 >= [(_PSDBSCAN *)self minPts])
        {
          v15 = [(_PSDBSCAN *)self expandClusterForPoint:v9 withNeighborIndices:v13];
          v16 = [(_PSDBSCAN *)self clusters];
          [v16 addObject:v15];
        }

        else
        {
          v15 = [(_PSDBSCAN *)self noisePoints];
          [v15 addObject:v9];
        }
      }

      ++v7;
      v17 = [(_PSDBSCAN *)self pointsArray];
      v18 = [v17 count];
    }

    while (v7 < v18);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = [(_PSDBSCAN *)self clusters];
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      v23 = 0;
      do
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v25 + 1) + 8 * v23++) computeConvexHull];
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)getNeighborIndices:(unint64_t)a3
{
  v5 = [(_PSDBSCAN *)self pointsArray];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [(_PSDBSCAN *)self pointsArray];
  v9 = [v8 count];

  if (v9)
  {
    v10 = 0;
    do
    {
      if (a3 != v10)
      {
        v11 = [(NSMutableArray *)self->_pointsArray objectAtIndexedSubscript:v10];
        [v6 euclideanDistanceToPoint:v11];
        v13 = v12;
        [(_PSDBSCAN *)self eps];
        v15 = v14;

        if (v13 <= v15)
        {
          v16 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
          [v7 addObject:v16];
        }
      }

      ++v10;
      v17 = [(_PSDBSCAN *)self pointsArray];
      v18 = [v17 count];
    }

    while (v10 < v18);
  }

  return v7;
}

- (id)expandClusterForPoint:(id)a3 withNeighborIndices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(_PSCluster);
  [(_PSCluster *)v8 addPointToCluster:v6];
  [(NSMutableSet *)self->_clusteredPoints addObject:v6];
  v9 = [MEMORY[0x1E695DFA8] setWithArray:v7];
  if ([v7 count])
  {
    v10 = 0;
    do
    {
      v11 = [v7 objectAtIndexedSubscript:v10];
      v12 = [v11 integerValue];

      v13 = [(_PSDBSCAN *)self pointsArray];
      v14 = [v13 objectAtIndexedSubscript:v12];

      v15 = [(_PSDBSCAN *)self visitedPoints];
      v16 = [v15 containsObject:v14];

      if ((v16 & 1) == 0)
      {
        v17 = [(_PSDBSCAN *)self visitedPoints];
        [v17 addObject:v14];

        v18 = [(_PSDBSCAN *)self getNeighborIndices:v12];
        v19 = [v18 count] + 1;
        if (v19 >= [(_PSDBSCAN *)self minPts])
        {
          [(_PSDBSCAN *)self mergeCurrNeighbors:v7 withArray:v18 andUpdateSet:v9];
        }

        v20 = [(_PSDBSCAN *)self clusteredPoints];
        v21 = [v20 containsObject:v14];

        if ((v21 & 1) == 0)
        {
          [(_PSCluster *)v8 addPointToCluster:v14];
          v22 = [(_PSDBSCAN *)self clusteredPoints];
          [v22 addObject:v14];
        }
      }

      ++v10;
    }

    while (v10 < [v7 count]);
  }

  return v8;
}

- (void)mergeCurrNeighbors:(id)a3 withArray:(id)a4 andUpdateSet:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (([v9 containsObject:v14] & 1) == 0)
        {
          [v7 addObject:v14];
          [v9 addObject:v14];
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end