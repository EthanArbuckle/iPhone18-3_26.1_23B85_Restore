@interface WiFiThroughputAdviser
+ (WiFiThroughputAdviser)sharedInstance;
- (BOOL)setConfiguration:(id)a3;
- (WiFiThroughputAdviser)init;
- (id)getStateAt:(double)a3;
- (int)largeTransfersMeetContinuedThreshold:(id)a3;
- (int)largeTransfersMeetInitialThreshold:(id)a3;
- (void)checkHeavyInterfaceUseAt:(double)a3;
- (void)checkLargeTransfersAt:(double)a3;
- (void)didPollFlowsAt:(double)a3 periodic:(BOOL)a4;
- (void)dumpStateAt:(double)a3;
- (void)restoreDefaults;
- (void)setCellOutrankAdvised:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation WiFiThroughputAdviser

+ (WiFiThroughputAdviser)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__WiFiThroughputAdviser_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_43 != -1)
  {
    dispatch_once(&sharedInstance_pred_43, block);
  }

  v2 = sharedInstance_sharedInstance_45;

  return v2;
}

uint64_t __39__WiFiThroughputAdviser_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_45;
  sharedInstance_sharedInstance_45 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (int)largeTransfersMeetInitialThreshold:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 numWiFiRxUpperThresholdTransferSizes] || objc_msgSend(v4, "numWiFiRxLowerThresholdTransferSizes") >= self->_numLowerTransferThresholdFlowsForUpperThreshold) && (objc_msgSend(v4, "transferSizeRelatedRecentWiFiRxThroughput"), v5 > self->_minTransferSizeThroughputForUpgrade))
  {
    v6 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v4 numWiFiRxUpperThresholdTransferSizes];
      v9 = [v4 numWiFiRxLowerThresholdTransferSizes];
      numLowerTransferThresholdFlowsForUpperThreshold = self->_numLowerTransferThresholdFlowsForUpperThreshold;
      [v4 transferSizeRelatedRecentWiFiRxThroughput];
      minTransferSizeThroughputForUpgrade = self->_minTransferSizeThroughputForUpgrade;
      v17 = 134219008;
      v18 = v8;
      v19 = 2048;
      v20 = v9;
      v21 = 1024;
      v22 = numLowerTransferThresholdFlowsForUpperThreshold;
      v23 = 2048;
      v24 = v12;
      v25 = 2048;
      v26 = minTransferSizeThroughputForUpgrade;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "WiFiThroughputAdviser  largeTransfersMeetInitialThreshold, assess above as nums %zd %zd (need %d) tput %.6f target %.6f", &v17, 0x30u);
    }

    v13 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138543362;
      v18 = v4;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "WiFiThroughputAdviser  largeTransfersMeetInitialThreshold, assessor status %{public}@", &v17, 0xCu);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int)largeTransfersMeetContinuedThreshold:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 numWiFiRxUpperThresholdTransferSizes] || objc_msgSend(v4, "numCellRxUpperThresholdTransferSizes") || objc_msgSend(v4, "numWiFiRxLowerThresholdTransferSizes") || objc_msgSend(v4, "numCellRxLowerThresholdTransferSizes"))
  {
    [v4 transferSizeRelatedRecentTotalRxThroughput];
    if (v5 > self->_minTransferSizeThroughputForUpgrade)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 67109378;
    v10[1] = v6;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "WiFiThroughputAdviser largeTransfersMeetContinuedThreshold, assess %d for %{public}@", v10, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (WiFiThroughputAdviser)init
{
  v5.receiver = self;
  v5.super_class = WiFiThroughputAdviser;
  v2 = [(WiFiThroughputAdviser *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WiFiThroughputAdviser *)v2 restoreDefaults];
  }

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __36__WiFiThroughputAdviser_setEnabled___block_invoke;
  v21[3] = &unk_27898A0C8;
  v21[4] = self;
  if (setEnabled__pred != -1)
  {
    dispatch_once(&setEnabled__pred, v21);
  }

  if (self->_enabled != v3)
  {
    if (v3)
    {
      if (!self->_flowOracle)
      {
        v5 = +[FlowOracle sharedInstance];
        flowOracle = self->_flowOracle;
        self->_flowOracle = v5;

        v7 = [(FlowOracle *)self->_flowOracle flowScrutinizer];

        if (!v7)
        {
          v8 = +[FlowScrutinizer sharedInstance];
          [(FlowOracle *)self->_flowOracle setFlowScrutinizer:v8];
        }

        if (self->_pendingConfigurationParams)
        {
          v9 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            pendingConfigurationParams = self->_pendingConfigurationParams;
            *buf = 138412290;
            v23 = pendingConfigurationParams;
            _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "WiFiThroughputAdviser set delayed configuration %@", buf, 0xCu);
          }

          v11 = [self->_pendingConfigurationParams logHandle];
          [self->_pendingConfigurationParams setLogHandle:flowScrutinyLogHandle];
          v12 = [(FlowOracle *)self->_flowOracle flowScrutinizer];
          v13 = [v12 wifiInterfaceSampler];
          [v13 setConfiguration:self->_pendingConfigurationParams];

          [self->_pendingConfigurationParams setLogHandle:v11];
          v14 = self->_pendingConfigurationParams;
          self->_pendingConfigurationParams = 0;
        }
      }

      v15 = [(WiFiThroughputAdviser *)self queue];
      v16 = v15;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __36__WiFiThroughputAdviser_setEnabled___block_invoke_4;
      v20[3] = &unk_27898A0C8;
      v20[4] = self;
      v17 = v20;
    }

    else
    {
      v15 = [(WiFiThroughputAdviser *)self queue];
      v16 = v15;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__WiFiThroughputAdviser_setEnabled___block_invoke_2_6;
      block[3] = &unk_27898A0C8;
      block[4] = self;
      v17 = block;
    }

    dispatch_async(v15, v17);
  }

  self->_enabled = v3;
  v18 = *MEMORY[0x277D85DE8];
}

void __36__WiFiThroughputAdviser_setEnabled___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__WiFiThroughputAdviser_setEnabled___block_invoke_2;
  aBlock[3] = &unk_278990048;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__WiFiThroughputAdviser_setEnabled___block_invoke_3;
  v7[3] = &unk_278990048;
  v7[4] = *(a1 + 32);
  v3 = _Block_copy(v7);
  if (!*(*(a1 + 32) + 72))
  {
    v4 = objc_alloc_init(LargeTransferAssessor);
    v5 = *(a1 + 32);
    v6 = *(v5 + 72);
    *(v5 + 72) = v4;

    [*(*(a1 + 32) + 72) setShouldGoActiveBlock:v2];
    [*(*(a1 + 32) + 72) setShouldStayActiveBlock:v3];
  }
}

void __36__WiFiThroughputAdviser_setEnabled___block_invoke_4(uint64_t a1)
{
  v2 = +[FlowRefreshScheduler sharedInstance];
  [v2 addDelegate:*(a1 + 32)];
}

void __36__WiFiThroughputAdviser_setEnabled___block_invoke_2_6(uint64_t a1)
{
  v2 = +[FlowRefreshScheduler sharedInstance];
  [v2 removeDelegate:*(a1 + 32)];
}

- (void)setCellOutrankAdvised:(BOOL)a3
{
  if (self->_cellOutrankAdvised != a3)
  {
    [(WiFiThroughputAdviser *)self willChangeValueForKey:@"cellOutrankAdvised"];
    self->_cellOutrankAdvised = a3;

    [(WiFiThroughputAdviser *)self didChangeValueForKey:@"cellOutrankAdvised"];
  }
}

- (void)checkLargeTransfersAt:(double)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    transferAssessor = self->_transferAssessor;
    v7 = 134218242;
    v8 = transferAssessor;
    v9 = 2112;
    v10 = transferAssessor;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "checkLargeTransfersAt, assessor %p %@", &v7, 0x16u);
  }

  [(LargeTransferAssessor *)self->_transferAssessor checkLargeTransfersAt:apparentTime()];
  [(WiFiThroughputAdviser *)self setCellOutrankAdvisedViaLargeTransfers:[(LargeTransferAssessor *)self->_transferAssessor assessedPositive]];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)checkHeavyInterfaceUseAt:(double)a3
{
  if ([(FlowOracle *)self->_flowOracle hasSustainedResponsiveHighWiFiInterfaceThroughput])
  {
    v5 = [(WiFiThroughputAdviser *)self cellOutrankAdvisedViaInterfaceUse];
    v6 = flowScrutinyLogHandle;
    if (!v5)
    {
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "WiFiThroughputAdviser sustained-high-interface-usasge causes outrank advisory", v15, 2u);
      }

      [(WiFiThroughputAdviser *)self setCellOutrankAdvisedViaInterfaceUse:1];
      goto LABEL_13;
    }

    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      v14 = 0;
      v7 = "WiFiThroughputAdviser sustained-high-interface-usasge causes continued outrank advisory";
      v8 = &v14;
LABEL_9:
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, v7, v8, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (self->_lastHighInterfaceUse <= 0.0)
  {
    return;
  }

  if ([(FlowOracle *)self->_flowOracle hasSustainedResponsiveHighCellInterfaceThroughput])
  {
    v6 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "WiFiThroughputAdviser sustained-high-interface-usasge on cell causes continued outrank advisory";
      v8 = buf;
      goto LABEL_9;
    }

LABEL_13:
    self->_lastHighInterfaceUse = a3;
    return;
  }

  if (a3 - self->_lastHighInterfaceUse <= self->_lastHighInterfaceUseDampeningInterval)
  {
    v10 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "WiFiThroughputAdviser in hysteresis for sustained-high-interface-usasge", v11, 2u);
    }
  }

  else
  {
    self->_lastHighInterfaceUse = 0.0;
    v9 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "WiFiThroughputAdviser no longer sustained-high-interface-usasge causes outrank advisory to be dropped", v12, 2u);
    }

    [(WiFiThroughputAdviser *)self setCellOutrankAdvisedViaInterfaceUse:0];
  }
}

- (void)didPollFlowsAt:(double)a3 periodic:(BOOL)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    enabled = self->_enabled;
    flowOracle = self->_flowOracle;
    v9 = v6;
    LODWORD(flowOracle) = [(FlowOracle *)flowOracle hasSustainedResponsiveHighWiFiInterfaceThroughput];
    v10 = [(FlowOracle *)self->_flowOracle hasSustainedResponsiveHighCellInterfaceThroughput];
    v12[0] = 67109632;
    v12[1] = enabled;
    v13 = 1024;
    v14 = flowOracle;
    v15 = 1024;
    v16 = v10;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "WiFiThroughputAdviser didPollFlowsAt enabled %d wifi sustained %d cell sustained %d", v12, 0x14u);
  }

  if (self->_enabled)
  {
    [(WiFiThroughputAdviser *)self checkHeavyInterfaceUseAt:a3];
    [(WiFiThroughputAdviser *)self checkLargeTransfersAt:a3];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)restoreDefaults
{
  *&self->_lastHighInterfaceUseDampeningInterval = xmmword_2328171A0;
  self->_minRequiredLargeTransferThroughputForContinuedOutrank = 20.0;
  self->_numLowerTransferThresholdFlowsForUpperThreshold = 2;
}

- (BOOL)setConfiguration:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "WiFiThroughputAdviser set configuration %@", &v14, 0xCu);
    }

    v6 = [v4 logHandle];
    [v4 setLogHandle:flowScrutinyLogHandle];
    [v4 extractKey:@"OutrankDampeningHighInterfaceUse" toDouble:&self->_lastHighInterfaceUseDampeningInterval defaultTo:5.8];
    [v4 extractKey:@"OutrankMinTransferSizeTput" toDouble:&self->_minTransferSizeThroughputForUpgrade defaultTo:50.0];
    [v4 extractKey:@"OutrankMinContinuedTransferSizeTput" toDouble:&self->_minRequiredLargeTransferThroughputForContinuedOutrank defaultTo:20.0];
    [v4 extractKey:@"OutrankNumLowerTransferSizeFlows" toUint32:&self->_numLowerTransferThresholdFlowsForUpperThreshold defaultTo:2];
    v7 = [v4 objectForKey:@"restoreDefaults"];
    if (v7)
    {
      [(WiFiThroughputAdviser *)self restoreDefaults];
    }

    flowOracle = self->_flowOracle;
    if (flowOracle)
    {
      pendingConfigurationParams = [(FlowOracle *)flowOracle flowScrutinizer];
      v10 = [pendingConfigurationParams wifiInterfaceSampler];
      [v10 setConfiguration:v4];
    }

    else
    {
      v11 = v4;
      pendingConfigurationParams = self->_pendingConfigurationParams;
      self->_pendingConfigurationParams = v11;
    }

    [v4 setLogHandle:v6];
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)dumpStateAt:(double)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if ((activeTraceTargets & 8) != 0)
  {
    traceEntry(3, "[WiFiThroughputAdviser dumpStateAt:]", "%t", v3, v4, v5, v6, v7, *&a3);
  }

  v10 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "=========================== START OF WIFITHROUGHPUTADVISER STATE DUMP ===========================", buf, 2u);
  }

  v11 = [(WiFiThroughputAdviser *)self getStateAt:a3];
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
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "=========================== END OF WIFITHROUGHPUTADVISER STATE DUMP ===========================", buf, 2u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)getStateAt:(double)a3
{
  if ((activeTraceTargets & 8) != 0)
  {
    traceEntry(3, "[WiFiThroughputAdviser getStateAt:]", "%t", v3, v4, v5, v6, v7, *&a3);
  }

  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"WiFiThroughputAdviser: enabled %d outrank-advised %d via-throughput %d via-large-transfer %d", self->_enabled, self->_cellOutrankAdvised, self->_cellOutrankAdvisedViaInterfaceUse, self->_cellOutrankAdvisedViaLargeTransfers];
  [v9 addObject:v10];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"WiFiThroughputAdviser configuration: hi-ifuse-dampening %.3f transfer continued-tput %.6f %.6f num-lower-xfer %d", *&self->_lastHighInterfaceUseDampeningInterval, *&self->_minTransferSizeThroughputForUpgrade, *&self->_minRequiredLargeTransferThroughputForContinuedOutrank, self->_numLowerTransferThresholdFlowsForUpperThreshold];
  [v9 addObject:v11];
  v12 = [(LargeTransferAssessor *)self->_transferAssessor getState];
  if (v12)
  {
    [v9 addObjectsFromArray:v12];
  }

  flowOracle = self->_flowOracle;
  if (flowOracle)
  {
    v14 = [(FlowOracle *)flowOracle flowScrutinizer];
    v15 = [v14 wifiInterfaceSampler];
    v16 = [v15 getState:1];

    if (v16)
    {
      [v9 addObjectsFromArray:v16];
    }
  }

  else
  {
    [v9 addObject:@"No WiFi interface statistics as the SIS machinery has not been enabled yet"];
  }

  return v9;
}

@end