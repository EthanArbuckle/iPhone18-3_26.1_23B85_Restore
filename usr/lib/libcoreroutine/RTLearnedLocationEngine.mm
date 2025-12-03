@interface RTLearnedLocationEngine
+ (id)computeVisitLabelingMetricsForLabelingRetried:(BOOL)retried labelingSkipped:(BOOL)skipped revGeoCalled:(BOOL)called bluePOICalled:(BOOL)iCalled unlabeledVisit:(BOOL)visit visitAge:(double)age error:(id)error;
+ (id)stringFromTrainMode:(unint64_t)mode;
+ (id)stringFromTrainResult:(unint64_t)result;
+ (void)submitVisitLabelingMetricsForLabelingRetried:(BOOL)retried labelingSkipped:(BOOL)skipped revGeoCalled:(BOOL)called bluePOICalled:(BOOL)iCalled unlabeledVisit:(BOOL)visit visitAge:(double)age error:(id)error;
- (BOOL)_appendVisits:(id)visits lastVisit:(id)visit lastTransition:(id)transition outError:(id *)error;
- (BOOL)_appendVisitsToLocationsOfInterestModelWithError:(id *)error;
- (BOOL)_applyUserCuration:(id)curation relabelerPersister:(id)persister harvestCuration:(BOOL)harvestCuration error:(id *)p_isa;
- (BOOL)_applyUserCurationsSubmittedSince:(id)since error:(id *)error;
- (BOOL)_classifyPlaceTypes:(id *)types;
- (BOOL)_consolidateKnownPlaceTypesWithError:(id *)error;
- (BOOL)_curateVisit:(id)visit newLabel:(id)label relabelerPersister:(id)persister error:(id *)error;
- (BOOL)_curateVisits:(id)visits newLabel:(id)label relabelerPersister:(id)persister error:(id *)error;
- (BOOL)_deferSubmittingLoiMetricsDueToNoTrainingSinceLastSubmission;
- (BOOL)_deferTrainingDueToAvailability;
- (BOOL)_deferTrainingDueToRecentResetSync;
- (BOOL)_deferTrainingLOIsDueToCloudStoreNotChangeSinceLastTrainingDate:(id)date;
- (BOOL)_deferTrainingOnBatteryDueToLackOfLongVisitSinceDate:(id)date;
- (BOOL)_enableTrainOnBatteryForTripSegments;
- (BOOL)_generateDiagnosticFilesAtURL:(id)l error:(id *)error;
- (BOOL)_homeLocationOfInterestExist;
- (BOOL)_isAOIInferredMapItem:(id)item;
- (BOOL)_isAuthorized;
- (BOOL)_isBluePOICalledForVisit:(id)visit providers:(id)providers;
- (BOOL)_isDeviceCharging;
- (BOOL)_isFinerGranularityPOIInferredMapItem:(id)item;
- (BOOL)_isLearnedLocationOfInterestGraphSignificantlyChanged:(id)changed graphUUIDsAfterTrain:(id)train;
- (BOOL)_isNotTooOldToLabelVisit:(id)visit;
- (BOOL)_isRecentVisit:(id)visit;
- (BOOL)_isUpdateLearnedPlaceWithGEOAddressObjectSerializationRequired:(id)required;
- (BOOL)_isUpdateLearnedPlaceWithGeomapItemIdentifierRequired:(id)required;
- (BOOL)_isUpdateLearnedPlaceWithISO3166CountryCodeAndSubdivisionCodeRequired:(id)required;
- (BOOL)_isUpdateLearnedPlaceWithMapItemPlaceTypeRequired:(id)required;
- (BOOL)_isUpdateLearnedPlaceWithPOICategoryCodeRequired:(id)required;
- (BOOL)_isUpdateLearnedPlaceWithPOICategoryMUIDRequired:(id)required;
- (BOOL)_momentsdOnBoarding;
- (BOOL)_processVisits:(id)visits forLastLearnedVisit:(id)visit error:(id *)error;
- (BOOL)_purgeWithReferenceDate:(id)date error:(id *)error;
- (BOOL)_reconcileLearnedLocationsWithError:(id *)error;
- (BOOL)_recoverKnownPlaceTypesWithPlaceTypeClassifier:(id)classifier outError:(id *)error;
- (BOOL)_refreshMapItemsForLocationsOfInterestWithError:(id *)error;
- (BOOL)_relabelWithError:(id *)error;
- (BOOL)_relabelWithRelabeler:(id)relabeler relabelerPersister:(id)persister error:(id *)error;
- (BOOL)_removeUnusedMapItems:(id *)items;
- (BOOL)_retrainVisitsWithoutPlaces:(id *)places;
- (BOOL)_saveIdentifiersOfKnownPlaceTypesWithError:(id *)error;
- (BOOL)_shouldFilterError:(id)error;
- (BOOL)_skipLabelingForVisit:(id)visit;
- (BOOL)_submitDailyUserCurationMetrics;
- (BOOL)_submitDailyVisitMetrics;
- (BOOL)_trainLocationsOfInterestModelWithError:(id *)error;
- (BOOL)_trainVisitsFromDate:(id)date toDate:(id)toDate forLastLearnedVisit:(id)visit error:(id *)error;
- (BOOL)_updateExpirationDateOfStoredUserCuration:(id)curation associatedVisits:(id)visits error:(id *)error;
- (BOOL)_verifyVisitGraphExpirationDates:(id *)dates;
- (RTLearnedLocationEngine)initWithAccountManager:(id)manager biomeManager:(id)biomeManager bluePOIMetricManager:(id)metricManager bluePOIMonitor:(id)monitor bluePOITileManager:(id)tileManager contactsManager:(id)contactsManager dailyTrainingSessionCounter:(id)counter defaultsManager:(id)self0 diagnostics:(id)self1 distanceCalculator:(id)self2 elevationManager:(id)self3 eventManager:(id)self4 fingerprintManager:(id)self5 learnedLocationStore:(id)self6 learnedPlaceTypeInferenceStore:(id)self7 locationManager:(id)self8 locationStore:(id)self9 mapItemManager:(id)itemManager mapServiceManager:(id)serviceManager mapsSupportManager:(id)supportManager metricManager:(id)a23 motionActivityManager:(id)activityManager placeInferenceQueryStore:(id)queryStore platform:(id)platform pointOfInterestMetricsManager:(id)metricsManager portraitManager:(id)portraitManager reconcilerPerVisit:(id)visit reconcilerPerDevice:(id)manager0 settledStateTransitionStore:(id)manager1 transitMetricManager:(id)manager2 tripSegmentProvider:(id)manager3 userCurationStore:(id)manager4 visitManager:(id)manager5 xpcActivityManager:(id)manager6 batteryManager:(id)manager7;
- (RTLearnedLocationEngineProtocol)delegate;
- (id)_bestFusedInferredMapItemForVisit:(id)visit fromCandidates:(id)candidates snapToBestAoi:(BOOL)aoi error:(id *)error;
- (id)_bestInferredMapItemForVisit:(id)visit bestFinerGranularityInferredMapItem:(id *)item error:(id *)error;
- (id)_candidatesForInferredMapItems:(id)items error:(id *)error;
- (id)_candidatesForVisit:(id)visit providers:(id)providers continueOnError:(BOOL)error error:(id *)a6;
- (id)_createLOIForPlace:(id)place error:(id *)error;
- (id)_createLocationOfInterestsWithVisits:(id)visits visitToTransitionMapping:(id)mapping visitToPlaceMapping:(id)placeMapping;
- (id)_enabledMapItemProviders;
- (id)_extractBluePOIQueriesJSONDObjectBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error;
- (id)_extractBluePOIQueriesJSONDObjectForVisit:(id)visit bluePOIMapItemProvider:(id)provider;
- (id)_fetchCloudCurrentDeviceVisitsBetweenStartDate:(id)date endDate:(id)endDate ascending:(BOOL)ascending error:(id *)error;
- (id)_filterVisits:(id)visits lastLearnedVisit:(id)visit;
- (id)_findOrCreateLOIForMapItem:(id)item error:(id *)error;
- (id)_findVisitsAssociatedWithCurrentPlaceCuration:(id)curation error:(id *)error;
- (id)_findVisitsAssociatedWithHistoricalVisitCuration:(id)curation error:(id *)error;
- (id)_finerGranularityCandidatesDictionaryForFusionCandidates:(id)candidates;
- (id)_finerGranularityPOIForInferredMapItem:(id)item visit:(id)visit finerGranularityCandidatesDictionary:(id)dictionary error:(id *)error;
- (id)_getDailyTrainingMetrics;
- (id)_getUUIDSetOfLocationsOfInterestWithError:(id *)error;
- (id)_lastVisitWithError:(id *)error;
- (id)_mapItemProviderForClass:(Class)class error:(id *)error;
- (id)_mapItemsWithUserCurationCorrection:(id)correction error:(id *)error;
- (id)_maximumExpirationDateForLearnedPlace:(id)place;
- (id)_performPerDeviceReconiliationWithError:(id *)error;
- (id)_performPerVisitReconciliationWithError:(id *)error;
- (id)_placeForMapItem:(id)item error:(id *)error;
- (id)_storedMapItemForMapItem:(id)item error:(id *)error;
- (id)_transitionsForVisits:(id)visits lastLearnedVisit:(id)visit creationDate:(id)date;
- (id)_updateLearnedPlaceWithCategory:(id)category;
- (id)_updateLearnedPlaceWithCategoryMUID:(id)d;
- (id)_updateLearnedPlaceWithGEOAddressObjectSerialization:(id)serialization;
- (id)_updateLearnedPlaceWithGeomapItemIdentifier:(id)identifier;
- (id)_updateLearnedPlaceWithISO3166CountryCodeAndSubdivisionCode:(id)code;
- (id)_updateLearnedPlaceWithMapItemPlaceType:(id)type;
- (id)_updateLocationOfInterestsWithVisits:(id)visits visitToTransitionMapping:(id)mapping visitToLocationOfInterestMapping:(id)interestMapping;
- (id)_visitsFromDate:(id)date toDate:(id)toDate error:(id *)error;
- (id)calculateMetricsToReplayOldHomeWorkInferenceAlgoWithStartDate:(id)date endDate:(id)endDate homeMapItem:(id)item workMapItem:(id)mapItem locationsOfOthers:(id *)others error:(id *)error;
- (id)createRelabeler;
- (id)createRelabelerPersisterWithError:(id *)error;
- (id)dataWithBluePOIQueriesBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error;
- (id)extractCandidate:(id)candidate fromNearbyCandidates:(id)candidates extractedCandidate:(id *)extractedCandidate error:(id *)error;
- (id)getNearbyCandidatesAroundLocation:(id)location distance:(double)distance loiIdentifierToCoalescedSourceMap:(id)map error:(id *)error;
- (id)getRelabeledInferredMapItemForCandidate:(id)candidate relabeler:(id)relabeler loiIdentifierToCoalescedSourceMap:(id)map submitMetrics:(BOOL)metrics error:(id *)error;
- (unint64_t)_evaluateTrainResultFromGraphUUIDsBeforeTrain:(id)train graphUUIDsAfterTrain:(id)afterTrain;
- (void)_classifyPlaceTypesWithHandler:(id)handler;
- (void)_deferTrainingDueToXPCActivityState:(BOOL)state;
- (void)_fetchLatestVisitWithHandler:(id)handler;
- (void)_harvestVisits:(id)visits places:(id)places;
- (void)_logCloudStoreWithReason:(id)reason;
- (void)_logDatabasesWithReason:(id)reason;
- (void)_logLocalStoreWithReason:(id)reason;
- (void)_onContactsManagerNotification:(id)notification;
- (void)_onDailyMetricsNotification:(id)notification;
- (void)_onFingerprintManagerNotification:(id)notification;
- (void)_onLearnedLocationStoreNotification:(id)notification;
- (void)_onMapsSupportManagerNotification:(id)notification;
- (void)_onVisitManagerNotification:(id)notification;
- (void)_reconcileLearnedLocationsWithHandler:(id)handler;
- (void)_registerForNotifications;
- (void)_registerXpcActivityTrainOnBattery;
- (void)_requestTrainLocationsOfInterestModelWithHandler:(id)handler;
- (void)_setup;
- (void)_setupTrainingMetricsFromDate:(id)date toDate:(id)toDate mode:(unint64_t)mode reason:(unint64_t)reason;
- (void)_setupXpcActivityTrain;
- (void)_shutdown;
- (void)_submitDailyTrainingMetrics;
- (void)_submitDailyTrainingSessionCount;
- (void)_submitMetricsForApplicationOfCuratedLabel:(id)label visit:(id)visit result:(unint64_t)result;
- (void)_submitMetricsForVisit:(id)visit possibleInferredMapItems:(id)items selectedInferredMapItem:(id)item;
- (void)_submitPlaceTypeClassificationFeatureInputMetrics;
- (void)_teardownTrainingMetrics;
- (void)_teardownXpcActivityTrain;
- (void)_trainForReason:(unint64_t)reason mode:(unint64_t)mode handler:(id)handler;
- (void)_trainWithFromDate:(id)date ToDate:(id)toDate forLastLearnedVisit:(id)visit reason:(unint64_t)reason mode:(unint64_t)mode handler:(id)handler;
- (void)_unregisterForNotifications;
- (void)_unregisterXpcActivityTrainOnBattery;
- (void)_updateMonitorFingerprintsWithVisit:(id)visit;
- (void)_updateUnlabeledVisitsWithPlaceInformation:(id)information;
- (void)applyUserCuration:(id)curation harvestCuration:(BOOL)harvestCuration handler:(id)handler;
- (void)calculateNewMetricsAndSubmitAlongWithTheOldMetrics:(id)metrics startDate:(id)date endDate:(id)endDate homeMapItem:(id)item workMapItem:(id)mapItem distanceThresholdArray:(id)array locationsOfOthers:(id)others;
- (void)classifyPlaceTypesWithHandler:(id)handler;
- (void)deferTrainingDueToXPCActivityState:(BOOL)state;
- (void)didClear;
- (void)didFinishTraining;
- (void)didUpdateWithIntervalSinceLastUpdate:(double)update trainMode:(unint64_t)mode trainResult:(unint64_t)result;
- (void)fetchFusionCandidatesForVisit:(id)visit handler:(id)handler;
- (void)onContactsManagerNotification:(id)notification;
- (void)onDailyMetricsNotification:(id)notification;
- (void)onFingerprintManagerNotification:(id)notification;
- (void)onLearnedLocationStoreNotification:(id)notification;
- (void)onMapsSupportManagerNotification:(id)notification;
- (void)onVisitManagerNotification:(id)notification;
- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion;
- (void)performTransitAnalyticsWithHandler:(id)handler;
- (void)queryMapItemProvider:(id)provider options:(id)options handler:(id)handler;
- (void)reconcileLearnedLocationsWithHandler:(id)handler;
- (void)relabelWithHandler:(id)handler;
- (void)requestTrainLocationsOfInterestModelWithHandler:(id)handler;
- (void)sendDiagnosticsToURL:(id)l options:(id)options handler:(id)handler;
- (void)setMonitorFingerprints:(BOOL)fingerprints;
- (void)setRegisterTrainOnBattery:(BOOL)battery;
- (void)setup;
- (void)shutdown;
- (void)submitVisitSettledStateMetricsForVisits:(id)visits transitions:(id)transitions;
- (void)trainForReason:(unint64_t)reason mode:(unint64_t)mode handler:(id)handler;
- (void)trainLocationsOfInterestModelWithHandler:(id)handler;
- (void)willBeginTraining;
@end

@implementation RTLearnedLocationEngine

- (RTLearnedLocationEngine)initWithAccountManager:(id)manager biomeManager:(id)biomeManager bluePOIMetricManager:(id)metricManager bluePOIMonitor:(id)monitor bluePOITileManager:(id)tileManager contactsManager:(id)contactsManager dailyTrainingSessionCounter:(id)counter defaultsManager:(id)self0 diagnostics:(id)self1 distanceCalculator:(id)self2 elevationManager:(id)self3 eventManager:(id)self4 fingerprintManager:(id)self5 learnedLocationStore:(id)self6 learnedPlaceTypeInferenceStore:(id)self7 locationManager:(id)self8 locationStore:(id)self9 mapItemManager:(id)itemManager mapServiceManager:(id)serviceManager mapsSupportManager:(id)supportManager metricManager:(id)a23 motionActivityManager:(id)activityManager placeInferenceQueryStore:(id)queryStore platform:(id)platform pointOfInterestMetricsManager:(id)metricsManager portraitManager:(id)portraitManager reconcilerPerVisit:(id)visit reconcilerPerDevice:(id)manager0 settledStateTransitionStore:(id)manager1 transitMetricManager:(id)manager2 tripSegmentProvider:(id)manager3 userCurationStore:(id)manager4 visitManager:(id)manager5 xpcActivityManager:(id)manager6 batteryManager:(id)manager7
{
  obj = manager;
  managerCopy = manager;
  biomeManagerCopy = biomeManager;
  biomeManagerCopy2 = biomeManager;
  metricManagerCopy = metricManager;
  metricManagerCopy2 = metricManager;
  monitorCopy = monitor;
  monitorCopy2 = monitor;
  tileManagerCopy = tileManager;
  tileManagerCopy2 = tileManager;
  contactsManagerCopy = contactsManager;
  contactsManagerCopy2 = contactsManager;
  counterCopy = counter;
  counterCopy2 = counter;
  defaultsManagerCopy = defaultsManager;
  diagnosticsCopy = diagnostics;
  diagnosticsCopy2 = diagnostics;
  calculatorCopy = calculator;
  elevationManagerCopy = elevationManager;
  eventManagerCopy = eventManager;
  fingerprintManagerCopy = fingerprintManager;
  storeCopy = store;
  inferenceStoreCopy = inferenceStore;
  locationManagerCopy = locationManager;
  locationStoreCopy = locationStore;
  itemManagerCopy = itemManager;
  serviceManagerCopy = serviceManager;
  supportManagerCopy = supportManager;
  v77 = a23;
  activityManagerCopy = activityManager;
  queryStoreCopy = queryStore;
  platformCopy = platform;
  metricsManagerCopy = metricsManager;
  portraitManagerCopy = portraitManager;
  visitCopy = visit;
  deviceCopy = device;
  transitionStoreCopy = transitionStore;
  transitMetricManagerCopy = transitMetricManager;
  providerCopy = provider;
  curationStoreCopy = curationStore;
  visitManagerCopy = visitManager;
  xpcActivityManagerCopy = xpcActivityManager;
  batteryManagerCopy = batteryManager;
  if (!managerCopy)
  {
    v42 = biomeManagerCopy2;
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
LABEL_36:

      v48 = 0;
      v49 = managerCopy;
      v43 = metricManagerCopy2;
LABEL_77:
      v54 = v77;
      v53 = calculatorCopy;
      v56 = providerCopy;
      v55 = transitMetricManagerCopy;
      selfCopy = self;
      goto LABEL_78;
    }

    *buf = 0;
    v52 = "Invalid parameter not satisfying: accountManager";
LABEL_50:
    _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, v52, buf, 2u);
    goto LABEL_36;
  }

  v42 = biomeManagerCopy2;
  if (!biomeManagerCopy2)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v43 = metricManagerCopy2;
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: biomeManager";
LABEL_75:
    _os_log_error_impl(&dword_2304B3000, v50, OS_LOG_TYPE_ERROR, v51, buf, 2u);
    goto LABEL_76;
  }

  v43 = metricManagerCopy2;
  if (!metricManagerCopy2)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: bluePOIMetricManager";
    goto LABEL_75;
  }

  if (!monitorCopy2)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: bluePOIMonitor";
    goto LABEL_75;
  }

  if (!tileManagerCopy2)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: bluePOITileManager";
    goto LABEL_75;
  }

  if (!contactsManagerCopy2)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: contactsManager";
    goto LABEL_75;
  }

  if (!counterCopy2)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: dailyTrainingSessionCounter";
    goto LABEL_75;
  }

  if (!defaultsManagerCopy)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_75;
  }

  if (!diagnosticsCopy2)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: diagnostics";
    goto LABEL_75;
  }

  if (!elevationManagerCopy)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: elevationManager";
    goto LABEL_75;
  }

  if (!eventManagerCopy)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: eventManager";
    goto LABEL_75;
  }

  if (!fingerprintManagerCopy)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: fingerprintManager";
    goto LABEL_75;
  }

  if (!storeCopy)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: learnedLocationStore";
    goto LABEL_75;
  }

  if (!inferenceStoreCopy)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: learnedPlaceTypeInferenceStore";
    goto LABEL_75;
  }

  if (!locationManagerCopy)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_75;
  }

  if (!locationStoreCopy)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: locationStore";
    goto LABEL_75;
  }

  if (!itemManagerCopy)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: mapItemManager";
    goto LABEL_75;
  }

  if (!serviceManagerCopy)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: mapServiceManager";
    goto LABEL_75;
  }

  if (!supportManagerCopy)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v51 = "Invalid parameter not satisfying: mapsSupportManager";
      goto LABEL_75;
    }

LABEL_76:

    v48 = 0;
    v49 = managerCopy;
    goto LABEL_77;
  }

  if (!activityManagerCopy)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v52 = "Invalid parameter not satisfying: motionActivityManager";
    goto LABEL_50;
  }

  if (!queryStoreCopy)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v52 = "Invalid parameter not satisfying: placeInferenceQueryStore";
    goto LABEL_50;
  }

  if (!platformCopy)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v52 = "Invalid parameter not satisfying: platform";
    goto LABEL_50;
  }

  if (!metricsManagerCopy)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v52 = "Invalid parameter not satisfying: pointOfInterestMetricsManager";
    goto LABEL_50;
  }

  if (!portraitManagerCopy)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v52 = "Invalid parameter not satisfying: portraitManager";
    goto LABEL_50;
  }

  if (!visitCopy)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v52 = "Invalid parameter not satisfying: reconcilerPerVisit";
    goto LABEL_50;
  }

  if (!deviceCopy)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v52 = "Invalid parameter not satisfying: reconcilerPerDevice";
    goto LABEL_50;
  }

  if (!transitionStoreCopy)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v52 = "Invalid parameter not satisfying: settledStateTransitionStore";
    goto LABEL_50;
  }

  if (!curationStoreCopy)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v52 = "Invalid parameter not satisfying: userCurationStore";
    goto LABEL_50;
  }

  if (!visitManagerCopy)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v52 = "Invalid parameter not satisfying: visitManager";
    goto LABEL_50;
  }

  if (!xpcActivityManagerCopy)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v52 = "Invalid parameter not satisfying: xpcActivityManager";
    goto LABEL_50;
  }

  if (!batteryManagerCopy)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v52 = "Invalid parameter not satisfying: batteryManager";
    goto LABEL_50;
  }

  v109.receiver = self;
  v109.super_class = RTLearnedLocationEngine;
  v74 = [(RTLearnedLocationEngine *)&v109 init];
  if (v74)
  {
    v44 = v74;
    v45 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [(RTLearnedLocationEngine *)v44 UTF8String];
    }

    else
    {
      contactsManager = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v44, counter, obj, biomeManager, diagnostics, metricManagerCopy, monitor, tileManager, contactsManager];
      uTF8String = [contactsManager UTF8String];
    }

    v60 = dispatch_queue_create(uTF8String, v45);

    queue = v44->_queue;
    v44->_queue = v60;

    objc_storeStrong(&v44->_accountManager, obj);
    objc_storeStrong(&v44->_biomeManager, biomeManagerCopy);
    objc_storeStrong(&v44->_bluePOIMetricManager, metricManagerCopy);
    objc_storeStrong(&v44->_bluePOIMonitor, monitorCopy);
    objc_storeStrong(&v44->_bluePOITileManager, tileManagerCopy);
    objc_storeStrong(&v44->_contactsManager, contactsManagerCopy);
    objc_storeStrong(&v44->_dailyTrainingSessionCounter, counterCopy);
    objc_storeStrong(&v44->_defaultsManager, defaultsManager);
    objc_storeStrong(&v44->_diagnostics, diagnosticsCopy);
    objc_storeStrong(&v44->_distanceCalculator, calculator);
    objc_storeStrong(&v44->_elevationManager, elevationManager);
    objc_storeStrong(&v44->_eventManager, eventManager);
    objc_storeStrong(&v44->_fingerprintManager, fingerprintManager);
    objc_storeStrong(&v44->_learnedLocationStore, store);
    objc_storeStrong(&v44->_learnedPlaceTypeInferenceStore, inferenceStore);
    objc_storeStrong(&v44->_locationManager, locationManager);
    objc_storeStrong(&v44->_locationStore, locationStore);
    objc_storeStrong(&v44->_mapItemManager, itemManager);
    objc_storeStrong(&v44->_mapServiceManager, serviceManager);
    objc_storeStrong(&v44->_mapsSupportManager, supportManager);
    objc_storeStrong(&v44->_metricManager, a23);
    objc_storeStrong(&v44->_batteryManager, batteryManager);
    v62 = [[RTPlaceTypeClassifierMetricsCalculator alloc] initWithDistanceCalculator:v44->_distanceCalculator learnedLocationStore:v44->_learnedLocationStore learnedPlaceTypeInferenceStore:v44->_learnedPlaceTypeInferenceStore metricManager:v44->_metricManager];
    placeTypeClassifierMetricsCalculator = v44->_placeTypeClassifierMetricsCalculator;
    v44->_placeTypeClassifierMetricsCalculator = v62;

    objc_storeStrong(&v44->_motionActivityManager, activityManager);
    objc_storeStrong(&v44->_placeInferenceQueryStore, queryStore);
    objc_storeStrong(&v44->_platform, platform);
    objc_storeStrong(&v44->_pointOfInterestMetricsManager, metricsManager);
    objc_storeStrong(&v44->_portraitManager, portraitManager);
    objc_storeStrong(&v44->_reconcilerPerVisit, visit);
    objc_storeStrong(&v44->_reconcilerPerDevice, device);
    objc_storeStrong(&v44->_settledStateTransitionStore, transitionStore);
    objc_storeStrong(&v44->_transitMetricManager, transitMetricManager);
    objc_storeStrong(&v44->_tripSegmentProvider, provider);
    objc_storeStrong(&v44->_userCurationStore, curationStore);
    objc_storeStrong(&v44->_visitManager, visitManager);
    objc_storeStrong(&v44->_xpcActivityManager, xpcActivityManager);
    *&v44->_registerTrainOnBattery = 256;
    [(RTLearnedLocationEngine *)v44 setup];
  }

  selfCopy = v74;
  v48 = selfCopy;
  v49 = managerCopy;
  v43 = metricManagerCopy2;
  v54 = v77;
  v53 = calculatorCopy;
  v56 = providerCopy;
  v55 = transitMetricManagerCopy;
LABEL_78:

  return v48;
}

- (BOOL)_isDeviceCharging
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = dispatch_semaphore_create(0);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  batteryManager = [(RTLearnedLocationEngine *)self batteryManager];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __44__RTLearnedLocationEngine__isDeviceCharging__block_invoke;
  v25[3] = &unk_2788C8600;
  v27 = &v29;
  v28 = a2;
  v25[4] = self;
  v6 = v4;
  v26 = v6;
  [batteryManager fetchCurrentChargerConnectionState:v25];

  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = [callStackSymbols filteredArrayUsingPredicate:v14];
    firstObject = [v16 firstObject];

    [v13 submitToCoreAnalytics:firstObject type:1 duration:v12];
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v33 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;
    }
  }

  v23 = *(v30 + 24);
  _Block_object_dispose(&v29, 8);

  return v23 & 1;
}

intptr_t __44__RTLearnedLocationEngine__isDeviceCharging__block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 48) + 8) + 24) = a2 == 1;
  v3 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = NSStringFromSelector(*(a1 + 56));
    v7 = *(*(*(a1 + 48) + 8) + 24);
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 1026;
    v14 = v7;
    _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEFAULT, "%@:%@,BatteryStatus,isDeviceOnCharger,%{public}d", &v9, 0x1Cu);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_registerForNotifications
{
  contactsManager = [(RTLearnedLocationEngine *)self contactsManager];
  v4 = +[(RTNotification *)RTContactsManagerContactStoreMeContactDidChangeNotification];
  [contactsManager addObserver:self selector:sel_onContactsManagerNotification_ name:v4];

  visitManager = [(RTLearnedLocationEngine *)self visitManager];
  v6 = +[(RTNotification *)RTVisitManagerAvailableNotification];
  [visitManager addObserver:self selector:sel_onVisitManagerNotification_ name:v6];

  visitManager2 = [(RTLearnedLocationEngine *)self visitManager];
  v8 = +[(RTNotification *)RTVisitManagerLowConfidenceVisitIncidentNotification];
  [visitManager2 addObserver:self selector:sel_onVisitManagerNotification_ name:v8];

  visitManager3 = [(RTLearnedLocationEngine *)self visitManager];
  v10 = +[(RTNotification *)RTVisitManagerLeechedVisitIncidentNotification];
  [visitManager3 addObserver:self selector:sel_onVisitManagerNotification_ name:v10];

  mapsSupportManager = [(RTLearnedLocationEngine *)self mapsSupportManager];
  v12 = +[(RTNotification *)RTMapsSupportManagerQueryContentsDidChangeNotification];
  [mapsSupportManager addObserver:self selector:sel_onMapsSupportManagerNotification_ name:v12];

  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  v14 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  [learnedLocationStore addObserver:self selector:sel_onLearnedLocationStoreNotification_ name:v14];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_onDailyMetricsNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];
}

- (void)_unregisterForNotifications
{
  contactsManager = [(RTLearnedLocationEngine *)self contactsManager];
  [contactsManager removeObserver:self];

  fingerprintManager = [(RTLearnedLocationEngine *)self fingerprintManager];
  [fingerprintManager removeObserver:self];

  visitManager = [(RTLearnedLocationEngine *)self visitManager];
  [visitManager removeObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)_setupXpcActivityTrain
{
  v4 = [[RTXPCActivityCriteria alloc] initWithInterval:2 gracePeriod:1 priority:1 requireNetworkConnectivity:2 requireInexpensiveNetworkConnectivity:0 networkTransferDirection:1 allowBattery:14400.0 powerNap:7200.0];
  [(RTXPCActivityCriteria *)v4 setCpuIntensive:1];
  objc_initWeak(&location, self);
  xpcActivityManager = [(RTLearnedLocationEngine *)self xpcActivityManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__RTLearnedLocationEngine__setupXpcActivityTrain__block_invoke;
  v8[3] = &unk_2788C6A18;
  v9[1] = a2;
  objc_copyWeak(v9, &location);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__RTLearnedLocationEngine__setupXpcActivityTrain__block_invoke_469;
  v6[3] = &unk_2788C8650;
  v7[1] = a2;
  objc_copyWeak(v7, &location);
  [xpcActivityManager registerActivityWithIdentifier:@"com.apple.routined.learnedLocationEngine.train" criteria:v4 handler:v8 deferHandler:v6];

  objc_destroyWeak(v7);
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __49__RTLearnedLocationEngine__setupXpcActivityTrain__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412546;
        v15 = v8;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, error, %@", buf, 0x16u);
      }
    }

    if (v5)
    {
      v5[2](v5, v6, 0);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained deferTrainingDueToXPCActivityState:0];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __49__RTLearnedLocationEngine__setupXpcActivityTrain__block_invoke_466;
      v11[3] = &unk_2788C8628;
      v13 = *(a1 + 40);
      v12 = v5;
      [v10 trainForReason:1 mode:1 handler:v11];
    }

    else if (v5)
    {
      v5[2](v5, 0, 0);
    }
  }
}

void __49__RTLearnedLocationEngine__setupXpcActivityTrain__block_invoke_466(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(*(a1 + 40));
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, failed to train, error, %@", &v9, 0x16u);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, a3);
  }
}

void __49__RTLearnedLocationEngine__setupXpcActivityTrain__block_invoke_469(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained deferTrainingDueToXPCActivityState:1];
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, error, %@", &v7, 0x16u);
    }

LABEL_7:
  }
}

- (void)_registerXpcActivityTrainOnBattery
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [[RTXPCActivityCriteria alloc] initWithInterval:1 gracePeriod:1 priority:1 requireNetworkConnectivity:2 requireInexpensiveNetworkConnectivity:1 networkTransferDirection:1 allowBattery:1800.0 powerNap:900.0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(a2);
      *buf = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, XPC activity criteria, %@", buf, 0x16u);
    }
  }

  objc_initWeak(buf, self);
  xpcActivityManager = [(RTLearnedLocationEngine *)self xpcActivityManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__RTLearnedLocationEngine__registerXpcActivityTrainOnBattery__block_invoke;
  v8[3] = &unk_2788C6A18;
  v9[1] = a2;
  objc_copyWeak(v9, buf);
  [xpcActivityManager registerActivityWithIdentifier:@"com.apple.routined.learnedLocationEngine.train-on-battery" criteria:v4 handler:v8];

  objc_destroyWeak(v9);
  objc_destroyWeak(buf);
}

void __61__RTLearnedLocationEngine__registerXpcActivityTrainOnBattery__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412546;
        v16 = v8;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, error, %@", buf, 0x16u);
      }
    }

    if (v5)
    {
      v5[2](v5, v6, 0);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __61__RTLearnedLocationEngine__registerXpcActivityTrainOnBattery__block_invoke_471;
      v12[3] = &unk_2788C8678;
      v10 = v5;
      v11 = *(a1 + 40);
      v13 = v10;
      v14 = v11;
      v12[4] = WeakRetained;
      [WeakRetained trainForReason:1 mode:2 handler:v12];
    }

    else if (v5)
    {
      v5[2](v5, 0, 0);
    }
  }
}

void __61__RTLearnedLocationEngine__registerXpcActivityTrainOnBattery__block_invoke_471(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3, 0);
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = NSStringFromSelector(*(a1 + 48));
        v7 = 138412546;
        v8 = v6;
        v9 = 2112;
        v10 = v3;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, failed to train, error, %@", &v7, 0x16u);
      }
    }
  }

  else
  {
    [*(a1 + 32) setRegisterTrainOnBattery:0];
  }
}

- (void)_unregisterXpcActivityTrainOnBattery
{
  v42[1] = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__41;
  v37 = __Block_byref_object_dispose__41;
  v38 = 0;
  v4 = dispatch_semaphore_create(0);
  xpcActivityManager = [(RTLearnedLocationEngine *)self xpcActivityManager];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __63__RTLearnedLocationEngine__unregisterXpcActivityTrainOnBattery__block_invoke;
  v30 = &unk_2788C4618;
  v32 = &v33;
  v6 = v4;
  v31 = v6;
  [xpcActivityManager unregisterActivityWithIdentifier:@"com.apple.routined.learnedLocationEngine.train-on-battery" handler:&v27];

  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = [callStackSymbols filteredArrayUsingPredicate:v14];
    firstObject = [v16 firstObject];

    [v13 submitToCoreAnalytics:firstObject type:1 duration:v12];
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v42[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v42 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = v21;
  if (v23)
  {
    objc_storeStrong(v34 + 5, v21);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = NSStringFromSelector(a2);
      v26 = v34[5];
      *buf = 138412546;
      *&buf[4] = v25;
      v40 = 2112;
      v41 = v26;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, error, %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v33, 8);
}

void __63__RTLearnedLocationEngine__unregisterXpcActivityTrainOnBattery__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)setRegisterTrainOnBattery:(BOOL)battery
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_registerTrainOnBattery != battery)
  {
    batteryCopy = battery;
    self->_registerTrainOnBattery = battery;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        if (self->_registerTrainOnBattery)
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "register train on battery, %@", &v7, 0xCu);
      }

      if (!self->_registerTrainOnBattery)
      {
        goto LABEL_9;
      }
    }

    else if (!batteryCopy)
    {
LABEL_9:
      [(RTLearnedLocationEngine *)self _unregisterXpcActivityTrainOnBattery];
      return;
    }

    [(RTLearnedLocationEngine *)self _registerXpcActivityTrainOnBattery];
  }
}

- (void)_teardownXpcActivityTrain
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = dispatch_semaphore_create(0);
  xpcActivityManager = [(RTLearnedLocationEngine *)self xpcActivityManager];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __52__RTLearnedLocationEngine__teardownXpcActivityTrain__block_invoke;
  v26 = &unk_2788C4730;
  v5 = v3;
  v27 = v5;
  [xpcActivityManager unregisterActivityWithIdentifier:@"com.apple.routined.learnedLocationEngine.train" handler:&v23];

  v6 = v5;
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v6, v8))
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    [v9 timeIntervalSinceDate:v7];
    v11 = v10;
    v12 = objc_opt_new();
    v13 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v15 = [callStackSymbols filteredArrayUsingPredicate:v13];
    firstObject = [v15 firstObject];

    [v12 submitToCoreAnalytics:firstObject type:1 duration:v11];
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v17, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D01448];
    v28 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v28 count:1];
    v21 = [v18 errorWithDomain:v19 code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;
    }
  }
}

- (void)_fetchLatestVisitWithHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

    goto LABEL_6;
  }

  visitManager = [(RTLearnedLocationEngine *)self visitManager];

  if (visitManager)
  {
    v6 = [objc_alloc(MEMORY[0x277D01340]) initWithAscending:0 confidence:0 dateInterval:0 labelVisit:0 limit:&unk_28459D0F8];
    visitManager2 = [(RTLearnedLocationEngine *)self visitManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__RTLearnedLocationEngine__fetchLatestVisitWithHandler___block_invoke;
    v8[3] = &unk_2788C6D60;
    v9 = handlerCopy;
    [visitManager2 fetchStoredVisitsWithOptions:v6 handler:v8];

LABEL_6:
  }
}

void __56__RTLearnedLocationEngine__fetchLatestVisitWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)_setup
{
  [(RTLearnedLocationEngine *)self _registerForNotifications];

  [(RTLearnedLocationEngine *)self _setupXpcActivityTrain];
}

- (void)setup
{
  queue = [(RTLearnedLocationEngine *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__RTLearnedLocationEngine_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_shutdown
{
  [(RTLearnedLocationEngine *)self _teardownXpcActivityTrain];
  [(RTLearnedLocationEngine *)self _unregisterForNotifications];
  [(RTLearnedLocationEngine *)self setRegisterTrainOnBattery:0];
  accountManager = self->_accountManager;
  self->_accountManager = 0;

  contactsManager = self->_contactsManager;
  self->_contactsManager = 0;

  defaultsManager = self->_defaultsManager;
  self->_defaultsManager = 0;

  diagnostics = self->_diagnostics;
  self->_diagnostics = 0;

  eventManager = self->_eventManager;
  self->_eventManager = 0;

  fingerprintManager = self->_fingerprintManager;
  self->_fingerprintManager = 0;

  learnedLocationStore = self->_learnedLocationStore;
  self->_learnedLocationStore = 0;

  locationManager = self->_locationManager;
  self->_locationManager = 0;

  locationStore = self->_locationStore;
  self->_locationStore = 0;

  mapItemManager = self->_mapItemManager;
  self->_mapItemManager = 0;

  mapServiceManager = self->_mapServiceManager;
  self->_mapServiceManager = 0;

  mapsSupportManager = self->_mapsSupportManager;
  self->_mapsSupportManager = 0;

  metricManager = self->_metricManager;
  self->_metricManager = 0;

  motionActivityManager = self->_motionActivityManager;
  self->_motionActivityManager = 0;

  portraitManager = self->_portraitManager;
  self->_portraitManager = 0;

  visitManager = self->_visitManager;
  self->_visitManager = 0;

  xpcActivityManager = self->_xpcActivityManager;
  self->_xpcActivityManager = 0;
}

- (void)shutdown
{
  v22 = *MEMORY[0x277D85DE8];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__41;
  v16[4] = __Block_byref_object_dispose__41;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [v4 stringWithFormat:@"%@-%@", v6, v7];
  v9 = v8;
  [v8 UTF8String];
  v17 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      *buf = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  queue = [(RTLearnedLocationEngine *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__RTLearnedLocationEngine_shutdown__block_invoke;
  block[3] = &unk_2788C4FD8;
  block[4] = self;
  block[5] = v16;
  dispatch_async(queue, block);

  _Block_object_dispose(v16, 8);
}

void __35__RTLearnedLocationEngine_shutdown__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _shutdown];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (id)_lastVisitWithError:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__41;
  v45 = __Block_byref_object_dispose__41;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__41;
  v39 = __Block_byref_object_dispose__41;
  v40 = 0;
  v5 = dispatch_semaphore_create(0);
  learnedLocationStore = self->_learnedLocationStore;
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __47__RTLearnedLocationEngine__lastVisitWithError___block_invoke;
  v31 = &unk_2788C61C0;
  v33 = &v41;
  v34 = &v35;
  v7 = v5;
  v32 = v7;
  [(RTLearnedLocationStore *)learnedLocationStore fetchLastVisitWithHandler:&v28];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
    firstObject = [v17 firstObject];

    [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v47 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v47 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;

      v24 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = 1;
LABEL_8:

  v25 = v22;
  if ((v24 & 1) == 0)
  {
    objc_storeStrong(v36 + 5, v22);
  }

  if (error)
  {
    *error = v36[5];
  }

  v26 = v42[5];

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v26;
}

void __47__RTLearnedLocationEngine__lastVisitWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_visitsFromDate:(id)date toDate:(id)toDate error:(id *)error
{
  v65[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  toDateCopy = toDate;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__41;
  v56 = __Block_byref_object_dispose__41;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__41;
  v50 = __Block_byref_object_dispose__41;
  v51 = 0;
  v9 = dispatch_semaphore_create(0);
  visitManager = [(RTLearnedLocationEngine *)self visitManager];
  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = __56__RTLearnedLocationEngine__visitsFromDate_toDate_error___block_invoke;
  v42 = &unk_2788C4490;
  v44 = &v52;
  v45 = &v46;
  v11 = v9;
  v43 = v11;
  [visitManager fetchVisitsFromDate:dateCopy toDate:toDateCopy handler:&v39];

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
    firstObject = [v21 firstObject];

    [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v24 = MEMORY[0x277CCA9B8];
    v65[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v65 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

    if (v26)
    {
      v27 = v26;

      v28 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = 1;
LABEL_8:

  v29 = v26;
  if ((v28 & 1) == 0)
  {
    objc_storeStrong(v47 + 5, v26);
  }

  if (error)
  {
    *error = v47[5];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = [v53[5] count];
      stringFromDate = [dateCopy stringFromDate];
      stringFromDate2 = [toDateCopy stringFromDate];
      v34 = v47[5];
      *buf = 134218754;
      *&buf[4] = v31;
      v59 = 2112;
      v60 = stringFromDate;
      v61 = 2112;
      v62 = stringFromDate2;
      v63 = 2112;
      v64 = v34;
      _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%lu visits from, %@, to, %@, error, %@", buf, 0x2Au);
    }
  }

  [v53[5] enumerateObjectsUsingBlock:{&__block_literal_global_33, dateCopy, v39, v40, v41, v42}];
  v35 = v53[5];

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);

  return v35;
}

void __56__RTLearnedLocationEngine__visitsFromDate_toDate_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __56__RTLearnedLocationEngine__visitsFromDate_toDate_error___block_invoke_487(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218243;
      v7 = a3 + 1;
      v8 = 2117;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "visit %lu, %{sensitive}@", &v6, 0x16u);
    }
  }
}

- (id)_filterVisits:(id)visits lastLearnedVisit:(id)visit
{
  v50[3] = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  visitCopy = visit;
  v7 = MEMORY[0x277CCAC30];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __58__RTLearnedLocationEngine__filterVisits_lastLearnedVisit___block_invoke;
  v48[3] = &unk_2788C86C0;
  v8 = visitsCopy;
  v49 = v8;
  v9 = [v7 predicateWithBlock:v48];
  v10 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_493];
  exitDate = [visitCopy exitDate];
  v12 = exitDate;
  if (exitDate)
  {
    distantPast = exitDate;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v14 = distantPast;

  v15 = MEMORY[0x277CCAC30];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __58__RTLearnedLocationEngine__filterVisits_lastLearnedVisit___block_invoke_495;
  v46[3] = &unk_2788C86C0;
  v16 = v14;
  v47 = v16;
  v17 = [v15 predicateWithBlock:v46];
  v18 = MEMORY[0x277CCA920];
  v50[0] = v9;
  v50[1] = v10;
  v45 = v10;
  v50[2] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:3];
  v20 = [v18 andPredicateWithSubpredicates:v19];
  v21 = [v8 filteredArrayUsingPredicate:v20];

  lastObject = [v21 lastObject];
  v23 = lastObject;
  if (lastObject && ([lastObject exit], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
  {
    v41 = v9;
    v42 = v8;
    v43 = visitCopy;
    v44 = objc_opt_new();
    v26 = [v21 count];
    v27 = (v26 - 2);
    if (v26 >= 2)
    {
      v40 = v16;
      while (1)
      {
        entry = [v23 entry];
        v29 = [v21 objectAtIndexedSubscript:v27];
        exit = [v29 exit];
        [entry timeIntervalSinceDate:exit];
        if (v31 >= 180.0)
        {
          break;
        }

        location = [v23 location];
        v33 = [v21 objectAtIndexedSubscript:v27];
        location2 = [v33 location];
        [v44 distanceFromLocation:location toLocation:location2 error:0];
        v36 = v35;

        if (v36 >= 250.0)
        {
          goto LABEL_15;
        }

        v37 = [v21 objectAtIndexedSubscript:v27];

        v23 = v37;
        if (v27-- <= 0)
        {
          LODWORD(v27) = -1;
          v23 = v37;
          goto LABEL_15;
        }
      }

LABEL_15:
      v16 = v40;
    }

    v25 = [v21 subarrayWithRange:{0, v27 + 1}];

    v8 = v42;
    visitCopy = v43;
    v9 = v41;
  }

  else
  {
    v25 = v21;
  }

  return v25;
}

uint64_t __58__RTLearnedLocationEngine__filterVisits_lastLearnedVisit___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 entry];
  if (v4 && (v5 = v4, [v3 exit], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6) || (objc_msgSend(*(a1 + 32), "lastObject"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v3))
  {
    v9 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v11 = 138739971;
        v12 = v3;
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "dropping visit, %{sensitive}@. incomplete", &v11, 0xCu);
      }
    }

    v9 = 0;
  }

  return v9;
}

uint64_t __58__RTLearnedLocationEngine__filterVisits_lastLearnedVisit___block_invoke_491(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 exit];
  if (!v3 || (v4 = v3, [v2 entry], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "exit"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "compare:", v6), v6, v5, v4, v7 == -1))
  {
    v9 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v11 = 138739971;
        v12 = v2;
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "dropping visit, %{sensitive}@. failed integrity check", &v11, 0xCu);
      }
    }

    v9 = 0;
  }

  return v9;
}

uint64_t __58__RTLearnedLocationEngine__filterVisits_lastLearnedVisit___block_invoke_495(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 exit];
  v6 = [v4 earlierDate:v5];
  v7 = [v6 isEqualToDate:*(a1 + 32)];

  if ((v7 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138739971;
      v11 = v3;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "dropping visit, %{sensitive}@. redundant submission", &v10, 0xCu);
    }
  }

  return v7;
}

- (id)_mapItemProviderForClass:(Class)class error:(id *)error
{
  v43[1] = *MEMORY[0x277D85DE8];
  if (!class)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: providerClass", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"providerClass");
      *error = v10 = 0;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (objc_opt_class() == class)
  {
    v12 = [RTMapItemProviderLearnedPlace alloc];
    defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
    distanceCalculator = [(RTLearnedLocationEngine *)self distanceCalculator];
    learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
    v14 = [(RTMapItemProviderLearnedPlace *)v12 initWithDefaultsManager:defaultsManager distanceCalculator:distanceCalculator learnedLocationStore:learnedLocationStore];
LABEL_15:
    v10 = v14;
LABEL_19:

    goto LABEL_20;
  }

  if (objc_opt_class() == class)
  {
    v15 = [RTMapItemProviderProactiveExperts alloc];
    defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
    distanceCalculator = [(RTLearnedLocationEngine *)self distanceCalculator];
    learnedLocationStore = [(RTLearnedLocationEngine *)self mapServiceManager];
    portraitManager = [(RTLearnedLocationEngine *)self portraitManager];
    v17 = [(RTMapItemProviderProactiveExperts *)v15 initWithDefaultsManager:defaultsManager distanceCalculator:distanceCalculator mapServiceManager:learnedLocationStore personalizationPortraitManager:portraitManager];
LABEL_18:
    v10 = v17;

    goto LABEL_19;
  }

  if (objc_opt_class() == class)
  {
    v18 = [RTMapItemProviderEventKit alloc];
    defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
    distanceCalculator = [(RTLearnedLocationEngine *)self distanceCalculator];
    learnedLocationStore = [(RTLearnedLocationEngine *)self eventManager];
    portraitManager = [(RTLearnedLocationEngine *)self mapServiceManager];
    v17 = [(RTMapItemProviderEventKit *)v18 initWithDefaultsManager:defaultsManager distanceCalculator:distanceCalculator eventManager:learnedLocationStore mapServiceManager:portraitManager];
    goto LABEL_18;
  }

  if (objc_opt_class() == class)
  {
    v28 = [RTMapItemProviderMapsSupport alloc];
    defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
    distanceCalculator = [(RTLearnedLocationEngine *)self distanceCalculator];
    learnedLocationStore = [(RTLearnedLocationEngine *)self mapsSupportManager];
    v14 = [(RTMapItemProviderMapsSupport *)v28 initWithDefaultsManager:defaultsManager distanceCalculator:distanceCalculator mapsSupportManager:learnedLocationStore];
    goto LABEL_15;
  }

  if (objc_opt_class() == class)
  {
    v37 = [RTMapItemProviderBluePOI alloc];
    defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
    distanceCalculator = [(RTLearnedLocationEngine *)self bluePOIMetricManager];
    bluePOIMonitor = [(RTLearnedLocationEngine *)self bluePOIMonitor];
    bluePOITileManager = [(RTLearnedLocationEngine *)self bluePOITileManager];
    distanceCalculator2 = [(RTLearnedLocationEngine *)self distanceCalculator];
    fingerprintManager = [(RTLearnedLocationEngine *)self fingerprintManager];
    locationManager = [(RTLearnedLocationEngine *)self locationManager];
    mapItemManager = [(RTLearnedLocationEngine *)self mapItemManager];
    mapServiceManager = [(RTLearnedLocationEngine *)self mapServiceManager];
    motionActivityManager = [(RTLearnedLocationEngine *)self motionActivityManager];
    placeInferenceQueryStore = [(RTLearnedLocationEngine *)self placeInferenceQueryStore];
    platform = [(RTLearnedLocationEngine *)self platform];
    v10 = [(RTMapItemProviderBluePOI *)v37 initWithDefaultsManager:defaultsManager bluePOIMetricManager:distanceCalculator bluePOIMonitor:bluePOIMonitor bluePOITileManager:bluePOITileManager distanceCalculator:distanceCalculator2 fingerprintManager:fingerprintManager locationManager:locationManager mapItemManager:mapItemManager mapServiceManager:mapServiceManager motionActivityManager:motionActivityManager placeInferenceQueryStore:placeInferenceQueryStore platform:platform];

LABEL_20:
    if (v10)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (objc_opt_class() == class)
  {
    v32 = [RTMapItemProviderPOIHistory alloc];
    defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
    distanceCalculator = [(RTLearnedLocationEngine *)self distanceCalculator];
    learnedLocationStore = [(RTLearnedLocationEngine *)self placeInferenceQueryStore];
    v14 = [(RTMapItemProviderPOIHistory *)v32 initWithDefaultsManager:defaultsManager distanceCalculator:distanceCalculator placeInferenceQueryStore:learnedLocationStore];
    goto LABEL_15;
  }

  if (objc_opt_class() == class)
  {
    v7 = [RTMapItemProviderReverseGeocode alloc];
    defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
    distanceCalculator = [(RTLearnedLocationEngine *)self mapServiceManager];
    v10 = [(RTMapItemProviderReverseGeocode *)v7 initWithDefaultsManager:defaultsManager mapServiceManager:distanceCalculator];
    goto LABEL_20;
  }

LABEL_21:
  v19 = MEMORY[0x277CCACA8];
  v20 = NSStringFromClass(class);
  v21 = [v19 stringWithFormat:@"could not find provider %@", v20];

  v22 = MEMORY[0x277CCA9B8];
  v23 = *MEMORY[0x277D01448];
  v42 = *MEMORY[0x277CCA450];
  v43[0] = v21;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  v25 = [v22 errorWithDomain:v23 code:7 userInfo:v24];

  if (error)
  {
    v26 = v25;
    *error = v25;
  }

LABEL_24:
  v10 = 0;
LABEL_25:

  return v10;
}

- (id)_enabledMapItemProviders
{
  v63[2] = *MEMORY[0x277D85DE8];
  if ([(RTLearnedLocationEngine *)self _isAuthorized])
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = [MEMORY[0x277CBEB58] set];
    defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
    v7 = [defaultsManager objectForKey:@"RTDefaultsMapItemProviderDenyList"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __51__RTLearnedLocationEngine__enabledMapItemProviders__block_invoke;
      v55[3] = &unk_2788C4BA8;
      v56 = v5;
      [v7 enumerateObjectsUsingBlock:v55];
    }

    mEMORY[0x277D0EB00] = [MEMORY[0x277D0EB00] sharedConfiguration];
    v9 = [mEMORY[0x277D0EB00] defaultForKey:@"RTDefaultsMapItemProviderDenyList" defaultValue:MEMORY[0x277CBEBF8]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = MEMORY[0x277D85DD0];
      v51 = 3221225472;
      v52 = __51__RTLearnedLocationEngine__enabledMapItemProviders__block_invoke_2;
      v53 = &unk_2788C4BA8;
      v54 = v5;
      [v9 enumerateObjectsUsingBlock:&v50];
    }

    if (![(RTPlatform *)self->_platform iPhoneDevice:v50])
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v63[0] = v11;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v63[1] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
      [v5 addObjectsFromArray:v14];
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v5 containsObject:v16];

    if ((v17 & 1) == 0)
    {
      v18 = [(RTLearnedLocationEngine *)self _mapItemProviderForClass:objc_opt_class() error:0];
      if (v18)
      {
        [array addObject:v18];
      }
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v5 containsObject:v20];

    if ((v21 & 1) == 0)
    {
      v22 = [(RTLearnedLocationEngine *)self _mapItemProviderForClass:objc_opt_class() error:0];
      if (v22)
      {
        [array addObject:v22];
      }
    }

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v5 containsObject:v24];

    if ((v25 & 1) == 0)
    {
      v26 = [(RTLearnedLocationEngine *)self _mapItemProviderForClass:objc_opt_class() error:0];
      if (v26)
      {
        [array addObject:v26];
      }
    }

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [v5 containsObject:v28];

    if ((v29 & 1) == 0)
    {
      v30 = [(RTLearnedLocationEngine *)self _mapItemProviderForClass:objc_opt_class() error:0];
      if (v30)
      {
        [array addObject:v30];
      }
    }

    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v33 = [v5 containsObject:v32];

    if ((v33 & 1) == 0)
    {
      v34 = [(RTLearnedLocationEngine *)self _mapItemProviderForClass:objc_opt_class() error:0];
      if (v34)
      {
        [array addObject:v34];
      }
    }

    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v37 = [v5 containsObject:v36];

    if ((v37 & 1) == 0)
    {
      v38 = [(RTLearnedLocationEngine *)self _mapItemProviderForClass:objc_opt_class() error:0];
      if (v38)
      {
        [array addObject:v38];
      }
    }

    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v41 = [v5 containsObject:v40];

    if ((v41 & 1) == 0)
    {
      v42 = [(RTLearnedLocationEngine *)self _mapItemProviderForClass:objc_opt_class() error:0];
      if (v42)
      {
        [array addObject:v42];
      }

      lastObject = [array lastObject];
      v44 = [lastObject isMemberOfClass:objc_opt_class()];

      if ((v44 & 1) == 0)
      {
        v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v48 = objc_opt_class();
          v49 = NSStringFromClass(v48);
          *buf = 138412802;
          v58 = v49;
          v59 = 2080;
          v60 = "[RTLearnedLocationEngine _enabledMapItemProviders]";
          v61 = 1024;
          v62 = 983;
          _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "the last mapItem provider must be %@ (in %s:%d)", buf, 0x1Cu);
        }
      }
    }

LABEL_45:
    goto LABEL_47;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v46 = NSStringFromSelector(a2);
      *buf = 138412290;
      v58 = v46;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, not authorized to use mapItem providers", buf, 0xCu);
    }

    array = 0;
    goto LABEL_45;
  }

  array = 0;
LABEL_47:

  return array;
}

void __51__RTLearnedLocationEngine__enabledMapItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __51__RTLearnedLocationEngine__enabledMapItemProviders__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)fetchFusionCandidatesForVisit:(id)visit handler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (visitCopy)
    {
      queue = [(RTLearnedLocationEngine *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__RTLearnedLocationEngine_fetchFusionCandidatesForVisit_handler___block_invoke;
      block[3] = &unk_2788C67D8;
      block[4] = self;
      v17 = handlerCopy;
      v16 = visitCopy;
      dispatch_async(queue, block);
    }

    else
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "[RTLearnedLocationEngine fetchFusionCandidatesForVisit:handler:]";
        v22 = 1024;
        v23 = 993;
        _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit (in %s:%d)", buf, 0x12u);
      }

      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v18 = *MEMORY[0x277CCA450];
      v19 = @"requires a non-nil visit.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v14 = [v11 errorWithDomain:v12 code:7 userInfo:v13];
      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __65__RTLearnedLocationEngine_fetchFusionCandidatesForVisit_handler___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _enabledMapItemProviders];
  v3 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v18 = 0;
    v13 = [v11 _candidatesForVisit:v12 providers:v4 continueOnError:1 error:&v18];
    v14 = v18;
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v15 = *(a1 + 48);
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D01448];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"required at least one mapItem provider.";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v14 = [v16 errorWithDomain:v17 code:2 userInfo:v4];
    (*(v15 + 16))(v15, 0, v14);
  }
}

- (void)queryMapItemProvider:(id)provider options:(id)options handler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    providerCopy = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(providerCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, providerCopy, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

    goto LABEL_18;
  }

  if (!providerCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[RTLearnedLocationEngine queryMapItemProvider:options:handler:]";
      v40 = 1024;
      v41 = 1035;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: providerClassName (in %s:%d)", buf, 0x12u);
    }

    if (optionsCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (!optionsCopy)
  {
LABEL_11:
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[RTLearnedLocationEngine queryMapItemProvider:options:handler:]";
      v40 = 1024;
      v41 = 1036;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
    }

    if (providerCopy)
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277D01448];
      v34 = *MEMORY[0x277CCA450];
      v35 = @"requires a non-nil options";
      v19 = MEMORY[0x277CBEAC0];
      v20 = &v35;
      v21 = &v34;
LABEL_16:
      v22 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
      v23 = [v17 errorWithDomain:v18 code:7 userInfo:v22];
      handlerCopy[2](handlerCopy, 0, v23);

      goto LABEL_19;
    }

LABEL_15:
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277D01448];
    v36 = *MEMORY[0x277CCA450];
    v37 = @"requires a non-nil provider class name";
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v37;
    v21 = &v36;
    goto LABEL_16;
  }

  v11 = NSClassFromString(providerCopy);
  if (!v11)
  {
    providerCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"could not find provider %@", providerCopy];
    v24 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277D01448];
    v32 = *MEMORY[0x277CCA450];
    v33 = providerCopy;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v27 = [v24 errorWithDomain:v25 code:7 userInfo:v26];

    handlerCopy[2](handlerCopy, 0, v27);
LABEL_18:

    goto LABEL_19;
  }

  v12 = v11;
  queue = [(RTLearnedLocationEngine *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RTLearnedLocationEngine_queryMapItemProvider_options_handler___block_invoke;
  block[3] = &unk_2788C8708;
  block[4] = self;
  v31 = v12;
  v30 = handlerCopy;
  v29 = optionsCopy;
  dispatch_async(queue, block);

LABEL_19:
}

void __64__RTLearnedLocationEngine_queryMapItemProvider_options_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[7];
  v10 = 0;
  v4 = [v2 _mapItemProviderForClass:v3 error:&v10];
  v5 = v10;
  if (v5)
  {
    (*(a1[6] + 16))();
  }

  else
  {
    v6 = a1[5];
    v9 = 0;
    v7 = [v4 mapItemsWithOptions:v6 error:&v9];
    v8 = v9;
    (*(a1[6] + 16))();
  }
}

- (BOOL)_isAOIInferredMapItem:(id)item
{
  itemCopy = item;
  if (([itemCopy source] & 0x1841C0) != 0)
  {
    mapItem = [itemCopy mapItem];
    v5 = [mapItem mapItemPlaceType] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isFinerGranularityPOIInferredMapItem:(id)item
{
  itemCopy = item;
  if (([itemCopy source] & 0x1841C0) != 0)
  {
    mapItem = [itemCopy mapItem];
    v5 = [mapItem mapItemPlaceType] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_finerGranularityCandidatesDictionaryForFusionCandidates:(id)candidates
{
  v81 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(a2);
      *buf = 138412546;
      v78 = v6;
      v79 = 2048;
      v80 = [candidatesCopy count];
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, computing the finer granularity candidates, total count, %lu", buf, 0x16u);
    }
  }

  if ([candidatesCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v51 = candidatesCopy;
    v8 = candidatesCopy;
    v9 = [v8 countByEnumeratingWithState:&v70 objects:v76 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v71;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v71 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v70 + 1) + 8 * i);
          firstObject = [v13 firstObject];
          v15 = [(RTLearnedLocationEngine *)self _isAOIInferredMapItem:firstObject];

          if (v15)
          {
            firstObject2 = [v13 firstObject];
            [array addObject:firstObject2];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v70 objects:v76 count:16];
      }

      while (v10);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = NSStringFromSelector(a2);
        v19 = [array count];
        *buf = 138412546;
        v78 = v18;
        v79 = 2048;
        v80 = v19;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, AOI count, %lu", buf, 0x16u);
      }
    }

    v20 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(array, "count", v51)}];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = array;
    v21 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v67;
      v24 = MEMORY[0x277D86220];
      v54 = v20;
      v55 = v8;
      v53 = *v67;
      do
      {
        v25 = 0;
        v56 = v22;
        do
        {
          if (*v67 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v66 + 1) + 8 * v25);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v27 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              NSStringFromSelector(a2);
              v29 = v28 = v25;
              *buf = 138412546;
              v78 = v29;
              v79 = 2112;
              v80 = v26;
              _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, AOI candidate, %@", buf, 0x16u);

              v25 = v28;
            }
          }

          v30 = MEMORY[0x277CCABB0];
          mapItem = [v26 mapItem];
          v32 = [v30 numberWithUnsignedInteger:{objc_msgSend(mapItem, "muid")}];

          v33 = [v20 objectForKey:v32];
          v34 = [v33 count];

          v35 = v32;
          if (!v34)
          {
            v58 = v25;
            array2 = [MEMORY[0x277CBEB18] array];
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v61 = v8;
            v37 = [v61 countByEnumeratingWithState:&v62 objects:v74 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v63;
              v59 = array2;
              do
              {
                for (j = 0; j != v38; ++j)
                {
                  if (*v63 != v39)
                  {
                    objc_enumerationMutation(v61);
                  }

                  v41 = *(*(&v62 + 1) + 8 * j);
                  firstObject3 = [v41 firstObject];
                  v43 = [(RTLearnedLocationEngine *)self _isFinerGranularityPOIInferredMapItem:firstObject3];

                  if (v43)
                  {
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                    {
                      v44 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                      {
                        v45 = NSStringFromSelector(a2);
                        [v41 firstObject];
                        v46 = v35;
                        selfCopy = self;
                        v49 = v48 = v24;
                        *buf = 138412546;
                        v78 = v45;
                        v79 = 2112;
                        v80 = v49;
                        _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, "%@, finer granularity candidate, %@", buf, 0x16u);

                        v24 = v48;
                        self = selfCopy;
                        v35 = v46;
                        array2 = v59;
                      }
                    }

                    [array2 addObject:v41];
                  }
                }

                v38 = [v61 countByEnumeratingWithState:&v62 objects:v74 count:16];
              }

              while (v38);
            }

            v20 = v54;
            if ([array2 count])
            {
              [v54 setObject:array2 forKeyedSubscript:v35];
            }

            v8 = v55;
            v22 = v56;
            v23 = v53;
            v25 = v58;
          }

          ++v25;
        }

        while (v25 != v22);
        v22 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
      }

      while (v22);
    }

    candidatesCopy = v52;
  }

  else
  {
    v20 = MEMORY[0x277CBEC10];
  }

  return v20;
}

- (id)_finerGranularityPOIForInferredMapItem:(id)item visit:(id)visit finerGranularityCandidatesDictionary:(id)dictionary error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  visitCopy = visit;
  dictionaryCopy = dictionary;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 138412546;
      v28 = v15;
      v29 = 2048;
      v30 = [dictionaryCopy count];
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, finerGranularityCandidatesDictionary size, %lu", buf, 0x16u);
    }
  }

  v16 = MEMORY[0x277CCABB0];
  mapItem = [itemCopy mapItem];
  v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(mapItem, "muid")}];
  v19 = [dictionaryCopy objectForKeyedSubscript:v18];

  if ([v19 count] == 1)
  {
    firstObject = [v19 firstObject];
    v20FirstObject = [firstObject firstObject];
    v22 = 0;
  }

  else
  {
    if ([v19 count] < 2)
    {
      v22 = 0;
      v20FirstObject = 0;
      if (!error)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v26 = 0;
    firstObject = [(RTLearnedLocationEngine *)self _bestFusedInferredMapItemForVisit:visitCopy fromCandidates:v19 snapToBestAoi:0 error:&v26];
    v22 = v26;
    v20FirstObject = [firstObject convertToInferredMapItem];
  }

  if (error)
  {
LABEL_10:
    v23 = v22;
    *error = v22;
  }

LABEL_11:
  v24 = v20FirstObject;

  return v20FirstObject;
}

- (id)_candidatesForInferredMapItems:(id)items error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v8 = itemsCopy;
  if (itemsCopy)
  {
    aSelector = a2;
    errorCopy = error;
    v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
    array = [MEMORY[0x277CBEB18] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v36 = v8;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v44;
      v38 = *MEMORY[0x277D01448];
      v37 = *MEMORY[0x277CCA450];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v44 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v43 + 1) + 8 * i);
          *buf = 0;
          v42 = 0;
          learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
          mapItem = [v14 mapItem];
          v41 = 0;
          v17 = [learnedLocationStore placeTypeForMapItem:mapItem placeType:buf placeTypeSource:&v42 error:&v41];
          v18 = v41;

          if ((v17 & 1) == 0)
          {
            [array addObject:v18];
            *buf = 0;
            v42 = 0;
          }

          v19 = objc_alloc(MEMORY[0x277D011C0]);
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*buf];
          v21 = [v19 initWithFirstObject:v14 secondObject:v20];

          if (v21)
          {
            [v40 addObject:v21];
          }

          else
          {
            v22 = MEMORY[0x277CCACA8];
            v23 = [RTLearnedPlace placeTypeToString:*buf];
            v24 = [v22 stringWithFormat:@"candidate was nil for inferredMapItem, %@, placeType, %@", v14, v23];

            v25 = MEMORY[0x277CCA9B8];
            v50 = v37;
            v51 = v24;
            v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
            v27 = [v25 errorWithDomain:v38 code:0 userInfo:v26];

            [array addObject:v27];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v11);
    }

    if ([array count])
    {
      v28 = _RTSafeArray();
      v29 = _RTMultiErrorCreate();

      v30 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v33 = NSStringFromSelector(aSelector);
        *buf = 138412546;
        *&buf[4] = v33;
        v48 = 2112;
        v49 = v29;
        _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      if (errorCopy)
      {
        v31 = v29;
        *errorCopy = v29;
      }
    }

    v8 = v36;
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (BOOL)_shouldFilterError:(id)error
{
  errorCopy = error;
  if ([errorCopy isOnlyThrottlingError])
  {
    isBluePOITileNotAvailableError = 1;
  }

  else
  {
    isBluePOITileNotAvailableError = [errorCopy isBluePOITileNotAvailableError];
  }

  return isBluePOITileNotAvailableError;
}

- (id)_candidatesForVisit:(id)visit providers:(id)providers continueOnError:(BOOL)error error:(id *)a6
{
  v82 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  providersCopy = providers;
  v10 = providersCopy;
  if (!visitCopy)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit", buf, 2u);
    }

    if (a6)
    {
      v44 = @"visit";
LABEL_46:
      _RTErrorInvalidParameterCreate(v44);
      *a6 = array = 0;
      goto LABEL_53;
    }

LABEL_52:
    array = 0;
    goto LABEL_53;
  }

  if (!providersCopy)
  {
    v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: providers", buf, 2u);
    }

    if (a6)
    {
      v44 = @"providers";
      goto LABEL_46;
    }

    goto LABEL_52;
  }

  v49 = a6;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v50 = v10;
  obj = v10;
  v62 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
  if (v62)
  {
    v60 = *v71;
    v51 = visitCopy;
    while (2)
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v71 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v70 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = objc_alloc(MEMORY[0x277D011E0]);
        location = [visitCopy location];
        v16Location = [location location];
        entryDate = [visitCopy entryDate];
        exitDate = [visitCopy exitDate];
        v20 = v15;
        v21 = v14;
        v22 = [v20 initWithinDistance:v16Location location:entryDate startDate:exitDate endDate:50.0];

        if (([v13 skipForOptions:v22 error:0] & 1) == 0)
        {
          v69 = 0;
          v23 = [v13 mapItemsWithOptions:v22 error:&v69];
          v24 = v69;
          if (v24 && ![(RTLearnedLocationEngine *)self _shouldFilterError:v24])
          {
            [array2 addObject:v24];
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v25 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = objc_opt_class();
              v27 = NSStringFromClass(v26);
              v28 = [v23 count];
              *buf = 138412802;
              v76 = v27;
              v77 = 2048;
              v78 = v28;
              v79 = 2112;
              v80 = v24;
              _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "provider, %@, mapItems, %lu, error, %@", buf, 0x20u);
            }
          }

          if (([v13 isMemberOfClass:objc_opt_class()] & 1) != 0 || objc_msgSend(v13, "isMemberOfClass:", objc_opt_class()))
          {
            v68 = 0;
            selfCopy2 = self;
            v30 = [(RTLearnedLocationEngine *)self _mapItemsWithUserCurationCorrection:v23 error:&v68];

            v23 = v30;
          }

          else
          {
            selfCopy2 = self;
          }

          v67 = 0;
          v31 = [(RTLearnedLocationEngine *)selfCopy2 _candidatesForInferredMapItems:v23 error:&v67];
          v32 = v67;
          v33 = array2;
          if (v32)
          {
            [array2 addObject:v32];
          }

          v58 = v32;
          v59 = v23;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v34 = v31;
          v35 = [v34 countByEnumeratingWithState:&v63 objects:v74 count:16];
          if (v35)
          {
            v36 = v35;
            v54 = v24;
            v55 = v22;
            v56 = v21;
            v37 = 0;
            v38 = *v64;
            do
            {
              for (j = 0; j != v36; ++j)
              {
                if (*v64 != v38)
                {
                  objc_enumerationMutation(v34);
                }

                v40 = *(*(&v63 + 1) + 8 * j);
                secondObject = [v40 secondObject];
                unsignedIntegerValue = [secondObject unsignedIntegerValue];

                v37 |= (unsignedIntegerValue - 1) < 3;
                [array addObject:v40];
              }

              v36 = [v34 countByEnumeratingWithState:&v63 objects:v74 count:16];
            }

            while (v36);

            visitCopy = v51;
            v33 = array2;
            v22 = v55;
            v21 = v56;
            v24 = v54;
            if (v37)
            {
LABEL_47:

              objc_autoreleasePoolPop(v21);
              goto LABEL_48;
            }
          }

          else
          {
          }

          if (!error && [v33 count])
          {
            goto LABEL_47;
          }
        }

        objc_autoreleasePoolPop(v21);
      }

      v62 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
      if (v62)
      {
        continue;
      }

      break;
    }
  }

LABEL_48:

  v46 = array2;
  if (v49 && [array2 count])
  {
    v47 = _RTSafeArray();
    *v49 = _RTMultiErrorCreate();

    v46 = array2;
  }

  v10 = v50;
LABEL_53:

  return array;
}

- (id)_bestFusedInferredMapItemForVisit:(id)visit fromCandidates:(id)candidates snapToBestAoi:(BOOL)aoi error:(id *)error
{
  aoiCopy = aoi;
  v58 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  candidatesCopy = candidates;
  if (visitCopy)
  {
    v43 = aoiCopy;
    errorCopy = error;
    v45 = visitCopy;
    v46 = [[RTInferredMapItemFuser alloc] initWithDefaultsManager:self->_defaultsManager distanceCalculator:self->_distanceCalculator learnedLocationStore:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO) && [candidatesCopy count])
    {
      v12 = 0;
      v13 = MEMORY[0x277D86220];
      do
      {
        v14 = [candidatesCopy objectAtIndexedSubscript:v12];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = NSStringFromSelector(a2);
            firstObject = [v14 firstObject];
            secondObject = [v14 secondObject];
            v19 = +[RTLearnedPlace placeTypeToString:](RTLearnedPlace, "placeTypeToString:", [secondObject unsignedIntegerValue]);
            *buf = 138413059;
            v51 = v16;
            v52 = 2048;
            v53 = v12;
            v54 = 2117;
            v55 = firstObject;
            v56 = 2112;
            v57 = v19;
            _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, candidate %lu, inferredMapItem, %{sensitive}@, placeType, %@", buf, 0x2Au);
          }
        }

        ++v12;
      }

      while (v12 < [candidatesCopy count]);
    }

    visitCopy = v45;
    location = [v45 location];
    v20Location = [location location];
    v49 = 0;
    v22 = [(RTInferredMapItemFuser *)v46 fusedInferredMapItemsUsingCandidates:candidatesCopy referenceLocation:v20Location snapToBestKnownPlace:1 snapToBestAoi:v43 error:&v49];
    v23 = v49;

    v24 = [(RTInferredMapItemFuser *)v46 bestFromFusedInferredMapItems:v22];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = NSStringFromSelector(a2);
        *buf = 138412803;
        v51 = v26;
        v52 = 2117;
        v53 = v24;
        v54 = 2112;
        v55 = v23;
        _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, best fusedInferredMapItem, %{sensitive}@, error, %@", buf, 0x20u);
      }
    }

    v27 = objc_alloc_init(RTFusionMetrics);
    [(RTFusionMetrics *)v27 setMetricsUsingInputCandidates:candidatesCopy outputFusedInferredMapItems:v22 bestFusedInferredMapItem:v24 outputError:v23];
    v48 = 0;
    v28 = [(RTFusionMetrics *)v27 submitMetricsWithError:&v48];
    v29 = v48;
    if (v28)
    {
      if (!v23)
      {
        v44 = v24;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO) && [v22 count])
        {
          v35 = 0;
          v36 = MEMORY[0x277D86220];
          do
          {
            v37 = [v22 objectAtIndexedSubscript:v35];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              v38 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                v39 = NSStringFromSelector(a2);
                *buf = 138412803;
                v51 = v39;
                v52 = 2048;
                v53 = v35;
                v54 = 2117;
                v55 = v37;
                _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, fusedInferredMapItem %lu, %{sensitive}@", buf, 0x20u);

                visitCopy = v45;
              }
            }

            ++v35;
          }

          while (v35 < [v22 count]);
        }

        v24 = v44;
        v31 = v44;
        goto LABEL_37;
      }

      if (errorCopy)
      {
        v30 = v23;
        v31 = 0;
        *errorCopy = v23;
LABEL_37:

        goto LABEL_38;
      }
    }

    else
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v41 = NSStringFromSelector(a2);
        *buf = 138412546;
        v51 = v41;
        v52 = 2112;
        v53 = v29;
        _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, fusion metrics submission error, %@", buf, 0x16u);
      }

      if (errorCopy)
      {
        v34 = v29;
        v31 = 0;
        *errorCopy = v29;
        goto LABEL_37;
      }
    }

    v31 = 0;
    goto LABEL_37;
  }

  v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit", buf, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"visit");
    *error = v31 = 0;
  }

  else
  {
    v31 = 0;
  }

LABEL_38:

  return v31;
}

- (BOOL)_isRecentVisit:(id)visit
{
  creationDate = [visit creationDate];
  [creationDate timeIntervalSinceNow];
  v5 = v4 > -259200.0;

  return v5;
}

- (BOOL)_isNotTooOldToLabelVisit:(id)visit
{
  creationDate = [visit creationDate];
  [creationDate timeIntervalSinceNow];
  v5 = v4 > -604800.0;

  return v5;
}

- (BOOL)_skipLabelingForVisit:(id)visit
{
  visitCopy = visit;
  if ([(RTLearnedLocationEngine *)self _isRecentVisit:visitCopy])
  {
    v5 = 0;
  }

  else if ([(RTLearnedLocationEngine *)self _isNotTooOldToLabelVisit:visitCopy])
  {
    v5 = RTCommonRandomFlip();
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_isBluePOICalledForVisit:(id)visit providers:(id)providers
{
  v24 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = providers;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = objc_alloc(MEMORY[0x277D011E0]);
          location = [visitCopy location];
          v10Location = [location location];
          entryDate = [visitCopy entryDate];
          exitDate = [visitCopy exitDate];
          v14 = [v9 initWithinDistance:v10Location location:entryDate startDate:exitDate endDate:50.0];

          v15 = [v8 skipForOptions:v14 error:0];
          if (!v15)
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v5;
}

- (id)_bestInferredMapItemForVisit:(id)visit bestFinerGranularityInferredMapItem:(id *)item error:(id *)error
{
  v104[1] = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  array = [MEMORY[0x277CBEB18] array];
  creationDate = [visitCopy creationDate];
  [creationDate timeIntervalSinceNow];
  v13 = v12;

  _enabledMapItemProviders = [(RTLearnedLocationEngine *)self _enabledMapItemProviders];
  if (![_enabledMapItemProviders count])
  {
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277D01448];
    v103 = *MEMORY[0x277CCA450];
    v104[0] = @"required at least one mapItem provider.";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:&v103 count:1];
    v18 = [v23 errorWithDomain:v24 code:2 userInfo:v25];

    [objc_opt_class() submitVisitLabelingMetricsForLabelingRetried:0 labelingSkipped:1 revGeoCalled:0 bluePOICalled:0 unlabeledVisit:1 visitAge:v18 error:v13];
    if (error)
    {
      v26 = v18;
      v27 = 0;
      *error = v18;
      goto LABEL_77;
    }

    goto LABEL_12;
  }

  if ([(RTLearnedLocationEngine *)self _skipLabelingForVisit:visitCopy])
  {
    v101 = *MEMORY[0x277CCA450];
    v15 = MEMORY[0x277CCACA8];
    date = [MEMORY[0x277CBEAA8] date];
    v17 = [v15 stringWithFormat:@"skipped labeling to reduce network traffic, creation date, %@", date];
    v102 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:12 userInfo:v18];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = NSStringFromSelector(a2);
        *buf = 138412803;
        v96 = v21;
        v97 = 2117;
        v98 = visitCopy;
        v99 = 2112;
        v100 = v19;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, Skipped labeling, visit, %{sensitive}@, error, %@", buf, 0x20u);
      }
    }

    [objc_opt_class() submitVisitLabelingMetricsForLabelingRetried:0 labelingSkipped:1 revGeoCalled:0 bluePOICalled:0 unlabeledVisit:1 visitAge:v19 error:v13];
    if (error)
    {
      v22 = v19;
      *error = v19;
    }

LABEL_12:
    v27 = 0;
    goto LABEL_77;
  }

  itemCopy = item;
  aSelector = a2;
  errorCopy = error;
  v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(_enabledMapItemProviders, "count") - 1}];
  v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v82 = _enabledMapItemProviders;
  v30 = _enabledMapItemProviders;
  v31 = [v30 countByEnumeratingWithState:&v90 objects:v94 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v91;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v91 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v90 + 1) + 8 * i);
        if ([v35 isMemberOfClass:objc_opt_class()])
        {
          v36 = v29;
        }

        else
        {
          v36 = v28;
        }

        [v36 addObject:v35];
      }

      v32 = [v30 countByEnumeratingWithState:&v90 objects:v94 count:16];
    }

    while (v32);
  }

  v89 = 0;
  v37 = [(RTLearnedLocationEngine *)self _candidatesForVisit:visitCopy providers:v28 continueOnError:[(RTLearnedLocationEngine *)self _isRecentVisit:visitCopy]^ 1 error:&v89];
  v38 = v89;
  v80 = [(RTLearnedLocationEngine *)self _isBluePOICalledForVisit:visitCopy providers:v28];
  if (v38)
  {
    [array addObject:v38];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = [v37 count];
      *buf = 138740483;
      v96 = visitCopy;
      v97 = 2048;
      v98 = v40;
      v99 = 2117;
      v100 = v38;
      _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "visit, %{sensitive}@, possible candidates, %lu, error, %{sensitive}@", buf, 0x20u);
    }
  }

  v81 = v38;
  if (v38 && [(RTLearnedLocationEngine *)self _isRecentVisit:visitCopy])
  {
    _enabledMapItemProviders = v82;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v41 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 138739971;
        v96 = visitCopy;
        _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "skipping labelling visit, %{sensitive}@", buf, 0xCu);
      }
    }

    [objc_opt_class() submitVisitLabelingMetricsForLabelingRetried:1 labelingSkipped:0 revGeoCalled:0 bluePOICalled:v80 unlabeledVisit:1 visitAge:v38 error:v13];
    if (errorCopy)
    {
      v42 = v38;
      v43 = v38;
      v18 = 0;
      *errorCopy = v43;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v88 = 0;
    v44 = [(RTLearnedLocationEngine *)self _bestFusedInferredMapItemForVisit:visitCopy fromCandidates:v37 snapToBestAoi:1 error:&v88];
    v45 = v88;
    _enabledMapItemProviders = v82;
    if (v45)
    {
      [array addObject:v45];
    }

    v76 = v45;
    mapItem = [v44 mapItem];

    v84 = v37;
    v75 = mapItem;
    v77 = v44;
    if (mapItem)
    {
      convertToInferredMapItem = [v44 convertToInferredMapItem];
      v48 = 0;
    }

    else
    {
      v87 = 0;
      v48 = [(RTLearnedLocationEngine *)self _candidatesForVisit:visitCopy providers:v29 continueOnError:1 error:&v87];
      v49 = v87;
      if (v49)
      {
        [array addObject:v49];
      }

      firstObject = [v48 firstObject];
      if (firstObject)
      {
        [v48 firstObject];
        v51 = v78 = v48;
        convertToInferredMapItem = [v51 firstObject];

        v48 = v78;
      }

      else
      {
        convertToInferredMapItem = 0;
      }

      v37 = v84;
    }

    v52 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v48, "count") + objc_msgSend(v37, "count")}];
    if ([v84 count])
    {
      [v52 addObjectsFromArray:v84];
    }

    if ([v48 count])
    {
      [v52 addObjectsFromArray:v48];
    }

    v74 = v52;
    v53 = [[_RTMap alloc] initWithInput:v52];
    v54 = [(_RTMap *)v53 withBlock:&__block_literal_global_555];

    v73 = v54;
    [(RTLearnedLocationEngine *)self _submitMetricsForVisit:visitCopy possibleInferredMapItems:v54 selectedInferredMapItem:convertToInferredMapItem];
    v79 = v48;
    v55 = errorCopy;
    if (itemCopy)
    {
      v56 = v84;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v57 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = NSStringFromSelector(aSelector);
          *buf = 138412547;
          v96 = v58;
          v97 = 2117;
          v98 = visitCopy;
          _os_log_impl(&dword_2304B3000, v57, OS_LOG_TYPE_INFO, "%@, computing the finer granularity map item for visit, %{sensitive}@", buf, 0x16u);

          v56 = v84;
        }
      }

      v59 = [(RTLearnedLocationEngine *)self _finerGranularityCandidatesDictionaryForFusionCandidates:v56];
      if (convertToInferredMapItem)
      {
        v86 = 0;
        v60 = [(RTLearnedLocationEngine *)self _finerGranularityPOIForInferredMapItem:convertToInferredMapItem visit:visitCopy finerGranularityCandidatesDictionary:v59 error:&v86];
        v61 = v86;
      }

      else
      {
        v61 = 0;
        v60 = 0;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v70 = v59;
        v62 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          aSelectora = NSStringFromSelector(aSelector);
          *buf = 138412803;
          v96 = aSelectora;
          v97 = 2117;
          v98 = v60;
          v99 = 2117;
          v100 = visitCopy;
          _os_log_impl(&dword_2304B3000, v62, OS_LOG_TYPE_INFO, "%@, the selected finer granularity map item, %{sensitive}@, for visit, %{sensitive}@", buf, 0x20u);
        }

        v59 = v70;
      }

      if (v61)
      {
        [array addObject:v61];
      }

      v63 = v60;
      *itemCopy = v60;

      v55 = errorCopy;
    }

    v64 = _RTSafeArray();
    v65 = _RTMultiErrorCreate();

    if (v55)
    {
      v66 = v65;
      *v55 = v65;
    }

    [objc_opt_class() submitVisitLabelingMetricsForLabelingRetried:0 labelingSkipped:0 revGeoCalled:v75 == 0 bluePOICalled:v80 unlabeledVisit:convertToInferredMapItem == 0 visitAge:v65 error:{v13, 1}];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v67 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        *buf = 138740483;
        v96 = convertToInferredMapItem;
        v97 = 2117;
        v98 = visitCopy;
        v99 = 2112;
        v100 = v65;
        _os_log_impl(&dword_2304B3000, v67, OS_LOG_TYPE_INFO, "selected inferredMapItem, %{sensitive}@, for visit, %{sensitive}@, error, %@", buf, 0x20u);
      }
    }

    if (errorCopy)
    {
      v68 = v65;
      *errorCopy = v65;
    }

    v18 = convertToInferredMapItem;

    v37 = v84;
  }

  v27 = v18;
LABEL_77:

  return v27;
}

- (void)_submitMetricsForVisit:(id)visit possibleInferredMapItems:(id)items selectedInferredMapItem:(id)item
{
  v45 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  itemsCopy = items;
  itemCopy = item;
  v11 = itemCopy;
  if (visitCopy && itemsCopy && itemCopy)
  {
    selfCopy = self;
    v34 = visitCopy;
    mapItem = [itemCopy mapItem];
    v13 = [mapItem copy];

    if (!v13)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v28 = NSStringFromSelector(a2);
        mapItem2 = [v11 mapItem];
        *buf = 138412547;
        v42 = v28;
        v43 = 2117;
        v44 = mapItem2;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, failed to copy selectedMapItem, %{sensitive}@", buf, 0x16u);
      }
    }

    v32 = v11;
    v30 = v13;
    [v13 setSource:{objc_msgSend(v11, "source")}];
    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v33 = itemsCopy;
    v16 = itemsCopy;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          mapItem3 = [v21 mapItem];
          v23 = [mapItem3 copy];

          if (v23)
          {
            [v23 setSource:{objc_msgSend(v21, "source")}];
            [v15 addObject:v23];
          }

          else
          {
            v24 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = NSStringFromSelector(a2);
              mapItem4 = [v21 mapItem];
              *buf = 138412547;
              v42 = v25;
              v43 = 2117;
              v44 = mapItem4;
              _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@, failed to copy possibleMapItem, %{sensitive}@", buf, 0x16u);
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v18);
    }

    trainingMetrics = [(RTLearnedLocationEngine *)selfCopy trainingMetrics];
    visitCopy = v34;
    [trainingMetrics submitVisit:v34 possibleMapItems:v15 selectedMapItem:v30];

    v11 = v32;
    itemsCopy = v33;
  }
}

- (id)_storedMapItemForMapItem:(id)item error:(id *)error
{
  v151 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (itemCopy)
  {
    errorCopy = error;
    learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
    predicateForObjectsFromCurrentDevice = [learnedLocationStore predicateForObjectsFromCurrentDevice];

    context = objc_autoreleasePoolPush();
    v136 = 0;
    v137 = &v136;
    v138 = 0x3032000000;
    v139 = __Block_byref_object_copy__41;
    v140 = __Block_byref_object_dispose__41;
    v141 = 0;
    v130 = 0;
    v131 = &v130;
    v132 = 0x3032000000;
    v133 = __Block_byref_object_copy__41;
    v134 = __Block_byref_object_dispose__41;
    v135 = 0;
    v9 = dispatch_semaphore_create(0);
    learnedLocationStore2 = [(RTLearnedLocationEngine *)self learnedLocationStore];
    v126[0] = MEMORY[0x277D85DD0];
    v126[1] = 3221225472;
    v126[2] = __58__RTLearnedLocationEngine__storedMapItemForMapItem_error___block_invoke;
    v126[3] = &unk_2788C4490;
    v128 = &v136;
    v129 = &v130;
    v11 = v9;
    v127 = v11;
    [learnedLocationStore2 fetchStoredMapItemsWithMapItem:itemCopy predicate:predicateForObjectsFromCurrentDevice handler:v126];

    v12 = v11;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v12, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
      firstObject = [v21 firstObject];

      [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
      v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v24 = MEMORY[0x277CCA9B8];
      *v150 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v150 count:1];
      v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

      if (v26)
      {
        v27 = v26;

        v28 = 0;
LABEL_11:

        v120 = v26;
        if ((v28 & 1) == 0)
        {
          objc_storeStrong(v131 + 5, v26);
        }

        v34 = v131[5];
        if (v34)
        {
          v33 = v34;
          firstObject2 = 0;
        }

        else if ([v137[5] count])
        {
          firstObject2 = [v137[5] firstObject];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v36 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *buf = 138740483;
              *&buf[4] = firstObject2;
              *&buf[12] = 2117;
              *&buf[14] = itemCopy;
              *&buf[22] = 2112;
              v144 = 0;
              _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "selected existing mapItem, %{sensitive}@, for the input mapItem, %{sensitive}@, error, %@", buf, 0x20u);
            }
          }

          v33 = 0;
        }

        else
        {
          date = [MEMORY[0x277CBEAA8] date];
          v118 = [date dateByAddingTimeInterval:4838400.0];
          v78 = objc_alloc(MEMORY[0x277D01060]);
          uUID = [MEMORY[0x277CCAD78] UUID];
          address = [itemCopy address];
          geoAddressData = [address geoAddressData];
          address2 = [itemCopy address];
          subPremises = [address2 subPremises];
          address3 = [itemCopy address];
          subThoroughfare = [address3 subThoroughfare];
          address4 = [itemCopy address];
          thoroughfare = [address4 thoroughfare];
          address5 = [itemCopy address];
          subLocality = [address5 subLocality];
          address6 = [itemCopy address];
          locality = [address6 locality];
          address7 = [itemCopy address];
          subAdministrativeArea = [address7 subAdministrativeArea];
          address8 = [itemCopy address];
          administrativeArea = [address8 administrativeArea];
          address9 = [itemCopy address];
          administrativeAreaCode = [address9 administrativeAreaCode];
          address10 = [itemCopy address];
          postalCode = [address10 postalCode];
          address11 = [itemCopy address];
          country = [address11 country];
          address12 = [itemCopy address];
          countryCode = [address12 countryCode];
          address13 = [itemCopy address];
          inlandWater = [address13 inlandWater];
          address14 = [itemCopy address];
          ocean = [address14 ocean];
          address15 = [itemCopy address];
          areasOfInterest = [address15 areasOfInterest];
          address16 = [itemCopy address];
          isIsland = [address16 isIsland];
          address17 = [itemCopy address];
          iso3166CountryCode = [address17 iso3166CountryCode];
          address18 = [itemCopy address];
          iso3166SubdivisionCode = [address18 iso3166SubdivisionCode];
          LOBYTE(v76) = isIsland;
          v79 = [v78 initWithIdentifier:uUID geoAddressData:geoAddressData subPremises:subPremises subThoroughfare:subThoroughfare thoroughfare:thoroughfare subLocality:subLocality locality:locality subAdministrativeArea:subAdministrativeArea administrativeArea:administrativeArea administrativeAreaCode:administrativeAreaCode postalCode:postalCode country:country countryCode:countryCode inlandWater:inlandWater ocean:ocean areasOfInterest:areasOfInterest isIsland:v76 creationDate:date expirationDate:v118 iso3166CountryCode:iso3166CountryCode iso3166SubdivisionCode:iso3166SubdivisionCode];

          v106 = objc_alloc(MEMORY[0x277D011A0]);
          uUID2 = [MEMORY[0x277CCAD78] UUID];
          name = [itemCopy name];
          category = [itemCopy category];
          categoryMUID = [itemCopy categoryMUID];
          location = [itemCopy location];
          source = [itemCopy source];
          mapItemPlaceType = [itemCopy mapItemPlaceType];
          muid = [itemCopy muid];
          resultProviderID = [itemCopy resultProviderID];
          geoMapItemHandle = [itemCopy geoMapItemHandle];
          geoMapItemIdentifier = [itemCopy geoMapItemIdentifier];
          extendedAttributes = [itemCopy extendedAttributes];
          displayLanguage = [itemCopy displayLanguage];
          LOBYTE(v77) = [itemCopy disputed];
          firstObject2 = [v106 initWithIdentifier:uUID2 name:name category:category categoryMUID:categoryMUID address:v79 location:location source:source mapItemPlaceType:mapItemPlaceType muid:muid resultProviderID:resultProviderID geoMapItemHandle:geoMapItemHandle geoMapItemIdentifier:geoMapItemIdentifier creationDate:date expirationDate:v118 extendedAttributes:extendedAttributes displayLanguage:displayLanguage disputed:v77];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v51 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              *buf = 138740227;
              *&buf[4] = firstObject2;
              *&buf[12] = 2117;
              *&buf[14] = itemCopy;
              _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_INFO, "selected new mapItem, %{sensitive}@, for input mapItem, %{sensitive}@", buf, 0x16u);
            }
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v144 = __Block_byref_object_copy__41;
          v145 = __Block_byref_object_dispose__41;
          v146 = 0;
          v52 = dispatch_semaphore_create(0);

          learnedLocationStore3 = [(RTLearnedLocationEngine *)self learnedLocationStore];
          v142 = firstObject2;
          v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v142 count:1];
          v123[0] = MEMORY[0x277D85DD0];
          v123[1] = 3221225472;
          v123[2] = __58__RTLearnedLocationEngine__storedMapItemForMapItem_error___block_invoke_562;
          v123[3] = &unk_2788C4618;
          v125 = buf;
          v55 = v52;
          v124 = v55;
          [learnedLocationStore3 storeMapItems:v54 handler:v123];

          v12 = v55;
          v56 = [MEMORY[0x277CBEAA8] now];
          v57 = dispatch_time(0, 3600000000000);
          if (!dispatch_semaphore_wait(v12, v57))
          {
            goto LABEL_30;
          }

          v58 = [MEMORY[0x277CBEAA8] now];
          [v58 timeIntervalSinceDate:v56];
          v60 = v59;
          v61 = objc_opt_new();
          v62 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
          callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
          v64 = [callStackSymbols2 filteredArrayUsingPredicate:v62];
          firstObject3 = [v64 firstObject];

          [v61 submitToCoreAnalytics:firstObject3 type:1 duration:v60];
          v66 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
          {
            *v150 = 0;
            _os_log_fault_impl(&dword_2304B3000, v66, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v150, 2u);
          }

          v67 = MEMORY[0x277CCA9B8];
          v149 = *MEMORY[0x277CCA450];
          *v150 = @"semaphore wait timeout";
          v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:&v149 count:1];
          v69 = [v67 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v68];

          if (v69)
          {
            v70 = v69;

            v71 = 0;
          }

          else
          {
LABEL_30:
            v71 = 1;
            v69 = v120;
          }

          v72 = v69;
          if ((v71 & 1) == 0)
          {
            objc_storeStrong((*&buf[8] + 40), v69);
          }

          v33 = *(*&buf[8] + 40);
          if (v33)
          {
            v73 = v33;
          }

          _Block_object_dispose(buf, 8);
          v120 = v72;
        }

        _Block_object_dispose(&v130, 8);
        _Block_object_dispose(&v136, 8);

        objc_autoreleasePoolPop(context);
        if (errorCopy)
        {
          v74 = v33;
          *errorCopy = v33;
        }

        v32 = firstObject2;
        error = v32;
        goto LABEL_39;
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = 1;
    goto LABEL_11;
  }

  if (!error)
  {
    goto LABEL_40;
  }

  errorCopy2 = error;
  v30 = MEMORY[0x277CCA9B8];
  v147 = *MEMORY[0x277CCA450];
  v31 = MEMORY[0x277CCACA8];
  v32 = NSStringFromSelector(a2);
  v33 = [v31 stringWithFormat:@"%@ requires a valid mapItem.", v32];
  v148 = v33;
  predicateForObjectsFromCurrentDevice = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
  [v30 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:predicateForObjectsFromCurrentDevice];
  *errorCopy2 = error = 0;
LABEL_39:

LABEL_40:

  return error;
}

void __58__RTLearnedLocationEngine__storedMapItemForMapItem_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __58__RTLearnedLocationEngine__storedMapItemForMapItem_error___block_invoke_562(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_placeForMapItem:(id)item error:(id *)error
{
  v163 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (itemCopy)
  {
    errorCopy = error;
    selfCopy = self;
    learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
    predicateForObjectsFromCurrentDevice = [learnedLocationStore predicateForObjectsFromCurrentDevice];

    context = objc_autoreleasePoolPush();
    v148 = 0;
    v149 = &v148;
    v150 = 0x3032000000;
    v151 = __Block_byref_object_copy__41;
    v152 = __Block_byref_object_dispose__41;
    v153 = 0;
    v142 = 0;
    v143 = &v142;
    v144 = 0x3032000000;
    v145 = __Block_byref_object_copy__41;
    v146 = __Block_byref_object_dispose__41;
    v147 = 0;
    v9 = dispatch_semaphore_create(0);
    learnedLocationStore2 = [(RTLearnedLocationEngine *)self learnedLocationStore];
    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 3221225472;
    v138[2] = __50__RTLearnedLocationEngine__placeForMapItem_error___block_invoke;
    v138[3] = &unk_2788C8750;
    v140 = &v148;
    v141 = &v142;
    v11 = v9;
    v139 = v11;
    [learnedLocationStore2 fetchPlaceWithMapItem:itemCopy predicate:predicateForObjectsFromCurrentDevice handler:v138];

    v12 = v11;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v12, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
      firstObject = [v21 firstObject];

      [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
      v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v24 = MEMORY[0x277CCA9B8];
      *v162 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v162 count:1];
      v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

      if (v26)
      {
        v27 = v26;

        v28 = 0;
LABEL_11:

        v132 = v26;
        if ((v28 & 1) == 0)
        {
          objc_storeStrong(v143 + 5, v26);
        }

        v34 = v143[5];
        if (v34)
        {
          v33 = v34;
          v35 = 0;
        }

        else
        {
          v36 = v149[5];
          if (v36)
          {
            v35 = v36;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v37 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                v38 = v143[5];
                *buf = 138740483;
                *&buf[4] = v35;
                *&buf[12] = 2117;
                *&buf[14] = itemCopy;
                *&buf[22] = 2112;
                v156 = v38;
                _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "selected existing place, %{sensitive}@, with mapItem, %{sensitive}@, error, %@", buf, 0x20u);
              }
            }

            v33 = 0;
          }

          else
          {
            date = [MEMORY[0x277CBEAA8] date];
            v87 = [date dateByAddingTimeInterval:4838400.0];
            v84 = objc_alloc(MEMORY[0x277D01060]);
            uUID = [MEMORY[0x277CCAD78] UUID];
            address = [itemCopy address];
            geoAddressData = [address geoAddressData];
            address2 = [itemCopy address];
            subPremises = [address2 subPremises];
            address3 = [itemCopy address];
            subThoroughfare = [address3 subThoroughfare];
            address4 = [itemCopy address];
            thoroughfare = [address4 thoroughfare];
            address5 = [itemCopy address];
            subLocality = [address5 subLocality];
            address6 = [itemCopy address];
            locality = [address6 locality];
            address7 = [itemCopy address];
            subAdministrativeArea = [address7 subAdministrativeArea];
            address8 = [itemCopy address];
            administrativeArea = [address8 administrativeArea];
            address9 = [itemCopy address];
            administrativeAreaCode = [address9 administrativeAreaCode];
            address10 = [itemCopy address];
            postalCode = [address10 postalCode];
            address11 = [itemCopy address];
            country = [address11 country];
            address12 = [itemCopy address];
            countryCode = [address12 countryCode];
            address13 = [itemCopy address];
            inlandWater = [address13 inlandWater];
            address14 = [itemCopy address];
            ocean = [address14 ocean];
            address15 = [itemCopy address];
            areasOfInterest = [address15 areasOfInterest];
            address16 = [itemCopy address];
            isIsland = [address16 isIsland];
            address17 = [itemCopy address];
            creationDate = [address17 creationDate];
            address18 = [itemCopy address];
            expirationDate = [address18 expirationDate];
            address19 = [itemCopy address];
            iso3166CountryCode = [address19 iso3166CountryCode];
            address20 = [itemCopy address];
            iso3166SubdivisionCode = [address20 iso3166SubdivisionCode];
            LOBYTE(v82) = isIsland;
            v85 = [v84 initWithIdentifier:uUID geoAddressData:geoAddressData subPremises:subPremises subThoroughfare:subThoroughfare thoroughfare:thoroughfare subLocality:subLocality locality:locality subAdministrativeArea:subAdministrativeArea administrativeArea:administrativeArea administrativeAreaCode:administrativeAreaCode postalCode:postalCode country:country countryCode:countryCode inlandWater:inlandWater ocean:ocean areasOfInterest:areasOfInterest isIsland:v82 creationDate:creationDate expirationDate:expirationDate iso3166CountryCode:iso3166CountryCode iso3166SubdivisionCode:iso3166SubdivisionCode];

            v118 = objc_alloc(MEMORY[0x277D011A0]);
            uUID2 = [MEMORY[0x277CCAD78] UUID];
            name = [itemCopy name];
            category = [itemCopy category];
            categoryMUID = [itemCopy categoryMUID];
            location = [itemCopy location];
            source = [itemCopy source];
            mapItemPlaceType = [itemCopy mapItemPlaceType];
            muid = [itemCopy muid];
            resultProviderID = [itemCopy resultProviderID];
            geoMapItemHandle = [itemCopy geoMapItemHandle];
            geoMapItemIdentifier = [itemCopy geoMapItemIdentifier];
            creationDate2 = [itemCopy creationDate];
            expirationDate2 = [itemCopy expirationDate];
            extendedAttributes = [itemCopy extendedAttributes];
            displayLanguage = [itemCopy displayLanguage];
            LOBYTE(v83) = [itemCopy disputed];
            v119 = [v118 initWithIdentifier:uUID2 name:name category:category categoryMUID:categoryMUID address:v85 location:location source:source mapItemPlaceType:mapItemPlaceType muid:muid resultProviderID:resultProviderID geoMapItemHandle:geoMapItemHandle geoMapItemIdentifier:geoMapItemIdentifier creationDate:creationDate2 expirationDate:expirationDate2 extendedAttributes:extendedAttributes displayLanguage:displayLanguage disputed:v83];

            v55 = [RTLearnedPlace alloc];
            uUID3 = [MEMORY[0x277CCAD78] UUID];
            v35 = [(RTLearnedPlace *)v55 initWithIdentifier:uUID3 type:0 typeSource:0 mapItem:v119 customLabel:0 creationDate:date expirationDate:v87];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v57 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
              {
                *buf = 138740227;
                *&buf[4] = v35;
                *&buf[12] = 2117;
                *&buf[14] = itemCopy;
                _os_log_impl(&dword_2304B3000, v57, OS_LOG_TYPE_INFO, "selected new place, %{sensitive}@, with mapItem, %{sensitive}@", buf, 0x16u);
              }
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v156 = __Block_byref_object_copy__41;
            v157 = __Block_byref_object_dispose__41;
            v158 = 0;
            v58 = dispatch_semaphore_create(0);

            learnedLocationStore3 = [(RTLearnedLocationEngine *)selfCopy learnedLocationStore];
            v154 = v35;
            v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v154 count:1];
            v135[0] = MEMORY[0x277D85DD0];
            v135[1] = 3221225472;
            v135[2] = __50__RTLearnedLocationEngine__placeForMapItem_error___block_invoke_564;
            v135[3] = &unk_2788C4618;
            v137 = buf;
            v61 = v58;
            v136 = v61;
            [learnedLocationStore3 storePlaces:v60 handler:v135];

            v12 = v61;
            v62 = [MEMORY[0x277CBEAA8] now];
            v63 = dispatch_time(0, 3600000000000);
            if (!dispatch_semaphore_wait(v12, v63))
            {
              goto LABEL_30;
            }

            v64 = [MEMORY[0x277CBEAA8] now];
            [v64 timeIntervalSinceDate:v62];
            v66 = v65;
            v67 = objc_opt_new();
            v68 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
            callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
            v70 = [callStackSymbols2 filteredArrayUsingPredicate:v68];
            firstObject2 = [v70 firstObject];

            [v67 submitToCoreAnalytics:firstObject2 type:1 duration:v66];
            v72 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
            {
              *v162 = 0;
              _os_log_fault_impl(&dword_2304B3000, v72, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v162, 2u);
            }

            v73 = MEMORY[0x277CCA9B8];
            v161 = *MEMORY[0x277CCA450];
            *v162 = @"semaphore wait timeout";
            v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v162 forKeys:&v161 count:1];
            v75 = [v73 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v74];

            if (v75)
            {
              v76 = v75;

              v77 = 0;
            }

            else
            {
LABEL_30:
              v77 = 1;
              v75 = v132;
            }

            v78 = v75;
            if ((v77 & 1) == 0)
            {
              objc_storeStrong((*&buf[8] + 40), v75);
            }

            v33 = *(*&buf[8] + 40);
            if (v33)
            {
              v79 = v33;
            }

            _Block_object_dispose(buf, 8);
            v132 = v78;
          }
        }

        _Block_object_dispose(&v142, 8);
        _Block_object_dispose(&v148, 8);

        objc_autoreleasePoolPop(context);
        if (errorCopy)
        {
          v80 = v33;
          *errorCopy = v33;
        }

        v32 = v35;
        error = v32;
        goto LABEL_39;
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = 1;
    goto LABEL_11;
  }

  if (!error)
  {
    goto LABEL_40;
  }

  errorCopy2 = error;
  v30 = MEMORY[0x277CCA9B8];
  v159 = *MEMORY[0x277CCA450];
  v31 = MEMORY[0x277CCACA8];
  v32 = NSStringFromSelector(a2);
  v33 = [v31 stringWithFormat:@"%@ requires a valid mapItem.", v32];
  v160 = v33;
  predicateForObjectsFromCurrentDevice = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
  [v30 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:predicateForObjectsFromCurrentDevice];
  *errorCopy2 = error = 0;
LABEL_39:

LABEL_40:

  return error;
}

void __50__RTLearnedLocationEngine__placeForMapItem_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __50__RTLearnedLocationEngine__placeForMapItem_error___block_invoke_564(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)submitVisitSettledStateMetricsForVisits:(id)visits transitions:(id)transitions
{
  v33 = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  transitionsCopy = transitions;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [visitsCopy countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(visitsCopy);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        entryDate = [v12 entryDate];
        exitDate = [v12 exitDate];
        [RTVisitSettledStateMetrics submitVisitSettledStateMetricsForStartDate:entryDate endDate:exitDate isVisit:1 settledStateTransitionStore:self->_settledStateTransitionStore];
      }

      v9 = [visitsCopy countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = transitionsCopy;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * j);
        startDate = [v20 startDate];
        stopDate = [v20 stopDate];
        [RTVisitSettledStateMetrics submitVisitSettledStateMetricsForStartDate:startDate endDate:stopDate isVisit:0 settledStateTransitionStore:self->_settledStateTransitionStore];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }
}

- (id)_transitionsForVisits:(id)visits lastLearnedVisit:(id)visit creationDate:(id)date
{
  v61 = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  visitCopy = visit;
  dateCopy = date;
  v46 = dateCopy;
  if (!visitsCopy)
  {
    visitsCopy = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(visitsCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, visitsCopy, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visits", buf, 2u);
    }

    goto LABEL_12;
  }

  if (!dateCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: creationDate", buf, 2u);
    }

LABEL_12:
    v44 = 0;
    goto LABEL_25;
  }

  if (visitCopy)
  {
    v58 = visitCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
    v10 = [v9 arrayByAddingObjectsFromArray:visitsCopy];

    visitsCopy = v10;
  }

  v47 = visitsCopy;
  if ([visitsCopy count]>= 2)
  {
    v44 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSObject count](visitsCopy, "count") - 1}];
    if ([visitsCopy count]>= 2)
    {
      v12 = 1;
      v41 = *MEMORY[0x277D01448];
      v42 = *MEMORY[0x277CCA450];
      do
      {
        v50 = [v47 objectAtIndexedSubscript:v12 - 1];
        v13 = [v47 objectAtIndexedSubscript:v12];
        exitDate = [v50 exitDate];
        entryDate = [v13 entryDate];
        *buf = 0;
        v55 = buf;
        v56 = 0x2020000000;
        v57 = 0;
        v14 = dispatch_semaphore_create(0);
        motionActivityManager = [(RTLearnedLocationEngine *)self motionActivityManager];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __79__RTLearnedLocationEngine__transitionsForVisits_lastLearnedVisit_creationDate___block_invoke;
        v51[3] = &unk_2788C8028;
        v53 = buf;
        v16 = v14;
        v52 = v16;
        [motionActivityManager fetchPredominantMotionActivityTypeFromStartDate:exitDate toEndDate:entryDate withHandler:v51];

        v17 = v16;
        v18 = [MEMORY[0x277CBEAA8] now];
        v19 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v17, v19))
        {
          v20 = [MEMORY[0x277CBEAA8] now];
          [v20 timeIntervalSinceDate:v18];
          v22 = v21;
          v23 = objc_opt_new();
          v24 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v26 = [callStackSymbols filteredArrayUsingPredicate:v24];
          firstObject = [v26 firstObject];

          [v23 submitToCoreAnalytics:firstObject type:1 duration:v22];
          v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            *v60 = 0;
            _os_log_fault_impl(&dword_2304B3000, v28, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v60, 2u);
          }

          v29 = MEMORY[0x277CCA9B8];
          v59 = v42;
          *v60 = @"semaphore wait timeout";
          v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
          v31 = [v29 errorWithDomain:v41 code:15 userInfo:v30];

          if (v31)
          {
            v32 = v31;
          }
        }

        else
        {
          v31 = 0;
        }

        v33 = v31;
        v34 = [RTLearnedTransition alloc];
        uUID = [MEMORY[0x277CCAD78] UUID];
        identifier = [v50 identifier];
        identifier2 = [v13 identifier];
        expirationDate = [v13 expirationDate];
        v39 = [(RTLearnedTransition *)v34 initWithIdentifier:uUID startDate:exitDate stopDate:entryDate visitIdentifierOrigin:identifier visitIdentifierDestination:identifier2 creationDate:v46 expirationDate:expirationDate predominantMotionActivityType:*(v55 + 3)];

        if (v39)
        {
          [v44 addObject:v39];
        }

        _Block_object_dispose(buf, 8);
        ++v12;
      }

      while (v12 < [v47 count]);
    }
  }

  else
  {
    v44 = MEMORY[0x277CBEBF8];
  }

  visitsCopy = v47;
LABEL_25:

  return v44;
}

void __79__RTLearnedLocationEngine__transitionsForVisits_lastLearnedVisit_creationDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "failed fetching motion activities, error, %@", &v8, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 134217984;
        v9 = a2;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "dominant motion activity, %lu", &v8, 0xCu);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_harvestVisits:(id)visits places:(id)places
{
  v82[1] = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  placesCopy = places;
  v7 = placesCopy;
  if (!visitsCopy)
  {
    log = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v52 = "Invalid parameter not satisfying: placeToVisitsMap";
LABEL_27:
    _os_log_error_impl(&dword_2304B3000, log, OS_LOG_TYPE_ERROR, v52, buf, 2u);
    goto LABEL_25;
  }

  if (!placesCopy)
  {
    log = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v52 = "Invalid parameter not satisfying: placesMap";
    goto LABEL_27;
  }

  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  log = [learnedLocationStore predicateForObjectsFromCurrentDevice];

  v58 = dispatch_semaphore_create(0);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v53 = visitsCopy;
  obj = visitsCopy;
  v60 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
  v9 = 0;
  if (v60)
  {
    v57 = *v71;
    v55 = *MEMORY[0x277D01448];
    v54 = *MEMORY[0x277CCA450];
    v56 = v7;
    do
    {
      v10 = 0;
      v11 = v9;
      do
      {
        if (*v71 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v70 + 1) + 8 * v10);
        v13 = [v7 objectForKeyedSubscript:v12];
        trainingMetrics = [(RTLearnedLocationEngine *)self trainingMetrics];
        places = [trainingMetrics places];
        [places addObject:v13];

        learnedLocationStore2 = [(RTLearnedLocationEngine *)self learnedLocationStore];
        mapItem = [v13 mapItem];
        location = [mapItem location];
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __49__RTLearnedLocationEngine__harvestVisits_places___block_invoke;
        v67[3] = &unk_2788C6BD0;
        v67[4] = self;
        v64 = v13;
        v68 = v64;
        v19 = v58;
        v69 = v19;
        [learnedLocationStore2 fetchPlacesWithinDistance:location location:log predicate:v67 handler:1000.0];

        v20 = v19;
        v21 = [MEMORY[0x277CBEAA8] now];
        v22 = dispatch_time(0, 3600000000000);
        v23 = v11;
        if (dispatch_semaphore_wait(v20, v22))
        {
          v62 = v12;
          v24 = [MEMORY[0x277CBEAA8] now];
          [v24 timeIntervalSinceDate:v21];
          v26 = v25;
          v27 = objc_opt_new();
          v28 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v30 = [callStackSymbols filteredArrayUsingPredicate:v28];
          firstObject = [v30 firstObject];

          [v27 submitToCoreAnalytics:firstObject type:1 duration:v26];
          v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v32, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v33 = MEMORY[0x277CCA9B8];
          v82[0] = v54;
          *buf = @"semaphore wait timeout";
          v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v82 count:1];
          v35 = [v33 errorWithDomain:v55 code:15 userInfo:v34];

          v23 = v11;
          v7 = v56;
          v12 = v62;
          if (v35)
          {
            v36 = v35;

            v23 = v35;
          }
        }

        v63 = v23;
        v37 = [obj objectForKeyedSubscript:v12];
        v38 = [RTPOIHarvester alloc];
        defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
        fingerprintManager = [(RTLearnedLocationEngine *)self fingerprintManager];
        locationManager = [(RTLearnedLocationEngine *)self locationManager];
        motionActivityManager = [(RTLearnedLocationEngine *)self motionActivityManager];
        v43 = [(RTPOIHarvester *)v38 initWithDefaultsManager:defaultsManager fingerprintManager:fingerprintManager locationManager:locationManager motionActivityManager:motionActivityManager];

        mapItem2 = [v64 mapItem];
        v66 = 0;
        v45 = [RTPOIHarvestUtilities harvestVisits:v37 mapItem:mapItem2 harvestType:1 poiHarvester:v43 error:&v66];
        v46 = v66;

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v47 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            v48 = [v37 count];
            mapItem3 = [v64 mapItem];
            v50 = mapItem3;
            *buf = 134218755;
            v51 = @"NO";
            if (v45)
            {
              v51 = @"YES";
            }

            *&buf[4] = v48;
            v75 = 2117;
            v76 = mapItem3;
            v77 = 2112;
            v78 = v51;
            v79 = 2112;
            v80 = v46;
            _os_log_impl(&dword_2304B3000, v47, OS_LOG_TYPE_INFO, "harvested %lu visits, mapItem, %{sensitive}@, success, %@, error %@", buf, 0x2Au);

            v7 = v56;
          }
        }

        ++v10;
        v9 = v63;
        v11 = v63;
      }

      while (v60 != v10);
      v60 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
    }

    while (v60);
  }

  visitsCopy = v53;
LABEL_25:
}

intptr_t __49__RTLearnedLocationEngine__harvestVisits_places___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 trainingMetrics];
  [v5 submitPlace:a1[5] nearbyPlaces:v4];

  v6 = a1[6];

  return dispatch_semaphore_signal(v6);
}

- (id)_extractBluePOIQueriesJSONDObjectForVisit:(id)visit bluePOIMapItemProvider:(id)provider
{
  providerCopy = provider;
  visitCopy = visit;
  entry = [visitCopy entry];
  exit = [visitCopy exit];
  location = [visitCopy location];
  v13 = 0;
  v10 = [providerCopy getAllBluePOIQuerriesForStartDate:entry endDate:exit location:location error:&v13];

  v11 = [visitCopy dictionaryOutForBluePOIReplayWithBluePOIQueries:v10];

  return v11;
}

- (id)_fetchCloudCurrentDeviceVisitsBetweenStartDate:(id)date endDate:(id)endDate ascending:(BOOL)ascending error:(id *)error
{
  ascendingCopy = ascending;
  v174[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      getFormattedDateString = [dateCopy getFormattedDateString];
      getFormattedDateString2 = [endDateCopy getFormattedDateString];
      v14 = getFormattedDateString2;
      *&buf[12] = 2114;
      v15 = @"NO";
      *buf = 138544386;
      *&buf[4] = v10;
      if (ascendingCopy)
      {
        v15 = @"YES";
      }

      *&buf[14] = v11;
      *&buf[22] = 2112;
      v170 = getFormattedDateString;
      *v171 = 2112;
      *&v171[2] = getFormattedDateString2;
      *&v171[10] = 2112;
      *&v171[12] = v15;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%{public}@, %{public}@, fetching visits between start date, %@, end date, %@, ascending, %@", buf, 0x34u);
    }
  }

  v144 = 0;
  v145 = &v144;
  v146 = 0x3032000000;
  v147 = __Block_byref_object_copy__41;
  v148 = __Block_byref_object_dispose__41;
  v149 = 0;
  v138 = 0;
  v139 = &v138;
  v140 = 0x3032000000;
  v141 = __Block_byref_object_copy__41;
  v142 = __Block_byref_object_dispose__41;
  v143 = 0;
  v108 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:endDateCopy];
  v16 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  learnedLocationStore2 = [(RTLearnedLocationEngine *)self learnedLocationStore];
  predicateForObjectsFromCurrentDevice = [learnedLocationStore2 predicateForObjectsFromCurrentDevice];
  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 3221225472;
  v134[2] = __98__RTLearnedLocationEngine__fetchCloudCurrentDeviceVisitsBetweenStartDate_endDate_ascending_error___block_invoke;
  v134[3] = &unk_2788C4490;
  v136 = &v144;
  v137 = &v138;
  v20 = v16;
  v135 = v20;
  [learnedLocationStore fetchVisitsWithPredicate:predicateForObjectsFromCurrentDevice ascending:ascendingCopy dateInterval:v108 limit:0 handler:v134];

  dsema = v20;
  v21 = [MEMORY[0x277CBEAA8] now];
  v22 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(dsema, v22))
  {
    v34 = 0;
LABEL_13:
    v36 = 1;
    goto LABEL_14;
  }

  v23 = [MEMORY[0x277CBEAA8] now];
  [v23 timeIntervalSinceDate:v21];
  v25 = v24;
  v26 = objc_opt_new();
  v27 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  v29 = [callStackSymbols filteredArrayUsingPredicate:v27];
  firstObject = [v29 firstObject];

  [v26 submitToCoreAnalytics:firstObject type:1 duration:v25];
  v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2304B3000, v31, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
  }

  v32 = MEMORY[0x277CCA9B8];
  v162 = *MEMORY[0x277CCA450];
  *buf = @"semaphore wait timeout";
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v162 count:1];
  v34 = [v32 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v33];

  if (!v34)
  {
    goto LABEL_13;
  }

  v35 = v34;

  v36 = 0;
LABEL_14:

  v106 = v34;
  if ((v36 & 1) == 0)
  {
    objc_storeStrong(v139 + 5, v34);
  }

  if (v139[5])
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v98 = objc_opt_class();
      v99 = NSStringFromClass(v98);
      v100 = NSStringFromSelector(a2);
      v101 = v139[5];
      getFormattedDateString3 = [dateCopy getFormattedDateString];
      getFormattedDateString4 = [endDateCopy getFormattedDateString];
      v104 = getFormattedDateString4;
      v105 = @"NO";
      *buf = 138544642;
      *&buf[4] = v99;
      *&buf[12] = 2114;
      if (ascendingCopy)
      {
        v105 = @"YES";
      }

      *&buf[14] = v100;
      *&buf[22] = 2112;
      v170 = v101;
      *v171 = 2112;
      *&v171[2] = getFormattedDateString3;
      *&v171[10] = 2112;
      *&v171[12] = getFormattedDateString4;
      v172 = 2112;
      v173 = v105;
      _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "%{public}@, %{public}@, An error, %@, has occurred when fetching visits between date, %@ and date, %@, ascending, %@", buf, 0x3Eu);
    }

    if (error)
    {
      *error = v139[5];
    }

    v115 = MEMORY[0x277CBEBF8];
    goto LABEL_59;
  }

  v115 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v145[5], "count")}];
  array = [MEMORY[0x277CBEB18] array];
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  obj = v145[5];
  v38 = [obj countByEnumeratingWithState:&v130 objects:v168 count:16];
  if (!v38)
  {
    goto LABEL_53;
  }

  v114 = *v131;
  v117 = *MEMORY[0x277D01448];
  v118 = *MEMORY[0x277CCA450];
  do
  {
    v116 = v38;
    for (i = 0; i != v116; ++i)
    {
      if (*v131 != v114)
      {
        objc_enumerationMutation(obj);
      }

      v121 = *(*(&v130 + 1) + 8 * i);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v170 = __Block_byref_object_copy__41;
      *v171 = __Block_byref_object_dispose__41;
      *&v171[8] = 0;
      v162 = 0;
      v163 = &v162;
      v164 = 0x3032000000;
      v165 = __Block_byref_object_copy__41;
      v166 = __Block_byref_object_dispose__41;
      v167 = 0;
      v40 = dispatch_semaphore_create(0);
      learnedLocationStore3 = [(RTLearnedLocationEngine *)self learnedLocationStore];
      identifier = [v121 identifier];
      v126[0] = MEMORY[0x277D85DD0];
      v126[1] = 3221225472;
      v126[2] = __98__RTLearnedLocationEngine__fetchCloudCurrentDeviceVisitsBetweenStartDate_endDate_ascending_error___block_invoke_571;
      v126[3] = &unk_2788C8778;
      v128 = buf;
      v129 = &v162;
      v43 = v40;
      v127 = v43;
      [learnedLocationStore3 fetchInferredMapItemForVisitIdentifier:identifier handler:v126];

      v44 = v43;
      v45 = [MEMORY[0x277CBEAA8] now];
      v46 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v44, v46))
      {
        v47 = [MEMORY[0x277CBEAA8] now];
        [v47 timeIntervalSinceDate:v45];
        v49 = v48;
        v50 = objc_opt_new();
        v51 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
        callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
        v53 = [callStackSymbols2 filteredArrayUsingPredicate:v51];
        firstObject2 = [v53 firstObject];

        [v50 submitToCoreAnalytics:firstObject2 type:1 duration:v49];
        v55 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          *v159 = 0;
          _os_log_fault_impl(&dword_2304B3000, v55, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v159, 2u);
        }

        v56 = MEMORY[0x277CCA9B8];
        v157[0] = v118;
        *v159 = @"semaphore wait timeout";
        v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v159 forKeys:v157 count:1];
        v58 = [v56 errorWithDomain:v117 code:15 userInfo:v57];

        if (v58)
        {
          v59 = v58;

          v60 = 0;
          goto LABEL_33;
        }
      }

      else
      {
        v58 = 0;
      }

      v60 = 1;
LABEL_33:

      v61 = v58;
      if ((v60 & 1) == 0)
      {
        objc_storeStrong(v163 + 5, v58);
      }

      if (v163[5])
      {
        v62 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v86 = objc_opt_class();
          v87 = NSStringFromClass(v86);
          v88 = NSStringFromSelector(a2);
          v89 = v163[5];
          *v159 = 138544131;
          *&v159[4] = v87;
          *&v159[12] = 2114;
          *&v159[14] = v88;
          *&v159[22] = 2112;
          v160 = v89;
          LOWORD(v161) = 2117;
          *(&v161 + 2) = v121;
          _os_log_error_impl(&dword_2304B3000, v62, OS_LOG_TYPE_ERROR, "%{public}@, %{public}@, An error, %@, has occurred when fetching the inferred map item for visit, %{sensitive}@", v159, 0x2Au);
        }

        [array addObject:v163[5]];
      }

      *v159 = 0;
      *&v159[8] = v159;
      *&v159[16] = 0x3032000000;
      v160 = __Block_byref_object_copy__41;
      *&v161 = __Block_byref_object_dispose__41;
      *(&v161 + 1) = 0;
      v157[0] = 0;
      v157[1] = v157;
      v157[2] = 0x3032000000;
      v157[3] = __Block_byref_object_copy__41;
      v157[4] = __Block_byref_object_dispose__41;
      v158 = 0;
      learnedLocationStore4 = [(RTLearnedLocationEngine *)self learnedLocationStore];
      v122[0] = MEMORY[0x277D85DD0];
      v122[1] = 3221225472;
      v122[2] = __98__RTLearnedLocationEngine__fetchCloudCurrentDeviceVisitsBetweenStartDate_endDate_ascending_error___block_invoke_573;
      v122[3] = &unk_2788C8778;
      v124 = v159;
      v125 = v157;
      v64 = v44;
      v123 = v64;
      [learnedLocationStore4 fetchFinerGranularityInferredMapItemForVisit:v121 handler:v122];

      v65 = v64;
      v66 = [MEMORY[0x277CBEAA8] now];
      v67 = dispatch_time(0, 3600000000000);
      if (!dispatch_semaphore_wait(v65, v67))
      {
        goto LABEL_44;
      }

      v68 = [MEMORY[0x277CBEAA8] now];
      [v68 timeIntervalSinceDate:v66];
      v70 = v69;
      v71 = objc_opt_new();
      v72 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols3 = [MEMORY[0x277CCACC8] callStackSymbols];
      v74 = [callStackSymbols3 filteredArrayUsingPredicate:v72];
      firstObject3 = [v74 firstObject];

      [v71 submitToCoreAnalytics:firstObject3 type:1 duration:v70];
      v76 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
      {
        *v150 = 0;
        _os_log_fault_impl(&dword_2304B3000, v76, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v150, 2u);
      }

      v77 = MEMORY[0x277CCA9B8];
      v174[0] = v118;
      *v150 = @"semaphore wait timeout";
      v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:v174 count:1];
      v79 = [v77 errorWithDomain:v117 code:15 userInfo:v78];

      if (v79)
      {
        v80 = v79;

        v81 = 0;
      }

      else
      {
LABEL_44:
        v81 = 1;
        v79 = v61;
      }

      v82 = v79;
      if ((v81 & 1) == 0)
      {
        objc_storeStrong(v163 + 5, v79);
      }

      if (v163[5])
      {
        v83 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          v90 = objc_opt_class();
          v91 = NSStringFromClass(v90);
          v92 = NSStringFromSelector(a2);
          v93 = v163[5];
          *v150 = 138544131;
          *&v150[4] = v91;
          v151 = 2114;
          v152 = v92;
          v153 = 2112;
          v154 = v93;
          v155 = 2117;
          v156 = v121;
          _os_log_error_impl(&dword_2304B3000, v83, OS_LOG_TYPE_ERROR, "%{public}@, %{public}@, An error, %@, has occurred when fetching the finer granularity inferred map item for visit, %{sensitive}@", v150, 0x2Au);
        }

        [array addObject:v163[5]];
      }

      v84 = objc_alloc(MEMORY[0x277D01428]);
      v85 = [v84 initWithLearnedVisit:v121 inferredMapItem:*(*&buf[8] + 40) finerGranularityInferredMapItem:*(*&v159[8] + 40) userPlaceType:0 userPlaceTypeSource:0 loiIdentifier:0];
      [v115 addObject:v85];

      _Block_object_dispose(v157, 8);
      _Block_object_dispose(v159, 8);

      _Block_object_dispose(&v162, 8);
      _Block_object_dispose(buf, 8);
    }

    v38 = [obj countByEnumeratingWithState:&v130 objects:v168 count:16];
  }

  while (v38);
LABEL_53:

  if ([array count])
  {
    v94 = _RTSafeArray();
    v95 = _RTMultiErrorCreate();
  }

  else
  {
    v95 = 0;
  }

  if (error)
  {
    v96 = v95;
    *error = v95;
  }

LABEL_59:
  _Block_object_dispose(&v138, 8);

  _Block_object_dispose(&v144, 8);

  return v115;
}

void __98__RTLearnedLocationEngine__fetchCloudCurrentDeviceVisitsBetweenStartDate_endDate_ascending_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __98__RTLearnedLocationEngine__fetchCloudCurrentDeviceVisitsBetweenStartDate_endDate_ascending_error___block_invoke_571(uint64_t a1, void *a2, void *a3)
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

void __98__RTLearnedLocationEngine__fetchCloudCurrentDeviceVisitsBetweenStartDate_endDate_ascending_error___block_invoke_573(uint64_t a1, void *a2, void *a3)
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

- (id)_extractBluePOIQueriesJSONDObjectBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  v67 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  selfCopy = self;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      getFormattedDateString = [dateCopy getFormattedDateString];
      getFormattedDateString2 = [endDateCopy getFormattedDateString];
      *buf = 138544130;
      v57 = v12;
      v58 = 2114;
      v59 = v13;
      v60 = 2112;
      v61 = getFormattedDateString;
      v62 = 2112;
      v63 = getFormattedDateString2;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%{public}@, %{public}@, retrieving Blue POI Queries json objects between start date, %@, end date, %@,", buf, 0x2Au);

      self = selfCopy;
    }
  }

  v55 = 0;
  v48 = [(RTLearnedLocationEngine *)self _mapItemProviderForClass:objc_opt_class() error:&v55];
  v16 = v55;
  if (v16)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = NSStringFromSelector(a2);
      *buf = 138543874;
      v57 = v40;
      v58 = 2114;
      v59 = v41;
      v60 = 2112;
      v61 = v16;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%{public}@, %{public}@, Unable to instantiate the BluePOI map item provider an error has occurred, %@", buf, 0x20u);
    }

    if (error)
    {
      v18 = v16;
      v19 = 0;
      *error = v16;
    }

    else
    {
      v19 = 0;
    }

    v21 = v48;
  }

  else
  {
    v54 = 0;
    v20 = [(RTLearnedLocationEngine *)self _fetchCloudCurrentDeviceVisitsBetweenStartDate:dateCopy endDate:endDateCopy ascending:1 error:&v54];
    v42 = v54;
    v21 = v48;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = NSStringFromSelector(a2);
        v26 = [v20 count];
        *buf = 138543874;
        v57 = v24;
        v58 = 2114;
        v59 = v25;
        v60 = 2048;
        v61 = v26;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%{public}@, %{public}@, fetched visits, %lu", buf, 0x20u);
      }
    }

    v44 = endDateCopy;
    v45 = dateCopy;
    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count", v42)}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v20;
    v27 = [obj countByEnumeratingWithState:&v50 objects:v66 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v51;
      v30 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v51 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v50 + 1) + 8 * i);
          v33 = [(RTLearnedLocationEngine *)self _extractBluePOIQueriesJSONDObjectForVisit:v32 bluePOIMapItemProvider:v21];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v34 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              v35 = objc_opt_class();
              v36 = NSStringFromClass(v35);
              v37 = NSStringFromSelector(a2);
              *buf = 138544387;
              v57 = v36;
              v58 = 2114;
              v59 = v37;
              v60 = 2048;
              v61 = 0;
              v62 = 2117;
              v63 = v32;
              v64 = 2112;
              v65 = v33;
              _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%{public}@, %{public}@, idx, %lu, visit, %{sensitive}@, query JSON dict, %@", buf, 0x34u);

              self = selfCopy;
              v21 = v48;
            }
          }

          [v19 addObject:v33];
        }

        v28 = [obj countByEnumeratingWithState:&v50 objects:v66 count:16];
      }

      while (v28);
    }

    endDateCopy = v44;
    dateCopy = v45;
    v16 = 0;
  }

  return v19;
}

- (id)dataWithBluePOIQueriesBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      *buf = 138543618;
      v35 = v13;
      v36 = 2114;
      v37 = v14;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%{public}@, %{public}@, generating Blue POI Queries data", buf, 0x16u);
    }
  }

  v31 = 0;
  v15 = [(RTLearnedLocationEngine *)self _extractBluePOIQueriesJSONDObjectBetweenStartDate:dateCopy endDate:endDateCopy error:&v31];
  v16 = v31;
  if (([MEMORY[0x277CCAAA0] isValidJSONObject:v15] & 1) == 0)
  {
    v32[0] = *MEMORY[0x277CCA450];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v22 = [mainBundle localizedStringForKey:@"Invalid JSON object for JSON serialization" value:&stru_284528390 table:0];
    v33[0] = v22;
    v32[1] = *MEMORY[0x277CCA498];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v24 = [mainBundle2 localizedStringForKey:@"Refer to NSJSONSerialization spec for valid JSON objects" value:&stru_284528390 table:0];
    v33[1] = v24;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v19];
    v17 = v25;
    if (error)
    {
      v26 = v25;
      *error = v17;
    }

    goto LABEL_11;
  }

  v30 = 0;
  v17 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v15 options:9 error:&v30];
  v18 = v30;
  v19 = v18;
  if (v18)
  {
    if (error)
    {
      v20 = v18;
      *error = v19;
    }

LABEL_11:
    data = [MEMORY[0x277CBEA90] data];
    goto LABEL_12;
  }

  data = v17;
  v17 = data;
LABEL_12:
  v28 = data;

  return v28;
}

- (BOOL)_generateDiagnosticFilesAtURL:(id)l error:(id *)error
{
  v66[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v56 = 0;
  v8 = [(RTLearnedLocationEngine *)self _lastVisitWithError:&v56];
  v9 = v56;
  if (v9)
  {
    v10 = v9;
    v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = NSStringFromSelector(a2);
      *buf = 138543874;
      v58 = v40;
      v59 = 2114;
      v60 = v41;
      v61 = 2112;
      v62 = v10;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%{public}@, %{public}@, Unable to retrieve the last visit an error has occurred, %@", buf, 0x20u);
    }

    if (error)
    {
LABEL_5:
      v12 = v10;
      v13 = 0;
      *error = v10;
      goto LABEL_29;
    }

LABEL_21:
    v13 = 0;
    goto LABEL_29;
  }

  if (!v8)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = NSStringFromSelector(a2);
      *buf = 138543618;
      v58 = v44;
      v59 = 2114;
      v60 = v45;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%{public}@, %{public}@, No last visit was found. We're unable to extract queries since none exist.", buf, 0x16u);
    }

    v34 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277D01448];
    v65 = *MEMORY[0x277CCA450];
    v66[0] = @"No last visit found.";
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:&v65 count:1];
    v10 = [v34 errorWithDomain:v35 code:7 userInfo:v36];

    if (error)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

  exitDate = [v8 exitDate];
  v15 = [exitDate dateByAddingTimeInterval:3600.0];

  [v15 dateByAddingTimeInterval:-612000.0];
  v51 = v55[1] = 0;
  v52 = v15;
  v53 = [RTLearnedLocationEngine dataWithBluePOIQueriesBetweenStartDate:"dataWithBluePOIQueriesBetweenStartDate:endDate:error:" endDate:? error:?];
  v50 = 0;
  path = [lCopy path];
  routineBluePOIQueryPath = [MEMORY[0x277CCAA00] routineBluePOIQueryPath];
  v18 = [path stringByAppendingPathComponent:routineBluePOIQueryPath];

  stringByDeletingLastPathComponent = [v18 stringByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(routineBluePOIQueryPath) = [defaultManager fileExistsAtPath:stringByDeletingLastPathComponent];

  if (routineBluePOIQueryPath)
  {
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      v49 = NSStringFromClass(v22);
      v23 = NSStringFromSelector(a2);
      *buf = 138412802;
      v58 = v49;
      v59 = 2112;
      v60 = v23;
      v24 = v23;
      v61 = 2112;
      v62 = stringByDeletingLastPathComponent;
      _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, %@, creating destination directory, %@", buf, 0x20u);
    }
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v55[0] = 0;
  v26 = [defaultManager2 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:v55];
  v27 = v55[0];

  if (v26 && !v27)
  {
LABEL_14:
    v54 = 0;
    v28 = v53;
    [v53 writeToFile:v18 options:0 error:&v54];
    v27 = v54;
    v13 = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = NSStringFromSelector(a2);
        *buf = 138412802;
        v58 = v31;
        v59 = 2112;
        v60 = v32;
        v61 = 2112;
        v62 = v18;
        _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@, %@, writen BluePOI queries file, %@", buf, 0x20u);

        v28 = v53;
      }

      v13 = 1;
    }
  }

  else
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = NSStringFromSelector(a2);
      *buf = 138413058;
      v58 = v47;
      v59 = 2112;
      v60 = v48;
      v61 = 2112;
      v62 = stringByDeletingLastPathComponent;
      v63 = 2112;
      v64 = v27;
      _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "%@, %@, failed to create directory, %@, error, %@", buf, 0x2Au);
    }

    if (error)
    {
      v38 = v27;
      v13 = 0;
      *error = v27;
    }

    else
    {
      v13 = 0;
    }

    v28 = v53;
  }

  v10 = 0;
LABEL_29:

  return v13;
}

- (void)sendDiagnosticsToURL:(id)l options:(id)options handler:(id)handler
{
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTLearnedLocationEngine *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RTLearnedLocationEngine_sendDiagnosticsToURL_options_handler___block_invoke;
  block[3] = &unk_2788C47F8;
  v19 = handlerCopy;
  v20 = a2;
  block[4] = self;
  v17 = optionsCopy;
  v18 = lCopy;
  v13 = lCopy;
  v14 = handlerCopy;
  v15 = optionsCopy;
  dispatch_async(queue, block);
}

void __64__RTLearnedLocationEngine_sendDiagnosticsToURL_options_handler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 64));
      v6 = *(a1 + 40);
      *buf = 138412802;
      v20 = v4;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, %@, options, %@", buf, 0x20u);
    }
  }

  if ([*(a1 + 40) hasMask:1])
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v18 = 0;
    v9 = [v7 _generateDiagnosticFilesAtURL:v8 error:&v18];
    v10 = v18;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(*(a1 + 64));
        v15 = v14;
        v16 = @"NO";
        *buf = 138413058;
        v20 = v13;
        v21 = 2112;
        if (v9)
        {
          v16 = @"YES";
        }

        v22 = v14;
        v23 = 2112;
        v24 = v16;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, success, %@, error, %@", buf, 0x2Au);
      }
    }

    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))(v17, v10);
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (id)_maximumExpirationDateForLearnedPlace:(id)place
{
  placeCopy = place;
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [date dateByAddingTimeInterval:4838400.0];

  if (!placeCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v30 = 0;
    v24 = "Invalid parameter not satisfying: place";
    v25 = &v30;
LABEL_20:
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, v24, v25, 2u);
    goto LABEL_21;
  }

  mapItem = [placeCopy mapItem];

  if (!mapItem)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v29 = 0;
    v24 = "Invalid parameter not satisfying: place.mapItem";
    v25 = &v29;
    goto LABEL_20;
  }

  mapItem2 = [placeCopy mapItem];
  address = [mapItem2 address];

  if (!address)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v28 = 0;
    v24 = "Invalid parameter not satisfying: place.mapItem.address";
    v25 = &v28;
    goto LABEL_20;
  }

  v9 = v5;
  expirationDate = [placeCopy expirationDate];
  v11 = expirationDate;
  if (v9 >= expirationDate)
  {
    v12 = v9;
  }

  else
  {
    v12 = expirationDate;
  }

  v13 = v12;

  v14 = v13;
  mapItem3 = [placeCopy mapItem];
  expirationDate2 = [mapItem3 expirationDate];

  if (v14 >= expirationDate2)
  {
    v17 = v14;
  }

  else
  {
    v17 = expirationDate2;
  }

  v18 = v17;

  v19 = v18;
  mapItem4 = [placeCopy mapItem];
  address2 = [mapItem4 address];
  expirationDate3 = [address2 expirationDate];

  if (v19 >= expirationDate3)
  {
    v23 = v19;
  }

  else
  {
    v23 = expirationDate3;
  }

  v5 = v23;

LABEL_21:
  v26 = v5;

  return v5;
}

- (BOOL)_isUpdateLearnedPlaceWithISO3166CountryCodeAndSubdivisionCodeRequired:(id)required
{
  v32 = *MEMORY[0x277D85DE8];
  requiredCopy = required;
  mapItem = [requiredCopy mapItem];
  disputed = [mapItem disputed];

  if (disputed)
  {
    v6 = 10368000.0;
LABEL_7:
    mapItem2 = [requiredCopy mapItem];
    address = [mapItem2 address];
    creationDate = [address creationDate];
    v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-v6];
    v22 = [creationDate isBeforeDate:v21];

    goto LABEL_8;
  }

  mapItem3 = [requiredCopy mapItem];
  address2 = [mapItem3 address];
  iso3166CountryCode = [address2 iso3166CountryCode];
  v10 = [iso3166CountryCode isEqualToString:&stru_284528390];

  if (v10)
  {
    v6 = 2592000.0;
    goto LABEL_7;
  }

  mapItem4 = [requiredCopy mapItem];
  address3 = [mapItem4 address];
  iso3166CountryCode2 = [address3 iso3166CountryCode];

  if (iso3166CountryCode2)
  {
    mapItem5 = [requiredCopy mapItem];
    address4 = [mapItem5 address];
    iso3166SubdivisionCode = [address4 iso3166SubdivisionCode];
    v17 = iso3166SubdivisionCode == 0;

    v6 = dbl_230AFE240[v17];
    goto LABEL_7;
  }

  v22 = 1;
  v6 = 0.0;
LABEL_8:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = @"NO";
      v26 = 138740483;
      v27 = requiredCopy;
      if (v22)
      {
        v24 = @"YES";
      }

      v28 = 2048;
      v29 = v6;
      v30 = 2112;
      v31 = v24;
      _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "ISO 3166 country code and subdivision code refresh for place, %{sensitive}@, refreshInterval, %.2f, required, %@", &v26, 0x20u);
    }
  }

  return v22;
}

- (BOOL)_isUpdateLearnedPlaceWithGEOAddressObjectSerializationRequired:(id)required
{
  v20 = *MEMORY[0x277D85DE8];
  requiredCopy = required;
  v4 = requiredCopy;
  if (!requiredCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    LOWORD(v16) = 0;
    v14 = "Invalid parameter not satisfying: place";
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v14, &v16, 2u);
    goto LABEL_16;
  }

  mapItem = [requiredCopy mapItem];

  if (!mapItem)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    LOWORD(v16) = 0;
    v14 = "Invalid parameter not satisfying: place.mapItem";
    goto LABEL_15;
  }

  mapItem2 = [v4 mapItem];
  address = [mapItem2 address];

  if (!address)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      v14 = "Invalid parameter not satisfying: place.mapItem.address";
      goto LABEL_15;
    }

LABEL_16:
    v11 = 0;
LABEL_17:

    goto LABEL_18;
  }

  mapItem3 = [v4 mapItem];
  address2 = [mapItem3 address];
  geoAddressData = [address2 geoAddressData];
  v11 = geoAddressData == 0;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"NO";
      if (!geoAddressData)
      {
        v13 = @"YES";
      }

      v16 = 138740227;
      v17 = v4;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "GEOAddressObject serialization, refresh for place, %{sensitive}@, required, %@", &v16, 0x16u);
    }

    goto LABEL_17;
  }

LABEL_18:

  return v11;
}

- (id)_updateLearnedPlaceWithGEOAddressObjectSerialization:(id)serialization
{
  v94[1] = *MEMORY[0x277D85DE8];
  serializationCopy = serialization;
  if (serializationCopy)
  {
    if (![(RTPlatform *)self->_platform iPhoneDevice]|| ![(RTLearnedLocationEngine *)self _isUpdateLearnedPlaceWithGEOAddressObjectSerializationRequired:serializationCopy])
    {
      v29 = serializationCopy;
      goto LABEL_27;
    }

    v5 = objc_alloc(MEMORY[0x277D011B0]);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v73 = [v5 initWithUseBackgroundTraits:1 analyticsIdentifier:v7];

    *v85 = 0;
    v86 = v85;
    v87 = 0x3032000000;
    v88 = __Block_byref_object_copy__41;
    v89 = __Block_byref_object_dispose__41;
    v90 = 0;
    v79 = 0;
    v80 = &v79;
    v81 = 0x3032000000;
    v82 = __Block_byref_object_copy__41;
    v83 = __Block_byref_object_dispose__41;
    v84 = 0;
    v8 = dispatch_semaphore_create(0);
    mapServiceManager = [(RTLearnedLocationEngine *)self mapServiceManager];
    mapItem = [serializationCopy mapItem];
    geoMapItemHandle = [mapItem geoMapItemHandle];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __80__RTLearnedLocationEngine__updateLearnedPlaceWithGEOAddressObjectSerialization___block_invoke;
    v75[3] = &unk_2788C61E8;
    v77 = v85;
    v78 = &v79;
    v12 = v8;
    v76 = v12;
    [mapServiceManager fetchMapItemFromHandle:geoMapItemHandle options:v73 handler:v75];

    dsema = v12;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
      firstObject = [v21 firstObject];

      [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
      v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v24 = MEMORY[0x277CCA9B8];
      v94[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v94 count:1];
      v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

      if (v26)
      {
        v27 = v26;

        v28 = 0;
LABEL_15:

        v72 = v26;
        if ((v28 & 1) == 0)
        {
          objc_storeStrong(v80 + 5, v26);
        }

        if (v80[5])
        {
          v31 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v60 = v80[5];
            *buf = 138412290;
            *&buf[4] = v60;
            _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "error fetching GEOAddressObject serialization, %@", buf, 0xCu);
          }

          v29 = serializationCopy;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              shortAddress = [*(v86 + 5) shortAddress];
              *buf = 138740227;
              *&buf[4] = shortAddress;
              v92 = 2117;
              v93 = serializationCopy;
              _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "update GEOAddressObject serialization, %{sensitive}@, for place, %{sensitive}@", buf, 0x16u);
            }
          }

          v71 = [(RTLearnedLocationEngine *)self _maximumExpirationDateForLearnedPlace:serializationCopy];
          mapItem2 = [serializationCopy mapItem];
          mapItem3 = [serializationCopy mapItem];
          address = [mapItem3 address];

          v36 = objc_alloc(MEMORY[0x277D01060]);
          identifier = [address identifier];
          v38 = *(v86 + 5);
          subPremises = [address subPremises];
          isIsland = [address isIsland];
          creationDate = [address creationDate];
          iso3166CountryCode = [address iso3166CountryCode];
          iso3166SubdivisionCode = [address iso3166SubdivisionCode];
          v64 = [v36 initWithIdentifier:identifier geoAddressObject:v38 subPremises:subPremises isIsland:isIsland creationDate:creationDate expirationDate:v71 iso3166CountryCode:iso3166CountryCode iso3166SubdivisionCode:iso3166SubdivisionCode];

          v63 = objc_alloc(MEMORY[0x277D011A0]);
          identifier2 = [mapItem2 identifier];
          name = [mapItem2 name];
          category = [mapItem2 category];
          categoryMUID = [mapItem2 categoryMUID];
          location = [mapItem2 location];
          source = [mapItem2 source];
          mapItemPlaceType = [mapItem2 mapItemPlaceType];
          muid = [mapItem2 muid];
          resultProviderID = [mapItem2 resultProviderID];
          geoMapItemHandle2 = [mapItem2 geoMapItemHandle];
          geoMapItemIdentifier = [mapItem2 geoMapItemIdentifier];
          creationDate2 = [mapItem2 creationDate];
          extendedAttributes = [mapItem2 extendedAttributes];
          displayLanguage = [mapItem2 displayLanguage];
          LOBYTE(v61) = [mapItem2 disputed];
          v52 = [v63 initWithIdentifier:identifier2 name:name category:category categoryMUID:categoryMUID address:v64 location:location source:source mapItemPlaceType:mapItemPlaceType muid:muid resultProviderID:resultProviderID geoMapItemHandle:geoMapItemHandle2 geoMapItemIdentifier:geoMapItemIdentifier creationDate:creationDate2 expirationDate:v71 extendedAttributes:extendedAttributes displayLanguage:displayLanguage disputed:v61];

          v53 = [RTLearnedPlace alloc];
          identifier3 = [serializationCopy identifier];
          type = [serializationCopy type];
          typeSource = [serializationCopy typeSource];
          customLabel = [serializationCopy customLabel];
          creationDate3 = [serializationCopy creationDate];
          v29 = [(RTLearnedPlace *)v53 initWithIdentifier:identifier3 type:type typeSource:typeSource mapItem:v52 customLabel:customLabel creationDate:creationDate3 expirationDate:v71];
        }

        _Block_object_dispose(&v79, 8);
        _Block_object_dispose(v85, 8);

        goto LABEL_27;
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = 1;
    goto LABEL_15;
  }

  v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *v85 = 0;
    _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place", v85, 2u);
  }

  v29 = 0;
LABEL_27:

  return v29;
}

void __80__RTLearnedLocationEngine__updateLearnedPlaceWithGEOAddressObjectSerialization___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 address];
    v7 = [v6 geoAddressObject];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_updateLearnedPlaceWithISO3166CountryCodeAndSubdivisionCode:(id)code
{
  v116[1] = *MEMORY[0x277D85DE8];
  codeCopy = code;
  if (codeCopy)
  {
    if (![(RTPlatform *)self->_platform iPhoneDevice]|| ![(RTLearnedLocationEngine *)self _isUpdateLearnedPlaceWithISO3166CountryCodeAndSubdivisionCodeRequired:codeCopy])
    {
      v29 = codeCopy;
      goto LABEL_27;
    }

    *v105 = 0;
    v106 = v105;
    v107 = 0x3032000000;
    v108 = __Block_byref_object_copy__41;
    v109 = __Block_byref_object_dispose__41;
    v110 = 0;
    v99 = 0;
    v100 = &v99;
    v101 = 0x3032000000;
    v102 = __Block_byref_object_copy__41;
    v103 = __Block_byref_object_dispose__41;
    v104 = 0;
    v93 = 0;
    v94 = &v93;
    v95 = 0x3032000000;
    v96 = __Block_byref_object_copy__41;
    v97 = __Block_byref_object_dispose__41;
    v98 = 0;
    v5 = objc_alloc(MEMORY[0x277D011B0]);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v86 = [v5 initWithUseBackgroundTraits:1 analyticsIdentifier:v7];

    v8 = dispatch_semaphore_create(0);
    mapServiceManager = [(RTLearnedLocationEngine *)self mapServiceManager];
    mapItem = [codeCopy mapItem];
    location = [mapItem location];
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __87__RTLearnedLocationEngine__updateLearnedPlaceWithISO3166CountryCodeAndSubdivisionCode___block_invoke;
    v88[3] = &unk_2788C47D0;
    v90 = v105;
    v91 = &v99;
    v92 = &v93;
    v12 = v8;
    v89 = v12;
    [mapServiceManager fetchCountryAndSubdivisionCodesFromLocation:location options:v86 handler:v88];

    dsema = v12;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
      firstObject = [v21 firstObject];

      [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
      v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v24 = MEMORY[0x277CCA9B8];
      v116[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v116 count:1];
      v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

      if (v26)
      {
        v27 = v26;

        v28 = 0;
LABEL_15:

        v85 = v26;
        if ((v28 & 1) == 0)
        {
          objc_storeStrong(v94 + 5, v26);
        }

        if (v94[5])
        {
          v31 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v61 = v94[5];
            *buf = 138739971;
            *&buf[4] = v61;
            _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "error fetching ISO 3166 country and subdivision codes, %{sensitive}@", buf, 0xCu);
          }

          v29 = codeCopy;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = *(v106 + 5);
              v34 = v100[5];
              *buf = 138740483;
              *&buf[4] = v33;
              v112 = 2117;
              v113 = v34;
              v114 = 2117;
              v115 = codeCopy;
              _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "update ISO 3166 country code, %{sensitive}@, subdivision code, %{sensitive}@, for place, %{sensitive}@", buf, 0x20u);
            }
          }

          mapItem2 = [codeCopy mapItem];
          address = [mapItem2 address];

          v84 = [(RTLearnedLocationEngine *)self _maximumExpirationDateForLearnedPlace:codeCopy];
          v64 = objc_alloc(MEMORY[0x277D01060]);
          identifier = [address identifier];
          geoAddressData = [address geoAddressData];
          subPremises = [address subPremises];
          subThoroughfare = [address subThoroughfare];
          thoroughfare = [address thoroughfare];
          subLocality = [address subLocality];
          locality = [address locality];
          subAdministrativeArea = [address subAdministrativeArea];
          administrativeArea = [address administrativeArea];
          administrativeAreaCode = [address administrativeAreaCode];
          postalCode = [address postalCode];
          country = [address country];
          countryCode = [address countryCode];
          inlandWater = [address inlandWater];
          ocean = [address ocean];
          areasOfInterest = [address areasOfInterest];
          isIsland = [address isIsland];
          creationDate = [address creationDate];
          LOBYTE(v62) = isIsland;
          v65 = [v64 initWithIdentifier:identifier geoAddressData:geoAddressData subPremises:subPremises subThoroughfare:subThoroughfare thoroughfare:thoroughfare subLocality:subLocality locality:locality subAdministrativeArea:subAdministrativeArea administrativeArea:administrativeArea administrativeAreaCode:administrativeAreaCode postalCode:postalCode country:country countryCode:countryCode inlandWater:inlandWater ocean:ocean areasOfInterest:areasOfInterest isIsland:v62 creationDate:creationDate expirationDate:v84 iso3166CountryCode:*(v106 + 5) iso3166SubdivisionCode:v100[5]];

          mapItem3 = [codeCopy mapItem];
          v73 = objc_alloc(MEMORY[0x277D011A0]);
          identifier2 = [mapItem3 identifier];
          name = [mapItem3 name];
          category = [mapItem3 category];
          categoryMUID = [mapItem3 categoryMUID];
          location2 = [mapItem3 location];
          source = [mapItem3 source];
          mapItemPlaceType = [mapItem3 mapItemPlaceType];
          muid = [mapItem3 muid];
          resultProviderID = [mapItem3 resultProviderID];
          geoMapItemHandle = [mapItem3 geoMapItemHandle];
          geoMapItemIdentifier = [mapItem3 geoMapItemIdentifier];
          creationDate2 = [mapItem3 creationDate];
          extendedAttributes = [mapItem3 extendedAttributes];
          displayLanguage = [mapItem3 displayLanguage];
          LOBYTE(v63) = [mapItem3 disputed];
          v53 = [v73 initWithIdentifier:identifier2 name:name category:category categoryMUID:categoryMUID address:v65 location:location2 source:source mapItemPlaceType:mapItemPlaceType muid:muid resultProviderID:resultProviderID geoMapItemHandle:geoMapItemHandle geoMapItemIdentifier:geoMapItemIdentifier creationDate:creationDate2 expirationDate:v84 extendedAttributes:extendedAttributes displayLanguage:displayLanguage disputed:v63];

          v54 = [RTLearnedPlace alloc];
          identifier3 = [codeCopy identifier];
          type = [codeCopy type];
          typeSource = [codeCopy typeSource];
          customLabel = [codeCopy customLabel];
          creationDate3 = [codeCopy creationDate];
          v29 = [(RTLearnedPlace *)v54 initWithIdentifier:identifier3 type:type typeSource:typeSource mapItem:v53 customLabel:customLabel creationDate:creationDate3 expirationDate:v84];
        }

        _Block_object_dispose(&v93, 8);
        _Block_object_dispose(&v99, 8);

        _Block_object_dispose(v105, 8);
        goto LABEL_27;
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = 1;
    goto LABEL_15;
  }

  v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *v105 = 0;
    _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place", v105, 2u);
  }

  v29 = 0;
LABEL_27:

  return v29;
}

void __87__RTLearnedLocationEngine__updateLearnedPlaceWithISO3166CountryCodeAndSubdivisionCode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  if ([v20 count])
  {
    v6 = [v20 firstObject];
    v7 = [v6 address];
    v8 = [v7 iso3166CountryCode];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [v20 firstObject];
    v12 = [v11 address];
    v13 = [v12 iso3166SubdivisionCode];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = &stru_284528390;

    v18 = *(*(a1 + 48) + 8);
    v11 = *(v18 + 40);
    *(v18 + 40) = &stru_284528390;
  }

  if ([v5 code] == -8)
  {
    v19 = 0;
  }

  else
  {
    v19 = v5;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v19);
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_isUpdateLearnedPlaceWithPOICategoryCodeRequired:(id)required
{
  v73[1] = *MEMORY[0x277D85DE8];
  requiredCopy = required;
  v6 = requiredCopy;
  if (!requiredCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v68) = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place", &v68, 2u);
    }

    goto LABEL_7;
  }

  mapItem = [requiredCopy mapItem];
  if ([mapItem mapItemPlaceType] != 2)
  {
    mapItem2 = [v6 mapItem];
    mapItemPlaceType = [mapItem2 mapItemPlaceType];

    if (mapItemPlaceType == 1)
    {
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v46 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = NSStringFromSelector(a2);
        LODWORD(v68) = 138412290;
        *(&v68 + 4) = v47;
        _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_INFO, "%@, not POI or AOI, skip category update", &v68, 0xCu);
      }
    }

LABEL_7:
    v9 = 0;
    goto LABEL_26;
  }

LABEL_9:
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  *&v68 = 0;
  *(&v68 + 1) = &v68;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__41;
  v71 = __Block_byref_object_dispose__41;
  v72 = 0;
  mapItem3 = [v6 mapItem];
  category = [mapItem3 category];
  v14 = [category isEqualToString:*MEMORY[0x277D01468]];

  if (v14)
  {
    *(v58 + 24) = 1;
  }

  else
  {
    mapItem4 = [v6 mapItem];
    category2 = [mapItem4 category];
    v17 = category2 == 0;

    if (v17)
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v18 = [MEMORY[0x277CBEAA8] now];
      v49 = [currentCalendar components:12 fromDate:v18];

      v19 = [currentCalendar dateFromComponents:v49];
      v20 = dispatch_semaphore_create(0);
      learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
      identifier = [v6 identifier];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __76__RTLearnedLocationEngine__isUpdateLearnedPlaceWithPOICategoryCodeRequired___block_invoke;
      v51[3] = &unk_2788C87A0;
      v56 = a2;
      v54 = &v68;
      v48 = v19;
      v52 = v48;
      v55 = &v57;
      v23 = v20;
      v53 = v23;
      [learnedLocationStore fetchLastVisitToPlaceWithIdentifier:identifier handler:v51];

      v24 = v23;
      v25 = [MEMORY[0x277CBEAA8] now];
      v26 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v24, v26))
      {
        v27 = [MEMORY[0x277CBEAA8] now];
        [v27 timeIntervalSinceDate:v25];
        v29 = v28;
        v30 = objc_opt_new();
        v31 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v33 = [callStackSymbols filteredArrayUsingPredicate:v31];
        firstObject = [v33 firstObject];

        [v30 submitToCoreAnalytics:firstObject type:1 duration:v29];
        v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v35, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v36 = MEMORY[0x277CCA9B8];
        v73[0] = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v73 count:1];
        v38 = [v36 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v37];

        if (v38)
        {
          v39 = v38;
        }
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = NSStringFromSelector(a2);
      v42 = v41;
      v43 = *(*(&v68 + 1) + 40);
      if (*(v58 + 24))
      {
        v44 = @"YES";
      }

      else
      {
        v44 = @"NO";
      }

      *buf = 138413059;
      *&buf[4] = v41;
      v62 = 2117;
      v63 = v6;
      v64 = 2117;
      v65 = v43;
      v66 = 2112;
      v67 = v44;
      _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "%@, POI Category refresh for place, %{sensitive}@, last visit, %{sensitive}@, required, %@", buf, 0x2Au);
    }
  }

  v9 = *(v58 + 24);
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v57, 8);
LABEL_26:

  return v9 & 1;
}

void __76__RTLearnedLocationEngine__isUpdateLearnedPlaceWithPOICategoryCodeRequired___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = NSStringFromSelector(*(a1 + 64));
      v14 = 138412803;
      v15 = v13;
      v16 = 2117;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, fetched visit, %{sensitive}@, error, %@", &v14, 0x20u);
    }
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = [v10 entryDate];
  v12 = [v11 isBeforeDate:*(a1 + 32)];

  if (v12)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_updateLearnedPlaceWithCategory:(id)category
{
  v84[1] = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  if (categoryCopy)
  {
    if (![(RTPlatform *)self->_platform iPhoneDevice]|| ![(RTLearnedLocationEngine *)self _isUpdateLearnedPlaceWithPOICategoryCodeRequired:categoryCopy])
    {
      v30 = categoryCopy;
      goto LABEL_27;
    }

    v5 = objc_alloc(MEMORY[0x277D011B0]);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v64 = [v5 initWithUseBackgroundTraits:1 analyticsIdentifier:v7];

    *v75 = 0;
    v76 = v75;
    v77 = 0x3032000000;
    v78 = __Block_byref_object_copy__41;
    v79 = __Block_byref_object_dispose__41;
    v80 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = __Block_byref_object_copy__41;
    v73 = __Block_byref_object_dispose__41;
    v74 = 0;
    v8 = dispatch_semaphore_create(0);
    mapServiceManager = [(RTLearnedLocationEngine *)self mapServiceManager];
    mapItem = [categoryCopy mapItem];
    geoMapItemHandle = [mapItem geoMapItemHandle];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __59__RTLearnedLocationEngine__updateLearnedPlaceWithCategory___block_invoke;
    v65[3] = &unk_2788C61E8;
    v67 = v75;
    v68 = &v69;
    v12 = v8;
    v66 = v12;
    [mapServiceManager fetchMapItemFromHandle:geoMapItemHandle options:v64 handler:v65];

    v13 = v12;
    v14 = [MEMORY[0x277CBEAA8] now];
    v15 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v13, v15))
    {
      v16 = [MEMORY[0x277CBEAA8] now];
      [v16 timeIntervalSinceDate:v14];
      v18 = v17;
      v19 = objc_opt_new();
      v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v22 = [callStackSymbols filteredArrayUsingPredicate:v20];
      firstObject = [v22 firstObject];

      [v19 submitToCoreAnalytics:firstObject type:1 duration:v18];
      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v25 = MEMORY[0x277CCA9B8];
      v84[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v84 count:1];
      v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

      if (v27)
      {
        v28 = v27;

        v29 = 0;
LABEL_15:

        v63 = v27;
        if ((v29 & 1) == 0)
        {
          objc_storeStrong(v70 + 5, v27);
        }

        if (v70[5])
        {
          v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v51 = v70[5];
            *buf = 138412290;
            *&buf[4] = v51;
            _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "error fetching category, %@", buf, 0xCu);
          }

          v30 = categoryCopy;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = *(v76 + 5);
              *buf = 138412547;
              *&buf[4] = v34;
              v82 = 2117;
              v83 = categoryCopy;
              _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "update POI Category, %@, for place, %{sensitive}@", buf, 0x16u);
            }
          }

          v62 = [(RTLearnedLocationEngine *)self _maximumExpirationDateForLearnedPlace:categoryCopy];
          mapItem2 = [categoryCopy mapItem];
          v56 = objc_alloc(MEMORY[0x277D011A0]);
          identifier = [mapItem2 identifier];
          name = [mapItem2 name];
          v55 = *(v76 + 5);
          categoryMUID = [mapItem2 categoryMUID];
          address = [mapItem2 address];
          location = [mapItem2 location];
          source = [mapItem2 source];
          mapItemPlaceType = [mapItem2 mapItemPlaceType];
          muid = [mapItem2 muid];
          resultProviderID = [mapItem2 resultProviderID];
          geoMapItemHandle2 = [mapItem2 geoMapItemHandle];
          geoMapItemIdentifier = [mapItem2 geoMapItemIdentifier];
          creationDate = [mapItem2 creationDate];
          extendedAttributes = [mapItem2 extendedAttributes];
          displayLanguage = [mapItem2 displayLanguage];
          LOBYTE(v52) = [mapItem2 disputed];
          v43 = [v56 initWithIdentifier:identifier name:name category:v55 categoryMUID:categoryMUID address:address location:location source:source mapItemPlaceType:mapItemPlaceType muid:muid resultProviderID:resultProviderID geoMapItemHandle:geoMapItemHandle2 geoMapItemIdentifier:geoMapItemIdentifier creationDate:creationDate expirationDate:v62 extendedAttributes:extendedAttributes displayLanguage:displayLanguage disputed:v52];

          v44 = [RTLearnedPlace alloc];
          identifier2 = [categoryCopy identifier];
          type = [categoryCopy type];
          typeSource = [categoryCopy typeSource];
          customLabel = [categoryCopy customLabel];
          creationDate2 = [categoryCopy creationDate];
          v30 = [(RTLearnedPlace *)v44 initWithIdentifier:identifier2 type:type typeSource:typeSource mapItem:v43 customLabel:customLabel creationDate:creationDate2 expirationDate:v62];
        }

        _Block_object_dispose(&v69, 8);
        _Block_object_dispose(v75, 8);

        goto LABEL_27;
      }
    }

    else
    {
      v27 = 0;
    }

    v29 = 1;
    goto LABEL_15;
  }

  v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *v75 = 0;
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place", v75, 2u);
  }

  v30 = 0;
LABEL_27:

  return v30;
}

void __59__RTLearnedLocationEngine__updateLearnedPlaceWithCategory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 category];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_isUpdateLearnedPlaceWithPOICategoryMUIDRequired:(id)required
{
  v73[1] = *MEMORY[0x277D85DE8];
  requiredCopy = required;
  v6 = requiredCopy;
  if (!requiredCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v68) = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place", &v68, 2u);
    }

    goto LABEL_7;
  }

  mapItem = [requiredCopy mapItem];
  if ([mapItem mapItemPlaceType] != 2)
  {
    mapItem2 = [v6 mapItem];
    mapItemPlaceType = [mapItem2 mapItemPlaceType];

    if (mapItemPlaceType == 1)
    {
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v46 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = NSStringFromSelector(a2);
        LODWORD(v68) = 138412290;
        *(&v68 + 4) = v47;
        _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_INFO, "%@, not POI or AOI, skip categoryMUID update", &v68, 0xCu);
      }
    }

LABEL_7:
    v9 = 0;
    goto LABEL_26;
  }

LABEL_9:
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  *&v68 = 0;
  *(&v68 + 1) = &v68;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__41;
  v71 = __Block_byref_object_dispose__41;
  v72 = 0;
  mapItem3 = [v6 mapItem];
  categoryMUID = [mapItem3 categoryMUID];
  v14 = [categoryMUID isEqual:&unk_28459D110];

  if (v14)
  {
    *(v58 + 24) = 1;
  }

  else
  {
    mapItem4 = [v6 mapItem];
    categoryMUID2 = [mapItem4 categoryMUID];
    v17 = categoryMUID2 == 0;

    if (v17)
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v18 = [MEMORY[0x277CBEAA8] now];
      v49 = [currentCalendar components:12 fromDate:v18];

      v19 = [currentCalendar dateFromComponents:v49];
      v20 = dispatch_semaphore_create(0);
      learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
      identifier = [v6 identifier];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __76__RTLearnedLocationEngine__isUpdateLearnedPlaceWithPOICategoryMUIDRequired___block_invoke;
      v51[3] = &unk_2788C87A0;
      v56 = a2;
      v54 = &v68;
      v48 = v19;
      v52 = v48;
      v55 = &v57;
      v23 = v20;
      v53 = v23;
      [learnedLocationStore fetchLastVisitToPlaceWithIdentifier:identifier handler:v51];

      v24 = v23;
      v25 = [MEMORY[0x277CBEAA8] now];
      v26 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v24, v26))
      {
        v27 = [MEMORY[0x277CBEAA8] now];
        [v27 timeIntervalSinceDate:v25];
        v29 = v28;
        v30 = objc_opt_new();
        v31 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v33 = [callStackSymbols filteredArrayUsingPredicate:v31];
        firstObject = [v33 firstObject];

        [v30 submitToCoreAnalytics:firstObject type:1 duration:v29];
        v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v35, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v36 = MEMORY[0x277CCA9B8];
        v73[0] = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v73 count:1];
        v38 = [v36 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v37];

        if (v38)
        {
          v39 = v38;
        }
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = NSStringFromSelector(a2);
      v42 = v41;
      v43 = *(*(&v68 + 1) + 40);
      if (*(v58 + 24))
      {
        v44 = @"YES";
      }

      else
      {
        v44 = @"NO";
      }

      *buf = 138413059;
      *&buf[4] = v41;
      v62 = 2117;
      v63 = v6;
      v64 = 2117;
      v65 = v43;
      v66 = 2112;
      v67 = v44;
      _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "%@, POI CategoryMUID refresh for place, %{sensitive}@, last visit, %{sensitive}@, required, %@", buf, 0x2Au);
    }
  }

  v9 = *(v58 + 24);
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v57, 8);
LABEL_26:

  return v9 & 1;
}

void __76__RTLearnedLocationEngine__isUpdateLearnedPlaceWithPOICategoryMUIDRequired___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = NSStringFromSelector(*(a1 + 64));
      v14 = 138412803;
      v15 = v13;
      v16 = 2117;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, fetched visit, %{sensitive}@, error, %@", &v14, 0x20u);
    }
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = [v10 entryDate];
  v12 = [v11 isBeforeDate:*(a1 + 32)];

  if (v12)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_updateLearnedPlaceWithCategoryMUID:(id)d
{
  v84[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    if (![(RTPlatform *)self->_platform iPhoneDevice]|| ![(RTLearnedLocationEngine *)self _isUpdateLearnedPlaceWithPOICategoryMUIDRequired:dCopy])
    {
      v30 = dCopy;
      goto LABEL_27;
    }

    v5 = objc_alloc(MEMORY[0x277D011B0]);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v64 = [v5 initWithUseBackgroundTraits:1 analyticsIdentifier:v7];

    *v75 = 0;
    v76 = v75;
    v77 = 0x3032000000;
    v78 = __Block_byref_object_copy__41;
    v79 = __Block_byref_object_dispose__41;
    v80 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = __Block_byref_object_copy__41;
    v73 = __Block_byref_object_dispose__41;
    v74 = 0;
    v8 = dispatch_semaphore_create(0);
    mapServiceManager = [(RTLearnedLocationEngine *)self mapServiceManager];
    mapItem = [dCopy mapItem];
    geoMapItemHandle = [mapItem geoMapItemHandle];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __63__RTLearnedLocationEngine__updateLearnedPlaceWithCategoryMUID___block_invoke;
    v65[3] = &unk_2788C61E8;
    v67 = v75;
    v68 = &v69;
    v12 = v8;
    v66 = v12;
    [mapServiceManager fetchMapItemFromHandle:geoMapItemHandle options:v64 handler:v65];

    v13 = v12;
    v14 = [MEMORY[0x277CBEAA8] now];
    v15 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v13, v15))
    {
      v16 = [MEMORY[0x277CBEAA8] now];
      [v16 timeIntervalSinceDate:v14];
      v18 = v17;
      v19 = objc_opt_new();
      v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v22 = [callStackSymbols filteredArrayUsingPredicate:v20];
      firstObject = [v22 firstObject];

      [v19 submitToCoreAnalytics:firstObject type:1 duration:v18];
      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v25 = MEMORY[0x277CCA9B8];
      v84[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v84 count:1];
      v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

      if (v27)
      {
        v28 = v27;

        v29 = 0;
LABEL_15:

        v63 = v27;
        if ((v29 & 1) == 0)
        {
          objc_storeStrong(v70 + 5, v27);
        }

        if (v70[5])
        {
          v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v51 = v70[5];
            *buf = 138412290;
            *&buf[4] = v51;
            _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "error fetching categoryMUID, %@", buf, 0xCu);
          }

          v30 = dCopy;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = *(v76 + 5);
              *buf = 138412547;
              *&buf[4] = v34;
              v82 = 2117;
              v83 = dCopy;
              _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "update POI CategoryMUID, %@, for place, %{sensitive}@", buf, 0x16u);
            }
          }

          v62 = [(RTLearnedLocationEngine *)self _maximumExpirationDateForLearnedPlace:dCopy];
          mapItem2 = [dCopy mapItem];
          v56 = objc_alloc(MEMORY[0x277D011A0]);
          identifier = [mapItem2 identifier];
          name = [mapItem2 name];
          category = [mapItem2 category];
          v55 = *(v76 + 5);
          address = [mapItem2 address];
          location = [mapItem2 location];
          source = [mapItem2 source];
          mapItemPlaceType = [mapItem2 mapItemPlaceType];
          muid = [mapItem2 muid];
          resultProviderID = [mapItem2 resultProviderID];
          geoMapItemHandle2 = [mapItem2 geoMapItemHandle];
          geoMapItemIdentifier = [mapItem2 geoMapItemIdentifier];
          creationDate = [mapItem2 creationDate];
          extendedAttributes = [mapItem2 extendedAttributes];
          displayLanguage = [mapItem2 displayLanguage];
          LOBYTE(v52) = [mapItem2 disputed];
          v43 = [v56 initWithIdentifier:identifier name:name category:category categoryMUID:v55 address:address location:location source:source mapItemPlaceType:mapItemPlaceType muid:muid resultProviderID:resultProviderID geoMapItemHandle:geoMapItemHandle2 geoMapItemIdentifier:geoMapItemIdentifier creationDate:creationDate expirationDate:v62 extendedAttributes:extendedAttributes displayLanguage:displayLanguage disputed:v52];

          v44 = [RTLearnedPlace alloc];
          identifier2 = [dCopy identifier];
          type = [dCopy type];
          typeSource = [dCopy typeSource];
          customLabel = [dCopy customLabel];
          creationDate2 = [dCopy creationDate];
          v30 = [(RTLearnedPlace *)v44 initWithIdentifier:identifier2 type:type typeSource:typeSource mapItem:v43 customLabel:customLabel creationDate:creationDate2 expirationDate:v62];
        }

        _Block_object_dispose(&v69, 8);
        _Block_object_dispose(v75, 8);

        goto LABEL_27;
      }
    }

    else
    {
      v27 = 0;
    }

    v29 = 1;
    goto LABEL_15;
  }

  v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *v75 = 0;
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place", v75, 2u);
  }

  v30 = 0;
LABEL_27:

  return v30;
}

void __63__RTLearnedLocationEngine__updateLearnedPlaceWithCategoryMUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 categoryMUID];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_isUpdateLearnedPlaceWithGeomapItemIdentifierRequired:(id)required
{
  v66[1] = *MEMORY[0x277D85DE8];
  requiredCopy = required;
  v6 = requiredCopy;
  if (requiredCopy)
  {
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    *v49 = 0;
    v50 = v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__41;
    v53 = __Block_byref_object_dispose__41;
    v54 = 0;
    mapItem = [requiredCopy mapItem];
    geoMapItemIdentifier = [mapItem geoMapItemIdentifier];
    v9 = geoMapItemIdentifier == 0;

    if (v9)
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v10 = [MEMORY[0x277CBEAA8] now];
      v41 = [currentCalendar components:12 fromDate:v10];

      v11 = [currentCalendar dateFromComponents:v41];
      v12 = dispatch_semaphore_create(0);
      learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
      identifier = [v6 identifier];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __81__RTLearnedLocationEngine__isUpdateLearnedPlaceWithGeomapItemIdentifierRequired___block_invoke;
      v43[3] = &unk_2788C87A0;
      v48 = a2;
      v46 = v49;
      v40 = v11;
      v44 = v40;
      v47 = &v55;
      v15 = v12;
      v45 = v15;
      [learnedLocationStore fetchLastVisitToPlaceWithIdentifier:identifier handler:v43];

      v16 = v15;
      v17 = [MEMORY[0x277CBEAA8] now];
      v18 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v16, v18))
      {
        v19 = [MEMORY[0x277CBEAA8] now];
        [v19 timeIntervalSinceDate:v17];
        v21 = v20;
        v22 = objc_opt_new();
        v23 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
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
        v66[0] = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v66 count:1];
        v30 = [v28 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v29];

        if (v30)
        {
          v31 = v30;
        }
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = NSStringFromSelector(a2);
        v34 = v33;
        v35 = *(v50 + 5);
        if (*(v56 + 24))
        {
          v36 = @"YES";
        }

        else
        {
          v36 = @"NO";
        }

        *buf = 138413059;
        *&buf[4] = v33;
        v60 = 2117;
        v61 = v6;
        v62 = 2117;
        v63 = v35;
        v64 = 2112;
        v65 = v36;
        _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@, geoMapItemIdentifier refresh for place, %{sensitive}@, last visit, %{sensitive}@, required, %@", buf, 0x2Au);
      }
    }

    v37 = *(v56 + 24);
    _Block_object_dispose(v49, 8);

    _Block_object_dispose(&v55, 8);
  }

  else
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *v49 = 0;
      _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place", v49, 2u);
    }

    v37 = 0;
  }

  return v37 & 1;
}

void __81__RTLearnedLocationEngine__isUpdateLearnedPlaceWithGeomapItemIdentifierRequired___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = NSStringFromSelector(*(a1 + 64));
      v14 = 138412803;
      v15 = v13;
      v16 = 2117;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, fetched visit, %{sensitive}@, error, %@", &v14, 0x20u);
    }
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = [v10 entryDate];
  v12 = [v11 isBeforeDate:*(a1 + 32)];

  if (v12)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_updateLearnedPlaceWithGeomapItemIdentifier:(id)identifier
{
  v81[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (![(RTPlatform *)self->_platform iPhoneDevice]|| ![(RTLearnedLocationEngine *)self _isUpdateLearnedPlaceWithGeomapItemIdentifierRequired:identifierCopy])
    {
      v30 = identifierCopy;
      goto LABEL_27;
    }

    v5 = objc_alloc(MEMORY[0x277D011B0]);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v63 = [v5 initWithUseBackgroundTraits:1 analyticsIdentifier:v7];

    *v74 = 0;
    v75 = v74;
    v76 = 0x3032000000;
    v77 = __Block_byref_object_copy__41;
    v78 = __Block_byref_object_dispose__41;
    v79 = 0;
    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = __Block_byref_object_copy__41;
    v72 = __Block_byref_object_dispose__41;
    v73 = 0;
    v8 = dispatch_semaphore_create(0);
    mapServiceManager = [(RTLearnedLocationEngine *)self mapServiceManager];
    mapItem = [identifierCopy mapItem];
    geoMapItemHandle = [mapItem geoMapItemHandle];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __71__RTLearnedLocationEngine__updateLearnedPlaceWithGeomapItemIdentifier___block_invoke;
    v64[3] = &unk_2788C61E8;
    v66 = v74;
    v67 = &v68;
    v12 = v8;
    v65 = v12;
    [mapServiceManager fetchMapItemFromHandle:geoMapItemHandle options:v63 handler:v64];

    v13 = v12;
    v14 = [MEMORY[0x277CBEAA8] now];
    v15 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v13, v15))
    {
      v16 = [MEMORY[0x277CBEAA8] now];
      [v16 timeIntervalSinceDate:v14];
      v18 = v17;
      v19 = objc_opt_new();
      v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v22 = [callStackSymbols filteredArrayUsingPredicate:v20];
      firstObject = [v22 firstObject];

      [v19 submitToCoreAnalytics:firstObject type:1 duration:v18];
      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v25 = MEMORY[0x277CCA9B8];
      v81[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v81 count:1];
      v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

      if (v27)
      {
        v28 = v27;

        v29 = 0;
LABEL_15:

        v62 = v27;
        if ((v29 & 1) == 0)
        {
          objc_storeStrong(v69 + 5, v27);
        }

        if (v69[5])
        {
          v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v50 = v69[5];
            *buf = 138412290;
            *&buf[4] = v50;
            _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "error fetching geoMapItemHandle, %@", buf, 0xCu);
          }

          v30 = identifierCopy;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              *&buf[4] = identifierCopy;
              _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "update GeoMapItemHandle for place, %{sensitive}@", buf, 0xCu);
            }
          }

          v61 = [(RTLearnedLocationEngine *)self _maximumExpirationDateForLearnedPlace:identifierCopy];
          mapItem2 = [identifierCopy mapItem];
          v54 = objc_alloc(MEMORY[0x277D011A0]);
          identifier = [mapItem2 identifier];
          name = [mapItem2 name];
          category = [mapItem2 category];
          categoryMUID = [mapItem2 categoryMUID];
          address = [mapItem2 address];
          location = [mapItem2 location];
          source = [mapItem2 source];
          mapItemPlaceType = [mapItem2 mapItemPlaceType];
          muid = [mapItem2 muid];
          resultProviderID = [mapItem2 resultProviderID];
          geoMapItemHandle2 = [mapItem2 geoMapItemHandle];
          v38 = *(v75 + 5);
          creationDate = [mapItem2 creationDate];
          extendedAttributes = [mapItem2 extendedAttributes];
          displayLanguage = [mapItem2 displayLanguage];
          LOBYTE(v51) = [mapItem2 disputed];
          v42 = [v54 initWithIdentifier:identifier name:name category:category categoryMUID:categoryMUID address:address location:location source:source mapItemPlaceType:mapItemPlaceType muid:muid resultProviderID:resultProviderID geoMapItemHandle:geoMapItemHandle2 geoMapItemIdentifier:v38 creationDate:creationDate expirationDate:v61 extendedAttributes:extendedAttributes displayLanguage:displayLanguage disputed:v51];

          v43 = [RTLearnedPlace alloc];
          identifier2 = [identifierCopy identifier];
          type = [identifierCopy type];
          typeSource = [identifierCopy typeSource];
          customLabel = [identifierCopy customLabel];
          creationDate2 = [identifierCopy creationDate];
          v30 = [(RTLearnedPlace *)v43 initWithIdentifier:identifier2 type:type typeSource:typeSource mapItem:v42 customLabel:customLabel creationDate:creationDate2 expirationDate:v61];
        }

        _Block_object_dispose(&v68, 8);
        _Block_object_dispose(v74, 8);

        goto LABEL_27;
      }
    }

    else
    {
      v27 = 0;
    }

    v29 = 1;
    goto LABEL_15;
  }

  v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *v74 = 0;
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place", v74, 2u);
  }

  v30 = 0;
LABEL_27:

  return v30;
}

void __71__RTLearnedLocationEngine__updateLearnedPlaceWithGeomapItemIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 geoMapItemIdentifier];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_isUpdateLearnedPlaceWithMapItemPlaceTypeRequired:(id)required
{
  v15 = *MEMORY[0x277D85DE8];
  requiredCopy = required;
  v4 = requiredCopy;
  if (!requiredCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place", &v11, 2u);
    }

    v7 = 0;
    goto LABEL_10;
  }

  mapItem = [requiredCopy mapItem];
  mapItemPlaceType = [mapItem mapItemPlaceType];
  v7 = mapItemPlaceType == 1000;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (mapItemPlaceType == 1000)
      {
        v9 = @"YES";
      }

      v11 = 138740227;
      v12 = v4;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Map Item Place Type refresh for place, %{sensitive}@, required, %@", &v11, 0x16u);
    }

LABEL_10:
  }

  return v7;
}

- (id)_updateLearnedPlaceWithMapItemPlaceType:(id)type
{
  v82[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if (typeCopy)
  {
    if (![(RTPlatform *)self->_platform iPhoneDevice]|| ![(RTLearnedLocationEngine *)self _isUpdateLearnedPlaceWithMapItemPlaceTypeRequired:typeCopy])
    {
      v30 = typeCopy;
      goto LABEL_27;
    }

    v5 = objc_alloc(MEMORY[0x277D011B0]);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v64 = [v5 initWithUseBackgroundTraits:1 analyticsIdentifier:v7];

    v75 = 0;
    v76 = &v75;
    v77 = 0x2020000000;
    v78 = 0;
    *v69 = 0;
    v70 = v69;
    v71 = 0x3032000000;
    v72 = __Block_byref_object_copy__41;
    v73 = __Block_byref_object_dispose__41;
    v74 = 0;
    v8 = dispatch_semaphore_create(0);
    mapServiceManager = [(RTLearnedLocationEngine *)self mapServiceManager];
    mapItem = [typeCopy mapItem];
    geoMapItemHandle = [mapItem geoMapItemHandle];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __67__RTLearnedLocationEngine__updateLearnedPlaceWithMapItemPlaceType___block_invoke;
    v65[3] = &unk_2788C61E8;
    v67 = &v75;
    v68 = v69;
    v12 = v8;
    v66 = v12;
    [mapServiceManager fetchMapItemFromHandle:geoMapItemHandle options:v64 handler:v65];

    v13 = v12;
    v14 = [MEMORY[0x277CBEAA8] now];
    v15 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v13, v15))
    {
      v16 = [MEMORY[0x277CBEAA8] now];
      [v16 timeIntervalSinceDate:v14];
      v18 = v17;
      v19 = objc_opt_new();
      v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v22 = [callStackSymbols filteredArrayUsingPredicate:v20];
      firstObject = [v22 firstObject];

      [v19 submitToCoreAnalytics:firstObject type:1 duration:v18];
      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v25 = MEMORY[0x277CCA9B8];
      v82[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v82 count:1];
      v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

      if (v27)
      {
        v28 = v27;

        v29 = 0;
LABEL_15:

        v63 = v27;
        if ((v29 & 1) == 0)
        {
          objc_storeStrong(v70 + 5, v27);
        }

        if (*(v70 + 5))
        {
          v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v51 = *(v70 + 5);
            *buf = 138412290;
            *&buf[4] = v51;
            _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "error fetching category, %@", buf, 0xCu);
          }

          v30 = typeCopy;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = [MEMORY[0x277D011A0] placeTypeToString:v76[3]];
              *buf = 138412547;
              *&buf[4] = v34;
              v80 = 2117;
              v81 = typeCopy;
              _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "update Map Item Place Type, %@, for place, %{sensitive}@", buf, 0x16u);
            }
          }

          v62 = [(RTLearnedLocationEngine *)self _maximumExpirationDateForLearnedPlace:typeCopy];
          mapItem2 = [typeCopy mapItem];
          v55 = objc_alloc(MEMORY[0x277D011A0]);
          identifier = [mapItem2 identifier];
          name = [mapItem2 name];
          category = [mapItem2 category];
          categoryMUID = [mapItem2 categoryMUID];
          address = [mapItem2 address];
          location = [mapItem2 location];
          source = [mapItem2 source];
          v53 = v76[3];
          muid = [mapItem2 muid];
          resultProviderID = [mapItem2 resultProviderID];
          geoMapItemHandle2 = [mapItem2 geoMapItemHandle];
          geoMapItemIdentifier = [mapItem2 geoMapItemIdentifier];
          creationDate = [mapItem2 creationDate];
          extendedAttributes = [mapItem2 extendedAttributes];
          displayLanguage = [mapItem2 displayLanguage];
          LOBYTE(v52) = [mapItem2 disputed];
          v43 = [v55 initWithIdentifier:identifier name:name category:category categoryMUID:categoryMUID address:address location:location source:source mapItemPlaceType:v53 muid:muid resultProviderID:resultProviderID geoMapItemHandle:geoMapItemHandle2 geoMapItemIdentifier:geoMapItemIdentifier creationDate:creationDate expirationDate:v62 extendedAttributes:extendedAttributes displayLanguage:displayLanguage disputed:v52];

          v44 = [RTLearnedPlace alloc];
          identifier2 = [typeCopy identifier];
          type = [typeCopy type];
          typeSource = [typeCopy typeSource];
          customLabel = [typeCopy customLabel];
          creationDate2 = [typeCopy creationDate];
          v30 = [(RTLearnedPlace *)v44 initWithIdentifier:identifier2 type:type typeSource:typeSource mapItem:v43 customLabel:customLabel creationDate:creationDate2 expirationDate:v62];
        }

        _Block_object_dispose(v69, 8);
        _Block_object_dispose(&v75, 8);

        goto LABEL_27;
      }
    }

    else
    {
      v27 = 0;
    }

    v29 = 1;
    goto LABEL_15;
  }

  v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *v69 = 0;
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place", v69, 2u);
  }

  v30 = 0;
LABEL_27:

  return v30;
}

void __67__RTLearnedLocationEngine__updateLearnedPlaceWithMapItemPlaceType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 mapItemPlaceType];
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_updateUnlabeledVisitsWithPlaceInformation:(id)information
{
  v334[1] = *MEMORY[0x277D85DE8];
  informationCopy = information;
  v208 = informationCopy;
  if (informationCopy)
  {
    oslog = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(informationCopy, "count")}];
    v214 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v208, "count")}];
    v210 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v208, "count")}];
    v264 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v208, "count")}];
    v318 = 0u;
    v319 = 0u;
    v316 = 0u;
    v317 = 0u;
    obj = v208;
    v282 = [obj countByEnumeratingWithState:&v316 objects:v333 count:16];
    if (!v282)
    {
      goto LABEL_27;
    }

    v278 = *v317;
    while (1)
    {
      v4 = 0;
      do
      {
        if (*v317 != v278)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v316 + 1) + 8 * v4);
        v315 = 0;
        v314 = 0;
        v6 = [(RTLearnedLocationEngine *)self _bestInferredMapItemForVisit:v5 bestFinerGranularityInferredMapItem:&v315 error:&v314];
        v7 = v315;
        v8 = v314;
        mapItem = [v6 mapItem];
        if (!v8)
        {
          v313 = 0;
          v11 = [(RTLearnedLocationEngine *)self _placeForMapItem:mapItem error:&v313];
          v10 = v313;
          if (v10)
          {
            array = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
            {
              *buf = 138740483;
              *&buf[4] = v5;
              *&buf[12] = 2117;
              *&buf[14] = mapItem;
              *&buf[22] = 2112;
              v329 = v10;
              _os_log_error_impl(&dword_2304B3000, array, OS_LOG_TYPE_ERROR, "failed to find place for visit, %{sensitive}@, with mapitem, %{sensitive}@, error, %@", buf, 0x20u);
            }

            goto LABEL_13;
          }

          if (v11)
          {
            [v6 confidence];
            [v5 setPlaceConfidence:?];
            [v5 setPlaceSource:{objc_msgSend(v6, "source")}];
            identifier = [v11 identifier];
            [oslog setObject:v11 forKeyedSubscript:identifier];

            identifier2 = [v11 identifier];
            array = [v214 objectForKeyedSubscript:identifier2];

            if (!array)
            {
              array = [MEMORY[0x277CBEB18] array];
              identifier3 = [v11 identifier];
              [v214 setObject:array forKeyedSubscript:identifier3];
            }

            [array addObject:v5];
            if (v7)
            {
              mapItem2 = [v7 mapItem];
              v312 = 0;
              dsema = [(RTLearnedLocationEngine *)self _storedMapItemForMapItem:mapItem2 error:&v312];
              v269 = v312;
              if (v269)
              {
                v16 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138740483;
                  *&buf[4] = v5;
                  *&buf[12] = 2117;
                  *&buf[14] = mapItem2;
                  *&buf[22] = 2112;
                  v329 = v269;
                  _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "failed to find finer granularity mapItem for visit, %{sensitive}@, with mapitem, %{sensitive}@, error, %@", buf, 0x20u);
                }
              }

              else
              {
                v17 = objc_alloc(MEMORY[0x277D01128]);
                [v7 confidence];
                v16 = [v17 initWithMapItem:dsema confidence:objc_msgSend(v7 source:{"source"), v18}];
                identifier4 = [v5 identifier];
                [v264 setObject:v16 forKeyedSubscript:identifier4];
              }
            }

LABEL_13:
          }

          goto LABEL_15;
        }

        v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138740227;
          *&buf[4] = v5;
          *&buf[12] = 2112;
          *&buf[14] = v8;
          _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "failed to find mapItem for visit, %{sensitive}@, error, %@", buf, 0x16u);
        }

LABEL_15:

        v4 = v4 + 1;
      }

      while (v282 != v4);
      v20 = [obj countByEnumeratingWithState:&v316 objects:v333 count:16];
      v282 = v20;
      if (!v20)
      {
LABEL_27:

        v212 = dispatch_semaphore_create(0);
        v308 = 0u;
        v309 = 0u;
        v310 = 0u;
        v311 = 0u;
        allKeys = [oslog allKeys];
        v213 = [allKeys countByEnumeratingWithState:&v308 objects:v332 count:16];
        if (v213)
        {
          v279 = 0;
          v211 = *v309;
          v265 = *MEMORY[0x277D01448];
          v266 = *MEMORY[0x277CCA450];
          do
          {
            v21 = 0;
            do
            {
              if (*v309 != v211)
              {
                v22 = v21;
                objc_enumerationMutation(allKeys);
                v21 = v22;
              }

              v215 = v21;
              v268 = *(*(&v308 + 1) + 8 * v21);
              v23 = [oslog objectForKeyedSubscript:?];
              v24 = [(RTLearnedLocationEngine *)self _updateLearnedPlaceWithISO3166CountryCodeAndSubdivisionCode:v23];
              [oslog setObject:v24 forKeyedSubscript:v268];

              v25 = [oslog objectForKeyedSubscript:v268];

              v26 = [(RTLearnedLocationEngine *)self _updateLearnedPlaceWithCategory:v25];
              [oslog setObject:v26 forKeyedSubscript:v268];

              v27 = [oslog objectForKeyedSubscript:v268];

              v28 = [(RTLearnedLocationEngine *)self _updateLearnedPlaceWithGEOAddressObjectSerialization:v27];
              [oslog setObject:v28 forKeyedSubscript:v268];

              v29 = [oslog objectForKeyedSubscript:v268];

              v30 = [(RTLearnedLocationEngine *)self _updateLearnedPlaceWithMapItemPlaceType:v29];
              [oslog setObject:v30 forKeyedSubscript:v268];

              v31 = [oslog objectForKeyedSubscript:v268];

              v32 = [(RTLearnedLocationEngine *)self _updateLearnedPlaceWithCategoryMUID:v31];
              [oslog setObject:v32 forKeyedSubscript:v268];

              v263 = [oslog objectForKeyedSubscript:v268];

              v33 = [(RTLearnedLocationEngine *)self _updateLearnedPlaceWithGeomapItemIdentifier:v263];
              [oslog setObject:v33 forKeyedSubscript:v268];

              v304 = 0;
              v305 = &v304;
              v306 = 0x2020000000;
              v307 = 0;
              learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
              v301[0] = MEMORY[0x277D85DD0];
              v301[1] = 3221225472;
              v301[2] = __70__RTLearnedLocationEngine__updateUnlabeledVisitsWithPlaceInformation___block_invoke;
              v301[3] = &unk_2788C8028;
              v303 = &v304;
              v35 = v212;
              v302 = v35;
              [learnedLocationStore fetchCountOfVisitsToPlaceWithIdentifier:v268 handler:v301];

              dsemaa = v35;
              v36 = [MEMORY[0x277CBEAA8] now];
              v37 = dispatch_time(0, 3600000000000);
              v38 = v279;
              if (dispatch_semaphore_wait(dsemaa, v37))
              {
                v39 = [MEMORY[0x277CBEAA8] now];
                [v39 timeIntervalSinceDate:v36];
                v41 = v40;
                v42 = objc_opt_new();
                v43 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
                callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
                v45 = [callStackSymbols filteredArrayUsingPredicate:v43];
                firstObject = [v45 firstObject];

                [v42 submitToCoreAnalytics:firstObject type:1 duration:v41];
                v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&dword_2304B3000, v47, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
                }

                v48 = MEMORY[0x277CCA9B8];
                v322 = v266;
                *buf = @"semaphore wait timeout";
                v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v322 count:1];
                v50 = [v48 errorWithDomain:v265 code:15 userInfo:v49];

                v38 = v279;
                if (v50)
                {
                  v51 = v50;

                  v38 = v50;
                }
              }

              v52 = v38;
              obja = [v214 objectForKeyedSubscript:v268];
              v53 = [obja count];
              v54 = v305[3];
              if ((v54 + v53) >= 2)
              {
                if (v54 == 1)
                {
                  learnedLocationStore2 = [(RTLearnedLocationEngine *)self learnedLocationStore];
                  v298[0] = MEMORY[0x277D85DD0];
                  v298[1] = 3221225472;
                  v298[2] = __70__RTLearnedLocationEngine__updateUnlabeledVisitsWithPlaceInformation___block_invoke_2;
                  v298[3] = &unk_2788C87C8;
                  v299 = obja;
                  v56 = dsemaa;
                  v300 = v56;
                  [learnedLocationStore2 fetchLastVisitToPlaceWithIdentifier:v268 handler:v298];

                  v57 = v56;
                  v58 = [MEMORY[0x277CBEAA8] now];
                  v59 = dispatch_time(0, 3600000000000);
                  v60 = v52;
                  if (dispatch_semaphore_wait(v57, v59))
                  {
                    v61 = [MEMORY[0x277CBEAA8] now];
                    [v61 timeIntervalSinceDate:v58];
                    v63 = v62;
                    v64 = objc_opt_new();
                    v65 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
                    callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
                    v67 = [callStackSymbols2 filteredArrayUsingPredicate:v65];
                    firstObject2 = [v67 firstObject];

                    [v64 submitToCoreAnalytics:firstObject2 type:1 duration:v63];
                    v69 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      _os_log_fault_impl(&dword_2304B3000, v69, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
                    }

                    v70 = MEMORY[0x277CCA9B8];
                    v322 = v266;
                    *buf = @"semaphore wait timeout";
                    v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v322 count:1];
                    v72 = [v70 errorWithDomain:v265 code:15 userInfo:v71];

                    v60 = v52;
                    if (v72)
                    {
                      v73 = v72;

                      v60 = v72;
                    }
                  }

                  v74 = v60;
                  v52 = v74;
                }

                v279 = v52;
                v283 = 0;
                v275 = 0;
                while (v283 < [obja count])
                {
                  v75 = [obja objectAtIndexedSubscript:?];
                  exitDate = [v75 exitDate];
                  v77 = [exitDate dateByAddingTimeInterval:4838400.0];

                  v78 = v275;
                  if (!v275 || (v78 = v275, [v275 compare:v77] == -1))
                  {
                    v79 = v77;

                    v275 = v79;
                  }

                  expirationDate = [v75 expirationDate];
                  v81 = [expirationDate compare:v77] == -1;

                  if (v81)
                  {
                    v82 = [RTLearnedVisit alloc];
                    identifier5 = [v75 identifier];
                    location = [v75 location];
                    entryDate = [v75 entryDate];
                    exitDate2 = [v75 exitDate];
                    creationDate = [v75 creationDate];
                    [v75 placeConfidence];
                    v89 = -[RTLearnedVisit initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:](v82, "initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:", identifier5, location, entryDate, exitDate2, creationDate, v77, v88, [v75 placeSource]);

                    if (v89)
                    {
                      [obja setObject:v89 atIndexedSubscript:v283];
                    }
                  }

                  v90 = v77;
                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x3032000000;
                  v329 = __Block_byref_object_copy__41;
                  v330 = __Block_byref_object_dispose__41;
                  v331 = 0;
                  v322 = 0;
                  v323 = &v322;
                  v324 = 0x3032000000;
                  v325 = __Block_byref_object_copy__41;
                  v326 = __Block_byref_object_dispose__41;
                  v327 = 0;
                  learnedLocationStore3 = [(RTLearnedLocationEngine *)self learnedLocationStore];
                  identifier6 = [v75 identifier];
                  v294[0] = MEMORY[0x277D85DD0];
                  v294[1] = 3221225472;
                  v294[2] = __70__RTLearnedLocationEngine__updateUnlabeledVisitsWithPlaceInformation___block_invoke_3;
                  v294[3] = &unk_2788C87F0;
                  v296 = buf;
                  v297 = &v322;
                  v93 = dsemaa;
                  v295 = v93;
                  [learnedLocationStore3 fetchTransitionWithDestinationIdentifier:identifier6 handler:v294];

                  v94 = v93;
                  v95 = [MEMORY[0x277CBEAA8] now];
                  v96 = dispatch_time(0, 3600000000000);
                  if (!dispatch_semaphore_wait(v94, v96))
                  {
                    goto LABEL_60;
                  }

                  v97 = [MEMORY[0x277CBEAA8] now];
                  [v97 timeIntervalSinceDate:v95];
                  v99 = v98;
                  v100 = objc_opt_new();
                  v101 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
                  callStackSymbols3 = [MEMORY[0x277CCACC8] callStackSymbols];
                  v103 = [callStackSymbols3 filteredArrayUsingPredicate:v101];
                  firstObject3 = [v103 firstObject];

                  [v100 submitToCoreAnalytics:firstObject3 type:1 duration:v99];
                  v105 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (os_log_type_enabled(v105, OS_LOG_TYPE_FAULT))
                  {
                    *v321 = 0;
                    _os_log_fault_impl(&dword_2304B3000, v105, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v321, 2u);
                  }

                  v106 = MEMORY[0x277CCA9B8];
                  v334[0] = v266;
                  *v321 = @"semaphore wait timeout";
                  v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v321 forKeys:v334 count:1];
                  v108 = [v106 errorWithDomain:v265 code:15 userInfo:v107];

                  if (v108)
                  {
                    v109 = v108;

                    v110 = 0;
                  }

                  else
                  {
LABEL_60:
                    v110 = 1;
                    v108 = v279;
                  }

                  v111 = v108;
                  if ((v110 & 1) == 0)
                  {
                    objc_storeStrong(v323 + 5, v108);
                  }

                  if (v323[5] || (v113 = *(*&buf[8] + 40)) == 0)
                  {
                    v112 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                    if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
                    {
                      *v321 = 138739971;
                      *&v321[4] = v75;
                      _os_log_error_impl(&dword_2304B3000, v112, OS_LOG_TYPE_ERROR, "failed to find transition for visit, %{sensitive}@", v321, 0xCu);
                    }
                  }

                  else
                  {
                    expirationDate2 = [v113 expirationDate];
                    v115 = [expirationDate2 compare:v90] == -1;

                    if (v115)
                    {
                      v116 = [RTLearnedTransition alloc];
                      identifier7 = [*(*&buf[8] + 40) identifier];
                      startDate = [*(*&buf[8] + 40) startDate];
                      stopDate = [*(*&buf[8] + 40) stopDate];
                      visitIdentifierOrigin = [*(*&buf[8] + 40) visitIdentifierOrigin];
                      visitIdentifierDestination = [*(*&buf[8] + 40) visitIdentifierDestination];
                      creationDate2 = [*(*&buf[8] + 40) creationDate];
                      v123 = -[RTLearnedTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:](v116, "initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:", identifier7, startDate, stopDate, visitIdentifierOrigin, visitIdentifierDestination, creationDate2, v90, [*(*&buf[8] + 40) predominantMotionActivityType]);

                      if (v123)
                      {
                        [v210 addObject:v123];
                      }
                    }

                    v112 = v90;
                    identifier8 = [v75 identifier];
                    v125 = [v264 objectForKeyedSubscript:identifier8];

                    if (v125)
                    {
                      mapItem3 = [v125 mapItem];
                      expirationDate3 = [mapItem3 expirationDate];
                      v128 = [expirationDate3 compare:v112] == -1;

                      if (v128)
                      {
                        mapItem4 = [v125 mapItem];
                        address = [mapItem4 address];

                        v216 = objc_alloc(MEMORY[0x277D01060]);
                        identifier9 = [address identifier];
                        geoAddressData = [address geoAddressData];
                        subPremises = [address subPremises];
                        subThoroughfare = [address subThoroughfare];
                        thoroughfare = [address thoroughfare];
                        subLocality = [address subLocality];
                        locality = [address locality];
                        subAdministrativeArea = [address subAdministrativeArea];
                        administrativeArea = [address administrativeArea];
                        administrativeAreaCode = [address administrativeAreaCode];
                        postalCode = [address postalCode];
                        country = [address country];
                        countryCode = [address countryCode];
                        inlandWater = [address inlandWater];
                        ocean = [address ocean];
                        areasOfInterest = [address areasOfInterest];
                        isIsland = [address isIsland];
                        creationDate3 = [address creationDate];
                        iso3166CountryCode = [address iso3166CountryCode];
                        iso3166SubdivisionCode = [address iso3166SubdivisionCode];
                        LOBYTE(v205) = isIsland;
                        v217 = [v216 initWithIdentifier:identifier9 geoAddressData:geoAddressData subPremises:subPremises subThoroughfare:subThoroughfare thoroughfare:thoroughfare subLocality:subLocality locality:locality subAdministrativeArea:subAdministrativeArea administrativeArea:administrativeArea administrativeAreaCode:administrativeAreaCode postalCode:postalCode country:country countryCode:countryCode inlandWater:inlandWater ocean:ocean areasOfInterest:areasOfInterest isIsland:v205 creationDate:creationDate3 expirationDate:v112 iso3166CountryCode:iso3166CountryCode iso3166SubdivisionCode:iso3166SubdivisionCode];

                        mapItem5 = [v125 mapItem];
                        v239 = objc_alloc(MEMORY[0x277D011A0]);
                        identifier10 = [mapItem5 identifier];
                        name = [mapItem5 name];
                        category = [mapItem5 category];
                        categoryMUID = [mapItem5 categoryMUID];
                        location2 = [mapItem5 location];
                        source = [mapItem5 source];
                        mapItemPlaceType = [mapItem5 mapItemPlaceType];
                        muid = [mapItem5 muid];
                        resultProviderID = [mapItem5 resultProviderID];
                        geoMapItemHandle = [mapItem5 geoMapItemHandle];
                        geoMapItemIdentifier = [mapItem5 geoMapItemIdentifier];
                        creationDate4 = [mapItem5 creationDate];
                        extendedAttributes = [mapItem5 extendedAttributes];
                        displayLanguage = [mapItem5 displayLanguage];
                        LOBYTE(v206) = [mapItem5 disputed];
                        v240 = [v239 initWithIdentifier:identifier10 name:name category:category categoryMUID:categoryMUID address:v217 location:location2 source:source mapItemPlaceType:mapItemPlaceType muid:muid resultProviderID:resultProviderID geoMapItemHandle:geoMapItemHandle geoMapItemIdentifier:geoMapItemIdentifier creationDate:creationDate4 expirationDate:v112 extendedAttributes:extendedAttributes displayLanguage:displayLanguage disputed:v206];

                        v140 = objc_alloc(MEMORY[0x277D01128]);
                        [v125 confidence];
                        v142 = [v140 initWithMapItem:v240 confidence:objc_msgSend(v125 source:{"source"), v141}];
                        identifier11 = [v75 identifier];
                        [v264 setObject:v142 forKeyedSubscript:identifier11];
                      }
                    }
                  }

                  _Block_object_dispose(&v322, 8);
                  _Block_object_dispose(buf, 8);

                  v279 = v111;
                  ++v283;
                }

                v144 = v275;
                if (v275)
                {
                  dsemab = v275;
                  v284 = [oslog objectForKeyedSubscript:v268];
                  expirationDate4 = [v284 expirationDate];
                  v146 = [expirationDate4 compare:dsemab] == -1;

                  if (v146)
                  {
                    mapItem6 = [v284 mapItem];
                    address2 = [mapItem6 address];

                    v222 = objc_alloc(MEMORY[0x277D01060]);
                    identifier12 = [address2 identifier];
                    geoAddressData2 = [address2 geoAddressData];
                    subPremises2 = [address2 subPremises];
                    subThoroughfare2 = [address2 subThoroughfare];
                    thoroughfare2 = [address2 thoroughfare];
                    subLocality2 = [address2 subLocality];
                    locality2 = [address2 locality];
                    subAdministrativeArea2 = [address2 subAdministrativeArea];
                    administrativeArea2 = [address2 administrativeArea];
                    administrativeAreaCode2 = [address2 administrativeAreaCode];
                    postalCode2 = [address2 postalCode];
                    country2 = [address2 country];
                    countryCode2 = [address2 countryCode];
                    inlandWater2 = [address2 inlandWater];
                    ocean2 = [address2 ocean];
                    areasOfInterest2 = [address2 areasOfInterest];
                    isIsland2 = [address2 isIsland];
                    creationDate5 = [address2 creationDate];
                    iso3166CountryCode2 = [address2 iso3166CountryCode];
                    iso3166SubdivisionCode2 = [address2 iso3166SubdivisionCode];
                    LOBYTE(v205) = isIsland2;
                    v223 = [v222 initWithIdentifier:identifier12 geoAddressData:geoAddressData2 subPremises:subPremises2 subThoroughfare:subThoroughfare2 thoroughfare:thoroughfare2 subLocality:subLocality2 locality:locality2 subAdministrativeArea:subAdministrativeArea2 administrativeArea:administrativeArea2 administrativeAreaCode:administrativeAreaCode2 postalCode:postalCode2 country:country2 countryCode:countryCode2 inlandWater:inlandWater2 ocean:ocean2 areasOfInterest:areasOfInterest2 isIsland:v205 creationDate:creationDate5 expirationDate:dsemab iso3166CountryCode:iso3166CountryCode2 iso3166SubdivisionCode:iso3166SubdivisionCode2];

                    mapItem7 = [v284 mapItem];
                    v242 = objc_alloc(MEMORY[0x277D011A0]);
                    identifier13 = [mapItem7 identifier];
                    name2 = [mapItem7 name];
                    category2 = [mapItem7 category];
                    categoryMUID2 = [mapItem7 categoryMUID];
                    location3 = [mapItem7 location];
                    source2 = [mapItem7 source];
                    mapItemPlaceType2 = [mapItem7 mapItemPlaceType];
                    muid2 = [mapItem7 muid];
                    resultProviderID2 = [mapItem7 resultProviderID];
                    geoMapItemHandle2 = [mapItem7 geoMapItemHandle];
                    geoMapItemIdentifier2 = [mapItem7 geoMapItemIdentifier];
                    creationDate6 = [mapItem7 creationDate];
                    extendedAttributes2 = [mapItem7 extendedAttributes];
                    displayLanguage2 = [mapItem7 displayLanguage];
                    LOBYTE(v207) = [mapItem7 disputed];
                    v168 = [v242 initWithIdentifier:identifier13 name:name2 category:category2 categoryMUID:categoryMUID2 address:v223 location:location3 source:source2 mapItemPlaceType:mapItemPlaceType2 muid:muid2 resultProviderID:resultProviderID2 geoMapItemHandle:geoMapItemHandle2 geoMapItemIdentifier:geoMapItemIdentifier2 creationDate:creationDate6 expirationDate:dsemab extendedAttributes:extendedAttributes2 displayLanguage:displayLanguage2 disputed:v207];

                    v169 = [RTLearnedPlace alloc];
                    identifier14 = [v284 identifier];
                    type = [v284 type];
                    typeSource = [v284 typeSource];
                    customLabel = [v284 customLabel];
                    creationDate7 = [v284 creationDate];
                    v175 = [(RTLearnedPlace *)v169 initWithIdentifier:identifier14 type:type typeSource:typeSource mapItem:v168 customLabel:customLabel creationDate:creationDate7 expirationDate:dsemab];

                    if (v175)
                    {
                      [oslog setObject:v175 forKeyedSubscript:v268];
                    }
                  }

                  v144 = v275;
                }
              }

              else
              {
                v279 = v52;
              }

              _Block_object_dispose(&v304, 8);
              v21 = v215 + 1;
            }

            while (v215 + 1 != v213);
            v213 = [allKeys countByEnumeratingWithState:&v308 objects:v332 count:16];
          }

          while (v213);
        }

        else
        {
          v279 = 0;
        }

        v176 = dispatch_group_create();
        v290 = 0u;
        v291 = 0u;
        v292 = 0u;
        v293 = 0u;
        v285 = v214;
        v177 = [v285 countByEnumeratingWithState:&v290 objects:v320 count:16];
        if (v177)
        {
          v178 = *v291;
          v179 = MEMORY[0x277D85DD0];
          do
          {
            for (i = 0; i != v177; ++i)
            {
              if (*v291 != v178)
              {
                objc_enumerationMutation(v285);
              }

              v181 = *(*(&v290 + 1) + 8 * i);
              dispatch_group_enter(v176);
              learnedLocationStore4 = [(RTLearnedLocationEngine *)self learnedLocationStore];
              v183 = [v285 objectForKeyedSubscript:v181];
              v184 = [oslog objectForKeyedSubscript:v181];
              v288[0] = v179;
              v288[1] = 3221225472;
              v288[2] = __70__RTLearnedLocationEngine__updateUnlabeledVisitsWithPlaceInformation___block_invoke_596;
              v288[3] = &unk_2788C4730;
              v289 = v176;
              [learnedLocationStore4 updateVisits:v183 finerGranularityInferredMapItems:v264 place:v184 handler:v288];
            }

            v177 = [v285 countByEnumeratingWithState:&v290 objects:v320 count:16];
          }

          while (v177);
        }

        dispatch_group_wait(v176, 0xFFFFFFFFFFFFFFFFLL);
        learnedLocationStore5 = [(RTLearnedLocationEngine *)self learnedLocationStore];
        v286[0] = MEMORY[0x277D85DD0];
        v286[1] = 3221225472;
        v286[2] = __70__RTLearnedLocationEngine__updateUnlabeledVisitsWithPlaceInformation___block_invoke_2_597;
        v286[3] = &unk_2788C4730;
        v186 = v212;
        v287 = v186;
        [learnedLocationStore5 updateWritableObjects:v210 handler:v286];

        v187 = v186;
        v188 = [MEMORY[0x277CBEAA8] now];
        v189 = dispatch_time(0, 3600000000000);
        v190 = v279;
        if (dispatch_semaphore_wait(v187, v189))
        {
          v191 = [MEMORY[0x277CBEAA8] now];
          [v191 timeIntervalSinceDate:v188];
          v193 = v192;
          v194 = objc_opt_new();
          v195 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
          callStackSymbols4 = [MEMORY[0x277CCACC8] callStackSymbols];
          v197 = [callStackSymbols4 filteredArrayUsingPredicate:v195];
          firstObject4 = [v197 firstObject];

          [v194 submitToCoreAnalytics:firstObject4 type:1 duration:v193];
          v199 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v199, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v199, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v200 = MEMORY[0x277CCA9B8];
          v322 = *MEMORY[0x277CCA450];
          *buf = @"semaphore wait timeout";
          v201 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v322 count:1];
          v202 = [v200 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v201];

          v190 = v279;
          if (v202)
          {
            v203 = v202;

            v190 = v202;
          }
        }

        v204 = v190;
        [(RTLearnedLocationEngine *)self _harvestVisits:v285 places:oslog];

        goto LABEL_102;
      }
    }
  }

  oslog = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: unlabeledVisits", buf, 2u);
  }

LABEL_102:
}

intptr_t __70__RTLearnedLocationEngine__updateUnlabeledVisitsWithPlaceInformation___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void __70__RTLearnedLocationEngine__updateUnlabeledVisitsWithPlaceInformation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = [v3 exitDate];
    v5 = [v4 dateByAddingTimeInterval:4838400.0];

    v6 = [v8 expirationDate];
    v7 = [v6 compare:v5];

    if (v7 == -1)
    {
      [*(a1 + 32) addObject:v8];
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __70__RTLearnedLocationEngine__updateUnlabeledVisitsWithPlaceInformation___block_invoke_3(uint64_t a1, void *a2, void *a3)
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

- (BOOL)_processVisits:(id)visits forLastLearnedVisit:(id)visit error:(id *)error
{
  v104[1] = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  v8 = 0x277CBE000uLL;
  v9 = MEMORY[0x277CBEAA8];
  visitsCopy = visits;
  date = [v9 date];
  v12 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entry" ascending:1];
  v103 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:1];
  v14 = [visitsCopy sortedArrayUsingDescriptors:v13];

  v15 = [(RTLearnedLocationEngine *)self _filterVisits:v14 lastLearnedVisit:visitCopy];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = [v15 count];
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "submitting %lu visits", buf, 0xCu);
    }
  }

  [v15 enumerateObjectsUsingBlock:&__block_literal_global_603];
  if ([v15 count])
  {
    v92 = v15;
    v17 = [[_RTMap alloc] initWithInput:v15];
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __68__RTLearnedLocationEngine__processVisits_forLastLearnedVisit_error___block_invoke_604;
    v98[3] = &unk_2788C8818;
    v86 = date;
    v18 = date;
    v99 = v18;
    v19 = [(_RTMap *)v17 withBlock:v98];

    v88 = visitCopy;
    v90 = [(RTLearnedLocationEngine *)self _transitionsForVisits:v19 lastLearnedVisit:visitCopy creationDate:v18];
    v20 = dispatch_semaphore_create(0);
    learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __68__RTLearnedLocationEngine__processVisits_forLastLearnedVisit_error___block_invoke_2;
    v96[3] = &unk_2788C4730;
    v22 = v20;
    v97 = v22;
    v91 = v19;
    [learnedLocationStore storeVisits:v19 handler:v96];

    v23 = v22;
    v24 = [MEMORY[0x277CBEAA8] now];
    v25 = dispatch_time(0, 3600000000000);
    v26 = 0x277CCA000uLL;
    v27 = 0x277CCA000uLL;
    if (dispatch_semaphore_wait(v23, v25))
    {
      v28 = [MEMORY[0x277CBEAA8] now];
      [v28 timeIntervalSinceDate:v24];
      v30 = v29;
      v31 = objc_opt_new();
      v32 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v34 = [callStackSymbols filteredArrayUsingPredicate:v32];
      firstObject = [v34 firstObject];

      [v31 submitToCoreAnalytics:firstObject type:1 duration:v30];
      v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v36, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v37 = MEMORY[0x277CCA9B8];
      v38 = *MEMORY[0x277D01448];
      v104[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v104 count:1];
      v40 = [v37 errorWithDomain:v38 code:15 userInfo:v39];

      if (v40)
      {
        v41 = v40;
      }

      v8 = 0x277CBE000;
      v27 = 0x277CCA000;
      v26 = 0x277CCA000;
    }

    else
    {
      v40 = 0;
    }

    v42 = v40;
    learnedLocationStore2 = [(RTLearnedLocationEngine *)self learnedLocationStore];
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __68__RTLearnedLocationEngine__processVisits_forLastLearnedVisit_error___block_invoke_607;
    v94[3] = &unk_2788C4730;
    v44 = v23;
    v95 = v44;
    [learnedLocationStore2 storeTransitions:v90 handler:v94];

    v45 = v44;
    [*(v8 + 2728) now];
    v47 = v46 = v8;
    v48 = dispatch_time(0, 3600000000000);
    v89 = v45;
    v49 = dispatch_semaphore_wait(v45, v48);
    v50 = v42;
    if (v49)
    {
      v51 = [*(v46 + 2728) now];
      [v51 timeIntervalSinceDate:v47];
      v53 = v52;
      v54 = objc_opt_new();
      v55 = [*(v26 + 3120) predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols2 = [*(v27 + 3272) callStackSymbols];
      v57 = [callStackSymbols2 filteredArrayUsingPredicate:v55];
      firstObject2 = [v57 firstObject];

      [v54 submitToCoreAnalytics:firstObject2 type:1 duration:v53];
      v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v59, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v60 = MEMORY[0x277CCA9B8];
      v61 = *MEMORY[0x277D01448];
      v104[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v104 count:1];
      v63 = [v60 errorWithDomain:v61 code:15 userInfo:v62];

      v50 = v42;
      if (v63)
      {
        v64 = v63;

        v50 = v63;
      }
    }

    v65 = v50;
    [(RTLearnedLocationEngine *)self _updateUnlabeledVisitsWithPlaceInformation:v91];
    trainingMetrics = [(RTLearnedLocationEngine *)self trainingMetrics];
    visits = [trainingMetrics visits];
    [visits addObjectsFromArray:v91];

    v68 = [RTVisitMetrics alloc];
    distanceCalculator = [(RTLearnedLocationEngine *)self distanceCalculator];
    learnedLocationStore3 = [(RTLearnedLocationEngine *)self learnedLocationStore];
    locationStore = [(RTLearnedLocationEngine *)self locationStore];
    motionActivityManager = [(RTLearnedLocationEngine *)self motionActivityManager];
    visitManager = [(RTLearnedLocationEngine *)self visitManager];
    v74 = [(RTVisitMetrics *)v68 initWithDistanceCalculator:distanceCalculator learnedLocationStore:learnedLocationStore3 locationStore:locationStore motionActivityManager:motionActivityManager visitManager:visitManager];

    v75 = objc_alloc(MEMORY[0x277CCA970]);
    firstObject3 = [v92 firstObject];
    entry = [firstObject3 entry];
    lastObject = [v92 lastObject];
    exit = [lastObject exit];
    v80 = [v75 initWithStartDate:entry endDate:exit];

    v93 = 0;
    v81 = [(RTVisitMetrics *)v74 collectBatchedMetricsForDateInterval:v80 error:&v93];
    v82 = v93;
    visitCopy = v88;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v83 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
      {
        v85 = @"NO";
        if (v81)
        {
          v85 = @"YES";
        }

        *buf = 138412546;
        *&buf[4] = v85;
        v101 = 2112;
        v102 = v82;
        _os_log_debug_impl(&dword_2304B3000, v83, OS_LOG_TYPE_DEBUG, "visit metrics submission, success, %@, error, %@", buf, 0x16u);
      }
    }

    [(RTLearnedLocationEngine *)self submitVisitSettledStateMetricsForVisits:v91 transitions:v90, v86];

    date = v87;
    v15 = v92;
  }

  return 1;
}

void __68__RTLearnedLocationEngine__processVisits_forLastLearnedVisit_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218243;
      v7 = a3 + 1;
      v8 = 2117;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "visit %lu, %{sensitive}@", &v6, 0x16u);
    }
  }
}

RTLearnedVisit *__68__RTLearnedLocationEngine__processVisits_forLastLearnedVisit_error___block_invoke_604(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [RTLearnedLocation alloc];
  v5 = [v3 location];
  v6 = -[RTLearnedLocation initWithLocation:dataPointCount:type:](v4, "initWithLocation:dataPointCount:type:", v5, [v3 dataPointCount], 1);

  v7 = [*(a1 + 32) dateByAddingTimeInterval:2419200.0];
  v8 = [RTLearnedVisit alloc];
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [v3 entry];
  v11 = [v3 exit];

  v12 = [(RTLearnedVisit *)v8 initWithIdentifier:v9 location:v6 entryDate:v10 exitDate:v11 creationDate:*(a1 + 32) expirationDate:v7];

  return v12;
}

void __68__RTLearnedLocationEngine__processVisits_forLastLearnedVisit_error___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "stored all visits with error, %@", &v5, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __68__RTLearnedLocationEngine__processVisits_forLastLearnedVisit_error___block_invoke_607(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "stored all transitions with error, %@", &v5, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_trainVisitsFromDate:(id)date toDate:(id)toDate forLastLearnedVisit:(id)visit error:(id *)error
{
  dateCopy = date;
  toDateCopy = toDate;
  visitCopy = visit;
  trainingMetrics = [(RTLearnedLocationEngine *)self trainingMetrics];
  [trainingMetrics startTrainingVisits];

  v14 = objc_autoreleasePoolPush();
  v29 = 0;
  v15 = [(RTLearnedLocationEngine *)self _visitsFromDate:dateCopy toDate:toDateCopy error:&v29];
  v16 = v29;
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v27 = visitCopy;
    v28 = 0;
    v19 = [(RTLearnedLocationEngine *)self _processVisits:v15 forLastLearnedVisit:visitCopy error:&v28];
    v20 = v28;
    v21 = v20;
    v18 = 0;
    if (!v19)
    {
      v18 = v20;
    }

    visitCopy = v27;
  }

  objc_autoreleasePoolPop(v14);
  trainingMetrics2 = [(RTLearnedLocationEngine *)self trainingMetrics];
  [trainingMetrics2 stopTrainingVisits];

  if (error)
  {
    v23 = v18;
    *error = v18;
  }

  if (!v18)
  {
    defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
    date = [MEMORY[0x277CBEAA8] date];
    [defaultsManager setObject:date forKey:@"LearnedLocationEngineTrainVisitsLastAttemptDate"];
  }

  return v18 == 0;
}

- (BOOL)_deferTrainingDueToRecentResetSync
{
  defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"RTDefaultsPersistenceMirroringManagerBackgroundLastResetSyncDate"];

  if (v4)
  {
    defaultsManager2 = [(RTLearnedLocationEngine *)self defaultsManager];
    v6 = [defaultsManager2 objectForKey:@"LearnedLocationEngineTrainVisitsLastAttemptDate"];

    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-172800.0];
    if (v6 && ([v6 isOnOrBefore:v7] & 1) == 0)
    {
      defaultsManager3 = [(RTLearnedLocationEngine *)self defaultsManager];
      v10 = [defaultsManager3 objectForKey:@"RTDefaultsPersistenceMirroringManagerBackgroundLastImportDate"];

      v8 = !v10 || ([v10 isAfterDate:v4] & 1) == 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_deferTrainingDueToAvailability
{
  v50[1] = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__41;
  v39 = __Block_byref_object_dispose__41;
  v40 = 0;
  v4 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __58__RTLearnedLocationEngine__deferTrainingDueToAvailability__block_invoke;
  v31[3] = &unk_2788C4528;
  v33 = &v41;
  v34 = &v35;
  v6 = v4;
  v32 = v6;
  [learnedLocationStore fetchAvailabilityWithHandler:v31];

  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = [callStackSymbols filteredArrayUsingPredicate:v14];
    firstObject = [v16 firstObject];

    [v13 submitToCoreAnalytics:firstObject type:1 duration:v12];
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v50[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v50 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;

      v23 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = 1;
LABEL_8:

  v24 = v21;
  if ((v23 & 1) == 0)
  {
    objc_storeStrong(v36 + 5, v21);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = NSStringFromSelector(a2);
      v27 = [RTStore availabilityToString:v42[3]];
      v28 = v36[5];
      *buf = 138412802;
      *&buf[4] = v26;
      v46 = 2112;
      v47 = v27;
      v48 = 2112;
      v49 = v28;
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, availability, %@, error, %@", buf, 0x20u);
    }
  }

  v29 = v42[3] != 2;

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);
  return v29;
}

void __58__RTLearnedLocationEngine__deferTrainingDueToAvailability__block_invoke(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_deferTrainingLOIsDueToCloudStoreNotChangeSinceLastTrainingDate:(id)date
{
  dateCopy = date;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-172800.0];
  if (dateCopy && ([dateCopy isOnOrBefore:v5] & 1) == 0)
  {
    learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
    v8 = [learnedLocationStore cloudStoreChangedSinceDate:dateCopy];

    v6 = v8 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_homeLocationOfInterestExist
{
  v44 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__41;
  v40 = __Block_byref_object_dispose__41;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v4 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __55__RTLearnedLocationEngine__homeLocationOfInterestExist__block_invoke;
  v27[3] = &unk_2788C6CE8;
  v30 = &v36;
  v31 = a2;
  v29 = &v32;
  v6 = v4;
  v28 = v6;
  [learnedLocationStore fetchLocationsOfInterestWithPlaceType:1 handler:v27];

  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = [callStackSymbols filteredArrayUsingPredicate:v14];
    firstObject = [v16 firstObject];

    [v13 submitToCoreAnalytics:firstObject type:1 duration:v12];
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v42 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;

      v23 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = 1;
LABEL_8:

  v24 = v21;
  if ((v23 & 1) == 0)
  {
    objc_storeStrong(v37 + 5, v21);
  }

  v25 = v37[5] || v33[3];

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v25;
}

void __55__RTLearnedLocationEngine__homeLocationOfInterestExist__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 56));
      v12 = 138412802;
      v13 = v8;
      v14 = 2048;
      v15 = [v5 count];
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, home LOI count, %lu, errror, %@", &v12, 0x20u);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = [v5 count];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_deferTrainingOnBatteryDueToLackOfLongVisitSinceDate:(id)date
{
  v65[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  date = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      stringFromDate = [dateCopy stringFromDate];
      stringFromDate2 = [date stringFromDate];
      *buf = 138412802;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = stringFromDate;
      *&buf[22] = 2112;
      v62 = stringFromDate2;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, input date, %@, current date, %@", buf, 0x20u);
    }
  }

  if (!dateCopy || ![dateCopy isAfterDate:date])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v62 = __Block_byref_object_copy__41;
    v63 = __Block_byref_object_dispose__41;
    v64 = 0;
    v14 = dispatch_semaphore_create(0);
    v15 = objc_alloc(MEMORY[0x277CCA970]);
    distantPast = dateCopy;
    if (!dateCopy)
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    v45 = [v15 initWithStartDate:distantPast endDate:date];
    if (!dateCopy)
    {
    }

    v17 = objc_alloc(MEMORY[0x277D01340]);
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
    v44 = [v17 initWithAscending:1 confidence:v18 dateInterval:v45 labelVisit:0 limit:0];

    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 1;
    visitManager = [(RTLearnedLocationEngine *)self visitManager];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __80__RTLearnedLocationEngine__deferTrainingOnBatteryDueToLackOfLongVisitSinceDate___block_invoke;
    v47[3] = &unk_2788C6CE8;
    v50 = &v52;
    v51 = a2;
    v49 = buf;
    v20 = v14;
    v48 = v20;
    [visitManager fetchStoredVisitsWithOptions:v44 handler:v47];

    v21 = v20;
    v22 = [MEMORY[0x277CBEAA8] now];
    v23 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v21, v23))
    {
      v24 = [MEMORY[0x277CBEAA8] now];
      [v24 timeIntervalSinceDate:v22];
      v26 = v25;
      v27 = objc_opt_new();
      v28 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v30 = [callStackSymbols filteredArrayUsingPredicate:v28];
      firstObject = [v30 firstObject];

      [v27 submitToCoreAnalytics:firstObject type:1 duration:v26];
      v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        *v56 = 0;
        _os_log_fault_impl(&dword_2304B3000, v32, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v56, 2u);
      }

      v33 = MEMORY[0x277CCA9B8];
      v65[0] = *MEMORY[0x277CCA450];
      *v56 = @"semaphore wait timeout";
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v65 count:1];
      v35 = [v33 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v34];

      if (v35)
      {
        v36 = v35;

        v37 = 0;
LABEL_21:

        v11 = v35;
        if ((v37 & 1) == 0)
        {
          objc_storeStrong((*&buf[8] + 40), v35);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v38 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v39 = NSStringFromSelector(a2);
            v40 = v39;
            if (*(v53 + 24))
            {
              v41 = @"YES";
            }

            else
            {
              v41 = @"NO";
            }

            v42 = *(*&buf[8] + 40);
            *v56 = 138412802;
            *&v56[4] = v39;
            v57 = 2112;
            v58 = v41;
            v59 = 2112;
            v60 = v42;
            _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, defer, %@, error, %@", v56, 0x20u);
          }
        }

        v10 = *(v53 + 24);

        _Block_object_dispose(&v52, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_31;
      }
    }

    else
    {
      v35 = 0;
    }

    v37 = 1;
    goto LABEL_21;
  }

  v10 = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(a2);
      stringFromDate3 = [dateCopy stringFromDate];
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = stringFromDate3;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, defer, YES, reference date is in the future, %@", buf, 0x16u);

      v10 = 1;
    }

LABEL_31:
  }

  return v10 & 1;
}

void __80__RTLearnedLocationEngine__deferTrainingOnBatteryDueToLackOfLongVisitSinceDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v26 = a3;
  v27 = a1;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = NSStringFromSelector(*(v27 + 56));
            v15 = [v12 exit];
            v16 = [v12 entry];
            [v15 timeIntervalSinceDate:v16];
            *buf = 138413059;
            v33 = v14;
            v34 = 2048;
            v35 = v9;
            v36 = 2117;
            v37 = v12;
            v38 = 2048;
            v39 = v17;
            _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, idx, %lu, visit, %{sensitive}@, duration, %.1f", buf, 0x2Au);
          }
        }

        v18 = [v12 exit];
        if (v18)
        {
          v19 = v18;
          v20 = [v12 entry];
          if (v20)
          {
            v21 = v20;
            v22 = [v12 exit];
            v23 = [v12 entry];
            [v22 timeIntervalSinceDate:v23];
            v25 = v24;

            if (v25 > 900.0)
            {
              *(*(*(v27 + 48) + 8) + 24) = 0;
              goto LABEL_17;
            }
          }

          else
          {
          }
        }

        ++v9;
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v8);
  }

LABEL_17:

  dispatch_semaphore_signal(*(v27 + 32));
}

- (BOOL)_deferSubmittingLoiMetricsDueToNoTrainingSinceLastSubmission
{
  defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsLearnedLocationEngineLocationOfInterestMetricsSubmitted"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)_isAuthorized
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(a2);
      locationManager = [(RTLearnedLocationEngine *)self locationManager];
      enabled = [locationManager enabled];
      v8 = @"NO";
      if (enabled)
      {
        v8 = @"YES";
      }

      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, training authorized, %@", &v12, 0x16u);
    }
  }

  locationManager2 = [(RTLearnedLocationEngine *)self locationManager];
  enabled2 = [locationManager2 enabled];

  return enabled2;
}

- (void)_trainForReason:(unint64_t)reason mode:(unint64_t)mode handler:(id)handler
{
  v51[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (![(RTLearnedLocationEngine *)self _isAuthorized])
  {
    trainingMetrics = [(RTLearnedLocationEngine *)self trainingMetrics];
    [trainingMetrics setWasDeferred:4];

    v50 = *MEMORY[0x277CCA450];
    v51[0] = @"Deferring training due to not authorized.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:2 userInfo:v11];
    v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      *buf = 138412546;
      v47 = v21;
      v48 = 2112;
      v49 = v12;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  if ([(RTLearnedLocationEngine *)self _deferTrainingDueToAvailability])
  {
    trainingMetrics2 = [(RTLearnedLocationEngine *)self trainingMetrics];
    [trainingMetrics2 setWasDeferred:2];

    v44 = *MEMORY[0x277CCA450];
    v45 = @"Deferring training due to availability of the learned location store.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:5 userInfo:v11];
    v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = v12;
LABEL_34:
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if ([(RTLearnedLocationEngine *)self _deferTrainingDueToRecentResetSync])
  {
    trainingMetrics3 = [(RTLearnedLocationEngine *)self trainingMetrics];
    [trainingMetrics3 setWasDeferred:1];

    v42 = *MEMORY[0x277CCA450];
    v43 = @"Deferring training due to reset sync after last import.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:5 userInfo:v11];
    v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = v12;
      goto LABEL_34;
    }

LABEL_10:

LABEL_11:
    handlerCopy[2](handlerCopy, v12, 0);
    goto LABEL_12;
  }

  v39 = 0;
  v12 = [(RTLearnedLocationEngine *)self _lastVisitWithError:&v39];
  v17 = v39;
  if (v17)
  {
    v11 = v17;
    handlerCopy[2](handlerCopy, v17, 0);
  }

  else
  {
    exitDate = [v12 exitDate];
    v19 = exitDate;
    if (exitDate)
    {
      distantPast = exitDate;
    }

    else
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    v22 = distantPast;

    date = [MEMORY[0x277CBEAA8] date];
    if ([v22 isAfterDate:date])
    {
      v40 = *MEMORY[0x277CCA450];
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deferring training due to start date, %@, cannot be later than end date, %@", v22, date];
      v41 = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];

      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v25];
      v27 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v47 = v26;
        _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, v26, 0);
      }
    }

    else
    {
      if (mode != 2)
      {
        goto LABEL_31;
      }

      v32 = MEMORY[0x277CBEAA8];
      exitDate2 = [v12 exitDate];
      distantPast2 = exitDate2;
      if (!exitDate2)
      {
        distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
      }

      v31 = distantPast2;
      v30 = [v32 dateWithTimeInterval:distantPast2 sinceDate:1800.0];
      v33 = [(RTLearnedLocationEngine *)self _deferTrainingOnBatteryDueToLackOfLongVisitSinceDate:v30];

      if (!exitDate2)
      {
      }

      if (v33)
      {
        [(RTLearnedLocationEngine *)self setRegisterTrainOnBattery:0];
        handlerCopy[2](handlerCopy, 0, 0);
      }

      else
      {
LABEL_31:
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __56__RTLearnedLocationEngine__trainForReason_mode_handler___block_invoke;
        v34[3] = &unk_2788C8840;
        v34[4] = self;
        v35 = handlerCopy;
        reasonCopy = reason;
        modeCopy = mode;
        v38 = a2;
        [(RTLearnedLocationEngine *)self _trainWithFromDate:v22 ToDate:date forLastLearnedVisit:v12 reason:reason mode:mode handler:v34];
      }
    }

    v11 = 0;
  }

LABEL_12:
}

void __56__RTLearnedLocationEngine__trainForReason_mode_handler___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v4[36])
  {
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v17 = 134218240;
      v18 = v6;
      v19 = 2048;
      v20 = v7;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "RTLearnedLocationEngine:_trainForReason,reason,%lu,mode,%lu,invoking startTripSegmentAndClusterProcessing.", &v17, 0x16u);
    }

    v4 = *(a1 + 32);
  }

  v8 = [v4 _enableTrainOnBatteryForTripSegments];
  v9 = [*(a1 + 32) _isDeviceCharging];
  v10 = *(a1 + 48);
  v11 = (v10 == 2) | v9;
  v12 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v10 == 2;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(*(a1 + 64));
    v17 = 138413314;
    v18 = v15;
    v19 = 2112;
    v20 = v16;
    v21 = 1026;
    v22 = v9 & 1;
    v23 = 1026;
    v24 = v13;
    v25 = 1026;
    v26 = v11 & 1;
    _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@,BatteryStatus,isDeviceCharging,%{public}d,isOnDemandMode,%{public}d,enableTripSegmentProcessing,%{public}d", &v17, 0x28u);
  }

  if (v11)
  {
    [*(*(a1 + 32) + 288) startTripSegmentAndClusterProcessing:*(a1 + 56) trainReason:*(a1 + 48) currentPipelineError:v3 enableTripSegmentProcessingOnBattery:v8 handler:*(a1 + 40)];
  }

  else
  {
LABEL_10:
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_deferTrainingDueToXPCActivityState:(BOOL)state
{
  v8 = *MEMORY[0x277D85DE8];
  tripSegmentProvider = self->_tripSegmentProvider;
  if (tripSegmentProvider)
  {
    stateCopy = state;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7[0] = 67109120;
        v7[1] = stateCopy;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "_deferTrainingDueToXPCActivityState,%d", v7, 8u);
      }

      tripSegmentProvider = self->_tripSegmentProvider;
    }

    [(RTTripSegmentProvider *)tripSegmentProvider deferTripSegmentAndClusterProcessing:stateCopy];
  }
}

- (void)_trainWithFromDate:(id)date ToDate:(id)toDate forLastLearnedVisit:(id)visit reason:(unint64_t)reason mode:(unint64_t)mode handler:(id)handler
{
  v109 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  toDateCopy = toDate;
  visitCopy = visit;
  handlerCopy = handler;
  v18 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = NSStringFromSelector(a2);
  v22 = [v18 stringWithFormat:@"%@-%@", v20, v21];
  [v22 UTF8String];
  v85 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v69 = objc_opt_class();
      v70 = NSStringFromClass(v69);
      v71 = NSStringFromSelector(a2);
      *buf = 138412546;
      v98 = v70;
      v99 = 2112;
      reasonCopy = v71;
      _os_log_debug_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  v88 = visitCopy;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = NSStringFromSelector(a2);
      stringFromDate = [dateCopy stringFromDate];
      stringFromDate2 = [toDateCopy stringFromDate];
      *buf = 138413571;
      v98 = v25;
      v99 = 2048;
      reasonCopy = reason;
      v101 = 2048;
      modeCopy = mode;
      v103 = 2112;
      v104 = stringFromDate;
      v105 = 2112;
      v106 = stringFromDate2;
      v107 = 2117;
      v108 = v88;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, reason, %lu, mode, %lu, from %@, to %@, last visit, %{sensitive}@", buf, 0x3Eu);

      visitCopy = v88;
    }
  }

  dailyTrainingSessionCounter = [(RTLearnedLocationEngine *)self dailyTrainingSessionCounter];
  [dailyTrainingSessionCounter increaseCountForMode:mode reason:reason];

  [(RTLearnedLocationEngine *)self _setupTrainingMetricsFromDate:dateCopy toDate:toDateCopy mode:mode reason:reason];
  v29 = MEMORY[0x277CCACA8];
  v30 = NSStringFromSelector(a2);
  v31 = [v29 stringWithFormat:@"before %@", v30];
  [(RTLearnedLocationEngine *)self _logDatabasesWithReason:v31];

  v96 = 0;
  LOBYTE(v31) = [(RTLearnedLocationEngine *)self _retrainVisitsWithoutPlaces:&v96];
  v32 = v96;
  if ((v31 & 1) == 0)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v72 = NSStringFromSelector(a2);
      *buf = 138412546;
      v98 = v72;
      v99 = 2112;
      reasonCopy = v32;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, retrainVisitsWithoutPlaces error, %@", buf, 0x16u);
    }
  }

  v95 = 0;
  v34 = [(RTLearnedLocationEngine *)self _trainVisitsFromDate:dateCopy toDate:toDateCopy forLastLearnedVisit:visitCopy error:&v95];
  v35 = v95;
  if (!v34)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v73 = NSStringFromSelector(a2);
      *buf = 138412546;
      v98 = v73;
      v99 = 2112;
      reasonCopy = v35;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "%@, trainVisits error, %@", buf, 0x16u);
    }
  }

  v87 = dateCopy;
  v83 = v32;
  v84 = toDateCopy;
  if (mode == 2)
  {
    defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
    v38 = [defaultsManager objectForKey:@"LearnedLocationEngineTrainLightweightLastCompletionDate"];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v39 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = NSStringFromSelector(a2);
        if (v38)
        {
          stringFromDate3 = [v38 stringFromDate];
        }

        else
        {
          stringFromDate3 = @"nil";
        }

        *buf = 138412546;
        v98 = v40;
        v99 = 2112;
        reasonCopy = stringFromDate3;
        _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "---------> %@, trainLightweightLastCompletionDate, %@, calling appendVisitsToLocationsOfInterestModel <---------", buf, 0x16u);
        if (v38)
        {
        }
      }
    }

    v94 = 0;
    v52 = [(RTLearnedLocationEngine *)self _appendVisitsToLocationsOfInterestModelWithError:&v94];
    v53 = v94;
    v82 = v53;
    if (v52)
    {
      v93 = 0;
      v54 = [(RTLearnedLocationEngine *)self _applyUserCurationsSubmittedSince:dateCopy error:&v93];
      v51 = v93;
      if (!v54)
      {
        v55 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v79 = NSStringFromSelector(a2);
          *buf = 138412546;
          v98 = v79;
          v99 = 2112;
          reasonCopy = v51;
          _os_log_error_impl(&dword_2304B3000, v55, OS_LOG_TYPE_ERROR, "%@, _applyUserCurationsSubmittedSince:error:, error, %@", buf, 0x16u);
        }
      }

      defaultsManager2 = [(RTLearnedLocationEngine *)self defaultsManager];
      date = [MEMORY[0x277CBEAA8] date];
      [defaultsManager2 setObject:date forKey:@"LearnedLocationEngineTrainLightweightLastCompletionDate"];

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_52;
      }

      v58 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v59 = NSStringFromSelector(a2);
        *buf = 138412290;
        v98 = v59;
        _os_log_impl(&dword_2304B3000, v58, OS_LOG_TYPE_INFO, "---------> %@, appendVisitsToLocationsOfInterestModel finished<---------", buf, 0xCu);
      }
    }

    else
    {
      v60 = v53;
      v58 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v78 = NSStringFromSelector(a2);
        *buf = 138412546;
        v98 = v78;
        v99 = 2112;
        reasonCopy = v60;
        _os_log_error_impl(&dword_2304B3000, v58, OS_LOG_TYPE_ERROR, "%@, appendVisitsToLocationsOfInterestModel error, %@", buf, 0x16u);
      }

      v51 = 0;
    }

LABEL_52:
    v50 = 0;
    v81 = 0;
    v43 = 0;
    goto LABEL_53;
  }

  v92 = 0;
  v42 = [(RTLearnedLocationEngine *)self _trainLocationsOfInterestModelWithError:&v92];
  v43 = v92;
  if (!v42)
  {
    v44 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v75 = NSStringFromSelector(a2);
      *buf = 138412546;
      v98 = v75;
      v99 = 2112;
      reasonCopy = v43;
      _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "%@, trainLocationsOfInterestModel error, %@", buf, 0x16u);
    }
  }

  v91 = 0;
  v45 = [(RTLearnedLocationEngine *)self _removeUnusedMapItems:&v91];
  v46 = v91;
  if (!v45)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v76 = NSStringFromSelector(a2);
      *buf = 138412546;
      v98 = v76;
      v99 = 2112;
      reasonCopy = v46;
      _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, "%@, remove unused map items error, %@", buf, 0x16u);
    }
  }

  v81 = v46;
  pointOfInterestMetricsManager = [(RTLearnedLocationEngine *)self pointOfInterestMetricsManager];
  v90 = 0;
  v49 = [pointOfInterestMetricsManager submitMetricsWithError:&v90];
  v50 = v90;

  if (v49)
  {
    v80 = 0;
    v82 = 0;
    goto LABEL_54;
  }

  v38 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v77 = NSStringFromSelector(a2);
    *buf = 138412546;
    v98 = v77;
    v99 = 2112;
    reasonCopy = v50;
    _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "%@, submit metrics error, %@", buf, 0x16u);
  }

  v51 = 0;
  v82 = 0;
LABEL_53:
  v80 = v51;

LABEL_54:
  v89 = 0;
  v61 = [(RTLearnedLocationEngine *)self _verifyVisitGraphExpirationDates:&v89];
  v62 = v89;
  if (!v61)
  {
    v63 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v74 = NSStringFromSelector(a2);
      *buf = 138412546;
      v98 = v74;
      v99 = 2112;
      reasonCopy = v62;
      _os_log_error_impl(&dword_2304B3000, v63, OS_LOG_TYPE_ERROR, "%@, error while verifying visit graph expiration dates, %@", buf, 0x16u);
    }
  }

  v64 = MEMORY[0x277CCACA8];
  v65 = NSStringFromSelector(a2);
  v66 = [v64 stringWithFormat:@"after %@", v65];
  [(RTLearnedLocationEngine *)self _logDatabasesWithReason:v66];

  [(RTLearnedLocationEngine *)self _teardownTrainingMetrics];
  if (handlerCopy)
  {
    v67 = _RTSafeArray();
    v68 = _RTMultiErrorCreate();
    handlerCopy[2](handlerCopy, v68);
  }
}

- (void)deferTrainingDueToXPCActivityState:(BOOL)state
{
  queue = [(RTLearnedLocationEngine *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__RTLearnedLocationEngine_deferTrainingDueToXPCActivityState___block_invoke;
  v6[3] = &unk_2788C5070;
  v6[4] = self;
  stateCopy = state;
  dispatch_async(queue, v6);
}

- (void)trainForReason:(unint64_t)reason mode:(unint64_t)mode handler:(id)handler
{
  handlerCopy = handler;
  date = [MEMORY[0x277CBEAA8] date];
  queue = [(RTLearnedLocationEngine *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__RTLearnedLocationEngine_trainForReason_mode_handler___block_invoke;
  v14[3] = &unk_2788C88B8;
  reasonCopy = reason;
  modeCopy = mode;
  v16 = handlerCopy;
  v17 = a2;
  v14[4] = self;
  v15 = date;
  v12 = date;
  v13 = handlerCopy;
  dispatch_async(queue, v14);
}

void __55__RTLearnedLocationEngine_trainForReason_mode_handler___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) defaultsManager];
  v3 = [v2 objectForKey:@"LearnedLocationEngineTrainVisitsLastAttemptDate"];
  v4 = v3;
  if (v3)
  {
    v26 = v3;
  }

  else
  {
    v26 = [MEMORY[0x277CBEAA8] date];
  }

  v5 = [*(a1 + 32) defaultsManager];
  v6 = [v5 objectForKey:@"LearnedLocationEngineTrainLocationsOfInterestLastCompletionDate"];

  v7 = [*(a1 + 32) defaultsManager];
  v8 = [v7 objectForKey:@"LearnedLocationEngineTrainLightweightLastCompletionDate"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(*(a1 + 56));
      v12 = *(a1 + 64);
      v11 = *(a1 + 72);
      v13 = [v6 stringFromDate];
      v14 = [v8 stringFromDate];
      *buf = 138413314;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = v12;
      *&buf[22] = 2048;
      v38 = v11;
      *v39 = 2112;
      *&v39[2] = v13;
      *&v39[10] = 2112;
      *&v39[12] = v14;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "--------->%@, start training, reason, %lu, mode, %lu, trainLocationsOfInterestLastCompletionDate (full-training) %@, lastLightweightTrainingCompletionDate %@ <---------", buf, 0x34u);
    }
  }

  objc_initWeak(&location, *(a1 + 32));
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v38 = __Block_byref_object_copy__41;
  *v39 = __Block_byref_object_dispose__41;
  v15 = *(a1 + 32);
  v35 = 0;
  v16 = [v15 _getUUIDSetOfLocationsOfInterestWithError:&v35];
  v17 = v35;
  *&v39[8] = v16;
  v18 = *(a1 + 64);
  v19 = *(a1 + 32);
  v20 = *(a1 + 72);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __55__RTLearnedLocationEngine_trainForReason_mode_handler___block_invoke_649;
  v27[3] = &unk_2788C8890;
  objc_copyWeak(v33, &location);
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v31 = v21;
  v33[1] = v22;
  v34 = *(a1 + 64);
  v23 = *(a1 + 40);
  v24 = *(a1 + 32);
  v28 = v23;
  v29 = v24;
  v32 = buf;
  v25 = v26;
  v30 = v25;
  [v19 _trainForReason:v18 mode:v20 handler:v27];

  objc_destroyWeak(v33);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
}

void __55__RTLearnedLocationEngine_trainForReason_mode_handler___block_invoke_649(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__RTLearnedLocationEngine_trainForReason_mode_handler___block_invoke_2;
    block[3] = &unk_2788C8868;
    v20 = *(a1 + 80);
    v21 = *(a1 + 88);
    v16 = v5;
    v9 = *(a1 + 32);
    v19 = *(a1 + 64);
    *&v10 = v9;
    *(&v10 + 1) = *(a1 + 40);
    v14 = v10;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v17 = v14;
    v18 = v13;
    v22 = a3;
    dispatch_async(v8, block);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __55__RTLearnedLocationEngine_trainForReason_mode_handler___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 80));
      v4 = *(a1 + 88);
      v5 = *(a1 + 96);
      v6 = *(a1 + 32);
      v7 = [MEMORY[0x277CBEAA8] date];
      [v7 timeIntervalSinceDate:*(a1 + 40)];
      *buf = 138413314;
      v19 = v3;
      v20 = 2048;
      v21 = v4;
      v22 = 2048;
      v23 = v5;
      v24 = 2112;
      v25 = v6;
      v26 = 2048;
      v27 = v8;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "--------->%@, finished training, reason, %lu, mode, %lu, error, %@, latency, %.2f<---------", buf, 0x34u);
    }
  }

  v9 = *(a1 + 48);
  v17 = 0;
  v10 = [v9 _getUUIDSetOfLocationsOfInterestWithError:&v17];
  v11 = v17;
  v12 = [*(a1 + 48) _evaluateTrainResultFromGraphUUIDsBeforeTrain:*(*(*(a1 + 72) + 8) + 40) graphUUIDsAfterTrain:v10];
  if (!*(a1 + 32))
  {
    v13 = v12;
    v14 = *(a1 + 48);
    v15 = [MEMORY[0x277CBEAA8] date];
    [v15 timeIntervalSinceDate:*(a1 + 56)];
    [v14 didUpdateWithIntervalSinceLastUpdate:*(a1 + 96) trainMode:v13 trainResult:?];
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    (*(v16 + 16))(v16, *(a1 + 32), *(a1 + 104));
  }
}

- (BOOL)_trainLocationsOfInterestModelWithError:(id *)error
{
  v78 = *MEMORY[0x277D85DE8];
  defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
  v7 = [defaultsManager objectForKey:@"LearnedLocationEngineTrainLocationsOfInterestLastCompletionDate"];

  defaultsManager2 = [(RTLearnedLocationEngine *)self defaultsManager];
  date = [MEMORY[0x277CBEAA8] date];
  [defaultsManager2 setObject:date forKey:@"LearnedLocationEngineTrainLocationsOfInterestLastCompletionDate"];

  if (![(RTLearnedLocationEngine *)self _homeLocationOfInterestExist]|| ![(RTLearnedLocationEngine *)self _deferTrainingLOIsDueToCloudStoreNotChangeSinceLastTrainingDate:v7])
  {
    [(RTLearnedLocationEngine *)self willBeginTraining];
    v67 = 0;
    v14 = [(RTLearnedLocationEngine *)self _reconcileLearnedLocationsWithError:&v67];
    v15 = v67;
    if (!v14)
    {
      [(RTLearnedLocationEngine *)self didFinishTraining];
      v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v48 = NSStringFromSelector(a2);
        *buf = 138412546;
        v69 = v48;
        v70 = 2112;
        v71 = v15;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, _reconcileLearnedLocationsWithError, error, %@", buf, 0x16u);
      }

      if (error)
      {
        v33 = v15;
        v13 = 0;
        *error = v15;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_59;
    }

    v16 = objc_opt_new();
    v66 = 0;
    v17 = [(RTLearnedLocationEngine *)self _relabelWithError:&v66];
    v18 = v66;
    if (!v17)
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v50 = NSStringFromSelector(a2);
        *buf = 138412546;
        v69 = v50;
        v70 = 2112;
        v71 = v18;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@, _relabelWithError, error, %@", buf, 0x16u);
      }

      if (v18)
      {
        [v16 addObject:v18];
      }
    }

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v65 = 0;
    v21 = [(RTLearnedLocationEngine *)self _applyUserCurationsSubmittedSince:distantPast error:&v65];
    v59 = v65;

    if (!v21)
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v51 = NSStringFromSelector(a2);
        *buf = 138412546;
        v69 = v51;
        v70 = 2112;
        v71 = v59;
        _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@, _applyUserCurationsSubmittedSince:error:, error, %@", buf, 0x16u);
      }

      if (v59)
      {
        [v16 addObject:v59];
      }
    }

    v64 = 0;
    v23 = [(RTLearnedLocationEngine *)self _classifyPlaceTypes:&v64];
    v24 = v64;
    v58 = v24;
    if (!v23)
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v52 = NSStringFromSelector(a2);
        *buf = 138412546;
        v69 = v52;
        v70 = 2112;
        v71 = v15;
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@, _classifyPlaceTypes, error, %@", buf, 0x16u);

        v24 = v58;
      }

      if (v24)
      {
        [v16 addObject:v24];
      }
    }

    v63 = 0;
    v26 = [(RTLearnedLocationEngine *)self _consolidateKnownPlaceTypesWithError:&v63];
    v60 = v63;
    if (!v26)
    {
      v27 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v53 = NSStringFromSelector(a2);
        *buf = 138412546;
        v69 = v53;
        v70 = 2112;
        v71 = v60;
        _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, _consolidateKnownPlaceTypesWithError, error, %@", buf, 0x16u);

        v24 = v58;
      }

      if (v60)
      {
        [v16 addObject:v60];
      }
    }

    if (v15 || v18 || v24 || v60)
    {
      v34 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v49 = NSStringFromSelector(a2);
        *buf = 138413314;
        v69 = v49;
        v70 = 2112;
        v71 = v15;
        v72 = 2112;
        v73 = v18;
        v74 = 2112;
        v75 = v58;
        v76 = 2112;
        v77 = v60;
        _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "%@, skip saving known place type identifiers, reconciliationError, %@, relabelError, %@, classifyPlaceTypesError, %@, consolidateKnownPlaceTypesError, %@", buf, 0x34u);
      }

      v31 = a2;
    }

    else
    {
      v62 = 0;
      v28 = [(RTLearnedLocationEngine *)self _saveIdentifiersOfKnownPlaceTypesWithError:&v62];
      v29 = v62;
      v30 = v29;
      if (v28)
      {
        v56 = v29;
        v31 = a2;
LABEL_49:
        v61 = 0;
        v37 = [(RTLearnedLocationEngine *)self _refreshMapItemsForLocationsOfInterestWithError:&v61];
        v38 = v61;
        if (!v37)
        {
          v39 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v54 = NSStringFromSelector(v31);
            *buf = 138412546;
            v69 = v54;
            v70 = 2112;
            v71 = v60;
            _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "%@, _refreshMapItemsForLocationsOfInterestWithError, error, %@", buf, 0x16u);
          }

          if (v38)
          {
            [v16 addObject:v38];
          }
        }

        [(RTLearnedLocationEngine *)self didFinishTraining];
        v40 = _RTSafeArray();
        v41 = _RTMultiErrorCreate();

        v13 = v41 == 0;
        if (v41)
        {
          if (error)
          {
            v42 = v41;
            *error = v41;
          }
        }

        else
        {
          date2 = [MEMORY[0x277CBEAA8] date];
          defaultsManager3 = [(RTLearnedLocationEngine *)self defaultsManager];
          [defaultsManager3 setObject:date2 forKey:@"LearnedLocationEngineTrainLocationsOfInterestLastCompletionDate"];

          defaultsManager4 = [(RTLearnedLocationEngine *)self defaultsManager];
          [defaultsManager4 setObject:date2 forKey:@"LearnedLocationEngineTrainLocationsOfInterestLastCompletionDate"];

          defaultsManager5 = [(RTLearnedLocationEngine *)self defaultsManager];
          [defaultsManager5 setObject:MEMORY[0x277CBEC28] forKey:@"RTDefaultsLearnedLocationEngineLocationOfInterestMetricsSubmitted"];
        }

LABEL_59:
        goto LABEL_60;
      }

      v35 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        v55 = v57 = v30;
        *buf = 138412546;
        v69 = v55;
        v70 = 2112;
        v71 = v57;
        _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "%@, _saveIdentifiersOfKnownPlaceTypesWithError, error, %@", buf, 0x16u);

        v30 = v57;
      }

      if (v30)
      {
        v36 = v30;
        v31 = a2;
        v56 = v36;
        [v16 addObject:?];
        goto LABEL_49;
      }

      v31 = a2;
    }

    v56 = 0;
    goto LABEL_49;
  }

  trainingMetrics = [(RTLearnedLocationEngine *)self trainingMetrics];
  [trainingMetrics setWasDeferred:3];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      stringFromDate = [v7 stringFromDate];
      *buf = 138412290;
      v69 = stringFromDate;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "Deferring training due to no change of cloud store since last training date, %@.", buf, 0xCu);
    }
  }

  v13 = 0;
  if (error)
  {
    *error = 0;
  }

LABEL_60:

  return v13;
}

- (void)_submitPlaceTypeClassificationFeatureInputMetrics
{
  v126[1] = *MEMORY[0x277D85DE8];
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy__41;
  v104 = __Block_byref_object_dispose__41;
  v105 = 0;
  v98[0] = 0;
  v98[1] = v98;
  v98[2] = 0x3032000000;
  v98[3] = __Block_byref_object_copy__41;
  v98[4] = __Block_byref_object_dispose__41;
  v99 = 0;
  v3 = dispatch_semaphore_create(0);
  selfCopy = self;
  contactsManager = [(RTLearnedLocationEngine *)self contactsManager];
  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = __76__RTLearnedLocationEngine__submitPlaceTypeClassificationFeatureInputMetrics__block_invoke;
  v94[3] = &unk_2788C88E0;
  v96 = v98;
  v5 = v3;
  v95 = v5;
  v97 = &v100;
  [contactsManager fetchMeCardWithHandler:v94];

  dsema = v5;
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = dispatch_time(0, 3600000000000);
  v8 = dispatch_semaphore_wait(dsema, v7);
  v9 = MEMORY[0x277D01448];
  v10 = MEMORY[0x277CCA450];
  if (v8)
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v6];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
    firstObject = [v17 firstObject];

    [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *v120 = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v120, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v114 = *v10;
    *v120 = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:&v114 count:1];
    v22 = [v20 errorWithDomain:*v9 code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;
    }
  }

  else
  {
    v22 = 0;
  }

  v82 = v22;
  *v120 = 0;
  v121 = v120;
  v122 = 0x3032000000;
  v123 = __Block_byref_object_copy__41;
  v124 = __Block_byref_object_dispose__41;
  v125 = 0;
  v114 = 0;
  v115 = &v114;
  v116 = 0x3032000000;
  v117 = __Block_byref_object_copy__41;
  v118 = __Block_byref_object_dispose__41;
  v119 = 0;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  postalAddresses = [v101[5] postalAddresses];
  v25 = [postalAddresses countByEnumeratingWithState:&v90 objects:v113 count:16];
  if (v25)
  {
    v79 = *v91;
    obj = postalAddresses;
    v75 = *v9;
    v76 = *v10;
    do
    {
      v80 = v25;
      for (i = 0; i != v80; ++i)
      {
        if (*v91 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v90 + 1) + 8 * i);
        if ([v27 labelType] == 1 || objc_msgSend(v27, "labelType") == 2)
        {
          v28 = objc_alloc(MEMORY[0x277D011B0]);
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          v31 = [v28 initWithUseBackgroundTraits:1 analyticsIdentifier:v30];

          mapServiceManager = [(RTLearnedLocationEngine *)selfCopy mapServiceManager];
          geoDictionaryRepresentation = [v27 geoDictionaryRepresentation];
          v85[0] = MEMORY[0x277D85DD0];
          v85[1] = 3221225472;
          v85[2] = __76__RTLearnedLocationEngine__submitPlaceTypeClassificationFeatureInputMetrics__block_invoke_2;
          v85[3] = &unk_2788C8908;
          v34 = dsema;
          v86 = v34;
          v87 = v27;
          v88 = v120;
          v89 = &v114;
          [mapServiceManager fetchMapItemsFromAddressDictionary:geoDictionaryRepresentation options:v31 handler:v85];

          v35 = v34;
          v36 = [MEMORY[0x277CBEAA8] now];
          v37 = dispatch_time(0, 3600000000000);
          v38 = v82;
          if (dispatch_semaphore_wait(v35, v37))
          {
            v39 = [MEMORY[0x277CBEAA8] now];
            [v39 timeIntervalSinceDate:v36];
            v41 = v40;
            v42 = objc_opt_new();
            v43 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
            callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
            v45 = [callStackSymbols2 filteredArrayUsingPredicate:v43];
            firstObject2 = [v45 firstObject];

            [v42 submitToCoreAnalytics:firstObject2 type:1 duration:v41];
            v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_2304B3000, v47, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
            }

            v48 = MEMORY[0x277CCA9B8];
            v126[0] = v76;
            *buf = @"semaphore wait timeout";
            v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v126 count:1];
            v50 = [v48 errorWithDomain:v75 code:15 userInfo:v49];

            v38 = v82;
            if (v50)
            {
              v51 = v50;

              v38 = v50;
            }
          }

          v52 = v38;
          v82 = v52;
        }
      }

      postalAddresses = obj;
      v25 = [obj countByEnumeratingWithState:&v90 objects:v113 count:16];
    }

    while (v25);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v53 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      v56 = NSStringFromSelector(a2);
      v57 = *(v121 + 5);
      v58 = v115[5];
      *buf = 138413059;
      *&buf[4] = v55;
      v107 = 2112;
      v108 = v56;
      v109 = 2117;
      v110 = v57;
      v111 = 2117;
      v112 = v58;
      _os_log_impl(&dword_2304B3000, v53, OS_LOG_TYPE_INFO, "%@, %@, home map item, %{sensitive}@, work map item, %{sensitive}@", buf, 0x2Au);
    }
  }

  if (*(v121 + 5) && v115[5])
  {
    date = [MEMORY[0x277CBEAA8] date];
    v60 = [date dateByAddingTimeInterval:-3628800.0];
    v61 = *(v121 + 5);
    v62 = v115[5];
    v83 = 0;
    v84 = 0;
    v63 = [(RTLearnedLocationEngine *)selfCopy calculateMetricsToReplayOldHomeWorkInferenceAlgoWithStartDate:v60 endDate:date homeMapItem:v61 workMapItem:v62 locationsOfOthers:&v84 error:&v83];
    v64 = v84;
    v65 = v83;
    if (!v65)
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v67 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v67, OS_LOG_TYPE_INFO, "Start submission of home and work replayable CA metrics.", buf, 2u);
        }
      }

      [(RTLearnedLocationEngine *)selfCopy calculateNewMetricsAndSubmitAlongWithTheOldMetrics:v63 startDate:v60 endDate:date homeMapItem:*(v121 + 5) workMapItem:v115[5] distanceThresholdArray:&unk_2845A0BA8 locationsOfOthers:v64];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v68 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          date3 = [MEMORY[0x277CBEAA8] date];
          [date3 timeIntervalSinceDate:date2];
          *buf = 134217984;
          *&buf[4] = v70;
          _os_log_impl(&dword_2304B3000, v68, OS_LOG_TYPE_INFO, "End submission of home and work replayable CA metrics, latency, %.2f", buf, 0xCu);
        }
      }
    }

LABEL_42:
    goto LABEL_43;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    date = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(date, OS_LOG_TYPE_INFO))
    {
      v71 = objc_opt_class();
      v72 = NSStringFromClass(v71);
      v73 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v72;
      v107 = 2112;
      v108 = v73;
      _os_log_impl(&dword_2304B3000, date, OS_LOG_TYPE_INFO, "%@, %@, submission skipped due to invalid home or work map items", buf, 0x16u);
    }

    goto LABEL_42;
  }

LABEL_43:
  _Block_object_dispose(&v114, 8);

  _Block_object_dispose(v120, 8);
  _Block_object_dispose(v98, 8);

  _Block_object_dispose(&v100, 8);
}

void __76__RTLearnedLocationEngine__submitPlaceTypeClassificationFeatureInputMetrics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __76__RTLearnedLocationEngine__submitPlaceTypeClassificationFeatureInputMetrics__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (!a3)
  {
    if ([*(a1 + 40) labelType] == 1)
    {
      v5 = 48;
    }

    else
    {
      if ([*(a1 + 40) labelType] != 2)
      {
        goto LABEL_7;
      }

      v5 = 56;
    }

    v6 = [v9 firstObject];
    v7 = *(*(a1 + v5) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

LABEL_7:
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)calculateMetricsToReplayOldHomeWorkInferenceAlgoWithStartDate:(id)date endDate:(id)endDate homeMapItem:(id)item workMapItem:(id)mapItem locationsOfOthers:(id *)others error:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  itemCopy = item;
  mapItemCopy = mapItem;
  v18 = mapItemCopy;
  if (error)
  {
    if (dateCopy)
    {
      if (endDateCopy)
      {
        if (itemCopy)
        {
          if (mapItemCopy)
          {
            if (others)
            {
              *buf = 0;
              v62 = buf;
              v63 = 0x3032000000;
              v64 = __Block_byref_object_copy__41;
              v65 = __Block_byref_object_dispose__41;
              v66 = 0;
              v55 = 0;
              v56 = &v55;
              v57 = 0x3032000000;
              v58 = __Block_byref_object_copy__41;
              v59 = __Block_byref_object_dispose__41;
              v60 = 0;
              v19 = dispatch_semaphore_create(0);
              learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
              v51[0] = MEMORY[0x277D85DD0];
              v51[1] = 3221225472;
              v51[2] = __145__RTLearnedLocationEngine_calculateMetricsToReplayOldHomeWorkInferenceAlgoWithStartDate_endDate_homeMapItem_workMapItem_locationsOfOthers_error___block_invoke;
              v51[3] = &unk_2788C4490;
              v53 = buf;
              v54 = &v55;
              v21 = v19;
              v52 = v21;
              [learnedLocationStore fetchLocationsOfInterestVisitedBetweenStartDate:dateCopy endDate:endDateCopy handler:v51];

              dsema = v21;
              v49 = [MEMORY[0x277CBEAA8] now];
              v22 = dispatch_time(0, 3600000000000);
              if (dispatch_semaphore_wait(dsema, v22))
              {
                v23 = [MEMORY[0x277CBEAA8] now];
                [v23 timeIntervalSinceDate:v49];
                v25 = v24;
                v47 = objc_opt_new();
                v48 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
                callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
                v27 = [callStackSymbols filteredArrayUsingPredicate:v48];
                firstObject = [v27 firstObject];

                [v47 submitToCoreAnalytics:firstObject type:1 duration:v25];
                v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
                {
                  *v68 = 0;
                  _os_log_fault_impl(&dword_2304B3000, v28, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v68, 2u);
                }

                v29 = MEMORY[0x277CCA9B8];
                v67 = *MEMORY[0x277CCA450];
                *v68 = @"semaphore wait timeout";
                v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
                v31 = [v29 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v30];

                if (v31)
                {
                  v32 = v31;

                  v33 = 0;
LABEL_36:

                  v43 = v31;
                  if ((v33 & 1) == 0)
                  {
                    objc_storeStrong(v56 + 5, v31);
                  }

                  v44 = v56[5];
                  if (v44)
                  {
                    v35 = 0;
                  }

                  else
                  {
                    learnedLocationStore2 = [(RTLearnedLocationEngine *)self learnedLocationStore];
                    v35 = [RTPlaceDataMetrics generateDictionaryOfOldMetricsWithLearnedLocationStore:learnedLocationStore2 locationsOfInterest:*(v62 + 5) homeMapItem:itemCopy workMapItem:v18 locationsOfOthers:others];

                    v44 = v56[5];
                  }

                  *error = v44;

                  _Block_object_dispose(&v55, 8);
                  _Block_object_dispose(buf, 8);

                  goto LABEL_31;
                }
              }

              else
              {
                v31 = 0;
              }

              v33 = 1;
              goto LABEL_36;
            }

            v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outLocationsOfOthers", buf, 2u);
            }

            v37 = _RTErrorInvalidParameterCreate(@"outLocationsOfOthers");
          }

          else
          {
            v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workMapItem", buf, 2u);
            }

            v37 = _RTErrorInvalidParameterCreate(@"workMapItem");
          }
        }

        else
        {
          v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: homeMapItem", buf, 2u);
          }

          v37 = _RTErrorInvalidParameterCreate(@"homeMapItem");
        }
      }

      else
      {
        v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", buf, 2u);
        }

        v37 = _RTErrorInvalidParameterCreate(@"endDate");
      }
    }

    else
    {
      v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
      }

      v37 = _RTErrorInvalidParameterCreate(@"startDate");
    }

    v35 = 0;
    *error = v37;
    goto LABEL_31;
  }

  v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v35 = 0;
LABEL_31:

  return v35;
}

void __145__RTLearnedLocationEngine_calculateMetricsToReplayOldHomeWorkInferenceAlgoWithStartDate_endDate_homeMapItem_workMapItem_locationsOfOthers_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Error was issued during fetching locationsOfInterest from store. Error: %@", &v9, 0xCu);
      }
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)calculateNewMetricsAndSubmitAlongWithTheOldMetrics:(id)metrics startDate:(id)date endDate:(id)endDate homeMapItem:(id)item workMapItem:(id)mapItem distanceThresholdArray:(id)array locationsOfOthers:(id)others
{
  v122[1] = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  dateCopy = date;
  endDateCopy = endDate;
  itemCopy = item;
  mapItemCopy = mapItem;
  arrayCopy = array;
  v82 = metricsCopy;
  othersCopy = others;
  v87 = dateCopy;
  if (!metricsCopy)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v36 = "Invalid parameter not satisfying: dict";
LABEL_27:
    _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, v36, buf, 2u);
    goto LABEL_34;
  }

  if (!dateCopy)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v36 = "Invalid parameter not satisfying: startDate";
    goto LABEL_27;
  }

  if (!endDateCopy)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v36 = "Invalid parameter not satisfying: endDate";
    goto LABEL_27;
  }

  if (!itemCopy)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v36 = "Invalid parameter not satisfying: homeMapItem";
    goto LABEL_27;
  }

  if (!mapItemCopy)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v36 = "Invalid parameter not satisfying: workMapItem";
    goto LABEL_27;
  }

  if (![arrayCopy count])
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v36 = "Invalid parameter not satisfying: distanceThresholdArray.count > 0";
    goto LABEL_27;
  }

  if (!othersCopy)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v36 = "Invalid parameter not satisfying: locationsOfOthers";
    goto LABEL_27;
  }

  dateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > %@", @"entryDate", dateCopy];
  *buf = 0;
  v110 = buf;
  v111 = 0x3032000000;
  v112 = __Block_byref_object_copy__41;
  v113 = __Block_byref_object_dispose__41;
  v114 = 0;
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = __Block_byref_object_copy__41;
  v107 = __Block_byref_object_dispose__41;
  v108 = 0;
  v16 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  v98[0] = MEMORY[0x277D85DD0];
  v98[1] = 3221225472;
  v98[2] = __161__RTLearnedLocationEngine_calculateNewMetricsAndSubmitAlongWithTheOldMetrics_startDate_endDate_homeMapItem_workMapItem_distanceThresholdArray_locationsOfOthers___block_invoke;
  v98[3] = &unk_2788C8930;
  v100 = buf;
  v101 = &v103;
  v98[4] = self;
  v102 = a2;
  v18 = v16;
  v99 = v18;
  [learnedLocationStore fetchVisitsWithPredicate:dateCopy handler:v98];

  dsema = v18;
  v19 = [MEMORY[0x277CBEAA8] now];
  v20 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(dsema, v20))
  {
    v32 = 0;
LABEL_29:
    v34 = 1;
    goto LABEL_30;
  }

  v21 = [MEMORY[0x277CBEAA8] now];
  [v21 timeIntervalSinceDate:v19];
  v23 = v22;
  v24 = objc_opt_new();
  v25 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  v27 = [callStackSymbols filteredArrayUsingPredicate:v25];
  firstObject = [v27 firstObject];

  [v24 submitToCoreAnalytics:firstObject type:1 duration:v23];
  v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
  {
    *v115 = 0;
    _os_log_fault_impl(&dword_2304B3000, v29, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v115, 2u);
  }

  v30 = MEMORY[0x277CCA9B8];
  v122[0] = *MEMORY[0x277CCA450];
  *v115 = @"semaphore wait timeout";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v122 count:1];
  v32 = [v30 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v31];

  if (!v32)
  {
    goto LABEL_29;
  }

  v33 = v32;

  v34 = 0;
LABEL_30:

  v68 = v32;
  if ((v34 & 1) == 0)
  {
    objc_storeStrong(v104 + 5, v32);
  }

  if (!v104[5])
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v37 = [&unk_2845A0BC0 countByEnumeratingWithState:&v94 objects:v121 count:16];
    if (v37)
    {
      v71 = *v95;
LABEL_37:
      v38 = 0;
      v72 = v37;
      while (1)
      {
        if (*v95 != v71)
        {
          objc_enumerationMutation(&unk_2845A0BC0);
        }

        v76 = v38;
        v86 = *(*(&v94 + 1) + 8 * v38);
        context = objc_autoreleasePoolPush();
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        obj = arrayCopy;
        v39 = [obj countByEnumeratingWithState:&v90 objects:v120 count:16];
        if (v39)
        {
          v81 = *v91;
          while (2)
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v91 != v81)
              {
                objc_enumerationMutation(obj);
              }

              v41 = *(*(&v90 + 1) + 8 * i);
              v42 = objc_autoreleasePoolPush();
              [v41 doubleValue];
              v44 = v43;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v45 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                {
                  v46 = objc_opt_class();
                  v47 = NSStringFromClass(v46);
                  v48 = NSStringFromSelector(a2);
                  v49 = +[RTPlaceDataMetrics DataSourceToString:](RTPlaceDataMetrics, "DataSourceToString:", [v86 unsignedIntValue]);
                  *v115 = 138413058;
                  *&v115[4] = v47;
                  v116 = 2112;
                  v117 = v48;
                  v118 = 2112;
                  *v119 = v49;
                  *&v119[8] = 2048;
                  *&v119[10] = v44;
                  _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_INFO, "%@, %@, submitting metrics, data source, %@, distance threshold, %.3f", v115, 0x2Au);
                }
              }

              v50 = [RTPlaceDataMetrics alloc];
              v51 = *(v110 + 5);
              location = [itemCopy location];
              location2 = [mapItemCopy location];
              v54 = [(RTPlaceDataMetrics *)v50 initWithVisitArray:v51 distanceThreshold:location locationHome:location2 locationWork:othersCopy locationsOfOthers:v87 startDateTime:endDateCopy endDateTime:v44];

              [(RTPlaceDataMetrics *)v54 calculateAndSetVisitMetrics];
              [(RTPlaceDataMetrics *)v54 setCurrentInferenceReplayableMetricsFromDict:v82];
              findHomeWorkOthersIntervals = [(RTPlaceDataMetrics *)v54 findHomeWorkOthersIntervals];
              unsignedIntValue = [v86 unsignedIntValue];
              if (unsignedIntValue == 2)
              {
                biomeManager = [(RTLearnedLocationEngine *)self biomeManager];
                v58 = [RTPlaceDataMetrics calculateMLFeaturesUsingBiomeManager:biomeManager intervalDictionary:findHomeWorkOthersIntervals startDate:v87 endDate:endDateCopy createBucketedFeatures:0];

                -[RTPlaceDataMetrics setMLMetricsFromFeaturesDict:sourceName:](v54, "setMLMetricsFromFeaturesDict:sourceName:", v58, [v86 unsignedIntValue]);
                v89 = 0;
                [(RTPlaceDataMetrics *)v54 submitMetricsWithError:&v89];
                v59 = v89;
                if (v59)
                {
                  v60 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                  {
                    v65 = objc_opt_class();
                    v74 = NSStringFromClass(v65);
                    v73 = NSStringFromSelector(a2);
                    v66 = +[RTPlaceDataMetrics DataSourceToString:](RTPlaceDataMetrics, "DataSourceToString:", [v86 unsignedIntValue]);
                    *v115 = 138413058;
                    *&v115[4] = v74;
                    v116 = 2112;
                    v117 = v73;
                    v118 = 2112;
                    *v119 = v66;
                    *&v119[8] = 2112;
                    *&v119[10] = v59;
                    _os_log_error_impl(&dword_2304B3000, v60, OS_LOG_TYPE_ERROR, "%@, %@, error was issued during metrics submission for RTPlaceDataMetrics, data source, %@, error, %@", v115, 0x2Au);
                  }
                }
              }

              else
              {
                v58 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  v61 = objc_opt_class();
                  v62 = NSStringFromClass(v61);
                  v63 = NSStringFromSelector(a2);
                  unsignedIntValue2 = [v86 unsignedIntValue];
                  *v115 = 138413058;
                  *&v115[4] = v62;
                  v116 = 2112;
                  v117 = v63;
                  v118 = 1024;
                  *v119 = unsignedIntValue2;
                  *&v119[4] = 2112;
                  *&v119[6] = 0;
                  _os_log_error_impl(&dword_2304B3000, v58, OS_LOG_TYPE_ERROR, "%@, %@, error was issued due to wrong data source, %d, error, %@", v115, 0x26u);
                }
              }

              objc_autoreleasePoolPop(v42);
              if (unsignedIntValue != 2)
              {
                v67 = 0;
                goto LABEL_62;
              }
            }

            v39 = [obj countByEnumeratingWithState:&v90 objects:v120 count:16];
            if (v39)
            {
              continue;
            }

            break;
          }
        }

        v67 = 1;
LABEL_62:

        objc_autoreleasePoolPop(context);
        if (!v67)
        {
          break;
        }

        v38 = v76 + 1;
        if (v76 + 1 == v72)
        {
          v37 = [&unk_2845A0BC0 countByEnumeratingWithState:&v94 objects:v121 count:16];
          if (v37)
          {
            goto LABEL_37;
          }

          break;
        }
      }
    }
  }

  _Block_object_dispose(&v103, 8);
  _Block_object_dispose(buf, 8);

  v35 = dateCopy;
LABEL_34:
}

void __161__RTLearnedLocationEngine_calculateNewMetricsAndSubmitAlongWithTheOldMetrics_startDate_endDate_homeMapItem_workMapItem_distanceThresholdArray_locationsOfOthers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(*(a1 + 64));
        v12 = 138412802;
        v13 = v10;
        v14 = 2112;
        v15 = v11;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, error was issued during fetching visits from store, error, %@", &v12, 0x20u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)requestTrainLocationsOfInterestModelWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTLearnedLocationEngine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__RTLearnedLocationEngine_requestTrainLocationsOfInterestModelWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __75__RTLearnedLocationEngine_requestTrainLocationsOfInterestModelWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcActivityManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__RTLearnedLocationEngine_requestTrainLocationsOfInterestModelWithHandler___block_invoke_2;
  v4[3] = &unk_2788C4F60;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 unregisterActivityWithIdentifier:@"com.apple.routined.learnedLocationEngine.train-local-model" handler:v4];
}

void __75__RTLearnedLocationEngine_requestTrainLocationsOfInterestModelWithHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "error canceling re-train.", buf, 2u);
    }
  }

  else
  {
    v4 = [*(a1 + 32) queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __75__RTLearnedLocationEngine_requestTrainLocationsOfInterestModelWithHandler___block_invoke_681;
    v6[3] = &unk_2788C4938;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v5;
    dispatch_async(v4, v6);
  }
}

- (void)_requestTrainLocationsOfInterestModelWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [[RTXPCActivityCriteria alloc] initWithInterval:2 gracePeriod:1 priority:1 requireNetworkConnectivity:2 requireInexpensiveNetworkConnectivity:0 networkTransferDirection:1 allowBattery:900.0 powerNap:7200.0];
  objc_initWeak(&location, self);
  xpcActivityManager = [(RTLearnedLocationEngine *)self xpcActivityManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__RTLearnedLocationEngine__requestTrainLocationsOfInterestModelWithHandler___block_invoke;
  v9[3] = &unk_2788C8980;
  v11[1] = a2;
  v8 = handlerCopy;
  v10 = v8;
  objc_copyWeak(v11, &location);
  [xpcActivityManager registerActivityWithIdentifier:@"com.apple.routined.learnedLocationEngine.train-local-model" criteria:v6 handler:v9];

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __76__RTLearnedLocationEngine__requestTrainLocationsOfInterestModelWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, error, %@", buf, 0x16u);
      }
    }

    if (v5)
    {
      v5[2](v5, v6, 0);
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, v6);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __76__RTLearnedLocationEngine__requestTrainLocationsOfInterestModelWithHandler___block_invoke_682;
      v12[3] = &unk_2788C8958;
      v15 = *(a1 + 48);
      v13 = v5;
      v14 = *(a1 + 32);
      [WeakRetained trainLocationsOfInterestModelWithHandler:v12];
    }

    else
    {
      if (v5)
      {
        v5[2](v5, 0, 0);
      }

      v11 = *(a1 + 32);
      if (v11)
      {
        (*(v11 + 16))(v11, 0);
      }
    }
  }
}

void __76__RTLearnedLocationEngine__requestTrainLocationsOfInterestModelWithHandler___block_invoke_682(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 48));
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, failed to train, error, %@", &v8, 0x16u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3, 0);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (void)trainLocationsOfInterestModelWithHandler:(id)handler
{
  handlerCopy = handler;
  date = [MEMORY[0x277CBEAA8] date];
  objc_initWeak(&location, self);
  queue = [(RTLearnedLocationEngine *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__RTLearnedLocationEngine_trainLocationsOfInterestModelWithHandler___block_invoke;
  v10[3] = &unk_2788C89A8;
  objc_copyWeak(v13, &location);
  v13[1] = a2;
  v11 = date;
  v12 = handlerCopy;
  v10[4] = self;
  v8 = date;
  v9 = handlerCopy;
  dispatch_async(queue, v10);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __68__RTLearnedLocationEngine_trainLocationsOfInterestModelWithHandler___block_invoke(uint64_t a1)
{
  v41[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) defaultsManager];
    v4 = [v3 objectForKey:@"LearnedLocationEngineTrainVisitsLastAttemptDate"];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x277CBEAA8] date];
    }

    v10 = v6;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412290;
        v35 = v14;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "--------->%@, start training locations of interest<---------", buf, 0xCu);
      }
    }

    v15 = *(a1 + 32);
    v16 = MEMORY[0x277CCACA8];
    v17 = NSStringFromSelector(*(a1 + 64));
    v18 = [v16 stringWithFormat:@"before %@", v17];
    [v15 _logDatabasesWithReason:v18];

    v19 = *(a1 + 32);
    v33 = 0;
    [v19 _trainLocationsOfInterestModelWithError:&v33];
    v20 = v33;
    v21 = *(a1 + 32);
    v22 = MEMORY[0x277CCACA8];
    v23 = NSStringFromSelector(*(a1 + 64));
    v24 = [v22 stringWithFormat:@"after %@", v23];
    [v21 _logDatabasesWithReason:v24];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = NSStringFromSelector(*(a1 + 64));
        v27 = [MEMORY[0x277CBEAA8] date];
        [v27 timeIntervalSinceDate:*(a1 + 40)];
        *buf = 138412802;
        v35 = v26;
        v36 = 2112;
        v37 = v20;
        v38 = 2048;
        v39 = v28;
        _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "--------->%@, finished training locations of interest, error, %@, latency, %.2f<---------", buf, 0x20u);
      }
    }

    if (!v20)
    {
      v29 = *(a1 + 32);
      v30 = [MEMORY[0x277CBEAA8] date];
      [v30 timeIntervalSinceDate:v10];
      [v29 didUpdateWithIntervalSinceLastUpdate:1 trainMode:0 trainResult:?];
    }

    v31 = *(a1 + 48);
    if (v31)
    {
      (*(v31 + 16))(v31, v20);
    }
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D01448];
    v40 = *MEMORY[0x277CCA450];
    v41[0] = @"swelf was nil";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v10 = [v7 errorWithDomain:v8 code:0 userInfo:v9];

    v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412546;
      v35 = v32;
      v36 = 2112;
      v37 = v10;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, v10);
    }
  }
}

- (BOOL)_reconcileLearnedLocationsWithError:(id *)error
{
  v88[1] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = NSStringFromSelector(a2);
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, started", buf, 0xCu);
    }
  }

  date = [MEMORY[0x277CBEAA8] date];
  [(RTLearnedLocationEngine *)self willBeginTraining];
  array = [MEMORY[0x277CBEA60] array];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Reconciliation algorithm chosen, per device", buf, 2u);
    }
  }

  v75 = 0;
  v7 = [(RTLearnedLocationEngine *)self _performPerDeviceReconiliationWithError:&v75];
  v62 = v75;

  v64 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v7;
  v66 = [obj countByEnumeratingWithState:&v71 objects:v87 count:16];
  if (v66)
  {
    v65 = *v72;
    do
    {
      v8 = 0;
      do
      {
        if (*v72 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v71 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [RTLearnedLocation alloc];
        visits = [v9 visits];
        v13 = [(RTLearnedLocation *)v11 initWithLearnedVisits:visits];

        if (v13 || (v14 = [RTLearnedLocation alloc], [v9 place], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "mapItem"), v16 = objc_claimAutoreleasedReturnValue(), v13 = -[RTLearnedLocation initWithMapItem:type:](v14, "initWithMapItem:type:", v16, 2), v16, v15, v13))
        {
          v17 = [RTLearnedLocationOfInterest alloc];
          place = [v9 place];
          identifier = [place identifier];
          place2 = [v9 place];
          visits2 = [v9 visits];
          transitions = [v9 transitions];
          v23 = [(RTLearnedLocationOfInterest *)v17 initWithIdentifier:identifier location:v13 place:place2 visits:visits2 transitions:transitions];

          if (v23)
          {
            [v64 addObject:v23];
          }
        }

        else
        {
          v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            place3 = [v9 place];
            visits3 = [v9 visits];
            v26 = [visits3 count];
            *buf = 138740227;
            *&buf[4] = place3;
            *&buf[12] = 2048;
            *&buf[14] = v26;
            _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "failed to create locationOfInterest for place, %{sensitive}@, with %lu visits", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v66 != v8);
      v27 = [obj countByEnumeratingWithState:&v71 objects:v87 count:16];
      v66 = v27;
    }

    while (v27);
  }

  if (v62)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v62;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "error while running reconciliation, %@", buf, 0xCu);
    }

    if (error)
    {
      v29 = v62;
      v30 = 0;
      *error = v62;
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_47;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v84 = __Block_byref_object_copy__41;
  v85 = __Block_byref_object_dispose__41;
  v86 = 0;
  v31 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __63__RTLearnedLocationEngine__reconcileLearnedLocationsWithError___block_invoke;
  v67[3] = &unk_2788C89D0;
  v68 = v64;
  v70 = buf;
  v33 = v31;
  v69 = v33;
  [learnedLocationStore replaceWithLocationsOfInterest:v68 handler:v67];

  v34 = v33;
  v35 = [MEMORY[0x277CBEAA8] now];
  v36 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v34, v36))
  {
    v48 = 0;
LABEL_36:
    v50 = 1;
    goto LABEL_37;
  }

  v37 = [MEMORY[0x277CBEAA8] now];
  [v37 timeIntervalSinceDate:v35];
  v39 = v38;
  v40 = objc_opt_new();
  v41 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  v43 = [callStackSymbols filteredArrayUsingPredicate:v41];
  firstObject = [v43 firstObject];

  [v40 submitToCoreAnalytics:firstObject type:1 duration:v39];
  v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
  {
    *v76 = 0;
    _os_log_fault_impl(&dword_2304B3000, v45, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v76, 2u);
  }

  v46 = MEMORY[0x277CCA9B8];
  v88[0] = *MEMORY[0x277CCA450];
  *v76 = @"semaphore wait timeout";
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v88 count:1];
  v48 = [v46 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v47];

  if (!v48)
  {
    goto LABEL_36;
  }

  v49 = v48;

  v50 = 0;
LABEL_37:

  v51 = v48;
  if ((v50 & 1) == 0)
  {
    objc_storeStrong((*&buf[8] + 40), v48);
  }

  v52 = *(*&buf[8] + 40);
  v30 = v52 == 0;
  if (v52)
  {
    if (error)
    {
      *error = v52;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v53 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = NSStringFromSelector(a2);
      date2 = [MEMORY[0x277CBEAA8] date];
      [date2 timeIntervalSinceDate:date];
      *v76 = 138413058;
      *&v76[4] = v54;
      v77 = 2112;
      v78 = @"YES";
      v79 = 2112;
      v80 = 0;
      v81 = 2048;
      v82 = v56;
      _os_log_impl(&dword_2304B3000, v53, OS_LOG_TYPE_INFO, "%@, finished, success, %@, error, %@, latency, %.2f", v76, 0x2Au);
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_47:

  return v30;
}

void __63__RTLearnedLocationEngine__reconcileLearnedLocationsWithError___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) count];
      v10 = 134218242;
      v11 = v9;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "error while replacing locationsOfInterest model, locationsOfInterest, %lu, error, %@", &v10, 0x16u);
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) count];
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "replaced locationsOfInterest model, locationsOfInterest, %lu", &v10, 0xCu);
    }
  }

LABEL_5:
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_reconcileLearnedLocationsWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = 0;
  [(RTLearnedLocationEngine *)self _reconcileLearnedLocationsWithError:&v6];
  v5 = v6;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v5);
  }
}

- (void)reconcileLearnedLocationsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTLearnedLocationEngine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__RTLearnedLocationEngine_reconcileLearnedLocationsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (id)_performPerVisitReconciliationWithError:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a2);
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  v10 = [v6 stringWithFormat:@"%@-%@", v8, v9];
  [v10 UTF8String];
  v40 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = NSStringFromSelector(a2);
      *v52 = 138412546;
      *&v52[4] = v38;
      *&v52[12] = 2112;
      *&v52[14] = v39;
      _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", v52, 0x16u);
    }
  }

  v12 = [[RTPowerAssertion alloc] initWithIdentifier:v5 timeout:300.0];
  v13 = dispatch_semaphore_create(0);
  *v52 = 0;
  *&v52[8] = v52;
  *&v52[16] = 0x3032000000;
  v53 = __Block_byref_object_copy__41;
  v54 = __Block_byref_object_dispose__41;
  v55 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__41;
  v50 = __Block_byref_object_dispose__41;
  v51 = 0;
  reconcilerPerVisit = self->_reconcilerPerVisit;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __67__RTLearnedLocationEngine__performPerVisitReconciliationWithError___block_invoke;
  v42[3] = &unk_2788C4490;
  v44 = v52;
  v45 = &v46;
  v15 = v13;
  v43 = v15;
  [(RTLearnedLocationReconcilerPerVisit *)reconcilerPerVisit performReconciliationWithHandler:v42];
  v16 = v15;
  v17 = [MEMORY[0x277CBEAA8] now];
  v18 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v16, v18))
  {
    v19 = [MEMORY[0x277CBEAA8] now];
    [v19 timeIntervalSinceDate:v17];
    v21 = v20;
    v22 = objc_opt_new();
    v23 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
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
    v56 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v56 count:1];
    v30 = [v28 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v29];

    if (v30)
    {
      v31 = v30;

      v32 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v30 = 0;
  }

  v32 = 1;
LABEL_12:

  v33 = v30;
  if ((v32 & 1) == 0)
  {
    objc_storeStrong((*&v52[8] + 40), v30);
  }

  v34 = *(*&v52[8] + 40);
  if (v34)
  {
    v35 = 0;
    if (error)
    {
      *error = v34;
    }
  }

  else
  {
    v35 = v47[5];
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(v52, 8);

  return v35;
}

void __67__RTLearnedLocationEngine__performPerVisitReconciliationWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "error during reconcilation, %@", &v14, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:0];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v6 count];
      v14 = 134217984;
      v15 = v13;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "reconciled %lu locations of interest", &v14, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_performPerDeviceReconiliationWithError:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a2);
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  v10 = [v6 stringWithFormat:@"%@-%@", v8, v9];
  [v10 UTF8String];
  v40 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = NSStringFromSelector(a2);
      *v52 = 138412546;
      *&v52[4] = v38;
      *&v52[12] = 2112;
      *&v52[14] = v39;
      _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", v52, 0x16u);
    }
  }

  v12 = [[RTPowerAssertion alloc] initWithIdentifier:v5 timeout:300.0];
  v13 = dispatch_semaphore_create(0);
  *v52 = 0;
  *&v52[8] = v52;
  *&v52[16] = 0x3032000000;
  v53 = __Block_byref_object_copy__41;
  v54 = __Block_byref_object_dispose__41;
  v55 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__41;
  v50 = __Block_byref_object_dispose__41;
  v51 = 0;
  reconcilerPerDevice = self->_reconcilerPerDevice;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __67__RTLearnedLocationEngine__performPerDeviceReconiliationWithError___block_invoke;
  v42[3] = &unk_2788C4490;
  v44 = v52;
  v45 = &v46;
  v15 = v13;
  v43 = v15;
  [(RTLearnedLocationReconcilerPerDevice *)reconcilerPerDevice performReconciliationWithHandler:v42];
  v16 = v15;
  v17 = [MEMORY[0x277CBEAA8] now];
  v18 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v16, v18))
  {
    v19 = [MEMORY[0x277CBEAA8] now];
    [v19 timeIntervalSinceDate:v17];
    v21 = v20;
    v22 = objc_opt_new();
    v23 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
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
    v56 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v56 count:1];
    v30 = [v28 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v29];

    if (v30)
    {
      v31 = v30;

      v32 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v30 = 0;
  }

  v32 = 1;
LABEL_12:

  v33 = v30;
  if ((v32 & 1) == 0)
  {
    objc_storeStrong((*&v52[8] + 40), v30);
  }

  v34 = *(*&v52[8] + 40);
  if (v34)
  {
    v35 = 0;
    if (error)
    {
      *error = v34;
    }
  }

  else
  {
    v35 = v47[5];
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(v52, 8);

  return v35;
}

void __67__RTLearnedLocationEngine__performPerDeviceReconiliationWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "error during per device reconciliation, %@", &v14, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:0];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v6 count];
      v14 = 134217984;
      v15 = v13;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "per device reconciled %lu locations of interest", &v14, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)getNearbyCandidatesAroundLocation:(id)location distance:(double)distance loiIdentifierToCoalescedSourceMap:(id)map error:(id *)error
{
  v116[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  mapCopy = map;
  if (!locationCopy)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_22;
    }

    v29 = _RTErrorInvalidParameterCreate(@"location");
    goto LABEL_21;
  }

  if (distance <= 0.0)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distance > 0", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_22;
    }

    v29 = _RTErrorInvalidParameterCreate(@"distance > 0");
LABEL_21:
    v32 = 0;
    *error = v29;
    goto LABEL_65;
  }

  if (!mapCopy)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: loiIdentifierToCoalescedSourceMap", buf, 2u);
    }

    if (error)
    {
      v29 = _RTErrorInvalidParameterCreate(@"loiIdentifierToCoalescedSourceMap");
      goto LABEL_21;
    }

LABEL_22:
    v32 = 0;
    goto LABEL_65;
  }

  *buf = 0;
  v103 = buf;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy__41;
  v106 = __Block_byref_object_dispose__41;
  v107 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = __Block_byref_object_copy__41;
  v100 = __Block_byref_object_dispose__41;
  v101 = 0;
  v9 = dispatch_semaphore_create(0);
  learnedLocationStore = self->_learnedLocationStore;
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = __110__RTLearnedLocationEngine_getNearbyCandidatesAroundLocation_distance_loiIdentifierToCoalescedSourceMap_error___block_invoke;
  v92[3] = &unk_2788C4490;
  v94 = buf;
  v95 = &v96;
  v11 = v9;
  v93 = v11;
  [(RTLearnedLocationStore *)learnedLocationStore fetchLocationsOfInterestWithVisitsWithinDistance:locationCopy location:v92 handler:distance];
  dsema = v11;
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(dsema, v13))
  {
    v25 = 0;
LABEL_24:
    v27 = 1;
    goto LABEL_25;
  }

  v14 = [MEMORY[0x277CBEAA8] now];
  [v14 timeIntervalSinceDate:v12];
  v16 = v15;
  v17 = objc_opt_new();
  v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  v20 = [callStackSymbols filteredArrayUsingPredicate:v18];
  firstObject = [v20 firstObject];

  [v17 submitToCoreAnalytics:firstObject type:1 duration:v16];
  v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    *v113 = 0;
    _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v113, 2u);
  }

  v23 = MEMORY[0x277CCA9B8];
  v116[0] = *MEMORY[0x277CCA450];
  *v113 = @"semaphore wait timeout";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v116 count:1];
  v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

  if (!v25)
  {
    goto LABEL_24;
  }

  v26 = v25;

  v27 = 0;
LABEL_25:

  v74 = v25;
  if ((v27 & 1) == 0)
  {
    objc_storeStrong(v97 + 5, v25);
  }

  if (v97[5])
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v66 = NSStringFromSelector(a2);
      v67 = v97[5];
      *v113 = 138412546;
      *&v113[4] = v66;
      v114 = 2112;
      v115 = v67;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, error, %@", v113, 0x16u);
    }

    v32 = 0;
    if (error)
    {
      *error = v97[5];
    }
  }

  else
  {
    v34 = [*(v103 + 5) valueForKeyPath:@"@count.visits"];
    unsignedIntegerValue = [v34 unsignedIntegerValue];

    v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:unsignedIntegerValue];
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = *(v103 + 5);
    v69 = [obj countByEnumeratingWithState:&v88 objects:v112 count:16];
    if (v69)
    {
      v70 = *v89;
      do
      {
        for (i = 0; i != v69; ++i)
        {
          if (*v89 != v70)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v88 + 1) + 8 * i);
          identifier = [v37 identifier];
          v73 = [mapCopy objectForKeyedSubscript:identifier];

          if (!v73)
          {
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            visits = [v37 visits];
            v40 = 0;
            v41 = [visits countByEnumeratingWithState:&v84 objects:v111 count:16];
            if (v41)
            {
              v42 = *v85;
              do
              {
                for (j = 0; j != v41; ++j)
                {
                  if (*v85 != v42)
                  {
                    objc_enumerationMutation(visits);
                  }

                  v40 |= [*(*(&v84 + 1) + 8 * j) placeSource];
                }

                v41 = [visits countByEnumeratingWithState:&v84 objects:v111 count:16];
              }

              while (v41);
            }

            v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v40];
            identifier2 = [v37 identifier];
            [mapCopy setObject:v44 forKeyedSubscript:identifier2];
          }

          identifier3 = [v37 identifier];
          v47 = [mapCopy objectForKeyedSubscript:identifier3];
          unsignedIntegerValue2 = [v47 unsignedIntegerValue];
          place = [v37 place];
          mapItem = [place mapItem];
          [mapItem setSource:unsignedIntegerValue2];

          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          visits2 = [v37 visits];
          v52 = [visits2 countByEnumeratingWithState:&v80 objects:v110 count:16];
          if (v52)
          {
            v53 = *v81;
            while (2)
            {
              for (k = 0; k != v52; ++k)
              {
                if (*v81 != v53)
                {
                  objc_enumerationMutation(visits2);
                }

                v55 = *(*(&v80 + 1) + 8 * k);
                v56 = objc_alloc(MEMORY[0x277D011C0]);
                place2 = [v37 place];
                mapItem2 = [place2 mapItem];
                v59 = [v56 initWithFirstObject:v55 secondObject:mapItem2];

                if (!v59)
                {
                  v60 = MEMORY[0x277CCA9B8];
                  v108 = *MEMORY[0x277CCA450];
                  v109 = @"candidate was nil";
                  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
                  v62 = [v60 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v61];

                  v63 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                  {
                    v68 = NSStringFromSelector(a2);
                    *v113 = 138412546;
                    *&v113[4] = v68;
                    v114 = 2112;
                    v115 = v62;
                    _os_log_error_impl(&dword_2304B3000, v63, OS_LOG_TYPE_ERROR, "%@, error, %@", v113, 0x16u);
                  }

                  if (error)
                  {
                    v64 = v62;
                    *error = v62;
                  }

                  v32 = 0;
                  goto LABEL_63;
                }

                [v36 addObject:v59];
              }

              v52 = [visits2 countByEnumeratingWithState:&v80 objects:v110 count:16];
              if (v52)
              {
                continue;
              }

              break;
            }
          }
        }

        v69 = [obj countByEnumeratingWithState:&v88 objects:v112 count:16];
      }

      while (v69);
    }

    v32 = v36;
LABEL_63:
  }

  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(buf, 8);

LABEL_65:

  return v32;
}

void __110__RTLearnedLocationEngine_getNearbyCandidatesAroundLocation_distance_loiIdentifierToCoalescedSourceMap_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)extractCandidate:(id)candidate fromNearbyCandidates:(id)candidates extractedCandidate:(id *)extractedCandidate error:(id *)error
{
  v63 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  candidatesCopy = candidates;
  v51 = candidateCopy;
  firstObject = [candidateCopy firstObject];
  identifier = [firstObject identifier];

  if (!identifier)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: candidate.firstObject.identifier", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_34;
    }

    v31 = @"candidate.firstObject.identifier";
    goto LABEL_33;
  }

  if (!candidatesCopy)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: nearbyCandidates", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_34;
    }

    v31 = @"nearbyCandidates";
    goto LABEL_33;
  }

  if (![candidatesCopy count])
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: nearbyCandidates.count > 0", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_34;
    }

    v31 = @"nearbyCandidates.count > 0";
LABEL_33:
    _RTErrorInvalidParameterCreate(v31);
    *error = v29 = 0;
    goto LABEL_43;
  }

  if (!extractedCandidate)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: extractedCandidate", buf, 2u);
    }

    if (error)
    {
      v31 = @"extractedCandidate";
      goto LABEL_33;
    }

LABEL_34:
    v29 = 0;
    goto LABEL_43;
  }

  errorCopy = error;
  [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(candidatesCopy, "count") - 1}];
  v48 = v47 = candidatesCopy;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v14 = candidatesCopy;
  v15 = [v14 countByEnumeratingWithState:&v52 objects:v62 count:16];
  aSelector = a2;
  if (!v15)
  {

    v27 = 0;
    v17 = 0;
LABEL_37:
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"isEqualCount = %lu, != 1", v17];
    v36 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277D01448];
    v60 = *MEMORY[0x277CCA450];
    v61 = v35;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    v39 = [v36 errorWithDomain:v37 code:0 userInfo:v38];

    v40 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v43 = NSStringFromSelector(aSelector);
      *buf = 138412546;
      v57 = v43;
      v58 = 2112;
      v59 = v39;
      _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    if (errorCopy)
    {
      v41 = v39;
      *errorCopy = v39;
    }

    v29 = 0;
    goto LABEL_42;
  }

  v16 = v15;
  extractedCandidateCopy = extractedCandidate;
  v17 = 0;
  obj = v14;
  v50 = 0;
  v18 = *v53;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v53 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v52 + 1) + 8 * i);
      firstObject2 = [v51 firstObject];
      identifier2 = [firstObject2 identifier];
      firstObject3 = [v20 firstObject];
      identifier3 = [firstObject3 identifier];
      v25 = [identifier2 isEqual:identifier3];

      if (v25)
      {
        v26 = v20;

        ++v17;
        v50 = v26;
      }

      else
      {
        [v48 addObject:v20];
      }
    }

    v16 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
  }

  while (v16);

  if (v17 != 1)
  {
    v27 = v50;
    goto LABEL_37;
  }

  v27 = v50;
  v28 = v50;
  *extractedCandidateCopy = v50;
  v29 = v48;
LABEL_42:
  candidatesCopy = v47;

LABEL_43:

  return v29;
}

- (id)getRelabeledInferredMapItemForCandidate:(id)candidate relabeler:(id)relabeler loiIdentifierToCoalescedSourceMap:(id)map submitMetrics:(BOOL)metrics error:(id *)error
{
  metricsCopy = metrics;
  v63 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  relabelerCopy = relabeler;
  mapCopy = map;
  v16 = mapCopy;
  if (error)
  {
    if (candidateCopy)
    {
      if (relabelerCopy)
      {
        if (mapCopy)
        {
          v49 = metricsCopy;
          firstObject = [candidateCopy firstObject];
          location = [firstObject location];
          v18Location = [location location];
          [relabelerCopy contextDistanceThreshold];
          v56 = 0;
          v51 = v16;
          v20 = [(RTLearnedLocationEngine *)self getNearbyCandidatesAroundLocation:v18Location distance:v16 loiIdentifierToCoalescedSourceMap:&v56 error:?];
          v21 = v56;

          if (v21)
          {
            v22 = v21;
            v23 = 0;
            *error = v21;
            v24 = v20;
            v16 = v51;
LABEL_36:

            goto LABEL_37;
          }

          v54 = 0;
          v55 = 0;
          v30 = [(RTLearnedLocationEngine *)self extractCandidate:candidateCopy fromNearbyCandidates:v20 extractedCandidate:&v55 error:&v54];
          v48 = v55;
          v31 = v54;
          v32 = v31;
          v24 = v20;
          if (v31)
          {
            v33 = v31;
            v23 = 0;
            *error = v32;
            v16 = v51;
LABEL_35:

            goto LABEL_36;
          }

          v16 = v51;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v34 = v30;
            v35 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              v44 = NSStringFromSelector(a2);
              v45 = [v34 count];
              *buf = 138412802;
              v58 = v44;
              v59 = 2048;
              v60 = v45;
              v61 = 2112;
              v62 = 0;
              _os_log_debug_impl(&dword_2304B3000, v35, OS_LOG_TYPE_DEBUG, "%@, filteredNearbyCandidates count, %lu, filterError, %@", buf, 0x20u);

              v21 = 0;
            }

            v30 = v34;
          }

          v36 = [[RTRelabelerMetrics alloc] initWithRelabeler:relabelerCopy];
          v53 = 0;
          v47 = v30;
          v46 = [relabelerCopy relabelCandidate:v48 usingContextCandidates:v30 metrics:v36 outPriorVector:0 outObservationVector:0 outPosteriorVector:0 error:&v53];
          v37 = v53;
          [(RTRelabelerMetrics *)v36 setErrorMetrics:v37];
          if (v49)
          {
            v50 = v21;
            v52 = 0;
            v38 = [(RTRelabelerMetrics *)v36 submitMetricsWithError:&v52];
            v39 = v52;
            if (!v38)
            {
              v42 = v39;
              *error = v42;

              v23 = 0;
              v21 = v50;
              goto LABEL_33;
            }

            v21 = v50;
          }

          if (!v37)
          {
            v41 = v46;
            v23 = v46;
LABEL_34:

            v30 = v47;
            goto LABEL_35;
          }

          v40 = v37;
          v23 = 0;
          *error = v37;
LABEL_33:
          v41 = v46;
          goto LABEL_34;
        }

        v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: loiIdentifierToCoalescedSourceMap", buf, 2u);
        }

        v27 = @"loiIdentifierToCoalescedSourceMap";
      }

      else
      {
        v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: relabeler", buf, 2u);
        }

        v27 = @"relabeler";
      }
    }

    else
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: candidate", buf, 2u);
      }

      v27 = @"candidate";
    }

    _RTErrorInvalidParameterCreate(v27);
    *error = v23 = 0;
    goto LABEL_37;
  }

  v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v23 = 0;
LABEL_37:

  return v23;
}

- (id)createRelabeler
{
  v3 = [[RTRelabelerParameters alloc] initWithDefaultsManager:self->_defaultsManager];
  v4 = [[RTRelabeler alloc] initWithDistanceCalculator:self->_distanceCalculator parameters:v3];

  return v4;
}

- (id)createRelabelerPersisterWithError:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  if (error)
  {
    v5 = [[RTMapItemProviderLearnedPlaceParameters alloc] initWithDefaultsManager:self->_defaultsManager];
    v6 = [[RTRelabelerParameters alloc] initWithDefaultsManager:self->_defaultsManager];
    [(RTLearnedLocationEngine *)self _enabledMapItemProviders];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v28 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v25 objects:v32 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v13 = v12;

      if (!v13)
      {
        goto LABEL_13;
      }

      v14 = [[RTRelabelerPersisterMetrics alloc] initWithLoggingEnabled:0];
      v15 = [RTRelabelerPersister alloc];
      defaultsManager = self->_defaultsManager;
      distanceCalculator = self->_distanceCalculator;
      persistenceManager = [(RTStore *)self->_learnedLocationStore persistenceManager];
      v19 = [(RTRelabelerPersister *)v15 initWithDefaultsManager:defaultsManager distanceCalculator:distanceCalculator learnedPlaceParameters:v5 metrics:v14 persistenceManager:persistenceManager relabelerParameters:v6 reverseGeocodeProvider:v13];
    }

    else
    {
LABEL_10:

LABEL_13:
      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277D01448];
      v30 = *MEMORY[0x277CCA450];
      v31 = @"reverse geocode provider was nil";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v13 = [v20 errorWithDomain:v21 code:0 userInfo:v22];

      v23 = v13;
      v19 = 0;
      *error = v13;
    }
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &v5->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v19 = 0;
  }

  return v19;
}

- (BOOL)_relabelWithError:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412290;
      v27 = v7;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, started", buf, 0xCu);
    }
  }

  date = [MEMORY[0x277CBEAA8] date];
  createRelabeler = [(RTLearnedLocationEngine *)self createRelabeler];
  v25 = 0;
  v10 = [(RTLearnedLocationEngine *)self createRelabelerPersisterWithError:&v25];
  v11 = v25;
  v12 = v11;
  if (v11)
  {
    if (error)
    {
      v13 = v11;
      LOBYTE(v14) = 0;
      *error = v12;
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    v24 = 0;
    v14 = [(RTLearnedLocationEngine *)self _relabelWithRelabeler:createRelabeler relabelerPersister:v10 error:&v24];
    v15 = v24;
    v16 = v15;
    if (error)
    {
      v17 = v15;
      *error = v16;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = NSStringFromSelector(a2);
        if (v14)
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        date2 = [MEMORY[0x277CBEAA8] date];
        [date2 timeIntervalSinceDate:date];
        *buf = 138413058;
        v27 = v19;
        v28 = 2112;
        v29 = v20;
        v30 = 2112;
        v31 = v16;
        v32 = 2048;
        v33 = v22;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, finished, success, %@, error, %@, latency, %.2f", buf, 0x2Au);
      }
    }
  }

  return v14;
}

- (BOOL)_relabelWithRelabeler:(id)relabeler relabelerPersister:(id)persister error:(id *)error
{
  v121[1] = *MEMORY[0x277D85DE8];
  relabelerCopy = relabeler;
  persisterCopy = persister;
  if (error)
  {
    aSelector = a2;
    date = [MEMORY[0x277CBEAA8] date];
    *v108 = 0;
    v109 = v108;
    v110 = 0x3032000000;
    v111 = __Block_byref_object_copy__41;
    v112 = __Block_byref_object_dispose__41;
    v113 = 0;
    if (relabelerCopy)
    {
      if (persisterCopy)
      {
        [persisterCopy logLocalStoreWithReason:@"before resnapping visits"];
        v11 = v109;
        v107 = *(v109 + 5);
        [persisterCopy resnapVisitsWithError:&v107];
        objc_storeStrong(v11 + 5, v107);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = NSStringFromSelector(aSelector);
            v14 = *(v109 + 5);
            *buf = 138412546;
            v117 = v13;
            v118 = 2112;
            v119 = v14;
            _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, resnapped with error, %@", buf, 0x16u);
          }
        }

        if (*(v109 + 5))
        {
          goto LABEL_63;
        }

        [persisterCopy logLocalStoreWithReason:@"before relabeling"];
        v84 = [[RTStoredLocationOfInterestEnumerationOptions alloc] initWithAscendingVisitEntryDate:1 batchSize:1 dateInterval:0 singleVisit:1];
        array = [MEMORY[0x277CBEB18] array];
        v16 = [MEMORY[0x277CBEB58] set];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v17 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = NSStringFromSelector(aSelector);
            *buf = 138412290;
            v117 = v18;
            _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, creating delete operations", buf, 0xCu);
          }
        }

        [relabelerCopy enableLogging:0];
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        learnedLocationStore = self->_learnedLocationStore;
        v100[0] = MEMORY[0x277D85DD0];
        v100[1] = 3221225472;
        v100[2] = __74__RTLearnedLocationEngine__relabelWithRelabeler_relabelerPersister_error___block_invoke;
        v100[3] = &unk_2788C89F8;
        v21 = persisterCopy;
        v101 = v21;
        selfCopy = self;
        v83 = relabelerCopy;
        v103 = v83;
        v22 = dictionary;
        v104 = v22;
        v82 = array;
        v105 = v82;
        v81 = v16;
        v106 = v81;
        [(RTLearnedLocationStore *)learnedLocationStore enumerateStoredLocationsOfInterestWithOptions:v84 enumerationBlock:v100];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v23 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = NSStringFromSelector(aSelector);
            *buf = 138412546;
            v117 = v24;
            v118 = 2112;
            v119 = v82;
            _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@, created all delete operations, allErrors, %@", buf, 0x16u);
          }
        }

        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
        metrics = [v21 metrics];
        v26Metrics = [metrics metrics];
        [v26Metrics setObject:v25 forKeyedSubscript:@"numberOfStartingLOIs"];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v28 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = NSStringFromSelector(aSelector);
            *buf = 138412290;
            v117 = v29;
            _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@, creating add operations", buf, 0xCu);
          }
        }

        [v83 enableLogging:0];
        v30 = self->_learnedLocationStore;
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __74__RTLearnedLocationEngine__relabelWithRelabeler_relabelerPersister_error___block_invoke_747;
        v93[3] = &unk_2788C8A20;
        v99 = v108;
        v31 = v81;
        v94 = v31;
        v32 = v21;
        v95 = v32;
        selfCopy2 = self;
        v97 = v83;
        v33 = v22;
        v98 = v33;
        [(RTLearnedLocationStore *)v30 enumerateStoredLocationsOfInterestWithOptions:v84 enumerationBlock:v93];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v34 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = NSStringFromSelector(aSelector);
            *buf = 138412546;
            v117 = v35;
            v118 = 2112;
            v119 = v82;
            _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%@, created all add operations, allErrors, %@", buf, 0x16u);
          }
        }

        if (!*(v109 + 5))
        {
          [v32 logLocalStoreWithReason:@"before collapsing"];
          v36 = v109;
          obj = *(v109 + 5);
          [v32 iterativelyCollapseOverlappingRevGeoLOIsWithError:&obj];
          objc_storeStrong(v36 + 5, obj);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v37 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = NSStringFromSelector(aSelector);
              v39 = *(v109 + 5);
              *buf = 138412546;
              v117 = v38;
              v118 = 2112;
              v119 = v39;
              _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "%@, cleaned with error, %@", buf, 0x16u);
            }
          }

          v40 = (v109 + 40);
          if (!*(v109 + 5))
          {
            v91 = 0;
            [v32 dedupeLOIsWithError:&v91];
            objc_storeStrong(v40, v91);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v41 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                v42 = NSStringFromSelector(aSelector);
                v43 = *(v109 + 5);
                *buf = 138412546;
                v117 = v42;
                v118 = 2112;
                v119 = v43;
                _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "%@, deduped with error, %@", buf, 0x16u);
              }
            }

            if (!*(v109 + 5))
            {
              [v32 logLocalStoreWithReason:@"before combining sequential"];
              v44 = v109;
              v90 = *(v109 + 5);
              [v32 combineSequentialVisitsWithError:&v90];
              objc_storeStrong(v44 + 5, v90);
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v45 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                {
                  v46 = NSStringFromSelector(aSelector);
                  v47 = *(v109 + 5);
                  *buf = 138412546;
                  v117 = v46;
                  v118 = 2112;
                  v119 = v47;
                  _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_INFO, "%@, combined sequential visits with error, %@", buf, 0x16u);
                }
              }

              v48 = (v109 + 40);
              if (!*(v109 + 5))
              {
                v89 = 0;
                [v32 fixUnconcreteLOIs:&v89];
                objc_storeStrong(v48, v89);
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v49 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                  {
                    v50 = NSStringFromSelector(aSelector);
                    v51 = *(v109 + 5);
                    *buf = 138412546;
                    v117 = v50;
                    v118 = 2112;
                    v119 = v51;
                    _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "%@, fixed unconcrete LOIs with error, %@", buf, 0x16u);
                  }
                }

                v52 = (v109 + 40);
                if (!*(v109 + 5))
                {
                  v88 = 0;
                  [v32 saveWithError:&v88];
                  objc_storeStrong(v52, v88);
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    v53 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                    {
                      v54 = NSStringFromSelector(aSelector);
                      v55 = *(v109 + 5);
                      *buf = 138412546;
                      v117 = v54;
                      v118 = 2112;
                      v119 = v55;
                      _os_log_impl(&dword_2304B3000, v53, OS_LOG_TYPE_INFO, "%@, saved with error, %@", buf, 0x16u);
                    }
                  }

                  if (!*(v109 + 5))
                  {
                    [(RTLearnedLocationEngine *)self _logLocalStoreWithReason:@"after saving"];
                  }
                }
              }
            }
          }
        }

        metrics2 = v84;
      }

      else
      {
        v63 = MEMORY[0x277CCA9B8];
        v114 = *MEMORY[0x277CCA450];
        v115 = @"relabelerPersister was nil";
        v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
        v65 = [v63 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v64];
        v66 = *(v109 + 5);
        *(v109 + 5) = v65;

        v67 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          v79 = NSStringFromSelector(aSelector);
          v80 = *(v109 + 5);
          *buf = 138412546;
          v117 = v79;
          v118 = 2112;
          v119 = v80;
          _os_log_error_impl(&dword_2304B3000, v67, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
        }

        metrics2 = [0 metrics];
        [metrics2 setErrorKey:@"persisterWasNil"];
      }
    }

    else
    {
      v58 = MEMORY[0x277CCA9B8];
      v120 = *MEMORY[0x277CCA450];
      v121[0] = @"relabeler was nil";
      v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:&v120 count:1];
      v60 = [v58 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v59];
      v61 = *(v109 + 5);
      *(v109 + 5) = v60;

      v62 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v77 = NSStringFromSelector(aSelector);
        v78 = *(v109 + 5);
        *buf = 138412546;
        v117 = v77;
        v118 = 2112;
        v119 = v78;
        _os_log_error_impl(&dword_2304B3000, v62, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      metrics2 = [persisterCopy metrics];
      [metrics2 setErrorKey:@"relabelerWasNil"];
    }

LABEL_63:
    date2 = [MEMORY[0x277CBEAA8] date];
    v69 = MEMORY[0x277CCABB0];
    [date2 timeIntervalSinceDate:date];
    v70 = [v69 numberWithDouble:?];
    metrics3 = [persisterCopy metrics];
    v71Metrics = [metrics3 metrics];
    [v71Metrics setObject:v70 forKeyedSubscript:@"runTime"];

    metrics4 = [persisterCopy metrics];
    v87 = 0;
    LOBYTE(v71Metrics) = [metrics4 submitMetricsWithError:&v87];
    v74 = v87;

    v75 = v74;
    if ((v71Metrics & 1) != 0 && (v75 = *(v109 + 5)) == 0)
    {
      v57 = 1;
    }

    else
    {
      v57 = 0;
      *error = v75;
    }

    _Block_object_dispose(v108, 8);
    goto LABEL_67;
  }

  date = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
  {
    *v108 = 0;
    _os_log_error_impl(&dword_2304B3000, date, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", v108, 2u);
  }

  v57 = 0;
LABEL_67:

  return v57;
}

void __74__RTLearnedLocationEngine__relabelWithRelabeler_relabelerPersister_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 firstObject];
  v7 = [v5 firstObject];

  v8 = [v7 visits];
  v9 = [v8 firstObject];

  v10 = [v9 identifier];

  if (!a3 && v10)
  {
    v11 = [*(a1 + 32) metrics];
    [v11 tallyKey:@"numberOfStartingVisits"];

    v12 = objc_alloc(MEMORY[0x277D011C0]);
    v13 = [v6 place];
    v14 = [v13 mapItem];
    v15 = [v12 initWithFirstObject:v9 secondObject:v14];

    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v27 = 0;
    v19 = [v16 getRelabeledInferredMapItemForCandidate:v15 relabeler:v17 loiIdentifierToCoalescedSourceMap:v18 submitMetrics:1 error:&v27];
    v20 = v27;
    if (v20)
    {
      [*(a1 + 64) addObject:v20];
      v21 = *(a1 + 72);
      v22 = [v9 identifier];
      [v21 addObject:v22];
    }

    else
    {
      v23 = *(a1 + 32);
      v26 = 0;
      [v23 useRelabeledInferredMapItem:v19 oldCandidate:v15 associate:0 error:&v26];
      v22 = v26;
      if (v22)
      {
        [*(a1 + 64) addObject:v22];
        v24 = *(a1 + 72);
        v25 = [v9 identifier];
        [v24 addObject:v25];
      }
    }
  }
}

void __74__RTLearnedLocationEngine__relabelWithRelabeler_relabelerPersister_error___block_invoke_747(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (*(*(a1[9] + 8) + 40))
  {
    *a4 = 1;
  }

  else
  {
    v39[9] = v4;
    v39[10] = v5;
    v8 = a2;
    v9 = [v8 firstObject];
    v10 = [v8 firstObject];

    v11 = [v10 visits];
    v12 = [v11 firstObject];

    v13 = [v12 identifier];

    if (!a3 && v13)
    {
      v14 = objc_alloc(MEMORY[0x277D011C0]);
      v15 = [v9 place];
      v16 = [v15 mapItem];
      v17 = [v14 initWithFirstObject:v12 secondObject:v16];

      v18 = a1[4];
      v19 = [v12 identifier];
      v20 = [v18 member:v19];

      if (v20)
      {
        v21 = a1[5];
        v22 = *(a1[9] + 8);
        v39[0] = *(v22 + 40);
        [v21 restoreToOldCandidate:v17 error:v39];
        v23 = v39[0];
        v24 = *(v22 + 40);
        *(v22 + 40) = v23;
      }

      else
      {
        v25 = a1[6];
        v26 = a1[7];
        v27 = a1[8];
        v38 = 0;
        v28 = [v25 getRelabeledInferredMapItemForCandidate:v17 relabeler:v26 loiIdentifierToCoalescedSourceMap:v27 submitMetrics:0 error:&v38];
        v24 = v38;
        v29 = a1[5];
        if (v24)
        {
          v30 = *(a1[9] + 8);
          v37 = *(v30 + 40);
          [v29 restoreToOldCandidate:v17 error:&v37];
          v31 = v37;
          v32 = *(v30 + 40);
          *(v30 + 40) = v31;
        }

        else
        {
          v36 = 0;
          [v29 useRelabeledInferredMapItem:v28 oldCandidate:v17 associate:1 error:&v36];
          v32 = v36;
          if (v32)
          {
            v33 = a1[5];
            v34 = *(a1[9] + 8);
            obj = *(v34 + 40);
            [v33 restoreToOldCandidate:v17 error:&obj];
            objc_storeStrong((v34 + 40), obj);
          }
        }
      }
    }
  }
}

- (void)relabelWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTLearnedLocationEngine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__RTLearnedLocationEngine_relabelWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __46__RTLearnedLocationEngine_relabelWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  [v2 _relabelWithError:&v5];
  v3 = v5;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)willBeginTraining
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "Learned location engine will begin training.", v5, 2u);
      }
    }

    [WeakRetained learnedLocationEngineWillBeginTraining:self];
  }
}

- (void)didFinishTraining
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained learnedLocationEngineDidFinishTraining:self];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "Learned location engine did finish training.", v5, 2u);
      }
    }
  }
}

- (void)didUpdateWithIntervalSinceLastUpdate:(double)update trainMode:(unint64_t)mode trainResult:(unint64_t)result
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained learnedLocationEngineDidUpdate:self intervalSinceLastUpdate:mode trainMode:result trainResult:update];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 134217984;
        updateCopy = update;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "Learned location engine did update, intervalSinceLastUpdate, %.2f", &v11, 0xCu);
      }
    }
  }
}

- (void)didClear
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained learnedLocationEngineDidClear:self];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "Learned location engine did clear", v5, 2u);
      }
    }
  }
}

- (BOOL)_purgeWithReferenceDate:(id)date error:(id *)error
{
  v97 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB18];
  dateCopy = date;
  v8 = [[v6 alloc] initWithCapacity:3];
  v9 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __57__RTLearnedLocationEngine__purgeWithReferenceDate_error___block_invoke;
  v91[3] = &unk_2788C8A48;
  v11 = v8;
  v92 = v11;
  v94 = a2;
  v12 = v9;
  v93 = v12;
  [learnedLocationStore removeRecordsExpiredBeforeDate:dateCopy handler:v91];

  v13 = v12;
  v14 = 0x277CBE000uLL;
  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = dispatch_time(0, 3600000000000);
  selfCopy = self;
  v81 = a2;
  if (dispatch_semaphore_wait(v13, v16))
  {
    v17 = [MEMORY[0x277CBEAA8] now];
    [v17 timeIntervalSinceDate:v15];
    v19 = v18;
    v20 = objc_opt_new();
    v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v23 = [callStackSymbols filteredArrayUsingPredicate:v21];
    firstObject = [v23 firstObject];

    [v20 submitToCoreAnalytics:firstObject type:1 duration:v19];
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277D01448];
    v95 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v95 count:1];
    v29 = [v26 errorWithDomain:v27 code:15 userInfo:v28];

    if (v29)
    {
      v30 = v29;
    }

    self = selfCopy;
    a2 = v81;
    v14 = 0x277CBE000;
  }

  else
  {
    v29 = 0;
  }

  v31 = v29;
  learnedLocationStore2 = [(RTLearnedLocationEngine *)self learnedLocationStore];
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __57__RTLearnedLocationEngine__purgeWithReferenceDate_error___block_invoke_765;
  v87[3] = &unk_2788C8A48;
  v78 = v11;
  v88 = v78;
  v90 = a2;
  v33 = v13;
  v89 = v33;
  [learnedLocationStore2 removeUnreferencedPlacesWithHandler:v87];

  v34 = v33;
  v35 = [*(v14 + 2728) now];
  v36 = dispatch_time(0, 3600000000000);
  v37 = v31;
  if (dispatch_semaphore_wait(v34, v36))
  {
    v38 = [*(v14 + 2728) now];
    [v38 timeIntervalSinceDate:v35];
    v40 = v39;
    v41 = objc_opt_new();
    v42 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
    v44 = [callStackSymbols2 filteredArrayUsingPredicate:v42];
    firstObject2 = [v44 firstObject];

    [v41 submitToCoreAnalytics:firstObject2 type:1 duration:v40];
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v46, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v47 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277D01448];
    v95 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v95 count:1];
    v50 = [v47 errorWithDomain:v48 code:15 userInfo:v49];

    v37 = v31;
    self = selfCopy;
    a2 = v81;
    v14 = 0x277CBE000uLL;
    if (v50)
    {
      v51 = v50;

      v37 = v50;
    }
  }

  v52 = v37;
  learnedLocationStore3 = [(RTLearnedLocationEngine *)self learnedLocationStore];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __57__RTLearnedLocationEngine__purgeWithReferenceDate_error___block_invoke_766;
  v83[3] = &unk_2788C8A48;
  v54 = v78;
  v84 = v54;
  v86 = a2;
  v55 = v34;
  v85 = v55;
  [learnedLocationStore3 removeUnreferencedMapItems:v83];

  v56 = v55;
  v57 = [*(v14 + 2728) now];
  v58 = dispatch_time(0, 3600000000000);
  v59 = v52;
  if (dispatch_semaphore_wait(v56, v58))
  {
    v82 = [*(v14 + 2728) now];
    [v82 timeIntervalSinceDate:v57];
    v61 = v60;
    v62 = objc_opt_new();
    v63 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols3 = [MEMORY[0x277CCACC8] callStackSymbols];
    v65 = [callStackSymbols3 filteredArrayUsingPredicate:v63];
    firstObject3 = [v65 firstObject];

    [v62 submitToCoreAnalytics:firstObject3 type:1 duration:v61];
    v67 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v67, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v68 = MEMORY[0x277CCA9B8];
    v69 = *MEMORY[0x277D01448];
    v95 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v95 count:1];
    v71 = [v68 errorWithDomain:v69 code:15 userInfo:v70];

    v59 = v52;
    if (v71)
    {
      v72 = v71;

      v59 = v71;
    }
  }

  v73 = v59;
  v74 = _RTSafeArray();
  v75 = _RTMultiErrorCreate();

  if (error)
  {
    v76 = v75;
    *error = v75;
  }

  return v75 == 0;
}

void __57__RTLearnedLocationEngine__purgeWithReferenceDate_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = NSStringFromSelector(*(a1 + 48));
        v6 = 138412546;
        v7 = v5;
        v8 = 2112;
        v9 = v3;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, failed to remove expired records, error, %@", &v6, 0x16u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __57__RTLearnedLocationEngine__purgeWithReferenceDate_error___block_invoke_765(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = NSStringFromSelector(*(a1 + 48));
        v6 = 138412546;
        v7 = v5;
        v8 = 2112;
        v9 = v3;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, failed to remove unreferenced places, error, %@", &v6, 0x16u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __57__RTLearnedLocationEngine__purgeWithReferenceDate_error___block_invoke_766(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = NSStringFromSelector(*(a1 + 48));
        v6 = 138412546;
        v7 = v5;
        v8 = 2112;
        v9 = v3;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, failed to remove unreferenced map items, error, %@", &v6, 0x16u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_classifyPlaceTypes:(id *)types
{
  v62[1] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412290;
      v52 = v7;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, started", buf, 0xCu);
    }
  }

  date = [MEMORY[0x277CBEAA8] date];
  if ([(RTLearnedLocationEngine *)self _deferTrainingDueToAvailability])
  {
    v61 = *MEMORY[0x277CCA450];
    v9 = MEMORY[0x277CCACA8];
    v10 = NSStringFromSelector(a2);
    v11 = [v9 stringWithFormat:@"Deferring %@ due to availability of the learned location store.", v10];
    v62[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:5 userInfo:v12];
    v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 138412290;
    v52 = v13;
    goto LABEL_12;
  }

  defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
  v16 = [defaultsManager objectForKey:@"ShouldSkipPlaceTypeClassification"];
  if (v16)
  {
    v17 = v16;
    defaultsManager2 = [(RTLearnedLocationEngine *)self defaultsManager];
    v19 = [defaultsManager2 objectForKey:@"ShouldSkipPlaceTypeClassification"];
    bOOLValue = [v19 BOOLValue];

    if (bOOLValue)
    {
      v59 = *MEMORY[0x277CCA450];
      v21 = MEMORY[0x277CCACA8];
      v22 = NSStringFromSelector(a2);
      v23 = [v21 stringWithFormat:@"test only!!! skip %@", v22];
      v60 = v23;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];

      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v12];
      v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 138412290;
      v52 = v13;
LABEL_12:
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
LABEL_13:

      if (types)
      {
        v24 = v13;
        LOBYTE(v25) = 0;
        *types = v13;
      }

      else
      {
        LOBYTE(v25) = 0;
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  v49 = date;
  placeTypeClassifierMetricsCalculator = [(RTLearnedLocationEngine *)self placeTypeClassifierMetricsCalculator];
  [placeTypeClassifierMetricsCalculator resetStates];

  v47 = [RTPlaceTypeClassifier alloc];
  biomeManager = [(RTLearnedLocationEngine *)self biomeManager];
  contactsManager = [(RTLearnedLocationEngine *)self contactsManager];
  defaultsManager3 = [(RTLearnedLocationEngine *)self defaultsManager];
  [(RTLearnedLocationEngine *)self distanceCalculator];
  v28 = v48 = types;
  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  locationManager = [(RTLearnedLocationEngine *)self locationManager];
  mapServiceManager = [(RTLearnedLocationEngine *)self mapServiceManager];
  mapsSupportManager = [(RTLearnedLocationEngine *)self mapsSupportManager];
  placeTypeClassifierMetricsCalculator2 = [(RTLearnedLocationEngine *)self placeTypeClassifierMetricsCalculator];
  platform = [(RTLearnedLocationEngine *)self platform];
  queue = [(RTLearnedLocationEngine *)self queue];
  visitManager = [(RTLearnedLocationEngine *)self visitManager];
  v12 = [(RTPlaceTypeClassifier *)v47 initWithBiomeManager:biomeManager contactsManager:contactsManager defaultsManager:defaultsManager3 distanceCalculator:v28 learnedLocationStore:learnedLocationStore locationManager:locationManager mapServiceManager:mapServiceManager mapsSupportManager:mapsSupportManager placeTypeClassifierMetricsCalculator:placeTypeClassifierMetricsCalculator2 platform:platform queue:queue visitManager:visitManager];

  v50 = 0;
  v25 = [(RTPlaceTypeClassifier *)v12 classifyWithError:&v50];
  v34 = v50;
  v13 = v34;
  if (v48)
  {
    v35 = v34;
    *v48 = v13;
  }

  date = v49;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = NSStringFromSelector(a2);
      if (v25)
      {
        v38 = @"YES";
      }

      else
      {
        v38 = @"NO";
      }

      date2 = [MEMORY[0x277CBEAA8] date];
      [date2 timeIntervalSinceDate:v49];
      *buf = 138413058;
      v52 = v37;
      v53 = 2112;
      v54 = v38;
      v55 = 2112;
      v56 = v13;
      v57 = 2048;
      v58 = v40;
      _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "%@, finished, success, %@, error, %@, latency, %.2f", buf, 0x2Au);
    }
  }

LABEL_26:

  return v25;
}

- (void)_classifyPlaceTypesWithHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v11 = 0;
  v6 = [(RTLearnedLocationEngine *)self _classifyPlaceTypes:&v11];
  v7 = v11;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      v10 = @"NO";
      *buf = 138412802;
      v13 = v9;
      v14 = 2112;
      if (v6)
      {
        v10 = @"YES";
      }

      v15 = v10;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, place type classification success, %@, error, %@", buf, 0x20u);
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v7);
  }
}

- (void)classifyPlaceTypesWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTLearnedLocationEngine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__RTLearnedLocationEngine_classifyPlaceTypesWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (BOOL)_consolidateKnownPlaceTypesWithError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  if (error)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = NSStringFromSelector(a2);
        v17 = 138412290;
        v18 = v7;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, started", &v17, 0xCu);
      }
    }

    date = [MEMORY[0x277CBEAA8] date];
    v9 = [(RTLearnedLocationEngine *)self createRelabelerPersisterWithError:error];
    v10 = v9;
    if (!*error && [v9 consolidateVisitsToLoisWithKnownPlaceTypesWithError:error] && objc_msgSend(v10, "combineSequentialVisitsWithError:", error) && objc_msgSend(v10, "cleanUpWithError:", error) && objc_msgSend(v10, "saveWithError:", error))
    {
      v11 = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = NSStringFromSelector(a2);
          date2 = [MEMORY[0x277CBEAA8] date];
          [date2 timeIntervalSinceDate:date];
          v17 = 138413058;
          v18 = v13;
          v19 = 2112;
          v20 = @"YES";
          v21 = 2112;
          v22 = 0;
          v23 = 2048;
          v24 = v15;
          _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, finished, success, %@, error, %@, latency, %.2f", &v17, 0x2Au);
        }

        v11 = 1;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    date = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_error_impl(&dword_2304B3000, date, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", &v17, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)_saveIdentifiersOfKnownPlaceTypesWithError:(id *)error
{
  v67 = *MEMORY[0x277D85DE8];
  if (error)
  {
    oslog = objc_opt_new();
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v45 = [&unk_2845A0BD8 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (!v45)
    {
      goto LABEL_23;
    }

    v43 = *v61;
    v40 = *MEMORY[0x277D01448];
    v41 = *MEMORY[0x277CCA450];
    while (1)
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v61 != v43)
        {
          objc_enumerationMutation(&unk_2845A0BD8);
        }

        v4 = *(*(&v60 + 1) + 8 * i);
        *v54 = 0;
        v55 = v54;
        v56 = 0x3032000000;
        v57 = __Block_byref_object_copy__41;
        v58 = __Block_byref_object_dispose__41;
        v59 = 0;
        v5 = objc_opt_new();
        v6 = dispatch_semaphore_create(0);
        learnedLocationStore = self->_learnedLocationStore;
        v47 = v4;
        unsignedIntegerValue = [v4 unsignedIntegerValue];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __70__RTLearnedLocationEngine__saveIdentifiersOfKnownPlaceTypesWithError___block_invoke;
        v49[3] = &unk_2788C8A70;
        v49[4] = self;
        v49[5] = v4;
        v52 = v54;
        v53 = a2;
        v9 = v5;
        v50 = v9;
        v10 = v6;
        v51 = v10;
        [(RTLearnedLocationStore *)learnedLocationStore fetchLocationsOfInterestWithPlaceType:unsignedIntegerValue handler:v49];
        v11 = v10;
        v12 = [MEMORY[0x277CBEAA8] now];
        v13 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v11, v13))
        {
          v14 = [MEMORY[0x277CBEAA8] now];
          [v14 timeIntervalSinceDate:v12];
          v16 = v15;
          v17 = objc_opt_new();
          v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v20 = [callStackSymbols filteredArrayUsingPredicate:v18];
          firstObject = [v20 firstObject];

          [v17 submitToCoreAnalytics:firstObject type:1 duration:v16];
          v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v23 = MEMORY[0x277CCA9B8];
          v65 = v41;
          *buf = @"semaphore wait timeout";
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v65 count:1];
          v25 = [v23 errorWithDomain:v40 code:15 userInfo:v24];

          if (v25)
          {
            v26 = v25;

            v27 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          v25 = 0;
        }

        v27 = 1;
LABEL_14:

        v28 = v25;
        if ((v27 & 1) == 0)
        {
          objc_storeStrong(v55 + 5, v25);
        }

        v29 = *(v55 + 5);
        if (v29)
        {
          v30 = v29;
          *error = v29;
        }

        else if ([v9 count])
        {
          [oslog setObject:v9 forKey:v47];
        }

        _Block_object_dispose(v54, 8);
        if (v29)
        {
          goto LABEL_28;
        }
      }

      v45 = [&unk_2845A0BD8 countByEnumeratingWithState:&v60 objects:v64 count:16];
      if (!v45)
      {
LABEL_23:
        v48 = 0;
        v31 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:oslog requiringSecureCoding:1 error:&v48];
        v32 = v48;
        v33 = v32 == 0;
        if (!v32)
        {
          defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
          [defaultsManager setObject:v31 forKey:@"KnownPlaceIdentifiers"];

          defaultsManager2 = [(RTLearnedLocationEngine *)self defaultsManager];
          v36 = [MEMORY[0x277CBEAA8] now];
          [defaultsManager2 setObject:v36 forKey:@"KnownPlaceIdentifiersLastUpdateDate"];
        }

        v37 = v32;
        *error = v32;

        goto LABEL_29;
      }
    }
  }

  oslog = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    *v54 = 0;
    _os_log_error_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", v54, 2u);
  }

LABEL_28:
  v33 = 0;
LABEL_29:

  return v33;
}

void __70__RTLearnedLocationEngine__saveIdentifiersOfKnownPlaceTypesWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 72));
      v11 = [v5 count];
      v12 = [*(a1 + 40) unsignedIntegerValue];
      *buf = 138413314;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      v24 = 2048;
      v25 = v11;
      v26 = 2048;
      v27 = v12;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, fetched location of interest count, %lu, placeType, %lu, error, %@", buf, 0x34u);
    }
  }

  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
  v15 = v6;

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__RTLearnedLocationEngine__saveIdentifiersOfKnownPlaceTypesWithError___block_invoke_786;
  v17[3] = &unk_2788C6E50;
  v16 = *(a1 + 72);
  v17[4] = *(a1 + 32);
  v19 = v16;
  v18 = *(a1 + 48);
  [v5 enumerateObjectsUsingBlock:v17];
  dispatch_semaphore_signal(*(a1 + 56));
}

void __70__RTLearnedLocationEngine__saveIdentifiersOfKnownPlaceTypesWithError___block_invoke_786(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 48));
      v12 = [v5 identifier];
      v13 = 138413058;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2048;
      v18 = a3;
      v19 = 2112;
      v20 = v12;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@, %@, idx, %lu, location of interest identifier, %@", &v13, 0x2Au);
    }
  }

  v7 = *(a1 + 40);
  v8 = [v5 identifier];
  [v7 addObject:v8];
}

- (BOOL)_refreshMapItemsForLocationsOfInterestWithError:(id *)error
{
  v252 = *MEMORY[0x277D85DE8];
  if (error)
  {
    if (_os_feature_enabled_impl())
    {
      errorCopy = error;
      v151 = [MEMORY[0x277CBEAA8] now];
      v153 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
      defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
      v5 = [defaultsManager objectForKey:@"MapItemRefreshTestMode"];
      if (v5)
      {
        defaultsManager2 = [(RTLearnedLocationEngine *)self defaultsManager];
        v7 = [defaultsManager2 objectForKey:@"MapItemRefreshTestMode"];
        bOOLValue = [v7 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      *v223 = 0;
      v224 = v223;
      v225 = 0x3032000000;
      v226 = __Block_byref_object_copy__41;
      v227 = __Block_byref_object_dispose__41;
      v228 = 0;
      v217 = 0;
      v218 = &v217;
      v219 = 0x3032000000;
      v220 = __Block_byref_object_copy__41;
      v221 = __Block_byref_object_dispose__41;
      v222 = 0;
      v11 = dispatch_semaphore_create(0);
      v174 = bOOLValue;
      if (bOOLValue)
      {
        distantPast = [MEMORY[0x277CBEAA8] distantPast];
      }

      else
      {
        distantPast = v153;
      }

      v13 = distantPast;
      learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
      v210[0] = MEMORY[0x277D85DD0];
      v210[1] = 3221225472;
      v210[2] = __75__RTLearnedLocationEngine__refreshMapItemsForLocationsOfInterestWithError___block_invoke;
      v210[3] = &unk_2788C8A98;
      v215 = a2;
      v216 = bOOLValue;
      v211 = v13;
      v213 = &v217;
      v214 = v223;
      v15 = v11;
      v212 = v15;
      v149 = v211;
      [learnedLocationStore fetchLocationsOfInterestVisitedBetweenStartDate:v211 endDate:v151 handler:v210];

      dsema = v15;
      v16 = [MEMORY[0x277CBEAA8] now];
      v17 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(dsema, v17))
      {
        v18 = [MEMORY[0x277CBEAA8] now];
        [v18 timeIntervalSinceDate:v16];
        v20 = v19;
        v21 = objc_opt_new();
        v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v24 = [callStackSymbols filteredArrayUsingPredicate:v22];
        firstObject = [v24 firstObject];

        [v21 submitToCoreAnalytics:firstObject type:1 duration:v20];
        v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *v244 = 0;
          _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v244, 2u);
        }

        v27 = MEMORY[0x277CCA9B8];
        *buf = *MEMORY[0x277CCA450];
        *v244 = @"semaphore wait timeout";
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v244 forKeys:buf count:1];
        v29 = [v27 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v28];

        if (v29)
        {
          v30 = v29;

          v31 = 0;
LABEL_20:

          v32 = v29;
          if ((v31 & 1) == 0)
          {
            objc_storeStrong(v218 + 5, v29);
          }

          v33 = v218[5];
          if (v33)
          {
            v10 = 0;
            *errorCopy = v33;
LABEL_102:

            _Block_object_dispose(&v217, 8);
            _Block_object_dispose(v223, 8);

            return v10;
          }

          v155 = objc_opt_new();
          v162 = v32;
          learnedLocationStore2 = [(RTLearnedLocationEngine *)self learnedLocationStore];
          predicateForObjectsFromCurrentDevice = [learnedLocationStore2 predicateForObjectsFromCurrentDevice];

          *v244 = 0;
          v245 = v244;
          v246 = 0x3032000000;
          v247 = __Block_byref_object_copy__41;
          v248 = __Block_byref_object_dispose__41;
          v249 = 0;
          v208 = 0u;
          v209 = 0u;
          v206 = 0u;
          v207 = 0u;
          obj = *(v224 + 5);
          v35 = [obj countByEnumeratingWithState:&v206 objects:v243 count:16];
          if (!v35)
          {
            v177 = 0;
LABEL_52:

            v66 = v162;
            if ([v155 count])
            {
              v68 = objc_opt_new();
              v199[0] = MEMORY[0x277D85DD0];
              v199[1] = 3221225472;
              v199[2] = __75__RTLearnedLocationEngine__refreshMapItemsForLocationsOfInterestWithError___block_invoke_801;
              v199[3] = &unk_2788C8AE8;
              v69 = v68;
              v200 = v69;
              [v155 enumerateObjectsUsingBlock:v199];
              mapItemManager = [(RTLearnedLocationEngine *)self mapItemManager];
              v198 = 0;
              v147 = [mapItemManager updateMapItemsFromMapItems:v69 outError:&v198];
              v146 = v69;
              v148 = v198;

              if (v148)
              {
                v71 = v148;
                v10 = 0;
                *errorCopy = v148;
              }

              else
              {
                v72 = objc_opt_new();
                v196[0] = MEMORY[0x277D85DD0];
                v196[1] = 3221225472;
                v196[2] = __75__RTLearnedLocationEngine__refreshMapItemsForLocationsOfInterestWithError___block_invoke_2;
                v196[3] = &unk_2788C8B10;
                v173 = v72;
                v197 = v173;
                [v147 enumerateObjectsUsingBlock:v196];
                v156 = objc_opt_new();
                v163 = objc_opt_new();
                v194 = 0u;
                v195 = 0u;
                v192 = 0u;
                v193 = 0u;
                v159 = v155;
                v73 = [v159 countByEnumeratingWithState:&v192 objects:v242 count:16];
                if (v73)
                {
                  v165 = *v193;
                  do
                  {
                    v168 = v73;
                    for (i = 0; i != v168; ++i)
                    {
                      if (*v193 != v165)
                      {
                        objc_enumerationMutation(v159);
                      }

                      v75 = *(*(&v192 + 1) + 8 * i);
                      mapItem = [v75 mapItem];
                      identifier = [mapItem identifier];
                      v78 = [v173 objectForKey:identifier];

                      if (v78)
                      {
                        objb = [RTLearnedPlace alloc];
                        identifier2 = [v75 identifier];
                        type = [v75 type];
                        typeSource = [v75 typeSource];
                        mapItem2 = [v75 mapItem];
                        identifier3 = [mapItem2 identifier];
                        v83 = [v173 objectForKeyedSubscript:identifier3];
                        customLabel = [v75 customLabel];
                        creationDate = [v75 creationDate];
                        expirationDate = [v75 expirationDate];
                        v87 = [(RTLearnedPlace *)objb initWithIdentifier:identifier2 type:type typeSource:typeSource mapItem:v83 customLabel:customLabel creationDate:creationDate expirationDate:expirationDate];

                        if (v87)
                        {
                          [v156 addObject:v87];
                          identifier4 = [(RTLearnedPlace *)v87 identifier];
                          [v163 setObject:v87 forKey:identifier4];
                        }
                      }
                    }

                    v73 = [v159 countByEnumeratingWithState:&v192 objects:v242 count:16];
                  }

                  while (v73);
                }

                *buf = 0;
                v237 = buf;
                v238 = 0x3032000000;
                v239 = __Block_byref_object_copy__41;
                v240 = __Block_byref_object_dispose__41;
                v241 = 0;
                v89 = dispatch_semaphore_create(0);
                learnedLocationStore3 = [(RTLearnedLocationEngine *)self learnedLocationStore];
                v187[0] = MEMORY[0x277D85DD0];
                v187[1] = 3221225472;
                v187[2] = __75__RTLearnedLocationEngine__refreshMapItemsForLocationsOfInterestWithError___block_invoke_3;
                v187[3] = &unk_2788C6EF0;
                v191 = a2;
                v188 = v156;
                v190 = buf;
                v91 = v89;
                v189 = v91;
                v157 = v188;
                [learnedLocationStore3 updatePlaces:v188 handler:v187];

                v166 = v91;
                v92 = [MEMORY[0x277CBEAA8] now];
                v93 = dispatch_time(0, 3600000000000);
                if (!dispatch_semaphore_wait(v166, v93))
                {
                  goto LABEL_72;
                }

                v94 = [MEMORY[0x277CBEAA8] now];
                [v94 timeIntervalSinceDate:v92];
                v96 = v95;
                v97 = objc_opt_new();
                v98 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
                callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
                v100 = [callStackSymbols2 filteredArrayUsingPredicate:v98];
                firstObject2 = [v100 firstObject];

                [v97 submitToCoreAnalytics:firstObject2 type:1 duration:v96];
                v102 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
                {
                  *v229 = 0;
                  _os_log_fault_impl(&dword_2304B3000, v102, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v229, 2u);
                }

                v103 = MEMORY[0x277CCA9B8];
                *v251 = *MEMORY[0x277CCA450];
                *v229 = @"semaphore wait timeout";
                v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v229 forKeys:v251 count:1];
                v105 = [v103 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v104];

                if (v105)
                {
                  v106 = v105;

                  v107 = 0;
                }

                else
                {
LABEL_72:
                  v107 = 1;
                  v105 = v162;
                }

                v160 = v105;
                if ((v107 & 1) == 0)
                {
                  objc_storeStrong(v237 + 5, v105);
                }

                v108 = *(v237 + 5);
                if (v108)
                {
                  v10 = 0;
                  *errorCopy = v108;
                }

                else
                {
                  v169 = objc_opt_new();
                  v185 = 0u;
                  v186 = 0u;
                  v183 = 0u;
                  v184 = 0u;
                  obja = *(v224 + 5);
                  v109 = [obja countByEnumeratingWithState:&v183 objects:v235 count:16];
                  if (v109)
                  {
                    v176 = *v184;
                    do
                    {
                      for (j = 0; j != v109; ++j)
                      {
                        if (*v184 != v176)
                        {
                          objc_enumerationMutation(obja);
                        }

                        v111 = *(*(&v183 + 1) + 8 * j);
                        identifier5 = [v111 identifier];
                        v113 = [v163 objectForKey:identifier5];

                        if (v113)
                        {
                          v114 = [RTLearnedLocationOfInterest alloc];
                          identifier6 = [v111 identifier];
                          location = [v111 location];
                          identifier7 = [v111 identifier];
                          v118 = [v163 objectForKeyedSubscript:identifier7];
                          visits = [v111 visits];
                          transitions = [v111 transitions];
                          v121 = [(RTLearnedLocationOfInterest *)v114 initWithIdentifier:identifier6 location:location place:v118 visits:visits transitions:transitions];

                          if (v121)
                          {
                            [v169 addObject:v121];
                          }
                        }
                      }

                      v109 = [obja countByEnumeratingWithState:&v183 objects:v235 count:16];
                    }

                    while (v109);
                  }

                  *v229 = 0;
                  v230 = v229;
                  v231 = 0x3032000000;
                  v232 = __Block_byref_object_copy__41;
                  v233 = __Block_byref_object_dispose__41;
                  v234 = 0;
                  v122 = dispatch_semaphore_create(0);
                  learnedLocationStore4 = [(RTLearnedLocationEngine *)self learnedLocationStore];
                  v178[0] = MEMORY[0x277D85DD0];
                  v178[1] = 3221225472;
                  v178[2] = __75__RTLearnedLocationEngine__refreshMapItemsForLocationsOfInterestWithError___block_invoke_804;
                  v178[3] = &unk_2788C6EF0;
                  v182 = a2;
                  v124 = v169;
                  v179 = v124;
                  v181 = v229;
                  v125 = v122;
                  v180 = v125;
                  [learnedLocationStore4 updateLocationsOfInterest:v124 handler:v178];

                  v126 = v125;
                  v127 = [MEMORY[0x277CBEAA8] now];
                  v128 = dispatch_time(0, 3600000000000);
                  if (!dispatch_semaphore_wait(v126, v128))
                  {
                    goto LABEL_93;
                  }

                  v129 = [MEMORY[0x277CBEAA8] now];
                  [v129 timeIntervalSinceDate:v127];
                  v131 = v130;
                  v132 = objc_opt_new();
                  v133 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
                  callStackSymbols3 = [MEMORY[0x277CCACC8] callStackSymbols];
                  v135 = [callStackSymbols3 filteredArrayUsingPredicate:v133];
                  firstObject3 = [v135 firstObject];

                  [v132 submitToCoreAnalytics:firstObject3 type:1 duration:v131];
                  v137 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (os_log_type_enabled(v137, OS_LOG_TYPE_FAULT))
                  {
                    *v251 = 0;
                    _os_log_fault_impl(&dword_2304B3000, v137, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v251, 2u);
                  }

                  v138 = MEMORY[0x277CCA9B8];
                  v250 = *MEMORY[0x277CCA450];
                  *v251 = @"semaphore wait timeout";
                  v139 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v251 forKeys:&v250 count:1];
                  v140 = [v138 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v139];

                  if (v140)
                  {
                    v141 = v140;

                    v142 = 0;
                  }

                  else
                  {
LABEL_93:
                    v142 = 1;
                    v140 = v160;
                  }

                  v143 = v140;
                  if ((v142 & 1) == 0)
                  {
                    objc_storeStrong(v230 + 5, v140);
                  }

                  v144 = *(v230 + 5);
                  v10 = v144 == 0;
                  if (v144)
                  {
                    v144 = v144;
                  }

                  *errorCopy = v144;

                  _Block_object_dispose(v229, 8);
                  v160 = v143;
                }

                _Block_object_dispose(buf, 8);
                v162 = v160;
              }

              v66 = v162;
            }

            else
            {
              *errorCopy = 0;
              v10 = 1;
            }

LABEL_101:

            _Block_object_dispose(v244, 8);
            v32 = v66;
            goto LABEL_102;
          }

          v177 = 0;
          v36 = *v207;
          v164 = *MEMORY[0x277D01448];
          v167 = *MEMORY[0x277CCA450];
LABEL_26:
          v37 = 0;
          while (1)
          {
            if (*v207 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v206 + 1) + 8 * v37);
            if (v174)
            {
              goto LABEL_30;
            }

            place = [*(*(&v206 + 1) + 8 * v37) place];
            mapItem3 = [place mapItem];
            if ([mapItem3 muid])
            {
              place2 = [v38 place];
              mapItem4 = [place2 mapItem];
              creationDate2 = [mapItem4 creationDate];
              if ([creationDate2 isBeforeDate:v153])
              {
                v65 = drand48() < 0.5;

                if (!v65)
                {
                  goto LABEL_47;
                }

LABEL_30:
                v39 = dispatch_semaphore_create(0);

                learnedLocationStore5 = [(RTLearnedLocationEngine *)self learnedLocationStore];
                place3 = [v38 place];
                mapItem5 = [place3 mapItem];
                v201[0] = MEMORY[0x277D85DD0];
                v201[1] = 3221225472;
                v201[2] = __75__RTLearnedLocationEngine__refreshMapItemsForLocationsOfInterestWithError___block_invoke_800;
                v201[3] = &unk_2788C8AC0;
                v205 = a2;
                v202 = v155;
                v204 = v244;
                v43 = v39;
                v203 = v43;
                [learnedLocationStore5 fetchPlaceWithMapItem:mapItem5 predicate:predicateForObjectsFromCurrentDevice handler:v201];

                v177 = v43;
                v44 = [MEMORY[0x277CBEAA8] now];
                v45 = dispatch_time(0, 3600000000000);
                if (!dispatch_semaphore_wait(v177, v45))
                {
                  goto LABEL_39;
                }

                v46 = [MEMORY[0x277CBEAA8] now];
                [v46 timeIntervalSinceDate:v44];
                v48 = v47;
                v49 = objc_opt_new();
                v50 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
                callStackSymbols4 = [MEMORY[0x277CCACC8] callStackSymbols];
                v52 = [callStackSymbols4 filteredArrayUsingPredicate:v50];
                firstObject4 = [v52 firstObject];

                [v49 submitToCoreAnalytics:firstObject4 type:1 duration:v48];
                v54 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&dword_2304B3000, v54, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
                }

                v55 = MEMORY[0x277CCA9B8];
                *v229 = v167;
                *buf = @"semaphore wait timeout";
                v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v229 count:1];
                v57 = [v55 errorWithDomain:v164 code:15 userInfo:v56];

                if (v57)
                {
                  v58 = v57;

                  v59 = 0;
                }

                else
                {
LABEL_39:
                  v59 = 1;
                  v57 = v162;
                }

                v66 = v57;
                if ((v59 & 1) == 0)
                {
                  objc_storeStrong(v245 + 5, v57);
                }

                v67 = *(v245 + 5);
                if (v67)
                {
                  *errorCopy = v67;

                  v10 = 0;
                  goto LABEL_101;
                }

                place = v202;
                v162 = v66;
                goto LABEL_46;
              }
            }

            else
            {
            }

LABEL_46:

LABEL_47:
            if (v35 == ++v37)
            {
              v35 = [obj countByEnumeratingWithState:&v206 objects:v243 count:16];
              if (v35)
              {
                goto LABEL_26;
              }

              goto LABEL_52;
            }
          }
        }
      }

      else
      {
        v29 = 0;
      }

      v31 = 1;
      goto LABEL_20;
    }

    *error = 0;
    return 1;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v223 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", v223, 2u);
    }

    return 0;
  }
}

void __75__RTLearnedLocationEngine__refreshMapItemsForLocationsOfInterestWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 64));
      v9 = [v5 count];
      v10 = [*(a1 + 32) stringFromDate];
      v11 = v10;
      v12 = *(a1 + 72);
      v20 = 138413314;
      v21 = v8;
      if (v12)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v22 = 2048;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, fetchedLocationsOfInterest count, %lu, fetchStartDate, %@, test mode, %@, error, %@", &v20, 0x34u);
    }
  }

  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v6;
  v16 = v6;

  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v5;
  v19 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __75__RTLearnedLocationEngine__refreshMapItemsForLocationsOfInterestWithError___block_invoke_800(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 56));
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, fetchedPlace, %@, error, %@", &v12, 0x20u);
    }
  }

  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __75__RTLearnedLocationEngine__refreshMapItemsForLocationsOfInterestWithError___block_invoke_801(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [a2 mapItem];
    [v2 addObject:v3];
  }
}

void __75__RTLearnedLocationEngine__refreshMapItemsForLocationsOfInterestWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  [v2 setObject:v3 forKey:v4];
}

void __75__RTLearnedLocationEngine__refreshMapItemsForLocationsOfInterestWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 56));
      v6 = [*(a1 + 32) count];
      v10 = 138412802;
      v11 = v5;
      v12 = 2048;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, update places count, %lu, error, %@", &v10, 0x20u);
    }
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
  v9 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __75__RTLearnedLocationEngine__refreshMapItemsForLocationsOfInterestWithError___block_invoke_804(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 56));
      v6 = [*(a1 + 32) count];
      v10 = 138412802;
      v11 = v5;
      v12 = 2048;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, update LOI count, %lu, error, %@", &v10, 0x20u);
    }
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
  v9 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_onContactsManagerNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = notificationCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@", buf, 0x16u);
    }
  }

  name = [notificationCopy name];
  v9 = +[(RTNotification *)RTContactsManagerContactStoreMeContactDidChangeNotification];
  v10 = [name isEqualToString:v9];

  if (v10)
  {
    v16 = 0;
    v11 = [(RTLearnedLocationEngine *)self _classifyPlaceTypes:&v16];
    v12 = v16;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = @"NO";
        if (v11)
        {
          v14 = @"YES";
        }

        *buf = 138412546;
        v18 = v14;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "classify place types, success, %@, error, %@", buf, 0x16u);
      }

      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = NSStringFromSelector(a2);
      name2 = [notificationCopy name];
      *buf = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = name2;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, unhandled notification, %@", buf, 0x16u);

LABEL_14:
    }

LABEL_15:
  }
}

- (void)onContactsManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTLearnedLocationEngine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__RTLearnedLocationEngine_onContactsManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onMapsSupportManagerNotification:(id)notification
{
  v22 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = notificationCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@", buf, 0x16u);
    }
  }

  name = [notificationCopy name];
  v9 = +[(RTNotification *)RTMapsSupportManagerQueryContentsDidChangeNotification];
  v10 = [name isEqualToString:v9];

  if (v10)
  {
    v11 = notificationCopy;
    if ([v11 queryType]== 2)
    {
      v17 = 0;
      v12 = [(RTLearnedLocationEngine *)self _classifyPlaceTypes:&v17];
      v13 = v17;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = @"NO";
          if (v12)
          {
            v15 = @"YES";
          }

          *buf = 138412546;
          v19 = v15;
          v20 = 2112;
          v21 = v13;
          _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "classify place types, success, %@, error, %@", buf, 0x16u);
        }

        goto LABEL_12;
      }
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
LABEL_16:

        goto LABEL_17;
      }

      v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = NSStringFromSelector(a2);
        name2 = [v11 name];
        *buf = 138412546;
        v19 = v14;
        v20 = 2112;
        v21 = name2;
        _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@, unhandled notification, %@", buf, 0x16u);

LABEL_12:
      }
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)onMapsSupportManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTLearnedLocationEngine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__RTLearnedLocationEngine_onMapsSupportManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (BOOL)_submitDailyVisitMetrics
{
  v25 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "visit metrics submission, start", buf, 2u);
    }
  }

  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];

  if (learnedLocationStore)
  {
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
    v6 = [RTVisitMetrics alloc];
    distanceCalculator = [(RTLearnedLocationEngine *)self distanceCalculator];
    learnedLocationStore2 = [(RTLearnedLocationEngine *)self learnedLocationStore];
    locationStore = [(RTLearnedLocationEngine *)self locationStore];
    motionActivityManager = [(RTLearnedLocationEngine *)self motionActivityManager];
    visitManager = [(RTLearnedLocationEngine *)self visitManager];
    v12 = [(RTVisitMetrics *)v6 initWithDistanceCalculator:distanceCalculator learnedLocationStore:learnedLocationStore2 locationStore:locationStore motionActivityManager:motionActivityManager visitManager:visitManager];

    v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 duration:86400.0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v22 = v5;
        v23 = 2112;
        v24 = v13;
        _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "visit metrics submission, start, %@, interval %@", buf, 0x16u);
      }
    }

    v20 = 0;
    v15 = [(RTVisitMetrics *)v12 collectRealtimeMetricsForDateInterval:v13 error:&v20];
    v16 = v20;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v19 = @"NO";
        if (v15)
        {
          v19 = @"YES";
        }

        *buf = 138412546;
        v22 = v19;
        v23 = 2112;
        v24 = v16;
        _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "visit metrics submission, success, %@, error, %@", buf, 0x16u);
      }
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (BOOL)_submitDailyUserCurationMetrics
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "user curation daily metrics submission, start", buf, 2u);
    }
  }

  userCurationStore = [(RTLearnedLocationEngine *)self userCurationStore];

  if (userCurationStore)
  {
    userCurationStore2 = [(RTLearnedLocationEngine *)self userCurationStore];
    v11 = 0;
    v6 = [RTUserCurationMetrics collectUserCurationCountMetricsWithUserCurationStore:userCurationStore2 error:&v11];
    v7 = v11;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = @"NO";
        if (v6)
        {
          v10 = @"YES";
        }

        *buf = 138412546;
        v13 = v10;
        v14 = 2112;
        v15 = v7;
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "user curation daily metrics submission, success, %@, error, %@", buf, 0x16u);
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)onLearnedLocationStoreNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTLearnedLocationEngine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__RTLearnedLocationEngine_onLearnedLocationStoreNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onLearnedLocationStoreNotification:(id)notification
{
  v45 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  v8 = [name isEqualToString:v7];

  if (v8 && [notificationCopy availability] == 2)
  {
    if ([(RTLearnedLocationEngine *)self shouldRecoverKnownPlaceTypes])
    {
      _homeLocationOfInterestExist = [(RTLearnedLocationEngine *)self _homeLocationOfInterestExist];
    }

    else
    {
      _homeLocationOfInterestExist = 1;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        shouldRecoverKnownPlaceTypes = [(RTLearnedLocationEngine *)self shouldRecoverKnownPlaceTypes];
        v15 = @"NO";
        *buf = 138413058;
        v38 = v12;
        if (shouldRecoverKnownPlaceTypes)
        {
          v16 = @"YES";
        }

        else
        {
          v16 = @"NO";
        }

        if (_homeLocationOfInterestExist)
        {
          v15 = @"YES";
        }

        v39 = 2112;
        v40 = v13;
        v41 = 2112;
        v42 = v16;
        v43 = 2112;
        v44 = v15;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, shouldRecoverKnownPlaceTypes, %@, homeExist, %@", buf, 0x2Au);
      }
    }

    if (!(_homeLocationOfInterestExist | ![(RTLearnedLocationEngine *)self shouldRecoverKnownPlaceTypes]))
    {
      aSelector = a2;
      placeTypeClassifierMetricsCalculator = [(RTLearnedLocationEngine *)self placeTypeClassifierMetricsCalculator];
      [placeTypeClassifierMetricsCalculator resetStates];

      v34 = [RTPlaceTypeClassifier alloc];
      biomeManager = [(RTLearnedLocationEngine *)self biomeManager];
      contactsManager = [(RTLearnedLocationEngine *)self contactsManager];
      defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
      distanceCalculator = [(RTLearnedLocationEngine *)self distanceCalculator];
      learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
      locationManager = [(RTLearnedLocationEngine *)self locationManager];
      mapServiceManager = [(RTLearnedLocationEngine *)self mapServiceManager];
      mapsSupportManager = [(RTLearnedLocationEngine *)self mapsSupportManager];
      placeTypeClassifierMetricsCalculator2 = [(RTLearnedLocationEngine *)self placeTypeClassifierMetricsCalculator];
      platform = [(RTLearnedLocationEngine *)self platform];
      queue = [(RTLearnedLocationEngine *)self queue];
      visitManager = [(RTLearnedLocationEngine *)self visitManager];
      v22 = [(RTPlaceTypeClassifier *)v34 initWithBiomeManager:biomeManager contactsManager:contactsManager defaultsManager:defaultsManager distanceCalculator:distanceCalculator learnedLocationStore:learnedLocationStore locationManager:locationManager mapServiceManager:mapServiceManager mapsSupportManager:mapsSupportManager placeTypeClassifierMetricsCalculator:placeTypeClassifierMetricsCalculator2 platform:platform queue:queue visitManager:visitManager];

      v36 = 0;
      LOBYTE(platform) = [(RTLearnedLocationEngine *)self _recoverKnownPlaceTypesWithPlaceTypeClassifier:v22 outError:&v36];
      v23 = v36;
      if (platform)
      {
        [(RTLearnedLocationEngine *)self setShouldRecoverKnownPlaceTypes:0];
      }

      else
      {
        v24 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = NSStringFromSelector(aSelector);
          *buf = 138412546;
          v38 = v25;
          v39 = 2112;
          v40 = v23;
          _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@, _recoverKnownPlaceTypesWithError, error, %@", buf, 0x16u);
        }
      }
    }
  }
}

- (BOOL)_recoverKnownPlaceTypesWithPlaceTypeClassifier:(id)classifier outError:(id *)error
{
  v83 = *MEMORY[0x277D85DE8];
  classifierCopy = classifier;
  selfCopy = self;
  defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
  v53 = [defaultsManager objectForKey:@"KnownPlaceIdentifiers"];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v52 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  v76 = 0;
  v54 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v52 fromData:v53 error:&v76];
  v49 = v76;
  defaultsManager2 = [(RTLearnedLocationEngine *)selfCopy defaultsManager];
  v51 = [defaultsManager2 objectForKey:@"KnownPlaceIdentifiersLastUpdateDate"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      v15 = [v54 count];
      stringFromDate = [v51 stringFromDate];
      *buf = 138413058;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      *&buf[22] = 2048;
      v78 = v15;
      LOWORD(v79) = 2112;
      *(&v79 + 2) = stringFromDate;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, previous known place count, %lu, saved date, %@", buf, 0x2Au);
    }
  }

  if ([v54 count])
  {
    v55 = objc_opt_new();
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = v54;
    v61 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v61)
    {
      v60 = *v73;
      v56 = *MEMORY[0x277D01448];
      v57 = *MEMORY[0x277CCA450];
LABEL_8:
      v17 = 0;
      while (1)
      {
        if (*v73 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v72 + 1) + 8 * v17);
        v19 = [obj objectForKey:v18];
        if ([v19 count])
        {
          break;
        }

LABEL_28:
        if (v61 == ++v17)
        {
          v61 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
          if (v61)
          {
            goto LABEL_8;
          }

          goto LABEL_30;
        }
      }

      v20 = dispatch_semaphore_create(0);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v78 = __Block_byref_object_copy__41;
      *&v79 = __Block_byref_object_dispose__41;
      *(&v79 + 1) = 0;
      v21 = objc_opt_new();
      learnedLocationStore = [(RTLearnedLocationEngine *)selfCopy learnedLocationStore];
      v23 = [MEMORY[0x277CBEB98] setWithArray:v19];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __83__RTLearnedLocationEngine__recoverKnownPlaceTypesWithPlaceTypeClassifier_outError___block_invoke;
      v66[3] = &unk_2788C8B60;
      v71 = a2;
      v66[4] = selfCopy;
      v66[5] = v18;
      v62 = v19;
      v67 = v62;
      v70 = buf;
      v24 = v21;
      v68 = v24;
      v25 = v20;
      v69 = v25;
      [learnedLocationStore fetchPlacesWithIdentifiers:v23 handler:v66];

      v26 = v25;
      v27 = [MEMORY[0x277CBEAA8] now];
      v28 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v26, v28))
      {
        v29 = [MEMORY[0x277CBEAA8] now];
        [v29 timeIntervalSinceDate:v27];
        v31 = v30;
        v32 = objc_opt_new();
        v33 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v35 = [callStackSymbols filteredArrayUsingPredicate:v33];
        firstObject = [v35 firstObject];

        [v32 submitToCoreAnalytics:firstObject type:1 duration:v31];
        v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          *v82 = 0;
          _os_log_fault_impl(&dword_2304B3000, v37, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v82, 2u);
        }

        v38 = MEMORY[0x277CCA9B8];
        v81 = v57;
        *v82 = @"semaphore wait timeout";
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:&v81 count:1];
        v40 = [v38 errorWithDomain:v56 code:15 userInfo:v39];

        if (v40)
        {
          v41 = v40;

          v42 = 0;
          goto LABEL_20;
        }
      }

      else
      {
        v40 = 0;
      }

      v42 = 1;
LABEL_20:

      v43 = v40;
      if ((v42 & 1) == 0)
      {
        objc_storeStrong((*&buf[8] + 40), v40);
      }

      v44 = *(*&buf[8] + 40);
      if (v44)
      {
        if (error)
        {
          v45 = v44;
          *error = v44;
        }
      }

      else if ([v24 count])
      {
        [v55 addObjectsFromArray:v24];
      }

      _Block_object_dispose(buf, 8);
      if (v44)
      {

        v47 = 0;
        goto LABEL_41;
      }

      goto LABEL_28;
    }

LABEL_30:

    if ([v55 count])
    {
      v65 = 0;
      [classifierCopy updatePlaces:v55 error:&v65];
      v46 = v65;
      if (error)
      {
        v46 = v46;
        *error = v46;
      }

      v47 = v46 == 0;
    }

    else
    {
      if (error)
      {
        *error = 0;
      }

      v47 = 1;
    }

LABEL_41:
  }

  else
  {
    if (error)
    {
      *error = 0;
    }

    v47 = 1;
  }

  return v47;
}

void __83__RTLearnedLocationEngine__recoverKnownPlaceTypesWithPlaceTypeClassifier_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 80));
      v11 = *(a1 + 40);
      v12 = [*(a1 + 48) count];
      v13 = [*(a1 + 48) firstObject];
      *buf = 138413826;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      v27 = 2048;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      v31 = 2048;
      v32 = [v5 count];
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, place type, %@, identifier count, %lu, first identifier, %@, fetched place count, %lu, error, %@", buf, 0x48u);
    }
  }

  v14 = *(*(a1 + 72) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v6;
  v16 = v6;

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__RTLearnedLocationEngine__recoverKnownPlaceTypesWithPlaceTypeClassifier_outError___block_invoke_808;
  v17[3] = &unk_2788C8B38;
  v18 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v20 = *(a1 + 80);
  v19 = *(a1 + 56);
  [v5 enumerateObjectsUsingBlock:v17];
  dispatch_semaphore_signal(*(a1 + 64));
}

void __83__RTLearnedLocationEngine__recoverKnownPlaceTypesWithPlaceTypeClassifier_outError___block_invoke_808(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [RTLearnedPlace alloc];
  v6 = [v4 identifier];
  v7 = [*(a1 + 32) unsignedIntValue];
  v8 = [v4 typeSource];
  v9 = [v4 mapItem];
  v10 = [v4 customLabel];
  v11 = [v4 creationDate];
  v12 = [v4 expirationDate];

  v13 = [(RTLearnedPlace *)v5 initWithIdentifier:v6 type:v7 typeSource:v8 mapItem:v9 customLabel:v10 creationDate:v11 expirationDate:v12];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(*(a1 + 56));
      *buf = 138413059;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      v23 = 2048;
      v24 = a3;
      v25 = 2117;
      v26 = v13;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, %@, idx, %lu, recovered place, %{sensitive}@", buf, 0x2Au);
    }
  }

  if (v13)
  {
    [*(a1 + 48) addObject:v13];
  }
}

- (id)_getDailyTrainingMetrics
{
  v121[1] = *MEMORY[0x277D85DE8];
  v74 = objc_opt_new();
  v73 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];

  if (learnedLocationStore)
  {
    learnedLocationStore2 = [(RTLearnedLocationEngine *)self learnedLocationStore];
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v72 = [learnedLocationStore2 predicateForVisitsFromEntryDate:v73 exitDate:distantFuture];

    learnedLocationStore3 = [(RTLearnedLocationEngine *)self learnedLocationStore];
    predicateForObjectsFromCurrentDevice = [learnedLocationStore3 predicateForObjectsFromCurrentDevice];

    v6 = predicateForObjectsFromCurrentDevice;
    if (v72 && predicateForObjectsFromCurrentDevice)
    {
      v7 = MEMORY[0x277CCA920];
      v120[0] = v72;
      v120[1] = predicateForObjectsFromCurrentDevice;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v120 count:2];
      v69 = [v7 andPredicateWithSubpredicates:v8];

      v9 = dispatch_semaphore_create(0);
      v104 = 0;
      v105 = &v104;
      v106 = 0x3032000000;
      v107 = __Block_byref_object_copy__41;
      v108 = __Block_byref_object_dispose__41;
      v109 = 0;
      v98 = 0;
      v99 = &v98;
      v100 = 0x3032000000;
      v101 = __Block_byref_object_copy__41;
      v102 = __Block_byref_object_dispose__41;
      v103 = 0;
      learnedLocationStore4 = [(RTLearnedLocationEngine *)self learnedLocationStore];
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __51__RTLearnedLocationEngine__getDailyTrainingMetrics__block_invoke;
      v94[3] = &unk_2788C4490;
      v96 = &v98;
      v97 = &v104;
      v11 = v9;
      v95 = v11;
      [learnedLocationStore4 fetchVisitsWithPredicate:v69 handler:v94];

      v12 = (v105 + 5);
      v13 = v105[5];
      dsema = v11;
      v14 = [MEMORY[0x277CBEAA8] now];
      v15 = dispatch_time(0, 3600000000000);
      v16 = dispatch_semaphore_wait(dsema, v15);
      v17 = MEMORY[0x277CCA450];
      if (v16)
      {
        v18 = [MEMORY[0x277CBEAA8] now];
        [v18 timeIntervalSinceDate:v14];
        v20 = v19;
        v21 = objc_opt_new();
        v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v24 = [callStackSymbols filteredArrayUsingPredicate:v22];
        firstObject = [v24 firstObject];

        [v21 submitToCoreAnalytics:firstObject type:1 duration:v20];
        v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v27 = MEMORY[0x277CCA9B8];
        *v110 = *v17;
        *buf = @"semaphore wait timeout";
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v110 count:1];
        v29 = [v27 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v28];

        if (v29)
        {
          v30 = v29;

          v13 = v29;
        }
      }

      objc_storeStrong(v12, v13);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v31 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = NSStringFromSelector(a2);
          v33 = [v99[5] count];
          v34 = v105[5];
          *buf = 138412802;
          *&buf[4] = v32;
          *&buf[12] = 2048;
          *&buf[14] = v33;
          *&buf[22] = 2112;
          v117 = v34;
          _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@, fetched %lu of learned visit entries in past day, error, %@", buf, 0x20u);
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v117 = __Block_byref_object_copy__41;
      v118 = __Block_byref_object_dispose__41;
      v119 = 0;
      v79 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      obj = v99[5];
      v35 = [obj countByEnumeratingWithState:&v90 objects:v115 count:16];
      if (v35)
      {
        v78 = *v91;
        v76 = *MEMORY[0x277D01448];
        v77 = *v17;
        do
        {
          v82 = v35;
          for (i = 0; i != v82; ++i)
          {
            if (*v91 != v78)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v90 + 1) + 8 * i);
            v38 = dispatch_semaphore_create(0);

            learnedLocationStore5 = [(RTLearnedLocationEngine *)self learnedLocationStore];
            v84[0] = MEMORY[0x277D85DD0];
            v84[1] = 3221225472;
            v84[2] = __51__RTLearnedLocationEngine__getDailyTrainingMetrics__block_invoke_809;
            v84[3] = &unk_2788C8B88;
            v40 = v79;
            v88 = buf;
            v89 = a2;
            v85 = v40;
            v86 = v37;
            v41 = v38;
            v87 = v41;
            [learnedLocationStore5 fetchPlaceOfVisit:v37 handler:v84];

            v42 = (*&buf[8] + 40);
            v43 = *(*&buf[8] + 40);
            dsema = v41;
            v44 = [MEMORY[0x277CBEAA8] now];
            v45 = dispatch_time(0, 3600000000000);
            if (dispatch_semaphore_wait(dsema, v45))
            {
              v46 = [MEMORY[0x277CBEAA8] now];
              [v46 timeIntervalSinceDate:v44];
              v48 = v47;
              v49 = objc_opt_new();
              v50 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
              callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
              v52 = [callStackSymbols2 filteredArrayUsingPredicate:v50];
              firstObject2 = [v52 firstObject];

              [v49 submitToCoreAnalytics:firstObject2 type:1 duration:v48];
              v54 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
              {
                *v110 = 0;
                _os_log_fault_impl(&dword_2304B3000, v54, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v110, 2u);
              }

              v55 = MEMORY[0x277CCA9B8];
              v121[0] = v77;
              *v110 = @"semaphore wait timeout";
              v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v121 count:1];
              v57 = [v55 errorWithDomain:v76 code:15 userInfo:v56];

              if (v57)
              {
                v58 = v57;

                v43 = v57;
              }
            }

            objc_storeStrong(v42, v43);
          }

          v35 = [obj countByEnumeratingWithState:&v90 objects:v115 count:16];
        }

        while (v35);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v59 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v60 = NSStringFromSelector(a2);
          v61 = [v79 count];
          v62 = *(*&buf[8] + 40);
          *v110 = 138412802;
          *&v110[4] = v60;
          v111 = 2048;
          v112 = v61;
          v113 = 2112;
          v114 = v62;
          _os_log_impl(&dword_2304B3000, v59, OS_LOG_TYPE_INFO, "%@, fetched %lu of learned places in past day, error, %@", v110, 0x20u);
        }
      }

      [v74 setObject:&unk_2845A19D8 forKeyedSubscript:{@"_intervalSinceLastAttempt", v69}];
      v63 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v99[5], "count")}];
      [v74 setObject:v63 forKeyedSubscript:@"_visitCountTrainingEvent"];

      v64 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v79, "count")}];
      [v74 setObject:v64 forKeyedSubscript:@"_placeCountTrainingEvent"];

      v65 = v74;
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v98, 8);
      _Block_object_dispose(&v104, 8);

      v6 = predicateForObjectsFromCurrentDevice;
    }

    else
    {
      v67 = v74;
    }
  }

  else
  {
    v66 = v74;
  }

  return v74;
}

void __51__RTLearnedLocationEngine__getDailyTrainingMetrics__block_invoke(uint64_t a1, void *a2, void *a3)
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

void __51__RTLearnedLocationEngine__getDailyTrainingMetrics__block_invoke_809(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 identifier];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v5 identifier];
    [v8 addObject:v9];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(*(a1 + 64));
      v12 = *(a1 + 40);
      v13 = *(*(*(a1 + 56) + 8) + 40);
      v14 = 138413059;
      v15 = v11;
      v16 = 2117;
      v17 = v5;
      v18 = 2117;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, fetched place, %{sensitive}@, visit, %{sensitive}@, error, %@", &v14, 0x2Au);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_submitDailyTrainingSessionCount
{
  dailyTrainingSessionCounter = [(RTLearnedLocationEngine *)self dailyTrainingSessionCounter];
  [dailyTrainingSessionCounter submitMetrics];
}

- (void)_submitDailyTrainingMetrics
{
  v12 = *MEMORY[0x277D85DE8];
  _getDailyTrainingMetrics = [(RTLearnedLocationEngine *)self _getDailyTrainingMetrics];
  if ([_getDailyTrainingMetrics count])
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = [v5 initWithCString:RTAnalyticsEventTraining encoding:1];
    log_analytics_submission(v6, _getDailyTrainingMetrics);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v6];
    AnalyticsSendEvent();
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138412290;
      v11 = v9;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, failure to submit daily notification metrics, training metrics not established", buf, 0xCu);
    }
  }

  [(RTLearnedLocationEngine *)self _submitDailyTrainingSessionCount];
}

- (void)_onDailyMetricsNotification:(id)notification
{
  v36 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = [name isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if ((v7 & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      name2 = [notificationCopy name];
      *buf = 138412802;
      v31 = name2;
      v32 = 2080;
      v33 = "[RTLearnedLocationEngine _onDailyMetricsNotification:]";
      v34 = 1024;
      v35 = 5913;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412546;
      v31 = v10;
      v32 = 2112;
      v33 = notificationCopy;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, received notification, %@", buf, 0x16u);
    }
  }

  name3 = [notificationCopy name];
  v12 = [name3 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if (v12)
  {
    if ([(RTLearnedLocationEngine *)self _deferSubmittingLoiMetricsDueToNoTrainingSinceLastSubmission])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_25:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v24 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = NSStringFromSelector(a2);
            *buf = 138412290;
            v31 = v25;
            _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, perform daily transit analytics", buf, 0xCu);
          }
        }

        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __55__RTLearnedLocationEngine__onDailyMetricsNotification___block_invoke;
        v28[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
        v28[4] = a2;
        [(RTLearnedLocationEngine *)self performTransitAnalyticsWithHandler:v28];
        [(RTLearnedLocationEngine *)self _submitDailyTrainingMetrics];
        [(RTLearnedLocationEngine *)self _submitDailyVisitMetrics];
        [(RTLearnedLocationEngine *)self _submitPlaceTypeClassificationFeatureInputMetrics];
        [(RTLearnedLocationEngine *)self _submitDailyUserCurationMetrics];
        goto LABEL_30;
      }

      v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
LABEL_24:

        goto LABEL_25;
      }

      v14 = NSStringFromSelector(a2);
      *buf = 138412290;
      v31 = v14;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, skip submitting LOI metrics due to no training since last submission", buf, 0xCu);
    }

    else
    {
      v16 = [RTLocationOfInterestMetrics alloc];
      defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
      distanceCalculator = [(RTLearnedLocationEngine *)self distanceCalculator];
      learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
      locationStore = [(RTLearnedLocationEngine *)self locationStore];
      v13 = [(RTLocationOfInterestMetrics *)v16 initWithDefaultsManager:defaultsManager distanceCalculator:distanceCalculator learnedLocationStore:learnedLocationStore locationStore:locationStore];

      v29 = 0;
      v21 = [v13 collectMetricsWithError:&v29];
      v14 = v29;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = @"NO";
          if (v21)
          {
            v23 = @"YES";
          }

          *buf = 138412546;
          v31 = v23;
          v32 = 2112;
          v33 = v14;
          _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "LOI metrics submission, success, %@, error, %@", buf, 0x16u);
        }
      }
    }

    goto LABEL_24;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    name4 = [notificationCopy name];
    *buf = 138412290;
    v31 = name4;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "unknown notification name, %@", buf, 0xCu);
  }

LABEL_30:
}

void __55__RTLearnedLocationEngine__onDailyMetricsNotification___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 32));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, transit analytics completed, error, %@", &v6, 0x16u);
    }
  }
}

- (void)onDailyMetricsNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTLearnedLocationEngine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__RTLearnedLocationEngine_onDailyMetricsNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)setMonitorFingerprints:(BOOL)fingerprints
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_monitorFingerprints != fingerprints)
  {
    fingerprintsCopy = fingerprints;
    self->_monitorFingerprints = fingerprints;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        if (self->_monitorFingerprints)
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "monitor fingerprints, %@", &v9, 0xCu);
      }

      if (!self->_monitorFingerprints)
      {
        goto LABEL_9;
      }
    }

    else if (!fingerprintsCopy)
    {
LABEL_9:
      fingerprintManager = [(RTLearnedLocationEngine *)self fingerprintManager];
      v8 = +[(RTNotification *)RTFingerprintManagerNotificationMonitorFingerprints];
      [fingerprintManager removeObserver:self fromNotification:v8];
LABEL_12:

      return;
    }

    fingerprintManager = [(RTLearnedLocationEngine *)self fingerprintManager];
    v8 = +[(RTNotification *)RTFingerprintManagerNotificationMonitorFingerprints];
    [fingerprintManager addObserver:self selector:sel_onFingerprintManagerNotification_ name:v8];
    goto LABEL_12;
  }
}

- (void)_onFingerprintManagerNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = +[(RTNotification *)RTFingerprintManagerNotificationMonitorFingerprints];
  v7 = [name isEqualToString:v6];

  if ((v7 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      name2 = [notificationCopy name];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = name2;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, unhandled notification, %@", &v11, 0x16u);
    }
  }
}

- (void)onFingerprintManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTLearnedLocationEngine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__RTLearnedLocationEngine_onFingerprintManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (BOOL)_momentsdOnBoarding
{
  v2 = CFPreferencesCopyValue(@"MOSensedEventCombinedSwitchLocation", @"com.apple.momentsd", @"mobile", *MEMORY[0x277CBF010]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFBooleanGetValue(v2) != 0;
  CFRelease(v3);
  return v4;
}

- (BOOL)_enableTrainOnBatteryForTripSegments
{
  v15 = *MEMORY[0x277D85DE8];
  defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"RTDefaultsTripSegmentGenerationEnabled"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = _os_feature_enabled_impl();
  }

  v6 = bOOLValue;
  defaultsManager2 = [(RTLearnedLocationEngine *)self defaultsManager];
  v8 = [defaultsManager2 objectForKey:@"RTDefaultsTripSegmentEnableTrainOnBattery"];

  if (v8)
  {
    bOOLValue2 = [v8 BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12[0] = 67109376;
      v12[1] = v6;
      v13 = 1024;
      v14 = bOOLValue2;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "LearnedLocationEngine:_enableTrainOnBatteryForTripSegments, tripSegmentGenerationIsEnabled, %d, tripSegmentEnableTrainOnBattery, %d.", v12, 0xEu);
    }
  }

  return v6 & bOOLValue2;
}

- (void)_onVisitManagerNotification:(id)notification
{
  v99[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTVisitManagerLowConfidenceVisitIncidentNotification];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    v9 = notificationCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = NSStringFromSelector(a2);
        visitIncident = [v9 visitIncident];
        *buf = 138412547;
        *&buf[4] = v11;
        *&buf[12] = 2117;
        *&buf[14] = visitIncident;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, lowConfidenceVisit, %{sensitive}@", buf, 0x16u);
      }
    }

    visitIncident2 = [v9 visitIncident];
    [(RTLearnedLocationEngine *)self _updateMonitorFingerprintsWithVisit:visitIncident2];

    goto LABEL_54;
  }

  name2 = [notificationCopy name];
  v15 = +[(RTNotification *)RTVisitManagerLeechedVisitIncidentNotification];
  v16 = [name2 isEqualToString:v15];

  if (v16)
  {
    v17 = notificationCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = NSStringFromSelector(a2);
        visitIncident3 = [v17 visitIncident];
        *buf = 138412547;
        *&buf[4] = v19;
        *&buf[12] = 2117;
        *&buf[14] = visitIncident3;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, leechedVisit, %{sensitive}@", buf, 0x16u);
      }
    }

    visitIncident4 = [v17 visitIncident];
    [(RTLearnedLocationEngine *)self _updateMonitorFingerprintsWithVisit:visitIncident4];

    defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
    v23 = [defaultsManager objectForKey:@"DisableXPCActivityForTrainOnBattery"];
    if (v23)
    {
      defaultsManager2 = [(RTLearnedLocationEngine *)self defaultsManager];
      v25 = [defaultsManager2 objectForKey:@"DisableXPCActivityForTrainOnBattery"];
      bOOLValue = [v25 BOOLValue];

      v27 = bOOLValue ^ 1;
    }

    else
    {
      v27 = 1;
    }

    _momentsdOnBoarding = [(RTLearnedLocationEngine *)self _momentsdOnBoarding];
    _enableTrainOnBatteryForTripSegments = [(RTLearnedLocationEngine *)self _enableTrainOnBatteryForTripSegments];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v55 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        v81 = NSStringFromSelector(a2);
        if (_momentsdOnBoarding)
        {
          v67 = @"YES";
        }

        else
        {
          v67 = @"NO";
        }

        if (_enableTrainOnBatteryForTripSegments)
        {
          v68 = @"YES";
        }

        else
        {
          v68 = @"NO";
        }

        v78 = v68;
        v79 = v67;
        if (v27)
        {
          v69 = @"NO";
        }

        else
        {
          v69 = @"YES";
        }

        v77 = v69;
        platform = [(RTLearnedLocationEngine *)self platform];
        iPhoneDevice = [platform iPhoneDevice];
        v71 = @"NO";
        if (iPhoneDevice)
        {
          v71 = @"YES";
        }

        visitIncident5 = [v17 visitIncident];
        exit = [visitIncident5 exit];
        v73 = @"NO";
        if (exit)
        {
          v73 = @"YES";
        }

        *buf = 138413570;
        *&buf[4] = v81;
        *&buf[12] = 2112;
        *&buf[14] = v79;
        *&buf[22] = 2112;
        v95 = v78;
        *v96 = 2112;
        *&v96[2] = v77;
        *&v96[10] = 2112;
        *&v96[12] = v76;
        v97 = 2112;
        v98 = v73;
        _os_log_debug_impl(&dword_2304B3000, v55, OS_LOG_TYPE_DEBUG, "%@, momentsdOnBoarding, %@, enableForTripSegments, %@, disableXPCActivityForTrainOnBattery, %@, iPhoneDevice, %@, exit, %@", buf, 0x3Eu);
      }
    }

    if (v27)
    {
      if (_momentsdOnBoarding)
      {
        platform2 = [(RTLearnedLocationEngine *)self platform];
        if ([platform2 iPhoneDevice])
        {
          visitIncident6 = [v17 visitIncident];
          exit2 = [visitIncident6 exit];
          v59 = exit2 == 0;

          if (!v59)
          {
            [(RTLearnedLocationEngine *)self setRegisterTrainOnBattery:1];
          }
        }

        else
        {
        }
      }

      if (_enableTrainOnBatteryForTripSegments)
      {
        platform3 = [(RTLearnedLocationEngine *)self platform];
        if ([platform3 iPhoneDevice])
        {
          visitIncident7 = [v17 visitIncident];
          entry = [visitIncident7 entry];
          v66 = entry == 0;

          if (!v66)
          {
            [(RTLearnedLocationEngine *)self setRegisterTrainOnBattery:1];
          }
        }

        else
        {
        }
      }
    }

    goto LABEL_54;
  }

  name3 = [notificationCopy name];
  v29 = +[(RTNotification *)RTVisitManagerAvailableNotification];
  v30 = [name3 isEqualToString:v29];

  if (v30)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v95 = __Block_byref_object_copy__41;
    *v96 = __Block_byref_object_dispose__41;
    *&v96[8] = 0;
    v87 = 0;
    v88 = &v87;
    v89 = 0x3032000000;
    v90 = __Block_byref_object_copy__41;
    v91 = __Block_byref_object_dispose__41;
    v92 = 0;
    v31 = dispatch_semaphore_create(0);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __55__RTLearnedLocationEngine__onVisitManagerNotification___block_invoke;
    v83[3] = &unk_2788C5C50;
    v85 = &v87;
    v86 = buf;
    v32 = v31;
    v84 = v32;
    [(RTLearnedLocationEngine *)self _fetchLatestVisitWithHandler:v83];
    v33 = v32;
    v34 = [MEMORY[0x277CBEAA8] now];
    v35 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v33, v35))
    {
      v36 = [MEMORY[0x277CBEAA8] now];
      [v36 timeIntervalSinceDate:v34];
      v38 = v37;
      v39 = objc_opt_new();
      v40 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v42 = [callStackSymbols filteredArrayUsingPredicate:v40];
      firstObject = [v42 firstObject];

      [v39 submitToCoreAnalytics:firstObject type:1 duration:v38];
      v44 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        *v93 = 0;
        _os_log_fault_impl(&dword_2304B3000, v44, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v93, 2u);
      }

      v45 = MEMORY[0x277CCA9B8];
      v99[0] = *MEMORY[0x277CCA450];
      *v93 = @"semaphore wait timeout";
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v99 count:1];
      v47 = [v45 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v46];

      if (v47)
      {
        v48 = v47;

        v49 = 0;
LABEL_35:

        v60 = v47;
        if ((v49 & 1) == 0)
        {
          objc_storeStrong(v88 + 5, v47);
        }

        if (v88[5])
        {
          v61 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v74 = v88[5];
            *v93 = 138412290;
            *&v93[4] = v74;
            _os_log_error_impl(&dword_2304B3000, v61, OS_LOG_TYPE_ERROR, "When trying to fetch the last visit at start-up, got error %@", v93, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v62 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              v75 = *(*&buf[8] + 40);
              *v93 = 138739971;
              *&v93[4] = v75;
              _os_log_debug_impl(&dword_2304B3000, v62, OS_LOG_TYPE_DEBUG, "Start up LLE with last visit %{sensitive}@", v93, 0xCu);
            }
          }

          [(RTLearnedLocationEngine *)self _updateMonitorFingerprintsWithVisit:*(*&buf[8] + 40)];
        }

        _Block_object_dispose(&v87, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_54;
      }
    }

    else
    {
      v47 = 0;
    }

    v49 = 1;
    goto LABEL_35;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = NSStringFromSelector(a2);
      name4 = [notificationCopy name];
      *buf = 138412546;
      *&buf[4] = v51;
      *&buf[12] = 2112;
      *&buf[14] = name4;
      _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "%@, unhandled notification, %@", buf, 0x16u);
    }
  }

LABEL_54:
}

void __55__RTLearnedLocationEngine__onVisitManagerNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_updateMonitorFingerprintsWithVisit:(id)visit
{
  v30 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  if ([visitCopy type] != 1 && objc_msgSend(visitCopy, "type") != 2)
  {
    selfCopy2 = self;
    v16 = 0;
    goto LABEL_10;
  }

  placeInference = [visitCopy placeInference];
  mapItem = [placeInference mapItem];

  if (mapItem)
  {
    v22 = 0;
    v23 = 0;
    learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
    placeInference2 = [visitCopy placeInference];
    mapItem2 = [placeInference2 mapItem];
    v21 = 0;
    v11 = [learnedLocationStore placeTypeForMapItem:mapItem2 placeType:&v23 placeTypeSource:&v22 error:&v21];
    v12 = v21;

    if (v11)
    {
      if (!v23)
      {

        goto LABEL_7;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = NSStringFromSelector(a2);
        placeInference3 = [visitCopy placeInference];
        mapItem3 = [placeInference3 mapItem];
        *buf = 138412803;
        v25 = v18;
        v26 = 2117;
        v27 = mapItem3;
        v28 = 2112;
        v29 = v12;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, failed to fetch placeType for mapItem, %{sensitive}@, error, %@", buf, 0x20u);
      }
    }

    [(RTLearnedLocationEngine *)self setMonitorFingerprints:0];

    goto LABEL_16;
  }

LABEL_7:
  platform = [(RTLearnedLocationEngine *)self platform];
  iPhonePlatform = [platform iPhonePlatform];

  if (iPhonePlatform)
  {
    selfCopy2 = self;
    v16 = 1;
LABEL_10:
    [(RTLearnedLocationEngine *)selfCopy2 setMonitorFingerprints:v16];
  }

LABEL_16:
}

- (void)onVisitManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTLearnedLocationEngine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__RTLearnedLocationEngine_onVisitManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = [(RTLearnedLocationEngine *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTLearnedLocationEngine_performPurgeOfType_referenceDate_completion___block_invoke;
  block[3] = &unk_2788C47A8;
  v16 = completionCopy;
  typeCopy = type;
  block[4] = self;
  v15 = dateCopy;
  v18 = a2;
  v12 = dateCopy;
  v13 = completionCopy;
  dispatch_async(queue, block);
}

void __71__RTLearnedLocationEngine_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) willBeginTraining];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__RTLearnedLocationEngine_performPurgeOfType_referenceDate_completion___block_invoke_2;
  aBlock[3] = &unk_2788C4F60;
  aBlock[4] = *(a1 + 32);
  v32 = *(a1 + 48);
  v2 = _Block_copy(aBlock);
  v3 = v2;
  v4 = *(a1 + 56);
  switch(v4)
  {
    case 0:
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v27 = 0;
      [v20 _purgeWithReferenceDate:v21 error:&v27];
      v7 = v27;
      (v3)[2](v3, v7);
      goto LABEL_15;
    case 3:
      v8 = [*(*(a1 + 32) + 88) objectForKey:@"RefreshMapItems"];
      if ([v8 BOOLValue])
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(*(a1 + 64));
        v13 = [v9 stringWithFormat:@"%@-%@", v11, v12];
        [v13 UTF8String];
        v14 = os_transaction_create();

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            v24 = NSStringFromSelector(*(a1 + 64));
            *buf = 138412546;
            v34 = v23;
            v35 = 2112;
            v36 = v24;
            _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
          }
        }

        v16 = *(*(a1 + 32) + 176);
        v17 = *(a1 + 32);
        v18 = *(v17 + 128);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __71__RTLearnedLocationEngine_performPurgeOfType_referenceDate_completion___block_invoke_852;
        v25[3] = &unk_2788C8BB0;
        v25[4] = v17;
        v26 = v16;
        v19 = v16;
        v7 = [v18 refreshMapItemsWithEnumerationBlock:v25];
      }

      else
      {
        v7 = 0;
      }

      (v3)[2](v3, v7);

      goto LABEL_15;
    case 1:
      v5 = [MEMORY[0x277CBEAA8] date];
      v6 = [*(a1 + 32) learnedLocationStore];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __71__RTLearnedLocationEngine_performPurgeOfType_referenceDate_completion___block_invoke_3;
      v28[3] = &unk_2788C4EC8;
      v28[4] = *(a1 + 32);
      v29 = v5;
      v30 = v3;
      v7 = v5;
      [v6 clearWithHandler:v28];

LABEL_15:
      goto LABEL_16;
  }

  (*(v2 + 2))(v2, 0);
LABEL_16:
}

void __71__RTLearnedLocationEngine_performPurgeOfType_referenceDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) didFinishTraining];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __71__RTLearnedLocationEngine_performPurgeOfType_referenceDate_completion___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__RTLearnedLocationEngine_performPurgeOfType_referenceDate_completion___block_invoke_4;
  v8[3] = &unk_2788C5530;
  v9 = v3;
  v5 = a1[5];
  v6 = a1[4];
  v10 = v5;
  v11 = v6;
  v12 = a1[6];
  v7 = v3;
  dispatch_async(v4, v8);
}

uint64_t __71__RTLearnedLocationEngine_performPurgeOfType_referenceDate_completion___block_invoke_4(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = [MEMORY[0x277CBEAA8] date];
      [v4 timeIntervalSinceDate:*(a1 + 40)];
      v7 = 138412546;
      v8 = v3;
      v9 = 2048;
      v10 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "cleared learned locations, error, %@, latency, %.2f", &v7, 0x16u);
    }
  }

  [*(a1 + 48) didClear];
  return (*(*(a1 + 56) + 16))();
}

id __71__RTLearnedLocationEngine_performPurgeOfType_referenceDate_completion___block_invoke_852(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__41;
  v50 = __Block_byref_object_dispose__41;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__41;
  v44 = __Block_byref_object_dispose__41;
  v45 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = objc_alloc(MEMORY[0x277D011B0]);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 initWithUseBackgroundTraits:1 analyticsIdentifier:v7];

  v9 = *(a1 + 40);
  v10 = [v3 geoMapItemHandle];
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __71__RTLearnedLocationEngine_performPurgeOfType_referenceDate_completion___block_invoke_2_853;
  v36 = &unk_2788C61E8;
  v38 = &v46;
  v39 = &v40;
  v11 = v4;
  v37 = v11;
  [v9 fetchMapItemFromHandle:v10 options:v8 handler:&v33];

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    v20 = [MEMORY[0x277CCACC8] callStackSymbols];
    v21 = [v20 filteredArrayUsingPredicate:v19];
    v22 = [v21 firstObject];

    [v18 submitToCoreAnalytics:v22 type:1 duration:v17];
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v24 = MEMORY[0x277CCA9B8];
    v53 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v53 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

    if (v26)
    {
      v27 = v26;
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = v26;
  v29 = v41[5];
  if (v29 && !v47[5])
  {
    v52[0] = @"source";
    v52[1] = @"extendedAttributes";
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
    v30 = [v3 mergeWithMapItem:v29 preservingProperties:v31];
  }

  else
  {
    v30 = v3;
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  return v30;
}

void __71__RTLearnedLocationEngine_performPurgeOfType_referenceDate_completion___block_invoke_2_853(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_setupTrainingMetricsFromDate:(id)date toDate:(id)toDate mode:(unint64_t)mode reason:(unint64_t)reason
{
  v61 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  toDateCopy = toDate;
  v8 = objc_opt_new();
  [(RTLearnedLocationEngine *)self setTrainingMetrics:v8];

  defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
  v10 = [defaultsManager objectForKey:@"LearnedLocationEngineTrainVisitsLastAttemptDate"];

  if (v10)
  {
    defaultsManager = [MEMORY[0x277CBEAA8] date];
    [defaultsManager timeIntervalSinceDate:v10];
    v12 = v11;
  }

  else
  {
    v12 = INFINITY;
  }

  trainingMetrics = [(RTLearnedLocationEngine *)self trainingMetrics];
  [trainingMetrics setIntervalSinceLastAttempt:v12];

  if (v10)
  {
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0x7FF0000000000000;
  v14 = dispatch_semaphore_create(0);
  v15 = [RTLocationStoreMetricOptions alloc];
  v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:toDateCopy];
  v44 = [(RTLocationStoreMetricOptions *)v15 initWithDateInterval:v16 uncertaintyThreshold:1.79769313e308];

  locationStore = [(RTLearnedLocationEngine *)self locationStore];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __76__RTLearnedLocationEngine__setupTrainingMetricsFromDate_toDate_mode_reason___block_invoke;
  v47[3] = &unk_2788C8BD8;
  v49 = &v55;
  v50 = &v51;
  v18 = v14;
  v48 = v18;
  [locationStore fetchMetricsWithOptions:v44 handler:v47];

  v19 = v18;
  v20 = [MEMORY[0x277CBEAA8] now];
  v21 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v19, v21))
  {
    v22 = [MEMORY[0x277CBEAA8] now];
    [v22 timeIntervalSinceDate:v20];
    v24 = v23;
    v25 = objc_opt_new();
    v26 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v28 = [callStackSymbols filteredArrayUsingPredicate:v26];
    firstObject = [v28 firstObject];

    [v25 submitToCoreAnalytics:firstObject type:1 duration:v24];
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v30, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v31 = MEMORY[0x277CCA9B8];
    v59 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v59 count:1];
    v33 = [v31 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v32];

    if (v33)
    {
      v34 = v33;
    }
  }

  else
  {
    v33 = 0;
  }

  v35 = v33;
  v36 = v56[3];
  trainingMetrics2 = [(RTLearnedLocationEngine *)self trainingMetrics];
  [trainingMetrics2 setLocationsProcessed:v36];

  v38 = v52[3];
  trainingMetrics3 = [(RTLearnedLocationEngine *)self trainingMetrics];
  [trainingMetrics3 setMaxIntervalBetweenLocations:v38];

  trainingMetrics4 = [(RTLearnedLocationEngine *)self trainingMetrics];
  [trainingMetrics4 setMode:mode];

  trainingMetrics5 = [(RTLearnedLocationEngine *)self trainingMetrics];
  [trainingMetrics5 setReason:reason];

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
}

intptr_t __76__RTLearnedLocationEngine__setupTrainingMetricsFromDate_toDate_mode_reason___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  *(*(a1[5] + 8) + 24) = [v3 count];
  [v3 maxIntervalBetweenLocations];
  v5 = v4;

  *(*(a1[6] + 8) + 24) = v5;
  v6 = a1[4];

  return dispatch_semaphore_signal(v6);
}

- (void)_teardownTrainingMetrics
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __51__RTLearnedLocationEngine__teardownTrainingMetrics__block_invoke;
  v28[3] = &unk_2788C8C00;
  v28[4] = self;
  v5 = v3;
  v29 = v5;
  [learnedLocationStore fetchMetricsWithHandler:v28];

  v6 = v5;
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v6, v8))
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    [v9 timeIntervalSinceDate:v7];
    v11 = v10;
    v12 = objc_opt_new();
    v13 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v15 = [callStackSymbols filteredArrayUsingPredicate:v13];
    firstObject = [v15 firstObject];

    [v12 submitToCoreAnalytics:firstObject type:1 duration:v11];
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v17, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D01448];
    v31[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v31 count:1];
    v21 = [v18 errorWithDomain:v19 code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;
    }
  }

  trainingMetrics = [(RTLearnedLocationEngine *)self trainingMetrics];
  [(RTLearnedLocationEngine *)self setTrainingMetrics:0];
  if (trainingMetrics)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = trainingMetrics;
        _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "submitting metrics, %@", buf, 0xCu);
      }
    }

    metricManager = [(RTLearnedLocationEngine *)self metricManager];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __51__RTLearnedLocationEngine__teardownTrainingMetrics__block_invoke_865;
    v26[3] = &unk_2788C53F0;
    v26[4] = self;
    v27 = trainingMetrics;
    [metricManager fetchDiagnosticsEnabled:v26];
  }
}

intptr_t __51__RTLearnedLocationEngine__teardownTrainingMetrics__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 visitCountDevice];
  v5 = [*(a1 + 32) trainingMetrics];
  [v5 setVisitCountDevice:v4];

  v6 = [v3 visitCountTotal];
  v7 = [*(a1 + 32) trainingMetrics];
  [v7 setVisitCountTotal:v6];

  v8 = [v3 placeCountDevice];
  v9 = [*(a1 + 32) trainingMetrics];
  [v9 setPlaceCountDevice:v8];

  v10 = [v3 placeCountTotal];
  v11 = [*(a1 + 32) trainingMetrics];
  [v11 setPlaceCountTotal:v10];

  v12 = *(a1 + 40);

  return dispatch_semaphore_signal(v12);
}

void __51__RTLearnedLocationEngine__teardownTrainingMetrics__block_invoke_865(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RTLearnedLocationEngine__teardownTrainingMetrics__block_invoke_2;
  block[3] = &unk_2788C53C8;
  v10 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v4, block);
}

void __51__RTLearnedLocationEngine__teardownTrainingMetrics__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v11 = v1;
    v12 = v2;
    v4 = [objc_alloc(MEMORY[0x277D81858]) initWithLearnedLocationEngineMetrics:*(a1 + 32)];
    v5 = [*(a1 + 40) metricManager];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__RTLearnedLocationEngine__teardownTrainingMetrics__block_invoke_3;
    v9[3] = &unk_2788C4730;
    v10 = v4;
    v6 = v4;
    [v5 submitMetric:v6 withHandler:v9];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "Submitting Learned Location Engine Training CoreAnalytics Metrics", v8, 2u);
      }
    }

    [*(a1 + 32) submitToCoreAnalytics];
  }
}

void __51__RTLearnedLocationEngine__teardownTrainingMetrics__block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "submitted metrics, %@, error, %@", &v6, 0x16u);
    }
  }
}

- (void)_logCloudStoreWithReason:(id)reason
{
  v31 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v6 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __52__RTLearnedLocationEngine__logCloudStoreWithReason___block_invoke;
  v26[3] = &unk_2788C4D10;
  v28 = a2;
  v8 = v6;
  v27 = v8;
  [learnedLocationStore logCloudStoreWithReason:reasonCopy handler:v26];

  v9 = v8;
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceDate:v10];
    v14 = v13;
    v15 = objc_opt_new();
    v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v18 = [callStackSymbols filteredArrayUsingPredicate:v16];
    firstObject = [v18 firstObject];

    [v15 submitToCoreAnalytics:firstObject type:1 duration:v14];
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277D01448];
    v29 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v29 count:1];
    v24 = [v21 errorWithDomain:v22 code:15 userInfo:v23];

    if (v24)
    {
      v25 = v24;
    }
  }
}

void __52__RTLearnedLocationEngine__logCloudStoreWithReason___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, failed to log cloud stores, %@", &v6, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_logLocalStoreWithReason:(id)reason
{
  v31 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v6 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __52__RTLearnedLocationEngine__logLocalStoreWithReason___block_invoke;
  v26[3] = &unk_2788C4D10;
  v28 = a2;
  v8 = v6;
  v27 = v8;
  [learnedLocationStore logLocalStoreWithReason:reasonCopy handler:v26];

  v9 = v8;
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceDate:v10];
    v14 = v13;
    v15 = objc_opt_new();
    v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v18 = [callStackSymbols filteredArrayUsingPredicate:v16];
    firstObject = [v18 firstObject];

    [v15 submitToCoreAnalytics:firstObject type:1 duration:v14];
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277D01448];
    v29 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v29 count:1];
    v24 = [v21 errorWithDomain:v22 code:15 userInfo:v23];

    if (v24)
    {
      v25 = v24;
    }
  }
}

void __52__RTLearnedLocationEngine__logLocalStoreWithReason___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, failed to log local stores, %@", &v6, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_logDatabasesWithReason:(id)reason
{
  v9 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = reasonCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "start logging databases with reason, %@", &v7, 0xCu);
    }
  }

  [(RTLearnedLocationEngine *)self _logCloudStoreWithReason:0];
  [(RTLearnedLocationEngine *)self _logLocalStoreWithReason:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = reasonCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "end logging databases with reason, %@", &v7, 0xCu);
    }
  }
}

- (BOOL)_retrainVisitsWithoutPlaces:(id *)places
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__41;
  v66 = __Block_byref_object_dispose__41;
  v67 = 0;
  v6 = dispatch_semaphore_create(0);
  selfCopy = self;
  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __55__RTLearnedLocationEngine__retrainVisitsWithoutPlaces___block_invoke;
  v57[3] = &unk_2788C8C28;
  v61 = a2;
  v8 = v5;
  v58 = v8;
  v60 = &v62;
  v9 = v6;
  v59 = v9;
  [learnedLocationStore fetchVisitsWithoutPlacesForCurrentDeviceWithHandler:v57 limit:0];

  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v11];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [callStackSymbols filteredArrayUsingPredicate:v17];
    firstObject = [v19 firstObject];

    [v16 submitToCoreAnalytics:firstObject type:1 duration:v15];
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    *v75 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v75 count:1];
    v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

    if (v24)
    {
      v25 = v24;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = v24;
  v27 = v63[5];
  if (v27)
  {
    v28 = 0;
    if (places)
    {
      *places = v27;
    }
  }

  else
  {
    *buf = 0;
    v69 = buf;
    v70 = 0x3032000000;
    v71 = __Block_byref_object_copy__41;
    v72 = __Block_byref_object_dispose__41;
    v73 = 0;

    v29 = dispatch_semaphore_create(0);
    learnedLocationStore2 = [(RTLearnedLocationEngine *)selfCopy learnedLocationStore];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __55__RTLearnedLocationEngine__retrainVisitsWithoutPlaces___block_invoke_867;
    v52[3] = &unk_2788C8C28;
    v56 = a2;
    v31 = v8;
    v53 = v31;
    v55 = buf;
    v32 = v29;
    v54 = v32;
    [learnedLocationStore2 fetchVisitsWithIncompletePlacesForCurrentDeviceWithHandler:v52];

    v10 = v32;
    v33 = [MEMORY[0x277CBEAA8] now];
    v34 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v10, v34))
    {
      v35 = [MEMORY[0x277CBEAA8] now];
      [v35 timeIntervalSinceDate:v33];
      v37 = v36;
      v38 = objc_opt_new();
      v39 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
      v41 = [callStackSymbols2 filteredArrayUsingPredicate:v39];
      firstObject2 = [v41 firstObject];

      [v38 submitToCoreAnalytics:firstObject2 type:1 duration:v37];
      v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
      {
        *v75 = 0;
        _os_log_fault_impl(&dword_2304B3000, v43, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v75, 2u);
      }

      v44 = MEMORY[0x277CCA9B8];
      v74 = *MEMORY[0x277CCA450];
      *v75 = @"semaphore wait timeout";
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:&v74 count:1];
      v46 = [v44 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v45];

      if (v46)
      {
        v47 = v46;
      }
    }

    else
    {
      v46 = 0;
    }

    v26 = v46;
    v48 = *(v69 + 5);
    v28 = v48 == 0;
    if (v48)
    {
      if (places)
      {
        *places = v48;
      }
    }

    else
    {
      [(RTLearnedLocationEngine *)selfCopy _updateUnlabeledVisitsWithPlaceInformation:v31];
    }

    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v62, 8);
  return v28;
}

void __55__RTLearnedLocationEngine__retrainVisitsWithoutPlaces___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 56));
      v12 = 138412546;
      v13 = v8;
      v14 = 2048;
      v15 = [v5 count];
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %lu visits without places", &v12, 0x16u);
    }
  }

  [*(a1 + 32) addObjectsFromArray:v5];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __55__RTLearnedLocationEngine__retrainVisitsWithoutPlaces___block_invoke_867(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 56));
      v12 = 138412546;
      v13 = v8;
      v14 = 2048;
      v15 = [v5 count];
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %lu visits with incomplete places", &v12, 0x16u);
    }
  }

  [*(a1 + 32) addObjectsFromArray:v5];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_removeUnusedMapItems:(id *)items
{
  v38 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__41;
  v34 = __Block_byref_object_dispose__41;
  v35 = 0;
  v5 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __49__RTLearnedLocationEngine__removeUnusedMapItems___block_invoke;
  v27[3] = &unk_2788C4618;
  v29 = &v30;
  v7 = v5;
  v28 = v7;
  [learnedLocationStore removeUnreferencedMapItems:v27];

  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
    firstObject = [v17 firstObject];

    [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v36 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;
    }
  }

  v24 = v31[5];
  if (items && v24)
  {
    v24 = v24;
    *items = v24;
  }

  v25 = v24 == 0;

  _Block_object_dispose(&v30, 8);
  return v25;
}

void __49__RTLearnedLocationEngine__removeUnusedMapItems___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_appendVisitsToLocationsOfInterestModelWithError:(id *)error
{
  v111[1] = *MEMORY[0x277D85DE8];
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__41;
  v94 = __Block_byref_object_dispose__41;
  v95 = 0;
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__41;
  v88 = __Block_byref_object_dispose__41;
  v89 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__41;
  v82 = __Block_byref_object_dispose__41;
  v83 = 0;
  v4 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __76__RTLearnedLocationEngine__appendVisitsToLocationsOfInterestModelWithError___block_invoke;
  v72[3] = &unk_2788C8C50;
  v75 = &v90;
  v76 = &v78;
  v6 = v4;
  v73 = v6;
  selfCopy = self;
  v77 = &v84;
  [learnedLocationStore fetchLocationOfInterestVisitedLastWithHandler:v72];

  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = [callStackSymbols filteredArrayUsingPredicate:v14];
    firstObject = [v16 firstObject];

    [v13 submitToCoreAnalytics:firstObject type:1 duration:v12];
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v105 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v105 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;

      v23 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = 1;
LABEL_8:

  v24 = v21;
  if ((v23 & 1) == 0)
  {
    objc_storeStrong(v79 + 5, v21);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = NSStringFromSelector(a2);
      v27 = v91[5];
      v28 = v85[5];
      v29 = v79[5];
      *buf = 138413059;
      *&buf[4] = v26;
      v97 = 2117;
      v98 = v27;
      v99 = 2112;
      v100 = v28;
      v101 = 2112;
      v102 = v29;
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, LOI graph, last visit, %{sensitive}@, last transition, %@, error, %@", buf, 0x2Au);
    }
  }

  v30 = v79[5];
  if (v30)
  {
    v31 = 0;
    if (error)
    {
      *error = v30;
    }
  }

  else
  {
    v32 = objc_alloc(MEMORY[0x277CCA970]);
    exitDate = [v91[5] exitDate];
    distantPast = exitDate;
    if (!exitDate)
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v65 = [v32 initWithStartDate:distantPast endDate:distantFuture];

    if (!exitDate)
    {
    }

    v36 = dispatch_semaphore_create(0);
    v105 = 0;
    v106 = &v105;
    v107 = 0x3032000000;
    v108 = __Block_byref_object_copy__41;
    v109 = __Block_byref_object_dispose__41;
    v110 = 0;
    learnedLocationStore2 = [(RTLearnedLocationEngine *)self learnedLocationStore];
    predicateForObjectsFromCurrentDevice = [(RTLearnedLocationStore *)self->_learnedLocationStore predicateForObjectsFromCurrentDevice];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __76__RTLearnedLocationEngine__appendVisitsToLocationsOfInterestModelWithError___block_invoke_869;
    v68[3] = &unk_2788C4490;
    v70 = &v78;
    v71 = &v105;
    v39 = v36;
    v69 = v39;
    [learnedLocationStore2 fetchVisitsWithPredicate:predicateForObjectsFromCurrentDevice ascending:1 dateInterval:v65 limit:0 handler:v68];

    v7 = v39;
    v40 = [MEMORY[0x277CBEAA8] now];
    v41 = dispatch_time(0, 3600000000000);
    if (!dispatch_semaphore_wait(v7, v41))
    {
      goto LABEL_27;
    }

    v42 = [MEMORY[0x277CBEAA8] now];
    [v42 timeIntervalSinceDate:v40];
    v44 = v43;
    v45 = objc_opt_new();
    v46 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
    v48 = [callStackSymbols2 filteredArrayUsingPredicate:v46];
    firstObject2 = [v48 firstObject];

    [v45 submitToCoreAnalytics:firstObject2 type:1 duration:v44];
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v50, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v51 = MEMORY[0x277CCA9B8];
    v111[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v111 count:1];
    v53 = [v51 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v52];

    if (v53)
    {
      v54 = v53;

      v55 = 0;
    }

    else
    {
LABEL_27:
      v55 = 1;
      v53 = v24;
    }

    v56 = v53;
    if ((v55 & 1) == 0)
    {
      objc_storeStrong(v79 + 5, v53);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v57 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        v58 = NSStringFromSelector(a2);
        v59 = [v106[5] count];
        firstObject3 = [v106[5] firstObject];
        lastObject = [v106[5] lastObject];
        v62 = v79[5];
        *buf = 138413315;
        *&buf[4] = v58;
        v97 = 2048;
        v98 = v59;
        v99 = 2117;
        v100 = firstObject3;
        v101 = 2117;
        v102 = lastObject;
        v103 = 2112;
        v104 = v62;
        _os_log_impl(&dword_2304B3000, v57, OS_LOG_TYPE_INFO, "%@, new visit count, %lu, first visit, %{sensitive}@, last visit, %{sensitive}@, error, %@", buf, 0x34u);
      }
    }

    v63 = v79[5];
    if (v63)
    {
      v31 = 0;
      if (error)
      {
        *error = v63;
      }
    }

    else if ([v106[5] count])
    {
      v31 = [(RTLearnedLocationEngine *)self _appendVisits:v106[5] lastVisit:v91[5] lastTransition:v85[5] outError:error];
    }

    else
    {
      v31 = 1;
    }

    _Block_object_dispose(&v105, 8);
    v24 = v56;
  }

  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v84, 8);

  _Block_object_dispose(&v90, 8);
  return v31;
}

void __76__RTLearnedLocationEngine__appendVisitsToLocationsOfInterestModelWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v7 = [a2 visits];
  v8 = [v7 lastObject];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  else if (*(*(*(a1 + 48) + 8) + 40))
  {
    v11 = [*(a1 + 40) learnedLocationStore];
    v12 = [*(*(*(a1 + 48) + 8) + 40) identifier];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__RTLearnedLocationEngine__appendVisitsToLocationsOfInterestModelWithError___block_invoke_2;
    v13[3] = &unk_2788C87F0;
    v15 = *(a1 + 56);
    v14 = *(a1 + 32);
    [v11 fetchTransitionWithOriginIdentifier:v12 handler:v13];

    goto LABEL_6;
  }

  dispatch_semaphore_signal(*(a1 + 32));
LABEL_6:
}

void __76__RTLearnedLocationEngine__appendVisitsToLocationsOfInterestModelWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __76__RTLearnedLocationEngine__appendVisitsToLocationsOfInterestModelWithError___block_invoke_869(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = a3;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_appendVisits:(id)visits lastVisit:(id)visit lastTransition:(id)transition outError:(id *)error
{
  v82 = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  visitCopy = visit;
  transitionCopy = transition;
  if ([visitsCopy count])
  {
    aSelector = a2;
    v42 = objc_opt_new();
    v38 = objc_opt_new();
    v41 = objc_opt_new();
    v40 = objc_opt_new();
    v39 = objc_opt_new();
    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = __Block_byref_object_copy__41;
    v72 = __Block_byref_object_dispose__41;
    v73 = 0;
    v11 = dispatch_group_create();
    for (i = 0; i < [visitsCopy count]; ++i)
    {
      v13 = [visitsCopy objectAtIndexedSubscript:i];
      dispatch_group_enter(v11);
      learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
      identifier = [v13 identifier];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __75__RTLearnedLocationEngine__appendVisits_lastVisit_lastTransition_outError___block_invoke;
      v60[3] = &unk_2788C8C78;
      v66 = &v68;
      v67 = i;
      v61 = visitCopy;
      v62 = transitionCopy;
      v16 = v13;
      v63 = v16;
      v64 = v42;
      v17 = v11;
      v65 = v17;
      [learnedLocationStore fetchTransitionWithDestinationIdentifier:identifier handler:v60];

      dispatch_group_enter(v17);
      learnedLocationStore2 = [(RTLearnedLocationEngine *)self learnedLocationStore];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __75__RTLearnedLocationEngine__appendVisits_lastVisit_lastTransition_outError___block_invoke_2;
      v51[3] = &unk_2788C8CC8;
      v59 = &v68;
      v52 = v17;
      v53 = v38;
      v19 = v16;
      v54 = v19;
      selfCopy = self;
      v56 = v41;
      v57 = v40;
      v58 = v39;
      [learnedLocationStore2 fetchPlaceOfVisit:v19 handler:v51];
    }

    dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    v20 = v69[5];
    if (v20)
    {
      v21 = 0;
      if (error)
      {
        *error = v20;
      }
    }

    else
    {
      v22 = [(RTLearnedLocationEngine *)self _updateLocationOfInterestsWithVisits:v40 visitToTransitionMapping:v42 visitToLocationOfInterestMapping:v41];
      v23 = [(RTLearnedLocationEngine *)self _createLocationOfInterestsWithVisits:v39 visitToTransitionMapping:v42 visitToPlaceMapping:v38];
      v24 = dispatch_group_create();
      dispatch_group_enter(v24);
      learnedLocationStore3 = [(RTLearnedLocationEngine *)self learnedLocationStore];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __75__RTLearnedLocationEngine__appendVisits_lastVisit_lastTransition_outError___block_invoke_4;
      v48[3] = &unk_2788C4618;
      v50 = &v68;
      v26 = v24;
      v49 = v26;
      [learnedLocationStore3 updateLocationsOfInterest:v22 handler:v48];

      dispatch_group_enter(v26);
      learnedLocationStore4 = [(RTLearnedLocationEngine *)self learnedLocationStore];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __75__RTLearnedLocationEngine__appendVisits_lastVisit_lastTransition_outError___block_invoke_5;
      v45[3] = &unk_2788C4618;
      v47 = &v68;
      v28 = v26;
      v46 = v28;
      [learnedLocationStore4 storeLocationsOfInterest:v23 handler:v45];

      dispatch_group_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = NSStringFromSelector(aSelector);
          v31 = [v22 count];
          v32 = [v23 count];
          v33 = v69[5];
          *buf = 138413058;
          v75 = v30;
          v76 = 2048;
          v77 = v31;
          v78 = 2048;
          v79 = v32;
          v80 = 2112;
          v81 = v33;
          _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@, updated locationOfInterest count, %lu, new locationOfInterest count, %lu, error, %@", buf, 0x2Au);
        }
      }

      v34 = v69[5];
      v21 = v34 == 0;
      if (error && v34)
      {
        *error = v34;
      }
    }

    _Block_object_dispose(&v68, 8);
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

void __75__RTLearnedLocationEngine__appendVisits_lastVisit_lastTransition_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  }

  if (*(a1 + 80))
  {
    v6 = v21;
  }

  else
  {
    v6 = v21;
    if (*(a1 + 32))
    {
      if (v21)
      {
        v7 = [v21 predominantMotionActivityType];
      }

      else
      {
        v7 = 0;
      }

      v8 = *(a1 + 40);
      if (v8)
      {
        v9 = [v8 predominantMotionActivityType];
        if (v9 != [v21 predominantMotionActivityType])
        {
          v7 = 0;
        }
      }

      v20 = [RTLearnedTransition alloc];
      v10 = [MEMORY[0x277CCAD78] UUID];
      v11 = [*(a1 + 32) exitDate];
      v12 = [*(a1 + 48) entryDate];
      v13 = [*(a1 + 32) identifier];
      v14 = [*(a1 + 48) identifier];
      v15 = [MEMORY[0x277CBEAA8] now];
      v16 = [*(a1 + 48) expirationDate];
      v17 = [(RTLearnedTransition *)v20 initWithIdentifier:v10 startDate:v11 stopDate:v12 visitIdentifierOrigin:v13 visitIdentifierDestination:v14 creationDate:v15 expirationDate:v16 predominantMotionActivityType:v7];

      v6 = v17;
    }
  }

  v22 = v6;
  if (v6)
  {
    v18 = *(a1 + 56);
    v19 = [*(a1 + 48) identifier];
    [v18 setObject:v22 forKey:v19];
  }

  dispatch_group_leave(*(a1 + 64));
}

void __75__RTLearnedLocationEngine__appendVisits_lastVisit_lastTransition_outError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 88) + 8) + 40), a3);
  }

  else
  {
    v7 = [v5 mapItem];

    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) identifier];
      [v8 setObject:v5 forKey:v9];

      v10 = [*(a1 + 56) learnedLocationStore];
      v11 = [v5 mapItem];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __75__RTLearnedLocationEngine__appendVisits_lastVisit_lastTransition_outError___block_invoke_3;
      v12[3] = &unk_2788C8CA0;
      v18 = *(a1 + 88);
      v13 = *(a1 + 64);
      v14 = *(a1 + 48);
      v15 = *(a1 + 72);
      v16 = *(a1 + 80);
      v17 = *(a1 + 32);
      [v10 fetchLocationOfInterestWithMapItem:v11 handler:v12];

      goto LABEL_6;
    }
  }

  dispatch_group_leave(*(a1 + 32));
LABEL_6:
}

void __75__RTLearnedLocationEngine__appendVisits_lastVisit_lastTransition_outError___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  }

  v6 = *(a1 + 40);
  if (v10)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) identifier];
    [v7 setObject:v10 forKey:v8];

    v6 = *(a1 + 40);
    v9 = *(a1 + 48);
  }

  else
  {
    v9 = *(a1 + 56);
  }

  [v9 addObject:v6];
  dispatch_group_leave(*(a1 + 64));
}

void __75__RTLearnedLocationEngine__appendVisits_lastVisit_lastTransition_outError___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __75__RTLearnedLocationEngine__appendVisits_lastVisit_lastTransition_outError___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (id)_updateLocationOfInterestsWithVisits:(id)visits visitToTransitionMapping:(id)mapping visitToLocationOfInterestMapping:(id)interestMapping
{
  v48 = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  mappingCopy = mapping;
  interestMappingCopy = interestMapping;
  v31 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = visitsCopy;
  v36 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v36)
  {
    v33 = *v38;
    *&v8 = 138412803;
    v29 = v8;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v38 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [interestMappingCopy objectForKey:identifier];

        identifier2 = [v10 identifier];
        v14 = [mappingCopy objectForKey:identifier2];

        if (v12)
        {
          v15 = MEMORY[0x277CBEB18];
          visits = [v12 visits];
          v17 = [v15 arrayWithArray:visits];

          [v17 addObject:v10];
          v18 = MEMORY[0x277CBEB18];
          transitions = [v12 transitions];
          v20 = [v18 arrayWithArray:transitions];

          if (v14)
          {
            [v20 addObject:v14];
          }

          v21 = [RTLearnedLocationOfInterest alloc];
          identifier3 = [v12 identifier];
          location = [v12 location];
          place = [v12 place];
          v25 = [(RTLearnedLocationOfInterest *)v21 initWithIdentifier:identifier3 location:location place:place visits:v17 transitions:v20];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v26 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v27 = NSStringFromSelector(a2);
              *buf = v29;
              v42 = v27;
              v43 = 2117;
              v44 = v12;
              v45 = 2117;
              v46 = v25;
              _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, LOI, %{sensitive}@, updated LOI, %{sensitive}@", buf, 0x20u);
            }
          }

          if (v25)
          {
            [v31 addObject:v25];
          }
        }
      }

      v36 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v36);
  }

  return v31;
}

- (id)_createLocationOfInterestsWithVisits:(id)visits visitToTransitionMapping:(id)mapping visitToPlaceMapping:(id)placeMapping
{
  v101 = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  mappingCopy = mapping;
  placeMappingCopy = placeMapping;
  v82 = objc_opt_new();
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = visitsCopy;
  v83 = [obj countByEnumeratingWithState:&v86 objects:v100 count:16];
  if (v83)
  {
    v80 = *v87;
    *&v9 = 138412803;
    v67 = v9;
    v79 = mappingCopy;
    do
    {
      for (i = 0; i != v83; ++i)
      {
        if (*v87 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v86 + 1) + 8 * i);
        identifier = [(RTLearnedLocationOfInterest *)v11 identifier];
        v13 = [placeMappingCopy objectForKey:identifier];

        if (v13)
        {
          identifier2 = [v13 identifier];
          v15 = [v82 objectForKey:identifier2];

          identifier3 = [(RTLearnedLocationOfInterest *)v11 identifier];
          v17 = [mappingCopy objectForKey:identifier3];

          if (v15)
          {
            v18 = MEMORY[0x277CBEB18];
            visits = [(RTLearnedLocationOfInterest *)v15 visits];
            v20 = [v18 arrayWithArray:visits];

            v84 = v20;
            [v20 addObject:v11];
            v21 = MEMORY[0x277CBEB18];
            transitions = [(RTLearnedLocationOfInterest *)v15 transitions];
            v23 = [v21 arrayWithArray:transitions];

            if (v17)
            {
              [(RTLearnedLocation *)v23 addObject:v17];
            }

            v24 = v17;
            v25 = [RTLearnedLocationOfInterest alloc];
            identifier4 = [(RTLearnedLocationOfInterest *)v15 identifier];
            location = [(RTLearnedLocationOfInterest *)v15 location];
            v28 = v15;
            place = [(RTLearnedLocationOfInterest *)v15 place];
            v30 = [(RTLearnedLocationOfInterest *)v25 initWithIdentifier:identifier4 location:location place:place visits:v84 transitions:v23];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v31 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                v32 = NSStringFromSelector(a2);
                *buf = 138413059;
                v91 = v32;
                v92 = 2117;
                v93 = v28;
                v94 = 2117;
                v95 = v30;
                v96 = 2117;
                v97 = v11;
                _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@, LOI, %{sensitive}@, updated LOI, %{sensitive}@, visit, %{sensitive}@", buf, 0x2Au);
              }
            }

            v33 = v28;
            v34 = v24;
            if (v30)
            {
              mappingCopy = v79;
              goto LABEL_25;
            }

            mappingCopy = v79;
          }

          else
          {
            v71 = objc_alloc(MEMORY[0x277D01160]);
            location2 = [(RTLearnedLocationOfInterest *)v11 location];
            v85Location = [location2 location];
            [v85Location latitude];
            v36 = v35;
            location3 = [(RTLearnedLocationOfInterest *)v11 location];
            v75Location = [location3 location];
            [v75Location longitude];
            v38 = v37;
            location4 = [(RTLearnedLocationOfInterest *)v11 location];
            v73Location = [location4 location];
            [v73Location horizontalUncertainty];
            v40 = v39;
            location5 = [(RTLearnedLocationOfInterest *)v11 location];
            v70Location = [location5 location];
            [v70Location altitude];
            v42 = v41;
            location6 = [(RTLearnedLocationOfInterest *)v11 location];
            v43Location = [location6 location];
            [v43Location verticalUncertainty];
            v46 = v45;
            [(RTLearnedLocationOfInterest *)v11 location];
            v47 = v77 = v17;
            location7 = [v47 location];
            referenceFrame = [location7 referenceFrame];
            location8 = [(RTLearnedLocationOfInterest *)v11 location];
            v50Location = [location8 location];
            v52 = [v71 initWithLatitude:0 longitude:referenceFrame horizontalUncertainty:objc_msgSend(v50Location altitude:"sourceAccuracy") verticalUncertainty:v36 date:v38 referenceFrame:v40 speed:v42 sourceAccuracy:{v46, 0.0}];

            v34 = v77;
            v53 = [RTLearnedLocation alloc];
            location9 = [(RTLearnedLocationOfInterest *)v11 location];
            v54Location = [location9 location];
            v84 = v52;
            v23 = -[RTLearnedLocation initWithLocation:dataPointCount:type:](v53, "initWithLocation:dataPointCount:type:", v52, [v54Location sourceAccuracy] == 2, 2);

            v56 = [RTLearnedLocationOfInterest alloc];
            identifier5 = [v13 identifier];
            v99 = v11;
            v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
            if (v77)
            {
              v98 = v77;
              v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
              v30 = [(RTLearnedLocationOfInterest *)v56 initWithIdentifier:identifier5 location:v23 place:v13 visits:v58 transitions:v59];
            }

            else
            {
              v30 = [(RTLearnedLocationOfInterest *)v56 initWithIdentifier:identifier5 location:v23 place:v13 visits:v58 transitions:0];
            }

            mappingCopy = v79;
            v33 = 0;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v60 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
              {
                v61 = NSStringFromSelector(a2);
                *buf = v67;
                v91 = v61;
                v92 = 2117;
                v93 = v30;
                v94 = 2117;
                v95 = v11;
                _os_log_impl(&dword_2304B3000, v60, OS_LOG_TYPE_INFO, "%@, create new LOI, %{sensitive}@, visit, %{sensitive}@", buf, 0x20u);
              }
            }

            if (v30)
            {
LABEL_25:
              identifier6 = [v13 identifier];
              [v82 setObject:v30 forKey:identifier6];
            }
          }
        }
      }

      v83 = [obj countByEnumeratingWithState:&v86 objects:v100 count:16];
    }

    while (v83);
  }

  v63 = MEMORY[0x277CBEA60];
  allValues = [v82 allValues];
  v65 = [v63 arrayWithArray:allValues];

  return v65;
}

- (void)performTransitAnalyticsWithHandler:(id)handler
{
  handlerCopy = handler;
  transitMetricManager = [(RTLearnedLocationEngine *)self transitMetricManager];

  if (transitMetricManager)
  {
    transitMetricManager2 = [(RTLearnedLocationEngine *)self transitMetricManager];
    [transitMetricManager2 performTransitAnalyticsWithHandler:handlerCopy];
  }
}

+ (id)computeVisitLabelingMetricsForLabelingRetried:(BOOL)retried labelingSkipped:(BOOL)skipped revGeoCalled:(BOOL)called bluePOICalled:(BOOL)iCalled unlabeledVisit:(BOOL)visit visitAge:(double)age error:(id)error
{
  visitCopy = visit;
  iCalledCopy = iCalled;
  calledCopy = called;
  skippedCopy = skipped;
  retriedCopy = retried;
  errorCopy = error;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_28459D0F8 forKeyedSubscript:@"visitLabelingAttempt"];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:retriedCopy];
  [dictionary setObject:v17 forKeyedSubscript:@"visitLabelingRetried"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:errorCopy == 0];
  [dictionary setObject:v18 forKeyedSubscript:@"visitLabelingSucceeded"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:skippedCopy];
  [dictionary setObject:v19 forKeyedSubscript:@"visitLabelingSkipped"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:visitCopy];
  [dictionary setObject:v20 forKeyedSubscript:@"unlabeledVisit"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:iCalledCopy];
  [dictionary setObject:v21 forKeyedSubscript:@"bluePOICalled"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:calledCopy];
  [dictionary setObject:v22 forKeyedSubscript:@"revGeoCalled"];

  v23 = [MEMORY[0x277CCABB0] numberWithDouble:age];
  [dictionary setObject:v23 forKeyedSubscript:@"visitAge"];

  if (errorCopy)
  {
    domain = [errorCopy domain];
    [dictionary setObject:domain forKeyedSubscript:@"errorDomain"];

    v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    [dictionary setObject:v25 forKeyedSubscript:@"errorCode"];

    userInfo = [errorCopy userInfo];
    v27 = *MEMORY[0x277D0E7D8];
    v28 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D0E7D8]];

    if (v28)
    {
      userInfo2 = [errorCopy userInfo];
      v30 = [userInfo2 objectForKeyedSubscript:v27];
      [dictionary setObject:v30 forKeyedSubscript:@"errorHTTPStatus"];
    }
  }

  return dictionary;
}

+ (void)submitVisitLabelingMetricsForLabelingRetried:(BOOL)retried labelingSkipped:(BOOL)skipped revGeoCalled:(BOOL)called bluePOICalled:(BOOL)iCalled unlabeledVisit:(BOOL)visit visitAge:(double)age error:(id)error
{
  errorCopy = error;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __145__RTLearnedLocationEngine_submitVisitLabelingMetricsForLabelingRetried_labelingSkipped_revGeoCalled_bluePOICalled_unlabeledVisit_visitAge_error___block_invoke;
  aBlock[3] = &unk_2788C8CF0;
  retriedCopy = retried;
  skippedCopy = skipped;
  calledCopy = called;
  iCalledCopy = iCalled;
  visitCopy = visit;
  ageCopy = age;
  v29 = errorCopy;
  selfCopy = self;
  v17 = errorCopy;
  v18 = _Block_copy(aBlock);
  v19 = objc_alloc(MEMORY[0x277CCACA8]);
  v20 = [v19 initWithCString:RTAnalyticsEventVisitLabelingAttempt encoding:1];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __145__RTLearnedLocationEngine_submitVisitLabelingMetricsForLabelingRetried_labelingSkipped_revGeoCalled_bluePOICalled_unlabeledVisit_visitAge_error___block_invoke_2;
  v25[3] = &unk_2788C8D18;
  v26 = v20;
  v27 = v18;
  v21 = v20;
  v22 = v18;
  v23 = _Block_copy(v25);
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v21];
  AnalyticsSendEventLazy();
}

id __145__RTLearnedLocationEngine_submitVisitLabelingMetricsForLabelingRetried_labelingSkipped_revGeoCalled_bluePOICalled_unlabeledVisit_visitAge_error___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  log_analytics_submission(*(a1 + 32), v2);

  return v2;
}

+ (id)stringFromTrainMode:(unint64_t)mode
{
  v3 = @"Unknown";
  if (mode == 2)
  {
    v3 = @"TrainModeLight";
  }

  if (mode == 1)
  {
    return @"TrainModeFull";
  }

  else
  {
    return v3;
  }
}

+ (id)stringFromTrainResult:(unint64_t)result
{
  if (result - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788C8DA8[result - 1];
  }
}

- (unint64_t)_evaluateTrainResultFromGraphUUIDsBeforeTrain:(id)train graphUUIDsAfterTrain:(id)afterTrain
{
  trainCopy = train;
  afterTrainCopy = afterTrain;
  trainingMetrics = [(RTLearnedLocationEngine *)self trainingMetrics];
  wasDeferred = [trainingMetrics wasDeferred];

  if (wasDeferred)
  {
    v10 = 1;
  }

  else if ([(RTLearnedLocationEngine *)self _isLearnedLocationOfInterestGraphSignificantlyChanged:trainCopy graphUUIDsAfterTrain:afterTrainCopy])
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  return v10;
}

- (BOOL)_isLearnedLocationOfInterestGraphSignificantlyChanged:(id)changed graphUUIDsAfterTrain:(id)train
{
  changedCopy = changed;
  trainCopy = train;
  v7 = trainCopy;
  if (changedCopy | trainCopy)
  {
    LOBYTE(v8) = 1;
    if (changedCopy && trainCopy)
    {
      v9 = [changedCopy count];
      if (v9 == [v7 count])
      {
        v8 = [changedCopy isEqualToSet:v7] ^ 1;
      }

      else
      {
        LOBYTE(v8) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)_getUUIDSetOfLocationsOfInterestWithError:(id *)error
{
  v76[1] = *MEMORY[0x277D85DE8];
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__41;
  v63 = __Block_byref_object_dispose__41;
  v64 = objc_opt_new();
  date = [MEMORY[0x277CBEAA8] date];
  context = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__41;
  v57 = __Block_byref_object_dispose__41;
  v58 = 0;
  v4 = dispatch_semaphore_create(0);
  date2 = [MEMORY[0x277CBEAA8] date];
  v47 = [date2 dateByAddingTimeInterval:-4838400.0];
  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __69__RTLearnedLocationEngine__getUUIDSetOfLocationsOfInterestWithError___block_invoke;
  v49[3] = &unk_2788C8D40;
  v51 = &v53;
  v52 = &v59;
  v6 = v4;
  v50 = v6;
  [learnedLocationStore fetchLocationsOfInterestUUIDsVisitedWithHandler:v49];

  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = [callStackSymbols filteredArrayUsingPredicate:v14];
    firstObject = [v16 firstObject];

    [v13 submitToCoreAnalytics:firstObject type:1 duration:v12];
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v76[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v76 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = v21;
  if (v23)
  {
    [array addObject:v23];
  }

  if (v54[5])
  {
    [array addObject:?];
  }

  if ([array count])
  {
    v41 = 1;
    v24 = _RTSafeArray();
    v25 = _RTMultiErrorCreate();
  }

  else
  {
    v25 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = NSStringFromSelector(a2);
      stringFromDate = [v47 stringFromDate];
      stringFromDate2 = [date2 stringFromDate];
      v30 = [v60[5] count];
      date3 = [MEMORY[0x277CBEAA8] date];
      [date3 timeIntervalSinceDate:date];
      *buf = 138413570;
      *&buf[4] = v27;
      v66 = 2112;
      v67 = stringFromDate;
      v68 = 2112;
      v69 = stringFromDate2;
      v70 = 2048;
      v71 = v30;
      v72 = 2048;
      v73 = v32;
      v74 = 2112;
      v75 = v25;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, dateInterval, startDate, %@, endDate, %@, fetched lois uuids count, %lu, latency %.2f, error(s), %@", buf, 0x3Eu);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = NSStringFromSelector(a2);
      v40 = v60[5];
      *buf = 138412802;
      *&buf[4] = v38;
      v66 = 2112;
      v67 = v39;
      v68 = 2112;
      v69 = v40;
      _os_log_debug_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEBUG, "%@, %@, LOI set of UUIDs, %@", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v53, 8);
  objc_autoreleasePoolPop(context);
  if (error)
  {
    v34 = v25;
    *error = v25;
  }

  v35 = [v60[5] mutableCopy];

  _Block_object_dispose(&v59, 8);

  return v35;
}

void __69__RTLearnedLocationEngine__getUUIDSetOfLocationsOfInterestWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_createLOIForPlace:(id)place error:(id *)error
{
  v118[1] = *MEMORY[0x277D85DE8];
  placeCopy = place;
  if (placeCopy)
  {
    aSelector = a2;
    v6 = objc_alloc(MEMORY[0x277D01160]);
    mapItem = [placeCopy mapItem];
    location = [mapItem location];
    [location latitude];
    v10 = v9;
    mapItem2 = [placeCopy mapItem];
    location2 = [mapItem2 location];
    [location2 longitude];
    v14 = [v6 initWithLatitude:0 longitude:v10 horizontalUncertainty:v13 date:100.0];

    v92 = [[RTLearnedLocation alloc] initWithLocation:v14 dataPointCount:0 type:2];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v96 = [[RTLearnedLocationOfInterest alloc] initWithIdentifier:uUID location:v92 place:placeCopy visits:0 transitions:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v18;
        *&buf[22] = 2112;
        v115 = v96;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, %@, now attempting to store new LOI, %@", buf, 0x20u);
      }
    }

    v19 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v115 = __Block_byref_object_copy__41;
    v116 = __Block_byref_object_dispose__41;
    v117 = 0;
    learnedLocationStore = self->_learnedLocationStore;
    v113 = v96;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v113 count:1];
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __52__RTLearnedLocationEngine__createLOIForPlace_error___block_invoke;
    v101[3] = &unk_2788C4618;
    v103 = buf;
    v22 = v19;
    v102 = v22;
    [(RTLearnedLocationStore *)learnedLocationStore storeLocationsOfInterest:v21 handler:v101];

    v23 = v22;
    v24 = [MEMORY[0x277CBEAA8] now];
    v25 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v23, v25))
    {
      v26 = [MEMORY[0x277CBEAA8] now];
      [v26 timeIntervalSinceDate:v24];
      v28 = v27;
      v29 = objc_opt_new();
      v30 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v32 = [callStackSymbols filteredArrayUsingPredicate:v30];
      firstObject = [v32 firstObject];

      [v29 submitToCoreAnalytics:firstObject type:1 duration:v28];
      v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        *v109 = 0;
        _os_log_fault_impl(&dword_2304B3000, v34, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v109, 2u);
      }

      v35 = MEMORY[0x277CCA9B8];
      *v104 = *MEMORY[0x277CCA450];
      *v109 = @"semaphore wait timeout";
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v104 count:1];
      v37 = [v35 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v36];

      if (v37)
      {
        v38 = v37;
      }
    }

    else
    {
      v37 = 0;
    }

    v40 = v37;
    v41 = v40;
    if (v40)
    {
      if (error)
      {
        v42 = v40;
        v39 = 0;
        *error = v41;
LABEL_54:

        _Block_object_dispose(buf, 8);
        goto LABEL_55;
      }

      goto LABEL_25;
    }

    v43 = *(*&buf[8] + 40);
    v44 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v43)
    {
      if (v44)
      {
        v45 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          v48 = NSStringFromSelector(aSelector);
          v49 = *(*&buf[8] + 40);
          *v109 = 138412802;
          *&v109[4] = v47;
          *&v109[12] = 2112;
          *&v109[14] = v48;
          *&v109[22] = 2112;
          v110 = v49;
          _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_INFO, "%@, %@, error occurred while attempting to store new LOI, %@", v109, 0x20u);
        }
      }

      if (error)
      {
        v39 = 0;
        *error = *(*&buf[8] + 40);
        goto LABEL_54;
      }

LABEL_25:
      v39 = 0;
      goto LABEL_54;
    }

    if (v44)
    {
      v50 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        v53 = NSStringFromSelector(aSelector);
        identifier = [(RTLearnedLocationOfInterest *)v96 identifier];
        *v109 = 138412802;
        *&v109[4] = v52;
        *&v109[12] = 2112;
        *&v109[14] = v53;
        *&v109[22] = 2112;
        v110 = identifier;
        _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "%@, %@, successfully stored new LOI with ID, %@", v109, 0x20u);
      }
    }

    v55 = dispatch_semaphore_create(0);
    *v109 = 0;
    *&v109[8] = v109;
    *&v109[16] = 0x3032000000;
    v110 = __Block_byref_object_copy__41;
    v111 = __Block_byref_object_dispose__41;
    v112 = 0;
    v56 = self->_learnedLocationStore;
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __52__RTLearnedLocationEngine__createLOIForPlace_error___block_invoke_891;
    v97[3] = &unk_2788C4B58;
    v99 = v109;
    v100 = buf;
    v57 = v55;
    v98 = v57;
    [(RTLearnedLocationStore *)v56 fetchLocationOfInterestWithIdentifier:uUID handler:v97];
    dsema = v57;
    v89 = [MEMORY[0x277CBEAA8] now];
    v58 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v58))
    {
      v59 = [MEMORY[0x277CBEAA8] now];
      [v59 timeIntervalSinceDate:v89];
      v61 = v60;
      v62 = objc_opt_new();
      v63 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
      v65 = [callStackSymbols2 filteredArrayUsingPredicate:v63];
      firstObject2 = [v65 firstObject];

      [v62 submitToCoreAnalytics:firstObject2 type:1 duration:v61];
      v67 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
      {
        *v104 = 0;
        _os_log_fault_impl(&dword_2304B3000, v67, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v104, 2u);
      }

      v68 = MEMORY[0x277CCA9B8];
      v118[0] = *MEMORY[0x277CCA450];
      *v104 = @"semaphore wait timeout";
      v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v118 count:1];
      v70 = [v68 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v69];

      if (v70)
      {
        v71 = v70;
      }
    }

    else
    {
      v70 = 0;
    }

    v72 = v70;
    v73 = v72;
    if (v72)
    {
      if (error)
      {
        v74 = v72;
        v39 = 0;
        *error = v73;
LABEL_53:

        _Block_object_dispose(v109, 8);
        goto LABEL_54;
      }
    }

    else
    {
      v75 = *(*&v109[8] + 40);
      v76 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (v75)
      {
        if (v76)
        {
          v77 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            v78 = objc_opt_class();
            v79 = NSStringFromClass(v78);
            v80 = NSStringFromSelector(aSelector);
            identifier2 = [(RTLearnedLocationOfInterest *)v96 identifier];
            *v104 = 138412802;
            *&v104[4] = v79;
            v105 = 2112;
            v106 = v80;
            v107 = 2112;
            v108 = identifier2;
            _os_log_impl(&dword_2304B3000, v77, OS_LOG_TYPE_INFO, "%@, %@, successfully fetched newly stored LOI with ID, %@, now returning", v104, 0x20u);
          }

          v75 = *(*&v109[8] + 40);
        }

        v39 = v75;
        goto LABEL_53;
      }

      if (v76)
      {
        v82 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
        {
          v83 = objc_opt_class();
          v84 = NSStringFromClass(v83);
          v85 = NSStringFromSelector(aSelector);
          identifier3 = [(RTLearnedLocationOfInterest *)v96 identifier];
          *v104 = 138412802;
          *&v104[4] = v84;
          v105 = 2112;
          v106 = v85;
          v107 = 2112;
          v108 = identifier3;
          _os_log_impl(&dword_2304B3000, v82, OS_LOG_TYPE_INFO, "%@, %@, fetch of newly stored LOI with ID, %@, unexpectedly failed", v104, 0x20u);
        }
      }

      v87 = [MEMORY[0x277CCA9B8] rt_errorWithCode:7 description:@"Newly stored LOI unexpectedly not found"];
      if (error)
      {
        v87 = v87;
        *error = v87;
      }
    }

    v39 = 0;
    goto LABEL_53;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place", buf, 2u);
  }

  v39 = 0;
LABEL_55:

  return v39;
}

void __52__RTLearnedLocationEngine__createLOIForPlace_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __52__RTLearnedLocationEngine__createLOIForPlace_error___block_invoke_891(uint64_t a1, void *a2, void *a3)
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

- (void)_submitMetricsForApplicationOfCuratedLabel:(id)label visit:(id)visit result:(unint64_t)result
{
  v32 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  visitCopy = visit;
  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  distanceCalculator = [(RTLearnedLocationEngine *)self distanceCalculator];
  v21 = 0;
  v13 = [RTUserCurationMetrics collectMetricsForAppliedLabel:labelCopy curatedVisit:visitCopy learnedLocationStore:learnedLocationStore distanceCalculator:distanceCalculator applicationResult:result error:&v21];
  v14 = v21;

  if (!v13)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(a2);
      identifier = [labelCopy identifier];
      identifier2 = [visitCopy identifier];
      *buf = 138413314;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = identifier;
      v28 = 2112;
      v29 = identifier2;
      v30 = 2112;
      v31 = v14;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@, %@, failed to collect applied curation metrics for curated label with ID %@, visit ID %@, error: %@", buf, 0x34u);
    }
  }
}

- (BOOL)_curateVisit:(id)visit newLabel:(id)label relabelerPersister:(id)persister error:(id *)error
{
  v115[1] = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  labelCopy = label;
  persisterCopy = persister;
  if (!visitCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTLearnedLocationEngine _curateVisit:newLabel:relabelerPersister:error:]";
      *&buf[12] = 1024;
      *&buf[14] = 7040;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit (in %s:%d)", buf, 0x12u);
    }
  }

  if (!labelCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTLearnedLocationEngine _curateVisit:newLabel:relabelerPersister:error:]";
      *&buf[12] = 1024;
      *&buf[14] = 7041;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: newLabel (in %s:%d)", buf, 0x12u);
    }
  }

  if (!persisterCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTLearnedLocationEngine _curateVisit:newLabel:relabelerPersister:error:]";
      *&buf[12] = 1024;
      *&buf[14] = 7042;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: relabelerPersister (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      *buf = 138413058;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      v113 = visitCopy;
      LOWORD(v114) = 2112;
      *(&v114 + 2) = labelCopy;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, %@, attempting to relabel visit, %@, with curated label, %@", buf, 0x2Au);
    }
  }

  distanceCalculator = [(RTLearnedLocationEngine *)self distanceCalculator];
  location = [visitCopy location];
  v19Location = [location location];
  location2 = [labelCopy location];
  v104 = 0;
  [distanceCalculator distanceFromLocation:v19Location toLocation:location2 error:&v104];
  v23 = v22;
  v24 = v104;

  if (v24)
  {
    [(RTLearnedLocationEngine *)self _submitMetricsForApplicationOfCuratedLabel:labelCopy visit:visitCopy result:5];
    if (error)
    {
      v25 = v24;
      v26 = 0;
      *error = v24;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_52;
  }

  if (v23 <= 500.0)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v113 = __Block_byref_object_copy__41;
    *&v114 = __Block_byref_object_dispose__41;
    *(&v114 + 1) = 0;
    v98 = 0;
    v99 = &v98;
    v100 = 0x3032000000;
    v101 = __Block_byref_object_copy__41;
    v102 = __Block_byref_object_dispose__41;
    v103 = 0;
    v31 = dispatch_semaphore_create(0);
    learnedLocationStore = self->_learnedLocationStore;
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __74__RTLearnedLocationEngine__curateVisit_newLabel_relabelerPersister_error___block_invoke;
    v94[3] = &unk_2788C8750;
    v96 = buf;
    v97 = &v98;
    v33 = v31;
    v95 = v33;
    [(RTLearnedLocationStore *)learnedLocationStore fetchPlaceOfVisit:visitCopy handler:v94];
    dsema = v33;
    v34 = [MEMORY[0x277CBEAA8] now];
    v35 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v35))
    {
      v83 = [MEMORY[0x277CBEAA8] now];
      [v83 timeIntervalSinceDate:v34];
      v37 = v36;
      v38 = objc_opt_new();
      v39 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v41 = [callStackSymbols filteredArrayUsingPredicate:v39];
      firstObject = [v41 firstObject];

      [v38 submitToCoreAnalytics:firstObject type:1 duration:v37];
      v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
      {
        *v105 = 0;
        _os_log_fault_impl(&dword_2304B3000, v43, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v105, 2u);
      }

      v44 = MEMORY[0x277CCA9B8];
      v115[0] = *MEMORY[0x277CCA450];
      *v105 = @"semaphore wait timeout";
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v115 count:1];
      v46 = [v44 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v45];

      if (v46)
      {
        v47 = v46;
      }
    }

    else
    {
      v46 = 0;
    }

    v48 = v46;
    if (v48)
    {
      [(RTLearnedLocationEngine *)self _submitMetricsForApplicationOfCuratedLabel:labelCopy visit:visitCopy result:7];
      if (error)
      {
        v49 = v48;
        v26 = 0;
        *error = v48;
LABEL_51:

        _Block_object_dispose(&v98, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_52;
      }

      goto LABEL_50;
    }

    if (v99[5])
    {
      [(RTLearnedLocationEngine *)self _submitMetricsForApplicationOfCuratedLabel:labelCopy visit:visitCopy result:7];
      if (error)
      {
        v26 = 0;
        *error = v99[5];
        goto LABEL_51;
      }

LABEL_50:
      v26 = 0;
      goto LABEL_51;
    }

    if (!*(*&buf[8] + 40))
    {
      v56 = MEMORY[0x277CCA9B8];
      v110 = *MEMORY[0x277CCA450];
      v111 = @"Failed to fetch a known place for visit";
      v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
      v58 = [v56 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v57];

      [(RTLearnedLocationEngine *)self _submitMetricsForApplicationOfCuratedLabel:labelCopy visit:visitCopy result:7];
      if (error)
      {
        v59 = v58;
        *error = v58;
      }

      goto LABEL_50;
    }

    v82 = [[RTFusedInferredMapItem alloc] initWithMapItem:labelCopy confidence:8 source:1.0];
    v50 = objc_alloc(MEMORY[0x277D011C0]);
    mapItem = [*(*&buf[8] + 40) mapItem];
    v84 = [v50 initWithFirstObject:visitCopy secondObject:mapItem];

    v93 = 0;
    [persisterCopy useRelabeledInferredMapItem:v82 oldCandidate:v84 associate:0 error:&v93];
    v52 = v93;
    if (v52)
    {
      v53 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v75 = objc_opt_class();
        v76 = NSStringFromClass(v75);
        v77 = NSStringFromSelector(a2);
        *v105 = 138412802;
        *&v105[4] = v76;
        v106 = 2112;
        v107 = v77;
        v108 = 2112;
        v109 = v52;
        _os_log_error_impl(&dword_2304B3000, v53, OS_LOG_TYPE_ERROR, "%@, %@, unassociation of candidate failed with error, %@, attempting to restore to old candidate", v105, 0x20u);
      }

      v92 = 0;
      [persisterCopy restoreToOldCandidate:v84 error:&v92];
      v54 = v92;
      [(RTLearnedLocationEngine *)self _submitMetricsForApplicationOfCuratedLabel:labelCopy visit:visitCopy result:8];
      if (error)
      {
        v55 = v54;
        v26 = 0;
        *error = v54;
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_69;
    }

    v91 = 0;
    [persisterCopy useRelabeledInferredMapItem:v82 oldCandidate:v84 associate:1 error:&v91];
    v61 = v91;
    if (v61)
    {
      v62 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v78 = objc_opt_class();
        v79 = NSStringFromClass(v78);
        v80 = NSStringFromSelector(a2);
        *v105 = 138412802;
        *&v105[4] = v79;
        v106 = 2112;
        v107 = v80;
        v108 = 2112;
        v109 = v61;
        _os_log_error_impl(&dword_2304B3000, v62, OS_LOG_TYPE_ERROR, "%@, %@, candidate relabel failed with error, %@, attempting to restore to old candidate", v105, 0x20u);
      }

      v90 = 0;
      [persisterCopy restoreToOldCandidate:v84 error:&v90];
      v63 = v90;
      [(RTLearnedLocationEngine *)self _submitMetricsForApplicationOfCuratedLabel:labelCopy visit:visitCopy result:9];
    }

    else
    {
      v89 = 0;
      [persisterCopy saveWithError:&v89];
      v63 = v89;
      v64 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (!v63)
      {
        if (v64)
        {
          v71 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
          {
            v72 = objc_opt_class();
            v73 = NSStringFromClass(v72);
            v74 = NSStringFromSelector(a2);
            *v105 = 138412546;
            *&v105[4] = v73;
            v106 = 2112;
            v107 = v74;
            _os_log_impl(&dword_2304B3000, v71, OS_LOG_TYPE_INFO, "%@, %@, visit successfully relabeled with curated label!", v105, 0x16u);
          }

          v61 = 0;
        }

        [(RTLearnedLocationEngine *)self _submitMetricsForApplicationOfCuratedLabel:labelCopy visit:visitCopy result:1];
        v70 = 0;
        v63 = 0;
        v26 = 1;
        if (!error)
        {
          goto LABEL_68;
        }

        goto LABEL_66;
      }

      if (v64)
      {
        v65 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        v81 = 0;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          v66 = objc_opt_class();
          v67 = NSStringFromClass(v66);
          v68 = NSStringFromSelector(a2);
          *v105 = 138412802;
          *&v105[4] = v67;
          v106 = 2112;
          v107 = v68;
          v108 = 2112;
          v109 = v63;
          _os_log_impl(&dword_2304B3000, v65, OS_LOG_TYPE_INFO, "%@, %@, error occurred while attempting to save relabeled visit, %@", v105, 0x20u);
        }

        v61 = 0;
      }

      [(RTLearnedLocationEngine *)self _submitMetricsForApplicationOfCuratedLabel:labelCopy visit:visitCopy result:10, v81];
    }

    if (!error)
    {
      v26 = 0;
      goto LABEL_68;
    }

    v69 = v63;
    v26 = 0;
    v70 = v63;
LABEL_66:
    *error = v70;
    v63 = v70;
LABEL_68:

    v54 = v61;
LABEL_69:

    goto LABEL_51;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      *buf = 138413058;
      *&buf[4] = v29;
      *&buf[12] = 2112;
      *&buf[14] = v30;
      *&buf[22] = 2048;
      v113 = *&v23;
      LOWORD(v114) = 2048;
      *(&v114 + 2) = 0x407F400000000000;
      _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, %@, distance between visit location and curated label exceeded reasonable threshold (%.2f m vs. %.2f m), skipping curation", buf, 0x2Au);
    }
  }

  [(RTLearnedLocationEngine *)self _submitMetricsForApplicationOfCuratedLabel:labelCopy visit:visitCopy result:6];
  if (error)
  {
    *error = 0;
  }

  v26 = 1;
LABEL_52:

  return v26;
}

void __74__RTLearnedLocationEngine__curateVisit_newLabel_relabelerPersister_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)_curateVisits:(id)visits newLabel:(id)label relabelerPersister:(id)persister error:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  labelCopy = label;
  persisterCopy = persister;
  if (visitsCopy)
  {
    if (labelCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v50 = "[RTLearnedLocationEngine _curateVisits:newLabel:relabelerPersister:error:]";
    v51 = 1024;
    LODWORD(v52) = 7182;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visits (in %s:%d)", buf, 0x12u);
  }

  if (!labelCopy)
  {
LABEL_7:
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v50 = "[RTLearnedLocationEngine _curateVisits:newLabel:relabelerPersister:error:]";
      v51 = 1024;
      LODWORD(v52) = 7183;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: newLabel (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  if (!persisterCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v50 = "[RTLearnedLocationEngine _curateVisits:newLabel:relabelerPersister:error:]";
      v51 = 1024;
      LODWORD(v52) = 7184;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: relabelerPersister (in %s:%d)", buf, 0x12u);
    }
  }

  v41 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v14 = visitsCopy;
  v15 = [v14 countByEnumeratingWithState:&v45 objects:v61 count:16];
  v39 = v14;
  if (v15)
  {
    v16 = v15;
    v17 = MEMORY[0x277D86220];
    v42 = *v46;
    selfCopy = self;
    do
    {
      v18 = 0;
      v40 = v16;
      do
      {
        if (*v46 != v42)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v45 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v44 = 0;
        v21 = [(RTLearnedLocationEngine *)self _curateVisit:v19 newLabel:labelCopy relabelerPersister:persisterCopy error:&v44];
        v22 = v44;
        if (v22)
        {
          [v41 addObject:v22];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v23 = v17;
          v24 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = objc_opt_class();
            NSStringFromClass(v25);
            v27 = v26 = labelCopy;
            v28 = NSStringFromSelector(a2);
            v29 = v28;
            *buf = 138413570;
            v30 = @"NO";
            if (v21)
            {
              v30 = @"YES";
            }

            v50 = v27;
            v51 = 2112;
            v52 = v28;
            v53 = 2112;
            v54 = v19;
            v55 = 2112;
            v56 = v26;
            v57 = 2112;
            v58 = v30;
            v59 = 2112;
            v60 = v22;
            _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, %@, attempted to curate visit, %@, new label, %@, success, %@, error, %@", buf, 0x3Eu);

            self = selfCopy;
            labelCopy = v26;
            v14 = v39;
          }

          v17 = v23;
          v16 = v40;
        }

        objc_autoreleasePoolPop(v20);
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v45 objects:v61 count:16];
    }

    while (v16);
  }

  v31 = _RTSafeArray();
  v32 = _RTMultiErrorCreate();

  if (error)
  {
    v33 = v32;
    *error = v32;
  }

  v34 = [v41 count] == 0;

  return v34;
}

- (BOOL)_updateExpirationDateOfStoredUserCuration:(id)curation associatedVisits:(id)visits error:(id *)error
{
  v97[1] = *MEMORY[0x277D85DE8];
  curationCopy = curation;
  visitsCopy = visits;
  v78 = curationCopy;
  if (!curationCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v93 = 136315394;
      *&v93[4] = "[RTLearnedLocationEngine _updateExpirationDateOfStoredUserCuration:associatedVisits:error:]";
      *&v93[12] = 1024;
      *&v93[14] = 7214;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: curation (in %s:%d)", v93, 0x12u);
    }
  }

  if (!visitsCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v93 = 136315394;
      *&v93[4] = "[RTLearnedLocationEngine _updateExpirationDateOfStoredUserCuration:associatedVisits:error:]";
      *&v93[12] = 1024;
      *&v93[14] = 7215;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visits (in %s:%d)", v93, 0x12u);
    }
  }

  expirationDate = [v78 expirationDate];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v11 = visitsCopy;
  v12 = [v11 countByEnumeratingWithState:&v82 objects:v96 count:16];
  if (v12)
  {
    v13 = *v83;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v83 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v82 + 1) + 8 * i);
        if (expirationDate)
        {
          expirationDate2 = [*(*(&v82 + 1) + 8 * i) expirationDate];
          v17 = [expirationDate compare:expirationDate2] == -1;

          if (!v17)
          {
            continue;
          }
        }

        expirationDate3 = [v15 expirationDate];

        expirationDate = expirationDate3;
      }

      v12 = [v11 countByEnumeratingWithState:&v82 objects:v96 count:16];
    }

    while (v12);
  }

  if (expirationDate)
  {
    expirationDate4 = [v78 expirationDate];
    v20 = [expirationDate4 compare:expirationDate] == -1;

    if (v20)
    {
      v24 = objc_alloc(MEMORY[0x277D01410]);
      identifier = [v78 identifier];
      submissionDate = [v78 submissionDate];
      visitEntryDate = [v78 visitEntryDate];
      visitExitDate = [v78 visitExitDate];
      visitIdentifier = [v78 visitIdentifier];
      originalLabel = [v78 originalLabel];
      curatedLabel = [v78 curatedLabel];
      v74 = [v24 initWithIdentifier:identifier submissionDate:submissionDate expirationDate:expirationDate entryDate:visitEntryDate exitDate:visitExitDate visitIdentifier:visitIdentifier originalLabel:originalLabel curatedLabel:curatedLabel];

      *v93 = 0;
      *&v93[8] = v93;
      *&v93[16] = 0x3032000000;
      v94 = __Block_byref_object_copy__41;
      *&v95 = __Block_byref_object_dispose__41;
      *(&v95 + 1) = 0;
      v32 = dispatch_semaphore_create(0);
      userCurationStore = [(RTLearnedLocationEngine *)self userCurationStore];
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __92__RTLearnedLocationEngine__updateExpirationDateOfStoredUserCuration_associatedVisits_error___block_invoke;
      v79[3] = &unk_2788C4618;
      v81 = v93;
      v34 = v32;
      v80 = v34;
      [userCurationStore updateUserCuration:v74 handler:v79];

      v35 = v34;
      v36 = [MEMORY[0x277CBEAA8] now];
      v37 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v35, v37))
      {
        v38 = [MEMORY[0x277CBEAA8] now];
        [v38 timeIntervalSinceDate:v36];
        v40 = v39;
        v41 = objc_opt_new();
        v42 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v44 = [callStackSymbols filteredArrayUsingPredicate:v42];
        firstObject = [v44 firstObject];

        [v41 submitToCoreAnalytics:firstObject type:1 duration:v40];
        v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v46, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v47 = MEMORY[0x277CCA9B8];
        v97[0] = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v97 count:1];
        v49 = [v47 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v48];

        if (v49)
        {
          v50 = v49;
        }
      }

      else
      {
        v49 = 0;
      }

      v51 = v49;
      v52 = v51;
      if (v51)
      {
        if (!error)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (!*(*&v93[8] + 40))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v55 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              v56 = objc_opt_class();
              v57 = NSStringFromClass(v56);
              v58 = NSStringFromSelector(a2);
              expirationDate5 = [v78 expirationDate];
              stringFromDate = [expirationDate5 stringFromDate];
              stringFromDate2 = [expirationDate stringFromDate];
              *buf = 138413058;
              *&buf[4] = v57;
              v87 = 2112;
              v88 = v58;
              v89 = 2112;
              v90 = stringFromDate;
              v91 = 2112;
              v92 = stringFromDate2;
              _os_log_impl(&dword_2304B3000, v55, OS_LOG_TYPE_INFO, "%@, %@, updated user curation TTL from %@ to %@ to match curated visit", buf, 0x2Au);
            }
          }

          _Block_object_dispose(v93, 8);
          v22 = v74;
          goto LABEL_24;
        }

        v53 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v68 = objc_opt_class();
          v69 = NSStringFromClass(v68);
          v70 = NSStringFromSelector(a2);
          expirationDate6 = [v78 expirationDate];
          stringFromDate3 = [expirationDate6 stringFromDate];
          stringFromDate4 = [expirationDate stringFromDate];
          *buf = 138413058;
          *&buf[4] = v69;
          v87 = 2112;
          v88 = v70;
          v89 = 2112;
          v90 = stringFromDate3;
          v91 = 2112;
          v92 = stringFromDate4;
          _os_log_error_impl(&dword_2304B3000, v53, OS_LOG_TYPE_ERROR, "%@, %@, failed to update user curation TTL from %@ to %@", buf, 0x2Au);
        }

        if (!error)
        {
LABEL_43:

          _Block_object_dispose(v93, 8);
          v23 = 0;
          goto LABEL_44;
        }

        v51 = *(*&v93[8] + 40);
      }

      *error = v51;
      goto LABEL_43;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    v22 = v21;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      v64 = NSStringFromSelector(a2);
      expirationDate7 = [v78 expirationDate];
      stringFromDate5 = [expirationDate7 stringFromDate];
      stringFromDate6 = [expirationDate stringFromDate];
      *v93 = 138413058;
      *&v93[4] = v63;
      *&v93[12] = 2112;
      *&v93[14] = v64;
      *&v93[22] = 2112;
      v94 = stringFromDate5;
      LOWORD(v95) = 2112;
      *(&v95 + 2) = stringFromDate6;
      _os_log_debug_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEBUG, "%@, %@, skipping user curation expiration update, original expiration date, %@, latest visit expiration date, %@", v93, 0x2Au);

      v22 = v21;
    }

LABEL_24:
  }

  if (error)
  {
    *error = 0;
  }

  v23 = 1;
LABEL_44:

  return v23;
}

void __92__RTLearnedLocationEngine__updateExpirationDateOfStoredUserCuration_associatedVisits_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_findVisitsAssociatedWithCurrentPlaceCuration:(id)curation error:(id *)error
{
  v67[1] = *MEMORY[0x277D85DE8];
  curationCopy = curation;
  if (!curationCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v63 = 136315394;
      *&v63[4] = "[RTLearnedLocationEngine _findVisitsAssociatedWithCurrentPlaceCuration:error:]";
      *&v63[12] = 1024;
      *&v63[14] = 7278;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: curation (in %s:%d)", v63, 0x12u);
    }
  }

  *v63 = 0;
  *&v63[8] = v63;
  *&v63[16] = 0x3032000000;
  v64 = __Block_byref_object_copy__41;
  v65 = __Block_byref_object_dispose__41;
  v66 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__41;
  v54 = __Block_byref_object_dispose__41;
  v55 = 0;
  v7 = dispatch_semaphore_create(0);
  learnedLocationStore = self->_learnedLocationStore;
  visitEntryDate = [curationCopy visitEntryDate];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __79__RTLearnedLocationEngine__findVisitsAssociatedWithCurrentPlaceCuration_error___block_invoke;
  v46[3] = &unk_2788C4490;
  v48 = &v50;
  v49 = v63;
  v10 = v7;
  v47 = v10;
  [(RTLearnedLocationStore *)learnedLocationStore fetchVisitsOverlappingDate:visitEntryDate handler:v46];

  v11 = v10;
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v11, v13))
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    [v14 timeIntervalSinceDate:v12];
    v16 = v15;
    v17 = objc_opt_new();
    v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v20 = [callStackSymbols filteredArrayUsingPredicate:v18];
    firstObject = [v20 firstObject];

    [v17 submitToCoreAnalytics:firstObject type:1 duration:v16];
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v23 = MEMORY[0x277CCA9B8];
    v67[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v67 count:1];
    v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

    if (v25)
    {
      v26 = v25;
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = v25;
  v28 = v27;
  if (v27)
  {
    if (error)
    {
      v29 = v27;
      v30 = 0;
      *error = v28;
      goto LABEL_27;
    }

LABEL_19:
    v30 = 0;
    goto LABEL_27;
  }

  if (*(*&v63[8] + 40))
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = NSStringFromSelector(a2);
      visitEntryDate2 = [curationCopy visitEntryDate];
      v43 = *(*&v63[8] + 40);
      *buf = 138413058;
      *&buf[4] = v40;
      v57 = 2112;
      v58 = v41;
      v59 = 2112;
      v60 = visitEntryDate2;
      v61 = 2112;
      v62 = v43;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@, %@, error occurred while invoking fetchVisitsOverlappingDate for date, %@, error, %@", buf, 0x2Au);
    }

    if (error)
    {
      v30 = 0;
      *error = *(*&v63[8] + 40);
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = NSStringFromSelector(a2);
      v36 = [v51[5] count];
      visitEntryDate3 = [curationCopy visitEntryDate];
      *buf = 138413058;
      *&buf[4] = v34;
      v57 = 2112;
      v58 = v35;
      v59 = 2048;
      v60 = v36;
      v61 = 2112;
      v62 = visitEntryDate3;
      _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@, %@, fetched %lu visits overlapping user curation with entry date, %@", buf, 0x2Au);
    }
  }

  if (error)
  {
    *error = 0;
  }

  v30 = v51[5];
LABEL_27:

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(v63, 8);

  return v30;
}

void __79__RTLearnedLocationEngine__findVisitsAssociatedWithCurrentPlaceCuration_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_findVisitsAssociatedWithHistoricalVisitCuration:(id)curation error:(id *)error
{
  v194[1] = *MEMORY[0x277D85DE8];
  curationCopy = curation;
  if (!curationCopy)
  {
    selfCopy = self;
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTLearnedLocationEngine _findVisitsAssociatedWithHistoricalVisitCuration:error:]";
      *&buf[12] = 1024;
      *&buf[14] = 7321;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: curation (in %s:%d)", buf, 0x12u);
    }

    self = selfCopy;
  }

  v164 = 0;
  v165 = &v164;
  v166 = 0x3032000000;
  v167 = __Block_byref_object_copy__41;
  v168 = __Block_byref_object_dispose__41;
  v169 = 0;
  v158 = 0;
  v159 = &v158;
  v160 = 0x3032000000;
  v161 = __Block_byref_object_copy__41;
  v162 = __Block_byref_object_dispose__41;
  v163 = 0;
  v8 = dispatch_semaphore_create(0);
  selfCopy2 = self;
  learnedLocationStore = self->_learnedLocationStore;
  visitIdentifier = [curationCopy visitIdentifier];
  v154[0] = MEMORY[0x277D85DD0];
  v154[1] = 3221225472;
  v154[2] = __82__RTLearnedLocationEngine__findVisitsAssociatedWithHistoricalVisitCuration_error___block_invoke;
  v154[3] = &unk_2788C61C0;
  v156 = &v158;
  v157 = &v164;
  v11 = v8;
  v155 = v11;
  [(RTLearnedLocationStore *)learnedLocationStore fetchVisitWithIdentifier:visitIdentifier handler:v154];

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
    firstObject = [v21 firstObject];

    [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v24 = MEMORY[0x277CCA9B8];
    v187 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v187 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

    if (v26)
    {
      v27 = v26;
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = v26;
  if (v28)
  {
    v29 = v28;
    if (error)
    {
      v30 = v28;
      v31 = 0;
      *error = v29;
      goto LABEL_29;
    }

LABEL_28:
    v31 = 0;
    goto LABEL_29;
  }

  if (v165[5])
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v64 = objc_opt_class();
      v65 = NSStringFromClass(v64);
      v66 = NSStringFromSelector(a2);
      visitIdentifier2 = [curationCopy visitIdentifier];
      v68 = v165[5];
      *buf = 138413058;
      *&buf[4] = v65;
      *&buf[12] = 2112;
      *&buf[14] = v66;
      *&buf[22] = 2112;
      v185 = visitIdentifier2;
      *v186 = 2112;
      *&v186[2] = v68;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, %@, error occurred while invoking fetchVisitWithIdentifier with identifier, %@, error, %@", buf, 0x2Au);
    }

    if (error)
    {
      v29 = 0;
      v31 = 0;
      *error = v165[5];
      goto LABEL_29;
    }

    v29 = 0;
    goto LABEL_28;
  }

  if (!v159[5])
  {
    visitEntryDate = [curationCopy visitEntryDate];
    v128 = [RTVisitRedactionUtilities visitStartDateRangeFromObfuscatedStartDate:visitEntryDate];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v39 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v41;
        *&buf[12] = 2112;
        *&buf[14] = v42;
        *&buf[22] = 2112;
        v185 = v128;
        _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "%@, %@, no visit found matching the user curation's visit identifier, searching for matching visits within the unobfuscated time range, %@", buf, 0x20u);
      }
    }

    v187 = 0;
    v188 = &v187;
    v189 = 0x3032000000;
    v190 = __Block_byref_object_copy__41;
    v191 = __Block_byref_object_dispose__41;
    v192 = 0;
    v148 = 0;
    v149 = &v148;
    v150 = 0x3032000000;
    v151 = __Block_byref_object_copy__41;
    v152 = __Block_byref_object_dispose__41;
    v153 = 0;
    v43 = dispatch_semaphore_create(0);
    v44 = selfCopy2->_learnedLocationStore;
    v144[0] = MEMORY[0x277D85DD0];
    v144[1] = 3221225472;
    v144[2] = __82__RTLearnedLocationEngine__findVisitsAssociatedWithHistoricalVisitCuration_error___block_invoke_901;
    v144[3] = &unk_2788C4490;
    v146 = &v148;
    v147 = &v187;
    v45 = v43;
    v145 = v45;
    [(RTLearnedLocationStore *)v44 fetchVisitsOverlappingDateInterval:v128 handler:v144];
    dsema = v45;
    v46 = [MEMORY[0x277CBEAA8] now];
    v47 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v47))
    {
      v48 = [MEMORY[0x277CBEAA8] now];
      [v48 timeIntervalSinceDate:v46];
      v50 = v49;
      v51 = objc_opt_new();
      v52 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
      v54 = [callStackSymbols2 filteredArrayUsingPredicate:v52];
      firstObject2 = [v54 firstObject];

      [v51 submitToCoreAnalytics:firstObject2 type:1 duration:v50];
      v56 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v56, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v57 = MEMORY[0x277CCA9B8];
      v177 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v177 count:1];
      v59 = [v57 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v58];

      if (v59)
      {
        v60 = v59;
      }
    }

    else
    {
      v59 = 0;
    }

    v61 = v59;
    if (v61)
    {
      v29 = v61;
      if (error)
      {
        v62 = v61;
        v31 = 0;
        *error = v29;
LABEL_97:

        _Block_object_dispose(&v148, 8);
        _Block_object_dispose(&v187, 8);

        goto LABEL_29;
      }

LABEL_87:
      v31 = 0;
      goto LABEL_97;
    }

    if (v188[5])
    {
      v63 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v117 = objc_opt_class();
        v118 = NSStringFromClass(v117);
        v119 = NSStringFromSelector(a2);
        v120 = v188[5];
        *buf = 138413058;
        *&buf[4] = v118;
        *&buf[12] = 2112;
        *&buf[14] = v119;
        *&buf[22] = 2112;
        v185 = v128;
        *v186 = 2112;
        *&v186[2] = v120;
        _os_log_error_impl(&dword_2304B3000, v63, OS_LOG_TYPE_ERROR, "%@, %@, error occurred while invoking fetchVisitsOverlappingDateInterval with date interval, %@, error, %@", buf, 0x2Au);
      }

      if (error)
      {
        v29 = 0;
        v31 = 0;
        *error = v188[5];
        goto LABEL_97;
      }

      goto LABEL_86;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v69 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v70 = objc_opt_class();
        v71 = NSStringFromClass(v70);
        v72 = NSStringFromSelector(a2);
        v73 = [v149[5] count];
        v74 = v188[5];
        *buf = 138413314;
        *&buf[4] = v71;
        *&buf[12] = 2112;
        *&buf[14] = v72;
        *&buf[22] = 2048;
        v185 = v73;
        *v186 = 2112;
        *&v186[2] = v128;
        *&v186[10] = 2112;
        *&v186[12] = v74;
        _os_log_impl(&dword_2304B3000, v69, OS_LOG_TYPE_INFO, "%@, %@, fetched %lu visits within curation date interval, %@, error, %@", buf, 0x34u);
      }
    }

    if (![v149[5] count])
    {
      if (error)
      {
        v29 = 0;
        v31 = 0;
        *error = 0;
        goto LABEL_97;
      }

LABEL_86:
      v29 = 0;
      goto LABEL_87;
    }

    v75 = objc_opt_new();
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    obj = v149[5];
    v76 = [obj countByEnumeratingWithState:&v140 objects:v183 count:16];
    v77 = selfCopy2;
    v121 = v75;
    if (!v76)
    {
      v29 = 0;
LABEL_89:

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v112 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
        {
          v113 = objc_opt_class();
          v114 = NSStringFromClass(v113);
          v115 = NSStringFromSelector(a2);
          v116 = [v121 count];
          *buf = 138412802;
          *&buf[4] = v114;
          *&buf[12] = 2112;
          *&buf[14] = v115;
          *&buf[22] = 2048;
          v185 = v116;
          _os_log_impl(&dword_2304B3000, v112, OS_LOG_TYPE_INFO, "%@, %@, reduced all visits within curation date interval to %lu visits matching curation's map item", buf, 0x20u);
        }
      }

      if (error)
      {
        *error = 0;
      }

      v111 = v121;
      v31 = v121;
LABEL_96:

      goto LABEL_97;
    }

    v29 = 0;
    v126 = *v141;
    v125 = v76;
    v123 = *MEMORY[0x277D01448];
    v124 = *MEMORY[0x277CCA450];
LABEL_57:
    v129 = 0;
    v131 = v29;
    while (1)
    {
      if (*v141 != v126)
      {
        objc_enumerationMutation(obj);
      }

      v78 = *(*(&v140 + 1) + 8 * v129);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v185 = __Block_byref_object_copy__41;
      *v186 = __Block_byref_object_dispose__41;
      *&v186[8] = 0;
      v177 = 0;
      v178 = &v177;
      v179 = 0x3032000000;
      v180 = __Block_byref_object_copy__41;
      v181 = __Block_byref_object_dispose__41;
      v182 = 0;
      v79 = dispatch_semaphore_create(0);
      v80 = v77->_learnedLocationStore;
      v127 = v78;
      identifier = [v78 identifier];
      v136[0] = MEMORY[0x277D85DD0];
      v136[1] = 3221225472;
      v136[2] = __82__RTLearnedLocationEngine__findVisitsAssociatedWithHistoricalVisitCuration_error___block_invoke_902;
      v136[3] = &unk_2788C8778;
      v138 = &v177;
      v139 = buf;
      v82 = v79;
      v137 = v82;
      [(RTLearnedLocationStore *)v80 fetchInferredMapItemForVisitIdentifier:identifier handler:v136];

      v132 = v82;
      v83 = [MEMORY[0x277CBEAA8] now];
      v84 = dispatch_time(0, 3600000000000);
      v85 = v131;
      if (dispatch_semaphore_wait(v132, v84))
      {
        v86 = [MEMORY[0x277CBEAA8] now];
        [v86 timeIntervalSinceDate:v83];
        v88 = v87;
        v89 = objc_opt_new();
        v90 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
        callStackSymbols3 = [MEMORY[0x277CCACC8] callStackSymbols];
        v92 = [callStackSymbols3 filteredArrayUsingPredicate:v90];
        firstObject3 = [v92 firstObject];

        [v89 submitToCoreAnalytics:firstObject3 type:1 duration:v88];
        v94 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
        {
          *v170 = 0;
          _os_log_fault_impl(&dword_2304B3000, v94, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v170, 2u);
        }

        v95 = MEMORY[0x277CCA9B8];
        v194[0] = v124;
        *v170 = @"semaphore wait timeout";
        v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v170 forKeys:v194 count:1];
        v97 = [v95 errorWithDomain:v123 code:15 userInfo:v96];

        v85 = v131;
        if (v97)
        {
          v98 = v97;

          v85 = v97;
        }
      }

      v29 = v85;
      if (v29)
      {
        v99 = v29;
        if (!error)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (!*(*&buf[8] + 40))
        {
          v102 = v178[5];
          if (v102)
          {
            mapItem = [v102 mapItem];
            originalLabel = [curationCopy originalLabel];
            v105 = [mapItem isEqualToMapItem:originalLabel];

            if (v105)
            {
              [v121 addObject:v127];
            }

            v101 = 1;
            goto LABEL_79;
          }
        }

        v100 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
        {
          v106 = objc_opt_class();
          v107 = NSStringFromClass(v106);
          v108 = NSStringFromSelector(a2);
          identifier2 = [v127 identifier];
          v110 = *(*&buf[8] + 40);
          *v170 = 138413058;
          *&v170[4] = v107;
          v171 = 2112;
          v172 = v108;
          v173 = 2112;
          v174 = identifier2;
          v175 = 2112;
          v176 = v110;
          _os_log_error_impl(&dword_2304B3000, v100, OS_LOG_TYPE_ERROR, "%@, %@, fetchInferredMapItemForVisitIdentifier failed to return a valid map item with visit identifier, %@, error, %@", v170, 0x2Au);
        }

        if (!error)
        {
LABEL_74:
          v101 = 0;
          goto LABEL_79;
        }

        v99 = *(*&buf[8] + 40);
      }

      v101 = 0;
      *error = v99;
LABEL_79:

      _Block_object_dispose(&v177, 8);
      _Block_object_dispose(buf, 8);

      if (!v101)
      {

        v31 = 0;
        v111 = v121;
        goto LABEL_96;
      }

      v131 = v29;
      ++v129;
      v77 = selfCopy2;
      if (v125 == v129)
      {
        v125 = [obj countByEnumeratingWithState:&v140 objects:v183 count:16];
        if (v125)
        {
          goto LABEL_57;
        }

        goto LABEL_89;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v35;
      *&buf[12] = 2112;
      *&buf[14] = v36;
      _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "%@, %@, successfully fetched a visit matching the user curation's visit identifier", buf, 0x16u);
    }
  }

  if (error)
  {
    *error = 0;
  }

  v193 = v159[5];
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v193 count:1];
  v29 = 0;
LABEL_29:

  _Block_object_dispose(&v158, 8);
  _Block_object_dispose(&v164, 8);

  return v31;
}

void __82__RTLearnedLocationEngine__findVisitsAssociatedWithHistoricalVisitCuration_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __82__RTLearnedLocationEngine__findVisitsAssociatedWithHistoricalVisitCuration_error___block_invoke_901(uint64_t a1, void *a2, void *a3)
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

void __82__RTLearnedLocationEngine__findVisitsAssociatedWithHistoricalVisitCuration_error___block_invoke_902(uint64_t a1, void *a2, void *a3)
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

- (id)_findOrCreateLOIForMapItem:(id)item error:(id *)error
{
  v97[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__41;
  v90 = __Block_byref_object_dispose__41;
  v91 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__41;
  v84 = __Block_byref_object_dispose__41;
  v85 = 0;
  v6 = dispatch_semaphore_create(0);
  learnedLocationStore = self->_learnedLocationStore;
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __60__RTLearnedLocationEngine__findOrCreateLOIForMapItem_error___block_invoke;
  v76[3] = &unk_2788C4B58;
  v78 = &v86;
  v79 = &v80;
  v8 = v6;
  v77 = v8;
  [(RTLearnedLocationStore *)learnedLocationStore fetchLocationOfInterestWithMapItem:itemCopy handler:v76];
  v9 = v8;
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceDate:v10];
    v14 = v13;
    v15 = objc_opt_new();
    v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v18 = [callStackSymbols filteredArrayUsingPredicate:v16];
    firstObject = [v18 firstObject];

    [v15 submitToCoreAnalytics:firstObject type:1 duration:v14];
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v97[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v97 count:1];
    v23 = [v21 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v22];

    if (v23)
    {
      v24 = v23;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = v23;
  v26 = v25;
  if (v25)
  {
    if (error)
    {
      v27 = v25;
      v28 = 0;
      *error = v26;
      goto LABEL_56;
    }

LABEL_15:
    v28 = 0;
    goto LABEL_56;
  }

  if (v87[5])
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      v59 = NSStringFromSelector(a2);
      v60 = v87[5];
      *buf = 138412802;
      *&buf[4] = v58;
      v93 = 2112;
      v94 = v59;
      v95 = 2112;
      v96 = v60;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "%@, %@, error occurred while fetching LOI, %@", buf, 0x20u);
    }

    if (error)
    {
      v28 = 0;
      *error = v87[5];
      goto LABEL_56;
    }

    goto LABEL_15;
  }

  v30 = v81[5];
  v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v30)
  {
    if (v31)
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = NSStringFromSelector(a2);
        v36 = v81[5];
        *buf = 138412802;
        *&buf[4] = v34;
        v93 = 2112;
        v94 = v35;
        v95 = 2112;
        v96 = v36;
        _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@, %@, pre-existing location of interest was found, %@", buf, 0x20u);
      }
    }

    if (error)
    {
      *error = 0;
    }

    v28 = v81[5];
  }

  else
  {
    if (v31)
    {
      v37 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v40 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v39;
        v93 = 2112;
        v94 = v40;
        _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "%@, %@, no pre-existing location of interest found for map item, creating one", buf, 0x16u);
      }
    }

    v75 = 0;
    v41 = [(RTLearnedLocationEngine *)self _placeForMapItem:itemCopy error:&v75];
    v42 = v75;
    if (v42 || !v41)
    {
      v55 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v64 = objc_opt_class();
        v65 = NSStringFromClass(v64);
        v66 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v65;
        v93 = 2112;
        v94 = v66;
        v95 = 2112;
        v96 = v42;
        _os_log_error_impl(&dword_2304B3000, v55, OS_LOG_TYPE_ERROR, "%@, %@, _placeForMapItem failed to return a valid RTLearnedPlace, error, %@", buf, 0x20u);
      }

      if (error)
      {
        v56 = v42;
        v28 = 0;
        *error = v42;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v43 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          v46 = NSStringFromSelector(a2);
          *buf = 138412802;
          *&buf[4] = v45;
          v93 = 2112;
          v94 = v46;
          v95 = 2112;
          v96 = v41;
          _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "%@, %@, retrieved the following place for curation label, %@", buf, 0x20u);
        }
      }

      v74 = 0;
      v47 = [(RTLearnedLocationEngine *)self _createLOIForPlace:v41 error:&v74];
      v48 = v74;
      if (v48 || !v47)
      {
        v61 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        v71 = v47;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v67 = objc_opt_class();
          v68 = NSStringFromClass(v67);
          v69 = NSStringFromSelector(a2);
          *buf = 138412802;
          *&buf[4] = v68;
          v93 = 2112;
          v94 = v69;
          v95 = 2112;
          v96 = v48;
          _os_log_error_impl(&dword_2304B3000, v61, OS_LOG_TYPE_ERROR, "%@, %@, _createLOIForPlace failed to return a valid RTLearnedLocationOfInterest, error, %@", buf, 0x20u);
        }

        if (error)
        {
          v62 = v48;
          v28 = 0;
          *error = v48;
        }

        else
        {
          v28 = 0;
        }

        v54 = v71;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v70 = v47;
          v49 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            v50 = objc_opt_class();
            v51 = NSStringFromClass(v50);
            v52 = NSStringFromSelector(a2);
            *buf = 138412802;
            *&buf[4] = v51;
            v93 = 2112;
            v94 = v52;
            v95 = 2112;
            v96 = v70;
            _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "%@, %@, new LOI created and stored successfully for curation label, %@", buf, 0x20u);
          }

          v47 = v70;
        }

        if (error)
        {
          *error = 0;
        }

        v53 = v47;
        v54 = v47;
        v28 = v53;
      }
    }
  }

LABEL_56:

  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v86, 8);

  return v28;
}

void __60__RTLearnedLocationEngine__findOrCreateLOIForMapItem_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_applyUserCuration:(id)curation relabelerPersister:(id)persister harvestCuration:(BOOL)harvestCuration error:(id *)p_isa
{
  harvestCurationCopy = harvestCuration;
  v137 = *MEMORY[0x277D85DE8];
  curationCopy = curation;
  persisterCopy = persister;
  if (!persisterCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v130 = "[RTLearnedLocationEngine _applyUserCuration:relabelerPersister:harvestCuration:error:]";
      v131 = 1024;
      LODWORD(v132) = 7511;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: relabelerPersister (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      [curationCopy abbreviatedDescription];
      v18 = v17 = p_isa;
      *buf = 138412802;
      v130 = v15;
      v131 = 2112;
      v132 = v16;
      v133 = 2112;
      v134 = v18;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, attempting to apply curation, %@", buf, 0x20u);

      p_isa = v17;
    }
  }

  curatedLabel = [curationCopy curatedLabel];

  if (curatedLabel)
  {
    visitIdentifier = [curationCopy visitIdentifier];

    if (visitIdentifier)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v21 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          v24 = NSStringFromSelector(a2);
          *buf = 138412546;
          v130 = v23;
          v131 = 2112;
          v132 = v24;
          _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, %@, treating user curation as a historical visit curation", buf, 0x16u);
        }
      }

      v127 = 0;
      v25 = &v127;
      v26 = [(RTLearnedLocationEngine *)self _findVisitsAssociatedWithHistoricalVisitCuration:curationCopy error:&v127];
    }

    else
    {
      submissionDate = [curationCopy submissionDate];
      visitEntryDate = [curationCopy visitEntryDate];
      v32 = [submissionDate isEqualToDate:visitEntryDate];

      if ((v32 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v33 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = NSStringFromSelector(a2);
          *buf = 138412802;
          v130 = v35;
          v131 = 2112;
          v132 = v36;
          v133 = 2112;
          v134 = curationCopy;
          _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "%@, %@, user curation has no associated visit identifier, but does not appear to be a current place curation, this may have been submitted by a deprecated SPI, %@", buf, 0x20u);
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v37 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          v40 = NSStringFromSelector(a2);
          *buf = 138412546;
          v130 = v39;
          v131 = 2112;
          v132 = v40;
          _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "%@, %@, treating user curation as a current place curation", buf, 0x16u);
        }
      }

      v128 = 0;
      v25 = &v128;
      v26 = [(RTLearnedLocationEngine *)self _findVisitsAssociatedWithCurrentPlaceCuration:curationCopy error:&v128];
    }

    v41 = v26;
    v42 = *v25;
    v29 = v42 == 0;
    if (v42 || !v41 || ![v41 count])
    {
      v75 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        v84 = objc_opt_class();
        v85 = NSStringFromClass(v84);
        v86 = NSStringFromSelector(a2);
        [curationCopy identifier];
        v87 = logc = p_isa;
        *buf = 138413058;
        v130 = v85;
        v131 = 2112;
        v132 = v86;
        v133 = 2112;
        v134 = v87;
        v135 = 2112;
        v136 = v42;
        _os_log_error_impl(&dword_2304B3000, v75, OS_LOG_TYPE_ERROR, "%@, %@, could not find any visits to associate with curation with UUID %@, error, %@", buf, 0x2Au);

        p_isa = &logc->isa;
      }

      curatedLabel2 = [curationCopy curatedLabel];
      [(RTLearnedLocationEngine *)self _submitMetricsForApplicationOfCuratedLabel:curatedLabel2 visit:0 result:3];

      if (p_isa)
      {
        v77 = v42;
        *p_isa = v42;
      }

      goto LABEL_77;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v43 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = objc_opt_class();
        NSStringFromClass(v44);
        loga = p_isa;
        v45 = v118 = persisterCopy;
        v46 = NSStringFromSelector(a2);
        v47 = a2;
        v48 = [v41 count];
        identifier = [curationCopy identifier];
        *buf = 138413058;
        v130 = v45;
        v131 = 2112;
        v132 = v46;
        v133 = 2048;
        v134 = v48;
        a2 = v47;
        v135 = 2112;
        v136 = identifier;
        _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "%@, %@, found %lu visits to associate with curation with UUID %@", buf, 0x2Au);

        persisterCopy = v118;
        p_isa = &loga->isa;
      }
    }

    curatedLabel3 = [curationCopy curatedLabel];
    v126 = 0;
    v51 = [(RTLearnedLocationEngine *)self _findOrCreateLOIForMapItem:curatedLabel3 error:&v126];
    v52 = v126;

    v117 = v52;
    v119 = v51;
    if (v52 || !v51)
    {
      v78 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        v92 = objc_opt_class();
        v93 = NSStringFromClass(v92);
        v94 = NSStringFromSelector(a2);
        identifier2 = [curationCopy identifier];
        *buf = 138413058;
        v130 = v93;
        v131 = 2112;
        v132 = v94;
        v133 = 2112;
        v134 = identifier2;
        v135 = 2112;
        v136 = v117;
        _os_log_error_impl(&dword_2304B3000, v78, OS_LOG_TYPE_ERROR, "%@, %@, could not find any LOIs associated with curation with UUID %@, error, %@", buf, 0x2Au);
      }

      curatedLabel4 = [curationCopy curatedLabel];
      [(RTLearnedLocationEngine *)self _submitMetricsForApplicationOfCuratedLabel:curatedLabel4 visit:0 result:4];

      if (p_isa)
      {
        v80 = v117;
        v81 = v117;
        v29 = 0;
        *p_isa = v117;
      }

      else
      {
        v29 = 0;
        v80 = v117;
      }

      goto LABEL_76;
    }

    aSelector = a2;
    place = [v51 place];
    mapItem = [place mapItem];
    v125 = 0;
    v29 = [(RTLearnedLocationEngine *)self _curateVisits:v41 newLabel:mapItem relabelerPersister:persisterCopy error:&v125];
    v55 = v125;

    if (!v29)
    {
      v122 = v55;
      v82 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        v96 = objc_opt_class();
        v97 = NSStringFromClass(v96);
        v98 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        v130 = v97;
        v131 = 2112;
        v132 = v98;
        v133 = 2112;
        v134 = v122;
        _os_log_error_impl(&dword_2304B3000, v82, OS_LOG_TYPE_ERROR, "%@, %@, error occurred while curating visits, %@", buf, 0x20u);
      }

      v80 = 0;
      v55 = v122;
      if (p_isa)
      {
        v83 = v122;
        *p_isa = v122;
      }

      goto LABEL_75;
    }

    v124 = 0;
    v56 = [(RTLearnedLocationEngine *)self _updateExpirationDateOfStoredUserCuration:curationCopy associatedVisits:v41 error:&v124];
    v57 = v124;
    if (!v56)
    {
      v58 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v99 = objc_opt_class();
        v111 = NSStringFromClass(v99);
        NSStringFromSelector(aSelector);
        logb = v58;
        v101 = v100 = v57;
        *buf = 138412802;
        v130 = v111;
        v131 = 2112;
        v132 = v101;
        v133 = 2112;
        v134 = v100;
        _os_log_error_impl(&dword_2304B3000, logb, OS_LOG_TYPE_ERROR, "%@, %@, error occurred while updating curation expiration date, %@", buf, 0x20u);

        v57 = v100;
        v58 = logb;
      }
    }

    if (!harvestCurationCopy)
    {
LABEL_72:
      if (p_isa)
      {
        *p_isa = 0;
      }

      v80 = 0;
LABEL_75:

LABEL_76:
LABEL_77:

      goto LABEL_78;
    }

    v121 = v55;
    v107 = v57;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v59 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v60 = objc_opt_class();
        v61 = NSStringFromClass(v60);
        v62 = NSStringFromSelector(aSelector);
        *buf = 138412546;
        v130 = v61;
        v131 = 2112;
        v132 = v62;
        _os_log_impl(&dword_2304B3000, v59, OS_LOG_TYPE_INFO, "%@, %@, attempting to harvest user curation POI data", buf, 0x16u);
      }
    }

    log = p_isa;
    v63 = [[_RTMap alloc] initWithInput:v41];
    v110 = [(_RTMap *)v63 withBlock:&__block_literal_global_905];

    v108 = [RTPOIHarvester alloc];
    defaultsManager = [(RTLearnedLocationEngine *)self defaultsManager];
    fingerprintManager = [(RTLearnedLocationEngine *)self fingerprintManager];
    locationManager = [(RTLearnedLocationEngine *)self locationManager];
    motionActivityManager = [(RTLearnedLocationEngine *)self motionActivityManager];
    v109 = [(RTPOIHarvester *)v108 initWithDefaultsManager:defaultsManager fingerprintManager:fingerprintManager locationManager:locationManager motionActivityManager:motionActivityManager];

    place2 = [v119 place];
    mapItem2 = [place2 mapItem];
    v123 = 0;
    LOBYTE(motionActivityManager) = [RTPOIHarvestUtilities harvestCuration:curationCopy mapItem:mapItem2 referenceLocations:v110 poiHarvester:v109 error:&v123];
    v70 = v123;

    if (motionActivityManager)
    {
      v71 = v70;
      p_isa = &log->isa;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_71:

        v55 = v121;
        v57 = v107;
        goto LABEL_72;
      }

      v72 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        v73 = objc_opt_class();
        v106 = NSStringFromClass(v73);
        v74 = NSStringFromSelector(aSelector);
        *buf = 138412546;
        v130 = v106;
        v131 = 2112;
        v132 = v74;
        _os_log_impl(&dword_2304B3000, v72, OS_LOG_TYPE_INFO, "%@, %@, user curation POI data harvested successfully!", buf, 0x16u);
      }
    }

    else
    {
      v72 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        v102 = objc_opt_class();
        v103 = NSStringFromClass(v102);
        v104 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        v130 = v103;
        v105 = v103;
        v131 = 2112;
        v132 = v104;
        v133 = 2112;
        v71 = v70;
        v134 = v70;
        _os_log_error_impl(&dword_2304B3000, v72, OS_LOG_TYPE_ERROR, "%@, %@, error occurred while harvesting user curation, %@", buf, 0x20u);
      }

      else
      {
        v71 = v70;
      }

      p_isa = &log->isa;
    }

    goto LABEL_71;
  }

  v27 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v88 = objc_opt_class();
    v89 = NSStringFromClass(v88);
    v90 = NSStringFromSelector(a2);
    *buf = 138412546;
    v130 = v89;
    v131 = 2112;
    v132 = v90;
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, %@, no curated label associated with curation, exiting early", buf, 0x16u);
  }

  curatedLabel5 = [curationCopy curatedLabel];
  [(RTLearnedLocationEngine *)self _submitMetricsForApplicationOfCuratedLabel:curatedLabel5 visit:0 result:2];

  if (p_isa)
  {
    *p_isa = 0;
  }

  v29 = 1;
LABEL_78:

  return v29;
}

id __87__RTLearnedLocationEngine__applyUserCuration_relabelerPersister_harvestCuration_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 location];
  v3 = [v2 location];

  return v3;
}

- (BOOL)_applyUserCurationsSubmittedSince:(id)since error:(id *)error
{
  v109[1] = *MEMORY[0x277D85DE8];
  sinceCopy = since;
  v98 = 0;
  selfCopy = self;
  v74 = [(RTLearnedLocationEngine *)self createRelabelerPersisterWithError:&v98];
  v5 = v98;
  v69 = v5;
  if (!v5)
  {
    v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (sinceCopy)
    {
      if (v8)
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          v12 = NSStringFromSelector(a2);
          *buf = 138412802;
          *&buf[4] = v11;
          v100 = 2112;
          v101 = v12;
          v102 = 2112;
          v103 = sinceCopy;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, invoked with start date, %@", buf, 0x20u);
        }
      }
    }

    else
    {
      if (v8)
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v16 = NSStringFromSelector(a2);
          *buf = 138412546;
          *&buf[4] = v15;
          v100 = 2112;
          v101 = v16;
          _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, invoked with an undefined start date, defaulting to distant past", buf, 0x16u);
        }
      }

      sinceCopy = [MEMORY[0x277CBEAA8] distantPast];
    }

    v17 = objc_alloc(MEMORY[0x277CCA970]);
    v18 = [MEMORY[0x277CBEAA8] now];
    v97 = 0;
    v66 = [v17 rt_initWithStartDate:sinceCopy endDate:v18 error:&v97];
    v67 = v97;

    if (v67)
    {
      if (error)
      {
        v19 = v67;
        v7 = 0;
        *error = v67;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_60;
    }

    v91 = 0;
    v92 = &v91;
    v93 = 0x3032000000;
    v94 = __Block_byref_object_copy__41;
    v95 = __Block_byref_object_dispose__41;
    v96 = 0;
    v85 = 0;
    v86 = &v85;
    v87 = 0x3032000000;
    v88 = __Block_byref_object_copy__41;
    v89 = __Block_byref_object_dispose__41;
    v90 = 0;
    v64 = [objc_alloc(MEMORY[0x277D01330]) initWithAscending:1 submissionDateInterval:v66 limit:0];
    v20 = dispatch_semaphore_create(0);
    userCurationStore = [(RTLearnedLocationEngine *)selfCopy userCurationStore];
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __67__RTLearnedLocationEngine__applyUserCurationsSubmittedSince_error___block_invoke;
    v81[3] = &unk_2788C4490;
    v83 = &v91;
    v84 = &v85;
    v22 = v20;
    v82 = v22;
    [userCurationStore fetchStoredUserCurationsWithOptions:v64 handler:v81];

    dsema = v22;
    v23 = [MEMORY[0x277CBEAA8] now];
    v24 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v24))
    {
      v25 = [MEMORY[0x277CBEAA8] now];
      [v25 timeIntervalSinceDate:v23];
      v27 = v26;
      v28 = objc_opt_new();
      v29 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v31 = [callStackSymbols filteredArrayUsingPredicate:v29];
      firstObject = [v31 firstObject];

      [v28 submitToCoreAnalytics:firstObject type:1 duration:v27];
      v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v33, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v34 = MEMORY[0x277CCA9B8];
      v109[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v109 count:1];
      v36 = [v34 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v35];

      if (v36)
      {
        v37 = v36;
      }
    }

    else
    {
      v36 = 0;
    }

    v63 = v36;
    if (v63)
    {
      if (error)
      {
        v38 = v63;
        v7 = 0;
        *error = v63;
LABEL_59:

        _Block_object_dispose(&v85, 8);
        _Block_object_dispose(&v91, 8);

LABEL_60:
        goto LABEL_61;
      }
    }

    else
    {
      v39 = v92[5];
      if (!v39)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v40 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = objc_opt_class();
            v42 = NSStringFromClass(v41);
            v43 = NSStringFromSelector(a2);
            v44 = [v86[5] count];
            *buf = 138412802;
            *&buf[4] = v42;
            v100 = 2112;
            v101 = v43;
            v102 = 2048;
            v103 = v44;
            _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "%@, %@, retrieved %lu user curations", buf, 0x20u);
          }
        }

        v45 = v86[5];
        if (v45 && [v45 count])
        {
          v73 = objc_opt_new();
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          obj = v86[5];
          v46 = [obj countByEnumeratingWithState:&v77 objects:v108 count:16];
          if (v46)
          {
            v47 = *v78;
            do
            {
              for (i = 0; i != v46; ++i)
              {
                if (*v78 != v47)
                {
                  objc_enumerationMutation(obj);
                }

                v49 = *(*(&v77 + 1) + 8 * i);
                v50 = objc_autoreleasePoolPush();
                v76 = 0;
                v51 = [(RTLearnedLocationEngine *)selfCopy _applyUserCuration:v49 relabelerPersister:v74 harvestCuration:0 error:&v76];
                v52 = v76;
                if (v52)
                {
                  [v73 addObject:v52];
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v53 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                  {
                    v54 = objc_opt_class();
                    v55 = NSStringFromClass(v54);
                    v56 = NSStringFromSelector(a2);
                    v57 = v56;
                    *buf = 138413314;
                    v58 = @"NO";
                    if (v51)
                    {
                      v58 = @"YES";
                    }

                    *&buf[4] = v55;
                    v100 = 2112;
                    v101 = v56;
                    v102 = 2112;
                    v103 = v49;
                    v104 = 2112;
                    v105 = v58;
                    v106 = 2112;
                    v107 = v52;
                    _os_log_impl(&dword_2304B3000, v53, OS_LOG_TYPE_INFO, "%@, %@, attempted to apply user curation, %@, success, %@, error, %@", buf, 0x34u);
                  }
                }

                objc_autoreleasePoolPop(v50);
              }

              v46 = [obj countByEnumeratingWithState:&v77 objects:v108 count:16];
            }

            while (v46);
          }

          v59 = _RTSafeArray();
          v60 = _RTMultiErrorCreate();

          if (error)
          {
            v61 = v60;
            *error = v60;
          }

          v7 = [v73 count] == 0;
        }

        else
        {
          if (error)
          {
            *error = 0;
          }

          v7 = 1;
        }

        goto LABEL_59;
      }

      if (error)
      {
        v7 = 0;
        *error = v39;
        goto LABEL_59;
      }
    }

    v7 = 0;
    goto LABEL_59;
  }

  if (error)
  {
    v6 = v5;
    v7 = 0;
    *error = v69;
  }

  else
  {
    v7 = 0;
  }

LABEL_61:

  return v7;
}

void __67__RTLearnedLocationEngine__applyUserCurationsSubmittedSince_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)applyUserCuration:(id)curation harvestCuration:(BOOL)harvestCuration handler:(id)handler
{
  harvestCurationCopy = harvestCuration;
  v34 = *MEMORY[0x277D85DE8];
  curationCopy = curation;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (!curationCopy)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v25 = "[RTLearnedLocationEngine applyUserCuration:harvestCuration:handler:]";
        v26 = 1024;
        LODWORD(v27) = 7743;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: curation (in %s:%d)", buf, 0x12u);
      }
    }

    v23 = 0;
    v12 = [(RTLearnedLocationEngine *)self createRelabelerPersisterWithError:&v23];
    v13 = v23;
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v22 = 0;
      v15 = [(RTLearnedLocationEngine *)self _applyUserCuration:curationCopy relabelerPersister:v12 harvestCuration:harvestCurationCopy error:&v22];
      v14 = v22;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v16 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = NSStringFromSelector(a2);
          v20 = v19;
          *buf = 138413314;
          v21 = @"NO";
          v25 = v18;
          v26 = 2112;
          if (v15)
          {
            v21 = @"YES";
          }

          v27 = v19;
          v28 = 2112;
          v29 = curationCopy;
          v30 = 2112;
          v31 = v21;
          v32 = 2112;
          v33 = v14;
          _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, %@, attempted to apply user curation, %@, success, %@, error, %@", buf, 0x34u);
        }
      }
    }

    handlerCopy[2](handlerCopy, v14);
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

- (BOOL)_verifyVisitGraphExpirationDates:(id *)dates
{
  v37 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__41;
  v33 = __Block_byref_object_dispose__41;
  v34 = 0;
  v5 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTLearnedLocationEngine *)self learnedLocationStore];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __60__RTLearnedLocationEngine__verifyVisitGraphExpirationDates___block_invoke;
  v26[3] = &unk_2788C4618;
  v28 = &v29;
  v7 = v5;
  v27 = v7;
  [learnedLocationStore verifyExpirationDatesOfVisitGraphWithHandler:v26];

  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
    firstObject = [v17 firstObject];

    [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v35 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;
    }
  }

  if (dates)
  {
    *dates = v30[5];
  }

  v24 = v30[5] == 0;

  _Block_object_dispose(&v29, 8);
  return v24;
}

void __60__RTLearnedLocationEngine__verifyVisitGraphExpirationDates___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_mapItemsWithUserCurationCorrection:(id)correction error:(id *)error
{
  v109[1] = *MEMORY[0x277D85DE8];
  correctionCopy = correction;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(a2);
      *buf = 138412803;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 2117;
      v106 = correctionCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, %@, invoked for map items, %{sensitive}@", buf, 0x20u);
    }
  }

  v9 = dispatch_semaphore_create(0);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v106 = __Block_byref_object_copy__41;
  v107 = __Block_byref_object_dispose__41;
  v108 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = __Block_byref_object_copy__41;
  v95 = __Block_byref_object_dispose__41;
  v96 = 0;
  v10 = [objc_alloc(MEMORY[0x277D01330]) initWithAscending:0 sortIndex:1 limit:0];
  userCurationStore = [(RTLearnedLocationEngine *)self userCurationStore];
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __69__RTLearnedLocationEngine__mapItemsWithUserCurationCorrection_error___block_invoke;
  v85[3] = &unk_2788C8D88;
  v85[4] = self;
  v90 = a2;
  v86 = v10;
  v88 = buf;
  v12 = v9;
  v87 = v12;
  v89 = &v91;
  v74 = v86;
  [userCurationStore fetchStoredUserCurationsWithOptions:v86 handler:v85];

  v13 = (*&buf[8] + 40);
  v14 = *(*&buf[8] + 40);
  dsema = v12;
  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v16))
  {
    v17 = [MEMORY[0x277CBEAA8] now];
    [v17 timeIntervalSinceDate:v15];
    v19 = v18;
    v20 = objc_opt_new();
    v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1375];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v23 = [callStackSymbols filteredArrayUsingPredicate:v21];
    firstObject = [v23 firstObject];

    [v20 submitToCoreAnalytics:firstObject type:1 duration:v19];
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *v97 = 0;
      _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v97, 2u);
    }

    v26 = MEMORY[0x277CCA9B8];
    v109[0] = *MEMORY[0x277CCA450];
    *v97 = @"semaphore wait timeout";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v109 count:1];
    v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

    if (v28)
    {
      v29 = v28;

      v14 = v28;
    }
  }

  objc_storeStrong(v13, v14);
  v30 = *(*&buf[8] + 40);
  if (v30)
  {
    if (error)
    {
      *error = v30;
    }

LABEL_13:
    v80 = correctionCopy;
    goto LABEL_60;
  }

  if (!v92[5])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v70 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        v71 = objc_opt_class();
        v72 = NSStringFromClass(v71);
        v73 = NSStringFromSelector(a2);
        *v97 = 138412803;
        *&v97[4] = v72;
        v98 = 2112;
        v99 = v73;
        v100 = 2117;
        v101 = v74;
        _os_log_impl(&dword_2304B3000, v70, OS_LOG_TYPE_INFO, "%@, %@, no user curations fetched for options, %{sensitive}@, returning original map items early", v97, 0x20u);
      }
    }

    if (error)
    {
      *error = 0;
    }

    goto LABEL_13;
  }

  v80 = objc_opt_new();
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = correctionCopy;
  v31 = [obj countByEnumeratingWithState:&v81 objects:v104 count:16];
  if (!v31)
  {
    goto LABEL_59;
  }

  v32 = *v82;
  do
  {
    for (i = 0; i != v31; ++i)
    {
      if (*v82 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v81 + 1) + 8 * i);
      mapItem = [v34 mapItem];
      v36 = [mapItem mapItemPlaceType] == 1;

      if (!v36)
      {
        v41 = [v92[5] count];
        for (j = 0; ; ++j)
        {
          if (j >= [v92[5] count])
          {
            curatedLabel = 0;
            goto LABEL_32;
          }

          v43 = [v92[5] objectAtIndexedSubscript:j];
          originalLabel = [v43 originalLabel];
          muid = [originalLabel muid];
          mapItem2 = [v34 mapItem];
          LODWORD(muid) = muid == [mapItem2 muid];

          if (muid)
          {
            break;
          }
        }

        curatedLabel = [v43 curatedLabel];

        v41 = j;
LABEL_32:
        if (v41 == [v92[5] count])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v48 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = objc_opt_class();
              v50 = NSStringFromClass(v49);
              v51 = NSStringFromSelector(a2);
              *v97 = 138412803;
              *&v97[4] = v50;
              v98 = 2112;
              v99 = v51;
              v100 = 2117;
              v101 = v34;
              _os_log_impl(&dword_2304B3000, v48, OS_LOG_TYPE_INFO, "%@, %@, no matching user curations for map item, %{sensitive}@", v97, 0x20u);
            }
          }

          goto LABEL_55;
        }

        if ((v41 & 0x8000000000000000) == 0)
        {
          do
          {
            v52 = [v92[5] objectAtIndexedSubscript:v41];
            originalLabel2 = [v52 originalLabel];
            muid2 = [originalLabel2 muid];
            LODWORD(muid2) = muid2 == [curatedLabel muid];

            if (muid2)
            {
              curatedLabel2 = [v52 curatedLabel];

              curatedLabel = curatedLabel2;
            }
          }

          while (v41-- > 0);
        }

        if (curatedLabel && [curatedLabel validMUID] && (objc_msgSend(curatedLabel, "address"), v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v57, "mergedThoroughfare"), v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v58, "length") == 0, v58, v57, !v59))
        {
          v60 = [objc_alloc(MEMORY[0x277D01128]) initWithMapItem:curatedLabel confidence:8 source:0.6];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v61 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              v62 = objc_opt_class();
              v63 = NSStringFromClass(v62);
              v64 = NSStringFromSelector(a2);
              *v97 = 138413059;
              *&v97[4] = v63;
              v98 = 2112;
              v99 = v64;
              v100 = 2117;
              v101 = v60;
              v102 = 2117;
              v103 = v34;
              _os_log_impl(&dword_2304B3000, v61, OS_LOG_TYPE_INFO, "%@, %@, adding user curated map item replacement, %{sensitive}@, originalMapItem, %{sensitive}@", v97, 0x2Au);
            }
          }

          [v80 addObject:v60];
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v65 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
            {
              v66 = objc_opt_class();
              v67 = NSStringFromClass(v66);
              v68 = NSStringFromSelector(a2);
              *v97 = 138413059;
              *&v97[4] = v67;
              v98 = 2112;
              v99 = v68;
              v100 = 2117;
              v101 = curatedLabel;
              v102 = 2117;
              v103 = v34;
              _os_log_impl(&dword_2304B3000, v65, OS_LOG_TYPE_INFO, "%@, %@, replacement map item candidate, %{sensitive}@, for original map item, %{sensitive}@, has an invalid map item and thus will not be applied", v97, 0x2Au);
            }
          }

LABEL_55:
          [v80 addObject:v34];
        }

        continue;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v37 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          v40 = NSStringFromSelector(a2);
          *v97 = 138412803;
          *&v97[4] = v39;
          v98 = 2112;
          v99 = v40;
          v100 = 2117;
          v101 = v34;
          _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "%@, %@, not applying user curation correction to AOI, %{sensitive}@", v97, 0x20u);
        }
      }

      [v80 addObject:v34];
    }

    v31 = [obj countByEnumeratingWithState:&v81 objects:v104 count:16];
  }

  while (v31);
LABEL_59:

LABEL_60:
  _Block_object_dispose(&v91, 8);

  _Block_object_dispose(buf, 8);

  return v80;
}

void __69__RTLearnedLocationEngine__mapItemsWithUserCurationCorrection_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 72));
      v14 = *(a1 + 40);
      v15 = 138413059;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2117;
      v20 = v14;
      v21 = 2112;
      v22 = v7;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@, %@, error occurred while fetching latest user curation with options, %{sensitive}@, error, %@", &v15, 0x2Au);
    }

    v9 = (*(*(a1 + 56) + 8) + 40);
    v10 = a3;
    goto LABEL_7;
  }

  if ([v6 count])
  {
    v9 = (*(*(a1 + 64) + 8) + 40);
    v10 = a2;
LABEL_7:
    objc_storeStrong(v9, v10);
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (RTLearnedLocationEngineProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end