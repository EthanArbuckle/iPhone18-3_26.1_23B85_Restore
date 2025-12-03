@interface _PSDBSCAN
- (_PSDBSCAN)initWithMinimumPointsForClustering:(unint64_t)clustering MaxNeighborDistance:(double)distance;
- (id)expandClusterForPoint:(id)point withNeighborIndices:(id)indices;
- (id)getNeighborIndices:(unint64_t)indices;
- (void)emptyCollections;
- (void)fitData:(id)data;
- (void)mergeCurrNeighbors:(id)neighbors withArray:(id)array andUpdateSet:(id)set;
@end

@implementation _PSDBSCAN

- (_PSDBSCAN)initWithMinimumPointsForClustering:(unint64_t)clustering MaxNeighborDistance:(double)distance
{
  v17.receiver = self;
  v17.super_class = _PSDBSCAN;
  v6 = [(_PSDBSCAN *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_minPts = clustering;
    v6->_eps = distance;
    v8 = [MEMORY[0x1E695DFA8] set];
    visitedPoints = v7->_visitedPoints;
    v7->_visitedPoints = v8;

    v10 = [MEMORY[0x1E695DFA8] set];
    clusteredPoints = v7->_clusteredPoints;
    v7->_clusteredPoints = v10;

    array = [MEMORY[0x1E695DF70] array];
    noisePoints = v7->_noisePoints;
    v7->_noisePoints = array;

    array2 = [MEMORY[0x1E695DF70] array];
    clusters = v7->_clusters;
    v7->_clusters = array2;
  }

  return v7;
}

- (void)emptyCollections
{
  array = [MEMORY[0x1E695DF70] array];
  [(_PSDBSCAN *)self setPointsArray:array];

  v4 = [MEMORY[0x1E695DFA8] set];
  [(_PSDBSCAN *)self setClusteredPoints:v4];

  v5 = [MEMORY[0x1E695DFA8] set];
  [(_PSDBSCAN *)self setVisitedPoints:v5];

  array2 = [MEMORY[0x1E695DF70] array];
  [(_PSDBSCAN *)self setClusters:array2];

  array3 = [MEMORY[0x1E695DF70] array];
  [(_PSDBSCAN *)self setNoisePoints:array3];
}

- (void)fitData:(id)data
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = [data mutableCopy];
  [(_PSDBSCAN *)self setPointsArray:v4];

  pointsArray = [(_PSDBSCAN *)self pointsArray];
  v6 = [pointsArray count];

  if (v6)
  {
    v7 = 0;
    do
    {
      pointsArray2 = [(_PSDBSCAN *)self pointsArray];
      v9 = [pointsArray2 objectAtIndexedSubscript:v7];

      visitedPoints = [(_PSDBSCAN *)self visitedPoints];
      v11 = [visitedPoints containsObject:v9];

      if ((v11 & 1) == 0)
      {
        visitedPoints2 = [(_PSDBSCAN *)self visitedPoints];
        [visitedPoints2 addObject:v9];

        v13 = [(_PSDBSCAN *)self getNeighborIndices:v7];
        v14 = [v13 count] + 1;
        if (v14 >= [(_PSDBSCAN *)self minPts])
        {
          noisePoints = [(_PSDBSCAN *)self expandClusterForPoint:v9 withNeighborIndices:v13];
          clusters = [(_PSDBSCAN *)self clusters];
          [clusters addObject:noisePoints];
        }

        else
        {
          noisePoints = [(_PSDBSCAN *)self noisePoints];
          [noisePoints addObject:v9];
        }
      }

      ++v7;
      pointsArray3 = [(_PSDBSCAN *)self pointsArray];
      v18 = [pointsArray3 count];
    }

    while (v7 < v18);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  clusters2 = [(_PSDBSCAN *)self clusters];
  v20 = [clusters2 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(clusters2);
        }

        [*(*(&v25 + 1) + 8 * v23++) computeConvexHull];
      }

      while (v21 != v23);
      v21 = [clusters2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)getNeighborIndices:(unint64_t)indices
{
  pointsArray = [(_PSDBSCAN *)self pointsArray];
  v6 = [pointsArray objectAtIndexedSubscript:indices];

  array = [MEMORY[0x1E695DF70] array];
  pointsArray2 = [(_PSDBSCAN *)self pointsArray];
  v9 = [pointsArray2 count];

  if (v9)
  {
    v10 = 0;
    do
    {
      if (indices != v10)
      {
        v11 = [(NSMutableArray *)self->_pointsArray objectAtIndexedSubscript:v10];
        [v6 euclideanDistanceToPoint:v11];
        v13 = v12;
        [(_PSDBSCAN *)self eps];
        v15 = v14;

        if (v13 <= v15)
        {
          v16 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
          [array addObject:v16];
        }
      }

      ++v10;
      pointsArray3 = [(_PSDBSCAN *)self pointsArray];
      v18 = [pointsArray3 count];
    }

    while (v10 < v18);
  }

  return array;
}

- (id)expandClusterForPoint:(id)point withNeighborIndices:(id)indices
{
  pointCopy = point;
  indicesCopy = indices;
  v8 = objc_alloc_init(_PSCluster);
  [(_PSCluster *)v8 addPointToCluster:pointCopy];
  [(NSMutableSet *)self->_clusteredPoints addObject:pointCopy];
  v9 = [MEMORY[0x1E695DFA8] setWithArray:indicesCopy];
  if ([indicesCopy count])
  {
    v10 = 0;
    do
    {
      v11 = [indicesCopy objectAtIndexedSubscript:v10];
      integerValue = [v11 integerValue];

      pointsArray = [(_PSDBSCAN *)self pointsArray];
      v14 = [pointsArray objectAtIndexedSubscript:integerValue];

      visitedPoints = [(_PSDBSCAN *)self visitedPoints];
      v16 = [visitedPoints containsObject:v14];

      if ((v16 & 1) == 0)
      {
        visitedPoints2 = [(_PSDBSCAN *)self visitedPoints];
        [visitedPoints2 addObject:v14];

        v18 = [(_PSDBSCAN *)self getNeighborIndices:integerValue];
        v19 = [v18 count] + 1;
        if (v19 >= [(_PSDBSCAN *)self minPts])
        {
          [(_PSDBSCAN *)self mergeCurrNeighbors:indicesCopy withArray:v18 andUpdateSet:v9];
        }

        clusteredPoints = [(_PSDBSCAN *)self clusteredPoints];
        v21 = [clusteredPoints containsObject:v14];

        if ((v21 & 1) == 0)
        {
          [(_PSCluster *)v8 addPointToCluster:v14];
          clusteredPoints2 = [(_PSDBSCAN *)self clusteredPoints];
          [clusteredPoints2 addObject:v14];
        }
      }

      ++v10;
    }

    while (v10 < [indicesCopy count]);
  }

  return v8;
}

- (void)mergeCurrNeighbors:(id)neighbors withArray:(id)array andUpdateSet:(id)set
{
  v21 = *MEMORY[0x1E69E9840];
  neighborsCopy = neighbors;
  arrayCopy = array;
  setCopy = set;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [arrayCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(arrayCopy);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (([setCopy containsObject:v14] & 1) == 0)
        {
          [neighborsCopy addObject:v14];
          [setCopy addObject:v14];
        }
      }

      v11 = [arrayCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end