@interface PLAudioAgent
+ (id)entryEventForwardDefinitionHapticsPrewarmCount;
+ (id)entryEventForwardDefinitionHapticsRunningCount;
+ (id)entryEventForwardDefinitionMutedTalkerDetection;
+ (id)entryEventForwardDefinitionNowPlaying;
+ (id)entryEventForwardDefinitionOutput;
+ (id)entryEventForwardDefinitionRouting;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionCoreAudioVAD;
+ (id)entryEventIntervalDefinitionRMSLogging;
+ (id)entryEventIntervalDefinitionShazamRecording;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventPointDefinitionAudioApp;
+ (id)entryEventPointDefinitionHaptics;
+ (id)entryEventPointDefinitionHapticsAssertion;
+ (id)entryEventPointDefinitionSpeakerAmp;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)headphonesConnected;
- (BOOL)headsetHasInput;
- (BOOL)initDefaultAudioDevice:(BOOL)device;
- (BOOL)shouldModelAudioPowerSpeakerTemp;
- (PLAudioAgent)init;
- (double)audioPowerForRoute:(id)route forVolume:(double)volume;
- (double)convertSpeakerProtectionModeledPowerToTotalSpeakerPower:(double)power;
- (double)modelAudioPowerWithVolume:(double)volume;
- (id)BTEndpointType;
- (id)activeRoute;
- (id)buildCallBack:(id)back withGroup:(BOOL)group withHandler:(id)handler;
- (id)nowPlayingAppBundleID:(id)d;
- (id)returnVolumeOrOutPutCategory:(int)category;
- (void)closeAudioAccountingEvents;
- (void)createAirPlayAccountingEvents:(id)events;
- (void)createAudioAccountingEvents:(id)events;
- (void)createBluetoothAccountingEvents:(id)events;
- (void)createCarPlayAccountingEvents:(id)events;
- (void)handleLightningStatusCallback:(id)callback;
- (void)handleNowPlayingApplicationIsPlayingDidChange:(id)change;
- (void)initOperatorDependancies;
- (void)log;
- (void)logEventForwardAudioDevice:(id)device;
- (void)logEventForwardHapticsPrewarmCount:(id)count;
- (void)logEventForwardHapticsRunningCount:(id)count;
- (void)logEventForwardMutedTalkerDetection:(id)detection;
- (void)logEventForwardOutput;
- (void)logEventForwardRouting;
- (void)logEventForwardSing:(id)sing;
- (void)logEventForwardSongTransitions:(id)transitions;
- (void)logEventIntervalCoreAudioVAD:(id)d;
- (void)logEventIntervalRMSLogging:(id)logging;
- (void)logEventIntervalShazamRecording:(id)recording;
- (void)logEventPointAudioApp:(id)app;
- (void)logEventPointHaptics:(id)haptics;
- (void)logEventPointHapticsAssertion:(id)assertion;
- (void)logEventPointSpeakerAmp:(id)amp;
- (void)modelAudioPower;
- (void)modelAudioPowerCodec:(id)codec;
- (void)modelAudioPowerSpeaker:(id)speaker;
- (void)setupAVSystemController;
@end

@implementation PLAudioAgent

void __39__PLAudioAgent_setupAVSystemController__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PLLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "setupAVSystemController Trigger from output %@: %@", &v9, 0x16u);
  }

  [*(a1 + 32) logEventForwardOutput];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardOutput
{
  v5 = [(PLOperator *)PLAudioAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Output"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  volume = [(PLAudioAgent *)self volume];
  [v3 setObject:volume forKeyedSubscript:@"Volume"];

  [(PLOperator *)self logEntry:v3];
  [(PLAudioAgent *)self modelAudioPower];
}

- (void)modelAudioPower
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    return;
  }

  v3 = *MEMORY[0x277D3F5D0];
  v46 = [(PLOperator *)PLAudioAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Output"];
  v4 = [(PLOperator *)PLAudioAgent entryKeyForType:v3 andName:@"Routing"];
  storage = [(PLOperator *)self storage];
  v6 = [storage lastEntryForKey:v46];

  storage2 = [(PLOperator *)self storage];
  v8 = [storage2 lastEntryForKey:v4];

  speakerIsPlayingAudio = [(PLAudioAgent *)self speakerIsPlayingAudio];
  headsetIsPlayingAudio = [(PLAudioAgent *)self headsetIsPlayingAudio];
  if (v6 | v8)
  {
    v11 = headsetIsPlayingAudio;
    if (v6)
    {
      if (v8)
      {
        entryDate = [v8 entryDate];
        entryDate2 = [v6 entryDate];
        entryDate3 = [entryDate laterDate:entryDate2];

        goto LABEL_10;
      }

      v15 = v6;
    }

    else
    {
      v15 = v8;
    }

    entryDate3 = [v15 entryDate];
LABEL_10:
    v16 = [v8 objectForKeyedSubscript:@"Active"];
    if ([v16 BOOLValue])
    {
      v17 = [v6 objectForKeyedSubscript:@"Volume"];
      [v17 doubleValue];
      v19 = v18;

      if (v19 > 0.0)
      {
        v20 = [v8 objectForKeyedSubscript:@"ActiveRoute"];
        v21 = [v20 description];

        v22 = [v21 isEqual:@"Speaker"];
        if (v22)
        {
          v23 = 0;
        }

        else
        {
          v23 = [v21 containsString:@"Head"];
        }

        goto LABEL_18;
      }
    }

    else
    {
    }

    v22 = ([(PLAudioAgent *)self speakerIsPlayingAudio]^ 1) & speakerIsPlayingAudio;
    v23 = ([(PLAudioAgent *)self headsetIsPlayingAudio]^ 1) & v11;
LABEL_18:
    v24 = [v6 objectForKeyedSubscript:@"Volume"];
    [v24 doubleValue];
    v26 = v25;

    if (v22 == [(PLAudioAgent *)self speakerIsPlayingAudio])
    {
      [(PLAudioAgent *)self currentVolume];
      if (v33 != v26 && [(PLAudioAgent *)self speakerIsPlayingAudio]&& [(PLAudioAgent *)self shouldModelAudioPowerSpeakerTemp])
      {
        [(PLAudioAgent *)self setCurrentVolume:v26];
        v34 = [v8 objectForKeyedSubscript:@"ActiveRoute"];
        v35 = [v34 description];
        v36 = [v6 objectForKeyedSubscript:@"Volume"];
        [v36 doubleValue];
        [(PLAudioAgent *)self audioPowerForRoute:v35 forVolume:?];
        v38 = v37;

        mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
        [mEMORY[0x277D3F0C0] createPowerEventForwardWithRootNodeID:15 withPower:entryDate3 withStartDate:v38];
      }
    }

    else
    {
      objc_storeStrong(&self->_lastAudioStateChangeDate, entryDate3);
      [(PLAudioAgent *)self setSpeakerIsPlayingAudio:v22];
      if ([(PLAudioAgent *)self speakerIsPlayingAudio])
      {
        if ([(PLAudioAgent *)self shouldModelAudioPowerSpeakerTemp])
        {
          v27 = [v8 objectForKeyedSubscript:@"ActiveRoute"];
          v28 = [v27 description];
          v29 = [v6 objectForKeyedSubscript:@"Volume"];
          [v29 doubleValue];
          [(PLAudioAgent *)self audioPowerForRoute:v28 forVolume:?];
          v31 = v30;

          mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
          [mEMORY[0x277D3F0C0]2 createPowerEventForwardWithRootNodeID:15 withPower:entryDate3 withStartDate:v31];
        }
      }

      else
      {
        [(PLAudioAgent *)self modelAudioPowerSpeaker:0];
      }

      [(PLAudioAgent *)self modelAudioPowerCodec:entryDate3];
    }

    if (v23 != [(PLAudioAgent *)self headsetIsPlayingAudio])
    {
      objc_storeStrong(&self->_lastAudioStateChangeDate, entryDate3);
      [(PLAudioAgent *)self setHeadsetIsPlayingAudio:v23];
      v40 = 0.0;
      if (v23)
      {
        v41 = [v8 objectForKeyedSubscript:@"ActiveRoute"];
        v42 = [v41 description];
        v43 = [v6 objectForKeyedSubscript:@"Volume"];
        [v43 doubleValue];
        [(PLAudioAgent *)self audioPowerForRoute:v42 forVolume:?];
        v40 = v44;
      }

      mEMORY[0x277D3F0C0]3 = [MEMORY[0x277D3F0C0] sharedInstance];
      [mEMORY[0x277D3F0C0]3 createPowerEventForwardWithRootNodeID:14 withPower:entryDate3 withStartDate:v40];
    }

    goto LABEL_32;
  }

  entryDate3 = 0;
LABEL_32:
}

void __40__PLAudioAgent_initOperatorDependancies__block_invoke_310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Haptics Prewarm Count callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardHapticsPrewarmCount:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __40__PLAudioAgent_initOperatorDependancies__block_invoke_276(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "got callback! %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointSpeakerAmp:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __39__PLAudioAgent_setupAVSystemController__block_invoke_220(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PLLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "setupAVSystemController Trigger from routing %@: %@", &v13, 0x16u);
  }

  v8 = [v5 objectForKeyedSubscript:@"Sessions"];

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"Sessions"];
    [*(a1 + 32) setAudioIsActive:{objc_msgSend(v9, "count") != 0}];
    v10 = PLLogAudio();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = [*(a1 + 32) audioIsActive];
      v13 = 67109120;
      LODWORD(v14) = v12;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "setupAVSystemController audioIsActive: %d", &v13, 8u);
    }
  }

  [*(a1 + 32) logEventForwardRouting];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardRouting
{
  v12 = [(PLOperator *)PLAudioAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Routing"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLAudioAgent audioIsActive](self, "audioIsActive")}];
  [v3 setObject:v4 forKeyedSubscript:@"Active"];

  activeRoute = [(PLAudioAgent *)self activeRoute];
  [v3 setObject:activeRoute forKeyedSubscript:@"ActiveRoute"];

  outputCategory = [(PLAudioAgent *)self outputCategory];
  [v3 setObject:outputCategory forKeyedSubscript:@"OutputCategory"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLAudioAgent headphonesConnected](self, "headphonesConnected")}];
  [v3 setObject:v7 forKeyedSubscript:@"HeadphonesConnected"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLAudioAgent headsetHasInput](self, "headsetHasInput")}];
  [v3 setObject:v8 forKeyedSubscript:@"HeadsetHasInput"];

  bTEndpointType = [(PLAudioAgent *)self BTEndpointType];
  [v3 setObject:bTEndpointType forKeyedSubscript:@"BTEndpointType"];

  entryRoutingOld = [(PLAudioAgent *)self entryRoutingOld];
  v11 = [v3 compare:entryRoutingOld];

  if (v11)
  {
    [(PLOperator *)self logEntry:v3];
    [(PLAudioAgent *)self modelAudioPower];
  }

  [(PLAudioAgent *)self setEntryRoutingOld:v3];
}

- (BOOL)headphonesConnected
{
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedInstance];
  v3 = [mEMORY[0x277D26E58] attributeForKey:*MEMORY[0x277D26C08]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)BTEndpointType
{
  v11 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedInstance];
  v3 = [mEMORY[0x277D26E58] attributeForKey:*MEMORY[0x277D26C70]];

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D26CB0]];
  v5 = PLLogAudio();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "BTDetails_EndpointType: %@", &v9, 0xCu);
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_282B650A0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)headsetHasInput
{
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedInstance];
  v3 = [mEMORY[0x277D26E58] attributeForKey:*MEMORY[0x277D26BF8]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)activeRoute
{
  v2 = 0;
  v3 = MEMORY[0x277D26AF8];
  do
  {
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedInstance];
    v5 = [mEMORY[0x277D26E58] attributeForKey:*v3];

    if (v2 > 4)
    {
      break;
    }

    ++v2;
  }

  while (!v5);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"INVALID";
  }

  return v6;
}

void __40__PLAudioAgent_initOperatorDependancies__block_invoke_305(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLAudioAgent_EventForward_HapticsRunningCount: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardHapticsRunningCount:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __40__PLAudioAgent_initOperatorDependancies__block_invoke_284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "got callback! %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointHaptics:v6];
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAudioAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"AudioApp";
  entryEventPointDefinitionAudioApp = [self entryEventPointDefinitionAudioApp];
  v11[0] = entryEventPointDefinitionAudioApp;
  v10[1] = @"SpeakerAmp";
  entryEventPointDefinitionSpeakerAmp = [self entryEventPointDefinitionSpeakerAmp];
  v11[1] = entryEventPointDefinitionSpeakerAmp;
  v10[2] = @"Haptics";
  entryEventPointDefinitionHaptics = [self entryEventPointDefinitionHaptics];
  v11[2] = entryEventPointDefinitionHaptics;
  v10[3] = @"HapticsAssertion";
  entryEventPointDefinitionHapticsAssertion = [self entryEventPointDefinitionHapticsAssertion];
  v11[3] = entryEventPointDefinitionHapticsAssertion;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionAudioApp
{
  v28[2] = *MEMORY[0x277D85DE8];
  v27[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v25[0] = *MEMORY[0x277D3F568];
  v25[1] = v2;
  v26[0] = &unk_282C1C518;
  v26[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F4A0];
  v25[2] = *MEMORY[0x277D3F558];
  v25[3] = v3;
  v26[2] = MEMORY[0x277CBEC38];
  v26[3] = MEMORY[0x277CBEC38];
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v28[0] = v22;
  v27[1] = *MEMORY[0x277D3F540];
  v23[0] = @"ApplicationName";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withAppName = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withAppName];
  v24[0] = commonTypeDict_StringFormat_withAppName;
  v23[1] = @"AssertionID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v24[1] = commonTypeDict_IntegerFormat;
  v23[2] = @"AssertionName";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v24[2] = commonTypeDict_StringFormat;
  v23[3] = @"AudioRoute";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v24[3] = commonTypeDict_StringFormat2;
  v23[4] = @"Operation";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v24[4] = commonTypeDict_StringFormat3;
  v23[5] = @"PID";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v24[5] = commonTypeDict_IntegerFormat2;
  v23[6] = @"MirroringState";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]7 commonTypeDict_BoolFormat];
  v24[6] = commonTypeDict_BoolFormat;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:7];
  v28[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventPointDefinitionSpeakerAmp
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C528;
  v13[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"Avg Watts Modelled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
  v11 = commonTypeDict_RealFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionHaptics
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_282C1C538;
  v19[1] = MEMORY[0x277CBEC38];
  v18[2] = *MEMORY[0x277D3F4F0];
  v17[0] = @"ApplicationName";
  v17[1] = @"EngineOnDuration";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v19[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v21[0] = v4;
  v20[1] = *MEMORY[0x277D3F540];
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v16[0] = commonTypeDict_StringFormat_withBundleID;
  v15[1] = @"EngineOnDuration";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
  v16[1] = commonTypeDict_RealFormat;
  v15[2] = @"TimestampEnd";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v16[2] = commonTypeDict_DateFormat;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionHapticsAssertion
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_282C1C548;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"active_time";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"active_clients";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v12[1] = commonTypeDict_StringFormat;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventForwardDefinitions
{
  v13[7] = *MEMORY[0x277D85DE8];
  v12[0] = @"Output";
  v2 = +[PLAudioAgent entryEventForwardDefinitionOutput];
  v13[0] = v2;
  v12[1] = @"Routing";
  v3 = +[PLAudioAgent entryEventForwardDefinitionRouting];
  v13[1] = v3;
  v12[2] = @"NowPlaying";
  v4 = +[PLAudioAgent entryEventForwardDefinitionNowPlaying];
  v13[2] = v4;
  v12[3] = @"AudioDevice";
  v5 = +[PLAudioAgent entryEventForwardDefinitionAudioDevice];
  v13[3] = v5;
  v12[4] = @"MutedTalkerDetection";
  v6 = +[PLAudioAgent entryEventForwardDefinitionMutedTalkerDetection];
  v13[4] = v6;
  v12[5] = @"HapticsRunningCount";
  v7 = +[PLAudioAgent entryEventForwardDefinitionHapticsRunningCount];
  v13[5] = v7;
  v12[6] = @"HapticsPrewarmCount";
  v8 = +[PLAudioAgent entryEventForwardDefinitionHapticsPrewarmCount];
  v13[6] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:7];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventForwardDefinitionOutput
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v17[0] = *MEMORY[0x277D3F568];
  v17[1] = v2;
  v18[0] = &unk_282C1C538;
  v18[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[0] = v3;
  v19[1] = *MEMORY[0x277D3F540];
  v15 = @"Volume";
  v4 = *MEMORY[0x277D3F5B0];
  v13[0] = *MEMORY[0x277D3F5A8];
  v13[1] = v4;
  v14[0] = &unk_282C11A60;
  v14[1] = @"%";
  v13[2] = *MEMORY[0x277D3F520];
  v11 = *MEMORY[0x277D3F510];
  v12 = &unk_282C1C558;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v16 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v20[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventForwardDefinitionRouting
{
  v27[2] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_282C1C538;
  v25[1] = MEMORY[0x277CBEC38];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[0] = v21;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"Active";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v23[0] = commonTypeDict_BoolFormat;
  v22[1] = @"OutputCategory";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v23[1] = commonTypeDict_StringFormat;
  v22[2] = @"ActiveRoute";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v23[2] = commonTypeDict_StringFormat2;
  v22[3] = @"HeadphonesConnected";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_BoolFormat];
  v23[3] = commonTypeDict_BoolFormat2;
  v22[4] = @"HeadsetHasInput";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_BoolFormat];
  v23[4] = commonTypeDict_BoolFormat3;
  v22[5] = @"AudioSessionID";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v23[5] = commonTypeDict_IntegerFormat;
  v22[6] = @"BTEndpointType";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v23[6] = commonTypeDict_StringFormat3;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
  v27[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionNowPlaying
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1C548;
  v15[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"BundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v12[1] = @"State";
  v13[0] = commonTypeDict_StringFormat_withBundleID;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v13[1] = commonTypeDict_IntegerFormat;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventForwardDefinitionMutedTalkerDetection
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1C548;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Muted";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardDefinitionHapticsRunningCount
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v15 = *MEMORY[0x277D3F568];
  v16 = &unk_282C1C568;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[0] = v2;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"RunningCount";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v14[0] = commonTypeDict_IntegerFormat;
  v13[1] = @"pid";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v14[1] = commonTypeDict_IntegerFormat2;
  v13[2] = @"subsystem";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v14[2] = commonTypeDict_IntegerFormat3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventForwardDefinitionHapticsPrewarmCount
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F0];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_282C1C548;
  v19[1] = &unk_282C14C40;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"PrewarmCount";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v17[0] = commonTypeDict_IntegerFormat;
  v16[1] = @"pid";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v17[1] = commonTypeDict_IntegerFormat2;
  v16[2] = @"subsystem";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v17[2] = commonTypeDict_IntegerFormat3;
  v16[3] = @"process";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat_withProcessName];
  v17[3] = commonTypeDict_StringFormat_withProcessName;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitions
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"ShazamRecording";
  v3 = +[PLAudioAgent entryEventIntervalDefinitionShazamRecording];
  v10[0] = v3;
  v9[1] = @"RMSLogging";
  entryEventIntervalDefinitionRMSLogging = [self entryEventIntervalDefinitionRMSLogging];
  v10[1] = entryEventIntervalDefinitionRMSLogging;
  v9[2] = @"CoreAudioVAD";
  entryEventIntervalDefinitionCoreAudioVAD = [self entryEventIntervalDefinitionCoreAudioVAD];
  v10[2] = entryEventIntervalDefinitionCoreAudioVAD;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventIntervalDefinitionShazamRecording
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1C548;
  v15[1] = MEMORY[0x277CBEC38];
  v14[2] = *MEMORY[0x277D3F4F0];
  v15[2] = &unk_282C14C58;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"timestampEnd";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v12[1] = @"BundleID";
  v13[0] = commonTypeDict_DateFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v13[1] = commonTypeDict_StringFormat_withBundleID;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventIntervalDefinitionRMSLogging
{
  v33[2] = *MEMORY[0x277D85DE8];
  v32[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v30[0] = *MEMORY[0x277D3F568];
  v30[1] = v2;
  v31[0] = &unk_282C1C578;
  v31[1] = MEMORY[0x277CBEC38];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v33[0] = v27;
  v32[1] = *MEMORY[0x277D3F540];
  v28[0] = @"timestampEnd";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v29[0] = commonTypeDict_DateFormat;
  v28[1] = @"ApplicationName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v29[1] = commonTypeDict_StringFormat_withBundleID;
  v28[2] = @"maxRms";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v29[2] = commonTypeDict_RealFormat;
  v28[3] = @"minRms";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
  v29[3] = commonTypeDict_RealFormat2;
  v28[4] = @"silence_duration";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v29[4] = commonTypeDict_IntegerFormat;
  v28[5] = @"quiet_duration";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v29[5] = commonTypeDict_IntegerFormat2;
  v28[6] = @"audible_duration";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v29[6] = commonTypeDict_IntegerFormat3;
  v28[7] = @"node";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v29[7] = commonTypeDict_StringFormat;
  v28[8] = @"pid";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v29[8] = commonTypeDict_IntegerFormat4;
  v28[9] = @"reporterID";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v29[9] = commonTypeDict_IntegerFormat5;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
  v33[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitionCoreAudioVAD
{
  v28[2] = *MEMORY[0x277D85DE8];
  v27[0] = *MEMORY[0x277D3F4E8];
  v25 = *MEMORY[0x277D3F568];
  v26 = &unk_282C1C538;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v28[0] = v22;
  v27[1] = *MEMORY[0x277D3F540];
  v23[0] = @"Client";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v24[0] = commonTypeDict_StringFormat;
  v23[1] = @"ClientID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v24[1] = commonTypeDict_StringFormat2;
  v23[2] = @"StartTime";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v24[2] = commonTypeDict_DateFormat;
  v23[3] = @"EndTime";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_DateFormat];
  v24[3] = commonTypeDict_DateFormat2;
  v23[4] = @"State";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v24[4] = commonTypeDict_IntegerFormat;
  v23[5] = @"Device";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v24[5] = commonTypeDict_StringFormat3;
  v23[6] = @"SID";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v24[6] = commonTypeDict_StringFormat4;
  v23[7] = @"LifespanInSeconds";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v24[7] = commonTypeDict_IntegerFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:8];
  v28[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (PLAudioAgent)init
{
  v3.receiver = self;
  v3.super_class = PLAudioAgent;
  result = [(PLAgent *)&v3 init];
  if (result)
  {
    result->_headsetIsPlayingAudio = 0;
    result->_speakerIsPlayingAudio = 0;
    result->_currentVolume = -1.0;
  }

  return result;
}

- (id)nowPlayingAppBundleID:(id)d
{
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedInstance];
  v4 = [mEMORY[0x277D26E58] attributeForKey:*MEMORY[0x277D26C28]];

  return v4;
}

- (void)handleNowPlayingApplicationIsPlayingDidChange:(id)change
{
  v4 = *MEMORY[0x277D3F5D0];
  changeCopy = change;
  v18 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"NowPlaying"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v18];
  v7 = [(PLAudioAgent *)self nowPlayingAppBundleID:changeCopy];

  [v6 setObject:v7 forKeyedSubscript:@"BundleID"];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLAudioAgent audioIsActive](self, "audioIsActive")}];
  [v6 setObject:v8 forKeyedSubscript:@"State"];

  storage = [(PLOperator *)self storage];
  v10 = [storage lastEntryForKey:v18];

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = [v10 objectForKeyedSubscript:@"State"];
  integerValue = [v11 integerValue];
  v13 = [v6 objectForKeyedSubscript:@"State"];
  if (integerValue != [v13 integerValue])
  {
    goto LABEL_7;
  }

  v14 = [v10 objectForKeyedSubscript:@"BundleID"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_7:
    goto LABEL_8;
  }

  v15 = [v10 objectForKeyedSubscript:@"BundleID"];
  v16 = [v6 objectForKeyedSubscript:@"BundleID"];
  v17 = [v15 isEqualToString:v16];

  if ((v17 & 1) == 0)
  {
LABEL_8:
    [(PLOperator *)self logEntry:v6];
  }
}

- (void)setupAVSystemController
{
  v80[4] = *MEMORY[0x277D85DE8];
  v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D26D40] object:0];

  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedInstance];
  v5 = [mEMORY[0x277D26E58] attributeForKey:*MEMORY[0x277D26C80]];

  self->_audioIsActive = [v5 count] != 0;
  v6 = objc_opt_new();
  nsOutputNotifications = self->_nsOutputNotifications;
  self->_nsOutputNotifications = v6;

  v8 = objc_opt_new();
  nsRoutingNotifications = self->_nsRoutingNotifications;
  self->_nsRoutingNotifications = v8;

  v10 = objc_alloc(MEMORY[0x277D3F190]);
  v11 = [(PLOperator *)PLAudioAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Routing"];
  v12 = [v10 initWithEntryKey:v11];
  entryRoutingOld = self->_entryRoutingOld;
  self->_entryRoutingOld = v12;

  v14 = *MEMORY[0x277D26BF0];
  v80[0] = *MEMORY[0x277D26DE8];
  v80[1] = v14;
  v15 = *MEMORY[0x277D26CA0];
  v80[2] = *MEMORY[0x277D26C20];
  v80[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:4];
  v17 = *MEMORY[0x277D26B50];
  v79[0] = *MEMORY[0x277D26DA8];
  v79[1] = v17;
  v18 = *MEMORY[0x277D26C10];
  v79[2] = *MEMORY[0x277D26DE0];
  v79[3] = v18;
  v79[4] = *MEMORY[0x277D26B00];
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:5];
  v78 = *MEMORY[0x277D26C38];
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v16;
  v19 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v70;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v70 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v69 + 1) + 8 * i);
        nsOutputNotifications = [(PLAudioAgent *)self nsOutputNotifications];
        v25 = objc_alloc(MEMORY[0x277D3F1F0]);
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __39__PLAudioAgent_setupAVSystemController__block_invoke;
        v68[3] = &unk_2782597E8;
        v68[4] = self;
        v26 = [v25 initWithOperator:self forNotification:v23 withBlock:v68];
        [nsOutputNotifications addObject:v26];
      }

      v20 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v20);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v55 = v54;
  v27 = [v55 countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v65;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v65 != v29)
        {
          objc_enumerationMutation(v55);
        }

        v31 = *(*(&v64 + 1) + 8 * j);
        nsOutputNotifications2 = [(PLAudioAgent *)self nsOutputNotifications];
        v33 = objc_alloc(MEMORY[0x277D3F1F0]);
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __39__PLAudioAgent_setupAVSystemController__block_invoke_220;
        v63[3] = &unk_2782597E8;
        v63[4] = self;
        v34 = [v33 initWithOperator:self forNotification:v31 withBlock:v63];
        [nsOutputNotifications2 addObject:v34];
      }

      v28 = [v55 countByEnumeratingWithState:&v64 objects:v76 count:16];
    }

    while (v28);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v53 = v52;
  v35 = [v53 countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v60;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v60 != v37)
        {
          objc_enumerationMutation(v53);
        }

        v39 = *(*(&v59 + 1) + 8 * k);
        nsOutputNotifications3 = [(PLAudioAgent *)self nsOutputNotifications];
        v41 = objc_alloc(MEMORY[0x277D3F1F0]);
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __39__PLAudioAgent_setupAVSystemController__block_invoke_224;
        v58[3] = &unk_2782597E8;
        v58[4] = self;
        v42 = [v41 initWithOperator:self forNotification:v39 withBlock:v58];
        [nsOutputNotifications3 addObject:v42];
      }

      v36 = [v53 countByEnumeratingWithState:&v59 objects:v75 count:16];
    }

    while (v36);
  }

  [v51 addObjectsFromArray:obj];
  [v51 addObjectsFromArray:v55];
  [v51 addObjectsFromArray:v53];
  mEMORY[0x277D26E58]2 = [MEMORY[0x277D26E58] sharedInstance];
  v44 = *MEMORY[0x277D26DD0];
  v57 = 0;
  [mEMORY[0x277D26E58]2 setAttribute:v51 forKey:v44 error:&v57];
  v45 = v57;

  if (v45)
  {
    v46 = PLLogAudio();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v74 = v45;
      _os_log_error_impl(&dword_21A4C6000, v46, OS_LOG_TYPE_ERROR, "setupAVSystemController error setting subscribeToAVSCNotifications attribute: %@", buf, 0xCu);
    }
  }

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_setupAVSystemController name:*MEMORY[0x277D26D40] object:0];

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  lastAudioStateChangeDate = self->_lastAudioStateChangeDate;
  self->_lastAudioStateChangeDate = monotonicDate;

  v50 = *MEMORY[0x277D85DE8];
}

void __39__PLAudioAgent_setupAVSystemController__block_invoke_224(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PLLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "setupAVSystemController Trigger from nowPlaying %@: %@", &v9, 0x16u);
  }

  [*(a1 + 32) handleNowPlayingApplicationIsPlayingDidChange:v5];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)returnVolumeOrOutPutCategory:(int)category
{
  v4 = 0;
  v5 = 0;
  v14 = -1.0;
  do
  {
    v6 = v4;
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedInstance];
    v13 = v4;
    v8 = [mEMORY[0x277D26E58] getActiveCategoryVolume:&v14 andName:&v13];
    v4 = v13;

    if (v8)
    {
      if (!category)
      {
        v9 = [MEMORY[0x277CCABB0] numberWithDouble:v14 * 100.0];
        goto LABEL_8;
      }

      if (category == 1)
      {
        v9 = v4;
LABEL_8:
        v10 = v9;
        goto LABEL_9;
      }
    }

    v10 = 0;
LABEL_9:
    if (v5 > 4)
    {
      break;
    }

    ++v5;
  }

  while (!v10);
  if (v10)
  {
    v11 = v10;
  }

  else if (category)
  {
    v11 = @"INVALID";
  }

  else
  {
    v11 = &unk_282C1C588;
  }

  return v11;
}

- (void)initOperatorDependancies
{
  [(PLAudioAgent *)self setupAVSystemController];
  self->_accessoryPowerState = 1;
  v3 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LightningConnectorStatus"];
  v54[5] = MEMORY[0x277D85DD0];
  v54[6] = 3221225472;
  v54[7] = __40__PLAudioAgent_initOperatorDependancies__block_invoke;
  v54[8] = &unk_27825A2E8;
  v54[9] = self;
  v41 = v3;
  v4 = [PLAudioAgent buildCallBack:"buildCallBack:withGroup:withHandler:" withGroup:? withHandler:?];
  [(PLAudioAgent *)self setAccessoryPowerCallback:v4];

  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v5 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"audio"];
    audioHardware = [(PLAudioAgent *)self audioHardware];
    v7 = [v5 objectForKeyedSubscript:audioHardware];
    v8 = [v7 objectForKeyedSubscript:@"Speaker"];
    audioPowerModel = self->_audioPowerModel;
    self->_audioPowerModel = v8;
  }

  v10 = objc_alloc(MEMORY[0x277D3F270]);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __40__PLAudioAgent_initOperatorDependancies__block_invoke_260;
  v54[3] = &unk_27825A1D8;
  v54[4] = self;
  v40 = [v10 initWithOperator:self withRegistration:&unk_282C185F8 withBlock:v54];
  [(PLAudioAgent *)self setAudioAppXPCListener:?];
  v11 = objc_alloc(MEMORY[0x277D3F270]);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __40__PLAudioAgent_initOperatorDependancies__block_invoke_269;
  v53[3] = &unk_27825A1D8;
  v53[4] = self;
  v39 = [v11 initWithOperator:self withRegistration:&unk_282C18620 withBlock:v53];
  [(PLAudioAgent *)self setScreenMirroringXPCListener:?];
  v12 = objc_alloc(MEMORY[0x277D3F270]);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __40__PLAudioAgent_initOperatorDependancies__block_invoke_276;
  v52[3] = &unk_27825A1D8;
  v52[4] = self;
  v38 = [v12 initWithOperator:self withRegistration:&unk_282C18648 withBlock:v52];
  [(PLAudioAgent *)self setSpeakerAmpXPCListener:?];
  v13 = objc_alloc(MEMORY[0x277D3F270]);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __40__PLAudioAgent_initOperatorDependancies__block_invoke_284;
  v51[3] = &unk_27825A1D8;
  v51[4] = self;
  v37 = [v13 initWithOperator:self withRegistration:&unk_282C18670 withBlock:v51];
  [(PLAudioAgent *)self setHapticsXPCListener:?];
  v14 = objc_alloc(MEMORY[0x277D3F270]);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __40__PLAudioAgent_initOperatorDependancies__block_invoke_292;
  v50[3] = &unk_27825A1D8;
  v50[4] = self;
  v36 = [v14 initWithOperator:self withRegistration:&unk_282C18698 withBlock:v50];
  [(PLAudioAgent *)self setHapticsAssertionXPCListener:?];
  v15 = objc_alloc(MEMORY[0x277D3F270]);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __40__PLAudioAgent_initOperatorDependancies__block_invoke_300;
  v49[3] = &unk_27825A1D8;
  v49[4] = self;
  v16 = [v15 initWithOperator:self withRegistration:&unk_282C186C0 withBlock:v49];
  [(PLAudioAgent *)self setRMSLoggingXPCListener:v16];
  v17 = objc_alloc(MEMORY[0x277D3F270]);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __40__PLAudioAgent_initOperatorDependancies__block_invoke_305;
  v48[3] = &unk_27825A1D8;
  v48[4] = self;
  v18 = [v17 initWithOperator:self withRegistration:&unk_282C186E8 withBlock:v48];
  [(PLAudioAgent *)self setHapticsRunningCountListener:v18];
  v19 = objc_alloc(MEMORY[0x277D3F270]);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __40__PLAudioAgent_initOperatorDependancies__block_invoke_310;
  v47[3] = &unk_27825A1D8;
  v47[4] = self;
  v20 = [v19 initWithOperator:self withRegistration:&unk_282C18710 withBlock:v47];
  hapticsPrewarmCountListener = self->_hapticsPrewarmCountListener;
  self->_hapticsPrewarmCountListener = v20;

  v22 = objc_alloc(MEMORY[0x277D3F270]);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __40__PLAudioAgent_initOperatorDependancies__block_invoke_320;
  v46[3] = &unk_27825A1D8;
  v46[4] = self;
  v23 = [v22 initWithOperator:self withRegistration:&unk_282C18738 withBlock:v46];
  [(PLAudioAgent *)self setCoreAudioVADXPCListener:v23];
  v24 = objc_alloc(MEMORY[0x277D3F270]);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __40__PLAudioAgent_initOperatorDependancies__block_invoke_327;
  v45[3] = &unk_27825A1D8;
  v45[4] = self;
  v25 = [v24 initWithOperator:self withRegistration:&unk_282C18760 withBlock:v45];
  [(PLAudioAgent *)self setShazamRecordingXPCListener:v25];
  v26 = objc_alloc(MEMORY[0x277D3F270]);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __40__PLAudioAgent_initOperatorDependancies__block_invoke_332;
  v44[3] = &unk_27825A1D8;
  v44[4] = self;
  v27 = [v26 initWithOperator:self withRegistration:&unk_282C18788 withBlock:v44];
  [(PLAudioAgent *)self setMutedTalkerDetectionXPCListener:v27];
  v28 = objc_alloc(MEMORY[0x277D3F270]);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __40__PLAudioAgent_initOperatorDependancies__block_invoke_342;
  v43[3] = &unk_27825A1D8;
  v43[4] = self;
  v29 = [v28 initWithOperator:self withRegistration:&unk_282C187B0 withBlock:v43];
  [(PLAudioAgent *)self setSingXPCListener:v29];
  v30 = objc_alloc(MEMORY[0x277D3F270]);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __40__PLAudioAgent_initOperatorDependancies__block_invoke_350;
  v42[3] = &unk_27825A1D8;
  v42[4] = self;
  v31 = [v30 initWithOperator:self withRegistration:&unk_282C187D8 withBlock:v42];
  [(PLAudioAgent *)self setSongTransitionXPCListener:v31];
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C18800 withStartDate:monotonicDate];

    if (![(PLAudioAgent *)self audioIsActive])
    {
      [(PLAudioAgent *)self closeAudioAccountingEvents];
    }
  }

  v34 = [objc_alloc(MEMORY[0x277D3F1F0]) initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:&__block_literal_global_364];
  thermalMonitorListener = self->_thermalMonitorListener;
  self->_thermalMonitorListener = v34;
}

void __40__PLAudioAgent_initOperatorDependancies__block_invoke_260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "got callback! %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointAudioApp:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __40__PLAudioAgent_initOperatorDependancies__block_invoke_269(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "got callback! %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointAudioApp:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __40__PLAudioAgent_initOperatorDependancies__block_invoke_292(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "got callback! %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointHapticsAssertion:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __40__PLAudioAgent_initOperatorDependancies__block_invoke_300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "got callback! %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalRMSLogging:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __40__PLAudioAgent_initOperatorDependancies__block_invoke_320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for CoreAudioVAD payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalCoreAudioVAD:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __40__PLAudioAgent_initOperatorDependancies__block_invoke_327(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLAudioAgent_EventInterval_ShazamRecording: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalShazamRecording:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __40__PLAudioAgent_initOperatorDependancies__block_invoke_332(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "MutedTalkerDetection payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardMutedTalkerDetection:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __40__PLAudioAgent_initOperatorDependancies__block_invoke_342(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Audio Sing payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardSing:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __40__PLAudioAgent_initOperatorDependancies__block_invoke_350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Audio SongTransitions payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardSongTransitions:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __40__PLAudioAgent_initOperatorDependancies__block_invoke_362(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Notification from ThermalMonitor: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)buildCallBack:(id)back withGroup:(BOOL)group withHandler:(id)handler
{
  groupCopy = group;
  backCopy = back;
  handlerCopy = handler;
  if (groupCopy)
  {
    backCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"GroupID_%@", backCopy];
  }

  else
  {
    backCopy = backCopy;
  }

  v11 = backCopy;
  v12 = objc_alloc(MEMORY[0x277D3F1A8]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__PLAudioAgent_buildCallBack_withGroup_withHandler___block_invoke;
  v16[3] = &unk_27825A338;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = [v12 initWithOperator:self forEntryKey:v11 withBlock:v16];

  return v14;
}

uint64_t __52__PLAudioAgent_buildCallBack_withGroup_withHandler___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)handleLightningStatusCallback:(id)callback
{
  v5 = [callback objectForKey:@"entry"];
  v4 = [v5 objectForKey:@"IOAccessoryPowerMode"];
  -[PLAudioAgent setAccessoryPowerState:](self, "setAccessoryPowerState:", [v4 intValue]);
}

- (BOOL)initDefaultAudioDevice:(BOOL)device
{
  deviceCopy = device;
  v5 = [AudioDevice alloc];
  if (!deviceCopy)
  {
    v6 = [(AudioDevice *)v5 initOutputDeviceWithCtx:self];
    if ([v6 updateDefaultAudioDeviceInfo])
    {
      v7 = &OBJC_IVAR___PLAudioAgent__defaultOutputDevice;
      goto LABEL_6;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v6 = [(AudioDevice *)v5 initInputDeviceWithCtx:self];
  if (([v6 updateDefaultAudioDeviceInfo] & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = &OBJC_IVAR___PLAudioAgent__defaultInputDevice;
LABEL_6:
  objc_storeStrong((&self->super.super.super.isa + *v7), v6);
  [v6 addAudioDeviceListener];
  v8 = 1;
LABEL_8:

  return v8;
}

- (void)log
{
  [(PLAudioAgent *)self logEventForwardOutput];

  [(PLAudioAgent *)self logEventForwardRouting];
}

- (void)logEventPointAudioApp:(id)app
{
  v4 = *MEMORY[0x277D3F5E8];
  appCopy = app;
  v19 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"AudioApp"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v19 withRawData:appCopy];

  v7 = [v6 objectForKeyedSubscript:@"PlaybackStartTime"];

  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"PlaybackStartTime"];
    [v8 timeIntervalSince1970];
    v10 = v9;

    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
    convertFromSystemToMonotonic = [v11 convertFromSystemToMonotonic];
    [v6 setEntryDate:convertFromSystemToMonotonic];
  }

  v13 = [v6 objectForKeyedSubscript:@"PlaybackStopTime"];

  if (v13)
  {
    v14 = [v6 objectForKeyedSubscript:@"PlaybackStopTime"];
    [v14 timeIntervalSince1970];
    v16 = v15;

    v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v16];
    convertFromSystemToMonotonic2 = [v17 convertFromSystemToMonotonic];
    [v6 setEntryDate:convertFromSystemToMonotonic2];
  }

  [(PLOperator *)self logEntry:v6];
  [(PLAudioAgent *)self createAudioAccountingEvents:v6];
  [(PLAudioAgent *)self createAirPlayAccountingEvents:v6];
  [(PLAudioAgent *)self createCarPlayAccountingEvents:v6];
  [(PLAudioAgent *)self createBluetoothAccountingEvents:v6];
}

- (void)logEventPointSpeakerAmp:(id)amp
{
  v4 = *MEMORY[0x277D3F5E8];
  ampCopy = amp;
  v7 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"SpeakerAmp"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:ampCopy];

  [(PLAudioAgent *)self modelAudioPowerSpeaker:v6];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointHaptics:(id)haptics
{
  v4 = *MEMORY[0x277D3F5E8];
  hapticsCopy = haptics;
  v7 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"Haptics"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:hapticsCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointHapticsAssertion:(id)assertion
{
  v4 = *MEMORY[0x277D3F5E8];
  assertionCopy = assertion;
  v9 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"HapticsAssertion"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9];
  v7 = [assertionCopy objectForKeyedSubscript:@"Haptic_Active_Hardware_Time_Seconds"];
  [v6 setObject:v7 forKeyedSubscript:@"active_time"];

  v8 = [assertionCopy objectForKeyedSubscript:@"Active_Clients"];

  [v6 setObject:v8 forKeyedSubscript:@"active_clients"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardAudioDevice:(id)device
{
  v23 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = [(PLOperator *)PLAudioAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AudioDevice"];
  v6 = objc_alloc(MEMORY[0x277D3F190]);
  lastUpdateTime = [deviceCopy lastUpdateTime];
  v8 = [v6 initWithEntryKey:v5 withDate:lastUpdateTime];

  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(deviceCopy, "deviceID")}];
    [v8 setObject:v9 forKeyedSubscript:@"DeviceID"];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(deviceCopy, "sourceID")}];
    [v8 setObject:v10 forKeyedSubscript:@"SourceID"];

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(deviceCopy, "transType")}];
    [v8 setObject:v11 forKeyedSubscript:@"TransType"];

    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(deviceCopy, "isInput")}];
    [v8 setObject:v12 forKeyedSubscript:@"IsInput"];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(deviceCopy, "isRunning")}];
    [v8 setObject:v13 forKeyedSubscript:@"IsRunning"];

    v14 = MEMORY[0x277CCABB0];
    [deviceCopy volume];
    v15 = [v14 numberWithFloat:?];
    [v8 setObject:v15 forKeyedSubscript:@"Volume"];

    [(PLOperator *)self logEntry:v8];
    v16 = PLLogAudio();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      lastUpdateTime2 = [deviceCopy lastUpdateTime];
      v19 = 138412546;
      v20 = lastUpdateTime2;
      v21 = 2112;
      v22 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "AudioDevice changed: %@, %@", &v19, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardHapticsRunningCount:(id)count
{
  v4 = *MEMORY[0x277D3F5D0];
  countCopy = count;
  v7 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"HapticsRunningCount"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:countCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardHapticsPrewarmCount:(id)count
{
  v4 = *MEMORY[0x277D3F5D0];
  countCopy = count;
  v7 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"HapticsPrewarmCount"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:countCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardMutedTalkerDetection:(id)detection
{
  v4 = *MEMORY[0x277D3F5D0];
  detectionCopy = detection;
  v7 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"MutedTalkerDetection"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:detectionCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardSing:(id)sing
{
  singCopy = sing;
  v9 = [singCopy mutableCopy];
  v5 = MEMORY[0x277CBEAA8];
  v6 = [singCopy objectForKeyedSubscript:@"TimestampSent"];

  [v6 doubleValue];
  v7 = [v5 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v7 convertFromSystemToMonotonic];

  [v9 removeObjectForKey:@"TimestampSent"];
  [(PLOperator *)self logForSubsystem:@"Audio" category:@"Sing" data:v9 date:convertFromSystemToMonotonic];
}

- (void)logEventForwardSongTransitions:(id)transitions
{
  transitionsCopy = transitions;
  v14 = [transitionsCopy mutableCopy];
  v5 = MEMORY[0x277CBEAA8];
  v6 = [transitionsCopy objectForKeyedSubscript:@"TimestampSent"];

  [v6 doubleValue];
  v7 = [v5 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v7 convertFromSystemToMonotonic];

  [v14 removeObjectForKey:@"TimestampSent"];
  v9 = [v14 objectForKeyedSubscript:@"TransitionDuration"];

  if (v9)
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = MEMORY[0x277D3F258];
    v12 = [v14 objectForKeyedSubscript:@"TransitionDuration"];
    [v12 doubleValue];
    [v11 roundToSigFigDouble:2 withSigFig:?];
    v13 = [v10 numberWithDouble:?];
    [v14 setObject:v13 forKeyedSubscript:@"TransitionDuration"];
  }

  [(PLOperator *)self logForSubsystem:@"Audio" category:@"SongTransitions" data:v14 date:convertFromSystemToMonotonic];
}

- (void)logEventIntervalRMSLogging:(id)logging
{
  v4 = *MEMORY[0x277D3F5D8];
  loggingCopy = logging;
  v21 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"RMSLogging"];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [loggingCopy objectForKeyedSubscript:@"StartTime"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v21 withDate:convertFromSystemToMonotonic];
  v11 = [loggingCopy objectForKeyedSubscript:@"ApplicationName"];
  [v10 setObject:v11 forKeyedSubscript:@"ApplicationName"];

  v12 = [loggingCopy objectForKeyedSubscript:@"maxRms"];
  [v10 setObject:v12 forKeyedSubscript:@"maxRms"];

  v13 = [loggingCopy objectForKeyedSubscript:@"minRms"];
  [v10 setObject:v13 forKeyedSubscript:@"minRms"];

  v14 = [loggingCopy objectForKeyedSubscript:@"silence"];
  [v10 setObject:v14 forKeyedSubscript:@"silence_duration"];

  v15 = [loggingCopy objectForKeyedSubscript:@"quiet"];
  [v10 setObject:v15 forKeyedSubscript:@"quiet_duration"];

  v16 = [loggingCopy objectForKeyedSubscript:@"audible"];
  [v10 setObject:v16 forKeyedSubscript:@"audible_duration"];

  v17 = [loggingCopy objectForKeyedSubscript:@"node"];
  [v10 setObject:v17 forKeyedSubscript:@"node"];

  v18 = [loggingCopy objectForKeyedSubscript:@"pid"];
  [v10 setObject:v18 forKeyedSubscript:@"pid"];

  v19 = [loggingCopy objectForKeyedSubscript:@"reporterID"];

  [v10 setObject:v19 forKeyedSubscript:@"reporterID"];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [v10 setObject:monotonicDate forKeyedSubscript:@"timestampEnd"];

  [(PLOperator *)self logEntry:v10];
}

- (void)logEventIntervalShazamRecording:(id)recording
{
  v4 = *MEMORY[0x277D3F5D8];
  recordingCopy = recording;
  v13 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"ShazamRecording"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13 withRawData:recordingCopy];
  v7 = [recordingCopy objectForKeyedSubscript:@"timestamp"];
  convertFromSystemToMonotonic = [v7 convertFromSystemToMonotonic];
  [v6 setEntryDate:convertFromSystemToMonotonic];

  v9 = [recordingCopy objectForKeyedSubscript:@"timestampEnd"];

  convertFromSystemToMonotonic2 = [v9 convertFromSystemToMonotonic];
  [v6 setObject:convertFromSystemToMonotonic2 forKeyedSubscript:@"timestampEnd"];

  v11 = [v6 objectForKeyedSubscript:@"timestampEnd"];

  if (!v11)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [v6 setObject:monotonicDate forKeyedSubscript:@"timestampEnd"];
  }

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventIntervalCoreAudioVAD:(id)d
{
  v72[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [dCopy objectForKeyedSubscript:@"State"];
  intValue = [v5 intValue];

  v7 = [(PLOperator *)PLAudioAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"CoreAudioVAD"];
  v8 = MEMORY[0x277CCACA8];
  v9 = [dCopy objectForKeyedSubscript:@"ClientID"];
  v10 = [dCopy objectForKeyedSubscript:@"Client"];
  v11 = [v8 stringWithFormat:@"EndTime IS NULL AND ClientID = '%@' AND Client = '%@'", v9, v10];
  v72[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:1];

  storage = [(PLOperator *)self storage];
  v14 = [storage lastEntryForKey:v7 withFilters:v12];

  if (intValue == 1)
  {
    if (v14)
    {
      v15 = PLLogAudio();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109378;
        LODWORD(v71[0]) = 1;
        WORD2(v71[0]) = 2112;
        *(v71 + 6) = v14;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "CoreAudioVad Active Session state = %d, will update existing table openEntry = %@", buf, 0x12u);
      }

      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __45__PLAudioAgent_logEventIntervalCoreAudioVAD___block_invoke;
      v67[3] = &unk_278259658;
      v68 = v14;
      v69 = dCopy;
      [(PLOperator *)self updateEntry:v68 withBlock:v67];

      v16 = v68;
    }

    else
    {
      selfCopy = self;
      v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:dCopy];
      v19 = MEMORY[0x277CBEAA8];
      v20 = [dCopy objectForKeyedSubscript:@"StartTime"];
      [v20 doubleValue];
      v21 = [v19 dateWithTimeIntervalSince1970:?];

      convertFromSystemToMonotonic = [v21 convertFromSystemToMonotonic];

      v23 = MEMORY[0x277CBEAA8];
      v24 = convertFromSystemToMonotonic;
      [convertFromSystemToMonotonic timeIntervalSince1970];
      v26 = [v23 dateWithTimeIntervalSince1970:round(v25 / 60.0) * 60.0];
      [v16 setObject:v26 forKeyedSubscript:@"StartTime"];

      v27 = MEMORY[0x277CCABB0];
      v28 = [dCopy objectForKeyedSubscript:@"LifespanInSeconds"];
      v29 = [v27 numberWithDouble:{round(objc_msgSend(v28, "intValue") / 60.0) * 60.0}];
      [v16 setObject:v29 forKeyedSubscript:@"LifespanInSeconds"];

      v30 = MEMORY[0x277D3F258];
      v31 = MEMORY[0x277CCACA8];
      v32 = [dCopy objectForKeyedSubscript:@"SID"];
      v33 = [v31 stringWithFormat:@"%@", v32];
      v34 = [v30 hashString:v33];
      [v16 setObject:v34 forKeyedSubscript:@"SID"];

      v35 = PLLogAudio();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109378;
        LODWORD(v71[0]) = 1;
        WORD2(v71[0]) = 2112;
        *(v71 + 6) = v16;
        _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "CoreAudioVad Active Session state = %d, creating new table entry =  %@", buf, 0x12u);
      }

      [(PLOperator *)selfCopy logEntry:v16];
    }
  }

  else
  {
    v17 = PLLogAudio();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
    if (v14)
    {
      if (v18)
      {
        *buf = 67109378;
        LODWORD(v71[0]) = intValue;
        WORD2(v71[0]) = 2112;
        *(v71 + 6) = v14;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "CoreAudioVad state = %d Found OpenEntry openEntry = %@", buf, 0x12u);
      }

      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __45__PLAudioAgent_logEventIntervalCoreAudioVAD___block_invoke_430;
      v64[3] = &unk_278259658;
      v65 = dCopy;
      v66 = v14;
      [(PLOperator *)self updateEntry:v66 withBlock:v64];

      v16 = v65;
    }

    else
    {
      selfCopy2 = self;
      if (v18)
      {
        *buf = 138412290;
        v71[0] = dCopy;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "CoreAudioVad Didn't find OpenEntry, payload = %@", buf, 0xCu);
      }

      v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:dCopy];
      v36 = MEMORY[0x277CBEAA8];
      v37 = [dCopy objectForKeyedSubscript:@"StartTime"];
      [v37 doubleValue];
      v38 = [v36 dateWithTimeIntervalSince1970:?];

      convertFromSystemToMonotonic2 = [v38 convertFromSystemToMonotonic];

      v40 = MEMORY[0x277CBEAA8];
      v61 = convertFromSystemToMonotonic2;
      [convertFromSystemToMonotonic2 timeIntervalSince1970];
      v42 = [v40 dateWithTimeIntervalSince1970:round(v41 / 60.0) * 60.0];
      [v16 setObject:v42 forKeyedSubscript:@"StartTime"];

      v43 = MEMORY[0x277CBEAA8];
      v44 = [dCopy objectForKeyedSubscript:@"EndTime"];
      [v44 doubleValue];
      v45 = [v43 dateWithTimeIntervalSince1970:?];

      convertFromSystemToMonotonic3 = [v45 convertFromSystemToMonotonic];

      v47 = MEMORY[0x277CBEAA8];
      v48 = convertFromSystemToMonotonic3;
      [convertFromSystemToMonotonic3 timeIntervalSince1970];
      v50 = [v47 dateWithTimeIntervalSince1970:round(v49 / 60.0) * 60.0];
      [v16 setObject:v50 forKeyedSubscript:@"EndTime"];

      v51 = MEMORY[0x277CCABB0];
      v52 = [dCopy objectForKeyedSubscript:@"LifespanInSeconds"];
      v53 = [v51 numberWithDouble:{round(objc_msgSend(v52, "intValue") / 60.0) * 60.0}];
      [v16 setObject:v53 forKeyedSubscript:@"LifespanInSeconds"];

      v54 = MEMORY[0x277D3F258];
      v55 = MEMORY[0x277CCACA8];
      v56 = [dCopy objectForKeyedSubscript:@"SID"];
      v57 = [v55 stringWithFormat:@"%@", v56];
      v58 = [v54 hashString:v57];
      [v16 setObject:v58 forKeyedSubscript:@"SID"];

      v59 = PLLogAudio();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v71[0] = v16;
        _os_log_debug_impl(&dword_21A4C6000, v59, OS_LOG_TYPE_DEBUG, "CoreAudioVad Didn't find OpenEntry calling logEntry entry = %@", buf, 0xCu);
      }

      [(PLOperator *)selfCopy2 logEntry:v16];
    }
  }

  v60 = *MEMORY[0x277D85DE8];
}

void __45__PLAudioAgent_logEventIntervalCoreAudioVAD___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"LifespanInSeconds"];
  v4 = [v2 numberWithDouble:{round(objc_msgSend(v3, "intValue") / 60.0) * 60.0}];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"LifespanInSeconds"];

  v5 = PLLogAudio();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "CoreAudioVad updated openEntry = %@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __45__PLAudioAgent_logEventIntervalCoreAudioVAD___block_invoke_430(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEAA8];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"EndTime"];
  [v3 doubleValue];
  v4 = [v2 dateWithTimeIntervalSince1970:?];

  v5 = [v4 convertFromSystemToMonotonic];

  v6 = MEMORY[0x277CBEAA8];
  [v5 timeIntervalSince1970];
  v8 = [v6 dateWithTimeIntervalSince1970:round(v7 / 60.0) * 60.0];
  [*(a1 + 40) setObject:v8 forKeyedSubscript:@"EndTime"];

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"State"];
  [*(a1 + 40) setObject:v9 forKeyedSubscript:@"State"];

  v10 = MEMORY[0x277CCABB0];
  v11 = [*(a1 + 32) objectForKeyedSubscript:@"LifespanInSeconds"];
  v12 = [v10 numberWithDouble:{round(objc_msgSend(v11, "intValue") / 60.0) * 60.0}];
  [*(a1 + 40) setObject:v12 forKeyedSubscript:@"LifespanInSeconds"];

  v13 = PLLogAudio();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 40);
    v16 = 138412290;
    v17 = v15;
    _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "CoreAudioVad updateEntry:openEntry = %@", &v16, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldModelAudioPowerSpeakerTemp
{
  if (qword_2811F4D88 != -1)
  {
    dispatch_once(&qword_2811F4D88, &__block_literal_global_432);
  }

  return _MergedGlobals_1_37;
}

uint64_t __48__PLAudioAgent_shouldModelAudioPowerSpeakerTemp__block_invoke()
{
  result = [MEMORY[0x277D3F208] isiPad];
  if (result)
  {
    if ([MEMORY[0x277D3F208] isDeviceClass:100032] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100033) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100034) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100035) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100036) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100037) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100038) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100039) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100040) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100041) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100042))
    {
      result = 1;
    }

    else
    {
      result = [MEMORY[0x277D3F208] isDeviceClass:100043];
    }
  }

  _MergedGlobals_1_37 = result;
  return result;
}

- (double)modelAudioPowerWithVolume:(double)volume
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    return 0.0;
  }

  v6 = MEMORY[0x277D3F258];
  audioPowerModel = [(PLAudioAgent *)self audioPowerModel];
  [v6 scaledPowerBasedOnPoint:audioPowerModel withPowerModel:volume];
  v9 = v8;

  return v9;
}

- (void)modelAudioPowerCodec:(id)codec
{
  codecCopy = codec;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v4 = 0.0;
    if ([(PLAudioAgent *)self speakerIsPlayingAudio])
    {
      v5 = [MEMORY[0x277D3F208] kPLAudioClassOfDevice] - 1005001;
      if (v5 > 0x30)
      {
        v4 = 35.0;
      }

      else
      {
        v4 = dbl_21AA21F40[v5];
      }
    }

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0] createPowerEventForwardWithRootNodeID:55 withPower:codecCopy withStartDate:v4];
  }
}

- (void)modelAudioPowerSpeaker:(id)speaker
{
  speakerCopy = speaker;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    if (!speakerCopy)
    {
      goto LABEL_10;
    }

    entryDate = [speakerCopy entryDate];

    if (!entryDate)
    {
      goto LABEL_10;
    }

    if ([(PLAudioAgent *)self speakerIsPlayingAudio])
    {
      lastAudioStateChangeDate = [(PLOperator *)PLAudioAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SpeakerAmp"];
      storage = [(PLOperator *)self storage];
      v7 = [storage lastEntryForKey:lastAudioStateChangeDate];

      entryDate2 = [speakerCopy entryDate];
      v9 = [entryDate2 dateByAddingTimeInterval:-60.0];

      mEMORY[0x277D3F0C0]2 = [v9 laterDate:self->_lastAudioStateChangeDate];

      if (v7)
      {
        entryDate3 = [v7 entryDate];
        v12 = [mEMORY[0x277D3F0C0]2 laterDate:entryDate3];

        mEMORY[0x277D3F0C0]2 = v12;
      }

      v13 = [speakerCopy objectForKeyedSubscript:@"Avg Watts Modelled"];
      [v13 doubleValue];
      [(PLAudioAgent *)self convertSpeakerProtectionModeledPowerToTotalSpeakerPower:v14 * 1000.0];
      v16 = v15;

      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      [mEMORY[0x277D3F0C0] createPowerEventForwardWithRootNodeID:15 withPower:mEMORY[0x277D3F0C0]2 withStartDate:v16];

      goto LABEL_11;
    }

    v18 = [speakerCopy objectForKeyedSubscript:@"Avg Watts Modelled"];
    if (!v18 || (v19 = v18, [speakerCopy objectForKeyedSubscript:@"Avg Watts Modelled"], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "doubleValue"), v22 = v21, v20, v19, v22 <= 0.0))
    {
LABEL_10:
      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
      lastAudioStateChangeDate = [(PLAudioAgent *)self lastAudioStateChangeDate];
      [mEMORY[0x277D3F0C0]2 createPowerEventForwardWithRootNodeID:15 withPower:lastAudioStateChangeDate withStartDate:0.0];
LABEL_11:
    }
  }

  MEMORY[0x2821F96F8]();
}

- (double)convertSpeakerProtectionModeledPowerToTotalSpeakerPower:(double)power
{
  result = 0.0;
  if (power > 0.0)
  {
    if ([MEMORY[0x277D3F208] isHomePod])
    {
LABEL_3:
      result = power;
    }

    else
    {
      v5 = [MEMORY[0x277D3F208] kPLAudioClassOfDevice] - 1005001;
      result = power;
      switch(v5)
      {
        case 0:
          v21 = log(power + 0.1);
          v22 = 1.5;
          goto LABEL_55;
        case 1:
          v15 = power * -0.0014;
          v16 = 3.03;
          goto LABEL_47;
        case 2:
          v11 = log(power * 0.005 + 1.0);
          v12 = 810.0;
          goto LABEL_70;
        case 3:
          v8 = log(power * 0.002 + 1.0);
          v9 = power * 0.4;
          v10 = 110.0;
          goto LABEL_72;
        case 4:
          v21 = log(power * 0.05 + 1.0);
          v22 = 10.0;
LABEL_55:
          result = power + v21 * v22;
          break;
        case 5:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v6 = power * 1.51 + power * -0.0003 * power;
          v17 = 0x4048000000000000;
          goto LABEL_68;
        case 6:
        case 7:
          result = 0.0;
          if (power < 0.001)
          {
            break;
          }

          v6 = power * 0.96 + power * -0.00009 * power;
          v7 = 97.0;
          goto LABEL_75;
        case 8:
          v8 = log(power + 1.0);
          v9 = power * 0.5;
          v10 = 6.0;
          goto LABEL_72;
        case 9:
          v15 = power * -0.0013;
          v16 = 1.75;
LABEL_47:
          result = power * v16 + v15 * power;
          break;
        case 10:
          v8 = log(power + 1.0);
          v9 = power * 0.725;
          v10 = 9.0;
          goto LABEL_72;
        case 11:
          v8 = log(power + 1.0);
          v9 = power * 1.2;
          v10 = 10.0;
          goto LABEL_72;
        case 12:
        case 13:
          v11 = log(power * 0.006 + 1.0);
          v12 = 410.0;
          goto LABEL_70;
        case 14:
          v11 = log(power * 0.007 + 1.0);
          v12 = 450.0;
LABEL_70:
          result = v11 * v12;
          break;
        case 15:
          v8 = log(power * 0.9 + 1.0);
          v9 = power * 1.35;
          v10 = 13.0;
          goto LABEL_72;
        case 16:
        case 17:
          v8 = log(power * 8.0 + 1.0);
          v9 = power * 1.07;
          v10 = 3.5;
          goto LABEL_72;
        case 18:
        case 19:
        case 23:
        case 26:
        case 30:
        case 38:
        case 39:
        case 40:
        case 46:
          break;
        case 20:
          v18 = log(power + 1.0);
          v19 = power * 1.075;
          v20 = 7.0;
          goto LABEL_61;
        case 21:
          v18 = log(power + 1.0);
          v19 = power * 0.97;
          v20 = 5.0;
LABEL_61:
          result = v19 + v18 * v20;
          goto LABEL_62;
        case 22:
          result = power + log(power * 5.0 + 1.0) * 10.0;
LABEL_62:
          if (result < 0.0)
          {
            result = 0.0;
          }

          break;
        case 24:
          v8 = log(power + 1.0);
          v9 = power * 1.5;
          v10 = 11.0;
          goto LABEL_72;
        case 25:
          v8 = log(power + 1.0);
          v9 = power * 1.38;
          v10 = 7.0;
LABEL_72:
          result = v9 + v8 * v10;
          break;
        case 27:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v6 = power * 1.87 + power * -0.0002 * power;
          v7 = 95.26;
          goto LABEL_75;
        case 28:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v6 = power * 1.89 + power * -0.0001 * power;
          v7 = -17.5;
          goto LABEL_75;
        case 29:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v6 = power * 1.44 + power * -0.000167 * power;
          v7 = 15.0;
          goto LABEL_75;
        case 31:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v6 = power * 1.81 + power * -0.0000852 * power;
          v7 = 123.12;
          goto LABEL_75;
        case 32:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v6 = power * 1.85 + power * -0.00018 * power;
          v7 = 22.35;
          goto LABEL_75;
        case 33:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v6 = power * 1.16 + power * 0.0000309 * power;
          v7 = -46.18;
          goto LABEL_75;
        case 34:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v6 = power * 1.015 + power * 0.0000866 * power;
          v7 = -23.0;
          goto LABEL_75;
        case 35:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v6 = power * 1.19 + power * -0.0000202 * power;
          v17 = 0xC049000000000000;
LABEL_68:
          v7 = *&v17;
          goto LABEL_75;
        case 36:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v13 = -55.2;
          v14 = 1.404;
          goto LABEL_59;
        case 37:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v6 = power * 0.9261 + power * 0.00007412 * power;
          v7 = 38.265;
          goto LABEL_75;
        case 41:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v6 = power * 1.0808 + power * -0.0003205 * power;
          v7 = 14.1368;
          goto LABEL_75;
        case 42:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v6 = power * 1.1128 + power * -0.0002358 * power;
          v7 = 13.3804;
          goto LABEL_75;
        case 43:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v6 = power * 1.6664 + power * -0.0003566 * power;
          v7 = -268.816;
          goto LABEL_75;
        case 44:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v6 = power * 1.6392 + power * -0.0001588 * power;
          v7 = 6.333;
          goto LABEL_75;
        case 45:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v13 = -43.623;
          v14 = 1.1983;
          goto LABEL_59;
        case 47:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v13 = 17.34;
          v14 = 0.9685;
LABEL_59:
          result = v13 + power * v14;
          break;
        case 48:
          result = 0.0;
          if (power < 0.1)
          {
            break;
          }

          v6 = power * 0.9261 + power * 0.00007412 * power;
          v7 = 18.265;
LABEL_75:
          result = v6 + v7;
          break;
        default:
          goto LABEL_3;
      }
    }

    if (result > 3000.0)
    {
      result = 3000.0;
    }

    if (result <= 0.0)
    {
      return 0.0;
    }
  }

  return result;
}

- (double)audioPowerForRoute:(id)route forVolume:(double)volume
{
  v64 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  v8 = 0.0;
  if (routeCopy && (isHomePod & 1) == 0)
  {
    v9 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"audio"];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F208], "kPLAudioClassOfDevice")}];
    stringValue = [v10 stringValue];

    allKeys = [v9 allKeys];
    v13 = [allKeys containsString:stringValue];

    if (v13)
    {
      if ([(PLAudioAgent *)self accessoryPowerState]== 4 && (([(__CFString *)routeCopy isEqual:@"Headphone"]& 1) != 0 || [(__CFString *)routeCopy isEqual:@"Headset"]))
      {
        v14 = [v9 objectForKeyedSubscript:stringValue];
        v15 = v14;
        v16 = @"Lightning";
      }

      else if ([(PLAudioAgent *)self accessoryPowerState]== 6 && (([(__CFString *)routeCopy isEqual:@"Headphone"]& 1) != 0 || [(__CFString *)routeCopy isEqual:@"Headset"]))
      {
        v14 = [v9 objectForKeyedSubscript:stringValue];
        v15 = v14;
        v16 = @"Lightning_VoltageMonitor";
      }

      else
      {
        v24 = [(__CFString *)routeCopy isEqual:@"Speaker"];
        v14 = [v9 objectForKeyedSubscript:stringValue];
        v15 = v14;
        if (v24)
        {
          v16 = @"Speaker";
        }

        else
        {
          v16 = routeCopy;
        }
      }

      v18 = [v14 objectForKeyedSubscript:v16];

      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        allKeys2 = [v18 allKeys];
        v26 = [allKeys2 sortedArrayUsingSelector:sel_compareFloat_];

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        routeCopy = v26;
        v27 = [routeCopy countByEnumeratingWithState:&v55 objects:v61 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = 0;
          v30 = *v56;
LABEL_25:
          v31 = 0;
          v32 = v29;
          while (1)
          {
            if (*v56 != v30)
            {
              objc_enumerationMutation(routeCopy);
            }

            v33 = *(*(&v55 + 1) + 8 * v31);
            [v33 doubleValue];
            v35 = v34;
            v29 = v33;
            if (v35 > volume)
            {
              break;
            }

            ++v31;
            v32 = v29;
            if (v28 == v31)
            {
              v28 = [routeCopy countByEnumeratingWithState:&v55 objects:v61 count:16];
              if (v28)
              {
                goto LABEL_25;
              }

              goto LABEL_41;
            }
          }

          if (!v29)
          {
            goto LABEL_42;
          }

          v41 = [v18 objectForKeyedSubscript:v32];
          [v41 doubleValue];
          v43 = v42;

          v44 = [v18 objectForKeyedSubscript:v29];
          [v44 doubleValue];
          v46 = v45;

          [v32 doubleValue];
          v48 = volume - v47;
          [v29 doubleValue];
          v50 = v49;
          [v32 doubleValue];
          v8 = v43 + v48 / (v50 - v51) * (v46 - v43);
        }

        else
        {
          v29 = 0;
LABEL_41:

          v32 = v29;
LABEL_42:
          v29 = [v18 objectForKeyedSubscript:v32];
          [v29 doubleValue];
          v8 = v52;
        }
      }

      else
      {
        if (![MEMORY[0x277D3F180] debugEnabled])
        {
          goto LABEL_46;
        }

        v36 = objc_opt_class();
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __45__PLAudioAgent_audioPowerForRoute_forVolume___block_invoke_456;
        v59[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v59[4] = v36;
        if (qword_2811F4D98 != -1)
        {
          dispatch_once(&qword_2811F4D98, v59);
        }

        if (byte_2811F4D72 != 1)
        {
          goto LABEL_46;
        }

        routeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"No audio power model exists for audio class: %@ and route: %@", stringValue, routeCopy];
        v37 = MEMORY[0x277D3F178];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLAudioAgent.m"];
        lastPathComponent = [v38 lastPathComponent];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAudioAgent audioPowerForRoute:forVolume:]"];
        [v37 logMessage:routeCopy fromFile:lastPathComponent fromFunction:v40 fromLineNumber:1868];

        v32 = PLLogCommon();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v63 = routeCopy;
          _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_47;
      }

      v17 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__PLAudioAgent_audioPowerForRoute_forVolume___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v17;
      if (qword_2811F4D90 != -1)
      {
        dispatch_once(&qword_2811F4D90, block);
      }

      if (byte_2811F4D71 != 1)
      {
        goto LABEL_47;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"No audio power model exists for audio class: %@", stringValue];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLAudioAgent.m"];
      lastPathComponent2 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAudioAgent audioPowerForRoute:forVolume:]"];
      [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:1849];

      routeCopy = PLLogCommon();
      if (os_log_type_enabled(routeCopy, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v63 = v18;
        _os_log_debug_impl(&dword_21A4C6000, routeCopy, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

LABEL_46:
LABEL_47:
  }

  v53 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __45__PLAudioAgent_audioPowerForRoute_forVolume___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4D71 = result;
  return result;
}

uint64_t __45__PLAudioAgent_audioPowerForRoute_forVolume___block_invoke_456(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4D72 = result;
  return result;
}

- (void)closeAudioAccountingEvents
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    v3 = MEMORY[0x277CBEC10];
    [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:7 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:monotonicDate];

    mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0]2 createDistributionEventForwardWithDistributionID:26 withChildNodeNameToWeight:v3 withStartDate:monotonicDate];
  }
}

- (void)createAudioAccountingEvents:(id)events
{
  eventsCopy = events;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v3 = [eventsCopy objectForKeyedSubscript:@"ApplicationName"];
    if (!v3)
    {
      goto LABEL_5;
    }

    v4 = v3;
    v5 = [eventsCopy objectForKeyedSubscript:@"Operation"];
    v6 = [v5 description];
    v7 = [v6 isEqualToString:@"AudioPlayback_Start"];

    if (v7)
    {
      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      v9 = [eventsCopy objectForKeyedSubscript:@"ApplicationName"];
      entryDate = [eventsCopy entryDate];
      [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:7 withAddingChildNodeName:v9 withStartDate:entryDate];
    }

    else
    {
LABEL_5:
      v11 = [eventsCopy objectForKeyedSubscript:@"Operation"];
      v12 = [v11 description];
      v13 = [v12 isEqualToString:@"AudioPlayback_Stop"];

      if (!v13)
      {
        goto LABEL_8;
      }

      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      v9 = [eventsCopy objectForKeyedSubscript:@"ApplicationName"];
      entryDate = [eventsCopy entryDate];
      [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:7 withRemovingChildNodeName:v9 withStartDate:entryDate];
    }
  }

LABEL_8:
}

- (void)createAirPlayAccountingEvents:(id)events
{
  v40[1] = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    goto LABEL_15;
  }

  v4 = [eventsCopy objectForKeyedSubscript:@"AudioRoute"];
  v5 = [v4 description];
  if ([v5 isEqualToString:@"AirPlay"])
  {
    goto LABEL_5;
  }

  v6 = [eventsCopy objectForKeyedSubscript:@"AudioRoute"];
  v7 = [v6 description];
  if ([v7 isEqualToString:@"Airtunes"])
  {

LABEL_5:
LABEL_6:
    v8 = [eventsCopy objectForKeyedSubscript:@"ApplicationName"];
    if (v8)
    {
      v9 = v8;
      v10 = [eventsCopy objectForKeyedSubscript:@"Operation"];

      if (v10)
      {
        v11 = [eventsCopy objectForKeyedSubscript:@"Operation"];
        v12 = [v11 description];
        v13 = [v12 isEqualToString:@"AudioPlayback_Stop"];

        mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
        entryDate = [eventsCopy entryDate];
        if (!v13)
        {
          [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C18850 withStartDate:entryDate];

          mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
          v30 = [eventsCopy objectForKeyedSubscript:@"ApplicationName"];
          v39 = v30;
          v40[0] = &unk_282C1C548;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
          entryDate2 = [eventsCopy entryDate];
          [mEMORY[0x277D3F0C0]2 createDistributionEventForwardWithDistributionID:36 withChildNodeNameToWeight:v31 withStartDate:entryDate2];

          mEMORY[0x277D3F0C0]3 = [MEMORY[0x277D3F0C0] sharedInstance];
          v34 = [eventsCopy objectForKeyedSubscript:@"ApplicationName"];
          v38 = v34;
          v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
          entryDate3 = [eventsCopy entryDate];
          [mEMORY[0x277D3F0C0]3 createQualificationEventForwardWithQualificationID:3 withChildNodeNames:v35 withStartDate:entryDate3];

          goto LABEL_15;
        }

        [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C18828 withStartDate:entryDate];

        mEMORY[0x277D3F0C0]4 = [MEMORY[0x277D3F0C0] sharedInstance];
        entryDate4 = [eventsCopy entryDate];
        [mEMORY[0x277D3F0C0]4 createDistributionEventForwardWithDistributionID:36 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:entryDate4];

        v18 = MEMORY[0x277D3F0C0];
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

  v19 = [eventsCopy objectForKeyedSubscript:@"AudioRoute"];
  v20 = [v19 description];
  v21 = [v20 isEqualToString:@"AirTunes"];

  if (v21)
  {
    goto LABEL_6;
  }

  v22 = [eventsCopy objectForKeyedSubscript:@"AudioRoute"];

  if (v22)
  {
    mEMORY[0x277D3F0C0]5 = [MEMORY[0x277D3F0C0] sharedInstance];
    entryDate5 = [eventsCopy entryDate];
    [mEMORY[0x277D3F0C0]5 createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C18878 withStartDate:entryDate5];

    mEMORY[0x277D3F0C0]6 = [MEMORY[0x277D3F0C0] sharedInstance];
    entryDate6 = [eventsCopy entryDate];
    [mEMORY[0x277D3F0C0]6 createDistributionEventForwardWithDistributionID:36 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:entryDate6];

    v18 = MEMORY[0x277D3F0C0];
LABEL_13:
    sharedInstance = [v18 sharedInstance];
    entryDate7 = [eventsCopy entryDate];
    [sharedInstance createQualificationEventForwardWithQualificationID:3 withChildNodeNames:MEMORY[0x277CBEBF8] withStartDate:entryDate7];
  }

LABEL_15:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)createCarPlayAccountingEvents:(id)events
{
  eventsCopy = events;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v3 = [eventsCopy objectForKeyedSubscript:@"AudioRoute"];
    v4 = [v3 description];
    v5 = [v4 isEqualToString:@"CarAudioOutput"];

    if (!v5)
    {
      mEMORY[0x277D3F0C0] = [eventsCopy objectForKeyedSubscript:@"AudioRoute"];
LABEL_10:

      goto LABEL_11;
    }

    v6 = [eventsCopy objectForKeyedSubscript:@"ApplicationName"];
    if (v6)
    {
      v7 = v6;
      v8 = [eventsCopy objectForKeyedSubscript:@"Operation"];

      if (v8)
      {
        v9 = [eventsCopy objectForKeyedSubscript:@"Operation"];
        v10 = [v9 description];
        v11 = [v10 isEqualToString:@"AudioPlayback_Stop"];

        mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
        v13 = [eventsCopy objectForKeyedSubscript:@"ApplicationName"];
        entryDate = [eventsCopy entryDate];
        if (v11)
        {
          [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:26 withRemovingChildNodeName:v13 withStartDate:entryDate];
        }

        else
        {
          [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:26 withAddingChildNodeName:v13 withStartDate:entryDate];
        }

        goto LABEL_10;
      }
    }
  }

LABEL_11:
}

- (void)createBluetoothAccountingEvents:(id)events
{
  v36 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    goto LABEL_24;
  }

  v4 = [eventsCopy objectForKeyedSubscript:@"AudioRoute"];
  v5 = [v4 description];
  if ([v5 isEqualToString:@"HeadsetBT"])
  {

LABEL_5:
    v9 = [eventsCopy objectForKeyedSubscript:@"ApplicationName"];
    if (v9)
    {
      v10 = v9;
      v11 = [eventsCopy objectForKeyedSubscript:@"Operation"];

      if (v11)
      {
        v12 = [eventsCopy objectForKeyedSubscript:@"Operation"];
        v13 = [v12 description];
        v14 = [v13 isEqualToString:@"AudioPlayback_Stop"];

        mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
        mEMORY[0x277D3F0C0]4 = mEMORY[0x277D3F0C0];
        if (!v14)
        {
          v17 = [mEMORY[0x277D3F0C0] currentDistributionEventForwardWithDistributionID:8];

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          mEMORY[0x277D3F0C0]4 = v17;
          v18 = [mEMORY[0x277D3F0C0]4 countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v32;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v32 != v20)
                {
                  objc_enumerationMutation(mEMORY[0x277D3F0C0]4);
                }

                v22 = *(*(&v31 + 1) + 8 * i);
                if (([v22 isEqualToString:{@"Hotspot", v31}] & 1) == 0 && (objc_msgSend(v22, "isEqualToString:", @"IDSWatchBT") & 1) == 0)
                {
                  mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
                  entryDate = [eventsCopy entryDate];
                  [mEMORY[0x277D3F0C0]2 createDistributionEventForwardWithDistributionID:8 withRemovingChildNodeName:v22 withStartDate:entryDate];
                }
              }

              v19 = [mEMORY[0x277D3F0C0]4 countByEnumeratingWithState:&v31 objects:v35 count:16];
            }

            while (v19);
          }

          mEMORY[0x277D3F0C0]3 = [MEMORY[0x277D3F0C0] sharedInstance];
          entryDate3 = [eventsCopy objectForKeyedSubscript:@"ApplicationName"];
          entryDate2 = [eventsCopy entryDate];
          [mEMORY[0x277D3F0C0]3 createDistributionEventForwardWithDistributionID:8 withAddingChildNodeName:entryDate3 withStartDate:entryDate2];

          goto LABEL_23;
        }

LABEL_22:
        mEMORY[0x277D3F0C0]3 = [eventsCopy objectForKeyedSubscript:@"ApplicationName"];
        entryDate3 = [eventsCopy entryDate];
        [mEMORY[0x277D3F0C0]4 createDistributionEventForwardWithDistributionID:8 withRemovingChildNodeName:mEMORY[0x277D3F0C0]3 withStartDate:entryDate3];
LABEL_23:

        goto LABEL_24;
      }
    }

    goto LABEL_24;
  }

  v6 = [eventsCopy objectForKeyedSubscript:@"AudioRoute"];
  v7 = [v6 description];
  v8 = [v7 isEqualToString:@"HeadphonesBT"];

  if (v8)
  {
    goto LABEL_5;
  }

  v28 = [eventsCopy objectForKeyedSubscript:@"AudioRoute"];

  if (v28)
  {
    v29 = [eventsCopy objectForKeyedSubscript:@"ApplicationName"];

    if (v29)
    {
      mEMORY[0x277D3F0C0]4 = [MEMORY[0x277D3F0C0] sharedInstance];
      goto LABEL_22;
    }
  }

LABEL_24:

  v30 = *MEMORY[0x277D85DE8];
}

@end