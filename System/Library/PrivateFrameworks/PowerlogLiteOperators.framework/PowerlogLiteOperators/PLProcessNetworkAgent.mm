@interface PLProcessNetworkAgent
+ (id)entryEventBackwardDefinitionNetworkBitmap;
+ (id)entryEventBackwardDefinitionUsage;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionHighCellularBWTransactions;
+ (id)entryEventForwardDefinitionHighCellularBWTransactionsDetail;
+ (id)entryEventForwardDefinitionLowInternet;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionUsage;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventPointDefinitionConnection;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)outcomeHasDataUsage:(id)a3;
- (PLProcessNetworkAgent)init;
- (id)compressNetworkBitmap:(id)a3;
- (void)accountWithNetworkUsageDiffEntries:(id)a3 withStartDate:(id)a4 withEndDate:(id)a5;
- (void)aggregateAndLogNetworkBitmaps:(id)a3 withStartTime:(unint64_t)a4 andEndTime:(unint64_t)a5;
- (void)didAddNewSource:(__NStatSource *)a3;
- (void)didRemoveSource:(id)a3;
- (void)didSetCountsBlock:(id)a3 withCounts:(id)a4;
- (void)didSetDescriptionBlock:(id)a3 withDescription:(id)a4;
- (void)getNetWorkBitmapForEndTime:(unint64_t)a3 andSysdiagnoseTrigger:(BOOL)a4;
- (void)handleHighBWEndCallback:(id)a3;
- (void)handleHighBWStartCallback:(id)a3;
- (void)initOperatorDependancies;
- (void)log;
- (void)logEventBackwardNetworkBitmaps;
- (void)logEventBackwardNetworkBitmapsSysdiagnoseTrigger;
- (void)logEventBackwardUsage;
- (void)logEventBackwardUsageWithOutcome:(id)a3;
- (void)logEventForwardLowInternet;
- (void)processesOfInterest:(id)a3;
- (void)setLastNetworkBitmapTimestampFor:(id)a3;
@end

@implementation PLProcessNetworkAgent

- (void)log
{
  if ([(PLProcessNetworkAgent *)self hasSymptomsLogging])
  {

    [(PLProcessNetworkAgent *)self logEventBackwardUsage];
  }
}

- (void)logEventBackwardUsage
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D6B6A8];
  v16[0] = *MEMORY[0x277D6B6D0];
  v16[1] = v3;
  v17[0] = MEMORY[0x277CBEC38];
  v17[1] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  if ([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
  {
    v5 = [(PLProcessNetworkAgent *)self usageFeed];
    v6 = [(PLProcessNetworkAgent *)self processes];
    v7 = *MEMORY[0x277D6B770];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__PLProcessNetworkAgent_logEventBackwardUsage__block_invoke_285;
    v13[3] = &unk_27825B280;
    v13[4] = self;
    [v5 usageToDateWithOptionsFor:v6 nameKind:v7 options:v4 reply:v13];
  }

  else
  {
    v9 = [(PLProcessNetworkAgent *)self usageFeed];
    v10 = *MEMORY[0x277D6B770];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__PLProcessNetworkAgent_logEventBackwardUsage__block_invoke;
    v15[3] = &unk_27825B280;
    v15[4] = self;
    v11 = [v9 usageToDateWithOptionsFor:0 nameKind:v10 options:v4 reply:v15];

    v12 = PLLogProcessNetwork();
    v5 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "successfully retrieved network usage data", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "failed to retrieve network usage data", buf, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_5(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogProcessNetwork();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Notification for sysdiagnose trigger for network bitmaps: %@", &v10, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"Source"];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 objectForKeyedSubscript:@"Source"];
    v8 = [v7 isEqual:&unk_282C10218];

    if (v8)
    {
      [*(a1 + 32) setCurNetworkBitmapTimestampForSysdiagnoseTrigger:-1];
      [*(a1 + 32) logEventBackwardNetworkBitmapsSysdiagnoseTrigger];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLProcessNetworkAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"Connection";
  v2 = +[PLProcessNetworkAgent entryEventPointDefinitionConnection];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventPointDefinitionConnection
{
  v44[2] = *MEMORY[0x277D85DE8];
  v43[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v41[0] = *MEMORY[0x277D3F568];
  v41[1] = v2;
  v42[0] = &unk_282C1BD98;
  v42[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F4C0];
  v41[2] = *MEMORY[0x277D3F4C8];
  v41[3] = v3;
  v42[2] = &unk_282C101D0;
  v42[3] = &unk_282C101E8;
  v41[4] = *MEMORY[0x277D3F4A0];
  v42[4] = MEMORY[0x277CBEC38];
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:5];
  v44[0] = v38;
  v43[1] = *MEMORY[0x277D3F540];
  v39[0] = @"EventType";
  v37 = [MEMORY[0x277D3F198] sharedInstance];
  v36 = [v37 commonTypeDict_IntegerFormat];
  v40[0] = v36;
  v39[1] = @"InterfaceName";
  v35 = [MEMORY[0x277D3F198] sharedInstance];
  v34 = [v35 commonTypeDict_StringFormat];
  v40[1] = v34;
  v39[2] = @"ProcessName";
  v33 = [MEMORY[0x277D3F198] sharedInstance];
  v32 = [v33 commonTypeDict_StringFormat_withBundleID];
  v40[2] = v32;
  v39[3] = @"ProcessPID";
  v31 = [MEMORY[0x277D3F198] sharedInstance];
  v30 = [v31 commonTypeDict_IntegerFormat];
  v40[3] = v30;
  v39[4] = @"ProviderType";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_IntegerFormat];
  v40[4] = v28;
  v39[5] = @"LocalAddress";
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_StringFormat];
  v40[5] = v26;
  v39[6] = @"LocalPort";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_IntegerFormat];
  v40[6] = v24;
  v39[7] = @"RemoteAddress";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_StringFormat];
  v40[7] = v22;
  v39[8] = @"RemotePort";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_IntegerFormat];
  v40[8] = v20;
  v39[9] = @"TrafficClass";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_StringFormat];
  v40[9] = v18;
  v39[10] = @"rxWifiBytes";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v40[10] = v16;
  v39[11] = @"txWifiBytes";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v40[11] = v5;
  v39[12] = @"rxCellularBytes";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v40[12] = v7;
  v39[13] = @"txCellularBytes";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v40[13] = v9;
  v39[14] = @"isChannelArch";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_BoolFormat];
  v40[14] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:15];
  v44[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventForwardDefinitions
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"LowInternet";
  v2 = +[PLProcessNetworkAgent entryEventForwardDefinitionLowInternet];
  v9[0] = v2;
  v8[1] = @"HighCellularBWTransactions";
  v3 = +[PLProcessNetworkAgent entryEventForwardDefinitionHighCellularBWTransactions];
  v9[1] = v3;
  v8[2] = @"HighCellularBWTransactionsDetail";
  v4 = +[PLProcessNetworkAgent entryEventForwardDefinitionHighCellularBWTransactionsDetail];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventBackwardDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Usage";
  v2 = +[PLProcessNetworkAgent entryEventBackwardDefinitionUsage];
  v7[1] = @"NetworkBitmap";
  v8[0] = v2;
  v3 = +[PLProcessNetworkAgent entryEventBackwardDefinitionNetworkBitmap];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryEventIntervalDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"UsageDiff";
  v2 = +[PLProcessNetworkAgent entryEventIntervalDefinitionUsage];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventBackwardDefinitionNetworkBitmap
{
  v34[2] = *MEMORY[0x277D85DE8];
  v33[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v31[0] = *MEMORY[0x277D3F568];
  v31[1] = v2;
  v32[0] = &unk_282C1BDA8;
  v32[1] = MEMORY[0x277CBEC38];
  v31[2] = *MEMORY[0x277D3F4A0];
  v32[2] = MEMORY[0x277CBEC38];
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  v34[0] = v20;
  v33[1] = *MEMORY[0x277D3F540];
  v29[0] = @"BundleName";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_StringFormat_withBundleID];
  v30[0] = v18;
  v29[1] = @"CurrentMachAbsoluteTime";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v30[1] = v16;
  v29[2] = @"MachAbsoluteStartTime";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v30[2] = v4;
  v29[3] = @"MachAbsoluteEndTime";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v30[3] = v6;
  v29[4] = *MEMORY[0x277D6B600];
  v27 = *MEMORY[0x277D3F5A8];
  v7 = v27;
  v28 = &unk_282C10200;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30[4] = v8;
  v29[5] = *MEMORY[0x277D6B608];
  v25 = v7;
  v26 = &unk_282C10200;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v30[5] = v9;
  v29[6] = *MEMORY[0x277D6B5D8];
  v23 = v7;
  v24 = &unk_282C10200;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v30[6] = v10;
  v29[7] = *MEMORY[0x277D6B5E8];
  v21 = v7;
  v22 = &unk_282C10200;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v30[7] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:8];
  v34[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventForwardDefinitionLowInternet
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1BDB8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"Mode";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventBackwardDefinitionUsage
{
  v33[2] = *MEMORY[0x277D85DE8];
  v32[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v30[0] = *MEMORY[0x277D3F568];
  v30[1] = v2;
  v31[0] = &unk_282C1BDC8;
  v31[1] = MEMORY[0x277CBEC38];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v33[0] = v27;
  v32[1] = *MEMORY[0x277D3F540];
  v28[0] = @"ProcessName";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_StringFormat_withBundleID];
  v29[0] = v25;
  v28[1] = @"BundleName";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_StringFormat_withBundleID];
  v29[1] = v23;
  v28[2] = @"ExtensionName";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_StringFormat_withBundleID];
  v29[2] = v21;
  v28[3] = @"WifiIn";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v29[3] = v19;
  v28[4] = @"WifiOut";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v29[4] = v17;
  v28[5] = @"CellIn";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v29[5] = v15;
  v28[6] = @"CellOut";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v29[6] = v4;
  v28[7] = @"BTCompanionIn";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v29[7] = v6;
  v28[8] = @"BTCompanionOut";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v29[8] = v8;
  v28[9] = @"SinceTime";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_DateFormat];
  v29[9] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
  v33[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitionUsage
{
  v33[2] = *MEMORY[0x277D85DE8];
  v32[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v30[0] = *MEMORY[0x277D3F568];
  v30[1] = v2;
  v31[0] = &unk_282C1BDC8;
  v31[1] = @"logEventBackwardUsage";
  v30[2] = *MEMORY[0x277D3F4A0];
  v31[2] = MEMORY[0x277CBEC38];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v33[0] = v27;
  v32[1] = *MEMORY[0x277D3F540];
  v28[0] = @"ProcessName";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_StringFormat_withBundleID];
  v29[0] = v25;
  v28[1] = @"BundleName";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_StringFormat_withBundleID];
  v29[1] = v23;
  v28[2] = @"ExtensionName";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_StringFormat_withBundleID];
  v29[2] = v21;
  v28[3] = @"WifiIn";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v29[3] = v19;
  v28[4] = @"WifiOut";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v29[4] = v17;
  v28[5] = @"CellIn";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v29[5] = v15;
  v28[6] = @"CellOut";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v29[6] = v4;
  v28[7] = @"BTCompanionIn";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v29[7] = v6;
  v28[8] = @"BTCompanionOut";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v29[8] = v8;
  v28[9] = @"timestampEnd";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_DateFormat];
  v29[9] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
  v33[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionHighCellularBWTransactions
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v17 = *MEMORY[0x277D3F568];
  v18 = &unk_282C1BDB8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"HighThroughputStartReason";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v16[0] = v3;
  v15[1] = @"HighThroughputLinkRxTputAfterStart";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v16[1] = v5;
  v15[2] = @"HighThroughputLinkTxTputAfterStart";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v16[2] = v7;
  v15[3] = @"HighThroughputOriginators";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_StringFormat];
  v16[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionHighCellularBWTransactionsDetail
{
  v39[3] = *MEMORY[0x277D85DE8];
  v38[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v36[0] = *MEMORY[0x277D3F568];
  v36[1] = v2;
  v37[0] = &unk_282C1BDB8;
  v37[1] = MEMORY[0x277CBEC38];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v39[0] = v29;
  v38[1] = *MEMORY[0x277D3F540];
  v34[0] = @"HighThroughputStartReason";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v35[0] = v27;
  v34[1] = @"HighThroughputLinkRxTputAfterStart";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v35[1] = v25;
  v34[2] = @"HighThroughputLinkTxTputAfterStart";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v35[2] = v23;
  v34[3] = @"HighThroughputOriginators";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_StringFormat];
  v35[3] = v21;
  v34[4] = @"HighThroughputDuration";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v35[4] = v19;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:5];
  v39[1] = v18;
  v38[2] = *MEMORY[0x277D3F500];
  v32[0] = @"key";
  v30[0] = @"Participant";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_StringFormat];
  v31[0] = v16;
  v30[1] = @"Duration";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v15 commonTypeDict_IntegerFormat];
  v31[1] = v3;
  v30[2] = @"RxBytes";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v31[2] = v5;
  v30[3] = @"TxBytes";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v31[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
  v32[1] = @"value";
  v33[0] = v8;
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v33[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v39[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (PLProcessNetworkAgent)init
{
  v7.receiver = self;
  v7.super_class = PLProcessNetworkAgent;
  v2 = [(PLAgent *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    processes = v2->_processes;
    v2->_processes = v3;

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel_processesOfInterest_ name:@"PLProcessNetworkAgent.addProcessesOfInterest" object:0];
  }

  return v2;
}

- (void)initOperatorDependancies
{
  if ((([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "internalBuild")) && (objc_msgSend(MEMORY[0x277D3F208], "isMac") & 1) == 0)
  {
    v3 = *MEMORY[0x277CBECE8];
    v4 = [(PLOperator *)self workQueue];
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke;
    v39 = &unk_27825B208;
    v40 = self;
    [(PLProcessNetworkAgent *)self setStatManagerRef:NStatManagerCreate()];

    if ([(PLProcessNetworkAgent *)self statManagerRef])
    {
      statManagerRef = self->_statManagerRef;
      NStatManagerAddAllTCP();
      v6 = self->_statManagerRef;
      NStatManagerAddAllUDP();
    }

    else
    {
      v7 = PLLogProcessNetwork();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "Failed to create NStatManager, not tracking network connection statistics", buf, 2u);
      }
    }
  }

  [(PLProcessNetworkAgent *)self setLastNetworkBitmapTimestamp:-1];
  [(PLProcessNetworkAgent *)self setCurNetworkBitmapTimestampForSysdiagnoseTrigger:-1];
  if ([(PLProcessNetworkAgent *)self hasSymptomsLogging])
  {
    v8 = objc_alloc(MEMORY[0x277D6B4F8]);
    v9 = [v8 initWorkspaceWithService:*MEMORY[0x277D6B698]];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277D6B6F8]) initWithWorkspace:v9];
      if (v10)
      {
        v11 = v10;
        [(PLProcessNetworkAgent *)self setUsageFeed:v10];
      }

      else
      {
        v12 = PLLogProcessNetwork();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_ERROR, "Failed to initialize usage feed", buf, 2u);
        }

        v11 = 0;
      }
    }

    else
    {
      v11 = PLLogProcessNetwork();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "Failed to create AnalyticsWorkspace", buf, 2u);
      }
    }

    if ([(PLOperator *)self isDebugEnabled])
    {
      v13 = MEMORY[0x277D3F1E0];
      v14 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:5.0];
      v15 = [(PLOperator *)self workQueue];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_214;
      v34[3] = &unk_27825B230;
      v34[4] = self;
      v16 = [v13 scheduledTimerWithMonotonicFireDate:v14 withInterval:v15 withQueue:v34 withBlock:5.0];
      [(PLProcessNetworkAgent *)self setLogUsageTimer:v16];

      if ([(PLProcessNetworkAgent *)self hasSymptomsLogging])
      {
        v17 = objc_alloc(MEMORY[0x277D3F160]);
        v18 = [(PLOperator *)self workQueue];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_2;
        v33[3] = &unk_2782597E8;
        v33[4] = self;
        v19 = [v17 initWithWorkQueue:v18 forNotification:@"com.apple.powerlogd.flushNetworkBitmaps" requireState:0 withBlock:v33];
        [(PLProcessNetworkAgent *)self setFlushNetworkBitmapsListener:v19];
      }

      v20 = 0;
    }

    else
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_3;
      v32[3] = &unk_2782597E8;
      v32[4] = self;
      v20 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v32];
    }

    if ([(PLProcessNetworkAgent *)self hasSymptomsLogging])
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_4;
      v31[3] = &unk_2782597E8;
      v31[4] = self;
      v21 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withMaxIntervalInSecs:v31 withBlock:900.0];
      [(PLProcessNetworkAgent *)self setBatteryLevelChangedListenerForNetworkBitmap:v21];

      v22 = objc_alloc(MEMORY[0x277D3F1F0]);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_5;
      v30[3] = &unk_2782597E8;
      v30[4] = self;
      v23 = [v22 initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:v30];
      [(PLProcessNetworkAgent *)self setSysdiagnoseListener:v23];
    }

    [(PLProcessNetworkAgent *)self setBatteryLevelChanged:v20];
    [(PLProcessNetworkAgent *)self logEventForwardLowInternet];
    [(PLProcessNetworkAgent *)self logEventBackwardNetworkBitmaps];
    v24 = objc_alloc(MEMORY[0x277D3F270]);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_244;
    v29[3] = &unk_27825A1D8;
    v29[4] = self;
    v25 = [v24 initWithOperator:self withRegistration:&unk_282C171F8 withBlock:v29];
    [(PLProcessNetworkAgent *)self setHighBWStartListener:v25];

    if ([MEMORY[0x277D3F180] fullMode])
    {
      v26 = objc_alloc(MEMORY[0x277D3F270]);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_253;
      v28[3] = &unk_27825A1D8;
      v28[4] = self;
      v27 = [v26 initWithOperator:self withRegistration:&unk_282C17220 withBlock:v28];
      [(PLProcessNetworkAgent *)self setHighBWEndlistener:v27];
    }
  }
}

void __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogProcessNetwork();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "NetworkAdvisory-HighThroughput-Start with payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) handleHighBWStartCallback:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_253(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogProcessNetwork();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "NetworkAdvisory-HighThroughput-End with payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) handleHighBWEndCallback:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)processesOfInterest:(id)a3
{
  v4 = [a3 userInfo];
  if (v4)
  {
    v8 = v4;
    v5 = [v4 objectForKeyedSubscript:@"entry"];
    if (v5)
    {
      v6 = [(PLProcessNetworkAgent *)self processes];
      v7 = [v8 objectForKeyedSubscript:@"entry"];
      [v6 unionSet:v7];
    }

    v4 = v8;
  }
}

- (void)didAddNewSource:(__NStatSource *)a3
{
  v5 = [[PLProcessNetworkSource alloc] initWithSource:a3];
  NStatSourceSetCountsBlock();
  v4 = v5;
  NStatSourceSetDescriptionBlock();
  v3 = v4;
  NStatSourceSetRemovedBlock();
}

- (void)didSetCountsBlock:(id)a3 withCounts:(id)a4
{
  if (a4)
  {

    [a3 setCountsDictionary:a4];
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v6 = PLLogProcessNetwork();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "WARNING: null counts dictionary passed in", v7, 2u);
    }
  }
}

- (void)didSetDescriptionBlock:(id)a3 withDescription:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 descriptionDictionary];

    if (v8)
    {
      v9 = [v6 descriptionDictionary];
      v10 = MEMORY[0x277D2CAC8];
      v11 = [v9 objectForCFString:*MEMORY[0x277D2CAC8]];

      v12 = [v7 objectForCFString:*v10];
      v13 = [v6 descriptionDictionary];
      v14 = MEMORY[0x277D2CB10];
      v15 = [v13 objectForCFString:*MEMORY[0x277D2CB10]];

      v16 = [v7 objectForCFString:*v14];
      v17 = [v6 descriptionDictionary];
      v18 = MEMORY[0x277D2CB08];
      v19 = [v17 objectForCFString:*MEMORY[0x277D2CB08]];

      v20 = [v7 objectForCFString:*v18];
      if ([v15 isEqualToString:v16])
      {
        v21 = PLLogProcessNetwork();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          [v6 descriptionDictionary];
          v23 = v22 = v11;
          *buf = 138412546;
          v40 = v23;
          v41 = 2112;
          v42 = v7;
          _os_log_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEFAULT, "WARNING: new description dictionary with same process name: %@ => %@", buf, 0x16u);

          v11 = v22;
        }

        goto LABEL_22;
      }

      if ([v15 isEqualToString:@"kernel_task"])
      {
LABEL_22:

        goto LABEL_23;
      }

      v36 = v19;
      v26 = v12;
      v27 = [MEMORY[0x277CCABB0] numberWithInt:0];
      v28 = v11;
      v29 = v27;
      v38 = v28;
      v30 = [v28 isEqualToNumber:v27];

      v31 = [MEMORY[0x277CCABB0] numberWithInt:0];
      v37 = v26;
      v32 = [v26 isEqualToNumber:v31];

      if (v30)
      {
        v19 = v36;
        if (v32)
        {
          v33 = PLLogProcessNetwork();
          v12 = v37;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v34 = "WARNING: new dictionary with same process name and same zeroth interface number";
LABEL_19:
            _os_log_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 2u);
            goto LABEL_20;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v19 = v36;
        if (v32)
        {
          v33 = PLLogProcessNetwork();
          v12 = v37;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v34 = "WARNING: new dictionary with same process name but new zeroth interface number";
            goto LABEL_19;
          }

LABEL_20:

          v11 = v38;
          goto LABEL_22;
        }
      }

      [(PLProcessNetworkAgent *)self transferSource:v6 fromPID:v19 toPID:v20];
      [v6 setDescriptionDictionary:v7];
      [(PLProcessNetworkAgent *)self logEventPointConnectionEvent:2 forSource:v6];
      v12 = v37;
      v11 = v38;
      goto LABEL_22;
    }

    v25 = [v7 objectForCFString:*MEMORY[0x277D2CB08]];
    [(PLProcessNetworkAgent *)self addSource:v6 toPID:v25];

    [v6 setDescriptionDictionary:v7];
    [(PLProcessNetworkAgent *)self logEventPointConnectionEvent:0 forSource:v6];
  }

  else
  {
    v24 = PLLogProcessNetwork();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_ERROR, "WARNING: null description dictionary passed in", buf, 2u);
    }
  }

LABEL_23:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)didRemoveSource:(id)a3
{
  v5 = a3;
  v4 = [v5 descriptionDictionary];

  if (v4)
  {
    [(PLProcessNetworkAgent *)self logEventPointConnectionEvent:1 forSource:v5];
  }
}

- (void)aggregateAndLogNetworkBitmaps:(id)a3 withStartTime:(unint64_t)a4 andEndTime:(unint64_t)a5
{
  v86[4] = *MEMORY[0x277D85DE8];
  v55 = a3;
  context = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v60 = *MEMORY[0x277D6B5D8];
  v6 = *MEMORY[0x277D6B5D8];
  v61 = *MEMORY[0x277D6B600];
  v86[0] = *MEMORY[0x277D6B600];
  v86[1] = v6;
  v58 = *MEMORY[0x277D6B608];
  v7 = *MEMORY[0x277D6B608];
  v59 = *MEMORY[0x277D6B5E8];
  v86[2] = *MEMORY[0x277D6B5E8];
  v86[3] = v7;
  [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:4];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v80 = 0u;
  v56 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
  if (v56)
  {
    v53 = *v78;
    v8 = *MEMORY[0x277D6B610];
    do
    {
      v9 = 0;
      do
      {
        if (*v78 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v62 = v9;
        v64 = *(*(&v77 + 1) + 8 * v9);
        v10 = [v55 objectForKeyedSubscript:?];
        v11 = v10;
        if (v10)
        {
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v12 = [v10 countByEnumeratingWithState:&v73 objects:v82 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v74;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v74 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v73 + 1) + 8 * i);
                v17 = [v11 objectForKeyedSubscript:v16];
                v18 = [v5 objectForKeyedSubscript:v16];

                if (!v18)
                {
                  v19 = [MEMORY[0x277CBEB38] dictionary];
                  [v5 setObject:v19 forKeyedSubscript:v16];
                }

                v20 = [v17 objectForKeyedSubscript:v8];
                v21 = [(PLProcessNetworkAgent *)self compressNetworkBitmap:v20];

                if (v21)
                {
                  v22 = [v5 objectForKeyedSubscript:v16];
                  [v22 setObject:v21 forKeyedSubscript:v64];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v73 objects:v82 count:16];
            }

            while (v13);
          }
        }

        else
        {
          v23 = PLLogProcessNetwork();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v84 = v64;
            _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@ interface does not exist in outcome dict from symptoms.", buf, 0xCu);
          }
        }

        v9 = v62 + 1;
      }

      while (v62 + 1 != v56);
      v56 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
    }

    while (v56);
  }

  v57 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"NetworkBitmap"];
  v71 = 0;
  v72 = 0;
  [MEMORY[0x277D3F258] getCurrentMonotonicAndMachAbsTime:&v71 machAbsTime:&v72 machContTime:0];
  v54 = v71;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v24 = v5;
  v65 = [v24 countByEnumeratingWithState:&v67 objects:v81 count:16];
  if (v65)
  {
    v63 = *v68;
    do
    {
      v25 = 0;
      do
      {
        if (*v68 != v63)
        {
          objc_enumerationMutation(v24);
        }

        v26 = *(*(&v67 + 1) + 8 * v25);
        v27 = PLLogProcessNetwork();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v84 = v26;
          _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "Process %@'s network bitmaps", buf, 0xCu);
        }

        v28 = [v24 objectForKeyedSubscript:v26];
        v29 = [v28 objectForKeyedSubscript:v61];
        if (v29)
        {
          goto LABEL_36;
        }

        v29 = [v24 objectForKeyedSubscript:v26];
        v30 = [v29 objectForKeyedSubscript:v60];
        if (v30)
        {
          goto LABEL_35;
        }

        v31 = [v24 objectForKeyedSubscript:v26];
        v32 = [v31 objectForKeyedSubscript:v59];
        if (v32)
        {

          v30 = 0;
LABEL_35:

LABEL_36:
LABEL_37:
          v33 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v57];
          [v33 setEntryDate:v54];
          v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v72];
          [v33 setObject:v34 forKeyedSubscript:@"CurrentMachAbsoluteTime"];

          [v33 setObject:v26 forKeyedSubscript:@"BundleName"];
          v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
          [v33 setObject:v35 forKeyedSubscript:@"MachAbsoluteStartTime"];

          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
          [v33 setObject:v36 forKeyedSubscript:@"MachAbsoluteEndTime"];

          v37 = [v24 objectForKeyedSubscript:v26];
          v38 = [v37 objectForKeyedSubscript:v61];
          [v33 setObject:v38 forKeyedSubscript:v61];

          v39 = [v24 objectForKeyedSubscript:v26];
          v40 = [v39 objectForKeyedSubscript:v58];
          [v33 setObject:v40 forKeyedSubscript:v58];

          v41 = [v24 objectForKeyedSubscript:v26];
          v42 = [v41 objectForKeyedSubscript:v60];
          [v33 setObject:v42 forKeyedSubscript:v60];

          v43 = [v24 objectForKeyedSubscript:v26];
          v44 = [v43 objectForKeyedSubscript:v59];
          [v33 setObject:v44 forKeyedSubscript:v59];

          [(PLOperator *)self logEntry:v33];
          goto LABEL_38;
        }

        v45 = [v24 objectForKeyedSubscript:v26];
        v46 = [v45 objectForKeyedSubscript:v58];

        if (v46)
        {
          goto LABEL_37;
        }

        v33 = PLLogProcessNetwork();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v84 = v26;
          _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "Process %@'s network bitmaps on all interfaces are empty.", buf, 0xCu);
        }

LABEL_38:

        ++v25;
      }

      while (v65 != v25);
      v47 = [v24 countByEnumeratingWithState:&v67 objects:v81 count:16];
      v65 = v47;
    }

    while (v47);
  }

  objc_autoreleasePoolPop(context);
  v48 = *MEMORY[0x277D85DE8];
}

- (id)compressNetworkBitmap:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3 || ![v3 length])
  {
    goto LABEL_15;
  }

  v5 = [v4 length];
  v6 = [v4 bytes];
  if ((v5 & 7) == 0)
  {
    v9 = v5 >> 3;
    if (v5 >= 8)
    {
      v11 = 0;
      while (!*(v6 + 8 * v9 - 8 + 8 * v11))
      {
        if (-v9 == --v11)
        {
          goto LABEL_15;
        }
      }

      v10 = -v11;
    }

    else
    {
      v10 = 0;
    }

    v12 = v9 - v10;
    if (v9 != v10)
    {
      v8 = [MEMORY[0x277CBEB28] dataWithCapacity:8 * v12];
      v14 = [v4 bytes];
      do
      {
        v15 = *v14++;
        v16 = v15;
        [v8 appendBytes:&v16 length:8];
        --v12;
      }

      while (v12);
      goto LABEL_16;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v7 = PLLogProcessNetwork();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Network bitmap's size is not a multiple of 64 bits.", buf, 2u);
  }

  v8 = v4;
LABEL_16:

  return v8;
}

void __46__PLProcessNetworkAgent_logEventBackwardUsage__block_invoke_285(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogProcessNetwork();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = [*(a1 + 32) processes];
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "[self processes]=%@, outcome=%@", &v9, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = [v3 copy];
  [v5 logEventBackwardUsageWithOutcome:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardLowInternet
{
  v3 = CFPreferencesCopyValue(@"deviceConfigType", @"com.apple.symptomsd", @"_networkd", *MEMORY[0x277CBF030]);
  if (v3)
  {
    v6 = v3;
    v4 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LowInternet"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
    [v5 setObject:v6 forKeyedSubscript:@"Mode"];
    [(PLOperator *)self logEntry:v5];

    v3 = v6;
  }
}

- (BOOL)outcomeHasDataUsage:(id)a3
{
  v21[6] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277D6B740];
  v21[0] = *MEMORY[0x277D6B738];
  v21[1] = v4;
  v5 = *MEMORY[0x277D6B730];
  v21[2] = *MEMORY[0x277D6B728];
  v21[3] = v5;
  v6 = *MEMORY[0x277D6B750];
  v21[4] = *MEMORY[0x277D6B748];
  v21[5] = v6;
  [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:6];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [v3 valueForKey:{*(*(&v16 + 1) + 8 * i), v16}];
        [v11 doubleValue];
        v13 = v12;

        if (v13 > 0.0)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)logEventBackwardUsageWithOutcome:(id)a3
{
  v91 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v63 = [MEMORY[0x277CBEAA8] monotonicDate];
  v49 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"UsageDiff"];
  v61 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Usage"];
  if (v47 && [v47 count])
  {
    v3 = PLLogProcessNetwork();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v47 count];
      _os_log_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEFAULT, "NetworkUsage outcome has payload size: %lu", &buf, 0xCu);
    }

    v50 = [MEMORY[0x277CBEB38] dictionary];
    v48 = [MEMORY[0x277CBEB18] array];
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = v47;
    v4 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
    if (v4)
    {
      v59 = *MEMORY[0x277D6B770];
      v60 = *v79;
      v58 = *MEMORY[0x277D6B760];
      v56 = *MEMORY[0x277D6B738];
      v57 = *MEMORY[0x277D6B768];
      v54 = *MEMORY[0x277D6B728];
      v55 = *MEMORY[0x277D6B740];
      v53 = *MEMORY[0x277D6B730];
      v52 = *MEMORY[0x277D6B718];
      v5 = *MEMORY[0x277D6B720];
      v6 = *MEMORY[0x277D6B778];
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v79 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v78 + 1) + 8 * i);
          v9 = objc_autoreleasePoolPush();
          v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v61 withDate:v63];
          v11 = [v8 valueForKey:v59];
          [v10 setObject:v11 forKeyedSubscript:@"ProcessName"];
          v12 = [v8 valueForKey:v58];
          [v10 setObject:v12 forKeyedSubscript:@"BundleName"];

          v13 = [v8 valueForKey:v57];
          [v10 setObject:v13 forKeyedSubscript:@"ExtensionName"];

          v14 = [v8 valueForKey:v56];
          [v10 setObject:v14 forKeyedSubscript:@"WifiIn"];

          v15 = [v8 valueForKey:v55];
          [v10 setObject:v15 forKeyedSubscript:@"WifiOut"];

          v16 = [v8 valueForKey:v54];
          [v10 setObject:v16 forKeyedSubscript:@"CellIn"];

          v17 = [v8 valueForKey:v53];
          [v10 setObject:v17 forKeyedSubscript:@"CellOut"];

          v18 = [v8 valueForKey:v52];
          [v10 setObject:v18 forKeyedSubscript:@"BTCompanionIn"];

          v19 = [v8 valueForKey:v5];
          [v10 setObject:v19 forKeyedSubscript:@"BTCompanionOut"];

          v20 = [v8 valueForKey:v6];
          [v10 setObject:v20 forKeyedSubscript:@"SinceTime"];

          *&buf = 0;
          *(&buf + 1) = &buf;
          v88 = 0x2020000000;
          v89 = 0;
          v21 = [v10 dictionary];
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __58__PLProcessNetworkAgent_logEventBackwardUsageWithOutcome___block_invoke;
          v75[3] = &unk_27825B2A8;
          p_buf = &buf;
          v22 = v10;
          v76 = v22;
          [v21 enumerateKeysAndObjectsUsingBlock:v75];

          if (*(*(&buf + 1) + 24) > 0.0)
          {
            [v50 setObject:v22 forKeyedSubscript:v11];
            v23 = [(PLProcessNetworkAgent *)self lastEntryDate];
            v24 = v23 == 0;

            if (!v24)
            {
              v25 = objc_alloc(MEMORY[0x277D3F190]);
              v26 = [(PLProcessNetworkAgent *)self lastEntryDate];
              v27 = [v25 initWithEntryKey:v49 withDate:v26];

              [v27 setObject:v63 forKeyedSubscript:@"timestampEnd"];
              [v27 setObject:v11 forKeyedSubscript:@"ProcessName"];
              v28 = [v22 objectForKeyedSubscript:@"BundleName"];
              [v27 setObject:v28 forKeyedSubscript:@"BundleName"];

              v29 = [v22 objectForKeyedSubscript:@"ExtensionName"];
              [v27 setObject:v29 forKeyedSubscript:@"ExtensionName"];

              v30 = [v22 dictionary];
              v72[0] = MEMORY[0x277D85DD0];
              v72[1] = 3221225472;
              v72[2] = __58__PLProcessNetworkAgent_logEventBackwardUsageWithOutcome___block_invoke_2;
              v72[3] = &unk_27825B2D0;
              v31 = v27;
              v73 = v31;
              v74 = v22;
              [v30 enumerateKeysAndObjectsUsingBlock:v72];

              v32 = [(PLProcessNetworkAgent *)self lastProcessNameToNetworkUsageEntry];
              v33 = [v32 objectForKeyedSubscript:v11];

              v68 = 0;
              v69 = &v68;
              v34 = *(*(&buf + 1) + 24);
              v70 = 0x2020000000;
              v71 = v34;
              if (v33)
              {
                v71 = 0.0;
                v35 = [v33 dictionary];
                v64[0] = MEMORY[0x277D85DD0];
                v64[1] = 3221225472;
                v64[2] = __58__PLProcessNetworkAgent_logEventBackwardUsageWithOutcome___block_invoke_3;
                v64[3] = &unk_27825B2F8;
                v65 = v31;
                v66 = v33;
                v67 = &v68;
                [v35 enumerateKeysAndObjectsUsingBlock:v64];

                v34 = v69[3];
              }

              if (v34 > 0.0)
              {
                [v48 addObject:v31];
              }

              _Block_object_dispose(&v68, 8);
            }
          }

          _Block_object_dispose(&buf, 8);
          objc_autoreleasePoolPop(v9);
        }

        v4 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
      }

      while (v4);
    }

    if (-[PLOperator isDebugEnabled](self, "isDebugEnabled") && ([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
    {
      v85 = v61;
      v36 = [v50 allValues];
      v86 = v36;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      [(PLOperator *)self logEntries:v37 withGroupID:v61];
    }

    v38 = [(PLProcessNetworkAgent *)self lastEntryDate];

    if (v38)
    {
      if (![v48 count] && objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
      {
        v39 = objc_alloc(MEMORY[0x277D3F190]);
        v40 = [(PLProcessNetworkAgent *)self lastEntryDate];
        v41 = [v39 initWithEntryKey:v49 withDate:v40];

        v84 = v41;
        v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
        [(PLOperator *)self postEntries:v42];
      }

      v82 = v49;
      v83 = v48;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      [(PLOperator *)self logEntries:v43 withGroupID:v49];

      v44 = [(PLProcessNetworkAgent *)self lastEntryDate];
      [(PLProcessNetworkAgent *)self accountWithNetworkUsageDiffEntries:v48 withStartDate:v44 withEndDate:v63];
    }

    [(PLProcessNetworkAgent *)self setLastEntryDate:v63];
    [(PLProcessNetworkAgent *)self setLastProcessNameToNetworkUsageEntry:v50];
  }

  else
  {
    v45 = PLLogProcessNetwork();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_21A4C6000, v45, OS_LOG_TYPE_ERROR, "NetworkUsage outcome has no payload", &buf, 2u);
    }

    v50 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v49 withDate:v63];
    [v50 setIsErrorEntry:1];
    [v50 setObject:@"NetworkUsage outcome has no payload" forKeyedSubscript:@"__PLEntryErrorString__"];
    [(PLOperator *)self logEntry:v50];
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __58__PLProcessNetworkAgent_logEventBackwardUsageWithOutcome___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v9];
    [v7 doubleValue];
    *(*(*(a1 + 40) + 8) + 24) = v8 + *(*(*(a1 + 40) + 8) + 24);
  }
}

void __58__PLProcessNetworkAgent_logEventBackwardUsageWithOutcome___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v8];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

void __58__PLProcessNetworkAgent_logEventBackwardUsageWithOutcome___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v14];
    [v7 doubleValue];
    v9 = v8;
    v10 = [*(a1 + 40) objectForKeyedSubscript:v14];
    [v10 doubleValue];
    v12 = v9 - v11;

    *(*(*(a1 + 48) + 8) + 24) = v12 + *(*(*(a1 + 48) + 8) + 24);
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    [*(a1 + 32) setObject:v13 forKeyedSubscript:v14];
  }
}

- (void)setLastNetworkBitmapTimestampFor:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F258] deviceRebooted])
  {
    v5 = 0;
  }

  else
  {
    v6 = PLLogProcessNetwork();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v4;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "[%@]: Detected that powerlog restarted", &v21, 0xCu);
    }

    v7 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"NetworkBitmap"];
    v8 = [(PLOperator *)self storage];
    v9 = [v8 lastEntryForKey:v7];

    if (v9 && ([MEMORY[0x277D3F258] deviceBootTime], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "entryDate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "compare:", v11), v11, v10, v12 == -1))
    {
      v14 = PLLogProcessNetwork();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v9 objectForKeyedSubscript:@"MachAbsoluteEndTime"];
        v21 = 138412546;
        v22 = v4;
        v23 = 2112;
        v24 = v15;
        _os_log_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEFAULT, "[%@]: Recovered last entry's mach time: %@", &v21, 0x16u);
      }

      v13 = [v9 objectForKeyedSubscript:@"MachAbsoluteEndTime"];
      v5 = [v13 unsignedLongLongValue];
    }

    else
    {
      v13 = PLLogProcessNetwork();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v4;
        _os_log_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEFAULT, "[%@]: Last entry's mach time not available", &v21, 0xCu);
      }

      v5 = 0;
    }
  }

  v16 = [MEMORY[0x277D3F258] getCurrMachAbsTimeInSecs];
  v17 = v16 - 3072;
  if (v16 < 0xC00)
  {
    v17 = 0;
  }

  if (v17 <= v5)
  {
    v17 = v5;
  }

  v18 = v17 & 0xFFFFFFFFFFFFFFF8;
  [(PLProcessNetworkAgent *)self setLastNetworkBitmapTimestamp:v17 & 0xFFFFFFFFFFFFFFF8];
  v19 = PLLogProcessNetwork();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v4;
    v23 = 2048;
    v24 = v18;
    _os_log_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEFAULT, "[%@]: Network bitmaps initialized start time: %llu.", &v21, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)getNetWorkBitmapForEndTime:(unint64_t)a3 andSysdiagnoseTrigger:(BOOL)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = @"Sysdiagnose Bitmap";
  }

  else
  {
    v7 = @"Bitmap";
  }

  v21 = *MEMORY[0x277D6B5F0];
  v22[0] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v9 = [(PLProcessNetworkAgent *)self usageFeed];
  v10 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke;
  v15[3] = &unk_27825B320;
  v16 = v7;
  v17 = self;
  v18 = a4;
  v11 = [v9 networkBitmapsToDateWithOptionsFor:0 startTime:v10 endTime:a3 options:v8 reply:v15];

  v12 = PLLogProcessNetwork();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEFAULT, "[%@]: successfully obtained network bitmaps", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v20 = v7;
    _os_log_error_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_ERROR, "[%@]: failed to retrieve network bitmaps", buf, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLLogProcessNetwork();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_3:

      goto LABEL_4;
    }

    v25 = *(a1 + 32);
    v28 = 138412546;
    v29 = v25;
    v30 = 2112;
    v31 = v6;
    v18 = "[%@]: error in network bitmap callback: %@";
    v19 = v7;
    v20 = 22;
LABEL_26:
    _os_log_error_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_ERROR, v18, &v28, v20);
    goto LABEL_3;
  }

  if (!v5)
  {
    v7 = PLLogProcessNetwork();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v17 = *(a1 + 32);
    v28 = 138412290;
    v29 = v17;
    v18 = "[%@]: network bitmap dict is empty";
    v19 = v7;
    v20 = 12;
    goto LABEL_26;
  }

  v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277D6B5F8]];
  v10 = [v9 unsignedLongLongValue];

  v11 = [v5 objectForKeyedSubscript:*MEMORY[0x277D6B5E0]];
  v12 = [v11 unsignedLongLongValue];

  v13 = PLLogProcessNetwork();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v28 = 138412802;
    v29 = v14;
    v30 = 2048;
    v31 = v12;
    v32 = 2048;
    v33 = v10;
    _os_log_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEFAULT, "[%@]: Network bitmaps endtime from symptoms: %llu, start time: %llu", &v28, 0x20u);
  }

  if (v12 <= v10)
  {
    v21 = PLLogProcessNetwork();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      v27 = [*(a1 + 40) lastNetworkBitmapTimestamp];
      v28 = 138412802;
      v29 = v26;
      v30 = 2048;
      v31 = v12;
      v32 = 2048;
      v33 = v27;
      _os_log_error_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_ERROR, "[%@]: End time %llu smaller than start time %llu.", &v28, 0x20u);
    }
  }

  else
  {
    [*(a1 + 40) aggregateAndLogNetworkBitmaps:v5 withStartTime:v10 andEndTime:v12];
    [*(a1 + 40) setLastNetworkBitmapTimestamp:v12];
    if (*(a1 + 48))
    {
      if (v12 < [*(a1 + 40) curNetworkBitmapTimestampForSysdiagnoseTrigger] && objc_msgSend(*(a1 + 40), "curNetworkBitmapTimestampForSysdiagnoseTrigger") - v12 >= 8)
      {
        v15 = PLLogProcessNetwork();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 32);
          v28 = 138412290;
          v29 = v16;
          _os_log_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEFAULT, "[%@]: trying to retrieve more network bitmaps", &v28, 0xCu);
        }

        [*(a1 + 40) logEventBackwardNetworkBitmapsSysdiagnoseTrigger];
      }
    }

    else
    {
      v22 = [MEMORY[0x277D3F258] getCurrMachAbsTimeInSecs];
      if (v22 > v12 && v22 - v12 >= 0x800)
      {
        v23 = PLLogProcessNetwork();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 32);
          v28 = 138412290;
          v29 = v24;
          _os_log_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEFAULT, "[%@]: trying to retrieve more network bitmaps", &v28, 0xCu);
        }

        [*(a1 + 40) logEventBackwardNetworkBitmaps];
      }
    }
  }

LABEL_4:

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardNetworkBitmapsSysdiagnoseTrigger
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
  v4 = PLLogProcessNetwork();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == -1)
  {
    if (v5)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: initialize last network bitmap log timestamp", &v20, 2u);
    }

    [(PLProcessNetworkAgent *)self setLastNetworkBitmapTimestampFor:@"Sysdiagnose Bitmap"];
    [(PLProcessNetworkAgent *)self logEventBackwardNetworkBitmapsSysdiagnoseTrigger];
  }

  else
  {
    if (v5)
    {
      v20 = 134217984;
      v21 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
      _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Network bitmaps start time: %llu.", &v20, 0xCu);
    }

    v6 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp]+ 1024;
    if ([(PLProcessNetworkAgent *)self curNetworkBitmapTimestampForSysdiagnoseTrigger]== -1)
    {
      -[PLProcessNetworkAgent setCurNetworkBitmapTimestampForSysdiagnoseTrigger:](self, "setCurNetworkBitmapTimestampForSysdiagnoseTrigger:", [MEMORY[0x277D3F258] getCurrMachAbsTimeInSecs]);
      v7 = PLLogProcessNetwork();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(PLProcessNetworkAgent *)self curNetworkBitmapTimestampForSysdiagnoseTrigger];
        v20 = 134217984;
        v21 = v8;
        _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Setting network bitmaps current time for sysdiagnose trigger: %llu.", &v20, 0xCu);
      }
    }

    v9 = [(PLProcessNetworkAgent *)self curNetworkBitmapTimestampForSysdiagnoseTrigger];
    v10 = PLLogProcessNetwork();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218240;
      v21 = v6;
      v22 = 2048;
      v23 = v9;
      _os_log_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Network bitmaps end time: %llu, curr time: %llu.", &v20, 0x16u);
    }

    if (v9 > v6)
    {
      v11 = PLLogProcessNetwork();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
        v20 = 134218240;
        v21 = v12;
        v22 = 2048;
        v23 = v6;
        _os_log_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Requesting network bitmaps from symptoms with start time: %llu, end time: %llu.", &v20, 0x16u);
      }

      v13 = self;
      v14 = v6;
LABEL_21:
      [(PLProcessNetworkAgent *)v13 getNetWorkBitmapForEndTime:v14 andSysdiagnoseTrigger:1];
      goto LABEL_25;
    }

    v15 = v9 - [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
    v16 = PLLogProcessNetwork();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15 >= 8)
    {
      if (v17)
      {
        v18 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
        v20 = 134218240;
        v21 = v18;
        v22 = 2048;
        v23 = v9;
        _os_log_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Requesting network bitmaps from symptoms with start time: %llu, curr time: %llu.", &v20, 0x16u);
      }

      v13 = self;
      v14 = v9;
      goto LABEL_21;
    }

    if (v17)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Requested network bitmap is too recent.", &v20, 2u);
    }
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardNetworkBitmaps
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp]== -1)
  {
    v6 = PLLogProcessNetwork();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "[Bitmap]: initialize last network bitmap log timestamp", &v9, 2u);
    }

    [(PLProcessNetworkAgent *)self setLastNetworkBitmapTimestampFor:@"Bitmap"];
    [(PLProcessNetworkAgent *)self logEventBackwardNetworkBitmaps];
  }

  else
  {
    v3 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp]+ 1024;
    v4 = [MEMORY[0x277D3F258] getCurrMachAbsTimeInSecs];
    v5 = PLLogProcessNetwork();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218496;
      v10 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
      v11 = 2048;
      v12 = v3;
      v13 = 2048;
      v14 = v4;
      _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "[Bitmap]: Requesting network bitmaps from symptoms with start time: %llu, end time: %llu, curr time: %llu.", &v9, 0x20u);
    }

    if (v4 <= v3 || v4 - v3 <= 0x3FF)
    {
      v7 = PLLogProcessNetwork();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9) = 0;
        _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "[Bitmap]: Requested network bitmap is too recent.", &v9, 2u);
      }
    }

    else
    {
      [(PLProcessNetworkAgent *)self getNetWorkBitmapForEndTime:v3 andSysdiagnoseTrigger:0];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)accountWithNetworkUsageDiffEntries:(id)a3 withStartDate:(id)a4 withEndDate:(id)a5
{
  v90 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v10 = PLLogProcessNetwork();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v85 = *&v7;
      v86 = 2112;
      v87 = *&v8;
      v88 = 2112;
      v89 = v9;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "networkUsageDiffEntries=%@, startDate=%@, endDate=%@", buf, 0x20u);
    }

    v63 = v9;
    v64 = v8;

    v11 = [&unk_282C17248 mutableCopy];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v78 objects:v83 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v79;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v79 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v78 + 1) + 8 * i);
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __86__PLProcessNetworkAgent_accountWithNetworkUsageDiffEntries_withStartDate_withEndDate___block_invoke;
          v75[3] = &unk_27825B2D0;
          v76 = v11;
          v77 = v17;
          [v76 enumerateKeysAndObjectsUsingBlock:v75];
        }

        v14 = [v12 countByEnumeratingWithState:&v78 objects:v83 count:16];
      }

      while (v14);
    }

    v18 = [v11 objectForKeyedSubscript:@"WifiIn"];
    [v18 doubleValue];
    v20 = v19;
    v21 = [v11 objectForKeyedSubscript:@"WifiOut"];
    [v21 doubleValue];
    v23 = v20 + v22;

    v24 = [v11 objectForKeyedSubscript:@"CellIn"];
    [v24 doubleValue];
    v26 = v25;
    v27 = [v11 objectForKeyedSubscript:@"CellOut"];
    [v27 doubleValue];
    v29 = v26 + v28;

    v30 = PLLogProcessNetwork();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v85 = v23;
      v86 = 2048;
      v87 = v29;
      _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "totalWiFiUsage=%f, totalBBUsage=%f", buf, 0x16u);
    }

    v68 = [MEMORY[0x277CBEB38] dictionary];
    v67 = [MEMORY[0x277CBEB38] dictionary];
    if (v23 + v29 > 0.0)
    {
      v62 = v7;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      obj = v12;
      v69 = [obj countByEnumeratingWithState:&v71 objects:v82 count:16];
      if (v69)
      {
        v31 = @"BundleName";
        v32 = @"ProcessName";
        v66 = *v72;
        do
        {
          for (j = 0; j != v69; ++j)
          {
            if (*v72 != v66)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v71 + 1) + 8 * j);
            v35 = [v34 objectForKeyedSubscript:v31];
            v36 = [v34 objectForKeyedSubscript:v32];
            v37 = [v34 objectForKeyedSubscript:@"ExtensionName"];
            v38 = v37;
            v70 = v36;
            if (v35)
            {
              v39 = v35;
            }

            else
            {
              v39 = v36;
            }

            if (v37)
            {
              v39 = v37;
            }

            v40 = v39;
            v41 = 0.0;
            v42 = 0.0;
            if (v23 > 0.0)
            {
              [v34 objectForKeyedSubscript:@"WifiIn"];
              v43 = v32;
              v44 = v31;
              v46 = v45 = v11;
              [v46 doubleValue];
              v48 = v47;
              v49 = [v34 objectForKeyedSubscript:@"WifiOut"];
              [v49 doubleValue];
              v42 = (v48 + v50) / v23;

              v11 = v45;
              v31 = v44;
              v32 = v43;
            }

            v51 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
            [v68 setObject:v51 forKeyedSubscript:v40];

            if (v29 > 0.0)
            {
              v52 = [v34 objectForKeyedSubscript:@"CellIn"];
              [v52 doubleValue];
              v54 = v53;
              v55 = [v34 objectForKeyedSubscript:@"CellOut"];
              [v55 doubleValue];
              v41 = (v54 + v56) / v29;
            }

            v57 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
            [v67 setObject:v57 forKeyedSubscript:v40];
          }

          v69 = [obj countByEnumeratingWithState:&v71 objects:v82 count:16];
        }

        while (v69);
      }

      v7 = v62;
    }

    v58 = PLLogProcessNetwork();
    v9 = v63;
    v8 = v64;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v85 = *&v68;
      v86 = 2112;
      v87 = *&v67;
      _os_log_debug_impl(&dword_21A4C6000, v58, OS_LOG_TYPE_DEBUG, "identifierToWeightWiFi=%@, identifierToWeightBB=%@", buf, 0x16u);
    }

    v59 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v59 createDistributionEventIntervalWithDistributionID:37 withChildNodeNameToWeight:v68 withStartDate:v64 withEndDate:v63];

    v60 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v60 createDistributionEventIntervalWithDistributionID:38 withChildNodeNameToWeight:v67 withStartDate:v64 withEndDate:v63];
  }

  v61 = *MEMORY[0x277D85DE8];
}

void __86__PLProcessNetworkAgent_accountWithNetworkUsageDiffEntries_withStartDate_withEndDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 32);
  v5 = a2;
  v11 = [v4 objectForKeyedSubscript:v5];
  [v11 doubleValue];
  v7 = v6;
  v8 = [*(a1 + 40) objectForKeyedSubscript:v5];
  [v8 doubleValue];
  v10 = [v3 numberWithDouble:v7 + v9];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:v5];
}

- (void)handleHighBWStartCallback:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogProcessNetwork();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "High BW payload: %@", &v14, 0xCu);
  }

  v6 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"HighCellularBWTransactions"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
  v8 = [v4 objectForKeyedSubscript:@"HighThroughputStartReason"];
  [v7 setObject:v8 forKeyedSubscript:@"HighThroughputStartReason"];

  v9 = [v4 objectForKeyedSubscript:@"HighThroughputLinkRxTputAfterStart"];
  [v7 setObject:v9 forKeyedSubscript:@"HighThroughputLinkRxTputAfterStart"];

  v10 = [v4 objectForKeyedSubscript:@"HighThroughputLinkTxTputAfterStart"];
  [v7 setObject:v10 forKeyedSubscript:@"HighThroughputLinkTxTputAfterStart"];

  v11 = [v4 objectForKeyedSubscript:@"HighThroughputOriginators"];
  v12 = [v11 componentsJoinedByString:{@", "}];
  [v7 setObject:v12 forKeyedSubscript:@"HighThroughputOriginators"];

  [(PLOperator *)self logEntry:v7];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleHighBWEndCallback:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = PLLogProcessNetwork();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v36 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "High BW payload details: %@", buf, 0xCu);
  }

  v23 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"HighCellularBWTransactionsDetail"];
  v5 = [objc_alloc(MEMORY[0x277D3F1E8]) initWithEntryKey:v23];
  v6 = [v3 objectForKeyedSubscript:@"HighThroughputStartReason"];
  [v5 setObject:v6 forKeyedSubscript:@"HighThroughputStartReason"];

  v7 = [v3 objectForKeyedSubscript:@"HighThroughputLinkRxTputAfterStart"];
  [v5 setObject:v7 forKeyedSubscript:@"HighThroughputLinkRxTputAfterStart"];

  v8 = [v3 objectForKeyedSubscript:@"HighThroughputLinkTxTputAfterStart"];
  [v5 setObject:v8 forKeyedSubscript:@"HighThroughputLinkTxTputAfterStart"];

  v9 = [v3 objectForKeyedSubscript:@"HighThroughputOriginators"];
  v10 = [v9 componentsJoinedByString:{@", "}];
  [v5 setObject:v10 forKeyedSubscript:@"HighThroughputOriginators"];

  v11 = [v3 objectForKeyedSubscript:@"HighThroughputDuration"];
  v27 = v5;
  [v5 setObject:v11 forKeyedSubscript:@"HighThroughputDuration"];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = v3;
  obj = [v3 objectForKeyedSubscript:@"HighThroughputParticipants"];
  v12 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        v32[0] = @"Participant";
        v17 = [v16 objectForKeyedSubscript:?];
        v33[0] = v17;
        v32[1] = @"Duration";
        v18 = [v16 objectForKeyedSubscript:?];
        v33[1] = v18;
        v32[2] = @"RxBytes";
        v19 = [v16 objectForKeyedSubscript:@"RxBytes"];
        v33[2] = v19;
        v32[3] = @"TxBytes";
        v20 = [v16 objectForKeyedSubscript:@"TxBytes"];
        v33[3] = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];

        [v27 setObject:&unk_282C10290 forKeyedSubscript:v21];
        ++v15;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v13);
  }

  [(PLOperator *)self logEntry:v27];
  v22 = *MEMORY[0x277D85DE8];
}

@end