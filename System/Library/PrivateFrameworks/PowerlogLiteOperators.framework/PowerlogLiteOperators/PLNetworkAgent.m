@interface PLNetworkAgent
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionNetworkIsExpensive;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventPointDefinitionUnattributedWake;
+ (id)entryEventPointDefinitionWake;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLNetworkAgent)init;
- (id)NWPathMonitorWithInterface:(int)a3;
- (void)handleNWPathUpdate:(id)a3;
- (void)initKernelEvent;
- (void)initOperatorDependancies;
- (void)logEventBackwardCumulativeNetworkUsage;
- (void)logEventPointWake;
- (void)logMobileAssetDownload:(id)a3 withCategory:(id)a4;
@end

@implementation PLNetworkAgent

- (void)logEventBackwardCumulativeNetworkUsage
{
  v13 = 0;
  if (!getifaddrs(&v13))
  {
    v3 = [(PLOperator *)PLNetworkAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CumulativeNetworkUsage"];
    v4 = v13;
    if (v13)
    {
      do
      {
        ifa_addr = v4->ifa_addr;
        if (ifa_addr)
        {
          ifa_data = v4->ifa_data;
          if (ifa_data)
          {
            if ((v4->ifa_flags & 8) == 0 && ifa_addr->sa_family == 18)
            {
              ifa_name = v4->ifa_name;
              if (!strcmp(ifa_name, "pdp_ip0") || !strcmp(ifa_name, "en0") || !strcmp(ifa_name, "awdl0"))
              {
                v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
                v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4->ifa_name];
                [v8 setObject:v9 forKeyedSubscript:@"Interface"];

                v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:ifa_data[11]];
                [v8 setObject:v10 forKeyedSubscript:@"UpBytes"];

                v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:ifa_data[10]];
                [v8 setObject:v11 forKeyedSubscript:@"DownBytes"];

                [(PLOperator *)self logEntry:v8];
              }
            }
          }
        }

        v4 = v4->ifa_next;
      }

      while (v4);
      v12 = v13;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x21CEDD880](v12);
  }
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLNetworkAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"IsExpensive";
  v2 = +[PLNetworkAgent entryEventForwardDefinitionNetworkIsExpensive];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventForwardDefinitionNetworkIsExpensive
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1C838;
  v15[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"NetworkType";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"IsExpensive";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_BoolFormat];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventBackwardDefinitions
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = @"CumulativeNetworkUsage";
  v19[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v17[0] = *MEMORY[0x277D3F568];
  v17[1] = v2;
  v18[0] = &unk_282C1C838;
  v18[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[0] = v3;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"Interface";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v16[0] = v5;
  v15[1] = @"UpBytes";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v16[1] = v7;
  v15[2] = @"DownBytes";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v16[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v22[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"Wake";
  v3 = [a1 entryEventPointDefinitionWake];
  v8[1] = @"UnattributedWake";
  v9[0] = v3;
  v4 = [a1 entryEventPointDefinitionUnattributedWake];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventPointDefinitionWake
{
  v45[2] = *MEMORY[0x277D85DE8];
  v44[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v42[0] = *MEMORY[0x277D3F568];
  v42[1] = v2;
  v43[0] = &unk_282C1C848;
  v43[1] = MEMORY[0x277CBEC38];
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v45[0] = v39;
  v44[1] = *MEMORY[0x277D3F540];
  v40[0] = @"wakeUUID";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_StringFormat];
  v41[0] = v37;
  v40[1] = @"Interface";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_StringFormat];
  v41[1] = v35;
  v40[2] = @"PID";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_IntegerFormat];
  v41[2] = v33;
  v40[3] = @"ProcessName";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_StringFormat_withProcessName];
  v41[3] = v31;
  v40[4] = @"EffectivePID";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_IntegerFormat];
  v41[4] = v29;
  v40[5] = @"EffectiveProcessName";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_StringFormat_withProcessName];
  v41[5] = v27;
  v40[6] = @"packetDataLength";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v41[6] = v25;
  v40[7] = @"controlFlagType";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v41[7] = v23;
  v40[8] = @"InterfaceType";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v41[8] = v21;
  v40[9] = @"CompanionLink";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_BoolFormat];
  v41[9] = v19;
  v40[10] = @"sourcePort";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v41[10] = v17;
  v40[11] = @"sourceAddress";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat];
  v41[11] = v15;
  v40[12] = @"destinationPort";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v41[12] = v4;
  v40[13] = @"destinationAddress";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v41[13] = v6;
  v40[14] = @"idleConnectionWake";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_BoolFormat];
  v41[14] = v8;
  v40[15] = @"lpwProcessedWake";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_BoolFormat];
  v41[15] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:16];
  v45[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionUnattributedWake
{
  v32[2] = *MEMORY[0x277D85DE8];
  v31[0] = *MEMORY[0x277D3F4E8];
  v29 = *MEMORY[0x277D3F568];
  v30 = &unk_282C1C858;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v32[0] = v26;
  v31[1] = *MEMORY[0x277D3F540];
  v27[0] = @"wakeUUID";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_StringFormat];
  v28[0] = v24;
  v27[1] = @"Interface";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_StringFormat];
  v28[1] = v22;
  v27[2] = @"sourcePort";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_IntegerFormat];
  v28[2] = v20;
  v27[3] = @"sourceAddress";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_StringFormat];
  v28[3] = v18;
  v27[4] = @"destinationPort";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v28[4] = v16;
  v27[5] = @"destinationAddress";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_StringFormat];
  v28[5] = v14;
  v27[6] = @"packetDataLength";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v28[6] = v3;
  v27[7] = @"controlFlagType";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v28[7] = v5;
  v27[8] = @"InterfaceType";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v28[8] = v7;
  v27[9] = @"CompanionLink";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_BoolFormat];
  v28[9] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:10];
  v32[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)initKernelEvent
{
  v25 = *MEMORY[0x277D85DE8];
  self->_wakeSocket = -1;
  v3 = socket(32, 3, 1);
  self->_wakeSocket = v3;
  if (v3 == -1)
  {
    v7 = PLLogNetwork();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v15 = "socket(PF_SYSTEM, SOCK_RAW, SYSPROTO_EVENT) error";
      v16 = buf;
      goto LABEL_18;
    }
  }

  else
  {
    v22 = 1;
    if (ioctl(v3, 0x8004667EuLL, &v22))
    {
      v4 = PLLogNetwork();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v5 = "ioctl(FIONBIO) error";
        v6 = buf;
LABEL_20:
        _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, v5, v6, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    *buf = 0x100000001;
    v21 = 14;
    v8 = ioctl(self->_wakeSocket, 0x800C6502uLL, buf);
    v4 = PLLogNetwork();
    v9 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v9)
      {
        *v23 = 0;
        v5 = "ioctl(SIOCSKEVFILT) error";
        v6 = v23;
        goto LABEL_20;
      }

LABEL_9:

      close(self->_wakeSocket);
      goto LABEL_10;
    }

    if (v9)
    {
      wakeSocket = self->_wakeSocket;
      *v23 = 67109120;
      v24 = wakeSocket;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "power wake socket number %d", v23, 8u);
    }

    v11 = self->_wakeSocket;
    v12 = [(PLOperator *)self workQueue];
    v13 = dispatch_source_create(MEMORY[0x277D85D28], v11, 0, v12);
    v14 = initKernelEvent_wakeSrc;
    initKernelEvent_wakeSrc = v13;

    if (initKernelEvent_wakeSrc)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __33__PLNetworkAgent_initKernelEvent__block_invoke;
      handler[3] = &unk_2782591D0;
      handler[4] = self;
      dispatch_source_set_cancel_handler(initKernelEvent_wakeSrc, handler);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __33__PLNetworkAgent_initKernelEvent__block_invoke_85;
      v18[3] = &unk_2782591D0;
      v18[4] = self;
      dispatch_source_set_event_handler(initKernelEvent_wakeSrc, v18);
      dispatch_resume(initKernelEvent_wakeSrc);
      goto LABEL_10;
    }

    v7 = PLLogNetwork();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v23 = 0;
      v15 = "wakeSrc is invalid";
      v16 = v23;
LABEL_18:
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, v15, v16, 2u);
    }
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __33__PLNetworkAgent_initKernelEvent__block_invoke(uint64_t a1)
{
  v2 = PLLogNetwork();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "wake cancel event!!!!", v4, 2u);
  }

  return close([*(a1 + 32) wakeSocket]);
}

- (PLNetworkAgent)init
{
  v3.receiver = self;
  v3.super_class = PLNetworkAgent;
  return [(PLAgent *)&v3 init];
}

- (void)initOperatorDependancies
{
  v29[1] = *MEMORY[0x277D85DE8];
  if ([(PLOperator *)self isDebugEnabled])
  {
    v3 = objc_alloc(MEMORY[0x277D3F1A8]);
    v26[0] = &unk_282C125D0;
    v26[1] = &unk_282C125E8;
    v27[0] = &unk_282C1C838;
    v27[1] = &unk_282C12600;
    v28 = @"Level";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v29[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __42__PLNetworkAgent_initOperatorDependancies__block_invoke;
    v25[3] = &unk_2782597E8;
    v25[4] = self;
    v6 = [v3 initWithOperator:self forEntryKey:@"PLBatteryAgent_EventBackward_Battery" withFilter:v5 withBlock:v25];
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __42__PLNetworkAgent_initOperatorDependancies__block_invoke_2;
    v24[3] = &unk_2782597E8;
    v24[4] = self;
    v6 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v24];
  }

  [(PLNetworkAgent *)self setBatteryLevelChanged:v6];
  v7 = [MEMORY[0x277D3F218] sharedSemaphoreForKey:*MEMORY[0x277D3F468]];
  [(PLNetworkAgent *)self setCanSleepSemaphore:v7];

  v8 = [(PLNetworkAgent *)self canSleepSemaphore];
  [v8 signalInterestByObject:self];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __42__PLNetworkAgent_initOperatorDependancies__block_invoke_3;
  v23[3] = &unk_2782597E8;
  v23[4] = self;
  v9 = [MEMORY[0x277D3F1A8] canSleepEntryNotificationWithOperator:self withBlock:v23];
  [(PLNetworkAgent *)self setCanSleep:v9];

  v10 = dispatch_queue_create("com.apple.powerlog.networkPathMonitor", 0);
  [(PLNetworkAgent *)self setNwPathMonitorQueue:v10];

  v11 = [(PLNetworkAgent *)self NWPathMonitorWithInterface:2];
  [(PLNetworkAgent *)self setNwPathMonitorCellular:v11];

  v12 = [(PLNetworkAgent *)self NWPathMonitorWithInterface:1];
  [(PLNetworkAgent *)self setNwPathMonitorWiFi:v12];

  v13 = [(PLNetworkAgent *)self NWPathMonitorWithInterface:3];
  [(PLNetworkAgent *)self setNwPathMonitorWired:v13];

  v14 = [(PLNetworkAgent *)self NWPathMonitorWithInterface:4];
  [(PLNetworkAgent *)self setNwPathMonitorLoopback:v14];

  v15 = [(PLNetworkAgent *)self NWPathMonitorWithInterface:0];
  [(PLNetworkAgent *)self setNwPathMonitorOther:v15];

  [(PLNetworkAgent *)self initKernelEvent];
  v16 = objc_alloc(MEMORY[0x277D3F270]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __42__PLNetworkAgent_initOperatorDependancies__block_invoke_127;
  v22[3] = &unk_27825A1D8;
  v22[4] = self;
  v17 = [v16 initWithOperator:self withRegistration:&unk_282C18F58 withBlock:v22];
  [(PLNetworkAgent *)self setDownloadAutoAssetDownloadsListener:v17];
  v18 = objc_alloc(MEMORY[0x277D3F270]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __42__PLNetworkAgent_initOperatorDependancies__block_invoke_139;
  v21[3] = &unk_27825A1D8;
  v21[4] = self;
  v19 = [v18 initWithOperator:self withRegistration:&unk_282C18F80 withBlock:v21];
  [(PLNetworkAgent *)self setDownloadV2AssetDownloadsListener:v19];

  v20 = *MEMORY[0x277D85DE8];
}

void __42__PLNetworkAgent_initOperatorDependancies__block_invoke_3(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = PLLogNetwork();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Sleep triggered", buf, 2u);
  }

  v3 = +[PLProcessPortMap sharedInstance];
  [v3 clearPortMap];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __42__PLNetworkAgent_initOperatorDependancies__block_invoke_106;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v4;
    if (qword_2811F61C0 != -1)
    {
      dispatch_once(&qword_2811F61C0, &block);
    }

    if (_MergedGlobals_1_46 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ signaling done", *(a1 + 32), block, v14, v15, v16, v17];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Networking/PLNetworkAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLNetworkAgent initOperatorDependancies]_block_invoke_2"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:331];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [*(a1 + 32) canSleepSemaphore];
  [v11 signalDoneByObject:*(a1 + 32)];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLNetworkAgent_initOperatorDependancies__block_invoke_106(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_46 = result;
  return result;
}

void __42__PLNetworkAgent_initOperatorDependancies__block_invoke_127(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "DownloadMetrics AutoAssetDownloads payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logMobileAssetDownload:v6 withCategory:@"AutoAssetDownloads"];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLNetworkAgent_initOperatorDependancies__block_invoke_139(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "DownloadMetrics v2AssetDownloads payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logMobileAssetDownload:v6 withCategory:@"v2AssetDownloads"];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)NWPathMonitorWithInterface:(int)a3
{
  v4 = nw_path_monitor_create_with_type(a3);
  update_handler[0] = MEMORY[0x277D85DD0];
  update_handler[1] = 3221225472;
  update_handler[2] = __45__PLNetworkAgent_NWPathMonitorWithInterface___block_invoke;
  update_handler[3] = &unk_278260FE0;
  update_handler[4] = self;
  nw_path_monitor_set_update_handler(v4, update_handler);
  v5 = [(PLNetworkAgent *)self nwPathMonitorQueue];
  nw_path_monitor_set_queue(v4, v5);

  nw_path_monitor_start(v4);

  return v4;
}

- (void)logEventPointWake
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3F1F8] handlePowerWakeEvent:self->_wakeSocket];
  v4 = PLLogNetwork();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Power wake packet dictionary %@", &v11, 0xCu);
  }

  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"AttributedWake"];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = @"Wake";
    }

    else
    {
      v7 = @"UnattributedWake";
    }

    v8 = [(PLOperator *)PLNetworkAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:v7];
    v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v3];
    [(PLOperator *)self logEntry:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logMobileAssetDownload:(id)a3 withCategory:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 mutableCopy];
  v9 = [v6 objectForKeyedSubscript:@"timestampStart"];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 convertFromSystemToMonotonic];
  }

  else
  {
    v11 = [MEMORY[0x277CBEAA8] monotonicDate];
  }

  [v8 removeObjectForKey:@"timestampStart"];
  v12 = [v6 objectForKeyedSubscript:@"timestampEnd"];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 convertFromSystemToMonotonic];
  }

  else
  {
    v14 = [MEMORY[0x277CBEAA8] monotonicDate];
  }

  [v8 setObject:v14 forKeyedSubscript:@"timestampEnd"];
  if (!v11 || !v14)
  {
    v19 = PLLogNetwork();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v7;
      v20 = "DownloadMetrics %@ timestamps are invalid, returning";
      v21 = v19;
      v22 = 12;
LABEL_16:
      _os_log_error_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
    }

LABEL_30:

    goto LABEL_31;
  }

  if ([v14 compare:v11] == -1)
  {
    v19 = PLLogNetwork();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v36 = v7;
      v37 = 2112;
      *v38 = v14;
      *&v38[8] = 2112;
      v39 = v11;
      v20 = "DownloadMetrics %@ timestampEnd %@ is earlier than startTime %@, malformed timestamps";
      v21 = v19;
      v22 = 32;
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  v15 = [v6 objectForKeyedSubscript:@"clientName"];
  if (v15)
  {
    v16 = MEMORY[0x277D3F258];
    v17 = [v6 objectForKeyedSubscript:@"clientName"];
    v18 = [v16 removeFirstPartyBundleIDPrefix:v17];
    [v8 setObject:v18 forKeyedSubscript:@"clientName"];
  }

  else
  {
    [v8 setObject:&stru_282B650A0 forKeyedSubscript:@"clientName"];
  }

  v23 = [v6 objectForKeyedSubscript:@"assetType"];
  if (v23)
  {
    v24 = MEMORY[0x277D3F258];
    v25 = [v6 objectForKeyedSubscript:@"assetType"];
    v26 = [v24 removeFirstPartyBundleIDPrefix:v25];
    [v8 setObject:v26 forKeyedSubscript:@"assetType"];
  }

  else
  {
    [v8 setObject:&stru_282B650A0 forKeyedSubscript:@"assetType"];
  }

  v27 = [v8 objectForKeyedSubscript:@"bytesDownloaded"];

  if (!v27)
  {
    goto LABEL_31;
  }

  v28 = [v6 objectForKeyedSubscript:@"bytesDownloaded"];
  v29 = [v28 intValue];

  v30 = PLLogNetwork();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v34 = [v6 objectForKeyedSubscript:@"bytesDownloaded"];
    *buf = 138412802;
    v36 = v7;
    v37 = 1024;
    *v38 = [v34 intValue];
    *&v38[4] = 1024;
    *&v38[6] = v29 / 0x100000;
    _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "DownloadMetrics %@ rounded bytesDownloaded from %d to %d", buf, 0x18u);
  }

  if (v29 < 0x100000)
  {
    v19 = PLLogNetwork();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v36 = v7;
      v37 = 2112;
      *v38 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "DownloadMetrics %@ will not log this payload as bytesDownloaded is 0 or less : %@", buf, 0x16u);
    }

    goto LABEL_30;
  }

  v31 = [MEMORY[0x277CCABB0] numberWithInt:(v29 / 0x100000)];
  [v8 setObject:v31 forKeyedSubscript:@"megaBytesDownloaded"];

  v32 = PLLogNetwork();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v36 = v7;
    v37 = 2112;
    *v38 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "DownloadMetrics %@ updated payload: %@", buf, 0x16u);
  }

  [(PLOperator *)self logForSubsystem:@"DownloadMetrics" category:v7 data:v8 date:v11];
LABEL_31:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)handleNWPathUpdate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_INFO, "Received NWPath update: %@", buf, 0xCu);
  }

  if ((nw_path_get_status(v4) & 0xFFFFFFFD) != 0)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    enumerate_block[0] = MEMORY[0x277D85DD0];
    enumerate_block[1] = 3221225472;
    enumerate_block[2] = __37__PLNetworkAgent_handleNWPathUpdate___block_invoke;
    enumerate_block[3] = &unk_278261008;
    v7 = v6;
    v15 = v7;
    nw_path_enumerate_interfaces(v4, enumerate_block);
    if ([v7 count] == 1)
    {
      v8 = MEMORY[0x21CEDDB80](v4);
      v9 = [(PLOperator *)PLNetworkAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"IsExpensive"];
      v10 = [v7 firstObject];
      v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9];
      [v11 setObject:v10 forKeyedSubscript:@"NetworkType"];
      v12 = [MEMORY[0x277CCABB0] numberWithBool:v8];
      [v11 setObject:v12 forKeyedSubscript:@"IsExpensive"];

      [(PLOperator *)self logEntry:v11];
    }

    else
    {
      v9 = PLLogNetwork();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "NWPath does not have valid interface: %@", buf, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __37__PLNetworkAgent_handleNWPathUpdate___block_invoke(uint64_t a1, nw_interface_t interface)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:nw_interface_get_type(interface)];
  [v2 addObject:v3];

  return 1;
}

@end