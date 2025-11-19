@interface _PSCluster
- (BOOL)containsPoint:(id)a3;
- (_PSCluster)init;
- (_PSCluster)initWithCoder:(id)a3;
- (_PSCluster)initWithPoints:(id)a3 andHull:(id)a4;
- (id)description;
- (id)pointAtIndex:(unint64_t)a3;
- (int)orientationOfPoints:(id)a3 and:(id)a4 and:(id)a5;
- (int64_t)compareByAnglePoint:(id)a3 andPoint:(id)a4 withRef:(id)a5;
- (unint64_t)count;
- (void)addPointToCluster:(id)a3;
- (void)clearCluster;
- (void)computeConvexHull;
- (void)encodeWithCoder:(id)a3;
- (void)sortArray:(id)a3;
@end

@implementation _PSCluster

- (_PSCluster)init
{
  v8.receiver = self;
  v8.super_class = _PSCluster;
  v2 = [(_PSCluster *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    points = v2->_points;
    v2->_points = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    convexHull = v2->_convexHull;
    v2->_convexHull = v5;
  }

  return v2;
}

- (_PSCluster)initWithPoints:(id)a3 andHull:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _PSCluster;
  v9 = [(_PSCluster *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_points, a3);
    objc_storeStrong(&v10->_convexHull, a4);
  }

  return v10;
}

- (unint64_t)count
{
  v2 = [(_PSCluster *)self points];
  v3 = [v2 count];

  return v3;
}

- (id)pointAtIndex:(unint64_t)a3
{
  v4 = [(_PSCluster *)self points];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (void)addPointToCluster:(id)a3
{
  v7 = a3;
  v4 = [(_PSCluster *)self points];
  v5 = [v4 containsObject:v7];

  if ((v5 & 1) == 0)
  {
    v6 = [(_PSCluster *)self points];
    [v6 addObject:v7];
  }
}

- (void)clearCluster
{
  v2 = [(_PSCluster *)self points];
  [v2 removeAllObjects];
}

- (BOOL)containsPoint:(id)a3
{
  v4 = a3;
  v5 = [(_PSCluster *)self points];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (int)orientationOfPoints:(id)a3 and:(id)a4 and:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  [v7 x];
  v11 = v10;
  [v8 x];
  v13 = v11 - v12;
  [v8 y];
  v15 = v14;
  [v9 y];
  v17 = v15 - v16;
  [v8 x];
  v19 = v18;
  [v9 x];
  v21 = v20;

  v22 = v19 - v21;
  [v7 y];
  v24 = v23;

  [v8 y];
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

- (int64_t)compareByAnglePoint:(id)a3 andPoint:(id)a4 withRef:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_PSCluster *)self orientationOfPoints:v10 and:v8 and:v9];
  if (v11)
  {
    v12 = v11 == 2;
  }

  else
  {
    [v10 euclideanDistanceToPoint:v9];
    v14 = v13;
    [v10 euclideanDistanceToPoint:v8];
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

- (void)sortArray:(id)a3
{
  v4 = a3;
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v4 mutableCopy];
  [v6 removeObjectAtIndex:0];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __24___PSCluster_sortArray___block_invoke;
  v13 = &unk_1E7C25D60;
  v14 = self;
  v7 = v5;
  v15 = v7;
  [v6 sortUsingComparator:&v10];
  if ([v6 count])
  {
    v8 = 0;
    do
    {
      v9 = [v6 objectAtIndexedSubscript:v8];
      [v4 setObject:v9 atIndexedSubscript:++v8];
    }

    while (v8 < [v6 count]);
  }
}

- (void)computeConvexHull
{
  v2 = self;
  v3 = [(_PSCluster *)self convexHull];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(_PSCluster *)v2 convexHull];
    [v5 removeAllObjects];
  }

  v6 = [(_PSCluster *)v2 points];
  v7 = [v6 count];

  if (v7 >= 3)
  {
    v8 = [(_PSCluster *)v2 points];
    v9 = [v8 count];

    v10 = 0;
    if (v9)
    {
      v11 = 0;
      v12 = 1.79769313e308;
      do
      {
        v13 = [(_PSCluster *)v2 points];
        v14 = [v13 objectAtIndexedSubscript:v11];
        [v14 y];
        if (v12 - v15 > 2.22044605e-16)
        {
        }

        else
        {
          v16 = [(_PSCluster *)v2 points];
          v17 = [v16 objectAtIndexedSubscript:v11];
          [v17 y];
          if (vabdd_f64(v18, v12) >= 2.22044605e-16)
          {

            goto LABEL_13;
          }

          v19 = [(_PSCluster *)v2 points];
          [v19 objectAtIndexedSubscript:v10];
          v20 = v69 = v10;
          [v20 x];
          v22 = v21;
          v23 = [(_PSCluster *)v2 points];
          v24 = [v23 objectAtIndexedSubscript:v11];
          [v24 x];
          v26 = v22 - v25;

          v10 = v69;
          if (v26 <= 2.22044605e-16)
          {
            goto LABEL_14;
          }
        }

        v13 = [(_PSCluster *)v2 points];
        v14 = [v13 objectAtIndexedSubscript:v11];
        [v14 y];
        v12 = v27;
        v10 = v11;
LABEL_13:

LABEL_14:
        ++v11;
        v28 = [(_PSCluster *)v2 points];
        v29 = [v28 count];
      }

      while (v11 < v29);
    }

    v30 = [(_PSCluster *)v2 points];
    [v30 exchangeObjectAtIndex:0 withObjectAtIndex:v10];

    v31 = [(_PSCluster *)v2 points];
    [(_PSCluster *)v2 sortArray:v31];

    v67 = [MEMORY[0x1E695DF70] array];
    v32 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    [v67 addObject:v32];

    v33 = [(_PSCluster *)v2 points];
    v34 = [v33 count];

    if (v34 >= 2)
    {
      v35 = 1;
      v36 = 1;
      v71 = v2;
      do
      {
        v68 = v36;
        v37 = [(_PSCluster *)v2 points];
        if (v35 >= [v37 count] - 1)
        {
LABEL_20:

          v42 = v35 + 1;
        }

        else
        {
          while (1)
          {
            v70 = [(_PSCluster *)v2 points];
            v38 = [v70 objectAtIndexedSubscript:0];
            v39 = [(_PSCluster *)v2 points];
            v40 = [v39 objectAtIndexedSubscript:v35];
            v41 = [(_PSCluster *)v2 points];
            v42 = v35 + 1;
            v43 = [v41 objectAtIndexedSubscript:v35 + 1];
            v44 = [(_PSCluster *)v2 orientationOfPoints:v38 and:v40 and:v43];

            if (v44)
            {
              break;
            }

            v37 = [(_PSCluster *)v2 points];
            ++v35;
            if (v42 >= [v37 count] - 1)
            {
              goto LABEL_20;
            }
          }
        }

        v45 = [(_PSCluster *)v2 points];
        [v45 exchangeObjectAtIndex:v68 withObjectAtIndex:v35];

        v36 = v68 + 1;
        v46 = [(_PSCluster *)v71 points];
        v47 = [v46 count];

        v2 = v71;
        v35 = v42;
      }

      while (v42 < v47);
      if (v36 >= 3)
      {
        for (i = 0; i != 3; ++i)
        {
          v49 = [(_PSCluster *)v2 convexHull];
          v50 = [(_PSCluster *)v71 points];
          v51 = [v50 objectAtIndexedSubscript:i];
          [v49 addObject:v51];

          v2 = v71;
        }

        if (v68 != 2)
        {
          v52 = 3;
          do
          {
            while (1)
            {
              v53 = [(_PSCluster *)v2 convexHull];
              v54 = [(_PSCluster *)v2 convexHull];
              v55 = [v53 objectAtIndexedSubscript:{objc_msgSend(v54, "count") - 2}];
              v56 = [(_PSCluster *)v2 convexHull];
              v57 = [(_PSCluster *)v2 convexHull];
              v58 = [v56 objectAtIndexedSubscript:{objc_msgSend(v57, "count") - 1}];
              v59 = [(_PSCluster *)v71 points];
              v60 = [v59 objectAtIndexedSubscript:v52];
              v61 = [(_PSCluster *)v71 orientationOfPoints:v55 and:v58 and:v60];

              v2 = v71;
              v62 = [(_PSCluster *)v71 convexHull];
              v63 = v62;
              if (v61 == 2)
              {
                break;
              }

              [v62 removeLastObject];
            }

            v64 = [(_PSCluster *)v71 points];
            v65 = [v64 objectAtIndexedSubscript:v52];
            [v63 addObject:v65];

            v2 = v71;
          }

          while (v52++ != v68);
        }
      }
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_PSCluster *)self points];
  v6 = NSStringFromSelector(sel_points);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(_PSCluster *)self convexHull];
  v7 = NSStringFromSelector(sel_convexHull);
  [v4 encodeObject:v8 forKey:v7];
}

- (_PSCluster)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v4 setWithObjects:{v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = NSStringFromSelector(sel_points);
  v13 = [v5 decodeObjectOfClasses:v11 forKey:v12];

  v14 = NSStringFromSelector(sel_convexHull);
  v15 = [v5 decodeObjectOfClasses:v11 forKey:v14];

  v16 = [(_PSCluster *)self initWithPoints:v13 andHull:v15];
  return v16;
}

- (id)description
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AD98];
  v5 = [(_PSCluster *)self points];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [(_PSCluster *)self convexHull];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  v10 = [v3 stringWithFormat:@"Points, convex hulls:<%@ %@>", v6, v9];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v38 = self;
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
  obja = [(_PSCluster *)v38 convexHull];
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