@interface WiFiP2PAWDLStateMonitor
- (BOOL)fetchAWDLActiveServices:(id *)a3 withActivePorts:(id *)a4 error:(id *)a5;
- (BOOL)updateLTERestrictedChannels:(id)a3 error:(id *)a4;
- (WiFiP2PAWDLStateMonitor)init;
- (id)exportedInterface;
- (id)lowLatencyStatisticsDifferenceBetweenPrevious:(id)a3 current:(id)a4;
- (id)queryPeerDatabase;
- (int)queryAverageRSSIForPeer:(id)a3;
- (void)availabilityUpdatedForService:(id)a3 error:(id)a4;
- (void)channelSequenceChangedEvent:(id)a3;
- (void)registerAvailabilityUpdatesForService:(id)a3;
- (void)startConnectionUsingProxy:(id)a3 completionHandler:(id)a4;
- (void)threadCoexistenceEvent:(id)a3;
- (void)updatedAWDLState:(id)a3;
- (void)updatedLowLatencyStatistics;
- (void)updatedStatistics;
@end

@implementation WiFiP2PAWDLStateMonitor

- (WiFiP2PAWDLStateMonitor)init
{
  v11.receiver = self;
  v11.super_class = WiFiP2PAWDLStateMonitor;
  v2 = [(WiFiP2PAWDLStateMonitor *)&v11 init];
  v3 = v2;
  if (v2)
  {
    interestedUniqueIdentifiers = v2->_interestedUniqueIdentifiers;
    v2->_interestedUniqueIdentifiers = 0;

    v5 = [WiFiP2PXPCConnection alloc];
    v6 = +[WiFiP2PXPCConnection wifiPeerToPeerWorkloop];
    v7 = dispatch_queue_create_with_target_V2("com.apple.wifip2p.WiFiP2PAWDLStateMonitor", 0, v6);
    v8 = [(WiFiP2PXPCConnection *)v5 initWithEndpointType:2 queue:v7 retryTimeout:-1];
    xpcConnection = v3->_xpcConnection;
    v3->_xpcConnection = v8;

    [(WiFiP2PXPCConnection *)v3->_xpcConnection setDelegate:v3];
  }

  return v3;
}

- (id)exportedInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2841B20C8];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_channelSequenceChangedEvent_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)startConnectionUsingProxy:(id)a3 completionHandler:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = objc_alloc_init(WiFiP2PAWDLStateMonitorConfiguration);
  v8 = [(WiFiP2PAWDLStateMonitor *)self stateUpdatedHandler];

  if (v8)
  {
    [(WiFiP2PAWDLStateMonitorConfiguration *)v7 setOptions:[(WiFiP2PAWDLStateMonitorConfiguration *)v7 options]| 1];
  }

  v9 = [(WiFiP2PAWDLStateMonitor *)self statisticsUpdatedHandler];

  if (v9)
  {
    [(WiFiP2PAWDLStateMonitorConfiguration *)v7 setOptions:[(WiFiP2PAWDLStateMonitorConfiguration *)v7 options]| 2];
  }

  v10 = [(WiFiP2PAWDLStateMonitor *)self lowLatencyStatisticsUpdatedHandler];

  if (v10)
  {
    [(WiFiP2PAWDLStateMonitorConfiguration *)v7 setOptions:[(WiFiP2PAWDLStateMonitorConfiguration *)v7 options]| 0x40];
  }

  v11 = [(WiFiP2PAWDLStateMonitor *)self realtimeModeUpdatedHandler];

  if (v11)
  {
    [(WiFiP2PAWDLStateMonitorConfiguration *)v7 setOptions:[(WiFiP2PAWDLStateMonitorConfiguration *)v7 options]| 4];
  }

  v12 = [(WiFiP2PAWDLStateMonitor *)self threadCoexistenceEventHandler];

  if (v12)
  {
    [(WiFiP2PAWDLStateMonitorConfiguration *)v7 setOptions:[(WiFiP2PAWDLStateMonitorConfiguration *)v7 options]| 8];
  }

  v13 = [(WiFiP2PAWDLStateMonitor *)self softAPChannelChangedEventHandler];

  if (v13)
  {
    [(WiFiP2PAWDLStateMonitorConfiguration *)v7 setOptions:[(WiFiP2PAWDLStateMonitorConfiguration *)v7 options]| 0x10];
  }

  v14 = [(WiFiP2PAWDLStateMonitor *)self channelSequenceUpdatedEventHandler];

  if (v14)
  {
    [(WiFiP2PAWDLStateMonitorConfiguration *)v7 setOptions:[(WiFiP2PAWDLStateMonitorConfiguration *)v7 options]| 0x20];
  }

  v15 = [(WiFiP2PAWDLStateMonitor *)self serviceAvailabilityUpdatedHandler];
  if (v15)
  {
    v16 = v15;
    v17 = [(NSMutableArray *)self->_interestedUniqueIdentifiers count];

    if (v17)
    {
      [(WiFiP2PAWDLStateMonitorConfiguration *)v7 setServicesRequiringAvailabilityNotification:self->_interestedUniqueIdentifiers];
    }
  }

  [v18 startMonitoringAWDLStateWithConfiguration:v7 completionHandler:v6];
}

- (void)registerAvailabilityUpdatesForService:(id)a3
{
  interestedUniqueIdentifiers = self->_interestedUniqueIdentifiers;
  if (interestedUniqueIdentifiers)
  {

    [(NSMutableArray *)interestedUniqueIdentifiers addObject:a3];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithObject:a3];
    v6 = self->_interestedUniqueIdentifiers;
    self->_interestedUniqueIdentifiers = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)updatedAWDLState:(id)a3
{
  v6 = a3;
  v4 = [(WiFiP2PAWDLStateMonitor *)self stateUpdatedHandler];

  if (v4)
  {
    v5 = [(WiFiP2PAWDLStateMonitor *)self stateUpdatedHandler];
    (v5)[2](v5, v6);
  }
}

- (void)updatedStatistics
{
  v3 = [(WiFiP2PAWDLStateMonitor *)self statisticsUpdatedHandler];

  if (v3)
  {
    v4 = [(WiFiP2PAWDLStateMonitor *)self statisticsUpdatedHandler];
    v4[2]();
  }
}

- (void)updatedLowLatencyStatistics
{
  v3 = [(WiFiP2PAWDLStateMonitor *)self lowLatencyStatisticsUpdatedHandler];

  if (v3)
  {
    v4 = [(WiFiP2PAWDLStateMonitor *)self lowLatencyStatisticsUpdatedHandler];
    v4[2]();
  }
}

- (void)threadCoexistenceEvent:(id)a3
{
  v6 = a3;
  v4 = [(WiFiP2PAWDLStateMonitor *)self threadCoexistenceEventHandler];

  if (v4)
  {
    v5 = [(WiFiP2PAWDLStateMonitor *)self threadCoexistenceEventHandler];
    (v5)[2](v5, v6);
  }
}

- (void)channelSequenceChangedEvent:(id)a3
{
  v6 = a3;
  v4 = [(WiFiP2PAWDLStateMonitor *)self channelSequenceUpdatedEventHandler];

  if (v4)
  {
    v5 = [(WiFiP2PAWDLStateMonitor *)self channelSequenceUpdatedEventHandler];
    (v5)[2](v5, v6);
  }
}

- (void)availabilityUpdatedForService:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(WiFiP2PAWDLStateMonitor *)self serviceAvailabilityUpdatedHandler];

  if (v7)
  {
    v8 = [(WiFiP2PAWDLStateMonitor *)self serviceAvailabilityUpdatedHandler];
    (v8)[2](v8, v9, v6 == 0, v6);
  }
}

- (BOOL)updateLTERestrictedChannels:(id)a3 error:(id *)a4
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__WiFiP2PAWDLStateMonitor_updateLTERestrictedChannels_error___block_invoke;
  v8[3] = &unk_2787AB7F8;
  v9 = v5;
  v6 = v5;
  LOBYTE(a4) = [WiFiP2PXPCConnection directRequestOnEndpointType:2 error:a4 requesting:v8];

  return a4;
}

- (id)lowLatencyStatisticsDifferenceBetweenPrevious:(id)a3 current:(id)a4
{
  v82[2] = *MEMORY[0x277D85DE8];
  v58 = a3;
  v57 = a4;
  v82[0] = @"LL_STATS_ACTIVE_SERVICES_BITMAP";
  v82[1] = @"LL_STATS_REMOTE_CAMERA_ACTIVE";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
  v81[0] = @"LL_STATS_ISSDB";
  v81[1] = @"LL_STATS_COUNTRY_CODE";
  v81[2] = @"LL_STATS_PEERRSSI24G";
  v81[3] = @"LL_STATS_PEERRSSI5G";
  v81[4] = @"LL_STATS_TX_AVG_CCA";
  v81[5] = @"LL_STATS_SELF_INFRA_PRE_START";
  v81[6] = @"LL_STATS_SELF_INFRA_POST_START";
  v81[7] = @"LL_STATS_PEER_INFRA_PRE_START";
  v81[8] = @"LL_STATS_PEER_INFRA_POST_START";
  v81[9] = @"LL_STATS_LIMITED_TX_MIN_RATE";
  v81[10] = @"LL_STATS_PREF_5G_CHAN_COUNT";
  v81[11] = @"LL_STATS_PREF_2G_CHAN_COUNT";
  v81[12] = @"LL_STATS_IS_ODEON_ACTIVE";
  v81[13] = @"LL_STATS_2G_IN_CHAN_SEQ";
  v81[14] = @"LL_STATS_SIDECAR_SERV_TYPE_BITMAP";
  v81[15] = @"LL_STATS_RTG_ID";
  v81[16] = @"LL_STATS_REDUCED_AWDL_BW";
  v81[17] = @"LL_STATS_REDUCED_BW_PERCENT_SESSION";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:18];
  v80[0] = @"LL_STATS_BSSSTEERING_ATTEMPT_COUNT";
  v80[1] = @"LL_STATS_BSSSTEERING_SUCCESS_COUNT";
  v80[2] = @"LL_STATS_BSSSTEERING_FAILURE_COUNT";
  v80[3] = @"LL_STATS_BSSSTEERING_TIMEOUT_COUNT";
  v80[4] = @"LL_STATS_INFRA_DISCONNECTED_POLICY_COUNT";
  v80[5] = @"LL_STATS_INFRA_DISCONNECTED_FAILURE_COUNT";
  v80[6] = @"LL_STATS_SESSION_DURATION";
  v80[7] = @"LL_STATS_IDLE_SLOTS_COUNT";
  v80[8] = @"LL_STATS_SYNC_ERRORS_COUNT";
  v80[9] = @"LL_STATS_CHANNEL_SEQ_MISMATCH_COUNT";
  v80[10] = @"LL_STATS_PARENT_NODE_CHANGE_COUNT";
  v80[11] = @"LL_STATS_ROOT_NODE_CHANGE_COUNT";
  v80[12] = @"LL_STATS_WATCHDOG_OR_CHIPTRAP_COUNT";
  v80[13] = @"LL_STATS_TXSUCCESSCOUNT";
  v80[14] = @"LL_STATS_TXEXPIREDCOUNT";
  v80[15] = @"LL_STATS_TXNOBUFFCOUNT";
  v80[16] = @"LL_STATS_TXNOACKCOUNT";
  v80[17] = @"LL_STATS_TXFAILCOUNT";
  v80[18] = @"LL_STATS_TXNORESOURCESCOUNT";
  v80[19] = @"LL_STATS_TXIOERRORCOUNT";
  v80[20] = @"LL_STATS_TXMBFREECOUNT";
  v80[21] = @"LL_STATS_TXCHIPMODEERRCOUNT";
  v80[22] = @"LL_STATS_TXNOREMOTEPEERCOUNT";
  v80[23] = @"LL_STATS_TXINTRERRCOUNT";
  v80[24] = @"LL_STATS_TXDRPCOUNT";
  v80[25] = @"LL_STATS_TXFWFREEPKTCOUNT";
  v80[26] = @"LL_STATS_TXMAXRETRIESCOUNT";
  v80[27] = @"LL_STATS_TXFORCELIFETIMEEXPIREDCOUNT";
  v80[28] = @"LL_STATS_TXERRORCOUNT";
  v80[29] = @"LL_STATS_TX_ON_5G_COUNT";
  v80[30] = @"LL_STATS_TX_ON_2G_COUNT";
  v80[31] = @"LL_STATS_TX_OVERRIDE_ON_5G_COUNT";
  v80[32] = @"LL_STATS_TX_NA_COUNT";
  v80[33] = @"LL_STATS_RX_PACKET_COUNT";
  v80[34] = @"LL_STATS_RX_ON_5G_COUNT";
  v80[35] = @"LL_STATS_RX_ON_2G_COUNT";
  v80[36] = @"LL_STATS_TX_REQUEUE_COUNT";
  v80[37] = @"LL_STATS_TX_REQUEUE_FAIL_COUNT";
  v80[38] = @"LL_STATS_TX_SWITCH_NAV_COUNT";
  v80[39] = @"LL_STATS_TX_SWITCH_HOF_COUNT";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:40];
  v79[0] = @"LL_STATS_TX_TOTAL_DELAY";
  v79[1] = @"LL_STATS_TX_COMPLETION_DELAY";
  v79[2] = @"LL_STATS_TX_IPCL_DELAY";
  v79[3] = @"LL_STATS_TX_FW_DELAY";
  v79[4] = @"LL_STATS_TX_HW_DELAY";
  v79[5] = @"LL_STATS_TX_DATA_RATE";
  v79[6] = @"LL_STATS_TX_RETRIES";
  v79[7] = @"LL_STATS_TX_PACKET_BURST_SIZE";
  v79[8] = @"LL_STATS_TX_PACKET_BURST_INTERVAL";
  v79[9] = @"LL_STATS_TX_PACKET_EXPIRY";
  v79[10] = @"LL_STATS_TX_CONSECUTIVE_ERRORS";
  v79[11] = @"LL_STATS_TX_CCA";
  v79[12] = @"LL_STATS_REQUEUE_COUNT";
  v79[13] = @"LL_STATS_RX_TOTAL_DELAY";
  v79[14] = @"LL_STATS_RX_IPC_DELAY";
  v79[15] = @"LL_STATS_RX_FW_DELAY";
  v79[16] = @"LL_STATS_RX_DATA_RATE";
  v79[17] = @"LL_STATS_RX_RSSI";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:18];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v71 objects:v78 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v72;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v72 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v71 + 1) + 8 * i);
        v16 = [v58 objectForKey:v15];
        if (v16)
        {
          [v9 setObject:v16 forKey:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v71 objects:v78 count:16];
    }

    while (v12);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v17 = v6;
  v18 = [v17 countByEnumeratingWithState:&v67 objects:v77 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v68;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v68 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v67 + 1) + 8 * j);
        v23 = [v57 objectForKey:v22];
        if (v23)
        {
          [v9 setObject:v23 forKey:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v67 objects:v77 count:16];
    }

    while (v19);
  }

  v52 = v17;
  v53 = v10;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v7;
  v24 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v64;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v64 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v63 + 1) + 8 * k);
        v29 = [v58 valueForKey:v28];
        v30 = [v29 integerValue];

        v31 = [v57 valueForKey:v28];
        v32 = [v31 integerValue];

        v33 = [MEMORY[0x277CCABB0] numberWithInteger:v32 - v30];
        [v9 setObject:v33 forKey:v28];
      }

      v25 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
    }

    while (v25);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v54 = v8;
  v34 = [v54 countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v34)
  {
    v35 = v34;
    v56 = *v60;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v60 != v56)
        {
          objc_enumerationMutation(v54);
        }

        v37 = *(*(&v59 + 1) + 8 * m);
        v38 = [v58 objectForKey:v37];
        v39 = [v57 objectForKey:v37];
        v40 = [MEMORY[0x277CBEB18] array];
        if ([v38 count])
        {
          v41 = 0;
          do
          {
            if (v41 >= [v39 count])
            {
              break;
            }

            v42 = [v38 objectAtIndex:v41];
            [v42 doubleValue];
            v44 = v43;

            v45 = [v39 objectAtIndex:v41];
            [v45 doubleValue];
            v47 = v46;

            v48 = [MEMORY[0x277CCABB0] numberWithDouble:v47 - v44];
            [v40 addObject:v48];

            ++v41;
          }

          while (v41 < [v38 count]);
        }

        v49 = [v40 componentsJoinedByString:{@", "}];
        [v9 setObject:v49 forKey:v37];
      }

      v35 = [v54 countByEnumeratingWithState:&v59 objects:v75 count:16];
    }

    while (v35);
  }

  v50 = *MEMORY[0x277D85DE8];

  return v9;
}

- (int)queryAverageRSSIForPeer:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__WiFiP2PAWDLStateMonitor_queryAverageRSSIForPeer___block_invoke;
    v8[3] = &unk_2787AB758;
    v9 = v3;
    v5 = [WiFiP2PXPCConnection directQueryOnEndpointType:2 error:0 querying:v8];
    v6 = [v5 intValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __51__WiFiP2PAWDLStateMonitor_queryAverageRSSIForPeer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__WiFiP2PAWDLStateMonitor_queryAverageRSSIForPeer___block_invoke_2;
  v8[3] = &unk_2787AB820;
  v9 = v5;
  v7 = v5;
  [a2 queryAverageRSSIForAWDLPeer:v6 completionHandler:v8];
}

void __51__WiFiP2PAWDLStateMonitor_queryAverageRSSIForPeer___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  (*(v2 + 16))(v2, v3);
}

- (id)queryPeerDatabase
{
  v2 = [WiFiP2PXPCConnection directQueryOnEndpointType:2 error:0 querying:&__block_literal_global_597];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

void __44__WiFiP2PAWDLStateMonitor_queryPeerDatabase__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__WiFiP2PAWDLStateMonitor_queryPeerDatabase__block_invoke_2;
  v6[3] = &unk_2787AB848;
  v7 = v4;
  v5 = v4;
  [a2 queryPeersWithCompletionHandler:v6];
}

- (BOOL)fetchAWDLActiveServices:(id *)a3 withActivePorts:(id *)a4 error:(id *)a5
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v12[5] = &v14;
  v13 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__WiFiP2PAWDLStateMonitor_fetchAWDLActiveServices_withActivePorts_error___block_invoke;
  v12[3] = &unk_2787AB898;
  v12[4] = &v20;
  v8 = [WiFiP2PXPCConnection directQueryOnEndpointType:2 error:&v13 querying:v12];
  v9 = v13;
  v10 = v9;
  if (v9)
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
      *a4 = 0;
    }

    if (!a5)
    {
      goto LABEL_13;
    }

LABEL_12:
    *a5 = v9;
    goto LABEL_13;
  }

  if (a3)
  {
    *a3 = v21[5];
  }

  if (a4)
  {
    v9 = v15[5];
    a5 = a4;
    goto LABEL_12;
  }

LABEL_13:

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10 == 0;
}

void __73__WiFiP2PAWDLStateMonitor_fetchAWDLActiveServices_withActivePorts_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__WiFiP2PAWDLStateMonitor_fetchAWDLActiveServices_withActivePorts_error___block_invoke_2;
  v7[3] = &unk_2787AB870;
  v9 = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 queryActiveServicesAndActivePortsWithCompletionHandler:v7];
}

void __73__WiFiP2PAWDLStateMonitor_fetchAWDLActiveServices_withActivePorts_error___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[4] + 16))();
}

@end