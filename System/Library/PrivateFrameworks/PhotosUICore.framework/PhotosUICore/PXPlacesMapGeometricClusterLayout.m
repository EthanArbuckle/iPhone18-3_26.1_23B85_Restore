@interface PXPlacesMapGeometricClusterLayout
- (BOOL)_shapeAtCoordinate:(CLLocationCoordinate2D)a3 overlapsShapeAtCoordinate:(CLLocationCoordinate2D)a4 forViewPort:(id)a5;
- (PXPlacesMapGeometricClusterLayout)init;
- (id)_clusterGeotaggables:(id)a3 forViewPort:(id)a4;
- (id)_findClusterOverlappingGeotaggable:(id)a3 fromClusters:(id)a4 forViewPort:(id)a5;
- (id)layoutForViewPort:(id)a3 andDataSourceChange:(id)a4;
@end

@implementation PXPlacesMapGeometricClusterLayout

- (BOOL)_shapeAtCoordinate:(CLLocationCoordinate2D)a3 overlapsShapeAtCoordinate:(CLLocationCoordinate2D)a4 forViewPort:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = a3.longitude;
  v8 = a3.latitude;
  v10 = a5;
  [(PXPlacesMapGeometricClusterLayout *)self clusteringDistance];
  v12 = v11;
  [v10 scale];
  v14 = v13;

  v18.latitude = v8;
  v18.longitude = v7;
  v15 = MKMapPointForCoordinate(v18);
  v19.latitude = latitude;
  v19.longitude = longitude;
  v16 = MKMapPointForCoordinate(v19);
  return sqrt((v15.x - v16.x) * (v15.x - v16.x) + (v15.y - v16.y) * (v15.y - v16.y)) < v12 * v14 + v12 * v14;
}

- (id)_findClusterOverlappingGeotaggable:(id)a3 fromClusters:(id)a4 forViewPort:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v9;
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
        [v8 coordinate];
        if ([(PXPlacesMapGeometricClusterLayout *)self _shapeAtCoordinate:v10 overlapsShapeAtCoordinate:v18 forViewPort:v20, v21, v22])
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

- (id)_clusterGeotaggables:(id)a3 forViewPort:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DFA0] orderedSet];
  v32 = v6;
  v31 = [v6 allObjects];
  v9 = [MEMORY[0x1E695DF70] arrayWithArray:?];
  [v9 sortUsingComparator:&__block_literal_global_234626];
  while ([v9 count])
  {
    v10 = [v9 firstObject];
    [v9 removeObjectAtIndex:0];
    v11 = [(PXPlacesMapGeometricClusterLayout *)self _findClusterOverlappingGeotaggable:v10 fromClusters:v8 forViewPort:v7];
    v12 = v11;
    if (v11)
    {
      [v11 addGeotaggable:v10];
    }

    else
    {
      v13 = [PXPlacesMapLayoutItemImpl alloc];
      [v10 coordinate];
      v14 = [(PXPlacesMapLayoutItemImpl *)v13 initWithCoordinate:?];
      v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [v15 addObject:v10];
      [v10 coordinate];
      v16 = MKMapPointForCoordinate(v34);
      [(PXPlacesMapGeometricClusterLayout *)self clusteringDistance];
      v18 = v16.x - v17 * 0.5;
      [(PXPlacesMapGeometricClusterLayout *)self clusteringDistance];
      v20 = v16.y - v19 * 0.5;
      [(PXPlacesMapGeometricClusterLayout *)self clusteringDistance];
      v22 = v21;
      [(PXPlacesMapGeometricClusterLayout *)self clusteringDistance];
      v24 = v23;
      v25 = [(PXPlacesMapLayout *)self dataSource];
      v26 = [v25 findItemsInMapRect:{v18, v20, v22, v24}];

      if (v26 && [v26 count])
      {
        v27 = [v26 allObjects];
        [v9 removeObjectsInArray:v27];

        [v15 unionSet:v26];
      }

      v28 = [MEMORY[0x1E695DFB8] orderedSetWithSet:v15];
      [(PXPlacesMapLayoutItemImpl *)v14 addGeotaggables:v28];

      [v8 addObject:v14];
    }
  }

  v29 = [v8 copy];

  return v29;
}

- (id)layoutForViewPort:(id)a3 andDataSourceChange:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PXPlacesMapGeometricClusterLayout.m" lineNumber:33 description:@"-[PXPlacesMapClusterLayout layout] viewPort cannot be nil"];
  }

  v9 = [(PXPlacesMapLayout *)self dataSource];

  if (!v9)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PXPlacesMapGeometricClusterLayout.m" lineNumber:34 description:@"-[PXPlacesMapClusterLayout layout] dataSource cannot be nil"];
  }

  [v7 mapRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(PXPlacesMapLayout *)self dataSource];
  v19 = [v18 findItemsInMapRect:{v11, v13, v15, v17}];

  v20 = [(PXPlacesMapGeometricClusterLayout *)self _clusterGeotaggables:v19 forViewPort:v7];
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