@interface PLRenderingAgent
+ (id)entryEventBackwardDefinitionFrameCount;
+ (id)entryEventBackwardDefinitionFrameStats;
+ (id)entryEventBackwardDefinitions;
+ (void)load;
- (BOOL)shouldLogFrameStats;
- (PLRenderingAgent)init;
- (void)dealloc;
- (void)enableCAScreenTelemetry;
- (void)handleConnectedChange:(id)a3;
- (void)initOperatorDependancies;
- (void)initTaskOperatorDependancies;
- (void)layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4 withContext:(id)a5;
- (void)log;
- (void)logEventBackwardFrameStats:(id)a3;
- (void)logEventForwardFrameCount:(id)a3;
- (void)logEventForwardScrollPocket;
@end

@implementation PLRenderingAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLRenderingAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventBackwardDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"FrameCount";
  v3 = [a1 entryEventBackwardDefinitionFrameCount];
  v8[1] = @"FrameStats";
  v9[0] = v3;
  v4 = [a1 entryEventBackwardDefinitionFrameStats];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventBackwardDefinitionFrameCount
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1BE48;
  v13[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"FrameCount";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventBackwardDefinitionFrameStats
{
  v27[2] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_282C1BE58;
  v25[1] = MEMORY[0x277CBEC28];
  v24[2] = *MEMORY[0x277D3F580];
  v25[2] = MEMORY[0x277CBEC38];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v27[0] = v21;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"APL_r";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_RealFormat];
  v23[0] = v19;
  v22[1] = @"APL_g";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_RealFormat];
  v23[1] = v17;
  v22[2] = @"APL_b";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_RealFormat];
  v23[2] = v15;
  v22[3] = @"AZLE_max";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_RealFormat];
  v23[3] = v4;
  v22[4] = @"AZLE_min";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_RealFormat];
  v23[4] = v6;
  v22[5] = @"AZLE_mean";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v23[5] = v8;
  v22[6] = @"EDR_headroom";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_RealFormat];
  v23[6] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
  v27[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (PLRenderingAgent)init
{
  if ([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPowerlogHelperd") & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
  {
    v3 = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PLRenderingAgent;
    v5 = [(PLAgent *)&v8 init];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277D0AD10]) initWithDisplayType:0];
      mainDisplayMonitor = v5->_mainDisplayMonitor;
      v5->_mainDisplayMonitor = v6;

      [(FBSDisplayLayoutMonitor *)v5->_mainDisplayMonitor addObserver:v5];
    }

    self = v5;
    v3 = self;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D3F160]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__PLRenderingAgent_initOperatorDependancies__block_invoke;
  v13[3] = &unk_2782597E8;
  v13[4] = self;
  v4 = [v3 initWithOperator:self forNotification:@"com.apple.UIKit.ScrollPocketStatistics" requireState:1 withBlock:v13];
  scrollPocketListener = self->_scrollPocketListener;
  self->_scrollPocketListener = v4;

  [(PLRenderingAgent *)self setLastFrameCount:0];
  [(PLRenderingAgent *)self setDeviceIsPlugged:0];
  v6 = objc_alloc(MEMORY[0x277D3F1A8]);
  v16 = @"ExternalConnected";
  v14 = &unk_282C10608;
  v7 = [MEMORY[0x277CBEB68] null];
  v15 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__PLRenderingAgent_initOperatorDependancies__block_invoke_57;
  v12[3] = &unk_2782597E8;
  v12[4] = self;
  v10 = [v6 initWithOperator:self forEntryKey:@"PLBatteryAgent_EventBackward_Battery" withFilter:v9 withBlock:v12];
  [(PLRenderingAgent *)self setPluggedInStateNotification:v10];

  if ([(PLRenderingAgent *)self shouldLogFrameStats])
  {
    [(PLRenderingAgent *)self disableCAScreenTelemetry];
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLRenderingAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Scroll Pocket stats notification received", v4, 2u);
  }

  return [*(a1 + 32) logEventForwardScrollPocket];
}

- (void)initTaskOperatorDependancies
{
  if ([(PLRenderingAgent *)self shouldLogFrameStats])
  {
    if ([MEMORY[0x277D3F180] taskMode])
    {
      v3 = objc_alloc(MEMORY[0x277D3F270]);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __48__PLRenderingAgent_initTaskOperatorDependancies__block_invoke;
      v5[3] = &unk_27825A1D8;
      v5[4] = self;
      v4 = [v3 initWithOperator:self withRegistration:&unk_282C17478 withBlock:v5];
      [(PLRenderingAgent *)self setFrameStatsListener:v4];

      [(PLRenderingAgent *)self enableCAScreenTelemetry];
    }
  }
}

void __48__PLRenderingAgent_initTaskOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Frame Stats callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardFrameStats:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  mainDisplayMonitor = self->_mainDisplayMonitor;
  if (mainDisplayMonitor)
  {
    [(FBSDisplayLayoutMonitor *)mainDisplayMonitor invalidate];
  }

  v4.receiver = self;
  v4.super_class = PLRenderingAgent;
  [(PLAgent *)&v4 dealloc];
}

- (void)log
{
  v4 = [(PLRenderingAgent *)self mainDisplayMonitor];
  v3 = [v4 currentLayout];
  [(PLRenderingAgent *)self logEventForwardFrameCount:v3];
}

- (void)logEventForwardScrollPocket
{
  v25 = *MEMORY[0x277D85DE8];
  state64 = 0;
  v3 = [(PLRenderingAgent *)self scrollPocketListener];
  state = notify_get_state([v3 stateToken], &state64);

  if (state)
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "Scroll Pocket stats Unavailable", buf, 2u);
    }
  }

  else
  {
    v6 = state64;
    if (state64)
    {
      v7 = HIDWORD(state64);
      v8 = state64 >> 24;
      v9 = state64 >> 16;
      v10 = state64 >> 8;
      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v24 = state64;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "Scroll Pocket stats: %llu", buf, 0xCu);
      }

      v21[0] = @"BackdropGroup";
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v7];
      v22[0] = v12;
      v21[1] = @"Total";
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v8];
      v22[1] = v13;
      v21[2] = @"Hard";
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v9];
      v22[2] = v14;
      v21[3] = @"Dynamic";
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10];
      v22[3] = v15;
      v21[4] = @"Other";
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v6];
      v22[4] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v17;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "Scroll Pocket payload: %@", buf, 0xCu);
      }

      [(PLOperator *)self logForSubsystem:@"UIKit" category:@"ScrollPocket" data:v17];
    }

    else
    {
      [(PLOperator *)self logForSubsystem:@"UIKit" category:@"ScrollPocket" data:&unk_282C174A0];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardFrameCount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = v4;
    v5 = [v4 displayBacklightLevel] < 1;
    v4 = v13;
    if (!v5)
    {
      v6 = [(PLOperator *)PLRenderingAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"FrameCount"];
      v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CARenderServerGetFrameCounter()];
      [v7 setObject:v8 forKeyedSubscript:@"FrameCount"];

      [(PLOperator *)self logEntry:v7];
      v9 = [(PLRenderingAgent *)self deviceIsPlugged];

      if (v9)
      {
        v10 = [v7 objectForKeyedSubscript:@"FrameCount"];
        v11 = [v10 unsignedIntValue];
        v12 = [(PLRenderingAgent *)self deviceIsPlugged];
        -[PLRenderingAgent logFrameCount:forConnectedState:](self, "logFrameCount:forConnectedState:", v11, [v12 BOOLValue]);
      }

      v4 = v13;
    }
  }
}

- (void)layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4 withContext:(id)a5
{
  v9 = a4;
  v7 = [a5 transitionReason];
  v8 = SBSBacklightChangeSourceForDisplayLayoutTransitionReason();

  if (v8 != 8 && v8 != 28)
  {
    [(PLRenderingAgent *)self logEventForwardFrameCount:v9];
  }
}

- (void)handleConnectedChange:(id)a3
{
  v4 = [a3 objectForKey:@"entry"];
  if (v4)
  {
    v8 = v4;
    v5 = [v4 objectForKeyedSubscript:@"ExternalConnected"];
    v6 = [v5 BOOLValue];

    v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    [(PLRenderingAgent *)self setDeviceIsPlugged:v7];

    [(PLRenderingAgent *)self logFrameCount:CARenderServerGetFrameCounter() forConnectedState:v6 ^ 1];
    v4 = v8;
  }
}

- (void)logEventBackwardFrameStats:(id)a3
{
  if (a3)
  {
    v4 = *MEMORY[0x277D3F5C8];
    v5 = a3;
    v7 = [(PLOperator *)PLRenderingAgent entryKeyForType:v4 andName:@"FrameStats"];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

    [(PLOperator *)self logEntry:v6];
  }
}

- (BOOL)shouldLogFrameStats
{
  if (qword_2811F4158 != -1)
  {
    dispatch_once(&qword_2811F4158, &__block_literal_global_17);
  }

  return _MergedGlobals_1_17;
}

uint64_t __39__PLRenderingAgent_shouldLogFrameStats__block_invoke()
{
  result = [MEMORY[0x277D3F208] isiPad];
  if (result)
  {
    result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
    v1 = result == 1001012;
  }

  else
  {
    v1 = 0;
  }

  _MergedGlobals_1_17 = v1;
  return result;
}

- (void)enableCAScreenTelemetry
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CD9E40] mainDisplay];
  [v2 bounds];
  v4 = v3;

  v5 = [MEMORY[0x277CD9E40] mainDisplay];
  [v5 bounds];
  v7 = v6;

  v8 = MGGetSInt32Answer();
  if (v8 == 20)
  {
    v9 = 36;
  }

  else
  {
    v9 = 44;
  }

  if (v8 == 20)
  {
    v10 = 52;
  }

  else
  {
    v10 = 59;
  }

  v11 = (v4 + v9 - 1) / v9;
  v12 = (v7 + v10 - 1) / v10;
  v13 = PLLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v18 = 134218752;
    v19 = v4;
    v20 = 2048;
    v21 = v7;
    v22 = 2048;
    v23 = v9;
    v24 = 2048;
    v25 = v10;
    _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "sW: %lu, sH: %lu, nX: %lu, nY: %lu", &v18, 0x2Au);
  }

  v14 = vcvtpd_u64_f64(v11 * 1.9);
  v15 = vcvtpd_u64_f64(v12 * 1.9);

  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = 134218752;
    v19 = v11;
    v20 = 2048;
    v21 = v12;
    v22 = 2048;
    v23 = v14;
    v24 = 2048;
    v25 = v15;
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "rW: %lu, rH: %lu, zW: %lu, zH: %lu", &v18, 0x2Au);
  }

  [MEMORY[0x277D3F180] longForKey:@"FrameStatsSampleInterval" ifNotSet:60];
  CARenderServerSetScreenTelemetryParameters();
  v17 = *MEMORY[0x277D85DE8];
}

@end