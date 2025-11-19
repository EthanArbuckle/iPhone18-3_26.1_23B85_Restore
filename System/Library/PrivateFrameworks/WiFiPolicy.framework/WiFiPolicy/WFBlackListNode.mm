@interface WFBlackListNode
- (BOOL)containsNetwork:(id)a3;
- (BOOL)hasBlacklistedState:(unint64_t)a3;
- (BOOL)updateNetwork:(id)a3;
- (WFBlackListNode)initWithBlacklistNetwork:(id)a3;
- (id)_copyCreateBlacklistedState:(unint64_t)a3 reason:(unint64_t)a4 reasonData:(int64_t)a5;
- (void)addBlacklistTrigger:(unint64_t)a3 reasonData:(int64_t)a4 bssid:(id)a5;
- (void)addBlacklistedState:(unint64_t)a3 reason:(unint64_t)a4 reasonData:(int64_t)a5;
- (void)addBlacklistedStateHistory:(id)a3 state:(unint64_t)a4 reason:(unint64_t)a5 reasonData:(int64_t)a6;
- (void)dealloc;
- (void)networkPruned;
- (void)processBlacklistedStateMetric:(id)a3 unblacklisting:(BOOL)a4 unblacklistingReason:(unint64_t)a5;
@end

@implementation WFBlackListNode

- (WFBlackListNode)initWithBlacklistNetwork:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WFBlackListNode;
  v5 = [(WFBlackListNode *)&v16 init];
  if (!v5)
  {
    [WFBlackListNode initWithBlacklistNetwork:];
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  if (!v4)
  {
    [WFBlackListNode initWithBlacklistNetwork:];
    goto LABEL_13;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  blacklistTriggers = v5->_blacklistTriggers;
  v5->_blacklistTriggers = v6;

  if (!v5->_blacklistTriggers)
  {
    [WFBlackListNode initWithBlacklistNetwork:];
    goto LABEL_13;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  blacklistedStatesCurrent = v5->_blacklistedStatesCurrent;
  v5->_blacklistedStatesCurrent = v8;

  if (!v5->_blacklistedStatesCurrent)
  {
    [WFBlackListNode initWithBlacklistNetwork:];
    goto LABEL_13;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  blacklistedStatesHistory = v5->_blacklistedStatesHistory;
  v5->_blacklistedStatesHistory = v10;

  if (!v5->_blacklistedStatesHistory)
  {
    [WFBlackListNode initWithBlacklistNetwork:];
    goto LABEL_13;
  }

  v12 = [v4 isEAP];
  v5->_enterprisePolicy = v12 & [v4 isProfileBased];
  v13 = [v4 copyWithZone:0];
  if (![v13 isEqualToBlacklistNetwork:v4])
  {
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  [(WFBlackListNode *)v5 setNetworkDelegate:v13];
  v14 = v5;
LABEL_15:

  return v14;
}

- (void)dealloc
{
  [(NSMutableArray *)self->_blacklistTriggers removeAllObjects];
  [(NSMutableArray *)self->_blacklistedStatesCurrent removeAllObjects];
  [(NSMutableArray *)self->_blacklistedStatesHistory removeAllObjects];
  v3.receiver = self;
  v3.super_class = WFBlackListNode;
  [(WFBlackListNode *)&v3 dealloc];
}

- (void)addBlacklistTrigger:(unint64_t)a3 reasonData:(int64_t)a4 bssid:(id)a5
{
  v8 = a5;
  v9 = [(WFBlackListNode *)self blacklistTriggers];
  v10 = [v9 count];

  if (v10 >= 0x10)
  {
    v11 = [(WFBlackListNode *)self blacklistTriggers];
    [v11 removeObjectAtIndex:0];
  }

  v12 = objc_alloc_init(WFBlacklistTriggerNode);
  if (v12)
  {
    v13 = [WFBlacklistEngine stringRepresentationWithReason:a3];
    [(WFBlacklistTriggerNode *)v12 setTriggerReason:a3];
    [(WFBlacklistTriggerNode *)v12 setTriggerReasonData:a4];
    if (v13)
    {
      [(WFBlacklistTriggerNode *)v12 setTriggerReasonString:v13];
    }

    v14 = [MEMORY[0x277CBEAA8] date];
    [v14 timeIntervalSince1970];
    [(WFBlacklistTriggerNode *)v12 setTriggerReasonTimestamp:?];

    if (v8)
    {
      [(WFBlacklistTriggerNode *)v12 setBssid:v8];
    }

    v15 = [(WFBlackListNode *)self blacklistTriggers];
    [v15 addObject:v12];
  }

  else
  {
    [WFBlackListNode addBlacklistTrigger:reasonData:bssid:];
    v13 = v16;
  }
}

- (BOOL)containsNetwork:(id)a3
{
  if (a3)
  {
    return [(WFBlacklistNetwork *)self->_networkDelegate isEqualToBlacklistNetwork:?];
  }

  else
  {
    return 0;
  }
}

- (BOOL)hasBlacklistedState:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(WFBlackListNode *)self blacklistedStatesCurrent];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v12 + 1) + 8 * i) blacklistedState] == a3)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)updateNetwork:(id)a3
{
  v4 = [a3 copyWithZone:0];
  networkDelegate = self->_networkDelegate;
  self->_networkDelegate = v4;

  return 1;
}

- (id)_copyCreateBlacklistedState:(unint64_t)a3 reason:(unint64_t)a4 reasonData:(int64_t)a5
{
  v8 = objc_alloc_init(WFBlacklistStateNode);
  if (v8)
  {
    v9 = [WFBlacklistEngine stringRepresentationWithState:a3];
    v10 = [WFBlacklistEngine stringRepresentationWithReason:a4];
    [(WFBlacklistStateNode *)v8 setBlacklistedState:a3];
    [(WFBlacklistStateNode *)v8 setBlacklistedStateString:v9];
    v11 = [MEMORY[0x277CBEAA8] date];
    [v11 timeIntervalSince1970];
    [(WFBlacklistStateNode *)v8 setBlacklistedStateTimestamp:?];

    [(WFBlacklistStateNode *)v8 setBlacklistedReason:a4];
    [(WFBlacklistStateNode *)v8 setBlacklistedReasonData:a5];
    [(WFBlacklistStateNode *)v8 setBlacklistedReasonString:v10];
  }

  else
  {
    [WFBlackListNode _copyCreateBlacklistedState:reason:reasonData:];
    v9 = v13;
  }

  return v8;
}

- (void)addBlacklistedState:(unint64_t)a3 reason:(unint64_t)a4 reasonData:(int64_t)a5
{
  v5 = a4;
  v51 = *MEMORY[0x277D85DE8];
  v8 = [(WFBlackListNode *)self _copyCreateBlacklistedState:a3 reason:a4 reasonData:a5];
  if (!v8)
  {
    [WFBlackListNode addBlacklistedState:reason:reasonData:];
    v10 = *buf;
    goto LABEL_20;
  }

  v9 = [(WFBlackListNode *)self networkDelegate];
  v10 = [v9 ssid];

  v11 = [(WFBlackListNode *)self networkDelegate];
  v12 = [v11 bssid];

  v13 = [(WFBlackListNode *)self blacklistedStatesCurrent];
  v14 = [v13 count];

  if (v14)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = [(WFBlackListNode *)self blacklistedStatesCurrent];
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v31 = v5;
      v32 = v12;
      v18 = v10;
      v19 = 0;
      v20 = *v34;
      while (2)
      {
        v21 = 0;
        v22 = v19;
        do
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v33 + 1) + 8 * v21);

          v23 = [v19 blacklistedState];
          if (v23 == [v8 blacklistedState])
          {

            v10 = v18;
            v12 = v32;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v29 = [WFBlacklistEngine stringRepresentationWithState:a3];
              v30 = [WFBlacklistEngine stringRepresentationWithReason:v31];
              *buf = 141559554;
              *&buf[4] = 1752392040;
              v39 = 2112;
              v40 = v18;
              v41 = 2160;
              v42 = 1752392040;
              v43 = 2112;
              v44 = v32;
              v45 = 2112;
              v46 = v29;
              v47 = 2112;
              v48 = v30;
              v49 = 2048;
              v50 = v31;
              _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "'%{mask.hash}@[%{mask.hash}@]' was already %@. Would have blacklisted again due to %@(%lu)", buf, 0x48u);
            }

            goto LABEL_19;
          }

          ++v21;
          v22 = v19;
        }

        while (v17 != v21);
        v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

      v10 = v18;
      v5 = v31;
      v12 = v32;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v24 = [WFBlacklistEngine stringRepresentationWithState:a3];
    v25 = [WFBlacklistEngine stringRepresentationWithReason:v5];
    *buf = 141559554;
    *&buf[4] = 1752392040;
    v39 = 2112;
    v40 = v10;
    v41 = 2160;
    v42 = 1752392040;
    v43 = 2112;
    v44 = v12;
    v45 = 2112;
    v46 = v24;
    v47 = 2112;
    v48 = v25;
    v49 = 2048;
    v50 = v5;
    v26 = MEMORY[0x277D86220];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v24 = [WFBlacklistEngine stringRepresentationWithState:a3];
    v25 = [WFBlacklistEngine stringRepresentationWithReason:v5];
    *buf = 141559554;
    *&buf[4] = 1752392040;
    v39 = 2112;
    v40 = v10;
    v41 = 2160;
    v42 = 1752392040;
    v43 = 2112;
    v44 = v12;
    v45 = 2112;
    v46 = v24;
    v47 = 2112;
    v48 = v25;
    v49 = 2048;
    v50 = v5;
    v26 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2332D7000, v26, OS_LOG_TYPE_ERROR, "Blacklisting and adding '%{mask.hash}@[%{mask.hash}@]' to %@ due to %@(%lu)", buf, 0x48u);

LABEL_18:
  v27 = [(WFBlackListNode *)self blacklistedStatesCurrent];
  [v27 addObject:v8];

  [(WFBlackListNode *)self processBlacklistedStateMetric:v8 unblacklisting:0 unblacklistingReason:0];
LABEL_19:

LABEL_20:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)addBlacklistedStateHistory:(id)a3 state:(unint64_t)a4 reason:(unint64_t)a5 reasonData:(int64_t)a6
{
  buf[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [(WFBlackListNode *)self _copyCreateBlacklistedState:a4 reason:a5 reasonData:a6];
    if (!v12)
    {
      [WFBlackListNode addBlacklistedStateHistory:state:reason:reasonData:];
      v12 = buf[0];
      goto LABEL_9;
    }
  }

  v13 = [(WFBlackListNode *)self networkDelegate];
  v14 = [v13 ssid];

  v15 = [(WFBlackListNode *)self blacklistedStatesHistory];
  v16 = [v15 count];

  if (v16 >= 5)
  {
    v17 = [(WFBlackListNode *)self blacklistedStatesHistory];
    [v17 removeObjectAtIndex:0];
  }

  v18 = MEMORY[0x277CCACA8];
  v19 = [WFBlacklistEngine stringRepresentationWithState:a4];
  v20 = [WFBlacklistEngine stringRepresentationWithReason:a5];
  v21 = [v18 stringWithFormat:@"Adding to blacklistHistory: %@ for '%@' due to %@(%lu)", v19, v14, v20, a5];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v21, "UTF8String")];
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = [v22 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  v23 = [(WFBlackListNode *)self blacklistedStatesHistory];
  [v23 addObject:v12];

LABEL_9:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)networkPruned
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s _blacklistMetrics nil", "-[WFBlackListNode networkPruned]"];
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

- (void)processBlacklistedStateMetric:(id)a3 unblacklisting:(BOOL)a4 unblacklistingReason:(unint64_t)a5
{
  v5 = a4;
  v68 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    [WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:];
LABEL_30:
    v11 = *buf;
    goto LABEL_27;
  }

  if (!self->_blacklistMetrics)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    blacklistMetrics = self->_blacklistMetrics;
    self->_blacklistMetrics = v8;

    if (!self->_blacklistMetrics)
    {
      [WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:];
      goto LABEL_30;
    }
  }

  v10 = [(WFBlackListNode *)self networkDelegate];
  v11 = [v10 bssid];

  v12 = [(WFBlackListNode *)self networkDelegate];
  v13 = [v12 ssid];

  if (v11)
  {
    if (v13)
    {
      if (v5)
      {
        v49 = [MEMORY[0x277CCAB58] indexSet];
        if ([(NSMutableArray *)self->_blacklistMetrics count])
        {
          v15 = 0;
          *&v14 = 136316930;
          v47 = v14;
          v48 = v7;
          do
          {
            v16 = [(NSMutableArray *)self->_blacklistMetrics objectAtIndex:v15, v47];
            v17 = [v16 objectForKeyedSubscript:@"state"];
            v18 = [v17 unsignedIntegerValue];
            v19 = [v7 blacklistedState];

            if (v18 == v19)
            {
              v20 = [v16 objectForKeyedSubscript:@"ssid"];
              if (([v20 isEqualToString:v13] & 1) == 0)
              {

LABEL_16:
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  v31 = [v16 objectForKeyedSubscript:@"ssid"];
                  v32 = [v16 objectForKeyedSubscript:@"bssid"];
                  *buf = 136317186;
                  *&buf[4] = "[WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:]";
                  v52 = 2160;
                  v53 = 1752392040;
                  v54 = 2112;
                  v55 = v31;
                  v56 = 2160;
                  v57 = 1752392040;
                  v58 = 2112;
                  v59 = v32;
                  v60 = 2160;
                  v61 = 1752392040;
                  v62 = 2112;
                  v63 = v13;
                  v64 = 2160;
                  v65 = 1752392040;
                  v66 = 2112;
                  v67 = v11;
                  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s metric ssid:%{mask.hash}@ bssid:%{mask.hash}@ doesnt match with node ssid:%{mask.hash}@ bssid:%{mask.hash}@", buf, 0x5Cu);
                }

                goto LABEL_18;
              }

              v21 = [v16 objectForKeyedSubscript:@"bssid"];
              v22 = [v21 isEqualToString:v11];

              if (!v22)
              {
                goto LABEL_16;
              }

              v23 = [MEMORY[0x277CBEAA8] date];
              [v23 timeIntervalSince1970];
              v25 = v24;

              v26 = MEMORY[0x277CCABB0];
              v27 = [v16 objectForKeyedSubscript:@"blocklistTimestamp"];
              [v27 doubleValue];
              v29 = [v26 numberWithDouble:v25 - v28];
              [v16 setObject:v29 forKeyedSubscript:@"blocklistedDuration"];

              v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
              [v16 setObject:v30 forKeyedSubscript:@"unblocklistingReason"];

              [v16 removeObjectForKey:@"ssid"];
              [v16 removeObjectForKey:@"bssid"];
              [v16 removeObjectForKey:@"state"];
              [v16 removeObjectForKey:@"blocklistTimestamp"];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                v33 = [v16 objectForKeyedSubscript:@"blocklistedDuration"];
                v34 = [v16 objectForKeyedSubscript:@"unblocklistingReason"];
                v35 = [v16 objectForKeyedSubscript:@"prunedCount"];
                *buf = v47;
                *&buf[4] = "[WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:]";
                v52 = 2160;
                v53 = 1752392040;
                v54 = 2112;
                v55 = v13;
                v56 = 2160;
                v57 = 1752392040;
                v58 = 2112;
                v59 = v11;
                v60 = 2112;
                v61 = v33;
                v62 = 2112;
                v63 = v34;
                v64 = 2112;
                v65 = v35;
                _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s Finish capturing metric for %{mask.hash}@[%{mask.hash}@] - {duration:%@ unblacklistReason:%@ prunedCount:%@}", buf, 0x52u);
              }

              [v49 addIndex:v15];
              v7 = v48;
            }

LABEL_18:

            ++v15;
          }

          while (v15 < [(NSMutableArray *)self->_blacklistMetrics count]);
        }

        if ([v49 count])
        {
          v45 = [(NSMutableArray *)self->_blacklistMetrics objectsAtIndexes:v49];
          [v45 enumerateObjectsUsingBlock:&__block_literal_global_15];
          [(NSMutableArray *)self->_blacklistMetrics removeObjectsAtIndexes:v49];
        }
      }

      else
      {
        v36 = [MEMORY[0x277CBEB38] dictionary];
        v37 = [MEMORY[0x277CCACA8] stringWithString:v13];
        [v36 setObject:v37 forKeyedSubscript:@"ssid"];

        v38 = [MEMORY[0x277CCACA8] stringWithString:v11];
        [v36 setObject:v38 forKeyedSubscript:@"bssid"];

        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "blacklistedState")}];
        [v36 setObject:v39 forKeyedSubscript:@"state"];

        v40 = MEMORY[0x277CCABB0];
        [v7 blacklistedStateTimestamp];
        v41 = [v40 numberWithDouble:?];
        [v36 setObject:v41 forKeyedSubscript:@"blocklistTimestamp"];

        v42 = [WiFiUsagePrivacyFilter sanitizedOUI:v11];
        [v36 setObject:v42 forKeyedSubscript:@"oui"];

        v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "blacklistedReason")}];
        [v36 setObject:v43 forKeyedSubscript:@"blocklistedReason"];

        v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "blacklistedReasonData")}];
        [v36 setObject:v44 forKeyedSubscript:@"blocklistedSubreason"];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [WFBlackListNode processBlacklistedStateMetric:v13 unblacklisting:v11 unblacklistingReason:v36];
        }

        [(NSMutableArray *)self->_blacklistMetrics addObject:v36];
      }
    }

    else
    {
      [WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:];
    }
  }

  else
  {
    [WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:];
    v11 = v13;
  }

LABEL_27:

  v46 = *MEMORY[0x277D85DE8];
}

void __85__WFBlackListNode_processBlacklistedStateMetric_unblacklisting_unblacklistingReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  AnalyticsSendEventLazy();
}

- (void)initWithBlacklistNetwork:.cold.1()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s Alloc failed: historyList", "-[WFBlackListNode initWithBlacklistNetwork:]"];
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

- (void)initWithBlacklistNetwork:.cold.2()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s Alloc failed: statesList", "-[WFBlackListNode initWithBlacklistNetwork:]"];
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

- (void)initWithBlacklistNetwork:.cold.3()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s Alloc failed: triggersList", "-[WFBlackListNode initWithBlacklistNetwork:]"];
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

- (void)initWithBlacklistNetwork:.cold.4()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s network nil", "-[WFBlackListNode initWithBlacklistNetwork:]"];
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

- (void)initWithBlacklistNetwork:.cold.5()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s self nil", "-[WFBlackListNode initWithBlacklistNetwork:]"];
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

- (void)addBlacklistTrigger:reasonData:bssid:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s ev alloc failed", "-[WFBlackListNode addBlacklistTrigger:reasonData:bssid:]"];
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

- (void)_copyCreateBlacklistedState:reason:reasonData:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s stateNode alloc failed", "-[WFBlackListNode _copyCreateBlacklistedState:reason:reasonData:]"];
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

- (void)addBlacklistedState:reason:reasonData:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s Failed to add state", "-[WFBlackListNode addBlacklistedState:reason:reasonData:]"];
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

- (void)addBlacklistedStateHistory:state:reason:reasonData:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s Failed to add state to history", "-[WFBlackListNode addBlacklistedStateHistory:state:reason:reasonData:]"];
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

- (void)processBlacklistedStateMetric:(uint64_t)a1 unblacklisting:(uint64_t)a2 unblacklistingReason:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = [a3 objectForKeyedSubscript:@"oui"];
  v7 = [a3 objectForKeyedSubscript:@"blocklistedReason"];
  v8 = [a3 objectForKeyedSubscript:@"blocklistedSubreason"];
  v14[0] = 136316930;
  OUTLINED_FUNCTION_4_2();
  v15 = a1;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = a2;
  v20 = v11;
  v21 = v6;
  v22 = v11;
  v23 = v7;
  v24 = v11;
  v25 = v12;
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s Begin capturing metric for %{mask.hash}@[%{mask.hash}@] - {oui:%@ blacklistedReason:%@ blacklistedSubreason:%@}", v14, 0x52u);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)processBlacklistedStateMetric:unblacklisting:unblacklistingReason:.cold.2()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s ssid nil", "-[WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:]"];
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

- (void)processBlacklistedStateMetric:unblacklisting:unblacklistingReason:.cold.3()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s bssid nil", "-[WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:]"];
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

- (void)processBlacklistedStateMetric:unblacklisting:unblacklistingReason:.cold.4()
{
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s _blacklistMetrics alloc failed", "-[WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:]"];
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

- (void)processBlacklistedStateMetric:unblacklisting:unblacklistingReason:.cold.5()
{
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s node nil", "-[WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:]"];
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