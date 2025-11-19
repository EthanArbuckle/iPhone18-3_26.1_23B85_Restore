@interface RTBluePOIMonitorEnabler
- (BOOL)enabled;
- (RTBluePOIMonitorEnabler)initWithDefaultsManager:(id)a3;
- (void)_onVisitManagerNotification:(id)a3;
- (void)_setup;
- (void)onMotionActivityManagerNotification:(id)a3;
- (void)onVisitManagerNotification:(id)a3;
- (void)onVisitManagerVisitIncidentNotification:(id)a3;
- (void)setLearnedLocationManager:(id)a3;
- (void)setMotionActivityManager:(id)a3;
- (void)setVisitManager:(id)a3;
@end

@implementation RTBluePOIMonitorEnabler

- (BOOL)enabled
{
  v3 = [(RTBluePOIMonitorEnabler *)self defaultsManager];
  v4 = [v3 objectForKey:@"RTDefaultsBluePOIMonitorEnablerDisableBackgroundPOIMonitoring"];
  v5 = [v4 BOOLValue];

  v6 = [(RTBluePOIMonitorEnabler *)self defaultsManager];
  v7 = [v6 objectForKey:@"RTDefaultsBluePOIMonitorEnablerStationaryDurationForPausing"];

  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 1800.0;
  }

  stationaryStartDate = self->_stationaryStartDate;
  if (stationaryStartDate)
  {
    [(NSDate *)stationaryStartDate timeIntervalSinceNow];
    if (v11 < 0.0)
    {
      v11 = -v11;
    }

    v12 = v11 < v9;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 1;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  if (!self->_isDriving)
  {
    v13 = !self->_atHomeOrWork && v12;
    goto LABEL_13;
  }

LABEL_11:
  v13 = 0;
LABEL_13:

  return v13;
}

- (RTBluePOIMonitorEnabler)initWithDefaultsManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v13.receiver = self;
    v13.super_class = RTBluePOIMonitorEnabler;
    v6 = [(RTNotifier *)&v13 init];
    v7 = v6;
    if (v6)
    {
      v6->_isDriving = 0;
      v6->_atHomeOrWork = 0;
      objc_storeStrong(&v6->_defaultsManager, a3);
      v8 = [MEMORY[0x277CBEAA8] now];
      stationaryStartDate = v7->_stationaryStartDate;
      v7->_stationaryStartDate = v8;

      [(RTService *)v7 setup];
    }

    self = v7;
    v10 = self;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)_setup
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "initialized RTBluePOIMonitorEnabler", v3, 2u);
    }
  }
}

- (void)setMotionActivityManager:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__RTBluePOIMonitorEnabler_setMotionActivityManager___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __52__RTBluePOIMonitorEnabler_setMotionActivityManager___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4 = +[(RTNotification *)RTMotionActivityManagerNotificationDominantMotionActivityChange];
  [v3 addObserver:v2 selector:sel_onMotionActivityManagerNotification_ name:v4];
}

- (void)setVisitManager:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__RTBluePOIMonitorEnabler_setVisitManager___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __43__RTBluePOIMonitorEnabler_setVisitManager___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  v4 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
  [v3 addObserver:v2 selector:sel_onVisitManagerVisitIncidentNotification_ name:v4];

  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  v7 = +[(RTNotification *)RTVisitManagerAvailableNotification];
  [v6 addObserver:v5 selector:sel_onVisitManagerNotification_ name:v7];
}

- (void)setLearnedLocationManager:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__RTBluePOIMonitorEnabler_setLearnedLocationManager___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)onMotionActivityManagerNotification:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __63__RTBluePOIMonitorEnabler_onMotionActivityManagerNotification___block_invoke;
  v11 = &unk_2788C4A70;
  v12 = v4;
  v13 = self;
  v5 = v4;
  v6 = _Block_copy(&v8);
  v7 = [(RTNotifier *)self queue:v8];
  dispatch_async(v7, v6);
}

void __63__RTBluePOIMonitorEnabler_onMotionActivityManagerNotification___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTMotionActivityManagerNotificationDominantMotionActivityChange];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = [*(a1 + 32) dominantMotionActivity];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v15 = 136315394;
        v16 = "[RTBluePOIMonitorEnabler onMotionActivityManagerNotification:]_block_invoke";
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, dominantMotionActivityNotification activity, %@", &v15, 0x16u);
      }
    }

    if ([v5 type] == 4)
    {
      v7 = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Disable POI monitoring while driving", &v15, 2u);
        }

        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
    }

    *(*(a1 + 40) + 32) = v7;
    if ([v5 type] == 1)
    {
      if (*(*(a1 + 40) + 72))
      {
LABEL_25:

        return;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "Becoming stationary, setting stationary start date", &v15, 2u);
        }
      }

      v10 = [MEMORY[0x277CBEAA8] now];
      v11 = *(a1 + 40);
      v12 = *(v11 + 72);
      *(v11 + 72) = v10;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "Not stationary, clearing stationary start date", &v15, 2u);
        }
      }

      v14 = *(a1 + 40);
      v12 = *(v14 + 72);
      *(v14 + 72) = 0;
    }

    goto LABEL_25;
  }
}

- (void)onVisitManagerVisitIncidentNotification:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __67__RTBluePOIMonitorEnabler_onVisitManagerVisitIncidentNotification___block_invoke;
  v11 = &unk_2788C4A70;
  v12 = v4;
  v13 = self;
  v5 = v4;
  v6 = _Block_copy(&v8);
  v7 = [(RTNotifier *)self queue:v8];
  dispatch_async(v7, v6);
}

void __67__RTBluePOIMonitorEnabler_onVisitManagerVisitIncidentNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 visitIncident];
    v7 = [v6 placeInference];
    v8 = [v7 loiIdentifier];

    if ([v6 type] == 1)
    {
      v9 = [*(a1 + 40) learnedLocationManager];

      if (v9)
      {
        v10 = [*(a1 + 40) learnedLocationManager];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __67__RTBluePOIMonitorEnabler_onVisitManagerVisitIncidentNotification___block_invoke_2;
        v14[3] = &unk_2788C4C48;
        v14[4] = *(a1 + 40);
        [v10 fetchLocationOfInterestWithIdentifier:v8 handler:v14];

LABEL_15:
        return;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          v12 = "Inform enabling POI monitoring while at not at home/work - no learned locations";
          goto LABEL_12;
        }

        goto LABEL_13;
      }
    }

    else
    {
      if ([v6 type] != 3)
      {
        goto LABEL_15;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          v12 = "Inform enabling POI monitoring after exiting a visit";
LABEL_12:
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
        }

LABEL_13:
      }
    }

    *(*(a1 + 40) + 33) = 0;
    goto LABEL_15;
  }
}

void __67__RTBluePOIMonitorEnabler_onVisitManagerVisitIncidentNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 place];
  if ([v4 type] == 1)
  {
  }

  else
  {
    v5 = [v3 place];
    v6 = [v5 type];

    if (v6 != 2)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v7 = 0;
        goto LABEL_12;
      }

      v8 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Inform enabling POI monitoring while at not at home/work", v9, 2u);
      }

      v7 = 0;
      goto LABEL_11;
    }
  }

  v7 = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Disable POI monitoring while at home/work", buf, 2u);
    }

LABEL_11:
  }

LABEL_12:
  *(*(a1 + 32) + 33) = v7;
}

- (void)_onVisitManagerNotification:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 name];
  v7 = +[(RTNotification *)RTVisitManagerAvailableNotification];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D01340]);
    v10 = [MEMORY[0x277CBEB98] setWithObject:&unk_28459C678];
    LOWORD(v15) = 0;
    v11 = [v9 initWithAscending:0 confidence:&unk_2845A18C8 dateInterval:0 labelVisit:1 limit:&unk_28459C660 sources:v10 redact:v15 filterPairedVisitEntries:?];

    visitManager = self->_visitManager;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__RTBluePOIMonitorEnabler__onVisitManagerNotification___block_invoke;
    v16[3] = &unk_2788C4C98;
    v16[4] = self;
    v16[5] = a2;
    [(RTVisitManager *)visitManager fetchStoredVisitsWithOptions:v11 handler:v16];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v11 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = NSStringFromSelector(a2);
      v14 = [v5 name];
      *buf = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, unhandled notification, %@", buf, 0x16u);
    }
  }

LABEL_7:
}

void __55__RTBluePOIMonitorEnabler__onVisitManagerNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__RTBluePOIMonitorEnabler__onVisitManagerNotification___block_invoke_2;
  v10[3] = &unk_2788C4C70;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __55__RTBluePOIMonitorEnabler__onVisitManagerNotification___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) firstObject];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = NSStringFromSelector(*(a1 + 56));
      v5 = *(a1 + 40);
      v9 = 138412802;
      v10 = v4;
      v11 = 2112;
      v12 = v2;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, fetched visit, %@, error, %@", &v9, 0x20u);
    }
  }

  if (!*(a1 + 40) && [v2 type] == 1)
  {
    v6 = [v2 placeInference];
    if ([v6 userType] == 1)
    {

LABEL_10:
      *(*(a1 + 48) + 33) = 1;
      goto LABEL_11;
    }

    v7 = [v2 placeInference];
    v8 = [v7 userType];

    if (v8 == 2)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)onVisitManagerNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__RTBluePOIMonitorEnabler_onVisitManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end