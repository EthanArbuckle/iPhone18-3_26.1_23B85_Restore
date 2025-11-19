@interface LargeTransferAssessor
- (BOOL)setConfiguration:(id)a3;
- (LargeTransferAssessor)init;
- (double)transferSizeRelatedRecentTotalThroughput;
- (id)description;
- (id)getState;
- (id)stateString;
- (void)checkLargeTransfersAt:(double)a3;
- (void)dumpStateAt:(double)a3;
- (void)refreshTransferSizeState;
@end

@implementation LargeTransferAssessor

- (LargeTransferAssessor)init
{
  v10.receiver = self;
  v10.super_class = LargeTransferAssessor;
  v2 = [(LargeTransferAssessor *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    appTransferSummaries = v2->_appTransferSummaries;
    v2->_appTransferSummaries = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    currentActiveTransferApps = v2->_currentActiveTransferApps;
    v2->_currentActiveTransferApps = v5;

    v7 = +[FlowScrutinizer sharedInstance];
    flowScrutinizer = v2->_flowScrutinizer;
    v2->_flowScrutinizer = v7;

    v2->_state = 0;
    [(LargeTransferAssessor *)v2 restoreDefaults];
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(LargeTransferAssessor *)self stateString];
  v5 = [v3 stringWithFormat:@"LargeTransferAssessor state %@ rx-cell-tput %.6f tx-cell-tput %.6f rx-wifi-tput %.6f tx-wifi-tput %.6f apps %@", v4, *&self->_transferSizeRelatedRecentCellRxThroughput, *&self->_transferSizeRelatedRecentCellTxThroughput, *&self->_transferSizeRelatedRecentWiFiRxThroughput, *&self->_transferSizeRelatedRecentWiFiTxThroughput, self->_appTransferSummaries];

  return v5;
}

- (void)refreshTransferSizeState
{
  v139 = *MEMORY[0x277D85DE8];
  v3 = apparentTime();
  v105 = self;
  *&self->_numWiFiRxUpperThresholdTransferSizes = 0u;
  self = (self + 192);
  *&self[-1]._numWiFiTxUpperThresholdTransferSizes = 0u;
  p_numWiFiTxUpperThresholdTransferSizes = &self[-1]._numWiFiTxUpperThresholdTransferSizes;
  *&self[-1]._transferSizeRelatedRecentCellTxThroughput = 0u;
  p_transferSizeRelatedRecentCellTxThroughput = &self[-1]._transferSizeRelatedRecentCellTxThroughput;
  *&self[-1]._transferSizeRelatedRecentWiFiTxThroughput = 0u;
  v101 = (self - 16);
  *&self->numUpperThresholdRxTransferSizes = 0u;
  *&self->numCloakedTransferSizes = 0u;
  [self[-1]._numCellTxLowerThresholdTransferSizes removeAllObjects];
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v102 = self;
  obj = [self[-1]._numCellRxUpperThresholdTransferSizes transferSizeFlows];
  v4 = [obj countByEnumeratingWithState:&v119 objects:v138 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v120;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v120 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v119 + 1) + 8 * i);
        v9 = [(FlowScrutinizer *)v105->_flowScrutinizer transferSizeFlows];
        v10 = [v9 objectForKeyedSubscript:v8];

        v11 = [v10 creatorLedger];

        v12 = flowScrutinyLogHandle;
        v13 = os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO);
        if (v11)
        {
          if (v13)
          {
            v14 = v12;
            v15 = [v10 creatorLedger];
            *buf = 138543874;
            v124 = v8;
            v125 = 2114;
            v126 = v15;
            v127 = 2114;
            v128 = v10;
            _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "refreshTransferSizeState finds uuid %{public}@ has for %{public}@ the flow %{public}@", buf, 0x20u);
          }

          appTransferSummaries = v105->_appTransferSummaries;
          v17 = [v10 creatorLedger];
          v18 = [v17 name];
          v19 = [(NSMutableDictionary *)appTransferSummaries objectForKeyedSubscript:v18];

          if (!v19)
          {
            v19 = objc_alloc_init(LargeTransferAppSummary);
            v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [(LargeTransferAppSummary *)v19 setTransferFlows:v20];

            v21 = [v10 creatorLedger];
            [(LargeTransferAppSummary *)v19 setLedger:v21];

            v22 = [v10 creatorLedger];
            v23 = [v22 name];
            [(LargeTransferAppSummary *)v19 setName:v23];

            v24 = v105->_appTransferSummaries;
            v25 = [v10 creatorLedger];
            v26 = [v25 name];
            [(NSMutableDictionary *)v24 setObject:v19 forKeyedSubscript:v26];
          }

          v27 = [(LargeTransferAppSummary *)v19 transferFlows];
          v28 = [v27 objectForKeyedSubscript:v8];

          if (!v28)
          {
            v28 = objc_alloc_init(LargeTransferFlowSummary);
            [(LargeTransferFlowSummary *)v28 setState:1];
            [(LargeTransferFlowSummary *)v28 setLedger:v10];
            v29 = [(LargeTransferAppSummary *)v19 transferFlows];
            [v29 setObject:v28 forKeyedSubscript:v8];
          }

          [(LargeTransferFlowSummary *)v28 setLastSeenAt:v3];
          v30 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
          {
            v31 = v105->_appTransferSummaries;
            *buf = 138543362;
            v124 = v31;
            _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_INFO, "refreshTransferSizeState _appTransferSummaries %{public}@", buf, 0xCu);
          }
        }

        else if (v13)
        {
          *buf = 138543618;
          v124 = v8;
          v125 = 2114;
          v126 = v10;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "refreshTransferSizeState finds uuid %{public}@ has unmatched flow %{public}@", buf, 0x16u);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v119 objects:v138 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)v105->_appTransferSummaries allKeys];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v96 = v118 = 0u;
  v98 = [v96 countByEnumeratingWithState:&v115 objects:v137 count:16];
  if (v98)
  {
    v97 = *v116;
    do
    {
      v32 = 0;
      do
      {
        if (*v116 != v97)
        {
          objc_enumerationMutation(v96);
        }

        v99 = *(*(&v115 + 1) + 8 * v32);
        v100 = v32;
        v33 = [(NSMutableDictionary *)v105->_appTransferSummaries objectForKeyedSubscript:?];
        v34 = [v33 transferFlows];
        v35 = [v34 allKeys];

        [v33 setNumCellRxUpperThresholdTransferSizes:0];
        [v33 setNumCellRxLowerThresholdTransferSizes:0];
        [v33 setNumCellTxUpperThresholdTransferSizes:0];
        [v33 setNumCellTxLowerThresholdTransferSizes:0];
        [v33 setNumWiFiRxUpperThresholdTransferSizes:0];
        [v33 setNumWiFiRxLowerThresholdTransferSizes:0];
        [v33 setNumWiFiTxUpperThresholdTransferSizes:0];
        [v33 setNumWiFiTxLowerThresholdTransferSizes:0];
        [v33 setRecentCellRxThroughput:0.0];
        [v33 setRecentCellTxThroughput:0.0];
        [v33 setRecentWiFiRxThroughput:0.0];
        [v33 setRecentWiFiTxThroughput:0.0];
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v36 = v35;
        v37 = [v36 countByEnumeratingWithState:&v111 objects:v136 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v112;
          do
          {
            v40 = 0;
            do
            {
              if (*v112 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v111 + 1) + 8 * v40);
              v42 = [v33 transferFlows];
              v43 = [v42 objectForKeyedSubscript:v41];

              [v43 lastSeenAt];
              if (v44 != v3)
              {
                v45 = [v33 transferFlows];
                [v45 setObject:0 forKeyedSubscript:v41];
                goto LABEL_32;
              }

              if ([v43 state] == 2)
              {
                [v43 stateEntryTimestamp];
                if (v46 == 0.0)
                {
                  [v43 setStateEntryTimestamp:v3];
                }

                else
                {
                  [v43 stateEntryTimestamp];
                  if (v3 - v47 > v105->_transferSizeFlowFailedThresholdQuarantineTime)
                  {
                    v48 = flowScrutinyLogHandle;
                    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v124 = v41;
                      _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer end of quarantine for flow %@", buf, 0xCu);
                    }

                    [v43 setState:1];
                  }
                }
              }

              if ([v43 state] == 1)
              {
                v45 = [v43 ledger];
                if ([v45 totalObservedCellRxBytes] || objc_msgSend(v45, "totalObservedCellTxBytes"))
                {
                  if ([v45 rxTransferSizeUpperThreshold])
                  {
                    [v33 setNumCellRxUpperThresholdTransferSizes:{objc_msgSend(v33, "numCellRxUpperThresholdTransferSizes") + 1}];
                    v49 = p_transferSizeRelatedRecentCellTxThroughput;
                    goto LABEL_49;
                  }

                  if ([v45 rxTransferSizeLowerThreshold])
                  {
                    [v33 setNumCellRxLowerThresholdTransferSizes:{objc_msgSend(v33, "numCellRxLowerThresholdTransferSizes") + 1}];
                    v49 = p_numWiFiTxUpperThresholdTransferSizes;
LABEL_49:
                    [v33 setTotalCellRxTransferSize:{objc_msgSend(v33, "totalCellRxTransferSize") + objc_msgSend(v45, "rxTransferSizeCount")}];
                    ++*v49;
                  }

                  if ([v45 txTransferSizeUpperThreshold])
                  {
                    [v33 setNumCellTxUpperThresholdTransferSizes:{objc_msgSend(v33, "numCellTxUpperThresholdTransferSizes") + 1}];
                    [v33 setTotalCellTxTransferSize:{objc_msgSend(v33, "totalCellTxTransferSize") + objc_msgSend(v45, "txTransferSizeCount")}];
                    p_transferSizeRelatedRecentWiFiRxThroughput = &v102[-1]._transferSizeRelatedRecentWiFiRxThroughput;
                    goto LABEL_65;
                  }

                  if ([v45 txTransferSizeLowerThreshold])
                  {
                    [v33 setNumCellTxLowerThresholdTransferSizes:{objc_msgSend(v33, "numCellTxLowerThresholdTransferSizes") + 1}];
                    [v33 setTotalCellTxTransferSize:{objc_msgSend(v33, "totalCellTxTransferSize") + objc_msgSend(v45, "txTransferSizeCount")}];
                    p_transferSizeRelatedRecentWiFiRxThroughput = &v102[-1]._transferSizeRelatedRecentCellRxThroughput;
                    goto LABEL_65;
                  }

LABEL_32:

                  goto LABEL_33;
                }

                if (![v45 totalObservedWiFiRxBytes] && !objc_msgSend(v45, "totalObservedWiFiTxBytes"))
                {
                  goto LABEL_32;
                }

                if ([v45 rxTransferSizeUpperThreshold])
                {
                  [v33 setNumWiFiRxUpperThresholdTransferSizes:{objc_msgSend(v33, "numWiFiRxUpperThresholdTransferSizes") + 1}];
                  v51 = v102;
                  goto LABEL_60;
                }

                if ([v45 rxTransferSizeLowerThreshold])
                {
                  [v33 setNumWiFiRxLowerThresholdTransferSizes:{objc_msgSend(v33, "numWiFiRxLowerThresholdTransferSizes") + 1}];
                  v51 = v101;
LABEL_60:
                  [v33 setTotalWiFiRxTransferSize:{objc_msgSend(v33, "totalWiFiRxTransferSize") + objc_msgSend(v45, "rxTransferSizeCount")}];
                  ++v51->super.isa;
                }

                if ([v45 txTransferSizeUpperThreshold])
                {
                  [v33 setNumWiFiTxUpperThresholdTransferSizes:{objc_msgSend(v33, "numWiFiTxUpperThresholdTransferSizes") + 1}];
                  [v33 setTotalWiFiTxTransferSize:{objc_msgSend(v33, "totalWiFiTxTransferSize") + objc_msgSend(v45, "txTransferSizeCount")}];
                  p_transferSizeRelatedRecentWiFiRxThroughput = &v102->numLowerThresholdRxTransferSizes;
                }

                else
                {
                  if (![v45 txTransferSizeLowerThreshold])
                  {
                    goto LABEL_32;
                  }

                  [v33 setNumWiFiTxLowerThresholdTransferSizes:{objc_msgSend(v33, "numWiFiTxLowerThresholdTransferSizes") + 1}];
                  [v33 setTotalWiFiTxTransferSize:{objc_msgSend(v33, "totalWiFiTxTransferSize") + objc_msgSend(v45, "txTransferSizeCount")}];
                  p_transferSizeRelatedRecentWiFiRxThroughput = &v102[-1]._accumulatedLowThroughputHysteresisTime;
                }

LABEL_65:
                ++*p_transferSizeRelatedRecentWiFiRxThroughput;
                goto LABEL_32;
              }

LABEL_33:

              ++v40;
            }

            while (v38 != v40);
            v52 = [v36 countByEnumeratingWithState:&v111 objects:v136 count:16];
            v38 = v52;
          }

          while (v52);
        }

        v53 = [v33 transferFlows];
        v54 = [v53 count];

        if (v54)
        {
          [v33 setRecentCellRxThroughput:0.0];
          [v33 setRecentCellTxThroughput:0.0];
          [v33 setRecentWiFiRxThroughput:0.0];
          [v33 setRecentWiFiTxThroughput:0.0];
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v55 = [v33 ledger];
          v56 = [v55 currentFlows];

          v57 = [v56 countByEnumeratingWithState:&v107 objects:v135 count:16];
          if (v57)
          {
            v58 = v57;
            v59 = *v108;
            do
            {
              for (j = 0; j != v58; ++j)
              {
                if (*v108 != v59)
                {
                  objc_enumerationMutation(v56);
                }

                v61 = *(*(&v107 + 1) + 8 * j);
                v62 = [v33 ledger];
                v63 = [v62 currentFlows];
                v64 = [v63 objectForKeyedSubscript:v61];

                [v64 recentCellRxThroughput];
                v66 = v65;
                [v33 recentCellRxThroughput];
                [v33 setRecentCellRxThroughput:v66 + v67];
                [v64 recentCellTxThroughput];
                v69 = v68;
                [v33 recentCellTxThroughput];
                [v33 setRecentCellTxThroughput:v69 + v70];
                [v64 recentWiFiRxThroughput];
                v72 = v71;
                [v33 recentWiFiRxThroughput];
                [v33 setRecentWiFiRxThroughput:v72 + v73];
                [v64 recentWiFiTxThroughput];
                v75 = v74;
                [v33 recentWiFiTxThroughput];
                [v33 setRecentWiFiTxThroughput:v75 + v76];
              }

              v58 = [v56 countByEnumeratingWithState:&v107 objects:v135 count:16];
            }

            while (v58);
          }

          [v33 recentCellRxThroughput];
          v105->_transferSizeRelatedRecentCellRxThroughput = v77 + v105->_transferSizeRelatedRecentCellRxThroughput;
          [v33 recentCellTxThroughput];
          v105->_transferSizeRelatedRecentCellTxThroughput = v78 + v105->_transferSizeRelatedRecentCellTxThroughput;
          [v33 recentWiFiRxThroughput];
          v105->_transferSizeRelatedRecentWiFiRxThroughput = v79 + v105->_transferSizeRelatedRecentWiFiRxThroughput;
          [v33 recentWiFiTxThroughput];
          v105->_transferSizeRelatedRecentWiFiTxThroughput = v80 + v105->_transferSizeRelatedRecentWiFiTxThroughput;
        }

        else
        {
          [(NSMutableDictionary *)v105->_appTransferSummaries setObject:0 forKeyedSubscript:v99];
        }

        v32 = v100 + 1;
      }

      while (v100 + 1 != v98);
      v98 = [v96 countByEnumeratingWithState:&v115 objects:v137 count:16];
    }

    while (v98);
  }

  v81 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    numCellRxUpperThresholdTransferSizes = v105->_numCellRxUpperThresholdTransferSizes;
    numCellTxUpperThresholdTransferSizes = v105->_numCellTxUpperThresholdTransferSizes;
    numCellRxLowerThresholdTransferSizes = v105->_numCellRxLowerThresholdTransferSizes;
    numCellTxLowerThresholdTransferSizes = v105->_numCellTxLowerThresholdTransferSizes;
    transferSizeRelatedRecentCellRxThroughput = v105->_transferSizeRelatedRecentCellRxThroughput;
    transferSizeRelatedRecentCellTxThroughput = v105->_transferSizeRelatedRecentCellTxThroughput;
    *buf = 134219264;
    v124 = numCellRxUpperThresholdTransferSizes;
    v125 = 2048;
    v126 = numCellRxLowerThresholdTransferSizes;
    v127 = 2048;
    v128 = numCellTxUpperThresholdTransferSizes;
    v129 = 2048;
    v130 = numCellTxLowerThresholdTransferSizes;
    v131 = 2048;
    v132 = transferSizeRelatedRecentCellRxThroughput;
    v133 = 2048;
    v134 = transferSizeRelatedRecentCellTxThroughput;
    _os_log_impl(&dword_23255B000, v81, OS_LOG_TYPE_DEBUG, "refreshTransferSizeState exit cell rx-upper %zd rx-lower %zd tx-upper %zd tx-lower %zd rx-tput %.6f tx-tput %.6f", buf, 0x3Eu);
  }

  v88 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    numWiFiRxUpperThresholdTransferSizes = v105->_numWiFiRxUpperThresholdTransferSizes;
    numWiFiTxUpperThresholdTransferSizes = v105->_numWiFiTxUpperThresholdTransferSizes;
    numWiFiRxLowerThresholdTransferSizes = v105->_numWiFiRxLowerThresholdTransferSizes;
    numWiFiTxLowerThresholdTransferSizes = v105->_numWiFiTxLowerThresholdTransferSizes;
    transferSizeRelatedRecentWiFiRxThroughput = v105->_transferSizeRelatedRecentWiFiRxThroughput;
    transferSizeRelatedRecentWiFiTxThroughput = v105->_transferSizeRelatedRecentWiFiTxThroughput;
    *buf = 134219264;
    v124 = numWiFiRxUpperThresholdTransferSizes;
    v125 = 2048;
    v126 = numWiFiRxLowerThresholdTransferSizes;
    v127 = 2048;
    v128 = numWiFiTxUpperThresholdTransferSizes;
    v129 = 2048;
    v130 = numWiFiTxLowerThresholdTransferSizes;
    v131 = 2048;
    v132 = transferSizeRelatedRecentWiFiRxThroughput;
    v133 = 2048;
    v134 = transferSizeRelatedRecentWiFiTxThroughput;
    _os_log_impl(&dword_23255B000, v88, OS_LOG_TYPE_DEBUG, "refreshTransferSizeState exit wifi rx-upper %zd rx-lower %zd tx-upper %zd tx-lower %zd rx-tput %.6f tx-tput %.6f", buf, 0x3Eu);
  }

  v95 = *MEMORY[0x277D85DE8];
}

- (void)checkLargeTransfersAt:(double)a3
{
  v35 = *MEMORY[0x277D85DE8];
  setApparentTime(a3);
  lastTransferSizeCheck = self->_lastTransferSizeCheck;
  if (lastTransferSizeCheck <= 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a3 - lastTransferSizeCheck;
  }

  self->_lastTransferSizeCheck = a3;
  [(LargeTransferAssessor *)self refreshTransferSizeState];
  state = self->_state;
  switch(state)
  {
    case 3:
      v17 = a3 - self->_lastTransferSizeUse;
      v18 = flowScrutinyLogHandle;
      if (v17 < self->_normalCloseDampeningInterval)
      {
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
        {
          LODWORD(v34) = 134217984;
          *(&v34 + 4) = v17;
          v12 = "LargeTransferAssessor checkLargeTransfers continue hysteresis, has continued for %.3f secs";
          v19 = v18;
          v20 = OS_LOG_TYPE_INFO;
          v21 = 12;
LABEL_40:
          _os_log_impl(&dword_23255B000, v19, v20, v12, &v34, v21);
          goto LABEL_41;
        }

        goto LABEL_41;
      }

      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "LargeTransferAssessor FinalHysteresis -> Idle", &v34, 2u);
      }

      break;
    case 2:
      v13 = [(LargeTransferAssessor *)self shouldStayActiveBlock];

      if (!v13)
      {
        goto LABEL_41;
      }

      v14 = [(LargeTransferAssessor *)self shouldStayActiveBlock];
      v15 = (v14)[2](v14, self);

      if (!v15)
      {
        [(LargeTransferAssessor *)self markActiveTransferSizeFlowsAs:3];
        self->_state = 3;
        v16 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v34) = 0;
          v12 = "LargeTransferAssessor checkLargeTransfers Hysteresis -> FinalHysteresis";
LABEL_35:
          v19 = v16;
          v20 = OS_LOG_TYPE_DEFAULT;
LABEL_39:
          v21 = 2;
          goto LABEL_40;
        }

LABEL_41:
        state = self->_state;
LABEL_42:
        if (state)
        {
          goto LABEL_54;
        }

        goto LABEL_43;
      }

      if (v15 != 2)
      {
        if (v15 != 1)
        {
          goto LABEL_41;
        }

        self->_lastTransferSizeUse = a3;
        self->_state = 1;
        ++self->_numTransitionsLowThroughputHysteresisToActive;
        v16 = flowScrutinyLogHandle;
        if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_41;
        }

        LOWORD(v34) = 0;
        v12 = "LargeTransferAssessor Hysteresis -> Active";
        goto LABEL_35;
      }

      self->_accumulatedLowThroughputHysteresisTime = v6 + self->_accumulatedLowThroughputHysteresisTime;
      v11 = flowScrutinyLogHandle;
      if (a3 - self->_lastTransferSizeUse <= self->_prolongedBelowThresholdDampeningInterval)
      {
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
        {
          LOWORD(v34) = 0;
          v12 = "LargeTransferAssessor Hysteresis -> Hysteresis";
LABEL_38:
          v19 = v11;
          v20 = OS_LOG_TYPE_INFO;
          goto LABEL_39;
        }

        goto LABEL_41;
      }

      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "LargeTransferAssessor Hysteresis -> Idle", &v34, 2u);
      }

      [(LargeTransferAssessor *)self markActiveTransferSizeFlowsAs:2];
      break;
    case 1:
      v8 = [(LargeTransferAssessor *)self shouldStayActiveBlock];

      if (v8)
      {
        v9 = [(LargeTransferAssessor *)self shouldStayActiveBlock];
        v10 = (v9)[2](v9, self);

        if (v10)
        {
          if (v10 != 2)
          {
            if (v10 != 1)
            {
              goto LABEL_41;
            }

            self->_lastTransferSizeUse = a3;
            v11 = flowScrutinyLogHandle;
            if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
            {
              goto LABEL_41;
            }

            LOWORD(v34) = 0;
            v12 = "LargeTransferAssessor Active -> Active";
            goto LABEL_38;
          }

          self->_state = 2;
          v16 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v34) = 0;
            v12 = "LargeTransferAssessor checkLargeTransfers Active -> Hysteresis";
            goto LABEL_35;
          }
        }

        else
        {
          [(LargeTransferAssessor *)self markActiveTransferSizeFlowsAs:3];
          self->_state = 3;
          v16 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v34) = 0;
            v12 = "LargeTransferAssessor checkLargeTransfers Active -> FinalHysteresis";
            goto LABEL_35;
          }
        }
      }

      goto LABEL_41;
    default:
      goto LABEL_42;
  }

  self->_lastTransferSizeUse = 0.0;
  self->_state = 0;
LABEL_43:
  v22 = [(LargeTransferAssessor *)self shouldGoActiveBlock];

  if (v22)
  {
    v23 = [(LargeTransferAssessor *)self shouldGoActiveBlock];
    self->_activeTransitionQualifier = (v23)[2](v23, self);

    activeTransitionQualifier = self->_activeTransitionQualifier;
    if (activeTransitionQualifier < 1)
    {
      if (activeTransitionQualifier < 0)
      {
        [(LargeTransferAssessor *)self markActiveTransferSizeFlowsAs:3];
        v32 = flowScrutinyLogHandle;
        if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_54;
        }

        LOWORD(v34) = 0;
        v27 = "LargeTransferAssessor Idle -> Idle, move all current large transfers to quarantine state";
        v28 = v32;
        v29 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v31 = flowScrutinyLogHandle;
        if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_54;
        }

        LOWORD(v34) = 0;
        v27 = "LargeTransferAssessor Idle -> Idle";
        v28 = v31;
        v29 = OS_LOG_TYPE_DEBUG;
      }

      v30 = 2;
      goto LABEL_53;
    }

    self->_lastTransferSizeUse = a3;
    self->_state = 1;
    v25 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v26 = self->_activeTransitionQualifier;
      LODWORD(v34) = 67109120;
      DWORD1(v34) = v26;
      v27 = "LargeTransferAssessor Idle -> Active, qualifier %d";
      v28 = v25;
      v29 = OS_LOG_TYPE_DEFAULT;
      v30 = 8;
LABEL_53:
      _os_log_impl(&dword_23255B000, v28, v29, v27, &v34, v30);
    }
  }

LABEL_54:
  v33 = *MEMORY[0x277D85DE8];
}

- (double)transferSizeRelatedRecentTotalThroughput
{
  [(LargeTransferAssessor *)self transferSizeRelatedRecentTotalRxThroughput];
  v4 = v3;
  [(LargeTransferAssessor *)self transferSizeRelatedRecentTotalTxThroughput];
  return v4 + v5;
}

- (id)stateString
{
  state = self->_state;
  if ((state - 1) < 3)
  {
    return *(&off_27898FF00 + (state - 1));
  }

  if (state)
  {
    return @"unknown";
  }

  return @"Idle";
}

- (BOOL)setConfiguration:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "LargeTransferAssessor set configuration %@", &v10, 0xCu);
    }

    v6 = [v4 logHandle];
    [v4 setLogHandle:flowScrutinyLogHandle];
    [v4 extractKey:@"kOutrankDampeningLargeTransfersBelowThreshold" toDouble:&self->_prolongedBelowThresholdDampeningInterval defaultTo:10.0];
    [v4 extractKey:@"OutrankDampeningHighTransferSize" toDouble:&self->_normalCloseDampeningInterval defaultTo:2.0];
    [v4 extractKey:@"TransferSizeFailedThresholdQuarantineTime" toDouble:&self->_transferSizeFlowFailedThresholdQuarantineTime defaultTo:600.0];
    v7 = [v4 objectForKey:@"restoreDefaults"];
    if (v7)
    {
      [(LargeTransferAssessor *)self restoreDefaults];
    }

    [v4 setLogHandle:v6];
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)dumpStateAt:(double)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if ((activeTraceTargets & 8) != 0)
  {
    traceEntry(3, "[LargeTransferAssessor dumpStateAt:]", "%t", v3, v4, v5, v6, v7, *&a3);
  }

  setApparentTime(a3);
  v10 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "=========================== START OF LARGETRANSFERASSESSOR STATE DUMP ===========================", buf, 2u);
  }

  v11 = [(LargeTransferAssessor *)self getState];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(*(&v20 + 1) + 8 * i);
          *buf = 138543362;
          v25 = v17;
          _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v13);
  }

  v18 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "=========================== END OF LARGETRANSFERASSESSOR STATE DUMP ===========================", buf, 2u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)getState
{
  *&v8 = apparentTime();
  if ((activeTraceTargets & 8) != 0)
  {
    traceEntry(3, "[LargeTransferAssessor getState]", "%t", v3, v4, v5, v6, v7, v8);
  }

  v9 = [MEMORY[0x277CBEB18] array];
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = [(LargeTransferAssessor *)self stateString];
  v12 = [v10 initWithFormat:@"LargeTransferAssessor state %@ configuration: low-tput-dampening %.3f final-dampening %.3f quarantine %.3f", v11, *&self->_prolongedBelowThresholdDampeningInterval, *&self->_normalCloseDampeningInterval, *&self->_transferSizeFlowFailedThresholdQuarantineTime];

  [v9 addObject:v12];
  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  numCellRxUpperThresholdTransferSizes = self->_numCellRxUpperThresholdTransferSizes;
  numCellTxUpperThresholdTransferSizes = self->_numCellTxUpperThresholdTransferSizes;
  numCellRxLowerThresholdTransferSizes = self->_numCellRxLowerThresholdTransferSizes;
  numCellTxLowerThresholdTransferSizes = self->_numCellTxLowerThresholdTransferSizes;
  [(LargeTransferAssessor *)self transferSizeRelatedRecentCellThroughput];
  v19 = [v13 initWithFormat:@"LargeTransferAssessor cell num rx-upper %zd rx-lower %zd tx-upper %zd tx-lower %zd total-tput %.6f rx %.6f tx %.6f", numCellRxUpperThresholdTransferSizes, numCellRxLowerThresholdTransferSizes, numCellTxUpperThresholdTransferSizes, numCellTxLowerThresholdTransferSizes, v18, *&self->_transferSizeRelatedRecentCellRxThroughput, *&self->_transferSizeRelatedRecentCellTxThroughput];

  [v9 addObject:v19];
  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  numWiFiRxUpperThresholdTransferSizes = self->_numWiFiRxUpperThresholdTransferSizes;
  numWiFiTxUpperThresholdTransferSizes = self->_numWiFiTxUpperThresholdTransferSizes;
  numWiFiRxLowerThresholdTransferSizes = self->_numWiFiRxLowerThresholdTransferSizes;
  numWiFiTxLowerThresholdTransferSizes = self->_numWiFiTxLowerThresholdTransferSizes;
  [(LargeTransferAssessor *)self transferSizeRelatedRecentWiFiThroughput];
  v26 = [v20 initWithFormat:@"LargeTransferAssessor wifi num rx-upper %zd rx-lower %zd tx-upper %zd tx-lower %zd total-tput %.6f rx %.6f tx %.6f", numWiFiRxUpperThresholdTransferSizes, numWiFiRxLowerThresholdTransferSizes, numWiFiTxUpperThresholdTransferSizes, numWiFiTxLowerThresholdTransferSizes, v25, *&self->_transferSizeRelatedRecentWiFiRxThroughput, *&self->_transferSizeRelatedRecentWiFiTxThroughput];

  [v9 addObject:v26];

  return v9;
}

@end