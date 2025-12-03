@interface PPQuickTypeNavigationServant
- (PPQuickTypeNavigationServant)init;
- (id)quickTypeItemsWithQuery:(id)query limit:(unint64_t)limit explanationSet:(id)set;
- (uint64_t)_waitForSummary;
- (void)dealloc;
- (void)navigationListener:(id)listener didUpdateCurrentRoadName:(id)name;
- (void)navigationListener:(id)listener didUpdateGuidanceState:(id)state;
- (void)navigationListener:(id)listener didUpdatePositionFromDestination:(id)destination;
- (void)navigationListener:(id)listener didUpdateRouteSummary:(id)summary;
@end

@implementation PPQuickTypeNavigationServant

- (void)navigationListener:(id)listener didUpdatePositionFromDestination:(id)destination
{
  var1 = destination.var1;
  var0 = destination.var0;
  v13 = *MEMORY[0x277D85DE8];
  v7 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.3f meters, %.3f seconds}", *&var1, *&var0];
    *buf = 138412290;
    v12 = v10;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "GEONavigationListener: didUpdatePositionFromDestination: %@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_remainingTimeToDestination = var0;
  selfCopy->_remainingDistanceToDestination = var1;
  objc_sync_exit(selfCopy);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)navigationListener:(id)listener didUpdateGuidanceState:(id)state
{
  v21 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  stateCopy = state;
  v8 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138412290;
    v20 = stateCopy;
    _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "GEONavigationListener: didUpdateGuidanceState: %@", &v19, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([stateCopy hasNavigationState])
  {
    navigationState = [stateCopy navigationState];
  }

  else
  {
    navigationState = 0;
  }

  selfCopy->_navigationState = navigationState;
  if (![stateCopy navigationState])
  {
    streetName = selfCopy->_streetName;
    selfCopy->_streetName = 0;

    destinationName = selfCopy->_destinationName;
    selfCopy->_destinationName = 0;

    __asm { FMOV            V0.2D, #-1.0 }

    *&selfCopy->_remainingTimeToDestination = _Q0;
  }

  dispatch_semaphore_signal(selfCopy->_stateSemaphore);
  objc_sync_exit(selfCopy);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)navigationListener:(id)listener didUpdateCurrentRoadName:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  nameCopy = name;
  v8 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = nameCopy;
    _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "GEONavigationListener: didUpdateCurrentRoadName: %@", &v13, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSString *)nameCopy length])
  {
    objc_storeStrong(&selfCopy->_streetName, name);
    v10 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      streetName = selfCopy->_streetName;
      v13 = 138412290;
      v14 = streetName;
      _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "_streetName = %@", &v13, 0xCu);
    }
  }

  else
  {
    v10 = selfCopy->_streetName;
    selfCopy->_streetName = 0;
  }

  objc_sync_exit(selfCopy);
  dispatch_semaphore_signal(selfCopy->_streetSemaphore);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)navigationListener:(id)listener didUpdateRouteSummary:(id)summary
{
  v22 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  summaryCopy = summary;
  v8 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138412290;
    v21 = summaryCopy;
    _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "GEONavigationListener: didUpdateRouteSummary: %@", &v20, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSString *)summaryCopy hasDestination])
  {
    destinationName = [(NSString *)summaryCopy destinationName];

    if (destinationName)
    {
      destinationName2 = [(NSString *)summaryCopy destinationName];
      destinationName = selfCopy->_destinationName;
      selfCopy->_destinationName = destinationName2;
    }

    else
    {
      destinationName = [(NSString *)summaryCopy destination];
      waypoint = [destinationName waypoint];
      waypointId = [waypoint waypointId];
      placeNameHint = [waypointId placeNameHint];
      v17 = selfCopy->_destinationName;
      selfCopy->_destinationName = placeNameHint;
    }

    v13 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v19 = selfCopy->_destinationName;
      v20 = 138412290;
      v21 = v19;
      _os_log_debug_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEBUG, "_destinationName = %@", &v20, 0xCu);
    }
  }

  else
  {
    v13 = selfCopy->_destinationName;
    selfCopy->_destinationName = 0;
  }

  objc_sync_exit(selfCopy);
  dispatch_semaphore_signal(selfCopy->_summarySemaphore);

  v18 = *MEMORY[0x277D85DE8];
}

- (id)quickTypeItemsWithQuery:(id)query limit:(unint64_t)limit explanationSet:(id)set
{
  v82 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  setCopy = set;
  v9 = [queryCopy type] == 4;
  v10 = pp_quicktype_log_handle();
  v11 = v10;
  if (!v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEBUG, "PPQuickTypeNavigationServant ignoring request since it doesn't ask for navigation", buf, 2u);
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "prediction request to PPQuickTypeNavigationServant", buf, 2u);
  }

  if (![PPQuickTypeSettings servantShouldRespondToQuery:self])
  {
    v28 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEFAULT, "ignoring prediction request for Navigation due to settings", buf, 2u);
    }

    [setCopy push:47];
LABEL_21:
    v29 = 0;
    goto LABEL_95;
  }

  if (self)
  {
    [(GEONavigationListener *)self->_navigationListener requestGuidanceState];
    [(GEONavigationListener *)self->_navigationListener requestRouteSummary];
    [(GEONavigationListener *)self->_navigationListener requestPositionFromDestination];
  }

  v12 = objc_opt_new();
  v13 = [PPQuickTypeFormatter formatterWithQuery:queryCopy];
  if ([queryCopy subtype] == 10)
  {
    [(PPQuickTypeNavigationServant *)self _waitForSummary];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    remainingTimeToDestination = selfCopy->_remainingTimeToDestination;
    v16 = +[PPConfiguration sharedInstance];
    [v16 navigationMinimumTimeInterval];
    v18 = remainingTimeToDestination > v17;

    if (v18)
    {
      if (([queryCopy fields] & 0x800000) != 0)
      {
        etaLabel = [v13 etaLabel];
        v20 = [v13 navigationItemLabelForTypeLabel:etaLabel destination:selfCopy->_destinationName];

        v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:selfCopy->_remainingTimeToDestination];
        v22 = [v13 formattedEventTime:v21];

        BYTE2(v77) = 4;
        LOWORD(v77) = 0;
        v23 = [objc_alloc(MEMORY[0x277D3A478]) initWithLabel:v20 value:v22 name:0 date:0 fields:0x800000 originatingBundleID:0 originatingWebsiteURL:1.0 predictionAge:0 shouldAggregate:0 flags:v77 score:0 source:? sourceIdentifier:?];
        [v12 addObject:v23];
      }

      if (([queryCopy fields] & 0x1000000) != 0)
      {
        timeLeftLabel = [v13 timeLeftLabel];
        v25 = [v13 navigationItemLabelForTypeLabel:timeLeftLabel destination:selfCopy->_destinationName];

        v26 = [v13 formattedTimeInterval:selfCopy->_remainingTimeToDestination];
        if ([v26 length])
        {
          BYTE2(v77) = 4;
          LOWORD(v77) = 0;
          v27 = [objc_alloc(MEMORY[0x277D3A478]) initWithLabel:v25 value:v26 name:0 date:0 fields:0x1000000 originatingBundleID:0 originatingWebsiteURL:1.0 predictionAge:0 shouldAggregate:0 flags:v77 score:0 source:? sourceIdentifier:?];
          [v12 addObject:v27];
        }
      }
    }

    else if (selfCopy->_remainingTimeToDestination <= 0.0)
    {
      v31 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v31, OS_LOG_TYPE_DEFAULT, "got ETA request but don't have time data", buf, 2u);
      }

      [setCopy push:33];
      [PPQuickTypeMetrics frameworkError:@"GEONoData" errorCode:1];
    }

    else
    {
      v30 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v30, OS_LOG_TYPE_DEFAULT, "got ETA request but too close to destination", buf, 2u);
      }

      [setCopy push:48];
    }

    objc_sync_exit(selfCopy);
  }

  if ([queryCopy subtype] == 8)
  {
    [(PPQuickTypeNavigationServant *)self _waitForSummary];
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    remainingDistanceToDestination = selfCopy2->_remainingDistanceToDestination;
    v34 = +[PPConfiguration sharedInstance];
    v35 = remainingDistanceToDestination > [v34 navigationMinimumDistanceInMeters];

    if (v35)
    {
      distanceLabel = [v13 distanceLabel];
      v37 = [v13 navigationItemLabelForTypeLabel:distanceLabel destination:selfCopy2->_destinationName];

      v38 = [v13 formattedLengthInMeters:selfCopy2->_remainingDistanceToDestination];
      BYTE2(v77) = 4;
      LOWORD(v77) = 0;
      v39 = [objc_alloc(MEMORY[0x277D3A478]) initWithLabel:v37 value:v38 name:0 date:0 fields:0 originatingBundleID:0 originatingWebsiteURL:1.0 predictionAge:0 shouldAggregate:0 flags:v77 score:0 source:? sourceIdentifier:?];
      [v12 addObject:v39];
    }

    else if (selfCopy2->_remainingDistanceToDestination <= 0.0)
    {
      v41 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v41, OS_LOG_TYPE_DEFAULT, "got distance request but don't have distance data", buf, 2u);
      }

      [setCopy push:34];
      [PPQuickTypeMetrics frameworkError:@"GEONoData" errorCode:2];
    }

    else
    {
      v40 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v40, OS_LOG_TYPE_DEFAULT, "got distance request but too close to destination", buf, 2u);
      }

      [setCopy push:48];
    }

    v42 = selfCopy2->_remainingTimeToDestination;
    v43 = +[PPConfiguration sharedInstance];
    [v43 navigationMinimumTimeInterval];
    v45 = v42 > v44;

    if (v45)
    {
      timeLeftLabel2 = [v13 timeLeftLabel];
      v47 = [v13 navigationItemLabelForTypeLabel:timeLeftLabel2 destination:selfCopy2->_destinationName];

      v48 = [v13 formattedTimeInterval:selfCopy2->_remainingTimeToDestination];
      if ([v48 length])
      {
        BYTE2(v77) = 4;
        LOWORD(v77) = 0;
        v49 = [objc_alloc(MEMORY[0x277D3A478]) initWithLabel:v47 value:v48 name:0 date:0 fields:0 originatingBundleID:0 originatingWebsiteURL:1.0 predictionAge:0 shouldAggregate:0 flags:v77 score:0 source:? sourceIdentifier:?];
        [v12 addObject:v49];
      }
    }

    else if (selfCopy2->_remainingTimeToDestination <= 0.0)
    {
      v51 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v51, OS_LOG_TYPE_DEFAULT, "got ETA request but don't have time data", buf, 2u);
      }

      [setCopy push:33];
      [PPQuickTypeMetrics frameworkError:@"GEONoData" errorCode:3];
    }

    else
    {
      v50 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v50, OS_LOG_TYPE_DEFAULT, "got ETA request but too close to destination", buf, 2u);
      }

      [setCopy push:48];
    }

    objc_sync_exit(selfCopy2);
  }

  if ([queryCopy subtype] == 9)
  {
    v52 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v52, OS_LOG_TYPE_DEBUG, "got a destination request", buf, 2u);
    }

    if (([(PPQuickTypeNavigationServant *)self _waitForSummary]& 1) == 0)
    {
      [setCopy push:32];
LABEL_93:
      v29 = 0;
      goto LABEL_94;
    }

    selfCopy3 = self;
    objc_sync_enter(selfCopy3);
    if (selfCopy3->_destinationName)
    {
      destinationLabel = [v13 destinationLabel];
      v55 = [v13 navigationItemLabelForTypeLabel:destinationLabel destination:0];

      v56 = selfCopy3->_destinationName;
      BYTE2(v77) = 4;
      LOWORD(v77) = 0;
      v57 = [objc_alloc(MEMORY[0x277D3A478]) initWithLabel:v55 value:v56 name:0 date:0 fields:0 originatingBundleID:0 originatingWebsiteURL:1.0 predictionAge:0 shouldAggregate:0 flags:v77 score:0 source:? sourceIdentifier:?];
      v58 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        value = [v57 value];
        *buf = 138412290;
        v81 = value;
        v78 = value;
        _os_log_debug_impl(&dword_23224A000, v58, OS_LOG_TYPE_DEBUG, "destination name: %@", buf, 0xCu);
      }

      [v12 addObject:v57];
    }

    else
    {
      v59 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v59, OS_LOG_TYPE_DEFAULT, "got Destination request but don't have destination data", buf, 2u);
      }

      [setCopy push:35];
      [PPQuickTypeMetrics frameworkError:@"GEONoData" errorCode:4];
    }

    objc_sync_exit(selfCopy3);
  }

  if ([queryCopy subtype] == 11)
  {
    v60 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v60, OS_LOG_TYPE_DEBUG, "got a street request", buf, 2u);
    }

    if (!self)
    {
      goto LABEL_73;
    }

    if ([MEMORY[0x277D425A0] waitForSemaphore:self->_streetSemaphore timeoutSeconds:0.05] == 1)
    {
      v61 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_23224A000, v61, OS_LOG_TYPE_DEBUG, "timed out waiting on street.", buf, 2u);
      }

      [PPQuickTypeMetrics frameworkError:@"GEOTimeout" errorCode:2];
LABEL_73:
      [setCopy push:31];
      goto LABEL_93;
    }

    dispatch_semaphore_signal(self->_streetSemaphore);
    selfCopy4 = self;
    objc_sync_enter(selfCopy4);
    if (selfCopy4->_streetName)
    {
      streetLabel = [v13 streetLabel];
      v64 = [v13 navigationItemLabelForTypeLabel:streetLabel destination:0];

      v65 = selfCopy4->_streetName;
      BYTE2(v77) = 4;
      LOWORD(v77) = 0;
      v66 = [objc_alloc(MEMORY[0x277D3A478]) initWithLabel:v64 value:v65 name:0 date:0 fields:0 originatingBundleID:0 originatingWebsiteURL:1.0 predictionAge:0 shouldAggregate:0 flags:v77 score:0 source:? sourceIdentifier:?];
      v67 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        value2 = [v66 value];
        *buf = 138412290;
        v81 = value2;
        v79 = value2;
        _os_log_debug_impl(&dword_23224A000, v67, OS_LOG_TYPE_DEBUG, "street name: %@", buf, 0xCu);
      }

      [v12 addObject:v66];
    }

    else
    {
      v68 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v68, OS_LOG_TYPE_DEFAULT, "got Street request but don't have street data", buf, 2u);
      }

      [setCopy push:36];
      [PPQuickTypeMetrics frameworkError:@"GEONoData" errorCode:5];
    }

    objc_sync_exit(selfCopy4);
  }

  selfCopy5 = self;
  objc_sync_enter(selfCopy5);
  if (![v12 count])
  {
    navigationState = selfCopy5->_navigationState;
    if ((navigationState - 6) >= 2)
    {
      if (navigationState)
      {
        goto LABEL_83;
      }

      v71 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_23224A000, v71, OS_LOG_TYPE_DEBUG, "navigation request when not navigating", buf, 2u);
      }

      v72 = 37;
    }

    else
    {
      v71 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_23224A000, v71, OS_LOG_TYPE_DEBUG, "navigation request when navigation has ended", buf, 2u);
      }

      v72 = 38;
    }

    [setCopy push:v72];
    objc_sync_exit(selfCopy5);

    goto LABEL_93;
  }

LABEL_83:
  objc_sync_exit(selfCopy5);

  v29 = v12;
LABEL_94:

LABEL_95:
  v73 = *MEMORY[0x277D85DE8];

  return v29;
}

- (uint64_t)_waitForSummary
{
  if (result)
  {
    v1 = result;
    if ([MEMORY[0x277D425A0] waitForSemaphore:*(result + 72) timeoutSeconds:0.05] == 1)
    {
      v2 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *v3 = 0;
        _os_log_debug_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEBUG, "timed out waiting on summary.", v3, 2u);
      }

      [PPQuickTypeMetrics frameworkError:@"GEOTimeout" errorCode:3];
      return 0;
    }

    else
    {
      dispatch_semaphore_signal(*(v1 + 72));
      return 1;
    }
  }

  return result;
}

- (void)dealloc
{
  if (self)
  {
    v3 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEBUG, "_stopListeningToNavigationUpdate", buf, 2u);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    navigationListener = selfCopy->_navigationListener;
    selfCopy->_navigationListener = 0;

    destinationName = selfCopy->_destinationName;
    selfCopy->_destinationName = 0;

    streetName = selfCopy->_streetName;
    selfCopy->_streetName = 0;

    objc_sync_exit(selfCopy);
  }

  v8.receiver = self;
  v8.super_class = PPQuickTypeNavigationServant;
  [(PPQuickTypeNavigationServant *)&v8 dealloc];
}

- (PPQuickTypeNavigationServant)init
{
  v31.receiver = self;
  v31.super_class = PPQuickTypeNavigationServant;
  v2 = [(PPQuickTypeNavigationServant *)&v31 init];
  if (v2)
  {
    v3 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_INFO, "PPQuickTypeNavigationServant initializing", buf, 2u);
    }

    v4 = newGEONavigationListener();
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    [*(v2 + 1) setDelegate:v2];
    __asm { FMOV            V0.2D, #-1.0 }

    *(v2 + 40) = _Q0;
    v11 = dispatch_semaphore_create(0);
    v12 = *(v2 + 7);
    *(v2 + 7) = v11;

    v13 = dispatch_semaphore_create(0);
    v14 = *(v2 + 8);
    *(v2 + 8) = v13;

    v15 = dispatch_semaphore_create(0);
    v16 = *(v2 + 9);
    *(v2 + 9) = v15;

    [*(v2 + 1) requestGuidanceState];
    [*(v2 + 1) requestRouteSummary];
    [*(v2 + 1) requestPositionFromDestination];
    v17 = MEMORY[0x277D3A480];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    v20 = [v17 quickTypeQueryWithType:0 subtype:0 semanticTag:0 fields:0 time:0 options:0 subFields:0 label:0 people:0 localeIdentifier:localeIdentifier bundleIdentifier:0 recipients:0];

    v21 = [PPQuickTypeFormatter formatterWithQuery:v20];
    makeShortEventFormatter = [v21 makeShortEventFormatter];
    makeLongEventFormatter = [v21 makeLongEventFormatter];
    makeDateComponentFormatter = [v21 makeDateComponentFormatter];
    makeLengthFormatter = [v21 makeLengthFormatter];
    etaLabel = [v21 etaLabel];
    v27 = [v21 navigationItemLabelForTypeLabel:etaLabel destination:@"warmup"];

    v28 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_INFO, "PPQuickTypeNavigationServant initialization complete", buf, 2u);
    }
  }

  return v2;
}

@end