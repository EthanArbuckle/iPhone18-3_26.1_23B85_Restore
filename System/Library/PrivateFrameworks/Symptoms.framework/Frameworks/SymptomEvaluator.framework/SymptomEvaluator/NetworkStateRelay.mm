@interface NetworkStateRelay
+ (id)getStateRelayFor:(unsigned __int8)for;
- (NSSet)defaultGateways;
- (NetworkAnalyticsQueueStatistics)queueStatistics;
- (id)description;
- (id)initForInternalType:(unsigned __int8)type;
- (id)valueForUndefinedKey:(id)key;
- (void)addDefaultGateway:(id)gateway;
- (void)registerDelegate:(id)delegate lowerRSSIThreshold:(int)threshold upperRSSIThreshold:(int)iThreshold lowerSNRThreshold:(int)rThreshold upperSNRThreshold:(int)nRThreshold;
- (void)removeAllDefaultGateways;
- (void)setActive:(BOOL)active;
- (void)setAdvisory:(int)advisory;
- (void)setAppleServicesConnectionFriction:(BOOL)friction;
- (void)setApsdFailure:(BOOL)failure;
- (void)setArpOut:(BOOL)out;
- (void)setConstrained:(BOOL)constrained;
- (void)setDnsOut:(BOOL)out;
- (void)setExpensive:(BOOL)expensive;
- (void)setFirstAttachment:(BOOL)attachment;
- (void)setInterfaceIndex:(unint64_t)index;
- (void)setInterfaceName:(id)name;
- (void)setInternetDnsOut:(BOOL)out;
- (void)setKnowableSporadic:(BOOL)sporadic;
- (void)setKnownGood:(BOOL)good;
- (void)setKnownSporadic:(BOOL)sporadic;
- (void)setLinkQuality:(int)quality;
- (void)setLoi:(int64_t)loi;
- (void)setLqmAsystole:(BOOL)asystole;
- (void)setNoCostAdvantage:(BOOL)advantage;
- (void)setPowerCostDL:(unsigned __int8)l;
- (void)setPowerCostUL:(unsigned __int8)l;
- (void)setPrimary:(BOOL)primary;
- (void)setRadioTechnology:(unsigned __int8)technology;
- (void)setRpmAvg:(double)avg;
- (void)setRpmCount:(double)count;
- (void)setRpmExitAvg:(double)avg;
- (void)setRpmExitCount:(double)count;
- (void)setRpmExitVar:(double)var;
- (void)setRpmVar:(double)var;
- (void)setRxRate:(double)rate;
- (void)setRxSignalExemptions:(unsigned int)exemptions;
- (void)setRxSignalFullBars:(BOOL)bars;
- (void)setRxSignalThresholded:(BOOL)thresholded;
- (void)setSignalBars:(unsigned __int8)bars;
- (void)setStuckDefRoute:(BOOL)route;
- (void)setTcpExtraStatsPositive:(BOOL)positive;
- (void)setTcpProgressHintsScore:(unsigned int)score;
- (void)setTxRate:(double)rate;
- (void)setTxThresholded:(BOOL)thresholded;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)unregisterDelegate:(id)delegate;
- (void)updateSNR:(int)r RSSI:(int)i;
- (void)updateSignalStrength:(id)strength;
@end

@implementation NetworkStateRelay

- (NetworkAnalyticsQueueStatistics)queueStatistics
{
  if (!self->_queueStatistics)
  {
    if (self->_interfaceName)
    {
      v3 = [NetworkAnalyticsQueueStatistics alloc];
      interfaceName = [(NetworkStateRelay *)self interfaceName];
      v5 = [(NetworkAnalyticsQueueStatistics *)v3 initWithInterfaceName:interfaceName];
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

+ (id)getStateRelayFor:(unsigned __int8)for
{
  forCopy = for;
  *&v10[5] = *MEMORY[0x277D85DE8];
  if (getStateRelayFor__onceToken != -1)
  {
    +[NetworkStateRelay getStateRelayFor:];
  }

  if (forCopy <= 7 && ((1 << forCopy) & 0xAC) != 0)
  {
    v4 = [getStateRelayFor___interfaceRelays objectAtIndexedSubscript:forCopy];
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = 67109378;
      v10[0] = forCopy;
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
      *v10 = forCopy;
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

- (id)initForInternalType:(unsigned __int8)type
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

    v4->_functionalInterfaceType = type;
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
  functionalInterfaceType = [(NetworkStateRelay *)self functionalInterfaceType];
  v4 = "";
  if (functionalInterfaceType == 3)
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
  uTF8String = [v45 UTF8String];
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
  rxSignalExemptions = [(NetworkStateRelay *)self rxSignalExemptions];
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

  tcpProgressHintsScore = [(NetworkStateRelay *)self tcpProgressHintsScore];
  linkQuality = [(NetworkStateRelay *)self linkQuality];
  advisory = [(NetworkStateRelay *)self advisory];
  v23 = [NetworkAnalyticsEngine mapPowerCost:[(NetworkStateRelay *)self powerCostDL]];
  v24 = [NetworkAnalyticsEngine mapPowerCost:[(NetworkStateRelay *)self powerCostUL]];
  v25 = [NetworkAnalyticsEngine mapRadioTechnology:[(NetworkStateRelay *)self radioTechnology]];
  [(NetworkStateRelay *)self txRate];
  v27 = v26;
  [(NetworkStateRelay *)self rxRate];
  v29 = [v46 initWithFormat:@"%s (active%s/primary%s/constrained%s/expensive%s/rssifull%s/rssithresh%s/txthresh%s/arp%s/dns%s/i-dns%s/i-stuck%s/rssiexempt:%d/tcp%s/apsd%s/1ppservconnfric%s/tcphints:%ld/lqm:%ld/advisory:%d/pwrDL:%ld/pwrUL:%ld/ic:%ld%s/txRate:%.1f/rxRate:%.1f)", uTF8String, v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, rxSignalExemptions, v6, v19, v14, tcpProgressHintsScore, linkQuality, advisory, v23, v24, v25, v44, v27, v28];

  return v29;
}

- (void)registerDelegate:(id)delegate lowerRSSIThreshold:(int)threshold upperRSSIThreshold:(int)iThreshold lowerSNRThreshold:(int)rThreshold upperSNRThreshold:(int)nRThreshold
{
  v31 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v13 = netepochsLogHandle;
  if (delegateCopy)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v22 = delegateCopy;
      v23 = 1024;
      thresholdCopy = threshold;
      v25 = 1024;
      iThresholdCopy = iThreshold;
      v27 = 1024;
      rThresholdCopy = rThreshold;
      v29 = 1024;
      nRThresholdCopy = nRThreshold;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "Registering delegate %@ for threshold crossed notifications (RSSI: %d %d) (SNR: %d %d)", buf, 0x24u);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __112__NetworkStateRelay_registerDelegate_lowerRSSIThreshold_upperRSSIThreshold_lowerSNRThreshold_upperSNRThreshold___block_invoke;
    v15[3] = &unk_27898F7B0;
    rThresholdCopy2 = rThreshold;
    nRThresholdCopy2 = nRThreshold;
    thresholdCopy2 = threshold;
    iThresholdCopy2 = iThreshold;
    v15[4] = self;
    v16 = delegateCopy;
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

- (void)unregisterDelegate:(id)delegate
{
  v11 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = netepochsLogHandle;
  if (delegateCopy)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = delegateCopy;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Unregistering delegate %@", buf, 0xCu);
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__NetworkStateRelay_unregisterDelegate___block_invoke;
    v7[3] = &unk_27898A7D0;
    v7[4] = self;
    v8 = delegateCopy;
    sf_synchronize(&configurableThresholdLock, v7);
  }

  else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "delegate is nil, not unregistering from notifications", buf, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateSNR:(int)r RSSI:(int)i
{
  lastReportedSignalToNoiseRatio = self->_lastReportedSignalToNoiseRatio;
  lastReportedRxSignalStrength = self->_lastReportedRxSignalStrength;
  self->_lastReportedSignalToNoiseRatio = r;
  self->_lastReportedRxSignalStrength = i;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__NetworkStateRelay_updateSNR_RSSI___block_invoke;
  v6[3] = &unk_27898D158;
  v6[4] = self;
  rCopy = r;
  v8 = lastReportedSignalToNoiseRatio;
  iCopy = i;
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

- (void)setInterfaceName:(id)name
{
  nameCopy = name;
  if (self->_interfaceName != nameCopy)
  {
    v6 = nameCopy;
    [(NetworkStateRelay *)self willChangeValueForKey:@"interfaceName"];
    objc_storeStrong(&self->_interfaceName, name);
    [(NetworkStateRelay *)self didChangeValueForKey:@"interfaceName"];
    nameCopy = v6;
  }
}

- (void)setInterfaceIndex:(unint64_t)index
{
  if (self->_interfaceIndex != index)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"interfaceIndex"];
    self->_interfaceIndex = index;

    [(NetworkStateRelay *)self didChangeValueForKey:@"interfaceIndex"];
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"active"];
    self->_active = active;
    [(NetworkStateRelay *)self didChangeValueForKey:@"active"];
    v6 = [MEMORY[0x277D6B3E0] nwInterfaceTypeForNWFunctionalInterfaceType:self->_functionalInterfaceType];
    v7 = +[NetworkAnalyticsEngine sharedInstance];
    [v7 _createJournalRecordOfType:3 forInterface:v6 fromDict:0];
  }
}

- (void)setPrimary:(BOOL)primary
{
  if (self->_primary != primary)
  {
    primaryCopy = primary;
    [(NetworkStateRelay *)self willChangeValueForKey:@"primary"];
    self->_primary = primaryCopy;
    if (primaryCopy)
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    else
    {
      date = 0;
    }

    madePrimaryDate = self->_madePrimaryDate;
    self->_madePrimaryDate = date;

    [(NetworkStateRelay *)self didChangeValueForKey:@"primary"];
    v8 = [MEMORY[0x277D6B3E0] nwInterfaceTypeForNWFunctionalInterfaceType:self->_functionalInterfaceType];
    v9 = +[NetworkAnalyticsEngine sharedInstance];
    [v9 _createJournalRecordOfType:3 forInterface:v8 fromDict:0];
  }
}

- (void)setKnownGood:(BOOL)good
{
  if (self->_knownGood != good)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"knownGood"];
    self->_knownGood = good;

    [(NetworkStateRelay *)self didChangeValueForKey:@"knownGood"];
  }
}

- (void)setKnownSporadic:(BOOL)sporadic
{
  if (self->_knownSporadic != sporadic)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"knownSporadic"];
    self->_knownSporadic = sporadic;

    [(NetworkStateRelay *)self didChangeValueForKey:@"knownSporadic"];
  }
}

- (void)setKnowableSporadic:(BOOL)sporadic
{
  if (self->_knowableSporadic != sporadic)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"knowableSporadic"];
    self->_knowableSporadic = sporadic;

    [(NetworkStateRelay *)self didChangeValueForKey:@"knowableSporadic"];
  }
}

- (void)setFirstAttachment:(BOOL)attachment
{
  if (self->_firstAttachment != attachment)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"firstAttachment"];
    self->_firstAttachment = attachment;

    [(NetworkStateRelay *)self didChangeValueForKey:@"firstAttachment"];
  }
}

- (void)setConstrained:(BOOL)constrained
{
  if (self->_constrained != constrained)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"constrained"];
    self->_constrained = constrained;

    [(NetworkStateRelay *)self didChangeValueForKey:@"constrained"];
  }
}

- (void)setExpensive:(BOOL)expensive
{
  if (self->_expensive != expensive)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"expensive"];
    self->_expensive = expensive;

    [(NetworkStateRelay *)self didChangeValueForKey:@"expensive"];
  }
}

- (void)setNoCostAdvantage:(BOOL)advantage
{
  if (self->_noCostAdvantage != advantage)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"noCostAdvantage"];
    self->_noCostAdvantage = advantage;

    [(NetworkStateRelay *)self didChangeValueForKey:@"noCostAdvantage"];
  }
}

- (void)setRxSignalThresholded:(BOOL)thresholded
{
  if (self->_rxSignalThresholded != thresholded)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rxSignalThresholded"];
    self->_rxSignalThresholded = thresholded;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rxSignalThresholded"];
  }
}

- (void)setRxSignalFullBars:(BOOL)bars
{
  if (self->_rxSignalFullBars != bars)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rxSignalFullBars"];
    self->_rxSignalFullBars = bars;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rxSignalFullBars"];
  }
}

- (void)setTxThresholded:(BOOL)thresholded
{
  if (self->_txThresholded != thresholded)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"txThresholded"];
    self->_txThresholded = thresholded;

    [(NetworkStateRelay *)self didChangeValueForKey:@"txThresholded"];
  }
}

- (void)setArpOut:(BOOL)out
{
  if (self->_arpOut != out)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"arpOut"];
    self->_arpOut = out;

    [(NetworkStateRelay *)self didChangeValueForKey:@"arpOut"];
  }
}

- (void)setDnsOut:(BOOL)out
{
  if (self->_dnsOut != out)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"dnsOut"];
    self->_dnsOut = out;

    [(NetworkStateRelay *)self didChangeValueForKey:@"dnsOut"];
  }
}

- (void)setInternetDnsOut:(BOOL)out
{
  if (self->_internetDnsOut != out)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"internetDnsOut"];
    self->_internetDnsOut = out;

    [(NetworkStateRelay *)self didChangeValueForKey:@"internetDnsOut"];
  }
}

- (void)setStuckDefRoute:(BOOL)route
{
  if (self->_stuckDefRoute != route)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"stuckDefRoute"];
    self->_stuckDefRoute = route;

    [(NetworkStateRelay *)self didChangeValueForKey:@"stuckDefRoute"];
  }
}

- (void)setRxSignalExemptions:(unsigned int)exemptions
{
  if (self->_rxSignalExemptions != exemptions)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rxSignalExemptions"];
    self->_rxSignalExemptions = exemptions;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rxSignalExemptions"];
  }
}

- (void)setTcpExtraStatsPositive:(BOOL)positive
{
  if (self->_tcpExtraStatsPositive != positive)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"tcpExtraStatsPositive"];
    self->_tcpExtraStatsPositive = positive;

    [(NetworkStateRelay *)self didChangeValueForKey:@"tcpExtraStatsPositive"];
  }
}

- (void)setApsdFailure:(BOOL)failure
{
  if (self->_apsdFailure != failure)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"apsdFailure"];
    self->_apsdFailure = failure;

    [(NetworkStateRelay *)self didChangeValueForKey:@"apsdFailure"];
  }
}

- (void)setAppleServicesConnectionFriction:(BOOL)friction
{
  if (self->_appleServicesConnectionFriction != friction)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"appleServicesConnectionFriction"];
    self->_appleServicesConnectionFriction = friction;

    [(NetworkStateRelay *)self didChangeValueForKey:@"appleServicesConnectionFriction"];
  }
}

- (void)setTcpProgressHintsScore:(unsigned int)score
{
  if (self->_tcpProgressHintsScore != score)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"tcpProgressHintsScore"];
    self->_tcpProgressHintsScore = score;

    [(NetworkStateRelay *)self didChangeValueForKey:@"tcpProgressHintsScore"];
  }
}

- (void)setLinkQuality:(int)quality
{
  if (self->_linkQuality != quality)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"linkQuality"];
    self->_linkQuality = quality;

    [(NetworkStateRelay *)self didChangeValueForKey:@"linkQuality"];
  }
}

- (void)setAdvisory:(int)advisory
{
  if (self->_advisory != advisory)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"advisory"];
    self->_advisory = advisory;

    [(NetworkStateRelay *)self didChangeValueForKey:@"advisory"];
  }
}

- (void)setPowerCostDL:(unsigned __int8)l
{
  if (self->_powerCostDL != l)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"powerCostDL"];
    self->_powerCostDL = l;

    [(NetworkStateRelay *)self didChangeValueForKey:@"powerCostDL"];
  }
}

- (void)setPowerCostUL:(unsigned __int8)l
{
  if (self->_powerCostUL != l)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"powerCostUL"];
    self->_powerCostUL = l;

    [(NetworkStateRelay *)self didChangeValueForKey:@"powerCostUL"];
  }
}

- (void)setSignalBars:(unsigned __int8)bars
{
  if (self->_signalBars != bars)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"signalBars"];
    self->_signalBars = bars;

    [(NetworkStateRelay *)self didChangeValueForKey:@"signalBars"];
  }
}

- (void)setRadioTechnology:(unsigned __int8)technology
{
  if (self->_radioTechnology != technology)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"radioTechnology"];
    self->_radioTechnology = technology;
    [(NetworkStateRelay *)self didChangeValueForKey:@"radioTechnology"];
    v6 = [MEMORY[0x277D6B3E0] nwInterfaceTypeForNWFunctionalInterfaceType:self->_functionalInterfaceType];
    v7 = +[NetworkAnalyticsEngine sharedInstance];
    [v7 _createJournalRecordOfType:3 forInterface:v6 fromDict:0];
  }
}

- (void)setTxRate:(double)rate
{
  if (self->_txRate != rate)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"txRate"];
    self->_txRate = rate;

    [(NetworkStateRelay *)self didChangeValueForKey:@"txRate"];
  }
}

- (void)setRxRate:(double)rate
{
  if (self->_rxRate != rate)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rxRate"];
    self->_rxRate = rate;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rxRate"];
  }
}

- (void)setRpmAvg:(double)avg
{
  if (self->_rpmAvg != avg)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rpmAvg"];
    self->_rpmAvg = avg;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rpmAvg"];
  }
}

- (void)setRpmCount:(double)count
{
  if (self->_rpmCount != count)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rpmCount"];
    self->_rpmCount = count;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rpmCount"];
  }
}

- (void)setRpmVar:(double)var
{
  if (self->_rpmVar != var)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rpmVar"];
    self->_rpmVar = var;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rpmVar"];
  }
}

- (void)setRpmExitAvg:(double)avg
{
  if (self->_rpmExitAvg != avg)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rpmExitAvg"];
    self->_rpmExitAvg = avg;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rpmExitAvg"];
  }
}

- (void)setRpmExitCount:(double)count
{
  if (self->_rpmExitCount != count)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rpmExitCount"];
    self->_rpmExitCount = count;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rpmExitCount"];
  }
}

- (void)setRpmExitVar:(double)var
{
  if (self->_rpmExitVar != var)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"rpmExitVar"];
    self->_rpmExitVar = var;

    [(NetworkStateRelay *)self didChangeValueForKey:@"rpmExitVar"];
  }
}

- (void)setLqmAsystole:(BOOL)asystole
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_lqmAsystole != asystole)
  {
    asystoleCopy = asystole;
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      lqmAsystole = self->_lqmAsystole;
      v8[0] = 67109376;
      v8[1] = lqmAsystole;
      v9 = 1024;
      v10 = asystoleCopy;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "lqmAsystole %d -> %d", v8, 0xEu);
    }

    [(NetworkStateRelay *)self willChangeValueForKey:@"lqmAsystole"];
    self->_lqmAsystole = asystoleCopy;
    [(NetworkStateRelay *)self didChangeValueForKey:@"lqmAsystole"];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setLoi:(int64_t)loi
{
  if (self->_loi != loi)
  {
    [(NetworkStateRelay *)self willChangeValueForKey:@"loi"];
    self->_loi = loi;

    [(NetworkStateRelay *)self didChangeValueForKey:@"loi"];
  }
}

- (void)updateSignalStrength:(id)strength
{
  v10 = *MEMORY[0x277D85DE8];
  strengthCopy = strength;
  v5 = strengthCopy;
  if (strengthCopy)
  {
    LOBYTE(strengthCopy) = [strengthCopy unsignedIntValue];
  }

  [(NetworkStateRelay *)self setSignalBars:strengthCopy];
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

- (void)addDefaultGateway:(id)gateway
{
  gatewayCopy = gateway;
  v4 = self->_defaultGateways;
  objc_sync_enter(v4);
  [(NSMutableSet *)self->_defaultGateways addObject:gatewayCopy];
  objc_sync_exit(v4);
}

- (void)removeAllDefaultGateways
{
  obj = self->_defaultGateways;
  objc_sync_enter(obj);
  [(NSMutableSet *)self->_defaultGateways removeAllObjects];
  objc_sync_exit(obj);
}

- (id)valueForUndefinedKey:(id)key
{
  v12 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8 = 134218242;
    selfCopy = self;
    v10 = 2112;
    v11 = keyCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "%p attempt to fetch non-existent property %@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  v12 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v6 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8 = 134218242;
    selfCopy = self;
    v10 = 2112;
    v11 = keyCopy;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "%p attempt to set non-existent property %@, drop request", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end