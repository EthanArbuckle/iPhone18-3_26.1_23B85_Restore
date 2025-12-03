@interface WFBlacklistEngine
+ (id)stringRepresentationWithReason:(unint64_t)reason;
+ (id)stringRepresentationWithState:(unint64_t)state;
- (BOOL)_evaluateTriggersForBlacklisting:(id)blacklisting reason:(unint64_t)reason reasonData:(int64_t)data bssid:(id)bssid ssid:(id)ssid state:(unint64_t)state;
- (BOOL)_evaluateTriggersForUnblacklisting:(id)unblacklisting unblacklistReason:(unint64_t)reason ssid:(id)ssid;
- (BOOL)_ignoreTriggersForDeviceProfile:(unint64_t)profile node:(id)node;
- (BOOL)isNetworkBlacklistedForAutoJoinDueToTrigDisc:(id)disc rssi:(int64_t *)rssi timestamp:(double *)timestamp;
- (BOOL)isNetworkInBlacklistedState:(id)state state:(unint64_t)a4;
- (BOOL)removeBlacklistedStateForNetworkWithReason:(id)reason state:(unint64_t)state reason:(unint64_t)a5;
- (WFBlacklistEngine)initWithBlacklistDelegate:(id)delegate profile:(unint64_t)profile;
- (id)_findBlacklistNode:(id)node;
- (id)denyListThreshold:(unint64_t)threshold perSSID:(BOOL)d;
- (id)retrieveBlacklistedNetworkSsids:(unint64_t)ssids;
- (id)retrieveBlacklistedStateHistoryForNetwork:(id)network state:(unint64_t)state timestamps:(id)timestamps reasonData:(id)data;
- (id)retrieveNetworksInBlacklistedState:(unint64_t)state;
- (id)retrieveNetworksInBlacklistedStateHistory:(unint64_t)history;
- (id)retrieveReasonsForNetworkInBlacklistedState:(id)state state:(unint64_t)a4 timestamps:(id)timestamps reasonData:(id)data;
- (int64_t)getRssiWhenNetworkWasBlacklisted:(id)blacklisted;
- (unint64_t)getBlacklistedNetworkCount;
- (void)_printBlacklist;
- (void)clearTriggerForNetworkWithUnblacklistReason:(id)reason reason:(unint64_t)a4;
- (void)configureBlacklistedStateExpiryIntervalInSec:(double)sec state:(unint64_t)state;
- (void)dealloc;
- (void)networkPruned:(id)pruned;
- (void)networkRemovedForSsid:(id)ssid;
- (void)removeBlacklistedStateWithUnblacklistType:(unint64_t)type;
- (void)removeBlacklistedStates;
- (void)removeExpiredBlacklistedState:(unint64_t)state;
- (void)setDefaultBlacklistThresholds;
- (void)setEnabled:(BOOL)enabled;
- (void)setTriggerForNetworkWithReasonAndState:(id)state reason:(unint64_t)reason reasonData:(int64_t)data bssid:(id)bssid state:(unint64_t)a7;
@end

@implementation WFBlacklistEngine

- (WFBlacklistEngine)initWithBlacklistDelegate:(id)delegate profile:(unint64_t)profile
{
  buf[3] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = WFBlacklistEngine;
  v7 = [(WFBlacklistEngine *)&v21 init];
  v8 = v7;
  if (!v7)
  {
    [WFBlacklistEngine initWithBlacklistDelegate:profile:];
LABEL_14:
    v16 = buf[0];
LABEL_11:

    [(NSMutableArray *)v8->_blacklist removeAllObjects];
    v15 = 0;
    goto LABEL_12;
  }

  [(WFBlacklistEngine *)v7 setEnabled:0];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Invalid blacklistDelegate", "-[WFBlacklistEngine initWithBlacklistDelegate:profile:]"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v16, "UTF8String")];
      uTF8String = [v17 UTF8String];
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = uTF8String;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }

    goto LABEL_11;
  }

  [(WFBlacklistEngine *)v8 setBlacklistDelegate:delegateCopy];
  [(WFBlacklistEngine *)v8 setWowBlacklistExpiry:600.0];
  [(WFBlacklistEngine *)v8 setAutojoinBlacklistExpiry:300.0];
  [(WFBlacklistEngine *)v8 setBssBlacklistExpiry:300.0];
  v8->_profile = profile;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  blacklist = v8->_blacklist;
  v8->_blacklist = v9;

  if (!v8->_blacklist)
  {
    [WFBlacklistEngine initWithBlacklistDelegate:profile:];
    goto LABEL_14;
  }

  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:13];
  ssidThresholds = v8->_ssidThresholds;
  v8->_ssidThresholds = v11;

  if (!v8->_ssidThresholds)
  {
    [WFBlacklistEngine initWithBlacklistDelegate:profile:];
    goto LABEL_14;
  }

  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:13];
  bssidThresholds = v8->_bssidThresholds;
  v8->_bssidThresholds = v13;

  if (!v8->_bssidThresholds)
  {
    [WFBlacklistEngine initWithBlacklistDelegate:profile:];
    goto LABEL_14;
  }

  [(WFBlacklistEngine *)v8 setDefaultBlacklistThresholds];
  v15 = v8;
LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)setDefaultBlacklistThresholds
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  bssidThresholds = [(WFBlacklistEngine *)self bssidThresholds];
  [bssidThresholds setObject:v3 atIndexedSubscript:0];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  bssidThresholds2 = [(WFBlacklistEngine *)self bssidThresholds];
  [bssidThresholds2 setObject:v5 atIndexedSubscript:1];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  bssidThresholds3 = [(WFBlacklistEngine *)self bssidThresholds];
  [bssidThresholds3 setObject:v7 atIndexedSubscript:2];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:3];
  bssidThresholds4 = [(WFBlacklistEngine *)self bssidThresholds];
  [bssidThresholds4 setObject:v9 atIndexedSubscript:3];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:3];
  bssidThresholds5 = [(WFBlacklistEngine *)self bssidThresholds];
  [bssidThresholds5 setObject:v11 atIndexedSubscript:4];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:10];
  bssidThresholds6 = [(WFBlacklistEngine *)self bssidThresholds];
  [bssidThresholds6 setObject:v13 atIndexedSubscript:5];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  bssidThresholds7 = [(WFBlacklistEngine *)self bssidThresholds];
  [bssidThresholds7 setObject:v15 atIndexedSubscript:6];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:3];
  bssidThresholds8 = [(WFBlacklistEngine *)self bssidThresholds];
  [bssidThresholds8 setObject:v17 atIndexedSubscript:7];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  ssidThresholds = [(WFBlacklistEngine *)self ssidThresholds];
  [ssidThresholds setObject:v19 atIndexedSubscript:0];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  ssidThresholds2 = [(WFBlacklistEngine *)self ssidThresholds];
  [ssidThresholds2 setObject:v21 atIndexedSubscript:1];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  ssidThresholds3 = [(WFBlacklistEngine *)self ssidThresholds];
  [ssidThresholds3 setObject:v23 atIndexedSubscript:2];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:5];
  ssidThresholds4 = [(WFBlacklistEngine *)self ssidThresholds];
  [ssidThresholds4 setObject:v25 atIndexedSubscript:3];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:5];
  ssidThresholds5 = [(WFBlacklistEngine *)self ssidThresholds];
  [ssidThresholds5 setObject:v27 atIndexedSubscript:4];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:10];
  ssidThresholds6 = [(WFBlacklistEngine *)self ssidThresholds];
  [ssidThresholds6 setObject:v29 atIndexedSubscript:5];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  ssidThresholds7 = [(WFBlacklistEngine *)self ssidThresholds];
  [ssidThresholds7 setObject:v31 atIndexedSubscript:6];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:3];
  ssidThresholds8 = [(WFBlacklistEngine *)self ssidThresholds];
  [ssidThresholds8 setObject:v34 atIndexedSubscript:7];
}

- (void)dealloc
{
  ssidThresholds = [(WFBlacklistEngine *)self ssidThresholds];
  [ssidThresholds removeAllObjects];

  bssidThresholds = [(WFBlacklistEngine *)self bssidThresholds];
  [bssidThresholds removeAllObjects];

  [(NSMutableArray *)self->_blacklist removeAllObjects];
  v5.receiver = self;
  v5.super_class = WFBlacklistEngine;
  [(WFBlacklistEngine *)&v5 dealloc];
}

- (void)configureBlacklistedStateExpiryIntervalInSec:(double)sec state:(unint64_t)state
{
  v12 = *MEMORY[0x277D85DE8];
  switch(state)
  {
    case 3uLL:
      if (sec == 0.0 || sec > 3600.0)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Out of range WoWBlacklisting timeout value:%f", "-[WFBlacklistEngine configureBlacklistedStateExpiryIntervalInSec:state:]", *&sec];
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      v6 = *MEMORY[0x277D85DE8];

      [(WFBlacklistEngine *)self setWowBlacklistExpiry:?];
      break;
    case 2uLL:
      if (sec == 0.0 || sec > 300.0)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Out of range BssBlacklisting timeout value:%f", "-[WFBlacklistEngine configureBlacklistedStateExpiryIntervalInSec:state:]", *&sec];
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      v5 = *MEMORY[0x277D85DE8];

      [(WFBlacklistEngine *)self setBssBlacklistExpiry:?];
      break;
    case 1uLL:
      if (sec != 0.0 && sec <= 86400.0)
      {
        v4 = *MEMORY[0x277D85DE8];

        [(WFBlacklistEngine *)self setAutojoinBlacklistExpiry:?];
        return;
      }

      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Out of range AutojoinBlacklisting timeout value:%f", "-[WFBlacklistEngine configureBlacklistedStateExpiryIntervalInSec:state:]", *&sec];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

LABEL_27:

      v9 = *MEMORY[0x277D85DE8];
      return;
    default:
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Invalid state", sec, "-[WFBlacklistEngine configureBlacklistedStateExpiryIntervalInSec:state:]"];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

LABEL_26:
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v7, "UTF8String")];
      *buf = 136446210;
      uTF8String = [v8 UTF8String];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);

      goto LABEL_27;
  }
}

- (id)denyListThreshold:(unint64_t)threshold perSSID:(BOOL)d
{
  if (d)
  {
    [(WFBlacklistEngine *)self ssidThresholds];
  }

  else
  {
    [(WFBlacklistEngine *)self bssidThresholds];
  }
  v5 = ;
  v6 = [v5 objectAtIndexedSubscript:threshold];

  return v6;
}

- (void)setTriggerForNetworkWithReasonAndState:(id)state reason:(unint64_t)reason reasonData:(int64_t)data bssid:(id)bssid state:(unint64_t)a7
{
  v45 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  bssidCopy = bssid;
  if ([(WFBlacklistEngine *)self enabled])
  {
    v14 = [(WFBlacklistEngine *)self _findBlacklistNode:stateCopy];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
    }

    else
    {
      v17 = [[WFBlackListNode alloc] initWithBlacklistNetwork:stateCopy];
      if (!v17)
      {
        blacklistDelegate2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s BlacklistElement alloc failed", "-[WFBlacklistEngine setTriggerForNetworkWithReasonAndState:reason:reasonData:bssid:state:]"];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(blacklistDelegate2, "UTF8String")];
          *buf = 136446210;
          uTF8String = [v26 UTF8String];
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
        }

        ssid = 0;
        v16 = 0;
        v15 = 0;
        goto LABEL_17;
      }

      v16 = v17;
      v15 = v16;
    }

    if ([(WFBlacklistEngine *)self _ignoreTriggersForDeviceProfile:reason node:v15])
    {
      ssid = 0;
LABEL_18:

      goto LABEL_19;
    }

    networkDelegate = [v15 networkDelegate];
    ssid = [networkDelegate ssid];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v25 = [WFBlacklistEngine stringRepresentationWithReason:reason];
      *buf = 136317186;
      uTF8String = "[WFBlacklistEngine setTriggerForNetworkWithReasonAndState:reason:reasonData:bssid:state:]";
      v29 = 2112;
      v30 = v25;
      v31 = 2160;
      v32 = 1752392040;
      v33 = 2112;
      v34 = ssid;
      v35 = 2160;
      v36 = 1752392040;
      v37 = 2112;
      v38 = bssidCopy;
      v39 = 2048;
      reasonCopy = reason;
      v41 = 2048;
      dataCopy = data;
      v43 = 2048;
      v44 = a7;
      _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Trigger '%@' for '%{mask.hash}@ [%{mask.hash}@]' (reason=%lu reasonData=%ld state=%lu)", buf, 0x5Cu);
    }

    [v15 addBlacklistTrigger:reason reasonData:data bssid:bssidCopy];
    v20 = [(WFBlacklistEngine *)self _evaluateTriggersForBlacklisting:v15 reason:reason reasonData:data bssid:bssidCopy ssid:ssid state:a7];
    if (([(NSMutableArray *)self->_blacklist containsObject:v15]& 1) == 0)
    {
      [(NSMutableArray *)self->_blacklist addObject:v15];
    }

    [(WFBlacklistEngine *)self _printBlacklist];
    if (!v20)
    {
      goto LABEL_18;
    }

    blacklistDelegate = [(WFBlacklistEngine *)self blacklistDelegate];
    v22 = objc_opt_respondsToSelector();

    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }

    blacklistDelegate2 = [(WFBlacklistEngine *)self blacklistDelegate];
    [blacklistDelegate2 blacklistDidUpdate];
LABEL_17:

    goto LABEL_18;
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s No Blacklisting", "-[WFBlacklistEngine setTriggerForNetworkWithReasonAndState:reason:reasonData:bssid:state:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v15, "UTF8String")];
    *buf = 136446210;
    uTF8String = [(WFBlackListNode *)v16 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
LABEL_19:
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_evaluateTriggersForBlacklisting:(id)blacklisting reason:(unint64_t)reason reasonData:(int64_t)data bssid:(id)bssid ssid:(id)ssid state:(unint64_t)state
{
  v118 = *MEMORY[0x277D85DE8];
  blacklistingCopy = blacklisting;
  bssidCopy = bssid;
  ssidCopy = ssid;
  if (!blacklistingCopy)
  {
    [WFBlacklistEngine _evaluateTriggersForBlacklisting:reason:reasonData:bssid:ssid:state:];
    v86 = 0;
    goto LABEL_92;
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  blacklistTriggers = [blacklistingCopy blacklistTriggers];
  v102 = [blacklistTriggers countByEnumeratingWithState:&v103 objects:v117 count:16];
  if (!v102)
  {

    v86 = 0;
    selfCopy3 = self;
    goto LABEL_91;
  }

  v92 = 0;
  v98 = 0;
  v99 = 0;
  v96 = 0;
  v94 = 0;
  v101 = *v104;
  v89 = state & 0xFFFFFFFFFFFFFFFELL;
  v90 = 0;
  v15 = MEMORY[0x277D86220];
  selfCopy3 = self;
  stateCopy = state;
  obj = blacklistTriggers;
  do
  {
    v17 = 0;
    do
    {
      if (*v104 != v101)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v103 + 1) + 8 * v17);
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v21 = v20;

      triggerReason = [v18 triggerReason];
      [v18 triggerReasonTimestamp];
      v24 = v23;
      if ([blacklistingCopy enterprisePolicy] && reason <= 7 && (v25 = v21 - v24, v21 - v24 <= 300.0))
      {
        bssid = [v18 bssid];
        v27 = [bssid compare:bssidCopy options:1];

        v28 = v27 == 0;
        v29 = HIDWORD(v98);
        if (!v27)
        {
          v29 = HIDWORD(v98) + 1;
        }

        if (triggerReason != reason)
        {
          v28 = 0;
        }

        v30 = (v99 + v28);
        if (triggerReason == reason)
        {
          v31 = (HIDWORD(v99) + 1);
        }

        else
        {
          v31 = HIDWORD(v99);
        }

        v32 = v98 + 1;
        HIDWORD(v98) = v29;
        v99 = __PAIR64__(v31, v30);
        LODWORD(v98) = v98 + 1;
        if (v29 <= 0x12 && ![(WFBlacklistEngine *)selfCopy3 _meetsThresholds:reason count:v30 perSsid:0 bssid:bssidCopy ssid:ssidCopy]&& v32 <= 0x12 && ![(WFBlacklistEngine *)selfCopy3 _meetsThresholds:reason count:v31 perSsid:1 bssid:bssidCopy ssid:ssidCopy])
        {
          state = stateCopy;
          goto LABEL_21;
        }

        state = stateCopy;
        if (stateCopy == 5 || stateCopy == 3)
        {
          [(WFBlacklistEngine *)selfCopy3 _setBlacklistedState:blacklistingCopy state:3 reason:reason reasonData:data];
          v94 = 1;
LABEL_21:
          v15 = MEMORY[0x277D86220];
          goto LABEL_32;
        }

        v36 = bssidCopy;
        v37 = MEMORY[0x277CCACA8];
        v38 = [WFBlacklistEngine stringRepresentationWithReason:reason];
        v39 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v21];
        v40 = [v37 stringWithFormat:@"%s WFNetworkBlacklistStateNoWoW ignored for %@ @ %@", "-[WFBlacklistEngine _evaluateTriggersForBlacklisting:reason:reasonData:bssid:ssid:state:]", v38, v39];

        v15 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v40, "UTF8String")];
          uTF8String = [v41 UTF8String];
          *buf = 136446210;
          v108 = uTF8String;
          _os_log_impl(&dword_2332D7000, v15, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
        }

        bssidCopy = v36;
        selfCopy3 = self;
        state = stateCopy;
      }

      else if ([blacklistingCopy enterprisePolicy] && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v34 = [WFBlacklistEngine stringRepresentationWithReason:triggerReason];
        bssid2 = [v18 bssid];
        *buf = 136316162;
        v108 = "[WFBlacklistEngine _evaluateTriggersForBlacklisting:reason:reasonData:bssid:ssid:state:]";
        v109 = 2112;
        v110 = v34;
        v111 = 2160;
        v112 = 1752392040;
        v113 = 2112;
        v114 = bssid2;
        v115 = 2048;
        v116 = v21 - v24;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s Trigger %@ for [%{mask.hash}@] was %f seconds ago and outside window. Will not consider for WoW blacklist", buf, 0x34u);

        v15 = MEMORY[0x277D86220];
      }

LABEL_32:
      if (triggerReason != reason)
      {
        v52 = MEMORY[0x277CCACA8];
        v53 = [WFBlacklistEngine stringRepresentationWithReason:triggerReason];
        v54 = [WFBlacklistEngine stringRepresentationWithReason:reason];
        v51 = [v52 stringWithFormat:@"%s Reasons differ. TriggerNodeReason: %@ CurrentReason: %@", "-[WFBlacklistEngine _evaluateTriggersForBlacklisting:reason:reasonData:bssid:ssid:state:]", v53, v54];

        v15 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v51, "UTF8String")];
          uTF8String2 = [v55 UTF8String];
          *buf = 136446210;
          v108 = uTF8String2;
          v57 = v15;
          v58 = OS_LOG_TYPE_DEBUG;
          goto LABEL_44;
        }

LABEL_45:

        goto LABEL_46;
      }

      if (reason <= 3)
      {
        if (state != 1 && state != 5)
        {
          if (state == 3)
          {
            [(WFBlacklistEngine *)selfCopy3 _setBlacklistedState:blacklistingCopy state:3 reason:reason reasonData:data];
            v43 = MEMORY[0x277CCACA8];
            v44 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v21];
            v45 = [v43 stringWithFormat:@"%s Power Alert Event Generated, Blacklist for WoW, TimeStamp: %@", "-[WFBlacklistEngine _evaluateTriggersForBlacklisting:reason:reasonData:bssid:ssid:state:]", v44];

            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v45, "UTF8String")];
              uTF8String3 = [v46 UTF8String];
              *buf = 136446210;
              v108 = uTF8String3;
              _os_log_impl(&dword_2332D7000, v15, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
            }

            v94 = 1;
          }

          v48 = MEMORY[0x277CCACA8];
          v49 = [WFBlacklistEngine stringRepresentationWithReason:reason];
          v50 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v21];
          v51 = [v48 stringWithFormat:@"%s WFNetworkBlacklistStateNoAutoJoin ignored for %@ @ %@", "-[WFBlacklistEngine _evaluateTriggersForBlacklisting:reason:reasonData:bssid:ssid:state:]", v49, v50];

          v15 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
LABEL_86:
            v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v51, "UTF8String")];
            uTF8String4 = [v55 UTF8String];
            *buf = 136446210;
            v108 = uTF8String4;
            v57 = v15;
            v58 = OS_LOG_TYPE_INFO;
LABEL_44:
            _os_log_impl(&dword_2332D7000, v57, v58, "%{public}s", buf, 0xCu);
          }

          goto LABEL_45;
        }

        v96 = 1;
        -[WFBlacklistEngine _setBlacklistedState:state:reason:reasonData:](selfCopy3, "_setBlacklistedState:state:reason:reasonData:", blacklistingCopy, 1, reason, [v18 triggerReasonData]);
        goto LABEL_46;
      }

      switch(reason)
      {
        case 7uLL:
          if (++HIDWORD(v92) <= 2u)
          {
            goto LABEL_46;
          }

          goto LABEL_59;
        case 5uLL:
          LODWORD(v92) = v92 + 1;
          if (v92 < 0xA)
          {
            goto LABEL_46;
          }

LABEL_59:
          if ((state | 4) == 5)
          {
            -[WFBlacklistEngine _setBlacklistedState:state:reason:reasonData:](selfCopy3, "_setBlacklistedState:state:reason:reasonData:", blacklistingCopy, 1, reason, [v18 triggerReasonData]);
            v96 = 1;
          }

          else
          {
            v63 = MEMORY[0x277CCACA8];
            v64 = [WFBlacklistEngine stringRepresentationWithReason:reason];
            v65 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v21];
            v66 = [v63 stringWithFormat:@"%s WFNetworkBlacklistStateNoAutoJoin ignored for %@ @ %@", "-[WFBlacklistEngine _evaluateTriggersForBlacklisting:reason:reasonData:bssid:ssid:state:]", v64, v65];

            v15 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v66, "UTF8String")];
              uTF8String5 = [v67 UTF8String];
              *buf = 136446210;
              v108 = uTF8String5;
              _os_log_impl(&dword_2332D7000, v15, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
            }

            state = stateCopy;
          }

          goto LABEL_67;
        case 4uLL:
          v33 = v21 - v24;
          if (v21 - v24 <= 300.0)
          {
            LODWORD(v90) = v90 + 1;
            if (v90 >= 3)
            {
              if ((state | 4) != 5)
              {
                v81 = MEMORY[0x277CCACA8];
                v82 = [WFBlacklistEngine stringRepresentationWithReason:4, v33];
                v83 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v21];
                v51 = [v81 stringWithFormat:@"%s WFNetworkBlacklistStateNoAutoJoin ignored for %@ @ %@", "-[WFBlacklistEngine _evaluateTriggersForBlacklisting:reason:reasonData:bssid:ssid:state:]", v82, v83];

                v15 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_86;
                }

                goto LABEL_45;
              }

              triggerReasonData = [v18 triggerReasonData];
              v60 = selfCopy3;
              v61 = blacklistingCopy;
              v62 = 4;
LABEL_71:
              [(WFBlacklistEngine *)v60 _setBlacklistedState:v61 state:1 reason:v62 reasonData:triggerReasonData];
              v96 = 1;
              goto LABEL_46;
            }
          }

          goto LABEL_46;
      }

      if (reason - 11 <= 1)
      {
        if (v89 != 4)
        {
          v72 = MEMORY[0x277CCACA8];
          v73 = [WFBlacklistEngine stringRepresentationWithReason:reason];
          v74 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v21];
          v51 = [v72 stringWithFormat:@"%s WFNetworkBlacklistStateTemporarilyUnavailable ignored for %@ @ %@", "-[WFBlacklistEngine _evaluateTriggersForBlacklisting:reason:reasonData:bssid:ssid:state:]", v73, v74];

          v15 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            goto LABEL_86;
          }

          goto LABEL_45;
        }

        -[WFBlacklistEngine _setBlacklistedState:state:reason:reasonData:](selfCopy3, "_setBlacklistedState:state:reason:reasonData:", blacklistingCopy, 4, reason, [v18 triggerReasonData]);
        v96 = 1;
        goto LABEL_46;
      }

LABEL_67:
      if (reason != 8)
      {
        if (reason != 6)
        {
          goto LABEL_46;
        }

        if ((state | 4) != 5)
        {
          v75 = MEMORY[0x277CCACA8];
          v76 = [WFBlacklistEngine stringRepresentationWithReason:6];
          v77 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v21];
          v51 = [v75 stringWithFormat:@"%s WFNetworkBlacklistStateNoAutoJoin ignored for %@ @ %@", "-[WFBlacklistEngine _evaluateTriggersForBlacklisting:reason:reasonData:bssid:ssid:state:]", v76, v77];

          v15 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            goto LABEL_86;
          }

          goto LABEL_45;
        }

        triggerReasonData = [v18 triggerReasonData];
        v60 = selfCopy3;
        v61 = blacklistingCopy;
        v62 = 6;
        goto LABEL_71;
      }

      bssid3 = [v18 bssid];
      v70 = [bssid3 compare:bssidCopy options:1];

      if (v70)
      {
        v71 = HIDWORD(v90);
      }

      else
      {
        v71 = HIDWORD(v90) + 1;
      }

      HIDWORD(v90) = v71;
      if (v71 >= 3)
      {
        if (state != 2)
        {
          v78 = MEMORY[0x277CCACA8];
          v79 = [WFBlacklistEngine stringRepresentationWithReason:8];
          v80 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v21];
          v51 = [v78 stringWithFormat:@"%s WFNetworkBlacklistReasonBssBlacklist ignored for %@ @ %@", "-[WFBlacklistEngine _evaluateTriggersForBlacklisting:reason:reasonData:bssid:ssid:state:]", v79, v80];

          v15 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_86;
          }

          goto LABEL_45;
        }

        -[WFBlacklistEngine _setBlacklistedState:state:reason:reasonData:](selfCopy3, "_setBlacklistedState:state:reason:reasonData:", blacklistingCopy, 2, 8, [v18 triggerReasonData]);
        v96 = 1;
      }

      v15 = MEMORY[0x277D86220];
LABEL_46:
      ++v17;
    }

    while (v102 != v17);
    v85 = [obj countByEnumeratingWithState:&v103 objects:v117 count:{16, v33}];
    v102 = v85;
  }

  while (v85);

  v86 = v96;
  if (v94)
  {
    [blacklistingCopy addBlacklistedStateHistory:0 state:state reason:reason reasonData:data];
    v86 = 1;
  }

LABEL_91:
  [(WFBlacklistEngine *)selfCopy3 _printBlacklist];
LABEL_92:

  v87 = *MEMORY[0x277D85DE8];
  return v86 & 1;
}

- (BOOL)_ignoreTriggersForDeviceProfile:(unint64_t)profile node:(id)node
{
  v28 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v7 = nodeCopy;
  if (self->_profile != 2)
  {
    if (([nodeCopy enterprisePolicy] & 1) != 0 || (objc_msgSend(v7, "networkDelegate"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isProfileBased"), v13, v14))
    {
      blacklistDelegate = [(WFBlacklistEngine *)self blacklistDelegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v25 = 0;
        v24 = 0;
        blacklistDelegate2 = [(WFBlacklistEngine *)self blacklistDelegate];
        v18 = [blacklistDelegate2 retrieveBatteryInfo:&v25 batteryLevel:&v24];

        if (v18)
        {
          if (v25 == 1)
          {
            profile = [MEMORY[0x277CCACA8] stringWithFormat:@"%s BlacklistTrigger %lu ignored as device connected to external power supply", "-[WFBlacklistEngine _ignoreTriggersForDeviceProfile:node:]", profile];
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_5;
            }

            goto LABEL_21;
          }

          if (profile == 2 && v24 >= 0x51)
          {
            profile = [MEMORY[0x277CCACA8] stringWithFormat:@"%s BlacklistTrigger %lu ignored as battery level is %d", "-[WFBlacklistEngine _ignoreTriggersForDeviceProfile:node:]", 2, v24];
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_5;
            }

LABEL_21:
            v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(profile, "UTF8String")];
            uTF8String = [v9 UTF8String];
            *buf = 136446210;
            uTF8String2 = uTF8String;
            v10 = MEMORY[0x277D86220];
            v11 = OS_LOG_TYPE_ERROR;
            goto LABEL_4;
          }
        }
      }

      else
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Delegate does not respond to blacklistProfileBatteryInfo", "-[WFBlacklistEngine _ignoreTriggersForDeviceProfile:node:]"];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v19, "UTF8String")];
          *buf = 136446210;
          uTF8String2 = [v20 UTF8String];
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
        }
      }
    }

    v12 = 0;
    goto LABEL_17;
  }

  profile = [MEMORY[0x277CCACA8] stringWithFormat:@"%s BlacklistTrigger %lu ignored for %lu", "-[WFBlacklistEngine _ignoreTriggersForDeviceProfile:node:]", profile, 2];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(profile, "UTF8String")];
    *buf = 136446210;
    uTF8String2 = [v9 UTF8String];
    v10 = MEMORY[0x277D86220];
    v11 = OS_LOG_TYPE_INFO;
LABEL_4:
    _os_log_impl(&dword_2332D7000, v10, v11, "%{public}s", buf, 0xCu);
  }

LABEL_5:

  v12 = 1;
LABEL_17:

  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)removeBlacklistedStateForNetworkWithReason:(id)reason state:(unint64_t)state reason:(unint64_t)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = [(WFBlacklistEngine *)self _findBlacklistNode:reason];
  v9 = v8 != 0;
  if (v8)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (!v10)
    {
      [WFBlacklistEngine removeBlacklistedStateForNetworkWithReason:state:reason:];
      v9 = 0;
      goto LABEL_18;
    }

    v11 = v10;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    blacklistedStatesCurrent = [v8 blacklistedStatesCurrent];
    v13 = [blacklistedStatesCurrent countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(blacklistedStatesCurrent);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          if ([v17 blacklistedState] == state && objc_msgSend(v17, "blacklistedReason") == a5)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [blacklistedStatesCurrent countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v14);
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __77__WFBlacklistEngine_removeBlacklistedStateForNetworkWithReason_state_reason___block_invoke;
    v25[3] = &unk_2789C8318;
    v18 = v8;
    v26 = v18;
    [v11 enumerateObjectsUsingBlock:v25];
    blacklistedStatesCurrent2 = [v18 blacklistedStatesCurrent];
    [blacklistedStatesCurrent2 removeObjectsInArray:v11];

    if ([v11 count])
    {
      blacklistDelegate = [(WFBlacklistEngine *)self blacklistDelegate];
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        blacklistDelegate2 = [(WFBlacklistEngine *)self blacklistDelegate];
        [blacklistDelegate2 blacklistDidUpdate];
      }
    }

    [v11 removeAllObjects];

    v9 = v8 != 0;
  }

  [(WFBlacklistEngine *)self _printBlacklist];
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)removeBlacklistedStateWithUnblacklistType:(unint64_t)type
{
  v119 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      obj = self->_blacklist;
      v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v102 objects:v118 count:16];
      v8 = 0x277CCA000uLL;
      if (v7)
      {
        v9 = v7;
        v10 = 0;
        v11 = 0;
        v84 = *v103;
        v79 = v6;
        v12 = MEMORY[0x277D86220];
        selfCopy = self;
        while (1)
        {
          v13 = 0;
          v14 = v11;
          v80 = v9;
          do
          {
            if (*v103 != v84)
            {
              objc_enumerationMutation(obj);
            }

            v85 = v13;
            v11 = *(*(&v102 + 1) + 8 * v13);

            if (type == 1)
            {
              blacklistTriggers = [v11 blacklistTriggers];
              [blacklistTriggers removeAllObjects];

              blacklistedStatesCurrent = [v11 blacklistedStatesCurrent];
              v100[0] = MEMORY[0x277D85DD0];
              v100[1] = 3221225472;
              v100[2] = __63__WFBlacklistEngine_removeBlacklistedStateWithUnblacklistType___block_invoke;
              v100[3] = &unk_2789C8318;
              v17 = v11;
              v101 = v17;
              [blacklistedStatesCurrent enumerateObjectsUsingBlock:v100];

              blacklistedStatesCurrent2 = [v17 blacklistedStatesCurrent];
              [blacklistedStatesCurrent2 removeAllObjects];

              [v79 addObject:v17];
              v10 = 1;
              ssid = v101;
              goto LABEL_61;
            }

            v83 = v10;
            networkDelegate = [v11 networkDelegate];
            ssid = [networkDelegate ssid];

            networkDelegate2 = [v11 networkDelegate];
            bssid = [networkDelegate2 bssid];

            networkDelegate3 = [v11 networkDelegate];
            v23 = [(WFBlacklistEngine *)self isNetworkInBlacklistedState:networkDelegate3 state:1];

            v24 = 0.0;
            v82 = v11;
            if (v23)
            {
              blacklistTriggers2 = [v11 blacklistTriggers];
              [blacklistTriggers2 removeAllObjects];

              v98 = 0u;
              v99 = 0u;
              v96 = 0u;
              v97 = 0u;
              blacklistedStatesCurrent3 = [v11 blacklistedStatesCurrent];
              v27 = [blacklistedStatesCurrent3 countByEnumeratingWithState:&v96 objects:v117 count:16];
              if (!v27)
              {
                goto LABEL_38;
              }

              v28 = v27;
              v29 = *v97;
              while (1)
              {
                v30 = 0;
                do
                {
                  if (*v97 != v29)
                  {
                    objc_enumerationMutation(blacklistedStatesCurrent3);
                  }

                  v31 = *(*(&v96 + 1) + 8 * v30);
                  if ([v31 blacklistedState] != 1)
                  {
                    goto LABEL_28;
                  }

                  if ([v31 blacklistedReason] == 6)
                  {
                    goto LABEL_32;
                  }

                  if (type != 3)
                  {
                    goto LABEL_25;
                  }

                  [v31 blacklistedStateTimestamp];
                  if (v32 > v24)
                  {
                    [v31 blacklistedStateTimestamp];
                    v24 = v33;
                  }

                  date = [MEMORY[0x277CBEAA8] date];
                  [date timeIntervalSince1970];
                  v36 = v35;

                  [(WFBlacklistEngine *)selfCopy autojoinBlacklistExpiry];
                  v37 = *(v8 + 3240);
                  if (v36 - v24 > v38)
                  {
                    v39 = [v37 stringWithFormat:@"Network '%@' is due for unblacklisting", ssid];
                    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                    {
                      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v39, "UTF8String")];
                      uTF8String = [v40 UTF8String];
                      *buf = 136446210;
                      v107 = uTF8String;
                      _os_log_impl(&dword_2332D7000, v12, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);

                      v8 = 0x277CCA000uLL;
                    }

LABEL_25:
                    v42 = [*(v8 + 3240) stringWithFormat:@"%s Unblacklisting network '%@' for autojoin ", "-[WFBlacklistEngine removeBlacklistedStateWithUnblacklistType:]", ssid];
                    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                    {
                      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v42, "UTF8String")];
                      uTF8String2 = [v43 UTF8String];
                      *buf = 136446210;
                      v107 = uTF8String2;
                      _os_log_impl(&dword_2332D7000, v12, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);

                      v8 = 0x277CCA000uLL;
                    }

                    [v4 addObject:v31];
LABEL_28:
                    if ([v31 blacklistedState] == 3)
                    {
                      v45 = [*(v8 + 3240) stringWithFormat:@"%s Unblacklisting network '%@' for WoW ", "-[WFBlacklistEngine removeBlacklistedStateWithUnblacklistType:]", ssid];
                      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                      {
                        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v45, "UTF8String")];
                        uTF8String3 = [v46 UTF8String];
                        *buf = 136446210;
                        v107 = uTF8String3;
                        _os_log_impl(&dword_2332D7000, v12, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);

                        v8 = 0x277CCA000;
                      }

                      [v4 addObject:v31];
                    }

                    goto LABEL_32;
                  }

                  v48 = [v37 stringWithFormat:@"Skip unblacklisting network '%@' - not due.", ssid];
                  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                  {
                    v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v48, "UTF8String")];
                    uTF8String4 = [v49 UTF8String];
                    *buf = 136446210;
                    v107 = uTF8String4;
                    _os_log_impl(&dword_2332D7000, v12, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);

                    v8 = 0x277CCA000;
                  }

LABEL_32:
                  ++v30;
                }

                while (v28 != v30);
                v51 = [blacklistedStatesCurrent3 countByEnumeratingWithState:&v96 objects:v117 count:16];
                v28 = v51;
                if (!v51)
                {
LABEL_38:

                  self = selfCopy;
                  v9 = v80;
                  v11 = v82;
                  break;
                }
              }
            }

            networkDelegate4 = [v11 networkDelegate];
            v53 = [(WFBlacklistEngine *)self isNetworkInBlacklistedState:networkDelegate4 state:2];

            if (!v53)
            {
              goto LABEL_60;
            }

            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            blacklistedStatesCurrent4 = [v11 blacklistedStatesCurrent];
            v55 = [blacklistedStatesCurrent4 countByEnumeratingWithState:&v92 objects:v116 count:16];
            if (!v55)
            {
              goto LABEL_59;
            }

            v56 = v55;
            v57 = *v93;
            do
            {
              for (i = 0; i != v56; ++i)
              {
                if (*v93 != v57)
                {
                  objc_enumerationMutation(blacklistedStatesCurrent4);
                }

                v59 = *(*(&v92 + 1) + 8 * i);
                if ([v59 blacklistedState] == 2)
                {
                  if (type != 3)
                  {
                    goto LABEL_52;
                  }

                  [v59 blacklistedStateTimestamp];
                  if (v60 > v24)
                  {
                    [v59 blacklistedStateTimestamp];
                    v24 = v61;
                  }

                  date2 = [MEMORY[0x277CBEAA8] date];
                  [date2 timeIntervalSince1970];
                  v64 = v63;

                  v65 = v64 - v24;
                  [(WFBlacklistEngine *)selfCopy bssBlacklistExpiry];
                  v67 = v66;
                  v68 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
                  if (v65 > v67)
                  {
                    if (v68)
                    {
                      *buf = 141558786;
                      v107 = 1752392040;
                      v108 = 2112;
                      v109 = ssid;
                      v110 = 2160;
                      v111 = 1752392040;
                      v112 = 2112;
                      v113 = bssid;
                      _os_log_error_impl(&dword_2332D7000, v12, OS_LOG_TYPE_ERROR, "BSS '%{mask.hash}@[%{mask.hash}@]' is due for unblacklisting", buf, 0x2Au);
                    }

LABEL_52:
                    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136316162;
                      v107 = "[WFBlacklistEngine removeBlacklistedStateWithUnblacklistType:]";
                      v108 = 2160;
                      v109 = 1752392040;
                      v110 = 2112;
                      v111 = ssid;
                      v112 = 2160;
                      v113 = 1752392040;
                      v114 = 2112;
                      v115 = bssid;
                      _os_log_error_impl(&dword_2332D7000, v12, OS_LOG_TYPE_ERROR, "%s Unblacklisting BSS '%{mask.hash}@[%{mask.hash}@]' for autojoin ", buf, 0x34u);
                    }

                    [v4 addObject:v59];
                    continue;
                  }

                  if (v68)
                  {
                    *buf = 141558786;
                    v107 = 1752392040;
                    v108 = 2112;
                    v109 = ssid;
                    v110 = 2160;
                    v111 = 1752392040;
                    v112 = 2112;
                    v113 = bssid;
                    _os_log_error_impl(&dword_2332D7000, v12, OS_LOG_TYPE_ERROR, "Skip unblacklisting BSS '%{mask.hash}@[%{mask.hash}@]' - not due.", buf, 0x2Au);
                  }
                }
              }

              v56 = [blacklistedStatesCurrent4 countByEnumeratingWithState:&v92 objects:v116 count:16];
            }

            while (v56);
LABEL_59:

            self = selfCopy;
            v9 = v80;
            v11 = v82;
LABEL_60:
            v89[0] = MEMORY[0x277D85DD0];
            v89[1] = 3221225472;
            v89[2] = __63__WFBlacklistEngine_removeBlacklistedStateWithUnblacklistType___block_invoke_107;
            v89[3] = &unk_2789C8340;
            typeCopy = type;
            v69 = v11;
            v90 = v69;
            [v4 enumerateObjectsUsingBlock:v89];
            blacklistedStatesCurrent5 = [v69 blacklistedStatesCurrent];
            [blacklistedStatesCurrent5 removeObjectsInArray:v4];

            v10 = ([v4 count] != 0) | v83;
            [v4 removeAllObjects];

            v8 = 0x277CCA000;
LABEL_61:

            v13 = v85 + 1;
            v14 = v11;
          }

          while (v85 + 1 != v9);
          v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v102 objects:v118 count:16];
          if (!v9)
          {

            v6 = v79;
            goto LABEL_65;
          }
        }
      }

      LOBYTE(v10) = 0;
LABEL_65:

      if ([v6 count])
      {
        [*(v8 + 3240) stringWithFormat:@"%s Unblacklisting all networks", "-[WFBlacklistEngine removeBlacklistedStateWithUnblacklistType:]"];
        v72 = v71 = v8;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v73 = [*(v71 + 3240) stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v72, "UTF8String")];
          uTF8String5 = [v73 UTF8String];
          *buf = 136446210;
          v107 = uTF8String5;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
        }

        [(NSMutableArray *)self->_blacklist removeObjectsInArray:v6];
      }

      if (v10)
      {
        blacklistDelegate = [(WFBlacklistEngine *)self blacklistDelegate];
        v76 = objc_opt_respondsToSelector();

        if (v76)
        {
          blacklistDelegate2 = [(WFBlacklistEngine *)self blacklistDelegate];
          [blacklistDelegate2 blacklistDidUpdate];
        }
      }

      [(WFBlacklistEngine *)self _printBlacklist];
    }

    else
    {
      [WFBlacklistEngine removeBlacklistedStateWithUnblacklistType:];
    }
  }

  else
  {
    [WFBlacklistEngine removeBlacklistedStateWithUnblacklistType:];
  }

  v78 = *MEMORY[0x277D85DE8];
}

uint64_t __63__WFBlacklistEngine_removeBlacklistedStateWithUnblacklistType___block_invoke_107(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  if (v3 == 2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4 * (v3 == 3);
  }

  return [v2 processBlacklistedStateMetric:a2 unblacklisting:1 unblacklistingReason:v5];
}

- (void)removeExpiredBlacklistedState:(unint64_t)state
{
  v96 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v5)
  {
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = self->_blacklist;
    v76 = [(NSMutableArray *)obj countByEnumeratingWithState:&v88 objects:v95 count:16];
    if (v76)
    {
      v6 = 0;
      v75 = *v89;
      v79 = v5;
      selfCopy = self;
LABEL_4:
      v7 = 0;
      v8 = v6;
      while (1)
      {
        if (*v89 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v88 + 1) + 8 * v7);

        blacklistedStatesCurrent = [v6 blacklistedStatesCurrent];

        if (blacklistedStatesCurrent)
        {
          break;
        }

LABEL_61:
        ++v7;
        v8 = v6;
        if (v7 == v76)
        {
          v76 = [(NSMutableArray *)obj countByEnumeratingWithState:&v88 objects:v95 count:16];
          if (!v76)
          {
            v72 = 0;
            goto LABEL_66;
          }

          goto LABEL_4;
        }
      }

      networkDelegate = [v6 networkDelegate];
      ssid = [networkDelegate ssid];

      v80 = ssid;
      if (ssid)
      {
        v78 = v7;
        blacklistedStatesHistory = [v6 blacklistedStatesHistory];
        v13 = [blacklistedStatesHistory count];

        v14 = 0.0;
        if (v13 >= 1)
        {
          v15 = (v13 & 0x7FFFFFFF) + 1;
          while (1)
          {
            blacklistedStatesHistory2 = [v6 blacklistedStatesHistory];
            v17 = [blacklistedStatesHistory2 objectAtIndex:v15 - 2];

            if (v17)
            {
              if ([v17 blacklistedState] == state || objc_msgSend(v17, "blacklistedState") == 5)
              {
                break;
              }
            }

            if (--v15 <= 1)
            {
              goto LABEL_17;
            }
          }

          [v17 blacklistedStateTimestamp];
          v14 = v18;
        }

LABEL_17:
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v77 = v6;
        blacklistedStatesCurrent2 = [v6 blacklistedStatesCurrent];
        v20 = [blacklistedStatesCurrent2 countByEnumeratingWithState:&v84 objects:v94 count:16];
        v21 = 0x277CCA000uLL;
        if (!v20)
        {
          goto LABEL_55;
        }

        v22 = v20;
        v23 = *v85;
LABEL_19:
        v24 = 0;
        while (1)
        {
          if (*v85 != v23)
          {
            objc_enumerationMutation(blacklistedStatesCurrent2);
          }

          v25 = *(*(&v84 + 1) + 8 * v24);
          date = [MEMORY[0x277CBEAA8] date];
          [date timeIntervalSince1970];
          v28 = v27;

          if ([v25 blacklistedState] != state || objc_msgSend(v25, "blacklistedState") != 3)
          {
            goto LABEL_35;
          }

          [(WFBlacklistEngine *)self wowBlacklistExpiry];
          if (v14 != 0.0)
          {
            break;
          }

          blacklistedStateString3 = [*(v21 + 3240) stringWithFormat:@"%s No history for most recent blacklisting time!!", "-[WFBlacklistEngine removeExpiredBlacklistedState:]"];
          v31 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

LABEL_49:

LABEL_50:
          if (v22 == ++v24)
          {
            v66 = [blacklistedStatesCurrent2 countByEnumeratingWithState:&v84 objects:v94 count:16];
            v22 = v66;
            if (!v66)
            {
LABEL_55:

              v82[0] = MEMORY[0x277D85DD0];
              v82[1] = 3221225472;
              v82[2] = __51__WFBlacklistEngine_removeExpiredBlacklistedState___block_invoke;
              v82[3] = &unk_2789C8318;
              v6 = v77;
              v67 = v77;
              v83 = v67;
              v5 = v79;
              [v79 enumerateObjectsUsingBlock:v82];
              blacklistedStatesCurrent3 = [v67 blacklistedStatesCurrent];
              [blacklistedStatesCurrent3 removeObjectsInArray:v79];

              if ([v79 count])
              {
                blacklistDelegate = [(WFBlacklistEngine *)self blacklistDelegate];
                v70 = objc_opt_respondsToSelector();

                v7 = v78;
                if (v70)
                {
                  blacklistDelegate2 = [(WFBlacklistEngine *)self blacklistDelegate];
                  [blacklistDelegate2 blacklistDidUpdate];
                }

                v5 = v79;
                [v79 removeAllObjects];
                [(WFBlacklistEngine *)self _printBlacklist];
              }

              else
              {
                [v79 removeAllObjects];
                v7 = v78;
              }

              goto LABEL_61;
            }

            goto LABEL_19;
          }
        }

        v34 = v29;
        if ([v25 blacklistedReason] == 2)
        {
          [v25 blacklistedStateTimestamp];
          if (v28 - v35 <= 3600.0)
          {
            blacklistedStateString3 = [*(v21 + 3240) stringWithFormat:@"%s Skipping blacklist expiration: recent power alert", "-[WFBlacklistEngine removeExpiredBlacklistedState:]"];
            v31 = MEMORY[0x277D86220];
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_49;
            }

LABEL_26:
            v32 = [*(v21 + 3240) stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(blacklistedStateString3, "UTF8String")];
            uTF8String = [v32 UTF8String];
            *buf = 136446210;
            *&buf[4] = uTF8String;
            _os_log_impl(&dword_2332D7000, v31, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);

            goto LABEL_49;
          }
        }

        v36 = [*(v21 + 3240) stringWithFormat:@"%s timeDiff :%f expiry :%f ", "-[WFBlacklistEngine removeExpiredBlacklistedState:]", v28 - v14, *&v34];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v37 = [*(v21 + 3240) stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v36, "UTF8String")];
          uTF8String2 = [v37 UTF8String];
          *buf = 136446210;
          *&buf[4] = uTF8String2;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);

          self = selfCopy;
        }

        if (v28 - v14 > v34)
        {
          blacklistedStateString = [v25 blacklistedStateString];
          [v25 blacklistedStateTimestamp];
          v40 = *(v21 + 3240);
          v41 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
          v42 = [v40 stringWithFormat:@"%s Unblacklisting '%@' expired blacklisted state %@ (%@) for:%@", "-[WFBlacklistEngine removeExpiredBlacklistedState:]", v80, blacklistedStateString, v41, v80];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v42, "UTF8String")];
            uTF8String3 = [v43 UTF8String];
            *buf = 136446210;
            *&buf[4] = uTF8String3;
            _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
          }

          [v79 addObject:v25];
          self = selfCopy;
          v21 = 0x277CCA000uLL;
        }

LABEL_35:
        if ([v25 blacklistedState] == state && objc_msgSend(v25, "blacklistedState") == 2 && objc_msgSend(v25, "blacklistedReason") == 8)
        {
          [(WFBlacklistEngine *)self bssBlacklistExpiry];
          v46 = v45;
          v47 = *(v21 + 3240);
          [v25 blacklistedStateTimestamp];
          v49 = [v47 stringWithFormat:@"%s timeDiff :%f expiry :%f ", "-[WFBlacklistEngine removeExpiredBlacklistedState:]", v28 - v48, *&v46];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v49, "UTF8String")];
            uTF8String4 = [v50 UTF8String];
            *buf = 136446210;
            *&buf[4] = uTF8String4;
            _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
          }

          [v25 blacklistedStateTimestamp];
          v21 = 0x277CCA000uLL;
          if (v28 - v52 > v46)
          {
            blacklistedStateString2 = [v25 blacklistedStateString];
            [v25 blacklistedStateTimestamp];
            v54 = MEMORY[0x277CCACA8];
            v55 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
            v56 = [v54 stringWithFormat:@"%s Unblacklisting '%@' expired blacklisted state %@ (%@) for:%@", "-[WFBlacklistEngine removeExpiredBlacklistedState:]", v80, blacklistedStateString2, v55, v80];

            v57 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v56, "UTF8String")];
              uTF8String5 = [v58 UTF8String];
              *buf = 136446210;
              *&buf[4] = uTF8String5;
              _os_log_impl(&dword_2332D7000, v57, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
            }

            [v79 addObject:v25];
            self = selfCopy;
            v21 = 0x277CCA000uLL;
          }
        }

        if ([v25 blacklistedState] != state || objc_msgSend(v25, "blacklistedState") != 4)
        {
          goto LABEL_50;
        }

        blacklistedStateString3 = [v25 blacklistedStateString];
        [v25 blacklistedStateTimestamp];
        v60 = *(v21 + 3240);
        v61 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
        v62 = [v60 stringWithFormat:@"%s Unblacklisting '%@' expired blacklisted state %@ (%@) for:%@", "-[WFBlacklistEngine removeExpiredBlacklistedState:]", v80, blacklistedStateString3, v61, v80];

        v63 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v62, "UTF8String")];
          uTF8String6 = [v64 UTF8String];
          *buf = 136446210;
          *&buf[4] = uTF8String6;
          _os_log_impl(&dword_2332D7000, v63, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
        }

        [v79 addObject:v25];
        self = selfCopy;
        v21 = 0x277CCA000;
        goto LABEL_49;
      }

      [(WFBlacklistEngine *)v6 removeExpiredBlacklistedState:buf];
      v6 = v92;
      v72 = *buf;
LABEL_66:
    }

    else
    {
      v72 = 0;
    }
  }

  else
  {
    [WFBlacklistEngine removeExpiredBlacklistedState:];
    v72 = *buf;
  }

  v73 = *MEMORY[0x277D85DE8];
}

- (void)removeBlacklistedStates
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Clearing all blacklisted networks: ", "-[WFBlacklistEngine removeBlacklistedStates]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v4 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  if ([(NSMutableArray *)self->_blacklist count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = self->_blacklist;
    v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      selfCopy = self;
      v8 = 0;
      v9 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v21 + 1) + 8 * i);

          [v5 addObject:v11];
          blacklistedStatesCurrent = [v11 blacklistedStatesCurrent];
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __44__WFBlacklistEngine_removeBlacklistedStates__block_invoke;
          v19[3] = &unk_2789C8318;
          v8 = v11;
          v20 = v8;
          [blacklistedStatesCurrent enumerateObjectsUsingBlock:v19];
        }

        v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);

      self = selfCopy;
    }

    [(NSMutableArray *)self->_blacklist removeObjectsInArray:v5];
    blacklistDelegate = [(WFBlacklistEngine *)self blacklistDelegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      blacklistDelegate2 = [(WFBlacklistEngine *)self blacklistDelegate];
      [blacklistDelegate2 blacklistDidUpdate];
    }
  }

  else
  {
    v5 = 0;
  }

  [(WFBlacklistEngine *)self _printBlacklist];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)clearTriggerForNetworkWithUnblacklistReason:(id)reason reason:(unint64_t)a4
{
  v97 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [(WFBlacklistEngine *)self _printBlacklist];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Unblacklisting all networks", "-[WFBlacklistEngine clearTriggerForNetworkWithUnblacklistReason:reason:]"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v6, "UTF8String")];
      *buf = 136446210;
      uTF8String = [v7 UTF8String];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
    }

    [(WFBlacklistEngine *)self removeBlacklistedStates];
  }

  v8 = [(WFBlacklistEngine *)self _findBlacklistNode:reasonCopy];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v9 && (v65 = objc_alloc_init(MEMORY[0x277CBEB18])) != 0)
    {
      networkDelegate = [v8 networkDelegate];
      ssid = [networkDelegate ssid];

      v64 = ssid;
      if (ssid)
      {
        v58 = reasonCopy;
        networkDelegate2 = [v8 networkDelegate];
        bssid = [networkDelegate2 bssid];

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        blacklistedStatesCurrent = [v8 blacklistedStatesCurrent];
        v14 = [blacklistedStatesCurrent countByEnumeratingWithState:&v74 objects:v96 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v75;
          v17 = MEMORY[0x277D86220];
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v75 != v16)
              {
                objc_enumerationMutation(blacklistedStatesCurrent);
              }

              v19 = *(*(&v74 + 1) + 8 * i);
              if ([v19 blacklistedState] == 1)
              {
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316162;
                  uTF8String = "[WFBlacklistEngine clearTriggerForNetworkWithUnblacklistReason:reason:]";
                  v81 = 2160;
                  v82 = 1752392040;
                  v83 = 2112;
                  v84 = v64;
                  v85 = 2160;
                  v86 = 1752392040;
                  v87 = 2112;
                  v88 = bssid;
                  _os_log_error_impl(&dword_2332D7000, v17, OS_LOG_TYPE_ERROR, "%s Unblacklisting and removing '%{mask.hash}@[%{mask.hash}@]' from Autojoin blacklist", buf, 0x34u);
                }

                [v9 addObject:v19];
              }

              if ([v19 blacklistedState] == 3 && -[WFBlacklistEngine _evaluateTriggersForUnblacklisting:unblacklistReason:ssid:](self, "_evaluateTriggersForUnblacklisting:unblacklistReason:ssid:", v8, a4, v64))
              {
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316162;
                  uTF8String = "[WFBlacklistEngine clearTriggerForNetworkWithUnblacklistReason:reason:]";
                  v81 = 2160;
                  v82 = 1752392040;
                  v83 = 2112;
                  v84 = v64;
                  v85 = 2160;
                  v86 = 1752392040;
                  v87 = 2112;
                  v88 = bssid;
                  _os_log_error_impl(&dword_2332D7000, v17, OS_LOG_TYPE_ERROR, "%s Unblacklisting and removing '%{mask.hash}@[%{mask.hash}@]' from WoW blacklist", buf, 0x34u);
                }

                [v9 addObject:v19];
              }

              if ([v19 blacklistedState] == 2)
              {
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316162;
                  uTF8String = "[WFBlacklistEngine clearTriggerForNetworkWithUnblacklistReason:reason:]";
                  v81 = 2160;
                  v82 = 1752392040;
                  v83 = 2112;
                  v84 = v64;
                  v85 = 2160;
                  v86 = 1752392040;
                  v87 = 2112;
                  v88 = bssid;
                  _os_log_error_impl(&dword_2332D7000, v17, OS_LOG_TYPE_ERROR, "%s Unblacklisting and removing '%{mask.hash}@[%{mask.hash}@]' from BSS blacklist", buf, 0x34u);
                }

                [v9 addObject:v19];
              }
            }

            v15 = [blacklistedStatesCurrent countByEnumeratingWithState:&v74 objects:v96 count:16];
          }

          while (v15);
        }

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        obj = [v8 blacklistTriggers];
        v20 = [obj countByEnumeratingWithState:&v70 objects:v95 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = MEMORY[0x277D86220];
          v23 = *v71;
          do
          {
            v24 = 0;
            do
            {
              if (*v71 != v23)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v70 + 1) + 8 * v24);
              triggerReasonString = [v25 triggerReasonString];
              [v25 triggerReasonTimestamp];
              v28 = v27;
              date = [MEMORY[0x277CBEAA8] date];
              [date timeIntervalSince1970];
              v31 = v30;

              if (![v25 triggerReason] || objc_msgSend(v25, "triggerReason") == 1 || objc_msgSend(v25, "triggerReason") == 5 || objc_msgSend(v25, "triggerReason") == 7 || objc_msgSend(v25, "triggerReason") == 2 || objc_msgSend(v25, "triggerReason") == 3 || objc_msgSend(v25, "triggerReason") == 11 || objc_msgSend(v25, "triggerReason") == 12)
              {
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  v32 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v28];
                  *buf = 136316674;
                  uTF8String = "[WFBlacklistEngine clearTriggerForNetworkWithUnblacklistReason:reason:]";
                  v81 = 2112;
                  v82 = triggerReasonString;
                  v83 = 2112;
                  v84 = v32;
                  v85 = 2160;
                  v86 = 1752392040;
                  v87 = 2112;
                  v88 = v64;
                  v89 = 2160;
                  v90 = 1752392040;
                  v91 = 2112;
                  v92 = bssid;
                  v33 = v22;
                  v34 = "%s Clearing trigger %@ (%@) for '%{mask.hash}@[%{mask.hash}@]'";
                  goto LABEL_47;
                }

                goto LABEL_43;
              }

              if (a4 == 1)
              {
                v36 = v31 - v28;
                if ([v25 triggerReason] == 4 && v28 != 0.0 && v36 > 300.0)
                {
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    v32 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v28];
                    *buf = 136316674;
                    uTF8String = "[WFBlacklistEngine clearTriggerForNetworkWithUnblacklistReason:reason:]";
                    v81 = 2112;
                    v82 = triggerReasonString;
                    v83 = 2112;
                    v84 = v32;
                    v85 = 2160;
                    v86 = 1752392040;
                    v87 = 2112;
                    v88 = v64;
                    v89 = 2160;
                    v90 = 1752392040;
                    v91 = 2112;
                    v92 = bssid;
                    v33 = v22;
                    v34 = "%s Clearing(for interval exceeded) trigger %@ (%@) for '%{mask.hash}@[%{mask.hash}@]'";
LABEL_47:
                    v35 = 72;
LABEL_48:
                    _os_log_error_impl(&dword_2332D7000, v33, OS_LOG_TYPE_ERROR, v34, buf, v35);
                  }

                  goto LABEL_43;
                }

                if ([v25 triggerReason] == 8 && v28 != 0.0)
                {
                  [(WFBlacklistEngine *)self bssBlacklistExpiry];
                  if (v36 > v37)
                  {
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                    {
                      v32 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v28];
                      [v25 triggerReasonTimestamp];
                      *buf = 136316930;
                      uTF8String = "[WFBlacklistEngine clearTriggerForNetworkWithUnblacklistReason:reason:]";
                      v81 = 2112;
                      v82 = triggerReasonString;
                      v83 = 2112;
                      v84 = v32;
                      v85 = 2160;
                      v86 = 1752392040;
                      v87 = 2112;
                      v88 = v64;
                      v89 = 2160;
                      v90 = 1752392040;
                      v91 = 2112;
                      v92 = bssid;
                      v93 = 2048;
                      v94 = (v31 - v38);
                      v33 = v22;
                      v34 = "%s Clearing(for interval exceeded) trigger %@ (%@) for '%{mask.hash}@[%{mask.hash}@] (diff:%lu)'";
                      v35 = 82;
                      goto LABEL_48;
                    }

LABEL_43:
                    [v65 addObject:v25];
                    goto LABEL_44;
                  }
                }
              }

              v39 = dbl_2333AB5A0[[v25 triggerReason] == 2];
              [v25 triggerReasonTimestamp];
              if (v31 - v40 > v39)
              {
                v59 = MEMORY[0x277CCACA8];
                v41 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v31];
                v60 = [v59 stringWithFormat:@"%s Clearing(expired) trigger %@ (%@) for '%@'", "-[WFBlacklistEngine clearTriggerForNetworkWithUnblacklistReason:reason:]", triggerReasonString, v41, v64];

                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v60, "UTF8String")];
                  uTF8String2 = [v42 UTF8String];
                  *buf = 136446210;
                  uTF8String = uTF8String2;
                  _os_log_impl(&dword_2332D7000, v22, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
                }

                goto LABEL_43;
              }

LABEL_44:

              ++v24;
            }

            while (v21 != v24);
            v44 = [obj countByEnumeratingWithState:&v70 objects:v95 count:16];
            v21 = v44;
          }

          while (v44);
        }

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v9 = v9;
        v45 = [v9 countByEnumeratingWithState:&v66 objects:v78 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v67;
          do
          {
            for (j = 0; j != v46; ++j)
            {
              if (*v67 != v47)
              {
                objc_enumerationMutation(v9);
              }

              [v8 processBlacklistedStateMetric:*(*(&v66 + 1) + 8 * j) unblacklisting:1 unblacklistingReason:7];
            }

            v46 = [v9 countByEnumeratingWithState:&v66 objects:v78 count:16];
          }

          while (v46);
        }

        blacklistedStatesCurrent2 = [v8 blacklistedStatesCurrent];
        [blacklistedStatesCurrent2 removeObjectsInArray:v9];

        blacklistTriggers = [v8 blacklistTriggers];
        [blacklistTriggers removeObjectsInArray:v65];

        if ([v9 count])
        {
          blacklistDelegate = [(WFBlacklistEngine *)self blacklistDelegate];
          v52 = objc_opt_respondsToSelector();

          if (v52)
          {
            blacklistDelegate2 = [(WFBlacklistEngine *)self blacklistDelegate];
            [blacklistDelegate2 blacklistDidUpdate];
          }
        }

        blacklistedStatesCurrent3 = [v8 blacklistedStatesCurrent];
        reasonCopy = v58;
        if ([blacklistedStatesCurrent3 count])
        {
        }

        else
        {
          blacklistTriggers2 = [v8 blacklistTriggers];
          v56 = [blacklistTriggers2 count];

          if (!v56)
          {
            [(NSMutableArray *)self->_blacklist removeObject:v8];
          }
        }
      }

      else
      {
        [WFBlacklistEngine clearTriggerForNetworkWithUnblacklistReason:reason:];
        bssid = 0;
        v64 = 0;
      }
    }

    else
    {
      [WFBlacklistEngine clearTriggerForNetworkWithUnblacklistReason:reason:];
      bssid = 0;
      v64 = 0;
      v65 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [WFBlacklistEngine clearTriggerForNetworkWithUnblacklistReason:reasonCopy reason:?];
    }

    bssid = 0;
    v64 = 0;
    v65 = 0;
    v9 = 0;
  }

  [v9 removeAllObjects];
  [v65 removeAllObjects];

  v57 = *MEMORY[0x277D85DE8];
}

- (BOOL)_evaluateTriggersForUnblacklisting:(id)unblacklisting unblacklistReason:(unint64_t)reason ssid:(id)ssid
{
  v45 = *MEMORY[0x277D85DE8];
  unblacklistingCopy = unblacklisting;
  blacklistedStatesHistory = [unblacklistingCopy blacklistedStatesHistory];
  v9 = [blacklistedStatesHistory count];

  blacklistDelegate = [(WFBlacklistEngine *)self blacklistDelegate];
  v11 = objc_opt_respondsToSelector();

  if ((v11 & 1) == 0)
  {
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Delegate does not respond to isUserModeInteractive", "-[WFBlacklistEngine _evaluateTriggersForUnblacklisting:unblacklistReason:ssid:]"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v31, "UTF8String")];
      *buf = 136446210;
      uTF8String = [v32 UTF8String];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }

    goto LABEL_24;
  }

  blacklistDelegate2 = [(WFBlacklistEngine *)self blacklistDelegate];
  isUserModeInteractive = [blacklistDelegate2 isUserModeInteractive];

  v14 = "non-interactive";
  if (isUserModeInteractive)
  {
    v14 = "interactive";
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s User mode %s ", "-[WFBlacklistEngine _evaluateTriggersForUnblacklisting:unblacklistReason:ssid:]", v14];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v15, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v16 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  if (isUserModeInteractive)
  {
LABEL_24:
    LOBYTE(v33) = 1;
    goto LABEL_25;
  }

  reasonCopy = reason;
  v37 = unblacklistingCopy;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  blacklistedStatesHistory2 = [unblacklistingCopy blacklistedStatesHistory];
  v18 = [blacklistedStatesHistory2 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = 0;
    v22 = *v39;
    v23 = v9 - 1;
    blacklistedReason = 13;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(blacklistedStatesHistory2);
        }

        v26 = *(*(&v38 + 1) + 8 * i);
        if ([v26 blacklistedState] != 1)
        {
          if ([v26 blacklistedReason] == 2)
          {
            date = [MEMORY[0x277CBEAA8] date];
            [date timeIntervalSince1970];
            v29 = v28;

            [v26 blacklistedStateTimestamp];
            v21 |= v29 - v30 < 21600.0;
          }

          if (v20 == v23)
          {
            blacklistedReason = [v26 blacklistedReason];
          }

          ++v20;
        }
      }

      v19 = [blacklistedStatesHistory2 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v19);
  }

  else
  {
    v21 = 0;
    blacklistedReason = 13;
  }

  LOBYTE(v33) = 0;
  if (reasonCopy != 1 || (v21 & 1) != 0)
  {
    unblacklistingCopy = v37;
  }

  else
  {
    unblacklistingCopy = v37;
    if (blacklistedReason <= 7)
    {
      v33 = 0xB0u >> blacklistedReason;
    }
  }

LABEL_25:

  v34 = *MEMORY[0x277D85DE8];
  return v33 & 1;
}

- (void)networkPruned:(id)pruned
{
  v36 = *MEMORY[0x277D85DE8];
  prunedCopy = pruned;
  if (!prunedCopy)
  {
    [WFBlacklistEngine networkPruned:];
LABEL_19:
    v18 = *buf;
    goto LABEL_16;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_blacklist;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    selfCopy = self;
    v21 = prunedCopy;
    v8 = 0;
    v9 = *v23;
    v10 = MEMORY[0x277D86220];
    do
    {
      v11 = 0;
      v12 = v8;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v22 + 1) + 8 * v11);

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          networkDelegate = [v8 networkDelegate];
          ssid = [networkDelegate ssid];
          networkDelegate2 = [v8 networkDelegate];
          bssid = [networkDelegate2 bssid];
          *buf = 136316162;
          *&buf[4] = "[WFBlacklistEngine networkPruned:]";
          v27 = 2160;
          v28 = 1752392040;
          v29 = 2112;
          v30 = ssid;
          v31 = 2160;
          v32 = 1752392040;
          v33 = 2112;
          v34 = bssid;
          _os_log_error_impl(&dword_2332D7000, v10, OS_LOG_TYPE_ERROR, "%s blacklistedNode %{mask.hash}@[%{mask.hash}@]", buf, 0x34u);
        }

        ++v11;
        v12 = v8;
      }

      while (v7 != v11);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v35 count:16];
    }

    while (v7);

    self = selfCopy;
    prunedCopy = v21;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [WFBlacklistEngine networkPruned:prunedCopy];
  }

  v17 = [(WFBlacklistEngine *)self _findBlacklistNode:prunedCopy, selfCopy, v21];
  if (!v17)
  {
    [WFBlacklistEngine networkPruned:];
    goto LABEL_19;
  }

  v18 = v17;
  [v17 networkPruned];
LABEL_16:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)networkRemovedForSsid:(id)ssid
{
  v48 = *MEMORY[0x277D85DE8];
  ssidCopy = ssid;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = self->_blacklist;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    selfCopy = self;
    v8 = 0;
    v9 = 0;
    v10 = *v42;
    v36 = *v42;
    do
    {
      v11 = 0;
      v12 = v9;
      v37 = v7;
      do
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * v11);

        networkDelegate = [v9 networkDelegate];
        ssid = [networkDelegate ssid];
        v15 = [ssidCopy isEqualToString:ssid];

        if (v15)
        {
          v16 = v5;
          v17 = ssidCopy;
          v18 = MEMORY[0x277CCACA8];
          networkDelegate2 = [v9 networkDelegate];
          ssid2 = [networkDelegate2 ssid];
          networkDelegate3 = [v9 networkDelegate];
          ssid3 = [networkDelegate3 ssid];
          v23 = [v18 stringWithFormat:@"%s Removing blacklist node for network %@[%@]", "-[WFBlacklistEngine networkRemovedForSsid:]", ssid2, ssid3];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v23, "UTF8String")];
            uTF8String = [v24 UTF8String];
            *buf = 136446210;
            v46 = uTF8String;
            _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
          }

          blacklistTriggers = [v9 blacklistTriggers];
          [blacklistTriggers removeAllObjects];

          blacklistedStatesCurrent = [v9 blacklistedStatesCurrent];
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __43__WFBlacklistEngine_networkRemovedForSsid___block_invoke;
          v39[3] = &unk_2789C8318;
          v28 = v9;
          v40 = v28;
          [blacklistedStatesCurrent enumerateObjectsUsingBlock:v39];

          blacklistedStatesCurrent2 = [v28 blacklistedStatesCurrent];
          [blacklistedStatesCurrent2 removeAllObjects];

          blacklistedStatesHistory = [v28 blacklistedStatesHistory];
          [blacklistedStatesHistory removeAllObjects];

          v5 = v16;
          [v16 addObject:v28];

          v8 = 1;
          ssidCopy = v17;
          v10 = v36;
          v7 = v37;
        }

        ++v11;
        v12 = v9;
      }

      while (v7 != v11);
      v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v7);

    self = selfCopy;
  }

  else
  {
    v8 = 0;
  }

  if ([v5 count])
  {
    [(NSMutableArray *)self->_blacklist removeObjectsInArray:v5];
  }

  if (v8)
  {
    blacklistDelegate = [(WFBlacklistEngine *)self blacklistDelegate];
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      blacklistDelegate2 = [(WFBlacklistEngine *)self blacklistDelegate];
      [blacklistDelegate2 blacklistDidUpdate];
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)setEnabled:(BOOL)enabled
{
  if (enabled)
  {
    self->_enabled = 1;
  }

  else
  {
    self->_enabled = 0;
    [(WFBlacklistEngine *)self removeBlacklistedStates];
  }
}

- (id)_findBlacklistNode:(id)node
{
  v19 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_blacklist;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v8 = *(*(&v14 + 1) + 8 * v10);

      if ([v8 containsNetwork:{nodeCopy, v14}])
      {
        break;
      }

      ++v10;
      v11 = v8;
      if (v7 == v10)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)retrieveNetworksInBlacklistedState:(unint64_t)state
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v5)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = self->_blacklist;
    v21 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v21)
    {
      v6 = 0;
      v20 = *v27;
      do
      {
        v7 = 0;
        v8 = v6;
        do
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v26 + 1) + 8 * v7);

          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          blacklistedStatesCurrent = [v6 blacklistedStatesCurrent];
          v10 = [blacklistedStatesCurrent countByEnumeratingWithState:&v22 objects:v31 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v23;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v23 != v12)
                {
                  objc_enumerationMutation(blacklistedStatesCurrent);
                }

                if ([*(*(&v22 + 1) + 8 * i) blacklistedState] == state)
                {
                  networkDelegate = [v6 networkDelegate];

                  if (networkDelegate)
                  {
                    networkDelegate2 = [v6 networkDelegate];
                    v16 = [networkDelegate2 copyWithZone:0];

                    if (v16)
                    {
                      [v5 addObject:v16];
                    }
                  }
                }
              }

              v11 = [blacklistedStatesCurrent countByEnumeratingWithState:&v22 objects:v31 count:16];
            }

            while (v11);
          }

          ++v7;
          v8 = v6;
        }

        while (v7 != v21);
        v21 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v21);
    }
  }

  else
  {
    [WFBlacklistEngine retrieveNetworksInBlacklistedState:];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)retrieveNetworksInBlacklistedStateHistory:(unint64_t)history
{
  v35 = *MEMORY[0x277D85DE8];
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v22)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = self->_blacklist;
    v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v29;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          v10 = v7;
          if (*v29 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v28 + 1) + 8 * i);

          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          blacklistedStatesHistory = [v7 blacklistedStatesHistory];
          v12 = [blacklistedStatesHistory countByEnumeratingWithState:&v24 objects:v33 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v25;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(blacklistedStatesHistory);
                }

                v16 = *(*(&v24 + 1) + 8 * j);
                if ([v16 blacklistedState] == history || objc_msgSend(v16, "blacklistedState") == 5)
                {
                  networkDelegate = [v7 networkDelegate];

                  if (networkDelegate)
                  {
                    networkDelegate2 = [v7 networkDelegate];
                    v19 = [networkDelegate2 copyWithZone:0];

                    if (v19)
                    {
                      [v22 addObject:v19];
                    }

                    goto LABEL_21;
                  }
                }
              }

              v13 = [blacklistedStatesHistory countByEnumeratingWithState:&v24 objects:v33 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_21:
        }

        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [WFBlacklistEngine retrieveNetworksInBlacklistedStateHistory:];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)retrieveBlacklistedStateHistoryForNetwork:(id)network state:(unint64_t)state timestamps:(id)timestamps reasonData:(id)data
{
  v40 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  timestampsCopy = timestamps;
  dataCopy = data;
  if ([(WFBlacklistEngine *)self isNetworkInBlacklistedState:networkCopy state:state])
  {
    v13 = [(WFBlacklistEngine *)self _findBlacklistNode:networkCopy];
    if (v13)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (v14)
      {
        v15 = v14;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        obj = [v13 blacklistedStatesHistory];
        v16 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v16)
        {
          v17 = v16;
          v31 = v13;
          v18 = *v34;
          do
          {
            v19 = 0;
            do
            {
              if (*v34 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v33 + 1) + 8 * v19);
              blacklistedReason = [v20 blacklistedReason];
              [v20 blacklistedStateTimestamp];
              v23 = v22;
              blacklistedReasonData = [v20 blacklistedReasonData];
              v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:blacklistedReason];
              if (v25)
              {
                v26 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
                if (v26)
                {
                  v27 = [MEMORY[0x277CCABB0] numberWithInteger:blacklistedReasonData];
                  if (v27)
                  {
                    [v15 addObject:v25];
                    if (timestampsCopy)
                    {
                      [timestampsCopy addObject:v26];
                    }

                    if (dataCopy)
                    {
                      [dataCopy addObject:v27];
                    }
                  }

                  else
                  {
                    [WFBlacklistEngine retrieveBlacklistedStateHistoryForNetwork:state:timestamps:reasonData:];
                  }
                }

                else
                {
                  [WFBlacklistEngine retrieveBlacklistedStateHistoryForNetwork:state:timestamps:reasonData:];
                  v27 = 0;
                }
              }

              else
              {
                [WFBlacklistEngine retrieveBlacklistedStateHistoryForNetwork:state:timestamps:reasonData:];
                v27 = 0;
                v26 = 0;
              }

              ++v19;
            }

            while (v17 != v19);
            v28 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
            v17 = v28;
          }

          while (v28);
          v13 = v31;
        }

        goto LABEL_24;
      }

      [WFBlacklistEngine retrieveBlacklistedStateHistoryForNetwork:state:timestamps:reasonData:];
    }

    else
    {
      [WFBlacklistEngine retrieveBlacklistedStateHistoryForNetwork:state:timestamps:reasonData:];
    }

    v15 = v38;

LABEL_24:
    goto LABEL_26;
  }

  v15 = 0;
LABEL_26:

  v29 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)retrieveReasonsForNetworkInBlacklistedState:(id)state state:(unint64_t)a4 timestamps:(id)timestamps reasonData:(id)data
{
  v43 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  timestampsCopy = timestamps;
  dataCopy = data;
  if (![(WFBlacklistEngine *)self isNetworkInBlacklistedState:stateCopy state:a4])
  {
    v15 = 0;
    goto LABEL_24;
  }

  v13 = [(WFBlacklistEngine *)self _findBlacklistNode:stateCopy];
  if (!v13)
  {
    [WFBlacklistEngine retrieveReasonsForNetworkInBlacklistedState:state:timestamps:reasonData:];
LABEL_29:
    v15 = v41;

    goto LABEL_22;
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v14)
  {
    [WFBlacklistEngine retrieveReasonsForNetworkInBlacklistedState:state:timestamps:reasonData:];
    goto LABEL_29;
  }

  v15 = v14;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [v13 blacklistTriggers];
  v16 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v16;
  v33 = v13;
  v18 = *v36;
  do
  {
    v19 = 0;
    do
    {
      if (*v36 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v35 + 1) + 8 * v19);
      triggerReason = [v20 triggerReason];
      [v20 triggerReasonTimestamp];
      v23 = v22;
      triggerReasonData = [v20 triggerReasonData];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:triggerReason];
      if (!v25)
      {
        [WFBlacklistEngine retrieveReasonsForNetworkInBlacklistedState:state:timestamps:reasonData:];
LABEL_17:
        v27 = v39;
        goto LABEL_13;
      }

      v26 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
      if (!v26)
      {
        [WFBlacklistEngine retrieveReasonsForNetworkInBlacklistedState:state:timestamps:reasonData:];
        goto LABEL_17;
      }

      v27 = v26;
      v28 = [MEMORY[0x277CCABB0] numberWithInteger:triggerReasonData];
      if (v28)
      {
        v29 = v28;
        [v15 addObject:v25];
        [timestampsCopy addObject:v27];
        [dataCopy addObject:v29];
      }

      else
      {
        [WFBlacklistEngine retrieveReasonsForNetworkInBlacklistedState:state:timestamps:reasonData:];
      }

LABEL_13:

      ++v19;
    }

    while (v17 != v19);
    v30 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    v17 = v30;
  }

  while (v30);
  v13 = v33;
LABEL_21:

LABEL_22:
LABEL_24:

  v31 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)isNetworkInBlacklistedState:(id)state state:(unint64_t)a4
{
  v5 = [(WFBlacklistEngine *)self _findBlacklistNode:state];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hasBlacklistedState:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)getRssiWhenNetworkWasBlacklisted:(id)blacklisted
{
  v3 = [(WFBlacklistEngine *)self _findBlacklistNode:blacklisted];
  v4 = v3;
  if (v3)
  {
    networkDelegate = [v3 networkDelegate];
    rssi = [networkDelegate rssi];
  }

  else
  {
    rssi = 0;
  }

  return rssi;
}

- (BOOL)isNetworkBlacklistedForAutoJoinDueToTrigDisc:(id)disc rssi:(int64_t *)rssi timestamp:(double *)timestamp
{
  v42 = *MEMORY[0x277D85DE8];
  discCopy = disc;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = self->_blacklist;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    rssiCopy = rssi;
    timestampCopy = timestamp;
    v11 = 0;
    v12 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        v14 = v11;
        if (*v37 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v36 + 1) + 8 * i);

        if ([v11 hasBlacklistedState:1])
        {
          networkDelegate = [v11 networkDelegate];
          ssid = [networkDelegate ssid];
          ssid2 = [discCopy ssid];
          v18 = [ssid isEqual:ssid2];

          if (v18)
          {
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            blacklistedStatesCurrent = [v11 blacklistedStatesCurrent];
            v20 = [blacklistedStatesCurrent countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v33;
              while (2)
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v33 != v22)
                  {
                    objc_enumerationMutation(blacklistedStatesCurrent);
                  }

                  v24 = *(*(&v32 + 1) + 8 * j);
                  if ([v24 blacklistedReason] == 6)
                  {
                    if (rssiCopy)
                    {
                      *rssiCopy = [v24 blacklistedReasonData];
                    }

                    if (timestampCopy)
                    {
                      [v24 blacklistedStateTimestamp];
                      *timestampCopy = v26;
                    }

                    v25 = 1;
                    goto LABEL_25;
                  }
                }

                v21 = [blacklistedStatesCurrent countByEnumeratingWithState:&v32 objects:v40 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }
            }
          }
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
    v25 = 0;
    blacklistedStatesCurrent = v11;
    v11 = 0;
LABEL_25:
  }

  else
  {
    v11 = 0;
    v25 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

- (id)retrieveBlacklistedNetworkSsids:(unint64_t)ssids
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (v5)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = self->_blacklist;
    v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v23)
    {
      v6 = 0;
      v22 = *v30;
      do
      {
        v7 = 0;
        v8 = v6;
        do
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = v7;
          v6 = *(*(&v29 + 1) + 8 * v7);

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          blacklistedStatesCurrent = [v6 blacklistedStatesCurrent];
          v10 = [blacklistedStatesCurrent countByEnumeratingWithState:&v25 objects:v34 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v26;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v26 != v12)
                {
                  objc_enumerationMutation(blacklistedStatesCurrent);
                }

                if ([*(*(&v25 + 1) + 8 * i) blacklistedState] == ssids)
                {
                  networkDelegate = [v6 networkDelegate];
                  ssid = [networkDelegate ssid];

                  [v5 appendFormat:@"%@ ", ssid];
                }
              }

              v11 = [blacklistedStatesCurrent countByEnumeratingWithState:&v25 objects:v34 count:16];
            }

            while (v11);
          }

          v7 = v24 + 1;
          v8 = v6;
        }

        while (v24 + 1 != v23);
        v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v23);
    }

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s : %@", "-[WFBlacklistEngine retrieveBlacklistedNetworkSsids:]", v5];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v16, "UTF8String")];
      uTF8String = [v17 UTF8String];
      *buf = 136446210;
      *&buf[4] = uTF8String;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }
  }

  else
  {
    [WFBlacklistEngine retrieveBlacklistedNetworkSsids:];
    v16 = *buf;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v5;
}

- (unint64_t)getBlacklistedNetworkCount
{
  v32 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = self->_blacklist;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v25;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        v9 = v5;
        if (*v25 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v5 = *(*(&v24 + 1) + 8 * i);

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        blacklistedStatesCurrent = [v5 blacklistedStatesCurrent];
        v11 = [blacklistedStatesCurrent countByEnumeratingWithState:&v20 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
LABEL_8:
          v14 = 0;
          while (1)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(blacklistedStatesCurrent);
            }

            if ([*(*(&v20 + 1) + 8 * v14) blacklistedState])
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [blacklistedStatesCurrent countByEnumeratingWithState:&v20 objects:v30 count:16];
              if (v12)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }
      }

      v6 += v4;
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0;
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s count:%lu", "-[WFBlacklistEngine getBlacklistedNetworkCount]", v6];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v15, "UTF8String")];
    uTF8String = [v16 UTF8String];
    *buf = 136446210;
    v29 = uTF8String;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_printBlacklist
{
  v106 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_blacklist count])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Current blacklist:", "-[WFBlacklistEngine _printBlacklist]"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
      *buf = 136446210;
      uTF8String = [v4 UTF8String];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
    }

    v75 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v75 setDateFormat:@"MM/dd/yy HH:mm:ss.SSS"];
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = self->_blacklist;
    v68 = [(NSMutableArray *)obj countByEnumeratingWithState:&v88 objects:v105 count:16];
    if (v68)
    {
      v5 = MEMORY[0x277D86220];
      v67 = *v89;
      do
      {
        v6 = 0;
        do
        {
          if (*v89 != v67)
          {
            objc_enumerationMutation(obj);
          }

          v71 = v6;
          v7 = *(*(&v88 + 1) + 8 * v6);
          networkDelegate = [v7 networkDelegate];
          ssid = [networkDelegate ssid];
          v10 = [ssid copy];

          networkDelegate2 = [v7 networkDelegate];
          bssid = [networkDelegate2 bssid];
          v13 = [bssid copy];

          v72 = v7;
          blacklistedStatesCurrent = [v7 blacklistedStatesCurrent];
          v15 = [blacklistedStatesCurrent count];

          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 141559042;
            v16 = "YES";
            if (!v15)
            {
              v16 = "NO";
            }

            uTF8String = 1752392040;
            v97 = 2112;
            v98 = v10;
            v99 = 2160;
            v100 = 1752392040;
            v101 = 2112;
            v102 = v13;
            v103 = 2080;
            v104 = v16;
            _os_log_impl(&dword_2332D7000, v5, OS_LOG_TYPE_DEFAULT, "Network '%{mask.hash}@' BSSID %{mask.hash}@ isBlacklisted:%s ", buf, 0x34u);
          }

          v69 = v13;
          v70 = v10;
          v74 = [MEMORY[0x277CCAB68] stringWithString:@" BlacklistHistory: "];
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          blacklistedStatesHistory = [v7 blacklistedStatesHistory];
          v18 = [blacklistedStatesHistory countByEnumeratingWithState:&v84 objects:v94 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = 0;
            v21 = *v85;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v85 != v21)
                {
                  objc_enumerationMutation(blacklistedStatesHistory);
                }

                v23 = *(*(&v84 + 1) + 8 * i);
                blacklistedStateString = [v23 blacklistedStateString];
                [v23 blacklistedStateTimestamp];
                v25 = MEMORY[0x277CCACA8];
                v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
                v27 = [v75 stringFromDate:v26];
                v28 = [v25 stringWithFormat:@"[%d] %@ @ %@, ", v20, blacklistedStateString, v27];

                [v74 appendString:v28];
                v20 = (v20 + 1);
              }

              v19 = [blacklistedStatesHistory countByEnumeratingWithState:&v84 objects:v94 count:16];
            }

            while (v19);
          }

          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v74];
          v30 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v29, "UTF8String")];
            uTF8String2 = [v31 UTF8String];
            *buf = 136446210;
            uTF8String = uTF8String2;
            _os_log_impl(&dword_2332D7000, v30, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
          }

          v73 = [MEMORY[0x277CCAB68] stringWithString:@" States: "];
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          blacklistedStatesCurrent2 = [v72 blacklistedStatesCurrent];
          v34 = [blacklistedStatesCurrent2 countByEnumeratingWithState:&v80 objects:v93 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = 0;
            v37 = *v81;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v81 != v37)
                {
                  objc_enumerationMutation(blacklistedStatesCurrent2);
                }

                v39 = *(*(&v80 + 1) + 8 * j);
                blacklistedStateString2 = [v39 blacklistedStateString];
                [v39 blacklistedStateTimestamp];
                v41 = MEMORY[0x277CCACA8];
                v42 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
                v43 = [v75 stringFromDate:v42];
                v44 = [v41 stringWithFormat:@"[%d] %@ @ %@, ", v36, blacklistedStateString2, v43];

                [v73 appendString:v44];
                v36 = (v36 + 1);
              }

              v35 = [blacklistedStatesCurrent2 countByEnumeratingWithState:&v80 objects:v93 count:16];
            }

            while (v35);
          }

          v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v73];
          v46 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v45, "UTF8String")];
            uTF8String3 = [v47 UTF8String];
            *buf = 136446210;
            uTF8String = uTF8String3;
            _os_log_impl(&dword_2332D7000, v46, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
          }

          v49 = [MEMORY[0x277CCAB68] stringWithString:@" Triggers: "];
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          blacklistTriggers = [v72 blacklistTriggers];
          v51 = [blacklistTriggers countByEnumeratingWithState:&v76 objects:v92 count:16];
          if (v51)
          {
            v52 = v51;
            v53 = 0;
            v54 = *v77;
            do
            {
              for (k = 0; k != v52; ++k)
              {
                if (*v77 != v54)
                {
                  objc_enumerationMutation(blacklistTriggers);
                }

                v56 = *(*(&v76 + 1) + 8 * k);
                triggerReasonString = [v56 triggerReasonString];
                [v56 triggerReasonTimestamp];
                v58 = MEMORY[0x277CCACA8];
                v59 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
                v60 = [v75 stringFromDate:v59];
                v61 = [v58 stringWithFormat:@"[%d] %@ @ %@, ", v53, triggerReasonString, v60];

                [v49 appendString:v61];
                v53 = (v53 + 1);
              }

              v52 = [blacklistTriggers countByEnumeratingWithState:&v76 objects:v92 count:16];
            }

            while (v52);
          }

          v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v49];
          v5 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v62, "UTF8String")];
            uTF8String4 = [v63 UTF8String];
            *buf = 136446210;
            uTF8String = uTF8String4;
            _os_log_impl(&dword_2332D7000, v5, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
          }

          v6 = v71 + 1;
        }

        while (v71 + 1 != v68);
        v68 = [(NSMutableArray *)obj countByEnumeratingWithState:&v88 objects:v105 count:16];
      }

      while (v68);
    }
  }

  v65 = *MEMORY[0x277D85DE8];
}

+ (id)stringRepresentationWithReason:(unint64_t)reason
{
  if (reason > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789C8360[reason];
  }
}

+ (id)stringRepresentationWithState:(unint64_t)state
{
  if (state - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789C83B8[state - 1];
  }
}

- (void)initWithBlacklistDelegate:profile:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s  bssidThresholds alloc failed", "-[WFBlacklistEngine initWithBlacklistDelegate:profile:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_10() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  OUTLINED_FUNCTION_6_0();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithBlacklistDelegate:profile:.cold.2()
{
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s  ssidThresholds alloc failed", "-[WFBlacklistEngine initWithBlacklistDelegate:profile:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_10() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  OUTLINED_FUNCTION_6_0();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithBlacklistDelegate:profile:.cold.3()
{
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s _blacklist alloc failed", "-[WFBlacklistEngine initWithBlacklistDelegate:profile:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_10() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  OUTLINED_FUNCTION_6_0();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithBlacklistDelegate:profile:.cold.4()
{
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s self alloc failed", "-[WFBlacklistEngine initWithBlacklistDelegate:profile:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_10() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  OUTLINED_FUNCTION_6_0();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)changeBlacklistingThresholds:(char)a1 value:(uint64_t)a2 perSsid:(uint64_t)a3 .cold.1(char a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = "perBSSID";
  if (a1)
  {
    v3 = "perSSID";
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Invalid Config Params. type:%s triggerReason:%lu threshCount:%u", "-[WFBlacklistEngine changeBlacklistingThresholds:value:perSsid:]", v3, a2, a3];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = [0x277CCA000 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_11(), "UTF8String")];
    *buf = 136446210;
    v8 = [v5 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_evaluateTriggersForBlacklisting:reason:reasonData:bssid:ssid:state:.cold.1()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s node is null", "-[WFBlacklistEngine _evaluateTriggersForBlacklisting:reason:reasonData:bssid:ssid:state:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_11() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeBlacklistedStateForNetworkWithReason:state:reason:.cold.1()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s discardedNodes is null", "-[WFBlacklistEngine removeBlacklistedStateForNetworkWithReason:state:reason:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_11() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeBlacklistedStateWithUnblacklistType:.cold.1()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s discardedBlacklistNodes is null", "-[WFBlacklistEngine removeBlacklistedStateWithUnblacklistType:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_11() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeBlacklistedStateWithUnblacklistType:.cold.2()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s discardedNodes is null", "-[WFBlacklistEngine removeBlacklistedStateWithUnblacklistType:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_11() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeExpiredBlacklistedState:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s SSID is null", "-[WFBlacklistEngine removeExpiredBlacklistedState:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = MEMORY[0x277CCACA8];
    v15 = [v6 UTF8String];
    v8 = [v7 stringWithFormat:@"[WiFiPolicy] %s"];
    [v8 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v9, "%{public}s", v10, v11, v12, v13, v15, v16, v17);
  }

  *a3 = a1;
  *a2 = v6;
  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeExpiredBlacklistedState:.cold.2()
{
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s discardedNodes is null", "-[WFBlacklistEngine removeExpiredBlacklistedState:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_10() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  OUTLINED_FUNCTION_6_0();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)clearTriggerForNetworkWithUnblacklistReason:reason:.cold.1()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s SSID is null", "-[WFBlacklistEngine clearTriggerForNetworkWithUnblacklistReason:reason:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_11() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clearTriggerForNetworkWithUnblacklistReason:reason:.cold.2()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s discardedNodes is null", "-[WFBlacklistEngine clearTriggerForNetworkWithUnblacklistReason:reason:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_11() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clearTriggerForNetworkWithUnblacklistReason:(void *)a1 reason:.cold.4(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [a1 ssid];
  v3 = [a1 bssid];
  v5[0] = 136316162;
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s node not found with ssid:%{mask.hash}@ bssid:%{mask.hash}@", v5, 0x34u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)networkPruned:(void *)a1 .cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [a1 ssid];
  v3 = [a1 bssid];
  v5[0] = 136316162;
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s network %{mask.hash}@[%{mask.hash}@]", v5, 0x34u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)networkPruned:.cold.2()
{
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s Node not found for network", "-[WFBlacklistEngine networkPruned:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_10() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  OUTLINED_FUNCTION_6_0();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)networkPruned:.cold.3()
{
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s network nil", "-[WFBlacklistEngine networkPruned:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_10() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  OUTLINED_FUNCTION_6_0();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)retrieveNetworksInBlacklistedState:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s  results alloc failed", "-[WFBlacklistEngine retrieveNetworksInBlacklistedState:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_10() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  OUTLINED_FUNCTION_6_0();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)retrieveNetworksInBlacklistedStateHistory:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s  results alloc failed", "-[WFBlacklistEngine retrieveNetworksInBlacklistedStateHistory:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_10() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  OUTLINED_FUNCTION_6_0();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)retrieveBlacklistedStateHistoryForNetwork:state:timestamps:reasonData:.cold.1()
{
  v1 = [OUTLINED_FUNCTION_3_1() stringWithFormat:@"%s reasonDataNum failed", "-[WFBlacklistEngine retrieveBlacklistedStateHistoryForNetwork:state:timestamps:reasonData:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_16(), "UTF8String")];
    OUTLINED_FUNCTION_13([v2 UTF8String], 4.8751e-34);
    OUTLINED_FUNCTION_9(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s");
  }
}

- (void)retrieveBlacklistedStateHistoryForNetwork:state:timestamps:reasonData:.cold.2()
{
  v1 = [OUTLINED_FUNCTION_3_1() stringWithFormat:@"%s timeNum failed", "-[WFBlacklistEngine retrieveBlacklistedStateHistoryForNetwork:state:timestamps:reasonData:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_16(), "UTF8String")];
    OUTLINED_FUNCTION_13([v2 UTF8String], 4.8751e-34);
    OUTLINED_FUNCTION_9(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s");
  }
}

- (void)retrieveBlacklistedStateHistoryForNetwork:state:timestamps:reasonData:.cold.3()
{
  v1 = [OUTLINED_FUNCTION_3_1() stringWithFormat:@"%s reasonNum failed", "-[WFBlacklistEngine retrieveBlacklistedStateHistoryForNetwork:state:timestamps:reasonData:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_16(), "UTF8String")];
    OUTLINED_FUNCTION_13([v2 UTF8String], 4.8751e-34);
    OUTLINED_FUNCTION_9(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s");
  }
}

- (void)retrieveBlacklistedStateHistoryForNetwork:state:timestamps:reasonData:.cold.4()
{
  OUTLINED_FUNCTION_14();
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_7() stringWithFormat:@"%s  results alloc failed", "-[WFBlacklistEngine retrieveBlacklistedStateHistoryForNetwork:state:timestamps:reasonData:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_15() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)retrieveBlacklistedStateHistoryForNetwork:state:timestamps:reasonData:.cold.5()
{
  OUTLINED_FUNCTION_14();
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_7() stringWithFormat:@"%s  Not in blacklisted state", "-[WFBlacklistEngine retrieveBlacklistedStateHistoryForNetwork:state:timestamps:reasonData:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_15() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)retrieveReasonsForNetworkInBlacklistedState:state:timestamps:reasonData:.cold.1()
{
  v1 = [OUTLINED_FUNCTION_3_1() stringWithFormat:@"%s reasonDataNum failed", "-[WFBlacklistEngine retrieveReasonsForNetworkInBlacklistedState:state:timestamps:reasonData:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_16(), "UTF8String")];
    OUTLINED_FUNCTION_13([v2 UTF8String], 4.8751e-34);
    OUTLINED_FUNCTION_9(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s");
  }
}

- (void)retrieveReasonsForNetworkInBlacklistedState:state:timestamps:reasonData:.cold.2()
{
  v4 = [OUTLINED_FUNCTION_12() stringWithFormat:@"%s timeNum failed", "-[WFBlacklistEngine retrieveReasonsForNetworkInBlacklistedState:state:timestamps:reasonData:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = [*(v3 + 3240) stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v4, "UTF8String")];
    v6 = [v5 UTF8String];
    *v1 = 136446210;
    *v2 = v6;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", v1, 0xCu);
  }

  *v0 = v4;
}

- (void)retrieveReasonsForNetworkInBlacklistedState:state:timestamps:reasonData:.cold.3()
{
  v4 = [OUTLINED_FUNCTION_12() stringWithFormat:@"%s reasonNum failed", "-[WFBlacklistEngine retrieveReasonsForNetworkInBlacklistedState:state:timestamps:reasonData:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = [*(v3 + 3240) stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v4, "UTF8String")];
    v6 = [v5 UTF8String];
    *v1 = 136446210;
    *v2 = v6;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", v1, 0xCu);
  }

  *v0 = v4;
}

- (void)retrieveReasonsForNetworkInBlacklistedState:state:timestamps:reasonData:.cold.4()
{
  OUTLINED_FUNCTION_14();
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_7() stringWithFormat:@"%s  results alloc failed", "-[WFBlacklistEngine retrieveReasonsForNetworkInBlacklistedState:state:timestamps:reasonData:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_15() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)retrieveReasonsForNetworkInBlacklistedState:state:timestamps:reasonData:.cold.5()
{
  OUTLINED_FUNCTION_14();
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_7() stringWithFormat:@"%s  Not in blacklisted state", "-[WFBlacklistEngine retrieveReasonsForNetworkInBlacklistedState:state:timestamps:reasonData:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_15() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)retrieveBlacklistedNetworkSsids:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s list not created", "-[WFBlacklistEngine retrieveBlacklistedNetworkSsids:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [OUTLINED_FUNCTION_10() UTF8String];
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s"];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v9, v10, v11);
  }

  OUTLINED_FUNCTION_6_0();
  v8 = *MEMORY[0x277D85DE8];
}

@end