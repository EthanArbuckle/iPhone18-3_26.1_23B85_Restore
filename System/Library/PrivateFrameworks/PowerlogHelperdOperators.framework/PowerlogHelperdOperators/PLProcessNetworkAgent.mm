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
- (BOOL)outcomeHasDataUsage:(id)usage;
- (PLProcessNetworkAgent)init;
- (id)compressNetworkBitmap:(id)bitmap;
- (void)accountWithNetworkUsageDiffEntries:(id)entries withStartDate:(id)date withEndDate:(id)endDate;
- (void)aggregateAndLogNetworkBitmaps:(id)bitmaps withStartTime:(unint64_t)time andEndTime:(unint64_t)endTime;
- (void)didAddNewSource:(__NStatSource *)source;
- (void)didRemoveSource:(id)source;
- (void)didSetCountsBlock:(id)block withCounts:(id)counts;
- (void)didSetDescriptionBlock:(id)block withDescription:(id)description;
- (void)getNetWorkBitmapForEndTime:(unint64_t)time andSysdiagnoseTrigger:(BOOL)trigger;
- (void)handleHighBWEndCallback:(id)callback;
- (void)handleHighBWStartCallback:(id)callback;
- (void)initOperatorDependancies;
- (void)log;
- (void)logEventBackwardNetworkBitmaps;
- (void)logEventBackwardNetworkBitmapsSysdiagnoseTrigger;
- (void)logEventBackwardUsage;
- (void)logEventBackwardUsageWithOutcome:(id)outcome;
- (void)logEventForwardLowInternet;
- (void)processesOfInterest:(id)interest;
- (void)setLastNetworkBitmapTimestampFor:(id)for;
@end

@implementation PLProcessNetworkAgent

+ (void)load
{
  v2.receiver = self;
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
  v42[0] = &unk_28714B588;
  v42[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F4C0];
  v41[2] = *MEMORY[0x277D3F4C8];
  v41[3] = v3;
  v42[2] = &unk_287146078;
  v42[3] = &unk_287146090;
  v41[4] = *MEMORY[0x277D3F4A0];
  v42[4] = MEMORY[0x277CBEC38];
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:5];
  v44[0] = v38;
  v43[1] = *MEMORY[0x277D3F540];
  v39[0] = @"EventType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v40[0] = commonTypeDict_IntegerFormat;
  v39[1] = @"InterfaceName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v40[1] = commonTypeDict_StringFormat;
  v39[2] = @"ProcessName";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat_withBundleID];
  v40[2] = commonTypeDict_StringFormat_withBundleID;
  v39[3] = @"ProcessPID";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v40[3] = commonTypeDict_IntegerFormat2;
  v39[4] = @"ProviderType";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v40[4] = commonTypeDict_IntegerFormat3;
  v39[5] = @"LocalAddress";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v40[5] = commonTypeDict_StringFormat2;
  v39[6] = @"LocalPort";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v40[6] = commonTypeDict_IntegerFormat4;
  v39[7] = @"RemoteAddress";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v40[7] = commonTypeDict_StringFormat3;
  v39[8] = @"RemotePort";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v40[8] = commonTypeDict_IntegerFormat5;
  v39[9] = @"TrafficClass";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]10 commonTypeDict_StringFormat];
  v40[9] = commonTypeDict_StringFormat4;
  v39[10] = @"rxWifiBytes";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v40[10] = commonTypeDict_IntegerFormat6;
  v39[11] = @"txWifiBytes";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v40[11] = commonTypeDict_IntegerFormat7;
  v39[12] = @"rxCellularBytes";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v40[12] = commonTypeDict_IntegerFormat8;
  v39[13] = @"txCellularBytes";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v40[13] = commonTypeDict_IntegerFormat9;
  v39[14] = @"isChannelArch";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]15 commonTypeDict_BoolFormat];
  v40[14] = commonTypeDict_BoolFormat;
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
  v32[0] = &unk_28714B598;
  v32[1] = MEMORY[0x277CBEC38];
  v31[2] = *MEMORY[0x277D3F4A0];
  v32[2] = MEMORY[0x277CBEC38];
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  v34[0] = v20;
  v33[1] = *MEMORY[0x277D3F540];
  v29[0] = @"BundleName";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v30[0] = commonTypeDict_StringFormat_withBundleID;
  v29[1] = @"CurrentMachAbsoluteTime";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v30[1] = commonTypeDict_IntegerFormat;
  v29[2] = @"MachAbsoluteStartTime";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v30[2] = commonTypeDict_IntegerFormat2;
  v29[3] = @"MachAbsoluteEndTime";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v30[3] = commonTypeDict_IntegerFormat3;
  v29[4] = *MEMORY[0x277D6B600];
  v27 = *MEMORY[0x277D3F5A8];
  v7 = v27;
  v28 = &unk_2871460A8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30[4] = v8;
  v29[5] = *MEMORY[0x277D6B608];
  v25 = v7;
  v26 = &unk_2871460A8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v30[5] = v9;
  v29[6] = *MEMORY[0x277D6B5D8];
  v23 = v7;
  v24 = &unk_2871460A8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v30[6] = v10;
  v29[7] = *MEMORY[0x277D6B5E8];
  v21 = v7;
  v22 = &unk_2871460A8;
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
  v13[0] = &unk_28714B5A8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"Mode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11 = commonTypeDict_IntegerFormat;
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
  v31[0] = &unk_28714B5B8;
  v31[1] = MEMORY[0x277CBEC38];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v33[0] = v27;
  v32[1] = *MEMORY[0x277D3F540];
  v28[0] = @"ProcessName";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v29[0] = commonTypeDict_StringFormat_withBundleID;
  v28[1] = @"BundleName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v29[1] = commonTypeDict_StringFormat_withBundleID2;
  v28[2] = @"ExtensionName";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat_withBundleID];
  v29[2] = commonTypeDict_StringFormat_withBundleID3;
  v28[3] = @"WifiIn";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v29[3] = commonTypeDict_IntegerFormat;
  v28[4] = @"WifiOut";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v29[4] = commonTypeDict_IntegerFormat2;
  v28[5] = @"CellIn";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v29[5] = commonTypeDict_IntegerFormat3;
  v28[6] = @"CellOut";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v29[6] = commonTypeDict_IntegerFormat4;
  v28[7] = @"BTCompanionIn";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v29[7] = commonTypeDict_IntegerFormat5;
  v28[8] = @"BTCompanionOut";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v29[8] = commonTypeDict_IntegerFormat6;
  v28[9] = @"SinceTime";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]10 commonTypeDict_DateFormat];
  v29[9] = commonTypeDict_DateFormat;
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
  v31[0] = &unk_28714B5B8;
  v31[1] = @"logEventBackwardUsage";
  v30[2] = *MEMORY[0x277D3F4A0];
  v31[2] = MEMORY[0x277CBEC38];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v33[0] = v27;
  v32[1] = *MEMORY[0x277D3F540];
  v28[0] = @"ProcessName";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v29[0] = commonTypeDict_StringFormat_withBundleID;
  v28[1] = @"BundleName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v29[1] = commonTypeDict_StringFormat_withBundleID2;
  v28[2] = @"ExtensionName";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat_withBundleID];
  v29[2] = commonTypeDict_StringFormat_withBundleID3;
  v28[3] = @"WifiIn";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v29[3] = commonTypeDict_IntegerFormat;
  v28[4] = @"WifiOut";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v29[4] = commonTypeDict_IntegerFormat2;
  v28[5] = @"CellIn";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v29[5] = commonTypeDict_IntegerFormat3;
  v28[6] = @"CellOut";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v29[6] = commonTypeDict_IntegerFormat4;
  v28[7] = @"BTCompanionIn";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v29[7] = commonTypeDict_IntegerFormat5;
  v28[8] = @"BTCompanionOut";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v29[8] = commonTypeDict_IntegerFormat6;
  v28[9] = @"timestampEnd";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]10 commonTypeDict_DateFormat];
  v29[9] = commonTypeDict_DateFormat;
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
  v18 = &unk_28714B5A8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"HighThroughputStartReason";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v16[0] = commonTypeDict_IntegerFormat;
  v15[1] = @"HighThroughputLinkRxTputAfterStart";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v16[1] = commonTypeDict_IntegerFormat2;
  v15[2] = @"HighThroughputLinkTxTputAfterStart";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v16[2] = commonTypeDict_IntegerFormat3;
  v15[3] = @"HighThroughputOriginators";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v16[3] = commonTypeDict_StringFormat;
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
  v37[0] = &unk_28714B5A8;
  v37[1] = MEMORY[0x277CBEC38];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v39[0] = v29;
  v38[1] = *MEMORY[0x277D3F540];
  v34[0] = @"HighThroughputStartReason";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v35[0] = commonTypeDict_IntegerFormat;
  v34[1] = @"HighThroughputLinkRxTputAfterStart";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v35[1] = commonTypeDict_IntegerFormat2;
  v34[2] = @"HighThroughputLinkTxTputAfterStart";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v35[2] = commonTypeDict_IntegerFormat3;
  v34[3] = @"HighThroughputOriginators";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v35[3] = commonTypeDict_StringFormat;
  v34[4] = @"HighThroughputDuration";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v35[4] = commonTypeDict_IntegerFormat4;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:5];
  v39[1] = v18;
  v38[2] = *MEMORY[0x277D3F500];
  v32[0] = @"key";
  v30[0] = @"Participant";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v31[0] = commonTypeDict_StringFormat2;
  v30[1] = @"Duration";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v31[1] = commonTypeDict_IntegerFormat5;
  v30[2] = @"RxBytes";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v31[2] = commonTypeDict_IntegerFormat6;
  v30[3] = @"TxBytes";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v31[3] = commonTypeDict_IntegerFormat7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
  v32[1] = @"value";
  v33[0] = v8;
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v33[1] = commonTypeDict_IntegerFormat8;
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_processesOfInterest_ name:@"PLProcessNetworkAgent.addProcessesOfInterest" object:0];
  }

  return v2;
}

- (void)initOperatorDependancies
{
  if ((([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "internalBuild")) && (objc_msgSend(MEMORY[0x277D3F208], "isMac") & 1) == 0)
  {
    v3 = *MEMORY[0x277CBECE8];
    workQueue = [(PLOperator *)self workQueue];
    v33[5] = MEMORY[0x277D85DD0];
    v33[6] = 3221225472;
    v33[7] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke;
    v33[8] = &unk_279A5D570;
    v33[9] = self;
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
        [PLProcessNetworkAgent initOperatorDependancies];
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
        [(PLProcessNetworkAgent *)self setUsageFeed:v10];
      }

      else
      {
        v11 = PLLogProcessNetwork();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [PLProcessNetworkAgent initOperatorDependancies];
        }
      }
    }

    else
    {
      v10 = PLLogProcessNetwork();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PLProcessNetworkAgent initOperatorDependancies];
      }
    }

    if ([(PLOperator *)self isDebugEnabled])
    {
      v12 = MEMORY[0x277D3F1E0];
      v13 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:5.0];
      workQueue2 = [(PLOperator *)self workQueue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_214;
      v33[3] = &unk_279A5D110;
      v33[4] = self;
      v15 = [v12 scheduledTimerWithMonotonicFireDate:v13 withInterval:workQueue2 withQueue:v33 withBlock:5.0];
      [(PLProcessNetworkAgent *)self setLogUsageTimer:v15];

      if ([(PLProcessNetworkAgent *)self hasSymptomsLogging])
      {
        v16 = objc_alloc(MEMORY[0x277D3F160]);
        workQueue3 = [(PLOperator *)self workQueue];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_2;
        v32[3] = &unk_279A5BE78;
        v32[4] = self;
        v18 = [v16 initWithWorkQueue:workQueue3 forNotification:@"com.apple.powerlogd.flushNetworkBitmaps" requireState:0 withBlock:v32];
        [(PLProcessNetworkAgent *)self setFlushNetworkBitmapsListener:v18];
      }

      v19 = 0;
    }

    else
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_3;
      v31[3] = &unk_279A5BE78;
      v31[4] = self;
      v19 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v31];
    }

    if ([(PLProcessNetworkAgent *)self hasSymptomsLogging])
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_4;
      v30[3] = &unk_279A5BE78;
      v30[4] = self;
      v20 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withMaxIntervalInSecs:v30 withBlock:900.0];
      [(PLProcessNetworkAgent *)self setBatteryLevelChangedListenerForNetworkBitmap:v20];

      v21 = objc_alloc(MEMORY[0x277D3F1F0]);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_5;
      v29[3] = &unk_279A5BE78;
      v29[4] = self;
      v22 = [v21 initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:v29];
      [(PLProcessNetworkAgent *)self setSysdiagnoseListener:v22];
    }

    [(PLProcessNetworkAgent *)self setBatteryLevelChanged:v19];
    [(PLProcessNetworkAgent *)self logEventForwardLowInternet];
    [(PLProcessNetworkAgent *)self logEventBackwardNetworkBitmaps];
    v23 = objc_alloc(MEMORY[0x277D3F270]);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_244;
    v28[3] = &unk_279A5BCB8;
    v28[4] = self;
    v24 = [v23 initWithOperator:self withRegistration:&unk_287148C98 withBlock:v28];
    [(PLProcessNetworkAgent *)self setHighBWStartListener:v24];

    if ([MEMORY[0x277D3F180] fullMode])
    {
      v25 = objc_alloc(MEMORY[0x277D3F270]);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_253;
      v27[3] = &unk_279A5BCB8;
      v27[4] = self;
      v26 = [v25 initWithOperator:self withRegistration:&unk_287148CC0 withBlock:v27];
      [(PLProcessNetworkAgent *)self setHighBWEndlistener:v26];
    }
  }
}

void __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLLogProcessNetwork();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_5_cold_1();
  }

  v5 = [v3 objectForKeyedSubscript:@"Source"];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 objectForKeyedSubscript:@"Source"];
    v8 = [v7 isEqual:&unk_2871460C0];

    if (v8)
    {
      [*(a1 + 32) setCurNetworkBitmapTimestampForSysdiagnoseTrigger:-1];
      [*(a1 + 32) logEventBackwardNetworkBitmapsSysdiagnoseTrigger];
    }
  }
}

void __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogProcessNetwork();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_244_cold_1();
  }

  [*(a1 + 32) handleHighBWStartCallback:v6];
}

void __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_253(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogProcessNetwork();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_253_cold_1();
  }

  [*(a1 + 32) handleHighBWEndCallback:v6];
}

- (void)processesOfInterest:(id)interest
{
  userInfo = [interest userInfo];
  if (userInfo)
  {
    v8 = userInfo;
    v5 = [userInfo objectForKeyedSubscript:@"entry"];
    if (v5)
    {
      processes = [(PLProcessNetworkAgent *)self processes];
      v7 = [v8 objectForKeyedSubscript:@"entry"];
      [processes unionSet:v7];
    }

    userInfo = v8;
  }
}

- (void)didAddNewSource:(__NStatSource *)source
{
  v5 = [[PLProcessNetworkSource alloc] initWithSource:source];
  NStatSourceSetCountsBlock();
  v4 = v5;
  NStatSourceSetDescriptionBlock();
  v3 = v4;
  NStatSourceSetRemovedBlock();
}

- (void)didSetCountsBlock:(id)block withCounts:(id)counts
{
  if (counts)
  {

    [block setCountsDictionary:counts];
  }

  else
  {
    v5 = PLLogProcessNetwork();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PLProcessNetworkAgent didSetCountsBlock:withCounts:];
    }
  }
}

- (void)didSetDescriptionBlock:(id)block withDescription:(id)description
{
  v43 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  descriptionCopy = description;
  if (descriptionCopy)
  {
    descriptionDictionary = [blockCopy descriptionDictionary];

    if (descriptionDictionary)
    {
      descriptionDictionary2 = [blockCopy descriptionDictionary];
      v10 = MEMORY[0x277D2CAC8];
      v11 = [descriptionDictionary2 objectForCFString:*MEMORY[0x277D2CAC8]];

      v12 = [descriptionCopy objectForCFString:*v10];
      descriptionDictionary3 = [blockCopy descriptionDictionary];
      v14 = MEMORY[0x277D2CB10];
      v15 = [descriptionDictionary3 objectForCFString:*MEMORY[0x277D2CB10]];

      v16 = [descriptionCopy objectForCFString:*v14];
      descriptionDictionary4 = [blockCopy descriptionDictionary];
      v18 = MEMORY[0x277D2CB08];
      v19 = [descriptionDictionary4 objectForCFString:*MEMORY[0x277D2CB08]];

      v20 = [descriptionCopy objectForCFString:*v18];
      if ([v15 isEqualToString:v16])
      {
        v21 = PLLogProcessNetwork();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          [blockCopy descriptionDictionary];
          v23 = v22 = v11;
          *buf = 138412546;
          v40 = v23;
          v41 = 2112;
          v42 = descriptionCopy;
          _os_log_impl(&dword_25EE51000, v21, OS_LOG_TYPE_DEFAULT, "WARNING: new description dictionary with same process name: %@ => %@", buf, 0x16u);

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
            _os_log_impl(&dword_25EE51000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 2u);
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

      [(PLProcessNetworkAgent *)self transferSource:blockCopy fromPID:v19 toPID:v20];
      [blockCopy setDescriptionDictionary:descriptionCopy];
      [(PLProcessNetworkAgent *)self logEventPointConnectionEvent:2 forSource:blockCopy];
      v12 = v37;
      v11 = v38;
      goto LABEL_22;
    }

    v25 = [descriptionCopy objectForCFString:*MEMORY[0x277D2CB08]];
    [(PLProcessNetworkAgent *)self addSource:blockCopy toPID:v25];

    [blockCopy setDescriptionDictionary:descriptionCopy];
    [(PLProcessNetworkAgent *)self logEventPointConnectionEvent:0 forSource:blockCopy];
  }

  else
  {
    v24 = PLLogProcessNetwork();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [PLProcessNetworkAgent didSetDescriptionBlock:withDescription:];
    }
  }

LABEL_23:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)didRemoveSource:(id)source
{
  sourceCopy = source;
  descriptionDictionary = [sourceCopy descriptionDictionary];

  if (descriptionDictionary)
  {
    [(PLProcessNetworkAgent *)self logEventPointConnectionEvent:1 forSource:sourceCopy];
  }
}

- (void)aggregateAndLogNetworkBitmaps:(id)bitmaps withStartTime:(unint64_t)time andEndTime:(unint64_t)endTime
{
  v88[4] = *MEMORY[0x277D85DE8];
  bitmapsCopy = bitmaps;
  context = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v62 = *MEMORY[0x277D6B5D8];
  v6 = *MEMORY[0x277D6B5D8];
  v63 = *MEMORY[0x277D6B600];
  v88[0] = *MEMORY[0x277D6B600];
  v88[1] = v6;
  v60 = *MEMORY[0x277D6B608];
  v7 = *MEMORY[0x277D6B608];
  v61 = *MEMORY[0x277D6B5E8];
  v88[2] = *MEMORY[0x277D6B5E8];
  v88[3] = v7;
  [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:4];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v82 = 0u;
  v58 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
  if (v58)
  {
    v55 = *v80;
    v8 = *MEMORY[0x277D6B610];
    do
    {
      v9 = 0;
      do
      {
        if (*v80 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v64 = v9;
        v66 = *(*(&v79 + 1) + 8 * v9);
        v10 = [bitmapsCopy objectForKeyedSubscript:?];
        v11 = v10;
        if (v10)
        {
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v12 = [v10 countByEnumeratingWithState:&v75 objects:v84 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v76;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v76 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v75 + 1) + 8 * i);
                v17 = [v11 objectForKeyedSubscript:v16];
                v18 = [dictionary objectForKeyedSubscript:v16];

                if (!v18)
                {
                  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
                  [dictionary setObject:dictionary2 forKeyedSubscript:v16];
                }

                v20 = [v17 objectForKeyedSubscript:v8];
                v21 = [(PLProcessNetworkAgent *)self compressNetworkBitmap:v20];

                if (v21)
                {
                  v22 = [dictionary objectForKeyedSubscript:v16];
                  [v22 setObject:v21 forKeyedSubscript:v66];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v75 objects:v84 count:16];
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
            v86 = v66;
            _os_log_debug_impl(&dword_25EE51000, v23, OS_LOG_TYPE_DEBUG, "%@ interface does not exist in outcome dict from symptoms.", buf, 0xCu);
          }
        }

        v9 = v64 + 1;
      }

      while (v64 + 1 != v58);
      v58 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
    }

    while (v58);
  }

  v24 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"NetworkBitmap"];
  v73 = 0;
  v74 = 0;
  [PLUtilities getCurrentMonotonicAndMachAbsTime:&v73 machAbsTime:&v74 machContTime:0];
  v25 = v73;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v26 = dictionary;
  v67 = [v26 countByEnumeratingWithState:&v69 objects:v83 count:16];
  if (v67)
  {
    v65 = *v70;
    v59 = v24;
    do
    {
      v27 = 0;
      do
      {
        if (*v70 != v65)
        {
          objc_enumerationMutation(v26);
        }

        v28 = *(*(&v69 + 1) + 8 * v27);
        v29 = PLLogProcessNetwork();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v86 = v28;
          _os_log_debug_impl(&dword_25EE51000, v29, OS_LOG_TYPE_DEBUG, "Process %@'s network bitmaps", buf, 0xCu);
        }

        v30 = [v26 objectForKeyedSubscript:v28];
        v31 = [v30 objectForKeyedSubscript:v63];
        if (v31)
        {
          goto LABEL_36;
        }

        v32 = v25;
        v31 = [v26 objectForKeyedSubscript:v28];
        v33 = [v31 objectForKeyedSubscript:v62];
        if (v33)
        {
          goto LABEL_35;
        }

        v34 = [v26 objectForKeyedSubscript:v28];
        v35 = [v34 objectForKeyedSubscript:v61];
        if (v35)
        {

          v24 = v59;
LABEL_35:

          v25 = v32;
LABEL_36:

LABEL_37:
          v36 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v24];
          [v36 setEntryDate:v25];
          v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v74];
          [v36 setObject:v37 forKeyedSubscript:@"CurrentMachAbsoluteTime"];

          [v36 setObject:v28 forKeyedSubscript:@"BundleName"];
          v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:time];
          [v36 setObject:v38 forKeyedSubscript:@"MachAbsoluteStartTime"];

          v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:endTime];
          [v36 setObject:v39 forKeyedSubscript:@"MachAbsoluteEndTime"];

          v40 = [v26 objectForKeyedSubscript:v28];
          v41 = [v40 objectForKeyedSubscript:v63];
          [v36 setObject:v41 forKeyedSubscript:v63];

          v42 = [v26 objectForKeyedSubscript:v28];
          v43 = [v42 objectForKeyedSubscript:v60];
          [v36 setObject:v43 forKeyedSubscript:v60];

          v44 = [v26 objectForKeyedSubscript:v28];
          v45 = [v44 objectForKeyedSubscript:v62];
          [v36 setObject:v45 forKeyedSubscript:v62];

          v46 = [v26 objectForKeyedSubscript:v28];
          v47 = [v46 objectForKeyedSubscript:v61];
          [v36 setObject:v47 forKeyedSubscript:v61];

          [(PLOperator *)self logEntry:v36];
          goto LABEL_38;
        }

        v56 = [v26 objectForKeyedSubscript:v28];
        v48 = [v56 objectForKeyedSubscript:v60];

        v24 = v59;
        v25 = v32;
        if (v48)
        {
          goto LABEL_37;
        }

        v36 = PLLogProcessNetwork();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v86 = v28;
          _os_log_debug_impl(&dword_25EE51000, v36, OS_LOG_TYPE_DEBUG, "Process %@'s network bitmaps on all interfaces are empty.", buf, 0xCu);
        }

LABEL_38:

        ++v27;
      }

      while (v67 != v27);
      v49 = [v26 countByEnumeratingWithState:&v69 objects:v83 count:16];
      v67 = v49;
    }

    while (v49);
  }

  objc_autoreleasePoolPop(context);
  v50 = *MEMORY[0x277D85DE8];
}

- (id)compressNetworkBitmap:(id)bitmap
{
  bitmapCopy = bitmap;
  v4 = bitmapCopy;
  if (!bitmapCopy || ![bitmapCopy length])
  {
    goto LABEL_15;
  }

  v5 = [v4 length];
  bytes = [v4 bytes];
  if ((v5 & 7) == 0)
  {
    v9 = v5 >> 3;
    if (v5 >= 8)
    {
      v11 = 0;
      while (!*(bytes + 8 * v9 - 8 + 8 * v11))
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
      bytes2 = [v4 bytes];
      do
      {
        v15 = *bytes2++;
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
    [PLProcessNetworkAgent compressNetworkBitmap:];
  }

  v8 = v4;
LABEL_16:

  return v8;
}

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
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
  {
    usageFeed = [(PLProcessNetworkAgent *)self usageFeed];
    processes = [(PLProcessNetworkAgent *)self processes];
    v7 = *MEMORY[0x277D6B770];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__PLProcessNetworkAgent_logEventBackwardUsage__block_invoke_285;
    v13[3] = &unk_279A5D5C0;
    v13[4] = self;
    [usageFeed usageToDateWithOptionsFor:processes nameKind:v7 options:v4 reply:v13];
  }

  else
  {
    usageFeed2 = [(PLProcessNetworkAgent *)self usageFeed];
    v10 = *MEMORY[0x277D6B770];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__PLProcessNetworkAgent_logEventBackwardUsage__block_invoke;
    v15[3] = &unk_279A5D5C0;
    v15[4] = self;
    v11 = [usageFeed2 usageToDateWithOptionsFor:0 nameKind:v10 options:v4 reply:v15];

    v12 = PLLogProcessNetwork();
    usageFeed = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25EE51000, usageFeed, OS_LOG_TYPE_DEFAULT, "successfully retrieved network usage data", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PLProcessNetworkAgent logEventBackwardUsage];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLProcessNetworkAgent_logEventBackwardUsage__block_invoke_285(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLLogProcessNetwork();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __46__PLProcessNetworkAgent_logEventBackwardUsage__block_invoke_285_cold_1();
  }

  v5 = *(a1 + 32);
  v6 = [v3 copy];
  [v5 logEventBackwardUsageWithOutcome:v6];
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

- (BOOL)outcomeHasDataUsage:(id)usage
{
  v21[6] = *MEMORY[0x277D85DE8];
  usageCopy = usage;
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

        v11 = [usageCopy valueForKey:{*(*(&v16 + 1) + 8 * i), v16}];
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

- (void)logEventBackwardUsageWithOutcome:(id)outcome
{
  v91 = *MEMORY[0x277D85DE8];
  outcomeCopy = outcome;
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v49 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"UsageDiff"];
  v61 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Usage"];
  if (outcomeCopy && [outcomeCopy count])
  {
    v3 = PLLogProcessNetwork();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [outcomeCopy count];
      _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_DEFAULT, "NetworkUsage outcome has payload size: %lu", &buf, 0xCu);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    array = [MEMORY[0x277CBEB18] array];
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = outcomeCopy;
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
          v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v61 withDate:monotonicDate];
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
          dictionary2 = [v10 dictionary];
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __58__PLProcessNetworkAgent_logEventBackwardUsageWithOutcome___block_invoke;
          v75[3] = &unk_279A5D5E8;
          p_buf = &buf;
          v22 = v10;
          v76 = v22;
          [dictionary2 enumerateKeysAndObjectsUsingBlock:v75];

          if (*(*(&buf + 1) + 24) > 0.0)
          {
            [dictionary setObject:v22 forKeyedSubscript:v11];
            lastEntryDate = [(PLProcessNetworkAgent *)self lastEntryDate];
            v24 = lastEntryDate == 0;

            if (!v24)
            {
              v25 = objc_alloc(MEMORY[0x277D3F190]);
              lastEntryDate2 = [(PLProcessNetworkAgent *)self lastEntryDate];
              v27 = [v25 initWithEntryKey:v49 withDate:lastEntryDate2];

              [v27 setObject:monotonicDate forKeyedSubscript:@"timestampEnd"];
              [v27 setObject:v11 forKeyedSubscript:@"ProcessName"];
              v28 = [v22 objectForKeyedSubscript:@"BundleName"];
              [v27 setObject:v28 forKeyedSubscript:@"BundleName"];

              v29 = [v22 objectForKeyedSubscript:@"ExtensionName"];
              [v27 setObject:v29 forKeyedSubscript:@"ExtensionName"];

              dictionary3 = [v22 dictionary];
              v72[0] = MEMORY[0x277D85DD0];
              v72[1] = 3221225472;
              v72[2] = __58__PLProcessNetworkAgent_logEventBackwardUsageWithOutcome___block_invoke_2;
              v72[3] = &unk_279A5C118;
              v31 = v27;
              v73 = v31;
              v74 = v22;
              [dictionary3 enumerateKeysAndObjectsUsingBlock:v72];

              lastProcessNameToNetworkUsageEntry = [(PLProcessNetworkAgent *)self lastProcessNameToNetworkUsageEntry];
              v33 = [lastProcessNameToNetworkUsageEntry objectForKeyedSubscript:v11];

              v68 = 0;
              v69 = &v68;
              v34 = *(*(&buf + 1) + 24);
              v70 = 0x2020000000;
              v71 = v34;
              if (v33)
              {
                v71 = 0.0;
                dictionary4 = [v33 dictionary];
                v64[0] = MEMORY[0x277D85DD0];
                v64[1] = 3221225472;
                v64[2] = __58__PLProcessNetworkAgent_logEventBackwardUsageWithOutcome___block_invoke_3;
                v64[3] = &unk_279A5D610;
                v65 = v31;
                v66 = v33;
                v67 = &v68;
                [dictionary4 enumerateKeysAndObjectsUsingBlock:v64];

                v34 = v69[3];
              }

              if (v34 > 0.0)
              {
                [array addObject:v31];
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

    if ([(PLOperator *)self isDebugEnabled]&& !+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
    {
      v85 = v61;
      allValues = [dictionary allValues];
      v86 = allValues;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      [(PLOperator *)self logEntries:v37 withGroupID:v61];
    }

    lastEntryDate3 = [(PLProcessNetworkAgent *)self lastEntryDate];

    if (lastEntryDate3)
    {
      if (![array count] && +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd"))
      {
        v39 = objc_alloc(MEMORY[0x277D3F190]);
        lastEntryDate4 = [(PLProcessNetworkAgent *)self lastEntryDate];
        v41 = [v39 initWithEntryKey:v49 withDate:lastEntryDate4];

        v84 = v41;
        v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
        [(PLOperator *)self postEntries:v42];
      }

      v82 = v49;
      v83 = array;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      [(PLOperator *)self logEntries:v43 withGroupID:v49];

      lastEntryDate5 = [(PLProcessNetworkAgent *)self lastEntryDate];
      [(PLProcessNetworkAgent *)self accountWithNetworkUsageDiffEntries:array withStartDate:lastEntryDate5 withEndDate:monotonicDate];
    }

    [(PLProcessNetworkAgent *)self setLastEntryDate:monotonicDate];
    [(PLProcessNetworkAgent *)self setLastProcessNameToNetworkUsageEntry:dictionary];
  }

  else
  {
    v45 = PLLogProcessNetwork();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [PLProcessNetworkAgent logEventBackwardUsageWithOutcome:];
    }

    dictionary = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v49 withDate:monotonicDate];
    [dictionary setIsErrorEntry:1];
    [dictionary setObject:@"NetworkUsage outcome has no payload" forKeyedSubscript:@"__PLEntryErrorString__"];
    [(PLOperator *)self logEntry:dictionary];
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

- (void)setLastNetworkBitmapTimestampFor:(id)for
{
  v25 = *MEMORY[0x277D85DE8];
  forCopy = for;
  if (+[PLUtilities deviceRebooted])
  {
    unsignedLongLongValue = 0;
  }

  else
  {
    v6 = PLLogProcessNetwork();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = forCopy;
      _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_DEFAULT, "[%@]: Detected that powerlog restarted", &v21, 0xCu);
    }

    v7 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"NetworkBitmap"];
    storage = [(PLOperator *)self storage];
    v9 = [storage lastEntryForKey:v7];

    if (v9 && (+[PLUtilities deviceBootTime](PLUtilities, "deviceBootTime"), v10 = objc_claimAutoreleasedReturnValue(), [v9 entryDate], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "compare:", v11), v11, v10, v12 == -1))
    {
      v14 = PLLogProcessNetwork();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v9 objectForKeyedSubscript:@"MachAbsoluteEndTime"];
        v21 = 138412546;
        v22 = forCopy;
        v23 = 2112;
        v24 = v15;
        _os_log_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEFAULT, "[%@]: Recovered last entry's mach time: %@", &v21, 0x16u);
      }

      v13 = [v9 objectForKeyedSubscript:@"MachAbsoluteEndTime"];
      unsignedLongLongValue = [v13 unsignedLongLongValue];
    }

    else
    {
      v13 = PLLogProcessNetwork();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = forCopy;
        _os_log_impl(&dword_25EE51000, v13, OS_LOG_TYPE_DEFAULT, "[%@]: Last entry's mach time not available", &v21, 0xCu);
      }

      unsignedLongLongValue = 0;
    }
  }

  v16 = +[PLUtilities getCurrMachAbsTimeInSecs];
  v17 = v16 - 3072;
  if (v16 < 0xC00)
  {
    v17 = 0;
  }

  if (v17 <= unsignedLongLongValue)
  {
    v17 = unsignedLongLongValue;
  }

  v18 = v17 & 0xFFFFFFFFFFFFFFF8;
  [(PLProcessNetworkAgent *)self setLastNetworkBitmapTimestamp:v17 & 0xFFFFFFFFFFFFFFF8];
  v19 = PLLogProcessNetwork();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = forCopy;
    v23 = 2048;
    v24 = v18;
    _os_log_impl(&dword_25EE51000, v19, OS_LOG_TYPE_DEFAULT, "[%@]: Network bitmaps initialized start time: %llu.", &v21, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)getNetWorkBitmapForEndTime:(unint64_t)time andSysdiagnoseTrigger:(BOOL)trigger
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (trigger)
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
  usageFeed = [(PLProcessNetworkAgent *)self usageFeed];
  lastNetworkBitmapTimestamp = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke;
  v15[3] = &unk_279A5D638;
  v16 = v7;
  selfCopy = self;
  triggerCopy = trigger;
  v11 = [usageFeed networkBitmapsToDateWithOptionsFor:0 startTime:lastNetworkBitmapTimestamp endTime:time options:v8 reply:v15];

  v12 = PLLogProcessNetwork();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_25EE51000, v13, OS_LOG_TYPE_DEFAULT, "[%@]: successfully obtained network bitmaps", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [PLProcessNetworkAgent getNetWorkBitmapForEndTime:andSysdiagnoseTrigger:];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLLogProcessNetwork();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke_cold_1(a1);
    }

LABEL_4:

    goto LABEL_5;
  }

  if (!v5)
  {
    v7 = PLLogProcessNetwork();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke_cold_3(a1, v7);
    }

    goto LABEL_4;
  }

  v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277D6B5F8]];
  v10 = [v9 unsignedLongLongValue];

  v11 = [v5 objectForKeyedSubscript:*MEMORY[0x277D6B5E0]];
  v12 = [v11 unsignedLongLongValue];

  v13 = PLLogProcessNetwork();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v21 = 138412802;
    v22 = v14;
    v23 = 2048;
    v24 = v12;
    v25 = 2048;
    v26 = v10;
    _os_log_impl(&dword_25EE51000, v13, OS_LOG_TYPE_DEFAULT, "[%@]: Network bitmaps endtime from symptoms: %llu, start time: %llu", &v21, 0x20u);
  }

  if (v12 <= v10)
  {
    v17 = PLLogProcessNetwork();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke_cold_2();
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
          v21 = 138412290;
          v22 = v16;
          _os_log_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEFAULT, "[%@]: trying to retrieve more network bitmaps", &v21, 0xCu);
        }

        [*(a1 + 40) logEventBackwardNetworkBitmapsSysdiagnoseTrigger];
      }
    }

    else
    {
      v18 = +[PLUtilities getCurrMachAbsTimeInSecs];
      if (v18 > v12 && v18 - v12 >= 0x800)
      {
        v19 = PLLogProcessNetwork();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 32);
          v21 = 138412290;
          v22 = v20;
          _os_log_impl(&dword_25EE51000, v19, OS_LOG_TYPE_DEFAULT, "[%@]: trying to retrieve more network bitmaps", &v21, 0xCu);
        }

        [*(a1 + 40) logEventBackwardNetworkBitmaps];
      }
    }
  }

LABEL_5:

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardNetworkBitmapsSysdiagnoseTrigger
{
  v24 = *MEMORY[0x277D85DE8];
  lastNetworkBitmapTimestamp = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
  v4 = PLLogProcessNetwork();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (lastNetworkBitmapTimestamp == -1)
  {
    if (v5)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: initialize last network bitmap log timestamp", &v20, 2u);
    }

    [(PLProcessNetworkAgent *)self setLastNetworkBitmapTimestampFor:@"Sysdiagnose Bitmap"];
    [(PLProcessNetworkAgent *)self logEventBackwardNetworkBitmapsSysdiagnoseTrigger];
  }

  else
  {
    if (v5)
    {
      v20 = 134217984;
      lastNetworkBitmapTimestamp2 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
      _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Network bitmaps start time: %llu.", &v20, 0xCu);
    }

    v6 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp]+ 1024;
    if ([(PLProcessNetworkAgent *)self curNetworkBitmapTimestampForSysdiagnoseTrigger]== -1)
    {
      [(PLProcessNetworkAgent *)self setCurNetworkBitmapTimestampForSysdiagnoseTrigger:+[PLUtilities getCurrMachAbsTimeInSecs]];
      v7 = PLLogProcessNetwork();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        curNetworkBitmapTimestampForSysdiagnoseTrigger = [(PLProcessNetworkAgent *)self curNetworkBitmapTimestampForSysdiagnoseTrigger];
        v20 = 134217984;
        lastNetworkBitmapTimestamp2 = curNetworkBitmapTimestampForSysdiagnoseTrigger;
        _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Setting network bitmaps current time for sysdiagnose trigger: %llu.", &v20, 0xCu);
      }
    }

    curNetworkBitmapTimestampForSysdiagnoseTrigger2 = [(PLProcessNetworkAgent *)self curNetworkBitmapTimestampForSysdiagnoseTrigger];
    v10 = PLLogProcessNetwork();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218240;
      lastNetworkBitmapTimestamp2 = v6;
      v22 = 2048;
      v23 = curNetworkBitmapTimestampForSysdiagnoseTrigger2;
      _os_log_impl(&dword_25EE51000, v10, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Network bitmaps end time: %llu, curr time: %llu.", &v20, 0x16u);
    }

    if (curNetworkBitmapTimestampForSysdiagnoseTrigger2 > v6)
    {
      v11 = PLLogProcessNetwork();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        lastNetworkBitmapTimestamp3 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
        v20 = 134218240;
        lastNetworkBitmapTimestamp2 = lastNetworkBitmapTimestamp3;
        v22 = 2048;
        v23 = v6;
        _os_log_impl(&dword_25EE51000, v11, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Requesting network bitmaps from symptoms with start time: %llu, end time: %llu.", &v20, 0x16u);
      }

      selfCopy2 = self;
      v14 = v6;
LABEL_21:
      [(PLProcessNetworkAgent *)selfCopy2 getNetWorkBitmapForEndTime:v14 andSysdiagnoseTrigger:1];
      goto LABEL_25;
    }

    v15 = curNetworkBitmapTimestampForSysdiagnoseTrigger2 - [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
    v16 = PLLogProcessNetwork();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15 >= 8)
    {
      if (v17)
      {
        lastNetworkBitmapTimestamp4 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
        v20 = 134218240;
        lastNetworkBitmapTimestamp2 = lastNetworkBitmapTimestamp4;
        v22 = 2048;
        v23 = curNetworkBitmapTimestampForSysdiagnoseTrigger2;
        _os_log_impl(&dword_25EE51000, v16, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Requesting network bitmaps from symptoms with start time: %llu, curr time: %llu.", &v20, 0x16u);
      }

      selfCopy2 = self;
      v14 = curNetworkBitmapTimestampForSysdiagnoseTrigger2;
      goto LABEL_21;
    }

    if (v17)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_25EE51000, v16, OS_LOG_TYPE_DEFAULT, "[Sysdiagnose Bitmap]: Requested network bitmap is too recent.", &v20, 2u);
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
      _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_DEFAULT, "[Bitmap]: initialize last network bitmap log timestamp", &v9, 2u);
    }

    [(PLProcessNetworkAgent *)self setLastNetworkBitmapTimestampFor:@"Bitmap"];
    [(PLProcessNetworkAgent *)self logEventBackwardNetworkBitmaps];
  }

  else
  {
    v3 = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp]+ 1024;
    v4 = +[PLUtilities getCurrMachAbsTimeInSecs];
    v5 = PLLogProcessNetwork();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218496;
      lastNetworkBitmapTimestamp = [(PLProcessNetworkAgent *)self lastNetworkBitmapTimestamp];
      v11 = 2048;
      v12 = v3;
      v13 = 2048;
      v14 = v4;
      _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_DEFAULT, "[Bitmap]: Requesting network bitmaps from symptoms with start time: %llu, end time: %llu, curr time: %llu.", &v9, 0x20u);
    }

    if (v4 <= v3 || v4 - v3 <= 0x3FF)
    {
      v7 = PLLogProcessNetwork();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [PLProcessNetworkAgent logEventBackwardNetworkBitmaps];
      }
    }

    else
    {
      [(PLProcessNetworkAgent *)self getNetWorkBitmapForEndTime:v3 andSysdiagnoseTrigger:0];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)accountWithNetworkUsageDiffEntries:(id)entries withStartDate:(id)date withEndDate:(id)endDate
{
  v90 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  dateCopy = date;
  endDateCopy = endDate;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v10 = PLLogProcessNetwork();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v85 = entriesCopy;
      v86 = 2112;
      v87 = dateCopy;
      v88 = 2112;
      v89 = endDateCopy;
      _os_log_debug_impl(&dword_25EE51000, v10, OS_LOG_TYPE_DEBUG, "networkUsageDiffEntries=%@, startDate=%@, endDate=%@", buf, 0x20u);
    }

    v63 = endDateCopy;
    v64 = dateCopy;

    v11 = [&unk_287148CE8 mutableCopy];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v12 = entriesCopy;
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
          v75[3] = &unk_279A5C118;
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
      [PLProcessNetworkAgent accountWithNetworkUsageDiffEntries:v30 withStartDate:v23 withEndDate:v29];
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    if (v23 + v29 > 0.0)
    {
      v62 = entriesCopy;
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
            [dictionary setObject:v51 forKeyedSubscript:v40];

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
            [dictionary2 setObject:v57 forKeyedSubscript:v40];
          }

          v69 = [obj countByEnumeratingWithState:&v71 objects:v82 count:16];
        }

        while (v69);
      }

      entriesCopy = v62;
    }

    v58 = PLLogProcessNetwork();
    endDateCopy = v63;
    dateCopy = v64;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      [PLProcessNetworkAgent accountWithNetworkUsageDiffEntries:withStartDate:withEndDate:];
    }

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0] createDistributionEventIntervalWithDistributionID:37 withChildNodeNameToWeight:dictionary withStartDate:v64 withEndDate:v63];

    mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0]2 createDistributionEventIntervalWithDistributionID:38 withChildNodeNameToWeight:dictionary2 withStartDate:v64 withEndDate:v63];
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

- (void)handleHighBWStartCallback:(id)callback
{
  callbackCopy = callback;
  v5 = PLLogProcessNetwork();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLProcessNetworkAgent handleHighBWStartCallback:];
  }

  v6 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"HighCellularBWTransactions"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
  v8 = [callbackCopy objectForKeyedSubscript:@"HighThroughputStartReason"];
  [v7 setObject:v8 forKeyedSubscript:@"HighThroughputStartReason"];

  v9 = [callbackCopy objectForKeyedSubscript:@"HighThroughputLinkRxTputAfterStart"];
  [v7 setObject:v9 forKeyedSubscript:@"HighThroughputLinkRxTputAfterStart"];

  v10 = [callbackCopy objectForKeyedSubscript:@"HighThroughputLinkTxTputAfterStart"];
  [v7 setObject:v10 forKeyedSubscript:@"HighThroughputLinkTxTputAfterStart"];

  v11 = [callbackCopy objectForKeyedSubscript:@"HighThroughputOriginators"];
  v12 = [v11 componentsJoinedByString:{@", "}];
  [v7 setObject:v12 forKeyedSubscript:@"HighThroughputOriginators"];

  [(PLOperator *)self logEntry:v7];
}

- (void)handleHighBWEndCallback:(id)callback
{
  v35 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v4 = PLLogProcessNetwork();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLProcessNetworkAgent handleHighBWEndCallback:];
  }

  v23 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"HighCellularBWTransactionsDetail"];
  v5 = [objc_alloc(MEMORY[0x277D3F1E8]) initWithEntryKey:v23];
  v6 = [callbackCopy objectForKeyedSubscript:@"HighThroughputStartReason"];
  [v5 setObject:v6 forKeyedSubscript:@"HighThroughputStartReason"];

  v7 = [callbackCopy objectForKeyedSubscript:@"HighThroughputLinkRxTputAfterStart"];
  [v5 setObject:v7 forKeyedSubscript:@"HighThroughputLinkRxTputAfterStart"];

  v8 = [callbackCopy objectForKeyedSubscript:@"HighThroughputLinkTxTputAfterStart"];
  [v5 setObject:v8 forKeyedSubscript:@"HighThroughputLinkTxTputAfterStart"];

  v9 = [callbackCopy objectForKeyedSubscript:@"HighThroughputOriginators"];
  v10 = [v9 componentsJoinedByString:{@", "}];
  [v5 setObject:v10 forKeyedSubscript:@"HighThroughputOriginators"];

  v11 = [callbackCopy objectForKeyedSubscript:@"HighThroughputDuration"];
  v27 = v5;
  [v5 setObject:v11 forKeyedSubscript:@"HighThroughputDuration"];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = callbackCopy;
  obj = [callbackCopy objectForKeyedSubscript:@"HighThroughputParticipants"];
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

        [v27 setObject:&unk_287146138 forKeyedSubscript:v21];
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

void __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_5_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Notification for sysdiagnose trigger for network bitmaps: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_244_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "NetworkAdvisory-HighThroughput-Start with payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__PLProcessNetworkAgent_initOperatorDependancies__block_invoke_253_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "NetworkAdvisory-HighThroughput-End with payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointConnectionEvent:forSource:.cold.1()
{
  OUTLINED_FUNCTION_6_5();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 className];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointConnectionEvent:forSource:.cold.2()
{
  OUTLINED_FUNCTION_6_5();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 className];
  v3 = [v0 descriptionDictionary];
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)timestampNetConnectEntry:(void *)a1 withEventType:withSource:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 descriptionDictionary];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)timestampNetConnectEntry:(void *)a1 withEventType:withSource:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 descriptionDictionary];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __46__PLProcessNetworkAgent_logEventBackwardUsage__block_invoke_285_cold_1()
{
  OUTLINED_FUNCTION_6_5();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 32) processes];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getNetWorkBitmapForEndTime:andSysdiagnoseTrigger:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "[%@]: failed to retrieve network bitmaps", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = 138412546;
  v6 = v1;
  OUTLINED_FUNCTION_5_2();
  v7 = v2;
  _os_log_error_impl(&dword_25EE51000, v3, OS_LOG_TYPE_ERROR, "[%@]: error in network bitmap callback: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6_5();
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 32);
  v4 = [*(v2 + 40) lastNetworkBitmapTimestamp];
  v6 = 138412802;
  v7 = v3;
  v8 = 2048;
  v9 = v1;
  v10 = 2048;
  v11 = v4;
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "[%@]: End time %llu smaller than start time %llu.", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __74__PLProcessNetworkAgent_getNetWorkBitmapForEndTime_andSysdiagnoseTrigger___block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "[%@]: network bitmap dict is empty", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)accountWithNetworkUsageDiffEntries:(os_log_t)log withStartDate:(double)a2 withEndDate:(double)a3 .cold.1(os_log_t log, double a2, double a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = a3;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "totalWiFiUsage=%f, totalBBUsage=%f", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)accountWithNetworkUsageDiffEntries:withStartDate:withEndDate:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v0;
  _os_log_debug_impl(&dword_25EE51000, v1, OS_LOG_TYPE_DEBUG, "identifierToWeightWiFi=%@, identifierToWeightBB=%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)handleHighBWStartCallback:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "High BW payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleHighBWEndCallback:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "High BW payload details: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end