@interface BRCPeriodicSyncInvestigation
- (BOOL)_shouldCompleteInvestigation;
- (BRCPeriodicSyncInvestigation)initWithZoneAppRetriver:(id)a3 containerScheduler:(id)a4 tapToRadarManager:(id)a5 analyticsReporter:(id)a6;
- (void)addEditingDevice:(id)a3;
- (void)addZoneWithNoRealChanges:(id)a3;
- (void)close;
- (void)completeInvestigation;
- (void)completeInvestigationIfNecessary;
- (void)completeInvestigationIfNecessaryWithOldSyncState:(unsigned int)a3 newSyncState:(unsigned int)a4;
- (void)setZonesOutOfSync:(unsigned __int16)a3 zonesType:(unsigned __int8)a4;
- (void)startInvestigation;
@end

@implementation BRCPeriodicSyncInvestigation

- (BRCPeriodicSyncInvestigation)initWithZoneAppRetriver:(id)a3 containerScheduler:(id)a4 tapToRadarManager:(id)a5 analyticsReporter:(id)a6
{
  v20 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [BRCUserDefaults defaultsForMangledID:0];
  v15 = [v14 shouldPerformPeriodicSyncInvestigation];

  if (v15)
  {
    v21.receiver = self;
    v21.super_class = BRCPeriodicSyncInvestigation;
    v16 = [(BRCPeriodicSyncInvestigation *)&v21 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_zoneAppRetriever, a3);
      objc_storeStrong(&v17->_containerScheduler, a4);
      objc_storeStrong(&v17->_tapToRadarManager, a5);
      objc_storeStrong(&v17->_analyticsReporter, a6);
      v17->_investigationStarted = 0;
    }

    self = v17;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)startInvestigation
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] starting periodic sync investigation%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)addEditingDevice:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = self;
    objc_sync_enter(v5);
    if (v5->_investigationStarted)
    {
      editingDevices = v5->_editingDevices;
      if (!editingDevices)
      {
        v7 = objc_opt_new();
        v8 = v5->_editingDevices;
        v5->_editingDevices = v7;

        editingDevices = v5->_editingDevices;
      }

      [(NSMutableSet *)editingDevices addObject:v9];
    }

    objc_sync_exit(v5);

    v4 = v9;
  }
}

- (void)addZoneWithNoRealChanges:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = self;
    objc_sync_enter(v5);
    if (v5->_investigationStarted)
    {
      zonesWithNoRealChanges = v5->_zonesWithNoRealChanges;
      if (!zonesWithNoRealChanges)
      {
        v7 = objc_opt_new();
        v8 = v5->_zonesWithNoRealChanges;
        v5->_zonesWithNoRealChanges = v7;

        zonesWithNoRealChanges = v5->_zonesWithNoRealChanges;
      }

      [(NSMutableSet *)zonesWithNoRealChanges addObject:v9];
    }

    objc_sync_exit(v5);

    v4 = v9;
  }
}

- (void)setZonesOutOfSync:(unsigned __int16)a3 zonesType:(unsigned __int8)a4
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_investigationStarted)
  {
    obj->_zonesOutOfSync = a3;
    obj->_zonesType = a4;
  }

  objc_sync_exit(obj);
}

- (BOOL)_shouldCompleteInvestigation
{
  if ([(BRCContainerScheduler *)self->_containerScheduler haveZonesThatNeedsOrInSyncDown])
  {
    v3 = 0;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 1;
    zoneAppRetriever = self->_zoneAppRetriever;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__BRCPeriodicSyncInvestigation__shouldCompleteInvestigation__block_invoke;
    v6[3] = &unk_2785032C8;
    v6[4] = &v7;
    [(BRCZoneAppRetriever *)zoneAppRetriever enumeratePrivateClientZones:v6];
    v3 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v3 & 1;
}

uint64_t __60__BRCPeriodicSyncInvestigation__shouldCompleteInvestigation__block_invoke(uint64_t a1, void *a2)
{
  if (([a2 syncState] & 0xA) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

- (void)completeInvestigationIfNecessary
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_investigationStarted)
  {
    v2 = [(BRCPeriodicSyncInvestigation *)obj _shouldCompleteInvestigation];
    objc_sync_exit(obj);

    if (v2)
    {

      [(BRCPeriodicSyncInvestigation *)obj completeInvestigation];
    }
  }

  else
  {
    objc_sync_exit(obj);
  }
}

- (void)completeInvestigation
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] These are the zones with no real changes: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)completeInvestigationIfNecessaryWithOldSyncState:(unsigned int)a3 newSyncState:(unsigned int)a4
{
  v4 = (a4 & 0xA) != 0 || (a3 & 0xA) == 0;
  if (!v4 && self->_investigationStarted)
  {
    [(BRCPeriodicSyncInvestigation *)self completeInvestigationIfNecessary];
  }
}

- (void)close
{
  obj = self;
  objc_sync_enter(obj);
  zoneAppRetriever = obj->_zoneAppRetriever;
  obj->_zoneAppRetriever = 0;

  containerScheduler = obj->_containerScheduler;
  obj->_containerScheduler = 0;

  tapToRadarManager = obj->_tapToRadarManager;
  obj->_tapToRadarManager = 0;

  analyticsReporter = obj->_analyticsReporter;
  obj->_analyticsReporter = 0;

  editingDevices = obj->_editingDevices;
  obj->_editingDevices = 0;

  zonesWithNoRealChanges = obj->_zonesWithNoRealChanges;
  obj->_zonesWithNoRealChanges = 0;

  *&obj->_investigationStarted = 0;
  objc_sync_exit(obj);
}

@end