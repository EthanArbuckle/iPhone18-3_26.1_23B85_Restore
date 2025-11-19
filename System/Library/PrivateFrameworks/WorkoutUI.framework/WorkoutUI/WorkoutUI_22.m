uint64_t WorkoutVoiceOnboardingPickerViewModel.electVoice()()
{
  v1[12] = v0;
  v1[13] = *v0;
  v2 = type metadata accessor for Logger();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v3 = type metadata accessor for AudioSynthesisVoice();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v4 = type metadata accessor for AudioSynthesisVoiceAsset();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[30] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[31] = v6;
  v1[32] = v5;

  return MEMORY[0x2822009F8](WorkoutVoiceOnboardingPickerViewModel.electVoice(), v6, v5);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0 + 24) == 1)
  {

    v1 = *(v0 + 8);

    return v1();
  }

  v3 = *(v0 + 16);
  *(v0 + 264) = *(*(v0 + 96) + OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel_voiceAssetsObserver);
  result = dispatch thunk of VoiceAssetsObserver.assets.getter();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= *(result + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v4 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v6 + 16);
  v6 += 16;
  v8 = result + ((*(v6 + 64) + 32) & ~*(v6 + 64)) + *(v6 + 56) * v3;
  *(v0 + 272) = v7;
  *(v0 + 280) = v6 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v4, v8, v5);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v3;
  *(v0 + 40) = 0;

  static Published.subscript.setter();
  AudioSynthesisVoiceAsset.voice.getter();
  v11 = (*MEMORY[0x277D7E328] + MEMORY[0x277D7E328]);
  v9 = swift_task_alloc();
  *(v0 + 288) = v9;
  *v9 = v0;
  v9[1] = WorkoutVoiceOnboardingPickerViewModel.electVoice();
  v10 = *(v0 + 184);

  return v11(v10);
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v2[37] = v0;

  v6 = *(v4 + 8);
  v2[38] = v6;
  v2[39] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[32];
  v8 = v2[31];
  if (v0)
  {
    v9 = WorkoutVoiceOnboardingPickerViewModel.electVoice();
  }

  else
  {
    v9 = WorkoutVoiceOnboardingPickerViewModel.electVoice();
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  v37 = v0;
  v1 = v0[34];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[24];
  static WOLog.app.getter();
  v1(v2, v3, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[38];
    v8 = v0[28];
    v9 = v0[25];
    v30 = v0[24];
    v10 = v0[22];
    v29 = v0[19];
    v32 = v0[15];
    v33 = v0[14];
    v34 = v0[18];
    v11 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = v31;
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v36);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    AudioSynthesisVoiceAsset.voice.getter();
    v15 = AudioSynthesisVoice.name.getter();
    v17 = v16;
    v7(v10, v29);
    v18 = *(v9 + 8);
    v18(v8, v30);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v36);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_20C66F000, v5, v6, "%s elected voice asset %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v31, -1, -1);
    MEMORY[0x20F30E080](v11, -1, -1);

    v20 = *(v32 + 8);
    v20(v34, v33);
  }

  else
  {
    v21 = v0[28];
    v22 = v0[24];
    v23 = v0[25];
    v24 = v0[18];
    v25 = v0[14];
    v26 = v0[15];

    v18 = *(v23 + 8);
    v18(v21, v22);
    v20 = *(v26 + 8);
    v20(v24, v25);
  }

  v0[40] = v20;
  v0[41] = v18;
  v35 = (*MEMORY[0x277D7E338] + MEMORY[0x277D7E338]);
  v27 = swift_task_alloc();
  v0[42] = v27;
  *v27 = v0;
  v27[1] = WorkoutVoiceOnboardingPickerViewModel.electVoice();

  return v35();
}

{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return MEMORY[0x2822009F8](WorkoutVoiceOnboardingPickerViewModel.electVoice(), v3, v2);
}

{
  *(v0 + 344) = *(v0 + 320);
  AudioSynthesisVoiceAsset.voice.getter();
  v1 = swift_task_alloc();
  *(v0 + 360) = v1;
  *v1 = v0;
  v1[1] = WorkoutVoiceOnboardingPickerViewModel.electVoice();
  v2 = *(v0 + 168);

  return MEMORY[0x282160A88](v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v2[46] = v0;

  v2[47] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v4, v6);
  v7 = v2[32];
  v8 = v2[31];
  if (v0)
  {
    v9 = WorkoutVoiceOnboardingPickerViewModel.electVoice();
  }

  else
  {
    v9 = WorkoutVoiceOnboardingPickerViewModel.electVoice();
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  v1 = v0[44];
  v2 = v0[29];
  v3 = v0[24];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

{
  v51 = v0;
  v1 = v0;
  v2 = *(v0 + 296);
  v47 = *(v0 + 272);
  v3 = *(v0 + 216);
  v43 = *(v0 + 192);
  v45 = *(v0 + 232);
  v4 = dispatch thunk of VoiceAssetsObserver.userSelectedAssetIndex.getter();
  v6 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 48) = v4;
  *(v0 + 56) = v6 & 1;

  static Published.subscript.setter();
  static WOLog.app.getter();
  v47(v3, v45, v43);

  v7 = v2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v39 = *(v0 + 304);
    v10 = *(v0 + 216);
    v11 = *(v0 + 200);
    v40 = *(v0 + 192);
    v12 = *(v0 + 176);
    v13 = *(v0 + 152);
    v46 = *(v0 + 120);
    v48 = *(v0 + 112);
    v49 = *(v0 + 136);
    v42 = *(v0 + 296);
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = v44;
    *v14 = 136315906;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v50);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    AudioSynthesisVoiceAsset.voice.getter();
    v18 = AudioSynthesisVoice.name.getter();
    v20 = v19;
    v39(v12, v13);
    v21 = *(v11 + 8);
    v21(v10, v40);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v50);

    *(v14 + 14) = v22;
    *(v14 + 22) = 2112;
    v23 = v42;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v24;
    *v41 = v24;
    *(v14 + 32) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v1 + 80) = *(v1 + 64);
    *(v1 + 88) = *(v1 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd);
    v25 = Optional.description.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v50);

    *(v14 + 34) = v27;
    _os_log_impl(&dword_20C66F000, v8, v9, "%s error electing voice: %s, error: %@. Reverting back to last successful userSelectedAssetIndex %s", v14, 0x2Au);
    outlined destroy of AudioSynthesisVoiceAsset.DownloadProgress?(v41, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v41, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v44, -1, -1);
    MEMORY[0x20F30E080](v14, -1, -1);

    v28 = *(v46 + 8);
    v28(v49, v48);
  }

  else
  {
    v29 = *(v0 + 296);
    v30 = *(v0 + 216);
    v31 = *(v1 + 192);
    v32 = *(v1 + 200);
    v33 = *(v1 + 136);
    v34 = *(v1 + 112);
    v35 = *(v1 + 120);

    v21 = *(v32 + 8);
    v21(v30, v31);
    v28 = *(v35 + 8);
    v28(v33, v34);
  }

  *(v1 + 344) = v28;
  *(v1 + 352) = v21;
  AudioSynthesisVoiceAsset.voice.getter();
  v36 = swift_task_alloc();
  *(v1 + 360) = v36;
  *v36 = v1;
  v36[1] = WorkoutVoiceOnboardingPickerViewModel.electVoice();
  v37 = *(v1 + 168);

  return MEMORY[0x282160A88](v37);
}

{
  v43 = v0;
  v1 = v0[46];
  v2 = v0[34];
  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[24];

  static WOLog.app.getter();
  v2(v4, v3, v5);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v34 = v0[44];
    v38 = v0[43];
    v9 = v0[26];
    v33 = v0[38];
    v39 = v0[29];
    v40 = v0[24];
    v10 = v0[22];
    v32 = v0[19];
    v35 = v0[46];
    v36 = v0[14];
    v37 = v0[16];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v42 = v13;
    *v11 = 136315650;
    v14 = _typeName(_:qualified:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v42);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    AudioSynthesisVoiceAsset.voice.getter();
    v17 = AudioSynthesisVoice.name.getter();
    v19 = v18;
    v33(v10, v32);
    v34(v9, v40);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v42);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2112;
    v21 = v35;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v22;
    *v12 = v22;
    _os_log_impl(&dword_20C66F000, v7, v8, "%s error previewing voice: %s, error: %@.", v11, 0x20u);
    outlined destroy of AudioSynthesisVoiceAsset.DownloadProgress?(v12, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v13, -1, -1);
    MEMORY[0x20F30E080](v11, -1, -1);

    v38(v37, v36);
    v34(v39, v40);
  }

  else
  {
    v23 = v0[46];
    v25 = v0[43];
    v24 = v0[44];
    v41 = v0[29];
    v26 = v0[26];
    v27 = v0[24];
    v28 = v0[16];
    v29 = v0[14];

    v24(v26, v27);
    v25(v28, v29);
    v24(v41, v27);
  }

  v30 = v0[1];

  return v30();
}

void WorkoutVoiceOnboardingPickerViewModel.selectedVoiceIcon(_:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd);
  v51 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v50 = &v47 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyN0VATGGAU_GMd);
  MEMORY[0x28223BE20](v54);
  v56 = &v47 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyN0VATG_GMd);
  MEMORY[0x28223BE20](v52);
  v53 = (&v47 - v7);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGMd);
  MEMORY[0x28223BE20](v55);
  v9 = &v47 - v8;
  v10 = type metadata accessor for AudioSynthesisVoiceAsset.DownloadStatus();
  v58 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGSgMd);
  v62 = *(v16 - 8);
  v63 = v16;
  MEMORY[0x28223BE20](v16);
  v57 = &v47 - v17;
  v18 = type metadata accessor for AudioSynthesisVoiceAsset();
  v60 = *(v18 - 8);
  v61 = v18;
  MEMORY[0x28223BE20](v18);
  v59 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = 1;
  if ((v65 & 1) != 0 || v64 != a1)
  {
    goto LABEL_15;
  }

  v21 = dispatch thunk of VoiceAssetsObserver.assets.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*(v21 + 16) <= a1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v47 = v9;
  v48 = a2;
  v49 = v4;
  v22 = v59;
  (*(v60 + 16))(v59, v21 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * a1, v61);

  AudioSynthesisVoiceAsset.downloadStatus.getter();
  v23 = v58;
  v24 = *(v58 + 88);
  v25 = v24(v15, v10);
  v26 = *MEMORY[0x277D0A520];
  v27 = *(v23 + 8);
  v27(v15, v10);
  if (v25 != v26)
  {
    AudioSynthesisVoiceAsset.downloadStatus.getter();
    if (v24(v12, v10) == *MEMORY[0x277D0A528])
    {
      (*(v58 + 96))(v12, v10);
      outlined destroy of AudioSynthesisVoiceAsset.DownloadProgress?(v12, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMd);
      v38 = v50;
      ProgressView<>.init<>()();
      v39 = v51;
      v40 = v49;
      (*(v51 + 16))(v53, v38, v49);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
      lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
      _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_2(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd);
      v41 = v47;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>(v41, v56);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>> and conformance <> _ConditionalContent<A, B>();
      v32 = v57;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of AudioSynthesisVoiceAsset.DownloadProgress?(v41, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGMd);
      (*(v39 + 8))(v38, v40);
      v37 = 0;
      a2 = v48;
    }

    else
    {
      v27(v12, v10);
      v42 = AudioSynthesisVoiceAsset.userSelected.getter();
      a2 = v48;
      v43 = v49;
      if (v42)
      {
        v37 = 1;
        v32 = v57;
      }

      else
      {
        v44 = v50;
        ProgressView<>.init<>()();
        v45 = v51;
        (*(v51 + 16))(v56, v44, v43);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>> and conformance <> _ConditionalContent<A, B>();
        _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_2(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd);
        v32 = v57;
        _ConditionalContent<>.init(storage:)();
        (*(v45 + 8))(v44, v43);
        v37 = 0;
      }
    }

    goto LABEL_14;
  }

  v28 = Image.init(systemName:)();
  v29 = [objc_opt_self() keyColors];
  if (!v29)
  {
    goto LABEL_18;
  }

  v30 = v29;
  v31 = [v29 nonGradientTextColor];

  v32 = v57;
  if (v31)
  {
    v33 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v35 = v53;
    *v53 = v28;
    v35[1] = KeyPath;
    v35[2] = v33;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_2(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd);
    v36 = v47;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>(v36, v56);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    outlined destroy of AudioSynthesisVoiceAsset.DownloadProgress?(v36, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGMd);
    v37 = 0;
    a2 = v48;
    v22 = v59;
LABEL_14:
    (*(v60 + 8))(v22, v61);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGMd);
    (*(*(v46 - 8) + 56))(v32, v37, 1, v46);
    outlined init with take of _ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>?(v32, a2);
    v20 = 0;
LABEL_15:
    (*(v62 + 56))(a2, v20, 1, v63);
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel_inferenceClient;
  v2 = type metadata accessor for InferenceClient();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel__selectedRow;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiSgGMd);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel__indicatedRow, v4);
  return v0;
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel_inferenceClient;
  v2 = type metadata accessor for InferenceClient();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel__selectedRow;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiSgGMd);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel__indicatedRow, v4);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutVoiceOnboardingPickerViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutVoiceOnboardingPickerViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for WorkoutVoiceOnboardingPickerViewModel.indicatedRow : WorkoutVoiceOnboardingPickerViewModel@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t key path setter for WorkoutVoiceOnboardingPickerViewModel.indicatedRow : WorkoutVoiceOnboardingPickerViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_2(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with take of _ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:)(uint64_t a1)
{
  v6 = (*(*v1 + 248) + **(*v1 + 248));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:);

  return v6(a1);
}

uint64_t dispatch thunk of WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of WorkoutVoiceOnboardingPickerViewModel.electVoice()()
{
  v4 = (*(*v0 + 256) + **(*v0 + 256));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of WorkoutVoiceOnboardingPickerViewModel.electVoice();

  return v4();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>?? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>?? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>?? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGSgSgMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>?? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGSgMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGMR, lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>> and conformance <> _ConditionalContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>> and conformance <> _ConditionalContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_2(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of AudioSynthesisVoiceAsset.DownloadProgress?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RepeatRowView.init(repeatCount:referenceRepeatCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

void one-time initialization function for repeatRowTitle()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000020CB9BD00;
  v2._countAndFlagsBits = 0xD000000000000010;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  static RepeatRowView.repeatRowTitle = v4;
}

uint64_t RepeatRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v3;
  v11 = *(v1 + 32);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0F0VyAIyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAS5ScaleOGG_AKSgAKtGGAUyAA5ColorVSgGGtGGMd);
  closure #1 in RepeatRowView.body.getter(v10, a1 + *(v4 + 44));
  v5 = static Platform.current.getter();
  v6 = Platform.intervalViewingFont.getter(v5 & 1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAEyAGyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGG_AISgAItGGAOyAA5ColorVSgGGtGGAOyAA4FontVSgGGMd);
  v9 = (a1 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

uint64_t closure #1 in RepeatRowView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVSgAQtGGAKyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v28);
  v29 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v25[-v5];
  if (one-time initialization token for repeatRowTitle != -1)
  {
    swift_once();
  }

  v30 = static RepeatRowView.repeatRowTitle;
  lazy protocol witness table accessor for type String and conformance String();

  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  *&v30 = static Color.white.getter();
  v12 = Text.foregroundStyle<A>(_:)();
  v14 = v13;
  v26 = v15;
  v17 = v16;
  outlined consume of Text.Storage(v7, v9, v11 & 1);

  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGG_AA4TextVSgAUtGGMd);
  closure #1 in closure #1 in RepeatRowView.body.getter(v27, &v6[*(v18 + 44)]);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
  v19 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v21 = v29;
  v22 = &v6[*(v28 + 36)];
  *v22 = KeyPath;
  v22[1] = v19;
  outlined init with copy of ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>(v6, v21, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVSgAQtGGAKyAA5ColorVSgGGMd);
  *a2 = v12;
  *(a2 + 8) = v14;
  LOBYTE(v9) = v26 & 1;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v17;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA6SpacerVAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGG_ACSgACtGGAOyAA5ColorVSgGGtMd);
  outlined init with copy of ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>(v21, a2 + *(v23 + 64), &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVSgAQtGGAKyAA5ColorVSgGGMd);
  outlined copy of Text.Storage(v12, v14, v9);

  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>(v6, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVSgAQtGGAKyAA5ColorVSgGGMd);
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>(v21, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVSgAQtGGAKyAA5ColorVSgGGMd);
  outlined consume of Text.Storage(v12, v14, v9);
}

uint64_t closure #1 in closure #1 in RepeatRowView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v91 = &v84[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v15 = &v84[-v8];
  v9 = Image.init(systemName:)();
  v10 = (v15 + *(v5 + 44));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v12 = *MEMORY[0x277CE1058];
  v13 = type metadata accessor for Image.Scale();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  v92 = v15;
  *v15 = v9;
  v14 = *(a1 + 3);
  LODWORD(v15) = *(a1 + 32);
  countAndFlagsBits = v14;
  if ((v15 & 1) != 0 || (v98 = *a1, v99 = *(a1 + 2), v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySiGMd), MEMORY[0x20F30B100](&v96, v16), v14 == v96))
  {
    v89 = 0;
    v88 = 0;
    v87 = 0;
    v17 = 0;
  }

  else
  {
    v85 = v15;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
    *&v98 = v14;
    v19 = MEMORY[0x277D83B88];
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v20);
    LocalizedStringKey.init(stringInterpolation:)();
    v21 = Text.init(_:tableName:bundle:comment:)();
    v23 = v22;
    v25 = v24;
    v89 = Text.strikethrough(_:color:)();
    v88 = v26;
    v28 = v27;
    outlined consume of Text.Storage(v21, v23, v25 & 1);

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v29 = WorkoutUIBundle.super.isa;
    v100._object = 0xE000000000000000;
    v30.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v30.value._object = 0xEB00000000656C62;
    v31._countAndFlagsBits = 0xD000000000000013;
    v31._object = 0x800000020CB9BCE0;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v100._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v30, v29, v32, v100);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_20CB5DA70;
    v34 = MEMORY[0x277D83C10];
    *(v33 + 56) = v19;
    *(v33 + 64) = v34;
    *(v33 + 32) = v14;
    v35 = String.init(format:_:)();
    v15 = v36;

    *&v98 = v35;
    *(&v98 + 1) = v15;
    lazy protocol witness table accessor for type String and conformance String();
    LOBYTE(v35) = v28;
    v37 = v89;
    v38 = v88;
    v39 = Text.accessibilityLabel<A>(_:)();
    v41 = v40;
    LODWORD(v87) = v42;
    v44 = v43;
    outlined consume of Text.Storage(v37, v38, v35 & 1);

    v89 = v39;
    v88 = v41;
    v87 &= 1u;
    outlined copy of Text.Storage(v39, v41, v87);
    v17 = v44;

    LOBYTE(v15) = v85;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v45);
  v98 = *a1;
  v99 = *(a1 + 2);
  v96 = *a1;
  v97 = *(a1 + 2);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySiGMd);
  MEMORY[0x20F30B100](&v94);
  v47 = MEMORY[0x277D83B88];
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v48);
  LocalizedStringKey.init(stringInterpolation:)();
  v49 = Text.init(_:tableName:bundle:comment:)();
  v51 = v50;
  v53 = v52;
  if ((v15 & 1) != 0 || (v96 = v98, v97 = v99, MEMORY[0x20F30B100](&v94, v46), countAndFlagsBits == v94))
  {
    v96 = v98;
    v97 = v99;
    MEMORY[0x20F30B100](&v94, v46);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
  }

  else
  {
    v57 = v47;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v58 = WorkoutUIBundle.super.isa;
    v101._object = 0xE000000000000000;
    v59.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v59.value._object = 0xEB00000000656C62;
    v60._object = 0x800000020CB9BCC0;
    v60._countAndFlagsBits = 0xD000000000000012;
    v61._countAndFlagsBits = 0;
    v61._object = 0xE000000000000000;
    v101._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v60, v59, v58, v61, v101)._countAndFlagsBits;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_20CB5DA70;
    v94 = v98;
    v95 = v99;
    MEMORY[0x20F30B100](&v93, v46);
    v63 = v93;
    v64 = MEMORY[0x277D83C10];
    *(v62 + 56) = v57;
    *(v62 + 64) = v64;
    *(v62 + 32) = v63;
    v65 = String.init(format:_:)();
    v56 = v66;

    v54 = v65;
  }

  *&v94 = v54;
  *(&v94 + 1) = v56;
  lazy protocol witness table accessor for type String and conformance String();
  v67 = Text.accessibilityLabel<A>(_:)();
  v69 = v68;
  v71 = v70;
  countAndFlagsBits = v72;
  outlined consume of Text.Storage(v49, v51, v53 & 1);

  v73 = v91;
  outlined init with copy of ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>(v92, v91, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  v74 = v90;
  outlined init with copy of ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>(v73, v90, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGG_AA4TextVSgAMtMd);
  v76 = (v74 + *(v75 + 48));
  v77 = v89;
  v78 = v88;
  *v76 = v89;
  v76[1] = v78;
  v79 = v87;
  v76[2] = v87;
  v76[3] = v17;
  v80 = v74 + *(v75 + 64);
  outlined copy of Text?(v77, v78, v79, v17);
  LOBYTE(v74) = v71 & 1;
  v81 = v67;
  outlined copy of Text.Storage(v67, v69, v74);
  v82 = countAndFlagsBits;

  outlined consume of Text?(v77, v78, v79, v17);
  *v80 = v81;
  *(v80 + 8) = v69;
  *(v80 + 16) = v74;
  *(v80 + 24) = v82;
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>(v92, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  outlined consume of Text.Storage(v81, v69, v74);

  outlined consume of Text?(v77, v78, v79, v17);
  return outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>(v73, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
}

uint64_t protocol witness for View.body.getter in conformance RepeatRowView@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v3;
  v11 = *(v1 + 32);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0F0VyAIyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAS5ScaleOGG_AKSgAKtGGAUyAA5ColorVSgGGtGGMd);
  closure #1 in RepeatRowView.body.getter(v10, a1 + *(v4 + 44));
  v5 = static Platform.current.getter();
  v6 = Platform.intervalViewingFont.getter(v5 & 1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAEyAGyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGG_AISgAItGGAOyAA5ColorVSgGGtGGAOyAA4FontVSgGGMd);
  v9 = (a1 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for RepeatRowView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for RepeatRowView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Text, Spacer, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Text, Spacer, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Text, Spacer, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVACyAEyAGyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGG_AISgAItGGAOyAA5ColorVSgGGtGGAOyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(Text, Spacer, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, Spacer, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyACyAEyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGG_AGSgAGtGGAOyAA5ColorVSgGGtGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(Text, Spacer, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Text, Spacer, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(Text, Spacer, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text?, Text)>>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AlignedLeadingAccessoryContentView.init(alignment:leadingAccessory:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  a2();
  v7 = type metadata accessor for AlignedLeadingAccessoryContentView();
  result = a3(v7, v8, v9, v10);
  *(a4 + *(v7 + 56)) = 0x4022000000000000;
  *(a4 + *(v7 + 60)) = a1;
  return result;
}

uint64_t AlignedLeadingAccessoryContentView.init(spacing:alignment:leadingAccessory:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  a2();
  v9 = type metadata accessor for AlignedLeadingAccessoryContentView();
  result = a3(v9, v10, v11, v12);
  *(a4 + *(v9 + 56)) = a5;
  *(a4 + *(v9 + 60)) = a1;
  return result;
}

uint64_t AlignedLeadingAccessoryContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v19 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  v18 = *(a1 + 24);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v4 = type metadata accessor for HStack();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v22 = v19;
  v23 = v18;
  v24 = *(a1 + 32);
  v25 = v2;
  HStack.init(alignment:spacing:content:)();
  static Alignment.leading.getter();
  WitnessTable = swift_getWitnessTable();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v20 + 8))(v6, v4);
  v26 = WitnessTable;
  v27 = MEMORY[0x277CDFC60];
  v14 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v7, v14);
  v15 = *(v8 + 8);
  v15(v10, v7);
  static ViewBuilder.buildBlock<A>(_:)(v13, v7, v14);
  return (v15)(v13, v7);
}

uint64_t closure #1 in AlignedLeadingAccessoryContentView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a6;
  v10 = *(a3 - 1);
  v36 = a5;
  v37 = v10;
  MEMORY[0x28223BE20](a1);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v34 = &v31 - v13;
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  static Alignment.center.getter();
  View.frame(width:height:alignment:)();
  v46 = a4;
  v47 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v31 = v20;
  v32 = WitnessTable;
  static ViewBuilder.buildExpression<A>(_:)(v17, v14, WitnessTable);
  v33 = *(v15 + 8);
  v33(v17, v14);
  v42 = a2;
  v43 = a3;
  v22 = v36;
  v44 = a4;
  v45 = v36;
  v23 = a1 + *(type metadata accessor for AlignedLeadingAccessoryContentView() + 52);
  v24 = v34;
  v25 = v22;
  static ViewBuilder.buildExpression<A>(_:)(v23, a3, v22);
  (*(v15 + 16))(v17, v20, v14);
  v42 = v17;
  v26 = v37;
  v27 = v35;
  (*(v37 + 16))(v35, v24, a3);
  v43 = v27;
  v41[0] = v14;
  v41[1] = a3;
  v39 = v32;
  v40 = v25;
  static ViewBuilder.buildBlock<each A>(_:)(&v42, 2uLL, v41);
  v28 = *(v26 + 8);
  v28(v24, a3);
  v29 = v33;
  v33(v31, v14);
  v28(v27, a3);
  return v29(v17, v14);
}

uint64_t type metadata completion function for AlignedLeadingAccessoryContentView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlignedLeadingAccessoryContentView(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  if (v10 >= a2)
  {
    goto LABEL_27;
  }

  v12 = ((((*(*(v6 - 8) + 64) + (v11 & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v10;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

LABEL_26:
    if (v10)
    {
LABEL_27:
      if (v5 >= v8)
      {
        return (*(v4 + 48))();
      }

      else
      {
        return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
      }
    }

    return 0;
  }

  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = *(a1 + v12);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_20:
  v19 = v18 - 1;
  if (v14)
  {
    v19 = 0;
    v20 = *a1;
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v19) + 1;
}

unsigned int *storeEnumTagSinglePayload for AlignedLeadingAccessoryContentView(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v17 = 0;
    v18 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v12;
    if (((((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(result + v13) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v13) = 0;
      }

      else if (v17)
      {
        *(result + v13) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 >= v9)
      {
        v24 = *(v5 + 56);

        return v24();
      }

      else
      {
        v22 = *(v8 + 56);
        v23 = (result + v10 + v11) & ~v11;

        return v22(v23);
      }
    }
  }

  if (((((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v20 = ~v12 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(result + v13) = v19;
    }

    else
    {
      *(result + v13) = v19;
    }
  }

  else if (v17)
  {
    *(result + v13) = v19;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlignedLeadingAccessoryConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AlignedLeadingAccessoryConstants(_WORD *result, int a2, int a3)
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

WorkoutUI::WorkoutAlertNotification_optional __swiftcall WorkoutAlertNotification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t WorkoutAlertNotification.rawValue.getter()
{
  result = 0xD00000000000002CLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000030;
      break;
    case 2:
      result = 0xD00000000000002DLL;
      break;
    case 3:
    case 0xB:
      result = 0xD000000000000029;
      break;
    case 4:
      result = 0xD00000000000002BLL;
      break;
    case 5:
      result = 0xD00000000000002ELL;
      break;
    case 6:
    case 9:
      result = 0xD00000000000002ALL;
      break;
    case 7:
      result = 0xD00000000000002CLL;
      break;
    case 8:
    case 0x11:
      result = 0xD000000000000023;
      break;
    case 0xA:
      result = 0xD000000000000028;
      break;
    case 0xC:
      result = 0xD000000000000024;
      break;
    case 0xD:
      result = 0xD000000000000022;
      break;
    case 0xE:
      result = 0xD000000000000025;
      break;
    case 0xF:
    case 0x10:
      result = 0xD000000000000027;
      break;
    case 0x12:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutAlertNotification()
{
  v0 = WorkoutAlertNotification.rawValue.getter();
  v2 = v1;
  if (v0 == WorkoutAlertNotification.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t lazy protocol witness table accessor for type WorkoutAlertNotification and conformance WorkoutAlertNotification()
{
  result = lazy protocol witness table cache variable for type WorkoutAlertNotification and conformance WorkoutAlertNotification;
  if (!lazy protocol witness table cache variable for type WorkoutAlertNotification and conformance WorkoutAlertNotification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAlertNotification and conformance WorkoutAlertNotification);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutAlertNotification()
{
  Hasher.init(_seed:)();
  WorkoutAlertNotification.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutAlertNotification()
{
  WorkoutAlertNotification.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutAlertNotification()
{
  Hasher.init(_seed:)();
  WorkoutAlertNotification.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutAlertNotification@<X0>(unint64_t *a1@<X8>)
{
  result = WorkoutAlertNotification.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type [WorkoutAlertNotification] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [WorkoutAlertNotification] and conformance [A];
  if (!lazy protocol witness table cache variable for type [WorkoutAlertNotification] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI0A17AlertNotificationOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [WorkoutAlertNotification] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutAlertNotification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutAlertNotification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for ManualEffortPicker()
{
  result = type metadata singleton initialization cache for ManualEffortPicker;
  if (!type metadata singleton initialization cache for ManualEffortPicker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ManualEffortPicker()
{
  type metadata accessor for Binding<AppleExertionScale?>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Binding<Bool>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Binding<AppleExertionScale?>()
{
  if (!lazy cache variable for type metadata for Binding<AppleExertionScale?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<AppleExertionScale?>);
    }
  }
}

uint64_t ManualEffortPicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for ManualEffortPicker();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v19[1] = v5;
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedH0VyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA6HStackVyAA05TupleI0VyAHyAA4TextVAA022_EnvironmentKeyWritingN0VyANSgGG_AA6SpacerVAA012_ConditionalH0VyA3_yAHyAA5GroupVyATyAHyAHyAHyAjXyAJ5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AVtGGAOGAHyA5_yATyAHyAHyA9_AXyAA19SymbolRenderingModeVSgGGA14_G_AVtGGAOGGAHyAHyAHyA5_yATyAV_AHyAJA14_GtGGA8_GALyAA017HierarchicalShapeM0VGGAZGGtGGGGMd);
  v8 = *(v7 - 8);
  v21 = v7;
  v22 = v8;
  MEMORY[0x28223BE20](v7);
  v20 = v19 - v9;
  outlined init with copy of ManualEffortPicker(v1, v6);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  outlined init with take of ManualEffortPicker(v6, v11 + v10);
  v24 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD5ColorVGGAD6HStackVyAD05TupleG0VyAFyAD4TextVAD022_EnvironmentKeyWritingM0VyALSgGG_AD6SpacerVAD012_ConditionalF0VyA1_yAFyAD5GroupVyARyAFyAFyAFyAhVyAH5ScaleOGGAD17_FlipForRTLEffectVGAD023AccessibilityAttachmentM0VG_ATtGGAMGAFyA3_yARyAFyAFyA7_AVyAD19SymbolRenderingModeVSgGGA12_G_ATtGGAMGGAFyAFyAFyA3_yARyAT_AFyAHA12_GtGGA6_GAJyAD017HierarchicalShapeL0VGGAXGGtGGGMd);
  lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Spacer, _ConditionalContent<_ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier(&lazy protocol witness table cache variable for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Spacer, _ConditionalContent<_ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingMo, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD5ColorVGGAD6HStackVyAD05TupleG0VyAFyAD4TextVAD022_EnvironmentKeyWritingM0VyALSgGG_AD6SpacerVAD012_ConditionalF0VyA1_yAFyAD5GroupVyARyAFyAFyAFyAhVyAH5ScaleOGGAD17_FlipForRTLEffectVGAD023AccessibilityAttachmentM0VG_ATtGGAMGAFyA3_yARyAFyAFyA7_AVyAD19SymbolRenderingModeVSgGGA12_G_ATtGGAMGGAFyAFyAFyA3_yARyAT_AFyAHA12_GtGGA6_GAJyAD017HierarchicalShapeL0VGGAXGGtGGGMd);
  Button.init(action:label:)();
  v12 = v1 + *(v3 + 28);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v12) = *(v12 + 16);
  v25 = v13;
  v26 = v14;
  v27 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.projectedValue.getter();
  outlined init with copy of ManualEffortPicker(v1, v6);
  v15 = swift_allocObject();
  outlined init with take of ManualEffortPicker(v6, v15 + v10);
  type metadata accessor for EffortNavigationView();
  lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Spacer, _ConditionalContent<_ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier(&lazy protocol witness table cache variable for type Button<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Spacer, _ConditionalContent<_ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWr, &_s7SwiftUI6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedH0VyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA6HStackVyAA05TupleI0VyAHyAA4TextVAA022_EnvironmentKeyWritingN0VyANSgGG_AA6SpacerVAA012_ConditionalH0VyA3_yAHyAA5GroupVyATyAHyAHyAHyAjXyAJ5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AVtGGAOGAHyA5_yATyAHyAHyA9_AXyAA19SymbolRenderingModeVSgGGA14_G_AVtGGAOGGAHyAHyAHyA5_yATyAV_AHyAJA14_GtGGA8_GALyAA017HierarchicalShapeM0VGGAZGGtGGGGMd);
  lazy protocol witness table accessor for type EffortNavigationView and conformance EffortNavigationView(&lazy protocol witness table cache variable for type EffortNavigationView and conformance EffortNavigationView, type metadata accessor for EffortNavigationView);
  v17 = v20;
  v16 = v21;
  View.sheet<A>(isPresented:onDismiss:content:)();

  return (*(v22 + 8))(v17, v16);
}

uint64_t closure #2 in ManualEffortPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = static VerticalAlignment.center.getter();
  v7 = Image.init(_internalSystemName:)();
  v8 = *MEMORY[0x277D7E260];
  v9 = type metadata accessor for AppleExertionScale();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v5, v8, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  v11 = specialized static EffortColors.textColor(exertion:)(v5);
  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v5, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  *a2 = v7;
  a2[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD5ColorVGGAD6HStackVyAD05TupleG0VyAFyAD4TextVAD022_EnvironmentKeyWritingM0VyALSgGG_AD6SpacerVAD012_ConditionalF0VyA1_yAFyAD5GroupVyARyAFyAFyAFyAhVyAH5ScaleOGGAD17_FlipForRTLEffectVGAD023AccessibilityAttachmentM0VG_ATtGGAMGAFyA3_yARyAFyAFyA7_AVyAD19SymbolRenderingModeVSgGGA12_G_ATtGGAMGGAFyAFyAFyA3_yARyAT_AFyAHA12_GtGGA6_GAJyAD017HierarchicalShapeL0VGGAXGGtGGGMd);
  v13 = a2 + v12[13];
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAA012_ConditionalJ0VyAXyAKyAA5GroupVyAIyAKyAKyAKyAA5ImageVAOyA0_5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentO0VG_AMtGGAA016_ForegroundStyleO0VyAQGGAKyAZyAIyAKyAKyA4_AOyAA19SymbolRenderingModeVSgGGA9_G_AMtGGA15_GGAKyAKyAKyAZyAIyAM_AKyA0_A9_GtGGA3_GA14_yAA22HierarchicalShapeStyleVGGASGGtGGMd);
  result = closure #1 in closure #2 in closure #2 in ManualEffortPicker.body.getter(v17, &v13[*(v14 + 44)]);
  *(a2 + v12[14]) = 0x4022000000000000;
  *(a2 + v12[15]) = v6;
  return result;
}

uint64_t closure #1 in closure #2 in closure #2 in ManualEffortPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v118 = a2;
  v119 = a1;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAKyAA19SymbolRenderingModeVSgGGAA023AccessibilityAttachmentL0VG_AA4TextVtGGAA016_ForegroundStyleL0VyAA5ColorVGGMd);
  MEMORY[0x28223BE20](v103);
  v94 = &v87[-v2];
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA9TupleViewVyAA4TextV_ACyAA5ImageVAA31AccessibilityAttachmentModifierVGtGGAA022_EnvironmentKeyWritingL0VyAK5ScaleOGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeR0VGGARyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v117);
  v96 = &v87[-v3];
  v97 = type metadata accessor for ExertionValue();
  v93 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v91 = &v87[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v92 = &v87[-v6];
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAA5GroupVyAA9TupleViewVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AA4TextVtGGAA016_ForegroundStyleN0VyAA5ColorVGGAGyAIyAKyAGyAGyAsOyAA19SymbolRenderingModeVSgGGAXG_A_tGGA6_GGAGyAGyAGyAIyAKyA__AGyAmXGtGGARGA3_yAA017HierarchicalShapeW0VGGAOyA5_SgGG_GMd);
  MEMORY[0x28223BE20](v114);
  v116 = &v87[-v7];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5GroupVyAA9TupleViewVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AA4TextVtGGAA016_ForegroundStyleN0VyAA5ColorVGGAGyAIyAKyAGyAGyAsOyAA19SymbolRenderingModeVSgGGAXG_A_tGGA6_G_GMd);
  MEMORY[0x28223BE20](v100);
  v101 = &v87[-v8];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5GroupVyAA9TupleViewVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentM0VG_AA4TextVtGGAA016_ForegroundStyleM0VyAA5ColorVGGAEyAGyAIyAEyAEyAqMyAA19SymbolRenderingModeVSgGGAVG_AYtGGA4_GGMd);
  MEMORY[0x28223BE20](v115);
  v102 = &v87[-v9];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentL0VG_AA4TextVtGGAA016_ForegroundStyleL0VyAA5ColorVGGMd);
  MEMORY[0x28223BE20](v99);
  v95 = &v87[-v10];
  v11 = type metadata accessor for AppleExertionScale();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v98 = &v87[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSg_ADtMd);
  MEMORY[0x28223BE20](v14);
  v16 = &v87[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v89 = &v87[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v105 = &v87[-v20];
  MEMORY[0x28223BE20](v21);
  v106 = &v87[-v22];
  MEMORY[0x28223BE20](v23);
  v25 = &v87[-v24];
  MEMORY[0x28223BE20](v26);
  v28 = &v87[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5GroupVyAA9TupleViewVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentM0VG_AA4TextVtGGAA016_ForegroundStyleM0VyAA5ColorVGGAEyAGyAIyAEyAEyAqMyAA19SymbolRenderingModeVSgGGAVG_AYtGGA4_GGAEyAEyAEyAGyAIyAY_AEyAkVGtGGAPGA1_yAA017HierarchicalShapeV0VGGAMyA3_SgGGGMd);
  MEMORY[0x28223BE20](v29 - 8);
  v113 = &v87[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  v120 = &v87[-v32];
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v33 = WorkoutUIBundle.super.isa;
  v122._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0xD000000000000013;
  v34._object = 0x800000020CB9BD50;
  v35.value._object = 0x800000020CB936F0;
  v35.value._countAndFlagsBits = 0xD000000000000012;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v122._countAndFlagsBits = 0;
  v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v122);

  v121 = v37;
  lazy protocol witness table accessor for type String and conformance String();
  v38 = Text.init<A>(_:)();
  v40 = v39;
  v42 = v41;
  LODWORD(v121._countAndFlagsBits) = static HierarchicalShapeStyle.primary.getter();
  v43 = Text.foregroundStyle<A>(_:)();
  v110 = v44;
  v111 = v43;
  v107 = v45;
  v112 = v46;
  outlined consume of Text.Storage(v38, v40, v42 & 1);

  v109 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore18AppleExertionScaleOSgGMd);
  MEMORY[0x20F30B100]();
  (*(v12 + 104))(v25, *MEMORY[0x277D7E298], v11);
  (*(v12 + 56))(v25, 0, 1, v11);
  v47 = *(v14 + 48);
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v28, v16, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v25, &v16[v47], &_s11WorkoutCore18AppleExertionScaleOSgMd);
  v48 = *(v12 + 48);
  v49 = v48(v16, 1, v11);
  v90 = v12;
  if (v49 == 1)
  {
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v25, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v28, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    if (v48(&v16[v47], 1, v11) == 1)
    {
      _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v16, &_s11WorkoutCore18AppleExertionScaleOSgMd);
      v50 = v120;
LABEL_12:
      v67 = v95;
      closure #1 in closure #1 in closure #2 in closure #2 in ManualEffortPicker.body.getter(v95);
      *&v67[*(v99 + 36)] = static Color.gray.getter();
      v63 = &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentL0VG_AA4TextVtGGAA016_ForegroundStyleL0VyAA5ColorVGGMd;
      _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v67, v101, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentL0VG_AA4TextVtGGAA016_ForegroundStyleL0VyAA5ColorVGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      v68 = v102;
      _ConditionalContent<>.init(storage:)();
      _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v68, v116, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5GroupVyAA9TupleViewVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentM0VG_AA4TextVtGGAA016_ForegroundStyleM0VyAA5ColorVGGAEyAGyAIyAEyAEyAqMyAA19SymbolRenderingModeVSgGGAVG_AYtGGA4_GGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v68, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5GroupVyAA9TupleViewVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentM0VG_AA4TextVtGGAA016_ForegroundStyleM0VyAA5ColorVGGAEyAGyAIyAEyAEyAqMyAA19SymbolRenderingModeVSgGGAVG_AYtGGA4_GGMd);
      v64 = v67;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v51 = v106;
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v16, v106, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  if (v48(&v16[v47], 1, v11) == 1)
  {
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v25, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v28, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    (*(v12 + 8))(v51, v11);
LABEL_8:
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v16, &_s11WorkoutCore18AppleExertionScaleOSg_ADtMd);
    goto LABEL_9;
  }

  v65 = v98;
  (*(v12 + 32))(v98, &v16[v47], v11);
  lazy protocol witness table accessor for type EffortNavigationView and conformance EffortNavigationView(&lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale, MEMORY[0x277D7E2A0]);
  v88 = dispatch thunk of static Equatable.== infix(_:_:)();
  v66 = *(v12 + 8);
  v66(v65, v11);
  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v25, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v28, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  v66(v106, v11);
  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v16, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  v50 = v120;
  if (v88)
  {
    goto LABEL_12;
  }

LABEL_9:
  v52 = v105;
  v53 = v104;
  MEMORY[0x20F30B100](v104);
  if (!v48(v52, 1, v11))
  {
    v69 = v90;
    v70 = v98;
    (*(v90 + 16))(v98, v52, v11);
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v52, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    v71 = v91;
    AppleExertionScale.exertionValue.getter();
    (*(v69 + 8))(v70, v11);
    v72 = v93;
    v73 = v92;
    (*(v93 + 32))(v92, v71, v97);
    v74 = v94;
    closure #2 in closure #1 in closure #2 in closure #2 in ManualEffortPicker.body.getter(v94);
    v75 = v89;
    MEMORY[0x20F30B100](v53);
    v76 = specialized static EffortColors.textColor(exertion:)(v75);
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v75, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    *&v74[*(v103 + 36)] = v76;
    _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v74, v101, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAKyAA19SymbolRenderingModeVSgGGAA023AccessibilityAttachmentL0VG_AA4TextVtGGAA016_ForegroundStyleL0VyAA5ColorVGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    v77 = v102;
    _ConditionalContent<>.init(storage:)();
    _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v77, v116, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5GroupVyAA9TupleViewVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentM0VG_AA4TextVtGGAA016_ForegroundStyleM0VyAA5ColorVGGAEyAGyAIyAEyAEyAqMyAA19SymbolRenderingModeVSgGGAVG_AYtGGA4_GGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    v50 = v120;
    _ConditionalContent<>.init(storage:)();
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v77, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5GroupVyAA9TupleViewVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentM0VG_AA4TextVtGGAA016_ForegroundStyleM0VyAA5ColorVGGAEyAGyAIyAEyAEyAqMyAA19SymbolRenderingModeVSgGGAVG_AYtGGA4_GGMd);
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v74, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAKyAA19SymbolRenderingModeVSgGGAA023AccessibilityAttachmentL0VG_AA4TextVtGGAA016_ForegroundStyleL0VyAA5ColorVGGMd);
    (*(v72 + 8))(v73, v97);
    goto LABEL_15;
  }

  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v52, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  v54 = v96;
  closure #3 in closure #1 in closure #2 in closure #2 in ManualEffortPicker.body.getter(v96);
  v55 = &v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyAA4TextV_ACyAA5ImageVAA31AccessibilityAttachmentModifierVGtGGAA022_EnvironmentKeyWritingL0VyAK5ScaleOGGMd) + 36)];
  v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v57 = *MEMORY[0x277CE1050];
  v58 = type metadata accessor for Image.Scale();
  (*(*(v58 - 8) + 104))(v55 + v56, v57, v58);
  *v55 = swift_getKeyPath();
  LODWORD(v57) = static HierarchicalShapeStyle.secondary.getter();
  *&v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA9TupleViewVyAA4TextV_ACyAA5ImageVAA31AccessibilityAttachmentModifierVGtGGAA022_EnvironmentKeyWritingL0VyAK5ScaleOGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeR0VGGMd) + 36)] = v57;
  v59 = static Color.white.getter();
  v60 = swift_getKeyPath();
  v61 = v116;
  v62 = &v54[*(v117 + 36)];
  *v62 = v60;
  v62[1] = v59;
  v63 = &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA9TupleViewVyAA4TextV_ACyAA5ImageVAA31AccessibilityAttachmentModifierVGtGGAA022_EnvironmentKeyWritingL0VyAK5ScaleOGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeR0VGGARyAA5ColorVSgGGMd;
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v54, v61, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA9TupleViewVyAA4TextV_ACyAA5ImageVAA31AccessibilityAttachmentModifierVGtGGAA022_EnvironmentKeyWritingL0VyAK5ScaleOGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeR0VGGARyAA5ColorVSgGGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v50 = v120;
  _ConditionalContent<>.init(storage:)();
  v64 = v54;
LABEL_13:
  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v64, v63);
LABEL_15:
  v78 = v113;
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v50, v113, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5GroupVyAA9TupleViewVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentM0VG_AA4TextVtGGAA016_ForegroundStyleM0VyAA5ColorVGGAEyAGyAIyAEyAEyAqMyAA19SymbolRenderingModeVSgGGAVG_AYtGGA4_GGAEyAEyAEyAGyAIyAY_AEyAkVGtGGAPGA1_yAA017HierarchicalShapeV0VGGAMyA3_SgGGGMd);
  v80 = v110;
  v79 = v111;
  v81 = v118;
  *v118 = v111;
  v81[1] = v80;
  v82 = v107 & 1;
  *(v81 + 16) = v107 & 1;
  v83 = KeyPath;
  v84 = v109;
  v81[3] = v112;
  v81[4] = v83;
  v81[5] = v84;
  v81[6] = 0;
  *(v81 + 56) = 1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAA012_ConditionalD0VyAPyACyAA5GroupVyAA9TupleViewVyACyACyACyAA5ImageVAGyAV5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentI0VG_AEtGGAA016_ForegroundStyleI0VyAIGGACyARyATyACyACyAzGyAA19SymbolRenderingModeVSgGGA3_G_AEtGGA9_GGACyACyACyARyATyAE_ACyAVA3_GtGGAYGA8_yAA017HierarchicalShapeX0VGGAKGGtMd);
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v78, v81 + *(v85 + 64), &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5GroupVyAA9TupleViewVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentM0VG_AA4TextVtGGAA016_ForegroundStyleM0VyAA5ColorVGGAEyAGyAIyAEyAEyAqMyAA19SymbolRenderingModeVSgGGAVG_AYtGGA4_GGAEyAEyAEyAGyAIyAY_AEyAkVGtGGAPGA1_yAA017HierarchicalShapeV0VGGAMyA3_SgGGGMd);
  outlined copy of Text.Storage(v79, v80, v82);

  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v120, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5GroupVyAA9TupleViewVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentM0VG_AA4TextVtGGAA016_ForegroundStyleM0VyAA5ColorVGGAEyAGyAIyAEyAEyAqMyAA19SymbolRenderingModeVSgGGAVG_AYtGGA4_GGAEyAEyAEyAGyAIyAY_AEyAkVGtGGAPGA1_yAA017HierarchicalShapeV0VGGAMyA3_SgGGGMd);
  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v78, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5GroupVyAA9TupleViewVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentM0VG_AA4TextVtGGAA016_ForegroundStyleM0VyAA5ColorVGGAEyAGyAIyAEyAEyAqMyAA19SymbolRenderingModeVSgGGAVG_AYtGGA4_GGAEyAEyAEyAGyAIyAY_AEyAkVGtGGAPGA1_yAA017HierarchicalShapeV0VGGAMyA3_SgGGGMd);
  outlined consume of Text.Storage(v79, v80, v82);
}

uint64_t closure #1 in closure #1 in closure #2 in closure #2 in ManualEffortPicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA17_FlipForRTLEffectVGMd);
  MEMORY[0x28223BE20](v2);
  v4 = (&v30 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentI0VGMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = Image.init(_internalSystemName:)();
  v12 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v14 = *MEMORY[0x277CE1050];
  v15 = type metadata accessor for Image.Scale();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *v4 = v11;
  *(v4 + *(v2 + 36)) = 1;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>();
  View.accessibilityHidden(_:)();
  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v4, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA17_FlipForRTLEffectVGMd);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = WorkoutUIBundle.super.isa;
  v32._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0x44455050494B53;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v17._object = 0xE700000000000000;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v32);

  v31 = v20;
  lazy protocol witness table accessor for type String and conformance String();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v10, v7, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentI0VGMd);
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v7, a1, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentI0VGMd);
  v28 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentI0VG_AA4TextVtMd) + 48);
  *v28 = v21;
  *(v28 + 8) = v23;
  *(v28 + 16) = v25 & 1;
  *(v28 + 24) = v27;
  outlined copy of Text.Storage(v21, v23, v25 & 1);

  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v10, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentI0VGMd);
  outlined consume of Text.Storage(v21, v23, v25 & 1);

  return _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v7, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentI0VGMd);
}

uint64_t closure #2 in closure #1 in closure #2 in closure #2 in ManualEffortPicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA19SymbolRenderingModeVSgGGMd);
  MEMORY[0x28223BE20](v2);
  v4 = (v30 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA19SymbolRenderingModeVSgGGAA023AccessibilityAttachmentI0VGMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v30 - v9;
  v30[1] = ExertionValue.level.getter();
  v31 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = v11;
  MEMORY[0x20F30BC00](0x2E656C637269632ELL, 0xEC0000006C6C6966);
  v12 = Image.init(_internalSystemName:)();
  v13 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v15 = *MEMORY[0x277CE1058];
  v16 = type metadata accessor for Image.Scale();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  *v4 = v12;
  v17 = (v4 + *(v2 + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd) + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v19 = type metadata accessor for SymbolRenderingMode();
  (*(*(v19 - 8) + 56))(v17 + v18, 0, 1, v19);
  *v17 = swift_getKeyPath();
  ExertionValue.level.getter();
  v31 = Int.localizedString.getter();
  v32 = v20;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v4, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA19SymbolRenderingModeVSgGGMd);
  v31 = ExertionValue.shortDescription.getter();
  v32 = v21;
  v22 = Text.init<A>(_:)();
  v24 = v23;
  LOBYTE(v14) = v25;
  v27 = v26;
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v10, v7, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA19SymbolRenderingModeVSgGGAA023AccessibilityAttachmentI0VGMd);
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v7, a1, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA19SymbolRenderingModeVSgGGAA023AccessibilityAttachmentI0VGMd);
  v28 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA19SymbolRenderingModeVSgGGAA023AccessibilityAttachmentI0VG_AA4TextVtMd) + 48);
  *v28 = v22;
  *(v28 + 8) = v24;
  LOBYTE(v14) = v14 & 1;
  *(v28 + 16) = v14;
  *(v28 + 24) = v27;
  outlined copy of Text.Storage(v22, v24, v14);

  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v10, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA19SymbolRenderingModeVSgGGAA023AccessibilityAttachmentI0VGMd);
  outlined consume of Text.Storage(v22, v24, v14);

  return _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v7, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA19SymbolRenderingModeVSgGGAA023AccessibilityAttachmentI0VGMd);
}

uint64_t closure #3 in closure #1 in closure #2 in closure #2 in ManualEffortPicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = WorkoutUIBundle.super.isa;
  v24._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD00000000000001ALL;
  v9._object = 0x800000020CB9BD70;
  v10.value._object = 0x800000020CB936F0;
  v10.value._countAndFlagsBits = 0xD000000000000012;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v24);

  v23 = v12;
  lazy protocol witness table accessor for type String and conformance String();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v23._countAndFlagsBits = Image.init(_internalSystemName:)();
  View.accessibilityHidden(_:)();

  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v7, v4, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  *a1 = v13;
  *(a1 + 8) = v15;
  v17 &= 1u;
  *(a1 + 16) = v17;
  *(a1 + 24) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGtMd);
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v4, a1 + *(v20 + 48), &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  outlined copy of Text.Storage(v13, v15, v17);

  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v7, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v4, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  outlined consume of Text.Storage(v13, v15, v17);
}

uint64_t closure #3 in ManualEffortPicker.body.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for ManualEffortPicker();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore18AppleExertionScaleOSgGMd);
  MEMORY[0x20F30B100](v14);
  outlined init with copy of ManualEffortPicker(a1, v10);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  outlined init with take of ManualEffortPicker(v10, v16 + v15);
  outlined init with copy of ManualEffortPicker(a1, v7);
  v17 = swift_allocObject();
  outlined init with take of ManualEffortPicker(v7, v17 + v15);
  v18 = type metadata accessor for EffortNavigationView();
  v19 = v18[11];
  *&a2[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  *a2 = 1;
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v13, &a2[v18[5]], &_s11WorkoutCore18AppleExertionScaleOSgMd);
  v20 = &a2[v18[7]];
  *v20 = partial apply for closure #2 in closure #3 in ManualEffortPicker.body.getter;
  v20[1] = v17;
  v21 = &a2[v18[8]];
  *v21 = partial apply for closure #1 in closure #3 in ManualEffortPicker.body.getter;
  v21[1] = v16;
  a2[v18[6]] = 0;
  a2[v18[9]] = 0;
  result = _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v13, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  v23 = &a2[v18[10]];
  *v23 = 0;
  *(v23 + 1) = 0;
  return result;
}

uint64_t closure #1 in ManualEffortPicker.body.getter()
{
  type metadata accessor for ManualEffortPicker();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  return Binding.wrappedValue.setter();
}

uint64_t closure #2 in closure #3 in ManualEffortPicker.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v21[-v8];
  MEMORY[0x28223BE20](v10);
  v12 = &v21[-v11];
  v13 = type metadata accessor for AppleExertionScale();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(a1, v12, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v12, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    (*(v14 + 104))(v9, *MEMORY[0x277D7E298], v13);
    (*(v14 + 56))(v9, 0, 1, v13);
    _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v9, v6, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore18AppleExertionScaleOSgGMd);
    Binding.wrappedValue.setter();
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v9, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    (*(v14 + 16))(v9, v16, v13);
    (*(v14 + 56))(v9, 0, 1, v13);
    _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(v9, v6, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore18AppleExertionScaleOSgGMd);
    Binding.wrappedValue.setter();
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(v9, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    (*(v14 + 8))(v16, v13);
  }

  v17 = (a2 + *(type metadata accessor for ManualEffortPicker() + 20));
  v18 = *v17;
  v19 = v17[1];
  LOBYTE(v17) = *(v17 + 16);
  v22 = v18;
  v23 = v19;
  v24 = v17;
  v21[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  return Binding.wrappedValue.setter();
}

uint64_t outlined init with copy of ManualEffortPicker(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManualEffortPicker();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ManualEffortPicker(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManualEffortPicker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ManualEffortPicker.body.getter()
{
  return partial apply for closure #1 in ManualEffortPicker.body.getter();
}

{
  type metadata accessor for ManualEffortPicker();
  return closure #1 in ManualEffortPicker.body.getter();
}

uint64_t partial apply for closure #3 in ManualEffortPicker.body.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ManualEffortPicker() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #3 in ManualEffortPicker.body.getter(v4, a1);
}

uint64_t objectdestroyTm_51()
{
  v1 = *(type metadata accessor for ManualEffortPicker() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore18AppleExertionScaleOSgGMd) + 32);
  v4 = type metadata accessor for AppleExertionScale();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #3 in ManualEffortPicker.body.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for ManualEffortPicker() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #2 in closure #3 in ManualEffortPicker.body.getter(a1, v4);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5GroupVyAA9TupleViewVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentM0VG_AA4TextVtGGAA016_ForegroundStyleM0VyAA5ColorVGGAEyAGyAIyAEyAEyAqMyAA19SymbolRenderingModeVSgGGAVG_AYtGGA4_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentL0VG_AA4TextVtGGAA016_ForegroundStyleL0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>> and conformance <A> Group<A>();
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Spacer, _ConditionalContent<_ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentL0VG_AA4TextVtGGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Spacer, _ConditionalContent<_ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentK0VG_AA4TextVtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAKyAA19SymbolRenderingModeVSgGGAA023AccessibilityAttachmentL0VG_AA4TextVtGGAA016_ForegroundStyleL0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>> and conformance <A> Group<A>();
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Spacer, _ConditionalContent<_ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAKyAA19SymbolRenderingModeVSgGGAA023AccessibilityAttachmentL0VG_AA4TextVtGGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Spacer, _ConditionalContent<_ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA19SymbolRenderingModeVSgGGAA023AccessibilityAttachmentK0VG_AA4TextVtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA9TupleViewVyAA4TextV_ACyAA5ImageVAA31AccessibilityAttachmentModifierVGtGGAA022_EnvironmentKeyWritingL0VyAK5ScaleOGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeR0VGGARyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Spacer, _ConditionalContent<_ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA9TupleViewVyAA4TextV_ACyAA5ImageVAA31AccessibilityAttachmentModifierVGtGGAA022_EnvironmentKeyWritingL0VyAK5ScaleOGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeR0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Spacer, _ConditionalContent<_ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyAA4TextV_ACyAA5ImageVAA31AccessibilityAttachmentModifierVGtGGAA022_EnvironmentKeyWritingL0VyAK5ScaleOGGMd);
    lazy protocol witness table accessor for type Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>> and conformance <A> Group<A>();
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Spacer, _ConditionalContent<_ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGtGGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Spacer, _ConditionalContent<_ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier(&lazy protocol witness table cache variable for type TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA4TextV_AA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>> and conformance <A> Group<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type EffortNavigationView and conformance EffortNavigationView(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA17_FlipForRTLEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _FlipForRTLEffect and conformance _FlipForRTLEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA19SymbolRenderingModeVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Spacer, _ConditionalContent<_ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SymbolRenderingMode?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s11WorkoutCore18AppleExertionScaleOSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s11WorkoutCore18AppleExertionScaleOSgWOhTm_2(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for TrainingLoadDayWidgetRectangularView()
{
  result = type metadata singleton initialization cache for TrainingLoadDayWidgetRectangularView;
  if (!type metadata singleton initialization cache for TrainingLoadDayWidgetRectangularView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TrainingLoadDayWidgetRectangularView()
{
  type metadata accessor for TrainingLoadDayEntry();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<WidgetRenderingMode>(319, &lazy cache variable for type metadata for Environment<WidgetRenderingMode>, MEMORY[0x277CE3AF8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<WidgetRenderingMode>(319, &lazy cache variable for type metadata for Environment<RedactionReasons>, MEMORY[0x277CDFB98]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Environment<WidgetRenderingMode>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t TrainingLoadDayWidgetRectangularView.renderingMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy9WidgetKit0E13RenderingModeV_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  DayWidgetRectangularView = type metadata accessor for TrainingLoadDayWidgetRectangularView();
  outlined init with copy of Environment<RedactionReasons>.Content(v1 + *(DayWidgetRectangularView + 20), v9, &_s7SwiftUI11EnvironmentV7ContentOy9WidgetKit0E13RenderingModeV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for WidgetRenderingMode();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t TrainingLoadDayWidgetRectangularView.redactionReasons.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  DayWidgetRectangularView = type metadata accessor for TrainingLoadDayWidgetRectangularView();
  outlined init with copy of Environment<RedactionReasons>.Content(v1 + *(DayWidgetRectangularView + 24), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for RedactionReasons();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t closure #1 in TrainingLoadDayWidgetRectangularView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v113 = a2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA4TextV_Qo_Md);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v4 = &v91 - v3;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA4TextV_Qo_AA14_OpacityEffectVGMd);
  MEMORY[0x28223BE20](v106);
  v105 = &v91 - v5;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA4TextV_Qo_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  MEMORY[0x28223BE20](v104);
  v112 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v91 - v8;
  MEMORY[0x28223BE20](v9);
  v111 = &v91 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA4TextV_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  MEMORY[0x28223BE20](v94);
  v110 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v115 = &v91 - v13;
  v99 = type metadata accessor for WidgetRenderingMode();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v96 = &v91 - v16;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  v107 = v4;
  swift_beginAccess();
  v17 = WorkoutUIBundle.super.isa;
  v121._object = 0xE000000000000000;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._object = 0x800000020CB9BD90;
  v19._countAndFlagsBits = 0xD00000000000001ALL;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v121._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v121);

  v116 = v21;
  v114 = lazy protocol witness table accessor for type String and conformance String();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  v116._countAndFlagsBits = static Color.gray.getter();
  v101 = Text.foregroundStyle<A>(_:)();
  v100 = v27;
  v29 = v28;
  v102 = v30;
  outlined consume of Text.Storage(v22, v24, v26 & 1);

  DayEntry = type metadata accessor for TrainingLoadDayEntry();
  v93 = *(a1 + DayEntry[5] + 8);
  if (v93 == 1 && (v32 = v96, TrainingLoadDayWidgetRectangularView.renderingMode.getter(v96), v33 = v97, static WidgetRenderingMode.accented.getter(), v34 = static WidgetRenderingMode.== infix(_:_:)(), v35 = *(v98 + 8), v36 = v33, v37 = v99, v35(v36, v99), v35(v32, v37), (v34 & 1) != 0))
  {
    v38 = 0.6;
  }

  else
  {
    v38 = 1.0;
  }

  KeyPath = swift_getKeyPath();
  v120 = v29 & 1;
  v119 = 0;
  v39 = (a1 + DayEntry[7]);
  v40 = v39[1];
  v116._countAndFlagsBits = *v39;
  v116._object = v40;

  v41 = Text.init<A>(_:)();
  v43 = v42;
  v45 = v44;
  v116._countAndFlagsBits = *(a1 + DayEntry[8]);
  countAndFlagsBits = v116._countAndFlagsBits;
  swift_retain_n();
  v47 = Text.foregroundStyle<A>(_:)();
  v92 = DayEntry;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  outlined consume of Text.Storage(v41, v43, v45 & 1);

  v116._countAndFlagsBits = v47;
  v116._object = v49;
  v51 &= 1u;
  v117 = v51;
  v118 = v53;
  LOBYTE(v43) = v93 ^ 1;
  v54 = v115;
  View.widgetAccentable(_:)();
  outlined consume of Text.Storage(v47, v49, v51);

  v55 = swift_getKeyPath();
  v56 = v54 + *(v94 + 36);
  *v56 = v55;
  *(v56 + 8) = 1;
  *(v56 + 16) = 0;
  v57 = v92[6];
  v94 = a1;
  v58 = (a1 + v57);
  v59 = v58[1];
  v116._countAndFlagsBits = *v58;
  v116._object = v59;

  v60 = Text.init<A>(_:)();
  v62 = v61;
  LOBYTE(v47) = v63;
  v116._countAndFlagsBits = countAndFlagsBits;
  v64 = Text.foregroundStyle<A>(_:)();
  v66 = v65;
  LOBYTE(v54) = v67;
  v69 = v68;
  outlined consume of Text.Storage(v60, v62, v47 & 1);

  v116._countAndFlagsBits = v64;
  v116._object = v66;
  v117 = v54 & 1;
  v118 = v69;
  v70 = v107;
  View.widgetAccentable(_:)();
  outlined consume of Text.Storage(v64, v66, v54 & 1);

  if ((v43 & 1) != 0 || (v71 = v96, TrainingLoadDayWidgetRectangularView.renderingMode.getter(v96), v72 = v97, static WidgetRenderingMode.accented.getter(), v73 = static WidgetRenderingMode.== infix(_:_:)(), v74 = *(v98 + 8), v75 = v72, v76 = v99, v74(v75, v99), v74(v71, v76), (v73 & 1) == 0))
  {
    v77 = 1.0;
  }

  else
  {
    v77 = 0.6;
  }

  v78 = v105;
  (*(v108 + 32))(v105, v70, v109);
  *(v78 + *(v106 + 36)) = v77;
  v79 = swift_getKeyPath();
  v80 = v103;
  outlined init with take of ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>(v78, v103, &_s7SwiftUI15ModifiedContentVyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA4TextV_Qo_AA14_OpacityEffectVGMd);
  v81 = v80 + *(v104 + 36);
  *v81 = v79;
  *(v81 + 8) = 1;
  *(v81 + 16) = 0;
  v82 = v111;
  outlined init with take of ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>(v80, v111, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA4TextV_Qo_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  LOBYTE(v79) = v119;
  v83 = v120;
  v84 = v110;
  outlined init with copy of ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v115, v110, &_s7SwiftUI15ModifiedContentVyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA4TextV_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  v85 = v112;
  outlined init with copy of ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v82, v112, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA4TextV_Qo_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  v86 = v113;
  v87 = v101;
  v88 = v100;
  *v113 = v101;
  v86[1] = v88;
  *(v86 + 16) = v83;
  v86[3] = v102;
  *(v86 + 4) = v38;
  v86[5] = KeyPath;
  v86[6] = 1;
  *(v86 + 56) = v79;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGG_ACyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAE_Qo_ALGACyACyArGGALGtMd);
  outlined init with copy of ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v84, v86 + *(v89 + 48), &_s7SwiftUI15ModifiedContentVyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA4TextV_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  outlined init with copy of ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(v85, v86 + *(v89 + 64), &_s7SwiftUI15ModifiedContentVyACyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA4TextV_Qo_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  outlined copy of Text.Storage(v87, v88, v83 & 1);

  outlined destroy of ModifiedContent<ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>(v82, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA4TextV_Qo_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  outlined destroy of ModifiedContent<ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>(v115, &_s7SwiftUI15ModifiedContentVyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA4TextV_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  outlined destroy of ModifiedContent<ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>(v85, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA4TextV_Qo_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  outlined destroy of ModifiedContent<ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>(v84, &_s7SwiftUI15ModifiedContentVyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA4TextV_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  outlined consume of Text.Storage(v87, v88, v83 & 1);
}

uint64_t closure #2 in TrainingLoadDayWidgetRectangularView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for RedactionReasons();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WidgetKit0A13RenderingModeVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = (a1 + *(type metadata accessor for TrainingLoadDayEntry() + 20));
  v15 = *v14;
  v16 = *(v14 + 8);
  TrainingLoadDayWidgetRectangularView.renderingMode.getter(v13);
  v17 = type metadata accessor for WidgetRenderingMode();
  (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
  TrainingLoadDayWidgetRectangularView.redactionReasons.getter(v10);
  v18 = MEMORY[0x277CDFB98];
  lazy protocol witness table accessor for type TrainingLoadDayView and conformance TrainingLoadDayView(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, MEMORY[0x277CDFB98]);
  dispatch thunk of SetAlgebra.init()();
  lazy protocol witness table accessor for type TrainingLoadDayView and conformance TrainingLoadDayView(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, v18);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  DayViewModel = type metadata accessor for TrainingLoadDayViewModel();
  v22 = DayViewModel;
  if (v16)
  {
    (*(*(DayViewModel - 8) + 56))(a2, 1, 1, DayViewModel);
  }

  else
  {
    *(a2 + *(DayViewModel + 28)) = 0x3FE3333333333333;
    *a2 = v15;
    TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)();
    TrainingLoadBand.valueRangeForBand(baseline:)();
    v23 = (a2 + *(v22 + 24));
    *v23 = v24;
    v23[1] = v25;
    (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
  }

  DayView = type metadata accessor for TrainingLoadDayView();
  result = outlined init with take of WidgetRenderingMode?(v13, a2 + *(DayView + 20));
  *(a2 + *(DayView + 24)) = (v19 & 1) == 0;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance TrainingLoadDayWidgetRectangularView@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGG_AEyAA0D0P9WidgetKitE16widgetAccentableyQrSbFQOyAG_Qo_ANGAEyAEyAtIGANGtGMd);
  type metadata accessor for TrainingLoadDayView();
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGG_AEyAA0D0P9WidgetKitE16widgetAccentableyQrSbFQOyAG_Qo_ANGAEyAEyAtIGANGtGMd);
  lazy protocol witness table accessor for type TrainingLoadDayView and conformance TrainingLoadDayView(&lazy protocol witness table cache variable for type TrainingLoadDayView and conformance TrainingLoadDayView, type metadata accessor for TrainingLoadDayView);
  Label.init(title:icon:)();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5LabelVyAA9TupleViewVyACyACyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGG_ACyAA0G0P9WidgetKitE16widgetAccentableyQrSbFQOyAI_Qo_APGACyACyAvKGAPGtG07WorkoutB0015TrainingLoadDayG0VGANy12CoreGraphics7CGFloatVGGMd);
  v4 = (a1 + *(result + 36));
  *v4 = KeyPath;
  v4[1] = 0x3FE3333333333333;
  return result;
}

uint64_t lazy protocol witness table accessor for type TrainingLoadDayView and conformance TrainingLoadDayView(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of Environment<RedactionReasons>.Content(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Label<TupleView<(ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>)>, TrainingLoadDayView>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Label<TupleView<(ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>)>, TrainingLoadDayView>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Label<TupleView<(ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>)>, TrainingLoadDayView>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5LabelVyAA9TupleViewVyACyACyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGG_ACyAA0G0P9WidgetKitE16widgetAccentableyQrSbFQOyAI_Qo_APGACyACyAvKGAPGtG07WorkoutB0015TrainingLoadDayG0VGANy12CoreGraphics7CGFloatVGGMd);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Label<TupleView<(ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>)>, TrainingLoadDayView> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAA0E0P9WidgetKitE16widgetAccentableyQrSbFQOyAI_Qo_APGAGyAGyAvKGAPGtG07WorkoutB0015TrainingLoadDayE0VGMd);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Label<TupleView<(ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>)>, TrainingLoadDayView>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<<<opaque return type of View.widgetAccentable(_:)>>.0, _OpacityEffect>, _EnvironmentKeyWritingModifier<Int?>>)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for PacerValuesButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PacerValuesButton(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

void one-time initialization function for pacerGoalButtonTitle()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000020CB99790;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  static PacerValuesButton.pacerGoalButtonTitle = v4;
}

uint64_t PacerValuesButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = type metadata accessor for PacerDistanceValuePicker();
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB024PacerDistanceValuePickerVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd);
  MEMORY[0x28223BE20](v39);
  v8 = &v33[-v7];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB024PacerDistanceValuePickerVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGAHyAD0O15NavigationModelCSgGGMd);
  MEMORY[0x28223BE20](v41);
  v40 = &v33[-v9];
  v46 = *(v2 + 32);
  v38 = *(&v46 + 1);
  v10 = *(v2 + 48);
  v43 = 0;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(&v46, v44);
  v37 = v10;
  static Binding.constant(_:)();
  v35 = v44[1];
  v36 = v44[0];
  v34 = v45;
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v11 = (v6 + v4[7]);
  type metadata accessor for WorkoutConfigurationDataSource();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  *v11 = EnvironmentObject.init()();
  v11[1] = v12;
  v13 = (v6 + v4[8]);
  type metadata accessor for ConfigurationNavigationModel();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  *v13 = EnvironmentObject.init()();
  v13[1] = v14;
  v15 = v6 + v4[12];
  *v15 = FocusState.init<>()() & 1;
  *(v15 + 1) = v16;
  v15[16] = v17 & 1;
  v18 = (v6 + v4[9]);
  type metadata accessor for PacerWorkoutConfiguration();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type PacerWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D968]);
  *v18 = ObservedObject.init(wrappedValue:)();
  v18[1] = v19;
  v20 = v36;
  *(v6 + v4[10]) = v37;
  *(v6 + v4[11]) = 0;
  v21 = v6 + v4[13];
  v22 = v35;
  *v21 = v20;
  *(v21 + 1) = v22;
  v21[16] = v34;
  v23 = *v2;
  if (*v2)
  {
    v24 = v23;
    v25 = static ObservableObject.environmentStore.getter();
    outlined init with take of PacerDistanceValuePicker(v6, v8);
    v26 = &v8[*(v39 + 36)];
    *v26 = v25;
    v26[1] = v23;
    v27 = *(v2 + 16);
    if (v27)
    {

      v28 = static ObservableObject.environmentStore.getter();
      v29 = v40;
      outlined init with take of ModifiedContent<PacerDistanceValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>(v8, v40);
      v30 = &v29[*(v41 + 36)];
      *v30 = v28;
      v30[1] = v27;
      EnvironmentObject.projectedValue.getter();
      swift_getKeyPath();
      EnvironmentObject.Wrapper.subscript.getter();

      MEMORY[0x28223BE20](v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryE4ViewVyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeM0VGGAEyAA6VStackVyAA05TupleJ0VyAA4TextV_AVtGGAA022_EnvironmentKeyWritingN0VyAA0S9AlignmentOGGGAZyAA5ColorVSgGGGMd);
      lazy protocol witness table accessor for type Button<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryE4ViewVyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeM0VGGAEyAA6VStackVyAA05TupleJ0VyAA4TextV_AVtGGAA022_EnvironmentKeyWritingN0VyAA0S9AlignmentOGGGAZyAA5ColorVSgGGGMd);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PacerDistanceValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
      return NavigationLink.init(destination:isActive:label:)();
    }
  }

  else
  {
    EnvironmentObject.error()();
    __break(1u);
  }

  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #1 in PacerValuesButton.body.getter(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  outlined init with copy of PacerValuesButton(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeL0VGGACyAA6VStackVyAA05TupleI0VyAA4TextV_ATtGGAA022_EnvironmentKeyWritingM0VyAA0R9AlignmentOGGGAXyAA5ColorVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  return Button.init(action:label:)();
}

uint64_t closure #1 in closure #1 in PacerValuesButton.body.getter(uint64_t a1)
{
  if (*(a1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel();
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in closure #1 in PacerValuesButton.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v3 = Image.init(_internalSystemName:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMd);
  TintShapeStyle.init()();
  *a1 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAFyAD6VStackVyAD05TupleG0VyAD4TextV_ATtGGAD022_EnvironmentKeyWritingM0VyAD0R9AlignmentOGGGMd);
  v5 = a1 + v4[13];
  v6 = static HorizontalAlignment.leading.getter();
  closure #1 in closure #2 in closure #2 in closure #1 in PacerValuesButton.body.getter(v13);
  *&v12[7] = v13[0];
  *&v12[23] = v13[1];
  *&v12[39] = v13[2];
  *&v12[55] = v13[3];
  KeyPath = swift_getKeyPath();
  *(v5 + 33) = *&v12[16];
  *(v5 + 49) = *&v12[32];
  *(v5 + 65) = *&v12[48];
  *v5 = v6;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(v5 + 17) = *v12;
  *(v5 + 10) = *&v12[63];
  *(v5 + 11) = KeyPath;
  v5[96] = 0;
  *(a1 + v4[14]) = 0x4022000000000000;
  *(a1 + v4[15]) = v2;
  v8 = static Color.white.getter();
  v9 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeL0VGGACyAA6VStackVyAA05TupleI0VyAA4TextV_ATtGGAA022_EnvironmentKeyWritingM0VyAA0R9AlignmentOGGGAXyAA5ColorVSgGGMd);
  v11 = (a1 + *(result + 36));
  *v11 = v9;
  v11[1] = v8;
  return result;
}

uint64_t closure #1 in closure #2 in closure #2 in closure #1 in PacerValuesButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for pacerGoalButtonTitle != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type String and conformance String();

  v2 = Text.init<A>(_:)();
  v25 = v3;
  v26 = v2;
  v24 = v4;
  v27 = v5;
  WorkoutConfiguration.displayDetail(_:)();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  static Font.body.getter();
  Font.lowercaseSmallCaps()();

  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;

  outlined consume of Text.Storage(v6, v8, v10 & 1);

  static Color.secondary.getter();
  v16 = Text.foregroundColor(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  outlined consume of Text.Storage(v11, v13, v15 & 1);

  *a1 = v26;
  *(a1 + 8) = v25;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v27;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = v20 & 1;
  *(a1 + 56) = v22;
  outlined copy of Text.Storage(v26, v25, v24 & 1);

  outlined copy of Text.Storage(v16, v18, v20 & 1);

  outlined consume of Text.Storage(v16, v18, v20 & 1);

  outlined consume of Text.Storage(v26, v25, v24 & 1);
}

uint64_t outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PacerDistanceValuePicker(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PacerDistanceValuePicker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ModifiedContent<PacerDistanceValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB024PacerDistanceValuePickerVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PacerDistanceValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerDistanceValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerDistanceValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB024PacerDistanceValuePickerVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGAHyAD0O15NavigationModelCSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<PacerDistanceValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerDistanceValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PacerDistanceValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PacerDistanceValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PacerDistanceValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB024PacerDistanceValuePickerVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd);
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type PacerDistanceValuePicker and conformance PacerDistanceValuePicker, type metadata accessor for PacerDistanceValuePicker);
    lazy protocol witness table accessor for type Button<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PacerDistanceValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_6(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeL0VGGACyAA6VStackVyAA05TupleI0VyAA4TextV_ATtGGAA022_EnvironmentKeyWritingM0VyAA0R9AlignmentOGGGAXyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type Button<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>(&lazy protocol witness table cache variable for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance AlignedLeadingAccessoryContentView<A, B>, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAFyAD6VStackVyAD05TupleG0VyAD4TextV_ATtGGAD022_EnvironmentKeyWritingM0VyAD0R9AlignmentOGGGMd);
    lazy protocol witness table accessor for type Button<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t WorkoutAlertFont.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA15ModifiedContentVyAA01_c9Modifier_K0Vy07WorkoutB00M9AlertFontVGAA022_EnvironmentKeyWritingL0VyAA0O0VSgGG_Qo_Md);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA014_ViewModifier_D0Vy07WorkoutB00I9AlertFontVGAA022_EnvironmentKeyWritingH0VyAA0K0VSgGGAA0G0PAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAT_Qo__GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00G9AlertFontVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = *v2;
  v14 = *(v2 + 1);
  v15 = v2[16];
  if (FIUICurrentLanguageRequiresTallScript())
  {
    LOBYTE(v30) = v13;
    v31 = v14;
    v32 = v15;
    v16 = WorkoutAlertFont.systemFontForPreference.getter();
    KeyPath = swift_getKeyPath();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F9AlertFontVGMd);
    (*(*(v18 - 8) + 16))(v12, v28, v18);
    v19 = &v12[*(v10 + 36)];
    *v19 = KeyPath;
    v19[1] = v16;
    outlined init with copy of ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>>(v12, v9, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00G9AlertFontVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd);
    swift_storeEnumTagMultiPayload();
    v20 = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    v30 = v10;
    v31 = v20;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>>(v12, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00G9AlertFontVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd);
  }

  else
  {
    LOBYTE(v30) = v13;
    v31 = v14;
    v32 = v15;
    v22 = WorkoutAlertFont.systemFontForPreference.getter();
    v23 = swift_getKeyPath();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F9AlertFontVGMd);
    (*(*(v24 - 8) + 16))(v12, v28, v24);
    v25 = &v12[*(v10 + 36)];
    *v25 = v23;
    v25[1] = v22;
    MetricPlatterConstants.init()(&v30);
    v26 = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    View.maximumLineHeight(_:)();
    outlined destroy of ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>>(v12, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00G9AlertFontVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd);
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    v30 = v10;
    v31 = v26;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t WorkoutAlertFont.systemFontForPreference.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18[-v2];
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v0;
  v9 = *(v0 + 1);
  if (v0[16] == 1)
  {
    v19 = *(v0 + 1);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v9, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v9) = v19;
  }

  if (one-time initialization token for fontSize != -1)
  {
    swift_once();
  }

  if (v9 <= 4u)
  {
    if (v9 - 2 >= 3 && !v9)
    {
      goto LABEL_13;
    }

LABEL_12:
    v11 = [objc_opt_self() currentDevice];
    specialized UIDevice.screenType.getter();

    goto LABEL_13;
  }

  if (v9 <= 7u)
  {
    goto LABEL_12;
  }

  if (v9 - 8 >= 2)
  {
    specialized static LayoutUtilities.layoutMetric(regular42:)(28.0);
  }

LABEL_13:
  FIUICurrentLanguageRequiresTallScript();
  static Font.Weight.medium.getter();
  v12 = *MEMORY[0x277CE09A0];
  v13 = type metadata accessor for Font.Design();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v3, v12, v13);
  (*(v14 + 56))(v3, 0, 1, v13);
  static Font.system(size:weight:design:)();
  outlined destroy of ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>>(v3, &_s7SwiftUI4FontV6DesignOSgMd);
  v15 = Font.monospacedDigit()();

  if (v8)
  {
    v16 = Font.lowercaseSmallCaps()();

    return v16;
  }

  return v15;
}

uint64_t static WorkoutAlertFont.multilineTextView(with:lineLimit:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
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
  *(a2 + 32) = 0;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = 0;
  *(a2 + 56) = v12;
  *(a2 + 64) = 0x3FE0000000000000;
  *(a2 + 72) = result;
  *(a2 + 80) = a1;
  *(a2 + 88) = 0;
  return result;
}

uint64_t View.workoutAlertFont(lowercaseSmallCaps:)(char a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a1;
  KeyPath = swift_getKeyPath();
  v8 = 0;
  MEMORY[0x20F30ABE0](v6, a2, &type metadata for WorkoutAlertFont, a3);
  return outlined consume of Environment<WorkoutViewStyle>.Content(KeyPath, v8);
}

double static WorkoutAlertFont.multilineText(with:regularString:lineLimit:)@<D0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  MetricPlatterConstants.init()(v28);
  v5 = *(&v28[0] + 1);
  v21 = 0;
  closure #1 in static WorkoutAlertFont.multilineText(with:regularString:lineLimit:)(&v14);
  v26 = v18;
  v27[0] = v19[0];
  *(v27 + 9) = *(v19 + 9);
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v28[0] = v14;
  v28[1] = v15;
  v28[2] = v16;
  v28[3] = v17;
  v28[4] = v18;
  v29[0] = v19[0];
  *(v29 + 9) = *(v19 + 9);
  outlined init with copy of ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>>(&v22, &v13, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB00H9AlertFontVG_AKtGMd);
  outlined destroy of ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>>(v28, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB00H9AlertFontVG_AKtGMd);
  *&v20[55] = v25;
  *&v20[71] = v26;
  *&v20[87] = v27[0];
  *&v20[96] = *(v27 + 9);
  *&v20[7] = v22;
  *&v20[23] = v23;
  *&v20[39] = v24;
  v6 = v21;
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = *&v20[32];
  *(a2 + 65) = *&v20[48];
  v10 = *&v20[80];
  *(a2 + 81) = *&v20[64];
  *(a2 + 97) = v10;
  *(a2 + 113) = *&v20[96];
  result = *v20;
  v12 = *&v20[16];
  *(a2 + 17) = *v20;
  *(a2 + 33) = v12;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 49) = v9;
  *(a2 + 136) = KeyPath;
  *(a2 + 144) = 0x3FE0000000000000;
  *(a2 + 152) = v8;
  *(a2 + 160) = a1;
  *(a2 + 168) = 0;
  return result;
}

uint64_t closure #1 in static WorkoutAlertFont.multilineText(with:regularString:lineLimit:)@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v17 = Text.init<A>(_:)();
  v18 = v2;
  v4 = v3;
  v6 = v5;
  KeyPath = swift_getKeyPath();

  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = swift_getKeyPath();
  *a1 = v17;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = 1;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 0;
  *(a1 + 56) = v8;
  *(a1 + 64) = v10;
  *(a1 + 72) = v12 & 1;
  *(a1 + 80) = v14;
  *(a1 + 88) = 0;
  *(a1 + 96) = v15;
  *(a1 + 104) = 0;
  outlined copy of Text.Storage(v17, v4, v6 & 1);

  outlined copy of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
  outlined copy of Text.Storage(v8, v10, v12 & 1);

  outlined copy of Environment<WorkoutViewStyle>.Content(v15, 0);
  outlined consume of Text.Storage(v8, v10, v12 & 1);

  outlined consume of Environment<WorkoutViewStyle>.Content(v15, 0);
  outlined consume of Text.Storage(v17, v4, v6 & 1);

  return outlined consume of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00G9AlertFontVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutAlertFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutAlertFont> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F9AlertFontVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutAlertFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for WorkoutAlertFont(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutAlertFont(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>>, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>>, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>>, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy07WorkoutB00H9AlertFontVGAA022_EnvironmentKeyWritingG0VyAA0J0VSgGGAA0F0PAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAR_Qo_GMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00G9AlertFontVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>>, <<opaque return type of View.maximumLineHeight(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, WorkoutAlertFont>, ModifiedContent<Text, WorkoutAlertFont>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutAlertFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, WorkoutAlertFont>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, WorkoutAlertFont>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, WorkoutAlertFont>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB00F9AlertFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, WorkoutAlertFont> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutAlertFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, WorkoutAlertFont>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, WorkoutAlertFont> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, WorkoutAlertFont> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, WorkoutAlertFont> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB00F9AlertFontVGMd);
    lazy protocol witness table accessor for type WorkoutAlertFont and conformance WorkoutAlertFont();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, WorkoutAlertFont> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutAlertFont and conformance WorkoutAlertFont()
{
  result = lazy protocol witness table cache variable for type WorkoutAlertFont and conformance WorkoutAlertFont;
  if (!lazy protocol witness table cache variable for type WorkoutAlertFont and conformance WorkoutAlertFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAlertFont and conformance WorkoutAlertFont);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, WorkoutAlertFont>, ModifiedContent<Text, WorkoutAlertFont>)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, WorkoutAlertFont>, ModifiedContent<Text, WorkoutAlertFont>)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, WorkoutAlertFont>, ModifiedContent<Text, WorkoutAlertFont>)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA4TextV07WorkoutB00I9AlertFontVG_AMtGGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutAlertFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Text, WorkoutAlertFont>, ModifiedContent<Text, WorkoutAlertFont>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB00I9AlertFontVG_AMtGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutAlertFont> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, WorkoutAlertFont>, ModifiedContent<Text, WorkoutAlertFont>)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutAlertFont> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined destroy of ModifiedContent<_ViewModifier_Content<WorkoutAlertFont>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for GoalValueButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GoalValueButton(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t GoalValueButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = type metadata accessor for GoalValuePicker();
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015GoalValuePickerVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd);
  MEMORY[0x28223BE20](v57);
  v54 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryF4ViewVyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeN0VGGAEyAA6VStackVyAA05TupleK0VyAA4TextV_AVtGGAA022_EnvironmentKeyWritingO0VyAA0T9AlignmentOGGGAZyAA5ColorVSgGGAEyAF15GoalValuePickerVAZy0G4Core0G23ConfigurationDataSourceCSgGGGMd);
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v56 = &v53 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeN0VGGACyAA6VStackVyAA05TupleK0VyAA4TextV_AVtGGAA022_EnvironmentKeyWritingO0VyAA0T9AlignmentOGGGAZyAA5ColorVSgGGACyAF15GoalValuePickerVAZy0G4Core0G23ConfigurationDataSourceCSgGGGAZyAA012ButtonBorderQ0VGGMd);
  MEMORY[0x28223BE20](v55);
  v53 = &v53 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyACy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeN0VGGACyAA6VStackVyAA05TupleK0VyAA4TextV_AVtGGAA022_EnvironmentKeyWritingO0VyAA0T9AlignmentOGGGAZyAA5ColorVSgGGACyAF15GoalValuePickerVAZy0G4Core0G23ConfigurationDataSourceCSgGGGAZyAA012ButtonBorderQ0VGGAA023AccessibilityAttachmentO0VGMd);
  MEMORY[0x28223BE20](v61);
  v62 = &v53 - v10;
  v67 = *(v1 + 16);
  v11 = *(&v67 + 1);
  v12 = *(v1 + 32);
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(&v67, &v65);
  type metadata accessor for WorkoutConfigurationDataSource();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  v13 = v12;
  v14 = EnvironmentObject.init()();
  v16 = v15;
  type metadata accessor for ConfigurationNavigationModel();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v17 = EnvironmentObject.init()();
  v18 = (v5 + v3[7]);
  *v18 = v14;
  v18[1] = v16;
  v19 = (v5 + v3[8]);
  *v19 = v17;
  v19[1] = v20;
  v21 = (v5 + v3[9]);
  type metadata accessor for GoalWorkoutConfiguration();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D928]);
  v60 = v11;
  *v21 = ObservedObject.init(wrappedValue:)();
  v21[1] = v22;
  *(v5 + v3[10]) = v13;
  *(v5 + v3[11]) = 0;
  v23 = v5 + v3[12];
  v64 = 0;
  State.init(wrappedValue:)();
  v24 = v66;
  *v23 = v65;
  *(v23 + 1) = v24;
  v25 = *v1;
  if (*v1)
  {
    v26 = v25;
    v27 = static ObservableObject.environmentStore.getter();
    v28 = v5;
    v29 = v54;
    v30 = outlined init with take of GoalValuePicker(v28, v54);
    v31 = (v29 + *(v57 + 36));
    *v31 = v27;
    v31[1] = v25;
    MEMORY[0x28223BE20](v30);
    *(&v53 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeL0VGGACyAA6VStackVyAA05TupleI0VyAA4TextV_ATtGGAA022_EnvironmentKeyWritingM0VyAA0R9AlignmentOGGGAXyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<GoalValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
    v32 = v56;
    NavigationLink.init(destination:label:)();
    v33 = v53;
    v34 = &v53[*(v55 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd);
    static ButtonBorderShape.roundedRectangle.getter();
    *v34 = swift_getKeyPath();
    (*(v58 + 32))(v33, v32, v59);
    v35 = v60;
    if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
    {

      v36 = dispatch thunk of WorkoutConfiguration.activityType.getter();
      v37 = [v36 localizedName];

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
    }

    else
    {
      v41 = v35;
      v42 = GoalWorkoutConfiguration.goal.getter();
      v43 = [v42 goalTypeIdentifier];

      _HKWorkoutGoalType.displayNameShort(formattingManager:)(v13, v43);
      v38 = v44;
      v40 = v45;
      outlined destroy of ObservedObject<GoalWorkoutConfiguration>(&v67, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd);
    }

    v65 = v38;
    v66 = v40;
    lazy protocol witness table accessor for type ModifiedContent<NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<GoalValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    v46 = v62;
    View.accessibilityLabel<A>(_:)();

    outlined destroy of ObservedObject<GoalWorkoutConfiguration>(v33, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeN0VGGACyAA6VStackVyAA05TupleK0VyAA4TextV_AVtGGAA022_EnvironmentKeyWritingO0VyAA0T9AlignmentOGGGAZyAA5ColorVSgGGACyAF15GoalValuePickerVAZy0G4Core0G23ConfigurationDataSourceCSgGGGAZyAA012ButtonBorderQ0VGGMd);
    v47 = GoalWorkoutConfiguration.goal.getter();
    v48 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    FIUIDistanceTypeForActivityType();

    v49 = NLSessionActivityGoal.displayString(formattingManager:distanceType:localizedOpenString:)();
    v51 = v50;

    v65 = v49;
    v66 = v51;
    ModifiedContent<>.accessibilityValue<A>(_:)();

    return outlined destroy of ObservedObject<GoalWorkoutConfiguration>(v46, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyACy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeN0VGGACyAA6VStackVyAA05TupleK0VyAA4TextV_AVtGGAA022_EnvironmentKeyWritingO0VyAA0T9AlignmentOGGGAZyAA5ColorVSgGGACyAF15GoalValuePickerVAZy0G4Core0G23ConfigurationDataSourceCSgGGGAZyAA012ButtonBorderQ0VGGAA023AccessibilityAttachmentO0VGMd);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in GoalValueButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  WorkoutConfiguration.displaySymbolName.getter();
  v5 = Image.init(_internalSystemName:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMd);
  TintShapeStyle.init()();
  *a2 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAFyAD6VStackVyAD05TupleG0VyAD4TextV_ATtGGAD022_EnvironmentKeyWritingM0VyAD0R9AlignmentOGGGMd);
  v7 = a2 + v6[13];
  v8 = static HorizontalAlignment.leading.getter();
  closure #1 in closure #2 in closure #1 in GoalValueButton.body.getter(a1, v15);
  *&v14[7] = v15[0];
  *&v14[23] = v15[1];
  *&v14[39] = v15[2];
  *&v14[55] = v15[3];
  KeyPath = swift_getKeyPath();
  *(v7 + 33) = *&v14[16];
  *(v7 + 49) = *&v14[32];
  *(v7 + 65) = *&v14[48];
  *v7 = v8;
  *(v7 + 1) = 0;
  v7[16] = 1;
  *(v7 + 17) = *v14;
  *(v7 + 10) = *&v14[63];
  *(v7 + 11) = KeyPath;
  v7[96] = 0;
  *(a2 + v6[14]) = 0x4022000000000000;
  *(a2 + v6[15]) = v4;
  v10 = static Color.white.getter();
  v11 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeL0VGGACyAA6VStackVyAA05TupleI0VyAA4TextV_ATtGGAA022_EnvironmentKeyWritingM0VyAA0R9AlignmentOGGGAXyAA5ColorVSgGGMd);
  v13 = (a2 + *(result + 36));
  *v13 = v11;
  v13[1] = v10;
  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in GoalValueButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = *(a1 + 16);
  v3 = *(a1 + 32);
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {

    v4 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    v5 = [v4 localizedName];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = *(&v36 + 1);
    v7 = GoalWorkoutConfiguration.goal.getter();
    v8 = [v7 goalTypeIdentifier];

    _HKWorkoutGoalType.displayNameShort(formattingManager:)(v3, v8);
    outlined destroy of ObservedObject<GoalWorkoutConfiguration>(&v36, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd);
  }

  lazy protocol witness table accessor for type String and conformance String();
  v9 = Text.init<A>(_:)();
  v33 = v10;
  v34 = v9;
  v32 = v11;
  v35 = v12;
  v13 = GoalWorkoutConfiguration.goal.getter();
  v14 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  FIUIDistanceTypeForActivityType();

  NLSessionActivityGoal.displayString(formattingManager:distanceType:localizedOpenString:)();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  LOBYTE(v13) = v18;
  static Color.secondary.getter();
  v19 = Text.foregroundColor(_:)();
  v21 = v20;
  v23 = v22;

  outlined consume of Text.Storage(v15, v17, v13 & 1);

  static Font.body.getter();
  Font.lowercaseSmallCaps()();

  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  outlined consume of Text.Storage(v19, v21, v23 & 1);

  *a2 = v34;
  *(a2 + 8) = v33;
  *(a2 + 16) = v32 & 1;
  *(a2 + 24) = v35;
  *(a2 + 32) = v24;
  *(a2 + 40) = v26;
  *(a2 + 48) = v28 & 1;
  *(a2 + 56) = v30;
  outlined copy of Text.Storage(v34, v33, v32 & 1);

  outlined copy of Text.Storage(v24, v26, v28 & 1);

  outlined consume of Text.Storage(v24, v26, v28 & 1);

  outlined consume of Text.Storage(v34, v33, v32 & 1);
}

uint64_t outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of GoalValuePicker(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GoalValuePicker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GoalValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GoalValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GoalValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015GoalValuePickerVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd);
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type GoalValuePicker and conformance GoalValuePicker, type metadata accessor for GoalValuePicker);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GoalValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<GoalValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<GoalValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<GoalValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeN0VGGACyAA6VStackVyAA05TupleK0VyAA4TextV_AVtGGAA022_EnvironmentKeyWritingO0VyAA0T9AlignmentOGGGAZyAA5ColorVSgGGACyAF15GoalValuePickerVAZy0G4Core0G23ConfigurationDataSourceCSgGGGAZyAA012ButtonBorderQ0VGGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<GoalValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryF4ViewVyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeN0VGGAEyAA6VStackVyAA05TupleK0VyAA4TextV_AVtGGAA022_EnvironmentKeyWritingO0VyAA0T9AlignmentOGGGAZyAA5ColorVSgGGAEyAF15GoalValuePickerVAZy0G4Core0G23ConfigurationDataSourceCSgGGGMd);
    lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<GoalValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance AlignedLeadingAccessoryContentView<A, B>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined destroy of ObservedObject<GoalWorkoutConfiguration>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<GoalValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<GoalValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<GoalValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyACy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeN0VGGACyAA6VStackVyAA05TupleK0VyAA4TextV_AVtGGAA022_EnvironmentKeyWritingO0VyAA0T9AlignmentOGGGAZyAA5ColorVSgGGACyAF15GoalValuePickerVAZy0G4Core0G23ConfigurationDataSourceCSgGGGAZyAA012ButtonBorderQ0VGGAA023AccessibilityAttachmentO0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<GoalValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>();
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<GoalValuePicker, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_7(unint64_t *a1, void (*a2)(uint64_t))
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

double RaceElevationChartProperties.performanceGradientFor(userPosition:ghostPosition:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a3 <= a2)
  {
    static Color.gray.getter();
  }

  else
  {
    swift_retain_n();
    static Color.gray.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20CB5DA80;

  v5 = Color.opacity(_:)();

  *(v4 + 32) = v5;
  v6 = Color.opacity(_:)();

  *(v4 + 40) = v6;
  MEMORY[0x20F30B340](v4);
  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();

  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

void *RaceElevationChartProperties.__allocating_init(activityType:chartPoints:)(void *a1, void *a2)
{
  swift_allocObject();
  v4 = specialized RaceElevationChartProperties.init(activityType:chartPoints:)(a1, a2);

  return v4;
}

void *RaceElevationChartProperties.init(activityType:chartPoints:)(void *a1, void *a2)
{
  v3 = specialized RaceElevationChartProperties.init(activityType:chartPoints:)(a1, a2);

  return v3;
}

uint64_t closure #1 in RaceElevationChartProperties.init(activityType:chartPoints:)(void *a1)
{
  v2 = type metadata accessor for RaceChartPoint();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v21 = a1;

  specialized MutableCollection<>.sort(by:)(&v21);
  v9 = v21;
  v10 = v21[2];
  if (v10)
  {
    v11 = v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 16);
    v12(v8, v11, v2);
    RaceChartPoint.altitude_m.getter();
    v14 = v13;
    v20 = *(v3 + 8);
    v20(v8, v2);
    if (v10 > v9[2])
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v12(v5, &v11[*(v3 + 72) * (v10 - 1)], v2);

    RaceChartPoint.altitude_m.getter();
    v16 = v15;
    v20(v5, v2);
  }

  else
  {

    v14 = 0.0;
    v16 = 0.0;
  }

  result = static RaceElevationChartLayout.minimumAltitudeRange.getter();
  if (v16 - v14 < v18)
  {
    static RaceElevationChartLayout.minimumAltitudePadding.getter();
    return static RaceElevationChartLayout.minimumAltitudePadding.getter();
  }

  return result;
}

Swift::tuple_start_Double_end_Double __swiftcall RaceElevationChartProperties.chartDomainFor(userOdometer:ghostOdometer:)(Swift::Double userOdometer, Swift::Double ghostOdometer)
{
  v5 = vabdd_f64(userOdometer, ghostOdometer);
  static RaceElevationChartLayout.zoomScaleMaxDistanceBetweenRunners.getter();
  if (v5 <= v6)
  {
    if (ghostOdometer >= userOdometer)
    {
      v9 = userOdometer;
    }

    else
    {
      v9 = ghostOdometer;
    }

    v10 = v9 + v5 * 0.5;
    static RaceElevationChartLayout.zoomedDomain.getter();
    v12 = v10 - v11 * 0.5;
    static RaceElevationChartLayout.zoomedDomain.getter();
    v8 = v13 + v12;
    if (*(v2 + 40) >= v13 + v12)
    {
      v7 = v12;
      if (v12 < 0.0)
      {
        static RaceElevationChartLayout.zoomedDomain.getter();
        v8 = v14;
        v7 = 0.0;
      }
    }

    else
    {
      v7 = 0.0;
      v8 = *(v2 + 40);
    }
  }

  else
  {
    v7 = *(v2 + 32);
    v8 = *(v2 + 40);
  }

  result.end = v8;
  result.start = v7;
  return result;
}

void RaceElevationChartProperties.clostestChartPointFor(_:)(char *a1@<X8>, double a2@<D0>)
{
  v5 = type metadata accessor for RaceChartPoint();
  MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  MEMORY[0x28223BE20](v10);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v17 = *(v2 + 24);
  v43 = *(v17 + 16);
  if (v43)
  {
    v18 = v12;
    v38 = &v37 - v13;
    v40 = a1;
    v19 = 0;
    v44 = v14 + 16;
    v41 = (v14 + 8);
    v42 = v15;
    do
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
        return;
      }

      v20 = v17;
      v21 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v22 = *(v14 + 72);
      v23 = v14;
      v24 = *(v14 + 16);
      v25 = v42;
      v24(v42, v21 + v22 * v19, v18, v16);
      RaceChartPoint.odometer_m.getter();
      if (v26 >= a2)
      {
        v35 = *(v23 + 32);
        v36 = v38;
        v35(v38, v25, v18);
        v35(v40, v36, v18);
        return;
      }

      ++v19;
      v27 = v25;
      v28 = *v41;
      (*v41)(v27, v18);
      v14 = v23;
      v17 = v20;
    }

    while (v43 != v19);
    v29 = v40;
    if (!*(v20 + 16))
    {
      goto LABEL_11;
    }

    (v24)(v9, v21, v18);
    v30 = v18;
    RaceChartPoint.odometer_m.getter();
    if (v31 >= a2)
    {
      (*(v23 + 32))(v29, v9, v18);
    }

    else
    {
      v28(v9, v18);
      v32 = *(v20 + 16);
      if (!v32)
      {
        goto LABEL_11;
      }

      v33 = v39;
      (v24)(v39, v21 + v22 * (v32 - 1), v30);
      RaceChartPoint.odometer_m.getter();
      if (v34 > a2)
      {
        v28(v33, v30);
        goto LABEL_11;
      }

      (*(v23 + 32))(v29, v33, v30);
    }
  }

  else
  {
LABEL_11:
    RaceChartPoint.init(odometer_m:altitude_m:)();
  }
}

uint64_t RaceElevationChartProperties.zoomedTickValuesFor(userOdometer:ghostOdometer:)(Swift::Double a1, Swift::Double a2)
{
  v2 = RaceElevationChartProperties.chartDomainFor(userOdometer:ghostOdometer:)(a1, a2);
  start = v2.start;
  static RaceElevationChartLayout.zoomedDomain.getter();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20CB5DA70;
  *(v6 + 32) = v2.start;
  if (v2.start <= v2.end)
  {
    v8 = v5 * 0.25;
    v9 = 5;
    do
    {
      v10 = *(v6 + 24);
      if (v9 - 4 >= v10 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v9 - 3, 1, v6);
      }

      *(v6 + 16) = v9 - 3;
      *(v6 + 8 * v9) = start;
      start = v8 + start;
      ++v9;
    }

    while (start <= v2.end);
  }

  return v6;
}

uint64_t RaceElevationChartProperties.deinit()
{

  return v0;
}

uint64_t RaceElevationChartProperties.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v125 = a1;
  v9 = type metadata accessor for RaceChartPoint();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v127 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v138 = &v122 - v13;
  MEMORY[0x28223BE20](v14);
  v144 = &v122 - v15;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v143 = &v122 - v18;
  v135 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_134;
    }

    a3 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v117 = a3;
    }

    else
    {
LABEL_128:
      v117 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
    }

    v145 = v117;
    a3 = *(v117 + 2);
    if (a3 >= 2)
    {
      while (*v135)
      {
        v118 = *&v117[16 * a3];
        v119 = v117;
        v120 = *&v117[16 * a3 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(&(*v135)[v10[9] * v118], &(*v135)[v10[9] * *&v117[16 * a3 + 16]], &(*v135)[v10[9] * v120], v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v120 < v118)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = specialized _ArrayBuffer._consumeAndCreateNew()(v119);
        }

        if (a3 - 2 >= *(v119 + 2))
        {
          goto LABEL_122;
        }

        v121 = &v119[16 * a3];
        *v121 = v118;
        *(v121 + 1) = v120;
        v145 = v119;
        specialized Array.remove(at:)(a3 - 1);
        v117 = v145;
        a3 = *(v145 + 2);
        if (a3 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v20 = 0;
  v141 = (v10 + 1);
  v142 = v10 + 2;
  v140 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v134 = v10;
  v124 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v38 = v20 + 1;
    }

    else
    {
      v136 = v19;
      v129 = v6;
      v24 = v10[9];
      v5 = &(*v135)[v24 * v23];
      v132 = *v135;
      v25 = v132;
      v26 = v10[2];
      v27 = v143;
      v26(v143, &v132[v24 * v23], v9, v17);
      v28 = &v25[v24 * v22];
      v29 = v144;
      v137 = v26;
      (v26)(v144, v28, v9);
      RaceChartPoint.altitude_m.getter();
      v31 = v30;
      RaceChartPoint.altitude_m.getter();
      v33 = v32;
      v34 = v22;
      v35 = v10[1];
      a3 = v141;
      v35(v29, v9);
      v133 = v35;
      v35(v27, v9);
      v123 = v34;
      v36 = v34 + 2;
      v139 = v24;
      v37 = &v132[v24 * (v34 + 2)];
      while (1)
      {
        v38 = v136;
        if (v136 == v36)
        {
          break;
        }

        a3 = v143;
        v39 = v137;
        v137(v143, v37, v9);
        v40 = v144;
        v39(v144, v5, v9);
        RaceChartPoint.altitude_m.getter();
        v42 = v41;
        RaceChartPoint.altitude_m.getter();
        v44 = v43;
        v45 = v133;
        (v133)(v40, v9);
        v45(a3, v9);
        v10 = v134;
        ++v36;
        v37 += v139;
        v5 += v139;
        if (v31 < v33 == v42 >= v44)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v46 = v128;
      v6 = v129;
      a4 = v124;
      v22 = v123;
      if (v31 < v33)
      {
        if (v38 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v38)
        {
          v47 = v38;
          a3 = v139 * (v38 - 1);
          v5 = v38 * v139;
          v136 = v38;
          v48 = v123 * v139;
          do
          {
            if (v22 != --v47)
            {
              v129 = v6;
              v49 = *v135;
              if (!*v135)
              {
                goto LABEL_131;
              }

              v50 = *v140;
              (*v140)(v127, &v49[v48], v9, v46);
              if (v48 < a3 || &v49[v48] >= &v49[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v48 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v50(&v49[a3], v127, v9);
              v46 = v128;
              v6 = v129;
            }

            ++v22;
            a3 -= v139;
            v5 -= v139;
            v48 += v139;
          }

          while (v22 < v47);
          v10 = v134;
          a4 = v124;
          v22 = v123;
          v38 = v136;
        }
      }
    }

    v51 = v135[1];
    if (v38 < v51)
    {
      if (__OFSUB__(v38, v22))
      {
        goto LABEL_124;
      }

      if (v38 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if (v22 + a4 >= v51)
        {
          v5 = v135[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v38 != v5)
        {
          break;
        }
      }
    }

    v5 = v38;
    if (v38 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v128;
    }

    else
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v128 + 2) + 1, 1, v128);
    }

    a3 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a3 + 1;
    if (a3 >= v52 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), a3 + 1, 1, v21);
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a3];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v125;
    if (!*v125)
    {
      goto LABEL_133;
    }

    v130 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v53)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
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
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v135)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a3 + 32];
        v95 = *&v21[16 * v5 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(&(*v135)[v10[9] * v94], &(*v135)[v10[9] * *&v21[16 * v5 + 32]], &(*v135)[v10[9] * v95], v55);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = specialized _ArrayBuffer._consumeAndCreateNew()(v93);
        }

        if (a3 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a3];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v145 = v93;
        specialized Array.remove(at:)(v5);
        v21 = v145;
        v53 = *(v145 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v135[1];
    v20 = v130;
    a4 = v124;
    if (v130 >= v19)
    {
      goto LABEL_95;
    }
  }

  v129 = v6;
  v97 = *v135;
  v98 = v10[9];
  v139 = v10[2];
  v99 = &v97[v98 * (v38 - 1)];
  v100 = v22;
  v101 = -v98;
  v123 = v100;
  v102 = (v100 - v38);
  v137 = v97;
  v126 = v98;
  v103 = &v97[v38 * v98];
  v130 = v5;
LABEL_85:
  v136 = v38;
  v131 = v103;
  v132 = v102;
  v104 = v103;
  v133 = v99;
  while (1)
  {
    v105 = v143;
    v106 = v139;
    (v139)(v143, v104, v9, v17);
    v107 = v144;
    v106(v144, v99, v9);
    RaceChartPoint.altitude_m.getter();
    v109 = v108;
    RaceChartPoint.altitude_m.getter();
    v111 = v110;
    v112 = *v141;
    (*v141)(v107, v9);
    v113 = v105;
    a3 = v9;
    v112(v113, v9);
    if (v109 >= v111)
    {
LABEL_84:
      v38 = v136 + 1;
      v99 = &v133[v126];
      v102 = v132 - 1;
      v5 = v130;
      v103 = &v131[v126];
      if (v136 + 1 != v130)
      {
        goto LABEL_85;
      }

      v6 = v129;
      v10 = v134;
      v22 = v123;
      if (v130 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v137)
    {
      break;
    }

    v114 = *v140;
    v115 = v138;
    (*v140)(v138, v104, v9);
    swift_arrayInitWithTakeFrontToBack();
    v114(v99, v115, v9);
    v99 += v101;
    v104 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void *specialized RaceElevationChartProperties.init(activityType:chartPoints:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for RaceChartPoint();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[8] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.682352941 green:0.705882353 blue:0.749019608 alpha:1.0];
  v3[2] = a1;
  v3[3] = a2;
  v10 = a2[2];
  if (v10)
  {
    (*(v7 + 16))(v9, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * (v10 - 1), v6);
    v11 = a1;

    RaceChartPoint.odometer_m.getter();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v14 = a1;

    v13 = 0;
  }

  v3[4] = 0;
  v3[5] = v13;
  closure #1 in RaceElevationChartProperties.init(activityType:chartPoints:)(a2);
  v16 = v15;
  v18 = v17;

  v3[6] = v16;
  v3[7] = v18;
  v19 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
  v20 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.0 green:0.62745098 blue:0.525490196 alpha:1.0];
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
  v21 = [v20 colorWithAlphaComponent_];

  v3[9] = Color.init(uiColor:)();
  v22 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.407843137 blue:0.321568627 alpha:1.0];
  v23 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.2 green:0.0823529412 blue:0.0666666667 alpha:1.0];
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.407843137 blue:0.321568627 alpha:1.0];
  v24 = [v23 colorWithAlphaComponent_];

  v3[10] = Color.init(uiColor:)();
  return v3;
}

uint64_t WorkoutConfigurationFilterButton.init(filterType:filterTypes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WorkoutConfigurationFilterButton();
  v7 = a3 + v6[6];
  State.init(wrappedValue:)();
  *v7 = v11;
  *(v7 + 8) = v12;
  v8 = v6[7];
  FIUIDeviceDependentLayoutMetric(junior40:senior44:aloeSmall41:aloeBig45:agave49:)();
  *(a3 + v8) = v9;
  result = outlined init with take of Binding<WorkoutConfigurationFilterType>(a1, a3);
  *(a3 + v6[5]) = a2;
  return result;
}

uint64_t type metadata accessor for WorkoutConfigurationFilterButton()
{
  result = type metadata singleton initialization cache for WorkoutConfigurationFilterButton;
  if (!type metadata singleton initialization cache for WorkoutConfigurationFilterButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of Binding<WorkoutConfigurationFilterType>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D23ConfigurationFilterTypeOGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutConfigurationFilterButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  v34 = v2;
  v35 = v3;
  MEMORY[0x28223BE20](v2);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WorkoutConfigurationFilterButton();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = v8;
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AA6SpacerVAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAA19SymbolRenderingModeVSgGGAUyAA5ColorVSgGGtGGGMd);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v11 = &v26 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0VyACyAA4TextV07WorkoutB017HeaderHyphenationVG_AA6SpacerVACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAA19SymbolRenderingModeVSgGGAYyAA5ColorVSgGGtGGG_AA05PlainiG0VQo_AA011_ForegroundgU0VyA9_GGMd);
  MEMORY[0x28223BE20](v37);
  v27 = &v26 - v12;
  v28 = v1;
  v29 = v9;
  outlined init with copy of WorkoutConfigurationFilterButton(v1, v9);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  outlined init with take of WorkoutConfigurationFilterButton(v9, v14 + v13);
  v38 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AA6SpacerVAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGASyAA5ColorVSgGGtGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, HeaderHyphenation>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Text, HeaderHyphenation>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AA6SpacerVAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGASyAA5ColorVSgGGtGGMd);
  Button.init(action:label:)();
  v15 = v31;
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, HeaderHyphenation>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(ModifiedContent<Text, HeaderHyphenation>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AA6SpacerVAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAA19SymbolRenderingModeVSgGGAUyAA5ColorVSgGGtGGGMd);
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_2(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  v16 = v27;
  v17 = v30;
  v18 = v34;
  View.buttonStyle<A>(_:)();
  (*(v35 + 8))(v15, v18);
  (*(v32 + 8))(v11, v17);
  *(v16 + *(v37 + 36)) = static Color.white.getter();
  v19 = v28;
  v20 = v28 + *(v6 + 32);
  v21 = *v20;
  v22 = *(v20 + 8);
  v39 = v21;
  v40 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v23 = v29;
  outlined init with copy of WorkoutConfigurationFilterButton(v19, v29);
  v24 = swift_allocObject();
  outlined init with take of WorkoutConfigurationFilterButton(v23, v24 + v13);
  type metadata accessor for WorkoutConfigurationFilterPicker();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_2(&lazy protocol witness table cache variable for type WorkoutConfigurationFilterPicker and conformance WorkoutConfigurationFilterPicker, type metadata accessor for WorkoutConfigurationFilterPicker);
  View.sheet<A>(isPresented:onDismiss:content:)();

  return sub_20C689A50(v16);
}

uint64_t closure #1 in WorkoutConfigurationFilterButton.body.getter()
{
  type metadata accessor for WorkoutConfigurationFilterButton();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  return State.wrappedValue.setter();
}

uint64_t outlined init with copy of WorkoutConfigurationFilterButton(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutConfigurationFilterButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutConfigurationFilterButton(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutConfigurationFilterButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in WorkoutConfigurationFilterButton.body.getter()
{
  type metadata accessor for WorkoutConfigurationFilterButton();

  return closure #1 in WorkoutConfigurationFilterButton.body.getter();
}

uint64_t closure #2 in WorkoutConfigurationFilterButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AA6SpacerVAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAA19SymbolRenderingModeVSgGGAWyAA5ColorVSgGGtGGMd);
  return closure #1 in closure #2 in WorkoutConfigurationFilterButton.body.getter(a1, (a2 + *(v4 + 44)));
}

uint64_t closure #1 in closure #2 in WorkoutConfigurationFilterButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a1;
  v55 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = &v50 - v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGMd) - 8;
  MEMORY[0x28223BE20](v54);
  v53 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v50 - v6);
  v8 = type metadata accessor for WorkoutConfigurationFilterType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D23ConfigurationFilterTypeOGMd);
  MEMORY[0x20F30B100](v12);
  v13 = WorkoutConfigurationFilterType.displayName.getter();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  v58 = v13;
  v59 = v15;
  lazy protocol witness table accessor for type String and conformance String();
  v16 = StringProtocol.localizedUppercase.getter();
  v18 = v17;

  v56 = v16;
  v57 = v18;
  v19 = Text.init<A>(_:)();
  v21 = v20;
  LOBYTE(v8) = v22;
  static Font.footnote.getter();
  v23 = Text.font(_:)();
  v25 = v24;
  v27 = v26;

  outlined consume of Text.Storage(v19, v21, v8 & 1);

  static Font.Weight.medium.getter();
  v28 = Text.fontWeight(_:)();
  v30 = v29;
  v51 = v31;
  v33 = v32;
  outlined consume of Text.Storage(v23, v25, v27 & 1);

  v34 = Image.init(systemName:)();
  type metadata accessor for WorkoutConfigurationFilterButton();
  v35 = type metadata accessor for Font.Design();
  v36 = v52;
  (*(*(v35 - 8) + 56))(v52, 1, 1, v35);
  v37 = static Font.system(size:weight:design:)();
  _s7SwiftUI4FontV6DesignOSgWOhTm_8(v36, &_s7SwiftUI4FontV6DesignOSgMd);
  KeyPath = swift_getKeyPath();
  v39 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGMd) + 36));
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd) + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v41 = type metadata accessor for SymbolRenderingMode();
  (*(*(v41 - 8) + 56))(v39 + v40, 0, 1, v41);
  *v39 = swift_getKeyPath();
  *v7 = v34;
  v7[1] = KeyPath;
  v7[2] = v37;
  v42 = static Color.white.getter();
  v43 = swift_getKeyPath();
  v44 = v53;
  v45 = (v7 + *(v54 + 44));
  *v45 = v43;
  v45[1] = v42;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>(v7, v44);
  v46 = v55;
  *v55 = v28;
  v46[1] = v30;
  LOBYTE(v42) = v51 & 1;
  *(v46 + 16) = v51 & 1;
  v46[3] = v33;
  v46[4] = 0;
  *(v46 + 40) = 1;
  v47 = v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVG_AA6SpacerVACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAA19SymbolRenderingModeVSgGGAOyAA5ColorVSgGGtMd);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>(v44, v47 + *(v48 + 64));
  outlined copy of Text.Storage(v28, v30, v42);

  _s7SwiftUI4FontV6DesignOSgWOhTm_8(v7, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGMd);
  _s7SwiftUI4FontV6DesignOSgWOhTm_8(v44, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGMd);
  outlined consume of Text.Storage(v28, v30, v42);
}

uint64_t closure #3 in WorkoutConfigurationFilterButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for WorkoutConfigurationFilterPicker();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D23ConfigurationFilterTypeOGMd);
  Binding.projectedValue.getter();
  v5 = *(a1 + *(type metadata accessor for WorkoutConfigurationFilterButton() + 20));
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  *(a2 + *(v4 + 24)) = v5;
}

uint64_t objectdestroyTm_52()
{
  v1 = *(type metadata accessor for WorkoutConfigurationFilterButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D23ConfigurationFilterTypeOGMd) + 32);
  v4 = type metadata accessor for WorkoutConfigurationFilterType();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in WorkoutConfigurationFilterButton.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutConfigurationFilterButton() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #3 in WorkoutConfigurationFilterButton.body.getter(v4, a1);
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, HeaderHyphenation>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2)
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

void type metadata completion function for WorkoutConfigurationFilterButton()
{
  type metadata accessor for Binding<WorkoutConfigurationFilterType>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Set<WorkoutConfigurationFilterType>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for State<Bool>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Binding<WorkoutConfigurationFilterType>()
{
  if (!lazy cache variable for type metadata for Binding<WorkoutConfigurationFilterType>)
  {
    type metadata accessor for WorkoutConfigurationFilterType();
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<WorkoutConfigurationFilterType>);
    }
  }
}

uint64_t _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s7SwiftUI4FontV6DesignOSgWOhTm_8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t closure #1 in static RaceChartViewBuilder.chartFor(_:chartProperties:userPosition:ghostPosition:)@<X0>(const char *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, Swift::Double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, double a13@<D6>, Swift::Double a14@<D7>)
{
  v504 = a5;
  v500 = a4;
  v496 = a3;
  v539 = a1;
  v510 = a6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAE7opacityyQrSdFQOyA8__Qo_AeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo_QPGMd);
  MEMORY[0x28223BE20](v23 - 8);
  v468 = &v459 - v24;
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE7opacityyQrSdFQOyAcAE4mask7contentQrqd__yXE_tAaBRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA12BuilderTupleVyAcAE15foregroundStyleyQrqd__AG05ShapeS0Rd__lFQOyAA8AreaMarkV_AG5ColorVQo__AcAEARyQrqd__AgSRd__lFQOyAcAE04lineS0yQrAG06StrokeS0VFQOyAA04LineV0V_Qo__AWQo_QPGGG_AA09RectangleV0VQo__Qo_Md);
  v462 = *(v463 - 8);
  MEMORY[0x28223BE20](v463);
  v461 = &v459 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v467 = &v459 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalVyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_AEyA14__AgAE6symbolA15_Qrqd__yXE_tAJ4ViewRd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA24_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo_QPGQPGAEyA10__AgAE7opacityyQrSdFQOyA10__Qo_A14_QPGGMd);
  MEMORY[0x28223BE20](v28 - 8);
  v481 = &v459 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo_ACyA12__AeAE6symbolA13_Qrqd__yXE_tAH4ViewRd__lFQOyAA0oU0V_AH08ModifiedE0VyAH04FillS4ViewVyAH6CircleVAvH0xS4ViewVyA22_AvH9EmptyViewVGGAH12_FrameLayoutVGQo_QPGQPGMd);
  MEMORY[0x28223BE20](v30 - 8);
  v479 = &v459 - v31;
  v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo__Qo__AcAE6symbolAPQrqd__yXE_tAE4ViewRd__lFQOyAA05PointL0V_AE08ModifiedC0VyAE04FilljO0VyAE6CircleVAmE0hjO0VyAymE05EmptyO0VGGAE12_FrameLayoutVGQo_tMd);
  MEMORY[0x28223BE20](v477);
  v476 = &v459 - v32;
  v471 = type metadata accessor for PointMark();
  v470 = *(v471 - 8);
  MEMORY[0x28223BE20](v471);
  v469 = &v459 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE6symbolADQrqd__yXE_t7SwiftUI4ViewRd__lFQOyAA9PointMarkV_AE08ModifiedC0VyAE09FillShapeG0VyAE6CircleVAE5ColorVAE06StrokelG0VyAnpE05EmptyG0VGGAE12_FrameLayoutVGQo_Md);
  v474 = *(v475 - 8);
  MEMORY[0x28223BE20](v475);
  v472 = &v459 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v483 = &v459 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeG0VFQOyAeAE010foregroundG0yQrqd__AG05ShapeG0Rd__lFQOyAA8RuleMarkV_AG5ColorVQo__Qo__AeAE6symbolARQrqd__yXE_tAG4ViewRd__lFQOyAA05PointN0V_AG08ModifiedE0VyAG04FilllQ0VyAG6CircleVAoG0jlQ0VyA_AoG05EmptyQ0VGGAG12_FrameLayoutVGQo_QPGMd);
  MEMORY[0x28223BE20](v37 - 8);
  v478 = &v459 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v473 = &v459 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAEAQyQrqd__AhRRd__lFQOyAJyANSiAPyACyAT_A1_QPGGG_AH14LinearGradientVQo_AJySaySdGSdAeAE7opacityyQrSdFQOyAeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo__Qo_GSgA20_ACyA20__AeAE10annotation8position9alignment7spacingAGQrAA18AnnotationPositionV_AH9AlignmentV0M8Graphics7CGFloatVSgqd__yXEtAH4ViewRd__lFQOyAeAE6symbolA37_Qrqd__yXE_tAHA36_Rd__lFQOyAA0oU0V_AH08ModifiedE0VyAH04FillS4ViewVyAH6CircleVAvH0xS4ViewVyA45_AvH9EmptyViewVGGAH12_FrameLayoutVGQo__A41_yAH5ImageVAH011_ForegroundR8ModifierVyAVGGQo_QPGQPGMd);
  MEMORY[0x28223BE20](v41 - 8);
  v516 = &v459 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeG0VFQOyAeAE010foregroundG0yQrqd__AG05ShapeG0Rd__lFQOyAA8RuleMarkV_AG5ColorVQo__Qo__AeAE10annotation8position9alignment7spacing7contentQrAA18AnnotationPositionV_AG9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAG4ViewRd__lFQOyAeAE6symbolA4_Qrqd__yXE_tAGA3_Rd__lFQOyAA05PointN0V_AG08ModifiedE0VyAG04FillL4ViewVyAG6CircleVAoG0jL4ViewVyA12_AoG9EmptyViewVGGAG12_FrameLayoutVGQo__A8_yAG5ImageVAG011_ForegroundG8ModifierVyAOGGQo_QPGMd);
  MEMORY[0x28223BE20](v43 - 8);
  v499 = &v459 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v498 = &v459 - v46;
  v495 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySdGSd6Charts12ChartContentPAEE7opacityyQrSdFQOyAgEE9lineStyleyQrAA06StrokeJ0VFQOyAgEE010foregroundJ0yQrqd__AA05ShapeJ0Rd__lFQOyAE8RuleMarkV_AA5ColorVQo__Qo__Qo_GMd);
  v494 = *(v495 - 8);
  MEMORY[0x28223BE20](v495);
  v487 = &v459 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySdGSd6Charts12ChartContentPAEE7opacityyQrSdFQOyAgEE9lineStyleyQrAA06StrokeJ0VFQOyAgEE010foregroundJ0yQrqd__AA05ShapeJ0Rd__lFQOyAE8RuleMarkV_AA5ColorVQo__Qo__Qo_GSgMd);
  MEMORY[0x28223BE20](v48 - 8);
  v515 = &v459 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v513 = &v459 - v51;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH8AreaMarkV_AH0H7ContentPAHE9lineStyleyQrAA06StrokeR0VFQOyAH04LineO0V_Qo_QPGGGMd);
  v492 = *(v493 - 8);
  MEMORY[0x28223BE20](v493);
  v491 = &v459 - v52;
  v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAE7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA12BuilderTupleVyAA8AreaMarkV_AcAE04lineE0yQrAE06StrokeE0VFQOyAA04LineS0V_Qo_QPGGG_AE14LinearGradientVQo_Md);
  v497 = *(v514 - 8);
  MEMORY[0x28223BE20](v514);
  v512 = &v459 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v511 = &v459 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalVyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGMd);
  MEMORY[0x28223BE20](v56 - 8);
  v505 = &v459 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalVyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGACyAEyA10__A14_AEyA14__A58_QPGQPGAEyA10__AgAEA23_yQrSdFQOyA10__Qo_A14_QPGGGMd);
  MEMORY[0x28223BE20](v58 - 8);
  v509 = &v459 - v59;
  v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE4mask7contentQrqd__yXE_tAaBRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA12BuilderTupleVyAcAE15foregroundStyleyQrqd__AF05ShapeR0Rd__lFQOyAA8AreaMarkV_AF5ColorVQo__AcAEAQyQrqd__AfRRd__lFQOyAcAE04lineR0yQrAF06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AcAEAXyQrAZFQOyAcAEAQyQrqd__AfRRd__lFQOyAA04RuleU0V_AVQo__Qo_tMd);
  MEMORY[0x28223BE20](v485);
  v484 = &v459 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo_QPGMd);
  MEMORY[0x28223BE20](v61 - 8);
  v486 = &v459 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySdGMd);
  MEMORY[0x28223BE20](v63 - 8);
  v519 = &v459 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v524 = &v459 - v66;
  MEMORY[0x28223BE20](v67);
  v520 = &v459 - v68;
  v69 = type metadata accessor for RuleMark();
  v523 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v506 = &v459 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v537 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md);
  v508 = *(v537 - 8);
  MEMORY[0x28223BE20](v537);
  v507 = &v459 - v71;
  v525 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo__Qo_Md);
  v521 = *(v525 - 8);
  MEMORY[0x28223BE20](v525);
  v482 = &v459 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v535 = &v459 - v74;
  MEMORY[0x28223BE20](v75);
  v526 = &v459 - v76;
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH0H7ContentPAHE15foregroundStyleyQrqd__AA05ShapeP0Rd__lFQOyAH8AreaMarkV_AA5ColorVQo__AnHEAOyQrqd__AaPRd__lFQOyAnHE04lineP0yQrAA06StrokeP0VFQOyAH04LineS0V_Qo__ATQo_QPGGGMd);
  v522 = *(v518 - 1);
  MEMORY[0x28223BE20](v518);
  v517 = &v459 - v77;
  v542 = type metadata accessor for RaceChartPoint();
  v541 = *(v542 - 8);
  MEMORY[0x28223BE20](v542);
  v503 = &v459 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v81 = &v459 - v80;
  MEMORY[0x28223BE20](v82);
  v501 = &v459 - v83;
  MEMORY[0x28223BE20](v84);
  v488 = &v459 - v85;
  MEMORY[0x28223BE20](v86);
  v502 = &v459 - v87;
  MEMORY[0x28223BE20](v88);
  v90 = &v459 - v89;
  MEMORY[0x28223BE20](v91);
  v532 = &v459 - v92;
  MEMORY[0x28223BE20](v93);
  v95 = &v459 - v94;
  MEMORY[0x28223BE20](v96);
  v540 = &v459 - v97;
  MEMORY[0x28223BE20](v98);
  v490 = &v459 - v99;
  MEMORY[0x28223BE20](v100);
  v102 = &v459 - v101;
  MEMORY[0x28223BE20](v103);
  v536 = &v459 - v104;
  MEMORY[0x28223BE20](v105);
  v534 = &v459 - v106;
  MEMORY[0x28223BE20](v107);
  v109 = &v459 - v108;
  v529 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE4mask7contentQrqd__yXE_tAaBRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA12BuilderTupleVyAcAE15foregroundStyleyQrqd__AF05ShapeR0Rd__lFQOyAA8AreaMarkV_AF5ColorVQo__AcAEAQyQrqd__AfRRd__lFQOyAcAE04lineR0yQrAF06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo_Md);
  v528 = *(v529 - 8);
  MEMORY[0x28223BE20](v529);
  v466 = &v459 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v111);
  v460 = &v459 - v112;
  MEMORY[0x28223BE20](v113);
  v480 = &v459 - v114;
  MEMORY[0x28223BE20](v115);
  v489 = &v459 - v116;
  MEMORY[0x28223BE20](v117);
  v527 = &v459 - v118;
  MEMORY[0x28223BE20](v119);
  v530 = &v459 - v120;
  MEMORY[0x28223BE20](v121);
  v531 = &v459 - v122;
  v123 = type metadata accessor for RacePosition();
  v124 = *(v123 - 8);
  v125 = MEMORY[0x28223BE20](v123);
  v127 = &v459 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v124 + 16))(v127, v539, v123, v125);
  v465 = v124;
  v128 = *(v124 + 88);
  v464 = v127;
  v539 = v123;
  v129 = v128(v127, v123);
  v130 = v129 == *MEMORY[0x277D7DF68];
  v538 = a2;
  v533 = v69;
  if (v130)
  {
    static RaceElevationChartLayout.zoomedDomain.getter();
    v132 = v131;
    v133 = static RaceElevationChartLayout.pointsPerZoomedWindow.getter();
    v134 = *(a2 + 3);
    v135 = *(v134 + 16);
    if (!v135)
    {
      v141 = MEMORY[0x277D84F90];
LABEL_42:
      v549 = v141;
      v186 = swift_allocObject();
      v187 = v538;
      *(v186 + 16) = v538;
      *(v186 + 24) = a10;

      v539 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore14RaceChartPointVGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts4PlotVyAA12BuilderTupleVyAA12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAA8AreaMarkV_AI5ColorVQo__AgAEAHyQrqd__AiJRd__lFQOyAgAE04lineH0yQrAI06StrokeH0VFQOyAA04LineM0V_Qo__ANQo_QPGGMd);
      lazy protocol witness table accessor for type [RaceChartPoint] and conformance [A](&lazy protocol witness table cache variable for type [RaceChartPoint] and conformance [A], &_sSay11WorkoutCore14RaceChartPointVGMd);
      lazy protocol witness table accessor for type [RaceChartPoint] and conformance [A](&lazy protocol witness table cache variable for type Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>> and conformance Plot<A>, &_s6Charts4PlotVyAA12BuilderTupleVyAA12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAA8AreaMarkV_AI5ColorVQo__AgAEAHyQrqd__AiJRd__lFQOyAgAE04lineH0yQrAI06StrokeH0VFQOyAA04LineM0V_Qo__ANQo_QPGGMd);
      v188 = lazy protocol witness table accessor for type RaceChartPoint and conformance RaceChartPoint();
      v189 = v517;
      v190 = ForEach<>.init(_:content:)();
      v540 = &v459;
      MEMORY[0x28223BE20](v190);
      *(&v459 - 4) = a10;
      *(&v459 - 3) = a11;
      v457 = v187;
      type metadata accessor for RectangleMark();
      lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
      v191 = v518;
      ChartContent.mask<A>(content:)();
      (*(v522 + 8))(v189, v191);
      RaceElevationChartProperties.chartDomainFor(userOdometer:ghostOdometer:)(a9, a14);
      v192 = v534;
      RaceElevationChartProperties.clostestChartPointFor(_:)(v534, a12);
      v193 = v490;
      RaceElevationChartProperties.clostestChartPointFor(_:)(v490, a13);
      MEMORY[0x28223BE20](v194);
      v458 = v193;

      specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in static RaceChartMarkProvider.coloredRouteElevationBetweenMarkers(_:behindPosition:aheadPosition:visibleDomain:gradient:), (&v459 - 4), v134);
      v548 = v195;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts4PlotVyAA12BuilderTupleVyAA8AreaMarkV_AA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeJ0VFQOyAA04LineF0V_Qo_QPGGMd);
      lazy protocol witness table accessor for type [RaceChartPoint] and conformance [A](&lazy protocol witness table cache variable for type Plot<BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>> and conformance Plot<A>, &_s6Charts4PlotVyAA12BuilderTupleVyAA8AreaMarkV_AA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeJ0VFQOyAA04LineF0V_Qo_QPGGMd);
      v457 = v188;
      v196 = v491;
      ForEach<>.init(_:content:)();
      v197 = v496[1];
      v550 = *v496;
      v551 = v197;
      v552 = *(v496 + 4);
      lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
      v198 = v493;
      ChartContent.foregroundStyle<A>(_:)();
      (*(v492 + 8))(v196, v198);
      v199 = v541 + 8;
      v200 = *(v541 + 8);
      v201 = v542;
      (v200)(v193, v542);
      v541 = v199;
      (v200)(v192, v201);
      static RaceElevationChartLayout.zoomScaleMaxDistanceBetweenRunners.getter();
      v539 = v200;
      if (vabdd_f64(a9, a14) > v202)
      {
        v203 = 1;
        v204 = v538;
        v205 = v513;
        v206 = v495;
        v207 = v494;
LABEL_46:
        (*(v207 + 56))(v205, v203, 1, v206);
        [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.568627451 green:0.568627451 blue:0.568627451 alpha:1.0];
        v536 = Color.init(uiColor:)();
        v213 = v534;
        RaceElevationChartProperties.clostestChartPointFor(_:)(v534, a14);
        RaceChartPoint.odometer_m.getter();
        v215 = v214;
        v216 = *(v204 + 48);
        RaceChartPoint.altitude_m.getter();
        v218 = v217;
        LocalizedStringKey.init(stringLiteral:)();
        v553 = v215;
        static PlottableValue.value(_:_:)();

        LocalizedStringKey.init(stringLiteral:)();
        v553 = v216;
        static PlottableValue.value(_:_:)();

        LocalizedStringKey.init(stringLiteral:)();
        v553 = v218;
        static PlottableValue.value(_:_:)();

        v219 = v506;
        RuleMark.init<A, B>(x:yStart:yEnd:)();
        v553 = v536;
        v220 = MEMORY[0x277CE0F78];
        v221 = MEMORY[0x277CBB450];
        v222 = MEMORY[0x277CE0F60];
        v223 = v507;
        v224 = v533;
        ChartContent.foregroundStyle<A>(_:)();
        (*(v523 + 8))(v219, v224);
        StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
        v543 = v224;
        v544 = v220;
        v545 = v221;
        v546 = v222;
        swift_getOpaqueTypeConformance2();
        v225 = v526;
        v226 = v537;
        ChartContent.lineStyle(_:)();
        outlined destroy of StrokeStyle(&v553);

        (*(v508 + 8))(v223, v226);
        (v539)(v213, v542);
        v227 = v498;
        static RaceChartMarkProvider.onRoutePositionMark(x:chartProperties:performanceColor:pointOuterColor:)(v204, v500, v504, v498, a9);
        v228 = v530;
        (*(v528 + 16))(v530, v527, v529);
        v543 = v228;
        v229 = v497;
        v230 = v512;
        v231 = v511;
        (*(v497 + 16))(v512, v511, v514);
        v544 = v230;
        v232 = v513;
        v233 = v515;
        outlined init with copy of BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>(v513, v515, &_s7SwiftUI7ForEachVySaySdGSd6Charts12ChartContentPAEE7opacityyQrSdFQOyAgEE9lineStyleyQrAA06StrokeJ0VFQOyAgEE010foregroundJ0yQrqd__AA05ShapeJ0Rd__lFQOyAE8RuleMarkV_AA5ColorVQo__Qo__Qo_GSgMd);
        v545 = v233;
        v234 = v521;
        v235 = v535;
        v236 = v225;
        v237 = v525;
        (*(v521 + 16))(v535, v225, v525);
        v546 = v235;
        v238 = v499;
        outlined init with copy of BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>(v227, v499, &_s6Charts12BuilderTupleVyAA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeG0VFQOyAeAE010foregroundG0yQrqd__AG05ShapeG0Rd__lFQOyAA8RuleMarkV_AG5ColorVQo__Qo__AeAE10annotation8position9alignment7spacing7contentQrAA18AnnotationPositionV_AG9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAG4ViewRd__lFQOyAeAE6symbolA4_Qrqd__yXE_tAGA3_Rd__lFQOyAA05PointN0V_AG08ModifiedE0VyAG04FillL4ViewVyAG6CircleVAoG0jL4ViewVyA12_AoG9EmptyViewVGGAG12_FrameLayoutVGQo__A8_yAG5ImageVAG011_ForegroundG8ModifierVyAOGGQo_QPGMd);
        v547 = v238;
        _s6Charts19ChartContentBuilderV10buildBlockyQrxxQpRvzAA0bC0RzlFZAaEPAAE4mask7contentQrqd__yXE_tAaERd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA0D5TupleVyAfAE15foregroundStyleyQrqd__AI05ShapeT0Rd__lFQOyAA8AreaMarkV_AI5ColorVQo__AfAEATyQrqd__AiURd__lFQOyAfAE04lineT0yQrAI06StrokeT0VFQOyAA04LineW0V_Qo__AYQo_QPGGG_AA09RectangleW0VQo__AfAEATyQrqd__AiURd__lFQOyAKyAOSiAQyASyAW_A4_QPGGG_AI14LinearGradientVQo_AKySaySdGSdAfAE7opacityyQrSdFQOyAfAEA_yQrA1_FQOyAfAEATyQrqd__AiURd__lFQOyAA04RuleW0V_AYQo__Qo__Qo_GSgA23_ASyA23__AfAE10annotation8position9alignment7spacingAHQrAA18AnnotationPositionV_AI9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAI4ViewRd__lFQOyAfAE6symbolA40_Qrqd__yXE_tAIA39_Rd__lFQOyAA0pW0V_AI08ModifiedC0VyAI04FillU4ViewVyAI6CircleVAyI0zU4ViewVyA48_AyI9EmptyViewVGGAI12_FrameLayoutVGQo__A44_yAI5ImageVAI011_ForegroundT8ModifierVyAYGGQo_QPGQP_Tt1g5(&v543, v516);
        outlined destroy of BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>(v227, &_s6Charts12BuilderTupleVyAA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeG0VFQOyAeAE010foregroundG0yQrqd__AG05ShapeG0Rd__lFQOyAA8RuleMarkV_AG5ColorVQo__Qo__AeAE10annotation8position9alignment7spacing7contentQrAA18AnnotationPositionV_AG9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAG4ViewRd__lFQOyAeAE6symbolA4_Qrqd__yXE_tAGA3_Rd__lFQOyAA05PointN0V_AG08ModifiedE0VyAG04FillL4ViewVyAG6CircleVAoG0jL4ViewVyA12_AoG9EmptyViewVGGAG12_FrameLayoutVGQo__A8_yAG5ImageVAG011_ForegroundG8ModifierVyAOGGQo_QPGMd);
        v239 = *(v234 + 8);
        v239(v236, v237);
        outlined destroy of BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>(v232, &_s7SwiftUI7ForEachVySaySdGSd6Charts12ChartContentPAEE7opacityyQrSdFQOyAgEE9lineStyleyQrAA06StrokeJ0VFQOyAgEE010foregroundJ0yQrqd__AA05ShapeJ0Rd__lFQOyAE8RuleMarkV_AA5ColorVQo__Qo__Qo_GSgMd);
        v240 = *(v229 + 8);
        v241 = v514;
        v240(v231, v514);
        v242 = *(v528 + 8);
        v243 = v529;
        v242(v527, v529);
        outlined destroy of BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>(v238, &_s6Charts12BuilderTupleVyAA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeG0VFQOyAeAE010foregroundG0yQrqd__AG05ShapeG0Rd__lFQOyAA8RuleMarkV_AG5ColorVQo__Qo__AeAE10annotation8position9alignment7spacing7contentQrAA18AnnotationPositionV_AG9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAG4ViewRd__lFQOyAeAE6symbolA4_Qrqd__yXE_tAGA3_Rd__lFQOyAA05PointN0V_AG08ModifiedE0VyAG04FillL4ViewVyAG6CircleVAoG0jL4ViewVyA12_AoG9EmptyViewVGGAG12_FrameLayoutVGQo__A8_yAG5ImageVAG011_ForegroundG8ModifierVyAOGGQo_QPGMd);
        v239(v535, v237);
        outlined destroy of BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>(v515, &_s7SwiftUI7ForEachVySaySdGSd6Charts12ChartContentPAEE7opacityyQrSdFQOyAgEE9lineStyleyQrAA06StrokeJ0VFQOyAgEE010foregroundJ0yQrqd__AA05ShapeJ0Rd__lFQOyAE8RuleMarkV_AA5ColorVQo__Qo__Qo_GSgMd);
        v240(v512, v241);
        v242(v530, v243);
        v244 = v505;
        outlined init with take of BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>(v516, v505, &_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAEAQyQrqd__AhRRd__lFQOyAJyANSiAPyACyAT_A1_QPGGG_AH14LinearGradientVQo_AJySaySdGSdAeAE7opacityyQrSdFQOyAeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo__Qo_GSgA20_ACyA20__AeAE10annotation8position9alignment7spacingAGQrAA18AnnotationPositionV_AH9AlignmentV0M8Graphics7CGFloatVSgqd__yXEtAH4ViewRd__lFQOyAeAE6symbolA37_Qrqd__yXE_tAHA36_Rd__lFQOyAA0oU0V_AH08ModifiedE0VyAH04FillS4ViewVyAH6CircleVAvH0xS4ViewVyA45_AvH9EmptyViewVGGAH12_FrameLayoutVGQo__A41_yAH5ImageVAH011_ForegroundR8ModifierVyAVGGQo_QPGQPGMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalV7StorageOyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceF5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeT0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineT0yQrAL06StrokeT0VFQOyAA04LineW0V_Qo__AZQo_QPGGG_AA09RectangleW0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleW0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0O8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0qW0V_AL08ModifiedG0VyAL04FillU4ViewVyAL6CircleVAzL0zU4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundT8ModifierVyAZGGQo_QPGQPG_GMd);
LABEL_62:
        swift_storeEnumTagMultiPayload();
        v295 = v244;
        v296 = v509;
        outlined init with take of BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>(v295, v509, &_s6Charts18BuilderConditionalVyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalV7StorageOyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceF5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeT0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineT0yQrAL06StrokeT0VFQOyAA04LineW0V_Qo__AZQo_QPGGG_AA09RectangleW0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleW0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0O8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0qW0V_AL08ModifiedG0VyAL04FillU4ViewVyAL6CircleVAzL0zU4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundT8ModifierVyAZGGQo_QPGQPGGACyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGG_GMd);
        swift_storeEnumTagMultiPayload();
        outlined init with take of BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>(v296, v510, &_s6Charts18BuilderConditionalVyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGACyAEyA10__A14_AEyA14__A58_QPGQPGAEyA10__AgAEA23_yQrSdFQOyA10__Qo_A14_QPGGGMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalV7StorageOyACyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceF5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeT0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineT0yQrAL06StrokeT0VFQOyAA04LineW0V_Qo__AZQo_QPGGG_AA09RectangleW0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleW0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0O8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0qW0V_AL08ModifiedG0VyAL04FillU4ViewVyAL6CircleVAzL0zU4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundT8ModifierVyAZGGQo_QPGQPGGACyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGGGA12__GMd);
        return swift_storeEnumTagMultiPayload();
      }

      if (one-time initialization token for graphContentHeight == -1)
      {
LABEL_45:
        v204 = v538;
        v208 = *(v538 + 6) + 4.0 / *&static RacePlatterConstants.graphContentHeight * (*(v538 + 7) - *(v538 + 6));
        v543 = RaceElevationChartProperties.zoomedTickValuesFor(userOdometer:ghostOdometer:)(a9, a14);
        swift_getKeyPath();
        v209 = swift_allocObject();
        *(v209 + 16) = v204;
        *(v209 + 24) = v208;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE7opacityyQrSdFQOyAcAE9lineStyleyQr7SwiftUI06StrokeF0VFQOyAcAE010foregroundF0yQrqd__AF05ShapeF0Rd__lFQOyAA8RuleMarkV_AF5ColorVQo__Qo__Qo_Md);
        lazy protocol witness table accessor for type [RaceChartPoint] and conformance [A](&lazy protocol witness table cache variable for type [Double] and conformance [A], &_sSaySdGMd);
        v553 = v533;
        v554 = MEMORY[0x277CE0F78];
        v555 = MEMORY[0x277CBB450];
        v556 = MEMORY[0x277CE0F60];
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v553 = v537;
        v554 = OpaqueTypeConformance2;
        v211 = swift_getOpaqueTypeConformance2();
        v553 = v525;
        v554 = v211;
        v457 = swift_getOpaqueTypeConformance2();
        v212 = v487;
        ForEach<>.init(_:id:content:)();
        v207 = v494;
        v205 = v513;
        v206 = v495;
        (*(v494 + 32))(v513, v212, v495);
        v203 = 0;
        goto LABEL_46;
      }

LABEL_100:
      swift_once();
      goto LABEL_45;
    }

    v136 = 0;
    v137 = (v132 + v132) / v133;
    v138 = a10 - v137;
    v139 = v137 + a11;
    v539 = (v541 + 32);
    v140 = (v541 + 8);
    v141 = MEMORY[0x277D84F90];
    v536 = v134;
    v532 = v135;
    v531 = (v541 + 16);
    while (v136 < *(v134 + 16))
    {
      v142 = (*(v541 + 80) + 32) & ~*(v541 + 80);
      v143 = *(v541 + 72);
      (*(v541 + 16))(v102, v134 + v142 + v143 * v136, v542);
      RaceChartPoint.odometer_m.getter();
      if (v138 > v144 || (RaceChartPoint.odometer_m.getter(), v145 > v139))
      {
        (*v140)(v102, v542);
      }

      else
      {
        v146 = *v539;
        (*v539)(v540, v102, v542);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v553 = v141;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v141 + 2) + 1, 1);
          v141 = v553;
        }

        v149 = *(v141 + 2);
        v148 = *(v141 + 3);
        if (v149 >= v148 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v148 > 1, v149 + 1, 1);
          v141 = v553;
        }

        *(v141 + 2) = v149 + 1;
        v146(&v141[v142 + v149 * v143], v540, v542);
        v134 = v536;
        v135 = v532;
      }

      if (v135 == ++v136)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
    goto LABEL_95;
  }

  if (v129 == *MEMORY[0x277D7DF58])
  {
    static RaceElevationChartLayout.zoomedDomain.getter();
    v151 = v150;
    v152 = static RaceElevationChartLayout.pointsPerZoomedWindow.getter();
    v153 = *(a2 + 3);
    v540 = *(v153 + 16);
    if (!v540)
    {
      v158 = MEMORY[0x277D84F90];
      v159 = v537;
LABEL_61:
      v543 = v158;
      v264 = swift_allocObject();
      *(v264 + 16) = a2;
      *(v264 + 24) = a7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore14RaceChartPointVGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts4PlotVyAA12BuilderTupleVyAA12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAA8AreaMarkV_AI5ColorVQo__AgAEAHyQrqd__AiJRd__lFQOyAgAE04lineH0yQrAI06StrokeH0VFQOyAA04LineM0V_Qo__ANQo_QPGGMd);
      lazy protocol witness table accessor for type [RaceChartPoint] and conformance [A](&lazy protocol witness table cache variable for type [RaceChartPoint] and conformance [A], &_sSay11WorkoutCore14RaceChartPointVGMd);
      lazy protocol witness table accessor for type [RaceChartPoint] and conformance [A](&lazy protocol witness table cache variable for type Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>> and conformance Plot<A>, &_s6Charts4PlotVyAA12BuilderTupleVyAA12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAA8AreaMarkV_AI5ColorVQo__AgAEAHyQrqd__AiJRd__lFQOyAgAE04lineH0yQrAI06StrokeH0VFQOyAA04LineM0V_Qo__ANQo_QPGGMd);
      lazy protocol witness table accessor for type RaceChartPoint and conformance RaceChartPoint();
      v265 = v517;
      v266 = ForEach<>.init(_:content:)();
      v540 = &v459;
      MEMORY[0x28223BE20](v266);
      *(&v459 - 4) = a7;
      *(&v459 - 3) = a8;
      v457 = a2;
      type metadata accessor for RectangleMark();
      lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
      v267 = v518;
      ChartContent.mask<A>(content:)();
      (*(v522 + 8))(v265, v267);
      [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.568627451 green:0.568627451 blue:0.568627451 alpha:1.0];
      v539 = Color.init(uiColor:)();
      v268 = v534;
      RaceElevationChartProperties.clostestChartPointFor(_:)(v534, a9);
      RaceChartPoint.odometer_m.getter();
      v270 = v269;
      v271 = *(a2 + 6);
      RaceChartPoint.altitude_m.getter();
      v273 = v272;
      LocalizedStringKey.init(stringLiteral:)();
      v553 = v270;
      static PlottableValue.value(_:_:)();

      LocalizedStringKey.init(stringLiteral:)();
      v553 = v271;
      static PlottableValue.value(_:_:)();

      LocalizedStringKey.init(stringLiteral:)();
      v553 = v273;
      static PlottableValue.value(_:_:)();

      v274 = v506;
      RuleMark.init<A, B>(x:yStart:yEnd:)();
      v553 = v539;
      v275 = MEMORY[0x277CE0F78];
      v276 = MEMORY[0x277CBB450];
      v277 = MEMORY[0x277CE0F60];
      v278 = v507;
      v279 = v533;
      ChartContent.foregroundStyle<A>(_:)();
      (*(v523 + 8))(v274, v279);
      StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
      *&v550 = v279;
      *(&v550 + 1) = v275;
      *&v551 = v276;
      *(&v551 + 1) = v277;
      swift_getOpaqueTypeConformance2();
      v280 = v526;
      ChartContent.lineStyle(_:)();
      outlined destroy of StrokeStyle(&v553);

      (*(v508 + 8))(v278, v159);
      (*(v541 + 8))(v268, v542);
      v281 = v528;
      v282 = *(v528 + 16);
      v283 = v530;
      v284 = v529;
      v282(v530, v531, v529);
      v285 = v521;
      v286 = *(v521 + 16);
      v287 = v525;
      v286(v535, v280, v525);
      v288 = v484;
      v282(v484, v283, v284);
      v289 = v485;
      v290 = *(v485 + 48);
      v291 = v535;
      v286(&v288[v290], v535, v287);
      v292 = v486;
      (*(v281 + 32))(v486, v288, v284);
      (*(v285 + 32))(v292 + *(v289 + 48), &v288[v290], v287);
      v293 = *(v285 + 8);
      v293(v526, v287);
      v294 = *(v281 + 8);
      v294(v531, v284);
      v293(v291, v287);
      v294(v530, v284);
      v244 = v505;
      outlined init with take of BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>(v292, v505, &_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo_QPGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalV7StorageOyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceF5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeT0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineT0yQrAL06StrokeT0VFQOyAA04LineW0V_Qo__AZQo_QPGGG_AA09RectangleW0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleW0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0O8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0qW0V_AL08ModifiedG0VyAL04FillU4ViewVyAL6CircleVAzL0zU4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundT8ModifierVyAZGGQo_QPGQPG_GMd);
      goto LABEL_62;
    }

    v154 = 0;
    v155 = (v151 + v151) / v152;
    a14 = a7 - v155;
    v156 = v155 + a8;
    v539 = (v541 + 16);
    v532 = (v541 + 32);
    v157 = (v541 + 8);
    v158 = MEMORY[0x277D84F90];
    v159 = v537;
    while (v154 < *(v153 + 16))
    {
      v160 = (*(v541 + 80) + 32) & ~*(v541 + 80);
      v161 = *(v541 + 72);
      (*(v541 + 16))(v109, v153 + v160 + v161 * v154, v542);
      RaceChartPoint.odometer_m.getter();
      if (a14 > v162 || (RaceChartPoint.odometer_m.getter(), v163 > v156))
      {
        (*v157)(v109, v542);
      }

      else
      {
        v164 = *v532;
        (*v532)(v536, v109, v542);
        v165 = swift_isUniquelyReferenced_nonNull_native();
        v553 = v158;
        if ((v165 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v158 + 16) + 1, 1);
          v158 = v553;
        }

        v167 = *(v158 + 16);
        v166 = *(v158 + 24);
        if (v167 >= v166 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v166 > 1, v167 + 1, 1);
          v158 = v553;
        }

        *(v158 + 16) = v167 + 1;
        v164(v158 + v160 + v167 * v161, v536, v542);
        a2 = v538;
        v159 = v537;
      }

      if (v540 == ++v154)
      {
        goto LABEL_61;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v129 == *MEMORY[0x277D7DF78])
  {
    static RaceElevationChartLayout.zoomedDomain.getter();
    v169 = v168;
    v170 = static RaceElevationChartLayout.pointsPerZoomedWindow.getter();
    v171 = *(a2 + 3);
    v540 = *(v171 + 16);
    if (v540)
    {
      v172 = 0;
      v173 = (v169 + v169) / v170;
      v174 = a7 - v173;
      v175 = v173 + a8;
      v539 = (v541 + 16);
      v536 = (v541 + 32);
      v176 = (v541 + 8);
      v177 = MEMORY[0x277D84F90];
      while (v172 < *(v171 + 16))
      {
        v178 = (*(v541 + 80) + 32) & ~*(v541 + 80);
        v179 = *(v541 + 72);
        (*(v541 + 16))(v95, v171 + v178 + v179 * v172, v542);
        RaceChartPoint.odometer_m.getter();
        if (v174 > v180 || (RaceChartPoint.odometer_m.getter(), v181 > v175))
        {
          (*v176)(v95, v542);
        }

        else
        {
          v182 = *v536;
          (*v536)(v532, v95, v542);
          v183 = swift_isUniquelyReferenced_nonNull_native();
          v553 = v177;
          if ((v183 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v177 + 2) + 1, 1);
            v177 = v553;
          }

          v185 = *(v177 + 2);
          v184 = *(v177 + 3);
          if (v185 >= v184 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v184 > 1, v185 + 1, 1);
            v177 = v553;
          }

          *(v177 + 2) = v185 + 1;
          v182(&v177[v178 + v185 * v179], v532, v542);
          a2 = v538;
          v69 = v533;
        }

        if (v540 == ++v172)
        {
          goto LABEL_76;
        }
      }

      goto LABEL_96;
    }

    v177 = MEMORY[0x277D84F90];
LABEL_76:
    v549 = v177;
    v315 = swift_allocObject();
    *(v315 + 16) = a2;
    *(v315 + 24) = a7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore14RaceChartPointVGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts4PlotVyAA12BuilderTupleVyAA12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAA8AreaMarkV_AI5ColorVQo__AgAEAHyQrqd__AiJRd__lFQOyAgAE04lineH0yQrAI06StrokeH0VFQOyAA04LineM0V_Qo__ANQo_QPGGMd);
    lazy protocol witness table accessor for type [RaceChartPoint] and conformance [A](&lazy protocol witness table cache variable for type [RaceChartPoint] and conformance [A], &_sSay11WorkoutCore14RaceChartPointVGMd);
    lazy protocol witness table accessor for type [RaceChartPoint] and conformance [A](&lazy protocol witness table cache variable for type Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>> and conformance Plot<A>, &_s6Charts4PlotVyAA12BuilderTupleVyAA12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAA8AreaMarkV_AI5ColorVQo__AgAEAHyQrqd__AiJRd__lFQOyAgAE04lineH0yQrAI06StrokeH0VFQOyAA04LineM0V_Qo__ANQo_QPGGMd);
    lazy protocol witness table accessor for type RaceChartPoint and conformance RaceChartPoint();
    v316 = v517;
    v317 = ForEach<>.init(_:content:)();
    v532 = &v459;
    MEMORY[0x28223BE20](v317);
    *(&v459 - 4) = a7;
    *(&v459 - 3) = a8;
    v457 = a2;
    type metadata accessor for RectangleMark();
    lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
    v318 = v518;
    ChartContent.mask<A>(content:)();
    (*(v522 + 8))(v316, v318);
    v319 = v69;
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.568627451 green:0.568627451 blue:0.568627451 alpha:1.0];
    v320 = Color.init(uiColor:)();
    RaceElevationChartProperties.clostestChartPointFor(_:)(v534, a14);
    RaceChartPoint.odometer_m.getter();
    v322 = v321;
    v323 = *(a2 + 6);
    RaceChartPoint.altitude_m.getter();
    v325 = v324;
    v540 = "l.decrease.circle.fill";
    LocalizedStringKey.init(stringLiteral:)();
    v553 = v322;
    static PlottableValue.value(_:_:)();

    v539 = "RACE_CHART_MARK_ODOMETER";
    LocalizedStringKey.init(stringLiteral:)();
    v553 = v323;
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    v553 = v325;
    static PlottableValue.value(_:_:)();

    v326 = v506;
    RuleMark.init<A, B>(x:yStart:yEnd:)();
    v553 = v320;
    v327 = v507;
    v328 = MEMORY[0x277CE0F78];
    v329 = MEMORY[0x277CBB450];
    v330 = MEMORY[0x277CE0F60];
    ChartContent.foregroundStyle<A>(_:)();
    v527 = *(v523 + 8);
    v523 += 8;
    (v527)(v326, v319);
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v553 = v319;
    v554 = v328;
    v555 = v329;
    v556 = v330;
    v522 = swift_getOpaqueTypeConformance2();
    v331 = v537;
    ChartContent.lineStyle(_:)();
    outlined destroy of StrokeStyle(&v550);

    v518 = *(v508 + 8);
    (v518)(v327, v331);
    v332 = *(v541 + 8);
    v541 += 8;
    v531 = v332;
    v333 = v534;
    (v332)(v534, v542);
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.568627451 green:0.568627451 blue:0.568627451 alpha:1.0];
    v536 = Color.init(uiColor:)();
    RaceElevationChartProperties.clostestChartPointFor(_:)(v333, a9);
    RaceChartPoint.odometer_m.getter();
    v335 = v334;
    RaceChartPoint.altitude_m.getter();
    v337 = v336;
    LocalizedStringKey.init(stringLiteral:)();
    v553 = v335;
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    v553 = v323;
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    v553 = v337;
    static PlottableValue.value(_:_:)();

    RuleMark.init<A, B>(x:yStart:yEnd:)();
    v338 = v536;
    v553 = v536;
    v339 = v533;
    ChartContent.foregroundStyle<A>(_:)();
    (v527)(v326, v339);
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v340 = v535;
    v341 = v537;
    ChartContent.lineStyle(_:)();
    outlined destroy of StrokeStyle(&v553);
    (v518)(v327, v341);
    RaceChartPoint.odometer_m.getter();
    v343 = v342;
    RaceChartPoint.altitude_m.getter();
    v345 = v344;
    LocalizedStringKey.init(stringLiteral:)();
    v543 = v343;
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    v543 = v345;
    static PlottableValue.value(_:_:)();

    v346 = v469;
    v347 = PointMark.init<A, B>(x:y:)();
    MEMORY[0x28223BE20](v347);
    v457 = v504;
    v458 = v338;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA13FillShapeViewVyAA6CircleVAA5ColorVAA06StrokefG0VyAgiA05EmptyG0VGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<FillShapeView<Circle, Color, StrokeShapeView<Circle, Color, EmptyView>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    v348 = v483;
    v349 = v471;
    ChartContent.symbol<A>(symbol:)();
    (*(v470 + 8))(v346, v349);
    v351 = (v521 + 16);
    v350 = *(v521 + 16);
    v352 = v482;
    v353 = v525;
    (v350)(v482, v340, v525);
    v539 = v351;
    v540 = v350;
    v354 = v474;
    v355 = *(v474 + 16);
    v356 = v472;
    v357 = v348;
    v358 = v475;
    v355(v472, v357, v475);
    v359 = v476;
    (v350)(v476, v352, v353);
    v360 = v477;
    v361 = *(v477 + 48);
    v355(&v359[v361], v356, v358);
    v362 = v521;
    v363 = v473;
    (*(v521 + 32))(v473, v359, v353);
    (*(v354 + 32))(v363 + *(v360 + 48), &v359[v361], v358);

    v364 = *(v354 + 8);
    v364(v483, v358);
    v365 = *(v362 + 8);
    v366 = v535;
    v365(v535, v353);
    v538 = v365;
    (v531)(v534, v542);
    v364(v356, v358);
    v365(v482, v353);
    v367 = v528;
    v368 = v530;
    v369 = v529;
    (*(v528 + 16))(v530, v489, v529);
    v543 = v368;
    v370 = v526;
    (v540)(v366, v526, v353);
    v544 = v366;
    v371 = v478;
    outlined init with copy of BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>(v363, v478, &_s6Charts12BuilderTupleVyAA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeG0VFQOyAeAE010foregroundG0yQrqd__AG05ShapeG0Rd__lFQOyAA8RuleMarkV_AG5ColorVQo__Qo__AeAE6symbolARQrqd__yXE_tAG4ViewRd__lFQOyAA05PointN0V_AG08ModifiedE0VyAG04FilllQ0VyAG6CircleVAoG0jlQ0VyA_AoG05EmptyQ0VGGAG12_FrameLayoutVGQo_QPGMd);
    v545 = v371;
    v372 = v479;
    _s6Charts19ChartContentBuilderV10buildBlockyQrxxQpRvzAA0bC0RzlFZAaEPAAE4mask7contentQrqd__yXE_tAaERd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA0D5TupleVyAfAE15foregroundStyleyQrqd__AI05ShapeT0Rd__lFQOyAA8AreaMarkV_AI5ColorVQo__AfAEATyQrqd__AiURd__lFQOyAfAE04lineT0yQrAI06StrokeT0VFQOyAA04LineW0V_Qo__AYQo_QPGGG_AA09RectangleW0VQo__AfAEA_yQrA1_FQOyAfAEATyQrqd__AiURd__lFQOyAA04RuleW0V_AYQo__Qo_ASyA15__AfAE6symbolA16_Qrqd__yXE_tAI4ViewRd__lFQOyAA0pW0V_AI08ModifiedC0VyAI04FillU4ViewVyAI6CircleVAyI0zU4ViewVyA25_AyI9EmptyViewVGGAI12_FrameLayoutVGQo_QPGQP_Tt1g5(&v543, v479);
    outlined destroy of BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>(v363, &_s6Charts12BuilderTupleVyAA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeG0VFQOyAeAE010foregroundG0yQrqd__AG05ShapeG0Rd__lFQOyAA8RuleMarkV_AG5ColorVQo__Qo__AeAE6symbolARQrqd__yXE_tAG4ViewRd__lFQOyAA05PointN0V_AG08ModifiedE0VyAG04FilllQ0VyAG6CircleVAoG0jlQ0VyA_AoG05EmptyQ0VGGAG12_FrameLayoutVGQo_QPGMd);
    v373 = v538;
    v538(v370, v353);
    v374 = *(v367 + 8);
    v374(v489, v369);
    outlined destroy of BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>(v371, &_s6Charts12BuilderTupleVyAA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeG0VFQOyAeAE010foregroundG0yQrqd__AG05ShapeG0Rd__lFQOyAA8RuleMarkV_AG5ColorVQo__Qo__AeAE6symbolARQrqd__yXE_tAG4ViewRd__lFQOyAA05PointN0V_AG08ModifiedE0VyAG04FilllQ0VyAG6CircleVAoG0jlQ0VyA_AoG05EmptyQ0VGGAG12_FrameLayoutVGQo_QPGMd);
    v373(v535, v353);
    v374(v368, v369);
    v375 = v481;
    outlined init with take of BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>(v372, v481, &_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo_ACyA12__AeAE6symbolA13_Qrqd__yXE_tAH4ViewRd__lFQOyAA0oU0V_AH08ModifiedE0VyAH04FillS4ViewVyAH6CircleVAvH0xS4ViewVyA22_AvH9EmptyViewVGGAH12_FrameLayoutVGQo_QPGQPGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalV7StorageOyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceF5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeT0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineT0yQrAL06StrokeT0VFQOyAA04LineW0V_Qo__AZQo_QPGGG_AA09RectangleW0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleW0V_AZQo__Qo_AGyA16__AiAE6symbolA17_Qrqd__yXE_tAL4ViewRd__lFQOyAA0qW0V_AL08ModifiedG0VyAL04FillU4ViewVyAL6CircleVAzL0zU4ViewVyA26_AzL9EmptyViewVGGAL12_FrameLayoutVGQo_QPGQPGAGyA12__AiAE7opacityyQrSdFQOyA12__Qo_A16_QPG_GMd);
    swift_storeEnumTagMultiPayload();
    v376 = v375;
    v377 = v509;
    outlined init with take of BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>(v376, v509, &_s6Charts18BuilderConditionalVyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_AEyA14__AgAE6symbolA15_Qrqd__yXE_tAJ4ViewRd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA24_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo_QPGQPGAEyA10__AgAE7opacityyQrSdFQOyA10__Qo_A14_QPGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalV7StorageOyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceF5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeT0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineT0yQrAL06StrokeT0VFQOyAA04LineW0V_Qo__AZQo_QPGGG_AA09RectangleW0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleW0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0O8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0qW0V_AL08ModifiedG0VyAL04FillU4ViewVyAL6CircleVAzL0zU4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundT8ModifierVyAZGGQo_QPGQPGGACyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGG_GMd);
    swift_storeEnumTagMultiPayload();
    outlined init with take of BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>(v377, v510, &_s6Charts18BuilderConditionalVyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGACyAEyA10__A14_AEyA14__A58_QPGQPGAEyA10__AgAEA23_yQrSdFQOyA10__Qo_A14_QPGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalV7StorageOyACyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceF5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeT0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineT0yQrAL06StrokeT0VFQOyAA04LineW0V_Qo__AZQo_QPGGG_AA09RectangleW0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleW0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0O8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0qW0V_AL08ModifiedG0VyAL04FillU4ViewVyAL6CircleVAzL0zU4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundT8ModifierVyAZGGQo_QPGQPGGACyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGGGA12__GMd);
    return swift_storeEnumTagMultiPayload();
  }

  else if (v129 == *MEMORY[0x277D7DF60])
  {
    v245 = *(a2 + 4);
    static RaceElevationChartLayout.zoomedDomain.getter();
    v247 = v246;
    v248 = static RaceElevationChartLayout.pointsPerZoomedWindow.getter();
    v249 = *(a2 + 3);
    v250 = *(v249 + 16);
    if (v250)
    {
      v251 = 0;
      v252 = (v247 + v247) / v248;
      a14 = v245 - v252;
      v253 = v252 + a9;
      v540 = (v541 + 32);
      v254 = (v541 + 8);
      v255 = MEMORY[0x277D84F90];
      v539 = v250;
      v536 = (v541 + 16);
      while (v251 < *(v249 + 16))
      {
        v256 = (*(v541 + 80) + 32) & ~*(v541 + 80);
        v257 = *(v541 + 72);
        (*(v541 + 16))(v90, v249 + v256 + v257 * v251, v542);
        RaceChartPoint.odometer_m.getter();
        if (a14 > v258 || (RaceChartPoint.odometer_m.getter(), v259 > v253))
        {
          (*v254)(v90, v542);
        }

        else
        {
          v260 = *v540;
          (*v540)(v502, v90, v542);
          v261 = swift_isUniquelyReferenced_nonNull_native();
          v553 = v255;
          if ((v261 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v255 + 16) + 1, 1);
            v255 = v553;
          }

          v263 = *(v255 + 16);
          v262 = *(v255 + 24);
          if (v263 >= v262 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v262 > 1, v263 + 1, 1);
            v255 = v553;
          }

          *(v255 + 16) = v263 + 1;
          v260(v255 + v256 + v263 * v257, v502, v542);
          v250 = v539;
        }

        if (v250 == ++v251)
        {
          goto LABEL_78;
        }
      }

      goto LABEL_97;
    }

    v255 = MEMORY[0x277D84F90];
LABEL_78:
    v543 = v255;
    v378 = swift_allocObject();
    v379 = v538;
    *(v378 + 16) = v538;
    *(v378 + 24) = v245;

    v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore14RaceChartPointVGMd);
    v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts4PlotVyAA12BuilderTupleVyAA12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAA8AreaMarkV_AI5ColorVQo__AgAEAHyQrqd__AiJRd__lFQOyAgAE04lineH0yQrAI06StrokeH0VFQOyAA04LineM0V_Qo__ANQo_QPGGMd);
    v382 = lazy protocol witness table accessor for type [RaceChartPoint] and conformance [A](&lazy protocol witness table cache variable for type [RaceChartPoint] and conformance [A], &_sSay11WorkoutCore14RaceChartPointVGMd);
    v383 = lazy protocol witness table accessor for type [RaceChartPoint] and conformance [A](&lazy protocol witness table cache variable for type Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>> and conformance Plot<A>, &_s6Charts4PlotVyAA12BuilderTupleVyAA12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAA8AreaMarkV_AI5ColorVQo__AgAEAHyQrqd__AiJRd__lFQOyAgAE04lineH0yQrAI06StrokeH0VFQOyAA04LineM0V_Qo__ANQo_QPGGMd);
    v512 = lazy protocol witness table accessor for type RaceChartPoint and conformance RaceChartPoint();
    v384 = v517;
    v531 = v380;
    v527 = v381;
    v516 = v382;
    v515 = v383;
    v385 = ForEach<>.init(_:content:)();
    v532 = &v459;
    MEMORY[0x28223BE20](v385);
    *(&v459 - 4) = v245;
    *(&v459 - 3) = a9;
    v457 = v379;
    v386 = type metadata accessor for RectangleMark();
    v387 = lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
    v388 = v518;
    v514 = v386;
    v513 = v387;
    ChartContent.mask<A>(content:)();
    v389 = *(v522 + 8);
    v522 += 8;
    v511 = v389;
    (v389)(v384, v388);
    v390 = *(v379 + 5);
    static RaceElevationChartLayout.zoomedDomain.getter();
    v392 = v391;
    v393 = static RaceElevationChartLayout.pointsPerZoomedWindow.getter();
    v394 = *(v249 + 16);
    if (v394)
    {
      v395 = 0;
      v396 = (v392 + v392) / v393;
      a14 = a9 - v396;
      v397 = v390 + v396;
      v540 = (v541 + 32);
      v398 = (v541 + 8);
      v399 = MEMORY[0x277D84F90];
      v400 = v488;
      v539 = v394;
      v536 = (v541 + 16);
      while (v395 < *(v249 + 16))
      {
        v401 = (*(v541 + 80) + 32) & ~*(v541 + 80);
        v402 = *(v541 + 72);
        (*(v541 + 16))(v400, v249 + v401 + v402 * v395, v542);
        RaceChartPoint.odometer_m.getter();
        if (a14 > v403 || (RaceChartPoint.odometer_m.getter(), v404 > v397))
        {
          (*v398)(v400, v542);
        }

        else
        {
          v405 = *v540;
          (*v540)(v501, v400, v542);
          v406 = swift_isUniquelyReferenced_nonNull_native();
          v553 = v399;
          if ((v406 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v399 + 2) + 1, 1);
            v399 = v553;
          }

          v408 = *(v399 + 2);
          v407 = *(v399 + 3);
          if (v408 >= v407 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v407 > 1, v408 + 1, 1);
            v399 = v553;
          }

          *(v399 + 2) = v408 + 1;
          v405(&v399[v401 + v408 * v402], v501, v542);
          v400 = v488;
          v394 = v539;
        }

        if (v394 == ++v395)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_99;
    }

    v399 = MEMORY[0x277D84F90];
LABEL_93:
    v549 = v399;
    v415 = swift_allocObject();
    v416 = v538;
    *(v415 + 16) = v538;
    *(v415 + 24) = a9;

    v457 = v512;
    v417 = v517;
    v418 = ForEach<>.init(_:content:)();
    v540 = &v459;
    MEMORY[0x28223BE20](v418);
    *(&v459 - 4) = a9;
    *(&v459 - 3) = v390;
    v457 = v416;
    v419 = v460;
    v420 = v518;
    v421 = v514;
    v422 = v513;
    v423 = MEMORY[0x277CBB2F8];
    ChartContent.mask<A>(content:)();
    (v511)(v417, v420);
    v553 = v420;
    v554 = v421;
    v555 = v422;
    v556 = v423;
    swift_getOpaqueTypeConformance2();
    v424 = v529;
    ChartContent.opacity(_:)();
    v425 = *(v528 + 8);
    v536 = (v528 + 8);
    v539 = v425;
    (v425)(v419, v424);
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.568627451 green:0.568627451 blue:0.568627451 alpha:1.0];
    v426 = Color.init(uiColor:)();
    v427 = v534;
    RaceElevationChartProperties.clostestChartPointFor(_:)(v534, a9);
    RaceChartPoint.odometer_m.getter();
    v429 = v428;
    v430 = *(v416 + 6);
    RaceChartPoint.altitude_m.getter();
    v432 = v431;
    LocalizedStringKey.init(stringLiteral:)();
    v553 = v429;
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    v553 = v430;
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    v553 = v432;
    static PlottableValue.value(_:_:)();

    v433 = v506;
    RuleMark.init<A, B>(x:yStart:yEnd:)();
    v553 = v426;
    v434 = MEMORY[0x277CE0F78];
    v435 = MEMORY[0x277CBB450];
    v436 = MEMORY[0x277CE0F60];
    v437 = v507;
    v438 = v533;
    ChartContent.foregroundStyle<A>(_:)();
    (*(v523 + 8))(v433, v438);
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    *&v550 = v438;
    *(&v550 + 1) = v434;
    *&v551 = v435;
    *(&v551 + 1) = v436;
    swift_getOpaqueTypeConformance2();
    v439 = v537;
    ChartContent.lineStyle(_:)();
    outlined destroy of StrokeStyle(&v553);

    (*(v508 + 8))(v437, v439);
    (*(v541 + 8))(v427, v542);
    v440 = v530;
    v441 = v529;
    (*(v528 + 16))(v530, v480, v529);
    *&v550 = v440;
    v442 = v462;
    v443 = v461;
    v444 = v467;
    v445 = v463;
    (*(v462 + 16))(v461, v467, v463);
    *(&v550 + 1) = v443;
    v446 = v521;
    v447 = v535;
    v448 = v526;
    v449 = v525;
    (*(v521 + 16))(v535, v526, v525);
    *&v551 = v447;
    _s6Charts19ChartContentBuilderV10buildBlockyQrxxQpRvzAA0bC0RzlFZAaEPAAE4mask7contentQrqd__yXE_tAaERd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA0D5TupleVyAfAE15foregroundStyleyQrqd__AI05ShapeT0Rd__lFQOyAA8AreaMarkV_AI5ColorVQo__AfAEATyQrqd__AiURd__lFQOyAfAE04lineT0yQrAI06StrokeT0VFQOyAA04LineW0V_Qo__AYQo_QPGGG_AA09RectangleW0VQo__AfAE7opacityyQrSdFQOyA11__Qo_AfAEA_yQrA1_FQOyAfAEATyQrqd__AiURd__lFQOyAA04RuleW0V_AYQo__Qo_QP_Tt1g5(&v550, v468);
    v450 = *(v446 + 8);
    v450(v448, v449);
    v451 = *(v442 + 8);
    v451(v444, v445);
    v452 = v441;
    v453 = v539;
    (v539)(v480, v452);
    v450(v447, v449);
    v451(v443, v445);
    (v453)(v530, v529);
    v454 = v481;
    outlined init with take of BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>(v468, v481, &_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAE7opacityyQrSdFQOyA8__Qo_AeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo_QPGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalV7StorageOyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceF5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeT0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineT0yQrAL06StrokeT0VFQOyAA04LineW0V_Qo__AZQo_QPGGG_AA09RectangleW0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleW0V_AZQo__Qo_AGyA16__AiAE6symbolA17_Qrqd__yXE_tAL4ViewRd__lFQOyAA0qW0V_AL08ModifiedG0VyAL04FillU4ViewVyAL6CircleVAzL0zU4ViewVyA26_AzL9EmptyViewVGGAL12_FrameLayoutVGQo_QPGQPGAGyA12__AiAE7opacityyQrSdFQOyA12__Qo_A16_QPG_GMd);
    swift_storeEnumTagMultiPayload();
    v455 = v454;
    v456 = v509;
    outlined init with take of BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>(v455, v509, &_s6Charts18BuilderConditionalVyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_AEyA14__AgAE6symbolA15_Qrqd__yXE_tAJ4ViewRd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA24_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo_QPGQPGAEyA10__AgAE7opacityyQrSdFQOyA10__Qo_A14_QPGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalV7StorageOyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceF5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeT0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineT0yQrAL06StrokeT0VFQOyAA04LineW0V_Qo__AZQo_QPGGG_AA09RectangleW0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleW0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0O8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0qW0V_AL08ModifiedG0VyAL04FillU4ViewVyAL6CircleVAzL0zU4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundT8ModifierVyAZGGQo_QPGQPGGACyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGG_GMd);
    swift_storeEnumTagMultiPayload();
    outlined init with take of BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>(v456, v510, &_s6Charts18BuilderConditionalVyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGACyAEyA10__A14_AEyA14__A58_QPGQPGAEyA10__AgAEA23_yQrSdFQOyA10__Qo_A14_QPGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalV7StorageOyACyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceF5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeT0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineT0yQrAL06StrokeT0VFQOyAA04LineW0V_Qo__AZQo_QPGGG_AA09RectangleW0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleW0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0O8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0qW0V_AL08ModifiedG0VyAL04FillU4ViewVyAL6CircleVAzL0zU4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundT8ModifierVyAZGGQo_QPGQPGGACyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGGGA12__GMd);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    static RaceElevationChartLayout.zoomedDomain.getter();
    v299 = v298;
    v300 = static RaceElevationChartLayout.pointsPerZoomedWindow.getter();
    v301 = *(a2 + 3);
    v302 = *(v301 + 16);
    if (v302)
    {
      v303 = 0;
      v304 = (v299 + v299) / v300;
      a9 = a7 - v304;
      a14 = v304 + a8;
      v540 = (v541 + 32);
      v305 = (v541 + 8);
      v306 = MEMORY[0x277D84F90];
      v537 = v302;
      v536 = (v541 + 16);
      while (v303 < *(v301 + 16))
      {
        v307 = (*(v541 + 80) + 32) & ~*(v541 + 80);
        v308 = *(v541 + 72);
        (*(v541 + 16))(v81, v301 + v307 + v308 * v303, v542);
        RaceChartPoint.odometer_m.getter();
        if (a9 > v309 || (RaceChartPoint.odometer_m.getter(), v310 > a14))
        {
          (*v305)(v81, v542);
        }

        else
        {
          v311 = *v540;
          (*v540)(v503, v81, v542);
          v312 = swift_isUniquelyReferenced_nonNull_native();
          v553 = v306;
          if ((v312 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v306 + 2) + 1, 1);
            v306 = v553;
          }

          v314 = *(v306 + 2);
          v313 = *(v306 + 3);
          if (v314 >= v313 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v313 > 1, v314 + 1, 1);
            v306 = v553;
          }

          *(v306 + 2) = v314 + 1;
          v311(&v306[v307 + v314 * v308], v503, v542);
          v302 = v537;
        }

        if (v302 == ++v303)
        {
          goto LABEL_91;
        }
      }

      goto LABEL_98;
    }

    v306 = MEMORY[0x277D84F90];
LABEL_91:
    v553 = v306;
    v409 = swift_allocObject();
    v410 = v538;
    *(v409 + 16) = v538;
    *(v409 + 24) = a7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore14RaceChartPointVGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts4PlotVyAA12BuilderTupleVyAA12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAA8AreaMarkV_AI5ColorVQo__AgAEAHyQrqd__AiJRd__lFQOyAgAE04lineH0yQrAI06StrokeH0VFQOyAA04LineM0V_Qo__ANQo_QPGGMd);
    lazy protocol witness table accessor for type [RaceChartPoint] and conformance [A](&lazy protocol witness table cache variable for type [RaceChartPoint] and conformance [A], &_sSay11WorkoutCore14RaceChartPointVGMd);
    lazy protocol witness table accessor for type [RaceChartPoint] and conformance [A](&lazy protocol witness table cache variable for type Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>> and conformance Plot<A>, &_s6Charts4PlotVyAA12BuilderTupleVyAA12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAA8AreaMarkV_AI5ColorVQo__AgAEAHyQrqd__AiJRd__lFQOyAgAE04lineH0yQrAI06StrokeH0VFQOyAA04LineM0V_Qo__ANQo_QPGGMd);
    lazy protocol witness table accessor for type RaceChartPoint and conformance RaceChartPoint();
    v411 = v517;
    v412 = ForEach<>.init(_:content:)();
    MEMORY[0x28223BE20](v412);
    *(&v459 - 4) = a7;
    *(&v459 - 3) = a8;
    v457 = v410;
    type metadata accessor for RectangleMark();
    lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
    v413 = v466;
    v414 = v518;
    ChartContent.mask<A>(content:)();
    (*(v522 + 8))(v411, v414);
    (*(v528 + 32))(v510, v413, v529);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalV7StorageOyACyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceF5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeT0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineT0yQrAL06StrokeT0VFQOyAA04LineW0V_Qo__AZQo_QPGGG_AA09RectangleW0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleW0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0O8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0qW0V_AL08ModifiedG0VyAL04FillU4ViewVyAL6CircleVAzL0zU4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundT8ModifierVyAZGGQo_QPGQPGGACyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGGGA12__GMd);
    swift_storeEnumTagMultiPayload();
    return (*(v465 + 8))(v464, v539);
  }
}

uint64_t _s6Charts19ChartContentBuilderV10buildBlockyQrxxQpRvzAA0bC0RzlFZAaEPAAE4mask7contentQrqd__yXE_tAaERd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA0D5TupleVyAfAE15foregroundStyleyQrqd__AI05ShapeT0Rd__lFQOyAA8AreaMarkV_AI5ColorVQo__AfAEATyQrqd__AiURd__lFQOyAfAE04lineT0yQrAI06StrokeT0VFQOyAA04LineW0V_Qo__AYQo_QPGGG_AA09RectangleW0VQo__AfAEATyQrqd__AiURd__lFQOyAKyAOSiAQyASyAW_A4_QPGGG_AI14LinearGradientVQo_AKySaySdGSdAfAE7opacityyQrSdFQOyAfAEA_yQrA1_FQOyAfAEATyQrqd__AiURd__lFQOyAA04RuleW0V_AYQo__Qo__Qo_GSgA23_ASyA23__AfAE10annotation8position9alignment7spacingAHQrAA18AnnotationPositionV_AI9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAI4ViewRd__lFQOyAfAE6symbolA40_Qrqd__yXE_tAIA39_Rd__lFQOyAA0pW0V_AI08ModifiedC0VyAI04FillU4ViewVyAI6CircleVAyI0zU4ViewVyA48_AyI9EmptyViewVGGAI12_FrameLayoutVGQo__A44_yAI5ImageVAI011_ForegroundT8ModifierVyAYGGQo_QPGQP_Tt1g5@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE4mask7contentQrqd__yXE_tAaBRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA12BuilderTupleVyAcAE15foregroundStyleyQrqd__AF05ShapeR0Rd__lFQOyAA8AreaMarkV_AF5ColorVQo__AcAEAQyQrqd__AfRRd__lFQOyAcAE04lineR0yQrAF06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AcAEAQyQrqd__AfRRd__lFQOyAHyALSiANyAPyAT_A1_QPGGG_AF14LinearGradientVQo_AHySaySdGSdAcAE7opacityyQrSdFQOyAcAEAXyQrAZFQOyAcAEAQyQrqd__AfRRd__lFQOyAA04RuleU0V_AVQo__Qo__Qo_GSgA20_APyA20__AcAE10annotation8position9alignment7spacingAEQrAA18AnnotationPositionV_AF9AlignmentV0K8Graphics7CGFloatVSgqd__yXEtAF4ViewRd__lFQOyAcAE6symbolA37_Qrqd__yXE_tAFA36_Rd__lFQOyAA0mU0V_AF08ModifiedC0VyAF04FillS4ViewVyAF6CircleVAvF0xS4ViewVyA45_AvF9EmptyViewVGGAF12_FrameLayoutVGQo__A41_yAF5ImageVAF011_ForegroundR8ModifierVyAVGGQo_QPGtMd);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE4mask7contentQrqd__yXE_tAaBRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA12BuilderTupleVyAcAE15foregroundStyleyQrqd__AF05ShapeR0Rd__lFQOyAA8AreaMarkV_AF5ColorVQo__AcAEAQyQrqd__AfRRd__lFQOyAcAE04lineR0yQrAF06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo_Md);
  type metadata accessor for RectangleMark();
  lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
  v8 = *a1;
  v21 = v7;
  v9 = *(v7 - 8);
  (*(v9 + 16))(v6, v8, v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAE7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA12BuilderTupleVyAA8AreaMarkV_AcAE04lineE0yQrAE06StrokeE0VFQOyAA04LineS0V_Qo_QPGGG_AE14LinearGradientVQo_Md);
  lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
  v11 = v4[14];
  v20 = v11;
  v12 = *(v10 - 8);
  (*(v12 + 16))(&v6[v11], a1[1], v10);
  lazy protocol witness table accessor for type ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>? and conformance <A> A?();
  v19 = v4[18];
  outlined init with copy of BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>(a1[2], &v6[v19], &_s7SwiftUI7ForEachVySaySdGSd6Charts12ChartContentPAEE7opacityyQrSdFQOyAgEE9lineStyleyQrAA06StrokeJ0VFQOyAgEE010foregroundJ0yQrqd__AA05ShapeJ0Rd__lFQOyAE8RuleMarkV_AA5ColorVQo__Qo__Qo_GSgMd);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo__Qo_Md);
  type metadata accessor for RuleMark();
  v14 = v4[22];
  v15 = *(v13 - 8);
  (*(v15 + 16))(&v6[v14], a1[3], v13);
  lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
  v16 = v4[26];
  outlined init with copy of BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>(a1[4], &v6[v16], &_s6Charts12BuilderTupleVyAA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeG0VFQOyAeAE010foregroundG0yQrqd__AG05ShapeG0Rd__lFQOyAA8RuleMarkV_AG5ColorVQo__Qo__AeAE10annotation8position9alignment7spacing7contentQrAA18AnnotationPositionV_AG9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAG4ViewRd__lFQOyAeAE6symbolA4_Qrqd__yXE_tAGA3_Rd__lFQOyAA05PointN0V_AG08ModifiedE0VyAG04FillL4ViewVyAG6CircleVAoG0jL4ViewVyA12_AoG9EmptyViewVGGAG12_FrameLayoutVGQo__A8_yAG5ImageVAG011_ForegroundG8ModifierVyAOGGQo_QPGMd);
  v17 = v22;
  (*(v9 + 32))(v22, v6, v21);
  (*(v12 + 32))(v17 + v4[14], &v6[v20], v10);
  outlined init with take of BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>(&v6[v19], v17 + v4[18], &_s7SwiftUI7ForEachVySaySdGSd6Charts12ChartContentPAEE7opacityyQrSdFQOyAgEE9lineStyleyQrAA06StrokeJ0VFQOyAgEE010foregroundJ0yQrqd__AA05ShapeJ0Rd__lFQOyAE8RuleMarkV_AA5ColorVQo__Qo__Qo_GSgMd);
  (*(v15 + 32))(v17 + v4[22], &v6[v14], v13);
  return outlined init with take of BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>(&v6[v16], v17 + v4[26], &_s6Charts12BuilderTupleVyAA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeG0VFQOyAeAE010foregroundG0yQrqd__AG05ShapeG0Rd__lFQOyAA8RuleMarkV_AG5ColorVQo__Qo__AeAE10annotation8position9alignment7spacing7contentQrAA18AnnotationPositionV_AG9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAG4ViewRd__lFQOyAeAE6symbolA4_Qrqd__yXE_tAGA3_Rd__lFQOyAA05PointN0V_AG08ModifiedE0VyAG04FillL4ViewVyAG6CircleVAoG0jL4ViewVyA12_AoG9EmptyViewVGGAG12_FrameLayoutVGQo__A8_yAG5ImageVAG011_ForegroundG8ModifierVyAOGGQo_QPGMd);
}

uint64_t _s6Charts19ChartContentBuilderV10buildBlockyQrxxQpRvzAA0bC0RzlFZAaEPAAE4mask7contentQrqd__yXE_tAaERd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA0D5TupleVyAfAE15foregroundStyleyQrqd__AI05ShapeT0Rd__lFQOyAA8AreaMarkV_AI5ColorVQo__AfAEATyQrqd__AiURd__lFQOyAfAE04lineT0yQrAI06StrokeT0VFQOyAA04LineW0V_Qo__AYQo_QPGGG_AA09RectangleW0VQo__AfAEA_yQrA1_FQOyAfAEATyQrqd__AiURd__lFQOyAA04RuleW0V_AYQo__Qo_ASyA15__AfAE6symbolA16_Qrqd__yXE_tAI4ViewRd__lFQOyAA0pW0V_AI08ModifiedC0VyAI04FillU4ViewVyAI6CircleVAyI0zU4ViewVyA25_AyI9EmptyViewVGGAI12_FrameLayoutVGQo_QPGQP_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE4mask7contentQrqd__yXE_tAaBRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA12BuilderTupleVyAcAE15foregroundStyleyQrqd__AF05ShapeR0Rd__lFQOyAA8AreaMarkV_AF5ColorVQo__AcAEAQyQrqd__AfRRd__lFQOyAcAE04lineR0yQrAF06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AcAEAXyQrAZFQOyAcAEAQyQrqd__AfRRd__lFQOyAA04RuleU0V_AVQo__Qo_APyA12__AcAE6symbolA13_Qrqd__yXE_tAF4ViewRd__lFQOyAA0mU0V_AF08ModifiedC0VyAF04FillS4ViewVyAF6CircleVAvF0xS4ViewVyA22_AvF9EmptyViewVGGAF12_FrameLayoutVGQo_QPGtMd);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE4mask7contentQrqd__yXE_tAaBRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA12BuilderTupleVyAcAE15foregroundStyleyQrqd__AF05ShapeR0Rd__lFQOyAA8AreaMarkV_AF5ColorVQo__AcAEAQyQrqd__AfRRd__lFQOyAcAE04lineR0yQrAF06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo_Md);
  type metadata accessor for RectangleMark();
  lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo__Qo_Md);
  type metadata accessor for RuleMark();
  v11 = *(v5 + 56);
  v12 = *(v10 - 8);
  (*(v12 + 16))(&v7[v11], a1[1], v10);
  lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
  v13 = *(v5 + 72);
  outlined init with copy of BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>(a1[2], &v7[v13], &_s6Charts12BuilderTupleVyAA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeG0VFQOyAeAE010foregroundG0yQrqd__AG05ShapeG0Rd__lFQOyAA8RuleMarkV_AG5ColorVQo__Qo__AeAE6symbolARQrqd__yXE_tAG4ViewRd__lFQOyAA05PointN0V_AG08ModifiedE0VyAG04FilllQ0VyAG6CircleVAoG0jlQ0VyA_AoG05EmptyQ0VGGAG12_FrameLayoutVGQo_QPGMd);
  (*(v9 + 32))(a2, v7, v8);
  (*(v12 + 32))(a2 + *(v5 + 56), &v7[v11], v10);
  return outlined init with take of BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>(&v7[v13], a2 + *(v5 + 72), &_s6Charts12BuilderTupleVyAA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeG0VFQOyAeAE010foregroundG0yQrqd__AG05ShapeG0Rd__lFQOyAA8RuleMarkV_AG5ColorVQo__Qo__AeAE6symbolARQrqd__yXE_tAG4ViewRd__lFQOyAA05PointN0V_AG08ModifiedE0VyAG04FilllQ0VyAG6CircleVAoG0jlQ0VyA_AoG05EmptyQ0VGGAG12_FrameLayoutVGQo_QPGMd);
}

uint64_t _s6Charts19ChartContentBuilderV10buildBlockyQrxxQpRvzAA0bC0RzlFZAaEPAAE4mask7contentQrqd__yXE_tAaERd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA0D5TupleVyAfAE15foregroundStyleyQrqd__AI05ShapeT0Rd__lFQOyAA8AreaMarkV_AI5ColorVQo__AfAEATyQrqd__AiURd__lFQOyAfAE04lineT0yQrAI06StrokeT0VFQOyAA04LineW0V_Qo__AYQo_QPGGG_AA09RectangleW0VQo__AfAE7opacityyQrSdFQOyA11__Qo_AfAEA_yQrA1_FQOyAfAEATyQrqd__AiURd__lFQOyAA04RuleW0V_AYQo__Qo_QP_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE4mask7contentQrqd__yXE_tAaBRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA12BuilderTupleVyAcAE15foregroundStyleyQrqd__AF05ShapeR0Rd__lFQOyAA8AreaMarkV_AF5ColorVQo__AcAEAQyQrqd__AfRRd__lFQOyAcAE04lineR0yQrAF06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AcAE7opacityyQrSdFQOyA8__Qo_AcAEAXyQrAZFQOyAcAEAQyQrqd__AfRRd__lFQOyAA04RuleU0V_AVQo__Qo_tMd);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE4mask7contentQrqd__yXE_tAaBRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA12BuilderTupleVyAcAE15foregroundStyleyQrqd__AF05ShapeR0Rd__lFQOyAA8AreaMarkV_AF5ColorVQo__AcAEAQyQrqd__AfRRd__lFQOyAcAE04lineR0yQrAF06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo_Md);
  type metadata accessor for RectangleMark();
  lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE7opacityyQrSdFQOyAcAE4mask7contentQrqd__yXE_tAaBRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA12BuilderTupleVyAcAE15foregroundStyleyQrqd__AG05ShapeS0Rd__lFQOyAA8AreaMarkV_AG5ColorVQo__AcAEARyQrqd__AgSRd__lFQOyAcAE04lineS0yQrAG06StrokeS0VFQOyAA04LineV0V_Qo__AWQo_QPGGG_AA09RectangleV0VQo__Qo_Md);
  v11 = *(v5 + 56);
  v19 = v11;
  v12 = *(v10 - 8);
  (*(v12 + 16))(&v7[v11], a1[1], v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo__Qo_Md);
  type metadata accessor for RuleMark();
  v14 = *(v5 + 72);
  v15 = a1[2];
  v16 = *(v13 - 8);
  (*(v16 + 16))(&v7[v14], v15, v13);
  (*(v9 + 32))(a2, v7, v8);
  (*(v12 + 32))(a2 + *(v5 + 56), &v7[v19], v10);
  return (*(v16 + 32))(a2 + *(v5 + 72), &v7[v14], v13);
}

uint64_t _s6Charts19ChartContentBuilderV10buildBlockyQrxxQpRvzAA0bC0RzlFZAaEPAAE28alignsMarkStylesWithPlotAreayQrSbFQOyAfAE15foregroundStyleyQrqd__7SwiftUI05ShapeN0Rd__lFQOyAA0lH0V_AI14LinearGradientVQo__Qo__AfAE04lineN0yQrAI06StrokeN0VFQOyAfAEAHyQrqd__AiJRd__lFQOyAA04LineH0V_AI5ColorVQo__Qo_AfAEAHyQrqd__AiJRd__lFQOyAfAE10symbolSizeyQr12CoreGraphics7CGFloatVFQOyAfAE0X0yQrqd__AA0b6SymbolQ0Rd__lFQOyAA05PointH0V_AI6CircleVQo__Qo__AWQo_QP_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE28alignsMarkStylesWithPlotAreayQrSbFQOyAcAE15foregroundStyleyQrqd__7SwiftUI05ShapeK0Rd__lFQOyAA0iE0V_AF14LinearGradientVQo__Qo__AcAE04lineK0yQrAF06StrokeK0VFQOyAcAEAEyQrqd__AfGRd__lFQOyAA04LineE0V_AF5ColorVQo__Qo_AcAEAEyQrqd__AfGRd__lFQOyAcAE10symbolSizeyQr12CoreGraphics7CGFloatVFQOyAcAE0U0yQrqd__AA0b6SymbolN0Rd__lFQOyAA05PointE0V_AF6CircleVQo__Qo__ATQo_tMd);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE28alignsMarkStylesWithPlotAreayQrSbFQOyAcAE15foregroundStyleyQrqd__7SwiftUI05ShapeK0Rd__lFQOyAA0iE0V_AF14LinearGradientVQo__Qo_Md);
  type metadata accessor for AreaMark();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8LineMarkV_AE5ColorVQo__Qo_Md);
  type metadata accessor for LineMark();
  v11 = *(v5 + 56);
  v19 = v11;
  v12 = *(v10 - 8);
  (*(v12 + 16))(&v7[v11], a1[1], v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAcAE10symbolSizeyQr12CoreGraphics7CGFloatVFQOyAcAE0I0yQrqd__AA0b6SymbolH0Rd__lFQOyAA9PointMarkV_AE6CircleVQo__Qo__AE5ColorVQo_Md);
  type metadata accessor for PointMark();
  lazy protocol witness table accessor for type Circle and conformance Circle();
  v14 = *(v5 + 72);
  v15 = a1[2];
  v16 = *(v13 - 8);
  (*(v16 + 16))(&v7[v14], v15, v13);
  (*(v9 + 32))(a2, v7, v8);
  (*(v12 + 32))(a2 + *(v5 + 56), &v7[v19], v10);
  return (*(v16 + 32))(a2 + *(v5 + 72), &v7[v14], v13);
}

unint64_t lazy protocol witness table accessor for type RaceChartPoint and conformance RaceChartPoint()
{
  result = lazy protocol witness table cache variable for type RaceChartPoint and conformance RaceChartPoint;
  if (!lazy protocol witness table cache variable for type RaceChartPoint and conformance RaceChartPoint)
  {
    type metadata accessor for RaceChartPoint();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceChartPoint and conformance RaceChartPoint);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH0H7ContentPAHE15foregroundStyleyQrqd__AA05ShapeP0Rd__lFQOyAH8AreaMarkV_AA5ColorVQo__AnHEAOyQrqd__AaPRd__lFQOyAnHE04lineP0yQrAA06StrokeP0VFQOyAH04LineS0V_Qo__ATQo_QPGGGMd);
    lazy protocol witness table accessor for type [RaceChartPoint] and conformance [A](&lazy protocol witness table cache variable for type Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>> and conformance Plot<A>, &_s6Charts4PlotVyAA12BuilderTupleVyAA12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAA8AreaMarkV_AI5ColorVQo__AgAEAHyQrqd__AiJRd__lFQOyAgAE04lineH0yQrAI06StrokeH0VFQOyAA04LineM0V_Qo__ANQo_QPGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<FillShapeView<Circle, Color, StrokeShapeView<Circle, Color, EmptyView>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<FillShapeView<Circle, Color, StrokeShapeView<Circle, Color, EmptyView>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<FillShapeView<Circle, Color, StrokeShapeView<Circle, Color, EmptyView>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA13FillShapeViewVyAA6CircleVAA5ColorVAA06StrokefG0VyAgiA05EmptyG0VGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type [RaceChartPoint] and conformance [A](&lazy protocol witness table cache variable for type FillShapeView<Circle, Color, StrokeShapeView<Circle, Color, EmptyView>> and conformance FillShapeView<A, B, C>, &_s7SwiftUI13FillShapeViewVyAA6CircleVAA5ColorVAA06StrokedE0VyAegA05EmptyE0VGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<FillShapeView<Circle, Color, StrokeShapeView<Circle, Color, EmptyView>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH8AreaMarkV_AH0H7ContentPAHE9lineStyleyQrAA06StrokeR0VFQOyAH04LineO0V_Qo_QPGGGMd);
    lazy protocol witness table accessor for type [RaceChartPoint] and conformance [A](&lazy protocol witness table cache variable for type Plot<BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>> and conformance Plot<A>, &_s6Charts4PlotVyAA12BuilderTupleVyAA8AreaMarkV_AA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeJ0VFQOyAA04LineF0V_Qo_QPGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t outlined init with copy of BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySaySdGSd6Charts12ChartContentPAEE7opacityyQrSdFQOyAgEE9lineStyleyQrAA06StrokeJ0VFQOyAgEE010foregroundJ0yQrqd__AA05ShapeJ0Rd__lFQOyAE8RuleMarkV_AA5ColorVQo__Qo__Qo_GSgMd);
    lazy protocol witness table accessor for type ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0> and conformance <> ForEach<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySaySdGSd6Charts12ChartContentPAEE7opacityyQrSdFQOyAgEE9lineStyleyQrAA06StrokeJ0VFQOyAgEE010foregroundJ0yQrqd__AA05ShapeJ0Rd__lFQOyAE8RuleMarkV_AA5ColorVQo__Qo__Qo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo__Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeG0VFQOyAeAE010foregroundG0yQrqd__AG05ShapeG0Rd__lFQOyAA8RuleMarkV_AG5ColorVQo__Qo__AeAE10annotation8position9alignment7spacing7contentQrAA18AnnotationPositionV_AG9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAG4ViewRd__lFQOyAeAE6symbolA4_Qrqd__yXE_tAGA3_Rd__lFQOyAA05PointN0V_AG08ModifiedE0VyAG04FillL4ViewVyAG6CircleVAoG0jL4ViewVyA12_AoG9EmptyViewVGGAG12_FrameLayoutVGQo__A8_yAG5ImageVAG011_ForegroundG8ModifierVyAOGGQo_QPGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE6symbolADQrqd__yXE_t7SwiftUI4ViewRd__lFQOyAA9PointMarkV_AE08ModifiedC0VyAE09FillShapeG0VyAE6CircleVAE5ColorVAE06StrokelG0VyAnpE05EmptyG0VGGAE12_FrameLayoutVGQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    type metadata accessor for PointMark();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA13FillShapeViewVyAA6CircleVAA5ColorVAA06StrokefG0VyAgiA05EmptyG0VGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<FillShapeView<Circle, Color, StrokeShapeView<Circle, Color, EmptyView>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type [RaceChartPoint] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [RaceChartPoint] and conformance [A](unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeG0VFQOyAeAE010foregroundG0yQrqd__AG05ShapeG0Rd__lFQOyAA8RuleMarkV_AG5ColorVQo__Qo__AeAE6symbolARQrqd__yXE_tAG4ViewRd__lFQOyAA05PointN0V_AG08ModifiedE0VyAG04FilllQ0VyAG6CircleVAoG0jlQ0VyA_AoG05EmptyQ0VGGAG12_FrameLayoutVGQo_QPGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for PointMark();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA13FillShapeViewVyAA6CircleVAA5ColorVAA06StrokefG0VyAgiA05EmptyG0VGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<FillShapeView<Circle, Color, StrokeShapeView<Circle, Color, EmptyView>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

uint64_t outlined init with take of BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for IntervalTimeMetricView()
{
  result = type metadata singleton initialization cache for IntervalTimeMetricView;
  if (!type metadata singleton initialization cache for IntervalTimeMetricView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalTimeMetricView()
{
  type metadata accessor for WorkoutStep();
  if (v0 <= 0x3F)
  {
    _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for [DateInterval], MEMORY[0x277CC88A8], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Double?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void _s10Foundation4DateVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t IntervalTimeMetricView.offsetGoalEndDate(until:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for Date();
  v26 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v15 = WorkoutStep.goal.getter();
  v16 = [v15 goalTypeIdentifier];

  if (v16 == 2 && (v17 = WorkoutStep.goal.getter(), v18 = [v17 value], v17, v18))
  {
    v25 = a1;
    v19 = type metadata accessor for IntervalTimeMetricView();
    _s10Foundation4DateVSgWOcTm_1(v3 + *(v19 + 20), v8, &_s10Foundation4DateVSgMd);
    v20 = *(v26 + 48);
    if (v20(v8, 1, v9) == 1)
    {
      (*(v26 + 16))(v14, v25, v9);
      if (v20(v8, 1, v9) != 1)
      {
        _s10Foundation4DateVSgWOhTm_2(v8, &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      (*(v26 + 32))(v14, v8, v9);
    }

    Date.offset(until:pauseTimes:lastUnbalancedPauseStart:)();
    v23 = [objc_opt_self() secondUnit];
    [v18 doubleValueForUnit_];

    Date.addingTimeInterval(_:)();
    v24 = *(v26 + 8);
    v24(v11, v9);
    v24(v14, v9);
    return (*(v26 + 56))(a2, 0, 1, v9);
  }

  else
  {
    v21 = *(v26 + 56);

    return v21(a2, 1, 1, v9);
  }
}

double IntervalTimeMetricView.presentedTime(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v25 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v26 = v1;
  IntervalTimeMetricView.offsetGoalEndDate(until:)(a1, v8);
  v18 = *(v10 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s10Foundation4DateVSgWOhTm_2(v8, &_s10Foundation4DateVSgMd);
    v19 = type metadata accessor for IntervalTimeMetricView();
    _s10Foundation4DateVSgWOcTm_1(v26 + *(v19 + 20), v5, &_s10Foundation4DateVSgMd);
    if (v18(v5, 1, v9) == 1)
    {
      _s10Foundation4DateVSgWOhTm_2(v5, &_s10Foundation4DateVSgMd);
      (*(v10 + 16))(v14, a1, v9);
    }

    else
    {
      v22 = v25;
      (*(v10 + 32))(v25, v5, v9);
      Date.offset(until:pauseTimes:lastUnbalancedPauseStart:)();
      (*(v10 + 8))(v22, v9);
    }

    Date.timeIntervalSince(_:)();
    v21 = v23;
  }

  else
  {
    (*(v10 + 32))(v17, v8, v9);
    Date.timeIntervalSince(_:)();
    v21 = v20;
    v14 = v17;
  }

  (*(v10 + 8))(v14, v9);
  return v21;
}

void IntervalTimeMetricView.color.getter()
{
  v0 = WorkoutStep.goal.getter();
  v1 = [v0 goalTypeIdentifier];

  if (v1 == 2)
  {
    v2 = WorkoutStep.goal.getter();
    v3 = NLSessionActivityGoal.isTimeAndDistanceGoal()();

    if (v3)
    {
      v4 = WorkoutStep.goal.getter();
      if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
      {
        [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
      }

      else
      {
        _HKWorkoutGoalType.color.getter([v4 goalTypeIdentifier]);
      }

      goto LABEL_13;
    }

LABEL_8:
    v8 = [objc_opt_self() elapsedTimeColors];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 nonGradientTextColor];

      if (v10)
      {
        goto LABEL_13;
      }

LABEL_18:
      __break(1u);
      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = [objc_opt_self() keyColors];
  if (!v5)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  v7 = [v5 nonGradientTextColor];

  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_13:

  Color.init(uiColor:)();
}

uint64_t IntervalTimeMetricView.timeString(_:)()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = WorkoutStep.goal.getter();
  v11 = [v10 goalTypeIdentifier];

  v12 = MEMORY[0x277D84680];
  v13 = MEMORY[0x277D84688];
  if (v11 == 2)
  {
    v14 = MEMORY[0x277D84680];
  }

  else
  {
    v14 = MEMORY[0x277D84688];
  }

  (*(v1 + 104))(v9, *v14, v0);
  Double.smoothedForDisplay.getter();
  v16 = v15;
  v17 = *(v1 + 16);
  v17(v6, v9, v0);
  v26 = v16;
  v17(v3, v6, v0);
  v18 = (*(v1 + 88))(v3, v0);
  if (v18 == *MEMORY[0x277D84678])
  {
    v19 = round(v16);
LABEL_14:
    v20 = *(v1 + 8);
    v20(v6, v0);
    goto LABEL_15;
  }

  if (v18 == *MEMORY[0x277D84670])
  {
    v19 = rint(v16);
    goto LABEL_14;
  }

  if (v18 == *v12)
  {
    v19 = ceil(v16);
    goto LABEL_14;
  }

  if (v18 == *v13)
  {
    v19 = floor(v16);
    goto LABEL_14;
  }

  if (v18 == *MEMORY[0x277D84660])
  {
    v19 = trunc(v16);
    goto LABEL_14;
  }

  if (v18 == *MEMORY[0x277D84668])
  {
    v20 = *(v1 + 8);
    v20(v6, v0);
    v23 = ceil(v16);
    v24 = floor(v16);
    if (v16 < 0.0)
    {
      v19 = v24;
    }

    else
    {
      v19 = v23;
    }
  }

  else
  {
    Double._roundSlowPath(_:)();
    v20 = *(v1 + 8);
    v20(v6, v0);
    v20(v3, v0);
    v19 = v26;
  }

LABEL_15:
  type metadata accessor for ElapsedTimeFormatter();
  v21 = MEMORY[0x20F305C20](1, 1, v19);
  v20(v9, v0);
  return v21;
}

uint64_t IntervalTimeMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = type metadata accessor for IntervalTimeMetricView();
  v73 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v74 = v3;
  v76 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for PeriodicTimelineSchedule();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd);
  MEMORY[0x28223BE20](v78);
  v75 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v77 = &v67 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewVy07WorkoutB008PausableC8ScheduleVyAA08PeriodiccG0VGAD10MetricTextVGMd);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v67 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAF10MetricTextVGAA16_FlexFrameLayoutVGMd);
  MEMORY[0x28223BE20](v79);
  v84 = &v67 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAF10MetricTextVGAA16_FlexFrameLayoutVGAA08_PaddingO0VGMd);
  MEMORY[0x28223BE20](v83);
  v85 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v68 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v67 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v67 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v67 - v27;
  Date.init()();
  v87 = v2;
  v29 = *(v2 + 20);
  v88 = v1;
  _s10Foundation4DateVSgWOcTm_1(v1 + v29, v15, &_s10Foundation4DateVSgMd);
  v67 = *(v17 + 48);
  if (v67(v15, 1, v16) == 1)
  {
    _s10Foundation4DateVSgWOhTm_2(v15, &_s10Foundation4DateVSgMd);
    (*(v17 + 32))(v28, v25, v16);
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
    Date.offset(until:pauseTimes:lastUnbalancedPauseStart:)();
    v30 = *(v17 + 8);
    v30(v22, v16);
    v30(v25, v16);
  }

  v69 = v17;
  v31 = v28;
  (*(v17 + 16))(v19, v28, v16);
  v32 = v70;
  PeriodicTimelineSchedule.init(from:by:)();
  v33 = v88;
  v34 = v68;
  _s10Foundation4DateVSgWOcTm_1(v88 + *(v87 + 28), v68, &_s10Foundation4DateVSgMd);
  v87 = v16;
  v35 = v67(v34, 1, v16) != 1;
  _s10Foundation4DateVSgWOhTm_2(v34, &_s10Foundation4DateVSgMd);
  v36 = v77;
  (*(v71 + 32))(v77, v32, v72);
  *(v36 + *(v78 + 36)) = v35;
  v37 = v33;
  v38 = v76;
  outlined init with copy of IntervalTimeMetricView(v37, v76);
  v39 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v40 = swift_allocObject();
  outlined init with take of IntervalTimeMetricView(v38, v40 + v39);
  _s10Foundation4DateVSgWOcTm_1(v36, v75, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd);
  v41 = swift_allocObject();
  *(v41 + 16) = partial apply for closure #1 in IntervalTimeMetricView.body.getter;
  *(v41 + 24) = v40;
  _s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGACyxGAD0dE0AAWlTm_1(&lazy protocol witness table cache variable for type PausableTimelineSchedule<PeriodicTimelineSchedule> and conformance PausableTimelineSchedule<A>, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd);
  lazy protocol witness table accessor for type MetricText and conformance MetricText();
  v42 = v80;
  TimelineView<>.init(_:content:)();
  _s10Foundation4DateVSgWOhTm_2(v36, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd);
  if (one-time initialization token for stepViewMaxHeight != -1)
  {
    swift_once();
  }

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v43 = v84;
  (*(v81 + 32))(v84, v42, v82);
  v44 = (v43 + *(v79 + 36));
  v45 = v95;
  v46 = v96;
  v44[4] = v94;
  v44[5] = v45;
  v44[6] = v46;
  v47 = v91;
  *v44 = v90;
  v44[1] = v47;
  v48 = v93;
  v44[2] = v92;
  v44[3] = v48;
  v49 = static Edge.Set.leading.getter();
  MetricPlatterConstants.init()(v89);
  EdgeInsets.init(_all:)();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v85;
  outlined init with take of ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText>, _FlexFrameLayout>(v43, v85, &_s7SwiftUI15ModifiedContentVyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAF10MetricTextVGAA16_FlexFrameLayoutVGMd);
  v59 = v58 + *(v83 + 36);
  *v59 = v49;
  *(v59 + 8) = v51;
  *(v59 + 16) = v53;
  *(v59 + 24) = v55;
  *(v59 + 32) = v57;
  *(v59 + 40) = 0;
  IntervalTimeMetricView.color.getter();
  v61 = v60;
  (*(v69 + 8))(v31, v87);
  KeyPath = swift_getKeyPath();
  v63 = v58;
  v64 = v86;
  outlined init with take of ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText>, _FlexFrameLayout>(v63, v86, &_s7SwiftUI15ModifiedContentVyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAF10MetricTextVGAA16_FlexFrameLayoutVGAA08_PaddingO0VGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAF10MetricTextVGAA16_FlexFrameLayoutVGAA08_PaddingO0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v66 = (v64 + *(result + 36));
  *v66 = KeyPath;
  v66[1] = v61;
  return result;
}

void closure #1 in IntervalTimeMetricView.body.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd);
  TimelineView.Context.date.getter();
  IntervalTimeMetricView.presentedTime(for:)(v5);
  (*(v3 + 8))(v5, v2);
  v6 = IntervalTimeMetricView.timeString(_:)();
  v8 = v7;
  v9 = WorkoutStep.goal.getter();
  v10 = [v9 goalTypeIdentifier];

  countAndFlagsBits = 0;
  object = 0;
  if (v10 == 2)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = WorkoutUIBundle.super.isa;
    v19._object = 0xE000000000000000;
    v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v14.value._object = 0xEB00000000656C62;
    v15._object = 0x800000020CB9BEC0;
    v15._countAndFlagsBits = 0xD00000000000001CLL;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0;
    v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, v19);
    countAndFlagsBits = v17._countAndFlagsBits;
    object = v17._object;
  }

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = countAndFlagsBits;
  *(a1 + 40) = object;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
}

uint64_t outlined init with copy of IntervalTimeMetricView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalTimeMetricView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of IntervalTimeMetricView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalTimeMetricView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in IntervalTimeMetricView.body.getter(uint64_t a1@<X8>)
{
  type metadata accessor for IntervalTimeMetricView();

  closure #1 in IntervalTimeMetricView.body.getter(a1);
}

uint64_t _s10Foundation4DateVSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOhTm_2(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText>, _FlexFrameLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAF10MetricTextVGAA16_FlexFrameLayoutVGAA08_PaddingO0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGACyxGAD0dE0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAF10MetricTextVGAA16_FlexFrameLayoutVGAA08_PaddingO0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAF10MetricTextVGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText> and conformance <> TimelineView<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText> and conformance <> TimelineView<A, B>()
{
  result = lazy protocol witness table cache variable for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText> and conformance <> TimelineView<A, B>;
  if (!lazy protocol witness table cache variable for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText> and conformance <> TimelineView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI12TimelineViewVy07WorkoutB008PausableC8ScheduleVyAA08PeriodiccG0VGAD10MetricTextVGMd);
    lazy protocol witness table accessor for type MetricText and conformance MetricText();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, MetricText> and conformance <> TimelineView<A, B>);
  }

  return result;
}

uint64_t _s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGACyxGAD0dE0AAWlTm_1(unint64_t *a1, uint64_t *a2)
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

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x7373656E746966;
  if (a1 != 4)
  {
    v5 = 0xD000000000000014;
    v4 = 0x800000020CB93230;
  }

  if (a1 == 3)
  {
    v5 = 0x7974697669746361;
    v4 = 0xE800000000000000;
  }

  v6 = 0x800000020CB931D0;
  v7 = 0xD00000000000001FLL;
  if (a1 == 1)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v6 = 0x800000020CB931F0;
  }

  if (a1)
  {
    v3 = v6;
  }

  else
  {
    v7 = 0x736C61746976;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0xE800000000000000;
      if (v8 != 0x7974697669746361)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v10 = 0xE700000000000000;
      if (v8 != 0x7373656E746966)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0x800000020CB93230;
      if (v8 != 0xD000000000000014)
      {
LABEL_35:
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0x800000020CB931D0;
      if (v8 != 0xD000000000000015)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0x800000020CB931F0;
      if (v8 != 0xD00000000000001FLL)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v10 = 0xE600000000000000;
    if (v8 != 0x736C61746976)
    {
      goto LABEL_35;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_35;
  }

  v11 = 1;
LABEL_36:

  return v11 & 1;
}

{
  v2 = 0x64656C62616E65;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x64656C62616E65;
    }

    else
    {
      v4 = 0x6C65536563696F76;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xED00006465746365;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000015;
    }

    else
    {
      v4 = 0xD00000000000001ELL;
    }

    if (v3)
    {
      v5 = 0x800000020CB92DC0;
    }

    else
    {
      v5 = 0x800000020CB92DA0;
    }
  }

  v6 = 0xE700000000000000;
  if (a2 != 2)
  {
    v2 = 0x6C65536563696F76;
    v6 = 0xED00006465746365;
  }

  v7 = 0xD00000000000001ELL;
  v8 = 0x800000020CB92DC0;
  if (a2)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v8 = 0x800000020CB92DA0;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t TrainingLoadURLBuilder.url(route:source:)@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for URLComponents();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *a2;
  URLComponents.init()();
  URLComponents.scheme.setter();
  MEMORY[0x20F302290](0x65636E616C6162, 0xE700000000000000);
  v31 = 47;
  v32 = 0xE100000000000000;
  v28 = v12;
  v26 = 0xD000000000000013;
  v27 = 0x800000020CB931B0;
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0xD000000000000013;
  }

  if (v12)
  {
    v15 = 0xE000000000000000;
  }

  else
  {
    v15 = 0x800000020CB931B0;
  }

  MEMORY[0x20F30BC00](v14, v15);

  MEMORY[0x20F3022A0](v31, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd);
  type metadata accessor for URLQueryItem();
  *(swift_allocObject() + 16) = xmmword_20CB5DA70;
  v24 = "activity";
  v25 = 0xD000000000000014;
  v23 = "trainingLoadDetails";
  v29 = 0x736C61746976;
  URLQueryItem.init(name:value:)();

  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v7, 1, v16) != 1)
  {
    (*(v9 + 8))(v11, v8);
    return (*(v17 + 32))(v30, v7, v16);
  }

  _s10Foundation3URLVSgWOhTm_3(v7, &_s10Foundation3URLVSgMd);
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v31 = 0xD00000000000001FLL;
  v32 = 0x800000020CB9BEE0;
  if (v28)
  {
    v19 = 7104878;
  }

  else
  {
    v19 = v26;
  }

  if (v28)
  {
    v20 = 0xE300000000000000;
  }

  else
  {
    v20 = v27;
  }

  MEMORY[0x20F30BC00](v19, v20);

  MEMORY[0x20F30BC00](0x20656372756F7320, 0xE800000000000000);
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      v21 = 0xE800000000000000;
      v22 = 0x7974697669746361;
    }

    else if (v13 == 4)
    {
      v21 = 0xE700000000000000;
      v22 = 0x7373656E746966;
    }

    else
    {
      v22 = v25;
      v21 = v24 | 0x8000000000000000;
    }

    goto LABEL_26;
  }

  if (v13)
  {
    if (v13 != 1)
    {
      v21 = 0x800000020CB931F0;
      v22 = 0xD00000000000001FLL;
LABEL_26:
      v29 = v22;
      goto LABEL_27;
    }

    v21 = v23 | 0x8000000000000000;
    v29 = 0xD000000000000015;
  }

  else
  {
    v21 = 0xE600000000000000;
  }

LABEL_27:
  MEMORY[0x20F30BC00](v29, v21);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t TrainingLoadURLBuilder.Route.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TrainingLoadURLBuilder.Route.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TrainingLoadURLBuilder.Route()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TrainingLoadURLBuilder.Route()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

WorkoutUI::TrainingLoadURLBuilder::Source_optional __swiftcall TrainingLoadURLBuilder.Source.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TrainingLoadURLBuilder.Source.init(rawValue:), v3);

  v7 = 6;
  if (v5 < 6)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t TrainingLoadURLBuilder.Source.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x736C61746976;
  v3 = 0x7974697669746361;
  v4 = 0x7373656E746966;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 != 1)
  {
    v5 = 0xD00000000000001FLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TrainingLoadURLBuilder.Source()
{
  String.hash(into:)();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance TrainingLoadURLBuilder.Source@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x736C61746976;
  v5 = 0xE800000000000000;
  v6 = 0x7974697669746361;
  v7 = 0xE700000000000000;
  v8 = 0x7373656E746966;
  if (v2 != 4)
  {
    v8 = 0xD000000000000014;
    v7 = 0x800000020CB93230;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x800000020CB931D0;
  v10 = 0xD000000000000015;
  result = 11;
  if (v2 != 1)
  {
    v10 = 0xD00000000000001FLL;
    v9 = 0x800000020CB931F0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

uint64_t TrainingLoadURLBuilder.RoutingKey.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TrainingLoadURLBuilder.RoutingKey.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TrainingLoadURLBuilder.RoutingKey()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TrainingLoadURLBuilder.RoutingKey()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TrainingLoadURLBuilder.Route@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

uint64_t TrainingLoadURLBuilder.getTrainingLoadRoute(from:)@<X0>(BOOL *a1@<X8>)
{
  v2 = URL.pathComponents.getter();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    while (1)
    {
      v5 = *(v4 - 1) == 47 && *v4 == 0xE100000000000000;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v4 += 2;
      if (!--v3)
      {
        goto LABEL_10;
      }
    }

    v6 = String.init<A>(_:)();
    v8 = v7;
    v9._countAndFlagsBits = v6;
    v9._object = v8;
    v10 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TrainingLoadURLBuilder.getTrainingLoadRoute(from:), v9);

    v12 = v10 != 0;
  }

  else
  {
LABEL_10:

    v12 = 1;
  }

  *a1 = v12;
  return result;
}

uint64_t TrainingLoadURLBuilder.getTrainingLoadSource(from:)@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for URLQueryItem();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for URLComponents();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    result = _s10Foundation3URLVSgWOhTm_3(v11, &_s10Foundation13URLComponentsVSgMd);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    result = URLComponents.queryItems.getter();
    if (result)
    {
      v17 = result;
      v30 = v8;
      v31 = v15;
      v32 = v13;
      v33 = v12;
      v34 = a1;
      v18 = *(result + 16);
      if (v18)
      {
        v19 = 0;
        v20 = 0x656372756F73;
        v35 = v3 + 16;
        while (1)
        {
          if (v19 >= *(v17 + 16))
          {
            __break(1u);
            return result;
          }

          (*(v3 + 16))(v5, v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19, v2);
          if (URLQueryItem.name.getter() == v20 && v21 == 0xE600000000000000)
          {
            break;
          }

          v22 = v20;
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v23)
          {
            goto LABEL_14;
          }

          ++v19;
          result = (*(v3 + 8))(v5, v2);
          v20 = v22;
          if (v18 == v19)
          {
            goto LABEL_11;
          }
        }

LABEL_14:

        v24 = v30;
        (*(v3 + 32))(v30, v5, v2);
        v25 = URLQueryItem.value.getter();
        v27 = v26;
        (*(v3 + 8))(v24, v2);
        v28 = v31;
        if (v27)
        {
          v29._countAndFlagsBits = v25;
          v29._object = v27;
          TrainingLoadURLBuilder.Source.init(rawValue:)(v29);
          return (*(v32 + 8))(v28, v33);
        }

        result = (*(v32 + 8))(v31, v33);
      }

      else
      {
LABEL_11:
        (*(v32 + 8))(v31, v33);
      }

      a1 = v34;
    }

    else
    {
      result = (*(v13 + 8))(v15, v12);
    }
  }

  *a1 = 6;
  return result;
}

uint64_t _s10Foundation3URLVSgWOhTm_3(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TrainingLoadURLBuilder.Route and conformance TrainingLoadURLBuilder.Route()
{
  result = lazy protocol witness table cache variable for type TrainingLoadURLBuilder.Route and conformance TrainingLoadURLBuilder.Route;
  if (!lazy protocol witness table cache variable for type TrainingLoadURLBuilder.Route and conformance TrainingLoadURLBuilder.Route)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadURLBuilder.Route and conformance TrainingLoadURLBuilder.Route);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrainingLoadURLBuilder.Source and conformance TrainingLoadURLBuilder.Source()
{
  result = lazy protocol witness table cache variable for type TrainingLoadURLBuilder.Source and conformance TrainingLoadURLBuilder.Source;
  if (!lazy protocol witness table cache variable for type TrainingLoadURLBuilder.Source and conformance TrainingLoadURLBuilder.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadURLBuilder.Source and conformance TrainingLoadURLBuilder.Source);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrainingLoadURLBuilder.RoutingKey and conformance TrainingLoadURLBuilder.RoutingKey()
{
  result = lazy protocol witness table cache variable for type TrainingLoadURLBuilder.RoutingKey and conformance TrainingLoadURLBuilder.RoutingKey;
  if (!lazy protocol witness table cache variable for type TrainingLoadURLBuilder.RoutingKey and conformance TrainingLoadURLBuilder.RoutingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadURLBuilder.RoutingKey and conformance TrainingLoadURLBuilder.RoutingKey);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrainingLoadURLBuilder.Source(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrainingLoadURLBuilder.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrainingLoadURLBuilder(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TrainingLoadURLBuilder(_WORD *result, int a2, int a3)
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

uint64_t key path getter for ForegroundProvider.isForeground : ForegroundProvider@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for ForegroundProvider.isForeground : ForegroundProvider()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t ForegroundProvider.isForeground.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ForegroundProvider.isForeground.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*ForegroundProvider.isForeground.modify(uint64_t *a1))(void *a1)
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
  return ForegroundProvider.isForeground.modify;
}

void ForegroundProvider.isForeground.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for ForegroundProvider.$isForeground : ForegroundProvider()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for ForegroundProvider.$isForeground : ForegroundProvider(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t ForegroundProvider.$isForeground.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ForegroundProvider.$isForeground.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
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

  v10 = OBJC_IVAR____TtC9WorkoutUI18ForegroundProvider__isForeground;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ForegroundProvider.$isForeground.modify;
}

void ForegroundProvider.$isForeground.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t ForegroundProvider.$isForeground.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t ForegroundProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  ForegroundProvider.init()();
  return v0;
}

uint64_t ForegroundProvider.onEffectiveVisibilityChange()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for OS_dispatch_queue();
  *v3 = static OS_dispatch_queue.main.getter();
  v4 = *MEMORY[0x277D85200];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  v6 = _dispatchPreconditionTest(_:)();
  v7 = *(v1 + 8);
  result = v7(v3, v0);
  if (v6)
  {
    *v3 = static OS_dispatch_queue.main.getter();
    v5(v3, v4, v0);
    v9 = _dispatchPreconditionTest(_:)();
    result = v7(v3, v0);
    if (v9)
    {
      v10 = [objc_opt_self() sharedApplication];
      v11 = [v10 applicationState];

      swift_getKeyPath();
      swift_getKeyPath();
      v12[15] = v11 == 0;

      return static Published.subscript.setter();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ForegroundProvider.deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI18ForegroundProvider__isForeground;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ForegroundProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI18ForegroundProvider__isForeground;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ForegroundProviding.isForeground.getter in conformance ForegroundProvider()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t DownhillRunCountMetricView.init(downhillRunCount:formattingManager:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a3;
  *(a4 + 8) = result;
  *(a4 + 16) = a2 & 1;
  return result;
}

uint64_t DownhillRunCountMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore28FitnessUILocalizationFeatureOSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v16 - v4;
  if (*(v1 + 16))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v1 + 8);
  }

  v7 = type metadata accessor for FitnessUILocalizationFeature();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  String.fitnessUILocalizedString(feature:)();
  outlined destroy of FitnessUILocalizationFeature?(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D83E88];
  *(v8 + 16) = xmmword_20CB5DA70;
  v10 = MEMORY[0x277D83ED0];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  *(v8 + 32) = v6;
  v11 = String.init(format:_:)();
  v13 = v12;

  v16[1] = v6;
  lazy protocol witness table accessor for type UInt and conformance UInt();
  v15 = BinaryInteger.formatted()();
  result = v15._countAndFlagsBits;
  *a1 = v15;
  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  result = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt and conformance UInt);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DownhillRunCountMetricView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for DownhillRunCountMetricView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TrackAlerts.displayString.getter()
{
  if (dispatch thunk of TrackAlerts.lapChangeEnabled.getter())
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v0 = WorkoutUIBundle.super.isa;
    v8 = 0xE000000000000000;
    v1 = 0x800000020CB9BFA0;
    v2 = 0xD000000000000019;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v0 = WorkoutUIBundle.super.isa;
    v8 = 0xE000000000000000;
    v2 = 4605519;
    v1 = 0xE300000000000000;
  }

  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, v3, v0, v4, *(&v8 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t static ViewBuilder.buildIf<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t ReorderButton.init(items:itemTypeName:item:viewProvider:moveValidator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = type metadata accessor for ReorderButton();
  v20 = &a9[v19[18]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  result = (*(*(a12 - 8) + 32))(&a9[v19[16]], a6, a12);
  v22 = &a9[v19[17]];
  *v22 = a7;
  *(v22 + 1) = a8;
  *v20 = a10;
  *(v20 + 1) = a11;
  return result;
}

uint64_t ReorderButton.items.getter()
{
  v3[1] = *v0;
  v4 = *(v0 + 8);
  type metadata accessor for Array();
  v1 = type metadata accessor for Binding();
  MEMORY[0x20F30B100](v3, v1);
  return v3[0];
}

uint64_t ReorderButton.$items.getter()
{
  type metadata accessor for Array();
  type metadata accessor for Binding();
  Binding.projectedValue.getter();
  return v1;
}

uint64_t ReorderButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAD6VStackVyAD05TupleG0VyAD4TextV_ATtGGGMd);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v55 = *(a1 + 40);
  v56 = v5;
  v54 = v8;
  v67 = v8;
  v58 = v4;
  v63 = v4;
  v64 = type metadata accessor for ReorderPicker();
  v53 = v64;
  v51 = _s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAD6VStackVyAD05TupleG0VyAD4TextV_ATtGGGACyxq_GAD0G0AAWlTm_0(&lazy protocol witness table cache variable for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, VStack<TupleView<(Text, Text)>>> and conformance AlignedLeadingAccessoryContentView<A, B>, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAD6VStackVyAD05TupleG0VyAD4TextV_ATtGGGMd);
  v65 = v51;
  WitnessTable = swift_getWitnessTable();
  v50 = WitnessTable;
  v9 = type metadata accessor for NavigationLink();
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v45 - v12;
  v13 = type metadata accessor for Optional();
  v59 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = &v45 - v17;
  v74 = ReorderButton.items.getter();
  v57 = v6;
  v18 = v7;
  v19 = v2;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection<>.firstIndex(of:)();

  if (v64)
  {
    (*(v60 + 56))(v15, 1, 1, v9);
    swift_getWitnessTable();
  }

  else
  {
    v20 = v63;
    v47 = ReorderButton.$items.getter();
    v46 = v21;
    v45 = v22;
    v23 = *(a1 + 72);
    v24 = (v2 + *(a1 + 68));
    v26 = *v24;
    v25 = v24[1];
    v27 = *(v2 + v23);
    v28 = *(v2 + v23 + 8);

    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> (@unowned Bool))?(v27);
    LOBYTE(v74) = 0;
    v29 = State.init(wrappedValue:)();
    v48 = &v45;
    v30 = v63;
    v31 = v64;
    v63 = v47;
    v64 = v46;
    v65 = v45;
    WitnessTable = v26;
    v67 = v25;
    v68 = v27;
    v69 = v28;
    v70 = v30;
    *v71 = v74;
    *&v71[3] = *(&v74 + 3);
    v72 = v31;
    MEMORY[0x28223BE20](v29);
    v32 = v56;
    *(&v45 - 8) = v57;
    *(&v45 - 7) = v32;
    v33 = v54;
    v34 = v55;
    *(&v45 - 6) = v18;
    *(&v45 - 5) = v34;
    *(&v45 - 4) = v33;
    *(&v45 - 3) = v19;
    *(&v45 - 2) = v20;
    v35 = v52;
    NavigationLink.init(destination:label:)();
    v36 = swift_getWitnessTable();
    v37 = v49;
    static ViewBuilder.buildExpression<A>(_:)(v35, v9, v36);
    v38 = v60;
    v39 = *(v60 + 8);
    v39(v35, v9);
    static ViewBuilder.buildBlock<A>(_:)(v37, v9, v36);
    v39(v37, v9);
    (*(v38 + 32))(v15, v35, v9);
    (*(v38 + 56))(v15, 0, 1, v9);
  }

  v40 = v59;
  v41 = v61;
  (*(v59 + 16))(v61, v15, v13);
  v42 = *(v40 + 8);
  v42(v15, v13);
  v73 = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  static ViewBuilder.buildBlock<A>(_:)(v41, v13, v43);
  return (v42)(v41, v13);
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> (@unowned Bool))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void closure #1 in ReorderButton.body.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = static VerticalAlignment.center.getter();
  v7 = Image.init(systemName:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMd);
  TintShapeStyle.init()();
  *a3 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAD6VStackVyAD05TupleG0VyAD4TextV_ATtGGGMd);
  closure #2 in closure #1 in ReorderButton.body.getter(a1, a2, a3 + v8[13]);
  *(a3 + v8[14]) = 0x4022000000000000;
  *(a3 + v8[15]) = v6;
}

uint64_t associated type witness table accessor for View.Body : View in ReorderButton<A, B>()
{
  return associated type witness table accessor for View.Body : View in ReorderButton<A, B>();
}

{
  return swift_getOpaqueTypeConformance2();
}

__n128 closure #2 in closure #1 in ReorderButton.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static HorizontalAlignment.leading.getter();
  closure #1 in closure #2 in closure #1 in ReorderButton.body.getter(a1, a2, v9);
  *&v8[55] = v9[3];
  *&v8[39] = v9[2];
  *&v8[23] = v9[1];
  *&v8[7] = v9[0];
  *(a3 + 33) = *&v8[16];
  result = *&v8[32];
  *(a3 + 49) = *&v8[32];
  *(a3 + 65) = *&v8[48];
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 80) = *&v8[63];
  *(a3 + 17) = *v8;
  return result;
}

unint64_t closure #1 in closure #2 in closure #1 in ReorderButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v6 - 8);
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = WorkoutUIBundle.super.isa;
  v8 = Text.init(_:tableName:bundle:comment:)();
  v41 = v9;
  v40 = v10;
  v12 = v11;
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20CB5DA80;
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  v18 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  result = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 64) = result;
  *(v15 + 32) = v17;
  *(v15 + 40) = v16;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v20 = result;
    lazy protocol witness table accessor for type Int and conformance Int();

    v21 = BinaryInteger.formatted()();
    *(v15 + 96) = v18;
    *(v15 + 104) = v20;
    *(v15 + 72) = v21;
    String.init(format:_:)();

    lazy protocol witness table accessor for type String and conformance String();
    v22 = Text.init<A>(_:)();
    v24 = v23;
    LOBYTE(v20) = v25;
    static Font.footnote.getter();
    v26 = Text.font(_:)();
    v28 = v27;
    v38 = v12;
    v30 = v29;

    outlined consume of Text.Storage(v22, v24, v20 & 1);

    static Color.gray.getter();
    v31 = Text.foregroundColor(_:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    outlined consume of Text.Storage(v26, v28, v30 & 1);

    *a3 = v8;
    *(a3 + 8) = v41;
    *(a3 + 16) = v40 & 1;
    *(a3 + 24) = v38;
    *(a3 + 32) = v31;
    *(a3 + 40) = v33;
    *(a3 + 48) = v35 & 1;
    *(a3 + 56) = v37;
    outlined copy of Text.Storage(v8, v41, v40 & 1);

    outlined copy of Text.Storage(v31, v33, v35 & 1);

    outlined consume of Text.Storage(v31, v33, v35 & 1);

    outlined consume of Text.Storage(v8, v41, v40 & 1);
  }

  return result;
}

uint64_t ReorderPicker.items.getter()
{
  v4 = *v0;
  v5 = *(v0 + 2);
  type metadata accessor for Array();
  v1 = type metadata accessor for Binding();
  MEMORY[0x20F30B100](&v3, v1);
  return v3;
}

void type metadata completion function for ReorderButton()
{
  type metadata accessor for Array();
  type metadata accessor for Binding();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ()();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (())?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ReorderButton(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 40) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}