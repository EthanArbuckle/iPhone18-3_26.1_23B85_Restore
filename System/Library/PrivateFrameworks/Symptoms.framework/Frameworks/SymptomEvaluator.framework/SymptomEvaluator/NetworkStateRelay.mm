@interface NetworkStateRelay
+ (id)getStateRelayFor:(unsigned __int8)a3;
- (NSSet)defaultGateways;
- (NetworkAnalyticsQueueStatistics)queueStatistics;
- (id)description;
- (id)initForInternalType:(unsigned __int8)a3;
- (id)valueForUndefinedKey:(id)a3;
- (void)addDefaultGateway:(id)a3;
- (void)registerDelegate:(id)a3 lowerRSSIThreshold:(int)a4 upperRSSIThreshold:(int)a5 lowerSNRThreshold:(int)a6 upperSNRThreshold:(int)a7;
- (void)removeAllDefaultGateways;
- (void)setActive:(BOOL)a3;
- (void)setAdvisory:(int)a3;
- (void)setAppleServicesConnectionFriction:(BOOL)a3;
- (void)setApsdFailure:(BOOL)a3;
- (void)setArpOut:(BOOL)a3;
- (void)setConstrained:(BOOL)a3;
- (void)setDnsOut:(BOOL)a3;
- (void)setExpensive:(BOOL)a3;
- (void)setFirstAttachment:(BOOL)a3;
- (void)setInterfaceIndex:(unint64_t)a3;
- (void)setInterfaceName:(id)a3;
- (void)setInternetDnsOut:(BOOL)a3;
- (void)setKnowableSporadic:(BOOL)a3;
- (void)setKnownGood:(BOOL)a3;
- (void)setKnownSporadic:(BOOL)a3;
- (void)setLinkQuality:(int)a3;
- (void)setLoi:(int64_t)a3;
- (void)setLqmAsystole:(BOOL)a3;
- (void)setNoCostAdvantage:(BOOL)a3;
- (void)setPowerCostDL:(unsigned __int8)a3;
- (void)setPowerCostUL:(unsigned __int8)a3;
- (void)setPrimary:(BOOL)a3;
- (void)setRadioTechnology:(unsigned __int8)a3;
- (void)setRpmAvg:(double)a3;
- (void)setRpmCount:(double)a3;
- (void)setRpmExitAvg:(double)a3;
- (void)setRpmExitCount:(double)a3;
- (void)setRpmExitVar:(double)a3;
- (void)setRpmVar:(double)a3;
- (void)setRxRate:(double)a3;
- (void)setRxSignalExemptions:(unsigned int)a3;
- (void)setRxSignalFullBars:(BOOL)a3;
- (void)setRxSignalThresholded:(BOOL)a3;
- (void)setSignalBars:(unsigned __int8)a3;
- (void)setStuckDefRoute:(BOOL)a3;
- (void)setTcpExtraStatsPositive:(BOOL)a3;
- (void)setTcpProgressHintsScore:(unsigned int)a3;
- (void)setTxRate:(double)a3;
- (void)setTxThresholded:(BOOL)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)unregisterDelegate:(id)a3;
- (void)updateSNR:(int)a3 RSSI:(int)a4;
- (void)updateSignalStrength:(id)a3;
@end

@implementation NetworkStateRelay

- (NetworkAnalyticsQueueStatistics)queueStatistics
{
  if (!self->_queueStatistics)
  {
    if (self->_interfaceName)
    {
      v3 = [NetworkAnalyticsQueueStatistics alloc];
      v4 = [(NetworkStateRelay *)self interfaceName];
      v5 = [(NetworkAnalyticsQueueStatistics *)v3 initWithInterfaceName:v4];
      queueStatistics = self->_queueStatistics;
      self->_queueStatistics = v5;
    }

    else
    {
      v7 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "No interface name yet, cannot get queue statistics", v10, 2u);
      }
    }
  }

  v8 = self->_queueStatistics;

  return v8;
}

+ (id)getStateRelayFor:(unsigned __int8)a3
{
  v3 = a3;
  *&v10[5] = *MEMORY[0x277D85DE8];
  if (getStateRelayFor__onceToken != -1)
  {
    +[NetworkStateRelay getStateRelayFor:];
  }

  if (v3 <= 7 && ((1 << v3) & 0xAC) != 0)
  {
    v4 = [getStateRelayFor___interfaceRelays objectAtIndexedSubscript:v3];
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = 67109378;
      v10[0] = v3;
      LOWORD(v10[1]) = 2112;
      *(&v10[1] + 2) = v4;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "StateRelay for type %d: %@", &v9, 0x12u);
    }
  }

  else
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      *v10 = v3;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "StateRelay for interface type %ld is invalid", &v9, 0xCu);
    }

    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

void __38__NetworkStateRelay_getStateRelayFor___block_invoke()
{
  v26 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1 = getStateRelayFor___interfaceRelays;
  getStateRelayFor___interfaceRelays = v0;

  v2 = [[NetworkStateRelay alloc] initForInternalType:0];
  [getStateRelayFor___interfaceRelays setObject:v2 atIndexedSubscript:0];

  v3 = [MEMORY[0x277CBEB68] null];
  [getStateRelayFor___interfaceRelays setObject:v3 atIndexedSubscript:1];

  v4 = [[NetworkStateRelay alloc] initForInternalType:2];
  [getStateRelayFor___interfaceRelays setObject:v4 atIndexedSubscript:2];

  v5 = [(NetworkStateRelay *)[WiFiStateRelay alloc] initForInternalType:3];
  [getStateRelayFor___interfaceRelays setObject:v5 atIndexedSubscript:3];

  v6 = [MEMORY[0x277CBEB68] null];
  [getStateRelayFor___interfaceRelays setObject:v6 atIndexedSubscript:4];

  v7 = [[CellularStateRelay alloc] initForInternalType:5];
  [getStateRelayFor___interfaceRelays setObject:v7 atIndexedSubscript:5];

  v8 = [MEMORY[0x277CBEB68] null];
  [getStateRelayFor___interfaceRelays setObject:v8 atIndexedSubscript:6];

  v9 = [[NetworkStateRelay alloc] initForInternalType:7];
  [getStateRelayFor___interfaceRelays setObject:v9 atIndexedSubscript:7];

  v10 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = getStateRelayFor___interfaceRelays;
    v12 = v10;
    v13 = [v11 objectAtIndexedSubscript:3];
    v14 = [getStateRelayFor___interfaceRelays objectAtIndexedSubscript:5];
    v15 = [getStateRelayFor___interfaceRelays objectAtIndexedSubscript:2];
    v16 = [getStateRelayFor___interfaceRelays objectAtIndexedSubscript:7];
    v18 = 138413058;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v15;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "State relays created, sr wifi: %@, sr cell: %@, sr wired: %@, sr companion link %@", &v18, 0x2Au);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)initForInternalType:(unsigned __int8)a3
{
  v10.receiver = self;
  v10.super_class = NetworkStateRelay;
  v4 = [(NetworkStateRelay *)&v10 init];
  if (v4)
  {
    configurableThresholdLock = 0;
    v5 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:5];
    configurableThresholdDelegates = v4->_configurableThresholdDelegates;
    v4->_configurableThresholdDelegates = v5;

    v4->_functionalInterfaceType = a3;
    v4->_linkQuality = -2;
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    defaultGateways = v4->_defaultGateways;
    v4->_defaultGateways = v7;

    v4->_loi = -1;
  }

  return v4;
}

- (id)description
{
  v3 = [(NetworkStateRelay *)self functionalInterfaceType];
  v4 = "";
  if (v3 == 3)
  {
    if ([(NetworkStateRelay *)self loi])
    {
      v5 = [(NetworkStateRelay *)self loi];
      v4 = "/loi:unkn";
      if (v5 == 1)
      {
        v4 = "/loi:work";
      }
    }

    else
    {
      v4 = "/loi:home";
    }
  }

  v44 = v4;
  v46 = objc_alloc(MEMORY[0x277CCACA8]);
  v45 = [MEMORY[0x277D6B3E0] stringForFunctionalInterfaceType:{-[NetworkStateRelay functionalInterfaceType](self, "functionalInterfaceType")}];
  v43 = [v45 UTF8String];
  v6 = "-no";
  if ([(NetworkStateRelay *)self active])
  {
    v7 = "";
  }

  else
  {
    v7 = "-no";
  }

  v42 = v7;
  if ([(NetworkStateRelay *)self primary])
  {
    v8 = "";
  }

  else
  {
    v8 = "-no";
  }

  v41 = v8;
  if ([(NetworkStateRelay *)self constrained])
  {
    v9 = "";
  }

  else
  {
    v9 = "-no";
  }

  v40 = v9;
  if ([(NetworkStateRelay *)self expensive])
  {
    v10 = "";
  }

  else
  {
    v10 = "-no";
  }

  v39 = v10;
  if ([(NetworkStateRelay *)self rxSignalFullBars])
  {
    v11 = "";
  }

  else
  {
    v11 = "-no";
  }

  v38 = v11;
  if ([(NetworkStateRelay *)self rxSignalThresholded])
  {
    v12 = "";
  }

  else
  {
    v12 = "-no";
  }

  v37 = v12;
  if ([(NetworkStateRelay *)self txThresholded])
  {
    v13 = "";
  }

  else
  {
    v13 = "-no";
  }

  v36 = v13;
  v14 = "-ok";
  if ([(NetworkStateRelay *)self arpOut])
  {
    v15 = "-err";
  }

  else
  {
    v15 = "-ok";
  }

  v35 = v15;
  if ([(NetworkStateRelay *)self dnsOut])
  {
    v16 = "-err";
  }

  else
  {
    v16 = "-ok";
  }

  v34 = v16;
  if ([(NetworkStateRelay *)self internetDnsOut])
  {
    v17 = "-err";
  }

  else
  {
    v17 = "-ok";
  }

  v33 = v17;
  if ([(NetworkStateRelay *)self stuckDefRoute])
  {
    v18 = "-err";
  }

  else
  {
    v18 = "-ok";
  }

  v32 = v18;
  v31 = [(NetworkStateRelay *)self rxSignalExemptions];
  if ([(NetworkStateRelay *)self tcpExtraStatsPositive])
  {
    v6 = "";
  }

  if ([(NetworkStateRelay *)self apsdFailure])
  {
    v19 = "-err";
  }

  else
  {
    v19 = "-ok";
  }

  if ([(NetworkStateRelay *)self appleServicesConnectionFriction])
  {
    v14 = "-err";
  }

  v20 = [(NetworkStateRelay *)self tcpProgressHintsScore];
  v21 = [(NetworkStateRelay *)self linkQuality];
  v22 = [(NetworkStateRelay *)self advisory];
  v23 = [NetworkAnalyticsEngine mapPowerCost:[(NetworkStateRelay *)self powerCostDL]];
  v24 = [NetworkAnalyticsEngine mapPowerCost:[(NetworkStateRelay *)self powerCostUL]];
  v25 = [NetworkAnalyticsEngine mapRadioTechnology:[(NetworkStateRelay *)self radioTechnology]];
  [(NetworkStateRelay *)self txRate];
  v27 = v26;
  [(NetworkStateRelay *)self rxRate];
  v29 = [v46 initWithFormat:@"%s (active%s/primary%s/constrained%s/expensive%s/rssifull%s/rssithresh%s/txthresh%s/arp%s/dns%s/i-dns%s/i-stuck%s/rssiexempt:%d/tcp%s/apsd%s/1ppservconnfric%s/tcphints:%ld/lqm:%ld/advisory:%d/pwrDL:%ld/pwrUL:%ld/ic:%ld%s/txRate:%.1f/rxRate:%.1f)", v43, v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v6, v19, v14, v20, v21, v22, v23, v24, v25, v44, v27, v28];

  return v29;
}

- (void)registerDelegate:(id)a3 lowerRSSIThreshold:(int)a4 upperRSSIThreshold:(int)a5 lowerSNRThreshold:(int)a6 upperSNRThreshold:(int)a7
{
  v31 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = netepochsLogHandle;
  if (v12)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v22 = v12;
      v23 = 1024;
      v24 = a4;
      v25 = 1024;
      v26 = a5;
      v27 = 1024;
      v28 = a6;
      v29 = 1024;
      v30 = a7;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "Registering delegate %@ for threshold crossed notifications (RSSI: %d %d) (SNR: %d %d)", buf, 0x24u);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __112__NetworkStateRelay_registerDelegate_lowerRSSIThreshold_upperRSSIThreshold_lowerSNRThreshold_upperSNRThreshold___block_invoke;
    v15[3] = &unk_27898F7B0;
    v17 = a6;
    v18 = a7;
    v19 = a4;
    v20 = a5;
    v15[4] = self;
    v16 = v12;
    sf_synchronize(&configurableThresholdLock, v15);
  }

  else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "delegate is nil, not registering for notifications", buf, 2u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __112__NetworkStateRelay_registerDelegate_lowerRSSIThreshold_upperRSSIThreshold_lowerSNRThreshold_upperSNRThreshold___block_invoke(uint64_t a1)
{
  v2 = [[NetworkStateRssiSnrThresholdConfiguration alloc] initWithLowerSNRThreshold:*(a1 + 48) upperSNRThreshold:*(a1 + 52) lowerRSSIThreshold:*(a1 + 56) upperRSSIThreshold:*(a1 + 60)];
  [*(*(a1 + 32) + 16) setObject:v2 forKey:*(a1 + 40)];
}

- (void)unregisterDelegate:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = netepochsLogHandle;
  if (v4)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Unregistering delegate %@", buf, 0xCu);
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__NetworkStateRelay_unregisterDelegate___block_invoke;
    v7[3] = &unk_27898A7D0;
    v7[4] = self;
    v8 = v4;
    sf_synchronize(&configurableThresholdLock, v7);
  }

  else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "delegate is nil, not unregistering from notifications", buf, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateSNR:(int)a3 RSSI:(int)a4
{
  lastReportedSignalToNoiseRatio = self->_lastReportedSignalToNoiseRatio;
  lastReportedRxSignalStrength = self->_lastReportedRxSignalStrength;
  self->_lastReportedSignalToNoiseRatio = a3;
  self->_lastReportedRxSignalStrength = a4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__NetworkStateRelay_updateSNR_RSSI___block_invoke;
  v6[3] = &unk_27898D158;
  v6[4] = self;
  v7 = a3;
  v8 = lastReportedSignalToNoiseRatio;
  v9 = a4;
  v10 = lastReportedRxSignalStrength;
  sf_synchronize(&configurableThresholdLock, v6);
}

void __36__NetworkStateRelay_updateSNR_RSSI___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(*(a1 + 32) + 16);
  v2 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v33;
    v6 = &netepochsLogHandle;
    *&v3 = 138412290;
    v29 = v3;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = [*(*(a1 + 32) + 16) objectForKey:v8];
          v10 = v9;
          if (!v9)
          {
            v21 = *v6;
            if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
            {
              *buf = v29;
              v37 = v8;
              _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "config is nil for delegate %@, moving to next delegate", buf, 0xCu);
            }

            goto LABEL_45;
          }

          v11 = v4;
          v12 = v5;
          v13 = v6;
          v14 = [v9 upperSNRThreshold];
          v15 = [v10 lowerSNRThreshold];
          v30 = [v10 upperRSSIThreshold];
          v16 = [v10 lowerRSSIThreshold];
          v17 = *(a1 + 40);
          v18 = *(a1 + 44);
          if (v17 == v18)
          {
            v19 = 0;
          }

          else if (v17 >= 1 && !v18 || (v17 <= v14 ? (v22 = v18 <= v14) : (v22 = 1), !v22 || (v17 >= v14 ? (v23 = v18 < v14) : (v23 = 0), v23 || v17 <= v15 && v18 > v15 || (v19 = 0, v17 >= v15) && v18 < v15)))
          {
            v19 = 1;
          }

          v24 = *(a1 + 48);
          v25 = *(a1 + 52);
          v6 = v13;
          v5 = v12;
          v4 = v11;
          if (v24 == v25)
          {
LABEL_31:
            if (!v19)
            {
              goto LABEL_45;
            }

LABEL_44:
            [v8 l2MetricsCrossedAThresholdWithNewRSSI:v29 oldRSSI:? newSNR:? oldSNR:?];
          }

          else
          {
            if (v24 < 0 && !v25)
            {
              goto LABEL_44;
            }

            v26 = v24 > v30 || v25 <= v30;
            if (!v26 || v24 >= v30 && v25 < v30 || v24 <= v16 && v25 > v16)
            {
              goto LABEL_44;
            }

            if (v24 < v16)
            {
              goto LABEL_31;
            }

            if (v25 < v16)
            {
              LOBYTE(v19) = 1;
            }

            if (v19)
            {
              goto LABEL_44;
            }
          }

LABEL_45:

          goto LABEL_46;
        }

        v20 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v29;
          v37 = v8;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "skipping delegate %@", buf, 0xCu);
        }

LABEL_46:
        ++v7;
      }

      while (v4 != v7);
      v27 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      v4 = v27;
    }

    while (v27);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)setInterfaceName:(id)a3
{
  v5 = a3;
  if (self->_interfaceName != v5)
  {
    v6 = v5;
    [(NetworkStateRelay *)self willChangeValueForKey:@"interfaceName"];
    objc_storeStrong(&self->_interfaceName, a3);
    [(NetworkStateRelay *)self didChangeValueForKey:@"interfaceName"];
    v5 = v6;
  }
}

- (void)setInterfaceIndex:(unint64_t)a3
{
  if (self->_interfaceIndex != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"interfaceIndex"];
    self->_interfaceIndex = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"interfaceIndex"];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"active"];
    self->_active = a3;
    [(NetworkStateRelay *)self didChangeValueForKey:@"active"];
    v6 = [MEMORY[0x277D6B3E0] nwInterfaceTypeForNWFunctionalInterfaceType:self->_functionalInterfaceType];
    v7 = +[NetworkAnalyticsEngine sharedInstance];
    [v7 _createJournalRecordOfType:3 forInterface:v6 fromDict:0];
  }
}

- (void)setPrimary:(BOOL)a3
{
  if (self->_primary != a3)
  {
    v4 = a3;
    [(NetworkStateRelay *)self willChangeValueForKey:@"primary"];
    self->_primary = v4;
    if (v4)
    {
      v6 = [MEMORY[0x277CBEAA8] date];
    }

    else
    {
      v6 = 0;
    }

    madePrimaryDate = self->_madePrimaryDate;
    self->_madePrimaryDate = v6;

    [(NetworkStateRelay *)self didChangeValueForKey:@"primary"];
    v8 = [MEMORY[0x277D6B3E0] nwInterfaceTypeForNWFunctionalInterfaceType:self->_functionalInterfaceType];
    v9 = +[NetworkAnalyticsEngine sharedInstance];
    [v9 _createJournalRecordOfType:3 forInterface:v8 fromDict:0];
  }
}

- (void)setKnownGood:(BOOL)a3
{
  if (self->_knownGood != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"knownGood"];
    self->_knownGood = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"knownGood"];
  }
}

- (void)setKnownSporadic:(BOOL)a3
{
  if (self->_knownSporadic != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"knownSporadic"];
    self->_knownSporadic = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"knownSporadic"];
  }
}

- (void)setKnowableSporadic:(BOOL)a3
{
  if (self->_knowableSporadic != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"knowableSporadic"];
    self->_knowableSporadic = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"knowableSporadic"];
  }
}

- (void)setFirstAttachment:(BOOL)a3
{
  if (self->_firstAttachment != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"firstAttachment"];
    self->_firstAttachment = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"firstAttachment"];
  }
}

- (void)setConstrained:(BOOL)a3
{
  if (self->_constrained != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"constrained"];
    self->_constrained = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"constrained"];
  }
}

- (void)setExpensive:(BOOL)a3
{
  if (self->_expensive != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"expensive"];
    self->_expensive = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"expensive"];
  }
}

- (void)setNoCostAdvantage:(BOOL)a3
{
  if (self->_noCostAdvantage != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"noCostAdvantage"];
    self->_noCostAdvantage = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"noCostAdvantage"];
  }
}

- (void)setRxSignalThresholded:(BOOL)a3
{
  if (self->_rxSignalThresholded != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rxSignalThresholded"];
    self->_rxSignalThresholded = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rxSignalThresholded"];
  }
}

- (void)setRxSignalFullBars:(BOOL)a3
{
  if (self->_rxSignalFullBars != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rxSignalFullBars"];
    self->_rxSignalFullBars = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rxSignalFullBars"];
  }
}

- (void)setTxThresholded:(BOOL)a3
{
  if (self->_txThresholded != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"txThresholded"];
    self->_txThresholded = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"txThresholded"];
  }
}

- (void)setArpOut:(BOOL)a3
{
  if (self->_arpOut != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"arpOut"];
    self->_arpOut = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"arpOut"];
  }
}

- (void)setDnsOut:(BOOL)a3
{
  if (self->_dnsOut != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"dnsOut"];
    self->_dnsOut = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"dnsOut"];
  }
}

- (void)setInternetDnsOut:(BOOL)a3
{
  if (self->_internetDnsOut != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"internetDnsOut"];
    self->_internetDnsOut = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"internetDnsOut"];
  }
}

- (void)setStuckDefRoute:(BOOL)a3
{
  if (self->_stuckDefRoute != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"stuckDefRoute"];
    self->_stuckDefRoute = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"stuckDefRoute"];
  }
}

- (void)setRxSignalExemptions:(unsigned int)a3
{
  if (self->_rxSignalExemptions != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rxSignalExemptions"];
    self->_rxSignalExemptions = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rxSignalExemptions"];
  }
}

- (void)setTcpExtraStatsPositive:(BOOL)a3
{
  if (self->_tcpExtraStatsPositive != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"tcpExtraStatsPositive"];
    self->_tcpExtraStatsPositive = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"tcpExtraStatsPositive"];
  }
}

- (void)setApsdFailure:(BOOL)a3
{
  if (self->_apsdFailure != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"apsdFailure"];
    self->_apsdFailure = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"apsdFailure"];
  }
}

- (void)setAppleServicesConnectionFriction:(BOOL)a3
{
  if (self->_appleServicesConnectionFriction != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"appleServicesConnectionFriction"];
    self->_appleServicesConnectionFriction = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"appleServicesConnectionFriction"];
  }
}

- (void)setTcpProgressHintsScore:(unsigned int)a3
{
  if (self->_tcpProgressHintsScore != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"tcpProgressHintsScore"];
    self->_tcpProgressHintsScore = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"tcpProgressHintsScore"];
  }
}

- (void)setLinkQuality:(int)a3
{
  if (self->_linkQuality != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"linkQuality"];
    self->_linkQuality = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"linkQuality"];
  }
}

- (void)setAdvisory:(int)a3
{
  if (self->_advisory != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"advisory"];
    self->_advisory = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"advisory"];
  }
}

- (void)setPowerCostDL:(unsigned __int8)a3
{
  if (self->_powerCostDL != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"powerCostDL"];
    self->_powerCostDL = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"powerCostDL"];
  }
}

- (void)setPowerCostUL:(unsigned __int8)a3
{
  if (self->_powerCostUL != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"powerCostUL"];
    self->_powerCostUL = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"powerCostUL"];
  }
}

- (void)setSignalBars:(unsigned __int8)a3
{
  if (self->_signalBars != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"signalBars"];
    self->_signalBars = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"signalBars"];
  }
}

- (void)setRadioTechnology:(unsigned __int8)a3
{
  if (self->_radioTechnology != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"radioTechnology"];
    self->_radioTechnology = a3;
    [(NetworkStateRelay *)self didChangeValueForKey:@"radioTechnology"];
    v6 = [MEMORY[0x277D6B3E0] nwInterfaceTypeForNWFunctionalInterfaceType:self->_functionalInterfaceType];
    v7 = +[NetworkAnalyticsEngine sharedInstance];
    [v7 _createJournalRecordOfType:3 forInterface:v6 fromDict:0];
  }
}

- (void)setTxRate:(double)a3
{
  if (self->_txRate != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"txRate"];
    self->_txRate = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"txRate"];
  }
}

- (void)setRxRate:(double)a3
{
  if (self->_rxRate != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rxRate"];
    self->_rxRate = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rxRate"];
  }
}

- (void)setRpmAvg:(double)a3
{
  if (self->_rpmAvg != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rpmAvg"];
    self->_rpmAvg = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rpmAvg"];
  }
}

- (void)setRpmCount:(double)a3
{
  if (self->_rpmCount != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rpmCount"];
    self->_rpmCount = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rpmCount"];
  }
}

- (void)setRpmVar:(double)a3
{
  if (self->_rpmVar != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rpmVar"];
    self->_rpmVar = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rpmVar"];
  }
}

- (void)setRpmExitAvg:(double)a3
{
  if (self->_rpmExitAvg != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rpmExitAvg"];
    self->_rpmExitAvg = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rpmExitAvg"];
  }
}

- (void)setRpmExitCount:(double)a3
{
  if (self->_rpmExitCount != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rpmExitCount"];
    self->_rpmExitCount = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rpmExitCount"];
  }
}

- (void)setRpmExitVar:(double)a3
{
  if (self->_rpmExitVar != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rpmExitVar"];
    self->_rpmExitVar = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rpmExitVar"];
  }
}

- (void)setLqmAsystole:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_lqmAsystole != a3)
  {
    v3 = a3;
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      lqmAsystole = self->_lqmAsystole;
      v8[0] = 67109376;
      v8[1] = lqmAsystole;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "lqmAsystole %d -> %d", v8, 0xEu);
    }

    [(NetworkStateRelay *)self willChangeValueForKey:@"lqmAsystole"];
    self->_lqmAsystole = v3;
    [(NetworkStateRelay *)self didChangeValueForKey:@"lqmAsystole"];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setLoi:(int64_t)a3
{
  if (self->_loi != a3)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"loi"];
    self->_loi = a3;

    [(NetworkStateRelay *)self didChangeValueForKey:@"loi"];
  }
}

- (void)updateSignalStrength:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    LOBYTE(v4) = [v4 unsignedIntValue];
  }

  [(NetworkStateRelay *)self setSignalBars:v4];
  v6 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v9[0] = 67109120;
    v9[1] = [(NetworkStateRelay *)self signalBars];
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "CT update signal bars: %d", v9, 8u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (NSSet)defaultGateways
{
  v3 = self->_defaultGateways;
  objc_sync_enter(v3);
  v4 = [MEMORY[0x277CBEB98] setWithSet:self->_defaultGateways];
  objc_sync_exit(v3);

  return v4;
}

- (void)addDefaultGateway:(id)a3
{
  v5 = a3;
  v4 = self->_defaultGateways;
  objc_sync_enter(v4);
  [(NSMutableSet *)self->_defaultGateways addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeAllDefaultGateways
{
  obj = self->_defaultGateways;
  objc_sync_enter(obj);
  [(NSMutableSet *)self->_defaultGateways removeAllObjects];
  objc_sync_exit(obj);
}

- (id)valueForUndefinedKey:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8 = 134218242;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "%p attempt to fetch non-existent property %@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8 = 134218242;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "%p attempt to set non-existent property %@, drop request", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end