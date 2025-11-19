@interface PXPlacesMapController
+ ($3BFE36E7F21C9C4470F2C816F6078BCC)mapRectWithMapViewSize:(CGSize)a3 centeredOnCoordinate:(CLLocationCoordinate2D)a4 visibleDistance:(double)a5;
+ (void)launchMapsAtCoordinate:(CLLocationCoordinate2D)a3 withTitle:(id)a4 completionHandler:(id)a5;
- ($3BFE36E7F21C9C4470F2C816F6078BCC)_ensureMinimumSize:(id)a3;
- ($3BFE36E7F21C9C4470F2C816F6078BCC)_mapRectForGeotaggablesFromPipeline:(id)a3 fitAdjusted:(BOOL *)a4;
- ($3BFE36E7F21C9C4470F2C816F6078BCC)mapRectForGeotaggablesFromDataSource:(id)a3 renderer:(id)a4 mapViewSize:(CGSize)a5 fitAdjusted:(BOOL *)a6;
- ($3BFE36E7F21C9C4470F2C816F6078BCC)mapRectForNearbyQueriesFromRect:(id)a3 atScale:(double)a4 targetViewSize:(CGSize)a5;
- ($3BFE36E7F21C9C4470F2C816F6078BCC)signalFocusMapRect;
- (CLLocationCoordinate2D)initialCenterCoordinate;
- (NSOrderedSet)currentSelectedGeotaggables;
- (PXPlacesMapController)init;
- (PXPlacesMapControllerChangeDelegate)changeDelegate;
- (PXPlacesMapControllerFocusDelegate)focusDelegate;
- (PXPlacesMapControllerLoadingStateDelegate)stateDelegate;
- (PXPlacesMapControllerSelectionDelegate)selectionDelegate;
- (PXPlacesMapView)mapView;
- (UIEdgeInsets)initialEdgePadding;
- (id)createTrackingBarButtonItem;
- (id)executePipeline:(id)a3 dataSourceChange:(id)a4 context:(id)a5;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (id)visibleGeotaggableFromDataSource:(id)a3;
- (void)_executeUpdatePlanResults:(id)a3;
- (void)_setVisibleMapRect:(id)a3 edgePadding:(UIEdgeInsets)a4 animated:(BOOL)a5;
- (void)_showDebugMapRect:(id)a3 color:(id)a4;
- (void)_updateMapWithAllDataSources:(id)a3;
- (void)_updateMapWithDataSource:(id)a3 dataSourceChange:(id)a4 completion:(id)a5;
- (void)_updateMapWithDataSources:(id)a3 dataSourceChangeTable:(id)a4 completion:(id)a5;
- (void)addPipeline:(id)a3;
- (void)dataSource:(id)a3 didChange:(id)a4;
- (void)dealloc;
- (void)focusOnGeotaggablesFromPipeline:(id)a3 animated:(BOOL)a4;
- (void)focusOnGeotaggablesFromPipelineImmediately:(id)a3;
- (void)loadView;
- (void)mapContainerViewDidAppear;
- (void)mapContainerViewWillAppear;
- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4;
- (void)removeDataSource:(id)a3;
- (void)removePipeline:(id)a3;
- (void)setInitialCoordinateRegion:(id *)a3;
- (void)setVisibleMapRect:(id)a3 forPipeline:(id)a4 animated:(BOOL)a5;
- (void)setVisibleMapRect:(id)a3 forRenderer:(id)a4 animated:(BOOL)a5;
@end

@implementation PXPlacesMapController

- ($3BFE36E7F21C9C4470F2C816F6078BCC)signalFocusMapRect
{
  x = self->_signalFocusMapRect.origin.x;
  y = self->_signalFocusMapRect.origin.y;
  width = self->_signalFocusMapRect.size.width;
  height = self->_signalFocusMapRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (UIEdgeInsets)initialEdgePadding
{
  top = self->_initialEdgePadding.top;
  left = self->_initialEdgePadding.left;
  bottom = self->_initialEdgePadding.bottom;
  right = self->_initialEdgePadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setInitialCoordinateRegion:(id *)a3
{
  self->_initialCoordinateRegion.center.latitude = v3;
  self->_initialCoordinateRegion.center.longitude = v4;
  self->_initialCoordinateRegion.span.latitudeDelta = v5;
  self->_initialCoordinateRegion.span.longitudeDelta = v6;
}

- (CLLocationCoordinate2D)initialCenterCoordinate
{
  latitude = self->_initialCenterCoordinate.latitude;
  longitude = self->_initialCenterCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (PXPlacesMapControllerLoadingStateDelegate)stateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stateDelegate);

  return WeakRetained;
}

- (PXPlacesMapControllerFocusDelegate)focusDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_focusDelegate);

  return WeakRetained;
}

- (PXPlacesMapControllerChangeDelegate)changeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);

  return WeakRetained;
}

- (PXPlacesMapControllerSelectionDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

- (void)mapContainerViewDidAppear
{
  [(PXPlacesMapController *)self setMapViewIsVisible:1];
  if ([(PXPlacesMapController *)self signalFocusWhenMapViewBecomesVisible])
  {
    [(PXPlacesMapController *)self setSignalFocusWhenMapViewBecomesVisible:0];
    v3 = [(PXPlacesMapController *)self focusDelegate];

    if (v3)
    {
      v4 = [(PXPlacesMapController *)self mapView];
      v5 = [v4 currentViewPortWithThumbnailOverscan];
      [v5 scale];

      v6 = [(PXPlacesMapController *)self focusDelegate];
      [(PXPlacesMapController *)self signalFocusMapRect];
      [v6 mapFocusDidChange:self toRect:? scale:?];
    }
  }
}

- (void)mapContainerViewWillAppear
{
  v2 = [(PXPlacesMapController *)self mapView];
  [v2 deselectAllAnnotationsAnimated:0];
}

- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4
{
  v5 = [(PXPlacesMapController *)self stateDelegate:a3];
  [v5 mapViewDidFinishRendering:self];
}

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v12 = a3;
  v6 = [a4 annotation];
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(PXPlacesMapController *)self selectionDelegate];

    if (v8)
    {
      v6 = [v7 selectionHandler];
      v9 = [v6 selectedGeotaggablesForRenderable:v7 mapView:v12];
      [(PXPlacesMapController *)self setCurrentSelection:v7];
      if (v9)
      {
        v10 = [(PXPlacesMapController *)self selectionDelegate];
        v11 = [(PXPlacesMapController *)self mapView];
        [v10 didSelectGeotaggableItems:v9 fromMapView:v11];
      }

      goto LABEL_9;
    }
  }

LABEL_10:
}

- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4
{
  v41 = self;
  v65 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v43 = [MEMORY[0x1E695DFA8] set];
  v42 = [MEMORY[0x1E695DFA8] set];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v60;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v60 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v59 + 1) + 8 * i);
        v10 = [v9 annotation];
        if ([v10 conformsToProtocol:&unk_1F1B45AE0])
        {
          [v43 addObject:v10];
        }

        v11 = v10;
        if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v12 = v11;

          if (!v12)
          {
            goto LABEL_14;
          }

          -[PXPlacesMapController _zPositionForAnnotationIndex:](v41, "_zPositionForAnnotationIndex:", [v12 index]);
          v14 = v13;
          v15 = [v9 layer];
          [v15 setZPosition:v14];
        }

        else
        {
          v12 = 0;
          v15 = v11;
        }

LABEL_14:
        if ([v9 conformsToProtocol:&unk_1F1AAC5F0])
        {
          v16 = [v9 layer];
          [v16 setOpacity:0.0];

          [v42 addObject:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v6);
  }

  v17 = v41;
  v18 = [(PXPlacesMapPipelineExecutionContext *)v41->_currentExecutionContext updatePlanResults];
  v19 = [MEMORY[0x1E695DFA8] set];
  v20 = [MEMORY[0x1E695DFA8] set];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v21 = v18;
  v22 = [v21 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v56;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v56 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v55 + 1) + 8 * j);
        v27 = [v26 annotationsToRemoveAfterAnimationHasStarted];
        [v19 unionSet:v27];

        v28 = [v26 annotationsToRemoveAfterAnimationHasEnded];
        [v20 unionSet:v28];
      }

      v23 = [v21 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v23);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PXPlacesMapController_mapView_didAddAnnotationViews___block_invoke;
  aBlock[3] = &unk_1E774C620;
  aBlock[4] = v17;
  v29 = v20;
  v54 = v29;
  v30 = _Block_copy(aBlock);
  if ([v43 count])
  {
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __55__PXPlacesMapController_mapView_didAddAnnotationViews___block_invoke_2;
    v51[3] = &unk_1E774C648;
    v52 = v43;
    v31 = _Block_copy(v51);
    v32 = MEMORY[0x1E69DD250];
    [(PXPlacesMapController *)v17 _defaultAnimationDuration];
    v34 = v33;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __55__PXPlacesMapController_mapView_didAddAnnotationViews___block_invoke_3;
    v49[3] = &unk_1E774C250;
    v50 = v31;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __55__PXPlacesMapController_mapView_didAddAnnotationViews___block_invoke_4;
    v47[3] = &unk_1E77464C0;
    v48 = v30;
    v35 = v31;
    [v32 animateWithDuration:v49 animations:v47 completion:v34];
  }

  else
  {
    v30[2](v30);
  }

  if ([v42 count])
  {
    v36 = MEMORY[0x1E69DD250];
    [(PXPlacesMapController *)v17 _fadeInAnimationDuration];
    v38 = v37;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __55__PXPlacesMapController_mapView_didAddAnnotationViews___block_invoke_5;
    v45[3] = &unk_1E774C648;
    v46 = v42;
    [v36 animateWithDuration:v45 animations:v38];
  }

  if ([v19 count])
  {
    v39 = [(PXPlacesMapController *)v17 mapView];
    v40 = [v19 allObjects];
    [v39 removeAnnotations:v40];
  }
}

void __55__PXPlacesMapController_mapView_didAddAnnotationViews___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) mapView];
  v2 = [*(a1 + 40) allObjects];
  [v3 removeAnnotations:v2];
}

void __55__PXPlacesMapController_mapView_didAddAnnotationViews___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        [v6 animationDestinationCoordinate];
        latitude = v15.latitude;
        longitude = v15.longitude;
        if (CLLocationCoordinate2DIsValid(v15))
        {
          [v6 setCoordinate:{latitude, longitude}];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }
}

void __55__PXPlacesMapController_mapView_didAddAnnotationViews___block_invoke_5(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v8 + 1) + 8 * v5) layer];
        LODWORD(v7) = 1.0;
        [v6 setOpacity:v7];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v5 = a4;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    v9 = 0;
    v7 = v5;
    goto LABEL_6;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 renderer];
    v8 = [(PXPlacesMapController *)self mapView];
    v9 = [v7 viewForAnnotation:v6 andMapView:v8];

LABEL_6:
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  [(PXPlacesMapController *)self _updateMapWithAllDataSources:0, a4];
  v5 = [(PXPlacesMapController *)self changeDelegate];
  [v5 mapRegionDidChange:self];
}

- (void)dataSource:(id)a3 didChange:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [v7 removedItems];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        v14 = [(PXPlacesMapController *)self cache];
        [v14 removeCachedRenderedImageForGeotaggble:v13 andKey:0];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [v7 updatedItems];
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * v19);
        v21 = [(PXPlacesMapController *)self cache];
        [v21 removeCachedRenderedImageForGeotaggble:v20 andKey:0];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  [(PXPlacesMapController *)self _updateMapWithDataSource:v6 dataSourceChange:v7 completion:0];
  v22 = [(PXPlacesMapController *)self changeDelegate];
  [v22 dataSourceDidChange:self];
}

- (NSOrderedSet)currentSelectedGeotaggables
{
  v2 = [(PXPlacesMapController *)self currentSelection];
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = 0;
    v4 = 0;
    goto LABEL_6;
  }

  v3 = v2;

  if (v3)
  {
    v2 = [v3 geotaggables];
    v4 = [v2 copy];
LABEL_6:

    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (void)_executeUpdatePlanResults:(id)a3
{
  v95 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKPlacesKitGetLog();
  v6 = os_signpost_id_generate(v5);

  v7 = PKPlacesKitGetLog();
  v8 = v7;
  spid = v6;
  v62 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ExecuteUpdatePlanResults", "", buf, 2u);
  }

  v63 = v8;

  v68 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DF70] array];
  v69 = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E695DF70] array];
  v67 = [MEMORY[0x1E695DF70] array];
  v66 = [MEMORY[0x1E695DF70] array];
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v4;
  v11 = [obj countByEnumeratingWithState:&v86 objects:v94 count:16];
  if (v11)
  {
    v12 = *v87;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v87 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v86 + 1) + 8 * i);
        v15 = [v14 annotationsToAddImmediately];
        v16 = [v15 allObjects];
        [v68 addObjectsFromArray:v16];

        v17 = [v14 annotationsToRemoveImmediately];
        v18 = [v17 allObjects];
        [v9 addObjectsFromArray:v18];

        v19 = [v14 annotationsToRedraw];
        v20 = [v19 allObjects];
        [v69 addObjectsFromArray:v20];

        v21 = [v14 annotationsWithUpdatedIndex];
        v22 = [v21 allObjects];
        [v10 addObjectsFromArray:v22];

        v23 = [v14 overlaysToAddImmediately];
        v24 = [v23 allObjects];
        [v67 addObjectsFromArray:v24];

        v25 = [v14 overlaysToRemoveImmediately];
        v26 = [v25 allObjects];
        [v66 addObjectsFromArray:v26];
      }

      v11 = [obj countByEnumeratingWithState:&v86 objects:v94 count:16];
    }

    while (v11);
  }

  v27 = [(PXPlacesMapController *)self mapView];
  [v27 addOverlays:v67];

  v28 = [(PXPlacesMapController *)self mapView];
  [v28 removeOverlays:v66];

  if ([v69 count])
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v29 = v69;
    v30 = [v29 countByEnumeratingWithState:&v82 objects:v93 count:16];
    if (v30)
    {
      v31 = *v83;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v83 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v82 + 1) + 8 * j);
          v34 = [(PXPlacesMapController *)self mapView];
          v35 = [v34 viewForAnnotation:v33];

          if (v35)
          {
            [v35 setAnnotation:v33];
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v82 objects:v93 count:16];
      }

      while (v30);
    }
  }

  v64 = [MEMORY[0x1E695DF70] array];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v36 = v9;
  v37 = [v36 countByEnumeratingWithState:&v78 objects:v92 count:16];
  if (v37)
  {
    v38 = *v79;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v79 != v38)
        {
          objc_enumerationMutation(v36);
        }

        v40 = *(*(&v78 + 1) + 8 * k);
        v41 = [(PXPlacesMapController *)self mapView];
        v42 = [v41 viewForAnnotation:v40];

        if ([v42 conformsToProtocol:&unk_1F1AAC5F0])
        {
          [v64 addObject:v42];
        }
      }

      v37 = [v36 countByEnumeratingWithState:&v78 objects:v92 count:16];
    }

    while (v37);
  }

  if ([v64 count])
  {
    v43 = MEMORY[0x1E69DD250];
    [(PXPlacesMapController *)self _fadeOutAnimationDuration];
    v45 = v44;
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __51__PXPlacesMapController__executeUpdatePlanResults___block_invoke;
    v76[3] = &unk_1E774C648;
    v77 = v64;
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __51__PXPlacesMapController__executeUpdatePlanResults___block_invoke_2;
    v74[3] = &unk_1E7749628;
    v74[4] = self;
    v75 = v36;
    [v43 animateWithDuration:v76 animations:v74 completion:v45];

    v46 = v77;
  }

  else
  {
    v46 = [(PXPlacesMapController *)self mapView];
    [v46 removeAnnotations:v36];
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v47 = v10;
  v48 = [v47 countByEnumeratingWithState:&v70 objects:v91 count:16];
  if (v48)
  {
    v49 = *v71;
    do
    {
      for (m = 0; m != v48; ++m)
      {
        if (*v71 != v49)
        {
          objc_enumerationMutation(v47);
        }

        v51 = *(*(&v70 + 1) + 8 * m);
        v52 = [(PXPlacesMapController *)self mapView];
        v53 = [v52 viewForAnnotation:v51];

        v54 = v51;
        if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
        {
          v55 = 0;
          goto LABEL_45;
        }

        v55 = v54;

        if (v53 && v55)
        {
          -[PXPlacesMapController _zPositionForAnnotationIndex:](self, "_zPositionForAnnotationIndex:", [v55 index]);
          v57 = v56;
          v54 = [v53 layer];
          [v54 setZPosition:v57];
LABEL_45:
        }
      }

      v48 = [v47 countByEnumeratingWithState:&v70 objects:v91 count:16];
    }

    while (v48);
  }

  if ([v68 count])
  {
    v58 = [(PXPlacesMapController *)self mapView];
    [v58 addAnnotations:v68];
  }

  v59 = v63;
  v60 = v59;
  if (v62 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v60, OS_SIGNPOST_INTERVAL_END, spid, "ExecuteUpdatePlanResults", "", buf, 2u);
  }
}

void __51__PXPlacesMapController__executeUpdatePlanResults___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) layer];
        [v6 setOpacity:0.0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __51__PXPlacesMapController__executeUpdatePlanResults___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mapView];
  [v2 removeAnnotations:*(a1 + 40)];
}

- (void)_updateMapWithDataSource:(id)a3 dataSourceChange:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PXPlacesMapController *)self dataSources];
  v12 = [v11 containsObject:v8];

  if (v12 && v8 && self->_pipelineExecutionAllowed)
  {
    executionContextQueue = self->_executionContextQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke;
    v14[3] = &unk_1E774BDB0;
    v14[4] = self;
    v15 = v8;
    v17 = v10;
    v16 = v9;
    dispatch_async(executionContextQueue, v14);
  }
}

void __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke(id *a1)
{
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__60469;
  v56 = __Block_byref_object_dispose__60470;
  v57 = 0;
  v2 = a1[4];
  v3 = *(v2 + 2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_2;
  block[3] = &unk_1E7746448;
  v51 = &v52;
  block[4] = v2;
  v50 = a1[5];
  dispatch_sync(v3, block);
  if (!*(a1[4] + 16) && [v53[5] count])
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__60469;
    v47 = __Block_byref_object_dispose__60470;
    v48 = 0;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_3;
    v42[3] = &unk_1E7749A28;
    v42[4] = a1[4];
    v42[5] = &v43;
    dispatch_sync(MEMORY[0x1E69E96A0], v42);
    v6 = [PXPlacesMapPipelineExecutionContext alloc];
    v7 = v44[5];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_4;
    v39[3] = &unk_1E7744A38;
    v39[4] = a1[4];
    v40 = a1[7];
    v41 = &v43;
    v8 = [(PXPlacesMapPipelineExecutionContext *)v6 initWithViewPort:v7 completionHandler:v39];
    objc_storeStrong(a1[4] + 16, v8);
    v9 = [*(a1[4] + 6) objectForKey:a1[5]];
    if (v9)
    {
      [a1[6] updateWithChange:v9];
      [*(a1[4] + 6) removeObjectForKey:a1[5]];
    }

    [(PXPlacesMapPipelineExecutionContext *)v8 start];
    [(PXPlacesMapPipelineExecutionContext *)v8 startTimerForDataSource:a1[5]];
    v10 = [a1[4] stateDelegate];
    [v10 mapController:a1[4] didStartExecutingPipelines:v53[5]];

    v11 = objc_opt_new();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_7;
    aBlock[3] = &unk_1E7733AC0;
    v5 = v8;
    v35 = v5;
    v12 = a1[5];
    v13 = a1[4];
    v36 = v12;
    v37 = v13;
    v38 = &v52;
    v14 = _Block_copy(aBlock);
    if ([v53[5] count] == 1)
    {
      v15 = dispatch_get_global_queue(25, 0);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_9;
      v29[3] = &unk_1E7744620;
      v29[4] = a1[4];
      v33 = &v52;
      v30 = a1[6];
      v31 = v5;
      v32 = v14;
      v16 = v14;
      dispatch_async(v15, v29);
    }

    else
    {
      v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
      v17 = dispatch_queue_create("map update plan results", v16);
      v18 = dispatch_get_global_queue(25, 0);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_10;
      v22[3] = &unk_1E7733B10;
      v19 = a1[4];
      v28 = &v52;
      v22[4] = v19;
      v23 = a1[6];
      v24 = v5;
      v25 = v17;
      v26 = v11;
      v27 = v14;
      v20 = v14;
      v21 = v17;
      dispatch_async(v18, v22);
    }

    _Block_object_dispose(&v43, 8);
    goto LABEL_13;
  }

  if (a1[6])
  {
    v4 = [*(a1[4] + 6) objectForKey:a1[5]];
    v5 = v4;
    if (v4)
    {
      [(PXPlacesMapPipelineExecutionContext *)v4 updateWithChange:a1[6]];
    }

    else
    {
      [*(a1[4] + 6) setObject:a1[6] forKey:a1[5]];
      v5 = 0;
    }

LABEL_13:
  }

  _Block_object_dispose(&v52, 8);
}

void __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) dataSourceToPipelineMap];
  v2 = [v6 objectForKey:*(a1 + 40)];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_3(uint64_t a1)
{
  v5 = [*(a1 + 32) mapView];
  v2 = [v5 currentViewPortWithThumbnailOverscan];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_4(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_5;
  block[3] = &unk_1E7744A38;
  block[4] = v3;
  v5 = v2;
  v6 = a1[6];
  v8 = v5;
  v9 = v6;
  dispatch_async(v4, block);
}

void __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 stopTimerForDataSource:v4];
  [*(a1 + 32) setUpdatePlanResults:v5];

  objc_initWeak(&location, *(a1 + 48));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_8;
  v8[3] = &unk_1E773F9A8;
  objc_copyWeak(&v11, &location);
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v9 = v6;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_9(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = [*(*(a1[8] + 8) + 40) objectAtIndexedSubscript:0];
  v4 = [v2 executePipeline:v3 dataSourceChange:a1[5] context:a1[6]];

  if (v4)
  {
    v5 = a1[7];
    v7[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    (*(v5 + 16))(v5, v6);
  }
}

void __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_10(uint64_t a1)
{
  v2 = [*(*(*(a1 + 80) + 8) + 40) count];
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_11;
  block[3] = &unk_1E7733AE8;
  v13 = *(a1 + 80);
  v8 = *(a1 + 32);
  v4 = *(&v8 + 1);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 64);
  dispatch_apply(v2, v3, block);

  (*(*(a1 + 72) + 16))();
}

void __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_11(uint64_t a1, unint64_t a2)
{
  if ([*(*(*(a1 + 72) + 8) + 40) count] > a2)
  {
    v4 = *(a1 + 32);
    v5 = [*(*(*(a1 + 72) + 8) + 40) objectAtIndexedSubscript:a2];
    v6 = [v4 executePipeline:v5 dataSourceChange:*(a1 + 40) context:*(a1 + 48)];

    if (v6)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_12;
      v8[3] = &unk_1E774C620;
      v7 = *(a1 + 56);
      v9 = *(a1 + 64);
      v10 = v6;
      dispatch_sync(v7, v8);
    }
  }
}

void __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(a1 + 32) updatePlanResults];
  [WeakRetained _executeUpdatePlanResults:v3];

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 currentExecutionContext];
  [v5 stop];

  v8 = objc_loadWeakRetained((a1 + 48));
  v6 = [v8 stateDelegate];
  v7 = objc_loadWeakRetained((a1 + 48));
  [v6 mapController:v7 didFinishExecutingPipelines:*(*(*(a1 + 40) + 8) + 40)];
}

void __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  *(v2 + 128) = 0;

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__60469;
  v35 = __Block_byref_object_dispose__60470;
  v36 = 0;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_6;
  v30[3] = &unk_1E7749A28;
  v30[4] = *(a1 + 32);
  v30[5] = &v31;
  dispatch_sync(MEMORY[0x1E69E96A0], v30);
  [*(*(*(a1 + 48) + 8) + 40) mapRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v32[5] mapRect];
  v19 = v6 == v16 && v8 == v13 && v10 == v14 && v12 == v15;
  if (v19 && (([*(*(*(a1 + 48) + 8) + 40) viewSize], v21 = v20, v23 = v22, objc_msgSend(v32[5], "viewSize"), v21 == v25) ? (v26 = v23 == v24) : (v26 = 0), v26))
  {
    if ([*(*(a1 + 32) + 48) count])
    {
      v27 = *(a1 + 32);
      v28 = [v27[6] keyEnumerator];
      v29 = [v28 allObjects];
      [v27 _updateMapWithDataSources:v29 dataSourceChangeTable:*(*(a1 + 32) + 48) completion:0];
    }
  }

  else
  {
    [*(a1 + 32) _updateMapWithAllDataSources:0];
  }

  _Block_object_dispose(&v31, 8);
}

void __78__PXPlacesMapController__updateMapWithDataSource_dataSourceChange_completion___block_invoke_6(uint64_t a1)
{
  v5 = [*(a1 + 32) mapView];
  v2 = [v5 currentViewPortWithThumbnailOverscan];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)executePipeline:(id)a3 dataSourceChange:(id)a4 context:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  [v7 startTimerForPipeline:v9];
  v10 = [v7 viewPort];
  v11 = [v9 executeWithUpdatedViewPort:v10 andDataSourceChange:v8];

  [v7 stopTimerForPipeline:v9];

  return v11;
}

- (void)_updateMapWithDataSources:(id)a3 dataSourceChangeTable:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] == 1)
  {
    v11 = [v8 objectAtIndexedSubscript:0];
    v12 = [v8 objectAtIndexedSubscript:0];
    v13 = [v9 objectForKey:v12];
    [(PXPlacesMapController *)self _updateMapWithDataSource:v11 dataSourceChange:v13 completion:v10];
  }

  else if ([v8 count])
  {
    v14 = dispatch_group_create();
    v15 = [v8 count];
    v16 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__PXPlacesMapController__updateMapWithDataSources_dataSourceChangeTable_completion___block_invoke;
    block[3] = &unk_1E7733A98;
    block[4] = self;
    v21 = v8;
    v22 = v14;
    v23 = v9;
    v17 = v14;
    dispatch_apply(v15, v16, block);

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __84__PXPlacesMapController__updateMapWithDataSources_dataSourceChangeTable_completion___block_invoke_4;
    v18[3] = &unk_1E774C250;
    v19 = v10;
    dispatch_group_notify(v17, v16, v18);
  }
}

void __84__PXPlacesMapController__updateMapWithDataSources_dataSourceChangeTable_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__60469;
  v18 = __Block_byref_object_dispose__60470;
  v19 = 0;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PXPlacesMapController__updateMapWithDataSources_dataSourceChangeTable_completion___block_invoke_2;
  block[3] = &unk_1E77477B8;
  v12 = &v14;
  v11 = *(a1 + 40);
  v13 = a2;
  dispatch_sync(v4, block);
  dispatch_group_enter(*(a1 + 48));
  v5 = *(a1 + 32);
  v6 = v15[5];
  v7 = [*(a1 + 56) objectForKey:v6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__PXPlacesMapController__updateMapWithDataSources_dataSourceChangeTable_completion___block_invoke_3;
  v8[3] = &unk_1E774C648;
  v9 = *(a1 + 48);
  [v5 _updateMapWithDataSource:v6 dataSourceChange:v7 completion:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __84__PXPlacesMapController__updateMapWithDataSources_dataSourceChangeTable_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __84__PXPlacesMapController__updateMapWithDataSources_dataSourceChangeTable_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_updateMapWithAllDataSources:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__60469;
  v11 = __Block_byref_object_dispose__60470;
  v12 = 0;
  dataSourcesQueue = self->_dataSourcesQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PXPlacesMapController__updateMapWithAllDataSources___block_invoke;
  v6[3] = &unk_1E7749A28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dataSourcesQueue, v6);
  [(PXPlacesMapController *)self _updateMapWithDataSources:v8[5] dataSourceChangeTable:0 completion:v4];
  _Block_object_dispose(&v7, 8);
}

void __54__PXPlacesMapController__updateMapWithAllDataSources___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) dataSources];
  v2 = [v5 allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- ($3BFE36E7F21C9C4470F2C816F6078BCC)_ensureMinimumSize:(id)a3
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v5 = a3.var0.var1;
  v6 = a3.var0.var0;
  v22.x = a3.var0.var0 + a3.var1.var0 * 0.5;
  v22.y = a3.var0.var1 + a3.var1.var1 * 0.5;
  v7 = MKCoordinateForMapPoint(v22);
  v8 = MEMORY[0x1A590B370](v7.latitude, v7.longitude);
  [PXPlacesMapView canonicalMapRect:v6 - v8 * 500.0 * 0.5, v5 - v8 * 500.0 * 0.5, v8 * 500.0, v8 * 500.0];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v6;
  v18 = v5;
  v19 = var0;
  v20 = var1;

  return MKMapRectUnion(*&v17, *&v10);
}

- (void)_setVisibleMapRect:(id)a3 edgePadding:(UIEdgeInsets)a4 animated:(BOOL)a5
{
  v5 = a5;
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v12 = a3.var0.var1;
  v13 = a3.var0.var0;
  v15 = [(PXPlacesMapController *)self mapView];
  [v15 setVisibleMapRect:v5 edgePadding:v13 animated:{v12, var0, var1, top, left, bottom, right}];

  v16 = [(PXPlacesMapController *)self focusDelegate];

  if (v16)
  {
    if ([(PXPlacesMapController *)self mapViewIsVisible])
    {
      [(PXPlacesMapController *)self setSignalFocusWhenMapViewBecomesVisible:0];
      v17 = [(PXPlacesMapController *)self mapView];
      v18 = [v17 currentViewPortWithThumbnailOverscan];
      [v18 scale];
      v20 = v19;

      v21 = [(PXPlacesMapController *)self focusDelegate];
      [v21 mapFocusDidChange:self toRect:v13 scale:{v12, var0, var1, v20}];
    }

    else
    {
      [(PXPlacesMapController *)self setSignalFocusWhenMapViewBecomesVisible:1];

      [(PXPlacesMapController *)self setSignalFocusMapRect:v13, v12, var0, var1];
    }
  }
}

- (void)setVisibleMapRect:(id)a3 forRenderer:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v8 = a3.var0.var1;
  v9 = a3.var0.var0;
  [a4 minimumEdgeInsets];

  [(PXPlacesMapController *)self _setVisibleMapRect:v5 edgePadding:v9 animated:v8, var0, var1, v11, v12, v13, v14];
}

- (void)setVisibleMapRect:(id)a3 forPipeline:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v8 = a3.var0.var1;
  v9 = a3.var0.var0;
  v11 = [a4 renderer];
  [(PXPlacesMapController *)self setVisibleMapRect:v11 forRenderer:v5 animated:v9, v8, var0, var1];
}

- (void)_showDebugMapRect:(id)a3 color:(id)a4
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v6 = a3.var0.var1;
  v7 = a3.var0.var0;
  v19[8] = *MEMORY[0x1E69E9840];
  v19[0] = *&a3.var0.var0;
  v19[1] = *&a3.var0.var1;
  *&v19[2] = a3.var0.var0 + a3.var1.var0;
  v19[3] = *&a3.var0.var1;
  *&v19[4] = a3.var0.var0 + a3.var1.var0;
  *&v19[5] = a3.var0.var1 + a3.var1.var1;
  v19[6] = *&a3.var0.var0;
  *&v19[7] = a3.var0.var1 + a3.var1.var1;
  v9 = MEMORY[0x1E696F358];
  v10 = a4;
  v11 = [v9 polygonWithPoints:v19 count:4];
  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v7, *&v6];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&var0, *&var1];
  v15 = [v12 stringWithFormat:@"{%@, %@}", v13, v14];

  [v11 setTitle:v15];
  v16 = [(PXPlacesMapController *)self showDebugMapRectColors];
  v17 = [v11 title];
  [v16 setObject:v10 forKey:v17];

  v18 = [(PXPlacesMapController *)self mapView];
  [v18 addOverlay:v11];
}

- ($3BFE36E7F21C9C4470F2C816F6078BCC)mapRectForNearbyQueriesFromRect:(id)a3 atScale:(double)a4 targetViewSize:(CGSize)a5
{
  [PXPlacesMapView canonicalMapRect:a3.var0.var0 + a3.var1.var0 * 0.5 - a5.width * a4 * 0.5, a3.var0.var1 + a3.var1.var1 * 0.5 - a5.height * a4 * 0.5, a5.width * a4, a5.height * a4];
  result.var1.var1 = v8;
  result.var1.var0 = v7;
  result.var0.var1 = v6;
  result.var0.var0 = v5;
  return result;
}

- ($3BFE36E7F21C9C4470F2C816F6078BCC)mapRectForGeotaggablesFromDataSource:(id)a3 renderer:(id)a4 mapViewSize:(CGSize)a5 fitAdjusted:(BOOL *)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a4;
  v13 = MEMORY[0x1E696F0D0];
  v14 = *MEMORY[0x1E696F0D0];
  v15 = *(MEMORY[0x1E696F0D0] + 8);
  [v11 minimalEncompassingMapRect];
  if (v17 == v14 && v16 == v15)
  {
    v33 = 0;
    v22 = *(v13 + 16);
    v24 = *(v13 + 24);
    if (!a6)
    {
      goto LABEL_14;
    }

LABEL_13:
    *a6 = v33;
    goto LABEL_14;
  }

  [(PXPlacesMapController *)self _ensureMinimumSize:?];
  v14 = v19;
  v15 = v20;
  v22 = v21;
  v24 = v23;
  v25 = *(MEMORY[0x1E695F060] + 8);
  v26 = *MEMORY[0x1E695F060] == width && v25 == height;
  if (v26 || ([v12 minimumEdgeInsets], v50 = v27, v48 = v28, v49 = v29, v47 = v30, _MKMapRectThatFits(), v31 = v52.size.width, v32 = v52.size.height, v54.origin.x = v14, v54.origin.y = v15, v54.size.width = v22, v54.size.height = v24, MKMapRectContainsRect(v52, v54)))
  {
    v33 = 0;
    if (!a6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v38 = [v11 allItems];
  v39 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithSet:v38];
  [v39 sortUsingComparator:&__block_literal_global_103];
  v40 = [v39 firstObject];
  v41 = v40;
  v33 = v40 != 0;
  if (v40)
  {
    [v40 coordinate];
    v42 = MKMapPointForCoordinate(v51);
    [PXPlacesMapView canonicalMapRect:v42.x - v31 * 0.5, v42.y - v32 * 0.5, v31, v32];
    _MKMapRectThatFits();
    v14 = v43;
    v15 = v44;
    v22 = v45;
    v24 = v46;
  }

  if (a6)
  {
    goto LABEL_13;
  }

LABEL_14:

  v34 = v14;
  v35 = v15;
  v36 = v22;
  v37 = v24;
  result.var1.var1 = v37;
  result.var1.var0 = v36;
  result.var0.var1 = v35;
  result.var0.var0 = v34;
  return result;
}

- ($3BFE36E7F21C9C4470F2C816F6078BCC)_mapRectForGeotaggablesFromPipeline:(id)a3 fitAdjusted:(BOOL *)a4
{
  v6 = a3;
  v7 = [v6 dataSource];
  v8 = [v6 renderer];

  v9 = [(PXPlacesMapController *)self mapView];
  [v9 frame];
  [(PXPlacesMapController *)self mapRectForGeotaggablesFromDataSource:v7 renderer:v8 mapViewSize:a4 fitAdjusted:v10, v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.var1.var1 = v23;
  result.var1.var0 = v22;
  result.var0.var1 = v21;
  result.var0.var0 = v20;
  return result;
}

- (void)focusOnGeotaggablesFromPipelineImmediately:(id)a3
{
  v4 = a3;
  v24 = 0;
  [(PXPlacesMapController *)self _mapRectForGeotaggablesFromPipeline:v4 fitAdjusted:&v24];
  v9 = v8;
  v10 = v5;
  if (v8 != *MEMORY[0x1E696F0D0] || v5 != *(MEMORY[0x1E696F0D0] + 8))
  {
    v12 = v6;
    v13 = v7;
    if (v24)
    {
      v14 = *MEMORY[0x1E69DDCE0];
      v15 = *(MEMORY[0x1E69DDCE0] + 8);
      v17 = *(MEMORY[0x1E69DDCE0] + 16);
      v16 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v18 = [v4 renderer];
      [v18 minimumEdgeInsets];
      v14 = v19;
      v15 = v20;
      v17 = v21;
      v16 = v22;
    }

    v23 = [(PXPlacesMapController *)self mapView];
    [v23 setVisibleMapRect:0 edgePadding:v9 animated:{v10, v12, v13, v14, v15, v17, v16}];
  }
}

- (void)focusOnGeotaggablesFromPipeline:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10 = 0;
  [(PXPlacesMapController *)self _mapRectForGeotaggablesFromPipeline:v6 fitAdjusted:&v10];
  if (v8 != *MEMORY[0x1E696F0D0] || v7 != *(MEMORY[0x1E696F0D0] + 8))
  {
    if (v10 == 1)
    {
      [PXPlacesMapController _setVisibleMapRect:"_setVisibleMapRect:edgePadding:animated:" edgePadding:v4 animated:?];
    }

    else
    {
      [(PXPlacesMapController *)self setVisibleMapRect:v6 forPipeline:v4 animated:?];
    }
  }
}

- (id)visibleGeotaggableFromDataSource:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXPlacesMapController.m" lineNumber:451 description:@"-[PXPlacesMapController getViewableGeotags] dataSource cannot be nil"];
  }

  v6 = [(PXPlacesMapController *)self mapView];
  [v6 visibleMapRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v5 findItemsInMapRect:{v8, v10, v12, v14}];

  return v15;
}

- (void)removePipeline:(id)a3
{
  v4 = a3;
  v5 = [v4 dataSource];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PXPlacesMapController_removePipeline___block_invoke;
  block[3] = &unk_1E774C620;
  block[4] = self;
  v6 = v4;
  v28 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__60469;
  v21[4] = __Block_byref_object_dispose__60470;
  v22 = 0;
  dataSourcesQueue = self->_dataSourcesQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __40__PXPlacesMapController_removePipeline___block_invoke_2;
  v18[3] = &unk_1E7746448;
  v20 = v21;
  v18[4] = self;
  v8 = v5;
  v19 = v8;
  dispatch_sync(dataSourcesQueue, v18);
  pipelinesQueue = self->_pipelinesQueue;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __40__PXPlacesMapController_removePipeline___block_invoke_3;
  v14 = &unk_1E7746888;
  v16 = v21;
  v10 = v6;
  v15 = v10;
  v17 = &v23;
  dispatch_sync(pipelinesQueue, &v11);
  if (*(v24 + 24) == 1)
  {
    [(PXPlacesMapController *)self removeDataSource:v8, v11, v12, v13, v14];
  }

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v23, 8);
}

void __40__PXPlacesMapController_removePipeline___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) executeRemoval];
  v4[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v1 _executeUpdatePlanResults:v3];
}

void __40__PXPlacesMapController_removePipeline___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) dataSourceToPipelineMap];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __40__PXPlacesMapController_removePipeline___block_invoke_3(void *a1)
{
  [*(*(a1[5] + 8) + 40) removeObject:a1[4]];
  result = [*(*(a1[5] + 8) + 40) count];
  if (!result)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  return result;
}

- (void)removeDataSource:(id)a3
{
  v4 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__60469;
  v33 = __Block_byref_object_dispose__60470;
  v34 = 0;
  dataSourcesQueue = self->_dataSourcesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PXPlacesMapController_removeDataSource___block_invoke;
  block[3] = &unk_1E7746448;
  v28 = &v29;
  block[4] = self;
  v6 = v4;
  v27 = v6;
  dispatch_sync(dataSourcesQueue, block);
  v7 = v30[5];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, -1);
    v10 = dispatch_queue_create("map update plan results", v9);
    v11 = [v30[5] count];
    v12 = dispatch_get_global_queue(25, 0);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __42__PXPlacesMapController_removeDataSource___block_invoke_2;
    v22[3] = &unk_1E7733A70;
    v25 = &v29;
    v22[4] = self;
    v23 = v10;
    v13 = v8;
    v24 = v13;
    v14 = v10;
    dispatch_apply(v11, v12, v22);

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __42__PXPlacesMapController_removeDataSource___block_invoke_5;
    v20[3] = &unk_1E774C620;
    v20[4] = self;
    v21 = v13;
    v15 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], v20);
  }

  [v6 setDelegate:0];
  v16 = self->_dataSourcesQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __42__PXPlacesMapController_removeDataSource___block_invoke_6;
  v18[3] = &unk_1E774C620;
  v18[4] = self;
  v19 = v6;
  v17 = v6;
  dispatch_sync(v16, v18);

  _Block_object_dispose(&v29, 8);
}

void __42__PXPlacesMapController_removeDataSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSourceToPipelineMap];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) dataSourceToPipelineMap];
  [v6 removeObjectForKey:*(a1 + 40)];
}

void __42__PXPlacesMapController_removeDataSource___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__60469;
  v15 = __Block_byref_object_dispose__60470;
  v16 = 0;
  v3 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PXPlacesMapController_removeDataSource___block_invoke_3;
  block[3] = &unk_1E7733A48;
  block[5] = &v11;
  block[6] = a2;
  block[4] = *(a1 + 56);
  dispatch_sync(v3, block);
  v4 = [v12[5] executeRemoval];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__PXPlacesMapController_removeDataSource___block_invoke_4;
  v7[3] = &unk_1E774C620;
  v8 = v4;
  v5 = *(a1 + 40);
  v9 = *(a1 + 48);
  v6 = v4;
  dispatch_sync(v5, v7);

  _Block_object_dispose(&v11, 8);
}

void __42__PXPlacesMapController_removeDataSource___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSources];
  v4 = [v2 mutableCopy];

  [v4 removeObject:*(a1 + 40)];
  v3 = [v4 copy];
  [*(a1 + 32) setDataSources:v3];
}

void __42__PXPlacesMapController_removeDataSource___block_invoke_3(void *a1)
{
  v2 = a1[6];
  if (v2 < [*(*(a1[4] + 8) + 40) count])
  {
    v3 = [*(*(a1[4] + 8) + 40) objectAtIndexedSubscript:a1[6]];
    v4 = *(a1[5] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

uint64_t __42__PXPlacesMapController_removeDataSource___block_invoke_4(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(result + 40) addObject:?];
  }

  return result;
}

- (void)addPipeline:(id)a3
{
  v4 = a3;
  v5 = [(PXPlacesMapController *)self cache];
  [v4 setImageCache:v5];

  v6 = [v4 dataSource];
  dataSourcesQueue = self->_dataSourcesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PXPlacesMapController_addPipeline___block_invoke;
  block[3] = &unk_1E774A1B8;
  block[4] = self;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_sync(dataSourcesQueue, block);
  [(PXPlacesMapController *)self _updateMapWithDataSource:v9 dataSourceChange:0 completion:0];
}

void __37__PXPlacesMapController_addPipeline___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSourceToPipelineMap];
  v6 = [v2 objectForKey:*(a1 + 40)];

  [*(a1 + 40) setDelegate:*(a1 + 32)];
  if (!v6)
  {
    v6 = objc_opt_new();
    v3 = [*(a1 + 32) dataSourceToPipelineMap];
    [v3 setObject:v6 forKey:*(a1 + 40)];
  }

  [v6 addObject:*(a1 + 48)];
  v4 = [*(a1 + 32) dataSources];
  v5 = [v4 setByAddingObject:*(a1 + 40)];

  [*(a1 + 32) setDataSources:v5];
}

- (id)createTrackingBarButtonItem
{
  v2 = [(PXPlacesMapController *)self mapView];
  v3 = [objc_alloc(MEMORY[0x1E696F428]) initWithMapView:v2];

  return v3;
}

- (PXPlacesMapView)mapView
{
  mapView = self->_mapView;
  if (!mapView)
  {
    [(PXPlacesMapController *)self loadView];
    mapView = self->_mapView;
  }

  return mapView;
}

- (void)loadView
{
  v3 = objc_alloc_init(PXPlacesMapView);
  [(PXPlacesMapView *)v3 setMapViewDelegate:self];
  [(PXPlacesMapController *)self initialCenterCoordinate];
  latitude = v25.latitude;
  longitude = v25.longitude;
  if (CLLocationCoordinate2DIsValid(v25))
  {
    v26.latitude = latitude;
    v26.longitude = longitude;
    v6 = MKMapPointForCoordinate(v26);
    [(PXPlacesMapController *)self _ensureMinimumSize:v6.x, v6.y, 1.0, 1.0];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(PXPlacesMapController *)self initialEdgePadding];
    [(PXPlacesMapView *)v3 setVisibleMapRect:0 edgePadding:v8 animated:v10, v12, v14, v15, v16, v17, v18];
  }

  else
  {
    [(PXPlacesMapController *)self initialCoordinateRegion];
    if (fabs(v23) <= 180.0 && fabs(v20) <= 90.0 && v21 >= 0.0 && v21 <= 180.0 && v22 >= 0.0 && v22 <= 360.0)
    {
      [(PXPlacesMapController *)self initialCoordinateRegion];
      [(PXPlacesMapView *)v3 setRegion:?];
    }
  }

  mapView = self->_mapView;
  self->_mapView = v3;
}

- (void)dealloc
{
  dataSourcesQueue = self->_dataSourcesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__PXPlacesMapController_dealloc__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_sync(dataSourcesQueue, block);
  v4.receiver = self;
  v4.super_class = PXPlacesMapController;
  [(PXPlacesMapController *)&v4 dealloc];
}

void __32__PXPlacesMapController_dealloc__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 32) dataSources];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) setDelegate:0];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (PXPlacesMapController)init
{
  v24.receiver = self;
  v24.super_class = PXPlacesMapController;
  v2 = [(PXPlacesMapController *)&v24 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    v4 = *(v2 + 14);
    *(v2 + 14) = v3;

    v5 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:5 valueOptions:0];
    v6 = *(v2 + 15);
    *(v2 + 15) = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    v8 = dispatch_queue_create("dataSourcesQueue", v7);
    v9 = *(v2 + 2);
    *(v2 + 2) = v8;

    v10 = dispatch_queue_create("pipelinesQueue", v7);
    v11 = *(v2 + 1);
    *(v2 + 1) = v10;

    v12 = dispatch_queue_create("executionContextQueue", v7);
    v13 = *(v2 + 3);
    *(v2 + 3) = v12;

    v14 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:0];
    v15 = *(v2 + 5);
    *(v2 + 5) = v14;

    v16 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:0];
    v17 = *(v2 + 6);
    *(v2 + 6) = v16;

    *(v2 + 152) = *MEMORY[0x1E6985CC0];
    v18 = *(MEMORY[0x1E696F068] + 16);
    *(v2 + 168) = *MEMORY[0x1E696F068];
    *(v2 + 184) = v18;
    v19 = *(MEMORY[0x1E69DDCE0] + 16);
    *(v2 + 200) = *MEMORY[0x1E69DDCE0];
    *(v2 + 216) = v19;
    v20 = objc_alloc_init(PXPlacesImageCache);
    v21 = *(v2 + 17);
    *(v2 + 17) = v20;

    v22 = *(MEMORY[0x1E696F0D0] + 16);
    *(v2 + 232) = *MEMORY[0x1E696F0D0];
    *(v2 + 248) = v22;
  }

  return v2;
}

+ ($3BFE36E7F21C9C4470F2C816F6078BCC)mapRectWithMapViewSize:(CGSize)a3 centeredOnCoordinate:(CLLocationCoordinate2D)a4 visibleDistance:(double)a5
{
  if (*MEMORY[0x1E695F060] == a3.width && *(MEMORY[0x1E695F060] + 8) == a3.height)
  {
    v7 = *MEMORY[0x1E696F0D0];
    v8 = *(MEMORY[0x1E696F0D0] + 8);
    v9 = *(MEMORY[0x1E696F0D0] + 16);
    v10 = *(MEMORY[0x1E696F0D0] + 24);
  }

  else
  {
    v6 = MEMORY[0x1A590B350](a1, a2, a4.latitude, a4.longitude, a5, a5);
    MEMORY[0x1A590B3A0](v6);
  }

  result.var1.var1 = v10;
  result.var1.var0 = v9;
  result.var0.var1 = v8;
  result.var0.var0 = v7;
  return result;
}

+ (void)launchMapsAtCoordinate:(CLLocationCoordinate2D)a3 withTitle:(id)a4 completionHandler:(id)a5
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E6985C40];
  v8 = a4;
  v9 = [[v7 alloc] initWithLatitude:latitude longitude:longitude];
  v10 = [objc_alloc(MEMORY[0x1E696F270]) initWithCLLocation:v9];
  [v10 setName:v8];

  v11 = MEMORY[0x1E696F270];
  v13[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v11 _openDefaultNavigationWithItems:v12 launchOptions:0 fromScene:0 completionHandler:0];
}

@end