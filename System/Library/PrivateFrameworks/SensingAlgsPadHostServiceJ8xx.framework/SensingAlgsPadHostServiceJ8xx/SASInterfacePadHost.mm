@interface SASInterfacePadHost
- ($3FFB85F807698FB051441EDCD924163A)phone_telemetry;
- ($F2544535907296EB357DA0304DEA202B)cover_gesture;
- (BOOL)handleInputStream:(id)stream;
- (BOOL)injectProperty:(id)property;
- (BOOL)injectProperty:(id)property value:(id)value;
- (BOOL)isContactReclassificationNeeded;
- (SASInterfacePadHost)initWithStreamSize:(unint64_t)size platformId:(unint64_t)id streamCallback:(id)callback;
- (id)generateCoverGesture:(unint64_t)gesture state:(unsigned __int8)state surfaceCovered:(float)covered;
- (id)generateEventInfo:(id *)info interpolated:(BOOL)interpolated timestamp:(unint64_t)timestamp;
- (id)generateFingerEvent:(id *)event interpolated:(BOOL)interpolated now:(unint64_t)now;
- (id)generateHandEvent:(id *)event interpolated:(BOOL)interpolated now:(unint64_t)now;
- (id)generatePreHysteresisAngles:(const FireflyUnfilteredAnglesPacket *)angles timestamp:(unint64_t)timestamp;
- (id)generateStylusEvent:(id *)event interpolated:(BOOL)interpolated now:(unint64_t)now;
- (id)generateStylusHandEvent:(id *)event interpolated:(BOOL)interpolated now:(unint64_t)now;
- (id)generateSwipeUp:(unint64_t)up;
- (id)generateTouchSystemReady:(unint64_t)ready;
- (id)generateWakeEvent:(int)event timestamp:(unint64_t)timestamp;
- (unint64_t)getValidTimestamp:(unint64_t)timestamp now:(unint64_t)now;
- (unint64_t)stitchingTS:(unint64_t)s now:(unint64_t)now;
- (void)addVersion:(id)version;
- (void)callCoreAnalyticsCallback;
- (void)callEventCallback;
- (void)callPadTouchCoreAnalyticsCallback;
- (void)callPencilEventCallback;
- (void)callResetRequestCallback:(unsigned __int16)callback arg_ptr:(const void *)arg_ptr;
- (void)callStreamCallback:(unint64_t)callback;
- (void)cleanNodes;
- (void)cleanStylusNodes;
- (void)configureCallbacks;
- (void)configureTranslation;
- (void)createPadHostAlgsDevice:(unsigned int)device;
- (void)defaultStreamingConfiguration;
- (void)initContactReclassificationParams;
- (void)initProperties;
@end

@implementation SASInterfacePadHost

- ($F2544535907296EB357DA0304DEA202B)cover_gesture
{
  v2 = *&self->_cover_gesture.state;
  timestamp_us = self->_cover_gesture.timestamp_us;
  result.var1 = v2;
  result.var2 = *(&v2 + 1);
  result.var0 = timestamp_us;
  return result;
}

- ($3FFB85F807698FB051441EDCD924163A)phone_telemetry
{
  v2 = *&self->_phone_telemetry.scan_frequency_index;
  v3 = *&self->_phone_telemetry.baseline_adaption_interval_ms;
  result.var2 = v2;
  result.var3 = BYTE1(v2);
  result.var4 = BYTE2(v2);
  result.var5 = BYTE3(v2);
  result.var6 = BYTE4(v2);
  result.var7 = BYTE5(v2);
  result.var8 = BYTE6(v2);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

- (void)addVersion:(id)version
{
  versionCopy = version;
  [(NSMutableArray *)self->_versions addObject:?];
  device = self->_device;
  uTF8String = [versionCopy UTF8String];
  if (uTF8String && *uTF8String)
  {
    SAList<char const*>::push_back(device + 80);
  }
}

- (void)callPadTouchCoreAnalyticsCallback
{
  v414[6] = *MEMORY[0x277D85DE8];
  mach_get_times();
  v3 = [(SASInterfacePadHost *)self timestampMachToUs:0];
  if (v3 - self->_last_reset_time_us >= 0x3938700)
  {
    self->_last_reset_time_us = v3;
    coreAnalyticsCallback = self->_coreAnalyticsCallback;
    if (coreAnalyticsCallback)
    {
      baseline_adapt_rate_state_stats = self->_baseline_adapt_rate_state_stats;
      v7 = 0x277CCA000uLL;
      if (baseline_adapt_rate_state_stats)
      {
        v413[0] = @"AggDurationAdaptationDefault";
        LODWORD(v4) = baseline_adapt_rate_state_stats[2];
        v290 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
        v414[0] = v290;
        v413[1] = @"AggDurationAdaptationPositiveRamp";
        LODWORD(v8) = *(self->_baseline_adapt_rate_state_stats + 3);
        v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
        v414[1] = v9;
        v413[2] = @"AggDurationAdaptationDriftDetector";
        LODWORD(v10) = *(self->_baseline_adapt_rate_state_stats + 4);
        v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
        v414[2] = v11;
        v413[3] = @"AggDurationAdaptationWithTouch";
        LODWORD(v12) = *(self->_baseline_adapt_rate_state_stats + 5);
        v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
        v414[3] = v13;
        v413[4] = @"AggDurationAdaptationWithHover";
        LODWORD(v14) = *(self->_baseline_adapt_rate_state_stats + 6);
        v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
        v414[4] = v15;
        v413[5] = @"AggDurationAdaptationNegativeRamp";
        LODWORD(v16) = *(self->_baseline_adapt_rate_state_stats + 7);
        v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
        v414[5] = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v414 forKeys:v413 count:6];
        coreAnalyticsCallback[2](coreAnalyticsCallback, @"com.apple.Multitouch.EmbeddedStatistics.BaselineAdaptationModeAggregatedDuration", v18);

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v19 = qword_2800179E0;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v136 = self->_baseline_adapt_rate_state_stats;
          v137 = v136[2];
          v138 = v136[3];
          v139 = v136[4];
          v140 = v136[5];
          v141 = v136[6];
          v142 = v136[7];
          *buf = 134219264;
          *v318 = v137;
          *&v318[8] = 2048;
          v319 = v138;
          *v320 = 2048;
          *&v320[2] = v139;
          *&v320[10] = 2048;
          *&v320[12] = v140;
          *&v320[20] = 2048;
          v321 = v141;
          *v322 = 2048;
          *&v322[2] = v142;
          _os_log_debug_impl(&dword_2653C2000, v19, OS_LOG_TYPE_DEBUG, "Core Analytics: BaselineAdaptationModeAggregatedDuration BaselineAdaptRateDefault=%fs BaselineAdaptRatePositiveRamp=%fs BaselineAdaptRateDriftDetector=%fs BaselineAdaptRateHasTouch=%fs BaselineAdaptRateHasHover=%fs BaselineAdaptRateNegativeRamp=%fs", buf, 0x3Eu);
        }

        v7 = 0x277CCA000uLL;
      }

      agg_duration_touch_coverage_stats = self->_agg_duration_touch_coverage_stats;
      if (agg_duration_touch_coverage_stats)
      {
        v21 = self->_coreAnalyticsCallback;
        v411[0] = @"AggDurationTouchCoverage0To33Pct";
        LODWORD(v4) = agg_duration_touch_coverage_stats[2];
        v291 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
        v412[0] = v291;
        v411[1] = @"AggDurationTouchCoverage34To66Pct";
        LODWORD(v22) = *(self->_agg_duration_touch_coverage_stats + 3);
        v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
        v412[1] = v23;
        v411[2] = @"AggDurationTouchCoverage67To100Pct";
        LODWORD(v24) = *(self->_agg_duration_touch_coverage_stats + 4);
        v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
        v412[2] = v25;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v412 forKeys:v411 count:3];
        v21[2](v21, @"com.apple.Multitouch.EmbeddedStatistics.TouchPanelCoverageAggregatedDuration", v26);

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v27 = qword_2800179E0;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v143 = self->_agg_duration_touch_coverage_stats;
          v144 = v143[2];
          v145 = v143[3];
          v146 = v143[4];
          *buf = 134218496;
          *v318 = v144;
          *&v318[8] = 2048;
          v319 = v145;
          *v320 = 2048;
          *&v320[2] = v146;
          _os_log_debug_impl(&dword_2653C2000, v27, OS_LOG_TYPE_DEBUG, "Core Analytics:TouchPanelCoverageAggregatedDuration AggDurationTouchCoverage0To33Pct=%fs AggDurationTouchCoverage34To66Pct=%fs AggDurationTouchCoverage67To100Pct=%fs", buf, 0x20u);
        }

        v7 = 0x277CCA000;
      }

      agg_duration_ff_dirty_spa_transitions_stats = self->_agg_duration_ff_dirty_spa_transitions_stats;
      if (agg_duration_ff_dirty_spa_transitions_stats && self->_agg_duration_ff_dirty_spa_durations_stats && self->_agg_duration_ff_dirty_spa_usage_stats)
      {
        v29 = 0;
        LODWORD(v30) = 0;
        v31 = (agg_duration_ff_dirty_spa_transitions_stats + 8);
        do
        {
          v30 = v31[v29++] + v30;
        }

        while (v29 != 7);
        v32 = self->_coreAnalyticsCallback;
        v409[0] = @"Firefly_SPA_Dirty_Frequency_Freq0_transitions";
        v292 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v31];
        v410[0] = v292;
        v409[1] = @"Firefly_SPA_Dirty_Frequency_Freq1_transitions";
        v286 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_transitions_stats + 3)];
        v410[1] = v286;
        v409[2] = @"Firefly_SPA_Dirty_Frequency_Freq2_transitions";
        v280 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_transitions_stats + 4)];
        v410[2] = v280;
        v409[3] = @"Firefly_SPA_Dirty_Frequency_Freq3_transitions";
        v277 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_transitions_stats + 5)];
        v410[3] = v277;
        v409[4] = @"Firefly_SPA_Dirty_Frequency_Freq4_transitions";
        v274 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_transitions_stats + 6)];
        v410[4] = v274;
        v409[5] = @"Firefly_SPA_Dirty_Frequency_Freq5_transitions";
        v271 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_transitions_stats + 7)];
        v410[5] = v271;
        v409[6] = @"Firefly_SPA_Dirty_Frequency_Freq6_transitions";
        v268 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_transitions_stats + 8)];
        v410[6] = v268;
        v409[7] = @"Firefly_SPA_Dirty_Frequency_totalTransitions";
        v265 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v30];
        v410[7] = v265;
        v409[8] = @"Firefly_SPA_Dirty_Frequency_Freq0_time";
        v262 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_durations_stats + 2)];
        v410[8] = v262;
        v409[9] = @"Firefly_SPA_Dirty_Frequency_Freq1_time";
        v259 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_durations_stats + 3)];
        v410[9] = v259;
        v409[10] = @"Firefly_SPA_Dirty_Frequency_Freq2_time";
        v256 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_durations_stats + 4)];
        v410[10] = v256;
        v409[11] = @"Firefly_SPA_Dirty_Frequency_Freq3_time";
        v253 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_durations_stats + 5)];
        v410[11] = v253;
        v409[12] = @"Firefly_SPA_Dirty_Frequency_Freq4_time";
        v251 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_durations_stats + 6)];
        v410[12] = v251;
        v409[13] = @"Firefly_SPA_Dirty_Frequency_Freq5_time";
        v249 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_durations_stats + 7)];
        v410[13] = v249;
        v409[14] = @"Firefly_SPA_Dirty_Frequency_Freq6_time";
        v247 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_durations_stats + 8)];
        v410[14] = v247;
        v409[15] = @"Firefly_SPA_Dirty_Frequency_Freq0";
        v283 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_usage_stats + 2)];
        v410[15] = v283;
        v409[16] = @"Firefly_SPA_Dirty_Frequency_Freq1";
        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_usage_stats + 3)];
        v410[16] = v33;
        v409[17] = @"Firefly_SPA_Dirty_Frequency_Freq2";
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_usage_stats + 4)];
        v410[17] = v34;
        v409[18] = @"Firefly_SPA_Dirty_Frequency_Freq3";
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_usage_stats + 5)];
        v410[18] = v35;
        v409[19] = @"Firefly_SPA_Dirty_Frequency_Freq4";
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_usage_stats + 6)];
        v410[19] = v36;
        v409[20] = @"Firefly_SPA_Dirty_Frequency_Freq5";
        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_usage_stats + 7)];
        v410[20] = v37;
        v409[21] = @"Firefly_SPA_Dirty_Frequency_Freq6";
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_usage_stats + 8)];
        v410[21] = v38;
        v409[22] = @"Firefly_SPA_Dirty_Frequency_totalTime";
        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_usage_stats + 9)];
        v410[22] = v39;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v410 forKeys:v409 count:23];
        v32[2](v32, @"com.apple.MultitouchSupport.IOReport.FireflySPADirtyFrequency", v40);

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v41 = qword_2800179E0;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v208 = self->_agg_duration_ff_dirty_spa_transitions_stats;
          v209 = v208[2];
          v210 = v208[3];
          v211 = v208[4];
          v212 = v208[5];
          v213 = v208[6];
          v214 = v208[7];
          LODWORD(v208) = v208[8];
          *buf = 67110656;
          *v318 = v209;
          *&v318[4] = 1024;
          *&v318[6] = v210;
          LOWORD(v319) = 1024;
          *(&v319 + 2) = v211;
          HIWORD(v319) = 1024;
          *v320 = v212;
          *&v320[4] = 1024;
          *&v320[6] = v213;
          *&v320[10] = 1024;
          *&v320[12] = v214;
          *&v320[16] = 1024;
          *&v320[18] = v208;
          _os_log_debug_impl(&dword_2653C2000, v41, OS_LOG_TYPE_DEBUG, "Core Analytics:FireflySPADirtyFrequency transititons Freq0_transitions=%d Freq1_transitions=%d Freq2_transitions=%d Freq3_transitions=%d Freq4_transitions=%d Freq5_transitions=%d Freq6_transitions=%d", buf, 0x2Cu);
        }

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v42 = qword_2800179E0;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          agg_duration_ff_dirty_spa_durations_stats = self->_agg_duration_ff_dirty_spa_durations_stats;
          v216 = agg_duration_ff_dirty_spa_durations_stats[2];
          v217 = agg_duration_ff_dirty_spa_durations_stats[3];
          v218 = agg_duration_ff_dirty_spa_durations_stats[4];
          v219 = agg_duration_ff_dirty_spa_durations_stats[5];
          v220 = agg_duration_ff_dirty_spa_durations_stats[6];
          v221 = agg_duration_ff_dirty_spa_durations_stats[7];
          LODWORD(agg_duration_ff_dirty_spa_durations_stats) = agg_duration_ff_dirty_spa_durations_stats[8];
          *buf = 67110656;
          *v318 = v216;
          *&v318[4] = 1024;
          *&v318[6] = v217;
          LOWORD(v319) = 1024;
          *(&v319 + 2) = v218;
          HIWORD(v319) = 1024;
          *v320 = v219;
          *&v320[4] = 1024;
          *&v320[6] = v220;
          *&v320[10] = 1024;
          *&v320[12] = v221;
          *&v320[16] = 1024;
          *&v320[18] = agg_duration_ff_dirty_spa_durations_stats;
          _os_log_debug_impl(&dword_2653C2000, v42, OS_LOG_TYPE_DEBUG, "Core Analytics:FireflySPADirtyFrequency time Freq0_time=%dms Freq1_time=%dms Freq2_time=%dms Freq3_time=%dms Freq4_time=%dms Freq5_time=%dms Freq6_time=%dms", buf, 0x2Cu);
        }

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v43 = qword_2800179E0;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          agg_duration_ff_dirty_spa_usage_stats = self->_agg_duration_ff_dirty_spa_usage_stats;
          v223 = agg_duration_ff_dirty_spa_usage_stats[2];
          v224 = agg_duration_ff_dirty_spa_usage_stats[3];
          v225 = agg_duration_ff_dirty_spa_usage_stats[4];
          v226 = agg_duration_ff_dirty_spa_usage_stats[5];
          v227 = agg_duration_ff_dirty_spa_usage_stats[6];
          v228 = agg_duration_ff_dirty_spa_usage_stats[7];
          v229 = agg_duration_ff_dirty_spa_usage_stats[8];
          LODWORD(agg_duration_ff_dirty_spa_usage_stats) = agg_duration_ff_dirty_spa_usage_stats[9];
          *buf = 67110912;
          *v318 = v223;
          *&v318[4] = 1024;
          *&v318[6] = v224;
          LOWORD(v319) = 1024;
          *(&v319 + 2) = v225;
          HIWORD(v319) = 1024;
          *v320 = v226;
          *&v320[4] = 1024;
          *&v320[6] = v227;
          *&v320[10] = 1024;
          *&v320[12] = v228;
          *&v320[16] = 1024;
          *&v320[18] = v229;
          LOWORD(v321) = 1024;
          *(&v321 + 2) = agg_duration_ff_dirty_spa_usage_stats;
          _os_log_debug_impl(&dword_2653C2000, v43, OS_LOG_TYPE_DEBUG, "Core Analytics:FireflySPADirtyFrequency count Freq0=%d Freq1=%d Freq2=%d Freq3=%d Freq4=%d Freq5=%d Freq6=%d TotalTime=%dms", buf, 0x32u);
        }

        v7 = 0x277CCA000uLL;
      }

      agg_count_large_contact_touch_duration_stats = self->_agg_count_large_contact_touch_duration_stats;
      if (agg_count_large_contact_touch_duration_stats && self->_max_touch_duration_large_contact_stats)
      {
        v45 = self->_coreAnalyticsCallback;
        v407[0] = @"CountLargeTouchDuration1To3mins";
        v293 = [*(v7 + 2992) numberWithUnsignedInt:agg_count_large_contact_touch_duration_stats[2]];
        v408[0] = v293;
        v407[1] = @"CountLargeTouchDuration3To5mins";
        v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_count_large_contact_touch_duration_stats + 3)];
        v408[1] = v46;
        v407[2] = @"CountLargeTouchDuration5To10mins";
        v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_count_large_contact_touch_duration_stats + 4)];
        v408[2] = v47;
        v407[3] = @"CountLargeTouchDurationAbove10mins";
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_count_large_contact_touch_duration_stats + 5)];
        v408[3] = v48;
        v407[4] = @"MaxDurationLargeTouch";
        *&v49 = *self->_max_touch_duration_large_contact_stats;
        v50 = [MEMORY[0x277CCABB0] numberWithFloat:v49];
        v408[4] = v50;
        v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v408 forKeys:v407 count:5];
        v45[2](v45, @"com.apple.Multitouch.EmbeddedStatistics.LargeTouchDurationStats", v51);

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v52 = qword_2800179E0;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          v203 = self->_agg_count_large_contact_touch_duration_stats;
          v204 = v203[2];
          v205 = v203[3];
          v206 = v203[4];
          LODWORD(v203) = v203[5];
          v207 = *self->_max_touch_duration_large_contact_stats;
          *buf = 67110144;
          *v318 = v204;
          *&v318[4] = 1024;
          *&v318[6] = v205;
          LOWORD(v319) = 1024;
          *(&v319 + 2) = v206;
          HIWORD(v319) = 1024;
          *v320 = v203;
          *&v320[4] = 2048;
          *&v320[6] = v207;
          _os_log_debug_impl(&dword_2653C2000, v52, OS_LOG_TYPE_DEBUG, "Core Analytics: LargeTouchDurationStats 1to3mins=%d 3to5mins=%d 5to10mins=%d Above10mins=%d MaxDuration=%fs", buf, 0x24u);
        }

        v7 = 0x277CCA000uLL;
      }

      agg_duration_thermal_region_stats = self->_agg_duration_thermal_region_stats;
      if (agg_duration_thermal_region_stats)
      {
        v54 = self->_coreAnalyticsCallback;
        v405[0] = @"AggDurationThermalRegionBottomLeft";
        LODWORD(v4) = agg_duration_thermal_region_stats[2];
        v294 = [*(v7 + 2992) numberWithFloat:v4];
        v406[0] = v294;
        v405[1] = @"AggDurationThermalRegionBottomMid";
        LODWORD(v55) = *(self->_agg_duration_thermal_region_stats + 3);
        v287 = [MEMORY[0x277CCABB0] numberWithFloat:v55];
        v406[1] = v287;
        v405[2] = @"AggDurationThermalRegionBottomRight";
        LODWORD(v56) = *(self->_agg_duration_thermal_region_stats + 4);
        v57 = [MEMORY[0x277CCABB0] numberWithFloat:v56];
        v406[2] = v57;
        v405[3] = @"AggDurationThermalRegionMidLeft";
        LODWORD(v58) = *(self->_agg_duration_thermal_region_stats + 5);
        v59 = [MEMORY[0x277CCABB0] numberWithFloat:v58];
        v406[3] = v59;
        v405[4] = @"AggDurationThermalRegionMidMid";
        LODWORD(v60) = *(self->_agg_duration_thermal_region_stats + 6);
        v61 = [MEMORY[0x277CCABB0] numberWithFloat:v60];
        v406[4] = v61;
        v405[5] = @"AggDurationThermalRegionMidRight";
        LODWORD(v62) = *(self->_agg_duration_thermal_region_stats + 7);
        v63 = [MEMORY[0x277CCABB0] numberWithFloat:v62];
        v406[5] = v63;
        v405[6] = @"AggDurationThermalRegionTopLeft";
        LODWORD(v64) = *(self->_agg_duration_thermal_region_stats + 8);
        v65 = [MEMORY[0x277CCABB0] numberWithFloat:v64];
        v406[6] = v65;
        v405[7] = @"AggDurationThermalRegionTopMid";
        LODWORD(v66) = *(self->_agg_duration_thermal_region_stats + 9);
        v67 = [MEMORY[0x277CCABB0] numberWithFloat:v66];
        v406[7] = v67;
        v405[8] = @"AggDurationThermalRegionTopRight";
        LODWORD(v68) = *(self->_agg_duration_thermal_region_stats + 10);
        v69 = [MEMORY[0x277CCABB0] numberWithFloat:v68];
        v406[8] = v69;
        v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v406 forKeys:v405 count:9];
        v54[2](v54, @"com.apple.Multitouch.EmbeddedStatistics.ThermalRegionAggregatedDuration", v70);

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v71 = qword_2800179E0;
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          v147 = self->_agg_duration_thermal_region_stats;
          v148 = v147[2];
          v149 = v147[3];
          v150 = v147[4];
          v151 = v147[5];
          v152 = v147[6];
          v153 = v147[7];
          v154 = v147[8];
          v155 = v147[9];
          v156 = v147[10];
          *buf = 134220032;
          *v318 = v148;
          *&v318[8] = 2048;
          v319 = v149;
          *v320 = 2048;
          *&v320[2] = v150;
          *&v320[10] = 2048;
          *&v320[12] = v151;
          *&v320[20] = 2048;
          v321 = v152;
          *v322 = 2048;
          *&v322[2] = v153;
          v323 = 2048;
          *v324 = v154;
          *&v324[8] = 2048;
          v325 = v155;
          *v326 = 2048;
          *&v326[2] = v156;
          _os_log_debug_impl(&dword_2653C2000, v71, OS_LOG_TYPE_DEBUG, "Core Analytics: ThermalRegionAggregatedDuration BottomLeft=%fs BottomMid=%fs BottomRight=%fs MidLeft=%fs MidMid=%fs  MidRight=%fs  TopLeft=%fs  TopMid=%fs  TopRight=%fs", buf, 0x5Cu);
        }

        v7 = 0x277CCA000uLL;
      }

      agg_duration_pencil_dti_stats = self->_agg_duration_pencil_dti_stats;
      if (agg_duration_pencil_dti_stats)
      {
        v73 = self->_coreAnalyticsCallback;
        v387[0] = @"AggDurationAggressorsBin01";
        LODWORD(v4) = agg_duration_pencil_dti_stats[2];
        v295 = [*(v7 + 2992) numberWithFloat:v4];
        v388[0] = v295;
        v387[1] = @"AggDurationAggressorsBin02";
        LODWORD(v74) = *(self->_agg_duration_pencil_dti_stats + 3);
        v284 = [MEMORY[0x277CCABB0] numberWithFloat:v74];
        v388[1] = v284;
        v387[2] = @"AggDurationAggressorsBin03";
        LODWORD(v75) = *(self->_agg_duration_pencil_dti_stats + 4);
        v281 = [MEMORY[0x277CCABB0] numberWithFloat:v75];
        v388[2] = v281;
        v387[3] = @"AggDurationAggressorsBin04";
        LODWORD(v76) = *(self->_agg_duration_pencil_dti_stats + 5);
        v278 = [MEMORY[0x277CCABB0] numberWithFloat:v76];
        v388[3] = v278;
        v387[4] = @"AggDurationAggressorsBin05";
        LODWORD(v77) = *(self->_agg_duration_pencil_dti_stats + 6);
        v275 = [MEMORY[0x277CCABB0] numberWithFloat:v77];
        v388[4] = v275;
        v387[5] = @"AggDurationAggressorsBin06";
        LODWORD(v78) = *(self->_agg_duration_pencil_dti_stats + 7);
        v272 = [MEMORY[0x277CCABB0] numberWithFloat:v78];
        v388[5] = v272;
        v387[6] = @"AggDurationAggressorsBin07";
        LODWORD(v79) = *(self->_agg_duration_pencil_dti_stats + 8);
        v269 = [MEMORY[0x277CCABB0] numberWithFloat:v79];
        v388[6] = v269;
        v387[7] = @"AggDurationAggressorsBin08";
        LODWORD(v80) = *(self->_agg_duration_pencil_dti_stats + 9);
        v266 = [MEMORY[0x277CCABB0] numberWithFloat:v80];
        v388[7] = v266;
        v387[8] = @"AggDurationAggressorsBin09";
        LODWORD(v81) = *(self->_agg_duration_pencil_dti_stats + 10);
        v263 = [MEMORY[0x277CCABB0] numberWithFloat:v81];
        v388[8] = v263;
        v387[9] = @"AggDurationAggressorsBin10";
        LODWORD(v82) = *(self->_agg_duration_pencil_dti_stats + 11);
        v260 = [MEMORY[0x277CCABB0] numberWithFloat:v82];
        v388[9] = v260;
        v387[10] = @"AggDurationAggressorsBin11";
        LODWORD(v83) = *(self->_agg_duration_pencil_dti_stats + 12);
        v257 = [MEMORY[0x277CCABB0] numberWithFloat:v83];
        v388[10] = v257;
        v387[11] = @"AggDurationAggressorsBin12";
        LODWORD(v84) = *(self->_agg_duration_pencil_dti_stats + 13);
        v254 = [MEMORY[0x277CCABB0] numberWithFloat:v84];
        v388[11] = v254;
        v387[12] = @"AggDurationAggressorsBin13";
        LODWORD(v85) = *(self->_agg_duration_pencil_dti_stats + 14);
        v252 = [MEMORY[0x277CCABB0] numberWithFloat:v85];
        v388[12] = v252;
        v387[13] = @"AggDurationAggressorsBin14";
        LODWORD(v86) = *(self->_agg_duration_pencil_dti_stats + 15);
        v250 = [MEMORY[0x277CCABB0] numberWithFloat:v86];
        v388[13] = v250;
        v387[14] = @"AggDurationAggressorsBin15";
        LODWORD(v87) = *(self->_agg_duration_pencil_dti_stats + 16);
        v248 = [MEMORY[0x277CCABB0] numberWithFloat:v87];
        v388[14] = v248;
        v387[15] = @"AggDurationAggressorsBin16";
        LODWORD(v88) = *(self->_agg_duration_pencil_dti_stats + 17);
        v246 = [MEMORY[0x277CCABB0] numberWithFloat:v88];
        v388[15] = v246;
        v387[16] = @"AggDurationAggressorsBin17";
        LODWORD(v89) = *(self->_agg_duration_pencil_dti_stats + 18);
        v245 = [MEMORY[0x277CCABB0] numberWithFloat:v89];
        v388[16] = v245;
        v387[17] = @"AggDurationAggressorsBin18";
        LODWORD(v90) = *(self->_agg_duration_pencil_dti_stats + 19);
        v244 = [MEMORY[0x277CCABB0] numberWithFloat:v90];
        v388[17] = v244;
        v387[18] = @"AggDurationAggressorsBin19";
        LODWORD(v91) = *(self->_agg_duration_pencil_dti_stats + 20);
        v243 = [MEMORY[0x277CCABB0] numberWithFloat:v91];
        v388[18] = v243;
        v387[19] = @"AggDurationAggressorsBin20";
        LODWORD(v92) = *(self->_agg_duration_pencil_dti_stats + 21);
        v242 = [MEMORY[0x277CCABB0] numberWithFloat:v92];
        v388[19] = v242;
        v387[20] = @"AggDurationAggressorsBin21";
        LODWORD(v93) = *(self->_agg_duration_pencil_dti_stats + 22);
        v241 = [MEMORY[0x277CCABB0] numberWithFloat:v93];
        v388[20] = v241;
        v387[21] = @"AggDurationAggressorsBin22";
        LODWORD(v94) = *(self->_agg_duration_pencil_dti_stats + 23);
        v240 = [MEMORY[0x277CCABB0] numberWithFloat:v94];
        v388[21] = v240;
        v387[22] = @"AggDurationAggressorsBin23";
        LODWORD(v95) = *(self->_agg_duration_pencil_dti_stats + 24);
        v239 = [MEMORY[0x277CCABB0] numberWithFloat:v95];
        v388[22] = v239;
        v387[23] = @"AggDurationAggressorsBin24";
        LODWORD(v96) = *(self->_agg_duration_pencil_dti_stats + 25);
        v238 = [MEMORY[0x277CCABB0] numberWithFloat:v96];
        v388[23] = v238;
        v387[24] = @"AggDurationAggressorsBin25";
        LODWORD(v97) = *(self->_agg_duration_pencil_dti_stats + 26);
        v389 = [MEMORY[0x277CCABB0] numberWithFloat:v97];
        v387[25] = @"AggDurationAggressorsBin26";
        LODWORD(v98) = *(self->_agg_duration_pencil_dti_stats + 27);
        v288 = v389;
        v390 = [MEMORY[0x277CCABB0] numberWithFloat:v98];
        v387[26] = @"AggDurationAggressorsBin27";
        LODWORD(v99) = *(self->_agg_duration_pencil_dti_stats + 28);
        v237 = v390;
        v236 = [MEMORY[0x277CCABB0] numberWithFloat:v99];
        v391 = v236;
        v387[27] = @"AggDurationAggressorsBin28";
        LODWORD(v100) = *(self->_agg_duration_pencil_dti_stats + 29);
        v235 = [MEMORY[0x277CCABB0] numberWithFloat:v100];
        v392 = v235;
        v387[28] = @"AggDurationAggressorsBin29";
        LODWORD(v101) = *(self->_agg_duration_pencil_dti_stats + 30);
        v234 = [MEMORY[0x277CCABB0] numberWithFloat:v101];
        v393 = v234;
        v387[29] = @"AggDurationAggressorsBin30";
        LODWORD(v102) = *(self->_agg_duration_pencil_dti_stats + 31);
        v233 = [MEMORY[0x277CCABB0] numberWithFloat:v102];
        v394 = v233;
        v387[30] = @"AggDurationAggressorsBin31";
        LODWORD(v103) = *(self->_agg_duration_pencil_dti_stats + 32);
        v232 = [MEMORY[0x277CCABB0] numberWithFloat:v103];
        v395 = v232;
        v387[31] = @"AggDurationAggressorsBin32";
        LODWORD(v104) = *(self->_agg_duration_pencil_dti_stats + 33);
        v231 = [MEMORY[0x277CCABB0] numberWithFloat:v104];
        v396 = v231;
        v387[32] = @"AggDurationAggressorsBin33";
        LODWORD(v105) = *(self->_agg_duration_pencil_dti_stats + 34);
        v230 = [MEMORY[0x277CCABB0] numberWithFloat:v105];
        v397 = v230;
        v387[33] = @"AggDurationAggressorsBin34";
        LODWORD(v106) = *(self->_agg_duration_pencil_dti_stats + 35);
        v107 = [MEMORY[0x277CCABB0] numberWithFloat:v106];
        v398 = v107;
        v387[34] = @"AggDurationAggressorsBin35";
        LODWORD(v108) = *(self->_agg_duration_pencil_dti_stats + 36);
        v109 = [MEMORY[0x277CCABB0] numberWithFloat:v108];
        v399 = v109;
        v387[35] = @"AggDurationAggressorsBin36";
        LODWORD(v110) = *(self->_agg_duration_pencil_dti_stats + 37);
        v111 = [MEMORY[0x277CCABB0] numberWithFloat:v110];
        v400 = v111;
        v387[36] = @"AggDurationAggressorsBin37";
        LODWORD(v112) = *(self->_agg_duration_pencil_dti_stats + 38);
        v113 = [MEMORY[0x277CCABB0] numberWithFloat:v112];
        v401 = v113;
        v387[37] = @"AggDurationAggressorsBin38";
        LODWORD(v114) = *(self->_agg_duration_pencil_dti_stats + 39);
        v115 = [MEMORY[0x277CCABB0] numberWithFloat:v114];
        v402 = v115;
        v387[38] = @"AggDurationAggressorsBin39";
        LODWORD(v116) = *(self->_agg_duration_pencil_dti_stats + 40);
        v117 = [MEMORY[0x277CCABB0] numberWithFloat:v116];
        v118 = v73;
        v403 = v117;
        v387[39] = @"AggDurationAggressorsBin40";
        LODWORD(v119) = *(self->_agg_duration_pencil_dti_stats + 41);
        v120 = [MEMORY[0x277CCABB0] numberWithFloat:v119];
        v404 = v120;
        v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v388 forKeys:v387 count:40];
        v118[2](v118, @"com.apple.Multitouch.EmbeddedStatistics.PencilAggressorsAggregatedDuration", v121);

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v122 = qword_2800179E0;
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
        {
          v157 = self->_agg_duration_pencil_dti_stats;
          v158 = v157[2];
          v159 = v157[3];
          v160 = v157[4];
          v161 = v157[5];
          v162 = v157[6];
          v163 = v157[7];
          v164 = v157[8];
          v165 = v157[9];
          v166 = v157[10];
          v167 = v157[11];
          v168 = v157[12];
          v169 = v157[13];
          v170 = v157[14];
          v171 = v157[15];
          v172 = v157[16];
          v173 = v157[17];
          v175 = v157[18];
          v174 = v157[19];
          v177 = v157[20];
          v176 = v157[21];
          v179 = v157[22];
          v178 = v157[23];
          v181 = v157[24];
          v180 = v157[25];
          *buf = 134227968;
          *v318 = v158;
          v182 = v157[26];
          *&v158 = v157[27];
          v319 = v159;
          *&v320[2] = v160;
          *&v160 = v157[28];
          *&v159 = v157[29];
          *&v320[12] = v161;
          v321 = v162;
          *&v162 = v157[30];
          *&v161 = v157[31];
          *&v322[2] = v163;
          *v324 = v164;
          *&v164 = v157[32];
          *&v163 = v157[33];
          v325 = v165;
          *&v326[2] = v166;
          *&v166 = v157[34];
          *&v165 = v157[35];
          *v328 = v167;
          v329 = v168;
          *&v168 = v157[36];
          *&v167 = v157[37];
          *&v330[2] = v169;
          v332 = v170;
          *&v170 = v157[38];
          *&v169 = v157[39];
          v334 = v171;
          v336 = v172;
          *&v172 = v157[40];
          *&v171 = v157[41];
          v338 = v173;
          v340 = v175;
          v342 = v174;
          v344 = v177;
          v346 = v176;
          v348 = v179;
          v350 = v178;
          v352 = v181;
          v354 = v180;
          v356 = v182;
          v358 = *&v158;
          v360 = *&v160;
          v362 = *&v159;
          v364 = *&v162;
          v366 = *&v161;
          v368 = *&v164;
          v370 = *&v163;
          v372 = *&v166;
          v374 = *&v165;
          v376 = *&v168;
          v378 = *&v167;
          v380 = *&v170;
          v382 = *&v169;
          v384 = *&v172;
          v386 = *&v171;
          *&v318[8] = 2048;
          *v320 = 2048;
          *&v320[10] = 2048;
          *&v320[20] = 2048;
          *v322 = 2048;
          v323 = 2048;
          *&v324[8] = 2048;
          *v326 = 2048;
          v327 = 2048;
          *&v328[8] = 2048;
          *v330 = 2048;
          v331 = 2048;
          v333 = 2048;
          v335 = 2048;
          v337 = 2048;
          v339 = 2048;
          v341 = 2048;
          v343 = 2048;
          v345 = 2048;
          v347 = 2048;
          v349 = 2048;
          v351 = 2048;
          v353 = 2048;
          v355 = 2048;
          v357 = 2048;
          v359 = 2048;
          v361 = 2048;
          v363 = 2048;
          v365 = 2048;
          v367 = 2048;
          v369 = 2048;
          v371 = 2048;
          v373 = 2048;
          v375 = 2048;
          v377 = 2048;
          v379 = 2048;
          v381 = 2048;
          v383 = 2048;
          v385 = 2048;
          _os_log_debug_impl(&dword_2653C2000, v122, OS_LOG_TYPE_DEBUG, "Core Analytics: PencilAggressorsAggregatedDuration Bin01=%fs Bin02=%fs Bin03=%fs Bin04=%fs Bin05=%fs Bin06=%fs Bin07=%fs Bin08=%fs Bin09=%fs Bin10=%fs Bin11=%fs Bin12=%fs Bin13=%fs Bin14=%fs Bin15=%fs Bin16=%fs Bin17=%fs Bin18=%fs Bin19=%fs Bin20=%fs Bin21=%fs Bin22=%fs Bin23=%fs Bin24=%fs Bin25=%fs Bin26=%fs Bin27=%fs Bin28=%fs Bin29=%fs Bin30=%fs Bin31=%fs Bin32=%fs Bin33=%fs Bin34=%fs Bin35=%fs Bin36=%fs Bin37=%fs Bin38=%fs Bin39=%fs Bin40=%fs ", buf, 0x192u);
        }

        v7 = 0x277CCA000uLL;
      }

      agg_calblob_error_in_algs_stats = self->_agg_calblob_error_in_algs_stats;
      if (agg_calblob_error_in_algs_stats)
      {
        v124 = self->_coreAnalyticsCallback;
        v297[0] = @"AggPencilAffcErrorChecksum";
        v296 = [*(v7 + 2992) numberWithUnsignedChar:agg_calblob_error_in_algs_stats[8]];
        v298[0] = v296;
        v297[1] = @"AggPencilAffcErrorMagic";
        v289 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 9)];
        v298[1] = v289;
        v297[2] = @"AggPencilAffcErrorMissingCal";
        v299 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 10)];
        v297[3] = @"AggPencilAffcErrorNone";
        v282 = v299;
        v300 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 11)];
        v297[4] = @"AggPencilAffcErrorVersion";
        v279 = v300;
        v285 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 12)];
        v301 = v285;
        v297[5] = @"AggPencilMtdoErrorChecksum";
        v276 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 13)];
        v302 = v276;
        v297[6] = @"AggPencilMtdoErrorMagic";
        v273 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 14)];
        v303 = v273;
        v297[7] = @"AggPencilMtdoErrorMissingCal";
        v270 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 15)];
        v304 = v270;
        v297[8] = @"AggPencilMtdoErrorNone";
        v267 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 16)];
        v305 = v267;
        v297[9] = @"AggPencilMtdoErrorVersion";
        v264 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 17)];
        v306 = v264;
        v297[10] = @"AggTouchMtclErrorChecksum";
        v261 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 18)];
        v307 = v261;
        v297[11] = @"AggTouchMtclErrorMagic";
        v258 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 19)];
        v308 = v258;
        v297[12] = @"AggTouchMtclErrorMissingCal";
        v255 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 20)];
        v309 = v255;
        v297[13] = @"AggTouchMtclErrorNone";
        v125 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 21)];
        v310 = v125;
        v297[14] = @"AggTouchMtclErrorVersion";
        v126 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 22)];
        v311 = v126;
        v297[15] = @"AggTouchMtdoErrorChecksum";
        v127 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 23)];
        v312 = v127;
        v297[16] = @"AggTouchMtdoErrorMagic";
        v128 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 24)];
        v313 = v128;
        v297[17] = @"AggTouchMtdoErrorMissingCal";
        v129 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 25)];
        v314 = v129;
        v297[18] = @"AggTouchMtdoErrorNone";
        v130 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 26)];
        v315 = v130;
        v297[19] = @"AggTouchMtdoErrorVersion";
        v131 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 27)];
        v316 = v131;
        v132 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v298 forKeys:v297 count:20];
        v124[2](v124, @"com.apple.Multitouch.EmbeddedStatistics.CalblobErrorInAlgs", v132);

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v133 = qword_2800179E0;
        if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
        {
          v183 = self->_agg_calblob_error_in_algs_stats;
          v184 = v183[8];
          v185 = v183[9];
          v186 = v183[10];
          v187 = v183[11];
          v188 = v183[12];
          v189 = v183[13];
          v190 = v183[14];
          v191 = v183[15];
          v192 = v183[16];
          v193 = v183[17];
          v194 = v183[18];
          v195 = v183[19];
          v196 = v183[20];
          v197 = v183[21];
          v198 = v183[22];
          v199 = v183[23];
          v200 = v183[24];
          v201 = v183[25];
          v202 = v183[26];
          LODWORD(v183) = v183[27];
          *buf = 67113984;
          *v318 = v184;
          *&v318[4] = 1024;
          *&v318[6] = v185;
          LOWORD(v319) = 1024;
          *(&v319 + 2) = v186;
          HIWORD(v319) = 1024;
          *v320 = v187;
          *&v320[4] = 1024;
          *&v320[6] = v188;
          *&v320[10] = 1024;
          *&v320[12] = v189;
          *&v320[16] = 1024;
          *&v320[18] = v190;
          LOWORD(v321) = 1024;
          *(&v321 + 2) = v191;
          HIWORD(v321) = 1024;
          *v322 = v192;
          *&v322[4] = 1024;
          *&v322[6] = v193;
          v323 = 1024;
          *v324 = v194;
          *&v324[4] = 1024;
          *&v324[6] = v195;
          LOWORD(v325) = 1024;
          *(&v325 + 2) = v196;
          HIWORD(v325) = 1024;
          *v326 = v197;
          *&v326[4] = 1024;
          *&v326[6] = v198;
          v327 = 1024;
          *v328 = v199;
          *&v328[4] = 1024;
          *&v328[6] = v200;
          LOWORD(v329) = 1024;
          *(&v329 + 2) = v201;
          HIWORD(v329) = 1024;
          *v330 = v202;
          *&v330[4] = 1024;
          *&v330[6] = v183;
          _os_log_debug_impl(&dword_2653C2000, v133, OS_LOG_TYPE_DEBUG, "Core Analytics: CalblobErrorInAlgs AggPencilAffcError Checksum=%d Magic=%d MissingCal=%d None=%d Version=%d AggPencilMtdoError Checksum=%d Magic=%d MissingCal=%d None=%d Version=%d AggTouchMtclError Checksum=%d Magic=%d MissingCal=%d None=%d Version=%d AggTouchMtdoError Checksum=%d Magic=%d MissingCal=%d None=%d Version=%d ", buf, 0x7Au);
        }
      }
    }

    *&self->_baseline_adapt_rate_state_stats = 0u;
    p_baseline_adapt_rate_state_stats = &self->_baseline_adapt_rate_state_stats;
    *(p_baseline_adapt_rate_state_stats + 3) = 0u;
    *(p_baseline_adapt_rate_state_stats + 4) = 0u;
    *(p_baseline_adapt_rate_state_stats + 1) = 0u;
    *(p_baseline_adapt_rate_state_stats + 2) = 0u;
  }

  v135 = *MEMORY[0x277D85DE8];
}

- (void)callCoreAnalyticsCallback
{
  selfCopy6 = self;
  v76[1] = *MEMORY[0x277D85DE8];
  if (self->_coreAnalyticsCallback)
  {
    if (self->_duration_between_touches)
    {
      HIDWORD(v3) = -1030792151 * rand();
      LODWORD(v3) = HIDWORD(v3);
      if ((v3 >> 2) <= 0x28F5C28)
      {
        coreAnalyticsCallback = selfCopy6->_coreAnalyticsCallback;
        v75 = @"Duration";
        *&v4 = *selfCopy6->_duration_between_touches;
        v51 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
        v76[0] = v51;
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:&v75 count:1];
        coreAnalyticsCallback[2](coreAnalyticsCallback, @"com.apple.Multitouch.EmbeddedStatistics.DurationBetweenTouches", v6);

        selfCopy6 = self;
      }
    }

    path_stats = selfCopy6->_path_stats;
    if (path_stats && path_stats->var0)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        HIDWORD(v10) = -1030792151 * rand();
        LODWORD(v10) = HIDWORD(v10);
        if ((v10 >> 2) <= 0x28F5C28)
        {
          v12 = self->_coreAnalyticsCallback;
          v73[0] = @"MinGeometricMean";
          LODWORD(v11) = LODWORD(path_stats->var1[v8].var0);
          v52 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
          v74[0] = v52;
          v73[1] = @"MaxGeometricMean";
          LODWORD(v13) = LODWORD(path_stats->var1[v8].var1);
          v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
          v74[1] = v14;
          v73[2] = @"EccentricityForMin";
          LODWORD(v15) = LODWORD(path_stats->var1[v8].var2);
          v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
          v74[2] = v16;
          v73[3] = @"EccentricityForMax";
          LODWORD(v17) = LODWORD(path_stats->var1[v8].var3);
          v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
          v74[3] = v18;
          v73[4] = @"InitialTouchIdentity";
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:path_stats->var1[v8].var4];
          v74[4] = v19;
          v73[5] = @"LiftoffTouchIdentity";
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:path_stats->var1[v8].var5];
          v74[5] = v20;
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:6];
          v12[2](v12, @"com.apple.Multitouch.EmbeddedStatistics.LiftoffPathStats", v21);
        }

        ++v9;
        selfCopy6 = self;
        path_stats = self->_path_stats;
        ++v8;
      }

      while (v9 < path_stats->var0);
    }

    if (selfCopy6->_phone_telemetry.event_occurred)
    {
      if (selfCopy6->_phone_telemetry.baseline_inversion_occurred)
      {
        v22 = selfCopy6->_coreAnalyticsCallback;
        v71[0] = @"Lockscreen_Status";
        v53 = [MEMORY[0x277CCABB0] numberWithBool:selfCopy6->_phone_telemetry.is_on_coversheet];
        v71[1] = @"Touch_Frequency";
        v72[0] = v53;
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_phone_telemetry.scan_frequency_index];
        v72[1] = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
        v22[2](v22, @"com.apple.multitouch.baseline.inversion", v24);

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v25 = qword_2800179E0;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          baseline_adaption_interval_ms = self->_phone_telemetry.baseline_adaption_interval_ms;
          time_since_last_baseline_change_ms = self->_phone_telemetry.time_since_last_baseline_change_ms;
          scan_frequency_index = self->_phone_telemetry.scan_frequency_index;
          if (self->_phone_telemetry.is_on_coversheet)
          {
            v29 = "onCoversheet";
          }

          else
          {
            v29 = "";
          }

          *buf = 67109890;
          v62 = baseline_adaption_interval_ms;
          v63 = 1024;
          v64 = time_since_last_baseline_change_ms;
          v65 = 1024;
          v66 = scan_frequency_index;
          v67 = 2080;
          v68 = v29;
          _os_log_impl(&dword_2653C2000, v25, OS_LOG_TYPE_INFO, "Baseline Inversion: Interval=%dms SinceLast=%dms FreqIdx=%d %s", buf, 0x1Eu);
        }

        selfCopy6 = self;
      }

      if (selfCopy6->_phone_telemetry.nondefault_baseline_adapt_occurred)
      {
        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v30 = qword_2800179E0;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = selfCopy6->_phone_telemetry.baseline_adaption_interval_ms;
          v32 = selfCopy6->_phone_telemetry.time_since_last_baseline_change_ms;
          v33 = selfCopy6->_phone_telemetry.scan_frequency_index;
          v34 = "";
          if (selfCopy6->_phone_telemetry.is_on_coversheet)
          {
            v35 = "onCoversheet";
          }

          else
          {
            v35 = "";
          }

          if (selfCopy6->_phone_telemetry.has_touch_above_threshold)
          {
            v34 = "aboveThreshold";
          }

          *buf = 67110146;
          v62 = v31;
          v63 = 1024;
          v64 = v32;
          v65 = 1024;
          v66 = v33;
          v67 = 2080;
          v68 = v35;
          v69 = 2080;
          v70 = v34;
          _os_log_impl(&dword_2653C2000, v30, OS_LOG_TYPE_INFO, "Non Default Baseline: Interval=%dms SinceLast=%dms FreqIdx=%d %s %s", buf, 0x28u);
        }

        v36 = self->_coreAnalyticsCallback;
        v59[0] = @"AdaptationInterval";
        v54 = [MEMORY[0x277CCABB0] numberWithInt:self->_phone_telemetry.baseline_adaption_interval_ms];
        v60[0] = v54;
        v59[1] = @"FreqDuringAdaptation";
        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_phone_telemetry.scan_frequency_index];
        v60[1] = v37;
        v59[2] = @"Lockscreen_Status";
        v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_phone_telemetry.is_on_coversheet];
        v60[2] = v38;
        v59[3] = @"TimeSinceLastAdapt";
        v39 = [MEMORY[0x277CCABB0] numberWithInt:self->_phone_telemetry.time_since_last_baseline_change_ms];
        v60[3] = v39;
        v59[4] = @"Touching";
        v40 = [MEMORY[0x277CCABB0] numberWithBool:self->_phone_telemetry.has_touch_above_threshold];
        v60[4] = v40;
        v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:5];
        v36[2](v36, @"com.apple.multitouch.baseline.adaptation", v41);

        selfCopy6 = self;
      }

      if (selfCopy6->_phone_telemetry.all_columns_covered_occurred)
      {
        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v42 = qword_2800179E0;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = selfCopy6->_phone_telemetry.baseline_adaption_interval_ms;
          v44 = selfCopy6->_phone_telemetry.time_since_last_baseline_change_ms;
          v45 = selfCopy6->_phone_telemetry.scan_frequency_index;
          if (selfCopy6->_phone_telemetry.is_on_coversheet)
          {
            v46 = "onCoversheet";
          }

          else
          {
            v46 = "";
          }

          *buf = 67109890;
          v62 = v43;
          v63 = 1024;
          v64 = v44;
          v65 = 1024;
          v66 = v45;
          v67 = 2080;
          v68 = v46;
          _os_log_impl(&dword_2653C2000, v42, OS_LOG_TYPE_INFO, "All Columns Covered: Interval=%dms SinceLast=%dms FreqIdx=%d %s", buf, 0x1Eu);
        }

        v47 = self->_coreAnalyticsCallback;
        v57[0] = @"Lockscreen_Status";
        v55 = [MEMORY[0x277CCABB0] numberWithBool:self->_phone_telemetry.is_on_coversheet];
        v57[1] = @"Touch_Frequency";
        v58[0] = v55;
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_phone_telemetry.scan_frequency_index];
        v58[1] = v48;
        v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
        v47[2](v47, @"com.apple.multitouch.dtn.allcolumnscovered", v49);

        selfCopy6 = self;
      }
    }
  }

  selfCopy6->_phone_telemetry.event_occurred = 0;
  selfCopy6->_path_stats = 0;
  selfCopy6->_duration_between_touches = 0;
  v50 = *MEMORY[0x277D85DE8];
}

- (id)generateWakeEvent:(int)event timestamp:(unint64_t)timestamp
{
  eventCopy = event;
  LODWORD(v6) = 0;
  v4 = [MEMORY[0x277CD2858] vendorDefinedEvent:timestamp usagePage:65376 usage:10 version:0 data:&eventCopy length:8 options:v6];

  return v4;
}

- (unint64_t)getValidTimestamp:(unint64_t)timestamp now:(unint64_t)now
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = now - timestamp;
  if (now - timestamp >= 0xF4240)
  {
    timestamp_offset = self->_timestamp_offset;
    if ((v6 - timestamp_offset) >= 0xF4240)
    {
      self->_timestamp_offset = v6;
      if (qword_2800179E8 != -1)
      {
        dispatch_once(&qword_2800179E8, &__block_literal_global);
      }

      v15 = qword_2800179E0;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = self->_timestamp_offset;
        v18 = 134218496;
        nowCopy3 = now;
        v20 = 2048;
        timestampCopy2 = timestamp;
        v22 = 2048;
        v23 = v17;
        _os_log_error_impl(&dword_2653C2000, v15, OS_LOG_TYPE_ERROR, "New timestamp offset: now=%llu timestamp=%llu offset=%lld", &v18, 0x20u);
      }

      selfCopy2 = self;
      nowCopy2 = now;
    }

    else
    {
      if (qword_2800179E8 != -1)
      {
        dispatch_once(&qword_2800179E8, &__block_literal_global);
      }

      v11 = timestamp_offset + timestamp;
      v12 = qword_2800179E0;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v18 = 134218496;
        nowCopy3 = now;
        v20 = 2048;
        timestampCopy2 = timestamp;
        v22 = 2048;
        v23 = v11;
        _os_log_debug_impl(&dword_2653C2000, v12, OS_LOG_TYPE_DEBUG, "Adjusting timestamp: now=%llu timestamp=%llu adjusted=%llu", &v18, 0x20u);
      }

      selfCopy2 = self;
      nowCopy2 = v11;
    }

    result = [(SASInterfacePadHost *)selfCopy2 timestampUsToAbsoluteMach:nowCopy2];
    v16 = *MEMORY[0x277D85DE8];
  }

  else
  {
    self->_timestamp_offset = 0;
    v7 = *MEMORY[0x277D85DE8];

    return [(SASInterfacePadHost *)self timestampUsToAbsoluteMach:?];
  }

  return result;
}

- (id)generateSwipeUp:(unint64_t)up
{
  v3 = *MEMORY[0x277CBECE8];
  NavigationSwipeEvent = IOHIDEventCreateNavigationSwipeEvent();
  if (qword_2800179E8 != -1)
  {
    dispatch_once(&qword_2800179E8, &__block_literal_global);
  }

  v5 = qword_2800179E0;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2653C2000, v5, OS_LOG_TYPE_DEFAULT, "Generate Swipe Up Wake Event", buf, 2u);
  }

  if (SALoggingHIDEventSignpost::onceToken != -1)
  {
    dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
  }

  v6 = SALoggingHIDEventSignpost::__logObj;
  if (os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_2653C2000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GenerateWakeEvent", "Atomic Swipe Up Wake Event", v8, 2u);
  }

  return NavigationSwipeEvent;
}

- (id)generateCoverGesture:(unint64_t)gesture state:(unsigned __int8)state surfaceCovered:(float)covered
{
  stateCopy = state;
  v17 = *MEMORY[0x277D85DE8];
  coveredCopy = covered;
  self->_cover_gesture_state = state;
  LODWORD(v11) = 0;
  v6 = [MEMORY[0x277CD2858] vendorDefinedEvent:gesture usagePage:65280 usage:89 version:1 data:&coveredCopy length:4 options:v11];
  IOHIDEventSetPhase();
  if (qword_2800179E8 != -1)
  {
    dispatch_once(&qword_2800179E8, &__block_literal_global);
  }

  v7 = qword_2800179E0;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v14 = stateCopy;
    v15 = 2048;
    v16 = coveredCopy;
    _os_log_impl(&dword_2653C2000, v7, OS_LOG_TYPE_DEFAULT, "Generate CoverGesture %d surface %0.2f", buf, 0x12u);
  }

  if (SALoggingHIDEventSignpost::onceToken != -1)
  {
    dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
  }

  v8 = SALoggingHIDEventSignpost::__logObj;
  if (os_signpost_enabled(v8))
  {
    *buf = 67109376;
    v14 = stateCopy;
    v15 = 2048;
    v16 = coveredCopy;
    _os_signpost_emit_with_name_impl(&dword_2653C2000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GenerateCoverGesture", "Cover Gesture %d surface %0.2f", buf, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)generateTouchSystemReady:(unint64_t)ready
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 1;
  LODWORD(v10) = 1;
  v4 = [MEMORY[0x277CD2858] vendorDefinedEvent:ready usagePage:65376 usage:9 version:1 data:&v11 length:1 options:v10];
  if (qword_2800179E8 != -1)
  {
    dispatch_once(&qword_2800179E8, &__block_literal_global);
  }

  v5 = qword_2800179E0;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    prev_frame_diff_us = self->_prev_frame_diff_us;
    *buf = 134217984;
    v13 = prev_frame_diff_us;
    _os_log_impl(&dword_2653C2000, v5, OS_LOG_TYPE_DEFAULT, "Generating Touch System Ready (%lluus since last frame)\n", buf, 0xCu);
  }

  if (SALoggingHIDEventSignpost::onceToken != -1)
  {
    dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
  }

  v7 = SALoggingHIDEventSignpost::__logObj;
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2653C2000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TouchSystemReady", "Touch System Ready", buf, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)generateEventInfo:(id *)info interpolated:(BOOL)interpolated timestamp:(unint64_t)timestamp
{
  interpolatedCopy = interpolated;
  v34 = *MEMORY[0x277D85DE8];
  if (interpolated)
  {
    v9 = 33;
  }

  else
  {
    v9 = 1;
  }

  v18 = 0u;
  v19 = 0u;
  LOWORD(v18) = *&info->var0;
  *(&v18 + 1) = [(SASInterfacePadHost *)self timestampUsToAbsoluteMach:self->_timestamp_offset + info->var2];
  *&v19 = [(SASInterfacePadHost *)self timestampUsToAbsoluteMach:self->_timestamp_offset + info->var3];
  BYTE8(v19) = info->var4;
  LODWORD(v17) = v9;
  v10 = [MEMORY[0x277CD2858] vendorDefinedEvent:timestamp usagePage:65308 usage:32 version:1 data:&v18 length:32 options:v17];
  if (qword_2800179E8 != -1)
  {
    dispatch_once(&qword_2800179E8, &__block_literal_global);
  }

  v11 = qword_2800179E0;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = "";
    v15 = "NO";
    if (interpolatedCopy)
    {
      v14 = "Interpolated ";
    }

    if (v18)
    {
      v16 = "YES";
    }

    else
    {
      v16 = "NO";
    }

    *buf = 136316674;
    if (BYTE1(v18))
    {
      v15 = "YES";
    }

    v21 = v14;
    v22 = 2080;
    v23 = v16;
    v24 = 2080;
    v25 = v15;
    v26 = 1024;
    v27 = BYTE8(v19);
    v28 = 2048;
    v29 = *(&v18 + 1);
    v30 = 2048;
    v31 = v19;
    v32 = 2048;
    timestampCopy = timestamp;
    _os_log_debug_impl(&dword_2653C2000, v11, OS_LOG_TYPE_DEBUG, "Generating %sEvent Info: expectNext=%s information=%s reason=%u deadline=%llu nextTimestamp=%llu now=%llu", buf, 0x44u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)generatePreHysteresisAngles:(const FireflyUnfilteredAnglesPacket *)angles timestamp:(unint64_t)timestamp
{
  v13 = *MEMORY[0x277D85DE8];
  LODWORD(v10) = 1;
  v5 = [MEMORY[0x277CD2858] vendorDefinedEvent:timestamp usagePage:65376 usage:4102 version:1 data:angles length:16 options:v10];
  if (qword_2800179E8 != -1)
  {
    dispatch_once(&qword_2800179E8, &__block_literal_global);
  }

  v6 = qword_2800179E0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    prev_frame_diff_us = self->_prev_frame_diff_us;
    *buf = 134217984;
    v12 = prev_frame_diff_us;
    _os_log_debug_impl(&dword_2653C2000, v6, OS_LOG_TYPE_DEBUG, "Generating Pre Hysteresis FF angles Event (%lluus since last frame)\n", buf, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)generateStylusEvent:(id *)event interpolated:(BOOL)interpolated now:(unint64_t)now
{
  v8 = [(SASInterfacePadHost *)self stitchingTS:event->var0.var0 now:now];
  v9 = [MEMORY[0x277CD2858] polarDigitizerEvent:-[SASInterfacePadHost getValidTimestamp:now:](self altitude:"getValidTimestamp:now:" azimuth:v8 quality:now) density:1 majorRadius:event->var2 minorRadius:event->var0.var12 options:{event->var0.var10, event->var0.var11, 0.0, 0.0}];
  [v9 setIntegerValue:0 forField:720900];
  v10 = 120.0;
  if (!event->var0.var14)
  {
    v10 = 0.0;
  }

  [v9 setDoubleValue:720906 forField:v10];
  [v9 setIntegerValue:event->var0.var2 forField:720901];
  [v9 setIntegerValue:event->var0.var3 forField:720902];
  [v9 setIntegerValue:event->var0.var4 forField:720903];
  [v9 setIntegerValue:event->var0.var1 forField:720923];
  [v9 setDoubleValue:720896 forField:event->var0.var5];
  [v9 setDoubleValue:720897 forField:event->var0.var6];
  [v9 setDoubleValue:720898 forField:event->var1];
  [v9 setIntegerValue:event->var0.var13 forField:720904];
  [v9 setIntegerValue:event->var0.var14 forField:720905];
  if ((event->var3 & 0x2000) != 0)
  {
    [v9 setIntegerValue:98304 forField:720926];
  }

  return v9;
}

- (unint64_t)stitchingTS:(unint64_t)s now:(unint64_t)now
{
  pen_meta_data = self->_pen_meta_data;
  if (!pen_meta_data)
  {
    return s;
  }

  hts_delta_ms = self->_hts_delta_ms;
  if (hts_delta_ms && pen_meta_data->var5 != 1)
  {
    return s + 1000 * hts_delta_ms;
  }

  return now;
}

- (id)generateFingerEvent:(id *)event interpolated:(BOOL)interpolated now:(unint64_t)now
{
  if (interpolated)
  {
    v6 = 33;
  }

  else
  {
    v6 = 1;
  }

  v7 = [MEMORY[0x277CD2858] qualityDigitizerEvent:-[SASInterfacePadHost getValidTimestamp:now:](self quality:"getValidTimestamp:now:" density:event->var0 irregularity:now) majorRadius:v6 minorRadius:event->var10 accuracy:event->var11 options:{0.0, event->var8, event->var7, 0.0}];
  [v7 setIntegerValue:2 forField:720900];
  [v7 setIntegerValue:event->var2 forField:720901];
  [v7 setIntegerValue:event->var3 forField:720902];
  [v7 setIntegerValue:event->var4 forField:720903];
  [v7 setIntegerValue:event->var1 forField:720923];
  [v7 setDoubleValue:720896 forField:event->var5];
  [v7 setDoubleValue:720897 forField:event->var6];
  [v7 setDoubleValue:720908 forField:event->var12];
  [v7 setDoubleValue:720922 forField:event->var9];
  [v7 setIntegerValue:event->var13 forField:720904];
  [v7 setIntegerValue:event->var14 forField:720905];
  var16 = event->var16;
  IOHIDEventSetPhase();

  return v7;
}

- (id)generateStylusHandEvent:(id *)event interpolated:(BOOL)interpolated now:(unint64_t)now
{
  if (interpolated)
  {
    v8 = 35;
  }

  else
  {
    v8 = 3;
  }

  v9 = [(SASInterfacePadHost *)self stitchingTS:event->var0.var0 now:now];
  v10 = [MEMORY[0x277CD2858] digitizerEvent:-[SASInterfacePadHost getValidTimestamp:now:](self transducerType:"getValidTimestamp:now:" x:v9 y:now) z:3 options:{v8, event->var0.var5, event->var0.var6, event->var1}];
  [v10 setIntegerValue:event->var0.var3 forField:720902];
  [v10 setIntegerValue:event->var0.var4 forField:720903];
  [v10 setIntegerValue:event->var0.var1 forField:720923];
  [v10 setIntegerValue:event->var0.var13 forField:720904];
  [v10 setIntegerValue:event->var0.var14 forField:720905];

  return v10;
}

- (id)generateHandEvent:(id *)event interpolated:(BOOL)interpolated now:(unint64_t)now
{
  if (interpolated)
  {
    v6 = 35;
  }

  else
  {
    v6 = 3;
  }

  v7 = [MEMORY[0x277CD2858] digitizerEvent:-[SASInterfacePadHost getValidTimestamp:now:](self transducerType:"getValidTimestamp:now:" x:event->var0 y:now) z:3 options:{v6, event->var5, event->var6, 0.0}];
  [v7 setIntegerValue:event->var3 forField:720902];
  [v7 setIntegerValue:event->var4 forField:720903];
  [v7 setIntegerValue:event->var1 forField:720923];
  [v7 setIntegerValue:event->var13 forField:720904];
  [v7 setIntegerValue:event->var14 forField:720905];

  return v7;
}

- (void)cleanStylusNodes
{
  self->_ptw = 0;
  self->_stylus = 0;
  self->_stylusHand = 0;
  self->_hts_delta_ms = 0;
  self->_pen_meta_data = 0;
  self->_pre_hysteresis_ff_angles = 0;
}

- (void)cleanNodes
{
  self->_tap = 0;
  self->_touch_system_ready = 0;
  self->_cover_gesture.state = 0;
  self->_atomic_wake_event = 0;
  *&self->_fingers = 0u;
  *&self->_hand = 0u;
  self->_event_info = 0;
  self->_interpolated_event_info = 0;
}

- (void)callEventCallback
{
  v94 = *MEMORY[0x277D85DE8];
  if (self->_hand)
  {
    v3 = self->_fingers != 0;
  }

  else
  {
    v3 = 0;
  }

  if (self->_interpolated_hand)
  {
    v4 = self->_interpolated_fingers != 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = self->_atomic_wake_event || self->_cover_gesture.state;
  v75 = 0;
  mach_get_times();
  v6 = [(SASInterfacePadHost *)self timestampMachToUs:0];
  v7 = v6 - self->_last_frame_time_us;
  self->_last_frame_time_us = v6;
  self->_prev_frame_diff_us = v7;
  self->_cont_abs_diff = 0;
  if (self->_eventCallback && (v3 || v4 || self->_tap || v5 || self->_touch_system_ready))
  {
    v8 = objc_opt_new();
    if (self->_tap)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = v10;
        v12 = [(SASInterfacePadHost *)self generateTapEvent:self->_tap transducerType:3 now:v6, v75];
        v13 = [(SASInterfacePadHost *)self generateTapEvent:self->_tap transducerType:2 now:v6];
        v14 = [(SASInterfacePadHost *)self generateWakeEvent:0 timestamp:[(SASInterfacePadHost *)self getValidTimestamp:self->_tap->var0 now:v6]];
        [v8 addObject:v12];
        [v12 appendEvent:v14];
        [v12 appendEvent:v13];
        if (v9)
        {
          [v12 setIntegerValue:0 forField:720905];
          [v13 setIntegerValue:0 forField:720905];
        }

        v10 = 0;
        v9 = 1;
      }

      while ((v11 & 1) != 0);
      if (qword_2800179E8 != -1)
      {
        dispatch_once(&qword_2800179E8, &__block_literal_global);
      }

      v15 = qword_2800179E0;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2653C2000, v15, OS_LOG_TYPE_DEFAULT, "Wake Event TTW", buf, 2u);
      }

      if (SALoggingHIDEventSignpost::onceToken != -1)
      {
        dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
      }

      v16 = SALoggingHIDEventSignpost::__logObj;
      v17 = v16;
      var1 = self->_tap->var1;
      if (var1 && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2653C2000, v17, OS_SIGNPOST_EVENT, var1, "GenerateWakeEvent", "Wake Event TTW", buf, 2u);
      }

      goto LABEL_93;
    }

    if (v4)
    {
      v23 = [(SASInterfacePadHost *)self generateHandEvent:self->_interpolated_hand interpolated:1 now:v6];
      [v8 addObject:v23];
      interpolated_fingers = self->_interpolated_fingers;
      if (interpolated_fingers->var0)
      {
        v25 = 0;
        v26 = 8;
        do
        {
          v27 = [(SASInterfacePadHost *)self generateFingerEvent:interpolated_fingers + v26 interpolated:1 now:v6, v75];
          [v23 appendEvent:v27];

          ++v25;
          interpolated_fingers = self->_interpolated_fingers;
          v26 += 72;
        }

        while (v25 < interpolated_fingers->var0);
      }

      interpolated_event_info = self->_interpolated_event_info;
      if (interpolated_event_info)
      {
        v29 = -[SASInterfacePadHost generateEventInfo:interpolated:timestamp:](self, "generateEventInfo:interpolated:timestamp:", interpolated_event_info, 1, [v23 timestamp]);
        [v23 appendEvent:v29];
      }

      if (SALoggingHIDEventSignpost::onceToken != -1)
      {
        dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
      }

      v30 = SALoggingHIDEventSignpost::__logObj;
      v31 = v30;
      v32 = self->_interpolated_hand->var1;
      if (v32 && os_signpost_enabled(v30))
      {
        v33 = self->_cont_abs_diff + [v23 timestamp];
        var0 = self->_interpolated_fingers->var0;
        interpolated_hand = self->_interpolated_hand;
        var4 = interpolated_hand->var4;
        var14 = interpolated_hand->var14;
        var13 = interpolated_hand->var13;
        var5 = interpolated_hand->var5;
        var6 = interpolated_hand->var6;
        v41 = self->_interpolated_event_info;
        if (v41)
        {
          v42 = v41->var0;
          LODWORD(v41) = v41->var1;
        }

        else
        {
          v42 = 0;
        }

        *buf = 134351105;
        v77 = v33;
        v78 = 1024;
        v79 = var0;
        v80 = 1024;
        v81 = var4;
        v82 = 1024;
        v83 = var14;
        v84 = 1024;
        v85 = var13;
        v86 = 2053;
        v87 = var5;
        v88 = 2053;
        v89 = var6;
        v90 = 1024;
        v91 = v42;
        v92 = 1024;
        v93 = v41;
        _os_signpost_emit_with_name_impl(&dword_2653C2000, v31, OS_SIGNPOST_EVENT, v32, "GenerateDigitizer", "%{public, signpost.description:begin_time}llu fingers=%u mask=0x%x touch/range=%u/%u pos=(%{sensitive}.5f,%{sensitive}.5f) interp=1 next=%u info=%u", buf, 0x44u);
      }
    }

    if (v3)
    {
      v43 = [(SASInterfacePadHost *)self generateHandEvent:self->_hand interpolated:0 now:v6];
      [v8 addObject:v43];
      fingers = self->_fingers;
      if (fingers->var0)
      {
        v45 = 0;
        v46 = 8;
        do
        {
          v47 = [(SASInterfacePadHost *)self generateFingerEvent:fingers + v46 interpolated:0 now:v6, v75];
          [v43 appendEvent:v47];

          ++v45;
          fingers = self->_fingers;
          v46 += 72;
        }

        while (v45 < fingers->var0);
      }

      event_info = self->_event_info;
      if (event_info)
      {
        v49 = [(SASInterfacePadHost *)self generateEventInfo:event_info interpolated:0 timestamp:[v43 timestamp]];
        [v43 appendEvent:v49];
      }

      if (self->_wake_event_detected)
      {
        v50 = [(SASInterfacePadHost *)self generateWakeEvent:self->_wake_event_detected timestamp:[v43 timestamp]];
        [v43 appendEvent:v50];
        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v51 = qword_2800179E0;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          wake_event_detected = self->_wake_event_detected;
          *buf = 67109120;
          LODWORD(v77) = wake_event_detected;
          _os_log_impl(&dword_2653C2000, v51, OS_LOG_TYPE_DEFAULT, "Wake Event %d", buf, 8u);
        }

        if (SALoggingHIDEventSignpost::onceToken != -1)
        {
          dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
        }

        v53 = SALoggingHIDEventSignpost::__logObj;
        v54 = v53;
        v55 = self->_hand->var1;
        if (v55 && os_signpost_enabled(v53))
        {
          v56 = self->_wake_event_detected;
          *buf = 67109120;
          LODWORD(v77) = v56;
          _os_signpost_emit_with_name_impl(&dword_2653C2000, v54, OS_SIGNPOST_EVENT, v55, "GenerateWakeEvent", "Wake Event %d", buf, 8u);
        }
      }

      if (SALoggingHIDEventSignpost::onceToken != -1)
      {
        dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
      }

      v57 = SALoggingHIDEventSignpost::__logObj;
      v58 = v57;
      v59 = self->_hand->var1;
      if (v59 && os_signpost_enabled(v57))
      {
        v60 = self->_cont_abs_diff + [v43 timestamp];
        v61 = self->_fingers->var0;
        hand = self->_hand;
        v63 = hand->var4;
        v64 = hand->var14;
        v65 = hand->var13;
        v66 = hand->var5;
        v67 = hand->var6;
        v68 = self->_event_info;
        if (v68)
        {
          v69 = v68->var0;
          LODWORD(v68) = v68->var1;
        }

        else
        {
          v69 = 0;
        }

        *buf = 134351105;
        v77 = v60;
        v78 = 1024;
        v79 = v61;
        v80 = 1024;
        v81 = v63;
        v82 = 1024;
        v83 = v64;
        v84 = 1024;
        v85 = v65;
        v86 = 2053;
        v87 = v66;
        v88 = 2053;
        v89 = v67;
        v90 = 1024;
        v91 = v69;
        v92 = 1024;
        v93 = v68;
        _os_signpost_emit_with_name_impl(&dword_2653C2000, v58, OS_SIGNPOST_EVENT, v59, "GenerateDigitizer", "%{public, signpost.description:begin_time}llu fingers=%u mask=0x%x touch/range=%u/%u pos=(%{sensitive}.5f,%{sensitive}.5f) interp=0 next=%u info=%u", buf, 0x44u);
      }
    }

    else
    {
      if (!self->_wake_event_detected)
      {
LABEL_87:
        if (self->_touch_system_ready)
        {
          v70 = [(SASInterfacePadHost *)self generateTouchSystemReady:v75];
          [v8 addObject:v70];
        }

        if (self->_atomic_wake_event == 1)
        {
          v71 = [(SASInterfacePadHost *)self generateSwipeUp:v75];
          [v8 addObject:v71];
        }

        if (!self->_cover_gesture.state)
        {
          goto LABEL_94;
        }

        v72 = [(SASInterfacePadHost *)self getValidTimestamp:self->_cover_gesture.timestamp_us now:v6];
        *&v73 = self->_cover_gesture.surface_covered;
        v17 = [(SASInterfacePadHost *)self generateCoverGesture:v72 state:self->_cover_gesture.state surfaceCovered:v73];
        [v8 addObject:v17];
LABEL_93:

LABEL_94:
        (*(self->_eventCallback + 2))();
        [(SASInterfacePadHost *)self cleanNodes];

        goto LABEL_95;
      }

      if (qword_2800179E8 != -1)
      {
        dispatch_once(&qword_2800179E8, &__block_literal_global);
      }

      v43 = qword_2800179E0;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2653C2000, v43, OS_LOG_TYPE_ERROR, "Wake Event but no hand!", buf, 2u);
      }
    }

    goto LABEL_87;
  }

  if (self->_fingers || self->_interpolated_fingers)
  {
    if (SALoggingHIDEventSignpost::onceToken != -1)
    {
      dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
    }

    v19 = SALoggingHIDEventSignpost::__logObj;
    v20 = v19;
    v21 = self->_fingers;
    if (!v21)
    {
      v21 = self->_interpolated_fingers;
    }

    v22 = v21->var1[0].var1;
    if (v22 && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2653C2000, v20, OS_SIGNPOST_EVENT, v22, "DropDigitizer", "No change", buf, 2u);
    }
  }

  [(SASInterfacePadHost *)self cleanNodes];
LABEL_95:
  v74 = *MEMORY[0x277D85DE8];
}

- (void)callPencilEventCallback
{
  v55 = *MEMORY[0x277D85DE8];
  if (self->_stylusHand)
  {
    v3 = self->_stylus != 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_new();
  v40 = 0;
  mach_get_times();
  v5 = [(SASInterfacePadHost *)self timestampMachToUs:0];
  v6 = v5 - self->_last_frame_time_us;
  self->_last_frame_time_us = v5;
  self->_prev_frame_diff_us = v6;
  self->_cont_abs_diff = 0;
  pencilEventCallback = self->_pencilEventCallback;
  if (pencilEventCallback)
  {
    if (v3)
    {
      p_ptw = &self->_ptw;
      if (!self->_ptw)
      {
        v9 = [(SASInterfacePadHost *)self generateStylusHandEvent:self->_stylusHand interpolated:0 now:v5];
        [v4 addObject:v9];
        stylus = self->_stylus;
        if (stylus->var0)
        {
          v11 = 0;
          v12 = 8;
          do
          {
            v13 = [(SASInterfacePadHost *)self generateStylusEvent:stylus + v12 interpolated:0 now:v5, v40];
            v14 = [(SASInterfacePadHost *)self generatePreHysteresisAngles:self->_pre_hysteresis_ff_angles timestamp:v40];
            [v13 appendEvent:v14];
            [v9 appendEvent:v13];

            ++v11;
            stylus = self->_stylus;
            v12 += 88;
          }

          while (v11 < stylus->var0);
        }

        if (SALoggingHIDEventSignpost::onceToken != -1)
        {
          dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
        }

        v15 = SALoggingHIDEventSignpost::__logObj;
        v16 = v15;
        var1 = self->_stylusHand->var0.var1;
        if (var1 && os_signpost_enabled(v15))
        {
          v18 = self->_cont_abs_diff + [v9 timestamp];
          stylusHand = self->_stylusHand;
          var0 = self->_stylus->var0;
          var4 = stylusHand->var0.var4;
          var14 = stylusHand->var0.var14;
          var13 = stylusHand->var0.var13;
          var5 = stylusHand->var0.var5;
          var6 = stylusHand->var0.var6;
          *buf = 134350593;
          v42 = v18;
          v43 = 1024;
          v44 = var0;
          v45 = 1024;
          v46 = var4;
          v47 = 1024;
          v48 = var14;
          v49 = 1024;
          v50 = var13;
          v51 = 2053;
          v52 = var5;
          v53 = 2053;
          v54 = var6;
          _os_signpost_emit_with_name_impl(&dword_2653C2000, v16, OS_SIGNPOST_EVENT, var1, "GenerateDigitizer", "%{public, signpost.description:begin_time}llu fingers=%u mask=0x%x touch/range=%u/%u pos=(%{sensitive}.5f,%{sensitive}.5f)", buf, 0x38u);
        }

LABEL_33:
        pencilEventCallback = self->_pencilEventCallback;
LABEL_34:
        pencilEventCallback[2](pencilEventCallback, v4);
        [(SASInterfacePadHost *)self cleanStylusNodes];
        goto LABEL_43;
      }

      goto LABEL_20;
    }

    p_ptw = &self->_ptw;
    ptw = self->_ptw;
    if (self->_touch_system_ready)
    {
      if (!ptw)
      {
        goto LABEL_34;
      }

      goto LABEL_20;
    }

    if (ptw)
    {
LABEL_20:
      v27 = 0;
      v28 = 1;
      do
      {
        v29 = v28;
        v30 = [(SASInterfacePadHost *)self generatePtwEvent:self->_ptw transducerType:3 now:v5, v40];
        v31 = [(SASInterfacePadHost *)self generatePtwEvent:self->_ptw transducerType:0 now:v5];
        v32 = [(SASInterfacePadHost *)self generateWakeEvent:0 timestamp:[(SASInterfacePadHost *)self getValidTimestamp:self->_ptw->var0.var0 now:v5]];
        [v4 addObject:v30];
        [v30 appendEvent:v32];
        [v30 appendEvent:v31];
        if (v27)
        {
          [v30 setIntegerValue:0 forField:720905];
          [v31 setIntegerValue:0 forField:720905];
        }

        v28 = 0;
        v27 = 1;
      }

      while ((v29 & 1) != 0);
      if (qword_2800179E8 != -1)
      {
        dispatch_once(&qword_2800179E8, &__block_literal_global);
      }

      v33 = qword_2800179E0;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2653C2000, v33, OS_LOG_TYPE_DEFAULT, "Wake Event PTW", buf, 2u);
      }

      if (SALoggingHIDEventSignpost::onceToken != -1)
      {
        dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
      }

      v34 = SALoggingHIDEventSignpost::__logObj;
      v9 = v34;
      v35 = (*p_ptw)->var0.var1;
      if (v35 && os_signpost_enabled(v34))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2653C2000, v9, OS_SIGNPOST_EVENT, v35, "GenerateWakeEvent", "Wake Event PTW", buf, 2u);
      }

      goto LABEL_33;
    }
  }

  if (self->_stylus)
  {
    if (SALoggingHIDEventSignpost::onceToken != -1)
    {
      dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
    }

    v36 = SALoggingHIDEventSignpost::__logObj;
    v37 = v36;
    v38 = self->_stylus->var1[0].var0.var1;
    if (v38 && os_signpost_enabled(v36))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2653C2000, v37, OS_SIGNPOST_EVENT, v38, "DropStylusDigitizer", "No change", buf, 2u);
    }
  }

  [(SASInterfacePadHost *)self cleanStylusNodes];
LABEL_43:

  v39 = *MEMORY[0x277D85DE8];
}

- (void)callResetRequestCallback:(unsigned __int16)callback arg_ptr:(const void *)arg_ptr
{
  resetRequestCallback = self->_resetRequestCallback;
  if (resetRequestCallback)
  {
    if (callback == 1)
    {
      v5 = *arg_ptr;
    }

    else
    {
      v5 = 0;
    }

    resetRequestCallback[2](resetRequestCallback, v5);
  }
}

- (void)callStreamCallback:(unint64_t)callback
{
  if (callback && self->_streamCallback)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:-[NSMutableData mutableBytes](self->_outputBuffer length:"mutableBytes") freeWhenDone:{callback + 1, 0}];
    (*(self->_streamCallback + 2))();
  }
}

- (void)defaultStreamingConfiguration
{
  v9[2] = 14;
  v9[3] = 0;
  v9[4] = 14;
  v9[5] = 0;
  v9[6] = 14;
  v9[7] = 0;
  v9[8] = 0;
  v9[0] = &unk_2876F3A30;
  v9[1] = 0;
  v10 = xmmword_2655A9FE0;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  AlgDataExtractor::add(v9, &v10);
  v10 = xmmword_2655A9FF0;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA000;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA010;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA020;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA030;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA040;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA050;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA060;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA070;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA080;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA090;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA0A0;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA0B0;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v3 = [(NSMutableData *)self->_outputBuffer length];
  mutableBytes = [(NSMutableData *)self->_outputBuffer mutableBytes];
  device = self->_device;
  AlgsDevice::StreamingClient::configure(device[8], 1, v9);
  v6 = device[8];
  *(v6 + 5) = 0;
  *(v6 + 6) = mutableBytes + 1;
  *(v6 + 7) = v3 - 1;
  *(v6 + 8) = 0;
  *(v6 + 72) = 0;
  *(v6 + 74) = 0;
  *(v6 + 10) = 0;
  if (AlgsDevice::StreamingClient::configureStatus(device[8]))
  {
    v7 = device[8];
    v8 = *(v7 + 8);
    *(v7 + 40) = 0u;
    *(v7 + 72) = 0;
    *(v7 + 56) = 0u;
    *(v7 + 74) = 0;
    *(v7 + 10) = 0;
  }

  else
  {
    v8 = 0;
  }

  [(SASInterfacePadHost *)self callStreamCallback:v8];
  PacketCollection::~PacketCollection(v9);
}

- (void)configureTranslation
{
  v13[0] = &unk_2876F3A60;
  v13[1] = 0;
  v13[2] = 6;
  v13[3] = 0;
  v13[4] = 6;
  v13[5] = 0;
  v13[6] = 6;
  v12[0] = &unk_2876F3A60;
  v12[1] = 0;
  v12[2] = 6;
  v12[3] = 0;
  v12[4] = 6;
  v12[5] = 0;
  v12[6] = 6;
  v3 = xmmword_2655AA0C0;
  v4 = 0;
  v5 = 0;
  v6 = 512;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v13, &v3);
  v3 = xmmword_2655AA0D0;
  v4 = 0;
  v5 = 0;
  v6 = 256;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v12, &v3);
  v3 = xmmword_2655AA0E0;
  v4 = 0;
  v5 = 0;
  v6 = 512;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v13, &v3);
  v3 = xmmword_2655AA0F0;
  v4 = 0;
  v5 = 0;
  v6 = 256;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v12, &v3);
  v3 = xmmword_2655AA100;
  v4 = 0;
  v5 = 0;
  v6 = 512;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v13, &v3);
  v3 = xmmword_2655AA110;
  v4 = 0;
  v5 = 0;
  v6 = 256;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v12, &v3);
  v3 = xmmword_2655AA120;
  v4 = 0;
  v5 = 0;
  v6 = 512;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v13, &v3);
  v3 = xmmword_2655AA130;
  v4 = 0;
  v5 = 0;
  v6 = 256;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v12, &v3);
  v3 = xmmword_2655AA140;
  v4 = 0;
  v5 = 0;
  v6 = 512;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v13, &v3);
  v3 = xmmword_2655AA150;
  v4 = 0;
  v5 = 0;
  v6 = 256;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v12, &v3);
  v3 = xmmword_2655AA160;
  v4 = 0;
  v5 = 0;
  v6 = 512;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v13, &v3);
  v3 = xmmword_2655AA170;
  v4 = 0;
  v5 = 0;
  v6 = 256;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v12, &v3);
  AlgsDevice::StreamingClient::configureTranslation(*(self->_device + 8), v13, v12);
  PacketCollection::~PacketCollection(v12);
  PacketCollection::~PacketCollection(v13);
}

- (void)configureCallbacks
{
  if (self->_planId == 1)
  {
    v5 = 2;
    v6 = 0;
    v7 = 2;
    v8 = 0;
    v9 = 2;
    v10 = 0;
    v11 = 0;
    v3 = &unk_2876F3A30;
    v4 = 0;
    v12 = xmmword_2655AA070;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_29::__invoke;
    selfCopy31 = self;
    AlgDataExtractor::add(&v3, &v12);
    v12 = xmmword_2655AA080;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_30::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    AlgsDevice::addClient(self->_device, 1u, 0, &v3);
  }

  else
  {
    if (self->_planId)
    {
      return;
    }

    v5 = 29;
    v6 = 0;
    v7 = 29;
    v8 = 0;
    v9 = 29;
    v10 = 0;
    v11 = 0;
    v3 = &unk_2876F3A30;
    v4 = 0;
    v12 = xmmword_2655A9FF0;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_0::__invoke;
    selfCopy31 = self;
    AlgDataExtractor::add(&v3, &v12);
    v12 = xmmword_2655AA010;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_1::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA030;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_2::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655A9FE0;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_3::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA000;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_4::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA020;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_5::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA180;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_6::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA190;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_7::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA1A0;
    v13 = 0;
    v14 = 0;
    v15 = 258;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_8::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA1B0;
    v13 = 0;
    v14 = 0;
    v15 = 258;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_9::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA1C0;
    v13 = 0;
    v14 = 0;
    v15 = 258;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_10::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA060;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_11::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA040;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_12::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA050;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_13::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA1D0;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_14::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA1E0;
    v13 = 0;
    v14 = 0;
    v15 = 258;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_15::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA1F0;
    v13 = 0;
    v14 = 0;
    v15 = 258;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_16::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA200;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_17::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA210;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_18::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA220;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_19::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA230;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_20::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA240;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_21::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA250;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_22::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA260;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_23::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA270;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_24::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA280;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_25::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA290;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_26::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA0A0;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_27::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA0B0;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_28::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    AlgsDevice::addClient(self->_device, 1u, 0, &v3);
  }

  PacketCollection::~PacketCollection(&v3);
}

- (BOOL)injectProperty:(id)property value:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  v8 = [(NSMutableDictionary *)self->_propertyDatabase objectForKeyedSubscript:propertyCopy];
  v9 = v8;
  if (v8)
  {
    [v8 setObject:valueCopy forKeyedSubscript:@"Value"];
    v10 = [(SASInterfacePadHost *)self injectProperty:propertyCopy];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)injectProperty:(id)property
{
  v22 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v5 = [(NSMutableDictionary *)self->_propertyDatabase objectForKeyedSubscript:propertyCopy];
  v6 = v5;
  if (v5 && ([v5 objectForKeyedSubscript:@"Value"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v6 objectForKeyedSubscript:@"WorkNodeId"];
    [v8 unsignedLongLongValue];

    v9 = [v6 objectForKeyedSubscript:@"DataNodeId"];
    [v9 unsignedLongLongValue];

    v10 = [v6 objectForKeyedSubscript:@"Type"];
    unsignedShortValue = [v10 unsignedShortValue];

    v12 = [v6 objectForKeyedSubscript:@"Invert"];
    [v12 BOOLValue];

    switch(unsignedShortValue)
    {
      case 39426:
        v16 = [v6 objectForKeyedSubscript:@"Value"];
        [v16 bytes];

        v17 = [v6 objectForKeyedSubscript:@"Value"];
        [v17 length];

        operator new[]();
      case 20489:
        v15 = [v6 objectForKeyedSubscript:@"Value"];
        [v15 longValue];

        operator new[]();
      case 20486:
        v13 = [v6 objectForKeyedSubscript:@"Value"];
        [v13 unsignedIntValue];

        operator new[]();
    }

    if (qword_2800179E8 != -1)
    {
      dispatch_once(&qword_2800179E8, &__block_literal_global);
    }

    v14 = qword_2800179E0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = 67109120;
      *v21 = unsignedShortValue;
      _os_log_error_impl(&dword_2653C2000, v14, OS_LOG_TYPE_ERROR, "InjectProperty: cannot handle type 0x%x", &v20, 8u);
    }
  }

  else
  {
    if (qword_2800179E8 != -1)
    {
      dispatch_once(&qword_2800179E8, &__block_literal_global);
    }

    v14 = qword_2800179E0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412290;
      *v21 = propertyCopy;
      _os_log_error_impl(&dword_2653C2000, v14, OS_LOG_TYPE_ERROR, "InjectProperty: %@ key not found", &v20, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)handleInputStream:(id)stream
{
  v162 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v128 = 0;
  if (![streamCopy length])
  {
    v7 = 0;
    goto LABEL_145;
  }

  bytes = [streamCopy bytes];
  v6 = [streamCopy length] - 1;
  if (v6 >= 2 && *(bytes + 1) == 1 && *(bytes + 2) == 1 && !self->_planId)
  {
    if (self->_cover_gesture_state == 1)
    {
      v46 = objc_opt_new();
      v47 = [(SASInterfacePadHost *)self generateCoverGesture:mach_absolute_time() state:3 surfaceCovered:0.0];
      [v46 addObject:v47];
      (*(self->_eventCallback + 2))();
    }

    v135 = 0;
    v136 = 0;
    v137 = 0;
    v129 = xmmword_2655AA2A0;
    v130 = &v135;
    bytes2 = [(NSData *)self->_emptyPaths bytes];
    v49 = [(NSData *)self->_emptyPaths length];
    *v122 = xmmword_2655AA0D0;
    *&v122[16] = 12288;
    *&v123 = v49;
    DWORD2(v123) = 257;
    *&v124 = 0;
    DWORD2(v124) = 0;
    v126 = 0;
    v127 = 0;
    v125 = bytes2;
    v154 = 1;
    v155 = 0;
    v156 = 1;
    v157 = 0;
    v158 = 1;
    v152 = &unk_2876F3A90;
    v153 = 0;
    PacketCollection::add(&v152, v122);
    v128 = [(NSMutableData *)self->_outputBuffer length]- 1;
    v7 = (*(*self->_device + 24))(self->_device, &v129, &v152, [(NSMutableData *)self->_outputBuffer mutableBytes]+ 1, &v128);
    [(SASInterfacePadHost *)self callStreamCallback:v128];
    [(SASInterfacePadHost *)self callPencilEventCallback];
    [(SASInterfacePadHost *)self callEventCallback];
    [(SASInterfacePadHost *)self callCoreAnalyticsCallback];
    [(SASInterfacePadHost *)self callPadTouchCoreAnalyticsCallback];
    PacketCollection::~PacketCollection(&v152);
  }

  else
  {
    v7 = 1;
  }

  v128 = [(NSMutableData *)self->_outputBuffer length]- 1;
  mutableBytes = [(NSMutableData *)self->_outputBuffer mutableBytes];
  device = self->_device;
  v10 = streamCopy;
  bytes3 = [streamCopy bytes];
  v12 = [streamCopy length];
  v17 = device[8];
  v18 = v128;
  *(v17 + 40) = 0;
  *(v17 + 48) = mutableBytes + 1;
  *(v17 + 56) = v18;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 74) = 0;
  *(v17 + 80) = 0;
  v19 = device[8];
  v21 = *(v19 + 128);
  v20 = (v19 + 128);
  v22 = *(v19 + 136);
  *&v129 = v19 + 128;
  *(&v129 + 1) = bytes3 + 1;
  v131 = 0;
  v132 = 0;
  v130 = (v12 - 1);
  v133 = v21;
  v134 = v22;
  if ((v12 - 1) < 2 || *(bytes3 + 1) != 1)
  {
    goto LABEL_124;
  }

  v23 = *(bytes3 + 2);
  if (v23 <= 4)
  {
    if (*(bytes3 + 2) <= 2u)
    {
      if (v23 == 1)
      {
        *v122 = &v152;
        *&v122[8] = 0u;
        v123 = 0u;
        v124 = 0u;
        v131 = 2;
        v132 = v122;
        if (v12 == 3)
        {
          goto LABEL_124;
        }

        v50 = *(bytes3 + 3);
        LOBYTE(v152) = v50;
        if (v12 != 4)
        {
          SABinaryParser::parseInfoData(&v129 + 1, StreamingParser::parseReset(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_0::__invoke, 0, 0);
          if (!v51)
          {
            goto LABEL_124;
          }

          v50 = v152;
        }

        v52 = *(v19 + 32);
        (*(*v52 + 40))(v52, v50);
        v117 = bytes;
        v53 = 0;
        v52[77] = v50;
        v54 = v52 + 32;
        while (v53 != 16)
        {
          v55 = *&v54[v53];
          if (v55)
          {
            (*(*v55 + 16))(v55, v50);
          }

          v53 += 8;
        }

        goto LABEL_168;
      }

      if (v23 != 2)
      {
        goto LABEL_124;
      }

      v145 = 0;
      v146 = 0;
      StreamingParser::numberOfPackets(&v129, &v146, &v145, 0, v13, v14, v15, v16);
      if ((v33 & 1) == 0)
      {
        goto LABEL_124;
      }

      v34 = *(v19 + 104);
      v35 = v146;
      if (v34)
      {
        v35 = v146 + *(v34 + 20);
        v146 += *(v34 + 20);
      }

      v154 = v35;
      v155 = 0;
      v156 = v35;
      v157 = 0;
      v158 = v35;
      v152 = &unk_2876F3A90;
      v153 = 0;
      *&v122[16] = v145;
      *&v123 = 0;
      *(&v123 + 1) = v145;
      *&v124 = 0;
      *(&v124 + 1) = v145;
      v125 = 0;
      v126 = 0;
      *v122 = &unk_2876F3A30;
      *&v122[8] = 0;
      v135 = v147;
      v136 = &v152;
      v137 = v122;
      v132 = &v135;
      SABinaryParser::parseRunFrame(&v129 + 1, StreamingParser::parseRun(InjectionInfo *,AlgDataInjector *,AlgDataExtractor *)::$_0::__invoke, StreamingParser::parseRun(InjectionInfo *,AlgDataInjector *,AlgDataExtractor *)::$_1::__invoke, StreamingParser::parseRun(InjectionInfo *,AlgDataInjector *,AlgDataExtractor *)::$_2::__invoke);
      if (v36)
      {
        AlgsDevice::StreamingClient::translate(v19, &v152, v122);
        *(v19 + 97) = 1;
        v37 = *(v19 + 32);
        AlgsDevice::run();
        PacketCollection::~PacketCollection(v122);
        v38 = &v152;
LABEL_102:
        PacketCollection::~PacketCollection(v38);
LABEL_110:
        v41 = 0;
        v40 = 0;
        v39 = 0;
        goto LABEL_169;
      }

      PacketCollection::~PacketCollection(v122);
      v80 = &v152;
LABEL_123:
      PacketCollection::~PacketCollection(v80);
      goto LABEL_124;
    }

    if (v23 == 3)
    {
      v145 = 0;
      v146 = 0;
      v144 = 0;
      StreamingParser::numberOfPackets(&v129, &v146, &v145, &v144, v13, v14, v15, v16);
      if ((v56 & 1) == 0)
      {
        goto LABEL_124;
      }

      v57 = *(v19 + 104);
      v58 = v146;
      if (v57)
      {
        v58 = v146 + *(v57 + 20);
        v146 += *(v57 + 20);
      }

      v137 = v58;
      v138 = 0;
      v139 = v58;
      v140 = 0;
      v141 = 0;
      v142 = v58;
      v143 = 0;
      v135 = &unk_2876F3A90;
      v136 = 0;
      *&v122[16] = v145;
      *&v123 = 0;
      *(&v123 + 1) = v145;
      *&v124 = 0;
      *(&v124 + 1) = v145;
      v125 = 0;
      v126 = 0;
      *v122 = &unk_2876F3A30;
      *&v122[8] = 0;
      v154 = v144;
      v155 = 0;
      v156 = v144;
      v157 = 0;
      v158 = v144;
      v159 = 0;
      v160 = 0;
      v152 = &unk_2876F3A30;
      v153 = 0;
      *v147 = v19 + 88;
      v148 = &v135;
      v149 = v122;
      v150 = &v152;
      v132 = v147;
      SABinaryParser::parseInjExtFrame(&v129 + 1, StreamingParser::parseInjExt(unsigned long long *,AlgDataInjector *,AlgDataExtractor *,AlgDataExtractor *)::$_0::__invoke, StreamingParser::parseInjExt(unsigned long long *,AlgDataInjector *,AlgDataExtractor *,AlgDataExtractor *)::$_1::__invoke, StreamingParser::parseInjExt(unsigned long long *,AlgDataInjector *,AlgDataExtractor *,AlgDataExtractor *)::$_2::__invoke, StreamingParser::parseInjExt(unsigned long long *,AlgDataInjector *,AlgDataExtractor *,AlgDataExtractor *)::$_3::__invoke);
      v60 = v59;
      if (v59)
      {
        v61 = HIDWORD(v154);
        v62 = (v153 + 72);
        if (HIDWORD(v154))
        {
          do
          {
            *(v62 - 1) = AlgsDevice::StreamingClient::extraction;
            *v62 = v19;
            --v61;
            v62 += 10;
          }

          while (v61);
        }

        AlgsDevice::StreamingClient::translate(v19, &v135, v122);
        *(v19 + 97) = 1;
        v63 = *(v19 + 32);
        AlgsDevice::injExtWith();
        *(v19 + 88) = 0;
        PacketCollection::~PacketCollection(&v152);
        PacketCollection::~PacketCollection(v122);
        PacketCollection::~PacketCollection(&v135);
        if ((v60 & 1) == 0)
        {
          goto LABEL_124;
        }

        goto LABEL_110;
      }

      PacketCollection::~PacketCollection(&v152);
      PacketCollection::~PacketCollection(v122);
      v80 = &v135;
      goto LABEL_123;
    }

    if (v23 != 4)
    {
      goto LABEL_124;
    }

    if ((v12 - 6) > 0xFFFFFFFFFFFFFFFCLL)
    {
      v41 = 0;
      v40 = 0;
    }

    else
    {
      v39 = *(bytes3 + 3);
      v40 = *(bytes3 + 4);
      v41 = (bytes3 + 6);
      if (v39 != 1)
      {
LABEL_169:
        v112 = device[8];
        v90 = *(v112 + 64);
        *(v112 + 40) = 0u;
        *(v112 + 72) = 0;
        *(v112 + 56) = 0u;
        *(v112 + 74) = 0;
        *(v112 + 80) = 0;
        goto LABEL_125;
      }

      if (v40 && *v41 == 255)
      {
        *v41 = *(*(v19 + 32) + 77);
      }
    }

    v39 = 1;
    goto LABEL_169;
  }

  if (*(bytes3 + 2) <= 6u)
  {
    if (v23 != 5)
    {
      if (v23 != 6)
      {
        goto LABEL_124;
      }

      LODWORD(v146) = 0;
      LOBYTE(v145) = 0;
      LOBYTE(v144) = 0;
      v151 = 0;
      v135 = 0;
      v136 = 16;
      *v147 = 0;
      StreamingParser::numberOfPackets(&v129, 0, 0, v147, v13, v14, v15, v16);
      if ((v42 & 1) == 0)
      {
        v79 = 0;
        goto LABEL_107;
      }

      v154 = *v147;
      v155 = 0;
      v156 = *v147;
      v157 = 0;
      v158 = *v147;
      v159 = 0;
      v160 = 0;
      v152 = &unk_2876F3A30;
      v153 = 0;
      *v122 = &v145;
      *&v122[8] = &v146;
      *&v122[16] = &v144;
      *&v123 = &v151 + 1;
      *(&v123 + 1) = &v135;
      *&v124 = &v151;
      *(&v124 + 1) = &v152;
      v132 = v122;
      SABinaryParser::parseInfo(&v129 + 1, StreamingParser::parseInfo(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_0::__invoke, StreamingParser::parseInfo(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_1::__invoke, StreamingParser::parseInfo(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_2::__invoke);
      if (v43)
      {
        v44 = v146;
        v45 = *(v19 + 32);
        if (v146)
        {
          if (v146 != *(v45 + 72))
          {
            StreamingWriter::writeResetOrInfo(v19 + 40, 0, v145, v146, v144, HIBYTE(v151), &v135, v151, &v152);
            v79 = 1;
            goto LABEL_106;
          }

          v116 = bytes;
        }

        else
        {
          v116 = bytes;
          v44 = *(v45 + 72);
        }

        v115 = *(v45 + 76);
        v83 = *(v45 + 77);
        v84 = *(v45 + 104);
        *&v122[16] = *(v45 + 48);
        *&v123 = 0;
        *(&v123 + 1) = *&v122[16];
        *&v124 = 0;
        *(&v124 + 1) = *&v122[16];
        v125 = 0;
        v126 = 0;
        *v122 = &unk_2876F3A30;
        *&v122[8] = 0;
        v85 = *(v19 + 32);
        AlgsDevice::getClientExtractor();
        v79 = StreamingWriter::writeResetOrInfo(v19 + 40, 0, v83, v44, v115, v84, *(v19 + 32) + 80, *(v19 + 96), v122);
        PacketCollection::~PacketCollection(v122);
        bytes = v116;
      }

      else
      {
        v79 = 0;
      }

LABEL_106:
      PacketCollection::~PacketCollection(&v152);
LABEL_107:
      if (v135)
      {
        MEMORY[0x266758580](v135, 0x1000C8077774924);
      }

      if ((v79 & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_110;
    }

    v147[0] = 0;
    LOBYTE(v146) = 0;
    v135 = 0;
    StreamingParser::numberOfPackets(&v129, 0, 0, &v135, v13, v14, v15, v16);
    if ((v69 & 1) == 0)
    {
      goto LABEL_124;
    }

    *&v122[16] = v135;
    *&v123 = 0;
    *(&v123 + 1) = v135;
    *&v124 = 0;
    *(&v124 + 1) = v135;
    v125 = 0;
    v126 = 0;
    *v122 = &unk_2876F3A30;
    *&v122[8] = 0;
    v152 = &v146;
    v153 = v147;
    v154 = v122;
    v132 = &v152;
    SABinaryParser::parseConfigure(&v129 + 1, StreamingParser::parseConfigure(unsigned char *,BOOL *,AlgDataExtractor *)::$_0::__invoke, StreamingParser::parseConfigure(unsigned char *,BOOL *,AlgDataExtractor *)::$_1::__invoke, StreamingParser::parseConfigure(unsigned char *,BOOL *,AlgDataExtractor *)::$_2::__invoke);
    if ((v71 & 1) == 0)
    {
LABEL_122:
      v80 = v122;
      goto LABEL_123;
    }

    v72 = v146;
    if (v146 <= 2u)
    {
      AlgsDevice::StreamingClient::configure(v19, v147[0], v122);
      v72 = v146;
    }

    if (v72 == 3 && *&v122[20])
    {
      StreamingWriter::writeConfigure((v19 + 40), v147[0], v122, v70);
    }

    else
    {
      AlgsDevice::StreamingClient::configureStatus(v19);
    }

    v38 = v122;
    goto LABEL_102;
  }

  if (v23 == 7)
  {
    *v147 = 0;
    *&v122[16] = 16;
    *&v123 = 0;
    *(&v123 + 1) = 16;
    *&v124 = 0;
    *(&v124 + 1) = 16;
    v125 = 0;
    v126 = 0;
    *v122 = &unk_2876F3A30;
    *&v122[8] = 0;
    v154 = 16;
    v155 = 0;
    v156 = 16;
    v157 = 0;
    v158 = 16;
    v159 = 0;
    v160 = 0;
    v152 = &unk_2876F3A30;
    v153 = 0;
    v135 = v147;
    v136 = v122;
    v137 = &v152;
    v132 = &v135;
    if ((v12 - 7) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      v131 = 6;
      if (StreamingParser::parseConfigureTranslation(unsigned int *,AlgDataExtractor *,AlgDataExtractor *)::$_0::__invoke(&v135, *(bytes3 + 3)))
      {
        v117 = bytes;
        v64 = *(&v129 + 1);
        v65 = v131;
        v113 = v132;
        v114 = v130;
        v66 = v130 - v131;
        while (1)
        {
          v67 = v65;
          if (v114 <= v65)
          {
            break;
          }

          if (v66 < 0x12)
          {
            goto LABEL_119;
          }

          v68 = *(v64 + v65);
          bytes = v117;
          if (v68 != 3 || v66 - 18 < 0x12)
          {
            goto LABEL_120;
          }

          v65 = v67 + 36;
          if (*(v64 + v67 + 18) != 3)
          {
            v67 += 36;
            goto LABEL_119;
          }

          v66 -= 36;
          if ((StreamingParser::parseConfigureTranslation(unsigned int *,AlgDataExtractor *,AlgDataExtractor *)::$_1::__invoke(v113, v64 + v67, v64 + v67 + 18) & 1) == 0)
          {
            v67 += 36;
LABEL_119:
            bytes = v117;
LABEL_120:
            v131 = v67;
            goto LABEL_121;
          }
        }

        v131 = v65;
        v86 = *v147;
        if (*v147 == *(*(v19 + 32) + 72))
        {
          AlgsDevice::StreamingClient::configureTranslation(v19, v122, &v152);
          v86 = *v147;
        }

        if (!SABinaryWriter::writeHeader(v19 + 48, 7))
        {
          goto LABEL_167;
        }

        v87 = *(v19 + 48);
        if (v87)
        {
          v88 = *(v19 + 64);
          if ((*(v19 + 56) - v88) <= 3)
          {
            v89 = (v19 + 72);
LABEL_117:
            *v89 = 0;
LABEL_167:
            PacketCollection::~PacketCollection(&v152);
            PacketCollection::~PacketCollection(v122);
LABEL_168:
            v41 = 0;
            v40 = 0;
            v39 = 0;
            bytes = v117;
            goto LABEL_169;
          }

          *(v87 + v88) = v86;
        }

        v98 = *(v19 + 64) + 4;
        *(v19 + 64) = v98;
        v99 = *&v122[20];
        if (*&v122[20] == HIDWORD(v154))
        {
          v100 = 0;
          v101 = 0;
          v89 = (v19 + 72);
          while (v101 < v99 && *v89 == 7)
          {
            if (*(*&v122[8] + v100 + 33) == 1)
            {
              v102 = 1;
            }

            else
            {
              v102 = 2;
            }

            v103 = *(v19 + 48);
            if (v103)
            {
              if ((*(v19 + 56) - v98) < 0x12)
              {
                goto LABEL_117;
              }

              v104 = *&v153[v100];
              v105 = v153[v100 + 33];
              v106 = *(*&v122[8] + v100);
              v107 = v103 + v98;
              *v107 = 3;
              *(v107 + 1) = v106;
              *(v107 + 17) = v102;
              v108 = *(v19 + 48);
              v109 = *(v19 + 64) + 18;
              *(v19 + 64) = v109;
              if (v105)
              {
                v110 = 1;
              }

              else
              {
                v110 = 2;
              }

              if (v108)
              {
                if ((*(v19 + 56) - v109) < 0x12)
                {
                  goto LABEL_117;
                }

                v111 = v108 + v109;
                *v111 = 3;
                *(v111 + 1) = v104;
                *(v111 + 17) = v110;
                v109 = *(v19 + 64);
              }
            }

            else
            {
              v109 = v98 + 18;
              *(v19 + 64) = v109;
            }

            v98 = v109 + 18;
            *(v19 + 64) = v98;
            ++v101;
            v99 = *&v122[20];
            v100 += 80;
          }
        }

        goto LABEL_167;
      }
    }

LABEL_121:
    PacketCollection::~PacketCollection(&v152);
    goto LABEL_122;
  }

  if (v23 == 8)
  {
    v73 = (*(**(v19 + 32) + 48))(*(v19 + 32));
    TreeSize = AlgWorkNode::getTreeSize(v73);
    v75 = bytes;
    v76 = *(*(v19 + 32) + 77);
    if ((SABinaryWriter::writeHeader(v19 + 48, 8) & 1) == 0)
    {
      v78 = *(v19 + 64);
      goto LABEL_93;
    }

    v77 = *(v19 + 48);
    if (v77)
    {
      v78 = *(v19 + 64);
      if ((*(v19 + 56) - v78) <= 4)
      {
        *(v19 + 72) = 0;
LABEL_93:
        *(v19 + 64) = v78 + 4 * TreeSize;
        bytes = v75;
        goto LABEL_124;
      }

      v81 = v77 + v78;
      *v81 = v76;
      *(v81 + 1) = 0;
    }

    *(v19 + 64) += 4 * TreeSize + 5;
    v82 = (*(**(v19 + 32) + 48))(*(v19 + 32));
    bytes = v75;
    if (!AlgWorkNode::getTreeInfo(v82, v19, 1))
    {
      goto LABEL_124;
    }

    goto LABEL_110;
  }

  if (v23 != 9)
  {
    goto LABEL_124;
  }

  LOBYTE(v152) = 0;
  *v122 = &v152;
  *&v122[8] = v19 + 128;
  if ((v12 - 3) < 3)
  {
    goto LABEL_124;
  }

  if (!StreamingParser::parsePacketCache(unsigned char &,StreamingPacketCache &)::$_0::__invoke(v122, *(bytes3 + 3), *(bytes3 + 4), (bytes3 + 5)))
  {
    goto LABEL_124;
  }

  v24 = *v20;
  if (!*v20)
  {
    goto LABEL_124;
  }

  v25 = *(v19 + 136);
  v26 = 20;
  v27 = *v20;
  do
  {
    *&v25[v26] = (*&v25[v26] + 3) & 0xFFFC;
    v26 += 22;
    --v27;
  }

  while (v27);
  if (!SABinaryWriter::writeHeader(v19 + 48, 9))
  {
    goto LABEL_124;
  }

  v28 = *(v19 + 48);
  if (!v28)
  {
    v31 = *(v19 + 64) + 2;
    *(v19 + 64) = v31;
    v32 = 22 * v24;
LABEL_148:
    v41 = 0;
    v40 = 0;
    v39 = 0;
    *(v19 + 64) = v31 + v32;
    goto LABEL_169;
  }

  v29 = *(v19 + 64);
  if ((*(v19 + 56) - v29) >= 2)
  {
    *(v28 + v29) = (v24 << 8) | 1;
    v30 = *(v19 + 48);
    v31 = *(v19 + 64) + 2;
    *(v19 + 64) = v31;
    v32 = 22 * v24;
    if (v30)
    {
      if (*(v19 + 56) - v31 < v32)
      {
        goto LABEL_24;
      }

      memcpy((v30 + v31), v25, 22 * v24);
      v32 = 22 * v24;
      v31 = *(v19 + 64);
    }

    goto LABEL_148;
  }

LABEL_24:
  *(v19 + 72) = 0;
LABEL_124:
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v7 = 0;
  v90 = 0;
LABEL_125:
  v128 = v90;
  [(SASInterfacePadHost *)self callStreamCallback:?];
  [(SASInterfacePadHost *)self callPencilEventCallback];
  [(SASInterfacePadHost *)self callEventCallback];
  [(SASInterfacePadHost *)self callCoreAnalyticsCallback];
  if (v39 == 1)
  {
    if (!self->_planId)
    {
      [(SASInterfacePadHost *)self callPadTouchCoreAnalyticsCallback];
    }

    [(SASInterfacePadHost *)self callResetRequestCallback:v40 arg_ptr:v41];
  }

  else if (v39 == 2)
  {
    [(SASInterfacePadHost *)self defaultStreamingConfiguration];
  }

  v91 = *(self->_device + 77);
  if (self->_planId != v91)
  {
    self->_planId = v91;
    [(SASInterfacePadHost *)self configureCallbacks];
  }

  if (v6 >= 2 && *(bytes + 1) == 1 && *(bytes + 2) == 1 && !self->_planId)
  {
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v92 = self->_propertyDatabase;
    v93 = [(NSMutableDictionary *)v92 countByEnumeratingWithState:&v118 objects:v161 count:16];
    if (v93)
    {
      v94 = *v119;
      do
      {
        for (i = 0; i != v93; ++i)
        {
          if (*v119 != v94)
          {
            objc_enumerationMutation(v92);
          }

          [(SASInterfacePadHost *)self injectProperty:*(*(&v118 + 1) + 8 * i)];
        }

        v93 = [(NSMutableDictionary *)v92 countByEnumeratingWithState:&v118 objects:v161 count:16];
      }

      while (v93);
    }
  }

LABEL_145:

  v96 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)initContactReclassificationParams
{
  v16[4] = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  v13 = 0u;
  v12 = 0u;
  v7 = 2047803400;
  v8 = 28;
  if ([(SASInterfacePadHost *)self isContactReclassificationNeeded])
  {
    v9 = 1;
    v10 = xmmword_2655AA2B0;
    v11 = 0x11000000021FLL;
    LOWORD(v12) = 0x4000;
    BYTE2(v12) = 4;
    v16[0] = &unk_2876F5890;
    v15[0] = @"WorkNodeId";
    v15[1] = @"DataNodeId";
    v16[1] = &unk_2876F5950;
    v16[2] = &unk_2876F5968;
    v15[2] = @"Type";
    v15[3] = @"Value";
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:&v7 length:36];
    v16[3] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
    v5 = [v4 mutableCopy];
    [(NSMutableDictionary *)self->_propertyDatabase setObject:v5 forKeyedSubscript:@"ContactReclassificationParams"];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isContactReclassificationNeeded
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = MGGetBoolAnswer();
  if (qword_2800179E8 != -1)
  {
    dispatch_once(&qword_2800179E8, &__block_literal_global);
  }

  v3 = qword_2800179E0;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_debug_impl(&dword_2653C2000, v3, OS_LOG_TYPE_DEBUG, "GreyMatter eligibility: 0x%x", v6, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)initProperties
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  propertyDatabase = self->_propertyDatabase;
  self->_propertyDatabase = v3;

  v17[0] = @"WorkNodeId";
  v17[1] = @"DataNodeId";
  v18[0] = &unk_2876F5890;
  v18[1] = &unk_2876F58A8;
  v17[2] = @"Type";
  v17[3] = @"Invert";
  v5 = MEMORY[0x277CBEC28];
  v18[2] = &unk_2876F58C0;
  v18[3] = MEMORY[0x277CBEC28];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v7 = [v6 mutableCopy];
  [(NSMutableDictionary *)self->_propertyDatabase setObject:v7 forKeyedSubscript:@"QuantizationDPI"];

  v15[0] = @"WorkNodeId";
  v15[1] = @"DataNodeId";
  v16[0] = &unk_2876F58D8;
  v16[1] = &unk_2876F58F0;
  v15[2] = @"Type";
  v15[3] = @"Invert";
  v16[2] = &unk_2876F58C0;
  v16[3] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v9 = [v8 mutableCopy];
  [(NSMutableDictionary *)self->_propertyDatabase setObject:v9 forKeyedSubscript:@"HoverDisabled"];

  v13[0] = @"WorkNodeId";
  v13[1] = @"DataNodeId";
  v14[0] = &unk_2876F5908;
  v14[1] = &unk_2876F5920;
  v13[2] = @"Type";
  v13[3] = @"Invert";
  v14[2] = &unk_2876F5938;
  v14[3] = v5;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  v11 = [v10 mutableCopy];
  [(NSMutableDictionary *)self->_propertyDatabase setObject:v11 forKeyedSubscript:@"TimestampSync"];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)createPadHostAlgsDevice:(unsigned int)device
{
  if (device == 56)
  {
    operator new();
  }

  if (device == 57)
  {
    operator new();
  }

  if (qword_2800179E8 != -1)
  {
    dispatch_once(&qword_2800179E8, &__block_literal_global);
  }

  v3 = qword_2800179E0;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_2653C2000, v3, OS_LOG_TYPE_ERROR, "Could not create algs device", v5, 2u);
  }

  return 0;
}

- (SASInterfacePadHost)initWithStreamSize:(unint64_t)size platformId:(unint64_t)id streamCallback:(id)callback
{
  callbackCopy = callback;
  v22.receiver = self;
  v22.super_class = SASInterfacePadHost;
  v9 = [(SASInterfacePadHost *)&v22 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEB28] dataWithLength:size];
    v11 = *(v9 + 7);
    *(v9 + 7) = v10;

    v12 = [MEMORY[0x277CBEB28] dataWithLength:size];
    v13 = *(v9 + 8);
    *(v9 + 8) = v12;

    *[*(v9 + 7) mutableBytes] = 90;
    v14 = MEMORY[0x2667588B0](callbackCopy);
    v15 = *(v9 + 2);
    *(v9 + 2) = v14;

    *(v9 + 10) = [v9 createPadHostAlgsDevice:id];
    v16 = [MEMORY[0x277CBEB28] dataWithLength:868];
    v17 = *(v9 + 9);
    *(v9 + 9) = v16;

    mach_timebase_info(&_timebase);
    v9[12] = 0;
    v9[358] = 0;
    *(*(v9 + 10) + 96) = SASGetTimestampCallback;
    v9[368] = 0;
    *(v9 + 9) = 0;
    v18 = objc_opt_new();
    v19 = *(v9 + 41);
    *(v9 + 41) = v18;

    *(v9 + 30) = 0;
    *(v9 + 26) = 0;
    [v9 initProperties];
    [v9 initContactReclassificationParams];
    [v9 configureCallbacks];
    [v9 configureTranslation];
    [v9 defaultStreamingConfiguration];
    v20 = v9;
  }

  return v9;
}

@end