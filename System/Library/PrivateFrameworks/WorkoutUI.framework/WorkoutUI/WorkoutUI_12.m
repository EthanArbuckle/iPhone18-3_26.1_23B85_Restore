void closure #2 in MediaConfigurationRoomButtonWatch.body.getter(__int128 *a1)
{
  v2 = type metadata accessor for CompoundActivityPickerItemValue();
  v18 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for AnyActivityPickerItem();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore21AnyActivityPickerItemVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if ((*(v6 + 48))(v11, 1, v5))
    {
      _sSo8NSObjectCSgWOhTm_1(v11, &_s11WorkoutCore21AnyActivityPickerItemVSgMd);
      return;
    }

    (*(v6 + 16))(v8, v11, v5);
    _sSo8NSObjectCSgWOhTm_1(v11, &_s11WorkoutCore21AnyActivityPickerItemVSgMd);
    v12 = AnyActivityPickerItem.item.getter();
    (*(v6 + 8))(v8, v5);
    type metadata accessor for CompoundActivityPickerItem();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_7;
    }

    CompoundActivityPickerItem.value.getter();
    v13 = v18;
    if ((*(v18 + 88))(v4, v2) == *MEMORY[0x277D7E680])
    {
      (*(v13 + 96))(v4, v2);
      v14 = *v4;
      v15 = a1[3];
      v21 = a1[2];
      v22 = v15;
      v23 = a1[4];
      v24 = *(a1 + 80);
      v16 = a1[1];
      v19 = *a1;
      v20 = v16;
      MediaConfigurationRoomButtonWatch.resetMediaConfiguration()();

LABEL_7:
      return;
    }

    (*(v13 + 8))(v4, v2);
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel();
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_3(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t MediaConfigurationRoomButtonWatch.resetMediaConfiguration()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v14 - v2;
  v4 = v0[3];
  v18 = v0[2];
  v19 = v4;
  v20 = v0[4];
  v5 = v0[1];
  v6 = v0[2];
  v16 = *v0;
  v17 = v5;
  v21 = *(v0 + 80);
  v14[0] = v6;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore30MediaPlaybackConfigurationItemCSgGMd);
  State.wrappedValue.setter();
  v14[0] = v19;
  LOBYTE(v15) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB033MediaConfigurationRoomButtonWatchV07LoadingC0OGMd);
  State.wrappedValue.setter();
  static TaskPriority.userInitiated.getter();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  type metadata accessor for MainActor();
  outlined init with copy of MediaConfigurationRoomButtonWatch(&v16, v14);
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  v11 = v19;
  *(v9 + 64) = v18;
  *(v9 + 80) = v11;
  *(v9 + 96) = v20;
  *(v9 + 112) = v21;
  v12 = v17;
  *(v9 + 32) = v16;
  *(v9 + 48) = v12;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in MediaConfigurationRoomButtonWatch.resetMediaConfiguration(), v9);
}

uint64_t closure #3 in MediaConfigurationRoomButtonWatch.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.mediaPlayback.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20C66F000, v7, v8, "Recieved media configurations updated notifications, reloading media configuration room button.", v9, 2u);
    MEMORY[0x20F30E080](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v10 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v10;
  v13[4] = *(a2 + 64);
  v14 = *(a2 + 80);
  v11 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v11;
  return MediaConfigurationRoomButtonWatch.resetMediaConfiguration()();
}

uint64_t closure #1 in MediaConfigurationRoomButtonWatch.resetMediaConfiguration()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 104) = type metadata accessor for MainActor();
  *(v4 + 112) = static MainActor.shared.getter();
  v6 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v6;
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = *(a4 + 80);
  v7 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = swift_task_alloc();
  *(v4 + 120) = v8;
  *v8 = v4;
  v8[1] = closure #1 in MediaConfigurationRoomButtonWatch.resetMediaConfiguration();

  return MediaConfigurationRoomButtonWatch.loadMediaConfiguration()();
}

uint64_t closure #1 in MediaConfigurationRoomButtonWatch.resetMediaConfiguration()()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in MediaConfigurationRoomButtonWatch.resetMediaConfiguration(), v1, v0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MediaConfigurationRoomButtonWatch.loadMediaConfiguration()()
{
  v2 = type metadata accessor for MediaPlaybackStoreError();
  *(v1 + 728) = v2;
  *(v1 + 736) = *(v2 - 8);
  *(v1 + 744) = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  *(v1 + 752) = v3;
  *(v1 + 760) = *(v3 - 8);
  *(v1 + 768) = swift_task_alloc();
  *(v1 + 776) = swift_task_alloc();
  *(v1 + 784) = swift_task_alloc();
  *(v1 + 792) = swift_task_alloc();
  *(v1 + 800) = swift_task_alloc();
  *(v1 + 808) = swift_task_alloc();
  v4 = *(v0 + 48);
  *(v1 + 400) = *(v0 + 32);
  *(v1 + 416) = v4;
  *(v1 + 432) = *(v0 + 64);
  *(v1 + 448) = *(v0 + 80);
  v5 = *(v0 + 16);
  *(v1 + 368) = *v0;
  *(v1 + 384) = v5;
  type metadata accessor for MainActor();
  *(v1 + 816) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 824) = v7;
  *(v1 + 832) = v6;

  return MEMORY[0x2822009F8](MediaConfigurationRoomButtonWatch.loadMediaConfiguration(), v7, v6);
}

{
  v36 = v0;
  v1 = *(v0 + 416);
  *(v0 + 103) = v1;
  v2 = *(v0 + 424);
  *(v0 + 840) = v2;
  *(v0 + 624) = v1;
  *(v0 + 632) = v2;
  *(v0 + 848) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB033MediaConfigurationRoomButtonWatchV07LoadingC0OGMd);
  State.wrappedValue.getter();
  if (*(v0 + 101))
  {

    static WOLog.mediaPlayback.getter();
    outlined init with copy of MediaConfigurationRoomButtonWatch(v0 + 368, v0 + 280);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    outlined destroy of MediaConfigurationRoomButtonWatch(v0 + 368);
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 792);
    v7 = *(v0 + 760);
    v8 = *(v0 + 752);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v32 = v8;
      v35 = swift_slowAlloc();
      v10 = v35;
      *v9 = 136315138;
      *(v0 + 592) = v1;
      *(v0 + 600) = v2;
      State.wrappedValue.getter();
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v35);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_20C66F000, v3, v4, "Skip loading media configuration, loadingState=%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F30E080](v10, -1, -1);
      MEMORY[0x20F30E080](v9, -1, -1);

      (*(v7 + 8))(v6, v32);
    }

    else
    {

      (*(v7 + 8))(v6, v8);
    }

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    *(v0 + 97) = 1;
    *(v0 + 560) = v1;
    *(v0 + 568) = v2;
    State.wrappedValue.setter();
    static WOLog.mediaPlayback.getter();
    outlined init with copy of MediaConfigurationRoomButtonWatch(v0 + 368, v0 + 16);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    outlined destroy of MediaConfigurationRoomButtonWatch(v0 + 368);
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 808);
    v18 = *(v0 + 760);
    v19 = *(v0 + 752);
    if (v16)
    {
      v33 = *(v0 + 808);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136315138;
      v22 = [*(v0 + 384) localizedName];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v35);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_20C66F000, v14, v15, "Searching for media config for %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x20F30E080](v21, -1, -1);
      MEMORY[0x20F30E080](v20, -1, -1);

      v27 = *(v18 + 8);
      v27(v33, v19);
    }

    else
    {

      v27 = *(v18 + 8);
      v27(v17, v19);
    }

    *(v0 + 856) = v27;
    v30 = *(v0 + 384);
    *(v0 + 864) = v30;
    v34 = (*MEMORY[0x277D7E2C8] + MEMORY[0x277D7E2C8]);
    v31 = swift_task_alloc();
    *(v0 + 872) = v31;
    *v31 = v0;
    v31[1] = MediaConfigurationRoomButtonWatch.loadMediaConfiguration();

    return v34(v30);
  }
}

{
  v34 = v0;
  v1 = *(v0 + 888);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  *(v0 + 608) = v3;
  *(v0 + 616) = v2;
  *(v0 + 696) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore30MediaPlaybackConfigurationItemCSgGMd);
  State.wrappedValue.setter();
  static WOLog.mediaPlayback.getter();
  outlined init with copy of MediaConfigurationRoomButtonWatch(v0 + 368, v0 + 104);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of MediaConfigurationRoomButtonWatch(v0 + 368);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 864);
    v30 = *(v0 + 800);
    v31 = *(v0 + 856);
    v29 = *(v0 + 752);
    v7 = swift_slowAlloc();
    v32 = v3;
    v33 = swift_slowAlloc();
    v8 = v33;
    *v7 = 136315394;
    v9 = [v6 localizedName];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v33);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    *(v0 + 672) = v32;
    *(v0 + 680) = v2;
    State.wrappedValue.getter();
    v14 = *(v0 + 712);
    *(v0 + 720) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore30MediaPlaybackConfigurationItemCSgMd);
    v15 = Optional.debugDescription.getter();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v33);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_20C66F000, v4, v5, "Found %s media playback configuration: %s", v7, 0x16u);
    swift_arrayDestroy();
    v19 = v8;
    v3 = v32;
    MEMORY[0x20F30E080](v19, -1, -1);
    MEMORY[0x20F30E080](v7, -1, -1);

    v31(v30, v29);
  }

  else
  {
    v20 = *(v0 + 856);
    v21 = *(v0 + 800);
    v22 = *(v0 + 752);

    v20(v21, v22);
  }

  *(v0 + 640) = v3;
  *(v0 + 648) = v2;
  State.wrappedValue.getter();
  v23 = *(v0 + 704);
  *(v0 + 896) = v23;
  if (v23)
  {
    if (dispatch thunk of MediaPlaybackConfigurationItem.smartStationEnabled.getter())
    {
      type metadata accessor for MediaPlaybackMoodStationCache();
      *(v0 + 904) = static MediaPlaybackMoodStationCache.shared.getter();
      _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_3(&lazy protocol witness table cache variable for type MediaPlaybackMoodStationCache and conformance MediaPlaybackMoodStationCache, MEMORY[0x277D7E610]);
      v25 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](MediaConfigurationRoomButtonWatch.loadMediaConfiguration(), v25, v24);
    }
  }

  else
  {
  }

  v26 = *(v0 + 840);
  *(v0 + 656) = *(v0 + 103);
  *(v0 + 664) = v26;
  *(v0 + 102) = 2;
  State.wrappedValue.setter();

  v27 = *(v0 + 8);

  return v27();
}

{
  dispatch thunk of MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:)();

  v1 = *(v0 + 832);
  v2 = *(v0 + 824);

  return MEMORY[0x2822009F8](MediaConfigurationRoomButtonWatch.loadMediaConfiguration(), v2, v1);
}

{
  v1 = *(v0 + 896);

  v2 = *(v0 + 840);
  *(v0 + 656) = *(v0 + 103);
  *(v0 + 664) = v2;
  *(v0 + 102) = 2;
  State.wrappedValue.setter();

  v3 = *(v0 + 8);

  return v3();
}

{
  v55 = v0;
  v1 = *(v0 + 880);
  v2 = *(v0 + 840);
  v3 = *(v0 + 103);

  *(v0 + 98) = 2;
  *(v0 + 576) = v3;
  *(v0 + 584) = v2;
  State.wrappedValue.setter();
  *(v0 + 688) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    v5 = (*(*(v0 + 736) + 88))(*(v0 + 744), *(v0 + 728));
    if (v5 == *MEMORY[0x277D7E3F8])
    {

      static WOLog.mediaPlayback.getter();
      outlined init with copy of MediaConfigurationRoomButtonWatch(v0 + 368, v0 + 192);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      outlined destroy of MediaConfigurationRoomButtonWatch(v0 + 368);
      if (os_log_type_enabled(v6, v7))
      {
        v8 = *(v0 + 864);
        v50 = *(v0 + 784);
        v52 = *(v0 + 856);
        v9 = *(v0 + 752);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v54 = v11;
        *v10 = 136315138;
        v12 = [v8 localizedName];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v54);

        *(v10 + 4) = v16;
        _os_log_impl(&dword_20C66F000, v6, v7, "No media configuration found for %s, Creating new configuration", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x20F30E080](v11, -1, -1);
        MEMORY[0x20F30E080](v10, -1, -1);

        v52(v50, v9);
      }

      else
      {
        v24 = *(v0 + 856);
        v25 = *(v0 + 784);
        v26 = *(v0 + 752);

        v24(v25, v26);
      }

LABEL_10:

      goto LABEL_15;
    }

    if (v5 == *MEMORY[0x277D7E400])
    {

      static WOLog.mediaPlayback.getter();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_20C66F000, v17, v18, "Unable to play selected media suggestion on device - displaying warning", v19, 2u);
        MEMORY[0x20F30E080](v19, -1, -1);
      }

      v20 = *(v0 + 856);
      v21 = *(v0 + 776);
      v22 = *(v0 + 752);

      v20(v21, v22);
      v23 = *(v0 + 440);
      *(v0 + 544) = *(v0 + 432);
      *(v0 + 552) = v23;
      *(v0 + 100) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
      State.wrappedValue.setter();
      goto LABEL_10;
    }

    (*(*(v0 + 736) + 8))(*(v0 + 744), *(v0 + 728));
  }

  v27 = *(v0 + 880);

  static WOLog.mediaPlayback.getter();
  outlined init with copy of MediaConfigurationRoomButtonWatch(v0 + 368, v0 + 456);
  v28 = v27;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  outlined destroy of MediaConfigurationRoomButtonWatch(v0 + 368);

  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v0 + 880);
  if (v31)
  {
    v33 = *(v0 + 864);
    v51 = *(v0 + 768);
    v53 = *(v0 + 856);
    v49 = *(v0 + 752);
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v54 = v36;
    *v34 = 136315394;
    v37 = [v33 localizedName];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v54);

    *(v34 + 4) = v41;
    *(v34 + 12) = 2112;
    v42 = v32;
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 14) = v43;
    *v35 = v43;
    _os_log_impl(&dword_20C66F000, v29, v30, "Failed to fetch %s media playback configuration with error: %@", v34, 0x16u);
    _sSo8NSObjectCSgWOhTm_1(v35, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v35, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x20F30E080](v36, -1, -1);
    MEMORY[0x20F30E080](v34, -1, -1);

    v53(v51, v49);
  }

  else
  {
    v44 = *(v0 + 856);
    v45 = *(v0 + 768);
    v46 = *(v0 + 752);

    v44(v45, v46);
  }

LABEL_15:

  v47 = *(v0 + 8);

  return v47();
}

uint64_t MediaConfigurationRoomButtonWatch.loadMediaConfiguration()(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 880) = v1;

  if (v1)
  {
    v5 = v4[104];
    v6 = v4[103];
    v7 = MediaConfigurationRoomButtonWatch.loadMediaConfiguration();
  }

  else
  {
    v4[111] = a1;
    v5 = v4[104];
    v6 = v4[103];
    v7 = MediaConfigurationRoomButtonWatch.loadMediaConfiguration();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t MediaConfigurationRoomButtonWatch.mediaConfigurationRoom()@<X0>(uint64_t *a1@<X8>)
{
  v34 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v39 = *(v1 + 32);
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore30MediaPlaybackConfigurationItemCSgGMd);
  State.projectedValue.getter();
  v10 = v37;
  v33 = v36;
  v11 = v38;
  LOBYTE(v36) = v7;
  v37 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v35 = v39;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for MediaConfigurationRoom();
  v13 = v12[5];
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  swift_storeEnumTagMultiPayload();
  v14 = v12[7];
  type metadata accessor for MediaPlaybackStore();
  *(a1 + v14) = static MediaPlaybackStore.sharedInstance.getter();
  v15 = a1 + v12[9];
  LOBYTE(v39) = 0;
  State.init(wrappedValue:)();
  v16 = v37;
  *v15 = v36;
  *(v15 + 1) = v16;
  v17 = a1 + v12[11];
  LOBYTE(v39) = 0;
  State.init(wrappedValue:)();
  v18 = v37;
  *v17 = v36;
  *(v17 + 1) = v18;
  *(a1 + v12[6]) = v9;
  v19 = swift_allocObject();
  v21 = v33;
  v20 = v34;
  v19[2] = v9;
  v19[3] = v21;
  v19[4] = v10;
  v19[5] = v11;
  v22 = a1 + v12[8];
  *v22 = partial apply for implicit closure #1 in MediaConfigurationRoom.init(activityType:mediaConfiguration:shouldPresentMediaCompatibilityWarning:);
  *(v22 + 1) = v19;
  v22[16] = 0;
  (*(v3 + 104))(v5, *MEMORY[0x277D2AE20], v20);
  v23 = v11;
  v24 = v9;

  static MusicDataRequest.preferredExecutionMethod.setter();
  static Platform.current.getter();
  v25 = Platform.rawValue.getter();
  if (v25 == Platform.rawValue.getter() && (FIHasSeenWorkoutMediaOnboarding() & 1) == 0 && (v26 = MediaPlaybackStore.migratedUser.getter()) != 0)
  {

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  v28 = a1 + v12[10];
  LOBYTE(v39) = v27;
  State.init(wrappedValue:)();
  v29 = v37;
  *v28 = v36;
  *(v28 + 1) = v29;
  v30 = a1 + v12[12];
  LOBYTE(v39) = v35;
  State.init(wrappedValue:)();

  v32 = v37;
  *v30 = v36;
  *(v30 + 1) = v32;
  return result;
}

uint64_t closure #1 in MediaConfigurationRoomButtonWatch.lazyBuilder.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for MediaConfigurationRoom();
  a1[4] = _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_3(&lazy protocol witness table cache variable for type MediaConfigurationRoom and conformance MediaConfigurationRoom, type metadata accessor for MediaConfigurationRoom);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return MediaConfigurationRoomButtonWatch.mediaConfigurationRoom()(boxed_opaque_existential_1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MediaConfigurationRoomButtonWatch.LoadingState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MediaConfigurationRoomButtonWatch.LoadingState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect>, ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect>, ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect>, ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGAA14_OpacityEffectVGAEy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAgEyAEyAA4TextVAA022_EnvironmentKeyWritingI0VyAA0Q9AlignmentOGGAN17HeaderHyphenationVGGATyAA5ColorVSgGGGSgMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect>, ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect>, ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect>, ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect>, ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect>, ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGAA14_OpacityEffectVGAEy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAgEyAEyAA4TextVAA022_EnvironmentKeyWritingI0VyAA0Q9AlignmentOGGAN17HeaderHyphenationVGGATyAA5ColorVSgGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect>, ModifiedContent<AlignedLeadingAccessoryContentView<Image, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_30()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in MediaConfigurationRoomButtonWatch.resetMediaConfiguration()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in MediaConfigurationRoomButtonWatch.resetMediaConfiguration();

  return closure #1 in MediaConfigurationRoomButtonWatch.resetMediaConfiguration()(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #1 in MediaConfigurationRoomButtonWatch.resetMediaConfiguration()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined init with take of ModifiedContent<Image, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, _OpacityEffect>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGAA14_OpacityEffectVGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sSo8NSObjectCSgWOhTm_1(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for MediaConfigurationRoomButtonWatch.LoadingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaConfigurationRoomButtonWatch.LoadingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB05ImageVAD08ModifiedF0VyAHyAD4TextVAD30_EnvironmentKeyWritingModifierVyAD0K9AlignmentOGGAA17HeaderHyphenationVGGACyxq_GAD0G0AAWlTm_0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MediaConfigurationRoomButtonWatch.LoadingState and conformance MediaConfigurationRoomButtonWatch.LoadingState()
{
  result = lazy protocol witness table cache variable for type MediaConfigurationRoomButtonWatch.LoadingState and conformance MediaConfigurationRoomButtonWatch.LoadingState;
  if (!lazy protocol witness table cache variable for type MediaConfigurationRoomButtonWatch.LoadingState and conformance MediaConfigurationRoomButtonWatch.LoadingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaConfigurationRoomButtonWatch.LoadingState and conformance MediaConfigurationRoomButtonWatch.LoadingState);
  }

  return result;
}

void SeymourSampleContentProvider.isHidden.setter(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  *(v1 + 16) = a1;
  if (v4 != v3)
  {
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = *(v1 + 16);
    v7 = MEMORY[0x20F30BAD0](0xD00000000000001CLL, 0x800000020CB97730);
    [v5 setBool:v6 forKey:v7];

    v8 = [*(v1 + 24) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI28SeymourSampleContentObserver_pMd);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      v10 = __CocoaSet.count.getter();
      if (v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_4:
        if (v10 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v10; ++i)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x20F30C990](i, v9);
          }

          else
          {
            v12 = *(v9 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          [v12 isHiddenDidUpdateWith_];
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t SeymourSampleContentProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = MEMORY[0x20F30BAD0](0xD00000000000001CLL, 0x800000020CB97730);
  v3 = [v1 BOOLForKey_];

  *(v0 + 16) = v3;
  *(v0 + 24) = [objc_opt_self() weakObjectsHashTable];
  return v0;
}

uint64_t SeymourSampleContentProvider.init()()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = MEMORY[0x20F30BAD0](0xD00000000000001CLL, 0x800000020CB97730);
  v3 = [v1 BOOLForKey_];

  *(v0 + 16) = v3;
  *(v0 + 24) = [objc_opt_self() weakObjectsHashTable];
  return v0;
}

Swift::Void __swiftcall SeymourSampleContentProvider.hide()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = 1;
  if ((v1 & 1) == 0)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = *(v0 + 16);
    v4 = MEMORY[0x20F30BAD0](0xD00000000000001CLL, 0x800000020CB97730);
    [v2 setBool:v3 forKey:v4];

    v5 = [*(v0 + 24) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI28SeymourSampleContentObserver_pMd);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      v7 = __CocoaSet.count.getter();
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_4:
        if (v7 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v7; ++i)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x20F30C990](i, v6);
          }

          else
          {
            v9 = *(v6 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          [v9 isHiddenDidUpdateWith_];
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

Swift::Void __swiftcall SeymourSampleContentProvider.show()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
  if (v1 == 1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = *(v0 + 16);
    v4 = MEMORY[0x20F30BAD0](0xD00000000000001CLL, 0x800000020CB97730);
    [v2 setBool:v3 forKey:v4];

    v5 = [*(v0 + 24) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI28SeymourSampleContentObserver_pMd);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      v7 = __CocoaSet.count.getter();
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_4:
        if (v7 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v7; ++i)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x20F30C990](i, v6);
          }

          else
          {
            v9 = *(v6 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          [v9 isHiddenDidUpdateWith_];
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t SeymourSampleContentProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SeymourSampleContentProviding.isHidden.getter in conformance SeymourSampleContentProvider()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

double WKUIBreadcrumbPath.coordinate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_coordinate;
  swift_beginAccess();
  return *v1;
}

void WKUIBreadcrumbPath.addLocations(_:mapView:breadcrumbRenderer:)(unint64_t a1, void *a2, double *a3)
{
  if (a1 >> 62)
  {
LABEL_25:
    v3 = a3;
    v24 = __CocoaSet.count.getter();
    a3 = v3;
    v7 = v24;
    if (!v24)
    {
      return;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  v8 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  v29 = a1 & 0xC000000000000001;
  v28 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_28:
    v9 = MEMORY[0x20F30C990](v8, a1);
    goto LABEL_8;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v9 = *(a1 + 8 * v8 + 32);
LABEL_8:
  v27 = v9;
  v4 = *(v30 + OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_protectedBreadcrumbData);
  os_unfair_lock_lock((v4 + 56));
  v3 = (v4 + 16);
  v10 = *(v4 + 16);

  os_unfair_lock_unlock((v4 + 56));
  if (!(v10 >> 62))
  {
    v25 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

LABEL_30:
  v25 = __CocoaSet.count.getter();
LABEL_10:

  [a2 bounds];
  v12 = v11;
  v26 = a2;
  [a2 visibleMapRect];
  v13 = 0;
  a2 = 0;
  v15 = v12 / v14;
  do
  {
    if (v29)
    {
      v16 = MEMORY[0x20F30C990](v13, a1);
    }

    else
    {
      if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v16 = *(a1 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    MEMORY[0x28223BE20](v16);
    os_unfair_lock_lock((v4 + 56));
    partial apply for closure #1 in WKUIBreadcrumbPath.addLocationIfNecessary(_:)(v3);
    os_unfair_lock_unlock((v4 + 56));

    ++v13;
  }

  while (v18 != v7);
  v19 = MKRoadWidthAtZoomScale(v15);
  os_unfair_lock_lock((v4 + 56));
  v20 = *(v4 + 24);
  v21 = *(v4 + 32);
  v22 = *(v4 + 40);
  v23 = *(v4 + 48);
  os_unfair_lock_unlock((v4 + 56));
  v31.origin.x = v20;
  v31.origin.y = v21;
  v31.size.width = v22;
  v31.size.height = v23;
  v32 = MKMapRectInset(v31, -v19, -v19);
  if (v28)
  {
    [v28 setNeedsDisplayInMapRect_];
  }

  if (!v25)
  {
    MEMORY[0x20F30D450]([v27 coordinate]);
    [v26 setRegion:1 animated:?];
    [v26 setUserTrackingMode:1 animated:1];
  }
}

void closure #1 in WKUIBreadcrumbPath.addLocationIfNecessary(_:)(double *a1, uint64_t a2, void *a3)
{
  v6 = *a1;
  v7 = *a1 >> 62;
  if (v7)
  {
    v8 = __CocoaSet.count.getter();
    if (v8)
    {
LABEL_3:
      v9 = __OFSUB__(v8, 1);
      v10 = v8 - 1;
      if (v9)
      {
        __break(1u);
      }

      else if ((*&v6 & 0xC000000000000001) == 0)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v10 < *((*&v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v11 = *(*&v6 + 8 * v10 + 32);
          goto LABEL_8;
        }

        __break(1u);
        return;
      }

      v11 = MEMORY[0x20F30C990](v10, *&v6);
LABEL_8:
      v12 = v11;
      if (!v7)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v8 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  if (!v7)
  {
LABEL_9:
    v13 = *((*&v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = &selRef_setPointOfInterestFilter_;
    if (!v13)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

LABEL_13:
  v14 = &selRef_setPointOfInterestFilter_;
  if (!__CocoaSet.count.getter())
  {
LABEL_14:
    [a3 v14[148]];
    v16 = v15;
    v18 = v17;
    v19 = (a2 + OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_coordinate);
    swift_beginAccess();
    *v19 = v16;
    v19[1] = v18;
    v56.latitude = v16;
    v56.longitude = v18;
    v20 = MKMapPointForCoordinate(v56);
    v58.size.width = MEMORY[0x20F30D470](*v19) * 1000.0;
    v58.origin.x = v20.x;
    v58.origin.y = v20.y;
    v58.size.height = v58.size.width;
    v59 = MKMapRectIntersection(v58, *MEMORY[0x277CD4BB8]);
    x = v59.origin.x;
    y = v59.origin.y;
    width = v59.size.width;
    height = v59.size.height;

    a1[1] = x;
    a1[2] = y;
    a1[3] = width;
    a1[4] = height;
    v25 = a3;
    v12 = a3;
  }

LABEL_15:
  v26 = a3;
  MEMORY[0x20F30BCF0]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  [v26 v14[148]];
  v27 = MKMapPointForCoordinate(v57);
  if (v12)
  {
    [v12 v14[148]];
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  v30 = MKMapPointForCoordinate(*&v28);
  v65.origin.x = v30.x;
  v65.origin.y = v30.y;
  v60.size.width = 0.0;
  v60.size.height = 0.0;
  v65.size.width = 0.0;
  v65.size.height = 0.0;
  v60.origin.x = v27.x;
  v60.origin.y = v27.y;
  v61 = MKMapRectUnion(v60, v65);
  v31 = v61.origin.x;
  v32 = v61.origin.y;
  v33 = v61.size.width;
  v34 = v61.size.height;
  v35 = a1[1];
  v36 = a1[2];
  v37 = a1[3];
  v38 = a1[4];
  v61.origin.x = v35;
  v61.origin.y = v36;
  v61.size.width = v37;
  v61.size.height = v38;
  v66.origin.x = v31;
  v66.origin.y = v32;
  v66.size.width = v33;
  v66.size.height = v34;
  if (MKMapRectContainsRect(v61, v66))
  {
  }

  else
  {
    v62.origin.x = v35;
    v62.origin.y = v36;
    v62.size.width = v37;
    v62.size.height = v38;
    v67.origin.x = v31;
    v67.origin.y = v32;
    v67.size.width = v33;
    v67.size.height = v34;
    v63 = MKMapRectUnion(v62, v67);
    v53 = v63.origin.x;
    v55 = v33;
    v39 = v63.origin.y;
    v52 = v63.size.width;
    v54 = v37;
    v40 = v63.size.height;
    v63.origin.x = v31;
    v63.origin.y = v32;
    v41 = MKCoordinateForMapPoint(v63.origin);
    v42 = MEMORY[0x20F30D470](v41.latitude, v41.longitude) * 1000.0;
    if (v32 >= v36)
    {
      v43 = v40;
    }

    else
    {
      v43 = v40 + v42;
    }

    if (v32 >= v36)
    {
      v44 = v39;
    }

    else
    {
      v44 = v39 - v42;
    }

    if (v36 + v38 < v32 + v34)
    {
      v43 = v42 + v43;
    }

    v45 = v53 - v42;
    v46 = v52 + v42;
    if (v31 >= v35)
    {
      v46 = v52;
      v45 = v53;
    }

    v47 = v42 + v46;
    if (v35 + v54 >= v31 + v55)
    {
      v47 = v46;
    }

    v64 = MKMapRectIntersection(*(&v43 - 3), *MEMORY[0x277CD4BB8]);
    v48 = v64.origin.x;
    v49 = v64.origin.y;
    v50 = v64.size.width;
    v51 = v64.size.height;

    a1[1] = v48;
    a1[2] = v49;
    a1[3] = v50;
    a1[4] = v51;
  }
}

id WKUIBreadcrumbPath.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WKUIBreadcrumbPath.init()()
{
  v1 = &v0[OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_boundingMapRect];
  v2 = *MEMORY[0x277CD4BB8];
  v3 = *(MEMORY[0x277CD4BB8] + 8);
  v4 = *(MEMORY[0x277CD4BB8] + 16);
  v5 = *(MEMORY[0x277CD4BB8] + 24);
  *v1 = *MEMORY[0x277CD4BB8];
  *(v1 + 1) = v3;
  *(v1 + 2) = v4;
  *(v1 + 3) = v5;
  v6 = &v0[OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_coordinate];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_protectedBreadcrumbData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy9WorkoutUI18WKUIBreadcrumbPathC14BreadcrumbData33_DEB42BD608773CB55C8F413DFA93ADD5LLVSo16os_unfair_lock_sVGMd);
  v8 = swift_allocObject();
  *(v8 + 56) = 0;
  *(v8 + 16) = MEMORY[0x277D84F90];
  *(v8 + 24) = v2;
  *(v8 + 32) = v3;
  *(v8 + 40) = v4;
  *(v8 + 48) = v5;
  *&v0[v7] = v8;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for WKUIBreadcrumbPath();
  return objc_msgSendSuper2(&v10, sel_init);
}

id WKUIBreadcrumbPath.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WKUIBreadcrumbPath();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for WKUIBreadcrumbPath.BreadcrumbData(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WKUIBreadcrumbPath.BreadcrumbData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CurrentElevationMetricView.init(elevation:gpsUnavailable:formattingManager:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = swift_getKeyPath();
  *(a5 + 32) = 0;
  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  *(a5 + 9) = a3;
  *(a5 + 16) = a4;
  *(a5 + 24) = result;
  return result;
}

uint64_t CurrentElevationMetricView.descriptionString.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 24);
  if (*(v0 + 32) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v16[8];
  }

  if (v5 <= 9u && ((1 << v5) & 0x301) != 0)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = WorkoutUIBundle.super.isa;
    v15 = 0xE000000000000000;
    v8 = 0x800000020CB97960;
    v9 = 0xD00000000000001CLL;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = WorkoutUIBundle.super.isa;
    v15 = 0xE000000000000000;
    v9 = 0xD000000000000021;
    v8 = 0x800000020CB97930;
  }

  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v9, v10, v7, v11, *(&v15 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

id CurrentElevationMetricView.accessibilityLabel.getter()
{
  if (*(v0 + 8) & 1) != 0 || (*(v0 + 9))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = WorkoutUIBundle.super.isa;
    v21._object = 0xE000000000000000;
    v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v18.value._object = 0xEB00000000656C62;
    v19._object = 0x800000020CB97910;
    v19._countAndFlagsBits = 0xD000000000000014;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v21)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v1 = *v0;
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20CB5EA80;
  result = [v2 localizedStringWithDistanceInMeters:5 distanceType:0 unitStyle:v1];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  result = [v2 unitManager];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  v10 = [result userDistanceUnitForDistanceType_];

  result = [v2 localizedShortUnitStringForDistanceUnit:v10 textCase:2];
  if (result)
  {
    v11 = result;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *(v3 + 48) = v12;
    *(v3 + 56) = v14;
    *(v3 + 64) = CurrentElevationMetricView.descriptionString.getter();
    *(v3 + 72) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();

    return countAndFlagsBits;
  }

LABEL_13:
  __break(1u);
  return result;
}

id CurrentElevationMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v1 + 8) & 1) != 0 || (*(v1 + 9))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = WorkoutUIBundle.super.isa;
    v24 = 0xE000000000000000;
    v25._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0x4E5F43495254454DLL;
    v14._object = 0xEE0045554C41564FLL;
    v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v15.value._object = 0xEB00000000656C62;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v25._countAndFlagsBits = 0;
    v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v25);
    countAndFlagsBits = v17._countAndFlagsBits;
    object = v17._object;

    v23 = 0;
    goto LABEL_10;
  }

  result = [v3 localizedStringWithDistanceInMeters:5 distanceType:0 unitStyle:*v1];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v7;

  result = [v3 unitManager];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  v9 = [result userDistanceUnitForDistanceType_];

  result = [v3 localizedShortUnitStringForDistanceUnit:v9 textCase:2];
  if (result)
  {
    v10 = result;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v11;

    object = v22;
LABEL_10:
    v18 = CurrentElevationMetricView.descriptionString.getter();
    v20 = v19;
    result = CurrentElevationMetricView.accessibilityLabel.getter();
    *a1 = countAndFlagsBits;
    *(a1 + 8) = object;
    *(a1 + 16) = v23;
    *(a1 + 24) = v24;
    *(a1 + 32) = v18;
    *(a1 + 40) = v20;
    *(a1 + 48) = 0;
    *(a1 + 56) = result;
    *(a1 + 64) = v21;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for CurrentElevationMetricView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CurrentElevationMetricView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ViewControllerWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ViewControllerWrapper and conformance ViewControllerWrapper();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ViewControllerWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ViewControllerWrapper and conformance ViewControllerWrapper();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ViewControllerWrapper()
{
  lazy protocol witness table accessor for type ViewControllerWrapper and conformance ViewControllerWrapper();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t WorkoutNotificationFont.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA15ModifiedContentVyAA01_c9Modifier_K0Vy07WorkoutB00M16NotificationFontVGAA022_EnvironmentKeyWritingL0VyAA0O0VSgGG_Qo_Md);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA014_ViewModifier_D0Vy07WorkoutB00I16NotificationFontVGAA022_EnvironmentKeyWritingH0VyAA0K0VSgGGAA0G0PAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAT_Qo__GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00G16NotificationFontVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = *v2;
  v14 = *(v2 + 8);
  v15 = *(v2 + 9);
  if (FIUICurrentLanguageRequiresTallScript())
  {
    v30 = v13;
    LOBYTE(v31) = v14;
    BYTE1(v31) = v15;
    v16 = WorkoutNotificationFont.systemFontForPreference.getter();
    KeyPath = swift_getKeyPath();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F16NotificationFontVGMd);
    (*(*(v18 - 8) + 16))(v12, v28, v18);
    v19 = &v12[*(v10 + 36)];
    *v19 = KeyPath;
    v19[1] = v16;
    outlined init with copy of ModifiedContent<_ViewModifier_Content<WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<Font?>>(v12, v9);
    swift_storeEnumTagMultiPayload();
    v20 = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    v30 = v10;
    v31 = v20;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<_ViewModifier_Content<WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<Font?>>(v12, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00G16NotificationFontVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd);
  }

  else
  {
    v30 = v13;
    LOBYTE(v31) = v14;
    BYTE1(v31) = v15;
    v22 = WorkoutNotificationFont.systemFontForPreference.getter();
    v23 = swift_getKeyPath();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F16NotificationFontVGMd);
    (*(*(v24 - 8) + 16))(v12, v28, v24);
    v25 = &v12[*(v10 + 36)];
    *v25 = v23;
    v25[1] = v22;
    MetricPlatterConstants.init()(&v30);
    v26 = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    View.maximumLineHeight(_:)();
    outlined destroy of ModifiedContent<_ViewModifier_Content<WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<Font?>>(v12, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00G16NotificationFontVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd);
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    v30 = v10;
    v31 = v26;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t WorkoutNotificationFont.systemFontForPreference.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20[-v2];
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v0;
  v9 = *(v0 + 8);
  v10 = *(v0 + 9);
  if (v9 == 1)
  {
    if (*v0 != 7)
    {
      goto LABEL_3;
    }

LABEL_6:
    static Font.Weight.regular.getter();
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  outlined consume of Environment<WorkoutViewStyle>.Content(v8, 0);
  (*(v5 + 8))(v7, v4);
  if (v22 == 7)
  {
    goto LABEL_6;
  }

LABEL_3:
  static Font.Weight.medium.getter();
  if (!v9)
  {
LABEL_4:

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v8, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v8) = v21;
    goto LABEL_8;
  }

LABEL_7:
  v21 = v8;
LABEL_8:
  if (one-time initialization token for fontSize != -1)
  {
    swift_once();
  }

  if (v8 <= 4u)
  {
    if (v8 - 2 >= 3 && !v8)
    {
      goto LABEL_17;
    }

LABEL_16:
    v13 = [objc_opt_self() currentDevice];
    specialized UIDevice.screenType.getter();

    goto LABEL_17;
  }

  if (v8 <= 7u)
  {
    goto LABEL_16;
  }

  if (v8 - 8 >= 2)
  {
    specialized static LayoutUtilities.layoutMetric(regular42:)(28.0);
  }

LABEL_17:
  FIUICurrentLanguageRequiresTallScript();
  v14 = *MEMORY[0x277CE09A0];
  v15 = type metadata accessor for Font.Design();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v3, v14, v15);
  (*(v16 + 56))(v3, 0, 1, v15);
  static Font.system(size:weight:design:)();
  outlined destroy of ModifiedContent<_ViewModifier_Content<WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<Font?>>(v3, &_s7SwiftUI4FontV6DesignOSgMd);
  v17 = Font.monospacedDigit()();

  if (v10)
  {
    v18 = Font.lowercaseSmallCaps()();

    return v18;
  }

  return v17;
}

uint64_t static WorkoutNotificationFont.multilineTextView(with:lineLimit:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = v12;
  *(a2 + 56) = 0x3FE0000000000000;
  *(a2 + 64) = result;
  *(a2 + 72) = a1;
  *(a2 + 80) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00G16NotificationFontVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutNotificationFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutNotificationFont> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F16NotificationFontVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutNotificationFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<_ViewModifier_Content<WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00G16NotificationFontVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t key path getter for EnvironmentValues.minimumScaleFactor : EnvironmentValues, serialized@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutNotificationFont(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutNotificationFont(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<Font?>>, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<Font?>>, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<Font?>>, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy07WorkoutB00H16NotificationFontVGAA022_EnvironmentKeyWritingG0VyAA0J0VSgGGAA0F0PAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAR_Qo_GMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00G16NotificationFontVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<Font?>>, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutNotificationFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, WorkoutNotificationFont> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutNotificationFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, WorkoutNotificationFont> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, WorkoutNotificationFont> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, WorkoutNotificationFont> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB00F16NotificationFontVGMd);
    lazy protocol witness table accessor for type WorkoutNotificationFont and conformance WorkoutNotificationFont();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, WorkoutNotificationFont> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationFont and conformance WorkoutNotificationFont()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationFont and conformance WorkoutNotificationFont;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationFont and conformance WorkoutNotificationFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationFont and conformance WorkoutNotificationFont);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutNotificationFont> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<_ViewModifier_Content<WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for RangedAlertStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RangedAlertStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [RangedAlertStyle] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [RangedAlertStyle] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RangedAlertStyle] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI16RangedAlertStyleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [RangedAlertStyle] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RangedAlertStyle(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x65676E6172;
  if (v2 != 1)
  {
    v4 = 6710895;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746567726174;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65676E6172;
  if (*a2 != 1)
  {
    v8 = 6710895;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746567726174;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RangedAlertStyle@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized RangedAlertStyle.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance RangedAlertStyle(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65676E6172;
  if (v2 != 1)
  {
    v5 = 6710895;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746567726174;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RangedAlertStyle()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RangedAlertStyle()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RangedAlertStyle()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type RangedAlertStyle and conformance RangedAlertStyle()
{
  result = lazy protocol witness table cache variable for type RangedAlertStyle and conformance RangedAlertStyle;
  if (!lazy protocol witness table cache variable for type RangedAlertStyle and conformance RangedAlertStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangedAlertStyle and conformance RangedAlertStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RangedAlertStyle and conformance RangedAlertStyle;
  if (!lazy protocol witness table cache variable for type RangedAlertStyle and conformance RangedAlertStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangedAlertStyle and conformance RangedAlertStyle);
  }

  return result;
}

uint64_t RangedAlertStyle.displayString.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v1 = WorkoutUIBundle.super.isa;
      v10 = 0xE000000000000000;
      v2 = 0x617A696C61636F4CLL;
      v3 = 0xEB00000000656C62;
      v4 = 0xD000000000000018;
      v5 = 0x800000020CB979A0;
    }

    else
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v1 = WorkoutUIBundle.super.isa;
      v10 = 0xE000000000000000;
      v2 = 0x617A696C61636F4CLL;
      v3 = 0xEB00000000656C62;
      v5 = 0x800000020CB97980;
      v4 = 0xD000000000000016;
    }
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = WorkoutUIBundle.super.isa;
    v10 = 0xE000000000000000;
    v2 = 0x617A696C61636F4CLL;
    v3 = 0xEB00000000656C62;
    v4 = 0xD000000000000019;
    v5 = 0x800000020CB979C0;
  }

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, *&v2, v1, v6, *(&v10 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t specialized RangedAlertStyle.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RangedAlertStyle.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t MediaConfigurationRoomViewModel.topSuggestions.getter()
{
  return MediaConfigurationRoomViewModel.topSuggestions.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t MediaConfigurationRoomViewModel.newConfiguration.getter()
{
  return MediaConfigurationRoomViewModel.newConfiguration.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t MediaConfigurationRoomViewModel.currentlySelectedSuggestion.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t MediaConfigurationRoomViewModel.isLoadingTopSuggestions.getter()
{
  return MediaConfigurationRoomViewModel.isLoadingTopSuggestions.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t MediaConfigurationRoomViewModel.init(activityType:mediaConfiguration:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v81 = a1;
  v82 = a4;
  v71 = a3;
  v74 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = &v65 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9WorkoutUI30MediaPlaybackConfigurationTypeOGGMd);
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x28223BE20](v8);
  v78 = &v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x28223BE20](v10);
  v75 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore26MusicLibraryPlaylistsModelCGMd);
  v72 = *(v12 - 8);
  v73 = v12;
  MEMORY[0x28223BE20](v12);
  v70 = &v65 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C15MediaSuggestionVSgGMd);
  v68 = *(v14 - 8);
  v69 = v14;
  MEMORY[0x28223BE20](v14);
  v67 = &v65 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A15MediaSuggestionVSgMd);
  MEMORY[0x28223BE20](v66);
  v65 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9WorkoutUI0C13MediaProviderVGGMd);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v65 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMd);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v65 - v26;
  v28 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__topSuggestions;
  v29 = MEMORY[0x277D84F90];
  v85 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A15MediaSuggestionVGMd);
  Published.init(initialValue:)();
  (*(v25 + 32))(v5 + v28, v27, v24);
  v30 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__mediaProviders;
  v85 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A13MediaProviderVGMd);
  Published.init(initialValue:)();
  v31 = v23;
  v32 = v71;
  (*(v21 + 32))(v5 + v30, v31, v20);
  v33 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__currentlySelectedSuggestion;
  v34 = type metadata accessor for WorkoutMediaSuggestion();
  (*(*(v34 - 8) + 56))(v19, 1, 1, v34);
  outlined init with copy of WorkoutMediaSuggestion?(v19, v65);
  v35 = v67;
  Published.init(initialValue:)();
  v36 = v19;
  v37 = v74;
  outlined destroy of WorkoutMediaSuggestion?(v36, &_s11WorkoutCore0A15MediaSuggestionVSgMd);
  (*(v68 + 32))(v5 + v33, v35, v69);
  v38 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_mediaSuggestionsModel;
  type metadata accessor for MediaSuggestionsModel();
  *(v5 + v38) = static MediaSuggestionsModel.sharedInstance.getter();
  v39 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_mediaPlaybackStore;
  type metadata accessor for MediaPlaybackStore();
  *(v5 + v39) = static MediaPlaybackStore.sharedInstance.getter();
  v40 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__libraryPlaylistsModel;
  type metadata accessor for MusicLibraryPlaylistsModel();
  v85 = static MusicLibraryPlaylistsModel.sharedInstance.getter();
  v41 = v70;
  Published.init(initialValue:)();
  (*(v72 + 32))(v5 + v40, v41, v73);
  *(v5 + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_mediaAppsBundleIDs) = v29;
  v42 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__isLoadingTopSuggestions;
  LOBYTE(v85) = 0;
  v43 = v75;
  Published.init(initialValue:)();
  v44 = v77;
  v45 = *(v76 + 32);
  v45(v5 + v42, v43, v77);
  v46 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__isLoadingAppSpecificSuggestions;
  LOBYTE(v85) = 0;
  Published.init(initialValue:)();
  v45(v5 + v46, v43, v44);
  v47 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__playbackConfigurationTypes;
  v85 = &outlined read-only object #0 of MediaConfigurationRoomViewModel.init(activityType:mediaConfiguration:);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI30MediaPlaybackConfigurationTypeOGMd);
  v48 = v78;
  Published.init(initialValue:)();
  (*(v79 + 32))(v5 + v47, v48, v80);
  *(v5 + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_shouldPresentNoMediaSelectionAlert) = 0;
  v50 = v81;
  v49 = v82;
  *(v5 + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_activityType) = v81;
  v51 = (v5 + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__originalConfiguration);
  *v51 = v37;
  v51[1] = v32;
  v51[2] = v49;
  v85 = v37;
  v86 = v32;
  v87 = v49;
  v52 = v49;
  v53 = v50;

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore30MediaPlaybackConfigurationItemCSgGMd);
  MEMORY[0x20F30B100](&v84, v54);
  v55 = v84;
  if (!v84)
  {
    v56 = objc_allocWithZone(type metadata accessor for MediaPlaybackConfigurationItem());
    v55 = MediaPlaybackConfigurationItem.init(autoPlayEnabled:smartStationEnabled:mediaSuggestion:)();
  }

  dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter();
  dispatch thunk of MediaPlaybackConfigurationItem.smartStationEnabled.getter();
  dispatch thunk of MediaPlaybackConfigurationItem.mediaSuggestion.getter();
  v57 = objc_allocWithZone(type metadata accessor for MediaPlaybackConfigurationItem());
  v58 = MediaPlaybackConfigurationItem.init(autoPlayEnabled:smartStationEnabled:mediaSuggestion:)();
  swift_beginAccess();
  v84 = v58;
  Published.init(initialValue:)();
  swift_endAccess();
  if (dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    dispatch thunk of MusicLibraryPlaylistsModel.loadLibrarySuggestions()();
  }

  MediaConfigurationRoomViewModel.setCurrentlySelectedSuggestion()();
  MediaConfigurationRoomViewModel.populateTopSuggestions()();
  MediaConfigurationRoomViewModel.populateAppSpecificSuggestions()();
  v59 = v83;
  static TaskPriority.userInitiated.getter();
  v60 = type metadata accessor for TaskPriority();
  (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
  type metadata accessor for MainActor();

  v61 = static MainActor.shared.getter();
  v62 = swift_allocObject();
  v63 = MEMORY[0x277D85700];
  v62[2] = v61;
  v62[3] = v63;
  v62[4] = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v59, &async function pointer to partial apply for closure #1 in MediaConfigurationRoomViewModel.checkAvailableConfigurationTypes(), v62);

  return v5;
}

Swift::Void __swiftcall MediaConfigurationRoomViewModel.setCurrentlySelectedSuggestion()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v12[1];
  v6 = dispatch thunk of MediaPlaybackConfigurationItem.mediaSuggestion.getter();

  if (v6)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = v6;

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    v10[5] = v1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in MediaConfigurationRoomViewModel.setCurrentlySelectedSuggestion(), v10);
  }
}

uint64_t closure #1 in MediaConfigurationRoomViewModel.setCurrentlySelectedSuggestion()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[19] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[20] = v9;
  v5[21] = v8;

  return MEMORY[0x2822009F8](closure #1 in MediaConfigurationRoomViewModel.setCurrentlySelectedSuggestion(), v9, v8);
}

uint64_t closure #1 in MediaConfigurationRoomViewModel.setCurrentlySelectedSuggestion()()
{
  v1 = [*(v0 + 88) identifier];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3 = *(v0 + 88);
  v4 = [v3 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = [v3 title];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = [*(v0 + 88) artist];
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = *(v0 + 88);
  type metadata accessor for WorkoutMediaSuggestion();
  *(v0 + 64) = swift_allocBox();
  *(v0 + 72) = v10;
  *(v0 + 176) = v10;
  v9;
  WorkoutMediaSuggestion.init(id:artwork:bundleID:title:detail:msSuggestion:sendFeedback:)();
  type metadata accessor for MediaPlaybackArtworkStore();
  *(v0 + 184) = static MediaPlaybackArtworkStore.shared.getter();
  v14 = (*MEMORY[0x277D7E530] + MEMORY[0x277D7E530]);
  v11 = swift_task_alloc();
  *(v0 + 192) = v11;
  *v11 = v0;
  v11[1] = closure #1 in MediaConfigurationRoomViewModel.setCurrentlySelectedSuggestion();
  v12 = *(v0 + 88);

  return v14(v12);
}

{
  v1 = v0[25];
  if (!v1)
  {
LABEL_8:
    v18 = swift_task_alloc();
    v0[26] = v18;
    *v18 = v0;
    v18[1] = closure #1 in MediaConfigurationRoomViewModel.setCurrentlySelectedSuggestion();

    return MEMORY[0x2821E7328]();
  }

  v2 = [v0[25] _imageData];
  if (!v2)
  {
    __break(1u);
    return MEMORY[0x2821E7328]();
  }

  v3 = v2;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = objc_allocWithZone(MEMORY[0x277D755B8]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = [v7 initWithData_];

  outlined consume of Data._Representation(v4, v6);
  if (!v9)
  {

    goto LABEL_8;
  }

  WorkoutMediaSuggestion.artwork.setter();

  v10 = v0[8];
  v11 = v0[18];
  v12 = v0[15];
  v22 = v0[17];
  v23 = v0[16];
  v20 = v0[13];
  v21 = v0[14];
  type metadata accessor for OS_dispatch_queue();
  v19 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;
  v0[6] = partial apply for closure #2 in closure #1 in MediaConfigurationRoomViewModel.setCurrentlySelectedSuggestion();
  v0[7] = v14;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v0[5] = &block_descriptor_148_0;
  v15 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[10] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v11, v12, v15);
  _Block_release(v15);

  (*(v21 + 8))(v12, v20);
  (*(v22 + 8))(v11, v23);

  v16 = v0[1];

  return v16();
}

{
  v1 = v0[27];

  if (v1)
  {
    WorkoutMediaSuggestion.artwork.setter();
  }

  v2 = v0[8];
  v3 = v0[18];
  v4 = v0[15];
  v13 = v0[17];
  v14 = v0[16];
  v11 = v0[13];
  v12 = v0[14];
  type metadata accessor for OS_dispatch_queue();
  v10 = static OS_dispatch_queue.main.getter();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v0[6] = partial apply for closure #2 in closure #1 in MediaConfigurationRoomViewModel.setCurrentlySelectedSuggestion();
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v0[5] = &block_descriptor_148_0;
  v7 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[10] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v3, v4, v7);
  _Block_release(v7);

  (*(v12 + 8))(v4, v11);
  (*(v13 + 8))(v3, v14);

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in MediaConfigurationRoomViewModel.setCurrentlySelectedSuggestion()(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 200) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x2822009F8](closure #1 in MediaConfigurationRoomViewModel.setCurrentlySelectedSuggestion(), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 216) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x2822009F8](closure #1 in MediaConfigurationRoomViewModel.setCurrentlySelectedSuggestion(), v4, v3);
}

uint64_t closure #2 in closure #1 in MediaConfigurationRoomViewModel.setCurrentlySelectedSuggestion()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A15MediaSuggestionVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v5 = &v10[-v4];
  v6 = type metadata accessor for WorkoutMediaSuggestion();
  v7 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v9 = *(v6 - 8);
    (*(v9 + 16))(v5, v7, v6);
    (*(v9 + 56))(v5, 0, 1, v6);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of WorkoutMediaSuggestion?(v5, v2);
    static Published.subscript.setter();
    return outlined destroy of WorkoutMediaSuggestion?(v5, &_s11WorkoutCore0A15MediaSuggestionVSgMd);
  }

  return result;
}

Swift::Void __swiftcall MediaConfigurationRoomViewModel.populateTopSuggestions()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v49 = &v41 - v3;
  v4 = type metadata accessor for Logger();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Date();
  v7 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = v8;
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v13 + 8))(v15, v12);
  v16 = specialized Collection.prefix(_:)(8);
  v50 = v18;
  v51 = v17;
  v20 = v19;

  v47 = v11;
  Date.init()();
  static WOLog.mediaPlayback.getter();
  swift_retain_n();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v42 = v16;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v53 = v25;
    *v24 = 136315394;

    v26 = MEMORY[0x20F30BBA0](v16, v51, v50, v20);
    v28 = v27;

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v53);

    *(v24 + 4) = v29;
    *(v24 + 12) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v24 + 14) = v52;

    _os_log_impl(&dword_20C66F000, v21, v22, "[%s] UI_SPINNER: Starting populateTopSuggestions - isLoadingTopSuggestions=true isLoadingAppSpecific=%{BOOL}d", v24, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x20F30E080](v25, -1, -1);
    MEMORY[0x20F30E080](v24, -1, -1);
  }

  else
  {
  }

  (*(v43 + 8))(v6, v44);
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = 1;

  static Published.subscript.setter();
  v30 = v49;
  static TaskPriority.userInitiated.getter();
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v33 = v46;
  v32 = v47;
  v34 = v48;
  (*(v7 + 16))(v46, v47, v48);
  type metadata accessor for MainActor();

  v35 = static MainActor.shared.getter();
  v36 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D85700];
  *(v37 + 2) = v35;
  *(v37 + 3) = v38;
  v39 = v50;
  v40 = v51;
  *(v37 + 4) = v42;
  *(v37 + 5) = v40;
  *(v37 + 6) = v39;
  *(v37 + 7) = v20;
  *(v37 + 8) = v1;
  (*(v7 + 32))(&v37[v36], v33, v34);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v30, &async function pointer to partial apply for closure #1 in MediaConfigurationRoomViewModel.populateTopSuggestions(), v37);

  (*(v7 + 8))(v32, v34);
}

uint64_t closure #1 in MediaConfigurationRoomViewModel.populateTopSuggestions()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v18;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v8[18] = v10;
  v8[19] = *(v10 - 8);
  v8[20] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v8[21] = v11;
  v8[22] = *(v11 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v8[25] = v12;
  v13 = *(v12 - 8);
  v8[26] = v13;
  v8[27] = *(v13 + 64);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[32] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[33] = v15;
  v8[34] = v14;

  return MEMORY[0x2822009F8](closure #1 in MediaConfigurationRoomViewModel.populateTopSuggestions(), v15, v14);
}

uint64_t closure #1 in MediaConfigurationRoomViewModel.populateTopSuggestions()()
{
  v28 = v0;
  Date.init()();
  static WOLog.mediaPlayback.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  if (v3)
  {
    v7 = v0[12];
    v23 = v0[13];
    v9 = v0[10];
    v8 = v0[11];
    v25 = v0[24];
    v10 = v0[9];
    v24 = v0[21];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315394;
    v13 = MEMORY[0x20F30BBA0](v10, v9, v8, v7);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v27);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    [*(v23 + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_activityType) identifier];
    v16 = HKWorkoutActivityType.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v27);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_20C66F000, v1, v2, "[%s] UI_SPINNER: Task started for top suggestions - activityType: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v12, -1, -1);
    MEMORY[0x20F30E080](v11, -1, -1);

    v19 = *(v5 + 8);
    v19(v25, v24);
  }

  else
  {

    v19 = *(v5 + 8);
    v19(v4, v6);
  }

  v0[35] = v19;
  v20 = [*(v0[13] + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_activityType) identifier];
  v26 = (*MEMORY[0x277D7E370] + MEMORY[0x277D7E370]);
  v21 = swift_task_alloc();
  v0[36] = v21;
  *v21 = v0;
  v21[1] = closure #1 in MediaConfigurationRoomViewModel.populateTopSuggestions();

  return v26(v20, 0, 0, 0, 4);
}

{
  v70 = v0;
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[26];

  Date.init()();
  Date.timeIntervalSince(_:)();
  v5 = v4;
  v63 = *(v3 + 8);
  v63(v1, v2);
  Date.init()();
  static WOLog.mediaPlayback.getter();
  swift_bridgeObjectRetain_n();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[37];
  v10 = v0[35];
  v11 = v0[23];
  v12 = v0[21];
  if (v8)
  {
    v14 = v0[11];
    v13 = v0[12];
    v65 = v0[23];
    v67 = v0[35];
    v16 = v0[9];
    v15 = v0[10];
    v64 = v0[21];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v69[0] = v18;
    *v17 = 136315650;
    v19 = MEMORY[0x20F30BBA0](v16, v15, v14, v13);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v69);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2048;
    v22 = *(v9 + 16);

    *(v17 + 14) = v22;

    *(v17 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D839F8];
    *(v23 + 16) = xmmword_20CB5DA70;
    v25 = MEMORY[0x277D83A80];
    *(v23 + 56) = v24;
    *(v23 + 64) = v25;
    *(v23 + 32) = v5;
    v26 = String.init(format:_:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v69);

    *(v17 + 24) = v28;
    _os_log_impl(&dword_20C66F000, v6, v7, "[%s] UI_SPINNER: MediaSuggestionsModel returned %ld top suggestions in %ss - dispatching to main queue", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v18, -1, -1);
    MEMORY[0x20F30E080](v17, -1, -1);

    v67(v65, v64);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v10(v11, v12);
  }

  v53 = v0[37];
  v29 = v0[30];
  v62 = v0[31];
  v66 = v29;
  v30 = v0[28];
  v31 = v0[29];
  v56 = v31;
  v68 = v30;
  v32 = v0[26];
  v33 = v0[27];
  v34 = v0[25];
  v54 = v0[20];
  v60 = v0[19];
  v61 = v0[18];
  v59 = v0[16];
  v57 = v0[17];
  v58 = v0[15];
  v35 = v0[14];
  v51 = v0[11];
  v52 = v0[12];
  v50 = *(v0 + 9);
  type metadata accessor for OS_dispatch_queue();
  v55 = static OS_dispatch_queue.main.getter();
  v49 = swift_allocObject();
  swift_weakInit();
  v36 = *(v32 + 16);
  v36(v29, v31, v34);
  v36(v30, v35, v34);
  v37 = *(v32 + 80);
  v38 = (v37 + 16) & ~v37;
  v39 = (v33 + v37 + v38) & ~v37;
  v40 = (v33 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 39) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v44 = *(v32 + 32);
  v44(v43 + v38, v66, v34);
  v44(v43 + v39, v68, v34);
  v45 = v43 + v40;
  *v45 = v50;
  *(v45 + 16) = v51;
  *(v45 + 24) = v52;
  *(v43 + v41) = v49;
  *(v43 + v42) = v53;
  *(v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v0[6] = partial apply for closure #1 in closure #1 in MediaConfigurationRoomViewModel.populateTopSuggestions();
  v0[7] = v43;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v0[5] = &block_descriptor_129;
  v46 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[8] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v54, v57, v46);
  _Block_release(v46);

  (*(v59 + 8))(v57, v58);
  (*(v60 + 8))(v54, v61);
  v63(v56, v34);
  v63(v62, v34);

  v47 = v0[1];

  return v47();
}

uint64_t closure #1 in MediaConfigurationRoomViewModel.populateTopSuggestions()(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 296) = a1;

  v3 = *(v2 + 272);
  v4 = *(v2 + 264);

  return MEMORY[0x2822009F8](closure #1 in MediaConfigurationRoomViewModel.populateTopSuggestions(), v4, v3);
}

uint64_t closure #1 in closure #1 in MediaConfigurationRoomViewModel.populateTopSuggestions()(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v95 = a9;
  *&v105 = a6;
  v13 = type metadata accessor for Logger();
  v106 = *(v13 - 8);
  v107 = v13;
  MEMORY[0x28223BE20](v13);
  v104 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v101 = &v95 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v95 - v18;
  v100 = type metadata accessor for Date();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v95 - v23;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v26 = v25;
  Date.timeIntervalSince(_:)();
  v28 = v27;
  static WOLog.mediaPlayback.getter();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v32 = MEMORY[0x277D839F8];
  v102 = a5;
  v103 = v24;
  v98 = v21;
  v97 = a7;
  v96 = a4;
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v111[0] = v34;
    *v33 = 136315394;
    v35 = MEMORY[0x20F30BBA0](a4, a5, v105, a7);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v111);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_20CB5DA70;
    *(v38 + 56) = v32;
    *(v38 + 64) = MEMORY[0x277D83A80];
    *(v38 + 32) = v26;
    v39 = String.init(format:_:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v111);

    *(v33 + 14) = v41;
    _os_log_impl(&dword_20C66F000, v29, v30, "[%s] UI_SPINNER: Main queue dispatch delay: %ss - starting UI state update", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v34, -1, -1);
    v42 = v33;
    v24 = v103;
    v21 = v98;
    MEMORY[0x20F30E080](v42, -1, -1);
  }

  v43 = *(v106 + 8);
  v43(v19, v107);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v110[1] = v95;

    static Published.subscript.setter();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v45 = v97;
  v46 = v102;
  v47 = &unk_20CB5D000;
  if (Strong)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v109 = 0;
    static Published.subscript.setter();
  }

  v48 = v101;
  static WOLog.mediaPlayback.getter();
  swift_retain_n();

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v49, v50))
  {

    v43(v48, v107);
    v56 = v104;
    goto LABEL_15;
  }

  v51 = swift_slowAlloc();
  v95 = swift_slowAlloc();
  v110[0] = v95;
  *v51 = 136315650;
  v52 = MEMORY[0x20F30BBA0](v96, v46, v105, v45);
  v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v110);

  *(v51 + 4) = v54;
  *(v51 + 12) = 1024;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {

    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v108 & 1) == 0)
  {
LABEL_13:
    v55 = 0;
    goto LABEL_14;
  }

  v55 = 1;
LABEL_14:
  v24 = v103;
  v56 = v104;
  *(v51 + 14) = v55;

  *(v51 + 18) = 1024;
  *(v51 + 20) = [objc_opt_self() isMainThread];
  _os_log_impl(&dword_20C66F000, v49, v50, "[%s] UI_SPINNER: isLoadingTopSuggestions=false isLoadingAppSpecific=%{BOOL}d - state_update: topSuggestions_completed - mainThread: %{BOOL}d", v51, 0x18u);
  v57 = v95;
  __swift_destroy_boxed_opaque_existential_0(v95);
  MEMORY[0x20F30E080](v57, -1, -1);
  MEMORY[0x20F30E080](v51, -1, -1);

  v43(v101, v107);
  v46 = v102;
  v47 = &unk_20CB5D000;
LABEL_15:
  Date.init()();
  Date.timeIntervalSince(_:)();
  v59 = v58;
  static WOLog.mediaPlayback.getter();

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  v62 = os_log_type_enabled(v60, v61);
  v63 = v105;
  if (v62)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v110[0] = v65;
    *v64 = 136316418;
    v66 = MEMORY[0x20F30BBA0](v96, v46, v63, v45);
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v110);

    *(v64 + 4) = v68;
    *(v64 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v69 = swift_allocObject();
    v105 = v47[167];
    *(v69 + 16) = v105;
    v70 = MEMORY[0x277D839F8];
    *(v69 + 56) = MEMORY[0x277D839F8];
    v71 = MEMORY[0x277D83A80];
    *(v69 + 64) = MEMORY[0x277D83A80];
    *(v69 + 32) = v59;
    v72 = String.init(format:_:)();
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v110);

    *(v64 + 14) = v74;
    *(v64 + 22) = 2080;
    v75 = swift_allocObject();
    *(v75 + 16) = v105;
    *(v75 + 56) = v70;
    *(v75 + 64) = v71;
    *(v75 + 32) = v28;
    v76 = String.init(format:_:)();
    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v110);

    *(v64 + 24) = v78;
    *(v64 + 32) = 2080;
    v79 = swift_allocObject();
    *(v79 + 16) = v105;
    *(v79 + 56) = v70;
    *(v79 + 64) = v71;
    *(v79 + 32) = a1;
    v80 = String.init(format:_:)();
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, v110);

    *(v64 + 34) = v82;
    *(v64 + 42) = 2080;
    v83 = swift_allocObject();
    *(v83 + 16) = v105;
    *(v83 + 56) = v70;
    *(v83 + 64) = v71;
    *(v83 + 32) = v26;
    v84 = String.init(format:_:)();
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v110);

    *(v64 + 44) = v86;
    *(v64 + 52) = 2080;
    v87 = swift_allocObject();
    *(v87 + 16) = v105;
    *(v87 + 56) = v70;
    *(v87 + 64) = v71;
    *(v87 + 32) = v59;
    v88 = String.init(format:_:)();
    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v110);

    *(v64 + 54) = v90;
    _os_log_impl(&dword_20C66F000, v60, v61, "[%s] UI_SPINNER: State update completed in %ss - total time: %ss (service: %ss, main queue delay: %ss, UI update: %ss)", v64, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v65, -1, -1);
    MEMORY[0x20F30E080](v64, -1, -1);

    (*(v106 + 8))(v104, v107);
    v91 = *(v99 + 8);
    v92 = v100;
    v91(v98, v100);
    v93 = v103;
  }

  else
  {

    v43(v56, v107);
    v91 = *(v99 + 8);
    v92 = v100;
    v91(v21, v100);
    v93 = v24;
  }

  return (v91)(v93, v92);
}

uint64_t MediaConfigurationRoomViewModel.fetchBundleIDsForMediaContent()()
{
  v1[7] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[21] = v6;
  v1[22] = *(v6 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v1[28] = v7;
  v1[29] = *(v7 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = type metadata accessor for MainActor();
  v1[32] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[33] = v9;
  v1[34] = v8;

  return MEMORY[0x2822009F8](MediaConfigurationRoomViewModel.fetchBundleIDsForMediaContent(), v9, v8);
}

{
  v58 = v0;
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v2 + 8))(v1, v3);
  v4 = specialized Collection.prefix(_:)(8);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v0[35] = v4;
  v0[36] = v6;
  v0[37] = v8;
  v0[38] = v10;
  static WOLog.mediaPlayback.getter();
  swift_retain_n();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v54 = v6;
  v55 = v4;
  v53 = v8;
  if (os_log_type_enabled(v11, v12))
  {
    v49 = v0[22];
    v50 = v0[21];
    v51 = v0[27];
    v13 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v57 = v48;
    *v13 = 136315394;

    v14 = MEMORY[0x20F30BBA0](v4, v6, v8, v10);
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v57);

    *(v13 + 4) = v17;
    *(v13 + 12) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    LOBYTE(v16) = dispatch thunk of MusicLibraryPlaylistsModel.loadingLibraryPlaylists.getter();

    *(v13 + 14) = v16 & 1;

    _os_log_impl(&dword_20C66F000, v11, v12, "[%s] FLOW_BUNDLE_START: fetchBundleIDsForMediaContent - loadingLibraryPlaylists=%{BOOL}d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x20F30E080](v48, -1, -1);
    MEMORY[0x20F30E080](v13, -1, -1);

    v18 = *(v49 + 8);
    v18(v51, v50);
  }

  else
  {
    v19 = v0[27];
    v20 = v0[21];
    v21 = v0[22];

    v18 = *(v21 + 8);
    v18(v19, v20);
  }

  v0[39] = v18;
  static WOLog.mediaPlayback.getter();
  swift_retain_n();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[26];
  v26 = v0[21];
  if (v24)
  {
    v52 = v0[21];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v57 = v28;
    *v27 = 136315394;

    v29 = MEMORY[0x20F30BBA0](v55, v54, v53, v10);
    v56 = v25;
    v30 = v29;
    v32 = v31;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v57);

    *(v27 + 4) = v33;
    *(v27 + 12) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v34 = dispatch thunk of MusicLibraryPlaylistsModel.loadingLibraryPlaylists.getter();

    *(v27 + 14) = v34 & 1;

    _os_log_impl(&dword_20C66F000, v22, v23, "[%s] AWAIT_LIBRARY_START: Waiting for loadingLibraryPlaylists=false - current state: %{BOOL}d", v27, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x20F30E080](v28, -1, -1);
    MEMORY[0x20F30E080](v27, -1, -1);

    v35 = v52;
    v36 = v56;
  }

  else
  {

    v36 = v25;
    v35 = v26;
  }

  v18(v36, v35);
  v37 = v0[12];
  v38 = v0[13];
  v39 = v0[10];
  v40 = v0[11];
  v41 = v0[8];
  v42 = v0[9];
  Date.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of MusicLibraryPlaylistsModel.$loadingLibraryPlaylists.getter();

  v43 = _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
  MEMORY[0x20F308200](v40, v43);
  (*(v37 + 8))(v38, v40);
  AsyncPublisher.makeAsyncIterator()();
  (*(v42 + 8))(v39, v41);
  v0[40] = static MainActor.shared.getter();
  v44 = _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v45 = swift_task_alloc();
  v0[41] = v45;
  *v45 = v0;
  v45[1] = MediaConfigurationRoomViewModel.fetchBundleIDsForMediaContent();
  v46 = v0[14];

  return MEMORY[0x282200308](v0 + 46, v46, v44);
}

{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = MediaConfigurationRoomViewModel.fetchBundleIDsForMediaContent();
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = MediaConfigurationRoomViewModel.fetchBundleIDsForMediaContent();
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

{

  *(v0 + 369) = *(v0 + 368);
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return MEMORY[0x2822009F8](MediaConfigurationRoomViewModel.fetchBundleIDsForMediaContent(), v1, v2);
}

{
  v73 = v0;
  v1 = *(v0 + 369);
  if (v1 == 2)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
LABEL_3:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v2 = dispatch thunk of MusicLibraryPlaylistsModel.libraryPlaylistSuggestions.getter();

    v3 = *(v2 + 16);

    if (v3)
    {
      v4 = static MediaPlaybackConstants.platformSpecificMusicBundleID.getter();
      v6 = v5;
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v9 = *(v7 + 2);
      v8 = *(v7 + 3);
      if (v9 >= v8 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
      }

      *(v7 + 2) = v9 + 1;
      v10 = &v7[16 * v9];
      *(v10 + 4) = v4;
      *(v10 + 5) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *(v0 + 344) = v7;
    v69 = (*MEMORY[0x277D7E368] + MEMORY[0x277D7E368]);
    v14 = swift_task_alloc();
    *(v0 + 352) = v14;
    *v14 = v0;
    v14[1] = MediaConfigurationRoomViewModel.fetchBundleIDsForMediaContent();

    return v69();
  }

  if ((v1 & 1) == 0)
  {
    static WOLog.mediaPlayback.getter();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 312);
    if (v17)
    {
      v20 = *(v0 + 296);
      v19 = *(v0 + 304);
      v21 = *(v0 + 280);
      v22 = *(v0 + 288);
      v67 = *(v0 + 168);
      v70 = *(v0 + 200);
      v23 = *(v0 + 312);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v72 = v25;
      *v24 = 136315650;

      v26 = MEMORY[0x20F30BBA0](v21, v22, v20, v19);
      v28 = v27;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v72);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2048;
      *(v24 + 14) = 1;
      *(v24 + 22) = 1024;
      *(v24 + 24) = 0;
      _os_log_impl(&dword_20C66F000, v15, v16, "[%s] AWAIT_LIBRARY_VALUE: Received value %ld: isLoading=%{BOOL}d - condition met, breaking", v24, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x20F30E080](v25, -1, -1);
      MEMORY[0x20F30E080](v24, -1, -1);

      v23(v70, v67);
    }

    else
    {
      v30 = *(v0 + 200);
      v31 = *(v0 + 168);

      v18(v30, v31);
    }

    v32 = *(v0 + 152);
    v33 = *(v0 + 136);
    v34 = *(v0 + 144);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v36 = v35;
    (*(v34 + 8))(v32, v33);
    static WOLog.mediaPlayback.getter();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 312);
    if (v39)
    {
      v41 = *(v0 + 296);
      v42 = *(v0 + 304);
      v44 = *(v0 + 280);
      v43 = *(v0 + 288);
      v65 = *(v0 + 168);
      v66 = *(v0 + 192);
      v45 = *(v0 + 120);
      v68 = *(v0 + 112);
      v71 = *(v0 + 128);
      v46 = swift_slowAlloc();
      v64 = v40;
      v47 = swift_slowAlloc();
      v72 = v47;
      *v46 = 136315394;

      v48 = MEMORY[0x20F30BBA0](v44, v43, v41, v42);
      v50 = v49;

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v72);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v52 = swift_allocObject();
      v53 = MEMORY[0x277D839F8];
      *(v52 + 16) = xmmword_20CB5DA70;
      v54 = MEMORY[0x277D83A80];
      *(v52 + 56) = v53;
      *(v52 + 64) = v54;
      *(v52 + 32) = v36;
      v55 = String.init(format:_:)();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v72);

      *(v46 + 14) = v57;
      _os_log_impl(&dword_20C66F000, v37, v38, "[%s] AWAIT_LIBRARY_END: Got loadingLibraryPlaylists=false after %ss - proceeding", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v47, -1, -1);
      MEMORY[0x20F30E080](v46, -1, -1);

      v64(v66, v65);
      (*(v45 + 8))(v71, v68);
    }

    else
    {
      v58 = *(v0 + 192);
      v59 = *(v0 + 168);
      v61 = *(v0 + 120);
      v60 = *(v0 + 128);
      v62 = *(v0 + 112);

      v40(v58, v59);
      (*(v61 + 8))(v60, v62);
    }

    goto LABEL_3;
  }

  *(v0 + 320) = static MainActor.shared.getter();
  v11 = _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v12 = swift_task_alloc();
  *(v0 + 328) = v12;
  *v12 = v0;
  v12[1] = MediaConfigurationRoomViewModel.fetchBundleIDsForMediaContent();
  v13 = *(v0 + 112);

  return MEMORY[0x282200308](v0 + 368, v13, v11);
}

{
  *(v0 + 24) = *(v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

{
  v38 = v0;
  v1 = v0[45];
  v2 = v0[43];

  v37 = v2;
  specialized Array.append<A>(contentsOf:)(v1);
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v2);

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v3 + 16), 0);
    v6 = specialized Sequence._copySequenceContents(initializing:)(&v37, v5 + 4, v4, v3);
    outlined consume of Set<String>.Iterator._Variant();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v7 = v0[7];
  v8 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_mediaAppsBundleIDs;
  *(v7 + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_mediaAppsBundleIDs) = v5;

  static WOLog.mediaPlayback.getter();
  swift_retain_n();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[38];
  v12 = v0[39];
  if (v11)
  {
    v14 = v0[36];
    v15 = v0[35];
    v32 = v0[21];
    v33 = v0[23];
    v36 = v0[20];
    v34 = v0[18];
    v35 = v0[17];
    v30 = v0[37];
    v31 = v0[39];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37 = v17;
    *v16 = 136315394;
    v18 = MEMORY[0x20F30BBA0](v15, v14, v30, v13);
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v37);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2048;
    v22 = *(*(v7 + v8) + 16);

    *(v16 + 14) = v22;

    _os_log_impl(&dword_20C66F000, v9, v10, "[%s] FLOW_BUNDLE_END: fetchBundleIDsForMediaContent completed - found %ld bundle IDs", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x20F30E080](v17, -1, -1);
    MEMORY[0x20F30E080](v16, -1, -1);

    v31(v33, v32);
    (*(v34 + 8))(v36, v35);
  }

  else
  {
    v23 = v0[23];
    v25 = v0[20];
    v24 = v0[21];
    v26 = v0[17];
    v27 = v0[18];

    v12(v23, v24);
    (*(v27 + 8))(v25, v26);
  }

  v28 = v0[1];

  return v28();
}

uint64_t MediaConfigurationRoomViewModel.fetchBundleIDsForMediaContent()(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 360) = a1;

  v3 = *(v2 + 272);
  v4 = *(v2 + 264);

  return MEMORY[0x2822009F8](MediaConfigurationRoomViewModel.fetchBundleIDsForMediaContent(), v4, v3);
}

Swift::Void __swiftcall MediaConfigurationRoomViewModel.populateAppSpecificSuggestions()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v44 - v3;
  v46 = type metadata accessor for Logger();
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Date();
  v47 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = v7;
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v12 + 8))(v14, v11);
  v15 = specialized Collection.prefix(_:)(8);
  v52 = v17;
  v53 = v16;
  v19 = v18;

  v54 = v10;
  Date.init()();
  static WOLog.mediaPlayback.getter();
  v20 = v1;
  v21 = v19;
  swift_retain_n();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v44 = v21;
  v45 = v15;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v56 = v26;
    *v25 = 136315394;

    v27 = MEMORY[0x20F30BBA0](v15, v53, v52, v21);
    v29 = v28;

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v56);

    *(v25 + 4) = v30;
    *(v25 + 12) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v25 + 14) = v55;

    _os_log_impl(&dword_20C66F000, v22, v23, "[%s] UI_SPINNER: Starting populateAppSpecificSuggestions - isLoadingTopSuggestions=%{BOOL}d isLoadingAppSpecific=true", v25, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x20F30E080](v26, -1, -1);
    MEMORY[0x20F30E080](v25, -1, -1);
  }

  else
  {
  }

  (*(v4 + 8))(v6, v46);
  swift_getKeyPath();
  swift_getKeyPath();
  v57 = 1;

  static Published.subscript.setter();
  v31 = v51;
  static TaskPriority.userInitiated.getter();
  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = v47;
  v34 = v49;
  v35 = v50;
  (*(v47 + 16))(v49, v54, v50);
  type metadata accessor for MainActor();

  v36 = static MainActor.shared.getter();
  v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v38 = (v48 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = MEMORY[0x277D85700];
  *(v39 + 16) = v36;
  *(v39 + 24) = v40;
  (*(v33 + 32))(v39 + v37, v34, v35);
  v41 = (v39 + v38);
  v42 = v52;
  v43 = v53;
  *v41 = v45;
  v41[1] = v43;
  v41[2] = v42;
  v41[3] = v44;
  *(v39 + ((v38 + 39) & 0xFFFFFFFFFFFFFFF8)) = v20;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v31, &async function pointer to partial apply for closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions(), v39);

  (*(v33 + 8))(v54, v35);
}

uint64_t closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = a8;
  v8[35] = v18;
  v8[32] = a6;
  v8[33] = a7;
  v8[30] = a4;
  v8[31] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[36] = v9;
  v8[37] = *(v9 - 8);
  v8[38] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v8[39] = v10;
  v8[40] = *(v10 - 8);
  v8[41] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v8[42] = v11;
  v12 = *(v11 - 8);
  v8[43] = v12;
  v8[44] = *(v12 + 64);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v8[50] = v13;
  v8[51] = *(v13 - 8);
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[59] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[60] = v14;
  v8[61] = v15;

  return MEMORY[0x2822009F8](closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions(), v14, v15);
}

uint64_t closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions()()
{
  v22 = v0;
  v21[1] = *MEMORY[0x277D85DE8];
  static WOLog.mediaPlayback.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[58];
  v6 = v0[50];
  v5 = v0[51];
  if (v3)
  {
    v8 = v0[33];
    v7 = v0[34];
    v10 = v0[31];
    v9 = v0[32];
    v20 = v0[50];
    v11 = swift_slowAlloc();
    v19 = v4;
    v12 = swift_slowAlloc();
    v21[0] = v12;
    *v11 = 136315138;
    v13 = MEMORY[0x20F30BBA0](v10, v9, v8, v7);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v21);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20C66F000, v1, v2, "[%s] UI_SPINNER: Task started for app specific suggestions", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x20F30E080](v12, -1, -1);
    MEMORY[0x20F30E080](v11, -1, -1);

    v16 = *(v5 + 8);
    v16(v19, v20);
  }

  else
  {

    v16 = *(v5 + 8);
    v16(v4, v6);
  }

  v0[62] = v16;
  v17 = swift_task_alloc();
  v0[63] = v17;
  *v17 = v0;
  v17[1] = closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions();

  return MediaConfigurationRoomViewModel.fetchBundleIDsForMediaContent()();
}

{
  v1 = *v0;

  v2 = *(v1 + 488);
  v3 = *(v1 + 480);

  return MEMORY[0x2822009F8](closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions(), v3, v2);
}

{
  v151 = v0;
  v150[1] = *MEMORY[0x277D85DE8];
  v1 = v0[49];
  v2 = v0[42];
  v3 = v0[43];
  Date.init()();
  Date.timeIntervalSince(_:)();
  v5 = v4;
  v6 = *(v3 + 8);
  v0[64] = v6;
  v0[65] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  static WOLog.mediaPlayback.getter();
  swift_retain_n();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[62];
  v11 = v0[57];
  v12 = v0[50];
  v13 = v0[35];
  if (v9)
  {
    v15 = v0[33];
    v14 = v0[34];
    v141 = v0[57];
    v145 = v0[62];
    v17 = v0[31];
    v16 = v0[32];
    v138 = v0[50];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v150[0] = v19;
    *v18 = 136315906;
    v20 = MEMORY[0x20F30BBA0](v17, v16, v15, v14);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v150);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D839F8];
    *(v23 + 16) = xmmword_20CB5DA70;
    v25 = MEMORY[0x277D83A80];
    *(v23 + 56) = v24;
    *(v23 + 64) = v25;
    *(v23 + 32) = v5;
    v26 = String.init(format:_:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v150);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2048;
    v29 = *(*(v13 + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_mediaAppsBundleIDs) + 16);

    *(v18 + 24) = v29;

    *(v18 + 32) = 2080;

    v31 = MEMORY[0x20F30BD20](v30, MEMORY[0x277D837D0]);
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v150);

    *(v18 + 34) = v34;
    _os_log_impl(&dword_20C66F000, v7, v8, "[%s] UI_SPINNER: fetchBundleIDsForMediaContent completed in %ss - found %ld bundle IDs: %s", v18, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v19, -1, -1);
    MEMORY[0x20F30E080](v18, -1, -1);

    v145(v141, v138);
  }

  else
  {

    v10(v11, v12);
  }

  v35 = v0[35];
  v36 = swift_allocObject();
  v0[66] = v36;
  *(v36 + 16) = MEMORY[0x277D84F90];
  v37 = (v36 + 16);
  v38 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_mediaAppsBundleIDs;
  v0[67] = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_mediaAppsBundleIDs;
  v39 = *(v35 + v38);
  v0[68] = v39;
  v40 = v39[2];
  v0[69] = v40;
  v0[70] = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_mediaSuggestionsModel;
  v0[71] = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_activityType;

  if (v40)
  {
    *(v0 + 36) = 0u;
    if (!v39[2])
    {
      __break(1u);
    }

    v41 = v39[4];
    v0[74] = v41;
    v42 = v39[5];
    v0[75] = v42;

    static WOLog.mediaPlayback.getter();
    swift_retain_n();

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v139 = v0[56];
      v142 = v0[62];
      v146 = v41;
      v45 = v0[35];
      v130 = v0[34];
      v132 = v0[67];
      v46 = v0[32];
      v47 = v0[33];
      v48 = v0[31];
      v136 = v0[50];
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v150[0] = v50;
      *v49 = 136315906;
      v51 = MEMORY[0x20F30BBA0](v48, v46, v47, v130);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v150);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2048;
      *(v49 + 14) = 1;
      *(v49 + 22) = 2048;
      v54 = *(*(v45 + v132) + 16);

      *(v49 + 24) = v54;
      v41 = v146;

      *(v49 + 32) = 2080;
      *(v49 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v42, v150);
      _os_log_impl(&dword_20C66F000, v43, v44, "[%s] UI_SPINNER: Fetching suggestions for bundleID %ld/%ld: %s", v49, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v50, -1, -1);
      MEMORY[0x20F30E080](v49, -1, -1);

      v142(v139, v136);
    }

    else
    {
      v78 = v0[62];
      v79 = v0[56];
      v80 = v0[50];

      v78(v79, v80);
    }

    v81 = v0[71];
    v82 = v0[35];
    Date.init()();
    v83 = [*(v82 + v81) identifier];
    v84 = MEMORY[0x277D7E370];
    v85 = *MEMORY[0x277D7E370];

    v86 = swift_task_alloc();
    v0[76] = v86;
    *v86 = v0;
    v86[1] = closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions();

    return ((v85 + v84))(v83, 0, v41, v42, 20);
  }

  else
  {

    specialized MutableCollection<>.sort(by:)(v37);
    static WOLog.mediaPlayback.getter();

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    v57 = os_log_type_enabled(v55, v56);
    v58 = v0[66];
    if (v57)
    {
      v147 = v55;
      v60 = v0[33];
      v59 = v0[34];
      v62 = v0[31];
      v61 = v0[32];
      v63 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v149 = v143;
      *v63 = 136315394;
      v64 = MEMORY[0x20F30BBA0](v62, v61, v60, v59);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v149);

      *(v63 + 4) = v66;
      *(v63 + 12) = 2080;
      swift_beginAccess();
      v67 = *(v58 + 16);
      v68 = *(v67 + 16);
      if (v68)
      {
        v134 = v0;
        v140 = v56;
        v150[0] = MEMORY[0x277D84F90];

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68, 0);
        v69 = 0;
        v70 = v150[0];
        v71 = *(v150[0] + 16);
        v72 = 16 * v71;
        do
        {
          v73 = v67;
          v74 = *(v67 + v69 + 32);
          v75 = *(v67 + v69 + 40);
          v150[0] = v70;
          v76 = *(v70 + 24);

          if (v71 >= v76 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v71 + 1, 1);
            v70 = v150[0];
          }

          *(v70 + 16) = v71 + 1;
          v77 = v70 + v72;
          *(v77 + 32) = v74;
          *(v77 + 40) = v75;
          v72 += 16;
          v69 += 48;
          ++v71;
          --v68;
          v67 = v73;
        }

        while (v68);
        v0 = v134;

        v56 = v140;
      }

      else
      {

        v70 = MEMORY[0x277D84F90];
      }

      v91 = v0[62];
      v92 = v0[52];
      v93 = v0[50];
      v94 = MEMORY[0x20F30BD20](v70, MEMORY[0x277D837D0]);
      v96 = v95;

      v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, &v149);

      *(v63 + 14) = v97;
      _os_log_impl(&dword_20C66F000, v147, v56, "[%s] UI_SPINNER: Available apps for media content: %s", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v143, -1, -1);
      MEMORY[0x20F30E080](v63, -1, -1);

      v91(v92, v93);
    }

    else
    {
      v88 = v0[62];
      v89 = v0[52];
      v90 = v0[50];

      v88(v89, v90);
    }

    v133 = v0[66];
    v129 = v0[64];
    v98 = v0[49];
    v99 = v0[46];
    v148 = v99;
    v100 = v0[45];
    v119 = v0[44];
    v101 = v0[42];
    v102 = v0[43];
    v120 = v0[41];
    v127 = v0[40];
    v128 = v0[39];
    v123 = v0[38];
    v125 = v0[36];
    v126 = v0[37];
    v131 = v0[34];
    v144 = v0[33];
    v103 = v0[30];
    v135 = v0[31];
    v137 = v0[32];
    Date.init()();
    v124 = v103;
    v122 = v98;
    Date.timeIntervalSince(_:)();
    v105 = v104;
    type metadata accessor for OS_dispatch_queue();
    v121 = static OS_dispatch_queue.main.getter();
    v118 = swift_allocObject();
    swift_weakInit();
    v106 = *(v102 + 16);
    v106(v99, v98, v101);
    v106(v100, v103, v101);
    v107 = *(v102 + 80);
    v108 = (v107 + 16) & ~v107;
    v109 = (v108 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
    v110 = (v109 + 39) & 0xFFFFFFFFFFFFFFF8;
    v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
    v112 = (v107 + v111 + 8) & ~v107;
    v113 = swift_allocObject();
    v114 = *(v102 + 32);
    v114(v113 + v108, v148, v101);
    v115 = (v113 + v109);
    *v115 = v135;
    v115[1] = v137;
    v115[2] = v144;
    v115[3] = v131;
    *(v113 + v110) = v133;
    *(v113 + v111) = v118;
    v114(v113 + v112, v100, v101);
    *(v113 + ((v112 + v119 + 7) & 0xFFFFFFFFFFFFFFF8)) = v105;
    v0[22] = partial apply for closure #2 in closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions();
    v0[23] = v113;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v0[21] = &block_descriptor_109;
    v116 = _Block_copy(v0 + 18);

    static DispatchQoS.unspecified.getter();
    v0[29] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F30C1F0](0, v120, v123, v116);
    _Block_release(v116);

    (*(v126 + 8))(v123, v125);
    (*(v127 + 8))(v120, v128);
    v129(v122, v101);

    $defer #1 () in closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions()(v124, v135, v137, v144, v131);

    v117 = v0[1];

    return v117();
  }
}

{
  v255 = v0;
  v254[1] = *MEMORY[0x277D85DE8];
  v1 = v0[64];
  v2 = v0[49];
  v3 = v0[42];
  Date.init()();
  Date.timeIntervalSince(_:)();
  v5 = v4;
  v1(v2, v3);
  static WOLog.mediaPlayback.getter();
  swift_bridgeObjectRetain_n();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[77];
  if (v8)
  {
    v224 = v0[74];
    v229 = v0[75];
    v242 = v0[55];
    v248 = v0[62];
    v11 = v0[33];
    v10 = v0[34];
    v13 = v0[31];
    v12 = v0[32];
    v238 = v0[50];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v254[0] = v15;
    *v14 = 136315906;
    v16 = MEMORY[0x20F30BBA0](v13, v12, v11, v10);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v254);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    v19 = *(v9 + 16);

    *(v14 + 14) = v19;

    *(v14 + 22) = 2080;
    *(v14 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v224, v229, v254);
    *(v14 + 32) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D839F8];
    *(v20 + 16) = xmmword_20CB5DA70;
    v22 = MEMORY[0x277D83A80];
    *(v20 + 56) = v21;
    *(v20 + 64) = v22;
    *(v20 + 32) = v5;
    v23 = String.init(format:_:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v254);

    *(v14 + 34) = v25;
    _os_log_impl(&dword_20C66F000, v6, v7, "[%s] UI_SPINNER: Got %ld suggestions for %s in %ss", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v15, -1, -1);
    MEMORY[0x20F30E080](v14, -1, -1);

    v248(v242, v238);
  }

  else
  {
    v26 = v0[62];
    v27 = v0[55];
    v28 = v0[50];
    swift_bridgeObjectRelease_n();

    v26(v27, v28);
  }

  v29 = v0[75];
  v30 = v0[74];

  v31 = MEMORY[0x20F30BAD0](v30, v29);

  v32 = objc_opt_self();
  v0[27] = 0;
  v33 = [v32 bundleRecordWithBundleIdentifier:v31 allowPlaceholder:1 error:v0 + 27];
  v0[78] = v33;

  v34 = v0[27];
  if (!v33)
  {
    v52 = v34;
    v53 = _convertNSErrorToError(_:)();

    swift_willThrow();

    static WOLog.mediaPlayback.getter();

    v54 = v53;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    v57 = os_log_type_enabled(v55, v56);
    v58 = v0[75];
    if (v57)
    {
      v216 = v0[74];
      v243 = v0[64];
      v220 = v0[50];
      v225 = v0[54];
      v234 = v0[48];
      v239 = v0[62];
      v230 = v0[42];
      v213 = v0[33];
      v215 = v0[34];
      v59 = v0[31];
      v60 = v0[32];
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v254[0] = v63;
      *v61 = 136315650;
      v64 = MEMORY[0x20F30BBA0](v59, v60, v213, v215);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v254);

      *(v61 + 4) = v66;
      *(v61 + 12) = 2080;
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v216, v58, v254);

      *(v61 + 14) = v67;
      *(v61 + 22) = 2112;
      v68 = v53;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 24) = v69;
      *v62 = v69;
      _os_log_impl(&dword_20C66F000, v55, v56, "[%s] UI_SPINNER: Unable to get bundle record for %s: %@", v61, 0x20u);
      outlined destroy of WorkoutMediaSuggestion?(v62, &_sSo8NSObjectCSgMd);
      MEMORY[0x20F30E080](v62, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v63, -1, -1);
      MEMORY[0x20F30E080](v61, -1, -1);

      v239(v225, v220);
      v243(v234, v230);
    }

    else
    {
      v104 = v0[64];
      v105 = v55;
      v55 = v0[62];
      v106 = v0[54];
      v107 = v0[50];
      v108 = v0[48];
      v109 = v0[42];

      (v55)(v106, v107);
      v104(v108, v109);
    }

    v70 = 0;
    goto LABEL_20;
  }

  v35 = v34;
  v36 = [v33 localizedName];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v0[79] = v37;
  v0[80] = v39;

  static Platform.current.getter();
  v40 = Platform.rawValue.getter();
  if (v40 == Platform.rawValue.getter())
  {
    v41 = v0[75];
    v42 = v0[74];
    Date.init()();
    v43 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v44 = MEMORY[0x20F30BAD0](v42, v41);
    v45 = [v43 initWithBundleIdentifier_];
    v0[81] = v45;

    v46 = objc_opt_self();
    v0[82] = v46;
    v47 = [v46 mainScreen];
    [v47 scale];
    v49 = v48;

    v50 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:18.0 scale:{18.0, v49}];
    v0[83] = v50;
    [v50 setShape_];
    v0[2] = v0;
    v0[7] = v0 + 28;
    v0[3] = closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions();
    v51 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7IFImageCSgs5NeverOGMd);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IFImage?) -> () with result type IFImage?;
    v0[13] = &block_descriptor_11;
    v0[14] = v51;
    [v45 getImageForImageDescriptor:v50 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v71 = v0[66];
    v55 = *(v71 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v71 + 16) = v55;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_42;
    }

    while (1)
    {
      isa = v55[2].isa;
      v73 = v55[3].isa;
      if (isa >= v73 >> 1)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), isa + 1, 1, v55);
      }

      v75 = v0[80];
      v76 = v0[79];
      v77 = v0[78];
      v78 = v0[77];
      v79 = v0[75];
      v80 = v0[74];
      v81 = v0[66];
      v55[2].isa = (isa + 1);
      v82 = &v55[6 * isa];
      v82[4].isa = v80;
      v82[5].isa = v79;
      v82[6].isa = v76;
      v82[7].isa = v75;
      v82[8].isa = 0;
      v82[9].isa = v78;
      *(v81 + 16) = v55;
      static WOLog.mediaPlayback.getter();

      v83 = v77;
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();

      v249 = v84;
      v86 = os_log_type_enabled(v84, v85);
      v244 = v0[78];
      v55 = v0[77];
      v87 = v0[75];
      if (v86)
      {
        v212 = v0[74];
        v235 = v0[64];
        v231 = v0[62];
        v218 = v0[53];
        v217 = v0[50];
        v221 = v0[42];
        v226 = v0[48];
        v89 = v0[33];
        v88 = v0[34];
        v91 = v0[31];
        v90 = v0[32];
        v92 = swift_slowAlloc();
        v214 = v85;
        v93 = swift_slowAlloc();
        v254[0] = v93;
        *v92 = 136315906;
        v94 = MEMORY[0x20F30BBA0](v91, v90, v89, v88);
        v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, v254);

        *(v92 + 4) = v96;
        *(v92 + 12) = 2080;
        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v212, v87, v254);

        *(v92 + 14) = v97;
        *(v92 + 22) = 2080;
        v98 = [v244 localizedName];
        v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v101 = v100;

        v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, v254);

        *(v92 + 24) = v102;
        *(v92 + 32) = 2048;
        v103 = v55[2].isa;

        *(v92 + 34) = v103;

        _os_log_impl(&dword_20C66F000, v249, v214, "[%s] UI_SPINNER: Created WorkoutMediaProvider for %s (%s) with %ld suggestions", v92, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x20F30E080](v93, -1, -1);
        MEMORY[0x20F30E080](v92, -1, -1);

        v231(v218, v217);
        v235(v226, v221);
      }

      else
      {
        v110 = v0[64];
        v111 = v0[62];
        v112 = v0[53];
        v113 = v0[50];
        v114 = v0[48];
        v115 = v0[42];
        swift_bridgeObjectRelease_n();

        v111(v112, v113);
        v110(v114, v115);
      }

      v70 = v0[72];
LABEL_20:
      v116 = v0[73];
      v117 = v116 + 1;
      if (v116 + 1 == v0[69])
      {
        v118 = v0[66];

        specialized MutableCollection<>.sort(by:)((v118 + 16));
        static WOLog.mediaPlayback.getter();

        v119 = Logger.logObject.getter();
        v120 = static os_log_type_t.default.getter();

        v121 = os_log_type_enabled(v119, v120);
        v122 = v0[66];
        v123 = MEMORY[0x277D84F90];
        if (v121)
        {
          v250 = v119;
          v125 = v0[33];
          v124 = v0[34];
          v127 = v0[31];
          v126 = v0[32];
          v128 = swift_slowAlloc();
          v240 = swift_slowAlloc();
          v253 = v240;
          *v128 = 136315394;
          v129 = MEMORY[0x20F30BBA0](v127, v126, v125, v124);
          v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, &v253);

          *(v128 + 4) = v131;
          v245 = v128;
          *(v128 + 12) = 2080;
          swift_beginAccess();
          v132 = *(v122 + 16);
          v133 = *(v132 + 16);
          if (v133)
          {
            v232 = v0;
            v254[0] = v123;

            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v133, 0);
            v134 = 0;
            v135 = v254[0];
            v136 = *(v254[0] + 16);
            v137 = 16 * v136;
            do
            {
              v138 = v132;
              v139 = *(v132 + v134 + 32);
              v140 = *(v132 + v134 + 40);
              v254[0] = v135;
              v141 = *(v135 + 24);

              if (v136 >= v141 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v141 > 1), v136 + 1, 1);
                v135 = v254[0];
              }

              *(v135 + 16) = v136 + 1;
              v142 = v135 + v137;
              *(v142 + 32) = v139;
              *(v142 + 40) = v140;
              v137 += 16;
              v134 += 48;
              ++v136;
              --v133;
              v132 = v138;
            }

            while (v133);
            v0 = v232;
          }

          else
          {

            v135 = MEMORY[0x277D84F90];
          }

          v171 = v0[62];
          v172 = v0[52];
          v173 = v0[50];
          v174 = MEMORY[0x20F30BD20](v135, MEMORY[0x277D837D0]);
          v176 = v175;

          v177 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v174, v176, &v253);

          *(v245 + 14) = v177;
          _os_log_impl(&dword_20C66F000, v250, v120, "[%s] UI_SPINNER: Available apps for media content: %s", v245, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F30E080](v240, -1, -1);
          MEMORY[0x20F30E080](v245, -1, -1);

          v171(v172, v173);
        }

        else
        {
          v159 = v0[62];
          v160 = v0[52];
          v161 = v0[50];

          v159(v160, v161);
        }

        v228 = v0[66];
        v211 = v0[64];
        v178 = v0[49];
        v179 = v0[46];
        v252 = v179;
        v180 = v0[45];
        v201 = v0[44];
        v181 = v0[42];
        v182 = v0[43];
        v202 = v0[41];
        v209 = v0[40];
        v210 = v0[39];
        v205 = v0[38];
        v207 = v0[36];
        v208 = v0[37];
        v223 = v0[34];
        v247 = v0[33];
        v183 = v0[30];
        v233 = v0[31];
        v237 = v0[32];
        Date.init()();
        v206 = v183;
        v204 = v178;
        Date.timeIntervalSince(_:)();
        v185 = v184;
        type metadata accessor for OS_dispatch_queue();
        v203 = static OS_dispatch_queue.main.getter();
        v200 = swift_allocObject();
        swift_weakInit();
        v186 = *(v182 + 16);
        v186(v179, v178, v181);
        v186(v180, v183, v181);
        v187 = *(v182 + 80);
        v188 = (v187 + 16) & ~v187;
        v189 = (v188 + v201 + 7) & 0xFFFFFFFFFFFFFFF8;
        v190 = (v189 + 39) & 0xFFFFFFFFFFFFFFF8;
        v191 = (v190 + 15) & 0xFFFFFFFFFFFFFFF8;
        v192 = (v187 + v191 + 8) & ~v187;
        v193 = swift_allocObject();
        v194 = *(v182 + 32);
        v194(v193 + v188, v252, v181);
        v195 = (v193 + v189);
        *v195 = v233;
        v195[1] = v237;
        v195[2] = v247;
        v195[3] = v223;
        *(v193 + v190) = v228;
        *(v193 + v191) = v200;
        v194(v193 + v192, v180, v181);
        *(v193 + ((v192 + v201 + 7) & 0xFFFFFFFFFFFFFFF8)) = v185;
        v0[22] = partial apply for closure #2 in closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions();
        v0[23] = v193;
        v0[18] = MEMORY[0x277D85DD0];
        v0[19] = 1107296256;
        v0[20] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v0[21] = &block_descriptor_109;
        v196 = _Block_copy(v0 + 18);

        static DispatchQoS.unspecified.getter();
        v0[29] = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
        _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x20F30C1F0](0, v202, v205, v196);
        _Block_release(v196);

        (*(v208 + 8))(v205, v207);
        (*(v209 + 8))(v202, v210);
        v211(v204, v181);

        $defer #1 () in closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions()(v206, v233, v237, v247, v223);

        v197 = v0[1];

        return v197();
      }

      v0[73] = v117;
      v0[72] = v70;
      v143 = v0[68];
      if (v117 < *(v143 + 16))
      {
        break;
      }

      __break(1u);
LABEL_42:
      v198 = v0[66];
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2].isa + 1, 1, v55);
      *(v198 + 16) = v55;
    }

    v144 = v143 + 16 * v117;
    v145 = *(v144 + 32);
    v0[74] = v145;
    v146 = *(v144 + 40);
    v0[75] = v146;

    static WOLog.mediaPlayback.getter();
    swift_retain_n();

    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v147, v148))
    {
      v222 = v116 + 2;
      v227 = v0[67];
      v241 = v0[56];
      v246 = v0[62];
      v251 = v145;
      v149 = v0[35];
      v219 = v0[34];
      v150 = v0[32];
      v151 = v0[33];
      v152 = v0[31];
      v236 = v0[50];
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v254[0] = v154;
      *v153 = 136315906;
      v155 = MEMORY[0x20F30BBA0](v152, v150, v151, v219);
      v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, v156, v254);

      *(v153 + 4) = v157;
      *(v153 + 12) = 2048;
      *(v153 + 14) = v222;
      *(v153 + 22) = 2048;
      v158 = *(*(v149 + v227) + 16);

      *(v153 + 24) = v158;
      v145 = v251;

      *(v153 + 32) = 2080;
      *(v153 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v251, v146, v254);
      _os_log_impl(&dword_20C66F000, v147, v148, "[%s] UI_SPINNER: Fetching suggestions for bundleID %ld/%ld: %s", v153, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v154, -1, -1);
      MEMORY[0x20F30E080](v153, -1, -1);

      v246(v241, v236);
    }

    else
    {
      v162 = v0[62];
      v163 = v0[56];
      v164 = v0[50];

      v162(v163, v164);
    }

    v165 = v0[71];
    v166 = v0[35];
    Date.init()();
    v167 = [*(v166 + v165) identifier];
    v168 = MEMORY[0x277D7E370];
    v169 = *MEMORY[0x277D7E370];

    v170 = swift_task_alloc();
    v0[76] = v170;
    *v170 = v0;
    v170[1] = closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions();

    return ((v169 + v168))(v167, 0, v145, v146, 20);
  }
}

{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 480);

  return MEMORY[0x2822009F8](closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions(), v2, v1);
}

{
  v188 = v0;
  v187[1] = *MEMORY[0x277D85DE8];
  v1 = v0[64];
  v2 = v0[49];
  v3 = v0[42];
  v4 = v0[28];
  Date.init()();
  Date.timeIntervalSince(_:)();
  v1(v2, v3);
  if (v4)
  {
    v5 = [v4 CGImage];
    v6 = v0[83];
    if (v5)
    {
      v7 = v5;
      v8 = v0[81];
      v9 = v0[64];
      v10 = v0[47];
      v11 = v0[42];
      v12 = [v0[82] mainScreen];
      [v12 scale];
      v14 = v13;

      v15 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v7 scale:0 orientation:v14];
      v9(v10, v11);
      goto LABEL_7;
    }

    v18 = v0[81];
    (v0[64])(v0[47], v0[42]);
  }

  else
  {
    v16 = v0[83];
    v17 = v0[81];
    (v0[64])(v0[47], v0[42]);
  }

  v15 = 0;
LABEL_7:
  v19 = v0[66];
  v20 = *(v19 + 16);
  v182 = v15;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 16) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v145 = v0[66];
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
    *(v145 + 16) = v20;
  }

  v23 = *(v20 + 2);
  v22 = *(v20 + 3);
  if (v23 >= v22 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
  }

  v24 = v0[80];
  v25 = v0[79];
  v26 = v0[78];
  v27 = v0[77];
  v28 = v0[75];
  v29 = v0[74];
  v30 = v0[66];
  *(v20 + 2) = v23 + 1;
  v31 = &v20[48 * v23];
  *(v31 + 4) = v29;
  *(v31 + 5) = v28;
  *(v31 + 6) = v25;
  *(v31 + 7) = v24;
  *(v31 + 8) = v15;
  *(v31 + 9) = v27;
  *(v30 + 16) = v20;
  static WOLog.mediaPlayback.getter();

  v32 = v26;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  v178 = v33;
  v35 = os_log_type_enabled(v33, v34);
  v175 = v0[78];
  v36 = v0[77];
  v37 = v0[75];
  if (v35)
  {
    v158 = v0[74];
    v170 = v0[64];
    v167 = v0[62];
    v160 = v0[50];
    v161 = v0[53];
    v162 = v0[42];
    v164 = v0[48];
    v159 = v34;
    v38 = v0[33];
    v39 = v0[34];
    v41 = v0[31];
    v40 = v0[32];
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v187[0] = v43;
    *v42 = 136315906;
    v44 = MEMORY[0x20F30BBA0](v41, v40, v38, v39);
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v187);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v37, v187);

    *(v42 + 14) = v47;
    *(v42 + 22) = 2080;
    v48 = [v175 localizedName];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v187);

    *(v42 + 24) = v52;
    *(v42 + 32) = 2048;
    v53 = *(v36 + 16);

    *(v42 + 34) = v53;

    _os_log_impl(&dword_20C66F000, v178, v159, "[%s] UI_SPINNER: Created WorkoutMediaProvider for %s (%s) with %ld suggestions", v42, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v43, -1, -1);
    MEMORY[0x20F30E080](v42, -1, -1);

    v167(v161, v160);
    v55 = v162;
    v54 = v164;
  }

  else
  {
    v170 = v0[64];
    v56 = v0[62];
    v57 = v0[53];
    v58 = v0[50];
    v59 = v0[48];
    v60 = v0[42];
    swift_bridgeObjectRelease_n();

    v56(v57, v58);
    v54 = v59;
    v55 = v60;
  }

  v170(v54, v55);

  v61 = v0[72];
  v62 = v0[73];
  v63 = v62 + 1;
  if (v62 + 1 == v0[69])
  {
    v64 = v0[66];

    specialized MutableCollection<>.sort(by:)((v64 + 16));
    static WOLog.mediaPlayback.getter();

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    v67 = os_log_type_enabled(v65, v66);
    v68 = v0[66];
    v69 = MEMORY[0x277D84F90];
    if (v67)
    {
      v183 = v65;
      v71 = v0[33];
      v70 = v0[34];
      v73 = v0[31];
      v72 = v0[32];
      v74 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v186 = v176;
      *v74 = 136315394;
      v75 = MEMORY[0x20F30BBA0](v73, v72, v71, v70);
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v186);

      *(v74 + 4) = v77;
      v179 = v74;
      *(v74 + 12) = 2080;
      swift_beginAccess();
      v78 = *(v68 + 16);
      v79 = *(v78 + 16);
      if (v79)
      {
        v171 = v0;
        v187[0] = v69;

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79, 0);
        v80 = 0;
        v81 = v187[0];
        v82 = *(v187[0] + 16);
        v83 = 16 * v82;
        do
        {
          v84 = v78;
          v85 = *(v78 + v80 + 32);
          v86 = *(v78 + v80 + 40);
          v187[0] = v81;
          v87 = *(v81 + 24);

          if (v82 >= v87 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v82 + 1, 1);
            v81 = v187[0];
          }

          *(v81 + 16) = v82 + 1;
          v88 = v81 + v83;
          *(v88 + 32) = v85;
          *(v88 + 40) = v86;
          v83 += 16;
          v80 += 48;
          ++v82;
          --v79;
          v78 = v84;
        }

        while (v79);
        v0 = v171;
      }

      else
      {

        v81 = MEMORY[0x277D84F90];
      }

      v118 = v0[62];
      v119 = v0[52];
      v120 = v0[50];
      v121 = MEMORY[0x20F30BD20](v81, MEMORY[0x277D837D0]);
      v123 = v122;

      v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, &v186);

      *(v179 + 14) = v124;
      _os_log_impl(&dword_20C66F000, v183, v66, "[%s] UI_SPINNER: Available apps for media content: %s", v179, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v176, -1, -1);
      MEMORY[0x20F30E080](v179, -1, -1);

      v118(v119, v120);
    }

    else
    {
      v105 = v0[62];
      v106 = v0[52];
      v107 = v0[50];

      v105(v106, v107);
    }

    v169 = v0[66];
    v157 = v0[64];
    v125 = v0[49];
    v126 = v0[46];
    v185 = v126;
    v127 = v0[45];
    v147 = v0[44];
    v128 = v0[42];
    v129 = v0[43];
    v148 = v0[41];
    v155 = v0[40];
    v156 = v0[39];
    v151 = v0[38];
    v153 = v0[36];
    v154 = v0[37];
    v166 = v0[34];
    v181 = v0[33];
    v130 = v0[30];
    v172 = v0[31];
    v174 = v0[32];
    Date.init()();
    v152 = v130;
    v150 = v125;
    Date.timeIntervalSince(_:)();
    v132 = v131;
    type metadata accessor for OS_dispatch_queue();
    v149 = static OS_dispatch_queue.main.getter();
    v146 = swift_allocObject();
    swift_weakInit();
    v133 = *(v129 + 16);
    v133(v126, v125, v128);
    v133(v127, v130, v128);
    v134 = *(v129 + 80);
    v135 = (v134 + 16) & ~v134;
    v136 = (v135 + v147 + 7) & 0xFFFFFFFFFFFFFFF8;
    v137 = (v136 + 39) & 0xFFFFFFFFFFFFFFF8;
    v138 = (v137 + 15) & 0xFFFFFFFFFFFFFFF8;
    v139 = (v134 + v138 + 8) & ~v134;
    v140 = swift_allocObject();
    v141 = *(v129 + 32);
    v141(v140 + v135, v185, v128);
    v142 = (v140 + v136);
    *v142 = v172;
    v142[1] = v174;
    v142[2] = v181;
    v142[3] = v166;
    *(v140 + v137) = v169;
    *(v140 + v138) = v146;
    v141(v140 + v139, v127, v128);
    *(v140 + ((v139 + v147 + 7) & 0xFFFFFFFFFFFFFFF8)) = v132;
    v0[22] = partial apply for closure #2 in closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions();
    v0[23] = v140;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v0[21] = &block_descriptor_109;
    v143 = _Block_copy(v0 + 18);

    static DispatchQoS.unspecified.getter();
    v0[29] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F30C1F0](0, v148, v151, v143);
    _Block_release(v143);

    (*(v154 + 8))(v151, v153);
    (*(v155 + 8))(v148, v156);
    v157(v150, v128);

    $defer #1 () in closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions()(v152, v172, v174, v181, v166);

    v144 = v0[1];

    return v144();
  }

  else
  {
    v0[73] = v63;
    v0[72] = v61;
    v89 = v0[68];
    if (v63 >= *(v89 + 16))
    {
      __break(1u);
    }

    v90 = v89 + 16 * v63;
    v91 = *(v90 + 32);
    v0[74] = v91;
    v92 = *(v90 + 40);
    v0[75] = v92;

    static WOLog.mediaPlayback.getter();
    swift_retain_n();

    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v165 = v62 + 2;
      v168 = v0[67];
      v177 = v0[56];
      v180 = v0[62];
      v184 = v91;
      v95 = v0[35];
      v163 = v0[34];
      v96 = v0[32];
      v97 = v0[33];
      v98 = v0[31];
      v173 = v0[50];
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v187[0] = v100;
      *v99 = 136315906;
      v101 = MEMORY[0x20F30BBA0](v98, v96, v97, v163);
      v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, v187);

      *(v99 + 4) = v103;
      *(v99 + 12) = 2048;
      *(v99 + 14) = v165;
      *(v99 + 22) = 2048;
      v104 = *(*(v95 + v168) + 16);

      *(v99 + 24) = v104;
      v91 = v184;

      *(v99 + 32) = 2080;
      *(v99 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v92, v187);
      _os_log_impl(&dword_20C66F000, v93, v94, "[%s] UI_SPINNER: Fetching suggestions for bundleID %ld/%ld: %s", v99, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v100, -1, -1);
      MEMORY[0x20F30E080](v99, -1, -1);

      v180(v177, v173);
    }

    else
    {
      v108 = v0[62];
      v109 = v0[56];
      v110 = v0[50];

      v108(v109, v110);
    }

    v111 = v0[71];
    v112 = v0[35];
    Date.init()();
    v113 = [*(v112 + v111) identifier];
    v114 = MEMORY[0x277D7E370];
    v115 = *MEMORY[0x277D7E370];

    v116 = swift_task_alloc();
    v0[76] = v116;
    *v116 = v0;
    v116[1] = closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions();

    return ((v115 + v114))(v113, 0, v91, v92, 20);
  }
}

uint64_t closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions()(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 616) = a1;

  v3 = *(v2 + 488);
  v4 = *(v2 + 480);

  return MEMORY[0x2822009F8](closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions(), v4, v3);
}

uint64_t $defer #1 () in closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = type metadata accessor for Logger();
  v8 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v16 = v15;
  (*(v12 + 8))(v14, v11);
  static WOLog.mediaPlayback.getter();
  swift_retain_n();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315906;
    v21 = MEMORY[0x20F30BBA0](a2, a3, v32, a5);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v35);

    *(v19 + 4) = v23;
    *(v19 + 12) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v19 + 14) = v34;

    *(v19 + 18) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D839F8];
    *(v24 + 16) = xmmword_20CB5DA70;
    v26 = MEMORY[0x277D83A80];
    *(v24 + 56) = v25;
    *(v24 + 64) = v26;
    *(v24 + 32) = v16;
    v27 = String.init(format:_:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v35);

    *(v19 + 20) = v29;
    *(v19 + 28) = 1024;
    *(v19 + 30) = [objc_opt_self() isMainThread];
    _os_log_impl(&dword_20C66F000, v17, v18, "[%s] UI_SPINNER: Completing appSpecificSuggestions - isLoadingTopSuggestions=%{BOOL}d isLoadingAppSpecific=false - total time: %ss - mainThread: %{BOOL}d", v19, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v20, -1, -1);
    MEMORY[0x20F30E080](v19, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v10, v33);
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = 0;

  return static Published.subscript.setter();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IFImage?) -> () with result type IFImage?(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

uint64_t closure #2 in closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions()(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *&v87 = a9;
  v86 = a8;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v93 = v15;
  v94 = v16;
  MEMORY[0x28223BE20](v15);
  v92 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v83 - v19;
  v21 = type metadata accessor for Date();
  v89 = *(v21 - 8);
  v90 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v83 - v25;
  Date.init()();
  v91 = v26;
  Date.timeIntervalSince(_:)();
  v28 = v27;
  static WOLog.mediaPlayback.getter();
  swift_retain_n();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = a6;

  v32 = os_log_type_enabled(v29, v30);
  v88 = v23;
  v85 = a5;
  v84 = a4;
  v83 = a3;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v96[0] = v34;
    *v33 = 136315650;
    v35 = MEMORY[0x20F30BBA0](a3, a4, a5, v31);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v96);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_20CB5DA70;
    *(v38 + 56) = MEMORY[0x277D839F8];
    v39 = MEMORY[0x277D83A80];
    *(v38 + 64) = MEMORY[0x277D83A80];
    *(v38 + 32) = v28;
    v40 = String.init(format:_:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v96);

    *(v33 + 14) = v42;
    *(v33 + 22) = 2048;
    swift_beginAccess();
    v43 = *(*(a7 + 16) + 16);

    *(v33 + 24) = v43;

    _os_log_impl(&dword_20C66F000, v29, v30, "[%s] UI_SPINNER: Main queue dispatch delay for mediaProviders: %ss - setting %ld providers", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v34, -1, -1);
    v44 = v33;
    v23 = v88;
    MEMORY[0x20F30E080](v44, -1, -1);

    v45 = *(v94 + 8);
    v45(v20, v93);
  }

  else
  {

    v45 = *(v94 + 8);
    v45(v20, v93);
    v39 = MEMORY[0x277D83A80];
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v47 = v91;
  if (Strong)
  {
    swift_beginAccess();
    v48 = *(a7 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v95 = v48;

    static Published.subscript.setter();
  }

  Date.init()();
  Date.timeIntervalSince(_:)();
  v50 = v49;
  Date.timeIntervalSince(_:)();
  v52 = v51;
  v53 = v92;
  static WOLog.mediaPlayback.getter();

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v95 = v57;
    *v56 = 136316162;
    v58 = MEMORY[0x20F30BBA0](v83, v84, v85, v31);
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v95);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v61 = swift_allocObject();
    v87 = xmmword_20CB5DA70;
    *(v61 + 16) = xmmword_20CB5DA70;
    v62 = MEMORY[0x277D839F8];
    *(v61 + 56) = MEMORY[0x277D839F8];
    *(v61 + 64) = v39;
    *(v61 + 32) = v52;
    v63 = String.init(format:_:)();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v95);

    *(v56 + 14) = v65;
    *(v56 + 22) = 2080;
    v66 = swift_allocObject();
    *(v66 + 16) = v87;
    *(v66 + 56) = v62;
    *(v66 + 64) = v39;
    *(v66 + 32) = a1;
    v67 = String.init(format:_:)();
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v95);

    *(v56 + 24) = v69;
    *(v56 + 32) = 2080;
    v70 = swift_allocObject();
    *(v70 + 16) = v87;
    *(v70 + 56) = v62;
    *(v70 + 64) = v39;
    *(v70 + 32) = v28;
    v71 = String.init(format:_:)();
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, &v95);

    *(v56 + 34) = v73;
    *(v56 + 42) = 2080;
    v74 = swift_allocObject();
    *(v74 + 16) = v87;
    *(v74 + 56) = v62;
    *(v74 + 64) = v39;
    *(v74 + 32) = v50;
    v75 = String.init(format:_:)();
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v95);

    *(v56 + 44) = v77;
    _os_log_impl(&dword_20C66F000, v54, v55, "[%s] UI_SPINNER: App specific suggestions completed - total time: %ss (processing: %ss, main queue delay: %ss, UI update: %ss)", v56, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v57, -1, -1);
    MEMORY[0x20F30E080](v56, -1, -1);

    (*(v94 + 8))(v92, v93);
    v78 = *(v89 + 8);
    v79 = v90;
    v78(v88, v90);
    v80 = v91;
  }

  else
  {

    v45(v53, v93);
    v78 = *(v89 + 8);
    v81 = v23;
    v79 = v90;
    v78(v81, v90);
    v80 = v47;
  }

  return (v78)(v80, v79);
}

uint64_t closure #1 in MediaConfigurationRoomViewModel.checkAvailableConfigurationTypes()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = type metadata accessor for Logger();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v4[10] = v6;
  *v6 = v4;
  v6[1] = closure #1 in MediaConfigurationRoomViewModel.checkAvailableConfigurationTypes();

  return specialized static MediaConfigurationRoomViewModel.isSubscriber()();
}

uint64_t closure #1 in MediaConfigurationRoomViewModel.checkAvailableConfigurationTypes()(char a1)
{
  *(*v1 + 88) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in MediaConfigurationRoomViewModel.checkAvailableConfigurationTypes(), v3, v2);
}

uint64_t closure #1 in MediaConfigurationRoomViewModel.checkAvailableConfigurationTypes()()
{
  v1 = *(v0 + 88);

  if (v1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 24) = &outlined read-only object #0 of closure #1 in MediaConfigurationRoomViewModel.checkAvailableConfigurationTypes();
  }

  else
  {
    static WOLog.mediaPlayback.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_20C66F000, v2, v3, "User is non subscriber - hiding media choices", v4, 2u);
      MEMORY[0x20F30E080](v4, -1, -1);
    }

    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);

    (*(v6 + 8))(v5, v7);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = MEMORY[0x277D84F90];
  }

  static Published.subscript.setter();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t MediaConfigurationRoomViewModel.updateMediaConfiguration()()
{
  v1[24] = v0;
  v2 = type metadata accessor for Logger();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A15MediaSuggestionVSgMd);
  v1[28] = swift_task_alloc();
  v3 = type metadata accessor for WorkoutMediaSuggestion();
  v1[29] = v3;
  v1[30] = *(v3 - 8);
  v1[31] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[32] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[33] = v5;
  v1[34] = v4;

  return MEMORY[0x2822009F8](MediaConfigurationRoomViewModel.updateMediaConfiguration(), v5, v4);
}

{
  v1 = *(v0 + 192);
  v2 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__originalConfiguration;
  *(v0 + 280) = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__originalConfiguration;
  v3 = v1 + v2;
  v4 = *(v1 + v2);
  v5 = *(v1 + v2 + 16);
  *(v0 + 16) = v4;
  *(v0 + 32) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore30MediaPlaybackConfigurationItemCSgGMd);
  *(v0 + 288) = v6;
  MEMORY[0x20F30B100]();
  v7 = *(v0 + 88);
  if (v7)
  {
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v8 = *(v0 + 96);
    v9 = dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter();

    if ((v9 & 1) == 0)
    {
LABEL_6:

LABEL_7:

      v14 = *(v0 + 8);

      return v14();
    }
  }

  v10 = *(v3 + 16);
  *(v0 + 40) = *v3;
  *(v0 + 56) = v10;
  MEMORY[0x20F30B100](v6);
  v11 = *(v0 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = *(v0 + 112);
  if (v11)
  {
    type metadata accessor for MediaPlaybackConfigurationItem();
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = *(v0 + 120);
  v17 = dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter();

  if (v17)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v18 = *(v0 + 176);
    v19 = dispatch thunk of MediaPlaybackConfigurationItem.smartStationEnabled.getter();

    if ((v19 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v20 = *(v0 + 184);
      v21 = dispatch thunk of MediaPlaybackConfigurationItem.mediaSuggestion.getter();

      if (!v21)
      {
        v25 = *(v0 + 192);

        *(v25 + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_shouldPresentNoMediaSelectionAlert) = 1;
        goto LABEL_7;
      }
    }
  }

  v22 = *(*(v0 + 192) + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_activityType);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v23 = *(v0 + 128);
  *(v0 + 296) = v23;
  v26 = (*MEMORY[0x277D7E2C0] + MEMORY[0x277D7E2C0]);
  v24 = swift_task_alloc();
  *(v0 + 304) = v24;
  *v24 = v0;
  v24[1] = MediaConfigurationRoomViewModel.updateMediaConfiguration();

  return v26(v22, v23);
}

{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = MediaConfigurationRoomViewModel.updateMediaConfiguration();
  }

  else
  {

    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = MediaConfigurationRoomViewModel.updateMediaConfiguration();
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 192);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = *(v2 + v1 + 16);
  *(v0 + 64) = *(v2 + v1);
  v4 = *(v0 + 136);
  *(v0 + 80) = v3;
  *(v0 + 144) = v4;
  Binding.wrappedValue.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = *(v0 + 152);
  LOBYTE(v2) = dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter();

  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v6 = *(v0 + 160);
    v7 = dispatch thunk of MediaPlaybackConfigurationItem.smartStationEnabled.getter();

    if ((v7 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v8 = *(v0 + 168);
      v9 = dispatch thunk of MediaPlaybackConfigurationItem.mediaSuggestion.getter();
    }
  }

  v10 = *(v0 + 232);
  v11 = *(v0 + 240);
  v12 = *(v0 + 224);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    outlined destroy of WorkoutMediaSuggestion?(*(v0 + 224), &_s11WorkoutCore0A15MediaSuggestionVSgMd);
  }

  else
  {
    v14 = *(v0 + 240);
    v13 = *(v0 + 248);
    v15 = *(v0 + 232);
    (*(v14 + 32))(v13, *(v0 + 224), v15);
    v16 = WorkoutMediaSuggestion.sendFeedback.getter();
    v16();

    (*(v14 + 8))(v13, v15);
  }

  v17 = *(v0 + 8);

  return v17();
}

{
  v1 = v0[39];
  v2 = v0[37];

  static WOLog.mediaPlayback.getter();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[39];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20C66F000, v4, v5, "Failed to save media playback configuration with error: %@", v8, 0xCu);
    outlined destroy of WorkoutMediaSuggestion?(v9, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v9, -1, -1);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[26] + 8))(v0[27], v0[25]);

  v12 = v0[1];

  return v12();
}

uint64_t MediaConfigurationRoomViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__topSuggestions;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__mediaProviders;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9WorkoutUI0C13MediaProviderVGGMd);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__originalConfiguration + 16);

  v6 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__newConfiguration;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore30MediaPlaybackConfigurationItemCGMd);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__currentlySelectedSuggestion;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C15MediaSuggestionVSgGMd);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  v10 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__libraryPlaylistsModel;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore26MusicLibraryPlaylistsModelCGMd);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  v12 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__isLoadingTopSuggestions;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v14(v0 + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__isLoadingAppSpecificSuggestions, v13);
  v15 = OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel__playbackConfigurationTypes;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9WorkoutUI30MediaPlaybackConfigurationTypeOGGMd);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  return v0;
}

uint64_t MediaConfigurationRoomViewModel.__deallocating_deinit()
{
  MediaConfigurationRoomViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MediaConfigurationRoomViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MediaConfigurationRoomViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t WorkoutMediaProvider.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WorkoutMediaProvider.sourceName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WorkoutMediaProvider.sourceName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *WorkoutMediaProvider.icon.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t WorkoutMediaProvider.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WorkoutMediaProvider.suggestions.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance WorkoutMediaProvider@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t type metadata accessor for MediaConfigurationRoomViewModel()
{
  result = type metadata singleton initialization cache for MediaConfigurationRoomViewModel;
  if (!type metadata singleton initialization cache for MediaConfigurationRoomViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MediaConfigurationRoomViewModel()
{
  type metadata accessor for Published<[WorkoutMediaSuggestion]>(319, &lazy cache variable for type metadata for Published<[WorkoutMediaSuggestion]>, &_sSay11WorkoutCore0A15MediaSuggestionVGMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<[WorkoutMediaSuggestion]>(319, &lazy cache variable for type metadata for Published<[WorkoutMediaProvider]>, &_sSay9WorkoutUI0A13MediaProviderVGMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<MediaPlaybackConfigurationItem>(319, &lazy cache variable for type metadata for Published<MediaPlaybackConfigurationItem>, MEMORY[0x277D7E648]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Published<[WorkoutMediaSuggestion]>(319, &lazy cache variable for type metadata for Published<WorkoutMediaSuggestion?>, &_s11WorkoutCore0A15MediaSuggestionVSgMd);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Published<MediaPlaybackConfigurationItem>(319, &lazy cache variable for type metadata for Published<MusicLibraryPlaylistsModel>, MEMORY[0x277D7E5B8]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Published<Bool>();
            if (v5 <= 0x3F)
            {
              type metadata accessor for Published<[WorkoutMediaSuggestion]>(319, &lazy cache variable for type metadata for Published<[MediaPlaybackConfigurationType]>, &_sSay9WorkoutUI30MediaPlaybackConfigurationTypeOGMd);
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<MediaPlaybackConfigurationItem>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Published<[WorkoutMediaSuggestion]>(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutMediaProvider(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutMediaProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of WorkoutMediaSuggestion?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A15MediaSuggestionVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in MediaConfigurationRoomViewModel.checkAvailableConfigurationTypes()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MediaConfigurationRoomViewModel.checkAvailableConfigurationTypes();

  return closure #1 in MediaConfigurationRoomViewModel.checkAvailableConfigurationTypes()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in MediaConfigurationRoomViewModel.checkAvailableConfigurationTypes()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t key path getter for MediaConfigurationRoomViewModel.newConfiguration : MediaConfigurationRoomViewModel@<X0>(void *a1@<X8>)
{
  return key path getter for MediaConfigurationRoomViewModel.newConfiguration : MediaConfigurationRoomViewModel(a1);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for MediaConfigurationRoomViewModel.newConfiguration : MediaConfigurationRoomViewModel(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t key path getter for MediaConfigurationRoomViewModel.currentlySelectedSuggestion : MediaConfigurationRoomViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for MediaConfigurationRoomViewModel.currentlySelectedSuggestion : MediaConfigurationRoomViewModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A15MediaSuggestionVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  outlined init with copy of WorkoutMediaSuggestion?(a1, &v9 - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutMediaSuggestion?(v7, v4);

  static Published.subscript.setter();
  return outlined destroy of WorkoutMediaSuggestion?(v7, &_s11WorkoutCore0A15MediaSuggestionVSgMd);
}

uint64_t key path getter for MediaConfigurationRoomViewModel.topSuggestions : MediaConfigurationRoomViewModel@<X0>(void *a1@<X8>)
{
  return key path getter for MediaConfigurationRoomViewModel.topSuggestions : MediaConfigurationRoomViewModel(a1);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for MediaConfigurationRoomViewModel.topSuggestions : MediaConfigurationRoomViewModel()
{
  return key path setter for MediaConfigurationRoomViewModel.topSuggestions : MediaConfigurationRoomViewModel();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for MediaConfigurationRoomViewModel.libraryPlaylistsModel : MediaConfigurationRoomViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for MediaConfigurationRoomViewModel.isLoadingTopSuggestions : MediaConfigurationRoomViewModel@<X0>(_BYTE *a1@<X8>)
{
  return key path getter for MediaConfigurationRoomViewModel.isLoadingTopSuggestions : MediaConfigurationRoomViewModel(a1);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for MediaConfigurationRoomViewModel.isLoadingTopSuggestions : MediaConfigurationRoomViewModel()
{
  return key path setter for MediaConfigurationRoomViewModel.isLoadingTopSuggestions : MediaConfigurationRoomViewModel();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    lazy protocol witness table accessor for type String and conformance String();
    v7 = v6 + 48 * v4 - 48;
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = StringProtocol.localizedStandardCompare<A>(_:)();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 48;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *(v10 + 48);
      v12 = *(v10 + 56);
      v13 = *(v10 + 64);
      v14 = *(v10 + 72);
      v15 = *(v10 + 80);
      v16 = *(v10 + 88);
      v17 = *(v10 + 16);
      *(v10 + 48) = *v10;
      *(v10 + 64) = v17;
      *(v10 + 80) = *(v10 + 32);
      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 24) = v14;
      *(v10 + 32) = v15;
      *(v10 + 40) = v16;
      v10 -= 48;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_6:
    v7 = *(v4 + 8 * a3);
    result = v6;
    v8 = v5;
    while (v7 < 4)
    {
      v9 = *v8;
      if (*v8 <= 1)
      {
        if (*v8 != 1)
        {
          if (v9)
          {
            break;
          }

LABEL_5:
          ++a3;
          v5 += 8;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        if (((9u >> (v7 & 0xF)) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else if (v9 == 2)
      {
        if (((0xBu >> (v7 & 0xF)) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v9 != 3)
        {
          break;
        }

        if (((1u >> (v7 & 0xF)) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v4)
      {
        __break(1u);
        break;
      }

      *v8 = v7;
      v8[1] = v9;
      --v8;
      if (__CFADD__(result++, 1))
      {
        goto LABEL_5;
      }
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    lazy protocol witness table accessor for type String and conformance String();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
LABEL_5:
    v14 = v7;
    v9 = v8;
    while (1)
    {
      result = StringProtocol.localizedStandardCompare<A>(_:)();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v8 += 2;
        v7 = v14 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *v9;
      v11 = v9[1];
      *v9 = *(v9 - 1);
      *(v9 - 1) = v11;
      *(v9 - 2) = v10;
      v9 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    type metadata accessor for StandardWorkoutAddWorkoutRow();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type StandardWorkoutAddWorkoutRow and conformance StandardWorkoutAddWorkoutRow, MEMORY[0x277D7D9A8]);
    v8 = v7 + 8 * v4 - 8;
    v9 = v6 - v4;
LABEL_5:
    v10 = v9;
    v11 = v8;
    while (1)
    {
      result = dispatch thunk of static Comparable.< infix(_:_:)();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        v8 += 8;
        --v9;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v12 = *v11;
      *v11 = v11[1];
      v11[1] = v12;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    lazy protocol witness table accessor for type String and conformance String();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
LABEL_5:
    v14 = v7;
    v9 = v8;
    while (1)
    {
      result = StringProtocol.localizedStandardCompare<A>(_:)();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v8 += 2;
        v7 = v14 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *v9;
      v11 = v9[1];
      *v9 = *(v9 - 1);
      *(v9 - 1) = v11;
      *(v9 - 2) = v10;
      v9 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v97 = result;
  v6 = *(a3 + 1);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      if (v7 + 1 >= v6)
      {
        v6 = (v7 + 1);
      }

      else
      {
        v95 = v5;
        v10 = *a3 + 48 * v7;
        lazy protocol witness table accessor for type String and conformance String();
        result = StringProtocol.localizedStandardCompare<A>(_:)();
        v11 = result;
        v12 = (v7 + 2);
        v13 = v10 + 120;
        while (v6 != v12)
        {
          result = StringProtocol.localizedStandardCompare<A>(_:)();
          ++v12;
          v13 += 48;
          if ((v11 == -1) == (result != -1))
          {
            v6 = v12 - 1;
            break;
          }
        }

        v5 = v95;
        if (v11 == -1)
        {
          if (v6 < v7)
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            return result;
          }

          if (v7 < v6)
          {
            v14 = 48 * v6 - 24;
            v15 = 48 * v7 + 40;
            v16 = v6;
            v17 = v7;
            do
            {
              if (v17 != --v16)
              {
                v26 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v18 = (v26 + v15);
                v19 = *(v26 + v15 - 40);
                v20 = v26 + v14;
                v21 = *(v18 - 3);
                v22 = *(v18 - 1);
                v23 = *v18;
                v24 = *(v20 + 8);
                v25 = *(v20 - 8);
                *(v18 - 5) = *(v20 - 24);
                *(v18 - 3) = v25;
                *(v18 - 1) = v24;
                *(v20 - 24) = v19;
                *(v20 - 8) = v21;
                *(v20 + 8) = v22;
                *(v20 + 16) = v23;
              }

              ++v17;
              v14 -= 48;
              v15 += 48;
            }

            while (v17 < v16);
          }
        }
      }

      v27 = *(a3 + 1);
      if (v6 >= v27)
      {
        goto LABEL_27;
      }

      if (__OFSUB__(v6, v7))
      {
        goto LABEL_117;
      }

      if (&v6[-v7] >= a4)
      {
        goto LABEL_27;
      }

      if (__OFADD__(v7, a4))
      {
        goto LABEL_118;
      }

      if (v7 + a4 < v27)
      {
        v27 = (v7 + a4);
      }

      if (v27 < v7)
      {
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      if (v6 == v27)
      {
LABEL_27:
        v7 = v6;
      }

      else
      {
        v98 = v27;
        v96 = v5;
        v75 = *a3;
        lazy protocol witness table accessor for type String and conformance String();
        v76 = v75 + 48 * v6 - 48;
        v93 = v9;
        v77 = v9 - v6;
        do
        {
          v78 = v77;
          v79 = v76;
          do
          {
            result = StringProtocol.localizedStandardCompare<A>(_:)();
            if (result != -1)
            {
              break;
            }

            if (!v75)
            {
              goto LABEL_122;
            }

            v80 = *(v79 + 48);
            v81 = *(v79 + 56);
            v82 = *(v79 + 64);
            v83 = *(v79 + 72);
            v84 = *(v79 + 80);
            v85 = *(v79 + 88);
            v86 = *(v79 + 16);
            *(v79 + 48) = *v79;
            *(v79 + 64) = v86;
            *(v79 + 80) = *(v79 + 32);
            *v79 = v80;
            *(v79 + 8) = v81;
            *(v79 + 16) = v82;
            *(v79 + 24) = v83;
            *(v79 + 32) = v84;
            *(v79 + 40) = v85;
            v79 -= 48;
          }

          while (!__CFADD__(v78++, 1));
          ++v6;
          v76 += 48;
          --v77;
        }

        while (v6 != v98);
        v5 = v96;
        v7 = v98;
        v9 = v93;
      }

      v6 = a3;
      if (v7 < v9)
      {
        goto LABEL_116;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v29 = *(v8 + 2);
      v28 = *(v8 + 3);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v30;
      v31 = &v8[16 * v29];
      *(v31 + 4) = v9;
      *(v31 + 5) = v7;
      v32 = *v97;
      if (!*v97)
      {
        goto LABEL_126;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v34 = *(v8 + 4);
            v35 = *(v8 + 5);
            v44 = __OFSUB__(v35, v34);
            v36 = v35 - v34;
            v37 = v44;
LABEL_48:
            if (v37)
            {
              goto LABEL_105;
            }

            v50 = &v8[16 * v30];
            v52 = *v50;
            v51 = *(v50 + 1);
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v55 = v53;
            if (v53)
            {
              goto LABEL_108;
            }

            v56 = &v8[16 * v33 + 32];
            v58 = *v56;
            v57 = *(v56 + 1);
            v44 = __OFSUB__(v57, v58);
            v59 = v57 - v58;
            if (v44)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v54, v59))
            {
              goto LABEL_112;
            }

            if (v54 + v59 >= v36)
            {
              if (v36 < v59)
              {
                v33 = v30 - 2;
              }

              goto LABEL_69;
            }

            goto LABEL_62;
          }

          v60 = &v8[16 * v30];
          v62 = *v60;
          v61 = *(v60 + 1);
          v44 = __OFSUB__(v61, v62);
          v54 = v61 - v62;
          v55 = v44;
LABEL_62:
          if (v55)
          {
            goto LABEL_107;
          }

          v63 = &v8[16 * v33];
          v65 = *(v63 + 4);
          v64 = *(v63 + 5);
          v44 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v44)
          {
            goto LABEL_110;
          }

          if (v66 < v54)
          {
            goto LABEL_3;
          }

LABEL_69:
          v71 = v33 - 1;
          if (v33 - 1 >= v30)
          {
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
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (!*a3)
          {
            goto LABEL_123;
          }

          v72 = *&v8[16 * v71 + 32];
          v73 = *&v8[16 * v33 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 48 * v72), (*a3 + 48 * *&v8[16 * v33 + 32]), (*a3 + 48 * v73), v32);
          if (v5)
          {
          }

          if (v73 < v72)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          }

          if (v71 >= *(v8 + 2))
          {
            goto LABEL_102;
          }

          v74 = &v8[16 * v71];
          *(v74 + 4) = v72;
          *(v74 + 5) = v73;
          result = specialized Array.remove(at:)(v33);
          v30 = *(v8 + 2);
          if (v30 <= 1)
          {
            goto LABEL_3;
          }
        }

        v38 = &v8[16 * v30 + 32];
        v39 = *(v38 - 64);
        v40 = *(v38 - 56);
        v44 = __OFSUB__(v40, v39);
        v41 = v40 - v39;
        if (v44)
        {
          goto LABEL_103;
        }

        v43 = *(v38 - 48);
        v42 = *(v38 - 40);
        v44 = __OFSUB__(v42, v43);
        v36 = v42 - v43;
        v37 = v44;
        if (v44)
        {
          goto LABEL_104;
        }

        v45 = &v8[16 * v30];
        v47 = *v45;
        v46 = *(v45 + 1);
        v44 = __OFSUB__(v46, v47);
        v48 = v46 - v47;
        if (v44)
        {
          goto LABEL_106;
        }

        v44 = __OFADD__(v36, v48);
        v49 = v36 + v48;
        if (v44)
        {
          goto LABEL_109;
        }

        if (v49 >= v41)
        {
          v67 = &v8[16 * v33 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v44 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v44)
          {
            goto LABEL_113;
          }

          if (v36 < v70)
          {
            v33 = v30 - 2;
          }

          goto LABEL_69;
        }

        goto LABEL_48;
      }

LABEL_3:
      v6 = *(a3 + 1);
      if (v7 >= v6)
      {
        goto LABEL_88;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_88:
  v6 = *v97;
  if (!*v97)
  {
    goto LABEL_127;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_120:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    v8 = result;
  }

  v88 = v5;
  v89 = *(v8 + 2);
  if (v89 >= 2)
  {
    while (*a3)
    {
      v5 = v89 - 1;
      v90 = *&v8[16 * v89];
      v91 = *&v8[16 * v89 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 48 * v90), (*a3 + 48 * *&v8[16 * v89 + 16]), (*a3 + 48 * v91), v6);
      if (v88)
      {
      }

      if (v91 < v90)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      }

      if (v89 - 2 >= *(v8 + 2))
      {
        goto LABEL_115;
      }

      v92 = &v8[16 * v89];
      *v92 = v90;
      *(v92 + 1) = v91;
      result = specialized Array.remove(at:)(v5);
      v89 = *(v8 + 2);
      if (v89 <= 1)
      {
      }
    }

    goto LABEL_124;
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 48;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 48;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[48 * v11] <= a4)
    {
      memmove(a4, __dst, 48 * v11);
    }

    v12 = &v4[48 * v11];
    if (v10 >= 48 && v6 > v7)
    {
      lazy protocol witness table accessor for type String and conformance String();
LABEL_23:
      v5 -= 48;
      do
      {
        v17 = v5 + 48;
        if (StringProtocol.localizedStandardCompare<A>(_:)() == -1)
        {
          v21 = v6 - 48;
          if (v17 != v6)
          {
            v22 = *v21;
            v23 = *(v6 - 1);
            *(v5 + 1) = *(v6 - 2);
            *(v5 + 2) = v23;
            *v5 = v22;
          }

          if (v12 <= v4 || (v6 -= 48, v21 <= v7))
          {
            v6 = v21;
            goto LABEL_35;
          }

          goto LABEL_23;
        }

        v18 = v12 - 48;
        if (v17 != v12)
        {
          v19 = *v18;
          v20 = *(v12 - 1);
          *(v5 + 1) = *(v12 - 2);
          *(v5 + 2) = v20;
          *v5 = v19;
        }

        v5 -= 48;
        v12 -= 48;
      }

      while (v18 > v4);
      v12 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[48 * v9] <= a4)
    {
      memmove(a4, __src, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 >= 48 && v6 < v5)
    {
      lazy protocol witness table accessor for type String and conformance String();
      while (StringProtocol.localizedStandardCompare<A>(_:)() == -1)
      {
        v13 = v6;
        v14 = v7 == v6;
        v6 += 48;
        if (!v14)
        {
          goto LABEL_10;
        }

LABEL_11:
        v7 += 48;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_33;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 48;
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_10:
      v15 = *v13;
      v16 = *(v13 + 2);
      *(v7 + 1) = *(v13 + 1);
      *(v7 + 2) = v16;
      *v7 = v15;
      goto LABEL_11;
    }

LABEL_33:
    v6 = v7;
  }

LABEL_35:
  v24 = (v12 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v24])
  {
    memmove(v6, v4, 48 * v24);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      lazy protocol witness table accessor for type String and conformance String();
LABEL_27:
      v20 = v6 - 16;
      v5 -= 16;
      v17 = v14;
      do
      {
        v18 = v5 + 16;
        v17 -= 16;
        if (StringProtocol.localizedStandardCompare<A>(_:)() == -1)
        {
          if (v18 != v6)
          {
            *v5 = *v20;
          }

          if (v14 <= v4 || (v6 -= 16, v20 <= v7))
          {
            v6 = v20;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v18 != v14)
        {
          *v5 = *v17;
        }

        v5 -= 16;
        v14 = v17;
      }

      while (v17 > v4);
      v14 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      lazy protocol witness table accessor for type String and conformance String();
      while (StringProtocol.localizedStandardCompare<A>(_:)() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 16;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      lazy protocol witness table accessor for type String and conformance String();
LABEL_27:
      v20 = v6 - 16;
      v5 -= 16;
      v17 = v14;
      do
      {
        v18 = v5 + 16;
        v17 -= 16;
        if (StringProtocol.localizedStandardCompare<A>(_:)() == -1)
        {
          if (v18 != v6)
          {
            *v5 = *v20;
          }

          if (v14 <= v4 || (v6 -= 16, v20 <= v7))
          {
            v6 = v20;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v18 != v14)
        {
          *v5 = *v17;
        }

        v5 -= 16;
        v14 = v17;
      }

      while (v17 > v4);
      v14 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      lazy protocol witness table accessor for type String and conformance String();
      while (StringProtocol.localizedStandardCompare<A>(_:)() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 16;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t specialized static MediaConfigurationRoomViewModel.isSubscriber()()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = type metadata accessor for MusicSubscription.PrivacyAcknowledgementPolicy();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = type metadata accessor for MusicSubscription();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[12] = v5;
  v0[13] = v4;

  return MEMORY[0x2822009F8](specialized static MediaConfigurationRoomViewModel.isSubscriber(), v5, v4);
}

{
  (*(v0[6] + 104))(v0[7], *MEMORY[0x277D2AE30], v0[5]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = specialized static MediaConfigurationRoomViewModel.isSubscriber();
  v2 = v0[10];
  v3 = v0[7];

  return MEMORY[0x28218A460](v2, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = specialized static MediaConfigurationRoomViewModel.isSubscriber();
  }

  else
  {
    v8 = specialized static MediaConfigurationRoomViewModel.isSubscriber();
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{

  v1 = MusicSubscription.canPlayCatalogContent.getter();
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];

  return v2(v1 & 1);
}

{

  static WOLog.mediaPlayback.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[15];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20C66F000, v1, v2, "Error fetching Apple Music subscription status - hiding Choose For Me", v5, 2u);
    MEMORY[0x20F30E080](v5, -1, -1);
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  v6 = v0[1];

  return v6(0);
}

uint64_t outlined destroy of WorkoutMediaSuggestion?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions()(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions();

  return closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions()(a1, v5, v6, v1 + v4, v8, v9, v10, v11);
}

uint64_t partial apply for closure #2 in closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions()()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v2 + v7 + 8) & ~v2;
  v9 = (v0 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v0 + v6);
  v13 = *(v0 + v7);
  v14 = v9[2];
  v15 = v9[3];
  v16 = *(v0 + ((v4 + v8) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in closure #1 in MediaConfigurationRoomViewModel.populateAppSpecificSuggestions()(v16, v0 + v3, v10, v11, v14, v15, v12, v13, v0 + v8);
}

uint64_t block_copy_helper_107(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in MediaConfigurationRoomViewModel.populateTopSuggestions()(uint64_t a1)
{
  type metadata accessor for Date();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in MediaConfigurationRoomViewModel.populateTopSuggestions();

  return closure #1 in MediaConfigurationRoomViewModel.populateTopSuggestions()(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in closure #1 in MediaConfigurationRoomViewModel.populateTopSuggestions()()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v0 + v6);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v0 + v7);
  v13 = *(v0 + v8);
  v14 = v9[2];
  v15 = v9[3];
  v16 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in MediaConfigurationRoomViewModel.populateTopSuggestions()(v16, v0 + v4, v0 + v5, v10, v11, v14, v15, v12, v13);
}

uint64_t partial apply for closure #1 in MediaConfigurationRoomViewModel.setCurrentlySelectedSuggestion()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in MediaConfigurationRoomViewModel.setCurrentlySelectedSuggestion();

  return closure #1 in MediaConfigurationRoomViewModel.setCurrentlySelectedSuggestion()(a1, v4, v5, v7, v6);
}

uint64_t getEnumTagSinglePayload for TrainingLoadGradientView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TrainingLoadGradientView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void TrainingLoadGradientView.body.getter()
{
  v1 = type metadata accessor for ColorRenderingMode();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA6HStackVyAA9TupleViewVyACyAoA12_FrameLayoutVGSg_AA7ForEachVySnySiGSiAGyAGyAYyAZSiACyAiKyAA013_OpacityShapeI0VyAA14LinearGradientVGGGGAVGAGyA5_AOGGGtGGGGAUGAA13_OffsetEffectVGMd);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  v8 = *(*(v0 + 8) + 16);
  if (!v8)
  {
    v10 = 0;
    goto LABEL_7;
  }

  v9 = *(v0 + 16);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9 < 9.22337204e18)
  {
    v10 = v9 / v8;
LABEL_7:
    closure #1 in TrainingLoadGradientView.body.getter(v0, v10);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v11 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA6HStackVyAA9TupleViewVyACyAoA12_FrameLayoutVGSg_AA7ForEachVySnySiGSiAGyAGyAYyAZSiACyAiKyAA013_OpacityShapeI0VyAA14LinearGradientVGGGGAVGAGyA5_AOGGGtGGGGAUGMd) + 36)];
    v12 = v13[1];
    *v11 = v13[0];
    *(v11 + 1) = v12;
    *(v11 + 2) = v13[2];
    *&v7[*(v5 + 36)] = xmmword_20CB6C630;
    (*(v2 + 104))(v4, *MEMORY[0x277CE00F0], v1);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    View.drawingGroup(opaque:colorMode:)();
    (*(v2 + 8))(v4, v1);
    outlined destroy of ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>>, _FrameLayout>, _OffsetEffect>(v7, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA6HStackVyAA9TupleViewVyACyAoA12_FrameLayoutVGSg_AA7ForEachVySnySiGSiAGyAGyAYyAZSiACyAiKyAA013_OpacityShapeI0VyAA14LinearGradientVGGGGAVGAGyA5_AOGGGtGGGGAUGAA13_OffsetEffectVGMd);
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t closure #1 in TrainingLoadGradientView.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGSg_AA7ForEachVySnySiGSiAA012_ConditionalG0VyAXyAUyAVSiAGyAiKyAA013_OpacityShapeJ0VyAA14LinearGradientVGGGGARGAXyA3_AOGGGtGGMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA6HStackVyAA9TupleViewVyAGyAoA12_FrameLayoutVGSg_AA7ForEachVySnySiGSiACyACyAYyAZSiAGyAiKyAA013_OpacityShapeI0VyAA14LinearGradientVGGGGAVGACyA5_AOGGGtGG_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = (&v12 - v8);
  if (*(*(a1 + 8) + 16) > 1uLL)
  {
    *v6 = static VerticalAlignment.top.getter();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameG0VGSg_AA7ForEachVySnySiGSiAA012_ConditionalJ0VyA0_yAYyAZSiAKyAmOyAA013_OpacityShapeM0VyAA14LinearGradientVGGGGAVGA0_yA7_ASGGGtGGMd);
    closure #1 in closure #1 in TrainingLoadGradientView.body.getter(a1, a2, &v6[*(v11 + 44)]);
    outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>(v6, v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGSg_AA7ForEachVySnySiGSiAA012_ConditionalG0VyAXyAUyAVSiAGyAiKyAA013_OpacityShapeJ0VyAA14LinearGradientVGGGGARGAXyA3_AOGGGtGGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_0(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGSg_AA7ForEachVySnySiGSiAA012_ConditionalG0VyAXyAUyAVSiAGyAiKyAA013_OpacityShapeJ0VyAA14LinearGradientVGGGGARGAXyA3_AOGGGtGGMd);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>>, _FrameLayout>, _OffsetEffect>(v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGSg_AA7ForEachVySnySiGSiAA012_ConditionalG0VyAXyAUyAVSiAGyAiKyAA013_OpacityShapeJ0VyAA14LinearGradientVGGGGARGAXyA3_AOGGGtGGMd);
  }

  else
  {
    if (one-time initialization token for inactiveColor != -1)
    {
      swift_once();
    }

    *v9 = static TrainingLoadSmoothedLineTrace.inactiveColor;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_0(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGSg_AA7ForEachVySnySiGSiAA012_ConditionalG0VyAXyAUyAVSiAGyAiKyAA013_OpacityShapeJ0VyAA14LinearGradientVGGGGARGAXyA3_AOGGGtGGMd);
    return _ConditionalContent<>.init(storage:)();
  }
}

void closure #1 in closure #1 in TrainingLoadGradientView.body.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSiAA19_ConditionalContentVyAFyACyADSiAA08ModifiedF0VyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeJ0VyAA14LinearGradientVGGGGAHyAHyAjLyAA5ColorVGGAA12_FrameLayoutVGGAFyAsXGGGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = *(a1 + 48);
  v13 = v12 * a2;
  if ((v12 * a2) >> 64 == (v12 * a2) >> 63)
  {
    v14 = *(*(a1 + 8) + 16);
    v32 = v9;
    if (v14 >= v12)
    {
      v33 = 0;
      v16 = 0;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      v28 = 0;
      v27 = 0;
    }

    else
    {
      v15 = *a1;

      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v16 = v37;
      v31 = v38;
      v30 = v39;
      v29 = v40;
      v28 = v41;
      v27 = v42;
      v33 = v15;
    }

    if (v14)
    {
      v35 = 0;
      v36 = v14 - 1;
      swift_getKeyPath();
      v26 = v16;
      v17 = swift_allocObject();
      v18 = *(a1 + 16);
      *(v17 + 16) = *a1;
      *(v17 + 32) = v18;
      *(v17 + 48) = *(a1 + 32);
      *(v17 + 64) = *(a1 + 48);
      *(v17 + 72) = a2;
      *(v17 + 80) = v13;
      outlined init with copy of TrainingLoadGradientView(a1, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA7ForEachVySnySiGSiAA08ModifiedD0VyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeJ0VyAA14LinearGradientVGGGGAHyAHyAjLyAA5ColorVGGAA12_FrameLayoutVGGACyAsXGGMd);
      lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>();
      ForEach<>.init(_:id:content:)();
      v19 = *(v7 + 16);
      v20 = v32;
      v19(v32, v11, v6);
      v21 = v26;
      *a3 = v33;
      *(a3 + 1) = v21;
      v22 = v30;
      *(a3 + 2) = v31;
      *(a3 + 3) = v22;
      v23 = v28;
      *(a3 + 4) = v29;
      *(a3 + 5) = v23;
      *(a3 + 6) = v27;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGSg_AA7ForEachVySnySiGSiAA012_ConditionalD0VyATyAQyARSiACyAeGyAA013_OpacityShapeG0VyAA14LinearGradientVGGGGANGATyA_AKGGGtMd);
      v19(&a3[*(v24 + 48)], v20, v6);
      v25 = *(v7 + 8);
      v25(v11, v6);
      v25(v20, v6);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in closure #1 in closure #1 in TrainingLoadGradientView.body.getter@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA7ForEachVySnySiGSiAA08ModifiedD0VyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeK0VyAA14LinearGradientVGGGGAJyAJyAlNyAA5ColorVGGAA12_FrameLayoutVGGACyAuZG_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &KeyPath - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA7ForEachVySnySiGSiAA08ModifiedD0VyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeK0VyAA14LinearGradientVGGGGAJyAJyAlNyAA5ColorVGGAA12_FrameLayoutVG_GMd);
  MEMORY[0x28223BE20](v52);
  v53 = (&KeyPath - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSiAA15ModifiedContentVyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeI0VyAA14LinearGradientVGGGGMd);
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v49 = &KeyPath - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA7ForEachVySnySiGSiAA08ModifiedD0VyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeJ0VyAA14LinearGradientVGGGGAHyAHyAjLyAA5ColorVGGAA12_FrameLayoutVGGMd);
  MEMORY[0x28223BE20](v13);
  v15 = &KeyPath - v14;
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  MEMORY[0x28223BE20](View);
  v19 = &KeyPath - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v51 = v11;
  v21 = *(a2 + 8);
  v22 = *(v21 + 16);
  if (v20 >= v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v55 = v9;
  v9 = v13;
  v56 = v7;
  v23 = a4;
  v24 = v21 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v25 = *(v17 + 72);
  outlined init with copy of TrainingLoadViewModel.ChartPoint(v24 + v25 * v20, &KeyPath - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = v19;
  if (v20 != v22 - 1)
  {
    if (v20 + 1 < v22)
    {
      v31 = v54;
      v32 = specialized static TrainingLoadGradientView.fillerPoints(from:to:count:)(v57, v24 + v25 * (v20 + 1), v54);
      if (v32)
      {
        v33 = v32;
        v34 = v32[2];
        if (v34)
        {
          v58 = 0;
          *&v59 = v34 - 1;
          KeyPath = swift_getKeyPath();
          v35 = swift_allocObject();
          *(v35 + 16) = v33;
          v36 = *(a2 + 16);
          *(v35 + 24) = *a2;
          *(v35 + 40) = v36;
          *(v35 + 56) = *(a2 + 32);
          *(v35 + 72) = *(a2 + 48);
          outlined init with copy of TrainingLoadGradientView(a2, &v63);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeG0VyAA14LinearGradientVGGGMd);
          lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
          lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>> and conformance <> ModifiedContent<A, B>();
          v22 = v15;
          v54 = v23;
          v37 = v49;
          ForEach<>.init(_:id:content:)();
          v38 = v50;
          v39 = v51;
          (*(v50 + 16))(v53, v37, v51);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGMd);
          lazy protocol witness table accessor for type ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>> and conformance <> ForEach<A, B, C>();
          lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
          _ConditionalContent<>.init(storage:)();
          (*(v38 + 8))(v37, v39);
          v9 = v55;
LABEL_19:
          outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>(v22, v9, &_s7SwiftUI19_ConditionalContentVyAA7ForEachVySnySiGSiAA08ModifiedD0VyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeJ0VyAA14LinearGradientVGGGGAHyAHyAjLyAA5ColorVGGAA12_FrameLayoutVGGMd);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeH0VyAA14LinearGradientVGGGAEyAgIyAA5ColorVGGGMd);
          lazy protocol witness table accessor for type _ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>();
          _ConditionalContent<>.init(storage:)();
          outlined destroy of ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>>, _FrameLayout>, _OffsetEffect>(v22, &_s7SwiftUI19_ConditionalContentVyAA7ForEachVySnySiGSiAA08ModifiedD0VyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeJ0VyAA14LinearGradientVGGGGAHyAHyAjLyAA5ColorVGGAA12_FrameLayoutVGGMd);
          return outlined destroy of TrainingLoadViewModel.ChartPoint(v57);
        }

LABEL_24:
        __break(1u);
LABEL_25:
        swift_once();
        goto LABEL_6;
      }

      if (*(a2 + 48) / 28 <= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = *(a2 + 48) / 28;
      }

      if ((v40 * v31) >> 64 == (v40 * v31) >> 63)
      {
        v22 = v15;
        v9 = v55;
        if (one-time initialization token for inactiveColor == -1)
        {
LABEL_18:
          v41 = static TrainingLoadSmoothedLineTrace.inactiveColor;

          static Alignment.center.getter();
          _FrameLayout.init(width:height:alignment:)();
          v42 = v63;
          v43 = BYTE8(v63);
          v44 = v64;
          v45 = BYTE8(v64);
          v46 = v53;
          *v53 = v41;
          v46[1] = v42;
          *(v46 + 16) = v43;
          v46[3] = v44;
          *(v46 + 32) = v45;
          *(v46 + 5) = v65;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGMd);
          lazy protocol witness table accessor for type ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>> and conformance <> ForEach<A, B, C>();
          lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
          _ConditionalContent<>.init(storage:)();
          goto LABEL_19;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_18;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v19[*(View + 32) + 8] & 1) == 0)
  {
    specialized static TrainingLoadGradientView.colorStops(for:maxYInChart:minYInChart:)(v19, *(a2 + 32), *(a2 + 40));
    static UnitPoint.bottom.getter();
    static UnitPoint.top.getter();
    Gradient.init(stops:)();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v58 = v66;
    v59 = v67;
    v60 = v68;
    v61 = 1053609165;
    v62 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeG0VyAA14LinearGradientVGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v26 = v63;
    v27 = v64;
    v28 = v65;
    v29 = DWORD2(v65);
    v30 = BYTE12(v65);
    v9 = v55;
    goto LABEL_12;
  }

  v9 = v55;
  if (one-time initialization token for inactiveColor != -1)
  {
    goto LABEL_25;
  }

LABEL_6:
  v58 = static TrainingLoadSmoothedLineTrace.inactiveColor;
  v59 = 0u;
  v60 = 0u;
  v61 = 0;
  v62 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeG0VyAA14LinearGradientVGGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v26 = v63;
  v27 = v64;
  v28 = v65;
  v29 = DWORD2(v65);
  v30 = BYTE12(v65);
LABEL_12:
  *v9 = v26;
  *(v9 + 1) = v27;
  *(v9 + 4) = v28;
  *(v9 + 10) = v29;
  v9[44] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeH0VyAA14LinearGradientVGGGAEyAgIyAA5ColorVGGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  return outlined destroy of TrainingLoadViewModel.ChartPoint(v57);
}

unint64_t *closure #1 in closure #1 in closure #1 in closure #1 in TrainingLoadGradientView.body.getter@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(a2 + 16))
  {
    v8 = *(type metadata accessor for TrainingLoadViewModel.ChartPoint(0) - 8);
    specialized static TrainingLoadGradientView.colorStops(for:maxYInChart:minYInChart:)(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4, *(a3 + 32), *(a3 + 40));
    static UnitPoint.bottom.getter();
    static UnitPoint.top.getter();
    Gradient.init(stops:)();
    result = LinearGradient.init(gradient:startPoint:endPoint:)();
    *a4 = v9;
    *(a4 + 8) = v10;
    *(a4 + 24) = v11;
    *(a4 + 40) = 1053609165;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA6HStackVyAA9TupleViewVyACyAoA12_FrameLayoutVGSg_AA7ForEachVySnySiGSiAGyAGyAYyAZSiACyAiKyAA013_OpacityShapeI0VyAA14LinearGradientVGGGGAVGAGyA5_AOGGGtGGGGAUGAA13_OffsetEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA6HStackVyAA9TupleViewVyACyAoA12_FrameLayoutVGSg_AA7ForEachVySnySiGSiAGyAGyAYyAZSiACyAiKyAA013_OpacityShapeI0VyAA14LinearGradientVGGGGAVGAGyA5_AOGGGtGGGGAUGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA6HStackVyAA9TupleViewVyACyAoA12_FrameLayoutVGSg_AA7ForEachVySnySiGSiAGyAGyAYyAZSiACyAiKyAA013_OpacityShapeI0VyAA14LinearGradientVGGGGAVGAGyA5_AOGGGtGGGGAUGMR, lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>> and conformance <A> Group<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA6HStackVyAA9TupleViewVyAGyAoA12_FrameLayoutVGSg_AA7ForEachVySnySiGSiAEyAEyAYyAZSiAGyAiKyAA013_OpacityShapeI0VyAA14LinearGradientVGGGGAVGAEyA5_AOGGGtGGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA6HStackVyAA9TupleViewVyAEyAmA12_FrameLayoutVGSg_AA7ForEachVySnySiGSiACyACyAWyAXSiAEyAgIyAA013_OpacityShapeH0VyAA14LinearGradientVGGGGATGACyA3_AMGGGtGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_0(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGSg_AA7ForEachVySnySiGSiAA012_ConditionalG0VyAXyAUyAVSiAGyAiKyAA013_OpacityShapeJ0VyAA14LinearGradientVGGGGARGAXyA3_AOGGGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA7ForEachVySnySiGSiAA08ModifiedD0VyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeJ0VyAA14LinearGradientVGGGGAHyAHyAjLyAA5ColorVGGAA12_FrameLayoutVGGACyAsXGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA7ForEachVySnySiGSiAA08ModifiedD0VyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeJ0VyAA14LinearGradientVGGGGAHyAHyAjLyAA5ColorVGGAA12_FrameLayoutVGGMd);
    lazy protocol witness table accessor for type ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>> and conformance <> ForEach<A, B, C>();
    lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySnySiGSiAA15ModifiedContentVyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeI0VyAA14LinearGradientVGGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeG0VyAA14LinearGradientVGGGMd);
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_0(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA013_OpacityShapeD0VyAA14LinearGradientVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA9RectangleVAA24_ForegroundStyleModifierVyAA013_OpacityShapeH0VyAA14LinearGradientVGGGAEyAgIyAA5ColorVGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of TrainingLoadViewModel.ChartPoint(uint64_t a1, uint64_t a2)
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  (*(*(View - 8) + 16))(a2, a1, View);
  return a2;
}

void *specialized static TrainingLoadGradientView.fillerPoints(from:to:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v88 = *(View - 1);
  MEMORY[0x28223BE20](View);
  v8 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Color.RGBColorSpace();
  v89 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Band = type metadata accessor for TrainingLoadBand();
  v84 = *(Band - 8);
  MEMORY[0x28223BE20](Band);
  v85 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v86 = v62 - v15;
  v16 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v16);
  v87 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v62 - v20;
  if (a3 < 1)
  {
    return 0;
  }

  v22 = View[6];
  v23 = (a1 + v22);
  if (*(a1 + v22 + 8))
  {
    return 0;
  }

  v24 = a2 + v22;
  if (*(v24 + 8))
  {
    return 0;
  }

  v25 = View[8];
  v26 = (a1 + v25);
  if (*(a1 + v25 + 8))
  {
    return 0;
  }

  v27 = a2 + v25;
  if (*(v27 + 8))
  {
    return 0;
  }

  v81 = Band;
  v75 = v11;
  v76 = v9;
  v30 = *v23;
  v31 = *v24;
  v32 = *v26;
  v33 = *v27;
  v34 = v19;
  Date.timeIntervalSince(_:)();
  v36 = v35;
  v37 = v31 - v30;
  v38 = v33 - v32;
  v80 = *MEMORY[0x277D0FE98];
  v72 = *MEMORY[0x277D0FE88];
  v68 = *MEMORY[0x277D0FE78];
  v65 = *MEMORY[0x277D0FE80];
  v63 = *MEMORY[0x277D0FE90];
  v74 = *MEMORY[0x277CE0EE0];
  v28 = MEMORY[0x277D84F90];
  v78 = (v84 + 88);
  v79 = (v84 + 16);
  v77 = (v84 + 8);
  v73 = (v89 + 13);
  v89 = (v34 + 8);
  v82 = -a3;
  v83 = (v34 + 16);
  v39 = 1;
  v71 = 0x3FDF9F9F9F9F9FA0;
  v70 = 0x3FDA9A9A9A9A9A9BLL;
  v69 = 0x3FEAFAFAFAFAFAFBLL;
  v67 = 0x3FE0505050505050;
  v66 = 0x3FE0D0D0D0D0D0D1;
  v64 = 0x3FE5D5D5D5D5D5D6;
  v62[3] = 0x3FE7575757575757;
  v62[2] = 0x3FDC5C5C5C5C5C5CLL;
  v62[1] = 0x3FDB1B1B1B1B1B1BLL;
  v62[0] = 0x3FECBCBCBCBCBCBDLL;
  v84 = a1;
  do
  {
    Date.addingTimeInterval(_:)();
    Date.timeIntervalSince(_:)();
    v41 = v30 + v37 * v40 / v36;
    Date.timeIntervalSince(_:)();
    v43 = v32 + v38 * v42 / v36;
    if (v43 <= 0.0)
    {
      v50 = static Color.gray.getter();
    }

    else
    {
      v44 = v86;
      TrainingLoadBand.init(value:baseline:)();
      v45 = v85;
      v46 = v81;
      (*v79)(v85, v44, v81);
      v47 = (*v78)(v45, v46);
      if (v47 == v80)
      {
        (*v73)(v75, v74, v76);
        v48 = Color.init(_:red:green:blue:opacity:)();
        v49 = v44;
        v50 = v48;
        (*v77)(v49, v46);
      }

      else if (v47 == v72 || v47 == v68 || v47 == v65)
      {
        (*v73)(v75, v74, v76);
        v51 = Color.init(_:red:green:blue:opacity:)();
        v52 = v44;
        v50 = v51;
        (*v77)(v52, v81);
      }

      else if (v47 == v63)
      {
        (*v73)(v75, v74, v76);
        v50 = Color.init(_:red:green:blue:opacity:)();
        (*v77)(v86, v81);
      }

      else
      {
        v50 = static Color.clear.getter();
        v60 = *v77;
        v61 = v81;
        (*v77)(v86, v81);
        v60(v85, v61);
      }
    }

    v53 = *v83;
    v54 = v87;
    (*v83)(v87, v21, v16);
    v53(v8, v54, v16);

    DayIndex.init(integerLiteral:)();
    v55 = *v89;
    (*v89)(v54, v16);
    v56 = &v8[View[6]];
    v57 = &v8[View[8]];
    *v56 = v41;
    v56[8] = 0;
    *&v8[View[7]] = v50;
    *v57 = v43;
    v57[8] = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
    }

    v59 = v28[2];
    v58 = v28[3];
    if (v59 >= v58 >> 1)
    {
      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v59 + 1, 1, v28);
    }

    v55(v21, v16);
    v28[2] = v59 + 1;
    outlined init with take of TrainingLoadViewModel.ChartPoint(v8, v28 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v59);
    ++v39;
  }

  while (v82 + v39 != 1);
  return v28;
}

uint64_t outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>>, _FrameLayout>, _OffsetEffect>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of TrainingLoadViewModel.ChartPoint(uint64_t a1)
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  (*(*(View - 8) + 8))(a1, View);
  return a1;
}

char *specialized static TrainingLoadGradientView.colorStops(for:maxYInChart:minYInChart:)(uint64_t a1, double a2, double a3)
{
  v47 = type metadata accessor for Color.RGBColorSpace();
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Band = type metadata accessor for TrainingLoadBand();
  v8 = *(Band - 8);
  MEMORY[0x28223BE20](Band);
  v54 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v36 - v11;
  v13 = (a1 + *(type metadata accessor for TrainingLoadViewModel.ChartPoint(0) + 32));
  v53 = *v13;
  v52 = *(v13 + 8);
  v14 = static TrainingLoadBand.allCases.getter();
  v15 = *(v14 + 16);
  if (v15)
  {
    v17 = *(v8 + 16);
    v16 = v8 + 16;
    v55 = v17;
    v18 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v44 = v14;
    v19 = v14 + v18;
    v20 = *(v16 + 56);
    v49 = (v16 + 72);
    v50 = v20;
    v48 = *MEMORY[0x277D0FE98];
    v43 = *MEMORY[0x277D0FE88];
    v42 = *MEMORY[0x277D0FE78];
    v39 = *MEMORY[0x277D0FE80];
    v37 = *MEMORY[0x277D0FE90];
    v21 = (v16 - 8);
    v45 = *MEMORY[0x277CE0EE0];
    v22 = (v5 + 104);
    v23 = MEMORY[0x277D84F90];
    v41 = 0x3FE0505050505050;
    v40 = 0x3FE0D0D0D0D0D0D1;
    v38 = 0x3FE5D5D5D5D5D5D6;
    v36[4] = 0x3FE7575757575757;
    v36[3] = 0x3FDC5C5C5C5C5C5CLL;
    v36[2] = 0x3FDB1B1B1B1B1B1BLL;
    v36[1] = 0x3FECBCBCBCBCBCBDLL;
    v51 = v16;
    do
    {
      v55(v12, v19, Band);
      TrainingLoadBand.valueRangeForBand(baseline:)();
      v25 = v24;
      v26 = TrainingLoadBand.valueRangeForBand(baseline:)();
      if (MEMORY[0x20F307110](v26) || v25 <= a3)
      {
        MEMORY[0x20F307110]();
      }

      v27 = v54;
      v55(v54, v12, Band);
      v28 = (*v49)(v27, Band);
      if (v28 == v48 || v28 == v43 || v28 == v42 || v28 == v39 || v28 == v37)
      {
        (*v22)(v46, v45, v47);
        Color.init(_:red:green:blue:opacity:)();
      }

      else
      {
        static Color.clear.getter();
        (*v21)(v54, Band);
      }

      v29 = Gradient.Stop.init(color:location:)();
      v31 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
      }

      v33 = *(v23 + 2);
      v32 = *(v23 + 3);
      if (v33 >= v32 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v23);
      }

      (*v21)(v12, Band);
      *(v23 + 2) = v33 + 1;
      v34 = &v23[16 * v33];
      *(v34 + 4) = v29;
      *(v34 + 5) = v31;
      v19 += v50;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v23;
}

uint64_t outlined init with take of TrainingLoadViewModel.ChartPoint(uint64_t a1, uint64_t a2)
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  (*(*(View - 8) + 32))(a2, a1, View);
  return a2;
}

uint64_t getEnumTagSinglePayload for MirrorStackedMetricsView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MirrorStackedMetricsView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id closure #1 in closure #1 in MirrorStackedMetricsView.body.getter@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v34 = a4;
  v35 = type metadata accessor for AccessibilityChildBehavior();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore17MetricPlatterTypeOSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  MEMORY[0x28223BE20](v32);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd);
  MEMORY[0x28223BE20](v31);
  v18 = &v30 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAF0fI14StyleLayoutKeyVGGGMd);
  MEMORY[0x28223BE20](v19);
  v21 = &v30 - v20;
  v22 = type metadata accessor for MetricPlatterType();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  static MetricViewBuilder.view(metricType:metricPlatterType:formattingManager:activityType:metricsPublisher:)(a1, v11, *(a3 + 16), *(a3 + 32), *(a3 + 8), v13);
  outlined destroy of MetricPlatterType?(v11, &_s11WorkoutCore17MetricPlatterTypeOSgMd);
  result = MEMORY[0x20F30D420](a1);
  if (result)
  {
    v24 = result;
    v26 = a1 == 7 || a1 == 2;
    if ((a2 & v26) != 0)
    {
      v27 = 6;
    }

    else
    {
      v27 = 2;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
    View.accessibilityIdentifier(_:)();

    outlined destroy of MetricPlatterType?(v13, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
    KeyPath = swift_getKeyPath();
    outlined init with take of ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMet(v16, v18, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGMd);
    v29 = &v18[*(v31 + 36)];
    *v29 = KeyPath;
    v29[8] = v27;
    outlined init with take of ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMet(v18, v21, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd);
    v21[*(v19 + 36)] = v27;
    static AccessibilityChildBehavior.combine.getter();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>();
    View.accessibilityElement(children:)();
    (*(v33 + 8))(v8, v35);
    return outlined destroy of MetricPlatterType?(v21, &_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAF0fI14StyleLayoutKeyVGGGMd);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance MirrorStackedMetricsView@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 2);
  v3 = *(v1 + 3);
  v5 = *(v1 + 4);
  v18 = *v1;
  MetricsPublisher.workoutStatePublisher.getter();
  v6 = WorkoutStatePublisher.mirroringToCompanion.getter();

  v7 = specialized MirrorMetricsViewStackedLayout.init(verticallyCenter:)();
  *a1 = v8 & 1;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0013MirrorMetricsd7StackedF0VGAA7ForEachVySaySi6offset_So19HKWorkoutMetricTypeV7elementtGSiAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAZyAZyAA012_ConditionalZ0VyA0_yA0_yA0_yA0_yA0_yAH06EnergypD0VA2_GA0_yAH09HeartRatepD0VAH018HeartRateAggregatepD0VGGA0_yA0_yA7_AH04ZonepD0VGA0_yAH010TimeInZonepD0VA11_GGGA0_yA0_yA0_yA14_AH04PacepD0VGA0_yA19_A19_GGA0_yA21_A0_yAH08DistancepD0VAH04LapspD0VGGGGA0_yA0_yA0_yA0_yA0_yA0_yAH07CadencepD0VAA05EmptyD0VGA32_GA32_GA0_yAH015ElevationChangepD0VAH016CurrentElevationpD0VGGA0_yA0_yAH05PowerpD0VA45_GA0_yA45_AH014FlightsClimbedpD0VGGGA0_yA0_yA0_yAH015SegmentDurationpD0VAH014DistanceDetailpD0VGA0_yA19_A2_GGA0_yA0_yA2_A45_GA0_yA45_AZyAZyAH0h4TimeD0VAH0P6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGA0_yA0_yA0_yA0_yA55_A19_GA0_yAH012StrideLengthpD0VA78_GGA0_yA0_yAH019VerticalOscillationpD0VA82_GA0_yAH017GroundContactTimepD0VA85_GGGA0_yA0_yA39_AH016DownhillRunCountpD0VGA0_yA34_AA6HStackVyAA05TupleD0VyAZyAA4TextVAH0P9ValueFontVG_AZyAZyA97_AH0P19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA0V18AttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAA21_TraitWritingModifierVyAA01_F5TraitVyAH0hd5StyleF3KeyVGGG_Qo_GGMd);
  v17[2] = specialized _copySequenceToContiguousArray<A>(_:)(v3);
  swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = (v6 & 1) == 0;
  *(v10 + 24) = *v1;
  *(v10 + 40) = v4;
  *(v10 + 48) = v3;
  *(v10 + 56) = v5;
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in closure #1 in MirrorStackedMetricsView.body.getter;
  *(v11 + 24) = v10;
  outlined init with copy of ObservedObject<MetricsPublisher>(&v18, v17);
  v12 = v4;

  v13 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAA012_ConditionalK0VyAKyAKyAKyAKyAKy07WorkoutB0012EnergyMetricC0VANGAKyAL09HeartRateoC0VAL0pq9AggregateoC0VGGAKyAKyAsL04ZoneoC0VGAKyAL06TimeInsoC0VAWGGGAKyAKyAKyAzL04PaceoC0VGAKyA3_A3_GGAKyA5_AKyAL08DistanceoC0VAL04LapsoC0VGGGGAKyAKyAKyAKyAKyAKyAL07CadenceoC0VAA05EmptyC0VGA16_GA16_GAKyAL015ElevationChangeoC0VAL016CurrentElevationoC0VGGAKyAKyAL05PoweroC0VA29_GAKyA29_AL014FlightsClimbedoC0VGGGAKyAKyAKyAL015SegmentDurationoC0VAL0w6DetailoC0VGAKyA3_ANGGAKyAKyANA29_GAKyA29_AIyAIyAL0mtC0VAL0O6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAKyAKyAKyAKyA39_A3_GAKyAL012StrideLengthoC0VA62_GGAKyAKyAL019VerticalOscillationoC0VA66_GAKyAL013GroundContacttoC0VA69_GGGAKyAKyA23_AL016DownhillRunCountoC0VGAKyA18_AA6HStackVyAA05TupleC0VyAIyAA4TextVAL0O9ValueFontVG_AIyAIyA81_AL0O19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA0G18AttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAL0mC5StyleOGGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAL0mC14StyleLayoutKeyVGGG_Qo_Md);
  _sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGSayxGSksWlTm_1(&lazy protocol witness table cache variable for type [(offset: Int, element: HKWorkoutMetricType)] and conformance [A], &_sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGMd);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAF0fI14StyleLayoutKeyVGGGMd);
  v15 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>();
  v17[0] = v14;
  v17[1] = v15;
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

void MirrorMetricsViewStackedLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) != 0 && (a4 & 1) == 0 && (a2 & 1) == 0)
  {
    v7 = specialized MirrorMetricsViewStackedLayout.determineHalfWidthPairs(subviews:)(a5);
    type metadata accessor for LayoutSubviews();
    _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_0(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v8 = dispatch thunk of Collection.distance(from:to:)();
    v9 = *(v7 + 16);

    if (__OFSUB__(v8, v9))
    {
      __break(1u);
    }

    else
    {
      MetricPlatterConstants.init()(v10);
      MetricPlatterConstants.init()(v10);
    }
  }
}

uint64_t MirrorMetricsViewStackedLayout.placeSubviews(in:proposal:subviews:cache:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9)
{
  v38 = a4;
  v39 = a3;
  v37 = type metadata accessor for LayoutSubview();
  v14 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LayoutSubviews();
  _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_0(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of Collection.distance(from:to:)();
  if (result > 8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = specialized MirrorMetricsViewStackedLayout.determineHalfWidthPairs(subviews:)(a9);
  if (a6)
  {
    v42.origin.x = a1;
    v42.origin.y = a2;
    v42.size.height = v38;
    v42.size.width = v39;
    CGRectGetWidth(v42);
  }

  if (a8)
  {
    v19 = v14;
    v43.origin.x = a1;
    v43.origin.y = a2;
    v43.size.height = v38;
    v43.size.width = v39;
    CGRectGetHeight(v43);
  }

  else
  {
    v19 = v14;
  }

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of Collection.distance(from:to:)();
  if (__OFSUB__(result, *(v18 + 16)))
  {
    goto LABEL_27;
  }

  MetricPlatterConstants.init()(v40);
  MetricPlatterConstants.init()(v40);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of Collection.distance(from:to:)();
  if ((result & 0x8000000000000000) == 0)
  {
    if (!result)
    {
    }

    v20 = 0;
    v21 = 0;
    v22 = *(v18 + 16);
    v23 = v39;
    v35 = a9;
    v36 = (v18 + 40);
    v24 = -v22;
    v25 = result;
LABEL_12:
    v26 = v21++;
    v27 = -1;
    v28 = v36;
    while (1)
    {
      if (v24 + v27 == -1)
      {
        v30 = 1;
        goto LABEL_20;
      }

      if (++v27 >= *(v18 + 16))
      {
        break;
      }

      v29 = *v28;
      if (*(v28 - 1) == v26)
      {
        v30 = 0;
LABEL_20:
        v31 = a1;
        v32 = a2;
        v33 = v38;
        CGRectGetMidX(*(&v23 - 2));
        LayoutSubviews.subscript.getter();
        MetricPlatterConstants.init()(v40);
        static UnitPoint.topLeading.getter();
        v40[0] = 0;
        v41 = 0;
        LayoutSubview.place(at:anchor:proposal:)();
        result = (*(v19 + 8))(v16, v37);
        if (v30)
        {
          if (__OFADD__(v20++, 1))
          {
            __break(1u);
          }
        }

        v23 = v39;
        if (v21 == v25)
        {
        }

        goto LABEL_12;
      }

      v28 += 2;
      if (v29 == v26)
      {
        v30 = 1;
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
  return result;
}