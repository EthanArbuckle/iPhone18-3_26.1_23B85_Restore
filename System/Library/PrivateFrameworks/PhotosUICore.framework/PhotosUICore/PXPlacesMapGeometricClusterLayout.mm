@interface PXPlacesMapGeometricClusterLayout
- (BOOL)_shapeAtCoordinate:(CLLocationCoordinate2D)coordinate overlapsShapeAtCoordinate:(CLLocationCoordinate2D)atCoordinate forViewPort:(id)port;
- (PXPlacesMapGeometricClusterLayout)init;
- (id)_clusterGeotaggables:(id)geotaggables forViewPort:(id)port;
- (id)_findClusterOverlappingGeotaggable:(id)geotaggable fromClusters:(id)clusters forViewPort:(id)port;
- (id)layoutForViewPort:(id)port andDataSourceChange:(id)change;
@end

@implementation PXPlacesMapGeometricClusterLayout

- (BOOL)_shapeAtCoordinate:(CLLocationCoordinate2D)coordinate overlapsShapeAtCoordinate:(CLLocationCoordinate2D)atCoordinate forViewPort:(id)port
{
  longitude = atCoordinate.longitude;
  latitude = atCoordinate.latitude;
  v7 = coordinate.longitude;
  v8 = coordinate.latitude;
  portCopy = port;
  [(PXPlacesMapGeometricClusterLayout *)self clusteringDistance];
  v12 = v11;
  [portCopy scale];
  v14 = v13;

  v18.latitude = v8;
  v18.longitude = v7;
  v15 = MKMapPointForCoordinate(v18);
  v19.latitude = latitude;
  v19.longitude = longitude;
  v16 = MKMapPointForCoordinate(v19);
  return sqrt((v15.x - v16.x) * (v15.x - v16.x) + (v15.y - v16.y) * (v15.y - v16.y)) < v12 * v14 + v12 * v14;
}

- (id)_findClusterOverlappingGeotaggable:(id)geotaggable fromClusters:(id)clusters forViewPort:(id)port
{
  v30 = *MEMORY[0x1E69E9840];
  geotaggableCopy = geotaggable;
  clustersCopy = clusters;
  portCopy = port;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = clustersCopy;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        [v16 coordinate];
        v18 = v17;
        v20 = v19;
        [geotaggableCopy coordinate];
        if ([(PXPlacesMapGeometricClusterLayout *)self _shapeAtCoordinate:portCopy overlapsShapeAtCoordinate:v18 forViewPort:v20, v21, v22])
        {
          v23 = v16;
          goto LABEL_11;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_11:

  return v23;
}

- (id)_clusterGeotaggables:(id)geotaggables forViewPort:(id)port
{
  geotaggablesCopy = geotaggables;
  portCopy = port;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v32 = geotaggablesCopy;
  allObjects = [geotaggablesCopy allObjects];
  v9 = [MEMORY[0x1E695DF70] arrayWithArray:?];
  [v9 sortUsingComparator:&__block_literal_global_234626];
  while ([v9 count])
  {
    firstObject = [v9 firstObject];
    [v9 removeObjectAtIndex:0];
    v11 = [(PXPlacesMapGeometricClusterLayout *)self _findClusterOverlappingGeotaggable:firstObject fromClusters:orderedSet forViewPort:portCopy];
    v12 = v11;
    if (v11)
    {
      [v11 addGeotaggable:firstObject];
    }

    else
    {
      v13 = [PXPlacesMapLayoutItemImpl alloc];
      [firstObject coordinate];
      v14 = [(PXPlacesMapLayoutItemImpl *)v13 initWithCoordinate:?];
      v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [v15 addObject:firstObject];
      [firstObject coordinate];
      v16 = MKMapPointForCoordinate(v34);
      [(PXPlacesMapGeometricClusterLayout *)self clusteringDistance];
      v18 = v16.x - v17 * 0.5;
      [(PXPlacesMapGeometricClusterLayout *)self clusteringDistance];
      v20 = v16.y - v19 * 0.5;
      [(PXPlacesMapGeometricClusterLayout *)self clusteringDistance];
      v22 = v21;
      [(PXPlacesMapGeometricClusterLayout *)self clusteringDistance];
      v24 = v23;
      dataSource = [(PXPlacesMapLayout *)self dataSource];
      v26 = [dataSource findItemsInMapRect:{v18, v20, v22, v24}];

      if (v26 && [v26 count])
      {
        allObjects2 = [v26 allObjects];
        [v9 removeObjectsInArray:allObjects2];

        [v15 unionSet:v26];
      }

      v28 = [MEMORY[0x1E695DFB8] orderedSetWithSet:v15];
      [(PXPlacesMapLayoutItemImpl *)v14 addGeotaggables:v28];

      [orderedSet addObject:v14];
    }
  }

  v29 = [orderedSet copy];

  return v29;
}

- (id)layoutForViewPort:(id)port andDataSourceChange:(id)change
{
  portCopy = port;
  changeCopy = change;
  if (!portCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapGeometricClusterLayout.m" lineNumber:33 description:@"-[PXPlacesMapClusterLayout layout] viewPort cannot be nil"];
  }

  dataSource = [(PXPlacesMapLayout *)self dataSource];

  if (!dataSource)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPlacesMapGeometricClusterLayout.m" lineNumber:34 description:@"-[PXPlacesMapClusterLayout layout] dataSource cannot be nil"];
  }

  [portCopy mapRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  dataSource2 = [(PXPlacesMapLayout *)self dataSource];
  v19 = [dataSource2 findItemsInMapRect:{v11, v13, v15, v17}];

  v20 = [(PXPlacesMapGeometricClusterLayout *)self _clusterGeotaggables:v19 forViewPort:portCopy];
  v21 = objc_alloc_init(PXPlacesMapLayoutResultImpl);
  [(PXPlacesMapLayoutResultImpl *)v21 addItems:v20];

  return v21;
}

- (PXPlacesMapGeometricClusterLayout)init
{
  v3.receiver = self;
  v3.super_class = PXPlacesMapGeometricClusterLayout;
  result = [(PXPlacesMapGeometricClusterLayout *)&v3 init];
  if (result)
  {
    result->_clusteringDistance = 30.0;
  }

  return result;
}

@end