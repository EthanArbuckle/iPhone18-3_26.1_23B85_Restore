@interface PXPlacesMapThumbnailClusterLayout
- (NSArray)geotaggablesSortDescriptors;
- (id)_clusterGeotaggables:(id)geotaggables fromMapRect:(id)rect viewPort:(id)port;
- (id)_clusterGeotaggables:(id)geotaggables usingHorizontalClusteringDistance:(double)distance verticalClusteringDistance:(double)clusteringDistance viewPort:(id)port dataSource:(id)source primaryLayoutGeotaggables:(id)layoutGeotaggables maskToMapRect:(id)rect;
- (id)_clusterGeotaggablesInRect:(id)rect forViewPort:(id)port;
- (id)_clusterGeotaggablesInViewPort:(id)port;
- (id)_mutableSortedOrderdGeotaggablesSetFromSet:(id)set;
- (id)_primaryGeotaggleInLayoutItem:(id)item;
- (id)layoutForViewPort:(id)port andDataSourceChange:(id)change;
- (unint64_t)_viewPortChangeTypeFrom:(id)from to:(id)to;
@end

@implementation PXPlacesMapThumbnailClusterLayout

- (unint64_t)_viewPortChangeTypeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  [toCopy pitch];
  v9 = v8;
  [fromCopy pitch];
  if (v9 <= v10)
  {
    [toCopy pitch];
    v13 = v12;
    [fromCopy pitch];
    if (v13 >= v14)
    {
      [fromCopy zoomLevel];
      v16 = v15;
      [toCopy zoomLevel];
      if ([(PXPlacesMapThumbnailClusterLayout *)self _zoom:v16 isEqualToZoom:v17])
      {
        v11 = 0;
      }

      else
      {
        [fromCopy scale];
        v19 = v18;
        [toCopy scale];
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

- (id)_primaryGeotaggleInLayoutItem:(id)item
{
  geotaggables = [item geotaggables];
  v4 = geotaggables;
  if (geotaggables && [geotaggables count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_mutableSortedOrderdGeotaggablesSetFromSet:(id)set
{
  v4 = MEMORY[0x1E695DFA0];
  setCopy = set;
  v6 = [[v4 alloc] initWithSet:setCopy];

  [(PXPlacesMapThumbnailClusterLayout *)self _sortGeotaggables:v6];

  return v6;
}

- (id)_clusterGeotaggables:(id)geotaggables usingHorizontalClusteringDistance:(double)distance verticalClusteringDistance:(double)clusteringDistance viewPort:(id)port dataSource:(id)source primaryLayoutGeotaggables:(id)layoutGeotaggables maskToMapRect:(id)rect
{
  var0 = rect.var1.var0;
  rect = rect.var1.var1;
  var1 = rect.var0.var1;
  v9 = rect.var0.var0;
  v93 = *MEMORY[0x1E69E9840];
  geotaggablesCopy = geotaggables;
  portCopy = port;
  sourceCopy = source;
  layoutGeotaggablesCopy = layoutGeotaggables;
  v19 = MEMORY[0x1E695DFD8];
  v20 = [geotaggablesCopy set];
  v21 = [v19 setWithSet:v20];

  v22 = objc_alloc_init(MEMORY[0x1E696AD18]);
  v80 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v66 = portCopy;
  [portCopy scale];
  v24 = v23 * distance + v23 * distance;
  v25 = v23 * clusteringDistance + v23 * clusteringDistance;
  v26 = 0x1E695D000uLL;
  v27 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v73 = v25;
  v74 = v24;
  v71 = v25 * 0.5;
  v72 = v24 * 0.5;
  v68 = sourceCopy;
  v69 = geotaggablesCopy;
  v67 = v27;
  while ([layoutGeotaggablesCopy count] || objc_msgSend(geotaggablesCopy, "count"))
  {
    if ([layoutGeotaggablesCopy count])
    {
      v28 = layoutGeotaggablesCopy;
    }

    else
    {
      v28 = geotaggablesCopy;
    }

    firstObject = [v28 firstObject];
    v30 = v28;
    v31 = firstObject;
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
        longitude = [[PXPlacesMapLayoutItemImpl alloc] initWithCoordinate:latitude, longitude];
        v76 = v37;
        [(PXPlacesMapLayoutItemImpl *)longitude addGeotaggables:v37];
        [v22 setObject:longitude forKey:v31];
        v81 = longitude;
        [v27 addObject:longitude];
        v101.origin.x = v35.x - v72;
        v101.origin.y = v35.y - v71;
        v101.size.height = v73;
        v101.size.width = v74;
        v103.origin.x = v9;
        v103.origin.y = var1;
        v103.size.width = var0;
        v103.size.height = rect;
        v102 = MKMapRectIntersection(v101, v103);
        v39 = [sourceCopy findItemsInMapRect:{v102.origin.x, v102.origin.y, v102.size.width, v102.size.height}];
        v40 = v39;
        if (v39)
        {
          v75 = v39;
          v41 = [v39 count];
          v40 = v75;
          if (v41)
          {
            v70 = v31;
            geotaggablesSortDescriptors = [(PXPlacesMapThumbnailClusterLayout *)self geotaggablesSortDescriptors];
            v43 = [v75 sortedArrayUsingDescriptors:geotaggablesSortDescriptors];

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
                  if ([v21 containsObject:v49] && (-[PXPlacesMapThumbnailClusterLayout currentChangeType](self, "currentChangeType") == 2 || (objc_msgSend(layoutGeotaggablesCopy, "containsObject:", v49) & 1) == 0))
                  {
                    v50 = [v22 objectForKey:v49];
                    if (v50)
                    {
                      v51 = layoutGeotaggablesCopy;
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

                      layoutGeotaggablesCopy = v51;
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

            sourceCopy = v68;
            geotaggablesCopy = v69;
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

- (id)_clusterGeotaggables:(id)geotaggables fromMapRect:(id)rect viewPort:(id)port
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v7 = rect.var0.var1;
  v8 = rect.var0.var0;
  v34 = *MEMORY[0x1E69E9840];
  portCopy = port;
  v12 = [(PXPlacesMapThumbnailClusterLayout *)self _mutableSortedOrderdGeotaggablesSetFromSet:geotaggables];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  currentMapLayoutResult = [(PXPlacesMapThumbnailClusterLayout *)self currentMapLayoutResult];
  layoutItems = [currentMapLayoutResult layoutItems];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = layoutItems;
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
          [orderedSet addObject:v21];
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
  dataSource = [(PXPlacesMapLayout *)self dataSource];
  var1 = [(PXPlacesMapThumbnailClusterLayout *)self _clusterGeotaggables:v12 usingHorizontalClusteringDistance:portCopy verticalClusteringDistance:dataSource viewPort:orderedSet dataSource:v23 primaryLayoutGeotaggables:v25 maskToMapRect:v8, v7, var0, var1];

  return var1;
}

- (id)_clusterGeotaggablesInRect:(id)rect forViewPort:(id)port
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v6 = rect.var0.var1;
  v7 = rect.var0.var0;
  portCopy = port;
  dataSource = [(PXPlacesMapLayout *)self dataSource];
  v11 = [dataSource findItemsInMapRect:{v7, v6, var0, var1}];

  var1 = [(PXPlacesMapThumbnailClusterLayout *)self _clusterGeotaggables:v11 fromMapRect:portCopy viewPort:v7, v6, var0, var1];

  return var1;
}

- (id)_clusterGeotaggablesInViewPort:(id)port
{
  portCopy = port;
  [portCopy mapRect];
  v5 = [(PXPlacesMapThumbnailClusterLayout *)self _clusterGeotaggablesInRect:portCopy forViewPort:?];

  return v5;
}

- (id)layoutForViewPort:(id)port andDataSourceChange:(id)change
{
  v59 = *MEMORY[0x1E69E9840];
  portCopy = port;
  changeCopy = change;
  if (!portCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapThumbnailClusterLayout.m" lineNumber:53 description:@"-[PXPlacesMapThumbnailClusterLayout layout] viewPort cannot be nil"];
  }

  dataSource = [(PXPlacesMapLayout *)self dataSource];

  if (!dataSource)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPlacesMapThumbnailClusterLayout.m" lineNumber:54 description:@"-[PXPlacesMapClusterLayout layout] dataSource cannot be nil"];
  }

  [(PXPlacesMapThumbnailClusterLayout *)self horizontalClusteringDistancePixels];
  if (v10 <= 0.0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXPlacesMapThumbnailClusterLayout.m" lineNumber:55 description:@"-[PXPlacesMapClusterLayout layout] horizontalClusteringDistancePixels cannot be <= 0"];
  }

  [(PXPlacesMapThumbnailClusterLayout *)self verticalClusteringDistancePixels];
  if (v11 <= 0.0)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXPlacesMapThumbnailClusterLayout.m" lineNumber:56 description:@"-[PXPlacesMapClusterLayout layout] verticalClusteringDistancePixels cannot be <= 0"];
  }

  if ([changeCopy hasChanges])
  {
    [(PXPlacesMapThumbnailClusterLayout *)self setCurrentMapLayoutResult:0];
  }

  currentMapLayoutResult = [(PXPlacesMapThumbnailClusterLayout *)self currentMapLayoutResult];
  if (currentMapLayoutResult)
  {
    v13 = currentMapLayoutResult;
    currentMapLayoutResult2 = [(PXPlacesMapThumbnailClusterLayout *)self currentMapLayoutResult];
    viewPort = [currentMapLayoutResult2 viewPort];
    if ([viewPort isEqual:portCopy])
    {
      hasChanges = [changeCopy hasChanges];

      if ((hasChanges & 1) == 0)
      {
        currentMapLayoutResult3 = [(PXPlacesMapThumbnailClusterLayout *)self currentMapLayoutResult];
        goto LABEL_46;
      }
    }

    else
    {
    }
  }

  currentMapLayoutResult4 = [(PXPlacesMapThumbnailClusterLayout *)self currentMapLayoutResult];
  viewPort2 = [currentMapLayoutResult4 viewPort];
  v20 = [(PXPlacesMapThumbnailClusterLayout *)self _viewPortChangeTypeFrom:viewPort2 to:portCopy];

  [(PXPlacesMapThumbnailClusterLayout *)self setCurrentChangeType:v20];
  currentMapLayoutResult5 = [(PXPlacesMapThumbnailClusterLayout *)self currentMapLayoutResult];
  if (currentMapLayoutResult5)
  {
    v22 = currentMapLayoutResult5;
    currentMapLayoutResult6 = [(PXPlacesMapThumbnailClusterLayout *)self currentMapLayoutResult];
    layoutItems = [currentMapLayoutResult6 layoutItems];
    v25 = [layoutItems count];

    if (v25)
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      viewPortsBySplitingAt180thMerdian = [portCopy viewPortsBySplitingAt180thMerdian];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v28 = [viewPortsBySplitingAt180thMerdian countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (!v28)
      {
        goto LABEL_45;
      }

      v29 = v28;
      v48 = portCopy;
      v30 = *v50;
      while (1)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v50 != v30)
          {
            objc_enumerationMutation(viewPortsBySplitingAt180thMerdian);
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
                  v34 = [(PXPlacesMapThumbnailClusterLayout *)self _handlePitchChangeToViewPort:v32 dataSourceChange:changeCopy];
                  goto LABEL_35;
                }

LABEL_32:
                v34 = [(PXPlacesMapThumbnailClusterLayout *)self _handlePanToViewPort:v32 dataSourceChange:changeCopy];
                goto LABEL_35;
            }
          }

          v34 = objc_alloc_init(MEMORY[0x1E695DFB8]);
LABEL_35:
          v35 = v34;
          [v26 unionOrderedSet:v34];
        }

        v29 = [viewPortsBySplitingAt180thMerdian countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (!v29)
        {
          portCopy = v48;
          goto LABEL_45;
        }
      }
    }
  }

  v26 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  viewPortsBySplitingAt180thMerdian = [portCopy viewPortsBySplitingAt180thMerdian];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v36 = [viewPortsBySplitingAt180thMerdian countByEnumeratingWithState:&v53 objects:v58 count:16];
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
          objc_enumerationMutation(viewPortsBySplitingAt180thMerdian);
        }

        v40 = *(*(&v53 + 1) + 8 * j);
        [v40 mapRect];
        v41 = [(PXPlacesMapThumbnailClusterLayout *)self _clusterGeotaggablesInRect:v40 forViewPort:?];
        [v26 unionOrderedSet:v41];
      }

      v37 = [viewPortsBySplitingAt180thMerdian countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v37);
  }

LABEL_45:
  v42 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithOrderedSet:v26];

  currentMapLayoutResult3 = objc_alloc_init(PXPlacesMapLayoutResultImpl);
  [(PXPlacesMapLayoutResultImpl *)currentMapLayoutResult3 addItems:v42];
  [(PXPlacesMapLayoutResultImpl *)currentMapLayoutResult3 setViewPort:portCopy];
  [(PXPlacesMapThumbnailClusterLayout *)self setCurrentMapLayoutResult:currentMapLayoutResult3];

LABEL_46:

  return currentMapLayoutResult3;
}

@end