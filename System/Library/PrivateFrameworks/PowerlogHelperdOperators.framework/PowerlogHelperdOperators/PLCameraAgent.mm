@interface PLCameraAgent
+ (id)entryEventForwardDefinitionCamera;
+ (id)entryEventForwardDefinitionTorch;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionSmartCamDetection;
+ (id)entryEventIntervalDefinitions;
+ (int)checkCameraType:(int)a3;
+ (void)load;
- (BOOL)allCamerasAreOff;
- (PLCameraAgent)init;
- (void)closeBackCameraAtDate:(id)a3;
- (void)closeFrontCameraAtDate:(id)a3;
- (void)closeOpenCameraEventsAtDate:(id)a3 withEntryKey:(id)a4;
- (void)handleCameraEvent:(id)a3 withEntryKey:(id)a4;
- (void)handleTorchEvent:(id)a3 withEntryKey:(id)a4;
- (void)initOperatorDependancies;
- (void)logEventIntervalSmartCamDetection:(id)a3;
- (void)modelBackCameraPowerWithEntry:(id)a3;
- (void)modelFrontCameraPowerWithEntry:(id)a3;
- (void)modelTorchPowerWithEntry:(id)a3;
@end

@implementation PLCameraAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLCameraAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Camera";
  v2 = +[PLCameraAgent entryEventForwardDefinitionCamera];
  v7[1] = @"Torch";
  v8[0] = v2;
  v3 = +[PLCameraAgent entryEventForwardDefinitionTorch];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryEventForwardDefinitionCamera
{
  v56[3] = *MEMORY[0x277D85DE8];
  v55[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v53[0] = *MEMORY[0x277D3F568];
  v53[1] = v2;
  v54[0] = &unk_28714B088;
  v54[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F4F8];
  v53[2] = *MEMORY[0x277D3F4A0];
  v53[3] = v3;
  v54[2] = MEMORY[0x277CBEC38];
  v54[3] = MEMORY[0x277CBEC38];
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:4];
  v56[0] = v46;
  v55[1] = *MEMORY[0x277D3F540];
  v51[0] = @"State";
  v45 = [MEMORY[0x277D3F198] sharedInstance];
  v44 = [v45 commonTypeDict_BoolFormat];
  v52[0] = v44;
  v51[1] = @"BundleId";
  v43 = [MEMORY[0x277D3F198] sharedInstance];
  v42 = [v43 commonTypeDict_StringFormat_withBundleID];
  v52[1] = v42;
  v51[2] = @"PixelFormatIsTenBit";
  v41 = [MEMORY[0x277D3F198] sharedInstance];
  v40 = [v41 commonTypeDict_BoolFormat];
  v52[2] = v40;
  v51[3] = @"MaximumSupportedFrameRate";
  v39 = [MEMORY[0x277D3F198] sharedInstance];
  v38 = [v39 commonTypeDict_RealFormat];
  v52[3] = v38;
  v51[4] = @"SecondaryInterFrameReferenceEnabled";
  v37 = [MEMORY[0x277D3F198] sharedInstance];
  v36 = [v37 commonTypeDict_BoolFormat];
  v52[4] = v36;
  v51[5] = @"SensorWidth";
  v35 = [MEMORY[0x277D3F198] sharedInstance];
  v34 = [v35 commonTypeDict_IntegerFormat];
  v52[5] = v34;
  v51[6] = @"SensorHeight";
  v33 = [MEMORY[0x277D3F198] sharedInstance];
  v32 = [v33 commonTypeDict_IntegerFormat];
  v52[6] = v32;
  v51[7] = @"VideoCaptureWidth";
  v31 = [MEMORY[0x277D3F198] sharedInstance];
  v30 = [v31 commonTypeDict_IntegerFormat];
  v52[7] = v30;
  v51[8] = @"VideoCaptureHeight";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_IntegerFormat];
  v52[8] = v28;
  v51[9] = @"BackgroundBlurEnabled";
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_BoolFormat];
  v52[9] = v26;
  v51[10] = @"DeferredCount";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_IntegerFormat];
  v52[10] = v24;
  v51[11] = @"CameraType";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_IntegerFormat];
  v52[11] = v22;
  v51[12] = @"ContinuityCameraType";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_IntegerFormat];
  v52[12] = v20;
  v51[13] = @"IsWired";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_BoolFormat];
  v52[13] = v18;
  v51[14] = @"AverageFramerate";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_RealFormat];
  v52[14] = v16;
  v51[15] = @"CenterStageEnabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v52[15] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:16];
  v56[1] = v6;
  v55[2] = *MEMORY[0x277D3F500];
  v49[0] = @"key";
  v47 = @"CaptureCount";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat];
  v48 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v49[1] = @"value";
  v50[0] = v9;
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_IntegerFormat];
  v50[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
  v56[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventForwardDefinitionTorch
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_28714B098;
  v19[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F4A0];
  v19[2] = MEMORY[0x277CBEC38];
  v4 = *MEMORY[0x277D3F4F0];
  v18[2] = v3;
  v18[3] = v4;
  v17[0] = @"BundleId";
  v17[1] = @"Level";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v19[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v20[1] = *MEMORY[0x277D3F540];
  v21[0] = v6;
  v15[0] = @"Level";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_BoolFormat];
  v15[1] = @"BundleId";
  v16[0] = v8;
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat_withBundleID];
  v16[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"SmartCamDetection";
  v2 = +[PLCameraAgent entryEventIntervalDefinitionSmartCamDetection];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventIntervalDefinitionSmartCamDetection
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25[0] = *MEMORY[0x277D3F4E8];
  v23 = *MEMORY[0x277D3F568];
  v24 = &unk_28714B0A8;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26[0] = v20;
  v25[1] = *MEMORY[0x277D3F540];
  v21[0] = @"timestampEnd";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_DateFormat];
  v22[0] = v18;
  v21[1] = @"GateID";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v22[1] = v16;
  v21[2] = @"NumTrackedRegions";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v22[2] = v14;
  v21[3] = @"NumBoxesPresented";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v22[3] = v3;
  v21[4] = @"NumFrames";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v22[4] = v5;
  v21[5] = @"NumEmptyFrames";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v22[5] = v7;
  v21[6] = @"NumClosingFrames";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v22[6] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];
  v26[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (PLCameraAgent)init
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || +[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd"))
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLCameraAgent;
    self = [(PLAgent *)&v5 init];
    v3 = self;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  v45[2] = *MEMORY[0x277D85DE8];
  v3 = +[PLUtilities torchTypeString];
  if (v3)
  {
    v4 = [PLUtilities powerModelForOperatorName:@"Torch"];
    v5 = [v4 objectForKeyedSubscript:v3];
    torchPowerModel = self->_torchPowerModel;
    self->_torchPowerModel = v5;
  }

  v36 = v3;
  self->_frontCameraIsOn = 0;
  self->_backCameraIsOn = 0;
  v7 = objc_opt_new();
  [(PLCameraAgent *)self setCameraState:v7];

  v8 = objc_opt_new();
  [(PLCameraAgent *)self setBackgroundBlurState:v8];

  v9 = *MEMORY[0x277D3F5D0];
  v10 = [(PLOperator *)PLCameraAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Camera"];
  v11 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLCameraAgent *)self closeOpenCameraEventsAtDate:v11 withEntryKey:v10];

  v12 = [(PLOperator *)PLCameraAgent entryKeyForType:v9 andName:@"Torch"];
  v13 = [(PLOperator *)self storage];
  v14 = [v13 lastEntryForKey:v12];

  if (v14)
  {
    v15 = [v14 objectForKeyedSubscript:{@"Level", v36}];
    [v15 doubleValue];
    v17 = v16;

    if (v17 > 0.0)
    {
      v18 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
      [v18 setObject:&unk_287145460 forKeyedSubscript:@"Level"];
      v19 = [v14 objectForKeyedSubscript:@"BundleId"];
      [v18 setObject:v19 forKeyedSubscript:@"BundleId"];

      [(PLOperator *)self logEntry:v18];
      [(PLCameraAgent *)self modelTorchPowerWithEntry:v18];
    }
  }

  v20 = objc_alloc(MEMORY[0x277D3F270]);
  v44[0] = @"clientID";
  v44[1] = @"event";
  v45[0] = &unk_287145478;
  v45[1] = @"CameraStreaming";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __41__PLCameraAgent_initOperatorDependancies__block_invoke;
  v40[3] = &unk_279A5BC90;
  v40[4] = self;
  v41 = v10;
  v22 = v10;
  v23 = [v20 initWithOperator:self withRegistration:v21 withBlock:v40];
  cameraNotification = self->_cameraNotification;
  self->_cameraNotification = v23;

  v25 = objc_alloc(MEMORY[0x277D3F270]);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __41__PLCameraAgent_initOperatorDependancies__block_invoke_166;
  v38[3] = &unk_279A5BC90;
  v38[4] = self;
  v39 = v12;
  v26 = v12;
  v27 = [v25 initWithOperator:self withRegistration:&unk_287147C58 withBlock:v38];
  torchNotification = self->_torchNotification;
  self->_torchNotification = v27;

  v29 = objc_alloc(MEMORY[0x277D3F270]);
  v42[0] = @"clientID";
  v42[1] = @"event";
  v43[0] = &unk_287145478;
  v43[1] = @"SmartCamDetection";
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __41__PLCameraAgent_initOperatorDependancies__block_invoke_167;
  v37[3] = &unk_279A5BCB8;
  v37[4] = self;
  v31 = [v29 initWithOperator:self withRegistration:v30 withBlock:v37];
  smartCamDetectionNotification = self->_smartCamDetectionNotification;
  self->_smartCamDetectionNotification = v31;

  v33 = [objc_alloc(MEMORY[0x277D3F1F0]) initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:&__block_literal_global_175];
  thermalMonitorListener = self->_thermalMonitorListener;
  self->_thermalMonitorListener = v33;

  v35 = *MEMORY[0x277D85DE8];
}

void __41__PLCameraAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogCamera();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __41__PLCameraAgent_initOperatorDependancies__block_invoke_cold_1();
  }

  [*(a1 + 32) handleCameraEvent:v6 withEntryKey:*(a1 + 40)];
}

void __41__PLCameraAgent_initOperatorDependancies__block_invoke_166(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogCamera();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __41__PLCameraAgent_initOperatorDependancies__block_invoke_166_cold_1();
  }

  [*(a1 + 32) handleTorchEvent:v6 withEntryKey:*(a1 + 40)];
}

void __41__PLCameraAgent_initOperatorDependancies__block_invoke_167(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogCamera();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __41__PLCameraAgent_initOperatorDependancies__block_invoke_167_cold_1();
  }

  [*(a1 + 32) logEventIntervalSmartCamDetection:v6];
}

void __41__PLCameraAgent_initOperatorDependancies__block_invoke_172(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PLLogCamera();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __41__PLCameraAgent_initOperatorDependancies__block_invoke_172_cold_1();
  }
}

- (void)closeOpenCameraEventsAtDate:(id)a3 withEntryKey:(id)a4
{
  v33[1] = *MEMORY[0x277D85DE8];
  v29 = a3;
  v6 = a4;
  v28 = [MEMORY[0x277CBEB18] array];
  v7 = 0;
  v8 = @"CameraType";
  v9 = @"%@ = %d";
  v10 = 0x277CCA000uLL;
  v11 = 0x277CBE000uLL;
  do
  {
    v31 = [*(v10 + 3240) stringWithFormat:v9, v8, v7];
    v12 = [*(v11 + 2656) arrayWithObject:?];
    v13 = [(PLOperator *)self storage];
    v30 = v12;
    v14 = [v13 lastEntryForKey:v6 withFilters:v12];

    if (v14)
    {
      v15 = [v14 objectForKeyedSubscript:@"State"];
      if (v15)
      {
        v16 = v15;
        [v14 objectForKeyedSubscript:@"State"];
        v17 = v10;
        v18 = self;
        v19 = v6;
        v20 = v9;
        v22 = v21 = v8;
        v23 = [v22 BOOLValue];

        v8 = v21;
        v9 = v20;
        v6 = v19;
        self = v18;
        v10 = v17;
        v11 = 0x277CBE000;

        if (v23)
        {
          v24 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withDate:v29];
          [v24 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"State"];
          [v24 setObject:@"init" forKeyedSubscript:@"BundleId"];
          v25 = [MEMORY[0x277CCABB0] numberWithInt:v7];
          [v24 setObject:v25 forKeyedSubscript:v8];

          [v28 addObject:v24];
          if (v7)
          {
            if (v7 == 2)
            {
              [(PLCameraAgent *)self closeFrontCameraAtDate:v29];
              [(PLCameraAgent *)self modelFrontCameraPowerWithEntry:v24];
            }
          }

          else
          {
            [(PLCameraAgent *)self closeBackCameraAtDate:v29];
            [(PLCameraAgent *)self modelBackCameraPowerWithEntry:v24];
          }
        }
      }
    }

    v7 = (v7 + 1);
  }

  while (v7 != 8);
  if ([v28 count])
  {
    v32 = v6;
    v33[0] = v28;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    [(PLOperator *)self logEntries:v26 withGroupID:v6];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)handleCameraEvent:(id)a3 withEntryKey:(id)a4
{
  v134 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v104 = a4;
  if (!v6)
  {
    goto LABEL_65;
  }

  v7 = [v6 objectForKeyedSubscript:@"Events"];

  if (!v7)
  {
    goto LABEL_65;
  }

  v103 = [MEMORY[0x277CBEB18] array];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v101 = v6;
  v8 = [v6 objectForKeyedSubscript:@"Events"];
  v9 = [v8 countByEnumeratingWithState:&v120 objects:v133 count:16];
  if (!v9)
  {
    goto LABEL_62;
  }

  v10 = v9;
  v11 = *v121;
  v102 = self;
  v105 = v8;
  v113 = *v121;
  do
  {
    v12 = 0;
    v109 = v10;
    do
    {
      if (*v121 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v120 + 1) + 8 * v12);
      v14 = PLLogCamera();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v132 = v13;
        _os_log_debug_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEBUG, "Camera payload event: %@", buf, 0xCu);
      }

      if (v13)
      {
        v15 = [v13 objectForKeyedSubscript:@"Timestamp"];
        if (v15)
        {
          v16 = v15;
          v17 = [v13 objectForKeyedSubscript:@"Streaming"];
          if (!v17)
          {
            goto LABEL_56;
          }

          v18 = v17;
          [v13 objectForKeyedSubscript:@"CameraType"];
          v20 = v19 = v16;

          if (!v20)
          {
            goto LABEL_57;
          }

          v21 = [v13 objectForKeyedSubscript:@"CameraType"];
          v22 = +[PLCameraAgent checkCameraType:](PLCameraAgent, "checkCameraType:", [v21 intValue]);

          if (v22 == -1)
          {
            v16 = PLLogCamera();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              [(PLCameraAgent *)v129 handleCameraEvent:v13 withEntryKey:&v130, v16];
            }

            v11 = v113;
            goto LABEL_56;
          }

          v23 = [v13 objectForKeyedSubscript:@"Streaming"];
          v24 = [v23 BOOLValue];

          if (v24)
          {
            v25 = [v13 objectForKeyedSubscript:@"BackgroundBlurEnabled"];
            v26 = [v25 BOOLValue];
          }

          else
          {
            v26 = 0;
          }

          v11 = v113;
          v27 = [v13 objectForKeyedSubscript:@"PID"];
          v28 = (v27 == 0) & v24;

          if ((v28 & 1) == 0)
          {
            v106 = v26;
            v29 = self;
            v30 = [(PLCameraAgent *)self cameraState];
            v31 = v24;
            v110 = v22;
            v32 = [MEMORY[0x277CCABB0] numberWithInt:v22];
            v33 = [v30 objectForKeyedSubscript:v32];

            v112 = v33;
            v111 = v24;
            if (v33 && v24 == [v33 BOOLValue])
            {
              if (v24)
              {
                v34 = v10;
                self = v29;
                v35 = [(PLCameraAgent *)v29 backgroundBlurState];
                v36 = [MEMORY[0x277CCABB0] numberWithInt:v110];
                v37 = [v35 objectForKeyedSubscript:v36];

                if (!v37 || v106 != [v37 BOOLValue])
                {

                  v11 = v113;
                  v31 = v24;
                  goto LABEL_28;
                }

                v8 = v105;
                v10 = v34;
                v16 = v33;
                v11 = v113;
LABEL_55:
              }

              else
              {
                v8 = v105;
                v16 = v33;
                self = v29;
              }

LABEL_56:

              goto LABEL_57;
            }

LABEL_28:
            v38 = [MEMORY[0x277CCABB0] numberWithBool:v31];
            self = v29;
            v39 = [(PLCameraAgent *)v29 cameraState];
            v40 = v110;
            v41 = [MEMORY[0x277CCABB0] numberWithInt:v110];
            [v39 setObject:v38 forKeyedSubscript:v41];

            v37 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v104];
            v108 = [v13 objectForKeyedSubscript:@"Timestamp"];
            v42 = [v108 convertFromSystemToMonotonic];
            [v37 setEntryDate:v42];

            v43 = [v13 objectForKeyedSubscript:@"ApplicationID"];
            v107 = v43;
            if (v43)
            {
              [v37 setObject:v43 forKeyedSubscript:@"BundleId"];
            }

            else
            {
              v44 = PLLogCamera();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
              {
                [(PLCameraAgent *)&v118 handleCameraEvent:v119 withEntryKey:v44];
              }

              v45 = [v13 objectForKeyedSubscript:@"PID"];
              v46 = [v45 intValue];

              v47 = [PLUtilities bundleIDFromPid:v46];
              [v37 setObject:v47 forKeyedSubscript:@"BundleId"];
            }

            v48 = [MEMORY[0x277CCABB0] numberWithBool:v24];
            [v37 setObject:v48 forKeyedSubscript:@"State"];

            v49 = [MEMORY[0x277CCABB0] numberWithInt:v110];
            [v37 setObject:v49 forKeyedSubscript:@"CameraType"];

            v50 = MEMORY[0x277CCABB0];
            if (v24)
            {
              v51 = [v13 objectForKeyedSubscript:@"PixelFormatIsTenBit"];
              v52 = [v50 numberWithBool:{objc_msgSend(v51, "BOOLValue")}];
              [v37 setObject:v52 forKeyedSubscript:@"PixelFormatIsTenBit"];

              v53 = MEMORY[0x277CCABB0];
              v54 = [v13 objectForKeyedSubscript:@"MaximumSupportedFrameRate"];
              [v54 doubleValue];
              v55 = [v53 numberWithDouble:?];
              [v37 setObject:v55 forKeyedSubscript:@"MaximumSupportedFrameRate"];

              v56 = MEMORY[0x277CCABB0];
              v57 = [v13 objectForKeyedSubscript:@"SecondaryInterFrameReferenceEnabled"];
              v58 = [v56 numberWithBool:{objc_msgSend(v57, "BOOLValue")}];
              [v37 setObject:v58 forKeyedSubscript:@"SecondaryInterFrameReferenceEnabled"];

              v59 = MEMORY[0x277CCABB0];
              v60 = [v13 objectForKeyedSubscript:@"SensorWidth"];
              v61 = [v59 numberWithInteger:{objc_msgSend(v60, "integerValue")}];
              [v37 setObject:v61 forKeyedSubscript:@"SensorWidth"];

              v62 = MEMORY[0x277CCABB0];
              v63 = [v13 objectForKeyedSubscript:@"SensorHeight"];
              v64 = [v62 numberWithInteger:{objc_msgSend(v63, "integerValue")}];
              [v37 setObject:v64 forKeyedSubscript:@"SensorHeight"];

              v65 = MEMORY[0x277CCABB0];
              v66 = [v13 objectForKeyedSubscript:@"VideoCaptureWidth"];
              v67 = [v65 numberWithInteger:{objc_msgSend(v66, "integerValue")}];
              [v37 setObject:v67 forKeyedSubscript:@"VideoCaptureWidth"];

              v68 = MEMORY[0x277CCABB0];
              v69 = [v13 objectForKeyedSubscript:@"VideoCaptureHeight"];
              v70 = [v68 numberWithInteger:{objc_msgSend(v69, "integerValue")}];
              [v37 setObject:v70 forKeyedSubscript:@"VideoCaptureHeight"];

              v71 = [MEMORY[0x277CCABB0] numberWithBool:v106];
              [v37 setObject:v71 forKeyedSubscript:@"BackgroundBlurEnabled"];

              v72 = [MEMORY[0x277CCABB0] numberWithBool:v106];
              v73 = [(PLCameraAgent *)v29 backgroundBlurState];
              v74 = [MEMORY[0x277CCABB0] numberWithInt:v110];
              [v73 setObject:v72 forKeyedSubscript:v74];

              v75 = MEMORY[0x277CCABB0];
              v76 = [v13 objectForKeyedSubscript:@"ContinuityCameraIsWired"];
              v77 = [v75 numberWithBool:{objc_msgSend(v76, "BOOLValue")}];
              [v37 setObject:v77 forKeyedSubscript:@"IsWired"];

              v78 = MEMORY[0x277CCABB0];
              v79 = [v13 objectForKeyedSubscript:@"CenterStageEnabled"];
              v80 = [v78 numberWithBool:{-[NSObject BOOLValue](v79, "BOOLValue")}];
              [v37 setObject:v80 forKeyedSubscript:@"CenterStageEnabled"];

              v10 = v109;
              goto LABEL_48;
            }

            v81 = [v13 objectForKeyedSubscript:@"AverageFramerate"];
            [v81 doubleValue];
            v82 = [v50 numberWithDouble:?];
            [v37 setObject:v82 forKeyedSubscript:@"AverageFramerate"];

            v83 = [v13 objectForKeyedSubscript:@"StillImageDeferredProcessingCount"];

            v10 = v109;
            if (v83)
            {
              v84 = [v13 objectForKeyedSubscript:@"StillImageDeferredProcessingCount"];
              [v37 setObject:v84 forKeyedSubscript:@"DeferredCount"];
            }

            v85 = [v13 objectForKeyedSubscript:@"StillImageCaptureCounts"];

            if (v85)
            {
              v116 = 0u;
              v117 = 0u;
              v114 = 0u;
              v115 = 0u;
              v86 = [v13 objectForKeyedSubscript:@"StillImageCaptureCounts"];
              v87 = [v86 countByEnumeratingWithState:&v114 objects:v128 count:16];
              if (v87)
              {
                v88 = v87;
                v89 = *v115;
                do
                {
                  for (i = 0; i != v88; ++i)
                  {
                    if (*v115 != v89)
                    {
                      objc_enumerationMutation(v86);
                    }

                    v91 = *(*(&v114 + 1) + 8 * i);
                    v126 = @"CaptureCount";
                    v127 = v91;
                    v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
                    v93 = [v13 objectForKeyedSubscript:@"StillImageCaptureCounts"];
                    v94 = [v93 objectForKeyedSubscript:v91];
                    [v37 setObject:v94 forKeyedSubscript:v92];
                  }

                  v88 = [v86 countByEnumeratingWithState:&v114 objects:v128 count:16];
                }

                while (v88);
              }

              v79 = PLLogCamera();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v132 = v37;
                _os_log_debug_impl(&dword_25EE51000, v79, OS_LOG_TYPE_DEBUG, "dynamic table entry: %@", buf, 0xCu);
              }

              self = v102;
              v10 = v109;
              v11 = v113;
              v40 = v110;
LABEL_48:
            }

            v95 = MEMORY[0x277CCABB0];
            v96 = [v13 objectForKeyedSubscript:@"ContinuityCameraType"];
            v97 = [v95 numberWithInteger:{objc_msgSend(v96, "integerValue")}];
            [v37 setObject:v97 forKeyedSubscript:@"ContinuityCameraType"];

            v8 = v105;
            v16 = v112;
            if (v40 <= 6)
            {
              if (((1 << v40) & 0x33) != 0)
              {
                [(PLCameraAgent *)self setBackCameraIsOn:v111];
                [(PLCameraAgent *)self modelBackCameraPowerWithEntry:v37];
              }

              else if (((1 << v40) & 0x44) != 0)
              {
                [(PLCameraAgent *)self setFrontCameraIsOn:v111];
                [(PLCameraAgent *)self modelFrontCameraPowerWithEntry:v37];
              }
            }

            [v103 addObject:v37];

            goto LABEL_55;
          }
        }
      }

LABEL_57:
      ++v12;
    }

    while (v12 != v10);
    v98 = [v8 countByEnumeratingWithState:&v120 objects:v133 count:16];
    v10 = v98;
  }

  while (v98);
LABEL_62:

  if ([v103 count])
  {
    v124 = v104;
    v125 = v103;
    v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
    [(PLOperator *)self logEntries:v99 withGroupID:v104];
  }

  v6 = v101;
LABEL_65:

  v100 = *MEMORY[0x277D85DE8];
}

- (void)handleTorchEvent:(id)a3 withEntryKey:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277D3F190];
  v8 = a4;
  v9 = [[v7 alloc] initWithEntryKey:v8 withRawData:v6];

  v10 = [v6 objectForKeyedSubscript:@"ApplicationID"];
  if (v10)
  {
    [v9 setObject:v10 forKeyedSubscript:@"BundleId"];
  }

  else
  {
    v11 = PLLogCamera();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLCameraAgent handleTorchEvent:v11 withEntryKey:?];
    }

    v12 = [v6 objectForKeyedSubscript:@"PID"];
    v13 = +[PLUtilities bundleIDFromPid:](PLUtilities, "bundleIDFromPid:", [v12 intValue]);
    [v9 setObject:v13 forKeyedSubscript:@"BundleId"];
  }

  v14 = [v6 objectForKeyedSubscript:@"State"];
  if (v14)
  {
    v15 = v14;
    v16 = [v6 objectForKeyedSubscript:@"Level"];

    if (!v16)
    {
      v17 = [v6 objectForKeyedSubscript:@"State"];
      [v9 setObject:v17 forKeyedSubscript:@"Level"];
    }
  }

  [(PLOperator *)self logEntry:v9];
  [(PLCameraAgent *)self modelTorchPowerWithEntry:v9];
}

- (void)logEventIntervalSmartCamDetection:(id)a3
{
  v4 = *MEMORY[0x277D3F5D8];
  v5 = a3;
  v13 = [(PLOperator *)PLCameraAgent entryKeyForType:v4 andName:@"SmartCamDetection"];
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

- (void)closeFrontCameraAtDate:(id)a3
{
  v5 = a3;
  if ([(PLCameraAgent *)self frontCameraIsOn])
  {
    v4 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v4 createPowerEventForwardWithRootNodeID:17 withPower:v5 withStartDate:0.0];

    [(PLCameraAgent *)self setFrontCameraIsOn:0];
  }
}

- (void)closeBackCameraAtDate:(id)a3
{
  v5 = a3;
  if ([(PLCameraAgent *)self backCameraIsOn])
  {
    v4 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v4 createPowerEventForwardWithRootNodeID:18 withPower:v5 withStartDate:0.0];

    [(PLCameraAgent *)self setBackCameraIsOn:0];
  }
}

- (void)modelFrontCameraPowerWithEntry:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = 0.0;
  if ([(PLCameraAgent *)self frontCameraIsOn])
  {
    [(PLCameraAgent *)self getCameraPower:2];
    v5 = v6;
    v7 = PLLogCamera();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(PLCameraAgent *)v7 modelFrontCameraPowerWithEntry:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  v15 = [MEMORY[0x277D3F0C0] sharedInstance];
  v16 = [v4 entryDate];
  [v15 createPowerEventForwardWithRootNodeID:17 withPower:v16 withStartDate:v5];

  if ([(PLCameraAgent *)self frontCameraIsOn])
  {
    v17 = [v4 objectForKeyedSubscript:@"BundleId"];
    v18 = v17;
    v19 = @"com.apple.deadcanary";
    if (v17)
    {
      v19 = v17;
    }

    v20 = v19;

    if ([(__CFString *)v20 isEqualToString:@"com.apple.avconferenced"])
    {

      v20 = @"avconferenced";
    }

    v29 = v20;
    v30[0] = &unk_28714B0A8;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v22 = [MEMORY[0x277D3F0C0] sharedInstance];
    v23 = [v4 entryDate];
    [v22 createDistributionEventForwardWithDistributionID:13 withChildNodeNameToWeight:v21 withStartDate:v23];

    v24 = [MEMORY[0x277D3F0C0] sharedInstance];
    v25 = [v4 entryDate];
    [v24 createDistributionEventForwardWithDistributionID:43 withChildNodeNameToWeight:v21 withStartDate:v25];
  }

  else
  {
    if (![(PLCameraAgent *)self allCamerasAreOff])
    {
      v21 = MEMORY[0x277CBEC10];
      goto LABEL_15;
    }

    v26 = [MEMORY[0x277D3F0C0] sharedInstance];
    v27 = [v4 entryDate];
    v21 = MEMORY[0x277CBEC10];
    [v26 createDistributionEventForwardWithDistributionID:13 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:v27];

    v20 = [MEMORY[0x277D3F0C0] sharedInstance];
    v24 = [v4 entryDate];
    [(__CFString *)v20 createDistributionEventForwardWithDistributionID:43 withChildNodeNameToWeight:v21 withStartDate:v24];
  }

LABEL_15:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)modelBackCameraPowerWithEntry:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = 0.0;
  if ([(PLCameraAgent *)self backCameraIsOn])
  {
    [(PLCameraAgent *)self getCameraPower:0];
    v5 = v6;
    v7 = PLLogCamera();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(PLCameraAgent *)v7 modelBackCameraPowerWithEntry:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  v15 = [MEMORY[0x277D3F0C0] sharedInstance];
  v16 = [v4 entryDate];
  [v15 createPowerEventForwardWithRootNodeID:18 withPower:v16 withStartDate:v5];

  if ([(PLCameraAgent *)self backCameraIsOn])
  {
    v17 = [v4 objectForKeyedSubscript:@"BundleId"];
    v18 = v17;
    v19 = @"com.apple.deadcanary";
    if (v17)
    {
      v19 = v17;
    }

    v20 = v19;

    if ([(__CFString *)v20 isEqualToString:@"com.apple.avconferenced"])
    {

      v20 = @"avconferenced";
    }

    v29 = v20;
    v30[0] = &unk_28714B0A8;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v22 = [MEMORY[0x277D3F0C0] sharedInstance];
    v23 = [v4 entryDate];
    [v22 createDistributionEventForwardWithDistributionID:13 withChildNodeNameToWeight:v21 withStartDate:v23];

    v24 = [MEMORY[0x277D3F0C0] sharedInstance];
    v25 = [v4 entryDate];
    [v24 createDistributionEventForwardWithDistributionID:43 withChildNodeNameToWeight:v21 withStartDate:v25];
  }

  else
  {
    if (![(PLCameraAgent *)self allCamerasAreOff])
    {
      v21 = MEMORY[0x277CBEC10];
      goto LABEL_15;
    }

    v26 = [MEMORY[0x277D3F0C0] sharedInstance];
    v27 = [v4 entryDate];
    v21 = MEMORY[0x277CBEC10];
    [v26 createDistributionEventForwardWithDistributionID:13 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:v27];

    v20 = [MEMORY[0x277D3F0C0] sharedInstance];
    v24 = [v4 entryDate];
    [(__CFString *)v20 createDistributionEventForwardWithDistributionID:43 withChildNodeNameToWeight:v21 withStartDate:v24];
  }

LABEL_15:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)modelTorchPowerWithEntry:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Level"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [(PLCameraAgent *)self torchPowerModel];
  [PLUtilities scaledPowerBasedOnPoint:v8 withPowerModel:v7];
  v10 = v9;

  v11 = [MEMORY[0x277D3F0C0] sharedInstance];
  v12 = [v4 entryDate];
  [v11 createPowerEventForwardWithRootNodeID:19 withPower:v12 withStartDate:v10];

  v13 = [v4 objectForKeyedSubscript:@"BundleId"];
  v14 = v13;
  v15 = @"Flashlight";
  if (v13 && [(__CFString *)v13 rangeOfString:@"com.apple.springboard"]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v14;
  }

  v16 = v15;

  if (v7 == 0.0)
  {
    v17 = MEMORY[0x277CBEC10];
  }

  else
  {
    v23 = v16;
    v24[0] = &unk_28714B0A8;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  }

  v18 = [MEMORY[0x277D3F0C0] sharedInstance];
  v19 = [v4 entryDate];
  [v18 createDistributionEventForwardWithDistributionID:16 withChildNodeNameToWeight:v17 withStartDate:v19];

  v20 = [MEMORY[0x277D3F0C0] sharedInstance];
  v21 = [v4 entryDate];
  [v20 createDistributionEventForwardWithDistributionID:13 withChildNodeNameToWeight:v17 withStartDate:v21];

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)allCamerasAreOff
{
  if ([(PLCameraAgent *)self frontCameraIsOn])
  {
    return 0;
  }

  else
  {
    return ![(PLCameraAgent *)self backCameraIsOn];
  }
}

+ (int)checkCameraType:(int)a3
{
  v3 = a3;
  if (a3 >= 8)
  {
    v4 = PLLogCamera();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(PLCameraAgent *)v3 checkCameraType:v4];
    }

    return -1;
  }

  return v3;
}

void __41__PLCameraAgent_initOperatorDependancies__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Camera payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __41__PLCameraAgent_initOperatorDependancies__block_invoke_166_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Torch payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __41__PLCameraAgent_initOperatorDependancies__block_invoke_167_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "SmartCamDetection payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __41__PLCameraAgent_initOperatorDependancies__block_invoke_172_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Notification from ThermalMonitor: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleCameraEvent:(os_log_t)log withEntryKey:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "Using pid to lookup bundleID", buf, 2u);
}

- (void)handleCameraEvent:(void *)a3 withEntryKey:(NSObject *)a4 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 objectForKeyedSubscript:@"CameraType"];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_25EE51000, a4, OS_LOG_TYPE_ERROR, "Unknown camera type: %@", a1, 0xCu);
}

- (void)getCameraPower:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "No camera power model exists for camera class: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)modelFrontCameraPowerWithEntry:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_25EE51000, a1, a3, "Power value for front camera: %f", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)modelBackCameraPowerWithEntry:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_25EE51000, a1, a3, "Power value for rear camera: %f", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)checkCameraType:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "PLCameraAgent checkCameraType undefined camera type: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end