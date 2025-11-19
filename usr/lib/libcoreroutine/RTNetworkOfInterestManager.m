@interface RTNetworkOfInterestManager
- (RTNetworkOfInterestManager)init;
- (RTNetworkOfInterestManager)initWithNoiManager:(id)a3;
- (id)getCellLinkQualityNotification;
- (id)getWifiLinkQualityNotification;
- (unint64_t)convertLinkQuality:(int64_t)a3;
- (void)_didStartTrackingCellNOI:(id)a3;
- (void)_didStartTrackingWifiNOI:(id)a3;
- (void)_didStopTrackingCellNOI:(id)a3;
- (void)_didStopTrackingWifiNOI:(id)a3;
- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)_processCellNetworkOfInterestChange:(int64_t)a3;
- (void)_processWifiNetworkOfInterestChange:(int64_t)a3;
- (void)_setup;
- (void)_shutdownWithHandler:(id)a3;
- (void)didStartTrackingNOI:(id)a3;
- (void)didStopTrackingNOI:(id)a3;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation RTNetworkOfInterestManager

- (RTNetworkOfInterestManager)init
{
  v3 = objc_alloc_init(MEMORY[0x277D6B6D8]);
  v4 = [(RTNetworkOfInterestManager *)self initWithNoiManager:v3];

  return v4;
}

- (RTNetworkOfInterestManager)initWithNoiManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = RTNetworkOfInterestManager;
    v6 = [(RTNotifier *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_noiManager, a3);
      v7->_cellLinkQuality = 0;
      v7->_wifiLinkQuality = 0;
      [(RTService *)v7 setup];
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: noiManager", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)_setup
{
  v3 = [(RTNetworkOfInterestManager *)self noiManager];
  v4 = [(RTNotifier *)self queue];
  [v3 setQueue:v4];

  v5 = [(RTNetworkOfInterestManager *)self noiManager];
  [v5 setDelegate:self];

  v6 = [(RTNetworkOfInterestManager *)self noiManager];
  [v6 trackNOIAnyForInterfaceType:2 options:0];

  v7 = [(RTNetworkOfInterestManager *)self noiManager];
  [v7 trackNOIAnyForInterfaceType:1 options:0];
}

- (void)_shutdownWithHandler:(id)a3
{
  v9 = a3;
  [(RTNetworkOfInterestManager *)self setCellLinkQuality:0];
  v4 = [(RTNetworkOfInterestManager *)self cellNoi];

  if (v4)
  {
    v5 = [(RTNetworkOfInterestManager *)self cellNoi];
    [v5 removeObserver:self forKeyPath:@"linkQuality"];

    [(RTNetworkOfInterestManager *)self setCellNoi:0];
  }

  [(RTNetworkOfInterestManager *)self setWifiLinkQuality:0];
  v6 = [(RTNetworkOfInterestManager *)self wifiNoi];

  if (v6)
  {
    v7 = [(RTNetworkOfInterestManager *)self wifiNoi];
    [v7 removeObserver:self forKeyPath:@"linkQuality"];

    [(RTNetworkOfInterestManager *)self setWifiNoi:0];
  }

  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, 0);
    v8 = v9;
  }
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[(RTNotification *)RTNetworkOfInterestManagerCellLinkQualityChangedNotification];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [(RTNetworkOfInterestManager *)self getCellLinkQualityNotification];
LABEL_5:
    v13 = v10;
    [(RTNotifier *)self postNotification:v10 toObserver:v6];

    goto LABEL_11;
  }

  v11 = +[(RTNotification *)RTNetworkOfInterestManagerWifiLinkQualityChangedNotification];
  v12 = [v7 isEqualToString:v11];

  if (v12)
  {
    v10 = [(RTNetworkOfInterestManager *)self getWifiLinkQualityNotification];
    goto LABEL_5;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = "[RTNetworkOfInterestManager internalAddObserver:name:]";
    v18 = 2112;
    v19 = v7;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%s, unsupported notification, %@", &v16, 0x16u);
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = 138412802;
    v17 = v7;
    v18 = 2080;
    v19 = "[RTNetworkOfInterestManager internalAddObserver:name:]";
    v20 = 1024;
    v21 = 123;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "unsupported notification, %@ (in %s:%d)", &v16, 0x1Cu);
  }

LABEL_11:
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = +[(RTNotification *)RTNetworkOfInterestManagerCellLinkQualityChangedNotification];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = +[(RTNotification *)RTNetworkOfInterestManagerWifiLinkQualityChangedNotification];
    v8 = [v4 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = v4;
        _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v11, 0xCu);
      }

      v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412802;
        v12 = v4;
        v13 = 2080;
        v14 = "[RTNetworkOfInterestManager internalRemoveObserver:name:]";
        v15 = 1024;
        v16 = 137;
        _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "unsupported notification, %@ (in %s:%d)", &v11, 0x1Cu);
      }
    }
  }
}

- (void)didStartTrackingNOI:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__RTNetworkOfInterestManager_didStartTrackingNOI___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)_didStartTrackingCellNOI:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 interface] == 2)
    {
      v6 = [(RTNetworkOfInterestManager *)self cellNoi];

      if (!v6)
      {
        [(RTNetworkOfInterestManager *)self setCellNoi:v5];
        v11 = [(RTNetworkOfInterestManager *)self cellNoi];
        [v11 addObserver:self forKeyPath:@"linkQuality" options:5 context:0];

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
        v15 = [v5 interface];
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

- (void)_didStartTrackingWifiNOI:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 interface] == 1)
    {
      v6 = [(RTNetworkOfInterestManager *)self wifiNoi];

      if (!v6)
      {
        [(RTNetworkOfInterestManager *)self setWifiNoi:v5];
        v11 = [(RTNetworkOfInterestManager *)self wifiNoi];
        [v11 addObserver:self forKeyPath:@"linkQuality" options:5 context:0];

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
        v15 = [v5 interface];
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

- (void)didStopTrackingNOI:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__RTNetworkOfInterestManager_didStopTrackingNOI___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)_didStopTrackingCellNOI:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
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

  v5 = [(RTNetworkOfInterestManager *)self cellNoi];
  v6 = [v4 isEqual:v5];

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
    v15 = v4;
    v9 = "%s, unrecognized noi, %@";
    v10 = v8;
    v11 = 22;
    goto LABEL_10;
  }

  v7 = [(RTNetworkOfInterestManager *)self cellNoi];
  [v7 removeObserver:self forKeyPath:@"linkQuality"];

  [(RTNetworkOfInterestManager *)self setCellNoi:0];
  [(RTNetworkOfInterestManager *)self setCellLinkQuality:0];
LABEL_8:
}

- (void)_didStopTrackingWifiNOI:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
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

  v5 = [(RTNetworkOfInterestManager *)self wifiNoi];
  v6 = [v4 isEqual:v5];

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
    v15 = v4;
    v9 = "%s, unrecognized noi, %@";
    v10 = v8;
    v11 = 22;
    goto LABEL_10;
  }

  v7 = [(RTNetworkOfInterestManager *)self wifiNoi];
  [v7 removeObserver:self forKeyPath:@"linkQuality"];

  [(RTNetworkOfInterestManager *)self setWifiNoi:0];
  [(RTNetworkOfInterestManager *)self setWifiLinkQuality:0];
LABEL_8:
}

- (void)_processCellNetworkOfInterestChange:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(RTNetworkOfInterestManager *)self convertLinkQuality:a3];
  if (v4 == [(RTNetworkOfInterestManager *)self cellLinkQuality])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = RTLinkQualityToString();
      v10 = 136315394;
      v11 = "[RTNetworkOfInterestManager _processCellNetworkOfInterestChange:]";
      v12 = 2112;
      v13 = v6;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%s, no change in linkQuality, %@", &v10, 0x16u);
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
    v5 = [(RTNetworkOfInterestManager *)self getCellLinkQualityNotification];
    [(RTNotifier *)self postNotification:v5];
  }
}

- (void)_processWifiNetworkOfInterestChange:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(RTNetworkOfInterestManager *)self convertLinkQuality:a3];
  if (v4 == [(RTNetworkOfInterestManager *)self wifiLinkQuality])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = RTLinkQualityToString();
      v10 = 136315394;
      v11 = "[RTNetworkOfInterestManager _processWifiNetworkOfInterestChange:]";
      v12 = 2112;
      v13 = v6;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%s, no change in linkQuality, %@", &v10, 0x16u);
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
    v5 = [(RTNetworkOfInterestManager *)self getWifiLinkQualityNotification];
    [(RTNotifier *)self postNotification:v5];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__RTNetworkOfInterestManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_2788C50E8;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(RTNetworkOfInterestManager *)self cellNoi];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    -[RTNetworkOfInterestManager _processCellNetworkOfInterestChange:](self, "_processCellNetworkOfInterestChange:", [v7 linkQuality]);
  }

  else
  {
    v10 = [(RTNetworkOfInterestManager *)self wifiNoi];
    v11 = [v7 isEqual:v10];

    if (v11)
    {
      -[RTNetworkOfInterestManager _processWifiNetworkOfInterestChange:](self, "_processWifiNetworkOfInterestChange:", [v7 linkQuality]);
    }

    else
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "[RTNetworkOfInterestManager _observeValueForKeyPath:ofObject:change:context:]";
        v15 = 2112;
        v16 = v7;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%s, Unexpected noi, %@", &v13, 0x16u);
      }
    }
  }
}

- (unint64_t)convertLinkQuality:(int64_t)a3
{
  v3 = 3;
  v4 = 4;
  if (a3 != 100)
  {
    v4 = 0;
  }

  if (a3 != 50)
  {
    v3 = v4;
  }

  v5 = 1;
  v6 = 2;
  if (a3 != 20)
  {
    v6 = 0;
  }

  if (a3)
  {
    v5 = v6;
  }

  if (a3 <= 49)
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