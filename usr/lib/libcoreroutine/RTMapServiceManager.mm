@interface RTMapServiceManager
- (RTMapServiceManager)init;
- (id)_proxyForServicingSelector:(SEL)selector withErrorHandler:(id)handler;
- (id)mapItemWithIdentifier:(id)identifier geoMapItem:(id)item source:(unint64_t)source creationDate:(id)date error:(id *)error;
- (id)mapItemWithIdentifier:(id)identifier geoMapItemStorage:(id)storage source:(unint64_t)source creationDate:(id)date error:(id *)error;
- (void)_setup;
- (void)_shutdownWithHandler:(id)handler;
- (void)compileCoreMLModelAtURL:(id)l handler:(id)handler;
- (void)computeWithInputSignals:(id)signals handler:(id)handler;
- (void)createMapItemWithIdentifier:(id)identifier geoMapItemStorage:(id)storage source:(unint64_t)source creationDate:(id)date handler:(id)handler;
- (void)downloadBluePOIMetadataWithHandler:(id)handler;
- (void)downloadBluePOITilesForDownloadKeys:(id)keys handler:(id)handler;
- (void)fetchAppClipURLsForMapItem:(id)item options:(id)options handler:(id)handler;
- (void)fetchBluePOIMetadataWithHandler:(id)handler;
- (void)fetchBluePOITilesForDownloadKeys:(id)keys handler:(id)handler;
- (void)fetchBuildingPolygonsFromLocation:(id)location radius:(double)radius handler:(id)handler;
- (void)fetchConfidenceWeightForMapItem:(id)item startDate:(id)date endDate:(id)endDate options:(id)options handler:(id)handler;
- (void)fetchCountryAndSubdivisionCodesFromLocation:(id)location options:(id)options handler:(id)handler;
- (void)fetchMapItemFromHandle:(id)handle options:(id)options handler:(id)handler;
- (void)fetchMapItemWithIdentifier:(id)identifier geoMapItem:(id)item source:(unint64_t)source creationDate:(id)date handler:(id)handler;
- (void)fetchMapItemsFromAddressDictionary:(id)dictionary options:(id)options handler:(id)handler;
- (void)fetchMapItemsFromAddressString:(id)string options:(id)options handler:(id)handler;
- (void)fetchMapItemsFromIdentifiers:(id)identifiers options:(id)options source:(unint64_t)source handler:(id)handler;
- (void)fetchMapItemsFromLocation:(id)location options:(id)options handler:(id)handler;
- (void)fetchMapItemsFromLocations:(id)locations accessPoints:(id)points startDate:(id)date endDate:(id)endDate options:(id)options handler:(id)handler;
- (void)fetchMapItemsFromNaturalLanguageQuery:(id)query location:(id)location options:(id)options handler:(id)handler;
- (void)fetchMapItemsRelatedPlacesFromLocation:(id)location options:(id)options handler:(id)handler;
- (void)fetchPointOfInterestAttributesWithIdentifier:(unint64_t)identifier options:(id)options handler:(id)handler;
- (void)fetchPointOfInterestsAroundCoordinate:(id)coordinate radius:(double)radius options:(id)options handler:(id)handler;
- (void)fetchPostalAddressForMapItem:(id)item options:(id)options handler:(id)handler;
- (void)inferLocalBluePOIWithReferenceLocation:(id)location locations:(id)locations accessPoints:(id)points bluePOITile:(id)tile signalEnv:(int)env refreshAOI:(BOOL)i handler:(id)handler;
- (void)interruptComputeWithError:(id)error;
- (void)loadProtobufTileAtPath:(id)path handler:(id)handler;
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
  remoteObjectInterface = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface setClasses:v45 forSelector:sel_fetchMapItemsFromNaturalLanguageQuery_location_options_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface2 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface2 setClasses:v45 forSelector:sel_fetchMapItemsFromLocation_options_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface3 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface3 setClasses:v45 forSelector:sel_fetchMapItemsRelatedPlacesFromLocation_options_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface4 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface4 setClasses:v45 forSelector:sel_fetchMapItemsRelatedPlacesFromLocation_options_handler_ argumentIndex:1 ofReply:1];

  remoteObjectInterface5 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface5 setClasses:v45 forSelector:sel_fetchMapItemsFromIdentifiers_options_source_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface6 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface6 setClasses:v45 forSelector:sel_fetchMapItemsFromLocations_accessPoints_startDate_endDate_options_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface7 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface7 setClasses:v45 forSelector:sel_fetchMapItemsFromAddressString_options_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface8 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface8 setClasses:v45 forSelector:sel_fetchMapItemsFromAddressDictionary_options_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface9 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface9 setClasses:v45 forSelector:sel_fetchPostalAddressForMapItem_options_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface10 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface10 setClasses:v45 forSelector:sel_fetchAppClipURLsForMapItem_options_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface11 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface11 setClasses:v45 forSelector:sel_createMapItemWithIdentifier_geoMapItemStorage_source_creationDate_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface12 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface12 setClasses:v45 forSelector:sel_fetchCountryAndSubdivisionCodesFromLocation_options_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface13 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface13 setClasses:v45 forSelector:sel_fetchBuildingPolygonsFromLocation_radius_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface14 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface14 setClasses:v45 forSelector:sel_fetchPointOfInterestAttributesWithIdentifier_options_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface15 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface15 setClasses:v45 forSelector:sel_fetchPointOfInterestsAroundCoordinate_radius_options_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface16 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface16 setClasses:v45 forSelector:sel_inferLocalBluePOIWithReferenceLocation_locations_accessPoints_bluePOITile_signalEnv_refreshAOI_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface17 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface17 setClasses:v45 forSelector:sel_downloadBluePOITilesForDownloadKeys_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface18 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface18 setClasses:v45 forSelector:sel_downloadBluePOIMetadataWithHandler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface19 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface19 setClasses:v45 forSelector:sel_fetchConfidenceWeightForMapItem_startDate_endDate_options_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface20 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface20 setClasses:v45 forSelector:sel_fetchBluePOITilesForDownloadKeys_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface21 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface21 setClasses:v45 forSelector:sel_loadProtobufTileAtPath_handler_ argumentIndex:0 ofReply:1];

  remoteObjectInterface22 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface22 setClasses:v45 forSelector:sel_fetchBluePOIMetadataWithHandler_ argumentIndex:0 ofReply:1];

  v36 = MEMORY[0x277CBEB98];
  v37 = objc_opt_class();
  v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
  remoteObjectInterface23 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  [remoteObjectInterface23 setClasses:v38 forSelector:sel_computeWithInputSignals_handler_ argumentIndex:0 ofReply:1];

  [(NSXPCConnection *)self->_xpcConnection resume];
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v4 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v4 = handlerCopy;
  }
}

- (id)_proxyForServicingSelector:(SEL)selector withErrorHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__RTMapServiceManager__proxyForServicingSelector_withErrorHandler___block_invoke;
  aBlock[3] = &unk_2788C56C0;
  aBlock[4] = self;
  selectorCopy = selector;
  v7 = handlerCopy;
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

  v19 = RTErrorConnectionCreate(selector, v18, v10, v11, v12, v13, v14, v15, v21);
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

- (void)fetchMapItemFromHandle:(id)handle options:(id)options handler:(id)handler
{
  handleCopy = handle;
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RTMapServiceManager_fetchMapItemFromHandle_options_handler___block_invoke;
  block[3] = &unk_2788C6530;
  v19 = handlerCopy;
  v20 = a2;
  block[4] = self;
  v17 = handleCopy;
  v18 = optionsCopy;
  v13 = optionsCopy;
  v14 = handleCopy;
  v15 = handlerCopy;
  dispatch_async(queue, block);
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

- (void)fetchMapItemsFromNaturalLanguageQuery:(id)query location:(id)location options:(id)options handler:(id)handler
{
  queryCopy = query;
  locationCopy = location;
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __86__RTMapServiceManager_fetchMapItemsFromNaturalLanguageQuery_location_options_handler___block_invoke;
  v20[3] = &unk_2788C6238;
  v24 = handlerCopy;
  v25 = a2;
  v20[4] = self;
  v21 = queryCopy;
  v22 = locationCopy;
  v23 = optionsCopy;
  v16 = optionsCopy;
  v17 = locationCopy;
  v18 = queryCopy;
  v19 = handlerCopy;
  dispatch_async(queue, v20);
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

- (void)fetchMapItemsFromLocation:(id)location options:(id)options handler:(id)handler
{
  locationCopy = location;
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__RTMapServiceManager_fetchMapItemsFromLocation_options_handler___block_invoke;
  block[3] = &unk_2788C6530;
  v19 = handlerCopy;
  v20 = a2;
  block[4] = self;
  v17 = locationCopy;
  v18 = optionsCopy;
  v13 = optionsCopy;
  v14 = locationCopy;
  v15 = handlerCopy;
  dispatch_async(queue, block);
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

- (void)fetchMapItemsRelatedPlacesFromLocation:(id)location options:(id)options handler:(id)handler
{
  locationCopy = location;
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__RTMapServiceManager_fetchMapItemsRelatedPlacesFromLocation_options_handler___block_invoke;
  block[3] = &unk_2788C6530;
  v19 = handlerCopy;
  v20 = a2;
  block[4] = self;
  v17 = locationCopy;
  v18 = optionsCopy;
  v13 = optionsCopy;
  v14 = locationCopy;
  v15 = handlerCopy;
  dispatch_async(queue, block);
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

- (void)fetchMapItemsFromIdentifiers:(id)identifiers options:(id)options source:(unint64_t)source handler:(id)handler
{
  identifiersCopy = identifiers;
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__RTMapServiceManager_fetchMapItemsFromIdentifiers_options_source_handler___block_invoke;
  v18[3] = &unk_2788C7498;
  v18[4] = self;
  v19 = identifiersCopy;
  v20 = optionsCopy;
  v21 = handlerCopy;
  v22 = a2;
  sourceCopy = source;
  v15 = optionsCopy;
  v16 = identifiersCopy;
  v17 = handlerCopy;
  dispatch_async(queue, v18);
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

- (void)fetchMapItemsFromLocations:(id)locations accessPoints:(id)points startDate:(id)date endDate:(id)endDate options:(id)options handler:(id)handler
{
  locationsCopy = locations;
  pointsCopy = points;
  dateCopy = date;
  endDateCopy = endDate;
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __97__RTMapServiceManager_fetchMapItemsFromLocations_accessPoints_startDate_endDate_options_handler___block_invoke;
  v28[3] = &unk_2788CDE80;
  v34 = handlerCopy;
  v35 = a2;
  v28[4] = self;
  v29 = locationsCopy;
  v30 = pointsCopy;
  v31 = dateCopy;
  v32 = endDateCopy;
  v33 = optionsCopy;
  v22 = optionsCopy;
  v23 = endDateCopy;
  v24 = dateCopy;
  v25 = pointsCopy;
  v26 = locationsCopy;
  v27 = handlerCopy;
  dispatch_async(queue, v28);
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

- (void)fetchMapItemsFromAddressString:(id)string options:(id)options handler:(id)handler
{
  stringCopy = string;
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTMapServiceManager_fetchMapItemsFromAddressString_options_handler___block_invoke;
  block[3] = &unk_2788C6530;
  v19 = handlerCopy;
  v20 = a2;
  block[4] = self;
  v17 = stringCopy;
  v18 = optionsCopy;
  v13 = optionsCopy;
  v14 = stringCopy;
  v15 = handlerCopy;
  dispatch_async(queue, block);
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

- (void)fetchMapItemsFromAddressDictionary:(id)dictionary options:(id)options handler:(id)handler
{
  dictionaryCopy = dictionary;
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__RTMapServiceManager_fetchMapItemsFromAddressDictionary_options_handler___block_invoke;
  block[3] = &unk_2788C6530;
  v19 = handlerCopy;
  v20 = a2;
  block[4] = self;
  v17 = dictionaryCopy;
  v18 = optionsCopy;
  v13 = optionsCopy;
  v14 = dictionaryCopy;
  v15 = handlerCopy;
  dispatch_async(queue, block);
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

- (void)fetchPostalAddressForMapItem:(id)item options:(id)options handler:(id)handler
{
  itemCopy = item;
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTMapServiceManager_fetchPostalAddressForMapItem_options_handler___block_invoke;
  block[3] = &unk_2788C6530;
  v19 = handlerCopy;
  v20 = a2;
  block[4] = self;
  v17 = itemCopy;
  v18 = optionsCopy;
  v13 = optionsCopy;
  v14 = itemCopy;
  v15 = handlerCopy;
  dispatch_async(queue, block);
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

- (void)fetchAppClipURLsForMapItem:(id)item options:(id)options handler:(id)handler
{
  itemCopy = item;
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RTMapServiceManager_fetchAppClipURLsForMapItem_options_handler___block_invoke;
  block[3] = &unk_2788C6530;
  v19 = handlerCopy;
  v20 = a2;
  block[4] = self;
  v17 = itemCopy;
  v18 = optionsCopy;
  v13 = optionsCopy;
  v14 = itemCopy;
  v15 = handlerCopy;
  dispatch_async(queue, block);
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

- (void)createMapItemWithIdentifier:(id)identifier geoMapItemStorage:(id)storage source:(unint64_t)source creationDate:(id)date handler:(id)handler
{
  identifierCopy = identifier;
  storageCopy = storage;
  dateCopy = date;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__RTMapServiceManager_createMapItemWithIdentifier_geoMapItemStorage_source_creationDate_handler___block_invoke;
  block[3] = &unk_2788CE9C0;
  v26 = handlerCopy;
  v27 = a2;
  block[4] = self;
  v23 = identifierCopy;
  sourceCopy = source;
  v24 = storageCopy;
  v25 = dateCopy;
  v18 = dateCopy;
  v19 = storageCopy;
  v20 = identifierCopy;
  v21 = handlerCopy;
  dispatch_async(queue, block);
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

- (id)mapItemWithIdentifier:(id)identifier geoMapItemStorage:(id)storage source:(unint64_t)source creationDate:(id)date error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  storageCopy = storage;
  dateCopy = date;
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
  v36 = identifierCopy;
  [(RTMapServiceManager *)self createMapItemWithIdentifier:identifierCopy geoMapItemStorage:storageCopy source:source creationDate:dateCopy handler:v38];
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
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v25 = [callStackSymbols filteredArrayUsingPredicate:v23];
    firstObject = [v25 firstObject];

    [v22 submitToCoreAnalytics:firstObject type:1 duration:v21];
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

  if (error)
  {
    *error = v43[5];
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

- (void)fetchMapItemWithIdentifier:(id)identifier geoMapItem:(id)item source:(unint64_t)source creationDate:(id)date handler:(id)handler
{
  identifierCopy = identifier;
  itemCopy = item;
  dateCopy = date;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__RTMapServiceManager_fetchMapItemWithIdentifier_geoMapItem_source_creationDate_handler___block_invoke;
  block[3] = &unk_2788CFF28;
  v23 = itemCopy;
  selfCopy = self;
  v27 = handlerCopy;
  v28 = a2;
  sourceCopy = source;
  v25 = identifierCopy;
  v26 = dateCopy;
  v18 = dateCopy;
  v19 = identifierCopy;
  v20 = handlerCopy;
  v21 = itemCopy;
  dispatch_async(queue, block);
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

- (id)mapItemWithIdentifier:(id)identifier geoMapItem:(id)item source:(unint64_t)source creationDate:(id)date error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  itemCopy = item;
  dateCopy = date;
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
  v36 = identifierCopy;
  [(RTMapServiceManager *)self fetchMapItemWithIdentifier:identifierCopy geoMapItem:itemCopy source:source creationDate:dateCopy handler:v38];
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
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v25 = [callStackSymbols filteredArrayUsingPredicate:v23];
    firstObject = [v25 firstObject];

    [v22 submitToCoreAnalytics:firstObject type:1 duration:v21];
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

  if (error)
  {
    *error = v43[5];
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

- (void)fetchCountryAndSubdivisionCodesFromLocation:(id)location options:(id)options handler:(id)handler
{
  locationCopy = location;
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__RTMapServiceManager_fetchCountryAndSubdivisionCodesFromLocation_options_handler___block_invoke;
  block[3] = &unk_2788C6530;
  v19 = handlerCopy;
  v20 = a2;
  block[4] = self;
  v17 = locationCopy;
  v18 = optionsCopy;
  v13 = optionsCopy;
  v14 = locationCopy;
  v15 = handlerCopy;
  dispatch_async(queue, block);
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

- (void)fetchBuildingPolygonsFromLocation:(id)location radius:(double)radius handler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__RTMapServiceManager_fetchBuildingPolygonsFromLocation_radius_handler___block_invoke;
  block[3] = &unk_2788C47A8;
  v16 = handlerCopy;
  v17 = a2;
  block[4] = self;
  v15 = locationCopy;
  radiusCopy = radius;
  v12 = locationCopy;
  v13 = handlerCopy;
  dispatch_async(queue, block);
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

- (void)fetchPointOfInterestAttributesWithIdentifier:(unint64_t)identifier options:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__RTMapServiceManager_fetchPointOfInterestAttributesWithIdentifier_options_handler___block_invoke;
  block[3] = &unk_2788C47A8;
  v16 = handlerCopy;
  v17 = a2;
  identifierCopy = identifier;
  block[4] = self;
  v15 = optionsCopy;
  v12 = optionsCopy;
  v13 = handlerCopy;
  dispatch_async(queue, block);
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

- (void)fetchPointOfInterestsAroundCoordinate:(id)coordinate radius:(double)radius options:(id)options handler:(id)handler
{
  coordinateCopy = coordinate;
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__RTMapServiceManager_fetchPointOfInterestsAroundCoordinate_radius_options_handler___block_invoke;
  v18[3] = &unk_2788C7498;
  v21 = handlerCopy;
  v22 = a2;
  v18[4] = self;
  v19 = coordinateCopy;
  radiusCopy = radius;
  v20 = optionsCopy;
  v15 = optionsCopy;
  v16 = coordinateCopy;
  v17 = handlerCopy;
  dispatch_async(queue, v18);
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

- (void)inferLocalBluePOIWithReferenceLocation:(id)location locations:(id)locations accessPoints:(id)points bluePOITile:(id)tile signalEnv:(int)env refreshAOI:(BOOL)i handler:(id)handler
{
  locationCopy = location;
  locationsCopy = locations;
  pointsCopy = points;
  tileCopy = tile;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __126__RTMapServiceManager_inferLocalBluePOIWithReferenceLocation_locations_accessPoints_bluePOITile_signalEnv_refreshAOI_handler___block_invoke;
  block[3] = &unk_2788CFF50;
  v32 = handlerCopy;
  v33 = a2;
  block[4] = self;
  v28 = locationCopy;
  v29 = locationsCopy;
  v30 = pointsCopy;
  v31 = tileCopy;
  envCopy = env;
  iCopy = i;
  v21 = tileCopy;
  v22 = pointsCopy;
  v23 = locationsCopy;
  v24 = locationCopy;
  v25 = handlerCopy;
  dispatch_async(queue, block);
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

- (void)compileCoreMLModelAtURL:(id)l handler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__RTMapServiceManager_compileCoreMLModelAtURL_handler___block_invoke;
  v12[3] = &unk_2788C6940;
  v14 = handlerCopy;
  v15 = a2;
  v12[4] = self;
  v13 = lCopy;
  v10 = lCopy;
  v11 = handlerCopy;
  dispatch_async(queue, v12);
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

- (void)downloadBluePOITilesForDownloadKeys:(id)keys handler:(id)handler
{
  keysCopy = keys;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__RTMapServiceManager_downloadBluePOITilesForDownloadKeys_handler___block_invoke;
  v12[3] = &unk_2788C6940;
  v14 = handlerCopy;
  v15 = a2;
  v12[4] = self;
  v13 = keysCopy;
  v10 = keysCopy;
  v11 = handlerCopy;
  dispatch_async(queue, v12);
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

- (void)downloadBluePOIMetadataWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTMapServiceManager_downloadBluePOIMetadataWithHandler___block_invoke;
  block[3] = &unk_2788C6300;
  v9 = handlerCopy;
  v10 = a2;
  block[4] = self;
  v7 = handlerCopy;
  dispatch_async(queue, block);
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

- (void)fetchConfidenceWeightForMapItem:(id)item startDate:(id)date endDate:(id)endDate options:(id)options handler:(id)handler
{
  itemCopy = item;
  dateCopy = date;
  endDateCopy = endDate;
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__RTMapServiceManager_fetchConfidenceWeightForMapItem_startDate_endDate_options_handler___block_invoke;
  block[3] = &unk_2788C6580;
  v29 = handlerCopy;
  v30 = a2;
  block[4] = self;
  v25 = itemCopy;
  v26 = dateCopy;
  v27 = endDateCopy;
  v28 = optionsCopy;
  v19 = optionsCopy;
  v20 = endDateCopy;
  v21 = dateCopy;
  v22 = itemCopy;
  v23 = handlerCopy;
  dispatch_async(queue, block);
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

- (void)fetchBluePOITilesForDownloadKeys:(id)keys handler:(id)handler
{
  keysCopy = keys;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__RTMapServiceManager_fetchBluePOITilesForDownloadKeys_handler___block_invoke;
  v12[3] = &unk_2788C6940;
  v14 = handlerCopy;
  v15 = a2;
  v12[4] = self;
  v13 = keysCopy;
  v10 = keysCopy;
  v11 = handlerCopy;
  dispatch_async(queue, v12);
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

- (void)loadProtobufTileAtPath:(id)path handler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__RTMapServiceManager_loadProtobufTileAtPath_handler___block_invoke;
  v12[3] = &unk_2788C6940;
  v14 = handlerCopy;
  v15 = a2;
  v12[4] = self;
  v13 = pathCopy;
  v10 = pathCopy;
  v11 = handlerCopy;
  dispatch_async(queue, v12);
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

- (void)fetchBluePOIMetadataWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__RTMapServiceManager_fetchBluePOIMetadataWithHandler___block_invoke;
  block[3] = &unk_2788C6300;
  v9 = handlerCopy;
  v10 = a2;
  block[4] = self;
  v7 = handlerCopy;
  dispatch_async(queue, block);
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

- (void)computeWithInputSignals:(id)signals handler:(id)handler
{
  signalsCopy = signals;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__RTMapServiceManager_computeWithInputSignals_handler___block_invoke;
  v12[3] = &unk_2788C6940;
  v14 = handlerCopy;
  v15 = a2;
  v12[4] = self;
  v13 = signalsCopy;
  v10 = signalsCopy;
  v11 = handlerCopy;
  dispatch_async(queue, v12);
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

- (void)interruptComputeWithError:(id)error
{
  errorCopy = error;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__RTMapServiceManager_interruptComputeWithError___block_invoke;
  block[3] = &unk_2788C6300;
  v9 = errorCopy;
  v10 = a2;
  block[4] = self;
  v7 = errorCopy;
  dispatch_async(queue, block);
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