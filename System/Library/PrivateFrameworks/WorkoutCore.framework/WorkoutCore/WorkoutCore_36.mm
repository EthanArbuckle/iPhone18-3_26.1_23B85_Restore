uint64_t closure #1 in Announcer.stopSpeaking()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v8 = *(a5 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = closure #1 in Announcer.stopSpeaking();

  return v12(ObjectType, a5);
}

uint64_t closure #1 in Announcer.stopSpeaking()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *closure #2 in Announcer.stopSpeaking()(char a1)
{
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.voiceFeedback);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_20AEA4000, v3, v4, "AFSiriAnnounceVoiceFeedbackRequest cancelation result=%{BOOL}d", v5, 8u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = &result[OBJC_IVAR____TtC11WorkoutCore9Announcer_currentSiriAnnounceRequestID];
    v8 = *&result[OBJC_IVAR____TtC11WorkoutCore9Announcer_currentSiriAnnounceRequestID + 8];
    *v7 = 0;
    *(v7 + 1) = 0;
  }

  return result;
}

Swift::Double __swiftcall Announcer.estimateDuration(of:)(Swift::String of)
{
  object = of._object;
  countAndFlagsBits = of._countAndFlagsBits;
  v2 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v38[1] = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v38 - v14;
  if ((specialized Announcer.appLanguageMatchesAssistantLanguage.getter() & 1) != 0 && (v16 = [objc_opt_self() sharedPreferences], v17 = objc_msgSend(v16, sel_outputVoice), v16, v17) && (v18 = objc_msgSend(v17, sel_languageCode), v17, v18))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    specialized static VoiceFeedbackUtilities.appVoiceLanguageId.getter();
  }

  specialized Announcer.voiceName.getter();
  v19 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
  v20 = SynthesisVoice.init(language:name:)();
  v21 = objc_allocWithZone(type metadata accessor for SpeechRequest());

  v22 = v20;
  v23 = SpeechRequest.init(text:voice:)();
  swift_beginAccess();
  v24 = specialized AtomicLazy.load()();
  swift_endAccess();
  [v24 opaqueSessionID];

  AudibleRequestProtocol.audioSessionId.setter();
  AudibleRequestProtocol.immediate.setter();
  SynthesizingRequestProtocol.disableCompactVoice.setter();
  SynthesizingRequestProtocol.privacySensitive.setter();

  type metadata accessor for DurationEstimator();
  v25 = v23;
  static DurationEstimator.roughEstimation(request:)();
  v27 = v26;

  v43 = v27;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.init(locale:)();
  static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
  MEMORY[0x20F2E4430](v5, v9);
  (*(v40 + 8))(v5, v41);
  v28 = *(v39 + 8);
  v28(v13, v9);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  BinaryFloatingPoint.formatted<A>(_:)();
  v28(v15, v9);
  v30 = v44[0];
  v29 = v44[1];
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static WOLog.voiceFeedback);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44[0] = v35;
    *v34 = 136315394;
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, v44);

    *(v34 + 4) = v36;
    *(v34 + 12) = 2080;
    *(v34 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v44);
    _os_log_impl(&dword_20AEA4000, v32, v33, "estimatedDuration=%ss for utterance=%s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v35, -1, -1);
    MEMORY[0x20F2E9420](v34, -1, -1);
  }

  else
  {
  }

  return v27;
}

void Announcer.setupAudioSessionOnBackground()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = *&v0[OBJC_IVAR____TtC11WorkoutCore9Announcer_availabilityProvider];
  if (VoiceFeedbackAvailabilityProvider.isVoiceFeedbackAvailable()())
  {
    static TaskPriority.userInitiated.getter();
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;
    v9 = v1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in Announcer.setupAudioSessionOnBackground(), v8);
  }

  else
  {
    if (one-time initialization token for voiceFeedback != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.voiceFeedback);
    v15 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20AEA4000, v15, v11, "Skipping setupAudioSession. Voice feedback not available.", v12, 2u);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    v13 = v15;
  }
}

uint64_t closure #1 in Announcer.setupAudioSessionOnBackground()()
{
  if ((*(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore9Announcer_audioSessionSetupComplete) & 1) == 0)
  {
    Announcer.setupAudioSession()();
  }

  v1 = *(v0 + 8);

  return v1();
}

void Announcer.setupAudioSession()()
{
  v1 = v0;
  v20[3] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.voiceFeedback);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "setting ParticipatesInNowPlayingAppPolicy on auxi audio session to false", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = specialized AtomicLazy.load()();
  swift_endAccess();
  v20[0] = 0;
  v7 = [v6 setParticipatesInNowPlayingAppPolicy:0 error:v20];

  if (v7)
  {
    v8 = v20[0];
  }

  else
  {
    v9 = v20[0];
    v10 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = v10;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = Error.localizedDescription.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_20AEA4000, v12, v13, "error setting ParticipatesInNowPlayingAppPolicy on audio session error=%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_15(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    else
    {
    }
  }

  Announcer.updateAudioSessionCategory()();
  *(v1 + OBJC_IVAR____TtC11WorkoutCore9Announcer_audioSessionSetupComplete) = 1;
  v19 = *MEMORY[0x277D85DE8];
}

void Announcer.updateAudioSessionCategory()()
{
  v1 = v0;
  state64[3] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v2 = specialized AtomicLazy.load()();
  swift_endAccess();
  v3 = [v2 currentRoute];

  v4 = [v3 outputs];
  v5 = _sSo17OS_dispatch_queueCMaTm_17(0, &lazy cache variable for type metadata for AVAudioSessionPortDescription, 0x277CB8408);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v102 = v5;
  v103 = v1;
  if (v6 >> 62)
  {
LABEL_61:
    v109 = __CocoaSet.count.getter();
  }

  else
  {
    v109 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = *MEMORY[0x277CB81D0];
  v106 = *MEMORY[0x277CB8168];
  v108 = *MEMORY[0x277CB8178];
  loga = *MEMORY[0x277CB8158];
  do
  {
    v10 = v7;
    if (v109 == v7)
    {
      break;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x20F2E7A20](v7, v6);
    }

    else
    {
      if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v11 = *(v6 + 8 * v7 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v13 = [v11 portType];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
    {
      goto LABEL_25;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_26;
    }

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
    {
      goto LABEL_25;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_26;
    }

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
    {
LABEL_25:

      goto LABEL_28;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
LABEL_26:

      goto LABEL_28;
    }

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
    if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
    {

      break;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v10 + 1;
  }

  while ((v9 & 1) == 0);

LABEL_28:
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static WOLog.voiceFeedback);
  v35 = v103;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 67109376;
    *(v38 + 4) = v109 != v10;
    *(v38 + 8) = 1024;
    state64[0] = 0;
    v39 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateToken;
    swift_beginAccess();
    v40 = *(&v35->isa + v39);
    if (v40 == -1)
    {
      v41 = 1;
    }

    else
    {
      notify_get_state(v40, state64);
      v41 = state64[0] == 0;
    }

    *(v38 + 10) = v41;

    _os_log_impl(&dword_20AEA4000, v36, v37, "headphonesRouted=%{BOOL}d isSilentModeEnabled=%{BOOL}d", v38, 0xEu);
    MEMORY[0x20F2E9420](v38, -1, -1);
  }

  else
  {

    v36 = v35;
  }

  v111[0] = 0;
  v42 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateToken;
  swift_beginAccess();
  v43 = *(&v35->isa + v42);
  if (v43 == -1 || (notify_get_state(v43, v111), !v111[0]))
  {
    v44 = MEMORY[0x277CB8030];
    if (v109 == v10)
    {
      v44 = MEMORY[0x277CB8020];
    }
  }

  else
  {
    v44 = MEMORY[0x277CB8030];
  }

  v45 = *v44;
  swift_beginAccess();
  v46 = specialized AtomicLazy.load()();
  swift_endAccess();
  v47 = [v46 category];

  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;
  if (v48 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v50 == v51)
  {
  }

  else
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v52)
    {
    }

    else
    {
      v53 = v35;
      v54 = v45;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v101 = v56;
        log = v55;
        v107 = v54;
        v57 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v110 = v100;
        *v57 = 136316418;
        swift_beginAccess();
        v58 = specialized AtomicLazy.load()();
        swift_endAccess();
        v59 = [v58 category];

        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v110);

        *(v57 + 4) = v63;
        *(v57 + 12) = 2080;
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v110);

        *(v57 + 14) = v66;
        *(v57 + 22) = 1024;
        v111[0] = 0;
        v67 = *(&v35->isa + v42);
        if (v67 == -1)
        {
          v68 = 1;
        }

        else
        {
          notify_get_state(v67, v111);
          v68 = v111[0] == 0;
        }

        *(v57 + 24) = v68;
        *(v57 + 28) = 1024;
        *(v57 + 30) = v109 != v10;
        *(v57 + 34) = 1024;
        *(v57 + 36) = 1;
        *(v57 + 40) = 2080;
        swift_beginAccess();
        v69 = specialized AtomicLazy.load()();
        swift_endAccess();
        v70 = [v69 currentRoute];

        v71 = [v70 outputs];
        v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v73 = MEMORY[0x20F2E6F70](v72, v102);
        v75 = v74;

        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v110);

        *(v57 + 42) = v76;
        _os_log_impl(&dword_20AEA4000, log, v101, "configure audio session category existing=%s new=%s silent_mode=%{BOOL}d headphonesRouted=%{BOOL}d duckOthers=%{BOOL}d route=%s", v57, 0x32u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v100, -1, -1);
        MEMORY[0x20F2E9420](v57, -1, -1);

        v54 = v107;
      }

      else
      {
      }

      swift_beginAccess();
      v77 = specialized AtomicLazy.load()();
      swift_endAccess();
      v111[0] = 0;
      v78 = [v77 setActive:0 error:v111];

      v79 = v111[0];
      if (!v78)
      {
        goto LABEL_55;
      }

      swift_beginAccess();
      v80 = v79;
      v81 = specialized AtomicLazy.load()();
      swift_endAccess();
      v82 = *MEMORY[0x277CB80F0];
      v111[0] = 0;
      v83 = [v81 setCategory:v54 mode:v82 options:65555 error:v111];

      v79 = v111[0];
      if (v83)
      {
        v84 = v111[0];
      }

      else
      {
LABEL_55:
        v85 = v79;
        v86 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v87 = v54;
        v88 = v86;
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v111[0] = v92;
          *v91 = 136315394;
          v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, v111);

          *(v91 + 4) = v95;
          *(v91 + 12) = 2080;
          swift_getErrorValue();
          v96 = Error.localizedDescription.getter();
          v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, v111);

          *(v91 + 14) = v98;
          _os_log_impl(&dword_20AEA4000, v89, v90, "error setting category on audio session category=%s error=%s", v91, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v92, -1, -1);
          MEMORY[0x20F2E9420](v91, -1, -1);
        }

        else
        {
        }
      }
    }
  }

  v99 = *MEMORY[0x277D85DE8];
}

uint64_t Announcer.updateAutoDownloadedVoiceAssets()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v0 - 8);
  v1 = *(v19 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v17 = *(v4 - 8);
  v18 = v4;
  v5 = *(v17 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_17(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  (*(v9 + 104))(v12, *MEMORY[0x277D851C8], v8);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in Announcer.updateAutoDownloadedVoiceAssets();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_107;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v7, v3, v15);
  _Block_release(v15);

  (*(v19 + 8))(v3, v0);
  (*(v17 + 8))(v7, v18);
}

void closure #1 in Announcer.updateAutoDownloadedVoiceAssets()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = specialized static VoiceFeedbackUtilities.appVoiceLanguageId.getter();
    v4 = v3;
    if (FIUIIsWorkoutVoiceFeedbackEnabled() && (specialized Announcer.deviceHasMinimumStorageCapacity()() & 1) != 0 && (specialized Announcer.appLanguageMatchesAssistantLanguage.getter() & 1) == 0 && (v5 = MEMORY[0x20F2E6C00](v2, v4), v6 = AFGryphonAssetsExistForLanguage(), v5, v6))
    {
      v7 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
      v8 = SynthesisVoice.init(language:name:)();
      if (one-time initialization token for voiceFeedback != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static WOLog.voiceFeedback);
      v10 = v8;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v24 = v14;
        *v13 = 136315138;
        v15 = [v10 description];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v24);

        *(v13 + 4) = v19;
        _os_log_impl(&dword_20AEA4000, v11, v12, "set auto downloaded voice assets to voice=%s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_15(v14);
        MEMORY[0x20F2E9420](v14, -1, -1);
        MEMORY[0x20F2E9420](v13, -1, -1);
      }

      v20 = Announcer.session()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_20B425990;
      *(v21 + 32) = v10;
      v22 = v10;
      dispatch thunk of DaemonSession.subscribe(voices:reply:)();
    }

    else
    {

      v23 = Announcer.session()();
      dispatch thunk of DaemonSession.subscribe(voices:reply:)();
    }
  }
}

uint64_t closure #1 in Announcer.prewarm()()
{
  v1 = *(v0 + 16);
  v2 = Announcer.session()();
  dispatch thunk of DaemonSession.keepActive.setter();

  v3 = *(MEMORY[0x277D857E8] + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = closure #1 in Announcer.prewarm();

  return MEMORY[0x282200480](0);
}

{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #1 in Announcer.prewarm(), 0, 0);
  }
}

{
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.voiceFeedback);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "prewarming tts session", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  if ((specialized Announcer.appLanguageMatchesAssistantLanguage.getter() & 1) != 0 && (v5 = [objc_opt_self() sharedPreferences], v6 = objc_msgSend(v5, sel_outputVoice), v5, v6) && (v7 = objc_msgSend(v6, sel_languageCode), v6, v7))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    specialized static VoiceFeedbackUtilities.appVoiceLanguageId.getter();
  }

  v8 = *(v0 + 16);
  specialized Announcer.voiceName.getter();
  v9 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
  v10 = SynthesisVoice.init(language:name:)();
  v11 = objc_allocWithZone(type metadata accessor for SynthesisRequest());
  v12 = v10;
  v13 = SynthesisRequest.init(text:voice:)();
  SynthesizingRequestProtocol.disableCompactVoice.setter();
  SynthesizingRequestProtocol.privacySensitive.setter();

  v14 = Announcer.session()();
  *(swift_allocObject() + 16) = v13;
  v15 = v13;
  dispatch thunk of DaemonSession.prewarm(request:didFinish:)();

  *(v8 + OBJC_IVAR____TtC11WorkoutCore9Announcer_prewarmed) = 1;
  v16 = *(v0 + 8);

  return v16();
}

void closure #1 in closure #1 in Announcer.prewarm()(void *a1, void *a2)
{
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.voiceFeedback);
  v5 = a2;
  v6 = a1;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    v10 = [v5 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v19);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    v15 = Optional.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v19);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_20AEA4000, oslog, v7, "did finish prewarming tts session request=%s error=%s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of TaskPriority?(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    _sScPSgWOhTm_0(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

id Announcer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static NSNotificationName.AnnouncerWillStart.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id one-time initialization function for announcerWillStart(uint64_t a1, void *a2, void **a3, void **a4)
{
  if (*a2 != -1)
  {
    v7 = a4;
    v8 = a3;
    swift_once();
    a3 = v8;
    a4 = v7;
  }

  v5 = *a3;
  *a4 = *a3;

  return v5;
}

id static NSNotification.announcerWillStart.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id @objc static NSNotification.announcerWillStart.getter(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

uint64_t Announcer.setAnnouncementHandler(handler:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.voiceFeedback);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A24BuddyAnnouncementHandler_pSgMd, &_s11WorkoutCore0A24BuddyAnnouncementHandler_pSgMR);
    v9 = Optional.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20AEA4000, v5, v6, "setting live workout announcement handler to %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_15(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtC11WorkoutCore9Announcer_liveWorkoutAnnouncementHandler + 8) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t Announcer.receivedInferenceResponse(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](Announcer.receivedInferenceResponse(_:), 0, 0);
}

uint64_t Announcer.receivedInferenceResponse(_:)()
{
  v0[5] = &type metadata for WorkoutFeatures;
  v1 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  *(v0 + 16) = 0;
  v0[6] = v1;
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_15(v0 + 2);
  if ((v2 & 1) == 0)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.workoutVoice);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "Announcing inference response", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    v7 = v0[8];
    v8 = v0[9];
    v9 = v0[7];

    v10._countAndFlagsBits = v9;
    v10._object = v7;
    Announcer.announce(utterance:)(v10);
  }

  v11 = v0[1];

  return v11();
}

Swift::Void __swiftcall Announcer.fallbackOnDefaultAnnouncement(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v1;

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = countAndFlagsBits;
  v11[6] = object;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:), v11);
}

uint64_t closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:), v8, v7);
}

uint64_t closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  Announcer.siriAnnounce(_:)(v3, v2);
  v5 = v0[1];

  return v5();
}

uint64_t protocol witness for LiveWorkoutContextManagerDelegate.receivedInferenceResponse(_:) in conformance Announcer(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for LiveWorkoutContextManagerDelegate.receivedInferenceResponse(_:) in conformance Announcer;

  return Announcer.receivedInferenceResponse(_:)(a1, a2);
}

uint64_t protocol witness for LiveWorkoutContextManagerDelegate.fallbackOnDefaultAnnouncement(_:) in conformance Announcer(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v2;

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = a1;
  v12[6] = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:)partial apply, v12);
}

id specialized AtomicLazy.load()()
{
  v1 = *(v0 + 24);
  v2 = [v1 lock];
  v3 = *(v0 + 16);
  if (!v3)
  {
    v4 = *(v0 + 8);
    (*v0)(&v7, v2);
    v3 = v7;
    *(v0 + 16) = v7;
  }

  v5 = v3;
  [v1 unlock];
  return v5;
}

id closure #1 in variable initialization expression of Announcer._audioSession@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() auxiliarySession];
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in Announcer.prewarm()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in Announcer.prewarm();

  return closure #1 in Announcer.prewarm()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in Announcer.prewarm()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t partial apply for closure #2 in Announcer.announce(utterance:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #2 in Announcer.announce(utterance:);

  return closure #2 in Announcer.announce(utterance:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in Announcer.announce(utterance:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in Announcer.announce(utterance:);

  return closure #1 in Announcer.announce(utterance:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in Announcer.stopSpeaking()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in Announcer.stopSpeaking();

  return closure #1 in Announcer.stopSpeaking()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in Announcer.stopSpeaking()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t specialized Announcer.appLanguageMatchesAssistantLanguage.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedPreferences];
  v2 = [v1 assistantIsEnabled];

  if (v2)
  {
    v3 = [v0 sharedPreferences];
    v4 = [v3 outputVoice];

    if (v4 && (v5 = [v4 languageCode], v4, v5))
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      specialized static Locale.appLanguageId.getter();
      v6 = specialized Collection.prefix(_:)(2);
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v13 = MEMORY[0x20F2E6D00](v6, v8, v10, v12);
      v15 = v14;

      if (one-time initialization token for languageFallbacks != -1)
      {
        swift_once();
      }

      v16 = static VoiceFeedbackUtilities.languageFallbacks;
      if (*(static VoiceFeedbackUtilities.languageFallbacks + 2))
      {
        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
        if (v18)
        {
          v19 = v17;

          v20 = (v16[7] + 16 * v19);
          v13 = *v20;
          v15 = v20[1];
        }
      }

      v21 = specialized Collection.prefix(_:)(2);
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v28 = MEMORY[0x20F2E6D00](v21, v23, v25, v27);
      v30 = v29;

      if (v28 == v13 && v30 == v15)
      {
        LOBYTE(v2) = 1;
      }

      else
      {
        LOBYTE(v2) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

id specialized Announcer.voiceName.getter()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 outputVoice];

  if (v1)
  {
    v2 = [v1 name];

    if (v2)
    {
      v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      if (specialized Announcer.appLanguageMatchesAssistantLanguage.getter())
      {
        return v1;
      }

      goto LABEL_7;
    }

    v1 = 0;
  }

  if ((specialized Announcer.appLanguageMatchesAssistantLanguage.getter() & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  return v1;
}

uint64_t partial apply for closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:);

  return closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:)(a1, v4, v5, v6, v7, v8);
}

void partial apply for closure #1 in Announcer.voiceServicesAnnounce(_:)(char a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  closure #1 in Announcer.voiceServicesAnnounce(_:)(a1, a2, *(v2 + 16));
}

uint64_t _sScPSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:)partial apply;

  return closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in Announcer.setupAudioSessionOnBackground()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in Announcer.setupAudioSessionOnBackground();

  return closure #1 in Announcer.setupAudioSessionOnBackground()(a1, v4, v5, v6);
}

id specialized Announcer.deviceHasMinimumStorageCapacity()()
{
  v0 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - v13;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v16 = result;
    v17 = [result totalDiskCapacity];

    v18 = vcvtd_n_f64_u64(v17, 0x1EuLL);
    *&v28[1] = v18;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.init(locale:)();
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F2E4430](v4, v7);
    (*(v1 + 8))(v4, v0);
    v19 = *(v8 + 8);
    v19(v12, v7);
    _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
    BinaryFloatingPoint.formatted<A>(_:)();
    v19(v14, v7);
    v21 = v29[0];
    v20 = v29[1];
    if (one-time initialization token for voiceFeedback != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static WOLog.voiceFeedback);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29[0] = v26;
      *v25 = 136315138;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, v29);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_20AEA4000, v23, v24, "totalDiskCapacity=%s GB", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_15(v26);
      MEMORY[0x20F2E9420](v26, -1, -1);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    else
    {
    }

    return (v18 > 8.0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1, char **a2, char **a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x20F2E7A20](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      closure #1 in closure #3 in WorkoutConfigurationDataSource.load()(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t WorkoutConfigurationDataSource.workoutConfigurations.getter()
{
  return WorkoutConfigurationDataSource.workoutConfigurations.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for WorkoutConfigurationDataSource.workoutConfigurations : WorkoutConfigurationDataSource@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  return key path getter for WorkoutConfigurationDataSource.workoutConfigurations : WorkoutConfigurationDataSource(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutConfigurationDataSource.workoutConfigurations : WorkoutConfigurationDataSource(uint64_t *a1, void **a2)
{
  return key path setter for WorkoutConfigurationDataSource.workoutConfigurations : WorkoutConfigurationDataSource(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t WorkoutConfigurationDataSource.workoutConfigurations.setter()
{
  return WorkoutConfigurationDataSource.workoutConfigurations.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*WorkoutConfigurationDataSource.workoutConfigurations.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutConfigurationDataSource.workoutConfigurations.modify;
}

uint64_t (*WorkoutConfigurationDataSource.$workoutConfigurations.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__workoutConfigurations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutConfigurationDataSource.$workoutConfigurations.modify;
}

uint64_t WorkoutConfigurationDataSource.recentlyAddedWorkoutConfiguration.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for WorkoutConfigurationDataSource.recentlyAddedWorkoutConfiguration : WorkoutConfigurationDataSource@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutConfigurationDataSource.recentlyAddedWorkoutConfiguration : WorkoutConfigurationDataSource(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

uint64_t WorkoutConfigurationDataSource.recentlyAddedWorkoutConfiguration.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*WorkoutConfigurationDataSource.recentlyAddedWorkoutConfiguration.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutConfigurationDataSource.recentlyAddedWorkoutConfiguration.modify;
}

uint64_t key path setter for WorkoutConfigurationDataSource.$recentlyAddedWorkoutConfiguration : WorkoutConfigurationDataSource(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D13ConfigurationCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D13ConfigurationCSg_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutConfigurationDataSource.$recentlyAddedWorkoutConfiguration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D13ConfigurationCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D13ConfigurationCSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutConfigurationDataSource.$recentlyAddedWorkoutConfiguration.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D13ConfigurationCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D13ConfigurationCSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__recentlyAddedWorkoutConfiguration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutConfigurationDataSource.$recentlyAddedWorkoutConfiguration.modify;
}

uint64_t (*WorkoutConfigurationDataSource.frequentWorkouts.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutConfigurationDataSource.frequentWorkouts.modify;
}

void WorkoutConfigurationDataSource.workoutConfigurations.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t WorkoutConfigurationDataSource.$workoutConfigurations.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for WorkoutConfigurationDataSource.$workoutConfigurations : WorkoutConfigurationDataSource(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutConfigurationDataSource.$workoutConfigurations : WorkoutConfigurationDataSource(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(v9 + 16);
  v16(&v20 - v14, a1, v8);
  v17 = *a2;
  v16(v13, v15, v8);
  v18 = *a5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t WorkoutConfigurationDataSource.$workoutConfigurations.setter(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*WorkoutConfigurationDataSource.$frequentWorkouts.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__frequentWorkouts;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutConfigurationDataSource.$frequentWorkouts.modify;
}

void WorkoutConfigurationDataSource.$workoutConfigurations.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

void *WorkoutConfigurationDataSource.lastWorkout.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_lastWorkout;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void WorkoutConfigurationDataSource.lastWorkout.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_lastWorkout;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id WorkoutConfigurationDataSource.__allocating_init(configurationData:activityMoveMode:healthStore:occurrenceStore:usePersistence:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, int a6)
{
  v64 = a6;
  v63 = a3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMR);
  v61 = *(v62 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v52 - v16;
  v18 = specialized Occurrence.__allocating_init(count:)(0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v19 = specialized static WorkoutConfiguration.importFromData(_:with:validator:)(a1, a2, v18, static WorkoutConfigurationValidator.shared);
  v58 = a1;
  v59 = a2;
  v60 = a5;
  v20 = v19;

  v21 = type metadata accessor for RaceRouteDataStore();
  v22 = swift_allocObject();
  *(v22 + 24) = a4;
  v23 = objc_allocWithZone(MEMORY[0x277CCD868]);
  v55 = a4;
  *(v22 + 16) = [v23 initWithHealthStore_];
  v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v57 = v20;
  v25 = *(&v20->isa + v24);
  v72[3] = v21;
  v72[4] = &protocol witness table for RaceRouteDataStore;
  v53 = v21;
  v72[0] = v22;
  v26 = objc_allocWithZone(v65);
  v27 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__workoutConfigurations;
  *&v69 = MEMORY[0x277D84F90];
  v54 = v25;
  v56 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
  Published.init(initialValue:)();
  v28 = *(v14 + 32);
  v28(&v26[v27], v17, v13);
  v29 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__recentlyAddedWorkoutConfiguration;
  *&v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A13ConfigurationCSgMd, &_s11WorkoutCore0A13ConfigurationCSgMR);
  Published.init(initialValue:)();
  (*(v61 + 32))(&v26[v29], v12, v62);
  v30 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__frequentWorkouts;
  *&v69 = MEMORY[0x277D84F90];
  Published.init(initialValue:)();
  v28(&v26[v30], v17, v13);
  v31 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_queryClient;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v32 = static WorkoutCoreInjector.healthStore;
  v33 = objc_allocWithZone(type metadata accessor for QueryClient());
  *&v26[v31] = QueryClient.init(_:)(v32);
  *&v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_lastWorkout] = 0;
  *&v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation] = 0;
  v34 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_nanoSyncControl;
  v35 = v60;
  v36 = v55;
  v37 = v54;
  if (one-time initialization token for nanoSyncControl != -1)
  {
    swift_once();
  }

  v38 = static WorkoutCoreInjector.nanoSyncControl;
  *&v26[v34] = static WorkoutCoreInjector.nanoSyncControl;
  v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_loaded] = 0;
  *&v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType] = v37;
  *&v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityMoveMode] = v63;
  *&v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_occurrenceStore] = v35;
  outlined init with copy of RaceRouteDataStoring?(v72, &v67);
  if (v68)
  {
    outlined init with take of RaceRouteDataStoring(&v67, &v69);
    v39 = v37;
    v40 = v38;
    v41 = v35;
  }

  else
  {
    v42 = v53;
    v43 = swift_allocObject();
    *(v43 + 24) = v36;
    v44 = objc_allocWithZone(MEMORY[0x277CCD868]);
    v45 = v36;
    v46 = v37;
    v47 = v38;
    v48 = v35;
    *(v43 + 16) = [v44 initWithHealthStore_];
    v70 = v42;
    v71 = &protocol witness table for RaceRouteDataStore;
    *&v69 = v43;
    if (v68)
    {
      outlined destroy of RaceRouteDataStoring?(&v67, &_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
    }
  }

  outlined init with take of RaceRouteDataStoring(&v69, &v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_raceRouteDataStore]);
  v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence] = v64 & 1;
  *&v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_healthStore] = v36;
  v66.receiver = v26;
  v66.super_class = v65;
  v49 = v36;
  v50 = objc_msgSendSuper2(&v66, sel_init);
  outlined consume of Data._Representation(v58, v59);

  outlined destroy of RaceRouteDataStoring?(v72, &_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
  return v50;
}

id WorkoutConfigurationDataSource.__allocating_init(activityType:activityMoveMode:healthStore:occurrenceStore:raceRouteDataStore:usePersistence:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v7 = v6;
  v44 = a6;
  v48 = a4;
  v49 = a5;
  v45 = a3;
  v43 = a2;
  v47 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v46 = v7;
  v18 = objc_allocWithZone(v7);
  v19 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__workoutConfigurations;
  *&v53 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
  Published.init(initialValue:)();
  v20 = *(v14 + 32);
  v20(&v18[v19], v17, v13);
  v21 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__recentlyAddedWorkoutConfiguration;
  *&v53 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A13ConfigurationCSgMd, &_s11WorkoutCore0A13ConfigurationCSgMR);
  Published.init(initialValue:)();
  (*(v9 + 32))(&v18[v21], v12, v8);
  v22 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__frequentWorkouts;
  *&v53 = MEMORY[0x277D84F90];
  Published.init(initialValue:)();
  v20(&v18[v22], v17, v13);
  v23 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_queryClient;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v24 = static WorkoutCoreInjector.healthStore;
  v25 = objc_allocWithZone(type metadata accessor for QueryClient());
  *&v18[v23] = QueryClient.init(_:)(v24);
  *&v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_lastWorkout] = 0;
  *&v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation] = 0;
  v26 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_nanoSyncControl;
  v28 = v47;
  v27 = v48;
  v29 = v45;
  if (one-time initialization token for nanoSyncControl != -1)
  {
    swift_once();
  }

  v30 = static WorkoutCoreInjector.nanoSyncControl;
  *&v18[v26] = static WorkoutCoreInjector.nanoSyncControl;
  v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_loaded] = 0;
  *&v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType] = v28;
  *&v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityMoveMode] = v43;
  *&v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_occurrenceStore] = v27;
  v31 = v49;
  outlined init with copy of RaceRouteDataStoring?(v49, &v51);
  if (v52)
  {
    outlined init with take of RaceRouteDataStoring(&v51, &v53);
    v32 = v30;
    v33 = v28;
    v34 = v27;
  }

  else
  {
    v35 = type metadata accessor for RaceRouteDataStore();
    v36 = swift_allocObject();
    *(v36 + 24) = v29;
    v37 = objc_allocWithZone(MEMORY[0x277CCD868]);
    v38 = v30;
    v39 = v28;
    v40 = v27;
    *(v36 + 16) = [v37 initWithHealthStore_];
    v54 = v35;
    v55 = &protocol witness table for RaceRouteDataStore;
    *&v53 = v36;
    if (v52)
    {
      outlined destroy of RaceRouteDataStoring?(&v51, &_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
    }
  }

  outlined init with take of RaceRouteDataStoring(&v53, &v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_raceRouteDataStore]);
  v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence] = v44 & 1;
  *&v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_healthStore] = v29;
  v50.receiver = v18;
  v50.super_class = v46;
  v41 = objc_msgSendSuper2(&v50, sel_init);

  outlined destroy of RaceRouteDataStoring?(v31, &_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
  return v41;
}

id WorkoutConfigurationDataSource.init(activityType:activityMoveMode:healthStore:occurrenceStore:raceRouteDataStore:usePersistence:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v7 = v6;
  v44 = a6;
  v47 = a4;
  v48 = a5;
  v45 = a3;
  v46 = a1;
  v42 = a2;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v18 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__workoutConfigurations;
  *&v52 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
  Published.init(initialValue:)();
  v19 = *(v14 + 32);
  v19(&v7[v18], v17, v13);
  v20 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__recentlyAddedWorkoutConfiguration;
  *&v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A13ConfigurationCSgMd, &_s11WorkoutCore0A13ConfigurationCSgMR);
  Published.init(initialValue:)();
  (*(v9 + 32))(&v7[v20], v12, v8);
  v21 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__frequentWorkouts;
  *&v52 = MEMORY[0x277D84F90];
  Published.init(initialValue:)();
  v19(&v7[v21], v17, v13);
  v22 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_queryClient;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v23 = static WorkoutCoreInjector.healthStore;
  v24 = objc_allocWithZone(type metadata accessor for QueryClient());
  *&v7[v22] = QueryClient.init(_:)(v23);
  *&v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_lastWorkout] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation] = 0;
  v25 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_nanoSyncControl;
  v27 = v46;
  v26 = v47;
  v28 = v45;
  if (one-time initialization token for nanoSyncControl != -1)
  {
    swift_once();
  }

  v29 = static WorkoutCoreInjector.nanoSyncControl;
  *&v7[v25] = static WorkoutCoreInjector.nanoSyncControl;
  v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_loaded] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType] = v27;
  *&v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityMoveMode] = v42;
  *&v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_occurrenceStore] = v26;
  v30 = v48;
  outlined init with copy of RaceRouteDataStoring?(v48, &v50);
  if (v51)
  {
    outlined init with take of RaceRouteDataStoring(&v50, &v52);
    v31 = v29;
    v32 = v27;
    v33 = v26;
  }

  else
  {
    v34 = type metadata accessor for RaceRouteDataStore();
    v35 = swift_allocObject();
    *(v35 + 24) = v28;
    v36 = objc_allocWithZone(MEMORY[0x277CCD868]);
    v37 = v29;
    v38 = v27;
    v39 = v26;
    *(v35 + 16) = [v36 initWithHealthStore_];
    v53 = v34;
    v54 = &protocol witness table for RaceRouteDataStore;
    *&v52 = v35;
    if (v51)
    {
      outlined destroy of RaceRouteDataStoring?(&v50, &_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
    }
  }

  outlined init with take of RaceRouteDataStoring(&v52, &v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_raceRouteDataStore]);
  v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence] = v44 & 1;
  *&v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_healthStore] = v28;
  v49.receiver = v7;
  v49.super_class = ObjectType;
  v40 = objc_msgSendSuper2(&v49, sel_init);

  outlined destroy of RaceRouteDataStoring?(v30, &_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
  return v40;
}

BOOL WorkoutConfigurationDataSource.isConfigurationStored(_:)(char *a1)
{
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  if (*&a1[v3])
  {
    v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v5 = *&a1[v4];
    v6 = specialized static WorkoutConfiguration.copy(of:with:preservingExternalProvider:)(a1, v5, 0);
  }

  else
  {
    v6 = a1;
  }

  v7 = *(v1 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_occurrenceStore);
  v8 = *(v1 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType);
  v9 = v6;
  v10 = WorkoutConfigurationOccurrenceStore.configurations(for:)(v8);
  v11 = v10;
  v12 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
LABEL_18:
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v15 = MEMORY[0x277D85000];
  do
  {
    v16 = v14;
    if (v13 == v14)
    {
      break;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x20F2E7A20](v14, v11);
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_17;
      }

      v17 = *(v11 + 8 * v14 + 32);
    }

    v18 = v17;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v23[3] = type metadata accessor for WorkoutConfiguration();
    v23[4] = &protocol witness table for WorkoutConfiguration;
    v23[0] = v9;
    v19 = *((*v15 & *v18) + 0x1D0);
    v20 = v9;
    v21 = v19(v23);

    __swift_destroy_boxed_opaque_existential_1Tm_16(v23);
    v14 = v16 + 1;
  }

  while ((v21 & 1) == 0);

  return v13 != v16;
}

Swift::Void __swiftcall WorkoutConfigurationDataSource.configure()()
{
  if ((*(v0 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_loaded) & 1) == 0)
  {
    WorkoutConfigurationDataSource.load()();
    v1 = [objc_opt_self() defaultCenter];
    [v1 addObserver:v0 selector:sel_smartGoalStoreUpdatedOccurrenceDataWithNotification_ name:@"NLSmartGoalStoreDidUpdateOccurrenceData" object:0];
  }
}

id WorkoutConfigurationDataSource.load()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence] == 1)
  {
    type metadata accessor for OS_dispatch_queue();
    v32 = v7;
    (*(v13 + 104))(v16, *MEMORY[0x277D851B8], v12);
    v31 = static OS_dispatch_queue.global(qos:)();
    (*(v13 + 8))(v16, v12);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in WorkoutConfigurationDataSource.load();
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_109;
    v18 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v33 = MEMORY[0x277D84F90];
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v31;
    MEMORY[0x20F2E7580](0, v11, v6, v18);
    _Block_release(v18);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v32);

    v20 = *&v1[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType];
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    v22 = v1;
    v23 = specialized static HKQuery.lastWorkoutQuery(activityType:completion:)(v20, partial apply for closure #2 in WorkoutConfigurationDataSource.load(), v21);
    if (v23)
    {
      v24 = v23;
      [*&v22[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_healthStore] executeQuery_];
    }

    result = [v20 identifier];
    if (result != 82)
    {
      v26 = swift_allocObject();
      *(v26 + 16) = 15;
      *(v26 + 24) = v22;
      v27 = v22;
      WorkoutConfigurationDataSource.fetchRecentWorkouts(activityType:daysAgo:completion:)(v20, 0xF, partial apply for closure #3 in WorkoutConfigurationDataSource.load(), v26);
    }
  }

  else
  {
    v28 = specialized static WorkoutConfigurationFactory.make(for:activityMoveMode:)(*&v1[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType], *&v1[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityMoveMode]);
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = v28;
    v29 = v1;
    return static Published.subscript.setter();
  }

  return result;
}

Swift::Void __swiftcall WorkoutConfigurationDataSource.observeSmartGoalStoreUpdatedOccurrenceData()()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_smartGoalStoreUpdatedOccurrenceDataWithNotification_ name:@"NLSmartGoalStoreDidUpdateOccurrenceData" object:0];
}

uint64_t closure #1 in WorkoutConfigurationDataSource.load()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v144 = v9;
  v146 = v4;
  v148 = v1;
  v149 = v0;
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType;
  v14 = *(v11 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType);
  v15 = *(v11 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_occurrenceStore);
  v16 = v14;
  v20 = WorkoutConfigurationOccurrenceStore.configurations(for:)(v16);

  v152 = v12;
  *(v12 + 16) = v20;
  v17 = v12 + 16;
  v151 = v13;
  v18 = *(&v13->isa + v11);
  v19 = FIUIWorkoutActivityType.configurationTypes.getter();
  LOBYTE(v20) = specialized Set.contains(_:)(2u, v19);

  if (one-time initialization token for race != -1)
  {
    goto LABEL_99;
  }

  while (2)
  {
    v21 = type metadata accessor for Logger();
    v22 = __swift_project_value_buffer(v21, static WOLog.race);
    v23 = v11;
    v150 = v22;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v153 = v23;

    v26 = os_log_type_enabled(v24, v25);
    v147 = v5;
    v145 = v6;
    v143 = v11;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      aBlock = v6;
      *v27 = 136315394;
      if (v20)
      {
        v29 = 0;
      }

      else
      {
        v29 = 544501614;
      }

      if (v20)
      {
        v30 = 0xE000000000000000;
      }

      else
      {
        v30 = 0xE400000000000000;
      }

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &aBlock);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2112;
      v32 = *(&v151->isa + v11);
      *(v27 + 14) = v32;
      *v28 = v32;
      v33 = v32;
      _os_log_impl(&dword_20AEA4000, v24, v25, "Race: race is %ssupported for activityType: %@", v27, 0x16u);
      outlined destroy of RaceRouteDataStoring?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm_16(v6);
      MEMORY[0x20F2E9420](v6, -1, -1);
      MEMORY[0x20F2E9420](v27, -1, -1);
    }

    v11 = &OBJC_IVAR___WOCoreWorkoutConfiguration_type;
    v34 = v153;
    if ((v20 & 1) == 0)
    {
      v42 = v153;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = *(&v151->isa + v143);
        *(v45 + 4) = v47;
        *v46 = v47;
        v48 = v47;
        _os_log_impl(&dword_20AEA4000, v43, v44, "Race: not querying race configurations, race is not supported for activityType: %@", v45, 0xCu);
        outlined destroy of RaceRouteDataStoring?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v46, -1, -1);
        MEMORY[0x20F2E9420](v45, -1, -1);
      }

      v20 = *v17;
      v5 = *v17 & 0xFFFFFFFFFFFFFF8;
      if (*v17 >> 62)
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          v110 = *v17;
        }

        else
        {
          v110 = *v17 & 0xFFFFFFFFFFFFFF8;
        }

        v49 = __CocoaSet.count.getter();
      }

      else
      {
        v49 = *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v36 = 0;
      while (1)
      {
        if (v49 == v36)
        {
          v55 = *v17;
          if (*v17 >> 62)
          {
            if (v55 < 0)
            {
              v113 = *v17;
            }

            v36 = __CocoaSet.count.getter();
          }

          else
          {
            v36 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          goto LABEL_68;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x20F2E7A20](v36, v20);
        }

        else
        {
          if (v36 >= *(v5 + 16))
          {
            goto LABEL_96;
          }

          v50 = *(v20 + 8 * v36 + 32);
        }

        v51 = v50;
        v52 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
        swift_beginAccess();
        v6 = v51[v52];

        v40 = (v36 + 1);
        v53 = __OFADD__(v36, 1);
        if (v6 == 2)
        {
          break;
        }

        ++v36;
        if (v53)
        {
          goto LABEL_98;
        }
      }

      if (v53)
      {
LABEL_123:
        __break(1u);
LABEL_124:
        if (v40 != __CocoaSet.count.getter())
        {
          goto LABEL_125;
        }

LABEL_49:
        v56 = *v17;
        if (*v17 >> 62)
        {
          if (v56 < 0)
          {
            v111 = *v17;
          }

          v57 = __CocoaSet.count.getter();
          if (v57 >= v36)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v57 >= v36)
          {
LABEL_51:
            specialized Array.replaceSubrange<A>(_:with:)(v36, v57);
            v58 = dispatch_group_create();
            dispatch_group_enter(v58);
            v59 = *&v34[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_raceRouteDataStore + 24];
            v60 = *&v34[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_raceRouteDataStore + 32];
            __swift_project_boxed_opaque_existential_1(&v34[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_raceRouteDataStore], v59);
            v61 = *(&v151->isa + v143);
            v62 = swift_allocObject();
            v63 = v152;
            *(v62 + 16) = v58;
            *(v62 + 24) = v63;
            v11 = *(v60 + 8);
            v64 = v61;
            v65 = v58;

            (v11)(v64, partial apply for closure #2 in closure #1 in WorkoutConfigurationDataSource.load(), v62, v59, v60);

            v151 = v65;
            OS_dispatch_group.wait()();
            swift_beginAccess();
            v20 = *(v63 + 16);
            aBlock = MEMORY[0x277D84F90];
            if (v20 >> 62)
            {
              goto LABEL_114;
            }

            v17 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_53;
          }
        }

        __break(1u);
LABEL_112:
        v70 = __CocoaSet.count.getter();
        if (v70 < v36)
        {
          goto LABEL_113;
        }

LABEL_70:
        specialized Array.replaceSubrange<A>(_:with:)(v36, v70);
        goto LABEL_90;
      }

      if (*v17 >> 62)
      {
        goto LABEL_171;
      }

      if (v40 == *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

LABEL_172:
      v5 = v36 + 5;
      while (1)
      {
        v20 = v5 - 4;
        v128 = *v17;
        if ((*v17 & 0xC000000000000001) != 0)
        {
          v129 = MEMORY[0x20F2E7A20](v5 - 4);
        }

        else
        {
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_209;
          }

          if (v20 >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_210;
          }

          v129 = *(v128 + 8 * v5);
        }

        v40 = v129;
        v130 = *v11;
        swift_beginAccess();
        LODWORD(v130) = v40[v130];

        if (v130 != 2)
        {
          break;
        }

LABEL_196:
        v40 = (v5 - 3);
        if (__OFADD__(v20, 1))
        {
          goto LABEL_211;
        }

        v138 = *v17;
        if (*v17 >> 62)
        {
          if (v138 < 0)
          {
            v140 = *v17;
          }

          v139 = __CocoaSet.count.getter();
        }

        else
        {
          v139 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v5;
        if (v40 == v139)
        {
          goto LABEL_68;
        }
      }

      if (v20 == v36)
      {
LABEL_195:
        v124 = __OFADD__(v36++, 1);
        if (v124)
        {
          goto LABEL_212;
        }

        goto LABEL_196;
      }

      v131 = *v17;
      if ((*v17 & 0xC000000000000001) != 0)
      {
        v132 = MEMORY[0x20F2E7A20](v36, *v17);
        v131 = *v17;
        if ((*v17 & 0xC000000000000001) == 0)
        {
LABEL_183:
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_215;
          }

          if (v20 >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_216;
          }

          v40 = *(v131 + 8 * v5);
          goto LABEL_186;
        }
      }

      else
      {
        if (v36 < 0)
        {
          goto LABEL_213;
        }

        if (v36 >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_214;
        }

        v132 = *(v131 + 8 * v36 + 32);
        if ((v131 & 0xC000000000000001) == 0)
        {
          goto LABEL_183;
        }
      }

      v40 = MEMORY[0x20F2E7A20](v5 - 4, v131);
      v131 = *v17;
LABEL_186:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v17 = v131;
      if (!isUniquelyReferenced_nonNull_bridgeObject || v131 < 0 || (v131 & 0x4000000000000000) != 0)
      {
        v131 = specialized _ArrayBuffer._consumeAndCreateNew()(v131);
        *v17 = v131;
      }

      v134 = *((v131 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 0x20);
      *((v131 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 0x20) = v40;

      v135 = *v17;
      if ((*v17 & 0x8000000000000000) != 0 || (v135 & 0x4000000000000000) != 0)
      {
        v135 = specialized _ArrayBuffer._consumeAndCreateNew()(v135);
        *v17 = v135;
        if ((v20 & 0x8000000000000000) != 0)
        {
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          v71 = __CocoaSet.count.getter();
LABEL_76:
          *(v20 + 4) = v71;

          _os_log_impl(&dword_20AEA4000, v36, v40, "Race: found total %ld race workout_configurations", v20, 0xCu);
          MEMORY[0x20F2E9420](v20, -1, -1);

          goto LABEL_78;
        }
      }

      else if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_208;
      }

      v136 = v135 & 0xFFFFFFFFFFFFFF8;
      if (v20 >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_217;
      }

      v137 = *(v136 + 8 * v5);
      *(v136 + 8 * v5) = v132;

      v11 = &OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      goto LABEL_195;
    }

    v20 = *v17;
    v5 = *v17 & 0xFFFFFFFFFFFFFF8;
    if (*v17 >> 62)
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        v109 = *v17;
      }

      else
      {
        v109 = *v17 & 0xFFFFFFFFFFFFFF8;
      }

      v35 = __CocoaSet.count.getter();
    }

    else
    {
      v35 = *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = 0;
    while (1)
    {
      if (v35 == v36)
      {
        v54 = *v17;
        if (*v17 >> 62)
        {
          if (v54 < 0)
          {
            v112 = *v17;
          }

          v36 = __CocoaSet.count.getter();
        }

        else
        {
          v36 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        goto LABEL_49;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x20F2E7A20](v36, v20);
      }

      else
      {
        if (v36 >= *(v5 + 16))
        {
          goto LABEL_95;
        }

        v37 = *(v20 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      v6 = v38[v39];

      v40 = (v36 + 1);
      v41 = __OFADD__(v36, 1);
      if (v6 == 2)
      {
        break;
      }

      ++v36;
      if (v41)
      {
        goto LABEL_97;
      }
    }

    if (v41)
    {
      __break(1u);
      goto LABEL_123;
    }

    if (*v17 >> 62)
    {
      goto LABEL_124;
    }

    if (v40 == *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

LABEL_125:
    v114 = v36 + 5;
    while (2)
    {
      v20 = v114 - 4;
      v115 = *v17;
      if ((*v17 & 0xC000000000000001) != 0)
      {
        v116 = MEMORY[0x20F2E7A20](v114 - 4);
      }

      else
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_162;
        }

        if (v20 >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_163;
        }

        v116 = *(v115 + 8 * v114);
      }

      v40 = v116;
      v117 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      LODWORD(v117) = v40[v117];

      if (v117 == 2)
      {
        goto LABEL_149;
      }

      if (v20 == v36)
      {
        goto LABEL_148;
      }

      v118 = *v17;
      if ((*v17 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x20F2E7A20](v36, *v17);
        v118 = *v17;
        if ((*v17 & 0xC000000000000001) == 0)
        {
          goto LABEL_136;
        }

LABEL_159:
        v40 = MEMORY[0x20F2E7A20](v114 - 4, v118);
        v118 = *v17;
        goto LABEL_139;
      }

      if (v36 < 0)
      {
        goto LABEL_166;
      }

      if (v36 >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_167;
      }

      v11 = *(v118 + 8 * v36 + 32);
      if ((v118 & 0xC000000000000001) != 0)
      {
        goto LABEL_159;
      }

LABEL_136:
      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_168;
      }

      if (v20 >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_169;
      }

      v40 = *(v118 + 8 * v114);
LABEL_139:
      v119 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v17 = v118;
      if (!v119 || v118 < 0 || (v118 & 0x4000000000000000) != 0)
      {
        v118 = specialized _ArrayBuffer._consumeAndCreateNew()(v118);
        *v17 = v118;
      }

      v120 = *((v118 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 0x20);
      *((v118 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 0x20) = v40;

      v121 = *v17;
      if ((*v17 & 0x8000000000000000) == 0 && (v121 & 0x4000000000000000) == 0)
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_161;
        }

LABEL_146:
        v122 = v121 & 0xFFFFFFFFFFFFFF8;
        if (v20 >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_170;
        }

        v123 = *(v122 + 8 * v114);
        *(v122 + 8 * v114) = v11;

        v11 = &OBJC_IVAR___WOCoreWorkoutConfiguration_type;
LABEL_148:
        v124 = __OFADD__(v36++, 1);
        if (v124)
        {
          goto LABEL_165;
        }

LABEL_149:
        v40 = (v114 - 3);
        if (__OFADD__(v20, 1))
        {
          goto LABEL_164;
        }

        v125 = *v17;
        if (*v17 >> 62)
        {
          if (v125 < 0)
          {
            v127 = *v17;
          }

          v126 = __CocoaSet.count.getter();
        }

        else
        {
          v126 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v114;
        if (v40 == v126)
        {
          goto LABEL_49;
        }

        continue;
      }

      break;
    }

    v121 = specialized _ArrayBuffer._consumeAndCreateNew()(v121);
    *v17 = v121;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_146;
    }

LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    if (v40 != __CocoaSet.count.getter())
    {
      goto LABEL_172;
    }

LABEL_68:
    if (*v17 >> 62)
    {
      goto LABEL_112;
    }

    v70 = *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v70 >= v36)
    {
      goto LABEL_70;
    }

LABEL_113:
    __break(1u);
LABEL_114:
    v17 = __CocoaSet.count.getter();
LABEL_53:

    v5 = MEMORY[0x277D84F90];
    v34 = v153;
    if (v17)
    {
      v66 = 0;
      v6 = v20 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v67 = MEMORY[0x20F2E7A20](v66, v20);
        }

        else
        {
          if (v66 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_94;
          }

          v67 = *(v20 + 8 * v66 + 32);
        }

        v68 = v67;
        v11 = (v66 + 1);
        if (__OFADD__(v66, 1))
        {
          break;
        }

        v69 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
        swift_beginAccess();
        if (*(v68 + v69) == 2)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v5 = *(aBlock + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v66;
        if (v11 == v17)
        {
          v17 = aBlock;
          v5 = MEMORY[0x277D84F90];
          goto LABEL_72;
        }
      }

      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      swift_once();
      continue;
    }

    break;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_72:

  v36 = Logger.logObject.getter();
  LOBYTE(v40) = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v40))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
    {
      goto LABEL_218;
    }

    v71 = *(v17 + 16);
    goto LABEL_76;
  }

LABEL_78:
  if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
  {
    v72 = __CocoaSet.count.getter();
  }

  else
  {
    v72 = *(v17 + 16);
  }

  if (!v72)
  {

LABEL_90:
    v74 = v148;
    goto LABEL_91;
  }

  v157 = &type metadata for WorkoutFeatures;
  v158 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(aBlock) = 11;
  v73 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_16(&aBlock);
  v74 = v148;
  if ((v73 & 1) == 0)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v75 = static LocationManager.shared;
    v76 = OBJC_IVAR___WOCoreLocationManager_lastLocation;
    swift_beginAccess();
    v143 = v75;
    v142 = v76;
    v77 = *(v75 + v76);
    v34 = v153;
    v78 = *(v153 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation);
    v141 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation;
    *(v153 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation) = v77;
    v79 = v77;

    static Date.timeIntervalSinceReferenceDate.getter();
    v81 = v80;
    v82 = dispatch_group_create();
    dispatch_group_enter(v82);
    type metadata accessor for OS_dispatch_queue();
    v83 = static OS_dispatch_queue.main.getter();
    v84 = swift_allocObject();
    v84[2] = v34;
    v84[3] = v81;
    v84[4] = v82;
    v158 = partial apply for closure #4 in closure #1 in WorkoutConfigurationDataSource.load();
    v159 = v84;
    aBlock = MEMORY[0x277D85DD0];
    v155 = 1107296256;
    v156 = thunk for @escaping @callee_guaranteed () -> ();
    v157 = &block_descriptor_145;
    v85 = _Block_copy(&aBlock);
    v86 = v34;
    v87 = v82;

    v88 = v144;
    static DispatchQoS.unspecified.getter();
    aBlock = v5;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v89 = v146;
    v90 = v149;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v88, v89, v85);
    _Block_release(v85);

    v74 = v148;
    (*(v148 + 8))(v89, v90);
    v91 = v88;
    v92 = v87;
    (*(v145 + 8))(v91, v147);
    OS_dispatch_group.wait()();
    v93 = v86;
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v96 = 138412546;
      v98 = *&v34[v141];
      *(v96 + 4) = v98;
      *v97 = v98;
      *(v96 + 12) = 2112;
      v99 = *(v143 + v142);
      *(v96 + 14) = v99;
      v97[1] = v99;
      v100 = v98;
      v101 = v99;
      _os_log_impl(&dword_20AEA4000, v94, v95, "Race: current location: %@, LocationManager lastLocation: %@", v96, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v97, -1, -1);
      MEMORY[0x20F2E9420](v96, -1, -1);
    }
  }

LABEL_91:
  type metadata accessor for OS_dispatch_queue();
  v102 = static OS_dispatch_queue.main.getter();
  v103 = swift_allocObject();
  *(v103 + 16) = v34;
  *(v103 + 24) = v152;
  v158 = partial apply for closure #6 in closure #1 in WorkoutConfigurationDataSource.load();
  v159 = v103;
  aBlock = MEMORY[0x277D85DD0];
  v155 = 1107296256;
  v156 = thunk for @escaping @callee_guaranteed () -> ();
  v157 = &block_descriptor_136;
  v104 = _Block_copy(&aBlock);
  v105 = v34;

  v106 = v144;
  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v107 = v146;
  v108 = v149;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v106, v107, v104);
  _Block_release(v104);

  (*(v74 + 8))(v107, v108);
  (*(v145 + 8))(v106, v147);
}

void closure #2 in closure #1 in WorkoutConfigurationDataSource.load()(unint64_t a1, char a2, NSObject *a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a1;
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.race);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    outlined consume of Result<[RaceWorkoutConfiguration], Error>(a1, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = MEMORY[0x20F2E7F50]();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Race: failed to query configurations with error %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_16(v12);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
      outlined consume of Result<[RaceWorkoutConfiguration], Error>(a1, 1);
    }

    else
    {

      outlined consume of Result<[RaceWorkoutConfiguration], Error>(a1, 1);
    }

    dispatch_group_leave(a3);
  }

  else
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.race);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      if (a1 >> 62)
      {
        v21 = __CocoaSet.count.getter();
      }

      else
      {
        v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v20 + 4) = v21;
      outlined consume of Result<[RaceWorkoutConfiguration], Error>(a1, 0);
      _os_log_impl(&dword_20AEA4000, v18, v19, "Race: discovered %ld race workout_configurations", v20, 0xCu);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    else
    {
      outlined consume of Result<[RaceWorkoutConfiguration], Error>(a1, 0);
    }

    specialized Sequence.forEach(_:)(a1, (a4 + 16));

    dispatch_group_leave(a3);
  }
}

uint64_t closure #1 in closure #2 in closure #1 in WorkoutConfigurationDataSource.load()(void **a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static WOLog.race);
  v12 = v10;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v39 = a2;
    v16 = v15;
    v35 = v15;
    v38 = swift_slowAlloc();
    v40[0] = v38;
    *v16 = 136315394;
    v37 = v13;
    v17 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v34 = v6[2];
    v34(v9, &v12[v17], v5);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v36 = v14;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v40[4] = v2;
    v21 = v6[1];
    v21(v9, v5);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v40);

    v23 = v35;
    *(v35 + 4) = v22;
    *(v23 + 12) = 2080;
    v24 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
    swift_beginAccess();
    v34(v9, &v12[v24], v5);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v21(v9, v5);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v40);

    *(v23 + 14) = v28;
    v13 = v37;
    _os_log_impl(&dword_20AEA4000, v37, v36, "Race: adding new discovered race workout_configuration: %s, clusterUUID: %s", v23, 0x16u);
    v29 = v38;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v29, -1, -1);
    a2 = v39;
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

  swift_beginAccess();
  v30 = v12;
  MEMORY[0x20F2E6F30]();
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v32 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t closure #4 in closure #1 in WorkoutConfigurationDataSource.load()(double a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v30);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.race);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = [objc_opt_self() currentThread];
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&dword_20AEA4000, v14, v15, "Race: requesting current location, thread: %@", v16, 0xCu);
    outlined destroy of RaceRouteDataStoring?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v17, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  v19 = *MEMORY[0x277CE4238];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v20 = static LocationManager.shared;
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v21;
  *(v22 + 32) = v19;
  *(v22 + 40) = 0x3FB999999999999ALL;
  *(v22 + 48) = a3;
  v23 = *&v20[OBJC_IVAR___WOCoreLocationManager_queue];
  v24 = swift_allocObject();
  v24[2] = v20;
  v24[3] = partial apply for closure #1 in closure #4 in closure #1 in WorkoutConfigurationDataSource.load();
  v24[4] = v22;
  v24[5] = 0x3FB999999999999ALL;
  v24[6] = v19;
  v24[7] = v19;
  aBlock[4] = _s11WorkoutCore15LocationManagerC013requestSingleC6Update7timeout17requestedAccuracy010acceptableJ010completionySd_S2dySo10CLLocationCSgctFyyYbcfU_TA_0;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_155;
  v25 = _Block_copy(aBlock);

  v26 = a3;
  v27 = v20;

  static DispatchQoS.unspecified.getter();
  v32 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v12, v8, v25);
  _Block_release(v25);

  (*(v31 + 8))(v8, v5);
  (*(v9 + 8))(v12, v30);
}

void closure #1 in closure #4 in closure #1 in WorkoutConfigurationDataSource.load()(void *a1, double a2, double a3, double a4, uint64_t a5, NSObject *a6)
{
  static Date.timeIntervalSinceReferenceDate.getter();
  v12 = v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = a1;
    if (!a1)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v16 = static LocationManager.shared;
      v17 = OBJC_IVAR___WOCoreLocationManager_lastLocation;
      swift_beginAccess();
      v15 = *(v16 + v17);
      v18 = v15;
    }

    v19 = *&v14[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation];
    *&v14[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation] = v15;
    v20 = a1;
  }

  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static WOLog.race);
  v22 = a1;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138414082;
    v27 = a1 == 0;
    *(v25 + 4) = v22;
    *v26 = a1;
    *(v25 + 12) = 2112;
    v28 = objc_opt_self();
    v29 = v22;
    v30 = [v28 currentThread];
    *(v25 + 14) = v30;
    v26[1] = v30;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v12 - a2;
    *(v25 + 32) = 2048;
    *(v25 + 34) = a3;
    *(v25 + 42) = 2048;
    *(v25 + 44) = a4;
    *(v25 + 52) = 1024;

    *(v25 + 54) = v27;
    *(v25 + 58) = 2112;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v31 = static LocationManager.shared;
    v32 = OBJC_IVAR___WOCoreLocationManager_lastLocation;
    swift_beginAccess();
    v33 = *(v31 + v32);
    *(v25 + 60) = v33;
    v26[2] = v33;
    *(v25 + 68) = 2112;
    swift_beginAccess();
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = *(v34 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation);
      v36 = v34;
      v37 = v35;
      v38 = v33;

      if (v35)
      {
LABEL_18:
        *(v25 + 70) = v37;
        v26[3] = v35;
        _os_log_impl(&dword_20AEA4000, v23, v24, "Race: received current location: %@, thread: %@, elapsed time: %f seconds, accuracy: %f, timeout: %f seconds, using last known location: %{BOOL}d, last known location: %@, assigned current location: %@", v25, 0x4Eu);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v26, -1, -1);
        MEMORY[0x20F2E9420](v25, -1, -1);
        goto LABEL_19;
      }
    }

    else
    {
      v39 = v33;
    }

    v37 = 0;
    v35 = 0;
    goto LABEL_18;
  }

  v23 = v22;
LABEL_19:

  dispatch_group_leave(a6);
}

uint64_t closure #6 in closure #1 in WorkoutConfigurationDataSource.load()(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  swift_bridgeObjectRetain_n();
  v22 = specialized Array._copyToContiguousArray()(v4);
  specialized MutableCollection<>.sort(by:)(&v22, &OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate);

  v5 = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v5;
  v6 = a1;
  static Published.subscript.setter();
  if (one-time initialization token for race != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.race);
    v6 = v6;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 134218242;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v12 = v22 >> 62 ? __CocoaSet.count.getter() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

      *(v10 + 4) = v12;

      *(v10 + 12) = 2112;
      v13 = *(&v6->isa + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType);
      *(v10 + 14) = v13;
      *v11 = v13;
      v14 = v13;
      _os_log_impl(&dword_20AEA4000, v8, v9, "Room: loaded %ld workout_configurations into activity room sorted by modificationDate, activityType: %@", v10, 0x16u);
      outlined destroy of RaceRouteDataStoring?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    else
    {

      v8 = v6;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v15 = v22;
    if (v22 >> 62)
    {
      break;
    }

    v16 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_21;
    }

LABEL_9:
    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x20F2E7A20](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v22 = v18;
      closure #2 in closure #6 in closure #1 in WorkoutConfigurationDataSource.load()(&v22);

      ++v17;
      if (v20 == v16)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v16 = __CocoaSet.count.getter();
  if (v16)
  {
    goto LABEL_9;
  }

LABEL_21:

  *(&v6->isa + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_loaded) = 1;
  return result;
}

void closure #2 in closure #6 in closure #1 in WorkoutConfigurationDataSource.load()(void **a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.race);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v12 = 136315650;
    v13 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v3 + 16))(v6, &v9[v13], v2);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v3 + 8))(v6, v2);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v33);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v19 = [*&v9[v18] localizedName];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v33);

    *(v12 + 14) = v23;
    *(v12 + 22) = 2080;
    v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v25 = [*&v9[v24] description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v33);

    *(v12 + 24) = v29;
    _os_log_impl(&dword_20AEA4000, v10, v11, "Room: loaded workout_configuration: %s, %s, occurrence: %s", v12, 0x20u);
    v30 = v32;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v30, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }
}

void closure #2 in WorkoutConfigurationDataSource.load()(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.app);
  v13 = a1;
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v15, v16))
  {

    if (!a1)
    {
      return;
    }

    goto LABEL_10;
  }

  v42 = a3;
  v43 = v7;
  v44 = v6;
  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v20 = a1;
  v21 = v19;
  v51 = v19;
  *v17 = 138412546;
  *(v17 + 4) = v13;
  v41 = v20;
  *v18 = v20;
  *(v17 + 12) = 2080;
  if (a2)
  {
    swift_getErrorValue();
    v22 = v49;
    v23 = v50;
    v24 = v13;
    v25 = MEMORY[0x20F2E7F50](v22, v23);
    v27 = v26;
  }

  else
  {
    v28 = v13;
    v25 = 0;
    v27 = 0;
  }

  aBlock = v25;
  v53 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v29 = Optional.description.getter();
  v31 = v30;

  v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v51);

  *(v17 + 14) = v32;
  _os_log_impl(&dword_20AEA4000, v15, v16, "Fetched last workout:%@ error=%s", v17, 0x16u);
  outlined destroy of RaceRouteDataStoring?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  MEMORY[0x20F2E9420](v18, -1, -1);
  __swift_destroy_boxed_opaque_existential_1Tm_16(v21);
  MEMORY[0x20F2E9420](v21, -1, -1);
  MEMORY[0x20F2E9420](v17, -1, -1);

  v7 = v43;
  v6 = v44;
  a3 = v42;
  if (v41)
  {
LABEL_10:
    if (!a2)
    {
      type metadata accessor for OS_dispatch_queue();
      v33 = v13;
      v34 = static OS_dispatch_queue.main.getter();
      v35 = swift_allocObject();
      *(v35 + 16) = a3;
      *(v35 + 24) = v33;
      v56 = partial apply for closure #1 in closure #2 in WorkoutConfigurationDataSource.load();
      v57 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v53 = 1107296256;
      v54 = thunk for @escaping @callee_guaranteed () -> ();
      v55 = &block_descriptor_127_0;
      v36 = _Block_copy(&aBlock);
      v37 = v33;
      v38 = a3;

      v39 = v45;
      static DispatchQoS.unspecified.getter();
      aBlock = MEMORY[0x277D84F90];
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v40 = v47;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F2E7580](0, v39, v40, v36);
      _Block_release(v36);

      (*(v7 + 8))(v40, v6);
      (*(v46 + 8))(v39, v48);
    }
  }
}

id closure #1 in closure #2 in WorkoutConfigurationDataSource.load()(uint64_t a1, void *a2)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_lastWorkout;
  swift_beginAccess();
  v4 = *(a1 + v3);
  *(a1 + v3) = a2;

  return a2;
}

void closure #3 in WorkoutConfigurationDataSource.load()(unint64_t a1, NSObject *a2, void (**a3)(void *, char *, uint64_t), uint64_t a4)
{
  v96 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v23 = a2;
    if (one-time initialization token for app != -1)
    {
LABEL_40:
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static WOLog.app);
    v25 = a2;
    v26 = a4;
    v99 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v99, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 134218498;
      *(v28 + 4) = v96;
      *(v28 + 12) = 2112;
      v30 = *&v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType];
      *(v28 + 14) = v30;
      *v29 = v30;
      *(v28 + 22) = 2112;
      v31 = a2;
      v32 = v30;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 24) = v33;
      v29[1] = v33;
      _os_log_impl(&dword_20AEA4000, v99, v27, "[WorkoutConfigurationDataSource] failed to fetch completed workouts in the last %ld days for activityType: %@ with error: %@", v28, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v29, -1, -1);
      MEMORY[0x20F2E9420](v28, -1, -1);

      v34 = v99;
    }

    else
    {

      v34 = a2;
    }
  }

  else
  {
    v97 = v22;
    v98 = v20;
    v89 = v16;
    v90 = v13;
    v92 = v7;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v91 = v8;
    v35 = type metadata accessor for Logger();
    v36 = __swift_project_value_buffer(v35, static WOLog.app);
    v37 = a4;

    v87 = v36;
    a4 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v39 = os_log_type_enabled(a4, v38);
    v93 = v11;
    v94 = v12;
    v86 = v37;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 134218498;
      if (a1 >> 62)
      {
        v42 = __CocoaSet.count.getter();
      }

      else
      {
        v42 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v40 + 4) = v42;

      *(v40 + 12) = 2048;
      *(v40 + 14) = v96;
      *(v40 + 22) = 2112;
      v43 = *&v37[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType];
      *(v40 + 24) = v43;
      *v41 = v43;
      v44 = v43;
      _os_log_impl(&dword_20AEA4000, a4, v38, "[WorkoutConfigurationDataSource] fetched %ld workouts completed in the last %ld days for activityType: %@", v40, 0x20u);
      outlined destroy of RaceRouteDataStoring?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v41, -1, -1);
      MEMORY[0x20F2E9420](v40, -1, -1);
    }

    else
    {
    }

    v45 = MEMORY[0x277D84F90];
    v102 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_11WorkoutCore0E13ConfigurationCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v101 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SiTt0g5Tf4g_n(v45);
    specialized Sequence.forEach(_:)(a1, &v102, &v101);
    v88 = v101;
    v99 = specialized _NativeDictionary.filter(_:)(v101);
    aBlock[0] = v45;
    v85 = 0;
    v46 = v102;
    v47 = v102 + 64;
    v48 = 1 << v102[32];
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *(v102 + 8);
    v51 = (v48 + 63) >> 6;
    v96 = (v18 + 16);
    v52 = (v18 + 8);

    v53 = 0;
    v95 = v46;
    a2 = v97;
    while (v50)
    {
      v54 = v53;
LABEL_26:
      v55 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v56 = *(*(v46 + 7) + ((v54 << 9) | (8 * v55)));
      v57 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      v58 = v98;
      (*v96)(a2, &v56[v57], v98);
      a4 = v99;
      if (v99[2].isa)
      {
        v59 = v56;
        specialized __RawDictionaryStorage.find<A>(_:)(a2);
        a4 = v60;
        (*v52)(a2, v58);
        if ((a4 & 1) == 0 || (a4 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider, swift_beginAccess(), *&v59[a4]))
        {

          v53 = v54;
        }

        else
        {
          a4 = aBlock;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v61 = *(aBlock[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v46 = v95;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v53 = v54;
        }
      }

      else
      {
        (*v52)(a2, v58);
        v53 = v54;
      }
    }

    while (1)
    {
      v54 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v54 >= v51)
      {
        break;
      }

      v50 = *&v47[8 * v54];
      ++v53;
      if (v50)
      {
        goto LABEL_26;
      }
    }

    v62 = aBlock[0];

    aBlock[0] = specialized Array._copyToContiguousArray()(v63);
    v64 = v85;
    specialized MutableCollection<>.sort(by:)(aBlock, &OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate);
    if (v64)
    {

      __break(1u);
    }

    else
    {
      v65 = aBlock[0];
      v66 = v86;

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();

      v69 = os_log_type_enabled(v67, v68);
      v70 = v94;
      v71 = v93;
      v72 = v90;
      v73 = v89;
      if (v69)
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v74 = 134218242;
        if (v62 < 0 || (v62 & 0x4000000000000000) != 0)
        {
          v76 = __CocoaSet.count.getter();
        }

        else
        {
          v76 = *(v62 + 16);
        }

        *(v74 + 4) = v76;

        *(v74 + 12) = 2112;
        v77 = *&v66[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType];
        *(v74 + 14) = v77;
        *v75 = v77;
        v78 = v77;
        _os_log_impl(&dword_20AEA4000, v67, v68, "[WorkoutConfigurationDataSource] found %ld frequent workouts for activityType: %@", v74, 0x16u);
        outlined destroy of RaceRouteDataStoring?(v75, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v75, -1, -1);
        MEMORY[0x20F2E9420](v74, -1, -1);

        v71 = v93;
        v70 = v94;
      }

      else
      {
      }

      type metadata accessor for OS_dispatch_queue();
      v79 = static OS_dispatch_queue.main.getter();
      v80 = swift_allocObject();
      *(v80 + 16) = v66;
      *(v80 + 24) = v65;
      aBlock[4] = partial apply for closure #5 in closure #3 in WorkoutConfigurationDataSource.load();
      aBlock[5] = v80;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_121;
      v81 = _Block_copy(aBlock);
      v82 = v66;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v83 = v92;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F2E7580](0, v73, v71, v81);

      _Block_release(v81);

      (*(v91 + 8))(v71, v83);
      (*(v72 + 8))(v73, v70);
    }
  }
}

void closure #1 in closure #3 in WorkoutConfigurationDataSource.load()(id *a1, char **a2, char **a3)
{
  v4 = v3;
  v72 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 1);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v73 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v66 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v66 - v15;
  v17 = [*a1 metadata];
  if (v17)
  {
    v18 = v17;
    v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v19 = 0;
  }

  v75 = a2;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v20 = specialized static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(v19, 0, static WorkoutConfigurationValidator.shared);

    if (!v20)
    {
      break;
    }

    type metadata accessor for GoalWorkoutConfiguration();
    v21 = swift_dynamicCastClass();
    v76 = v20;
    if (v21)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v22 = v76;
      static Published.subscript.getter();

      v20 = v76;

      v23 = v77[0];
      v24 = [v77[0] goalTypeIdentifier];

      if (!v24)
      {

        return;
      }
    }

    v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v68 = v8[2];
    v69 = v8 + 2;
    v68(v16, &v19[v20], v7);
    v25 = v75;
    v26 = *v75;
    v27 = *(*v75 + 2);
    v66[1] = v4;
    v67 = v14;
    v74 = v7;
    if (v27)
    {
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      if (v29)
      {
        v30 = *(*(v26 + 7) + 8 * v28);
        v31 = v8[1];
        v70 = (v8 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v19 = v30;
        v71 = v31;
        v31(v16, v7);
LABEL_23:
        v41 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
        swift_beginAccess();
        v42 = v68;
        v68(v14, &v19[v41], v7);
        v43 = v19;
        v44 = *v25;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78 = *v25;
        *v25 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v14, isUniquelyReferenced_nonNull_native);
        v71(v14, v7);
        *v25 = v78;
        v46 = &v19[v41];
        v47 = v73;
        v42(v73, v46, v7);

        v48 = v72;
        v49 = *v72;
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v78 = *v48;
        v51 = v78;
        *v48 = 0x8000000000000000;
        v53 = specialized __RawDictionaryStorage.find<A>(_:)(v47);
        v54 = *(v51 + 2);
        v55 = (v52 & 1) == 0;
        v56 = v54 + v55;
        if (__OFADD__(v54, v55))
        {
          __break(1u);
          goto LABEL_38;
        }

        LOBYTE(v14) = v52;
        if (*(v51 + 3) >= v56)
        {
          v42 = v76;
          if ((v50 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v56, v50);
          v51 = v78;
          v57 = specialized __RawDictionaryStorage.find<A>(_:)(v47);
          v42 = v76;
          if ((v14 & 1) != (v58 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v53 = v57;
        }

        while (1)
        {
          v59 = *v48;
          *v48 = v51;

          v60 = *v48;
          if ((v14 & 1) == 0)
          {
            v61 = v67;
            v68(v67, v47, v74);
            specialized _NativeDictionary._insert(at:key:value:)(v53, v61, 0, v60);
          }

          v62 = *(v60 + 7);
          v63 = *(v62 + 8 * v53);
          v64 = __OFADD__(v63, 1);
          v65 = v63 + 1;
          if (!v64)
          {
            break;
          }

LABEL_38:
          __break(1u);
LABEL_39:
          specialized _NativeDictionary.copy()();
          v51 = v78;
        }

        *(v62 + 8 * v53) = v65;

        v71(v47, v74);
        return;
      }
    }

    v32 = v8[1];
    v70 = (v8 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v71 = v32;
    v32(v16, v7);
    v16 = *v25;
    v8 = *v25 + 64;
    v33 = 1 << (*v25)[32];
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v14 = v34 & *(*v25 + 8);
    v35 = (v33 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v36 = 0;
    if (v14)
    {
      while (1)
      {
        v37 = v36;
LABEL_18:
        v38 = *(*(v16 + 7) + ((v37 << 9) | (8 * __clz(__rbit64(v14)))));
        v77[3] = type metadata accessor for WorkoutConfiguration();
        v77[4] = &protocol witness table for WorkoutConfiguration;
        v77[0] = v76;
        v4 = (*MEMORY[0x277D85000] & *v38) + 464;
        v7 = *((*MEMORY[0x277D85000] & *v38) + 0x1D0);
        v39 = v76;
        v19 = v38;
        v40 = v7(v77);
        __swift_destroy_boxed_opaque_existential_1Tm_16(v77);
        if (v40)
        {
          break;
        }

        v14 &= v14 - 1;

        v36 = v37;
        if (!v14)
        {
          goto LABEL_15;
        }
      }

LABEL_22:
      v7 = v74;
      v25 = v75;
      v14 = v67;
      goto LABEL_23;
    }

LABEL_15:
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v35)
      {

        v19 = v76;
        goto LABEL_22;
      }

      v14 = v8[v37];
      ++v36;
      if (v14)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_36:
    swift_once();
  }
}

BOOL WorkoutConfiguration.isOpenGoal.getter()
{
  type metadata accessor for GoalWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  static Published.subscript.getter();

  v2 = [v4 goalTypeIdentifier];

  return !v2;
}

int64_t closure #5 in closure #3 in WorkoutConfigurationDataSource.load()(void *a1, uint64_t a2)
{
  v3 = a2;
  v5 = a2 >> 62;
  if (a2 >> 62)
  {
    if (a2 < 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = __CocoaSet.count.getter();
    if (__CocoaSet.count.getter() < 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v10 >= 3)
    {
      v17 = 3;
    }

    else
    {
      v17 = v10;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v7 = v17;
    }

    else
    {
      v7 = 3;
    }

    result = __CocoaSet.count.getter();
    if (result >= v7)
    {
LABEL_6:
      if ((v3 & 0xC000000000000001) != 0 && v7)
      {
        type metadata accessor for WorkoutConfiguration();

        _ArrayBuffer._typeCheckSlowPath(_:)(0);
        if (v7 != 1)
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(1);
          if (v7 != 2)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(2);
          }
        }

        if (!v5)
        {
LABEL_12:
          v8 = 0;
          v3 &= 0xFFFFFFFFFFFFFF8uLL;
          v9 = v3 + 32;
          v10 = (2 * v7) | 1;
          if (v10)
          {
LABEL_17:
            v2 = v9;
            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v13 = swift_dynamicCastClass();
            if (!v13)
            {
              swift_unknownObjectRelease();
              v13 = MEMORY[0x277D84F90];
            }

            v14 = *(v13 + 16);

            if (!__OFSUB__(v10 >> 1, v8))
            {
              if (v14 == (v10 >> 1) - v8)
              {
                v15 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (v15)
                {
LABEL_23:
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v16 = a1;
                  return static Published.subscript.setter();
                }

LABEL_22:
                swift_unknownObjectRelease();
                goto LABEL_23;
              }

              goto LABEL_30;
            }

LABEL_29:
            __break(1u);
LABEL_30:
            swift_unknownObjectRelease();
            v9 = v2;
          }

LABEL_16:
          specialized _copyCollectionToContiguousArray<A>(_:)(v3, v9, v8, v10);
          goto LABEL_22;
        }
      }

      else
      {

        if (!v5)
        {
          goto LABEL_12;
        }
      }

      v3 = _CocoaArrayWrapper.subscript.getter();
      v8 = v11;
      v10 = v12;
      if (v12)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result >= v7)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void WorkoutConfigurationDataSource.fetchRecentWorkouts(activityType:daysAgo:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.app);
  v10 = v4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = *&v10[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType];
    *(v13 + 4) = v15;
    *v14 = v15;
    v16 = v15;
    _os_log_impl(&dword_20AEA4000, v11, v12, "[WorkoutConfigurationDataSource] fetching recent workouts for activityType: %@", v13, 0xCu);
    outlined destroy of RaceRouteDataStoring?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  v17 = specialized static HKQuery.recentWorkoutsQuery(activityType:daysAgo:completion:)(a1, a2, a3, a4);
  if (v17)
  {
    v18 = v17;
    [*&v10[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_healthStore] executeQuery_];
  }
}

void WorkoutConfigurationDataSource.add(workoutConfiguration:)(void *a1)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  if (*(a1 + v9) != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v14 = v57[0];
    v53 = v4;
    v54 = v1;
    v51 = v8;
    v52 = v5;
    if (v57[0] >> 62)
    {
      v15 = __CocoaSet.count.getter();
      if (v15)
      {
LABEL_8:
        v16 = 0;
        v55 = v14 & 0xFFFFFFFFFFFFFF8;
        v56 = v14 & 0xC000000000000001;
        while (1)
        {
          if (v56)
          {
            v17 = MEMORY[0x20F2E7A20](v16, v14);
          }

          else
          {
            if (v16 >= *(v55 + 16))
            {
              goto LABEL_22;
            }

            v17 = *(v14 + 8 * v16 + 32);
          }

          KeyPath = v17;
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v57[3] = type metadata accessor for WorkoutConfiguration();
          v57[4] = &protocol witness table for WorkoutConfiguration;
          v57[0] = a1;
          v20 = *((*MEMORY[0x277D85000] & *KeyPath) + 0x1D0);
          v2 = a1;
          v21 = v20(v57);
          __swift_destroy_boxed_opaque_existential_1Tm_16(v57);
          if (v21)
          {
            break;
          }

          ++v16;
          if (v19 == v15)
          {
            goto LABEL_25;
          }
        }

        if (one-time initialization token for app != -1)
        {
          goto LABEL_33;
        }

LABEL_18:
        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static WOLog.app);
        v23 = v2;
        v24 = KeyPath;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        v27 = os_log_type_enabled(v25, v26);
        v28 = v54;
        if (v27)
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138412546;
          *(v29 + 4) = v23;
          *(v29 + 12) = 2112;
          *(v29 + 14) = v24;
          *v30 = v23;
          v30[1] = KeyPath;
          v31 = v23;
          v32 = v24;
          _os_log_impl(&dword_20AEA4000, v25, v26, "Add new workout_configuration: %@ was deduplicated against equivalent: %@", v29, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v30, -1, -1);
          MEMORY[0x20F2E9420](v29, -1, -1);
        }

        WorkoutConfigurationDataSource.save(workoutConfiguration:)(v24);
        swift_getKeyPath();
        swift_getKeyPath();
        v57[0] = KeyPath;
        v33 = v28;
        static Published.subscript.setter();
        return;
      }
    }

    else
    {
      v15 = *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_8;
      }
    }

LABEL_25:

    v34 = v54;
    v35 = *&v54[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_occurrenceStore];
    v36 = v51;
    Date.init()();
    WorkoutConfigurationOccurrenceStore.addOccurrence(for:modificationDate:)(a1);
    (*(v52 + 8))(v36, v53);
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    v38 = static Published.subscript.modify();
    if (!(*v37 >> 62))
    {
      goto LABEL_26;
    }

    if (*v37 < 0)
    {
      v50 = *v37;
    }

    if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
    {
LABEL_26:
      v39 = a1;
      specialized Array.replaceSubrange<A>(_:with:)(0, 0, v39);

      v38(v57, 0);

      swift_getKeyPath();
      swift_getKeyPath();
      v57[0] = v39;
      v40 = v39;
      v41 = v34;
      static Published.subscript.setter();
      if (v41[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence] == 1)
      {
        v42 = *&v41[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_queryClient];
        v43 = swift_allocObject();
        *(v43 + 16) = v40;
        *(v43 + 24) = v41;
        v44 = swift_allocObject();
        v44[2] = partial apply for closure #2 in WorkoutConfigurationDataSource.add(workoutConfiguration:);
        v44[3] = v43;
        v44[4] = v40;
        v44[5] = v42;
        v45 = swift_allocObject();
        *(v45 + 16) = partial apply for closure #2 in WorkoutConfigurationDataSource.add(workoutConfiguration:);
        *(v45 + 24) = v43;
        v46 = v40;
        swift_retain_n();
        v47 = v46;
        v48 = v41;
        v49 = v42;
        QueryClient.remoteProxy(handler:errorHandler:)(_s11WorkoutCore11QueryClientC4save_10completionyAA0A13ConfigurationC_ySb_s5Error_pSgtctFyypcfU_TA_0, v44, _s11WorkoutCore11QueryClientC4save_10completionyAA0A13ConfigurationC_ySb_s5Error_pSgtctFysAH_pcfU0_TA_0, v45);
      }

      return;
    }

    __break(1u);
LABEL_33:
    swift_once();
    goto LABEL_18;
  }

  if (one-time initialization token for race != -1)
  {
LABEL_23:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.race);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_20AEA4000, v11, v12, "Race: not persisting race configuration", v13, 2u);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }
}

void WorkoutConfigurationDataSource.save(workoutConfiguration:)(char *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence] == 1)
  {
    v8 = *&v1[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_occurrenceStore];
    Date.init()();
    WorkoutConfigurationOccurrenceStore.saveOccurrence(for:modificationDate:postUpdate:)(a1, v7, 1);
    (*(v4 + 8))(v7, v3);
    v9 = *&v1[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_queryClient];
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = v1;
    v11 = swift_allocObject();
    v11[2] = partial apply for closure #1 in WorkoutConfigurationDataSource.save(workoutConfiguration:);
    v11[3] = v10;
    v11[4] = a1;
    v11[5] = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = partial apply for closure #1 in WorkoutConfigurationDataSource.save(workoutConfiguration:);
    *(v12 + 24) = v10;
    v13 = a1;
    swift_retain_n();
    v14 = v13;
    v15 = v1;
    v16 = v9;
    QueryClient.remoteProxy(handler:errorHandler:)(closure #1 in QueryClient.save(_:completion:)partial apply, v11, closure #2 in QueryClient.save(_:completion:)partial apply, v12);
  }

  else
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.app);
    v18 = a1;
    v25 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v18;
      *v21 = v18;
      v22 = v18;
      _os_log_impl(&dword_20AEA4000, v25, v19, "Save only to memory existing workout_configuration=%@", v20, 0xCu);
      outlined destroy of RaceRouteDataStoring?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v21, -1, -1);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    v23 = v25;
  }
}

void closure #2 in WorkoutConfigurationDataSource.add(workoutConfiguration:)(char a1, void *a2, void *a3, char *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.app);
  v15 = a3;
  v16 = a2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v43 = a4;
    v44 = v9;
    v45 = v8;
    v19 = a1;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v52 = v22;
    *v20 = 138412802;
    *(v20 + 4) = v15;
    *v21 = v15;
    *(v20 + 12) = 1024;
    *(v20 + 14) = v19 & 1;
    *(v20 + 18) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v23 = v50;
      v24 = v51;
      v25 = v15;
      v26 = MEMORY[0x20F2E7F50](v23, v24);
      v28 = v27;
    }

    else
    {
      v36 = v15;
      v26 = 0;
      v28 = 0;
    }

    aBlock = v26;
    v54 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v37 = Optional.description.getter();
    v39 = v38;

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v52);

    *(v20 + 20) = v40;
    _os_log_impl(&dword_20AEA4000, v17, v18, "Save new workout_configuration=%@ success=%{BOOL}d error=%s", v20, 0x1Cu);
    outlined destroy of RaceRouteDataStoring?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_16(v22);
    MEMORY[0x20F2E9420](v22, -1, -1);
    MEMORY[0x20F2E9420](v20, -1, -1);

    v9 = v44;
    v8 = v45;
    a4 = v43;
    if (!a2)
    {
      goto LABEL_10;
    }

LABEL_7:
    type metadata accessor for OS_dispatch_queue();
    v29 = static OS_dispatch_queue.main.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = a4;
    *(v30 + 24) = v15;
    v57 = partial apply for closure #1 in closure #2 in WorkoutConfigurationDataSource.add(workoutConfiguration:);
    v58 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = thunk for @escaping @callee_guaranteed () -> ();
    v56 = &block_descriptor_100;
    v31 = _Block_copy(&aBlock);
    v32 = v15;
    v33 = a4;

    v34 = v46;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v35 = v48;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v34, v35, v31);
    _Block_release(v31);

    (*(v9 + 8))(v35, v8);
    (*(v47 + 8))(v34, v49);
    return;
  }

  if (a2)
  {
    goto LABEL_7;
  }

LABEL_10:
  v41 = *&a4[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_nanoSyncControl];
  v57 = closure #1 in WorkoutConfigurationDataSource.forceSync();
  v58 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v56 = &block_descriptor_94_0;
  v42 = _Block_copy(&aBlock);
  [v41 forceNanoSyncWithOptions:0 completion:v42];
  _Block_release(v42);
}

void closure #1 in closure #2 in WorkoutConfigurationDataSource.add(workoutConfiguration:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = a2;
  v10 = static Published.subscript.modify();
  v12 = v11;
  specialized MutableCollection._halfStablePartition(isSuffixElement:)(v11, v9);
  v14 = v13;

  v15 = *v12;
  if (*v12 >> 62)
  {
    if (v15 < 0)
    {
      v22 = *v12;
    }

    v16 = __CocoaSet.count.getter();
    if (v16 >= v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 >= v14)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(v14, v16);
      v10(aBlock, 0);

      swift_getKeyPath();
      swift_getKeyPath();
      aBlock[0] = 0;
      v17 = a1;
      static Published.subscript.setter();
      v18 = *&v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_occurrenceStore];
      v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      (*(v5 + 16))(v8, &v9[v19], v4);
      WorkoutConfigurationOccurrenceStore.removeOccurrence(uuid:)(v8);
      (*(v5 + 8))(v8, v4);
      v20 = *&v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_nanoSyncControl];
      aBlock[4] = closure #1 in WorkoutConfigurationDataSource.forceSync();
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_103;
      v21 = _Block_copy(aBlock);
      [v20 forceNanoSyncWithOptions:0 completion:v21];
      _Block_release(v21);
      return;
    }
  }

  __break(1u);
}

uint64_t WorkoutConfigurationDataSource.remove(at:by:)(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v18) = *a2;
  v9 = WorkoutConfigurationDataSource.sortedWorkoutConfigurations(by:)(&v18);
  v18 = MEMORY[0x277D84F90];
  specialized Sequence.forEach(_:)(a1, v9, &v18);

  v10 = v18[2];
  if (v10)
  {
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = v18 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v8, v14, v4);
      WorkoutConfigurationDataSource.remove(uuid:)(v8);
      (*(v11 - 8))(v8, v4);
      v14 += v15;
      --v10;
    }

    while (v10);
  }
}

uint64_t WorkoutConfigurationDataSource.sortedWorkoutConfigurations(by:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v34[0];
  v35 = MEMORY[0x277D84F90];
  if (v34[0] >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v34[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; v4 = v25)
  {
    v31 = v2;
    v32 = v4;
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v2 = v4 & 0xFFFFFFFFFFFFFF8;
    v8 = v4 + 32;
    while (1)
    {
      if (v7)
      {
        v4 = MEMORY[0x20F2E7A20](v6, v32);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_33;
        }

        v4 = *(v8 + 8 * v6);
      }

      v9 = v4;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      if (v3 > 2)
      {
        if (v3 == 3)
        {
          v13 = &outlined read-only object #2 of WorkoutConfigurationFilterType.configurationTypes.getter;
        }

        else if (v3 == 4)
        {
          v13 = &outlined read-only object #5 of WorkoutConfigurationFilterType.configurationTypes.getter;
        }

        else
        {
          v13 = &outlined read-only object #3 of WorkoutConfigurationFilterType.configurationTypes.getter;
        }
      }

      else
      {
        if (!v3)
        {
          v14 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType();
          v34[0] = MEMORY[0x20F2E7290](5, &type metadata for ConfigurationType, v14);
          v12 = &byte_282243178;
          goto LABEL_18;
        }

        if (v3 == 1)
        {
          v11 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType();
          v34[0] = MEMORY[0x20F2E7290](5, &type metadata for ConfigurationType, v11);
          v12 = &byte_282243218;
LABEL_18:
          specialized Set._Variant.insert(_:)(&v33, *v12);
          specialized Set._Variant.insert(_:)(&v33, v12[1]);
          specialized Set._Variant.insert(_:)(&v33, v12[2]);
          specialized Set._Variant.insert(_:)(&v33, v12[3]);
          specialized Set._Variant.insert(_:)(&v33, v12[4]);
          v15 = v34[0];
          goto LABEL_23;
        }

        v13 = &outlined read-only object #1 of WorkoutConfigurationFilterType.configurationTypes.getter;
      }

      v15 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore17ConfigurationTypeO_Tt0g5Tf4g_n(v13);
LABEL_23:
      v16 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      if (*(v15 + 16) && (v17 = v9[v16], v18 = *(v15 + 40), Hasher.init(_seed:)(), MEMORY[0x20F2E7FF0](v17 + 1), v19 = Hasher._finalize()(), v20 = -1 << *(v15 + 32), v21 = v19 & ~v20, ((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
      {
        v22 = ~v20;
        while (*(*(v15 + 48) + v21) != v17)
        {
          v21 = (v21 + 1) & v22;
          if (((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v23 = *(v35 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = specialized ContiguousArray._endMutation()();
      }

      else
      {
LABEL_4:
      }

      if (v6 == i)
      {
        v24 = v35;
        v2 = v31;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v25 = v4;
    i = __CocoaSet.count.getter();
  }

  v24 = MEMORY[0x277D84F90];
LABEL_36:

  type metadata accessor for WorkoutConfigurationOccurrenceStore();
  LOBYTE(v34[0]) = v3;
  v26 = *(v2 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType);
  v27 = *(v2 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation);
  v28 = v27;
  v29 = static WorkoutConfigurationOccurrenceStore.sortedWorkoutConfigurations(_:filterType:activityType:currentLocation:)(v24, v34, v26, v27);

  return v29;
}

unint64_t closure #1 in WorkoutConfigurationDataSource.remove(at:by:)(unint64_t *a1, unint64_t a2, void **a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 >= result)
  {
    return result;
  }

  if ((a2 & 0xC000000000000001) == 0)
  {
    if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = *(a2 + 8 * v11 + 32);
    goto LABEL_7;
  }

LABEL_15:
  v13 = MEMORY[0x20F2E7A20](v11, a2);
LABEL_7:
  v14 = v13;
  v15 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v7 + 16))(v10, &v14[v15], v6);

  v16 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
    *a3 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1, v16);
    *a3 = v16;
  }

  v16[2] = v19 + 1;
  return (*(v7 + 32))(v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v10, v6);
}

uint64_t WorkoutConfigurationDataSource.remove(uuid:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 1);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = MEMORY[0x28223BE20](v9);
  if (v1[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence] == 1)
  {
    v56 = &v51 - v11;
    v57 = v12;
    v13 = v5;
    v5 = v4;
    v55 = &v51;
    MEMORY[0x28223BE20](v10);
    *(&v51 - 2) = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = static Published.subscript.modify();
    v15 = v14;
    v8 = 0;
    v16 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #2 in WorkoutConfigurationDataSource.remove(uuid:), (&v51 - 4));
    if (*v15 >> 62)
    {
      v8 = v16;
      v17 = __CocoaSet.count.getter();
      v16 = v8;
      if (v17 >= v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v17 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17 >= v16)
      {
LABEL_4:
        specialized Array.replaceSubrange<A>(_:with:)(v16, v17);
        (v4)(v58, 0);

        v18 = *&v2[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_queryClient];
        v19 = v13;
        v51 = v2;
        v54 = v13[2];
        v55 = v18;
        v20 = v56;
        v54(v56, a1, v5);
        v21 = *(v13 + 80);
        v22 = (v21 + 16) & ~v21;
        v52 = v6 + 7;
        v23 = (v6 + 7 + v22) & 0xFFFFFFFFFFFFFFF8;
        v24 = swift_allocObject();
        v25 = v51;
        v53 = v19[4];
        v53(v24 + v22, v20, v5);
        *(v24 + v23) = v25;
        v26 = v57;
        v54(v57, a1, v5);
        v27 = (v21 + 32) & ~v21;
        v28 = (v52 + v27) & 0xFFFFFFFFFFFFFFF8;
        v29 = swift_allocObject();
        *(v29 + 16) = partial apply for closure #3 in WorkoutConfigurationDataSource.remove(uuid:);
        *(v29 + 24) = v24;
        v53(v29 + v27, v26, v5);
        v30 = v55;
        *(v29 + v28) = v55;
        v31 = swift_allocObject();
        *(v31 + 16) = partial apply for closure #3 in WorkoutConfigurationDataSource.remove(uuid:);
        *(v31 + 24) = v24;
        swift_retain_n();
        v32 = v25;
        v33 = v30;
        QueryClient.remoteProxy(handler:errorHandler:)(_s11WorkoutCore11QueryClientC19deleteConfiguration4uuid10completiony10Foundation4UUIDV_ySb_s5Error_pSgtctFyypcfU_TA_0, v29, _s11WorkoutCore11QueryClientC19deleteConfiguration4uuid10completiony10Foundation4UUIDV_ySb_s5Error_pSgtctFysAJ_pcfU0_TA_0, v31);

LABEL_12:
      }
    }

    __break(1u);
  }

  else if (one-time initialization token for app == -1)
  {
    goto LABEL_6;
  }

  swift_once();
LABEL_6:
  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static WOLog.app);
  (v5[2])(v8, a1, v4);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v58[0] = v38;
    *v37 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v4;
    v42 = v41;
    (v5[1])(v8, v40);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v42, v58);

    *(v37 + 4) = v43;
    _os_log_impl(&dword_20AEA4000, v35, v36, "Remove only from memory existing workout_configuration=%s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_16(v38);
    MEMORY[0x20F2E9420](v38, -1, -1);
    MEMORY[0x20F2E9420](v37, -1, -1);
  }

  else
  {

    v44 = (v5[1])(v8, v4);
  }

  MEMORY[0x28223BE20](v44);
  *(&v51 - 2) = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v45 = static Published.subscript.modify();
  v47 = v46;
  result = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #1 in WorkoutConfigurationDataSource.remove(uuid:), (&v51 - 4));
  if (*v47 >> 62)
  {
    v50 = result;
    v49 = __CocoaSet.count.getter();
    result = v50;
    if (v49 >= v50)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v49 = *((*v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v49 >= result)
    {
LABEL_11:
      specialized Array.replaceSubrange<A>(_:with:)(result, v49);
      v45(v58, 0);
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in WorkoutConfigurationDataSource.remove(uuid:)(uint64_t *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v3 + 16))(v6, v7 + v8, v2);
  v9 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v9 & 1;
}

uint64_t closure #3 in WorkoutConfigurationDataSource.remove(uuid:)(int a1, void *a2, uint64_t a3, void *a4)
{
  v66 = a4;
  v64 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v6 - 8);
  v7 = *(v71 + 64);
  MEMORY[0x28223BE20](v6);
  v69 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchQoS();
  v68 = *(v70 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v67 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v63 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - v15;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static WOLog.app);
  v62 = *(v12 + 16);
  v62(v16, a3, v11);
  v19 = a2;
  v65 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v58 = v21;
    v60 = a3;
    v61 = v6;
    v22 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v74 = v57;
    *v22 = 136315906;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v59 = v12;
    (*(v12 + 8))(v16, v11);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v74);

    *(v22 + 4) = v26;
    *(v22 + 12) = 1024;
    *(v22 + 14) = v64 & 1;
    *(v22 + 18) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v27 = MEMORY[0x20F2E7F50](v72, v73);
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    aBlock = v27;
    v76 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v41 = Optional.description.getter();
    v43 = v42;

    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v74);

    *(v22 + 20) = v44;
    *(v22 + 28) = 2112;
    v45 = [objc_opt_self() currentThread];
    *(v22 + 30) = v45;
    v46 = v56;
    *v56 = v45;
    _os_log_impl(&dword_20AEA4000, v20, v58, "Remove workout_configuration=%s success=%{BOOL}d error=%s thread: %@", v22, 0x26u);
    outlined destroy of RaceRouteDataStoring?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v46, -1, -1);
    v47 = v57;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v47, -1, -1);
    MEMORY[0x20F2E9420](v22, -1, -1);

    v6 = v61;
    a3 = v60;
    v12 = v59;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {

    (*(v12 + 8))(v16, v11);
    if (!a2)
    {
LABEL_12:
      type metadata accessor for OS_dispatch_queue();
      v37 = static OS_dispatch_queue.main.getter();
      v48 = v63;
      v62(v63, a3, v11);
      v49 = (*(v12 + 80) + 24) & ~*(v12 + 80);
      v50 = swift_allocObject();
      v39 = v66;
      *(v50 + 16) = v66;
      (*(v12 + 32))(v50 + v49, v48, v11);
      v79 = partial apply for closure #1 in closure #3 in WorkoutConfigurationDataSource.remove(uuid:);
      v80 = v50;
      aBlock = MEMORY[0x277D85DD0];
      v76 = 1107296256;
      v40 = &block_descriptor_79_0;
      goto LABEL_13;
    }
  }

  v30 = a2;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    v35 = a2;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v36;
    *v34 = v36;
    _os_log_impl(&dword_20AEA4000, v31, v32, "Failed to remove workout configuration: %@, reloading configurations.", v33, 0xCu);
    outlined destroy of RaceRouteDataStoring?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v34, -1, -1);
    MEMORY[0x20F2E9420](v33, -1, -1);
  }

  type metadata accessor for OS_dispatch_queue();
  v37 = static OS_dispatch_queue.main.getter();
  v38 = swift_allocObject();
  v39 = v66;
  *(v38 + 16) = v66;
  v79 = partial apply for closure #2 in closure #3 in WorkoutConfigurationDataSource.remove(uuid:);
  v80 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v76 = 1107296256;
  v40 = &block_descriptor_85;
LABEL_13:
  v77 = thunk for @escaping @callee_guaranteed () -> ();
  v78 = v40;
  v51 = _Block_copy(&aBlock);
  v52 = v39;

  v53 = v67;
  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v54 = v69;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v53, v54, v51);
  _Block_release(v51);

  (*(v71 + 8))(v54, v6);
  return (*(v68 + 8))(v53, v70);
}

void closure #1 in closure #3 in WorkoutConfigurationDataSource.remove(uuid:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_occurrenceStore);
  WorkoutConfigurationOccurrenceStore.removeOccurrence(uuid:)(a2);
  v4 = *(a1 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_nanoSyncControl);
  v6[4] = closure #1 in WorkoutConfigurationDataSource.forceSync();
  v6[5] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v6[3] = &block_descriptor_88_1;
  v5 = _Block_copy(v6);
  [v4 forceNanoSyncWithOptions:0 completion:v5];
  _Block_release(v5);
}

uint64_t WorkoutConfigurationDataSource.save(configurationData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized Occurrence.__allocating_init(count:)(0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = specialized static WorkoutConfiguration.importFromData(_:with:validator:)(a1, a2, v4, static WorkoutConfigurationValidator.shared);

  WorkoutConfigurationDataSource.save(workoutConfiguration:)(v5);
  return 1;
}

void closure #1 in WorkoutConfigurationDataSource.save(workoutConfiguration:)(char a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.app);
  v14 = a3;
  v15 = a2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v39 = v17;
    v40 = a4;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v43 = v38;
    *v18 = 138413058;
    *(v18 + 4) = v14;
    v37 = v19;
    *v19 = v14;
    *(v18 + 12) = 2080;
    v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v9 + 16))(v12, &v14[v20], v8);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v21 = v14;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v9 + 8))(v12, v8);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v43);

    *(v18 + 14) = v25;
    *(v18 + 22) = 1024;
    *(v18 + 24) = a1 & 1;
    *(v18 + 28) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v26 = MEMORY[0x20F2E7F50](v41, v42);
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    aBlock = v26;
    v45 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v29 = Optional.description.getter();
    v31 = v30;

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v43);

    *(v18 + 30) = v32;
    _os_log_impl(&dword_20AEA4000, v16, v39, "Save existing workout_configuration=%@ uuid=%s success=%{BOOL}d error=%s", v18, 0x26u);
    v33 = v37;
    outlined destroy of RaceRouteDataStoring?(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v33, -1, -1);
    v34 = v38;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v34, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);

    a4 = v40;
  }

  else
  {
  }

  v35 = *(a4 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_nanoSyncControl);
  v48 = closure #1 in WorkoutConfigurationDataSource.forceSync();
  v49 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v47 = &block_descriptor_91_0;
  v36 = _Block_copy(&aBlock);
  [v35 forceNanoSyncWithOptions:0 completion:v36];
  _Block_release(v36);
}

void WorkoutConfigurationDataSource.saveManagedConfigurationIfNeeded(_:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - v5;
  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence) == 1)
  {
    v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
    swift_beginAccess();
    if (*&a1[v7])
    {
      UUID.init()();
      v8 = type metadata accessor for UUID();
      (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
      v9 = WorkoutConfiguration.copy(uuid:location:swimmingLocation:isPartOfMultisport:preservingExternalProvider:)(v6, 0, 1, 0, 1, 2, 0);
      outlined destroy of RaceRouteDataStoring?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v9)
      {
        v10 = specialized Occurrence.__allocating_init(count:)(0);
        v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v12 = *&v9[v11];
        *&v9[v11] = v10;

        WorkoutConfigurationDataSource.add(workoutConfiguration:)(v9);
        v13 = [objc_opt_self() defaultCenter];
        v14 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        [v13 postNotificationName:@"NLSmartGoalStoreDidSaveCopiedManagedConfiguration" object:*&a1[v14]];

        v30 = 2;
        specialized static WOAnalyticsEvent.share(_:engagementType:)(v9, &v30);

        return;
      }

      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static WOLog.app);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_21;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Failed to copy managed configuration before saving";
    }

    else
    {
      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static WOLog.app);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_21;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Only applies to managed configurations";
    }

    _os_log_impl(&dword_20AEA4000, v23, v24, v26, v25, 2u);
    MEMORY[0x20F2E9420](v25, -1, -1);
LABEL_21:

    return;
  }

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static WOLog.app);
  v16 = a1;
  v29 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v16;
    *v19 = v16;
    v20 = v16;
    _os_log_impl(&dword_20AEA4000, v29, v17, "Save only to memory existing workout_configuration=%@", v18, 0xCu);
    outlined destroy of RaceRouteDataStoring?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v19, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  v21 = v29;
}

uint64_t WorkoutConfigurationDataSource.invalidate(workoutConfiguration:)(char *a1)
{
  v39 = a1;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v1;
  static Published.subscript.getter();

  v10 = v40;
  if (v40 >> 62)
  {
LABEL_18:
    v35 = v10 & 0xFFFFFFFFFFFFFF8;
    v38 = __CocoaSet.count.getter();
  }

  else
  {
    v35 = v40 & 0xFFFFFFFFFFFFFF8;
    v38 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v11 = 0;
  v36 = v10 & 0xC000000000000001;
  v12 = (v3 + 16);
  v33 = v3;
  v13 = (v3 + 8);
  while (1)
  {
    if (v38 == v11)
    {
    }

    if (v36)
    {
      v14 = v10;
      v15 = MEMORY[0x20F2E7A20](v11, v10);
    }

    else
    {
      if (v11 >= *(v35 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v14 = v10;
      v15 = *(v10 + 8 * v11 + 32);
    }

    v16 = v15;
    v17 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v18 = *v12;
    (*v12)(v9, &v16[v17], v2);
    v18(v7, &v39[v37], v2);
    v3 = static UUID.== infix(_:_:)();

    v19 = *v13;
    (*v13)(v7, v2);
    v19(v9, v2);
    if (v3)
    {
      break;
    }

    v20 = __OFADD__(v11++, 1);
    v10 = v14;
    if (v20)
    {
      goto LABEL_17;
    }
  }

  v38 = *&v34[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_queryClient];
  v22 = v39;
  v18(v9, &v39[v37], v2);
  v23 = swift_allocObject();
  v23[2] = v34;
  v23[3] = v11;
  v23[4] = v22;
  v18(v7, v9, v2);
  v24 = v33;
  v25 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v37 = (v32 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for closure #2 in WorkoutConfigurationDataSource.invalidate(workoutConfiguration:);
  *(v26 + 24) = v23;
  (*(v24 + 32))(v26 + v25, v7, v2);
  v27 = v38;
  *(v26 + v37) = v38;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for closure #2 in WorkoutConfigurationDataSource.invalidate(workoutConfiguration:);
  *(v28 + 24) = v23;
  swift_retain_n();
  v29 = v34;
  v30 = v39;
  v31 = v27;
  QueryClient.remoteProxy(handler:errorHandler:)(_s11WorkoutCore11QueryClientC18fetchConfiguration4uuid10completiony10Foundation4UUIDV_yAA0aF0CSg_s5Error_pSgtctFyypcfU_TA_0, v26, _s11WorkoutCore11QueryClientC18fetchConfiguration4uuid10completiony10Foundation4UUIDV_yAA0aF0CSg_s5Error_pSgtctFysAM_pcfU0_TA_0, v28);

  return (v19)(v9, v2);
}

uint64_t closure #2 in WorkoutConfigurationDataSource.invalidate(workoutConfiguration:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v24);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  aBlock[4] = partial apply for closure #1 in closure #2 in WorkoutConfigurationDataSource.invalidate(workoutConfiguration:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_59;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  v21 = a3;
  v22 = a5;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v16, v12, v19);
  _Block_release(v19);

  (*(v25 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v24);
}

void closure #1 in closure #2 in WorkoutConfigurationDataSource.invalidate(workoutConfiguration:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = a1;
    v14 = static Published.subscript.modify();
    v16 = v15;
    v17 = *v15;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v16 = v17;
    if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || v17 < 0 || (v17 & 0x4000000000000000) != 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
      *v16 = v17;
    }

    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 8 * a3 + 0x20);
      *((v17 & 0xFFFFFFFFFFFFFF8) + 8 * a3 + 0x20) = v13;

      v14(v24, 0);

      v20 = *(a2 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_occurrenceStore);
      WorkoutConfigurationOccurrenceStore.updateExistingOccurrence(for:postUpdate:)(v13, 1);

      return;
    }

    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = static Published.subscript.modify();

    v21(v24, 0);

    v22 = *(a2 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_occurrenceStore);
    v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v9 + 16))(v12, a4 + v23, v8);
    WorkoutConfigurationOccurrenceStore.removeOccurrence(uuid:)(v12);
    (*(v9 + 8))(v12, v8);
  }
}

void closure #1 in WorkoutConfigurationDataSource.forceSync()(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.app);
    v5 = a2;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      if (a2)
      {
        v9 = a2;
        v10 = _swift_stdlib_bridgeErrorToNSError();
        v11 = v10;
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      *(v7 + 4) = v10;
      *v8 = v11;
      _os_log_impl(&dword_20AEA4000, oslog, v6, "[WorkoutConfigurationDataSource] failed to nano sync due to %@", v7, 0xCu);
      outlined destroy of RaceRouteDataStoring?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v8, -1, -1);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }
  }
}

id WorkoutConfigurationDataSource.smartGoalStoreUpdatedOccurrenceData(notification:)(void *a1)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.app);
  v4 = a1;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    v11 = [v4 name];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v19);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    v16 = *&v5[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType];
    *(v8 + 14) = v16;
    *v9 = v16;
    v17 = v16;
    _os_log_impl(&dword_20AEA4000, v6, v7, "[WorkoutConfigurationDataSource] smart goal store updated occurrence data, notification: %s, reload configurations for activityType: %@", v8, 0x16u);
    outlined destroy of RaceRouteDataStoring?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_16(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  return WorkoutConfigurationDataSource.load()();
}

id WorkoutConfigurationDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutConfigurationDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutConfigurationDataSource@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

id protocol witness for static Canonical.canonical() in conformance WorkoutConfigurationDataSource@<X0>(void *a1@<X8>)
{
  result = specialized static WorkoutConfigurationDataSource.canonical()();
  *a1 = result;
  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t *a2)
{
  v49 = a2;
  v48 = type metadata accessor for Date();
  v4 = *(v48 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v48);
  v47 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = v38 - v8;
  v9 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v9);
    *a1 = v9;
  }

  v11 = *(v9 + 16);
  v40 = v9 + 32;
  v53[0] = v9 + 32;
  v53[1] = v11;
  v12 = _minimumMergeRunLength(_:)(v11);
  if (v12 >= v11)
  {
    if (v11 >= 2)
    {
      v38[1] = a1;
      v38[2] = v2;
      v44 = (v4 + 8);
      v45 = (v4 + 16);
      v15 = -1;
      v16 = 1;
      v17 = v40;
      v39 = v11;
      do
      {
        v42 = v16;
        v18 = *(v40 + 8 * v16);
        v43 = v15;
        v50 = v15;
        v41 = v17;
        do
        {
          v54 = *v17;
          v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          swift_beginAccess();
          v20 = *&v18[v19];
          v21 = v49;
          v22 = *v49;
          swift_beginAccess();
          v23 = v46;
          v24 = *v45;
          v25 = v48;
          (*v45)(v46, v20 + v22, v48);
          v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          v27 = v54;
          swift_beginAccess();
          v28 = *&v27[v26];
          v29 = *v21;
          swift_beginAccess();
          v30 = v47;
          v24(v47, v28 + v29, v25);
          v31 = v18;
          v32 = v54;
          v33 = static Date.> infix(_:_:)();
          v34 = *v44;
          (*v44)(v30, v25);
          v34(v23, v25);

          if ((v33 & 1) == 0)
          {
            break;
          }

          v35 = *v17;
          v18 = *(v17 + 8);
          *v17 = v18;
          *(v17 + 8) = v35;
          v17 -= 8;
        }

        while (!__CFADD__(v50++, 1));
        v16 = v42 + 1;
        v17 = v41 + 8;
        v15 = v43 - 1;
      }

      while (v42 + 1 != v39);
    }
  }

  else
  {
    v13 = v12;
    if (v11 >= 2)
    {
      type metadata accessor for WorkoutConfiguration();
      v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11 >> 1;
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    v52[0] = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
    v52[1] = v11 >> 1;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v52, v51, v53, v13, v49);
    *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v152 = a5;
  v138 = a1;
  v151 = type metadata accessor for Date();
  v8 = *(*(v151 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v151);
  v150 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v155 = &v136 - v12;
  v145 = a3;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_87:
    v5 = *v138;
    if (!*v138)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_119:
      v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
    }

    v157 = v15;
    v131 = *(v15 + 2);
    if (v131 >= 2)
    {
      while (*v145)
      {
        v132 = *&v15[16 * v131];
        v133 = *&v15[16 * v131 + 24];
        v134 = v146;
        specialized _merge<A>(low:mid:high:buffer:by:)((*v145 + 8 * v132), (*v145 + 8 * *&v15[16 * v131 + 16]), (*v145 + 8 * v133), v5, v152);
        v146 = v134;
        if (v134)
        {
          goto LABEL_97;
        }

        if (v133 < v132)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
        }

        if (v131 - 2 >= *(v15 + 2))
        {
          goto LABEL_113;
        }

        v135 = &v15[16 * v131];
        *v135 = v132;
        *(v135 + 1) = v133;
        v157 = v15;
        specialized Array.remove(at:)(v131 - 1);
        v15 = v157;
        v131 = *(v157 + 2);
        if (v131 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_123;
    }

LABEL_97:

    return;
  }

  v137 = a4;
  v14 = 0;
  v148 = (v11 + 8);
  v149 = (v11 + 16);
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v143 = v13;
      v144 = v15;
      v17 = *v145;
      v154 = *(*v145 + 8 * v14);
      v18 = v154;
      v140 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v21 = *v19;
      v20 = v19 + 2;
      v156 = v21;
      v139 = v16;
      v22 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
      swift_beginAccess();
      v23 = *&v18[v22];
      v24 = v152;
      v25 = *v152;
      swift_beginAccess();
      v26 = *v149;
      v27 = v155;
      v28 = v151;
      (*v149)(v155, v23 + v25, v151);
      v29 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
      v30 = v156;
      swift_beginAccess();
      v31 = *&v30[v29];
      v32 = *v24;
      swift_beginAccess();
      v33 = v31 + v32;
      v34 = v150;
      v142 = v26;
      v26(v150, v33, v28);
      v35 = v154;
      v36 = v156;
      LODWORD(v147) = static Date.> infix(_:_:)();
      v5 = *v148;
      (*v148)(v34, v28);
      v141 = v5;
      (v5)(v27, v28);

      v37 = (v139 + 2);
      while (1)
      {
        v14 = v143;
        v15 = v144;
        if (v143 == v37)
        {
          break;
        }

        v38 = v20;
        v39 = *(v20 - 1);
        v153 = *v20;
        v40 = v153;
        v156 = v39;
        v41 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        v154 = v37;
        swift_beginAccess();
        v42 = *&v40[v41];
        v43 = v152;
        v44 = *v152;
        swift_beginAccess();
        v5 = v155;
        v45 = v151;
        v46 = v142;
        v142(v155, v42 + v44, v151);
        v47 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        v48 = v156;
        swift_beginAccess();
        v49 = *&v48[v47];
        v50 = *v43;
        swift_beginAccess();
        v51 = v150;
        v46(v150, v49 + v50, v45);
        v52 = v153;
        v53 = v156;
        LODWORD(v49) = static Date.> infix(_:_:)() & 1;
        v54 = v141;
        v141(v51, v45);
        v54(v5, v45);

        v37 = v154 + 1;
        v20 = v38 + 1;
        if ((v147 & 1) != v49)
        {
          v14 = v154;
          v15 = v144;
          break;
        }
      }

      v16 = v139;
      v55 = v140;
      if (v147)
      {
        if (v14 < v139)
        {
          goto LABEL_116;
        }

        if (v139 < v14)
        {
          v56 = 8 * v14 - 8;
          v57 = v14;
          v58 = v139;
          do
          {
            if (v58 != --v57)
            {
              v60 = *v145;
              if (!*v145)
              {
                goto LABEL_122;
              }

              v59 = *(v60 + v55);
              *(v60 + v55) = *(v60 + v56);
              *(v60 + v56) = v59;
            }

            ++v58;
            v56 -= 8;
            v55 += 8;
          }

          while (v58 < v57);
        }
      }
    }

    v61 = v145[1];
    if (v14 < v61)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_115;
      }

      if (v14 - v16 < v137)
      {
        v62 = v16 + v137;
        if (__OFADD__(v16, v137))
        {
          goto LABEL_117;
        }

        if (v62 >= v61)
        {
          v62 = v145[1];
        }

        if (v62 < v16)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (v14 != v62)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v14 < v16)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v85 = *(v15 + 2);
    v84 = *(v15 + 3);
    v86 = v85 + 1;
    if (v85 >= v84 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v15);
    }

    *(v15 + 2) = v86;
    v87 = &v15[16 * v85];
    *(v87 + 4) = v16;
    *(v87 + 5) = v14;
    if (!*v138)
    {
      goto LABEL_124;
    }

    if (v85)
    {
      v88 = *v138;
      while (1)
      {
        v5 = v86 - 1;
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v89 = *(v15 + 4);
          v90 = *(v15 + 5);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_56:
          if (v92)
          {
            goto LABEL_103;
          }

          v105 = &v15[16 * v86];
          v107 = *v105;
          v106 = *(v105 + 1);
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_106;
          }

          v111 = &v15[16 * v5 + 32];
          v113 = *v111;
          v112 = *(v111 + 1);
          v99 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v99)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v109, v114))
          {
            goto LABEL_110;
          }

          if (v109 + v114 >= v91)
          {
            if (v91 < v114)
            {
              v5 = v86 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v115 = &v15[16 * v86];
        v117 = *v115;
        v116 = *(v115 + 1);
        v99 = __OFSUB__(v116, v117);
        v109 = v116 - v117;
        v110 = v99;
LABEL_70:
        if (v110)
        {
          goto LABEL_105;
        }

        v118 = &v15[16 * v5];
        v120 = *(v118 + 4);
        v119 = *(v118 + 5);
        v99 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v99)
        {
          goto LABEL_108;
        }

        if (v121 < v109)
        {
          goto LABEL_3;
        }

LABEL_77:
        v126 = v5 - 1;
        if (v5 - 1 >= v86)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (!*v145)
        {
          goto LABEL_121;
        }

        v127 = *&v15[16 * v126 + 32];
        v128 = *&v15[16 * v5 + 40];
        v129 = v146;
        specialized _merge<A>(low:mid:high:buffer:by:)((*v145 + 8 * v127), (*v145 + 8 * *&v15[16 * v5 + 32]), (*v145 + 8 * v128), v88, v152);
        v146 = v129;
        if (v129)
        {
          goto LABEL_97;
        }

        if (v128 < v127)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
        }

        if (v126 >= *(v15 + 2))
        {
          goto LABEL_100;
        }

        v130 = &v15[16 * v126];
        *(v130 + 4) = v127;
        *(v130 + 5) = v128;
        v157 = v15;
        specialized Array.remove(at:)(v5);
        v15 = v157;
        v86 = *(v157 + 2);
        if (v86 <= 1)
        {
          goto LABEL_3;
        }
      }

      v93 = &v15[16 * v86 + 32];
      v94 = *(v93 - 64);
      v95 = *(v93 - 56);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_101;
      }

      v98 = *(v93 - 48);
      v97 = *(v93 - 40);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_102;
      }

      v100 = &v15[16 * v86];
      v102 = *v100;
      v101 = *(v100 + 1);
      v99 = __OFSUB__(v101, v102);
      v103 = v101 - v102;
      if (v99)
      {
        goto LABEL_104;
      }

      v99 = __OFADD__(v91, v103);
      v104 = v91 + v103;
      if (v99)
      {
        goto LABEL_107;
      }

      if (v104 >= v96)
      {
        v122 = &v15[16 * v5 + 32];
        v124 = *v122;
        v123 = *(v122 + 1);
        v99 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v99)
        {
          goto LABEL_111;
        }

        if (v91 < v125)
        {
          v5 = v86 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = v145[1];
    if (v14 >= v13)
    {
      goto LABEL_87;
    }
  }

  v144 = v15;
  v147 = *v145;
  v63 = v147 + 8 * v14 - 8;
  v139 = v16;
  v140 = v62;
  v64 = (v16 - v14);
LABEL_28:
  v142 = v63;
  v143 = v14;
  v65 = *(v147 + 8 * v14);
  v141 = v64;
  v66 = v64;
  while (1)
  {
    v153 = v66;
    v156 = *v63;
    v67 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v68 = *&v65[v67];
    v69 = v152;
    v70 = *v152;
    swift_beginAccess();
    v71 = *v149;
    v72 = v151;
    (*v149)(v155, v68 + v70, v151);
    v73 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    v74 = v156;
    swift_beginAccess();
    v75 = *&v74[v73];
    v76 = *v69;
    swift_beginAccess();
    v77 = v150;
    v71(v150, v75 + v76, v72);
    v154 = v65;
    v78 = v156;
    v79 = v155;
    LOBYTE(v75) = static Date.> infix(_:_:)();
    v5 = v148;
    v80 = *v148;
    (*v148)(v77, v72);
    v80(v79, v72);

    if ((v75 & 1) == 0)
    {
LABEL_27:
      v14 = (v143 + 1);
      v63 = v142 + 8;
      v64 = v141 - 1;
      if (v143 + 1 != v140)
      {
        goto LABEL_28;
      }

      v14 = v140;
      v15 = v144;
      v16 = v139;
      goto LABEL_35;
    }

    v81 = v153;
    if (!v147)
    {
      break;
    }

    v82 = *v63;
    v65 = *(v63 + 8);
    *v63 = v65;
    *(v63 + 8) = v82;
    v63 -= 8;
    v83 = __CFADD__(v81, 1);
    v66 = v81 + 1;
    if (v83)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **a1, void **a2, void **a3, void **a4, uint64_t *a5)
{
  v70 = a5;
  v69 = type metadata accessor for Date();
  v9 = *(v69 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v69);
  v68 = &v61[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v67 = &v61[-v13];
  v14 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v14 = a2 - a1;
  }

  v15 = v14 >> 3;
  v16 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v16 = a3 - a2;
  }

  v17 = v16 >> 3;
  if (v15 >= v16 >> 3)
  {
    v71 = a1;
    if (a4 != a2 || &a2[v17] <= a4)
    {
      memmove(a4, a2, 8 * v17);
    }

    v75 = &a4[v17];
    if (a3 - a2 >= 8 && a2 > v71)
    {
      v63 = (v9 + 16);
      v62 = (v9 + 8);
      v74 = a4;
      do
      {
        v66 = a2;
        v38 = a2 - 1;
        v39 = a3 - 1;
        v40 = v75;
        v64 = a2 - 1;
        while (1)
        {
          v73 = v39;
          v65 = v39 + 1;
          v41 = *--v40;
          v72 = *v38;
          v42 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          swift_beginAccess();
          v43 = *&v41[v42];
          v44 = v70;
          v45 = *v70;
          swift_beginAccess();
          v46 = *v63;
          v47 = v67;
          v48 = v69;
          (*v63)(v67, v43 + v45, v69);
          v49 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          v50 = v72;
          swift_beginAccess();
          v51 = *(v50 + v49);
          v52 = *v44;
          swift_beginAccess();
          v53 = v68;
          v46(v68, v51 + v52, v48);
          v54 = v41;
          v55 = v72;
          LOBYTE(v51) = static Date.> infix(_:_:)();
          v56 = *v62;
          (*v62)(v53, v48);
          v56(v47, v48);

          if (v51)
          {
            break;
          }

          v57 = v73;
          if (v65 != v75)
          {
            *v73 = *v40;
          }

          v39 = v57 - 1;
          v75 = v40;
          v38 = v64;
          if (v40 <= v74)
          {
            v75 = v40;
            a4 = v74;
            a2 = v66;
            goto LABEL_38;
          }
        }

        v58 = v71;
        a3 = v73;
        v59 = v64;
        if (v65 != v66)
        {
          *v73 = *v64;
        }

        a4 = v74;
        if (v75 <= v74)
        {
          break;
        }

        a2 = v59;
      }

      while (v59 > v58);
      a2 = v59;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v15] <= a4)
    {
      memmove(a4, a1, 8 * v15);
    }

    v75 = &a4[v15];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v18 = a2;
      v72 = (v9 + 16);
      v65 = (v9 + 8);
      v73 = a3;
      while (1)
      {
        v66 = v18;
        v74 = a4;
        v71 = a1;
        v19 = *v18;
        v20 = *a4;
        v21 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v22 = *&v19[v21];
        v23 = v70;
        v24 = *v70;
        swift_beginAccess();
        v25 = *v72;
        v26 = v67;
        v27 = v69;
        (*v72)(v67, v22 + v24, v69);
        v28 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v29 = *&v20[v28];
        v30 = *v23;
        swift_beginAccess();
        v31 = v68;
        v25(v68, v29 + v30, v27);
        v32 = v19;
        v33 = v20;
        v34 = static Date.> infix(_:_:)();
        v35 = *v65;
        (*v65)(v31, v27);
        v35(v26, v27);

        if ((v34 & 1) == 0)
        {
          break;
        }

        v36 = v66;
        v18 = v66 + 1;
        v37 = v71;
        a4 = v74;
        if (v71 != v66)
        {
          goto LABEL_16;
        }

LABEL_17:
        a1 = v37 + 1;
        if (a4 >= v75 || v18 >= v73)
        {
          goto LABEL_19;
        }
      }

      v36 = v74;
      a4 = v74 + 1;
      v37 = v71;
      v18 = v66;
      if (v71 == v74)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v37 = *v36;
      goto LABEL_17;
    }

LABEL_19:
    a2 = a1;
  }

LABEL_38:
  if (a2 != a4 || a2 >= (a4 + ((v75 - a4 + (v75 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v75 - a4));
  }

  return 1;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(id *), uint64_t a2)
{
  v6 = *v2;
  specialized Collection.firstIndex(where:)(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == __CocoaSet.count.getter())
      {
        return v4;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v4;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x20F2E7A20](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v25 = v12;
    v14 = a1(&v25);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v4 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v4++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x20F2E7A20](v4, v6);
    v15 = MEMORY[0x20F2E7A20](v10, v6);
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v17 = *(v6 + 32 + 8 * v10);
    v24 = *(v6 + 32 + 8 * v4);
    v15 = v17;
  }

  v18 = v15;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v19 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v18;

  if ((v6 & 0x8000000000000000) == 0 && !v19)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v20 + 16))
    {
      goto LABEL_44;
    }

    v22 = v20 + 8 * v10;
    v23 = *(v22 + 32);
    *(v22 + 32) = v24;

    *v2 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
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
  return __CocoaSet.count.getter();
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, void *a3)
{
  v30 = a2;
  v31 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_Si5valuetMd, &_s10Foundation4UUIDV3key_Si5valuetMR);
  v4 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - v5;
  v39 = type metadata accessor for UUID();
  v6 = *(*(v39 - 8) + 64);
  result = MEMORY[0x28223BE20](v39);
  v37 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v8;
  v10 = 0;
  v42 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v32 = 0;
  v33 = (v14 + 63) >> 6;
  v36 = v8 + 16;
  v34 = v12;
  v35 = v8 + 8;
  while (v16)
  {
    v17 = __clz(__rbit64(v16));
    v43 = (v16 - 1) & v16;
LABEL_11:
    v20 = v17 | (v10 << 6);
    v21 = v42;
    v22 = v37;
    v23 = v38;
    v24 = *(v38 + 16);
    v25 = v39;
    v24(v37, v42[6] + *(v38 + 72) * v20, v39);
    v26 = v20;
    v27 = *(v21[7] + 8 * v20);
    v28 = v40;
    v24(v40, v22, v25);
    *(v28 + *(v41 + 48)) = v27;
    outlined destroy of RaceRouteDataStoring?(v28, &_s10Foundation4UUIDV3key_Si5valuetMd, &_s10Foundation4UUIDV3key_Si5valuetMR);
    result = (*(v23 + 8))(v22, v25);
    v16 = v43;
    if (v27 >= 2)
    {
      *(v31 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v31, v30, v32, v42);
      }
    }
  }

  v18 = v10;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v33)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v31, v30, v32, v42);
    }

    v19 = v34[v10];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v43 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDVSiG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB31VKXEfU_10Foundation4UUIDV_SiTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAJSiIsgnndzo_Tf1nc_n0109_s11WorkoutCore0A23ConfigurationDataSourceC4load33_A3D2BA4D279946755716B40EF86B87CELLyyFySaySo9HKWorkoutCG_s5v14_pSgtcfU1_Sb10R27UUIDV3key_Si5valuet_tXEfU0_Tf1nnc_n(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t outlined init with copy of RaceRouteDataStoring?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of RaceRouteDataStoring(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, unint64_t a2, void **a3)
{
  v28 = a2;
  v29 = a3;
  v31 = type metadata accessor for IndexSet.Index();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IndexSet();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation8IndexSetVGMd, &_ss16IndexingIteratorVy10Foundation8IndexSetVGMR);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  (*(v10 + 16))(v13, a1, v9);
  v19 = MEMORY[0x277CC9A28];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x277CC9A28]);
  dispatch thunk of Sequence.makeIterator()();
  v20 = *(v15 + 44);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, v19);
  v21 = (v5 + 8);
  do
  {
    dispatch thunk of Collection.endIndex.getter();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x277CC9A08]);
    v22 = v31;
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v21)(v8, v22);
    if (v23)
    {
      break;
    }

    v24 = dispatch thunk of Collection.subscript.read();
    v26 = *v25;
    v24(v30, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v30[0] = v26;
    closure #1 in WorkoutConfigurationDataSource.remove(at:by:)(v30, v28, v29);
  }

  while (!v3);
  return outlined destroy of RaceRouteDataStoring?(v18, &_ss16IndexingIteratorVy10Foundation8IndexSetVGMd, &_ss16IndexingIteratorVy10Foundation8IndexSetVGMR);
}

uint64_t objectdestroy_24Tm_0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #3 in WorkoutConfigurationDataSource.remove(uuid:)(int a1, void *a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #3 in WorkoutConfigurationDataSource.remove(uuid:)(a1, a2, v2 + v6, v7);
}

uint64_t objectdestroy_49Tm_0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in QueryClient.deleteConfiguration(uuid:completion:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  return a2(a1, v7, v8, v2 + v5, v6);
}

void specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v49 = a2;
  v46 = type metadata accessor for UUID();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v46);
  v48 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v37 - v7;
  v39 = a1;
  v8 = *a1;
  v38 = v8 >> 62;
  if (v8 >> 62)
  {
LABEL_67:
    v41 = v8 & 0xFFFFFFFFFFFFFF8;
    v42 = __CocoaSet.count.getter();
  }

  else
  {
    v41 = v8 & 0xFFFFFFFFFFFFFF8;
    v42 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v9 = 0;
  v40 = v8 & 0xC000000000000001;
  v43 = (v3 + 8);
  v44 = (v3 + 16);
  v50 = v8;
  while (v42 != v9)
  {
    if (v40)
    {
      v10 = MEMORY[0x20F2E7A20](v9, v8);
    }

    else
    {
      if (v9 >= *(v41 + 16))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v10 = *(v8 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v13 = *v44;
    v14 = v46;
    v15 = v47;
    (*v44)(v47, &v11[v12], v46);
    v8 = v48;
    v13(v48, (v49 + v45), v14);
    v16 = static UUID.== infix(_:_:)();
    v17 = *v43;
    (*v43)(v8, v14);
    v17(v15, v14);

    v3 = v9 + 1;
    v18 = __OFADD__(v9, 1);
    if (v16)
    {
      v41 = v13;
      if (v18)
      {
        __break(1u);
        return;
      }

      v20 = v50;
      v21 = v41;
      while (1)
      {
        if (v20 >> 62)
        {
          if (v3 == __CocoaSet.count.getter())
          {
            return;
          }
        }

        else if (v3 == *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return;
        }

        v50 = v20;
        v42 = v20 & 0xC000000000000001;
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x20F2E7A20](v3, v20);
        }

        else
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_59;
          }

          if (v3 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v23 = *(v20 + 8 * v3 + 32);
        }

        v8 = v23;
        v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
        swift_beginAccess();
        v26 = v46;
        v25 = v47;
        v21(v47, v8 + v24, v46);
        v27 = v48;
        v21(v48, v49 + v45, v26);
        LOBYTE(v24) = static UUID.== infix(_:_:)();
        v17(v27, v26);
        v17(v25, v26);

        if (v24)
        {
          v20 = v50;
          v21 = v41;
        }

        else if (v9 == v3)
        {
          v20 = v50;
          v21 = v41;
          v22 = __OFADD__(v9++, 1);
          if (v22)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v20 = v50;
          v21 = v41;
          if (v42)
          {
            v28 = MEMORY[0x20F2E7A20](v9, v50);
            v29 = MEMORY[0x20F2E7A20](v3, v20);
          }

          else
          {
            if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_64;
            }

            v30 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v9 >= v30)
            {
              goto LABEL_65;
            }

            if (v3 >= v30)
            {
              goto LABEL_66;
            }

            v31 = *(v50 + 32 + 8 * v3);
            v28 = *(v50 + 32 + 8 * v9);
            v29 = v31;
          }

          v32 = v29;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
          {
            v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
            v33 = (v20 >> 62) & 1;
          }

          else
          {
            LODWORD(v33) = 0;
          }

          v8 = v20 & 0xFFFFFFFFFFFFFF8;
          v34 = *((v20 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20);
          *((v20 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v32;

          if ((v20 & 0x8000000000000000) != 0 || v33)
          {
            v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
            v8 = v20 & 0xFFFFFFFFFFFFFF8;
            if ((v3 & 0x8000000000000000) != 0)
            {
LABEL_54:
              __break(1u);
LABEL_55:
              __CocoaSet.count.getter();
              return;
            }
          }

          else if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_54;
          }

          if (v3 >= *(v8 + 16))
          {
            goto LABEL_63;
          }

          v35 = v8 + 8 * v3;
          v36 = *(v35 + 32);
          *(v35 + 32) = v28;

          *v39 = v20;
          v22 = __OFADD__(v9++, 1);
          if (v22)
          {
            goto LABEL_62;
          }
        }

        v22 = __OFADD__(v3++, 1);
        if (v22)
        {
          goto LABEL_61;
        }
      }
    }

    ++v9;
    v8 = v50;
    if (v18)
    {
      goto LABEL_58;
    }
  }

  if (v38)
  {
    goto LABEL_55;
  }

  v19 = *(v41 + 16);
}

id specialized static WorkoutConfigurationDataSource.canonical()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMR);
  v46 = *(v0 - 8);
  v47 = v0;
  v1 = *(v46 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v41 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - v7;
  v9 = one-time initialization token for shared;
  v10 = *MEMORY[0x277D766F0];
  if (v9 != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v11 = static WorkoutCoreInjector.healthStore;
  Client = type metadata accessor for QueryClient();
  v12 = objc_allocWithZone(Client);
  v42 = v11;
  v13 = QueryClient.init(_:)(v42);
  type metadata accessor for UnlockedSinceBootMonitor();
  v14 = swift_allocObject();
  *(v14 + 16) = -1;
  *(v14 + 32) = 0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for backgroundAssertionManager != -1)
  {
    swift_once();
  }

  v48 = _s11WorkoutCore0A28ConfigurationOccurrenceStoreC11queryClient24unlockedSinceBootMonitor26backgroundAssertionManager48applicationSignificantTimeChangeNotificationName21activityMoveModeBlockAcA05QueryG8Protocol_p_AA08UnlockedijkZ0_pAA010BackgroundmnZ0_pSo014NSNotificationT0aSo010HKActivityvW0VyctcfCTfq4eeennn_nAA0yG0C_AA010BackgroundmN0CAA08UnlockedijK0CTt4g5(v13, v14, static WorkoutCoreInjector.backgroundAssertionManager, v10, closure #1 in WorkoutConfigurationOccurrenceStore.init(applicationSignificantTimeChangeNotificationName:), 0);
  if (one-time initialization token for outdoorRun != -1)
  {
    swift_once();
  }

  v15 = static FIUIWorkoutActivityType.outdoorRun;
  v45 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v16 = type metadata accessor for WorkoutConfigurationDataSource();
  memset(v55, 0, sizeof(v55));
  v56 = 0;
  v44 = v16;
  v17 = objc_allocWithZone(v16);
  v18 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__workoutConfigurations;
  v19 = MEMORY[0x277D84F90];
  *&v52 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
  Published.init(initialValue:)();
  v20 = *(v5 + 32);
  v20(&v17[v18], v8, v4);
  v21 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__recentlyAddedWorkoutConfiguration;
  *&v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A13ConfigurationCSgMd, &_s11WorkoutCore0A13ConfigurationCSgMR);
  Published.init(initialValue:)();
  (*(v46 + 32))(&v17[v21], v3, v47);
  v22 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__frequentWorkouts;
  *&v52 = v19;
  Published.init(initialValue:)();
  v20(&v17[v22], v8, v4);
  v23 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_queryClient;
  v24 = objc_allocWithZone(Client);
  *&v17[v23] = QueryClient.init(_:)(v42);
  *&v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_lastWorkout] = 0;
  *&v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation] = 0;
  v25 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_nanoSyncControl;
  if (one-time initialization token for nanoSyncControl != -1)
  {
    swift_once();
  }

  v26 = static WorkoutCoreInjector.nanoSyncControl;
  *&v17[v25] = static WorkoutCoreInjector.nanoSyncControl;
  v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_loaded] = 0;
  *&v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType] = v15;
  *&v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityMoveMode] = 1;
  v27 = v48;
  *&v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_occurrenceStore] = v48;
  outlined init with copy of RaceRouteDataStoring?(v55, &v50);
  v28 = v15;
  if (v51)
  {
    outlined init with take of RaceRouteDataStoring(&v50, &v52);
    v29 = v26;
    v30 = v15;
    v31 = v27;
    v32 = v45;
  }

  else
  {
    v33 = type metadata accessor for RaceRouteDataStore();
    v34 = swift_allocObject();
    v32 = v45;
    *(v34 + 24) = v45;
    v35 = objc_allocWithZone(MEMORY[0x277CCD868]);
    v36 = v26;
    v37 = v28;
    v38 = v27;
    *(v34 + 16) = [v35 initWithHealthStore_];
    v53 = v33;
    v54 = &protocol witness table for RaceRouteDataStore;
    *&v52 = v34;
    if (v51)
    {
      outlined destroy of RaceRouteDataStoring?(&v50, &_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
    }
  }

  outlined init with take of RaceRouteDataStoring(&v52, &v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_raceRouteDataStore]);
  v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence] = 1;
  *&v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_healthStore] = v32;
  v49.receiver = v17;
  v49.super_class = v44;
  v39 = objc_msgSendSuper2(&v49, sel_init);

  outlined destroy of RaceRouteDataStoring?(v55, &_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
  return v39;
}

uint64_t type metadata accessor for WorkoutConfigurationDataSource()
{
  result = type metadata singleton initialization cache for WorkoutConfigurationDataSource;
  if (!type metadata singleton initialization cache for WorkoutConfigurationDataSource)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutConfigurationDataSource()
{
  type metadata accessor for Published<[WorkoutConfiguration]>(319, &lazy cache variable for type metadata for Published<[WorkoutConfiguration]>, &_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    type metadata accessor for Published<[WorkoutConfiguration]>(319, &lazy cache variable for type metadata for Published<WorkoutConfiguration?>, &_s11WorkoutCore0A13ConfigurationCSgMd, &_s11WorkoutCore0A13ConfigurationCSgMR);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<[WorkoutConfiguration]>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void partial apply for closure #1 in closure #3 in WorkoutConfigurationDataSource.remove(uuid:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  closure #1 in closure #3 in WorkoutConfigurationDataSource.remove(uuid:)(v2, v3);
}

uint64_t outlined destroy of RaceRouteDataStoring?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_117Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

void outlined consume of Result<[RaceWorkoutConfiguration], Error>(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id AudioSessionUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioSessionUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioSessionUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AudioSessionUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioSessionUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized static AudioSessionUtilities.configureAudioSession()()
{
  v44[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CB8030];
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 category];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    v10 = 0;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v10 = v9 ^ 1;
  }

  v11 = *MEMORY[0x277CB80A8];
  v12 = [v1 sharedInstance];
  v13 = [v12 mode];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v43 = v11;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {

    v18 = 0;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v18 = v19 ^ 1;
  }

  v20 = [v1 sharedInstance];
  v21 = [v20 routeSharingPolicy];

  v22 = [v1 sharedInstance];
  v23 = [v22 categoryOptions];

  if (((v10 | v18) & 1) == 0 && v21 == 1 && !v23)
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static WOLog.audio);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 67109888;
      *(v39 + 4) = 0;
      *(v39 + 8) = 1024;
      *(v39 + 10) = 0;
      *(v39 + 14) = 1024;
      *(v39 + 16) = 0;
      *(v39 + 20) = 1024;
      *(v39 + 22) = 0;
      _os_log_impl(&dword_20AEA4000, v37, v38, "Not configuring audio session. categoryNeedsUpdate=%{BOOL}d modeNeedsUpdate=%{BOOL}d policyNeedsUpdate=%{BOOL}d optionsNeedsUpdate=%{BOOL}d", v39, 0x1Au);
      MEMORY[0x20F2E9420](v39, -1, -1);
    }

    goto LABEL_25;
  }

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static WOLog.audio);
  v25 = v0;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v44[0] = v29;
    *v28 = 136315650;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v44);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2048;
    *(v28 + 14) = 1;
    *(v28 + 22) = 1024;
    *(v28 + 24) = 0;
    _os_log_impl(&dword_20AEA4000, v26, v27, "Configuring audio session. category=%s route_sharing_policy=%lu speaker_route_enabled=%{BOOL}d", v28, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x20F2E9420](v29, -1, -1);
    MEMORY[0x20F2E9420](v28, -1, -1);
  }

  v33 = [v1 sharedInstance];
  v44[0] = 0;
  v34 = [v33 setCategory:v25 mode:v43 routeSharingPolicy:1 options:0 error:v44];

  if (v34)
  {
    v35 = v44[0];
LABEL_25:
    v40 = *MEMORY[0x277D85DE8];
    return;
  }

  v41 = v44[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v42 = *MEMORY[0x277D85DE8];
}

uint64_t MetricsPublisher.workout(_:didMoveToState:)(void *a1, unint64_t a2)
{
  v3 = v2;
  v149 = type metadata accessor for Date();
  v137 = *(v149 - 8);
  v6 = *(v137 + 64);
  v7 = MEMORY[0x28223BE20](v149);
  v136 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v135 = &v122 - v10;
  MEMORY[0x28223BE20](v9);
  v143 = &v122 - v11;
  v148 = type metadata accessor for DateInterval();
  v138 = *(v148 - 8);
  v12 = *(v138 + 64);
  v13 = MEMORY[0x28223BE20](v148);
  v142 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v122 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v122 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v122 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v147 = &v122 - v29;
  MEMORY[0x28223BE20](v28);
  v34 = &v122 - v33;
  if (a2 < 3)
  {
    goto LABEL_40;
  }

  v128 = v3;
  v123 = v27;
  v124 = v30;
  v125 = v31;
  v129 = a2 - 3;
  if (a2 - 4 >= 3)
  {
    if (a2 == 3)
    {
      v63 = *&v3[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher];
      v64 = a1;
      v65 = [a1 sessionActivity];
      v66 = [v65 builder];

      if (v66 && (v67 = [v66 nl_lastUnbalancedPauseEvent], v66, v67))
      {
        v68 = [v67 dateInterval];

        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
        DateInterval.start.getter();
        (*(v138 + 8))(v16, v148);
        v69 = *(v137 + 56);
        v70 = v34;
        v71 = 0;
      }

      else
      {
        v69 = *(v137 + 56);
        v70 = v34;
        v71 = 1;
      }

      v146 = v69;
      v69(v70, v71, 1, v149);
      swift_getKeyPath();
      swift_getKeyPath();
      outlined init with copy of Date?(v34, v147);

      static Published.subscript.setter();
      outlined destroy of Date?(v34);
      v72 = *&v3[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_elapsedTimeMetricsPublisher];
      v73 = v64;
      v74 = [v64 sessionActivity];
      [v74 duration];
      v76 = v75;

      swift_getKeyPath();
      swift_getKeyPath();
      v150 = v76;

      static Published.subscript.setter();
      v77 = v129;
      goto LABEL_35;
    }

    goto LABEL_56;
  }

  v140 = v32;
  v127 = a2;
  v35 = *&v3[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher];
  v36 = v27;
  v37 = v137 + 56;
  v38 = *(v137 + 56);
  v130 = a1;
  v39 = v147;
  v40 = v149;
  v38(v147, 1, 1, v149);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v39, v36);

  v126 = v35;
  static Published.subscript.setter();
  v41 = v130;
  outlined destroy of Date?(v39);
  v141 = v24;
  v145 = v37;
  v146 = v38;
  v38(v24, 1, 1, v40);
  v42 = [v41 sessionActivity];
  v43 = [v42 builder];

  if (v43)
  {
    v44 = [v43 workoutEvents];

    type metadata accessor for HKWorkoutEvent();
    v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  v46 = v141;
  if (v45 >> 62)
  {
    v47 = __CocoaSet.count.getter();
    if (v47)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47)
    {
LABEL_8:
      if (v47 < 1)
      {
        __break(1u);
        goto LABEL_56;
      }

      v48 = 0;
      v139 = (v137 + 48);
      v134 = (v137 + 32);
      v133 = (v137 + 16);
      v49 = (v138 + 8);
      v132 = (v137 + 8);
      v131 = v138 + 32;
      v144 = MEMORY[0x277D84F90];
      do
      {
        if ((v45 & 0xC000000000000001) != 0)
        {
          v52 = MEMORY[0x20F2E7A20](v48, v45);
        }

        else
        {
          v52 = *(v45 + 8 * v48 + 32);
        }

        v53 = v52;
        if ([v52 type] == 1)
        {
          v50 = [v53 dateInterval];
          static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

          v51 = v147;
          DateInterval.start.getter();

          (*v49)(v16, v148);
          outlined destroy of Date?(v46);
          v146(v51, 0, 1, v149);
          outlined init with take of Date?(v51, v46);
        }

        else if ([v53 type] == 2)
        {
          v54 = v46;
          v55 = v140;
          outlined init with copy of Date?(v54, v140);
          if ((*v139)(v55, 1, v149) == 1)
          {

            outlined destroy of Date?(v55);
          }

          else
          {
            v56 = v143;
            v57 = v55;
            v58 = v149;
            (*v134)(v143, v57, v149);
            (*v133)(v135, v56, v58);
            v59 = [v53 dateInterval];
            static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

            DateInterval.start.getter();
            (*v49)(v16, v148);
            DateInterval.init(start:end:)();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v144 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v144[2] + 1, 1, v144);
            }

            v61 = v144[2];
            v60 = v144[3];
            if (v61 >= v60 >> 1)
            {
              v144 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v60 > 1, v61 + 1, 1, v144);
            }

            (*v132)(v143, v149);
            v62 = v144;
            v144[2] = v61 + 1;
            (*(v138 + 32))(v62 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v61, v142, v148);
          }

          v46 = v141;
        }

        else
        {
        }

        ++v48;
      }

      while (v47 != v48);
      goto LABEL_34;
    }
  }

  v144 = MEMORY[0x277D84F90];
LABEL_34:

  swift_getKeyPath();
  swift_getKeyPath();
  v150 = v144;

  static Published.subscript.setter();
  v3 = v128;
  v78 = *&v128[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_elapsedTimeMetricsPublisher];
  v73 = v130;
  v79 = [v130 sessionActivity];
  [v79 duration];
  v81 = v80;

  swift_getKeyPath();
  swift_getKeyPath();
  v150 = v81;

  static Published.subscript.setter();
  outlined destroy of Date?(v46);
  v77 = v129;
  a2 = v127;
  if (v129 < 4)
  {
LABEL_35:
    v82 = *&v3[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v150) = 1;

    static Published.subscript.setter();
    if (v77 <= 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v83 = v125;
      static Published.subscript.getter();

      v84 = (*(v137 + 48))(v83, 1, v149);
      outlined destroy of Date?(v83);
      if (v84 == 1)
      {
        v85 = v73;
        v86 = [v73 startDate];
        if (v86)
        {
          v87 = v124;
          v88 = v86;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v89 = 0;
        }

        else
        {
          v89 = 1;
          v87 = v124;
        }

        v146(v87, v89, 1, v149);
        swift_getKeyPath();
        swift_getKeyPath();
        outlined init with copy of Date?(v87, v147);

        static Published.subscript.setter();
        outlined destroy of Date?(v87);
        v92 = [v85 sessionActivity];
        v93 = [v92 activityType];

        swift_getKeyPath();
        swift_getKeyPath();
        v150 = v93;

        v94 = v93;
        static Published.subscript.setter();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v95 = v150;
        [v150 identifier];

        v96 = [v85 sessionActivity];
        v97 = [v96 configuration];

        v98 = LiveWorkoutConfiguration.currentActivityType.getter();
        LODWORD(v97) = [v98 supportsDistanceSplits];

        if (v97)
        {
          v99 = [v85 sessionActivity];
          v100 = [v99 dataProvider];

          v101 = [v100 splitProvider];
          swift_unknownObjectRelease();
          if (v101)
          {
            v102 = [v101 splitStartDate];
            v103 = v147;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v146(v103, 0, 1, v149);
            swift_getKeyPath();
            swift_getKeyPath();
            outlined init with copy of Date?(v103, v123);
            v104 = v128;
            static Published.subscript.setter();
            outlined destroy of Date?(v103);
            v105 = [v101 splitIndex];
            swift_getKeyPath();
            swift_getKeyPath();
            v150 = v105;
            v106 = v104;
            static Published.subscript.setter();
            swift_unknownObjectRelease();
          }
        }

        v107 = [v85 sessionActivity];
        v108 = [v107 dataProvider];

        [v108 elapsedTimeProvider];
        swift_unknownObjectRelease();
        type metadata accessor for SeymourElapsedTimeAccumulator();
        v109 = swift_dynamicCastClass();
        if (v109)
        {
          v110 = v109;
          v111 = lazy protocol witness table accessor for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator(&lazy protocol witness table cache variable for type SeymourElapsedTimeAccumulator and conformance SeymourElapsedTimeAccumulator, type metadata accessor for SeymourElapsedTimeAccumulator);
          v112 = v128;
          v113 = &v128[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_videoTimeProvider];
          swift_beginAccess();
          v114 = *v113;
          *v113 = v110;
          *(v113 + 1) = v111;
        }

        else
        {
          v112 = v128;
        }

        swift_unknownObjectRelease();
        v115 = [v85 sessionActivity];
        v116 = [v115 dataProvider];

        [v116 elapsedTimeProvider];
        swift_unknownObjectRelease();
        type metadata accessor for MachineElapsedTimeAccumulator();
        v117 = swift_dynamicCastClass();
        if (v117)
        {
          v118 = v117;
          v119 = lazy protocol witness table accessor for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator(&lazy protocol witness table cache variable for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator, type metadata accessor for MachineElapsedTimeAccumulator);
          v120 = &v112[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_gymKitTimeProvider];
          swift_beginAccess();
          v121 = *v120;
          *v120 = v118;
          *(v120 + 1) = v119;
        }

        swift_unknownObjectRelease();
      }

      if (a2 == 4)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v151 = 1;
        goto LABEL_42;
      }
    }

LABEL_41:
    swift_getKeyPath();
    swift_getKeyPath();
    v151 = 0;
LABEL_42:

    return static Published.subscript.setter();
  }

  if (v127 <= 2)
  {
LABEL_40:
    v90 = *&v3[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v150) = 0;

    static Published.subscript.setter();
    goto LABEL_41;
  }

LABEL_56:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall MetricsPublisher.workout(_:pausedReasonsDidUpdate:)(NLWorkout *_, __C::NLWorkoutPausedReason pausedReasonsDidUpdate)
{
  v3 = *(v2 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

unint64_t type metadata accessor for HKWorkoutEvent()
{
  result = lazy cache variable for type metadata for HKWorkoutEvent;
  if (!lazy cache variable for type metadata for HKWorkoutEvent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKWorkoutEvent);
  }

  return result;
}

uint64_t CustomTimeSplitsTracker.alertDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CustomTimeSplitsTracker.alertDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_alertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return CustomTimeSplitsTracker.alertDelegate.modify;
}

void CustomTimeSplitsTracker.alertDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id CustomTimeSplitsTracker.__allocating_init(timeSpan:formattingManager:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_splitCount] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_timeSpan] = a2;
  *&v5[OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_formattingManager] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id CustomTimeSplitsTracker.init(timeSpan:formattingManager:)(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_splitCount] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_timeSpan] = a2;
  *&v2[OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_formattingManager] = a1;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CustomTimeSplitsTracker();
  return objc_msgSendSuper2(&v6, sel_init);
}

id CustomTimeSplitsTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CustomTimeSplitsTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomTimeSplitsTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized CustomTimeSplitsTracker.handleElapsedTimeUpdate(elapsedTime:distance:)(double a1)
{
  v2 = *(v1 + OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_timeSpan);
  if (v2 == 0.0)
  {
    return;
  }

  v3 = floor(a1 / v2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v4 = *(v1 + OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_splitCount);
  *(v1 + OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_splitCount) = v3;
  if (v4 < v3)
  {
    v5 = v2 * v3;
    v6 = *(v1 + OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_formattingManager);
    v7 = objc_allocWithZone(type metadata accessor for WorkoutAlertTimeSplit());
    v8 = WorkoutAlertTimeSplit.init(workoutAlertType:elapsedTime:formattingManager:)(5, v6, v5);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong alertSource:v1 didTriggerAlert:v8];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

const char *WorkoutSignpost.name.getter(uint64_t a1)
{
  result = "WorkoutSignpostUserRequestedStartWorkoutSession";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "WorkoutSignpostDidStartCountdown";
      break;
    case 2:
      result = "WorkoutSignpostDidPresentSessionView";
      break;
    case 3:
      result = "WorkoutSignpostBuilderRequestedCollectingHKSamples";
      break;
    case 4:
      result = "WorkoutSignpostBuilderDidBeginCollectingHKSamples";
      break;
    case 5:
      result = "WorkoutSignpostDidChangeToWorkoutSessionStateRunning";
      break;
    case 6:
      result = "WorkoutSignpostDidCollectFirstHKSample";
      break;
    case 7:
      result = "WorkoutSignpostDidCollectFirstHKHeartRateSample";
      break;
    case 8:
      result = "WorkoutSignpostUserRequestedEndingWorkoutSession";
      break;
    case 9:
      result = "WorkoutSignpostDidEndWorkoutSession";
      break;
    case 10:
      result = "WorkoutSignpostMediaPlayIntentCalled";
      break;
    case 11:
      result = "WorkoutSignpostMediaConfirmIntentCalled";
      break;
    case 12:
      result = "WorkoutSignpostMediaConfirmIntentCompleted";
      break;
    case 13:
      result = "WorkoutSignpostMediaHandleIntentCalled";
      break;
    case 14:
      result = "WorkoutSignpostMediaHandleIntentCompleted";
      break;
    case 15:
      result = "WorkoutSignpostUserRequestedMirroredStartWorkoutSession";
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t WorkoutSignpost.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
    case 1:

      goto LABEL_4;
    case 2:
    case 10:

      goto LABEL_4;
    case 3:

      goto LABEL_4;
    case 4:

      goto LABEL_4;
    case 5:

      goto LABEL_4;
    case 6:
    case 13:

      goto LABEL_4;
    case 7:

      goto LABEL_4;
    case 8:

      goto LABEL_4;
    case 9:

      goto LABEL_4;
    case 11:

      goto LABEL_4;
    case 12:

      goto LABEL_4;
    case 14:

      goto LABEL_4;
    case 15:

LABEL_4:
      result = StaticString.description.getter();
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutSignpost()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutSignpost()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutSignpost@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized WorkoutSignpost.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t WorkoutIntervalSignpost.name.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return result;
}

double WorkoutIntervalSignpost.elapsedTime.getter()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = v1 - v2;
  v4 = v2 < v1;
  result = 0.0;
  if (v4)
  {
    return v3;
  }

  return result;
}

uint64_t WorkoutIntervalSignpost.__allocating_init(_:beginSignpost:endSignpost:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 48) = a5;
  *(result + 56) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  return result;
}

uint64_t WorkoutIntervalSignpost.init(_:beginSignpost:endSignpost:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

uint64_t WorkoutIntervalSignpost.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v7 = StaticString.description.getter();
  MEMORY[0x20F2E6D80](10272, 0xE200000000000000);
  WorkoutSignpost.name.getter(*(v0 + 40));
  v4 = StaticString.description.getter();
  MEMORY[0x20F2E6D80](v4);

  MEMORY[0x20F2E6D80](2108704, 0xE300000000000000);
  WorkoutSignpost.name.getter(*(v0 + 48));
  v5 = StaticString.description.getter();
  MEMORY[0x20F2E6D80](v5);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return v7;
}

uint64_t WorkoutIntervalSignpost.deinit()
{
  v1 = *(v0 + 72);

  return v0;
}

uint64_t WorkoutIntervalSignpost.__deallocating_deinit()
{
  v1 = *(v0 + 72);

  return swift_deallocClassInstance();
}

id static WorkoutSignposter.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkoutSignposter.shared;

  return v1;
}

id WorkoutSignposter.init(intervalSignposts:)(unint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for perf != -1)
  {
LABEL_53:
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, static WOLog.perf);
  v9 = *(v4 + 16);
  v4 += 16;
  v9(v7, v8, v3);
  OSSignposter.init(logger:)();
  *(v1 + OBJC_IVAR___WOCoreWorkoutSignposter_lock) = 0;
  v59 = MEMORY[0x277D84F98];
  v60 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_4:
      v10 = 0;
      v55 = v1;
      v56 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x20F2E7A20](v10, a1);
          v4 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v10 >= *(v56 + 16))
          {
            goto LABEL_50;
          }

          v3 = *(a1 + 8 * v10 + 32);

          v4 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }
        }

        v1 = v60;
        if (!v60[2])
        {
          break;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(*(v3 + 40));
        if ((v11 & 1) == 0)
        {
          break;
        }

LABEL_26:
        v28 = specialized Dictionary.subscript.modify(v58, *(v3 + 40));
        if (*v27)
        {
          v29 = v27;

          MEMORY[0x20F2E6F30](v30);
          if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v43 = *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        (v28)(v58, 0);
        v1 = v59;
        if (v59[2])
        {
          specialized __RawDictionaryStorage.find<A>(_:)(*(v3 + 48));
          if (v31)
          {
            goto LABEL_43;
          }
        }

        v32 = *(v3 + 48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58[0] = v1;
        v34 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
        v36 = v1[2];
        v37 = (v35 & 1) == 0;
        v18 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v18)
        {
          goto LABEL_49;
        }

        v39 = v35;
        if (v1[3] < v38)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, isUniquelyReferenced_nonNull_native);
          v34 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
          if ((v39 & 1) != (v40 & 1))
          {
LABEL_57:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

LABEL_37:
          v1 = v58[0];
          if ((v39 & 1) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_37;
        }

        v44 = v34;
        specialized _NativeDictionary.copy()();
        v34 = v44;
        v1 = v58[0];
        if ((v39 & 1) == 0)
        {
LABEL_40:
          v1[(v34 >> 6) + 8] |= 1 << v34;
          *(v1[6] + 8 * v34) = v32;
          *(v1[7] + 8 * v34) = MEMORY[0x277D84F90];
          v45 = v1[2];
          v18 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v18)
          {
            goto LABEL_52;
          }

          v1[2] = v46;
          goto LABEL_42;
        }

LABEL_38:
        v41 = v1[7];
        v42 = *(v41 + 8 * v34);
        *(v41 + 8 * v34) = MEMORY[0x277D84F90];

LABEL_42:
        v59 = v1;
LABEL_43:
        v1 = &v59;
        v48 = specialized Dictionary.subscript.modify(v58, *(v3 + 48));
        if (*v47)
        {
          v1 = v47;

          MEMORY[0x20F2E6F30](v49);
          if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v50 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        (v48)(v58, 0);

        ++v10;
        if (v4 == v7)
        {

          v51 = v59;
          v52 = v60;
          v1 = v55;
          goto LABEL_56;
        }
      }

      v12 = *(v3 + 40);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v58[0] = v1;
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      v16 = v1[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_48;
      }

      v20 = v15;
      if (v1[3] >= v19)
      {
        if ((v13 & 1) == 0)
        {
          v24 = v14;
          specialized _NativeDictionary.copy()();
          v14 = v24;
          v1 = v58[0];
          if (v20)
          {
            goto LABEL_21;
          }

          goto LABEL_23;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, v13);
        v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        if ((v20 & 1) != (v21 & 1))
        {
          goto LABEL_57;
        }
      }

      v1 = v58[0];
      if (v20)
      {
LABEL_21:
        v22 = v1[7];
        v23 = *(v22 + 8 * v14);
        *(v22 + 8 * v14) = MEMORY[0x277D84F90];

LABEL_25:
        v60 = v1;
        goto LABEL_26;
      }

LABEL_23:
      v1[(v14 >> 6) + 8] |= 1 << v14;
      *(v1[6] + 8 * v14) = v12;
      *(v1[7] + 8 * v14) = MEMORY[0x277D84F90];
      v25 = v1[2];
      v18 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v18)
      {
        goto LABEL_51;
      }

      v1[2] = v26;
      goto LABEL_25;
    }
  }

  v51 = MEMORY[0x277D84F98];
  v52 = MEMORY[0x277D84F98];
LABEL_56:
  *(v1 + OBJC_IVAR___WOCoreWorkoutSignposter_beginSignposts) = v52;
  *(v1 + OBJC_IVAR___WOCoreWorkoutSignposter_endSignposts) = v51;
  v53 = type metadata accessor for WorkoutSignposter();
  v57.receiver = v1;
  v57.super_class = v53;
  return objc_msgSendSuper2(&v57, sel_init);
}