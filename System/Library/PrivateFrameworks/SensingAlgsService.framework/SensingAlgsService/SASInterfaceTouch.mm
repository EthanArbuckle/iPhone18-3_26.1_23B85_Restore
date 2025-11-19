@interface SASInterfaceTouch
- ($3FFB85F807698FB051441EDCD924163A)phone_telemetry;
- ($F2544535907296EB357DA0304DEA202B)cover_gesture;
- (BOOL)handleInputStream:(id)a3;
- (BOOL)injectProperty:(id)a3;
- (BOOL)injectProperty:(id)a3 value:(id)a4;
- (BOOL)isContactReclassificationNeeded;
- (SASInterfaceTouch)initWithStreamSize:(unint64_t)a3 platformId:(unint64_t)a4 streamCallback:(id)a5;
- (id)generateCoverGesture:(unint64_t)a3 state:(unsigned __int8)a4 surfaceCovered:(float)a5;
- (id)generateEventInfo:(id *)a3 interpolated:(BOOL)a4 timestamp:(unint64_t)a5;
- (id)generateFingerEvent:(id *)a3 interpolated:(BOOL)a4 now:(unint64_t)a5;
- (id)generateHandEvent:(id *)a3 interpolated:(BOOL)a4 now:(unint64_t)a5;
- (id)generateSwipeUp:(unint64_t)a3;
- (id)generateTouchSystemReady:(unint64_t)a3;
- (id)generateWakeEvent:(int)a3 timestamp:(unint64_t)a4;
- (int64_t)getValidTimestamp:(unint64_t)a3 now:(unint64_t)a4;
- (void)addVersion:(id)a3;
- (void)callCoreAnalyticsCallback;
- (void)callEventCallback;
- (void)callResetRequestCallback:(unsigned __int16)a3 arg_ptr:(const void *)a4;
- (void)callStreamCallback:(unint64_t)a3;
- (void)cleanNodes;
- (void)configureCallbacks;
- (void)configureTranslation;
- (void)defaultStreamingConfiguration;
- (void)initContactReclassificationParams;
- (void)initProperties;
- (void)isContactReclassificationNeeded;
@end

@implementation SASInterfaceTouch

- (void)configureCallbacks
{
  if (self->_planId == 1)
  {
    PacketCollection::PacketCollection(v3, 1, 1);
    v4 = 0;
    v5 = 0;
    v3[0] = &unk_2876F6BD0;
    AlgDataExtractor::callbackFor(v3, 0x42BD12136436D303, 0x1AE6533682FB2CLL, 2);
    AlgsDevice::configureInternalClient(self->_device, v3, 0);
  }

  else
  {
    if (self->_planId)
    {
      return;
    }

    PacketCollection::PacketCollection(v3, 13, 1);
    v4 = 0;
    v5 = 0;
    v3[0] = &unk_2876F6BD0;
    AlgDataExtractor::callbackFor(v3, 0xAF83667BDA1FDB60, 0xBB59337C2FBD0775, 2);
    AlgDataExtractor::callbackFor(v3, 0xAF83667BDA1FDB60, 0xA6CEC30BA0ABCAE0, 2);
    AlgDataExtractor::callbackFor(v3, 0xAF83667BDA1FDB60, 0x377A1603BFB01C2, 2);
    AlgDataExtractor::callbackFor(v3, 0xAF83667BDA1FDB60, 0x348FFB668AEB850DLL, 2);
    AlgDataExtractor::callbackFor(v3, 0xAF83667BDA1FDB60, 0x377AB9DB80CC6E1, 2);
    AlgDataExtractor::callbackFor(v3, 0xAF83667BDA1FDB60, 0xE6B312786F98B150, 2);
    AlgDataExtractor::callbackFor(v3, 0xAF83667BDA1FDB60, 0xFC9144553B9D1414, 1);
    AlgDataExtractor::callbackFor(v3, 0xAF83667BDA1FDB60, 0xB0A60E3AEC10AE51, 1);
    AlgDataExtractor::callbackFor(v3, 0xAF83667BDA1FDB60, 0x614773EFA4E20E8CLL, 1);
    AlgDataExtractor::callbackFor(v3, 0xAF83667BDA1FDB60, 0x7E2F3B82958BC45, 1);
    AlgDataExtractor::callbackFor(v3, 0xAF83667BDA1FDB60, 0xDACD1AB81EF736C2, 2);
    AlgDataExtractor::callbackFor(v3, 0xAF83667BDA1FDB60, 0x3779E57A5AD9093, 2);
    AlgDataExtractor::callbackFor(v3, 0xAF83667BDA1FDB60, 0x348FF85DF49E13DELL, 2);
    AlgsDevice::configureInternalClient(self->_device, v3, 0);
  }

  PacketCollection::~PacketCollection(v3);
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
  v6 = [(SASInterfaceTouch *)self timestampMachToUs:0];
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
        v12 = [(SASInterfaceTouch *)self generateTapEvent:self->_tap transducerType:3 now:v6, v75];
        v13 = [(SASInterfaceTouch *)self generateTapEvent:self->_tap transducerType:2 now:v6];
        v14 = [(SASInterfaceTouch *)self generateWakeEvent:0 timestamp:[(SASInterfaceTouch *)self getValidTimestamp:self->_tap->var0 now:v6]];
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
      v15 = SALoggingGeneral();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2655B3000, v15, OS_LOG_TYPE_DEFAULT, "Wake Event TTW", buf, 2u);
      }

      v16 = SALoggingHIDEventSignpost();
      v17 = v16;
      var1 = self->_tap->var1;
      if (var1 && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2655B3000, v17, OS_SIGNPOST_EVENT, var1, "GenerateWakeEvent", "Wake Event TTW", buf, 2u);
      }

      goto LABEL_77;
    }

    if (v4)
    {
      v23 = [(SASInterfaceTouch *)self generateHandEvent:self->_interpolated_hand interpolated:1 now:v6];
      [v8 addObject:v23];
      interpolated_fingers = self->_interpolated_fingers;
      if (interpolated_fingers->var0)
      {
        v25 = 0;
        v26 = 8;
        do
        {
          v27 = [(SASInterfaceTouch *)self generateFingerEvent:interpolated_fingers + v26 interpolated:1 now:v6, v75];
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
        v29 = -[SASInterfaceTouch generateEventInfo:interpolated:timestamp:](self, "generateEventInfo:interpolated:timestamp:", interpolated_event_info, 1, [v23 timestamp]);
        [v23 appendEvent:v29];
      }

      v30 = SALoggingHIDEventSignpost();
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
        _os_signpost_emit_with_name_impl(&dword_2655B3000, v31, OS_SIGNPOST_EVENT, v32, "GenerateDigitizer", "%{public, signpost.description:begin_time}llu fingers=%u mask=0x%x touch/range=%u/%u pos=(%{sensitive}.5f,%{sensitive}.5f) interp=1 next=%u info=%u", buf, 0x44u);
      }
    }

    if (v3)
    {
      v43 = [(SASInterfaceTouch *)self generateHandEvent:self->_hand interpolated:0 now:v6];
      [v8 addObject:v43];
      fingers = self->_fingers;
      if (fingers->var0)
      {
        v45 = 0;
        v46 = 8;
        do
        {
          v47 = [(SASInterfaceTouch *)self generateFingerEvent:fingers + v46 interpolated:0 now:v6, v75];
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
        v49 = [(SASInterfaceTouch *)self generateEventInfo:event_info interpolated:0 timestamp:[v43 timestamp]];
        [v43 appendEvent:v49];
      }

      if (self->_wake_event_detected)
      {
        v50 = [(SASInterfaceTouch *)self generateWakeEvent:self->_wake_event_detected timestamp:[v43 timestamp]];
        [v43 appendEvent:v50];
        v51 = SALoggingGeneral();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          wake_event_detected = self->_wake_event_detected;
          *buf = 67109120;
          LODWORD(v77) = wake_event_detected;
          _os_log_impl(&dword_2655B3000, v51, OS_LOG_TYPE_DEFAULT, "Wake Event %d", buf, 8u);
        }

        v53 = SALoggingHIDEventSignpost();
        v54 = v53;
        v55 = self->_hand->var1;
        if (v55 && os_signpost_enabled(v53))
        {
          v56 = self->_wake_event_detected;
          *buf = 67109120;
          LODWORD(v77) = v56;
          _os_signpost_emit_with_name_impl(&dword_2655B3000, v54, OS_SIGNPOST_EVENT, v55, "GenerateWakeEvent", "Wake Event %d", buf, 8u);
        }
      }

      v57 = SALoggingHIDEventSignpost();
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
        _os_signpost_emit_with_name_impl(&dword_2655B3000, v58, OS_SIGNPOST_EVENT, v59, "GenerateDigitizer", "%{public, signpost.description:begin_time}llu fingers=%u mask=0x%x touch/range=%u/%u pos=(%{sensitive}.5f,%{sensitive}.5f) interp=0 next=%u info=%u", buf, 0x44u);
      }
    }

    else
    {
      if (!self->_wake_event_detected)
      {
LABEL_71:
        if (self->_touch_system_ready)
        {
          v70 = [(SASInterfaceTouch *)self generateTouchSystemReady:v75];
          [v8 addObject:v70];
        }

        if (self->_atomic_wake_event == 1)
        {
          v71 = [(SASInterfaceTouch *)self generateSwipeUp:v75];
          [v8 addObject:v71];
        }

        if (!self->_cover_gesture.state)
        {
          goto LABEL_78;
        }

        v72 = [(SASInterfaceTouch *)self getValidTimestamp:self->_cover_gesture.timestamp_us now:v6];
        *&v73 = self->_cover_gesture.surface_covered;
        v17 = [(SASInterfaceTouch *)self generateCoverGesture:v72 state:self->_cover_gesture.state surfaceCovered:v73];
        [v8 addObject:v17];
LABEL_77:

LABEL_78:
        (*(self->_eventCallback + 2))();
        [(SASInterfaceTouch *)self cleanNodes];

        goto LABEL_79;
      }

      v43 = SALoggingGeneral();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [(SASInterfaceTouch *)v43 callEventCallback];
      }
    }

    goto LABEL_71;
  }

  if (self->_fingers || self->_interpolated_fingers)
  {
    v19 = SALoggingHIDEventSignpost();
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
      _os_signpost_emit_with_name_impl(&dword_2655B3000, v20, OS_SIGNPOST_EVENT, v22, "DropDigitizer", "No change", buf, 2u);
    }
  }

  [(SASInterfaceTouch *)self cleanNodes];
LABEL_79:
  v74 = *MEMORY[0x277D85DE8];
}

- (void)cleanNodes
{
  self->_touch_system_ready = 0;
  self->_cover_gesture.state = 0;
  self->_atomic_wake_event = 0;
  *&self->_fingers = 0u;
  *&self->_hand = 0u;
  self->_event_info = 0;
  self->_interpolated_event_info = 0;
  self->_tap = 0;
}

- (void)callCoreAnalyticsCallback
{
  v2 = self;
  v76[1] = *MEMORY[0x277D85DE8];
  if (self->_coreAnalyticsCallback)
  {
    if (self->_duration_between_touches)
    {
      HIDWORD(v3) = -1030792151 * rand();
      LODWORD(v3) = HIDWORD(v3);
      if ((v3 >> 2) <= 0x28F5C28)
      {
        coreAnalyticsCallback = v2->_coreAnalyticsCallback;
        v75 = @"Duration";
        *&v4 = *v2->_duration_between_touches;
        v51 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
        v76[0] = v51;
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:&v75 count:1];
        coreAnalyticsCallback[2](coreAnalyticsCallback, @"com.apple.Multitouch.EmbeddedStatistics.DurationBetweenTouches", v6);

        v2 = self;
      }
    }

    path_stats = v2->_path_stats;
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
        v2 = self;
        path_stats = self->_path_stats;
        ++v8;
      }

      while (v9 < path_stats->var0);
    }

    if (v2->_phone_telemetry.event_occurred)
    {
      if (v2->_phone_telemetry.baseline_inversion_occurred)
      {
        v22 = v2->_coreAnalyticsCallback;
        v71[0] = @"Lockscreen_Status";
        v53 = [MEMORY[0x277CCABB0] numberWithBool:v2->_phone_telemetry.is_on_coversheet];
        v71[1] = @"Touch_Frequency";
        v72[0] = v53;
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_phone_telemetry.scan_frequency_index];
        v72[1] = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
        v22[2](v22, @"com.apple.multitouch.baseline.inversion", v24);

        v25 = SALoggingGeneral();
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
            v29 = &unk_2655C62F3;
          }

          *buf = 67109890;
          v62 = baseline_adaption_interval_ms;
          v63 = 1024;
          v64 = time_since_last_baseline_change_ms;
          v65 = 1024;
          v66 = scan_frequency_index;
          v67 = 2080;
          v68 = v29;
          _os_log_impl(&dword_2655B3000, v25, OS_LOG_TYPE_INFO, "Baseline Inversion: Interval=%dms SinceLast=%dms FreqIdx=%d %s", buf, 0x1Eu);
        }

        v2 = self;
      }

      if (v2->_phone_telemetry.nondefault_baseline_adapt_occurred)
      {
        v30 = SALoggingGeneral();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = self->_phone_telemetry.baseline_adaption_interval_ms;
          v32 = self->_phone_telemetry.time_since_last_baseline_change_ms;
          v33 = self->_phone_telemetry.scan_frequency_index;
          v34 = &unk_2655C62F3;
          if (self->_phone_telemetry.is_on_coversheet)
          {
            v35 = "onCoversheet";
          }

          else
          {
            v35 = &unk_2655C62F3;
          }

          if (self->_phone_telemetry.has_touch_above_threshold)
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
          _os_log_impl(&dword_2655B3000, v30, OS_LOG_TYPE_INFO, "Non Default Baseline: Interval=%dms SinceLast=%dms FreqIdx=%d %s %s", buf, 0x28u);
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

        v2 = self;
      }

      if (v2->_phone_telemetry.all_columns_covered_occurred)
      {
        v42 = SALoggingGeneral();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = self->_phone_telemetry.baseline_adaption_interval_ms;
          v44 = self->_phone_telemetry.time_since_last_baseline_change_ms;
          v45 = self->_phone_telemetry.scan_frequency_index;
          if (self->_phone_telemetry.is_on_coversheet)
          {
            v46 = "onCoversheet";
          }

          else
          {
            v46 = &unk_2655C62F3;
          }

          *buf = 67109890;
          v62 = v43;
          v63 = 1024;
          v64 = v44;
          v65 = 1024;
          v66 = v45;
          v67 = 2080;
          v68 = v46;
          _os_log_impl(&dword_2655B3000, v42, OS_LOG_TYPE_INFO, "All Columns Covered: Interval=%dms SinceLast=%dms FreqIdx=%d %s", buf, 0x1Eu);
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

        v2 = self;
      }
    }
  }

  v2->_phone_telemetry.event_occurred = 0;
  v2->_path_stats = 0;
  v2->_duration_between_touches = 0;
  v50 = *MEMORY[0x277D85DE8];
}

- (SASInterfaceTouch)initWithStreamSize:(unint64_t)a3 platformId:(unint64_t)a4 streamCallback:(id)a5
{
  v7 = a5;
  v22.receiver = self;
  v22.super_class = SASInterfaceTouch;
  v8 = [(SASInterfaceTouch *)&v22 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB28] dataWithLength:a3];
    v10 = *(v8 + 6);
    *(v8 + 6) = v9;

    v11 = [MEMORY[0x277CBEB28] dataWithLength:a3];
    v12 = *(v8 + 7);
    *(v8 + 7) = v11;

    *[*(v8 + 6) mutableBytes] = 90;
    v13 = MEMORY[0x266758C90](v7);
    v14 = *(v8 + 2);
    *(v8 + 2) = v13;

    v15 = operator new(0x88uLL);
    TouchService::TouchServiceAlgsDevice::TouchServiceAlgsDevice(v15, 0, 224, 0);
    *(v8 + 9) = v15;
    v16 = [MEMORY[0x277CBEB28] dataWithLength:868];
    v17 = *(v8 + 8);
    *(v8 + 8) = v16;

    mach_timebase_info(&_timebase);
    v8[12] = 0;
    v8[214] = 0;
    *(*(v8 + 9) + 104) = SASGetTimestampCallback;
    v8[224] = 0;
    *(v8 + 9) = 0;
    v18 = objc_opt_new();
    v19 = *(v8 + 23);
    *(v8 + 23) = v18;

    [v8 initProperties];
    [v8 initContactReclassificationParams];
    [v8 configureCallbacks];
    [v8 configureTranslation];
    [v8 defaultStreamingConfiguration];
    v20 = v8;
  }

  return v8;
}

- (void)initProperties
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  propertyDatabase = self->_propertyDatabase;
  self->_propertyDatabase = v3;

  v8[0] = @"WorkNodeId";
  v8[1] = @"DataNodeId";
  v9[0] = &unk_2876F7840;
  v9[1] = &unk_2876F7858;
  v8[2] = @"Type";
  v9[2] = &unk_2876F7870;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v6 = [v5 mutableCopy];
  [(NSMutableDictionary *)self->_propertyDatabase setObject:v6 forKeyedSubscript:@"QuantizationDPI"];

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isContactReclassificationNeeded
{
  v2 = MGGetBoolAnswer();
  v3 = SALoggingGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SASInterfaceTouch *)v2 isContactReclassificationNeeded];
  }

  return v2;
}

- (void)initContactReclassificationParams
{
  v23[4] = *MEMORY[0x277D85DE8];
  memset(&v17[1], 0, 32);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v17[0] = 2047803400;
  LOWORD(v17[1]) = 28;
  v3 = [(SASInterfaceTouch *)self isContactReclassificationNeeded];
  if (v3)
  {
    v4 = 1;
    HIWORD(v17[1]) = 1;
    *&v17[2] = xmmword_2655C5680;
    *&v17[6] = 0x10000000001FLL;
    LOWORD(v17[8]) = 0x4000;
    BYTE2(v17[8]) = 4;
  }

  else
  {
    v4 = 0;
  }

  v5 = MGCopyAnswer();
  v6 = v5;
  if (v5)
  {
    v7 = [v5 bytes];
    HIWORD(v17[1]) = v4 + 1;
    v8 = &v17[7 * v4 + 2];
    v9 = *(v7 + 8);
    v10 = *(v7 + 24);
    v11 = 1.0 - (v9 + v10 * -0.5);
    v8[3] = v11;
    *v8 = -5.0;
    *&v9 = 1.0 - (v9 + v10 * 1.5);
    v8[1] = *&v9;
    v8[2] = 1.0;
    *(v8 + 2) = 0x1000000001DELL;
    *(v8 + 12) = 0x4000;
    *(v8 + 26) = 4;
    v12 = (28 * v4 + 36);
LABEL_8:
    v23[0] = &unk_2876F7840;
    v22[0] = @"WorkNodeId";
    v22[1] = @"DataNodeId";
    v23[1] = &unk_2876F7888;
    v23[2] = &unk_2876F78A0;
    v22[2] = @"Type";
    v22[3] = @"Value";
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v17 length:v12];
    v23[3] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
    v15 = [v14 mutableCopy];
    [(NSMutableDictionary *)self->_propertyDatabase setObject:v15 forKeyedSubscript:@"ContactReclassificationParams"];

    goto LABEL_9;
  }

  if (v3)
  {
    v12 = 36;
    goto LABEL_8;
  }

LABEL_9:

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleInputStream:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  if ([v4 length])
  {
    v5 = [v4 bytes];
    v6 = [v4 length] - 1;
    if (v6 >= 2 && *(v5 + 1) == 1 && *(v5 + 2) == 1 && !self->_planId)
    {
      if (self->_cover_gesture_state == 1)
      {
        v21 = objc_opt_new();
        v22 = [(SASInterfaceTouch *)self generateCoverGesture:mach_absolute_time() state:3 surfaceCovered:0.0];
        [v21 addObject:v22];
        (*(self->_eventCallback + 2))();
      }

      memset(v30, 0, sizeof(v30));
      v29[1] = 24;
      v29[0] = 0x2000;
      v29[2] = v30;
      AlgDataPacket::AlgDataPacket(v28, 0xAF83667BDA1FDB60, 0x310DDDD485, 12288, 1, 1, [(NSData *)self->_emptyPaths bytes], [(NSData *)self->_emptyPaths length], 0, 0);
      PacketCollection::PacketCollection(v27, 1, 1);
      v27[0] = &unk_2876F6C30;
      AlgDataInjector::add(v27, v28);
      v33 = [(NSMutableData *)self->_outputBuffer length]- 1;
      v7 = (*(*self->_device + 24))(self->_device, v29, v27, [(NSMutableData *)self->_outputBuffer mutableBytes]+ 1, &v33);
      [(SASInterfaceTouch *)self callStreamCallback:v33];
      [(SASInterfaceTouch *)self callEventCallback];
      [(SASInterfaceTouch *)self callCoreAnalyticsCallback];
      PacketCollection::~PacketCollection(v27);
      AlgDataPacket::~AlgDataPacket(v28);
    }

    else
    {
      v7 = 1;
    }

    v28[0] = 0;
    v33 = [(NSMutableData *)self->_outputBuffer length]- 1;
    v8 = [(NSMutableData *)self->_outputBuffer mutableBytes];
    device = self->_device;
    v10 = v4;
    AlgsDevice::handleInputStream(device, ([v4 bytes] + 1), objc_msgSend(v4, "length") - 1, v8 + 1, &v33, v28, &v31, &v32);
    v12 = v11;
    [(SASInterfaceTouch *)self callStreamCallback:v33];
    [(SASInterfaceTouch *)self callEventCallback];
    [(SASInterfaceTouch *)self callCoreAnalyticsCallback];
    v13 = v28[0];
    if (v28[0] == 1)
    {
      [(SASInterfaceTouch *)self callResetRequestCallback:v31 arg_ptr:v32];
      v13 = v28[0];
    }

    if (v13 == 2)
    {
      [(SASInterfaceTouch *)self defaultStreamingConfiguration];
    }

    if (self->_planId != ((AlgsDevice::getInfo(self->_device) >> 32) >> 8))
    {
      self->_planId = (AlgsDevice::getInfo(self->_device) >> 32) >> 8;
      [(SASInterfaceTouch *)self configureCallbacks];
    }

    if (v6 >= 2 && *(v5 + 1) == 1 && *(v5 + 2) == 1 && !self->_planId)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = self->_propertyDatabase;
      v15 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v23 objects:v34 count:16];
      if (v15)
      {
        v16 = *v24;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v14);
            }

            [(SASInterfaceTouch *)self injectProperty:*(*(&v23 + 1) + 8 * i)];
          }

          v15 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v23 objects:v34 count:16];
        }

        while (v15);
      }
    }

    v18 = v12 & v7;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)injectProperty:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_propertyDatabase objectForKeyedSubscript:v4];
  v6 = v5;
  if (!v5 || ([v5 objectForKeyedSubscript:@"Value"], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v18 = SALoggingGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(SASInterfaceTouch *)v4 injectProperty:v18];
    }

    goto LABEL_8;
  }

  v8 = [v6 objectForKeyedSubscript:@"WorkNodeId"];
  v9 = [v8 unsignedLongLongValue];

  v10 = [v6 objectForKeyedSubscript:@"DataNodeId"];
  v11 = [v10 unsignedLongLongValue];

  v12 = [v6 objectForKeyedSubscript:@"Type"];
  v13 = [v12 unsignedShortValue];

  if (v13 == 39426)
  {
    v20 = [v6 objectForKeyedSubscript:@"Value"];
    v21 = [v20 bytes];

    v22 = [v6 objectForKeyedSubscript:@"Value"];
    v17 = [v22 length];

    v16 = operator new[](v17);
    memcpy(v16, v21, v17);
    goto LABEL_10;
  }

  if (v13 != 20486)
  {
    v18 = SALoggingGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(SASInterfaceTouch *)v13 injectProperty:v18];
    }

LABEL_8:

    LOBYTE(v19) = 0;
    goto LABEL_15;
  }

  v14 = [v6 objectForKeyedSubscript:@"Value"];
  v15 = [v14 unsignedIntValue];

  v16 = operator new[](4uLL);
  *v16 = v15;
  v17 = 4;
LABEL_10:
  AlgDataPacket::AlgDataPacket(v32, v9, v11, v13, 1, 1, v16, v17, 0, 0);
  PacketCollection::PacketCollection(v31, 1, 1);
  v31[0] = &unk_2876F6C30;
  PacketCollection::PacketCollection(v30, 0, 1);
  v30[10] = 0;
  v30[11] = 0;
  v30[0] = &unk_2876F6BD0;
  AlgDataInjector::add(v31, v32);
  v29 = [(NSMutableData *)self->_outputBuffer length]- 1;
  v19 = (*(*self->_device + 32))(self->_device, v31, v30, [(NSMutableData *)self->_outputBuffer mutableBytes]+ 1, &v29);
  [(SASInterfaceTouch *)self callStreamCallback:v29];
  v23 = SALoggingGeneral();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [v6 objectForKeyedSubscript:@"Value"];
    v25 = v24;
    v26 = "Error";
    *buf = 138412802;
    v34 = v4;
    if (v19)
    {
      v26 = "OK";
    }

    v35 = 2112;
    v36 = v24;
    v37 = 2080;
    v38 = v26;
    _os_log_impl(&dword_2655B3000, v23, OS_LOG_TYPE_INFO, "InjectProperty: %@=%@ result %s", buf, 0x20u);
  }

  operator delete[](v16);
  PacketCollection::~PacketCollection(v30);
  PacketCollection::~PacketCollection(v31);
  AlgDataPacket::~AlgDataPacket(v32);
LABEL_15:

  v27 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)injectProperty:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_propertyDatabase objectForKeyedSubscript:v6];
  v9 = v8;
  if (v8)
  {
    [v8 setObject:v7 forKeyedSubscript:@"Value"];
    v10 = [(SASInterfaceTouch *)self injectProperty:v6];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)configureTranslation
{
  PacketCollection::PacketCollection(v5, 5, 1);
  PacketCollection::PacketCollection(v4, 5, 1);
  AlgDataPacket::AlgDataPacket(v3, 0x193B6A12DA1B4A4FLL, 0x17DF1F63A854DE7ELL, 0, 0, 2, 0, 0, 0, 0);
  PacketCollection::add(v5, v3);
  AlgDataPacket::~AlgDataPacket(v3);
  AlgDataPacket::AlgDataPacket(v3, 0xAF83667BDA1FDB60, 0x310DDDD485, 0, 0, 1, 0, 0, 0, 0);
  PacketCollection::add(v4, v3);
  AlgDataPacket::~AlgDataPacket(v3);
  AlgDataPacket::AlgDataPacket(v3, 0x193B6A12DA1B4A4FLL, 0x29965DE49819D20DLL, 0, 0, 2, 0, 0, 0, 0);
  PacketCollection::add(v5, v3);
  AlgDataPacket::~AlgDataPacket(v3);
  AlgDataPacket::AlgDataPacket(v3, 0xAF83667BDA1FDB60, 0x29965DE49819D20DLL, 0, 0, 1, 0, 0, 0, 0);
  PacketCollection::add(v4, v3);
  AlgDataPacket::~AlgDataPacket(v3);
  AlgDataPacket::AlgDataPacket(v3, 0x193B6A12DA1B4A4FLL, 0xEDBB78967950011, 0, 0, 2, 0, 0, 0, 0);
  PacketCollection::add(v5, v3);
  AlgDataPacket::~AlgDataPacket(v3);
  AlgDataPacket::AlgDataPacket(v3, 0xAF83667BDA1FDB60, 0xEDBB78967950011, 0, 0, 1, 0, 0, 0, 0);
  PacketCollection::add(v4, v3);
  AlgDataPacket::~AlgDataPacket(v3);
  AlgDataPacket::AlgDataPacket(v3, 0x193B6A12DA1B4A4FLL, 0x4D123D542B029C57, 0, 0, 2, 0, 0, 0, 0);
  PacketCollection::add(v5, v3);
  AlgDataPacket::~AlgDataPacket(v3);
  AlgDataPacket::AlgDataPacket(v3, 0xAF83667BDA1FDB60, 0x4D123D542B029C57, 0, 0, 1, 0, 0, 0, 0);
  PacketCollection::add(v4, v3);
  AlgDataPacket::~AlgDataPacket(v3);
  AlgDataPacket::AlgDataPacket(v3, 0xC4B4E96450B4BB52, 0x67E8309EEB362582, 0, 0, 2, 0, 0, 0, 0);
  PacketCollection::add(v5, v3);
  AlgDataPacket::~AlgDataPacket(v3);
  AlgDataPacket::AlgDataPacket(v3, 0x42BD12136436D303, 0x726DB665A87D6D56, 0, 0, 1, 0, 0, 0, 0);
  PacketCollection::add(v4, v3);
  AlgDataPacket::~AlgDataPacket(v3);
  AlgsDevice::configureTranslation(self->_device, v5, v4);
  PacketCollection::~PacketCollection(v4);
  PacketCollection::~PacketCollection(v5);
}

- (void)defaultStreamingConfiguration
{
  PacketCollection::PacketCollection(v4, 8, 1);
  v4[10] = 0;
  v4[11] = 0;
  v4[0] = &unk_2876F6BD0;
  AlgDataExtractor::requestFor(v4, 0xAF83667BDA1FDB60, 0x377A1603BFB01C2, 2);
  AlgDataExtractor::requestFor(v4, 0xAF83667BDA1FDB60, 0xBB59337C2FBD0775, 2);
  AlgDataExtractor::requestFor(v4, 0xAF83667BDA1FDB60, 0x348FFB668AEB850DLL, 2);
  AlgDataExtractor::requestFor(v4, 0xAF83667BDA1FDB60, 0xA6CEC30BA0ABCAE0, 2);
  AlgDataExtractor::requestFor(v4, 0xAF83667BDA1FDB60, 0x3779E57A5AD9093, 2);
  AlgDataExtractor::requestFor(v4, 0xAF83667BDA1FDB60, 0x348FF85DF49E13DELL, 2);
  AlgDataExtractor::requestFor(v4, 0xAF83667BDA1FDB60, 0xDACD1AB81EF736C2, 2);
  AlgDataExtractor::requestFor(v4, 0x42BD12136436D303, 0x1AE6533682FB2CLL, 2);
  v3 = [(NSMutableData *)self->_outputBuffer length]- 1;
  AlgsDevice::configureStreaming(self->_device, 1, v4, [(NSMutableData *)self->_outputBuffer mutableBytes]+ 1, &v3);
  [(SASInterfaceTouch *)self callStreamCallback:v3];
  PacketCollection::~PacketCollection(v4);
}

- (void)callStreamCallback:(unint64_t)a3
{
  if (a3 && self->_streamCallback)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:-[NSMutableData mutableBytes](self->_outputBuffer length:"mutableBytes") freeWhenDone:{a3 + 1, 0}];
    (*(self->_streamCallback + 2))();
  }
}

- (void)callResetRequestCallback:(unsigned __int16)a3 arg_ptr:(const void *)a4
{
  resetRequestCallback = self->_resetRequestCallback;
  if (resetRequestCallback)
  {
    if (a3 == 1)
    {
      v5 = *a4;
    }

    else
    {
      v5 = 0;
    }

    resetRequestCallback[2](resetRequestCallback, v5);
  }
}

- (id)generateHandEvent:(id *)a3 interpolated:(BOOL)a4 now:(unint64_t)a5
{
  if (a4)
  {
    v6 = 35;
  }

  else
  {
    v6 = 3;
  }

  v7 = [MEMORY[0x277CD2858] digitizerEvent:-[SASInterfaceTouch getValidTimestamp:now:](self transducerType:"getValidTimestamp:now:" x:a3->var0 y:a5) z:3 options:{a3->var15 | v6, a3->var5, a3->var6, 0.0}];
  [v7 setIntegerValue:a3->var3 forField:720902];
  [v7 setIntegerValue:a3->var4 forField:720903];
  [v7 setIntegerValue:a3->var1 forField:720923];
  [v7 setIntegerValue:a3->var13 forField:720904];
  [v7 setIntegerValue:a3->var14 forField:720905];

  return v7;
}

- (id)generateFingerEvent:(id *)a3 interpolated:(BOOL)a4 now:(unint64_t)a5
{
  if (a4)
  {
    v6 = 33;
  }

  else
  {
    v6 = 1;
  }

  v7 = [MEMORY[0x277CD2858] qualityDigitizerEvent:-[SASInterfaceTouch getValidTimestamp:now:](self quality:"getValidTimestamp:now:" density:a3->var0 irregularity:a5) majorRadius:a3->var15 | v6 minorRadius:a3->var10 accuracy:a3->var11 options:{0.0, a3->var8, a3->var7, 0.0}];
  [v7 setIntegerValue:2 forField:720900];
  [v7 setIntegerValue:a3->var2 forField:720901];
  [v7 setIntegerValue:a3->var3 forField:720902];
  [v7 setIntegerValue:a3->var4 forField:720903];
  [v7 setIntegerValue:a3->var1 forField:720923];
  [v7 setDoubleValue:720896 forField:a3->var5];
  [v7 setDoubleValue:720897 forField:a3->var6];
  [v7 setDoubleValue:720908 forField:a3->var12];
  [v7 setDoubleValue:720922 forField:a3->var9];
  [v7 setIntegerValue:a3->var13 forField:720904];
  [v7 setIntegerValue:a3->var14 forField:720905];
  var16 = a3->var16;
  IOHIDEventSetPhase();

  return v7;
}

- (id)generateEventInfo:(id *)a3 interpolated:(BOOL)a4 timestamp:(unint64_t)a5
{
  v6 = a4;
  v34 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v9 = 33;
  }

  else
  {
    v9 = 1;
  }

  v18 = 0u;
  v19 = 0u;
  LOWORD(v18) = *&a3->var0;
  *(&v18 + 1) = [(SASInterfaceTouch *)self timestampUsToAbsoluteMach:self->_timestamp_offset + a3->var2];
  *&v19 = [(SASInterfaceTouch *)self timestampUsToAbsoluteMach:self->_timestamp_offset + a3->var3];
  BYTE8(v19) = a3->var4;
  LODWORD(v17) = v9;
  v10 = [MEMORY[0x277CD2858] vendorDefinedEvent:a5 usagePage:65308 usage:32 version:1 data:&v18 length:32 options:v17];
  v11 = SALoggingGeneral();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = &unk_2655C62F3;
    v15 = "NO";
    if (v6)
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
    v33 = a5;
    _os_log_debug_impl(&dword_2655B3000, v11, OS_LOG_TYPE_DEBUG, "Generating %sEvent Info: expectNext=%s information=%s reason=%u deadline=%llu nextTimestamp=%llu now=%llu", buf, 0x44u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)generateTouchSystemReady:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 1;
  LODWORD(v10) = 1;
  v4 = [MEMORY[0x277CD2858] vendorDefinedEvent:a3 usagePage:65376 usage:9 version:1 data:&v11 length:1 options:v10];
  v5 = SALoggingGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    prev_frame_diff_us = self->_prev_frame_diff_us;
    *buf = 134217984;
    v13 = prev_frame_diff_us;
    _os_log_impl(&dword_2655B3000, v5, OS_LOG_TYPE_DEFAULT, "Generating Touch System Ready (%lluus since last frame)\n", buf, 0xCu);
  }

  v7 = SALoggingHIDEventSignpost();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2655B3000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TouchSystemReady", "Touch System Ready", buf, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)generateCoverGesture:(unint64_t)a3 state:(unsigned __int8)a4 surfaceCovered:(float)a5
{
  v5 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v12 = a5;
  self->_cover_gesture_state = a4;
  LODWORD(v11) = 0;
  v6 = [MEMORY[0x277CD2858] vendorDefinedEvent:a3 usagePage:65280 usage:89 version:1 data:&v12 length:4 options:v11];
  IOHIDEventSetPhase();
  v7 = SALoggingGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v14 = v5;
    v15 = 2048;
    v16 = v12;
    _os_log_impl(&dword_2655B3000, v7, OS_LOG_TYPE_DEFAULT, "Generate CoverGesture %d surface %0.2f", buf, 0x12u);
  }

  v8 = SALoggingHIDEventSignpost();
  if (os_signpost_enabled(v8))
  {
    *buf = 67109376;
    v14 = v5;
    v15 = 2048;
    v16 = v12;
    _os_signpost_emit_with_name_impl(&dword_2655B3000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GenerateCoverGesture", "Cover Gesture %d surface %0.2f", buf, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)generateSwipeUp:(unint64_t)a3
{
  v3 = *MEMORY[0x277CBECE8];
  NavigationSwipeEvent = IOHIDEventCreateNavigationSwipeEvent();
  v5 = SALoggingGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2655B3000, v5, OS_LOG_TYPE_DEFAULT, "Generate Swipe Up Wake Event", buf, 2u);
  }

  v6 = SALoggingHIDEventSignpost();
  if (os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_2655B3000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GenerateWakeEvent", "Atomic Swipe Up Wake Event", v8, 2u);
  }

  return NavigationSwipeEvent;
}

- (int64_t)getValidTimestamp:(unint64_t)a3 now:(unint64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4 - a3;
  if (a4 - a3 - 1 >= 0xF423F)
  {
    timestamp_offset = self->_timestamp_offset;
    if ((v6 - timestamp_offset) >= 0xF4240)
    {
      self->_timestamp_offset = v6;
      v15 = SALoggingGeneral();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = self->_timestamp_offset;
        v18 = 134218496;
        v19 = a4;
        v20 = 2048;
        v21 = a3;
        v22 = 2048;
        v23 = v17;
        _os_log_error_impl(&dword_2655B3000, v15, OS_LOG_TYPE_ERROR, "New timestamp offset: now=%llu timestamp=%llu offset=%lld", &v18, 0x20u);
      }

      v13 = self;
      v14 = a4;
    }

    else
    {
      v11 = timestamp_offset + a3;
      v12 = SALoggingGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v18 = 134218496;
        v19 = a4;
        v20 = 2048;
        v21 = a3;
        v22 = 2048;
        v23 = v11;
        _os_log_debug_impl(&dword_2655B3000, v12, OS_LOG_TYPE_DEBUG, "Adjusting timestamp: now=%llu timestamp=%llu adjusted=%llu", &v18, 0x20u);
      }

      v13 = self;
      v14 = v11;
    }

    result = [(SASInterfaceTouch *)v13 timestampUsToAbsoluteMach:v14];
    v16 = *MEMORY[0x277D85DE8];
  }

  else
  {
    self->_timestamp_offset = 0;
    v7 = *MEMORY[0x277D85DE8];

    return [(SASInterfaceTouch *)self timestampUsToAbsoluteMach:?];
  }

  return result;
}

- (id)generateWakeEvent:(int)a3 timestamp:(unint64_t)a4
{
  v7 = a3;
  LODWORD(v6) = 0;
  v4 = [MEMORY[0x277CD2858] vendorDefinedEvent:a4 usagePage:65376 usage:10 version:0 data:&v7 length:8 options:v6];

  return v4;
}

- (void)addVersion:(id)a3
{
  v4 = a3;
  [(NSMutableArray *)self->_versions addObject:?];
  AlgsDevice::addVersion(self->_device, [v4 UTF8String]);
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

- ($F2544535907296EB357DA0304DEA202B)cover_gesture
{
  v2 = *&self->_cover_gesture.state;
  timestamp_us = self->_cover_gesture.timestamp_us;
  result.var1 = v2;
  result.var2 = *(&v2 + 1);
  result.var0 = timestamp_us;
  return result;
}

- (void)isContactReclassificationNeeded
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_2655B3000, a2, OS_LOG_TYPE_DEBUG, "GreyMatter eligibility: 0x%x", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)injectProperty:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_2655B3000, a2, OS_LOG_TYPE_ERROR, "InjectProperty: cannot handle type 0x%x", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)injectProperty:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2655B3000, a2, OS_LOG_TYPE_ERROR, "InjectProperty: %@ key not found", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end