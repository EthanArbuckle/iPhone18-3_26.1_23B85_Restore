@interface PKPassSemanticTileFactory
+ (id)analyticsTileAvailabilityForPass:(id)a3;
- (BOOL)coalesceFetchForContentWithIdentifier:(id)a3 descriptor:(id)a4 context:(int64_t)a5 completion:(id)a6;
- (BOOL)descriptorCanCreateAdditionalServicesTile:(id)a3;
- (BOOL)descriptorCanCreateAirlineUpgradesTile:(id)a3;
- (BOOL)descriptorCanCreateBoardingInformationTiles:(id)a3;
- (BOOL)descriptorCanCreateBoardingPassIssuerActionsTileGroup:(id)a3;
- (BOOL)descriptorCanCreateEventInformationTileGroup:(id)a3;
- (BOOL)descriptorCanCreateEventTicketIssuerActionsTileGroup:(id)a3;
- (BOOL)descriptorCanCreateExploreGuidesTile:(id)a3;
- (BOOL)descriptorCanCreateLoungeTile:(id)a3;
- (BOOL)descriptorCanCreateMapsTile:(id)a3;
- (BOOL)descriptorCanCreateMusicTile:(id)a3;
- (BOOL)descriptorCanCreateWeatherTile:(id)a3;
- (BOOL)descriptorRequiresRemoteVenueMapImage:(id)a3;
- (PKPassSemanticTileFactory)init;
- (id)_additionalServicesGroupTileFromDescriptor:(id)a3 groupIdentifier:(id)a4 context:(int64_t)a5;
- (id)_airlineUpgradesTileFooterTextForDescriptor:(id)a3;
- (id)_baggageInformationGroupTileFromDescriptor:(id)a3 groupIdentifier:(id)a4 context:(int64_t)a5;
- (id)_boardingInformationGroupTileFromDescriptor:(id)a3 groupIdentifier:(id)a4 context:(int64_t)a5;
- (id)_boardingPassDashboardTilesForDescriptor:(id)a3 mapsItem:(id)a4 exploreGuidesResponse:(id)a5;
- (id)_boardingPassIssuerActionTilesForDescriptor:(id)a3;
- (id)_cacheKeyForDescriptor:(id)a3 context:(int64_t)a4 contentIdentifier:(id)a5;
- (id)_cacheKeysForPassUniqueIdentifier:(id)a3;
- (id)_createTilesFromDescriptor:(id)a3 context:(int64_t)a4 queueUpdates:(BOOL)a5;
- (id)_dashboardEventGuideTilesForDescriptor:(id)a3 weatherItem:(id)a4 musicItem:(id)a5;
- (id)_eventInformationEntriesFromDescriptor:(id)a3;
- (id)_eventTicketDashboardTilesForDescriptor:(id)a3 mapsItem:(id)a4;
- (id)_eventTicketIssuerActionTilesForDescriptor:(id)a3 context:(int64_t)a4;
- (id)_loungeTileFromDescriptor:(id)a3 groupIdentifier:(id)a4 context:(int64_t)a5;
- (id)_upcomingPassInformationEventGuideTilesForDescriptor:(id)a3 weatherItem:(id)a4 venueMapImage:(id)a5 musicItem:(id)a6;
- (id)_upcomingPassInformationTilesForDescriptor:(id)a3 mapsItem:(id)a4;
- (id)additionalInfoFieldsGroupTilesForPass:(id)a3;
- (id)additionalInfoFieldsTileForPass:(id)a3 context:(int64_t)a4 title:(id)a5;
- (id)additionalInfoTileForFields:(id)a3;
- (id)cachedContentForIdentifier:(id)a3 descriptor:(id)a4 context:(int64_t)a5;
- (id)cachedVenueMapImageForDescriptor:(id)a3 context:(int64_t)a4;
- (id)createAdditionalInfoGroupTilesFromInformation:(id)a3;
- (id)eventInformationGroupTileFromDescriptor:(id)a3 tileIdentifier:(id)a4 groupIdentifier:(id)a5 context:(int64_t)a6;
- (id)fetchDashboardAirlineUpgradesTilesFromFlightTilesDescriptor:(id)a3;
- (id)fetchDashboardDetailsTilesForDescriptor:(id)a3 queueUpdates:(BOOL)a4;
- (id)fetchDashboardEventGuideTilesFromEventTilesDescriptor:(id)a3 queueUpdates:(BOOL)a4;
- (id)fetchDashboardTilesForDescriptor:(id)a3 queueUpdates:(BOOL)a4;
- (id)fetchDashboardTilesFromEventTilesDescriptor:(id)a3 queueUpdates:(BOOL)a4;
- (id)fetchDashboardTilesFromFlightTilesDescriptor:(id)a3 queueUpdates:(BOOL)a4;
- (id)fetchUpcomingPassInformationDetailsTilesForDescriptor:(id)a3 queueUpdates:(BOOL)a4;
- (id)fetchUpcomingPassInformationEventGuideTilesFromEventTilesDescriptor:(id)a3 queueUpdates:(BOOL)a4;
- (id)fetchUpcomingPassInformationTilesForDescriptor:(id)a3 queueUpdates:(BOOL)a4;
- (id)fetchUpcomingPassInformationTilesFromEventTilesDescriptor:(id)a3 queueUpdates:(BOOL)a4;
- (id)findMyFriendsGroupTileFromFooterText:(id)a3 tileIdentifier:(id)a4 groupIdentifier:(id)a5 context:(int64_t)a6;
- (id)issuerActionsGroupTileFromTiles:(id)a3 groupIdentifier:(id)a4 context:(int64_t)a5;
- (id)musicGroupTileFromItem:(id)a3 tileIdentifier:(id)a4 groupIdentifier:(id)a5 context:(int64_t)a6;
- (id)tableViewTileFromEntries:(id)a3 tileIdentifier:(id)a4 context:(int64_t)a5;
- (id)venueMapGroupTileFromImage:(id)a3 titleText:(id)a4 tileIdentifier:(id)a5 groupIdentifier:(id)a6 context:(int64_t)a7;
- (id)weatherGroupTileFromItem:(id)a3 tileIdentifier:(id)a4 groupIdentifier:(id)a5 context:(int64_t)a6;
- (void)_cacheTileContent:(id)a3 withIdentifier:(id)a4 forDescriptor:(id)a5 context:(int64_t)a6;
- (void)_fetchLookupItemsFromDescriptor:(id)a3 completion:(id)a4;
- (void)_fetchMapItemForMapsTileSupplier:(id)a3 completion:(id)a4;
- (void)addObserver:(id)a3;
- (void)cache:(id)a3 willEvictObject:(id)a4;
- (void)clearCacheOfDescriptorsWithPassUniqueIdentifier:(id)a3;
- (void)didCompleteFetchForItem:(id)a3 withIdentifier:(id)a4 descriptor:(id)a5 context:(int64_t)a6;
- (void)didFinishContentFetchFromTilesFetchForContext:(int64_t)a3 descriptor:(id)a4;
- (void)discardCachedContentForKey:(id)a3;
- (void)fetchExploreGuidesForDescriptor:(id)a3 contentIdentifier:(id)a4 tileContext:(int64_t)a5 completion:(id)a6;
- (void)fetchTilesForDescriptor:(id)a3 context:(int64_t)a4 queueUpdates:(BOOL)a5 completion:(id)a6;
- (void)fetchVenueMapImageForDescriptor:(id)a3 context:(int64_t)a4 completion:(id)a5;
- (void)prewarmDashboardDetailsTilesForDescriptor:(id)a3;
- (void)prewarmEventTileContentForDescriptor:(id)a3 context:(int64_t)a4;
- (void)prewarmTileContentForDescriptor:(id)a3 context:(int64_t)a4;
- (void)prewarmUpcomingPassInformationDetailsTilesForDescriptor:(id)a3;
- (void)reloadMapsInformationForDescriptor:(id)a3 contentIdentifier:(id)a4 tileContext:(int64_t)a5 completion:(id)a6;
- (void)reloadMusicInformationForDescriptor:(id)a3 context:(int64_t)a4 completion:(id)a5;
- (void)reloadWeatherInformationForDescriptor:(id)a3 context:(int64_t)a4 completion:(id)a5;
@end

@implementation PKPassSemanticTileFactory

- (void)prewarmEventTileContentForDescriptor:(id)a3 context:(int64_t)a4
{
  v6 = a3;
  if (a4 == 5 || a4 == 2)
  {
    objc_initWeak(&location, self);
    v7 = [(PKPassSemanticTileFactory *)self workQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81__PKPassSemanticTileFactory_Event__prewarmEventTileContentForDescriptor_context___block_invoke;
    v8[3] = &unk_1E8011408;
    objc_copyWeak(v10, &location);
    v9 = v6;
    v10[1] = a4;
    dispatch_async(v7, v8);

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }
}

void __81__PKPassSemanticTileFactory_Event__prewarmEventTileContentForDescriptor_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained descriptorCanCreateWeatherTile:*(a1 + 32)];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    [v4 reloadWeatherInformationForDescriptor:*(a1 + 32) context:*(a1 + 48) completion:0];
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 descriptorRequiresRemoteVenueMapImage:*(a1 + 32)];

  if (v6)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 cachedVenueMapImageForDescriptor:*(a1 + 32) context:*(a1 + 48)];

    if (!v8)
    {
      v9 = objc_loadWeakRetained((a1 + 40));
      [v9 fetchVenueMapImageForDescriptor:*(a1 + 32) context:*(a1 + 48) completion:0];
    }
  }

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 descriptorCanCreateMusicTile:*(a1 + 32)];

  if (v11)
  {
    v12 = objc_loadWeakRetained((a1 + 40));
    [v12 reloadMusicInformationForDescriptor:*(a1 + 32) context:*(a1 + 48) completion:0];
  }
}

- (id)fetchDashboardTilesFromEventTilesDescriptor:(id)a3 queueUpdates:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__PKPassSemanticTileFactory_Event__fetchDashboardTilesFromEventTilesDescriptor_queueUpdates___block_invoke;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v14, &location);
  v7 = v6;
  v13 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [(PKPassSemanticTileFactory *)self cachedContentForIdentifier:@"mapsContentIdentifier" descriptor:v7 context:1];
  if (!v9 && v4)
  {
    [(PKPassSemanticTileFactory *)self reloadMapsInformationForDescriptor:v7 contentIdentifier:@"mapsContentIdentifier" tileContext:1 completion:v8];
  }

  v10 = [(PKPassSemanticTileFactory *)self _eventTicketDashboardTilesForDescriptor:v7 mapsItem:v9];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

void __93__PKPassSemanticTileFactory_Event__fetchDashboardTilesFromEventTilesDescriptor_queueUpdates___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained didFinishContentFetchFromTilesFetchForContext:1 descriptor:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (id)_eventTicketDashboardTilesForDescriptor:(id)a3 mapsItem:(id)a4
{
  v64[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [v6 pass];
  v10 = PKLocalizedTicketingString(&cfstr_TileAdditional.isa);
  v11 = [(PKPassSemanticTileFactory *)self additionalInfoFieldsTileForPass:v9 context:1 title:v10];

  [v8 safelyAddObject:v11];
  v12 = [v6 additionalTilesContentSupplier];
  v62 = v11;
  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateMapsTile:v6])
  {
    v59 = v12;
    v58 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:@"PKPassTileContextDashboard.mapsTileIdentifier" context:1];
    [v58 setPreferredStyle:1];
    v13 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:1];
    [v13 setPreferredStyle:5];
    v14 = MEMORY[0x1E69B8AC8];
    v15 = PKLocalizedTicketingString(&cfstr_TileViewInMaps.isa);
    v16 = [v14 createWithContent:v15];
    [v13 setFooter:v16];

    v57 = [MEMORY[0x1E69A1DB0] addressMarkerStyleAttributes];
    v17 = [MEMORY[0x1E696F220] imageForStyle:v57 size:3 forScale:0 format:PKUIScreenScale()];
    v18 = objc_alloc(MEMORY[0x1E69B8948]);
    v19 = [v17 CGImage];
    [v17 scale];
    v20 = [v18 initWithCGImage:v19 scale:1 orientation:?];
    v21 = [MEMORY[0x1E69B8AA8] createImageWithImage:v20 tintColor:0 hasColorContent:1];
    [v13 setIcon:v21];

    if ([v7 isValid])
    {
      v22 = [v7 mapItem];
      v23 = MEMORY[0x1E69B8AC8];
      [v22 name];
      v24 = v60 = v7;
      v25 = [v23 createWithContent:v24];
      [v13 setTitle:v25];

      v26 = [MEMORY[0x1E696F270] urlForMapItem:v22 options:0];
      v27 = [objc_alloc(MEMORY[0x1E69B8D10]) _initWithExternalURL:v26 title:0];
      v64[0] = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:1];
      [v13 setActions:v28];

      v7 = v60;
    }

    else
    {
      if (v7)
      {
        v29 = [MEMORY[0x1E69B8AA8] createWithSymbolName:@"mappin.circle.fill" tintColor:23];
        [v13 setIcon:v29];
      }

      v22 = [v59 mapsTileTitle];
      v26 = [MEMORY[0x1E69B8AC8] createWithContent:v22];
      [v13 setTitle:v26];
    }

    v30 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v58 childTiles:0 stateIdentifier:@"PKPassTileContextDashboard.mapsTileIdentifier" state:v13 inProgress:0];
    [v30 setAnalyticsIdentifier:@"mapsTile"];
    [v8 addObject:v30];

    v11 = v62;
    v12 = v59;
  }

  v31 = [v12 eventName];
  v32 = v31;
  if (v31)
  {
    v33 = [v31 length] == 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = [(PKPassSemanticTileFactory *)self descriptorCanCreateEventTicketIssuerActionsTileGroup:v6];
  v35 = [(PKPassSemanticTileFactory *)self descriptorCanCreateEventInformationTileGroup:v6];
  if (!v33 && v34 && v35)
  {
    v36 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:@"PKPassTileContextDashboard.eventGuideTileIdentifier" context:1];
    [v36 setPreferredStyle:1];
    v37 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:1];
    [v37 setPreferredStyle:5];
    v38 = [MEMORY[0x1E69B8AC8] createWithContent:v32];
    [v37 setTitle:v38];

    v39 = MEMORY[0x1E69B8AC8];
    v40 = PKLocalizedTicketingString(&cfstr_TileEventGuide.isa);
    v41 = [v39 createWithContent:v40];
    [v37 setFooter:v41];

    PKUIImageNamed(@"EventGuide");
    v42 = v61 = v7;
    v43 = objc_alloc(MEMORY[0x1E69B8948]);
    v44 = [v42 CGImage];
    [v42 scale];
    v45 = v12;
    v46 = [v43 initWithCGImage:v44 scale:1 orientation:?];
    v47 = [MEMORY[0x1E69B8AA8] createImageWithImage:v46 tintColor:0 hasColorContent:1];
    [v37 setIcon:v47];

    v48 = [objc_alloc(MEMORY[0x1E69B8D10]) _initWithContext:2];
    v63 = v48;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
    [v37 setActions:v49];

    v50 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v36 childTiles:0 stateIdentifier:@"PKPassTileContextDashboard.eventGuideTileIdentifier" state:v37 inProgress:0];
    [v50 setAnalyticsIdentifier:@"eventGuideTile"];
    [v8 addObject:v50];

    v12 = v45;
    v7 = v61;
    v11 = v62;
  }

  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v8 count])
  {
    v52 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:@"PKPassTileContextDashboard.groupTileIdentifier" context:1];
    [v52 setPreferredStyle:1];
    [v52 setShowInPrearm:0];
    [v52 setColumns:2];
    [v52 setMaximumRows:3];
    [v52 setWidthClass:2];
    [v52 setHeightClass:3];
    [v52 setGroupStyle:0];
    v53 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:3];
    v54 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v52 childTiles:v8 stateIdentifier:@"PKPassTileContextDashboard.groupTileIdentifier" state:v53 inProgress:0];
    [v51 addObject:v54];
  }

  v55 = [v51 copy];

  return v55;
}

- (id)fetchDashboardEventGuideTilesFromEventTilesDescriptor:(id)a3 queueUpdates:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__PKPassSemanticTileFactory_Event__fetchDashboardEventGuideTilesFromEventTilesDescriptor_queueUpdates___block_invoke;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v15, &location);
  v7 = v6;
  v14 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [(PKPassSemanticTileFactory *)self cachedContentForIdentifier:@"weatherContentIdentifier" descriptor:v7 context:2];
  if (!v9 && v4)
  {
    [(PKPassSemanticTileFactory *)self reloadWeatherInformationForDescriptor:v7 context:2 completion:v8];
  }

  v10 = [(PKPassSemanticTileFactory *)self cachedContentForIdentifier:@"musicContentIdentifier" descriptor:v7 context:2];
  if (!v10 && v4)
  {
    [(PKPassSemanticTileFactory *)self reloadMusicInformationForDescriptor:v7 context:2 completion:v8];
  }

  v11 = [(PKPassSemanticTileFactory *)self _dashboardEventGuideTilesForDescriptor:v7 weatherItem:v9 musicItem:v10];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v11;
}

void __103__PKPassSemanticTileFactory_Event__fetchDashboardEventGuideTilesFromEventTilesDescriptor_queueUpdates___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained didFinishContentFetchFromTilesFetchForContext:2 descriptor:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (id)_dashboardEventGuideTilesForDescriptor:(id)a3 weatherItem:(id)a4 musicItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateEventTicketIssuerActionsTileGroup:v8])
  {
    v12 = [(PKPassSemanticTileFactory *)self _eventTicketIssuerActionTilesForDescriptor:v8 context:2];
    v13 = [(PKPassSemanticTileFactory *)self issuerActionsGroupTileFromTiles:v12 groupIdentifier:@"PKPassTileContextDashboardDetails.issuerActionGroupTileIdentifier" context:2];
    [v11 addObject:v13];
  }

  if (v9)
  {
    v14 = [(PKPassSemanticTileFactory *)self weatherGroupTileFromItem:v9 tileIdentifier:@"PKPassTileContextDashboardDetails.weatherTileIdentifier" groupIdentifier:@"PKPassTileContextDashboardDetails.weatherGroupTileIdentifier" context:2];
    [v11 addObject:v14];
  }

  v15 = [v8 additionalTilesContentSupplier];
  v16 = [v15 venueName];
  v17 = [v15 venueMapImageIfExists];
  if (v17)
  {
    v18 = [(PKPassSemanticTileFactory *)self venueMapGroupTileFromImage:v17 titleText:v16 tileIdentifier:0 groupIdentifier:@"PKPassTileContextDashboardDetails.venueMapGroupTileIdentifier" context:2];
    [v11 addObject:v18];
  }

  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateEventInformationTileGroup:v8])
  {
    v19 = [(PKPassSemanticTileFactory *)self eventInformationGroupTileFromDescriptor:v8 tileIdentifier:@"PKPassTileContextDashboardDetails.eventInformationTileIdentifier" groupIdentifier:@"PKPassTileContextDashboardDetails.eventInformationGroupTileIdentifier" context:2];
    [v11 addObject:v19];
  }

  v20 = [(PKPassSemanticTileFactory *)self findMyFriendsGroupTileFromFooterText:v16 tileIdentifier:0 groupIdentifier:@"PKPassTileContextDashboardDetails.findMyGroupTileIdentifier" context:2];
  [v11 addObject:v20];

  if (v10)
  {
    v21 = [(PKPassSemanticTileFactory *)self musicGroupTileFromItem:v10 tileIdentifier:@"PKPassTileContextDashboardDetails.musicTileIdentifier" groupIdentifier:@"PKPassTileContextDashboardDetails.musicGroupTileIdentifier" context:2];
    [v11 addObject:v21];
  }

  v22 = [v11 copy];

  return v22;
}

- (id)fetchUpcomingPassInformationTilesFromEventTilesDescriptor:(id)a3 queueUpdates:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__PKPassSemanticTileFactory_Event__fetchUpcomingPassInformationTilesFromEventTilesDescriptor_queueUpdates___block_invoke;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v14, &location);
  v7 = v6;
  v13 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [(PKPassSemanticTileFactory *)self cachedContentForIdentifier:@"mapsContentIdentifier" descriptor:v7 context:4];
  if (!v9 && v4)
  {
    [(PKPassSemanticTileFactory *)self reloadMapsInformationForDescriptor:v7 contentIdentifier:@"mapsContentIdentifier" tileContext:4 completion:v8];
  }

  v10 = [(PKPassSemanticTileFactory *)self _upcomingPassInformationTilesForDescriptor:v7 mapsItem:v9];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

void __107__PKPassSemanticTileFactory_Event__fetchUpcomingPassInformationTilesFromEventTilesDescriptor_queueUpdates___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained didFinishContentFetchFromTilesFetchForContext:4 descriptor:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (id)_upcomingPassInformationTilesForDescriptor:(id)a3 mapsItem:(id)a4
{
  v60[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = 0x1E695D000uLL;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [v6 additionalTilesContentSupplier];
  v57 = v9;
  v58 = v10;
  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateMapsTile:v6])
  {
    v56 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:@"PKPassTileContextUpcomingPassInformation.mapsTileIdentifier" context:4];
    [v56 setPreferredStyle:1];
    v11 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:1];
    [v11 setPreferredStyle:5];
    v12 = MEMORY[0x1E69B8AC8];
    PKLocalizedTicketingString(&cfstr_TileViewInMaps.isa);
    v14 = v13 = v7;
    v15 = [v12 createWithContent:v14];
    [v11 setFooter:v15];

    v7 = v13;
    v55 = [MEMORY[0x1E69A1DB0] addressMarkerStyleAttributes];
    v16 = [MEMORY[0x1E696F220] imageForStyle:v55 size:3 forScale:0 format:PKUIScreenScale()];
    v17 = objc_alloc(MEMORY[0x1E69B8948]);
    v18 = [v16 CGImage];
    [v16 scale];
    v19 = [v17 initWithCGImage:v18 scale:1 orientation:?];
    v20 = [MEMORY[0x1E69B8AA8] createImageWithImage:v19 tintColor:0 hasColorContent:1];
    [v11 setIcon:v20];

    if ([v13 isValid])
    {
      v21 = [v13 mapItem];
      v22 = MEMORY[0x1E69B8AC8];
      v23 = [v21 name];
      v24 = [v22 createWithContent:v23];
      [v11 setTitle:v24];

      v25 = [MEMORY[0x1E696F270] urlForMapItem:v21 options:0];
      v26 = [objc_alloc(MEMORY[0x1E69B8D10]) _initWithExternalURL:v25 title:0];
      v60[0] = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
      [v11 setActions:v27];

      v7 = v13;
    }

    else
    {
      if (v13)
      {
        v28 = [MEMORY[0x1E69B8AA8] createWithSymbolName:@"mappin.circle.fill" tintColor:23];
        [v11 setIcon:v28];
      }

      v21 = [v58 mapsTileTitle];
      v25 = [MEMORY[0x1E69B8AC8] createWithContent:v21];
      [v11 setTitle:v25];
    }

    v9 = v57;
    v29 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v56 childTiles:0 stateIdentifier:@"PKPassTileContextUpcomingPassInformation.mapsTileIdentifier" state:v11 inProgress:0];
    [v29 setAnalyticsIdentifier:@"mapsTile"];
    [v57 addObject:v29];

    v10 = v58;
    v8 = 0x1E695D000;
  }

  v30 = [v10 eventName];
  v31 = v30;
  if (v30)
  {
    v32 = [v30 length] == 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = [(PKPassSemanticTileFactory *)self descriptorCanCreateEventTicketIssuerActionsTileGroup:v6];
  v34 = [(PKPassSemanticTileFactory *)self descriptorCanCreateEventInformationTileGroup:v6];
  if (!v32 && v33 && v34)
  {
    v35 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:@"PKPassTileContextUpcomingPassInformation.mapsTileIdentifier" context:4];
    [v35 setPreferredStyle:1];
    v36 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:1];
    [v36 setPreferredStyle:5];
    v37 = [MEMORY[0x1E69B8AC8] createWithContent:v31];
    [v36 setTitle:v37];

    v38 = MEMORY[0x1E69B8AC8];
    v39 = PKLocalizedTicketingString(&cfstr_TileEventGuide.isa);
    v40 = [v38 createWithContent:v39];
    [v36 setFooter:v40];

    v41 = PKUIImageNamed(@"EventGuide");
    v42 = objc_alloc(MEMORY[0x1E69B8948]);
    v43 = [v41 CGImage];
    [v41 scale];
    v44 = [v42 initWithCGImage:v43 scale:1 orientation:?];
    v45 = [MEMORY[0x1E69B8AA8] createImageWithImage:v44 tintColor:0 hasColorContent:1];
    [v36 setIcon:v45];

    v46 = [objc_alloc(MEMORY[0x1E69B8D10]) _initWithContext:5];
    v59 = v46;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
    [v36 setActions:v47];

    v9 = v57;
    v48 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v35 childTiles:0 stateIdentifier:@"PKPassTileContextUpcomingPassInformation.mapsTileIdentifier" state:v36 inProgress:0];
    [v48 setAnalyticsIdentifier:@"eventGuideTile"];
    [v57 addObject:v48];

    v10 = v58;
    v8 = 0x1E695D000uLL;
  }

  v49 = objc_alloc_init(*(v8 + 3952));
  if ([v9 count])
  {
    v50 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:@"PKPassTileContextUpcomingPassInformation.groupTileIdentifier" context:4];
    [v50 setPreferredStyle:1];
    [v50 setShowInPrearm:0];
    [v50 setColumns:2];
    [v50 setMaximumRows:1];
    [v50 setWidthClass:2];
    [v50 setHeightClass:3];
    [v50 setGroupStyle:0];
    v51 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:3];
    v52 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v50 childTiles:v9 stateIdentifier:@"PKPassTileContextUpcomingPassInformation.groupTileIdentifier" state:v51 inProgress:0];
    [v49 addObject:v52];
  }

  v53 = [v49 copy];

  return v53;
}

- (id)fetchUpcomingPassInformationEventGuideTilesFromEventTilesDescriptor:(id)a3 queueUpdates:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __117__PKPassSemanticTileFactory_Event__fetchUpcomingPassInformationEventGuideTilesFromEventTilesDescriptor_queueUpdates___block_invoke;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v16, &location);
  v7 = v6;
  v15 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [(PKPassSemanticTileFactory *)self cachedContentForIdentifier:@"weatherContentIdentifier" descriptor:v7 context:5];
  if (!v9 && v4)
  {
    [(PKPassSemanticTileFactory *)self reloadWeatherInformationForDescriptor:v7 context:5 completion:v8];
  }

  v10 = [(PKPassSemanticTileFactory *)self cachedVenueMapImageForDescriptor:v7 context:5];
  if (!v10 && v4)
  {
    [(PKPassSemanticTileFactory *)self fetchVenueMapImageForDescriptor:v7 context:5 completion:v8];
  }

  v11 = [(PKPassSemanticTileFactory *)self cachedContentForIdentifier:@"musicContentIdentifier" descriptor:v7 context:5];
  if (!v11 && v4)
  {
    [(PKPassSemanticTileFactory *)self reloadMusicInformationForDescriptor:v7 context:5 completion:v8];
  }

  v12 = [(PKPassSemanticTileFactory *)self _upcomingPassInformationEventGuideTilesForDescriptor:v7 weatherItem:v9 venueMapImage:v10 musicItem:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v12;
}

void __117__PKPassSemanticTileFactory_Event__fetchUpcomingPassInformationEventGuideTilesFromEventTilesDescriptor_queueUpdates___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained didFinishContentFetchFromTilesFetchForContext:5 descriptor:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (id)_upcomingPassInformationEventGuideTilesForDescriptor:(id)a3 weatherItem:(id)a4 venueMapImage:(id)a5 musicItem:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateEventTicketIssuerActionsTileGroup:v10])
  {
    v15 = [(PKPassSemanticTileFactory *)self _eventTicketIssuerActionTilesForDescriptor:v10 context:5];
    v16 = [(PKPassSemanticTileFactory *)self issuerActionsGroupTileFromTiles:v15 groupIdentifier:@"PKPassTileContextDashboardDetails.issuerActionGroupTileIdentifier" context:5];
    [v14 addObject:v16];
  }

  if (v11)
  {
    v17 = [(PKPassSemanticTileFactory *)self weatherGroupTileFromItem:v11 tileIdentifier:@"PKPassTileContextDashboardDetails.weatherTileIdentifier" groupIdentifier:@"PKPassTileContextDashboardDetails.weatherGroupTileIdentifier" context:5];
    [v14 addObject:v17];
  }

  v18 = [v10 additionalTilesContentSupplier];
  v19 = [v18 venueName];
  if (v12)
  {
    v20 = [(PKPassSemanticTileFactory *)self venueMapGroupTileFromImage:v12 titleText:v19 tileIdentifier:0 groupIdentifier:@"PKPassTileContextDashboardDetails.venueMapGroupTileIdentifier" context:5];
    [v14 addObject:v20];
  }

  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateEventInformationTileGroup:v10])
  {
    v21 = [(PKPassSemanticTileFactory *)self eventInformationGroupTileFromDescriptor:v10 tileIdentifier:@"PKPassTileContextDashboardDetails.eventInformationTileIdentifier" groupIdentifier:@"PKPassTileContextDashboardDetails.eventInformationGroupTileIdentifier" context:5];
    [v14 addObject:v21];
  }

  v22 = [(PKPassSemanticTileFactory *)self findMyFriendsGroupTileFromFooterText:v19 tileIdentifier:0 groupIdentifier:@"PKPassTileContextDashboardDetails.findMyGroupTileIdentifier" context:5];
  [v14 addObject:v22];

  if (v13)
  {
    v23 = [(PKPassSemanticTileFactory *)self musicGroupTileFromItem:v13 tileIdentifier:@"PKPassTileContextDashboardDetails.musicTileIdentifier" groupIdentifier:@"PKPassTileContextDashboardDetails.musicGroupTileIdentifier" context:5];
    [v14 addObject:v23];
  }

  v24 = [v14 copy];

  return v24;
}

- (id)_eventTicketIssuerActionTilesForDescriptor:(id)a3 context:(int64_t)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v28 = a3;
  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 0; i != 12; ++i)
  {
    v5 = [v28 additionalTilesContentSupplier];
    v6 = PKEventTileIssuerActionURLForTypeInDescriptor(i, v5);

    if (v6)
    {
      v7 = [MEMORY[0x1E696AFB0] UUID];
      v8 = [v7 UUIDString];

      v9 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:v8 context:a4];
      [v9 setPreferredStyle:1];
      v10 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:1];
      [v10 setPreferredStyle:5];
      v11 = MEMORY[0x1E69B8AC8];
      v12 = PKLocalizedTicketingString(&off_1E80115B8[i]->isa);
      v13 = [v11 createWithContent:v12];
      [v10 setBody:v13];

      v14 = MEMORY[0x1E69B8AA8];
      v15 = PKEventTileIssuerActionSymbolForType(i);
      v16 = PKEventTileIssuerActionSymbolForType(i);
      v17 = [v16 pathExtension];
      if ([v17 isEqualToString:@"fill"])
      {
        v18 = [v16 stringByDeletingPathExtension];
      }

      else
      {
        v18 = v16;
      }

      v19 = v18;

      v20 = [v14 createWithSymbolName:v15 contextMenuSymbolName:v19 tintColor:5];
      [v10 setIcon:v20];

      v21 = [objc_alloc(MEMORY[0x1E69B8D10]) _initWithExternalURL:v6 title:0];
      v29[0] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      [v10 setActions:v22];

      v23 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v9 childTiles:0 stateIdentifier:v8 state:v10 inProgress:0];
      v24 = qword_1E80116F0[i];
      [v23 setAnalyticsIdentifier:off_1E8011690[i]];
      [v23 setAxID:*v24];
      [v27 addObject:v23];
    }
  }

  return v27;
}

- (BOOL)descriptorCanCreateEventTicketIssuerActionsTileGroup:(id)a3
{
  v4 = 0;
  for (i = 0; i != 12; ++i)
  {
    v6 = [a3 additionalTilesContentSupplier];
    v7 = PKEventTileIssuerActionURLForTypeInDescriptor(i, v6);

    if (v7)
    {
      ++v4;
    }
  }

  return v4 != 0;
}

- (id)weatherGroupTileFromItem:(id)a3 tileIdentifier:(id)a4 groupIdentifier:(id)a5 context:(int64_t)a6
{
  v37[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v14 = [MEMORY[0x1E696AFB0] UUID];
      v12 = [v14 UUIDString];
    }

    v31 = v10;
    v33 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:v12 context:a6];
    [v33 setPreferredStyle:0];
    v15 = [v9 weatherInformation];
    v16 = MEMORY[0x1E69B8AC0];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __100__PKPassSemanticTileFactory_Event__weatherGroupTileFromItem_tileIdentifier_groupIdentifier_context___block_invoke;
    v34[3] = &unk_1E8011430;
    v17 = v15;
    v35 = v17;
    v18 = [v16 createWithPreferredStyle:4 adaptorProvider:v34];
    [v18 setFullBleed:1];
    v19 = [v17 weatherURL];
    v32 = v11;
    if (v19)
    {
      v20 = [objc_alloc(MEMORY[0x1E69B8D10]) _initWithExternalURL:v19 title:0];
      v37[0] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
      [v18 setActions:v21];

      v11 = v32;
    }

    v30 = v12;
    v22 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v33 childTiles:0 stateIdentifier:v12 state:v18 inProgress:0];
    if (v11)
    {
      v23 = v11;
    }

    else
    {
      v24 = [MEMORY[0x1E696AFB0] UUID];
      v23 = [v24 UUIDString];
    }

    v25 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:v23 context:a6];
    [v25 setPreferredStyle:0];
    [v25 setShowInPrearm:0];
    [v25 setColumns:1];
    [v25 setMaximumRows:1];
    [v25 setWidthClass:1];
    [v25 setHeightClass:3];
    v26 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:3];
    v27 = objc_alloc(MEMORY[0x1E69B8A90]);
    v36 = v22;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
    v13 = [v27 _initWithMetadata:v25 childTiles:v28 stateIdentifier:v23 state:v26 inProgress:0];

    v10 = v31;
    v11 = v32;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __100__PKPassSemanticTileFactory_Event__weatherGroupTileFromItem_tileIdentifier_groupIdentifier_context___block_invoke(uint64_t a1)
{
  v2 = [_TtC9PassKitUI28PKPassTileForeignViewAdaptor alloc];
  v3 = [PKTileContextWeatherView createWithWeatherInformation:*(a1 + 32)];
  v4 = [(PKPassTileForeignViewAdaptor *)v2 initWithView:v3];

  return v4;
}

- (void)reloadWeatherInformationForDescriptor:(id)a3 context:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateWeatherTile:v8])
  {
    objc_initWeak(&location, self);
    v10 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __93__PKPassSemanticTileFactory_Event__reloadWeatherInformationForDescriptor_context_completion___block_invoke;
    v25[3] = &unk_1E8011458;
    objc_copyWeak(v28, &location);
    v11 = v8;
    v26 = v11;
    v28[1] = a4;
    v27 = v9;
    [v10 addOperation:v25];
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = __Block_byref_object_copy__0;
    v23[4] = __Block_byref_object_dispose__0;
    v24 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __93__PKPassSemanticTileFactory_Event__reloadWeatherInformationForDescriptor_context_completion___block_invoke_199;
    v19[3] = &unk_1E80114D0;
    objc_copyWeak(&v22, &location);
    v12 = v11;
    v20 = v12;
    v21 = v23;
    [v10 addOperation:v19];
    v13 = [MEMORY[0x1E695DFB0] null];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __93__PKPassSemanticTileFactory_Event__reloadWeatherInformationForDescriptor_context_completion___block_invoke_4;
    v15[3] = &unk_1E8011520;
    objc_copyWeak(v18, &location);
    v17 = v23;
    v16 = v12;
    v18[1] = a4;
    v14 = [v10 evaluateWithInput:v13 completion:v15];

    objc_destroyWeak(v18);
    objc_destroyWeak(&v22);
    _Block_object_dispose(v23, 8);

    objc_destroyWeak(v28);
    objc_destroyWeak(&location);
  }

  else if (v9)
  {
    v9[2](v9);
  }
}

void __93__PKPassSemanticTileFactory_Event__reloadWeatherInformationForDescriptor_context_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained coalesceFetchForContentWithIdentifier:@"weatherContentIdentifier" descriptor:*(a1 + 32) context:*(a1 + 56) completion:*(a1 + 40)];

  v6[2](v6, v9, v8);
}

void __93__PKPassSemanticTileFactory_Event__reloadWeatherInformationForDescriptor_context_completion___block_invoke_199(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ([a2 isCanceled])
  {
    v8[2](v8, v7, 1);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v10 = [WeakRetained workQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __93__PKPassSemanticTileFactory_Event__reloadWeatherInformationForDescriptor_context_completion___block_invoke_2;
    v13[3] = &unk_1E80114A8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = v11;
    v17 = v12;
    v16 = v8;
    v15 = v7;
    dispatch_async(v10, v13);
  }
}

void __93__PKPassSemanticTileFactory_Event__reloadWeatherInformationForDescriptor_context_completion___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(PKPassLocationWeatherManager);
  v3 = [*(a1 + 32) additionalTilesContentSupplier];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v3 weatherFetchDateForDate:v4];

  v6 = [v3 location];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__PKPassSemanticTileFactory_Event__reloadWeatherInformationForDescriptor_context_completion___block_invoke_3;
  v10[3] = &unk_1E8011480;
  v11 = v2;
  v9 = *(a1 + 48);
  v7 = v9;
  v13 = v9;
  v12 = *(a1 + 40);
  v8 = v2;
  [(PKPassLocationWeatherManager *)v8 fetchWeatherDisplayInformationFor:v5 at:v6 completion:v10];
}

uint64_t __93__PKPassSemanticTileFactory_Event__reloadWeatherInformationForDescriptor_context_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKPassSemanticTileFactoryCachedWeatherItem alloc] initWithWeatherInformation:v3];

  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 48) + 16);

  return v7();
}

void __93__PKPassSemanticTileFactory_Event__reloadWeatherInformationForDescriptor_context_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (([a4 isCanceled] & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__PKPassSemanticTileFactory_Event__reloadWeatherInformationForDescriptor_context_completion___block_invoke_5;
    block[3] = &unk_1E80114F8;
    objc_copyWeak(v9, (a1 + 48));
    v6 = *(a1 + 32);
    v5 = v6;
    v8 = v6;
    v9[1] = *(a1 + 56);
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(v9);
  }
}

void __93__PKPassSemanticTileFactory_Event__reloadWeatherInformationForDescriptor_context_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained didCompleteFetchForItem:*(*(*(a1 + 40) + 8) + 40) withIdentifier:@"weatherContentIdentifier" descriptor:*(a1 + 32) context:*(a1 + 56)];
    WeakRetained = v3;
  }
}

- (BOOL)descriptorCanCreateWeatherTile:(id)a3
{
  v4 = a3;
  v5 = [(PKPassSemanticTileFactory *)self featureOverrides];
  if (v5 && (v6 = v5, -[PKPassSemanticTileFactory featureOverrides](self, "featureOverrides"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isIntegrationTypeSupported:1], v7, v6, !v8))
  {
    v14 = 0;
  }

  else
  {
    v9 = [v4 additionalTilesContentSupplier];
    v10 = [v9 location];
    v11 = [MEMORY[0x1E695DF00] date];
    v12 = [v9 weatherFetchDateForDate:v11];

    if (v10)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = !v13;
  }

  return v14;
}

- (id)venueMapGroupTileFromImage:(id)a3 titleText:(id)a4 tileIdentifier:(id)a5 groupIdentifier:(id)a6 context:(int64_t)a7
{
  v39[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    v37 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v17 = [MEMORY[0x1E696AFB0] UUID];
      v15 = [v17 UUIDString];
    }

    v18 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:v15 context:a7];
    [v18 setPreferredStyle:0];
    v19 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:1];
    [v19 setPreferredStyle:4];
    [v19 setFullBleed:1];
    v20 = [MEMORY[0x1E69B8AA8] createImageWithImage:v11 tintColor:0 hasColorContent:1];
    [v19 setBodyImage:v20];

    v33 = [MEMORY[0x1E69B8AA8] createWithSymbolName:@"arrow.up.backward.and.arrow.down.forward" tintColor:5];
    v21 = [MEMORY[0x1E69B8AA0] createAccessoryImageWithImage:?];
    [v19 setSecondaryAccessory:v21];

    v22 = [objc_alloc(MEMORY[0x1E69B8D10]) _initWithImage:v11 title:v12];
    v39[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    [v19 setActions:v23];

    v34 = v18;
    v35 = v15;
    v24 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v18 childTiles:0 stateIdentifier:v15 state:v19 inProgress:0];
    [v24 setAnalyticsIdentifier:@"venueMapTile"];
    v36 = v14;
    if (v14)
    {
      v25 = v14;
    }

    else
    {
      v26 = [MEMORY[0x1E696AFB0] UUID];
      v25 = [v26 UUIDString];
    }

    v27 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:v25 context:a7];
    [v27 setPreferredStyle:0];
    [v27 setShowInPrearm:0];
    [v27 setColumns:1];
    [v27 setMaximumRows:1];
    [v27 setWidthClass:1];
    [v27 setHeightClass:3];
    [v27 setGroupStyle:2];
    v28 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:3];
    v29 = v28;
    if (v12)
    {
      [v28 setHeader:v12];
    }

    v30 = objc_alloc(MEMORY[0x1E69B8A90]);
    v38 = v24;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    v16 = [v30 _initWithMetadata:v27 childTiles:v31 stateIdentifier:v25 state:v29 inProgress:0];

    v14 = v36;
    v13 = v37;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)cachedVenueMapImageForDescriptor:(id)a3 context:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 additionalTilesContentSupplier];
  v8 = [v7 venueMapImageIfExists];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else if ([(PKPassSemanticTileFactory *)self descriptorRequiresRemoteVenueMapImage:v6])
  {
    v11 = [(PKPassSemanticTileFactory *)self cachedContentForIdentifier:@"venueMapContentIdentifier" descriptor:v6 context:a4];
    v10 = [v11 venueMapImage];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)fetchVenueMapImageForDescriptor:(id)a3 context:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(PKPassSemanticTileFactory *)self descriptorRequiresRemoteVenueMapImage:v8])
  {
    v10 = [v8 additionalTilesContentSupplier];
    v11 = [v10 venueMapImageManifest];
    v12 = [v11 itemClosestMatchingScreenScale:PKUIScreenScale()];
    if (v12)
    {
      objc_initWeak(location, self);
      v13 = objc_alloc_init(MEMORY[0x1E69B8658]);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __87__PKPassSemanticTileFactory_Event__fetchVenueMapImageForDescriptor_context_completion___block_invoke;
      v27[3] = &unk_1E8011458;
      objc_copyWeak(v30, location);
      v14 = v8;
      v28 = v14;
      v30[1] = a4;
      v29 = v9;
      [v13 addOperation:v27];
      v25[0] = 0;
      v25[1] = v25;
      v25[2] = 0x3032000000;
      v25[3] = __Block_byref_object_copy__0;
      v25[4] = __Block_byref_object_dispose__0;
      v26 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __87__PKPassSemanticTileFactory_Event__fetchVenueMapImageForDescriptor_context_completion___block_invoke_2;
      v21[3] = &unk_1E80114D0;
      objc_copyWeak(&v24, location);
      v22 = v12;
      v23 = v25;
      [v13 addOperation:v21];
      v15 = [MEMORY[0x1E695DFB0] null];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __87__PKPassSemanticTileFactory_Event__fetchVenueMapImageForDescriptor_context_completion___block_invoke_215;
      v17[3] = &unk_1E8011520;
      objc_copyWeak(v20, location);
      v19 = v25;
      v18 = v14;
      v20[1] = a4;
      v16 = [v13 evaluateWithInput:v15 completion:v17];

      objc_destroyWeak(v20);
      objc_destroyWeak(&v24);
      _Block_object_dispose(v25, 8);

      objc_destroyWeak(v30);
      objc_destroyWeak(location);
    }
  }

  else if (v9)
  {
    v9[2](v9);
  }
}

void __87__PKPassSemanticTileFactory_Event__fetchVenueMapImageForDescriptor_context_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained coalesceFetchForContentWithIdentifier:@"venueMapContentIdentifier" descriptor:*(a1 + 32) context:*(a1 + 56) completion:*(a1 + 40)];

  v6[2](v6, v9, v8);
}

void __87__PKPassSemanticTileFactory_Event__fetchVenueMapImageForDescriptor_context_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ([a2 isCanceled])
  {
    v8[2](v8, v7, 1);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v10 = [WeakRetained workQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__PKPassSemanticTileFactory_Event__fetchVenueMapImageForDescriptor_context_completion___block_invoke_3;
    v13[3] = &unk_1E80114A8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = v11;
    v17 = v12;
    v16 = v8;
    v15 = v7;
    dispatch_async(v10, v13);
  }
}

void __87__PKPassSemanticTileFactory_Event__fetchVenueMapImageForDescriptor_context_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__PKPassSemanticTileFactory_Event__fetchVenueMapImageForDescriptor_context_completion___block_invoke_4;
  v5[3] = &unk_1E8011548;
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  v6 = *(a1 + 40);
  [v2 downloadImageWithCompletion:v5];
}

void __87__PKPassSemanticTileFactory_Event__fetchVenueMapImageForDescriptor_context_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Failed to download venueMap asset: %@", &v11, 0xCu);
    }
  }

  v8 = [[PKPassSemanticTileFactoryCachedVenueMapImageItem alloc] initWithVenueMapImage:v5];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  (*(*(a1 + 40) + 16))();
}

void __87__PKPassSemanticTileFactory_Event__fetchVenueMapImageForDescriptor_context_completion___block_invoke_215(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (([a4 isCanceled] & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__PKPassSemanticTileFactory_Event__fetchVenueMapImageForDescriptor_context_completion___block_invoke_2_216;
    block[3] = &unk_1E80114F8;
    objc_copyWeak(v9, (a1 + 48));
    v6 = *(a1 + 32);
    v5 = v6;
    v8 = v6;
    v9[1] = *(a1 + 56);
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(v9);
  }
}

void __87__PKPassSemanticTileFactory_Event__fetchVenueMapImageForDescriptor_context_completion___block_invoke_2_216(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained didCompleteFetchForItem:*(*(*(a1 + 40) + 8) + 40) withIdentifier:@"venueMapContentIdentifier" descriptor:*(a1 + 32) context:*(a1 + 56)];
    WeakRetained = v3;
  }
}

- (BOOL)descriptorRequiresRemoteVenueMapImage:(id)a3
{
  v3 = [a3 additionalTilesContentSupplier];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 venueMapImageManifest];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)eventInformationGroupTileFromDescriptor:(id)a3 tileIdentifier:(id)a4 groupIdentifier:(id)a5 context:(int64_t)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = [(PKPassSemanticTileFactory *)self _eventInformationEntriesFromDescriptor:a3];
  if ([v12 count])
  {
    v13 = [(PKPassSemanticTileFactory *)self tableViewTileFromEntries:v12 tileIdentifier:v10 context:a6];
    [v13 setAnalyticsIdentifier:@"additionalInformationTile"];
    v14 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:v11 context:a6];
    [v14 setPreferredStyle:0];
    [v14 setShowInPrearm:0];
    [v14 setColumns:1];
    [v14 setMaximumRows:1];
    [v14 setWidthClass:1];
    [v14 setHeightClass:3];
    v15 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:3];
    v16 = objc_alloc(MEMORY[0x1E69B8A90]);
    v20[0] = v13;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v18 = [v16 _initWithMetadata:v14 childTiles:v17 stateIdentifier:v11 state:v15 inProgress:0];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_eventInformationEntriesFromDescriptor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setDateStyle:0];
  [v5 setTimeStyle:1];
  [v5 setDoesRelativeDateFormatting:0];
  v6 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v5 setLocale:v6];

  v7 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  [v5 setCalendar:v7];

  v8 = [v3 numberForSemanticKey:*MEMORY[0x1E69BBCE0]];
  if (v8)
  {
    v9 = [PKTileContextDetailsTableViewEntry alloc];
    v10 = PKLocalizedTicketingString(&cfstr_TileEventInfor.isa);
    if ([v8 BOOLValue])
    {
      v11 = @"TILE_EVENT_INFORMATION_TAILGATING_ALLOWED";
    }

    else
    {
      v11 = @"TILE_EVENT_INFORMATION_TAILGATING_NOT_ALLOWED";
    }

    v12 = PKLocalizedTicketingString(&v11->isa);
    v13 = [(PKTileContextDetailsTableViewEntry *)v9 initWithTitle:v10 detail:v12 style:0 axID:*MEMORY[0x1E69B9CF0]];
    [v4 addObject:v13];
  }

  v14 = [v3 dateForSemanticKey:*MEMORY[0x1E69BBC88]];
  if (v14)
  {
    v15 = [PKTileContextDetailsTableViewEntry alloc];
    v16 = PKLocalizedTicketingString(&cfstr_TileEventInfor_2.isa);
    v17 = [v5 stringFromDate:v14];
    v18 = [(PKTileContextDetailsTableViewEntry *)v15 initWithTitle:v16 detail:v17 style:0 axID:*MEMORY[0x1E69B9728]];
    [v4 addObject:v18];
  }

  v57 = v14;
  v58 = v8;
  v19 = [v3 dateForSemanticKey:*MEMORY[0x1E69BBC98]];
  if (v19)
  {
    v20 = [PKTileContextDetailsTableViewEntry alloc];
    v21 = PKLocalizedTicketingString(&cfstr_TileEventInfor_3.isa);
    v22 = [v5 stringFromDate:v19];
    v23 = [(PKTileContextDetailsTableViewEntry *)v20 initWithTitle:v21 detail:v22 style:0 axID:*MEMORY[0x1E69B9830]];
    [v4 addObject:v23];
  }

  v56 = v19;
  v24 = [v3 dateForSemanticKey:*MEMORY[0x1E69BBCA8]];
  if (v24)
  {
    v25 = [PKTileContextDetailsTableViewEntry alloc];
    v26 = PKLocalizedTicketingString(&cfstr_TileEventInfor_4.isa);
    v27 = [v5 stringFromDate:v24];
    v28 = [(PKTileContextDetailsTableViewEntry *)v25 initWithTitle:v26 detail:v27 style:0 axID:*MEMORY[0x1E69B99D8]];
    [v4 addObject:v28];
  }

  v29 = [v3 dateForSemanticKey:{*MEMORY[0x1E69BBC78], v24}];
  if (v29)
  {
    v30 = [PKTileContextDetailsTableViewEntry alloc];
    v31 = PKLocalizedTicketingString(&cfstr_TileEventInfor_5.isa);
    v32 = [v5 stringFromDate:v29];
    v33 = [(PKTileContextDetailsTableViewEntry *)v30 initWithTitle:v31 detail:v32 style:0 axID:*MEMORY[0x1E69B9570]];
    [v4 addObject:v33];
  }

  v34 = [v3 dateForSemanticKey:*MEMORY[0x1E69BBC90]];
  if (v34)
  {
    v35 = [PKTileContextDetailsTableViewEntry alloc];
    v36 = PKLocalizedTicketingString(&cfstr_TileEventInfor_6.isa);
    v37 = [v5 stringFromDate:v34];
    v38 = [(PKTileContextDetailsTableViewEntry *)v35 initWithTitle:v36 detail:v37 style:0 axID:*MEMORY[0x1E69B97D8]];
    [v4 addObject:v38];
  }

  v39 = [v3 dateForSemanticKey:*MEMORY[0x1E69BBCA0]];
  if (v39)
  {
    v40 = [PKTileContextDetailsTableViewEntry alloc];
    v41 = PKLocalizedTicketingString(&cfstr_TileEventInfor_7.isa);
    v42 = [v5 stringFromDate:v39];
    v43 = [(PKTileContextDetailsTableViewEntry *)v40 initWithTitle:v41 detail:v42 style:0 axID:*MEMORY[0x1E69B9DD0]];
    [v4 addObject:v43];
  }

  v44 = [v3 dateForSemanticKey:*MEMORY[0x1E69BBC80]];
  if (v44)
  {
    v45 = [PKTileContextDetailsTableViewEntry alloc];
    v46 = PKLocalizedTicketingString(&cfstr_TileEventInfor_8.isa);
    v47 = [v5 stringFromDate:v44];
    v48 = [(PKTileContextDetailsTableViewEntry *)v45 initWithTitle:v46 detail:v47 style:0 axID:*MEMORY[0x1E69B9DC8]];
    [v4 addObject:v48];
  }

  v49 = [v3 stringForSemanticKey:*MEMORY[0x1E69BBE08]];
  if (v49)
  {
    v50 = [PKTileContextDetailsTableViewEntry alloc];
    v51 = PKLocalizedTicketingString(&cfstr_TileEventInfor_9.isa);
    v52 = [(PKTileContextDetailsTableViewEntry *)v50 initWithTitle:v51 detail:v49 style:0 axID:*MEMORY[0x1E69B9770]];
    [v4 addObject:v52];
  }

  v53 = [v4 copy];

  return v53;
}

- (BOOL)descriptorCanCreateEventInformationTileGroup:(id)a3
{
  v22[9] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E69BBC88];
  v22[0] = *MEMORY[0x1E69BBCE0];
  v22[1] = v4;
  v5 = *MEMORY[0x1E69BBCA8];
  v22[2] = *MEMORY[0x1E69BBC98];
  v22[3] = v5;
  v6 = *MEMORY[0x1E69BBC90];
  v22[4] = *MEMORY[0x1E69BBC78];
  v22[5] = v6;
  v7 = *MEMORY[0x1E69BBC80];
  v22[6] = *MEMORY[0x1E69BBCA0];
  v22[7] = v7;
  v22[8] = *MEMORY[0x1E69BBE08];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:9];
  v9 = [v3 semantics];
  v10 = [v9 allKeys];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = 0;
    v14 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v13 += [v10 containsObject:{*(*(&v17 + 1) + 8 * i), v17}];
      }

      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
    LOBYTE(v12) = v13 != 0;
  }

  return v12;
}

- (id)findMyFriendsGroupTileFromFooterText:(id)a3 tileIdentifier:(id)a4 groupIdentifier:(id)a5 context:(int64_t)a6
{
  v36[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v32 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v12 = [v13 UUIDString];
  }

  v14 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:v12 context:a6];
  [v14 setPreferredStyle:0];
  v15 = MEMORY[0x1E69B8AC0];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __112__PKPassSemanticTileFactory_Event__findMyFriendsGroupTileFromFooterText_tileIdentifier_groupIdentifier_context___block_invoke;
  v33[3] = &unk_1E8011430;
  v30 = v9;
  v34 = v30;
  v16 = [v15 createWithPreferredStyle:4 adaptorProvider:v33];
  [v16 setFullBleed:1];
  v29 = [MEMORY[0x1E695DFF8] URLWithString:@"findmy://friend/"];
  v17 = [objc_alloc(MEMORY[0x1E69B8D10]) _initWithExternalURL:v29 title:0];
  v36[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  [v16 setActions:v18];

  v31 = v12;
  v19 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v14 childTiles:0 stateIdentifier:v12 state:v16 inProgress:0];
  [v19 setAnalyticsIdentifier:@"findMyTile"];
  v20 = v11;
  if (v11)
  {
    v21 = v11;
  }

  else
  {
    v22 = [MEMORY[0x1E696AFB0] UUID];
    v21 = [v22 UUIDString];
  }

  v23 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:v21 context:a6];
  [v23 setPreferredStyle:0];
  [v23 setShowInPrearm:0];
  [v23 setColumns:1];
  [v23 setMaximumRows:1];
  [v23 setWidthClass:1];
  [v23 setHeightClass:3];
  v24 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:3];
  v25 = objc_alloc(MEMORY[0x1E69B8A90]);
  v35 = v19;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v27 = [v25 _initWithMetadata:v23 childTiles:v26 stateIdentifier:v21 state:v24 inProgress:0];

  return v27;
}

uint64_t __112__PKPassSemanticTileFactory_Event__findMyFriendsGroupTileFromFooterText_tileIdentifier_groupIdentifier_context___block_invoke(uint64_t a1)
{
  v2 = [_TtC9PassKitUI28PKPassTileForeignViewAdaptor alloc];
  v3 = [PKTileContextFindMyView createWithEventName:*(a1 + 32)];
  v4 = [(PKPassTileForeignViewAdaptor *)v2 initWithView:v3];

  return v4;
}

- (id)musicGroupTileFromItem:(id)a3 tileIdentifier:(id)a4 groupIdentifier:(id)a5 context:(int64_t)a6
{
  v46[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v43 = v10;
    v44 = v11;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v14 = [MEMORY[0x1E696AFB0] UUID];
      v12 = [v14 UUIDString];
    }

    v15 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:v12 context:a6];
    [v15 setPreferredStyle:0];
    v16 = [v9 musicItem];
    v17 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:1];
    v18 = objc_alloc(MEMORY[0x1E69B8948]);
    v19 = [v16 artwork];
    v20 = [v18 initWithData:v19 scale:PKUIScreenScale()];

    [v17 setFullBleed:1];
    [v17 setPreferredStyle:4];
    v40 = v20;
    v21 = [MEMORY[0x1E69B8AA8] createImageWithImage:v20 tintColor:0 hasColorContent:1];
    [v17 setBodyImage:v21];

    v22 = objc_alloc(MEMORY[0x1E69B8D10]);
    v23 = [v16 musicURL];
    v24 = [v22 _initWithExternalURL:v23 title:0];

    v39 = v24;
    v46[0] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
    [v17 setActions:v25];

    v41 = v15;
    v42 = v12;
    v26 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v15 childTiles:0 stateIdentifier:v12 state:v17 inProgress:0];
    if (v44)
    {
      v27 = v44;
    }

    else
    {
      v28 = [MEMORY[0x1E696AFB0] UUID];
      v27 = [v28 UUIDString];
    }

    v29 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:v27 context:a6];
    [v29 setPreferredStyle:0];
    [v29 setShowInPrearm:0];
    [v29 setColumns:1];
    [v29 setMaximumRows:1];
    [v29 setWidthClass:1];
    [v29 setHeightClass:3];
    [v29 setGroupStyle:0];
    v30 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:3];
    v31 = [v16 type];
    v32 = 0;
    if (v31 <= 2)
    {
      v32 = PKLocalizedTicketingString(&off_1E8011678[v31]->isa);
    }

    [v30 setHeader:v32];
    if (([v16 appleCurated] & 1) == 0)
    {
      v33 = PKLocalizedTicketingString(&cfstr_TileMusicHeade_2.isa);
      [v30 setHeaderActionTitle:v33];
    }

    v34 = [v16 displayName];
    [v30 setFooterActionTitle:v34];

    v35 = [v16 itemDescription];
    [v30 setFooter:v35];

    v36 = objc_alloc(MEMORY[0x1E69B8A90]);
    v45 = v26;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
    v13 = [v36 _initWithMetadata:v29 childTiles:v37 stateIdentifier:v27 state:v30 inProgress:0];

    v10 = v43;
    v11 = v44;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)reloadMusicInformationForDescriptor:(id)a3 context:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateMusicTile:v8])
  {
    objc_initWeak(&location, self);
    v10 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __91__PKPassSemanticTileFactory_Event__reloadMusicInformationForDescriptor_context_completion___block_invoke;
    v25[3] = &unk_1E8011458;
    objc_copyWeak(v28, &location);
    v11 = v8;
    v26 = v11;
    v28[1] = a4;
    v27 = v9;
    [v10 addOperation:v25];
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = __Block_byref_object_copy__0;
    v23[4] = __Block_byref_object_dispose__0;
    v24 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __91__PKPassSemanticTileFactory_Event__reloadMusicInformationForDescriptor_context_completion___block_invoke_2;
    v19[3] = &unk_1E80114D0;
    objc_copyWeak(&v22, &location);
    v12 = v11;
    v20 = v12;
    v21 = v23;
    [v10 addOperation:v19];
    v13 = [MEMORY[0x1E695DFB0] null];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91__PKPassSemanticTileFactory_Event__reloadMusicInformationForDescriptor_context_completion___block_invoke_5;
    v15[3] = &unk_1E8011520;
    objc_copyWeak(v18, &location);
    v17 = v23;
    v16 = v12;
    v18[1] = a4;
    v14 = [v10 evaluateWithInput:v13 completion:v15];

    objc_destroyWeak(v18);
    objc_destroyWeak(&v22);
    _Block_object_dispose(v23, 8);

    objc_destroyWeak(v28);
    objc_destroyWeak(&location);
  }

  else if (v9)
  {
    v9[2](v9);
  }
}

void __91__PKPassSemanticTileFactory_Event__reloadMusicInformationForDescriptor_context_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained coalesceFetchForContentWithIdentifier:@"musicContentIdentifier" descriptor:*(a1 + 32) context:*(a1 + 56) completion:*(a1 + 40)];

  v6[2](v6, v9, v8);
}

void __91__PKPassSemanticTileFactory_Event__reloadMusicInformationForDescriptor_context_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ([a2 isCanceled])
  {
    v8[2](v8, v7, 1);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v10 = [WeakRetained workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__PKPassSemanticTileFactory_Event__reloadMusicInformationForDescriptor_context_completion___block_invoke_3;
    block[3] = &unk_1E8011598;
    objc_copyWeak(&v18, (a1 + 48));
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = v11;
    v17 = v12;
    v16 = v8;
    v15 = v7;
    dispatch_async(v10, block);

    objc_destroyWeak(&v18);
  }
}

void __91__PKPassSemanticTileFactory_Event__reloadMusicInformationForDescriptor_context_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __91__PKPassSemanticTileFactory_Event__reloadMusicInformationForDescriptor_context_completion___block_invoke_4;
  v6[3] = &unk_1E8011570;
  v5 = *(a1 + 48);
  v4 = v5;
  v8 = v5;
  v7 = *(a1 + 40);
  [WeakRetained _fetchLookupItemsFromDescriptor:v3 completion:v6];
}

uint64_t __91__PKPassSemanticTileFactory_Event__reloadMusicInformationForDescriptor_context_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKPassSemanticTileFactoryCachedMusicItem alloc] initWithMusicLookupItem:v3];

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __91__PKPassSemanticTileFactory_Event__reloadMusicInformationForDescriptor_context_completion___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (([a4 isCanceled] & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__PKPassSemanticTileFactory_Event__reloadMusicInformationForDescriptor_context_completion___block_invoke_6;
    block[3] = &unk_1E80114F8;
    objc_copyWeak(v9, (a1 + 48));
    v6 = *(a1 + 32);
    v5 = v6;
    v8 = v6;
    v9[1] = *(a1 + 56);
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(v9);
  }
}

void __91__PKPassSemanticTileFactory_Event__reloadMusicInformationForDescriptor_context_completion___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained didCompleteFetchForItem:*(*(*(a1 + 40) + 8) + 40) withIdentifier:@"musicContentIdentifier" descriptor:*(a1 + 32) context:*(a1 + 56)];
    WeakRetained = v3;
  }
}

- (void)_fetchLookupItemsFromDescriptor:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = 1;
  v8 = [[PKAMSMediaRequestArtworkConfiguration alloc] initWithArtworkSize:0 artworkCropType:1 animatedArtworkType:2048.0, 2048.0];
  v9 = [v6 stringsForSemanticKey:*MEMORY[0x1E69BBF20]];
  v10 = [v6 stringsForSemanticKey:*MEMORY[0x1E69BBF18]];
  v11 = [v6 stringsForSemanticKey:*MEMORY[0x1E69BBF60]];

  v12 = v11;
  if (![v11 count])
  {
    if ([v10 count])
    {
      v7 = 0;
      v12 = v10;
    }

    else
    {
      if (![v9 count])
      {
        goto LABEL_8;
      }

      v7 = 2;
      v12 = v9;
    }
  }

  v13 = [PKAMSMediaRequestMusicItem alloc];
  v14 = [v12 copy];
  v15 = [(PKAMSMediaRequestMusicItem *)v13 initWithType:v7 musicIDs:v14 artworkConfiguration:v8];

  if (v15)
  {
    v16 = objc_alloc_init(PKAMSMediaItemsService);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __79__PKPassSemanticTileFactory_Event___fetchLookupItemsFromDescriptor_completion___block_invoke;
    v19[3] = &unk_1E8010DF8;
    v20 = v16;
    v21 = v5;
    v17 = v16;
    v18 = [(PKAMSMediaItemsService *)v17 fetchItemsWithRequest:v15 completion:v19];
  }

LABEL_8:
}

void __79__PKPassSemanticTileFactory_Event___fetchLookupItemsFromDescriptor_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v4 = [a2 firstObject];
  v3 = [v4 musicItem];
  (*(v2 + 16))(v2, v3);
}

- (BOOL)descriptorCanCreateMusicTile:(id)a3
{
  v4 = a3;
  v5 = [(PKPassSemanticTileFactory *)self featureOverrides];
  if (v5 && (v6 = v5, -[PKPassSemanticTileFactory featureOverrides](self, "featureOverrides"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isIntegrationTypeSupported:2], v7, v6, !v8))
  {
    v12 = 0;
  }

  else
  {
    v9 = [v4 stringsForSemanticKey:*MEMORY[0x1E69BBF20]];
    v10 = [v4 stringsForSemanticKey:*MEMORY[0x1E69BBF18]];
    v11 = [v4 stringsForSemanticKey:*MEMORY[0x1E69BBF60]];
    v12 = [v9 count] || objc_msgSend(v10, "count") || objc_msgSend(v11, "count") != 0;
  }

  return v12;
}

- (id)fetchDashboardTilesFromFlightTilesDescriptor:(id)a3 queueUpdates:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__PKPassSemanticTileFactory_Flight__fetchDashboardTilesFromFlightTilesDescriptor_queueUpdates___block_invoke;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v16, &location);
  v7 = v6;
  v15 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [(PKPassSemanticTileFactory *)self cachedContentForIdentifier:@"mapsContentIdentifier" descriptor:v7 context:1];
  if (!v9 && v4)
  {
    [(PKPassSemanticTileFactory *)self reloadMapsInformationForDescriptor:v7 contentIdentifier:@"mapsContentIdentifier" tileContext:1 completion:v8];
  }

  v10 = [(PKPassSemanticTileFactory *)self cachedContentForIdentifier:@"exploreGuidesContentIdentifier" descriptor:v7 context:1];
  v11 = [v10 response];
  if (!v11 && v4)
  {
    [(PKPassSemanticTileFactory *)self fetchExploreGuidesForDescriptor:v7 contentIdentifier:@"exploreGuidesContentIdentifier" tileContext:1 completion:v8];
  }

  v12 = [(PKPassSemanticTileFactory *)self _boardingPassDashboardTilesForDescriptor:v7 mapsItem:v9 exploreGuidesResponse:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v12;
}

void __95__PKPassSemanticTileFactory_Flight__fetchDashboardTilesFromFlightTilesDescriptor_queueUpdates___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained didFinishContentFetchFromTilesFetchForContext:1 descriptor:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (id)_boardingPassDashboardTilesForDescriptor:(id)a3 mapsItem:(id)a4 exploreGuidesResponse:(id)a5
{
  v113[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v98 = a4;
  v99 = a5;
  v102 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v101 = [v7 additionalTilesContentSupplier];
  v8 = [v101 flight];

  v9 = 0x1E69B8000;
  v10 = 0x1E69B8000uLL;
  v103 = v7;
  if (v8)
  {
    v11 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:@"PKPassTileContextDashboard.shareTileIdentifier" context:1];
    [v11 setPreferredStyle:0];
    v12 = [MEMORY[0x1E69B8AC0] createWithPreferredStyle:4 adaptorProvider:&__block_literal_global_130];
    [v12 setFullBleed:1];
    v13 = [objc_alloc(MEMORY[0x1E69B8D10]) _initForFlightSharing];
    v113[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:1];
    [v12 setActions:v14];

    v15 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v11 childTiles:0 stateIdentifier:@"PKPassTileContextDashboard.shareTileIdentifier" state:v12 inProgress:0];
    v16 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:@"PKPassTileContextDashboard.sharingGroupTileIdentifier" context:1];
    [v16 setPreferredStyle:0];
    [v16 setShowInPrearm:0];
    [v16 setColumns:1];
    [v16 setMaximumRows:1];
    [v16 setWidthClass:1];
    [v16 setHeightClass:3];
    [v16 setGroupStyle:0];
    v17 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:3];
    v18 = objc_alloc(MEMORY[0x1E69B8A90]);
    v112 = v15;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
    v20 = [v18 _initWithMetadata:v16 childTiles:v19 stateIdentifier:@"PKPassTileContextDashboard.sharingGroupTileIdentifier" state:v17 inProgress:0];

    [v102 addObject:v20];
    v10 = 0x1E69B8000;

    v9 = 0x1E69B8000uLL;
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateMapsTile:v103])
  {
    v96 = v21;
    v22 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:@"PKPassTileContextDashboard.mapsTileIdentifier" context:1];
    [v22 setPreferredStyle:1];
    v23 = [*(v9 + 2744) createResolvedStateWithType:1];
    [v23 setPreferredStyle:5];
    v24 = PKUIImageNamed(@"MapsArrow");
    v25 = objc_alloc(MEMORY[0x1E69B8948]);
    v26 = [v24 CGImage];
    [v24 scale];
    v27 = [v25 initWithCGImage:v26 scale:1 orientation:?];
    v28 = [MEMORY[0x1E69B8AA8] createImageWithImage:v27 tintColor:0 hasColorContent:1];
    [v23 setIcon:v28];

    v29 = [v101 mapsTileTitle];
    v30 = [MEMORY[0x1E69B8AC8] createWithContent:v29];
    [v23 setTitle:v30];

    v31 = MEMORY[0x1E69B8AC8];
    v32 = PKLocalizedFlightString(&cfstr_PassDashboardF_1.isa);
    v33 = [v31 createWithContent:v32];
    [v23 setFooter:v33];

    if ([v98 isValid])
    {
      v34 = [v98 mapItem];
      v35 = [MEMORY[0x1E696F270] urlForMapItem:v34 options:0];
      v36 = [objc_alloc(MEMORY[0x1E69B8D10]) _initWithExternalURL:v35 title:0];
      v111 = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v111 count:1];
      [v23 setActions:v37];

      v38 = 0x1E69B8000;
    }

    else
    {
      v38 = 0x1E69B8000uLL;
      if (!v98)
      {
LABEL_9:
        v39 = [objc_alloc(*(v38 + 2704)) _initWithMetadata:v22 childTiles:0 stateIdentifier:@"PKPassTileContextDashboard.mapsTileIdentifier" state:v23 inProgress:0];
        [v39 setAnalyticsIdentifier:@"mapsTile"];
        v21 = v96;
        [v96 addObject:v39];

        v10 = 0x1E69B8000uLL;
        goto LABEL_10;
      }

      v34 = [MEMORY[0x1E69B8AA8] createWithSymbolName:@"mappin.circle.fill" tintColor:23];
      [v23 setIcon:v34];
    }

    goto LABEL_9;
  }

LABEL_10:
  v40 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:@"PKPassTileContextDashboard.findMyTileIdentifier" context:1];
  [v40 setPreferredStyle:1];
  v41 = [*(v9 + 2744) createResolvedStateWithType:1];
  [v41 setPreferredStyle:5];
  v42 = MEMORY[0x1E69B8AC8];
  v43 = PKLocalizedFlightString(&cfstr_PassDashboardF_2.isa);
  v44 = [v42 createWithContent:v43];
  [v41 setTitle:v44];

  v45 = MEMORY[0x1E69B8AC8];
  v46 = PKLocalizedFlightString(&cfstr_PassDashboardF_3.isa);
  v47 = [v45 createWithContent:v46];
  [v41 setFooter:v47];

  v48 = PKUIImageNamed(@"AirTag");
  v49 = objc_alloc(MEMORY[0x1E69B8948]);
  v50 = [v48 CGImage];
  [v48 scale];
  v51 = [v49 initWithCGImage:v50 scale:1 orientation:?];
  v52 = [MEMORY[0x1E69B8AA8] createImageWithImage:v51 tintColor:0 hasColorContent:1];
  [v41 setIcon:v52];

  v53 = [MEMORY[0x1E695DFF8] URLWithString:@"findmy://items/"];
  v54 = [objc_alloc(*(v10 + 3344)) _initWithExternalURL:v53 title:0];
  v110 = v54;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
  [v41 setActions:v55];

  v56 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v40 childTiles:0 stateIdentifier:@"PKPassTileContextDashboard.findMyTileIdentifier" state:v41 inProgress:0];
  [v21 addObject:v56];

  v57 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:@"PKPassTileContextDashboard.mainGroupTileIdentifier" context:1];
  [v57 setPreferredStyle:1];
  [v57 setShowInPrearm:0];
  [v57 setColumns:2];
  [v57 setMaximumRows:1];
  [v57 setWidthClass:2];
  [v57 setHeightClass:3];
  [v57 setGroupStyle:0];
  v58 = [*(v9 + 2744) createResolvedStateWithType:3];
  v59 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v57 childTiles:v21 stateIdentifier:@"PKPassTileContextDashboard.mainGroupTileIdentifier" state:v58 inProgress:0];
  v60 = v102;
  [v102 addObject:v59];

  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateAirlineUpgradesTile:v103])
  {
    v61 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:@"PKPassTileContextDashboard.airlineUpgradesTileIdentifier" context:1];
    [v61 setPreferredStyle:0];
    v97 = [v101 transitProviderName];
    v62 = [v101 transitProviderIcon];
    v63 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:1];
    [v63 setPreferredStyle:4];
    v64 = MEMORY[0x1E69B8AC8];
    v65 = PKLocalizedFlightString(&cfstr_PassDashboardF_4.isa, &stru_1F3BD5BF0.isa, v97);
    v66 = [v64 createWithContent:v65];
    [v63 setTitle:v66];

    v67 = MEMORY[0x1E69B8AC8];
    v68 = [(PKPassSemanticTileFactory *)self _airlineUpgradesTileFooterTextForDescriptor:v103];
    v69 = [v67 createWithContent:v68];
    [v63 setFooter:v69];

    v70 = [MEMORY[0x1E69B8AA8] createImageWithImage:v62 tintColor:0 hasColorContent:1];
    [v63 setIcon:v70];

    v71 = [objc_alloc(MEMORY[0x1E69B8D10]) _initWithContext:2];
    v109 = v71;
    v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v109 count:1];
    [v63 setActions:v72];

    v73 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v61 childTiles:0 stateIdentifier:@"PKPassTileContextDashboard.airlineUpgradesTileIdentifier" state:v63 inProgress:0];
    v74 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:@"PKPassTileContextDashboard.airlineUpgradesGroupTileIdentifier" context:1];
    [v74 setPreferredStyle:0];
    [v74 setShowInPrearm:0];
    [v74 setColumns:1];
    [v74 setMaximumRows:1];
    [v74 setWidthClass:1];
    [v74 setHeightClass:3];
    [v74 setGroupStyle:0];
    v75 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:3];
    v76 = objc_alloc(MEMORY[0x1E69B8A90]);
    v108 = v73;
    v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
    v78 = [v76 _initWithMetadata:v74 childTiles:v77 stateIdentifier:@"PKPassTileContextDashboard.airlineUpgradesGroupTileIdentifier" state:v75 inProgress:0];

    [v102 addObject:v78];
    v60 = v102;
  }

  v79 = v99;
  v80 = v101;
  if (v99)
  {
    v81 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:@"PKPassTileContextDashboard.exploreGuidesTileIdentifier" context:1];
    [v81 setPreferredStyle:0];
    v82 = objc_alloc(MEMORY[0x1E696AEC0]);
    v83 = [v101 destinationAirportCode];
    v84 = [v101 destinationCityName];
    v85 = [v82 initWithFormat:@"%@.%@", v83, v84];

    v86 = MEMORY[0x1E69B8AC0];
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = __109__PKPassSemanticTileFactory_Flight___boardingPassDashboardTilesForDescriptor_mapsItem_exploreGuidesResponse___block_invoke_2;
    v104[3] = &unk_1E801B320;
    v105 = v99;
    v106 = v85;
    v87 = v85;
    v88 = [v86 createWithPreferredStyle:4 adaptorProvider:v104];
    [v88 setFullBleed:1];
    v89 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v81 childTiles:0 stateIdentifier:@"PKPassTileContextDashboard.exploreGuidesTileIdentifier" state:v88 inProgress:0];
    v90 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:@"PKPassTileContextDashboard.exploreGuidesGroupTileIdentifier" context:1];
    [v90 setPreferredStyle:0];
    [v90 setShowInPrearm:0];
    [v90 setColumns:1];
    [v90 setMaximumRows:1];
    [v90 setWidthClass:1];
    [v90 setHeightClass:3];
    [v90 setGroupStyle:0];
    v91 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:3];
    v92 = objc_alloc(MEMORY[0x1E69B8A90]);
    v107 = v89;
    v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
    v94 = [v92 _initWithMetadata:v90 childTiles:v93 stateIdentifier:@"PKPassTileContextDashboard.exploreGuidesGroupTileIdentifier" state:v91 inProgress:0];

    v80 = v101;
    [v60 addObject:v94];

    v79 = v99;
  }

  return v60;
}

_TtC9PassKitUI28PKPassTileForeignViewAdaptor *__109__PKPassSemanticTileFactory_Flight___boardingPassDashboardTilesForDescriptor_mapsItem_exploreGuidesResponse___block_invoke()
{
  v0 = [PKSimplePrimaryButtonCellView alloc];
  v1 = [(PKSimplePrimaryButtonCellView *)v0 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v2 = PKLocalizedFlightString(&cfstr_PassDashboardF_0.isa);
  [(PKSimplePrimaryButtonCellView *)v1 setTitle:v2];

  [(PKSimplePrimaryButtonCellView *)v1 setUserInteractionEnabled:0];
  v3 = [[_TtC9PassKitUI28PKPassTileForeignViewAdaptor alloc] initWithView:v1];

  return v3;
}

_TtC9PassKitUI28PKPassTileForeignViewAdaptor *__109__PKPassSemanticTileFactory_Flight___boardingPassDashboardTilesForDescriptor_mapsItem_exploreGuidesResponse___block_invoke_2(uint64_t a1)
{
  v2 = [_TtC9PassKitUI28PKPassTileForeignViewAdaptor alloc];
  v3 = objc_alloc(MEMORY[0x1E696F1E8]);
  v4 = [v3 initWithExploreGuidesResponse:*(a1 + 32) edgeInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  v5 = [(PKPassTileForeignViewAdaptor *)v2 initWithView:v4];

  [(PKPassTileForeignViewAdaptor *)v5 setViewIdentifier:*(a1 + 40)];
  return v5;
}

- (BOOL)descriptorCanCreateAirlineUpgradesTile:(id)a3
{
  v4 = a3;
  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateBoardingPassIssuerActionsTileGroup:v4])
  {
    v5 = [(PKPassSemanticTileFactory *)self descriptorCanCreateBoardingInformationTiles:v4]|| [(PKPassSemanticTileFactory *)self descriptorCanCreateAdditionalServicesTile:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchDashboardAirlineUpgradesTilesFromFlightTilesDescriptor:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateBoardingPassIssuerActionsTileGroup:v4])
  {
    v6 = [(PKPassSemanticTileFactory *)self _boardingPassIssuerActionTilesForDescriptor:v4];
    v7 = [(PKPassSemanticTileFactory *)self issuerActionsGroupTileFromTiles:v6 groupIdentifier:@"PKPassTileContextDashboardDetails.issuerActionGroupTileIdentifier" context:2];
    [v5 addObject:v7];
  }

  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateLoungeTile:v4])
  {
    v8 = [(PKPassSemanticTileFactory *)self _loungeTileFromDescriptor:v4 groupIdentifier:@"PKPassTileContextDashboardDetails.loungeGroupTileIdentifier" context:2];
    [v5 addObject:v8];
  }

  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateBoardingInformationTiles:v4])
  {
    v9 = [(PKPassSemanticTileFactory *)self _boardingInformationGroupTileFromDescriptor:v4 groupIdentifier:@"PKPassTileContextDashboardDetails.boardingInformationGroupTileIdentifier" context:2];
    [v5 addObject:v9];
  }

  v10 = [(PKPassSemanticTileFactory *)self _baggageInformationGroupTileFromDescriptor:v4 groupIdentifier:@"PKPassTileContextDashboardDetails.baggageInformationGroupTileIdentifier" context:2];
  [v5 addObject:v10];

  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateAdditionalServicesTile:v4])
  {
    v11 = [(PKPassSemanticTileFactory *)self _additionalServicesGroupTileFromDescriptor:v4 groupIdentifier:@"PKPassTileContextDashboardDetails.additionalServicesGroupTileIdentifier" context:2];
    [v5 addObject:v11];
  }

  v12 = [v5 copy];

  return v12;
}

- (id)_airlineUpgradesTileFooterTextForDescriptor:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateBoardingPassIssuerActionsTileGroup:v4])
  {
    v6 = PKLocalizedFlightString(&cfstr_PassDashboardF_5.isa);
    [v5 addObject:v6];
  }

  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateBoardingInformationTiles:v4])
  {
    v7 = PKLocalizedFlightString(&cfstr_PassDashboardF_6.isa);
    [v5 addObject:v7];
  }

  v8 = PKLocalizedFlightString(&cfstr_PassDashboardD.isa);
  [v5 addObject:v8];

  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateAdditionalServicesTile:v4])
  {
    v9 = PKLocalizedFlightString(&cfstr_PassDashboardD_0.isa);
    [v5 addObject:v9];
  }

  if ([v5 count] >= 3)
  {
    [v5 removeObjectsInRange:{2, objc_msgSend(v5, "count") - 2}];
    v10 = PKLocalizedTicketingString(&cfstr_TileAdditional_0.isa);
    [v5 addObject:v10];
  }

  v11 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v5];

  return v11;
}

- (BOOL)descriptorCanCreateExploreGuidesTile:(id)a3
{
  v3 = [a3 additionalTilesContentSupplier];
  v4 = [v3 destinationLocation];
  if (v4)
  {
    v5 = [v3 destinationAirportCode];
    if (v5)
    {
      v6 = [v3 destinationCityName];
      v7 = v6 != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)fetchExploreGuidesForDescriptor:(id)a3 contentIdentifier:(id)a4 tileContext:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateExploreGuidesTile:v10])
  {
    objc_initWeak(location, self);
    v13 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __110__PKPassSemanticTileFactory_Flight__fetchExploreGuidesForDescriptor_contentIdentifier_tileContext_completion___block_invoke;
    v42[3] = &unk_1E801B348;
    objc_copyWeak(v46, location);
    v14 = v11;
    v43 = v14;
    v15 = v10;
    v44 = v15;
    v46[1] = a5;
    v45 = v12;
    [v13 addOperation:v42];
    v29 = v11;
    v30 = a5;
    v16 = [v15 additionalTilesContentSupplier];
    v17 = objc_alloc(MEMORY[0x1E696F1E0]);
    v18 = [v16 destinationLocation];
    [v18 coordinate];
    v20 = v19;
    v22 = v21;
    v23 = [v16 destinationAirportCode];
    v24 = [v16 destinationCityName];
    v25 = [v17 initWithReferenceLocation:v23 airportCode:v24 cityName:2 supportedPunchoutType:{v20, v22}];

    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = __Block_byref_object_copy__32;
    v40[4] = __Block_byref_object_dispose__32;
    v41 = 0;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __110__PKPassSemanticTileFactory_Flight__fetchExploreGuidesForDescriptor_contentIdentifier_tileContext_completion___block_invoke_216;
    v36[3] = &unk_1E80114D0;
    objc_copyWeak(&v39, location);
    v26 = v25;
    v37 = v26;
    v38 = v40;
    [v13 addOperation:v36];
    v27 = [MEMORY[0x1E695DFB0] null];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __110__PKPassSemanticTileFactory_Flight__fetchExploreGuidesForDescriptor_contentIdentifier_tileContext_completion___block_invoke_4;
    v31[3] = &unk_1E801B398;
    objc_copyWeak(v35, location);
    v34 = v40;
    v32 = v14;
    v33 = v15;
    v35[1] = v30;
    v28 = [v13 evaluateWithInput:v27 completion:v31];

    objc_destroyWeak(v35);
    objc_destroyWeak(&v39);
    _Block_object_dispose(v40, 8);

    objc_destroyWeak(v46);
    objc_destroyWeak(location);
    v11 = v29;
  }

  else if (v12)
  {
    v12[2](v12);
  }
}

void __110__PKPassSemanticTileFactory_Flight__fetchExploreGuidesForDescriptor_contentIdentifier_tileContext_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [WeakRetained coalesceFetchForContentWithIdentifier:*(a1 + 32) descriptor:*(a1 + 40) context:*(a1 + 64) completion:*(a1 + 48)];

  v6[2](v6, v9, v8);
}

void __110__PKPassSemanticTileFactory_Flight__fetchExploreGuidesForDescriptor_contentIdentifier_tileContext_completion___block_invoke_216(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ([a2 isCanceled])
  {
    v8[2](v8, v7, 1);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v10 = [WeakRetained workQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __110__PKPassSemanticTileFactory_Flight__fetchExploreGuidesForDescriptor_contentIdentifier_tileContext_completion___block_invoke_2;
    v13[3] = &unk_1E80114A8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = v11;
    v17 = v12;
    v16 = v8;
    v15 = v7;
    dispatch_async(v10, v13);
  }
}

void __110__PKPassSemanticTileFactory_Flight__fetchExploreGuidesForDescriptor_contentIdentifier_tileContext_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __110__PKPassSemanticTileFactory_Flight__fetchExploreGuidesForDescriptor_contentIdentifier_tileContext_completion___block_invoke_3;
  v5[3] = &unk_1E801B370;
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  v6 = *(a1 + 40);
  [v2 getResponseWithCompletionHandler:v5];
}

uint64_t __110__PKPassSemanticTileFactory_Flight__fetchExploreGuidesForDescriptor_contentIdentifier_tileContext_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKPassSemanticTileFactoryCachedExploreGuidesItem alloc] initWithResponse:v3];

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __110__PKPassSemanticTileFactory_Flight__fetchExploreGuidesForDescriptor_contentIdentifier_tileContext_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (([a4 isCanceled] & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __110__PKPassSemanticTileFactory_Flight__fetchExploreGuidesForDescriptor_contentIdentifier_tileContext_completion___block_invoke_5;
    block[3] = &unk_1E801A2A0;
    objc_copyWeak(v11, (a1 + 56));
    v10 = *(a1 + 48);
    v8 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 64);
    v9 = v5;
    v11[1] = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(v11);
  }
}

void __110__PKPassSemanticTileFactory_Flight__fetchExploreGuidesForDescriptor_contentIdentifier_tileContext_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained didCompleteFetchForItem:*(*(*(a1 + 48) + 8) + 40) withIdentifier:*(a1 + 32) descriptor:*(a1 + 40) context:*(a1 + 64)];
    WeakRetained = v3;
  }
}

- (BOOL)descriptorCanCreateBoardingPassIssuerActionsTileGroup:(id)a3
{
  v4 = [a3 additionalTilesContentSupplier];
  v5 = PKFlightTileIssuerActionForTypeInDescriptor(0, v4);

  if (v5)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    v8 = v7;
    if (v7 == 7)
    {
      break;
    }

    ++v7;
    v9 = [a3 additionalTilesContentSupplier];
    v10 = PKFlightTileIssuerActionForTypeInDescriptor(v8 + 1, v9);
  }

  while (!v10);
  return v8 < 7;
}

- (id)_boardingPassIssuerActionTilesForDescriptor:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 0; i != 8; ++i)
  {
    v5 = [v3 additionalTilesContentSupplier];
    v6 = PKFlightTileIssuerActionForTypeInDescriptor(i, v5);

    if (v6)
    {
      v7 = [MEMORY[0x1E696AFB0] UUID];
      v8 = [v7 UUIDString];

      v9 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:v8 context:2];
      [v9 setPreferredStyle:1];
      v10 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:1];
      [v10 setPreferredStyle:5];
      v11 = MEMORY[0x1E69B8AC8];
      if (i > 3)
      {
        v13 = @"TILE_ISSUER_ACTION_WEBSITE";
        if (i != 6)
        {
          v13 = @"TILE_ISSUER_ACTION_MESSAGE_VIA_BUSINESS_CHAT";
        }

        v14 = @"TILE_ISSUER_ACTION_CALL";
        if (i != 4)
        {
          v14 = @"TILE_ISSUER_ACTION_EMAIL";
        }

        if (i <= 5)
        {
          v12 = v14;
        }

        else
        {
          v12 = v13;
        }
      }

      else if (i > 1)
      {
        if (i == 2)
        {
          v12 = @"TILE_ISSUER_ACTION_ORDER_MEAL";
        }

        else
        {
          v12 = @"TILE_ISSUER_ACTION_PURCHASE_ENTERTAINMENT";
        }
      }

      else
      {
        v12 = @"TILE_ISSUER_ACTION_MANAGE";
        if (i)
        {
          if (MGGetBoolAnswer())
          {
            v12 = @"TILE_ISSUER_ACTION_PURCHASE_WLAN";
          }

          else
          {
            v12 = @"TILE_ISSUER_ACTION_PURCHASE_WIFI";
          }
        }
      }

      v15 = PKLocalizedFlightString(&v12->isa);
      v16 = [v11 createWithContent:v15];
      [v10 setBody:v16];

      v17 = MEMORY[0x1E69B8AA8];
      v18 = PKFlightTileIssuerActionSymbolForType(i);
      v19 = PKFlightTileIssuerActionSymbolForType(i);
      if ([v19 containsString:@".fill"])
      {
        v20 = [v19 stringByReplacingOccurrencesOfString:@".fill" withString:&stru_1F3BD7330];
      }

      else
      {
        v20 = v19;
      }

      v21 = v20;

      v22 = [v17 createWithSymbolName:v18 contextMenuSymbolName:v21 tintColor:5];
      [v10 setIcon:v22];

      v28[0] = v6;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      [v10 setActions:v23];

      v24 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v9 childTiles:0 stateIdentifier:v8 state:v10 inProgress:0];
      v25 = qword_1E801B438[i];
      [v24 setAnalyticsIdentifier:off_1E801B3F8[i]];
      [v24 setAxID:*v25];
      [v27 addObject:v24];
    }
  }

  return v27;
}

- (BOOL)descriptorCanCreateLoungeTile:(id)a3
{
  v3 = [a3 stringsForSemanticKey:*MEMORY[0x1E69BBF38]];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)_loungeTileFromDescriptor:(id)a3 groupIdentifier:(id)a4 context:(int64_t)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69B8AB0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 _createMetadataForType:0 identifier:@"PKPassTileContextDashboardDetails.loungeMapTileIdentifier" context:a5];
  [v10 setPreferredStyle:0];
  v11 = [v9 stringsForSemanticKey:*MEMORY[0x1E69BBF38]];
  v12 = [v9 stringForSemanticKey:*MEMORY[0x1E69BBD90]];

  v13 = MEMORY[0x1E69B8AC0];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __87__PKPassSemanticTileFactory_Flight___loungeTileFromDescriptor_groupIdentifier_context___block_invoke;
  v28 = &unk_1E801B320;
  v29 = v11;
  v30 = v12;
  v14 = v12;
  v15 = v11;
  v16 = [v13 createWithPreferredStyle:4 adaptorProvider:&v25];
  [v16 setFullBleed:{1, v25, v26, v27, v28}];
  v17 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v10 childTiles:0 stateIdentifier:@"PKPassTileContextDashboardDetails.loungeMapTileIdentifier" state:v16 inProgress:0];
  v18 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:v8 context:a5];
  [v18 setPreferredStyle:0];
  [v18 setShowInPrearm:0];
  [v18 setColumns:1];
  [v18 setMaximumRows:1];
  [v18 setWidthClass:1];
  [v18 setHeightClass:3];
  [v18 setGroupStyle:2];
  v19 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:3];
  v20 = PKLocalizedFlightString(&cfstr_PassDashboardD_1.isa);
  [v19 setHeader:v20];

  v21 = objc_alloc(MEMORY[0x1E69B8A90]);
  v31[0] = v17;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v23 = [v21 _initWithMetadata:v18 childTiles:v22 stateIdentifier:v8 state:v19 inProgress:0];

  return v23;
}

_TtC9PassKitUI28PKPassTileForeignViewAdaptor *__87__PKPassSemanticTileFactory_Flight___loungeTileFromDescriptor_groupIdentifier_context___block_invoke(uint64_t a1)
{
  v2 = [_TtC9PassKitUI28PKPassTileForeignViewAdaptor alloc];
  v3 = [*(a1 + 32) firstObject];
  v4 = [PKTileContextMapsView createForMapsPlaceID:v3 caption:*(a1 + 40)];
  v5 = [(PKPassTileForeignViewAdaptor *)v2 initWithView:v4];

  [(PKPassTileForeignViewAdaptor *)v5 setViewPreferredSizing:1];
  return v5;
}

- (BOOL)descriptorCanCreateBoardingInformationTiles:(id)a3
{
  v3 = [a3 additionalTilesContentSupplier];
  v4 = [v3 upgradeURL];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 changeSeatURL];
    v5 = v6 != 0;
  }

  return v5;
}

- (id)_boardingInformationGroupTileFromDescriptor:(id)a3 groupIdentifier:(id)a4 context:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [v7 semantics];
  v10 = [v7 additionalTilesContentSupplier];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = [v7 stringsForSemanticKey:*MEMORY[0x1E69BBF40]];
  LOBYTE(a4) = PKPassengerCapabilitiesFromStrings();
  v12 = [PKTileContextDetailsTableViewEntry alloc];
  v13 = PKLocalizedFlightString(&cfstr_PassDashboardD_2.isa);
  if ((a4 & 8) != 0)
  {
    v14 = @"PASS_DASHBOARD_DETAILS_TILE_INCLUDED_LABEL";
  }

  else
  {
    v14 = @"PASS_DASHBOARD_DETAILS_TILE_NOT_INCLUDED_LABEL";
  }

  v15 = PKLocalizedFlightString(&v14->isa);
  v16 = [(PKTileContextDetailsTableViewEntry *)v12 initWithTitle:v13 detail:v15 style:0 axID:@"priorityBoarding"];
  [v11 addObject:v16];

  v17 = [v10 upgradeURL];
  if (v17 && [v11 count])
  {
    v18 = [PKTileContextDetailsTableViewEntry alloc];
    v19 = PKLocalizedFlightString(&cfstr_PassDashboardD_5.isa);
    v20 = [(PKTileContextDetailsTableViewEntry *)v18 initWithTitle:v19 actionURL:v17 axID:@"changeSeat"];
    [v11 addObject:v20];

    v21 = [(PKPassSemanticTileFactory *)self tableViewTileFromEntries:v11 tileIdentifier:@"PKPassTileContextDashboardDetails.priorityBoardingTileIdentifier" context:a5];
    [v56 addObject:v21];
  }

  v46 = self;
  v50 = v17;
  v52 = v11;
  v22 = v8;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = [v7 stringForSemanticKey:*MEMORY[0x1E69BBE98]];
  if (v24)
  {
    v25 = [PKTileContextDetailsTableViewEntry alloc];
    v26 = PKLocalizedFlightString(&cfstr_PassDashboardD_6.isa);
    v27 = [(PKTileContextDetailsTableViewEntry *)v25 initWithTitle:v26 detail:v24 style:0 axID:@"class"];
    [v23 addObject:v27];
  }

  v49 = v24;
  v54 = v9;
  v48 = [v9 objectForKeyedSubscript:{*MEMORY[0x1E69BBCB0], v46}];
  v28 = [objc_alloc(MEMORY[0x1E69B91D8]) initFromSemantic:v48];
  v29 = [v28 firstSeatContainingAttributes:3];
  v30 = [v29 airlineSeat];
  if (v30)
  {
    v31 = [PKTileContextDetailsTableViewEntry alloc];
    v32 = PKLocalizedFlightString(&cfstr_PassDashboardD_7.isa);
    v33 = [(PKTileContextDetailsTableViewEntry *)v31 initWithTitle:v32 detail:v30 style:0 axID:@"seat"];
    [v23 addObject:v33];
  }

  v53 = v10;
  v34 = [v10 changeSeatURL];
  v35 = v56;
  if (v34 && [v23 count])
  {
    v36 = [PKTileContextDetailsTableViewEntry alloc];
    v37 = PKLocalizedFlightString(&cfstr_PassDashboardD_8.isa);
    v38 = [(PKTileContextDetailsTableViewEntry *)v36 initWithTitle:v37 actionURL:v34 axID:@"changeSeat"];
    [v23 addObject:v38];

    v39 = [v47 tableViewTileFromEntries:v23 tileIdentifier:@"PKPassTileContextDashboardDetails.classSeatUpgradeTileIdentifier" context:a5];
    [v56 addObject:v39];
  }

  if ([v56 count])
  {
    v40 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:v22 context:a5];
    [v40 setPreferredStyle:0];
    [v40 setShowInPrearm:0];
    [v40 setColumns:1];
    [v40 setMaximumRows:2];
    [v40 setWidthClass:1];
    [v40 setHeightClass:3];
    [v40 setGroupStyle:2];
    v41 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:3];
    v42 = PKLocalizedFlightString(&cfstr_PassDashboardD_9.isa);
    [v41 setHeader:v42];

    v43 = PKLocalizedFlightString(&cfstr_PassDashboardD_10.isa);
    [v41 setFooter:v43];

    v44 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v40 childTiles:v56 stateIdentifier:v22 state:v41 inProgress:0];
    v35 = v56;
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

- (id)_baggageInformationGroupTileFromDescriptor:(id)a3 groupIdentifier:(id)a4 context:(int64_t)a5
{
  v54[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v52 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = [v7 stringsForSemanticKey:*MEMORY[0x1E69BBF40]];
  v9 = PKPassengerCapabilitiesFromStrings();
  v10 = [PKTileContextDetailsTableViewEntry alloc];
  v11 = PKLocalizedFlightString(&cfstr_PassDashboardD_11.isa);
  if (v9)
  {
    v12 = @"PASS_DASHBOARD_DETAILS_TILE_INCLUDED_LABEL";
  }

  else
  {
    v12 = @"PASS_DASHBOARD_DETAILS_TILE_NOT_INCLUDED_LABEL";
  }

  v13 = PKLocalizedFlightString(&v12->isa);
  v14 = [(PKTileContextDetailsTableViewEntry *)v10 initWithTitle:v11 detail:v13 style:0 axID:@"personalItem"];
  [v8 addObject:v14];

  v15 = [PKTileContextDetailsTableViewEntry alloc];
  v16 = PKLocalizedFlightString(&cfstr_PassDashboardD_12.isa);
  if ((v9 & 2) != 0)
  {
    v17 = @"PASS_DASHBOARD_DETAILS_TILE_INCLUDED_LABEL";
  }

  else
  {
    v17 = @"PASS_DASHBOARD_DETAILS_TILE_NOT_INCLUDED_LABEL";
  }

  v18 = PKLocalizedFlightString(&v17->isa);
  v19 = [(PKTileContextDetailsTableViewEntry *)v15 initWithTitle:v16 detail:v18 style:0 axID:@"carryon"];
  [v8 addObject:v19];

  v51 = v7;
  v20 = [v7 additionalTilesContentSupplier];
  v21 = [v20 purchaseAdditionalBaggageURL];
  if (v21)
  {
    v22 = [PKTileContextDetailsTableViewEntry alloc];
    v23 = PKLocalizedFlightString(&cfstr_PassDashboardD_13.isa);
    v24 = [(PKTileContextDetailsTableViewEntry *)v22 initWithTitle:v23 actionURL:v21 axID:@"addBags"];
    [v8 addObject:v24];
  }

  v49 = v21;
  v25 = [v20 trackBagsURL];
  if (v25)
  {
    v26 = [PKTileContextDetailsTableViewEntry alloc];
    v27 = [v20 transitProviderName];
    v28 = PKLocalizedFlightString(&cfstr_PassDashboardD_14.isa, &stru_1F3BD5BF0.isa, v27);
    v29 = [(PKTileContextDetailsTableViewEntry *)v26 initWithTitle:v28 actionURL:v25 axID:@"trackBags"];
    [v8 addObject:v29];
  }

  v30 = [v20 reportLostBagURL];
  if (v30)
  {
    v31 = [PKTileContextDetailsTableViewEntry alloc];
    v32 = PKLocalizedFlightString(&cfstr_PassDashboardD_15.isa);
    v33 = [(PKTileContextDetailsTableViewEntry *)v31 initWithTitle:v32 actionURL:v30 axID:@"reportLostBaggage"];
    [v8 addObject:v33];
  }

  v34 = [(PKPassSemanticTileFactory *)self tableViewTileFromEntries:v8 tileIdentifier:@"PKPassTileContextDashboardDetails.baggageInformationTileIdentifier" context:a5];
  v35 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:v52 context:a5];
  [v35 setPreferredStyle:0];
  [v35 setShowInPrearm:0];
  [v35 setColumns:1];
  [v35 setMaximumRows:1];
  [v35 setWidthClass:1];
  [v35 setHeightClass:3];
  [v35 setGroupStyle:2];
  v36 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:3];
  v37 = PKLocalizedFlightString(&cfstr_PassDashboardD.isa);
  [v36 setHeader:v37];

  v38 = [v20 bagPolicyURL];
  if (v38)
  {
    v39 = PKLocalizedFlightString(&cfstr_PassDashboardD_16.isa);
    [v36 setFooter:v39];

    v40 = objc_alloc(MEMORY[0x1E69B8D10]);
    v41 = PKLocalizedFlightString(&cfstr_PassDashboardD_17.isa);
    v42 = [v40 _initWithExternalURL:v38 title:v41];

    v54[0] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
    [v36 setFooterActions:v43];
  }

  v44 = objc_alloc(MEMORY[0x1E69B8A90]);
  v53 = v34;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
  v46 = [v44 _initWithMetadata:v35 childTiles:v45 stateIdentifier:v52 state:v36 inProgress:0];

  return v46;
}

- (BOOL)descriptorCanCreateAdditionalServicesTile:(id)a3
{
  v3 = [a3 additionalTilesContentSupplier];
  v4 = [v3 accessibilityURL];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 requestWheelchairURL];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 registerServiceAnimalURL];
      if (v7)
      {
        v5 = 1;
      }

      else
      {
        v8 = [v3 purchaseLoungeAccessURL];
        v5 = v8 != 0;
      }
    }
  }

  return v5;
}

- (id)_additionalServicesGroupTileFromDescriptor:(id)a3 groupIdentifier:(id)a4 context:(int64_t)a5
{
  v38[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695DF70];
  v36 = a4;
  v9 = a3;
  v10 = objc_alloc_init(v8);
  v11 = [v9 additionalTilesContentSupplier];

  v12 = [v11 accessibilityURL];
  if (v12)
  {
    v13 = [PKTileContextDetailsTableViewEntry alloc];
    v14 = PKLocalizedFlightString(&cfstr_PassDashboardD_18.isa);
    v15 = [(PKTileContextDetailsTableViewEntry *)v13 initWithTitle:v14 actionURL:v12 axID:@"specialAssistance"];
    [v10 addObject:v15];
  }

  v37 = v12;
  v16 = [v11 requestWheelchairURL];
  if (v16)
  {
    v17 = [PKTileContextDetailsTableViewEntry alloc];
    v18 = PKLocalizedFlightString(&cfstr_PassDashboardD_19.isa);
    v19 = [(PKTileContextDetailsTableViewEntry *)v17 initWithTitle:v18 actionURL:v16 axID:@"wheelchair"];
    [v10 addObject:v19];
  }

  v20 = [v11 registerServiceAnimalURL];
  if (v20)
  {
    v21 = [PKTileContextDetailsTableViewEntry alloc];
    v22 = PKLocalizedFlightString(&cfstr_PassDashboardD_20.isa);
    v23 = [(PKTileContextDetailsTableViewEntry *)v21 initWithTitle:v22 actionURL:v20 axID:@"serviceAnimal"];
    [v10 addObject:v23];
  }

  v24 = [v11 purchaseLoungeAccessURL];
  if (v24)
  {
    v25 = [PKTileContextDetailsTableViewEntry alloc];
    v26 = PKLocalizedFlightString(&cfstr_PassDashboardD_21.isa);
    v27 = [(PKTileContextDetailsTableViewEntry *)v25 initWithTitle:v26 actionURL:v24 axID:@"loungePass"];
    [v10 addObject:v27];
  }

  v28 = [(PKPassSemanticTileFactory *)self tableViewTileFromEntries:v10 tileIdentifier:@"PKPassTileContextDashboardDetails.additionalServicesTileIdentifier" context:a5];
  v29 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:v36 context:a5];
  [v29 setPreferredStyle:0];
  [v29 setShowInPrearm:0];
  [v29 setColumns:1];
  [v29 setMaximumRows:1];
  [v29 setWidthClass:1];
  [v29 setHeightClass:3];
  [v29 setGroupStyle:2];
  v30 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:3];
  v31 = PKLocalizedFlightString(&cfstr_PassDashboardD_0.isa);
  [v30 setHeader:v31];

  v32 = objc_alloc(MEMORY[0x1E69B8A90]);
  v38[0] = v28;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v34 = [v32 _initWithMetadata:v29 childTiles:v33 stateIdentifier:v36 state:v30 inProgress:0];

  return v34;
}

- (PKPassSemanticTileFactory)init
{
  v18.receiver = self;
  v18.super_class = PKPassSemanticTileFactory;
  v2 = [(PKPassSemanticTileFactory *)&v18 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    currentlyCachedKeys = v2->_currentlyCachedKeys;
    v2->_currentlyCachedKeys = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    tileContentCache = v2->_tileContentCache;
    v2->_tileContentCache = v7;

    [(NSCache *)v2->_tileContentCache setEvictsObjectsWhenApplicationEntersBackground:0];
    [(NSCache *)v2->_tileContentCache setDelegate:v2];
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    outstandingContentFetchCompletions = v2->_outstandingContentFetchCompletions;
    v2->_outstandingContentFetchCompletions = v9;

    v2->_tileUpdatesLock._os_unfair_lock_opaque = 0;
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v12 = dispatch_queue_create("com.apple.passkitui.semantictilefactory", v11);
    workQueue = v2->_workQueue;
    v2->_workQueue = v12;

    v14 = [MEMORY[0x1E69B8EF8] sharedService];
    v15 = [v14 supportedRegionFeatureOfType:18 didFailOSVersionRequirements:0];
    featureOverrides = v2->_featureOverrides;
    v2->_featureOverrides = v15;
  }

  return v2;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (![(NSHashTable *)self->_observers containsObject:?])
  {
    [(NSHashTable *)self->_observers addObject:v4];
  }
}

- (void)prewarmTileContentForDescriptor:(id)a3 context:(int64_t)a4
{
  v6 = a3;
  if (a4 == 5)
  {
    v7 = v6;
    [(PKPassSemanticTileFactory *)self prewarmUpcomingPassInformationDetailsTilesForDescriptor:v6];
  }

  else
  {
    if (a4 != 2)
    {
      goto LABEL_6;
    }

    v7 = v6;
    [(PKPassSemanticTileFactory *)self prewarmDashboardDetailsTilesForDescriptor:v6];
  }

  v6 = v7;
LABEL_6:
}

- (void)prewarmDashboardDetailsTilesForDescriptor:(id)a3
{
  v6 = a3;
  v4 = [v6 additionalTilesContentSupplier];
  v5 = [v4 conformsToProtocol:&unk_1F3D428D0];

  if (v5)
  {
    [(PKPassSemanticTileFactory *)self prewarmEventTileContentForDescriptor:v6 context:2];
  }
}

- (void)prewarmUpcomingPassInformationDetailsTilesForDescriptor:(id)a3
{
  v6 = a3;
  v4 = [v6 additionalTilesContentSupplier];
  v5 = [v4 conformsToProtocol:&unk_1F3D428D0];

  if (v5)
  {
    [(PKPassSemanticTileFactory *)self prewarmEventTileContentForDescriptor:v6 context:5];
  }
}

- (void)fetchTilesForDescriptor:(id)a3 context:(int64_t)a4 queueUpdates:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__PKPassSemanticTileFactory_fetchTilesForDescriptor_context_queueUpdates_completion___block_invoke;
  v15[3] = &unk_1E801C0D8;
  v17 = v11;
  v13 = v11;
  objc_copyWeak(v18, &location);
  v16 = v10;
  v18[1] = a4;
  v19 = a5;
  v14 = v10;
  dispatch_async(workQueue, v15);

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

void __85__PKPassSemanticTileFactory_fetchTilesForDescriptor_context_queueUpdates_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _createTilesFromDescriptor:*(a1 + 32) context:*(a1 + 56) queueUpdates:*(a1 + 64)];
  (*(v2 + 16))(v2, v3);
}

- (id)_createTilesFromDescriptor:(id)a3 context:(int64_t)a4 queueUpdates:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = v8;
  v10 = MEMORY[0x1E695E0F0];
  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v11 = [(PKPassSemanticTileFactory *)self fetchDashboardTilesForDescriptor:v8 queueUpdates:v5];
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_13;
      }

      v11 = [(PKPassSemanticTileFactory *)self fetchDashboardDetailsTilesForDescriptor:v8 queueUpdates:v5];
    }
  }

  else
  {
    switch(a4)
    {
      case 3:
        v12 = [v8 pass];
        v10 = [(PKPassSemanticTileFactory *)self additionalInfoFieldsGroupTilesForPass:v12];

        goto LABEL_13;
      case 4:
        v11 = [(PKPassSemanticTileFactory *)self fetchUpcomingPassInformationTilesForDescriptor:v8 queueUpdates:v5];
        break;
      case 5:
        v11 = [(PKPassSemanticTileFactory *)self fetchUpcomingPassInformationDetailsTilesForDescriptor:v8 queueUpdates:v5];
        break;
      default:
        goto LABEL_13;
    }
  }

  v10 = v11;
LABEL_13:

  return v10;
}

- (id)fetchDashboardTilesForDescriptor:(id)a3 queueUpdates:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 additionalTilesContentSupplier];
  v8 = [v7 conformsToProtocol:&unk_1F3D428D0];

  if (v8)
  {
    v9 = [(PKPassSemanticTileFactory *)self fetchDashboardTilesFromEventTilesDescriptor:v6 queueUpdates:v4];
LABEL_5:
    v12 = v9;
    goto LABEL_7;
  }

  v10 = [v6 additionalTilesContentSupplier];
  v11 = [v10 conformsToProtocol:&unk_1F3D5D580];

  if (v11)
  {
    v9 = [(PKPassSemanticTileFactory *)self fetchDashboardTilesFromFlightTilesDescriptor:v6 queueUpdates:v4];
    goto LABEL_5;
  }

  v12 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v12;
}

- (id)fetchDashboardDetailsTilesForDescriptor:(id)a3 queueUpdates:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 additionalTilesContentSupplier];
  v8 = [v7 conformsToProtocol:&unk_1F3D428D0];

  if (v8)
  {
    v9 = [(PKPassSemanticTileFactory *)self fetchDashboardEventGuideTilesFromEventTilesDescriptor:v6 queueUpdates:v4];
LABEL_5:
    v12 = v9;
    goto LABEL_7;
  }

  v10 = [v6 additionalTilesContentSupplier];
  v11 = [v10 conformsToProtocol:&unk_1F3D5D580];

  if (v11)
  {
    v9 = [(PKPassSemanticTileFactory *)self fetchDashboardAirlineUpgradesTilesFromFlightTilesDescriptor:v6];
    goto LABEL_5;
  }

  v12 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v12;
}

- (id)fetchUpcomingPassInformationTilesForDescriptor:(id)a3 queueUpdates:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 additionalTilesContentSupplier];
  v8 = [v7 conformsToProtocol:&unk_1F3D428D0];

  if (v8)
  {
    v9 = [(PKPassSemanticTileFactory *)self fetchUpcomingPassInformationTilesFromEventTilesDescriptor:v6 queueUpdates:v4];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (id)fetchUpcomingPassInformationDetailsTilesForDescriptor:(id)a3 queueUpdates:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 additionalTilesContentSupplier];
  v8 = [v7 conformsToProtocol:&unk_1F3D428D0];

  if (v8)
  {
    v9 = [(PKPassSemanticTileFactory *)self fetchUpcomingPassInformationEventGuideTilesFromEventTilesDescriptor:v6 queueUpdates:v4];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (id)additionalInfoFieldsTileForPass:(id)a3 context:(int64_t)a4 title:(id)a5
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a5;
  v8 = [v6 additionalInfoFields];
  if (![v8 count])
  {
    v32 = 0;
    goto LABEL_37;
  }

  [v6 upcomingPassInformation];
  v55 = v54 = v7;
  v53 = v8;
  if (v55)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v9 = [v55 groups];
    v10 = [v9 countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v10)
    {
      v11 = v10;
      v52 = v6;
      v56 = 0;
      v57 = *v63;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v63 != v57)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v62 + 1) + 8 * i);
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v14 = [v13 entries];
          v15 = [v14 countByEnumeratingWithState:&v58 objects:v70 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = v9;
            v18 = *v59;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v59 != v18)
                {
                  objc_enumerationMutation(v14);
                }

                v20 = *(*(&v58 + 1) + 8 * j);
                if ([v20 isActive])
                {
                  v21 = [v20 content];
                  v22 = [v21 additionalInfoFields];
                  v23 = [v22 count];

                  if (v23)
                  {
                    v56 = 1;
                    goto LABEL_19;
                  }
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v58 objects:v70 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }

LABEL_19:
            v9 = v17;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v62 objects:v71 count:16];
      }

      while (v11);

      v6 = v52;
      v8 = v53;
      v7 = v54;
      if (v56)
      {
        v24 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:1];
        [v24 setPreferredStyle:4];
        v25 = [MEMORY[0x1E69B8AC8] createWithContent:v54];
        [v24 setTitle:v25];

        v26 = MEMORY[0x1E69B8AC8];
        v27 = PKLocalizedTicketingString(&cfstr_TileAdditional_1.isa);
        v28 = [v26 createWithContent:v27];
        [v24 setFooter:v28];

        v29 = [MEMORY[0x1E69B8AA0] createDefaultDisclosureAccessoryImage];
        [v24 setAccessory:v29];

        v30 = [objc_alloc(MEMORY[0x1E69B8D10]) _initWithContext:3];
        v69 = v30;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
        [v24 setActions:v31];
LABEL_35:

        v8 = v53;
        goto LABEL_36;
      }
    }

    else
    {
    }
  }

  if ([v8 count] == 1)
  {
    v24 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:1];
    [v24 setPreferredStyle:4];
    v30 = [v8 firstObject];
    v33 = MEMORY[0x1E69B8AC8];
    v34 = [v30 label];
    v35 = [v33 createWithContent:v34];
    [v24 setTitle:v35];

    v36 = MEMORY[0x1E69B8AC8];
    v31 = [v30 value];
    v37 = [v36 createWithContent:v31];
    [v24 setFooter:v37];
LABEL_34:

    goto LABEL_35;
  }

  if ([v8 count] >= 2)
  {
    v24 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:1];
    [v24 setPreferredStyle:4];
    v38 = [MEMORY[0x1E69B8AC8] createWithContent:v7];
    [v24 setTitle:v38];

    v39 = [v8 count];
    v40 = [v8 objectAtIndexedSubscript:0];
    v41 = [v40 label];
    v42 = v41;
    if (v39 < 3)
    {
      v67[0] = v41;
      v43 = [v8 objectAtIndexedSubscript:1];
      v44 = [v43 label];
      v67[1] = v44;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
    }

    else
    {
      v68[0] = v41;
      v43 = [v8 objectAtIndexedSubscript:1];
      v44 = [v43 label];
      v68[1] = v44;
      v45 = PKLocalizedTicketingString(&cfstr_TileAdditional_0.isa);
      v68[2] = v45;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:3];
    }

    v46 = MEMORY[0x1E69B8AC8];
    v47 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v30];
    v48 = [v46 createWithContent:v47];
    [v24 setFooter:v48];

    v49 = [MEMORY[0x1E69B8AA0] createDefaultDisclosureAccessoryImage];
    [v24 setAccessory:v49];

    v31 = [objc_alloc(MEMORY[0x1E69B8D10]) _initWithContext:3];
    v66 = v31;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
    [v24 setActions:v37];
    goto LABEL_34;
  }

  v24 = 0;
LABEL_36:
  v50 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:@"PKPassTileContextDashboard.additionalInfoFieldsTileIdentifier" context:1];
  [v50 setPreferredStyle:0];
  v32 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v50 childTiles:0 stateIdentifier:@"PKPassTileContextDashboard.additionalInfoFieldsTileIdentifier" state:v24 inProgress:0];
  [v32 setAnalyticsIdentifier:@"additionalInfoTile"];

  v7 = v54;
LABEL_37:

  return v32;
}

- (id)additionalInfoFieldsGroupTilesForPass:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [v4 upcomingPassInformation];
  if (v6)
  {
    v7 = [(PKPassSemanticTileFactory *)self createAdditionalInfoGroupTilesFromInformation:v6];
    [v5 addObjectsFromArray:v7];
  }

  v8 = [v4 additionalInfoFields];
  v9 = [(PKPassSemanticTileFactory *)self additionalInfoTileForFields:v8];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];

    v12 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:v11 context:3];
    [v12 setPreferredStyle:0];
    [v12 setColumns:1];
    [v12 setMaximumRows:1];
    [v12 setWidthClass:1];
    [v12 setHeightClass:3];
    [v12 setGroupStyle:0];
    v13 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:3];
    if ([v5 count])
    {
      v14 = [v4 eventName];
      [v13 setHeader:v14];
    }

    v15 = objc_alloc(MEMORY[0x1E69B8A90]);
    v19[0] = v9;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v17 = [v15 _initWithMetadata:v12 childTiles:v16 stateIdentifier:v11 state:v13 inProgress:0];

    [v5 insertObject:v17 atIndex:0];
  }

  return v5;
}

- (id)createAdditionalInfoGroupTilesFromInformation:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v26 = v3;
    obj = [v3 groups];
    v29 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v29)
    {
      v28 = *v40;
      do
      {
        v4 = 0;
        do
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = v4;
          v5 = *(*(&v39 + 1) + 8 * v4);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v33 = [v5 entries];
          v6 = [v33 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v36;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v36 != v8)
                {
                  objc_enumerationMutation(v33);
                }

                v10 = *(*(&v35 + 1) + 8 * i);
                if ([v10 isActive])
                {
                  v11 = [v10 content];
                  v12 = [v11 additionalInfoFields];

                  if ([v12 count])
                  {
                    v34 = [v10 metadata];
                    v13 = [(PKPassSemanticTileFactory *)self additionalInfoTileForFields:v12];
                    v14 = [MEMORY[0x1E696AFB0] UUID];
                    v15 = [v14 UUIDString];

                    v16 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:v15 context:3];
                    [v16 setPreferredStyle:0];
                    [v16 setColumns:1];
                    [v16 setMaximumRows:1];
                    [v16 setWidthClass:1];
                    [v16 setHeightClass:3];
                    [v16 setGroupStyle:0];
                    v17 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:3];
                    [v34 name];
                    v19 = v18 = v8;
                    [v17 setHeader:v19];

                    v20 = objc_alloc(MEMORY[0x1E69B8A90]);
                    v43 = v13;
                    [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
                    v22 = v21 = v7;
                    v23 = [v20 _initWithMetadata:v16 childTiles:v22 stateIdentifier:v15 state:v17 inProgress:0];

                    v7 = v21;
                    [v32 addObject:v23];

                    v8 = v18;
                  }
                }
              }

              v7 = [v33 countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v7);
          }

          v4 = v30 + 1;
        }

        while (v30 + 1 != v29);
        v29 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v29);
    }

    v24 = [v32 copy];
    v3 = v26;
  }

  else
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  return v24;
}

- (id)additionalInfoTileForFields:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];

    v6 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:v5 context:3];
    [v6 setPreferredStyle:0];
    v7 = [v3 pk_arrayByApplyingBlock:&__block_literal_global_146];
    v8 = MEMORY[0x1E69B8AC0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__PKPassSemanticTileFactory_additionalInfoTileForFields___block_invoke_2;
    v13[3] = &unk_1E8011430;
    v14 = v7;
    v9 = v7;
    v10 = [v8 createWithPreferredStyle:4 adaptorProvider:v13];
    [v10 setFullBleed:1];
    v11 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v6 childTiles:0 stateIdentifier:v5 state:v10 inProgress:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

PKTileContextDetailsTableViewEntry *__57__PKPassSemanticTileFactory_additionalInfoTileForFields___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [PKTileContextDetailsTableViewEntry alloc];
  v4 = [v2 label];
  v5 = [v2 value];
  v6 = [v2 key];

  v7 = [(PKTileContextDetailsTableViewEntry *)v3 initWithTitle:v4 detail:v5 style:1 axID:v6];

  return v7;
}

_TtC9PassKitUI28PKPassTileForeignViewAdaptor *__57__PKPassSemanticTileFactory_additionalInfoTileForFields___block_invoke_2(uint64_t a1)
{
  v2 = [_TtC9PassKitUI28PKPassTileForeignViewAdaptor alloc];
  v3 = [PKTileContextDetailsTableView createWithEntries:*(a1 + 32)];
  v4 = [(PKPassTileForeignViewAdaptor *)v2 initWithView:v3];

  [(PKPassTileForeignViewAdaptor *)v4 setViewPreferredSizing:1];
  return v4;
}

- (void)reloadMapsInformationForDescriptor:(id)a3 contentIdentifier:(id)a4 tileContext:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([(PKPassSemanticTileFactory *)self descriptorCanCreateMapsTile:v10])
  {
    objc_initWeak(location, self);
    v13 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __105__PKPassSemanticTileFactory_reloadMapsInformationForDescriptor_contentIdentifier_tileContext_completion___block_invoke;
    v30[3] = &unk_1E801B348;
    objc_copyWeak(v34, location);
    v14 = v11;
    v31 = v14;
    v15 = v10;
    v32 = v15;
    v34[1] = a5;
    v33 = v12;
    [v13 addOperation:v30];
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__35;
    v28[4] = __Block_byref_object_dispose__35;
    v29 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __105__PKPassSemanticTileFactory_reloadMapsInformationForDescriptor_contentIdentifier_tileContext_completion___block_invoke_339;
    v24[3] = &unk_1E80114D0;
    objc_copyWeak(&v27, location);
    v16 = v15;
    v25 = v16;
    v26 = v28;
    [v13 addOperation:v24];
    v17 = [MEMORY[0x1E695DFB0] null];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __105__PKPassSemanticTileFactory_reloadMapsInformationForDescriptor_contentIdentifier_tileContext_completion___block_invoke_3;
    v19[3] = &unk_1E801B398;
    objc_copyWeak(v23, location);
    v22 = v28;
    v20 = v14;
    v21 = v16;
    v23[1] = a5;
    v18 = [v13 evaluateWithInput:v17 completion:v19];

    objc_destroyWeak(v23);
    objc_destroyWeak(&v27);
    _Block_object_dispose(v28, 8);

    objc_destroyWeak(v34);
    objc_destroyWeak(location);
  }

  else if (v12)
  {
    v12[2](v12);
  }
}

void __105__PKPassSemanticTileFactory_reloadMapsInformationForDescriptor_contentIdentifier_tileContext_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [WeakRetained coalesceFetchForContentWithIdentifier:*(a1 + 32) descriptor:*(a1 + 40) context:*(a1 + 64) completion:*(a1 + 48)];

  v6[2](v6, v9, v8);
}

void __105__PKPassSemanticTileFactory_reloadMapsInformationForDescriptor_contentIdentifier_tileContext_completion___block_invoke_339(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ([a2 isCanceled])
  {
    v8[2](v8, v7, 1);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v10 = [*(a1 + 32) additionalTilesContentSupplier];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __105__PKPassSemanticTileFactory_reloadMapsInformationForDescriptor_contentIdentifier_tileContext_completion___block_invoke_2;
    v11[3] = &unk_1E801C120;
    v14 = *(a1 + 40);
    v13 = v8;
    v12 = v7;
    [WeakRetained _fetchMapItemForMapsTileSupplier:v10 completion:v11];
  }
}

void __105__PKPassSemanticTileFactory_reloadMapsInformationForDescriptor_contentIdentifier_tileContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void __105__PKPassSemanticTileFactory_reloadMapsInformationForDescriptor_contentIdentifier_tileContext_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (([a4 isCanceled] & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __105__PKPassSemanticTileFactory_reloadMapsInformationForDescriptor_contentIdentifier_tileContext_completion___block_invoke_4;
    block[3] = &unk_1E801A2A0;
    objc_copyWeak(v11, (a1 + 56));
    v10 = *(a1 + 48);
    v8 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 64);
    v9 = v5;
    v11[1] = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(v11);
  }
}

void __105__PKPassSemanticTileFactory_reloadMapsInformationForDescriptor_contentIdentifier_tileContext_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained didCompleteFetchForItem:*(*(*(a1 + 48) + 8) + 40) withIdentifier:*(a1 + 32) descriptor:*(a1 + 40) context:*(a1 + 64)];
    WeakRetained = v3;
  }
}

- (void)_fetchMapItemForMapsTileSupplier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKPassSemanticTileFactory__fetchMapItemForMapsTileSupplier_completion___block_invoke;
  aBlock[3] = &unk_1E801C148;
  v8 = v7;
  v21 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [v6 mapsItemRequest];
  workQueue = self->_workQueue;
  if (v10)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __73__PKPassSemanticTileFactory__fetchMapItemForMapsTileSupplier_completion___block_invoke_2;
    v18[3] = &unk_1E801C170;
    v12 = &v19;
    v19 = v9;
    v13 = v9;
    [v10 getMapItemWithQueue:workQueue completionHandler:v18];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __73__PKPassSemanticTileFactory__fetchMapItemForMapsTileSupplier_completion___block_invoke_3;
    v15[3] = &unk_1E8010DD0;
    v12 = &v16;
    v16 = v6;
    v17 = v9;
    v14 = v9;
    dispatch_async(workQueue, v15);
  }
}

void __73__PKPassSemanticTileFactory__fetchMapItemForMapsTileSupplier_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = [MEMORY[0x1E696F220] imageForMapItem:v5 size:3 forScale:0 format:0 fallbackToBundleIcon:PKUIScreenScale()];
  }

  else
  {
    v3 = 0;
  }

  v4 = [[PKPassSemanticTileFactoryCachedMapsItem alloc] initWithMapItem:v5 icon:v3];
  (*(*(a1 + 32) + 16))();
}

void __73__PKPassSemanticTileFactory__fetchMapItemForMapsTileSupplier_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) mapsSearchRequest];
  v3 = [objc_alloc(MEMORY[0x1E696F248]) initWithRequest:v2];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__PKPassSemanticTileFactory__fetchMapItemForMapsTileSupplier_completion___block_invoke_4;
  v4[3] = &unk_1E801C198;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 startWithCompletionHandler:v4];
}

void __73__PKPassSemanticTileFactory__fetchMapItemForMapsTileSupplier_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 mapItems];
  v5 = [v3 filteredItemFromItems:v4];

  (*(*(a1 + 40) + 16))();
}

- (BOOL)descriptorCanCreateMapsTile:(id)a3
{
  v4 = a3;
  featureOverrides = self->_featureOverrides;
  if (featureOverrides && ![(PKWebServiceTicketingFeature *)featureOverrides isIntegrationTypeSupported:0])
  {
    v9 = 0;
  }

  else
  {
    v6 = [v4 additionalTilesContentSupplier];
    v7 = [v6 mapsTileTitle];
    if (v7)
    {
      v8 = [v6 mapsItemRequest];
      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v10 = [v6 mapsSearchRequest];
        v9 = v10 != 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)issuerActionsGroupTileFromTiles:(id)a3 groupIdentifier:(id)a4 context:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 count];
  if (v9)
  {
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = [MEMORY[0x1E696AFB0] UUID];
      v10 = [v11 UUIDString];
    }

    v12 = [MEMORY[0x1E69B8AB0] _createMetadataForType:2 identifier:v10 context:a5];
    [v12 setPreferredStyle:1];
    [v12 setShowInPrearm:0];
    if (v9 >= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = v9;
    }

    [v12 setColumns:v13];
    [v12 setMaximumRows:1];
    [v12 setWidthClass:2];
    [v12 setHeightClass:3];
    [v12 setGroupStyle:1];
    v14 = [MEMORY[0x1E69B8AB8] createResolvedStateWithType:3];
    v9 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v12 childTiles:v7 stateIdentifier:v10 state:v14 inProgress:0];
  }

  return v9;
}

- (id)tableViewTileFromEntries:(id)a3 tileIdentifier:(id)a4 context:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 count])
  {
    v9 = [MEMORY[0x1E69B8AB0] _createMetadataForType:0 identifier:v8 context:a5];
    [v9 setPreferredStyle:0];
    v10 = MEMORY[0x1E69B8AC0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__PKPassSemanticTileFactory_tableViewTileFromEntries_tileIdentifier_context___block_invoke;
    v14[3] = &unk_1E8011430;
    v15 = v7;
    v11 = [v10 createWithPreferredStyle:4 adaptorProvider:v14];
    [v11 setFullBleed:1];
    v12 = [objc_alloc(MEMORY[0x1E69B8A90]) _initWithMetadata:v9 childTiles:0 stateIdentifier:v8 state:v11 inProgress:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

_TtC9PassKitUI28PKPassTileForeignViewAdaptor *__77__PKPassSemanticTileFactory_tableViewTileFromEntries_tileIdentifier_context___block_invoke(uint64_t a1)
{
  v2 = [_TtC9PassKitUI28PKPassTileForeignViewAdaptor alloc];
  v3 = [PKTileContextDetailsTableView createWithEntries:*(a1 + 32)];
  v4 = [(PKPassTileForeignViewAdaptor *)v2 initWithView:v3];

  [(PKPassTileForeignViewAdaptor *)v4 setViewPreferredSizing:1];
  return v4;
}

- (void)clearCacheOfDescriptorsWithPassUniqueIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(PKPassSemanticTileFactory *)self _cacheKeysForPassUniqueIdentifier:a3];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PKPassSemanticTileFactory *)self discardCachedContentForKey:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_cacheKeysForPassUniqueIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_tileUpdatesLock);
  currentlyCachedKeys = self->_currentlyCachedKeys;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PKPassSemanticTileFactory__cacheKeysForPassUniqueIdentifier___block_invoke;
  v9[3] = &unk_1E801C1C0;
  v10 = v4;
  v6 = v4;
  v7 = [(NSMutableArray *)currentlyCachedKeys pk_objectsPassingTest:v9];
  os_unfair_lock_unlock(&self->_tileUpdatesLock);

  return v7;
}

- (id)_cacheKeyForDescriptor:(id)a3 context:(int64_t)a4 contentIdentifier:(id)a5
{
  v12[3] = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [a3 identifier];
  v12[0] = v7;
  v8 = PKPassTileContextToString();
  v12[1] = v8;
  v12[2] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];

  v10 = [v9 componentsJoinedByString:{@".", v12[0]}];

  return v10;
}

- (id)cachedContentForIdentifier:(id)a3 descriptor:(id)a4 context:(int64_t)a5
{
  v6 = [(PKPassSemanticTileFactory *)self _cacheKeyForDescriptor:a4 context:a5 contentIdentifier:a3];
  v7 = [(NSCache *)self->_tileContentCache objectForKey:v6];
  if ([v7 isContentDiscarded])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v8;
}

- (void)_cacheTileContent:(id)a3 withIdentifier:(id)a4 forDescriptor:(id)a5 context:(int64_t)a6
{
  v11 = a3;
  v10 = [(PKPassSemanticTileFactory *)self _cacheKeyForDescriptor:a5 context:a6 contentIdentifier:a4];
  [v11 setCacheKey:v10];
  if (v11 && v10)
  {
    os_unfair_lock_lock(&self->_tileUpdatesLock);
    if (([(NSMutableArray *)self->_currentlyCachedKeys containsObject:v10]& 1) == 0)
    {
      [(NSMutableArray *)self->_currentlyCachedKeys addObject:v10];
    }

    os_unfair_lock_unlock(&self->_tileUpdatesLock);
    [(NSCache *)self->_tileContentCache setObject:v11 forKey:v10];
  }
}

- (void)discardCachedContentForKey:(id)a3
{
  if (a3)
  {
    [(NSCache *)self->_tileContentCache removeObjectForKey:?];
  }
}

- (BOOL)coalesceFetchForContentWithIdentifier:(id)a3 descriptor:(id)a4 context:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [(PKPassSemanticTileFactory *)self _cacheKeyForDescriptor:a4 context:a5 contentIdentifier:a3];
  os_unfair_lock_lock(&self->_tileUpdatesLock);
  v12 = [(NSMutableDictionary *)self->_outstandingContentFetchCompletions objectForKeyedSubscript:v11];
  v13 = v12;
  if (!v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (v10)
  {
    v14 = _Block_copy(v10);
    [v13 addObject:v14];

    [(NSMutableDictionary *)self->_outstandingContentFetchCompletions setObject:v13 forKeyedSubscript:v11];
  }

  os_unfair_lock_unlock(&self->_tileUpdatesLock);

  return v12 != 0;
}

- (void)didCompleteFetchForItem:(id)a3 withIdentifier:(id)a4 descriptor:(id)a5 context:(int64_t)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  [(PKPassSemanticTileFactory *)self _cacheTileContent:a3 withIdentifier:v10 forDescriptor:v11 context:a6];
  v12 = [(PKPassSemanticTileFactory *)self _cacheKeyForDescriptor:v11 context:a6 contentIdentifier:v10];
  os_unfair_lock_lock(&self->_tileUpdatesLock);
  v13 = [(NSMutableDictionary *)self->_outstandingContentFetchCompletions objectForKeyedSubscript:v12];
  [(NSMutableDictionary *)self->_outstandingContentFetchCompletions removeObjectForKey:v12];
  os_unfair_lock_unlock(&self->_tileUpdatesLock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        (*(*(*(&v19 + 1) + 8 * v18) + 16))(*(*(&v19 + 1) + 8 * v18));
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

- (void)didFinishContentFetchFromTilesFetchForContext:(int64_t)a3 descriptor:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__PKPassSemanticTileFactory_didFinishContentFetchFromTilesFetchForContext_descriptor___block_invoke;
  v8[3] = &unk_1E801C1E8;
  objc_copyWeak(v10, &location);
  v10[1] = a3;
  v7 = v6;
  v9 = v7;
  [(PKPassSemanticTileFactory *)self fetchTilesForDescriptor:v7 context:a3 queueUpdates:0 completion:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __86__PKPassSemanticTileFactory_didFinishContentFetchFromTilesFetchForContext_descriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__PKPassSemanticTileFactory_didFinishContentFetchFromTilesFetchForContext_descriptor___block_invoke_2;
  v6[3] = &unk_1E80160F8;
  objc_copyWeak(v9, (a1 + 40));
  v4 = *(a1 + 48);
  v7 = v3;
  v9[1] = v4;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(v9);
}

void __86__PKPassSemanticTileFactory_didFinishContentFetchFromTilesFetchForContext_descriptor___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = WeakRetained;
    v3 = WeakRetained[1];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            v9 = *(a1 + 56);
            v10 = *(a1 + 32);
            v11 = [*(a1 + 40) identifier];
            [v8 tileFactory:v12 didUpdateTiles:v10 forContext:v9 descriptorIdentifier:v11];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    WeakRetained = v12;
  }
}

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v8 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v8;
  if (isKindOfClass)
  {
    v7 = [v8 cacheKey];
    os_unfair_lock_lock(&self->_tileUpdatesLock);
    if ([(NSMutableArray *)self->_currentlyCachedKeys containsObject:v7])
    {
      [(NSMutableArray *)self->_currentlyCachedKeys removeObject:v7];
    }

    os_unfair_lock_unlock(&self->_tileUpdatesLock);

    v6 = v8;
  }
}

+ (id)analyticsTileAvailabilityForPass:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [PKEventTicketSemanticTileSupplier createSupplierForPass:v3];
  if (v4)
  {
    v5 = [v3 semantics];
    v35 = v4;
    v36 = v3;
    v6 = [PKPassSemanticTileDescriptor createWithPass:v3 semantics:v5 additionalTilesContentSupplier:v4];

    v41 = objc_alloc_init(PKPassSemanticTileFactory);
    v7 = [(PKPassSemanticTileFactory *)v41 _createTilesFromDescriptor:v6 context:1 queueUpdates:0];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v55;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v55 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v54 + 1) + 8 * i);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v14 = [v13 tiles];
          v15 = [v14 countByEnumeratingWithState:&v50 objects:v60 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v51;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v51 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = [*(*(&v50 + 1) + 8 * j) analyticsIdentifier];
                [v8 safelyAddObject:v19];
              }

              v16 = [v14 countByEnumeratingWithState:&v50 objects:v60 count:16];
            }

            while (v16);
          }
        }

        v10 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v10);
    }

    v20 = v41;
    [(PKPassSemanticTileFactory *)v41 _createTilesFromDescriptor:v6 context:2 queueUpdates:0];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v37 = v49 = 0u;
    v21 = [v37 countByEnumeratingWithState:&v46 objects:v59 count:16];
    if (v21)
    {
      v22 = v21;
      v40 = *v47;
      v23 = &stru_1F3BD7330;
      v39 = *MEMORY[0x1E69BA368];
      do
      {
        v24 = 0;
        v25 = v23;
        do
        {
          v26 = v6;
          if (*v47 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v27 = *(*(&v46 + 1) + 8 * v24);
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v28 = [v27 tiles];
          v29 = [v28 countByEnumeratingWithState:&v42 objects:v58 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v43;
            do
            {
              for (k = 0; k != v30; ++k)
              {
                if (*v43 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = [*(*(&v42 + 1) + 8 * k) analyticsIdentifier];
                [v8 safelyAddObject:v33];
              }

              v30 = [v28 countByEnumeratingWithState:&v42 objects:v58 count:16];
            }

            while (v30);
          }

          v20 = v41;
          v6 = v26;
          if ([(PKPassSemanticTileFactory *)v41 descriptorCanCreateMusicTile:v26])
          {
            [v8 addObject:@"musicTile"];
          }

          if ([(PKPassSemanticTileFactory *)v41 descriptorCanCreateWeatherTile:v26])
          {
            [v8 addObject:@"weatherTile"];
          }

          v23 = [v8 componentsJoinedByString:v39];

          ++v24;
          v25 = v23;
        }

        while (v24 != v22);
        v22 = [v37 countByEnumeratingWithState:&v46 objects:v59 count:16];
      }

      while (v22);
    }

    else
    {
      v23 = &stru_1F3BD7330;
    }

    v4 = v35;
    v3 = v36;
  }

  else
  {
    v23 = &stru_1F3BD7330;
  }

  return v23;
}

@end