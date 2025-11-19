uint64_t closure #1 in MediaPlaybackController.updateActivityType(to:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(v4 + 248) = a1;
  *(v4 + 256) = v1;

  v7 = *(v3 + 160);
  if (v1)
  {
    v8 = closure #1 in MediaPlaybackController.updateActivityType(to:);
  }

  else
  {
    v8 = closure #1 in MediaPlaybackController.updateActivityType(to:);
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

void $defer #1 () in closure #1 in MediaPlaybackController.updateActivityType(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 128);
  *(a1 + 128) = 0;

  Date.init()();
  Date.timeIntervalSince(_:)();
  v18 = v17;
  (*(v12 + 8))(v15, v11);
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static WOLog.mediaPlayback);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v34 = v23;
    *v22 = 136315394;
    v24 = MEMORY[0x20F2E6D00](a3, a4, a5, a6);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v34);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D839F8];
    *(v27 + 16) = xmmword_20B423A90;
    v29 = MEMORY[0x277D83A80];
    *(v27 + 56) = v28;
    *(v27 + 64) = v29;
    *(v27 + 32) = v18;
    v30 = String.init(format:_:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v34);

    *(v22 + 14) = v32;
    _os_log_impl(&dword_20AEA4000, v20, v21, "[%s] Media configuration fetch task completed after %ss", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v23, -1, -1);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }
}

uint64_t MediaPlaybackController.resetPlaybackController()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](MediaPlaybackController.resetPlaybackController(), v0, 0);
}

{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.mediaPlayback);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "resetPlaybackController", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  MediaPlaybackController.updateActivityType(to:)(0);
  *(v5 + 144) = 0;
  *(v5 + 146) = 0;
  *(v5 + 152) = 0;
  v6 = *(v5 + 179);
  *(v5 + 179) = 0;
  if (v6 == 1)
  {
    v7 = *(v0 + 16);
    MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(0);
  }

  v8 = *(v0 + 16);
  *(v8 + 160) = 0;
  v9 = *(v8 + 168);
  *(v8 + 168) = 0;

  *(v8 + 176) = 0;
  *(v8 + 178) = 2;
  v10 = *(v8 + 184);
  *(v8 + 184) = 0;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t @objc closure #1 in MediaPlaybackController.resetPlaybackController()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in MediaPlaybackController.resetPlaybackController();

  return MediaPlaybackController.resetPlaybackController()();
}

uint64_t @objc closure #1 in MediaPlaybackController.resetPlaybackController()()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = swift_task_alloc();
  v3[9] = v4;
  *v4 = v3;
  v4[1] = MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);

  return specialized static SmartRoutingStatus.fetch()();
}

uint64_t MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(__int16 a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *v2;
  *(*v2 + 136) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v3 + 80) = v8;
    *v8 = v5;
    v8[1] = MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);
    v9 = *(v3 + 64);

    return MediaPlaybackController.isMediaPlayerAudioPlayingNearby()();
  }
}

uint64_t MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *v2;
  *(v3 + 138) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    v8 = *(v3 + 64);

    return MEMORY[0x2822009F8](MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:), v8, 0);
  }
}

{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(v4 + 128) = v1;

  v7 = *(v4 + 64);
  if (v1)
  {
    v8 = MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);
  }

  else
  {
    *(v4 + 139) = a1 & 1;
    v8 = MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 138);
  if (v1 != 2)
  {
    v2 |= v1;
  }

  if (v2)
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.mediaPlayback);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_22;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Don't start media -- audio already playing.";
LABEL_21:
    _os_log_impl(&dword_20AEA4000, v4, v5, v7, v6, 2u);
    MEMORY[0x20F2E9420](v6, -1, -1);
LABEL_22:

    v18 = *(v0 + 8);
    goto LABEL_23;
  }

  v8 = *(v0 + 64);
  v9 = *(v8 + 128);
  *(v0 + 96) = v9;
  if (v9)
  {
    v10 = *(MEMORY[0x277D857E0] + 4);

    v11 = swift_task_alloc();
    *(v0 + 104) = v11;
    *v11 = v0;
    v11[1] = MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);
    v12 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200460](v11, v9, v12);
  }

  v13 = *(v8 + 120);
  *(v0 + 112) = v13;
  v14 = v13;
  if (!v13)
  {
LABEL_17:
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static WOLog.mediaPlayback);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_22;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Don't start media -- autoPlay disabled.";
    goto LABEL_21;
  }

  v15 = v14;
  swift_getKeyPath();
  *(v0 + 40) = v15;
  lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, 255, type metadata accessor for MediaPlaybackConfigurationItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
  swift_beginAccess();
  if (*(v15 + v16) != 1)
  {

    goto LABEL_17;
  }

  v17 = *(v0 + 88);
  specialized static AudioSessionUtilities.configureAudioSession()();
  if (v17)
  {

    v18 = *(v0 + 8);
LABEL_23:

    return v18(0);
  }

  v20 = swift_task_alloc();
  *(v0 + 120) = v20;
  *v20 = v0;
  v20[1] = MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);
  v21 = *(v0 + 64);
  v22 = *(v0 + 136);

  return MediaPlaybackController.eligibleAudioRoute(smartRoutingStatus:)(v22);
}

{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return MEMORY[0x2822009F8](MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:), v3, 0);
}

{
  v1 = *(*(v0 + 64) + 120);
  *(v0 + 112) = v1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_6;
  }

  v3 = v2;
  swift_getKeyPath();
  *(v0 + 40) = v3;
  lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, 255, type metadata accessor for MediaPlaybackConfigurationItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
  swift_beginAccess();
  if (*(v3 + v4) != 1)
  {

LABEL_6:
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.mediaPlayback);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20AEA4000, v8, v9, "Don't start media -- autoPlay disabled.", v10, 2u);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v6 = *(v0 + 8);
    goto LABEL_11;
  }

  v5 = *(v0 + 88);
  specialized static AudioSessionUtilities.configureAudioSession()();
  if (v5)
  {

    v6 = *(v0 + 8);
LABEL_11:

    return v6(0);
  }

  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);
  v13 = *(v0 + 64);
  v14 = *(v0 + 136);

  return MediaPlaybackController.eligibleAudioRoute(smartRoutingStatus:)(v14);
}

{
  v1 = *(v0 + 139);
  if (v1 == 1)
  {
    v2 = *(v0 + 48);
    if (v2)
    {
      v3 = *(v0 + 56);
      v4 = one-time initialization token for mediaPlayback;

      if (v4 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static WOLog.mediaPlayback);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_20AEA4000, v6, v7, "Eligible for post-activation prewarm.", v8, 2u);
        MEMORY[0x20F2E9420](v8, -1, -1);
      }

      v9 = *(v0 + 112);
      v11 = *(v0 + 48);
      v10 = *(v0 + 56);

      v2();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.mediaPlayback);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 112);
    if (v15)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20AEA4000, v13, v14, "Don't start media -- no eligible audio route.", v17, 2u);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }
  }

  v18 = *(v0 + 8);

  return v18(v1);
}

{

  v1 = *(v0 + 128);
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t @objc closure #1 in MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(const void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = _Block_copy(a1);
  v3[3] = _Block_copy(a2);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = _sIeyB_Ieg_TRTA_8;
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v5;
  v3[5] = v6;

  v7 = swift_task_alloc();
  v3[6] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);

  return MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(v5, v6);
}

uint64_t @objc closure #1 in MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = v5[5];
  v11 = v5[3];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v5[4]);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(v11, a1 & 1, 0);
  }

  _Block_release(v6[3]);
  v13 = *(v9 + 8);

  return v13();
}

uint64_t MediaPlaybackController.isMediaPlayerAudioPlayingNearby()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](MediaPlaybackController.isMediaPlayerAudioPlayingNearby(), v0, 0);
}

{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = MediaPlaybackController.isMediaPlayerAudioPlayingNearby();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo9MPAVRouteCSgs5NeverOGMd, &_sSccySo9MPAVRouteCSgs5NeverOGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
  v0[13] = &block_descriptor_107_0;
  v0[14] = v2;
  [v1 getProactiveRouteWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](MediaPlaybackController.isMediaPlayerAudioPlayingNearby(), v1, 0);
}

{
  v1 = v0[18];
  v0[21] = v1;
  if (v1)
  {
    v2 = v0[20];
    v3 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
    v0[22] = v3;
    v4 = [objc_opt_self() pathWithRoute:v1 bundleID:0 playerID:0];
    [v3 setPlayerPath_];

    [v3 setQualityOfService_];
    v6 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackController and conformance MediaPlaybackController, v5, type metadata accessor for MediaPlaybackController);
    v7 = swift_task_alloc();
    v0[23] = v7;
    *(v7 + 16) = v3;
    v8 = *(MEMORY[0x277D85A40] + 4);
    v9 = swift_task_alloc();
    v0[24] = v9;
    v10 = _sSo17MPCPlayerResponseCMaTm_0(0, &lazy cache variable for type metadata for MPCPlayerResponse, 0x277D278F8);
    *v9 = v0;
    v9[1] = MediaPlaybackController.isMediaPlayerAudioPlayingNearby();

    return MEMORY[0x2822008A0](v0 + 19, v2, v6, 0xD000000000000021, 0x800000020B46CD50, partial apply for closure #1 in MediaPlaybackController.isMediaPlayerAudioPlayingNearby(), v7, v10);
  }

  else
  {
    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v12 = v0[1];

    return v12(0);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);
    v5 = MediaPlaybackController.isMediaPlayerAudioPlayingNearby();
  }

  else
  {
    v6 = *(v2 + 184);
    v7 = *(v2 + 160);

    v5 = MediaPlaybackController.isMediaPlayerAudioPlayingNearby();
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v22 = v0;
  v2 = v0[19];
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.mediaPlayback);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    v9 = [v4 state];
    if (v9 <= 6)
    {
      v1 = off_277D8C608[v9];
      v10 = off_277D8C5D0[v9];
    }

    v11 = v1;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v21);

    *(v7 + 4) = v15;
    _os_log_impl(&dword_20AEA4000, v5, v6, "Media player audio_state=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v17 = v0[21];
  v16 = v0[22];
  v18 = [v4 state];

  v19 = v0[1];

  return v19((v18 < 6) & (0x2Cu >> v18));
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);

  v3 = *(v0 + 200);
  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t closure #1 in MediaPlaybackController.stopMediaPlayback()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - v12;
  (*(v10 + 16))(aBlock - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPCPlayerResponse?, @guaranteed Error?) -> ();
  aBlock[3] = a5;
  v16 = _Block_copy(aBlock);

  v17 = [a2 performWithCompletion_];
  _Block_release(v16);
  return swift_unknownObjectRelease();
}

uint64_t closure #1 in closure #1 in MediaPlaybackController.stopMediaPlayback()(void *a1, id a2, uint64_t a3, char a4)
{
  if (a1)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
      swift_allocError();
      v8 = v7;
      a2 = 0;
      *v8 = a4;
    }

    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t MediaPlaybackController.eligibleAudioRoute(smartRoutingStatus:)(__int16 a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 176) = v1;
  *(v2 + 208) = a1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](MediaPlaybackController.eligibleAudioRoute(smartRoutingStatus:), v1, 0);
}

uint64_t MediaPlaybackController.eligibleAudioRoute(smartRoutingStatus:)()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v0[23] = v1;
  v2 = [v1 sharedInstance];
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 210;
  v0[3] = MediaPlaybackController.eligibleAudioRoute(smartRoutingStatus:);
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
  v0[13] = &block_descriptor_103_0;
  v0[14] = v3;
  [v2 activateWithOptions:0x10000000 completionHandler:v0 + 10];
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 176);
  if (v3)
  {
    v5 = MediaPlaybackController.eligibleAudioRoute(smartRoutingStatus:);
  }

  else
  {
    v5 = MediaPlaybackController.eligibleAudioRoute(smartRoutingStatus:);
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v32 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 210);

  if (v1 != 1)
  {
    v17 = *(v0 + 176);
    v18 = *(v17 + 179);
    *(v17 + 179) = 1;
    if ((v18 & 1) == 0)
    {
      v19 = *(v0 + 176);
      MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(1);
    }

    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    *v20 = 2;
    goto LABEL_19;
  }

  if (*(v0 + 208) != 2 && (*(v0 + 208) & 0x100) != 0)
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.mediaPlayback);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_29;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Start Media -- Eligible smart route found and Audio Session activated";
LABEL_28:
    _os_log_impl(&dword_20AEA4000, v24, v25, v27, v26, 2u);
    MEMORY[0x20F2E9420](v26, -1, -1);
LABEL_29:

    v16 = 1;
    goto LABEL_30;
  }

  v3 = [*(v0 + 184) sharedInstance];
  v4 = [v3 currentRoute];

  LOBYTE(v3) = [v4 isDeviceSpeaker];
  if ((v3 & 1) == 0)
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static WOLog.mediaPlayback);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_29;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Activated audio session has eligible audio route";
    goto LABEL_28;
  }

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.mediaPlayback);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20AEA4000, v6, v7, "Don't start media -- current route is device speaker", v8, 2u);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v9 = *(v0 + 176);

  v10 = *(v9 + 179);
  *(v9 + 179) = 1;
  if ((v10 & 1) == 0)
  {
    v11 = *(v0 + 176);
    MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(1);
  }

  v12 = [*(v0 + 184) sharedInstance];
  *(v0 + 80) = 0;
  v13 = [v12 setActive:0 error:v0 + 80];

  v14 = *(v0 + 80);
  if (!v13)
  {
    v31 = v14;
    _convertNSErrorToError(_:)();

LABEL_19:
    swift_willThrow();
    v21 = *(v0 + 8);
    v22 = *MEMORY[0x277D85DE8];
    v16 = 0;
    goto LABEL_31;
  }

  v15 = v14;
  v16 = 0;
LABEL_30:
  v21 = *(v0 + 8);
  v29 = *MEMORY[0x277D85DE8];
LABEL_31:

  return v21(v16);
}

{
  v28 = *MEMORY[0x277D85DE8];
  v1 = v0[24];
  v2 = v0[25];
  swift_willThrow();

  swift_getErrorValue();
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[20];
  v6 = Error.code.getter();
  if (v6 == 561145203 || v6 == 561015905)
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v8 = v0[25];
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.mediaPlayback);
    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[25];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v13;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_20AEA4000, v11, v12, "Don't start media -- Audio session activation failure expected if no audio routes available. error=%@", v14, 0xCu);
      outlined destroy of NSObject?(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }
  }

  else
  {
    v18 = v0[22];
    v19 = *(v18 + 184);
    if (!v19)
    {
      goto LABEL_13;
    }

    v20 = v19;
    v11 = [v20 analyticsEventBuilder];
    [v11 recordWorkoutMediaDidStart:0];
  }

  v18 = v0[22];
LABEL_13:
  v21 = *(v18 + 179);
  *(v18 + 179) = 1;
  if ((v21 & 1) == 0)
  {
    v22 = v0[22];
    MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(1);
  }

  v23 = v0[25];
  swift_willThrow();
  v24 = v0[25];
  v25 = v0[1];
  v26 = *MEMORY[0x277D85DE8];

  return v25(0);
}

uint64_t MediaPlaybackController.prepareMediaPlayback()()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackController.prepareMediaPlayback(), v0, 0);
}

{
  v32 = v0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = __swift_project_value_buffer(v1, static WOLog.mediaPlayback);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Preparing media playback", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = *(v5 + 128);
  v0[5] = v6;
  if (v6)
  {
    v7 = *(MEMORY[0x277D857E0] + 4);

    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = MediaPlaybackController.prepareMediaPlayback();
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200460](v8, v6, v9);
  }

  else
  {
    v10 = *(v0[2] + 120);
    v0[7] = v10;
    v11 = v10;
    v12 = v0[4];
    if (v10)
    {
      v13 = v11;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v31 = v17;
        *v16 = 136315138;
        v18 = [v13 debugDescription];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v31);

        *(v16 + 4) = v22;
        _os_log_impl(&dword_20AEA4000, v14, v15, "Media configuration found for prepare: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x20F2E9420](v17, -1, -1);
        MEMORY[0x20F2E9420](v16, -1, -1);
      }

      v23 = swift_task_alloc();
      v0[8] = v23;
      *v23 = v0;
      v23[1] = MediaPlaybackController.prepareMediaPlayback();
      v24 = v0[2];

      return MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(closure #1 in MediaPlaybackController.prepareMediaPlayback(), 0);
    }

    else
    {
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_20AEA4000, v25, v26, "Media Playback not preparing -- no media configuration", v27, 2u);
        MEMORY[0x20F2E9420](v27, -1, -1);
      }

      v28 = v0[3];

      v29 = v0[1];

      return v29();
    }
  }
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return MEMORY[0x2822009F8](MediaPlaybackController.prepareMediaPlayback(), v3, 0);
}

{
  v23 = v0;
  v1 = *(v0[2] + 120);
  v0[7] = v1;
  v2 = v1;
  v3 = v0[4];
  if (v1)
  {
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 136315138;
      v9 = [v4 debugDescription];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v22);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_20AEA4000, v5, v6, "Media configuration found for prepare: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F2E9420](v8, -1, -1);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    v14 = swift_task_alloc();
    v0[8] = v14;
    *v14 = v0;
    v14[1] = MediaPlaybackController.prepareMediaPlayback();
    v15 = v0[2];

    return MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(closure #1 in MediaPlaybackController.prepareMediaPlayback(), 0);
  }

  else
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20AEA4000, v17, v18, "Media Playback not preparing -- no media configuration", v19, 2u);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    v20 = v0[3];

    v21 = v0[1];

    return v21();
  }
}

{
  v1 = *(v0 + 80);
  *(*(v0 + 16) + 178) = v1;
  if (v1 == 1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    static TaskPriority.userInitiated.getter();
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
    v7 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackController and conformance MediaPlaybackController, v6, type metadata accessor for MediaPlaybackController);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v7;
    v8[4] = v2;
    v8[5] = v3;
    swift_retain_n();
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #2 in MediaPlaybackController.prepareMediaPlayback(), v8);
  }

  else
  {
    v9 = *(v0 + 32);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 56);
    if (v12)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Media Playback not preparing -- should not start", v14, 2u);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    else
    {
    }
  }

  v15 = *(v0 + 24);

  v16 = *(v0 + 8);

  return v16();
}

{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 8) = 2112;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 10) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Media Playback not preparing -- should_start=%{BOOL}d error=%@", v7, 0x12u);
    outlined destroy of NSObject?(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = v0[9];
  v12 = v0[7];
  v14 = v0[2];
  v13 = v0[3];

  *(v14 + 178) = 2;
  swift_willThrow();

  v15 = v0[1];
  v16 = v0[9];

  return v15();
}

uint64_t MediaPlaybackController.prepareMediaPlayback()(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(v4 + 72) = v1;

  v7 = *(v4 + 16);
  if (v1)
  {
    v8 = MediaPlaybackController.prepareMediaPlayback();
  }

  else
  {
    *(v4 + 80) = a1 & 1;
    v8 = MediaPlaybackController.prepareMediaPlayback();
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t closure #2 in MediaPlaybackController.prepareMediaPlayback()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 216) = a4;
  *(v5 + 224) = a5;
  return MEMORY[0x2822009F8](closure #2 in MediaPlaybackController.prepareMediaPlayback(), a5, 0);
}

uint64_t closure #2 in MediaPlaybackController.prepareMediaPlayback()()
{
  v1 = v0[27];
  swift_getKeyPath();
  v0[24] = v1;
  lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, 255, type metadata accessor for MediaPlaybackConfigurationItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    goto LABEL_10;
  }

  v3 = v0[27];
  swift_getKeyPath();
  v0[25] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v0[29] = v5;
  if (!v5)
  {
LABEL_10:
    v18 = v0[1];

    return v18();
  }

  else
  {
    v6 = one-time initialization token for mediaPlayback;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v0[30] = __swift_project_value_buffer(v8, static WOLog.mediaPlayback);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v5;
      v14 = v9;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Media suggestion found for prepare: %@", v12, 0xCu);
      outlined destroy of NSObject?(v13);
      MEMORY[0x20F2E9420](v13, -1, -1);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    v15 = v0[28];

    *(v15 + 176) = 1;
    v16 = swift_task_alloc();
    v0[31] = v16;
    *v16 = v0;
    v16[1] = closure #2 in MediaPlaybackController.prepareMediaPlayback();

    return MSSuggestion.unifiedPrepare()();
  }
}

{
  v26 = v0;
  v1 = v0[32];
  v2 = v0[30];
  if (v1)
  {
    v3 = v0[32];

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25 = v7;
      *v6 = 136315138;
      v0[26] = v1;
      type metadata accessor for MSSuggestionLegacyIntentExecutionContext();

      v8 = String.init<A>(describing:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v25);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_20AEA4000, v4, v5, "Media Playback prepared with execution context: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x20F2E9420](v7, -1, -1);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    v11 = v0[28];
    v12 = *(v11 + 168);
    *(v11 + 168) = v0[32];

    if (*(v11 + 177) == 1 && (*(v0[28] + 145) & 1) != 0)
    {
      v13 = v0[30];
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_20AEA4000, v14, v15, "Prepare completed after start playback called, handling intent now.", v16, 2u);
        MEMORY[0x20F2E9420](v16, -1, -1);
      }

      v17 = swift_task_alloc();
      v0[34] = v17;
      *v17 = v0;
      v17[1] = closure #2 in MediaPlaybackController.prepareMediaPlayback();

      return MSSuggestionLegacyIntentExecutionContext.handle()();
    }

    v19 = v0[29];
  }

  else
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[29];
    if (v21)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20AEA4000, v19, v20, "Media Playback prepare -- no execution context returned", v23, 2u);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    else
    {

      v19 = v22;
    }
  }

  *(v0[28] + 176) = 0;
  v24 = v0[1];

  return v24();
}

{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 224);
  if (v0)
  {
    v6 = closure #2 in MediaPlaybackController.prepareMediaPlayback();
  }

  else
  {
    v6 = closure #2 in MediaPlaybackController.prepareMediaPlayback();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[30];
  *(v0[28] + 160) = 1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Media Playback started from prepare path", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = v0[28];

  v6 = *(v5 + 184);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 analyticsEventBuilder];
    [v8 recordWorkoutMediaDidStart_];
  }

  v9 = objc_opt_self();
  v10 = [v9 systemRoute];
  v0[36] = v10;
  v11 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46D070);
  v0[37] = v11;
  v0[2] = v0;
  v0[3] = closure #2 in MediaPlaybackController.prepareMediaPlayback();
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_243;
  v0[14] = v12;
  [v9 setActiveRoute:v10 reason:v11 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 304) = v3;
  v4 = *(v1 + 224);
  if (v3)
  {
    v5 = closure #2 in MediaPlaybackController.prepareMediaPlayback();
  }

  else
  {
    v5 = closure #2 in MediaPlaybackController.prepareMediaPlayback();
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);

  *(v4 + 177) = 0;
  *(*(v0 + 224) + 176) = 0;
  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[35];
  v2 = v0[30];
  *(v0[28] + 160) = 0;
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[35];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Media Playback failed from prepare path: %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = v0[28];

  v12 = *(v11 + 184);
  v13 = v0[35];
  if (v12)
  {
    v14 = v12;
    v15 = [v14 analyticsEventBuilder];
    [v15 recordWorkoutMediaDidStart_];
  }

  else
  {
  }

  v16 = objc_opt_self();
  v17 = [v16 systemRoute];
  v0[36] = v17;
  v18 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46D070);
  v0[37] = v18;
  v0[2] = v0;
  v0[3] = closure #2 in MediaPlaybackController.prepareMediaPlayback();
  v19 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_243;
  v0[14] = v19;
  [v16 setActiveRoute:v17 reason:v18 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 256);
  swift_willThrow();

  v5 = *(v0 + 304);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #2 in MediaPlaybackController.prepareMediaPlayback()(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(v4 + 256) = a1;
  *(v4 + 264) = v1;

  v7 = *(v3 + 224);
  if (v1)
  {
    v8 = closure #2 in MediaPlaybackController.prepareMediaPlayback();
  }

  else
  {
    v8 = closure #2 in MediaPlaybackController.prepareMediaPlayback();
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t @objc closure #1 in MediaPlaybackController.prepareMediaPlayback()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in MediaPlaybackController.prepareMediaPlayback();

  return MediaPlaybackController.prepareMediaPlayback()();
}

uint64_t MediaPlaybackController.startMediaPlayback()()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackController.startMediaPlayback(), v0, 0);
}

{
  v82 = v0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = __swift_project_value_buffer(v1, static WOLog.mediaPlayback);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "startMediaPlayback", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = *(v5 + 128);
  v0[5] = v6;
  if (v6)
  {
    v7 = *(MEMORY[0x277D857E0] + 4);

    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = MediaPlaybackController.startMediaPlayback();
    v9 = MEMORY[0x277D84F78] + 8;
    v10 = v6;

    return MEMORY[0x282200460](v8, v10, v9);
  }

  v11 = v0[2];
  v12 = *(v11 + 120);
  v0[7] = v12;
  v13 = v12;
  if (!v12)
  {
    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    *v21 = 8;
    swift_willThrow();
LABEL_38:
    v78 = v0[3];

    v64 = v0[1];
LABEL_39:

    return v64();
  }

  v14 = v13;
  if (*(v11 + 144))
  {
    v15 = v0[4];
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20AEA4000, v16, v17, "Already starting media playback, do not playback.", v18, 2u);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }

    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    v20 = 3;
LABEL_37:
    *v19 = v20;
    swift_willThrow();

    goto LABEL_38;
  }

  if (*(v11 + 152) > 4)
  {
    v65 = *(v11 + 179);
    *(v11 + 179) = 0;
    if (v65 == 1)
    {
      v66 = v0[2];
      MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(0);
    }

    v67 = v0[4];
    v68 = v0[2];

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    v71 = os_log_type_enabled(v69, v70);
    v72 = v0[2];
    if (v71)
    {
      v73 = swift_slowAlloc();
      *v73 = 134218240;
      *(v73 + 4) = *(v11 + 152);

      *(v73 + 12) = 2048;
      *(v73 + 14) = 5;
      _os_log_impl(&dword_20AEA4000, v69, v70, "Start media playback attempts=%ld exceed max_attempts=%ld, do not start media playback.", v73, 0x16u);
      MEMORY[0x20F2E9420](v73, -1, -1);
    }

    else
    {
      v77 = v0[2];
    }

    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    v20 = 10;
    goto LABEL_37;
  }

  v22 = v0[4];
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_20AEA4000, v23, v24, "Start media playback if audio route available and no audio playing nearby", v25, 2u);
    MEMORY[0x20F2E9420](v25, -1, -1);
  }

  v26 = v0[2];

  *(v26 + 145) = 1;
  *(v11 + 144) = 1;
  v27 = *(v26 + 179);
  *(v26 + 179) = 0;
  if (v27 == 1)
  {
    v28 = v0[2];
    MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(0);
  }

  v29 = *(v11 + 152);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
    return MEMORY[0x282200460](v8, v10, v9);
  }

  v32 = v0[2];
  *(v11 + 152) = v31;
  v33 = *(v32 + 178);
  if (v33 != 2 && (v33 & 1) != 0)
  {
    v34 = v0[4];
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_20AEA4000, v35, v36, "Cached value for shouldStartMediaPlayback is true, not rechecking.", v37, 2u);
      MEMORY[0x20F2E9420](v37, -1, -1);
    }

    v38 = v0[7];
    v40 = v0[3];
    v39 = v0[4];
    v41 = v0[2];
    v42 = type metadata accessor for TaskPriority();
    v43 = *(*(v42 - 8) + 56);
    v43(v40, 1, 1, v42);
    v45 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackController and conformance MediaPlaybackController, v44, type metadata accessor for MediaPlaybackController);
    v46 = swift_allocObject();
    v46[2] = v41;
    v46[3] = v45;
    v46[4] = v41;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v40, &async function pointer to partial apply for closure #1 in MediaPlaybackController.startMediaPlayback(), v46);

    v47 = v38;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = v0[7];
      v51 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v81 = v80;
      *v51 = 136315138;
      v52 = [v50 debugDescription];
      v53 = v43;
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v49;
      v55 = v45;
      v57 = v56;

      v58 = v54;
      v43 = v53;
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v57, &v81);
      v45 = v55;

      *(v51 + 4) = v59;
      _os_log_impl(&dword_20AEA4000, v48, v79, "Media configuration found: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x20F2E9420](v80, -1, -1);
      MEMORY[0x20F2E9420](v51, -1, -1);
    }

    v60 = v0[7];
    v62 = v0[2];
    v61 = v0[3];
    static TaskPriority.userInitiated.getter();
    v43(v61, 0, 1, v42);
    v63 = swift_allocObject();
    v63[2] = v62;
    v63[3] = v45;
    v63[4] = v62;
    v63[5] = v60;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v61, &async function pointer to partial apply for closure #2 in MediaPlaybackController.startMediaPlayback(), v63);

    *(v62 + 144) = 0;

    v64 = v0[1];
    goto LABEL_39;
  }

  v74 = swift_task_alloc();
  v0[8] = v74;
  *v74 = v0;
  v74[1] = MediaPlaybackController.startMediaPlayback();
  v75 = v0[2];

  return MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(0, 0);
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return MEMORY[0x2822009F8](MediaPlaybackController.startMediaPlayback(), v3, 0);
}

{
  v40 = v0;
  if (*(v0 + 80) == 1)
  {
    v1 = *(v0 + 56);
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    v4 = *(v0 + 16);
    v5 = type metadata accessor for TaskPriority();
    v6 = *(*(v5 - 8) + 56);
    v6(v3, 1, 1, v5);
    v8 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackController and conformance MediaPlaybackController, v7, type metadata accessor for MediaPlaybackController);
    v9 = swift_allocObject();
    v9[2] = v4;
    v9[3] = v8;
    v9[4] = v4;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in MediaPlaybackController.startMediaPlayback(), v9);

    v10 = v1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 56);
      v14 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = v38;
      *v14 = 136315138;
      v15 = [v13 debugDescription];
      v16 = v6;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v12;
      v18 = v8;
      v20 = v19;

      v21 = v17;
      v6 = v16;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v39);
      v8 = v18;

      *(v14 + 4) = v22;
      _os_log_impl(&dword_20AEA4000, v11, v37, "Media configuration found: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x20F2E9420](v38, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    v23 = *(v0 + 56);
    v25 = *(v0 + 16);
    v24 = *(v0 + 24);
    static TaskPriority.userInitiated.getter();
    v6(v24, 0, 1, v5);
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = v8;
    v26[4] = v25;
    v26[5] = v23;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v24, &async function pointer to partial apply for closure #2 in MediaPlaybackController.startMediaPlayback(), v26);

    *(v25 + 144) = 0;

    v27 = *(v0 + 8);
  }

  else
  {
    v28 = *(v0 + 32);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 67109120;
      _os_log_impl(&dword_20AEA4000, v29, v30, "Media Playback not starting -- should_start=%{BOOL}d", v31, 8u);
      MEMORY[0x20F2E9420](v31, -1, -1);
    }

    v32 = *(v0 + 56);
    v33 = *(v0 + 16);

    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    *v34 = 7;
    swift_willThrow();

    *(v33 + 144) = 0;
    v35 = *(v0 + 24);

    v27 = *(v0 + 8);
  }

  return v27();
}

{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 8) = 2112;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 10) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Media Playback not starting -- should_start=%{BOOL}d error=%@", v7, 0x12u);
    outlined destroy of NSObject?(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = v0[9];
  v12 = v0[7];
  v13 = v0[2];

  swift_willThrow();
  *(v13 + 144) = 0;
  v14 = v0[9];
  v15 = v0[3];

  v16 = v0[1];

  return v16();
}

void MediaPlaybackController.startMediaPlayback()()
{
  v71 = v0;
  v1 = v0[2];
  v2 = *(v1 + 120);
  v0[7] = v2;
  v3 = v2;
  if (!v2)
  {
    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    *v11 = 8;
    swift_willThrow();
LABEL_30:
    v67 = v0[3];

    v54 = v0[1];
LABEL_31:

    v54();
    return;
  }

  v4 = v3;
  if (*(v1 + 144))
  {
    v5 = v0[4];
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20AEA4000, v6, v7, "Already starting media playback, do not playback.", v8, 2u);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    v10 = 3;
LABEL_29:
    *v9 = v10;
    swift_willThrow();

    goto LABEL_30;
  }

  if (*(v1 + 152) > 4)
  {
    v55 = *(v1 + 179);
    *(v1 + 179) = 0;
    if (v55 == 1)
    {
      v56 = v0[2];
      MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(0);
    }

    v57 = v0[4];
    v58 = v0[2];

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v0[2];
    if (v61)
    {
      v63 = swift_slowAlloc();
      *v63 = 134218240;
      *(v63 + 4) = *(v1 + 152);

      *(v63 + 12) = 2048;
      *(v63 + 14) = 5;
      _os_log_impl(&dword_20AEA4000, v59, v60, "Start media playback attempts=%ld exceed max_attempts=%ld, do not start media playback.", v63, 0x16u);
      MEMORY[0x20F2E9420](v63, -1, -1);
    }

    else
    {
      v66 = v0[2];
    }

    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    v10 = 10;
    goto LABEL_29;
  }

  v12 = v0[4];
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_20AEA4000, v13, v14, "Start media playback if audio route available and no audio playing nearby", v15, 2u);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  v16 = v0[2];

  *(v16 + 145) = 1;
  *(v1 + 144) = 1;
  v17 = *(v16 + 179);
  *(v16 + 179) = 0;
  if (v17 == 1)
  {
    v18 = v0[2];
    MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(0);
  }

  v19 = *(v1 + 152);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
    return;
  }

  v22 = v0[2];
  *(v1 + 152) = v21;
  v23 = *(v22 + 178);
  if (v23 != 2 && (v23 & 1) != 0)
  {
    v24 = v0[4];
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20AEA4000, v25, v26, "Cached value for shouldStartMediaPlayback is true, not rechecking.", v27, 2u);
      MEMORY[0x20F2E9420](v27, -1, -1);
    }

    v28 = v0[7];
    v30 = v0[3];
    v29 = v0[4];
    v31 = v0[2];
    v32 = type metadata accessor for TaskPriority();
    v33 = *(*(v32 - 8) + 56);
    v33(v30, 1, 1, v32);
    v35 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackController and conformance MediaPlaybackController, v34, type metadata accessor for MediaPlaybackController);
    v36 = swift_allocObject();
    v36[2] = v31;
    v36[3] = v35;
    v36[4] = v31;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v30, &async function pointer to partial apply for closure #1 in MediaPlaybackController.startMediaPlayback(), v36);

    v37 = v28;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = v0[7];
      v41 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = v69;
      *v41 = 136315138;
      v42 = [v40 debugDescription];
      v43 = v33;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v39;
      v45 = v35;
      v47 = v46;

      v48 = v44;
      v33 = v43;
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, &v70);
      v35 = v45;

      *(v41 + 4) = v49;
      _os_log_impl(&dword_20AEA4000, v38, v68, "Media configuration found: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x20F2E9420](v69, -1, -1);
      MEMORY[0x20F2E9420](v41, -1, -1);
    }

    v50 = v0[7];
    v52 = v0[2];
    v51 = v0[3];
    static TaskPriority.userInitiated.getter();
    v33(v51, 0, 1, v32);
    v53 = swift_allocObject();
    v53[2] = v52;
    v53[3] = v35;
    v53[4] = v52;
    v53[5] = v50;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v51, &async function pointer to partial apply for closure #2 in MediaPlaybackController.startMediaPlayback(), v53);

    *(v52 + 144) = 0;

    v54 = v0[1];
    goto LABEL_31;
  }

  v64 = swift_task_alloc();
  v0[8] = v64;
  *v64 = v0;
  v64[1] = MediaPlaybackController.startMediaPlayback();
  v65 = v0[2];

  MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(0, 0);
}

uint64_t MediaPlaybackController.startMediaPlayback()(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(v4 + 72) = v1;

  v7 = *(v4 + 16);
  if (v1)
  {
    v8 = MediaPlaybackController.startMediaPlayback();
  }

  else
  {
    *(v4 + 80) = a1 & 1;
    v8 = MediaPlaybackController.startMediaPlayback();
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t closure #1 in MediaPlaybackController.startMediaPlayback()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in MediaPlaybackController.startMediaPlayback();

  return MediaPlaybackController.reportMediaPlaybackConfigurationAnalytics()();
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t closure #2 in MediaPlaybackController.startMediaPlayback()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = a5;
  return MEMORY[0x2822009F8](closure #2 in MediaPlaybackController.startMediaPlayback(), a4, 0);
}

uint64_t closure #2 in MediaPlaybackController.startMediaPlayback()()
{
  v1 = v0[26];
  if (*(v1 + 176) == 1)
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "Media playback prepare started but not finished, waiting to handle intent.", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v6 = v0[26];

    *(v6 + 177) = 1;
LABEL_7:
    v7 = v0[1];

    return v7();
  }

  v9 = *(v1 + 168);
  v0[28] = v9;
  if (v9)
  {

    v10 = swift_task_alloc();
    v0[29] = v10;
    *v10 = v0;
    v10[1] = closure #2 in MediaPlaybackController.startMediaPlayback();

    return MSSuggestionLegacyIntentExecutionContext.handle()();
  }

  else
  {
    v11 = v0[27];
    swift_getKeyPath();
    v0[24] = v11;
    lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, 255, type metadata accessor for MediaPlaybackConfigurationItem);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
    swift_beginAccess();
    if (*(v11 + v12) == 1)
    {
      v13 = v0[26];
      v14 = *(v13 + 136);
      v0[31] = v14;
      if (v14)
      {
        v15 = v14;
        v16 = swift_task_alloc();
        v0[32] = v16;
        *v16 = v0;
        v16[1] = closure #2 in MediaPlaybackController.startMediaPlayback();
        v17 = v0[26];

        return MediaPlaybackController.initiateMoodStationPlayback(for:)(v15);
      }

      else if (*(v13 + 145) == 1)
      {
        *(v13 + 160) = 1;
        if (one-time initialization token for mediaPlayback != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        v0[36] = __swift_project_value_buffer(v22, static WOLog.mediaPlayback);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_20AEA4000, v23, v24, "Media Playback started!", v25, 2u);
          MEMORY[0x20F2E9420](v25, -1, -1);
        }

        v26 = v0[26];

        v27 = *(v26 + 184);
        if (v27)
        {
          v28 = v27;
          v29 = [v28 analyticsEventBuilder];
          [v29 recordWorkoutMediaDidStart_];
        }

        v30 = objc_opt_self();
        v31 = [v30 systemRoute];
        v0[37] = v31;
        v32 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46D070);
        v0[38] = v32;
        v0[2] = v0;
        v0[3] = closure #2 in MediaPlaybackController.startMediaPlayback();
        v33 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
        v0[10] = MEMORY[0x277D85DD0];
        v0[11] = 1107296256;
        v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
        v0[13] = &block_descriptor_234;
        v0[14] = v33;
        [v30 setActiveRoute:v31 reason:v32 completion:v0 + 10];

        return MEMORY[0x282200938](v0 + 2);
      }

      else
      {
        if (one-time initialization token for mediaPlayback != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        __swift_project_value_buffer(v48, static WOLog.mediaPlayback);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_20AEA4000, v49, v50, "No longer in active workout when media playback started, stopping media playback.", v51, 2u);
          MEMORY[0x20F2E9420](v51, -1, -1);
        }

        v52 = swift_task_alloc();
        v0[40] = v52;
        *v52 = v0;
        v52[1] = closure #2 in MediaPlaybackController.startMediaPlayback();
        v53 = v0[26];

        return MediaPlaybackController.stopMediaPlayback()();
      }
    }

    else
    {
      v18 = v0[27];
      swift_getKeyPath();
      v0[25] = v18;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v19 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
      swift_beginAccess();
      v20 = *(v18 + v19);
      v0[33] = v20;
      if (!v20)
      {
        lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
        v34 = swift_allocError();
        *v35 = 9;
        swift_willThrow();
        *(v0[26] + 160) = 0;
        if (one-time initialization token for mediaPlayback != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, static WOLog.mediaPlayback);
        v37 = v34;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = 138412290;
          v42 = v34;
          v43 = _swift_stdlib_bridgeErrorToNSError();
          *(v40 + 4) = v43;
          *v41 = v43;
          _os_log_impl(&dword_20AEA4000, v38, v39, "Media Playback failed: %@", v40, 0xCu);
          outlined destroy of NSObject?(v41);
          MEMORY[0x20F2E9420](v41, -1, -1);
          MEMORY[0x20F2E9420](v40, -1, -1);
        }

        v44 = v0[26];

        v45 = *(v44 + 184);
        if (v45)
        {
          v46 = v45;
          v47 = [v46 analyticsEventBuilder];
          [v47 recordWorkoutMediaDidStart_];
        }

        else
        {
        }

        goto LABEL_7;
      }

      v20;
      v21 = swift_task_alloc();
      v0[34] = v21;
      *v21 = v0;
      v21[1] = closure #2 in MediaPlaybackController.startMediaPlayback();

      return MSSuggestion.unifiedPlay()();
    }
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = closure #2 in MediaPlaybackController.startMediaPlayback();
  }

  else
  {
    v6 = closure #2 in MediaPlaybackController.startMediaPlayback();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[28];
  v2 = v0[26];

  v3 = *(v2 + 168);
  *(v2 + 168) = 0;

  v4 = v0[26];
  if (*(v4 + 145) == 1)
  {
    *(v4 + 160) = 1;
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    v0[36] = __swift_project_value_buffer(v5, static WOLog.mediaPlayback);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20AEA4000, v6, v7, "Media Playback started!", v8, 2u);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    v9 = v0[26];

    v10 = *(v9 + 184);
    if (v10)
    {
      v11 = v10;
      v12 = [v11 analyticsEventBuilder];
      [v12 recordWorkoutMediaDidStart_];
    }

    v13 = objc_opt_self();
    v14 = [v13 systemRoute];
    v0[37] = v14;
    v15 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46D070);
    v0[38] = v15;
    v0[2] = v0;
    v0[3] = closure #2 in MediaPlaybackController.startMediaPlayback();
    v16 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_234;
    v0[14] = v16;
    [v13 setActiveRoute:v14 reason:v15 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.mediaPlayback);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20AEA4000, v18, v19, "No longer in active workout when media playback started, stopping media playback.", v20, 2u);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    v21 = swift_task_alloc();
    v0[40] = v21;
    *v21 = v0;
    v21[1] = closure #2 in MediaPlaybackController.startMediaPlayback();
    v22 = v0[26];

    return MediaPlaybackController.stopMediaPlayback()();
  }
}

{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return MEMORY[0x2822009F8](closure #2 in MediaPlaybackController.startMediaPlayback(), v2, 0);
}

{

  v1 = *(v0 + 208);
  if (*(v1 + 145) == 1)
  {
    *(v1 + 160) = 1;
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    *(v0 + 288) = __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "Media Playback started!", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v6 = *(v0 + 208);

    v7 = *(v6 + 184);
    if (v7)
    {
      v8 = v7;
      v9 = [v8 analyticsEventBuilder];
      [v9 recordWorkoutMediaDidStart_];
    }

    v10 = objc_opt_self();
    v11 = [v10 systemRoute];
    *(v0 + 296) = v11;
    v12 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46D070);
    *(v0 + 304) = v12;
    *(v0 + 16) = v0;
    *(v0 + 24) = closure #2 in MediaPlaybackController.startMediaPlayback();
    v13 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 104) = &block_descriptor_234;
    *(v0 + 112) = v13;
    [v10 setActiveRoute:v11 reason:v12 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.mediaPlayback);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20AEA4000, v15, v16, "No longer in active workout when media playback started, stopping media playback.", v17, 2u);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    v18 = swift_task_alloc();
    *(v0 + 320) = v18;
    *v18 = v0;
    v18[1] = closure #2 in MediaPlaybackController.startMediaPlayback();
    v19 = *(v0 + 208);

    return MediaPlaybackController.stopMediaPlayback()();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = closure #2 in MediaPlaybackController.startMediaPlayback();
  }

  else
  {
    v6 = closure #2 in MediaPlaybackController.startMediaPlayback();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{

  v1 = *(v0 + 208);
  if (*(v1 + 145) == 1)
  {
    *(v1 + 160) = 1;
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    *(v0 + 288) = __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "Media Playback started!", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v6 = *(v0 + 208);

    v7 = *(v6 + 184);
    if (v7)
    {
      v8 = v7;
      v9 = [v8 analyticsEventBuilder];
      [v9 recordWorkoutMediaDidStart_];
    }

    v10 = objc_opt_self();
    v11 = [v10 systemRoute];
    *(v0 + 296) = v11;
    v12 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46D070);
    *(v0 + 304) = v12;
    *(v0 + 16) = v0;
    *(v0 + 24) = closure #2 in MediaPlaybackController.startMediaPlayback();
    v13 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 104) = &block_descriptor_234;
    *(v0 + 112) = v13;
    [v10 setActiveRoute:v11 reason:v12 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.mediaPlayback);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20AEA4000, v15, v16, "No longer in active workout when media playback started, stopping media playback.", v17, 2u);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    v18 = swift_task_alloc();
    *(v0 + 320) = v18;
    *v18 = v0;
    v18[1] = closure #2 in MediaPlaybackController.startMediaPlayback();
    v19 = *(v0 + 208);

    return MediaPlaybackController.stopMediaPlayback()();
  }
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 312) = v3;
  v4 = *(v1 + 208);
  if (v3)
  {
    v5 = closure #2 in MediaPlaybackController.startMediaPlayback();
  }

  else
  {
    v5 = closure #2 in MediaPlaybackController.startMediaPlayback();
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = closure #2 in MediaPlaybackController.startMediaPlayback();
  }

  else
  {
    v6 = closure #2 in MediaPlaybackController.startMediaPlayback();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
  v1 = swift_allocError();
  *v2 = 4;
  swift_willThrow();
  *(*(v0 + 208) + 160) = 0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.mediaPlayback);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v5, v6, "Media Playback failed: %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = *(v0 + 208);

  v12 = *(v11 + 184);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 analyticsEventBuilder];
    [v14 recordWorkoutMediaDidStart_];
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

{
  v1 = v0[28];

  v2 = v0[30];
  *(v0[26] + 160) = 0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.mediaPlayback);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v5, v6, "Media Playback failed: %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = v0[26];

  v12 = *(v11 + 184);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 analyticsEventBuilder];
    [v14 recordWorkoutMediaDidStart_];
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

{

  v1 = *(v0 + 280);
  *(*(v0 + 208) + 160) = 0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Media Playback failed: %@", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v10 = *(v0 + 208);

  v11 = *(v10 + 184);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 analyticsEventBuilder];
    [v13 recordWorkoutMediaDidStart_];
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

{
  v1 = v0[41];
  *(v0[26] + 160) = 0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Media Playback failed: %@", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v10 = v0[26];

  v11 = *(v10 + 184);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 analyticsEventBuilder];
    [v13 recordWorkoutMediaDidStart_];
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[36];
  v4 = v0[37];
  swift_willThrow();

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[39];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_20AEA4000, v6, v7, "Failed to set Watch as MPAV active route. Now Playing View may show incorrectly. error=%@", v10, 0xCu);
    outlined destroy of NSObject?(v11);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t @objc closure #1 in MediaPlaybackController.startMediaPlayback()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in MediaPlaybackController.startMediaPlayback();

  return MediaPlaybackController.startMediaPlayback()();
}

void MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(char a1)
{
  v2 = v1;
  v48[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.mediaPlayback);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v48[0] = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 0x6E6976726573626FLL;
    }

    else
    {
      v9 = 0x73626F20706F7473;
    }

    if (a1)
    {
      v10 = 0xE900000000000067;
    }

    else
    {
      v10 = 0xEE00676E69767265;
    }

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v48);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20AEA4000, v5, v6, "%s pickableRoutesChanged notifications", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v12 = objc_opt_self();
  v13 = [v12 sharedInstance];
  v14 = v13;
  if (a1)
  {
    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSNotificationNameaGMd, &_ss23_ContiguousArrayStorageCySo18NSNotificationNameaGMR);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_20B423A90;
      v16 = *MEMORY[0x277D26C68];
      *(v15 + 32) = *MEMORY[0x277D26C68];
      type metadata accessor for NSNotificationName(0);
      v17 = v16;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v19 = *MEMORY[0x277D26DD0];
      v48[0] = 0;
      v20 = [v14 setAttribute:isa forKey:v19 error:v48];

      v21 = v48[0];
      if (v20)
      {
        v22 = objc_opt_self();
        v23 = v21;
        v24 = [v22 defaultCenter];
        v25 = [v12 sharedInstance];
        [v24 addObserver:v2 selector:sel_handlePickableRoutesChangedNotification_ name:v17 object:v25];
LABEL_18:

LABEL_25:
        v47 = *MEMORY[0x277D85DE8];
        return;
      }

      v33 = v48[0];
      v34 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v35 = v34;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        v40 = v34;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v41;
        *v39 = v41;
        v42 = "Could not subscribe to pickable routes did change. error=%@";
LABEL_23:
        _os_log_impl(&dword_20AEA4000, v36, v37, v42, v38, 0xCu);
        outlined destroy of NSObject?(v39);
        MEMORY[0x20F2E9420](v39, -1, -1);
        MEMORY[0x20F2E9420](v38, -1, -1);

        goto LABEL_25;
      }

      goto LABEL_24;
    }

    __break(1u);
  }

  else if (v13)
  {
    v26 = Array._bridgeToObjectiveC()().super.isa;
    v27 = *MEMORY[0x277D26DD0];
    v48[0] = 0;
    v28 = [v14 setAttribute:v26 forKey:v27 error:v48];

    v29 = v48[0];
    if (v28)
    {
      v30 = objc_opt_self();
      v31 = v29;
      v24 = [v30 defaultCenter];
      v32 = *MEMORY[0x277D26C68];
      v25 = [v12 sharedInstance];
      [v24 removeObserver:v2 name:v32 object:v25];
      goto LABEL_18;
    }

    v43 = v48[0];
    v34 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v44 = v34;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v45 = v34;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v46;
      *v39 = v46;
      v42 = "Could not unsubscribe from pickable routes did change. error=%@";
      goto LABEL_23;
    }

LABEL_24:

    goto LABEL_25;
  }

  __break(1u);
}

uint64_t closure #1 in MediaPlaybackController.handlePickableRoutesChangedNotification(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in MediaPlaybackController.handlePickableRoutesChangedNotification(_:);

  return MediaPlaybackController.pickableRoutesChanged()();
}

uint64_t @objc MediaPlaybackController.handleAnnouncerWillStart(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Notification();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a5, v17);

  return (*(v12 + 8))(v15, v11);
}

uint64_t MediaPlaybackController.pickableRoutesChanged()()
{
  *(v1 + 312) = v0;
  return MEMORY[0x2822009F8](MediaPlaybackController.pickableRoutesChanged(), v0, 0);
}

{
  v108 = v0;
  v2 = v0[39];
  if ((*(v2 + 179) & 1) == 0)
  {
    v8 = v0[39];
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
      v101 = v0[39];
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.mediaPlayback);

    v4 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v4, v10);
    v12 = v0[39];
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = *(v2 + 179);

      _os_log_impl(&dword_20AEA4000, v4, v10, "Ignoring pickableRoutesChanged due to shouldPlayWhenRouteAvailable=%{BOOL}d", v13, 8u);
      v14 = v13;
LABEL_80:
      MEMORY[0x20F2E9420](v14, -1, -1);
      goto LABEL_81;
    }

    v91 = v0[39];

    goto LABEL_81;
  }

  if (*(v2 + 146) == 1)
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.mediaPlayback);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_81;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Ignoring pickableRoutesChanged due to workout voice feedback announcer is active";
    goto LABEL_79;
  }

  specialized static WOAVRoute.pickableRoutes(for:)(0x69562F6F69647541, 0xEB000000006F6564);
  v16 = v15;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v0[40] = __swift_project_value_buffer(v17, static WOLog.mediaPlayback);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v107 = v21;
    *v20 = 136315138;
    v22 = type metadata accessor for WOAVRoute();
    v23 = MEMORY[0x20F2E6F70](v16, v22);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v107);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_20AEA4000, v18, v19, "PickableRoutesChanged pickableRoutes=%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x20F2E9420](v21, -1, -1);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  if (v16 >> 62)
  {
    v26 = __CocoaSet.count.getter();
    if (v26)
    {
      goto LABEL_17;
    }

    goto LABEL_77;
  }

  v26 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_77:

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "PickableRoutesChanged but no eligible audio route, not starting media playback";
LABEL_79:
      _os_log_impl(&dword_20AEA4000, v4, v5, v7, v6, 2u);
      v14 = v6;
      goto LABEL_80;
    }

LABEL_81:

    v102 = v0[1];

    return v102();
  }

LABEL_17:
  v27 = 0;
  v105 = v16 & 0xFFFFFFFFFFFFFF8;
  v106 = v16 & 0xC000000000000001;
  v103 = v26;
  v104 = v16;
  while (1)
  {
    if (v106)
    {
      v28 = MEMORY[0x20F2E7A20](v27, v16);
    }

    else
    {
      if (v27 >= *(v105 + 16))
      {
        goto LABEL_74;
      }

      v28 = *(v16 + 8 * v27 + 32);
    }

    v1 = v28;
    v0[41] = v28;
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    v30 = OBJC_IVAR____TtC11WorkoutCore9WOAVRoute_routeDictionary;
    v31 = *&v28[OBJC_IVAR____TtC11WorkoutCore9WOAVRoute_routeDictionary];
    v32 = *MEMORY[0x277D26CA8];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v31 + 16))
    {
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
      v37 = v36;

      if (v37)
      {
        outlined init with copy of Any(*(v31 + 56) + 32 * v35, (v0 + 2));
        if ((swift_dynamicCast() & 1) != 0 && v0[32] == 0x4274657364616548 && v0[33] == 0xE900000000000054)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v38 & 1) == 0)
    {
      v39 = *&v1[v30];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v39 + 16))
      {

LABEL_37:
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v45 & 1) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_38;
      }

      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41);
      v44 = v43;

      if ((v44 & 1) == 0)
      {
        goto LABEL_37;
      }

      outlined init with copy of Any(*(v39 + 56) + 32 * v42, (v0 + 6));
      if ((swift_dynamicCast() & 1) == 0 || v0[30] != 0x6E6F687064616548 || v0[31] != 0xEC00000054427365)
      {
        goto LABEL_37;
      }

LABEL_35:
    }

LABEL_38:
    v46 = *&v1[v30];
    v47 = *MEMORY[0x277D26D00];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v46 + 16))
    {
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v49);
      v52 = v51;

      if (v52)
      {
        outlined init with copy of Any(*(v46 + 56) + 32 * v50, (v0 + 10));
        _sSo17MPCPlayerResponseCMaTm_0(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v53 = v0[38];
          v54 = [v53 BOOLValue];

          if (v54)
          {
            goto LABEL_68;
          }
        }
      }
    }

    else
    {
    }

    v55 = *&v1[v30];
    v56 = *MEMORY[0x277D26CC8];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v55 + 16))
    {
      goto LABEL_61;
    }

    v59 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v58);
    v61 = v60;

    if ((v61 & 1) == 0)
    {
      goto LABEL_62;
    }

    outlined init with copy of Any(*(v55 + 56) + 32 * v59, (v0 + 14));
    _sSo17MPCPlayerResponseCMaTm_0(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_62;
    }

    v62 = v0[34];
    v63 = [v62 BOOLValue];

    if ((v63 & 1) == 0)
    {
      goto LABEL_62;
    }

    v64 = *&v1[v30];
    v65 = *MEMORY[0x277D26CF0];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v64 + 16))
    {
      goto LABEL_67;
    }

    v68 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v67);
    v70 = v69;

    if ((v70 & 1) == 0)
    {
      goto LABEL_68;
    }

    outlined init with copy of Any(*(v64 + 56) + 32 * v68, (v0 + 18));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_68;
    }

    v71 = v0[35];
    v72 = [v71 BOOLValue];

    if ((v72 & 1) == 0)
    {
      goto LABEL_68;
    }

    v73 = *&v1[v30];
    v74 = *MEMORY[0x277D26CE8];
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v73 + 16))
    {
LABEL_67:

      goto LABEL_68;
    }

    v77 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v76);
    v79 = v78;

    if ((v79 & 1) == 0)
    {
      goto LABEL_68;
    }

    outlined init with copy of Any(*(v73 + 56) + 32 * v77, (v0 + 22));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_68;
    }

    v80 = v0[36];
    v81 = [v80 BOOLValue];

    if ((v81 & 1) == 0)
    {
      goto LABEL_68;
    }

    v82 = *&v1[v30];
    v83 = *MEMORY[0x277D26CF8];
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v82 + 16))
    {
LABEL_61:

LABEL_62:

      v16 = v104;
      goto LABEL_63;
    }

    v86 = specialized __RawDictionaryStorage.find<A>(_:)(v84, v85);
    v88 = v87;

    if ((v88 & 1) == 0)
    {
      goto LABEL_62;
    }

    outlined init with copy of Any(*(v82 + 56) + 32 * v86, (v0 + 26));
    v16 = v104;
    if (swift_dynamicCast())
    {
      v89 = v0[37];
      v90 = [v89 BOOLValue];

      if (v90)
      {
        goto LABEL_68;
      }
    }

LABEL_63:
    ++v27;
    if (v29 == v103)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_68:

  v92 = v1;
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v95 = 138412290;
    *(v95 + 4) = v92;
    *v96 = v92;
    v97 = v92;
    _os_log_impl(&dword_20AEA4000, v93, v94, "Starting media playback as pickableRoutesChanged with eligible audio route=%@", v95, 0xCu);
    outlined destroy of NSObject?(v96);
    MEMORY[0x20F2E9420](v96, -1, -1);
    MEMORY[0x20F2E9420](v95, -1, -1);
  }

  v98 = swift_task_alloc();
  v0[42] = v98;
  *v98 = v0;
  v98[1] = MediaPlaybackController.pickableRoutesChanged();
  v99 = v0[39];

  return MediaPlaybackController.startMediaPlayback()();
}

{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 312);
  if (v0)
  {
    v6 = MediaPlaybackController.pickableRoutesChanged();
  }

  else
  {
    v6 = MediaPlaybackController.pickableRoutesChanged();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[40];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[41];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "StartMediaPlayback completed successfully", v6, 2u);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[43];
  v8 = v0[41];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_20AEA4000, v4, v5, "StartMediaPlayback failed with error=%@", v9, 0xCu);
    outlined destroy of NSObject?(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t MediaPlaybackController.ppt_setupMediaConfiguration(for:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](MediaPlaybackController.ppt_setupMediaConfiguration(for:), v1, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](MediaPlaybackController.ppt_setupMediaConfiguration(for:), 0, 0);
  }
}

uint64_t MediaPlaybackController.ppt_setupMediaConfiguration(for:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v1 + 136);
  *(v1 + 136) = v2;
  v4 = v2;

  type metadata accessor for WorkoutPlaylistMigration();
  swift_initStaticObject();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = MediaPlaybackController.ppt_setupMediaConfiguration(for:);

  return WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist()();
}

{
  super_class = v0[3].super_class;
  v2 = v0[2].super_class;
  v3 = type metadata accessor for MediaPlaybackConfigurationItem();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  *&v4[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion] = 0;
  ObservationRegistrar.init()();
  v4[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled] = 1;
  v4[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled] = 0;
  v6 = *&v4[v5];
  v7 = super_class;

  *&v4[v5] = super_class;
  v0[1].receiver = v4;
  v0[1].super_class = v3;
  v0[4].receiver = objc_msgSendSuper2(v0 + 1, sel_init);

  return MEMORY[0x2822009F8](MediaPlaybackController.ppt_setupMediaConfiguration(for:), v2, 0);
}

{
  v1 = v0[5];
  v2 = *(v1 + 120);
  *(v1 + 120) = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t @objc closure #1 in MediaPlaybackController.ppt_setupMediaConfiguration(for:)(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = @objc closure #1 in MediaPlaybackController.ppt_setupMediaConfiguration(for:);

  return MediaPlaybackController.ppt_setupMediaConfiguration(for:)(v5);
}

uint64_t @objc closure #1 in MediaPlaybackController.ppt_setupMediaConfiguration(for:)()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t MediaPlaybackController.setActivityType(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v5;
  v12[5] = a1;

  v13 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a3, v12);
}

uint64_t closure #1 in MediaPlaybackController.setActiveWorkout(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in MediaPlaybackController.setActiveWorkout(_:), a4, 0);
}

uint64_t closure #1 in MediaPlaybackController.setActiveWorkout(_:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v2 + 184);
  *(v2 + 184) = v1;
  v4 = v1;

  v5 = v0[1];

  return v5();
}

uint64_t @objc MediaPlaybackController.setActivityType(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a3;
  v14 = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, a5, v13);
}

uint64_t MediaPlaybackController.reportMediaPlaybackConfigurationAnalytics()()
{
  *(v1 + 112) = v0;
  return MEMORY[0x2822009F8](MediaPlaybackController.reportMediaPlaybackConfigurationAnalytics(), v0, 0);
}

{
  v1 = v0[14];
  v2 = v1[23];
  v0[15] = v2;
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v1[16];
  v0[16] = v3;
  v4 = v2;
  if (v3)
  {
    v5 = *(MEMORY[0x277D857E0] + 4);

    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = MediaPlaybackController.reportMediaPlaybackConfigurationAnalytics();

    return MEMORY[0x282200460]();
  }

  v7 = v1[15];
  v8 = v4;
  v9 = v7;
  v10 = [v8 analyticsEventBuilder];
  v11 = v10;
  if (!v7)
  {
    v16 = v0[15];
    [v10 recordWorkoutMediaEnabled_];
LABEL_14:

    goto LABEL_15;
  }

  swift_getKeyPath();
  v0[11] = v9;
  lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, 255, type metadata accessor for MediaPlaybackConfigurationItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
  swift_beginAccess();
  [v11 recordWorkoutMediaEnabled_];

  swift_getKeyPath();
  v0[12] = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
  swift_beginAccess();
  if (v9[v13] != 1)
  {
    swift_getKeyPath();
    v0[13] = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
    swift_beginAccess();
    v18 = *&v9[v17];
    v19 = v0[15];
    if (!v18)
    {

      v11 = v19;
      goto LABEL_15;
    }

    v11 = v18;
    v16 = [v19 analyticsEventBuilder];
    v20 = [v11 bundleID];
    if (!v20)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = MEMORY[0x20F2E6C00](v21);
    }

    v22 = v0[15];
    [v16 recordWorkoutMediaSource_];

    goto LABEL_14;
  }

  v14 = v0[15];
  v11 = [v14 analyticsEventBuilder];
  v15 = MEMORY[0x20F2E6C00](0x6C7070612E6D6F63, 0xEF636973754D2E65);
  [v11 recordWorkoutMediaSource_];

LABEL_15:
LABEL_16:
  v23 = v0[1];

  return v23();
}

{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 112);
  v5 = *v0;

  return MEMORY[0x2822009F8](MediaPlaybackController.reportMediaPlaybackConfigurationAnalytics(), v3, 0);
}

{
  v1 = v0[15];
  v2 = *(v0[14] + 120);
  v3 = v2;
  v4 = [v1 analyticsEventBuilder];
  v5 = v4;
  if (!v2)
  {
    v10 = v0[15];
    [v4 recordWorkoutMediaEnabled_];
LABEL_9:

    goto LABEL_10;
  }

  swift_getKeyPath();
  v0[11] = v3;
  lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, 255, type metadata accessor for MediaPlaybackConfigurationItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
  swift_beginAccess();
  [v5 recordWorkoutMediaEnabled_];

  swift_getKeyPath();
  v0[12] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
  swift_beginAccess();
  if (v3[v7] == 1)
  {
    v8 = v0[15];
    v5 = [v8 analyticsEventBuilder];
    v9 = MEMORY[0x20F2E6C00](0x6C7070612E6D6F63, 0xEF636973754D2E65);
    [v5 recordWorkoutMediaSource_];

    goto LABEL_10;
  }

  swift_getKeyPath();
  v0[13] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v12 = *&v3[v11];
  v13 = v0[15];
  if (v12)
  {
    v5 = v12;
    v10 = [v13 analyticsEventBuilder];
    v14 = [v5 bundleID];
    if (!v14)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = MEMORY[0x20F2E6C00](v15);
    }

    v16 = v0[15];
    [v10 recordWorkoutMediaSource_];

    goto LABEL_9;
  }

  v5 = v13;
LABEL_10:

  v17 = v0[1];

  return v17();
}

unint64_t MediaPlaybackError.description.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000010;
  if (a1 <= 4u)
  {
    v7 = 0xD00000000000001CLL;
    v8 = 0xD000000000000017;
    if (a1 != 3)
    {
      v8 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    v3 = 0xD000000000000012;
    if (a1 != 9)
    {
      v3 = 0xD000000000000017;
    }

    if (a1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001BLL;
    if (a1 == 6)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 == 5)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = v4;
    }

    if (a1 <= 7u)
    {
      return v5;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MediaPlaybackError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MediaPlaybackError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError()
{
  result = lazy protocol witness table cache variable for type MediaPlaybackError and conformance MediaPlaybackError;
  if (!lazy protocol witness table cache variable for type MediaPlaybackError and conformance MediaPlaybackError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackError and conformance MediaPlaybackError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaPlaybackError and conformance MediaPlaybackError;
  if (!lazy protocol witness table cache variable for type MediaPlaybackError and conformance MediaPlaybackError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackError and conformance MediaPlaybackError);
  }

  return result;
}

uint64_t partial apply for closure #1 in MediaPlaybackController.setActivityType(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in MediaPlaybackController.setActivityType(_:);

  return closure #1 in MediaPlaybackController.setActivityType(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #2 in MediaPlaybackController.prepareMediaPlayback()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in MediaPlaybackController.prepareMediaPlayback();

  return closure #2 in MediaPlaybackController.prepareMediaPlayback()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in MediaPlaybackController.startMediaPlayback()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in MediaPlaybackController.startMediaPlayback();

  return closure #1 in MediaPlaybackController.startMediaPlayback()();
}

uint64_t partial apply for closure #2 in MediaPlaybackController.startMediaPlayback()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in MediaPlaybackController.startMediaPlayback();

  return closure #2 in MediaPlaybackController.startMediaPlayback()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in MediaPlaybackController.setActiveWorkout(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in MediaPlaybackController.setActiveWorkout(_:);

  return closure #1 in MediaPlaybackController.setActiveWorkout(_:)(a1, v4, v5, v7, v6);
}

uint64_t dispatch thunk of MediaPlaybackController.stopMediaPlayback()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of MediaPlaybackController.stopMediaPlayback();

  return v6();
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of MediaPlaybackController.resetPlaybackController()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x230);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of MediaPlaybackController.resetPlaybackController();

  return v6();
}

uint64_t dispatch thunk of MediaPlaybackController.prepareMediaPlayback()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x258);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of MediaPlaybackController.prepareMediaPlayback();

  return v6();
}

uint64_t dispatch thunk of MediaPlaybackController.startMediaPlayback()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x260);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of MediaPlaybackController.startMediaPlayback();

  return v6();
}

uint64_t dispatch thunk of MediaPlaybackController.ppt_setupMediaConfiguration(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x298);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of MediaPlaybackController.ppt_setupMediaConfiguration(for:);

  return v8(a1);
}

uint64_t getEnumTagSinglePayload for MediaPlaybackError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaPlaybackError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _sSo17MPCPlayerResponseCMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_113(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t closure #1 in MediaPlaybackController.setActiveWorkout(_:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = closure #1 in MediaPlaybackController.setActiveWorkout(_:)partial apply;

  return closure #1 in MediaPlaybackController.setActiveWorkout(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for @objc closure #1 in MediaPlaybackController.ppt_setupMediaConfiguration(for:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for @objc closure #1 in MediaPlaybackController.ppt_setupMediaConfiguration(for:);

  return @objc closure #1 in MediaPlaybackController.ppt_setupMediaConfiguration(for:)(v2, v3, v4);
}

uint64_t partial apply for closure #1 in MediaPlaybackController.handlePickableRoutesChangedNotification(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in MediaPlaybackController.handlePickableRoutesChangedNotification(_:);

  return closure #1 in MediaPlaybackController.handlePickableRoutesChangedNotification(_:)();
}

uint64_t partial apply for closure #1 in MediaPlaybackController.handleAnnouncerDidStop(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MediaPlaybackController.handleAnnouncerDidStop(_:);

  return closure #1 in MediaPlaybackController.handleAnnouncerDidStop(_:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in MediaPlaybackController.handleAnnouncerWillStart(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MediaPlaybackController.handleAnnouncerWillStart(_:);

  return closure #1 in MediaPlaybackController.handleAnnouncerWillStart(_:)(a1, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in MediaPlaybackController.startMediaPlayback()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in MediaPlaybackController.startMediaPlayback();

  return @objc closure #1 in MediaPlaybackController.startMediaPlayback()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TRTA_154()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sIeghH_IeAgH_TRTA_154TQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_159(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeAgH_ytIeAgHr_TRTA_159TQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t partial apply for @objc closure #1 in MediaPlaybackController.prepareMediaPlayback()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in MediaPlaybackController.prepareMediaPlayback();

  return @objc closure #1 in MediaPlaybackController.prepareMediaPlayback()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TRTA_169()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sIeghH_IeAgH_TRTA_169TQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeAgH_ytIeAgHr_TRTA_174TQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t partial apply for @objc closure #1 in MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for @objc closure #1 in MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);

  return @objc closure #1 in MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(v2, v3, v4);
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sIeghH_IeAgH_TRTA_184()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sIeghH_IeAgH_TRTA_184TQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_189(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeAgH_ytIeAgHr_TRTA_189TQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t partial apply for @objc closure #1 in MediaPlaybackController.resetPlaybackController()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in MediaPlaybackController.resetPlaybackController();

  return @objc closure #1 in MediaPlaybackController.resetPlaybackController()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TRTA_202()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sIeghH_IeAgH_TRTA_202TQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_207(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeAgH_ytIeAgHr_TRTA_207TQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t objectdestroyTm_10()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t closure #1 in MediaPlaybackController.setActivityType(_:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = closure #1 in MediaPlaybackController.setActivityType(_:)partial apply;

  return closure #1 in MediaPlaybackController.setActivityType(_:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_148Tm()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in MediaPlaybackController.stopMediaPlayback()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in MediaPlaybackController.stopMediaPlayback();

  return @objc closure #1 in MediaPlaybackController.stopMediaPlayback()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TRTA_222()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sIeghH_IeAgH_TRTA_222TQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t objectdestroy_126Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_227(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeAgH_ytIeAgHr_TRTA_227TQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t specialized static SmartRoutingStatus.fetch()()
{
  return MEMORY[0x2822009F8](specialized static SmartRoutingStatus.fetch(), 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static AudioRoutingControlManager.shared;
  *(v0 + 16) = static AudioRoutingControlManager.shared;

  return MEMORY[0x2822009F8](specialized static SmartRoutingStatus.fetch(), v1, 0);
}

{
  v1 = v0[2];
  if (*(v1 + 120))
  {
    v2 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, 255, type metadata accessor for AudioRoutingControlManager);
    v3 = *(MEMORY[0x277D859E0] + 4);
    v4 = swift_task_alloc();
    v0[5] = v4;
    type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
    *v4 = v0;
    v4[1] = specialized static SmartRoutingStatus.fetch();
    v6 = v0[2];

    return MEMORY[0x2822007B8](v0 + 6, v1, v2, 0xD000000000000026, 0x800000020B455B10, _s11WorkoutCore26AudioRoutingControlManagerC36areHeadphonesNearbyAndEligibleToPlaySo07AASmartd6DeviceiJ15StreamingStatusVyYaKFyScCyAFs5NeverOGXEfU_TA_1, v6, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[3] = v7;
    *v7 = v0;
    v7[1] = specialized static SmartRoutingStatus.fetch();
    v8 = v0[2];

    return AudioRoutingControlManager.activate()();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v4 = specialized static SmartRoutingStatus.fetch();
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 16);
    v4 = specialized static SmartRoutingStatus.fetch();
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](specialized static SmartRoutingStatus.fetch(), v2, 0);
}

{
  return (*(v0 + 8))(((*(v0 + 48) & 0xFE) == 2) | ((*(v0 + 48) == 1) << 8));
}

{
  v1 = *(v0 + 16);
  v2 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, 255, type metadata accessor for AudioRoutingControlManager);
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
  *v4 = v0;
  v4[1] = specialized static SmartRoutingStatus.fetch();
  v6 = *(v0 + 16);

  return MEMORY[0x2822007B8](v0 + 48, v1, v2, 0xD000000000000026, 0x800000020B455B10, _s11WorkoutCore26AudioRoutingControlManagerC36areHeadphonesNearbyAndEligibleToPlaySo07AASmartd6DeviceiJ15StreamingStatusVyYaKFyScCyAFs5NeverOGXEfU_TA_1, v6, v5);
}

{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Failed to fetch smart routing status:%@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(2);
}

uint64_t lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in MediaPlaybackController.updateActivityType(to:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in MediaPlaybackController.updateActivityType(to:);

  return closure #1 in MediaPlaybackController.updateActivityType(to:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t objectdestroy_111Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t WOAVRoute.avRouteName.getter(uint64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore9WOAVRoute_routeDictionary);
  v3 = *a1;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
    v8 = v7;

    if (v8)
    {
      outlined init with copy of Any(*(v2 + 56) + 32 * v6, v11);
      if (swift_dynamicCast())
      {
        return v10;
      }
    }
  }

  else
  {
  }

  return 0;
}

id WOAVRoute.picked.getter(uint64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore9WOAVRoute_routeDictionary);
  v3 = *a1;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
    v8 = v7;

    if (v8)
    {
      outlined init with copy of Any(*(v2 + 56) + 32 * v6, v12);
      type metadata accessor for NSNumber();
      if (swift_dynamicCast())
      {
        v9 = [v11 BOOLValue];

        return v9;
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t WOAVRoute.description.getter()
{
  _StringGuts.grow(_:)(107);
  MEMORY[0x20F2E6D80](0x74756F522820200ALL, 0xEF203A656D614E65);
  v0 = WOAVRoute.routeName.getter();
  MEMORY[0x20F2E6D80](v0);

  MEMORY[0x20F2E6D80](0x74756F525641202CLL, 0xEF203A656D614E65);
  v1 = WOAVRoute.avRouteName.getter();
  MEMORY[0x20F2E6D80](v1);

  MEMORY[0x20F2E6D80](0x614D54427369202CLL, 0xEF203A646567616ELL);
  v2 = WOAVRoute.isBTManaged.getter();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v4, v5);

  MEMORY[0x20F2E6D80](0x64656B636950202CLL, 0xE90000000000003ALL);
  v6 = WOAVRoute.picked.getter();
  v7 = (v6 & 1) == 0;
  if (v6)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v7)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v8, v9);

  MEMORY[0x20F2E6D80](0xD00000000000001CLL, 0x800000020B46D130);
  if (WOAVRoute.inEarDetectSupported.getter() & 1) != 0 && (WOAVRoute.inEarDetectEnabled.getter())
  {
    v10 = 0xE400000000000000;
    v11 = 1702195828;
  }

  else
  {
    v10 = 0xE500000000000000;
    v11 = 0x65736C6166;
  }

  MEMORY[0x20F2E6D80](v11, v10);

  MEMORY[0x20F2E6D80](0x697463417369202CLL, 0xEC000000203A6576);
  v12 = WOAVRoute.isActive.getter();
  v13 = (v12 & 1) == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v14, v15);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return 0;
}

id WOAVRoute.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WOAVRoute();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized static WOAVRoute.pickableRoutes(for:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  v6 = MEMORY[0x20F2E6C00](a1, a2);
  v7 = [v5 pickableRoutesForCategory_];

  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = MEMORY[0x277D84F90];
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    do
    {
      outlined init with copy of Any(v10, v19);
      outlined init with copy of Any(v19, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      swift_dynamicCast();
      v11 = v17;
      v12 = type metadata accessor for WOAVRoute();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____TtC11WorkoutCore9WOAVRoute_routeDictionary] = v11;
      v16.receiver = v13;
      v16.super_class = v12;
      objc_msgSendSuper2(&v16, sel_init);
      v14 = __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x20F2E6F30](v14);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 += 32;
      --v9;
    }

    while (v9);
  }

  else
  {
  }
}

double IntervalWorkoutTracker.currentCadence.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v1 + 160);
}

double IntervalWorkoutTracker.averageCadence.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v1 + 152);
}

void MirroredHostProtocolVersion.init(protobuf:)(uint64_t *a1)
{
  if ((a1[1] & 1) == 0)
  {
    v1 = *a1;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.dataLink);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 134218242;
      *(v4 + 4) = v1;
      *(v4 + 12) = 2080;
      *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C41696C6970616ELL, 0xED000064656E6769, &v7);
      _os_log_impl(&dword_20AEA4000, oslog, v3, "Unrecognized MirroredHostProtocolVersion rawValue: %ld, defaulted to %s", v4, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x20F2E9420](v5, -1, -1);
      MEMORY[0x20F2E9420](v4, -1, -1);
    }

    else
    {
    }
  }
}

void protocol witness for MirroredEnumProtocol.init(protobuf:) in conformance MirroredHostProtocolVersion(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  MirroredHostProtocolVersion.init(protobuf:)(&v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredHostProtocolVersion()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostProtocolVersion()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MirroredHostProtocolVersion(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredHostProtocolVersion and conformance MirroredHostProtocolVersion();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredHostProtocolVersion and conformance MirroredHostProtocolVersion()
{
  result = lazy protocol witness table cache variable for type MirroredHostProtocolVersion and conformance MirroredHostProtocolVersion;
  if (!lazy protocol witness table cache variable for type MirroredHostProtocolVersion and conformance MirroredHostProtocolVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostProtocolVersion and conformance MirroredHostProtocolVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostProtocolVersion and conformance MirroredHostProtocolVersion;
  if (!lazy protocol witness table cache variable for type MirroredHostProtocolVersion and conformance MirroredHostProtocolVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostProtocolVersion and conformance MirroredHostProtocolVersion);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredHostProtocolVersion(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MirroredHostProtocolVersion(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t IntervalWorkoutProgressionData.__allocating_init(role:activityMoveMode:)(__int128 *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  IntervalWorkoutProgressionData.init(role:activityMoveMode:)(a1, a2);
  return v7;
}

id IntervalWorkoutProgressionData.role.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return outlined copy of IntervalWorkoutProgressionData.Role(v2, v3, v4);
}

uint64_t IntervalWorkoutProgressionData.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 72);
  return result;
}

uint64_t IntervalWorkoutProgressionData.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*IntervalWorkoutProgressionData.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return IntervalWorkoutProgressionData.delegate.modify;
}

void IntervalWorkoutProgressionData.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 72) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
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

id IntervalWorkoutProgressionData.workoutSettingsManager.getter()
{
  v1 = v0[10];
  v2 = v1;
  if (v1 != 1)
  {
    goto LABEL_7;
  }

  v3 = v0[4];
  if (!v3)
  {
    v2 = 0;
    v8 = 1;
    goto LABEL_6;
  }

  v4 = v0[5];
  v5 = v3;
  v6 = v4;

  result = [objc_allocWithZone(MEMORY[0x277D0A828]) initWithWorkoutActivityType:v6 activityMoveMode:v0[7]];
  if (result)
  {
    v2 = result;

    v8 = v0[10];
LABEL_6:
    v0[10] = v2;
    v9 = v2;
    outlined consume of FIUIWorkoutSettingsManager??(v8);
LABEL_7:
    outlined copy of FIUIWorkoutSettingsManager??(v1);
    return v2;
  }

  __break(1u);
  return result;
}

void IntervalWorkoutProgressionData.workoutSettingsManager.setter(uint64_t a1)
{
  v2 = *(v1 + 80);
  *(v1 + 80) = a1;
  outlined consume of FIUIWorkoutSettingsManager??(v2);
}

void (*IntervalWorkoutProgressionData.workoutSettingsManager.modify(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = IntervalWorkoutProgressionData.workoutSettingsManager.getter();
  return IntervalWorkoutProgressionData.workoutSettingsManager.modify;
}

void IntervalWorkoutProgressionData.workoutSettingsManager.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + 80);
  *(v3 + 80) = *a1;
  if (a2)
  {
    v5 = v2;
    outlined consume of FIUIWorkoutSettingsManager??(v4);
  }

  else
  {

    outlined consume of FIUIWorkoutSettingsManager??(v4);
  }
}

uint64_t IntervalWorkoutProgressionData.distance.setter(Swift::Double a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 88) = a1;
  v4 = *(v1 + 16);
  if (v4)
  {
    swift_beginAccess();
    v5 = *(v2 + 96);
    v6 = v4;
    SegmentPaceAccumulator.updateDistance(_:duration:)(a1, v5);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v2 + 72);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(1, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

void (*IntervalWorkoutProgressionData.distance.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.distance.modify;
}

void IntervalWorkoutProgressionData.distance.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    v5 = *(v4 + 2);
    if (v5)
    {
      v6 = v4[11];
      swift_beginAccess();
      v7 = v4[12];
      v8 = v5;
      SegmentPaceAccumulator.updateDistance(_:duration:)(v6, v7);

      v9 = v3[6];
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v3[6] + 72);
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(1, ObjectType, v10);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t IntervalWorkoutProgressionData.duration.setter(Swift::Double a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 96) = a1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v4;
    SegmentPaceAccumulator.updateDuration(_:)(a1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v2 + 72);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(3, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*IntervalWorkoutProgressionData.duration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.duration.modify;
}

uint64_t IntervalWorkoutProgressionData.duration.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = *(v5 + 96);
      v8 = v6;
      SegmentPaceAccumulator.updateDuration(_:)(v7);

      v9 = *(a1 + 24);
    }

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = *(*(a1 + 24) + 72);
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(3, ObjectType, v10);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t IntervalWorkoutProgressionData.activeEnergy.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
  v7[3] = &type metadata for WorkoutFeatures;
  v7[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v7[0]) = 3;
  v3 = isFeatureEnabled(_:)();
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (v3)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = *(v1 + 72);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(2, ObjectType, v5);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*IntervalWorkoutProgressionData.activeEnergy.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.activeEnergy.modify;
}

void IntervalWorkoutProgressionData.activeEnergy.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v3[3] = &type metadata for WorkoutFeatures;
    v3[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    *v3 = 3;
    v4 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v3);
    if (v4)
    {
      v5 = v3[5];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v3[5] + 72);
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(2, ObjectType, v6);
        swift_unknownObjectRelease();
      }
    }
  }

  free(v3);
}

uint64_t key path setter for IntervalWorkoutProgressionData.averagePace : IntervalWorkoutProgressionData(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 72);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(8, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t IntervalWorkoutProgressionData.averagePace.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(8, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*IntervalWorkoutProgressionData.averagePace.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.averagePace.modify;
}

uint64_t IntervalWorkoutProgressionData.currentPace.didset()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 72);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(4, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v3 = *(v0 + 128);
  swift_beginAccess();
  v4 = *(v0 + 120);
  if (v3 > v4)
  {
    v4 = v3;
  }

  *(v0 + 128) = v4;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v0 + 72);
    v7 = swift_getObjectType();
    (*(v6 + 8))(48, v7, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t IntervalWorkoutProgressionData.currentPace.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
  return IntervalWorkoutProgressionData.currentPace.didset();
}

uint64_t (*IntervalWorkoutProgressionData.currentPace.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.currentPace.modify;
}

uint64_t IntervalWorkoutProgressionData.currentPace.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return IntervalWorkoutProgressionData.currentPace.didset();
  }

  return result;
}

uint64_t key path setter for IntervalWorkoutProgressionData.fastestPace : IntervalWorkoutProgressionData(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 128) = v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 72);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(48, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t IntervalWorkoutProgressionData.fastestPace.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(48, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*IntervalWorkoutProgressionData.fastestPace.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.fastestPace.modify;
}

uint64_t key path setter for IntervalWorkoutProgressionData.averagePower : IntervalWorkoutProgressionData(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 136) = v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 72);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(12, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t IntervalWorkoutProgressionData.averagePower.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 136) = a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(12, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*IntervalWorkoutProgressionData.averagePower.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.averagePower.modify;
}

uint64_t key path setter for IntervalWorkoutProgressionData.currentPower : IntervalWorkoutProgressionData(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 144) = v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 72);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(11, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t IntervalWorkoutProgressionData.currentPower.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(11, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*IntervalWorkoutProgressionData.currentPower.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.currentPower.modify;
}

uint64_t key path setter for IntervalWorkoutProgressionData.averageCadence : IntervalWorkoutProgressionData(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 152) = v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 72);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(16, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t IntervalWorkoutProgressionData.averageCadence.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(16, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*IntervalWorkoutProgressionData.averageCadence.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.averageCadence.modify;
}

uint64_t key path setter for IntervalWorkoutProgressionData.currentCadence : IntervalWorkoutProgressionData(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 160) = v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 72);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(15, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t IntervalWorkoutProgressionData.currentCadence.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 160) = a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(15, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*IntervalWorkoutProgressionData.currentCadence.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.currentCadence.modify;
}

uint64_t IntervalWorkoutProgressionData.averagePace.modify(uint64_t a1, char a2, uint64_t a3)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 24);
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(*(a1 + 24) + 72);
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(a3, ObjectType, v8);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t key path getter for IntervalWorkoutProgressionData.distanceTimestamp : IntervalWorkoutProgressionData@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for IntervalWorkoutProgressionData.distanceTimestamp : IntervalWorkoutProgressionData(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t IntervalWorkoutProgressionData.distanceTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t IntervalWorkoutProgressionData.distanceTimestamp.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t key path setter for IntervalWorkoutProgressionData.distanceGoalAchievedDate : IntervalWorkoutProgressionData(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Date?(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
  swift_beginAccess();
  outlined assign with take of Date?(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t IntervalWorkoutProgressionData.distanceGoalAchievedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1);
}

uint64_t IntervalWorkoutProgressionData.distanceGoalAchievedDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t key path setter for IntervalWorkoutProgressionData.distanceGoalAchievedDuration : IntervalWorkoutProgressionData(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
  result = swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  if ((v3 & 1) == 0 && v2 > 0.0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = *(v4 + 72);
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(ObjectType, v7, v2);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t IntervalWorkoutProgressionData.distanceGoalAchievedDuration.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t IntervalWorkoutProgressionData.distanceGoalAchievedDuration.setter(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = v2 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
  result = swift_beginAccess();
  *v6 = *&a1;
  *(v6 + 8) = v5;
  if ((a2 & 1) == 0)
  {
    v8 = *&a1;
    if (*&a1 > 0.0)
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v9 = *(v2 + 72);
        ObjectType = swift_getObjectType();
        (*(v9 + 16))(ObjectType, v9, v8);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void (*IntervalWorkoutProgressionData.distanceGoalAchievedDuration.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.distanceGoalAchievedDuration.modify;
}

void IntervalWorkoutProgressionData.distanceGoalAchievedDuration.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3] + v3[4];
    if ((*(v4 + 8) & 1) == 0)
    {
      v5 = *v4;
      if (*v4 > 0.0)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v6 = *(v3[3] + 72);
          ObjectType = swift_getObjectType();
          (*(v6 + 16))(ObjectType, v6, v5);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  free(v3);
}

uint64_t IntervalWorkoutProgressionData.init(role:activityMoveMode:)(__int128 *a1, uint64_t a2)
{
  v9 = *a1;
  v4 = *(a1 + 2);
  *(v2 + 72) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 80) = 1;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  Date.init()();
  v5 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v7 = v2 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v2 + 32) = v9;
  *(v2 + 48) = v4;
  *(v2 + 56) = a2;
  IntervalWorkoutProgressionData.createAccumulators()();
  return v2;
}

id outlined copy of IntervalWorkoutProgressionData.Role(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

void outlined consume of FIUIWorkoutSettingsManager??(id a1)
{
  if (a1 != 1)
  {
  }
}

id outlined copy of FIUIWorkoutSettingsManager??(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void IntervalWorkoutProgressionData.createAccumulators()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v49 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0[4];
  if (v11)
  {
    v13 = v0[5];
    v12 = v0[6];
    v14 = v11;
    v15 = v13;
    v52 = v12;
    v16 = IntervalWorkoutProgressionData.workoutSettingsManager.getter();
    if (v16)
    {
      v17 = v16;
      v51 = v7;
      if (one-time initialization token for intervalWorkout != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static WOLog.intervalWorkout);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = v14;
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_20AEA4000, v19, v20, "create accumulators for interval progression data", v22, 2u);
        v23 = v22;
        v14 = v21;
        MEMORY[0x20F2E9420](v23, -1, -1);
      }

      if (FIUIWorkoutSettingsManager.supportsPace.getter())
      {
        v24 = type metadata accessor for SegmentPaceAccumulator();
        v25 = objc_allocWithZone(v24);
        *&v25[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
        *&v25[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
        *&v25[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
        *&v25[OBJC_IVAR___WOSegmentPaceAccumulator_paceForceCalculationTimeout] = 0x4024000000000000;
        v26 = v14;
        v27 = v14;
        v28 = v15;
        v50 = v15;
        v29 = v28;
        v30 = [v28 effectiveTypeIdentifier];
        *&v25[OBJC_IVAR___WOSegmentPaceAccumulator_activityType] = v30;
        v53.receiver = v25;
        v53.super_class = v24;
        v31 = objc_msgSendSuper2(&v53, sel_initWithBuilder_, v27);

        v14 = v26;
        v32 = v1[2];
        v1[2] = v31;
        v33 = v31;

        v34 = swift_allocObject();
        swift_weakInit();
        v58 = partial apply for closure #1 in IntervalWorkoutProgressionData.createAccumulators();
        v59 = v34;
        aBlock = MEMORY[0x277D85DD0];
        v55 = 1107296256;
        v56 = thunk for @escaping @callee_guaranteed () -> ();
        v57 = &block_descriptor_55_3;
        v35 = _Block_copy(&aBlock);

        [v33 startAccumulatingWithUpdateHandler_];
        v36 = v35;
        v15 = v50;
        _Block_release(v36);
      }

      if (FIUIWorkoutSettingsManager.supportsPowerMetrics.getter())
      {
        static Date.now.getter();
        v37 = v1[3];
        if (v37)
        {
          goto LABEL_14;
        }

        v50 = v14;
        v38 = v15;
        v39 = objc_allocWithZone(type metadata accessor for AveragePowerAccumulator());
        v40 = v52;
        v41 = AveragePowerAccumulator.init(powerAccumulator:)(v40);
        v42 = v1[3];
        v1[3] = v41;
        v43 = v41;

        if (v43)
        {
          v44 = swift_allocObject();
          swift_weakInit();
          v58 = partial apply for closure #2 in IntervalWorkoutProgressionData.createAccumulators();
          v59 = v44;
          aBlock = MEMORY[0x277D85DD0];
          v55 = 1107296256;
          v56 = thunk for @escaping @callee_guaranteed () -> ();
          v57 = &block_descriptor_85;
          v45 = _Block_copy(&aBlock);

          [v43 setUpdateHandler_];
          _Block_release(v45);
        }

        v37 = v1[3];
        v15 = v38;
        v14 = v50;
        if (v37)
        {
LABEL_14:
          v46 = v51;
          (*(v51 + 16))(v5, v10, v6);
          (*(v46 + 56))(v5, 0, 1, v6);
          v47 = v37;
          AveragePowerAccumulator.reset(with:)(v5);

          outlined destroy of Date?(v5);
          (*(v46 + 8))(v10, v6);
        }

        else
        {

          (*(v51 + 8))(v10, v6);
        }
      }

      else
      {
      }
    }

    else
    {

      v48 = v52;
    }
  }
}

uint64_t closure #1 in IntervalWorkoutProgressionData.createAccumulators()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v3 = 0.0;
    if (Strong)
    {
      v4 = *(Strong + 16);
      v5 = v4;

      if (v4)
      {
        v7 = *&v5[OBJC_IVAR___WOSegmentPaceAccumulator_duration];
        if (v7 > 0.0 && *&v5[OBJC_IVAR___WOSegmentPaceAccumulator_distance] > 0.0)
        {
          if (v7 - *&v5[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] < 10.0)
          {
            v8 = *&v5[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration];
          }

          v3 = MEMORY[0x20F2E8430](v6);
        }
      }
    }

    swift_beginAccess();
    *(v1 + 112) = v3;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v1 + 72);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(8, ObjectType, v9);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t closure #2 in IntervalWorkoutProgressionData.createAccumulators()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v3 = 0.0;
    if (Strong)
    {
      v4 = *(Strong + 24);
      v5 = v4;

      if (v4)
      {
        v6 = objc_opt_self();
        v7 = [v6 wattUnit];
        v8 = *&v5[OBJC_IVAR___WOAveragePowerAccumulator_statisticAccumulator];
        v9 = *(v8 + 24);
        if (v9 >= 1)
        {
          v3 = *(v8 + 16) / v9;
        }

        v10 = [objc_opt_self() quantityWithUnit:v7 doubleValue:v3];

        v11 = [v6 wattUnit];
        [v10 doubleValueForUnit_];
        v3 = v12;
      }
    }

    swift_beginAccess();
    *(v1 + 136) = v3;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v1 + 72);
      ObjectType = swift_getObjectType();
      (*(v13 + 8))(12, ObjectType, v13);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void IntervalWorkoutProgressionData.destroyAccumulators()()
{
  if (v0[4])
  {
    v1 = v0;
    v2 = IntervalWorkoutProgressionData.workoutSettingsManager.getter();
    if (v2)
    {
      v3 = v2;
      if (one-time initialization token for intervalWorkout != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static WOLog.intervalWorkout);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_20AEA4000, v5, v6, "destroy accumulators for interval progression data", v7, 2u);
        MEMORY[0x20F2E9420](v7, -1, -1);
      }

      if (FIUIWorkoutSettingsManager.supportsPace.getter())
      {
        v8 = v1[2];
        v1[2] = 0;

        swift_beginAccess();
        v1[14] = 0;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = v1[9];
          ObjectType = swift_getObjectType();
          (*(v9 + 8))(8, ObjectType, v9);
          swift_unknownObjectRelease();
        }

        swift_beginAccess();
        v1[15] = 0;
        IntervalWorkoutProgressionData.currentPace.didset();
        swift_beginAccess();
        v1[16] = 0;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = v1[9];
          v12 = swift_getObjectType();
          (*(v11 + 8))(48, v12, v11);
          swift_unknownObjectRelease();
        }
      }

      if (FIUIWorkoutSettingsManager.supportsPowerMetrics.getter())
      {
        v13 = v1[3];
        v1[3] = 0;

        swift_beginAccess();
        v1[17] = 0;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v14 = v1[9];
          v15 = swift_getObjectType();
          (*(v14 + 8))(12, v15, v14);
          swift_unknownObjectRelease();
        }

        swift_beginAccess();
        v1[18] = 0;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v16 = v1[9];
          v17 = swift_getObjectType();
          (*(v16 + 8))(11, v17, v16);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t IntervalWorkoutProgressionData.achievedGoal(goal:checkDistanceIsWithinRange:)(void *a1, char a2)
{
  [a1 doubleValue];
  v6 = v5;
  result = [a1 goalTypeIdentifier];
  if (result <= 1)
  {
    if (!result)
    {
      return result;
    }

    if (result == 1)
    {
      if (a2)
      {
        swift_beginAccess();
        v8 = v2[11];
        if (v6 > v8)
        {
          return v6 - v8 < 0.1;
        }

        return 1;
      }

      swift_beginAccess();
      v9 = v2[11];
      return v6 <= v9;
    }

LABEL_25:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (result == 3)
  {
    swift_beginAccess();
    v9 = v2[13];
    return v6 <= v9;
  }

  if (result != 2)
  {
    goto LABEL_25;
  }

  v10 = [a1 requiredDistance];
  if (!v10 || (v11 = v10, v12 = [objc_opt_self() meterUnit], objc_msgSend(v11, sel_doubleValueForUnit_, v12), v14 = v13, v11, v12, v14 <= 0.0))
  {
    swift_beginAccess();
    v9 = v2[12];
    return v6 <= v9;
  }

  swift_beginAccess();
  v15 = v2[12];
  if (a2)
  {
    swift_beginAccess();
    v16 = v2[11];
    if (v14 <= v16)
    {
      return v6 <= v15;
    }

    result = v14 - v16 < 0.1;
  }

  else
  {
    swift_beginAccess();
    result = v14 <= v2[11];
  }

  if (v6 > v15)
  {
    return 0;
  }

  return result;
}

void IntervalWorkoutProgressionData.rollDataIntoAccumulated(accumulated:with:lapLength:)(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  LODWORD(v249) = a6;
  v241 = *&a5;
  v243 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v238 - v13;
  swift_beginAccess();
  v15 = *(v7 + 88);
  v247 = (v7 + 96);
  swift_beginAccess();
  v16 = *(v7 + 96);
  v240 = a2;
  static Date.now.getter();
  v17 = v7 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
  swift_beginAccess();
  v245 = *v17;
  v244 = *(v17 + 8);
  IntervalWorkoutProgressionData.destroyAccumulators()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = v251[0];
  v19 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v20 = *(a4 + v19);
  if ([v20 effectiveTypeIdentifier] == 46)
  {
    v21 = [v20 swimmingLocationType];

    v22 = v21 == 1;
  }

  else
  {

    v22 = 0;
  }

  v23 = IntervalWorkoutProgressionData.achievedGoal(goal:checkDistanceIsWithinRange:)(v18, v22);
  v248 = v7;
  v246 = a4;
  v242 = v18;
  if (v23)
  {
    [v18 doubleValue];
    v25 = v24;
    v26 = [v18 goalTypeIdentifier];
    if (v26 <= 1)
    {
      if (v26)
      {
        if (v26 == 1)
        {
          v249 = v14;
          v27 = (*(v7 + 88) - v25) / (*(v7 + 88) / *v247);
          swift_beginAccess();
          v28 = v25 + *(a3 + 88);
          *(a3 + 88) = v28;
          v29 = *(a3 + 16);
          if (v29)
          {
            swift_beginAccess();
            v30 = *(a3 + 96);
            v31 = v29;
            SegmentPaceAccumulator.updateDistance(_:duration:)(v28, v30);
          }

          v16 = v16 - v27;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v32 = *(a3 + 72);
            ObjectType = swift_getObjectType();
            (*(v32 + 8))(1, ObjectType, v32);
            swift_unknownObjectRelease();
          }

          swift_beginAccess();
          v34 = v16 + *(a3 + 96);
          *(a3 + 96) = v34;
          v35 = *(a3 + 16);
          if (v35)
          {
            v36 = v35;
            SegmentPaceAccumulator.updateDuration(_:)(v34);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v37 = *(a3 + 72);
            v38 = swift_getObjectType();
            (*(v37 + 8))(3, v38, v37);
            swift_unknownObjectRelease();
          }

          swift_beginAccess();
          v39 = *(v7 + 104);
          swift_beginAccess();
          *(a3 + 104) = v39 + *(a3 + 104);
          v252 = &type metadata for WorkoutFeatures;
          v40 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
          v253 = v40;
          LOBYTE(v251[0]) = 3;
          v41 = isFeatureEnabled(_:)();
          __swift_destroy_boxed_opaque_existential_1(v251);
          if ((v41 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
          {
            v42 = *(a3 + 72);
            v43 = swift_getObjectType();
            (*(v42 + 8))(2, v43, v42);
            swift_unknownObjectRelease();
          }

          v44 = *(v7 + 88) - v25;
          *(v7 + 88) = v44;
          v45 = *(v7 + 16);
          if (v45)
          {
            v46 = *v247;
            v47 = v45;
            SegmentPaceAccumulator.updateDistance(_:duration:)(v44, v46);
          }

          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v48 = *(v7 + 72);
            v49 = swift_getObjectType();
            (*(v48 + 8))(1, v49, v48);
            swift_unknownObjectRelease();
          }

          *(v7 + 96) = v27;
          v50 = *(v7 + 16);
          if (v50)
          {
            v51 = v50;
            SegmentPaceAccumulator.updateDuration(_:)(v27);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v52 = *(v7 + 72);
            v53 = swift_getObjectType();
            (*(v52 + 8))(3, v53, v52);
            swift_unknownObjectRelease();
          }

          *(v7 + 104) = 0;
          v252 = &type metadata for WorkoutFeatures;
          v253 = v40;
          LOBYTE(v251[0]) = 3;
          v54 = isFeatureEnabled(_:)();
          __swift_destroy_boxed_opaque_existential_1(v251);
          if ((v54 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
          {
            v55 = *(v7 + 72);
            v56 = swift_getObjectType();
            (*(v55 + 8))(2, v56, v55);
            swift_unknownObjectRelease();
          }

          Date.addTimeInterval(_:)(-v27);
          v14 = v249;
          goto LABEL_138;
        }

LABEL_165:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

LABEL_71:
      v25 = v15;
      goto LABEL_138;
    }

    if (v26 == 3)
    {
      v249 = v19;
      swift_beginAccess();
      *(a3 + 104) = v25 + *(a3 + 104);
      v252 = &type metadata for WorkoutFeatures;
      v87 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
      v253 = v87;
      LOBYTE(v251[0]) = 3;
      v88 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v251);
      if (v88)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v89 = v17;
          v90 = v14;
          v91 = *(a3 + 72);
          v92 = swift_getObjectType();
          v93 = *(v91 + 8);
          v94 = v91;
          v14 = v90;
          v17 = v89;
          v93(2, v92, v94);
          swift_unknownObjectRelease();
        }
      }

      v95 = v248;
      swift_beginAccess();
      *(v95 + 104) = *(v95 + 104) - v25;
      v252 = &type metadata for WorkoutFeatures;
      v253 = v87;
      v7 = v95;
      LOBYTE(v251[0]) = 3;
      LOBYTE(v95) = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v251);
      if (v95)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v96 = *(v7 + 72);
          v97 = swift_getObjectType();
          (*(v96 + 8))(2, v97, v96);
          swift_unknownObjectRelease();
        }
      }

      v98 = *v247;
      swift_beginAccess();
      v99 = v98 + *(a3 + 96);
      *(a3 + 96) = v99;
      v100 = *(a3 + 16);
      if (v100)
      {
        v101 = v100;
        SegmentPaceAccumulator.updateDuration(_:)(v99);
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v19 = v249;
      if (Strong)
      {
        v103 = *(a3 + 72);
        v104 = swift_getObjectType();
        (*(v103 + 8))(3, v104, v103);
        swift_unknownObjectRelease();
      }

      v105 = *(v7 + 88);
      swift_beginAccess();
      v106 = v105 + *(a3 + 88);
      *(a3 + 88) = v106;
      v107 = *(a3 + 16);
      if (v107)
      {
        v108 = *(a3 + 96);
        v109 = v107;
        SegmentPaceAccumulator.updateDistance(_:duration:)(v106, v108);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v110 = *(a3 + 72);
        v111 = swift_getObjectType();
        (*(v110 + 8))(1, v111, v110);
        swift_unknownObjectRelease();
      }

      *(v7 + 96) = 0;
      v112 = *(v7 + 16);
      if (v112)
      {
        v113 = v112;
        SegmentPaceAccumulator.updateDuration(_:)(0.0);
      }

      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_70;
      }

      v114 = *(v7 + 72);
      v115 = swift_getObjectType();
      (*(v114 + 8))(3, v115, v114);
LABEL_69:
      swift_unknownObjectRelease();
LABEL_70:
      IntervalWorkoutProgressionData.distance.setter(0.0);
      goto LABEL_71;
    }

    if (v26 != 2)
    {
      goto LABEL_165;
    }

    v129 = [v18 requiredDistance];
    if (v129 && (v130 = v129, v131 = [objc_opt_self() meterUnit], objc_msgSend(v130, sel_doubleValueForUnit_, v131), v133 = v132, v130, v131, v133 > 0.0))
    {
      v249 = v14;
      if (*(v17 + 8))
      {
        v134 = v247;
      }

      else
      {
        v134 = v17;
      }

      v245 = *v134;
      v135 = (*(v7 + 88) - v133) / (*(v7 + 88) / *v247);
      swift_beginAccess();
      v136 = v133 + *(a3 + 88);
      *(a3 + 88) = v136;
      v137 = *(a3 + 16);
      if (v137)
      {
        swift_beginAccess();
        v138 = *(a3 + 96);
        v139 = v137;
        SegmentPaceAccumulator.updateDistance(_:duration:)(v136, v138);
      }

      v16 = v16 - v135;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v140 = *(a3 + 72);
        v141 = swift_getObjectType();
        (*(v140 + 8))(1, v141, v140);
        swift_unknownObjectRelease();
      }

      swift_beginAccess();
      v142 = v16 + *(a3 + 96);
      *(a3 + 96) = v142;
      v143 = *(a3 + 16);
      if (v143)
      {
        v144 = v143;
        SegmentPaceAccumulator.updateDuration(_:)(v142);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v145 = *(a3 + 72);
        v146 = swift_getObjectType();
        (*(v145 + 8))(3, v146, v145);
        swift_unknownObjectRelease();
      }

      swift_beginAccess();
      v147 = *(v7 + 104);
      swift_beginAccess();
      *(a3 + 104) = v147 + *(a3 + 104);
      v252 = &type metadata for WorkoutFeatures;
      v148 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
      v253 = v148;
      LOBYTE(v251[0]) = 3;
      v149 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v251);
      if ((v149 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
      {
        v150 = *(a3 + 72);
        v151 = swift_getObjectType();
        (*(v150 + 8))(2, v151, v150);
        swift_unknownObjectRelease();
      }

      v152 = *(v7 + 88) - v133;
      *(v7 + 88) = v152;
      v153 = *(v7 + 16);
      if (v153)
      {
        v154 = *v247;
        v155 = v153;
        SegmentPaceAccumulator.updateDistance(_:duration:)(v152, v154);
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v156 = *(v7 + 72);
        v157 = swift_getObjectType();
        (*(v156 + 8))(1, v157, v156);
        swift_unknownObjectRelease();
      }

      *(v7 + 96) = v135;
      v158 = *(v7 + 16);
      if (v158)
      {
        v159 = v158;
        SegmentPaceAccumulator.updateDuration(_:)(v135);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v160 = *(v7 + 72);
        v161 = swift_getObjectType();
        (*(v160 + 8))(3, v161, v160);
        swift_unknownObjectRelease();
      }

      *(v7 + 104) = 0;
      v252 = &type metadata for WorkoutFeatures;
      v253 = v148;
      LOBYTE(v251[0]) = 3;
      v162 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v251);
      if ((v162 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
      {
        v163 = *(v7 + 72);
        v164 = swift_getObjectType();
        (*(v163 + 8))(2, v164, v163);
        swift_unknownObjectRelease();
      }

      *v17 = 0;
      *(v17 + 8) = 1;
      Date.addTimeInterval(_:)(-v135);
      v244 = 0;
      v25 = v133;
      v14 = v249;
    }

    else
    {
      swift_beginAccess();
      v165 = v25 + *(a3 + 96);
      *(a3 + 96) = v165;
      v166 = *(a3 + 16);
      if (v166)
      {
        v167 = v166;
        SegmentPaceAccumulator.updateDuration(_:)(v165);
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v168 = *(a3 + 72);
        v169 = swift_getObjectType();
        (*(v168 + 8))(3, v169, v168);
        swift_unknownObjectRelease();
      }

      v170 = *(v7 + 96) - v25;
      *(v7 + 96) = v170;
      v171 = *(v7 + 16);
      if (v171)
      {
        v172 = v171;
        SegmentPaceAccumulator.updateDuration(_:)(v170);
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v173 = *(v7 + 72);
        v174 = swift_getObjectType();
        (*(v173 + 8))(3, v174, v173);
        swift_unknownObjectRelease();
      }

      swift_beginAccess();
      v175 = *(v7 + 104);
      swift_beginAccess();
      *(a3 + 104) = v175 + *(a3 + 104);
      v252 = &type metadata for WorkoutFeatures;
      v176 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
      v253 = v176;
      LOBYTE(v251[0]) = 3;
      v177 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v251);
      if ((v177 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
      {
        v239 = v17;
        v178 = *(a3 + 72);
        v179 = swift_getObjectType();
        v17 = v239;
        (*(v178 + 8))(2, v179, v178);
        swift_unknownObjectRelease();
      }

      v180 = v248;
      *(v248 + 104) = 0;
      v252 = &type metadata for WorkoutFeatures;
      v253 = v176;
      v7 = v180;
      LOBYTE(v251[0]) = 3;
      v181 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v251);
      if ((v181 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
      {
        v182 = *(v7 + 72);
        v183 = swift_getObjectType();
        (*(v182 + 8))(2, v183, v182);
        swift_unknownObjectRelease();
      }

      Date.addTimeInterval(_:)(-*v247);
      a4 = v246;
      if (v249)
      {
        v184 = *(v7 + 88);
        swift_beginAccess();
        v185 = v184 + *(a3 + 88);
        *(a3 + 88) = v185;
        v186 = *(a3 + 16);
        if (v186)
        {
          v187 = *(a3 + 96);
          v188 = v186;
          SegmentPaceAccumulator.updateDistance(_:duration:)(v185, v187);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v189 = *(a3 + 72);
          v190 = swift_getObjectType();
          (*(v189 + 8))(1, v190, v189);
          swift_unknownObjectRelease();
        }

        IntervalWorkoutProgressionData.distance.setter(0.0);
        v16 = v25;
        goto LABEL_71;
      }

      v191 = floor(v15 / v241 + 0.3) * v241;
      swift_beginAccess();
      v192 = v191 + *(a3 + 88);
      *(a3 + 88) = v192;
      v193 = *(a3 + 16);
      if (v193)
      {
        v194 = *(a3 + 96);
        v195 = v193;
        SegmentPaceAccumulator.updateDistance(_:duration:)(v192, v194);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v196 = *(a3 + 72);
        v197 = swift_getObjectType();
        (*(v196 + 8))(1, v197, v196);
        swift_unknownObjectRelease();
      }

      v198 = *(v7 + 88) - v191;
      *(v7 + 88) = v198;
      v199 = *(v7 + 16);
      if (v199)
      {
        v200 = *v247;
        v201 = v199;
        SegmentPaceAccumulator.updateDistance(_:duration:)(v198, v200);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v202 = *(v7 + 72);
        v203 = swift_getObjectType();
        (*(v202 + 8))(1, v203, v202);
        swift_unknownObjectRelease();
      }

      v16 = v25;
      v25 = v191;
    }
  }

  else
  {
    v57 = *v247;
    swift_beginAccess();
    v58 = v57 + *(a3 + 96);
    *(a3 + 96) = v58;
    v59 = *(a3 + 16);
    if (v59)
    {
      v60 = v59;
      SegmentPaceAccumulator.updateDuration(_:)(v58);
    }

    v239 = v17;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v61 = *(a3 + 72);
      v62 = swift_getObjectType();
      (*(v61 + 8))(3, v62, v61);
      swift_unknownObjectRelease();
    }

    v63 = v14;
    swift_beginAccess();
    v64 = *(v7 + 104);
    swift_beginAccess();
    *(a3 + 104) = v64 + *(a3 + 104);
    v252 = &type metadata for WorkoutFeatures;
    v65 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    v253 = v65;
    LOBYTE(v251[0]) = 3;
    v66 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v251);
    if ((v66 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      v67 = *(a3 + 72);
      v68 = swift_getObjectType();
      (*(v67 + 8))(2, v68, v67);
      swift_unknownObjectRelease();
    }

    v69 = v19;
    v70 = v248;
    *(v248 + 96) = 0;
    v71 = *(v70 + 16);
    if (v71)
    {
      v72 = v71;
      SegmentPaceAccumulator.updateDuration(_:)(0.0);
    }

    v73 = v248;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v74 = *(v73 + 72);
      v75 = swift_getObjectType();
      (*(v74 + 8))(3, v75, v74);
      swift_unknownObjectRelease();
    }

    *(v73 + 104) = 0;
    v252 = &type metadata for WorkoutFeatures;
    v253 = v65;
    LOBYTE(v251[0]) = 3;
    v76 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v251);
    v7 = v73;
    if ((v76 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      v77 = *(v73 + 72);
      v78 = swift_getObjectType();
      (*(v77 + 8))(2, v78, v77);
      swift_unknownObjectRelease();
    }

    v19 = v69;
    if (v249)
    {
      v79 = *(v7 + 88);
      swift_beginAccess();
      v80 = v79 + *(a3 + 88);
      *(a3 + 88) = v80;
      v81 = *(a3 + 16);
      v14 = v63;
      if (v81)
      {
        v82 = *(a3 + 96);
        v83 = v81;
        SegmentPaceAccumulator.updateDistance(_:duration:)(v80, v82);
      }

      v84 = swift_unknownObjectWeakLoadStrong();
      v17 = v239;
      if (!v84)
      {
        goto LABEL_70;
      }

      v85 = *(a3 + 72);
      v86 = swift_getObjectType();
      (*(v85 + 8))(1, v86, v85);
      goto LABEL_69;
    }

    v25 = floor(v15 / v241 + 0.3) * v241;
    swift_beginAccess();
    v116 = v25 + *(a3 + 88);
    *(a3 + 88) = v116;
    v117 = *(a3 + 16);
    v14 = v63;
    if (v117)
    {
      v118 = *(a3 + 96);
      v119 = v117;
      SegmentPaceAccumulator.updateDistance(_:duration:)(v116, v118);
    }

    v120 = swift_unknownObjectWeakLoadStrong();
    v17 = v239;
    if (v120)
    {
      v121 = *(a3 + 72);
      v122 = swift_getObjectType();
      (*(v121 + 8))(1, v122, v121);
      swift_unknownObjectRelease();
    }

    v123 = *(v7 + 88) - v25;
    *(v7 + 88) = v123;
    v124 = *(v7 + 16);
    if (v124)
    {
      v125 = *v247;
      v126 = v124;
      SegmentPaceAccumulator.updateDistance(_:duration:)(v123, v125);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v127 = *(v7 + 72);
      v128 = swift_getObjectType();
      (*(v127 + 8))(1, v128, v127);
      swift_unknownObjectRelease();
    }
  }

LABEL_138:
  *v17 = 0;
  *(v17 + 8) = 1;
  v204 = type metadata accessor for Date();
  (*(*(v204 - 8) + 56))(v14, 1, 1, v204);
  v205 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
  swift_beginAccess();
  outlined assign with take of Date?(v14, v7 + v205);
  swift_endAccess();
  if (one-time initialization token for intervalWorkout != -1)
  {
    goto LABEL_158;
  }

  while (1)
  {
    v206 = type metadata accessor for Logger();
    __swift_project_value_buffer(v206, static WOLog.intervalWorkout);

    v207 = Logger.logObject.getter();
    v208 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v207, v208))
    {
      v209 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      v250[0] = v210;
      *v209 = 136315394;
      v211 = IntervalWorkoutProgressionData.description.getter();
      v213 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v211, v212, v250);

      *(v209 + 4) = v213;
      *(v209 + 12) = 2080;
      v214 = IntervalWorkoutProgressionData.description.getter();
      v216 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v214, v215, v250);

      *(v209 + 14) = v216;
      _os_log_impl(&dword_20AEA4000, v207, v208, "rolled data into accumulated: %s\n currentData: %s", v209, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v210, -1, -1);
      MEMORY[0x20F2E9420](v209, -1, -1);
    }

    v217 = *(v7 + 56);
    v218 = objc_opt_self();
    v219 = *(a4 + v19);

    v220 = [v218 fiui:v219 supportedMetricsForActivityType:v217 activityMoveMode:?];
    if (!v220)
    {
      __break(1u);
      goto LABEL_165;
    }

    v221 = v220;
    type metadata accessor for NSNumber();
    v222 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v249 = v222;
    if (v222 >> 62)
    {
      break;
    }

    v223 = *((v249 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v223)
    {
      goto LABEL_160;
    }

LABEL_144:
    v224 = 0;
    v7 = v249 & 0xC000000000000001;
    a4 = v249 & 0xFFFFFFFFFFFFFF8;
    v225 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v7)
      {
        v226 = MEMORY[0x20F2E7A20](v224, v249);
      }

      else
      {
        if (v224 >= *(a4 + 16))
        {
          goto LABEL_157;
        }

        v226 = *(v249 + 8 * v224 + 32);
      }

      v227 = v226;
      v19 = v224 + 1;
      if (__OFADD__(v224, 1))
      {
        break;
      }

      v228 = [v226 unsignedIntegerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v225 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v225 + 2) + 1, 1, v225);
      }

      v230 = *(v225 + 2);
      v229 = *(v225 + 3);
      if (v230 >= v229 >> 1)
      {
        v225 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v229 > 1), v230 + 1, 1, v225);
      }

      *(v225 + 2) = v230 + 1;
      *&v225[8 * v230 + 32] = v228;
      ++v224;
      if (v19 == v223)
      {
        goto LABEL_161;
      }
    }

    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    swift_once();
  }

  v223 = __CocoaSet.count.getter();
  if (v223)
  {
    goto LABEL_144;
  }

LABEL_160:
  v225 = MEMORY[0x277D84F90];
LABEL_161:

  v231 = v248;
  IntervalWorkoutProgressionData.createAccumulators()();
  v232 = *(v231 + 16);
  if (v232)
  {
    v233 = *(v231 + 88);
    v234 = *v247;
    v235 = v232;
    SegmentPaceAccumulator.updateDistance(_:duration:)(v233, v234);
  }

  v236 = v243;
  *v243 = v25;
  v236[1] = v16;
  v237 = v245;
  *(v236 + 2) = v246;
  *(v236 + 3) = v225;
  *(v236 + 4) = v237;
  *(v236 + 40) = v244;
}

uint64_t IntervalWorkoutProgressionData.setDistanceAchievedDurationForTimeAndDistanceGoal(distanceGoal:newDistance:newDistanceTimestamp:)(double a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27[-v8];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 <= a2)
  {
    v18 = v2 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
    result = swift_beginAccess();
    if (*(v18 + 8) == 1)
    {
      v19 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
      swift_beginAccess();
      (*(v11 + 16))(v14, v3 + v19, v10);
      Date.timeIntervalSince(_:)();
      v21 = v20;
      (*(v11 + 8))(v14, v10);
      swift_beginAccess();
      v22 = (a2 - *(v3 + 88) - (a1 - *(v3 + 88))) / ((a2 - *(v3 + 88)) / v21);
      swift_beginAccess();
      v23 = *(v3 + 96) - v22;
      *v18 = v23;
      *(v18 + 8) = 0;
      if (v23 > 0.0)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v24 = *(v3 + 72);
          ObjectType = swift_getObjectType();
          (*(v24 + 16))(ObjectType, v24, v23);
          swift_unknownObjectRelease();
        }
      }

      Date.addingTimeInterval(_:)();
      (*(v11 + 56))(v9, 0, 1, v10);
      v26 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
      swift_beginAccess();
      outlined assign with take of Date?(v9, v3 + v26);
      return swift_endAccess();
    }
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    v15 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
    swift_beginAccess();
    outlined assign with take of Date?(v9, v2 + v15);
    swift_endAccess();
    v16 = v2 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
    result = swift_beginAccess();
    *v16 = 0;
    *(v16 + 8) = 1;
  }

  return result;
}

uint64_t IntervalWorkoutProgressionData.description.getter()
{
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_20B423920;
    swift_beginAccess();
    v3 = MEMORY[0x277D839F8];
    v4 = v0[11];
    v5 = MEMORY[0x277D83A80];
    *(v2 + 56) = MEMORY[0x277D839F8];
    *(v2 + 64) = v5;
    *(v2 + 32) = v4;
    swift_beginAccess();
    v6 = v0[13];
    *(v2 + 96) = v3;
    *(v2 + 104) = v5;
    *(v2 + 72) = v6;
    swift_beginAccess();
    v7 = v0[12];
    *(v2 + 136) = v3;
    *(v2 + 144) = v5;
    *(v2 + 112) = v7;
    swift_beginAccess();
    v8 = v0[14];
    *(v2 + 176) = v3;
    *(v2 + 184) = v5;
    *(v2 + 152) = v8;
    swift_beginAccess();
    v9 = v0[15];
    *(v2 + 216) = v3;
    *(v2 + 224) = v5;
    *(v2 + 192) = v9;
    swift_beginAccess();
    v10 = v0[18];
    *(v2 + 256) = v3;
    *(v2 + 264) = v5;
    *(v2 + 232) = v10;
    swift_beginAccess();
    v11 = v0[20];
    *(v2 + 296) = v3;
    *(v2 + 304) = v5;
    *(v2 + 272) = v11;
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_20B423A20;
    swift_beginAccess();
    v13 = MEMORY[0x277D839F8];
    v14 = v0[11];
    v15 = MEMORY[0x277D83A80];
    *(v12 + 56) = MEMORY[0x277D839F8];
    *(v12 + 64) = v15;
    *(v12 + 32) = v14;
    swift_beginAccess();
    v16 = v0[13];
    *(v12 + 96) = v13;
    *(v12 + 104) = v15;
    *(v12 + 72) = v16;
    swift_beginAccess();
    v17 = v0[12];
    *(v12 + 136) = v13;
    *(v12 + 144) = v15;
    *(v12 + 112) = v17;
  }

  return String.init(format:_:)();
}

id *IntervalWorkoutProgressionData.deinit()
{
  outlined consume of IntervalWorkoutProgressionData.Role(v0[4], v0[5], v0[6]);
  outlined destroy of weak IntervalWorkoutProgressionDataDelegate?((v0 + 8));
  outlined consume of FIUIWorkoutSettingsManager??(v0[10]);
  v1 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate);
  return v0;
}

uint64_t IntervalWorkoutProgressionData.__deallocating_deinit()
{
  outlined consume of IntervalWorkoutProgressionData.Role(v0[4], v0[5], v0[6]);
  outlined destroy of weak IntervalWorkoutProgressionDataDelegate?((v0 + 8));
  outlined consume of FIUIWorkoutSettingsManager??(v0[10]);
  v1 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

void outlined consume of IntervalWorkoutProgressionData.Role(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t type metadata accessor for IntervalWorkoutProgressionData()
{
  result = type metadata singleton initialization cache for IntervalWorkoutProgressionData;
  if (!type metadata singleton initialization cache for IntervalWorkoutProgressionData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalWorkoutProgressionData()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Date?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11WorkoutCore08IntervalA15ProgressionDataC4RoleO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for IntervalWorkoutProgressionData.Role(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntervalWorkoutProgressionData.Role(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for IntervalWorkoutProgressionData.Role(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySd11WorkoutCore0D10DataBucketCG_AF14RaceChartPointVs5NeverOTg504_s11d6Core31h9Elevationij64ProviderC_14numberOfPointsACSayypG_SiSgtcfcAA0ceF0VSd3key_AA0A10fG15C5valuet_tXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v26;
  v4 = -1 << *(a1 + 32);
  v24 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v25 = *(a1 + 36);
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v24 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = *(*(a1 + 48) + 8 * v6);
    v11 = *(*(a1 + 56) + 8 * v6);
    swift_beginAccess();
    v12 = *(v11 + 16);
    result = swift_beginAccess();
    v13 = *(v11 + 24);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
    }

    *(v26 + 16) = v15 + 1;
    v16 = v26 + 16 * v15;
    *(v16 + 32) = v10;
    *(v16 + 40) = v12 / v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v17 = *(v24 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (a1 + 72 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = outlined consume of [Double : WorkoutDataBucket].Index._Variant(v6, v25, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = outlined consume of [Double : WorkoutDataBucket].Index._Variant(v6, v25, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t RaceElevationChartPointProvider.__allocating_init(_:numberOfPoints:)(uint64_t a1, char *a2, char a3)
{
  v6 = swift_allocObject();
  RaceElevationChartPointProvider.init(_:numberOfPoints:)(a1, a2, a3 & 1);
  return v6;
}

uint64_t RaceElevationChartPointProvider.init(_:numberOfPoints:)(uint64_t a1, char *a2, char a3)
{
  v5 = v3;
  LOBYTE(v6) = a3;
  v8 = specialized _arrayConditionalCast<A, B>(_:)(a1);

  if (!v8)
  {
LABEL_55:
    *(v5 + 16) = MEMORY[0x277D84F90];
    return v5;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
    goto LABEL_53;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_54:

    goto LABEL_55;
  }

  while (1)
  {
    v11 = v10 - 1;
    if (__OFSUB__(v10, 1))
    {
      __break(1u);
LABEL_58:
      v12 = MEMORY[0x20F2E7A20](v11, v8);
LABEL_9:
      v13 = v12;
      [v12 odometer_m];
      v4 = v14;

      if (one-time initialization token for zoomedDomain == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_60;
    }

    v47 = v8 & 0xC000000000000001;
    if ((v8 & 0xC000000000000001) != 0)
    {
      goto LABEL_58;
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_62;
      }

      v12 = *(v8 + 8 * v11 + 32);
      goto LABEL_9;
    }

    __break(1u);
LABEL_60:
    swift_once();
LABEL_10:
    v15 = v4 / *&static RaceElevationChartLayout.zoomedDomain * 75.0;
    if (COERCE__INT64(fabs(v15)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v15 <= -9.22337204e18)
    {
      goto LABEL_63;
    }

    if (v15 >= 9.22337204e18)
    {
      goto LABEL_64;
    }

    v45 = v5;
    v46 = v9;
    if (v6)
    {
      v5 = v15;
    }

    else
    {
      v5 = a2;
    }

    a2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSd_11WorkoutCore0C10DataBucketCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v6 = 0;
    v16 = v5;
    v17 = v4 / v5;
    v18 = __OFSUB__(v5, 1);
    v19 = (v5 - 1);
    while (1)
    {
      if (v47)
      {
        v22 = MEMORY[0x20F2E7A20](v6, v8);
      }

      else
      {
        if (v6 >= *(v46 + 16))
        {
          goto LABEL_52;
        }

        v22 = *(v8 + 8 * v6 + 32);
      }

      v23 = v22;
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v22 odometer_m];
      v25 = floor(v24 / v17);
      if (v25 == v16 && v18)
      {
        goto LABEL_50;
      }

      if (v25 == v16)
      {
        v25 = v19;
      }

      v27 = v25 + 0.5;
      v4 = v17 * v27;
      if (*(a2 + 2) && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v17 * v27), (v29 & 1) != 0))
      {
        v9 = *(*(a2 + 7) + 8 * v28);
      }

      else
      {
        type metadata accessor for WorkoutDataBucket();
        v9 = swift_allocObject();
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
      }

      [v23 altitude_m];
      v31 = v30;
      swift_beginAccess();
      *(v9 + 16) = v31 + *(v9 + 16);
      swift_beginAccess();
      *(v9 + 24) = *(v9 + 24) + 1.0;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = a2;
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
      v35 = *(a2 + 2);
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_49;
      }

      v39 = v34;
      if (*(a2 + 3) < v38)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, isUniquelyReferenced_nonNull_native);
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
        if ((v39 & 1) != (v40 & 1))
        {
          goto LABEL_65;
        }

LABEL_42:
        a2 = v48;
        if (v39)
        {
          goto LABEL_20;
        }

        goto LABEL_43;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_42;
      }

      v43 = v33;
      specialized _NativeDictionary.copy()();
      v33 = v43;
      a2 = v48;
      if (v39)
      {
LABEL_20:
        v20 = *(a2 + 7);
        v21 = *(v20 + 8 * v33);
        *(v20 + 8 * v33) = v9;

        goto LABEL_21;
      }

LABEL_43:
      *&a2[8 * (v33 >> 6) + 64] |= 1 << v33;
      *(*(a2 + 6) + 8 * v33) = v4;
      *(*(a2 + 7) + 8 * v33) = v9;

      v41 = *(a2 + 2);
      v37 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v37)
      {
        goto LABEL_51;
      }

      *(a2 + 2) = v42;
LABEL_21:
      ++v6;
      if (v5 == v10)
      {

        v5 = v45;
        v48 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySd11WorkoutCore0D10DataBucketCG_AF14RaceChartPointVs5NeverOTg504_s11d6Core31h9Elevationij64ProviderC_14numberOfPointsACSayypG_SiSgtcfcAA0ceF0VSd3key_AA0A10fG15C5valuet_tXEfU_Tf1cn_n(a2);

        specialized MutableCollection<>.sort(by:)(&v48);

        *(v45 + 16) = v48;

        return v5;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v10 = __CocoaSet.count.getter();
    if (!v10)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  type metadata accessor for RaceElevationChartPointProvider();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t RaceElevationChartPointProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t RaceElevationChartPointProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

id FeaturedTileConstants.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeaturedTileConstants.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeaturedTileConstants();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FeaturedTileConstants.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeaturedTileConstants();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TargetZone.__allocating_init(type:min:max:enabled:)(unsigned __int8 *a1, unsigned __int8 a2, double a3, double a4)
{
  v8 = a2;
  result = swift_allocObject();
  v10 = *a1;
  *(result + 16) = v10;
  *(result + 24) = a3;
  *(result + 32) = a4;
  if (v8 == 2)
  {
    v11 = result;
    if (v10 <= 5 || v10 == 6)
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v13 = a3 > 0.0 || a4 > 0.0;
      if (v12)
      {
        v13 = 0;
      }
    }

    else
    {

      v13 = 0;
    }

    result = v11;
    *(v11 + 40) = v13;
  }

  else
  {
    *(result + 40) = a2 & 1;
  }

  return result;
}

WorkoutCore::TargetZone::ZoneType_optional __swiftcall TargetZone.ZoneType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TargetZone.ZoneType.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t TargetZone.description.getter()
{
  _StringGuts.grow(_:)(17);
  MEMORY[0x20F2E6D80](60, 0xE100000000000000);
  v1 = 0x5F676E696C6C6F72;
  v2 = *(v0 + 16);
  v3 = 0xED00007265776F70;
  v4 = 0x5F65676172657661;
  if (v2 != 6)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  v5 = 0xEF65636E65646163;
  v6 = 0x5F65676172657661;
  if (v2 != 4)
  {
    v6 = 0xD000000000000013;
    v5 = 0x800000020B4544E0;
  }

  if (*(v0 + 16) <= 5u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0xD000000000000012;
  v8 = 0x800000020B454490;
  if (v2 != 2)
  {
    v7 = 0xD000000000000015;
    v8 = 0x800000020B4544B0;
  }

  if (*(v0 + 16))
  {
    v1 = 0x5F65676172657661;
  }

  if (*(v0 + 16) <= 1u)
  {
    v9 = 0xEC00000065636170;
  }

  else
  {
    v1 = v7;
    v9 = v8;
  }

  if (*(v0 + 16) <= 3u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v4;
  }

  if (*(v0 + 16) <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v3;
  }

  MEMORY[0x20F2E6D80](v10, v11);

  MEMORY[0x20F2E6D80](5972026, 0xE300000000000000);
  swift_beginAccess();
  v12 = *(v0 + 24);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](58, 0xE100000000000000);
  swift_beginAccess();
  v13 = *(v0 + 32);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](2108509, 0xE300000000000000);
  swift_beginAccess();
  if (*(v0 + 40))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v0 + 40))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v14, v15);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 0;
}

unint64_t TargetZone.metadata.getter()
{
  v1 = *(v0 + 16);
  if (v1 > 4)
  {
    if (v1 - 5 >= 2)
    {
      v3 = 0xD000000000000021;
      v2 = "audioTranscriptionsEnabled";
    }

    else
    {
      v2 = "oneMasterTypeCadence";
      v3 = 0xD000000000000022;
    }
  }

  else if (v1 >= 3)
  {
    v2 = "oneMasterTypePace";
    v3 = 0xD000000000000024;
  }

  else
  {
    v2 = "oneMasterTypeNone";
    v3 = 0xD000000000000021;
  }

  v4 = v2 | 0x8000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDySSs11AnyHashableVGtGMd, &_ss23_ContiguousArrayStorageCySS_SDySSs11AnyHashableVGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_s11AnyHashableVtGMd, &_ss23_ContiguousArrayStorageCySS_s11AnyHashableVtGMR);
  v6 = swift_initStackObject();
  *(v6 + 32) = 0xD00000000000001ELL;
  *(v6 + 16) = xmmword_20B423A20;
  *(v6 + 40) = 0x800000020B46D420;
  swift_beginAccess();
  v11 = *(v0 + 24);
  AnyHashable.init<A>(_:)();
  *(v6 + 88) = 0xD00000000000001ELL;
  *(v6 + 96) = 0x800000020B46D440;
  swift_beginAccess();
  v10 = *(v0 + 32);
  AnyHashable.init<A>(_:)();
  *(v6 + 144) = 0xD00000000000001FLL;
  *(v6 + 152) = 0x800000020B46D460;
  if (*(v0 + 16) > 3u)
  {
    if (*(v0 + 16) > 5u)
    {
      *(v0 + 16);
    }
  }

  else if (*(v0 + 16) <= 1u)
  {
    *(v0 + 16);
  }

  AnyHashable.init<A>(_:)();
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s11AnyHashableVTt0g5Tf4g_n(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_s11AnyHashableVtMd, &_sSS_s11AnyHashableVtMR);
  swift_arrayDestroy();
  *(inited + 48) = v7;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSs11AnyHashableVGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, [String : AnyHashable])(inited + 32);
  return v8;
}

uint64_t TargetZone.ZoneType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x5F676E696C6C6F72;
  v3 = 0x5F65676172657661;
  if (v1 != 6)
  {
    v3 = 1701736302;
  }

  v4 = 0x5F65676172657661;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 2)
  {
    v5 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = 0x5F65676172657661;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void TargetZone.hash(into:)()
{
  *(v0 + 16);
  *(v0 + 16);
  *(v0 + 16);
  String.hash(into:)();

  swift_beginAccess();
  v1 = *(v0 + 24);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v1);
  swift_beginAccess();
  v2 = *(v0 + 32);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v2);
  swift_beginAccess();
  Hasher._combine(_:)(*(v0 + 40));
}

uint64_t TargetZone.min.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t TargetZone.max.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t TargetZone.enabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

BOOL TargetZone.isSingleThreshold.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  swift_beginAccess();
  return v1 == *(v0 + 32);
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TargetZone.ZoneType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x5F676E696C6C6F72;
  v4 = 0xED00007265776F70;
  v5 = 0x5F65676172657661;
  if (v2 != 6)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = 0xEF65636E65646163;
  v7 = 0x5F65676172657661;
  if (v2 != 4)
  {
    v7 = 0xD000000000000013;
    v6 = 0x800000020B4544E0;
  }

  if (*v1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xD000000000000012;
  v9 = 0x800000020B454490;
  if (v2 != 2)
  {
    v8 = 0xD000000000000015;
    v9 = 0x800000020B4544B0;
  }

  if (*v1)
  {
    v3 = 0x5F65676172657661;
  }

  if (*v1 <= 1u)
  {
    v10 = 0xEC00000065636170;
  }

  else
  {
    v3 = v8;
    v10 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 <= 3u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v4;
  }

  *a1 = v11;
  a1[1] = v12;
}

unint64_t TargetZone.PrimaryType.metadataString.getter()
{
  v1 = 0xD000000000000024;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000022;
  }

  *v0;
  if (*v0 <= 1u)
  {
    result = 0xD000000000000021;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

WorkoutCore::TargetZone::PrimaryType_optional __swiftcall TargetZone.PrimaryType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TargetZone.PrimaryType.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TargetZone.PrimaryType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TargetZone.PrimaryType()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TargetZone.PrimaryType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TargetZone.PrimaryType(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000021;
  v3 = "audioTranscriptionsEnabled";
  v4 = "oneMasterTypePace";
  v5 = 0xD000000000000024;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000022;
    v4 = "oneMasterTypeCadence";
  }

  if (*v1)
  {
    v3 = "oneMasterTypeNone";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t TargetZone.State.description.getter()
{
  v1 = 1701736302;
  v2 = 0x6E6968746977;
  if (*v0 != 2)
  {
    v2 = 0x65766F6261;
  }

  if (*v0)
  {
    v1 = 0x776F6C6562;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int TargetZone.State.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t TargetZone.TargetZoneHolder.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore10TargetZoneC0fG6Holder33_92AF4F0C72AD87834C5CD689BFC4E3DDLLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore10TargetZoneC0fG6Holder33_92AF4F0C72AD87834C5CD689BFC4E3DDLLV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v11 = *(v1 + 1);
  v10 = *(v1 + 2);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v9;
  v17 = 0;
  lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t TargetZone.TargetZoneHolder.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore10TargetZoneC0fG6Holder33_92AF4F0C72AD87834C5CD689BFC4E3DDLLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore10TargetZoneC0fG6Holder33_92AF4F0C72AD87834C5CD689BFC4E3DDLLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v20 = 0;
    lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v21;
    v19 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    v18 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TargetZone.State()
{
  v1 = 1701736302;
  v2 = 0x6E6968746977;
  if (*v0 != 2)
  {
    v2 = 0x65766F6261;
  }

  if (*v0)
  {
    v1 = 0x776F6C6562;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TargetZone.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TargetZone.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TargetZone.TargetZoneHolder.CodingKeys()
{
  v1 = 7235949;
  if (*v0 != 1)
  {
    v1 = 7889261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TargetZone.TargetZoneHolder.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TargetZone.TargetZoneHolder.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TargetZone.TargetZoneHolder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TargetZone.TargetZoneHolder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TargetZone.init(type:min:max:enabled:)(unsigned __int8 *a1, char a2, double a3, double a4)
{
  v5 = *a1;
  *(v4 + 16) = v5;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  if (a2 == 2)
  {
    if (v5 > 3)
    {
      if (v5 > 5)
      {
        if (v5 != 6)
        {

          v8 = 0;
          goto LABEL_14;
        }

        v6 = a4;
        v7 = a3;
      }

      else
      {
        v6 = a4;
        v7 = a3;
      }
    }

    else
    {
      v6 = a4;
      v7 = a3;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = 0;
    if ((v9 & 1) == 0)
    {
      v8 = v7 > 0.0 || v6 > 0.0;
    }
  }

  else
  {
    v8 = a2 & 1;
  }

LABEL_14:
  *(v4 + 40) = v8;
  return v4;
}

WorkoutCore::TargetZone::State __swiftcall TargetZone.state(forDistanceUnit:currentValue:)(HKUnit forDistanceUnit, Swift::Double currentValue)
{
  v4 = *(v3 + 16);
  if (v4 - 3 < 4)
  {
    if (currentValue > 2.22044605e-16)
    {
      v5 = v2;
      LOBYTE(forDistanceUnit.super.isa) = swift_beginAccess();
      v7 = *(v3 + 32);
      if (v7 > 2.22044605e-16 && v7 < currentValue)
      {
        v11 = 3;
      }

      else
      {
        LOBYTE(forDistanceUnit.super.isa) = swift_beginAccess();
        v9 = *(v3 + 24);
        if (v9 <= 2.22044605e-16 || v9 <= currentValue)
        {
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }
      }

      *v5 = v11;
      return forDistanceUnit.super.isa;
    }

LABEL_17:
    *v2 = 0;
    return forDistanceUnit.super.isa;
  }

  if (v4 >= 3)
  {
    goto LABEL_17;
  }

  TargetZone.paceState(forDistanceUnit:currentValue:)(forDistanceUnit.super.isa, v2, currentValue);
  return forDistanceUnit.super.isa;
}

void TargetZone.paceState(forDistanceUnit:currentValue:)(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v7 = objc_opt_self();
  v8 = [v7 meterUnit];
  v9 = objc_opt_self();
  v10 = [v9 quantityWithUnit:v8 doubleValue:a3];

  v11 = [v7 meterUnit];
  swift_beginAccess();
  v12 = [v9 quantityWithUnit:v11 doubleValue:*(v3 + 24)];

  v13 = [v7 meterUnit];
  swift_beginAccess();
  v14 = [v9 quantityWithUnit:v13 doubleValue:*(v3 + 32)];

  v15 = MEMORY[0x20F2E8400](v10, a1, 1, 1.0);
  v16 = MEMORY[0x20F2E8400](v12, a1, 1, 1.0);
  v17 = MEMORY[0x20F2E8400](v14, a1, 1, 1.0);

  if (v15 <= 2.22044605e-16)
  {
    v18 = 0;
  }

  else if (*(v3 + 24) <= 2.22044605e-16 || v16 >= v15)
  {
    if (v15 >= v17 || *(v3 + 32) <= 2.22044605e-16)
    {
      v18 = 2;
    }

    else
    {
      v18 = 3;
    }
  }

  else
  {
    v18 = 1;
  }

  *a2 = v18;
}

Swift::Int TargetZone.hashValue.getter()
{
  Hasher.init(_seed:)();
  TargetZone.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TargetZone()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  TargetZone.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TargetZone()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  TargetZone.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static TargetZone.canonical()()
{
  type metadata accessor for TargetZone();
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  *(v0 + 24) = xmmword_20B44CB90;
  *(v0 + 40) = 1;

  return swift_dynamicCastClassUnconditional();
}

double static TargetZone.canonical(zoneType:)(char *a1)
{
  v1 = *a1;
  type metadata accessor for TargetZone();
  v2 = swift_allocObject();
  result = dbl_20B44D160[v1];
  v4 = qword_20B44D178[v1];
  *(v2 + 16) = 0x60401u >> (8 * v1);
  *(v2 + 24) = result;
  *(v2 + 32) = v4;
  *(v2 + 40) = 1;
  return result;
}

uint64_t protocol witness for static Canonical.canonical() in conformance TargetZone@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TargetZone();
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  *(v2 + 24) = xmmword_20B44CB90;
  *(v2 + 40) = 1;
  result = swift_dynamicCastClassUnconditional();
  *a1 = result;
  return result;
}

uint64_t specialized static TargetZone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized == infix<A>(_:_:)(*(a1 + 16), *(a2 + 16)) & 1) != 0 && (swift_beginAccess(), v4 = *(a1 + 24), swift_beginAccess(), v4 == *(a2 + 24)) && (swift_beginAccess(), v5 = *(a1 + 32), swift_beginAccess(), v5 == *(a2 + 32)))
  {
    swift_beginAccess();
    v6 = *(a1 + 40);
    swift_beginAccess();
    v7 = v6 ^ *(a2 + 40) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType()
{
  result = lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType;
  if (!lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [TargetZone.ZoneType] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TargetZone.State and conformance TargetZone.State()
{
  result = lazy protocol witness table cache variable for type TargetZone.State and conformance TargetZone.State;
  if (!lazy protocol witness table cache variable for type TargetZone.State and conformance TargetZone.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.State and conformance TargetZone.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TargetZone and conformance TargetZone()
{
  result = lazy protocol witness table cache variable for type TargetZone and conformance TargetZone;
  if (!lazy protocol witness table cache variable for type TargetZone and conformance TargetZone)
  {
    type metadata accessor for TargetZone();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone and conformance TargetZone);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TargetZone.ZoneType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TargetZone.ZoneType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}