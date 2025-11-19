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
- (BOOL)initDefaultAudioDevice:(BOOL)a3;
- (BOOL)shouldModelAudioPowerSpeakerTemp;
- (PLAudioAgent)init;
- (double)audioPowerForRoute:(id)a3 forVolume:(double)a4;
- (double)convertSpeakerProtectionModeledPowerToTotalSpeakerPower:(double)a3;
- (double)modelAudioPowerWithVolume:(double)a3;
- (id)BTEndpointType;
- (id)activeRoute;
- (id)buildCallBack:(id)a3 withGroup:(BOOL)a4 withHandler:(id)a5;
- (id)nowPlayingAppBundleID:(id)a3;
- (id)returnVolumeOrOutPutCategory:(int)a3;
- (void)closeAudioAccountingEvents;
- (void)createAirPlayAccountingEvents:(id)a3;
- (void)createAudioAccountingEvents:(id)a3;
- (void)createBluetoothAccountingEvents:(id)a3;
- (void)createCarPlayAccountingEvents:(id)a3;
- (void)handleLightningStatusCallback:(id)a3;
- (void)handleNowPlayingApplicationIsPlayingDidChange:(id)a3;
- (void)initOperatorDependancies;
- (void)log;
- (void)logEventForwardAudioDevice:(id)a3;
- (void)logEventForwardHapticsPrewarmCount:(id)a3;
- (void)logEventForwardHapticsRunningCount:(id)a3;
- (void)logEventForwardMutedTalkerDetection:(id)a3;
- (void)logEventForwardOutput;
- (void)logEventForwardRouting;
- (void)logEventForwardSing:(id)a3;
- (void)logEventForwardSongTransitions:(id)a3;
- (void)logEventIntervalCoreAudioVAD:(id)a3;
- (void)logEventIntervalRMSLogging:(id)a3;
- (void)logEventIntervalShazamRecording:(id)a3;
- (void)logEventPointAudioApp:(id)a3;
- (void)logEventPointHaptics:(id)a3;
- (void)logEventPointHapticsAssertion:(id)a3;
- (void)logEventPointSpeakerAmp:(id)a3;
- (void)modelAudioPower;
- (void)modelAudioPowerCodec:(id)a3;
- (void)modelAudioPowerSpeaker:(id)a3;
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
  v4 = [(PLAudioAgent *)self volume];
  [v3 setObject:v4 forKeyedSubscript:@"Volume"];

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
  v5 = [(PLOperator *)self storage];
  v6 = [v5 lastEntryForKey:v46];

  v7 = [(PLOperator *)self storage];
  v8 = [v7 lastEntryForKey:v4];

  v9 = [(PLAudioAgent *)self speakerIsPlayingAudio];
  v10 = [(PLAudioAgent *)self headsetIsPlayingAudio];
  if (v6 | v8)
  {
    v11 = v10;
    if (v6)
    {
      if (v8)
      {
        v12 = [v8 entryDate];
        v13 = [v6 entryDate];
        v14 = [v12 laterDate:v13];

        goto LABEL_10;
      }

      v15 = v6;
    }

    else
    {
      v15 = v8;
    }

    v14 = [v15 entryDate];
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

    v22 = ([(PLAudioAgent *)self speakerIsPlayingAudio]^ 1) & v9;
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

        v39 = [MEMORY[0x277D3F0C0] sharedInstance];
        [v39 createPowerEventForwardWithRootNodeID:15 withPower:v14 withStartDate:v38];
      }
    }

    else
    {
      objc_storeStrong(&self->_lastAudioStateChangeDate, v14);
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

          v32 = [MEMORY[0x277D3F0C0] sharedInstance];
          [v32 createPowerEventForwardWithRootNodeID:15 withPower:v14 withStartDate:v31];
        }
      }

      else
      {
        [(PLAudioAgent *)self modelAudioPowerSpeaker:0];
      }

      [(PLAudioAgent *)self modelAudioPowerCodec:v14];
    }

    if (v23 != [(PLAudioAgent *)self headsetIsPlayingAudio])
    {
      objc_storeStrong(&self->_lastAudioStateChangeDate, v14);
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

      v45 = [MEMORY[0x277D3F0C0] sharedInstance];
      [v45 createPowerEventForwardWithRootNodeID:14 withPower:v14 withStartDate:v40];
    }

    goto LABEL_32;
  }

  v14 = 0;
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

  v5 = [(PLAudioAgent *)self activeRoute];
  [v3 setObject:v5 forKeyedSubscript:@"ActiveRoute"];

  v6 = [(PLAudioAgent *)self outputCategory];
  [v3 setObject:v6 forKeyedSubscript:@"OutputCategory"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLAudioAgent headphonesConnected](self, "headphonesConnected")}];
  [v3 setObject:v7 forKeyedSubscript:@"HeadphonesConnected"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLAudioAgent headsetHasInput](self, "headsetHasInput")}];
  [v3 setObject:v8 forKeyedSubscript:@"HeadsetHasInput"];

  v9 = [(PLAudioAgent *)self BTEndpointType];
  [v3 setObject:v9 forKeyedSubscript:@"BTEndpointType"];

  v10 = [(PLAudioAgent *)self entryRoutingOld];
  v11 = [v3 compare:v10];

  if (v11)
  {
    [(PLOperator *)self logEntry:v3];
    [(PLAudioAgent *)self modelAudioPower];
  }

  [(PLAudioAgent *)self setEntryRoutingOld:v3];
}

- (BOOL)headphonesConnected
{
  v2 = [MEMORY[0x277D26E58] sharedInstance];
  v3 = [v2 attributeForKey:*MEMORY[0x277D26C08]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)BTEndpointType
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D26E58] sharedInstance];
  v3 = [v2 attributeForKey:*MEMORY[0x277D26C70]];

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
  v2 = [MEMORY[0x277D26E58] sharedInstance];
  v3 = [v2 attributeForKey:*MEMORY[0x277D26BF8]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)activeRoute
{
  v2 = 0;
  v3 = MEMORY[0x277D26AF8];
  do
  {
    v4 = [MEMORY[0x277D26E58] sharedInstance];
    v5 = [v4 attributeForKey:*v3];

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
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAudioAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"AudioApp";
  v3 = [a1 entryEventPointDefinitionAudioApp];
  v11[0] = v3;
  v10[1] = @"SpeakerAmp";
  v4 = [a1 entryEventPointDefinitionSpeakerAmp];
  v11[1] = v4;
  v10[2] = @"Haptics";
  v5 = [a1 entryEventPointDefinitionHaptics];
  v11[2] = v5;
  v10[3] = @"HapticsAssertion";
  v6 = [a1 entryEventPointDefinitionHapticsAssertion];
  v11[3] = v6;
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
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_StringFormat_withAppName];
  v24[0] = v20;
  v23[1] = @"AssertionID";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v24[1] = v18;
  v23[2] = @"AssertionName";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_StringFormat];
  v24[2] = v16;
  v23[3] = @"AudioRoute";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v24[3] = v5;
  v23[4] = @"Operation";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v24[4] = v7;
  v23[5] = @"PID";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v24[5] = v9;
  v23[6] = @"MirroringState";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_BoolFormat];
  v24[6] = v11;
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
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_RealFormat];
  v11 = v5;
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
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat_withBundleID];
  v16[0] = v6;
  v15[1] = @"EngineOnDuration";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v16[1] = v8;
  v15[2] = @"TimestampEnd";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_DateFormat];
  v16[2] = v10;
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
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"active_clients";
  v12[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v12[1] = v6;
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
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_BoolFormat];
  v23[0] = v19;
  v22[1] = @"OutputCategory";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat];
  v23[1] = v17;
  v22[2] = @"ActiveRoute";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat];
  v23[2] = v15;
  v22[3] = @"HeadphonesConnected";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_BoolFormat];
  v23[3] = v4;
  v22[4] = @"HeadsetHasInput";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_BoolFormat];
  v23[4] = v6;
  v22[5] = @"AudioSessionID";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v23[5] = v8;
  v22[6] = @"BTEndpointType";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat];
  v23[6] = v10;
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
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withBundleID];
  v12[1] = @"State";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v13[1] = v7;
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
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_BoolFormat];
  v10 = v4;
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
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v14[0] = v4;
  v13[1] = @"pid";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v14[1] = v6;
  v13[2] = @"subsystem";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v14[2] = v8;
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
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v17[0] = v4;
  v16[1] = @"pid";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v17[1] = v6;
  v16[2] = @"subsystem";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v17[2] = v8;
  v16[3] = @"process";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat_withProcessName];
  v17[3] = v10;
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
  v4 = [a1 entryEventIntervalDefinitionRMSLogging];
  v10[1] = v4;
  v9[2] = @"CoreAudioVAD";
  v5 = [a1 entryEventIntervalDefinitionCoreAudioVAD];
  v10[2] = v5;
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
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_DateFormat];
  v12[1] = @"BundleID";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat_withBundleID];
  v13[1] = v7;
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
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_DateFormat];
  v29[0] = v25;
  v28[1] = @"ApplicationName";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_StringFormat_withBundleID];
  v29[1] = v23;
  v28[2] = @"maxRms";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_RealFormat];
  v29[2] = v21;
  v28[3] = @"minRms";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_RealFormat];
  v29[3] = v19;
  v28[4] = @"silence_duration";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v29[4] = v17;
  v28[5] = @"quiet_duration";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v29[5] = v15;
  v28[6] = @"audible_duration";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v29[6] = v4;
  v28[7] = @"node";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v29[7] = v6;
  v28[8] = @"pid";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v29[8] = v8;
  v28[9] = @"reporterID";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v29[9] = v10;
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
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_StringFormat];
  v24[0] = v20;
  v23[1] = @"ClientID";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_StringFormat];
  v24[1] = v18;
  v23[2] = @"StartTime";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_DateFormat];
  v24[2] = v16;
  v23[3] = @"EndTime";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_DateFormat];
  v24[3] = v14;
  v23[4] = @"State";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v24[4] = v3;
  v23[5] = @"Device";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v24[5] = v5;
  v23[6] = @"SID";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v24[6] = v7;
  v23[7] = @"LifespanInSeconds";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v24[7] = v9;
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

- (id)nowPlayingAppBundleID:(id)a3
{
  v3 = [MEMORY[0x277D26E58] sharedInstance];
  v4 = [v3 attributeForKey:*MEMORY[0x277D26C28]];

  return v4;
}

- (void)handleNowPlayingApplicationIsPlayingDidChange:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v18 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"NowPlaying"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v18];
  v7 = [(PLAudioAgent *)self nowPlayingAppBundleID:v5];

  [v6 setObject:v7 forKeyedSubscript:@"BundleID"];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLAudioAgent audioIsActive](self, "audioIsActive")}];
  [v6 setObject:v8 forKeyedSubscript:@"State"];

  v9 = [(PLOperator *)self storage];
  v10 = [v9 lastEntryForKey:v18];

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = [v10 objectForKeyedSubscript:@"State"];
  v12 = [v11 integerValue];
  v13 = [v6 objectForKeyedSubscript:@"State"];
  if (v12 != [v13 integerValue])
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D26D40] object:0];

  v4 = [MEMORY[0x277D26E58] sharedInstance];
  v5 = [v4 attributeForKey:*MEMORY[0x277D26C80]];

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
        v24 = [(PLAudioAgent *)self nsOutputNotifications];
        v25 = objc_alloc(MEMORY[0x277D3F1F0]);
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __39__PLAudioAgent_setupAVSystemController__block_invoke;
        v68[3] = &unk_2782597E8;
        v68[4] = self;
        v26 = [v25 initWithOperator:self forNotification:v23 withBlock:v68];
        [v24 addObject:v26];
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
        v32 = [(PLAudioAgent *)self nsOutputNotifications];
        v33 = objc_alloc(MEMORY[0x277D3F1F0]);
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __39__PLAudioAgent_setupAVSystemController__block_invoke_220;
        v63[3] = &unk_2782597E8;
        v63[4] = self;
        v34 = [v33 initWithOperator:self forNotification:v31 withBlock:v63];
        [v32 addObject:v34];
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
        v40 = [(PLAudioAgent *)self nsOutputNotifications];
        v41 = objc_alloc(MEMORY[0x277D3F1F0]);
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __39__PLAudioAgent_setupAVSystemController__block_invoke_224;
        v58[3] = &unk_2782597E8;
        v58[4] = self;
        v42 = [v41 initWithOperator:self forNotification:v39 withBlock:v58];
        [v40 addObject:v42];
      }

      v36 = [v53 countByEnumeratingWithState:&v59 objects:v75 count:16];
    }

    while (v36);
  }

  [v51 addObjectsFromArray:obj];
  [v51 addObjectsFromArray:v55];
  [v51 addObjectsFromArray:v53];
  v43 = [MEMORY[0x277D26E58] sharedInstance];
  v44 = *MEMORY[0x277D26DD0];
  v57 = 0;
  [v43 setAttribute:v51 forKey:v44 error:&v57];
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

  v47 = [MEMORY[0x277CCAB98] defaultCenter];
  [v47 addObserver:self selector:sel_setupAVSystemController name:*MEMORY[0x277D26D40] object:0];

  v48 = [MEMORY[0x277CBEAA8] monotonicDate];
  lastAudioStateChangeDate = self->_lastAudioStateChangeDate;
  self->_lastAudioStateChangeDate = v48;

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

- (id)returnVolumeOrOutPutCategory:(int)a3
{
  v4 = 0;
  v5 = 0;
  v14 = -1.0;
  do
  {
    v6 = v4;
    v7 = [MEMORY[0x277D26E58] sharedInstance];
    v13 = v4;
    v8 = [v7 getActiveCategoryVolume:&v14 andName:&v13];
    v4 = v13;

    if (v8)
    {
      if (!a3)
      {
        v9 = [MEMORY[0x277CCABB0] numberWithDouble:v14 * 100.0];
        goto LABEL_8;
      }

      if (a3 == 1)
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

  else if (a3)
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
    v6 = [(PLAudioAgent *)self audioHardware];
    v7 = [v5 objectForKeyedSubscript:v6];
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
    v32 = [MEMORY[0x277D3F0C0] sharedInstance];
    v33 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v32 createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C18800 withStartDate:v33];

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

- (id)buildCallBack:(id)a3 withGroup:(BOOL)a4 withHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v6)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"GroupID_%@", v8];
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  v12 = objc_alloc(MEMORY[0x277D3F1A8]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__PLAudioAgent_buildCallBack_withGroup_withHandler___block_invoke;
  v16[3] = &unk_27825A338;
  v17 = v9;
  v13 = v9;
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

- (void)handleLightningStatusCallback:(id)a3
{
  v5 = [a3 objectForKey:@"entry"];
  v4 = [v5 objectForKey:@"IOAccessoryPowerMode"];
  -[PLAudioAgent setAccessoryPowerState:](self, "setAccessoryPowerState:", [v4 intValue]);
}

- (BOOL)initDefaultAudioDevice:(BOOL)a3
{
  v3 = a3;
  v5 = [AudioDevice alloc];
  if (!v3)
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

- (void)logEventPointAudioApp:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v19 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"AudioApp"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v19 withRawData:v5];

  v7 = [v6 objectForKeyedSubscript:@"PlaybackStartTime"];

  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"PlaybackStartTime"];
    [v8 timeIntervalSince1970];
    v10 = v9;

    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
    v12 = [v11 convertFromSystemToMonotonic];
    [v6 setEntryDate:v12];
  }

  v13 = [v6 objectForKeyedSubscript:@"PlaybackStopTime"];

  if (v13)
  {
    v14 = [v6 objectForKeyedSubscript:@"PlaybackStopTime"];
    [v14 timeIntervalSince1970];
    v16 = v15;

    v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v16];
    v18 = [v17 convertFromSystemToMonotonic];
    [v6 setEntryDate:v18];
  }

  [(PLOperator *)self logEntry:v6];
  [(PLAudioAgent *)self createAudioAccountingEvents:v6];
  [(PLAudioAgent *)self createAirPlayAccountingEvents:v6];
  [(PLAudioAgent *)self createCarPlayAccountingEvents:v6];
  [(PLAudioAgent *)self createBluetoothAccountingEvents:v6];
}

- (void)logEventPointSpeakerAmp:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"SpeakerAmp"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLAudioAgent *)self modelAudioPowerSpeaker:v6];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointHaptics:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"Haptics"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointHapticsAssertion:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v9 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"HapticsAssertion"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9];
  v7 = [v5 objectForKeyedSubscript:@"Haptic_Active_Hardware_Time_Seconds"];
  [v6 setObject:v7 forKeyedSubscript:@"active_time"];

  v8 = [v5 objectForKeyedSubscript:@"Active_Clients"];

  [v6 setObject:v8 forKeyedSubscript:@"active_clients"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardAudioDevice:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLOperator *)PLAudioAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AudioDevice"];
  v6 = objc_alloc(MEMORY[0x277D3F190]);
  v7 = [v4 lastUpdateTime];
  v8 = [v6 initWithEntryKey:v5 withDate:v7];

  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "deviceID")}];
    [v8 setObject:v9 forKeyedSubscript:@"DeviceID"];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "sourceID")}];
    [v8 setObject:v10 forKeyedSubscript:@"SourceID"];

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "transType")}];
    [v8 setObject:v11 forKeyedSubscript:@"TransType"];

    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isInput")}];
    [v8 setObject:v12 forKeyedSubscript:@"IsInput"];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isRunning")}];
    [v8 setObject:v13 forKeyedSubscript:@"IsRunning"];

    v14 = MEMORY[0x277CCABB0];
    [v4 volume];
    v15 = [v14 numberWithFloat:?];
    [v8 setObject:v15 forKeyedSubscript:@"Volume"];

    [(PLOperator *)self logEntry:v8];
    v16 = PLLogAudio();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v4 lastUpdateTime];
      v19 = 138412546;
      v20 = v18;
      v21 = 2112;
      v22 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "AudioDevice changed: %@, %@", &v19, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardHapticsRunningCount:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"HapticsRunningCount"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardHapticsPrewarmCount:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"HapticsPrewarmCount"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardMutedTalkerDetection:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"MutedTalkerDetection"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardSing:(id)a3
{
  v4 = a3;
  v9 = [v4 mutableCopy];
  v5 = MEMORY[0x277CBEAA8];
  v6 = [v4 objectForKeyedSubscript:@"TimestampSent"];

  [v6 doubleValue];
  v7 = [v5 dateWithTimeIntervalSince1970:?];

  v8 = [v7 convertFromSystemToMonotonic];

  [v9 removeObjectForKey:@"TimestampSent"];
  [(PLOperator *)self logForSubsystem:@"Audio" category:@"Sing" data:v9 date:v8];
}

- (void)logEventForwardSongTransitions:(id)a3
{
  v4 = a3;
  v14 = [v4 mutableCopy];
  v5 = MEMORY[0x277CBEAA8];
  v6 = [v4 objectForKeyedSubscript:@"TimestampSent"];

  [v6 doubleValue];
  v7 = [v5 dateWithTimeIntervalSince1970:?];

  v8 = [v7 convertFromSystemToMonotonic];

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

  [(PLOperator *)self logForSubsystem:@"Audio" category:@"SongTransitions" data:v14 date:v8];
}

- (void)logEventIntervalRMSLogging:(id)a3
{
  v4 = *MEMORY[0x277D3F5D8];
  v5 = a3;
  v21 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"RMSLogging"];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v5 objectForKeyedSubscript:@"StartTime"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  v9 = [v8 convertFromSystemToMonotonic];

  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v21 withDate:v9];
  v11 = [v5 objectForKeyedSubscript:@"ApplicationName"];
  [v10 setObject:v11 forKeyedSubscript:@"ApplicationName"];

  v12 = [v5 objectForKeyedSubscript:@"maxRms"];
  [v10 setObject:v12 forKeyedSubscript:@"maxRms"];

  v13 = [v5 objectForKeyedSubscript:@"minRms"];
  [v10 setObject:v13 forKeyedSubscript:@"minRms"];

  v14 = [v5 objectForKeyedSubscript:@"silence"];
  [v10 setObject:v14 forKeyedSubscript:@"silence_duration"];

  v15 = [v5 objectForKeyedSubscript:@"quiet"];
  [v10 setObject:v15 forKeyedSubscript:@"quiet_duration"];

  v16 = [v5 objectForKeyedSubscript:@"audible"];
  [v10 setObject:v16 forKeyedSubscript:@"audible_duration"];

  v17 = [v5 objectForKeyedSubscript:@"node"];
  [v10 setObject:v17 forKeyedSubscript:@"node"];

  v18 = [v5 objectForKeyedSubscript:@"pid"];
  [v10 setObject:v18 forKeyedSubscript:@"pid"];

  v19 = [v5 objectForKeyedSubscript:@"reporterID"];

  [v10 setObject:v19 forKeyedSubscript:@"reporterID"];
  v20 = [MEMORY[0x277CBEAA8] monotonicDate];
  [v10 setObject:v20 forKeyedSubscript:@"timestampEnd"];

  [(PLOperator *)self logEntry:v10];
}

- (void)logEventIntervalShazamRecording:(id)a3
{
  v4 = *MEMORY[0x277D3F5D8];
  v5 = a3;
  v13 = [(PLOperator *)PLAudioAgent entryKeyForType:v4 andName:@"ShazamRecording"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13 withRawData:v5];
  v7 = [v5 objectForKeyedSubscript:@"timestamp"];
  v8 = [v7 convertFromSystemToMonotonic];
  [v6 setEntryDate:v8];

  v9 = [v5 objectForKeyedSubscript:@"timestampEnd"];

  v10 = [v9 convertFromSystemToMonotonic];
  [v6 setObject:v10 forKeyedSubscript:@"timestampEnd"];

  v11 = [v6 objectForKeyedSubscript:@"timestampEnd"];

  if (!v11)
  {
    v12 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v6 setObject:v12 forKeyedSubscript:@"timestampEnd"];
  }

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventIntervalCoreAudioVAD:(id)a3
{
  v72[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"State"];
  v6 = [v5 intValue];

  v7 = [(PLOperator *)PLAudioAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"CoreAudioVAD"];
  v8 = MEMORY[0x277CCACA8];
  v9 = [v4 objectForKeyedSubscript:@"ClientID"];
  v10 = [v4 objectForKeyedSubscript:@"Client"];
  v11 = [v8 stringWithFormat:@"EndTime IS NULL AND ClientID = '%@' AND Client = '%@'", v9, v10];
  v72[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:1];

  v13 = [(PLOperator *)self storage];
  v14 = [v13 lastEntryForKey:v7 withFilters:v12];

  if (v6 == 1)
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
      v69 = v4;
      [(PLOperator *)self updateEntry:v68 withBlock:v67];

      v16 = v68;
    }

    else
    {
      v62 = self;
      v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v4];
      v19 = MEMORY[0x277CBEAA8];
      v20 = [v4 objectForKeyedSubscript:@"StartTime"];
      [v20 doubleValue];
      v21 = [v19 dateWithTimeIntervalSince1970:?];

      v22 = [v21 convertFromSystemToMonotonic];

      v23 = MEMORY[0x277CBEAA8];
      v24 = v22;
      [v22 timeIntervalSince1970];
      v26 = [v23 dateWithTimeIntervalSince1970:round(v25 / 60.0) * 60.0];
      [v16 setObject:v26 forKeyedSubscript:@"StartTime"];

      v27 = MEMORY[0x277CCABB0];
      v28 = [v4 objectForKeyedSubscript:@"LifespanInSeconds"];
      v29 = [v27 numberWithDouble:{round(objc_msgSend(v28, "intValue") / 60.0) * 60.0}];
      [v16 setObject:v29 forKeyedSubscript:@"LifespanInSeconds"];

      v30 = MEMORY[0x277D3F258];
      v31 = MEMORY[0x277CCACA8];
      v32 = [v4 objectForKeyedSubscript:@"SID"];
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

      [(PLOperator *)v62 logEntry:v16];
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
        LODWORD(v71[0]) = v6;
        WORD2(v71[0]) = 2112;
        *(v71 + 6) = v14;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "CoreAudioVad state = %d Found OpenEntry openEntry = %@", buf, 0x12u);
      }

      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __45__PLAudioAgent_logEventIntervalCoreAudioVAD___block_invoke_430;
      v64[3] = &unk_278259658;
      v65 = v4;
      v66 = v14;
      [(PLOperator *)self updateEntry:v66 withBlock:v64];

      v16 = v65;
    }

    else
    {
      v63 = self;
      if (v18)
      {
        *buf = 138412290;
        v71[0] = v4;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "CoreAudioVad Didn't find OpenEntry, payload = %@", buf, 0xCu);
      }

      v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v4];
      v36 = MEMORY[0x277CBEAA8];
      v37 = [v4 objectForKeyedSubscript:@"StartTime"];
      [v37 doubleValue];
      v38 = [v36 dateWithTimeIntervalSince1970:?];

      v39 = [v38 convertFromSystemToMonotonic];

      v40 = MEMORY[0x277CBEAA8];
      v61 = v39;
      [v39 timeIntervalSince1970];
      v42 = [v40 dateWithTimeIntervalSince1970:round(v41 / 60.0) * 60.0];
      [v16 setObject:v42 forKeyedSubscript:@"StartTime"];

      v43 = MEMORY[0x277CBEAA8];
      v44 = [v4 objectForKeyedSubscript:@"EndTime"];
      [v44 doubleValue];
      v45 = [v43 dateWithTimeIntervalSince1970:?];

      v46 = [v45 convertFromSystemToMonotonic];

      v47 = MEMORY[0x277CBEAA8];
      v48 = v46;
      [v46 timeIntervalSince1970];
      v50 = [v47 dateWithTimeIntervalSince1970:round(v49 / 60.0) * 60.0];
      [v16 setObject:v50 forKeyedSubscript:@"EndTime"];

      v51 = MEMORY[0x277CCABB0];
      v52 = [v4 objectForKeyedSubscript:@"LifespanInSeconds"];
      v53 = [v51 numberWithDouble:{round(objc_msgSend(v52, "intValue") / 60.0) * 60.0}];
      [v16 setObject:v53 forKeyedSubscript:@"LifespanInSeconds"];

      v54 = MEMORY[0x277D3F258];
      v55 = MEMORY[0x277CCACA8];
      v56 = [v4 objectForKeyedSubscript:@"SID"];
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

      [(PLOperator *)v63 logEntry:v16];
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

- (double)modelAudioPowerWithVolume:(double)a3
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    return 0.0;
  }

  v6 = MEMORY[0x277D3F258];
  v7 = [(PLAudioAgent *)self audioPowerModel];
  [v6 scaledPowerBasedOnPoint:v7 withPowerModel:a3];
  v9 = v8;

  return v9;
}

- (void)modelAudioPowerCodec:(id)a3
{
  v7 = a3;
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

    v6 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v6 createPowerEventForwardWithRootNodeID:55 withPower:v7 withStartDate:v4];
  }
}

- (void)modelAudioPowerSpeaker:(id)a3
{
  v23 = a3;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    if (!v23)
    {
      goto LABEL_10;
    }

    v4 = [v23 entryDate];

    if (!v4)
    {
      goto LABEL_10;
    }

    if ([(PLAudioAgent *)self speakerIsPlayingAudio])
    {
      v5 = [(PLOperator *)PLAudioAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SpeakerAmp"];
      v6 = [(PLOperator *)self storage];
      v7 = [v6 lastEntryForKey:v5];

      v8 = [v23 entryDate];
      v9 = [v8 dateByAddingTimeInterval:-60.0];

      v10 = [v9 laterDate:self->_lastAudioStateChangeDate];

      if (v7)
      {
        v11 = [v7 entryDate];
        v12 = [v10 laterDate:v11];

        v10 = v12;
      }

      v13 = [v23 objectForKeyedSubscript:@"Avg Watts Modelled"];
      [v13 doubleValue];
      [(PLAudioAgent *)self convertSpeakerProtectionModeledPowerToTotalSpeakerPower:v14 * 1000.0];
      v16 = v15;

      v17 = [MEMORY[0x277D3F0C0] sharedInstance];
      [v17 createPowerEventForwardWithRootNodeID:15 withPower:v10 withStartDate:v16];

      goto LABEL_11;
    }

    v18 = [v23 objectForKeyedSubscript:@"Avg Watts Modelled"];
    if (!v18 || (v19 = v18, [v23 objectForKeyedSubscript:@"Avg Watts Modelled"], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "doubleValue"), v22 = v21, v20, v19, v22 <= 0.0))
    {
LABEL_10:
      v10 = [MEMORY[0x277D3F0C0] sharedInstance];
      v5 = [(PLAudioAgent *)self lastAudioStateChangeDate];
      [v10 createPowerEventForwardWithRootNodeID:15 withPower:v5 withStartDate:0.0];
LABEL_11:
    }
  }

  MEMORY[0x2821F96F8]();
}

- (double)convertSpeakerProtectionModeledPowerToTotalSpeakerPower:(double)a3
{
  result = 0.0;
  if (a3 > 0.0)
  {
    if ([MEMORY[0x277D3F208] isHomePod])
    {
LABEL_3:
      result = a3;
    }

    else
    {
      v5 = [MEMORY[0x277D3F208] kPLAudioClassOfDevice] - 1005001;
      result = a3;
      switch(v5)
      {
        case 0:
          v21 = log(a3 + 0.1);
          v22 = 1.5;
          goto LABEL_55;
        case 1:
          v15 = a3 * -0.0014;
          v16 = 3.03;
          goto LABEL_47;
        case 2:
          v11 = log(a3 * 0.005 + 1.0);
          v12 = 810.0;
          goto LABEL_70;
        case 3:
          v8 = log(a3 * 0.002 + 1.0);
          v9 = a3 * 0.4;
          v10 = 110.0;
          goto LABEL_72;
        case 4:
          v21 = log(a3 * 0.05 + 1.0);
          v22 = 10.0;
LABEL_55:
          result = a3 + v21 * v22;
          break;
        case 5:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v6 = a3 * 1.51 + a3 * -0.0003 * a3;
          v17 = 0x4048000000000000;
          goto LABEL_68;
        case 6:
        case 7:
          result = 0.0;
          if (a3 < 0.001)
          {
            break;
          }

          v6 = a3 * 0.96 + a3 * -0.00009 * a3;
          v7 = 97.0;
          goto LABEL_75;
        case 8:
          v8 = log(a3 + 1.0);
          v9 = a3 * 0.5;
          v10 = 6.0;
          goto LABEL_72;
        case 9:
          v15 = a3 * -0.0013;
          v16 = 1.75;
LABEL_47:
          result = a3 * v16 + v15 * a3;
          break;
        case 10:
          v8 = log(a3 + 1.0);
          v9 = a3 * 0.725;
          v10 = 9.0;
          goto LABEL_72;
        case 11:
          v8 = log(a3 + 1.0);
          v9 = a3 * 1.2;
          v10 = 10.0;
          goto LABEL_72;
        case 12:
        case 13:
          v11 = log(a3 * 0.006 + 1.0);
          v12 = 410.0;
          goto LABEL_70;
        case 14:
          v11 = log(a3 * 0.007 + 1.0);
          v12 = 450.0;
LABEL_70:
          result = v11 * v12;
          break;
        case 15:
          v8 = log(a3 * 0.9 + 1.0);
          v9 = a3 * 1.35;
          v10 = 13.0;
          goto LABEL_72;
        case 16:
        case 17:
          v8 = log(a3 * 8.0 + 1.0);
          v9 = a3 * 1.07;
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
          v18 = log(a3 + 1.0);
          v19 = a3 * 1.075;
          v20 = 7.0;
          goto LABEL_61;
        case 21:
          v18 = log(a3 + 1.0);
          v19 = a3 * 0.97;
          v20 = 5.0;
LABEL_61:
          result = v19 + v18 * v20;
          goto LABEL_62;
        case 22:
          result = a3 + log(a3 * 5.0 + 1.0) * 10.0;
LABEL_62:
          if (result < 0.0)
          {
            result = 0.0;
          }

          break;
        case 24:
          v8 = log(a3 + 1.0);
          v9 = a3 * 1.5;
          v10 = 11.0;
          goto LABEL_72;
        case 25:
          v8 = log(a3 + 1.0);
          v9 = a3 * 1.38;
          v10 = 7.0;
LABEL_72:
          result = v9 + v8 * v10;
          break;
        case 27:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v6 = a3 * 1.87 + a3 * -0.0002 * a3;
          v7 = 95.26;
          goto LABEL_75;
        case 28:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v6 = a3 * 1.89 + a3 * -0.0001 * a3;
          v7 = -17.5;
          goto LABEL_75;
        case 29:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v6 = a3 * 1.44 + a3 * -0.000167 * a3;
          v7 = 15.0;
          goto LABEL_75;
        case 31:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v6 = a3 * 1.81 + a3 * -0.0000852 * a3;
          v7 = 123.12;
          goto LABEL_75;
        case 32:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v6 = a3 * 1.85 + a3 * -0.00018 * a3;
          v7 = 22.35;
          goto LABEL_75;
        case 33:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v6 = a3 * 1.16 + a3 * 0.0000309 * a3;
          v7 = -46.18;
          goto LABEL_75;
        case 34:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v6 = a3 * 1.015 + a3 * 0.0000866 * a3;
          v7 = -23.0;
          goto LABEL_75;
        case 35:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v6 = a3 * 1.19 + a3 * -0.0000202 * a3;
          v17 = 0xC049000000000000;
LABEL_68:
          v7 = *&v17;
          goto LABEL_75;
        case 36:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v13 = -55.2;
          v14 = 1.404;
          goto LABEL_59;
        case 37:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v6 = a3 * 0.9261 + a3 * 0.00007412 * a3;
          v7 = 38.265;
          goto LABEL_75;
        case 41:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v6 = a3 * 1.0808 + a3 * -0.0003205 * a3;
          v7 = 14.1368;
          goto LABEL_75;
        case 42:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v6 = a3 * 1.1128 + a3 * -0.0002358 * a3;
          v7 = 13.3804;
          goto LABEL_75;
        case 43:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v6 = a3 * 1.6664 + a3 * -0.0003566 * a3;
          v7 = -268.816;
          goto LABEL_75;
        case 44:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v6 = a3 * 1.6392 + a3 * -0.0001588 * a3;
          v7 = 6.333;
          goto LABEL_75;
        case 45:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v13 = -43.623;
          v14 = 1.1983;
          goto LABEL_59;
        case 47:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v13 = 17.34;
          v14 = 0.9685;
LABEL_59:
          result = v13 + a3 * v14;
          break;
        case 48:
          result = 0.0;
          if (a3 < 0.1)
          {
            break;
          }

          v6 = a3 * 0.9261 + a3 * 0.00007412 * a3;
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

- (double)audioPowerForRoute:(id)a3 forVolume:(double)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277D3F208] isHomePod];
  v8 = 0.0;
  if (v6 && (v7 & 1) == 0)
  {
    v9 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"audio"];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F208], "kPLAudioClassOfDevice")}];
    v11 = [v10 stringValue];

    v12 = [v9 allKeys];
    v13 = [v12 containsString:v11];

    if (v13)
    {
      if ([(PLAudioAgent *)self accessoryPowerState]== 4 && (([(__CFString *)v6 isEqual:@"Headphone"]& 1) != 0 || [(__CFString *)v6 isEqual:@"Headset"]))
      {
        v14 = [v9 objectForKeyedSubscript:v11];
        v15 = v14;
        v16 = @"Lightning";
      }

      else if ([(PLAudioAgent *)self accessoryPowerState]== 6 && (([(__CFString *)v6 isEqual:@"Headphone"]& 1) != 0 || [(__CFString *)v6 isEqual:@"Headset"]))
      {
        v14 = [v9 objectForKeyedSubscript:v11];
        v15 = v14;
        v16 = @"Lightning_VoltageMonitor";
      }

      else
      {
        v24 = [(__CFString *)v6 isEqual:@"Speaker"];
        v14 = [v9 objectForKeyedSubscript:v11];
        v15 = v14;
        if (v24)
        {
          v16 = @"Speaker";
        }

        else
        {
          v16 = v6;
        }
      }

      v18 = [v14 objectForKeyedSubscript:v16];

      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v25 = [v18 allKeys];
        v26 = [v25 sortedArrayUsingSelector:sel_compareFloat_];

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v23 = v26;
        v27 = [v23 countByEnumeratingWithState:&v55 objects:v61 count:16];
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
              objc_enumerationMutation(v23);
            }

            v33 = *(*(&v55 + 1) + 8 * v31);
            [v33 doubleValue];
            v35 = v34;
            v29 = v33;
            if (v35 > a4)
            {
              break;
            }

            ++v31;
            v32 = v29;
            if (v28 == v31)
            {
              v28 = [v23 countByEnumeratingWithState:&v55 objects:v61 count:16];
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
          v48 = a4 - v47;
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

        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"No audio power model exists for audio class: %@ and route: %@", v11, v6];
        v37 = MEMORY[0x277D3F178];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLAudioAgent.m"];
        v39 = [v38 lastPathComponent];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAudioAgent audioPowerForRoute:forVolume:]"];
        [v37 logMessage:v23 fromFile:v39 fromFunction:v40 fromLineNumber:1868];

        v32 = PLLogCommon();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v63 = v23;
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

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"No audio power model exists for audio class: %@", v11];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLAudioAgent.m"];
      v21 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAudioAgent audioPowerForRoute:forVolume:]"];
      [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:1849];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v63 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
    v5 = [MEMORY[0x277CBEAA8] monotonicDate];
    v2 = [MEMORY[0x277D3F0C0] sharedInstance];
    v3 = MEMORY[0x277CBEC10];
    [v2 createDistributionEventForwardWithDistributionID:7 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:v5];

    v4 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v4 createDistributionEventForwardWithDistributionID:26 withChildNodeNameToWeight:v3 withStartDate:v5];
  }
}

- (void)createAudioAccountingEvents:(id)a3
{
  v14 = a3;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v3 = [v14 objectForKeyedSubscript:@"ApplicationName"];
    if (!v3)
    {
      goto LABEL_5;
    }

    v4 = v3;
    v5 = [v14 objectForKeyedSubscript:@"Operation"];
    v6 = [v5 description];
    v7 = [v6 isEqualToString:@"AudioPlayback_Start"];

    if (v7)
    {
      v8 = [MEMORY[0x277D3F0C0] sharedInstance];
      v9 = [v14 objectForKeyedSubscript:@"ApplicationName"];
      v10 = [v14 entryDate];
      [v8 createDistributionEventForwardWithDistributionID:7 withAddingChildNodeName:v9 withStartDate:v10];
    }

    else
    {
LABEL_5:
      v11 = [v14 objectForKeyedSubscript:@"Operation"];
      v12 = [v11 description];
      v13 = [v12 isEqualToString:@"AudioPlayback_Stop"];

      if (!v13)
      {
        goto LABEL_8;
      }

      v8 = [MEMORY[0x277D3F0C0] sharedInstance];
      v9 = [v14 objectForKeyedSubscript:@"ApplicationName"];
      v10 = [v14 entryDate];
      [v8 createDistributionEventForwardWithDistributionID:7 withRemovingChildNodeName:v9 withStartDate:v10];
    }
  }

LABEL_8:
}

- (void)createAirPlayAccountingEvents:(id)a3
{
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    goto LABEL_15;
  }

  v4 = [v3 objectForKeyedSubscript:@"AudioRoute"];
  v5 = [v4 description];
  if ([v5 isEqualToString:@"AirPlay"])
  {
    goto LABEL_5;
  }

  v6 = [v3 objectForKeyedSubscript:@"AudioRoute"];
  v7 = [v6 description];
  if ([v7 isEqualToString:@"Airtunes"])
  {

LABEL_5:
LABEL_6:
    v8 = [v3 objectForKeyedSubscript:@"ApplicationName"];
    if (v8)
    {
      v9 = v8;
      v10 = [v3 objectForKeyedSubscript:@"Operation"];

      if (v10)
      {
        v11 = [v3 objectForKeyedSubscript:@"Operation"];
        v12 = [v11 description];
        v13 = [v12 isEqualToString:@"AudioPlayback_Stop"];

        v14 = [MEMORY[0x277D3F0C0] sharedInstance];
        v15 = [v3 entryDate];
        if (!v13)
        {
          [v14 createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C18850 withStartDate:v15];

          v29 = [MEMORY[0x277D3F0C0] sharedInstance];
          v30 = [v3 objectForKeyedSubscript:@"ApplicationName"];
          v39 = v30;
          v40[0] = &unk_282C1C548;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
          v32 = [v3 entryDate];
          [v29 createDistributionEventForwardWithDistributionID:36 withChildNodeNameToWeight:v31 withStartDate:v32];

          v33 = [MEMORY[0x277D3F0C0] sharedInstance];
          v34 = [v3 objectForKeyedSubscript:@"ApplicationName"];
          v38 = v34;
          v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
          v36 = [v3 entryDate];
          [v33 createQualificationEventForwardWithQualificationID:3 withChildNodeNames:v35 withStartDate:v36];

          goto LABEL_15;
        }

        [v14 createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C18828 withStartDate:v15];

        v16 = [MEMORY[0x277D3F0C0] sharedInstance];
        v17 = [v3 entryDate];
        [v16 createDistributionEventForwardWithDistributionID:36 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:v17];

        v18 = MEMORY[0x277D3F0C0];
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

  v19 = [v3 objectForKeyedSubscript:@"AudioRoute"];
  v20 = [v19 description];
  v21 = [v20 isEqualToString:@"AirTunes"];

  if (v21)
  {
    goto LABEL_6;
  }

  v22 = [v3 objectForKeyedSubscript:@"AudioRoute"];

  if (v22)
  {
    v23 = [MEMORY[0x277D3F0C0] sharedInstance];
    v24 = [v3 entryDate];
    [v23 createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C18878 withStartDate:v24];

    v25 = [MEMORY[0x277D3F0C0] sharedInstance];
    v26 = [v3 entryDate];
    [v25 createDistributionEventForwardWithDistributionID:36 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:v26];

    v18 = MEMORY[0x277D3F0C0];
LABEL_13:
    v27 = [v18 sharedInstance];
    v28 = [v3 entryDate];
    [v27 createQualificationEventForwardWithQualificationID:3 withChildNodeNames:MEMORY[0x277CBEBF8] withStartDate:v28];
  }

LABEL_15:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)createCarPlayAccountingEvents:(id)a3
{
  v15 = a3;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v3 = [v15 objectForKeyedSubscript:@"AudioRoute"];
    v4 = [v3 description];
    v5 = [v4 isEqualToString:@"CarAudioOutput"];

    if (!v5)
    {
      v12 = [v15 objectForKeyedSubscript:@"AudioRoute"];
LABEL_10:

      goto LABEL_11;
    }

    v6 = [v15 objectForKeyedSubscript:@"ApplicationName"];
    if (v6)
    {
      v7 = v6;
      v8 = [v15 objectForKeyedSubscript:@"Operation"];

      if (v8)
      {
        v9 = [v15 objectForKeyedSubscript:@"Operation"];
        v10 = [v9 description];
        v11 = [v10 isEqualToString:@"AudioPlayback_Stop"];

        v12 = [MEMORY[0x277D3F0C0] sharedInstance];
        v13 = [v15 objectForKeyedSubscript:@"ApplicationName"];
        v14 = [v15 entryDate];
        if (v11)
        {
          [v12 createDistributionEventForwardWithDistributionID:26 withRemovingChildNodeName:v13 withStartDate:v14];
        }

        else
        {
          [v12 createDistributionEventForwardWithDistributionID:26 withAddingChildNodeName:v13 withStartDate:v14];
        }

        goto LABEL_10;
      }
    }
  }

LABEL_11:
}

- (void)createBluetoothAccountingEvents:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    goto LABEL_24;
  }

  v4 = [v3 objectForKeyedSubscript:@"AudioRoute"];
  v5 = [v4 description];
  if ([v5 isEqualToString:@"HeadsetBT"])
  {

LABEL_5:
    v9 = [v3 objectForKeyedSubscript:@"ApplicationName"];
    if (v9)
    {
      v10 = v9;
      v11 = [v3 objectForKeyedSubscript:@"Operation"];

      if (v11)
      {
        v12 = [v3 objectForKeyedSubscript:@"Operation"];
        v13 = [v12 description];
        v14 = [v13 isEqualToString:@"AudioPlayback_Stop"];

        v15 = [MEMORY[0x277D3F0C0] sharedInstance];
        v16 = v15;
        if (!v14)
        {
          v17 = [v15 currentDistributionEventForwardWithDistributionID:8];

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v16 = v17;
          v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
                  objc_enumerationMutation(v16);
                }

                v22 = *(*(&v31 + 1) + 8 * i);
                if (([v22 isEqualToString:{@"Hotspot", v31}] & 1) == 0 && (objc_msgSend(v22, "isEqualToString:", @"IDSWatchBT") & 1) == 0)
                {
                  v23 = [MEMORY[0x277D3F0C0] sharedInstance];
                  v24 = [v3 entryDate];
                  [v23 createDistributionEventForwardWithDistributionID:8 withRemovingChildNodeName:v22 withStartDate:v24];
                }
              }

              v19 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
            }

            while (v19);
          }

          v25 = [MEMORY[0x277D3F0C0] sharedInstance];
          v26 = [v3 objectForKeyedSubscript:@"ApplicationName"];
          v27 = [v3 entryDate];
          [v25 createDistributionEventForwardWithDistributionID:8 withAddingChildNodeName:v26 withStartDate:v27];

          goto LABEL_23;
        }

LABEL_22:
        v25 = [v3 objectForKeyedSubscript:@"ApplicationName"];
        v26 = [v3 entryDate];
        [v16 createDistributionEventForwardWithDistributionID:8 withRemovingChildNodeName:v25 withStartDate:v26];
LABEL_23:

        goto LABEL_24;
      }
    }

    goto LABEL_24;
  }

  v6 = [v3 objectForKeyedSubscript:@"AudioRoute"];
  v7 = [v6 description];
  v8 = [v7 isEqualToString:@"HeadphonesBT"];

  if (v8)
  {
    goto LABEL_5;
  }

  v28 = [v3 objectForKeyedSubscript:@"AudioRoute"];

  if (v28)
  {
    v29 = [v3 objectForKeyedSubscript:@"ApplicationName"];

    if (v29)
    {
      v16 = [MEMORY[0x277D3F0C0] sharedInstance];
      goto LABEL_22;
    }
  }

LABEL_24:

  v30 = *MEMORY[0x277D85DE8];
}

@end