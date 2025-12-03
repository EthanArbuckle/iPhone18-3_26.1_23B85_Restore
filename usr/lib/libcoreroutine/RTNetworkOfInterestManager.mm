@interface RTNetworkOfInterestManager
- (RTNetworkOfInterestManager)init;
- (RTNetworkOfInterestManager)initWithNoiManager:(id)manager;
- (id)getCellLinkQualityNotification;
- (id)getWifiLinkQualityNotification;
- (unint64_t)convertLinkQuality:(int64_t)quality;
- (void)_didStartTrackingCellNOI:(id)i;
- (void)_didStartTrackingWifiNOI:(id)i;
- (void)_didStopTrackingCellNOI:(id)i;
- (void)_didStopTrackingWifiNOI:(id)i;
- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)_processCellNetworkOfInterestChange:(int64_t)change;
- (void)_processWifiNetworkOfInterestChange:(int64_t)change;
- (void)_setup;
- (void)_shutdownWithHandler:(id)handler;
- (void)didStartTrackingNOI:(id)i;
- (void)didStopTrackingNOI:(id)i;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation RTNetworkOfInterestManager

- (RTNetworkOfInterestManager)init
{
  v3 = objc_alloc_init(MEMORY[0x277D6B6D8]);
  v4 = [(RTNetworkOfInterestManager *)self initWithNoiManager:v3];

  return v4;
}

- (RTNetworkOfInterestManager)initWithNoiManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v11.receiver = self;
    v11.super_class = RTNetworkOfInterestManager;
    v6 = [(RTNotifier *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_noiManager, manager);
      v7->_cellLinkQuality = 0;
      v7->_wifiLinkQuality = 0;
      [(RTService *)v7 setup];
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: noiManager", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_setup
{
  noiManager = [(RTNetworkOfInterestManager *)self noiManager];
  queue = [(RTNotifier *)self queue];
  [noiManager setQueue:queue];

  noiManager2 = [(RTNetworkOfInterestManager *)self noiManager];
  [noiManager2 setDelegate:self];

  noiManager3 = [(RTNetworkOfInterestManager *)self noiManager];
  [noiManager3 trackNOIAnyForInterfaceType:2 options:0];

  noiManager4 = [(RTNetworkOfInterestManager *)self noiManager];
  [noiManager4 trackNOIAnyForInterfaceType:1 options:0];
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  [(RTNetworkOfInterestManager *)self setCellLinkQuality:0];
  cellNoi = [(RTNetworkOfInterestManager *)self cellNoi];

  if (cellNoi)
  {
    cellNoi2 = [(RTNetworkOfInterestManager *)self cellNoi];
    [cellNoi2 removeObserver:self forKeyPath:@"linkQuality"];

    [(RTNetworkOfInterestManager *)self setCellNoi:0];
  }

  [(RTNetworkOfInterestManager *)self setWifiLinkQuality:0];
  wifiNoi = [(RTNetworkOfInterestManager *)self wifiNoi];

  if (wifiNoi)
  {
    wifiNoi2 = [(RTNetworkOfInterestManager *)self wifiNoi];
    [wifiNoi2 removeObserver:self forKeyPath:@"linkQuality"];

    [(RTNetworkOfInterestManager *)self setWifiNoi:0];
  }

  v8 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v8 = handlerCopy;
  }
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  v22 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  nameCopy = name;
  v8 = +[(RTNotification *)RTNetworkOfInterestManagerCellLinkQualityChangedNotification];
  v9 = [nameCopy isEqualToString:v8];

  if (v9)
  {
    getCellLinkQualityNotification = [(RTNetworkOfInterestManager *)self getCellLinkQualityNotification];
LABEL_5:
    v13 = getCellLinkQualityNotification;
    [(RTNotifier *)self postNotification:getCellLinkQualityNotification toObserver:observerCopy];

    goto LABEL_11;
  }

  v11 = +[(RTNotification *)RTNetworkOfInterestManagerWifiLinkQualityChangedNotification];
  v12 = [nameCopy isEqualToString:v11];

  if (v12)
  {
    getCellLinkQualityNotification = [(RTNetworkOfInterestManager *)self getWifiLinkQualityNotification];
    goto LABEL_5;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = "[RTNetworkOfInterestManager internalAddObserver:name:]";
    v18 = 2112;
    v19 = nameCopy;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%s, unsupported notification, %@", &v16, 0x16u);
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = 138412802;
    v17 = nameCopy;
    v18 = 2080;
    v19 = "[RTNetworkOfInterestManager internalAddObserver:name:]";
    v20 = 1024;
    v21 = 123;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "unsupported notification, %@ (in %s:%d)", &v16, 0x1Cu);
  }

LABEL_11:
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = +[(RTNotification *)RTNetworkOfInterestManagerCellLinkQualityChangedNotification];
  v6 = [nameCopy isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = +[(RTNotification *)RTNetworkOfInterestManagerWifiLinkQualityChangedNotification];
    v8 = [nameCopy isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = nameCopy;
        _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v11, 0xCu);
      }

      v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412802;
        v12 = nameCopy;
        v13 = 2080;
        v14 = "[RTNetworkOfInterestManager internalRemoveObserver:name:]";
        v15 = 1024;
        v16 = 137;
        _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "unsupported notification, %@ (in %s:%d)", &v11, 0x1Cu);
      }
    }
  }
}

- (void)didStartTrackingNOI:(id)i
{
  iCopy = i;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__RTNetworkOfInterestManager_didStartTrackingNOI___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = iCopy;
  selfCopy = self;
  v6 = iCopy;
  dispatch_async(queue, v7);
}

void __50__RTNetworkOfInterestManager_didStartTrackingNOI___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) interface];
  if (v2 == 1)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v5 _didStartTrackingWifiNOI:v6];
  }

  else if (v2 == 2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v3 _didStartTrackingCellNOI:v4];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) interface];
      v9 = 136315394;
      v10 = "[RTNetworkOfInterestManager didStartTrackingNOI:]_block_invoke";
      v11 = 1024;
      v12 = v8;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%s, received noi for unsupported interface, %d", &v9, 0x12u);
    }
  }
}

- (void)_didStartTrackingCellNOI:(id)i
{
  v16 = *MEMORY[0x277D85DE8];
  iCopy = i;
  v5 = iCopy;
  if (iCopy)
  {
    if ([iCopy interface] == 2)
    {
      cellNoi = [(RTNetworkOfInterestManager *)self cellNoi];

      if (!cellNoi)
      {
        [(RTNetworkOfInterestManager *)self setCellNoi:v5];
        cellNoi2 = [(RTNetworkOfInterestManager *)self cellNoi];
        [cellNoi2 addObserver:self forKeyPath:@"linkQuality" options:5 context:0];

        goto LABEL_11;
      }

      v7 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        v8 = "received second cell noi";
LABEL_8:
        v9 = v7;
        v10 = 2;
LABEL_14:
        _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, v8, &v12, v10);
      }
    }

    else
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "[RTNetworkOfInterestManager _didStartTrackingCellNOI:]";
        v14 = 2048;
        interface = [v5 interface];
        v8 = "%s, interface, %ld, is not cell";
        v9 = v7;
        v10 = 22;
        goto LABEL_14;
      }
    }
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      v8 = "Invalid parameter not satisfying: cellNoi";
      goto LABEL_8;
    }
  }

LABEL_11:
}

- (void)_didStartTrackingWifiNOI:(id)i
{
  v16 = *MEMORY[0x277D85DE8];
  iCopy = i;
  v5 = iCopy;
  if (iCopy)
  {
    if ([iCopy interface] == 1)
    {
      wifiNoi = [(RTNetworkOfInterestManager *)self wifiNoi];

      if (!wifiNoi)
      {
        [(RTNetworkOfInterestManager *)self setWifiNoi:v5];
        wifiNoi2 = [(RTNetworkOfInterestManager *)self wifiNoi];
        [wifiNoi2 addObserver:self forKeyPath:@"linkQuality" options:5 context:0];

        goto LABEL_11;
      }

      v7 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        v8 = "received second wifi noi";
LABEL_8:
        v9 = v7;
        v10 = 2;
LABEL_14:
        _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, v8, &v12, v10);
      }
    }

    else
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "[RTNetworkOfInterestManager _didStartTrackingWifiNOI:]";
        v14 = 2048;
        interface = [v5 interface];
        v8 = "%s, interface, %ld, is not wifi";
        v9 = v7;
        v10 = 22;
        goto LABEL_14;
      }
    }
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      v8 = "Invalid parameter not satisfying: wifiNoi";
      goto LABEL_8;
    }
  }

LABEL_11:
}

- (void)didStopTrackingNOI:(id)i
{
  iCopy = i;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__RTNetworkOfInterestManager_didStopTrackingNOI___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = iCopy;
  selfCopy = self;
  v6 = iCopy;
  dispatch_async(queue, v7);
}

void __49__RTNetworkOfInterestManager_didStopTrackingNOI___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) interface];
  if (v2 == 1)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v5 _didStopTrackingWifiNOI:v6];
  }

  else if (v2 == 2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v3 _didStopTrackingCellNOI:v4];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) interface];
      v9 = 136315394;
      v10 = "[RTNetworkOfInterestManager didStopTrackingNOI:]_block_invoke";
      v11 = 1024;
      v12 = v8;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%s, received noi for unsupported interface, %d", &v9, 0x12u);
    }
  }
}

- (void)_didStopTrackingCellNOI:(id)i
{
  v16 = *MEMORY[0x277D85DE8];
  iCopy = i;
  if (!iCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    LOWORD(v12) = 0;
    v9 = "Invalid parameter not satisfying: cellNoi";
    v10 = v8;
    v11 = 2;
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v9, &v12, v11);
    goto LABEL_7;
  }

  cellNoi = [(RTNetworkOfInterestManager *)self cellNoi];
  v6 = [iCopy isEqual:cellNoi];

  if ((v6 & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = 136315394;
    v13 = "[RTNetworkOfInterestManager _didStopTrackingCellNOI:]";
    v14 = 2112;
    v15 = iCopy;
    v9 = "%s, unrecognized noi, %@";
    v10 = v8;
    v11 = 22;
    goto LABEL_10;
  }

  cellNoi2 = [(RTNetworkOfInterestManager *)self cellNoi];
  [cellNoi2 removeObserver:self forKeyPath:@"linkQuality"];

  [(RTNetworkOfInterestManager *)self setCellNoi:0];
  [(RTNetworkOfInterestManager *)self setCellLinkQuality:0];
LABEL_8:
}

- (void)_didStopTrackingWifiNOI:(id)i
{
  v16 = *MEMORY[0x277D85DE8];
  iCopy = i;
  if (!iCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    LOWORD(v12) = 0;
    v9 = "Invalid parameter not satisfying: wifiNoi";
    v10 = v8;
    v11 = 2;
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v9, &v12, v11);
    goto LABEL_7;
  }

  wifiNoi = [(RTNetworkOfInterestManager *)self wifiNoi];
  v6 = [iCopy isEqual:wifiNoi];

  if ((v6 & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = 136315394;
    v13 = "[RTNetworkOfInterestManager _didStopTrackingWifiNOI:]";
    v14 = 2112;
    v15 = iCopy;
    v9 = "%s, unrecognized noi, %@";
    v10 = v8;
    v11 = 22;
    goto LABEL_10;
  }

  wifiNoi2 = [(RTNetworkOfInterestManager *)self wifiNoi];
  [wifiNoi2 removeObserver:self forKeyPath:@"linkQuality"];

  [(RTNetworkOfInterestManager *)self setWifiNoi:0];
  [(RTNetworkOfInterestManager *)self setWifiLinkQuality:0];
LABEL_8:
}

- (void)_processCellNetworkOfInterestChange:(int64_t)change
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(RTNetworkOfInterestManager *)self convertLinkQuality:change];
  if (v4 == [(RTNetworkOfInterestManager *)self cellLinkQuality])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    getCellLinkQualityNotification = _rt_log_facility_get_os_log(RTLogFacilityReachability);
    if (os_log_type_enabled(getCellLinkQualityNotification, OS_LOG_TYPE_DEBUG))
    {
      v6 = RTLinkQualityToString();
      v10 = 136315394;
      v11 = "[RTNetworkOfInterestManager _processCellNetworkOfInterestChange:]";
      v12 = 2112;
      v13 = v6;
      _os_log_debug_impl(&dword_2304B3000, getCellLinkQualityNotification, OS_LOG_TYPE_DEBUG, "%s, no change in linkQuality, %@", &v10, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        [(RTNetworkOfInterestManager *)self cellLinkQuality];
        v8 = RTLinkQualityToString();
        v9 = RTLinkQualityToString();
        v10 = 136315650;
        v11 = "[RTNetworkOfInterestManager _processCellNetworkOfInterestChange:]";
        v12 = 2112;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, linkQuality changed from, %@, to, %@", &v10, 0x20u);
      }
    }

    [(RTNetworkOfInterestManager *)self setCellLinkQuality:v4];
    getCellLinkQualityNotification = [(RTNetworkOfInterestManager *)self getCellLinkQualityNotification];
    [(RTNotifier *)self postNotification:getCellLinkQualityNotification];
  }
}

- (void)_processWifiNetworkOfInterestChange:(int64_t)change
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(RTNetworkOfInterestManager *)self convertLinkQuality:change];
  if (v4 == [(RTNetworkOfInterestManager *)self wifiLinkQuality])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    getWifiLinkQualityNotification = _rt_log_facility_get_os_log(RTLogFacilityReachability);
    if (os_log_type_enabled(getWifiLinkQualityNotification, OS_LOG_TYPE_DEBUG))
    {
      v6 = RTLinkQualityToString();
      v10 = 136315394;
      v11 = "[RTNetworkOfInterestManager _processWifiNetworkOfInterestChange:]";
      v12 = 2112;
      v13 = v6;
      _os_log_debug_impl(&dword_2304B3000, getWifiLinkQualityNotification, OS_LOG_TYPE_DEBUG, "%s, no change in linkQuality, %@", &v10, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        [(RTNetworkOfInterestManager *)self wifiLinkQuality];
        v8 = RTLinkQualityToString();
        v9 = RTLinkQualityToString();
        v10 = 136315650;
        v11 = "[RTNetworkOfInterestManager _processWifiNetworkOfInterestChange:]";
        v12 = 2112;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, linkQuality changed from, %@, to, %@", &v10, 0x20u);
      }
    }

    [(RTNetworkOfInterestManager *)self setWifiLinkQuality:v4];
    getWifiLinkQualityNotification = [(RTNetworkOfInterestManager *)self getWifiLinkQualityNotification];
    [(RTNotifier *)self postNotification:getWifiLinkQualityNotification];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__RTNetworkOfInterestManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_2788C50E8;
  block[4] = self;
  v18 = pathCopy;
  v19 = objectCopy;
  v20 = changeCopy;
  contextCopy = context;
  v14 = changeCopy;
  v15 = objectCopy;
  v16 = pathCopy;
  dispatch_async(queue, block);
}

- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v17 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  cellNoi = [(RTNetworkOfInterestManager *)self cellNoi];
  v9 = [objectCopy isEqual:cellNoi];

  if (v9)
  {
    -[RTNetworkOfInterestManager _processCellNetworkOfInterestChange:](self, "_processCellNetworkOfInterestChange:", [objectCopy linkQuality]);
  }

  else
  {
    wifiNoi = [(RTNetworkOfInterestManager *)self wifiNoi];
    v11 = [objectCopy isEqual:wifiNoi];

    if (v11)
    {
      -[RTNetworkOfInterestManager _processWifiNetworkOfInterestChange:](self, "_processWifiNetworkOfInterestChange:", [objectCopy linkQuality]);
    }

    else
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "[RTNetworkOfInterestManager _observeValueForKeyPath:ofObject:change:context:]";
        v15 = 2112;
        v16 = objectCopy;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%s, Unexpected noi, %@", &v13, 0x16u);
      }
    }
  }
}

- (unint64_t)convertLinkQuality:(int64_t)quality
{
  v3 = 3;
  v4 = 4;
  if (quality != 100)
  {
    v4 = 0;
  }

  if (quality != 50)
  {
    v3 = v4;
  }

  v5 = 1;
  v6 = 2;
  if (quality != 20)
  {
    v6 = 0;
  }

  if (quality)
  {
    v5 = v6;
  }

  if (quality <= 49)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

- (id)getCellLinkQualityNotification
{
  v2 = [[RTNetworkOfInterestManagerCellLinkQualityChangedNotification alloc] initWithLinkQuality:[(RTNetworkOfInterestManager *)self cellLinkQuality]];

  return v2;
}

- (id)getWifiLinkQualityNotification
{
  v2 = [[RTNetworkOfInterestManagerWifiLinkQualityChangedNotification alloc] initWithLinkQuality:[(RTNetworkOfInterestManager *)self wifiLinkQuality]];

  return v2;
}

@end