@interface RTVisitConsolidator
+ (id)consolidateHindsightVisits:(id)a3 constantMonitorVisits:(id)a4 sortDescriptor:(id)a5 filterPairedVisitEntries:(BOOL)a6;
+ (id)filterConstantMonitorVisits:(id)a3;
+ (id)getRedactedDateIntervalFromInterval:(id)a3;
- (RTVisitConsolidator)initWithLearnedLocationManager:(id)a3 visitManager:(id)a4 authorizedLocationManager:(id)a5 accountManager:(id)a6 bluePOITileManager:(id)a7;
- (void)_fetchConstantMonitorVisitsWithDateInterval:(id)a3 options:(id)a4 handler:(id)a5;
- (void)_fetchHindsightVisitsWithDateInterval:(id)a3 ascending:(BOOL)a4 handler:(id)a5;
- (void)_fetchRedactedStoredVisitsWithOptions:(id)a3 redactedVisitsHandler:(id)a4;
- (void)_fetchStoredVisitsWithOptions:(id)a3 handler:(id)a4;
- (void)_onAccountChange:(id)a3;
- (void)_onDailyMetricsNotification:(id)a3;
- (void)_setup;
- (void)fetchStoredVisitsWithOptions:(id)a3 handler:(id)a4;
- (void)onAccountChange:(id)a3;
- (void)onDailyMetricsNotification:(id)a3;
@end

@implementation RTVisitConsolidator

- (RTVisitConsolidator)initWithLearnedLocationManager:(id)a3 visitManager:(id)a4 authorizedLocationManager:(id)a5 accountManager:(id)a6 bluePOITileManager:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v23 = a7;
  if (!v13)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: learnedLocationManager";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_17;
  }

  if (!v14)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: visitManager";
    goto LABEL_16;
  }

  if (!v15)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: authorizedLocationManager";
    goto LABEL_16;
  }

  if (!v16)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Invalid parameter not satisfying: accountManager";
      goto LABEL_16;
    }

LABEL_17:

    v19 = 0;
    goto LABEL_18;
  }

  v24.receiver = self;
  v24.super_class = RTVisitConsolidator;
  v17 = [(RTNotifier *)&v24 init];
  p_isa = &v17->super.super.super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_learnedLocationManager, a3);
    objc_storeStrong(p_isa + 5, a4);
    objc_storeStrong(p_isa + 6, a5);
    objc_storeStrong(p_isa + 7, a6);
    objc_storeStrong(p_isa + 8, a7);
    [p_isa setup];
  }

  self = p_isa;
  v19 = self;
LABEL_18:

  return v19;
}

- (void)_setup
{
  v3 = [(RTVisitConsolidator *)self accountManager];
  v4 = +[(RTNotification *)RTAccountManagerNotificationAccountChanged];
  [v3 addObserver:self selector:sel_onAccountChange_ name:v4];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_onDailyMetricsNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];

  v6 = [(RTVisitConsolidator *)self bluePOITileManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__RTVisitConsolidator__setup__block_invoke;
  v7[3] = &unk_2788CA158;
  v7[4] = self;
  [v6 fetchPOICategoryDenyListWithHandler:v7];
}

void __29__RTVisitConsolidator__setup__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__RTVisitConsolidator__setup__block_invoke_2;
  block[3] = &unk_2788C76F8;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __29__RTVisitConsolidator__setup__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "error fetching category denylist, %@", &v7, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) count];
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "fetched category denylist, count, %ld", &v7, 0xCu);
    }

    [*(a1 + 48) setCategoryDenyList:*(a1 + 40)];
  }
}

- (void)fetchStoredVisitsWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RTVisitConsolidator_fetchStoredVisitsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __60__RTVisitConsolidator_fetchStoredVisitsWithOptions_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) redact];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__RTVisitConsolidator_fetchStoredVisitsWithOptions_handler___block_invoke_2;
    v8[3] = &unk_2788CA180;
    v9 = *(a1 + 48);
    [v3 _fetchRedactedStoredVisitsWithOptions:v4 redactedVisitsHandler:v8];
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);

    [v6 _fetchStoredVisitsWithOptions:v7 handler:v5];
  }
}

void __60__RTVisitConsolidator_fetchStoredVisitsWithOptions_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 visits];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)_fetchRedactedStoredVisitsWithOptions:(id)a3 redactedVisitsHandler:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([v6 redact] & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTVisitConsolidator _fetchRedactedStoredVisitsWithOptions:redactedVisitsHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 112;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "redact must be set (in %s:%d)", buf, 0x12u);
    }
  }

  if ([v6 redact] && (objc_msgSend(v6, "labelVisit") & 1) == 0)
  {
    v11 = [MEMORY[0x277CCA9B8] rt_errorWithCode:7 description:@"'labelVisit' must also be set when 'redact' is set"];
    v7[2](v7, 0, v11);
    goto LABEL_35;
  }

  if ([v6 redact] && (-[RTVisitConsolidator currentAccount](self, "currentAccount"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "underageAccount"), v9, v10))
  {
    v11 = [MEMORY[0x277CCA9B8] rt_errorWithCode:1 description:@"cannot return redacted visits for underage account"];
    v7[2](v7, 0, v11);
  }

  else if ([v6 redact] && +[RTVisitRedactionUtilities shouldRedactAllVisitsForCurrentRegion](RTVisitRedactionUtilities, "shouldRedactAllVisitsForCurrentRegion"))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "denying redacted query due to current region", buf, 2u);
    }

    v11 = [MEMORY[0x277CCA9B8] rt_errorWithCode:13 description:@"redacted stored visits not available in current region"];
    v7[2](v7, 0, v11);
  }

  else
  {
    if ([v6 redact])
    {
      v11 = +[RTReferenceTimeProvider referenceTime];
      if (v11)
      {
        v13 = [MEMORY[0x277CBEAA8] date];
        [v11 timeIntervalSinceDate:v13];
        v15 = v14;

        v16 = -v15;
        if (v15 >= 0.0)
        {
          v16 = v15;
        }

        if (v16 > 3600.0)
        {
          v17 = [MEMORY[0x277CCA9B8] rt_errorWithCode:5 description:{@"system time is too offset, denying fetch"}];
          v7[2](v7, 0, v17);

          goto LABEL_35;
        }
      }
    }

    if ([v6 redact])
    {
      v18 = objc_opt_class();
      v19 = [v6 dateInterval];
      v20 = [v18 getRedactedDateIntervalFromInterval:v19];
      [v6 setDateInterval:v20];
    }

    v21 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v58 = __Block_byref_object_copy__63;
    v59 = __Block_byref_object_dispose__63;
    v60 = 0;
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x3032000000;
    v55[3] = __Block_byref_object_copy__63;
    v55[4] = __Block_byref_object_dispose__63;
    v56 = 0;
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x3032000000;
    v53[3] = __Block_byref_object_copy__63;
    v53[4] = __Block_byref_object_dispose__63;
    v54 = 0;
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x3032000000;
    v51[3] = __Block_byref_object_copy__63;
    v51[4] = __Block_byref_object_dispose__63;
    v52 = 0;
    v22 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    v23 = os_signpost_id_generate(v22);

    v24 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    v25 = v24;
    v26 = v23 - 1;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *v50 = 0;
      _os_signpost_emit_with_name_impl(&dword_2304B3000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "_fetchRedactedStoredVisitsWithOptions", " enableTelemetry=YES ", v50, 2u);
    }

    dispatch_group_enter(v21);
    v27 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    v28 = v27;
    if (v26 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *v50 = 0;
      _os_signpost_emit_with_name_impl(&dword_2304B3000, v28, OS_SIGNPOST_EVENT, v23, "FetchAuthorizedLocations-Start", " enableTelemetry=YES ", v50, 2u);
    }

    authorizedLocationManager = self->_authorizedLocationManager;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __83__RTVisitConsolidator__fetchRedactedStoredVisitsWithOptions_redactedVisitsHandler___block_invoke;
    v46[3] = &unk_2788CA1A8;
    v48 = buf;
    v49 = v23;
    v30 = v21;
    v47 = v30;
    [(RTAuthorizedLocationManager *)authorizedLocationManager fetchAuthorizedLocations:v46];
    dispatch_group_enter(v30);
    v31 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    v32 = v31;
    if (v26 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *v50 = 0;
      _os_signpost_emit_with_name_impl(&dword_2304B3000, v32, OS_SIGNPOST_EVENT, v23, "FetchStoredVisits-Start", " enableTelemetry=YES ", v50, 2u);
    }

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __83__RTVisitConsolidator__fetchRedactedStoredVisitsWithOptions_redactedVisitsHandler___block_invoke_31;
    v41[3] = &unk_2788C6CE8;
    v43 = v53;
    v44 = v51;
    v11 = v30;
    v42 = v11;
    v45 = v23;
    [(RTVisitConsolidator *)self _fetchStoredVisitsWithOptions:v6 handler:v41];
    v33 = [(RTNotifier *)self queue];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __83__RTVisitConsolidator__fetchRedactedStoredVisitsWithOptions_redactedVisitsHandler___block_invoke_33;
    v34[3] = &unk_2788CA1D0;
    v36 = v55;
    v37 = v51;
    v38 = v53;
    v39 = buf;
    v34[4] = self;
    v35 = v7;
    v40 = v23;
    dispatch_group_notify(v11, v33, v34);

    _Block_object_dispose(v51, 8);
    _Block_object_dispose(v53, 8);

    _Block_object_dispose(v55, 8);
    _Block_object_dispose(buf, 8);
  }

LABEL_35:
}

void __83__RTVisitConsolidator__fetchRedactedStoredVisitsWithOptions_redactedVisitsHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 zdrConfirmationList];
      v9 = [v8 count];
      v10 = [v5 fullConfirmationList];
      v17 = 138412802;
      v18 = v6;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = [v10 count];
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "fetched authorized location, error, %@, zdrCount, %lu, fullCount, %lu", &v17, 0x20u);
    }
  }

  v11 = [v5 fullConfirmationList];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  v15 = v14;
  v16 = *(a1 + 48);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v15, OS_SIGNPOST_EVENT, v16, "FetchAuthorizedLocations-Done", " enableTelemetry=YES ", &v17, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __83__RTVisitConsolidator__fetchRedactedStoredVisitsWithOptions_redactedVisitsHandler___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
  v10 = v7;

  dispatch_group_leave(*(a1 + 32));
  v11 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v12, OS_SIGNPOST_EVENT, v13, "FetchStoredVisits-Done", " enableTelemetry=YES ", v14, 2u);
  }
}

void __83__RTVisitConsolidator__fetchRedactedStoredVisitsWithOptions_redactedVisitsHandler___block_invoke_33(void *a1)
{
  if (*(*(a1[6] + 8) + 40) | *(*(a1[7] + 8) + 40))
  {
    v3 = _RTSafeArray();
    v2 = _RTMultiErrorCreate();

    (*(a1[5] + 16))(a1[5], 0);
  }

  else
  {
    v2 = [RTVisitRedactionUtilities redactVisits:*(*(a1[8] + 8) + 40) authorizedLocations:*(*(a1[9] + 8) + 40) bluePOICategoryDenylist:*(a1[4] + 80)];
    (*(a1[5] + 16))(a1[5], v2);
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  v5 = v4;
  v6 = a1[10];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v5, OS_SIGNPOST_INTERVAL_END, v6, "_fetchRedactedStoredVisitsWithOptions", " enableTelemetry=YES ", buf, 2u);
  }
}

- (void)_fetchStoredVisitsWithOptions:(id)a3 handler:(id)a4
{
  v76 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    aSelector = a2;
    v44 = self;
    v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    v10 = os_signpost_id_generate(v9);

    v11 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    v12 = v11;
    v13 = v10 - 1;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2304B3000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "_fetchStoredVisitsWithOptions", " enableTelemetry=YES ", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v16;
        *&buf[12] = 2112;
        *&buf[14] = v17;
        *&buf[22] = 2112;
        v73 = v7;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, %@, options, %@", buf, 0x20u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v73 = __Block_byref_object_copy__63;
    v74 = __Block_byref_object_dispose__63;
    v75 = MEMORY[0x277CBEBF8];
    v70[0] = 0;
    v70[1] = v70;
    v70[2] = 0x3032000000;
    v70[3] = __Block_byref_object_copy__63;
    v70[4] = __Block_byref_object_dispose__63;
    v71 = MEMORY[0x277CBEBF8];
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x3032000000;
    v68[3] = __Block_byref_object_copy__63;
    v68[4] = __Block_byref_object_dispose__63;
    v69 = 0;
    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x3032000000;
    v66[3] = __Block_byref_object_copy__63;
    v66[4] = __Block_byref_object_dispose__63;
    v67 = 0;
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x3032000000;
    v64[3] = __Block_byref_object_copy__63;
    v64[4] = __Block_byref_object_dispose__63;
    v65 = 0;
    v62[0] = 0;
    v62[1] = v62;
    v62[2] = 0x3032000000;
    v62[3] = __Block_byref_object_copy__63;
    v62[4] = __Block_byref_object_dispose__63;
    v63 = objc_opt_new();
    v18 = [v7 sources];
    v19 = [v18 containsObject:&unk_28459DD88];

    v20 = [v7 sources];
    v21 = [v20 containsObject:&unk_28459DDA0];

    if (((v19 | v21) & 1) == 0)
    {
      (*(v8 + 2))(v8, 0, 0);
LABEL_32:
      _Block_object_dispose(v62, 8);

      _Block_object_dispose(v64, 8);
      _Block_object_dispose(v66, 8);

      _Block_object_dispose(v68, 8);
      _Block_object_dispose(v70, 8);

      _Block_object_dispose(buf, 8);
      goto LABEL_33;
    }

    v22 = dispatch_group_create();
    if (v19)
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      v24 = v23;
      if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *v61 = 0;
        _os_signpost_emit_with_name_impl(&dword_2304B3000, v24, OS_SIGNPOST_EVENT, v10, "FirstFetchGroupHindsight-Start", " enableTelemetry=YES ", v61, 2u);
      }

      dispatch_group_enter(v22);
      v25 = [v7 dateInterval];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v33 = objc_alloc(MEMORY[0x277CCA970]);
        v34 = [MEMORY[0x277CBEAA8] distantPast];
        v35 = [MEMORY[0x277CBEAA8] date];
        v27 = [v33 initWithStartDate:v34 endDate:v35];
      }

      v36 = [v7 ascending];
      v37 = v60;
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __61__RTVisitConsolidator__fetchStoredVisitsWithOptions_handler___block_invoke;
      v60[3] = &unk_2788C6CE8;
      v60[5] = v68;
      v60[6] = buf;
      v60[4] = v22;
      v60[7] = v10;
      [(RTVisitConsolidator *)v44 _fetchHindsightVisitsWithDateInterval:v27 ascending:v36 handler:v60];
    }

    else
    {
      if (!v21)
      {
LABEL_31:
        v41 = [(RTNotifier *)v44 queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __61__RTVisitConsolidator__fetchStoredVisitsWithOptions_handler___block_invoke_40;
        block[3] = &unk_2788CA290;
        v55 = v10;
        v56 = aSelectora;
        v49 = buf;
        v50 = v70;
        v57 = v21;
        v58 = v19;
        v46 = v7;
        v47 = v44;
        v51 = v64;
        v52 = v66;
        v53 = v68;
        v54 = v62;
        v48 = v8;
        dispatch_group_notify(v22, v41, block);

        goto LABEL_32;
      }

      v29 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      v30 = v29;
      if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        *v61 = 0;
        _os_signpost_emit_with_name_impl(&dword_2304B3000, v30, OS_SIGNPOST_EVENT, v10, "FirstFetchGroupConstantMonitor-Start", " enableTelemetry=YES ", v61, 2u);
      }

      dispatch_group_enter(v22);
      v31 = [v7 dateInterval];
      v32 = v31;
      if (v31)
      {
        v27 = v31;
      }

      else
      {
        v38 = objc_alloc(MEMORY[0x277CCA970]);
        v39 = [MEMORY[0x277CBEAA8] distantPast];
        v40 = [MEMORY[0x277CBEAA8] date];
        v27 = [v38 initWithStartDate:v39 endDate:v40];
      }

      v37 = v59;
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __61__RTVisitConsolidator__fetchStoredVisitsWithOptions_handler___block_invoke_39;
      v59[3] = &unk_2788C6CE8;
      v59[5] = v66;
      v59[6] = v70;
      v59[4] = v22;
      v59[7] = v10;
      [(RTVisitConsolidator *)v44 _fetchConstantMonitorVisitsWithDateInterval:v27 options:v7 handler:v59];
    }

    goto LABEL_31;
  }

  v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
  }

LABEL_33:
}

void __61__RTVisitConsolidator__fetchStoredVisitsWithOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  dispatch_group_leave(*(a1 + 32));
  v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  v11 = v10;
  v12 = *(a1 + 56);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v11, OS_SIGNPOST_EVENT, v12, "FirstFetchGroupHindsight-Done", " enableTelemetry=YES ", v13, 2u);
  }
}

void __61__RTVisitConsolidator__fetchStoredVisitsWithOptions_handler___block_invoke_39(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  dispatch_group_leave(*(a1 + 32));
  v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  v11 = v10;
  v12 = *(a1 + 56);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v11, OS_SIGNPOST_EVENT, v12, "FirstFetchGroupConstantMonitor-Done", " enableTelemetry=YES ", v13, 2u);
  }
}

void __61__RTVisitConsolidator__fetchStoredVisitsWithOptions_handler___block_invoke_40(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  v3 = v2;
  v4 = *(a1 + 104);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v3, OS_SIGNPOST_EVENT, v4, "FirstFetchGroup-Notify", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(*(a1 + 112));
      v7 = [*(*(*(a1 + 56) + 8) + 40) count];
      v8 = [*(*(*(a1 + 64) + 8) + 40) count];
      *buf = 138412802;
      v60 = v6;
      v61 = 2048;
      v62 = v7;
      v63 = 2048;
      v64 = v8;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, first_fetch_group completed, %lu hindsight visits, %lu constant monitor visits", buf, 0x20u);
    }
  }

  v9 = dispatch_group_create();
  if (*(a1 + 120) == 1 && *(a1 + 121) == 1)
  {
    v10 = [*(a1 + 32) dateInterval];
    v11 = [v10 startDate];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v14 = v13;

    if ([*(*(*(a1 + 56) + 8) + 40) count] && objc_msgSend(*(a1 + 32), "ascending"))
    {
      v15 = [*(*(*(a1 + 56) + 8) + 40) lastObject];
    }

    else
    {
      if (![*(*(*(a1 + 56) + 8) + 40) count] || (objc_msgSend(*(a1 + 32), "ascending") & 1) != 0)
      {
        goto LABEL_20;
      }

      v15 = [*(*(*(a1 + 56) + 8) + 40) firstObject];
    }

    v16 = v15;
    v17 = [v15 exit];

    v14 = v17;
LABEL_20:
    v18 = objc_alloc(MEMORY[0x277CCA970]);
    v19 = [*(a1 + 32) dateInterval];
    v20 = [v19 endDate];
    v21 = *(*(a1 + 72) + 8);
    v58 = *(v21 + 40);
    v22 = [v18 rt_initWithStartDate:v14 endDate:v20 error:&v58];
    objc_storeStrong((v21 + 40), v58);

    if (v22)
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      v24 = v23;
      v25 = *(a1 + 104);
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2304B3000, v24, OS_SIGNPOST_EVENT, v25, "SecondFetchGroup-Start", " enableTelemetry=YES ", buf, 2u);
      }

      dispatch_group_enter(v9);
      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __61__RTVisitConsolidator__fetchStoredVisitsWithOptions_handler___block_invoke_41;
      v49[3] = &unk_2788CA220;
      v28 = *(a1 + 64);
      v54 = *(a1 + 80);
      v55 = v28;
      v29 = v26;
      v30 = *(a1 + 40);
      v50 = v29;
      v51 = v30;
      v31 = v14;
      v32 = *(a1 + 112);
      v52 = v31;
      v56 = v32;
      v33 = v9;
      v34 = *(a1 + 104);
      v53 = v33;
      v57 = v34;
      [v27 _fetchConstantMonitorVisitsWithDateInterval:v22 options:v29 handler:v49];
    }
  }

  v35 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTVisitConsolidator__fetchStoredVisitsWithOptions_handler___block_invoke_48;
  block[3] = &unk_2788CA268;
  v47 = *(a1 + 112);
  v44 = *(a1 + 64);
  v45 = *(a1 + 88);
  v46 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
  v39 = *(a1 + 48);
  v36 = v39;
  v43 = v39;
  v37 = *(a1 + 32);
  v38 = *(a1 + 40);
  v41 = v37;
  v42 = v38;
  v48 = *(a1 + 104);
  dispatch_group_notify(v9, v35, block);
}

void __61__RTVisitConsolidator__fetchStoredVisitsWithOptions_handler___block_invoke_41(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
  if ([*(*(*(a1 + 72) + 8) + 40) count])
  {
    dispatch_group_leave(*(a1 + 56));
    v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    v9 = v8;
    v10 = *(a1 + 88);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_2304B3000, v9, OS_SIGNPOST_EVENT, v10, "SecondFetchGroup-Done", " enableTelemetry=YES ", v17, 2u);
    }
  }

  else
  {
    if ([*(a1 + 32) redact])
    {
      v11 = objc_opt_class();
      v12 = [*(a1 + 32) dateInterval];
      v9 = [v11 getRedactedDateIntervalFromInterval:v12];
    }

    else
    {
      v9 = 0;
    }

    v13 = [objc_alloc(MEMORY[0x277D01340]) initWithAscending:0 confidence:&unk_28459DDB8 dateInterval:v9 labelVisit:1 limit:&unk_28459DDB8];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __61__RTVisitConsolidator__fetchStoredVisitsWithOptions_handler___block_invoke_46;
    v18[3] = &unk_2788CA1F8;
    v14 = *(a1 + 40);
    v19 = *(a1 + 48);
    v22 = *(a1 + 72);
    v20 = *(a1 + 32);
    v15 = *(a1 + 56);
    v16 = *(a1 + 88);
    v21 = v15;
    v23 = v16;
    [v14 _fetchConstantMonitorVisitsWithDateInterval:0 options:v13 handler:v18];
  }
}

void __61__RTVisitConsolidator__fetchStoredVisitsWithOptions_handler___block_invoke_46(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastObject];
  if (!v4)
  {
    v18 = 0;
    goto LABEL_27;
  }

  v5 = [v3 lastObject];
  v6 = [v5 type];

  if (v6 == 1)
  {
    v46 = v3;
    v44 = a1;
    v7 = [*(a1 + 32) dateByAddingTimeInterval:1.0];
    v45 = objc_alloc(MEMORY[0x277D01428]);
    v8 = [v4 date];
    v9 = [v4 type];
    v10 = [v4 location];
    v11 = [v4 exit];
    v12 = [v4 dataPointCount];
    [v4 confidence];
    v14 = v13;
    v15 = [v4 placeInference];
    v16 = [v4 source];
    v17 = [v4 identifier];
    v18 = [v45 initWithDate:v8 type:v9 location:v10 entry:v7 exit:v11 dataPointCount:v12 confidence:v14 placeInference:v15 source:v16 identifier:v17];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      a1 = v44;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = NSStringFromSelector(*(v44 + 64));
        v21 = [v4 entry];
        v22 = [v18 entry];
        *buf = 138412802;
        v48 = v20;
        v49 = 2112;
        v50 = v21;
        v51 = 2112;
        v52 = v22;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@, adjusted entry date for the last constant monitor entry - before, %@, after, %@", buf, 0x20u);
      }

      v3 = v46;
    }

    else
    {
      v3 = v46;
      a1 = v44;
    }

LABEL_15:

    goto LABEL_16;
  }

  if ([v4 type] == 3 && (objc_msgSend(v4, "exit"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "compare:", *(a1 + 32)), v23, v24 == 1))
  {
    v18 = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v25 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412290;
        v48 = v25;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, appending constant monitor exit visit - starts before the end of the last hindsight visit exit, but ends after", buf, 0xCu);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_16:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      v48 = v27;
      v49 = 2112;
      v50 = v4;
      v51 = 2112;
      v52 = v18;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, mostRecentVisit, %@, finalVisit, %@", buf, 0x20u);
    }
  }

  if (v18)
  {
    v28 = [*(*(*(a1 + 56) + 8) + 40) mutableCopy];
    v29 = [*(a1 + 40) ascending];
    v30 = *(*(*(a1 + 56) + 8) + 40);
    if (v29)
    {
      v31 = [v30 lastObject];
      v32 = [v31 entry];
      v33 = [v4 entry];
      v34 = [v32 isEqualToDate:v33];

      if ((v34 & 1) == 0)
      {
        [v28 addObject:v18];
      }
    }

    else
    {
      v35 = [v30 firstObject];
      v36 = [v35 entry];
      v37 = [v4 entry];
      v38 = [v36 isEqualToDate:v37];

      if ((v38 & 1) == 0)
      {
        [v28 insertObject:v18 atIndex:0];
      }
    }

    v39 = *(*(a1 + 56) + 8);
    v40 = *(v39 + 40);
    *(v39 + 40) = v28;
  }

LABEL_27:
  dispatch_group_leave(*(a1 + 48));
  v41 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  v42 = v41;
  v43 = *(a1 + 72);
  if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v42, OS_SIGNPOST_EVENT, v43, "SecondFetchGroup-Done", " enableTelemetry=YES ", buf, 2u);
  }
}

void __61__RTVisitConsolidator__fetchStoredVisitsWithOptions_handler___block_invoke_48(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 104));
      v4 = [*(*(*(a1 + 56) + 8) + 40) count];
      v5 = [*(*(*(a1 + 64) + 8) + 40) count];
      *buf = 138412802;
      v18 = v3;
      v19 = 2048;
      v20 = v4;
      v21 = 2048;
      v22 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, second_fetch_group completed, %lu hindsight visits, %lu constant monitor visits", buf, 0x20u);
    }
  }

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    [*(*(*(a1 + 80) + 8) + 40) addObject:?];
  }

  if (*(*(*(a1 + 88) + 8) + 40))
  {
    [*(*(*(a1 + 80) + 8) + 40) addObject:?];
  }

  if (*(*(*(a1 + 96) + 8) + 40))
  {
    [*(*(*(a1 + 80) + 8) + 40) addObject:?];
  }

  if ([*(*(*(a1 + 80) + 8) + 40) count])
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(*(a1 + 104));
      v14 = _RTSafeArray();
      v15 = _RTMultiErrorCreate();
      *buf = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@, error(s) detected, %@", buf, 0x16u);
    }

    v7 = *(a1 + 48);
    v8 = _RTSafeArray();
    v9 = _RTMultiErrorCreate();
    (*(v7 + 16))(v7, 0, v9);
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entry" ascending:{objc_msgSend(*(a1 + 32), "ascending")}];
    v9 = [objc_opt_class() consolidateHindsightVisits:*(*(*(a1 + 56) + 8) + 40) constantMonitorVisits:*(*(*(a1 + 64) + 8) + 40) sortDescriptor:v8 filterPairedVisitEntries:{objc_msgSend(*(a1 + 32), "filterPairedVisitEntries")}];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __61__RTVisitConsolidator__fetchStoredVisitsWithOptions_handler___block_invoke_53;
      v16[3] = &__block_descriptor_40_e24_v32__0__RTVisit_8Q16_B24l;
      v16[4] = *(a1 + 104);
      [v9 enumerateObjectsUsingBlock:v16];
    }

    (*(*(a1 + 48) + 16))();
    v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    v11 = v10;
    v12 = *(a1 + 112);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2304B3000, v11, OS_SIGNPOST_INTERVAL_END, v12, "_fetchStoredVisitsWithOptions", " enableTelemetry=YES ", buf, 2u);
    }
  }
}

void __61__RTVisitConsolidator__fetchStoredVisitsWithOptions_handler___block_invoke_53(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(*(a1 + 32));
      v8 = 138412803;
      v9 = v7;
      v10 = 2048;
      v11 = a3;
      v12 = 2117;
      v13 = v5;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@, idx, %lu, visit, %{sensitive}@", &v8, 0x20u);
    }
  }
}

- (void)_fetchHindsightVisitsWithDateInterval:(id)a3 ascending:(BOOL)a4 handler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: handler";
LABEL_9:
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_7;
  }

  if (!v8)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: dateInterval";
    goto LABEL_9;
  }

  v10 = [v8 startDate];
  v11 = [v8 endDate];
  v12 = [(RTVisitConsolidator *)self learnedLocationManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__RTVisitConsolidator__fetchHindsightVisitsWithDateInterval_ascending_handler___block_invoke;
  v14[3] = &unk_2788C55A8;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  [v12 fetchHindsightVisitsBetweenStartDate:v10 endDate:v11 ascending:v6 handler:v14];

LABEL_7:
}

void __79__RTVisitConsolidator__fetchHindsightVisitsWithDateInterval_ascending_handler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__RTVisitConsolidator__fetchHindsightVisitsWithDateInterval_ascending_handler___block_invoke_2;
  v10[3] = &unk_2788C5530;
  v11 = v5;
  v12 = a1[5];
  v13 = v6;
  v14 = a1[6];
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

uint64_t __79__RTVisitConsolidator__fetchHindsightVisitsWithDateInterval_ascending_handler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) count];
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = 134218498;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "fetched %lu hindsight visits in date interval, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)_fetchConstantMonitorVisitsWithDateInterval:(id)a3 options:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D01340]);
    v12 = v8;
    v13 = [v9 ascending];
    v14 = [v9 confidence];
    v15 = [v9 labelVisit];
    v16 = [v9 limit];
    v17 = [v9 sources];
    v25 = v10;
    v18 = self;
    v19 = [v9 redact];
    BYTE1(v24) = [v9 filterPairedVisitEntries];
    LOBYTE(v24) = v19;
    v20 = v13;
    v8 = v12;
    v21 = [v11 initWithAscending:v20 confidence:v14 dateInterval:v12 labelVisit:v15 limit:v16 sources:v17 redact:v24 filterPairedVisitEntries:?];

    v22 = [(RTVisitConsolidator *)v18 visitManager];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __83__RTVisitConsolidator__fetchConstantMonitorVisitsWithDateInterval_options_handler___block_invoke;
    v26[3] = &unk_2788C5848;
    v26[4] = v18;
    v27 = v21;
    v10 = v25;
    v28 = v12;
    v29 = v25;
    v23 = v21;
    [v22 fetchStoredVisitsWithOptions:v23 handler:v26];
  }

  else
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __83__RTVisitConsolidator__fetchConstantMonitorVisitsWithDateInterval_options_handler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__RTVisitConsolidator__fetchConstantMonitorVisitsWithDateInterval_options_handler___block_invoke_2;
  block[3] = &unk_2788C5580;
  v11 = a1[5];
  v12 = v5;
  v13 = a1[6];
  v14 = v6;
  v15 = a1[7];
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void __83__RTVisitConsolidator__fetchConstantMonitorVisitsWithDateInterval_options_handler___block_invoke_2(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entry" ascending:{objc_msgSend(*(a1 + 32), "ascending")}];
  v3 = *(a1 + 40);
  v16[0] = v2;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v5 = [v3 sortedArrayUsingDescriptors:v4];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 count];
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = 134218498;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "fetched %lu constant monitor visits in date interval, %@, error, %@", &v10, 0x20u);
    }
  }

  (*(*(a1 + 64) + 16))();
}

- (void)onAccountChange:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__RTVisitConsolidator_onAccountChange___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onAccountChange:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  currentAccount = v6;
  if (isKindOfClass)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_2304B3000, &currentAccount->super, OS_LOG_TYPE_DEFAULT, "account changed, %@", &v10, 0xCu);
    }

    v8 = [v4 latestAccount];
    currentAccount = self->_currentAccount;
    self->_currentAccount = v8;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = [v4 name];
    v10 = 138412290;
    v11 = v9;
    _os_log_error_impl(&dword_2304B3000, &currentAccount->super, OS_LOG_TYPE_ERROR, "unrecognized AccountManager notification, %@", &v10, 0xCu);
  }
}

+ (id)consolidateHindsightVisits:(id)a3 constantMonitorVisits:(id)a4 sortDescriptor:(id)a5 filterPairedVisitEntries:(BOOL)a6
{
  v6 = a6;
  v63 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v42 = a5;
  if (v6)
  {
    v11 = [objc_opt_class() filterConstantMonitorVisits:v10];

    v10 = v11;
  }

  v12 = objc_opt_new();
  if ([v9 count])
  {
    [v12 addObjectsFromArray:v9];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v49;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v48 + 1) + 8 * i);
        if (v15)
        {
          v19 = [*(*(&v48 + 1) + 8 * i) exit];
          v20 = [v19 laterDate:v15];
          v21 = [v18 exit];

          if (v20 != v21)
          {
            continue;
          }
        }

        v22 = [v18 exit];

        v15 = v22;
      }

      v14 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v23 = v10;
  v24 = [v23 countByEnumeratingWithState:&v44 objects:v61 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v45;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v45 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v44 + 1) + 8 * j);
        if ([v28 type] == 1)
        {
          if (v15)
          {
            v29 = [v28 entry];
            v30 = [v29 earlierDate:v15];
            v31 = [v28 entry];
            goto LABEL_28;
          }
        }

        else
        {
          if ([v28 type] != 3)
          {
            continue;
          }

          if (v15)
          {
            v29 = [v28 exit];
            v30 = [v29 earlierDate:v15];
            v31 = [v28 exit];
LABEL_28:
            v32 = v31;

            if (v30 == v32)
            {
              continue;
            }
          }
        }

        [v12 addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v44 objects:v61 count:16];
    }

    while (v25);
  }

  v60 = v42;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
  [v12 sortUsingDescriptors:v33];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = NSStringFromSelector(a2);
      v36 = [obj count];
      v37 = [v23 count];
      v38 = [v12 count];
      *buf = 138413058;
      v53 = v35;
      v54 = 2048;
      v55 = v36;
      v56 = 2048;
      v57 = v37;
      v58 = 2048;
      v59 = v38;
      _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%@, hindsight visit count, %lu, constant monitor visit count, %lu, output count, %lu", buf, 0x2Au);
    }
  }

  v39 = [v12 copy];

  return v39;
}

+ (id)filterConstantMonitorVisits:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 count])
  {
    v23 = MEMORY[0x277CBEBF8];
    goto LABEL_30;
  }

  aSelector = a2;
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (!v6)
  {

    v9 = 0;
    v8 = 0;
    goto LABEL_25;
  }

  v7 = v6;
  v30 = v4;
  v8 = 0;
  v9 = 0;
  v10 = *v33;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v33 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v32 + 1) + 8 * i);
      if ([v12 type] == 1)
      {
        if (!v9 || ([v12 entry], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "entry"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "compare:", v14), v14, v13, v15 == 1))
        {
          v16 = v12;
          v17 = v9;
          v9 = v16;
LABEL_15:

          continue;
        }
      }

      else if ([v12 type] == 3)
      {
        [v31 addObject:v12];
        if (!v8 || ([v12 exit], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "compare:", v8), v18, v19 == 1))
        {
          v20 = [v12 exit];
          v17 = v8;
          v8 = v20;
          goto LABEL_15;
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v32 objects:v42 count:16];
  }

  while (v7);

  if (v9)
  {
    v4 = v30;
    if (!v8 || ([v9 entry], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "compare:", v8), v21, v22 == 1))
    {
      [v31 addObject:v9];
    }
  }

  else
  {
    v4 = v30;
  }

LABEL_25:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = NSStringFromSelector(aSelector);
      v26 = [v5 count];
      v27 = [v31 count];
      *buf = 138412802;
      v37 = v25;
      v38 = 2048;
      v39 = v26;
      v40 = 2048;
      v41 = v27;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, constant monitor visit count, %lu, filtered output count, %lu", buf, 0x20u);
    }
  }

  v23 = [v31 copy];

LABEL_30:

  return v23;
}

+ (id)getRedactedDateIntervalFromInterval:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v5 startOfDayAfterAddingUnit:16 value:-RTVisitConsolidatorRedactedLookbackWindowDays];

  v7 = [v4 startDate];
  if (v7)
  {
    v8 = [v4 startDate];
    v9 = [v8 laterDate:v6];
  }

  else
  {
    v9 = v6;
  }

  v10 = [v4 endDate];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x277CBEAA8] date];
  }

  v13 = v12;

  v14 = objc_alloc(MEMORY[0x277CCA970]);
  v23 = 0;
  v15 = [v14 rt_initWithStartDate:v9 endDate:v13 error:&v23];
  v16 = v23;

  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v6 duration:1.0];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = NSStringFromSelector(a2);
        v20 = [v9 stringFromDate];
        v21 = [v13 stringFromDate];
        *buf = 138413058;
        v25 = v19;
        v26 = 2112;
        v27 = v20;
        v28 = 2112;
        v29 = v21;
        v30 = 2112;
        v31 = v16;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, invalid inputs for dateInterval, startDate, %@, endDate, %@, error, %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v17 = v15;
  }

  return v17;
}

- (void)onDailyMetricsNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__RTVisitConsolidator_onDailyMetricsNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onDailyMetricsNotification:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 startOfDayForDate:v5];
  v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v7 setDay:-1];
  v8 = [v4 dateByAddingComponents:v7 toDate:v6 options:0];
  v9 = [v8 dateByAddingUnit:16 value:1];
  v10 = objc_alloc(MEMORY[0x277CCA970]);
  v21 = 0;
  v11 = [v10 rt_initWithStartDate:v8 endDate:v9 error:&v21];
  v12 = v21;

  if (v12)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Error constructing date interval for metrics, startDate, %@, endDate, %@", buf, 0x16u);
    }
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277D01340]);
    [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
    v15 = v19 = self;
    [MEMORY[0x277CBEB98] setWithObject:&unk_28459DD88];
    v20 = v6;
    v17 = v16 = v5;
    LOBYTE(v18) = 1;
    v13 = [v14 initWithAscending:1 confidence:v15 dateInterval:v11 labelVisit:1 limit:0 sources:v17 redact:v18];

    v5 = v16;
    v6 = v20;

    [(RTVisitConsolidator *)v19 _fetchRedactedStoredVisitsWithOptions:v13 redactedVisitsHandler:&__block_literal_global_48];
  }
}

void __51__RTVisitConsolidator__onDailyMetricsNotification___block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  v2 = objc_alloc_init(RTVisitRedactionMetric);
  v3 = [v22 redactionDetails];
  v4 = [v3 visitsRedactedForAuthorizedLocation];
  -[RTVisitRedactionMetric setRedactedForAuthorizedLocation:](v2, "setRedactedForAuthorizedLocation:", [v4 count]);

  v5 = [v22 redactionDetails];
  v6 = [v5 visitsRedactedForCategory];
  -[RTVisitRedactionMetric setRedactedForCategory:](v2, "setRedactedForCategory:", [v6 count]);

  v7 = [v22 redactionDetails];
  v8 = [v7 visitsRedactedForConfidence];
  -[RTVisitRedactionMetric setRedactedForConfidence:](v2, "setRedactedForConfidence:", [v8 count]);

  v9 = [v22 redactionDetails];
  v10 = [v9 visitsRedactedForPlaceType];
  -[RTVisitRedactionMetric setRedactedForPlaceType:](v2, "setRedactedForPlaceType:", [v10 count]);

  v11 = [v22 redactionDetails];
  v12 = [v11 visitsRedactedForRegion];
  -[RTVisitRedactionMetric setRedactedForRegion:](v2, "setRedactedForRegion:", [v12 count]);

  v13 = [v22 redactionDetails];
  v14 = [v13 redactedVisitCount];
  v15 = [v22 visits];
  -[RTVisitRedactionMetric setVisitsConsideredCount:](v2, "setVisitsConsideredCount:", [v15 count] + v14);

  if ([(RTVisitRedactionMetric *)v2 visitsConsideredCount])
  {
    v16 = [v22 redactionDetails];
    -[RTVisitRedactionMetric setRedactionProportion:](v2, "setRedactionProportion:", [v16 redactedVisitCount] / -[RTVisitRedactionMetric visitsConsideredCount](v2, "visitsConsideredCount"));
  }

  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  v18 = [v17 initWithCString:RTAnalyticsEventVisitRedactionDaily encoding:1];
  v19 = [(RTVisitRedactionMetric *)v2 metricDictionary];
  log_analytics_submission(v18, v19);

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v18];
  v21 = [(RTVisitRedactionMetric *)v2 metricDictionary];
  AnalyticsSendEvent();
}

@end