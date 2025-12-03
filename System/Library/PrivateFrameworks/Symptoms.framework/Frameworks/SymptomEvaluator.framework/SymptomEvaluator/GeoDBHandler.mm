@interface GeoDBHandler
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (BOOL)noteSymptom:(id)symptom;
- (BOOL)processSymptom:(id)symptom;
- (GeoDBHandler)init;
- (id)coordinatesToGeoHashWithLength:(unint64_t)length latitude:(double)latitude longitude:(double)longitude;
- (id)fetchEstimatedISOCountryCode;
- (int)read:(id)read returnedValues:(id)values;
- (int64_t)nwInterfaceTypeFromAPSDInterface:(unint64_t)interface;
- (void)_administrativeDisable;
- (void)_administrativeEnable;
- (void)completeInitialization;
- (void)dealloc;
- (void)donateBiomeEventForEdgeSelectionWithPrefix:(id)prefix interfaceType:(id)type radioType:(id)radioType radioBand:(id)band latitude:(double)latitude longitude:(double)longitude reply:(id)reply;
- (void)donateBiomeEventForEdgeSelectionWithPrefixComplete:(id)complete error:(id)error;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)processSymptomForInterfaceType:(int64_t)type;
@end

@implementation GeoDBHandler

- (GeoDBHandler)init
{
  v40 = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = GeoDBHandler;
  v2 = [(GeoDBHandler *)&v37 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.symptoms.geoiptracking.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v2->_adminState = 2;
    v2->_adminStateSettled = 0;
    v6 = +[SystemSettingsRelay defaultRelay];
    geoIPTrackingFeatureFlagEnabled = [v6 geoIPTrackingFeatureFlagEnabled];

    if (geoIPTrackingFeatureFlagEnabled)
    {
      [(GeoDBHandler *)v2 _administrativeEnable];
    }

    else
    {
      [(GeoDBHandler *)v2 _administrativeDisable];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __20__GeoDBHandler_init__block_invoke;
    v35[3] = &unk_27898A690;
    v9 = v2;
    v36 = v9;
    v10 = [defaultCenter addObserverForName:@"stateRelay" object:0 queue:0 usingBlock:v35];
    relayReadyObserver = v9->_relayReadyObserver;
    v9->_relayReadyObserver = v10;

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __20__GeoDBHandler_init__block_invoke_5;
    v33[3] = &unk_27898A690;
    v12 = v9;
    v34 = v12;
    v13 = [defaultCenter addObserverForName:@"kNotificationNewConnectivityEpochCell" object:0 queue:0 usingBlock:v33];
    cellEpochObserver = v12->_cellEpochObserver;
    v12->_cellEpochObserver = v13;

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __20__GeoDBHandler_init__block_invoke_7;
    v31[3] = &unk_27898A690;
    v15 = v12;
    v32 = v15;
    v16 = [defaultCenter addObserverForName:@"kNotificationNewConnectivityEpochWiFi" object:0 queue:0 usingBlock:v31];
    wifiEpochObserver = v15->_wifiEpochObserver;
    v15->_wifiEpochObserver = v16;

    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __20__GeoDBHandler_init__block_invoke_9;
    v29 = &unk_27898A690;
    v18 = v15;
    v30 = v18;
    v19 = [defaultCenter addObserverForName:@"kNotificationNewConnectivityEpochWired" object:0 queue:0 usingBlock:&v26];
    wiredEpochObserver = v18->_wiredEpochObserver;
    v18->_wiredEpochObserver = v19;

    v21 = [ManagedConfigurationUtils sharedInstance:v26];
    [v21 addObserver:v18 forKeyPath:@"diagnosticsAndUsageEnabled" options:1 context:0];
    v18->_isDnUOptedIn = [v21 diagnosticsAndUsageEnabled];
    v22 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (v18->_isDnUOptedIn)
      {
        v23 = @"enabled";
      }

      else
      {
        v23 = @"disabled";
      }

      *buf = 138412290;
      v39 = v23;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "GeoIP: Diagnostic log submission %@ via DnU switch (initial)", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v2;
}

void __20__GeoDBHandler_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(*(a1 + 32) + 48)];

  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;

  v5 = *(a1 + 32);
  if (*(v5 + 8) == 1)
  {
    v6 = [v5 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__GeoDBHandler_init__block_invoke_2;
    block[3] = &unk_27898A0C8;
    v10 = *(a1 + 32);
    dispatch_async(v6, block);
  }

  else
  {
    *(v5 + 152) = 1;
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "GeoIP: admin state is OFF and settled", v8, 2u);
    }
  }
}

void __20__GeoDBHandler_init__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4[2] == 1)
  {
    v5 = [v4 queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __20__GeoDBHandler_init__block_invoke_2_6;
    v9[3] = &unk_27898A7D0;
    v10 = v3;
    v11 = *(a1 + 32);
    dispatch_async(v5, v9);
  }

  else
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:*(*(a1 + 32) + 56)];

    v7 = *(a1 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = 0;
  }
}

void __20__GeoDBHandler_init__block_invoke_2_6(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v10 = 138477827;
    v11 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "GeoIP: Cell epoch change: %{private}@", &v10, 0xCu);
  }

  v6 = [*(a1 + 32) userInfo];
  v7 = [v6 objectForKeyedSubscript:@"State"];
  *(*(a1 + 40) + 153) = [v7 BOOLValue];

  if (*(*(a1 + 40) + 153) == 1)
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "GeoIP: Cell epoch ready, will process any stored apsd event", &v10, 2u);
    }

    [*(a1 + 40) processSymptomForInterfaceType:2];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __20__GeoDBHandler_init__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4[2] == 1)
  {
    v5 = [v4 queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __20__GeoDBHandler_init__block_invoke_2_8;
    v9[3] = &unk_27898A7D0;
    v10 = v3;
    v11 = *(a1 + 32);
    dispatch_async(v5, v9);
  }

  else
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:*(*(a1 + 32) + 64)];

    v7 = *(a1 + 32);
    v8 = *(v7 + 64);
    *(v7 + 64) = 0;
  }
}

void __20__GeoDBHandler_init__block_invoke_2_8(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v10 = 138477827;
    v11 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "GeoIP: Wi-Fi epoch change: %{private}@", &v10, 0xCu);
  }

  v6 = [*(a1 + 32) userInfo];
  v7 = [v6 objectForKeyedSubscript:@"State"];
  *(*(a1 + 40) + 154) = [v7 BOOLValue];

  if (*(*(a1 + 40) + 154) == 1)
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "GeoIP: Wi-Fi epoch ready, will process any stored apsd event", &v10, 2u);
    }

    [*(a1 + 40) processSymptomForInterfaceType:1];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __20__GeoDBHandler_init__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4[2] == 1)
  {
    v5 = [v4 queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __20__GeoDBHandler_init__block_invoke_2_10;
    v9[3] = &unk_27898A7D0;
    v10 = v3;
    v11 = *(a1 + 32);
    dispatch_async(v5, v9);
  }

  else
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:*(*(a1 + 32) + 72)];

    v7 = *(a1 + 32);
    v8 = *(v7 + 72);
    *(v7 + 72) = 0;
  }
}

void __20__GeoDBHandler_init__block_invoke_2_10(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v10 = 138477827;
    v11 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "GeoIP: Wired epoch change: %{private}@", &v10, 0xCu);
  }

  v6 = [*(a1 + 32) userInfo];
  v7 = [v6 objectForKeyedSubscript:@"State"];
  *(*(a1 + 40) + 155) = [v7 BOOLValue];

  if (*(*(a1 + 40) + 155) == 1)
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "GeoIP: Wired epoch ready, will process any stored apsd event", &v10, 2u);
    }

    [*(a1 + 40) processSymptomForInterfaceType:3];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)completeInitialization
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__GeoDBHandler_completeInitialization__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (completeInitialization_pred != -1)
  {
    dispatch_once(&completeInitialization_pred, block);
  }
}

void __38__GeoDBHandler_completeInitialization__block_invoke(uint64_t a1)
{
  v2 = [NetworkStateRelay getStateRelayFor:5];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = [NetworkStateRelay getStateRelayFor:3];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  v8 = [NetworkStateRelay getStateRelayFor:2];
  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  *(v9 + 32) = v8;

  v11 = +[LocationStateRelay sharedInstance];
  v12 = *(a1 + 32);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "GeoIP: State relays ready", v15, 2u);
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = defaultCenter;
  if (self->_relayReadyObserver)
  {
    [defaultCenter removeObserver:?];
  }

  if (self->_wifiEpochObserver)
  {
    [v4 removeObserver:?];
  }

  if (self->_cellEpochObserver)
  {
    [v4 removeObserver:?];
  }

  if (self->_wiredEpochObserver)
  {
    [v4 removeObserver:?];
  }

  v5 = +[ManagedConfigurationUtils sharedInstance];
  [v5 removeObserver:self forKeyPath:@"diagnosticsAndUsageEnabled"];

  v6.receiver = self;
  v6.super_class = GeoDBHandler;
  [(GeoDBHandler *)&v6 dealloc];
}

- (int64_t)nwInterfaceTypeFromAPSDInterface:(unint64_t)interface
{
  if (interface > 2)
  {
    return 0;
  }

  else
  {
    return qword_2328171E8[interface];
  }
}

- (BOOL)processSymptom:(id)symptom
{
  v43 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = symptomCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "GeoIP: Processing symptom: %@", buf, 0xCu);
  }

  eventKey = [symptomCopy eventKey];
  eventData = [symptomCopy eventData];
  if (eventData)
  {
    v8 = eventData;
    if (*(eventData + 4))
    {
      v16 = *(eventData + 24);
      v17 = [(GeoDBHandler *)self nwInterfaceTypeFromAPSDInterface:v16];
      if (!v17)
      {
        v18 = netepochsLogHandle;
        if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        *buf = 138412546;
        v40 = eventKey;
        v41 = 2048;
        v42 = v16;
        v10 = "GeoIP: Incoming %@ symptom has unsupported interface %llu, dropping";
        v11 = v18;
        v12 = 22;
        goto LABEL_8;
      }

      if ((*(v8 + 7) & 0x40) == 0)
      {
        v9 = netepochsLogHandle;
        if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        *buf = 138412290;
        v40 = eventKey;
        v10 = "GeoIP: Incoming %@ symptom has missing additional qualifier, dropping";
        goto LABEL_7;
      }

      v19 = v17;
      eventQualifiers = [symptomCopy eventQualifiers];
      v21 = [eventQualifiers objectForKeyedSubscript:@"0"];

      if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v25 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v26 = v25;
          v27 = objc_opt_class();
          *buf = 138412546;
          v40 = eventKey;
          v41 = 2112;
          v42 = v27;
          v28 = v27;
          _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "GeoIP: Incoming %@ symptom has nil IP, or unexpected class %@, dropping", buf, 0x16u);
        }

        goto LABEL_48;
      }

      v22 = [v21 length];
      if (v22 == 4)
      {
        v24 = 24;
      }

      else
      {
        v23 = v22;
        if (v22 != 16)
        {
          v35 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138478083;
            v40 = v21;
            v41 = 2048;
            v42 = v23;
            v36 = "GeoIP: Unexpected public IP address %{private}@ length %lu";
LABEL_40:
            _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_ERROR, v36, buf, 0x16u);
          }

LABEL_48:
          v13 = 0;
LABEL_49:

          goto LABEL_10;
        }

        v24 = 56;
      }

      v29 = ipAddrToStringWithPrefix(v21, v24);
      v30 = v29;
      if (!v29 || ![v29 length])
      {
        v34 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138477827;
          v40 = v21;
          _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_ERROR, "GeoIP: Could not convert IP address %{private}@ to string", buf, 0xCu);
        }

        goto LABEL_48;
      }

      v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%d", v30, v24];

      if (v31)
      {
        switch(v19)
        {
          case 1:
            p_wifiIPPrefix = &self->_wifiIPPrefix;
            wifiIPPrefix = self->_wifiIPPrefix;
            if (!wifiIPPrefix)
            {
              goto LABEL_50;
            }

            break;
          case 3:
            p_wifiIPPrefix = &self->_wiredIPPrefix;
            wifiIPPrefix = self->_wiredIPPrefix;
            if (!wifiIPPrefix)
            {
              goto LABEL_50;
            }

            break;
          case 2:
            p_wifiIPPrefix = &self->_cellIPPrefix;
            wifiIPPrefix = self->_cellIPPrefix;
            if (!wifiIPPrefix)
            {
              goto LABEL_50;
            }

            break;
          default:
LABEL_45:
            v37 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138478083;
              v40 = v31;
              v41 = 2048;
              v42 = v19;
              _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEFAULT, "GeoIP: Dropping symptom as received IP prefix %{private}@ same as stored, interfaceType: %ld", buf, 0x16u);
            }

            goto LABEL_48;
        }

        if ([(NSString *)wifiIPPrefix isEqualToString:v31])
        {
          goto LABEL_45;
        }

LABEL_50:
        objc_storeStrong(p_wifiIPPrefix, v31);
        v38 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138478083;
          v40 = v31;
          v41 = 2048;
          v42 = v19;
          _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_DEFAULT, "GeoIP: Storing IP prefix: %{private}@, interfaceType: %ld", buf, 0x16u);
        }

        [(GeoDBHandler *)self processSymptomForInterfaceType:v19];

        v13 = 1;
        goto LABEL_49;
      }

      v35 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v40 = v21;
        v41 = 2048;
        v42 = v19;
        v36 = "GeoIP: Failed to create CIDR prefix from IP: %{private}@, interfaceType: %ld";
        goto LABEL_40;
      }

      goto LABEL_48;
    }
  }

  v9 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v40 = eventKey;
    v10 = "GeoIP: Incoming %@ symptom has missing qualifier, dropping";
LABEL_7:
    v11 = v9;
    v12 = 12;
LABEL_8:
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
  }

LABEL_9:
  v13 = 0;
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)processSymptomForInterfaceType:(int64_t)type
{
  v50 = *MEMORY[0x277D85DE8];
  if (self->_isDnUOptedIn)
  {
    v5 = 0.0;
    switch(type)
    {
      case 3:
        p_lastDonatedWiredIPPrefix = &self->_lastDonatedWiredIPPrefix;
        v7 = self->_lastDonatedWiredIPPrefix;
        wiredIPPrefix = self->_wiredIPPrefix;
        v9 = wiredIPPrefix;
        if (self->_wiredEpochReady)
        {
          if (self->_wiredIPPrefix)
          {
            if (self->_wiredRelay)
            {
              if (self->_locationRelay)
              {
                if (!*p_lastDonatedWiredIPPrefix || !self->_lastDonatedWiredIPPrefixDate || (v23 = objc_alloc_init(MEMORY[0x277CBEAA8]), [v23 timeIntervalSinceDate:self->_lastDonatedWiredIPPrefixDate], v5 = v24, v23, !-[NSString isEqualToString:](self->_wiredIPPrefix, "isEqualToString:", self->_lastDonatedWiredIPPrefix)) && v5 > 600.0)
                {
                  objc_storeStrong(&self->_lastDonatedWiredIPPrefix, wiredIPPrefix);
                  v12 = [InterfaceUtils stringForInterfaceType:3];
                  v13 = [NetworkAnalyticsEngine mapRadioTechnologyTypeToString:[(NetworkStateRelay *)self->_wiredRelay radioTechnology]];
                  v14 = &stru_2847966D8;
                  v15 = 144;
                  goto LABEL_34;
                }
              }
            }
          }
        }

        break;
      case 2:
        p_lastDonatedCellIPPrefix = &self->_lastDonatedCellIPPrefix;
        v7 = self->_lastDonatedCellIPPrefix;
        cellIPPrefix = self->_cellIPPrefix;
        v9 = cellIPPrefix;
        if (self->_cellEpochReady)
        {
          if (self->_cellIPPrefix)
          {
            if (self->_cellRelay)
            {
              if (self->_locationRelay)
              {
                if (!*p_lastDonatedCellIPPrefix || !self->_lastDonatedCellIPPrefixDate || (v19 = objc_alloc_init(MEMORY[0x277CBEAA8]), [v19 timeIntervalSinceDate:self->_lastDonatedCellIPPrefixDate], v5 = v20, v19, !-[NSString isEqualToString:](self->_cellIPPrefix, "isEqualToString:", self->_lastDonatedCellIPPrefix)) && v5 > 600.0)
                {
                  objc_storeStrong(&self->_lastDonatedCellIPPrefix, cellIPPrefix);
                  v12 = [InterfaceUtils stringForInterfaceType:2];
                  v13 = [NetworkAnalyticsEngine mapRadioTechnologyTypeToString:[(NetworkStateRelay *)self->_cellRelay radioTechnology]];
                  v14 = [NetworkAnalyticsEngine mapNrFrequencyBandToString:[(CellularStateRelay *)self->_cellRelay nrFrequencyBand]];
                  v15 = 128;
                  goto LABEL_34;
                }
              }
            }
          }
        }

        break;
      case 1:
        p_lastDonatedWiFiIPPrefix = &self->_lastDonatedWiFiIPPrefix;
        v7 = self->_lastDonatedWiFiIPPrefix;
        wifiIPPrefix = self->_wifiIPPrefix;
        v9 = wifiIPPrefix;
        if (self->_wifiEpochReady)
        {
          if (self->_wifiIPPrefix)
          {
            if (self->_wifiRelay)
            {
              if (self->_locationRelay)
              {
                if (!*p_lastDonatedWiFiIPPrefix || !self->_lastDonatedWiFiIPPrefixDate || (v10 = objc_alloc_init(MEMORY[0x277CBEAA8]), [v10 timeIntervalSinceDate:self->_lastDonatedWiFiIPPrefixDate], v5 = v11, v10, !-[NSString isEqualToString:](self->_wifiIPPrefix, "isEqualToString:", self->_lastDonatedWiFiIPPrefix)) && v5 > 600.0)
                {
                  objc_storeStrong(&self->_lastDonatedWiFiIPPrefix, wifiIPPrefix);
                  v12 = [InterfaceUtils stringForInterfaceType:1];
                  v13 = [NetworkAnalyticsEngine mapRadioTechnologyTypeToString:[(NetworkStateRelay *)self->_wifiRelay radioTechnology]];
                  v14 = &stru_2847966D8;
                  v15 = 136;
LABEL_34:
                  v25 = objc_alloc_init(MEMORY[0x277CBEAA8]);
                  v26 = *(&self->super.isa + v15);
                  *(&self->super.isa + v15) = v25;

                  locationRelay = self->_locationRelay;
                  queue = [(GeoDBHandler *)self queue];
                  v34[0] = MEMORY[0x277D85DD0];
                  v34[1] = 3221225472;
                  v34[2] = __47__GeoDBHandler_processSymptomForInterfaceType___block_invoke;
                  v34[3] = &unk_278990268;
                  v34[4] = self;
                  v9 = v9;
                  v35 = v9;
                  v36 = v12;
                  v37 = v13;
                  v38 = v14;
                  v39 = v5;
                  v29 = v14;
                  v30 = v13;
                  v31 = v12;
                  [(LocationStateRelay *)locationRelay fetchCurrentLocationLOIOnQueue:queue desiredAccuracy:v34 reply:1000.0];

LABEL_38:
                  goto LABEL_39;
                }
              }
            }
          }
        }

        break;
      default:
        v7 = 0;
        v9 = 0;
        break;
    }

    v32 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478851;
      v41 = v9;
      v42 = 2113;
      v43 = v7;
      v44 = 2048;
      v45 = v5;
      v46 = 1024;
      v47 = 600;
      v48 = 2048;
      typeCopy = type;
      _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEBUG, "GeoIP: Skip Biome donation as relays/epochs not ready, or conditions not met, stored: %{private}@, lastDonated: %{private}@, elapsed/threshold: %f/%d sec, interfaceType: %ld", buf, 0x30u);
    }

    goto LABEL_38;
  }

  v16 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "GeoIP: Diagnostic log submission disabled via DnU switch", buf, 2u);
  }

LABEL_39:
  v33 = *MEMORY[0x277D85DE8];
}

void __47__GeoDBHandler_processSymptomForInterfaceType___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v28 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v35 = 138412290;
    v36 = v9;
    v29 = "GeoIP: Failed to get location, error: %@";
    v30 = v28;
    v31 = OS_LOG_TYPE_DEFAULT;
    v32 = 12;
LABEL_14:
    _os_log_impl(&dword_23255B000, v30, v31, v29, &v35, v32);
    goto LABEL_15;
  }

  v10 = [*(a1 + 32) proxyAnalytics];

  if (!v10)
  {
    v11 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v35 = 138477827;
      v36 = v12;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "GeoIP: Creating new ProxyAnalytics to donate prefix: %{private}@", &v35, 0xCu);
    }

    v13 = objc_opt_new();
    [*(a1 + 32) setProxyAnalytics:v13];

    v14 = *(a1 + 32);
    v15 = [v14 proxyAnalytics];
    [v15 setDelegate:v14];
  }

  v16 = [*(a1 + 32) proxyAnalytics];

  if (!v16)
  {
    v33 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    LOWORD(v35) = 0;
    v29 = "GeoIP: proxyAnalytics is nil, cannot donate to Biome";
    v30 = v33;
    v31 = OS_LOG_TYPE_ERROR;
    v32 = 2;
    goto LABEL_14;
  }

  [v8 coordinate];
  v18 = v17;
  [v8 coordinate];
  v20 = v19;
  v21 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    v25 = *(a1 + 64);
    v26 = *(a1 + 72);
    v35 = 138479619;
    v36 = v22;
    v37 = 2112;
    v38 = v23;
    v39 = 2112;
    v40 = v24;
    v41 = 2112;
    v42 = v25;
    v43 = 2049;
    v44 = v18;
    v45 = 2049;
    v46 = v20;
    v47 = 2048;
    v48 = v26;
    v49 = 1024;
    v50 = 600;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "GeoIP: Helper takes over Biome donation for EdgeSelection with prefix: %{private}@, interface: %@, radio: %@, band: %@, latitude: %{private}f, longitude: %{private}f, elapsed/threshold: %f/%d sec", &v35, 0x4Eu);
  }

  v27 = [*(a1 + 32) proxyAnalytics];
  [v27 donateBiomeEventForEdgeSelectionWithPrefix:*(a1 + 40) interfaceType:*(a1 + 48) radioType:*(a1 + 56) radioBand:*(a1 + 64) latitude:v18 longitude:v20];

LABEL_15:
  v34 = *MEMORY[0x277D85DE8];
}

- (void)donateBiomeEventForEdgeSelectionWithPrefixComplete:(id)complete error:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  errorCopy = error;
  v7 = netepochsLogHandle;
  if (errorCopy)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = errorCopy;
      v8 = "GeoIP: Biome event donation for EdgeSelection failed with error: %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
LABEL_6:
      _os_log_impl(&dword_23255B000, v9, v10, v8, &v13, v11);
    }
  }

  else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    v8 = "GeoIP: Biome event donation for EdgeSelection complete";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 2;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)coordinatesToGeoHashWithLength:(unint64_t)length latitude:(double)latitude longitude:(double)longitude
{
  v36[2] = *MEMORY[0x277D85DE8];
  v10 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 134218496;
    latitudeCopy2 = latitude;
    v30 = 2048;
    longitudeCopy2 = longitude;
    v32 = 2048;
    lengthCopy3 = length;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "GeoIP: Computing geohash for latitude: %f, longitude: %f, hashLength: %zu", &v28, 0x20u);
  }

  if (length >= 0xD)
  {
    [GeoDBHandler coordinatesToGeoHashWithLength:a2 latitude:self longitude:?];
  }

  v11 = 0;
  v12 = 1 << (5 * length - 1);
  v13 = 180.0;
  v14 = -180.0;
  v15 = 90.0;
  v16 = -90.0;
  do
  {
    v17 = v14 + (v13 - v14) * 0.5;
    if (v17 <= longitude)
    {
      v18 = v12;
    }

    else
    {
      v18 = 0;
    }

    v11 |= v18;
    if (v12 == 1)
    {
      break;
    }

    if (v17 > longitude)
    {
      v13 = v14 + (v13 - v14) * 0.5;
    }

    else
    {
      v14 = v14 + (v13 - v14) * 0.5;
    }

    v19 = v12 >> 1;
    if (v16 + (v15 - v16) * 0.5 <= latitude)
    {
      v16 = v16 + (v15 - v16) * 0.5;
    }

    else
    {
      v15 = v16 + (v15 - v16) * 0.5;
      v19 = 0;
    }

    v11 |= v19;
    v20 = v12 > 3;
    v12 >>= 2;
  }

  while (v20);
  memset(v36, 0, 13);
  if (length)
  {
    v21 = 5 * length - 5;
    v22 = v36;
    lengthCopy2 = length;
    do
    {
      *v22++ = geoHashBase32Map[(v11 >> v21) & 0x1F];
      v21 -= 5;
      --lengthCopy2;
    }

    while (lengthCopy2);
  }

  v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v36];
  v25 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 134218754;
    latitudeCopy2 = latitude;
    v30 = 2048;
    longitudeCopy2 = longitude;
    v32 = 2048;
    lengthCopy3 = length;
    v34 = 2112;
    v35 = v24;
    _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEFAULT, "GeoIP: Computed geohash for latitude: %f, longitude: %f, hashLength: %zu, geohash: %@", &v28, 0x2Au);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)fetchEstimatedISOCountryCode
{
  v21 = *MEMORY[0x277D85DE8];
  if (dlopen("/System/Library/PrivateFrameworks/RegulatoryDomain.framework/RegulatoryDomain", 6))
  {
    Class = objc_getClass("RDEstimate");
    currentEstimates = [(objc_class *)Class currentEstimates];
    v4 = currentEstimates;
    if (currentEstimates && [currentEstimates count])
    {
      v5 = [v4 objectAtIndexedSubscript:0];
      countryCode = [v5 countryCode];
      v7 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412546;
        v18 = countryCode;
        v19 = 2112;
        v20 = v4;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "GeoIP: Current bestEstimate: %@, currentEstimates: %@", &v17, 0x16u);
      }

      v8 = countryCode;

LABEL_12:
      goto LABEL_17;
    }

    lastKnownEstimates = [(objc_class *)Class lastKnownEstimates];
    v10 = lastKnownEstimates;
    if (lastKnownEstimates && [lastKnownEstimates count])
    {
      v11 = [v10 objectAtIndexedSubscript:0];
      countryCode2 = [v11 countryCode];
      v13 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412546;
        v18 = countryCode2;
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "GeoIP: Last known bestEstimate: %@, lastKnownEstimates: %@", &v17, 0x16u);
      }

      v8 = countryCode2;

      goto LABEL_12;
    }
  }

  else
  {
    v14 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "GeoIP: Failed to load RegulatoryDomain", &v17, 2u);
    }
  }

  v8 = 0;
LABEL_17:
  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)donateBiomeEventForEdgeSelectionWithPrefix:(id)prefix interfaceType:(id)type radioType:(id)radioType radioBand:(id)band latitude:(double)latitude longitude:(double)longitude reply:(id)reply
{
  v90 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  typeCopy = type;
  radioTypeCopy = radioType;
  bandCopy = band;
  replyCopy = reply;
  if (prefixCopy)
  {
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    name = [localTimeZone name];

    if (!name || ![name length])
    {
      v39 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = name;
        _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_ERROR, "GeoIP: Missing localTimeZone: %@, return", &buf, 0xCu);
      }

      if (!replyCopy)
      {
        goto LABEL_40;
      }

      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
      replyCopy[2](replyCopy, 0, v25);
      goto LABEL_39;
    }

    v23 = [prefixCopy componentsSeparatedByString:@"/"];
    v24 = v23;
    if (v23 && [v23 count] == 2)
    {
      v25 = [v24 objectAtIndex:0];
      v26 = [v24 objectAtIndex:1];
      integerValue = [v26 integerValue];
      v28 = 6;
      if (integerValue < 25)
      {
        v28 = 4;
      }

      v71 = v28;
      v74 = integerValue;

      if (v25 && [v25 length])
      {
        v29 = [(GeoDBHandler *)self coordinatesToGeoHashWithLength:3 latitude:latitude longitude:longitude];
        v30 = v29;
        if (!v29 || ![v29 length])
        {
          v44 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v30;
            _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "GeoIP: Missing geohash: %@, return", &buf, 0xCu);
          }

          if (replyCopy)
          {
            v45 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
            replyCopy[2](replyCopy, 0, v45);
          }

          goto LABEL_37;
        }

        v70 = v30;
        Class = objc_getClass("CLLocation");
        v32 = objc_getClass("CLGeocoder");
        log = netepochsLogHandle;
        v33 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
        v68 = Class;
        if (!Class || !v32)
        {
          if (v33)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "GeoIP: Failed to load CLLocation or CLGeocoder", &buf, 2u);
          }

          v30 = v70;
          goto LABEL_37;
        }

        if (v33)
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "GeoIP: Successfully loaded CLLocation and CLGeocoder", &buf, 2u);
        }

        v30 = v70;
        v69 = [[v68 alloc] initWithLatitude:latitude longitude:longitude];
        loga = objc_alloc_init(v32);
        v34 = dispatch_group_create();
        dispatch_group_enter(v34);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v86 = 0x3032000000;
        v87 = __Block_byref_object_copy__18;
        v88 = __Block_byref_object_dispose__18;
        v89 = 0;
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = __118__GeoDBHandler_donateBiomeEventForEdgeSelectionWithPrefix_interfaceType_radioType_radioBand_latitude_longitude_reply___block_invoke;
        v78[3] = &unk_278990290;
        p_buf = &buf;
        v35 = v34;
        v79 = v35;
        [loga reverseGeocodeLocation:v69 completionHandler:v78];
        v36 = dispatch_time(0, 30000000000);
        v63 = v35;
        v37 = dispatch_group_wait(v35, v36);
        if (v37 || (v46 = *(*(&buf + 1) + 40)) == 0)
        {
          v75 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *v81 = 134217984;
            v82 = v37;
            _os_log_impl(&dword_23255B000, v75, OS_LOG_TYPE_DEFAULT, "GeoIP: Timed out waiting for reverse geocoding, error: %ld", v81, 0xCu);
          }

          if (!replyCopy)
          {
            locality = 0;
            iSOcountryCode = 0;
            goto LABEL_66;
          }

          v38 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
          replyCopy[2](replyCopy, 0, v38);
          locality = 0;
          iSOcountryCode = 0;
LABEL_21:

LABEL_66:
          _Block_object_dispose(&buf, 8);

          goto LABEL_37;
        }

        locality = [v46 locality];
        iSOcountryCode = [*(*(&buf + 1) + 40) ISOcountryCode];
        v47 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *v81 = 138478083;
          v82 = locality;
          v83 = 2113;
          v84 = iSOcountryCode;
          _os_log_impl(&dword_23255B000, v47, OS_LOG_TYPE_DEFAULT, "GeoIP: Reverse geocoding city: %{private}@, countryCode: %{private}@", v81, 0x16u);
        }

        if (!iSOcountryCode || ![iSOcountryCode length] || !locality || !objc_msgSend(locality, "length"))
        {
          v54 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
          {
            *v81 = 138412546;
            v82 = iSOcountryCode;
            v83 = 2112;
            v84 = locality;
            _os_log_impl(&dword_23255B000, v54, OS_LOG_TYPE_ERROR, "GeoIP: Missing isoCountryCode: %@ or city: %@, return", v81, 0x16u);
          }

          if (!replyCopy)
          {
            goto LABEL_66;
          }

          v38 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
          replyCopy[2](replyCopy, 0, v38);
          goto LABEL_21;
        }

        v62 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-%@", v70, locality];
        if (dlopen("/System/Library/PrivateFrameworks/BiomeLibrary.framework/BiomeLibrary", 6))
        {
          v60 = objc_alloc(objc_getClass("BMDeviceEdgeSelection"));
          v72 = [MEMORY[0x277CCABB0] numberWithInteger:v71];
          v48 = [MEMORY[0x277CCABB0] numberWithInteger:v74];
          v76 = [v60 initWithPublicIPPrefix:v25 addressFamily:v72 prefixLength:v48 interfaceType:typeCopy radioType:radioTypeCopy radioBand:bandCopy country:iSOcountryCode timeZone:name geohash:v62];

          v49 = __softlink__BiomeLibrary();
          v73 = v49;
          if (v49)
          {
            v77 = 0;
            v50 = [v49 streamWithIdentifier:@"Device.Networking.EdgeSelection" error:&v77];
            v51 = v77;
            v61 = v50;
            if (v50 && !v51)
            {
              source = [v50 source];
              [source sendEvent:v76];
              v52 = netepochsLogHandle;
              if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *v81 = 138477827;
                v82 = v76;
                _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_DEFAULT, "GeoIP: Donated Biome event to stream Device.Networking.EdgeSelection: %{private}@", v81, 0xCu);
              }

              if (replyCopy)
              {
                replyCopy[2](replyCopy, 0, 0);
              }

              v30 = v70;
              v53 = v76;
              goto LABEL_81;
            }

            v57 = v51;
            v58 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
            {
              *v81 = 138412290;
              v82 = v57;
              _os_log_impl(&dword_23255B000, v58, OS_LOG_TYPE_ERROR, "GeoIP: Failed to create a Biome stream, error: %@", v81, 0xCu);
            }

            v30 = v70;
          }

          else
          {
            v56 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
            {
              *v81 = 0;
              _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_ERROR, "GeoIP: Failed to load root library node from BiomeLibrary", v81, 2u);
            }
          }
        }

        else
        {
          v55 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
          {
            *v81 = 0;
            _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_ERROR, "GeoIP: Failed to load BiomeLibrary", v81, 2u);
          }
        }

        if (!replyCopy)
        {
LABEL_82:
          v38 = v62;
          goto LABEL_21;
        }

        v53 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
        replyCopy[2](replyCopy, 0, v53);
LABEL_81:

        goto LABEL_82;
      }
    }

    else
    {
      v41 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = prefixCopy;
        _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_ERROR, "GeoIP: malformed prefix: %@", &buf, 0xCu);
      }

      v25 = 0;
    }

    v42 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_ERROR, "GeoIP: final check on prefix failed, return", &buf, 2u);
    }

    if (!replyCopy)
    {
      goto LABEL_38;
    }

    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    replyCopy[2](replyCopy, 0, v30);
LABEL_37:

LABEL_38:
LABEL_39:

    goto LABEL_40;
  }

  v40 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_ERROR, "GeoIP: prefix is nil, return", &buf, 2u);
  }

  if (replyCopy)
  {
    name = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    replyCopy[2](replyCopy, 0, name);
LABEL_40:
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __118__GeoDBHandler_donateBiomeEventForEdgeSelectionWithPrefix_interfaceType_radioType_radioBand_latitude_longitude_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "GeoIP: Reverse geocoding failed, error: %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v24 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  changeCopy = change;
  if ([(__CFString *)pathCopy isEqualToString:@"diagnosticsAndUsageEnabled"])
  {
    v10 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      self->_isDnUOptedIn = [v10 BOOLValue];
      v11 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_isDnUOptedIn)
        {
          v12 = @"enabled";
        }

        else
        {
          v12 = @"disabled";
        }

        v18 = 138412290;
        v19 = v12;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "GeoIP: Diagnostic log submission is now %@ via DnU switch", &v18, 0xCu);
      }
    }

    else
    {
      v13 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v18 = 138412802;
        v19 = pathCopy;
        v20 = 2112;
        v21 = v10;
        v22 = 2112;
        v23 = v16;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "GeoIP: Unexpected change for keypath: %@, newValue %@ is of class %@", &v18, 0x20u);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_administrativeEnable
{
  if (self->_adminState == 2)
  {
    v7 = v2;
    v8 = v3;
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "GeoIP: Enabling geoIP tracking", v6, 2u);
    }

    self->_adminState = 1;
  }
}

- (void)_administrativeDisable
{
  if (self->_adminState == 1)
  {
    v7 = v2;
    v8 = v3;
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "GeoIP: Disabling geoIP tracking", v6, 2u);
    }

    self->_adminState = 2;
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__GeoDBHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_48 != -1)
  {
    dispatch_once(&sharedInstance_pred_48, block);
  }

  v2 = sharedInstance_sharedInstance_50;

  return v2;
}

void __30__GeoDBHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_50;
  sharedInstance_sharedInstance_50 = v1;

  v3 = sharedInstance_sharedInstance_50;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[GeoDBHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (int)read:(id)read returnedValues:(id)values
{
  valuesCopy = values;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [valuesCopy setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

- (BOOL)noteSymptom:(id)symptom
{
  v30 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  v5 = symptomCopy;
  if (self->_isDnUOptedIn)
  {
    eventKey = [symptomCopy eventKey];
    v7 = [SymptomStore keyFromSymptomName:@"com.apple.apsd.public-ip"];
    v8 = [eventKey isEqualToString:v7];

    if (v8)
    {
      adminState = self->_adminState;
      if (adminState != 2)
      {
        if (adminState != 1)
        {
          v14 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
          {
            v15 = self->_adminState;
            *buf = 138412546;
            v27 = eventKey;
            v28 = 1024;
            v29 = v15;
            _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "GeoIP: Received %@ symptom when admin state is %d", buf, 0x12u);
          }

          goto LABEL_13;
        }

        queue = [(GeoDBHandler *)self queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __28__GeoDBHandler_noteSymptom___block_invoke;
        block[3] = &unk_27898A328;
        v23 = eventKey;
        selfCopy = self;
        v25 = v5;
        dispatch_async(queue, block);

        v11 = v23;
        goto LABEL_10;
      }

      if (!self->_adminStateSettled)
      {
        queue2 = [(GeoDBHandler *)self queue];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __28__GeoDBHandler_noteSymptom___block_invoke_76;
        v18[3] = &unk_27898A328;
        v19 = eventKey;
        selfCopy2 = self;
        v21 = v5;
        dispatch_async(queue2, v18);

        v11 = v19;
LABEL_10:
      }
    }

LABEL_13:

    goto LABEL_14;
  }

  v12 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "GeoIP: Diagnostic log submission disabled via DnU switch, dropping apsd symptom", buf, 2u);
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __28__GeoDBHandler_noteSymptom___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "GeoIP: Received %@ symptom when admin state is ON", &v6, 0xCu);
  }

  result = [*(a1 + 40) processSymptom:*(a1 + 48)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __28__GeoDBHandler_noteSymptom___block_invoke_76(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "GeoIP: Received %@ symptom when admin state is OFF, but not settled, will store symptom", &v6, 0xCu);
  }

  result = [*(a1 + 40) processSymptom:*(a1 + 48)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)coordinatesToGeoHashWithLength:(uint64_t)a1 latitude:(uint64_t)a2 longitude:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GeoDBHandler.m" lineNumber:521 description:{@"Invalid parameter not satisfying: %@", @"hashLength <= GEOHASH_MAX_LENGTH"}];
}

@end