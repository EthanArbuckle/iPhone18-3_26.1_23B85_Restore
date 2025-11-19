uint64_t closure #1 in MediaSuggestionsModel.loadMSSuggestions(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v36 = a2;
  v37 = a1;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v41 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo12MSSuggestionCGSgs5NeverOGMd, &_sScCySaySo12MSSuggestionCGSgs5NeverOGMR);
  v8 = *(v33 - 8);
  v34 = *(v8 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v31 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  (*(v15 + 104))(v18, *MEMORY[0x277D851B8], v14);
  v35 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v18, v14);
  (*(v11 + 16))(v13, v36, v10);
  v19 = v32;
  v20 = v33;
  (*(v8 + 16))(v32, v37, v33);
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v22 = (v12 + *(v8 + 80) + v21) & ~*(v8 + 80);
  v23 = (v34 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v11 + 32))(v24 + v21, v13, v10);
  (*(v8 + 32))(v24 + v22, v19, v20);
  *(v24 + v23) = v39;
  aBlock[4] = partial apply for closure #1 in closure #1 in MediaSuggestionsModel.loadMSSuggestions(from:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_19;
  v25 = _Block_copy(aBlock);
  v26 = v38;
  static DispatchQoS.unspecified.getter();
  v45 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v28 = v40;
  v27 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v29 = v35;
  MEMORY[0x20F2E7580](0, v26, v28, v25);
  _Block_release(v25);

  (*(v44 + 8))(v28, v27);
  (*(v42 + 8))(v26, v43);
}

uint64_t closure #1 in closure #1 in MediaSuggestionsModel.loadMSSuggestions(from:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Data.init(contentsOf:options:)();
  v9 = v8;
  _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
  if (one-time initialization token for mediaSuggestionAllowedClasses != -1)
  {
    swift_once();
  }

  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
  if (v32[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12MSSuggestionCGMd, &_sSaySo12MSSuggestionCGMR);
    if (swift_dynamicCast())
    {
      v10 = v31;
      if (one-time initialization token for mediaPlayback != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static WOLog.mediaPlayback);
      (*(v3 + 16))(v6, a1, v2);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v29 = v13;
        v14 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v32[0] = v28;
        *v14 = 134218242;
        v30 = v12;
        if (v10 >> 62)
        {
          v15 = __CocoaSet.count.getter();
        }

        else
        {
          v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v14 + 4) = v15;

        *(v14 + 12) = 2080;
        v16 = URL.lastPathComponent.getter();
        v18 = v17;
        (*(v3 + 8))(v6, v2);
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v32);

        *(v14 + 14) = v19;
        v20 = v30;
        _os_log_impl(&dword_20AEA4000, v30, v29, "[DemoMode] Loaded %ld cached suggestions from %s", v14, 0x16u);
        v21 = v28;
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x20F2E9420](v21, -1, -1);
        MEMORY[0x20F2E9420](v14, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v6, v2);
      }

      v32[0] = v10;
      goto LABEL_19;
    }
  }

  else
  {
    _sSo8NSObjectCSgWOhTm_2(v32, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static WOLog.mediaPlayback);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_20AEA4000, v23, v24, "[DemoMode] Failed to unarchive cached suggestions - regenerate cache files", v25, 2u);
    MEMORY[0x20F2E9420](v25, -1, -1);
  }

  v32[0] = 0;
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo12MSSuggestionCGSgs5NeverOGMd, &_sScCySaySo12MSSuggestionCGSgs5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  return outlined consume of Data._Representation(v7, v9);
}

uint64_t MediaSuggestionsModel.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MediaSuggestionsModel.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MediaSuggestionsModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MediaSuggestionsModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t WorkoutMediaSuggestion.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WorkoutMediaSuggestion.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *WorkoutMediaSuggestion.artwork.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t WorkoutMediaSuggestion.bundleID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t WorkoutMediaSuggestion.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t WorkoutMediaSuggestion.title.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t WorkoutMediaSuggestion.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t WorkoutMediaSuggestion.detail.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t WorkoutMediaSuggestion.detail.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t key path setter for WorkoutMediaSuggestion.sendFeedback : WorkoutMediaSuggestion(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 88);

  *(a2 + 80) = _sytIegr_Ieg_TRTA_1;
  *(a2 + 88) = v5;
  return result;
}

uint64_t WorkoutMediaSuggestion.sendFeedback.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t WorkoutMediaSuggestion.sendFeedback.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance WorkoutMediaSuggestion@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t SGAppCanShowSiriSuggestions(void *a1)
{
  v1 = a1;
  v2 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:v1];

  return v3 ^ 1u;
}

uint64_t specialized MediaSuggestionsModel.shouldSaveMediaSuggestionsToFile()()
{
  v0 = *MEMORY[0x277D09540];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = MEMORY[0x20F2E6C00](v1, v3);

  v6 = [v4 initWithSuiteName_];

  if (!v6)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v7 = v6;
  v8 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B45A6B0);
  v9 = [v7 objectForKey_];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {

    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_8;
  }

  v10 = 1;
LABEL_9:
  _sSo8NSObjectCSgWOhTm_2(&v14, &_sypSgMd, &_sypSgMR);
  return v10;
}

uint64_t dispatch thunk of MediaSuggestionsModel.suggestions(for:filteredBundleID:maximumSuggestions:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 112);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = dispatch thunk of MediaSuggestionsModel.suggestions(for:filteredBundleID:maximumSuggestions:);

  return (v16)(a1, a2 & 1, a3, a4, a5);
}

uint64_t dispatch thunk of MediaSuggestionsModel.availablebundleIDsForMediaSuggestions()()
{
  v2 = *(*v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of MediaSuggestionsModel.availablebundleIDsForMediaSuggestions();

  return v6();
}

uint64_t dispatch thunk of MediaSuggestionsModel.availablebundleIDsForMediaSuggestions()(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutMediaSuggestion(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for WorkoutMediaSuggestion(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in MediaSuggestionsModel.loadMSSuggestions(from:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo12MSSuggestionCGSgs5NeverOGMd, &_sScCySaySo12MSSuggestionCGSgs5NeverOGMR) - 8);
  v5 = *(v0 + ((*(v4 + 64) + ((v3 + *(v4 + 80)) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in MediaSuggestionsModel.loadMSSuggestions(from:)(v0 + v2);
}

void specialized MediaSuggestionsModel.saveMSSuggestions(_:to:)(unint64_t a1, uint64_t a2)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v46 - v10;
  v12 = objc_opt_self();
  type metadata accessor for MSSuggestion();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v47[0] = 0;
  v14 = [v12 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v47];

  v15 = v47[0];
  if (v14)
  {
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    Data.write(to:options:)();
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static WOLog.mediaPlayback);
    (*(v5 + 16))(v11, a2, v4);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v46[0] = v4;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47[0] = v39;
      *v38 = 134218242;
      if (a1 >> 62)
      {
        v40 = __CocoaSet.count.getter();
      }

      else
      {
        v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v38 + 4) = v40;

      *(v38 + 12) = 2080;
      v41 = URL.lastPathComponent.getter();
      v43 = v42;
      (*(v5 + 8))(v11, v46[0]);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v47);

      *(v38 + 14) = v44;
      _os_log_impl(&dword_20AEA4000, v36, v37, "[DemoMode] Cached %ld suggestions to %s", v38, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x20F2E9420](v39, -1, -1);
      MEMORY[0x20F2E9420](v38, -1, -1);
      outlined consume of Data._Representation(v16, v18);
    }

    else
    {
      outlined consume of Data._Representation(v16, v18);

      (*(v5 + 8))(v11, v4);
    }
  }

  else
  {
    v19 = v15;
    v20 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.mediaPlayback);
    (*(v5 + 16))(v9, a2, v4);
    v22 = v20;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v47[0] = v27;
      *v25 = 136315394;
      v28 = URL.path.getter();
      v29 = v4;
      v31 = v30;
      (*(v5 + 8))(v9, v29);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v31, v47);

      *(v25 + 4) = v32;
      *(v25 + 12) = 2112;
      v33 = v20;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v34;
      *v26 = v34;
      _os_log_impl(&dword_20AEA4000, v23, v24, "[DemoMode] Failed to save MSSuggestions to %s: %@", v25, 0x16u);
      _sSo8NSObjectCSgWOhTm_2(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x20F2E9420](v27, -1, -1);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

void specialized MediaSuggestionsModel.sendFeedback(for:in:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 bundleID];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = objc_allocWithZone(MEMORY[0x277D27FA0]);
  v10 = MEMORY[0x20F2E6C00](v6, v8);

  v11 = [v9 initWithType:1 suggestion:a1 suggestionBundleID:v10];

  v12 = objc_opt_self();
  v13 = v11;
  [v12 timeIntervalSinceReferenceDate];
  v15 = v14;
  v16 = objc_allocWithZone(MEMORY[0x277D27F98]);
  type metadata accessor for MSSuggestion();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v18 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B45A580);
  v19 = [v16 initWithAction:v13 requestInterval:a3 options:isa suggestions:4 numberOfVisibleSuggestions:v18 sessionIdentifier:v15];

  [v19 donate];
}

uint64_t partial apply for closure #1 in MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)(uint64_t a1)
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
  v10[1] = partial apply for closure #1 in MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);

  return closure #1 in MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t RaceFilter.id.getter()
{
  if (*v0)
  {
    result = 1953718604;
  }

  else
  {
    result = 0x6C616E6F73726550;
  }

  *v0;
  return result;
}

WorkoutCore::RaceFilter_optional __swiftcall RaceFilter.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RaceFilter.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RaceFilter@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RaceFilter.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type [RaceFilter] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [RaceFilter] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RaceFilter] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore10RaceFilterOGMd, &_sSay11WorkoutCore10RaceFilterOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [RaceFilter] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RaceFilter(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1953718604;
  }

  else
  {
    v4 = 0x6C616E6F73726550;
  }

  if (v3)
  {
    v5 = 0xED00007473654220;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1953718604;
  }

  else
  {
    v6 = 0x6C616E6F73726550;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xED00007473654220;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t lazy protocol witness table accessor for type RaceFilter and conformance RaceFilter()
{
  result = lazy protocol witness table cache variable for type RaceFilter and conformance RaceFilter;
  if (!lazy protocol witness table cache variable for type RaceFilter and conformance RaceFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceFilter and conformance RaceFilter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceFilter and conformance RaceFilter;
  if (!lazy protocol witness table cache variable for type RaceFilter and conformance RaceFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceFilter and conformance RaceFilter);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RaceFilter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RaceFilter()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RaceFilter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for RaceFilter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RaceFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized VoiceFeedbackAlerting.toDictionary()()
{
  type metadata accessor for AboveTargetZoneModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel, MEMORY[0x277D7D888]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for BelowTargetZoneModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel, MEMORY[0x277D7D898]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for EnteredTargetZoneModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel, MEMORY[0x277D7D8B8]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for LapCompletionModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel, MEMORY[0x277D7D868]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for DistanceSplitModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel, MEMORY[0x277D7D858]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for SegmentModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel, MEMORY[0x277D7D838]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for HalfwayGoalCompletionModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel, MEMORY[0x277D7D908]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for GoalCompletionModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel, MEMORY[0x277D7D878]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for UpcomingIntervalModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel, MEMORY[0x277D7D8A8]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for BasicVoiceFeedbackAlerts();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts, MEMORY[0x277D7D8E8]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for PacerGoalCompletionModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel, MEMORY[0x277D7D8F8]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for TimeSplitModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel, MEMORY[0x277D7D848]);
  return Encodable.asDictionary()();
}

uint64_t WorkoutAlertZone.spokenUserData(with:)(void *a1)
{
  v3 = type metadata accessor for EnteredTargetZoneModel();
  v61 = *(v3 - 8);
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v3);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BelowTargetZoneModel();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for AboveTargetZoneModel();
  v55 = *(v56 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v54 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VoiceFeedbackTargetZone();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  v19 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
  swift_beginAccess();
  v20 = [*&v1[v19] primaryType];
  if (v20 > 2)
  {
    if (v20 != 3)
    {
      goto LABEL_23;
    }

    v21 = a1;
    v30 = [objc_opt_self() wattUnit];
  }

  else
  {
    if (v20 == 1)
    {
      v52 = v3;
      v53 = v11;
      v21 = a1;
      v22 = [a1 unitManager];
      if (v22)
      {
        v23 = v22;
        v24 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType;
        swift_beginAccess();
        v62 = [v23 userDistanceHKUnitForDistanceType_];

        v25 = [objc_opt_self() meterUnit];
        v26 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
        swift_beginAccess();
        v27 = [objc_opt_self() quantityWithUnit:v25 doubleValue:*&v1[v26]];

        v28 = MEMORY[0x20F2E8410](*&v1[v24]);
        v29 = *&v1[v24];
        if (v28 == 4)
        {
          [v21 speedPerHourWithDistance:v27 overDuration:4 paceFormat:*&v1[v24] distanceType:1.0];
LABEL_13:

          v11 = v53;
          v3 = v52;
          goto LABEL_14;
        }

        v33 = v28;
        v34 = [v21 unitManager];
        if (v34)
        {
          v35 = v34;
          [v34 paceWithDistance:v27 overDuration:v33 paceFormat:v29 distanceType:1.0];

          goto LABEL_13;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_23;
    }

    if (v20 != 2)
    {
      goto LABEL_23;
    }

    v21 = a1;
    v30 = [objc_opt_self() _countPerMinuteUnit];
  }

  v62 = v30;
  v31 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
  swift_beginAccess();
  v32 = *&v1[v31];
LABEL_14:
  v36 = *&v1[v19];
  v37 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType;
  swift_beginAccess();
  v38 = *&v1[v37];

  static VoiceFeedbackTargetZone.make(targetZone:distanceType:formattingManager:)(v39, v38, v21, v18);

  v40 = [v1 type];
  if (v40 == 10)
  {
    v45 = v62;
    v46 = [v62 unitString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v12 + 16))(v16, v18, v11);
    v47 = v60;
    EnteredTargetZoneModel.init(magnitude:unit:targetZone:)();
    v44 = specialized VoiceFeedbackAlerting.toDictionary()();

    (*(v61 + 8))(v47, v3);
    goto LABEL_20;
  }

  if (v40 == 9)
  {
    v41 = v62;
    v42 = [v62 unitString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v12 + 16))(v16, v18, v11);
    v43 = v57;
    BelowTargetZoneModel.init(magnitude:unit:targetZone:)();
    v44 = specialized VoiceFeedbackAlerting.toDictionary()();

    (*(v58 + 8))(v43, v59);
LABEL_20:
    (*(v12 + 8))(v18, v11);
    return v44;
  }

  if (v40 == 8)
  {
    v48 = v62;
    v49 = [v62 unitString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v12 + 16))(v16, v18, v11);
    v50 = v54;
    AboveTargetZoneModel.init(magnitude:unit:targetZone:)();
    v44 = specialized VoiceFeedbackAlerting.toDictionary()();

    (*(v55 + 8))(v50, v56);
    goto LABEL_20;
  }

LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized WorkoutAlertHeartRateZone.spokenUserData(with:)()
{
  v1 = v0;
  v2 = type metadata accessor for EnteredTargetZoneModel();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BelowTargetZoneModel();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for AboveTargetZoneModel();
  v51 = *(v52 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v50 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackPaceFormatOSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackPaceFormatOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = &v50 - v12;
  v59 = type metadata accessor for VoiceFeedbackMetricType();
  v13 = *(v59 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v59);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for VoiceFeedbackTargetZone();
  v62 = *(v17 - 8);
  v63 = v17;
  v18 = *(v62 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v61 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v50 - v21;
  v23 = [objc_opt_self() _countPerMinuteUnit];
  v24 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRateTargetZone;
  swift_beginAccess();
  v25 = *&v0[v24];
  HeartRateTargetZone.applicableRange.getter();
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    v28 = [v23 unitString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v13 + 104))(v16, *MEMORY[0x277D7D8D0], v59);
    v29 = type metadata accessor for VoiceFeedbackPaceFormat();
    (*(*(v29 - 8) + 56))(v60, 1, 1, v29);
    v30 = *&v1[v24] + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex;
    swift_beginAccess();
    v31 = *v30;
    v32 = *(v30 + 8);
    VoiceFeedbackTargetZone.init(minMagnitude:maxMagnitude:unit:metricType:paceFormat:zoneIndex:)();
    v33 = [v1 type];
    if (v33 == 10)
    {
      v41 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
      swift_beginAccess();
      v42 = *&v1[v41];
      v43 = [v23 unitString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = v62;
      v38 = v63;
      (*(v62 + 16))(v61, v22, v63);
      v44 = v56;
      EnteredTargetZoneModel.init(magnitude:unit:targetZone:)();
      v40 = specialized VoiceFeedbackAlerting.toDictionary()();

      (*(v57 + 8))(v44, v58);
      goto LABEL_8;
    }

    if (v33 == 9)
    {
      v34 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
      swift_beginAccess();
      v35 = *&v1[v34];
      v36 = [v23 unitString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = v62;
      v38 = v63;
      (*(v62 + 16))(v61, v22, v63);
      v39 = v53;
      BelowTargetZoneModel.init(magnitude:unit:targetZone:)();
      v40 = specialized VoiceFeedbackAlerting.toDictionary()();

      (*(v54 + 8))(v39, v55);
LABEL_8:
      (*(v37 + 8))(v22, v38);
      return v40;
    }

    if (v33 == 8)
    {
      v45 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
      swift_beginAccess();
      v46 = *&v1[v45];
      v47 = [v23 unitString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = v62;
      v38 = v63;
      (*(v62 + 16))(v61, v22, v63);
      v48 = v50;
      AboveTargetZoneModel.init(magnitude:unit:targetZone:)();
      v40 = specialized VoiceFeedbackAlerting.toDictionary()();

      (*(v51 + 8))(v48, v52);
      goto LABEL_8;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t WorkoutAlertLapChange.spokenUserData(with:)(void *a1)
{
  v30 = type metadata accessor for VoiceFeedbackPaceFormat();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for LapCompletionModel();
  v29 = *(v31 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR___WorkoutAlertLapChange_activityType);
  v11 = FIUIDistanceTypeForActivityType();
  v12 = FIUIPaceFormatForWorkoutActivityType();
  v13 = [a1 unitManager];
  if (!v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [v13 userDistanceHKUnitForDistanceType_];

  v16 = [objc_opt_self() meterUnit];
  v17 = OBJC_IVAR___WorkoutAlertLapChange_lapDistance;
  swift_beginAccess();
  v18 = [objc_opt_self() quantityWithUnit:v16 doubleValue:*(v1 + v17)];

  v19 = OBJC_IVAR___WorkoutAlertLapChange_lapDuration;
  swift_beginAccess();
  v20 = *(v1 + v19);
  if (v12 == 4)
  {
    [a1 speedPerHourWithDistance:v18 overDuration:4 paceFormat:v11 distanceType:*(v1 + v19)];
    goto LABEL_6;
  }

  v21 = [a1 unitManager];
  if (!v21)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = v21;
  [v21 paceWithDistance:v18 overDuration:v12 paceFormat:v11 distanceType:v20];

LABEL_6:
  v23 = OBJC_IVAR___WorkoutAlertLapChange_lapNumber;
  swift_beginAccess();
  v24 = *(v1 + v23);
  v25 = [v15 unitString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 <= 2)
  {
    if (v12 != 1)
    {
      goto LABEL_15;
    }

LABEL_11:
    v26 = MEMORY[0x277D7D8D8];
    goto LABEL_12;
  }

  if (v12 == 3)
  {
    goto LABEL_11;
  }

  if (v12 == 4)
  {
    v26 = MEMORY[0x277D7D8E0];
LABEL_12:
    (*(v3 + 104))(v6, *v26, v30);
    LapCompletionModel.init(index:paceMagnitude:unit:paceFormat:)();
    v27 = specialized VoiceFeedbackAlerting.toDictionary()();

    (*(v29 + 8))(v9, v31);
    return v27;
  }

LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t WorkoutAlertSegment.spokenUserData(with:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SegmentModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VoiceFeedbackPaceFormat();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DistanceSplitModel();
  v37 = *(v14 - 8);
  v15 = *(v37 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v2 type] != 6)
  {
    [*&v2[OBJC_IVAR___WOSegmentAlert_segmentMarker] segmentIndex];
    SegmentModel.init(index:)();
    v27 = specialized VoiceFeedbackAlerting.toDictionary()();
    (*(v5 + 8))(v8, v4);
    return v27;
  }

  v34 = v9;
  v35 = v14;
  v18 = *&v2[OBJC_IVAR___WOSegmentAlert_activityType];
  v19 = FIUIPaceFormatForWorkoutActivityType();
  v20 = FIUIDistanceTypeForActivityType();
  v21 = [a1 unitManager];
  if (!v21)
  {
    __break(1u);
    goto LABEL_20;
  }

  v22 = v21;
  v36 = [v21 userDistanceHKUnitForDistanceType_];

  v23 = *&v2[OBJC_IVAR___WOSegmentAlert_segmentMarker];
  v24 = [v23 distance];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  [v23 duration];
  if (v19 == 4)
  {
    [a1 speedPerHourWithDistance:v25 overDuration:4 paceFormat:v20 distanceType:?];
    goto LABEL_9;
  }

  v28 = v26;
  v29 = [a1 unitManager];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v29;
  [v29 paceWithDistance:v25 overDuration:v19 paceFormat:v20 distanceType:v28];

LABEL_9:
  [v23 segmentIndex];
  if ((v2[OBJC_IVAR___WOSegmentAlert_shouldHideTime] & 1) == 0)
  {
    [v23 duration];
  }

  v31 = [v36 unitString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 <= 2)
  {
    if (v19 != 1)
    {
      goto LABEL_22;
    }

LABEL_16:
    v32 = MEMORY[0x277D7D8D8];
    goto LABEL_17;
  }

  if (v19 == 3)
  {
    goto LABEL_16;
  }

  if (v19 == 4)
  {
    v32 = MEMORY[0x277D7D8E0];
LABEL_17:
    (*(v10 + 104))(v13, *v32, v34);
    DistanceSplitModel.init(index:paceMagnitude:duration:unit:paceFormat:)();
    v27 = specialized VoiceFeedbackAlerting.toDictionary()();

    (*(v37 + 8))(v17, v35);
    return v27;
  }

LABEL_22:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t NLWorkoutAlertGoalProgress.spokenDescription(with:)(uint64_t a1)
{
  countAndFlagsBits = NLWorkoutAlertGoalProgress.spokenGoalProgressString()()._countAndFlagsBits;
  v4 = [v1 goalCompletionStringWithUnitStyle:3 decimalTrimmingMode:2 formattingManager:a1 textCase:2];
  v5 = [v4 spokenString];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v6, v8);

  v9 = String.firstLetterCapitalized()();

  MEMORY[0x20F2E6D80](32, 0xE100000000000000);
  MEMORY[0x20F2E6D80](0x5C313D736F655C1BLL, 0xE800000000000000);
  MEMORY[0x20F2E6D80](32, 0xE100000000000000);
  MEMORY[0x20F2E6D80](v9._countAndFlagsBits, v9._object);

  return countAndFlagsBits;
}

Swift::String __swiftcall NLWorkoutAlertGoalProgress.spokenGoalProgressString()()
{
  v1 = 0xD00000000000001CLL;
  v2 = [v0 type];
  if (v2 == 7)
  {
    v3 = "GOAL_PROGRESS_COMPLETION_SPOKEN";
  }

  else
  {
    if (v2 != 13)
    {
      v9 = 0;
      v11 = 0xE000000000000000;
      goto LABEL_7;
    }

    v3 = " type in goal progress alert";
    v1 = 0xD00000000000001FLL;
  }

  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = MEMORY[0x20F2E6C00](v1, v3 | 0x8000000000000000);
  v7 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

LABEL_7:
  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t NLWorkoutAlertGoalProgress.spokenUserData(with:)(void *a1)
{
  v3 = type metadata accessor for GoalCompletionModel();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HalfwayGoalCompletionModel();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 goal];
  v14 = [v13 goalTypeIdentifier];

  v15 = [a1 unitManager];
  if (!v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  v17 = [v1 distanceType];
  if (v14 > 2)
  {
    if (v14 != 3)
    {
      goto LABEL_15;
    }

    v18 = [v16 userActiveEnergyBurnedUnit];
  }

  else if (v14 == 1)
  {
    v18 = [v16 userDistanceHKUnitForDistanceType_];
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_15;
    }

    v18 = [objc_opt_self() secondUnit];
  }

  v19 = v18;

  NLWorkoutAlertGoalProgress.currentValueInUserUnit(formattingManager:)(a1);
  v20 = [v1 type];
  if (v20 == 13)
  {
    v21 = [v19 unitString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    GoalCompletionModel.init(magnitude:unit:)();
    v22 = specialized VoiceFeedbackAlerting.toDictionary()();

    (*(v4 + 8))(v7, v3);
    return v22;
  }

  if (v20 == 7)
  {
    v23 = [v19 unitString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    HalfwayGoalCompletionModel.init(magnitude:unit:)();
    v22 = specialized VoiceFeedbackAlerting.toDictionary()();

    (*(v9 + 8))(v12, v8);
    return v22;
  }

LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void NLWorkoutAlertGoalProgress.currentValueInUserUnit(formattingManager:)(void *a1)
{
  v3 = [v1 goal];
  v4 = [v3 goalTypeIdentifier];

  v5 = specialized static NLSessionActivityGoal.canonicalUnit(for:)(v4);
  [v1 currentValue];
  v7 = [objc_opt_self() quantityWithUnit:v5 doubleValue:v6];

  v8 = [v1 goal];
  v9 = [v8 goalTypeIdentifier];

  v10 = [a1 unitManager];
  if (v10)
  {
    v11 = v10;
    v12 = [v1 distanceType];
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v13 = [v11 userActiveEnergyBurnedUnit];
        goto LABEL_9;
      }
    }

    else
    {
      if (v9 == 1)
      {
        v13 = [v11 userDistanceHKUnitForDistanceType_];
LABEL_9:
        v14 = v13;

        [v7 doubleValueForUnit_];
        return;
      }

      if (v9 == 2)
      {
        v13 = [objc_opt_self() secondUnit];
        goto LABEL_9;
      }
    }
  }

  else
  {
    __break(1u);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t WorkoutAlertInterval.spokenUserData(with:)(void *a1)
{
  v3 = type metadata accessor for BasicVoiceFeedbackAlerts();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 type];
  if (v8 == 17)
  {
    static BasicVoiceFeedbackAlerts.intervalEnded.getter();
    v9 = specialized VoiceFeedbackAlerting.toDictionary()();
    (*(v4 + 8))(v7, v3);
    return v9;
  }

  else if (v8 == 16)
  {

    return WorkoutAlertInterval.upcomingSpokenUserData(formattingManager:)(a1);
  }

  else
  {
    v11[2] = 0;
    v11[3] = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    v11[1] = [v1 type];
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD000000000000019, 0x800000020B45AC30);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t WorkoutAlertInterval.upcomingSpokenUserData(formattingManager:)(void *a1)
{
  v3 = type metadata accessor for UpcomingIntervalModel();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VoiceFeedbackWorkoutStep();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  v22 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 8);
  v23 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 16);
  v24 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 24);
  v25 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 32);
  v26 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 40);
  v36 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep);
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v41 = v26;
  outlined copy of CompletedWorkoutStep?(v36, v22, v23);
  v27 = a1;
  static VoiceFeedbackWorkoutStep.make(completedStep:formattingManager:)(&v36, a1, v21);
  outlined consume of CompletedWorkoutStep?(v36, v37, v38);
  v28 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep);
  if (v28)
  {
    v29 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
    swift_beginAccess();
    v30 = *&v28[v29];

    v31 = FIUIDistanceTypeForActivityType();
    static VoiceFeedbackWorkoutStep.make(workoutStep:distanceType:formattingManager:)(v28, v31, v27, v14);
    outlined init with copy of VoiceFeedbackWorkoutStep?(v21, v19);
    (*(v8 + 16))(v12, v14, v7);
    UpcomingIntervalModel.init(completedStep:nextStep:)();
    v32 = specialized VoiceFeedbackAlerting.toDictionary()();

    (*(v34 + 8))(v6, v35);
    (*(v8 + 8))(v14, v7);
    outlined destroy of VoiceFeedbackWorkoutStep?(v21);
    return v32;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t outlined copy of CompletedWorkoutStep?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined consume of CompletedWorkoutStep?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined init with copy of VoiceFeedbackWorkoutStep?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of VoiceFeedbackWorkoutStep?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized NLWorkoutAlertRingCompletion.spokenUserData(with:)()
{
  v1 = v0;
  v2 = type metadata accessor for BasicVoiceFeedbackAlerts();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 completedRing];
  if (!v7)
  {
    static BasicVoiceFeedbackAlerts.moveRingCompleted.getter();
LABEL_5:
    v8 = specialized VoiceFeedbackAlerting.toDictionary()();
    (*(v3 + 8))(v6, v2);
    return v8;
  }

  if (v7 == 1)
  {
    static BasicVoiceFeedbackAlerts.exerciseRingCompleted.getter();
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t type metadata completion function for Atomic(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Atomic.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(v0 + *(*v0 + 96));

  return v0;
}

uint64_t Atomic.__deallocating_deinit()
{
  Atomic.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t RaceWorkoutConfiguration.raceFilter.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

unint64_t RaceWorkoutConfiguration.CodingKeys.rawValue.getter(char a1)
{
  result = 0x7469546574756F72;
  switch(a1)
  {
    case 1:
      result = 0x5572657473756C63;
      break;
    case 2:
      result = 0x746C694665636172;
      break;
    case 3:
      result = 0x6B726F577473616CLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x6B726F577473616CLL;
      break;
    case 7:
      result = 0x6B726F5774736562;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x6B726F5774736562;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000021;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x5372657473756C63;
      break;
    case 15:
      result = 0x636E6176656C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RaceWorkoutConfiguration.CodingKeys(char *a1, char *a2)
{
  v2 = *a2;
  v3 = RaceWorkoutConfiguration.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == RaceWorkoutConfiguration.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RaceWorkoutConfiguration.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  RaceWorkoutConfiguration.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RaceWorkoutConfiguration.CodingKeys()
{
  RaceWorkoutConfiguration.CodingKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RaceWorkoutConfiguration.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  RaceWorkoutConfiguration.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RaceWorkoutConfiguration.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized RaceWorkoutConfiguration.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RaceWorkoutConfiguration.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = RaceWorkoutConfiguration.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance RaceWorkoutConfiguration.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized RaceWorkoutConfiguration.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RaceWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RaceWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RaceWorkoutConfiguration.routeTitle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t RaceWorkoutConfiguration.routeTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

double RaceWorkoutConfiguration.lastWorkoutDistance.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RaceWorkoutConfiguration.lastWorkoutDistance.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double RaceWorkoutConfiguration.lastWorkoutDuration.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RaceWorkoutConfiguration.lastWorkoutDuration.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double RaceWorkoutConfiguration.bestWorkoutDistance.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RaceWorkoutConfiguration.bestWorkoutDistance.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double RaceWorkoutConfiguration.bestWorkoutDuration.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RaceWorkoutConfiguration.bestWorkoutDuration.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RaceWorkoutConfiguration.clusterUUID.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t RaceWorkoutConfiguration.clusterUUID.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t RaceWorkoutConfiguration.routeSnapshotData.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData;
  swift_beginAccess();
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t RaceWorkoutConfiguration.routeSnapshotData.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of Data._Representation(v6, v7);
}

uint64_t RaceWorkoutConfiguration.clusterSize.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RaceWorkoutConfiguration.clusterSize.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double RaceWorkoutConfiguration.relevanceValue.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RaceWorkoutConfiguration.relevanceValue.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id RaceWorkoutConfiguration.lastWorkoutStartingPoint.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude;
  v4.latitude = *(v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude);
  v2 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude;
  v4.longitude = *(v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude);
  if (CLLocationCoordinate2DIsValid(v4))
  {
    return [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v0 + v1) longitude:*(v0 + v2)];
  }

  else
  {
    return 0;
  }
}

void RaceWorkoutConfiguration.lastWorkoutStartingPoint.setter(void *a1)
{
  if (a1)
  {
    [a1 coordinate];
    *(v1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude) = v3;
    [a1 coordinate];
    v5 = v4;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude) = 0x412E848000000000;
    v5 = 0x412E848000000000;
  }

  *(v1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude) = v5;
}

void (*RaceWorkoutConfiguration.lastWorkoutStartingPoint.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude;
  v7.latitude = *(v1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude);
  a1[1] = v1;
  a1[2] = v3;
  v4 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude;
  a1[3] = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude;
  v7.longitude = *(v1 + v4);
  if (CLLocationCoordinate2DIsValid(v7))
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v1 + v3) longitude:*(v1 + v4)];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return RaceWorkoutConfiguration.lastWorkoutStartingPoint.modify;
}

void RaceWorkoutConfiguration.lastWorkoutStartingPoint.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a1;
  if (a2)
  {
    if (v5)
    {
      v14 = v5;
      [v14 coordinate];
      *(v3 + v4) = v6;
      [v14 coordinate];
      v8 = v7;

      v9 = v14;
    }

    else
    {
      v9 = 0;
      *(v3 + v4) = 0x412E848000000000;
      v8 = 0x412E848000000000;
    }

    *(v3 + *(a1 + 24)) = v8;
  }

  else
  {
    if (v5)
    {
      v10 = v5;
      [v10 coordinate];
      *(v3 + v4) = v11;
      [v10 coordinate];
      v13 = v12;
    }

    else
    {
      *(v3 + v4) = 0x412E848000000000;
      v13 = 0x412E848000000000;
    }

    *(v3 + *(a1 + 24)) = v13;
  }
}

double RaceWorkoutConfiguration.referenceRouteLength.getter(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8 == 1)
  {
    v5 = *a1;
  }

  else
  {
    v5 = *a2;
  }

  v6 = v2 + v5;
  swift_beginAccess();
  return *v6;
}

uint64_t RaceWorkoutConfiguration.referenceWorkoutUUID.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 == 1)
  {
    v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
  }

  else
  {
    v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
  }

  v4 = v1 + v3;
  swift_beginAccess();
  v5 = type metadata accessor for UUID();
  return (*(*(v5 - 8) + 16))(a1, v4, v5);
}

double RaceWorkoutConfiguration.referenceRouteAveragePace.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 == 1)
  {
    v1 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
    swift_beginAccess();
    v2 = *(v0 + v1);
    v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
  }

  else
  {
    v4 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
    swift_beginAccess();
    v2 = *(v0 + v4);
    v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
  }

  v5 = (v0 + v3);
  swift_beginAccess();
  return v2 / *v5;
}

uint64_t RaceWorkoutConfiguration.raceFilter.setter(char *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  return static Published.subscript.setter();
}

void (*RaceWorkoutConfiguration.raceFilter.modify(uint64_t *a1))(void *a1)
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
  return RaceWorkoutConfiguration.raceFilter.modify;
}

void RaceWorkoutConfiguration.raceFilter.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t RaceWorkoutConfiguration.$raceFilter.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for RaceWorkoutConfiguration.$raceFilter : RaceWorkoutConfiguration(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for RaceWorkoutConfiguration.$raceFilter : RaceWorkoutConfiguration(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t RaceWorkoutConfiguration.$raceFilter.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*RaceWorkoutConfiguration.$raceFilter.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration__raceFilter;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RaceWorkoutConfiguration.$raceFilter.modify;
}

void RaceWorkoutConfiguration.$raceFilter.modify(uint64_t a1, char a2)
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

Swift::Int RaceWorkoutConfiguration.hash.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init()();
  v19.receiver = v1;
  v19.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v19, sel_hash);
  MEMORY[0x20F2E7FF0](v8);
  v9 = &v1[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
  swift_beginAccess();
  v11 = *v9;
  v10 = *(v9 + 1);

  String.hash(into:)();

  v12 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
  swift_beginAccess();
  v13 = v4[2];
  v13(v7, &v1[v12], v3);
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  v14 = v4[1];
  v14(v7, v3);
  v15 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
  swift_beginAccess();
  v13(v7, &v1[v15], v3);
  dispatch thunk of Hashable.hash(into:)();
  v14(v7, v3);
  v16 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
  swift_beginAccess();
  v13(v7, &v1[v16], v3);
  dispatch thunk of Hashable.hash(into:)();
  v14(v7, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  String.hash(into:)();

  return Hasher.finalize()();
}

id RaceWorkoutConfiguration.__allocating_init(activityType:routeTitle:clusterUUID:raceFilter:lastWorkoutUUID:lastWorkoutDistance:lastWorkoutDuration:lastWorkoutDate:bestWorkoutUUID:bestWorkoutDistance:bestWorkoutDuration:bestWorkoutDate:routeSnapshotData:clusterSize:lastWorkoutStartingPoint:relevanceValue:uuid:occurrence:)(uint64_t a1, _BYTE *a2, objc_class *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  v94 = a8;
  v95 = a7;
  v96 = a6;
  v87 = a3;
  v84 = a2;
  v82 = a1;
  v83 = a20;
  v92 = a19;
  v97 = a18;
  v99 = a15;
  v91 = a14;
  v98 = a16;
  v81 = a17;
  v79 = type metadata accessor for Date();
  v27 = *(v79 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v79);
  v100 = &v77[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v32 = &v77[-v31];
  v93 = &v77[-v31];
  v33 = type metadata accessor for UUID();
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v86 = &v77[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v77[-v38];
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v77[-v41];
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v77[-v44];
  MEMORY[0x28223BE20](v43);
  v47 = &v77[-v46];
  v78 = *a5;
  v80 = v48;
  v49 = *(v48 + 16);
  v89 = a4;
  v49(&v77[-v46], a4, v33);
  v49(v45, v96, v33);
  v88 = v27;
  v50 = *(v27 + 16);
  v51 = v32;
  v52 = v79;
  v50(v51, v95, v79);
  v49(v42, v94, v33);
  v50(v100, v91, v52);
  v90 = v39;
  v49(v39, v92, v33);
  v53 = objc_allocWithZone(v85);
  v54 = &v53[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
  v55 = v87;
  *v54 = v84;
  v54[1] = v55;
  v84 = v47;
  v49(&v53[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID], v47, v33);
  swift_beginAccess();
  v102 = v78;
  Published.init(initialValue:)();
  swift_endAccess();
  v87 = v45;
  v56 = v45;
  v57 = v52;
  v49(&v53[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID], v56, v33);
  *&v53[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance] = a9;
  *&v53[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration] = a10;
  v58 = v97;
  v50(&v53[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate], v93, v52);
  v85 = v42;
  v49(&v53[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID], v42, v33);
  *&v53[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance] = a11;
  *&v53[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration] = a12;
  v50(&v53[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate], v100, v52);
  v59 = &v53[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
  v60 = v98;
  *v59 = v99;
  v59[1] = v60;
  *&v53[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize] = v81;
  if (v58)
  {
    outlined copy of Data._Representation(v99, v98);
    v61 = v58;
    [v61 coordinate];
    *&v53[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = v62;
    [v61 coordinate];
    v64 = v63;
    v97 = v61;

    *&v53[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = v64;
  }

  else
  {
    *&v53[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = 0x412E848000000000;
    *&v53[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = 0x412E848000000000;
    outlined copy of Data._Representation(v99, v98);
  }

  *&v53[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue] = a13;
  v65 = v86;
  v49(v86, v90, v33);
  *&v53[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v66 = v88;
  v67 = *(v88 + 56);
  v67(&v53[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v52);
  v67(&v53[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v52);
  v68 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v69 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v69 - 8) + 56))(&v53[v68], 1, 1, v69);
  v70 = v80;
  (*(v80 + 56))(&v53[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v33);
  v71 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v53[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v49(&v53[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v65, v33);
  *&v53[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v82;
  v53[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 2;
  *&v53[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v83;
  swift_beginAccess();
  *&v53[v71] = 0;
  v53[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v72 = type metadata accessor for WorkoutConfiguration();
  v101.receiver = v53;
  v101.super_class = v72;
  v73 = objc_msgSendSuper2(&v101, sel_init);

  outlined consume of Data._Representation(v99, v98);
  v74 = *(v70 + 8);
  v74(v92, v33);
  v75 = *(v66 + 8);
  v75(v91, v57);
  v74(v94, v33);
  v75(v95, v57);
  v74(v96, v33);
  v74(v89, v33);
  v74(v65, v33);
  v74(v90, v33);
  v75(v100, v57);
  v74(v85, v33);
  v75(v93, v57);
  v74(v87, v33);
  v74(v84, v33);
  return v73;
}

uint64_t RaceWorkoutConfiguration.encode(to:)(void *a1)
{
  v2 = type metadata accessor for Date();
  v87 = *(v2 - 8);
  v88 = v2;
  v3 = *(v87 + 8);
  v4 = MEMORY[0x28223BE20](v2);
  v84 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v86 = v75 - v6;
  v89 = type metadata accessor for UUID();
  v91 = *(v89 - 8);
  v7 = v91[8];
  v8 = MEMORY[0x28223BE20](v89);
  v85 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v75 - v11;
  MEMORY[0x28223BE20](v10);
  v90 = v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore04RaceD13ConfigurationC10CodingKeys33_B8B1499B283BD297B519DBC10C415212LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore04RaceD13ConfigurationC10CodingKeys33_B8B1499B283BD297B519DBC10C415212LLOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v75 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys();
  v20 = v14;
  v21 = v93;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = (v21 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle);
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];
  v106 = 0;

  v25 = v92;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v25)
  {
    (*(v15 + 8))(v18, v20);
  }

  else
  {
    v82 = a1;
    v83 = v12;
    v92 = v15;

    v27 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
    swift_beginAccess();
    v28 = v21;
    v30 = v91 + 2;
    v29 = v91[2];
    v31 = v89;
    v29(v90, v28 + v27, v89);
    v105 = 1;
    v32 = _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v78 = v30;
    v79 = v32;
    v80 = v29;
    v33 = v91 + 1;
    v34 = v91[1];
    v34(v90, v31);
    swift_getKeyPath();
    swift_getKeyPath();
    v81 = v20;
    v35 = v93;
    static Published.subscript.getter();

    v104 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v90 = v34;
    v91 = v33;

    v36 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
    swift_beginAccess();
    v37 = v83;
    v38 = v89;
    v80(v83, v35 + v36, v89);
    v104 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (v90)(v37, v38);
    v39 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
    swift_beginAccess();
    v40 = *(v35 + v39);
    v103 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v41 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
    swift_beginAccess();
    v42 = *(v35 + v41);
    v102 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v77 = 0;
    v43 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate;
    swift_beginAccess();
    v83 = v18;
    v45 = v86;
    v44 = v87;
    v46 = v87 + 16;
    v47 = v88;
    v76 = *(v87 + 2);
    v76(v86, v35 + v43, v88);
    v101 = 6;
    v48 = _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v49 = v83;
    v50 = v77;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v50)
    {
      (*(v44 + 1))(v45, v47);
      return (*(v92 + 8))(v49, v81);
    }

    else
    {
      v77 = v48;
      v75[1] = v46;
      v51 = *(v44 + 1);
      v51(v45, v47);
      v52 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
      v53 = v93;
      swift_beginAccess();
      v54 = v53 + v52;
      v55 = v85;
      v56 = v89;
      v80(v85, v54, v89);
      v100 = 7;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v87 = v51;
      (v90)(v55, v56);
      v57 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
      v58 = v93;
      swift_beginAccess();
      v59 = *(v58 + v57);
      v99 = 8;
      KeyedEncodingContainer.encode(_:forKey:)();
      v60 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
      v61 = v93;
      swift_beginAccess();
      v62 = *(v61 + v60);
      v98 = 9;
      KeyedEncodingContainer.encode(_:forKey:)();
      v63 = *(v93 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude);
      v98 = 11;
      KeyedEncodingContainer.encode(_:forKey:)();
      v64 = *(v93 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude);
      v98 = 12;
      KeyedEncodingContainer.encode(_:forKey:)();
      v65 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate;
      v66 = v93;
      swift_beginAccess();
      v76(v84, v66 + v65, v88);
      v97 = 10;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v87(v84, v88);
      v67 = (v93 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData);
      swift_beginAccess();
      v68 = v67[1];
      v95 = *v67;
      v96 = v68;
      v94 = 13;
      outlined copy of Data._Representation(v95, v68);
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      outlined consume of Data._Representation(v95, v96);
      v69 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize;
      v70 = v93;
      swift_beginAccess();
      v71 = *(v70 + v69);
      v94 = 14;
      KeyedEncodingContainer.encode(_:forKey:)();
      v72 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
      v73 = v93;
      swift_beginAccess();
      v74 = *(v73 + v72);
      v107 = 15;
      KeyedEncodingContainer.encode(_:forKey:)();
      WorkoutConfiguration.encode(to:)(v82);
      return (*(v92 + 8))(v83, v81);
    }
  }
}

void *RaceWorkoutConfiguration.init(from:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Date();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v62 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = v57 - v6;
  v7 = type metadata accessor for UUID();
  v66 = *(v7 - 8);
  v8 = *(v66 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v57 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore04RaceD13ConfigurationC10CodingKeys33_B8B1499B283BD297B519DBC10C415212LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore04RaceD13ConfigurationC10CodingKeys33_B8B1499B283BD297B519DBC10C415212LLOGMR);
  v67 = *(v17 - 8);
  v68 = v17;
  v18 = *(v67 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v57 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  lazy protocol witness table accessor for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys();
  v69 = v20;
  v23 = v70;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    v26 = v73;
    __swift_destroy_boxed_opaque_existential_1(v71);
    v27 = *((*MEMORY[0x277D85000] & *v26) + 0x30);
    v28 = *((*MEMORY[0x277D85000] & *v26) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v14;
    v61 = v11;
    v70 = v7;
    LOBYTE(v74[0]) = 0;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = v73;
    v31 = (v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle);
    *v31 = v25;
    v31[1] = v32;
    LOBYTE(v74[0]) = 1;
    v33 = _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v34 = v70;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v59 = v33;
    v35 = v16;
    v36 = v30;
    v38 = v66 + 32;
    v37 = *(v66 + 32);
    v37(&v36[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID], v35, v34);
    LOBYTE(v74[0]) = 2;
    v60 = 0;
    v39 = KeyedDecodingContainer.decode(_:forKey:)();
    v41 = v40;
    v58 = v37;
    v57[1] = v38;
    v42._countAndFlagsBits = v39;
    v42._object = v41;
    v43 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RaceWorkoutConfiguration.init(from:), v42);

    v44 = v73;
    swift_beginAccess();
    v75 = v43 != 0;
    Published.init(initialValue:)();
    swift_endAccess();
    LOBYTE(v74[0]) = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v58(&v44[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID], v24, v34);
    LOBYTE(v74[0]) = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v44[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance] = v45;
    LOBYTE(v74[0]) = 5;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v44[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration] = v46;
    LOBYTE(v74[0]) = 6;
    v47 = _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v48 = v65;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v57[0] = v47;
    v49 = *(v64 + 32);
    v49(&v44[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate], v63, v48);
    LOBYTE(v74[0]) = 7;
    v50 = v61;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v58(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID, v50, v34);
    LOBYTE(v74[0]) = 8;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance) = v51;
    LOBYTE(v74[0]) = 9;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration) = v52;
    LOBYTE(v74[0]) = 11;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude) = v53;
    LOBYTE(v74[0]) = 12;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude) = v54;
    LOBYTE(v74[0]) = 10;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v49(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate, v62, v65);
    v75 = 13;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData) = *v74;
    LOBYTE(v74[0]) = 14;
    *(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v74[0]) = 15;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue) = v55;
    v56 = v71;
    _ss7Decoder_pWOcTm_1(v71, v74);
    v21 = WorkoutConfiguration.init(from:)(v74);
    (*(v67 + 8))(v69, v68);
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  return v21;
}

uint64_t RaceWorkoutConfiguration.updateWorkoutInfo(from:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
  swift_beginAccess();
  v36 = v4[2];
  v36(v7, a1 + v8, v3);
  v9 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
  swift_beginAccess();
  v10 = v4[5];
  v10(v1 + v9, v7, v3);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  swift_beginAccess();
  v12 = *(a1 + v11);
  v13 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  swift_beginAccess();
  *(v1 + v13) = v12;
  v14 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
  swift_beginAccess();
  v15 = *(a1 + v14);
  v16 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
  swift_beginAccess();
  *(v1 + v16) = v15;
  v17 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
  swift_beginAccess();
  v36(v7, a1 + v17, v3);
  v18 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
  swift_beginAccess();
  v10(v1 + v18, v7, v3);
  swift_endAccess();
  v19 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
  swift_beginAccess();
  v20 = *(a1 + v19);
  v21 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
  swift_beginAccess();
  *(v1 + v21) = v20;
  v22 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
  swift_beginAccess();
  v23 = *(a1 + v22);
  v24 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
  swift_beginAccess();
  *(v1 + v24) = v23;
  v25 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude;
  v37.latitude = *(a1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude);
  v26 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude;
  v37.longitude = *(a1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude);
  if (CLLocationCoordinate2DIsValid(v37) && (v27 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(a1 + v25) longitude:*(a1 + v26)]) != 0)
  {
    v28 = v27;
    [v27 coordinate];
    *(v1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude) = v29;
    [v28 coordinate];
    v31 = v30;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude) = 0x412E848000000000;
    v31 = 0x412E848000000000;
  }

  *(v1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude) = v31;
  v32 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
  swift_beginAccess();
  v33 = *(a1 + v32);
  v34 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
  result = swift_beginAccess();
  *(v1 + v34) = v33;
  return result;
}

uint64_t RaceWorkoutConfiguration.isEquivalent(to:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v109 = type metadata accessor for Date();
  v111 = *(v109 - 8);
  v4 = *(v111 + 64);
  v5 = MEMORY[0x28223BE20](v109);
  v108 = v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v110 = v103 - v7;
  v8 = type metadata accessor for UUID();
  v114 = *(v8 - 8);
  v9 = *(v114 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v113 = v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v103 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v14 = swift_allocObject();
  v112 = xmmword_20B423A90;
  *(v14 + 16) = xmmword_20B423A90;
  v118 = 0;
  v119 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  MEMORY[0x20F2E6D80](0xD000000000000031, 0x800000020B45AD40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  _print_unlocked<A, B>(_:_:)();
  v15 = v118;
  v16 = v119;
  v17 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  print(_:separator:terminator:)();

  _ss7Decoder_pWOcTm_1(a1, &v118);
  if (!swift_dynamicCast())
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v112;
    *(v38 + 56) = v17;
    *(v38 + 32) = 0xD000000000000031;
    *(v38 + 40) = 0x800000020B45AD80;
    print(_:separator:terminator:)();

LABEL_40:
    v101 = 0;
    return v101 & 1;
  }

  v18 = v117;
  v19 = &v117[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
  swift_beginAccess();
  v20 = *v19;
  v21 = *(v19 + 1);
  v22 = (v2 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle);
  swift_beginAccess();
  if ((v20 != *v22 || v21 != v22[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_36:

    goto LABEL_40;
  }

  v23 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
  swift_beginAccess();
  v24 = v114;
  v25 = v114 + 16;
  v26 = *(v114 + 16);
  v26(v13, &v18[v23], v8);
  v27 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
  swift_beginAccess();
  v28 = v113;
  v107 = v25;
  v26(v113, (v2 + v27), v8);
  LOBYTE(v27) = static UUID.== infix(_:_:)();
  v29 = v18;
  v31 = *(v24 + 8);
  v30 = v24 + 8;
  v31(v28, v8);
  *&v112 = v31;
  v31(v13, v8);
  if ((v27 & 1) == 0)
  {
    goto LABEL_37;
  }

  v106 = v26;
  v114 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v32 = v116;
  swift_getKeyPath();
  swift_getKeyPath();
  v105 = v2;
  static Published.subscript.getter();

  if (v32)
  {
    v33 = 1953718604;
  }

  else
  {
    v33 = 0x6C616E6F73726550;
  }

  if (v32)
  {
    v34 = 0xE400000000000000;
  }

  else
  {
    v34 = 0xED00007473654220;
  }

  if (v115)
  {
    v35 = 1953718604;
  }

  else
  {
    v35 = 0x6C616E6F73726550;
  }

  if (v115)
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xED00007473654220;
  }

  if (v33 != v35 || v34 != v36)
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v37 = v106;
    if (v39)
    {
      goto LABEL_23;
    }

LABEL_37:

    goto LABEL_40;
  }

  v37 = v106;
LABEL_23:
  v40 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
  swift_beginAccess();
  v37(v13, &v18[v40], v8);
  v41 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
  v42 = v105;
  swift_beginAccess();
  v43 = v113;
  v37(v113, (v42 + v41), v8);
  LOBYTE(v41) = static UUID.== infix(_:_:)();
  v44 = v112;
  (v112)(v43, v8);
  v44(v13, v8);
  if ((v41 & 1) == 0)
  {
    goto LABEL_37;
  }

  v45 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  swift_beginAccess();
  v46 = *&v29[v45];
  v47 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  swift_beginAccess();
  v48 = v29;
  if (v46 != *(v42 + v47))
  {
    goto LABEL_37;
  }

  v49 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
  swift_beginAccess();
  v50 = *&v29[v49];
  v51 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
  swift_beginAccess();
  if (v50 != *(v42 + v51))
  {
    goto LABEL_37;
  }

  v52 = v42;
  v53 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate;
  swift_beginAccess();
  v54 = v111;
  v56 = v111 + 16;
  v55 = *(v111 + 16);
  v104 = v48;
  v57 = &v48[v53];
  v58 = v109;
  v55(v110, v57, v109);
  v59 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate;
  swift_beginAccess();
  v60 = v108;
  v103[0] = v55;
  v103[1] = v56;
  v55(v108, (v52 + v59), v58);
  v61 = v110;
  LOBYTE(v59) = static Date.== infix(_:_:)();
  v62 = *(v54 + 8);
  v62(v60, v58);
  v111 = v54 + 8;
  v62(v61, v58);
  if ((v59 & 1) == 0)
  {

    goto LABEL_40;
  }

  v63 = v62;
  v64 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
  v65 = v104;
  swift_beginAccess();
  v66 = &v65[v64];
  v67 = v106;
  v106(v13, v66, v8);
  v68 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
  v69 = v105;
  swift_beginAccess();
  v70 = v113;
  v67(v113, v69 + v68, v8);
  LOBYTE(v68) = static UUID.== infix(_:_:)();
  v71 = v70;
  v72 = v65;
  v73 = v112;
  (v112)(v71, v8);
  v73(v13, v8);
  if ((v68 & 1) == 0)
  {

    goto LABEL_40;
  }

  v74 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
  swift_beginAccess();
  v75 = *&v72[v74];
  v76 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
  swift_beginAccess();
  v18 = v72;
  if (v75 != *(v69 + v76))
  {
    goto LABEL_36;
  }

  v77 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
  swift_beginAccess();
  v78 = *&v72[v77];
  v79 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
  swift_beginAccess();
  if (v78 != *(v69 + v79))
  {
    goto LABEL_36;
  }

  v80 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate;
  swift_beginAccess();
  v81 = &v72[v80];
  v83 = v109;
  v82 = v110;
  v84 = v103[0];
  (v103[0])(v110, v81, v109);
  v85 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate;
  swift_beginAccess();
  v86 = v69 + v85;
  v87 = v108;
  v84(v108, v86, v83);
  LOBYTE(v80) = static Date.== infix(_:_:)();
  v63(v87, v83);
  v63(v82, v83);
  if ((v80 & 1) == 0)
  {
    goto LABEL_36;
  }

  v88 = &v18[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
  swift_beginAccess();
  v90 = *v88;
  v89 = v88[1];
  v91 = (v69 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData);
  swift_beginAccess();
  v93 = *v91;
  v92 = v91[1];
  outlined copy of Data._Representation(v90, v89);
  outlined copy of Data._Representation(v93, v92);
  v94 = specialized static Data.== infix(_:_:)(v90, v89, v93, v92);
  outlined consume of Data._Representation(v93, v92);
  outlined consume of Data._Representation(v90, v89);
  if ((v94 & 1) == 0)
  {
    goto LABEL_36;
  }

  v95 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize;
  swift_beginAccess();
  v96 = *&v18[v95];
  v97 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize;
  swift_beginAccess();
  if (v96 != *(v69 + v97))
  {
    goto LABEL_36;
  }

  v98 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
  swift_beginAccess();
  v99 = *&v18[v98];
  v100 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
  swift_beginAccess();
  if (v99 != *(v69 + v100))
  {
    goto LABEL_36;
  }

  v101 = specialized WorkoutConfiguration.isEquivalent(to:)(v18, v69);

  return v101 & 1;
}

uint64_t RaceWorkoutConfiguration.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle + 8);

  v2 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID, v3);
  v5 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v4(v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID, v3);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate, v6);
  outlined consume of Data._Representation(*(v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData), *(v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData + 8));
  v8 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration__raceFilter;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  v10 = *(*(v9 - 8) + 8);

  return v10(v0 + v8, v9);
}

id RaceWorkoutConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static RaceWorkoutConfiguration.canonicalCycling()()
{
  v104 = type metadata accessor for UUID();
  v110 = *(v104 - 8);
  v0 = *(v110 + 64);
  v1 = MEMORY[0x28223BE20](v104);
  v109 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v115 = &v99 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v121 = &v99 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v124 = &v99 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v117 = &v99 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v116 = &v99 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v123 = &v99 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v122 = &v99 - v16;
  MEMORY[0x28223BE20](v15);
  v118 = &v99 - v17;
  v102 = type metadata accessor for Date();
  v111 = *(v102 - 8);
  v18 = v111[8];
  v19 = MEMORY[0x28223BE20](v102);
  v119 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v120 = &v99 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v112 = &v99 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v99 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v113 = &v99 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v99 - v32;
  v108 = type metadata accessor for DateComponents();
  v103 = *(v108 - 1);
  v34 = v103[8];
  MEMORY[0x28223BE20](v108);
  v36 = &v99 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Calendar();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v99 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v46 = &v99 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v48 = &v99 - v47;
  v106 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:13 isIndoor:0];
  v49 = [objc_opt_self() mainBundle];
  v50 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B45ADC0);
  v114 = [objc_opt_self() imageNamed:v50 inBundle:v49 withConfiguration:0];

  static Calendar.current.getter();
  (*(v38 + 56))(v33, 1, 1, v37);
  v51 = type metadata accessor for TimeZone();
  (*(*(v51 - 8) + 56))(v113, 1, 1, v51);
  v52 = v102;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  static Date.now.getter();
  Calendar.date(byAdding:to:wrappingComponents:)();
  v53 = v111;
  v55 = v111 + 1;
  v54 = v111[1];
  v125 = v26;
  v113 = v54;
  (v54)(v26, v52);
  v56 = v36;
  v57 = v53;
  (v103[1])(v56, v108);
  (*(v38 + 8))(v41, v37);
  UUID.init()();
  v58 = UUID.init()();
  v59 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v58, 1600.0, 1610.0);
  v61 = v60;
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v59, 170.0, 180.0);
  v63 = v62;
  v108 = v48;
  _s10Foundation4DateVSgWOcTm_0(v48, v46, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v64 = v53[6];
  if (v64(v46, 1, v52) == 1)
  {
    v65 = v112;
    static Date.now.getter();
    if (v64(v46, 1, v52) != 1)
    {
      _s10Foundation4DateVSgWOhTm_1(v46, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    v65 = v112;
    (v57[4])(v112, v46, v52);
  }

  v66 = UUID.init()();
  v67 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v66, 1600.0, 1610.0);
  v69 = v68;
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v67, 170.0, 180.0);
  v71 = v70;
  v72 = v125;
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  (v113)(v72, v52);
  v105 = v55;
  if (v114 && (v73 = UIImagePNGRepresentation(v114)) != 0)
  {
    v74 = v57;
    v75 = v65;
    v76 = v73;
    v101 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v77;
  }

  else
  {
    v74 = v57;
    v75 = v65;
    v101 = 0;
    v100 = 0xC000000000000000;
  }

  v78 = v116;
  UUID.init()();
  v103 = specialized Occurrence.__allocating_init(count:)(0);
  v79 = v110;
  v80 = *(v110 + 16);
  v81 = v117;
  v82 = v104;
  v80(v117, v118, v104);
  v80(v124, v122, v82);
  v83 = v74[2];
  v83(v125, v75, v52);
  v80(v121, v123, v82);
  v83(v119, v120, v52);
  v80(v115, v78, v82);
  v84 = objc_allocWithZone(v107);
  v85 = &v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
  strcpy(&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle], "San Francisco");
  *(v85 + 7) = -4864;
  v80(&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID], v81, v82);
  swift_beginAccess();
  v127 = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v80(&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID], v124, v82);
  *&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance] = v61;
  *&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration] = v63;
  v83(&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate], v125, v52);
  v80(&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID], v121, v82);
  *&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance] = v69;
  *&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration] = v71;
  v83(&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate], v119, v52);
  v86 = &v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
  v87 = v100;
  *v86 = v101;
  v86[1] = v87;
  *&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize] = 4;
  *&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = 0x412E848000000000;
  *&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = 0x412E848000000000;
  *&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue] = 0x3FE8F5C28F5C28F6;
  v88 = v109;
  v89 = v115;
  v80(v109, v115, v82);
  *&v84[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v90 = v111[7];
  v90(&v84[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v52);
  v90(&v84[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v52);
  v91 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v92 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v92 - 8) + 56))(&v84[v91], 1, 1, v92);
  (*(v79 + 56))(&v84[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v82);
  v93 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v84[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v80(&v84[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v88, v82);
  *&v84[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v106;
  v84[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 2;
  *&v84[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v103;
  swift_beginAccess();
  *&v84[v93] = 0;
  v84[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v94 = type metadata accessor for WorkoutConfiguration();
  v126.receiver = v84;
  v126.super_class = v94;
  v95 = objc_msgSendSuper2(&v126, sel_init);

  v96 = *(v79 + 8);
  v96(v88, v82);
  v96(v89, v82);
  v97 = v113;
  (v113)(v119, v52);
  v96(v121, v82);
  (v97)(v125, v52);
  v96(v124, v82);
  v96(v117, v82);
  v96(v116, v82);
  (v97)(v120, v52);
  v96(v123, v82);
  (v97)(v112, v52);
  v96(v122, v82);
  v96(v118, v82);
  _s10Foundation4DateVSgWOhTm_1(v108, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v95;
}

id static RaceWorkoutConfiguration.canonicalWheelchair()()
{
  v104 = type metadata accessor for UUID();
  v111 = *(v104 - 8);
  v0 = *(v111 + 64);
  v1 = MEMORY[0x28223BE20](v104);
  v110 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v114 = &v99 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v122 = &v99 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v124 = &v99 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v116 = &v99 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v115 = &v99 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v123 = &v99 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v119 = &v99 - v16;
  MEMORY[0x28223BE20](v15);
  v118 = &v99 - v17;
  v103 = type metadata accessor for Date();
  v117 = *(v103 - 8);
  v18 = v117[8];
  v19 = MEMORY[0x28223BE20](v103);
  v120 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v121 = &v99 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v112 = &v99 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v99 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v99 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v99 - v33;
  v109 = type metadata accessor for DateComponents();
  v105 = *(v109 - 1);
  isa = v105[8].super.isa;
  MEMORY[0x28223BE20](v109);
  v37 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Calendar();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v99 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v47 = &v99 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v49 = &v99 - v48;
  v106 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:71 isIndoor:0];
  static Calendar.current.getter();
  (*(v39 + 56))(v34, 1, 1, v38);
  v50 = type metadata accessor for TimeZone();
  (*(*(v50 - 8) + 56))(v30, 1, 1, v50);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  static Date.now.getter();
  Calendar.date(byAdding:to:wrappingComponents:)();
  v52 = v117 + 1;
  v51 = v117[1];
  v125 = v26;
  v53 = v26;
  v54 = v117;
  v55 = v103;
  v113 = v51;
  v51(v53, v103);
  (v105[1].super.isa)(v37, v109);
  (*(v39 + 8))(v42, v38);
  v56 = [objc_opt_self() mainBundle];
  v57 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B45ADC0);
  v58 = [objc_opt_self() imageNamed:v57 inBundle:v56 withConfiguration:0];

  UUID.init()();
  v59 = UUID.init()();
  v60 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v59, 1600.0, 1610.0);
  v62 = v61;
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v60, 240.0, 260.0);
  v64 = v63;
  v109 = v49;
  _s10Foundation4DateVSgWOcTm_0(v49, v47, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v65 = v54[6];
  if (v65(v47, 1, v55) == 1)
  {
    v66 = v112;
    static Date.now.getter();
    if (v65(v47, 1, v55) != 1)
    {
      _s10Foundation4DateVSgWOhTm_1(v47, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    v66 = v112;
    (v54[4])(v112, v47, v55);
  }

  v67 = UUID.init()();
  v68 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v67, 1600.0, 1610.0);
  v70 = v69;
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v68, 240.0, 260.0);
  v72 = v71;
  v73 = v125;
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v113(v73, v55);
  v107 = v52;
  v105 = v58;
  if (v58 && (v74 = UIImagePNGRepresentation(v58)) != 0)
  {
    v75 = v55;
    v76 = v74;
    v101 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v77;
  }

  else
  {
    v75 = v55;
    v101 = 0;
    v100 = 0xC000000000000000;
  }

  v78 = v115;
  UUID.init()();
  v102 = specialized Occurrence.__allocating_init(count:)(0);
  v79 = v111;
  v80 = *(v111 + 16);
  v81 = v116;
  v82 = v104;
  v80(v116, v118, v104);
  v80(v124, v119, v82);
  v83 = v117[2];
  v83(v125, v66, v75);
  v80(v122, v123, v82);
  v83(v120, v121, v75);
  v80(v114, v78, v82);
  v84 = objc_allocWithZone(v108);
  v85 = &v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
  strcpy(&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle], "Laguna Beach");
  v85[13] = 0;
  *(v85 + 7) = -5120;
  v80(&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID], v81, v82);
  swift_beginAccess();
  v127 = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v80(&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID], v124, v82);
  *&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance] = v62;
  *&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration] = v64;
  v83(&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate], v125, v75);
  v80(&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID], v122, v82);
  *&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance] = v70;
  *&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration] = v72;
  v83(&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate], v120, v75);
  v86 = &v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
  v87 = v100;
  *v86 = v101;
  v86[1] = v87;
  *&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize] = 4;
  *&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = 0x412E848000000000;
  *&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = 0x412E848000000000;
  *&v84[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue] = 0x3FE999999999999ALL;
  v88 = v110;
  v89 = v114;
  v80(v110, v114, v82);
  *&v84[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v90 = v117[7];
  v90(&v84[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v75);
  v90(&v84[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v75);
  v91 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v92 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v92 - 8) + 56))(&v84[v91], 1, 1, v92);
  (*(v79 + 56))(&v84[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v82);
  v93 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v84[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v80(&v84[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v88, v82);
  *&v84[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v106;
  v84[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 2;
  *&v84[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v102;
  swift_beginAccess();
  *&v84[v93] = 0;
  v84[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v94 = type metadata accessor for WorkoutConfiguration();
  v126.receiver = v84;
  v126.super_class = v94;
  v95 = objc_msgSendSuper2(&v126, sel_init);

  v96 = *(v79 + 8);
  v96(v88, v82);
  v96(v89, v82);
  v97 = v113;
  v113(v120, v75);
  v96(v122, v82);
  v97(v125, v75);
  v96(v124, v82);
  v96(v116, v82);
  v96(v115, v82);
  v97(v121, v75);
  v96(v123, v82);
  v97(v112, v75);
  v96(v119, v82);
  v96(v118, v82);
  _s10Foundation4DateVSgWOhTm_1(v109, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v95;
}

id protocol witness for static Canonical.canonical() in conformance RaceWorkoutConfiguration@<X0>(void *a1@<X8>)
{
  result = specialized static RaceWorkoutConfiguration.canonical()();
  *a1 = result;
  return result;
}

id RaceWorkoutConfiguration.copyWith(activityType:routeTitle:clusterUUID:raceFilter:lastWorkoutUUID:lastWorkoutDistance:lastWorkoutDuration:lastWorkoutDate:bestWorkoutUUID:bestWorkoutDistance:bestWorkoutDuration:bestWorkoutDate:routeSnapshotData:clusterSize:lastWorkoutStartingPoint:relevanceValue:uuid:occurrence:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, char a24, uint64_t a25, void *a26)
{
  LODWORD(v164) = a8;
  v162 = a6;
  v177 = a4;
  v175 = a3;
  ObjectType = swift_getObjectType();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v172 = &v159 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v173 = &v159 - v35;
  v36 = type metadata accessor for Date();
  v184 = *(v36 - 8);
  v185 = v36;
  v37 = v184[8];
  v38 = MEMORY[0x28223BE20](v36);
  v182 = &v159 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v183 = &v159 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v167 = &v159 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v159 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v159 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v159 - v51;
  v53 = type metadata accessor for UUID();
  v54 = *(v53 - 8);
  v186 = v53;
  v187 = v54;
  v55 = *(v54 + 64);
  v56 = MEMORY[0x28223BE20](v53);
  v171 = &v159 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v178 = &v159 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v179 = &v159 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v181 = &v159 - v63;
  MEMORY[0x28223BE20](v62);
  v180 = &v159 - v64;
  v65 = *a5;
  v166 = a1;
  if (a1)
  {
    v170 = a1;
  }

  else
  {
    v66 = v65;
    v67 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v68 = *(v26 + v67);
    v65 = v66;
    v170 = v68;
  }

  v69 = v187;
  v174 = a7;
  v163 = v47;
  if (v175)
  {
    v168 = a2;
    v165 = v175;
  }

  else
  {
    v70 = (v26 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle);
    swift_beginAccess();
    v71 = v70[1];
    v168 = *v70;
    v69 = v187;
    v165 = v71;
  }

  _s10Foundation4DateVSgWOcTm_0(v177, v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v72 = *(v69 + 48);
  v73 = v186;
  v74 = v72(v52, 1, v186);
  v176 = v72;
  v177 = v69 + 48;
  if (v74 == 1)
  {
    v75 = v65;
    v76 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
    swift_beginAccess();
    v77 = v26 + v76;
    v65 = v75;
    (*(v69 + 16))(v180, v77, v73);
    v78 = v72(v52, 1, v73);

    v79 = v166;
    v69 = v187;
    if (v78 != 1)
    {
      _s10Foundation4DateVSgWOhTm_1(v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    (*(v69 + 32))(v180, v52, v73);

    v80 = v166;
  }

  v81 = v184;
  if (v65 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v65 = v190;
  }

  else
  {
    v190 = v65 & 1;
  }

  v82 = v186;
  _s10Foundation4DateVSgWOcTm_0(v162, v50, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v83 = v176;
  v84 = v176(v50, 1, v82);
  LODWORD(v166) = v65;
  if (v84 == 1)
  {
    v85 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
    swift_beginAccess();
    (*(v69 + 16))(v181, v26 + v85, v82);
    v86 = v83;
    if (v83(v50, 1, v82) != 1)
    {
      _s10Foundation4DateVSgWOhTm_1(v50, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    (*(v69 + 32))(qword_27C75F000, v181, v50, v82);
    v86 = v83;
  }

  if (v164)
  {
    v88 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
    swift_beginAccess();
    v174 = *(v26 + v88);
  }

  if (a10)
  {
    v89 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
    swift_beginAccess();
    a9 = *(v26 + v89);
  }

  v164 = a9;
  v90 = v173;
  _s10Foundation4DateVSgWOcTm_0(a11, v173, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v91 = v81[6];
  v92 = v185;
  if (v91(v90, 1, v185) == 1)
  {
    v93 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate;
    swift_beginAccess();
    v94 = v26 + v93;
    v95 = v173;
    (v81[2])(v183, v94, v92);
    v96 = v91(v95, 1, v92);
    v97 = v186;
    if (v96 != 1)
    {
      _s10Foundation4DateVSgWOhTm_1(v95, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (v81[4])(v183, v90, v92);
    v97 = v186;
  }

  v173 = a13;
  v98 = v163;
  _s10Foundation4DateVSgWOcTm_0(a12, v163, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v86(v98, 1, v97) == 1)
  {
    v99 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
    swift_beginAccess();
    (*(v187 + 16))(v179, v26 + v99, v97);
    v100 = v86(v98, 1, v97);
    v101 = v185;
    if (v100 != 1)
    {
      _s10Foundation4DateVSgWOhTm_1(v98, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    (*(v187 + 32))(v179, v98, v97);
    v101 = v185;
  }

  if (a14)
  {
    v103 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
    swift_beginAccess();
    v173 = *(v26 + v103);
  }

  if (a16)
  {
    v104 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
    swift_beginAccess();
    a15 = *(v26 + v104);
  }

  v105 = v172;
  _s10Foundation4DateVSgWOcTm_0(a17, v172, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v91(v105, 1, v101) == 1)
  {
    v106 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate;
    swift_beginAccess();
    (v184[2])(v182, v26 + v106, v101);
    if (v91(v105, 1, v101) != 1)
    {
      _s10Foundation4DateVSgWOhTm_1(v105, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (v184[4])(v182, v105, v101);
  }

  v163 = a15;
  v108 = a18;
  v109 = a19;
  if (a19 >> 60 == 15)
  {
    v110 = (v26 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData);
    swift_beginAccess();
    v108 = *v110;
    v109 = v110[1];
    outlined copy of Data._Representation(v108, v109);
  }

  if (a21)
  {
    v111 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize;
    swift_beginAccess();
    a20 = *(v26 + v111);
  }

  v162 = a20;
  v175 = v109;
  v172 = a23;
  if (a22)
  {
    outlined copy of Data?(a18, a19);
    v161 = a22;
  }

  else
  {
    v112 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude;
    v113 = *(v26 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude);
    v114 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude;
    v115 = *(v26 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude);
    outlined copy of Data?(a18, a19);
    v191.latitude = v113;
    v191.longitude = v115;
    if (CLLocationCoordinate2DIsValid(v191))
    {
      v161 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v26 + v112) longitude:*(v26 + v114)];
    }

    else
    {
      v161 = 0;
    }
  }

  if (a24)
  {
    v116 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
    swift_beginAccess();
    v172 = *(v26 + v116);
  }

  v117 = v167;
  _s10Foundation4DateVSgWOcTm_0(a25, v167, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v118 = v186;
  v119 = v176;
  if (v176(v117, 1, v186) == 1)
  {
    v120 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v187 + 16))(v178, v26 + v120, v118);
    v121 = v119(v117, 1, v118);
    v122 = a22;
    v123 = v121 == 1;
    v124 = v184;
    if (!v123)
    {
      _s10Foundation4DateVSgWOhTm_1(v117, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    (*(v187 + 32))(v178, v117, v118);
    v125 = a22;
    v124 = v184;
  }

  v126 = v168;
  if (a26)
  {
    v184 = a26;
  }

  else
  {
    v127 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v184 = *(v26 + v127);
  }

  v128 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  v129 = *(v26 + v128);
  v130 = objc_allocWithZone(ObjectType);
  v131 = &v130[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
  v132 = v165;
  *v131 = v126;
  v131[1] = v132;
  v133 = *(v187 + 16);
  v133(&v130[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID], v180, v118);
  v134 = v118;
  swift_beginAccess();
  v189 = v166 & 1;
  v177 = v129;

  v135 = a26;
  Published.init(initialValue:)();
  swift_endAccess();
  v133(&v130[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID], v181, v118);
  *&v130[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance] = v174;
  *&v130[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration] = v164;
  v136 = v124[2];
  v137 = v185;
  v136(&v130[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate], v183, v185);
  v133(&v130[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID], v179, v134);
  *&v130[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance] = v173;
  *&v130[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration] = v163;
  v136(&v130[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate], v182, v137);
  v138 = &v130[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
  v139 = v175;
  *v138 = v108;
  v138[1] = v139;
  v140 = v161;
  *&v130[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize] = v162;
  v160 = v108;
  if (v140)
  {
    outlined copy of Data._Representation(v108, v139);
    v141 = v140;
    [v141 coordinate];
    *&v130[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = v142;
    [v141 coordinate];
    v144 = v143;
    v176 = v141;

    *&v130[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = v144;
  }

  else
  {
    *&v130[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = 0x412E848000000000;
    *&v130[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = 0x412E848000000000;
    outlined copy of Data._Representation(v108, v139);
    v176 = 0;
  }

  v145 = v171;
  *&v130[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue] = v172;
  v146 = v186;
  v133(v145, v178, v186);
  *&v130[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v147 = v124[7];
  v148 = v124;
  v149 = v185;
  v147(&v130[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v185);
  v147(&v130[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v149);
  v150 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v151 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v151 - 8) + 56))(&v130[v150], 1, 1, v151);
  v152 = v187;
  (*(v187 + 56))(&v130[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v146);
  v153 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v130[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v133(&v130[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v145, v146);
  *&v130[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v170;
  v130[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 2;
  *&v130[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v184;
  swift_beginAccess();
  *&v130[v153] = v177;
  v130[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v154 = type metadata accessor for WorkoutConfiguration();
  v188.receiver = v130;
  v188.super_class = v154;
  v155 = objc_msgSendSuper2(&v188, sel_init);

  outlined consume of Data._Representation(v160, v175);
  v156 = *(v152 + 8);
  v156(v145, v146);
  v156(v178, v146);
  v157 = v148[1];
  v157(v182, v149);
  v156(v179, v146);
  v157(v183, v149);
  v156(v181, v146);
  v156(v180, v146);
  return v155;
}

uint64_t specialized static BinaryFloatingPoint<>.random<A>(in:using:)(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x20F2E9440](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v6, a2, a3);
  }

  return result;
}

uint64_t specialized static RaceWorkoutConfiguration.displayName.getter()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B45AE40);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

unint64_t lazy protocol witness table accessor for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys);
  }

  return result;
}

uint64_t _ss7Decoder_pWOcTm_1(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t specialized RaceWorkoutConfiguration.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RaceWorkoutConfiguration.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

id specialized static RaceWorkoutConfiguration.canonical()()
{
  v0 = type metadata accessor for Date();
  v80 = *(v0 - 8);
  v1 = *(v80 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v99 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v75 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v75 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v75 - v10;
  v81 = type metadata accessor for UUID();
  v78 = *(v81 - 8);
  v12 = *(v78 + 64);
  v13 = MEMORY[0x28223BE20](v81);
  v85 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v92 = &v75 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v97 = &v75 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v98 = &v75 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v93 = &v75 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v89 = &v75 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v75 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v75 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v75 - v31;
  v84 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:0];
  v33 = [objc_opt_self() mainBundle];
  v34 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B45ADC0);
  v88 = [objc_opt_self() imageNamed:v34 inBundle:v33 withConfiguration:0];

  v90 = v32;
  UUID.init()();
  v94 = v30;
  v35 = UUID.init()();
  v36 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v35, 1609.34, 1619.0);
  v38 = v37;
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v36, 480.0, 500.0);
  v40 = v39;
  v95 = v11;
  static Date.now.getter();
  v91 = v27;
  v41 = UUID.init()();
  v42 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v41, 1609.34, 1619.0);
  v44 = v43;
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v42, 400.0, 420.0);
  v46 = v45;
  static Date.now.getter();
  v96 = v9;
  Date.addingTimeInterval(_:)();
  v47 = v80;
  v48 = *(v80 + 8);
  v87 = v0;
  v83 = v80 + 8;
  v82 = v48;
  v48(v6, v0);
  if (v88 && (v49 = UIImagePNGRepresentation(v88)) != 0)
  {
    v50 = v49;
    v77 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v51;
  }

  else
  {
    v77 = 0;
    v76 = 0xC000000000000000;
  }

  v52 = v89;
  UUID.init()();
  v79 = specialized Occurrence.__allocating_init(count:)(0);
  v53 = v78;
  v54 = *(v78 + 16);
  v55 = v93;
  v56 = v81;
  v54(v93, v90, v81);
  v54(v98, v94, v56);
  v57 = *(v47 + 16);
  v86 = v6;
  v58 = v87;
  v57(v6, v95, v87);
  v54(v97, v91, v56);
  v57(v99, v96, v58);
  v54(v92, v52, v56);
  v59 = objc_allocWithZone(type metadata accessor for RaceWorkoutConfiguration());
  v60 = &v59[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
  *v60 = 0x746C41206F6C6150;
  v60[1] = 0xE90000000000006FLL;
  v54(&v59[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID], v55, v56);
  swift_beginAccess();
  v101 = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v54(&v59[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID], v98, v56);
  *&v59[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance] = v38;
  *&v59[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration] = v40;
  v61 = v87;
  v57(&v59[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate], v86, v87);
  v54(&v59[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID], v97, v56);
  *&v59[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance] = v44;
  *&v59[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration] = v46;
  v57(&v59[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate], v99, v61);
  v62 = &v59[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
  v63 = v76;
  *v62 = v77;
  v62[1] = v63;
  *&v59[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize] = 4;
  *&v59[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = 0x412E848000000000;
  *&v59[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = 0x412E848000000000;
  *&v59[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue] = 0x3FE999999999999ALL;
  v64 = v85;
  v65 = v92;
  v54(v85, v92, v56);
  *&v59[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v66 = *(v47 + 56);
  v66(&v59[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v61);
  v66(&v59[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v61);
  v67 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v68 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v68 - 8) + 56))(&v59[v67], 1, 1, v68);
  (*(v53 + 56))(&v59[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v56);
  v69 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v59[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v54(&v59[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v64, v56);
  *&v59[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v84;
  v59[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 2;
  *&v59[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v79;
  swift_beginAccess();
  *&v59[v69] = 0;
  v59[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v70 = type metadata accessor for WorkoutConfiguration();
  v100.receiver = v59;
  v100.super_class = v70;
  v71 = objc_msgSendSuper2(&v100, sel_init);

  v72 = *(v53 + 8);
  v72(v64, v56);
  v72(v65, v56);
  v73 = v82;
  v82(v99, v61);
  v72(v97, v56);
  v73(v86, v61);
  v72(v98, v56);
  v72(v93, v56);
  v72(v89, v56);
  v73(v96, v61);
  v72(v91, v56);
  v73(v95, v61);
  v72(v94, v56);
  v72(v90, v56);
  return v71;
}

uint64_t _s10Foundation4DateVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for RaceWorkoutConfiguration()
{
  result = type metadata singleton initialization cache for RaceWorkoutConfiguration;
  if (!type metadata singleton initialization cache for RaceWorkoutConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RaceWorkoutConfiguration()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    v3 = type metadata accessor for Date();
    if (v4 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      type metadata accessor for Published<RaceFilter>();
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<RaceFilter>()
{
  if (!lazy cache variable for type metadata for Published<RaceFilter>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<RaceFilter>);
    }
  }
}

uint64_t getEnumTagSinglePayload for RaceWorkoutConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RaceWorkoutConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void key path setter for AddWorkoutActivityItemsDataSource.observers : AddWorkoutActivityItemsDataSource(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore33AddWorkoutActivityItemsDataSource_observers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id AddWorkoutActivityItemsDataSource.observers.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore33AddWorkoutActivityItemsDataSource_observers;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AddWorkoutActivityItemsDataSource.observers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore33AddWorkoutActivityItemsDataSource_observers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AddWorkoutActivityItemsDataSource.__allocating_init(reducedActivityTypesProvider:)()
{
  v1 = [objc_allocWithZone(v0) init];
  swift_unknownObjectRelease();
  return v1;
}

id AddWorkoutActivityItemsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AddWorkoutActivityItemsDataSource.init()()
{
  v1 = [objc_opt_self() weakObjectsHashTable];
  *&v0[OBJC_IVAR____TtC11WorkoutCore33AddWorkoutActivityItemsDataSource_observers] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AddWorkoutActivityItemsDataSource();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AddWorkoutActivityItemsDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddWorkoutActivityItemsDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id AddWorkoutActivityItemsDataSource.addObserver(_:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = OBJC_IVAR____TtC11WorkoutCore33AddWorkoutActivityItemsDataSource_observers;
  swift_beginAccess();
  return [*(v3 + v6) *a3];
}

Swift::Void __swiftcall AddWorkoutActivityItemsDataSource.updateObservers()()
{
  v1 = specialized AddWorkoutActivityItemsDataSource.queryActivityPickerItems()();
  v2 = OBJC_IVAR____TtC11WorkoutCore33AddWorkoutActivityItemsDataSource_observers;
  swift_beginAccess();
  v3 = [*(v0 + v2) allObjects];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    return;
  }

  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2E7A20](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      v8 = swift_conformsToProtocol2();
      if (v8)
      {
        if (v7)
        {
          v9 = v8;
          ObjectType = swift_getObjectType();
          (*(v9 + 8))(v1, 2, ObjectType, v9);
        }
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_13;
  }

  __break(1u);
}

id protocol witness for ActivityItemsDataSourceObservable.observers.getter in conformance AddWorkoutActivityItemsDataSource()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11WorkoutCore33AddWorkoutActivityItemsDataSource_observers;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return v3;
}

id protocol witness for ActivityItemsDataSourceObservable.addObserver(_:) in conformance AddWorkoutActivityItemsDataSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = *v5;
  v9 = OBJC_IVAR____TtC11WorkoutCore33AddWorkoutActivityItemsDataSource_observers;
  swift_beginAccess();
  return [*(v8 + v9) *a5];
}

uint64_t specialized AddWorkoutActivityItemsDataSource.queryActivityPickerItems()()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0x4B524F575F444441, 0xEB0000000054554FLL);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = type metadata accessor for ButtonActivityPickerItem();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_type] = 3;
  v10 = &v9[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title];
  *v10 = v5;
  v10[1] = v7;
  v15.receiver = v9;
  v15.super_class = v8;
  v11 = objc_msgSendSuper2(&v15, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore18ActivityPickerItem_pGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore18ActivityPickerItem_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20B423A90;
  v13 = lazy protocol witness table accessor for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem();
  *(v12 + 32) = v11;
  *(v12 + 40) = v13;
  return v12;
}

unint64_t lazy protocol witness table accessor for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem()
{
  result = lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem;
  if (!lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem)
  {
    type metadata accessor for ButtonActivityPickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem;
  if (!lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem)
  {
    type metadata accessor for ButtonActivityPickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem);
  }

  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = type metadata accessor for Date();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x20F2E7A20](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

{
  return sub_20AECDBA4(a1, a2, a3);
}

uint64_t key path getter for ManagedConfigurationsViewModel.upNextConfigurations : ManagedConfigurationsViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  return key path getter for ManagedConfigurationsViewModel.upNextConfigurations : ManagedConfigurationsViewModel(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for ManagedConfigurationsViewModel.upNextConfigurations : ManagedConfigurationsViewModel(uint64_t *a1, uint64_t *a2)
{
  return key path setter for ManagedConfigurationsViewModel.upNextConfigurations : ManagedConfigurationsViewModel(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t ManagedConfigurationsViewModel.upNextConfigurations.getter()
{
  return ManagedConfigurationsViewModel.upNextConfigurations.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for ManagedConfigurationsViewModel.$upNextConfigurations : ManagedConfigurationsViewModel(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for ManagedConfigurationsViewModel.$upNextConfigurations : ManagedConfigurationsViewModel(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
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

uint64_t ManagedConfigurationsViewModel.$upNextConfigurations.getter(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

BOOL ManagedConfigurationsViewModel.hasVisibleConfigurations.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8 >> 62)
  {
    v4 = __CocoaSet.count.getter();

    if (v4)
    {
      return 1;
    }
  }

  else
  {
    v0 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v0)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v8 >> 62))
  {
    v1 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v1)
    {
      goto LABEL_5;
    }

    return 1;
  }

  v5 = __CocoaSet.count.getter();

  if (v5)
  {
    return 1;
  }

LABEL_5:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8 >> 62)
  {
    v6 = __CocoaSet.count.getter();

    if (v6)
    {
      return 1;
    }
  }

  else
  {
    v2 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v7 != 0;
}

uint64_t ManagedConfigurationsViewModel.topSuggested.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x20F2E7A20](0);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(v3 + 32);
LABEL_6:
    v2 = v1;

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t ManagedConfigurationsViewModel.__allocating_init(configurations:previousDaysCount:futureDaysCount:)(unint64_t a1, void (*a2)(void, void, void), uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:)(a1, a2, a3);
  return v9;
}

uint64_t ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:)(unint64_t a1, void (*a2)(void, void, void), uint64_t a3)
{
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
  v7 = *(*(v210 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v210);
  v196 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v193 - v10;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
  v12 = *(*(v207 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v207);
  v194 = &v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v195 = &v193 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v212 = &v193 - v18;
  MEMORY[0x28223BE20](v17);
  v220 = &v193 - v19;
  v206 = type metadata accessor for Calendar.Component();
  v223 = *(v206 - 8);
  v20 = *(v223 + 8);
  MEMORY[0x28223BE20](v206);
  v205 = &v193 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for Calendar();
  v211 = *(v236 - 8);
  v22 = *(v211 + 64);
  v23 = MEMORY[0x28223BE20](v236);
  v25 = &v193 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v234 = &v193 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v226 = &v193 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v201 = (&v193 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v200 = &v193 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v199 = &v193 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v198 = &v193 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v203 = &v193 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v222 = &v193 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = (&v193 - v43);
  v239 = type metadata accessor for Date();
  v230 = *(v239 - 8);
  v45 = v230[8];
  v46 = MEMORY[0x28223BE20](v239);
  v225 = &v193 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v193 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v209 = &v193 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v55 = &v193 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v216 = &v193 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v208 = &v193 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v221 = &v193 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v217 = &v193 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v233 = &v193 - v65;
  MEMORY[0x28223BE20](v64);
  v204 = a2;
  *&v3[OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel_previousDaysCount] = a2;
  v218 = v3;
  v202 = a3;
  *&v3[OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel_futureDaysCount] = a3;
  v219 = &v193 - v66;
  Date.init()();
  v243 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v214 = v55;
    v215 = v50;
    v237 = a1;
    v238 = i;
    v197 = v11;
    v213 = v25;
    if (i)
    {
      v50 = 0;
      v11 = (a1 & 0xC000000000000001);
      v235 = a1 & 0xFFFFFFFFFFFFFF8;
      v55 = (v230 + 6);
      v231 = (v230 + 4);
      v229 = (v211 + 8);
      v228 = (v230 + 1);
      v68 = &_s10Foundation4DateVSgMd;
      v232 = v44;
      v227 = (v230 + 6);
      v224 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v11)
        {
          v69 = MEMORY[0x20F2E7A20](v50, a1);
        }

        else
        {
          if (v50 >= *(v235 + 16))
          {
            goto LABEL_54;
          }

          v69 = *(a1 + 8 * v50 + 32);
        }

        a1 = v69;
        v25 = (v50 + 1);
        if (__OFADD__(v50, 1))
        {
          break;
        }

        v70 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
        swift_beginAccess();
        _s10Foundation4DateVSgWOcTm_1(a1 + v70, v44, v68, &_s10Foundation4DateVSgMR);
        v71 = *v55;
        v72 = v68;
        v73 = v239;
        if ((*v55)(v44, 1, v239) == 1)
        {

          i = _s10Foundation4DateVSgWOhTm_2(v44, v72, &_s10Foundation4DateVSgMR);
          v68 = v72;
        }

        else
        {
          v74 = v72;
          v75 = v233;
          (*v231)(v233, v44, v73);
          v76 = v234;
          static Calendar.current.getter();
          v77 = Calendar.isDateInToday(_:)();
          (*v229)(v76, v236);
          (*v228)(v75, v73);
          if (v77)
          {
            v78 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
            swift_beginAccess();
            v79 = v222;
            _s10Foundation4DateVSgWOcTm_1(a1 + v78, v222, v74, &_s10Foundation4DateVSgMR);
            v80 = v73;
            v68 = v74;
            v55 = v227;
            LODWORD(v78) = v71(v79, 1, v80);
            _s10Foundation4DateVSgWOhTm_2(v79, v68, &_s10Foundation4DateVSgMR);
            v11 = v224;
            if (v78 == 1)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v81 = *(v243 + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              i = specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            v44 = v232;
          }

          else
          {

            v11 = v224;
            v44 = v232;
            v68 = v74;
            v55 = v227;
          }
        }

        ++v50;
        a1 = v237;
        if (v25 == v238)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_19:
    MEMORY[0x28223BE20](i);
    v191 = v219;

    v243 = specialized Array._copyToContiguousArray()(v82, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H13ConfigurationC_Tt1g5, specialized Array._copyContents(initializing:));
    specialized MutableCollection<>.sort(by:)(partial apply for closure #2 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:), (&v193 - 4));
    v83 = v203;
    v224 = 0;

    v84 = v243;
    v85 = OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__upNextConfigurations;
    swift_beginAccess();
    v241 = v84;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
    v193 = v85;
    v222 = v86;
    Published.init(initialValue:)();
    swift_endAccess();
    static Calendar.autoupdatingCurrent.getter();
    Calendar.startOfDay(for:)();
    v87 = v223;
    v89 = (v223 + 104);
    v88 = *(v223 + 13);
    v90 = v205;
    LODWORD(v232) = *MEMORY[0x277CC99A0];
    v91 = v206;
    v88(v205);
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v93 = *(v87 + 1);
    v92 = v87 + 8;
    v233 = v93;
    (v93)(v90, v91);
    v94 = v230;
    v95 = v230[6];
    v96 = v239;
    v229 = (v230 + 6);
    v235 = v95;
    if (v95(v83, 1, v239) == 1)
    {
      _s10Foundation4DateVSgWOhTm_2(v83, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v192 = 0;
      v184 = 58;
      goto LABEL_66;
    }

    v97 = v94[4];
    v228 = (v94 + 4);
    v97(v221, v83, v96);
    v98 = *MEMORY[0x277CC9968];
    v227 = v89;
    (v88)(v90, v98, v91);
    if (__OFSUB__(0, v204))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (__OFADD__(-v204, 1))
    {
      goto LABEL_59;
    }

    v204 = v88;
    v231 = v97;
    v99 = v198;
    v83 = v213;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (v233)(v90, v91);
    v223 = v92;
    v100 = v239;
    v92 = v235;
    if ((v235)(v99, 1, v239) == 1)
    {
      _s10Foundation4DateVSgWOhTm_2(v99, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v192 = 0;
      v185 = 63;
      goto LABEL_68;
    }

    v231(v208, v99, v100);
    Calendar.startOfDay(for:)();
    v88 = v227;
    v101 = v204;
    (v204)(v90, v98, v91);
    v102 = v199;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (v233)(v90, v91);
    if ((v92)(v102, 1, v100) == 1)
    {
      _s10Foundation4DateVSgWOhTm_2(v102, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v192 = 0;
      v184 = 71;
LABEL_66:
      v191 = v184;
LABEL_70:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_71:

      v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
      (*(*(v186 - 8) + 8))(&v92[v193], v186);
LABEL_73:
      type metadata accessor for ManagedConfigurationsViewModel();
      v189 = *(*v92 + 48);
      v190 = *(*v92 + 52);
      result = swift_deallocPartialClassInstance();
      __break(1u);
      return result;
    }

    v231(v214, v102, v100);
    v101(v90, v98, v91);
    v103 = v200;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (v233)(v90, v91);
    if ((v92)(v103, 1, v100) == 1)
    {
      _s10Foundation4DateVSgWOhTm_2(v103, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v192 = 0;
      v185 = 76;
LABEL_68:
      v191 = v185;
      goto LABEL_70;
    }

    v231(v209, v103, v100);
    v101(v90, v232, v91);
    v88 = v201;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (v233)(v90, v91);
    if ((v92)(v88, 1, v100) == 1)
    {
      _s10Foundation4DateVSgWOhTm_2(v88, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v192 = 0;
      v191 = 81;
      goto LABEL_70;
    }

    v104 = v231;
    v231(v215, v88, v100);
    v105 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v106 = v216;
    v107 = v221;
    v108 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v109 = v230;
    if ((v108 & 1) == 0)
    {
      goto LABEL_60;
    }

    v110 = v230[2];
    v83 = v197;
    v110(v197, v106, v100);
    v111 = v196;
    v233 = v105;
    v112 = v210;
    v113 = v83 + *(v210 + 48);
    v232 = v110;
    v110(v113, v107, v100);
    _s10Foundation4DateVSgWOcTm_1(v83, v111, &_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
    v114 = *(v112 + 48);
    v115 = v220;
    v104(v220, v111, v100);
    v117 = v109[1];
    v116 = v109 + 1;
    v117(v111 + v114, v100);
    outlined init with take of (lower: Date, upper: Date)(v83, v111);
    v118 = *(v112 + 48);
    v119 = v207;
    v231((v115 + *(v207 + 36)), v111 + v118, v100);
    v120 = v215;
    v227 = v117;
    v117(v111, v100);
    v121 = v214;
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      v122 = v232;
      (v232)(v83, v121, v100);
      v123 = v210;
      v122(v83 + *(v210 + 48), v120, v100);
      _s10Foundation4DateVSgWOcTm_1(v83, v111, &_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
      v124 = v119;
      v125 = *(v123 + 48);
      v126 = v212;
      v127 = v231;
      v231(v212, v111, v100);
      v128 = v111 + v125;
      v129 = v227;
      v227(v128, v100);
      outlined init with take of (lower: Date, upper: Date)(v83, v111);
      v127(&v126[*(v124 + 36)], v111 + *(v123 + 48), v100);
      v230 = v116;
      v129(v111, v100);
      v83 = v124;
      if (one-time initialization token for app == -1)
      {
        goto LABEL_29;
      }

      goto LABEL_62;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
LABEL_29:
    v130 = type metadata accessor for Logger();
    v131 = __swift_project_value_buffer(v130, static WOLog.app);
    v132 = v195;
    _s10Foundation4DateVSgWOcTm_1(v220, v195, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
    v133 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v133, v11))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v241 = v135;
      *v134 = 136315138;
      v243 = 0;
      v244 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x20F2E6D80](3026478, 0xE300000000000000);
      v136 = *(v83 + 36);
      _print_unlocked<A, B>(_:_:)();
      v137 = v243;
      v138 = v244;
      _s10Foundation4DateVSgWOhTm_2(v132, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
      v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, &v241);

      *(v134 + 4) = v139;
      _os_log_impl(&dword_20AEA4000, v133, v11, "filter past configurations with range: %s", v134, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v135);
      MEMORY[0x20F2E9420](v135, -1, -1);
      MEMORY[0x20F2E9420](v134, -1, -1);
    }

    else
    {

      v140 = _s10Foundation4DateVSgWOhTm_2(v132, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
    }

    v141 = v237;
    v25 = v238;
    v92 = v218;
    v142 = MEMORY[0x277D84F90];
    MEMORY[0x28223BE20](v140);
    v191 = v220;

    v143 = v141;
    v88 = v224;
    v144 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #3 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:), (&v193 - 4), v143);
    if (v88)
    {
      goto LABEL_71;
    }

    MEMORY[0x28223BE20](v144);
    a1 = (&v193 - 4);
    v191 = v219;

    v243 = specialized Array._copyToContiguousArray()(v145, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H13ConfigurationC_Tt1g5, specialized Array._copyContents(initializing:));
    specialized MutableCollection<>.sort(by:)(partial apply for closure #4 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:), (&v193 - 4));
    v210 = 0;
    v223 = v131;

    v146 = v243;
    v147 = OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__pastConfigurations;
    swift_beginAccess();
    v241 = v146;
    v206 = v147;
    Published.init(initialValue:)();
    v148 = swift_endAccess();
    v241 = v142;
    v55 = v226;
    if (!v25)
    {
      break;
    }

    v50 = 0;
    v149 = v237;
    v233 = (v237 & 0xC000000000000001);
    v232 = v237 & 0xFFFFFFFFFFFFFF8;
    v224 = (v211 + 8);
    v44 = &_s10Foundation4DateVSgMd;
    while (1)
    {
      if (v233)
      {
        v150 = MEMORY[0x20F2E7A20](v50, v149);
      }

      else
      {
        if (v50 >= *(v232 + 16))
        {
          goto LABEL_56;
        }

        v150 = *(v149 + 8 * v50 + 32);
      }

      a1 = v150;
      v11 = (v50 + 1);
      if (__OFADD__(v50, 1))
      {
        break;
      }

      v151 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
      swift_beginAccess();
      _s10Foundation4DateVSgWOcTm_1(a1 + v151, v55, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v152 = v55;
      v153 = v55;
      v154 = v239;
      if ((v235)(v152, 1, v239) == 1)
      {

        v148 = _s10Foundation4DateVSgWOhTm_2(v153, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v55 = v153;
      }

      else
      {
        v155 = v225;
        v231(v225, v153, v154);
        v156 = v234;
        static Calendar.current.getter();
        v157 = Calendar.isDateInToday(_:)();
        (*v224)(v156, v236);
        v227(v155, v154);
        if (v157)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v158 = *(v241 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v149 = v237;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v148 = specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v55 = v226;
        v25 = v238;
      }

      ++v50;
      if (v11 == v25)
      {
        v92 = v218;
        goto LABEL_48;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

LABEL_48:
  v159 = v212;
  MEMORY[0x28223BE20](v148);
  v160 = v219;
  v191 = v219;

  v241 = specialized Array._copyToContiguousArray()(v161, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H13ConfigurationC_Tt1g5, specialized Array._copyContents(initializing:));
  v162 = v210;
  specialized MutableCollection<>.sort(by:)(partial apply for closure #6 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:), (&v193 - 4));
  if (v162)
  {

    v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
    v188 = *(*(v187 - 8) + 8);
    v188(&v92[v193], v187);
    v188(&v92[v206], v187);
    goto LABEL_73;
  }

  v163 = v241;
  v164 = OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__todayConfigurations;
  swift_beginAccess();
  v240 = v163;
  v238 = v164;
  Published.init(initialValue:)();
  swift_endAccess();
  v165 = v194;
  _s10Foundation4DateVSgWOcTm_1(v159, v194, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
  v166 = Logger.logObject.getter();
  v167 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v166, v167))
  {
    v168 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v240 = v169;
    v241 = 0;
    *v168 = 136315138;
    v242 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](3026478, 0xE300000000000000);
    v170 = v165 + *(v207 + 36);
    v171 = v212;
    _print_unlocked<A, B>(_:_:)();
    v172 = v241;
    v173 = v242;
    _s10Foundation4DateVSgWOhTm_2(v165, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
    v174 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v173, &v240);

    *(v168 + 4) = v174;
    _os_log_impl(&dword_20AEA4000, v166, v167, "filter future configurations with range: %s", v168, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v169);
    v92 = v218;
    MEMORY[0x20F2E9420](v169, -1, -1);
    v175 = v168;
    v159 = v171;
    v160 = v219;
    MEMORY[0x20F2E9420](v175, -1, -1);
  }

  else
  {

    v176 = _s10Foundation4DateVSgWOhTm_2(v165, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
  }

  v177 = v221;
  MEMORY[0x28223BE20](v176);
  v178 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #7 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:), (&v193 - 4), v237);
  MEMORY[0x28223BE20](v178);
  v191 = v160;

  v241 = specialized Array._copyToContiguousArray()(v179, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H13ConfigurationC_Tt1g5, specialized Array._copyContents(initializing:));
  specialized MutableCollection<>.sort(by:)(partial apply for closure #8 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:), (&v193 - 4));
  v180 = v239;

  v181 = v241;
  swift_beginAccess();
  v240 = v181;
  Published.init(initialValue:)();
  swift_endAccess();
  v182 = v227;
  v227(v215, v180);
  v182(v209, v180);
  v182(v214, v180);
  v182(v216, v180);
  v182(v208, v180);
  v182(v177, v180);
  v182(v217, v180);
  (*(v211 + 8))(v213, v236);
  _s10Foundation4DateVSgWOhTm_2(v159, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
  _s10Foundation4DateVSgWOhTm_2(v220, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
  v182(v160, v180);
  return v92;
}

uint64_t closure #3 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  _s10Foundation4DateVSgWOcTm_1(v11 + v12, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    _s10Foundation4DateVSgWOhTm_2(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v13 = 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR) + 36);
      v13 = dispatch thunk of static Comparable.<= infix(_:_:)();
    }

    else
    {
      v13 = 0;
    }

    (*(v7 + 8))(v10, v6);
  }

  return v13 & 1;
}

uint64_t closure #2 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v20 = *a1;
  v21 = *a2;
  v22 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  _s10Foundation4DateVSgWOcTm_1(v20 + v22, v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v23 = *(v13 + 48);
  if (v23(v11, 1, v12) == 1)
  {
    (*(v13 + 16))(v19, v29, v12);
    if (v23(v11, 1, v12) != 1)
    {
      _s10Foundation4DateVSgWOhTm_2(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
  }

  v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  _s10Foundation4DateVSgWOcTm_1(v21 + v24, v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v23(v9, 1, v12) == 1)
  {
    (*(v13 + 16))(v17, v29, v12);
    if (v23(v9, 1, v12) != 1)
    {
      _s10Foundation4DateVSgWOhTm_2(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v13 + 32))(v17, v9, v12);
  }

  v25 = static Date.< infix(_:_:)();
  v26 = *(v13 + 8);
  v26(v17, v12);
  v26(v19, v12);
  return v25 & 1;
}

uint64_t closure #7 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  _s10Foundation4DateVSgWOcTm_1(v11 + v12, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    _s10Foundation4DateVSgWOhTm_2(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v13 = 1;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR) + 36);
      v13 = dispatch thunk of static Comparable.<= infix(_:_:)();
    }

    else
    {
      v13 = 0;
    }

    (*(v7 + 8))(v10, v6);
  }

  return v13 & 1;
}

uint64_t ManagedConfigurationsViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__upNextConfigurations;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__todayConfigurations, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__pastConfigurations, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__futureConfigurations, v2);
  return v0;
}

uint64_t ManagedConfigurationsViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__upNextConfigurations;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__todayConfigurations, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__pastConfigurations, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__futureConfigurations, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ManagedConfigurationsViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ManagedConfigurationsViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t ManagedConfigurationsViewModel.hash(into:)(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  specialized Array<A>.hash(into:)(a1);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  specialized Array<A>.hash(into:)(a1);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  specialized Array<A>.hash(into:)(a1);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  specialized Array<A>.hash(into:)(a1);

  MEMORY[0x20F2E7FF0](*(v2 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel_previousDaysCount));
  return MEMORY[0x20F2E7FF0](*(v2 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel_futureDaysCount));
}

Swift::Int ManagedConfigurationsViewModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  ManagedConfigurationsViewModel.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ManagedConfigurationsViewModel()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ManagedConfigurationsViewModel.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ManagedConfigurationsViewModel()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  ManagedConfigurationsViewModel.hash(into:)(v3);
  return Hasher._finalize()();
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, void **a3, uint64_t (*a4)(id *, id *), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = v9;
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v97 = v10;
      v7 = *v9;
      v14 = *(*v9 + v13);
      v105 = *(*v9 + v11);
      v15 = v105;
      v106 = v14;
      v16 = v14;
      v17 = v15;
      v100 = a4(&v106, &v105);
      if (v6)
      {

        return;
      }

      v18 = 8 * v11;
      v19 = &v7[v11 + 2];
      v95 = v11;
      while (v97 - 2 != v11)
      {
        v20 = *v19;
        v105 = *(v19 - 1);
        v21 = v105;
        v106 = v20;
        v22 = v20;
        v7 = v21;
        LODWORD(v21) = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v100 ^ v21))
        {
          v13 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v97 - 1;
      v13 = v97;
LABEL_11:
      v9 = a3;
      if (v100)
      {
        if (v13 < v95)
        {
          goto LABEL_124;
        }

        v23 = v95 <= v11;
        v11 = v95;
        if (v23)
        {
          v24 = 8 * v13 - 8;
          v25 = v13;
          v26 = v95;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v28 = *&v27[v18];
              *&v27[v18] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v18 += 8;
          }

          while (v26 < v25);
        }
      }

      else
      {
        v11 = v95;
      }
    }

    v29 = v9[1];
    if (v13 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_120;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_133;
    }

    v30 = (v11 + a6);
    if (__OFADD__(v11, a6))
    {
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

    if (v30 >= v29)
    {
      v30 = v9[1];
    }

    if (v30 < v11)
    {
      goto LABEL_123;
    }

    if (v13 == v30)
    {
LABEL_133:
      if (v13 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = a5;
      v78 = *v9;
      v7 = (*v9 + 8 * v13 - 8);
      v96 = v11;
      v79 = v11 - v13;
      v92 = v30;
      do
      {
        v101 = v7;
        v103 = v13;
        v80 = v78[v13];
        v98 = v79;
        do
        {
          v105 = *v7;
          v81 = v105;
          v106 = v80;
          v82 = v80;
          v83 = v81;
          v84 = a4(&v106, &v105);
          if (v6)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v7;
          v80 = v7[1];
          *v7 = v80;
          v7[1] = v86;
          --v7;
        }

        while (!__CFADD__(v79++, 1));
        v13 = v103 + 1;
        v7 = v101 + 1;
        v79 = v98 - 1;
      }

      while ((v103 + 1) != v92);
      v13 = v92;
      a5 = v77;
      v9 = a3;
      v11 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
    }

    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v12);
    }

    *(v12 + 2) = v33;
    v34 = &v12[16 * v32];
    *(v34 + 4) = v11;
    *(v34 + 5) = v13;
    v102 = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v12[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v12[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v12[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v36 = *(v12 + 4);
      v37 = *(v12 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_49:
      if (v39)
      {
        goto LABEL_108;
      }

      v52 = &v12[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v58 = &v12[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_115;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v62 = &v12[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_63:
    if (v57)
    {
      goto LABEL_110;
    }

    v65 = &v12[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_113;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_70:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *&v12[16 * v73 + 32];
    v75 = *&v12[16 * v35 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)(*v9 + v74, *v9 + *&v12[16 * v35 + 32], *v9 + v75, v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v75 < v74)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
    }

    if (v73 >= *(v12 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v12[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v107 = v12;
    specialized Array.remove(at:)(v35);
    v12 = v107;
    v33 = *(v107 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
LABEL_92:
  v107 = v12;
  v88 = *(v12 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v89 = *&v12[16 * v88];
      v90 = *&v12[16 * v88 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)(*v7 + v89, *v7 + *&v12[16 * v88 + 16], *v7 + v90, v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
      }

      if (v88 - 2 >= *(v12 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v12[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v107 = v12;
      specialized Array.remove(at:)(v88 - 1);
      v12 = v107;
      v88 = *(v107 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(id *__src, id *a2, id *a3, uint64_t __dst, uint64_t (*a5)(id *, id *))
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v52 = &v14[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = v6;
      v54 = *v6;
      v17 = v14;
      v53 = *v14;
      v18 = v53;
      v19 = v54;
      v20 = v18;
      v21 = a5(&v54, &v53);
      if (__dsta)
      {

        v43 = &v52[-v17 + 7];
        if (&v52[-v17] >= 0)
        {
          v43 = &v52[-v17];
        }

        if (v7 < v17 || v7 >= v17 + (v43 & 0xFFFFFFFFFFFFFFF8) || v7 != v17)
        {
          v42 = 8 * (v43 >> 3);
          v41 = v7;
          v40 = v17;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;

      __dsta = 0;
      if (v22)
      {
        break;
      }

      v15 = v17;
      v14 = (v17 + 8);
      v6 = v16;
      if (v7 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v52)
      {
        goto LABEL_10;
      }
    }

    v15 = v16;
    v6 = v16 + 1;
    v14 = v17;
    if (v7 == v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 8 * v13);
    __dst = v23;
  }

  __srca = __dst;
  v52 = (__dst + 8 * v13);
  if (v11 < 8)
  {
    v14 = __dst;
  }

  else
  {
    v24 = __dsta;
    if (v6 <= v7)
    {
      v14 = __dst;
    }

    else
    {
      v25 = -__dst;
      v46 = -__dst;
      v47 = v7;
      while (2)
      {
        v26 = v24;
        __dstb = v6;
        v27 = v6 - 1;
        v28 = v52;
        v29 = &v52[v25];
        --v5;
        while (1)
        {
          v30 = *--v28;
          v54 = v30;
          v31 = v27;
          v53 = *v27;
          v32 = v53;
          v33 = v30;
          v34 = v32;
          v35 = a5(&v54, &v53);
          if (v26)
          {

            if (v29 >= 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = v29 + 7;
            }

            v39 = v38 >> 3;
            v40 = __srca;
            v41 = __dstb;
            if (__dstb < __srca || __dstb >= (__srca + (v38 & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(__dstb, __srca, 8 * v39);
              return 1;
            }

            if (__dstb == __srca)
            {
              return 1;
            }

            v42 = 8 * v39;
            goto LABEL_57;
          }

          v36 = v35;

          v37 = (v5 + 1);
          if (v36)
          {
            break;
          }

          v27 = v31;
          if (v37 != v52)
          {
            *v5 = *v28;
          }

          v29 -= 8;
          --v5;
          v52 = v28;
          if (v28 <= __srca)
          {
            v52 = v28;
            v6 = __dstb;
            v14 = __srca;
            goto LABEL_51;
          }
        }

        v6 = v31;
        if (v37 != __dstb)
        {
          *v5 = *v31;
        }

        v14 = __srca;
        v24 = 0;
        if (v52 > __srca)
        {
          v25 = v46;
          if (v31 > v47)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_51:
  v44 = v52 - v14 + 7;
  if (v52 - v14 >= 0)
  {
    v44 = v52 - v14;
  }

  if (v6 < v14 || v6 >= &v14[v44 & 0xFFFFFFFFFFFFFFF8] || v6 != v14)
  {
    v42 = 8 * (v44 >> 3);
    v41 = v6;
    v40 = v14;
LABEL_57:
    memmove(v41, v40, v42);
  }

  return 1;
}

uint64_t specialized Array._copyToContiguousArray()(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t type metadata accessor for ManagedConfigurationsViewModel()
{
  result = type metadata singleton initialization cache for ManagedConfigurationsViewModel;
  if (!type metadata singleton initialization cache for ManagedConfigurationsViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOhTm_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL specialized static ManagedConfigurationsViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = specialized _arrayForceCast<A, B>(_:)(v13);

  v5 = specialized Array.isEquivalent(to:)(v4, v13);

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = specialized _arrayForceCast<A, B>(_:)(v13);

  v7 = specialized Array.isEquivalent(to:)(v6, v13);

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = specialized _arrayForceCast<A, B>(_:)(v13);

  v9 = specialized Array.isEquivalent(to:)(v8, v13);

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = specialized _arrayForceCast<A, B>(_:)(v13);

  v11 = specialized Array.isEquivalent(to:)(v10, v13);

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  return *(a1 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel_previousDaysCount) == *(a2 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel_previousDaysCount) && *(a1 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel_futureDaysCount) == *(a2 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel_futureDaysCount);
}

void type metadata completion function for ManagedConfigurationsViewModel()
{
  type metadata accessor for Published<[WorkoutConfiguration]>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[WorkoutConfiguration]>()
{
  if (!lazy cache variable for type metadata for Published<[WorkoutConfiguration]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[WorkoutConfiguration]>);
    }
  }
}

uint64_t type metadata accessor for HKQuantitySample(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t MeanDistributionByPosition.__allocating_init(intervals:)(uint64_t a1)
{
  swift_allocObject();
  v2 = specialized MeanDistributionByPosition.init(intervals:)(a1);

  return v2;
}

uint64_t MeanDistributionByTime.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for MeanDistributionByPosition();
  swift_allocObject();
  *(v0 + 16) = specialized MeanDistributionByPosition.init(intervals:)(&outlined read-only object #0 of MeanDistributionByTime.init());
  return v0;
}

uint64_t MeanDistributionByTime.init()()
{
  type metadata accessor for MeanDistributionByPosition();
  swift_allocObject();
  *(v0 + 16) = specialized MeanDistributionByPosition.init(intervals:)(&outlined read-only object #0 of MeanDistributionByTime.init());
  return v0;
}

void MeanDistributionByTime.add(_:date:)(Swift::Double a1)
{
  v3 = *(v1 + 16);
  Date.timeIntervalSinceReferenceDate.getter();
  MeanDistributionByPosition.add(_:position:)(a1, v4);
}

uint64_t MeanDistributionByTime.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MeanDistributionByTime.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t MeanDistributionByPosition.Bucket.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t MeanDistributionByPosition.init(intervals:)(uint64_t a1)
{
  v1 = specialized MeanDistributionByPosition.init(intervals:)(a1);

  return v1;
}

Swift::Void __swiftcall MeanDistributionByPosition.add(_:position:)(Swift::Double _, Swift::Double position)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = *(v2 + 16);

  v12 = 0;
  while (v9)
  {
LABEL_10:
    v14 = *(*(v6 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
    v15 = *(v14 + 16);

    WindowedAccumulator.add(_:position:)(_, position);
    v17 = *(v14 + 16);
    if (*(v17 + 24))
    {
      v18 = *(*(v17 + 48) + 16);
      if (v18)
      {
        v19 = *(v17 + 56) / v18;
      }

      else
      {
        v19 = 0.0;
      }
    }

    else
    {
      WindowedAccumulator.positionWindowMean()(v16);
      if (v21)
      {
        goto LABEL_4;
      }

      v19 = v20;
    }

    if (*(v14 + 24) < v19)
    {
      *(v14 + 24) = v19;
      *(v14 + 32) = position;
    }

LABEL_4:
    v9 &= v9 - 1;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  if (*(v3 + 24) > position)
  {
    *(v3 + 24) = position;
  }

  if (*(v3 + 32) < position)
  {
    *(v3 + 32) = position;
  }
}

uint64_t MeanDistributionByPosition.results()()
{
  v1 = *(v0 + 32) - *(v0 + 24);
  if (v1 <= 0.0)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = 1 << *(v2 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v2 + 64);
    v6 = (v3 + 63) >> 6;
    v7 = *(v0 + 16);

    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v9 << 6);
        v13 = *(*(v2 + 48) + 8 * v12);
        if (v13 <= v1)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v15 = *(*(*(v2 + 56) + 8 * v12) + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v17 = *(v10 + 2);
      v16 = *(v10 + 3);
      if (v17 >= v16 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v10);
      }

      *(v10 + 2) = v17 + 1;
      v18 = &v10[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v6)
      {

        return v10;
      }

      v5 = *(v2 + 64 + 8 * v14);
      ++v9;
      if (v5)
      {
        v9 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall MeanDistributionByPosition.debug()()
{
  v2 = *(v0 + 16);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);

      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      do
      {
LABEL_8:
        v10 = (v7 << 9) | (8 * __clz(__rbit64(v5)));
        v11 = *(*(v2 + 48) + v10);
        v1 = *(*(v2 + 56) + v10);
        v12 = v1[3];
        v13 = v1[4];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
        }

        v15 = *(v8 + 2);
        v14 = *(v8 + 3);
        if (v15 >= v14 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v8);
        }

        v5 &= v5 - 1;

        *(v8 + 2) = v15 + 1;
        v16 = &v8[24 * v15];
        *(v16 + 4) = v11;
        *(v16 + 5) = v12;
        *(v16 + 6) = v13;
      }

      while (v5);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20B423A90;
  v19 = v8;

  specialized MutableCollection<>.sort(by:)(&v19);

  v18 = v19;
  *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore26MeanDistributionByPositionC5debugyyF11DebugResultL_VGMd, &_sSay11WorkoutCore26MeanDistributionByPositionC5debugyyF11DebugResultL_VGMR);
  *(v17 + 32) = v18;
  print(_:separator:terminator:)();
}

Swift::Double_optional __swiftcall MeanDistributionByPosition.result(window:)(Swift::Double window)
{
  v2 = *(v1 + 16);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(window), (v4 & 1) != 0))
  {
    v5 = *(*(*(v2 + 56) + 8 * v3) + 24);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  result.value = window;
  result.is_nil = v5;
  return result;
}

uint64_t MeanDistributionByPosition.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MeanDistributionByPosition.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 3;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 3, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t specialized MeanDistributionByPosition.init(intervals:)(uint64_t a1)
{
  *(v1 + 24) = xmmword_20B4334B0;
  v3 = MEMORY[0x277D84F90];
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSd_11WorkoutCore26MeanDistributionByPositionC6BucketCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_15:
    result = v25;
    *(v25 + 16) = v4;
    return result;
  }

  v6 = (a1 + 32);
  type metadata accessor for MeanDistributionByPosition.Bucket();
  while (1)
  {
    v9 = *v6;
    v10 = swift_allocObject();
    type metadata accessor for WindowedAccumulator();
    v10[3] = 0;
    v10[4] = 0;
    v11 = swift_allocObject();
    *(v11 + 48) = v3;
    *(v11 + 56) = 0;
    *(v11 + 16) = v9;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 257;
    v10[2] = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    v15 = v4[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v4[3] < v18)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v13;
    specialized _NativeDictionary.copy()();
    v13 = v23;
    if (v19)
    {
LABEL_3:
      v7 = v4[7];
      v8 = *(v7 + 8 * v13);
      *(v7 + 8 * v13) = v10;

      goto LABEL_4;
    }

LABEL_11:
    v4[(v13 >> 6) + 8] |= 1 << v13;
    *(v4[6] + 8 * v13) = v9;
    *(v4[7] + 8 * v13) = v10;
    v21 = v4[2];
    v17 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v17)
    {
      goto LABEL_17;
    }

    v4[2] = v22;
LABEL_4:
    ++v6;
    if (!--v5)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for DebugResult #1 in MeanDistributionByPosition.debug()(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DebugResult #1 in MeanDistributionByPosition.debug()(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t MediaMomentAlert.narratorName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_narratorName);
  v2 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_narratorName + 8);

  return v1;
}

id MediaMomentAlert.__allocating_init(backgroundArt:narratorName:startTime:duration:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v6);
  *&v17[OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_backgroundArt] = a1;
  v18 = &v17[OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_narratorName];
  *v18 = a2;
  *(v18 + 1) = a3;
  *&v17[OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_duration] = a5;
  *&v17[OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_startTime] = a4;
  v23.receiver = v17;
  v23.super_class = v6;
  v19 = a1;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  [v20 setType_];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v13 + 8))(v16, v12);
  [v20 setEventDate_];

  return v20;
}

id MediaMomentAlert.init(backgroundArt:narratorName:startTime:duration:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_backgroundArt] = a1;
  v16 = &v5[OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_narratorName];
  *v16 = a2;
  *(v16 + 1) = a3;
  *&v5[OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_duration] = a5;
  *&v5[OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_startTime] = a4;
  v17 = type metadata accessor for MediaMomentAlert();
  v22.receiver = v5;
  v22.super_class = v17;
  v18 = a1;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  [v19 setType_];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v12 + 8))(v15, v11);
  [v19 setEventDate_];

  return v19;
}

id MediaMomentAlert.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MediaMomentAlert.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaMomentAlert();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall Array.isEquivalent(to:)(Swift::OpaquePointer to)
{
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](to._rawValue);
  v6 = MEMORY[0x20F2E6FF0](v4, v5);
  if (v6 != *(to._rawValue + 2))
  {
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v7 = v6;
  if (!v6)
  {
    v12 = 1;
LABEL_12:
    LOBYTE(v6) = v12 & 1;
    return v6;
  }

  v8 = 0;
  v9 = to._rawValue + 32;
  while (v7)
  {
    Array.subscript.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
    if (!swift_dynamicCast())
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      outlined destroy of Equivalent?(v14);
      goto LABEL_11;
    }

    outlined init with take of Equivalent(v14, v16);
    v11 = v17;
    v10 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v12 = (*(v10 + 8))(v9, v11, v10);
    LOBYTE(v6) = __swift_destroy_boxed_opaque_existential_1(v16);
    if (v12)
    {
      ++v8;
      v9 += 40;
      if (--v7)
      {
        continue;
      }
    }

    goto LABEL_12;
  }

  __break(1u);
  return v6;
}

uint64_t outlined destroy of Equivalent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pSgMd, &_s11WorkoutCore10Equivalent_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *LocationPositionAccumulator.invalidationTimer.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void LocationPositionAccumulator.invalidationTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for LocationPositionAccumulator.invalidationTimer : LocationPositionAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t (*LocationPositionAccumulator.delegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return LocationPositionAccumulator.delegate.modify;
}

id @objc LocationPositionAccumulator.delegate.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t LocationPositionAccumulator.delegate.getter(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t @objc LocationPositionAccumulator.delegate.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t LocationPositionAccumulator.delegate.setter(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*LocationPositionAccumulator.alertDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_alertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return LocationPositionAccumulator.alertDelegate.modify;
}

void LocationPositionAccumulator.delegate.modify(uint64_t a1, char a2)
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

uint64_t LocationPositionAccumulator.locationPoints.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_locationPoints;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t key path setter for LocationPositionAccumulator.locationPoints : LocationPositionAccumulator(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_locationPoints;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

char *LocationPositionAccumulator.init(builder:liveWorkoutConfiguration:)(void *a1, char *a2)
{
  v61 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v55 - v8;
  v9 = type metadata accessor for WorkoutPlan.Route();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_invalidationTimer] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_locationPoints] = MEMORY[0x277D84F90];
  v59 = v10;
  v14 = *(v10 + 56);
  v14(&v2[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_route], 1, 1, v9);
  *&v2[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_raceLocationProvider] = 0;
  *&v2[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_racePositionProvider] = 0;
  v15 = &v2[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition];
  *v15 = 0;
  *(v15 + 2) = 0;
  v15[12] = 1;
  v16 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration;
  v17 = *&a2[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration];
  v18 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v19 = *(v17 + v18);
  v20 = a2;
  v21 = v61;
  *&v2[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_activityType] = v19;
  v22 = type metadata accessor for LocationPositionAccumulator();
  v63.receiver = v2;
  v63.super_class = v22;
  v23 = v19;
  v24 = objc_msgSendSuper2(&v63, sel_initWithBuilder_, v21);
  v25 = *&v20[v16];
  type metadata accessor for RaceWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {

    return v24;
  }

  v56 = v14;
  v57 = v24;
  v26 = v59;
  v27 = v60;
  v28 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  if (([*(v25 + v28) supportsCustomRouteAlerts] & 1) == 0)
  {

    return v57;
  }

  v29 = *&v20[v16];
  v30 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  swift_beginAccess();
  outlined init with copy of WorkoutPlan.Route?(v29 + v30, v27, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  v31 = v26;
  v32 = *(v26 + 48);
  v33 = v9;
  if (v32(v27, 1, v9) == 1)
  {

    outlined destroy of WorkoutPlan.Route?(v27, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
    return v57;
  }

  v34 = v13;
  (*(v31 + 32))(v13, v27, v33);
  v35 = v58;
  (*(v31 + 16))(v58, v34, v33);
  v56(v35, 0, 1, v33);
  v36 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_route;
  v24 = v57;
  swift_beginAccess();
  outlined assign with take of WorkoutPlan.Route?(v35, &v24[v36]);
  swift_endAccess();
  v37 = WorkoutPlan.Route.routePoints(timestampAnchor:pointsLimit:)(0, -1.0);
  v38 = v21;
  v39 = specialized _arrayForceCast<A, B>(_:)(v37);

  v40 = specialized _arrayConditionalCast<A, B>(_:)(v39);

  v41 = MEMORY[0x277D84F90];
  if (v40)
  {
    v41 = v40;
  }

  v60 = v41;
  v42 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_activityType;
  v43 = [*&v24[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_activityType] effectiveTypeIdentifier];
  v44 = objc_allocWithZone(type metadata accessor for RaceLocationProvider());
  v45 = RaceLocationProvider.init(activity:)(v43);
  v46 = objc_allocWithZone(type metadata accessor for RacePositionProvider());
  v47 = v45;
  v58 = v20;
  v48 = v47;
  v49 = v38;
  v50 = specialized RacePositionProvider.init(raceLocationProvider:builder:)(v48, v49, v46);

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v51 = &v50[OBJC_IVAR___WORacePositionProvider_routeProviderDelegate];
  swift_beginAccess();
  *(v51 + 1) = &protocol witness table for LocationPositionAccumulator;
  swift_unknownObjectWeakAssign();
  v62 = v60;
  RacePositionProvider.activate(raceRoute:activity:)(&v62, [*&v24[v42] effectiveTypeIdentifier]);

  RaceLocationProvider.activate()();

  (*(v31 + 8))(v34, v33);
  v52 = *&v24[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_raceLocationProvider];
  *&v24[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_raceLocationProvider] = v48;

  v53 = *&v24[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_racePositionProvider];
  *&v24[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_racePositionProvider] = v50;

  return v24;
}

void LocationPositionAccumulator.accumulatorDidStart(withStart:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = aBlock - v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  specialized LocationManager.add(observer:)(v4, static LocationManager.shared);
  v12 = *&v4[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_racePositionProvider];
  if (v12)
  {
    outlined init with copy of WorkoutPlan.Route?(a1, v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v13 = type metadata accessor for Date();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v11, 1, v13);
    v16 = v12;
    isa = 0;
    if (v15 != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v14 + 8))(v11, v13);
    }

    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_20;
      v18 = _Block_copy(aBlock);
    }

    else
    {
      v18 = 0;
    }

    [v16 accumulatorDidStartWithStartDate:isa handler:v18];
    _Block_release(v18);
  }
}

Swift::Void __swiftcall LocationPositionAccumulator.accumulatorDidStop()()
{
  v1 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_invalidationTimer;
  swift_beginAccess();
  [*&v0[v1] invalidate];
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static LocationManager.shared;
  v4 = *(static LocationManager.shared + OBJC_IVAR___WOCoreLocationManager_queue);
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = _s11WorkoutCore15LocationManagerC6remove8observeryAA0cD8Observer_p_tFyyXEfU_TA_0;
  *(v6 + 24) = v5;
  aBlock[4] = _sIg_Ieg_TRTA_0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_6_3;
  v7 = _Block_copy(aBlock);
  v8 = v0;
  v9 = v3;

  v10 = v4;
  v11 = v7;
  v12 = v10;
  label = dispatch_queue_get_label(v12);
  v14 = dispatch_queue_get_label(0);

  if (label == v14)
  {
    v15 = objc_autoreleasePoolPush();
    v11[2](v11);
    objc_autoreleasePoolPop(v15);
  }

  else
  {
    dispatch_sync(v12, v11);
  }

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    [*&v8[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_racePositionProvider] accumulatorDidStop];
  }
}

void LocationPositionAccumulator.recoverLocations(fromStartDate:healthStore:workoutUUID:)(uint64_t a1, void *a2)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.app);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[LocationPositionAccumulator] Location recovery", v6, 2u);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a2;
  v9 = objc_allocWithZone(MEMORY[0x277CCDC88]);

  v10 = a2;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v14[4] = partial apply for closure #1 in LocationPositionAccumulator.recoverLocations(fromStartDate:healthStore:workoutUUID:);
  v14[5] = v8;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed HKWorkoutRouteQuery, @guaranteed [CLLocation]?, @unowned Bool, @guaranteed Error?) -> ();
  v14[3] = &block_descriptor_15_1;
  v12 = _Block_copy(v14);
  v13 = [v9 initWithActiveWorkoutUUID:isa dataHandler:v12];
  _Block_release(v12);

  [v10 executeQuery_];
}

void closure #1 in LocationPositionAccumulator.recoverLocations(fromStartDate:healthStore:workoutUUID:)(uint64_t a1, unint64_t a2, char a3, id a4, uint64_t a5, void *a6)
{
  p_cache = &OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider.cache;
  if (a4)
  {
    v12 = a4;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.app);
    v14 = a4;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v17 = 136315138;
      v18 = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v19 = String.init<A>(describing:)();
      v21 = a1;
      v22 = a6;
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v32);
      p_cache = (&OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider + 16);

      *(v17 + 4) = v23;
      a6 = v22;
      a1 = v21;
      _os_log_impl(&dword_20AEA4000, v15, v16, "[LocationPositionAccumulator] route query error: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm_1(v31);
      MEMORY[0x20F2E9420](v31, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    else
    {
    }
  }

  if (p_cache[333] != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static WOLog.app);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    if (a2)
    {
      if (a2 >> 62)
      {
        v28 = __CocoaSet.count.getter();
      }

      else
      {
        v28 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v28 = 0;
    }

    *(v27 + 4) = v28;

    _os_log_impl(&dword_20AEA4000, v25, v26, "[LocationPositionAccumulator] Recovered samples from locations: %ld", v27, 0xCu);
    MEMORY[0x20F2E9420](v27, -1, -1);

    if (!a2)
    {
      return;
    }
  }

  else
  {

    if (!a2)
    {
      return;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    LocationPositionAccumulator.process(locations:)(a2);
  }

  if (a3)
  {
    [a6 stopQuery_];
  }
}

uint64_t LocationPositionAccumulator.process(locations:)(unint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v1;
  v14 = objc_opt_self();
  v15 = v1;

  if ([v14 isMainThread])
  {
    closure #1 in LocationPositionAccumulator.process(locations:)(a1, v15);
  }

  else
  {
    _sSo10CLLocationCMaTm_0(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v23 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = partial apply for closure #1 in LocationPositionAccumulator.process(locations:);
    *(v17 + 24) = v13;
    aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_1;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_54_0;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    v21 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_1(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v22;
    v18 = v23;
    MEMORY[0x20F2E7580](0, v12, v7, v22);
    _Block_release(v19);

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v21);
  }
}

uint64_t closure #1 in LocationPositionAccumulator.process(locations:)(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v26 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_21:
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
LABEL_3:
      v25 = a2;
      a2 = 0;
      v5 = v3 & 0xC000000000000001;
      v6 = v3 & 0xFFFFFFFFFFFFFF8;
      v7 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
      v8 = &selRef_adjustedStatisticsForStatistics_;
      do
      {
        if (v5)
        {
          v9 = MEMORY[0x20F2E7A20](a2, v3);
        }

        else
        {
          if (a2 >= *(v6 + 16))
          {
            goto LABEL_20;
          }

          v9 = *(v3 + 8 * a2 + 32);
        }

        v10 = v9;
        v11 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if (([v9 v7[476]] == 1 || objc_msgSend(v10, v7[476]) == 9 || objc_msgSend(v10, v7[476]) == 3 || objc_msgSend(v10, v7[476]) == 11) && (objc_msgSend(v10, v8[346], v25), v12 < 50.0))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v13 = v3;
          v14 = v6;
          v15 = v4;
          v16 = v5;
          v17 = v7;
          v18 = *(v26 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v7 = v17;
          v5 = v16;
          v4 = v15;
          v6 = v14;
          v3 = v13;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v8 = &selRef_adjustedStatisticsForStatistics_;
        }

        else
        {
        }

        ++a2;
      }

      while (v11 != v4);
      a2 = v25;
      v19 = v26;
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v19 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
  {
LABEL_23:
    if ((v19 & 0x4000000000000000) == 0)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }
  }

LABEL_28:
  if (!__CocoaSet.count.getter())
  {
LABEL_29:
  }

LABEL_25:
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v20);
  swift_endAccess();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    _sSo10CLLocationCMaTm_0(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v22 locationPositionAccumulator:a2 didUpdateLocations:isa];

    return swift_unknownObjectRelease();
  }
}

id LocationPositionAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id LocationPositionAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationPositionAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *protocol witness for InvalidationTimerProtocol.invalidationTimer.getter in conformance LocationPositionAccumulator()
{
  v1 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void protocol witness for InvalidationTimerProtocol.invalidationTimer.setter in conformance LocationPositionAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t LocationPositionAccumulator.queryForPoints(timestampAnchor:numberOfPoints:completion:)(uint64_t a1, void (*a2)(void), double a3)
{
  v17 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for WorkoutPlan.Route();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_route;
  swift_beginAccess();
  outlined init with copy of WorkoutPlan.Route?(v3 + v15, v9, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = outlined destroy of WorkoutPlan.Route?(v9, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
    if (a2)
    {
      return (a2)(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    if (a2)
    {
      WorkoutPlan.Route.routePoints(timestampAnchor:pointsLimit:)(v17, a3);
      a2();
    }

    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

void protocol witness for RouteProviderDelegate.queryForPoints(timestampAnchor:numberOfPoints:completion:) in conformance LocationPositionAccumulator(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v8[4] = a2;
    v8[5] = a3;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed [CLRoutePoint]) -> ();
    v8[3] = &block_descriptor_45_1;
    v6 = a4;
    v7 = _Block_copy(v8);

    a4 = v6;
  }

  else
  {
    v7 = 0;
  }

  [v4 queryForPointsWithTimestampAnchor:a1 numberOfPoints:v7 completion:a4];
  _Block_release(v7);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [CLRoutePoint]) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  _sSo10CLLocationCMaTm_0(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

unint64_t LocationPositionAccumulator.metadata.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = 0xD000000000000026;
  v2 = inited + 32;
  *(inited + 40) = 0x800000020B45B2B0;
  v3 = *(v0 + OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition + 12);
  if (*(v0 + OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition) != 2 || *(v0 + OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition + 8) != 0)
  {
    v3 = 0;
  }

  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v3;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of WorkoutPlan.Route?(v2, &_sSS_yptMd, &_sSS_yptMR);
  return v5;
}

char *LocationPositionAccumulator.didUpdate(_:)(void *a1)
{
  result = [a1 state];
  if ((result - 2) >= 2 && result != 6)
  {
    if (result != 1)
    {
      return result;
    }

    [a1 timeAhead_s];
    [a1 currentDistance_m];
  }

  result = [a1 state];
  if (result != 2)
  {
    if (result == 1)
    {
      [a1 timeAhead_s];
      [a1 currentDistance_m];
    }

LABEL_12:
    v5 = [a1 state];
    v6 = 0.0;
    if (v5 > 2)
    {
      if ((v5 - 4) >= 2)
      {
        if (v5 == 3)
        {
          v8 = 1;
          v9 = 2;
          goto LABEL_31;
        }

        if (v5 == 6)
        {
          v10 = &v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition];
          if (v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition + 12] == 1)
          {
            v11 = *(v10 + 2);
            if (*v10 > 3uLL)
            {
              v8 = 1;
              v9 = 4;
              goto LABEL_31;
            }
          }

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v13 = Strong;
            v14 = type metadata accessor for WorkoutAlertRace();
            v73.receiver = objc_allocWithZone(v14);
            v73.super_class = v14;
            v15 = objc_msgSendSuper2(&v73, sel_init);
            [v15 setType_];
            [v13 alertSource:v1 didTriggerAlert:v15];

            swift_unknownObjectRelease();
          }

          if (one-time initialization token for race != -1)
          {
            swift_once();
          }

          v16 = type metadata accessor for Logger();
          __swift_project_value_buffer(v16, static WOLog.race);
          v17 = v1;
          v18 = v1;
          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            v72 = v22;
            *v21 = 136315394;
            *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x64657269707865, 0xE700000000000000, &v72);
            *(v21 + 12) = 2080;
            v23 = *(v10 + 2);
            v24 = v10[12];
            v75 = *v10;
            LODWORD(v76) = v23;
            BYTE4(v76) = v24;
            v25 = RacePosition.description.getter();
            v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v72);

            *(v21 + 14) = v27;
            _os_log_impl(&dword_20AEA4000, v19, v20, "[LocationPositionAccumulator]: Transitioned to %s from %s", v21, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x20F2E9420](v22, -1, -1);
            MEMORY[0x20F2E9420](v21, -1, -1);
          }

          v8 = 1;
          v28 = 4;
          goto LABEL_53;
        }
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        [a1 timeAhead_s];
        v29 = v36;
        [a1 currentDistance_m];
        v6 = v37;
        v38 = &v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition];
        if (v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition + 12] != 1 || *v38 ^ 1 | *(v38 + 2))
        {
          v8 = 0;
        }

        else
        {
          swift_beginAccess();
          v39 = swift_unknownObjectWeakLoadStrong();
          if (v39)
          {
            v40 = v39;
            v41 = type metadata accessor for WorkoutAlertRace();
            v70.receiver = objc_allocWithZone(v41);
            v70.super_class = v41;
            v42 = objc_msgSendSuper2(&v70, sel_init);
            [v42 setType_];
            [v40 alertSource:v1 didTriggerAlert:v42];

            swift_unknownObjectRelease();
          }

          if (one-time initialization token for race != -1)
          {
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          __swift_project_value_buffer(v43, static WOLog.race);
          v44 = v1;
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v72 = v48;
            *v47 = 136315394;
            v75 = 0;
            v76 = 0xE000000000000000;
            _StringGuts.grow(_:)(41);
            MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45B2E0);
            Double.write<A>(to:)();
            MEMORY[0x20F2E6D80](0xD000000000000011, 0x800000020B45B300);
            Float.write<A>(to:)();
            v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v72);

            *(v47 + 4) = v49;
            *(v47 + 12) = 2080;
            v50 = *(v38 + 2);
            v51 = v38[12];
            v75 = *v38;
            LODWORD(v76) = v50;
            BYTE4(v76) = v51;
            v52 = RacePosition.description.getter();
            v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v72);

            *(v47 + 14) = v54;
            _os_log_impl(&dword_20AEA4000, v45, v46, "[LocationPositionAccumulator]: Transitioned to %s from %s", v47, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x20F2E9420](v48, -1, -1);
            MEMORY[0x20F2E9420](v47, -1, -1);
          }

          v8 = 0;
        }

        goto LABEL_32;
      }

      if (v5 == 2)
      {
        v7 = &v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition];
        if (v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition + 12])
        {
          v8 = 1;
          v9 = 1;
LABEL_31:
          v29 = v9;
          goto LABEL_32;
        }

        swift_beginAccess();
        v55 = swift_unknownObjectWeakLoadStrong();
        if (v55)
        {
          v56 = v55;
          v57 = type metadata accessor for WorkoutAlertRace();
          v71.receiver = objc_allocWithZone(v57);
          v71.super_class = v57;
          v58 = objc_msgSendSuper2(&v71, sel_init);
          [v58 setType_];
          [v56 alertSource:v1 didTriggerAlert:v58];

          swift_unknownObjectRelease();
        }

        if (one-time initialization token for race != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        __swift_project_value_buffer(v59, static WOLog.race);
        v17 = v1;
        v60 = v1;
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v72 = v64;
          *v63 = 136315394;
          *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574756F5266666FLL, 0xE800000000000000, &v72);
          *(v63 + 12) = 2080;
          v65 = *(v7 + 2);
          v66 = v7[12];
          v75 = *v7;
          LODWORD(v76) = v65;
          BYTE4(v76) = v66;
          v67 = RacePosition.description.getter();
          v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v72);

          *(v63 + 14) = v69;
          _os_log_impl(&dword_20AEA4000, v61, v62, "[LocationPositionAccumulator]: Transitioned to %s from %s", v63, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v64, -1, -1);
          MEMORY[0x20F2E9420](v63, -1, -1);
        }

        v8 = 1;
        v28 = 1;
LABEL_53:
        v29 = v28;
        v1 = v17;
LABEL_32:
        v30 = &v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition];
        *v30 = v29;
        v30[2] = v6;
        *(v30 + 12) = v8;
        swift_beginAccess();
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v31 = result;
          v32 = type metadata accessor for RacePositionBridged();
          v33 = objc_allocWithZone(v32);
          v34 = &v33[OBJC_IVAR___WORacePosition_racePosition];
          *v34 = v29;
          v34[2] = v6;
          *(v34 + 12) = v8;
          v74.receiver = v33;
          v74.super_class = v32;
          v35 = objc_msgSendSuper2(&v74, sel_init);
          [v31 locationPositionAccumulator:v1 didUpdateRoutePosition:v35];

          return swift_unknownObjectRelease();
        }

        return result;
      }
    }

    v8 = 1;
    v9 = 3;
    goto LABEL_31;
  }

  if (v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition + 12] != 1 || *&v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition] | *&v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition + 8])
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t type metadata accessor for LocationPositionAccumulator()
{
  result = type metadata singleton initialization cache for LocationPositionAccumulator;
  if (!type metadata singleton initialization cache for LocationPositionAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of WorkoutPlan.Route?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed HKWorkoutRouteQuery, @guaranteed [CLLocation]?, @unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a3)
  {
    _sSo10CLLocationCMaTm_0(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = a2;
  v12 = a5;
  v10(v11, v7, a4, a5);
}

id specialized RacePositionProvider.init(raceLocationProvider:builder:)(uint64_t a1, void *a2, _BYTE *a3)
{
  v27 = a2;
  v26 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v26);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v31[3] = type metadata accessor for RaceLocationProvider();
  v31[4] = &protocol witness table for RaceLocationProvider;
  v31[0] = a1;
  v13 = &a3[OBJC_IVAR___WORacePositionProvider_position];
  *v13 = 0;
  *(v13 + 2) = 0;
  v13[12] = 0;
  *&a3[OBJC_IVAR___WORacePositionProvider_result] = 0;
  v25 = OBJC_IVAR___WORacePositionProvider_queue;
  v14 = _sSo10CLLocationCMaTm_0(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v24[1] = "v16@?0@NSArray8";
  v24[2] = v14;
  static DispatchQoS.unspecified.getter();
  v30 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_1(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v26);
  *&a3[v25] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  a3[OBJC_IVAR___WORacePositionProvider_shouldProcessLocations] = 1;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v15 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  *&a3[OBJC_IVAR___WORacePositionProvider_subscriptions] = v15;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR___WORacePositionProvider_routeProviderDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR___WORacePositionProvider_lastPointTimestamp] = 0;
  outlined init with copy of RaceLocationProviding(v31, &a3[OBJC_IVAR___WORacePositionProvider_raceLocationProvider]);
  v16 = &a3[OBJC_IVAR___WORacePositionProvider_state];
  *v16 = 1;
  v16[8] = 2;
  v17 = type metadata accessor for MetadataSavingDelegate();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR___WOMetadataSavingDelegate_lastSaveTime] = 0;
  swift_unknownObjectWeakInit();
  v19 = v27;
  *&v18[OBJC_IVAR___WOMetadataSavingDelegate_builder] = v27;
  *&v18[OBJC_IVAR___WOMetadataSavingDelegate_kSaveNewMetadataTimeout] = 0x404E000000000000;
  v29.receiver = v18;
  v29.super_class = v17;
  v20 = v19;
  *&a3[OBJC_IVAR___WORacePositionProvider_metadataDelegate] = objc_msgSendSuper2(&v29, sel_init);
  v21 = type metadata accessor for RacePositionProvider();
  v28.receiver = a3;
  v28.super_class = v21;
  v22 = objc_msgSendSuper2(&v28, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm_1(v31);
  return v22;
}

uint64_t outlined init with copy of WorkoutPlan.Route?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t specialized LocationPositionAccumulator.recover(with:metadata:)(void *a1)
{
  v3 = [a1 state];
  v4 = 0.0;
  if (v3 > 2)
  {
    if ((v3 - 4) >= 2)
    {
      if (v3 == 3)
      {
        v5 = 1;
        v6 = 2;
        goto LABEL_11;
      }

      if (v3 == 6)
      {
        v5 = 1;
        v6 = 4;
        goto LABEL_11;
      }
    }

LABEL_10:
    v5 = 1;
    v6 = 3;
    goto LABEL_11;
  }

  if (!v3)
  {
    goto LABEL_10;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      v5 = 1;
      v6 = 1;
LABEL_11:
      v7 = v6;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  [a1 timeAhead_s];
  v7 = v15;
  [a1 currentDistance_m];
  v5 = 0;
  v4 = v16;
LABEL_12:
  v8 = v1 + OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition;
  *v8 = v7;
  *(v8 + 8) = v4;
  *(v8 + 12) = v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = type metadata accessor for RacePositionBridged();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR___WORacePosition_racePosition];
    *v13 = v7;
    v13[2] = v4;
    *(v13 + 12) = v5;
    v17.receiver = v12;
    v17.super_class = v11;
    v14 = objc_msgSendSuper2(&v17, sel_init);
    [v10 locationPositionAccumulator:v1 didUpdateRoutePosition:v14];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t keypath_get_16Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t keypath_set_17Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void type metadata completion function for LocationPositionAccumulator()
{
  type metadata accessor for WorkoutPlan.Route?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for WorkoutPlan.Route?()
{
  if (!lazy cache variable for type metadata for WorkoutPlan.Route?)
  {
    type metadata accessor for WorkoutPlan.Route();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WorkoutPlan.Route?);
    }
  }
}

uint64_t outlined destroy of WorkoutPlan.Route?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm_2(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t _sSo10CLLocationCMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t outlined init with copy of RaceLocationProviding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t CatalogWorkoutCoreBridge.bridgedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
  v4 = type metadata accessor for CatalogWorkout();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id CatalogWorkoutCoreBridge.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
  v5 = type metadata accessor for CatalogWorkout();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

id CatalogWorkoutCoreBridge.init(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
  v4 = type metadata accessor for CatalogWorkout();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CatalogWorkoutCoreBridge();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t type metadata accessor for CatalogWorkoutCoreBridge()
{
  result = type metadata singleton initialization cache for CatalogWorkoutCoreBridge;
  if (!type metadata singleton initialization cache for CatalogWorkoutCoreBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CatalogWorkoutCoreBridge.isGuidedWalk.getter()
{
  return CatalogWorkoutCoreBridge.isGuidedWalk.getter();
}

{
  v0 = CatalogWorkout.mediaType.getter();
  v2 = v1;
  v4 = v3 & 1;
  lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
  lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
  v5 = static PortableEnum<>.== infix(_:_:)();
  outlined consume of PortableEnum<CatalogMediaType>(v0, v2, v4);
  return v5 & 1;
}

unint64_t lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType()
{
  result = lazy protocol witness table cache variable for type CatalogMediaType and conformance CatalogMediaType;
  if (!lazy protocol witness table cache variable for type CatalogMediaType and conformance CatalogMediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CatalogMediaType and conformance CatalogMediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CatalogMediaType and conformance CatalogMediaType;
  if (!lazy protocol witness table cache variable for type CatalogMediaType and conformance CatalogMediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CatalogMediaType and conformance CatalogMediaType);
  }

  return result;
}

uint64_t outlined consume of PortableEnum<CatalogMediaType>(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t @objc CatalogWorkoutCoreBridge.isGuidedWalk.getter(void *a1)
{
  v1 = a1;
  v2 = CatalogWorkout.mediaType.getter();
  v4 = v3;
  v6 = v5 & 1;
  lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
  lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
  v7 = static PortableEnum<>.== infix(_:_:)();

  outlined consume of PortableEnum<CatalogMediaType>(v2, v4, v6);
  return v7 & 1;
}

id CatalogWorkoutCoreBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CatalogWorkoutCoreBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogWorkoutCoreBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Bridge.bridgedValue.getter in conformance CatalogWorkoutCoreBridge@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
  v5 = type metadata accessor for CatalogWorkout();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t type metadata completion function for CatalogWorkoutCoreBridge()
{
  result = type metadata accessor for CatalogWorkout();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t GoalWorkoutConfiguration.goal.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id GoalWorkoutConfiguration.__allocating_init(_:goal:uuid:occurrence:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a3;
  v34 = a4;
  v32 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v13;
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = *(v9 + 16);
  v16(&v29 - v14, a3, v8);
  v17 = objc_allocWithZone(v5);
  swift_beginAccess();
  v36 = a2;
  _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v31 = a2;
  Published.init(initialValue:)();
  swift_endAccess();
  v16(v13, v15, v8);
  *&v17[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v18 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 56);
  v20(&v17[v18], 1, 1, v19);
  v20(&v17[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v19);
  v21 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v22 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v22 - 8) + 56))(&v17[v21], 1, 1, v22);
  (*(v9 + 56))(&v17[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v8);
  v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v17[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v24 = v30;
  v16(&v17[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v30, v8);
  *&v17[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v32;
  v17[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v17[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v34;
  swift_beginAccess();
  *&v17[v23] = 0;
  v17[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v25 = type metadata accessor for WorkoutConfiguration();
  v35.receiver = v17;
  v35.super_class = v25;
  v26 = objc_msgSendSuper2(&v35, sel_init);

  v27 = *(v9 + 8);
  v27(v33, v8);
  v27(v24, v8);
  v27(v15, v8);
  return v26;
}