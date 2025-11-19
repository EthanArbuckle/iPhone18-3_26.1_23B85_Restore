@interface PLDataCluster
+ (id)clusterWithObjects:(id)a3 clustroid:(id)a4 diameter:(double)a5;
- (PLDataCluster)init;
- (id)approximateRegionWithMaximumRadius:(double)a3;
- (id)description;
- (id)locations;
- (id)meanRegion:(double)a3;
- (id)meanUniversalDate;
- (id)universalDates;
@end

@implementation PLDataCluster

- (id)meanUniversalDate
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(PLDataCluster *)self universalDates];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v14 + 1) + 8 * i) timeIntervalSince1970];
        v7 = v7 + v9;
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = [(PLDataCluster *)self objects];
  v11 = v7 / [v10 count];

  v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v11];

  return v12;
}

- (id)meanRegion:(double)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = [(PLDataCluster *)self locations];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (!v5)
  {
    goto LABEL_44;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v53;
  v9 = 0.0;
  v10 = 0.0;
  do
  {
    v11 = 0;
    do
    {
      if (*v53 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v12 = *(*(&v52 + 1) + 8 * v11);
      [v12 coordinate];
      v14 = v13;
      v16 = v15;
      v17 = [MEMORY[0x1E695DFB0] null];
      if (v12 == v17)
      {
        goto LABEL_12;
      }

      v60.latitude = v14;
      v60.longitude = v16;
      if (!CLLocationCoordinate2DIsValid(v60))
      {
        goto LABEL_12;
      }

      v18 = v14 != 0.0;
      if (v16 != 0.0)
      {
        v18 = 1;
      }

      if (v18)
      {

        if (v14 != 40.0 || v16 != -100.0)
        {
          v10 = v10 + v14;
          v9 = v9 + v16;
          ++v7;
        }
      }

      else
      {
LABEL_12:
      }

      ++v11;
    }

    while (v6 != v11);
    v20 = [v4 countByEnumeratingWithState:&v52 objects:v57 count:16];
    v6 = v20;
  }

  while (v20);
  if (v7)
  {
    v21 = v7;
    v22 = v10 / v7;
    v23 = v9 / v7;
    v47 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:v22 longitude:v23];
    v24 = 10.0;
    if (v7 != 1)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v25 = v4;
      v26 = [v25 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v49;
        v29 = 0.0;
        do
        {
          v30 = 0;
          do
          {
            if (*v49 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v48 + 1) + 8 * v30);
            [v31 coordinate];
            v33 = v32;
            v35 = v34;
            v36 = [MEMORY[0x1E695DFB0] null];
            if (v31 == v36)
            {
              goto LABEL_34;
            }

            v61.latitude = v33;
            v61.longitude = v35;
            if (!CLLocationCoordinate2DIsValid(v61))
            {
              goto LABEL_34;
            }

            v37 = v33 != 0.0;
            if (v35 != 0.0)
            {
              v37 = 1;
            }

            if (v37)
            {

              if (v33 != 40.0 || v35 != -100.0)
              {
                [v47 distanceFromLocation:v31];
                v29 = v29 + v39;
              }
            }

            else
            {
LABEL_34:
            }

            ++v30;
          }

          while (v27 != v30);
          v40 = [v25 countByEnumeratingWithState:&v48 objects:v56 count:16];
          v27 = v40;
        }

        while (v40);
      }

      else
      {
        v29 = 0.0;
      }

      if (v29 / v21 >= a3)
      {
        v24 = v29 / v21;
      }

      else
      {
        v24 = a3;
      }
    }

    v42 = objc_alloc(MEMORY[0x1E695FBB0]);
    v43 = CLLocationCoordinate2DMake(v22, v23);
    v44 = [MEMORY[0x1E696AFB0] UUID];
    v45 = [v44 UUIDString];
    v41 = [v42 initWithCenter:v45 radius:v43.latitude identifier:{v43.longitude, v24}];
  }

  else
  {
LABEL_44:
    v41 = 0;
  }

  return v41;
}

- (id)approximateRegionWithMaximumRadius:(double)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = [(PLDataClustering *)[PLDBSCANClustering alloc] initWithDistanceBlock:&__block_literal_global_92063];
  [(PLDataDensityClustering *)v5 setMaximumDistance:a3];
  [(PLDataDensityClustering *)v5 setMinimumNumberOfObjects:1];
  v6 = [(PLDataCluster *)self objects];
  v25 = v5;
  v7 = [(PLDBSCANClustering *)v5 performWithDataset:v6 progressBlock:0];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v28 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 meanRegion:a3];
        if (v15)
        {
          if (!v11 || ([v10 objects], v27 = v10, v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), objc_msgSend(v13, "objects"), v18 = objc_claimAutoreleasedReturnValue(), v19 = v11, v20 = objc_msgSend(v18, "count"), v18, v16, v10 = v27, v21 = v17 >= v20, v11 = v19, !v21))
          {
            v22 = v15;

            v23 = v13;
            v10 = v23;
            v11 = v22;
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  return v11;
}

double __77__PLDataCluster_PLRegionsClusteringItem__approximateRegionWithMaximumRadius___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v5 pl_coordinate];
  [v4 pl_coordinate];
  v15 = v6;
  v16 = v7;
  CLLocationCoordinate2DGetDistanceFrom();
  v9 = v8;
  v10 = [v5 pl_date];

  v11 = [v4 pl_date];

  [v10 timeIntervalSinceDate:v11];
  v13 = fabs(v12) / 7200.0;

  return v9 + v13;
}

- (id)universalDates
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(PLDataCluster *)self objects];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(PLDataCluster *)self objects];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) pl_date];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)locations
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(PLDataCluster *)self objects];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(PLDataCluster *)self objects];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v17 + 1) + 8 * i) pl_coordinate];
        latitude = v24.latitude;
        longitude = v24.longitude;
        if (CLLocationCoordinate2DIsValid(v24))
        {
          v13 = latitude != 0.0;
          if (longitude != 0.0)
          {
            v13 = 1;
          }

          if (v13 && (latitude != 40.0 || longitude != -100.0))
          {
            v15 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:latitude longitude:longitude];
            [v5 addObject:v15];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@<%p> - count:%ld score:%lf", v5, self, -[NSArray count](self->_objects, "count"), *&self->_score];

  if (self->_diameter != 0.0)
  {
    [v6 appendFormat:@" diameter:%lf", *&self->_diameter];
  }

  if (self->_clustroid)
  {
    [v6 appendFormat:@" clustroid:%@", self->_clustroid];
  }

  return v6;
}

- (PLDataCluster)init
{
  v7.receiver = self;
  v7.super_class = PLDataCluster;
  v2 = [(PLDataCluster *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    objects = v2->_objects;
    v2->_objects = v3;

    clustroid = v2->_clustroid;
    v2->_diameter = 0.0;
    v2->_clustroid = 0;

    v2->_score = 1.0;
  }

  return v2;
}

+ (id)clusterWithObjects:(id)a3 clustroid:(id)a4 diameter:(double)a5
{
  v7 = a4;
  v8 = a3;
  objc_opt_class();
  v9 = objc_opt_new();
  [v9 setObjects:v8];

  [v9 setDiameter:a5];
  [v9 setScore:1.0];
  [v9 setClustroid:v7];

  return v9;
}

@end