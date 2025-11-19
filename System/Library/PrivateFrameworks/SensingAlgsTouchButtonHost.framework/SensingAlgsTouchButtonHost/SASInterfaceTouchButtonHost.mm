@interface SASInterfaceTouchButtonHost
- (BOOL)fullPressEngaged:(BOOL)a3 timestamp:(unint64_t)a4;
- (BOOL)handleInputStream:(id)a3;
- (BOOL)injectAlgsProperty:(id)a3;
- (BOOL)injectProperty:(id)a3 value:(id)a4;
- (BOOL)runAlgs:(void *)a3 timestamp:(unint64_t)a4;
- (SASInterfaceTouchButtonHost)initWithStreamSize:(unint64_t)a3 platformId:(unint64_t)a4 streamCallback:(id)a5;
- (id)extractAlgsState:(id)a3;
- (id)generateNovaEvent:(const TouchSensitiveButtonEventPacket *)a3 force_stage_event:(const ForceStageEventPacket *)a4;
- (id)getProperty:(id)a3;
- (unint64_t)timestampAbsoluteMachToUs:(unint64_t)a3;
- (unint64_t)timestampUsToContinuousMach:(unint64_t)a3;
- (void)addVersion:(id)a3;
- (void)callConfigurationCallback:(unint64_t)a3;
- (void)callEventCallback;
- (void)callResetRequestCallback:(unsigned __int16)a3 arg_ptr:(const void *)a4;
- (void)callStreamCallback:(unint64_t)a3;
- (void)cleanup;
- (void)cleanupExtractions;
- (void)configureCallbacks;
- (void)defaultStreamingConfiguration;
- (void)initProperties;
- (void)processDoubleHalfPressResults:(const _SADynamicArrayDescriptor *)a3 results:(const BOOL *)a4;
- (void)sendNovaCAEvents:(const NovaCoreAnalytics *)a3;
- (void)sendNovaHostCAEvents:(const NovaHostCoreAnalytics *)a3;
- (void)setActive:(BOOL)a3;
@end

@implementation SASInterfaceTouchButtonHost

- (SASInterfaceTouchButtonHost)initWithStreamSize:(unint64_t)a3 platformId:(unint64_t)a4 streamCallback:(id)a5
{
  v7 = a5;
  v16.receiver = self;
  v16.super_class = SASInterfaceTouchButtonHost;
  v8 = [(SASInterfaceTouchButtonHost *)&v16 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB28] dataWithLength:a3];
    outputBuffer = v8->_outputBuffer;
    v8->_outputBuffer = v9;

    v11 = [MEMORY[0x277CBEB28] dataWithLength:a3];
    inputBuffer = v8->_inputBuffer;
    v8->_inputBuffer = v11;

    *[(NSMutableData *)v8->_outputBuffer mutableBytes]= 90;
    v13 = MEMORY[0x266759060](v7);
    streamCallback = v8->_streamCallback;
    v8->_streamCallback = v13;

    OUTLINED_FUNCTION_11();
    operator new();
  }

  return 0;
}

- (void)initProperties
{
  v34 = *MEMORY[0x277D85DE8];
  v26[0] = @"WorkNodeId";
  v26[1] = @"DataNodeId";
  v27[0] = &unk_2876F9438;
  v27[1] = &unk_2876F9450;
  v26[2] = @"Type";
  v27[2] = &unk_2876F9468;
  v28[0] = @"MaybeStageEnabled";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v29 = [v17 mutableCopy];
  v28[1] = @"AccelerationEnabled";
  v24[0] = @"WorkNodeId";
  v24[1] = @"DataNodeId";
  v25[0] = &unk_2876F9438;
  v25[1] = &unk_2876F9480;
  v24[2] = @"Type";
  v25[2] = &unk_2876F9468;
  v16 = v29;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v30 = [v15 mutableCopy];
  v28[2] = @"ActiveMode";
  v22[0] = @"WorkNodeId";
  v22[1] = @"DataNodeId";
  v23[0] = &unk_2876F9498;
  v23[1] = &unk_2876F94B0;
  v22[2] = @"Type";
  v23[2] = &unk_2876F9468;
  v13 = v30;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v12 = [v14 mutableCopy];
  v31 = v12;
  v28[3] = @"HalfPressThresholdModifier";
  v20[0] = @"WorkNodeId";
  v20[1] = @"DataNodeId";
  v21[0] = &unk_2876F94C8;
  v21[1] = &unk_2876F94E0;
  v20[2] = @"Type";
  v20[3] = @"IsExternalNode";
  v3 = MEMORY[0x277CBEC38];
  v21[2] = &unk_2876F94F8;
  v21[3] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
  v5 = [v4 mutableCopy];
  v32 = v5;
  v28[4] = @"NovaCaseAttachState";
  v18[0] = @"WorkNodeId";
  v18[1] = @"DataNodeId";
  v19[0] = &unk_2876F94C8;
  v19[1] = &unk_2876F9510;
  v18[2] = @"Type";
  v18[3] = @"IsExternalNode";
  v19[2] = &unk_2876F9468;
  v19[3] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v7 = [v6 mutableCopy];
  v33 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:v28 count:5];
  v9 = [v8 mutableCopy];
  propertyDatabase = self->_propertyDatabase;
  self->_propertyDatabase = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleInputStream:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SACaseConnectionInfoProvider *)self->_caseConnectionInfoProvider caseConnected];
  if (self->_caseAttached != v7)
  {
    v8 = SALoggingGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(buf, v7);
      _os_log_impl(&dword_2655CA000, v8, OS_LOG_TYPE_DEFAULT, "[SASInterfaceTouchButtonHost] updating case attach state to %d", buf, 8u);
    }

    v3 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    [(SASInterfaceTouchButtonHost *)self injectProperty:@"NovaCaseAttachState" value:v3];

    self->_caseAttached = v7;
  }

  v9 = v6;
  v10 = [v6 bytes];
  if (![v6 length] || *v10 != 90)
  {
    v11 = 1;
    goto LABEL_10;
  }

  StreamingParser::StreamingParser(buf, (v10 + 1), [v6 length] - 1, 0);
  if (v46 <= 1)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_6();
  if (!v15 || v14[1] != 1 || !self->_active)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    goto LABEL_18;
  }

  [(SASInterfaceTouchButtonHost *)self cleanup];
  v14 = v45;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  if (v46 >= 2)
  {
LABEL_18:
    if (*v14 == 1 && v14[1] == 2)
    {
      StreamingParser::parseRun(buf, &v39, 0, 0);
      if (v39 == 0x2000)
      {
        LODWORD(v3) = *(v41 + 8);
        v4 = *(v41 + 16);
        self->_lastFrameId = v3;
      }
    }
  }

LABEL_22:
  v38 = 0;
  v37 = [(NSMutableData *)self->_outputBuffer length]- 1;
  v16 = [(NSMutableData *)self->_outputBuffer mutableBytes];
  v36 = 0;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  mach_get_times();
  device = self->_device;
  v18 = v6;
  v11 = AlgsDevice::handleInputStream(device, ([v6 bytes] + 1), objc_msgSend(v6, "length") - 1, v16 + 1, &v37, &v38, &v35, &v36);
  if (v46 >= 2)
  {
    OUTLINED_FUNCTION_6();
    if (v15)
    {
      if (*(v19 + 1) == 2)
      {
        v20 = SALoggingHIDEventSignpost();
        v21 = SALoggingHIDEventSignpost();
        v22 = os_signpost_id_generate(v21);

        if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
        {
          __os_log_helper_16_0_3_8_2_8_0_4_0(v43, v34, v4, v3);
          _os_signpost_emit_with_name_impl(&dword_2655CA000, v20, OS_SIGNPOST_EVENT, v22, "HandleInputStream", "%{public, signpost.description:begin_time}llu timestamp:%llu frameId:%d ", v43, 0x1Cu);
        }
      }
    }
  }

  [(SASInterfaceTouchButtonHost *)self callStreamCallback:v37];
  [(SASInterfaceTouchButtonHost *)self callEventCallback];
  v23 = v38;
  if (v38 == 1)
  {
    [(SASInterfaceTouchButtonHost *)self callResetRequestCallback:v35 arg_ptr:v36];
    v23 = v38;
  }

  if (v23 == 2)
  {
    [(SASInterfaceTouchButtonHost *)self defaultStreamingConfiguration];
  }

  if (v46 >= 2)
  {
    OUTLINED_FUNCTION_6();
    if (v15)
    {
      if (*(v24 + 1) == 1)
      {
        [(SASInterfaceTouchButtonHost *)self configureCallbacks];
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v25 = self->_propertyDatabase;
        v26 = [(NSMutableDictionary *)v25 countByEnumeratingWithState:&v29 objects:v42 count:16];
        if (v26)
        {
          v27 = *v30;
          do
          {
            for (i = 0; i < v26; ++i)
            {
              if (*v30 != v27)
              {
                objc_enumerationMutation(v25);
              }

              [(SASInterfaceTouchButtonHost *)self injectAlgsProperty:*(*(&v29 + 1) + 8 * i), v29];
            }

            v26 = [(NSMutableDictionary *)v25 countByEnumeratingWithState:&v29 objects:v42 count:16];
          }

          while (v26);
        }
      }
    }
  }

LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)defaultStreamingConfiguration
{
  OUTLINED_FUNCTION_13();
  AlgDataExtractor::AlgDataExtractor(v3, 4);
  OUTLINED_FUNCTION_0_0();
  v11 = OUTLINED_FUNCTION_3(v4, v5, 0xF761B8249EC06F80, v6, v7, v8, v9, v10, v39, v40[0]);
  OUTLINED_FUNCTION_18(v11, v12, v13, v14);
  OUTLINED_FUNCTION_0_0();
  v22 = OUTLINED_FUNCTION_3(v15, v16, 0x5BF249159B57CEALL, v17, v18, v19, v20, v21, v39, v40[0]);
  OUTLINED_FUNCTION_18(v22, v23, v24, v25);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_18(v40, v26, v27, 1);
  OUTLINED_FUNCTION_0_0();
  v35 = OUTLINED_FUNCTION_3(v28, v29, 0xAF483000465377DCLL, v30, v31, v32, v33, v34, v39, v40[0]);
  OUTLINED_FUNCTION_18(v35, v36, v37, v38);
  v39 = [*(v2 + 64) length] - 1;
  AlgsDevice::configureStreaming(*(v2 + 88), 0, v40, ([*(v2 + 64) mutableBytes] + 1), &v39);
  [v2 callStreamCallback:v39];
  PacketCollection::~PacketCollection(v40);
}

- (void)callStreamCallback:(unint64_t)a3
{
  if (a3 && self->_streamCallback)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:-[NSMutableData mutableBytes](self->_outputBuffer length:"mutableBytes") freeWhenDone:{a3 + 1, 0}];
    (*(self->_streamCallback + 2))();
  }
}

- (void)configureCallbacks
{
  v12 = *a1;
  [v12 setDoubleHalfPressEventsDescriptor:*(a1 + 40)];
  [v12 setDoubleHalfPressResults:*(a1 + 56)];
  v2 = [v12 doubleHalfPressEventsDescriptor];
  v10 = [OUTLINED_FUNCTION_5(v2 v3];
  [v13 processDoubleHalfPressResults:a1 results:v10];
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

- (void)callEventCallback
{
  if (self->_eventCallback && self->_touchSensitiveButtonEvents && self->_touchSensitiveButtonEventsDescriptor && self->_forceStageEvents && self->_forceStageEventsDescriptor)
  {
    v3 = objc_opt_new();
    v4 = 0;
    v5 = 0;
    for (i = 0; i < self->_touchSensitiveButtonEventsDescriptor->var3; ++i)
    {
      v7 = [(SASInterfaceTouchButtonHost *)self generateNovaEvent:&self->_touchSensitiveButtonEvents[v4] force_stage_event:&self->_forceStageEvents[v5]];
      if (v7)
      {
        [v3 addObject:v7];
      }

      else
      {
        v8 = SALoggingGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_0(v9);
          _os_log_error_impl(&dword_2655CA000, v8, OS_LOG_TYPE_ERROR, "Error creating TouchSensitiveButton event!", v9, 2u);
        }
      }

      ++v5;
      ++v4;
    }

    (*(self->_eventCallback + 2))();
    [(SASInterfaceTouchButtonHost *)self cleanupExtractions];
  }

  else
  {

    [(SASInterfaceTouchButtonHost *)self cleanupExtractions];
  }
}

- (void)callConfigurationCallback:(unint64_t)a3
{
  if (a3 && self->_configurationCallback)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:-[NSMutableData mutableBytes](self->_outputBuffer length:"mutableBytes") freeWhenDone:{a3, 0}];
    if (((*(self->_configurationCallback + 2))() & 1) == 0)
    {
      v5 = SALoggingGeneral();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_0(v12);
        OUTLINED_FUNCTION_16(&dword_2655CA000, v6, v7, "Error calling configuration callback", v8, v9, v10, v11, v12[0]);
      }
    }
  }
}

- (void)cleanupExtractions
{
  self->_touchSensitiveButtonEventsDescriptor = 0;
  self->_forceStageEventsDescriptor = 0;
  self->_touchSensitiveButtonEvents = 0;
  self->_forceStageEvents = 0;
}

- (id)generateNovaEvent:(const TouchSensitiveButtonEventPacket *)a3 force_stage_event:(const ForceStageEventPacket *)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = [(SASInterfaceTouchButtonHost *)self timestampUsToAbsoluteMach:a3->var0];
  if (self->_touchSensitiveButtonEventsEnabled)
  {
    v8 = *MEMORY[0x277CBECE8];
    usage = self->_usage;
    usagePage = self->_usagePage;
    var8 = a3->var8;
    var1 = a3->var1;
    var2 = a3->var2;
    var3 = a3->var3;
    var4 = a3->var4;
    var6 = a3->var6;
    TouchSensitiveButtonEventWithRadius = IOHIDEventCreateTouchSensitiveButtonEventWithRadius();
    var5 = a3->var5;
    IOHIDEventSetPhase();
    v19 = a4->var5;
    v20 = a4->var6;
    v21 = a4->var2;
    v22 = a4->var3;
    v23 = a4->var4;
    v24 = a4->var1;
    ForceStageEvent = IOHIDEventCreateForceStageEvent();
    var7 = a4->var7;
    IOHIDEventSetPhase();
    [TouchSensitiveButtonEventWithRadius appendEvent:ForceStageEvent];
  }

  else
  {
    v27 = *&a4->var5;
    v41 = vcvtq_f64_f32(*&a4->var2);
    v28 = a4->var1;
    v42 = a4->var4;
    v43 = v28;
    v44 = 0x7FF8000000000000;
    v39 = a3->var2;
    *buf = v27;
    LODWORD(v37) = 0;
    TouchSensitiveButtonEventWithRadius = [MEMORY[0x277CD2858] vendorDefinedEvent:v7 usagePage:self->_usagePage usage:self->_usage version:0 data:&v39 length:8 options:v37];
    LODWORD(v38) = 0;
    v29 = [MEMORY[0x277CD2858] vendorDefinedEvent:v7 usagePage:65280 usage:17 version:0 data:buf length:48 options:v38];
    v30 = a3->var5;
    IOHIDEventSetPhase();
    v31 = a4->var7;
    IOHIDEventSetPhase();
    [TouchSensitiveButtonEventWithRadius appendEvent:v29];
  }

  v32 = SALoggingHIDEventSignpost();
  v33 = SALoggingHIDEventSignpost();
  v34 = os_signpost_id_generate(v33);

  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    __os_log_helper_16_0_7_8_2_8_0_8_0_4_0_4_0_4_0_4_0(buf, [(SASInterfaceTouchButtonHost *)self timestampUsToContinuousMach:a3->var0], COERCE__INT64(a3->var1), COERCE__INT64(a3->var2), a4->var5, a4->var6, a4->var7, a3->var6);
    _os_signpost_emit_with_name_impl(&dword_2655CA000, v32, OS_SIGNPOST_EVENT, v34, "GenerateTouchSensitiveButtonEvent", "%{public, signpost.description:begin_time}llu position=%3f positionDelta=%3f forceStage:%d forceTransition:%d phase:0x%x touching:%d", buf, 0x38u);
  }

  v35 = *MEMORY[0x277D85DE8];

  return TouchSensitiveButtonEventWithRadius;
}

- (unint64_t)timestampUsToContinuousMach:(unint64_t)a3
{
  HIDWORD(v4) = 1083129856;
  LODWORD(v3) = self->_timebase.numer;
  LODWORD(v4) = self->_timebase.denom;
  return (a3 * 1000.0 * v4 / v3);
}

- (unint64_t)timestampAbsoluteMachToUs:(unint64_t)a3
{
  OUTLINED_FUNCTION_7();
  LODWORD(v5) = *(v4 + 84);
  return (((v8 + v3 - v7) * *(v4 + 80)) / v5 / 1000.0);
}

- (void)cleanup
{
  [(SASInterfaceTouchButtonHost *)self injectProperty:@"ActiveMode" value:MEMORY[0x277CBEC28]];
  AlgDataInjector::AlgDataInjector(v12, 0);
  if (![(SASInterfaceTouchButtonHost *)self runAlgs:v12 timestamp:[(SASInterfaceTouchButtonHost *)self timestampAbsoluteMachToUs:mach_absolute_time()]])
  {
    v3 = SALoggingGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_0(&v11);
      OUTLINED_FUNCTION_16(&dword_2655CA000, v5, v6, "[SASInterfaceTouchButtonHost] Failed to run cleanup!", v7, v8, v9, v10, v11);
    }
  }

  if (self->_active)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [(SASInterfaceTouchButtonHost *)self injectProperty:@"ActiveMode" value:v4];
  }

  PacketCollection::~PacketCollection(v12);
}

- (BOOL)injectProperty:(id)a3 value:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_propertyDatabase objectForKeyedSubscript:v6];
  v9 = v8;
  if (!v8)
  {
    if (([v6 isEqualToString:@"SwitchPressedTimestamp"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"SwitchReleasedTimestamp"))
    {
      v11 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        isKindOfClass = -[SASInterfaceTouchButtonHost fullPressEngaged:timestamp:](self, "fullPressEngaged:timestamp:", [v6 isEqualToString:@"SwitchPressedTimestamp"], objc_msgSend(v11, "unsignedLongLongValue"));
      }

      else
      {
        isKindOfClass = 0;
      }

LABEL_8:

      goto LABEL_9;
    }

    if ([v6 isEqualToString:@"CameraButtonScanActive"])
    {
      v11 = v7;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        -[SASInterfaceTouchButtonHost setActive:](self, "setActive:", [v11 BOOLValue]);
      }

      goto LABEL_8;
    }

    if ([v6 isEqualToString:@"PrimaryUsagePage"])
    {
      v14 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 unsignedIntValue];
        v16 = 12;
LABEL_19:
        *(&self->super.isa + v16) = v15;

        v17 = SALoggingGeneral();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_64_8_64(v18, v6, v7);
          _os_log_impl(&dword_2655CA000, v17, OS_LOG_TYPE_DEFAULT, "[SASInterfaceTouchButtonHost] Injected property: %@ : %@", v18, 0x16u);
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (![v6 isEqualToString:@"PrimaryUsage"])
      {
LABEL_22:
        isKindOfClass = 1;
        goto LABEL_9;
      }

      v14 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 unsignedIntValue];
        v16 = 14;
        goto LABEL_19;
      }
    }

    isKindOfClass = 0;
    goto LABEL_9;
  }

  [v8 setObject:v7 forKeyedSubscript:@"Value"];
  isKindOfClass = [(SASInterfaceTouchButtonHost *)self injectAlgsProperty:v6];
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
  return isKindOfClass & 1;
}

- (id)getProperty:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_propertyDatabase objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(SASInterfaceTouchButtonHost *)self extractAlgsState:v4];
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"ForceStages"])
  {
    v6 = self->_forceStages;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"CameraButtonScanActive"])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_active];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (BOOL)fullPressEngaged:(BOOL)a3 timestamp:(unint64_t)a4
{
  v4 = a3;
  v5 = self;
  v6 = [(SASInterfaceTouchButtonHost *)self timestampAbsoluteMachToUs:a4];
  v12 = v4;
  AlgDataInjector::AlgDataInjector(v11, 1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_14();
  AlgDataPacket::AlgDataPacket(v10, v7, v8, 20480, 1, 1, &v12, 4, 0, 0);
  AlgDataInjector::add(v11, v10);
  AlgDataPacket::~AlgDataPacket(v10);
  LOBYTE(v5) = [(SASInterfaceTouchButtonHost *)v5 runAlgs:v11 timestamp:v6];
  PacketCollection::~PacketCollection(v11);
  return v5;
}

- (BOOL)runAlgs:(void *)a3 timestamp:(unint64_t)a4
{
  lastFrameId = self->_lastFrameId;
  v11 = 0;
  v12 = a4;
  v8[1] = 24;
  v8[0] = 0x2000;
  v8[2] = &v9;
  v9 = a4;
  v7 = [(NSMutableData *)self->_outputBuffer length]- 1;
  LOBYTE(a3) = (*(*self->_device + 24))(self->_device, v8, a3, [(NSMutableData *)self->_outputBuffer mutableBytes]+ 1, &v7);
  [(SASInterfaceTouchButtonHost *)self callStreamCallback:v7];
  [(SASInterfaceTouchButtonHost *)self callEventCallback];
  return a3;
}

- (BOOL)injectAlgsProperty:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_propertyDatabase objectForKeyedSubscript:v4];
  AlgDataInjector::AlgDataInjector(v41, 1);
  AlgDataExtractor::AlgDataExtractor(v40, 0);
  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"WorkNodeId"];
    v7 = [v6 unsignedLongLongValue];

    v8 = [v5 objectForKeyedSubscript:@"DataNodeId"];
    v9 = [v8 unsignedLongLongValue];

    v10 = [v5 objectForKeyedSubscript:@"Type"];
    v11 = [v10 unsignedShortValue];

    v12 = [v5 objectForKeyedSubscript:@"Value"];
    v13 = v12;
    if (v12)
    {
      switch(v11)
      {
        case 20480:
        case 20486:
          v14 = v12;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *v44 = [v14 unsignedIntValue];
            v37 = [MEMORY[0x277CBEA90] dataWithBytes:v44 length:4];
            v15 = 4;
            goto LABEL_14;
          }

          v23 = SALoggingGeneral();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v29 = objc_opt_class();
            v30 = NSStringFromClass(v29);
            __os_log_helper_16_2_2_8_64_4_0(v44, v30, v11);
            OUTLINED_FUNCTION_15(&dword_2655CA000, v31, v32, "[SASInterfaceTouchButtonHost] InjectProperty: unexpected id %@ for type 0x%x");
          }

          goto LABEL_27;
        case 20483:
          v14 = v12;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v44[0] = [v14 charValue];
            v37 = [MEMORY[0x277CBEA90] dataWithBytes:v44 length:1];
            v15 = 1;
            goto LABEL_14;
          }

          v23 = SALoggingGeneral();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v33 = objc_opt_class();
            v34 = NSStringFromClass(v33);
            __os_log_helper_16_2_2_8_64_4_0(v44, v34, 20483);
            OUTLINED_FUNCTION_15(&dword_2655CA000, v35, v36, "[SASInterfaceTouchButtonHost] InjectProperty: unexpected id %@ for type 0x%x");
          }

LABEL_27:

          goto LABEL_28;
        case 20488:
          v14 = v12;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *v44 = [v14 unsignedLongLongValue];
            v37 = [MEMORY[0x277CBEA90] dataWithBytes:v44 length:8];
            v15 = 8;
LABEL_14:

            v17 = v37;
            AlgDataPacket::AlgDataPacket(v44, v7, v9, v11, 1, 1, [v37 bytes], v15, 0, 0);
            AlgDataInjector::add(v41, v44);
            v18 = [(NSMutableData *)self->_outputBuffer length]- 1;
            v39 = v18;
            v19 = [(NSMutableData *)self->_outputBuffer mutableBytes];
            v20 = [v5 objectForKeyedSubscript:@"IsExternalNode"];
            v21 = [v20 BOOLValue];

            if (v21)
            {
              StreamingWriter::StreamingWriter(buf, v19 + 1, v18, 0);
              v16 = StreamingWriter::writeInjext(buf, 0, v41, 0, 0, 0);
              if (v16)
              {
                [(SASInterfaceTouchButtonHost *)self callConfigurationCallback:v43 + 1];
              }

              else
              {
                v24 = SALoggingGeneral();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  __os_log_helper_16_0_0(v38);
                  _os_log_error_impl(&dword_2655CA000, v24, OS_LOG_TYPE_ERROR, "[SASInterfaceTouchButtonHost] failed to write injext data", v38, 2u);
                }
              }
            }

            else
            {
              v16 = (*(*self->_device + 32))(self->_device, v41, v40, v19 + 1, &v39);
              [(SASInterfaceTouchButtonHost *)self callStreamCallback:v39];
            }

            v25 = SALoggingGeneral();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              if (v16)
              {
                v26 = "OK";
              }

              else
              {
                v26 = "Error";
              }

              __os_log_helper_16_2_6_8_64_4_0_8_0_8_0_8_64_8_32(buf, v4, v21, v7, v9, v13, v26);
              _os_log_impl(&dword_2655CA000, v25, OS_LOG_TYPE_DEFAULT, "[SASInterfaceTouchButtonHost] InjectProperty: %@, External: %d, (%llu,%llu)=%@ result %s", buf, 0x3Au);
            }

            AlgDataPacket::~AlgDataPacket(v44);
          }

          else
          {

LABEL_28:
            LOBYTE(v16) = 0;
            v13 = v14;
          }

          break;
        default:
          v22 = SALoggingGeneral();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_0_1_4_0(v44, v11);
            _os_log_error_impl(&dword_2655CA000, v22, OS_LOG_TYPE_ERROR, "[SASInterfaceTouchButtonHost] InjectProperty: cannot handle type 0x%x", v44, 8u);
          }

          goto LABEL_8;
      }
    }

    else
    {
      LOBYTE(v16) = 1;
    }
  }

  else
  {
    v13 = SALoggingGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v44, v4);
      _os_log_error_impl(&dword_2655CA000, v13, OS_LOG_TYPE_ERROR, "[SASInterfaceTouchButtonHost] InjectProperty: %@ key config not found", v44, 0xCu);
    }

LABEL_8:
    LOBYTE(v16) = 0;
  }

  PacketCollection::~PacketCollection(v40);
  PacketCollection::~PacketCollection(v41);

  v27 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)extractAlgsState:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_propertyDatabase objectForKeyedSubscript:v4];
  AlgDataInjector::AlgDataInjector(&v61, 0);
  AlgDataExtractor::AlgDataExtractor(&v52, 1);
  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"IsExternalNode"];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = [v5 objectForKeyedSubscript:@"Value"];
    }

    else
    {
      v10 = [v5 objectForKeyedSubscript:@"WorkNodeId"];
      v11 = [v10 unsignedLongLongValue];

      v12 = [v5 objectForKeyedSubscript:@"DataNodeId"];
      v13 = [v12 unsignedLongLongValue];

      v14 = [v5 objectForKeyedSubscript:@"Type"];
      v15 = [v14 unsignedShortValue];

      AlgDataPacket::AlgDataPacket(v69, v11, v13, v15, 2, 2, 0, 0, 0, 0);
      AlgDataExtractor::add(&v52, v69);
      v51 = 0;
      v16 = (*(*self->_device + 32))(self->_device, &v61, &v52, 0, &v51);
      if (v16)
      {
        switch(v15)
        {
          case 20480:
            v20 = [MEMORY[0x277CCABB0] numberWithBool:{**(OUTLINED_FUNCTION_17(v16, v17, v18, v19) + 56)}];
            break;
          case 20483:
            v20 = [MEMORY[0x277CCABB0] numberWithChar:{**(OUTLINED_FUNCTION_17(v16, v17, v18, v19) + 56)}];
            break;
          case 20486:
            v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{**(OUTLINED_FUNCTION_17(v16, v17, v18, v19) + 56)}];
            break;
          case 20488:
            v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{**(OUTLINED_FUNCTION_17(v16, v17, v18, v19) + 56)}];
            break;
          default:
            v21 = SALoggingGeneral();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_0_1_4_0(buf, v15);
              _os_log_error_impl(&dword_2655CA000, v21, OS_LOG_TYPE_ERROR, "[SASInterfaceTouchButtonHost] ExtractProperty: cannot handle type 0x%x", buf, 8u);
            }

            goto LABEL_19;
        }

        v8 = v20;
        v21 = SALoggingGeneral();
        v34 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
        if (v34)
        {
          v42 = OUTLINED_FUNCTION_10(v34, v35, v36, v37, v38, v39, v40, v41, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, buf[0]);
          __os_log_helper_16_2_4_8_64_8_0_8_0_8_64(v42, v43, v44, v45, v8);
          _os_log_impl(&dword_2655CA000, v21, OS_LOG_TYPE_INFO, "[SASInterfaceTouchButtonHost] ExtractProperty: %@, (%llu,%llu)=%@", buf, 0x2Au);
        }
      }

      else
      {
        v21 = SALoggingGeneral();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
        if (v22)
        {
          v30 = OUTLINED_FUNCTION_10(v22, v23, v24, v25, v26, v27, v28, v29, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, buf[0]);
          __os_log_helper_16_2_3_8_64_8_0_8_0(v30, v31, v32, v33);
          _os_log_impl(&dword_2655CA000, v21, OS_LOG_TYPE_INFO, "[SASInterfaceTouchButtonHost] ExtractProperty: %@, (%llu,%llu) extraction failed", buf, 0x20u);
        }

LABEL_19:
        v8 = 0;
      }

      AlgDataPacket::~AlgDataPacket(v69);
    }
  }

  else
  {
    v9 = SALoggingGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v69, v4);
      _os_log_error_impl(&dword_2655CA000, v9, OS_LOG_TYPE_ERROR, "[SASInterfaceTouchButtonHost] ExtractProperty: %@ key config not found", v69, 0xCu);
    }

    v8 = 0;
  }

  PacketCollection::~PacketCollection(&v52);
  PacketCollection::~PacketCollection(&v61);

  v46 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)addVersion:(id)a3
{
  v4 = a3;
  [(NSMutableArray *)self->_versions addObject:?];
  AlgsDevice::addVersion(self->_device, [v4 UTF8String]);
}

- (void)setActive:(BOOL)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_active != a3)
  {
    v3 = a3;
    self->_active = a3;
    if (a3)
    {
      [(SASInterfaceTouchButtonHost *)self injectProperty:@"ActiveMode" value:MEMORY[0x277CBEC38]];
    }

    else
    {
      [(SASInterfaceTouchButtonHost *)self cleanup];
    }

    v4 = SALoggingGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v6, v3);
      _os_log_impl(&dword_2655CA000, v4, OS_LOG_TYPE_INFO, "[SASInterfaceTouchButtonHost] active state switched to: %d", v6, 8u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendNovaCAEvents:(const NovaCoreAnalytics *)a3
{
  v81[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    coreAnalyticsCallback = self->_coreAnalyticsCallback;
    if (coreAnalyticsCallback)
    {
      if (a3->var1)
      {
        v80[0] = @"PrimaryFreqResidency";
        *&v3 = a3->var8;
        v7 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
        v81[0] = v7;
        v80[1] = @"NoiseLevel";
        *&v8 = a3->var12;
        v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
        v81[1] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];
        coreAnalyticsCallback[2](coreAnalyticsCallback, @"com.apple.TouchSensitiveButton.FreqResidencyNoiseLevel", v10);

        SALoggingGeneral();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_9();
        if (os_log_type_enabled(v11, v12))
        {
          __os_log_helper_16_0_0(&v71);
          OUTLINED_FUNCTION_1(&dword_2655CA000, v13, v14, "[SASInterfaceTouchButtonHost] CA FreqResidencyNoiseLevel event emitted", v15, v16, v17, v18, v71);
        }
      }

      if (a3->var2)
      {
        v19 = self->_coreAnalyticsCallback;
        v78 = @"Full_Scale";
        *&v3 = a3->var10;
        v20 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
        v79 = v20;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_2();
        v21 = OUTLINED_FUNCTION_8();
        v22(v21);

        SALoggingGeneral();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_9();
        if (os_log_type_enabled(v23, v24))
        {
          __os_log_helper_16_0_0(&v71);
          OUTLINED_FUNCTION_1(&dword_2655CA000, v25, v26, "[SASInterfaceTouchButtonHost] CA FS_Estimate event emitted", v27, v28, v29, v30, v71);
        }
      }

      if (a3->var3)
      {
        v31 = self->_coreAnalyticsCallback;
        v76 = @"fingerPosition";
        *&v3 = a3->var11;
        v32 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
        v77 = v32;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_2();
        v33 = OUTLINED_FUNCTION_8();
        v34(v33);

        SALoggingGeneral();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_9();
        if (os_log_type_enabled(v35, v36))
        {
          __os_log_helper_16_0_0(&v71);
          OUTLINED_FUNCTION_1(&dword_2655CA000, v37, v38, "[SASInterfaceTouchButtonHost] CA HalfPressPressed event emitted", v39, v40, v41, v42, v71);
        }
      }

      if (a3->var4)
      {
        v43 = self->_coreAnalyticsCallback;
        v74 = @"EntryGestureType";
        v44 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3->var5];
        v75 = v44;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_2();
        v45 = OUTLINED_FUNCTION_8();
        v46(v45);

        SALoggingGeneral();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_9();
        if (os_log_type_enabled(v47, v48))
        {
          __os_log_helper_16_0_0(&v71);
          OUTLINED_FUNCTION_1(&dword_2655CA000, v49, v50, "[SASInterfaceTouchButtonHost] CA EntryGestureType event emitted", v51, v52, v53, v54, v71);
        }
      }

      if (a3->var6)
      {
        v55 = self->_coreAnalyticsCallback;
        v72[0] = @"breakDueToBaselineRecapture";
        v56 = [MEMORY[0x277CCABB0] numberWithChar:?];
        v72[1] = @"FSEstimate";
        v73[0] = v56;
        *&v57 = a3->var13;
        v58 = [MEMORY[0x277CCABB0] numberWithFloat:v57];
        v73[1] = v58;
        v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
        v60 = v55[2];
        v61 = OUTLINED_FUNCTION_8();
        v62(v61);

        v63 = SALoggingGeneral();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_0(&v71);
          OUTLINED_FUNCTION_4(&dword_2655CA000, v64, v65, "[SASInterfaceTouchButtonHost] CA StuckTouchRecapture event emitted", v66, v67, v68, v69, v71);
        }
      }
    }
  }

  v70 = *MEMORY[0x277D85DE8];
}

- (void)sendNovaHostCAEvents:(const NovaHostCoreAnalytics *)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  if (a3 && self->_coreAnalyticsCallback)
  {
    if (a3->var2)
    {
      v31 = @"EntryGestureType";
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3->var3];
      v32[0] = v7;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_2();
      v8 = OUTLINED_FUNCTION_8();
      v9(v8);

      v10 = SALoggingGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_0(&v28);
        OUTLINED_FUNCTION_4(&dword_2655CA000, v11, v12, "[SASInterfaceTouchButtonHost] CA EntryGestureType event emitted", v13, v14, v15, v16, v28);
      }
    }

    if (a3->var1)
    {
      coreAnalyticsCallback = self->_coreAnalyticsCallback;
      v29 = @"fingerPosition";
      *&v4 = a3->var4;
      v18 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
      v30 = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      coreAnalyticsCallback[2](coreAnalyticsCallback, @"com.apple.TouchSensitiveButton.tactSwitchPressed", v19);

      v20 = SALoggingGeneral();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_0(&v28);
        OUTLINED_FUNCTION_4(&dword_2655CA000, v21, v22, "[SASInterfaceTouchButtonHost] CA TactSwitchPressed event emitted", v23, v24, v25, v26, v28);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)processDoubleHalfPressResults:(const _SADynamicArrayDescriptor *)a3 results:(const BOOL *)a4
{
  v6 = 0;
  v17 = *MEMORY[0x277D85DE8];
  while (v6 < a3->var3)
  {
    v7 = a4[v6];
    v8 = SALoggingGeneral();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v9)
      {
        goto LABEL_9;
      }

      __os_log_helper_16_0_1_4_0(&v16, v6);
      v10 = OUTLINED_FUNCTION_12();
      v14 = "[SASInterfaceTouchButtonHost] double half press = YES for %d-th event";
    }

    else
    {
      if (!v9)
      {
        goto LABEL_9;
      }

      __os_log_helper_16_0_1_4_0(&v16, v6);
      v10 = OUTLINED_FUNCTION_12();
      v14 = "[SASInterfaceTouchButtonHost] double half press = NO for %d-th event";
    }

    _os_log_impl(v10, v11, v12, v14, v13, 8u);
LABEL_9:

    ++v6;
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end