@interface PLVideoAgent
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionGroupSession;
+ (id)entryEventIntervalDefinitions;
+ (id)stateEnumForStateString:(id)a3;
+ (void)load;
- (PLVideoAgent)init;
- (int)convertPlaybackTypetoInt:(id)a3;
- (void)initOperatorDependancies;
- (void)logEventBackwardCMVideoPlaybackWithEntry:(id)a3;
- (void)logEventBackwardCMVideoQueueWithEntry:(id)a3;
- (void)logEventBackwardVTSessionWithEntry:(id)a3;
- (void)logEventBackwardVTTileWithEntry:(id)a3;
- (void)logEventForwardVideoWithEntry:(id)a3;
- (void)logEventIntervalGroupSession:(id)a3;
@end

@implementation PLVideoAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLVideoAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v23[1] = *MEMORY[0x277D85DE8];
  v22 = @"Video";
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_282C1C4F8;
  v19[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F4A0];
  v18[2] = *MEMORY[0x277D3F550];
  v18[3] = v3;
  v19[2] = MEMORY[0x277CBEC28];
  v19[3] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v21[0] = v4;
  v20[1] = *MEMORY[0x277D3F540];
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v17[0] = v6;
  v16[1] = @"clientDisplayID";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat_withBundleID];
  v17[1] = v8;
  v16[2] = @"State";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v17[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v23[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitions
{
  v123[4] = *MEMORY[0x277D85DE8];
  v122[0] = @"VTSession";
  v119 = *MEMORY[0x277D3F4E8];
  v2 = v119;
  v4 = *MEMORY[0x277D3F4F8];
  v116[0] = *MEMORY[0x277D3F568];
  v3 = v116[0];
  v116[1] = v4;
  v118[0] = &unk_282C1C508;
  v118[1] = MEMORY[0x277CBEC28];
  v117 = *MEMORY[0x277D3F550];
  v5 = v117;
  v118[2] = MEMORY[0x277CBEC28];
  v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v116 count:3];
  v121[0] = v94;
  v120 = *MEMORY[0x277D3F540];
  v6 = v120;
  v114[0] = @"logID";
  v93 = [MEMORY[0x277D3F198] sharedInstance];
  v92 = [v93 commonTypeDict_StringFormat];
  v115[0] = v92;
  v114[1] = @"videoCodecType";
  v91 = [MEMORY[0x277D3F198] sharedInstance];
  v90 = [v91 commonTypeDict_IntegerFormat];
  v115[1] = v90;
  v114[2] = @"resHeight";
  v89 = [MEMORY[0x277D3F198] sharedInstance];
  v88 = [v89 commonTypeDict_IntegerFormat];
  v115[2] = v88;
  v114[3] = @"numFramesDecoded";
  v87 = [MEMORY[0x277D3F198] sharedInstance];
  v86 = [v87 commonTypeDict_IntegerFormat];
  v115[3] = v86;
  v114[4] = @"numFramesEncoded";
  v85 = [MEMORY[0x277D3F198] sharedInstance];
  v84 = [v85 commonTypeDict_IntegerFormat];
  v115[4] = v84;
  v114[5] = @"resWidth";
  v83 = [MEMORY[0x277D3F198] sharedInstance];
  v82 = [v83 commonTypeDict_IntegerFormat];
  v115[5] = v82;
  v114[6] = @"isHDR";
  v81 = [MEMORY[0x277D3F198] sharedInstance];
  v80 = [v81 commonTypeDict_BoolFormat];
  v115[6] = v80;
  v114[7] = @"processID";
  v79 = [MEMORY[0x277D3F198] sharedInstance];
  v78 = [v79 commonTypeDict_IntegerFormat];
  v115[7] = v78;
  v114[8] = @"BundleID";
  v77 = [MEMORY[0x277D3F198] sharedInstance];
  v76 = [v77 commonTypeDict_StringFormat_withBundleID];
  v115[8] = v76;
  v114[9] = @"numFramesDropped";
  v75 = [MEMORY[0x277D3F198] sharedInstance];
  v74 = [v75 commonTypeDict_IntegerFormat];
  v115[9] = v74;
  v114[10] = @"sessionDuration";
  v73 = [MEMORY[0x277D3F198] sharedInstance];
  v72 = [v73 commonTypeDict_IntegerFormat];
  v115[10] = v72;
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:11];
  v121[1] = v71;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:&v119 count:2];
  v123[0] = v70;
  v122[1] = @"VTTile";
  v112[0] = v2;
  v109[0] = v3;
  v109[1] = v4;
  v111[0] = &unk_282C1C4F8;
  v111[1] = MEMORY[0x277CBEC28];
  v110 = *MEMORY[0x277D3F4A0];
  v7 = v110;
  v8 = MEMORY[0x277CBEC38];
  v111[2] = MEMORY[0x277CBEC38];
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v109 count:3];
  v113[0] = v69;
  v112[1] = v6;
  v107[0] = @"videoCodecType";
  v68 = [MEMORY[0x277D3F198] sharedInstance];
  v67 = [v68 commonTypeDict_IntegerFormat];
  v108[0] = v67;
  v107[1] = @"resHeight";
  v66 = [MEMORY[0x277D3F198] sharedInstance];
  v65 = [v66 commonTypeDict_IntegerFormat];
  v108[1] = v65;
  v107[2] = @"numFramesDecoded";
  v64 = [MEMORY[0x277D3F198] sharedInstance];
  v63 = [v64 commonTypeDict_IntegerFormat];
  v108[2] = v63;
  v107[3] = @"numFramesEncoded";
  v62 = [MEMORY[0x277D3F198] sharedInstance];
  v61 = [v62 commonTypeDict_IntegerFormat];
  v108[3] = v61;
  v107[4] = @"resWidth";
  v60 = [MEMORY[0x277D3F198] sharedInstance];
  v59 = [v60 commonTypeDict_IntegerFormat];
  v108[4] = v59;
  v107[5] = @"isHDR";
  v58 = [MEMORY[0x277D3F198] sharedInstance];
  v57 = [v58 commonTypeDict_BoolFormat];
  v108[5] = v57;
  v107[6] = @"processID";
  v56 = [MEMORY[0x277D3F198] sharedInstance];
  v55 = [v56 commonTypeDict_IntegerFormat];
  v108[6] = v55;
  v107[7] = @"BundleID";
  v54 = [MEMORY[0x277D3F198] sharedInstance];
  v53 = [v54 commonTypeDict_StringFormat_withBundleID];
  v108[7] = v53;
  v107[8] = @"numFramesDropped";
  v52 = [MEMORY[0x277D3F198] sharedInstance];
  v51 = [v52 commonTypeDict_IntegerFormat];
  v108[8] = v51;
  v107[9] = @"sessionDuration";
  v50 = [MEMORY[0x277D3F198] sharedInstance];
  v49 = [v50 commonTypeDict_IntegerFormat];
  v108[9] = v49;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:10];
  v113[1] = v48;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:2];
  v123[1] = v47;
  v122[2] = @"CMVideoPlayback";
  v105[0] = v2;
  v103[0] = v3;
  v103[1] = v5;
  v104[0] = &unk_282C1C4F8;
  v104[1] = MEMORY[0x277CBEC28];
  v9 = *MEMORY[0x277D3F4F0];
  v103[2] = v7;
  v103[3] = v9;
  v104[2] = v8;
  v104[3] = &unk_282C14BF8;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:4];
  v106[0] = v46;
  v105[1] = v6;
  v101[0] = @"AuOn";
  v45 = [MEMORY[0x277D3F198] sharedInstance];
  v44 = [v45 commonTypeDict_BoolFormat];
  v102[0] = v44;
  v101[1] = @"IfTy";
  v43 = [MEMORY[0x277D3F198] sharedInstance];
  v42 = [v43 commonTypeDict_IntegerFormat];
  v102[1] = v42;
  v101[2] = @"logID";
  v41 = [MEMORY[0x277D3F198] sharedInstance];
  v40 = [v41 commonTypeDict_StringFormat];
  v102[2] = v40;
  v101[3] = @"PlayTimeWC";
  v39 = [MEMORY[0x277D3F198] sharedInstance];
  v38 = [v39 commonTypeDict_IntegerFormat];
  v102[3] = v38;
  v101[4] = @"ProcessName";
  v37 = [MEMORY[0x277D3F198] sharedInstance];
  v36 = [v37 commonTypeDict_StringFormat_withProcessName];
  v102[4] = v36;
  v101[5] = @"StallCount";
  v35 = [MEMORY[0x277D3F198] sharedInstance];
  v34 = [v35 commonTypeDict_IntegerFormat];
  v102[5] = v34;
  v101[6] = @"TWIABR";
  v33 = [MEMORY[0x277D3F198] sharedInstance];
  v32 = [v33 commonTypeDict_IntegerFormat];
  v102[6] = v32;
  v101[7] = @"TWIBR";
  v31 = [MEMORY[0x277D3F198] sharedInstance];
  v30 = [v31 commonTypeDict_IntegerFormat];
  v102[7] = v30;
  v101[8] = @"TWOBR";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_IntegerFormat];
  v102[8] = v28;
  v101[9] = @"TWVaRk";
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_IntegerFormat];
  v102[9] = v26;
  v101[10] = @"PlaybackType";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_IntegerFormat];
  v102[10] = v24;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:11];
  v106[1] = v23;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:2];
  v123[2] = v22;
  v122[3] = @"CMVideoQueue";
  v99[0] = v2;
  v97[0] = v3;
  v97[1] = v7;
  v98[0] = &unk_282C1C4F8;
  v98[1] = MEMORY[0x277CBEC38];
  v97[2] = v9;
  v98[2] = &unk_282C14C10;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:3];
  v100[0] = v10;
  v99[1] = v6;
  v95[0] = @"logID";
  v11 = [MEMORY[0x277D3F198] sharedInstance];
  v12 = [v11 commonTypeDict_StringFormat];
  v96[0] = v12;
  v95[1] = @"PlayTimeWC";
  v13 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v13 commonTypeDict_IntegerFormat];
  v96[1] = v14;
  v95[2] = @"ProcessName";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v15 commonTypeDict_StringFormat_withProcessName];
  v96[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:3];
  v100[1] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:2];
  v123[3] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:4];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)entryEventIntervalDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"GroupSession";
  v2 = [a1 entryEventIntervalDefinitionGroupSession];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventIntervalDefinitionGroupSession
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1C4F8;
  v15[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
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

- (PLVideoAgent)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLVideoAgent;
    self = [(PLAgent *)&v5 init];
    v3 = self;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __40__PLVideoAgent_initOperatorDependancies__block_invoke;
  v20[3] = &unk_27825A1D8;
  v20[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C184E0 withBlock:v20];
  [(PLVideoAgent *)self setNotification:v4];

  v5 = objc_alloc(MEMORY[0x277D3F270]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __40__PLVideoAgent_initOperatorDependancies__block_invoke_133;
  v19[3] = &unk_27825A1D8;
  v19[4] = self;
  v6 = [v5 initWithOperator:self withRegistration:&unk_282C18508 withBlock:v19];
  [(PLVideoAgent *)self setCMVideoPlaybackListener:v6];

  v7 = objc_alloc(MEMORY[0x277D3F270]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__PLVideoAgent_initOperatorDependancies__block_invoke_141;
  v18[3] = &unk_27825A1D8;
  v18[4] = self;
  v8 = [v7 initWithOperator:self withRegistration:&unk_282C18530 withBlock:v18];
  [(PLVideoAgent *)self setCMVideoQueueListener:v8];

  v9 = objc_alloc(MEMORY[0x277D3F270]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __40__PLVideoAgent_initOperatorDependancies__block_invoke_149;
  v17[3] = &unk_27825A1D8;
  v17[4] = self;
  v10 = [v9 initWithOperator:self withRegistration:&unk_282C18558 withBlock:v17];
  [(PLVideoAgent *)self setVTSessionListener:v10];

  v11 = objc_alloc(MEMORY[0x277D3F270]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __40__PLVideoAgent_initOperatorDependancies__block_invoke_157;
  v16[3] = &unk_27825A1D8;
  v16[4] = self;
  v12 = [v11 initWithOperator:self withRegistration:&unk_282C18580 withBlock:v16];
  [(PLVideoAgent *)self setVTTileListener:v12];

  v13 = objc_alloc(MEMORY[0x277D3F270]);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__PLVideoAgent_initOperatorDependancies__block_invoke_167;
  v15[3] = &unk_27825A1D8;
  v15[4] = self;
  v14 = [v13 initWithOperator:self withRegistration:&unk_282C185A8 withBlock:v15];
  [(PLVideoAgent *)self setGroupSessionListener:v14];
}

void __40__PLVideoAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogVideo();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412290;
    v16 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentRegistrationVideo: payload=%@", &v15, 0xCu);
  }

  v8 = [(PLOperator *)PLVideoAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Video"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  v10 = *(a1 + 32);
  v11 = objc_opt_class();
  v12 = [v9 objectForKeyedSubscript:@"State"];
  v13 = [v11 stateEnumForStateString:v12];
  [v9 setObject:v13 forKeyedSubscript:@"State"];

  [*(a1 + 32) logEventForwardVideoWithEntry:v9];
  v14 = *MEMORY[0x277D85DE8];
}

void __40__PLVideoAgent_initOperatorDependancies__block_invoke_133(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentRegistrationCMVideoPlayback: payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardCMVideoPlaybackWithEntry:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __40__PLVideoAgent_initOperatorDependancies__block_invoke_141(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentRegistrationCMVideoQueue: payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardCMVideoQueueWithEntry:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __40__PLVideoAgent_initOperatorDependancies__block_invoke_149(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogVideo();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentRegistrationVTSession: payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardVTSessionWithEntry:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __40__PLVideoAgent_initOperatorDependancies__block_invoke_157(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogVideo();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideAgentEventBackwardVTTile: payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardVTTileWithEntry:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __40__PLVideoAgent_initOperatorDependancies__block_invoke_167(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogVideo();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentRegistrationGroupSession: payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalGroupSession:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardVideoWithEntry:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"State"];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 objectForKeyedSubscript:@"clientDisplayID"];

      if (v8)
      {
        [(PLOperator *)self logEntry:v5];
        v9 = [MEMORY[0x277CBEAA8] monotonicDate];
        v10 = [v5 objectForKeyedSubscript:@"State"];
        v11 = [v10 integerValue];

        if (v11 == 1)
        {
          v12 = 0;
          v13 = v9;
        }

        else
        {
          v14 = [v5 objectForKeyedSubscript:@"State"];
          v15 = [v14 integerValue];

          if (v15 != 2)
          {
LABEL_12:

            goto LABEL_13;
          }

          v13 = 0;
          v12 = v9;
        }

        v16 = v9;
        v17 = [v5 objectForKeyedSubscript:@"clientDisplayID"];
        v18 = v17;
        v19 = @"video-unknown";
        if (v17 && [(__CFString *)v17 length])
        {
          v19 = v18;
        }

        v20 = v19;

        v21 = [MEMORY[0x277D3F0C0] sharedInstance];
        v24 = v20;
        v25[0] = &unk_282C1C4F8;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

        [v21 createDistributionEventForwardWithDistributionID:9 withChildNodeNameToWeight:v22 withStartDate:v16];
        goto LABEL_12;
      }
    }
  }

LABEL_13:

  v23 = *MEMORY[0x277D85DE8];
}

- (int)convertPlaybackTypetoInt:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = PLLogVideo();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentRegistrationCMVideoPlayback converting playbackType %@ to an enum", &v9, 0xCu);
  }

  if ([v3 isEqualToString:@"HLS"])
  {
    v5 = 0;
  }

  else if ([v3 isEqualToString:@"FILE"])
  {
    v5 = 1;
  }

  else if ([v3 isEqualToString:@"CRABS"])
  {
    v5 = 2;
  }

  else
  {
    v6 = PLLogVideo();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentRegistrationCMVideoPlayback playbackType %@ does not fall in any enum", &v9, 0xCu);
    }

    v5 = 3;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)logEventBackwardCMVideoPlaybackWithEntry:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLOperator *)PLVideoAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CMVideoPlayback"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:v4];
  v7 = [v4 objectForKeyedSubscript:@"TWIABR"];

  if (v7)
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = MEMORY[0x277D3F258];
    v10 = [v6 objectForKeyedSubscript:@"TWIABR"];
    v11 = [v8 numberWithInt:{objc_msgSend(v9, "roundToSigFig:withSigFig:", objc_msgSend(v10, "intValue"), 2)}];
    [v6 setObject:v11 forKeyedSubscript:@"TWIABR"];
  }

  v12 = [v4 objectForKeyedSubscript:@"TWIBR"];

  if (v12)
  {
    v13 = MEMORY[0x277CCABB0];
    v14 = MEMORY[0x277D3F258];
    v15 = [v6 objectForKeyedSubscript:@"TWIBR"];
    v16 = [v13 numberWithInt:{objc_msgSend(v14, "roundToSigFig:withSigFig:", objc_msgSend(v15, "intValue"), 2)}];
    [v6 setObject:v16 forKeyedSubscript:@"TWIBR"];
  }

  v17 = [v4 objectForKeyedSubscript:@"TWOBR"];

  if (v17)
  {
    v18 = MEMORY[0x277CCABB0];
    v19 = MEMORY[0x277D3F258];
    v20 = [v6 objectForKeyedSubscript:@"TWOBR"];
    v21 = [v18 numberWithInt:{objc_msgSend(v19, "roundToSigFig:withSigFig:", objc_msgSend(v20, "intValue"), 2)}];
    [v6 setObject:v21 forKeyedSubscript:@"TWOBR"];
  }

  v22 = [v4 objectForKeyedSubscript:@"TWIABR"];

  if (v22)
  {
    v23 = MEMORY[0x277CCABB0];
    v24 = MEMORY[0x277D3F258];
    v25 = [v6 objectForKeyedSubscript:@"TWIABR"];
    v26 = [v23 numberWithInt:{objc_msgSend(v24, "roundToSigFig:withSigFig:", objc_msgSend(v25, "intValue"), 2)}];
    [v6 setObject:v26 forKeyedSubscript:@"TWIABR"];
  }

  v27 = [v4 objectForKeyedSubscript:@"VideoPlaybackType"];

  if (v27)
  {
    v28 = MEMORY[0x277CCABB0];
    v29 = [v4 objectForKeyedSubscript:@"VideoPlaybackType"];
    v30 = [v28 numberWithUnsignedInt:{-[PLVideoAgent convertPlaybackTypetoInt:](self, "convertPlaybackTypetoInt:", v29)}];
    [v6 setObject:v30 forKeyedSubscript:@"PlaybackType"];

    v31 = PLLogVideo();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v42 = [v6 objectForKeyedSubscript:@"PlaybackType"];
      v43 = 138412290;
      v44 = v42;
      _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentEventBackwardCMVideoPlayback playbackType enum: %@", &v43, 0xCu);
    }
  }

  v32 = [v4 objectForKeyedSubscript:@"PlayTimeWC"];
  if (v32)
  {
    v33 = v32;
    v34 = [v4 objectForKeyedSubscript:@"PlayTimeWC"];
    v35 = [v34 intValue];

    if (v35 >= 1001)
    {
      v36 = MEMORY[0x277CCABB0];
      v37 = MEMORY[0x277D3F258];
      v38 = [v6 objectForKeyedSubscript:@"PlayTimeWC"];
      v39 = [v36 numberWithInt:{objc_msgSend(v37, "roundToSigFig:withSigFig:", objc_msgSend(v38, "intValue"), 1)}];
      [v6 setObject:v39 forKeyedSubscript:@"PlayTimeWC"];

      v40 = PLLogVideo();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v43 = 138412290;
        v44 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentEventBackwardCMVideoPlayback logging payload: %@", &v43, 0xCu);
      }

      [(PLOperator *)self logEntry:v6];
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardCMVideoQueueWithEntry:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)PLVideoAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CMVideoQueue"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:v4];
  v7 = [v4 objectForKeyedSubscript:@"PlayTimeWC"];
  if (v7 && (v8 = v7, [v4 objectForKeyedSubscript:@"PlayTimeWC"], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "intValue"), v9, v8, v10 >= 1001))
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = MEMORY[0x277D3F258];
    v13 = [v6 objectForKeyedSubscript:@"PlayTimeWC"];
    v14 = [v11 numberWithInt:{objc_msgSend(v12, "roundToSigFig:withSigFig:", objc_msgSend(v13, "intValue"), 1)}];
    [v6 setObject:v14 forKeyedSubscript:@"PlayTimeWC"];

    [(PLOperator *)self logEntry:v6];
  }

  else
  {
    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentRegistrationCMVideoQueue PlayTimeWC is smaller than one second, skipping this log", v16, 2u);
    }
  }
}

- (void)logEventBackwardVTSessionWithEntry:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLOperator *)PLVideoAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"VTSession"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:v4];
  v7 = [v4 objectForKeyedSubscript:@"processID"];
  v8 = [v7 intValue];

  v9 = [MEMORY[0x277D3F258] bundleIDFromPid:v8];
  if (([MEMORY[0x277D3F180] liteMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "taskMode"))
  {
    if (([v9 hasPrefix:@"com.apple"] & 1) != 0 || objc_msgSend(&unk_282C14C28, "containsObject:", v9))
    {
      [v6 setObject:v9 forKeyedSubscript:@"BundleID"];
      v10 = MEMORY[0x277CCABB0];
      v11 = MEMORY[0x277D3F258];
      v12 = [v4 objectForKeyedSubscript:@"numFramesDecoded"];
      v13 = [v10 numberWithLong:{objc_msgSend(v11, "roundToSigFig:withSigFig:", objc_msgSend(v12, "intValue"), 3)}];
      [v6 setObject:v13 forKeyedSubscript:@"numFramesDecoded"];

      v14 = MEMORY[0x277CCABB0];
      v15 = MEMORY[0x277D3F258];
      v16 = [v4 objectForKeyedSubscript:@"numFramesEncoded"];
      v17 = [v14 numberWithLong:{objc_msgSend(v15, "roundToSigFig:withSigFig:", objc_msgSend(v16, "intValue"), 3)}];
      [v6 setObject:v17 forKeyedSubscript:@"numFramesEncoded"];
    }

    else
    {
      v19 = PLLogVideo();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v21[0] = 67109120;
        v21[1] = v8;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "the appBundleID is not approved and pid is %d", v21, 8u);
      }
    }
  }

  else
  {
    v18 = [MEMORY[0x277D3F258] bundleIDFromPid:v8];
    [v6 setObject:v18 forKeyedSubscript:@"BundleID"];
  }

  [(PLOperator *)self logEntry:v6];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardVTTileWithEntry:(id)a3
{
  v4 = *MEMORY[0x277D3F5C8];
  v5 = a3;
  v7 = [(PLOperator *)PLVideoAgent entryKeyForType:v4 andName:@"VTTile"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventIntervalGroupSession:(id)a3
{
  v4 = *MEMORY[0x277D3F5D8];
  v5 = a3;
  v14 = [(PLOperator *)PLVideoAgent entryKeyForType:v4 andName:@"GroupSession"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14 withRawData:v5];
  v7 = [v5 objectForKeyedSubscript:@"timestamp"];
  v8 = [v7 convertFromSystemToMonotonic];
  [v6 setEntryDate:v8];

  v9 = [v5 objectForKeyedSubscript:@"timestampEnd"];
  v10 = [v9 convertFromSystemToMonotonic];
  [v6 setObject:v10 forKeyedSubscript:@"timestampEnd"];

  v11 = [v5 objectForKeyedSubscript:@"bundleID"];

  [v6 setObject:v11 forKeyedSubscript:@"BundleID"];
  v12 = [v6 objectForKeyedSubscript:@"timestampEnd"];

  if (!v12)
  {
    v13 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v6 setObject:v13 forKeyedSubscript:@"timestampEnd"];
  }

  [(PLOperator *)self logEntry:v6];
}

+ (id)stateEnumForStateString:(id)a3
{
  v3 = qword_2811F4D68;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_2811F4D68, &__block_literal_global_231);
  }

  v5 = [qword_2811F4D60 objectForKeyedSubscript:v4];

  return v5;
}

void __40__PLVideoAgent_stateEnumForStateString___block_invoke()
{
  v0 = qword_2811F4D60;
  qword_2811F4D60 = &unk_282C185D0;
}

@end