@interface PXPlacesMapThumbnailClusterLayout
- (NSArray)geotaggablesSortDescriptors;
- (id)_clusterGeotaggables:(id)a3 fromMapRect:(id)a4 viewPort:(id)a5;
- (id)_clusterGeotaggables:(id)a3 usingHorizontalClusteringDistance:(double)a4 verticalClusteringDistance:(double)a5 viewPort:(id)a6 dataSource:(id)a7 primaryLayoutGeotaggables:(id)a8 maskToMapRect:(id)a9;
- (id)_clusterGeotaggablesInRect:(id)a3 forViewPort:(id)a4;
- (id)_clusterGeotaggablesInViewPort:(id)a3;
- (id)_mutableSortedOrderdGeotaggablesSetFromSet:(id)a3;
- (id)_primaryGeotaggleInLayoutItem:(id)a3;
- (id)layoutForViewPort:(id)a3 andDataSourceChange:(id)a4;
- (unint64_t)_viewPortChangeTypeFrom:(id)a3 to:(id)a4;
@end

@implementation PXPlacesMapThumbnailClusterLayout

- (unint64_t)_viewPortChangeTypeFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 pitch];
  v9 = v8;
  [v6 pitch];
  if (v9 <= v10)
  {
    [v7 pitch];
    v13 = v12;
    [v6 pitch];
    if (v13 >= v14)
    {
      [v6 zoomLevel];
      v16 = v15;
      [v7 zoomLevel];
      if ([(PXPlacesMapThumbnailClusterLayout *)self _zoom:v16 isEqualToZoom:v17])
      {
        v11 = 0;
      }

      else
      {
        [v6 scale];
        v19 = v18;
        [v7 scale];
        if (v19 > v20)
        {
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }
      }
    }

    else
    {
      v11 = 4;
    }
  }

  else
  {
    v11 = 3;
  }

  return v11;
}

- (NSArray)geotaggablesSortDescriptors
{
  v8[1] = *MEMORY[0x1E69E9840];
  geotaggablesSortDescriptors = self->_geotaggablesSortDescriptors;
  if (!geotaggablesSortDescriptors)
  {
    v4 = objc_alloc_init(PXPlacesGeotaggableSortDescriptor);
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v6 = self->_geotaggablesSortDescriptors;
    self->_geotaggablesSortDescriptors = v5;

    geotaggablesSortDescriptors = self->_geotaggablesSortDescriptors;
  }

  return geotaggablesSortDescriptors;
}

- (id)_primaryGeotaggleInLayoutItem:(id)a3
{
  v3 = [a3 geotaggables];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_mutableSortedOrderdGeotaggablesSetFromSet:(id)a3
{
  v4 = MEMORY[0x1E695DFA0];
  v5 = a3;
  v6 = [[v4 alloc] initWithSet:v5];

  [(PXPlacesMapThumbnailClusterLayout *)self _sortGeotaggables:v6];

  return v6;
}

- (id)_clusterGeotaggables:(id)a3 usingHorizontalClusteringDistance:(double)a4 verticalClusteringDistance:(double)a5 viewPort:(id)a6 dataSource:(id)a7 primaryLayoutGeotaggables:(id)a8 maskToMapRect:(id)a9
{
  var0 = a9.var1.var0;
  rect = a9.var1.var1;
  var1 = a9.var0.var1;
  v9 = a9.var0.var0;
  v93 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = MEMORY[0x1E695DFD8];
  v20 = [v15 set];
  v21 = [v19 setWithSet:v20];

  v22 = objc_alloc_init(MEMORY[0x1E696AD18]);
  v80 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v66 = v16;
  [v16 scale];
  v24 = v23 * a4 + v23 * a4;
  v25 = v23 * a5 + v23 * a5;
  v26 = 0x1E695D000uLL;
  v27 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v73 = v25;
  v74 = v24;
  v71 = v25 * 0.5;
  v72 = v24 * 0.5;
  v68 = v17;
  v69 = v15;
  v67 = v27;
  while ([v18 count] || objc_msgSend(v15, "count"))
  {
    if ([v18 count])
    {
      v28 = v18;
    }

    else
    {
      v28 = v15;
    }

    v29 = [v28 firstObject];
    v30 = v28;
    v31 = v29;
    [v30 removeObjectAtIndex:0];
    v32 = [v22 objectForKey:v31];
    if (!v32)
    {
      [v31 coordinate];
      latitude = v95.latitude;
      longitude = v95.longitude;
      v35 = MKMapPointForCoordinate(v95);
      v100.origin.x = v9;
      v100.origin.y = var1;
      v100.size.width = var0;
      v100.size.height = rect;
      v36 = MKMapRectContainsPoint(v100, v35);
      v32 = 0;
      if (v36)
      {
        v37 = objc_alloc_init(*(v26 + 4000));
        [v37 addObject:v31];
        v38 = [[PXPlacesMapLayoutItemImpl alloc] initWithCoordinate:latitude, longitude];
        v76 = v37;
        [(PXPlacesMapLayoutItemImpl *)v38 addGeotaggables:v37];
        [v22 setObject:v38 forKey:v31];
        v81 = v38;
        [v27 addObject:v38];
        v101.origin.x = v35.x - v72;
        v101.origin.y = v35.y - v71;
        v101.size.height = v73;
        v101.size.width = v74;
        v103.origin.x = v9;
        v103.origin.y = var1;
        v103.size.width = var0;
        v103.size.height = rect;
        v102 = MKMapRectIntersection(v101, v103);
        v39 = [v17 findItemsInMapRect:{v102.origin.x, v102.origin.y, v102.size.width, v102.size.height}];
        v40 = v39;
        if (v39)
        {
          v75 = v39;
          v41 = [v39 count];
          v40 = v75;
          if (v41)
          {
            v70 = v31;
            v42 = [(PXPlacesMapThumbnailClusterLayout *)self geotaggablesSortDescriptors];
            v43 = [v75 sortedArrayUsingDescriptors:v42];

            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v44 = v43;
            v45 = [v44 countByEnumeratingWithState:&v87 objects:v92 count:16];
            if (v45)
            {
              v46 = v45;
              v47 = *v88;
              do
              {
                for (i = 0; i != v46; ++i)
                {
                  if (*v88 != v47)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v49 = *(*(&v87 + 1) + 8 * i);
                  if ([v21 containsObject:v49] && (-[PXPlacesMapThumbnailClusterLayout currentChangeType](self, "currentChangeType") == 2 || (objc_msgSend(v18, "containsObject:", v49) & 1) == 0))
                  {
                    v50 = [v22 objectForKey:v49];
                    if (v50)
                    {
                      v51 = v18;
                      v52 = [(PXPlacesMapThumbnailClusterLayout *)self _primaryGeotaggleInLayoutItem:v50];
                      if (([v52 isEqual:v49] & 1) == 0)
                      {
                        [v50 coordinate];
                        v53 = MKMapPointForCoordinate(v96);
                        [v49 coordinate];
                        v98 = MKMapPointForCoordinate(v97);
                        x = v98.x;
                        y = v98.y;
                        v56 = MKMetersBetweenMapPoints(v98, v35);
                        v99.x = x;
                        v99.y = y;
                        if (v56 < MKMetersBetweenMapPoints(v99, v53))
                        {
                          [v22 setObject:v81 forKey:v49];
                        }
                      }

                      v18 = v51;
                    }

                    else
                    {
                      [v80 addObject:v49];
                      [v22 setObject:v81 forKey:v49];
                    }
                  }
                }

                v46 = [v44 countByEnumeratingWithState:&v87 objects:v92 count:16];
              }

              while (v46);
            }

            v17 = v68;
            v15 = v69;
            v27 = v67;
            v26 = 0x1E695D000;
            v31 = v70;
            v40 = v75;
          }
        }

        v32 = 0;
      }
    }
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v57 = v80;
  v58 = [v57 countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v84;
    do
    {
      for (j = 0; j != v59; ++j)
      {
        if (*v84 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v83 + 1) + 8 * j);
        v63 = [v22 objectForKey:v62];
        v64 = v63;
        if (v63)
        {
          [v63 addGeotaggable:v62];
        }
      }

      v59 = [v57 countByEnumeratingWithState:&v83 objects:v91 count:16];
    }

    while (v59);
  }

  return v67;
}

- (id)_clusterGeotaggables:(id)a3 fromMapRect:(id)a4 viewPort:(id)a5
{
  var1 = a4.var1.var1;
  var0 = a4.var1.var0;
  v7 = a4.var0.var1;
  v8 = a4.var0.var0;
  v34 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = [(PXPlacesMapThumbnailClusterLayout *)self _mutableSortedOrderdGeotaggablesSetFromSet:a3];
  v13 = [MEMORY[0x1E695DFA0] orderedSet];
  v14 = [(PXPlacesMapThumbnailClusterLayout *)self currentMapLayoutResult];
  v15 = [v14 layoutItems];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [(PXPlacesMapThumbnailClusterLayout *)self _primaryGeotaggleInLayoutItem:*(*(&v29 + 1) + 8 * i), v29];
        [v21 coordinate];
        v37 = MKMapPointForCoordinate(v36);
        v38.origin.x = v8;
        v38.origin.y = v7;
        v38.size.width = var0;
        v38.size.height = var1;
        if (MKMapRectContainsPoint(v38, v37))
        {
          [v13 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v18);
  }

  [(PXPlacesMapThumbnailClusterLayout *)self horizontalClusteringDistancePixels];
  v23 = v22;
  [(PXPlacesMapThumbnailClusterLayout *)self verticalClusteringDistancePixels];
  v25 = v24;
  v26 = [(PXPlacesMapLayout *)self dataSource];
  v27 = [(PXPlacesMapThumbnailClusterLayout *)self _clusterGeotaggables:v12 usingHorizontalClusteringDistance:v11 verticalClusteringDistance:v26 viewPort:v13 dataSource:v23 primaryLayoutGeotaggables:v25 maskToMapRect:v8, v7, var0, var1];

  return v27;
}

- (id)_clusterGeotaggablesInRect:(id)a3 forViewPort:(id)a4
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v6 = a3.var0.var1;
  v7 = a3.var0.var0;
  v9 = a4;
  v10 = [(PXPlacesMapLayout *)self dataSource];
  v11 = [v10 findItemsInMapRect:{v7, v6, var0, var1}];

  v12 = [(PXPlacesMapThumbnailClusterLayout *)self _clusterGeotaggables:v11 fromMapRect:v9 viewPort:v7, v6, var0, var1];

  return v12;
}

- (id)_clusterGeotaggablesInViewPort:(id)a3
{
  v4 = a3;
  [v4 mapRect];
  v5 = [(PXPlacesMapThumbnailClusterLayout *)self _clusterGeotaggablesInRect:v4 forViewPort:?];

  return v5;
}

- (id)layoutForViewPort:(id)a3 andDataSourceChange:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    [v44 handleFailureInMethod:a2 object:self file:@"PXPlacesMapThumbnailClusterLayout.m" lineNumber:53 description:@"-[PXPlacesMapThumbnailClusterLayout layout] viewPort cannot be nil"];
  }

  v9 = [(PXPlacesMapLayout *)self dataSource];

  if (!v9)
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    [v45 handleFailureInMethod:a2 object:self file:@"PXPlacesMapThumbnailClusterLayout.m" lineNumber:54 description:@"-[PXPlacesMapClusterLayout layout] dataSource cannot be nil"];
  }

  [(PXPlacesMapThumbnailClusterLayout *)self horizontalClusteringDistancePixels];
  if (v10 <= 0.0)
  {
    v46 = [MEMORY[0x1E696AAA8] currentHandler];
    [v46 handleFailureInMethod:a2 object:self file:@"PXPlacesMapThumbnailClusterLayout.m" lineNumber:55 description:@"-[PXPlacesMapClusterLayout layout] horizontalClusteringDistancePixels cannot be <= 0"];
  }

  [(PXPlacesMapThumbnailClusterLayout *)self verticalClusteringDistancePixels];
  if (v11 <= 0.0)
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"PXPlacesMapThumbnailClusterLayout.m" lineNumber:56 description:@"-[PXPlacesMapClusterLayout layout] verticalClusteringDistancePixels cannot be <= 0"];
  }

  if ([v8 hasChanges])
  {
    [(PXPlacesMapThumbnailClusterLayout *)self setCurrentMapLayoutResult:0];
  }

  v12 = [(PXPlacesMapThumbnailClusterLayout *)self currentMapLayoutResult];
  if (v12)
  {
    v13 = v12;
    v14 = [(PXPlacesMapThumbnailClusterLayout *)self currentMapLayoutResult];
    v15 = [v14 viewPort];
    if ([v15 isEqual:v7])
    {
      v16 = [v8 hasChanges];

      if ((v16 & 1) == 0)
      {
        v17 = [(PXPlacesMapThumbnailClusterLayout *)self currentMapLayoutResult];
        goto LABEL_46;
      }
    }

    else
    {
    }
  }

  v18 = [(PXPlacesMapThumbnailClusterLayout *)self currentMapLayoutResult];
  v19 = [v18 viewPort];
  v20 = [(PXPlacesMapThumbnailClusterLayout *)self _viewPortChangeTypeFrom:v19 to:v7];

  [(PXPlacesMapThumbnailClusterLayout *)self setCurrentChangeType:v20];
  v21 = [(PXPlacesMapThumbnailClusterLayout *)self currentMapLayoutResult];
  if (v21)
  {
    v22 = v21;
    v23 = [(PXPlacesMapThumbnailClusterLayout *)self currentMapLayoutResult];
    v24 = [v23 layoutItems];
    v25 = [v24 count];

    if (v25)
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      v27 = [v7 viewPortsBySplitingAt180thMerdian];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v28 = [v27 countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (!v28)
      {
        goto LABEL_45;
      }

      v29 = v28;
      v48 = v7;
      v30 = *v50;
      while (1)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v50 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v49 + 1) + 8 * i);
          if (v20 <= 1)
          {
            if (!v20)
            {
              goto LABEL_32;
            }

            if (v20 == 1)
            {
              v34 = [(PXPlacesMapThumbnailClusterLayout *)self _handleZoomInToViewPort:*(*(&v49 + 1) + 8 * i)];
              goto LABEL_35;
            }
          }

          else
          {
            switch(v20)
            {
              case 2:
                v34 = [(PXPlacesMapThumbnailClusterLayout *)self _handleZoomOutToViewPort:*(*(&v49 + 1) + 8 * i)];
                goto LABEL_35;
              case 3:
                goto LABEL_28;
              case 4:
                [*(*(&v49 + 1) + 8 * i) pitch];
                if (v33 != 0.0)
                {
LABEL_28:
                  v34 = [(PXPlacesMapThumbnailClusterLayout *)self _handlePitchChangeToViewPort:v32 dataSourceChange:v8];
                  goto LABEL_35;
                }

LABEL_32:
                v34 = [(PXPlacesMapThumbnailClusterLayout *)self _handlePanToViewPort:v32 dataSourceChange:v8];
                goto LABEL_35;
            }
          }

          v34 = objc_alloc_init(MEMORY[0x1E695DFB8]);
LABEL_35:
          v35 = v34;
          [v26 unionOrderedSet:v34];
        }

        v29 = [v27 countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (!v29)
        {
          v7 = v48;
          goto LABEL_45;
        }
      }
    }
  }

  v26 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v27 = [v7 viewPortsBySplitingAt180thMerdian];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v36 = [v27 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v54;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v54 != v38)
        {
          objc_enumerationMutation(v27);
        }

        v40 = *(*(&v53 + 1) + 8 * j);
        [v40 mapRect];
        v41 = [(PXPlacesMapThumbnailClusterLayout *)self _clusterGeotaggablesInRect:v40 forViewPort:?];
        [v26 unionOrderedSet:v41];
      }

      v37 = [v27 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v37);
  }

LABEL_45:
  v42 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithOrderedSet:v26];

  v17 = objc_alloc_init(PXPlacesMapLayoutResultImpl);
  [(PXPlacesMapLayoutResultImpl *)v17 addItems:v42];
  [(PXPlacesMapLayoutResultImpl *)v17 setViewPort:v7];
  [(PXPlacesMapThumbnailClusterLayout *)self setCurrentMapLayoutResult:v17];

LABEL_46:

  return v17;
}

@end