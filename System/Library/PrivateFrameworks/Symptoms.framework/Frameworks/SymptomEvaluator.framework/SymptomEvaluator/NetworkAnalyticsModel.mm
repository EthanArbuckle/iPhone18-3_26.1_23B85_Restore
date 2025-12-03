@interface NetworkAnalyticsModel
+ (id)getDaysWithSimilarPatternForInterfaceType:(int64_t)type;
+ (id)modelGeneratedAt;
+ (unint64_t)modelResolution;
+ (void)purgeAllJournalRecords;
+ (void)resetModel;
- ($340E233F617FB3D5D9EFCE5A6F22D754)_parseTimeIntoWeekdayAndSlotId:(SEL)id withReferenceDate:(int64_t)date;
- ($8CE0ECD3AB9986DA167C077002E61EF1)_calculateStatisticsFromNetworkStateTable:(SEL)table usingPredicate:(id)predicate;
- (BOOL)_insertInternalNetworkStateRecordTo:(id)to networkId:(id)id networkLQM:(int64_t)m age:(int64_t)age dayOfWeek:(int64_t)week slotId:(int64_t)slotId numberOfSlots:(int64_t)slots stateDuration:(int64_t)self0;
- (BOOL)_isValidTimezoneToReturnPredictions;
- (BOOL)_isValidTimezoneToTrain;
- (BOOL)_savePredictionToJournalForInterface:(int64_t)interface;
- (BOOL)_shouldCreateIpsFile;
- (NSDate)debugTrainingTime;
- (NSDate)lastModelRunTime;
- (NetworkAnalyticsModel)initWithJournalName:(id)name workspace:(id)workspace queue:(id)queue;
- (double)_clusterUsingKMeansOn:(id)on into:(int)into iterations:(int)iterations saveCentroidsTo:(id)to;
- (double)_evaluateErrorOfLQMPredictions:(id)predictions againstObservedLQMTable:(id)table;
- (double)_fetchPredictionErrorForInterfaceType:(int64_t)type isAny:(BOOL)any isBuiltin:(BOOL)builtin scopedToLOI:(int64_t)i hasCustomSignature:(id)signature;
- (double)_fetchTrainingProgressForInterfaceType:(int64_t)type isAny:(BOOL)any isBuiltin:(BOOL)builtin scopedToLOI:(int64_t)i hasCustomSignature:(id)signature;
- (id)_clusterEventsInWeekUsingKMeansOn:(id)on;
- (id)_clusterEventsUsingKMeansForSetOfDays:(id)days networkStateTable:(id)table saveCentroidsTo:(id)to;
- (id)_extractImpairmentEventsFromNetworkStateTable:(id)table setOfDays:(id)days;
- (id)_fetchPredictionsForInterfaceType:(int64_t)type isAny:(BOOL)any isBuiltin:(BOOL)builtin scopedToLOI:(int64_t)i hasCustomSignature:(id)signature error:(id *)error;
- (id)_getComplementaryPredictionNameForInterface:(int64_t)interface;
- (id)_getDaysWithSimilarPatternForInterfaceType:(int64_t)type;
- (id)_getPredictionJournalNameWithPrefix:(id)prefix forInterface:(int64_t)interface slotSizeMinutes:(unint64_t)minutes;
- (id)_getSavedPredictionHeaderNameForInterface:(int64_t)interface;
- (id)_learnDisconnectionPatternForSetOfDays:(id)days impairmentEvents:(id)events;
- (id)_loadSavedPredictionBasedOnHeaderData:(id)data interface:(int64_t)interface;
- (id)_purgeAndReturnValidJournalWithPrefix:(id)prefix olderThan:(unint64_t)than;
- (id)_readJournalEntries;
- (id)_readJournalEntriesUsingImpoExpoService;
- (id)_readJournalEntriesUsingIpsfile;
- (id)_readJournalEntriesUsingSimulatedfile;
- (int)_elbowOfList:(id)list;
- (int64_t)_getCellInstantQualityBasedOnLQM:(char)m;
- (int64_t)_getCurrentLocationTimezoneOffsetWithoutDST;
- (int64_t)_getDominantLQMInSlotWithTimeSpentInBest:(int64_t)best inFair:(int64_t)fair inMinimallyViable:(int64_t)viable inNone:(int64_t)none;
- (int64_t)_getWifiInstantQualityBasedOnLQM:(char)m;
- (int64_t)_predictNetworkQualityBasedOnAverageNWInstantQuality:(double)quality;
- (unint64_t)_getTotalWeightForCompletedHistory;
- (unint64_t)_getWeightForAge:(int64_t)age;
- (unint64_t)_sanitizeInternalLQMStateEventFrom:(id)from toTable:(id)table;
- (void)_actUponSystemSettingsAirplaneChanged:(BOOL)changed wifiChanged:(BOOL)wifiChanged cellDataChanged:(BOOL)dataChanged;
- (void)_clusterImpairmentEventsUsingKMeansOn:(id)on saveCentroidsTo:(id)to;
- (void)_fetchHomeTimezoneOffsetFromJournal;
- (void)_finishedReadingLowInternetModeRecords:(id)records;
- (void)_generatePredictionForDays:(id)days fromClusteredEvents:(id)events clusterCentroids:(id)centroids interfaceType:(int64_t)type basedOnWeekClusters:(int64_t)clusters savePredictionsTo:(id)to;
- (void)_handleNetworkNotificationFrom:(int64_t)from notification:(id)notification;
- (void)_handleTimezoneChanged;
- (void)_loadLatestPredictionFromJournalWithInterfaceType:(int64_t)type;
- (void)_printInternalStateSet:(id)set;
- (void)_processJournalData:(id)data startFrom:(int64_t)from endAt:(int64_t)at rawWifiStateSet:(id)set rawCellStateSet:(id)stateSet;
- (void)_processLowInternetModeRecord:(id)record addTo:(id)to;
- (void)_processNetworkState:(id *)state toStateSet:(id)set stateStartTimeInfo:(id *)info stateEndTimeInfo:(id *)timeInfo effectiveNetworkId:(id)id;
- (void)_purgeAllJournalRecords;
- (void)_purgeSavedPredictionsOlderThan:(unint64_t)than;
- (void)_removePrimarykeyAndLocationInJournalRecordInfo:(id)info;
- (void)_resetModel;
- (void)_shuffleArray:(id)array;
- (void)_trainModelAt:(id)at;
- (void)_trainModelForInterfaceType:(int64_t)type sanitizedLQMTable:(id)table;
- (void)_updateHomeTimezoneOffsetIfNeeded;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)processProxyTrain;
- (void)setDebugTrainingTime:(id)time;
- (void)setLastModelRunTime:(id)time;
- (void)trainModel;
@end

@implementation NetworkAnalyticsModel

- (NetworkAnalyticsModel)initWithJournalName:(id)name workspace:(id)workspace queue:(id)queue
{
  v80 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  workspaceCopy = workspace;
  queueCopy = queue;
  v77.receiver = self;
  v77.super_class = NetworkAnalyticsModel;
  v12 = [(NetworkAnalyticsModel *)&v77 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->journalName, name);
    objc_storeStrong(&v13->workspace, workspace);
    objc_storeStrong(&v13->queue, queue);
    v14 = [ImpoExpoService impoExpoServiceInWorkspace:v13->workspace andQueue:v13->queue];
    ieService = v13->ieService;
    v13->ieService = v14;

    v16 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      journalName = v13->journalName;
      *buf = 138412290;
      v79 = journalName;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "initialized model for journal: %@", buf, 0xCu);
    }

    *&v13->periodPerDay = xmmword_232816F50;
    *&v18 = -1;
    *(&v18 + 1) = -1;
    *&v13->firstEventTimeStampWifi = v18;
    *&v13->lastEventTimeStampWifi = v18;
    v13->weightStrategy = 1;
    *&v13->wifiPredictionLogic = 0x200000002;
    v13->numberOfDaysWithWifiEvents = 0;
    v13->numberOfDaysWithCellEvents = 0;
    v19 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:0.0];
    lastModelRunTime = v13->_lastModelRunTime;
    v13->_lastModelRunTime = v19;

    v13->timezoneOffsetFromUtcNoDaylight = 0;
    v13->homeTimezoneOffsetFromUtcNoDaylight = 0;
    v13->homeTimezoneOffsetKnownCoreRoutine = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *&v13->wifiPredictionError = _Q0;
    v26 = objc_alloc_init(MEMORY[0x277CBEA60]);
    defaultLQMPredictionsWifi = v13->defaultLQMPredictionsWifi;
    v13->defaultLQMPredictionsWifi = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEA60]);
    defaultLQMPredictionsCell = v13->defaultLQMPredictionsCell;
    v13->defaultLQMPredictionsCell = v28;

    disconnectionPatternsWifi = v13->disconnectionPatternsWifi;
    v13->disconnectionPatternsWifi = 0;

    pathForReadingIpsFile = v13->_pathForReadingIpsFile;
    v13->_pathForReadingIpsFile = @"/var/networkd/training.ips";

    simulatedJournalPath = v13->_simulatedJournalPath;
    v13->_simulatedJournalPath = @"/var/networkd/simulated-journalRecord.data";

    debugTrainingTime = v13->_debugTrainingTime;
    v13->_debugTrainingTime = 0;

    autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    calendar = v13->_calendar;
    v13->_calendar = autoupdatingCurrentCalendar;

    v13->limMinSamples = 10;
    v13->limRatio = 0.800000012;
    v36 = +[SystemSettingsRelay defaultRelay];
    systemSettingsRelay = v13->systemSettingsRelay;
    v13->systemSettingsRelay = v36;

    [(SystemSettingsRelay *)v13->systemSettingsRelay addObserver:v13 forKeyPath:@"airplaneModeSwitchEnabled" options:7 context:0];
    [(SystemSettingsRelay *)v13->systemSettingsRelay addObserver:v13 forKeyPath:@"wifiEnabled" options:7 context:0];
    [(SystemSettingsRelay *)v13->systemSettingsRelay addObserver:v13 forKeyPath:@"cellDataSwitchEnabled" options:7 context:0];
    shared_prefs_store = get_shared_prefs_store();
    if (shared_prefs_store)
    {
      v39 = shared_prefs_store;
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke;
      v75[3] = &unk_27898A0A0;
      v40 = v13;
      v76 = v40;
      prefs_add_client(v39, "debug_training_time", v75);
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke_349;
      v73[3] = &unk_27898A0A0;
      v41 = v40;
      v74 = v41;
      prefs_add_client(v39, "low_internet_mode_min_samples", v73);
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke_351;
      v71[3] = &unk_27898A0A0;
      v72 = v41;
      prefs_add_client(v39, "low_internet_mode_ratio", v71);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke_352;
    block[3] = &unk_27898A0C8;
    v42 = v13;
    v70 = v42;
    dispatch_async(queueCopy, block);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke_2;
    v66[3] = &unk_27898BD50;
    v44 = queueCopy;
    v67 = v44;
    v45 = v42;
    v68 = v45;
    v46 = [defaultCenter addObserverForName:@"kNotificationNewConnectivityEpochCell" object:0 queue:0 usingBlock:v66];
    cellEpochObserver = v45->_cellEpochObserver;
    v45->_cellEpochObserver = v46;

    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke_4;
    v63[3] = &unk_27898BD50;
    v48 = v44;
    v64 = v48;
    v49 = v45;
    v65 = v49;
    v50 = [defaultCenter addObserverForName:@"kNotificationNewConnectivityEpochWiFi" object:0 queue:0 usingBlock:v63];
    wifiEpochObserver = v49->_wifiEpochObserver;
    v49->_wifiEpochObserver = v50;

    v52 = *MEMORY[0x277CBE780];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke_6;
    v60[3] = &unk_27898BD50;
    v61 = v48;
    v53 = v49;
    v62 = v53;
    v54 = [defaultCenter addObserverForName:v52 object:0 queue:0 usingBlock:v60];
    timezoneChangedObserver = v53->_timezoneChangedObserver;
    v53->_timezoneChangedObserver = v54;

    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke_8;
    v58[3] = &unk_27898A0C8;
    v59 = v53;
    if (initWithJournalName_workspace_queue__instancePred != -1)
    {
      dispatch_once(&initWithJournalName_workspace_queue__instancePred, v58);
    }
  }

  v56 = *MEMORY[0x277D85DE8];
  return v13;
}

void __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    if (value < 0)
    {
      [*(a1 + 32) setDebugTrainingTime:0];
      v17 = scoringLogHandle;
      if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }

      v18 = 134217984;
      v19 = value;
      v7 = "Debug training time is negative (%lld). Resetting debug training time.";
      v8 = v17;
      v9 = 12;
      goto LABEL_5;
    }

    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:value];
    [*(a1 + 32) setDebugTrainingTime:v12];

    v13 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 32);
      v15 = v13;
      v16 = [v14 debugTrainingTime];
      v18 = 134218242;
      v19 = value;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "Set debug training time to %lld (%@)", &v18, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) setDebugTrainingTime:0];
    v6 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      v7 = "prefs_store of debug training time not found. Resetting debug training time.";
      v8 = v6;
      v9 = 2;
LABEL_5:
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, v7, &v18, v9);
    }
  }

LABEL_6:

  v10 = *MEMORY[0x277D85DE8];
}

void __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke_349(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v12 = value;
    v13 = *(a1 + 32);
    if (value < 1)
    {
      *(v13 + 288) = 10;
      v16 = scoringLogHandle;
      if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v17 = 134218240;
      v18 = v12;
      v19 = 1024;
      v20 = 10;
      v7 = "Custom lim minimum samples got a 0 or negative value (%lld). Resetting to default value (%d)";
      v8 = v16;
      v9 = 18;
    }

    else
    {
      *(v13 + 288) = value;
      v14 = scoringLogHandle;
      if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v15 = *(*(a1 + 32) + 288);
      v17 = 134217984;
      v18 = v15;
      v7 = "Custom lim minimum samples set to: %llu";
      v8 = v14;
      v9 = 12;
    }

    goto LABEL_5;
  }

  *(*(a1 + 32) + 288) = 10;
  v6 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 67109120;
    LODWORD(v18) = 10;
    v7 = "Custom lim minimum samples got a nil value. Setting to default value (%d)";
    v8 = v6;
    v9 = 8;
LABEL_5:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, v7, &v17, v9);
  }

LABEL_6:

  v10 = *MEMORY[0x277D85DE8];
}

void __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke_351(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v12 = value;
    if (value < 1)
    {
      *(*(a1 + 32) + 296) = 0x3FE99999A0000000;
      v15 = scoringLogHandle;
      if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      v16 = 134218240;
      v17 = v12;
      v18 = 2048;
      v19 = 0x3FE99999A0000000;
      v7 = "Custom lim ratio got a 0 or negative value (%lld). Resetting to default value (%f)";
      v8 = v15;
      v9 = 22;
      goto LABEL_6;
    }

    *(*(a1 + 32) + 296) = (value / 100.0);
    v13 = scoringLogHandle;
    if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v14 = *(*(a1 + 32) + 296);
    v16 = 134217984;
    v17 = v14;
    v7 = "Custom lim ratio set to: %f";
    v8 = v13;
LABEL_5:
    v9 = 12;
LABEL_6:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, v7, &v16, v9);
    goto LABEL_7;
  }

  *(*(a1 + 32) + 296) = 0x3FE99999A0000000;
  v6 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = 0x3FE99999A0000000;
    v7 = "Custom lim ratio got a nil value. Setting to default value (%f)";
    v8 = v6;
    goto LABEL_5;
  }

LABEL_7:

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke_352(uint64_t a1)
{
  [*(a1 + 32) _fetchHomeTimezoneOffsetFromJournal];
  [*(a1 + 32) _loadLatestPredictionFromJournalWithInterfaceType:1];
  wifiPredictionsLoaded = 1;
  result = [*(a1 + 32) _loadLatestPredictionFromJournalWithInterfaceType:2];
  cellPredictionsLoaded = 1;
  return result;
}

void __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke_3;
  v6[3] = &unk_27898A7D0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke_5;
  v6[3] = &unk_27898A7D0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke_6(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__NetworkAnalyticsModel_initWithJournalName_workspace_queue___block_invoke_7;
  block[3] = &unk_27898A0C8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_cellEpochObserver];
  [defaultCenter removeObserver:self->_wifiEpochObserver];
  [defaultCenter removeObserver:self->_timezoneChangedObserver];

  v4.receiver = self;
  v4.super_class = NetworkAnalyticsModel;
  [(NetworkAnalyticsModel *)&v4 dealloc];
}

- (void)_fetchHomeTimezoneOffsetFromJournal
{
  v19 = *MEMORY[0x277D85DE8];
  ieService = self->ieService;
  v14 = 0;
  v4 = [(ImpoExpoService *)ieService exportAndUnarchiveItemUnderName:@"HOME_TIMEZONE_OFFSET_NO_DST" lastUpdated:&v14 verificationBlock:&__block_literal_global_44];
  v5 = v14;
  if (v4)
  {
    self->homeTimezoneOffsetKnownCoreRoutine = 1;
    self->homeTimezoneOffsetFromUtcNoDaylight = [v4 integerValue];
    v6 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      homeTimezoneOffsetFromUtcNoDaylight = self->homeTimezoneOffsetFromUtcNoDaylight;
      *buf = 134217984;
      v16 = homeTimezoneOffsetFromUtcNoDaylight;
      v8 = "Loaded HOME timezone offset from journal to %ld";
      v9 = v6;
      v10 = 12;
LABEL_6:
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, v8, buf, v10);
    }
  }

  else
  {
    self->homeTimezoneOffsetKnownCoreRoutine = 0;
    self->homeTimezoneOffsetFromUtcNoDaylight = [(NetworkAnalyticsModel *)self _getCurrentLocationTimezoneOffsetWithoutDST];
    v11 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v12 = self->homeTimezoneOffsetFromUtcNoDaylight;
      *buf = 138412546;
      v16 = 0;
      v17 = 2048;
      v18 = v12;
      v8 = "Failed to load HOME timezone offset from the database: %@, assuming current timezone is HOME = %ld";
      v9 = v11;
      v10 = 22;
      goto LABEL_6;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __60__NetworkAnalyticsModel__fetchHomeTimezoneOffsetFromJournal__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (int64_t)_getCurrentLocationTimezoneOffsetWithoutDST
{
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  secondsFromGMT = [localTimeZone secondsFromGMT];
  [localTimeZone daylightSavingTimeOffset];
  v5 = (secondsFromGMT - v4);

  return v5;
}

- (BOOL)_isValidTimezoneToReturnPredictions
{
  v21 = *MEMORY[0x277D85DE8];
  _getCurrentLocationTimezoneOffsetWithoutDST = [(NetworkAnalyticsModel *)self _getCurrentLocationTimezoneOffsetWithoutDST];
  v4 = _getCurrentLocationTimezoneOffsetWithoutDST;
  if (self->homeTimezoneOffsetKnownCoreRoutine)
  {
    v5 = _getCurrentLocationTimezoneOffsetWithoutDST == self->homeTimezoneOffsetFromUtcNoDaylight && _getCurrentLocationTimezoneOffsetWithoutDST == self->timezoneOffsetFromUtcNoDaylight;
  }

  else
  {
    v5 = _getCurrentLocationTimezoneOffsetWithoutDST == self->timezoneOffsetFromUtcNoDaylight;
  }

  v6 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    homeTimezoneOffsetKnownCoreRoutine = self->homeTimezoneOffsetKnownCoreRoutine;
    timezoneOffsetFromUtcNoDaylight = self->timezoneOffsetFromUtcNoDaylight;
    homeTimezoneOffsetFromUtcNoDaylight = self->homeTimezoneOffsetFromUtcNoDaylight;
    v12[0] = 67110144;
    v12[1] = homeTimezoneOffsetKnownCoreRoutine;
    v13 = 2048;
    v14 = homeTimezoneOffsetFromUtcNoDaylight;
    v15 = 2048;
    v16 = v4;
    v17 = 2048;
    v18 = timezoneOffsetFromUtcNoDaylight;
    v19 = 1024;
    v20 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "HOME KNOWN = %d, HOME = %ld, current = %ld, modeled = %ld.  should return predictions = %d", v12, 0x2Cu);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_isValidTimezoneToTrain
{
  v18 = *MEMORY[0x277D85DE8];
  _getCurrentLocationTimezoneOffsetWithoutDST = [(NetworkAnalyticsModel *)self _getCurrentLocationTimezoneOffsetWithoutDST];
  v4 = _getCurrentLocationTimezoneOffsetWithoutDST;
  if (self->homeTimezoneOffsetKnownCoreRoutine)
  {
    v5 = _getCurrentLocationTimezoneOffsetWithoutDST == self->homeTimezoneOffsetFromUtcNoDaylight;
  }

  else
  {
    self->homeTimezoneOffsetFromUtcNoDaylight = _getCurrentLocationTimezoneOffsetWithoutDST;
    v5 = 1;
  }

  v6 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    homeTimezoneOffsetKnownCoreRoutine = self->homeTimezoneOffsetKnownCoreRoutine;
    homeTimezoneOffsetFromUtcNoDaylight = self->homeTimezoneOffsetFromUtcNoDaylight;
    v11[0] = 67109888;
    v11[1] = homeTimezoneOffsetKnownCoreRoutine;
    v12 = 2048;
    v13 = homeTimezoneOffsetFromUtcNoDaylight;
    v14 = 2048;
    v15 = v4;
    v16 = 1024;
    v17 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "HOME KNOWN = %d, HOME = %ld, current = %ld. should train = %d", v11, 0x22u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int)_elbowOfList:(id)list
{
  listCopy = list;
  if ([listCopy count])
  {
    if ([listCopy count] > 3)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:listCopy copyItems:1];
      v6 = objc_alloc(MEMORY[0x277CCABB0]);
      v7 = [v5 objectAtIndex:1];
      [v7 doubleValue];
      v9 = [v6 initWithDouble:v8 + v8];

      [v5 replaceObjectAtIndex:0 withObject:v9];
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (([v5 count] - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v11 = 1;
        do
        {
          v12 = v11 + 1;
          v13 = [v5 objectAtIndex:v11 + 1];
          [v13 doubleValue];
          v15 = v14;
          v16 = [v5 objectAtIndex:v11 - 1];
          [v16 doubleValue];
          v18 = v15 + v17;
          v19 = [v5 objectAtIndex:v11];
          [v19 doubleValue];
          v21 = v18 + v20 * -2.0;

          v22 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:v21];
          [v10 addObject:v22];

          v11 = v12;
        }

        while ([v5 count] - 1 > v12);
      }

      if ([v10 count] < 2)
      {
        v4 = 0;
      }

      else
      {
        v4 = 0;
        v23 = 0.0;
        v24 = 1;
        do
        {
          v25 = [v10 objectAtIndex:v24 - 1];
          [v25 doubleValue];
          v27 = v26;
          v28 = [v10 objectAtIndex:v24];
          [v28 doubleValue];
          v30 = v27 - v29;
          v31 = [v10 objectAtIndex:v24];
          [v31 doubleValue];
          v33 = v30 / v32;

          v34 = -v33;
          if (v33 >= 0.0)
          {
            v34 = v33;
          }

          if (v34 > v23)
          {
            v23 = v34;
            v4 = v24;
          }

          ++v24;
        }

        while ([v10 count] > v24);
      }
    }

    else
    {
      v4 = [listCopy count] - 1;
    }
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)_shuffleArray:(id)array
{
  arrayCopy = array;
  v3 = [arrayCopy count];
  if (v3 >= 2)
  {
      ;
    }
  }
}

- (int64_t)_getWifiInstantQualityBasedOnLQM:(char)m
{
  mCopy = m;
  v10 = *MEMORY[0x277D85DE8];
  if (m <= 49)
  {
    result = 0;
    if (m >= 0xFFFFFFFE || m == 10)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (m == 100)
  {
    result = 100;
    goto LABEL_16;
  }

  if (m != 50)
  {
LABEL_13:
    v7 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = mCopy;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Invalid Wi-Fi LQM: %d", v9, 8u);
    }

    result = 0;
    goto LABEL_16;
  }

  wifiPredictionLogic = self->wifiPredictionLogic;
  v6 = 100;
  if (wifiPredictionLogic)
  {
    v6 = 0;
  }

  if (wifiPredictionLogic == 2)
  {
    result = 50;
  }

  else
  {
    result = v6;
  }

LABEL_16:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)_getCellInstantQualityBasedOnLQM:(char)m
{
  mCopy = m;
  v11 = *MEMORY[0x277D85DE8];
  v4 = m + 2;
  if ((m + 2) > 0x34)
  {
    goto LABEL_10;
  }

  if (((1 << v4) & 0x1003) != 0)
  {
LABEL_3:
    result = 0;
    goto LABEL_12;
  }

  if (((1 << v4) & 0x10000000400000) == 0)
  {
LABEL_10:
    if (m == 100)
    {
      result = 100;
      goto LABEL_12;
    }

    v9 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109120;
      v10[1] = mCopy;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "Invalid cellular LQM: %d", v10, 8u);
    }

    goto LABEL_3;
  }

  cellPredictionLogic = self->cellPredictionLogic;
  v7 = 100;
  if (cellPredictionLogic)
  {
    v7 = 0;
  }

  if (cellPredictionLogic == 2)
  {
    result = 50;
  }

  else
  {
    result = v7;
  }

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)_predictNetworkQualityBasedOnAverageNWInstantQuality:(double)quality
{
  v3 = vabdd_f64(100.0, quality);
  v4 = vabdd_f64(50.0, quality);
  v5 = 50;
  if (v4 <= v3)
  {
    v3 = v4;
  }

  else
  {
    v5 = 100;
  }

  if (vabdd_f64(0.0, quality) <= v3)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- ($340E233F617FB3D5D9EFCE5A6F22D754)_parseTimeIntoWeekdayAndSlotId:(SEL)id withReferenceDate:(int64_t)date
{
  v17 = a5;
  context = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:date];
  v9 = [(NSCalendar *)self->_calendar components:736 fromDate:v8];
  weekday = [v9 weekday];
  hour = [v9 hour];
  minute = [v9 minute];
  second = [v9 second];
  v14 = [(NSCalendar *)self->_calendar components:16 fromDate:v8 toDate:v17 options:0];
  retstr->var0 = weekday;
  retstr->var1 = (minute + 60 * hour) / 15;
  retstr->var2 = [v14 day];
  retstr->var3 = second + 60 * (minute % 15);

  objc_autoreleasePoolPop(context);

  return result;
}

- (id)_purgeAndReturnValidJournalWithPrefix:(id)prefix olderThan:(unint64_t)than
{
  v37 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v7 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v34 = prefixCopy;
    v35 = 2048;
    thanCopy = than;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Purging journals with prefix %@ older than %lu days from now", buf, 0x16u);
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setDay:-than];
  calendar = self->_calendar;
  date = [MEMORY[0x277CBEAA8] date];
  v24 = v8;
  v11 = [(NSCalendar *)calendar dateByAddingComponents:v8 toDate:date options:0];

  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  selfCopy = self;
  v23 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"identifier" ascending:1];
  v13 = [(ImpoExpoService *)self->ieService listItemsNameWithPrefix:prefixCopy sortDescriptor:?];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        if ([JournalTimeStamp shouldPurgeJournal:v18 olderThan:v11])
        {
          [v12 addObject:v18];
          v19 = scoringLogHandle;
          if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v34 = v18;
            _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Journal %@ marked for purging", buf, 0xCu);
          }
        }

        else
        {
          v20 = scoringLogHandle;
          if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v34 = v18;
            _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "Journal %@ retained", buf, 0xCu);
          }

          [v27 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);
  }

  [(ImpoExpoService *)selfCopy->ieService deleteItemsWithNames:v12];

  objc_autoreleasePoolPop(context);
  v21 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)_purgeAllJournalRecords
{
  queue = self->queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__NetworkAnalyticsModel__purgeAllJournalRecords__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __48__NetworkAnalyticsModel__purgeAllJournalRecords__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) deleteItemsWithPrefix:@"AnalyticsJournal"];
  v3 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134217984;
    v10 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "Removed %ld journal records", &v9, 0xCu);
  }

  v4 = [*(*(a1 + 32) + 32) deleteItemsWithPrefix:@"AnalyticsMixedJournal"];
  v5 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134217984;
    v10 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Removed %ld legacy (LQM only) journal records", &v9, 0xCu);
  }

  v6 = [*(*(a1 + 32) + 32) deleteItemsWithPrefix:@"NetworkAnalyticsJournal"];
  v7 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134217984;
    v10 = v6;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Removed %ld journal records with legacy names", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_resetModel
{
  v24[7] = *MEMORY[0x277D85DE8];
  self->numberOfDaysWithWifiEvents = 0;
  self->numberOfDaysWithCellEvents = 0;
  defaultArrayOfDaysGroupWifi = self->defaultArrayOfDaysGroupWifi;
  self->defaultArrayOfDaysGroupWifi = 0;

  defaultArrayOfDaysGroupCell = self->defaultArrayOfDaysGroupCell;
  self->defaultArrayOfDaysGroupCell = 0;

  currentArrayOfDaysGroupWifi = self->currentArrayOfDaysGroupWifi;
  self->currentArrayOfDaysGroupWifi = 0;

  currentArrayOfDaysGroupCell = self->currentArrayOfDaysGroupCell;
  self->currentArrayOfDaysGroupCell = 0;

  self->timezoneOffsetFromUtcNoDaylight = 0;
  self->homeTimezoneOffsetFromUtcNoDaylight = 0;
  self->homeTimezoneOffsetKnownCoreRoutine = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *&self->wifiPredictionError = _Q0;
  defaultLQMPredictionsWifi = self->defaultLQMPredictionsWifi;
  self->defaultLQMPredictionsWifi = 0;

  defaultLQMPredictionsCell = self->defaultLQMPredictionsCell;
  self->defaultLQMPredictionsCell = 0;

  currentLQMPredictionsWifi = self->currentLQMPredictionsWifi;
  self->currentLQMPredictionsWifi = 0;

  currentLQMPredictionsCell = self->currentLQMPredictionsCell;
  self->currentLQMPredictionsCell = 0;

  currentlyConnectedWifiSsid = self->currentlyConnectedWifiSsid;
  self->currentlyConnectedWifiSsid = 0;

  disconnectionPatternsWifi = self->disconnectionPatternsWifi;
  self->disconnectionPatternsWifi = 0;

  v24[0] = @"AnalyticsJournal";
  v24[1] = @"AnalyticsMixedJournal";
  v24[2] = @"NetworkAnalyticsJournal";
  v24[3] = @"SymptomsPrediction";
  v24[4] = @"SymptomsPredictionHeader";
  v24[5] = @"SymptomsComplementaryPrediction";
  v24[6] = @"HOME_TIMEZONE_OFFSET_NO_DST";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:7];
  v19 = [(ImpoExpoService *)self->ieService deleteItemsWithPrefixes:v18];
  v20 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 134217984;
    v23 = v19;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "Removed %ld items related to model", &v22, 0xCu);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)_insertInternalNetworkStateRecordTo:(id)to networkId:(id)id networkLQM:(int64_t)m age:(int64_t)age dayOfWeek:(int64_t)week slotId:(int64_t)slotId numberOfSlots:(int64_t)slots stateDuration:(int64_t)self0
{
  toCopy = to;
  if (toCopy)
  {
    v16 = m == -3;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  if (!v16)
  {
    idCopy = id;
    v19 = [[InternalNetworkStateRecord alloc] initWithAge:age dayOfWeek:week slotId:slotId networkId:idCopy networkLQM:m stateDurationSeconds:duration stateSlotLength:slots];

    v20 = [toCopy member:v19];
    v21 = v20;
    if (v20)
    {
      [v20 mergeState:v19];
    }

    else
    {
      [toCopy addObject:v19];
    }
  }

  return v17;
}

- (int64_t)_getDominantLQMInSlotWithTimeSpentInBest:(int64_t)best inFair:(int64_t)fair inMinimallyViable:(int64_t)viable inNone:(int64_t)none
{
  v6 = 100;
  if (fair <= best)
  {
    viableCopy = best;
  }

  else
  {
    v6 = 50;
    viableCopy = fair;
  }

  if (viableCopy < viable)
  {
    v6 = 20;
  }

  if (viableCopy <= viable)
  {
    viableCopy = viable;
  }

  if (viableCopy >= none)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_sanitizeInternalLQMStateEventFrom:(id)from toTable:(id)table
{
  v4 = MEMORY[0x28223BE20](self, a2, from, table);
  v6 = v5;
  v7 = v4;
  v71[484] = *MEMORY[0x277D85DE8];
  v9 = v8;
  v10 = v6;
  bzero(v68, 0x308uLL);
  v52 = v9;
  v53 = 0;
  if (v9 && v10)
  {
    [v10 removeAllObjects];
    v53 = 0;
    v11 = 27;
    v57 = v10;
    v51 = v7;
    do
    {
      v12 = v11;
      v55 = objc_autoreleasePoolPush();
      v58 = v12;
      v54 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"stateAge", v12];
      v56 = [v52 filteredSetUsingPredicate:?];
      for (i = 0; i != 97; ++i)
      {
        v71[i + 387] = 0;
        v71[i + 290] = 0;
        v71[i + 193] = 0;
        v71[i + 96] = 0;
        v71[i - 1] = -1;
        v14 = *&v68[i * 8];
        *&v68[i * 8] = 0;
      }

      v71[95] = -3;
      v15 = v56;
      if ([v56 count])
      {
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        obj = v56;
        v62 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
        if (v62)
        {
          v60 = *v64;
          while (1)
          {
            for (j = 0; j != v62; ++j)
            {
              if (*v64 != v60)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v63 + 1) + 8 * j);
              stateDayOfWeek = [v17 stateDayOfWeek];
              if ([v17 stateDurationSeconds] <= 900)
              {
                stateDurationSeconds = [v17 stateDurationSeconds];
              }

              else
              {
                stateDurationSeconds = 900;
              }

              stateSlotId = [v17 stateSlotId];
              stateSlotLength = [v17 stateSlotLength];
              if (stateSlotId < stateSlotLength + stateSlotId)
              {
                v21 = stateSlotLength;
                v22 = &v71[stateSlotId + 387];
                v23 = &v68[8 * stateSlotId];
                v24 = &v71[stateSlotId + 290];
                v25 = &v71[stateSlotId + 193];
                v26 = &v71[stateSlotId + 96];
                do
                {
                  stateNetworkId = [v17 stateNetworkId];
                  stateNetworkLQM = [v17 stateNetworkLQM];
                  if (stateNetworkLQM > 49)
                  {
                    if (stateNetworkLQM == 50)
                    {
                      *v25 += stateDurationSeconds;
                      goto LABEL_26;
                    }

                    if (stateNetworkLQM == 100)
                    {
                      *v26 += stateDurationSeconds;
                      goto LABEL_26;
                    }
                  }

                  else if (stateNetworkLQM)
                  {
                    if (stateNetworkLQM == 20)
                    {
                      *v24 += stateDurationSeconds;
LABEL_26:
                      objc_storeStrong(v23, stateNetworkId);
                    }
                  }

                  else
                  {
                    *v22 += stateDurationSeconds;
                  }

                  ++v22;
                  ++v23;
                  ++v24;
                  ++v25;
                  ++v26;
                  --v21;
                }

                while (v21);
              }
            }

            v62 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
            if (!v62)
            {
              v10 = v57;
              v7 = v51;
              v29 = stateDayOfWeek;
              goto LABEL_33;
            }
          }
        }

        v29 = 0;
LABEL_33:
        ++v53;

        for (k = 0; k != 96; ++k)
        {
          v71[k - 1] = [v7 _getDominantLQMInSlotWithTimeSpentInBest:v71[k + 96] inFair:v71[k + 193] inMinimallyViable:v71[k + 290] inNone:v71[k + 387]];
        }

        v33 = 0;
        v34 = -96;
        v35 = v70;
        v36 = v71;
        v37 = &v69;
        do
        {
          if (*v36 != v35)
          {
            v38 = objc_autoreleasePoolPush();
            if (v35 < 1)
            {
              if (v33 < 1)
              {
                v42 = 0;
              }

              else
              {
                v42 = *&v68[8 * (v33 - 1)];
              }

              v40 = v42;
              v41 = *v37;
              v39 = v33;
            }

            else
            {
              v39 = v33;
              v40 = *&v68[8 * v33];
              v41 = *(v37 - 1);
            }

            objc_autoreleasePoolPop(v38);
            v43 = [NetworkStateRecord alloc];
            if (v40)
            {
              v44 = v40;
            }

            else
            {
              v44 = @"Invalid/unknown network identification";
            }

            if (v41)
            {
              v45 = v41;
            }

            else
            {
              v45 = @"Invalid/unknown network identification";
            }

            v46 = [(NetworkStateRecord *)v43 initWithAge:v58 dayOfWeek:v29 slotId:v39 stateLength:v34 - v39 + 97 beginningNetworkId:v44 endingNetworkId:v45 stateType:v35 label:-1];
            v10 = v57;
            [v57 addObject:v46];
            v35 = *v36;

            v33 = v34 + 97;
          }

          ++v37;
          ++v36;
        }

        while (!__CFADD__(v34++, 1));
        v7 = v51;
        v31 = v54;
        v30 = v55;
        v15 = v56;
      }

      else
      {
        v31 = v54;
        v30 = v55;
      }

      objc_autoreleasePoolPop(v30);
      v11 = v58 - 1;
    }

    while (v58);
  }

  for (m = 768; m != -8; m -= 8)
  {
  }

  v49 = *MEMORY[0x277D85DE8];
  return v53;
}

- (void)_printInternalStateSet:(id)set
{
  v30[5] = *MEMORY[0x277D85DE8];
  setCopy = set;
  if (setCopy)
  {
    v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"stateAge" ascending:0];
    v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"stateDayOfWeek" ascending:1];
    v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"stateSlotId" ascending:1];
    v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"stateNetworkLQM" ascending:1];
    [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"stateDurationSeconds" ascending:1];
    v21 = v5;
    v22 = v4;
    v30[0] = v4;
    v30[1] = v5;
    v20 = v7;
    v30[2] = v6;
    v19 = v30[3] = v7;
    v30[4] = v19;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:5];
    allObjects = [setCopy allObjects];
    v10 = [allObjects sortedArrayUsingDescriptors:v8];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = scoringLogHandle;
          if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v17 = *(*(&v23 + 1) + 8 * i);
            *buf = 138412290;
            v28 = v17;
            _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v13);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_removePrimarykeyAndLocationInJournalRecordInfo:(id)info
{
  v34 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  journalName = [infoCopy journalName];
  LODWORD(self) = [(NetworkAnalyticsModel *)self _isLegacyJournal:journalName];

  if (self)
  {
    journalData = [infoCopy journalData];
    v7 = [journalData length];
    v8 = v7 / 0x50;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    LOBYTE(v30) = 75;
    v9 = 1u;
    do
    {
      *(&v30 + v9) = aKeyRemovedReco[v9];
      ++v9;
    }

    while (v9 != 19);
    buf[0] = -1;
    if (v7 >= 0x50)
    {
      v10 = 73;
      do
      {
        journalData2 = [infoCopy journalData];
        [journalData2 replaceBytesInRange:v10 - 65 withBytes:{64, &v30}];

        journalData3 = [infoCopy journalData];
        [journalData3 replaceBytesInRange:v10 withBytes:1 length:{buf, 1}];

        v10 += 80;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v25[0] = 0;
    v25[1] = 0;
    journalData4 = [infoCopy journalData];
    v14 = [journalData4 length];
    v15 = v14;
    *(&v16 + 1) = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    LOBYTE(v30) = 75;
    v17 = 1u;
    do
    {
      *(&v30 + v17) = aKeyRemovedReco[v17];
      ++v17;
    }

    while (v17 != 19);
    if (v14 >= 0x11)
    {
      v18 = 0;
      v19 = 16;
      *&v16 = 67109120;
      v24 = v16;
      do
      {
        [journalData4 getBytes:v25 range:{v18, 16, v24}];
        v20 = LOBYTE(v25[0]);
        if (LOBYTE(v25[0]) == 2)
        {
          v19 = v18 + 112;
        }

        else if (LOBYTE(v25[0]) == 1)
        {
          v21 = scoringLogHandle;
          if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218240;
            v27 = v19;
            v28 = 2048;
            v29 = 64;
            _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "Clearing primary key from lqmJournalRecord from %lu to %lu", buf, 0x16u);
          }

          [journalData4 replaceBytesInRange:v19 withBytes:{64, &v30}];
          v19 = v18 + 88;
        }

        else
        {
          v22 = scoringLogHandle;
          if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = v24;
            LODWORD(v27) = v20;
            _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "Unknown journal type %d", buf, 8u);
          }
        }

        v18 = v19;
        v19 += 16;
      }

      while (v19 < v15);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldCreateIpsFile
{
  v2 = +[SystemProperties sharedInstance];
  internalBuild = [v2 internalBuild];

  return internalBuild;
}

- (id)_readJournalEntriesUsingIpsfile
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    pathForReadingIpsFile = self->_pathForReadingIpsFile;
    *buf = 138412290;
    v42 = pathForReadingIpsFile;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "Reading journal from an IPS file %@", buf, 0xCu);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:self->_pathForReadingIpsFile];
  v7 = [v6 length];
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v40 = 0;
      [v6 getBytes:&v40 range:{v8, 1}];
      if (v40 == 10)
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_7;
      }
    }

    v10 = MEMORY[0x277CCAAA0];
    v11 = [v6 subdataWithRange:{0, v8}];
    v12 = [v10 JSONObjectWithData:v11 options:0 error:0];

    v13 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v42 = v12;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "IPS info:%@", buf, 0xCu);
    }

    v9 = v8 + 1;
    v14 = [(NSString *)v12 objectForKeyedSubscript:@"submissionTimeISO"];
    v15 = v14;
    if (v14 && [v14 length] >= 6)
    {
      v16 = [v15 substringWithRange:{objc_msgSend(v15, "length") - 6, 6}];
      v17 = MEMORY[0x277CBEBB0];
      v38 = v16;
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"GMT%@", v16];
      v19 = [v17 timeZoneWithName:v18];

      v20 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v42 = v15;
        v43 = 2112;
        v44 = v19;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "submissionTimeISO = %@, estimated timezone = %@", buf, 0x16u);
      }

      if (v19)
      {
        v21 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v42 = v19;
          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "Adjusting calendar timezone to %@", buf, 0xCu);
        }

        [(NSCalendar *)self->_calendar setTimeZone:v19];
      }
    }

    else
    {
      v22 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v42 = v15;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "Invalid submissionTimeISO string found: %@", buf, 0xCu);
      }
    }
  }

  else
  {
LABEL_7:
    v9 = 0;
  }

  if (v9 >= v7)
  {
    v34 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v35 = self->_pathForReadingIpsFile;
      *buf = 138412290;
      v42 = v35;
      _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEBUG, "Invalid IPS file: %@", buf, 0xCu);
    }

    v28 = 0;
  }

  else
  {
    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = MEMORY[0x277CCAAC8];
    v27 = [v6 subdataWithRange:{v9, objc_msgSend(v6, "length") - v9}];
    v39 = 0;
    v28 = [v26 unarchivedObjectOfClasses:v25 fromData:v27 error:&v39];
    v29 = v39;

    if (v29)
    {
      v30 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
      {
        v31 = self->_pathForReadingIpsFile;
        v32 = v30;
        v33 = [v29 description];
        *buf = 138412546;
        v42 = v31;
        v43 = 2112;
        v44 = v33;
        _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_ERROR, "Failed to unarchive IPS file: %@.  Error: %@", buf, 0x16u);
      }
    }
  }

  objc_autoreleasePoolPop(v5);
  v36 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)_readJournalEntriesUsingSimulatedfile
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    simulatedJournalPath = self->_simulatedJournalPath;
    v13 = 138412290;
    v14 = simulatedJournalPath;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "Reading journal from a simulated file %@", &v13, 0xCu);
  }

  v5 = [MEMORY[0x277CBEB28] dataWithContentsOfFile:self->_simulatedJournalPath];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB18];
    v7 = [JournalRecordInfo alloc];
    date = [MEMORY[0x277CBEAA8] date];
    v9 = [(JournalRecordInfo *)v7 initWithJournalName:@"simulated-journal" lastUpdate:date journalData:v5];
    v10 = [v6 arrayWithObject:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_readJournalEntriesUsingImpoExpoService
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "Using ImpoExpoService to read journal", buf, 2u);
  }

  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  date = [MEMORY[0x277CBEAA8] date];
  v4 = objc_autoreleasePoolPush();
  v5 = +[SystemProperties sharedInstance];
  internalBuild = [v5 internalBuild];

  if (internalBuild)
  {
    v7 = 35;
  }

  else
  {
    v7 = 28;
  }

  v8 = [(NetworkAnalyticsModel *)self _purgeAndReturnValidJournalWithPrefix:@"AnalyticsJournal" olderThan:v7];
  v9 = [(NetworkAnalyticsModel *)self _purgeAndReturnValidJournalWithPrefix:@"AnalyticsMixedJournal" olderThan:v7];
  v10 = [MEMORY[0x277CBEB18] arrayWithArray:v8];
  [v10 addObjectsFromArray:v9];
  [v10 sortUsingComparator:&__block_literal_global_403_0];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v10;
  v35 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v35)
  {
    v28 = v9;
    v29 = v8;
    v30 = v4;
    v11 = 0;
    v34 = *v38;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        v13 = v11;
        if (*v38 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        ieService = self->ieService;
        v36 = v11;
        v17 = [(ImpoExpoService *)ieService exportItemUnderName:v14 lastUpdated:&v36 verificationBlock:&__block_literal_global_406];
        v11 = v36;

        v18 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v42 = v14;
          v43 = 2112;
          v44 = v11;
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "Fetched journal %@, last updated at %@", buf, 0x16u);
        }

        if (v11)
        {
          v19 = [(NSCalendar *)self->_calendar components:16 fromDate:v11 toDate:date options:1];
          v20 = [[JournalRecordInfo alloc] initWithJournalName:v14 lastUpdate:date journalData:v17];
          if ([v19 day] >= 14)
          {
            v21 = scoringLogHandle;
            if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v42 = v14;
              _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "Removing all primary keys and LOIs in %@", buf, 0xCu);
            }

            [(NetworkAnalyticsModel *)self _removePrimarykeyAndLocationInJournalRecordInfo:v20];
            v22 = self->ieService;
            journalData = [(JournalRecordInfo *)v20 journalData];
            LOBYTE(v22) = [(ImpoExpoService *)v22 importItemUnderName:v14 item:journalData];

            if ((v22 & 1) == 0)
            {
              v24 = scoringLogHandle;
              if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v42 = v14;
                _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "Failed to save the journal with primary key removed to %@", buf, 0xCu);
              }
            }
          }

          [v33 addObject:v20];
        }

        else
        {
          v25 = scoringLogHandle;
          if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v42 = v14;
            _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "last updated is nil, skipping journal %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v15);
      }

      v35 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v35);

    v8 = v29;
    v4 = v30;
    v9 = v28;
  }

  objc_autoreleasePoolPop(v4);
  v26 = *MEMORY[0x277D85DE8];

  return v33;
}

uint64_t __64__NetworkAnalyticsModel__readJournalEntriesUsingImpoExpoService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [JournalTimeStamp getDateFromJournalName:v4];
  v7 = [JournalTimeStamp getDateFromJournalName:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || ![v6 compare:v7])
  {
    v12 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      v16 = 138413058;
      v17 = v4;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Using lexicographical ordering to compare %@ (%@) and %@ (%@)", &v16, 0x2Au);
    }

    v10 = v4;
    v11 = v5;
  }

  else
  {
    v10 = v6;
    v11 = v8;
  }

  v13 = [v10 compare:v11];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __64__NetworkAnalyticsModel__readJournalEntriesUsingImpoExpoService__block_invoke_404(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_readJournalEntries
{
  v3 = +[SystemProperties sharedInstance];
  internalBuild = [v3 internalBuild];

  if (!internalBuild || ([(NetworkAnalyticsModel *)self _readJournalEntriesUsingIpsfile], (_readJournalEntriesUsingImpoExpoService = objc_claimAutoreleasedReturnValue()) == 0) && ([(NetworkAnalyticsModel *)self _readJournalEntriesUsingSimulatedfile], (_readJournalEntriesUsingImpoExpoService = objc_claimAutoreleasedReturnValue()) == 0))
  {
    _readJournalEntriesUsingImpoExpoService = [(NetworkAnalyticsModel *)self _readJournalEntriesUsingImpoExpoService];
  }

  v6 = _readJournalEntriesUsingImpoExpoService;

  return v6;
}

- (void)_processNetworkState:(id *)state toStateSet:(id)set stateStartTimeInfo:(id *)info stateEndTimeInfo:(id *)timeInfo effectiveNetworkId:(id)id
{
  v50 = *MEMORY[0x277D85DE8];
  setCopy = set;
  idCopy = id;
  var0 = info->var0;
  var2 = info->var2;
  v16 = timeInfo->var2;
  if (info->var0 == timeInfo->var0 && var2 == v16)
  {
    var1 = info->var1;
    if (var1 == timeInfo->var1)
    {
      var5 = state->var5;
      var3_low = LODWORD(timeInfo->var3) - LODWORD(info->var3);
    }

    else
    {
      [NetworkAnalyticsModel _insertInternalNetworkStateRecordTo:"_insertInternalNetworkStateRecordTo:networkId:networkLQM:age:dayOfWeek:slotId:numberOfSlots:stateDuration:" networkId:setCopy networkLQM:idCopy age:state->var5 dayOfWeek:1 slotId:900 - LODWORD(info->var3) numberOfSlots:? stateDuration:?];
      var1 = timeInfo->var1;
      v31 = info->var1;
      v32 = var1 + ~v31;
      if (v32 >= 1)
      {
        [(NetworkAnalyticsModel *)self _insertInternalNetworkStateRecordTo:setCopy networkId:idCopy networkLQM:state->var5 age:info->var2 dayOfWeek:info->var0 slotId:v31 + 1 numberOfSlots:v32 & 0x7FFFFFFF stateDuration:(900 * v32)];
        var1 = timeInfo->var1;
      }

      var3_low = SLODWORD(timeInfo->var3);
      var5 = state->var5;
      var2 = info->var2;
      var0 = info->var0;
    }

    goto LABEL_24;
  }

  if (var2 > v16)
  {
    v18 = info->var1;
    [NetworkAnalyticsModel _insertInternalNetworkStateRecordTo:"_insertInternalNetworkStateRecordTo:networkId:networkLQM:age:dayOfWeek:slotId:numberOfSlots:stateDuration:" networkId:setCopy networkLQM:idCopy age:state->var5 dayOfWeek:1 slotId:900 - LODWORD(info->var3) numberOfSlots:? stateDuration:?];
    v19 = info->var1;
    if (95 - v19 >= 1)
    {
      [(NetworkAnalyticsModel *)self _insertInternalNetworkStateRecordTo:setCopy networkId:idCopy networkLQM:state->var5 age:info->var2 dayOfWeek:info->var0 slotId:v19 + 1 numberOfSlots:(95 - v19) stateDuration:(900 * (95 - v19))];
    }

    var2 = timeInfo->var2;
    v35 = info->var2 + ~var2;
    if (v35 >= 1)
    {
      timeInfoCopy = timeInfo;
      v20 = 0;
      v21 = -1;
      do
      {
        v22 = setCopy;
        v23 = v21 + info->var2;
        v24 = (v20 + info->var0) % 7 + 1;
        v25 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v26 = state->var5;
          *buf = 138413826;
          v37 = idCopy;
          v38 = 1024;
          v39 = v26;
          v40 = 2048;
          v41 = v23;
          v42 = 2048;
          v43 = v24;
          v44 = 1024;
          v45 = 0;
          v46 = 1024;
          v47 = 96;
          v48 = 1024;
          v49 = 86400;
          _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEBUG, "Inserting an event for a day in between as the two consecutive events are separated by more than one day: ID=%@, state=%d, age=%ld, weekday=%ld, slot=%d, length=%u, timespent=%d", buf, 0x38u);
        }

        setCopy = v22;
        [(NetworkAnalyticsModel *)self _insertInternalNetworkStateRecordTo:v22 networkId:idCopy networkLQM:state->var5 age:v23 dayOfWeek:v24 slotId:0 numberOfSlots:96 stateDuration:86400];
        ++v20;
        --v21;
      }

      while (v35 > v20);
      timeInfo = timeInfoCopy;
      var2 = timeInfoCopy->var2;
    }

    var1 = timeInfo->var1;
    if (var1 > 0)
    {
      [(NetworkAnalyticsModel *)self _insertInternalNetworkStateRecordTo:setCopy networkId:idCopy networkLQM:state->var5 age:var2 dayOfWeek:timeInfo->var0 slotId:0 numberOfSlots:timeInfo->var1 & 0x7FFFFFFF stateDuration:900 * timeInfo->var1];
      var1 = timeInfo->var1;
      var2 = timeInfo->var2;
    }

    var3_low = SLODWORD(timeInfo->var3);
    var5 = state->var5;
    var0 = timeInfo->var0;
LABEL_24:
    [(NetworkAnalyticsModel *)self _insertInternalNetworkStateRecordTo:setCopy networkId:idCopy networkLQM:var5 age:var2 dayOfWeek:var0 slotId:var1 numberOfSlots:1 stateDuration:var3_low];
    goto LABEL_25;
  }

  v30 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEBUG, "ages going backward!", buf, 2u);
  }

LABEL_25:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_processJournalData:(id)data startFrom:(int64_t)from endAt:(int64_t)at rawWifiStateSet:(id)set rawCellStateSet:(id)stateSet
{
  v132 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  setCopy = set;
  stateSetCopy = stateSet;
  v71 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:at];
  v72 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v131 = 0u;
  memset(v130, 0, sizeof(v130));
  v110 = 0;
  v109 = 0;
  v129 = 0;
  memset(v128, 0, sizeof(v128));
  v127 = 0u;
  atCopy = at;
  v74 = at - from;
  fromCopy = from;
  *&v13 = -1;
  *(&v13 + 1) = -1;
  *&self->lastEventTimeStampWifi = v13;
  *&self->firstEventTimeStampWifi = v13;
  p_firstEventTimeStampWifi = &self->firstEventTimeStampWifi;
  v107 = 0u;
  range1.length = 253;
  v104 = 0u;
  v105 = 0;
  *(&v107 + 4) = 0;
  range1.location = 0;
  v106[1] = 0;
  v106[0] = 0;
  DWORD2(v104) = 0;
  v103[0] = 0;
  v103[1] = 0;
  LOBYTE(v105.length) = -3;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = dataCopy;
  v70 = [obj countByEnumeratingWithState:&v99 objects:v126 count:16];
  v14 = 0;
  if (v70)
  {
    p_firstEventTimeStampCell = &self->firstEventTimeStampCell;
    p_lastEventTimeStampWifi = &self->lastEventTimeStampWifi;
    p_lastEventTimeStampCell = &self->lastEventTimeStampCell;
    v69 = *v100;
    v83 = @"Invalid/unknown network identification";
    v84 = @"Invalid/unknown network identification";
    selfCopy = self;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v100 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v73 = v15;
        v16 = *(*(&v99 + 1) + 8 * v15);
        journalName = [v16 journalName];
        journalData = [v16 journalData];
        v89 = [journalData length];
        if (v89 >= 0x11)
        {
          v18 = 0;
          v19 = 16;
          v88 = journalData;
          while (1)
          {
            v20 = objc_autoreleasePoolPush();
            if ([(NetworkAnalyticsModel *)self _isLegacyJournal:journalName])
            {
              v91 = v20;
              selfCopy3 = self;
              v22 = scoringLogHandle;
              if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218240;
                *&buf[4] = v18;
                *&buf[12] = 2048;
                *&buf[14] = 80;
                _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "Reading legacy journalRecord at %lu with length %lu", buf, 0x16u);
              }

              [journalData getBytes:v130 range:{v18, 80}];
              v23 = *&v130[0];
              v24 = BYTE10(v131);
              v25 = SWORD4(v131) >> 8;
              v26 = SDWORD2(v131) >> 24;
              v27 = 80;
              v28 = v130 + 8;
            }

            else
            {
              [journalData getBytes:&v109 range:{v18, 16}];
              v29 = v109;
              if (v109 == 2)
              {
                v54 = scoringLogHandle;
                if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134218240;
                  *&buf[4] = v18;
                  *&buf[12] = 2048;
                  *&buf[14] = 112;
                  _os_log_impl(&dword_23255B000, v54, OS_LOG_TYPE_DEBUG, "Reading limJournalRecord at %lu with length %lu", buf, 0x16u);
                }

                v55 = [journalData subdataWithRange:{v18, 112}];
                [(NetworkAnalyticsModel *)self _processLowInternetModeRecord:v55 addTo:v72];

                v19 = v18 + 112;
                goto LABEL_44;
              }

              if (v109 != 1)
              {
                v56 = scoringLogHandle;
                if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  *&buf[4] = v29;
                  _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_ERROR, "Unknown journal type %d", buf, 8u);
                }

LABEL_44:
                v57 = scoringLogHandle;
                if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_23255B000, v57, OS_LOG_TYPE_DEBUG, "This record is not LQM, not interesting to me.", buf, 2u);
                }

                goto LABEL_58;
              }

              v91 = v20;
              selfCopy3 = self;
              v23 = v110;
              v30 = scoringLogHandle;
              if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218240;
                *&buf[4] = v18;
                *&buf[12] = 2048;
                *&buf[14] = 88;
                _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEBUG, "Reading lqmJournalRecord at %lu with length %lu", buf, 0x16u);
              }

              [journalData getBytes:&v127 range:{v18, 88}];
              v24 = BYTE1(v129);
              v25 = v129;
              v27 = 88;
              v28 = v128;
              v26 = SBYTE2(v129);
            }

            v31 = scoringLogHandle;
            if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEBUG, "LQM record found, proceed.", buf, 2u);
            }

            if (!strncmp(v28, "KEY_REMOVED-RECORD", 0x12uLL))
            {
              goto LABEL_21;
            }

            v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v28];
            v98 = v14;
            v33 = [NetworkEpoch parsePrimaryKey:v32 majorID:&v98 minorID:0];
            v34 = v98;

            v14 = v34;
            selfCopy3 = selfCopy;
            if (!v33)
            {
LABEL_21:

              v14 = @"Invalid/unknown network identification";
            }

            v35 = scoringLogHandle;
            if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134219010;
              *&buf[4] = v23;
              *&buf[12] = 1024;
              *&buf[14] = v24;
              *&buf[18] = 2112;
              *&buf[20] = v14;
              *&buf[28] = 2048;
              *&buf[30] = v25;
              v112 = 1024;
              LODWORD(v113) = v26;
              _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEBUG, "journalRecord %lld, %u, %@, %ld, %d", buf, 0x2Cu);
            }

            v19 = v18 + v27;
            if (v24 == 1)
            {
              v36 = v106;
              v37 = setCopy;
              v38 = v84;
              v84 = v14;
              v40 = p_lastEventTimeStampWifi;
              v39 = p_firstEventTimeStampWifi;
            }

            else
            {
              if (v24 != 2)
              {
                v46 = scoringLogHandle;
                if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134217984;
                  *&buf[4] = v24;
                  _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEBUG, "Invalid interface type %ld", buf, 0xCu);
                }

                goto LABEL_57;
              }

              v36 = v103;
              v37 = stateSetCopy;
              v38 = v83;
              v83 = v14;
              v40 = p_lastEventTimeStampCell;
              v39 = p_firstEventTimeStampCell;
            }

            v87 = v39;
            v41 = v37;
            v14 = v14;

            if (range1.location > atCopy && v105.location > atCopy)
            {

              objc_autoreleasePoolPop(v91);
              self = selfCopy3;
              journalData = v88;
              goto LABEL_61;
            }

            v42 = [(NetworkAnalyticsModel *)selfCopy3 _getNWInstantQualityForNetwork:v24 basedOnLQM:v26];
            v43.location = v36[4];
            if (v23 < v43.location)
            {
              v44 = scoringLogHandle;
              if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
              {
                v45 = v36[4];
                *buf = 134218240;
                *&buf[4] = v45;
                *&buf[12] = 2048;
                *&buf[14] = v23;
                _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEBUG, "Record went back in time (previous record = %lld, current record = %lld), ignoring.", buf, 0x16u);
              }

              goto LABEL_56;
            }

            v43.length = v23 - v43.location + 1;
            v133.location = fromCopy;
            v133.length = v74 + 1;
            v47 = NSIntersectionRange(v43, v133);
            if (v47.length)
            {
              break;
            }

LABEL_55:
            v36[4] = v23;
            *(v36 + 40) = v42;
LABEL_56:

LABEL_57:
            self = selfCopy3;
            journalData = v88;
            v20 = v91;
LABEL_58:
            v18 = v19;
            objc_autoreleasePoolPop(v20);
            v19 += 16;
            if (v19 >= v89)
            {
              goto LABEL_61;
            }
          }

          context = objc_autoreleasePoolPush();
          v96 = 0u;
          v97 = 0u;
          [(NetworkAnalyticsModel *)selfCopy3 _parseTimeIntoWeekdayAndSlotId:v47.location withReferenceDate:v71];
          v94 = 0u;
          v95 = 0u;
          v48 = v47.length + v47.location - 1;
          [(NetworkAnalyticsModel *)selfCopy3 _parseTimeIntoWeekdayAndSlotId:v48 withReferenceDate:v71];
          v49 = scoringLogHandle;
          v50 = os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG);
          if (v24 == 1)
          {
            if (v50)
            {
              v51 = *(v36 + 40);
              *buf = 138414850;
              *&buf[4] = v14;
              *&buf[12] = 1024;
              *&buf[14] = v51;
              *&buf[18] = 2048;
              *&buf[20] = v47.location;
              *&buf[28] = 2048;
              *&buf[30] = v47.length + v47.location - 1;
              v112 = 2048;
              v113 = v96;
              v114 = 2048;
              v115 = *(&v96 + 1);
              v116 = 2048;
              v117 = v94;
              v118 = 2048;
              v119 = *(&v94 + 1);
              v120 = 2048;
              v121 = v97;
              v122 = 2048;
              v123 = v95;
              v124 = 1024;
              v125 = v42;
              v52 = v49;
              v53 = "Wi-Fi %@ stayed in quality=%d from %lu to %lu (day %ld, slot %ld to day %ld, slot %ld, start age %ld, end age %ld) then switch to quality=%d";
              goto LABEL_48;
            }
          }

          else if (v50)
          {
            v58 = *(v36 + 40);
            *buf = 138414850;
            *&buf[4] = v14;
            *&buf[12] = 1024;
            *&buf[14] = v58;
            *&buf[18] = 2048;
            *&buf[20] = v47.location;
            *&buf[28] = 2048;
            *&buf[30] = v47.length + v47.location - 1;
            v112 = 2048;
            v113 = v96;
            v114 = 2048;
            v115 = *(&v96 + 1);
            v116 = 2048;
            v117 = v94;
            v118 = 2048;
            v119 = *(&v94 + 1);
            v120 = 2048;
            v121 = v97;
            v122 = 2048;
            v123 = v95;
            v124 = 1024;
            v125 = v42;
            v52 = v49;
            v53 = "Cellular %@ stayed in quality=%d from %lu to %lu (day %ld, slot %ld to day %ld, slot %ld, start age %ld, end age %ld) then switch to quality=%d";
LABEL_48:
            _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_DEBUG, v53, buf, 0x68u);
          }

          if (*v87 == -1)
          {
            *v87 = v47.location;
          }

          *v40 = v48;
          if (*(v36 + 40))
          {
            v59 = v14;
          }

          else
          {
            v59 = @"Invalid/unknown network identification";
          }

          *buf = v96;
          *&buf[16] = v97;
          v92 = v94;
          v93 = v95;
          selfCopy3 = selfCopy;
          [(NetworkAnalyticsModel *)selfCopy _processNetworkState:v36 toStateSet:v41 stateStartTimeInfo:buf stateEndTimeInfo:&v92 effectiveNetworkId:v59];
          objc_autoreleasePoolPop(context);
          goto LABEL_55;
        }

LABEL_61:

        v15 = v73 + 1;
      }

      while (v73 + 1 != v70);
      v70 = [obj countByEnumeratingWithState:&v99 objects:v126 count:16];
      if (!v70)
      {
        goto LABEL_65;
      }
    }
  }

  v83 = @"Invalid/unknown network identification";
  v84 = @"Invalid/unknown network identification";
LABEL_65:

  v60.location = range1.location;
  v61 = atCopy;
  if (range1.location >= 1 && range1.location < atCopy)
  {
    v60.length = atCopy - range1.location + 1;
    v134.location = fromCopy;
    v134.length = v74 + 1;
    v62 = NSIntersectionRange(v60, v134);
    v61 = atCopy;
    if (v62.length)
    {
      memset(buf, 0, 32);
      [(NetworkAnalyticsModel *)self _parseTimeIntoWeekdayAndSlotId:v62.location withReferenceDate:v71];
      v96 = 0u;
      v97 = 0u;
      [(NetworkAnalyticsModel *)self _parseTimeIntoWeekdayAndSlotId:v62.length + v62.location - 1 withReferenceDate:v71];
      if (LOBYTE(range1.length))
      {
        v63 = v84;
      }

      else
      {
        v63 = @"Invalid/unknown network identification";
      }

      v94 = *buf;
      v95 = *&buf[16];
      v92 = v96;
      v93 = v97;
      [(NetworkAnalyticsModel *)self _processNetworkState:v106 toStateSet:setCopy stateStartTimeInfo:&v94 stateEndTimeInfo:&v92 effectiveNetworkId:v63];
      v61 = atCopy;
    }
  }

  v64.location = v105.location;
  if (v105.location >= 1 && v105.location < v61)
  {
    v64.length = v61 - v105.location + 1;
    v135.location = fromCopy;
    v135.length = v74 + 1;
    v65 = NSIntersectionRange(v64, v135);
    if (v65.length)
    {
      memset(buf, 0, 32);
      [(NetworkAnalyticsModel *)self _parseTimeIntoWeekdayAndSlotId:v65.location withReferenceDate:v71];
      v96 = 0u;
      v97 = 0u;
      [(NetworkAnalyticsModel *)self _parseTimeIntoWeekdayAndSlotId:v65.length + v65.location - 1 withReferenceDate:v71];
      if (LOBYTE(v105.length))
      {
        v66 = v83;
      }

      else
      {
        v66 = @"Invalid/unknown network identification";
      }

      v94 = *buf;
      v95 = *&buf[16];
      v92 = v96;
      v93 = v97;
      [(NetworkAnalyticsModel *)self _processNetworkState:v103 toStateSet:stateSetCopy stateStartTimeInfo:&v94 stateEndTimeInfo:&v92 effectiveNetworkId:v66];
    }
  }

  [(NetworkAnalyticsModel *)self _finishedReadingLowInternetModeRecords:v72];

  v67 = *MEMORY[0x277D85DE8];
}

- (id)_getPredictionJournalNameWithPrefix:(id)prefix forInterface:(int64_t)interface slotSizeMinutes:(unint64_t)minutes
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = [prefix mutableCopy];
  v8 = v7;
  if (interface == 1)
  {
    v9 = @"-WiFi";
    goto LABEL_5;
  }

  if (interface == 2)
  {
    v9 = @"-Cellular";
LABEL_5:
    [v7 appendString:v9];
    [v8 appendFormat:@"-%lu", minutes];
    v10 = v8;
    goto LABEL_9;
  }

  v11 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    interfaceCopy = interface;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Invalid interface type %ld", buf, 0xCu);
  }

  v10 = 0;
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_getSavedPredictionHeaderNameForInterface:(int64_t)interface
{
  v10 = *MEMORY[0x277D85DE8];
  if (interface == 2)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-Cellular", @"SymptomsPredictionHeader"];
    goto LABEL_5;
  }

  if (interface == 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-Wifi", @"SymptomsPredictionHeader"];
    v4 = LABEL_5:;
    goto LABEL_9;
  }

  v5 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    interfaceCopy = interface;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Invalid interface type %ld", buf, 0xCu);
  }

  v4 = 0;
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_getComplementaryPredictionNameForInterface:(int64_t)interface
{
  v10 = *MEMORY[0x277D85DE8];
  if (interface == 2)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-Cellular", @"SymptomsComplementaryPrediction"];
    goto LABEL_5;
  }

  if (interface == 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-Wifi", @"SymptomsComplementaryPrediction"];
    v4 = LABEL_5:;
    goto LABEL_9;
  }

  v5 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    interfaceCopy = interface;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Invalid interface type %ld", buf, 0xCu);
  }

  v4 = 0;
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_loadSavedPredictionBasedOnHeaderData:(id)data interface:(int64_t)interface
{
  v71 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (interface == 1)
  {
    v7 = 192;
    v8 = 120;
    v64 = 104;
    v9 = 88;
LABEL_5:
    v63 = v9;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:0];
    v11 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      interfaceCopy = v10;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "JSON Auxiliary information: %@", buf, 0xCu);
    }

    v12 = [v10 objectForKeyedSubscript:@"slot_size_seconds"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v12 unsignedIntegerValue] != 900)
    {
      v25 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v26 = v25;
        unsignedIntegerValue = [v12 unsignedIntegerValue];
        *buf = 134218240;
        interfaceCopy = unsignedIntegerValue;
        v69 = 2048;
        v70 = 900;
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "The predictions were saved using different slot sizes (saved=%ld, current=%ld)", buf, 0x16u);
      }
    }

    else
    {
      v62 = v8;
      v13 = [v10 objectForKeyedSubscript:@"history_weeks"];

      if (v13)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 unsignedIntegerValue] != 4)
        {
          v28 = scoringLogHandle;
          if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v29 = v28;
            unsignedIntegerValue2 = [v13 unsignedIntegerValue];
            *buf = 134218240;
            interfaceCopy = unsignedIntegerValue2;
            v69 = 2048;
            v70 = 4;
            _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEBUG, "The predictions were saved using different history lengths (saved=%ld, current=%ld)", buf, 0x16u);
          }

          goto LABEL_30;
        }
      }

      v12 = [v10 objectForKeyedSubscript:@"weight_strategy"];

      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (weightStrategy = self->weightStrategy, [v12 integerValue] == weightStrategy))
      {
        v13 = [v10 objectForKeyedSubscript:@"saved_predictions_name"];

        if (v13)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = scoringLogHandle;
            if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              interfaceCopy = v13;
              _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "Saved prediction header points to %@", buf, 0xCu);
            }

            ieService = self->ieService;
            v66 = 0;
            v17 = [(ImpoExpoService *)ieService exportAndUnarchiveItemUnderName:v13 lastUpdated:&v66 verificationBlock:&__block_literal_global_425];
            v18 = v66;
            v19 = scoringLogHandle;
            v20 = os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG);
            if (v17)
            {
              if (!v20)
              {
                goto LABEL_42;
              }

              *buf = 138412546;
              interfaceCopy = v13;
              v69 = 2112;
              v70 = v18;
              v21 = "Loaded prediction %@, last updated %@";
              v22 = v19;
              v23 = 22;
            }

            else
            {
              if (!v20)
              {
                goto LABEL_42;
              }

              *buf = 138412290;
              interfaceCopy = v13;
              v21 = "Failed to load prediction %@";
              v22 = v19;
              v23 = 12;
            }

            _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, v21, buf, v23);
LABEL_42:

            v37 = [v10 objectForKeyedSubscript:@"model_time"];

            if (v37)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                integerValue = [v37 integerValue];
                v39 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:integerValue];
                [(NetworkAnalyticsModel *)self setLastModelRunTime:v39];
              }
            }

            v40 = [v10 objectForKeyedSubscript:@"timezone_offset_no_daylight_seconds"];

            if (v40)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                self->timezoneOffsetFromUtcNoDaylight = [v40 integerValue];
              }
            }

            v41 = [v10 objectForKeyedSubscript:@"first_event_timestamp"];

            if (v41)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                *(&self->super.isa + v63) = [v41 integerValue];
              }
            }

            v42 = [v10 objectForKeyedSubscript:@"last_event_timestamp"];

            if (v42)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                *(&self->super.isa + v64) = [v42 integerValue];
              }
            }

            v43 = [v10 objectForKeyedSubscript:@"days_with_events"];

            if (v43)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                *(&self->super.isa + v62) = [v43 unsignedIntegerValue];
              }
            }

            v44 = [v10 objectForKeyedSubscript:@"prediction_error"];

            if (v44)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v44 doubleValue];
                *(&self->super.isa + v7) = v45;
              }
            }

            v13 = [v10 objectForKeyedSubscript:@"days_groups"];

            if (v13)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                _isValidTimezoneToReturnPredictions = [(NetworkAnalyticsModel *)self _isValidTimezoneToReturnPredictions];
                v47 = v13;
                v12 = v47;
                if (interface != 1)
                {
                  defaultArrayOfDaysGroupCell = self->defaultArrayOfDaysGroupCell;
                  self->defaultArrayOfDaysGroupCell = v47;

                  if (_isValidTimezoneToReturnPredictions)
                  {
                    objc_storeStrong(&self->currentArrayOfDaysGroupCell, self->defaultArrayOfDaysGroupCell);
                  }

                  goto LABEL_35;
                }

                defaultArrayOfDaysGroupWifi = self->defaultArrayOfDaysGroupWifi;
                self->defaultArrayOfDaysGroupWifi = v47;

                if (_isValidTimezoneToReturnPredictions)
                {
                  objc_storeStrong(&self->currentArrayOfDaysGroupWifi, self->defaultArrayOfDaysGroupWifi);
                }

LABEL_66:
                v12 = [v10 objectForKeyedSubscript:@"has_complementary_graph"];

                if (!v12)
                {
                  goto LABEL_35;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || ![v12 BOOLValue])
                {
                  goto LABEL_35;
                }

                v49 = [(NetworkAnalyticsModel *)self _getComplementaryPredictionNameForInterface:1];
                if (!v49)
                {
                  goto LABEL_79;
                }

                v50 = self->ieService;
                v65 = 0;
                v51 = [(ImpoExpoService *)v50 exportAndUnarchiveItemUnderName:v49 lastUpdated:&v65 verificationBlock:0];
                v52 = v65;
                disconnectionPatternsWifi = self->disconnectionPatternsWifi;
                self->disconnectionPatternsWifi = v51;

                v54 = self->disconnectionPatternsWifi;
                v55 = scoringLogHandle;
                v56 = os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG);
                if (v54)
                {
                  if (v56)
                  {
                    v57 = self->disconnectionPatternsWifi;
                    *buf = 138412290;
                    interfaceCopy = v57;
                    v58 = "Loaded complementary predictions to %@";
                    v59 = v55;
                    v60 = 12;
LABEL_77:
                    _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_DEBUG, v58, buf, v60);
                  }
                }

                else if (v56)
                {
                  *buf = 0;
                  v58 = "Failed to loaded complementary predictions";
                  v59 = v55;
                  v60 = 2;
                  goto LABEL_77;
                }

LABEL_79:
                goto LABEL_35;
              }
            }

            if (interface == 1)
            {
              goto LABEL_66;
            }

            goto LABEL_31;
          }
        }

LABEL_30:
        v17 = 0;
LABEL_31:
        v12 = v13;
LABEL_35:

        goto LABEL_36;
      }

      v31 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v32 = v31;
        integerValue2 = [v12 integerValue];
        v34 = self->weightStrategy;
        *buf = 134218240;
        interfaceCopy = integerValue2;
        v69 = 1024;
        LODWORD(v70) = v34;
        _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEBUG, "The predictions were saved using different weighing strategies (saved=%ld, current=%u)", buf, 0x12u);
      }
    }

    v17 = 0;
    goto LABEL_35;
  }

  if (interface == 2)
  {
    v7 = 200;
    v8 = 128;
    v64 = 112;
    v9 = 96;
    goto LABEL_5;
  }

  v24 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    interfaceCopy = interface;
    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "Invalid interface type %ld", buf, 0xCu);
  }

  v17 = 0;
LABEL_36:

  v35 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __73__NetworkAnalyticsModel__loadSavedPredictionBasedOnHeaderData_interface___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __73__NetworkAnalyticsModel__loadSavedPredictionBasedOnHeaderData_interface___block_invoke_2;
    v5[3] = &unk_27898BED8;
    v5[4] = &v6;
    [v2 enumerateObjectsUsingBlock:v5];
    v3 = *(v7 + 24);
  }

  else
  {
    v3 = 0;
    *(v7 + 24) = 0;
  }

  _Block_object_dispose(&v6, 8);

  return v3 & 1;
}

void __73__NetworkAnalyticsModel__loadSavedPredictionBasedOnHeaderData_interface___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (BOOL)_savePredictionToJournalForInterface:(int64_t)interface
{
  v32 = *MEMORY[0x277D85DE8];
  if (interface == 2)
  {
    v5 = self->defaultLQMPredictionsCell;
    v6 = 0;
LABEL_5:
    v7 = [(NetworkAnalyticsModel *)self _getPredictionJournalNameWithPrefix:@"SymptomsPrediction" forInterface:interface slotSizeMinutes:15];
    if (v7)
    {
      lastModelRunTime = [(NetworkAnalyticsModel *)self lastModelRunTime];
      [lastModelRunTime timeIntervalSince1970];
      v10 = v9;

      [v7 appendFormat:@"-%lld", v10];
      v11 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v12 = v11;
        lastModelRunTime2 = [(NetworkAnalyticsModel *)self lastModelRunTime];
        *buf = 138412546;
        interfaceCopy = lastModelRunTime2;
        v30 = 2112;
        v31 = v7;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "Saving predictions made at %@ to the journal name %@", buf, 0x16u);
      }

      v14 = [(ImpoExpoService *)self->ieService archiveAndImportItemUnderName:v7 item:v5];
      v15 = scoringLogHandle;
      v16 = os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG);
      if (v14)
      {
        if (v16)
        {
          *buf = 138412290;
          interfaceCopy = v7;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "Prediction named %@ saved", buf, 0xCu);
        }

        v17 = [(NetworkAnalyticsModel *)self _createHeaderDataForSavedPredictionsName:v7 hasComplementaryPrediction:v6 interfaceType:interface];
        if (v6)
        {
          v18 = [(NetworkAnalyticsModel *)self _getComplementaryPredictionNameForInterface:interface];
          if (v18)
          {
            [(ImpoExpoService *)self->ieService archiveAndImportItemUnderName:v18 item:self->disconnectionPatternsWifi];
          }
        }

        v19 = [(NetworkAnalyticsModel *)self _getSavedPredictionHeaderNameForInterface:interface];
        [(ImpoExpoService *)self->ieService importItemUnderName:v19 item:v17];

        v20 = 1;
        goto LABEL_25;
      }

      if (v16)
      {
        *buf = 138412290;
        interfaceCopy = v7;
        v23 = "Prediction named %@ not saved";
        v24 = v15;
        v25 = 12;
        goto LABEL_23;
      }
    }

    else
    {
      v22 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v23 = "Invalid prediction name to be saved";
        v24 = v22;
        v25 = 2;
LABEL_23:
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, v23, buf, v25);
      }
    }

    v20 = 0;
LABEL_25:

    goto LABEL_26;
  }

  if (interface == 1)
  {
    v5 = self->defaultLQMPredictionsWifi;
    v6 = [(NSArray *)self->disconnectionPatternsWifi count]!= 0;
    goto LABEL_5;
  }

  v21 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    interfaceCopy = interface;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "Invalid interface type %ld", buf, 0xCu);
  }

  v20 = 0;
LABEL_26:
  v26 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)_purgeSavedPredictionsOlderThan:(unint64_t)than
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v39 = @"SymptomsPrediction";
    v40 = 2048;
    thanCopy = than;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Purging saved predictions with prefix %@ older than %lu days from now", buf, 0x16u);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [(ImpoExpoService *)self->ieService listItemsNameWithPrefix:@"SymptomsPrediction" sortDescriptor:0];
  if ([v7 count])
  {
    v28 = v6;
    selfCopy = self;
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v10 = v9;

    v31 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v27 = v7;
    obj = v7;
    v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = v11;
    v30 = v10 - 86400 * than;
    v13 = *v34;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v17 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v39 = v15;
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "Checking if saved predictions %@ should be purged", buf, 0xCu);
        }

        v18 = [(__CFString *)v15 componentsSeparatedByString:@"-"];
        if ([v18 count] != 4)
        {
          if (([(__CFString *)v15 hasPrefix:@"SymptomsPredictionHeader"]& 1) != 0)
          {
            goto LABEL_23;
          }

          v25 = scoringLogHandle;
          if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v39 = v15;
            v23 = v25;
            v24 = "Malformed saved prediction name %@, marked for deletion";
LABEL_21:
            _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEBUG, v24, buf, 0xCu);
          }

LABEL_22:
          [v31 addObject:v15];
          goto LABEL_23;
        }

        v19 = [v18 objectAtIndex:3];
        longLongValue = [v19 longLongValue];

        if (longLongValue <= v30 || longLongValue > v10)
        {
          v22 = scoringLogHandle;
          if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v39 = v15;
            v23 = v22;
            v24 = "Marked saved prediction name %@ for deletion";
            goto LABEL_21;
          }

          goto LABEL_22;
        }

LABEL_23:

        objc_autoreleasePoolPop(v16);
      }

      v12 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (!v12)
      {
LABEL_25:

        [(ImpoExpoService *)selfCopy->ieService deleteItemsWithNames:v31];
        v7 = v27;
        v6 = v28;
        break;
      }
    }
  }

  objc_autoreleasePoolPop(v6);
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_loadLatestPredictionFromJournalWithInterfaceType:(int64_t)type
{
  typeCopy = type;
  selfCopy = self;
  v75 = *MEMORY[0x277D85DE8];
  v5 = [(NetworkAnalyticsModel *)self _getPredictionJournalNameWithPrefix:@"SymptomsPrediction" forInterface:type slotSizeMinutes:15];
  if (v5)
  {
    v6 = [(NetworkAnalyticsModel *)selfCopy _getSavedPredictionHeaderNameForInterface:typeCopy];
    ieService = selfCopy->ieService;
    v69 = 0;
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __75__NetworkAnalyticsModel__loadLatestPredictionFromJournalWithInterfaceType___block_invoke;
    v67[3] = &unk_27898F368;
    v8 = v6;
    v68 = v8;
    v9 = [(ImpoExpoService *)ieService exportItemUnderName:v8 lastUpdated:&v69 verificationBlock:v67];
    v10 = v69;
    if (v9 && ([(NetworkAnalyticsModel *)selfCopy _loadSavedPredictionBasedOnHeaderData:v9 interface:typeCopy], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      _isValidTimezoneToReturnPredictions = [(NetworkAnalyticsModel *)selfCopy _isValidTimezoneToReturnPredictions];
      v14 = 0;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = [(ImpoExpoService *)selfCopy->ieService listItemsNameWithPrefix:v5 sortDescriptor:0];
      v17 = [v16 count];
      v18 = scoringLogHandle;
      v19 = os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG);
      if (!v17)
      {
        if (v19)
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "No saved predictions in the journal", buf, 2u);
        }

        objc_autoreleasePoolPop(v15);
        v12 = 0;
        v14 = 0;
        goto LABEL_44;
      }

      context = v15;
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "No additional info, or it points to an invalid saved predictions journal -- loading the latest saved predictions found.", buf, 2u);
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      obj = v16;
      v20 = [obj countByEnumeratingWithState:&v63 objects:v74 count:16];
      v58 = typeCopy;
      v59 = v10;
      if (v20)
      {
        v21 = v20;
        v53 = selfCopy;
        v54 = v9;
        v55 = v8;
        v56 = v5;
        v22 = 0;
        v60 = 0;
        v23 = *v64;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v64 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v63 + 1) + 8 * i);
            v26 = objc_autoreleasePoolPush();
            v27 = scoringLogHandle;
            if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v71 = v25;
              _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEBUG, "Found saved predictions named: %@", buf, 0xCu);
            }

            v28 = [v25 componentsSeparatedByString:@"-"];
            if ([v28 count] == 4)
            {
              v29 = [v28 objectAtIndex:3];
              longLongValue = [v29 longLongValue];

              if (longLongValue > v22)
              {
                v31 = v25;

                v22 = longLongValue;
                v60 = v31;
              }
            }

            else
            {
              v32 = scoringLogHandle;
              if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v71 = v25;
                _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEBUG, "Malformed saved prediction name %@", buf, 0xCu);
              }
            }

            objc_autoreleasePoolPop(v26);
          }

          v21 = [obj countByEnumeratingWithState:&v63 objects:v74 count:16];
        }

        while (v21);
        v33 = v22;
        v8 = v55;
        v5 = v56;
        typeCopy = v58;
        v10 = v59;
        selfCopy = v53;
        v9 = v54;
        v14 = v60;
      }

      else
      {
        v14 = 0;
        v33 = 0.0;
      }

      v35 = selfCopy->ieService;
      v62 = 0;
      v12 = [(ImpoExpoService *)v35 exportAndUnarchiveItemUnderName:v14 lastUpdated:&v62 verificationBlock:&__block_literal_global_435];
      v36 = v62;
      v37 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v33];
      [(NetworkAnalyticsModel *)selfCopy setLastModelRunTime:v37];

      selfCopy->timezoneOffsetFromUtcNoDaylight = [(NetworkAnalyticsModel *)selfCopy _getCurrentLocationTimezoneOffsetWithoutDST];
      v38 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v39 = MEMORY[0x277CBEAF8];
        v40 = v38;
        currentLocale = [v39 currentLocale];
        [v36 descriptionWithLocale:currentLocale];
        v43 = v42 = v14;
        *buf = 138412546;
        v71 = v42;
        v72 = 2112;
        v73 = v43;
        _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEBUG, "Loaded the most recent saved predictions: %@ (saved at %@)", buf, 0x16u);

        typeCopy = v58;
        v14 = v42;
        v10 = v59;
      }

      objc_autoreleasePoolPop(context);
      if (!v12)
      {
LABEL_44:

        goto LABEL_45;
      }

      _isValidTimezoneToReturnPredictions = 1;
    }

    0x3FE0000000000000 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > %f", @"confidence", 0x3FE0000000000000];
    if (typeCopy == 2)
    {
      objc_storeStrong(&selfCopy->defaultLQMPredictionsCell, v12);
      v49 = [(NSArray *)selfCopy->defaultLQMPredictionsCell filteredArrayUsingPredicate:0x3FE0000000000000];
      defaultLQMPredictionsCell = selfCopy->defaultLQMPredictionsCell;
      selfCopy->defaultLQMPredictionsCell = v49;

      if (_isValidTimezoneToReturnPredictions)
      {
        v47 = selfCopy->defaultLQMPredictionsCell;
        p_currentLQMPredictionsCell = &selfCopy->currentLQMPredictionsCell;
        goto LABEL_40;
      }
    }

    else
    {
      if (typeCopy != 1)
      {
        v51 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v71 = typeCopy;
          _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_DEBUG, "Invalid interface type %ld", buf, 0xCu);
        }

        goto LABEL_43;
      }

      objc_storeStrong(&selfCopy->defaultLQMPredictionsWifi, v12);
      v45 = [(NSArray *)selfCopy->defaultLQMPredictionsWifi filteredArrayUsingPredicate:0x3FE0000000000000];
      defaultLQMPredictionsWifi = selfCopy->defaultLQMPredictionsWifi;
      selfCopy->defaultLQMPredictionsWifi = v45;

      if (_isValidTimezoneToReturnPredictions)
      {
        v47 = selfCopy->defaultLQMPredictionsWifi;
        p_currentLQMPredictionsCell = &selfCopy->currentLQMPredictionsWifi;
LABEL_40:
        objc_storeStrong(p_currentLQMPredictionsCell, v47);
      }
    }

LABEL_43:

    goto LABEL_44;
  }

  v34 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEBUG, "Invalid prediction name to be loaded", buf, 2u);
  }

LABEL_45:

  v52 = *MEMORY[0x277D85DE8];
}

uint64_t __75__NetworkAnalyticsModel__loadLatestPredictionFromJournalWithInterfaceType___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0;
    v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:&v12];
    v5 = v12;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    v7 = !v6;
    if (v6)
    {
      v8 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        *buf = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "JSONObjectWithData for PredictionHeaderName %@ retured with error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __75__NetworkAnalyticsModel__loadLatestPredictionFromJournalWithInterfaceType___block_invoke_433(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __75__NetworkAnalyticsModel__loadLatestPredictionFromJournalWithInterfaceType___block_invoke_2;
    v5[3] = &unk_27898BED8;
    v5[4] = &v6;
    [v2 enumerateObjectsUsingBlock:v5];
    v3 = *(v7 + 24);
  }

  else
  {
    v3 = 0;
    *(v7 + 24) = 0;
  }

  _Block_object_dispose(&v6, 8);

  return v3 & 1;
}

void __75__NetworkAnalyticsModel__loadLatestPredictionFromJournalWithInterfaceType___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)_updateHomeTimezoneOffsetIfNeeded
{
  v17 = *MEMORY[0x277D85DE8];
  _getCurrentLocationTimezoneOffsetWithoutDST = [(NetworkAnalyticsModel *)self _getCurrentLocationTimezoneOffsetWithoutDST];
  v4 = _getCurrentLocationTimezoneOffsetWithoutDST;
  if (!self->homeTimezoneOffsetKnownCoreRoutine || _getCurrentLocationTimezoneOffsetWithoutDST != self->homeTimezoneOffsetFromUtcNoDaylight)
  {
    v5 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      homeTimezoneOffsetFromUtcNoDaylight = self->homeTimezoneOffsetFromUtcNoDaylight;
      v13 = 134218240;
      v14 = homeTimezoneOffsetFromUtcNoDaylight;
      v15 = 2048;
      v16 = v4;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "First time recognizing (new) HOME, updating timezone offset from %ld to %ld", &v13, 0x16u);
    }

    self->homeTimezoneOffsetKnownCoreRoutine = 1;
    self->homeTimezoneOffsetFromUtcNoDaylight = v4;
    ieService = self->ieService;
    v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:self->homeTimezoneOffsetFromUtcNoDaylight];
    LODWORD(ieService) = [(ImpoExpoService *)ieService archiveAndImportItemUnderName:@"HOME_TIMEZONE_OFFSET_NO_DST" item:v8];

    v9 = scoringLogHandle;
    v10 = os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG);
    if (ieService)
    {
      if (v10)
      {
        LOWORD(v13) = 0;
        v11 = "Saved (new) HOME timezone offset to journal";
LABEL_10:
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, v11, &v13, 2u);
      }
    }

    else if (v10)
    {
      LOWORD(v13) = 0;
      v11 = "Error saving (new) HOME timezone offset to journal";
      goto LABEL_10;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_extractImpairmentEventsFromNetworkStateTable:(id)table setOfDays:(id)days
{
  v28 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  daysCopy = days;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (daysCopy)
  {
    v8 = [daysCopy count] == 0;
    if (!tableCopy)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = 1;
    if (!tableCopy)
    {
      goto LABEL_19;
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = tableCopy;
  v9 = tableCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if ([v14 stateType] <= 99)
        {
          if (v8 || (v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLong:{objc_msgSend(v14, "stateDayOfWeek")}], v16 = objc_msgSend(daysCopy, "containsObject:", v15), v15, v16))
          {
            v17 = scoringLogHandle;
            if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v26 = v14;
              _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            [v7 addObject:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v11);
  }

  tableCopy = v20;
LABEL_19:

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (double)_clusterUsingKMeansOn:(id)on into:(int)into iterations:(int)iterations saveCentroidsTo:(id)to
{
  intoCopy = into;
  selfCopy = self;
  onCopy = on;
  toCopy = to;
  v10 = [onCopy count];
  v11 = malloc_type_calloc(3uLL, 8uLL, 0x8DEE4012uLL);
  if (!v11)
  {
    [NetworkAnalyticsModel _clusterUsingKMeansOn:buf into:? iterations:? saveCentroidsTo:?];
  }

  if (!(v10 << 32))
  {
    [NetworkAnalyticsModel _clusterUsingKMeansOn:buf into:? iterations:? saveCentroidsTo:?];
  }

  count = v10;
  if (v10 >> 61)
  {
    [NetworkAnalyticsModel _clusterUsingKMeansOn:buf into:? iterations:? saveCentroidsTo:?];
  }

  v12 = v11;
  for (i = 0; i != 3; ++i)
  {
    v14 = malloc_type_calloc(count, 8uLL, 0xEF4DE7DCuLL);
    if (!v14)
    {
      [NetworkAnalyticsModel _clusterUsingKMeansOn:buf into:? iterations:? saveCentroidsTo:?];
    }

    v12[i] = v14;
  }

  v37 = &v36;
  if (iterations < 1)
  {
    v18 = 1.79769313e308;
  }

  else
  {
    v15 = 0;
    v16 = v10 & 0x7FFFFFFF;
    v17 = 24 * intoCopy;
    v18 = 1.79769313e308;
    iterationsCopy = iterations;
    do
    {
      if (count >= 1)
      {
        v19 = 0;
        do
        {
          v20 = [onCopy objectAtIndex:v19];
          *(*v12 + 8 * v19) = [v20 stateSlotId];
          *(v12[1] + 8 * v19) = [v20 stateLength];
          *(v12[2] + 8 * v19) = [v20 stateType];

          ++v19;
        }

        while (v16 != v19);
      }

      v21 = gCPMLCreateKMEANSAnalysisFunc(3, count, v12, intoCopy, 20, 0, 0, 0.01);
      if (!v21)
      {
        v22 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "K-means failed", buf, 2u);
        }
      }

      v23 = gCPMLTotalWithinssKMeansAnalysisFunc(v21);
      if (v23 >= v18)
      {
        v24 = 1;
      }

      else
      {
        v18 = v23;
        v24 = toCopy == 0;
      }

      if (!v24)
      {
        v25 = v23;
        v40 = v15;
        *buf = 0;
        gCPMLClusterKMeansAnalysisFunc(v21, buf);
        if (count >= 1)
        {
          v26 = 0;
          do
          {
            v27 = [onCopy objectAtIndex:v26];
            [v27 assignLabel:*(*buf + 4 * v26)];

            ++v26;
          }

          while (v16 != v26);
        }

        [toCopy removeAllObjects];
        v44 = 0;
        v39 = v21;
        gCPMLCentersKMeansAnalysisFunc(v21, &v44);
        if (intoCopy >= 1)
        {
          v28 = 0;
          do
          {
            v29 = [NetworkStateRecord alloc];
            v30 = *(v44 + v28);
            v31 = *(v44 + v28 + 8);
            v36 = *(v44 + v28 + 16);
            v32 = [(NetworkStateRecord *)v29 initWithAge:-1 dayOfWeek:-1 slotId:v30 stateLength:v31 beginningNetworkId:@"Invalid/unknown network identification" endingNetworkId:@"Invalid/unknown network identification" stateType:v36 label:-1, v37];
            [toCopy addObject:v32];

            v28 += 24;
          }

          while (v17 != v28);
        }

        v18 = v25;
        iterations = iterationsCopy;
        v15 = v40;
        v21 = v39;
      }

      gCPMLDestroyKMEANSAnalysisFunc(v21);
      [(NetworkAnalyticsModel *)selfCopy _shuffleArray:onCopy];
      ++v15;
    }

    while (v15 != iterations);
  }

  for (j = 0; j != 3; ++j)
  {
    v34 = v12[j];
    if (v34)
    {
      free(v34);
      v12[j] = 0;
    }
  }

  free(v12);

  return v18;
}

- (void)_clusterImpairmentEventsUsingKMeansOn:(id)on saveCentroidsTo:(id)to
{
  v24 = *MEMORY[0x277D85DE8];
  onCopy = on;
  toCopy = to;
  array = [MEMORY[0x277CBEB18] array];
  v9 = [onCopy count];
  if (v9)
  {
    if (v9 >= 1)
    {
      if (v9 >= 0xA)
      {
        v10 = 10;
      }

      else
      {
        v10 = v9;
      }

      v11 = 1;
      do
      {
        [(NetworkAnalyticsModel *)self _clusterUsingKMeansOn:onCopy into:v11 iterations:50 saveCentroidsTo:0];
        v13 = v12;
        v14 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109376;
          v21 = v11;
          v22 = 2048;
          v23 = v13;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "%d, %.4f", buf, 0x12u);
        }

        v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:v13];
        [array addObject:v15];

        v11 = (v11 + 1);
        --v10;
      }

      while (v10);
    }

    v16 = [(NetworkAnalyticsModel *)self _elbowOfList:array];
    if ((v16 & 0x80000000) == 0)
    {
      v17 = (v16 + 1);
      v18 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v21 = v17;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "The optimal number of clusters is %d", buf, 8u);
      }

      [(NetworkAnalyticsModel *)self _clusterUsingKMeansOn:onCopy into:v17 iterations:50 saveCentroidsTo:toCopy];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_clusterEventsUsingKMeansForSetOfDays:(id)days networkStateTable:(id)table saveCentroidsTo:(id)to
{
  v38 = *MEMORY[0x277D85DE8];
  daysCopy = days;
  toCopy = to;
  v9 = [(NetworkAnalyticsModel *)self _extractImpairmentEventsFromNetworkStateTable:table setOfDays:daysCopy];
  v10 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v11 = v10;
    v12 = [v9 count];
    allObjects = [daysCopy allObjects];
    v14 = [allObjects componentsJoinedByString:{@", "}];
    *buf = 134218242;
    v35 = v12;
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Extracted %ld impairment events on days {%@}", buf, 0x16u);
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = v9;
  [(NetworkAnalyticsModel *)self _clusterImpairmentEventsUsingKMeansOn:v9 saveCentroidsTo:v15];
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

        v21 = *(*(&v29 + 1) + 8 * i);
        allObjects2 = [daysCopy allObjects];
        v23 = [allObjects2 objectAtIndex:0];
        [v21 assignDayOfWeek:{objc_msgSend(v23, "longValue")}];

        v24 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v35 = v21;
          _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v18);
  }

  [toCopy addObjectsFromArray:v16];
  v25 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_clusterEventsInWeekUsingKMeansOn:(id)on
{
  *&v53[5] = *MEMORY[0x277D85DE8];
  onCopy = on;
  v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = onCopy;
  v6 = [v5 count];
  v7 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v8 = v7;
    *buf = 134217984;
    *v53 = [v5 count];
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Extracted %ld impairment events (a.k.a. centroids from 7 days) for week clustering", buf, 0xCu);
  }

  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(NetworkAnalyticsModel *)self _clusterImpairmentEventsUsingKMeansOn:v5 saveCentroidsTo:?];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = 7;
  do
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [v9 addObject:v11];

    --v10;
  }

  while (v10);
  v12 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "Clusters from each day and their assigned week cluster", buf, 2u);
  }

  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v14 = [v5 objectAtIndex:i];
      stateDayOfWeek = [v14 stateDayOfWeek];

      v16 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v17 = v16;
        v18 = [v5 objectAtIndex:i];
        *buf = 138412290;
        *v53 = v18;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v19 = [v5 objectAtIndex:i];
      stateLabelAssigned = [v19 stateLabelAssigned];

      v21 = [v9 objectAtIndex:stateDayOfWeek - 1];
      v22 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:stateLabelAssigned];
      [v21 addObject:v22];
    }
  }

  v51 = v5;
  if ([v9 count])
  {
    v23 = 0;
    do
    {
      v24 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v25 = v23 + 1;
        v26 = v24;
        v27 = [v9 objectAtIndex:v23];
        allObjects = [v27 allObjects];
        v29 = [allObjects componentsJoinedByString:{@", "}];
        *buf = 67109378;
        v53[0] = v25;
        LOWORD(v53[1]) = 2112;
        *(&v53[1] + 2) = v29;
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "Day %d is active in the following week clusters: %@", buf, 0x12u);

        v23 = v25;
      }

      else
      {
        ++v23;
      }
    }

    while ([v9 count] > v23);
  }

  v30 = v5;
  if ([v9 count])
  {
    v31 = 0;
    v32 = 1;
    do
    {
      v33 = [v9 objectAtIndex:v31];
      v34 = [v33 count];

      if (v34)
      {
        v35 = scoringLogHandle;
        v36 = v31 + 1;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v53[0] = v31 + 1;
          _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEBUG, "Let day %d be unique, finding other days that have matching pattern", buf, 8u);
        }

        v37 = objc_alloc(MEMORY[0x277CBEB58]);
        v38 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v31 + 1];
        v39 = [v37 initWithObjects:{v38, 0}];

        v40 = v32;
        if ([v9 count] > v36)
        {
          do
          {
            v41 = [v9 objectAtIndex:v31];
            v42 = [v9 objectAtIndex:v40];
            v43 = [v41 isEqualToSet:v42];

            if (v43)
            {
              v44 = scoringLogHandle;
              if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67109376;
                v53[0] = v40 + 1;
                LOWORD(v53[1]) = 1024;
                *(&v53[1] + 2) = v31 + 1;
                _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEBUG, " day %d is similar to day %d", buf, 0xEu);
              }

              v45 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v40 + 1];
              [v39 addObject:v45];

              v46 = [v9 objectAtIndex:v40];
              [v46 removeAllObjects];

              ++v40;
            }

            else
            {
              ++v40;
            }
          }

          while ([v9 count] > v40);
        }

        [v50 addObject:v39];

        v30 = v51;
      }

      else
      {
        v36 = v31 + 1;
      }

      ++v32;
      v31 = v36;
    }

    while ([v9 count] > v36);
  }

  v47 = *MEMORY[0x277D85DE8];

  return v50;
}

- (unint64_t)_getTotalWeightForCompletedHistory
{
  v9 = *MEMORY[0x277D85DE8];
  weightStrategy = self->weightStrategy;
  if (weightStrategy >= 3)
  {
    v5 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = self->weightStrategy;
      v8[0] = 67109120;
      v8[1] = v6;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Invalid weight strategy %u", v8, 8u);
    }

    result = 4;
  }

  else
  {
    result = qword_232816F80[weightStrategy];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)_getWeightForAge:(int64_t)age
{
  v10 = *MEMORY[0x277D85DE8];
  weightStrategy = self->weightStrategy;
  if (!weightStrategy)
  {
LABEL_8:
    result = 1;
    goto LABEL_9;
  }

  if (weightStrategy == 2)
  {
    result = 1 << (age / -7 + 3);
    goto LABEL_9;
  }

  if (weightStrategy != 1)
  {
    v6 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v7 = self->weightStrategy;
      v9[0] = 67109120;
      v9[1] = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Invalid weight strategy %u", v9, 8u);
    }

    goto LABEL_8;
  }

  result = age / -7 + 4;
LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_generatePredictionForDays:(id)days fromClusteredEvents:(id)events clusterCentroids:(id)centroids interfaceType:(int64_t)type basedOnWeekClusters:(int64_t)clusters savePredictionsTo:(id)to
{
  buf[97] = *MEMORY[0x277D85DE8];
  daysCopy = days;
  eventsCopy = events;
  centroidsCopy = centroids;
  toCopy = to;
  v12 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = v12;
    allObjects = [daysCopy allObjects];
    v15 = [allObjects componentsJoinedByString:{@", "}];
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = v15;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "Generating prediction for the following days: {%@}", buf, 0xCu);
  }

  v73 = daysCopy;
  v72 = [daysCopy count];
  _getTotalWeightForCompletedHistory = [(NetworkAnalyticsModel *)self _getTotalWeightForCompletedHistory];
  bzero(buf, 0x300uLL);
  bzero(v113, 0x300uLL);
  buf[96] = -1;
  v113[96] = -1;
  if (clusters < 1)
  {
    v37 = 0;
    v36 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      v17 = objc_autoreleasePoolPush();
      v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"stateLabelAssigned", v16];
      v19 = [eventsCopy filteredArrayUsingPredicate:v18];
      if ([v19 count])
      {
        v79 = v18;
        v80 = v17;
        v20 = [centroidsCopy objectAtIndex:v16];
        v21 = -[NetworkAnalyticsModel _predictNetworkQualityBasedOnAverageNWInstantQuality:](self, "_predictNetworkQualityBasedOnAverageNWInstantQuality:", [v20 stateType]);
        v22 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v107 = 67109634;
          *&v107[4] = v16;
          *&v107[8] = 2112;
          *&v107[10] = v20;
          *&v107[18] = 2048;
          *&v107[20] = v21;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "Processing cluster %d, (%@): NWPredictedQuality = %ld: ", v107, 0x1Cu);
        }

        v77 = v20;
        v78 = v19;
        v81 = v16;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        obj = v19;
        v87 = [obj countByEnumeratingWithState:&v94 objects:v112 count:16];
        if (v87)
        {
          v84 = *v95;
          do
          {
            for (i = 0; i != v87; ++i)
            {
              if (*v95 != v84)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v94 + 1) + 8 * i);
              stateSlotId = [v24 stateSlotId];
              stateLength = [v24 stateLength];
              v27 = -[NetworkAnalyticsModel _getWeightForAge:](self, "_getWeightForAge:", [v24 stateAge]);
              v28 = scoringLogHandle;
              if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
              {
                *v107 = 138412546;
                *&v107[4] = v24;
                *&v107[12] = 2048;
                *&v107[14] = v27;
                _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEBUG, "%@ (weight=%ld)", v107, 0x16u);
              }

              if (stateLength >= 1)
              {
                v29 = stateLength + stateSlotId;
                v30 = stateSlotId;
                v31 = v29;
                do
                {
                  if (v21 == 50)
                  {
                    buf[v30] += v27;
                  }

                  else if (v21)
                  {
                    v32 = scoringLogHandle;
                    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
                    {
                      *v107 = 134217984;
                      *&v107[4] = v21;
                      _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEBUG, "Invalid predicted quality: %ld", v107, 0xCu);
                    }
                  }

                  else
                  {
                    v113[v30] += v27;
                  }

                  ++v30;
                }

                while (v30 < v31);
              }
            }

            v87 = [obj countByEnumeratingWithState:&v94 objects:v112 count:16];
          }

          while (v87);
        }

        v111 = 0;
        v109 = 0u;
        v110 = 0u;
        v108 = 0u;
        memset(v107, 0, sizeof(v107));
        [(NetworkAnalyticsModel *)self _calculateStatisticsFromNetworkStateTable:obj usingPredicate:0];
        v33 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v99 = 134218752;
          v100 = *&v107[8];
          v101 = 2048;
          v102 = *&v107[16];
          v103 = 2048;
          v104 = *&v107[24];
          v105 = 2048;
          v106 = *&v107[32];
          _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEBUG, "Length: min=%ld, max=%ld, avg=%.4f, sd=%.4f", v99, 0x2Au);
        }

        v34 = scoringLogHandle;
        v19 = v78;
        v18 = v79;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v99 = 134218752;
          v100 = *&v107[40];
          v101 = 2048;
          v102 = v108;
          v103 = 2048;
          v104 = *(&v108 + 1);
          v105 = 2048;
          v106 = v109;
          _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEBUG, "Start slot: min=%ld, max=%ld, avg=%.4f, sd=%.4f", v99, 0x2Au);
        }

        v35 = scoringLogHandle;
        v16 = v81;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v99 = 134218752;
          v100 = *(&v109 + 1);
          v101 = 2048;
          v102 = v110;
          v103 = 2048;
          v104 = *(&v110 + 1);
          v105 = 2048;
          v106 = v111;
          _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEBUG, "End slot: min=%ld, max=%ld, avg=%.4f, sd=%.4f", v99, 0x2Au);
        }

        v17 = v80;
      }

      objc_autoreleasePoolPop(v17);
      ++v16;
    }

    while (v16 != clusters);
    v36 = buf[0];
    v37 = v113[0];
  }

  v38 = v37 + v36;
  if (v37 >= v36)
  {
    v39 = 0;
  }

  else
  {
    v39 = 50;
  }

  if (v38)
  {
    v40 = v39;
  }

  else
  {
    v40 = 100;
  }

  v41 = scoringLogHandle;
  v42 = v73;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v43 = v41;
    allObjects2 = [v73 allObjects];
    v45 = [allObjects2 componentsJoinedByString:{@", "}];
    *v107 = 138412290;
    *&v107[4] = v45;
    _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEBUG, "Predictions for days {%@}", v107, 0xCu);
  }

  v46 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v107 = 0;
    _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEBUG, "start, length, w_none, w_fair, conf.", v107, 2u);
  }

  v47 = 0;
  v48 = 0;
  v49 = (v72 * _getTotalWeightForCompletedHistory);
  do
  {
    v50 = v113[v47];
    v51 = buf[v47];
    v52 = v51 + v50;
    if (v50 >= v51)
    {
      LODWORD(v53) = 0;
    }

    else
    {
      LODWORD(v53) = 50;
    }

    if (v52)
    {
      v53 = v53;
    }

    else
    {
      v53 = 100;
    }

    if (v38 == v52 && v40 == v53)
    {
      v52 = v38;
      v53 = v40;
    }

    else if (v40 == 100)
    {
      v48 = v47;
    }

    else
    {
      v86 = v53;
      v88 = v52;
      v55 = scoringLogHandle;
      v56 = v38;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v57 = v113[v48];
        v58 = buf[v48];
        *v107 = 67110144;
        *&v107[4] = v48;
        *&v107[8] = 1024;
        *&v107[10] = v47 - v48;
        *&v107[14] = 2048;
        *&v107[16] = v57;
        *&v107[24] = 2048;
        *&v107[26] = v58;
        *&v107[34] = 2048;
        *&v107[36] = v56 / v49;
        _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_DEBUG, "%d, %d, %ld, %ld, %.4f", v107, 0x2Cu);
      }

      v89 = v47;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v59 = v42;
      v60 = [v59 countByEnumeratingWithState:&v90 objects:v98 count:16];
      if (v60)
      {
        v61 = v60;
        v62 = *v91;
        v63 = v48 - 96;
        v64 = (v47 - v48);
        v65 = v56 / v49;
        do
        {
          for (j = 0; j != v61; ++j)
          {
            if (*v91 != v62)
            {
              objc_enumerationMutation(v59);
            }

            v67 = v63 + 96 * [*(*(&v90 + 1) + 8 * j) intValue];
            v68 = objc_autoreleasePoolPush();
            v69 = [[LQMPredictionInternalRecord alloc] initWithOffset:v67 length:v64 level:v40 confidence:v65];
            [toCopy addObject:v69];

            objc_autoreleasePoolPop(v68);
          }

          v61 = [v59 countByEnumeratingWithState:&v90 objects:v98 count:16];
        }

        while (v61);
      }

      v52 = v88;
      v47 = v89;
      v48 = v89;
      v42 = v73;
      v53 = v86;
    }

    ++v47;
    v40 = v53;
    v38 = v52;
  }

  while (v47 != 97);

  v70 = *MEMORY[0x277D85DE8];
}

- (id)_learnDisconnectionPatternForSetOfDays:(id)days impairmentEvents:(id)events
{
  v64 = *MEMORY[0x277D85DE8];
  daysCopy = days;
  eventsCopy = events;
  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  periodPerDay = self->periodPerDay;
  if (periodPerDay)
  {
    v7 = 0;
    do
    {
      v39 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %ld && %K >= %ld && %K < %ld && %K != %@ && %K != %@ && %K != %K", @"stateType", 0, @"stateSlotId", 96 * v7 / periodPerDay, @"stateSlotId", (96 * v7 + 96) / periodPerDay, @"stateBeginningNetworkId", @"Invalid/unknown network identification", @"stateEndingNetworkId", @"Invalid/unknown network identification", @"stateBeginningNetworkId", @"stateEndingNetworkId"];
      v8 = [eventsCopy filteredArrayUsingPredicate:?];
      v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v45 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = v8;
      v9 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
      if (v9)
      {
        v10 = v9;
        v43 = *v58;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v58 != v43)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v57 + 1) + 8 * i);
            v13 = objc_autoreleasePoolPush();
            v14 = [[DisconnectionStateStatistics alloc] initWithDaysOfWeek:daysCopy periodId:v7 forNetworkStateRecord:v12];
            stateBeginningNetworkId = [v12 stateBeginningNetworkId];
            [v45 addObject:stateBeginningNetworkId];

            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v16 = v48;
            v17 = [v16 countByEnumeratingWithState:&v53 objects:v62 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v54;
              while (2)
              {
                for (j = 0; j != v18; ++j)
                {
                  if (*v54 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v53 + 1) + 8 * j);
                  if ([v21 isMergeableWithDisconnectionStateStatistics:v14])
                  {
                    [v21 mergeDisconnectionStateStatistics:v14];

                    goto LABEL_18;
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v53 objects:v62 count:16];
                if (v18)
                {
                  continue;
                }

                break;
              }
            }

            [v16 addObject:v14];
LABEL_18:

            objc_autoreleasePoolPop(v13);
          }

          v10 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
        }

        while (v10);
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v46 = v45;
      v22 = [v46 countByEnumeratingWithState:&v49 objects:v61 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v50;
        do
        {
          v25 = 0;
          v44 = v23;
          do
          {
            if (*v50 != v24)
            {
              objc_enumerationMutation(v46);
            }

            v26 = *(*(&v49 + 1) + 8 * v25);
            v27 = objc_autoreleasePoolPush();
            v28 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"disconnectedFromNetworkId", v26];
            v29 = [v48 filteredArrayUsingPredicate:v28];
            if ([v29 count] == 1)
            {
              v30 = v7;
              v31 = [v29 objectAtIndex:0];
              networkStateRecords = [v31 networkStateRecords];
              v33 = [networkStateRecords count];
              minimumEventsToConsiderPattern = selfCopy->minimumEventsToConsiderPattern;
              v35 = [daysCopy count] * minimumEventsToConsiderPattern;

              if (v33 >= v35)
              {
                [v31 calculateAverageLength];
                [v40 addObject:v31];
              }

              v7 = v30;
              v23 = v44;
            }

            objc_autoreleasePoolPop(v27);
            ++v25;
          }

          while (v23 != v25);
          v23 = [v46 countByEnumeratingWithState:&v49 objects:v61 count:16];
        }

        while (v23);
      }

      ++v7;

      periodPerDay = selfCopy->periodPerDay;
    }

    while (v7 < periodPerDay);
  }

  v36 = *MEMORY[0x277D85DE8];

  return v40;
}

- (void)_handleNetworkNotificationFrom:(int64_t)from notification:(id)notification
{
  v86 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v6 = scoringLogHandle;
  v7 = os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG);
  if (from == 2)
  {
    if (v7)
    {
      v22 = v6;
      userInfo = [notificationCopy userInfo];
      *buf = 138477827;
      *&buf[4] = userInfo;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "Received Cellular notification: %{private}@", buf, 0xCu);
    }

    goto LABEL_60;
  }

  if (from != 1)
  {
    if (v7)
    {
      *buf = 134217984;
      *&buf[4] = from;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Invalid interface type %ld", buf, 0xCu);
    }

    goto LABEL_60;
  }

  if (v7)
  {
    v8 = v6;
    userInfo2 = [notificationCopy userInfo];
    *buf = 138477827;
    *&buf[4] = userInfo2;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Received Wi-Fi notification: %{private}@", buf, 0xCu);
  }

  v10 = self->disconnectionPatternsWifi;
  v11 = self->defaultLQMPredictionsWifi;
  userInfo3 = [notificationCopy userInfo];
  v13 = [userInfo3 objectForKeyedSubscript:@"State"];
  bOOLValue = [v13 BOOLValue];

  if (bOOLValue)
  {
    userInfo4 = [notificationCopy userInfo];
    v16 = [userInfo4 objectForKeyedSubscript:@"HashedPrimaryKey"];

    v17 = [v16 length];
    while (v17 >= 1)
    {
      if ([v16 characterAtIndex:--v17] == 45)
      {
        v18 = [v16 substringToIndex:v17];
        currentlyConnectedWifiSsid = self->currentlyConnectedWifiSsid;
        self->currentlyConnectedWifiSsid = v18;

        break;
      }
    }

    v20 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v21 = self->currentlyConnectedWifiSsid;
      *buf = 138477827;
      *&buf[4] = v21;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "Just connected to %{private}@", buf, 0xCu);
    }

    goto LABEL_59;
  }

  v24 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v25 = self->currentlyConnectedWifiSsid;
    *buf = 138477827;
    *&buf[4] = v25;
    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "Just disconnected from %{private}@", buf, 0xCu);
  }

  v26 = 0;
  if (!v11 || !v10)
  {
    goto LABEL_58;
  }

  if (![(NSArray *)v10 count])
  {
    v26 = 0;
    goto LABEL_58;
  }

  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  date = [MEMORY[0x277CBEAA8] date];
  *buf = 0u;
  v85 = 0u;
  [date timeIntervalSince1970];
  v67 = date;
  [(NetworkAnalyticsModel *)self _parseTimeIntoWeekdayAndSlotId:v29 withReferenceDate:date];
  v31 = *buf;
  v30 = *&buf[8];
  periodPerDay = self->periodPerDay;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v10;
  v33 = [(NSArray *)obj countByEnumeratingWithState:&v76 objects:v83 count:16];
  if (!v33)
  {
    v26 = 0;
    v36 = obj;
LABEL_55:

    goto LABEL_57;
  }

  v34 = v33;
  v65 = notificationCopy;
  v66 = v11;
  v63 = v30 + 96 * v31 + 4294967200;
  v64 = v10;
  v68 = periodPerDay * v30 / 0x60;
  v35 = *v77;
  v36 = obj;
LABEL_24:
  v37 = 0;
  while (1)
  {
    if (*v77 != v35)
    {
      objc_enumerationMutation(v36);
    }

    v38 = *(*(&v76 + 1) + 8 * v37);
    disconnectedFromNetworkId = [v38 disconnectedFromNetworkId];
    if (![disconnectedFromNetworkId isEqualToString:self->currentlyConnectedWifiSsid])
    {
      goto LABEL_33;
    }

    daysOfWeek = [v38 daysOfWeek];
    v41 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v31];
    if ([daysOfWeek containsObject:v41])
    {
      break;
    }

LABEL_33:
LABEL_34:
    if (v34 == ++v37)
    {
      v34 = [v36 countByEnumeratingWithState:&v76 objects:v83 count:16];
      if (v34)
      {
        goto LABEL_24;
      }

      v26 = 0;
      goto LABEL_53;
    }
  }

  periodId = [v38 periodId];

  v43 = periodId == v68;
  v36 = obj;
  if (!v43)
  {
    goto LABEL_34;
  }

  v26 = v38;

  if (v26)
  {
    obja = [v26 averageDisconnectionLength];
    v44 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v80 = 0;
      _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEBUG, "The event we have just been notified matches with the pattern that we learned previously.", v80, 2u);
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v45 = v66;
    v46 = [(NSArray *)v45 countByEnumeratingWithState:&v72 objects:v82 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v73;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v73 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v72 + 1) + 8 * i);
          offset = [v50 offset];
          v88.length = [v50 length];
          v87.location = v63;
          v87.length = obja;
          v88.location = offset;
          if (!NSIntersectionRange(v87, v88).length)
          {
            [v27 addObject:v50];
          }
        }

        v47 = [(NSArray *)v45 countByEnumeratingWithState:&v72 objects:v82 count:16];
      }

      while (v47);
    }

    v52 = [[LQMPredictionInternalRecord alloc] initWithOffset:v63 length:obja level:0 confidence:1.0];
    v53 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v80 = 138412290;
      v81 = v52;
      _os_log_impl(&dword_23255B000, v53, OS_LOG_TYPE_DEBUG, "Adding new live prediction: %@", v80, 0xCu);
    }

    [v27 addObject:v52];
    v54 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"offset" ascending:1];
    [MEMORY[0x277CBEA60] arrayWithObject:v54];
    v56 = v55 = v52;
    v57 = [v27 sortedArrayUsingDescriptors:v56];
    currentLQMPredictionsWifi = self->currentLQMPredictionsWifi;
    self->currentLQMPredictionsWifi = v57;

    date2 = [MEMORY[0x277CBEAA8] date];
    [(NetworkAnalyticsModel *)self setLastModelRunTime:date2];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"notificationNewModelGenerated" object:self userInfo:0];

    v36 = v55;
LABEL_53:
    v10 = v64;
    notificationCopy = v65;
    v11 = v66;
    goto LABEL_55;
  }

  v10 = v64;
  notificationCopy = v65;
  v11 = v66;
LABEL_57:

LABEL_58:
  v61 = self->currentlyConnectedWifiSsid;
  self->currentlyConnectedWifiSsid = 0;

LABEL_59:
LABEL_60:

  v62 = *MEMORY[0x277D85DE8];
}

- (void)_handleTimezoneChanged
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = MEMORY[0x277CBEBB0];
    v5 = v3;
    localTimeZone = [v4 localTimeZone];
    v25 = 138412290;
    v26 = localTimeZone;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Timezone changed to %@", &v25, 0xCu);
  }

  _getCurrentLocationTimezoneOffsetWithoutDST = [(NetworkAnalyticsModel *)self _getCurrentLocationTimezoneOffsetWithoutDST];
  v8 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x277CBEBB0];
    v10 = v8;
    localTimeZone2 = [v9 localTimeZone];
    timezoneOffsetFromUtcNoDaylight = self->timezoneOffsetFromUtcNoDaylight;
    v25 = 138412802;
    v26 = localTimeZone2;
    v27 = 2048;
    v28 = timezoneOffsetFromUtcNoDaylight;
    v29 = 2048;
    v30 = _getCurrentLocationTimezoneOffsetWithoutDST;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "Timezone changed to %@; model generated at %ld, now at %ld", &v25, 0x20u);
  }

  _isValidTimezoneToReturnPredictions = [(NetworkAnalyticsModel *)self _isValidTimezoneToReturnPredictions];
  currentLQMPredictionsCell = self->currentLQMPredictionsCell;
  if (_isValidTimezoneToReturnPredictions)
  {
    defaultLQMPredictionsCell = self->defaultLQMPredictionsCell;
    v16 = currentLQMPredictionsCell != defaultLQMPredictionsCell;
    if (currentLQMPredictionsCell != defaultLQMPredictionsCell)
    {
      objc_storeStrong(&self->currentLQMPredictionsCell, defaultLQMPredictionsCell);
      objc_storeStrong(&self->currentArrayOfDaysGroupCell, self->defaultArrayOfDaysGroupCell);
    }

    defaultLQMPredictionsWifi = self->defaultLQMPredictionsWifi;
    if (self->currentLQMPredictionsWifi != defaultLQMPredictionsWifi)
    {
      objc_storeStrong(&self->currentLQMPredictionsWifi, defaultLQMPredictionsWifi);
      v18 = self->defaultArrayOfDaysGroupWifi;
      currentArrayOfDaysGroupWifi = self->currentArrayOfDaysGroupWifi;
      self->currentArrayOfDaysGroupWifi = v18;
LABEL_14:

LABEL_16:
      date = [MEMORY[0x277CBEAA8] date];
      [(NetworkAnalyticsModel *)self setLastModelRunTime:date];

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"notificationNewModelGenerated" object:self userInfo:0];

      goto LABEL_17;
    }
  }

  else
  {
    v16 = currentLQMPredictionsCell != 0;
    if (currentLQMPredictionsCell)
    {
      self->currentLQMPredictionsCell = 0;

      currentArrayOfDaysGroupCell = self->currentArrayOfDaysGroupCell;
      self->currentArrayOfDaysGroupCell = 0;
    }

    currentLQMPredictionsWifi = self->currentLQMPredictionsWifi;
    if (currentLQMPredictionsWifi)
    {
      self->currentLQMPredictionsWifi = 0;

      currentArrayOfDaysGroupWifi = self->currentArrayOfDaysGroupWifi;
      self->currentArrayOfDaysGroupWifi = 0;
      goto LABEL_14;
    }
  }

  if (v16)
  {
    goto LABEL_16;
  }

LABEL_17:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_actUponSystemSettingsAirplaneChanged:(BOOL)changed wifiChanged:(BOOL)wifiChanged cellDataChanged:(BOOL)dataChanged
{
  changedCopy = changed;
  airplaneModeSwitchEnabled = [(SystemSettingsRelay *)self->systemSettingsRelay airplaneModeSwitchEnabled];
  wifiEnabled = [(SystemSettingsRelay *)self->systemSettingsRelay wifiEnabled];
  cellDataSwitchEnabled = [(SystemSettingsRelay *)self->systemSettingsRelay cellDataSwitchEnabled];
  _isValidTimezoneToReturnPredictions = [(NetworkAnalyticsModel *)self _isValidTimezoneToReturnPredictions];
  v13 = 0;
  if (changedCopy)
  {
    v14 = 0;
    if (airplaneModeSwitchEnabled)
    {
      currentLQMPredictionsWifi = self->currentLQMPredictionsWifi;
      v14 = currentLQMPredictionsWifi != 0;
      if (currentLQMPredictionsWifi)
      {
        self->currentLQMPredictionsWifi = 0;

        currentArrayOfDaysGroupWifi = self->currentArrayOfDaysGroupWifi;
        self->currentArrayOfDaysGroupWifi = 0;
      }

      currentLQMPredictionsCell = self->currentLQMPredictionsCell;
      if (currentLQMPredictionsCell)
      {
        self->currentLQMPredictionsCell = 0;

        currentArrayOfDaysGroupCell = self->currentArrayOfDaysGroupCell;
        self->currentArrayOfDaysGroupCell = 0;

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  if (!wifiEnabled && wifiChanged)
  {
    v19 = self->currentLQMPredictionsWifi;
    if (v19)
    {
      self->currentLQMPredictionsWifi = 0;

      v20 = self->currentArrayOfDaysGroupWifi;
      self->currentArrayOfDaysGroupWifi = 0;

      v14 = 1;
    }
  }

  if (!cellDataSwitchEnabled && dataChanged)
  {
    v21 = self->currentLQMPredictionsCell;
    if (v21)
    {
      self->currentLQMPredictionsCell = 0;

      v22 = self->currentArrayOfDaysGroupCell;
      self->currentArrayOfDaysGroupCell = 0;

      v13 = 1;
    }
  }

  if (airplaneModeSwitchEnabled || !_isValidTimezoneToReturnPredictions)
  {
    goto LABEL_22;
  }

  if (wifiEnabled && !self->currentLQMPredictionsWifi)
  {
    objc_storeStrong(&self->currentLQMPredictionsWifi, self->defaultLQMPredictionsWifi);
    objc_storeStrong(&self->currentArrayOfDaysGroupWifi, self->defaultArrayOfDaysGroupWifi);
    v14 = 1;
    if (cellDataSwitchEnabled)
    {
      goto LABEL_19;
    }

LABEL_22:
    if ((v13 | v14) != 1)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!cellDataSwitchEnabled)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (self->currentLQMPredictionsCell)
  {
    goto LABEL_22;
  }

  objc_storeStrong(&self->currentLQMPredictionsCell, self->defaultLQMPredictionsCell);
  objc_storeStrong(&self->currentArrayOfDaysGroupCell, self->defaultArrayOfDaysGroupCell);
LABEL_23:
  date = [MEMORY[0x277CBEAA8] date];
  [(NetworkAnalyticsModel *)self setLastModelRunTime:date];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"notificationNewModelGenerated" object:self userInfo:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  queue = self->queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__NetworkAnalyticsModel_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_27898A328;
  v14 = pathCopy;
  v15 = changeCopy;
  selfCopy = self;
  v11 = changeCopy;
  v12 = pathCopy;
  dispatch_async(queue, block);
}

uint64_t __72__NetworkAnalyticsModel_observeValueForKeyPath_ofObject_change_context___block_invoke(id *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if ([a1[4] isEqual:@"airplaneModeSwitchEnabled"])
  {
    v2 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v3 = a1[5];
      v4 = *MEMORY[0x277CCA300];
      v5 = v2;
      v6 = [v3 objectForKey:v4];
      v7 = [a1[5] objectForKey:*MEMORY[0x277CCA2F0]];
      v22 = 138412546;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Received a system setting changed: AirplaneMode switch state changing from %@ to %@ ", &v22, 0x16u);
    }

    [a1[6] _actUponSystemSettingsAirplaneChanged:1 wifiChanged:0 cellDataChanged:0];
  }

  if ([a1[4] isEqual:@"wifiEnabled"])
  {
    v8 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = a1[5];
      v10 = *MEMORY[0x277CCA300];
      v11 = v8;
      v12 = [v9 objectForKey:v10];
      v13 = [a1[5] objectForKey:*MEMORY[0x277CCA2F0]];
      v22 = 138412546;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Received a system setting changed: Wi-Fi from %@ to %@ ", &v22, 0x16u);
    }

    [a1[6] _actUponSystemSettingsAirplaneChanged:0 wifiChanged:1 cellDataChanged:0];
  }

  result = [a1[4] isEqual:@"cellDataSwitchEnabled"];
  if (result)
  {
    v15 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v16 = a1[5];
      v17 = *MEMORY[0x277CCA300];
      v18 = v15;
      v19 = [v16 objectForKey:v17];
      v20 = [a1[5] objectForKey:*MEMORY[0x277CCA2F0]];
      v22 = 138412546;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "Received a system setting changed: cellular data switch state changing from %@ to %@ ", &v22, 0x16u);
    }

    result = [a1[6] _actUponSystemSettingsAirplaneChanged:0 wifiChanged:0 cellDataChanged:1];
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_trainModelForInterfaceType:(int64_t)type sanitizedLQMTable:(id)table
{
  v89 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  v6 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = type;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Training new model for interface %lu", buf, 0xCu);
  }

  typeCopy = type;
  array = [MEMORY[0x277CBEB18] array];
  v8 = 1;
  do
  {
    v9 = objc_alloc(MEMORY[0x277CBEB98]);
    v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v8];
    v11 = [v9 initWithObjects:{v10, 0}];

    v12 = [(NetworkAnalyticsModel *)self _clusterEventsUsingKMeansForSetOfDays:v11 networkStateTable:tableCopy saveCentroidsTo:array];
    v8 = (v8 + 1);
  }

  while (v8 != 8);
  v13 = [(NetworkAnalyticsModel *)self _clusterEventsInWeekUsingKMeansOn:array];
  v62 = array;
  [array removeAllObjects];
  v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  *buf = 0u;
  v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v13;
  typeCopy4 = type;
  selfCopy4 = self;
  v61 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
  if (v61)
  {
    v59 = *v75;
    v16 = 1;
    v58 = tableCopy;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v75 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v74 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v19 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v20 = v19;
          allObjects = [v18 allObjects];
          v22 = [allObjects componentsJoinedByString:{@", "}];
          *v80 = 134218242;
          v81 = typeCopy4;
          v82 = 2112;
          v83 = v22;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "The following days are exhibiting similar pattern on interface %lu: {%@}", v80, 0x16u);

          selfCopy4 = self;
        }

        v23 = v62;
        [v62 removeAllObjects];
        v24 = [(NetworkAnalyticsModel *)selfCopy4 _clusterEventsUsingKMeansForSetOfDays:v18 networkStateTable:tableCopy saveCentroidsTo:v62];
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v25 = [v24 countByEnumeratingWithState:&v70 objects:v79 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v71;
          stateLabelAssigned = -1;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v71 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v30 = *(*(&v70 + 1) + 8 * j);
              if ([v30 stateLabelAssigned] > stateLabelAssigned)
              {
                stateLabelAssigned = [v30 stateLabelAssigned];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v70 objects:v79 count:16];
          }

          while (v26);
          v31 = stateLabelAssigned + 1;
          tableCopy = v58;
          v23 = v62;
          typeCopy4 = type;
          selfCopy4 = self;
        }

        else
        {
          v31 = 0;
        }

        [(NetworkAnalyticsModel *)selfCopy4 _generatePredictionForDays:v18 fromClusteredEvents:v24 clusterCentroids:v23 interfaceType:typeCopy4 basedOnWeekClusters:v31 savePredictionsTo:v60];
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v32 = v18;
        v33 = [v32 countByEnumeratingWithState:&v66 objects:v78 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v67;
          do
          {
            for (k = 0; k != v34; ++k)
            {
              if (*v67 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v66 + 1) + 8 * k);
              intValue = [v37 intValue];
              if ((intValue - 8) <= 0xFFFFFFF8)
              {
                [(NetworkAnalyticsModel *)intValue _trainModelForInterfaceType:a2 sanitizedLQMTable:self];
              }

              *&buf[8 * [v37 intValue] - 8] = v16;
            }

            v34 = [v32 countByEnumeratingWithState:&v66 objects:v78 count:16];
          }

          while (v34);
        }

        typeCopy4 = type;
        selfCopy4 = self;
        if (type == 1)
        {
          v39 = [(NetworkAnalyticsModel *)self _learnDisconnectionPatternForSetOfDays:v32 impairmentEvents:v24];
          [(NSArray *)v56 addObjectsFromArray:v39];
        }

        ++v16;

        objc_autoreleasePoolPop(context);
      }

      v61 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
    }

    while (v61);
  }

  for (m = 0; m != 56; m += 8)
  {
    v41 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:*&buf[m]];
    [v54 addObject:v41];
  }

  [v62 removeAllObjects];
  v42 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"offset" ascending:1];
  v43 = [MEMORY[0x277CBEA60] arrayWithObject:v42];
  if (typeCopy == 1)
  {
    v44 = v60;
    v49 = [v60 sortedArrayUsingDescriptors:v43];
    defaultLQMPredictionsWifi = selfCopy4->defaultLQMPredictionsWifi;
    selfCopy4->defaultLQMPredictionsWifi = v49;

    objc_storeStrong(&selfCopy4->currentLQMPredictionsWifi, selfCopy4->defaultLQMPredictionsWifi);
    objc_storeStrong(&selfCopy4->defaultArrayOfDaysGroupWifi, v54);
    objc_storeStrong(&selfCopy4->currentArrayOfDaysGroupWifi, selfCopy4->defaultArrayOfDaysGroupWifi);
    v51 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v80 = 138412290;
      v81 = v56;
      _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_DEBUG, "We have found the following interesting disconnection patterns: [%@]", v80, 0xCu);
    }

    v48 = 248;
    defaultArrayOfDaysGroupCell = v56;
    goto LABEL_47;
  }

  v44 = v60;
  if (typeCopy == 2)
  {
    v45 = [v60 sortedArrayUsingDescriptors:v43];
    defaultLQMPredictionsCell = selfCopy4->defaultLQMPredictionsCell;
    selfCopy4->defaultLQMPredictionsCell = v45;

    objc_storeStrong(&selfCopy4->currentLQMPredictionsCell, selfCopy4->defaultLQMPredictionsCell);
    objc_storeStrong(&selfCopy4->defaultArrayOfDaysGroupCell, v54);
    defaultArrayOfDaysGroupCell = selfCopy4->defaultArrayOfDaysGroupCell;
    v48 = 160;
LABEL_47:
    objc_storeStrong((&selfCopy4->super.isa + v48), defaultArrayOfDaysGroupCell);
    if ([v44 count])
    {
      [(NetworkAnalyticsModel *)selfCopy4 _savePredictionToJournalForInterface:typeCopy];
    }

    goto LABEL_49;
  }

  v52 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v80 = 134217984;
    v81 = typeCopy;
    _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_DEBUG, "Invalid interface type %ld", v80, 0xCu);
  }

LABEL_49:

  v53 = *MEMORY[0x277D85DE8];
}

- (void)_trainModelAt:(id)at
{
  v58 = *MEMORY[0x277D85DE8];
  atCopy = at;
  context = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = +[SystemProperties sharedInstance];
  basebandCapability = [v6 basebandCapability];

  if (basebandCapability)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v45 = 0;
    v8 = 0;
  }

  v9 = [(NetworkAnalyticsModel *)self _purgeAndReturnValidJournalWithPrefix:@"NetworkAnalyticsJournal" olderThan:0];
  [(NetworkAnalyticsModel *)self _purgeSavedPredictionsOlderThan:28];
  self->timezoneOffsetFromUtcNoDaylight = [(NetworkAnalyticsModel *)self _getCurrentLocationTimezoneOffsetWithoutDST];
  v10 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    journalName = self->journalName;
    *buf = 138412546;
    v55 = journalName;
    v56 = 2112;
    v57 = atCopy;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "Training model for journal: %@ at %@", buf, 0x16u);
  }

  _shouldCreateIpsFile = [(NetworkAnalyticsModel *)self _shouldCreateIpsFile];
  [(NetworkAnalyticsModel *)self _readJournalEntries];
  v48 = v47 = atCopy;
  calendar = self->_calendar;
  v13 = [(NSCalendar *)calendar components:28 fromDate:atCopy];
  v14 = [(NSCalendar *)calendar dateFromComponents:v13];

  v15 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v15 setDay:-28];
  v16 = [(NSCalendar *)self->_calendar dateByAddingComponents:v15 toDate:v14 options:0];
  [v14 timeIntervalSince1970];
  v18 = v17 + -1.0;
  v43 = v16;
  [v16 timeIntervalSince1970];
  v20 = v19;
  v21 = scoringLogHandle;
  v22 = v19;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v55 = v22;
    v56 = 2048;
    v57 = v18;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "Date range of interest are between %lld to %lld", buf, 0x16u);
  }

  [(NetworkAnalyticsModel *)self setLastModelRunTime:v47];
  [(NetworkAnalyticsModel *)self _processJournalData:v48 startFrom:v20 endAt:v18 rawWifiStateSet:v5 rawCellStateSet:v8];
  v23 = v46;
  self->numberOfDaysWithWifiEvents = [(NetworkAnalyticsModel *)self _sanitizeInternalLQMStateEventFrom:v5 toTable:v46];
  v24 = v45;
  self->numberOfDaysWithCellEvents = [(NetworkAnalyticsModel *)self _sanitizeInternalLQMStateEventFrom:v8 toTable:v45];
  [v5 removeAllObjects];
  [v8 removeAllObjects];
  v25 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v26 = v25;
    lastModelRunTime = [(NetworkAnalyticsModel *)self lastModelRunTime];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v29 = [lastModelRunTime descriptionWithLocale:currentLocale];
    *buf = 138412290;
    v55 = v29;
    _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "Evaluate prediction error against prediction modeled at %@", buf, 0xCu);

    v23 = v46;
    v24 = v45;
  }

  [(NetworkAnalyticsModel *)self _evaluateErrorOfLQMPredictions:self->defaultLQMPredictionsWifi againstObservedLQMTable:v23];
  self->wifiPredictionError = v30;
  [(NetworkAnalyticsModel *)self _evaluateErrorOfLQMPredictions:self->defaultLQMPredictionsCell againstObservedLQMTable:v24];
  self->cellPredictionError = v31;
  if (_loadCorePrediction())
  {
    [(NetworkAnalyticsModel *)self _trainModelForInterfaceType:1 sanitizedLQMTable:v23];
    objc_storeStrong(&self->currentLQMPredictionsWifi, self->defaultLQMPredictionsWifi);
    [(NetworkAnalyticsModel *)self _trainModelForInterfaceType:2 sanitizedLQMTable:v24];
    objc_storeStrong(&self->currentLQMPredictionsCell, self->defaultLQMPredictionsCell);
    if (gCorePredictionDyLibHandle)
    {
      dlclose(gCorePredictionDyLibHandle);
      gCorePredictionDyLibHandle = 0;
    }

    if (_shouldCreateIpsFile)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v32 = v48;
      v33 = [v32 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v50;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v50 != v35)
            {
              objc_enumerationMutation(v32);
            }

            [(NetworkAnalyticsModel *)self _removePrimarykeyAndLocationInJournalRecordInfo:*(*(&v49 + 1) + 8 * i)];
          }

          v34 = [v32 countByEnumeratingWithState:&v49 objects:v53 count:16];
        }

        while (v34);
      }

      v37 = objc_alloc_init(IpsFileUtility);
      [(IpsFileUtility *)v37 createIpsFileWithBugType:@"155" contentType:@"application/octet-stream" additionalIpsHeaders:0 ipsContent:v32 inDirectory:@"/var/networkd/Library/Logs/CrashReporter" fileNamePrefix:@"SymptomJournal"];

      v24 = v45;
      v23 = v46;
    }

    if (!self->_isHelper && ([(NSArray *)self->defaultLQMPredictionsWifi count]|| [(NSArray *)self->defaultLQMPredictionsCell count]))
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"notificationNewModelGenerated" object:self userInfo:0];
    }

    autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    v40 = self->_calendar;
    self->_calendar = autoupdatingCurrentCalendar;
  }

  objc_autoreleasePoolPop(context);
  v41 = *MEMORY[0x277D85DE8];
}

- (void)trainModel
{
  v14 = *MEMORY[0x277D85DE8];
  if (([(AnalyticsWorkspace *)self->workspace persistent]& 1) != 0)
  {
    if ([(NetworkAnalyticsModel *)self _isValidTimezoneToTrain])
    {
      debugTrainingTime = [(NetworkAnalyticsModel *)self debugTrainingTime];

      v4 = scoringLogHandle;
      v5 = os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG);
      if (debugTrainingTime)
      {
        if (v5)
        {
          v6 = v4;
          debugTrainingTime2 = [(NetworkAnalyticsModel *)self debugTrainingTime];
          v12 = 138412290;
          v13 = debugTrainingTime2;
          _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Using specific time at %@ to train model", &v12, 0xCu);
        }

        debugTrainingTime3 = [(NetworkAnalyticsModel *)self debugTrainingTime];
      }

      else
      {
        if (v5)
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "Using current time to train model", &v12, 2u);
        }

        debugTrainingTime3 = [MEMORY[0x277CBEAA8] date];
      }

      v10 = debugTrainingTime3;
      [(NetworkAnalyticsModel *)self _trainModelAt:debugTrainingTime3];
    }
  }

  else
  {
    v9 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "Workspace is non-persistent, no data for training.", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)processProxyTrain
{
  [(NetworkAnalyticsModel *)self _loadLatestPredictionFromJournalWithInterfaceType:1];
  [(NetworkAnalyticsModel *)self _loadLatestPredictionFromJournalWithInterfaceType:2];
  if ([(NSArray *)self->defaultLQMPredictionsWifi count]|| [(NSArray *)self->defaultLQMPredictionsCell count])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"notificationNewModelGenerated" object:self userInfo:0];
  }
}

- ($8CE0ECD3AB9986DA167C077002E61EF1)_calculateStatisticsFromNetworkStateTable:(SEL)table usingPredicate:(id)predicate
{
  v54 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v8 = a5;
  if (v8)
  {
    v9 = [predicateCopy filteredArrayUsingPredicate:v8];
  }

  else
  {
    v9 = predicateCopy;
  }

  retstr->var12 = 0.0;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = v9;
  v38 = [v10 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v38)
  {
    v32 = retstr;
    v33 = v8;
    v34 = predicateCopy;
    v11 = 0;
    v12 = 0;
    stateLength5 = 0;
    stateSlotId5 = 0;
    v47 = 0;
    v48 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    obj = v10;
    v37 = *v50;
    stateLength4 = 96;
    stateSlotId4 = 96;
    v17 = 96;
    do
    {
      v35 = v16;
      for (i = 0; i != v38; ++i)
      {
        if (*v50 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v49 + 1) + 8 * i);
        stateLength = [v19 stateLength];
        stateLength2 = [v19 stateLength];
        stateLength3 = [v19 stateLength];
        if ([v19 stateLength] < stateLength4)
        {
          stateLength4 = [v19 stateLength];
        }

        v45 = v13;
        v46 = v14;
        if ([v19 stateLength] > stateLength5)
        {
          stateLength5 = [v19 stateLength];
        }

        stateSlotId = [v19 stateSlotId];
        stateSlotId2 = [v19 stateSlotId];
        stateSlotId3 = [v19 stateSlotId];
        if ([v19 stateSlotId] < stateSlotId4)
        {
          stateSlotId4 = [v19 stateSlotId];
        }

        if ([v19 stateSlotId] > stateSlotId5)
        {
          stateSlotId5 = [v19 stateSlotId];
        }

        v11 += stateLength;
        v12 += stateLength3 * stateLength2;
        v47 += stateSlotId;
        v48 += stateSlotId3 * stateSlotId2;
        stateSlotId6 = [v19 stateSlotId];
        stateLength6 = [v19 stateLength];
        v26 = stateSlotId6 + stateLength6 - 1;
        v13 = v26 + v45;
        v14 = v46 + v26 * v26;
        if (v26 < v17)
        {
          v17 = stateSlotId6 + stateLength6 - 1;
        }

        if (v26 > v15)
        {
          v15 = stateSlotId6 + stateLength6 - 1;
        }
      }

      v16 = v35 + v38;
      v38 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v38);
    v10 = obj;

    v8 = v33;
    predicateCopy = v34;
    if (v16)
    {
      v32->var0 = v16;
      v32->var1 = stateLength4;
      v32->var2 = stateLength5;
      v27 = v11 / v16;
      v32->var3 = v27;
      v32->var4 = sqrt(v12 / v16 - v27 * v27);
      v32->var5 = stateSlotId4;
      v32->var6 = stateSlotId5;
      v28 = v47 / v16;
      v32->var7 = v28;
      v32->var8 = sqrt(v48 / v16 - v28 * v28);
      v32->var9 = v17;
      v32->var10 = v15;
      v29 = v13 / v16;
      v32->var11 = v29;
      v32->var12 = sqrt(v14 / v16 - v29 * v29);
    }
  }

  else
  {
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

- (double)_evaluateErrorOfLQMPredictions:(id)predictions againstObservedLQMTable:(id)table
{
  __b[97] = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  tableCopy = table;
  if (![tableCopy count])
  {
    v21 = scoringLogHandle;
    v22 = 1.0;
    if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_75;
    }

    LOWORD(__b[0]) = 0;
    v23 = "No observed data to evaluate against";
LABEL_21:
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, v23, __b, 2u);
    goto LABEL_75;
  }

  if (![predictionsCopy count])
  {
    v21 = scoringLogHandle;
    v22 = 1.0;
    if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_75;
    }

    LOWORD(__b[0]) = 0;
    v23 = "No predictions to evaluate";
    goto LABEL_21;
  }

  memset_pattern16(__b, &unk_232816F70, 0x300uLL);
  memset_pattern16(v97, &unk_232816F70, 0x300uLL);
  memset_pattern16(v96, &unk_232816F60, 0x300uLL);
  memset_pattern16(v95, &unk_232816F70, 0x300uLL);
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v69 = tableCopy;
  v8 = tableCopy;
  v9 = [v8 countByEnumeratingWithState:&v76 objects:v94 count:16];
  v70 = predictionsCopy;
  if (v9)
  {
    v10 = v9;
    stateDayOfWeek = 0;
    v12 = *v77;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v77 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v76 + 1) + 8 * i);
        if (![v14 stateAge])
        {
          stateDayOfWeek = [v14 stateDayOfWeek];
          v15 = scoringLogHandle;
          if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v16 = v15;
            v17 = -[NetworkAnalyticsModel _predictNetworkQualityBasedOnAverageNWInstantQuality:](self, "_predictNetworkQualityBasedOnAverageNWInstantQuality:", [v14 stateType]);
            *buf = 138412546;
            *v81 = v14;
            *&v81[8] = 2048;
            *&v81[10] = v17;
            _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "%@ => %ld", buf, 0x16u);
          }

          if ([v14 stateLength] >= 1)
          {
            v18 = 0;
            do
            {
              v19 = -[NetworkAnalyticsModel _predictNetworkQualityBasedOnAverageNWInstantQuality:](self, "_predictNetworkQualityBasedOnAverageNWInstantQuality:", [v14 stateType]);
              __b[[v14 stateSlotId] + v18++] = v19;
            }

            while ([v14 stateLength] > v18);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v76 objects:v94 count:16];
    }

    while (v10);
    v20 = 96 * stateDayOfWeek - 96;
    predictionsCopy = v70;
  }

  else
  {
    v20 = -96;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = predictionsCopy;
  v24 = [obj countByEnumeratingWithState:&v72 objects:v93 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v73;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v73 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v72 + 1) + 8 * j);
        offset = [v28 offset];
        v99.length = [v28 length];
        v99.location = offset;
        v100.location = v20;
        v100.length = 96;
        v30 = NSIntersectionRange(v99, v100);
        if (v30.length)
        {
          length = v30.length;
          v32 = &v95[v30.location - v20];
          v33 = &v96[v30.location - v20];
          v34 = &v97[v30.location - v20];
          do
          {
            *v34 = [v28 level];
            [v28 confidence];
            *v33 = v35;
            [v28 confidence];
            if (v36 > 0.5)
            {
              *v32 = [v28 level];
            }

            ++v32;
            ++v33;
            ++v34;
            --length;
          }

          while (length);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v72 objects:v93 count:16];
    }

    while (v25);
  }

  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  v37 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEBUG, "i, observed, predicted, confidence, adjusted predicted", buf, 2u);
  }

  for (k = 0; k != 96; ++k)
  {
    v39 = __b[k];
    if (v39)
    {
      if (v39 != 100)
      {
        if (v39 == 50)
        {
          v40 = 1;
          goto LABEL_46;
        }

        v41 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          *v81 = v39;
          _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_DEBUG, "Unrecognized observed state! %ld", buf, 0xCu);
        }
      }

      v40 = 0;
    }

    else
    {
      v40 = 2;
    }

LABEL_46:
    v42 = v95[k];
    if (v42)
    {
      if (v42 != 100)
      {
        if (v42 == 50)
        {
          v43 = 1;
          goto LABEL_54;
        }

        v44 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          *v81 = v39;
          _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEBUG, "Unrecognized predicted state! %ld", buf, 0xCu);
        }
      }

      v43 = 0;
    }

    else
    {
      v43 = 2;
    }

LABEL_54:
    v45 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v46 = v97[k];
      v47 = v96[k];
      *buf = 67110656;
      *v81 = k;
      *&v81[4] = 2048;
      *&v81[6] = v39;
      *&v81[14] = 2048;
      *&v81[16] = v46;
      v82 = 2048;
      v83 = v47;
      v84 = 2048;
      v85 = v42;
      v86 = 1024;
      v87 = v40;
      v88 = 1024;
      v89 = v43;
      _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEBUG, "%d, %ld, %ld, %.4f, %ld => (%d, %d)", buf, 0x3Cu);
    }

    ++*(&v90 + 3 * v40 + v43);
  }

  v48 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEBUG, "Confusion matrix", buf, 2u);
  }

  v49 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    *v81 = v90;
    *&v81[4] = 1024;
    *&v81[6] = DWORD1(v90);
    *&v81[10] = 1024;
    *&v81[12] = DWORD2(v90);
    _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_DEBUG, "%d %d %d", buf, 0x14u);
  }

  v50 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    *v81 = HIDWORD(v90);
    *&v81[4] = 1024;
    *&v81[6] = v91;
    *&v81[10] = 1024;
    *&v81[12] = DWORD1(v91);
    _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_DEBUG, "%d %d %d", buf, 0x14u);
  }

  v51 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v52 = DWORD2(v91);
    v53 = HIDWORD(v91);
    v54 = v92;
    *buf = 67109632;
    *v81 = DWORD2(v91);
    *&v81[4] = 1024;
    *&v81[6] = HIDWORD(v91);
    *&v81[10] = 1024;
    *&v81[12] = v92;
    _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_DEBUG, "%d %d %d", buf, 0x14u);
  }

  else
  {
    v54 = v92;
    v53 = HIDWORD(v91);
    v52 = DWORD2(v91);
  }

  v55 = DWORD1(v90);
  v56 = v90;
  v57 = DWORD1(v91) + v91 + v53 + v54;
  v58 = DWORD2(v90);
  v59 = HIDWORD(v90);
  v60 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *v81 = v56;
    _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_DEBUG, "true negative = %.4f", buf, 0xCu);
  }

  v61 = v58 + v55;
  v62 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *v81 = v57;
    _os_log_impl(&dword_23255B000, v62, OS_LOG_TYPE_DEBUG, "true positive = %.4f", buf, 0xCu);
  }

  v63 = v52 + v59;
  v64 = v61;
  v65 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *v81 = v61;
    _os_log_impl(&dword_23255B000, v65, OS_LOG_TYPE_DEBUG, "false positive (lost opportunity to use background network) = %.4f", buf, 0xCu);
  }

  v66 = scoringLogHandle;
  tableCopy = v69;
  predictionsCopy = v70;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *v81 = v63;
    _os_log_impl(&dword_23255B000, v66, OS_LOG_TYPE_DEBUG, "false negative (waste bandwidth if background network was used) = %.4f", buf, 0xCu);
  }

  v22 = (v64 + v63) / (v56 + v57 + v64 + v63);
LABEL_75:

  v67 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)_fetchPredictionsForInterfaceType:(int64_t)type isAny:(BOOL)any isBuiltin:(BOOL)builtin scopedToLOI:(int64_t)i hasCustomSignature:(id)signature error:(id *)error
{
  anyCopy = any;
  v37 = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA5B8];
  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:{0, i, signature}];
  if (!anyCopy)
  {
    goto LABEL_25;
  }

  if (type == 2)
  {
    if ([(NSArray *)self->currentLQMPredictionsCell count])
    {
      v18 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v19 = v18;
        lastModelRunTime = [(NetworkAnalyticsModel *)self lastModelRunTime];
        v35 = 138412290;
        typeCopy = lastModelRunTime;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Returning predictions for Cellular from memory (modeled at %@)", &v35, 0xCu);
      }

      currentLQMPredictionsCell = self->currentLQMPredictionsCell;
      goto LABEL_12;
    }

    v27 = cellPredictionsLoaded;
    v25 = scoringLogHandle;
    v28 = os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG);
    if (v27 != 1)
    {
      if (!v28)
      {
LABEL_35:
        v23 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:v12 code:35 userInfo:0];
        goto LABEL_36;
      }

      LOWORD(v35) = 0;
      v33 = "Cellular prediction is not ready, try again later.";
LABEL_34:
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEBUG, v33, &v35, 2u);
      goto LABEL_35;
    }

    if (v28)
    {
      LOWORD(v35) = 0;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEBUG, "No prediction for Cellular", &v35, 2u);
    }

LABEL_25:
    v21 = 0;
    if (!error)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (type == 1)
  {
    if ([(NSArray *)self->currentLQMPredictionsWifi count])
    {
      v14 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v15 = v14;
        lastModelRunTime2 = [(NetworkAnalyticsModel *)self lastModelRunTime];
        v35 = 138412290;
        typeCopy = lastModelRunTime2;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "Returning predictions for Wi-Fi from memory (modeled at %@)", &v35, 0xCu);
      }

      currentLQMPredictionsCell = self->currentLQMPredictionsWifi;
LABEL_12:
      v21 = currentLQMPredictionsCell;

      goto LABEL_13;
    }

    v24 = wifiPredictionsLoaded;
    v25 = scoringLogHandle;
    v26 = os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG);
    if (v24 == 1)
    {
      if (v26)
      {
        LOWORD(v35) = 0;
        _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEBUG, "No prediction for Wi-Fi", &v35, 2u);
      }

      v21 = 0;
LABEL_13:
      v13 = 0;
      if (!error)
      {
        goto LABEL_27;
      }

LABEL_26:
      v29 = v13;
      *error = v13;
      goto LABEL_27;
    }

    if (!v26)
    {
      goto LABEL_35;
    }

    LOWORD(v35) = 0;
    v33 = "Wi-Fi prediction is not ready, try again later.";
    goto LABEL_34;
  }

  v22 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v35 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "Invalid interface type %ld", &v35, 0xCu);
  }

  v23 = [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:22 userInfo:0];
LABEL_36:
  v34 = v23;

  v21 = 0;
  v13 = v34;
  if (error)
  {
    goto LABEL_26;
  }

LABEL_27:
  v30 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v21];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)_getDaysWithSimilarPatternForInterfaceType:(int64_t)type
{
  v11 = *MEMORY[0x277D85DE8];
  if (type == 2)
  {
    currentArrayOfDaysGroupCell = self->currentArrayOfDaysGroupCell;
    goto LABEL_5;
  }

  if (type == 1)
  {
    currentArrayOfDaysGroupCell = self->currentArrayOfDaysGroupWifi;
LABEL_5:
    v5 = currentArrayOfDaysGroupCell;
    goto LABEL_9;
  }

  v6 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Invalid interface type %ld", &v9, 0xCu);
  }

  v5 = 0;
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (double)_fetchPredictionErrorForInterfaceType:(int64_t)type isAny:(BOOL)any isBuiltin:(BOOL)builtin scopedToLOI:(int64_t)i hasCustomSignature:(id)signature
{
  v16 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  if (type == 2)
  {
    cellPredictionError = self->cellPredictionError;
  }

  else if (type == 1)
  {
    cellPredictionError = self->wifiPredictionError;
  }

  else
  {
    v11 = scoringLogHandle;
    cellPredictionError = 1.0;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Invalid interface type %ld", &v14, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return cellPredictionError;
}

- (double)_fetchTrainingProgressForInterfaceType:(int64_t)type isAny:(BOOL)any isBuiltin:(BOOL)builtin scopedToLOI:(int64_t)i hasCustomSignature:(id)signature
{
  v17 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  if (type == 2)
  {
    numberOfDaysWithCellEvents = self->numberOfDaysWithCellEvents;
    goto LABEL_5;
  }

  if (type == 1)
  {
    numberOfDaysWithCellEvents = self->numberOfDaysWithWifiEvents;
LABEL_5:
    v11 = numberOfDaysWithCellEvents / 28.0;
    goto LABEL_6;
  }

  v14 = scoringLogHandle;
  v11 = 0.0;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "Invalid interface type %ld", &v15, 0xCu);
  }

LABEL_6:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (NSDate)lastModelRunTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_lastModelRunTime;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setLastModelRunTime:(id)time
{
  timeCopy = time;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_lastModelRunTime != timeCopy)
  {
    objc_storeStrong(&selfCopy->_lastModelRunTime, time);
  }

  objc_sync_exit(selfCopy);
}

- (NSDate)debugTrainingTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_debugTrainingTime;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setDebugTrainingTime:(id)time
{
  timeCopy = time;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_debugTrainingTime != timeCopy)
  {
    objc_storeStrong(&selfCopy->_debugTrainingTime, time);
  }

  objc_sync_exit(selfCopy);
}

- (void)_processLowInternetModeRecord:(id)record addTo:(id)to
{
  recordCopy = record;
  toCopy = to;
  v7 = toCopy;
  if (recordCopy)
  {
    [toCopy addObject:recordCopy];
  }

  else
  {
    v8 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "low internet mode record is nil", v9, 2u);
    }
  }
}

- (void)_finishedReadingLowInternetModeRecords:(id)records
{
  v88 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = lowInternetModeScoresDL;
  lowInternetModeScoresDL = v7;

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = lowInternetModeScoresUL;
  lowInternetModeScoresUL = v9;

  v11 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = v11;
    *buf = 134217984;
    *&buf[4] = [recordsCopy count];
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "Finished reading all LIM records, found: %lu", buf, 0xCu);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = recordsCopy;
  v13 = v70;
  v68 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
  if (v68)
  {
    v67 = *v77;
    *&v14 = 138412290;
    v65 = v14;
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v77 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v76 + 1) + 8 * i);
        v85 = 0u;
        v86 = 0u;
        v84 = 0u;
        memset(buf, 0, sizeof(buf));
        [v16 getBytes:buf length:{112, v65}];
        v17 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v81 = 134217984;
          v82 = *&buf[40];
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "limDLMaxBWBps = %llu", v81, 0xCu);
        }

        v18 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v81 = 134217984;
          v82 = *&buf[48];
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "limULMaxBWBps = %llu", v81, 0xCu);
        }

        v19 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v81 = 134217984;
          v82 = *&buf[56];
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "limPacketLossRatePercent = %llu", v81, 0xCu);
        }

        v20 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v81 = 134217984;
          v82 = v84;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "limPacketOOORatePercent = %llu", v81, 0xCu);
        }

        v21 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v81 = 134217984;
          v82 = *(&v84 + 1);
          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "limRTTVarMilliseconds = %llu", v81, 0xCu);
        }

        v22 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v81 = 134217984;
          v82 = *(&v85 + 1);
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "limRTTAvgMilliseconds = %llu", v81, 0xCu);
        }

        v23 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v81 = 134217984;
          v82 = v86;
          _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEBUG, "limConnTimeoutRatePercent = %llu", v81, 0xCu);
        }

        v24 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v81 = 67109120;
          LODWORD(v82) = BYTE8(v86);
          _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "limDLDetected = %u", v81, 8u);
        }

        v25 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v81 = 67109120;
          LODWORD(v82) = BYTE9(v86);
          _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEBUG, "limULDetected = %u", v81, 8u);
        }

        v26 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v81 = 67109120;
          LODWORD(v82) = BYTE10(v86);
          _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "limInterfaceType = %u", v81, 8u);
        }

        v27 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&buf[16] length:24];
        v28 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
        {
          *v81 = v65;
          v82 = v27;
          _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_INFO, "limSignature in, training stage: %@", v81, 0xCu);
        }

        v29 = [v5 objectForKeyedSubscript:v27];
        v30 = v29;
        if (v29)
        {
          v31 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v29, "integerValue") + 1}];
          [v5 setObject:v31 forKeyedSubscript:v27];
        }

        else
        {
          [v5 setObject:&unk_2847EFBC0 forKeyedSubscript:v27];
        }

        if (BYTE8(v86))
        {
          v32 = [v6 objectForKeyedSubscript:v27];

          if (v32)
          {
            v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v32, "integerValue") + 1}];
            [v6 setObject:v33 forKeyedSubscript:v27];

            v30 = v32;
          }

          else
          {
            [v6 setObject:&unk_2847EFBC0 forKeyedSubscript:v27];
            v30 = 0;
          }
        }

        v13 = v70;
        if (BYTE9(v86))
        {
          v34 = [v70 objectForKeyedSubscript:v27];

          if (v34)
          {
            v35 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v34, "integerValue") + 1}];
            [v70 setObject:v35 forKeyedSubscript:v27];

            v30 = v34;
          }

          else
          {
            [v70 setObject:&unk_2847EFBC0 forKeyedSubscript:v27];
            v30 = 0;
          }
        }
      }

      v68 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
    }

    while (v68);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v36 = v5;
  v71 = [v36 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (v71)
  {
    v69 = *v73;
    do
    {
      for (j = 0; j != v71; ++j)
      {
        if (*v73 != v69)
        {
          objc_enumerationMutation(v36);
        }

        v38 = *(*(&v72 + 1) + 8 * j);
        v39 = [v36 objectForKeyedSubscript:v38];
        integerValue = [v39 integerValue];

        v41 = [v6 objectForKeyedSubscript:v38];

        integerValue3 = 0.0;
        integerValue2 = 0.0;
        if (v41)
        {
          v44 = [v6 objectForKeyedSubscript:v38];
          integerValue2 = [v44 integerValue];
        }

        v13 = v70;
        v45 = [v70 objectForKeyedSubscript:v38];

        if (v45)
        {
          v46 = [v70 objectForKeyedSubscript:v38];
          integerValue3 = [v46 integerValue];
        }

        v47 = integerValue;
        if (integerValue >= self->limMinSamples && self->limRatio <= (integerValue2 / v47))
        {
          [lowInternetModeScoresDL addObject:v38];
          v53 = scoringLogHandle;
          if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
          {
            limMinSamples = self->limMinSamples;
            limRatio = self->limRatio;
            *buf = 138413314;
            *&buf[4] = v38;
            *&buf[12] = 2048;
            *&buf[14] = integerValue2;
            *&buf[22] = 2048;
            *&buf[24] = v47;
            *&buf[32] = 2048;
            *&buf[34] = limMinSamples;
            *&buf[42] = 2048;
            *&buf[44] = limRatio;
            v51 = v53;
            v52 = "LIM state for DL set: %@ (%f/%f), given thresholds (%llu, %f)";
            goto LABEL_58;
          }
        }

        else
        {
          v48 = scoringLogHandle;
          if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v49 = self->limMinSamples;
            v50 = self->limRatio;
            *buf = 138413314;
            *&buf[4] = v38;
            *&buf[12] = 2048;
            *&buf[14] = integerValue2;
            *&buf[22] = 2048;
            *&buf[24] = v47;
            *&buf[32] = 2048;
            *&buf[34] = v49;
            *&buf[42] = 2048;
            *&buf[44] = v50;
            v51 = v48;
            v52 = "LIM state for DL not set: %@ (%f/%f), not passing thresholds (%llu, %f)";
LABEL_58:
            _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_DEBUG, v52, buf, 0x34u);
          }
        }

        if (v47 >= self->limMinSamples && self->limRatio <= (integerValue3 / v47))
        {
          [lowInternetModeScoresUL addObject:v38];
          v61 = scoringLogHandle;
          if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
          {
            continue;
          }

          v62 = self->limMinSamples;
          v63 = self->limRatio;
          *buf = 138413314;
          *&buf[4] = v38;
          *&buf[12] = 2048;
          *&buf[14] = integerValue3;
          *&buf[22] = 2048;
          *&buf[24] = v47;
          *&buf[32] = 2048;
          *&buf[34] = v62;
          *&buf[42] = 2048;
          *&buf[44] = v63;
          v59 = v61;
          v60 = "LIM state for UL set: %@ (%f/%f), given thresholds (%llu, %f)";
        }

        else
        {
          v56 = scoringLogHandle;
          if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
          {
            continue;
          }

          v57 = self->limMinSamples;
          v58 = self->limRatio;
          *buf = 138413314;
          *&buf[4] = v38;
          *&buf[12] = 2048;
          *&buf[14] = integerValue3;
          *&buf[22] = 2048;
          *&buf[24] = v47;
          *&buf[32] = 2048;
          *&buf[34] = v57;
          *&buf[42] = 2048;
          *&buf[44] = v58;
          v59 = v56;
          v60 = "LIM state for UL not set: %@ (%f/%f), not passing thresholds (%llu, %f)";
        }

        _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_DEBUG, v60, buf, 0x34u);
      }

      v71 = [v36 countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v71);
  }

  v64 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)modelResolution
{
  result = sharedInstance_7;
  if (sharedInstance_7)
  {
    return [sharedInstance_7 _modelResolution];
  }

  return result;
}

+ (id)modelGeneratedAt
{
  lastModelRunTime = sharedInstance_7;
  if (sharedInstance_7)
  {
    lastModelRunTime = [sharedInstance_7 lastModelRunTime];
    v2 = vars8;
  }

  return lastModelRunTime;
}

+ (id)getDaysWithSimilarPatternForInterfaceType:(int64_t)type
{
  v4 = sharedInstance_7;
  if (sharedInstance_7)
  {
    v4 = [sharedInstance_7 _getDaysWithSimilarPatternForInterfaceType:type];
    v3 = vars8;
  }

  return v4;
}

+ (void)purgeAllJournalRecords
{
  if (sharedInstance_7)
  {
    [sharedInstance_7 _purgeAllJournalRecords];
  }
}

+ (void)resetModel
{
  if (sharedInstance_7)
  {
    [sharedInstance_7 _resetModel];
  }
}

void __75__NetworkAnalyticsModel__loadLatestPredictionFromJournalWithInterfaceType___block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  objc_begin_catch(a1);
  v4 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a3 + 32);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "Exception caught while creating JSONObjectWithData for PredictionHeaderName %@", &v7, 0xCu);
  }

  objc_end_catch();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_clusterUsingKMeansOn:(uint64_t)a1 into:(char *)a2 iterations:saveCentroidsTo:.cold.1(uint64_t a1, char **a2)
{
  v4 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    *buf = 134218240;
    v6 = a1;
    v7 = 2048;
    v8 = 8;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_FAULT, "strict_calloc(%zu, %zu) failed", buf, 0x16u);
  }

  *a2 = 0;
  asprintf(a2, "strict_calloc(%zu, %zu) failed", a1, 8uLL);
  qword_27DDA0B50 = *a2;
  __break(1u);
}

- (void)_clusterUsingKMeansOn:(char *)a1 into:iterations:saveCentroidsTo:.cold.2(char **a1)
{
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_1(&dword_23255B000, v2, v3, "strict_calloc count * size would overflow", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
  asprintf(a1, "strict_calloc count * size would overflow");
  qword_27DDA0B50 = *a1;
  __break(1u);
}

- (void)_clusterUsingKMeansOn:(char *)a1 into:iterations:saveCentroidsTo:.cold.3(char **a1)
{
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_1(&dword_23255B000, v2, v3, "strict_calloc called with count 0", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
  asprintf(a1, "strict_calloc called with count 0");
  qword_27DDA0B50 = *a1;
  __break(1u);
}

- (void)_clusterUsingKMeansOn:(char *)a1 into:iterations:saveCentroidsTo:.cold.4(char **a1)
{
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    *buf = 134218240;
    v4 = 3;
    v5 = 2048;
    v6 = 8;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_FAULT, "strict_calloc(%zu, %zu) failed", buf, 0x16u);
  }

  *a1 = 0;
  asprintf(a1, "strict_calloc(%zu, %zu) failed", 3uLL, 8uLL);
  qword_27DDA0B50 = *a1;
  __break(1u);
}

- (void)_trainModelForInterfaceType:(uint64_t)a3 sanitizedLQMTable:.cold.1(int a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 - 1);
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:a3 file:@"NetworkAnalyticsModel.m" lineNumber:4003 description:{@"Invalid index: %d", v5}];
}

@end