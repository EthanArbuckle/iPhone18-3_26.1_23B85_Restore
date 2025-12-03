@interface _PSCluster
- (BOOL)containsPoint:(id)point;
- (_PSCluster)init;
- (_PSCluster)initWithCoder:(id)coder;
- (_PSCluster)initWithPoints:(id)points andHull:(id)hull;
- (id)description;
- (id)pointAtIndex:(unint64_t)index;
- (int)orientationOfPoints:(id)points and:(id)and and:(id)a5;
- (int64_t)compareByAnglePoint:(id)point andPoint:(id)andPoint withRef:(id)ref;
- (unint64_t)count;
- (void)addPointToCluster:(id)cluster;
- (void)clearCluster;
- (void)computeConvexHull;
- (void)encodeWithCoder:(id)coder;
- (void)sortArray:(id)array;
@end

@implementation _PSCluster

- (_PSCluster)init
{
  v8.receiver = self;
  v8.super_class = _PSCluster;
  v2 = [(_PSCluster *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    points = v2->_points;
    v2->_points = array;

    array2 = [MEMORY[0x1E695DF70] array];
    convexHull = v2->_convexHull;
    v2->_convexHull = array2;
  }

  return v2;
}

- (_PSCluster)initWithPoints:(id)points andHull:(id)hull
{
  pointsCopy = points;
  hullCopy = hull;
  v12.receiver = self;
  v12.super_class = _PSCluster;
  v9 = [(_PSCluster *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_points, points);
    objc_storeStrong(&v10->_convexHull, hull);
  }

  return v10;
}

- (unint64_t)count
{
  points = [(_PSCluster *)self points];
  v3 = [points count];

  return v3;
}

- (id)pointAtIndex:(unint64_t)index
{
  points = [(_PSCluster *)self points];
  v5 = [points objectAtIndexedSubscript:index];

  return v5;
}

- (void)addPointToCluster:(id)cluster
{
  clusterCopy = cluster;
  points = [(_PSCluster *)self points];
  v5 = [points containsObject:clusterCopy];

  if ((v5 & 1) == 0)
  {
    points2 = [(_PSCluster *)self points];
    [points2 addObject:clusterCopy];
  }
}

- (void)clearCluster
{
  points = [(_PSCluster *)self points];
  [points removeAllObjects];
}

- (BOOL)containsPoint:(id)point
{
  pointCopy = point;
  points = [(_PSCluster *)self points];
  v6 = [points containsObject:pointCopy];

  return v6;
}

- (int)orientationOfPoints:(id)points and:(id)and and:(id)a5
{
  v7 = a5;
  andCopy = and;
  pointsCopy = points;
  [v7 x];
  v11 = v10;
  [andCopy x];
  v13 = v11 - v12;
  [andCopy y];
  v15 = v14;
  [pointsCopy y];
  v17 = v15 - v16;
  [andCopy x];
  v19 = v18;
  [pointsCopy x];
  v21 = v20;

  v22 = v19 - v21;
  [v7 y];
  v24 = v23;

  [andCopy y];
  v26 = v25;

  v27 = v13 * v17 - v22 * (v24 - v26);
  if (v27 > 0.0)
  {
    return 1;
  }

  else
  {
    return 2 * (v27 < 0.0);
  }
}

- (int64_t)compareByAnglePoint:(id)point andPoint:(id)andPoint withRef:(id)ref
{
  pointCopy = point;
  andPointCopy = andPoint;
  refCopy = ref;
  v11 = [(_PSCluster *)self orientationOfPoints:refCopy and:pointCopy and:andPointCopy];
  if (v11)
  {
    v12 = v11 == 2;
  }

  else
  {
    [refCopy euclideanDistanceToPoint:andPointCopy];
    v14 = v13;
    [refCopy euclideanDistanceToPoint:pointCopy];
    v12 = v14 - v15 > -2.22044605e-16;
  }

  if (v12)
  {
    v16 = -1;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)sortArray:(id)array
{
  arrayCopy = array;
  v5 = [arrayCopy objectAtIndexedSubscript:0];
  v6 = [arrayCopy mutableCopy];
  [v6 removeObjectAtIndex:0];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __24___PSCluster_sortArray___block_invoke;
  v13 = &unk_1E7C25D60;
  selfCopy = self;
  v7 = v5;
  v15 = v7;
  [v6 sortUsingComparator:&v10];
  if ([v6 count])
  {
    v8 = 0;
    do
    {
      v9 = [v6 objectAtIndexedSubscript:v8];
      [arrayCopy setObject:v9 atIndexedSubscript:++v8];
    }

    while (v8 < [v6 count]);
  }
}

- (void)computeConvexHull
{
  selfCopy = self;
  convexHull = [(_PSCluster *)self convexHull];
  v4 = [convexHull count];

  if (v4)
  {
    convexHull2 = [(_PSCluster *)selfCopy convexHull];
    [convexHull2 removeAllObjects];
  }

  points = [(_PSCluster *)selfCopy points];
  v7 = [points count];

  if (v7 >= 3)
  {
    points2 = [(_PSCluster *)selfCopy points];
    v9 = [points2 count];

    v10 = 0;
    if (v9)
    {
      v11 = 0;
      v12 = 1.79769313e308;
      do
      {
        points3 = [(_PSCluster *)selfCopy points];
        v14 = [points3 objectAtIndexedSubscript:v11];
        [v14 y];
        if (v12 - v15 > 2.22044605e-16)
        {
        }

        else
        {
          points4 = [(_PSCluster *)selfCopy points];
          v17 = [points4 objectAtIndexedSubscript:v11];
          [v17 y];
          if (vabdd_f64(v18, v12) >= 2.22044605e-16)
          {

            goto LABEL_13;
          }

          points5 = [(_PSCluster *)selfCopy points];
          [points5 objectAtIndexedSubscript:v10];
          v20 = v69 = v10;
          [v20 x];
          v22 = v21;
          points6 = [(_PSCluster *)selfCopy points];
          v24 = [points6 objectAtIndexedSubscript:v11];
          [v24 x];
          v26 = v22 - v25;

          v10 = v69;
          if (v26 <= 2.22044605e-16)
          {
            goto LABEL_14;
          }
        }

        points3 = [(_PSCluster *)selfCopy points];
        v14 = [points3 objectAtIndexedSubscript:v11];
        [v14 y];
        v12 = v27;
        v10 = v11;
LABEL_13:

LABEL_14:
        ++v11;
        points7 = [(_PSCluster *)selfCopy points];
        v29 = [points7 count];
      }

      while (v11 < v29);
    }

    points8 = [(_PSCluster *)selfCopy points];
    [points8 exchangeObjectAtIndex:0 withObjectAtIndex:v10];

    points9 = [(_PSCluster *)selfCopy points];
    [(_PSCluster *)selfCopy sortArray:points9];

    array = [MEMORY[0x1E695DF70] array];
    v32 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    [array addObject:v32];

    points10 = [(_PSCluster *)selfCopy points];
    v34 = [points10 count];

    if (v34 >= 2)
    {
      v35 = 1;
      v36 = 1;
      v71 = selfCopy;
      do
      {
        v68 = v36;
        points11 = [(_PSCluster *)selfCopy points];
        if (v35 >= [points11 count] - 1)
        {
LABEL_20:

          v42 = v35 + 1;
        }

        else
        {
          while (1)
          {
            points12 = [(_PSCluster *)selfCopy points];
            v38 = [points12 objectAtIndexedSubscript:0];
            points13 = [(_PSCluster *)selfCopy points];
            v40 = [points13 objectAtIndexedSubscript:v35];
            points14 = [(_PSCluster *)selfCopy points];
            v42 = v35 + 1;
            v43 = [points14 objectAtIndexedSubscript:v35 + 1];
            v44 = [(_PSCluster *)selfCopy orientationOfPoints:v38 and:v40 and:v43];

            if (v44)
            {
              break;
            }

            points11 = [(_PSCluster *)selfCopy points];
            ++v35;
            if (v42 >= [points11 count] - 1)
            {
              goto LABEL_20;
            }
          }
        }

        points15 = [(_PSCluster *)selfCopy points];
        [points15 exchangeObjectAtIndex:v68 withObjectAtIndex:v35];

        v36 = v68 + 1;
        points16 = [(_PSCluster *)v71 points];
        v47 = [points16 count];

        selfCopy = v71;
        v35 = v42;
      }

      while (v42 < v47);
      if (v36 >= 3)
      {
        for (i = 0; i != 3; ++i)
        {
          convexHull3 = [(_PSCluster *)selfCopy convexHull];
          points17 = [(_PSCluster *)v71 points];
          v51 = [points17 objectAtIndexedSubscript:i];
          [convexHull3 addObject:v51];

          selfCopy = v71;
        }

        if (v68 != 2)
        {
          v52 = 3;
          do
          {
            while (1)
            {
              convexHull4 = [(_PSCluster *)selfCopy convexHull];
              convexHull5 = [(_PSCluster *)selfCopy convexHull];
              v55 = [convexHull4 objectAtIndexedSubscript:{objc_msgSend(convexHull5, "count") - 2}];
              convexHull6 = [(_PSCluster *)selfCopy convexHull];
              convexHull7 = [(_PSCluster *)selfCopy convexHull];
              v58 = [convexHull6 objectAtIndexedSubscript:{objc_msgSend(convexHull7, "count") - 1}];
              points18 = [(_PSCluster *)v71 points];
              v60 = [points18 objectAtIndexedSubscript:v52];
              v61 = [(_PSCluster *)v71 orientationOfPoints:v55 and:v58 and:v60];

              selfCopy = v71;
              convexHull8 = [(_PSCluster *)v71 convexHull];
              v63 = convexHull8;
              if (v61 == 2)
              {
                break;
              }

              [convexHull8 removeLastObject];
            }

            points19 = [(_PSCluster *)v71 points];
            v65 = [points19 objectAtIndexedSubscript:v52];
            [v63 addObject:v65];

            selfCopy = v71;
          }

          while (v52++ != v68);
        }
      }
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  points = [(_PSCluster *)self points];
  v6 = NSStringFromSelector(sel_points);
  [coderCopy encodeObject:points forKey:v6];

  convexHull = [(_PSCluster *)self convexHull];
  v7 = NSStringFromSelector(sel_convexHull);
  [coderCopy encodeObject:convexHull forKey:v7];
}

- (_PSCluster)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v4 setWithObjects:{v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = NSStringFromSelector(sel_points);
  v13 = [coderCopy decodeObjectOfClasses:v11 forKey:v12];

  v14 = NSStringFromSelector(sel_convexHull);
  v15 = [coderCopy decodeObjectOfClasses:v11 forKey:v14];

  v16 = [(_PSCluster *)self initWithPoints:v13 andHull:v15];
  return v16;
}

- (id)description
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AD98];
  points = [(_PSCluster *)self points];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(points, "count")}];
  v7 = MEMORY[0x1E696AD98];
  convexHull = [(_PSCluster *)self convexHull];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(convexHull, "count")}];
  v10 = [v3 stringWithFormat:@"Points, convex hulls:<%@ %@>", v6, v9];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  selfCopy = self;
  obj = [(_PSCluster *)self points];
  v11 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v46;
    do
    {
      v14 = 0;
      v15 = v10;
      do
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v45 + 1) + 8 * v14);
        v17 = MEMORY[0x1E696AEC0];
        v18 = MEMORY[0x1E696AD98];
        [v16 x];
        v19 = [v18 numberWithDouble:?];
        v20 = MEMORY[0x1E696AD98];
        [v16 y];
        v21 = [v20 numberWithDouble:?];
        v22 = [v17 stringWithFormat:@"<%@ %@>", v19, v21];
        v10 = [v15 stringByAppendingString:v22];

        ++v14;
        v15 = v10;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v12);
  }

  v23 = [v10 stringByAppendingString:{@", "}];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obja = [(_PSCluster *)selfCopy convexHull];
  v24 = [obja countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v42;
    do
    {
      v27 = 0;
      v28 = v23;
      do
      {
        if (*v42 != v26)
        {
          objc_enumerationMutation(obja);
        }

        v29 = *(*(&v41 + 1) + 8 * v27);
        v30 = MEMORY[0x1E696AEC0];
        v31 = MEMORY[0x1E696AD98];
        [v29 x];
        v32 = [v31 numberWithDouble:?];
        v33 = MEMORY[0x1E696AD98];
        [v29 y];
        v34 = [v33 numberWithDouble:?];
        v35 = [v30 stringWithFormat:@"<%@ %@>", v32, v34];
        v23 = [v28 stringByAppendingString:v35];

        ++v27;
        v28 = v23;
      }

      while (v25 != v27);
      v25 = [obja countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v25);
  }

  v36 = *MEMORY[0x1E69E9840];

  return v23;
}

@end