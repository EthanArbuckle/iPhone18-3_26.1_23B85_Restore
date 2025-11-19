uint64_t sub_1B1ADA774()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0x404E000000000000;
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x1E696AB30]) init];
  return v0;
}

uint64_t SynthesisBufferingAction.init(pool:)()
{
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 65) = 0;
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = mach_absolute_time();
  *(v0 + 40) = sub_1B1ADD9B0();
  *(v0 + 72) = sub_1B1AA1E5C();
  v1 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v1;
}

uint64_t IsNaturalVoiceCondition.init(pool:)()
{
  sub_1B1AA1C5C();
  v2 = v1;

  *(v0 + 16) = v2;
  return v0;
}

uint64_t OpusEncodingAction.init(pool:)()
{
  *(v0 + 32) = 0;
  v1 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t AudioPlaybackAction.init(pool:)()
{
  type metadata accessor for AsynchronousContext();
  swift_allocObject();
  v1 = sub_1B1ADA774();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 104) = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 96) = sub_1B1AA1E5C();
  if (qword_1ED9A4D38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  swift_weakInit();

  sub_1B1ADD4C4();

  return v0;
}

uint64_t sub_1B1ADAAC8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B1ADAB28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = *(v6 + 16);
  v10 = sub_1B1ADDD74(a1, a2, a3, a4, a5, a6);
  swift_beginAccess();
  swift_unknownObjectRetain();
  v11 = a1;
  sub_1B1B36ED4();
  v12 = *(*(v7 + 24) + 16);
  sub_1B1B3DB74(v12);
  v13 = *(v7 + 24);
  *(v13 + 16) = v12 + 1;
  v14 = v13 + 16 * v12;
  *(v14 + 32) = v10;
  *(v14 + 40) = v11;
  *(v7 + 24) = v13;
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B1ADAC5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762918, &qword_1B1C39880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void SynthesisCacheWritingAction.init(pool:)()
{
  v1 = v0;
  v20 = sub_1B1C2D128();
  v2 = OUTLINED_FUNCTION_7(v20);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = sub_1B1C2D118();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16();
  v12 = sub_1B1C2C9D8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_16();
  type metadata accessor for AsynchronousContext();
  swift_allocObject();
  *(v0 + 16) = sub_1B1ADA774();
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v0 + 32) = 0;
  v14 = OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_cacheFile;
  v15 = type metadata accessor for SynthesisCacheFile(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = (v1 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_cacheHashKey);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_observers) = MEMORY[0x1E69E7CC0];
  sub_1B1ADB340();
  *(v1 + 40) = v17;
  sub_1B1AA7918();
  sub_1B1C2C9C8();
  sub_1B1A979CC(&qword_1ED9A4EC8, MEMORY[0x1E69E8030]);
  sub_1B1C2D958();
  (*(v4 + 104))(v9, *MEMORY[0x1E69E8090], v20);
  *(v1 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_cachingQueue) = sub_1B1C2D158();
  sub_1B1AA1C5C();
  *(v1 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_internalSettings) = v18;
  *(v1 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_notificationCenter) = sub_1B1AA1E5C();
  if (qword_1ED9A4D38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_12();

  OUTLINED_FUNCTION_0_17();
  sub_1B1ADB4DC();
  OUTLINED_FUNCTION_9_13();
  if (qword_1ED9A4E98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_12();

  OUTLINED_FUNCTION_0_17();
  sub_1B1ADB4DC();
  OUTLINED_FUNCTION_9_13();
  if (qword_1ED9A4E28 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_12();
  v19 = OUTLINED_FUNCTION_0_17();
  sub_1B1ADC1C4(v19);

  if (qword_1ED9A4D68 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_12();

  OUTLINED_FUNCTION_0_17();
  sub_1B1ADB4DC();
  OUTLINED_FUNCTION_9_13();
  if (qword_1EB761020 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_4_12();

  OUTLINED_FUNCTION_0_17();
  sub_1B1ADB4DC();

  OUTLINED_FUNCTION_9_13();
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1ADB30C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void sub_1B1ADB340()
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_18_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621B8, &qword_1B1C37380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621C0, &qword_1B1C37388);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_36_1();
  v1 = OUTLINED_FUNCTION_8_3();
  sub_1B1A93AEC(v1, v2, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  v4 = OUTLINED_FUNCTION_23_5();
  type metadata accessor for CacheStorage(v4);
  if (OUTLINED_FUNCTION_6_5())
  {
  }

  else
  {
    OUTLINED_FUNCTION_14_6();
    OUTLINED_FUNCTION_37_3();
    v5 = OUTLINED_FUNCTION_8_3();
    sub_1B1A9EC94(v5, v6, v7);
    OUTLINED_FUNCTION_17_5();
    if (v0)
    {
      OUTLINED_FUNCTION_21_2();
      v0();
      if (OUTLINED_FUNCTION_10_6())
      {
        OUTLINED_FUNCTION_4_3();

        OUTLINED_FUNCTION_12_3(v8, v9, v10, v11, v12, v13, v14);
        swift_endAccess();
      }

      else
      {
        OUTLINED_FUNCTION_9_3();
        sub_1B1C2D538();

        OUTLINED_FUNCTION_0_3();

        sub_1B1A9EC9C();
        v17 = OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_7_4(v17, v18);
      }

      OUTLINED_FUNCTION_35_4();
    }

    else
    {
      OUTLINED_FUNCTION_9_3();
      sub_1B1C2D538();

      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_11_3();

      sub_1B1A9EC9C();
      v15 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_7_4(v15, v16);
    }
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_20_2();
}

uint64_t sub_1B1ADB4DC()
{
  v3 = *(v0 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_notificationCenter);
  if (v3)
  {
    OUTLINED_FUNCTION_5_9(v3);
    OUTLINED_FUNCTION_0_15();
    v4 = OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_observers;
    OUTLINED_FUNCTION_0();
    swift_unknownObjectRetain();
    v5 = v2;
    sub_1B1B36ED4();
    v6 = *(*(v0 + v4) + 16);
    sub_1B1B3DB74(v6);
    v7 = *(v0 + v4);
    OUTLINED_FUNCTION_1_12(v6 + 1);
    *(v0 + v4) = v8;
    swift_endAccess();

    return swift_unknownObjectRelease();
  }

  return result;
}

void *DelegateHandler.init(notificationCenter:delegate:request:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_1_25();

  return sub_1B1ADB5F4(v0, v1, v2, v3);
}

void *sub_1B1ADB5F4(void *a1, uint64_t a2, void *a3, void *a4)
{
  a4[3] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  a4[2] = a1;
  swift_unknownObjectWeakAssign();
  a4[5] = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  v8 = qword_1ED9A4D58;
  v9 = a1;
  v10 = a3;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED9A4D60;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v12;

  sub_1B1ADAB20(v11, sub_1B1ACE10C, v13);

  if (qword_1ED9A4EA8 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED9A4EB0;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  *(v16 + 24) = v15;
  v17 = v10;
  sub_1B1ADABD8(v14, sub_1B1ACC378, v16);

  if (qword_1ED9A4DA0 != -1)
  {
    swift_once();
  }

  v18 = qword_1ED9A4DA8;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  v21 = v17;
  sub_1B1ADBB38(v18, sub_1B1AC52E8, v20);

  if (qword_1ED9A4C90 != -1)
  {
    swift_once();
  }

  v22 = qword_1ED9A4C98;
  v23 = swift_allocObject();
  swift_weakInit();

  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v21;
  v25 = v21;
  sub_1B1ADBB68(v22, sub_1B1AAFF04, v24);

  if (qword_1ED9A4E88 != -1)
  {
    swift_once();
  }

  sub_1B1ADAC08(qword_1ED9A4E90, sub_1B1ADF0EC, 0);

  swift_unknownObjectRelease();

  return a4;
}

uint64_t sub_1B1ADB9D4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1ADBA0C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OUTLINED_FUNCTION_0_23();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1B1ADBA48()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_0_23();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B1ADBA84(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(v3 + 16);
  v7 = NSNotificationCenter.addObserver(event:callback:)(a1, a2, a3);
  swift_beginAccess();
  swift_unknownObjectRetain();
  v8 = a1;
  sub_1B1B36ED4();
  v9 = *(*(v4 + 24) + 16);
  sub_1B1B3DB74(v9);
  v10 = *(v4 + 24);
  *(v10 + 16) = v9 + 1;
  v11 = v10 + 16 * v9;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  *(v4 + 24) = v10;
  swift_endAccess();
  return swift_unknownObjectRelease();
}

id InstrumentationMetrics.init()()
{
  OUTLINED_FUNCTION_85(OBJC_IVAR___SiriTTSInstrumentationMetrics_utterance);
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_voice] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_resource] = 0;
  OUTLINED_FUNCTION_85(OBJC_IVAR___SiriTTSInstrumentationMetrics_audioOutputRoute);
  OUTLINED_FUNCTION_85(OBJC_IVAR___SiriTTSInstrumentationMetrics_clientBundleIdentifier);
  OUTLINED_FUNCTION_85(OBJC_IVAR___SiriTTSInstrumentationMetrics_experimentIdentifier);
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_requestCreatedTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_eagerRequestGapInterval] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisBeginTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisFirstAudioTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisEndTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_speechBeginTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_speechEndTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_speechEstimatedOutputBeginTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_audioStartLatency] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_serverFirstPacketTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_serverLastPacketTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_serverStreamedAudioDuration] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_audioDuration] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_privacySensitive] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_minimizeDeviceUsage] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_errorCode] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_encounteredIssues] = MEMORY[0x1E69E7CC0];
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_isServerTTSRacing] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_promptCount] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralAlignmentStall] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralAudioClick] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisQualityIssue] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_useHydraFrontend] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralFallback] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_isAudibleRequest] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalState] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalLevel] = -1;
  OUTLINED_FUNCTION_85(OBJC_IVAR___SiriTTSInstrumentationMetrics_dynamicPromptVoice);
  v1 = &v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_dynamicPromptStyle];
  v2 = type metadata accessor for InstrumentationMetrics();
  *v1 = 0;
  v1[1] = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t AudioDumpAction.__deallocating_deinit()
{
  AudioDumpAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t AudioDumpAction.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return v0;
}

uint64_t SynthesisCacheWritingAction.deinit()
{
  sub_1B1ADBF80();
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  sub_1B1AAC0B0(v0 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_cacheFile);
  v3 = *(v0 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_cacheHashKey + 8);

  v4 = *(v0 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_internalSettings);

  v5 = *(v0 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_observers);

  return v0;
}

uint64_t SynthesisCacheWritingAction.__deallocating_deinit()
{
  SynthesisCacheWritingAction.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B1ADBF80()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_notificationCenter);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_observers;
    OUTLINED_FUNCTION_19_2();
    v3 = *(v0 + v2);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v1;
      OUTLINED_FUNCTION_10_9();
      v6 = (v3 + 40);
      do
      {
        [v1 removeObserver:*(v6 - 1) name:*v6 object:0];
        v6 += 2;
        --v4;
      }

      while (v4);

      v7 = *(v0 + v2);
    }

    *(v0 + v2) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t AudioHandler.deinit()
{
  sub_1B1AD97C8();

  v1 = *(v0 + 24);

  sub_1B1A90C78(v0 + 40, &unk_1EB762990, &unk_1B1C352D0);
  sub_1B1A90C78(v0 + 80, &qword_1EB7618F8, &unk_1B1C352E0);
  return v0;
}

uint64_t AudioHandler.__deallocating_deinit()
{
  AudioHandler.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t SynthesisEngineSelectionAction.init(pool:)()
{
  sub_1B1AA2740();
  *(v0 + 32) = v1;
  *(v0 + 40) = sub_1B1AA1E5C();
  v2 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v2;
}

uint64_t sub_1B1ADC1C4(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_notificationCenter);
  if (v2)
  {
    v3 = result;
    v4 = v2;
    v5 = sub_1B1ADD940();
    v6 = OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_observers;
    swift_beginAccess();
    swift_unknownObjectRetain();
    v7 = v3;
    sub_1B1B36ED4();
    v8 = *(*(v1 + v6) + 16);
    sub_1B1B3DB74(v8);
    v9 = *(v1 + v6);
    *(v9 + 16) = v8 + 1;
    v10 = v9 + 16 * v8;
    *(v10 + 32) = v5;
    *(v10 + 40) = v7;
    *(v1 + v6) = v9;
    swift_endAccess();

    return swift_unknownObjectRelease();
  }

  return result;
}

void *CoreAnalyticsSynthesisHandler.init(notificationCenter:coreAnalyticsService:)(void *a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  v2[10] = 0;
  v2[2] = a1;
  v2[3] = v5;
  sub_1B1ADAC5C(a2, &v61);
  if (v62)
  {
    sub_1B1A8D0E0(&v61, &v63);
  }

  else
  {
    v6 = type metadata accessor for CoreAnalyticsService();
    v7 = swift_allocObject();
    v64 = v6;
    v65 = &off_1F28B79F0;
    *&v63 = v7;
  }

  v8 = a1;
  sub_1B1A8D0E0(&v63, (v2 + 4));
  v2[9] = [objc_allocWithZone(type metadata accessor for InstrumentationMetrics()) init];
  if (qword_1ED9A4E40 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();

  v9 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADACF0(v9);

  if (qword_1ED9A4D80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();

  v10 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20(v10, v11, v12);
  OUTLINED_FUNCTION_10_20();
  if (qword_1ED9A4EB8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();
  v13 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADBDC4(v13);

  if (qword_1ED9A4D20 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();
  v14 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADAD1C(v14);

  if (qword_1ED9A4D48 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();

  v15 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20(v15, v16, v17);
  OUTLINED_FUNCTION_10_20();
  if (qword_1ED9A4D90 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();
  v18 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADAD54(v18);

  if (qword_1ED9A4D58 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();
  v19 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADABD8(v19, v20, v21);

  if (qword_1ED9A4DC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();

  v22 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20(v22, v23, v24);
  OUTLINED_FUNCTION_10_20();
  if (qword_1ED9A4DF8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();
  v25 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADCDB0(v25);

  if (qword_1ED9A4E88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();
  v26 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADAC08(v26, v27, v28);

  if (qword_1ED9A4EA8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();
  v29 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADABD8(v29, v30, v31);

  if (qword_1ED9A4CD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();

  v32 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20(v32, v33, v34);
  OUTLINED_FUNCTION_10_20();
  if (qword_1ED9A4CF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();

  v35 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20(v35, v36, v37);
  OUTLINED_FUNCTION_10_20();
  if (qword_1ED9A4D08 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();

  v38 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20(v38, v39, v40);
  OUTLINED_FUNCTION_10_20();
  if (qword_1ED9A4DB0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();

  v41 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20(v41, v42, v43);
  OUTLINED_FUNCTION_10_20();
  if (qword_1EB760FD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();
  v44 = OUTLINED_FUNCTION_0_25();
  sub_1B1AF3A20(v44);

  if (qword_1EB760FC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();
  v45 = OUTLINED_FUNCTION_0_25();
  sub_1B1AF3A20(v45);

  if (qword_1ED9A4D68 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();

  v46 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20(v46, v47, v48);
  OUTLINED_FUNCTION_10_20();
  if (qword_1EB761010 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();

  v49 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20(v49, v50, v51);
  OUTLINED_FUNCTION_10_20();
  if (qword_1ED9A4E98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();

  v52 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20(v52, v53, v54);
  OUTLINED_FUNCTION_10_20();
  if (qword_1ED9A52D0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();
  v55 = OUTLINED_FUNCTION_0_25();
  sub_1B1AF3A54(v55);

  if (qword_1ED9A4E28 != -1)
  {
    OUTLINED_FUNCTION_5_22();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();
  v56 = OUTLINED_FUNCTION_0_25();
  sub_1B1AF3A54(v56);

  if (qword_1ED9A4E70 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  swift_allocObject();
  OUTLINED_FUNCTION_1_28();

  v57 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20(v57, v58, v59);

  sub_1B1AF3A80(a2);

  return v2;
}

uint64_t sub_1B1ADCD74()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t CacheReadingAction.init(pool:)()
{
  sub_1B1ADB340();
  v0[4] = v1;
  v0[5] = sub_1B1B18EB4();
  v0[6] = sub_1B1AA1E5C();
  sub_1B1AA1C5C();
  v0[7] = v2;
  v3 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v3;
}

uint64_t WorkflowNode.init(condition:)(uint64_t *a1)
{
  v2 = v1;
  sub_1B1A94FC4(a1, &v7);
  v4 = type metadata accessor for WorkflowNode.WorkflowCondition();
  v5 = swift_allocObject();
  sub_1B1A94FC4(&v7, v5 + 32);
  _s14SiriTTSService17PassThroughActionCACycfc_0();
  __swift_destroy_boxed_opaque_existential_0(&v7);
  v8 = v4;
  v9 = &off_1F28B8340;
  *&v7 = v5;
  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_1B1A8D0E0(&v7, v2 + 16);
  return v2;
}

uint64_t DeviceSynthesisAction.init(pool:)()
{
  v1 = v0;
  type metadata accessor for AsynchronousContext();
  swift_allocObject();
  *(v0 + 32) = sub_1B1ADA774();
  *(v0 + 56) = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v0 + 128) = 0;
  *(v0 + 136) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v0 + 144) = 0;
  sub_1B1ADD1B8();
  sub_1B1ADD454(v15, v12);
  v2 = v13;
  if (v13)
  {
    v3 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v4 = (*(v3 + 24))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v12);
    if ((v4 & 0x100000000) == 0)
    {
      v5 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B1ADA260(v12);
  }

  LODWORD(v4) = 0;
  v5 = 1;
LABEL_6:
  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  if (qword_1ED9A4ED0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B1C2C9D8();
  v7 = __swift_project_value_buffer(v6, qword_1ED9A4ED8);
  LOBYTE(v12[0]) = v5;
  *(v1 + 40) = static OS_dispatch_queue.synthesisQueue(label:qos:priority:)(0xD000000000000015, 0x80000001B1C40970, v7, v4 | (v5 << 32));
  *(v1 + 48) = sub_1B1AA1E5C();
  sub_1B1AA1C5C();
  *(v1 + 64) = v8;
  sub_1B1AA2740();
  v9 = v15[1];
  *(v1 + 72) = v15[0];
  *(v1 + 88) = v9;
  *(v1 + 104) = v16;
  *(v1 + 112) = v10;
  _s14SiriTTSService17PassThroughActionCACycfc_0();
  OUTLINED_FUNCTION_24();

  return v1;
}

uint64_t sub_1B1ADD1B8()
{
  OUTLINED_FUNCTION_18_2();
  v3 = v2;
  *&v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762098, &qword_1B1C37240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620A0, &unk_1B1C37248);
  sub_1B1C2CBD8();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_36_1();
  v4 = OUTLINED_FUNCTION_8_3();
  sub_1B1A93AEC(v4, v5, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620A8, &qword_1B1C37258);
  if (OUTLINED_FUNCTION_40_1())
  {

    return OUTLINED_FUNCTION_49_0(v7, v8, v9, v10, v11, v12, v13, v14, v43, v44, v45, v46, v47);
  }

  else
  {
    OUTLINED_FUNCTION_27_2();
    sub_1B1A90C78(&v47, &qword_1EB7620B0, &unk_1B1C37260);
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_37_3();
    v16 = OUTLINED_FUNCTION_8_3();
    sub_1B1A9EC94(v16, v17, v18);
    v19 = OUTLINED_FUNCTION_45_3();
    if (v0)
    {
      v0(v49, v19);
      v20 = OUTLINED_FUNCTION_43_2();
      if (v20)
      {
        OUTLINED_FUNCTION_49_0(v20, v21, v22, v23, v24, v25, v26, v27, v43, v44, v45, v46, v47);
        v48 = v1;
        *&v47 = swift_allocObject();
        sub_1B1A94FC4(v3, v47 + 16);
        v28 = OUTLINED_FUNCTION_48_3();
        OUTLINED_FUNCTION_47_1(v28, v29, v30, v31);
        swift_endAccess();
      }

      else
      {
        OUTLINED_FUNCTION_27_2();
        sub_1B1A90C78(&v47, &qword_1EB7620B0, &unk_1B1C37260);
        OUTLINED_FUNCTION_30_2();
        sub_1B1C2D538();

        OUTLINED_FUNCTION_1_4();
        *&v47 = v38;
        *(&v47 + 1) = v37;
        v39 = OUTLINED_FUNCTION_15();
        MEMORY[0x1B27381B0](v39);

        sub_1B1A9EC9C();
        v40 = OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_7_4(v40, v41);
      }

      v42 = OUTLINED_FUNCTION_13_2();
      return sub_1B1A949B4(v42);
    }

    else
    {
      OUTLINED_FUNCTION_30_2();
      sub_1B1C2D538();

      OUTLINED_FUNCTION_2();
      *&v47 = v33;
      *(&v47 + 1) = v32;
      v34 = OUTLINED_FUNCTION_15();
      MEMORY[0x1B27381B0](v34);

      sub_1B1A9EC9C();
      v35 = OUTLINED_FUNCTION_34();
      return OUTLINED_FUNCTION_7_4(v35, v36);
    }
  }
}

uint64_t sub_1B1ADD41C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B1ADD454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620B0, &unk_1B1C37260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B1ADD4C4()
{
  OUTLINED_FUNCTION_11_7();
  v3 = *(v0 + 96);
  if (v3)
  {
    OUTLINED_FUNCTION_5_9(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_0();
    swift_unknownObjectRetain();
    v2;
    sub_1B1B36ED4();
    v4 = *(*(v0 + 104) + 16);
    sub_1B1B3DB74(v4);
    v5 = *(v0 + 104);
    OUTLINED_FUNCTION_1_12(v4 + 1);
    *(v0 + 104) = v6;
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_15_10();
}

id NSNotificationCenter.addObserver(event:callback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_2_16();
  v12[2] = v8;
  v12[3] = &block_descriptor_7;
  v9 = _Block_copy(v12);

  v10 = [v3 addObserverForName:a1 object:0 queue:0 usingBlock:v9];
  _Block_release(v9);
  return v10;
}

uint64_t sub_1B1ADD63C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t AudioDumpAction.init(pool:)()
{
  v1 = sub_1B1C2D128();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = sub_1B1C2D118();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16();
  v12 = sub_1B1C2C9D8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_16();
  type metadata accessor for AsynchronousContext();
  swift_allocObject();
  *(v0 + 16) = sub_1B1ADA774();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  sub_1B1AA7918();
  sub_1B1C2C9C8();
  sub_1B1AADE74(&qword_1ED9A4EC8, MEMORY[0x1E69E8030]);
  sub_1B1C2D958();
  (*(v4 + 104))(v9, *MEMORY[0x1E69E8090], v1);
  *(v0 + 24) = sub_1B1C2D158();
  sub_1B1AA1C5C();
  *(v0 + 32) = v14;
  sub_1B1ADDB80();

  *(v0 + 40) = 0;
  return v0;
}

uint64_t type metadata accessor for SynthesisCacheWritingAction()
{
  result = qword_1EB7610C0;
  if (!qword_1EB7610C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B1ADD9B0()
{
  OUTLINED_FUNCTION_18_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762178, &qword_1B1C37338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762180, &unk_1B1C37340);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_36_1();
  v1 = OUTLINED_FUNCTION_8_3();
  sub_1B1A93AEC(v1, v2, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  sub_1B1A8E474(0, &qword_1EB761048, 0x1E696AE30);
  if (OUTLINED_FUNCTION_6_5())
  {

    return v20;
  }

  else
  {
    OUTLINED_FUNCTION_14_6();
    OUTLINED_FUNCTION_37_3();
    v5 = OUTLINED_FUNCTION_8_3();
    sub_1B1A9EC94(v5, v6, v7);
    OUTLINED_FUNCTION_17_5();
    if (v0)
    {
      OUTLINED_FUNCTION_21_2();
      v0();
      if (OUTLINED_FUNCTION_10_6())
      {
        OUTLINED_FUNCTION_13_6();
        v8 = v19;
        OUTLINED_FUNCTION_12_3(v8, v9, v10, v11, v12, v13, v14);
        swift_endAccess();
        OUTLINED_FUNCTION_35_4();
        return v8;
      }

      else
      {
        OUTLINED_FUNCTION_9_3();
        sub_1B1C2D538();

        OUTLINED_FUNCTION_0_3();

        sub_1B1A9EC9C();
        v17 = OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_7_4(v17, v18);
        return OUTLINED_FUNCTION_35_4();
      }
    }

    else
    {
      OUTLINED_FUNCTION_9_3();
      sub_1B1C2D538();

      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_11_3();

      sub_1B1A9EC9C();
      v15 = OUTLINED_FUNCTION_34();
      return OUTLINED_FUNCTION_7_4(v15, v16);
    }
  }
}

uint64_t sub_1B1ADDB80()
{
  OUTLINED_FUNCTION_18_2();
  v2 = v1;
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762148, &qword_1B1C37308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762150, &qword_1B1C37310);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_36_1();
  v3 = OUTLINED_FUNCTION_8_3();
  sub_1B1A93AEC(v3, v4, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {

    *v2 = v24 & 1;
  }

  else
  {
    OUTLINED_FUNCTION_14_6();
    OUTLINED_FUNCTION_37_3();
    v7 = OUTLINED_FUNCTION_8_3();
    sub_1B1A9EC94(v7, v8, v9);
    v10 = OUTLINED_FUNCTION_45_3();
    if (v0)
    {
      v0(v25, v10);
      if (swift_dynamicCast())
      {
        *v2 = v23 & 1;
        v25[3] = &type metadata for Entitlements;
        LOBYTE(v25[0]) = v23 & 1;
        v11 = OUTLINED_FUNCTION_13_6();
        OUTLINED_FUNCTION_12_3(v11, v12, v13, v14, v15, v16, v17);
        swift_endAccess();
      }

      else
      {
        OUTLINED_FUNCTION_9_3();
        sub_1B1C2D538();

        OUTLINED_FUNCTION_0_3();

        sub_1B1A9EC9C();
        v20 = OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_7_4(v20, v21);
      }

      v22 = OUTLINED_FUNCTION_13_2();
      return sub_1B1A949B4(v22);
    }

    else
    {
      OUTLINED_FUNCTION_9_3();
      sub_1B1C2D538();

      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_11_3();

      sub_1B1A9EC9C();
      v18 = OUTLINED_FUNCTION_34();
      return OUTLINED_FUNCTION_7_4(v18, v19);
    }
  }

  return result;
}

void *sub_1B1ADDD74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v18[4] = a5;
  v18[5] = v12;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1B1AADEBC;
  v18[3] = a6;
  v13 = _Block_copy(v18);
  v14 = a1;

  v15 = [v6 addObserverForName:v14 object:0 queue:0 usingBlock:v13];
  v16 = OUTLINED_FUNCTION_24();
  _Block_release(v16);
  return v6;
}

uint64_t sub_1B1ADDE70(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_65();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4);
  }

  return result;
}

uint64_t sub_1B1ADDEDC(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4);
  }

  return result;
}

uint64_t sub_1B1ADDF50(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_17_1();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4);
  }

  return result;
}

void sub_1B1ADE008()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1B1AA9790();
}

void sub_1B1ADE08C(void *a1, uint64_t *a2)
{
  v4 = *(v2 + 72);
  v5 = *a2;
  OUTLINED_FUNCTION_19_2();
  v6 = *(v4 + v5);
  *(v4 + v5) = a1;
  v7 = a1;
}

void sub_1B1ADE118()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v4 = sub_1B1C2C838();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  v13 = sub_1B1C2C7F8();
  v14 = OUTLINED_FUNCTION_7(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10_8();
  if (*(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_voiceSelectionInternal))
  {
    v34 = v19;

    v20 = v3;
    v21 = sub_1B1C2C818();
    sub_1B1C2C848();
    v22 = sub_1B1C2D178();

    if (sub_1B1C2D278())
    {

      sub_1B1C2C878();

      if ((*(v7 + 88))(v12, v4) == *MEMORY[0x1E69E93E8])
      {
        v23 = 0;
        v24 = 0;
        v33 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v12, v4);
        v33 = "voice=%s";
        v24 = 2;
        v23 = 1;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = v24;
      *(v25 + 1) = v23;
      *(v25 + 2) = 2080;
      v27 = [v20 description];
      v28 = sub_1B1C2CB58();
      v30 = v29;

      v31 = sub_1B1A930E4(v28, v30, &v35);

      *(v25 + 4) = v31;
      v32 = sub_1B1C2C7D8();
      _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v21, v22, v32, "TTSVoiceSelect", v33, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    (*(v16 + 8))(v1, v34);
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1ADE418()
{
  OUTLINED_FUNCTION_59_5();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v84 - v9;
  v11 = sub_1B1C2C478();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_40_8();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  v20 = mach_absolute_time();
  v21 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_voiceSelectStartTimestamp);
  v22 = 0.0;
  v23 = v20 >= v21;
  v24 = v20 - v21;
  if (v24 != 0 && v23)
  {
    v25 = v24;
    if (qword_1ED9A5270 != -1)
    {
      OUTLINED_FUNCTION_73();
    }

    v22 = *&qword_1ED9AA500 * v25;
  }

  *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_voiceSelectLatencyInSeconds) = v22;
  v26 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedVoice);
  *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedVoice) = v4;
  v27 = v4;

  v28 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65();
  sub_1B1AADD60(v2 + v28, v10);
  OUTLINED_FUNCTION_13(v10);
  if (v29)
  {
    sub_1B1AABFB0(v10);
    goto LABEL_45;
  }

  (*(v14 + 32))(v19, v10, v11);
  if (!sub_1B1ADEBA8(v2, v27))
  {
LABEL_44:
    (*(v14 + 8))(v19, v11);
    goto LABEL_45;
  }

  v30 = [objc_allocWithZone(MEMORY[0x1E69CF7F8]) init];
  if (!v30)
  {
LABEL_34:
    v72 = [objc_allocWithZone(MEMORY[0x1E69CF780]) init];
    if (v72)
    {
      v73 = v72;
      [v72 setVoiceFallbackOccurred_];
      sub_1B1AABABC();
      v75 = v74;
      OUTLINED_FUNCTION_67_4(v74, sel_setEventMetadata_);

      v76 = [v73 eventMetadata];
      if (v76)
      {
        v77 = v76;
        sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
        (*(v14 + 16))(v1, v19, v11);
        v78 = sub_1B1AABA20(v1);
        OUTLINED_FUNCTION_36_10(v78, sel_setTtsId_);
      }

      v79 = [v73 eventMetadata];
      if (v79)
      {
        v80 = v79;
        if (*(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8))
        {
          v81 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
          v82 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8);

          v83 = sub_1B1C2CB28();
        }

        else
        {
          v83 = 0;
        }

        [v80 setClientId_];
      }

      sub_1B1AABE04(v73);

      goto LABEL_44;
    }

    (*(v14 + 8))(v19, v11);

LABEL_45:
    OUTLINED_FUNCTION_58_7();
    return;
  }

  v31 = objc_allocWithZone(MEMORY[0x1E69CF658]);
  v86 = v30;
  v32 = v30;
  v33 = [v31 &selRef_NewAssetNotification];
  [v32 setVoiceSettings_];

  v34 = [v32 voiceSettings];
  if (v34)
  {
    v35 = v34;
    v36 = OBJC_IVAR___SiriTTSSynthesisVoice_gender;
    OUTLINED_FUNCTION_65();
    [v35 setVoiceGender_];
  }

  v37 = [v32 voiceSettings];
  if (v37)
  {
    v38 = v37;
    v39 = &v27[OBJC_IVAR___SiriTTSSynthesisVoice_name];
    OUTLINED_FUNCTION_65();
    if (*(v39 + 1))
    {
      v40 = *v39;

      v41 = sub_1B1C2CB28();
    }

    else
    {
      v41 = 0;
    }

    [v38 setVoiceName_];
  }

  v42 = [v32 voiceSettings];
  if (v42)
  {
    v43 = v42;
    v85 = objc_opt_self();
    v44 = v1;
    v45 = v19;
    v46 = &v27[OBJC_IVAR___SiriTTSSynthesisVoice_language];
    OUTLINED_FUNCTION_65();
    v47 = *v46;
    v48 = *(v46 + 1);

    v49 = sub_1B1C2CB28();
    v19 = v45;
    v1 = v44;

    v50 = [v85 convertLanguageCodeToSchemaLocale_];

    [v43 setVoiceAccent_];
  }

  v51 = objc_allocWithZone(MEMORY[0x1E69CF7F0]);
  v52 = v32;
  v53 = [v51 init];
  [v52 setContext_];

  v54 = OUTLINED_FUNCTION_66_6();
  if (v54)
  {
    v55 = v54;
    v56 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
    OUTLINED_FUNCTION_65();
    [v55 setVoiceType_];
  }

  v57 = OUTLINED_FUNCTION_66_6();
  if (v57)
  {
    v58 = v57;
    v59 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
    OUTLINED_FUNCTION_65();
    [v58 setVoiceFootprint_];
  }

  v60 = OUTLINED_FUNCTION_66_6();
  if (v60)
  {
    v61 = v60;
    v62 = &v27[OBJC_IVAR___SiriTTSSynthesisVoice_name];
    OUTLINED_FUNCTION_65();
    v63 = v62[1];
    if (v63)
    {
      v64 = _s14SiriTTSService14SynthesisVoiceC9voiceEnum7forNameSo08SISchemadH0VSS_tFZ_0(*v62, v63);
    }

    else
    {
      v64 = 0;
    }

    [v61 setVoiceName_];
  }

  v65 = OUTLINED_FUNCTION_66_6();
  if (!v65)
  {
LABEL_33:
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    OUTLINED_FUNCTION_47_8();
    v69(v1);
    v70 = v52;
    v71 = sub_1B1AABA20(v1);
    [v70 setContextId_];

    v30 = v86;
    goto LABEL_34;
  }

  v66 = v65;
  v67 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
  OUTLINED_FUNCTION_65();
  v68 = *(v67 + v27);
  if ((v68 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v68))
  {
    [v66 setVoiceVersion_];

    goto LABEL_33;
  }

  __break(1u);
}

BOOL sub_1B1ADEBA8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_expectedVoice;
  v5 = *(a1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_expectedVoice);
  if (v5)
  {
    v6 = (v5 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
    swift_beginAccess();
    v8 = *v6;
    v7 = v6[1];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = (a2 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
  swift_beginAccess();
  if (!v7)
  {
    return 1;
  }

  if (v8 == *v9 && v7 == v9[1])
  {
  }

  else
  {
    v11 = sub_1B1C2D7A8();

    if ((v11 & 1) == 0)
    {
      return 1;
    }
  }

  v12 = *(a1 + v4);
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = (v12 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
  swift_beginAccess();
  v14 = v13[1];
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = *v13;
  v16 = (a2 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
  swift_beginAccess();
  v17 = v16[1];
  if (v17)
  {
    v18 = v15 == *v16 && v14 == v17;
    if (v18 || (sub_1B1C2D7A8() & 1) != 0)
    {
LABEL_20:
      v19 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
      swift_beginAccess();
      return *(a2 + v19) == 1;
    }
  }

  return 1;
}

uint64_t sub_1B1ADED40()
{
  v0 = sub_1B1C2D7F8();
  OUTLINED_FUNCTION_22_3(v0, sel_postNotificationName_object_);
  return swift_unknownObjectRelease();
}

void sub_1B1ADED9C(uint64_t a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {
    v28 = v26[0];
    a3(&v28);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v12 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v12, qword_1ED9A9120);
    (*(v7 + 16))(v10, a1, v6);
    v13 = a2;
    v14 = sub_1B1C2C888();
    v15 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136315650;
      v18 = sub_1B1C2CB58();
      v20 = sub_1B1A930E4(v18, v19, v26);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1B1A930E4(0x656C62756F44, 0xE600000000000000, v26);
      *(v16 + 22) = 2080;
      sub_1B1C2BED8();
      sub_1B1A90C78(v27, &qword_1EB761DE0, &qword_1B1C352C0);
      v27[0] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
      v21 = sub_1B1C2CBD8();
      v23 = v22;
      (*(v7 + 8))(v10, v6);
      v24 = sub_1B1A930E4(v21, v23, v26);

      *(v16 + 24) = v24;
      _os_log_impl(&dword_1B1A8A000, v14, v15, "Event '%s' expect associated object as %s, got: %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v17, -1, -1);
      MEMORY[0x1B2739FD0](v16, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_1B1ADF100(double *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1ADF168(v1);
  }

  return result;
}

uint64_t sub_1B1ADF168(double a1)
{
  v3 = *(v1 + 72);
  v4 = mach_absolute_time();
  v5 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisEndTime;
  OUTLINED_FUNCTION_66_0();
  *(v3 + v5) = v4;
  v6 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioDuration;
  result = OUTLINED_FUNCTION_66_0();
  *(v3 + v6) = a1;
  return result;
}

uint64_t sub_1B1ADF1EC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1ADF244();
  }

  return result;
}

void sub_1B1ADF244()
{
  OUTLINED_FUNCTION_25();
  v1 = sub_1B1C2C838();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16();
  v7 = sub_1B1C2C7F8();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10_8();
  if (*(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_synthesisInterval))
  {
    v11 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_synthesisInterval);

    v12 = sub_1B1C2C818();
    sub_1B1C2C848();
    sub_1B1C2D178();
    if (sub_1B1C2D278())
    {

      sub_1B1C2C878();

      v13 = *(v4 + 88);
      v14 = OUTLINED_FUNCTION_15_8();
      if (v15(v14) != *MEMORY[0x1E69E93E8])
      {
        v16 = *(v4 + 8);
        v17 = OUTLINED_FUNCTION_15_8();
        v18(v17);
      }

      *OUTLINED_FUNCTION_20_0() = 0;
      v19 = sub_1B1C2C7D8();
      OUTLINED_FUNCTION_12_5(&dword_1B1A8A000, v20, v21, v19, "TTSSynthesis");
      OUTLINED_FUNCTION_11();
    }

    v22 = OUTLINED_FUNCTION_9_5();
    v23(v22);
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1ADF440()
{
  OUTLINED_FUNCTION_59_5();
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_60_3();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_28();
  v18 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v19 = mach_absolute_time();
  v20 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisEndTime;
  OUTLINED_FUNCTION_66_0();
  *(v18 + v20) = v19;
  v21 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioDuration;
  OUTLINED_FUNCTION_66_0();
  *(v18 + v21) = v6;
  if (*(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logSynthesisEvents) != 1)
  {
    goto LABEL_26;
  }

  v22 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65();
  sub_1B1AADD60(v4 + v22, v2);
  OUTLINED_FUNCTION_48_0(v2, 1, v11);
  if (v23)
  {
    sub_1B1AABFB0(v2);
LABEL_26:
    OUTLINED_FUNCTION_58_7();
    return;
  }

  (*(v14 + 32))(v1, v2, v11);
  v24 = [objc_allocWithZone(MEMORY[0x1E69CF7D8]) init];
  v25 = v24;
  v63 = v24;
  if (!v24)
  {
LABEL_14:
    v41 = [objc_allocWithZone(MEMORY[0x1E69CF798]) init];
    if (v41)
    {
      sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
      OUTLINED_FUNCTION_47_8();
      v42(v3);
      v43 = v41;
      v44 = sub_1B1AABA20(v3);
      OUTLINED_FUNCTION_65_4(v44, sel_setContextId_);
    }

    v45 = v3;
    [v41 setEnded_];
    v46 = [objc_allocWithZone(MEMORY[0x1E69CF780]) init];
    if (v46)
    {
      v47 = v46;
      [v46 setSynthesisContext_];
      sub_1B1AABABC();
      v49 = v48;
      OUTLINED_FUNCTION_36_10(v48, sel_setEventMetadata_);

      v50 = OUTLINED_FUNCTION_50_6();
      if (v50)
      {
        v25 = v50;
        sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
        OUTLINED_FUNCTION_43_9();
        v51(v45, v1, v11);
        v52 = sub_1B1AABA20(v45);
        OUTLINED_FUNCTION_35_11(v52, sel_setTtsId_);
      }

      v53 = OUTLINED_FUNCTION_50_6();
      if (v53)
      {
        v54 = v53;
        v55 = v14;
        OUTLINED_FUNCTION_54_4(OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
        if (v25)
        {
          v58 = *v57;

          v59 = sub_1B1C2CB28();
        }

        else
        {
          v59 = 0;
        }

        OUTLINED_FUNCTION_70_3(v56, sel_setClientId_);

        v14 = v55;
      }

      OUTLINED_FUNCTION_68_4();

      (*(v14 + 8))(v1, v11);
    }

    else
    {
      (*(v14 + 8))(v1, v11);
    }

    goto LABEL_26;
  }

  v26 = *(v18 + v21);
  *&v26 = v26;
  [v24 setSynthesizedAudioDurationInSecond_];
  v27 = v25;
  InstrumentationMetrics.synthesisLatency.getter();
  *&v28 = v28;
  [v27 setSynthesisLatencyInSecond_];

  v29 = v27;
  InstrumentationMetrics.realTimeFactor.getter();
  *&v30 = v30;
  [v29 setSynthesisRealTimeFactor_];

  v31 = OBJC_IVAR___SiriTTSInstrumentationMetrics_promptCount;
  OUTLINED_FUNCTION_65();
  v32 = *(v18 + v31);
  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v62 = v3;
    if (!HIDWORD(v32))
    {
      [v29 setPromptCount_];
      v33 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_encounteredIssues;
      OUTLINED_FUNCTION_65();
      v34 = *(v4 + v33);
      v35 = *(v34 + 16);
      if (v35)
      {
        v61 = v1;
        v64 = MEMORY[0x1E69E7CC0];
        v60 = v29;
        v36 = v29;

        sub_1B1C2D5B8();
        v37 = 32;
        do
        {
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          sub_1B1C2D588();
          v38 = *(v64 + 16);
          sub_1B1C2D5C8();
          sub_1B1C2D5D8();
          sub_1B1C2D598();
          v37 += 24;
          --v35;
        }

        while (v35);

        v39 = v64;
        v1 = v61;
        v29 = v60;
      }

      else
      {
        v40 = v29;
        v39 = MEMORY[0x1E69E7CC0];
      }

      sub_1B1AAB8A8(v39, v29);

      v3 = v62;
      v25 = v63;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1B1ADF9EC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1B1B04C5C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C10, &qword_1B1C35D88);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1ADFB04(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1B1C2D428();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1B1ADFB44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621F0, &qword_1B1C37478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1ADFBB4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627C8, &unk_1B1C40E70);
    v1 = sub_1B1C2D6A8();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1B1ADFC58(v2, 1, &v4);

  return v4;
}

void sub_1B1ADFC58(uint64_t a1, char a2, void *a3)
{
  v26 = *(a1 + 16);
  if (!v26)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1B1C2D818();
      __break(1u);
      goto LABEL_22;
    }

    sub_1B1B50850(i, &v31, &qword_1EB761C10, &qword_1B1C35D88);
    v8 = v31;
    v7 = v32;
    v29 = v31;
    v30 = v32;
    sub_1B1A9EEE0(&v33, v28);
    v9 = *a3;
    v11 = sub_1B1A8EB10();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762480, &unk_1B1C37E50);
      sub_1B1C2D638();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_1B1A9EEE0(v28, (v19[7] + 32 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    ++v5;
    v19[2] = v23;
    a2 = 1;
    if (v26 == v5)
    {

      return;
    }
  }

  sub_1B1AC891C(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_1B1A8EB10();
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v34 = v24;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762090, &qword_1B1C38450);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0(v28);

    return;
  }

LABEL_22:
  sub_1B1C2D538();
  MEMORY[0x1B27381B0](0xD00000000000001BLL, 0x80000001B1C52DB0);
  sub_1B1C2D618();
  MEMORY[0x1B27381B0](39, 0xE100000000000000);
  sub_1B1C2D658();
  __break(1u);
}

uint64_t sub_1B1ADFF70(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1B1C40E20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

id sub_1B1ADFFD8()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_authorizedBundle] = 0;
  ObjectType = swift_getObjectType();
  v3 = sub_1B1AE0130(5);
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0xE000000000000000;
  if (v4)
  {
    v6 = v4;
  }

  v7 = &v0[OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_cookie];
  *v7 = v5;
  v7[1] = v6;
  v8 = sub_1B1AE0130(6);
  v9 = &v0[OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_bundlePath];
  *v9 = v8;
  v9[1] = v10;
  v11 = sub_1B1AE026C(4, ObjectType);
  if (!v11)
  {
    v11 = sub_1B1C2CAB8();
  }

  *&v0[OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_proxy_attr] = v11;
  v12 = sub_1B1AE0130(8);
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  *&v1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_assetQuality] = sub_1B1ABAA54(v14, v15);
  v18.receiver = v1;
  v18.super_class = type metadata accessor for TTSAssetProxyAsset();
  v16 = objc_msgSendSuper2(&v18, sel_init);
  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_1B1AE0130(char a1)
{
  sub_1B1AE53F8(a1);
  v2 = sub_1B1C2CBF8();

  string = xpc_dictionary_get_string(v1, (v2 + 32));

  if (string)
  {
    return MEMORY[0x1B27380E0](string);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1AE019C(char a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t *a4, uint64_t *a5)
{
  sub_1B1AE53F8(a1);
  v9 = sub_1B1C2CBF8();

  v10 = a3(v5, v9 + 32);

  if (!v10)
  {
    return 0;
  }

  sub_1B1AE5508(v13);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1AE0294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

xpc_object_t sub_1B1AE03A8(char a1)
{
  sub_1B1AE53F8(a1);
  v2 = sub_1B1C2CBF8();

  v3 = xpc_dictionary_get_value(v1, (v2 + 32));

  return v3;
}

uint64_t sub_1B1AE0450()
{
  result = sub_1B1C00910();
  qword_1ED9AA5B0 = result;
  return result;
}

id sub_1B1AE0470()
{
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  OUTLINED_FUNCTION_1_15();
  result = sub_1B1BFFEC8();
  qword_1ED9A9638 = result;
  return result;
}

uint64_t sub_1B1AE04CC()
{
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  v0 = OUTLINED_FUNCTION_1_15();
  result = sub_1B1ABAA54(v0 | 0x6D75696D650000, 0xE700000000000000);
  qword_1ED9A90A8 = result;
  return result;
}

uint64_t sub_1B1AE0520()
{
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  v0 = OUTLINED_FUNCTION_1_15();
  result = sub_1B1ABAA54(v0 | 0x686D75696D650000, 0xEB00000000686769);
  qword_1ED9A9598 = result;
  return result;
}

uint64_t sub_1B1AE057C()
{
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  result = sub_1B1ABAA54(0x6C61727574616ELL, 0xE700000000000000);
  qword_1ED9A8D98 = result;
  return result;
}

uint64_t sub_1B1AE05D4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624B0, &unk_1B1C35DA0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1B1AA8B84((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1AE06E4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B1AE05D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B1AE0704()
{
  v1 = v0;
  type metadata accessor for TTSAssetUAFAsset(0);
  OUTLINED_FUNCTION_107();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v10 = &OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier;
LABEL_5:
    OUTLINED_FUNCTION_52_1(v2, v3, v4, v5, v6, v7, v8, v9, v85, v93, v98, v104, v108, *(v2 + *v10));

    v11 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_16_10(isUniquelyReferenced_nonNull_native, 0x65696B6F6F63, v13, isUniquelyReferenced_nonNull_native, v14, v15, v16, v17, v86, v11, v99);
    sub_1B1A9EEF0();
    v18 = v94;
    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v19 = *v1;
    OUTLINED_FUNCTION_24_2();
    v21 = (*(v20 + 120))();
    if (qword_1ED9A9960 != -1)
    {
      swift_once();
    }

    v22 = qword_1ED9A9968;
    v23 = sub_1B1C2D248();

    if (v23)
    {
      v24 = *v1;
      OUTLINED_FUNCTION_24_2();
      v26 = (*(v25 + 272))();
    }

    else
    {
      v26 = sub_1B1B19C90();
    }

    v27 = v26;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
    *&v112 = v27;
    OUTLINED_FUNCTION_52_1(v28, v29, v30, v31, v32, v33, v34, v35, v87, v94, v99, v105, v109, v112);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_16_10(v36, 0x7475626972747461, v37, v36, v38, v39, v40, v41, v88, v18, v100);
    sub_1B1A9EEF0();
    v42 = v95;
    v43 = *v1;
    OUTLINED_FUNCTION_24_2();
    v45 = (*(v44 + 144))();
    v46 = [v45 string];

    v47 = sub_1B1C2CB58();
    v49 = v48;

    *&v113 = v47;
    *(&v113 + 1) = v49;
    OUTLINED_FUNCTION_52_1(v50, v51, v52, v53, v54, v55, v56, v57, v89, v95, v101, v106, v110, v113);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_16_10(v58, 0x7974696C617571, v59, v58, v60, v61, v62, v63, v90, v42, v102);
    sub_1B1A9EEF0();
    v64 = v96;
    v65 = sub_1B1AE5B90();
    if (v66)
    {
      *&v114 = v65;
      *(&v114 + 1) = v66;
      OUTLINED_FUNCTION_52_1(v65, v66, v67, v68, v69, v70, v71, v72, v91, v96, v102, v107, v111, v114);
      v73 = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_16_10(v73, 0x656C646E7562, v74, v73, v75, v76, v77, v78, v92, v64, v103);
      sub_1B1A9EEF0();
      return v97;
    }

    return v64;
  }

  type metadata accessor for TTSAssetTrialAsset();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v10 = &OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName;
    goto LABEL_5;
  }

  v79 = sub_1B1C2D0B8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  v80 = qword_1ED9AA668;
  if (os_log_type_enabled(qword_1ED9AA668, v79))
  {
    v81 = OUTLINED_FUNCTION_21_0();
    v82 = swift_slowAlloc();
    *v81 = 138543362;
    *(v81 + 4) = v1;
    *v82 = v1;
    v83 = v1;
    _os_log_impl(&dword_1B1A8A000, v80, v79, "Unexpected non UAF/Trial asset %{public}@", v81, 0xCu);
    sub_1B1A90C78(v82, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t OUTLINED_FUNCTION_69_1()
{
  result = type metadata accessor for Realtime_V1_SessionUpdate(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_69_3()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_69_4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1B1AE0B30()
{
  OUTLINED_FUNCTION_39_0(OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr);
  v0 = sub_1B1B42CD8();

  v1 = sub_1B1AE0B90(v0);

  return v1;
}

uint64_t sub_1B1AE0B90(uint64_t a1)
{
  v3 = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v6 = v5();
  if (qword_1ED9A9960 != -1)
  {
    OUTLINED_FUNCTION_12_4();
  }

  v7 = qword_1ED9A9968;
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v8 = v7;
  OUTLINED_FUNCTION_16_7();
  v9 = sub_1B1C2D248();

  if (v9)
  {

    return sub_1B1C2CAB8();
  }

  v11 = [v3 primaryLanguage];
  v12 = sub_1B1C2CB58();
  v14 = v13;

  v275.n128_u64[0] = v12;
  v275.n128_u64[1] = v14;
  *&v274[0] = 45;
  *(&v274[0] + 1) = 0xE100000000000000;
  v270 = 95;
  v271 = 0xE100000000000000;
  v15 = sub_1B1A8EDAC();
  v16 = MEMORY[0x1E69E6158];
  v255 = v15;
  v256 = v15;
  v253 = MEMORY[0x1E69E6158];
  v254 = v15;
  OUTLINED_FUNCTION_4();
  v261 = sub_1B1C2D398();
  v262 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621E0, &qword_1B1C37470);
  v18 = swift_allocObject();
  v18[1] = xmmword_1B1C373B0;
  *(v18 + 32) = 2;
  v19 = sub_1B1AE25E8();
  *(v18 + 8) = v16;
  *(v18 + 5) = v19;
  *(v18 + 6) = v20;
  *(v18 + 72) = 4;
  OUTLINED_FUNCTION_8_4();
  v257 = *(v21 + 152);
  v26 = (v257)(v22, v23, v24, v25);
  *(v18 + 13) = v16;
  *(v18 + 10) = v26;
  *(v18 + 11) = v27;
  *(v18 + 112) = 5;
  OUTLINED_FUNCTION_8_4();
  v33 = (*(v28 + 160))(v29, v30, v31, v32);
  *(v18 + 18) = v16;
  *(v18 + 15) = v33;
  *(v18 + 16) = v34;
  *(v18 + 152) = 6;
  OUTLINED_FUNCTION_8_4();
  v40 = (*(v35 + 200))(v36, v37, v38, v39);
  v41 = sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
  *(v18 + 23) = v41;
  if (!v40)
  {
    v40 = sub_1B1C2D228();
  }

  v264 = a1;
  v258 = v5;
  *(v18 + 20) = v40;
  *(v18 + 192) = 9;
  OUTLINED_FUNCTION_8_4();
  v47 = (*(v42 + 184))(v43, v44, v45, v46);
  v48 = *(v47 + 16);
  v260 = v41;
  if (v48)
  {
    v268 = MEMORY[0x1E69E7CC0];
    sub_1B1AC9FA8();
    v49 = v268;
    v50 = (v47 + 40);
    do
    {
      v51 = *v50;
      v275.n128_u64[0] = *(v50 - 1);
      v275.n128_u64[1] = v51;
      *&v274[0] = 45;
      *(&v274[0] + 1) = 0xE100000000000000;
      v270 = 95;
      v271 = 0xE100000000000000;
      OUTLINED_FUNCTION_17_6();
      v253 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_4();
      v52 = sub_1B1C2D398();
      v54 = v53;
      v268 = v49;
      v56 = *(v49 + 16);
      v55 = *(v49 + 24);
      if (v56 >= v55 >> 1)
      {
        OUTLINED_FUNCTION_19_1(v55);
        sub_1B1AC9FA8();
        v49 = v268;
      }

      *(v49 + 16) = v56 + 1;
      v57 = v49 + 16 * v56;
      *(v57 + 32) = v52;
      *(v57 + 40) = v54;
      v50 += 2;
      --v48;
    }

    while (v48);

    v41 = v260;
  }

  else
  {

    v49 = MEMORY[0x1E69E7CC0];
  }

  *(v18 + 28) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  *(v18 + 25) = v49;
  *(v18 + 232) = 10;
  v58 = MEMORY[0x1E69E6158];
  *(v18 + 33) = MEMORY[0x1E69E6158];
  *(v18 + 30) = v261;
  *(v18 + 31) = v262;
  *(v18 + 272) = 11;
  v59 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xA8);

  v61 = v59(v60);
  *(v18 + 38) = MEMORY[0x1E69E6530];
  *(v18 + 35) = v61;
  *(v18 + 312) = 14;
  OUTLINED_FUNCTION_3_6();
  v259 = *(v62 + 136);
  v67 = (v259)(v63, v64, v65, v66);
  v68 = [v67 string];

  v69 = sub_1B1C2CB58();
  v71 = v70;

  *(v18 + 43) = v58;
  *(v18 + 40) = v69;
  *(v18 + 41) = v71;
  *(v18 + 352) = 20;
  v72 = [v3 description];
  v73 = sub_1B1C2CB58();
  v75 = v74;

  *(v18 + 48) = v58;
  *(v18 + 45) = v73;
  *(v18 + 46) = v75;
  sub_1B1AE309C();
  v278 = sub_1B1C2CAB8();
  OUTLINED_FUNCTION_9_4();
  sub_1B1A93AEC(v76 | 8, v77 | 0x8000000000000000, v264);
  if (v276[0].n128_u64[1])
  {
    OUTLINED_FUNCTION_7_5();
    v78 = swift_dynamicCast();
    if (v78)
    {
      v276[0].n128_u64[1] = v41;
      v275.n128_u64[0] = *&v274[0];
      goto LABEL_27;
    }
  }

  else
  {
    v78 = sub_1B1A9937C(&v275);
  }

  v18 = (v258)(v78);
  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v79 = qword_1ED9A9980;
  OUTLINED_FUNCTION_16_7();
  v80 = sub_1B1C2D248();

  if ((v80 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_1B1AE3480();
  if ((v81 & 0x100000000) != 0)
  {
    __break(1u);
LABEL_25:
    sub_1B1AE3480();
    if ((v81 & 0x100000000) != 0)
    {
      __break(1u);
      JUMPOUT(0x1B1AE25C8);
    }
  }

  v276[0].n128_u64[1] = MEMORY[0x1E69E7668];
  v275.n128_u32[0] = v81;
LABEL_27:
  v82 = OUTLINED_FUNCTION_10_7();
  sub_1B1AE3710(v82, 0);
  sub_1B1A93AEC(0x6D754E6563696F56, 0xEE00444963697265, v264);
  if (v276[0].n128_u64[1])
  {
    OUTLINED_FUNCTION_7_5();
    if (swift_dynamicCast())
    {
      v276[0].n128_u64[1] = v41;
      v275.n128_u64[0] = *&v274[0];
      sub_1B1AE3710(&v275, 1);
      goto LABEL_44;
    }
  }

  else
  {
    sub_1B1A9937C(&v275);
  }

  v83 = [v3 primaryLanguage];
  v84 = sub_1B1C2CB58();
  v86 = v85;

  v87 = v257();
  v89 = v88;
  v275.n128_u64[0] = v84;
  v275.n128_u64[1] = v86;

  MEMORY[0x1B27381B0](v87, v89);

  LODWORD(v86) = sub_1B1AE406C(5381, v275.n128_u64[0], v275.n128_u64[1]);

  v90 = v86 & 0x7FFFFFF;
  OUTLINED_FUNCTION_3_6();
  v92 = (*(v91 + 144))();
  v93 = qword_1ED9A9628;
  v18 = v92;
  if (v93 != -1)
  {
    OUTLINED_FUNCTION_14_0();
  }

  v94 = qword_1ED9A9598;
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  v95 = v94;
  v96 = sub_1B1C2D248();

  if (v96)
  {

    v97 = 900;
  }

  else
  {
    v98 = qword_1ED9A9100;
    v18 = v18;
    if (v98 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v99 = qword_1ED9A90A8;
    v100 = sub_1B1C2D248();

    if (v100)
    {

      v97 = 800;
    }

    else
    {
      if (qword_1ED9A97D8 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v101 = qword_1ED9A9830;
      v102 = sub_1B1C2D248();

      v97 = 800;
      if (v102)
      {
        v97 = 700;
      }
    }
  }

  v276[0].n128_u64[1] = MEMORY[0x1E69E6530];
  v275.n128_u64[0] = v97 + v90 % 0x64 + 1000 * (v90 / 0x64);
  v103 = OUTLINED_FUNCTION_10_7();
  sub_1B1AE3710(v103, 1);
LABEL_44:
  v104 = v259();
  OUTLINED_FUNCTION_3_6();
  v106 = *(v105 + 144);
  v107 = v106();
  if (qword_1ED9A9890 != -1)
  {
    swift_once();
  }

  v108 = qword_1ED9A9818;
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  v109 = v108;
  v110 = sub_1B1C2D248();

  if (v110)
  {
    if (qword_1ED9A97D8 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v111 = qword_1ED9A9830;
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v18 = v111;
    v112 = sub_1B1C2D248();

    if (v112)
    {
      v113 = "VoiceGroupCustomCompact";
      v114 = 0xD000000000000011;
LABEL_58:

LABEL_65:
      v276[0].n128_u64[1] = MEMORY[0x1E69E6158];
      v275.n128_u64[0] = v114;
      v275.n128_u64[1] = v113 | 0x8000000000000000;
      v126 = OUTLINED_FUNCTION_10_7();
      sub_1B1AE3710(v126, 13);
      goto LABEL_66;
    }
  }

  if (qword_1ED9A97B8 != -1)
  {
    OUTLINED_FUNCTION_8_0();
  }

  v115 = qword_1ED9A97C0;
  v116 = OUTLINED_FUNCTION_11_4();

  if (v116)
  {
    if (qword_1ED9A97D8 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v117 = qword_1ED9A9830;
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v18 = v117;
    v118 = sub_1B1C2D248();

    if (v118)
    {
      v113 = "VoiceGroupCustom";
      OUTLINED_FUNCTION_20_3();
      v114 = v119 + 6;
      goto LABEL_58;
    }
  }

  if (qword_1ED9A5280 != -1)
  {
    OUTLINED_FUNCTION_13_7();
  }

  v120 = qword_1ED9A5288;
  v121 = OUTLINED_FUNCTION_11_4();

  if (v121)
  {

    goto LABEL_66;
  }

  v122 = v109;
  v123 = v104;
  v124 = sub_1B1C2D248();

  if ((v124 & 1) == 0)
  {
    v113 = "tructed wrong object type ";
    OUTLINED_FUNCTION_20_3();
    v114 = v125 - 1;
    goto LABEL_65;
  }

LABEL_66:
  OUTLINED_FUNCTION_9_4();
  sub_1B1A93AEC(v127 + 8, v128 | 0x8000000000000000, v264);
  if (!v276[0].n128_u64[1])
  {
    v129 = sub_1B1A9937C(&v275);
LABEL_70:
    v132 = (v259)(v129);
    v133 = v106();
    if (qword_1ED9A5280 != -1)
    {
      OUTLINED_FUNCTION_13_7();
    }

    v134 = qword_1ED9A5288;
    v135 = sub_1B1C2D248();

    if ((v135 & 1) == 0)
    {
      goto LABEL_77;
    }

    if (qword_1ED9A97D8 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v136 = qword_1ED9A9830;
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v137 = v136;
    v138 = sub_1B1C2D248();

    if (v138)
    {

      v139 = 3100;
    }

    else
    {
LABEL_77:
      v109 = v109;
      v140 = sub_1B1C2D248();

      if ((v140 & 1) == 0)
      {
        goto LABEL_82;
      }

      if (qword_1ED9A97D8 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v141 = qword_1ED9A9830;
      sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
      v142 = v141;
      v143 = sub_1B1C2D248();

      if (v143)
      {

        v139 = 3400;
      }

      else
      {
LABEL_82:
        if (qword_1ED9A97B8 != -1)
        {
          OUTLINED_FUNCTION_8_0();
        }

        v259 = v133;
        v144 = qword_1ED9A97C0;
        v145 = sub_1B1C2D248();

        if ((v145 & 1) == 0)
        {
          goto LABEL_93;
        }

        if (qword_1ED9A97D8 != -1)
        {
          OUTLINED_FUNCTION_0_4();
        }

        v146 = qword_1ED9A9830;
        sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
        v147 = v146;
        v148 = OUTLINED_FUNCTION_21_3();

        if ((v148 & 1) == 0)
        {
LABEL_93:
          v155 = v134;
          v156 = sub_1B1C2D248();

          v131 = v260;
          if ((v156 & 1) == 0)
          {
            goto LABEL_98;
          }

          if (qword_1ED9A9100 != -1)
          {
            OUTLINED_FUNCTION_2_0();
          }

          v157 = qword_1ED9A90A8;
          sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
          v158 = v157;
          v159 = OUTLINED_FUNCTION_21_3();

          if (v159)
          {

            v139 = 5100;
          }

          else
          {
LABEL_98:
            v160 = v109;
            v161 = OUTLINED_FUNCTION_11_4();

            if ((v161 & 1) == 0)
            {
              goto LABEL_164;
            }

            if (qword_1ED9A9100 != -1)
            {
              OUTLINED_FUNCTION_2_0();
            }

            v162 = qword_1ED9A90A8;
            sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
            v163 = v162;
            v164 = OUTLINED_FUNCTION_21_3();

            if (v164)
            {

              v139 = 13400;
            }

            else
            {
LABEL_164:
              v236 = v144;
              v237 = OUTLINED_FUNCTION_11_4();

              if ((v237 & 1) == 0)
              {
                goto LABEL_169;
              }

              if (qword_1ED9A9100 != -1)
              {
                OUTLINED_FUNCTION_2_0();
              }

              v238 = qword_1ED9A90A8;
              sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
              v239 = v238;
              v240 = OUTLINED_FUNCTION_21_3();

              if (v240)
              {

                v139 = 13800;
              }

              else
              {
LABEL_169:
                if (qword_1ED9A9628 != -1)
                {
                  OUTLINED_FUNCTION_14_0();
                }

                v241 = qword_1ED9A9598;
                sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
                v242 = v241;
                v243 = sub_1B1C2D248();

                if (v243)
                {

                  v139 = 18000;
                }

                else
                {
                  if (qword_1ED9A97A8 != -1)
                  {
                    swift_once();
                  }

                  v244 = qword_1ED9A9898;
                  v245 = OUTLINED_FUNCTION_11_4();

                  if (v245)
                  {

                    v139 = 22800;
                  }

                  else
                  {
                    if (qword_1ED9A9698 != -1)
                    {
                      swift_once();
                    }

                    v246 = qword_1ED9A9710;
                    v247 = OUTLINED_FUNCTION_11_4();

                    if (v247)
                    {

                      v139 = 23700;
                    }

                    else
                    {
                      if (qword_1ED9A9820 != -1)
                      {
                        swift_once();
                      }

                      v248 = qword_1ED9A9828;
                      v249 = OUTLINED_FUNCTION_11_4();

                      if ((v249 & 1) == 0)
                      {
                        goto LABEL_195;
                      }

                      v139 = 23800;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_90;
        }

        v139 = 3800;
      }
    }

    v131 = v260;
    goto LABEL_90;
  }

  v129 = swift_dynamicCast();
  if ((v129 & 1) == 0)
  {
    goto LABEL_70;
  }

  v276[0].n128_u64[1] = v260;
  v275.n128_u64[0] = *&v274[0];
  v130 = OUTLINED_FUNCTION_10_7();
  sub_1B1AE3710(v130, 15);
  v131 = v260;
  while (1)
  {
    OUTLINED_FUNCTION_3_6();
    v151 = (*(v150 + 192))();
    v152 = 0xEF656C614D726564;
    v153 = 0x6E65476563696F56;
    switch(v151)
    {
      case 1:
        break;
      case 2:
        v154 = "";
        goto LABEL_104;
      case 3:
        v152 = 0x80000001B1C42240;
        v153 = 0xD000000000000012;
        break;
      default:
        v154 = "VoiceGenderNeutral";
LABEL_104:
        v152 = v154 | 0x8000000000000000;
        v153 = 0xD000000000000011;
        break;
    }

    v276[0].n128_u64[1] = MEMORY[0x1E69E6158];
    v275.n128_u64[0] = v153;
    v275.n128_u64[1] = v152;
    v165 = OUTLINED_FUNCTION_10_7();
    sub_1B1AE3710(v165, 7);
    sub_1B1A93AEC(0x6D65446563696F56, 0xED0000747865546FLL, v264);
    if (!v276[0].n128_u64[1])
    {
      v167 = sub_1B1A9937C(&v275);
LABEL_110:
      v168 = (v258)(v167);
      if (qword_1ED9A9978 != -1)
      {
        OUTLINED_FUNCTION_6();
      }

      v169 = qword_1ED9A9980;
      OUTLINED_FUNCTION_16_7();
      v170 = sub_1B1C2D248();

      if ((v170 & 1) == 0)
      {
        goto LABEL_116;
      }

      if (qword_1EB7614D0 != -1)
      {
        swift_once();
      }

      v171 = qword_1EB772D40;
      v172 = [v3 primaryLanguage];
      v173 = sub_1B1C2CB58();
      v175 = v174;

      v176 = sub_1B1A945F4(v173, v175, v171);
      v178 = v177;

      if (!v178)
      {
LABEL_116:
        if (qword_1EB7614C8 != -1)
        {
          swift_once();
        }

        v180 = qword_1EB772D38;
        v181 = [v3 primaryLanguage];
        sub_1B1C2CB58();

        if (*(v180 + 16))
        {
          v182 = sub_1B1A8EB10();
          v184 = v183;

          if (v184)
          {
            v185 = (*(v180 + 56) + 16 * v182);
            v176 = *v185;
            v178 = v185[1];

            goto LABEL_123;
          }
        }

        else
        {
        }

        v178 = 0xE200000000000000;
        v176 = 32123;
      }

LABEL_123:
      v275.n128_u64[0] = v176;
      v275.n128_u64[1] = v178;
      *&v274[0] = 32123;
      *(&v274[0] + 1) = 0xE200000000000000;
      v270 = (v257)(v179);
      v271 = v186;
      OUTLINED_FUNCTION_17_6();
      v187 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_4();
      v188 = sub_1B1C2D398();
      v190 = v189;

      v276[0].n128_u64[1] = v187;
      v275.n128_u64[0] = v188;
      v275.n128_u64[1] = v190;
      goto LABEL_124;
    }

    v166 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_7_5();
    v167 = swift_dynamicCast();
    if ((v167 & 1) == 0)
    {
      goto LABEL_110;
    }

    v276[0].n128_u64[1] = v166;
    v275 = v274[0];
LABEL_124:
    v191 = OUTLINED_FUNCTION_10_7();
    sub_1B1AE3710(v191, 8);
    OUTLINED_FUNCTION_3_6();
    v193 = (*(v192 + 280))();
    if (!v193 || (v194 = sub_1B1AE4424(v193)) == 0)
    {
      v275 = 0u;
      v276[0] = 0u;
      goto LABEL_134;
    }

    sub_1B1A93AEC(0x7474416563696F56, 0xEF73657475626972, v194);

    if (!v276[0].n128_u64[1])
    {
      goto LABEL_134;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
    OUTLINED_FUNCTION_7_5();
    if (swift_dynamicCast())
    {
      v195 = *&v274[0];
      OUTLINED_FUNCTION_9_4();
      sub_1B1A93AEC(v196 + 7, v197 | 0x8000000000000000, v195);
      if (v276[0].n128_u64[1])
      {
        v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621F8, &unk_1B1C37480);
        OUTLINED_FUNCTION_7_5();
        if (swift_dynamicCast())
        {

          v199 = *&v274[0];
          v276[0].n128_u64[1] = v198;
          v275.n128_u64[0] = *&v274[0];

          v200 = OUTLINED_FUNCTION_10_7();
          sub_1B1AE3710(v200, 16);
          OUTLINED_FUNCTION_9_4();
          sub_1B1A93AEC(v201 + 16, v202 | 0x8000000000000000, v195);

          if (v276[0].n128_u64[1])
          {
            OUTLINED_FUNCTION_7_5();
            if (swift_dynamicCast())
            {
              v203 = *&v274[0];

              v199 = v203;
            }
          }

          else
          {
            sub_1B1A9937C(&v275);
          }

          v276[0].n128_u64[1] = v198;
          v275.n128_u64[0] = v199;
          goto LABEL_137;
        }

        goto LABEL_135;
      }

LABEL_134:
      sub_1B1A9937C(&v275);
    }

LABEL_135:
    type metadata accessor for TTSAsset();
    v204 = sub_1B1AE449C(v261, v262);

    if (!v204)
    {
      goto LABEL_138;
    }

    v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621F8, &unk_1B1C37480);
    v276[0].n128_u64[1] = v205;
    v275.n128_u64[0] = v204;

    v206 = OUTLINED_FUNCTION_10_7();
    sub_1B1AE3710(v206, 16);
    v276[0].n128_u64[1] = v205;
    v275.n128_u64[0] = v204;
LABEL_137:
    sub_1B1AE3710(&v275, 17);
LABEL_138:
    OUTLINED_FUNCTION_3_6();
    v208 = (*(v207 + 224))();
    if (v208)
    {
      v276[0].n128_u64[1] = v131;
      v275.n128_u64[0] = v208;
      v209 = OUTLINED_FUNCTION_10_7();
      sub_1B1AE3710(v209, 18);
    }

    OUTLINED_FUNCTION_3_6();
    v211 = (*(v210 + 248))();
    if (v211)
    {
      v276[0].n128_u64[1] = v131;
      v275.n128_u64[0] = v211;
      v212 = OUTLINED_FUNCTION_10_7();
      sub_1B1AE3710(v212, 19);
    }

    v213 = v278;
    v214 = *(v278 + 16);
    if (!v214)
    {
      break;
    }

    v277 = MEMORY[0x1E69E7CC0];
    sub_1B1AE5B70(0, v214, 0);
    v215 = v277;
    v216 = sub_1B1B60118(v213);
    v218 = v217;
    v132 = v219;
    v3 = 0;
    v264 = v214;
    v265 = v213 + 64;
    v263 = v217;
    v220 = 1;
    while ((v216 & 0x8000000000000000) == 0 && v216 < v220 << *(v213 + 32))
    {
      v131 = v216 >> 6;
      v221 = v220 << v216;
      if ((*(v265 + 8 * (v216 >> 6)) & (v220 << v216)) == 0)
      {
        goto LABEL_190;
      }

      if (*(v213 + 36) != v218)
      {
        goto LABEL_191;
      }

      v222 = *(*(v213 + 48) + v216);
      sub_1B1A93378(*(v213 + 56) + 32 * v216, v274 + 8);
      LOBYTE(v270) = v222;
      sub_1B1A9EEE0((v274 + 8), &v271);
      sub_1B1ADFB44(&v270, &v268);
      v275.n128_u64[0] = sub_1B1AE3168(v268);
      v275.n128_u64[1] = v223;
      *(&v266[0] + 1) = v271;
      v266[1] = v272;
      v267 = v273;
      sub_1B1A9EEE0((v266 + 8), v276);
      __swift_destroy_boxed_opaque_existential_0(v269);
      v277 = v215;
      v225 = *(v215 + 16);
      v224 = *(v215 + 24);
      if (v225 >= v224 >> 1)
      {
        v235 = OUTLINED_FUNCTION_19_1(v224);
        sub_1B1AE5B70(v235, v225 + 1, 1);
        v215 = v277;
      }

      *(v215 + 16) = v225 + 1;
      OUTLINED_FUNCTION_18_3((v215 + 48 * v225), v275, v276[0], v276[1]);
      v227 = v220 << v226;
      if (v216 >= v220 << v226)
      {
        goto LABEL_192;
      }

      v228 = *(v265 + 8 * v131);
      if ((v228 & v221) == 0)
      {
        goto LABEL_193;
      }

      if (*(v213 + 36) != v218)
      {
        goto LABEL_194;
      }

      v229 = v228 & (-2 << (v216 & 0x3F));
      if (v229)
      {
        v227 = __clz(__rbit64(v229)) | v216 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v230 = v131 << 6;
        v231 = v131 + 1;
        v232 = (v213 + 72 + 8 * v131);
        while (v231 < (v227 + 63) >> 6)
        {
          v234 = *v232++;
          v233 = v234;
          v230 += 64;
          ++v231;
          if (v234)
          {
            sub_1B1B1A544(v216, v218, v132 & 1);
            v220 = 1;
            v227 = __clz(__rbit64(v233)) + v230;
            goto LABEL_160;
          }
        }

        sub_1B1B1A544(v216, v218, v132 & 1);
        v220 = 1;
      }

LABEL_160:
      v132 = 0;
      v3 = (v3 + 1);
      v216 = v227;
      v218 = v263;
      if (v3 == v264)
      {

        return sub_1B1ADFBB4(v215);
      }
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    v250 = qword_1ED9A8D90;
    v109 = v132;
    if (v250 != -1)
    {
      swift_once();
    }

    v251 = qword_1ED9A8D98;
    v252 = sub_1B1C2D248();

    v139 = 23900;
    if ((v252 & 1) == 0)
    {
      v139 = 0;
    }

LABEL_90:
    v276[0].n128_u64[1] = MEMORY[0x1E69E6530];
    v275.n128_u64[0] = v139;
    v149 = OUTLINED_FUNCTION_10_7();
    sub_1B1AE3710(v149, 15);
  }

  v215 = MEMORY[0x1E69E7CC0];
  return sub_1B1ADFBB4(v215);
}

uint64_t sub_1B1AE25E8()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))();
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v3;
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v7 = (*((*v2 & *v0) + 0x90))();
    if (qword_1ED9A97D8 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED9A9830;
    v9 = sub_1B1C2D248();

    if (v9)
    {
      v10 = (*((*v2 & *v1) + 0x78))();
      if (qword_1ED9A98A8 != -1)
      {
        swift_once();
      }

      v11 = qword_1ED9A98B0;
      sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
      v12 = v11;
      v13 = sub_1B1C2D248();

      if ((v13 & 1) == 0)
      {
        v20 = v6;

        v17 = 0x746361706D6F4320;
        v18 = 0xE800000000000000;
        goto LABEL_16;
      }
    }

    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v14 = (*((*v2 & *v1) + 0x78))();
    if (qword_1ED9A9978 != -1)
    {
      swift_once();
    }

    v15 = qword_1ED9A9980;
    v16 = sub_1B1C2D248();

    if (v16)
    {
      v20 = v6;

      v17 = 0x6972695320;
      v18 = 0xE500000000000000;
LABEL_16:
      MEMORY[0x1B27381B0](v17, v18);

      return v20;
    }
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_1B1AE28F8()
{
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  result = sub_1B1ABAA54(0x746361706D6F63, 0xE700000000000000);
  qword_1ED9A9830 = result;
  return result;
}

unint64_t sub_1B1AE2950()
{
  v2 = v0;
  v3 = sub_1B1ABA5F0();
  v4 = qword_1ED9A9978;
  v5 = v3;
  if (v4 != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v6 = qword_1ED9A9980;
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v7 = v6;
  v8 = sub_1B1C2D248();

  if (v8)
  {
    goto LABEL_7;
  }

  v9 = qword_1ED9A98D0;
  v10 = v5;
  if (v9 != -1)
  {
    OUTLINED_FUNCTION_23_0();
  }

  v11 = qword_1ED9A98D8;
  v12 = sub_1B1C2D248();

  if (v12)
  {
LABEL_7:

    v13 = 0x80000001B1C4B5A0;
    v14 = type metadata accessor for TTSAsset();
    sub_1B1AB888C();
    v15 = sub_1B1C2CBE8();

    sub_1B1B19BF8(v15);
    OUTLINED_FUNCTION_58();

    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v16 = sub_1B1AB8A9C();
    if (qword_1ED9A97D8 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v17 = qword_1ED9A9830;
    v18 = OUTLINED_FUNCTION_74_0();

    if (v18)
    {
      v19 = 0x746361706D6F632ELL;
    }

    else
    {
      v19 = 0x6D75696D6572702ELL;
    }

    v20 = 0xD00000000000002DLL;
    goto LABEL_13;
  }

  v23 = qword_1ED9A9850;
  v24 = v10;
  if (v23 != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v14 = qword_1ED9A97E0;
  v15 = sub_1B1C2D248();

  if (v15)
  {

    v13 = 0x80000001B1C4B570;
    sub_1B1AB888C();
    sub_1B1C2CBE8();
    OUTLINED_FUNCTION_58();

    v25 = sub_1B1AB8A9C();
    v26 = qword_1ED9A97D8;
    v27 = v25;
    if (v26 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v20 = 0xD000000000000021;
    v28 = qword_1ED9A9830;
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v29 = v28;
    v30 = sub_1B1C2D248();

    if (v30)
    {
      v19 = 0x746361706D6F632ELL;
LABEL_34:

LABEL_13:
      v21 = 0xE800000000000000;
      goto LABEL_14;
    }

    v38 = qword_1ED9A9100;
    v27 = v27;
    if (v38 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v19 = 0x6D75696D6572702ELL;
    v39 = qword_1ED9A90A8;
    v40 = sub_1B1C2D248();

    if (v40)
    {
      goto LABEL_34;
    }

    if (qword_1ED9A9628 != -1)
    {
      OUTLINED_FUNCTION_14_0();
    }

    v46 = qword_1ED9A9598;
    v47 = sub_1B1C2D248();

    v35 = (v47 & 1) == 0;
    v36 = 0xE800000000000000;
    v37 = 0xEC00000068676968;
  }

  else
  {
    if (qword_1ED9A98A8 != -1)
    {
      OUTLINED_FUNCTION_21();
    }

    v14 = qword_1ED9A98B0;
    v31 = sub_1B1C2D248();

    if ((v31 & 1) == 0)
    {
      v41 = sub_1B1ABA5F0();
      v42 = [v41 string];

      v43 = sub_1B1C2CB58();
      v14 = v44;

      v48 = v43;
      v49 = v14;

      MEMORY[0x1B27381B0](46, 0xE100000000000000);

      v20 = v43;
      v13 = v14;
      sub_1B1AB888C();
      OUTLINED_FUNCTION_58();
      v45 = *(v2 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr);

      sub_1B1AB9288();

      if (v50)
      {
        OUTLINED_FUNCTION_16_12();
        if (swift_dynamicCast())
        {
          MEMORY[0x1B27381B0]();

          v19 = 46;
          v21 = 0xE100000000000000;
          goto LABEL_14;
        }
      }

      else
      {
        sub_1B1A90C20(&v48, &qword_1EB761DE0, &qword_1B1C352C0);
      }

      v19 = 0;
      v21 = 0xE000000000000000;
      goto LABEL_14;
    }

    v13 = 0x80000001B1C4B570;
    sub_1B1AB888C();
    sub_1B1C2CBE8();
    OUTLINED_FUNCTION_58();

    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v32 = sub_1B1AB8A9C();
    if (qword_1ED9A97D8 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v20 = 0xD000000000000021;
    v33 = qword_1ED9A9830;
    v34 = OUTLINED_FUNCTION_74_0();

    v35 = (v34 & 1) == 0;
    if (v34)
    {
      v19 = 0x746361706D6F632ELL;
    }

    else
    {
      v19 = 0;
    }

    v36 = 0xE000000000000000;
    v37 = 0xE800000000000000;
  }

  if (v35)
  {
    v21 = v36;
  }

  else
  {
    v21 = v37;
  }

LABEL_14:
  v48 = v20;
  v49 = v13;

  MEMORY[0x1B27381B0](v15, v14);

  MEMORY[0x1B27381B0](v19, v21);

  return v48;
}

void *sub_1B1AE2FB0()
{
  result = sub_1B1C2CAB8();
  off_1EB7621D0 = result;
  return result;
}

uint64_t sub_1B1AE2FEC()
{
  OUTLINED_FUNCTION_39_0(OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr);
  sub_1B1AB9288();

  if (v3)
  {
    sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
    OUTLINED_FUNCTION_16_12();
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B1A90C20(v2, &qword_1EB761DE0, &qword_1B1C352C0);
    return 0;
  }
}

unint64_t sub_1B1AE309C()
{
  result = qword_1EB7621E8;
  if (!qword_1EB7621E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7621E8);
  }

  return result;
}

unint64_t sub_1B1AE30F4()
{
  result = qword_1EB7621D8;
  if (!qword_1EB7621D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7621D8);
  }

  return result;
}

unint64_t sub_1B1AE3168(char a1)
{
  result = 0x6D754E6563696F56;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6D614E6563696F56;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6D614E6563696F56;
      break;
    case 5:
      result = 0x6564496563696F56;
      break;
    case 6:
      result = 0x6567416563696F56;
      break;
    case 7:
      result = 0x6E65476563696F56;
      break;
    case 8:
      result = 0x6D65446563696F56;
      break;
    case 9:
      result = 0x6E614C6563696F56;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x7265566563696F56;
      break;
    case 12:
      result = 0x7263536563696F56;
      break;
    case 13:
      result = 0x6F72476563696F56;
      break;
    case 14:
      result = 0x7079546563696F56;
      break;
    case 16:
      result = 0xD000000000000018;
      break;
    case 17:
      result = 0xD000000000000021;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x7369446563696F56;
      break;
    case 20:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

void sub_1B1AE3480()
{
  OUTLINED_FUNCTION_25();
  v0 = sub_1B1C2C338();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  v9 = sub_1B1C2CBC8();
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  sub_1B1C2CBA8();
  v18 = sub_1B1C2CB68();
  v20 = v19;

  (*(v12 + 8))(v17, v9);
  if (v20 >> 60 != 15)
  {
    v21 = OUTLINED_FUNCTION_33();
    if (MEMORY[0x1B27377C0](v21) == 4)
    {
      switch(v20 >> 62)
      {
        case 2uLL:
          v24 = *(v18 + 16);
          break;
        default:
          break;
      }

      v25 = OUTLINED_FUNCTION_33();
      sub_1B1AA64DC(v25, v26);
      OUTLINED_FUNCTION_33();
      sub_1B1C2C348();
      sub_1B1AE36B8();
      for (i = 0; ; i = v30 | (i << 8))
      {
        sub_1B1C2D358();
        if (v31)
        {
          break;
        }
      }

      v28 = OUTLINED_FUNCTION_33();
      sub_1B1AA9670(v28, v29);
      (*(v3 + 8))(v8, v0);
    }

    else
    {
      v22 = OUTLINED_FUNCTION_33();
      sub_1B1AA9670(v22, v23);
    }
  }

  OUTLINED_FUNCTION_26_1();
}

unint64_t sub_1B1AE36B8()
{
  result = qword_1ED9A94D0;
  if (!qword_1ED9A94D0)
  {
    sub_1B1C2C338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A94D0);
  }

  return result;
}

void sub_1B1AE3710(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1B1A9EEE0(a1, v20);
    v5 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_11_8();
    sub_1B1AE3834();
    *v2 = v19;
  }

  else
  {
    sub_1B1A90C78(a1, &qword_1EB761DE0, &qword_1B1C352C0);
    v6 = *v2;
    OUTLINED_FUNCTION_3_12();
    sub_1B1AC9E94(a2, v7, sub_1B1AE398C);
    if (v8)
    {
      v9 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_39_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762500, &unk_1B1C380A8);
      v10 = OUTLINED_FUNCTION_48_5();
      OUTLINED_FUNCTION_46_3(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20[0]);
      sub_1B1AE309C();
      OUTLINED_FUNCTION_36();
      sub_1B1C2D648();
      *v3 = v6;
    }

    else
    {
      memset(v20, 0, sizeof(v20));
    }

    sub_1B1A90C78(v20, &qword_1EB761DE0, &qword_1B1C352C0);
  }
}

void sub_1B1AE3834()
{
  OUTLINED_FUNCTION_53_0();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_12();
  v6 = sub_1B1AC9E94(v3, v5, sub_1B1AE398C);
  OUTLINED_FUNCTION_1_14(v6, v7);
  if (v10)
  {
    __break(1u);
LABEL_14:
    sub_1B1C2D818();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762500, &unk_1B1C380A8);
  if (OUTLINED_FUNCTION_17_8())
  {
    v13 = *v1;
    OUTLINED_FUNCTION_3_12();
    sub_1B1AC9E94(v3, v14, sub_1B1AE398C);
    OUTLINED_FUNCTION_23_7();
    if (!v16)
    {
      goto LABEL_14;
    }

    v11 = v15;
  }

  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0((*(*v1 + 56) + 32 * v11));
    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_34_3();

    sub_1B1A9EEE0(v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_34_3();

    sub_1B1AE4024(v20, v21, v22, v23);
  }
}

unint64_t sub_1B1AE398C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEE00444963697265;
      v8 = 0x6D754E6563696F56;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          break;
        case 2:
          v8 = 0x6D614E6563696F56;
          goto LABEL_12;
        case 3:
          v8 = 0xD000000000000013;
          v7 = 0x80000001B1C41E30;
          break;
        case 4:
          v8 = 0x6D614E6563696F56;
          v9 = 1869566565;
          goto LABEL_24;
        case 5:
          v8 = 0x6564496563696F56;
          v7 = 0xEF7265696669746ELL;
          break;
        case 6:
          v7 = 0xE800000000000000;
          v8 = 0x6567416563696F56;
          break;
        case 7:
          v8 = 0x6E65476563696F56;
          v7 = 0xEB00000000726564;
          break;
        case 8:
          v8 = 0x6D65446563696F56;
          v9 = 2019906671;
LABEL_24:
          v11 = v9 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          goto LABEL_27;
        case 9:
          v8 = 0x6E614C6563696F56;
          v10 = 1734440295;
          goto LABEL_26;
        case 0xA:
          v8 = 0xD000000000000015;
          v7 = 0x80000001B1C41EA0;
          break;
        case 0xB:
          v8 = 0x7265566563696F56;
          v7 = 0xEC0000006E6F6973;
          break;
        case 0xC:
          v8 = 0x7263536563696F56;
          v7 = 0xEF65646F43747069;
          break;
        case 0xD:
          v8 = 0x6F72476563696F56;
          v7 = 0xEA00000000007075;
          break;
        case 0xE:
          v8 = 0x7079546563696F56;
LABEL_12:
          v7 = 0xE900000000000065;
          break;
        case 0xF:
          v8 = 0xD000000000000019;
          v7 = 0x80000001B1C41EF0;
          break;
        case 0x10:
          v8 = 0xD000000000000018;
          v7 = 0x80000001B1C41F10;
          break;
        case 0x11:
          v8 = 0xD000000000000021;
          v7 = 0x80000001B1C41F30;
          break;
        case 0x12:
          v8 = 0xD000000000000011;
          v7 = 0x80000001B1C41F60;
          break;
        case 0x13:
          v8 = 0x7369446563696F56;
          v10 = 2053722987;
LABEL_26:
          v11 = v10 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
LABEL_27:
          v7 = v11 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 0x14:
          v8 = 0xD000000000000015;
          v7 = 0x80000001B1C41F80;
          break;
        default:
          v8 = 0xD000000000000019;
          v7 = 0x80000001B1C41DF0;
          break;
      }

      v12 = 0x6D754E6563696F56;
      v13 = 0xEE00444963697265;
      switch(a1)
      {
        case 1:
          break;
        case 2:
          v12 = 0x6D614E6563696F56;
          goto LABEL_37;
        case 3:
          v12 = 0xD000000000000013;
          v13 = 0x80000001B1C41E30;
          break;
        case 4:
          v12 = 0x6D614E6563696F56;
          v14 = 1869566565;
          goto LABEL_49;
        case 5:
          v12 = 0x6564496563696F56;
          v13 = 0xEF7265696669746ELL;
          break;
        case 6:
          v13 = 0xE800000000000000;
          v12 = 0x6567416563696F56;
          break;
        case 7:
          v12 = 0x6E65476563696F56;
          v13 = 0xEB00000000726564;
          break;
        case 8:
          v12 = 0x6D65446563696F56;
          v14 = 2019906671;
LABEL_49:
          v16 = v14 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          goto LABEL_52;
        case 9:
          v12 = 0x6E614C6563696F56;
          v15 = 1734440295;
          goto LABEL_51;
        case 10:
          v12 = 0xD000000000000015;
          v13 = 0x80000001B1C41EA0;
          break;
        case 11:
          v12 = 0x7265566563696F56;
          v13 = 0xEC0000006E6F6973;
          break;
        case 12:
          v12 = 0x7263536563696F56;
          v13 = 0xEF65646F43747069;
          break;
        case 13:
          v12 = 0x6F72476563696F56;
          v13 = 0xEA00000000007075;
          break;
        case 14:
          v12 = 0x7079546563696F56;
LABEL_37:
          v13 = 0xE900000000000065;
          break;
        case 15:
          v12 = 0xD000000000000019;
          v13 = 0x80000001B1C41EF0;
          break;
        case 16:
          v12 = 0xD000000000000018;
          v13 = 0x80000001B1C41F10;
          break;
        case 17:
          v12 = 0xD000000000000021;
          v13 = 0x80000001B1C41F30;
          break;
        case 18:
          v12 = 0xD000000000000011;
          v13 = 0x80000001B1C41F60;
          break;
        case 19:
          v12 = 0x7369446563696F56;
          v15 = 2053722987;
LABEL_51:
          v16 = v15 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
LABEL_52:
          v13 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 20:
          v12 = 0xD000000000000015;
          v13 = 0x80000001B1C41F80;
          break;
        default:
          v12 = 0xD000000000000019;
          v13 = 0x80000001B1C41DF0;
          break;
      }

      if (v8 == v12 && v7 == v13)
      {
        break;
      }

      v18 = sub_1B1C2D7A8();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_1B1AE4024(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_7_10(a1, a2, a3, a4);
  *(v7 + v5) = v6;
  sub_1B1A9EEE0(v9, (*(v8 + 56) + 32 * v5));
  OUTLINED_FUNCTION_38_2();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }
}

unint64_t sub_1B1AE406C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v15 = a3 & 0xFFFFFFFFFFFFFFLL;
  v13 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v9 = 15;
  while (1)
  {
    if (4 * v6 == v9 >> 14)
    {
      return a1;
    }

    result = v9;
    if ((v9 & 0xC) == v8)
    {
      result = sub_1B1B276E0(v9, a2, a3);
    }

    v11 = result >> 16;
    if (result >> 16 >= v6)
    {
      break;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      result = sub_1B1C2CD58();
      v12 = result;
    }

    else if ((a3 & 0x2000000000000000) != 0)
    {
      v14[0] = a2;
      v14[1] = v15;
      v12 = *(v14 + v11);
    }

    else
    {
      result = v13;
      if ((a2 & 0x1000000000000000) == 0)
      {
        result = sub_1B1C2D578();
      }

      v12 = *(result + v11);
    }

    if ((v9 & 0xC) == v8)
    {
      result = sub_1B1B276E0(v9, a2, a3);
      v9 = result;
      if ((a3 & 0x1000000000000000) == 0)
      {
LABEL_19:
        v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_24;
      }
    }

    else if ((a3 & 0x1000000000000000) == 0)
    {
      goto LABEL_19;
    }

    if (v6 <= v9 >> 16)
    {
      goto LABEL_27;
    }

    v9 = sub_1B1C2CD28();
LABEL_24:
    a1 = 33 * a1 + v12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B1AE41F0()
{
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  result = sub_1B1ABAA54(0x657A696C61636F76, 0xE900000000000072);
  qword_1ED9A9818 = result;
  return result;
}

uint64_t sub_1B1AE424C()
{
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  result = sub_1B1ABAA54(0x6D6F74737563, 0xE600000000000000);
  qword_1ED9A97C0 = result;
  return result;
}

uint64_t sub_1B1AE42A0()
{
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  result = sub_1B1ABAA54(0x6C61746E6963616DLL, 0xE90000000000006BLL);
  qword_1ED9A5288 = result;
  return result;
}

uint64_t sub_1B1AE42FC()
{
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  result = sub_1B1ABAA54(0x6E6F6870797267, 0xE700000000000000);
  qword_1ED9A9898 = result;
  return result;
}

uint64_t sub_1B1AE4354()
{
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  v0 = OUTLINED_FUNCTION_2_18();
  result = sub_1B1ABAA54(v0 & 0xFFFFFFFFFFFFLL | 0x5841000000000000, 0xE800000000000000);
  qword_1ED9A9710 = result;
  return result;
}

uint64_t sub_1B1AE43A0()
{
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  v0 = OUTLINED_FUNCTION_2_18();
  result = sub_1B1ABAA54(v0, 0xE600000000000000);
  qword_1ED9A9828 = result;
  return result;
}

uint64_t sub_1B1AE43E8()
{
  result = sub_1B1C2CAB8();
  qword_1EB772D40 = result;
  return result;
}

uint64_t sub_1B1AE4424(void *a1)
{
  v2 = [a1 infoDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B1C2CA98();

  return v3;
}

uint64_t sub_1B1AE449C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1C2C1C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  if (qword_1ED9A9588 != -1)
  {
    swift_once();
  }

  v12 = sub_1B1AE46F4(a1, a2, 0x7473696C70, 0xE500000000000000, 0xD000000000000013, 0x80000001B1C4A5D0, qword_1ED9AA640);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  sub_1B1C2C168();

  v14 = (*(v5 + 32))(v11, v9, v4);
  if (qword_1EB7614C0 != -1)
  {
    v14 = swift_once();
  }

  v15 = qword_1EB7621C8;
  v16 = MEMORY[0x1EEE9AC00](v14);
  *(&v21 - 2) = v11;
  MEMORY[0x1EEE9AC00](v16);
  *(&v21 - 2) = sub_1B1B1A550;
  *(&v21 - 1) = v17;
  os_unfair_lock_lock(v15 + 4);
  sub_1B1B1A56C(v18, &v22);
  os_unfair_lock_unlock(v15 + 4);
  v19 = v22;
  (*(v5 + 8))(v11, v4);
  return v19;
}

id sub_1B1AE46F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = sub_1B1C2CB28();
  v9 = sub_1B1C2CB28();

  v10 = sub_1B1C2CB28();

  v11 = [a7 URLForResource:v8 withExtension:v9 subdirectory:v10];

  return v11;
}

uint64_t sub_1B1AE47A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762200, &unk_1B1C41080);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1EB7621C8 = result;
  return result;
}

uint64_t sub_1B1AE4830(uint64_t a1)
{
  sub_1B1A93378(a1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762510, &unk_1B1C380C0);
  if (OUTLINED_FUNCTION_0_28())
  {
    empty = value[0];
LABEL_18:
    __swift_destroy_boxed_opaque_existential_0(v36);
    return empty;
  }

  if (OUTLINED_FUNCTION_1_31())
  {
    sub_1B1A93378(a1, value);
    sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v3 = *&v29[0];
      v4 = sub_1B1C2D218();

      if (v3 == v4 || (v5 = v3, v6 = sub_1B1C2D218(), v6, v5, v5 == v6))
      {
        empty = xpc_BOOL_create(v30 != 0);

        goto LABEL_18;
      }
    }

    v7 = v30;
    goto LABEL_16;
  }

  if (OUTLINED_FUNCTION_0_28())
  {
    v7 = SLODWORD(value[0]);
LABEL_16:
    v8 = xpc_int64_create(v7);
LABEL_17:
    empty = v8;
    goto LABEL_18;
  }

  if (OUTLINED_FUNCTION_0_28())
  {
    v7 = SLOWORD(value[0]);
    goto LABEL_16;
  }

  if (OUTLINED_FUNCTION_0_28())
  {
    v7 = SLOBYTE(value[0]);
    goto LABEL_16;
  }

  if (OUTLINED_FUNCTION_0_28())
  {
    v8 = xpc_uint64_create(LODWORD(value[0]));
    goto LABEL_17;
  }

  if (OUTLINED_FUNCTION_0_28())
  {
    v10 = *value;
LABEL_25:
    v8 = xpc_double_create(v10);
    goto LABEL_17;
  }

  if (OUTLINED_FUNCTION_0_28())
  {
    v10 = *value;
    goto LABEL_25;
  }

  if (OUTLINED_FUNCTION_0_28())
  {
    v8 = xpc_BOOL_create(value[0]);
    goto LABEL_17;
  }

  if (OUTLINED_FUNCTION_0_28())
  {
    v11 = sub_1B1C2CBF8();

    empty = xpc_string_create((v11 + 32));
LABEL_30:

    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762970, &qword_1B1C39E88);
  if (OUTLINED_FUNCTION_1_31())
  {
    empty = xpc_array_create_empty();
    v12 = *(v30 + 16);
    if (v12)
    {
      v13 = v30 + 32;
      do
      {
        sub_1B1A93378(v13, value);
        v14 = sub_1B1AE4830(value);
        __swift_destroy_boxed_opaque_existential_0(value);
        xpc_array_append_value(empty, v14);
        swift_unknownObjectRelease();
        v13 += 32;
        --v12;
      }

      while (v12);
    }

    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
  if (!OUTLINED_FUNCTION_1_31())
  {
    v8 = xpc_null_create();
    goto LABEL_17;
  }

  v15 = v35;
  result = xpc_dictionary_create_empty();
  empty = result;
  v16 = 0;
  v17 = 1 << *(v35 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v35 + 64);
  for (i = (v17 + 63) >> 6; v19; result = )
  {
    v21 = v16;
LABEL_45:
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v23 = v22 | (v21 << 6);
    v24 = (*(v15 + 48) + 16 * v23);
    v26 = *v24;
    v25 = v24[1];
    sub_1B1A93378(*(v15 + 56) + 32 * v23, v29);
    *&v30 = v26;
    *(&v30 + 1) = v25;
    sub_1B1A9EEE0(v29, &v31);

LABEL_46:
    *value = v30;
    v34[0] = v31;
    v34[1] = v32;
    if (!*(&v30 + 1))
    {
      goto LABEL_30;
    }

    sub_1B1A9EEE0(v34, &v30);
    v27 = sub_1B1AE4830(&v30);
    v28 = sub_1B1C2CBF8();

    xpc_dictionary_set_value(empty, (v28 + 32), v27);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v30);
  }

  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v21 >= i)
    {
      v19 = 0;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      goto LABEL_46;
    }

    v19 = *(v15 + 64 + 8 * v21);
    ++v16;
    if (v19)
    {
      v16 = v21;
      goto LABEL_45;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1AE4C84(char a1, void *a2)
{
  sub_1B1AE53F8(a1);
  v4 = sub_1B1C2CBF8();

  xpc_dictionary_set_value(v2, (v4 + 32), a2);
}

uint64_t static TTSAsset.handleProxy(event:reply:connection:)()
{
  v70 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v1 = sub_1B1B77444();
  v2 = v1;
  if (v1 == 2)
  {
    goto LABEL_57;
  }

  if (v1)
  {
    v68 = 0u;
    v69 = 0u;
    xpc_connection_get_audit_token();
    sub_1B1B35F60(0, 0, 0, 0);
    v4 = v3;
    swift_getObjectType();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    *&v64 = v4;
    v5 = sub_1B1AE4830(&v64);
    __swift_destroy_boxed_opaque_existential_0(&v64);
    sub_1B1AE4C84(7, v5);
    swift_unknownObjectRelease();
    goto LABEL_57;
  }

  v61 = v1;
  v6 = sub_1B1B77470(1, ObjectType);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v7 = v6;
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B1A93378(v9, &v68);
      sub_1B1A9EEE0(&v68, &v64);
      if (swift_dynamicCast())
      {
        v11 = v67;
        if (v67)
        {
          v12 = v66;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = v10[2];
            sub_1B1A9ED54();
            v10 = v17;
          }

          v14 = v10[2];
          v13 = v10[3];
          if (v14 >= v13 >> 1)
          {
            OUTLINED_FUNCTION_19_1(v13);
            sub_1B1A9ED54();
            v10 = v18;
          }

          v10[2] = v14 + 1;
          v15 = &v10[2 * v14];
          v15[4] = v12;
          v15[5] = v11;
        }
      }

      v9 += 32;
      --v8;
    }

    while (v8);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v19 = v10[2];
  if (v19)
  {
    *&v68 = MEMORY[0x1E69E7CC0];
    sub_1B1C2D5B8();
    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v20 = v10 + 5;
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;

      sub_1B1AAFB2C();
      sub_1B1C2D588();
      v23 = *(v68 + 16);
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
      v20 += 2;
      --v19;
    }

    while (v19);

    value = v68;
  }

  else
  {

    value = MEMORY[0x1E69E7CC0];
  }

  *&v64 = MEMORY[0x1E69E7CC8];
  v25 = sub_1B1AE03A8(2);
  if (!v25)
  {
LABEL_44:
    if (qword_1EB761310 != -1)
    {
      goto LABEL_60;
    }

    goto LABEL_45;
  }

  v26 = v25;
  count = xpc_array_get_count(v25);
  if (count < 1)
  {
LABEL_43:
    swift_unknownObjectRelease();
    goto LABEL_44;
  }

  v28 = count;
  v60 = value;
  v29 = 0;
  v30 = MEMORY[0x1E69E7CC8];
  v62 = count;
  v63 = v26;
  while (1)
  {
    v31 = v29;
    if (__OFADD__(v29, 2))
    {
      v29 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 += 2;
    }

    v32 = xpc_array_get_value(v26, v31);
    xpc_array_get_value(v26, v31 + 1);
    v33 = MEMORY[0x1B273A270](v32);
    if (v33 != sub_1B1C2C8E8())
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_41;
    }

    value = xpc_int64_get_value(v32);
    swift_getObjectType();
    sub_1B1AE5508(&v68);
    swift_isUniquelyReferenced_nonNull_native();
    v66 = v30;
    v34 = sub_1B1AB2878(value);
    if (__OFADD__(v30[2], (v35 & 1) == 0))
    {
      break;
    }

    v36 = v34;
    v37 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624F8, &unk_1B1C38038);
    if (sub_1B1C2D628())
    {
      sub_1B1AB2878(value);
      OUTLINED_FUNCTION_6_10();
      if (!v39)
      {
        *&v64 = v30;
        type metadata accessor for TTSAssetProperty(0);
        result = sub_1B1C2D818();
        __break(1u);
        return result;
      }

      v36 = v38;
    }

    v30 = v66;
    if (v37)
    {
      v40 = (v66[7] + 32 * v36);
      __swift_destroy_boxed_opaque_existential_0(v40);
      sub_1B1A9EEE0(&v68, v40);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v66[(v36 >> 6) + 8] |= 1 << v36;
      *(v30[6] + 8 * v36) = value;
      sub_1B1A9EEE0(&v68, (v30[7] + 32 * v36));
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v41 = v30[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_59;
      }

      v30[2] = v43;
    }

    v28 = v62;
    v26 = v63;
LABEL_41:
    if (v29 >= v28)
    {
      *&v64 = v30;
      value = v60;
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  swift_once();
LABEL_45:
  v44 = qword_1EB761318;
  *(&v69 + 1) = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  *&v68 = v44;
  v45 = v44;
  sub_1B1AB51D0(&v68, 7);
  type metadata accessor for TTSAsset();
  v46 = static TTSAsset.listAssets(ofTypes:matching:)(value, v64);

  v47 = sub_1B1A9547C(v46);
  if (v47)
  {
    v48 = v47;
    *&v68 = MEMORY[0x1E69E7CC0];
    sub_1B1AE06E4(0, v47 & ~(v47 >> 63), 0);
    if (v48 < 0)
    {
      __break(1u);
    }

    v49 = 0;
    v50 = v68;
    do
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x1B2738A20](v49, v46);
      }

      else
      {
        v51 = *(v46 + 8 * v49 + 32);
      }

      v52 = v51;
      v53 = sub_1B1AE0704();

      *&v68 = v50;
      v55 = *(v50 + 16);
      v54 = *(v50 + 24);
      if (v55 >= v54 >> 1)
      {
        v56 = OUTLINED_FUNCTION_19_1(v54);
        sub_1B1AE06E4(v56, v55 + 1, 1);
        v50 = v68;
      }

      ++v49;
      *(v50 + 16) = v55 + 1;
      *(v50 + 8 * v55 + 32) = v53;
    }

    while (v48 != v49);
  }

  else
  {

    v50 = MEMORY[0x1E69E7CC0];
  }

  swift_getObjectType();
  *(&v69 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624F0, &qword_1B1C38030);
  *&v68 = v50;
  v57 = sub_1B1AE4830(&v68);
  __swift_destroy_boxed_opaque_existential_0(&v68);
  sub_1B1AE4C84(3, v57);
  swift_unknownObjectRelease();
  v2 = v61;
LABEL_57:
  result = v2 != 2;
  v58 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B1AE53F8(char a1)
{
  result = 6779757;
  switch(a1)
  {
    case 1:
      result = 0x7365707974;
      break;
    case 2:
      result = 0x7265746C6966;
      break;
    case 3:
      result = 0x737465737361;
      break;
    case 4:
      result = 0x7475626972747461;
      break;
    case 5:
      result = 0x65696B6F6F63;
      break;
    case 6:
      result = 0x656C646E7562;
      break;
    case 7:
      result = 0x656B6F5468747561;
      break;
    case 8:
      result = 0x7974696C617571;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1B1AE5508(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1B273A270](v1);
  if (sub_1B1C2C8B8() == v3)
  {
    value = xpc_BOOL_get_value(v1);
    *(a1 + 24) = MEMORY[0x1E69E6370];
    *a1 = value;
    return;
  }

  if (sub_1B1C2C8E8() == v3)
  {
    v6 = xpc_int64_get_value(v1);
    *(a1 + 24) = MEMORY[0x1E69E6530];
    *a1 = v6;
    return;
  }

  if (sub_1B1C2C918() == v3)
  {
    v7 = xpc_uint64_get_value(v1);
    *(a1 + 24) = MEMORY[0x1E69E7668];
    if (!HIDWORD(v7))
    {
      *a1 = v7;
      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (sub_1B1C2C8F8() == v3)
  {
    v8 = xpc_double_get_value(v1);
    *(a1 + 24) = MEMORY[0x1E69E63B0];
    *a1 = v8;
    return;
  }

  if (sub_1B1C2C908() != v3)
  {
    if (sub_1B1C2C8C8() != v3)
    {
      if (sub_1B1C2C928() != v3)
      {
        v4 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        *(a1 + 24) = sub_1B1A8E474(0, &qword_1EB762968, 0x1E695DFB0);
        *a1 = v4;
        return;
      }

      v28 = MEMORY[0x1E69E7CC8];
      v18 = swift_allocObject();
      *(v18 + 16) = &v28;
      v19 = swift_allocObject();
      *(v19 + 16) = sub_1B1AE5F24;
      *(v19 + 24) = v18;
      v26 = sub_1B1AE5F2C;
      v27 = v19;
      OUTLINED_FUNCTION_2_28();
      v23 = 1107296256;
      v24 = sub_1B1AE0294;
      v25 = &block_descriptor_20;
      v20 = _Block_copy(aBlock);

      xpc_dictionary_apply(v1, v20);
      _Block_release(v20);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v15 = v28;
        v16 = &qword_1EB761C30;
        v17 = &unk_1B1C38180;
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    v28 = MEMORY[0x1E69E7CC0];
    v11 = swift_allocObject();
    *(v11 + 16) = &v28;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1B1AE5A34;
    *(v12 + 24) = v11;
    v26 = sub_1B1AE598C;
    v27 = v12;
    OUTLINED_FUNCTION_2_28();
    v23 = 1107296256;
    v24 = sub_1B1AE5908;
    v25 = &block_descriptor_12_1;
    v13 = _Block_copy(aBlock);

    xpc_array_apply(v1, v13);
    _Block_release(v13);
    v14 = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      v15 = v28;
      v16 = &unk_1EB762970;
      v17 = &unk_1B1C39E88;
LABEL_21:
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);

      *a1 = v15;
      return;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  if (xpc_string_get_string_ptr(v1))
  {
    v9 = MEMORY[0x1B27380E0]();
    *(a1 + 24) = MEMORY[0x1E69E6158];
    if (v10)
    {
      *a1 = v9;
      *(a1 + 8) = v10;
      return;
    }
  }

  else
  {
    *(a1 + 24) = MEMORY[0x1E69E6158];
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
}

uint64_t sub_1B1AE5908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t sub_1B1AE5960()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_1B1AE59C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1B1AE5508(v7);
  sub_1B1AE5A3C();
  v4 = *(*a3 + 16);
  sub_1B1AE5B24(v4);
  v5 = *a3;
  *(v5 + 16) = v4 + 1;
  sub_1B1A9EEE0(v7, (v5 + 32 * v4 + 32));
  return 1;
}

void sub_1B1AE5A54()
{
  OUTLINED_FUNCTION_21_1();
  if (v5)
  {
    OUTLINED_FUNCTION_3_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7642A0, &qword_1B1C35DF0);
    v9 = OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_13_3(v9);
    OUTLINED_FUNCTION_9(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_42_2();
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_105_0()
{

  return sub_1B1C2CB28();
}

uint64_t sub_1B1AE5B70(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B1ADF9EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B1AE5B90()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
  if (!v1)
  {
    type metadata accessor for TTSAssetUAFAsset(0);
    OUTLINED_FUNCTION_107();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = v0;
      v8 = sub_1B1C2D0A8();
      if (qword_1ED9A99B8 != -1)
      {
        OUTLINED_FUNCTION_0_12();
      }

      v9 = qword_1ED9AA668;
      if (!os_log_type_enabled(qword_1ED9AA668, v8))
      {
        goto LABEL_15;
      }

      v10 = OUTLINED_FUNCTION_21_0();
      v11 = swift_slowAlloc();
      v23[0] = v11;
      *v10 = 136315138;
      v12 = v6 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier;
      v13 = *(v6 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier);
      v14 = *(v12 + 8);

      v15 = sub_1B1A930E4(v13, v14, v23);

      *(v10 + 4) = v15;
      v16 = "Unable to get bundle path for factor identifier %s";
    }

    else
    {
      type metadata accessor for TTSAssetTrialAsset();
      OUTLINED_FUNCTION_107();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
        return OUTLINED_FUNCTION_92();
      }

      v7 = v0;
      v8 = sub_1B1C2D0A8();
      if (qword_1ED9A99B8 != -1)
      {
        OUTLINED_FUNCTION_0_12();
      }

      v9 = qword_1ED9AA668;
      if (!os_log_type_enabled(qword_1ED9AA668, v8))
      {
        goto LABEL_15;
      }

      v10 = OUTLINED_FUNCTION_21_0();
      v11 = swift_slowAlloc();
      v23[0] = v11;
      *v10 = 136315138;
      v18 = v17 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName;
      v19 = *(v17 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName);
      v20 = *(v18 + 8);

      v21 = sub_1B1A930E4(v19, v20, v23);

      *(v10 + 4) = v21;
      v16 = "Unable to get bundle path for factor name %s";
    }

    _os_log_impl(&dword_1B1A8A000, v9, v8, v16, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
LABEL_15:

    return OUTLINED_FUNCTION_92();
  }

  v2 = v1;
  v3 = [v1 bundlePath];

  sub_1B1C2CB58();
  if (sub_1B1C2CDA8())
  {
    v23[0] = 0x657461766972702FLL;
    v23[1] = 0xE800000000000000;
    v4 = OUTLINED_FUNCTION_92();
    MEMORY[0x1B27381B0](v4);
  }

  return OUTLINED_FUNCTION_92();
}

uint64_t sub_1B1AE5E7C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_allocWithZone(type metadata accessor for TTSAssetProxyAsset());
  swift_unknownObjectRetain();
  sub_1B1ADFFD8();
  MEMORY[0x1B2738320]();
  sub_1B1B3E0D4(*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B1C2CEC8();
  return 1;
}

uint64_t sub_1B1AE5F2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_1B1AE5F58()
{
  MEMORY[0x1B27380E0]();
  sub_1B1AE5508(v1);
  sub_1B1A9EE20(v1);
  return 1;
}

unint64_t sub_1B1AE5FC0()
{
  result = qword_1ED9A4F20;
  if (!qword_1ED9A4F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9A4F20);
  }

  return result;
}

id sub_1B1AE6004()
{
  v0 = sub_1B1C2CB28();

  v1 = [swift_getObjCClassFromMetadata() fileHandleForUpdatingAtPath_];

  return v1;
}

uint64_t sub_1B1AE6068(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D88, &qword_1B1C36488);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TTSStringEnum.hash.getter()
{
  v1 = [v0 string];
  sub_1B1C2CB58();

  sub_1B1A8EDAC();
  v2 = sub_1B1C2D3B8();

  return v2;
}

uint64_t sub_1B1AE615C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED9A92A8 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v3 = qword_1ED9AA608;
    v34 = sub_1B1AE4CEC;
    v35 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_4_11();
    aBlock[2] = v4;
    v33 = &block_descriptor_10;
    v5 = _Block_copy(aBlock);

    dispatch_sync(v3, v5);
    _Block_release(v5);
    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      break;
    }

    aBlock[0] = MEMORY[0x1E69E7CC0];
    v7 = sub_1B1A9547C(a1);
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = 0;
      v30 = v8;
      v31 = MEMORY[0x1E69E7CC0];
      v29 = *(&unk_1F28BA5A8 + v9 + 32);
      if (v29)
      {
        v11 = 0x656372756F736572;
      }

      else
      {
        v11 = 0x6563696F76;
      }

      if (*(&unk_1F28BA5A8 + v9 + 32))
      {
        v12 = 0xE800000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      while (v7 != v10)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1B2738A20](v10, a1);
        }

        else
        {
          if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v13 = *(a1 + 8 * v10 + 32);
        }

        v14 = v13;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          sub_1B1A9937C(aBlock);
          return a1;
        }

        sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
        if (qword_1ED9A9960 != -1)
        {
          swift_once();
        }

        v15 = qword_1ED9A9968;
        v16 = sub_1B1C2D248();

        if (v16)
        {
          v17 = 0x656372756F736572;
        }

        else
        {
          v17 = 0x6563696F76;
        }

        if (v16)
        {
          v18 = 0xE800000000000000;
        }

        else
        {
          v18 = 0xE500000000000000;
        }

        if (v17 == v11 && v18 == v12)
        {
        }

        else
        {
          v20 = sub_1B1C2D7A8();

          if ((v20 & 1) == 0)
          {

            goto LABEL_31;
          }
        }

        sub_1B1C2D588();
        v21 = *(v31 + 16);
        sub_1B1C2D5C8();
        sub_1B1C2D5D8();
        sub_1B1C2D598();
LABEL_31:
        ++v10;
      }

      if (sub_1B1A9547C(v31))
      {
        v22 = sub_1B1AE6688(v29, v31, a2);
      }

      else
      {
        v22 = MEMORY[0x1E69E7CC0];
      }

      sub_1B1AB4AD0(v22);
      v8 = 1;
      v9 = 1u;
    }

    while ((v30 & 1) == 0);
    a1 = aBlock[0];
    sub_1B1AA0AEC(5, a2);
    if (!v33)
    {
      goto LABEL_52;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      return a1;
    }

    aBlock[0] = MEMORY[0x1E69E7CC0];
    v23 = sub_1B1A9547C(a1);
    for (i = 0; ; ++i)
    {
      if (v23 == i)
      {

        return aBlock[0];
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1B2738A20](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v25 = *(a1 + 8 * i + 32);
      }

      v26 = v25;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v31 == [v25 locallyAvailable])
      {
        sub_1B1C2D588();
        v27 = *(aBlock[0] + 16);
        sub_1B1C2D5C8();
        sub_1B1C2D5D8();
        sub_1B1C2D598();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    OUTLINED_FUNCTION_5_14();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1AE65E4()
{
  if (byte_1EB772D30 == 1)
  {
    sub_1B1C2D098();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    sub_1B1C2C7C8();
    type metadata accessor for TTSAssetTrialStrategy();
    result = sub_1B1B3BD20();
    byte_1EB772D30 = 0;
  }

  return result;
}

uint64_t sub_1B1AE6688(char a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  LOBYTE(v4) = a1;
  if (qword_1ED9A92B0 != -1)
  {
LABEL_57:
    OUTLINED_FUNCTION_1_1();
  }

  v5 = qword_1ED9AA610;
  v6 = OUTLINED_FUNCTION_11_6();
  v7 = [v5 rolloutIdentifiersWithNamespaceName_];

  v8 = sub_1B1C2D0D8();
  if (qword_1ED9A99C0 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v9 = qword_1ED9AA670;
  v10 = os_log_type_enabled(qword_1ED9AA670, v8);
  v47 = v7;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v11 = 136315650;
    if (v4)
    {
      v12 = 0x656372756F736572;
    }

    else
    {
      v12 = 0x6563696F76;
    }

    if (v4)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v14 = sub_1B1A930E4(v12, v13, v53);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    v15 = sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v16 = MEMORY[0x1B2738350](v49, v15);
    v18 = sub_1B1A930E4(v16, v17, v53);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2082;
    v19 = sub_1B1AB5454(a3);
    v21 = sub_1B1A930E4(v19, v20, v53);

    *(v11 + 24) = v21;
    _os_log_impl(&dword_1B1A8A000, v9, v8, "#Trial listing assets for class '%s', types: '%{public}s', filter: '%{public}s'", v11, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    v7 = v47;
    OUTLINED_FUNCTION_11();
  }

  if (!v7)
  {
    sub_1B1AA0AEC(5, a3);
    if (v53[3])
    {
      if (swift_dynamicCast() & 1) != 0 && (v52)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1B1A9937C(v53);
    }

    if (byte_1EB761498 == 1)
    {
      sub_1B1B3C0BC();
    }
  }

LABEL_20:
  if (qword_1ED9A9298 != -1)
  {
    OUTLINED_FUNCTION_6_12();
  }

  v22 = qword_1ED9AA620;
  v23 = *(a3 + 16);

  if (v23)
  {
    sub_1B1AEFDC8(a3, v4 & 1, v22);
  }

  else
  {
    sub_1B1B3C9E0(v4 & 1, v22);
  }

  v25 = v24;

  v26 = v25 & 0xC000000000000001;
  v27 = v25 & 0xFFFFFFFFFFFFFF8;
  if ((v4 & 1) == 0)
  {
    v48 = MEMORY[0x1E69E7CC0];
    v53[0] = MEMORY[0x1E69E7CC0];
    v34 = sub_1B1A9547C(v25);
    v50 = v25;
    v51 = v34;
    v35 = 0;
    a3 = 0;
    while (1)
    {
      if (v51 == v35)
      {
        goto LABEL_52;
      }

      if (v26)
      {
        v36 = MEMORY[0x1B2738A20](v35, v25);
      }

      else
      {
        if (v35 >= *(v27 + 16))
        {
          goto LABEL_56;
        }

        v36 = *(v25 + 8 * v35 + 32);
      }

      v4 = v36;
      if (__OFADD__(v35, 1))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v37 = v27;
      v38 = v26;
      v39 = objc_allocWithZone(type metadata accessor for TTSAssetTrialVoiceAsset());
      v40 = v4;
      LOBYTE(v4) = v39;
      v41 = sub_1B1AEBBA0(v40);
      if (!v41)
      {
        goto LABEL_46;
      }

      v42 = v41;
      sub_1B1AE7964();
      v4 = v43;
      v52 = v43;
      MEMORY[0x1EEE9AC00](v43);
      v46[2] = &v52;
      v44 = sub_1B1ABAB9C(sub_1B1ABACC4, v46, v49);

      if ((v44 & 1) == 0)
      {
        break;
      }

      v4 = v53;
      MEMORY[0x1B2738320]();
      if (*((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1C2CE98();
      }

      sub_1B1C2CEC8();
      v48 = v53[0];
      ++v35;
LABEL_47:
      v26 = v38;
      v27 = v37;
      v25 = v50;
    }

    v40 = v42;
LABEL_46:

    ++v35;
    goto LABEL_47;
  }

  v48 = MEMORY[0x1E69E7CC0];
  v53[0] = MEMORY[0x1E69E7CC0];
  a3 = sub_1B1A9547C(v25);
  v28 = 0;
  while (a3 != v28)
  {
    if (v26)
    {
      v29 = MEMORY[0x1B2738A20](v28, v25);
    }

    else
    {
      if (v28 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v29 = *(v25 + 8 * v28 + 32);
    }

    v4 = v29;
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    v31 = objc_allocWithZone(type metadata accessor for TTSAssetTrialResourceAsset());
    v32 = v31;
    v33 = v4;
    LOBYTE(v4) = v32;
    ++v28;
    if (sub_1B1B2E9AC(v33))
    {
      v4 = v53;
      MEMORY[0x1B2738320]();
      if (*((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1C2CE98();
      }

      sub_1B1C2CEC8();
      v48 = v53[0];
      v28 = v30;
    }
  }

LABEL_52:

  return v48;
}

unint64_t sub_1B1AE6BF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1B1C2D248();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1B1AE6CC8()
{
  result = qword_1EB761098;
  if (!qword_1EB761098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761098);
  }

  return result;
}

BOOL sub_1B1AE6D1C()
{
  v4 = v0;
  v6 = *v0;
  v5 = v0[1];
  v24[0] = *v0;
  v24[1] = v5;
  sub_1B1A8EDAC();
  v7 = sub_1B1C2D368();
  v8 = v4[2];

  v4[2] = v7;
  if (v7[2] < 5uLL)
  {
    __break(1u);
LABEL_25:
    OUTLINED_FUNCTION_0_13();
LABEL_10:
    v14 = *(v2 + 206);
    if (os_log_type_enabled(v14, v7))
    {

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24[0] = v16;
      *v15 = 136315394;
      v17 = sub_1B1A930E4(v6, v5, v24);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2048;
      *(v15 + 14) = v1;
      _os_log_impl(&dword_1B1A8A000, v14, v7, "Factor %s does not have %ld components as expected.", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    return v3 == v1;
  }

  v9 = v7[12];
  v10 = v7[13];
  v11 = v9 == 0x6563696F76 && v10 == 0xE500000000000000;
  v2 = &unk_1ED9AA000;
  if (v11 || (v12 = v7[12], v13 = v7[13], (sub_1B1C2D7A8() & 1) != 0))
  {
    v1 = 9;
  }

  else
  {
    v19 = v9 == 0x656372756F736572 && v10 == 0xE800000000000000;
    if (v19 || (sub_1B1C2D7A8() & 1) != 0)
    {
      v1 = 6;
    }

    else
    {
      v20 = sub_1B1C2D0C8();
      if (qword_1ED9A99C0 != -1)
      {
        OUTLINED_FUNCTION_0_13();
      }

      v21 = qword_1ED9AA670;
      if (os_log_type_enabled(qword_1ED9AA670, v20))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_1B1A930E4(v6, v5, v24);
        _os_log_impl(&dword_1B1A8A000, v21, v20, "Encountered entirely unexpected factor %s.", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_11();
      }

      v1 = 5;
    }
  }

  v3 = v7[2];
  if (v3 != v1)
  {
    LOBYTE(v7) = sub_1B1C2D0B8();
    if (qword_1ED9A99C0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  return v3 == v1;
}

void sub_1B1AE6FEC(void *a1)
{
  v3 = v1;
  v5 = [a1 metadata];
  if (v5)
  {
    v6 = v5;
    *&v59 = 0;
    sub_1B1C2CA88();
  }

  v7 = OUTLINED_FUNCTION_55_1();
  if (!v7)
  {
    __break(1u);
    goto LABEL_39;
  }

  v8 = v7;
  v9 = [v7 hasAsset];

  if (v9)
  {
    v10 = *(v3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);

    v11 = OUTLINED_FUNCTION_55_1();
    if (!v11)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v12 = v11;
    v13 = [v11 asset];

    if (!v13)
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v14 = [v13 size];

    *(&v60 + 1) = MEMORY[0x1E69E76D8];
    *&v59 = v14;
    sub_1B1AC965C(&v59);
  }

  v15 = OUTLINED_FUNCTION_55_1();
  if (!v15)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v16 = v15;
  v17 = [v15 hasPath];

  p_cache = &OBJC_METACLASS___SiriTTSSynthesisResource.cache;
  v2 = &unk_1ED9AA000;
  if (!v17)
  {
    goto LABEL_32;
  }

  v19 = sub_1B1C2D0A8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  v20 = qword_1ED9AA668;
  if (os_log_type_enabled(qword_1ED9AA668, v19))
  {
    v2 = a1;
    v21 = swift_slowAlloc();
    *&v59 = swift_slowAlloc();
    *v21 = 136315394;
    v22 = v3;
    *(v21 + 4) = sub_1B1A930E4(*(v3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName), *(v3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8), &v59);
    *(v21 + 12) = 2080;
    v23 = [v2 directoryValue];
    if (!v23)
    {
LABEL_45:

      __break(1u);
      goto LABEL_46;
    }

    v24 = sub_1B1AEA2D8(v23, &selRef_path);
    v26 = v25;

    if (!v26)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v27 = sub_1B1A930E4(v24, v26, &v59);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_1B1A8A000, v20, v19, "Asset %s path %s", v21, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
    v3 = v22;
    v2 = &unk_1ED9AA000;
  }

  v28 = OUTLINED_FUNCTION_55_1();
  if (!v28)
  {
    goto LABEL_42;
  }

  sub_1B1AEA2D8(v28, &selRef_path);
  if (!v29)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);
  v30 = sub_1B1AE7720();
  if (!v30)
  {
    v41 = sub_1B1C2D0B8();
    if (!os_log_type_enabled(v20, v41))
    {
      return;
    }

    v2 = a1;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v59 = v43;
    *v42 = 136446210;
    v44 = [v2 directoryValue];
    if (v44)
    {
      v45 = sub_1B1AEA2D8(v44, &selRef_path);
      v47 = v46;

      if (v47)
      {
        v48 = sub_1B1A930E4(v45, v47, &v59);

        *(v42 + 4) = v48;
        _os_log_impl(&dword_1B1A8A000, v20, v41, "Unable to initialize asset bundle from path: %{public}s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        OUTLINED_FUNCTION_11();
LABEL_36:
        OUTLINED_FUNCTION_11();
        return;
      }

LABEL_48:
      __break(1u);
      return;
    }

LABEL_47:

    __break(1u);
    goto LABEL_48;
  }

  v31 = v30;
  v32 = OUTLINED_FUNCTION_55_1();
  if (!v32)
  {
    goto LABEL_44;
  }

  v33 = sub_1B1AEA2D8(v32, &selRef_path);
  v34 = (v3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_path);
  v35 = *(v3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_path + 8);
  *v34 = v33;
  v34[1] = v36;

  v37 = sub_1B1AB5B4C(v31);
  p_cache = &OBJC_METACLASS___SiriTTSSynthesisResource.cache;
  if (!v37)
  {

    v59 = 0u;
    v60 = 0u;
LABEL_31:
    sub_1B1A90C20(&v59, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_32;
  }

  sub_1B1A93AEC(0xD000000000000015, 0x80000001B1C4B680, v37);

  if (!*(&v60 + 1))
  {

    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
  if (swift_dynamicCast())
  {
    v38 = *(v3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);

    os_unfair_lock_lock((v38 + 16));

    OUTLINED_FUNCTION_5_8();
    sub_1B1B3016C(v39, v40, 0, (v38 + 24));
    os_unfair_lock_unlock((v38 + 16));

    p_cache = (&OBJC_METACLASS___SiriTTSSynthesisResource + 16);
  }

LABEL_32:
  v49 = sub_1B1C2D0A8();
  if (p_cache[311] != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  v50 = qword_1ED9AA668;
  if (os_log_type_enabled(qword_1ED9AA668, v49))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v59 = swift_slowAlloc();
    *v51 = 136315650;
    *(v51 + 4) = sub_1B1A930E4(*(v3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName), *(v3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8), &v59);
    *(v51 + 12) = 2080;
    v53 = *(v3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);

    v54 = sub_1B1B42D14();
    v56 = v55;

    v57 = sub_1B1A930E4(v54, v56, &v59);

    *(v51 + 14) = v57;
    *(v51 + 22) = 2112;
    *(v51 + 24) = a1;
    *v52 = a1;
    v58 = a1;
    _os_log_impl(&dword_1B1A8A000, v50, v49, "Asset %s attributes %s level %@", v51, 0x20u);
    sub_1B1A90C20(v52, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_11();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    goto LABEL_36;
  }
}

id sub_1B1AE7720()
{
  OUTLINED_FUNCTION_62();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_72();
  v1 = sub_1B1C2CB28();

  v2 = [v0 initWithPath_];

  return v2;
}

uint64_t sub_1B1AE778C()
{
  OUTLINED_FUNCTION_39_0(OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);
  sub_1B1AB9288();

  if (!v12[3])
  {
    sub_1B1A90C20(v12, &qword_1EB761DE0, &qword_1B1C352C0);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  if ((OUTLINED_FUNCTION_51_1() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v0 = *(v10 + 16);
  if (!v0)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v11 = MEMORY[0x1E69E7CC0];
  sub_1B1AC9FA8();
  v1 = v11;
  sub_1B1A8EDAC();
  v2 = (v10 + 40);
  do
  {
    v3 = *v2;
    v12[0] = *(v2 - 1);
    v12[1] = v3;
    OUTLINED_FUNCTION_4();
    v4 = sub_1B1C2D398();
    v6 = v5;
    v7 = *(v11 + 16);
    if (v7 >= *(v11 + 24) >> 1)
    {
      sub_1B1AC9FA8();
    }

    *(v11 + 16) = v7 + 1;
    v8 = v11 + 16 * v7;
    *(v8 + 32) = v4;
    *(v8 + 40) = v6;
    v2 += 2;
    --v0;
  }

  while (v0);

  return v1;
}

void sub_1B1AE7964()
{
  OUTLINED_FUNCTION_39_0(OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);
  OUTLINED_FUNCTION_75_1();

  if (!v26)
  {
    sub_1B1A90C20(v25, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_29;
  }

  v9 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_9_7(v1, v2, v3, v4, v5, v6, v7, v8, v22);
  if (!swift_dynamicCast())
  {
LABEL_29:
    sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12();
    }

    sub_1B1C2C7C8();
    goto LABEL_32;
  }

  v10 = v23 == OUTLINED_FUNCTION_63() && v24 == 0xE700000000000000;
  if (!v10 && (OUTLINED_FUNCTION_8_6() & 1) == 0)
  {
    v11 = v23 == OUTLINED_FUNCTION_25_3() && v24 == 0xE600000000000000;
    if (!v11 && (OUTLINED_FUNCTION_8_6() & 1) == 0)
    {
      v12 = v23 == (OUTLINED_FUNCTION_25_3() & 0xFFFFFFFFFFFFLL | 0x5841000000000000) && v24 == 0xE800000000000000;
      if (!v12 && (OUTLINED_FUNCTION_8_6() & 1) == 0)
      {
        OUTLINED_FUNCTION_49_1();
        v13 = v10 && v24 == 0xE700000000000000;
        if (!v13 && (OUTLINED_FUNCTION_8_6() & 1) == 0)
        {
          OUTLINED_FUNCTION_61_2();
          v17 = v10 && v24 == 0xE600000000000000;
          if (v17 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
          {

            if (qword_1ED9A98D0 != -1)
            {
              OUTLINED_FUNCTION_23_0();
            }

            goto LABEL_25;
          }

          v18 = v23 == OUTLINED_FUNCTION_36_2() && v24 == v0 + 7;
          if (v18 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
          {

            if (qword_1ED9A9850 != -1)
            {
              OUTLINED_FUNCTION_22();
            }

            goto LABEL_25;
          }

          v19 = v23 == 0x64656E69626D6F63 && v24 == 0xE800000000000000;
          if (v19 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
          {

            if (qword_1ED9A98B8 != -1)
            {
              swift_once();
            }

            goto LABEL_25;
          }

          OUTLINED_FUNCTION_48_4();
          v20 = v10 && v24 == v0;
          if (v20 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
          {

            if (qword_1ED9A98A8 != -1)
            {
              OUTLINED_FUNCTION_21();
            }

            goto LABEL_25;
          }

          sub_1B1C2D0B8();
          if (qword_1ED9A99B8 != -1)
          {
            OUTLINED_FUNCTION_0_12();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
          v21 = OUTLINED_FUNCTION_54_0();
          *(v21 + 16) = xmmword_1B1C361C0;
          *(v21 + 56) = v9;
          *(v21 + 64) = sub_1B1AC9204();
          *(v21 + 32) = v23;
          *(v21 + 40) = v24;
          OUTLINED_FUNCTION_46_2();
          OUTLINED_FUNCTION_53_2();

LABEL_32:
          sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
          OUTLINED_FUNCTION_11_1();
          sub_1B1AAFB2C();
          OUTLINED_FUNCTION_76_2();
          return;
        }
      }
    }
  }

  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6();
  }

LABEL_25:
  OUTLINED_FUNCTION_76_2();

  v16 = v14;
}

uint64_t sub_1B1AE7D84(uint64_t a1, unint64_t a2)
{
  result = sub_1B1A9547C(a1);
  v5 = result;
  v6 = 0;
  v34 = a1 & 0xFFFFFFFFFFFFFF8;
  v35 = a1 & 0xC000000000000001;
  v7 = MEMORY[0x1E69E7CC0];
  v29 = a1;
  v30 = result;
  v33 = a1 + 32;
  v31 = a2;
  while (1)
  {
    if (v6 == v5)
    {
      return v7;
    }

    if (v35)
    {
      result = MEMORY[0x1B2738A20](v6, v29);
    }

    else
    {
      if (v6 >= *(v34 + 16))
      {
        goto LABEL_42;
      }

      result = *(v33 + 8 * v6);
    }

    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      break;
    }

    v10 = sub_1B1AE80A4(result, a2);

    if (v10 >> 62)
    {
      v11 = sub_1B1C2D468();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v7 >> 62;
    if (v7 >> 62)
    {
      result = sub_1B1C2D468();
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v11;
    v9 = __OFADD__(result, v11);
    v13 = result + v11;
    if (v9)
    {
      goto LABEL_43;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v12)
      {
LABEL_19:
        sub_1B1C2D468();
      }

      else
      {
        v14 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
        v15 = *(v14 + 16);
      }

      result = sub_1B1C2D568();
      v37 = result;
      v14 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_21;
    }

    if (v12)
    {
      goto LABEL_19;
    }

    v14 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v13 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

    v37 = v7;
LABEL_21:
    v16 = *(v14 + 16);
    v17 = (*(v14 + 24) >> 1) - v16;
    v18 = v14 + 8 * v16;
    v36 = v14;
    if (v10 >> 62)
    {
      v20 = sub_1B1C2D468();
      if (v20)
      {
        v21 = v20;
        result = sub_1B1C2D468();
        if (v17 < result)
        {
          goto LABEL_47;
        }

        if (v21 < 1)
        {
          goto LABEL_48;
        }

        v32 = result;
        v22 = v18 + 32;
        sub_1B1B3B768();
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762640, &qword_1B1C383E8);
          v24 = sub_1B1B37C88(v39, i, v10);
          v26 = *v25;
          v24(v39, 0);
          *(v22 + 8 * i) = v26;
        }

        a2 = v31;
        v5 = v30;
        v19 = v32;
        goto LABEL_31;
      }

LABEL_35:

      v7 = v37;
      if (v38 > 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_35;
      }

      if (v17 < v19)
      {
        goto LABEL_46;
      }

      type metadata accessor for TTSAsset();
      swift_arrayInitWithCopy();
LABEL_31:

      v7 = v37;
      if (v19 < v38)
      {
        goto LABEL_44;
      }

      if (v19 > 0)
      {
        v27 = *(v36 + 16);
        v9 = __OFADD__(v27, v19);
        v28 = v27 + v19;
        if (v9)
        {
          goto LABEL_45;
        }

        *(v36 + 16) = v28;
      }
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1B1AE80A4(void *a1, unint64_t a2)
{
  v3 = v2;
  LOBYTE(v6) = sub_1B1C2D098();
  if (qword_1ED9A99C0 != -1)
  {
LABEL_78:
    OUTLINED_FUNCTION_0_13();
  }

  log = qword_1ED9AA670;
  if (os_log_type_enabled(qword_1ED9AA670, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v77[0] = v9;
    *v7 = 138412546;
    *(v7 + 4) = a1;
    *v8 = a1;
    *(v7 + 12) = 2082;
    v10 = a1;
    v11 = sub_1B1AB5454(a2);
    v13 = sub_1B1A930E4(v11, v12, v77);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_1B1A8A000, log, v6, "#MobileAsset listing assets for type '%@', filter: '%{public}s'", v7, 0x16u);
    sub_1B1A90C78(v8, &qword_1EB7625C0, &qword_1B1C37990);
    MEMORY[0x1B2739FD0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2739FD0](v9, -1, -1);
    MEMORY[0x1B2739FD0](v7, -1, -1);
  }

  v14 = [a1 string];
  v15 = sub_1B1C2CB58();
  v17 = v16;

  v18 = objc_allocWithZone(MEMORY[0x1E69B18E8]);
  v19 = sub_1B1AEA368(v15, v17);
  if (!v19)
  {
    sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v3 = MEMORY[0x1E69E7CC0];
    sub_1B1C2C7C8();
    return v3;
  }

  v20 = v19;
  sub_1B1AA0AEC(5, a2);
  if (v78)
  {
    if (OUTLINED_FUNCTION_13_11() && (v74 & 1) != 0)
    {
      v72 = 0;
      v21 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    sub_1B1A90C78(v77, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v72 = 1;
  v21 = 2;
LABEL_14:
  [v20 returnTypes_];
  [v20 setDoNotBlockBeforeFirstUnlock_];
  [v20 setDoNotBlockOnNetworkStatus_];
  sub_1B1AA0AEC(6, a2);
  v70 = v3;
  if (!v78)
  {
    sub_1B1A90C78(v77, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_18;
  }

  if ((OUTLINED_FUNCTION_13_11() & 1) == 0)
  {
LABEL_18:
    v22 = 0;
    goto LABEL_19;
  }

  v22 = v74;
LABEL_19:
  sub_1B1AE8AD0(v20, a1, v22);
  v23 = 1;
  v24 = MEMORY[0x1E69E63A8];
  for (i = v20; ; v20 = i)
  {
    v25 = [v20 queryMetaDataSync];
    v26 = v25;
    if (v25 != 2)
    {
      break;
    }

    if ((v72 & v23 & 1) == 0)
    {
      goto LABEL_26;
    }

    if (qword_1EB761600 != -1)
    {
      swift_once();
    }

    v27 = byte_1EB762610;
    sub_1B1C2D098();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1B1C361C0;
    *(v28 + 56) = MEMORY[0x1E69E6370];
    *(v28 + 64) = v24;
    *(v28 + 32) = v27;
    sub_1B1C2C7C8();

    v23 = 0;
  }

  if (!v25)
  {
    goto LABEL_27;
  }

LABEL_26:
  sub_1B1C2D0B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1B1C36280;
  v30 = [a1 string];
  v31 = sub_1B1C2CB58();
  v33 = v32;

  *(v29 + 56) = MEMORY[0x1E69E6158];
  v34 = sub_1B1AC9204();
  *(v29 + 32) = v31;
  *(v29 + 40) = v33;
  v35 = MEMORY[0x1E69E65A8];
  *(v29 + 96) = MEMORY[0x1E69E6530];
  *(v29 + 104) = v35;
  *(v29 + 64) = v34;
  *(v29 + 72) = v26;
  sub_1B1C2C7C8();

LABEL_27:
  if (v72 && ([v20 isCatalogFetchedWithinThePastFewDays_] & 1) == 0)
  {
    v36 = sub_1B1AE9DE8(a1);
    if (*(v36 + 16))
    {
      v37 = *(v36 + 32);

      if (v37 == v70)
      {
        type metadata accessor for TTSAssetMAStrategy();
        sub_1B1B39710(a1);
      }
    }

    else
    {
    }
  }

  if (!sub_1B1AEA3CC(v20))
  {

    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1B1AEA3CC(v20);
  if (!result)
  {
    goto LABEL_84;
  }

  v39 = result;
  v40 = sub_1B1A9547C(result);
  v41 = MEMORY[0x1E69E7CC0];
  if (v40)
  {
    v42 = v40;
    v77[0] = MEMORY[0x1E69E7CC0];
    sub_1B1C2D5B8();
    if (v42 < 0)
    {
      __break(1u);
      goto LABEL_80;
    }

    v43 = 0;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x1B2738A20](v43, v39);
      }

      else
      {
        v44 = *(v39 + 8 * v43 + 32);
      }

      v45 = v44;
      ++v43;
      v46 = type metadata accessor for TTSAssetMAAsset();
      v47 = objc_allocWithZone(v46);
      *&v47[OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset] = v45;
      v76.receiver = v47;
      v76.super_class = v46;
      objc_msgSendSuper2(&v76, sel_init);
      sub_1B1C2D588();
      v48 = *(v77[0] + 16);
      OUTLINED_FUNCTION_11_9();
      sub_1B1C2D5C8();
      OUTLINED_FUNCTION_11_9();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    while (v42 != v43);

    v3 = v77[0];
    v41 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  if (qword_1ED9A98B8 != -1)
  {
    swift_once();
  }

  v49 = qword_1ED9A98C0;
  v50 = sub_1B1C2D248();

  if ((v50 & 1) == 0)
  {
    if (!(v3 >> 62))
    {

      sub_1B1C2D7B8();
      type metadata accessor for TTSAsset();

      return v3;
    }

LABEL_80:
    type metadata accessor for TTSAsset();

    v69 = sub_1B1C2D668();

    swift_bridgeObjectRelease_n();
    return v69;
  }

  v77[0] = v41;
  v51 = sub_1B1A9547C(v3);
  a2 = 0;
  v6 = v3 & 0xC000000000000001;
  a1 = (v3 & 0xFFFFFFFFFFFFFF8);
  while (v51 != a2)
  {
    if (v6)
    {
      v52 = MEMORY[0x1B2738A20](a2, v3);
    }

    else
    {
      if (a2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v52 = *(v3 + 8 * a2 + 32);
    }

    v53 = v52;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    if ([v52 locallyAvailable])
    {
      sub_1B1C2D588();
      v54 = *(v77[0] + 16);
      OUTLINED_FUNCTION_11_9();
      sub_1B1C2D5C8();
      OUTLINED_FUNCTION_11_9();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    else
    {
    }

    ++a2;
  }

  v55 = v77[0];
  v56 = sub_1B1A9547C(v77[0]);
  if (!v56)
  {

    v66 = MEMORY[0x1E69E7CC0];
LABEL_70:
    if (v3 >> 62)
    {
      type metadata accessor for TTSAsset();

      v67 = sub_1B1C2D668();
    }

    else
    {

      sub_1B1C2D7B8();
      type metadata accessor for TTSAsset();
      v67 = v3;
    }

    if (v66 >> 62)
    {
      type metadata accessor for TTSAsset();

      v68 = sub_1B1C2D668();
    }

    else
    {

      sub_1B1C2D7B8();
      type metadata accessor for TTSAsset();
      v68 = v66;
    }

    v77[0] = v67;
    sub_1B1AB4AD0(v68);

    return v77[0];
  }

  v57 = v56;
  v77[0] = MEMORY[0x1E69E7CC0];
  result = sub_1B1C2D5B8();
  if ((v57 & 0x8000000000000000) == 0)
  {
    v58 = 0;
    do
    {
      if ((v55 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x1B2738A20](v58, v55);
      }

      else
      {
        v59 = *(v55 + 8 * v58 + 32);
      }

      v60 = v59;
      ++v58;
      v61 = *&v59[OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset];
      v62 = objc_allocWithZone(type metadata accessor for TTSAssetMACompactAsset());
      *&v62[OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset] = v61;
      v63 = type metadata accessor for TTSAssetMAAsset();
      v75.receiver = v62;
      v75.super_class = v63;
      v64 = v61;
      objc_msgSendSuper2(&v75, sel_init);

      sub_1B1C2D588();
      v65 = *(v77[0] + 16);
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    while (v57 != v58);

    v66 = v77[0];
    goto LABEL_70;
  }

  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

void sub_1B1AE8AD0(uint64_t a1, uint64_t a2, char *a3)
{
  if (qword_1ED9A9978 != -1)
  {
LABEL_38:
    swift_once();
  }

  v5 = qword_1ED9A9980;
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v6 = v5;
  v7 = sub_1B1C2D248();

  if (v7)
  {
    v8 = [objc_opt_self() _gryphonVoiceCompatibility];
    v10 = &v8[v9];
    if (__OFADD__(v8, v9))
    {
      goto LABEL_42;
    }

    v11 = (v10 - 1);
    if (__OFSUB__(v10, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    v30 = a1;
    if (a3)
    {
      a1 = 1;
    }

    else
    {
      a1 = v8;
    }

    if (v11 >= a1)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  if (qword_1ED9A98D0 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v12 = qword_1ED9A98D8;
    v13 = OUTLINED_FUNCTION_8_10();

    if (v13)
    {
      v30 = a1;
      v11 = 7;
    }

    else
    {
      if (qword_1ED9A9960 != -1)
      {
LABEL_45:
        swift_once();
      }

      v14 = qword_1ED9A9968;
      v15 = OUTLINED_FUNCTION_8_10();

      if ((v15 & 1) == 0)
      {
        return;
      }

      v30 = a1;
      v11 = 18;
    }

    a1 = 1;
LABEL_17:
    v16 = v11 - a1;
    if (__OFSUB__(v11, a1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_40;
    }

    if (v16 == -1)
    {
LABEL_31:
      v27 = *MEMORY[0x1E69B1840];
      v28 = sub_1B1C2CE68();

      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {
      }

      [v30 addKeyValueArray:v27 with:v29];

      return;
    }

    v31 = MEMORY[0x1E69E7CC0];
    sub_1B1AC9FA8();
    if ((v17 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  a3 = 0;
  v18 = 0;
  v19 = v31;
  while (1)
  {
    if (a3 >= v17)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v20 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      goto LABEL_36;
    }

    if (v18)
    {
      break;
    }

    v22 = sub_1B1C2D778();
    v32 = v19;
    v23 = *(v19 + 16);
    if (v23 >= *(v19 + 24) >> 1)
    {
      v26 = v21;
      sub_1B1AC9FA8();
      v21 = v26;
      v19 = v32;
    }

    *(v19 + 16) = v23 + 1;
    v24 = v19 + 16 * v23;
    *(v24 + 32) = v22;
    *(v24 + 40) = v21;
    v18 = a1 == v11;
    if (a1 == v11)
    {
      a1 = 0;
    }

    else if (__OFADD__(a1++, 1))
    {
      goto LABEL_37;
    }

    ++a3;
    if (v20 == v17)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
}

uint64_t sub_1B1AE8E3C(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v4 = *v2;
  LOBYTE(v5) = sub_1B1C2D098();
  if (qword_1ED9A99C0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v6 = qword_1ED9AA670;
  if (os_log_type_enabled(qword_1ED9AA670, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38 = v8;
    *v7 = 136315138;
    if (qword_1ED9A9870 != -1)
    {
      swift_once();
    }

    v9 = sub_1B1C2C1C8();
    __swift_project_value_buffer(v9, qword_1ED9AA650);
    v10 = sub_1B1C2C098();
    v12 = sub_1B1A930E4(v10, v11, &v38);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1B1A8A000, v6, v5, "Searching in preinstalled voice directory: '%s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  v13 = sub_1B1C2D0D8();
  v14 = os_log_type_enabled(v6, v13);
  if (v14)
  {
    v15 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v15 = 136446466;
    v16 = sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v17 = MEMORY[0x1B2738350](v35, v16);
    v19 = sub_1B1A930E4(v17, v18, &v38);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = sub_1B1AB5454(a2);
    v22 = sub_1B1A930E4(v20, v21, &v38);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1B1A8A000, v6, v13, "#Local listing voices for types: %{public}s, filter: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  if (qword_1ED9A9548 != -1)
  {
    v14 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v14);
  v34 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763FA8, &unk_1B1C40950);
  v4 = 0;
  sub_1B1C2D138();
  a2 = v38;
  v37 = MEMORY[0x1E69E7CC0];
  v23 = sub_1B1A9547C(v38);
  v5 = 0;
  v24 = a2 & 0xC000000000000001;
  while (v23 != v5)
  {
    sub_1B1A9EC44(v5, v24 == 0, a2);
    if (v24)
    {
      v25 = MEMORY[0x1B2738A20](v5, a2);
    }

    else
    {
      v25 = *(a2 + 8 * v5 + 32);
    }

    v26 = v25;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    v27 = sub_1B1AECD40();
    v36 = v27;
    MEMORY[0x1EEE9AC00](v27);
    v34 = &v36;
    v28 = sub_1B1ABAB9C(sub_1B1ABACC4, &v33, v35);

    if (v28)
    {
      sub_1B1C2D588();
      v29 = *(v37 + 16);
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    else
    {
    }

    ++v5;
  }

  v30 = v37;
  if (v37 < 0 || (v37 & 0x4000000000000000) != 0)
  {
    type metadata accessor for TTSAsset();

    v31 = sub_1B1C2D668();
  }

  else
  {

    sub_1B1C2D7B8();
    type metadata accessor for TTSAsset();
    v31 = v30;
  }

  return v31;
}

uint64_t sub_1B1AE92E8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762848, &qword_1B1C394C8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B1AE9318@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1B1AECDA0();
  *a1 = result;
  return result;
}

uint64_t sub_1B1AE9354()
{
  sub_1B1AED7D4();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B1AE9388@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B1C2BEA8();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - v15;
  v42 = sub_1B1AE97E8(a1, a2);
  sub_1B1AEE318();
  v17 = sub_1B1AEE42C();
  v19 = v18;

  sub_1B1C2BE98();
  sub_1B1C2BE78();
  sub_1B1C2BE78();
  sub_1B1C2BE78();
  sub_1B1C2BE78();
  sub_1B1C2BE78();
  sub_1B1C2BE78();
  v45 = v16;
  sub_1B1C2BE78();
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  v49 = v20;
  v50 = v17;
  if (!v20)
  {
    goto LABEL_38;
  }

  v41 = a3;
  v43 = 0;
  v44 = 0;
  v21 = 0;
  a3 = 0;
  v47 = v19 & 0xFFFFFFFFFFFFFFLL;
  v48 = 0;
  v46 = (v19 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v9 += 8;
  while (1)
  {
    if ((v19 & 0x1000000000000000) != 0)
    {
      sub_1B1C2D528();
      v27 = v26;
      goto LABEL_14;
    }

    if ((v19 & 0x2000000000000000) == 0)
    {
      v22 = v46;
      if ((v50 & 0x1000000000000000) == 0)
      {
        v22 = sub_1B1C2D578();
      }

      v23 = *(a3 + v22);
      if (v23 < 0)
      {
        OUTLINED_FUNCTION_5_26();
        switch(v25)
        {
          case 1:
            goto LABEL_28;
          case 2:
            goto LABEL_32;
          case 3:
            goto LABEL_33;
          default:
            break;
        }
      }

LABEL_13:
      v27 = 1;
      goto LABEL_14;
    }

    v51[0] = v50;
    v51[1] = v47;
    v23 = *(v51 + a3);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_5_26();
    switch(v33)
    {
      case 1:
LABEL_28:
        v34 = v24[1] & 0x3F | ((v23 & 0x1F) << 6);
        v27 = 2;
        break;
      case 2:
LABEL_32:
        v35 = ((v23 & 0xF) << 12) | ((v24[1] & 0x3F) << 6) | v24[2] & 0x3Fu;
        v27 = 3;
        break;
      case 3:
LABEL_33:
        v36 = ((v23 & 0xF) << 18) | ((v24[1] & 0x3F) << 12) | ((v24[2] & 0x3F) << 6) | v24[3] & 0x3Fu;
        v27 = 4;
        break;
      default:
        goto LABEL_13;
    }

LABEL_14:
    sub_1B1C2BE38();
    v28 = sub_1B1C2BE88();
    v29 = *v9;
    (*v9)(v14, v6);
    if (v28)
    {
      goto LABEL_30;
    }

    sub_1B1C2BE58();
    v30 = sub_1B1C2BE88();
    v29(v14, v6);
    if (v30)
    {
      break;
    }

    sub_1B1C2BE48();
    v32 = sub_1B1C2BE88();
    v29(v14, v6);
    if (v32)
    {
      v31 = __OFADD__(v48++, 1);
      if (v31)
      {
        goto LABEL_35;
      }
    }

    else if (sub_1B1C2BE88())
    {
      v31 = __OFADD__(v43++, 1);
      if (v31)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v31 = __OFADD__(v44++, 1);
      if (v31)
      {
        goto LABEL_37;
      }
    }

LABEL_30:
    a3 = (a3 + v27);
    if (a3 >= v49)
    {

      a3 = v41;
      v38 = v43;
      v37 = v44;
      v39 = v48;
      result = (v29)(v45, v6);
      goto LABEL_34;
    }
  }

  v31 = __OFADD__(v21++, 1);
  if (!v31)
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:

  v37 = 0;
  v38 = 0;
  v39 = 0;
  v21 = 0;
  result = (*(v9 + 8))(v45, v6);
LABEL_34:
  *a3 = v42;
  a3[1] = v21;
  a3[2] = v39;
  a3[3] = v38;
  a3[4] = v37;
  return result;
}

uint64_t sub_1B1AE97E8(uint64_t a1, unint64_t a2)
{
  v60 = 0;
  v61 = 0xE000000000000000;
  v58 = 0;
  v59 = 0xE000000000000000;
  if (sub_1B1C2CDA8() & 1) != 0 && (sub_1B1C2CDB8())
  {
    isEscapingClosureAtFileLocation = [objc_allocWithZone(type metadata accessor for SSMLSimpleParser()) init];
    v5 = sub_1B1BC7C18();
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = (v5 + 56);
      do
      {
        v8 = *(v7 - 2);
        if (v8)
        {
          v9 = *(v7 - 3);
          v11 = *(v7 - 1);
          v10 = *v7;
          aBlock = v9;
          v51 = v8;
          v56 = 0x61706D6173;
          v57 = 0xE500000000000000;
          sub_1B1A8EDAC();

          if (OUTLINED_FUNCTION_4_23() & 1) != 0 || (aBlock = v9, v51 = v8, v56 = 7366764, v57 = 0xE300000000000000, (OUTLINED_FUNCTION_4_23()))
          {
            if (v10)
            {
              v12 = v11;
            }

            else
            {
              v12 = 0;
            }

            if (v10)
            {
              v13 = v10;
            }

            else
            {
              v13 = 0xE000000000000000;
            }

            MEMORY[0x1B27381B0](v12, v13);

            MEMORY[0x1B27381B0](2106144, 0xE300000000000000);
          }
        }

        v7 += 4;
        --v6;
      }

      while (v6);

      goto LABEL_24;
    }

LABEL_23:

LABEL_24:

    v16 = 0;
    goto LABEL_25;
  }

  v14 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v15 = sub_1B1AEDFA4(0xD00000000000001DLL, 0x80000001B1C52150, 0);
  v17 = v15;
  if (!v15)
  {
    v16 = 0;
    goto LABEL_25;
  }

  v49 = sub_1B1C2CB28();
  v56 = a1;
  v57 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F50, &qword_1B1C407E0);
  sub_1B1AEDF30();
  sub_1B1A8EDAC();
  v18 = sub_1B1C2D268();
  v20 = v19;
  OUTLINED_FUNCTION_66();
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = &v60;
  v22 = swift_allocObject();
  v16 = sub_1B1BC8C7C;
  *(v22 + 16) = sub_1B1BC8C7C;
  *(v22 + 24) = v21;
  v54 = sub_1B1BC8C88;
  v55 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1B1BC87C0;
  v53 = &block_descriptor_23;
  v23 = _Block_copy(&aBlock);

  [v17 enumerateMatchesInString:v49 options:0 range:v18 usingBlock:{v20, v23}];

  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_25:
  v56 = 0;
  v57 = 0xE000000000000000;
  v24 = HIBYTE(v61) & 0xF;
  if ((v61 & 0x2000000000000000) == 0)
  {
    v24 = v60 & 0xFFFFFFFFFFFFLL;
  }

  aBlock = v60;
  v51 = v61;
  v52 = 0;
  v53 = v24;

  while (1)
  {
    v25 = sub_1B1C2CD08();
    if (!v26)
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    if (v25 == 46 && v26 == 0xE100000000000000)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_40();
    v30 = OUTLINED_FUNCTION_6_23();
    v31 = v27 == 95 && v28 == 0xE100000000000000;
    v32 = v31;
    if (v30 & 1) != 0 || v32 || ((OUTLINED_FUNCTION_40(), v33 = OUTLINED_FUNCTION_6_23(), v27 == 35) ? (v34 = v28 == 0xE100000000000000) : (v34 = 0), !v34 ? (v35 = 0) : (v35 = 1), (v33 & 1) != 0 || (v35 & 1) != 0 || (OUTLINED_FUNCTION_40(), (OUTLINED_FUNCTION_6_23())))
    {
LABEL_50:
      v36 = OUTLINED_FUNCTION_40();
      MEMORY[0x1B27381A0](v36);
    }
  }

  v37 = sub_1B1C2CC68();

  v56 = 0;
  v57 = 0xE000000000000000;
  v38 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v38 = v58 & 0xFFFFFFFFFFFFLL;
  }

  aBlock = v58;
  v51 = v59;
  v52 = 0;
  v53 = v38;
  while (1)
  {
    v39 = sub_1B1C2CD08();
    if (!v40)
    {
      break;
    }

    v41 = v39;
    v42 = v40;
    v43 = v39 == 46 && v40 == 0xE100000000000000;
    if (v43 || ((v44 = OUTLINED_FUNCTION_6_23(), v41 == 35) ? (v45 = v42 == 0xE100000000000000) : (v45 = 0), !v45 ? (v46 = 0) : (v46 = 1), (v44 & 1) != 0 || (v46 & 1) != 0 || (OUTLINED_FUNCTION_6_23() & 1) != 0))
    {
      MEMORY[0x1B27381A0](v41, v42);
    }
  }

  v47 = sub_1B1C2CC68();

  if (__OFADD__(v37, v47))
  {
    __break(1u);
  }

  else
  {

    sub_1B1A949B4(v16);
    return v37 + v47;
  }

  return result;
}

uint64_t RoughDurationEstimationAction.__deallocating_deinit()
{
  v0 = *(Buffer.deinit() + 32);

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1B1AE9DE8(void *a1)
{
  if (qword_1ED9A9920 != -1)
  {
    swift_once();
  }

  inited = qword_1ED9A9928;
  sub_1B1C2D1B8();
  if (qword_1ED9A9908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = sub_1B1AEA28C(a1, qword_1ED9A9910);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    swift_endAccess();
    if (sub_1B1B347C8(a1))
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v6 = sub_1B1AB5BB8();
      v8 = v7;
      sub_1B1B0464C();
      v5 = v9;
      v10 = *(v9 + 16);
      v11 = v10 + 1;
      if (v10 >= *(v9 + 24) >> 1)
      {
        sub_1B1B0464C();
        v11 = v10 + 1;
        v5 = v37;
      }

      *(v5 + 16) = v11;
      v12 = v5 + 16 * v10;
      *(v12 + 32) = v6;
      *(v12 + 40) = v8;
      type metadata accessor for TTSAsset();
      if (sub_1B1B34578())
      {
        type metadata accessor for TTSAssetTrialStrategy();
        v13 = &off_1F28B7758;
      }

      else
      {
        type metadata accessor for TTSAssetStubStrategy();
        v13 = &off_1F28B7930;
      }

      inited = swift_initStaticObject();
      v14 = *(v5 + 16);
      v1 = (v14 + 1);
      if (v14 >= *(v5 + 24) >> 1)
      {
        sub_1B1B0464C();
        v5 = v38;
      }

      *(v5 + 16) = v1;
      v15 = v5 + 16 * v14;
      *(v15 + 32) = inited;
      *(v15 + 40) = v13;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = *(v5 + 16);
      sub_1B1B0464C();
      v5 = v34;
    }

    OUTLINED_FUNCTION_4_8();
    if (v16)
    {
      OUTLINED_FUNCTION_2_15();
      v5 = v35;
    }

    type metadata accessor for TTSAssetMAStrategy();
    v17 = swift_initStaticObject();
    *(v5 + 16) = inited;
    v18 = v5 + 16 * v1;
    *(v18 + 32) = v17;
    *(v18 + 40) = &off_1F28B7B18;
    if (qword_1ED9A96B8 != -1)
    {
      swift_once();
    }

    v19 = qword_1ED9A96C0;
    sub_1B1AB2758();
    if (v20 != 2 && (v20 & 1) != 0)
    {
      if (qword_1ED9A9978 != -1)
      {
        OUTLINED_FUNCTION_6();
      }

      v21 = qword_1ED9A9980;
      v19 = sub_1B1AB940C();
      v1 = v21;
      v22 = sub_1B1C2D248();

      if (v22)
      {
        goto LABEL_31;
      }

      if (qword_1ED9A9960 != -1)
      {
        OUTLINED_FUNCTION_12_4();
      }

      v1 = qword_1ED9A9968;
      v19 = sub_1B1C2D248();

      if (v19)
      {
LABEL_31:
        OUTLINED_FUNCTION_4_8();
        if (v16)
        {
          OUTLINED_FUNCTION_2_15();
          v5 = v40;
        }

        type metadata accessor for TTSAssetAdhocStrategy();
        v23 = swift_initStaticObject();
        *(v5 + 16) = v19;
        v24 = v5 + 16 * v1;
        *(v24 + 32) = v23;
        *(v24 + 40) = &off_1F28B77A8;
      }
    }

    OUTLINED_FUNCTION_4_8();
    if (v16)
    {
      OUTLINED_FUNCTION_2_15();
      v5 = v36;
    }

    type metadata accessor for TTSAssetFactoryInstalledStrategy();
    v25 = swift_initStaticObject();
    *(v5 + 16) = v19;
    v26 = v5 + 16 * v1;
    *(v26 + 32) = v25;
    *(v26 + 40) = &off_1F28B7400;
    if (qword_1ED9A9960 != -1)
    {
      OUTLINED_FUNCTION_12_4();
    }

    v27 = qword_1ED9A9968;
    sub_1B1AB940C();
    v28 = v27;
    v29 = sub_1B1C2D248();

    if ((v29 & 1) == 0)
    {
      OUTLINED_FUNCTION_4_8();
      if (v16)
      {
        OUTLINED_FUNCTION_2_15();
        v5 = v39;
      }

      type metadata accessor for TTSAssetPreinstalledStrategy();
      v30 = swift_initStaticObject();
      *(v5 + 16) = v29;
      v31 = v5 + 16 * v28;
      *(v31 + 32) = v30;
      *(v31 + 40) = &off_1F28B7490;
    }

    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v41 = qword_1ED9A9910;
    sub_1B1B37394(v5, a1);
    qword_1ED9A9910 = v41;
  }

  swift_endAccess();
  sub_1B1C2D1C8();
  return v5;
}

uint64_t sub_1B1AEA28C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1B1AEBB3C();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_70_0(v2);
}

uint64_t sub_1B1AEA2D8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1B1C2CB58();

  return v4;
}

id sub_1B1AEA368(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1B1C2CB28();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithType_];

  return v4;
}

uint64_t sub_1B1AEA3CC(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1B1A8E474(0, &unk_1ED9A9798, 0x1E69B18D8);
  v3 = sub_1B1C2CE78();

  return v3;
}

void sub_1B1AEA43C()
{
  OUTLINED_FUNCTION_25();
  v39 = v1;
  v40 = v2;
  v4 = v3;
  v5 = sub_1B1C2C0A8();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  v13 = (v12 - v11);
  v14 = sub_1B1C2C1C8();
  v15 = OUTLINED_FUNCTION_7(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_132();
  v38 = v20;
  OUTLINED_FUNCTION_16_0();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v36 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v36 - v25;
  v37 = *(v17 + 16);
  v37(v24, v0 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL, v14);
  v41 = v4;
  v42 = v39;
  (*(v8 + 104))(v13, *MEMORY[0x1E6968F68], v5);
  sub_1B1A8EDAC();
  sub_1B1C2C1B8();
  v27 = *(v8 + 8);
  v28 = OUTLINED_FUNCTION_42_0();
  v29(v28);
  v30 = *(v17 + 8);
  v30(v24, v14);
  v31 = [objc_opt_self() defaultManager];
  sub_1B1C2C098();
  sub_1B1C2CB28();
  OUTLINED_FUNCTION_19_5();

  v32 = [v31 fileExistsAtPath_];

  if (v32)
  {
    v37(v38, v26, v14);
    v33 = v40;
    SynthesisCacheFile.init(readFileURL:)();
    v30(v26, v14);
    v34 = 0;
  }

  else
  {
    v30(v26, v14);
    v34 = 1;
    v33 = v40;
  }

  v35 = type metadata accessor for SynthesisCacheFile(0);
  __swift_storeEnumTagSinglePayload(v33, v34, 1, v35);
  OUTLINED_FUNCTION_26_1();
}

void SynthesisCacheFile.init(readFileURL:)()
{
  OUTLINED_FUNCTION_12_17();
  v3 = v2;
  v5 = v4;
  v6 = sub_1B1C2C1C8();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  v15 = *(v9 + 16);
  v15(v5, v3, v6);
  sub_1B1A8E474(0, &qword_1ED9A4F20, 0x1E696AC00);
  v16 = OUTLINED_FUNCTION_19_5();
  v15(v16, v5, v6);
  v17 = sub_1B1ACD2C4(v14);
  if (v0)
  {
    goto LABEL_8;
  }

  v49 = v3;
  v18 = v17;
  if (qword_1ED9A5138 != -1)
  {
    OUTLINED_FUNCTION_2_35();
  }

  v19 = [v18 readDataOfLength_];
  sub_1B1C2C2B8();
  OUTLINED_FUNCTION_22_13();
  v20 = OUTLINED_FUNCTION_66_1();
  if ((MEMORY[0x1B2737770](v20) & 1) == 0)
  {
    OUTLINED_FUNCTION_35_10();
    OUTLINED_FUNCTION_34();
    *v30 = 1;
    OUTLINED_FUNCTION_32_11(v30, 0xD000000000000050);
    v31 = OUTLINED_FUNCTION_66_1();
    sub_1B1A94524(v31, v32);

LABEL_8:
    v33 = *(v9 + 8);
    v34 = OUTLINED_FUNCTION_15();
    v33(v34);
    (v33)(v5, v6);
    goto LABEL_9;
  }

  v21 = [v18 readDataOfLength_];
  sub_1B1C2C2B8();
  OUTLINED_FUNCTION_22_13();
  v22 = OUTLINED_FUNCTION_66_1();
  v24 = sub_1B1AEAC28(v22, v23);
  v25 = OUTLINED_FUNCTION_66_1();
  sub_1B1A94524(v25, v26);
  v27 = v18;
  if (v24 < 1)
  {
    v28 = &off_1E7AF4000;
    v35 = 0;
  }

  else
  {
    v28 = &off_1E7AF4000;
    v29 = [v27 readDataOfLength_];
    sub_1B1C2C2B8();
    OUTLINED_FUNCTION_22_13();
    sub_1B1A8E474(0, &qword_1ED9A4EF0, 0x1E696ACD0);
    OUTLINED_FUNCTION_23_5();
    type metadata accessor for SynthesisVoice();
    v35 = OUTLINED_FUNCTION_28_8();
    v36 = OUTLINED_FUNCTION_66_1();
    sub_1B1A94524(v36, v37);
  }

  v48 = type metadata accessor for SynthesisCacheFile(0);
  *(v5 + v48[6]) = v35;
  v38 = [v27 v28[394]];
  sub_1B1C2C2B8();
  OUTLINED_FUNCTION_22_13();
  v39 = OUTLINED_FUNCTION_66_1();
  v41 = sub_1B1AEAC28(v39, v40);
  v42 = OUTLINED_FUNCTION_66_1();
  sub_1B1A94524(v42, v43);
  if (v41 < 1)
  {
    v45 = 0;
  }

  else
  {
    v44 = [v27 v28[394]];
    sub_1B1C2C2B8();
    OUTLINED_FUNCTION_22_13();
    sub_1B1A8E474(0, &qword_1ED9A4EF0, 0x1E696ACD0);
    OUTLINED_FUNCTION_23_5();
    type metadata accessor for SynthesisResource();
    v45 = OUTLINED_FUNCTION_28_8();
    v46 = OUTLINED_FUNCTION_66_1();
    sub_1B1A94524(v46, v47);
  }

  sub_1B1A94524(v1, v9 + 16);
  (*(v9 + 8))(v49, v6);
  *(v5 + v48[7]) = v45;
  *(v5 + v48[5]) = v27;
LABEL_9:
  OUTLINED_FUNCTION_13_23();
}

uint64_t sub_1B1AEAC28(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 < result)
      {
        __break(1u);
        JUMPOUT(0x1B1AEACA0);
      }

      result = result;
      goto LABEL_5;
    case 2uLL:
      v2 = *(result + 24);
      result = *(result + 16);
LABEL_5:
      result = sub_1B1BDBA24(result);
      break;
    case 3uLL:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1AEACB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SynthesisCacheFile(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1AEAD14()
{
  OUTLINED_FUNCTION_46_1();
  v0 = sub_1B1C2D7F8();
  OUTLINED_FUNCTION_22_3(v0, sel_postNotificationName_object_);
  return swift_unknownObjectRelease();
}

void sub_1B1AEAD78(uint64_t a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {
    v28 = v26[0];
    a3(&v28);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v12 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v12, qword_1ED9A9120);
    (*(v7 + 16))(v10, a1, v6);
    v13 = a2;
    v14 = sub_1B1C2C888();
    v15 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136315650;
      v18 = sub_1B1C2CB58();
      v20 = sub_1B1A930E4(v18, v19, v26);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1B1A930E4(0x664F656372756F53, 0xEB00000000535454, v26);
      *(v16 + 22) = 2080;
      sub_1B1C2BED8();
      sub_1B1A90C78(v27, &qword_1EB761DE0, &qword_1B1C352C0);
      v27[0] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
      v21 = sub_1B1C2CBD8();
      v23 = v22;
      (*(v7 + 8))(v10, v6);
      v24 = sub_1B1A930E4(v21, v23, v26);

      *(v16 + 24) = v24;
      _os_log_impl(&dword_1B1A8A000, v14, v15, "Event '%s' expect associated object as %s, got: %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v17, -1, -1);
      MEMORY[0x1B2739FD0](v16, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_1B1AEB0F8(uint64_t a1)
{
  v3 = *(v1 + 72);
  v4 = mach_absolute_time();
  v5 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisBeginTime;
  OUTLINED_FUNCTION_66_0();
  *(v3 + v5) = v4;
  v6 = OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS;
  OUTLINED_FUNCTION_66_0();
  *(v3 + v6) = a1;
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 thermalState];

  v9 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalState;
  OUTLINED_FUNCTION_66_0();
  *(v3 + v9) = v8;
  LODWORD(v9) = OSThermalNotificationCurrentLevel();
  v10 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalLevel;
  result = OUTLINED_FUNCTION_66_0();
  *(v3 + v10) = v9;
  return result;
}

void sub_1B1AEB214()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v2 = sub_1B1C2C7F8();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_6();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B1C2C7E8();
  v7 = sub_1B1C2C818();
  v8 = sub_1B1C2D188();
  if (sub_1B1C2D278())
  {
    v24 = v8;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    v11 = InstrumentationMetrics.SourceOfTTS.description.getter();
    v13 = sub_1B1A930E4(v11, v12, &v25);

    *(v9 + 4) = v13;
    v14 = sub_1B1C2C7D8();
    _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v7, v24, v14, "TTSSynthesis", "source=%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  v15 = OUTLINED_FUNCTION_11_5();
  v16(v15);
  v17 = sub_1B1C2C868();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  sub_1B1C2C858();
  v21 = OUTLINED_FUNCTION_16_8();
  v22(v21);
  v23 = *(v1 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_synthesisInterval);
  *(v1 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_synthesisInterval) = v20;

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1AEB400()
{
  OUTLINED_FUNCTION_25();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_6_28();
  v10 = OUTLINED_FUNCTION_7(v9);
  v68 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_40_8();
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v66 - v15;
  v16 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v17 = mach_absolute_time();
  v18 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisBeginTime;
  OUTLINED_FUNCTION_66_0();
  *&v16[v18] = v17;
  v19 = OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS;
  OUTLINED_FUNCTION_66_0();
  *&v16[v19] = v4;
  v20 = [objc_opt_self() processInfo];
  v21 = [v20 thermalState];

  v22 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalState;
  OUTLINED_FUNCTION_66_0();
  *&v16[v22] = v21;
  LODWORD(v20) = OSThermalNotificationCurrentLevel();
  v23 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalLevel;
  OUTLINED_FUNCTION_66_0();
  *&v16[v23] = v20;
  if (*(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logSynthesisEvents) != 1)
  {
    goto LABEL_45;
  }

  v24 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65();
  sub_1B1AADD60(v0 + v24, v0);
  OUTLINED_FUNCTION_13(v0);
  if (v25)
  {
    sub_1B1AABFB0(v0);
LABEL_45:
    OUTLINED_FUNCTION_26_1();
    return;
  }

  (*(v68 + 32))(v67, v0, v9);
  v26 = [objc_allocWithZone(MEMORY[0x1E69CF7E8]) init];
  v27 = v26;
  if (!v26)
  {
    goto LABEL_33;
  }

  [v26 setSynthesisSource_];
  v28 = objc_allocWithZone(MEMORY[0x1E69CF7F0]);
  v66 = v27;
  v29 = v27;
  v30 = [v28 init];
  OUTLINED_FUNCTION_69_4(v30, sel_setVoiceContext_);

  v31 = &unk_1ED9AA000;
  if (OUTLINED_FUNCTION_53_4())
  {
    OUTLINED_FUNCTION_39_9();
    v32 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
    OUTLINED_FUNCTION_65();
    [v30 setVoiceType_];

    v31 = &unk_1ED9AA000;
  }

  if (OUTLINED_FUNCTION_53_4())
  {
    OUTLINED_FUNCTION_39_9();
    v33 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
    OUTLINED_FUNCTION_65();
    [v30 setVoiceFootprint_];

    v31 = &unk_1ED9AA000;
  }

  v34 = OUTLINED_FUNCTION_53_4();
  if (v34)
  {
    v30 = v34;
    v35 = *(v2 + v31[177]);
    if (v35)
    {
      v36 = (v35 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
      OUTLINED_FUNCTION_65();
      v37 = v36[1];
      if (v37)
      {
        v38 = _s14SiriTTSService14SynthesisVoiceC9voiceEnum7forNameSo08SISchemadH0VSS_tFZ_0(*v36, v37);
      }

      else
      {
        v38 = 0;
      }

      v31 = &unk_1ED9AA000;
    }

    else
    {
      v38 = 0;
    }

    [v30 setVoiceName_];
  }

  if (!OUTLINED_FUNCTION_53_4())
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39_9();
  if (v31)
  {
    v39 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
    OUTLINED_FUNCTION_65();
    v40 = *(v39 + v31);
    if ((v40 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_47;
    }

    if (!HIDWORD(v40))
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  v40 = 0;
LABEL_24:
  [v30 setVoiceVersion_];

LABEL_25:
  v41 = OUTLINED_FUNCTION_53_4();
  if (!v41)
  {
LABEL_32:
    [v29 setSynthesisEffect_];
    [v29 setThermalState_];
    [v29 setThermalLevel_];
    v27 = v66;
LABEL_33:
    v46 = [objc_allocWithZone(MEMORY[0x1E69CF798]) init];
    [v46 setStartedOrChanged_];
    v47 = v27;
    if (v46)
    {
      sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
      OUTLINED_FUNCTION_47_8();
      v48(v1);
      v49 = v46;
      v50 = sub_1B1AABA20(v1);
      OUTLINED_FUNCTION_36_10(v50, sel_setContextId_);
    }

    v51 = [objc_allocWithZone(MEMORY[0x1E69CF780]) init];
    if (v51)
    {
      v52 = v51;
      [v51 setSynthesisContext_];
      sub_1B1AABABC();
      v54 = v53;
      OUTLINED_FUNCTION_36_10(v53, sel_setEventMetadata_);

      v55 = OUTLINED_FUNCTION_50_6();
      if (v55)
      {
        v16 = v55;
        sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
        (*(v68 + 16))(v1, v67, v9);
        v56 = sub_1B1AABA20(v1);
        OUTLINED_FUNCTION_35_11(v56, sel_setTtsId_);
      }

      v57 = OUTLINED_FUNCTION_50_6();
      if (v57)
      {
        v58 = v57;
        OUTLINED_FUNCTION_54_4(OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
        if (v16)
        {
          v60 = *v59;

          v61 = sub_1B1C2CB28();
        }

        else
        {
          v61 = 0;
        }

        [v58 setClientId_];
      }

      OUTLINED_FUNCTION_68_4();

      v64 = OUTLINED_FUNCTION_33_11();
      v65(v64);
    }

    else
    {
      v62 = OUTLINED_FUNCTION_33_11();
      v63(v62);
    }

    goto LABEL_45;
  }

  v42 = v41;
  v43 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedResource);
  if (!v43)
  {
    goto LABEL_30;
  }

  v44 = OBJC_IVAR___SiriTTSSynthesisResource_version;
  OUTLINED_FUNCTION_65();
  v45 = *(v43 + v44);
  if ((v45 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(v45))
    {
LABEL_31:
      [v42 setResourceVersion_];

      goto LABEL_32;
    }

    __break(1u);
LABEL_30:
    v45 = 0;
    goto LABEL_31;
  }

LABEL_47:
  __break(1u);
}

unint64_t sub_1B1AEBB3C()
{
  v1 = *(v0 + 40);
  sub_1B1C2D238();
  v2 = OUTLINED_FUNCTION_107();

  return sub_1B1AE6BF0(v2, v3);
}

id sub_1B1AEBBA0(void *a1)
{
  result = [a1 level];
  if (result)
  {
    v3 = result;
    v4 = [result directoryValue];

    if (v4 && (v5 = [v4 hasAsset], v4, v5))
    {
      v6 = a1;
      v7 = sub_1B1AEBC74(v6);
      v8 = v7;
      if (v7)
      {
        v9 = v7;
        sub_1B1AEC118();
      }
    }

    else
    {

      type metadata accessor for TTSAssetTrialVoiceAsset();
      swift_deallocPartialClassInstance();
      return 0;
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B1AEBC74(void *a1)
{
  v2 = v1;
  v3 = sub_1B1C2D128();
  v4 = OUTLINED_FUNCTION_7(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v11 = sub_1B1C2D118();
  v12 = OUTLINED_FUNCTION_45(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16();
  v15 = sub_1B1C2C9D8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_16();
  v17 = OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762460, &unk_1B1C37E30);
  swift_allocObject();
  *&v1[v17] = sub_1B1B2A370();
  v18 = &v1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_path];
  *v18 = 0;
  *(v18 + 1) = 0;
  v30 = v18;
  v31 = v17;
  v1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_isDownloading] = 0;
  v29 = OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_downloadToken;
  *&v1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_downloadToken] = 0;
  v32 = OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_progressQueue;
  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  sub_1B1C2C9A8();
  v37 = MEMORY[0x1E69E7CC0];
  sub_1B1ACD030(&qword_1ED9A9720, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1AA624C(&qword_1ED9A96A0, &qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1C2D418();
  (*(v33 + 104))(v10, *MEMORY[0x1E69E8090], v34);
  *&v1[v32] = sub_1B1C2D158();
  if (![a1 hasFactor])
  {
    goto LABEL_8;
  }

  result = [a1 factor];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = result;
  v21 = [result hasName];

  if (!v21)
  {
LABEL_8:
    sub_1B1C2D0C8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12();
    }

    sub_1B1C2C7C8();

    v26 = *&v2[v31];

    v27 = *(v30 + 1);

    v28 = *&v2[v29];
    swift_unknownObjectRelease();

    type metadata accessor for TTSAssetTrialAsset();
    swift_deallocPartialClassInstance();
    return 0;
  }

  result = [a1 factor];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1B1AEA2D8(result, &selRef_name);
  if (!v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = &v2[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
  *v23 = result;
  *(v23 + 1) = v22;
  v36.receiver = v2;
  v36.super_class = type metadata accessor for TTSAssetTrialAsset();
  v24 = objc_msgSendSuper2(&v36, sel_init);
  result = [a1 level];
  if (result)
  {
    v25 = result;
    sub_1B1AE6FEC(result);

    return v24;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B1AEC0C8(uint64_t *a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_1B1C2CAD8();
  return sub_1B1C2C4F8();
}

void sub_1B1AEC118()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];
  v52 = *&v0[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
  v53 = v2;
  v54 = MEMORY[0x1E69E7CC0];

  if (!sub_1B1AE6D1C())
  {
    goto LABEL_8;
  }

  v3 = v54;
  if (v54[2] < 9uLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = MEMORY[0x1E69E6158];
  v5 = OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr;
  v6 = *&v0[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr];
  v7 = v54[20];
  v8 = v54[21];
  v51 = MEMORY[0x1E69E6158];
  v49 = v7;
  v50 = v8;

  sub_1B1AC965C(&v49);

  if (v3[2] < 8uLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = *&v1[v5];
  v10 = v3[18];
  v11 = v3[19];
  v51 = v4;
  v49 = v10;
  v50 = v11;

  sub_1B1AC965C(&v49);

  if (v3[2] < 7uLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = *&v1[v5];
  v13 = v3[17];
  v49 = v3[16];
  v50 = v13;
  sub_1B1A8EDAC();

  OUTLINED_FUNCTION_4();
  v14 = sub_1B1C2D398();
  v51 = v4;
  v49 = v14;
  v50 = v15;
  sub_1B1AC965C(&v49);

  v16 = *&v1[v5];

  sub_1B1AB9288();

  v17 = v51;
  sub_1B1A90C20(&v49, &qword_1EB761DE0, &qword_1B1C352C0);
  if (v17)
  {
LABEL_8:
    v22 = [type metadata accessor for TTSAsset() assistantVoiceMaps];
    v23 = *&v22[OBJC_IVAR___TTSAssistantVoiceMaps_voicesForLanguageMap];

    v24 = [v1 primaryLanguage];
    v25 = sub_1B1C2CB58();
    v27 = v26;

    v28 = sub_1B1AEC754(v25, v27, v23);

    if (!v28)
    {
LABEL_26:

      return;
    }

    v29 = sub_1B1A9547C(v28);
    for (i = 0; ; ++i)
    {
      if (v29 == i)
      {

        goto LABEL_26;
      }

      if ((v28 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1B2738A20](i, v28);
      }

      else
      {
        if (i >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v31 = *(v28 + 8 * i + 32);
      }

      v32 = v31;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v33 = *&v31[OBJC_IVAR___TTSAssistantAsset_name];
      v34 = *&v32[OBJC_IVAR___TTSAssistantAsset_name + 8];
      v35 = sub_1B1C2CBE8();
      v37 = v36;
      v38 = v1;
      sub_1B1AEC7A0();
      v39 = sub_1B1C2CBE8();
      v41 = v40;

      if (v35 == v39 && v37 == v41)
      {

LABEL_25:

        v44 = *&v32[OBJC_IVAR___TTSAssistantAsset_supportedLanguages];

        v45 = *&v38[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B1C361C0;
        *(inited + 32) = 0x65676175676E614CLL;
        *(inited + 40) = 0xE900000000000073;
        *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
        *(inited + 48) = v44;

        sub_1B1C2CAB8();
        os_unfair_lock_lock((v45 + 16));

        OUTLINED_FUNCTION_5_8();
        sub_1B1B3016C(v47, v48, 0, (v45 + 24));
        os_unfair_lock_unlock((v45 + 16));

        goto LABEL_26;
      }

      v43 = sub_1B1C2D7A8();

      if (v43)
      {
        goto LABEL_25;
      }

      v1 = v38;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = *&v1[v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  OUTLINED_FUNCTION_38_1();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B1C361C0;
  if (v3[2] >= 6uLL)
  {
    v20 = v19;
    v21 = v3[15];
    *(v19 + 32) = v3[14];
    *(v19 + 40) = v21;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    v49 = v20;

    sub_1B1AC965C(&v49);

    goto LABEL_8;
  }

LABEL_32:
  __break(1u);
}

uint64_t static TTSAsset.assistantVoiceMaps.getter()
{
  if (qword_1ED9A8F58 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB761288);
  sub_1B1B6675C(&qword_1EB761290, v0, &v2);
  os_unfair_lock_unlock(&dword_1EB761288);
  return v2;
}

uint64_t sub_1B1AEC754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1B1A8EB10();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_70_0(v3);
}

uint64_t sub_1B1AEC7A0()
{
  OUTLINED_FUNCTION_39_0(OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);
  sub_1B1AB9288();

  if (v18[3])
  {
    OUTLINED_FUNCTION_9_7(v0, v1, v2, MEMORY[0x1E69E6158], v3, v4, v5, v6, v15);
    if (swift_dynamicCast())
    {
      v18[0] = v16;
      v18[1] = v17;
      sub_1B1A8EDAC();
      v7 = sub_1B1C2D378();
      v8 = sub_1B1AE778C();
      if (v8[2])
      {
        v9 = v8[4];
        v10 = v8[5];

        OUTLINED_FUNCTION_33();
        sub_1B1C2CBE8();
        sub_1B1C2CBE8();

        v11 = sub_1B1C2CDA8();

        if (v11)
        {

          v7 = v16;
        }
      }

      else
      {
      }

      v12 = OUTLINED_FUNCTION_33();
      sub_1B1AC8BF0(v12, v13, v7);

      return OUTLINED_FUNCTION_43_0();
    }
  }

  else
  {
    sub_1B1A90C20(v18, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  sub_1B1C2D0B8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  sub_1B1C2C7C8();
  return OUTLINED_FUNCTION_43_0();
}

uint64_t sub_1B1AEC9B0(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = sub_1B1C2D0D8();
  if (qword_1ED9A99C0 != -1)
  {
LABEL_19:
    swift_once();
  }

  v4 = qword_1ED9AA670;
  if (os_log_type_enabled(qword_1ED9AA670, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136446466;
    v7 = sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v8 = MEMORY[0x1B2738350](v26, v7);
    v10 = sub_1B1A930E4(v8, v9, &v28);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    v11 = sub_1B1AB5454(a2);
    v13 = sub_1B1A930E4(v11, v12, &v28);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_1B1A8A000, v4, v3, "#FactoryInstall listing assets for types: %{public}s, filter: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2739FD0](v6, -1, -1);
    MEMORY[0x1B2739FD0](v5, -1, -1);
  }

  v14 = sub_1B1AECCBC();
  v28 = MEMORY[0x1E69E7CC0];
  v15 = sub_1B1A9547C(v14);
  a2 = 0;
  v3 = OS_LOG_TYPE_DEFAULT;
  v16 = v14 & 0xC000000000000001;
  while (v15 != a2)
  {
    sub_1B1A9EC44(a2, v16 == 0, v14);
    if (v16)
    {
      v17 = MEMORY[0x1B2738A20](a2, v14);
    }

    else
    {
      v17 = *(v14 + 8 * a2 + 32);
    }

    v18 = v17;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v19 = sub_1B1B06A7C();
    v27 = v19;
    MEMORY[0x1EEE9AC00](v19);
    v25[2] = &v27;
    v20 = sub_1B1ABAB9C(sub_1B1ABACC4, v25, v26);

    if (v20)
    {
      sub_1B1C2D588();
      v21 = *(v28 + 16);
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    else
    {
    }

    ++a2;
  }

  v22 = v28;
  if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
  {
    type metadata accessor for TTSAsset();

    v23 = sub_1B1C2D668();
  }

  else
  {

    sub_1B1C2D7B8();
    type metadata accessor for TTSAsset();
    v23 = v22;
  }

  return v23;
}