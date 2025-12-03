@interface PXAssetLocationAction
- (id)_undoLocationForAsset:(id)asset;
- (id)locationForAsset:(id)asset shifted:(BOOL *)shifted;
- (void)_loadOriginalLocationsIfNeeded;
- (void)_performChangesWithLocationProvider:(id)provider completionHandler:(id)handler;
- (void)_requestRevGeocoding;
- (void)_sendAnalyticsEvent;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXAssetLocationAction

- (void)performUndo:(id)undo
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__PXAssetLocationAction_performUndo___block_invoke;
  v3[3] = &unk_1E772EB08;
  v3[4] = self;
  [(PXAssetLocationAction *)self _performChangesWithLocationProvider:v3 completionHandler:undo];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  [(PXAssetLocationAction *)self _loadOriginalLocationsIfNeeded];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__PXAssetLocationAction_performAction___block_invoke;
  v5[3] = &unk_1E772EB08;
  v5[4] = self;
  [(PXAssetLocationAction *)self _performChangesWithLocationProvider:v5 completionHandler:actionCopy];
}

- (void)_performChangesWithLocationProvider:(id)provider completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  onUnitChange = [(PXAssetLocationAction *)self onUnitChange];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__PXAssetLocationAction__performChangesWithLocationProvider_completionHandler___block_invoke;
  v14[3] = &unk_1E7744FE0;
  v14[4] = self;
  v15 = providerCopy;
  v16 = onUnitChange;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PXAssetLocationAction__performChangesWithLocationProvider_completionHandler___block_invoke_2;
  v12[3] = &unk_1E774BD88;
  v12[4] = self;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = onUnitChange;
  v11 = providerCopy;
  [(PXPhotosAction *)self performChanges:v14 completionHandler:v12];
}

void __79__PXAssetLocationAction__performChangesWithLocationProvider_completionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) assets];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = (*(*(a1 + 40) + 16))();
        v9 = [MEMORY[0x1E6978648] changeRequestForAsset:v7];
        [v9 setLocation:v8];
        v10 = *(a1 + 48);
        if (v10)
        {
          (*(v10 + 16))();
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void __79__PXAssetLocationAction__performChangesWithLocationProvider_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 _requestRevGeocoding];
  (*(*(a1 + 40) + 16))();
}

- (void)_sendAnalyticsEvent
{
  v18[3] = *MEMORY[0x1E69E9840];
  analyticsActionString = [(PXAssetLocationAction *)self analyticsActionString];
  v4 = analyticsActionString;
  if (analyticsActionString)
  {
    v5 = analyticsActionString;
  }

  else
  {
    v5 = &stru_1F1741150;
  }

  v6 = v5;

  assets = [(PXAssetsAction *)self assets];
  v8 = [assets count];
  v9 = @"n";
  if (v8 == 1)
  {
    v9 = @"1";
  }

  v10 = v9;

  analyticsPlaceLevelString = [(PXAssetLocationAction *)self analyticsPlaceLevelString];
  v12 = analyticsPlaceLevelString;
  if (analyticsPlaceLevelString)
  {
    v13 = analyticsPlaceLevelString;
  }

  else
  {
    v13 = &stru_1F1741150;
  }

  v14 = v13;

  v15 = MEMORY[0x1E6991F28];
  v17[0] = @"action";
  v17[1] = @"count";
  v18[0] = v6;
  v18[1] = v10;
  v17[2] = @"placeLevel";
  v18[2] = v14;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
  [v15 sendEvent:@"com.apple.photos.CPAnalytics.places.locationAction" withPayload:v16];
}

- (void)_requestRevGeocoding
{
  photoLibrary = [(PXPhotosAction *)self photoLibrary];
  assets = [(PXAssetsAction *)self assets];
  if (_requestRevGeocoding_onceToken != -1)
  {
    dispatch_once(&_requestRevGeocoding_onceToken, &__block_literal_global_14536);
  }

  v5 = _requestRevGeocoding_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__PXAssetLocationAction__requestRevGeocoding__block_invoke_2;
  v8[3] = &unk_1E774C620;
  v9 = assets;
  v10 = photoLibrary;
  v6 = photoLibrary;
  v7 = assets;
  dispatch_async(v5, v8);
}

void __45__PXAssetLocationAction__requestRevGeocoding__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.IPXAssetLocationAction.revGeoQueue", v2);
  v1 = _requestRevGeocoding_queue;
  _requestRevGeocoding_queue = v0;
}

- (id)_undoLocationForAsset:(id)asset
{
  originalLocations = self->_originalLocations;
  localIdentifier = [asset localIdentifier];
  v5 = [(NSDictionary *)originalLocations objectForKey:localIdentifier];

  location = [v5 location];

  return location;
}

- (void)_loadOriginalLocationsIfNeeded
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->_originalLocations)
  {
    assets = [(PXAssetsAction *)self assets];
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(assets, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = assets;
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          location = [v9 location];
          if (location)
          {
            [v9 fetchPropertySetsIfNeeded];
            v11 = [PXPlaceAnnotation alloc];
            photosInfoPanelLocationProperties = [v9 photosInfoPanelLocationProperties];
            placeAnnotationData = [photosInfoPanelLocationProperties placeAnnotationData];
            v14 = [(PXPlaceAnnotation *)v11 initWithData:placeAnnotationData];

            v15 = [PXAnnotatedLocation alloc];
            location2 = [v9 location];
            v17 = [(PXAnnotatedLocation *)v15 initWithLocation:location2 placeAnnotation:v14];

            localIdentifier = [v9 localIdentifier];
            [v3 setObject:v17 forKey:localIdentifier];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v6);
    }

    v19 = [v3 copy];
    originalLocations = self->_originalLocations;
    self->_originalLocations = v19;
  }
}

- (id)locationForAsset:(id)asset shifted:(BOOL *)shifted
{
  assetCopy = asset;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetLocationAction.m" lineNumber:42 description:{@"Method %s is a responsibility of subclass %@", "-[PXAssetLocationAction locationForAsset:shifted:]", v9}];

  abort();
}

@end