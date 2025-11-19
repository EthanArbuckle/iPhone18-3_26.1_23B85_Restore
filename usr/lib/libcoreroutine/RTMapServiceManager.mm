@interface RTMapServiceManager
- (RTMapServiceManager)init;
- (id)_proxyForServicingSelector:(SEL)a3 withErrorHandler:(id)a4;
- (id)mapItemWithIdentifier:(id)a3 geoMapItem:(id)a4 source:(unint64_t)a5 creationDate:(id)a6 error:(id *)a7;
- (id)mapItemWithIdentifier:(id)a3 geoMapItemStorage:(id)a4 source:(unint64_t)a5 creationDate:(id)a6 error:(id *)a7;
- (void)_setup;
- (void)_shutdownWithHandler:(id)a3;
- (void)compileCoreMLModelAtURL:(id)a3 handler:(id)a4;
- (void)computeWithInputSignals:(id)a3 handler:(id)a4;
- (void)createMapItemWithIdentifier:(id)a3 geoMapItemStorage:(id)a4 source:(unint64_t)a5 creationDate:(id)a6 handler:(id)a7;
- (void)downloadBluePOIMetadataWithHandler:(id)a3;
- (void)downloadBluePOITilesForDownloadKeys:(id)a3 handler:(id)a4;
- (void)fetchAppClipURLsForMapItem:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchBluePOIMetadataWithHandler:(id)a3;
- (void)fetchBluePOITilesForDownloadKeys:(id)a3 handler:(id)a4;
- (void)fetchBuildingPolygonsFromLocation:(id)a3 radius:(double)a4 handler:(id)a5;
- (void)fetchConfidenceWeightForMapItem:(id)a3 startDate:(id)a4 endDate:(id)a5 options:(id)a6 handler:(id)a7;
- (void)fetchCountryAndSubdivisionCodesFromLocation:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchMapItemFromHandle:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchMapItemWithIdentifier:(id)a3 geoMapItem:(id)a4 source:(unint64_t)a5 creationDate:(id)a6 handler:(id)a7;
- (void)fetchMapItemsFromAddressDictionary:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchMapItemsFromAddressString:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchMapItemsFromIdentifiers:(id)a3 options:(id)a4 source:(unint64_t)a5 handler:(id)a6;
- (void)fetchMapItemsFromLocation:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchMapItemsFromLocations:(id)a3 accessPoints:(id)a4 startDate:(id)a5 endDate:(id)a6 options:(id)a7 handler:(id)a8;
- (void)fetchMapItemsFromNaturalLanguageQuery:(id)a3 location:(id)a4 options:(id)a5 handler:(id)a6;
- (void)fetchMapItemsRelatedPlacesFromLocation:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchPointOfInterestAttributesWithIdentifier:(unint64_t)a3 options:(id)a4 handler:(id)a5;
- (void)fetchPointOfInterestsAroundCoordinate:(id)a3 radius:(double)a4 options:(id)a5 handler:(id)a6;
- (void)fetchPostalAddressForMapItem:(id)a3 options:(id)a4 handler:(id)a5;
- (void)inferLocalBluePOIWithReferenceLocation:(id)a3 locations:(id)a4 accessPoints:(id)a5 bluePOITile:(id)a6 signalEnv:(int)a7 refreshAOI:(BOOL)a8 handler:(id)a9;
- (void)interruptComputeWithError:(id)a3;
- (void)loadProtobufTileAtPath:(id)a3 handler:(id)a4;
@end

@implementation RTMapServiceManager

- (RTMapServiceManager)init
{
  v5.receiver = self;
  v5.super_class = RTMapServiceManager;
  v2 = [(RTNotifier *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RTService *)v2 setup];
  }

  return v3;
}

- (void)_setup
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.CoreRoutine.helperservice"];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v3;

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284601278];
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v5];

  v44 = MEMORY[0x277CBEB98];
  v43 = objc_opt_class();
  v42 = objc_opt_class();
  v41 = objc_opt_class();
  v40 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v45 = [v44 setWithObjects:{v43, v42, v41, v40, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  v14 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v14 setClasses:v45 forSelector:sel_fetchMapItemsFromNaturalLanguageQuery_location_options_handler_ argumentIndex:0 ofReply:1];

  v15 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v15 setClasses:v45 forSelector:sel_fetchMapItemsFromLocation_options_handler_ argumentIndex:0 ofReply:1];

  v16 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v16 setClasses:v45 forSelector:sel_fetchMapItemsRelatedPlacesFromLocation_options_handler_ argumentIndex:0 ofReply:1];

  v17 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v17 setClasses:v45 forSelector:sel_fetchMapItemsRelatedPlacesFromLocation_options_handler_ argumentIndex:1 ofReply:1];

  v18 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v18 setClasses:v45 forSelector:sel_fetchMapItemsFromIdentifiers_options_source_handler_ argumentIndex:0 ofReply:1];

  v19 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v19 setClasses:v45 forSelector:sel_fetchMapItemsFromLocations_accessPoints_startDate_endDate_options_handler_ argumentIndex:0 ofReply:1];

  v20 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v20 setClasses:v45 forSelector:sel_fetchMapItemsFromAddressString_options_handler_ argumentIndex:0 ofReply:1];

  v21 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v21 setClasses:v45 forSelector:sel_fetchMapItemsFromAddressDictionary_options_handler_ argumentIndex:0 ofReply:1];

  v22 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v22 setClasses:v45 forSelector:sel_fetchPostalAddressForMapItem_options_handler_ argumentIndex:0 ofReply:1];

  v23 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v23 setClasses:v45 forSelector:sel_fetchAppClipURLsForMapItem_options_handler_ argumentIndex:0 ofReply:1];

  v24 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v24 setClasses:v45 forSelector:sel_createMapItemWithIdentifier_geoMapItemStorage_source_creationDate_handler_ argumentIndex:0 ofReply:1];

  v25 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v25 setClasses:v45 forSelector:sel_fetchCountryAndSubdivisionCodesFromLocation_options_handler_ argumentIndex:0 ofReply:1];

  v26 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v26 setClasses:v45 forSelector:sel_fetchBuildingPolygonsFromLocation_radius_handler_ argumentIndex:0 ofReply:1];

  v27 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v27 setClasses:v45 forSelector:sel_fetchPointOfInterestAttributesWithIdentifier_options_handler_ argumentIndex:0 ofReply:1];

  v28 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v28 setClasses:v45 forSelector:sel_fetchPointOfInterestsAroundCoordinate_radius_options_handler_ argumentIndex:0 ofReply:1];

  v29 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v29 setClasses:v45 forSelector:sel_inferLocalBluePOIWithReferenceLocation_locations_accessPoints_bluePOITile_signalEnv_refreshAOI_handler_ argumentIndex:0 ofReply:1];

  v30 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v30 setClasses:v45 forSelector:sel_downloadBluePOITilesForDownloadKeys_handler_ argumentIndex:0 ofReply:1];

  v31 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v31 setClasses:v45 forSelector:sel_downloadBluePOIMetadataWithHandler_ argumentIndex:0 ofReply:1];

  v32 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v32 setClasses:v45 forSelector:sel_fetchConfidenceWeightForMapItem_startDate_endDate_options_handler_ argumentIndex:0 ofReply:1];

  v33 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v33 setClasses:v45 forSelector:sel_fetchBluePOITilesForDownloadKeys_handler_ argumentIndex:0 ofReply:1];

  v34 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v34 setClasses:v45 forSelector:sel_loadProtobufTileAtPath_handler_ argumentIndex:0 ofReply:1];

  v35 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v35 setClasses:v45 forSelector:sel_fetchBluePOIMetadataWithHandler_ argumentIndex:0 ofReply:1];

  v36 = MEMORY[0x277CBEB98];
  v37 = objc_opt_class();
  v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
  v39 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [v39 setClasses:v38 forSelector:sel_computeWithInputSignals_handler_ argumentIndex:0 ofReply:1];

  [(NSXPCConnection *)self->_xpcConnection resume];
}

- (void)_shutdownWithHandler:(id)a3
{
  v5 = a3;
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
    v4 = v5;
  }
}

- (id)_proxyForServicingSelector:(SEL)a3 withErrorHandler:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__RTMapServiceManager__proxyForServicingSelector_withErrorHandler___block_invoke;
  aBlock[3] = &unk_2788C56C0;
  aBlock[4] = self;
  v24 = a3;
  v7 = v6;
  v23 = v7;
  v8 = _Block_copy(aBlock);
  v9 = self->_xpcConnection;
  v16 = v9;
  if (v9)
  {
    v17 = [(NSXPCConnection *)v9 remoteObjectProxyWithErrorHandler:v8];
    if (v17)
    {
      goto LABEL_6;
    }

    v18 = @"no remote object proxy";
  }

  else
  {
    v18 = @"no xpc connection";
  }

  v19 = RTErrorConnectionCreate(a3, v18, v10, v11, v12, v13, v14, v15, v21);
  v8[2](v8, v19);

  v17 = 0;
LABEL_6:

  return v17;
}

void __67__RTMapServiceManager__proxyForServicingSelector_withErrorHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = RTErrorConnectionCreate(*(a1 + 48), @"%@", a3, a4, a5, a6, a7, a8, a2);
  v10 = _rt_log_facility_get_os_log(RTLogFacilityMapService);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v13 = v9;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9);
  }
}

- (void)fetchMapItemFromHandle:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RTMapServiceManager_fetchMapItemFromHandle_options_handler___block_invoke;
  block[3] = &unk_2788C6530;
  v19 = v11;
  v20 = a2;
  block[4] = self;
  v17 = v9;
  v18 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  dispatch_async(v12, block);
}

void __62__RTMapServiceManager_fetchMapItemFromHandle_options_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__RTMapServiceManager_fetchMapItemFromHandle_options_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 64);
  v6 = *(a1 + 56);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchMapItemFromHandle:*(a1 + 40) options:*(a1 + 48) handler:*(a1 + 56)];
}

uint64_t __62__RTMapServiceManager_fetchMapItemFromHandle_options_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchMapItemsFromNaturalLanguageQuery:(id)a3 location:(id)a4 options:(id)a5 handler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(RTNotifier *)self queue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __86__RTMapServiceManager_fetchMapItemsFromNaturalLanguageQuery_location_options_handler___block_invoke;
  v20[3] = &unk_2788C6238;
  v24 = v14;
  v25 = a2;
  v20[4] = self;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v14;
  dispatch_async(v15, v20);
}

void __86__RTMapServiceManager_fetchMapItemsFromNaturalLanguageQuery_location_options_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __86__RTMapServiceManager_fetchMapItemsFromNaturalLanguageQuery_location_options_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 72);
  v6 = *(a1 + 64);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchMapItemsFromNaturalLanguageQuery:*(a1 + 40) location:*(a1 + 48) options:*(a1 + 56) handler:*(a1 + 64)];
}

uint64_t __86__RTMapServiceManager_fetchMapItemsFromNaturalLanguageQuery_location_options_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchMapItemsFromLocation:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__RTMapServiceManager_fetchMapItemsFromLocation_options_handler___block_invoke;
  block[3] = &unk_2788C6530;
  v19 = v11;
  v20 = a2;
  block[4] = self;
  v17 = v9;
  v18 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  dispatch_async(v12, block);
}

void __65__RTMapServiceManager_fetchMapItemsFromLocation_options_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__RTMapServiceManager_fetchMapItemsFromLocation_options_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 64);
  v6 = *(a1 + 56);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchMapItemsFromLocation:*(a1 + 40) options:*(a1 + 48) handler:*(a1 + 56)];
}

uint64_t __65__RTMapServiceManager_fetchMapItemsFromLocation_options_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchMapItemsRelatedPlacesFromLocation:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__RTMapServiceManager_fetchMapItemsRelatedPlacesFromLocation_options_handler___block_invoke;
  block[3] = &unk_2788C6530;
  v19 = v11;
  v20 = a2;
  block[4] = self;
  v17 = v9;
  v18 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  dispatch_async(v12, block);
}

void __78__RTMapServiceManager_fetchMapItemsRelatedPlacesFromLocation_options_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__RTMapServiceManager_fetchMapItemsRelatedPlacesFromLocation_options_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 64);
  v6 = *(a1 + 56);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchMapItemsRelatedPlacesFromLocation:*(a1 + 40) options:*(a1 + 48) handler:*(a1 + 56)];
}

uint64_t __78__RTMapServiceManager_fetchMapItemsRelatedPlacesFromLocation_options_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

- (void)fetchMapItemsFromIdentifiers:(id)a3 options:(id)a4 source:(unint64_t)a5 handler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [(RTNotifier *)self queue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__RTMapServiceManager_fetchMapItemsFromIdentifiers_options_source_handler___block_invoke;
  v18[3] = &unk_2788C7498;
  v18[4] = self;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = a2;
  v23 = a5;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  dispatch_async(v14, v18);
}

void __75__RTMapServiceManager_fetchMapItemsFromIdentifiers_options_source_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__RTMapServiceManager_fetchMapItemsFromIdentifiers_options_source_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 64);
  v6 = *(a1 + 56);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchMapItemsFromIdentifiers:*(a1 + 40) options:*(a1 + 48) source:*(a1 + 72) handler:*(a1 + 56)];
}

uint64_t __75__RTMapServiceManager_fetchMapItemsFromIdentifiers_options_source_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchMapItemsFromLocations:(id)a3 accessPoints:(id)a4 startDate:(id)a5 endDate:(id)a6 options:(id)a7 handler:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = [(RTNotifier *)self queue];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __97__RTMapServiceManager_fetchMapItemsFromLocations_accessPoints_startDate_endDate_options_handler___block_invoke;
  v28[3] = &unk_2788CDE80;
  v34 = v20;
  v35 = a2;
  v28[4] = self;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v22 = v19;
  v23 = v18;
  v24 = v17;
  v25 = v16;
  v26 = v15;
  v27 = v20;
  dispatch_async(v21, v28);
}

void __97__RTMapServiceManager_fetchMapItemsFromLocations_accessPoints_startDate_endDate_options_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __97__RTMapServiceManager_fetchMapItemsFromLocations_accessPoints_startDate_endDate_options_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 88);
  v6 = *(a1 + 80);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchMapItemsFromLocations:*(a1 + 40) accessPoints:*(a1 + 48) startDate:*(a1 + 56) endDate:*(a1 + 64) options:*(a1 + 72) handler:*(a1 + 80)];
}

uint64_t __97__RTMapServiceManager_fetchMapItemsFromLocations_accessPoints_startDate_endDate_options_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchMapItemsFromAddressString:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTMapServiceManager_fetchMapItemsFromAddressString_options_handler___block_invoke;
  block[3] = &unk_2788C6530;
  v19 = v11;
  v20 = a2;
  block[4] = self;
  v17 = v9;
  v18 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  dispatch_async(v12, block);
}

void __70__RTMapServiceManager_fetchMapItemsFromAddressString_options_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__RTMapServiceManager_fetchMapItemsFromAddressString_options_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 64);
  v6 = *(a1 + 56);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchMapItemsFromAddressString:*(a1 + 40) options:*(a1 + 48) handler:*(a1 + 56)];
}

uint64_t __70__RTMapServiceManager_fetchMapItemsFromAddressString_options_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchMapItemsFromAddressDictionary:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__RTMapServiceManager_fetchMapItemsFromAddressDictionary_options_handler___block_invoke;
  block[3] = &unk_2788C6530;
  v19 = v11;
  v20 = a2;
  block[4] = self;
  v17 = v9;
  v18 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  dispatch_async(v12, block);
}

void __74__RTMapServiceManager_fetchMapItemsFromAddressDictionary_options_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__RTMapServiceManager_fetchMapItemsFromAddressDictionary_options_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 64);
  v6 = *(a1 + 56);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchMapItemsFromAddressDictionary:*(a1 + 40) options:*(a1 + 48) handler:*(a1 + 56)];
}

uint64_t __74__RTMapServiceManager_fetchMapItemsFromAddressDictionary_options_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchPostalAddressForMapItem:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTMapServiceManager_fetchPostalAddressForMapItem_options_handler___block_invoke;
  block[3] = &unk_2788C6530;
  v19 = v11;
  v20 = a2;
  block[4] = self;
  v17 = v9;
  v18 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  dispatch_async(v12, block);
}

void __68__RTMapServiceManager_fetchPostalAddressForMapItem_options_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__RTMapServiceManager_fetchPostalAddressForMapItem_options_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 64);
  v6 = *(a1 + 56);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchPostalAddressForMapItem:*(a1 + 40) options:*(a1 + 48) handler:*(a1 + 56)];
}

uint64_t __68__RTMapServiceManager_fetchPostalAddressForMapItem_options_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchAppClipURLsForMapItem:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RTMapServiceManager_fetchAppClipURLsForMapItem_options_handler___block_invoke;
  block[3] = &unk_2788C6530;
  v19 = v11;
  v20 = a2;
  block[4] = self;
  v17 = v9;
  v18 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  dispatch_async(v12, block);
}

void __66__RTMapServiceManager_fetchAppClipURLsForMapItem_options_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__RTMapServiceManager_fetchAppClipURLsForMapItem_options_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 64);
  v6 = *(a1 + 56);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchAppClipURLsForMapItem:*(a1 + 40) options:*(a1 + 48) handler:*(a1 + 56)];
}

uint64_t __66__RTMapServiceManager_fetchAppClipURLsForMapItem_options_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)createMapItemWithIdentifier:(id)a3 geoMapItemStorage:(id)a4 source:(unint64_t)a5 creationDate:(id)a6 handler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__RTMapServiceManager_createMapItemWithIdentifier_geoMapItemStorage_source_creationDate_handler___block_invoke;
  block[3] = &unk_2788CE9C0;
  v26 = v16;
  v27 = a2;
  block[4] = self;
  v23 = v13;
  v28 = a5;
  v24 = v14;
  v25 = v15;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v16;
  dispatch_async(v17, block);
}

void __97__RTMapServiceManager_createMapItemWithIdentifier_geoMapItemStorage_source_creationDate_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __97__RTMapServiceManager_createMapItemWithIdentifier_geoMapItemStorage_source_creationDate_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 72);
  v6 = *(a1 + 64);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 createMapItemWithIdentifier:*(a1 + 40) geoMapItemStorage:*(a1 + 48) source:*(a1 + 80) creationDate:*(a1 + 56) handler:*(a1 + 64)];
}

uint64_t __97__RTMapServiceManager_createMapItemWithIdentifier_geoMapItemStorage_source_creationDate_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (id)mapItemWithIdentifier:(id)a3 geoMapItemStorage:(id)a4 source:(unint64_t)a5 creationDate:(id)a6 error:(id *)a7
{
  v56 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__145;
  v52 = __Block_byref_object_dispose__145;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__145;
  v46 = __Block_byref_object_dispose__145;
  v47 = 0;
  v14 = dispatch_semaphore_create(0);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __89__RTMapServiceManager_mapItemWithIdentifier_geoMapItemStorage_source_creationDate_error___block_invoke;
  v38[3] = &unk_2788C61E8;
  v40 = &v48;
  v41 = &v42;
  v15 = v14;
  v39 = v15;
  v36 = v11;
  [(RTMapServiceManager *)self createMapItemWithIdentifier:v11 geoMapItemStorage:v12 source:a5 creationDate:v13 handler:v38];
  v16 = v15;
  v17 = [MEMORY[0x277CBEAA8] now];
  v18 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v16, v18))
  {
    v19 = [MEMORY[0x277CBEAA8] now];
    [v19 timeIntervalSinceDate:v17];
    v21 = v20;
    v22 = objc_opt_new();
    v23 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_122];
    v24 = [MEMORY[0x277CCACC8] callStackSymbols];
    v25 = [v24 filteredArrayUsingPredicate:v23];
    v26 = [v25 firstObject];

    [v22 submitToCoreAnalytics:v26 type:1 duration:v21];
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v27, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v28 = MEMORY[0x277CCA9B8];
    v54 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v54 count:1];
    v30 = [v28 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v29];

    if (v30)
    {
      v31 = v30;

      v32 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v30 = 0;
  }

  v32 = 1;
LABEL_8:

  v33 = v30;
  if ((v32 & 1) == 0)
  {
    objc_storeStrong(v43 + 5, v30);
  }

  if (a7)
  {
    *a7 = v43[5];
  }

  v34 = v49[5];

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);

  return v34;
}

void __89__RTMapServiceManager_mapItemWithIdentifier_geoMapItemStorage_source_creationDate_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fetchMapItemWithIdentifier:(id)a3 geoMapItem:(id)a4 source:(unint64_t)a5 creationDate:(id)a6 handler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__RTMapServiceManager_fetchMapItemWithIdentifier_geoMapItem_source_creationDate_handler___block_invoke;
  block[3] = &unk_2788CFF28;
  v23 = v14;
  v24 = self;
  v27 = v16;
  v28 = a2;
  v29 = a5;
  v25 = v13;
  v26 = v15;
  v18 = v15;
  v19 = v13;
  v20 = v16;
  v21 = v14;
  dispatch_async(v17, block);
}

void __89__RTMapServiceManager_fetchMapItemWithIdentifier_geoMapItem_source_creationDate_handler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D0EBC0] mapItemStorageForGEOMapItem:*(a1 + 32)];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__RTMapServiceManager_fetchMapItemWithIdentifier_geoMapItem_source_creationDate_handler___block_invoke_2;
  v6[3] = &unk_2788C48C0;
  v4 = *(a1 + 72);
  v7 = *(a1 + 64);
  v5 = [v3 _proxyForServicingSelector:v4 withErrorHandler:v6];
  [v5 createMapItemWithIdentifier:*(a1 + 48) geoMapItemStorage:v2 source:*(a1 + 80) creationDate:*(a1 + 56) handler:*(a1 + 64)];
}

uint64_t __89__RTMapServiceManager_fetchMapItemWithIdentifier_geoMapItem_source_creationDate_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (id)mapItemWithIdentifier:(id)a3 geoMapItem:(id)a4 source:(unint64_t)a5 creationDate:(id)a6 error:(id *)a7
{
  v56 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__145;
  v52 = __Block_byref_object_dispose__145;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__145;
  v46 = __Block_byref_object_dispose__145;
  v47 = 0;
  v14 = dispatch_semaphore_create(0);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __82__RTMapServiceManager_mapItemWithIdentifier_geoMapItem_source_creationDate_error___block_invoke;
  v38[3] = &unk_2788C61E8;
  v40 = &v48;
  v41 = &v42;
  v15 = v14;
  v39 = v15;
  v36 = v11;
  [(RTMapServiceManager *)self fetchMapItemWithIdentifier:v11 geoMapItem:v12 source:a5 creationDate:v13 handler:v38];
  v16 = v15;
  v17 = [MEMORY[0x277CBEAA8] now];
  v18 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v16, v18))
  {
    v19 = [MEMORY[0x277CBEAA8] now];
    [v19 timeIntervalSinceDate:v17];
    v21 = v20;
    v22 = objc_opt_new();
    v23 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_122];
    v24 = [MEMORY[0x277CCACC8] callStackSymbols];
    v25 = [v24 filteredArrayUsingPredicate:v23];
    v26 = [v25 firstObject];

    [v22 submitToCoreAnalytics:v26 type:1 duration:v21];
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v27, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v28 = MEMORY[0x277CCA9B8];
    v54 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v54 count:1];
    v30 = [v28 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v29];

    if (v30)
    {
      v31 = v30;

      v32 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v30 = 0;
  }

  v32 = 1;
LABEL_8:

  v33 = v30;
  if ((v32 & 1) == 0)
  {
    objc_storeStrong(v43 + 5, v30);
  }

  if (a7)
  {
    *a7 = v43[5];
  }

  v34 = v49[5];

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);

  return v34;
}

void __82__RTMapServiceManager_mapItemWithIdentifier_geoMapItem_source_creationDate_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fetchCountryAndSubdivisionCodesFromLocation:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__RTMapServiceManager_fetchCountryAndSubdivisionCodesFromLocation_options_handler___block_invoke;
  block[3] = &unk_2788C6530;
  v19 = v11;
  v20 = a2;
  block[4] = self;
  v17 = v9;
  v18 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  dispatch_async(v12, block);
}

void __83__RTMapServiceManager_fetchCountryAndSubdivisionCodesFromLocation_options_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __83__RTMapServiceManager_fetchCountryAndSubdivisionCodesFromLocation_options_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 64);
  v6 = *(a1 + 56);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchCountryAndSubdivisionCodesFromLocation:*(a1 + 40) options:*(a1 + 48) handler:*(a1 + 56)];
}

uint64_t __83__RTMapServiceManager_fetchCountryAndSubdivisionCodesFromLocation_options_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchBuildingPolygonsFromLocation:(id)a3 radius:(double)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__RTMapServiceManager_fetchBuildingPolygonsFromLocation_radius_handler___block_invoke;
  block[3] = &unk_2788C47A8;
  v16 = v10;
  v17 = a2;
  block[4] = self;
  v15 = v9;
  v18 = a4;
  v12 = v9;
  v13 = v10;
  dispatch_async(v11, block);
}

void __72__RTMapServiceManager_fetchBuildingPolygonsFromLocation_radius_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__RTMapServiceManager_fetchBuildingPolygonsFromLocation_radius_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchBuildingPolygonsFromLocation:*(a1 + 40) radius:*(a1 + 48) handler:*(a1 + 64)];
}

uint64_t __72__RTMapServiceManager_fetchBuildingPolygonsFromLocation_radius_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchPointOfInterestAttributesWithIdentifier:(unint64_t)a3 options:(id)a4 handler:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__RTMapServiceManager_fetchPointOfInterestAttributesWithIdentifier_options_handler___block_invoke;
  block[3] = &unk_2788C47A8;
  v16 = v10;
  v17 = a2;
  v18 = a3;
  block[4] = self;
  v15 = v9;
  v12 = v9;
  v13 = v10;
  dispatch_async(v11, block);
}

void __84__RTMapServiceManager_fetchPointOfInterestAttributesWithIdentifier_options_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__RTMapServiceManager_fetchPointOfInterestAttributesWithIdentifier_options_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchPointOfInterestAttributesWithIdentifier:*(a1 + 64) options:*(a1 + 40) handler:*(a1 + 48)];
}

uint64_t __84__RTMapServiceManager_fetchPointOfInterestAttributesWithIdentifier_options_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchPointOfInterestsAroundCoordinate:(id)a3 radius:(double)a4 options:(id)a5 handler:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [(RTNotifier *)self queue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__RTMapServiceManager_fetchPointOfInterestsAroundCoordinate_radius_options_handler___block_invoke;
  v18[3] = &unk_2788C7498;
  v21 = v13;
  v22 = a2;
  v18[4] = self;
  v19 = v11;
  v23 = a4;
  v20 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  dispatch_async(v14, v18);
}

void __84__RTMapServiceManager_fetchPointOfInterestsAroundCoordinate_radius_options_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__RTMapServiceManager_fetchPointOfInterestsAroundCoordinate_radius_options_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 64);
  v6 = *(a1 + 56);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchPointOfInterestsAroundCoordinate:*(a1 + 40) radius:*(a1 + 48) options:*(a1 + 56) handler:*(a1 + 72)];
}

uint64_t __84__RTMapServiceManager_fetchPointOfInterestsAroundCoordinate_radius_options_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)inferLocalBluePOIWithReferenceLocation:(id)a3 locations:(id)a4 accessPoints:(id)a5 bluePOITile:(id)a6 signalEnv:(int)a7 refreshAOI:(BOOL)a8 handler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  v20 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __126__RTMapServiceManager_inferLocalBluePOIWithReferenceLocation_locations_accessPoints_bluePOITile_signalEnv_refreshAOI_handler___block_invoke;
  block[3] = &unk_2788CFF50;
  v32 = v19;
  v33 = a2;
  block[4] = self;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v34 = a7;
  v35 = a8;
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  v25 = v19;
  dispatch_async(v20, block);
}

void __126__RTMapServiceManager_inferLocalBluePOIWithReferenceLocation_locations_accessPoints_bluePOITile_signalEnv_refreshAOI_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __126__RTMapServiceManager_inferLocalBluePOIWithReferenceLocation_locations_accessPoints_bluePOITile_signalEnv_refreshAOI_handler___block_invoke_2;
  v8 = &unk_2788C48C0;
  v3 = *(a1 + 80);
  v9 = *(a1 + 72);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:&v5];
  [v4 inferLocalBluePOIWithReferenceLocation:*(a1 + 40) locations:*(a1 + 48) accessPoints:*(a1 + 56) bluePOITile:*(a1 + 64) signalEnv:*(a1 + 88) refreshAOI:*(a1 + 92) handler:{*(a1 + 72), v5, v6, v7, v8}];
}

uint64_t __126__RTMapServiceManager_inferLocalBluePOIWithReferenceLocation_locations_accessPoints_bluePOITile_signalEnv_refreshAOI_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)compileCoreMLModelAtURL:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__RTMapServiceManager_compileCoreMLModelAtURL_handler___block_invoke;
  v12[3] = &unk_2788C6940;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

void __55__RTMapServiceManager_compileCoreMLModelAtURL_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__RTMapServiceManager_compileCoreMLModelAtURL_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 compileCoreMLModelAtURL:*(a1 + 40) handler:*(a1 + 48)];
}

uint64_t __55__RTMapServiceManager_compileCoreMLModelAtURL_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)downloadBluePOITilesForDownloadKeys:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__RTMapServiceManager_downloadBluePOITilesForDownloadKeys_handler___block_invoke;
  v12[3] = &unk_2788C6940;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

void __67__RTMapServiceManager_downloadBluePOITilesForDownloadKeys_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__RTMapServiceManager_downloadBluePOITilesForDownloadKeys_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 downloadBluePOITilesForDownloadKeys:*(a1 + 40) handler:*(a1 + 48)];
}

uint64_t __67__RTMapServiceManager_downloadBluePOITilesForDownloadKeys_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)downloadBluePOIMetadataWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTMapServiceManager_downloadBluePOIMetadataWithHandler___block_invoke;
  block[3] = &unk_2788C6300;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

void __58__RTMapServiceManager_downloadBluePOIMetadataWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__RTMapServiceManager_downloadBluePOIMetadataWithHandler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = [v3 _proxyForServicingSelector:v2 withErrorHandler:v5];
  [v4 downloadBluePOIMetadataWithHandler:*(a1 + 40)];
}

uint64_t __58__RTMapServiceManager_downloadBluePOIMetadataWithHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchConfidenceWeightForMapItem:(id)a3 startDate:(id)a4 endDate:(id)a5 options:(id)a6 handler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__RTMapServiceManager_fetchConfidenceWeightForMapItem_startDate_endDate_options_handler___block_invoke;
  block[3] = &unk_2788C6580;
  v29 = v17;
  v30 = a2;
  block[4] = self;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v17;
  dispatch_async(v18, block);
}

void __89__RTMapServiceManager_fetchConfidenceWeightForMapItem_startDate_endDate_options_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __89__RTMapServiceManager_fetchConfidenceWeightForMapItem_startDate_endDate_options_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 80);
  v6 = *(a1 + 72);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchConfidenceWeightForMapItem:*(a1 + 40) startDate:*(a1 + 48) endDate:*(a1 + 56) options:*(a1 + 64) handler:*(a1 + 72)];
}

uint64_t __89__RTMapServiceManager_fetchConfidenceWeightForMapItem_startDate_endDate_options_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchBluePOITilesForDownloadKeys:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__RTMapServiceManager_fetchBluePOITilesForDownloadKeys_handler___block_invoke;
  v12[3] = &unk_2788C6940;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

void __64__RTMapServiceManager_fetchBluePOITilesForDownloadKeys_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__RTMapServiceManager_fetchBluePOITilesForDownloadKeys_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchBluePOITilesForDownloadKeys:*(a1 + 40) handler:*(a1 + 48)];
}

uint64_t __64__RTMapServiceManager_fetchBluePOITilesForDownloadKeys_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)loadProtobufTileAtPath:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__RTMapServiceManager_loadProtobufTileAtPath_handler___block_invoke;
  v12[3] = &unk_2788C6940;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

void __54__RTMapServiceManager_loadProtobufTileAtPath_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__RTMapServiceManager_loadProtobufTileAtPath_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 loadProtobufTileAtPath:*(a1 + 40) handler:*(a1 + 48)];
}

uint64_t __54__RTMapServiceManager_loadProtobufTileAtPath_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchBluePOIMetadataWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__RTMapServiceManager_fetchBluePOIMetadataWithHandler___block_invoke;
  block[3] = &unk_2788C6300;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

void __55__RTMapServiceManager_fetchBluePOIMetadataWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__RTMapServiceManager_fetchBluePOIMetadataWithHandler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = [v3 _proxyForServicingSelector:v2 withErrorHandler:v5];
  [v4 fetchBluePOIMetadataWithHandler:*(a1 + 40)];
}

uint64_t __55__RTMapServiceManager_fetchBluePOIMetadataWithHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)computeWithInputSignals:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__RTMapServiceManager_computeWithInputSignals_handler___block_invoke;
  v12[3] = &unk_2788C6940;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

void __55__RTMapServiceManager_computeWithInputSignals_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__RTMapServiceManager_computeWithInputSignals_handler___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 computeWithInputSignals:*(a1 + 40) handler:*(a1 + 48)];
}

uint64_t __55__RTMapServiceManager_computeWithInputSignals_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)interruptComputeWithError:(id)a3
{
  v5 = a3;
  v6 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__RTMapServiceManager_interruptComputeWithError___block_invoke;
  block[3] = &unk_2788C6300;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

void __49__RTMapServiceManager_interruptComputeWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__RTMapServiceManager_interruptComputeWithError___block_invoke_2;
  v5[3] = &unk_2788C48C0;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = [v3 _proxyForServicingSelector:v2 withErrorHandler:v5];
  [v4 interruptComputeWithError:*(a1 + 40)];
}

uint64_t __49__RTMapServiceManager_interruptComputeWithError___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end