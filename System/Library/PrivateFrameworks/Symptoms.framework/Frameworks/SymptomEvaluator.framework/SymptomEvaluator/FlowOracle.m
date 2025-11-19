@interface FlowOracle
+ (FlowOracle)sharedInstance;
- (BOOL)flowQualfiesForAVHeuristics:(id)a3;
- (BOOL)hadZeroCellInterfaceTrafficForLast:(double)a3;
- (BOOL)hadZeroWiFiInterfaceTrafficForLast:(double)a3;
- (BOOL)hasSustainedConservativeHighCellInterfaceThroughput;
- (BOOL)hasSustainedConservativeHighWiFiInterfaceThroughput;
- (BOOL)hasSustainedHighCellInterfaceRxThroughput;
- (BOOL)hasSustainedHighCellInterfaceTxThroughput;
- (BOOL)hasSustainedHighWiFiInterfaceRxThroughput;
- (BOOL)hasSustainedHighWiFiInterfaceTxThroughput;
- (BOOL)hasSustainedResponsiveHighCellInterfaceThroughput;
- (BOOL)hasSustainedResponsiveHighWiFiInterfaceThroughput;
- (FlowOracle)init;
- (NSSet)allContributors;
- (NSSet)coreMediaAssetDownloadContributors;
- (NSSet)transferContributors;
- (double)coreMediaAssetDownloadRelatedRecentThroughput;
- (id)getState:(BOOL)a3;
- (int)activeHighThroughputAudioVideoTrafficForegroundFlowScore;
- (int)activeLimitedThroughputAudioVideoTrafficForegroundFlowScore;
- (int)setConfiguration:(id)a3;
- (unint64_t)numActiveCoreMediaAssetDownloads;
- (unint64_t)numActiveTransferSizes;
- (unint64_t)numCandidateCoreMediaAssetDownloads;
- (unint64_t)numCloakedTransferSizes;
- (unint64_t)numLowerThresholdTransferSizes;
- (unint64_t)numUpperThresholdTransferSizes;
- (void)_clearState;
- (void)applyFlowHeuristics:(id)a3 onBehalfOf:(id)a4;
- (void)didPollFlowsAt:(double)a3 periodic:(BOOL)a4;
- (void)evaluatePossibleAVFlows:(id)a3 currentFlowCount:(unint64_t)a4 activeFlowCount:(unint64_t)a5;
- (void)logCellInterfaceUseContributors:(unint64_t)a3;
- (void)logCoreMediaAssetDownloadContributors:(unint64_t)a3;
- (void)logTransferContributors:(unint64_t)a3;
- (void)markCoreMediaAssetDownloadsAsActive;
- (void)markCoreMediaAssetDownloadsAsInactiveAt:(double)a3;
- (void)markTransferSizeFlowsAsActive;
- (void)markTransferSizeFlowsAsInactive;
- (void)refreshState:(id)a3;
- (void)refreshTransferSizeState;
- (void)restoreDefaults;
- (void)startSamplingPeriod:(id)a3;
@end

@implementation FlowOracle

- (BOOL)hasSustainedConservativeHighCellInterfaceThroughput
{
  v2 = [(FlowScrutinizer *)self->_flowScrutinizer cellInterfaceSampler];
  v3 = [v2 hasSustainedConservativeHighInterfaceThroughput];

  return v3;
}

- (void)refreshTransferSizeState
{
  v48 = *MEMORY[0x277D85DE8];
  [(NSMutableSet *)self->_expectedTransferOrigins removeAllObjects];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v3 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
  v4 = [v3 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v42;
    do
    {
      v7 = 0;
      do
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v41 + 1) + 8 * v7);
        v9 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
        v10 = [v9 objectForKeyedSubscript:v8];

        v11 = [v10 creatorLedger];
        if (v11 && [v10 expectedTransferState] != 6)
        {
          [(NSMutableSet *)self->_expectedTransferOrigins addObject:v11];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v5);
  }

  self->_transferSizeRelatedRecentTotalRxThroughput = 0.0;
  self->_transferSizeRelatedRecentTotalTxThroughput = 0.0;
  self->_transferSizeRelatedRecentCellRxThroughput = 0.0;
  self->_transferSizeRelatedRecentCellTxThroughput = 0.0;
  self->_transferSizeRelatedRecentWiFiRxThroughput = 0.0;
  self->_transferSizeRelatedRecentWiFiTxThroughput = 0.0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = self->_expectedTransferOrigins;
  v12 = [(NSMutableSet *)obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v32 = *v38;
    do
    {
      v14 = 0;
      do
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v37 + 1) + 8 * v14);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v16 = [v15 currentFlows];
        v17 = [v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v34;
          do
          {
            v20 = 0;
            do
            {
              if (*v34 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v33 + 1) + 8 * v20);
              v22 = [v15 currentFlows];
              v23 = [v22 objectForKeyedSubscript:v21];

              [v23 recentRxThroughput];
              self->_transferSizeRelatedRecentTotalRxThroughput = v24 + self->_transferSizeRelatedRecentTotalRxThroughput;
              [v23 recentTxThroughput];
              self->_transferSizeRelatedRecentTotalTxThroughput = v25 + self->_transferSizeRelatedRecentTotalTxThroughput;
              [v23 recentCellRxThroughput];
              self->_transferSizeRelatedRecentCellRxThroughput = v26 + self->_transferSizeRelatedRecentCellRxThroughput;
              [v23 recentCellTxThroughput];
              self->_transferSizeRelatedRecentCellTxThroughput = v27 + self->_transferSizeRelatedRecentCellTxThroughput;
              [v23 recentWiFiRxThroughput];
              self->_transferSizeRelatedRecentWiFiRxThroughput = v28 + self->_transferSizeRelatedRecentWiFiRxThroughput;
              [v23 recentWiFiTxThroughput];
              self->_transferSizeRelatedRecentWiFiTxThroughput = v29 + self->_transferSizeRelatedRecentWiFiTxThroughput;

              ++v20;
            }

            while (v18 != v20);
            v18 = [v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
          }

          while (v18);
        }

        ++v14;
      }

      while (v14 != v13);
      v13 = [(NSMutableSet *)obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v13);
  }

  self->_transferSizeRelatedRecentTotalThroughput = self->_transferSizeRelatedRecentTotalRxThroughput + self->_transferSizeRelatedRecentTotalTxThroughput;
  self->_transferSizeRelatedRecentCellThroughput = self->_transferSizeRelatedRecentCellRxThroughput + self->_transferSizeRelatedRecentCellTxThroughput;
  self->_transferSizeRelatedRecentWiFiThroughput = self->_transferSizeRelatedRecentWiFiRxThroughput + self->_transferSizeRelatedRecentWiFiTxThroughput;
  v30 = *MEMORY[0x277D85DE8];
}

- (unint64_t)numActiveCoreMediaAssetDownloads
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_coreMediaAssetDownloadOrigins;
  v2 = [(NSMutableSet *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v18 = *v24;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v7 = [v6 currentAssetDownloads];
        v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v20;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v20 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v19 + 1) + 8 * j);
              v13 = [v6 currentAssetDownloads];
              v14 = [v13 objectForKeyedSubscript:v12];

              if ([v14 downloadState] == 2)
              {
                ++v4;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v9);
        }
      }

      v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

- (unint64_t)numCandidateCoreMediaAssetDownloads
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_coreMediaAssetDownloadOrigins;
  v2 = [(NSMutableSet *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v18 = *v24;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v7 = [v6 currentAssetDownloads];
        v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v20;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v20 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v19 + 1) + 8 * j);
              v13 = [v6 currentAssetDownloads];
              v14 = [v13 objectForKeyedSubscript:v12];

              if ([v14 downloadState] == 1)
              {
                ++v4;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v9);
        }
      }

      v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

- (unint64_t)numCloakedTransferSizes
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
        v11 = [v10 objectForKeyedSubscript:v9];

        if ([v11 expectedTransferState] == 6)
        {
          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)numActiveTransferSizes
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
        v11 = [v10 objectForKeyedSubscript:v9];

        if ([v11 expectedTransferState] == 4)
        {
          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)numUpperThresholdTransferSizes
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
        v11 = [v10 objectForKeyedSubscript:v9];

        if ([v11 expectedTransferState] - 2 <= 2 && ((objc_msgSend(v11, "rxTransferSizeUpperThreshold") & 1) != 0 || objc_msgSend(v11, "txTransferSizeUpperThreshold")))
        {
          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)numLowerThresholdTransferSizes
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
        v11 = [v10 objectForKeyedSubscript:v9];

        if ([v11 expectedTransferState] - 2 <= 2 && ((objc_msgSend(v11, "rxTransferSizeLowerThreshold") & 1) != 0 || objc_msgSend(v11, "txTransferSizeLowerThreshold")) && (objc_msgSend(v11, "rxTransferSizeUpperThreshold") & 1) == 0)
        {
          v6 += [v11 txTransferSizeUpperThreshold] ^ 1;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)hasSustainedResponsiveHighCellInterfaceThroughput
{
  v2 = [(FlowScrutinizer *)self->_flowScrutinizer cellInterfaceSampler];
  v3 = [v2 hasSustainedResponsiveHighInterfaceThroughput];

  return v3;
}

- (NSSet)allContributors
{
  v3 = [MEMORY[0x277CBEB98] setWithSet:self->_highCellInterfaceUseContributors];
  if ([(NSMutableSet *)self->_accumulatedTransferOrigins count])
  {
    v4 = [v3 setByAddingObjectsFromSet:self->_accumulatedTransferOrigins];

    v3 = v4;
  }

  if ([(NSMutableSet *)self->_accumulatedCoreMediaAssetDownloadOrigins count])
  {
    v5 = [v3 setByAddingObjectsFromSet:self->_accumulatedCoreMediaAssetDownloadOrigins];

    v3 = v5;
  }

  return v3;
}

- (double)coreMediaAssetDownloadRelatedRecentThroughput
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_coreMediaAssetDownloadOrigins;
  v2 = [(NSMutableSet *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v27;
    v5 = 0.0;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v8 = [v7 currentFlows];
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v23;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v23 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v22 + 1) + 8 * j);
              v14 = [v7 currentFlows];
              v15 = [v14 objectForKeyedSubscript:v13];

              [v15 recentRxThroughput];
              v17 = v16;
              [v15 recentTxThroughput];
              v5 = v5 + v17 + v18;
            }

            v10 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v10);
        }
      }

      v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v3);
  }

  else
  {
    v5 = 0.0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_clearState
{
  v3 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "FlowOracle _clearState", v6, 2u);
  }

  busiestCellOrigin = self->_busiestCellOrigin;
  self->_busiestCellOrigin = 0;

  self->_busiestCellOriginRecentThroughput = 0.0;
  busiestWiFiOrigin = self->_busiestWiFiOrigin;
  self->_busiestWiFiOrigin = 0;

  self->_busiestWiFiOriginRecentThroughput = 0.0;
  self->_backgroundCellTransferRecentThroughput = 0.0;
  self->_backgroundWiFiTransferRecentThroughput = 0.0;
  [(NSMutableSet *)self->_expectedTransferOrigins removeAllObjects];
  [(NSMutableSet *)self->_coreMediaAssetDownloadOrigins removeAllObjects];
  [(NSMutableSet *)self->_likelyBelowThresholdAVFlows removeAllObjects];
  [(NSMutableSet *)self->_likelyOverThresholdAVFlows removeAllObjects];
  [(NSMutableSet *)self->_suppressedAVFlows removeAllObjects];
}

+ (FlowOracle)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__FlowOracle_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_39 != -1)
  {
    dispatch_once(&sharedInstance_pred_39, block);
  }

  v2 = sharedInstance_sharedInstance_41;

  return v2;
}

uint64_t __28__FlowOracle_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_41;
  sharedInstance_sharedInstance_41 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (FlowOracle)init
{
  v27.receiver = self;
  v27.super_class = FlowOracle;
  v2 = [(FlowOracle *)&v27 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    expectedTransferOrigins = v2->_expectedTransferOrigins;
    v2->_expectedTransferOrigins = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    coreMediaAssetDownloadOrigins = v2->_coreMediaAssetDownloadOrigins;
    v2->_coreMediaAssetDownloadOrigins = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    accumulatedTransferOrigins = v2->_accumulatedTransferOrigins;
    v2->_accumulatedTransferOrigins = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    accumulatedCoreMediaAssetDownloadOrigins = v2->_accumulatedCoreMediaAssetDownloadOrigins;
    v2->_accumulatedCoreMediaAssetDownloadOrigins = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    likelyBelowThresholdAVFlows = v2->_likelyBelowThresholdAVFlows;
    v2->_likelyBelowThresholdAVFlows = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    likelyOverThresholdAVFlows = v2->_likelyOverThresholdAVFlows;
    v2->_likelyOverThresholdAVFlows = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    suppressedAVFlows = v2->_suppressedAVFlows;
    v2->_suppressedAVFlows = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    highCellInterfaceUseContributors = v2->_highCellInterfaceUseContributors;
    v2->_highCellInterfaceUseContributors = v17;

    v19 = objc_alloc_init(ContinuousAVFlowDetector);
    continuousAVDetector = v2->_continuousAVDetector;
    v2->_continuousAVDetector = v19;

    v21 = objc_alloc_init(StrictlyPeriodicAVFlowDetector);
    strictlyPeriodicAVDetector = v2->_strictlyPeriodicAVDetector;
    v2->_strictlyPeriodicAVDetector = v21;

    v23 = +[FlowScrutinizer sharedInstance];
    flowScrutinizer = v2->_flowScrutinizer;
    v2->_flowScrutinizer = v23;

    v25 = +[FlowRefreshScheduler sharedInstance];
    [v25 addDelegate:v2];

    [(FlowOracle *)v2 restoreDefaults];
  }

  return v2;
}

- (BOOL)flowQualfiesForAVHeuristics:(id)a3
{
  if (self->_avUseCasesSupported)
  {
    return [a3 flowLastSeenAsForeground];
  }

  else
  {
    return 0;
  }
}

- (void)applyFlowHeuristics:(id)a3 onBehalfOf:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(FlowOracle *)self flowQualfiesForAVHeuristics:v6])
  {
    v16 = 0;
    v17 = 0.0;
    v18 = @"noAVFlowDetection";
    [(ContinuousAVFlowDetector *)self->_continuousAVDetector possibleAVFlowScore:v6 result:&v16];
    [(StrictlyPeriodicAVFlowDetector *)self->_strictlyPeriodicAVDetector possibleAVFlowScore:v6 result:&v16];
    [v6 setLatestClassification:v18];
    if (v16 >= 21)
    {
      v8 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        v20 = v16;
        v21 = 2112;
        v22 = v18;
        v23 = 2048;
        v24 = v17;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "FlowOracle applyFlowHeuristics score %d from %@ with tput %.6f Mbps", buf, 0x1Cu);
      }

      v9 = [v7 possibleAVFlows];
      v10 = v9 == 0;

      if (v10)
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [v7 setPossibleAVFlows:v11];
      }

      v12 = objc_alloc_init(LikelyAVFlowDetails);
      v13 = [v6 createdBy];
      [(LikelyAVFlowDetails *)v12 setOwner:v13];

      [(LikelyAVFlowDetails *)v12 setMatchScore:v16];
      [(LikelyAVFlowDetails *)v12 setRelevantThroughput:v17];
      v14 = [v7 possibleAVFlows];
      [v14 addObject:v12];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)evaluatePossibleAVFlows:(id)a3 currentFlowCount:(unint64_t)a4 activeFlowCount:(unint64_t)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (3 * a5 + a4 <= self->_maxAppFlowMetricForAVDetermination)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [v8 possibleAVFlows];
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          [v16 relevantThroughput];
          if (v17 <= self->_thresholdAudioVideoFlowsClassifiedIntensive)
          {
            v18 = 24;
          }

          else
          {
            v18 = 32;
          }

          [*(&self->super.isa + v18) addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }
  }

  else
  {
    suppressedAVFlows = self->_suppressedAVFlows;
    v11 = [v8 possibleAVFlows];
    [(NSMutableSet *)suppressedAVFlows addObjectsFromArray:v11];
  }

  v19 = [v9 possibleAVFlows];
  [v19 removeAllObjects];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)startSamplingPeriod:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v4 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "FlowOracle startSamplingPeriod, clear old state, start new cycle", buf, 2u);
  }

  [(NSMutableSet *)self->_accumulatedTransferOrigins removeAllObjects];
  [(NSMutableSet *)self->_accumulatedCoreMediaAssetDownloadOrigins removeAllObjects];
  [(NSMutableSet *)self->_highCellInterfaceUseContributors removeAllObjects];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [v22 originLedgers];
  v5 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = [v22 originLedgers];
        v11 = [v10 objectForKeyedSubscript:v9];

        [v11 startSamplingPeriod];
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v12 = [v11 delegates];
        v13 = [v12 countByEnumeratingWithState:&v23 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v24;
          do
          {
            v16 = 0;
            do
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v23 + 1) + 8 * v16);
              v18 = [v11 delegates];
              v19 = [v18 objectForKeyedSubscript:v17];

              [v19 startSamplingPeriod];
              ++v16;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v23 objects:v32 count:16];
          }

          while (v14);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v6);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)logTransferContributors:(unint64_t)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = self->_expectedTransferOrigins;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    v8 = &flowScrutinyLogHandle;
    do
    {
      v9 = 0;
      v24 = v6;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        if (([v10 sampledAsHighTransferSize] & 1) == 0)
        {
          [v10 setSampledAsHighTransferSize:1];
          [v10 sampleStartTime];
          if (v11 == 0.0)
          {
            [v10 setSampleStartTime:apparentTime()];
            [v10 setSampleStartedInForegroundState:{objc_msgSend(v10, "mostRecentFlowSeenAsForeground")}];
            v12 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
            {
              v13 = v12;
              v14 = [v10 name];
              v15 = [v10 sampleStartedInForegroundState];
              [v10 sampleStartTime];
              dateStringMillisecondsFromReferenceInterval(v16);
              v17 = v7;
              v18 = a3;
              v19 = v4;
              v21 = v20 = v8;
              *buf = 138412802;
              v30 = v14;
              v31 = 1024;
              v32 = v15;
              v33 = 2112;
              v34 = v21;
              _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "FlowOracle logTransferContributors %@ fg %d at %@", buf, 0x1Cu);

              v8 = v20;
              v4 = v19;
              a3 = v18;
              v7 = v17;
              v6 = v24;
            }
          }
        }

        [v10 setSampleAdditionalFlags:{objc_msgSend(v10, "sampleAdditionalFlags") | a3}];
        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v6);
  }

  [(NSMutableSet *)self->_accumulatedTransferOrigins unionSet:self->_expectedTransferOrigins];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)logCoreMediaAssetDownloadContributors:(unint64_t)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_coreMediaAssetDownloadOrigins;
  v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v32;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v8 = [v7 currentAssetDownloads];
        v9 = [v8 countByEnumeratingWithState:&v27 objects:v41 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v28;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v28 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v27 + 1) + 8 * j);
              v14 = [v7 currentAssetDownloads];
              v15 = [v14 objectForKeyedSubscript:v13];

              if ([v15 downloadState] == 1 || objc_msgSend(v15, "downloadState") == 2 || objc_msgSend(v15, "downloadState") == 4)
              {
                if (([v7 sampledAsCoreMediaAssetDownload] & 1) == 0)
                {
                  [v7 setSampledAsCoreMediaAssetDownload:1];
                  [v7 sampleStartTime];
                  if (v16 == 0.0)
                  {
                    [v7 setSampleStartedInForegroundState:{objc_msgSend(v7, "mostRecentFlowSeenAsForeground")}];
                    [v7 setSampleStartTime:apparentTime()];
                    v17 = flowScrutinyLogHandle;
                    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
                    {
                      v18 = v17;
                      v19 = [v7 name];
                      v20 = [v7 sampleStartedInForegroundState];
                      [v7 sampleStartTime];
                      v22 = dateStringMillisecondsFromReferenceInterval(v21);
                      *buf = 138412802;
                      v36 = v19;
                      v37 = 1024;
                      v38 = v20;
                      v39 = 2112;
                      v40 = v22;
                      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "FlowOracle logCoreMediaAssetDownloadContributors %@ fg %d at %@", buf, 0x1Cu);
                    }
                  }
                }

                [v7 setSampleAdditionalFlags:{objc_msgSend(v7, "sampleAdditionalFlags") | a3}];

                goto LABEL_22;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v27 objects:v41 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:
      }

      v4 = [(NSMutableSet *)obj countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v4);
  }

  [(NSMutableSet *)self->_accumulatedCoreMediaAssetDownloadOrigins unionSet:self->_coreMediaAssetDownloadOrigins];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)logCellInterfaceUseContributors:(unint64_t)a3
{
  *&v32[13] = *MEMORY[0x277D85DE8];
  if (self->_busiestCellOrigin)
  {
    v5 = [(FlowScrutinizer *)self->_flowScrutinizer cellInterfaceSampler];
    v6 = [v5 hasSustainedResponsiveHighInterfaceThroughput];

    if (v6)
    {
      v7 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        busiestCellOrigin = self->_busiestCellOrigin;
        v9 = v7;
        v10 = [(FlowOriginLedger *)busiestCellOrigin name];
        v29 = 138412290;
        v30 = v10;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "FlowOracle logCellInterfaceUseContributors inherit high interface use for %@", &v29, 0xCu);
      }

      [(NSMutableSet *)self->_highCellInterfaceUseContributors addObject:self->_busiestCellOrigin];
      if (![(FlowOriginLedger *)self->_busiestCellOrigin sampledAsHighInterfaceUse])
      {
        [(FlowOriginLedger *)self->_busiestCellOrigin setSampledAsHighInterfaceUse:1];
        [(FlowOriginLedger *)self->_busiestCellOrigin sampleStartTime];
        if (v11 == 0.0)
        {
          [(FlowOriginLedger *)self->_busiestCellOrigin setSampleStartTime:apparentTime()];
          [(FlowOriginLedger *)self->_busiestCellOrigin setSampleStartedInForegroundState:[(FlowOriginLedger *)self->_busiestCellOrigin mostRecentFlowSeenAsForeground]];
          v12 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
          {
            v13 = self->_busiestCellOrigin;
            v14 = v12;
            v15 = [(FlowOriginLedger *)v13 name];
            v16 = [(FlowOriginLedger *)self->_busiestCellOrigin sampleStartedInForegroundState];
            [(FlowOriginLedger *)self->_busiestCellOrigin sampleStartTime];
            v18 = dateStringMillisecondsFromReferenceInterval(v17);
            v29 = 138412802;
            v30 = v15;
            v31 = 1024;
            *v32 = v16;
            v32[2] = 2112;
            *&v32[3] = v18;
            _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "FlowOracle logCellInterfaceUseContributors %@ fg %d at %@", &v29, 0x1Cu);
          }
        }
      }

      [(FlowOriginLedger *)self->_busiestCellOrigin setSampleAdditionalFlags:[(FlowOriginLedger *)self->_busiestCellOrigin sampleAdditionalFlags]| a3];
    }

    else if ([(NSMutableSet *)self->_highCellInterfaceUseContributors containsObject:self->_busiestCellOrigin])
    {
      [(FlowOriginLedger *)self->_busiestCellOrigin setSampleAdditionalFlags:[(FlowOriginLedger *)self->_busiestCellOrigin sampleAdditionalFlags]| a3];
      v20 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v21 = self->_busiestCellOrigin;
        v22 = v20;
        v23 = [(FlowOriginLedger *)v21 name];
        v29 = 134218242;
        v30 = a3;
        v31 = 2112;
        *v32 = v23;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "FlowOracle logCellInterfaceUseContributors when _hasSustainedHighCellInterfaceThroughput false, mark 0x%llx in %@", &v29, 0x16u);
      }
    }

    else
    {
      v24 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v25 = self->_busiestCellOrigin;
        v26 = v24;
        v27 = [(FlowOriginLedger *)v25 name];
        v29 = 138412290;
        v30 = v27;
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "FlowOracle logCellInterfaceUseContributors when _hasSustainedHighCellInterfaceThroughput false, busiest not already known %@", &v29, 0xCu);
      }
    }
  }

  else
  {
    v19 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "FlowOracle logCellInterfaceUseContributors called when no busiestOrigin", &v29, 2u);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)refreshState:(id)a3
{
  v156 = *MEMORY[0x277D85DE8];
  v99 = a3;
  v3 = flowScrutinyLogHandle;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "FlowOracle refreshState start", buf, 2u);
  }

  [(FlowOracle *)self _clearState];
  [(FlowOracle *)self refreshTransferSizeState];
  v4 = apparentTime();
  prevStateRefreshTimestampForTputEstimates = self->_prevStateRefreshTimestampForTputEstimates;
  v6 = v4 - prevStateRefreshTimestampForTputEstimates;
  if (v4 - prevStateRefreshTimestampForTputEstimates <= 1.0)
  {
    v7 = v4 - self->_olderSateRefreshTimestampForTputEstimates;
  }

  else
  {
    self->_prevStateRefreshTimestampForTputEstimates = v4;
    self->_olderSateRefreshTimestampForTputEstimates = prevStateRefreshTimestampForTputEstimates;
    v7 = v4 - prevStateRefreshTimestampForTputEstimates;
  }

  prevStateRefreshTimestamp = self->_prevStateRefreshTimestamp;
  self->_prevStateRefreshTimestamp = v4;
  if (v7 <= 0.0)
  {
    v9 = flowScrutinyLogHandle;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v7;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "FlowOracle unexpected negative value for tputEstimationInterval %f", buf, 0xCu);
    }

    v7 = 0.1;
  }

  [v99 updateInterfaceSamplesWithTime:v6 > 1.0 bumpSamples:v4];
  v10 = [v99 cellAudioVideoSamples];
  v94 = [v10 count];

  [v99 updateAudioVideoSamplesWithTime:v6 > 1.0 bumpSamples:v4];
  [v99 updateTransferSizeFlowsWithTime:v4];
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  obj = [v99 originLedgers];
  v97 = [obj countByEnumeratingWithState:&v143 objects:v155 count:16];
  if (v97)
  {
    v11 = v4 - prevStateRefreshTimestamp;
    v96 = *v144;
    do
    {
      v12 = 0;
      do
      {
        if (*v144 != v96)
        {
          v13 = v12;
          objc_enumerationMutation(obj);
          v12 = v13;
        }

        v95 = v12;
        v14 = *(*(&v143 + 1) + 8 * v12);
        v15 = [v99 originLedgers];
        v16 = [v15 objectForKeyedSubscript:v14];

        v108 = [v16 totalObservedCellRxBytes];
        v109 = [v16 totalObservedCellTxBytes];
        v110 = [v16 totalObservedWiFiRxBytes];
        v111 = [v16 totalObservedWiFiTxBytes];
        if (v6 <= 1.0)
        {
          v17 = [v16 prevPollIntervalCellRxBytes];
          v18 = [v16 prevPollIntervalCellTxBytes];
          v19 = [v16 prevPollIntervalWiFiRxBytes];
          v20 = [v16 prevPollIntervalWiFiTxBytes];
        }

        else
        {
          v17 = [v16 pollIntervalCellRxBytes];
          v18 = [v16 pollIntervalCellTxBytes];
          v19 = [v16 pollIntervalWiFiRxBytes];
          v20 = [v16 pollIntervalWiFiTxBytes];
          [v16 setPrevPrevPollCellRxBytes:{objc_msgSend(v16, "prevPollCellRxBytes")}];
          [v16 setPrevPrevPollCellTxBytes:{objc_msgSend(v16, "prevPollCellTxBytes")}];
          [v16 setPrevPrevPollWiFiRxBytes:{objc_msgSend(v16, "prevPollWiFiRxBytes")}];
          [v16 setPrevPrevPollWiFiTxBytes:{objc_msgSend(v16, "prevPollWiFiTxBytes")}];
          [v16 setPrevPollCellRxBytes:{objc_msgSend(v16, "totalObservedCellRxBytes")}];
          [v16 setPrevPollCellTxBytes:{objc_msgSend(v16, "totalObservedCellTxBytes")}];
          [v16 setPrevPollWiFiRxBytes:{objc_msgSend(v16, "totalObservedWiFiRxBytes")}];
          [v16 setPrevPollWiFiTxBytes:{objc_msgSend(v16, "totalObservedWiFiTxBytes")}];
        }

        v21 = mbpsThroughput(v17 + v18, v7);
        v22 = mbpsThroughput(v19 + v20, v7);
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v23 = [v16 currentFlows];
        v24 = [v23 countByEnumeratingWithState:&v139 objects:v154 count:16];
        if (v24)
        {
          v25 = 0;
          v115 = 0;
          v26 = *v140;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v140 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v139 + 1) + 8 * i);
              v29 = [v16 currentFlows];
              v30 = [v29 objectForKeyedSubscript:v28];

              [(FlowOracle *)self applyFlowHeuristics:v30 onBehalfOf:v16];
              LODWORD(v29) = [v30 lastSampleWasIdle];

              v25 += v29 ^ 1;
            }

            v115 += v24;
            v24 = [v23 countByEnumeratingWithState:&v139 objects:v154 count:16];
          }

          while (v24);

          if (v25)
          {
            [v16 sampleTotalBusyTime];
            [v16 setSampleTotalBusyTime:v11 + v31];
          }
        }

        else
        {

          v115 = 0;
          v25 = 0;
        }

        v32 = self;
        if (v21 > self->_busiestCellOriginRecentThroughput)
        {
          v33 = flowScrutinyLogHandle;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            busiestCellOriginRecentThroughput = self->_busiestCellOriginRecentThroughput;
            busiestCellOrigin = self->_busiestCellOrigin;
            if (busiestCellOrigin)
            {
              v93 = [(FlowOriginLedger *)self->_busiestCellOrigin name];
              v36 = v93;
            }

            else
            {
              v36 = @"<none>";
            }

            v37 = busiestCellOrigin == 0;
            v38 = [v16 name];
            *buf = 134218754;
            *&buf[4] = busiestCellOriginRecentThroughput;
            *&buf[12] = 2112;
            *&buf[14] = v36;
            *&buf[22] = 2048;
            v151 = v21;
            v152 = 2112;
            v153 = v38;
            _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEBUG, "FlowOracle recent cell tput was %.3f for %@, change to %.3f %@", buf, 0x2Au);

            if (!v37)
            {
            }
          }

          self->_busiestCellOriginRecentThroughput = v21;
          objc_storeStrong(&self->_busiestCellOrigin, v16);
          v32 = self;
        }

        if (v22 > v32->_busiestWiFiOriginRecentThroughput)
        {
          v39 = flowScrutinyLogHandle;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            busiestWiFiOriginRecentThroughput = v32->_busiestWiFiOriginRecentThroughput;
            busiestWiFiOrigin = v32->_busiestWiFiOrigin;
            if (busiestWiFiOrigin)
            {
              v92 = [(FlowOriginLedger *)v32->_busiestWiFiOrigin name];
              v42 = v92;
            }

            else
            {
              v42 = @"<none>";
            }

            v43 = busiestWiFiOrigin == 0;
            v44 = [v16 name];
            *buf = 134218754;
            *&buf[4] = busiestWiFiOriginRecentThroughput;
            *&buf[12] = 2112;
            *&buf[14] = v42;
            *&buf[22] = 2048;
            v151 = v22;
            v152 = 2112;
            v153 = v44;
            _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEBUG, "FlowOracle recent wifi tput was %.3f for %@, change to %.3f %@", buf, 0x2Au);

            if (!v43)
            {
            }
          }

          self->_busiestWiFiOriginRecentThroughput = v22;
          objc_storeStrong(&self->_busiestWiFiOrigin, v16);
        }

        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v100 = [v16 delegates];
        v102 = [v100 countByEnumeratingWithState:&v135 objects:v149 count:16];
        if (v102)
        {
          v101 = *v136;
          do
          {
            v45 = 0;
            do
            {
              if (*v136 != v101)
              {
                v46 = v45;
                objc_enumerationMutation(v100);
                v45 = v46;
              }

              v107 = v45;
              v114 = *(*(&v135 + 1) + 8 * v45);
              v47 = [v16 delegates];
              v48 = [v47 objectForKeyedSubscript:v114];

              v49 = [v48 currentAssetDownloads];
              if (v49)
              {
                v50 = [v48 currentAssetDownloads];
                v51 = [v50 count] == 0;

                if (!v51)
                {
                  v133 = 0u;
                  v134 = 0u;
                  v131 = 0u;
                  v132 = 0u;
                  v52 = [v48 currentAssetDownloads];
                  v53 = [v52 countByEnumeratingWithState:&v131 objects:v148 count:16];
                  if (v53)
                  {
                    v54 = *v132;
                    while (2)
                    {
                      for (j = 0; j != v53; ++j)
                      {
                        if (*v132 != v54)
                        {
                          objc_enumerationMutation(v52);
                        }

                        v56 = *(*(&v131 + 1) + 8 * j);
                        v57 = [v48 currentAssetDownloads];
                        v58 = [v57 objectForKeyedSubscript:v56];

                        if ([v58 downloadState] != 3)
                        {
                          if ([v58 downloadState] == 4)
                          {
                            [v58 quarantineStartTime];
                            if (v4 - v59 > self->_coreMediaAssetDownloadThresholdFailureQuarantineTime)
                            {
                              [v58 setDownloadState:1];
                            }
                          }

                          [(NSMutableSet *)self->_coreMediaAssetDownloadOrigins addObject:v48];

                          goto LABEL_64;
                        }
                      }

                      v53 = [v52 countByEnumeratingWithState:&v131 objects:v148 count:16];
                      if (v53)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_64:
                }
              }

              v106 = [v48 totalObservedCellRxBytes];
              v105 = [v48 totalObservedCellTxBytes];
              v104 = [v48 totalObservedWiFiRxBytes];
              v103 = [v48 totalObservedWiFiTxBytes];
              if (v6 <= 1.0)
              {
                v60 = [v48 prevPollIntervalCellRxBytes];
                v61 = [v48 prevPollIntervalCellTxBytes];
                v62 = [v48 prevPollIntervalWiFiRxBytes];
                v63 = [v48 prevPollIntervalWiFiTxBytes];
              }

              else
              {
                v60 = [v48 pollIntervalCellRxBytes];
                v61 = [v48 pollIntervalCellTxBytes];
                v62 = [v48 pollIntervalWiFiRxBytes];
                v63 = [v48 pollIntervalWiFiTxBytes];
                [v48 setPrevPrevPollCellRxBytes:{objc_msgSend(v48, "prevPollCellRxBytes")}];
                [v48 setPrevPrevPollCellTxBytes:{objc_msgSend(v48, "prevPollCellTxBytes")}];
                [v48 setPrevPrevPollWiFiRxBytes:{objc_msgSend(v48, "prevPollWiFiRxBytes")}];
                [v48 setPrevPrevPollWiFiTxBytes:{objc_msgSend(v48, "prevPollWiFiTxBytes")}];
                [v48 setPrevPollCellRxBytes:{objc_msgSend(v48, "totalObservedCellRxBytes")}];
                [v48 setPrevPollCellTxBytes:{objc_msgSend(v48, "totalObservedCellTxBytes")}];
                [v48 setPrevPollWiFiRxBytes:{objc_msgSend(v48, "totalObservedWiFiRxBytes")}];
                [v48 setPrevPollWiFiTxBytes:{objc_msgSend(v48, "totalObservedWiFiTxBytes")}];
              }

              v113 = mbpsThroughput(v60 + v61, v7);
              v112 = mbpsThroughput(v62 + v63, v7);
              v64 = [v48 currentFlows];
              v65 = [v64 count] == 0;

              if (!v65)
              {
                [v48 setLastUsed:v4];
              }

              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v66 = [v48 currentFlows];
              v67 = [v66 countByEnumeratingWithState:&v127 objects:v147 count:16];
              if (v67)
              {
                v68 = 0;
                v69 = *v128;
                do
                {
                  for (k = 0; k != v67; ++k)
                  {
                    if (*v128 != v69)
                    {
                      objc_enumerationMutation(v66);
                    }

                    v71 = *(*(&v127 + 1) + 8 * k);
                    v72 = [v48 currentFlows];
                    v73 = [v72 objectForKeyedSubscript:v71];

                    [(FlowOracle *)self applyFlowHeuristics:v73 onBehalfOf:v16];
                    LODWORD(v72) = [v73 lastSampleWasIdle];

                    v74 = v72 ^ 1;
                    v25 += v74;
                    v68 += v74;
                  }

                  v115 += v67;
                  v67 = [v66 countByEnumeratingWithState:&v127 objects:v147 count:16];
                }

                while (v67);

                if (v68)
                {
                  [v48 sampleTotalBusyTime];
                  [v48 setSampleTotalBusyTime:v11 + v75];
                }
              }

              else
              {
              }

              v76 = self;
              if (v113 > self->_busiestCellOriginRecentThroughput)
              {
                self->_busiestCellOriginRecentThroughput = v113;
                objc_storeStrong(&self->_busiestCellOrigin, v48);
                v76 = self;
              }

              if (v112 > v76->_busiestWiFiOriginRecentThroughput)
              {
                v76->_busiestWiFiOriginRecentThroughput = v112;
                objc_storeStrong(&v76->_busiestWiFiOrigin, v48);
              }

              if ([v114 containsString:@"nsurlsessiond"])
              {
                v77.f64[0] = v113;
                v77.f64[1] = v112;
                *&self->_backgroundCellTransferRecentThroughput = vaddq_f64(v77, *&self->_backgroundCellTransferRecentThroughput);
              }

              v108 += v106;
              v109 += v105;
              v110 += v104;
              v111 += v103;
              v45 = v107 + 1;
            }

            while (v107 + 1 != v102);
            v102 = [v100 countByEnumeratingWithState:&v135 objects:v149 count:16];
          }

          while (v102);
        }

        if (v115)
        {
          [v16 setLastUsed:v4];
        }

        [v16 setTotalWithDelegatesCellRxBytes:v108];
        [v16 setTotalWithDelegatesCellTxBytes:v109];
        [v16 setTotalWithDelegatesWiFiRxBytes:v110];
        [v16 setTotalWithDelegatesWiFiTxBytes:v111];
        v78 = [v16 possibleAVFlows];
        v79 = [v78 count] == 0;

        if (!v79)
        {
          [(FlowOracle *)self evaluatePossibleAVFlows:v16 currentFlowCount:v115 activeFlowCount:v25];
        }

        v12 = v95 + 1;
      }

      while (v95 + 1 != v97);
      v97 = [obj countByEnumeratingWithState:&v143 objects:v155 count:16];
    }

    while (v97);
  }

  v80 = [v99 cellInterfaceSampler];
  v81 = [v80 hasSustainedResponsiveHighInterfaceThroughput];

  if (v81)
  {
    if (self->_busiestCellOrigin)
    {
      [(NSMutableSet *)self->_highCellInterfaceUseContributors addObject:?];
      [(FlowOriginLedger *)self->_busiestCellOrigin setSampledAsHighInterfaceUse:1];
      [(FlowOriginLedger *)self->_busiestCellOrigin sampleStartTime];
      if (v82 == 0.0)
      {
        [(FlowOriginLedger *)self->_busiestCellOrigin setSampleStartTime:apparentTime()];
      }

      v83 = flowScrutinyLogHandle;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
      {
        v84 = [(FlowOriginLedger *)self->_busiestCellOrigin name];
        *buf = 138412290;
        *&buf[4] = v84;
        _os_log_impl(&dword_23255B000, v83, OS_LOG_TYPE_DEBUG, "FlowOracle refreshState set high cell interface use for %@", buf, 0xCu);
      }
    }

    else
    {
      v83 = flowScrutinyLogHandle;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v83, OS_LOG_TYPE_ERROR, "FlowOracle refreshState _busiestOrigin unexpectedly nil when high cell interface throughput", buf, 2u);
      }
    }
  }

  v85 = [v99 cellAudioVideoSamples];
  v86 = [v85 count];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v151 = 0.0;
  v123 = 0;
  v124 = &v123;
  v125 = 0x2020000000;
  v126 = 0;
  v119 = 0;
  v120 = &v119;
  v121 = 0x2020000000;
  v122 = 0;
  v87 = [v99 cellAudioVideoSamples];
  v118[0] = MEMORY[0x277D85DD0];
  v118[1] = 3221225472;
  v118[2] = __27__FlowOracle_refreshState___block_invoke;
  v118[3] = &unk_27898FD28;
  v118[4] = self;
  v118[5] = &v119;
  v118[6] = buf;
  v118[7] = &v123;
  [v87 enumerateObjectsUsingBlock:v118];

  v88 = v120[3];
  if (v88 > 0.0)
  {
    self->_averageCellAudioVideoTrafficClassRxThroughput = mbpsThroughput(*(*&buf[8] + 24), v88);
    self->_averageCellAudioVideoTrafficClassTxThroughput = mbpsThroughput(v124[3], v120[3]);
  }

  if (!v94 && v86)
  {
    v89 = 1;
LABEL_114:
    self->_cellNonCoreMediaAudioVideoOperation = v89;
    goto LABEL_115;
  }

  if (v94 && !v86)
  {
    v89 = 2;
    goto LABEL_114;
  }

  if (v94 && v86)
  {
    v89 = 3;
    goto LABEL_114;
  }

  self->_cellNonCoreMediaAudioVideoOperation = 0;
LABEL_115:
  v90 = flowScrutinyLogHandle;
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
  {
    *v117 = 0;
    _os_log_impl(&dword_23255B000, v90, OS_LOG_TYPE_DEBUG, "FlowOracle refreshState complete", v117, 2u);
  }

  _Block_object_dispose(&v119, 8);
  _Block_object_dispose(&v123, 8);
  _Block_object_dispose(buf, 8);

  v91 = *MEMORY[0x277D85DE8];
}

void __27__FlowOracle_refreshState___block_invoke(void *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 rxBytes];
  [v6 elapsedTime];
  if (mbpsThroughput(v3, v4) >= *(a1[4] + 160))
  {
    [v6 elapsedTime];
    *(*(a1[5] + 8) + 24) = v5 + *(*(a1[5] + 8) + 24);
    *(*(a1[6] + 8) + 24) += [v6 rxBytes];
    *(*(a1[7] + 8) + 24) += [v6 txBytes];
  }
}

- (void)didPollFlowsAt:(double)a3 periodic:(BOOL)a4
{
  v4 = a4;
  v10 = *MEMORY[0x277D85DE8];
  v7 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 67109120;
    v9[1] = v4;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "FlowOracle didPollFlowsAt: periodic is %d", v9, 8u);
  }

  setApparentTime(a3);
  if (v4)
  {
    [(FlowOracle *)self refreshState:self->_flowScrutinizer];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)markTransferSizeFlowsAsActive
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
        v10 = [v9 objectForKeyedSubscript:v8];

        if ([v10 expectedTransferState] == 3)
        {
          [v10 setExpectedTransferState:4];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)markTransferSizeFlowsAsInactive
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
        v10 = [v9 objectForKeyedSubscript:v8];

        if ([v10 expectedTransferState] == 4)
        {
          [v10 setExpectedTransferState:5];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasSustainedHighCellInterfaceRxThroughput
{
  v2 = [(FlowScrutinizer *)self->_flowScrutinizer cellInterfaceSampler];
  v3 = [v2 hasSustainedHighInterfaceRxThroughput];

  return v3;
}

- (BOOL)hasSustainedHighCellInterfaceTxThroughput
{
  v2 = [(FlowScrutinizer *)self->_flowScrutinizer cellInterfaceSampler];
  v3 = [v2 hasSustainedHighInterfaceTxThroughput];

  return v3;
}

- (BOOL)hasSustainedConservativeHighWiFiInterfaceThroughput
{
  v2 = [(FlowScrutinizer *)self->_flowScrutinizer wifiInterfaceSampler];
  v3 = [v2 hasSustainedConservativeHighInterfaceThroughput];

  return v3;
}

- (BOOL)hasSustainedResponsiveHighWiFiInterfaceThroughput
{
  v2 = [(FlowScrutinizer *)self->_flowScrutinizer wifiInterfaceSampler];
  v3 = [v2 hasSustainedResponsiveHighInterfaceThroughput];

  return v3;
}

- (BOOL)hasSustainedHighWiFiInterfaceRxThroughput
{
  v2 = [(FlowScrutinizer *)self->_flowScrutinizer wifiInterfaceSampler];
  v3 = [v2 hasSustainedHighInterfaceRxThroughput];

  return v3;
}

- (BOOL)hasSustainedHighWiFiInterfaceTxThroughput
{
  v2 = [(FlowScrutinizer *)self->_flowScrutinizer wifiInterfaceSampler];
  v3 = [v2 hasSustainedHighInterfaceTxThroughput];

  return v3;
}

- (BOOL)hadZeroCellInterfaceTrafficForLast:(double)a3
{
  [(FlowScrutinizer *)self->_flowScrutinizer lastCellInterfaceTrafficTimestamp];
  if (v5 == 0.0)
  {
    return 0;
  }

  v6 = apparentTime();
  [(FlowScrutinizer *)self->_flowScrutinizer lastCellInterfaceTrafficTimestamp];
  return v6 - v7 > a3;
}

- (BOOL)hadZeroWiFiInterfaceTrafficForLast:(double)a3
{
  [(FlowScrutinizer *)self->_flowScrutinizer lastWiFiInterfaceTrafficTimestamp];
  if (v5 == 0.0)
  {
    return 0;
  }

  v6 = apparentTime();
  [(FlowScrutinizer *)self->_flowScrutinizer lastWiFiInterfaceTrafficTimestamp];
  return v6 - v7 > a3;
}

- (id)getState:(BOOL)a3
{
  v73 = a3;
  v104 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = objc_alloc(MEMORY[0x277CCACA8]);
  v70 = [(NSMutableSet *)self->_likelyBelowThresholdAVFlows count];
  v69 = [(NSMutableSet *)self->_likelyOverThresholdAVFlows count];
  v68 = [(NSMutableSet *)self->_suppressedAVFlows count];
  v5 = [(NSMutableSet *)self->_expectedTransferOrigins count];
  v6 = [(FlowOracle *)self numLowerThresholdTransferSizes];
  v7 = [(FlowOracle *)self numUpperThresholdTransferSizes];
  v8 = [(FlowOracle *)self numActiveTransferSizes];
  [(FlowOracle *)self transferSizeRelatedRecentCellThroughput];
  v10 = v9;
  [(FlowOracle *)self transferSizeRelatedRecentWiFiThroughput];
  v12 = v11;
  v13 = [(FlowOracle *)self numActiveCoreMediaAssetDownloads];
  v14 = [(FlowOracle *)self numCandidateCoreMediaAssetDownloads];
  v15 = [(NSMutableSet *)self->_coreMediaAssetDownloadOrigins count];
  [(FlowOracle *)self coreMediaAssetDownloadRelatedRecentThroughput];
  v17 = [v71 initWithFormat:@"FlowOracle state: AV-flows  below %d above %d suppressed %d large-transfer-contributors %d num-lower %zu num-higher %zu num-active %zu cell-xfer-tput %0.6f  wifi-xfer-tput %0.6f asset-dl-active %zu dl-candidate %zu downloaders %d dl-tput %0.6f num-cloaked %zu", v70, v69, v68, v5, v6, v7, v8, v10, v12, v13, v14, v15, v16, -[FlowOracle numCloakedTransferSizes](self, "numCloakedTransferSizes")];
  [v4 addObject:v17];
  if (v73)
  {
    v18 = self;
    if ([(NSMutableSet *)self->_likelyBelowThresholdAVFlows count])
    {
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v19 = self->_likelyBelowThresholdAVFlows;
      v20 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v94 objects:v103 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v95;
        do
        {
          v23 = 0;
          v24 = v17;
          do
          {
            if (*v95 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"       LikelyBelowThreshold:   %@", *(*(&v94 + 1) + 8 * v23)];

            [v4 addObject:v17];
            ++v23;
            v24 = v17;
          }

          while (v21 != v23);
          v21 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v94 objects:v103 count:16];
        }

        while (v21);
      }
    }

    if ([(NSMutableSet *)v18->_likelyOverThresholdAVFlows count])
    {
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v25 = v18->_likelyOverThresholdAVFlows;
      v26 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v90 objects:v102 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v91;
        do
        {
          v29 = 0;
          v30 = v17;
          do
          {
            if (*v91 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"       LikelyOverThreshold:   %@", *(*(&v90 + 1) + 8 * v29)];

            [v4 addObject:v17];
            ++v29;
            v30 = v17;
          }

          while (v27 != v29);
          v27 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v90 objects:v102 count:16];
        }

        while (v27);
      }
    }

    if ([(NSMutableSet *)v18->_suppressedAVFlows count])
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v31 = v18->_suppressedAVFlows;
      v32 = [(NSMutableSet *)v31 countByEnumeratingWithState:&v86 objects:v101 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v87;
        do
        {
          v35 = 0;
          v36 = v17;
          do
          {
            if (*v87 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"       Suppressed (xs flows): %@", *(*(&v86 + 1) + 8 * v35)];

            [v4 addObject:v17];
            ++v35;
            v36 = v17;
          }

          while (v33 != v35);
          v33 = [(NSMutableSet *)v31 countByEnumeratingWithState:&v86 objects:v101 count:16];
        }

        while (v33);
      }
    }
  }

  else
  {
    v18 = self;
  }

  v72 = v18;
  if ([(NSMutableSet *)v18->_accumulatedTransferOrigins count])
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v37 = v18->_accumulatedTransferOrigins;
    v38 = [(NSMutableSet *)v37 countByEnumeratingWithState:&v82 objects:v100 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v83;
      do
      {
        v41 = 0;
        v42 = v17;
        do
        {
          if (*v83 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *(*(&v82 + 1) + 8 * v41);
          v44 = objc_alloc(MEMORY[0x277CCACA8]);
          v45 = [v43 briefDescription];
          v17 = [v44 initWithFormat:@"       Accumulated transfer origin:   %@", v45];

          [v4 addObject:v17];
          ++v41;
          v42 = v17;
        }

        while (v39 != v41);
        v39 = [(NSMutableSet *)v37 countByEnumeratingWithState:&v82 objects:v100 count:16];
      }

      while (v39);
    }

    v18 = v72;
  }

  if ([(NSMutableSet *)v18->_accumulatedCoreMediaAssetDownloadOrigins count])
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v46 = v18->_accumulatedCoreMediaAssetDownloadOrigins;
    v47 = [(NSMutableSet *)v46 countByEnumeratingWithState:&v78 objects:v99 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v79;
      do
      {
        v50 = 0;
        v51 = v17;
        do
        {
          if (*v79 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v52 = *(*(&v78 + 1) + 8 * v50);
          v53 = objc_alloc(MEMORY[0x277CCACA8]);
          v54 = [v52 briefDescription];
          v17 = [v53 initWithFormat:@"       Accumulated download origin:   %@", v54];

          [v4 addObject:v17];
          ++v50;
          v51 = v17;
        }

        while (v48 != v50);
        v48 = [(NSMutableSet *)v46 countByEnumeratingWithState:&v78 objects:v99 count:16];
      }

      while (v48);
    }

    v18 = v72;
  }

  if ([(NSMutableSet *)v18->_highCellInterfaceUseContributors count])
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v55 = v18->_highCellInterfaceUseContributors;
    v56 = [(NSMutableSet *)v55 countByEnumeratingWithState:&v74 objects:v98 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v75;
      do
      {
        v59 = 0;
        v60 = v17;
        do
        {
          if (*v75 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v61 = *(*(&v74 + 1) + 8 * v59);
          v62 = objc_alloc(MEMORY[0x277CCACA8]);
          v63 = [v61 briefDescription];
          v17 = [v62 initWithFormat:@"       High interface use origin:     %@", v63];

          [v4 addObject:v17];
          ++v59;
          v60 = v17;
        }

        while (v57 != v59);
        v57 = [(NSMutableSet *)v55 countByEnumeratingWithState:&v74 objects:v98 count:16];
      }

      while (v57);
    }

    v18 = v72;
  }

  if (v73)
  {
    v64 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"FlowOracle configuration: max AV thrshld %2.3f Mbps", *&v18->_thresholdAudioVideoFlowsClassifiedIntensive];

    [v4 addObject:v64];
    v17 = v64;
  }

  v65 = [(StrictlyPeriodicAVFlowDetector *)v18->_strictlyPeriodicAVDetector getState:v73];
  [v4 addObjectsFromArray:v65];

  v66 = *MEMORY[0x277D85DE8];

  return v4;
}

- (int)activeLimitedThroughputAudioVideoTrafficForegroundFlowScore
{
  if ([(NSMutableSet *)self->_likelyBelowThresholdAVFlows count]!= 1 || [(NSMutableSet *)self->_likelyOverThresholdAVFlows count])
  {
    return 0;
  }

  v4 = [(NSMutableSet *)self->_likelyBelowThresholdAVFlows anyObject];
  v5 = [v4 matchScore];

  return v5;
}

- (int)activeHighThroughputAudioVideoTrafficForegroundFlowScore
{
  if ([(NSMutableSet *)self->_likelyOverThresholdAVFlows count]!= 1 || [(NSMutableSet *)self->_likelyBelowThresholdAVFlows count])
  {
    return 0;
  }

  v4 = [(NSMutableSet *)self->_likelyOverThresholdAVFlows anyObject];
  v5 = [v4 matchScore];

  return v5;
}

- (void)markCoreMediaAssetDownloadsAsActive
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_coreMediaAssetDownloadOrigins;
  v2 = [(NSMutableSet *)obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    do
    {
      v5 = 0;
      do
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * v5);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v7 = [v6 currentAssetDownloads];
        v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v18;
          do
          {
            v11 = 0;
            do
            {
              if (*v18 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v17 + 1) + 8 * v11);
              v13 = [v6 currentAssetDownloads];
              v14 = [v13 objectForKeyedSubscript:v12];

              if ([v14 downloadState] != 4)
              {
                [v14 setDownloadState:2];
                [v14 setQuarantineStartTime:0.0];
              }

              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v3);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)markCoreMediaAssetDownloadsAsInactiveAt:(double)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_coreMediaAssetDownloadOrigins;
  v4 = [(NSMutableSet *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v9 = [v8 currentAssetDownloads];
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v20;
          do
          {
            v13 = 0;
            do
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v19 + 1) + 8 * v13);
              v15 = [v8 currentAssetDownloads];
              v16 = [v15 objectForKeyedSubscript:v14];

              if ([v16 downloadState] != 4)
              {
                [v16 setDownloadState:4];
                [v16 setQuarantineStartTime:a3];
                [v8 setSampledCoreMediaAssetDownloadInactive:1];
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [(NSMutableSet *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (NSSet)transferContributors
{
  p_accumulatedTransferOrigins = &self->_accumulatedTransferOrigins;
  if (![(NSMutableSet *)self->_accumulatedTransferOrigins count])
  {
    expectedTransferOrigins = self->_expectedTransferOrigins;
    p_expectedTransferOrigins = &self->_expectedTransferOrigins;
    v6 = [(NSMutableSet *)expectedTransferOrigins count];
    if (!v6)
    {
      goto LABEL_5;
    }

    p_accumulatedTransferOrigins = p_expectedTransferOrigins;
  }

  v6 = [MEMORY[0x277CBEB98] setWithSet:*p_accumulatedTransferOrigins];
LABEL_5:

  return v6;
}

- (NSSet)coreMediaAssetDownloadContributors
{
  v3 = [(NSMutableSet *)self->_accumulatedCoreMediaAssetDownloadOrigins count];
  if (v3)
  {
    v3 = [MEMORY[0x277CBEB98] setWithSet:self->_accumulatedCoreMediaAssetDownloadOrigins];
  }

  return v3;
}

- (void)restoreDefaults
{
  v3 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "FlowOracle restore configuration defaults", v4, 2u);
  }

  self->_thresholdAudioVideoFlowsClassifiedIntensive = 4.0;
  self->_maxAppFlowMetricForAVDetermination = 40;
  *&self->_coreMediaAssetDownloadThresholdFailureQuarantineTime = xmmword_232817090;
}

- (int)setConfiguration:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "FlowOracle handle new configuration parameters %{public}@", &v9, 0xCu);
  }

  [v4 extractKey:@"ThresholdAVFlowsClassifiedIntensive" toDouble:&self->_thresholdAudioVideoFlowsClassifiedIntensive defaultTo:4.0];
  [v4 extractKey:@"MinNonCoreMediaThroughputNonIdle" toDouble:&self->_minThroughputForNonIdleNonCoreMedia defaultTo:0.1];
  [v4 extractKey:@"MaxAppFlowMetricForAVDetermination" toUint64:&self->_maxAppFlowMetricForAVDetermination defaultTo:40];
  [v4 extractKey:@"AssetDownloadFailedThresholdQuarantineTime" toDouble:&self->_coreMediaAssetDownloadThresholdFailureQuarantineTime defaultTo:600.0];
  [v4 extractKey:@"AVUseCasesSupported" toBool:&self->_avUseCasesSupported defaultTo:0];
  [(AVFlowDetector *)self->_continuousAVDetector setConfiguration:v4];
  [(StrictlyPeriodicAVFlowDetector *)self->_strictlyPeriodicAVDetector setConfiguration:v4];
  v6 = [v4 objectForKey:@"restoreDefaults"];
  if (v6)
  {
    [(FlowOracle *)self restoreDefaults];
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

@end