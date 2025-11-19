@interface VKMapView
+ (BOOL)_elevatedGroundIsAvailable;
+ (BOOL)_globeIsAvailable;
+ (void)updateUserLocationAnnotationStateForNavigationPuck:(id)a3 isPuckEnabled:(BOOL)a4 synchronizedState:(void *)a5;
- ($1AB5FA073B851C12C2339EC22442E995)centerCoordinate;
- ($6EFE6C6748B912A6EAC8A8E593ED1344)mapDisplayStyle;
- ($F24F406B2B787EFB06265DBA3D28CBD5)convertPoint:(CGPoint)a3 toCoordinateFromLayer:(id)a4;
- ($F24F406B2B787EFB06265DBA3D28CBD5)convertPoint:(CGPoint)a3 toMapPointFromLayer:(id)a4;
- ($FF918C85BF8E73478720C66798E418D4)annotationTrackingBehavior;
- (BOOL)_advancedLightingAllowed;
- (BOOL)_advancedWaterAllowed;
- (BOOL)_buildingHeightsAllowed;
- (BOOL)_colorizedBuildingsAllowed;
- (BOOL)_createDisplayLayer;
- (BOOL)_realTimeEVChargerIsEnabled;
- (BOOL)_roundedBuildingsAllowed;
- (BOOL)_supportsDeferredCamera;
- (BOOL)buildingFootprintsDisabled;
- (BOOL)canEnter3DMode;
- (BOOL)canRotate;
- (BOOL)canZoomInForTileSize:(int64_t)a3;
- (BOOL)canZoomOutForTileSize:(int64_t)a3;
- (BOOL)cancelPendingMove;
- (BOOL)debugLayoutContinuously;
- (BOOL)displayedFloorIsDefaultForVenueBuilding:(id)a3;
- (BOOL)enableAdvancedLighting;
- (BOOL)enableAdvancedWater;
- (BOOL)enableBuildingHeights;
- (BOOL)enableColorizedBuildings;
- (BOOL)enableDebugLabelHighlighting;
- (BOOL)enableGlobe;
- (BOOL)enableRoundedBuildings;
- (BOOL)gridDisabled;
- (BOOL)hasTraffic;
- (BOOL)isAnimatingToTrackAnnotation;
- (BOOL)isCameraInHikingBoundary;
- (BOOL)isCameraInHikingBufferRegion;
- (BOOL)isDimmingBaseMap;
- (BOOL)isEffectivelyHidden;
- (BOOL)isFullyDrawn;
- (BOOL)isFullyPitched;
- (BOOL)isGesturing;
- (BOOL)isLoadingMuninMetadata;
- (BOOL)isPitchable;
- (BOOL)isPitched;
- (BOOL)isPointValidForGesturing:(CGPoint)a3;
- (BOOL)isShowingCuratedElevatedGround;
- (BOOL)labelsDisabled;
- (BOOL)loadMuninAvailability;
- (BOOL)moveToMarker:(id)a3 withHeading:(double)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (BOOL)moveToStorefrontView:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (BOOL)polygonsDisabled;
- (BOOL)preferStaleTiles;
- (BOOL)rastersDisabled;
- (BOOL)renderInverseFills;
- (BOOL)renderOverlayPolygons;
- (BOOL)roadsDisabled;
- (BOOL)shouldHideOffscreenSelectedAnnotation;
- (BOOL)shouldLoadFallbackTiles;
- (BOOL)shouldLoadMapMargin;
- (BOOL)showsBuildings;
- (BOOL)showsHiking;
- (BOOL)showsHillshade;
- (BOOL)showsLiveEVData;
- (BOOL)showsPOIUpdates;
- (BOOL)showsTopographicFeatures;
- (BOOL)showsVenues;
- (BOOL)staysCenteredDuringPinch;
- (BOOL)staysCenteredDuringRotation;
- (BOOL)stylesheetIsDevResource;
- (BOOL)supportsMapType:(int)a3;
- (BOOL)supportsNightMode;
- (BOOL)tapAtPoint:(CGPoint)a3;
- (BOOL)trafficEnabled;
- (BOOL)trafficIncidentsEnabled;
- (BOOL)transitLinesDisabled;
- (BOOL)wantsTimerTick;
- (CADisplay)hostDisplay;
- (CGPoint)convertCoordinate:(id)a3 toCameraModelPointToLayer:(id)a4;
- (CGPoint)convertCoordinate:(id)a3 toPointToLayer:(id)a4;
- (CGPoint)convertMapPoint:(id)a3 toPointToLayer:(id)a4;
- (GEOFeatureStyleAttributes)clientFeatureStyleAttributes;
- (GEOMapRegion)mapRegion;
- (GEOMapRegion)mapRegionIgnoringEdgeInsets;
- (NSArray)labelMarkers;
- (NSArray)visibleTileSets;
- (VKEdgeInsets)edgeInsets;
- (VKEdgeInsets)fullyOccludedEdgeInsets;
- (VKEdgeInsets)labelEdgeInsets;
- (VKEdgeInsets)labelEdgeWidths;
- (VKLabelMarker)selectedLabelMarker;
- (VKLabelSelectionFilter)labelSelectionFilter;
- (VKMapView)initWithDescriptor:(id)a3;
- (VKMapView)initWithLayer:(id)a3;
- (VKMapViewCameraDelegate)cameraDelegate;
- (VKMapViewDelegate)mapDelegate;
- (VKMetrics)metrics;
- (VKPolylineOverlay)focusedLabelsPolyline;
- (VKSceneConfiguration)sceneConfiguration;
- (__CFString)initWithDescriptor:;
- (double)altitude;
- (double)currentZoomLevelForTileSize:(int64_t)a3;
- (double)distanceFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 fromLayer:(id)a5 withPrecision:(int64_t)a6;
- (double)durationToAnimateToMapRegion:(id)a3;
- (double)maxPitch;
- (double)maximumZoomLevelForTileSize:(int64_t)a3;
- (double)minPitch;
- (double)minimumZoomLevelForTileSize:(int64_t)a3;
- (double)pitch;
- (double)presentationYaw;
- (double)topDownMinimumZoomLevelForTileSize:(int64_t)a3;
- (double)trackingZoomScale;
- (double)yaw;
- (double)zoomLevelAdjustmentForTileSize:(int64_t)a3;
- (float)currentZoomLevel;
- (float)styleZOffsetScale;
- (float)worldSpaceWidthOfView;
- (id).cxx_construct;
- (id)_mapDelegateQueue;
- (id)activeLogics;
- (id)annotationCoordinateTest;
- (id)annotationRectTest;
- (id)arWalkingDebugOutput;
- (id)attributionsForCurrentRegion;
- (id)buildingMarkerAtPoint:(CGPoint)a3;
- (id)clearVenueBuildingFloorSelections;
- (id)consoleString:(BOOL)a3;
- (id)currentMarker;
- (id)debugLabelString:(BOOL)a3;
- (id)detailedDescription;
- (id)detailedDescriptionDictionaryRepresentation;
- (id)iconForStyleAttributes:(id)a3 contentScale:(double)a4 size:(int64_t)a5 transparent:(BOOL)a6;
- (id)initShouldRasterize:(BOOL)a3 inBackground:(BOOL)a4 contentScale:(double)a5 auditToken:(id)a6 mapViewPurpose:(int64_t)a7 allowsAntialiasing:(BOOL)a8;
- (id)labelMarkerForCustomFeatureAnnotation:(id)a3;
- (id)labelMarkerForCustomFeatureAnnotation:(id)a3 dataSource:(id)a4;
- (id)labelMarkerForSelectionAtPoint:(CGPoint)a3 selectableLabelsOnly:(BOOL)a4;
- (id)markerAtPoint:(CGPoint)a3;
- (id)muninMarkerAtCoordinate:(id)a3;
- (id)muninMarkerAtCoordinate:(id)a3 completeMarkerHandler:(id)a4;
- (id)navigationPuck;
- (id)onscreenImageResources;
- (id)rapMarkerAtPoint:(CGPoint)a3;
- (id)resolveMapCameraController;
- (id)roadLabelTilesInScene;
- (id)selectedTransitLineIDs;
- (id)setARWalkingFeatureSet:(id)a3;
- (id)testStatistics;
- (id)tileStatistics;
- (id)transitLineMarkersForSelectionAtPoint:(CGPoint)a3;
- (id)transitLineMarkersInCurrentViewport;
- (id)venueAtLocation:(id)a3 withMarginForError:(BOOL)a4 includeNonRevealedVenues:(BOOL)a5;
- (id)venueBuildingWithFocus;
- (id)venueWithFocus;
- (id)venueWithID:(unint64_t)a3;
- (int)arMode;
- (int)arSceneType;
- (int)mapType;
- (int64_t)cameraCollisionMode;
- (int64_t)currentMapMode;
- (int64_t)getCurrentSetARInterfaceOrientation;
- (int64_t)labelScaleFactor;
- (int64_t)navigationShieldSize;
- (int64_t)shieldSize;
- (int64_t)terrainMode;
- (optional<double>)puckAnimator:(id)a3 getElevationWithCoordinate:(const void *)a4;
- (signed)defaultFloorOrdinalForVenueBuilding:(id)a3;
- (signed)displayedFloorOrdinalForVenueBuilding:(id)a3;
- (unint64_t)getSceneState;
- (unordered_map<unsigned)clientStyleAttributes;
- (void)_applyMapDisplayStyle:(id)a3 animated:(BOOL)a4 duration:(double)a5;
- (void)_closeLoaderConnection:(BOOL)a3;
- (void)_configureDefaultSettings;
- (void)_forceLayoutForSuspensionSnapShot;
- (void)_notifyDelegateFlyoverTourLabelChanged:(id)a3;
- (void)_postDelegateCallbackBlock:(id)a3;
- (void)_reconfigurePermissions;
- (void)_resetElevationRasterMinZoom;
- (void)_runFlyoverTourStateChange:(int)a3 completion:(id)a4;
- (void)_setARSession:(id)a3;
- (void)_setFloorSwitcherZoomPadding:(float)a3;
- (void)_setThermalPressureLevel:(unint64_t)a3;
- (void)_setupThermalMonitor;
- (void)_shutdownThermalMonitor;
- (void)_updateBackgroundColor;
- (void)_updateBuildingCompressionSetting;
- (void)_updateCameraThermalOptions;
- (void)_updateMapDisplayStyle;
- (void)_updateOnlyShowRoadClosures;
- (void)_updateThermalPressureLevel;
- (void)activateInternalSettings;
- (void)activeARWalkingFeatureDidUpdate:(id)a3;
- (void)activeLogics;
- (void)addCustomFeatureDataSource:(id)a3;
- (void)addExternalAnchor:(id)a3;
- (void)addOverlay:(id)a3;
- (void)addPersistentRouteOverlay:(id)a3;
- (void)addRouteOverlay:(id)a3;
- (void)arController:(id)a3 arSessionWasInterrupted:(unint64_t)a4;
- (void)arController:(id)a3 didChangeTrackingState:(unint64_t)a4 reason:(unint64_t)a5;
- (void)arController:(id)a3 didEncounterError:(id)a4;
- (void)arControllerSessionInterruptionEnded:(id)a3;
- (void)arWalkingElevationRequestFailure:(id)a3;
- (void)arWalkingFeatureSetStateDidUpdate:(id)a3;
- (void)clearPreviouslySelectedLabelMarker;
- (void)clearScene;
- (void)dealloc;
- (void)debugHighlightFeatureMarker:(const void *)a3;
- (void)debugHighlightLabelAtPoint:(CGPoint)a3;
- (void)deselectFeatureId;
- (void)deselectLabelMarker;
- (void)deselectTrails;
- (void)deselectTransitLineMarker;
- (void)deselectVenuePoiFeatureId;
- (void)didEnterBackground;
- (void)didFinishLoadingData;
- (void)didFinishLoadingDataWithError:(id)a3;
- (void)didFinishSnapshotting;
- (void)didPresent;
- (void)didReceiveFlushTileCaches;
- (void)didReceiveLocalChanged;
- (void)didReceiveMemoryWarning;
- (void)didReceivePowerStateChanged;
- (void)didStartLoadingData;
- (void)didUpdateSceneStatus:(unsigned __int8)a3;
- (void)didUpdateVerticalYawTo:(double)a3;
- (void)disableMapDisplayStyleDebugOverride;
- (void)disableTestStatistics;
- (void)disableTileStatistics;
- (void)enableMapDisplayStyleDebugOverride:(id)a3;
- (void)enableTestStatistics;
- (void)enableTileStatistics;
- (void)enableViewDataLoading:(BOOL)a3;
- (void)enter3DMode;
- (void)enterARWalking:(id)a3;
- (void)enterMuninForMarker:(id)a3 withHeading:(double)a4;
- (void)enterMuninForStorefrontView:(id)a3 secondaryStorefrontView:(id)a4;
- (void)exit3DMode;
- (void)exitARMode;
- (void)flushTileLoads;
- (void)forceCameraUpdateForFrameResize;
- (void)forceLayout;
- (void)forceResolveCameraController;
- (void)initWithDescriptor:;
- (void)injectDebugARFeatures:(id)a3;
- (void)injectDebugARUserRouteCoordinate:(PolylineCoordinate)a3;
- (void)insertOverlay:(id)a3 aboveOverlay:(id)a4;
- (void)insertOverlay:(id)a3 belowOverlay:(id)a4;
- (void)labelManagerDidLayout;
- (void)labelMarkerDidChangeState:(const void *)a3;
- (void)location:(id)a3 isInHikingContextualRegion:(BOOL)a4;
- (void)locationInHikingToolTipRegion:(unint64_t)a3;
- (void)map:(id)a3 canShowFlyoverDidChange:(BOOL)a4;
- (void)map:(id)a3 didEnterARMode:(BOOL)a4;
- (void)mapController:(id)a3 requestsDisplayRate:(int64_t)a4;
- (void)mapDidFinishChangingMapDisplayStyle:(id)a3;
- (void)mapDidReloadStylesheet:(id)a3;
- (void)moveToFlyoverTourStartPosition:(id)a3 duration:(double)a4 completion:(id)a5;
- (void)muninJunctionDidChange:(const void *)a3 currentRoad:(const void *)a4 localize:(BOOL)a5;
- (void)navigationCameraReturnToPuck;
- (void)nearestVenueDidChange:(const void *)a3 building:(const void *)a4;
- (void)openLoaderConnection;
- (void)panWithOffset:(CGPoint)a3 relativeToScreenPoint:(CGPoint)a4 animated:(BOOL)a5 duration:(double)a6 completionHandler:(id)a7;
- (void)pauseTracking;
- (void)performStylesheetDidChange;
- (void)populateDebugNode:(void *)a3 withOptions:(const void *)a4;
- (void)prepareFlyoverAnimation:(id)a3 completion:(id)a4;
- (void)projectCoordinate:(id)a3 toPoint:(CGPoint *)a4;
- (void)puckAnimator:(id)a3 runAnimation:(id)a4;
- (void)puckAnimator:(id)a3 updatedPosition:(const void *)a4 course:(const void *)a5 polylineCoordinate:(PolylineCoordinate)a6;
- (void)puckLocationTracingEvent:(id)a3;
- (void)reloadStylesheet;
- (void)removeCustomFeatureDataSource:(id)a3;
- (void)removeExternalAnchor:(id)a3;
- (void)removeOverlay:(id)a3;
- (void)removePersistentRouteOverlay:(id)a3;
- (void)removeRouteOverlay:(id)a3;
- (void)renderInContext:(CGContext *)a3;
- (void)requestHikingContextualRegionDoesIntersectForLocation:(id)a3;
- (void)requestHikingToolTipRegionIDForLocation:(id)a3;
- (void)resetTestStatistics;
- (void)resetTileStatistics;
- (void)selectLabelMarker:(id)a3 completion:(id)a4;
- (void)selectTransitLineMarker:(id)a3;
- (void)selectedLabelMarkerDidCompleteLayout:(const void *)a3;
- (void)selectedLabelMarkerWillDisappear:(const void *)a3;
- (void)setARInterfaceOrientation:(int64_t)a3;
- (void)setARMode:(int)a3;
- (void)setARSceneType:(int)a3;
- (void)setAnnotationTrackingBehavior:(id *)a3;
- (void)setApplicationState:(unsigned __int8)a3 displayedSearchResultsType:(unsigned __int8)a4;
- (void)setApplicationSubState:(unsigned __int8)a3;
- (void)setApplicationUILayout:(int64_t)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCameraCollisionMode:(int64_t)a3;
- (void)setCameraDelegate:(id)a3;
- (void)setCameraFramingInsets:(VKEdgeInsets)a3;
- (void)setCameraHorizontalOffset:(double)a3 duration:(double)a4 timingFunction:(id)a5;
- (void)setCanonicalSkyHeight:(double)a3;
- (void)setCarDisplayConfig:(int64_t)a3 animated:(BOOL)a4;
- (void)setCenterCoordinate:(id)a3 altitude:(double)a4 yaw:(double)a5 pitch:(double)a6 duration:(double)a7 timingCurve:(id)a8 completion:(id)a9;
- (void)setCenterCoordinateDistanceRange:(id *)a3 duration:(double)a4 timingFunction:(id)a5;
- (void)setContentsScale:(double)a3;
- (void)setCurrentLocationText:(id)a3;
- (void)setDebugLayoutContinuously:(BOOL)a3;
- (void)setDesiredMapMode:(int64_t)a3;
- (void)setDimmingBaseMap:(BOOL)a3 animated:(BOOL)a4 duration:(double)a5;
- (void)setDisableBuildingFootprints:(BOOL)a3;
- (void)setDisableGrid:(BOOL)a3;
- (void)setDisableLabels:(BOOL)a3;
- (void)setDisablePolygons:(BOOL)a3;
- (void)setDisableRasters:(BOOL)a3;
- (void)setDisableRoads:(BOOL)a3;
- (void)setDisableShadows:(BOOL)a3;
- (void)setDisableTransitLines:(BOOL)a3;
- (void)setDisplayedFloorOrdinal:(signed __int16)a3 forVenueBuilding:(id)a4;
- (void)setEdgeInsets:(VKEdgeInsets)a3 duration:(double)a4 timingFunction:(id)a5 completionHandler:(id)a6;
- (void)setEmphasis:(unsigned __int8)a3 animated:(BOOL)a4;
- (void)setEnableAdvancedLighting:(BOOL)a3;
- (void)setEnableAdvancedWater:(BOOL)a3;
- (void)setEnableBuildingHeights:(BOOL)a3;
- (void)setEnableColorizedBuildings:(BOOL)a3;
- (void)setEnableGlobe:(BOOL)a3;
- (void)setEnableRoundedBuildings:(BOOL)a3;
- (void)setExternalTrafficFeatures:(id)a3 areRouteTrafficFeaturesActive:(BOOL)a4;
- (void)setFlyoverMode:(int)a3;
- (void)setFocusedLabelsPolyline:(id)a3;
- (void)setFullyOccludedEdgeInsets:(VKEdgeInsets)a3;
- (void)setGesturing:(BOOL)a3;
- (void)setHasVehicleHeading:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setHiddenTrafficIncidentFeatures:(id)a3;
- (void)setHostDisplay:(id)a3;
- (void)setIconsShouldAlignToPixels:(BOOL)a3;
- (void)setIncreaseContrastEnabled:(BOOL)a3;
- (void)setIsMKRenderingSelectionBalloon:(BOOL)a3;
- (void)setIsPitchable:(BOOL)a3;
- (void)setLabelEdgeInsets:(VKEdgeInsets)a3;
- (void)setLabelEdgeWidths:(VKEdgeInsets)a3;
- (void)setLabelExclusionRegions:(id)a3;
- (void)setLabelMarkerSelectionEnabled:(BOOL)a3;
- (void)setLabelScaleFactor:(int64_t)a3;
- (void)setLabelSelectionFilter:(id)a3;
- (void)setLevelOfDetail:(unsigned __int8)a3 animated:(BOOL)a4;
- (void)setLoadMuninAvailability:(BOOL)a3;
- (void)setLoadMuninMetadata:(BOOL)a3;
- (void)setLocalizeLabels:(BOOL)a3;
- (void)setMapDisplayStyle:(id)a3 animated:(BOOL)a4 duration:(double)a5;
- (void)setMapKitClientMode:(unsigned __int8)a3;
- (void)setMapKitUsage:(unsigned __int8)a3;
- (void)setMapRegion:(id)a3 pitch:(double)a4 yaw:(double)a5;
- (void)setMapRegion:(id)a3 pitch:(double)a4 yaw:(double)a5 duration:(double)a6 timingCurve:(id)a7 completion:(id)a8;
- (void)setMapType:(int)a3 animated:(BOOL)a4;
- (void)setModernMapEnabled:(BOOL)a3;
- (void)setNavCameraMode:(unint64_t)a3;
- (void)setNavContext:(id)a3;
- (void)setNavigationShieldSize:(int64_t)a3;
- (void)setNeedsLayout;
- (void)setNeedsRender;
- (void)setNewInterfaceEnabled:(BOOL)a3;
- (void)setOfflineMode:(BOOL)a3;
- (void)setOfflineRegionSelector:(BOOL)a3;
- (void)setPointsOfInterestFilter:(id)a3;
- (void)setPreferStaleTiles:(BOOL)a3;
- (void)setPreferredUnits:(unint64_t)a3;
- (void)setPreviouslySelectedLabelMarker:(id)a3;
- (void)setRegionRestriction:(id)a3 duration:(double)a4 timingFunction:(id)a5;
- (void)setRenderInverseFills:(BOOL)a3;
- (void)setRenderOverlayPolygons:(BOOL)a3;
- (void)setRendersInBackground:(BOOL)a3;
- (void)setRouteContext:(id)a3;
- (void)setRouteLineSplitAnnotation:(id)a3;
- (void)setRouteUserOffset:(PolylineCoordinate)a3;
- (void)setScreenLabelFeatures:(id)a3;
- (void)setSelectedBuildingFeatureIds:(id)a3;
- (void)setSelectedFeatureId:(unint64_t)a3;
- (void)setSelectedTrailWithId:(unint64_t)a3 name:(id)a4 locale:(id)a5;
- (void)setSelectedVenuePoiFeatureId:(unint64_t)a3;
- (void)setShieldIdiom:(int64_t)a3;
- (void)setShieldSize:(int64_t)a3;
- (void)setShouldLoadFallbackTiles:(BOOL)a3;
- (void)setShouldLoadMapMargin:(BOOL)a3;
- (void)setShowsBuildings:(BOOL)a3;
- (void)setShowsContourLabels:(BOOL)a3;
- (void)setShowsHiking:(BOOL)a3 withTopographicFeatures:(BOOL)a4;
- (void)setShowsHillshade:(BOOL)a3;
- (void)setShowsLabels:(BOOL)a3;
- (void)setShowsLiveEVData:(BOOL)a3;
- (void)setShowsPOIUpdates:(BOOL)a3;
- (void)setShowsPhysicalFeatureLabels:(BOOL)a3;
- (void)setShowsPointLabels:(BOOL)a3;
- (void)setShowsPointsOfInterest:(BOOL)a3;
- (void)setShowsRoadLabels:(BOOL)a3;
- (void)setShowsRoadShields:(BOOL)a3;
- (void)setShowsVenues:(BOOL)a3;
- (void)setSkippedRouteLineSplitAnnotation:(id)a3;
- (void)setStaysCenteredDuringPinch:(BOOL)a3;
- (void)setStaysCenteredDuringRotation:(BOOL)a3;
- (void)setStyleZOffsetScale:(float)a3;
- (void)setSupportedEVConnectorTypes:(id)a3;
- (void)setTargetDisplay:(int64_t)a3;
- (void)setTerrainMode:(int64_t)a3;
- (void)setTrackingZoomScale:(double)a3;
- (void)setTrafficEnabled:(BOOL)a3;
- (void)setTrafficIncidentsEnabled:(BOOL)a3;
- (void)setUseSmallCache:(BOOL)a3;
- (void)setVehicleState:(id)a3;
- (void)setVirtualParallaxEnabled:(BOOL)a3;
- (void)setYaw:(double)a3 animated:(BOOL)a4;
- (void)snapMapAfterModeChange;
- (void)startFlyoverAnimation:(id)a3 animateToStart:(BOOL)a4 completion:(id)a5;
- (void)startFlyoverTourAnimation:(unint64_t)a3 animateToStart:(BOOL)a4 completion:(id)a5;
- (void)startPanningAtPoint:(CGPoint)a3;
- (void)startPanningAtPoint:(CGPoint)a3 panAtStartPoint:(BOOL)a4;
- (void)startPinchingWithFocusPoint:(CGPoint)a3;
- (void)startPitchingWithFocusPoint:(CGPoint)a3;
- (void)startRotatingWithFocusPoint:(CGPoint)a3;
- (void)startTrackingAnnotation:(id)a3 trackHeading:(BOOL)a4 animated:(BOOL)a5 duration:(double)a6 timingFunction:(id)a7;
- (void)stopFlyoverAnimation;
- (void)stopPanningAtPoint:(CGPoint)a3;
- (void)stopPinchingWithFocusPoint:(CGPoint)a3;
- (void)stopPitchingWithFocusPoint:(CGPoint)a3;
- (void)stopRotatingWithFocusPoint:(CGPoint)a3;
- (void)stopSnappingAnimations;
- (void)stopTracking;
- (void)stopTrackingAnnotation;
- (void)tileGroupDidChange;
- (void)tileGroupWillChange;
- (void)tileStatistics;
- (void)transitionToTracking:(BOOL)a3 mapMode:(int64_t)a4 startLocation:(id)a5 startCourse:(double)a6 pounceCompletionHandler:(id)a7;
- (void)updateLightingLogic;
- (void)updatePanWithTranslation:(CGPoint)a3;
- (void)updatePinchWithFocusPoint:(CGPoint)a3 oldFactor:(double)a4 newFactor:(double)a5;
- (void)updatePitchWithFocusPoint:(CGPoint)a3 degrees:(double)a4;
- (void)updatePitchWithFocusPoint:(CGPoint)a3 translation:(double)a4;
- (void)updateRotationWithFocusPoint:(CGPoint)a3 newValue:(double)a4;
- (void)willEnterForeground;
- (void)willLayoutWithTimestamp:(double)a3 withContext:(void *)a4;
- (void)willStopPanningAtPoint:(CGPoint)a3 withVelocity:(CGPoint)a4;
- (void)zoom:(double)a3 withFocusPoint:(CGPoint)a4 completionHandler:(id)a5;
- (void)zoomToLevel:(double)a3 withFocusPoint:(CGPoint)a4;
@end

@implementation VKMapView

- (id).cxx_construct
{
  *(self + 48) = 0;
  *(self + 52) = 0;
  *(self + 8) = 850045863;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 15) = 0;
  *(self + 36) = &unk_1F29E64B0;
  *(self + 37) = 0;
  *(self + 39) = &unk_1F29E64D0;
  *(self + 40) = 0;
  *(self + 344) = 0;
  *(self + 368) = 0;
  *(self + 376) = 0;
  *(self + 384) = 0;
  *(self + 49) = 0xBF80000000000000;
  *(self + 50) = 0;
  *(self + 55) = &unk_1F29E6378;
  *(self + 56) = 0;
  *(self + 58) = &unk_1F2A203A8;
  *(self + 59) = 0;
  *(self + 62) = &unk_1F29E64F0;
  *(self + 63) = 0;
  *(self + 65) = 0;
  return self;
}

- (void)_setupThermalMonitor
{
  v15 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __42__VKMapView_Thermal___setupThermalMonitor__block_invoke;
  v10 = &unk_1E7B30190;
  objc_copyWeak(&v11, &location);
  v3 = MEMORY[0x1B8C62DA0](&v7);
  v4 = [(VKMapView *)self _mapDelegateQueue:v7];
  v5 = notify_register_dispatch(*MEMORY[0x1E69E98C0], self + 133, v4, v3) == 0;

  if (v5)
  {
    [(VKMapView *)self _updateThermalPressureLevel];
  }

  else
  {
    v6 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v14 = self;
      _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_ERROR, "[VKMapView:%p] Failed to register for thermal pressure notifications", buf, 0xCu);
    }
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)_mapDelegateQueue
{
  v2 = *(self + 50);
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *v3;
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  else
  {
    v5 = *v3;
  }

  return v5;
}

- (void)_updateThermalPressureLevel
{
  v7 = *MEMORY[0x1E69E9840];
  state64 = 0;
  if (notify_get_state(*(self + 133), &state64))
  {
    v3 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v6 = self;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_ERROR, "[VKMapView:%p] Failed to get thermal pressure level", buf, 0xCu);
    }
  }

  else if (state64 != *(self + 67))
  {
    [(VKMapView *)self _setThermalPressureLevel:?];
    [(VKMapView *)self _updateCameraThermalOptions];
  }
}

- (void)openLoaderConnection
{
  if ((*(self + 136) & 1) == 0)
  {
    *(self + 136) = 1;
    v3 = [MEMORY[0x1E69A2610] modernLoader];
    [v3 openForClient:*(self + 18)];

    v4 = [MEMORY[0x1E69A2478] modernManager];
    [v4 openServerConnection];
  }
}

- (BOOL)_createDisplayLayer
{
  v3 = *(self + 50);
  [*(v3 + 41656) setRenderSource:*(v3 + 120)];
  [*(v3 + 41656) createRenderTarget];
  v4 = *(self + 50);
  v19 = 1;
  md::MapEngine::setNeedsTick(v4, &v19);
  v5 = *(*(self + 50) + 41656);
  [(VKMapView *)self contentsScale];
  [v5 setContentScale:?];
  [(VKMapView *)self bounds];
  [v5 setBounds:?];
  [v5 size];
  if (v6 > 0.0)
  {
    [v5 size];
    if (v7 > 0.0)
    {
      [v5 size];
      v9 = v8;
      [v5 size];
      [*(self + 59) setAspectRatio:v9 / v10];
      v11 = *(*(self + 50) + 41872);
      v12 = *(*(self + 50) + 41880);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [v5 size];
      v14 = v13;
      [v5 size];
      *&v6 = *&gdc::Camera::setViewSize(v11, v14, v15);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      }
    }
  }

  v16 = [*(*(self + 50) + 41640) insertDisplayLayer:{self, v6}];
  v17 = [(VKMapView *)self currentCanvas];
  [v17 updateCameraForFrameResize];

  return v16;
}

- (void)setNeedsLayout
{
  v2 = *(self + 50);
  v3 = 14;
  md::MapEngine::setNeedsTick(v2, &v3);
}

- (id)resolveMapCameraController
{
  if (-[VKMapView enableGlobe](self, "enableGlobe") && (+[VKDebugSettings sharedSettings](), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 daVinciCameraController], v3, (v4 & 1) != 0))
  {
    v5 = &OBJC_IVAR___VKMapView__davinciMapCameraController;
  }

  else
  {
    v6 = [(VKMapView *)self _supportsDeferredCamera];
    v5 = &OBJC_IVAR___VKMapView__mapCameraController;
    if (v6)
    {
      v5 = &OBJC_IVAR___VKMapView__deferredCameraController;
    }
  }

  v7 = *(self + *v5);

  return v7;
}

- (BOOL)enableGlobe
{
  v2 = *(self + 50);
  if (v2)
  {
    v3 = *(v2 + 41936);
    v4 = *v3;
    v5 = v3[1];
    while (v4 != v5)
    {
      if (*v4 == 22)
      {
        if (v4 == v5)
        {
          return 0;
        }

        return *(v4 + 8) != 0;
      }

      v4 += 16;
    }
  }

  return 0;
}

- (BOOL)_supportsDeferredCamera
{
  if (![(VKMapView *)self cameraCollisionMode])
  {
    return 0;
  }

  if (*(self + 52) != 1)
  {
    return 0;
  }

  v3 = *(self + 12);
  if (GEOConfigGetBOOL() & 1) == 0 && (v3 - 1) < 7 && ((0x4Fu >> (v3 - 1)))
  {
    return 0;
  }

  return [(VKMapView *)self _daVinciDataAvailable];
}

- (int64_t)cameraCollisionMode
{
  {
    [VKMapView cameraCollisionMode]::$_8::operator() const(void)::cached_result = MapsFeature_IsEnabled_Maps68();
  }

  if ([VKMapView cameraCollisionMode]::$_8::operator() const(void)::cached_result != 1)
  {
    return 0;
  }

  {
    [VKMapView cameraCollisionMode]::$_9::operator() const(void)::cached_result = GEOConfigGetBOOL();
  }

  if ([VKMapView cameraCollisionMode]::$_9::operator() const(void)::cached_result != 1)
  {
    return 0;
  }

  v3 = *(self + 32);
  if (!v3)
  {
    return 0;
  }

  return [v3 cameraCollisionMode];
}

- (void)_updateBackgroundColor
{
  v8 = *MEMORY[0x1E69E9840];
  md::GridLogic::defaultBackgroundColor(v5, [(VKMapView *)self mapType], [(VKMapView *)self mapDisplayStyle], [(VKMapView *)self emphasis]);
  v3 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  *components = vcvtq_f64_f32(v5[0]);
  v7 = vcvtq_f64_f32(v5[1]);
  v4 = CGColorCreate(v3, components);
  [(VKMapView *)self setBackgroundColor:v4];
  CGColorRelease(v4);
  CGColorSpaceRelease(v3);
}

- (int)mapType
{
  if (*(self + 52) == 1)
  {
    return *(self + 12);
  }

  else
  {
    return 0;
  }
}

- ($6EFE6C6748B912A6EAC8A8E593ED1344)mapDisplayStyle
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
  v3 = gss::ClientStyleState<gss::PropertyID>::targetMapDisplayStyle(*(v2[5] + 208));
  return (v3 & 0xFFFFFFFFFFLL | (((v3 & 0xFF0000000000) == 0x10000000000) << 40));
}

- (void)updateLightingLogic
{
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = [v3 thermalState];

  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x91E65CD7F1A7A7FALL)[5] + 228) = (*(self + 544) | ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)) ^ 1;
}

- (void)didReceivePowerStateChanged
{
  v3 = [MEMORY[0x1E696AE30] processInfo];
  *(self + 544) = [v3 isLowPowerModeEnabled];

  [(VKMapView *)self updateLightingLogic];

  [(VKMapView *)self _updateCameraThermalOptions];
}

- (void)_updateCameraThermalOptions
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(self + 200);
  v4 = 2;
  if (((v3 == 2) & *(self + 544)) == 0)
  {
    v4 = 0;
  }

  if (v4 <= *(self + 528))
  {
    v4 = *(self + 528);
  }

  if (v3 == 2)
  {
    v5 = 4;
    if (((*(self + 74) - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      v5 = 68;
    }
  }

  else
  {
    v5 = 132;
  }

  v6 = (*(self + 65) + v5 + 16 * v4);
  v7 = v6[2];
  v8 = *(v6 + 12);
  if (v6[1])
  {
    v9 = *v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(VKMapView *)self currentCanvas];
  [v10 setBaseDisplayRate:v9];

  if (v8)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(VKMapView *)self currentCanvas];
  [v12 setMaxDisplayRate:v11];

  v13 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [(VKMapView *)self currentCanvas];
    v15 = [v14 baseDisplayRate];
    v16 = [(VKMapView *)self currentCanvas];
    v17 = 134218496;
    v18 = self;
    v19 = 1024;
    v20 = v15;
    v21 = 1024;
    v22 = [v16 maxDisplayRate];
    _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set Nav Thermal Options: targetFps=%i, maxFps:%i", &v17, 0x18u);
  }
}

- (void)_configureDefaultSettings
{
  objc_initWeak(location, self);
  [(VKMapView *)self setEnableGlobe:0];
  v3 = *(self + 72);
  v27[1] = MEMORY[0x1E69E9820];
  v27[2] = 3221225472;
  v27[3] = __38__VKMapView__configureDefaultSettings__block_invoke;
  v27[4] = &unk_1E7B30050;
  objc_copyWeak(&v28, location);
  v4 = MapsFeature_AddBlockListener();
  [v3 addObject:v4];

  [(VKMapView *)self setEnableRoundedBuildings:1];
  v5 = *(self + 72);
  v26[1] = MEMORY[0x1E69E9820];
  v26[2] = 3221225472;
  v26[3] = __38__VKMapView__configureDefaultSettings__block_invoke_2;
  v26[4] = &unk_1E7B30050;
  objc_copyWeak(v27, location);
  v6 = MapsFeature_AddBlockListener();
  [v5 addObject:v6];

  [(VKMapView *)self setEnableColorizedBuildings:1];
  v7 = *(self + 72);
  v25[1] = MEMORY[0x1E69E9820];
  v25[2] = 3221225472;
  v25[3] = __38__VKMapView__configureDefaultSettings__block_invoke_3;
  v25[4] = &unk_1E7B30050;
  objc_copyWeak(v26, location);
  v8 = MapsFeature_AddBlockListener();
  [v7 addObject:v8];

  [(VKMapView *)self setEnableBuildingHeights:1];
  v9 = *(self + 72);
  v24[1] = MEMORY[0x1E69E9820];
  v24[2] = 3221225472;
  v24[3] = __38__VKMapView__configureDefaultSettings__block_invoke_4;
  v24[4] = &unk_1E7B30050;
  objc_copyWeak(v25, location);
  v10 = MapsFeature_AddBlockListener();
  [v9 addObject:v10];

  [(VKMapView *)self setEnableAdvancedWater:1];
  v11 = *(self + 72);
  v23[1] = MEMORY[0x1E69E9820];
  v23[2] = 3221225472;
  v23[3] = __38__VKMapView__configureDefaultSettings__block_invoke_5;
  v23[4] = &unk_1E7B30050;
  objc_copyWeak(v24, location);
  v12 = MapsFeature_AddBlockListener();
  [v11 addObject:v12];

  [(VKMapView *)self setEnableAdvancedLighting:1];
  v13 = *(self + 72);
  v22[1] = MEMORY[0x1E69E9820];
  v22[2] = 3221225472;
  v22[3] = __38__VKMapView__configureDefaultSettings__block_invoke_6;
  v22[4] = &unk_1E7B30050;
  objc_copyWeak(v23, location);
  v14 = MapsFeature_AddBlockListener();
  [v13 addObject:v14];

  [(VKMapView *)self setTerrainMode:0];
  v15 = *(self + 72);
  v21[1] = MEMORY[0x1E69E9820];
  v21[2] = 3221225472;
  v21[3] = __38__VKMapView__configureDefaultSettings__block_invoke_7;
  v21[4] = &unk_1E7B30050;
  objc_copyWeak(v22, location);
  v16 = MapsFeature_AddBlockListener();
  [v15 addObject:v16];

  {
    [VKMapView _configureDefaultSettings]::$_18::operator() const(void)::cached_result = MapsFeature_IsEnabled_Maps298();
  }

  [(VKMapView *)self setModernMapEnabled:[VKMapView _configureDefaultSettings]::$_18::operator() const(void)::cached_result];
  v17 = *(self + 72);
  v20 = MEMORY[0x1E69E9820];
  objc_copyWeak(v21, location);
  v18 = MapsFeature_AddBlockListener();
  [v17 addObject:{v18, v20, 3221225472, __38__VKMapView__configureDefaultSettings__block_invoke_8, &unk_1E7B30050}];

  v19 = +[VKDebugSettings sharedSettings];
  -[VKMapView setCompressedBuildingsEnabled:](self, "setCompressedBuildingsEnabled:", [v19 compressedBuildingsDisabled] ^ 1);

  md::MapEngine::updateDaVinciPOILabelsAvailable(*(self + 50));
  [(VKMapView *)self setRenderOverlayPolygons:1];
  objc_destroyWeak(v21);
  objc_destroyWeak(v22);
  objc_destroyWeak(v23);
  objc_destroyWeak(v24);
  objc_destroyWeak(v25);
  objc_destroyWeak(v26);
  objc_destroyWeak(v27);
  objc_destroyWeak(&v28);
  objc_destroyWeak(location);
}

- (BOOL)_roundedBuildingsAllowed
{
  {
    [VKMapView _roundedBuildingsAllowed]::$_12::operator() const(void)::cached_result = MapsFeature_IsEnabled_ShelbyvilleRoundedBuildings();
  }

  return [VKMapView _roundedBuildingsAllowed]::$_12::operator() const(void)::cached_result;
}

- (BOOL)_colorizedBuildingsAllowed
{
  {
    [VKMapView _colorizedBuildingsAllowed]::$_13::operator() const(void)::cached_result = MapsFeature_IsEnabled_ShelbyvilleColorizedBuildings();
  }

  return [VKMapView _colorizedBuildingsAllowed]::$_13::operator() const(void)::cached_result;
}

- (BOOL)_buildingHeightsAllowed
{
  {
    [VKMapView _buildingHeightsAllowed]::$_14::operator() const(void)::cached_result = MapsFeature_IsEnabled_ShelbyvilleBuildingHeights();
  }

  return [VKMapView _buildingHeightsAllowed]::$_14::operator() const(void)::cached_result;
}

- (BOOL)_advancedWaterAllowed
{
  {
    [VKMapView _advancedWaterAllowed]::$_16::operator() const(void)::cached_result = MapsFeature_IsEnabled_ShelbyvilleAdvancedWater();
  }

  return [VKMapView _advancedWaterAllowed]::$_16::operator() const(void)::cached_result;
}

- (BOOL)_advancedLightingAllowed
{
  {
    [VKMapView _advancedLightingAllowed]::$_15::operator() const(void)::cached_result = MapsFeature_IsEnabled_ShelbyvilleAdvancedLighting();
  }

  return [VKMapView _advancedLightingAllowed]::$_15::operator() const(void)::cached_result;
}

- (void)_updateBuildingCompressionSetting
{
  v2 = *(*(self + 50) + 42104);
  v3 = *(*(self + 50) + 41936);
  v5 = 24;
  if (v2)
  {
    v4 = *(self + 432);
  }

  else
  {
    v4 = 0;
  }

  md::MapEngineSettings::set(v3, &v5, v4);
}

- (void)activateInternalSettings
{
  if (os_variant_has_internal_ui())
  {
    {
      [VKMapView activateInternalSettings]::$_17::operator() const(void)::cached_result = GEOConfigGetBOOL();
    }

    if ([VKMapView activateInternalSettings]::$_17::operator() const(void)::cached_result == 1)
    {
      v3 = +[MIController sharedController];
      [v3 activateController:self];
    }
  }
}

- (void)disableMapDisplayStyleDebugOverride
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (*(self + 584))
    {
      v4 = @"Night";
    }

    else
    {
      v4 = @"Day";
    }

    v5 = 134218242;
    v6 = self;
    v7 = 2080;
    v8 = [(__CFString *)v4 UTF8String];
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKMapView:%p] Map display style debug override disabled, setting time of day to: %s", &v5, 0x16u);
  }

  *(self + 590) = 0;
  [(VKMapView *)self _applyMapDisplayStyle:*(self + 146) | (*(self + 294) << 32) animated:1 duration:1.0];
}

- (int64_t)labelScaleFactor
{
  v2 = *(*(*[(VKMapView *)self _labelSettings]+ 40) + 48);
  if (v2 >= 6)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

- (int64_t)shieldSize
{
  v2 = *(*(*[(VKMapView *)self _labelSettings]+ 40) + 1);

  return [VKInternalIconManager convertGrlSizeGroup:v2];
}

- (id)annotationRectTest
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 annotationRectTest];

  return v3;
}

- (void)_updateOnlyShowRoadClosures
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(self + 152) == 2 && !*(self + 217))
  {
    {
      [VKMapView _updateOnlyShowRoadClosures]::$_4::operator() const(void)::cached_result = GEOConfigGetBOOL();
    }

    v3 = [VKMapView _updateOnlyShowRoadClosures]::$_4::operator() const(void)::cached_result;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*(self + 50) + 41936);
  v5 = *v4;
  v6 = v4[1];
  while (v5 != v6)
  {
    if (*v5 == 4)
    {
      if (v5 != v6)
      {
        v7 = *(v5 + 8);
        goto LABEL_11;
      }

      break;
    }

    v5 += 16;
  }

  v7 = 0;
LABEL_11:
  if (v7 != (v3 & 1))
  {
    v8 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v23 = 134218240;
      v24 = self;
      v25 = 1024;
      v26 = v3 & 1;
      _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set onlyShowRoadClosures: %i", &v23, 0x12u);
    }

    v9 = *(*(self + 50) + 41936);
    LOBYTE(v23) = 4;
    md::MapEngineSettings::set(v9, &v23, v3 & 1);
    v10 = [(VKMapView *)self _labelSettings];
    if (v3)
    {
      v11 = *(*(self + 50) + 41936);
      v12 = *v11;
      v13 = v11[1];
      while (v12 != v13)
      {
        if (*v12 == 3)
        {
          if (v12 == v13)
          {
            break;
          }

          v14 = *(v12 + 8) != 0;
          goto LABEL_24;
        }

        v12 += 16;
      }
    }

    v14 = 0;
LABEL_24:
    *(*(v10 + 5) + 26) = v14;
    md::LabelManager::setTrafficClosuresEnabled(*(v10 + 3), v14);
    v15 = *(*(self + 50) + 41704);
    if (v15)
    {
      v16 = *(v15 + 32);
      v17 = *(v15 + 40);
      if (v16 != v17)
      {
        v18 = v16;
        while (*v18 != 52)
        {
          v18 += 16;
          if (v18 == v17)
          {
            goto LABEL_33;
          }
        }

        if (v18 != v17)
        {
          v19 = *(v18 + 8);
          if (v19)
          {
            *(v19 + 793) = v3 & 1;
          }
        }
      }

LABEL_33:
      if (v16 == v17)
      {
        goto LABEL_43;
      }

      v20 = v16;
      while (*v20 != 53)
      {
        v20 += 16;
        if (v20 == v17)
        {
          goto LABEL_43;
        }
      }

      if (v20 != v17)
      {
        v21 = *(v20 + 8);
        if (v21)
        {
          *(v21 + 793) = v3 & 1;
        }
      }

LABEL_43:
      while (v16 != v17)
      {
        if (*v16 == 2)
        {
          if (v16 != v17)
          {
            v22 = *(v16 + 8);
            if (v22)
            {
              *(v22 + 810) = v3 & 1;
            }
          }

          return;
        }

        v16 += 16;
      }
    }
  }
}

- (BOOL)isGesturing
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];
  v4 = [v3 isGesturing];

  return v4;
}

- (double)presentationYaw
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];
  [v3 heading];
  v5 = v4;

  return v5;
}

- (BOOL)isPitchable
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];
  v4 = [v3 isPitchEnabled];

  return v4;
}

- (BOOL)isPitched
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];
  v4 = [v3 isPitched];

  return v4;
}

- (BOOL)canEnter3DMode
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 canEnter3DMode];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- ($1AB5FA073B851C12C2339EC22442E995)centerCoordinate
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];
  [v3 centerCoordinate];
  v5 = v4;
  v7 = v6;

  v8 = 0.0;
  v9 = v5;
  v10 = v7;
  result.var2 = v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (GEOMapRegion)mapRegion
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];
  v4 = [v3 mapRegion];

  return v4;
}

- (BOOL)isShowingCuratedElevatedGround
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x17767EADC5B287BuLL);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2[5];
  if (v3)
  {
    if (*(v3 + 56) == 1)
    {
      v3 = *(v3 + 160);
      if (*(v3 + 80) == 1)
      {
        LOBYTE(v3) = *(v3 + 82);
        return v3 & 1;
      }
    }

LABEL_6:
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

- (BOOL)wantsTimerTick
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 wantsTimerTick];

  return v3;
}

- (GEOMapRegion)mapRegionIgnoringEdgeInsets
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];
  v4 = [v3 mapRegionIgnoringEdgeInsets];

  return v4;
}

- (double)pitch
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];
  [v3 pitch];
  v5 = v4;

  return v5;
}

- (BOOL)canRotate
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];
  v4 = [v3 canRotate];

  return v4;
}

- (double)altitude
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];
  [v3 altitude];
  v5 = v4;

  return v5;
}

- (id)venueWithFocus
{
  v3 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xEC9B77B4222D22FFLL);
  if (v3)
  {
    v4 = *&v3->_localize;
    if (v4 && *(v4 + 56) == 1 && (v5 = *(v4 + 568)) != 0)
    {
      v3 = [[VKVenueFeatureMarker alloc] initWithVenue:v5 localize:[(VKMapView *)self localizeLabels]];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)didEnterBackground
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v12 = 134217984;
    v13 = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKMapView:%p] Did enter background", &v12, 0xCu);
  }

  v4 = GEOGetVectorKitVKMapViewLog();
  v5 = v4;
  v6 = *(*(self + 50) + 42080);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v5, OS_SIGNPOST_INTERVAL_END, v6, "Foreground", &unk_1B3514CAA, &v12, 2u);
  }

  v7 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(*(v7 + 47360), "[VKMapView didEnterBackground]");
  v8 = [(VKMapView *)self isEffectivelyHidden];
  [*(self + 7) didReceiveMemoryWarning:v8 beAggressive:0];
  md::MapEngine::prune(v7, !v8);
  if ((*(self + 248) & 1) == 0)
  {
    md::MapEngine::prune(v7, 0);
  }

  v9 = +[VKSharedResourcesManager sharedResources];
  [v9 purgeDecompressSessionCachedBuffers];

  v10 = *(self + 50);
  *(v10 + 42001) = 1;
  (*(**(*(v10 + 104) + 8) + 40))(*(*(v10 + 104) + 8));
  [*(v10 + 41640) didEnterBackground];
  md::MapEngine::updateRunLoopStatus(v10);
  *(self + 248) = 1;
  if (*(self + 408) == 1 && ![(VKMapView *)self rendersInBackground])
  {
    v11 = *(self + 50);
    [*(v11 + 41656) setRenderSource:0];
    [*(v11 + 41656) destroyRenderTarget];
  }
}

- (BOOL)isEffectivelyHidden
{
  v3 = [(VKMapView *)self isHidden];
  v4 = [(VKMapView *)self superlayer];
  v5 = v4;
  if (!v4 || (v3 & 1) != 0)
  {
    v6 = v4;
  }

  else
  {
    do
    {
      v3 = [v5 isHidden];
      v6 = [v5 superlayer];

      v5 = v6;
    }

    while (!((v6 == 0) | v3 & 1));
  }

  return v3;
}

- (void)willEnterForeground
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    v12 = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKMapView:%p] Will enter foreground", &v11, 0xCu);
  }

  v4 = GEOGetVectorKitVKMapViewLog();
  v5 = v4;
  v6 = *(*(self + 50) + 42080);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Foreground", &unk_1B3514CAA, &v11, 2u);
  }

  *(self + 408) = 0;
  v7 = [(VKMapView *)self _createDisplayLayer];
  v8 = *(self + 50);
  if (*(self + 248) == 1 && (*(v8 + 42002) & 1) == 0)
  {
    v9 = [(VKMapView *)self userLocationAnimator];
    [v9 resetCourse];

    v10 = [(VKMapView *)self userLocationAnimator];
    [v10 processLocationUpdates];

    v8 = *(self + 50);
  }

  *(v8 + 169) = 1;
  LOBYTE(v11) = 16;
  md::MapEngine::setNeedsTick(v8, &v11);
  *(v8 + 42001) = 0;
  md::MapEngine::updateRunLoopStatus(v8);
  *(self + 248) = 0;
  if (v7)
  {
    [(VKMapView *)self forceLayout];
  }
}

- (BOOL)isFullyDrawn
{
  v2 = *(*(self + 50) + 41944);
  if (*(v2 + 89) == 1)
  {
    v3 = *(v2 + 88);
  }

  else
  {
    v3 = 0;
  }

  return v3 == 4 || (v3 & 0xFE) == 2;
}

- (VKEdgeInsets)labelEdgeInsets
{
  v2 = *(*(self + 50) + 41736);
  v3 = *(*(self + 50) + 41740);
  v4 = *(*(self + 50) + 41744);
  v5 = *(*(self + 50) + 41748);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (VKEdgeInsets)labelEdgeWidths
{
  v2 = *(*(self + 50) + 41752);
  v3 = *(*(self + 50) + 41756);
  v4 = *(*(self + 50) + 41760);
  v5 = *(*(self + 50) + 41764);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)snapMapAfterModeChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __35__VKMapView_snapMapAfterModeChange__block_invoke;
  v2[3] = &unk_1E7B3B9F8;
  v2[4] = self;
  [(VKMapView *)self _postDelegateCallbackBlock:v2];
}

- (void)didStartLoadingData
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __32__VKMapView_didStartLoadingData__block_invoke;
  v2[3] = &unk_1E7B3B9F8;
  v2[4] = self;
  [(VKMapView *)self _postDelegateCallbackBlock:v2];
}

- (id)annotationCoordinateTest
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 annotationCoordinateTest];

  return v3;
}

- (id)navigationPuck
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xBEC1A12372CEEC00);
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      v2 = *(v3 + 160);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void __35__VKMapView_snapMapAfterModeChange__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) currentCanvas];
  v2 = [v1 cameraController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 snapMapIfNecessary:1];
  }
}

- (void)didPresent
{
  v4 = [(VKMapView *)self currentCanvas];
  [v4 didPresent];

  WeakRetained = objc_loadWeakRetained(self + 16);
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = objc_loadWeakRetained(self + 16);
    [v6 mapLayerDidDraw:self];
  }
}

- (VKEdgeInsets)edgeInsets
{
  if (*(self + 20))
  {
    v2 = *(self + 42);
    v3 = *(self + 43);
    v4 = *(self + 44);
    v5 = *(self + 45);
  }

  else
  {
    v6 = [(VKMapView *)self currentCanvas];
    [v6 edgeInsets];
    v2 = v7;
    v3 = v8;
    v4 = v9;
    v5 = v10;
  }

  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (double)yaw
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];
  [v3 heading];
  v5 = v4;

  return v5;
}

- (void)labelManagerDidLayout
{
  if ((*(self + 574) & 1) == 0)
  {
    *(self + 574) = 1;
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v3 = GEOGetVectorKitVKDefaultLog_log;
    v4 = v3;
    v5 = *(*(self + 50) + 42080);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v4, OS_SIGNPOST_INTERVAL_END, v5, "LabelsCompletedFirstLayout", &unk_1B3514CAA, buf, 2u);
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__VKMapView_labelManagerDidLayout__block_invoke;
  v6[3] = &unk_1E7B3B9F8;
  v6[4] = self;
  [(VKMapView *)self _postDelegateCallbackBlock:v6];
}

- (VKSceneConfiguration)sceneConfiguration
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      v2 = *(v3 + 1160);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (BOOL)trafficEnabled
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 2)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (BOOL)enableDebugLabelHighlighting
{
  v2 = +[VKDebugSettings sharedSettings];
  if ([v2 daVinciEntityDebugHighlighting])
  {
    v3 = 1;
  }

  else
  {
    v4 = +[VKDebugSettings sharedSettings];
    if ([v4 labelHighlighting])
    {
      v3 = 1;
    }

    else
    {
      v5 = +[VKDebugSettings sharedSettings];
      v3 = [v5 transitHighlighting];
    }
  }

  return v3;
}

- (void)stopSnappingAnimations
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 stopSnappingAnimations];
  }
}

- (BOOL)isAnimatingToTrackAnnotation
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isAnimatingToTrackAnnotation];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (VKLabelMarker)selectedLabelMarker
{
  v2 = *(*([(VKMapView *)self _labelSettings]+ 16) + 40) + 32;

  return [VKLabelMarker markerWithLabelMarker:v2];
}

- (void)clearPreviouslySelectedLabelMarker
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKMapView:%p] clearPreviouslySelectedLabelMarker", &v4, 0xCu);
  }

  md::LabelManager::clearPreviouslySelectedLabelMarker(*(*([(VKMapView *)self _labelSettings]+ 16) + 24));
}

void __34__VKMapView_labelManagerDidLayout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 mapLayerLabelsDidLayout:*(a1 + 32)];
  }
}

- (BOOL)hasTraffic
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 4)
    {
      if (v3 != v4 && *(v3 + 8))
      {
        return 1;
      }

      return [(VKMapView *)self trafficEnabled];
    }

    v3 += 16;
  }

  return [(VKMapView *)self trafficEnabled];
}

- (void)stopTrackingAnnotation
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v3 stopTrackingAnnotation];
  }
}

- (float)currentZoomLevel
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];
  [v3 currentZoomLevel];
  v5 = v4;

  return v5;
}

- (unordered_map<unsigned)clientStyleAttributes
{
  retstr->var0.var0 = 0u;
  *&retstr->var0.var1.var0 = 0u;
  retstr->var0.var3 = 1.0;
  result = *(*(self + 50) + 41928);
  if (result)
  {
    result = md::LogicManager::logic<md::StyleLogic>(result);
    if (result)
    {
      gss::ClientStyleState<gss::PropertyID>::sourceClientStyleAttributes(&v18, result[5].var0.var0.var1.var0);
      v17 = v20;
      if (!v20)
      {
        goto LABEL_34;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        if (!((v8 >= v17) | v6 & 1))
        {
          v7 = (v18 + 4 * v8);
          v3 = (v18 + v19 + 2 * v8);
        }

        v9 = *v7;
        var0 = retstr->var0.var0.var1.var0;
        if (!var0)
        {
          goto LABEL_23;
        }

        v11 = vcnt_s8(var0);
        v11.i16[0] = vaddlv_u8(v11);
        if (v11.u32[0] > 1uLL)
        {
          v12 = *v7;
          if (var0 <= v9)
          {
            v12 = v9 % var0;
          }
        }

        else
        {
          v12 = (var0 - 1) & v9;
        }

        v13 = retstr->var0.var0.var0[v12];
        if (!v13 || (v14 = *v13) == 0)
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          v15 = v14[1];
          if (v15 == v9)
          {
            break;
          }

          if (v11.u32[0] > 1uLL)
          {
            if (v15 >= var0)
            {
              v15 %= var0;
            }
          }

          else
          {
            v15 &= var0 - 1;
          }

          if (v15 != v12)
          {
            goto LABEL_23;
          }

LABEL_22:
          v14 = *v14;
          if (!v14)
          {
            goto LABEL_23;
          }
        }

        if (*(v14 + 4) != v9)
        {
          goto LABEL_22;
        }

        if ((v8 >= v17) | v6 & 1)
        {
          v16 = v6;
        }

        else
        {
          v16 = 1;
        }

        v14[3] = *v3;
        if (v8 + 1 < v17)
        {
          ++v8;
        }

        else
        {
          v8 = v17;
        }

        if (v16)
        {
          v6 = 0;
        }

        else
        {
          v6 = v16;
        }

        if (v8 == v17)
        {
LABEL_34:
          geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v18);
          return result;
        }
      }
    }
  }

  return result;
}

- (id)markerAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VKMapView *)self currentCanvas];
  v6 = [v5 markerAtScreenPoint:1 enableExtendedFeatureMarkers:{x, y}];

  return v6;
}

- (id)buildingMarkerAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = *(*(self + 50) + 41656);
  v7 = v6;
  v8 = *(*(self + 50) + 41728);
  v9 = v8[1];
  if (!*&v9)
  {
    goto LABEL_22;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = 0x1AF456233693CD46;
    if (*&v9 <= 0x1AF456233693CD46uLL)
    {
      v11 = 0x1AF456233693CD46uLL % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & 0x1AF456233693CD46;
  }

  v12 = *(*v8 + 8 * v11);
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = *v12;
  if (!v13)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == 0x1AF456233693CD46)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= *&v9)
      {
        v14 %= *&v9;
      }
    }

    else
    {
      v14 &= *&v9 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_22;
    }

LABEL_16:
    v15 = 0;
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_32;
    }
  }

  if (v13[2] != 0x1AF456233693CD46)
  {
    goto LABEL_16;
  }

  v16 = v13[5];
  if (*(v16 + 8) != 0x1AF456233693CD46)
  {
LABEL_22:
    v15 = 0;
    goto LABEL_32;
  }

  v15 = *(v16 + 32);
  if (v15)
  {
    [v6 size];
    v18 = v17;
    [v7 size];
    v20 = v19;
    v21 = [v7 size];
    *&v23 = (-1.0 - y + v20) / v22;
    v37 = v23;
    v24.f64[0] = x / v18 - gdc::Camera::horizontalOffset(v21, *(v15 + 488));
    *&v24.f64[1] = v37;
    v25 = vextq_s8(*(v15 + 3752), *(v15 + 3752), 8uLL);
    v38 = vmlaq_f64(vnegq_f64(v25), v25, vaddq_f64(v24, v24));
    *&v39 = 0xBFF0000000000000;
    v40.f64[0] = gm::Matrix<double,3,1>::normalized<int,void>(&v38);
    v40.f64[1] = v26;
    v41 = v27;
    v28 = gm::Quaternion<double>::operator*(v15 + 520, &v40);
    v29 = *(v15 + 496);
    v41 = *(v15 + 512);
    v42 = v28;
    v43 = v30;
    v44 = v31;
    v38 = 0uLL;
    v39 = xmmword_1B33B0680;
    v40 = v29;
    gm::PlaneUtils::rayPlaneIntersectionOrPoint<double>(&v38, &v40, &v40);
    v32 = *(self + 50);
    md::HomeQueueScheduler::waitForSynchronization(*(v32 + 47360), "[VKMapView(Tools) buildingMarkerAtPoint:]");
    v33 = *(*(v32 + 41672) + 40);
    if ((*(*(v32 + 41672) + 48) - v33) >= 0xD8)
    {
      v34 = *(v33 + 208);
    }

    else
    {
      v34 = 0;
    }

    (*(*v34 + 88))(&v40);
    if (*&v40.f64[0])
    {
      v35 = [VKMarker alloc];
      v38 = v40;
      if (*&v40.f64[1])
      {
        atomic_fetch_add_explicit((*&v40.f64[1] + 8), 1uLL, memory_order_relaxed);
      }

      v15 = [(VKMarker *)v35 initWithFeatureMarkerPtr:&v38 markerType:0, v37];
      if (*&v38.f64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&v38.f64[1]);
      }
    }

    else
    {
      v15 = 0;
    }

    if (*&v40.f64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v40.f64[1]);
    }
  }

LABEL_32:

  return v15;
}

- (VKLabelSelectionFilter)labelSelectionFilter
{
  WeakRetained = objc_loadWeakRetained(self + 77);

  return WeakRetained;
}

- (VKMapViewDelegate)mapDelegate
{
  WeakRetained = objc_loadWeakRetained(self + 16);

  return WeakRetained;
}

- (void)projectCoordinate:(id)a3 toPoint:(CGPoint *)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v9 = [(VKMapView *)self currentCanvas];
  [v9 convertCoordinateToPoint:{var0, var1}];
  a4->x = v7;
  a4->y = v8;
}

- (optional<double>)puckAnimator:(id)a3 getElevationWithCoordinate:(const void *)a4
{
  v4 = *(*(self + 50) + 41712);
  if (v4)
  {
    v5 = md::MapDataAccess::heightAtCoordinate(v4, a4);
    v4 = (v5 & ((v6 << 55) >> 63));
    v7 = (v6 >> 8) & 1;
  }

  else
  {
    v7 = 0;
  }

  result.__engaged_ = v7;
  result.var0 = v4;
  return result;
}

- (void)puckAnimator:(id)a3 updatedPosition:(const void *)a4 course:(const void *)a5 polylineCoordinate:(PolylineCoordinate)a6
{
  v10 = a3;
  v11 = (self + 344);
  if (*(self + 368) == 1)
  {
    v12 = *a4;
    *(self + 45) = *(a4 + 2);
    *v11 = v12;
  }

  else
  {
    *v11 = *a4;
    *(self + 22) = *(a4 + 8);
    *(self + 368) = 1;
  }

  v13 = *a5;
  if ((*(self + 384) & 1) == 0)
  {
    *(self + 384) = 1;
  }

  *(self + 47) = v13;
  *(self + 49) = a6;
  v14 = *(*(self + 50) + 41928);
  v15 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v14 + 16), 0xBEC1A12372CEEC00)[5];
  if (*(self + 368))
  {
    v16 = self + 344;
  }

  else
  {
    v16 = a4;
  }

  v17 = *(v16 + 2);
  *(v15 + 128) = *v16;
  *(v15 + 144) = v17;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v14 + 16), 0xBEC1A12372CEEC00)[5] + 208) = a6;
  v18 = [(VKMapView *)self navigationPuck];
  +[VKMapView updateUserLocationAnnotationStateForNavigationPuck:isPuckEnabled:synchronizedState:](VKMapView, "updateUserLocationAnnotationStateForNavigationPuck:isPuckEnabled:synchronizedState:", v10, [v18 enabled], *(self + 50) + 41736);

  v19 = *(self + 50) + 41792;
  v20 = *(a4 + 2);
  *v19 = *a4;
  *(v19 + 16) = v20;
  v21 = *(self + 35);
  if (*(self + 368))
  {
    v22 = self + 344;
  }

  else
  {
    v22 = a4;
  }

  v23 = *(v22 + 2);
  v24 = *v22;
  v25 = v23;
  [v21 puckAnimator:v10 updatedPosition:&v24 course:a5 polylineCoordinate:*(self + 49)];
}

- (void)puckAnimator:(id)a3 runAnimation:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(VKMapView *)self navigationPuck];
  +[VKMapView updateUserLocationAnnotationStateForNavigationPuck:isPuckEnabled:synchronizedState:](VKMapView, "updateUserLocationAnnotationStateForNavigationPuck:isPuckEnabled:synchronizedState:", v8, [v7 enabled], *(self + 50) + 41736);

  [(VKMapView *)self runAnimation:v6];
}

- (void)didUpdateVerticalYawTo:(double)a3
{
  if (*(self + 24) != a3)
  {
    *(self + 24) = a3;
    v4 = [(VKMapView *)self mapDelegate];
    [v4 mapLayer:self didUpdateVerticalYawTo:*(self + 24)];
  }
}

- (void)removeExternalAnchor:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x79FE0BD9535D5C4DuLL);
  if (v5)
  {
    v6 = v5[5];
    if (v6)
    {
      geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>::_retain_ptr(&v27, v4);
      v7 = [v28 hash];
      v8 = v6[24];
      if (v8)
      {
        v9 = v6 + 23;
        v10 = vcnt_s8(v8);
        v10.i16[0] = vaddlv_u8(v10);
        if (v10.u32[0] > 1uLL)
        {
          v11 = v7;
          if (v7 >= *&v8)
          {
            v11 = v7 % *&v8;
          }
        }

        else
        {
          v11 = (*&v8 - 1) & v7;
        }

        v12 = *v9;
        v13 = *(*v9 + 8 * v11);
        if (v13)
        {
          v14 = *v13;
          if (v14)
          {
            v15 = *&v8 - 1;
            do
            {
              v16 = v14[1];
              if (v16 == v7)
              {
                if (v14[3] == v28)
                {
                  v17 = v14[1];
                  if (v10.u32[0] > 1uLL)
                  {
                    if (v17 >= *&v8)
                    {
                      v17 %= *&v8;
                    }
                  }

                  else
                  {
                    v17 &= v15;
                  }

                  v18 = *(*&v12 + 8 * v17);
                  do
                  {
                    v19 = v18;
                    v18 = *v18;
                  }

                  while (v18 != v14);
                  if (v19 == &v6[25])
                  {
                    goto LABEL_38;
                  }

                  v20 = v19[1];
                  if (v10.u32[0] > 1uLL)
                  {
                    if (v20 >= *&v8)
                    {
                      v20 %= *&v8;
                    }
                  }

                  else
                  {
                    v20 &= v15;
                  }

                  if (v20 != v17)
                  {
LABEL_38:
                    if (!*v14)
                    {
                      goto LABEL_39;
                    }

                    v21 = *(*v14 + 8);
                    if (v10.u32[0] > 1uLL)
                    {
                      if (v21 >= *&v8)
                      {
                        v21 %= *&v8;
                      }
                    }

                    else
                    {
                      v21 &= v15;
                    }

                    if (v21 != v17)
                    {
LABEL_39:
                      *(*&v12 + 8 * v17) = 0;
                    }
                  }

                  v22 = *v14;
                  if (*v14)
                  {
                    v23 = *(*&v22 + 8);
                    if (v10.u32[0] > 1uLL)
                    {
                      if (v23 >= *&v8)
                      {
                        v23 %= *&v8;
                      }
                    }

                    else
                    {
                      v23 &= v15;
                    }

                    if (v23 != v17)
                    {
                      *(*v9 + 8 * v23) = v19;
                      v22 = *v14;
                    }
                  }

                  *v19 = v22;
                  *v14 = 0;
                  --*&v6[26];
                  v24[0] = v14;
                  v24[1] = v6 + 23;
                  v25 = 1;
                  memset(v26, 0, sizeof(v26));
                  std::unique_ptr<std::__hash_node<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,void *>>>>::~unique_ptr[abi:nn200100](v24);
                  break;
                }
              }

              else
              {
                if (v10.u32[0] > 1uLL)
                {
                  if (v16 >= *&v8)
                  {
                    v16 %= *&v8;
                  }
                }

                else
                {
                  v16 &= v15;
                }

                if (v16 != v11)
                {
                  break;
                }
              }

              v14 = *v14;
            }

            while (v14);
          }
        }
      }

      v27 = off_1F2A05BB8;
    }
  }

  [v4 setDisplayLayer:0];
}

- (void)addExternalAnchor:(id)a3
{
  v4 = a3;
  v5 = *(self + 50);
  v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(v5 + 41928) + 16), 0x79FE0BD9535D5C4DuLL);
  if (v6 && v6[5])
  {
    v7 = v4;
    operator new();
  }

  [v4 setDisplayLayer:*(v5 + 41656)];
  v8 = *(self + 50);
  LOBYTE(v9) = 16;
  md::MapEngine::setNeedsTick(v8, &v9);
}

- (void)setCameraHorizontalOffset:(double)a3 duration:(double)a4 timingFunction:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 134218496;
    v11 = self;
    v12 = 2048;
    v13 = a3;
    v14 = 2048;
    v15 = a4;
    _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set horizontal offset: %f, duration: %f", &v10, 0x20u);
  }

  [*(self + 7) setCameraHorizontalOffset:v8 duration:a3 timingFunction:a4];
}

- (void)setUseSmallCache:(BOOL)a3
{
  v3 = *(*(self + 50) + 41704);
  v4 = 1.0;
  if (a3)
  {
    {
      GEOConfigGetDouble();
      [VKMapView setUseSmallCache:]::$_23::operator() const(void)::cached_result = v5;
    }

    v4 = *&[VKMapView setUseSmallCache:]::$_23::operator() const(void)::cached_result;
  }

  *(v3 + 392) = v4;
}

- (void)forceResolveCameraController
{
  v2 = *(self + 7);
  v3 = [(VKMapView *)self resolveMapCameraController];
  [v2 setCameraController:?];
}

- (void)setSkippedRouteLineSplitAnnotation:(id)a3
{
  v5 = a3;
  v6 = v5;
  v7 = *(*(self + 50) + 41928);
  if (v7)
  {
    v10 = v5;
    v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v7 + 16), 0x5CBBA028798243FuLL);
    v6 = v10;
    if (v8)
    {
      v9 = v8[5];
      if (v9)
      {
        objc_storeStrong((v9 + 184), a3);
        v6 = v10;
      }
    }
  }
}

- (void)setRouteLineSplitAnnotation:(id)a3
{
  v5 = a3;
  v6 = v5;
  v7 = *(*(self + 50) + 41928);
  if (v7)
  {
    v10 = v5;
    v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v7 + 16), 0x5CBBA028798243FuLL);
    v6 = v10;
    if (v8)
    {
      v9 = v8[5];
      if (v9)
      {
        objc_storeStrong((v9 + 176), a3);
        v6 = v10;
      }
    }
  }
}

- (void)setRendersInBackground:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set renders in background: %s", &v8, 0x16u);
  }

  v7 = *(self + 50);
  *(v7 + 42002) = v3;
  md::MapEngine::updateRunLoopStatus(v7);
}

- (BOOL)gridDisabled
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 15)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (BOOL)rastersDisabled
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 14)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (BOOL)buildingFootprintsDisabled
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 13)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (BOOL)renderInverseFills
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 12)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (BOOL)renderOverlayPolygons
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 11)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (BOOL)polygonsDisabled
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 10)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (BOOL)labelsDisabled
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 9)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (BOOL)roadsDisabled
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 8)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (unint64_t)getSceneState
{
  v2 = *(*(self + 50) + 41944);
  if (*(v2 + 89) != 1)
  {
    return 0;
  }

  v3 = *(v2 + 88);
  if (v3 - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (void)setDisableShadows:(BOOL)a3
{
  v4 = *(self + 50);
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(v4 + 41928) + 16), 0x91E65CD7F1A7A7FALL);
  if (v5)
  {
    v6 = v5[5];
    if (v6)
    {
      *(v6 + 224) = a3;
      v7 = 1;
      md::MapEngine::setNeedsTick(v4, &v7);
    }
  }
}

- (void)setDisableGrid:(BOOL)a3
{
  v4 = *(*(self + 50) + 41936);
  v7 = 15;
  md::MapEngineSettings::set(v4, &v7, a3);
  v5 = *(self + 50);
  v6 = 1;
  md::MapEngine::setNeedsTick(v5, &v6);
}

- (void)setDisableRasters:(BOOL)a3
{
  v4 = *(*(self + 50) + 41936);
  v7 = 14;
  md::MapEngineSettings::set(v4, &v7, a3);
  v5 = *(self + 50);
  v6 = 1;
  md::MapEngine::setNeedsTick(v5, &v6);
}

- (void)setDisableBuildingFootprints:(BOOL)a3
{
  v4 = *(*(self + 50) + 41936);
  v7 = 13;
  md::MapEngineSettings::set(v4, &v7, (*(*(self + 65) + 1) | a3) & 1);
  v5 = *(self + 50);
  v6 = 1;
  md::MapEngine::setNeedsTick(v5, &v6);
}

- (void)setRenderInverseFills:(BOOL)a3
{
  v4 = *(*(self + 50) + 41936);
  v7 = 12;
  md::MapEngineSettings::set(v4, &v7, a3);
  v5 = *(self + 50);
  v6 = 1;
  md::MapEngine::setNeedsTick(v5, &v6);
}

- (void)setRenderOverlayPolygons:(BOOL)a3
{
  v4 = *(*(self + 50) + 41936);
  v7 = 11;
  md::MapEngineSettings::set(v4, &v7, a3);
  v5 = *(self + 50);
  v6 = 1;
  md::MapEngine::setNeedsTick(v5, &v6);
}

- (void)setDisablePolygons:(BOOL)a3
{
  v4 = *(*(self + 50) + 41936);
  v7 = 10;
  md::MapEngineSettings::set(v4, &v7, a3);
  v5 = *(self + 50);
  v6 = 1;
  md::MapEngine::setNeedsTick(v5, &v6);
}

- (void)setDisableLabels:(BOOL)a3
{
  v4 = *(*(self + 50) + 41936);
  v7 = 9;
  md::MapEngineSettings::set(v4, &v7, a3);
  v5 = *(self + 50);
  v6 = 1;
  md::MapEngine::setNeedsTick(v5, &v6);
}

- (void)setDisableRoads:(BOOL)a3
{
  v4 = *(*(self + 50) + 41936);
  v7 = 8;
  md::MapEngineSettings::set(v4, &v7, a3);
  v5 = *(self + 50);
  v6 = 1;
  md::MapEngine::setNeedsTick(v5, &v6);
}

- (BOOL)tapAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VKMapView *)self currentCanvas];
  v6 = [v5 cameraController];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 tapAtPoint:{x, y}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isPointValidForGesturing:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VKMapView *)self currentCanvas];
  v6 = [v5 isPointValidForGesturing:{x, y}];

  return v6;
}

- (void)stopPitchingWithFocusPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VKMapView *)self currentCanvas];
  v6 = [v5 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v6 stopPitchingWithFocusPoint:{x, y}];
  }
}

- (void)updatePitchWithFocusPoint:(CGPoint)a3 degrees:(double)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(VKMapView *)self currentCanvas];
  v8 = [v7 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v8 updatePitchWithFocusPoint:x degrees:{y, a4}];
  }
}

- (void)updatePitchWithFocusPoint:(CGPoint)a3 translation:(double)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(VKMapView *)self currentCanvas];
  v8 = [v7 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v8 updatePitchWithFocusPoint:x translation:{y, a4}];
  }
}

- (void)startPitchingWithFocusPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VKMapView *)self currentCanvas];
  v6 = [v5 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v6 startPitchingWithFocusPoint:{x, y}];
  }
}

- (void)stopRotatingWithFocusPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VKMapView *)self currentCanvas];
  v6 = [v5 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v6 stopRotatingWithFocusPoint:{x, y}];
  }
}

- (void)updateRotationWithFocusPoint:(CGPoint)a3 newValue:(double)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(VKMapView *)self currentCanvas];
  v8 = [v7 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v8 updateRotationWithFocusPoint:x newValue:{y, a4}];
  }
}

- (void)startRotatingWithFocusPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VKMapView *)self currentCanvas];
  v6 = [v5 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v6 startRotatingWithFocusPoint:{x, y}];
  }
}

- (void)stopPanningAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKMapView *)self currentCanvas];
  v8 = [v6 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v8 stopPanningAtPoint:{x, y}];
    v7 = *(self + 50);
    v9 = 16;
    md::MapEngine::setNeedsTick(v7, &v9);
  }
}

- (void)willStopPanningAtPoint:(CGPoint)a3 withVelocity:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v9 = [(VKMapView *)self currentCanvas];
  v11 = [v9 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v11 willStopPanningAtPoint:v7 withVelocity:{v6, x, y}];
    v10 = *(self + 50);
    v12 = 16;
    md::MapEngine::setNeedsTick(v10, &v12);
  }
}

- (void)updatePanWithTranslation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKMapView *)self currentCanvas];
  v8 = [v6 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v8 updatePanWithTranslation:{x, y}];
    v7 = *(self + 50);
    v9 = 16;
    md::MapEngine::setNeedsTick(v7, &v9);
  }
}

- (void)startPanningAtPoint:(CGPoint)a3 panAtStartPoint:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(VKMapView *)self currentCanvas];
  v10 = [v8 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v10 startPanningAtPoint:v4 panAtStartPoint:{x, y}];
    v9 = *(self + 50);
    v11 = 16;
    md::MapEngine::setNeedsTick(v9, &v11);
  }
}

- (void)startPanningAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKMapView *)self currentCanvas];
  v8 = [v6 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v8 startPanningAtPoint:0 panAtStartPoint:{x, y}];
    v7 = *(self + 50);
    v9 = 16;
    md::MapEngine::setNeedsTick(v7, &v9);
  }
}

- (void)stopPinchingWithFocusPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VKMapView *)self currentCanvas];
  v6 = [v5 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v6 stopPinchingWithFocusPoint:{x, y}];
  }
}

- (void)updatePinchWithFocusPoint:(CGPoint)a3 oldFactor:(double)a4 newFactor:(double)a5
{
  y = a3.y;
  x = a3.x;
  v9 = [(VKMapView *)self currentCanvas];
  v10 = [v9 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v10 updatePinchWithFocusPoint:x oldFactor:y newFactor:{a4, a5}];
  }
}

- (void)startPinchingWithFocusPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VKMapView *)self currentCanvas];
  v6 = [v5 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v6 startPinchingWithFocusPoint:{x, y}];
  }
}

- (void)zoom:(double)a3 withFocusPoint:(CGPoint)a4 completionHandler:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  v10 = [(VKMapView *)self currentCanvas];
  v11 = [v10 cameraController];

  if (objc_opt_respondsToSelector())
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__VKMapView_zoom_withFocusPoint_completionHandler___block_invoke;
    v12[3] = &unk_1E7B392C8;
    v13 = v9;
    [v11 zoom:v12 withFocusPoint:a3 completionHandler:{x, y}];
  }

  else if (v9)
  {
    v9[2](v9);
  }
}

uint64_t __51__VKMapView_zoom_withFocusPoint_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)zoomToLevel:(double)a3 withFocusPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(VKMapView *)self currentCanvas];
  v8 = [v7 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v8 zoomToLevel:a3 withFocusPoint:{x, y}];
  }
}

- (void)willLayoutWithTimestamp:(double)a3 withContext:(void *)a4
{
  v6 = [(VKMapView *)self currentCanvas];
  [v6 updateWithTimestamp:a4 withContext:a3];
}

- (void)setRegionRestriction:(id)a3 duration:(double)a4 timingFunction:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(VKMapView *)self currentCanvas];
  v10 = [v9 cameraController];

  if (objc_opt_respondsToSelector())
  {
    v11 = v12;
    if (!v12)
    {
      v11 = [[VKCameraRegionRestriction alloc] initWithMapRegion:0];
    }

    v12 = v11;
    [v10 setRegionRestriction:a4 duration:? timingFunction:?];
  }
}

- (void)setCenterCoordinateDistanceRange:(id *)a3 duration:(double)a4 timingFunction:(id)a5
{
  v8 = a5;
  v9 = [(VKMapView *)self currentCanvas];
  v10 = [v9 cameraController];

  if (objc_opt_respondsToSelector())
  {
    v11 = *&a3->var0;
    v12 = *&a3->var2;
    [v10 setCenterCoordinateDistanceRange:&v11 duration:v8 timingFunction:a4];
  }
}

- (void)mapController:(id)a3 requestsDisplayRate:(int64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(*(*(self + 50) + 208) + 8) != a4)
  {
    v6 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 134218240;
      v12 = self;
      v13 = 2048;
      v14 = a4;
      _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set requested display rate: %ld", &v11, 0x16u);
    }

    v7 = *(*(self + 50) + 208);
    *(v7 + 1) = a4;
    md::RunLoopController::_updateDisplayRate(v7, v8, v9, v10);
  }
}

- (void)_updateMapDisplayStyle
{
  v3 = [(VKMapView *)self mapDisplayStyle];
  if ((BYTE2(v3) - 1) > 8u)
  {
    v4 = 0;
  }

  else
  {
    v4 = byte_1B33B2C2A[(BYTE2(v3) - 1)];
  }

  v5 = *(self + 200);
  if ((v5 - 1) >= 8)
  {
    if (v5 == 9)
    {
      v5 = 1;
      v6 = 1;
      goto LABEL_6;
    }

    v5 = 0;
  }

  v6 = *(self + 201) == 1;
LABEL_6:
  v7 = *(self + 216);
  if ((v3 & 0xFF00) >> 8 != BYTE1(v3) || v5 != v4 || v6 != (v3 & 0xFF000000) >> 24 || v7 != BYTE4(v3))
  {

    [(VKMapView *)self setMapDisplayStyle:((((v3 & 0xFF0000000000) == 0x10000000000) << 40) | (v7 << 32) | (v6 << 24) | (v5 << 16)) & 0xFFFFFFFFFFFFLL | v3 & 0xFF00 | v3 animated:1 duration:0.25];
  }
}

- (void)mapDidFinishChangingMapDisplayStyle:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__VKMapView_mapDidFinishChangingMapDisplayStyle___block_invoke;
  v3[3] = &unk_1E7B30168;
  v3[4] = self;
  v4 = a3;
  [(VKMapView *)self _postDelegateCallbackBlock:v3];
}

void __49__VKMapView_mapDidFinishChangingMapDisplayStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 mapLayer:*(a1 + 32) didFinishChangingMapDisplayStyle:*(a1 + 40) | (*(a1 + 44) << 32)];
  }
}

- (void)map:(id)a3 canShowFlyoverDidChange:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(self + 16);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v14 = objc_loadWeakRetained(self + 16);
    [v14 mapLayer:self canShowFlyoverDidChange:v4];
  }

  v15 = objc_loadWeakRetained(self + 16);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(VKMapView *)self currentCanvas];
    v16 = v8;
    if (v4)
    {
      v9 = [v8 cameraController];
      v10 = [v9 isPitched];

      if (!v10)
      {
        return;
      }

      v17 = objc_loadWeakRetained(self + 16);
      [v17 mapLayer:self showingFlyoverDidChange:1];
    }

    else
    {
      v11 = [v8 cameraController];
      v12 = [v11 isPitched];

      if (!v12)
      {
        return;
      }

      v17 = objc_loadWeakRetained(self + 16);
      [v17 mapLayer:self showingFlyoverDidChange:0];
    }
  }
}

- (void)labelMarkerDidChangeState:(const void *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v11 = self;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] labelMarkerDidChangeState", buf, 0xCu);
  }

  v6 = *a3;
  v7 = *(a3 + 1);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = __39__VKMapView_labelMarkerDidChangeState___block_invoke;
  v8[3] = &unk_1F29E62B0;
  v8[4] = self;
  v8[5] = v6;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(VKMapView *)self _postDelegateCallbackBlock:v8];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void __39__VKMapView_labelMarkerDidChangeState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v6 = [VKLabelMarker markerWithLabelMarker:a1 + 40];
    v3 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v3 mapLayer:*(a1 + 32) labelMarkerDidChangeState:v6];
LABEL_3:

    goto LABEL_4;
  }

  v7 = objc_loadWeakRetained((*(a1 + 32) + 128));
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return;
  }

  v6 = [VKLabelMarker markerWithLabelMarker:a1 + 40];
  if ([v6 isSelected])
  {
    v3 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v3 mapLayer:*(a1 + 32) selectedLabelMarkerDidChangeState:v6];
    goto LABEL_3;
  }

LABEL_4:
}

- (void)selectedLabelMarkerWillDisappear:(const void *)a3
{
  v3 = *a3;
  v4 = *(a3 + 1);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v5[2] = __46__VKMapView_selectedLabelMarkerWillDisappear___block_invoke;
  v5[3] = &unk_1F29E62B0;
  v5[4] = self;
  v5[5] = v3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(VKMapView *)self _postDelegateCallbackBlock:v5];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void __46__VKMapView_selectedLabelMarkerWillDisappear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v5 = [VKLabelMarker markerWithLabelMarker:a1 + 40];
    v3 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v3 mapLayer:*(a1 + 32) selectedLabelMarkerWillDisappear:v5];
  }
}

- (void)selectedLabelMarkerDidCompleteLayout:(const void *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v11 = self;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] selectedLabelMarkerDidCompleteLayout", buf, 0xCu);
  }

  v6 = *a3;
  v7 = *(a3 + 1);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = __50__VKMapView_selectedLabelMarkerDidCompleteLayout___block_invoke;
  v8[3] = &unk_1F29E62B0;
  v8[4] = self;
  v8[5] = v6;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(VKMapView *)self _postDelegateCallbackBlock:v8];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void __50__VKMapView_selectedLabelMarkerDidCompleteLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v5 = [VKLabelMarker markerWithLabelMarker:a1 + 40];
    v3 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v3 mapLayer:*(a1 + 32) selectedLabelMarkerDidCompleteLayout:v5];
  }
}

- (void)didUpdateSceneStatus:(unsigned __int8)a3
{
  v4 = a3;
  if (a3 > 1)
  {
    switch(a3)
    {
      case 2u:
        v5 = 0;
        goto LABEL_12;
      case 3u:
        v5 = 1;
        v4 = 3;
        goto LABEL_12;
      case 4u:
        v5 = 1;
        v4 = 4;
LABEL_12:
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __34__VKMapView_didUpdateSceneStatus___block_invoke;
        v7[3] = &unk_1E7B30140;
        v7[4] = self;
        v8 = v5;
        [(VKMapView *)self _postDelegateCallbackBlock:v7];
        goto LABEL_13;
    }

LABEL_11:
    v5 = 0;
    v4 = 0;
    goto LABEL_12;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_11;
    }

    v4 = 1;
  }

LABEL_13:
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__VKMapView_didUpdateSceneStatus___block_invoke_2;
  v6[3] = &unk_1E7B30000;
  v6[4] = self;
  v6[5] = v4;
  [(VKMapView *)self _postDelegateCallbackBlock:v6];
}

void __34__VKMapView_didUpdateSceneStatus___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 32);
  v6 = @"hasFailedTiles";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"VKMapViewDidBecomeFullyDrawnNotification" object:v3 userInfo:v5];
}

void __34__VKMapView_didUpdateSceneStatus___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 mapLayerDidChangeSceneState:*(a1 + 32) withState:*(a1 + 40)];
  }
}

- (void)mapDidReloadStylesheet:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__VKMapView_mapDidReloadStylesheet___block_invoke;
  v3[3] = &unk_1E7B3B9F8;
  v3[4] = self;
  [(VKMapView *)self _postDelegateCallbackBlock:v3];
}

void __36__VKMapView_mapDidReloadStylesheet___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 mapLayerDidReloadStylesheet:*(a1 + 32)];
  }
}

- (void)didFinishLoadingDataWithError:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__VKMapView_didFinishLoadingDataWithError___block_invoke;
  v6[3] = &unk_1E7B3F110;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(VKMapView *)self _postDelegateCallbackBlock:v6];
}

void __43__VKMapView_didFinishLoadingDataWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 mapLayerDidFailLoadingTiles:*(a1 + 32) withError:*(a1 + 40)];
  }
}

- (void)didFinishLoadingData
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __33__VKMapView_didFinishLoadingData__block_invoke;
  v2[3] = &unk_1E7B3B9F8;
  v2[4] = self;
  [(VKMapView *)self _postDelegateCallbackBlock:v2];
}

void __33__VKMapView_didFinishLoadingData__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 mapLayerDidFinishLoadingTiles:*(a1 + 32)];
  }
}

void __32__VKMapView_didStartLoadingData__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 mapLayerDidStartLoadingTiles:*(a1 + 32)];
  }
}

- (void)puckLocationTracingEvent:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__VKMapView_puckLocationTracingEvent___block_invoke;
  v6[3] = &unk_1E7B3F110;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(VKMapView *)self _postDelegateCallbackBlock:v6];
}

void __38__VKMapView_puckLocationTracingEvent___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 134218242;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "[VKMapView:%p] puckLocationTracingEvent VKNavigationPuckLocationTracingEvent:%@", &v8, 0x16u);
    }

    v7 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v7 mapLayer:*(a1 + 32) puckLocationTracingEvent:*(a1 + 40)];
  }
}

- (void)injectDebugARUserRouteCoordinate:(PolylineCoordinate)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__VKMapView_injectDebugARUserRouteCoordinate___block_invoke;
  v3[3] = &unk_1E7B30000;
  v3[4] = self;
  v3[5] = a3;
  [(VKMapView *)self _postDelegateCallbackBlock:v3];
}

- (void)injectDebugARFeatures:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__VKMapView_injectDebugARFeatures___block_invoke;
  v6[3] = &unk_1E7B3F110;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(VKMapView *)self _postDelegateCallbackBlock:v6];
}

- (void)arWalkingElevationRequestFailure:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__VKMapView_arWalkingElevationRequestFailure___block_invoke;
  v6[3] = &unk_1E7B3F110;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(VKMapView *)self _postDelegateCallbackBlock:v6];
}

void __46__VKMapView_arWalkingElevationRequestFailure___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 134218242;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "[VKMapView:%p] ArWalkingElevationRequestFailure reason:%@", &v8, 0x16u);
    }

    v7 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v7 mapLayer:*(a1 + 32) arWalkingElevationRequestFailure:*(a1 + 40)];
  }
}

- (void)arWalkingFeatureSetStateDidUpdate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__VKMapView_arWalkingFeatureSetStateDidUpdate___block_invoke;
  v6[3] = &unk_1E7B3F110;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(VKMapView *)self _postDelegateCallbackBlock:v6];
}

void __47__VKMapView_arWalkingFeatureSetStateDidUpdate___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 134218242;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "[VKMapView:%p] ARWalkingFeatureSetStateDidUpdate featureSet:%@", &v8, 0x16u);
    }

    v7 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v7 mapLayer:*(a1 + 32) arWalkingFeatureSetStateDidUpdate:*(a1 + 40)];
  }
}

- (void)activeARWalkingFeatureDidUpdate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__VKMapView_activeARWalkingFeatureDidUpdate___block_invoke;
  v6[3] = &unk_1E7B3F110;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(VKMapView *)self _postDelegateCallbackBlock:v6];
}

void __45__VKMapView_activeARWalkingFeatureDidUpdate___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 134218242;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "[VKMapView:%p] ActiveARWalkingFeatureDidUpdate info:%@", &v8, 0x16u);
    }

    v7 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v7 mapLayer:*(a1 + 32) activeARWalkingFeatureDidUpdate:*(a1 + 40)];
  }
}

- (void)muninJunctionDidChange:(const void *)a3 currentRoad:(const void *)a4 localize:(BOOL)a5
{
  v5 = a5;
  v18[2] = *MEMORY[0x1E69E9840];
  v17 = &unk_1F29E6470;
  v18[0] = 0;
  v15 = &unk_1F29E6490;
  v16 = 0;
  if (a3)
  {
    v8 = [[VKMuninJunction alloc] initWithMuninJunction:a3 localize:a5];
    v9 = v8;
    objc_storeStrong(v18, v8);
  }

  if (a4)
  {
    v10 = [[VKMuninRoad alloc] initWithMuninRoadEdge:a4 localize:v5];
    v11 = v10;
    objc_storeStrong(&v16, v10);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v12[2] = __57__VKMapView_muninJunctionDidChange_currentRoad_localize___block_invoke;
  v12[3] = &unk_1F29E6278;
  v12[4] = self;
  geo::_retain_ptr<VKMuninJunction * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v13, &v17);
  geo::_retain_ptr<VKMuninRoad * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v14, &v15);
  [(VKMapView *)self _postDelegateCallbackBlock:v12];
  v14[0] = &unk_1F29E6490;

  v13[0] = &unk_1F29E6470;
  v15 = &unk_1F29E6490;

  v17 = &unk_1F29E6470;
}

void __57__VKMapView_muninJunctionDidChange_currentRoad_localize___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      v7 = *(a1 + 72);
      v13 = 134218498;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "[VKMapView:%p] Junction didChange:%@ currentRoad:%@", &v13, 0x20u);
    }

    v8 = objc_loadWeakRetained((*(a1 + 32) + 128));
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 72);
    v12 = v10;
    [v8 mapLayer:v9 nearestJunctionDidChange:v12 currentRoad:v11];
  }
}

- (void)setFocusedLabelsPolyline:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134218242;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Setting focused labels polyline: %@", &v6, 0x16u);
  }

  md::LabelSettings_Navigation::setFocusedPolyline(([(VKMapView *)self _labelSettings]+ 8), v4);
}

- (VKPolylineOverlay)focusedLabelsPolyline
{
  v2 = *(*(*([(VKMapView *)self _labelSettings]+ 8) + 40) + 200);

  return md::LabelExternalPointFeature::incident(v2);
}

- (void)setNavContext:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (*(self + 42) != v5)
  {
    objc_storeStrong(self + 42, a3);
    v5 = *(self + 42);
  }

  if (!v5)
  {
    [(VKMapView *)self setRouteUserOffset:*MEMORY[0x1E69A1918]];
  }

  [*(self + 35) setNavContext:v6];
}

- (void)setRouteContext:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v10 = self;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "[VKMapView:%p] Setting route context: %@", buf, 0x16u);
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x1BCA10CB9934FB1BuLL);
  if (v7)
  {
    v7 = *(v7 + 5);
  }

  md::TransitLogic::setRouteContext(v7, v5);
  v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xBEC1A12372CEEC00);
  if (v8)
  {
    v8 = *(v8 + 5);
  }

  md::NavigationLogic::setRouteContext(v8, v5);
  if (*(self + 61) != v5)
  {
    objc_storeStrong(self + 61, a3);
  }

  md::LabelSettings_Navigation::setRouteContext(([(VKMapView *)self _labelSettings]+ 8), v5);
}

- (void)setCurrentLocationText:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134218243;
    v7 = self;
    v8 = 2113;
    v9 = v4;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Setting current location text: %{private}@", &v6, 0x16u);
  }

  md::LabelSettings_Navigation::setCurrentLocationText(([(VKMapView *)self _labelSettings]+ 8), v4);
}

- (void)setRouteUserOffset:(PolylineCoordinate)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    v8 = self;
    v9 = 1024;
    index = a3.index;
    v11 = 2048;
    offset = a3.offset;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Setting route user offset: %d.%f", buf, 0x1Cu);
  }

  md::LabelSettings_Navigation::setRouteUserOffset(([(VKMapView *)self _labelSettings]+ 8), &v6);
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xBEC1A12372CEEC00)[5] + 200) = a3;
}

- (void)insertOverlay:(id)a3 belowOverlay:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VKMapView *)self currentCanvas];
  [v8 insertOverlay:v6 belowOverlay:v7];

  v9 = *(*(self + 50) + 41936);
  v14 = 5;
  v10 = [(VKMapView *)self currentCanvas];
  v11 = [v10 overlays];
  md::MapEngineSettings::set(v9, &v14, [v11 count] != 0);

  v12 = *(self + 50);
  v13 = 15;
  md::MapEngine::setNeedsTick(v12, &v13);
}

- (void)insertOverlay:(id)a3 aboveOverlay:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VKMapView *)self currentCanvas];
  [v8 insertOverlay:v6 aboveOverlay:v7];

  v9 = *(*(self + 50) + 41936);
  v14 = 5;
  v10 = [(VKMapView *)self currentCanvas];
  v11 = [v10 overlays];
  md::MapEngineSettings::set(v9, &v14, [v11 count] != 0);

  v12 = *(self + 50);
  v13 = 15;
  md::MapEngine::setNeedsTick(v12, &v13);
}

- (void)removeOverlay:(id)a3
{
  v4 = a3;
  v5 = [(VKMapView *)self currentCanvas];
  [v5 removeOverlay:v4];

  v6 = *(*(self + 50) + 41936);
  v11 = 5;
  v7 = [(VKMapView *)self currentCanvas];
  v8 = [v7 overlays];
  md::MapEngineSettings::set(v6, &v11, [v8 count] != 0);

  v9 = *(self + 50);
  v10 = 15;
  md::MapEngine::setNeedsTick(v9, &v10);
}

- (void)addOverlay:(id)a3
{
  v4 = a3;
  v5 = [(VKMapView *)self currentCanvas];
  [v5 addOverlay:v4];

  v6 = *(*(self + 50) + 41936);
  v11 = 5;
  v7 = [(VKMapView *)self currentCanvas];
  v8 = [v7 overlays];
  md::MapEngineSettings::set(v6, &v11, [v8 count] != 0);

  v9 = *(self + 50);
  v10 = 15;
  md::MapEngine::setNeedsTick(v9, &v10);
}

- (void)removePersistentRouteOverlay:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(VKMapView *)self targetDisplay];
    if (v6 > 2)
    {
      v7 = &stru_1F2A61C40;
    }

    else
    {
      v7 = off_1E7B304A0[v6];
    }

    v9 = 134218498;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Removing persistent route overlay: %@, and the target display: %@", &v9, 0x20u);
  }

  v8 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(*(v8 + 47360), "[VKMapView removePersistentRouteOverlay:]");
  md::RouteOverlayContainer::removeOverlay(*(*(v8 + 41704) + 16), v4, 1);
}

- (void)addPersistentRouteOverlay:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(VKMapView *)self targetDisplay];
    if (v6 > 2)
    {
      v7 = &stru_1F2A61C40;
    }

    else
    {
      v7 = off_1E7B304A0[v6];
    }

    v9 = 134218498;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Adding persistent route overlay: %@, and the target display: %@", &v9, 0x20u);
  }

  v8 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(*(v8 + 47360), "[VKMapView addPersistentRouteOverlay:]");
  md::RouteOverlayContainer::addOverlay(*(*(v8 + 41704) + 16), v4, 1);
}

- (void)removeRouteOverlay:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(VKMapView *)self targetDisplay];
    if (v6 > 2)
    {
      v7 = &stru_1F2A61C40;
    }

    else
    {
      v7 = off_1E7B304A0[v6];
    }

    v9 = 134218498;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Removing route overlay: %@, and the target display: %@", &v9, 0x20u);
  }

  v8 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(*(v8 + 47360), "[VKMapView removeRouteOverlay:]");
  md::RouteOverlayContainer::removeOverlay(*(*(v8 + 41704) + 16), v4, 0);
}

- (void)addRouteOverlay:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(VKMapView *)self targetDisplay];
    if (v6 > 2)
    {
      v7 = &stru_1F2A61C40;
    }

    else
    {
      v7 = off_1E7B304A0[v6];
    }

    v9 = 134218498;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Adding route overlay: %@, and the target display: %@", &v9, 0x20u);
  }

  v8 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(*(v8 + 47360), "[VKMapView addRouteOverlay:]");
  md::RouteOverlayContainer::addOverlay(*(*(v8 + 41704) + 16), v4, 0);
}

- (void)startTrackingAnnotation:(id)a3 trackHeading:(BOOL)a4 animated:(BOOL)a5 duration:(double)a6 timingFunction:(id)a7
{
  v9 = a5;
  v10 = a4;
  v15 = a3;
  v12 = a7;
  v13 = [(VKMapView *)self currentCanvas];
  v14 = [v13 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v14 startTrackingAnnotation:v15 trackHeading:v10 animated:v9 duration:v12 timingFunction:a6];
  }
}

- (void)setHasVehicleHeading:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKMapView *)self currentCanvas];
  v5 = [v4 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v5 setHasVehicleHeading:v3];
  }
}

- (void)setAnnotationTrackingBehavior:(id *)a3
{
  v4 = [(VKMapView *)self currentCanvas];
  v5 = [v4 cameraController];

  if (objc_opt_respondsToSelector())
  {
    v6 = *&a3->var0;
    v7 = *&a3->var2;
    [v5 setAnnotationTrackingBehavior:&v6];
  }
}

- ($FF918C85BF8E73478720C66798E418D4)annotationTrackingBehavior
{
  v4 = [(VKMapView *)self currentCanvas];
  v6 = [v4 cameraController];

  if (objc_opt_respondsToSelector())
  {
    if (v6)
    {
      [v6 annotationTrackingBehavior];
    }

    else
    {
      *&retstr->var0 = 0;
      retstr->var1 = 0.0;
      *&retstr->var2 = 0;
    }
  }

  else
  {
    *&retstr->var0 = VKAnnotationTrackingBehaviorDefault;
    *&retstr->var2 = 1;
  }

  return result;
}

- (void)setTrackingZoomScale:(double)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134218240;
    v7 = self;
    v8 = 2048;
    v9 = a3;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set tracking zoom scale: %f", &v6, 0x16u);
  }

  [*(self + 35) setZoomScale:a3];
}

- (double)trackingZoomScale
{
  v2 = *(self + 35);
  if (!v2)
  {
    return 1.0;
  }

  [v2 zoomScale];
  return result;
}

- (NSArray)labelMarkers
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(*([(VKMapView *)self _labelSettings]+ 16) + 24);
  v10.__shared_weak_owners_ = 0;
  v11 = 0;
  v10.__shared_owners_ = 0;
  std::recursive_mutex::lock((v2 + 24));
  (*(**(v2 + 240) + 224))(*(v2 + 240), &v10.__shared_owners_);
  std::recursive_mutex::unlock((v2 + 24));
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [v3 initWithCapacity:(v10.__shared_weak_owners_ - v10.__shared_owners_) >> 4];
  shared_owners = v10.__shared_owners_;
  for (i = v10.__shared_weak_owners_; shared_owners != i; shared_owners += 16)
  {
    v7 = [VKLabelMarker markerWithLabelMarker:shared_owners];
    if (v7)
    {
      [v4 addObject:v7];
    }
  }

  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];

  v10.__vftable = &v10.__shared_owners_;
  std::vector<std::shared_ptr<md::LabelMarker>,geo::allocator_adapter<std::shared_ptr<md::LabelMarker>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v10);

  return v8;
}

- (BOOL)shouldHideOffscreenSelectedAnnotation
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 shouldHideOffscreenSelectedAnnotation];

  return v3;
}

- (void)panWithOffset:(CGPoint)a3 relativeToScreenPoint:(CGPoint)a4 animated:(BOOL)a5 duration:(double)a6 completionHandler:(id)a7
{
  v8 = a5;
  y = a4.y;
  x = a4.x;
  v11 = a3.y;
  v12 = a3.x;
  v16 = a7;
  v14 = [(VKMapView *)self currentCanvas];
  v15 = [v14 cameraController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v15 panWithOffset:v8 relativeToScreenPoint:v16 animated:v12 duration:v11 completionHandler:{x, y, a6}];
  }

  else if (v16)
  {
    v16[2]();
  }
}

- (void)setFlyoverMode:(int)a3
{
  if (*(self + 103) != a3)
  {
    [*(self + 33) setTourShouldResumeWhenDoneGesturing:{+[MDARController isSupported](MDARController, "isSupported") ^ 1}];
    if (a3 == -1)
    {
      [(VKMapView *)self stopFlyoverAnimation];
    }

    else
    {
      v5 = *(*(self + 50) + 41936);
      v8 = 2;
      md::MapEngineSettings::set(v5, &v8, 0);
      if ([(VKMapView *)self mapType]!= 3)
      {
        [(VKMapView *)self setMapType:3];
      }
    }

    *(self + 103) = a3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __28__VKMapView_setFlyoverMode___block_invoke;
    v6[3] = &unk_1E7B30118;
    v6[4] = self;
    v7 = a3;
    [(VKMapView *)self _postDelegateCallbackBlock:v6];
  }
}

void __28__VKMapView_setFlyoverMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 mapLayer:*(a1 + 32) flyoverModeDidChange:*(a1 + 40)];
  }
}

- (void)setIncreaseContrastEnabled:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  if ([(VKMapView *)self isIncreaseContrastEnabled]!= a3)
  {
    v5 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = "NO";
      if (v3)
      {
        v6 = "YES";
      }

      v9 = 134218242;
      v10 = self;
      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] setIncreaseContrastEnabled:%s", &v9, 0x16u);
    }

    v7 = *(self + 50);
    v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(v7 + 41928) + 16), 0x2FED70A4459DFCA1uLL);
    if (v8)
    {
      v8 = v8[5];
    }

    if (*(v8 + 1113) != v3)
    {
      *(v8 + 1113) = v3;
      if ((v8[139] & 1) == 0)
      {
        md::StyleLogic::setResolvedIncreaseContrastEnabled(v8, v3, 0.6);
        v7 = *(self + 50);
      }
    }

    LOBYTE(v9) = 1;
    md::MapEngine::setNeedsTick(v7, &v9);
  }
}

- (double)maxPitch
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];
  [v3 maxPitch];
  v5 = v4;

  return v5;
}

- (double)minPitch
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];
  [v3 minPitch];
  v5 = v4;

  return v5;
}

- (BOOL)isFullyPitched
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];
  v4 = [v3 isFullyPitched];

  return v4;
}

- (void)exit3DMode
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKMapView:%p] Exit 3d mode", &v6, 0xCu);
  }

  v4 = [(VKMapView *)self currentCanvas];
  v5 = [v4 cameraController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 exit3DMode];
  }
}

- (void)enter3DMode
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKMapView:%p] Enter 3d mode", &v6, 0xCu);
  }

  v4 = [(VKMapView *)self currentCanvas];
  v5 = [v4 cameraController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 enter3DMode];
  }
}

- (void)setSelectedBuildingFeatureIds:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Select building feature ids %@", buf, 0x16u);
  }

  if (([v4 isEqualToSet:*(self + 63)] & 1) == 0)
  {
    v6 = v4;
    v7 = v6;
    v8 = v6 == 0;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = *(self + 63);
    *(self + 63) = v7;

    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    if (!v8)
    {
      memset(v22, 0, sizeof(v22));
      v12 = v7;
      if ([v12 countByEnumeratingWithState:v22 objects:v23 count:16])
      {
        [**(&v22[0] + 1) unsignedIntegerValue];
        operator new();
      }
    }

    v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x1F3242C85D9F2F62uLL);
    if (v13)
    {
      v14 = v13[5];
    }

    else
    {
      v14 = 0;
    }

    if (*(v14 + 392) == *&buf[16])
    {
      v15 = *(v14 + 376);
      if (v15 == (v14 + 384))
      {
LABEL_33:
        std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*&buf[8]);
        goto LABEL_34;
      }

      v16 = *buf;
      while (v15[4] == v16[4])
      {
        v17 = v15[1];
        v18 = v15;
        if (v17)
        {
          do
          {
            v15 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v15 = v18[2];
            v19 = *v15 == v18;
            v18 = v15;
          }

          while (!v19);
        }

        v20 = v16[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v16[2];
            v19 = *v21 == v16;
            v16 = v21;
          }

          while (!v19);
        }

        v16 = v21;
        if (v15 == (v14 + 384))
        {
          goto LABEL_33;
        }
      }
    }

    if ((v14 + 376) != buf)
    {
      std::__tree<unsigned long long>::__assign_multi<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>(v14 + 376, *buf, &buf[8]);
    }

    std::__tree<unsigned long long>::__assign_multi<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>(v14 + 400, *(v14 + 376), (v14 + 384));
    *(v14 + 448) = 1;
    goto LABEL_33;
  }

LABEL_34:
}

- (void)deselectVenuePoiFeatureId
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKMapView:%p] Deselect venue poi feature", &v6, 0xCu);
  }

  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xEC9B77B4222D22FFLL);
  if (v4)
  {
    v5 = v4[5];
    if (v5)
    {
      *(v5 + 592) = 0;
    }
  }
}

- (void)setSelectedVenuePoiFeatureId:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 134218240;
    v9 = self;
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Select venue poi feature id: %llu", &v8, 0x16u);
  }

  v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xEC9B77B4222D22FFLL);
  if (v6)
  {
    v7 = v6[5];
    if (v7)
    {
      *(v7 + 592) = a3;
    }
  }
}

- (void)deselectFeatureId
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v12 = 134217984;
    v13 = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKMapView:%p] Deselect feature id", &v12, 0xCu);
  }

  v4 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(*(v4 + 47360), "[VKMapView deselectFeatureId]");
  v5 = *(v4 + 41704);
  for (i = *(v5 + 32); i != *(v5 + 40); i += 16)
  {
    (*(**(i + 8) + 88))(*(i + 8));
  }

  v7 = *(*(self + 50) + 41928);
  v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v7 + 16), 0x3B36D43422893971uLL);
  if (v8)
  {
    v9 = v8[5];
    if (v9)
    {
      if (*(v9 + 224) == 1)
      {
        *(v9 + 224) = 0;
      }
    }
  }

  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v7 + 16), 0x3C2657D301A7BCF4uLL);
  if (v10)
  {
    v11 = v10[5];
    if (v11)
    {
      if (*(v11 + 128) == 1)
      {
        *(v11 + 128) = 0;
      }
    }
  }
}

- (void)setSelectedFeatureId:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v14 = 134218240;
    v15 = self;
    v16 = 2048;
    v17 = a3;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Select feature id: %llu", &v14, 0x16u);
  }

  v6 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(*(v6 + 47360), "[VKMapView setSelectedFeatureId:]");
  v7 = *(v6 + 41704);
  for (i = *(v7 + 32); i != *(v7 + 40); i += 16)
  {
    (*(**(i + 8) + 80))(*(i + 8), a3);
  }

  v9 = *(*(self + 50) + 41928);
  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v9 + 16), 0x3B36D43422893971uLL);
  if (v10)
  {
    v11 = v10[5];
    if (v11)
    {
      *(v11 + 216) = a3;
      *(v11 + 224) = 1;
    }
  }

  v12 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v9 + 16), 0x3C2657D301A7BCF4uLL);
  if (v12)
  {
    v13 = v12[5];
    if (v13)
    {
      *(v13 + 120) = a3;
      *(v13 + 128) = 1;
    }
  }
}

- (void)deselectTrails
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKMapView:%p] Deselect trails", &v7, 0xCu);
  }

  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xC74495586E0C32F6);
  if (v4)
  {
    v5 = v4[5];
    if (v5)
    {
      md::HikingLogic::deselectTrails(v5);
      v6 = *(self + 50);
      LOBYTE(v7) = 1;
      md::MapEngine::setNeedsTick(v6, &v7);
    }
  }
}

- (void)setSelectedTrailWithId:(unint64_t)a3 name:(id)a4 locale:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v17 = 134218240;
    v18 = self;
    v19 = 2048;
    v20 = a3;
    _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_INFO, "[VKMapView:%p] Select trail ID: %llu", &v17, 0x16u);
  }

  v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xC74495586E0C32F6);
  if (v11)
  {
    v12 = v11[5];
    if (v12)
    {
      v13 = v8;
      v14 = [v8 UTF8String];
      v15 = v9;
      md::HikingLogic::setSelectedTrail(v12, a3, v14, [v9 UTF8String]);
      v16 = *(self + 50);
      LOBYTE(v17) = 1;
      md::MapEngine::setNeedsTick(v16, &v17);
    }
  }
}

- (void)setPreferredUnits:(unint64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 134218240;
    v11 = self;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set Contour Line Units: %lu", &v10, 0x16u);
  }

  v6 = *(self + 50);
  v7 = a3 != 0;
  if (*(*(v6 + 41704) + 400) != v7)
  {
    md::HomeQueueScheduler::waitForSynchronization(*(v6 + 47360), "[VKMapView setPreferredUnits:]");
    md::World::setPreferredUnits(*(v6 + 41704), v7);
    v8 = *(*(self + 50) + 41936);
    LOBYTE(v10) = 35;
    md::MapEngineSettings::set(v8, &v10, a3 != 0);
    v9 = *(self + 50);
    LOBYTE(v10) = 1;
    md::MapEngine::setNeedsTick(v9, &v10);
  }
}

- (void)deselectTransitLineMarker
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKMapView:%p] Deselect transit line marker", &v7, 0xCu);
  }

  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x1BCA10CB9934FB1BuLL);
  if (v4)
  {
    v5 = v4[5];
    if (v5)
    {
      md::TransitLogic::setSelectedLines(v5, 0);
      v6 = *(self + 50);
      LOBYTE(v7) = 1;
      md::MapEngine::setNeedsTick(v6, &v7);
    }
  }
}

- (void)selectTransitLineMarker:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 134218242;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Select transit line marker: %@", &v9, 0x16u);
  }

  v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x1BCA10CB9934FB1BuLL);
  if (v6)
  {
    v7 = v6[5];
    if (v7)
    {
      md::TransitLogic::setSelectedLines(v7, v4);
      v8 = *(self + 50);
      LOBYTE(v9) = 1;
      md::MapEngine::setNeedsTick(v8, &v9);
    }
  }
}

- (id)selectedTransitLineIDs
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x1BCA10CB9934FB1BuLL);
  if (v3)
  {
    v4 = v3[5];
    if (v4)
    {
      v5 = *(v4 + 248);
      v27 = 0;
      v28 = 0;
      v29 = v5;
      memset(v30, 0, 15);
      v30[15] = *(v4 + 264);
      v31 = 0;
      v32 = *(v4 + 280);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__rehash<true>(&v27, *(v4 + 240));
      for (i = *(v4 + 256); i; i = *i)
      {
        v8 = i[2];
        v9 = v28;
        if (v28)
        {
          v10 = vcnt_s8(v28);
          v10.i16[0] = vaddlv_u8(v10);
          if (v10.u32[0] > 1uLL)
          {
            v2 = i[2];
            if (v8 >= v28)
            {
              v2 = v8 % v28;
            }
          }

          else
          {
            v2 = (v28 - 1) & v8;
          }

          v11 = *(v27 + 8 * v2);
          if (v11)
          {
            for (j = *v11; j; j = *j)
            {
              v13 = j[1];
              if (v13 == v8)
              {
                if (j[2] == v8)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                if (v10.u32[0] > 1uLL)
                {
                  if (v13 >= v28)
                  {
                    v13 %= v28;
                  }
                }

                else
                {
                  v13 &= v28 - 1;
                }

                if (v13 != v2)
                {
                  break;
                }
              }
            }
          }
        }

        v14 = mdm::zone_mallocator::instance(v6);
        v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<unsigned long long,void *>>(v14);
        v15 = v6;
        *v6 = 0;
        *(v6 + 1) = v8;
        *(v6 + 2) = i[2];
        v16 = (v31 + 1);
        if (!v9 || (v32 * v9) < v16)
        {
          v17 = (v9 & (v9 - 1)) != 0;
          if (v9 < 3)
          {
            v17 = 1;
          }

          v18 = v17 | (2 * v9);
          v19 = vcvtps_u32_f32(v16 / v32);
          if (v18 <= v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = v18;
          }

          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__rehash<true>(&v27, v20);
          v9 = v28;
          if ((v28 & (v28 - 1)) != 0)
          {
            if (v8 >= v28)
            {
              v2 = v8 % v28;
            }

            else
            {
              v2 = v8;
            }
          }

          else
          {
            v2 = (v28 - 1) & v8;
          }
        }

        v21 = v27;
        v22 = *(v27 + 8 * v2);
        if (v22)
        {
          *v15 = *v22;
        }

        else
        {
          *v15 = *&v30[7];
          *&v30[7] = v15;
          *(v21 + 8 * v2) = &v30[7];
          if (!*v15)
          {
            goto LABEL_41;
          }

          v23 = *(*v15 + 8);
          if ((v9 & (v9 - 1)) != 0)
          {
            if (v23 >= v9)
            {
              v23 %= v9;
            }
          }

          else
          {
            v23 &= v9 - 1;
          }

          v22 = (v27 + 8 * v23);
        }

        *v22 = v15;
LABEL_41:
        ++v31;
LABEL_42:
        ;
      }

      v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v31];
      v24 = *&v30[7];
      if (*&v30[7])
      {
        do
        {
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v24[2]];
          [v4 addObject:v25];

          v24 = *v24;
        }

        while (v24);
      }

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::~__hash_table(&v27);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)transitLineMarkersForSelectionAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x1BCA10CB9934FB1BuLL);
  if (v6 && (v7 = v6[5]) != 0)
  {
    v8 = [(VKMapView *)self currentCanvas];
    v9 = [v8 cameraController];

    if (v9 && ([v9 vkCamera], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      [*(*(self + 50) + 41656) size];
      v12 = v11;
      [*(*(self + 50) + 41656) size];
      v14 = v13;
      v15 = [v9 vkCamera];
      v16 = v15;
      if (v15)
      {
        [v15 groundPointFromScreenPoint:{x / v12, 1.0 - y / v14}];
      }

      else
      {
        v51 = 0u;
        v52 = 0u;
      }

      if ((BYTE8(v52) & 1) == 0)
      {
        v42 = std::__throw_bad_optional_access[abi:nn200100]();
        v56[0] = &v48;
        std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](v56);
        if (v16)
        {
          operator delete(v16);
        }

        _Unwind_Resume(v42);
      }

      v18 = *(v7 + 168);
      v45 = *(v7 + 176);
      if (v18 == v45)
      {
        v48 = 0;
        v49 = 0;
        v50 = 0;
      }

      else
      {
        v44 = v9;
        v19 = 0;
        v20 = 0;
        do
        {
          v21 = *v18;
          v22 = *(*v18 + 1360);
          if (v22 != 0.0)
          {
            v46 = v18;
            v47 = *v18;
            v23 = 0;
            v24 = (1.0 / v22) * (1.0 / v22);
            v56[0] = vcvt_f32_f64(vdivq_f64(vsubq_f64(v51, *(v21 + 1304)), vsubq_f64(*(v21 + 1320), *(v21 + 1304))));
            while (1)
            {
              v25 = *(v21 + 728);
              v26 = *(v25 + 1352);
              if (v23 >= geo::codec::VectorTile::transitLinkCount(v26, *(v25 + 1360)))
              {
                break;
              }

              v27 = v26 + 184 * v23;
              if (*(v27 + 20))
              {
                v28 = 0;
                while (1)
                {
                  v55 = 0;
                  v29 = geo::codec::transitLinkPoints(v27, v28, &v55);
                  v54 = 0;
                  v53 = 0;
                  v30 = v24 * gm::Matrix<float,2,1>::distanceSquaredToPolyline<int,void>(v56, v55, v29, &v54, &v53);
                  if (v30 < 100.0)
                  {
                    break;
                  }

                  if (++v28 >= *(v27 + 20))
                  {
                    goto LABEL_41;
                  }
                }

                if (*(v27 + 32))
                {
                  v31 = 0;
                  do
                  {
                    v32 = geo::codec::vectorTransitLineAlongLink(v27, v31);
                    if (v19 == v20)
                    {
LABEL_27:
                      v34 = v20 - v19;
                      v35 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3);
                      v36 = v35 + 1;
                      if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
                      {
                        std::__throw_bad_array_new_length[abi:nn200100]();
                      }

                      if (0x5555555555555556 * (-v19 >> 3) > v36)
                      {
                        v36 = 0x5555555555555556 * (-v19 >> 3);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * (-v19 >> 3) >= 0x555555555555555)
                      {
                        v37 = 0xAAAAAAAAAAAAAAALL;
                      }

                      else
                      {
                        v37 = v36;
                      }

                      if (v37)
                      {
                        if (v37 <= 0xAAAAAAAAAAAAAAALL)
                        {
                          operator new();
                        }

                        std::__throw_bad_array_new_length[abi:nn200100]();
                      }

                      v38 = 24 * v35;
                      *v38 = v32;
                      *(v38 + 8) = v27;
                      *(v38 + 16) = v30;
                      v20 = (24 * v35 + 24);
                      v39 = (v38 + 24 * (v34 / -24));
                      memcpy(v39, v19, v34);
                      if (v19)
                      {
                        operator delete(v19);
                      }

                      v19 = v39;
                    }

                    else
                    {
                      v33 = v19;
                      while (*(*v33 + 40) != *(v32 + 40))
                      {
                        v33 += 6;
                        if (v33 == v20)
                        {
                          goto LABEL_27;
                        }
                      }

                      v33[4] = fminf(v30, v33[4]);
                    }

                    ++v31;
                  }

                  while (v31 < *(v27 + 32));
                }

LABEL_41:
                v21 = v47;
              }

              ++v23;
            }

            v18 = v46;
          }

          ++v18;
        }

        while (v18 != v45);
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v9 = v44;
        if (v19 != v20)
        {
          std::__introsort<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *,false>(v19, v20, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3)), 1, v22);
          std::vector<VKTransitLineMarker * {__strong}>::reserve(&v48, 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3));
          v40 = v19;
          do
          {
            v55 = [VKTransitLineMarker markerWithFeature:*v40 transitLink:*(v40 + 1)];
            std::vector<VKTransitLineMarker * {__strong}>::push_back[abi:nn200100](&v48, &v55);

            v40 += 6;
          }

          while (v40 != v20);
        }

        if (v19)
        {
          operator delete(v19);
        }
      }

      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
      v56[0] = &v48;
      std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](v56);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)transitLineMarkersInCurrentViewport
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x1BCA10CB9934FB1BuLL);
  if (v2 && (v3 = v2[5]) != 0)
  {
    memset(v52, 0, sizeof(v52));
    *__p = 0u;
    v54 = 0u;
    v55 = 1065353216;
    v4 = *(v3 + 168);
    v5 = *(v3 + 176);
    if (v4 != v5)
    {
      v6 = (v3 + 552);
      v7 = v3 + 568;
      v47 = (v3 + 552);
      v48 = *(v3 + 176);
      v46 = v3 + 568;
      do
      {
        v8 = 0;
        v9 = (*v4 + 1304);
        v50 = *v4;
        v10 = 1;
        do
        {
          if (*(v7 + 8 * v8) <= v9->f64[v8] || v6->f64[v8] >= *(v50 + 1320 + 8 * v8))
          {
            goto LABEL_54;
          }

          v11 = v10;
          v10 = 0;
          v8 = 1;
        }

        while ((v11 & 1) != 0);
        v49 = v4;
        v12 = 0;
        v13 = vsubq_f64(*(*v4 + 1320), *(*v4 + 1304));
        v14 = vdivq_f64(vsubq_f64(v6[1], *v9), v13);
        *&v13.f64[0] = vcvt_f32_f64(vdivq_f64(vsubq_f64(*v6, *v9), v13));
        v15 = vcvt_f32_f64(v14);
        v60 = v13.f64[0];
        v69[0] = vcvt_hight_f32_f64(*&v13.f64[0], v14);
        v66 = __PAIR64__(v15.u32[1], LODWORD(v13.f64[0]));
        v67 = v15.f32[0] - *v13.f64;
        v68 = 0;
        v63 = __PAIR64__(v15.u32[1], LODWORD(v13.f64[0]));
        v64 = 0;
        v65 = *(v13.f64 + 1) - v15.f32[1];
        v61 = v15.f32[0] - *v13.f64;
        v62 = 0;
        v57 = v15;
        v58 = 0;
        v59 = *(v13.f64 + 1) - v15.f32[1];
LABEL_10:
        v16 = *(v50 + 728);
        v17 = *(v16 + 1352);
        if (v12 < geo::codec::VectorTile::transitLinkCount(v17, *(v16 + 1360)))
        {
          v51 = v12;
          v18 = v17 + 184 * v12;
          if (!*(v18 + 20))
          {
            goto LABEL_52;
          }

          v19 = 0;
          while (1)
          {
            v56 = 0;
            v20 = geo::codec::transitLinkPoints(v18, v19, &v56);
            v21 = v56;
            if (v56 >= 2)
            {
              v22 = v20;
              v23 = 0;
              v24 = 1;
              do
              {
                v25 = 0;
                v26 = (&v22->__vftable + v24);
                v28 = v26[-1].f32[0];
                v27 = v26[-1].f32[1];
                v29 = v26[-1];
                v30 = COERCE_DOUBLE(vsub_f32(*v26, v29));
                v31 = v69;
                v32 = 1;
                while (v28 >= *v31 && v28 < *(v69 + v25 + 2))
                {
                  v33 = v32;
                  v32 = 0;
                  v28 = v27;
                  v31 = v69 + 1;
                  v25 = 1;
                  if ((v33 & 1) == 0)
                  {
                    goto LABEL_28;
                  }
                }

                if ((gm::LineSegment<float,2>::intersects<float,void>(&v66, v29, v30) & 1) != 0 || (gm::LineSegment<float,2>::intersects<float,void>(&v60, v29, v30) & 1) != 0 || gm::LineSegment<float,2>::intersects<float,void>(&v63, v29, v30))
                {
                  goto LABEL_28;
                }

                v34 = gm::LineSegment<float,2>::intersects<float,void>(&v57, v29, v30);
                v23 |= v34;
                if (v34)
                {
                  break;
                }

                ++v24;
              }

              while (v24 < v21);
              if (v23)
              {
                break;
              }
            }

            if (++v19 >= *(v18 + 20))
            {
LABEL_52:
              v12 = v51 + 1;
              goto LABEL_10;
            }
          }

LABEL_28:
          if (!*(v18 + 32))
          {
            goto LABEL_52;
          }

          v35 = 0;
LABEL_30:
          v36 = geo::codec::vectorTransitLineAlongLink(v18, v35);
          if (!__p[1])
          {
            goto LABEL_50;
          }

          v37 = vcnt_s8(__p[1]);
          v37.i16[0] = vaddlv_u8(v37);
          if (v37.u32[0] > 1uLL)
          {
            v38 = v36;
            if (__p[1] <= v36)
            {
              v38 = v36 % __p[1];
            }
          }

          else
          {
            v38 = (__p[1] - 1) & v36;
          }

          v39 = *(__p[0] + v38);
          if (!v39 || (v40 = *v39) == 0)
          {
LABEL_50:
            operator new();
          }

          while (1)
          {
            v41 = v40[1];
            if (v41 == v36)
            {
              if (v36 == v40[2] && v18 == v40[3])
              {
                if (++v35 >= *(v18 + 32))
                {
                  goto LABEL_52;
                }

                goto LABEL_30;
              }
            }

            else
            {
              if (v37.u32[0] > 1uLL)
              {
                if (v41 >= __p[1])
                {
                  v41 %= __p[1];
                }
              }

              else
              {
                v41 &= __p[1] - 1;
              }

              if (v41 != v38)
              {
                goto LABEL_50;
              }
            }

            v40 = *v40;
            if (!v40)
            {
              goto LABEL_50;
            }
          }
        }

        v5 = v48;
        v4 = v49;
        v7 = v46;
        v6 = v47;
LABEL_54:
        ++v4;
      }

      while (v4 != v5);
      if (*(&v54 + 1))
      {
        std::vector<VKTransitLineMarker * {__strong}>::reserve(v52, *(&v54 + 1));
        for (i = v54; i; i = *i)
        {
          *&v69[0] = [VKTransitLineMarker markerWithFeature:i[2] transitLink:i[3]];
          std::vector<VKTransitLineMarker * {__strong}>::push_back[abi:nn200100](v52, v69);
        }
      }
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(__p);
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    __p[0] = v52;
    std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](__p);
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

- (void)setDisableTransitLines:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v9 = 134218242;
    v10 = self;
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set disable transit lines: %s", &v9, 0x16u);
  }

  v7 = *(*(self + 50) + 41936);
  LOBYTE(v9) = 16;
  md::MapEngineSettings::set(v7, &v9, v3);
  v8 = *(self + 50);
  LOBYTE(v9) = 1;
  md::MapEngine::setNeedsTick(v8, &v9);
}

- (BOOL)transitLinesDisabled
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 16)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setPreviouslySelectedLabelMarker:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 name];
    v8 = 134218243;
    v9 = self;
    v10 = 2113;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] setPreviouslySelectedLabelMarker=%{private}@", &v8, 0x16u);
  }

  if (v4)
  {
    [(VKMapView *)self _labelSettings];
    v7 = *([v4 labelMarkerImpl] + 8);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = 0;
    operator new();
  }

  [(VKMapView *)self clearPreviouslySelectedLabelMarker];
}

- (void)deselectLabelMarker
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LODWORD(v5) = 134217984;
    *(&v5 + 4) = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKMapView:%p] deselectLabelMarker", &v5, 0xCu);
  }

  v4 = [(VKMapView *)self _labelSettings];
  v5 = 0uLL;
  md::LabelSettings_Markers::selectLabelMarker(v4 + 16, &v5);
}

- (void)selectLabelMarker:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 name];
    v10 = 134218243;
    v11 = self;
    v12 = 2113;
    v13 = v9;
    _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_INFO, "[VKMapView:%p] selectLabelMarker=%{private}@", &v10, 0x16u);
  }

  if (v6)
  {
    md::LabelSettings_Markers::selectLabelMarker((-[VKMapView _labelSettings](self, "_labelSettings") + 16), [v6 labelMarkerImpl]);
  }

  [(VKMapView *)self deselectLabelMarker];
}

- (id)rapMarkerAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VKMapView *)self currentCanvas];
  v6 = [v5 markerAtScreenPoint:0 enableExtendedFeatureMarkers:{x, y}];

  return v6;
}

- (id)labelMarkerForCustomFeatureAnnotation:(id)a3
{
  v4 = a3;
  v5 = [v4 feature];
  v6 = [v5 dataSource];
  v7 = [(VKMapView *)self labelMarkerForCustomFeatureAnnotation:v4 dataSource:v6];

  return v7;
}

- (id)labelMarkerForCustomFeatureAnnotation:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [v6 feature];
    v11 = [v10 dataSource];

    if (v11)
    {
      v12 = [v6 feature];
      v13 = [v12 dataSource];

      if (v13 != v8)
      {
        v9 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v14 = [v6 feature];
      [v14 setDataSource:v8];
    }

    md::HomeQueueScheduler::waitForSynchronization(*(*(self + 50) + 47360), "[VKMapView labelMarkerForCustomFeatureAnnotation:dataSource:]");
    md::LabelManager::labelMarkerForCustomFeatureAnnotation(&v16, *(*([(VKMapView *)self _labelSettings]+ 16) + 24), v6, v8);
    v9 = [VKLabelMarker markerWithLabelMarker:&v16];
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }
  }

LABEL_9:

  return v9;
}

- (id)labelMarkerForSelectionAtPoint:(CGPoint)a3 selectableLabelsOnly:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v7 = [(VKMapView *)self _labelSettings];
  v13.x = x;
  v13.y = y;
  md::LabelSettings_Markers::labelMarkerForSelectionAtPoint(&v10, v13, *(v7[2] + 24), v4);
  v8 = [VKLabelMarker markerWithLabelMarker:&v10];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  return v8;
}

- (void)setScreenLabelFeatures:(id)a3
{
  v6 = a3;
  v4 = [(VKMapView *)self _labelSettings];
  v5 = [MEMORY[0x1E695DEC8] arrayWithArray:v6];
  md::LabelSettings::setScreenLabelFeatures(v4, v5);
}

- (void)setLabelExclusionRegions:(id)a3
{
  v6 = a3;
  v4 = [(VKMapView *)self _labelSettings];
  v5 = [MEMORY[0x1E695DEC8] arrayWithArray:v6];
  md::LabelSettings::setLabelExclusionRegions(v4, v5);
}

- (void)removeCustomFeatureDataSource:(id)a3
{
  v4 = a3;
  md::LabelSettings::removeCustomFeatureDataSource([(VKMapView *)self _labelSettings], v4);
}

- (void)addCustomFeatureDataSource:(id)a3
{
  v4 = a3;
  md::LabelSettings::addCustomFeatureDataSource([(VKMapView *)self _labelSettings], v4);
}

- (void)setExternalTrafficFeatures:(id)a3 areRouteTrafficFeaturesActive:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (v6)
    {
      v8 = [v6 count];
    }

    else
    {
      v8 = 0;
    }

    v9 = "NO";
    *buf = 134218498;
    v11 = self;
    if (v4)
    {
      v9 = "YES";
    }

    v12 = 2048;
    v13 = v8;
    v14 = 2080;
    v15 = v9;
    _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set external traffic features - count:%zu, areRouteTrafficFeaturesActive:%s", buf, 0x20u);
  }

  md::LabelSettings::setExternalTrafficFeatures([(VKMapView *)self _labelSettings], v6, v4);
}

- (void)setHiddenTrafficIncidentFeatures:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (v4)
    {
      v6 = [v4 count];
    }

    else
    {
      v6 = 0;
    }

    v7 = 134218240;
    v8 = self;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set hidden traffic incident features - count:%zu", &v7, 0x16u);
  }

  md::LabelSettings::setHiddenTrafficIncidentFeatures([(VKMapView *)self _labelSettings], v4);
}

- (void)transitionToTracking:(BOOL)a3 mapMode:(int64_t)a4 startLocation:(id)a5 startCourse:(double)a6 pounceCompletionHandler:(id)a7
{
  var0 = a5.var0;
  var1 = a5.var1;
  v9 = a3;
  v11 = a7;
  if (fabs(var0) > 90.0 || var1 > 180.0 || var1 < -180.0)
  {
    v12 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2754000, v12, OS_LOG_TYPE_ERROR, "Transition to tracking passed invalid start location!", buf, 2u);
    }
  }

  [(VKMapView *)self stopTrackingAnnotation];
  v13 = [(VKMapView *)self currentCanvas];
  if (!*(self + 35))
  {
    v14 = [VKNavCameraController alloc];
    v15 = *(self + 50);
    v16 = v15[12];
    v39 = v15[11];
    v40 = v16;
    v31 = a4;
    v33 = v11;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *(self + 50);
    }

    v17 = v15[13];
    v18 = v15[5214];
    v20 = v15[25];
    v19 = v15[26];
    v21 = v15[5239];
    md::LabelExternalPointFeature::incident(v21);
    objc_claimAutoreleasedReturnValue();
    v22 = [(VKNavCameraController *)v14 initWithTaskContext:&v39 device:v17 mapDataAccess:v18 animationRunner:v20 runLoopController:v19 cameraDelegate:v21];
    v23 = *(self + 35);
    *(self + 35) = v22;

    v11 = v33;
    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v40);
    }

    [(VKMapView *)self sceneConfiguration];
    v24 = a4 = v32;
    [*(self + 35) setSceneConfiguration:v24];

    [*(self + 35) setNavContext:*(self + 42)];
    [*(self + 35) setScreenCanvas:v13];
  }

  [(VKMapView *)self _configureDynamicFrameRateForCarDisplayConfig:[(VKMapView *)self carDisplayConfig]];
  if (*(self + 368) == 1 && *(self + 384) == 1)
  {
    [*(self + 35) updateLocation:? andCourse:?];
  }

  else
  {
    v25.f64[0] = var0;
    v25.f64[1] = var1;
    *buf = vmulq_f64(v25, vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v38 = 0;
    v26 = [(VKMapView *)self puckAnimator:*(self + 29) getElevationWithCoordinate:buf];
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    v38 = v28;
    v29 = *(self + 29);
    v36 = a6 * 0.0174532925;
    [(VKMapView *)self puckAnimator:v29 updatedPosition:buf course:&v36 polylineCoordinate:*(self + 49)];
    v30 = [(VKMapView *)self navigationPuck];
    [v30 setPresentationCourse:a6];
  }

  [*(self + 29) start];
  [v13 setCameraController:*(self + 35)];
  [v13 transitionToTracking:v9 mapMode:a4 startLocation:*(self + 35) startCourse:v11 cameraController:var0 pounceCompletionHandler:{var1, a6}];
}

- (void)navigationCameraReturnToPuck
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKMapView:%p] Navigation return to puck", &v4, 0xCu);
  }

  [*(self + 35) returnToPuck];
}

- (void)pauseTracking
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKMapView:%p] Pause tracking", &v4, 0xCu);
  }

  [*(self + 35) stop];
}

- (void)stopTracking
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKMapView:%p] Stop tracking", &v7, 0xCu);
  }

  [*(self + 35) stop];
  v4 = *(self + 7);
  v5 = [(VKMapView *)self resolveMapCameraController];
  [v4 setCameraController:v5];

  v6 = *(self + 35);
  *(self + 35) = 0;
}

- (id)tileStatistics
{
  v1 = a1;
  v2 = [v1 stringByReplacingOccurrencesOfString:@"DaVinci" withString:@"Pine"];

  v3 = [v2 stringByReplacingOccurrencesOfString:@"DAVINCI" withString:@"PINE"];

  return v3;
}

- (void)tileStatistics
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  [*a1 setValue:v11 forKey:v7];
  v9 = *a1;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Units", v7];
  [v9 setValue:v8 forKey:v10];
}

- (void)resetTileStatistics
{
  md::HomeQueueScheduler::waitForSynchronization(*(*(self + 50) + 47360), "[VKMapView resetTileStatistics]");
  v3 = 0;
  v4 = *(*(*(*(self + 50) + 41704) + 24) + 56);
  do
  {
    v5 = gdc::ResourceManager::resourceFetcher(*(v4 + 32), *(v4 + 40), md::MapResourceTypeList[v3]);
    if (v5)
    {
      gdc::ResourceFetcher::resetResourceSamplers(v5);
    }

    ++v3;
  }

  while (v3 != 54);
  v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2B7C4502BD3C99C6uLL);
  if (v6)
  {
    v7 = v6[5];
    if (v7)
    {
      if (*(v7 + 160))
      {
        std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,gdc::DebugTreeNode>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,gdc::DebugTreeNode>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,gdc::DebugTreeNode>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,gdc::DebugTreeNode>>>::__deallocate_node(*(v7 + 152));
        *(v7 + 152) = 0;
        v8 = *(v7 + 144);
        if (v8)
        {
          for (i = 0; i != v8; ++i)
          {
            *(*(v7 + 136) + 8 * i) = 0;
          }
        }

        *(v7 + 160) = 0;
      }
    }
  }

  for (j = 0; j != 82; ++j)
  {
    v11 = *(*(self + 50) + 41704);
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    if (v12 != v13)
    {
      while (*v12 != md::MapDataTypeList[j])
      {
        v12 += 8;
        if (v12 == v13)
        {
          goto LABEL_20;
        }
      }

      if (v12 != v13)
      {
        v14 = *(v12 + 1);
        if (v14)
        {
          gdc::LayerDataSource::resetDecodeTimeSampler(v14);
        }
      }
    }

LABEL_20:
    ;
  }
}

- (void)disableTileStatistics
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2B7C4502BD3C99C6uLL);
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      *(v3 + 128) = 0;
    }
  }
}

- (void)enableTileStatistics
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2B7C4502BD3C99C6uLL);
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      *(v3 + 128) = 1;
    }
  }
}

- (id)testStatistics
{
  v2 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(*(v2 + 47360), "[VKMapView testStatistics]");
  v3 = *(v2 + 41952);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v37 = v3;
  gdc::Statistics::getAllHistograms(&v50, v3);
  v38 = v50;
  v39 = v51;
  if (v50 != v51)
  {
    v5 = v50;
    while (1)
    {
      gdc::Histogram::getHistogramData(&__p, v5[1]);
      v6 = v44;
      if (v45 != *&v44)
      {
        break;
      }

      if (v44 != 0.0)
      {
        goto LABEL_10;
      }

LABEL_11:
      v5 += 2;
      if (v5 == v39)
      {
        goto LABEL_12;
      }
    }

    v7 = 0;
    v8 = *&__p.__r_.__value_.__r.__words[2];
    data = __p.__r_.__value_.__l.__data_;
    v10 = (v45 - *&v44) >> 3;
    do
    {
      v11 = v7 + 1;
      v12 = *(*&v6 + 8 * v7);
      if (v12)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s [%3.0f, %3.0f]ms", *v5, *&data + v8 * v7, *&data + v8 * v11];
        v14 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
        [v4 setValue:v14 forKey:v13];

        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Units", v13];
        [v4 setValue:@"samples" forKey:v15];
      }

      v7 = v11;
    }

    while (v11 < v10);
LABEL_10:
    operator delete(*&v6);
    goto LABEL_11;
  }

LABEL_12:
  gdc::Statistics::getAllSamplers(&__p, v37);
  gdc::Statistics::dumpSamplerValues(v48, &__p);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  for (i = v49; i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, i[2], i[3]);
    }

    else
    {
      __p = *(i + 2);
    }

    v44 = *(i + 5);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_p];
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v44];
    [v4 setValue:v19 forKey:v18];

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Units", v18];
    [v4 setValue:@"ms" forKey:v20];

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  task_info_outCnt = 372;
  v21 = task_info(*MEMORY[0x1E69E9A60], 0x16u, &__p, &task_info_outCnt);
  v22 = 0.0;
  v23 = 0.0;
  if (!v21)
  {
    v23 = v46 * 0.000000953674316;
    v22 = v47 * 0.000000953674316;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
  [v4 setValue:v24 forKey:@"MemoryUsage:Footprint"];

  v25 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
  [v4 setValue:v25 forKey:@"MemoryUsage:Footprint_Peak"];

  v41 = 0;
  v40 = 0;
  malloc_get_all_zones();
  v26 = +[VKSharedResourcesManager sharedResources];
  v27 = *([v26 device] + 8);

  if (v27)
  {
    v28 = *(v27 + 80);
    if (v28)
    {
      for (j = *(v28 + 168); j; j = *j)
      {
        v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:j[4]];
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ResourceStats::%s::Count", j[2]];
        [v4 setValue:v30 forKey:v31];

        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ResourceStats::%s::CountUnits", j[2]];
        [v4 setObject:@"items" forKey:v32];

        v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(j[5] * 0.000000953674316)];
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ResourceStats::%s::Size", j[2]];
        [v4 setValue:v33 forKey:v34];

        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ResourceStats::%s::SizeUnits", j[2]];
        [v4 setObject:@"MB" forKey:v35];
      }
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::~__hash_table(v48);
  if (v38)
  {
    operator delete(v38);
  }

  return v4;
}

- (void)resetTestStatistics
{
  v2 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(*(v2 + 47360), "[VKMapView resetTestStatistics]");
  v3 = *(v2 + 41952);

  gdc::Statistics::reset(v3);
}

- (void)disableTestStatistics
{
  v2 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(*(v2 + 47360), "[VKMapView disableTestStatistics]");
  v3 = *(v2 + 41952);
  atomic_store(0, (v3 + 153));
  atomic_store(0, (v3 + 152));
}

- (void)enableTestStatistics
{
  v2 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(*(v2 + 47360), "[VKMapView enableTestStatistics]");
  v3 = *(v2 + 41952);
  atomic_store(1u, (v3 + 153));
  atomic_store(1u, (v3 + 152));
}

- (void)stopFlyoverAnimation
{
  v3 = *(*(self + 50) + 41936);
  v4 = 2;
  md::MapEngineSettings::set(v3, &v4, 1);
  [*(self + 33) stopFlyoverTourAnimation];
}

- (void)startFlyoverTourAnimation:(unint64_t)a3 animateToStart:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [*(self + 33) cameraDelegate];
  [v9 didEndAnimatingAccess];

  v10 = *(*(self + 50) + 41936);
  v19 = 2;
  md::MapEngineSettings::set(v10, &v19, 0);
  WeakRetained = objc_loadWeakRetained(self + 16);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(self + 16);
    [v13 mapLayerWillStartFlyoverTour:self];
  }

  v14 = *(self + 33);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__VKMapView_startFlyoverTourAnimation_animateToStart_completion___block_invoke;
  v18[3] = &unk_1E7B300A0;
  v18[4] = self;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__VKMapView_startFlyoverTourAnimation_animateToStart_completion___block_invoke_2;
  v16[3] = &unk_1E7B300C8;
  v16[4] = self;
  v15 = v8;
  v17 = v15;
  [v14 startFlyoverTourAnimation:a3 animateToStart:v5 labelChanged:v18 stateChange:v16];
}

- (void)moveToFlyoverTourStartPosition:(id)a3 duration:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = *(*(self + 50) + 41936);
  LOBYTE(v19) = 2;
  md::MapEngineSettings::set(v10, &v19, 0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1128;
  v23 = __Block_byref_object_dispose__1129;
  v24 = [*(self + 33) createFlyoverPreTourAnimation:v8 duration:a4];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __64__VKMapView_moveToFlyoverTourStartPosition_duration_completion___block_invoke;
  v16 = &unk_1E7B300F0;
  v18 = &v19;
  v11 = v9;
  v17 = v11;
  v12 = MEMORY[0x1B8C62DA0](&v13);
  [(VKMapView *)self startFlyoverAnimation:v20[5] animateToStart:0 completion:v12, v13, v14, v15, v16];

  _Block_object_dispose(&v19, 8);
}

uint64_t __64__VKMapView_moveToFlyoverTourStartPosition_duration_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (void)startFlyoverAnimation:(id)a3 animateToStart:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(self + 16);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(self + 16);
    [v12 mapLayerWillStartFlyoverTour:self];
  }

  v13 = *(self + 33);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__VKMapView_startFlyoverAnimation_animateToStart_completion___block_invoke;
  v17[3] = &unk_1E7B300A0;
  v17[4] = self;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__VKMapView_startFlyoverAnimation_animateToStart_completion___block_invoke_2;
  v15[3] = &unk_1E7B300C8;
  v15[4] = self;
  v14 = v9;
  v16 = v14;
  [v13 flyoverTourAnimation:v8 animateToStart:v6 labelChanged:v17 stateChange:v15];
}

- (void)_notifyDelegateFlyoverTourLabelChanged:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__VKMapView__notifyDelegateFlyoverTourLabelChanged___block_invoke;
  v6[3] = &unk_1E7B3F110;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(VKMapView *)self _postDelegateCallbackBlock:v6];
}

void __52__VKMapView__notifyDelegateFlyoverTourLabelChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 mapLayer:*(a1 + 32) flyoverTourLabelDidChange:*(a1 + 40)];
  }
}

- (void)_runFlyoverTourStateChange:(int)a3 completion:(id)a4
{
  v6 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__VKMapView__runFlyoverTourStateChange_completion___block_invoke;
  v12[3] = &unk_1E7B3B9F8;
  v12[4] = self;
  v7 = MEMORY[0x1B8C62DA0](v12);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__VKMapView__runFlyoverTourStateChange_completion___block_invoke_3;
  v11[3] = &unk_1E7B3B9F8;
  v11[4] = self;
  v8 = MEMORY[0x1B8C62DA0](v11);
  if ((a3 - 3) >= 2)
  {
    v9 = v7;
    if (a3 == 5)
    {
      goto LABEL_5;
    }

    if (a3 != 6)
    {
      v10 = 0;
      if (!v6)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }
  }

  v9 = v8;
LABEL_5:
  v10 = MEMORY[0x1B8C62DA0](v9);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  if ((a3 - 3) <= 3)
  {
    v6[2](v6, a3 == 5);
    [(VKMapView *)self _notifyDelegateFlyoverTourLabelChanged:0];
  }

LABEL_8:
  if (v10)
  {
    v10[2](v10);
  }
}

uint64_t __51__VKMapView__runFlyoverTourStateChange_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__VKMapView__runFlyoverTourStateChange_completion___block_invoke_2;
  v3[3] = &unk_1E7B3B9F8;
  v3[4] = v1;
  return [v1 _postDelegateCallbackBlock:v3];
}

uint64_t __51__VKMapView__runFlyoverTourStateChange_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__VKMapView__runFlyoverTourStateChange_completion___block_invoke_4;
  v3[3] = &unk_1E7B3B9F8;
  v3[4] = v1;
  return [v1 _postDelegateCallbackBlock:v3];
}

void __51__VKMapView__runFlyoverTourStateChange_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 mapLayer:*(a1 + 32) didStopFlyoverTourCompleted:0];
  }
}

void __51__VKMapView__runFlyoverTourStateChange_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 mapLayer:*(a1 + 32) didStopFlyoverTourCompleted:1];
  }
}

- (void)prepareFlyoverAnimation:(id)a3 completion:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = *(*(self + 50) + 41912);
  md::LabelExternalPointFeature::incident(v7);
  objc_claimAutoreleasedReturnValue();
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = *(*(self + 50) + 41912);
    md::LabelExternalPointFeature::incident(v9);
    [objc_claimAutoreleasedReturnValue() mapLayerWillChangeRegionAnimated:0];
  }

  [*(self + 33) prepareFlyoverAnimation:v13 completion:v6];
  v10 = *(*(self + 50) + 41912);
  md::LabelExternalPointFeature::incident(v10);
  objc_claimAutoreleasedReturnValue();
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = *(*(self + 50) + 41912);
    md::LabelExternalPointFeature::incident(v12);
    [objc_claimAutoreleasedReturnValue() mapLayerDidChangeRegionAnimated:0];
  }
}

- (void)setCameraFramingInsets:(VKEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v23 = *MEMORY[0x1E69E9840];
  v8 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 134219008;
    v14 = self;
    v15 = 2048;
    v16 = top;
    v17 = 2048;
    v18 = bottom;
    v19 = 2048;
    v20 = left;
    v21 = 2048;
    v22 = right;
    _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set camera framing edge insets: top: %f, bottom: %f, left: %f, right: %f", &v13, 0x34u);
  }

  *&v9 = top;
  *&v10 = left;
  *&v11 = bottom;
  *&v12 = right;
  [*(self + 35) setClientFramingInsets:{v9, v10, v11, v12}];
}

- (void)setLabelEdgeWidths:(VKEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v20 = *MEMORY[0x1E69E9840];
  v8 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 134219008;
    v11 = self;
    v12 = 2048;
    v13 = top;
    v14 = 2048;
    v15 = bottom;
    v16 = 2048;
    v17 = left;
    v18 = 2048;
    v19 = right;
    _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set label edge widths: top: %f, bottom: %f, left: %f, right: %f", &v10, 0x34u);
  }

  v9 = *(self + 50);
  v9[10438] = top;
  v9[10439] = left;
  v9[10440] = bottom;
  v9[10441] = right;
  LOBYTE(v10) = 1;
  md::MapEngine::setNeedsTick(v9, &v10);
}

- (void)setLabelEdgeInsets:(VKEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v20 = *MEMORY[0x1E69E9840];
  v8 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 134219008;
    v11 = self;
    v12 = 2048;
    v13 = top;
    v14 = 2048;
    v15 = bottom;
    v16 = 2048;
    v17 = left;
    v18 = 2048;
    v19 = right;
    _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set label edge insets: top: %f, bottom: %f, left: %f, right: %f", &v10, 0x34u);
  }

  v9 = *(self + 50);
  v9[10434] = top;
  v9[10435] = left;
  v9[10436] = bottom;
  v9[10437] = right;
  LOBYTE(v10) = 1;
  md::MapEngine::setNeedsTick(v9, &v10);
}

- (VKEdgeInsets)fullyOccludedEdgeInsets
{
  v2 = [(VKMapView *)self currentCanvas];
  [v2 fullyOccludedEdgeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setFullyOccludedEdgeInsets:(VKEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v24 = *MEMORY[0x1E69E9840];
  v8 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 134219008;
    v15 = self;
    v16 = 2048;
    v17 = top;
    v18 = 2048;
    v19 = bottom;
    v20 = 2048;
    v21 = left;
    v22 = 2048;
    v23 = right;
    _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set fully occluded edge insets: top: %f, bottom: %f, left: %f, right: %f", &v14, 0x34u);
  }

  v9 = [(VKMapView *)self currentCanvas];
  *&v10 = top;
  *&v11 = left;
  *&v12 = bottom;
  *&v13 = right;
  [v9 setFullyOccludedEdgeInsets:{v10, v11, v12, v13}];
}

- (void)setEdgeInsets:(VKEdgeInsets)a3 duration:(double)a4 timingFunction:(id)a5 completionHandler:(id)a6
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v72 = *MEMORY[0x1E69E9840];
  v61 = a3;
  v13 = a5;
  v14 = a6;
  v15 = [(VKMapView *)self currentCanvas];
  [v15 edgeInsets];
  v59 = __PAIR64__(v17, v16);
  v60 = __PAIR64__(v19, v18);

  v21 = *&v61.top != v59 || *&v61.bottom != v60;
  [*(self + 20) stop];
  if (v21)
  {
    v22 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 134219008;
      v63 = self;
      v64 = 2048;
      v65 = top;
      v66 = 2048;
      v67 = bottom;
      v68 = 2048;
      v69 = left;
      v70 = 2048;
      v71 = right;
      _os_log_impl(&dword_1B2754000, v22, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set edge insets: top: %f, bottom: %f, left: %f, right: %f", buf, 0x34u);
    }

    if (a4 > 0.0 && v13)
    {
      *(self + 168) = v61;
      v23 = [[VKTimedAnimation alloc] initWithDuration:a4];
      v24 = *(self + 20);
      *(self + 20) = v23;

      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __69__VKMapView_setEdgeInsets_duration_timingFunction_completionHandler___block_invoke;
      v57[3] = &unk_1E7B30690;
      v58 = v13;
      [*(self + 20) setTimingFunction:v57];
      v25 = [(VKMapView *)self currentCanvas];
      [v25 edgeInsets];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      objc_initWeak(buf, self);
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __69__VKMapView_setEdgeInsets_duration_timingFunction_completionHandler___block_invoke_2;
      v50[3] = &unk_1E7B30078;
      objc_copyWeak(&v51, buf);
      v52 = v27;
      v53 = v29;
      v54 = v31;
      v55 = v33;
      v56 = v61;
      [*(self + 20) setStepHandler:v50];
      v44 = MEMORY[0x1E69E9820];
      v45 = 3221225472;
      v46 = __69__VKMapView_setEdgeInsets_duration_timingFunction_completionHandler___block_invoke_3;
      v47 = &unk_1E7B3DE58;
      objc_copyWeak(&v49, buf);
      v48 = v14;
      [*(self + 20) setCompletionHandler:&v44];
      v34 = [(VKMapView *)self currentCanvas:v44];
      v35 = [v34 cameraController];
      [v35 setEdgeInsetsAnimating:1];

      [(VKMapView *)self runAnimation:*(self + 20)];
      objc_destroyWeak(&v49);
      objc_destroyWeak(&v51);
      objc_destroyWeak(buf);

      goto LABEL_21;
    }

    v36 = [(VKMapView *)self currentCanvas];
    *&v37 = top;
    *&v38 = left;
    *&v39 = bottom;
    *&v40 = right;
    [v36 setEdgeInsets:{v37, v38, v39, v40}];

    *(*(self + 50) + 41768) = v61;
    v41 = *(*(self + 50) + 41872);
    v42 = *(*(self + 50) + 41880);
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      v41[108] = top;
      v41[109] = left;
      v41[110] = bottom;
      v41[111] = right;
      std::__shared_weak_count::__release_shared[abi:nn200100](v42);
      if (!v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v41[108] = top;
      v41[109] = left;
      v41[110] = bottom;
      v41[111] = right;
      if (!v14)
      {
LABEL_20:
        v43 = *(self + 50);
        buf[0] = 1;
        md::MapEngine::setNeedsTick(v43, buf);
        goto LABEL_21;
      }
    }

    (*(v14 + 2))(v14, 1);
    goto LABEL_20;
  }

  if (v14)
  {
    (*(v14 + 2))(v14, 1);
  }

LABEL_21:
}

void __69__VKMapView_setEdgeInsets_duration_timingFunction_completionHandler___block_invoke_2(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    v14 = WeakRetained;
    v5 = [WeakRetained currentCanvas];
    [v5 setEdgeInsets:?];

    v4 = v14;
    v6 = v14[50];
    v7 = v6 + 40960;
    v8 = vmlaq_n_f32(vmulq_n_f32(v11, 1.0 - a2), v12, a2);
    *(v6 + 41768) = v8;
    v9 = *(v6 + 41872);
    v10 = *(v7 + 920);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v9[27] = v8;
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      v4 = v14;
    }

    else
    {
      v9[27] = v8;
    }
  }
}

void __69__VKMapView_setEdgeInsets_duration_timingFunction_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained[20];
    WeakRetained[20] = 0;

    v5 = [WeakRetained currentCanvas];
    v6 = [v5 cameraController];
    [v6 setEdgeInsetsAnimating:0];
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
  }
}

- (double)distanceFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 fromLayer:(id)a5 withPrecision:(int64_t)a6
{
  y = a4.y;
  x = a4.x;
  v9 = a3.y;
  v10 = a3.x;
  v12 = a5;
  [(VKMapView *)self convertPoint:v12 toCoordinateFromLayer:v10, v9];
  v14 = v13;
  v16 = v15;
  [(VKMapView *)self convertPoint:v12 toCoordinateFromLayer:x, y];
  v19 = 0.0;
  if (fabs(v14) <= 90.0 && v16 <= 180.0 && v16 >= -180.0 && fabs(v17) <= 90.0 && v18 <= 180.0 && v18 >= -180.0)
  {
    if (a6)
    {
      GEOCalculateDistanceHighPrecision();
    }

    else
    {
      GEOCalculateDistance();
    }

    v19 = v20;
  }

  return v19;
}

- (CGPoint)convertCoordinate:(id)a3 toCameraModelPointToLayer:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a4;
  v8 = [(VKMapView *)self currentCanvas];
  [v8 convertCoordinateToCameraModelPoint:{var0, var1}];
  v10 = v9;
  v12 = v11;

  [(VKMapView *)self convertPoint:v7 toLayer:v10, v12];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)convertCoordinate:(id)a3 toPointToLayer:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a4;
  v8 = [(VKMapView *)self currentCanvas];
  [v8 convertCoordinateToPoint:{var0, var1}];
  v10 = v9;
  v12 = v11;

  [(VKMapView *)self convertPoint:v7 toLayer:v10, v12];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)convertMapPoint:(id)a3 toPointToLayer:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a4;
  v8 = [(VKMapView *)self currentCanvas];
  [v8 convertMapPointToPoint:{var0, var1}];
  v10 = v9;
  v12 = v11;

  [(VKMapView *)self convertPoint:v7 toLayer:v10, v12];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)convertPoint:(CGPoint)a3 toMapPointFromLayer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (v7 != self)
  {
    [(VKMapView *)self convertPoint:v7 fromLayer:x, y];
    x = v8;
    y = v9;
  }

  v10 = [(VKMapView *)self currentCanvas];
  [v10 convertPointToMapPoint:{x, y}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)convertPoint:(CGPoint)a3 toCoordinateFromLayer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (v7 != self)
  {
    [(VKMapView *)self convertPoint:v7 fromLayer:x, y];
    x = v8;
    y = v9;
  }

  v10 = [(VKMapView *)self currentCanvas];
  [v10 convertPointToCoordinate:{x, y}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (double)durationToAnimateToMapRegion:(id)a3
{
  v4 = a3;
  v5 = [(VKMapView *)self currentCanvas];
  v6 = [v5 cameraController];

  objc_opt_class();
  v7 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v6 durationToAnimateToMapRegion:v4];
    v7 = v8;
  }

  return v7;
}

- (void)setMapRegion:(id)a3 pitch:(double)a4 yaw:(double)a5 duration:(double)a6 timingCurve:(id)a7 completion:(id)a8
{
  v30 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a7;
  v16 = a8;
  v17 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v20 = 134219010;
    v21 = self;
    v22 = 2112;
    v23 = v14;
    v24 = 2048;
    v25 = a4;
    v26 = 2048;
    v27 = a5;
    v28 = 2048;
    v29 = a6;
    _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set map region: %@, pitch: %f, yaw: %f, animation duration: %f", &v20, 0x34u);
  }

  v18 = [(VKMapView *)self currentCanvas];
  v19 = [v18 cameraController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v19 setMapRegion:v14 pitch:v15 yaw:v16 duration:a4 timingCurve:a5 completion:a6];
  }

  else if (v16)
  {
    v16[2](v16, 0);
  }
}

- (void)setMapRegion:(id)a3 pitch:(double)a4 yaw:(double)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 134218754;
    v13 = self;
    v14 = 2112;
    v15 = v8;
    v16 = 2048;
    v17 = a4;
    v18 = 2048;
    v19 = a5;
    _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set map region: %@, pitch: %f, yaw: %f", &v12, 0x2Au);
  }

  v10 = [(VKMapView *)self currentCanvas];
  v11 = [v10 cameraController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 setMapRegion:v8 pitch:0 yaw:0 duration:a4 timingCurve:a5 completion:0.0];
  }
}

- (void)setYaw:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v7 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = "NO";
    v11 = 134218498;
    v12 = self;
    if (v4)
    {
      v8 = "YES";
    }

    v13 = 2048;
    v14 = a3;
    v15 = 2080;
    v16 = v8;
    _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set yaw: %f, animated: %s", &v11, 0x20u);
  }

  v9 = [(VKMapView *)self currentCanvas];
  v10 = [v9 cameraController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setYaw:v4 animated:a3];
  }
}

- (void)renderInContext:(CGContext *)a3
{
  if (*(self + 545) == 1)
  {
    v6.receiver = self;
    v6.super_class = VKMapView;
    [(VKMapView *)&v6 renderInContext:a3];
  }

  else
  {
    v4 = *(self + 50);
    if (v4)
    {
      md::HomeQueueScheduler::waitForSynchronization(v4[5920], "[VKMapView renderInContext:]");
      v5 = CACurrentMediaTime();

      md::MapEngine::renderSceneInContextSync(v4, a3, v5);
    }
  }
}

- (void)setContentsScale:(double)a3
{
  v57 = *MEMORY[0x1E69E9840];
  if (vabdd_f64(*(self + 75), a3) > 2.22044605e-16)
  {
    v5 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v54 = self;
      v55 = 2048;
      v56 = a3;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set contents scale: %f", buf, 0x16u);
    }

    *(self + 75) = a3;
    v52.receiver = self;
    v52.super_class = VKMapView;
    [(VKMapView *)&v52 setContentsScale:a3];
    v6 = *(self + 50);
    if (v6)
    {
      md::HomeQueueScheduler::waitForSynchronization(*(v6 + 47360), "[VKMapView setContentsScale:]");
      v7 = v6 + 41656;
      v8 = a3;
      v9 = *(v6 + 41704);
      v10 = *(v9 + 4);
      v11 = *(v9 + 5);
      if (v10 != v11)
      {
        v12 = *(v9 + 4);
        while (*v12 != 1)
        {
          v12 += 16;
          if (v12 == v11)
          {
            goto LABEL_13;
          }
        }

        if (v12 != v11)
        {
          v13 = *(v12 + 8);
          if (v13)
          {
            atomic_store(LODWORD(v8), (v13 + 808));
            v10 = *(v9 + 4);
            v11 = *(v9 + 5);
          }
        }
      }

LABEL_13:
      if (v10 != v11)
      {
        v14 = v10;
        while (*v14 != 59)
        {
          v14 += 16;
          if (v14 == v11)
          {
            goto LABEL_21;
          }
        }

        if (v14 != v11)
        {
          v15 = *(v14 + 8);
          if (v15)
          {
            atomic_store(LODWORD(v8), (v15 + 808));
            v10 = *(v9 + 4);
            v11 = *(v9 + 5);
          }
        }
      }

LABEL_21:
      if (v10 != v11)
      {
        v16 = v10;
        while (*v16 != 6)
        {
          v16 += 16;
          if (v16 == v11)
          {
            goto LABEL_29;
          }
        }

        if (v16 != v11)
        {
          v17 = *(v16 + 8);
          if (v17)
          {
            atomic_store(LODWORD(v8), (v17 + 800));
            v10 = *(v9 + 4);
            v11 = *(v9 + 5);
          }
        }
      }

LABEL_29:
      if (v10 == v11)
      {
        goto LABEL_39;
      }

      v18 = v10;
      while (*v18 != 14)
      {
        v18 += 16;
        if (v18 == v11)
        {
          goto LABEL_39;
        }
      }

      if (v18 != v11)
      {
        v19 = *(v18 + 8);
        if (v19)
        {
          atomic_store(LODWORD(v8), (v19 + 776));
          v10 = *(v9 + 4);
          v11 = *(v9 + 5);
        }
      }

LABEL_39:
      while (v10 != v11)
      {
        if (*v10 == 11)
        {
          if (v10 != v11)
          {
            v23 = *(v10 + 8);
            if (v23)
            {
              atomic_store(LODWORD(v8), (v23 + 632));
            }
          }

          break;
        }

        v10 += 16;
      }

      v20 = *(v9 + 7);
      v21 = *(v9 + 8);
      if (v20 != v21)
      {
        v22 = *(v9 + 7);
        while (*v22 != 11)
        {
          v22 += 16;
          if (v22 == v21)
          {
            goto LABEL_51;
          }
        }

        if (v22 != v21)
        {
          v24 = *(v22 + 8);
          if (v24)
          {
            *(v24 + 24) = v8;
          }
        }
      }

LABEL_51:
      v25 = *(v9 + 4);
      v26 = *(v9 + 5);
      while (v25 != v26)
      {
        if (*v25 == 12)
        {
          if (v25 != v26)
          {
            v27 = *(v25 + 8);
            if (v27)
            {
              atomic_store(LODWORD(v8), (v27 + 632));
              v20 = *(v9 + 7);
              v21 = *(v9 + 8);
            }
          }

          break;
        }

        v25 += 16;
      }

      if (v20 != v21)
      {
        v28 = v20;
        while (*v28 != 12)
        {
          v28 += 16;
          if (v28 == v21)
          {
            goto LABEL_66;
          }
        }

        if (v28 != v21)
        {
          v29 = *(v28 + 8);
          if (v29)
          {
            *(v29 + 24) = v8;
          }
        }
      }

LABEL_66:
      v30 = *(v9 + 4);
      v31 = *(v9 + 5);
      while (v30 != v31)
      {
        if (*v30 == 71)
        {
          if (v30 != v31)
          {
            v32 = *(v30 + 8);
            if (v32)
            {
              atomic_store(LODWORD(v8), (v32 + 632));
              v20 = *(v9 + 7);
              v21 = *(v9 + 8);
            }
          }

          break;
        }

        v30 += 16;
      }

      if (v20 != v21)
      {
        v33 = v20;
        while (*v33 != 71)
        {
          v33 += 16;
          if (v33 == v21)
          {
            goto LABEL_81;
          }
        }

        if (v33 != v21)
        {
          v34 = *(v33 + 8);
          if (v34)
          {
            *(v34 + 24) = v8;
          }
        }
      }

LABEL_81:
      v35 = *(v9 + 4);
      v36 = *(v9 + 5);
      while (1)
      {
        if (v35 == v36)
        {
          goto LABEL_90;
        }

        if (*v35 == 72)
        {
          break;
        }

        v35 += 16;
      }

      if (v35 != v36)
      {
        v37 = *(v35 + 8);
        if (v37)
        {
          atomic_store(LODWORD(v8), (v37 + 632));
          v20 = *(v9 + 7);
          v21 = *(v9 + 8);
        }
      }

LABEL_90:
      while (v20 != v21)
      {
        if (*v20 == 72)
        {
          if (v20 != v21)
          {
            v41 = *(v20 + 8);
            if (v41)
            {
              *(v41 + 24) = v8;
            }
          }

          break;
        }

        v20 += 16;
      }

      v38 = *(v9 + 4);
      v39 = *(v9 + 5);
      if (v38 != v39)
      {
        v40 = *(v9 + 4);
        while (*v40 != 16)
        {
          v40 += 16;
          if (v40 == v39)
          {
            goto LABEL_102;
          }
        }

        if (v40 != v39)
        {
          v42 = *(v40 + 8);
          if (v42)
          {
            atomic_store(LODWORD(v8), (v42 + 864));
            v38 = *(v9 + 4);
            v39 = *(v9 + 5);
          }
        }
      }

LABEL_102:
      if (v38 == v39)
      {
        goto LABEL_112;
      }

      v43 = v38;
      while (*v43 != 17)
      {
        v43 += 16;
        if (v43 == v39)
        {
          goto LABEL_112;
        }
      }

      if (v43 != v39)
      {
        v44 = *(v43 + 8);
        if (v44)
        {
          atomic_store(LODWORD(v8), (v44 + 816));
          v38 = *(v9 + 4);
          v39 = *(v9 + 5);
        }
      }

LABEL_112:
      while (v38 != v39)
      {
        if (*v38 == 41)
        {
          if (v38 != v39)
          {
            v51 = *(v38 + 8);
            if (v51)
            {
              atomic_store(LODWORD(v8), (v51 + 808));
            }
          }

          break;
        }

        v38 += 16;
      }

      v45 = 0;
      v46 = *(*(v9 + 3) + 56);
      do
      {
        v47 = gdc::ResourceManager::resourceFetcher(*(v46 + 32), *(v46 + 40), md::MapResourceTypeList[v45]);
        if (v47)
        {
          (*(*v47 + 88))(v47, v8);
        }

        ++v45;
      }

      while (v45 != 54);
      md::World::clearAllData(v9);
      [*v7 setContentScale:v8];
      v48 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(v7 + 272) + 16), 0x2FED70A4459DFCA1uLL);
      if (v48)
      {
        v48 = *(v48 + 5);
      }

      v48[30] = v8;
      (*(*v48 + 16))(v48);
      v49 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(v7 + 272) + 16), 0x20A1ED17D78F322BuLL)[5];
      **(v49 + 152) = v8;
      for (i = *(v49 + 192); i; i = *i)
      {
        md::LabelManager::setContentScale(i[3], v8);
      }
    }
  }
}

- (id)activeLogics
{
  *a2 = &unk_1F29E6428;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

- (void)activeLogics
{

  JUMPOUT(0x1B8C62190);
}

void __38__VKMapView__configureDefaultSettings__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained setEnableGlobe:WeakRetained[568]];
  }
}

void __38__VKMapView__configureDefaultSettings__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained setEnableRoundedBuildings:WeakRetained[569]];
  }
}

void __38__VKMapView__configureDefaultSettings__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained setEnableColorizedBuildings:WeakRetained[570]];
  }
}

void __38__VKMapView__configureDefaultSettings__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained setEnableBuildingHeights:WeakRetained[571]];
  }
}

void __38__VKMapView__configureDefaultSettings__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained setEnableAdvancedWater:WeakRetained[573]];
  }
}

void __38__VKMapView__configureDefaultSettings__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained setEnableAdvancedLighting:WeakRetained[572]];
  }
}

void __38__VKMapView__configureDefaultSettings__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained setTerrainMode:WeakRetained[70]];
  }
}

void __38__VKMapView__configureDefaultSettings__block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained setModernMapEnabled:a4];
    v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(WeakRetained + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
    if (v5)
    {
      v5 = v5[5];
    }

    if ((*(WeakRetained + 52) & 1) == 0)
    {
      v7 = std::__throw_bad_optional_access[abi:nn200100]();

      _Unwind_Resume(v7);
    }

    md::StyleLogic::updateConfiguration(v5, *(WeakRetained + 12));
    v6 = *(WeakRetained + 50);
    md::HomeQueueScheduler::waitForSynchronization(v6[5920], "[VKMapView _configureDefaultSettings]_block_invoke_8");
    md::MapEngine::clearScene(v6);
  }
}

- (void)dealloc
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = +[VKSharedResourcesManager sharedResources];
  md::TileGroupNotificationManager::removeObserver([v3 tileGroupNotificationManager], self);
  v4 = *(self + 72);
  if (v4)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v6)
    {
      v7 = *v24;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v5);
          }

          MapsFeature_RemoveBlockListener();
        }

        v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v6);
    }
  }

  v9 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v28 = self;
    v29 = 2048;
    v30 = self;
    _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_INFO, "[VKMapView:%p] Destroying map view(%p)", buf, 0x16u);
  }

  v10 = *(self + 56);
  if (v10)
  {
    *(self + 56) = 0;
  }

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 removeObserver:self];

  [(VKMapView *)self _shutdownThermalMonitor];
  [(VKMapView *)self _closeLoaderConnection:1];
  v12 = *(self + 42);
  *(self + 42) = 0;

  v13 = *(self + 61);
  *(self + 61) = 0;

  v14 = *(self + 33);
  if (v14)
  {
    [v14 setMapEngine:0];
  }

  v15 = *(self + 37);
  if (v15)
  {
    *(self + 37) = 0;
  }

  [*(self + 7) setDelegate:0];
  [*(self + 7) setMapDelegate:0];
  v16 = *(self + 7);
  *(self + 7) = 0;

  [*(self + 29) setDelegate:0];
  [*(self + 29) stop];
  v17 = *(self + 35);
  *(self + 35) = 0;

  v18 = *(self + 20);
  if (v18)
  {
    [v18 stop];
    v19 = *(self + 20);
    *(self + 20) = 0;
  }

  v20 = *(self + 53);
  *(self + 53) = 0;

  objc_storeWeak(self + 77, 0);
  v21 = *(self + 50);
  *(self + 50) = 0;
  if (v21)
  {
    md::MapEngineDeleter::operator()(v21);
  }

  v22.receiver = self;
  v22.super_class = VKMapView;
  [(VKMapView *)&v22 dealloc];
}

- (VKMapView)initWithDescriptor:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v24 = a3;
  [v24 contentScale];
  checkForBogusContentScale(v4);
  v25.receiver = self;
  v25.super_class = VKMapView;
  v5 = [(VKMapView *)&v25 init];

  if (v5)
  {
    *(v5 + 545) = 0;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = *(v5 + 72);
    *(v5 + 72) = v6;

    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v8 = GEOGetVectorKitVKDefaultLog_log;
    v9 = os_signpost_id_make_with_pointer(v8, v5);

    v10 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v24 shouldRasterize];
      v12 = [v24 inBackground];
      [v24 contentScale];
      v14 = v13;
      v15 = gss::to_string([v24 carDisplayType]);
      buf[0] = 134219010;
      *&buf[1] = v5;
      v27 = 1024;
      v28 = v11;
      v29 = 1024;
      v30 = v12;
      v31[0] = 2048;
      *&v31[1] = v14;
      v31[5] = 2080;
      v32 = v15;
      _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_INFO, "[VKMapView:%p] Creating VKMapView, rasterize=%i inBkgd=%i contentScale=%f carDisplayType=%s", buf, 0x2Cu);
    }

    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v16 = GEOGetVectorKitVKDefaultLog_log;
    v17 = v16;
    v18 = v9 - 1;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v9, "LoadRequiredLayers", &unk_1B3514CAA, buf, 2u);
    }

    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v19 = GEOGetVectorKitVKDefaultLog_log;
    v20 = v19;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v9, "LoadAllLayers", &unk_1B3514CAA, buf, 2u);
    }

    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v21 = GEOGetVectorKitVKDefaultLog_log;
    v22 = v21;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v9, "LabelsCompletedFirstLayout", &unk_1B3514CAA, buf, 2u);
    }

    operator new();
  }

  return 0;
}

- (void)initWithDescriptor:
{
  objc_destroyWeak((a1 + 8));

  JUMPOUT(0x1B8C62190);
}

- (__CFString)initWithDescriptor:
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained detailedDescription];
  }

  else
  {
    v3 = @"Invalid VKMapView";
  }

  return v3;
}

- (VKMapView)initWithLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = VKMapView;
  result = [(VKMapView *)&v4 initWithLayer:a3];
  if (result)
  {
    *(result + 545) = 1;
  }

  return result;
}

- (id)initShouldRasterize:(BOOL)a3 inBackground:(BOOL)a4 contentScale:(double)a5 auditToken:(id)a6 mapViewPurpose:(int64_t)a7 allowsAntialiasing:(BOOL)a8
{
  v9 = [VKMapViewDescriptor descriptorWithShouldRasterize:a3 inBackground:a4 contentScale:a6 auditToken:a7 mapViewPurpose:a8 allowsAntialiasing:a5];
  v10 = [(VKMapView *)self initWithDescriptor:v9];

  return v10;
}

- (void)setCenterCoordinate:(id)a3 altitude:(double)a4 yaw:(double)a5 pitch:(double)a6 duration:(double)a7 timingCurve:(id)a8 completion:(id)a9
{
  var1 = a3.var1;
  var0 = a3.var0;
  v37 = *MEMORY[0x1E69E9840];
  v17 = a8;
  v18 = a9;
  v19 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v23 = 134219521;
    v24 = self;
    v25 = 2049;
    v26 = var0;
    v27 = 2049;
    v28 = var1;
    v29 = 2049;
    v30 = a4;
    v31 = 2048;
    v32 = a5;
    v33 = 2048;
    v34 = a6;
    v35 = 2048;
    v36 = a7;
    _os_log_impl(&dword_1B2754000, v19, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set center coodinate: (%{private}f, %{private}f), altitude: %{private}f, yaw: %f, pitch: %f, duration: %f", &v23, 0x48u);
  }

  v20 = [(VKMapView *)self currentCanvas];
  v21 = [v20 cameraController];

  if (objc_opt_respondsToSelector())
  {
    [v21 setCenterCoordinate:0 altitude:v17 yaw:v18 pitch:var0 duration:var1 animationStyle:a4 timingCurve:a5 completion:{a6, a7}];
    v22 = *(self + 50);
    LOBYTE(v23) = 16;
    md::MapEngine::setNeedsTick(v22, &v23);
  }

  else if (v18)
  {
    v18[2](v18, 0);
  }
}

- (id)consoleString:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKMapView *)self currentCanvas];
  v5 = [v4 consoleString:v3];

  return v5;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v43 = *MEMORY[0x1E69E9840];
  [(VKMapView *)self bounds];
  v45.origin.x = v8;
  v45.origin.y = v9;
  v45.size.width = v10;
  v45.size.height = v11;
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  if (!CGRectEqualToRect(v44, v45))
  {
    v12 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 134219008;
      v34 = self;
      v35 = 2048;
      v36 = width;
      v37 = 2048;
      v38 = height;
      v39 = 2048;
      v40 = x;
      v41 = 2048;
      v42 = y;
      _os_log_impl(&dword_1B2754000, v12, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set bounds, size(%f, %f), origin: (%f, %f)", buf, 0x34u);
    }

    v32.receiver = self;
    v32.super_class = VKMapView;
    [(VKMapView *)&v32 setBounds:x, y, width, height];
    v13 = *(self + 50);
    if (v13)
    {
      v14 = *(v13 + 41656);
      [(VKMapView *)self bounds];
      [v14 setBounds:?];
      v15 = *(self + 52);
      v16 = *(self + 12);
      if (v15 == 1 && (v16 - 3) < 2)
      {
        v17 = 0;
      }

      else
      {
        v18 = v15 ^ 1;
        if (v16 == 10)
        {
          v17 = v18;
        }

        else
        {
          v17 = 1;
        }
      }

      [v14 size];
      if (v19 <= 0.0)
      {
        goto LABEL_22;
      }

      [v14 size];
      if (v20 <= 0.0)
      {
        goto LABEL_22;
      }

      [v14 size];
      v22 = v21;
      [v14 size];
      v24 = v23;
      [*(self + 59) setAspectRatio:v22 / trunc(v23)];
      v25 = *(*(self + 50) + 41872);
      v26 = *(*(self + 50) + 41880);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        gdc::Camera::verticalFieldOfView(buf, v25->f64);
        std::__shared_weak_count::__release_shared[abi:nn200100](v26);
        v25 = *(*(self + 50) + 41872);
        v27 = *(*(self + 50) + 41880);
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          gdc::Camera::setViewSize(v25, v22, v24);
          std::__shared_weak_count::__release_shared[abi:nn200100](v27);
          goto LABEL_18;
        }
      }

      else
      {
        gdc::Camera::verticalFieldOfView(buf, *(*(self + 50) + 41872));
      }

      gdc::Camera::setViewSize(v25, v22, v24);
LABEL_18:
      if (v17)
      {
        v28 = *(*(self + 50) + 41872);
        v29 = *(*(self + 50) + 41880);
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          gdc::Camera::setVerticalFieldOfView(v28, buf);
          std::__shared_weak_count::__release_shared[abi:nn200100](v29);
        }

        else
        {
          gdc::Camera::setVerticalFieldOfView(v28, buf);
        }
      }

LABEL_22:
      v30 = *(self + 50);
      buf[0] = 1;
      md::MapEngine::setNeedsTick(v30, buf);
      v31 = [(VKMapView *)self currentCanvas];
      [v31 updateCameraForFrameResize];
    }
  }
}

- (void)_applyMapDisplayStyle:(id)a3 animated:(BOOL)a4 duration:(double)a5
{
  v25 = a4;
  v6 = *&a3.var0;
  v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
  if (v8)
  {
    v9 = v8[5];
  }

  else
  {
    v9 = 0;
  }

  if ((BYTE2(v6) - 1) > 8u)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_1B3415160[(BYTE2(v6) - 1)] & 0xFFFFFFFF00FFLL;
  }

  v26 = +[VKDebugSettings sharedSettings];
  [v26 transitionTimeMultiplier];
  v12 = v11;
  if (*(v9 + 1096) == 8)
  {
    v13 = 512;
LABEL_9:
    v27 = v13;
  }

  else
  {
    v14 = *(v9 + 184);
    v15 = *v14;
    v16 = v14[1];
    while (v15 != v16)
    {
      if (*v15 == 2)
      {
        if (v15 != v16)
        {
          v13 = (*(v15 + 8) != 0) << 8;
          goto LABEL_9;
        }

        break;
      }

      v15 += 16;
    }

    v27 = 0;
  }

  v17 = *(v9 + 164);
  v18 = *(v9 + 167);
  v19 = gss::ClientStyleState<gss::PropertyID>::targetMapDisplayStyle(*(v9 + 208));
  v20 = v6 & 0xFFFFFF0000FFLL | v10;
  if (v20 != v19 || (v27 >> 8) != BYTE1(v19) || BYTE2(v10) != BYTE2(v19) || BYTE3(v20) != BYTE3(v19) || BYTE4(v20) != BYTE4(v19) || BYTE5(v20) != BYTE5(v19) || v17 != BYTE6(v19) || HIBYTE(v19) != v18 || *(v9 + 272) && ((gss::ClientStyleState<gss::ScenePropertyID>::targetClientStyleAttributes(v28, *(v9 + 224)), gss::DisplayStyle::DisplayStyle(&v29, v28), geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v28), v20 != v29) || (v27 >> 8) != BYTE1(v29) || BYTE2(v10) != BYTE2(v29) || BYTE3(v20) != BYTE3(v29) || BYTE4(v20) != BYTE4(v29) || BYTE5(v20) != BYTE5(v29) || v17 != BYTE6(v29) || HIBYTE(v29) != v18))
  {
    *(v9 + 177) = BYTE2(v10);
    v21 = *(v9 + 1184);
    if (v21)
    {
      [v21 stop];
    }

    v22 = (v17 << 48) | (v18 << 56) | v27 | v20;
    gss::ClientStyleState<gss::PropertyID>::setTargetMapDisplayStyle(*(v9 + 208), v22);
    gss::ClientStyleState<gss::ScenePropertyID>::setTargetMapDisplayStyle(*(v9 + 224), v22);
    v23 = v12 * a5;
    *(v9 + 328) = v22;
    *(v9 + 336) = v25;
    if (!v25)
    {
      v23 = 0.0;
    }

    md::StyleLogic::queueStyleTransition(v9, v23);
  }

  v24 = **(*(self + 50) + 208);
  if (v24)
  {
    v28[0] = 16;
    md::MapEngine::setNeedsTick(v24, v28);
  }

  [(VKMapView *)self _updateBackgroundColor];
}

- (void)setMapDisplayStyle:(id)a3 animated:(BOOL)a4 duration:(double)a5
{
  v6 = a4;
  v7 = *&a3.var0;
  v46 = *MEMORY[0x1E69E9840];
  var1 = a3.var1;
  var3 = a3.var3;
  v11 = GEOGetVectorKitVKMapViewLog();
  v12 = 0x1EB7F5000;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    if (v7)
    {
      v13 = @"Night";
    }

    else
    {
      v13 = @"Day";
    }

    v14 = [(__CFString *)v13 UTF8String];
    v15 = @"None";
    if (var1 == 1)
    {
      v15 = @"Traffic";
    }

    if (var1 == 2)
    {
      v16 = @"Transit";
    }

    else
    {
      v16 = v15;
    }

    v17 = [(__CFString *)v16 UTF8String];
    v18 = &stru_1F2A61C40;
    if (BYTE2(v7) <= 9u)
    {
      v18 = off_1E7B30508[(v7 >> 16) & 0xF];
    }

    v19 = [(__CFString *)v18 UTF8String];
    v20 = @"Route Creation";
    if (var3 != 1)
    {
      v20 = &stru_1F2A61C40;
    }

    if (var3)
    {
      v21 = v20;
    }

    else
    {
      v21 = @"Default";
    }

    v22 = [(__CFString *)v21 UTF8String];
    if (BYTE4(v7) > 4u)
    {
      v23 = &stru_1F2A61C40;
    }

    else
    {
      v23 = off_1E7B30558[HIDWORD(v7) & 7];
    }

    v24 = [(__CFString *)v23 UTF8String];
    v25 = *(self + 590);
    v26 = 134220290;
    v27 = self;
    v28 = 2080;
    v29 = v14;
    v30 = 2080;
    v31 = v17;
    v32 = 2080;
    v33 = v19;
    v34 = 2080;
    v35 = v22;
    v12 = 0x1EB7F5000uLL;
    v36 = 2080;
    v37 = v24;
    v38 = 1024;
    v39 = (v7 >> 40) & 1;
    v40 = 1024;
    v41 = v6;
    v42 = 2048;
    v43 = a5;
    v44 = 1024;
    v45 = v25;
    _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_INFO, "[VKMapView:%p] SetDisplayStyle (timePeriod:%s overlayType:%s applicationState:%s applicationSubState:%s searchResultsType:%s mapHasLabels:%d) animated:%d duration:%f _displayOverrideEnabled:%d", &v26, 0x5Au);
  }

  *(self + 584) = v7;
  *(self + 585) = var1;
  *(self + 586) = BYTE2(v7);
  *(self + 587) = var3;
  *(self + 588) = BYTE4(v7);
  *(self + 589) = BYTE5(v7);
  if ((*(self + *(v12 + 2528)) & 1) == 0)
  {
    [(VKMapView *)self _applyMapDisplayStyle:v7 & 0xFFFFFFFFFFFFLL animated:v6 duration:a5];
  }
}

- (void)setMapType:(int)a3 animated:(BOOL)a4
{
  v5 = a4;
  v48 = *MEMORY[0x1E69E9840];
  v8 = self + 48;
  if (*(self + 52) != 1 || *v8 != a3)
  {
    v9 = [(VKMapView *)self mapType];
    md::HomeQueueScheduler::waitForSynchronization(*(*(self + 50) + 47360), "[VKMapView setMapType:animated:]");
    v10 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if ((a3 - 1) > 9)
      {
        v11 = @"VKMapTypeStandard";
      }

      else
      {
        v11 = off_1E7B304B8[a3 - 1];
      }

      v12 = "NO";
      *buf = 134218498;
      v43 = self;
      if (v5)
      {
        v12 = "YES";
      }

      v44 = 2112;
      v45 = v11;
      v46 = 2080;
      v47 = v12;
      _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set map type: %@, animated: %s", buf, 0x20u);
    }

    v13 = *(*(self + 50) + 41936);
    buf[0] = 20;
    md::MapEngineSettings::set(v13, buf, a3);
    v14 = [(VKMapView *)self currentCanvas];
    v15 = [v14 cameraController];
    v16 = [v15 regionChangeCount] == 0;

    if (!v16)
    {
      v17 = GEOGetVectorKitVKMapViewLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v41 = v5;
        if ((v8[4] & 1) == 0)
        {
          goto LABEL_51;
        }

        v18 = v14;
        v19 = *v8 - 1;
        if (v19 > 9)
        {
          v20 = @"VKMapTypeStandard";
        }

        else
        {
          v20 = off_1E7B304B8[v19];
        }

        if ((a3 - 1) > 9)
        {
          v21 = @"VKMapTypeStandard";
        }

        else
        {
          v21 = off_1E7B304B8[a3 - 1];
        }

        v22 = [v18 cameraController];
        v23 = [v22 regionChangeCount];
        *buf = 138412802;
        v43 = v20;
        v44 = 2112;
        v45 = v21;
        v46 = 2048;
        v47 = v23;
        _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_INFO, "OldMapType : %@, NewMapType: %@, regionCount number: %lu", buf, 0x20u);

        v14 = v18;
        v5 = v41;
      }
    }

    v17 = v14;
    v4 = *(*(self + 50) + 41912);
    md::LabelExternalPointFeature::incident(v4);
    [objc_claimAutoreleasedReturnValue() setIsChangingMapType:1];

    *v8 = a3;
    v8[4] = 1;
    v24 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
    if (v24)
    {
      v24 = v24[5];
    }

    md::StyleLogic::updateConfiguration(v24, a3);
    v25 = *(self + 50) + 40960;
    v26 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x20A1ED17D78F322BuLL);
    if (v26)
    {
      v27 = v26[5];
    }

    else
    {
      v27 = 0;
    }

    if (v8[4])
    {
      *(v27 + 220) = *v8;
      v28 = *(v25 + 952);
      md::LabelExternalPointFeature::incident(v28);
      [objc_claimAutoreleasedReturnValue() setIsChangingMapType:0];

      [(VKMapView *)self setNeedsLayout];
      md::MapEngine::updateRunLoopStatus(*(self + 50));
      v29 = [(VKMapView *)self mapDisplayStyle];
      v30 = *(*(self + 50) + 41936);
      v31 = *v30;
      v32 = v30[1];
      while (v31 != v32)
      {
        if (*v31 == 2)
        {
          if (v31 != v32)
          {
            v33 = (*(v31 + 8) != 0) << 8;
            goto LABEL_34;
          }

          break;
        }

        v31 += 16;
      }

      v33 = 0;
LABEL_34:
      v34 = (v9 < 8) & (0x9Eu >> v9) ^ ((a3 > 7) | (0x61u >> a3));
      if (!v5)
      {
        LOBYTE(v34) = 0;
      }

      if (a3 == 8)
      {
        v33 = 512;
      }

      [(VKMapView *)self setMapDisplayStyle:v29 & 0xFFFFFF00FFLL | (((a3 & 0xFFFFFFFD) != 1) << 40) | v33 animated:v34 & 1 duration:0.6];
      if (a3 == 10)
      {
        v35 = [(VKMapView *)self currentCanvas];
        [v35 setCameraController:*(self + 37)];
      }

      else
      {
        if (v9 == 10 && v17 == *(self + 7))
        {
          v36 = [(VKMapView *)self currentCanvas];
          v37 = [(VKMapView *)self resolveMapCameraController];
          [v36 setCameraController:v37];
        }

        if (a3 == 9)
        {
          v38 = [(VKMapView *)self currentCanvas];
          [v38 setCameraController:*(self + 40)];
          goto LABEL_48;
        }
      }

      if (v9 != 9 || v17 != *(self + 7))
      {
        goto LABEL_49;
      }

      v38 = [(VKMapView *)self currentCanvas];
      v39 = [(VKMapView *)self resolveMapCameraController];
      [v38 setCameraController:v39];

LABEL_48:
LABEL_49:
      [(VKMapView *)self _updateBackgroundColor];

      return;
    }

LABEL_51:
    v40 = std::__throw_bad_optional_access[abi:nn200100]();

    _Unwind_Resume(v40);
  }
}

- (BOOL)supportsNightMode
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
  if (v2)
  {
    v3 = v2[5];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 256);
  if (!v4)
  {
    md::StyleLogic::updateConfiguration(v3, *(v3 + 1096));
    v4 = *(v3 + 256);
  }

  v5 = *(v3 + 264);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    v8 = 0;
    if (!v5)
    {
      return v8 & 1;
    }

    goto LABEL_12;
  }

  v6 = *(v4 + 16);
  v7 = atomic_load((v6 + 2784));
  if ((v7 & 1) == 0)
  {
    std::__assoc_sub_state::wait(*(v6 + 2808));
  }

  v8 = *(v6 + 136);
  if (v5)
  {
LABEL_12:
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return v8 & 1;
}

- (BOOL)supportsMapType:(int)a3
{
  v3 = *&a3;
  [(VKMapView *)self contentsScale];
  if (v4 <= 1.0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  return [VKMapCanvas supportsMapType:v3 scale:v5];
}

- (void)setCanonicalSkyHeight:(double)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134218240;
    v7 = self;
    v8 = 2048;
    v9 = a3;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set sky height: %f", &v6, 0x16u);
  }

  [*(self + 7) setCanonicalSkyHeight:a3];
}

- (void)setDesiredMapMode:(int64_t)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if ((a3 + 1) > 5)
    {
      v6 = &stru_1F2A61C40;
    }

    else
    {
      v6 = *(&off_1E7B301C8 + a3 + 1);
    }

    *buf = 134218242;
    v25 = self;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set desired map mode: %@", buf, 0x16u);
  }

  v7 = *(*(self + 50) + 41928);
  if (!v7)
  {
    goto LABEL_28;
  }

  v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v7 + 16), 0x2FED70A4459DFCA1uLL);
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = v8[5];
  if (!v9)
  {
    goto LABEL_28;
  }

  if (a3 <= 2)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v10 = 5;
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v10 = 3;
    goto LABEL_19;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
LABEL_16:
      v11 = *(v9 + 168);
      v12 = *(v9 + 168) != 0;
      if (v11 == 6)
      {
        v13 = 0;
        goto LABEL_27;
      }

      v17 = v11 != 0;
      md::StyleLogic::setMapMode(v8[5], 0, 0.0);
      if (v17)
      {
        goto LABEL_28;
      }

      return;
    }

    v10 = 7;
LABEL_19:
    v14 = v10 == *(v9 + 168);
    md::StyleLogic::setMapMode(v8[5], v10, 0.0);
    if (v14)
    {
      return;
    }

LABEL_28:
    [(VKMapView *)self setLoadMuninMetadata:a3 == 3];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __31__VKMapView_setDesiredMapMode___block_invoke;
    v23[3] = &unk_1E7B30000;
    v23[4] = self;
    v23[5] = a3;
    [(VKMapView *)self _postDelegateCallbackBlock:v23];
    v22 = *(self + 50);
    buf[0] = 1;
    md::MapEngine::setNeedsTick(v22, buf);
    return;
  }

  v15 = *(v9 + 168);
  v12 = v15 != 6;
  if (!*(v9 + 168))
  {
    v13 = 6;
LABEL_27:
    v18 = +[VKDebugSettings sharedSettings];
    [v18 transitionTimeMultiplier];
    v20 = v19;

    v21 = v20 * 0.6;
    md::StyleLogic::setMapMode(v9, v13, v21);
    if (!v12)
    {
      return;
    }

    goto LABEL_28;
  }

  v16 = v15 != 6;
  md::StyleLogic::setMapMode(v8[5], 6, 0.0);
  if (v16)
  {
    goto LABEL_28;
  }
}

void __31__VKMapView_setDesiredMapMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 mapLayer:*(a1 + 32) willTransitionTo:*(a1 + 40)];
  }
}

- (void)location:(id)a3 isInHikingContextualRegion:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__VKMapView_location_isInHikingContextualRegion___block_invoke;
  v4[3] = &unk_1E7B30028;
  v4[4] = self;
  v6 = a4;
  v5 = a3;
  [(VKMapView *)self _postDelegateCallbackBlock:v4];
}

void __49__VKMapView_location_isInHikingContextualRegion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = "NO";
      if (*(a1 + 56))
      {
        v6 = "YES";
      }

      v8 = 134218242;
      v9 = v5;
      v10 = 2080;
      v11 = v6;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "[VKMapView:%p] location:isInHikingContextualRegion: %s", &v8, 0x16u);
    }

    v7 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v7 mapLayer:*(a1 + 32) location:*(a1 + 56) isInHikingContextualRegion:{*(a1 + 40), *(a1 + 48)}];
  }
}

- (void)locationInHikingToolTipRegion:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__VKMapView_locationInHikingToolTipRegion___block_invoke;
  v3[3] = &unk_1E7B30000;
  v3[4] = self;
  v3[5] = a3;
  [(VKMapView *)self _postDelegateCallbackBlock:v3];
}

void __43__VKMapView_locationInHikingToolTipRegion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 134218240;
      v9 = v5;
      v10 = 2048;
      v11 = v6;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "[VKMapView:%p] locationInHikingToolTipRegion hikingToolTipRegionId:%llu", &v8, 0x16u);
    }

    v7 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v7 mapLayer:*(a1 + 32) locationInHikingToolTipRegion:*(a1 + 40)];
  }
}

- (void)nearestVenueDidChange:(const void *)a3 building:(const void *)a4
{
  v9 = [(VKMapView *)self mapDelegate];
  if (a3)
  {
    v7 = [[VKVenueFeatureMarker alloc] initWithVenue:a3 localize:[(VKMapView *)self localizeLabels]];
    if (a4)
    {
LABEL_3:
      v8 = [[VKVenueBuildingFeatureMarker alloc] initWithVenueBuilding:a4 localize:[(VKMapView *)self localizeLabels]];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  [v9 mapLayer:self venueWithFocusDidChange:v7 building:v8];
  if (a4)
  {
  }

  if (a3)
  {
  }
}

- (void)_setFloorSwitcherZoomPadding:(float)a3
{
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xEC9B77B4222D22FFLL);
  if (v5)
  {
    v6 = v5[5];
    if (v6)
    {
      *(v6 + 692) = a3;
    }
  }

  [(VKMapView *)self setNeedsLayout];
}

- (id)clearVenueBuildingFloorSelections
{
  v3 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xEC9B77B4222D22FFLL);
  if (v3 && (v4 = v3[5]) != 0 && *(v4 + 56) == 1)
  {
    v5 = *(v4 + 272);
    if (v5)
    {
      if (!(v5 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v5);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    for (i = *(v4 + 264); i; i = *i)
    {
      v9 = (v4 + 224);
      while (1)
      {
        v9 = *v9;
        if (!v9)
        {
          break;
        }

        v10 = v9[3];
        v12 = *(v10 + 16);
        v11 = *(v10 + 24);
        if (v12 != v11)
        {
          while (*(v12 + 24) != i[2])
          {
            v12 += 120;
            if (v12 == v11)
            {
              v12 = v11;
              break;
            }
          }
        }

        if (v12 != v11)
        {
          if (v12)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(1uLL);
          }

          break;
        }
      }
    }

    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((v4 + 248));
    v13 = *(v4 + 784);
    if (v13)
    {
      (*(*v13 + 48))(v13);
    }

    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    [(VKMapView *)self setNeedsLayout];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)setDisplayedFloorOrdinal:(signed __int16)a3 forVenueBuilding:(id)a4
{
  v20 = a4;
  v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xEC9B77B4222D22FFLL);
  if (v6)
  {
    v7 = v6[5];
    if (v7)
    {
      if (v20 && (v7[7].i8[0] & 1) != 0)
      {
        v8 = [v20 venueBuildingFeatureMarker];
        v9 = *v8;
        v10 = *(*v8 + 56);
        v11 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(&v7[31], v10);
        v12 = (v11 + 3);
        if (!v11)
        {
          v12 = (v9 + 88);
        }

        if (*v12 != a3)
        {
          v13 = v7[32];
          if (!*&v13)
          {
            goto LABEL_25;
          }

          v14 = vcnt_s8(v13);
          v14.i16[0] = vaddlv_u8(v14);
          if (v14.u32[0] > 1uLL)
          {
            v15 = v10;
            if (v10 >= *&v13)
            {
              v15 = v10 % *&v13;
            }
          }

          else
          {
            v15 = (*&v13 - 1) & v10;
          }

          v16 = *(*&v7[31] + 8 * v15);
          if (!v16 || (v17 = *v16) == 0)
          {
LABEL_25:
            operator new();
          }

          while (1)
          {
            v18 = v17[1];
            if (v18 == v10)
            {
              if (v17[2] == v10)
              {
                *(v17 + 12) = a3;
                v19 = v7[98];
                if (v19)
                {
                  (*(**&v19 + 48))(v19);
                }

                break;
              }
            }

            else
            {
              if (v14.u32[0] > 1uLL)
              {
                if (v18 >= *&v13)
                {
                  v18 %= *&v13;
                }
              }

              else
              {
                v18 &= *&v13 - 1;
              }

              if (v18 != v15)
              {
                goto LABEL_25;
              }
            }

            v17 = *v17;
            if (!v17)
            {
              goto LABEL_25;
            }
          }
        }
      }
    }
  }

  [(VKMapView *)self setNeedsLayout];
}

- (signed)displayedFloorOrdinalForVenueBuilding:(id)a3
{
  v4 = a3;
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xEC9B77B4222D22FFLL);
  if (v5 && (v6 = v5[5]) != 0)
  {
    v7 = 0x8000;
    if (v4 && (*(v6 + 56) & 1) != 0)
    {
      v8 = [v4 venueBuildingFeatureMarker];
      v9 = *v8;
      v10 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v6 + 248), *(*v8 + 56));
      v11 = (v10 + 3);
      if (!v10)
      {
        v11 = (v9 + 88);
      }

      v7 = *v11;
    }
  }

  else
  {
    v7 = 0x8000;
  }

  return v7;
}

- (signed)defaultFloorOrdinalForVenueBuilding:(id)a3
{
  v4 = a3;
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xEC9B77B4222D22FFLL);
  v6 = 0x8000;
  if (v5 && v4 && v5[5])
  {
    v6 = *(*[v4 venueBuildingFeatureMarker] + 88);
  }

  return v6;
}

- (BOOL)displayedFloorIsDefaultForVenueBuilding:(id)a3
{
  v4 = a3;
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xEC9B77B4222D22FFLL);
  if (v5 && (v6 = v5[5]) != 0)
  {
    v7 = 0;
    if (v4 && (*(v6 + 56) & 1) != 0)
    {
      v7 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v6 + 248), *(*[v4 venueBuildingFeatureMarker] + 56)) == 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)venueWithID:(unint64_t)a3
{
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xEC9B77B4222D22FFLL);
  if (v5)
  {
    v6 = *&v5->_localize;
    if (!v6)
    {
      goto LABEL_19;
    }

    v7 = *(v6 + 216);
    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = a3;
      if (v7 <= a3)
      {
        v9 = a3 % v7;
      }
    }

    else
    {
      v9 = (v7 - 1) & a3;
    }

    v10 = *(*(v6 + 208) + 8 * v9);
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = *v10;
    if (!v11)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v12 = v11[1];
      if (v12 == a3)
      {
        if (v11[2] == a3)
        {
          v14 = v11[3];
          if (v14)
          {
            v5 = [[VKVenueFeatureMarker alloc] initWithVenue:v14 localize:[(VKMapView *)self localizeLabels]];
            break;
          }

LABEL_19:
          v5 = 0;
          break;
        }
      }

      else
      {
        if (v8.u32[0] > 1uLL)
        {
          if (v12 >= v7)
          {
            v12 %= v7;
          }
        }

        else
        {
          v12 &= v7 - 1;
        }

        if (v12 != v9)
        {
          goto LABEL_19;
        }
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_19;
      }
    }
  }

  return v5;
}

- (id)venueAtLocation:(id)a3 withMarginForError:(BOOL)a4 includeNonRevealedVenues:(BOOL)a5
{
  v5 = a5;
  var1 = a3.var1;
  var0 = a3.var0;
  v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xEC9B77B4222D22FFLL);
  if (v9)
  {
    v10 = *&v9->_localize;
    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = tan(var0 * 0.00872664626 + 0.785398163);
    v12 = log(v11);
    v13.f64[0] = var1;
    v13.f64[1] = v12;
    v14 = xmmword_1B33B0700;
    __asm { FMOV            V1.2D, #0.5 }

    v24 = vmlaq_f64(_Q1, xmmword_1B33B0700, v13);
    if (!a4)
    {
      v21 = (v10 + 224);
      while (1)
      {
        v21 = *v21;
        if (!v21)
        {
          goto LABEL_7;
        }

        v20 = v21[3];
        if (geo::containsPoint<double>(*(v20 + 40), *(v20 + 48), v24.f64))
        {
          goto LABEL_11;
        }
      }
    }

    v14.n128_u32[0] = -1.0;
    if (v5)
    {
      v14.n128_f32[0] = 0.0;
    }

    v20 = md::VenueLogic::venueInProximityToWorldPoint(v10, &v24, v14);
    if (!v20)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v9 = [[VKVenueFeatureMarker alloc] initWithVenue:v20 localize:[(VKMapView *)self localizeLabels]];
  }

LABEL_12:

  return v9;
}

- (id)venueBuildingWithFocus
{
  v3 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xEC9B77B4222D22FFLL);
  if (v3)
  {
    v4 = *&v3->_localize;
    if (v4 && *(v4 + 56) == 1 && (v5 = *(v4 + 576)) != 0)
    {
      v3 = [[VKVenueBuildingFeatureMarker alloc] initWithVenueBuilding:v5 localize:[(VKMapView *)self localizeLabels]];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)isDimmingBaseMap
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xEC9B77B4222D22FFLL);
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      LOBYTE(v2) = *(v3 + 488) > 0.00000011921;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2;
}

- (void)setDimmingBaseMap:(BOOL)a3 animated:(BOOL)a4 duration:(double)a5
{
  v6 = a4;
  v7 = a3;
  v34 = *MEMORY[0x1E69E9840];
  v9 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = "NO";
    *buf = 134218754;
    *&buf[4] = self;
    if (v7)
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    *&buf[14] = v11;
    *&buf[12] = 2080;
    if (v6)
    {
      v10 = "YES";
    }

    *&buf[22] = 2080;
    v31 = v10;
    *v32 = 2048;
    *&v32[2] = a5;
    _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set dimming base map: %s, animated: %s, duration: %f", buf, 0x2Au);
  }

  v12 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
  if (v12)
  {
    v13 = v12[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v13 + 256);
  if (!v14)
  {
    md::StyleLogic::updateConfiguration(v13, *(v13 + 1096));
    v14 = *(v13 + 256);
  }

  v15 = *(v13 + 264);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = 0;
  if (v7)
  {
    gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(buf, v14[2]);
    v16 = *(*buf + 316);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
    }
  }

  v17 = v14[65];
  v18 = v14[66];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(v17, 0x10049u, v7);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v19 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xEC9B77B4222D22FFLL);
  if (v19)
  {
    v20 = v19[5];
    if (v20)
    {
      if (v6)
      {
        v21 = *(v20 + 488);
        [*(v20 + 648) stop];
        v22 = [[VKTimedAnimation alloc] initWithDuration:a5];
        geo::_retain_ptr<LabelNavRouteContextObserverProxy * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(v20 + 640, v22);

        v23 = *(v20 + 648);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZN2md10VenueLogic23setBaseMapDimmingFactorEfbd_block_invoke;
        v31 = &__block_descriptor_48_e8_v12__0f8l;
        *v32 = v20;
        *&v32[8] = v21;
        v33 = v16;
        [v23 setStepHandler:buf];
        v24 = *(v20 + 648);
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = ___ZN2md10VenueLogic23setBaseMapDimmingFactorEfbd_block_invoke_2;
        v28[3] = &__block_descriptor_44_e8_v12__0B8l;
        v28[4] = v20;
        v29 = v16;
        [v24 setCompletionHandler:v28];
        if (*(v20 + 816))
        {
          std::function<void ()(VKAnimation *)>::operator()(v20 + 792, *(v20 + 648));
        }
      }

      else
      {
        *(v20 + 488) = v16;
        v25 = *(v20 + 848);
        if (v25)
        {
          (*(*v25 + 48))(v25);
        }
      }

      v26 = *(v20 + 880);
      if (v26)
      {
        std::function<void ()(BOOL)>::operator()(v26, v7);
      }

      if (!v6)
      {
        v27 = *(self + 50);
        buf[0] = 1;
        md::MapEngine::setNeedsTick(v27, buf);
      }
    }
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }
}

- (float)worldSpaceWidthOfView
{
  v2 = (self + 464);
  v3 = [*(self + 59) footprint];
  [v3 minDepth];
  [v2[1] widthOfViewAtDepth:?];
  v5 = v4;

  return v5;
}

- (void)tileGroupDidChange
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKMapView:%p] tileGroupDidChange", &v6, 0xCu);
  }

  v4 = +[VKSharedResourcesManager sharedResources];
  [v4 prune:0];

  v5 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(v5[5920], "[VKMapView tileGroupDidChange]");
  md::MapEngineSyncAccessor::configurationDidChange(v5);
  [(VKMapView *)self _updateBuildingCompressionSetting];
  [(VKMapView *)self _reconfigurePermissions];
  [(VKMapView *)self _resetElevationRasterMinZoom];
}

- (void)tileGroupWillChange
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKMapView:%p] tileGroupWillChange", &v4, 0xCu);
  }
}

- (void)_reconfigurePermissions
{
  [(VKMapView *)self setTerrainMode:*(self + 70)];
  [(VKMapView *)self setEnableGlobe:*(self + 568)];
  [(VKMapView *)self setEnableRoundedBuildings:*(self + 569)];
  [(VKMapView *)self setEnableColorizedBuildings:*(self + 570)];
  [(VKMapView *)self setEnableBuildingHeights:*(self + 571)];
  [(VKMapView *)self setEnableAdvancedWater:*(self + 573)];
  v3 = *(self + 572);

  [(VKMapView *)self setEnableAdvancedLighting:v3];
}

- (void)requestHikingContextualRegionDoesIntersectForLocation:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xC74495586E0C32F6);
  if (v4)
  {
    v5 = v4[5];
    if (v5)
    {
      if (*(v5 + 56) == 1)
      {
        v6 = tan(var0 * 0.00872664626 + 0.785398163);
        v7 = log(v6);
        v8.f64[0] = var1;
        v8.f64[1] = v7;
        __asm { FMOV            V1.2D, #0.5 }

        v14 = *(v5 + 280);
        *(v5 + 264) = vmlaq_f64(_Q1, xmmword_1B33B0700, v8);
        if ((v14 & 1) == 0)
        {
          *(v5 + 280) = 1;
        }
      }
    }
  }
}

- (void)requestHikingToolTipRegionIDForLocation:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xC74495586E0C32F6);
  if (v4)
  {
    v5 = v4[5];
    if (v5)
    {
      if (*(v5 + 56) == 1)
      {
        v6 = tan(var0 * 0.00872664626 + 0.785398163);
        v7 = log(v6);
        v8.f64[0] = var1;
        v8.f64[1] = v7;
        __asm { FMOV            V1.2D, #0.5 }

        v14 = *(v5 + 224);
        *(v5 + 208) = vmlaq_f64(_Q1, xmmword_1B33B0700, v8);
        if ((v14 & 1) == 0)
        {
          *(v5 + 224) = 1;
        }
      }
    }
  }
}

- (BOOL)isCameraInHikingBufferRegion
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xC74495586E0C32F6);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2[5];
  if (v3)
  {
    if (*(v3 + 56) == 1)
    {
      LOBYTE(v3) = *(v3 + 200);
      return v3 & 1;
    }

LABEL_5:
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

- (BOOL)isCameraInHikingBoundary
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xC74495586E0C32F6);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2[5];
  if (v3)
  {
    if (*(v3 + 56) == 1)
    {
      LOBYTE(v3) = *(v3 + 184);
      return v3 & 1;
    }

LABEL_5:
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

- (void)setEnableAdvancedWater:(BOOL)a3
{
  v3 = a3;
  *(self + 573) = a3;
  v4 = [(VKMapView *)self _advancedWaterAllowed];
  v5 = +[VKDebugSettings sharedSettings];
  [v5 setDaVinciWaterEnabled:v4 & v3];
}

- (BOOL)enableAdvancedWater
{
  v2 = +[VKDebugSettings sharedSettings];
  v3 = [v2 daVinciWaterEnabled];

  return v3;
}

- (void)setEnableAdvancedLighting:(BOOL)a3
{
  v3 = a3;
  *(self + 572) = a3;
  if ([(VKMapView *)self _daVinciDataAvailable])
  {
    v5 = [(VKMapView *)self _advancedLightingAllowed]& v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = +[VKDebugSettings sharedSettings];
  [v6 setDaVinciAdvancedLightingEnabled:v5];
}

- (BOOL)enableAdvancedLighting
{
  v2 = +[VKDebugSettings sharedSettings];
  v3 = [v2 daVinciAdvancedLightingEnabled];

  return v3;
}

- (void)setEnableBuildingHeights:(BOOL)a3
{
  v3 = a3;
  *(self + 571) = a3;
  v5 = [(VKMapView *)self _buildingHeightsAllowed];
  v6 = +[VKDebugSettings sharedSettings];
  [v6 setDaVinciBuildingHeights:v5 & v3];

  v7 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(v7[5920], "[VKMapView setEnableBuildingHeights:]");

  md::MapEngine::clearScene(v7);
}

- (BOOL)enableBuildingHeights
{
  v2 = +[VKDebugSettings sharedSettings];
  v3 = [v2 daVinciBuildingHeights];

  return v3;
}

- (void)setEnableColorizedBuildings:(BOOL)a3
{
  v3 = a3;
  *(self + 570) = a3;
  v4 = [(VKMapView *)self _colorizedBuildingsAllowed];
  v5 = +[VKDebugSettings sharedSettings];
  [v5 setDaVinciColorBuildings:v4 & v3];
}

- (BOOL)enableColorizedBuildings
{
  v2 = +[VKDebugSettings sharedSettings];
  v3 = [v2 daVinciColorBuildings];

  return v3;
}

- (void)setEnableRoundedBuildings:(BOOL)a3
{
  v3 = a3;
  *(self + 569) = a3;
  v5 = [(VKMapView *)self _roundedBuildingsAllowed];
  v6 = +[VKDebugSettings sharedSettings];
  [v6 setDaVinciRoundBuildings:v5 & v3];

  v7 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(v7[5920], "[VKMapView setEnableRoundedBuildings:]");

  md::MapEngine::clearScene(v7);
}

- (BOOL)enableRoundedBuildings
{
  v2 = +[VKDebugSettings sharedSettings];
  v3 = [v2 daVinciRoundBuildings];

  return v3;
}

- (void)setEnableGlobe:(BOOL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3 & ~*(*(self + 65) + 2);
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v4)
    {
      v6 = "YES";
    }

    v14 = 134218242;
    v15 = self;
    v16 = 2080;
    v17 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] setEnableGlobe:%s", &v14, 0x16u);
  }

  *(self + 568) = v4;
  if ([(VKMapView *)self _daVinciDataAvailable])
  {
    v7 = +[VKMapView _globeIsEnabled]& v4;
  }

  else
  {
    v7 = 0;
  }

  [*(self + 7) setForceRasterizationForGlobe:v7];
  v8 = *(*(self + 50) + 41936);
  LOBYTE(v14) = 22;
  md::MapEngineSettings::set(v8, &v14, v7);
  v9 = *(*(self + 50) + 41704);
  if (v9)
  {
    md::World::setEnableGlobe(*(v9 + 32), *(v9 + 40), v7);
  }

  v10 = [*(self + 7) cameraController];
  v11 = v10 == *(self + 35);

  if (!v11)
  {
    v12 = *(self + 7);
    if (*(self + 52) == 1 && *(self + 12) == 10)
    {
      [*(self + 7) setCameraController:*(self + 37)];
    }

    else
    {
      v13 = [(VKMapView *)self resolveMapCameraController];
      [v12 setCameraController:v13];
    }
  }
}

- (void)setModernMapEnabled:(BOOL)a3
{
  v3 = *(*(self + 50) + 41936);
  v4 = 25;
  md::MapEngineSettings::set(v3, &v4, a3);
}

- (BOOL)_realTimeEVChargerIsEnabled
{
  {
    md::MapEngine::isEnabledRealTimeEVCharger(void)::$_0::operator() const(void)::cached_result = MapsFeature_IsEnabled_RealTimeEVCharger();
  }

  if (md::MapEngine::isEnabledRealTimeEVCharger(void)::$_0::operator() const(void)::cached_result)
  {
    v2 = 1;
  }

  else
  {
    {
      md::MapEngine::isEnabledRealTimeEVCharger(void)::$_1::operator() const(void)::cached_result = GEOConfigGetBOOL();
    }

    v2 = md::MapEngine::isEnabledRealTimeEVCharger(void)::$_1::operator() const(void)::cached_result;
  }

  return v2 & 1;
}

- (void)setCameraCollisionMode:(int64_t)a3
{
  {
    [VKMapView setCameraCollisionMode:]::$_10::operator() const(void)::cached_result = MapsFeature_IsEnabled_Maps68();
  }

  if ([VKMapView setCameraCollisionMode:]::$_10::operator() const(void)::cached_result == 1)
  {
    {
      [VKMapView setCameraCollisionMode:]::$_11::operator() const(void)::cached_result = GEOConfigGetBOOL();
    }

    if (![VKMapView setCameraCollisionMode:]::$_11::operator() const(void)::cached_result)
    {
      a3 = 0;
    }
  }

  else
  {
    a3 = 0;
  }

  v5 = *(self + 32);
  if (v5)
  {
    [v5 setCameraCollisionMode:a3];
  }

  v6 = [*(self + 7) cameraController];
  v7 = *(self + 32);

  if (a3)
  {
    if (v6 == v7)
    {
      return;
    }
  }

  else if (v6 != v7)
  {
    return;
  }

  v8 = *(self + 7);
  v9 = [(VKMapView *)self resolveMapCameraController];
  [v8 setCameraController:?];
}

- (void)setTerrainMode:(int64_t)a3
{
  if (*(*(self + 65) + 3))
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  *(self + 70) = v4;
  if ([(VKMapView *)self _daVinciDataAvailable]&& +[VKMapView _elevatedGroundIsEnabled])
  {
    v5 = *(*(self + 50) + 41936);
    v13 = 29;
    md::MapEngineSettings::set(v5, &v13, v4);
    v6 = *(*(self + 50) + 41936);
    v12 = 21;
    v7 = (v4 - 1) < 3;
    v8 = &v12;
  }

  else
  {
    v9 = *(*(self + 50) + 41936);
    v11 = 29;
    md::MapEngineSettings::set(v9, &v11, 0);
    v6 = *(*(self + 50) + 41936);
    v10 = 21;
    v8 = &v10;
    v7 = 0;
  }

  md::MapEngineSettings::set(v6, v8, v7);
}

- (int64_t)terrainMode
{
  v2 = *(self + 50);
  if (v2)
  {
    v3 = *(v2 + 41936);
    v4 = *v3;
    v5 = v3[1];
    while (v4 != v5)
    {
      if (*v4 == 29)
      {
        if (v4 == v5)
        {
          return 0;
        }

        return *(v4 + 8);
      }

      v4 += 16;
    }
  }

  return 0;
}

- (void)setLoadMuninAvailability:(BOOL)a3
{
  v3 = *(*(self + 50) + 41936);
  v4 = 19;
  md::MapEngineSettings::set(v3, &v4, a3);
}

- (BOOL)loadMuninAvailability
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 19)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setLoadMuninMetadata:(BOOL)a3
{
  v3 = *(*(self + 50) + 41936);
  v4 = 18;
  md::MapEngineSettings::set(v3, &v4, a3);
}

- (BOOL)isLoadingMuninMetadata
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 18)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setSupportedEVConnectorTypes:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a3;
  v5 = 0;
  v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v5 |= 1 << [*(*(&v10 + 1) + 8 * v8++) integerValue];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = [(VKMapView *)self _labelSettings];
  *(v9[5] + 320) = v5;
  md::LabelManager::setSupportedEVConnectorTypes(v9[3], v5);
}

- (void)setShowsLiveEVData:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    *v10 = 134218242;
    *&v10[4] = self;
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set shows liveData: %s", v10, 0x16u);
  }

  v7 = *(*(self + 50) + 41936);
  v10[0] = 36;
  if (v3)
  {
    v8 = [(VKMapView *)self _realTimeEVChargerIsEnabled];
  }

  else
  {
    v8 = 0;
  }

  md::MapEngineSettings::set(v7, v10, v8);
  v9 = *(self + 50);
  v10[0] = 1;
  md::MapEngine::setNeedsTick(v9, v10);
}

- (BOOL)showsLiveEVData
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 36)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setPreferStaleTiles:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] set preferStaleTiles: %s", &v8, 0x16u);
  }

  v7 = *(*(*(*(self + 50) + 41704) + 24) + 56);
  if (v7)
  {
    gdc::ResourceManager::setResourceFetcherConfig(v7, v3);
  }
}

- (BOOL)preferStaleTiles
{
  v2 = *(*(*(*(self + 50) + 41704) + 24) + 56);
  if (v2)
  {
    LOBYTE(v2) = gdc::ResourceManager::testResourceFetcherConfig(v2);
  }

  return v2;
}

- (void)setShowsPOIUpdates:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] set showsPOIUpdates: %s", &v8, 0x16u);
  }

  v7 = *(*(self + 50) + 41936);
  LOBYTE(v8) = 39;
  md::MapEngineSettings::set(v7, &v8, v3);
}

- (BOOL)showsPOIUpdates
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 39)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setShowsHillshade:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    *v9 = 134218242;
    *&v9[4] = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set shows hillshade: %s", v9, 0x16u);
  }

  {
    [VKMapView setShowsHillshade:]::$_7::operator() const(void)::cached_result = GEOConfigGetBOOL();
  }

  if (([VKMapView setShowsHillshade:]::$_7::operator() const(void)::cached_result & 1) == 0)
  {
    v7 = *(*(self + 50) + 41936);
    v9[0] = 32;
    if (v3)
    {
      v8 = [(VKMapView *)self _hillshadeIsAvailable];
    }

    else
    {
      v8 = 0;
    }

    md::MapEngineSettings::set(v7, v9, v8);
  }
}

- (BOOL)showsHillshade
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 32)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setShowsHiking:(BOOL)a3 withTopographicFeatures:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v20 = *MEMORY[0x1E69E9840];
  {
    [VKMapView setShowsHiking:withTopographicFeatures:]::$_6::operator() const(void)::cached_result = GEOConfigGetBOOL();
  }

  if ([VKMapView setShowsHiking:withTopographicFeatures:]::$_6::operator() const(void)::cached_result == 1)
  {
    v7 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = 134217984;
      v15 = self;
      _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set shows hiking is overridden", &v14, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v5 = [(VKMapView *)self _hikingIsAvailable];
    }

    v8 = v5 & v4;
    v9 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = "NO";
      if (v5)
      {
        v11 = "YES";
      }

      else
      {
        v11 = "NO";
      }

      v14 = 134218498;
      v15 = self;
      v17 = v11;
      v16 = 2080;
      if (v8)
      {
        v10 = "YES";
      }

      v18 = 2080;
      v19 = v10;
      _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set shows hiking: %s with topograpic features: %s", &v14, 0x20u);
    }

    v12 = *(*(self + 50) + 41936);
    LOBYTE(v14) = 33;
    md::MapEngineSettings::set(v12, &v14, v5);
    v13 = *(*(self + 50) + 41936);
    LOBYTE(v14) = 34;
    md::MapEngineSettings::set(v13, &v14, v8);
  }
}

- (BOOL)showsTopographicFeatures
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 34)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (BOOL)showsHiking
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 33)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setShowsVenues:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v9 = 134218242;
    v10 = self;
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set shows venues: %s", &v9, 0x16u);
  }

  v7 = *(*(self + 50) + 41936);
  LOBYTE(v9) = 0;
  md::MapEngineSettings::set(v7, &v9, v3);
  v8 = [(VKMapView *)self _labelSettings];
  md::LabelSettings_Presentation::setShowsVenues(*(*v8 + 24), *(*v8 + 40), v3);
}

- (BOOL)showsVenues
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (!*v3)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setShowsBuildings:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set shows buildings: %s", &v8, 0x16u);
  }

  v7 = *(*(self + 50) + 41936);
  LOBYTE(v8) = 1;
  md::MapEngineSettings::set(v7, &v8, v3);
}

- (BOOL)showsBuildings
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 1)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setPointsOfInterestFilter:(id)a3
{
  v5 = a3;
  v6[2] = v5;
  if (*(self + 53) != v5)
  {
    objc_storeStrong(self + 53, a3);
    if (*(self + 53))
    {
      std::allocate_shared[abi:nn200100]<md::LabelCategoryFilter,std::allocator<md::LabelCategoryFilter>,GEOPOICategoryFilter * {__strong}&,0>();
    }

    v6[0] = 0;
    v6[1] = 0;
    md::LabelSettings_Presentation::setPointsOfInterestFilter([(VKMapView *)self _labelSettings], v6);
  }
}

- (void)setIsMKRenderingSelectionBalloon:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set isMKRenderingSelectionBalloon: %s", &v8, 0x16u);
  }

  v7 = [(VKMapView *)self _labelSettings];
  md::LabelSettings_Presentation::setMKRenderingSelectionBalloon(*(*v7 + 24), *(*v7 + 40), v3);
}

- (void)setShowsPointsOfInterest:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set shows points of interest: %s", &v8, 0x16u);
  }

  v7 = [(VKMapView *)self _labelSettings];
  md::LabelSettings_Presentation::setShowsPOIs(*(*v7 + 24), *(*v7 + 40), v3);
}

- (void)setShowsLabels:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set show labels: %s", &v8, 0x16u);
  }

  v7 = [(VKMapView *)self _labelSettings];
  md::LabelSettings_Presentation::setShowsLabels(*(*v7 + 24), *(*v7 + 40), v3);
}

- (void)setShowsPhysicalFeatureLabels:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set show physical feature labels: %s", &v8, 0x16u);
  }

  v7 = [(VKMapView *)self _labelSettings];
  md::LabelSettings_Presentation::setShowsPhysicalFeatureLabels(*(*v7 + 24), *(*v7 + 40), v3);
}

- (void)setShowsContourLabels:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set show contour labels: %s", &v8, 0x16u);
  }

  v7 = [(VKMapView *)self _labelSettings];
  md::LabelSettings_Presentation::setShowsContourLabels(*(*v7 + 24), *(*v7 + 40), v3);
}

- (void)setShowsPointLabels:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set show point labels: %s", &v8, 0x16u);
  }

  v7 = [(VKMapView *)self _labelSettings];
  md::LabelSettings_Presentation::setShowsPointLabels(*(*v7 + 24), *(*v7 + 40), v3);
}

- (void)setShowsRoadShields:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set show road shields: %s", &v8, 0x16u);
  }

  v7 = [(VKMapView *)self _labelSettings];
  md::LabelSettings_Presentation::setShowsRoadShields(*(*v7 + 24), *(*v7 + 40), v3);
}

- (void)setShowsRoadLabels:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set show road labels: %s", &v8, 0x16u);
  }

  v7 = [(VKMapView *)self _labelSettings];
  md::LabelSettings_Presentation::setShowsRoadLabels(*(*v7 + 24), *(*v7 + 40), v3);
}

- (void)setShieldIdiom:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134218240;
    v8 = self;
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set shield idiom: %ld", &v7, 0x16u);
  }

  v6 = [(VKMapView *)self _labelSettings];
  md::LabelSettings_Presentation::setShieldIdiom(*(*v6 + 24), *(*v6 + 40), a3);
}

- (void)setNavigationShieldSize:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134218240;
    v8 = self;
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set navigation shield size: %ld", &v7, 0x16u);
  }

  v6 = [(VKMapView *)self _labelSettings];
  md::LabelSettings_Navigation::setNavigationShieldSize(*(v6[1] + 24), *(v6[1] + 40), [VKInternalIconManager convertSizeGroup:a3]);
}

- (int64_t)navigationShieldSize
{
  v2 = *(*(*([(VKMapView *)self _labelSettings]+ 8) + 40) + 2);

  return [VKInternalIconManager convertGrlSizeGroup:v2];
}

- (void)setShieldSize:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(VKMapView *)self shieldSize]!= a3)
  {
    v5 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 134218240;
      v9 = self;
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set shield size: %ld", &v8, 0x16u);
    }

    v6 = [(VKMapView *)self _labelSettings];
    md::LabelSettings_Presentation::setShieldSize(*(*v6 + 24), *(*v6 + 40), [VKInternalIconManager convertSizeGroup:a3]);
    v7 = *(self + 69);
    *(self + 69) = 0;
  }
}

- (double)zoomLevelAdjustmentForTileSize:(int64_t)a3
{
  v4 = [(VKMapView *)self currentCanvas];
  v5 = [v4 cameraController];
  [v5 zoomLevelAdjustmentForTileSize:a3];
  v7 = v6;

  return v7;
}

- (double)currentZoomLevelForTileSize:(int64_t)a3
{
  v4 = [(VKMapView *)self currentCanvas];
  v5 = [v4 cameraController];
  [v5 currentZoomLevelForTileSize:a3];
  v7 = v6;

  return v7;
}

- (double)maximumZoomLevelForTileSize:(int64_t)a3
{
  v4 = [(VKMapView *)self currentCanvas];
  v5 = [v4 cameraController];
  [v5 maximumZoomLevelForTileSize:a3];
  v7 = v6;

  return v7;
}

- (double)topDownMinimumZoomLevelForTileSize:(int64_t)a3
{
  v4 = [(VKMapView *)self currentCanvas];
  v5 = [v4 cameraController];
  [v5 topDownMinimumZoomLevelForTileSize:a3];
  v7 = v6;

  return v7;
}

- (double)minimumZoomLevelForTileSize:(int64_t)a3
{
  v4 = [(VKMapView *)self currentCanvas];
  v5 = [v4 cameraController];
  [v5 minimumZoomLevelForTileSize:a3];
  v7 = v6;

  return v7;
}

- (BOOL)canZoomOutForTileSize:(int64_t)a3
{
  v4 = [(VKMapView *)self currentCanvas];
  v5 = [v4 cameraController];
  LOBYTE(a3) = [v5 canZoomOutForTileSize:a3];

  return a3;
}

- (BOOL)canZoomInForTileSize:(int64_t)a3
{
  v4 = [(VKMapView *)self currentCanvas];
  v5 = [v4 cameraController];
  LOBYTE(a3) = [v5 canZoomInForTileSize:a3];

  return a3;
}

- (void)setIconsShouldAlignToPixels:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  if ([(VKMapView *)self iconsShouldAlignToPixels]!= a3)
  {
    v5 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = "NO";
      if (v3)
      {
        v6 = "YES";
      }

      v7 = 134218242;
      v8 = self;
      v9 = 2080;
      v10 = v6;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set icons should align to pixels: %s", &v7, 0x16u);
    }

    *(*(self + 50) + 41784) = v3;
    [(VKMapView *)self setNeedsLayout];
  }
}

- (void)setGesturing:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(VKMapView *)self currentCanvas];
  v6 = [v5 cameraController];
  v7 = [v6 isGesturing];

  if (v7 != v3)
  {
    v8 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = "NO";
      if (v3)
      {
        v9 = "YES";
      }

      v15 = 134218242;
      v16 = self;
      v17 = 2080;
      v18 = v9;
      _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set gesturing: %s", &v15, 0x16u);
    }

    v10 = GEOGetVectorKitVKMapViewLog();
    v11 = v10;
    v12 = *(*(self + 50) + 42080);
    if (v3)
    {
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        LOWORD(v15) = 0;
        _os_signpost_emit_with_name_impl(&dword_1B2754000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Gesturing", &unk_1B3514CAA, &v15, 2u);
      }

      md::AnimationManager::forceInstantAnimations(*(*(self + 50) + 192), 0);
    }

    else
    {
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        LOWORD(v15) = 0;
        _os_signpost_emit_with_name_impl(&dword_1B2754000, v11, OS_SIGNPOST_INTERVAL_END, v12, "Gesturing", &unk_1B3514CAA, &v15, 2u);
      }
    }

    v13 = [(VKMapView *)self currentCanvas];
    v14 = [v13 cameraController];
    [v14 setGesturing:v3];

    md::MapEngine::updateRunLoopStatus(*(self + 50));
  }
}

- (void)enableMapDisplayStyleDebugOverride:(id)a3
{
  v3 = *&a3.var0;
  v17 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (v3)
    {
      v6 = @"Night";
    }

    else
    {
      v6 = @"Day";
    }

    *buf = 134218242;
    v14 = self;
    v15 = 2080;
    v16 = [(__CFString *)v6 UTF8String];
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Map display style debug override enabled, setting time of day to: %s", buf, 0x16u);
  }

  *(self + 590) = 1;
  if (!(*&v12.var0 | *&v12.var4 ^ 0x100) || (*&v12.var0 == 1 ? (v7 = *&v12.var4 == 256) : (v7 = 0), v7))
  {
    v12.var2 = *(self + 586);
    v3 = *&v12.var0 | (*&v12.var4 << 32);
LABEL_26:
    v11 = 1;
    goto LABEL_27;
  }

  if (*&v12.var0 != 512 || *&v12.var4 != 256)
  {
    if (*&v12.var0 == 0x10000 && *&v12.var4 == 256)
    {
      goto LABEL_26;
    }

    if (*&v12.var0 != 66048 || *&v12.var4 != 256)
    {
      goto LABEL_26;
    }
  }

  v11 = 0;
LABEL_27:
  [(VKMapView *)self setEmphasis:v11 animated:1];
  [(VKMapView *)self _applyMapDisplayStyle:v3 & 0xFFFFFFFFFFFFLL animated:1 duration:1.0];
}

- (id)detailedDescriptionDictionaryRepresentation
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return v2;
}

- (id)detailedDescription
{
  v5 = objc_alloc_init(VKDebugTree);
  [(VKDebugTree *)v5 enableAllOptions];
  [(VKDebugTree *)v5 populateData:self];
  v3 = [(VKDebugTree *)v5 logTree];

  return v3;
}

- (BOOL)shouldLoadMapMargin
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 6)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setShouldLoadMapMargin:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set should load map margin: %s", &v8, 0x16u);
  }

  v7 = *(*(self + 50) + 41936);
  LOBYTE(v8) = 6;
  md::MapEngineSettings::set(v7, &v8, v3);
}

- (BOOL)shouldLoadFallbackTiles
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 7)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setShouldLoadFallbackTiles:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set should load fallback tiles display: %s", &v8, 0x16u);
  }

  v7 = *(*(self + 50) + 41936);
  LOBYTE(v8) = 7;
  md::MapEngineSettings::set(v7, &v8, v3);
}

- (id)debugLabelString:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKMapView *)self _labelSettings];
  v5 = MEMORY[0x1E696AEC0];
  md::LabelManager::debugString(__p, v4[3], v3);
  if (v10 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  v7 = [v5 stringWithUTF8String:v6];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

- (void)debugHighlightLabelAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v12 = +[VKDebugSettings sharedSettings];
  v6 = [v12 daVinciEntityDebugHighlighting];

  if (v6)
  {
    v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x8D737D0C0FC52C0CLL)[5];
    v8 = x;
    v9 = y;
    v10 = *(v7 + 144);
    *(v7 + 136) = v8;
    *(v7 + 140) = v9;
    if ((v10 & 1) == 0)
    {
      *(v7 + 144) = 1;
    }

    [(VKMapView *)self setNeedsLayout];
  }

  else
  {
    v13 = +[VKDebugSettings sharedSettings];
    v11 = [v13 transitHighlighting];

    if (v11)
    {
      v14 = [(VKMapView *)self currentCanvas];
      [v14 debugHighlightObjectAtPoint:1 highlightTarget:{x, y}];
    }

    else
    {
      (*(**(*([(VKMapView *)self _labelSettings]+ 24) + 240) + 264))();
    }
  }
}

- (void)setHostDisplay:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 134218240;
    v10 = self;
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set host display: %p", &v9, 0x16u);
  }

  v6 = *(self + 50);
  v7 = v4;
  v8 = *(v6 + 136);
  if (v8)
  {
    ggl::DisplayLink::setDisplay(v8, v7);
  }
}

- (CADisplay)hostDisplay
{
  v3 = *(*(self + 50) + 136);
  if (v3)
  {
    v4 = md::LabelExternalPointFeature::incident(*(v3 + 88));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)didReceiveLocalChanged
{
  v2 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(v2[5920], "[VKMapView didReceiveLocalChanged]");

  md::MapEngine::clearScene(v2);
}

- (void)didReceiveFlushTileCaches
{
  v2 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(v2[5920], "[VKMapView didReceiveFlushTileCaches]");

  md::MapEngine::clearScene(v2);
}

- (void)didReceiveMemoryWarning
{
  v3 = [(VKMapView *)self isEffectivelyHidden];
  v4 = v3;
  [*(self + 7) didReceiveMemoryWarning:v3 beAggressive:0];
  v5 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(*(v5 + 47360), "[VKMapView didReceiveMemoryWarning]");
  md::MapEngine::prune(v5, !v4);
  v6 = +[VKSharedResourcesManager sharedResources];
  [v6 prune:1];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    *buf = 134218242;
    v15 = self;
    v16 = 2080;
    v17 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set hidden: %s", buf, 0x16u);
  }

  v7 = GEOGetVectorKitVKMapViewLog();
  v8 = v7;
  v9 = *(*(self + 50) + 42080);
  if (v3)
  {
    if (v9 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v7))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v10 = v8;
    v11 = OS_SIGNPOST_INTERVAL_END;
  }

  else
  {
    if (v9 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v7))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v10 = v8;
    v11 = OS_SIGNPOST_INTERVAL_BEGIN;
  }

  _os_signpost_emit_with_name_impl(&dword_1B2754000, v10, v11, v9, "Visible", &unk_1B3514CAA, buf, 2u);
LABEL_13:

  v13.receiver = self;
  v13.super_class = VKMapView;
  [(VKMapView *)&v13 setHidden:v3];
  v12 = *(self + 50);
  if (v12)
  {
    *(v12 + 42000) = v3;
    md::MapEngine::updateRunLoopStatus(v12);
  }
}

- (void)clearScene
{
  v3 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(v3[5920], "[VKMapView clearScene]");
  md::MapEngine::clearScene(v3);
  v4 = *(self + 7);

  [v4 clearScene];
}

- (void)setNeedsRender
{
  {
    [VKMapView setNeedsRender]::$_5::operator() const(void)::cached_result = GEOConfigGetBOOL();
  }

  v3 = *(self + 50);
  if ([VKMapView setNeedsRender]::$_5::operator() const(void)::cached_result == 1)
  {
    v6 = 7;
    v4 = &v6;
  }

  else
  {
    v5 = 14;
    v4 = &v5;
  }

  md::MapEngine::setNeedsTick(v3, v4);
}

- (void)setDebugLayoutContinuously:(BOOL)a3
{
  v3 = a3;
  v5 = +[VKDebugSettings sharedSettings];
  [v5 setLayoutContinuously:v3];

  [(VKMapView *)self setNeedsLayout];
}

- (BOOL)debugLayoutContinuously
{
  v2 = +[VKDebugSettings sharedSettings];
  v3 = [v2 layoutContinuously];

  return v3;
}

- (void)setIsPitchable:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v9 = 134218242;
    v10 = self;
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set is pitchable: %s", &v9, 0x16u);
  }

  v7 = [(VKMapView *)self currentCanvas];
  v8 = [v7 cameraController];
  [v8 setIsPitchEnabled:v3];
}

- (BOOL)staysCenteredDuringRotation
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];
  v4 = [v3 staysCenteredDuringRotation];

  return v4;
}

- (void)setStaysCenteredDuringRotation:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v9 = 134218242;
    v10 = self;
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set stays centered durning rotation: %s", &v9, 0x16u);
  }

  v7 = [(VKMapView *)self currentCanvas];
  v8 = [v7 cameraController];
  [v8 setStaysCenteredDuringRotation:v3];
}

- (BOOL)staysCenteredDuringPinch
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 cameraController];
  v4 = [v3 staysCenteredDuringPinch];

  return v4;
}

- (VKMetrics)metrics
{
  v3 = *(self + 69);
  if (!v3)
  {
    v4 = objc_opt_new();
    [v4 setCarDisplayType:{-[VKMapView carDisplayType](self, "carDisplayType")}];
    [v4 setLabelScaleFactor:{-[VKMapView labelScaleFactor](self, "labelScaleFactor")}];
    [v4 setShieldSize:{-[VKMapView shieldSize](self, "shieldSize")}];
    v5 = *(*(self + 50) + 41928);
    if (v5)
    {
      v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v5 + 16), 0x2FED70A4459DFCA1uLL);
      if (v6)
      {
        v7 = v6[5];
        if (v7)
        {
          v8 = *(v7 + 256);
          if (!v8)
          {
            md::StyleLogic::updateConfiguration(v6[5], *(v7 + 1096));
            v8 = *(v7 + 256);
          }

          v9 = *(v7 + 264);
          v13 = v8;
          v14 = v9;
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          [v4 setStyleManager:&v13];
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v14);
          }
        }
      }
    }

    v10 = [[VKMetrics alloc] initWithDescriptor:v4];
    v11 = *(self + 69);
    *(self + 69) = v10;

    v3 = *(self + 69);
  }

  return v3;
}

- (void)setLabelScaleFactor:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(VKMapView *)self labelScaleFactor]!= a3)
  {
    v5 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 134218240;
      v10 = self;
      v11 = 2048;
      v12 = a3;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set label scale factor: %ld", &v9, 0x16u);
    }

    v6 = [(VKMapView *)self _labelSettings];
    if (a3 >= 6)
    {
      v7 = 1;
    }

    else
    {
      v7 = a3;
    }

    md::LabelSettings_Presentation::setLabelScaleFactor(*(*v6 + 24), *(*v6 + 40), v7);
    v8 = *(self + 69);
    *(self + 69) = 0;
  }
}

- (void)setLocalizeLabels:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set localized labels: %s", &v8, 0x16u);
  }

  v7 = [(VKMapView *)self _labelSettings];
  md::LabelSettings_Presentation::setLocalizeLabels(*(*v7 + 24), *(*v7 + 40), v3);
}

- (void)setStaysCenteredDuringPinch:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v9 = 134218242;
    v10 = self;
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set stays centered during pitch: %s", &v9, 0x16u);
  }

  v7 = [(VKMapView *)self currentCanvas];
  v8 = [v7 cameraController];
  [v8 setStaysCenteredDuringPinch:v3];
}

- (void)flushTileLoads
{
  md::HomeQueueScheduler::waitForSynchronization(*(*(self + 50) + 47360), "[VKMapView flushTileLoads]");
  gdc::LayerDataManager::cancelAllRequests(*(*(*(self + 50) + 41704) + 24));
  v3 = *(self + 50);
  if (v3)
  {
    v4 = *(v3 + 88);
    v5 = *(v3 + 96);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    md::TaskContext::flushTileDecodeQueues(v4);
    if (v5)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }
}

- (void)didFinishSnapshotting
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKMapView:%p] Did finish suspension snapshot", &v5, 0xCu);
  }

  if (*(self + 248) == 1 && ![(VKMapView *)self rendersInBackground])
  {
    v4 = *(self + 50);
    [*(v4 + 41656) setRenderSource:0];
    [*(v4 + 41656) destroyRenderTarget];
  }

  *(self + 408) = 1;
}

- (void)setTrafficIncidentsEnabled:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v18 = 134218242;
    v19 = self;
    v20 = 2080;
    v21 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set traffic incidents enabled: %s", &v18, 0x16u);
  }

  v7 = *(*(self + 50) + 41936);
  LOBYTE(v18) = 3;
  md::MapEngineSettings::set(v7, &v18, v3);
  v8 = [(VKMapView *)self _labelSettings];
  if (v3)
  {
    v9 = *(*(self + 50) + 41936);
    v10 = *v9;
    v11 = v9[1];
    while (v10 != v11)
    {
      if (*v10 == 2)
      {
        if (v10 == v11)
        {
          break;
        }

        v12 = *(v10 + 8) != 0;
        goto LABEL_13;
      }

      v10 += 16;
    }
  }

  v12 = 0;
LABEL_13:
  *(*(v8 + 5) + 25) = v12;
  md::LabelManager::setTrafficEnabled(*(v8 + 3), v12);
  v13 = [(VKMapView *)self _labelSettings];
  if (v3)
  {
    v14 = *(*(self + 50) + 41936);
    v15 = *v14;
    v16 = v14[1];
    while (v15 != v16)
    {
      if (*v15 == 4)
      {
        if (v15 == v16)
        {
          break;
        }

        v17 = *(v15 + 8) != 0;
        goto LABEL_21;
      }

      v15 += 16;
    }
  }

  v17 = 0;
LABEL_21:
  *(*(v13 + 5) + 26) = v17;
  md::LabelManager::setTrafficClosuresEnabled(*(v13 + 3), v17);
}

- (BOOL)trafficIncidentsEnabled
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 3)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setTrafficEnabled:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v15 = 134218242;
    v16 = self;
    v17 = 2080;
    v18 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set trafficEnabled: %s", &v15, 0x16u);
  }

  v7 = *(*(self + 50) + 41936);
  LOBYTE(v15) = 2;
  md::MapEngineSettings::set(v7, &v15, v3);
  v8 = [(VKMapView *)self _labelSettings];
  if (v3)
  {
    v9 = *(*(self + 50) + 41936);
    v10 = *v9;
    v11 = v9[1];
    while (v10 != v11)
    {
      if (*v10 == 3)
      {
        if (v10 == v11)
        {
          break;
        }

        v12 = *(v10 + 8) != 0;
        goto LABEL_13;
      }

      v10 += 16;
    }
  }

  v12 = 0;
LABEL_13:
  *(*(v8 + 5) + 25) = v12;
  md::LabelManager::setTrafficEnabled(*(v8 + 3), v12);
  v13 = [(VKMapView *)self mapDisplayStyle];
  if ((v13 & 0xFE00) == 0)
  {
    v14 = 256;
    if (!v3)
    {
      v14 = 0;
    }

    [(VKMapView *)self setMapDisplayStyle:v13 & 0xFFFFFFFF00FFLL | v14];
  }

  [(VKMapView *)self _updateOnlyShowRoadClosures];
}

- (void)setApplicationUILayout:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(self + 26) != a3)
  {
    v5 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 134218242;
      v11 = self;
      v12 = 2080;
      v13 = gss::to_string(a3);
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set applicationUILayout: %s", &v10, 0x16u);
    }

    *(self + 26) = a3;
    v6 = *(self + 50);
    v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(v6 + 41928) + 16), 0x2FED70A4459DFCA1uLL);
    if (v7)
    {
      v8 = v7[5];
    }

    else
    {
      v8 = 0;
    }

    if (*(v8 + 167) != a3)
    {
      v9 = *(v8 + 1184);
      if (v9)
      {
        [v9 stop];
      }

      *(v8 + 167) = a3;
      gss::ClientStyleState<gss::PropertyID>::setTargetClientStyleAttribute(*(v8 + 208), 0x1003Du, a3);
      gss::ClientStyleState<gss::ScenePropertyID>::setTargetClientStyleAttribute(*(v8 + 224), 0x1003Du, a3);
      md::StyleLogic::queueStyleTransition(v8, 0.25);
      v6 = *(self + 50);
    }

    LOBYTE(v10) = 1;
    md::MapEngine::setNeedsTick(v6, &v10);
  }
}

- (void)setLevelOfDetail:(unsigned __int8)a3 animated:(BOOL)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(self + 153) != a3)
  {
    v4 = a4;
    v5 = a3;
    v7 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 > 2)
      {
        v8 = &stru_1F2A61C40;
      }

      else
      {
        v8 = *(&off_1E7B301B0 + v5);
      }

      v16 = 134218242;
      v17 = self;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set levelOfDetail: %@", &v16, 0x16u);
    }

    *(self + 153) = v5;
    v9 = 0.0;
    if (v4)
    {
      v10 = +[VKDebugSettings sharedSettings];
      [v10 transitionTimeMultiplier];
      v12 = v11;

      v9 = v12 * 0.6;
    }

    v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
    if (v13)
    {
      v13 = v13[5];
    }

    if (v5 == 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = v5 == 1;
    }

    md::StyleLogic::setLevelOfDetail(v13, v14, v9);
    v15 = *(self + 50);
    LOBYTE(v16) = 1;
    md::MapEngine::setNeedsTick(v15, &v16);
  }
}

- (void)setEmphasis:(unsigned __int8)a3 animated:(BOOL)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(self + 152) != a3)
  {
    v4 = a4;
    v5 = a3;
    v7 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 == 2)
      {
        v8 = 2;
      }

      else
      {
        v8 = v5 == 1;
      }

      v16 = 134218242;
      v17 = self;
      v18 = 2080;
      v19 = gss::to_string(v8);
      _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set emphasis: %s", &v16, 0x16u);
    }

    *(self + 152) = v5;
    v9 = 0.0;
    if (v4)
    {
      v10 = +[VKDebugSettings sharedSettings];
      [v10 transitionTimeMultiplier];
      v12 = v11;

      v9 = v12 * 0.6;
    }

    v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
    if (v13)
    {
      v13 = v13[5];
    }

    if (v5 == 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = v5 == 1;
    }

    md::StyleLogic::setEmphasis(v13, v14, v9);
    v15 = *(self + 50);
    LOBYTE(v16) = 1;
    md::MapEngine::setNeedsTick(v15, &v16);
    [(VKMapView *)self _updateOnlyShowRoadClosures];
    [(VKMapView *)self _updateBackgroundColor];
  }
}

- (void)setVehicleState:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (a3.var0)
    {
      v6 = "YES";
    }

    v11 = 134218242;
    v12 = self;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set vehicle state parked: %s", &v11, 0x16u);
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
  if (v7)
  {
    v8 = v7[5];
  }

  else
  {
    v8 = 0;
  }

  var0 = a3.var0;
  if (*(v8 + 160) != var0)
  {
    *(v8 + 160) = var0;
    gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(*(v8 + 208), 0x10019u, var0);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(*(v8 + 224), 0x10019u, var0);
    LOBYTE(v11) = 4;
    geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((v8 + 1128), &v11);
    v10 = **(v8 + 1240);
    if (v10)
    {
      LOBYTE(v11) = 12;
      md::MapEngine::setNeedsTick(v10, &v11);
    }
  }
}

- (void)setNavCameraMode:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(self + 74) != a3)
  {
    v3 = a3;
    *(self + 74) = a3;
    v5 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218240;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set nav camera mode to:%d", &v6, 0x12u);
    }

    [(VKMapView *)self _updateCameraThermalOptions];
  }
}

- (void)setCarDisplayConfig:(int64_t)a3 animated:(BOOL)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL)[5] + 162) != a3)
  {
    v6 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v15 = 134218242;
      v16 = self;
      v17 = 2080;
      v18 = gss::to_string(a3);
      _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set car display config:%s", &v15, 0x16u);
    }

    v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
    if (v7)
    {
      v8 = v7[5];
    }

    else
    {
      v8 = 0;
    }

    if (*(v8 + 162) != a3)
    {
      *(v8 + 162) = a3;
      gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(*(v8 + 208), 0x10078u, a3);
      gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(*(v8 + 224), 0x10078u, *(v8 + 162));
      LOBYTE(v15) = 4;
      geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((v8 + 1128), &v15);
      v9 = **(v8 + 1240);
      if (v9)
      {
        LOBYTE(v15) = 12;
        md::MapEngine::setNeedsTick(v9, &v15);
      }
    }

    v10 = *(self + 50);
    LOBYTE(v15) = 1;
    md::MapEngine::setNeedsTick(v10, &v15);
    if (a3 == 2)
    {
      v11 = *(*(self + 50) + 41936);
      v12 = *v11;
      v13 = v11[1];
      if (v12 == v13)
      {
        goto LABEL_19;
      }

      v14 = 1;
      while (*v12 != 31)
      {
        v12 += 16;
        if (v12 == v13)
        {
          goto LABEL_20;
        }
      }

      if (v12 == v13)
      {
LABEL_19:
        v14 = 1;
      }

      else
      {
        v14 = *(v12 + 8) != 1;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_20:
    [(VKMapView *)self setNavCameraMode:v14];
    [(VKMapView *)self _configureDynamicFrameRateForCarDisplayConfig:a3];
  }
}

- (void)setTargetDisplay:(int64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL)[5] + 161) != a3)
  {
    v5 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (a3 > 2)
      {
        v6 = &stru_1F2A61C40;
      }

      else
      {
        v6 = off_1E7B304A0[a3];
      }

      v19 = 134218242;
      v20 = self;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set target display: %@", &v19, 0x16u);
    }

    v7 = *(self + 50);
    v8 = *(v7 + 41704);
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    while (v9 != v10)
    {
      if (*v9 == 27)
      {
        if (v9 != v10)
        {
          v11 = *(v9 + 8);
          if (v11)
          {
            if (*(v11 + 768) != a3)
            {
              v12 = *(v11 + 760);
              v13 = v12 & 0xFFFFFFFFFFFFFFF9 | 4;
              v14 = v12 | 6;
              if (a3 == 1)
              {
                v15 = v14;
              }

              else
              {
                v15 = v13;
              }

              *(v11 + 760) = v15;
              *(v11 + 768) = a3;
              gdc::LayerDataStore::clearAllData(*(v11 + 16));
              v7 = *(self + 50);
            }
          }
        }

        break;
      }

      v9 += 16;
    }

    v16 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(v7 + 41928) + 16), 0x2FED70A4459DFCA1uLL);
    if (v16)
    {
      v16 = v16[5];
    }

    if (*(v16 + 161) != a3)
    {
      *(v16 + 161) = a3;
      (*(*v16 + 16))(v16);
    }

    v17 = [(VKMapView *)self _labelSettings];
    **(v17 + 5) = a3;
    md::LabelManager::setTargetDisplay(*(v17 + 3), a3);
    v18 = *(self + 50);
    md::HomeQueueScheduler::waitForSynchronization(v18[5920], "[VKMapView setTargetDisplay:]");
    md::MapEngine::clearScene(v18);
  }
}

- (void)setStyleZOffsetScale:(float)a3
{
  v4 = *(*(self + 50) + 41928);
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v4 + 16), 0x2FED70A4459DFCA1uLL);
  if (v5)
  {
    v6 = v5[5];
    if (v6)
    {
      *(v6 + 124) = a3;
    }
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v4 + 16), 0x8E629317B3523E63);
  if (v7)
  {
    v8 = v7[5];
    if (v8)
    {
      *(v8 + 120) = a3;
    }
  }
}

- (float)styleZOffsetScale
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
  result = 1.0;
  if (v2)
  {
    v4 = v2[5];
    if (v4)
    {
      return *(v4 + 124);
    }
  }

  return result;
}

- (GEOFeatureStyleAttributes)clientFeatureStyleAttributes
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL)[5];
  v4 = *(v3 + 208);
  v5 = *(v3 + 216);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = atomic_load((v4 + 270));
  if (v6)
  {
    gss::ClientStyleState<gss::PropertyID>::targetClientStyleAttributes(&v27, v4);
  }

  else
  {
    gss::ClientStyleState<gss::PropertyID>::sourceClientStyleAttributes(&v27, v4);
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v7 = v29;
  if (v29)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = v29;
    v25 = v29;
    do
    {
      if ((v11 >= v12) | v9 & 1)
      {
        v13 = v9;
      }

      else
      {
        v10 = (v27 + 4 * v11);
        v2 = (v27 + v28 + 2 * v11);
        v13 = 1;
      }

      v14 = *v10;
      v15 = *v2;
      if (v8 >= v32)
      {
        v16 = v30;
        v17 = v8 - v30;
        v18 = (v8 - v30) >> 3;
        v19 = v18 + 1;
        if ((v18 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v26 = v10;
        v20 = v32 - v30;
        if ((v32 - v30) >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          v22 = malloc_type_malloc(8 * v21, 0x100004000313F17uLL);
        }

        else
        {
          v22 = 0;
        }

        v23 = &v22[8 * v18];
        *v23 = v14 | (v15 << 32);
        v8 = v23 + 8;
        memcpy(v22, v16, v17);
        v30 = v22;
        v32 = &v22[8 * v21];
        if (v16)
        {
          free(v16);
        }

        v7 = v25;
        v10 = v26;
      }

      else
      {
        *v8 = v14 | (v15 << 32);
        v8 += 8;
      }

      v31 = v8;
      v12 = v29;
      if (v11 + 1 < v29)
      {
        ++v11;
      }

      else
      {
        v11 = v29;
      }

      if (v13)
      {
        v9 = 0;
      }

      else
      {
        v9 = v13;
      }
    }

    while (v11 != v7);
  }

  std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,geo::mallocator>> &,0>();
}

- (void)reloadStylesheet
{
  v2 = *(*std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL)[5] + 16);

  v2();
}

- (BOOL)stylesheetIsDevResource
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
  if (v2)
  {
    v3 = v2[5];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 256);
  if (!v4)
  {
    md::StyleLogic::updateConfiguration(v3, *(v3 + 1096));
    v4 = *(v3 + 256);
  }

  v5 = *(v3 + 264);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    v6 = 0;
    if (!v5)
    {
      return v6 & 1;
    }

    goto LABEL_10;
  }

  v6 = *(*(v4 + 16) + 80);
  if (v5)
  {
LABEL_10:
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return v6 & 1;
}

- (id)attributionsForCurrentRegion
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 attributionsForCurrentRegion];

  return v3;
}

- (NSArray)visibleTileSets
{
  v2 = [(VKMapView *)self currentCanvas];
  v3 = [v2 visibleTileSets];

  return v3;
}

- (void)forceCameraUpdateForFrameResize
{
  v2 = [(VKMapView *)self currentCanvas];
  [v2 updateCameraForFrameResize];
}

- (void)forceLayout
{
  v3 = [(VKMapView *)self currentCanvas];
  [v3 updateCameraForFrameResize];

  v4 = *(self + 50);
  v7 = 1;
  md::MapEngine::setNeedsTick(v4, &v7);
  v5 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(v5[5920], "[VKMapView forceLayout]");
  v6 = CACurrentMediaTime();
  if (md::MapEngine::renderSceneSync(v5, v6))
  {

    [(VKMapView *)self didPresent];
  }
}

- (void)_forceLayoutForSuspensionSnapShot
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v3 objectForInfoDictionaryKey:@"CAProcessCanAccessGPU"];

  if (v6 && ([v6 BOOLValue] & 1) != 0)
  {
    v4 = [(VKMapView *)self rendersInBackground];
    [(VKMapView *)self setRendersInBackground:1];
    v5 = *(self + 50);
    [*(v5 + 41656) setRenderSource:0];
    [*(v5 + 41656) destroyRenderTarget];
    [(VKMapView *)self _createDisplayLayer];
    [(VKMapView *)self forceLayout];
    [(VKMapView *)self setRendersInBackground:v4];
  }
}

- (void)_closeLoaderConnection:(BOOL)a3
{
  if (*(self + 136) == 1)
  {
    v3 = a3;
    *(self + 136) = 0;
    v5 = [MEMORY[0x1E69A2610] modernLoader];
    [v5 closeForClient:*(self + 18)];

    v6 = [MEMORY[0x1E69A2478] modernManager];
    [v6 closeServerConnection:v3];
  }
}

- (void)setLabelMarkerSelectionEnabled:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set label marker selection enabled: %s", &v8, 0x16u);
  }

  v7 = [(VKMapView *)self _labelSettings];
  md::LabelSettings_Markers::setSelectionEnabled(*(v7[2] + 24), *(v7[2] + 40), v3);
}

- (void)setNewInterfaceEnabled:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  if ((*(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL)[5] + 180) == 1) != a3)
  {
    v5 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 134218240;
      v9 = self;
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set new interface enabled=%i", &v8, 0x12u);
    }

    v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
    if (v6)
    {
      v6 = *(v6 + 5);
    }

    md::StyleLogic::setNewInterfaceEnabled(v6, v3);
    v7 = *(self + 50);
    LOBYTE(v8) = 1;
    md::MapEngine::setNeedsTick(v7, &v8);
  }
}

- (void)setOfflineMode:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (*(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL)[5] + 179) != a3)
  {
    v5 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = 134218242;
      v14 = self;
      v15 = 2080;
      v16 = gss::to_string(v3);
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set set offline mode:%s", &v13, 0x16u);
    }

    v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
    if (v6)
    {
      v7 = v6[5];
    }

    else
    {
      v7 = 0;
    }

    if (*(v7 + 179) != v3)
    {
      *(v7 + 179) = v3;
      gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(*(v7 + 208), 0x10083u, v3);
      gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(*(v7 + 224), 0x10083u, *(v7 + 179));
      LOBYTE(v13) = 4;
      geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((v7 + 1128), &v13);
      v8 = **(v7 + 1240);
      if (v8)
      {
        LOBYTE(v13) = 12;
        md::MapEngine::setNeedsTick(v8, &v13);
      }
    }

    v9 = *(self + 50);
    LOBYTE(v13) = 1;
    md::MapEngine::setNeedsTick(v9, &v13);
  }

  v10 = [(VKMapView *)self _labelSettings];
  *(v10[5] + 28) = v3;
  v11 = v10[3];
  v12 = atomic_load(v11 + 3045);
  if ((v12 & 1) != v3)
  {
    atomic_store(v3, v11 + 3045);
    md::LabelManager::updateTileZBias(v11);
  }
}

- (void)setOfflineRegionSelector:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  if (*(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL)[5] + 178) != a3)
  {
    v5 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 134218242;
      v11 = self;
      v12 = 2080;
      v13 = gss::to_string(v3);
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set set offline region selector:%s", &v10, 0x16u);
    }

    v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
    if (v6)
    {
      v7 = v6[5];
    }

    else
    {
      v7 = 0;
    }

    if (*(v7 + 178) != v3)
    {
      *(v7 + 178) = v3;
      gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(*(v7 + 208), 0x10080u, v3);
      gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(*(v7 + 224), 0x10080u, *(v7 + 178));
      LOBYTE(v10) = 4;
      geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((v7 + 1128), &v10);
      v8 = **(v7 + 1240);
      if (v8)
      {
        LOBYTE(v10) = 12;
        md::MapEngine::setNeedsTick(v8, &v10);
      }
    }

    v9 = *(self + 50);
    LOBYTE(v10) = 1;
    md::MapEngine::setNeedsTick(v9, &v10);
  }
}

- (void)setLabelSelectionFilter:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(self + 77);

  if (WeakRetained != obj)
  {
    objc_storeWeak(self + 77, obj);
    md::LabelSettings_Presentation::setLabelSelectionFilter([(VKMapView *)self _labelSettings], obj);
  }
}

- (void)setCameraDelegate:(id)a3
{
  v5 = a3;
  v4 = *(*(self + 50) + 41912);
  md::LabelExternalPointFeature::incident(v4);
  [objc_claimAutoreleasedReturnValue() setCameraDelegate:v5];
}

- (VKMapViewCameraDelegate)cameraDelegate
{
  v2 = *(*(self + 50) + 41912);
  md::LabelExternalPointFeature::incident(v2);
  v3 = [objc_claimAutoreleasedReturnValue() cameraDelegate];

  return v3;
}

- (void)setMapKitClientMode:(unsigned __int8)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(self + 220) != a3)
  {
    v3 = a3;
    v5 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 134218242;
      v9 = self;
      v10 = 2080;
      v11 = gss::to_string(v3);
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set mapKitClientMode: %s", &v8, 0x16u);
    }

    *(self + 220) = v3;
    v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
    if (v6)
    {
      v6 = v6[5];
    }

    md::StyleLogic::setMapKitClientMode(v6, v3);
    if (*(self + 219))
    {
      v7 = *(self + 50);
      LOBYTE(v8) = 1;
      md::MapEngine::setNeedsTick(v7, &v8);
    }
  }
}

- (void)setMapKitUsage:(unsigned __int8)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(self + 219) != a3)
  {
    v3 = a3;
    v5 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 134218242;
      v11 = self;
      v12 = 2080;
      v13 = gss::to_string(v3);
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set mapKitUsage: %s", &v10, 0x16u);
    }

    *(self + 219) = v3;
    v6 = *(self + 217);
    *(self + 217) = v3 != 0;
    v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
    if (v7)
    {
      v7 = v7[5];
    }

    md::StyleLogic::setUsage(v7, v3 != 0, v3);
    v8 = *(self + 217) == 0;
    *(self + 218) = v8;
    v9 = *(self + 50);
    *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(v9 + 41928) + 16), 0x20A1ED17D78F322BuLL)[5] + 224) = v8;
    LOBYTE(v10) = 1;
    md::MapEngine::setNeedsTick(v9, &v10);
    if (v6 != *(self + 217))
    {
      [(VKMapView *)self _updateOnlyShowRoadClosures];
    }
  }
}

- (void)setApplicationSubState:(unsigned __int8)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = &stru_1F2A61C40;
    if (v3 == 1)
    {
      v6 = @"Route Creation";
    }

    if (!v3)
    {
      v6 = @"Default";
    }

    v7 = 134218242;
    v8 = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set application substate: %@", &v7, 0x16u);
  }

  if (*(self + 201) != v3)
  {
    *(self + 201) = v3;
    [(VKMapView *)self _updateMapDisplayStyle];
  }
}

- (void)setApplicationState:(unsigned __int8)a3 displayedSearchResultsType:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  v25 = *MEMORY[0x1E69E9840];
  v7 = *(self + 200);
  if (v7 != a3)
  {
    *(self + 200) = a3;
    v8 = *(*(self + 50) + 41928);
    if (v8)
    {
      v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8 + 16), 0x5CBBA028798243FuLL);
      if (v9)
      {
        v10 = v9[5];
        if (v10)
        {
          *(v10 + 192) = v5;
        }
      }

      v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8 + 16), 0xBEC1A12372CEEC00);
      if (v11)
      {
        v12 = v11[5];
        if (v12)
        {
          v13 = *(self + 200);
          if (*(v12 + 225) != v13)
          {
            *(v12 + 225) = v13;
            md::NavigationLogic::_updatePolygonSelection(v12);
          }
        }
      }
    }
  }

  v14 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    if (v5 > 9)
    {
      v15 = &stru_1F2A61C40;
    }

    else
    {
      v15 = off_1E7B30508[v5];
    }

    if (v4 > 4)
    {
      v16 = &stru_1F2A61C40;
    }

    else
    {
      v16 = off_1E7B30558[v4];
    }

    v19 = 134218498;
    v20 = self;
    v21 = 2112;
    v22 = v15;
    v23 = 2112;
    v24 = v16;
    _os_log_impl(&dword_1B2754000, v14, OS_LOG_TYPE_INFO, "[VKMapView:%p] Set application state: %@, displayed search results type: %@", &v19, 0x20u);
  }

  if (*(self + 216) == v4)
  {
    if (v7 == v5)
    {
      return;
    }
  }

  else
  {
    *(self + 216) = v4;
  }

  [(VKMapView *)self _updateMapDisplayStyle];
  [(VKMapView *)self _updateCameraThermalOptions];
  if (*(self + 590) == 1)
  {
    v17 = +[VKDebugSettings sharedSettings];
    v18 = [v17 displayStyleOverride];

    if (v18)
    {
      [(VKMapView *)self enableMapDisplayStyleDebugOverride:*v18 | (*(v18 + 2) << 32)];
    }
  }
}

+ (void)updateUserLocationAnnotationStateForNavigationPuck:(id)a3 isPuckEnabled:(BOOL)a4 synchronizedState:(void *)a5
{
  v6 = a4;
  v7 = a3;
  if (v6)
  {
    *(a5 + 84) = 1;
  }

  else
  {
    *(a5 + 84) = 2;
    v10 = v7;
    v8 = [v7 target];
    [v8 collisionSize];
    *&v9 = v9;
    *(a5 + 20) = LODWORD(v9);

    v7 = v10;
  }
}

+ (BOOL)_globeIsAvailable
{
  if (!MapsFeature_IsAvailable_ShelbyvilleGlobe())
  {
    return 0;
  }

  {
    md::MapEngine::isAvailableGlobe(void)::$_0::operator() const(void)::cached_result = GEOConfigGetBOOL();
  }

  if (md::MapEngine::isAvailableGlobe(void)::$_0::operator() const(void)::cached_result)
  {
    return 1;
  }

  v3 = [MEMORY[0x1E69A2398] sharedPlatform];
  v2 = [v3 supportsAdvancedMap];

  return v2;
}

+ (BOOL)_elevatedGroundIsAvailable
{
  if (!MapsFeature_IsAvailable_ShelbyvilleTerrain())
  {
    return 0;
  }

  {
    md::MapEngine::isAvailableElevatedGround(void)::$_0::operator() const(void)::cached_result = GEOConfigGetBOOL();
  }

  if (md::MapEngine::isAvailableElevatedGround(void)::$_0::operator() const(void)::cached_result)
  {
    return 1;
  }

  v3 = [MEMORY[0x1E69A2398] sharedPlatform];
  v2 = [v3 supportsAdvancedMap];

  return v2;
}

- (void)_shutdownThermalMonitor
{
  v3 = *(self + 133);
  if (v3)
  {
    notify_cancel(v3);
    *(self + 133) = 0;
  }
}

void __42__VKMapView_Thermal___setupThermalMonitor__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateThermalPressureLevel];
}

- (void)_setThermalPressureLevel:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134218240;
    v8 = self;
    v9 = 1024;
    v10 = a3;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapView:%p] set thermal pressure %i", &v7, 0x12u);
  }

  *(self + 67) = a3;
  if (a3 < 0x1E)
  {
    if (a3 < 0x14)
    {
      if (a3 < 0xA)
      {
        *(self + 528) = 0;
        return;
      }

      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 3;
  }

  *(self + 528) = v6;
}

- (void)_resetElevationRasterMinZoom
{
  v3 = gdc::ResourceManager::downloadZoomRange(*(*(*(*(self + 50) + 41704) + 24) + 56), 50);
  if (v4)
  {
    v5 = v3;
    v6 = *(self + 32);

    [v6 setElevationRasterAvailableMinZoom:v5];
  }
}

- (void)_postDelegateCallbackBlock:(id)a3
{
  block = a3;
  WeakRetained = objc_loadWeakRetained(self + 16);

  if (WeakRetained)
  {
    v5 = [(VKMapView *)self _mapDelegateQueue];
    dispatch_async(v5, block);
  }
}

- (void)populateDebugNode:(void *)a3 withOptions:(const void *)a4
{
  v111 = *MEMORY[0x1E69E9840];
  v7 = *(self + 50);
  md::HomeQueueScheduler::waitForSynchronization(*(v7 + 47360), "[VKMapView(Internal) populateDebugNode:withOptions:]");
  std::string::basic_string[abi:nn200100]<0>(&v108, "Self");
  v8 = [(VKMapView *)self description];
  v9 = v8;
  gdc::DebugTreeValue::DebugTreeValue(v104, [v8 UTF8String]);
  gdc::DebugTreeNode::addProperty(a3, &v108, v104);
  if (v106 < 0)
  {
    operator delete(__p);
  }

  if (v109 < 0)
  {
    operator delete(v108);
  }

  std::string::basic_string[abi:nn200100]<0>(&v108, "Is in Background");
  gdc::DebugTreeValue::DebugTreeValue(v101, *(self + 248));
  gdc::DebugTreeNode::addProperty(a3, &v108, v101);
  if (v103 < 0)
  {
    operator delete(v102);
  }

  if (v109 < 0)
  {
    operator delete(v108);
  }

  std::string::basic_string[abi:nn200100]<0>(&v108, "Map Type");
  if (*(self + 52) == 1)
  {
    v10 = *(self + 12) - 1;
    if (v10 > 9)
    {
      v11 = @"VKMapTypeStandard";
    }

    else
    {
      v11 = off_1E7B304B8[v10];
    }

    v12 = [(__CFString *)v11 UTF8String];
  }

  else
  {
    v12 = "NONE";
  }

  gdc::DebugTreeValue::DebugTreeValue(v98, v12);
  gdc::DebugTreeNode::addProperty(a3, &v108, v98);
  if (v100 < 0)
  {
    operator delete(v99);
  }

  if (v109 < 0)
  {
    operator delete(v108);
  }

  std::string::basic_string[abi:nn200100]<0>(&v108, "Renders In Background");
  gdc::DebugTreeValue::DebugTreeValue(v95, [(VKMapView *)self rendersInBackground]);
  gdc::DebugTreeNode::addProperty(a3, &v108, v95);
  if (v97 < 0)
  {
    operator delete(v96);
  }

  if (v109 < 0)
  {
    operator delete(v108);
  }

  std::string::basic_string[abi:nn200100]<0>(&v108, "Did Finish Snapshotting");
  gdc::DebugTreeValue::DebugTreeValue(v92, *(self + 408));
  gdc::DebugTreeNode::addProperty(a3, &v108, v92);
  if (v94 < 0)
  {
    operator delete(v93);
  }

  if (v109 < 0)
  {
    operator delete(v108);
  }

  std::string::basic_string[abi:nn200100]<0>(&v108, "Hidden");
  gdc::DebugTreeValue::DebugTreeValue(v89, [(VKMapView *)self isHidden]);
  gdc::DebugTreeNode::addProperty(a3, &v108, v89);
  if (v91 < 0)
  {
    operator delete(v90);
  }

  if (v109 < 0)
  {
    operator delete(v108);
  }

  std::string::basic_string[abi:nn200100]<0>(&v108, "Display Rate");
  gdc::DebugTreeValue::DebugTreeValue(v86, *(*(*(self + 50) + 208) + 8));
  gdc::DebugTreeNode::addProperty(a3, &v108, v86);
  if (v88 < 0)
  {
    operator delete(v87);
  }

  if (v109 < 0)
  {
    operator delete(v108);
  }

  std::string::basic_string[abi:nn200100]<0>(&v108, "Navigation Display Rate");
  v13 = [(VKMapView *)self currentCanvas];
  v14 = [v13 cameraController];
  gdc::DebugTreeValue::DebugTreeValue(v83, [v14 baseDisplayRate]);
  gdc::DebugTreeNode::addProperty(a3, &v108, v83);
  if (v85 < 0)
  {
    operator delete(v84);
  }

  if (v109 < 0)
  {
    operator delete(v108);
  }

  std::string::basic_string[abi:nn200100]<0>(&v108, "Display Rate");
  gdc::DebugTreeValue::DebugTreeValue(v80, *(*(*(self + 50) + 208) + 8));
  gdc::DebugTreeNode::addProperty(a3, &v108, v80);
  if (v82 < 0)
  {
    operator delete(v81);
  }

  if (v109 < 0)
  {
    operator delete(v108);
  }

  std::string::basic_string[abi:nn200100]<0>(&v108, "Application State");
  v15 = *(self + 200);
  if (v15 > 9)
  {
    v16 = &stru_1F2A61C40;
  }

  else
  {
    v16 = off_1E7B30508[v15];
  }

  gdc::DebugTreeValue::DebugTreeValue(v77, [(__CFString *)v16 UTF8String]);
  gdc::DebugTreeNode::addProperty(a3, &v108, v77);
  if (v79 < 0)
  {
    operator delete(v78);
  }

  if (v109 < 0)
  {
    operator delete(v108);
  }

  v17 = *a4;
  if (*a4)
  {
    std::string::basic_string[abi:nn200100]<0>(&v108, "Display Style");
    v18 = gdc::DebugTreeNode::createChildNode(a3, &v108);
    if (v109 < 0)
    {
      operator delete(v108);
    }

    v19 = [(VKMapView *)self mapDisplayStyle];
    std::string::basic_string[abi:nn200100]<0>(&v108, "Displayed Search Results Type");
    v20 = *(self + 216);
    if (v20 > 4)
    {
      v21 = &stru_1F2A61C40;
    }

    else
    {
      v21 = off_1E7B30558[v20];
    }

    gdc::DebugTreeValue::DebugTreeValue(v74, [(__CFString *)v21 UTF8String]);
    gdc::DebugTreeNode::addProperty(v18, &v108, v74);
    if (v76 < 0)
    {
      operator delete(v75);
    }

    if (v109 < 0)
    {
      operator delete(v108);
    }

    std::string::basic_string[abi:nn200100]<0>(&v108, "TimePeriod");
    if (v19)
    {
      v22 = @"Night";
    }

    else
    {
      v22 = @"Day";
    }

    gdc::DebugTreeValue::DebugTreeValue(v71, [(__CFString *)v22 UTF8String]);
    gdc::DebugTreeNode::addProperty(v18, &v108, v71);
    if (v73 < 0)
    {
      operator delete(v72);
    }

    if (v109 < 0)
    {
      operator delete(v108);
    }

    std::string::basic_string[abi:nn200100]<0>(&v108, "OverlayType");
    v23 = @"None";
    if (BYTE1(v19) == 1)
    {
      v23 = @"Traffic";
    }

    if (BYTE1(v19) == 2)
    {
      v24 = @"Transit";
    }

    else
    {
      v24 = v23;
    }

    gdc::DebugTreeValue::DebugTreeValue(v68, [(__CFString *)v24 UTF8String]);
    gdc::DebugTreeNode::addProperty(v18, &v108, v68);
    if (v70 < 0)
    {
      operator delete(v69);
    }

    if (v109 < 0)
    {
      operator delete(v108);
    }

    std::string::basic_string[abi:nn200100]<0>(&v108, "ApplicationState");
    if (BYTE2(v19) > 9u)
    {
      v25 = &stru_1F2A61C40;
    }

    else
    {
      v25 = off_1E7B30508[(v19 >> 16) & 0xF];
    }

    gdc::DebugTreeValue::DebugTreeValue(v65, [(__CFString *)v25 UTF8String]);
    gdc::DebugTreeNode::addProperty(v18, &v108, v65);
    if (v67 < 0)
    {
      operator delete(v66);
    }

    if (v109 < 0)
    {
      operator delete(v108);
    }

    std::string::basic_string[abi:nn200100]<0>(&v108, "SearchResultsType");
    if (BYTE4(v19) > 4u)
    {
      v26 = &stru_1F2A61C40;
    }

    else
    {
      v26 = off_1E7B30558[HIDWORD(v19) & 7];
    }

    gdc::DebugTreeValue::DebugTreeValue(v62, [(__CFString *)v26 UTF8String]);
    gdc::DebugTreeNode::addProperty(v18, &v108, v62);
    if (v64 < 0)
    {
      operator delete(v63);
    }

    if (v109 < 0)
    {
      operator delete(v108);
    }

    std::string::basic_string[abi:nn200100]<0>(&v108, "MapHasLabels");
    gdc::DebugTreeValue::DebugTreeValue(v59, (v19 >> 40) & 1);
    gdc::DebugTreeNode::addProperty(v18, &v108, v59);
    if (v61 < 0)
    {
      operator delete(v60);
    }

    if (v109 < 0)
    {
      operator delete(v108);
    }

    v17 = *a4;
  }

  if ((v17 & 2) != 0)
  {
    std::string::basic_string[abi:nn200100]<0>(&v108, "Map Canvas");
    v27 = gdc::DebugTreeNode::createChildNode(a3, &v108);
    if (v109 < 0)
    {
      operator delete(v108);
    }

    [*(self + 7) populateDebugNode:v27 withOptions:a4];
    v17 = *a4;
  }

  if ((v17 & 4) != 0)
  {
    std::string::basic_string[abi:nn200100]<0>(&v108, "Current Camera Controller");
    v28 = gdc::DebugTreeNode::createChildNode(a3, &v108);
    if (v109 < 0)
    {
      operator delete(v108);
    }

    v29 = [(VKMapView *)self currentCanvas];
    v30 = [v29 cameraController];
    [v30 populateDebugNode:v28 withOptions:a4];

    v17 = *a4;
  }

  if ((v17 & 8) != 0)
  {
    md::MapEngine::createDebugNode(&v108, v7, a4);
  }

  if ((v17 & 0x10) != 0)
  {
    std::string::basic_string[abi:nn200100]<0>(&v108, "Route Context");
    v31 = gdc::DebugTreeNode::createChildNode(a3, &v108);
    if (v109 < 0)
    {
      operator delete(v108);
    }

    std::string::basic_string[abi:nn200100]<0>(&v108, "Description");
    v32 = [*(self + 61) description];
    v33 = v32;
    gdc::DebugTreeValue::DebugTreeValue(v56, [v32 UTF8String]);
    gdc::DebugTreeNode::addProperty(v31, &v108, v56);
    if (v58 < 0)
    {
      operator delete(v57);
    }

    if (v109 < 0)
    {
      operator delete(v108);
    }

    v17 = *a4;
  }

  if ((v17 & 0x20) != 0)
  {
    std::string::basic_string[abi:nn200100]<0>(&v108, "TileLoader");
    v34 = gdc::DebugTreeNode::createChildNode(a3, &v108);
    if (v109 < 0)
    {
      operator delete(v108);
    }

    v35 = [MEMORY[0x1E69A2610] modernLoader];
    v36 = v35;
    if (v35)
    {
      *&v108 = &unk_1F29E6510;
      *(&v108 + 1) = &v108;
      v110 = &v108;
      v37 = [v35 descriptionDictionaryRepresentation];
      std::function<void ()(NSDictionary *,gdc::DebugTreeNode &)>::operator()(&v108, v37, v34);

      std::__function::__value_func<void ()(NSDictionary *,gdc::DebugTreeNode &)>::~__value_func[abi:nn200100](&v108);
    }

    v17 = *a4;
  }

  if ((v17 & 0x40) != 0)
  {
    std::string::basic_string[abi:nn200100]<0>(&v108, "Tile Statistics");
    v38 = gdc::DebugTreeNode::createChildNode(a3, &v108);
    if (v109 < 0)
    {
      operator delete(v108);
    }

    v39 = [(VKMapView *)self tileStatistics];
    v40 = [v39 allKeys];
    v41 = [v40 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v42 = v41;
    v43 = [v42 countByEnumeratingWithState:&v52 objects:v107 count:16];
    if (v43)
    {
      v44 = *v53;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v53 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v46 = *(*(&v52 + 1) + 8 * i);
          v47 = [v39 valueForKey:v46];
          v48 = v46;
          std::string::basic_string[abi:nn200100]<0>(&v108, [v46 UTF8String]);
          gdc::DebugTreeValue::DebugTreeValue(v49, [v47 longLongValue]);
          gdc::DebugTreeNode::addProperty(v38, &v108, v49);
          if (v51 < 0)
          {
            operator delete(v50);
          }

          if (v109 < 0)
          {
            operator delete(v108);
          }
        }

        v43 = [v42 countByEnumeratingWithState:&v52 objects:v107 count:16];
      }

      while (v43);
    }
  }
}

- (int64_t)currentMapMode
{
  v2 = *(*(self + 50) + 41928);
  if (!v2)
  {
    return 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v2 + 16), 0x2FED70A4459DFCA1uLL);
  if (!result)
  {
    return result;
  }

  v4 = *(result + 40);
  if (v4 && (v5 = *(v4 + 168) - 1, v5 <= 6))
  {
    return qword_1B33B2C38[v5];
  }

  else
  {
    return 0;
  }
}

- (void)performStylesheetDidChange
{
  v2 = *(*(self + 50) + 41928);
  if (v2)
  {
    v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v2 + 16), 0x2FED70A4459DFCA1uLL);
    if (v4)
    {
      v5 = v4[5];
      if (v5)
      {
        v6 = *(v5 + 256);
        if (!v6)
        {
          md::StyleLogic::updateConfiguration(v4[5], *(v5 + 1096));
          v6 = *(v5 + 256);
        }

        v7 = *(v5 + 264);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v6)
        {
          v8 = *(v6 + 520);
          v9 = *(v6 + 528);
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v8)
          {
            atomic_store(*(v8 + 264) + 1, (v8 + 264));
          }

          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v9);
          }
        }

        md::StyleLogic::setStyleManagerDidChange(v5);
        v10 = *(self + 50);
        v11 = 1;
        md::MapEngine::setNeedsTick(v10, &v11);
        if (v7)
        {

          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }
      }
    }
  }
}

- (void)debugHighlightFeatureMarker:(const void *)a3
{
  v5 = [(VKMapView *)self _labelSettings];
  (*(**(v5[3] + 240) + 272))(*(v5[3] + 240), a3);

  [(VKMapView *)self _updateMapDisplayStyle];
}

- (id)iconForStyleAttributes:(id)a3 contentScale:(double)a4 size:(int64_t)a5 transparent:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x2FED70A4459DFCA1uLL);
  if (v11)
  {
    v12 = v11[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v12 + 256);
  if (!v13)
  {
    md::StyleLogic::updateConfiguration(v12, *(v12 + 1096));
    v13 = *(v12 + 256);
  }

  v14 = *(v12 + 264);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = objc_alloc_init(VKIconModifiers);
  [(VKIconModifiers *)v15 setGlyphOnly:v6];
  v16 = +[VKSharedResourcesManager sharedResources];
  v17 = [v16 iconManager];
  v19 = v17;
  v22 = v13;
  v23 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v18 = a4;
  v20 = [v17 imageForStyleAttributes:v10 styleManager:&v22 contentScale:a5 sizeGroup:v15 modifiers:v18];
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  return v20;
}

- (id)roadLabelTilesInScene
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = *(*(self + 50) + 41928);
  v5 = v4[3];
  if (!*&v5)
  {
    goto LABEL_42;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x2B7C4502BD3C99C6;
    if (*&v5 <= 0x2B7C4502BD3C99C6uLL)
    {
      v7 = 0x2B7C4502BD3C99C6uLL % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & 0x2B7C4502BD3C99C6;
  }

  v8 = *(*&v4[2] + 8 * v7);
  if (!v8)
  {
    goto LABEL_42;
  }

  v9 = *v8;
  if (!v9)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == 0x2B7C4502BD3C99C6)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_42;
    }

LABEL_16:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_42;
    }
  }

  if (v9[2] != 0x2B7C4502BD3C99C6)
  {
    goto LABEL_16;
  }

  v11 = v9[5];
  if (v11)
  {
    v12 = *(v11 + 120);
    if (v12)
    {
      v13 = md::SceneContext::layerDataInView(*(v11 + 120), 21);
      if (!v13[2])
      {
        v13 = md::SceneContext::layerDataInView(v12, 18);
      }

      v16 = *v13;
      v14 = v13 + 1;
      v15 = v16;
      if (v16 != v14)
      {
        do
        {
          v18 = v15[4];
          v17 = v15[5];
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v18 && *(v18 + 728))
          {
            v19 = objc_alloc(MEMORY[0x1E69A2728]);
            v20 = *(*(v18 + 728) + 24);
            v22 = *v20;
            v21 = v20[1];
            *v33 = v22;
            *&v33[8] = v21;
            if (v21)
            {
              atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
            }

            v23 = [v19 initWithVectorTile:v33];
            if (*&v33[8])
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*&v33[8]);
            }

            [v3 addObject:{v23, *v33}];
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v17);
          }

          v24 = v15[1];
          if (v24)
          {
            do
            {
              v25 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v25 = v15[2];
              v26 = *v25 == v15;
              v15 = v25;
            }

            while (!v26);
          }

          v15 = v25;
        }

        while (v25 != v14);
      }

      v27 = GEOGetVectorKitVKMapViewLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [v3 count];
        *v33 = 134218240;
        *&v33[4] = self;
        *&v33[12] = 2048;
        *&v33[14] = v28;
        v29 = "[VKMapView:%p] roadLabelTilesInScene:%zu";
        v30 = v27;
        v31 = 22;
        goto LABEL_44;
      }

      goto LABEL_45;
    }
  }

LABEL_42:
  v27 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *v33 = 134217984;
    *&v33[4] = self;
    v29 = "[VKMapView:%p] roadLabelTilesInScene - no SceneContext";
    v30 = v27;
    v31 = 12;
LABEL_44:
    _os_log_impl(&dword_1B2754000, v30, OS_LOG_TYPE_INFO, v29, v33, v31);
  }

LABEL_45:

  return v3;
}

- (void)setARMode:(int)a3
{
  v3 = (a3 - 1);
  if (v3 < 3)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(*(self + 50) + 41936);
  v6 = 26;
  md::MapEngineSettings::set(v5, &v6, v4);
}

- (int)arMode
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if (*v3 == 26)
    {
      break;
    }

    v3 += 16;
  }

  if (v3 == v4)
  {
    return 0;
  }

  v5 = *(v3 + 8);
  if (v5 - 1 <= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (int)arSceneType
{
  v2 = *(*(self + 50) + 41936);
  v3 = *v2;
  v4 = v2[1];
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if (*v3 == 27)
    {
      break;
    }

    v3 += 16;
  }

  if (v3 == v4)
  {
    return 0;
  }

  v5 = *(v3 + 8);
  if (v5 == 2)
  {
    return 2;
  }

  else
  {
    return v5 == 1;
  }
}

- (void)setARSceneType:(int)a3
{
  v3 = *(*(self + 50) + 41936);
  v5 = 27;
  if (a3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = a3 == 1;
  }

  md::MapEngineSettings::set(v3, &v5, v4);
}

- (int64_t)getCurrentSetARInterfaceOrientation
{
  v3 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "Get AR interface orientation", v6, 2u);
  }

  v4 = *(*(self + 50) + 41864);
  if (v4)
  {
    return *(v4 + 96);
  }

  else
  {
    return 0;
  }
}

- (void)setARInterfaceOrientation:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if ((a3 - 1) > 3)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = *(&off_1E7B3BA18 + a3 - 1);
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "Set AR interface orientation %@", &v10, 0xCu);
  }

  v7 = *(self + 50) + 40960;
  *(*(*(self + 50) + 41864) + 96) = a3;
  v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(v7 + 968) + 16), 0x69AB09C896BF94A7uLL);
  if (v8)
  {
    v9 = v8[5];
    if (v9)
    {
      *(v9 + 176) = a3;
    }
  }
}

- (void)arController:(id)a3 didChangeTrackingState:(unint64_t)a4 reason:(unint64_t)a5
{
  WeakRetained = objc_loadWeakRetained(self + 16);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v10 = objc_loadWeakRetained(self + 16);
    [v10 mapLayer:self arTrackingStateDidChange:a4 reason:a5];
  }
}

- (void)arControllerSessionInterruptionEnded:(id)a3
{
  WeakRetained = objc_loadWeakRetained(self + 16);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = objc_loadWeakRetained(self + 16);
    [v6 mapLayerARSessionInterruptionEnded:self];
  }
}

- (void)arController:(id)a3 arSessionWasInterrupted:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(self + 16);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = objc_loadWeakRetained(self + 16);
    [v8 mapLayer:self arSessionWasInterrupted:a4];
  }
}

- (void)arController:(id)a3 didEncounterError:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(self + 16);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(self + 16);
    [v7 mapLayer:self didEncounterARError:v8];
  }
}

- (void)map:(id)a3 didEnterARMode:(BOOL)a4
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__VKMapView_AR__map_didEnterARMode___block_invoke;
  v10[3] = &unk_1E7B3B9F8;
  v10[4] = self;
  [(VKMapView *)self _postDelegateCallbackBlock:v10, a4];
  v5 = +[VKDebugSettings sharedSettings];
  v6 = [v5 arRenderAtNativeRate];

  if ((v6 & 1) == 0)
  {
    md::MapEngine::setDisplayRate(*(self + 50), 60, v7, v8, v9);
  }
}

void __36__VKMapView_AR__map_didEnterARMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v4 mapLayerDidEnterAR:*(a1 + 32)];
  }
}

- (void)exitARMode
{
  md::MapEngine::setDisplayRate(*(self + 50), -1, v2, v3, v4);
  WeakRetained = objc_loadWeakRetained(self + 16);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v9 = objc_loadWeakRetained(self + 16);
    [v9 mapLayerWillExitAR:self];
  }

  [(VKMapView *)self setFlyoverMode:0xFFFFFFFFLL];
  v10 = objc_loadWeakRetained(self + 16);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v11 = objc_loadWeakRetained(self + 16);
    [v11 mapLayerDidExitAR:self];
  }
}

- (id)arWalkingDebugOutput
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x20A1ED17D78F322BuLL);
  if (v2)
  {
    v2 = v2[5];
  }

  v3 = *md::LabelsLogic::labelManagerForWorldType(v2, 2u);
  if (v3)
  {
    md::LabelManager::debugString(__p, v3, 0);
    if (v8 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)setARWalkingFeatureSet:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0xF4B920F5F640B882);
  if (v5)
  {
    v6 = v5[5];
  }

  else
  {
    v6 = 0;
  }

  if (*(v6 + 120))
  {
    v7 = *(v6 + 168);
  }

  else
  {
    v7 = *(*(*(v6 + 128) + 40) + 144);
    md::LabelExternalPointFeature::incident(v7);
    objc_claimAutoreleasedReturnValue();
  }

  v8 = [v7 features];

  if (v8 == v4)
  {
    v15 = GEOGetVectorKitVKMapViewLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v7 features];
      v17 = [v7 features];
      v24 = 134218240;
      v25 = v16;
      v26 = 2048;
      v27 = v17;
      _os_log_impl(&dword_1B2754000, v15, OS_LOG_TYPE_INFO, "Set ARFeatures (unchanged) - current:%p incoming:%p", &v24, 0x16u);
    }

    v14 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E695DFA8] setWithArray:v4];
    v10 = MEMORY[0x1E695DFA8];
    v11 = [v7 features];
    v12 = [v10 setWithArray:v11];

    if ([v9 isEqualToSet:v12])
    {
      v13 = GEOGetVectorKitVKMapViewLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v4;
        _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_INFO, "Set ARFeatures (unchanged) - %@", &v24, 0xCu);
      }

      v14 = v7;
    }

    else
    {
      v18 = [[VKARWalkingFeatureSet alloc] initWithFeatures:v4];
      v19 = GEOGetVectorKitVKMapViewLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v18;
        _os_log_impl(&dword_1B2754000, v19, OS_LOG_TYPE_INFO, "Set ARFeatures:%@", &v24, 0xCu);
      }

      v14 = v18;
      v20 = *(v6 + 120);
      v21 = GEOGetVectorKitARFeatureInjectionLogicLog();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
      if (v20)
      {
        if (v22)
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_INFO, "ARFeatureInjectionLogic intercepted features for ARDebugScene", &v24, 2u);
        }
      }

      else
      {
        if (v22)
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_INFO, "ARFeatureInjectionLogic forwarding features to LabelSettings", &v24, 2u);
        }

        md::LabelSettings::setARWalkingFeatures(*(v6 + 128), v14, 0);
      }

      geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(v6 + 160, v14);
    }
  }

  return v14;
}

- (void)_setARSession:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[MDARSession isSupported];
  v6 = GEOGetVectorKitVKMapViewLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "Set AR Session:%@", &v10, 0xCu);
    }

    v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x69AB09C896BF94A7uLL);
    if (v8)
    {
      v9 = v8[5];
      if (v9)
      {
        md::ARLogic::setARSession(v9, v4);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_ERROR, "AR Walking is unsupported", &v10, 2u);
    }
  }
}

- (void)enterARWalking:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    [(VKMapView *)self setARSession:v4];
  }

  else
  {
    v5 = +[MDARSession newGeoTrackingSession];
    [(VKMapView *)self _setARSession:v5];
  }
}

- (void)setVirtualParallaxEnabled:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapViewMuninLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "false";
    if (v3)
    {
      v6 = "true";
    }

    v7 = 136315138;
    v8 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "Set virtual parallax enabled: %s", &v7, 0xCu);
  }

  [*(self + 37) setVirtualParallaxEnabled:v3];
}

- (id)onscreenImageResources
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x669A8EDAC04FCBF1uLL);
  if (v2)
  {
    v3 = v2[5];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 144);
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  while (v5 != v6)
  {
    if (*v5 == 36)
    {
      if (v5 != v6)
      {
        v7 = *(v5 + 8);
        goto LABEL_11;
      }

      break;
    }

    v5 += 16;
  }

  v7 = 0;
LABEL_11:
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = pthread_rwlock_rdlock((v3 + 208));
  if (v9)
  {
    geo::read_write_lock::logFailure(v9, "read lock", v10);
  }

  v11 = *(v3 + 184);
  for (i = *(v3 + 192); v11 != i; ++v11)
  {
    v31 = *v11;
    md::mun::MuninMetadataContainer::activePoint(v26, *(v3 + 168), v31);
    if (v30 == 1)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69A23F8]);
      [v13 setLoadStatus:0];
      [v13 setCameraNumber:BYTE8(v31)];
      [v13 setLod:BYTE9(v31)];
      md::mun::ViewId::toLayerDataKey(v23, &v31, v29, v28, 2147483646);
      gdc::LayerDataStore::get(&v21, v7, v23);
      v14 = v21;
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v22);
      }

      if (v14)
      {
        [v13 setLoadStatus:1];
      }

      else
      {
        v15 = *(v3 + 144);
        v16 = *(v15 + 32);
        v17 = *(v15 + 40);
        while (v16 != v17)
        {
          if (*v16 == 36)
          {
            if (v16 != v17)
            {
              v18 = *(v16 + 8);
              goto LABEL_26;
            }

            break;
          }

          v16 += 16;
        }

        v18 = 0;
LABEL_26:
        if (gdc::LayerDataSource::dataRequestFailed(v18, v23))
        {
          [v13 setLoadStatus:2];
        }
      }

      [v8 addObject:v13];
      if (v24 != v25)
      {
        free(v24);
      }

      if (v30)
      {
        geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(&v27);
      }
    }
  }

  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v8];
  geo::read_write_lock::unlock((v3 + 208));

  return v19;
}

- (id)currentMarker
{
  v2 = [*(self + 37) currentPoint];
  if (v2)
  {
    v2 = [[VKMuninMarker alloc] initWithCollectionPoint:v2];
  }

  return v2;
}

- (void)enableViewDataLoading:(BOOL)a3
{
  v3 = a3;
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(self + 50) + 41928) + 16), 0x669A8EDAC04FCBF1uLL);
  if (v4)
  {
    v5 = v4[5];
  }

  else
  {
    v5 = 0;
  }

  *(v5 + 833) = v3;
  if (v3)
  {
    v6 = **(v5 + 160);
    if (v6)
    {
      v7 = 8;
      md::MapEngine::setNeedsTick(v6, &v7);
    }
  }
}

- (BOOL)cancelPendingMove
{
  v3 = GEOGetVectorKitVKMapViewMuninLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "Cancel pending move", v5, 2u);
  }

  return [*(self + 37) cancelPendingMove];
}

- (BOOL)moveToMarker:(id)a3 withHeading:(double)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  v12 = [v10 collectionPoint];
  v13 = GEOGetVectorKitVKMapViewMuninLog();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2754000, v14, OS_LOG_TYPE_INFO, "Move to marker", buf, 2u);
    }

    v15 = GEOGetVectorKitVKMapViewMuninLog();
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MoveToMarker", &unk_1B3514CAA, buf, 2u);
    }

    v14 = *(self + 37);
    v16 = [v10 collectionPoint];
    *buf = a4 * -0.0174532925;
    v19 = 0;
    v17 = [v14 moveToPoint:v16 withHeading:buf withPitch:&v19 animated:v7 completionHandler:v11];
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2754000, v14, OS_LOG_TYPE_ERROR, "Move to marker - missing collection point", buf, 2u);
    }

    v17 = 0;
  }

  return v17;
}

- (BOOL)moveToStorefrontView:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = [v8 imageryInfo];

    md::mun::cameraFrameFromStorefront(v24, v8);
    v11 = GEOGetVectorKitVKMapViewMuninLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_INFO, "Move to storefront view", &buf, 2u);
    }

    v12 = GEOGetVectorKitVKMapViewMuninLog();
    if (os_signpost_enabled(v12))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MoveToStorefrontView", &unk_1B3514CAA, &buf, 2u);
    }

    v13 = (self + 288);
    objc_initWeak(&buf, v13[1]);
    v14 = v13[1];
    v21 = v25;
    v22 = v26;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__VKMapView_Munin__moveToStorefrontView_animated_completionHandler___block_invoke;
    v18[3] = &unk_1E7B3DE58;
    v19 = v9;
    objc_copyWeak(&v20, &buf);
    v15 = [v14 moveToPoint:v27 withHeading:&v22 withPitch:&v21 animated:v6 completionHandler:v18];
    objc_destroyWeak(&v20);

    objc_destroyWeak(&buf);
    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(&v28);
  }

  else
  {
    v16 = GEOGetVectorKitVKMapViewMuninLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v27 = 0;
      _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_ERROR, "Move to storefront view - missing storefront info", v27, 2u);
    }

    v15 = 0;
  }

  return v15;
}

void __68__VKMapView_Munin__moveToStorefrontView_animated_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained resetPathAnimation];
  }
}

- (id)muninMarkerAtCoordinate:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = GEOGetVectorKitVKMapViewMuninLog();
  if (os_signpost_enabled(v5))
  {
    LOWORD(buf.f64[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MarkerAtPointSync", &unk_1B3514CAA, &buf, 2u);
  }

  v6 = *(*(self + 50) + 41928);
  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v6 + 16), 0x669A8EDAC04FCBF1uLL);
  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = v7[5];
  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = tan(var0 * 0.00872664626 + 0.785398163);
  v10 = log(v9);
  v11.f64[0] = var1;
  v11.f64[1] = v10;
  __asm { FMOV            V2.2D, #0.5 }

  *v46 = vmlaq_f64(_Q2, xmmword_1B33B0700, v11);
  buf = 0uLL;
  v45 = 0;
  v42 = 0uLL;
  v43 = 0;
  v17 = *(v8 + 168);
  v18 = pthread_rwlock_rdlock(&v17->_collectionPoint.var0.__val_.photos);
  if (v18)
  {
    geo::read_write_lock::logFailure(v18, "read lock", v19);
  }

  v20 = *&v17->_collectionPoint.var0.__val_.frame._rotation._imaginary._e[2];
  if (v20 == &v17->_collectionPoint.var0.__val_.heading)
  {
    v24 = 0;
    v23 = 0;
  }

  else
  {
    do
    {
      md::mun::MuninMetadata::neighborsWithinRadius(*&v20[8]._value, v46, &v42, &buf, 250.0);
      v21 = *&v20[2]._value;
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *&v21->_value;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = *&v20[4]._value;
          _ZF = *&v22->_value == v20;
          v20 = v22;
        }

        while (!_ZF);
      }

      v20 = v22;
    }

    while (v22 != &v17->_collectionPoint.var0.__val_.heading);
    v24 = *&v42.f64[1];
    v23 = *&v42.f64[0];
  }

  geo::read_write_lock::unlock(&v17->_collectionPoint.var0.__val_.photos);
  if (NearestPointForPIP)
  {
    v26 = GEOGetVectorKitVKMapViewMuninLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *v41 = 0;
      _os_log_impl(&dword_1B2754000, v26, OS_LOG_TYPE_INFO, "Marker at point, got one from metadata", v41, 2u);
    }

    v17 = [[VKMuninMarker alloc] initWithCollectionPoint:NearestPointForPIP];
    if (v23)
    {
      goto LABEL_20;
    }
  }

  else if (v23)
  {
LABEL_20:
    operator delete(v23);
  }

  if (*&buf.f64[0])
  {
    buf.f64[1] = buf.f64[0];
    operator delete(*&buf.f64[0]);
  }

  if (!NearestPointForPIP)
  {
    v6 = *(*(self + 50) + 41928);
LABEL_25:
    v27 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v6 + 16), 0xEA624BC935BAF297);
    if (!v27)
    {
      goto LABEL_31;
    }

    v28 = v27[5];
    if (!v28)
    {
      goto LABEL_31;
    }

    v29 = tan(var0 * 0.00872664626 + 0.785398163);
    v30 = log(v29);
    v31.f64[0] = var1;
    v31.f64[1] = v30;
    __asm { FMOV            V1.2D, #0.5 }

    v42 = vmlaq_f64(_Q1, xmmword_1B33B0700, v31);
    md::mun::MuninLogic::nearestRoadPoint(&buf, *(v28 + 160), *(v28 + 168), &v42);
    if (v45 == 1)
    {
      v33 = GEOGetVectorKitVKMapViewMuninLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *v46 = 0;
        _os_log_impl(&dword_1B2754000, v33, OS_LOG_TYPE_INFO, "Marker at point, got one from the road network", v46, 2u);
      }

      v34 = buf.f64[0] * 6.28318531;
      v35 = exp(buf.f64[1] * 6.28318531 + -3.14159265);
      v36 = atan(v35);
      v37 = fmod(v34, 6.28318531);
      v17 = [[VKMuninMarker alloc] initWithCoordinate:v36 * 114.591559 + -90.0, (fmod(v37 + 6.28318531, 6.28318531) * 57.2957795 + -180.0), 0.0];
    }

    else
    {
LABEL_31:
      v38 = GEOGetVectorKitVKMapViewMuninLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.f64[0]) = 0;
        _os_log_impl(&dword_1B2754000, v38, OS_LOG_TYPE_INFO, "Marker at point, failed to find a munin marker", &buf, 2u);
      }

      v17 = 0;
    }
  }

  return v17;
}

- (id)muninMarkerAtCoordinate:(id)a3 completeMarkerHandler:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v34 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(VKMapView *)self muninMarkerAtCoordinate:var0, var1];
  v7 = *(*(self + 50) + 42080);
  v8 = GEOGetVectorKitVKMapViewMuninLog();
  v9 = v8;
  v10 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "MarkerAtPoint", &unk_1B3514CAA, buf, 2u);
  }

  if (v6 && [v6 canMoveToMarker])
  {
    v5[2](v5, v6);
    v11 = GEOGetVectorKitVKMapViewMuninLog();
    v12 = v11;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v12, OS_SIGNPOST_INTERVAL_END, v7, "MarkerAtPoint", &unk_1B3514CAA, buf, 2u);
    }
  }

  else
  {
    v13 = *(self + 50) + 40960;
    v14 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(v13 + 968) + 16), 0x669A8EDAC04FCBF1uLL);
    if (v14)
    {
      v15 = v14[5];
      v16 = *(v13 + 744);
      if (v15 && v16 != 0)
      {
        v19 = tan(var0 * 0.00872664626 + 0.785398163);
        log(v19);
        v20 = *(v15 + 168);
        v21.f64[0] = var0;
        v21.f64[1] = var1;
        *buf = vmulq_f64(v21, vdupq_n_s64(0x3F91DF46A2529D39uLL));
        v27 = 0;
        md::mun::MuninMetadataContainer::nearestMetadataTiles(v32, v20, buf, 250.0);
        *__p = 0u;
        *v30 = 0u;
        v31 = 1065353216;
        for (i = v33; i; i = *i)
        {
          gdc::Tiled::mapDataKeyFromTile(buf, 0, i + 16, 35, -4);
          std::__hash_table<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey const&>(__p, buf);
          if (v27 != v28)
          {
            free(v27);
          }
        }

        MEMORY[0x1B8C62DA0](v5);
        MEMORY[0x1B8C62DA0]();
        operator new();
      }
    }

    v5[2](v5, 0);
    v18 = GEOGetVectorKitVKMapViewMuninLog();
    v12 = v18;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v12, OS_SIGNPOST_INTERVAL_END, v7, "MarkerAtPoint", &unk_1B3514CAA, buf, 2u);
    }
  }

  return v6;
}

- (void)enterMuninForMarker:(id)a3 withHeading:(double)a4
{
  v6 = a3;
  v7 = GEOGetVectorKitVKMapViewMuninLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_INFO, "Enter for marker", buf, 2u);
    }

    v9 = GEOGetVectorKitVKMapViewMuninLog();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EnterForMarker", &unk_1B3514CAA, buf, 2u);
    }

    v10 = +[VKSharedResourcesManager sharedResources];
    [v10 startDecompressionSession];

    [(VKMapView *)self setMapType:10];
    [(VKMapView *)self setShouldLoadFallbackTiles:0];
    [v6 coordinate];
    v19 = v11;
    [v6 coordinate];
    v18 = v12;
    [v6 coordinate];
    v13 = self + 288;
    v14 = *(v13 + 1);
    v15.f64[0] = v19;
    v15.f64[1] = v18;
    *buf = vmulq_f64(v15, vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v21 = v16;
    v22 = 0;
    v23 = 0;
    v24 = a4 * -0.0174532925;
    v25 = 0;
    [v14 setCameraFrame:buf];
    v17 = [v6 collectionPoint];
    if (v17)
    {
      [*(v13 + 1) setCurrentPoint:v17];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_ERROR, "Missing storefront info. Unable to enter munin.", buf, 2u);
    }

    [(VKMapView *)self setMapType:0];
  }
}

- (void)enterMuninForStorefrontView:(id)a3 secondaryStorefrontView:(id)a4
{
  v4 = MEMORY[0x1EEE9AC00](self);
  v6 = v5;
  v7 = v4;
  v9 = v8;
  v10 = v6;
  if (v9 && ([v9 imageryInfo], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "dataFormatVersion"), v11, v12 < 3))
  {
    v14 = +[VKSharedResourcesManager sharedResources];
    [v14 startDecompressionSession];

    v15 = GEOGetVectorKitVKMapViewMuninLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2754000, v15, OS_LOG_TYPE_INFO, "Enter for storefront view", buf, 2u);
    }

    v16 = GEOGetVectorKitVKMapViewMuninLog();
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EnterForStorefrontView", &unk_1B3514CAA, buf, 2u);
    }

    v17 = [v9 imageryInfo];

    md::mun::cameraFrameFromStorefront(v39, v9);
    [v7 setMapType:10];
    [v7 setShouldLoadFallbackTiles:0];
    v18 = +[VKDebugSettings sharedSettings];
    if (![v18 muninIgnorePlacesMetadata])
    {
      if (v10)
      {
        v19 = [v10 imageryInfo];

        v20 = v7[37];
        v22 = *v33;
        v23 = *&v33[8];
        v24 = *&v33[24];
        v25 = *v34;
        LODWORD(v26) = *&v34[8];
        *(&v26 + 4) = *&v34[12];
        v28 = v36;
        v27 = v35;
        geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v29, v37, &v30);
        *(v31 + 5) = *(v38 + 5);
        v31[0] = v38[0];
        v32 = 1;
        [v20 setCurrentPoint:buf secondaryPoint:&v22];
        if (v32 == 1)
        {
          geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v29);
        }

        geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v37);
      }

      else
      {
        [v7[37] setCurrentPoint:buf];
      }
    }

    v21 = v7[37];
    *v33 = v39[0];
    *&v33[16] = v39[1];
    *v34 = v39[2];
    *&v34[16] = v40;
    [v21 setCameraFrame:{v33, v22, v23, v24, v25, v26, v27, v28}];

    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(&v42);
  }

  else
  {
    v13 = GEOGetVectorKitVKMapViewMuninLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "Missing storefront info. Unable to enter munin.", buf, 2u);
    }

    [v7 setMapType:0];
  }
}

@end