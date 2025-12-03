@interface PLAssetCluster
+ (id)mergedCluster:(id)cluster;
+ (id)sortByTimeSortDescriptors;
- (PLAssetCluster)initWithAssetsSortedByDate:(id)date region:(id)region;
- (id)description;
@end

@implementation PLAssetCluster

- (id)description
{
  [(CLLocation *)self->_location coordinate];
  v4 = v3;
  v6 = v5;
  v7 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = PLAssetCluster;
  v8 = [(PLAssetCluster *)&v11 description];
  v9 = [v7 stringWithFormat:@"%@ start: %@, end %@, location {%.8f, %.8f}, assets %lu", v8, self->_startDate, self->_endDate, v4, v6, -[NSArray count](self->_assets, "count")];

  return v9;
}

- (PLAssetCluster)initWithAssetsSortedByDate:(id)date region:(id)region
{
  dateCopy = date;
  regionCopy = region;
  v22.receiver = self;
  v22.super_class = PLAssetCluster;
  v9 = [(PLAssetCluster *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assets, date);
    firstObject = [dateCopy firstObject];
    dateCreated = [firstObject dateCreated];
    startDate = v10->_startDate;
    v10->_startDate = dateCreated;

    lastObject = [dateCopy lastObject];
    dateCreated2 = [lastObject dateCreated];
    endDate = v10->_endDate;
    v10->_endDate = dateCreated2;

    if (regionCopy)
    {
      [regionCopy center];
      v19 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:v17 longitude:v18];
      location = v10->_location;
      v10->_location = v19;
    }
  }

  return v10;
}

+ (id)sortByTimeSortDescriptors
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)mergedCluster:(id)cluster
{
  v31 = *MEMORY[0x1E69E9840];
  clusterCopy = cluster;
  firstObject = [clusterCopy firstObject];
  if ([clusterCopy count] > 1)
  {
    assets = [firstObject assets];
    v7 = [assets mutableCopy];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = clusterCopy;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          if (v13 != firstObject)
          {
            assets2 = [v13 assets];
            [v7 addObjectsFromArray:assets2];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    firstObject2 = [v8 firstObject];
    location = [firstObject2 location];

    if (location)
    {
      v17 = objc_alloc(MEMORY[0x1E695FBB0]);
      [location coordinate];
      v19 = v18;
      v21 = v20;
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v24 = [v17 initWithCenter:uUIDString radius:v19 identifier:{v21, 0.0}];
    }

    else
    {
      v24 = 0;
    }

    v5 = [[PLAssetCluster alloc] initWithAssetsSortedByDate:v7 region:v24];
  }

  else
  {
    v5 = firstObject;
  }

  return v5;
}

@end