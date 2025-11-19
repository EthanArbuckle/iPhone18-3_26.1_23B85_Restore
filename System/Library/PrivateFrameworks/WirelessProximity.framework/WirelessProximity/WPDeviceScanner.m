@interface WPDeviceScanner
- (WPDeviceScanner)initWithDelegate:(id)a3 queue:(id)a4;
- (WPDeviceScannerDelegate)delegate;
- (id)description;
- (void)addPuckType:(id)a3 toDictionary:(id)a4;
- (void)anyDiscoveredDevice:(id)a3;
- (void)deviceDiscovered:(id)a3;
- (void)invalidate;
- (void)parseAirPrint:(char *)a3 forSize:(int)a4 intoDictionary:(id)a5;
- (void)parseCompanyData:(char *)a3 forSize:(int)a4 intoDictionary:(id)a5;
- (void)postDevice:(id)a3;
- (void)postDevices:(id)a3;
- (void)registerForDevicesMatching:(id)a3 options:(id)a4;
- (void)scanningFailedToStart:(id)a3 ofType:(unsigned __int8)a4;
- (void)stateDidChange:(int64_t)a3;
- (void)timerFinished:(id)a3;
- (void)unregisterAllDeviceChanges;
- (void)unregisterForDevices:(id)a3;
@end

@implementation WPDeviceScanner

- (WPDeviceScanner)initWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = WPDeviceScanner;
  v7 = [(WPClient *)&v14 initWithQueue:a4 machName:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v9 = [MEMORY[0x277CBEB18] array];
    liveDevices = v8->_liveDevices;
    v8->_liveDevices = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    activeScans = v8->_activeScans;
    v8->_activeScans = v11;

    v8->_anyScanResultsRequested = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v9.receiver = self;
  v9.super_class = WPDeviceScanner;
  v4 = [(WPClient *)&v9 description];
  v5 = [v3 stringWithString:v4];

  v6 = [(WPDeviceScanner *)self liveDevices];
  v7 = [(WPDeviceScanner *)self activeScans];
  [v5 appendFormat:@". LiveDevices = %@, Scans = %@", v6, v7];

  return v5;
}

- (void)invalidate
{
  [(WPDeviceScanner *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = WPDeviceScanner;
  [(WPClient *)&v3 invalidate];
}

- (void)registerForDevicesMatching:(id)a3 options:(id)a4
{
  v53[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 objectForKeyedSubscript:@"kPuckTypes"];
  v8 = [v6 allKeys];
  v9 = [v8 containsObject:@"kScanDuration"];

  v35 = v6;
  if (v9)
  {
    v10 = [v6 objectForKeyedSubscript:@"kScanDuration"];
    v11 = MEMORY[0x277CBEBB8];
    [v10 floatValue];
    v13 = [v11 scheduledTimerWithTimeInterval:self target:sel_timerFinished_ selector:0 userInfo:0 repeats:v12];
    v14 = [(WPDeviceScanner *)self activeScans];
    v52[0] = @"kPuckTypes";
    v52[1] = @"kFoundDevices";
    v53[0] = v7;
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v53[1] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
    v17 = [v13 description];
    [v14 setValue:v16 forKey:v17];
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v10 = v7;
    v18 = [v10 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v47;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v47 != v20)
          {
            objc_enumerationMutation(v10);
          }

          v22 = *(*(&v46 + 1) + 8 * i);
          v23 = [(WPDeviceScanner *)self liveDevices];
          v24 = [v23 containsObject:v10];

          if ((v24 & 1) == 0)
          {
            v25 = [(WPDeviceScanner *)self liveDevices];
            [v25 addObject:v22];
          }
        }

        v19 = [v10 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v19);
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v7;
  v26 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (!v26)
  {
    goto LABEL_28;
  }

  v27 = v26;
  v28 = *v43;
  v36 = vdupq_n_s64(0x12CuLL);
  v37 = vdupq_n_s64(0x17uLL);
  while (2)
  {
    for (j = 0; j != v27; ++j)
    {
      if (*v43 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(*(&v42 + 1) + 8 * j);
      v31 = objc_opt_new();
      if ([v30 isEqualToString:@"WPPuckCompany"])
      {
        [v31 setActiveScanning:1];
        v40 = v37;
        v32 = 23;
LABEL_21:
        v41 = v32;
        [v31 setScanningRates:&v40];
        v33 = 2;
        goto LABEL_24;
      }

      if ([v30 isEqualToString:@"WPPuckBeaconNoRanging"])
      {
        v40 = v36;
        v32 = 30;
        goto LABEL_21;
      }

      if (![v30 isEqualToString:@"WPPuckAirPrint"])
      {

        goto LABEL_28;
      }

      v40 = xmmword_27435CEA0;
      v41 = 30;
      [v31 setScanningRates:&v40];
      v33 = 3;
LABEL_24:
      [v31 setAllowDuplicates:1];
      [v31 setClientType:v33];
      v39.receiver = self;
      v39.super_class = WPDeviceScanner;
      [(WPClient *)&v39 startScanning:v31];
    }

    v27 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v27)
    {
      continue;
    }

    break;
  }

LABEL_28:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForDevices:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKey:@"kPuckTypes"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        if (([v9 isEqualToString:@"WPPuckCompany"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"WPPuckBeaconNoRanging"))
        {
          v10 = objc_opt_new();
          [v10 setClientType:2];
          [(WPClient *)&v15 stopScanning:v10, v14.receiver, v14.super_class, self, WPDeviceScanner];
LABEL_9:

          goto LABEL_10;
        }

        if ([v9 isEqualToString:@"WPPuckAirPrint"])
        {
          v10 = objc_opt_new();
          [v10 setClientType:3];
          [(WPClient *)&v14 stopScanning:v10, self, WPDeviceScanner, v15.receiver, v15.super_class];
          goto LABEL_9;
        }

LABEL_10:
        ++v8;
      }

      while (v6 != v8);
      v11 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v6 = v11;
    }

    while (v11);
  }

  v12 = [(WPDeviceScanner *)self liveDevices];
  [v12 removeObjectsInArray:v4];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)unregisterAllDeviceChanges
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"kPuckTypes";
  v3 = [(WPDeviceScanner *)self liveDevices];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(WPDeviceScanner *)self unregisterForDevices:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stateDidChange:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = WPDeviceScanner;
  [(WPClient *)&v7 stateDidChange:a3];
  v4 = [(WPDeviceScanner *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WPDeviceScanner *)self delegate];
    [v6 deviceScannerDidUpdateState:self];
  }
}

- (void)anyDiscoveredDevice:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kDeviceRSSI"];
  v6 = [v4 objectForKeyedSubscript:@"kDevicePeripheralUUID"];
  v7 = [v4 objectForKeyedSubscript:@"kDeviceAdvertisingData"];
  v8 = [v4 objectForKeyedSubscript:@"kDeviceChannel"];
  v9 = [v4 objectForKeyedSubscript:@"kDeviceAdvertisingPacket"];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBDD20]];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBDD50]];
  v12 = [v4 objectForKeyedSubscript:@"kDeviceTime"];

  if (v7)
  {
    if ([v7 length] > 3)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v23 = self;
      v24 = v5;
      v16 = *([v7 bytes] + 2);
      [v15 setObject:v5 forKeyedSubscript:@"kPuckRSSI"];
      [v15 setObject:v6 forKeyedSubscript:@"kPuckID"];
      [v15 setObject:v10 forKeyedSubscript:@"kPuckSaturated"];
      [v15 setObject:v11 forKeyedSubscript:@"kPuckWlanOn"];
      [v15 setObject:v8 forKeyedSubscript:@"kPuckAdvertisingChannel"];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v16];
      v25[0] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      [v15 setObject:v18 forKeyedSubscript:@"kPuckTypes"];

      v19 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v7 length:{"bytes") + 4, (objc_msgSend(v7, "length") - 4)}];
      [v15 setObject:v19 forKeyedSubscript:@"kPuckAdvertisingData"];

      [v15 setObject:v12 forKeyedSubscript:@"kPuckDeviceTime"];
      v20 = [(WPDeviceScanner *)v23 delegate];
      LOBYTE(v17) = objc_opt_respondsToSelector();

      if (v17)
      {
        v21 = [(WPDeviceScanner *)v23 delegate];
        [v21 scanner:v23 foundAnyDevice:v6 withData:v15];
      }

      v5 = v24;
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDeviceScanner anyDiscoveredDevice:];
      }

      v13 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [(WPDeviceScanner *)v13 anyDiscoveredDevice:v7];
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDeviceScanner anyDiscoveredDevice:];
    }

    v14 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDeviceScanner anyDiscoveredDevice:v14];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)deviceDiscovered:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kDeviceRSSI"];
  v6 = [v4 objectForKeyedSubscript:@"kDevicePeripheralUUID"];
  v7 = [v4 objectForKeyedSubscript:@"kDeviceAdvertisingData"];
  v8 = [v4 objectForKeyedSubscript:@"kDeviceChannel"];
  v9 = [v4 objectForKeyedSubscript:@"kDeviceAdvertisingPacket"];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBDD20]];
  v44 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBDD50]];
  v43 = [v4 objectForKeyedSubscript:@"kDeviceTime"];
  if (!v7)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDeviceScanner deviceDiscovered:];
    }

    v12 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDeviceScanner anyDiscoveredDevice:v12];
    }

    goto LABEL_40;
  }

  if ([v7 length] <= 3)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDeviceScanner deviceDiscovered:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPDeviceScanner *)v11 anyDiscoveredDevice:v7];
    }

    goto LABEL_40;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = [v7 bytes];
  v50 = *(v14 + 2);
  [v13 setObject:v5 forKeyedSubscript:@"kPuckRSSI"];
  [v13 setObject:v6 forKeyedSubscript:@"kPuckID"];
  v42 = v10;
  [v13 setObject:v10 forKeyedSubscript:@"kPuckSaturated"];
  [v13 setObject:v44 forKeyedSubscript:@"kPuckWlanOn"];
  [v13 setObject:v8 forKeyedSubscript:@"kPuckAdvertisingChannel"];
  [v13 setObject:v43 forKeyedSubscript:@"kPuckDeviceTime"];
  if (!-[WPDeviceScanner parseType:atOffset:withSize:intoDictionary:](self, "parseType:atOffset:withSize:intoDictionary:", v50, v14 + 4, [v7 length] - 4, v13))
  {
    goto LABEL_39;
  }

  v37 = v8;
  v38 = v7;
  v39 = v6;
  v40 = v5;
  v41 = v4;
  v49 = [v13 objectForKeyedSubscript:@"kPuckTypes"];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v15 = [(WPDeviceScanner *)self activeScans];
  v16 = [v15 allKeys];

  obj = v16;
  v51 = [v16 countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (!v51)
  {
    goto LABEL_29;
  }

  v47 = self;
  v48 = *v61;
  v46 = v13;
  do
  {
    for (i = 0; i != v51; ++i)
    {
      if (*v61 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v60 + 1) + 8 * i);
      v19 = [(WPDeviceScanner *)self activeScans];
      v20 = [v19 objectForKeyedSubscript:v18];

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v21 = v49;
      v22 = [v21 countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (!v22)
      {
        goto LABEL_26;
      }

      v23 = v22;
      v24 = 0;
      v25 = *v57;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v57 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v56 + 1) + 8 * j);
          v28 = [v20 objectForKeyedSubscript:@"kPuckTypes"];
          LOBYTE(v27) = [v28 containsObject:v27];

          v24 |= v27;
        }

        v23 = [v21 countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v23);

      v13 = v46;
      self = v47;
      if (v24)
      {
        v21 = [v20 objectForKeyedSubscript:@"kFoundDevices"];
        [v21 addObject:v46];
LABEL_26:
      }
    }

    v51 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
  }

  while (v51);
LABEL_29:

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v29 = v49;
  v30 = [v29 countByEnumeratingWithState:&v52 objects:v64 count:16];
  v8 = v37;
  if (v30)
  {
    v31 = v30;
    v32 = *v53;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v53 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v52 + 1) + 8 * k);
        v35 = [(WPDeviceScanner *)self liveDevices];
        LODWORD(v34) = [v35 containsObject:v34];

        if (v34)
        {
          [(WPDeviceScanner *)self postDevice:v13];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v31);
  }

  v5 = v40;
  v4 = v41;
  v7 = v38;
  v6 = v39;
LABEL_39:

  v10 = v42;
LABEL_40:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)parseCompanyData:(char *)a3 forSize:(int)a4 intoDictionary:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v21 = 0uLL;
  if (a4 < 16 || (v21 = *a3, a4 < 0x12))
  {
    v8 = 0;
    goto LABEL_8;
  }

  v8 = __rev16(*(a3 + 8));
  if (a4 < 0x14)
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v9 = __rev16(*(a3 + 9));
  if (a4 == 20)
  {
LABEL_9:
    v11 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v10 = a3[20];
  if (a4 < 0x16)
  {
    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3[21]];
  }

LABEL_10:
  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v21];
  if (v12)
  {
    [v7 setObject:v12 forKeyedSubscript:@"kPuckCompanyUUID"];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDeviceScanner parseCompanyData:forSize:intoDictionary:];
    }

    v13 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "Company UUID was nil", buf, 2u);
    }
  }

  v14 = [MEMORY[0x277CCABB0] numberWithChar:v10];
  [v7 setObject:v14 forKeyedSubscript:@"kPuckTx"];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  [v7 setObject:v15 forKeyedSubscript:@"kPuckCompanyMajor"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  [v7 setObject:v16 forKeyedSubscript:@"kPuckCompanyMinor"];

  if (v11)
  {
    [v7 setObject:v11 forKeyedSubscript:@"kPuckConfig"];
    if (WPLogInitOnce != -1)
    {
      [WPDeviceScanner parseCompanyData:forSize:intoDictionary:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDeviceScanner parseCompanyData:v11 forSize:v17 intoDictionary:?];
    }
  }

  [(WPDeviceScanner *)self addPuckType:@"WPPuckBeaconNoRanging" toDictionary:v7];
  [(WPDeviceScanner *)self addPuckType:@"WPPuckCompany" toDictionary:v7];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)parseAirPrint:(char *)a3 forSize:(int)a4 intoDictionary:(id)a5
{
  if (a3 && a4)
  {
    v7 = MEMORY[0x277CBEA90];
    v8 = a4;
    v10 = a5;
    v9 = [v7 dataWithBytes:a3 length:v8];
    [v10 setObject:v9 forKeyedSubscript:@"kPuckAirPrintData"];

    [(WPDeviceScanner *)self addPuckType:@"WPPuckAirPrint" toDictionary:v10];
  }
}

- (void)addPuckType:(id)a3 toDictionary:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [v5 objectForKey:@"kPuckTypes"];
  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"kPuckTypes"];
    [v8 addObject:v6];
  }

  else
  {
    v9 = MEMORY[0x277CBEB18];
    v13[0] = v6;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v11 = [v9 arrayWithArray:v10];

    [v5 setObject:v11 forKey:@"kPuckTypes"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)postDevice:(id)a3
{
  v8 = a3;
  v4 = [(WPDeviceScanner *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WPDeviceScanner *)self delegate];
    v7 = [v8 objectForKeyedSubscript:@"kPuckID"];
    [v6 scanner:self foundDevice:v7 withData:v8];
  }
}

- (void)postDevices:(id)a3
{
  v7 = a3;
  v4 = [(WPDeviceScanner *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WPDeviceScanner *)self delegate];
    [v6 scanner:self foundRequestedDevices:v7];
  }
}

- (void)scanningFailedToStart:(id)a3 ofType:(unsigned __int8)a4
{
  v8 = a3;
  v5 = [(WPDeviceScanner *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WPDeviceScanner *)self delegate];
    [v7 scanner:self didFailToRegisterDevices:0 withError:v8];
  }
}

- (void)timerFinished:(id)a3
{
  v4 = a3;
  v5 = [(WPDeviceScanner *)self activeScans];
  v6 = [v4 description];
  v10 = [v5 objectForKeyedSubscript:v6];

  v7 = [v10 objectForKeyedSubscript:@"kFoundDevices"];
  [(WPDeviceScanner *)self postDevices:v7];

  v8 = [(WPDeviceScanner *)self activeScans];
  v9 = [v4 description];

  [v8 removeObjectForKey:v9];
}

- (WPDeviceScannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)anyDiscoveredDevice:(void *)a1 .cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 length];
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "Device Scanner: Minimum advertisement data length expected: 4, received: %lu", v6, v7, v8, v9, 0);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)parseCompanyData:(unsigned __int8)a1 forSize:(NSObject *)a2 intoDictionary:.cold.3(unsigned __int8 a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = @"kPuckConfig";
  v5 = 1024;
  v6 = a1;
  _os_log_debug_impl(&dword_274327000, a2, OS_LOG_TYPE_DEBUG, "%@: %02x", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

@end