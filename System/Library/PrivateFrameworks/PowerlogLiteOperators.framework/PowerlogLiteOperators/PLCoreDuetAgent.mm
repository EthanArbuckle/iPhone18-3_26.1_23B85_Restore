@interface PLCoreDuetAgent
+ (id)entryEventForwardDefinitionInactivityFeatures;
+ (id)entryEventForwardDefinitionInactivityPredictionInterruption;
+ (id)entryEventForwardDefinitionInactivityPredictionQuery;
+ (id)entryEventForwardDefinitionInactivityPredictionTimeline;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionInBedDetection;
+ (id)entryEventIntervalDefinitionInactivityPrediction;
+ (id)entryEventIntervalDefinitions;
+ (void)load;
- (PLCoreDuetAgent)init;
- (void)initOperatorDependancies;
- (void)logEventForwardInactivityFeatures:(id)features;
- (void)logEventForwardInactivityPredictionInterruption:(id)interruption;
- (void)logEventForwardInactivityPredictionQuery:(id)query;
- (void)logEventForwardInactivityPredictionTimeline:(id)timeline;
- (void)logEventIntervalInactivityPrediction:(id)prediction;
@end

@implementation PLCoreDuetAgent

void __43__PLCoreDuetAgent_initOperatorDependancies__block_invoke_165(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCoreDuet();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "InactivityPredictionTimeline payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardInactivityPredictionTimeline:v6];
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLCoreDuetAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventIntervalDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"InBedDetection";
  v2 = +[PLCoreDuetAgent entryEventIntervalDefinitionInBedDetection];
  v7[1] = @"InactivityPrediction";
  v8[0] = v2;
  v3 = +[PLCoreDuetAgent entryEventIntervalDefinitionInactivityPrediction];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryEventIntervalDefinitionInBedDetection
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1BB38;
  v15[1] = MEMORY[0x277CBEC38];
  v14[2] = *MEMORY[0x277D3F580];
  v15[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"timestampEnd";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v12[1] = @"Confidence";
  v13[0] = commonTypeDict_DateFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v13[1] = commonTypeDict_IntegerFormat;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventIntervalDefinitionInactivityPrediction
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_282C1BB38;
  v23[1] = &unk_282C0CFA8;
  v22[2] = *MEMORY[0x277D3F588];
  v23[2] = &unk_282C1BB48;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"timestampEnd";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v21[0] = commonTypeDict_DateFormat;
  v20[1] = @"InactivityTimestamp";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_DateFormat];
  v21[1] = commonTypeDict_DateFormat2;
  v20[2] = @"InactivityTimestampEnd";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v21[2] = commonTypeDict_DateFormat3;
  v20[3] = @"ModelConfidence";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
  v21[3] = commonTypeDict_RealFormat;
  v20[4] = @"ModelEngaged";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]5 commonTypeDict_BoolFormat];
  v21[4] = commonTypeDict_BoolFormat;
  v20[5] = @"PredictedDuration";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
  v21[5] = commonTypeDict_RealFormat2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v25[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitions
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"InactivityFeatures";
  v2 = +[PLCoreDuetAgent entryEventForwardDefinitionInactivityFeatures];
  v10[0] = v2;
  v9[1] = @"InactivityPredictionQuery";
  v3 = +[PLCoreDuetAgent entryEventForwardDefinitionInactivityPredictionQuery];
  v10[1] = v3;
  v9[2] = @"InactivityPredictionTimeline";
  v4 = +[PLCoreDuetAgent entryEventForwardDefinitionInactivityPredictionTimeline];
  v10[2] = v4;
  v9[3] = @"InactivityPredictionInterruption";
  v5 = +[PLCoreDuetAgent entryEventForwardDefinitionInactivityPredictionInterruption];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardDefinitionInactivityFeatures
{
  v28[2] = *MEMORY[0x277D85DE8];
  v27[0] = *MEMORY[0x277D3F4E8];
  v25 = *MEMORY[0x277D3F568];
  v26 = &unk_282C1BB38;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v28[0] = v22;
  v27[1] = *MEMORY[0x277D3F540];
  v23[0] = @"recent_q95_1";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v24[0] = commonTypeDict_IntegerFormat;
  v23[1] = @"woo_q95_1";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v24[1] = commonTypeDict_IntegerFormat2;
  v23[2] = @"recent_q95_2";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v24[2] = commonTypeDict_IntegerFormat3;
  v23[3] = @"recent_q75_1";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v24[3] = commonTypeDict_IntegerFormat4;
  v23[4] = @"recent_q75_2";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v24[4] = commonTypeDict_IntegerFormat5;
  v23[5] = @"recent_dur_med_1";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v24[5] = commonTypeDict_IntegerFormat6;
  v23[6] = @"woo_q50_1";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v24[6] = commonTypeDict_IntegerFormat7;
  v23[7] = @"woo_q95_2";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v24[7] = commonTypeDict_IntegerFormat8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:8];
  v28[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionInactivityPredictionTimeline
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_282C1BB58;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"eventType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"reason";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v12[1] = commonTypeDict_IntegerFormat2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventForwardDefinitionInactivityPredictionQuery
{
  v34[2] = *MEMORY[0x277D85DE8];
  v33[0] = *MEMORY[0x277D3F4E8];
  v31 = *MEMORY[0x277D3F568];
  v32 = &unk_282C1BB38;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v34[0] = v28;
  v33[1] = *MEMORY[0x277D3F540];
  v29[0] = @"AmbientLightLevel";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v30[0] = commonTypeDict_IntegerFormat;
  v29[1] = @"StationaryLevel";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v30[1] = commonTypeDict_IntegerFormat2;
  v29[2] = @"CurrentPlayback";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v30[2] = commonTypeDict_BoolFormat;
  v29[3] = @"MediaPlayback";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v30[3] = commonTypeDict_IntegerFormat3;
  v29[4] = @"DeadlineSetter";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v30[4] = commonTypeDict_IntegerFormat4;
  v29[5] = @"ModelType";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v30[5] = commonTypeDict_IntegerFormat5;
  v29[6] = @"ModelConfidence";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v30[6] = commonTypeDict_IntegerFormat6;
  v29[7] = @"ModelConfidenceLevel";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v30[7] = commonTypeDict_IntegerFormat7;
  v29[8] = @"PredictedDuration";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v30[8] = commonTypeDict_IntegerFormat8;
  v29[9] = @"TreatmentID";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]10 commonTypeDict_StringFormat];
  v30[9] = commonTypeDict_StringFormat;
  v29[10] = @"RolloutID";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]11 commonTypeDict_StringFormat];
  v30[10] = commonTypeDict_StringFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:11];
  v34[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionInactivityPredictionInterruption
{
  v30[2] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D3F4E8];
  v27 = *MEMORY[0x277D3F568];
  v28 = &unk_282C1BB68;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30[0] = v24;
  v29[1] = *MEMORY[0x277D3F540];
  v25[0] = @"interruptionDuration";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v26[0] = commonTypeDict_IntegerFormat;
  v25[1] = @"intrLuxValue";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v26[1] = commonTypeDict_IntegerFormat2;
  v25[2] = @"intrTimeUntilNextAlarm";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v26[2] = commonTypeDict_IntegerFormat3;
  v25[3] = @"intrTimeUntilEndOfDnd";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v26[3] = commonTypeDict_IntegerFormat4;
  v25[4] = @"intrActivityCountYesterdaySameHour";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v26[4] = commonTypeDict_IntegerFormat5;
  v25[5] = @"intrActivityCountLastHour";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v26[5] = commonTypeDict_IntegerFormat6;
  v25[6] = @"deviceIdleFrequency";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v26[6] = commonTypeDict_IntegerFormat7;
  v25[7] = @"intrActivityDurationLastHour";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v26[7] = commonTypeDict_IntegerFormat8;
  v25[8] = @"intrActivityDurationYesterdaySameHour";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v26[8] = commonTypeDict_IntegerFormat9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:9];
  v30[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (PLCoreDuetAgent)init
{
  v3.receiver = self;
  v3.super_class = PLCoreDuetAgent;
  return [(PLAgent *)&v3 init];
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __43__PLCoreDuetAgent_initOperatorDependancies__block_invoke;
  v22[3] = &unk_27825A1D8;
  v22[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C16DC0 withBlock:v22];
  inactivityPredictionListener = self->_inactivityPredictionListener;
  self->_inactivityPredictionListener = v4;

  v6 = objc_alloc(MEMORY[0x277D3F270]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __43__PLCoreDuetAgent_initOperatorDependancies__block_invoke_160;
  v21[3] = &unk_27825A1D8;
  v21[4] = self;
  v7 = [v6 initWithOperator:self withRegistration:&unk_282C16DE8 withBlock:v21];
  inactivityFeaturesListener = self->_inactivityFeaturesListener;
  self->_inactivityFeaturesListener = v7;

  v9 = objc_alloc(MEMORY[0x277D3F270]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __43__PLCoreDuetAgent_initOperatorDependancies__block_invoke_165;
  v20[3] = &unk_27825A1D8;
  v20[4] = self;
  v10 = [v9 initWithOperator:self withRegistration:&unk_282C16E10 withBlock:v20];
  inactivityPredictionTimelineListener = self->_inactivityPredictionTimelineListener;
  self->_inactivityPredictionTimelineListener = v10;

  if (([MEMORY[0x277D3F208] internalBuild] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "taskMode"))
  {
    v12 = objc_alloc(MEMORY[0x277D3F270]);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __43__PLCoreDuetAgent_initOperatorDependancies__block_invoke_172;
    v19[3] = &unk_27825A1D8;
    v19[4] = self;
    v13 = [v12 initWithOperator:self withRegistration:&unk_282C16E38 withBlock:v19];
    inactivityPredictionQueryListener = self->_inactivityPredictionQueryListener;
    self->_inactivityPredictionQueryListener = v13;

    v15 = objc_alloc(MEMORY[0x277D3F270]);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __43__PLCoreDuetAgent_initOperatorDependancies__block_invoke_177;
    v18[3] = &unk_27825A1D8;
    v18[4] = self;
    v16 = [v15 initWithOperator:self withRegistration:&unk_282C16E60 withBlock:v18];
    inactivityPredictionInterruptionListener = self->_inactivityPredictionInterruptionListener;
    self->_inactivityPredictionInterruptionListener = v16;
  }
}

void __43__PLCoreDuetAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCoreDuet();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "InactivityPrediction payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalInactivityPrediction:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __43__PLCoreDuetAgent_initOperatorDependancies__block_invoke_160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCoreDuet();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "InactivityFeatures payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardInactivityFeatures:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __43__PLCoreDuetAgent_initOperatorDependancies__block_invoke_172(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCoreDuet();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "InactivityPredictionQuery payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardInactivityPredictionQuery:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __43__PLCoreDuetAgent_initOperatorDependancies__block_invoke_177(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCoreDuet();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "InactivityPredictionInterruption payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardInactivityPredictionInterruption:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)logEventIntervalInactivityPrediction:(id)prediction
{
  v4 = *MEMORY[0x277D3F5D8];
  predictionCopy = prediction;
  v13 = [(PLOperator *)PLCoreDuetAgent entryKeyForType:v4 andName:@"InactivityPrediction"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13 withRawData:predictionCopy];
  v7 = [predictionCopy objectForKeyedSubscript:@"timestamp"];
  convertFromSystemToMonotonic = [v7 convertFromSystemToMonotonic];
  [v6 setEntryDate:convertFromSystemToMonotonic];

  v9 = [predictionCopy objectForKeyedSubscript:@"timestampEnd"];

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

- (void)logEventForwardInactivityFeatures:(id)features
{
  v4 = *MEMORY[0x277D3F5D0];
  featuresCopy = features;
  v7 = [(PLOperator *)PLCoreDuetAgent entryKeyForType:v4 andName:@"InactivityFeatures"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:featuresCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardInactivityPredictionInterruption:(id)interruption
{
  v4 = *MEMORY[0x277D3F5D0];
  interruptionCopy = interruption;
  v15 = [(PLOperator *)PLCoreDuetAgent entryKeyForType:v4 andName:@"InactivityPredictionInterruption"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15 withRawData:interruptionCopy];
  v7 = MEMORY[0x277CCABB0];
  v8 = [interruptionCopy objectForKeyedSubscript:@"intrActivityDurationLastHour"];
  [v8 doubleValue];
  v10 = [v7 numberWithDouble:round(v9 / 10.0) * 10.0];
  [v6 setObject:v10 forKeyedSubscript:@"intrActivityDurationLastHour"];

  v11 = MEMORY[0x277CCABB0];
  v12 = [interruptionCopy objectForKeyedSubscript:@"intrActivityDurationYesterdaySameHour"];

  [v12 doubleValue];
  v14 = [v11 numberWithDouble:round(v13 / 10.0) * 10.0];
  [v6 setObject:v14 forKeyedSubscript:@"intrActivityDurationYesterdaySameHour"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardInactivityPredictionQuery:(id)query
{
  v4 = *MEMORY[0x277D3F5D0];
  queryCopy = query;
  v7 = [(PLOperator *)PLCoreDuetAgent entryKeyForType:v4 andName:@"InactivityPredictionQuery"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:queryCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardInactivityPredictionTimeline:(id)timeline
{
  v4 = *MEMORY[0x277D3F5D0];
  timelineCopy = timeline;
  v7 = [(PLOperator *)PLCoreDuetAgent entryKeyForType:v4 andName:@"InactivityPredictionTimeline"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:timelineCopy];

  [(PLOperator *)self logEntry:v6];
}

@end