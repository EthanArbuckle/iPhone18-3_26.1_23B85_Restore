@interface PLAccessibilityAgent
+ (id)entryEventForwardDefinitions;
+ (id)entryEventForwardNameBackTap;
+ (id)entryEventForwardNameBackgroundContrast;
+ (id)entryEventForwardNameFacetimeCaptioning;
+ (id)entryEventForwardNameReduceMotion;
+ (id)entryEventForwardNameSoundRecognition;
+ (id)entryEventForwardNameSpeakScreen;
+ (id)entryEventForwardNameSpeakSelection;
+ (id)entryEventForwardNameSystemCaptioning;
+ (id)entryEventForwardNameVoiceControl;
+ (void)load;
- (PLAccessibilityAgent)init;
- (void)initOperatorDependancies;
- (void)initTaskOperatorDependancies;
- (void)log;
- (void)logEventForwardBackTap;
- (void)logEventForwardBackgroundContrast;
- (void)logEventForwardEyeTracking;
- (void)logEventForwardFacetimeCaptioning;
- (void)logEventForwardReduceMotion;
- (void)logEventForwardSpeakScreen;
- (void)logEventForwardSpeakSelection;
- (void)logEventForwardSystemCaptioning;
- (void)logEventForwardVoiceControl;
- (void)logEventForwardZoom;
@end

@implementation PLAccessibilityAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAccessibilityAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v18[11] = *MEMORY[0x277D85DE8];
  v17[0] = @"ReduceMotion";
  v16 = [a1 entryEventForwardNameReduceMotion];
  v18[0] = v16;
  v17[1] = @"BackgroundContrast";
  v15 = [a1 entryEventForwardNameBackgroundContrast];
  v18[1] = v15;
  v17[2] = @"AssistiveTouch";
  v3 = [a1 entryEventForwardNameAssistiveTouch];
  v18[2] = v3;
  v17[3] = @"HandGestures";
  v4 = [a1 entryEventForwardNameHandGestures];
  v18[3] = v4;
  v17[4] = @"VoiceControl";
  v5 = [a1 entryEventForwardNameVoiceControl];
  v18[4] = v5;
  v17[5] = @"BackTap";
  v6 = [a1 entryEventForwardNameBackTap];
  v18[5] = v6;
  v17[6] = @"SoundRecognition";
  v7 = [a1 entryEventForwardNameSoundRecognition];
  v18[6] = v7;
  v17[7] = @"SpeakSelection";
  v8 = [a1 entryEventForwardNameSpeakSelection];
  v18[7] = v8;
  v17[8] = @"SpeakScreen";
  v9 = [a1 entryEventForwardNameSpeakScreen];
  v18[8] = v9;
  v17[9] = @"SystemCaptioning";
  v10 = [a1 entryEventForwardNameSystemCaptioning];
  v18[9] = v10;
  v17[10] = @"FacetimeCaptioning";
  v11 = [a1 entryEventForwardNameFacetimeCaptioning];
  v18[10] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardNameReduceMotion
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C4C8;
  v13[1] = MEMORY[0x277CBEC38];
  v12[2] = *MEMORY[0x277D3F508];
  v13[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"ReduceMotionEnabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardNameBackgroundContrast
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C4C8;
  v13[1] = MEMORY[0x277CBEC38];
  v12[2] = *MEMORY[0x277D3F508];
  v13[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"BackgroundContrastEnabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardNameVoiceControl
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C4D8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"VoiceControlEnabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardNameBackTap
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C4D8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"BackTapEnabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardNameSoundRecognition
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C4E8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"SoundRecognitionEnabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardNameSpeakSelection
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C4D8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"SpeakSelectionEnabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardNameSpeakScreen
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C4D8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"SpeakScreenEnabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardNameSystemCaptioning
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C4D8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"SystemCaptioningEnabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardNameFacetimeCaptioning
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C4C8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"FacetimeCaptioningEnabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (PLAccessibilityAgent)init
{
  v3.receiver = self;
  v3.super_class = PLAccessibilityAgent;
  return [(PLAgent *)&v3 init];
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F160]);
  v4 = *MEMORY[0x277D81C90];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke;
  v60[3] = &unk_2782597E8;
  v60[4] = self;
  v5 = [v3 initWithOperator:self forNotification:v4 requireState:0 withBlock:v60];
  notificationVoiceControlChanged = self->_notificationVoiceControlChanged;
  self->_notificationVoiceControlChanged = v5;

  v7 = objc_alloc(MEMORY[0x277D3F160]);
  v8 = *MEMORY[0x277D81C68];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_80;
  v59[3] = &unk_2782597E8;
  v59[4] = self;
  v9 = [v7 initWithOperator:self forNotification:v8 requireState:0 withBlock:v59];
  notificationBackTapChanged = self->_notificationBackTapChanged;
  self->_notificationBackTapChanged = v9;

  v11 = objc_alloc(MEMORY[0x277D3F160]);
  v12 = *MEMORY[0x277D81DC8];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_81;
  v58[3] = &unk_2782597E8;
  v58[4] = self;
  v13 = [v11 initWithOperator:self forNotification:v12 requireState:0 withBlock:v58];
  notificationEyeTrackingChanged = self->_notificationEyeTrackingChanged;
  self->_notificationEyeTrackingChanged = v13;

  v15 = objc_alloc(MEMORY[0x277D3F160]);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_85;
  v57[3] = &unk_2782597E8;
  v57[4] = self;
  v16 = [v15 initWithOperator:self forNotification:@"com.apple.accessibility.motion.cues.start" requireState:0 withBlock:v57];
  notificationMotionCuesStart = self->_notificationMotionCuesStart;
  self->_notificationMotionCuesStart = v16;

  v18 = objc_alloc(MEMORY[0x277D3F160]);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_89;
  v56[3] = &unk_2782597E8;
  v56[4] = self;
  v19 = [v18 initWithOperator:self forNotification:@"com.apple.accessibility.motion.cues.stop" requireState:0 withBlock:v56];
  notificationMotionCuesStop = self->_notificationMotionCuesStop;
  self->_notificationMotionCuesStop = v19;

  v21 = objc_alloc(MEMORY[0x277D3F160]);
  v22 = *MEMORY[0x277D81E28];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_90;
  v55[3] = &unk_2782597E8;
  v55[4] = self;
  v23 = [v21 initWithOperator:self forNotification:v22 requireState:0 withBlock:v55];
  notificationSoundRecognitionDisabled = self->_notificationSoundRecognitionDisabled;
  self->_notificationSoundRecognitionDisabled = v23;

  v25 = objc_alloc(MEMORY[0x277D3F160]);
  v26 = *MEMORY[0x277D81E30];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_91;
  v54[3] = &unk_2782597E8;
  v54[4] = self;
  v27 = [v25 initWithOperator:self forNotification:v26 requireState:0 withBlock:v54];
  notificationSoundRecognitionRunning = self->_notificationSoundRecognitionRunning;
  self->_notificationSoundRecognitionRunning = v27;

  v29 = objc_alloc(MEMORY[0x277D3F160]);
  v30 = *MEMORY[0x277D81DE0];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_92;
  v53[3] = &unk_2782597E8;
  v53[4] = self;
  v31 = [v29 initWithOperator:self forNotification:v30 requireState:0 withBlock:v53];
  notificationSpeakSelectionChanged = self->_notificationSpeakSelectionChanged;
  self->_notificationSpeakSelectionChanged = v31;

  v33 = objc_alloc(MEMORY[0x277D3F160]);
  v34 = *MEMORY[0x277D81E40];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_93;
  v52[3] = &unk_2782597E8;
  v52[4] = self;
  v35 = [v33 initWithOperator:self forNotification:v34 requireState:0 withBlock:v52];
  notificationSpeakScreenChanged = self->_notificationSpeakScreenChanged;
  self->_notificationSpeakScreenChanged = v35;

  v37 = objc_alloc(MEMORY[0x277D3F160]);
  v38 = *MEMORY[0x277D81DB8];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_94;
  v51[3] = &unk_2782597E8;
  v51[4] = self;
  v39 = [v37 initWithOperator:self forNotification:v38 requireState:0 withBlock:v51];
  notificationSystemCaptioningChanged = self->_notificationSystemCaptioningChanged;
  self->_notificationSystemCaptioningChanged = v39;

  v41 = objc_alloc(MEMORY[0x277D3F160]);
  v42 = *MEMORY[0x277D81BF0];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_95;
  v50[3] = &unk_2782597E8;
  v50[4] = self;
  v43 = [v41 initWithOperator:self forNotification:v42 requireState:0 withBlock:v50];
  notificationFacetimeCaptioningChanged = self->_notificationFacetimeCaptioningChanged;
  self->_notificationFacetimeCaptioningChanged = v43;

  v45 = objc_alloc(MEMORY[0x277D3F160]);
  v46 = *MEMORY[0x277D81EE8];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_96;
  v49[3] = &unk_2782597E8;
  v49[4] = self;
  v47 = [v45 initWithOperator:self forNotification:v46 requireState:0 withBlock:v49];
  notificationZoomChanged = self->_notificationZoomChanged;
  self->_notificationZoomChanged = v47;
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Voice Control Changed: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardVoiceControl];
  v6 = *MEMORY[0x277D85DE8];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_80(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Back Tap changed: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardBackTap];
  v6 = *MEMORY[0x277D85DE8];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_81(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Eye Tracking changed: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardEyeTracking];
  v6 = *MEMORY[0x277D85DE8];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_85(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Motion Cues Started: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardMotionCues:1];
  v6 = *MEMORY[0x277D85DE8];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_89(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Motion Cues Stopped: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardMotionCues:0];
  v6 = *MEMORY[0x277D85DE8];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_90(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Sound Recognition is disabled: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardSoundRecognition:0];
  v6 = *MEMORY[0x277D85DE8];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_91(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Sound Recognition is running: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardSoundRecognition:2];
  v6 = *MEMORY[0x277D85DE8];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_92(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Speak Selection changed: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardSpeakSelection];
  v6 = *MEMORY[0x277D85DE8];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_93(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Speak Screen changed: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardSpeakScreen];
  v6 = *MEMORY[0x277D85DE8];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_94(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "System Captioning changed: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardSystemCaptioning];
  v6 = *MEMORY[0x277D85DE8];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_95(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Facetime Captioning changed: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardFacetimeCaptioning];
  v6 = *MEMORY[0x277D85DE8];
}

void __48__PLAccessibilityAgent_initOperatorDependancies__block_invoke_96(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Zoom changed: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardZoom];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initTaskOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F160]);
  v4 = *MEMORY[0x277D81DF0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__PLAccessibilityAgent_initTaskOperatorDependancies__block_invoke;
  v12[3] = &unk_2782597E8;
  v12[4] = self;
  v5 = [v3 initWithOperator:self forNotification:v4 requireState:0 withBlock:v12];
  notificationReduceMotionChanged = self->_notificationReduceMotionChanged;
  self->_notificationReduceMotionChanged = v5;

  v7 = objc_alloc(MEMORY[0x277D3F160]);
  v8 = *MEMORY[0x277D81CB8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__PLAccessibilityAgent_initTaskOperatorDependancies__block_invoke_97;
  v11[3] = &unk_2782597E8;
  v11[4] = self;
  v9 = [v7 initWithOperator:self forNotification:v8 requireState:0 withBlock:v11];
  notificationBackgroundContrastChanged = self->_notificationBackgroundContrastChanged;
  self->_notificationBackgroundContrastChanged = v9;
}

void __52__PLAccessibilityAgent_initTaskOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Reduce Motion changed: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardReduceMotion];
  v6 = *MEMORY[0x277D85DE8];
}

void __52__PLAccessibilityAgent_initTaskOperatorDependancies__block_invoke_97(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Background Contrast changed: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardBackgroundContrast];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)log
{
  [(PLAccessibilityAgent *)self logEventForwardVoiceControl];
  [(PLAccessibilityAgent *)self logEventForwardBackTap];
  [(PLAccessibilityAgent *)self logEventForwardEyeTracking];
  [(PLAccessibilityAgent *)self logEventForwardSoundRecognition:_AXSSoundDetectionRunning()];
  [(PLAccessibilityAgent *)self logEventForwardSpeakSelection];
  [(PLAccessibilityAgent *)self logEventForwardSpeakScreen];
  [(PLAccessibilityAgent *)self logEventForwardSystemCaptioning];
  [(PLAccessibilityAgent *)self logEventForwardFacetimeCaptioning];
  [(PLAccessibilityAgent *)self logEventForwardZoom];
  if (([MEMORY[0x277D3F180] taskMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "fullMode"))
  {
    [(PLAccessibilityAgent *)self logEventForwardReduceMotion];

    [(PLAccessibilityAgent *)self logEventForwardBackgroundContrast];
  }
}

- (void)logEventForwardReduceMotion
{
  v5 = [(PLOperator *)PLAccessibilityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ReduceMotion"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSReduceMotionEnabled()];
  [v3 setObject:v4 forKeyedSubscript:@"ReduceMotionEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardBackgroundContrast
{
  v5 = [(PLOperator *)PLAccessibilityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"BackgroundContrast"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSEnhanceBackgroundContrastEnabled()];
  [v3 setObject:v4 forKeyedSubscript:@"BackgroundContrastEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardVoiceControl
{
  v5 = [(PLOperator *)PLAccessibilityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"VoiceControl"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSCommandAndControlEnabled()];
  [v3 setObject:v4 forKeyedSubscript:@"VoiceControlEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardBackTap
{
  v5 = [(PLOperator *)PLAccessibilityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"BackTap"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSBackTapEnabled()];
  [v3 setObject:v4 forKeyedSubscript:@"BackTapEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardEyeTracking
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = PLLogAccessibility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v10 = _AXSOnDeviceEyeTrackingEnabled();
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Eye Tracking state: %d", buf, 8u);
  }

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{_AXSOnDeviceEyeTrackingEnabled(), @"Enabled"}];
  v8 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  [(PLOperator *)self logForSubsystem:@"AccessibilityMetrics" category:@"EyeTracking" data:v5];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardSpeakSelection
{
  v5 = [(PLOperator *)PLAccessibilityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SpeakSelection"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSQuickSpeakEnabled()];
  [v3 setObject:v4 forKeyedSubscript:@"SpeakSelectionEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardSpeakScreen
{
  v5 = [(PLOperator *)PLAccessibilityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SpeakScreen"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSSpeakThisEnabled()];
  [v3 setObject:v4 forKeyedSubscript:@"SpeakScreenEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardSystemCaptioning
{
  v5 = [(PLOperator *)PLAccessibilityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SystemCaptioning"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSLiveTranscriptionEnabled()];
  [v3 setObject:v4 forKeyedSubscript:@"SystemCaptioningEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardFacetimeCaptioning
{
  v5 = [(PLOperator *)PLAccessibilityAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"FacetimeCaptioning"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSFaceTimeCaptionsEnabled()];
  [v3 setObject:v4 forKeyedSubscript:@"FacetimeCaptioningEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardZoom
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"Enabled";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSZoomTouchEnabled()];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  [(PLOperator *)self logForSubsystem:@"AccessibilityMetrics" category:@"ZoomEnabled" data:v4];
  v5 = *MEMORY[0x277D85DE8];
}

@end