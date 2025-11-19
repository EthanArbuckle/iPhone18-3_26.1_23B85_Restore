uint64_t outlined init with copy of DispatchTimeInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DispatchTimeInterval?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

SiriKitRuntime::SiriAudioAffinityScorer __swiftcall SiriAudioAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CC30;
  v1 = 0xD00000000000002CLL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized static SiriAudioAffinityScorer.isResumeApp(usoTask:)()
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(v9, v7);
  if (v8)
  {
    type metadata accessor for UsoTask_resume_uso_NoEntity();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();

      if (v7[0] && (v0 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter(), , v0))
      {
        dispatch thunk of UsoEntity_common_App.name.getter();
        v2 = v1;

        if (v2)
        {

          outlined destroy of Any?(v9);
          return 1;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of Any?(v7);
  }

  outlined init with copy of Any?(v9, v7);
  if (!v8)
  {
    outlined destroy of Any?(v7);
    goto LABEL_17;
  }

  type metadata accessor for UsoTask_resume_common_MediaItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    outlined destroy of Any?(v9);
    return 0;
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();

  if (v7[0] && (v3 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter(), , v3))
  {
    dispatch thunk of UsoEntity_common_App.name.getter();
    v5 = v4;

    outlined destroy of Any?(v9);
    if (v5)
    {

      return 1;
    }
  }

  else
  {
    outlined destroy of Any?(v9);
  }

  return 0;
}

uint64_t specialized SiriAudioAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for USOParse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v1 + 88))(v4, v0) != *MEMORY[0x1E69D0168])
  {
    (*(v1 + 8))(v4, v0);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.executor);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "SiriAudioAffinityScorer Got unexpected parse", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);

      return 2;
    }

    return 2;
  }

  (*(v1 + 96))(v4, v0);
  (*(v6 + 32))(v9, v4, v5);
  if (!specialized static AffinityScorerUtils.getTask(_:)())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.executor);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DC659000, v23, v24, "SiriAudioAffinityScorer Could not extract usoTask from parse", v25, 2u);
      MEMORY[0x1E12A2F50](v25, -1, -1);

      (*(v6 + 8))(v9, v5);
      return 2;
    }

LABEL_35:
    (*(v6 + 8))(v9, v5);
    return 2;
  }

  if (UsoTask.verbString.getter() == 0x656D75736572 && v10 == 0xE600000000000000)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.executor);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = 2;
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1DC659000, v14, v15, "SiriAudioAffinityScorer Not a resume task. Returning .default affinity", v17, 2u);
        MEMORY[0x1E12A2F50](v17, -1, -1);

        (*(v6 + 8))(v9, v5);
        return v16;
      }

      goto LABEL_35;
    }
  }

  if (specialized static SiriAudioAffinityScorer.isResumeApp(usoTask:)())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.executor);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DC659000, v27, v28, "SiriAudioAffinityScorer This is a resume+app request. Returning high affinity", v29, 2u);
      MEMORY[0x1E12A2F50](v29, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return 3;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.executor);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DC659000, v31, v32, "SiriAudioAffinityScorer UsoTask task is resume, but not resume app. Returning low affinity not to interfere with playback controls", v33, 2u);
      MEMORY[0x1E12A2F50](v33, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return 1;
  }
}

uint64_t *SiriCAMAppDisambiguationFeatureFlag.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static SiriCAMAppDisambiguationFeatureFlag.forceEnabled;
}

uint64_t static SiriCAMAppDisambiguationFeatureFlag.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }
}

uint64_t SiriCAMAppDisambiguationFeatureFlag.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static SiriCAMAppDisambiguationFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static SiriCAMAppDisambiguationFeatureFlag.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for SiriCAMAppDisambiguationFeatureFlag;
    v3[4] = lazy protocol witness table accessor for type SiriCAMAppDisambiguationFeatureFlag and conformance SiriCAMAppDisambiguationFeatureFlag();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

unint64_t lazy protocol witness table accessor for type SiriCAMAppDisambiguationFeatureFlag and conformance SiriCAMAppDisambiguationFeatureFlag()
{
  result = lazy protocol witness table cache variable for type SiriCAMAppDisambiguationFeatureFlag and conformance SiriCAMAppDisambiguationFeatureFlag;
  if (!lazy protocol witness table cache variable for type SiriCAMAppDisambiguationFeatureFlag and conformance SiriCAMAppDisambiguationFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriCAMAppDisambiguationFeatureFlag and conformance SiriCAMAppDisambiguationFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriCAMAppDisambiguationFeatureFlag and conformance SiriCAMAppDisambiguationFeatureFlag;
  if (!lazy protocol witness table cache variable for type SiriCAMAppDisambiguationFeatureFlag and conformance SiriCAMAppDisambiguationFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriCAMAppDisambiguationFeatureFlag and conformance SiriCAMAppDisambiguationFeatureFlag);
  }

  return result;
}

Swift::Int SiriCAMAppDisambiguationFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

SiriKitRuntime::SiriClockFlowAffinityScorer __swiftcall SiriClockFlowAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CC60;
  v1 = 0xD00000000000001ELL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t SiriClockFlowAffinityScorer.ClockRequestType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x656D6954776F6873;
  v2 = 0x6B656557776F6873;
  if (a1 != 2)
  {
    v2 = 0x746E6F4D776F6873;
  }

  if (a1)
  {
    v1 = 0x65746144776F6873;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SiriClockFlowAffinityScorer.ClockRequestType(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x656D6954776F6873;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0x6B656557776F6873;
  if (v3 != 2)
  {
    v5 = 0x746E6F4D776F6873;
    v4 = 0xE900000000000068;
  }

  v6 = 0x65746144776F6873;
  if (!*a1)
  {
    v6 = 0x656D6954776F6873;
  }

  if (*a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v3 <= 1)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = v4;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6B656557776F6873;
  if (*a2 != 2)
  {
    v10 = 0x746E6F4D776F6873;
    v9 = 0xE900000000000068;
  }

  if (*a2)
  {
    v2 = 0x65746144776F6873;
  }

  if (*a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v10;
  }

  if (*a2 <= 1u)
  {
    v12 = 0xE800000000000000;
  }

  else
  {
    v12 = v9;
  }

  if (v7 == v11 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SiriClockFlowAffinityScorer.ClockRequestType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SiriClockFlowAffinityScorer.ClockRequestType()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriClockFlowAffinityScorer.ClockRequestType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SiriClockFlowAffinityScorer.ClockRequestType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SiriClockFlowAffinityScorer.ClockRequestType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SiriClockFlowAffinityScorer.ClockRequestType(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x656D6954776F6873;
  v4 = 0xE800000000000000;
  v5 = 0x6B656557776F6873;
  if (*v1 != 2)
  {
    v5 = 0x746E6F4D776F6873;
    v4 = 0xE900000000000068;
  }

  if (*v1)
  {
    v3 = 0x65746144776F6873;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t static SiriClockFlowAffinityScorer.componentOffset(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v45 - v7;
  v8 = type metadata accessor for DateComponents();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v45 - v14;
  v16 = type metadata accessor for UsoEntity_common_Date.DefinedValues();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  if (!v50)
  {
    return (*(v9 + 56))(a1, 1, 1, v8);
  }

  v49 = v8;
  v24 = dispatch thunk of UsoEntity_common_DateTime.date.getter();
  if (!v24)
  {

    return (*(v9 + 56))(a1, 1, 1, v49);
  }

  v25 = v24;
  dispatch thunk of UsoEntity_common_Date.definedValue.getter();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
    return (*(v9 + 56))(a1, 1, 1, v49);
  }

  v45 = v25;
  (*(v17 + 32))(v23, v15, v16);
  (*(v17 + 16))(v20, v23, v16);
  v27 = (*(v17 + 88))(v20, v16);
  if (v27 == *MEMORY[0x1E69D1BA0])
  {
    v28 = type metadata accessor for Calendar();
    (*(*(v28 - 8) + 56))(v48, 1, 1, v28);
    v29 = type metadata accessor for TimeZone();
    (*(*(v29 - 8) + 56))(v46, 1, 1, v29);
    v30 = v47;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    DateComponents.day.setter();

    (*(v17 + 8))(v23, v16);
    v31 = v49;
    (*(v9 + 32))(a1, v30, v49);
    v32 = *(v9 + 56);
    v33 = a1;
LABEL_13:
    v39 = 0;
    v40 = v31;
    return v32(v33, v39, 1, v40);
  }

  v34 = a1;
  if (v27 == *MEMORY[0x1E69D1B90] || (v35 = v49, v27 == *MEMORY[0x1E69D1B88]))
  {
    v36 = type metadata accessor for Calendar();
    (*(*(v36 - 8) + 56))(v48, 1, 1, v36);
    v37 = type metadata accessor for TimeZone();
    (*(*(v37 - 8) + 56))(v46, 1, 1, v37);
    v38 = v47;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    DateComponents.day.setter();

    (*(v17 + 8))(v23, v16);
    v31 = v49;
    (*(v9 + 32))(v34, v38, v49);
    v32 = *(v9 + 56);
    v33 = v34;
    goto LABEL_13;
  }

  if (v27 == *MEMORY[0x1E69D1B98])
  {
    (*(v17 + 8))(v23, v16);

    v32 = *(v9 + 56);
    v33 = v34;
    v39 = 1;
LABEL_19:
    v40 = v35;
    return v32(v33, v39, 1, v40);
  }

  if (v27 == *MEMORY[0x1E69D1B80])
  {
    v41 = type metadata accessor for Calendar();
    (*(*(v41 - 8) + 56))(v48, 1, 1, v41);
    v42 = type metadata accessor for TimeZone();
    (*(*(v42 - 8) + 56))(v46, 1, 1, v42);
    v43 = v47;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    DateComponents.day.setter();

    (*(v17 + 8))(v23, v16);
    (*(v9 + 32))(v34, v43, v35);
    v32 = *(v9 + 56);
    v33 = v34;
    v39 = 0;
    goto LABEL_19;
  }

  v44 = *(v17 + 8);
  v44(v23, v16);

  (*(v9 + 56))(v34, 1, 1, v35);
  return (v44)(v20, v16);
}

uint64_t specialized static SiriClockFlowAffinityScorer.requestType(for:)()
{
  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
  if (v7 && (v0 = dispatch thunk of UsoEntity_common_DateTime.date.getter(), , v0) && (v1 = dispatch thunk of UsoEntity_common_Date.monthOfYear.getter(), , v1))
  {

    return 3;
  }

  else
  {
    dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
    if (v7 && (v3 = dispatch thunk of UsoEntity_common_DateTime.time.getter(), , v3))
    {

      return 0;
    }

    else
    {
      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
      if (v7 && (v4 = dispatch thunk of UsoEntity_common_DateTime.date.getter(), , v4) && (v5 = dispatch thunk of UsoEntity_common_Date.weekOfYear.getter(), , v5))
      {

        return 2;
      }

      else
      {
        dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
        if (v7 && (v6 = dispatch thunk of UsoEntity_common_DateTime.date.getter(), , v6))
        {

          return 1;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t specialized SiriClockFlowAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for UsoEntity_common_ListPosition.DefinedValues();
  v192 = *(v0 - 8);
  v193 = v0;
  v1 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v174 = &v172 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v175 = &v172 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v177 = &v172 - v6;
  v7 = type metadata accessor for UsoEntity_common_Date.DefinedValues();
  v8 = *(v7 - 8);
  v190 = v7;
  v191 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v176 = &v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSg_AFtMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSg_AFtMR);
  v11 = *(*(v182 - 8) + 64);
  MEMORY[0x1EEE9AC00](v182);
  v187 = &v172 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v186 = &v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v184 = &v172 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v179 = &v172 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v195 = &v172 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v198 = &v172 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v181 = &v172 - v26;
  v185 = type metadata accessor for UsoEntity_common_DateTime.DefinedValues();
  v188 = *(v185 - 8);
  v27 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v178 = &v172 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSg_AFtMR);
  v29 = *(*(v183 - 8) + 64);
  MEMORY[0x1EEE9AC00](v183);
  v189 = &v172 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v180 = &v172 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v196 = &v172 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v197 = &v172 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v194 = &v172 - v40;
  v201 = type metadata accessor for Siri_Nlu_External_UserParse();
  isa = v201[-1].isa;
  v42 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v201);
  v44 = &v172 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v199 = *(v45 - 8);
  v200 = v45;
  v46 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v172 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for USOParse();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v172 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Parse();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v172 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v55 + 88))(v58, v54) != *MEMORY[0x1E69D0168])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, static Logger.executor);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_1DC659000, v84, v85, "SiriClockFlowAffinityScorer | Got unexpected parse", v86, 2u);
      MEMORY[0x1E12A2F50](v86, -1, -1);
    }

    (*(v55 + 8))(v58, v54);
    return 0;
  }

  (*(v55 + 96))(v58, v54);
  (*(v50 + 32))(v53, v58, v49);
  v173 = v53;
  v59 = USOParse.userParse.getter();
  v60 = MEMORY[0x1E129C0F0](v59);
  (*(isa + 1))(v44, v201);
  if (!*(v60 + 16))
  {

    goto LABEL_21;
  }

  v62 = v199;
  v61 = v200;
  (*(v199 + 16))(v48, v60 + ((*(v62 + 80) + 32) & ~*(v62 + 80)), v200);

  v63 = Siri_Nlu_External_UserDialogAct.toUsoTask()();
  (*(v62 + 8))(v48, v61);
  if (!v63)
  {
LABEL_21:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    __swift_project_value_buffer(v87, static Logger.executor);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    v90 = os_log_type_enabled(v88, v89);
    v91 = v173;
    if (v90)
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_1DC659000, v88, v89, "SiriClockFlowAffinityScorer | Could not extract USO task", v92, 2u);
      MEMORY[0x1E12A2F50](v92, -1, -1);
    }

    (*(v50 + 8))(v91, v49);
    return 0;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!v203[3])
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v203, &_sypSgMd, &_sypSgMR);
    goto LABEL_27;
  }

  type metadata accessor for UsoTask_request_common_DateTime();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    v93 = v173;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    __swift_project_value_buffer(v94, static Logger.executor);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_1DC659000, v95, v96, "SiriClockFlowAffinityScorer | Unsupported request", v97, 2u);
      MEMORY[0x1E12A2F50](v97, -1, -1);
    }

    else
    {
    }

    (*(v50 + 8))(v93, v49);
    return 0;
  }

  v64 = v202;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  v66 = __swift_project_value_buffer(v65, static Logger.executor);

  v201 = v66;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v200 = v63;
    v71 = v70;
    v202 = v64;
    v203[0] = v70;
    *v69 = 136315138;

    v72 = String.init<A>(describing:)();
    v74 = v64;
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v203);

    *(v69 + 4) = v75;
    v64 = v74;
    _os_log_impl(&dword_1DC659000, v67, v68, "requestDateTimeTask %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    v76 = v71;
    v63 = v200;
    MEMORY[0x1E12A2F50](v76, -1, -1);
    MEMORY[0x1E12A2F50](v69, -1, -1);
  }

  v77 = v197;
  v78 = v198;
  v79 = v195;
  v80 = v196;
  v81 = specialized static SiriClockFlowAffinityScorer.requestType(for:)();
  if (v81 <= 1)
  {
    if (!v81)
    {
      v98 = v194;
      static SiriClockFlowAffinityScorer.componentOffset(from:)(v194);

      (*(v50 + 8))(v173, v49);
      v99 = type metadata accessor for DateComponents();
      v100 = (*(*(v99 - 8) + 48))(v98, 1, v99);
      outlined destroy of ReferenceResolutionClientProtocol?(v98, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      if (v100 == 1)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }

    dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
    if (!v203[0] || (v108 = dispatch thunk of UsoEntity_common_DateTime.offsetReference.getter(), , !v108))
    {
LABEL_69:
      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
      if (v203[0])
      {
        v135 = dispatch thunk of UsoEntity_common_DateTime.date.getter();

        if (v135)
        {
          v136 = v181;
          dispatch thunk of UsoEntity_common_Date.definedValue.getter();
          if ((*(v191 + 48))(v136, 1, v190) == 1)
          {

            outlined destroy of ReferenceResolutionClientProtocol?(v136, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
            v128 = Logger.logObject.getter();
            v129 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v128, v129))
            {
              goto LABEL_64;
            }

LABEL_99:

            goto LABEL_100;
          }

          outlined destroy of ReferenceResolutionClientProtocol?(v136, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
        }
      }

      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
      if (v203[0])
      {
        v137 = dispatch thunk of UsoEntity_common_DateTime.offsetValue.getter();

        if (v137)
        {
LABEL_87:

          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            *v106 = 0;
            v107 = "SiriClockFlowAffinityScorer | ClockFlowPlugin does not support arbitrary date offset values";
            goto LABEL_89;
          }

          goto LABEL_90;
        }
      }

      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();

      if (v203[0] && (v138 = dispatch thunk of UsoEntity_common_DateTime.date.getter(), , v138))
      {
        if (dispatch thunk of UsoEntity_common_Date.dayOfWeek.getter() || dispatch thunk of UsoEntity_common_Date.dayOfMonth.getter())
        {

          (*(v50 + 8))(v173, v49);
          return 2;
        }

        else
        {
          v170 = dispatch thunk of UsoEntity_common_Date.year.getter();

          (*(v50 + 8))(v173, v49);
          if (v170)
          {
            goto LABEL_14;
          }

          return 3;
        }
      }

      else
      {
        (*(v50 + 8))(v173, v49);

        return 3;
      }
    }

    v199 = v64;
    v200 = v63;
    v198 = v108;
    dispatch thunk of UsoEntity_common_DateTime.definedValue.getter();
    v109 = v188;
    v110 = v185;
    (*(v188 + 104))(v80, *MEMORY[0x1E69D1C00], v185);
    (*(v109 + 56))(v80, 0, 1, v110);
    v111 = *(v183 + 48);
    v112 = v189;
    outlined init with copy of ReferenceResolutionClientProtocol?(v77, v189, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v80, v112 + v111, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
    v113 = *(v109 + 48);
    if (v113(v112, 1, v110) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v80, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
      v112 = v189;
      outlined destroy of ReferenceResolutionClientProtocol?(v77, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
      if (v113(v112 + v111, 1, v110) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v112, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
LABEL_68:

        goto LABEL_69;
      }
    }

    else
    {
      v123 = v180;
      outlined init with copy of ReferenceResolutionClientProtocol?(v112, v180, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
      if (v113(v112 + v111, 1, v110) != 1)
      {
        v131 = v188;
        v132 = v178;
        (*(v188 + 32))(v178, v112 + v111, v110);
        lazy protocol witness table accessor for type UsoEntity_common_Date.DefinedValues and conformance UsoEntity_common_Date.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_DateTime.DefinedValues and conformance UsoEntity_common_DateTime.DefinedValues, MEMORY[0x1E69D1C08]);
        v133 = dispatch thunk of static Equatable.== infix(_:_:)();
        v134 = *(v131 + 8);
        v134(v132, v110);
        outlined destroy of ReferenceResolutionClientProtocol?(v196, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v197, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
        v134(v123, v110);
        outlined destroy of ReferenceResolutionClientProtocol?(v112, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
        if (v133)
        {
          goto LABEL_68;
        }

LABEL_58:

        v124 = Logger.logObject.getter();
        v125 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          *v126 = 0;
          _os_log_impl(&dword_1DC659000, v124, v125, "SiriClockFlowAffinityScorer | ClockFlowPlugin does not support offset anchors that are not 'now'", v126, 2u);
          MEMORY[0x1E12A2F50](v126, -1, -1);

LABEL_102:

          goto LABEL_103;
        }

LABEL_100:

        goto LABEL_101;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v196, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v197, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
      (*(v188 + 8))(v123, v110);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v112, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSg_AFtMR);
    goto LABEL_58;
  }

  if (v81 != 2)
  {
    if (v81 == 3)
    {
      (*(v50 + 8))(v173, v49);

LABEL_14:

      return 2;
    }

    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      v107 = "SiriClockFlowAffinityScorer | Unsupported request";
LABEL_89:
      _os_log_impl(&dword_1DC659000, v104, v105, v107, v106, 2u);
      MEMORY[0x1E12A2F50](v106, -1, -1);

LABEL_103:
      (*(v50 + 8))(v173, v49);
      return 0;
    }

LABEL_90:

LABEL_101:

    goto LABEL_102;
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  if (!v203[0])
  {
    goto LABEL_85;
  }

  v101 = dispatch thunk of UsoEntity_common_DateTime.date.getter();

  if (!v101)
  {
    goto LABEL_85;
  }

  if (dispatch thunk of UsoEntity_common_Date.weekOfYear.getter() && (v102 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter(), , v102))
  {
    v103 = v184;
    dispatch thunk of UsoEntity_common_ListPosition.definedValue.getter();

    if ((*(v192 + 48))(v103, 1, v193) != 1)
    {

      outlined destroy of ReferenceResolutionClientProtocol?(v103, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
      goto LABEL_85;
    }
  }

  else
  {
    v103 = v184;
    (*(v192 + 56))(v184, 1, 1, v193);
  }

  v199 = v64;
  v200 = v63;
  outlined destroy of ReferenceResolutionClientProtocol?(v103, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
  dispatch thunk of UsoEntity_common_Date.definedValue.getter();
  v114 = v190;
  v115 = v191;
  (*(v191 + 104))(v79, *MEMORY[0x1E69D1B98], v190);
  (*(v115 + 56))(v79, 0, 1, v114);
  v116 = *(v182 + 48);
  v117 = v78;
  v118 = v187;
  outlined init with copy of ReferenceResolutionClientProtocol?(v117, v187, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
  v119 = v118;
  outlined init with copy of ReferenceResolutionClientProtocol?(v79, v118 + v116, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
  v120 = *(v115 + 48);
  if (v120(v118, 1, v114) != 1)
  {
    v127 = v179;
    outlined init with copy of ReferenceResolutionClientProtocol?(v118, v179, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
    if (v120(v118 + v116, 1, v114) != 1)
    {
      v139 = v191;
      v140 = v119 + v116;
      v141 = v176;
      (*(v191 + 32))(v176, v140, v114);
      lazy protocol witness table accessor for type UsoEntity_common_Date.DefinedValues and conformance UsoEntity_common_Date.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_Date.DefinedValues and conformance UsoEntity_common_Date.DefinedValues, MEMORY[0x1E69D1BA8]);
      LODWORD(v197) = dispatch thunk of static Equatable.== infix(_:_:)();
      v142 = *(v139 + 8);
      v142(v141, v114);
      outlined destroy of ReferenceResolutionClientProtocol?(v195, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v198, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
      v142(v127, v114);
      outlined destroy of ReferenceResolutionClientProtocol?(v119, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
      v64 = v199;
      v63 = v200;
      if (v197)
      {
        goto LABEL_84;
      }

LABEL_63:

      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v128, v129))
      {
LABEL_64:
        v130 = swift_slowAlloc();
        *v130 = 0;
        _os_log_impl(&dword_1DC659000, v128, v129, "SiriClockFlowAffinityScorer | ClockFlowPlugin does not support arbitrary date references", v130, 2u);
        MEMORY[0x1E12A2F50](v130, -1, -1);

        goto LABEL_102;
      }

      goto LABEL_99;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v195, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
    v121 = v187;
    outlined destroy of ReferenceResolutionClientProtocol?(v198, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
    (*(v191 + 8))(v127, v114);
LABEL_62:
    outlined destroy of ReferenceResolutionClientProtocol?(v121, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSg_AFtMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSg_AFtMR);
    goto LABEL_63;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
  v121 = v187;
  outlined destroy of ReferenceResolutionClientProtocol?(v198, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
  v122 = v120(v121 + v116, 1, v114);
  v64 = v199;
  v63 = v200;
  if (v122 != 1)
  {
    goto LABEL_62;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v121, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
LABEL_84:

LABEL_85:
  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  if (v203[0])
  {
    v143 = dispatch thunk of UsoEntity_common_DateTime.offsetValue.getter();

    if (v143)
    {
      goto LABEL_87;
    }
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();

  if (!v203[0] || (v144 = dispatch thunk of UsoEntity_common_DateTime.date.getter(), , !v144) || (v145 = dispatch thunk of UsoEntity_common_Date.weekOfYear.getter(), , !v145) || (v146 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter(), , !v146))
  {
    (*(v50 + 8))(v173, v49);

    v147 = v186;
    (*(v192 + 56))(v186, 1, 1, v193);
    goto LABEL_98;
  }

  v147 = v186;
  dispatch thunk of UsoEntity_common_ListPosition.definedValue.getter();

  v149 = v192;
  v148 = v193;
  if ((*(v192 + 48))(v147, 1, v193) == 1)
  {
    (*(v50 + 8))(v173, v49);

LABEL_98:
    outlined destroy of ReferenceResolutionClientProtocol?(v147, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
    return 3;
  }

  v150 = v177;
  (*(v149 + 32))(v177, v147, v148);
  v151 = *(v149 + 16);
  v152 = v175;
  v151(v175, v150, v148);
  v153 = (*(v149 + 88))(v152, v148);
  if (v153 != *MEMORY[0x1E69D1EE0] && v153 != *MEMORY[0x1E69D1EC0] && v153 != *MEMORY[0x1E69D1E70])
  {
    v154 = v174;
    v155 = v151;
    v156 = v177;
    v155(v174, v177, v193);
    v157 = Logger.logObject.getter();
    v158 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = v154;
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v200 = v63;
      v201 = v157;
      v162 = v161;
      v203[0] = v161;
      *v160 = 136315138;
      v198 = UsoEntity_common_ListPosition.DefinedValues.rawValue.getter();
      v199 = v64;
      v164 = v163;
      v165 = *(v192 + 8);
      v165(v159, v193);
      v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v198, v164, v203);

      *(v160 + 4) = v166;
      v167 = v201;
      _os_log_impl(&dword_1DC659000, v201, v158, "SiriClockFlowAffinityScorer | ClockFlowPlugin does not support %s", v160, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v162);
      MEMORY[0x1E12A2F50](v162, -1, -1);
      MEMORY[0x1E12A2F50](v160, -1, -1);

      v168 = v193;
      v165(v177, v193);
      (*(v50 + 8))(v173, v49);
      v169 = v168;
    }

    else
    {

      v171 = v193;
      v165 = *(v192 + 8);
      v165(v154, v193);
      v165(v156, v171);
      (*(v50 + 8))(v173, v49);
      v169 = v171;
    }

    v165(v175, v169);
    return 0;
  }

  (*(v192 + 8))(v177, v193);
  (*(v50 + 8))(v173, v49);
  return 3;
}

unint64_t specialized SiriClockFlowAffinityScorer.ClockRequestType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SiriClockFlowAffinityScorer.ClockRequestType.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SiriClockFlowAffinityScorer.ClockRequestType and conformance SiriClockFlowAffinityScorer.ClockRequestType()
{
  result = lazy protocol witness table cache variable for type SiriClockFlowAffinityScorer.ClockRequestType and conformance SiriClockFlowAffinityScorer.ClockRequestType;
  if (!lazy protocol witness table cache variable for type SiriClockFlowAffinityScorer.ClockRequestType and conformance SiriClockFlowAffinityScorer.ClockRequestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriClockFlowAffinityScorer.ClockRequestType and conformance SiriClockFlowAffinityScorer.ClockRequestType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UsoEntity_common_Date.DefinedValues and conformance UsoEntity_common_Date.DefinedValues(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SiriKitBiomeDonator.__allocating_init(_:backgroundTaskPriority:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  v11 = *(*(v8 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = specialized SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(v14, a2, v7, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v16;
}

uint64_t *SiriKitBiomeDonator.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static SiriKitBiomeDonator.instance;
}

uint64_t static SiriKitBiomeDonator.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }
}

id DefaultBiomeSource.init()()
{
  v0 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v1 = [v0 Execution];
  swift_unknownObjectRelease();
  v2 = [v1 source];

  return v2;
}

uint64_t SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = specialized SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(v11, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v13;
}

uint64_t closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMd, &_sScS8IteratorVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMR);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:), 0, 0);
}

Swift::Void __swiftcall SiriKitBiomeDonator.close()()
{
  v1 = v0;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.instrumentation);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "#SiriKitBiomeDonator - Requesting termination of the background worker", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_backgroundTask))
  {
    v6 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_backgroundTask);

    MEMORY[0x1E12A1950](v7, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMd, &_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMR);
  AsyncStream.Continuation.finish()();
}

uint64_t SiriKitBiomeDonator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_donationStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMd, &_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_donationContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMd, &_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_backgroundTask);

  return v0;
}

uint64_t SiriKitBiomeDonator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_donationStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMd, &_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_donationContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMd, &_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_backgroundTask);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14SiriKitRuntime0dE12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV__GMd, &_sScS12ContinuationV15BufferingPolicyOy14SiriKitRuntime0dE12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV__GMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMd, &_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMR);
  v13 = *(v29 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMd, &_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMR);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v29 - v20;
  v32[3] = &type metadata for DefaultBiomeSource;
  v32[4] = &protocol witness table for DefaultBiomeSource;
  v32[0] = v30;
  *(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_backgroundTask) = 0;
  outlined init with copy of ReferenceResolutionClientProtocol(v32, a3 + 16);
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8650], v8);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v9 + 8))(v12, v8);
  (*(v18 + 32))(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_donationStream, v21, v17);
  (*(v13 + 32))(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_donationContinuation, v16, v29);
  v22 = type metadata accessor for TaskPriority();
  v23 = *(v22 - 8);
  v24 = v31;
  (*(v23 + 16))(v7, v31, v22);
  (*(v23 + 56))(v7, 0, 1, v22);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a3;

  v26 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:), v25);
  (*(v23 + 8))(v24, v22);
  outlined destroy of TaskPriority?(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v27 = *(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_backgroundTask);
  *(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_backgroundTask) = v26;

  return a3;
}

uint64_t specialized SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v37 = a2;
  v35 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14SiriKitRuntime0dE12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV__GMd, &_sScS12ContinuationV15BufferingPolicyOy14SiriKitRuntime0dE12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV__GMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMd, &_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMR);
  v15 = *(v34 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMd, &_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMR);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v33 - v22;
  v38[3] = a4;
  v38[4] = v33;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, v35, a4);
  *(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_backgroundTask) = 0;
  outlined init with copy of ReferenceResolutionClientProtocol(v38, a3 + 16);
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8650], v10);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v11 + 8))(v14, v10);
  (*(v20 + 32))(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_donationStream, v23, v19);
  (*(v15 + 32))(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_donationContinuation, v18, v34);
  v25 = type metadata accessor for TaskPriority();
  v26 = *(v25 - 8);
  v28 = v36;
  v27 = v37;
  (*(v26 + 16))(v36, v37, v25);
  (*(v26 + 56))(v28, 0, 1, v25);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = a3;

  v30 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v28, &closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:)partial apply, v29);
  (*(v26 + 8))(v27, v25);
  outlined destroy of TaskPriority?(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  v31 = *(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_backgroundTask);
  *(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_backgroundTask) = v30;

  return a3;
}

uint64_t type metadata accessor for SiriKitBiomeDonator()
{
  result = type metadata singleton initialization cache for SiriKitBiomeDonator;
  if (!type metadata singleton initialization cache for SiriKitBiomeDonator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SiriKitBiomeDonator()
{
  type metadata accessor for AsyncStream<SiriKitBiomeDonator.DonationEvent>(319, &lazy cache variable for type metadata for AsyncStream<SiriKitBiomeDonator.DonationEvent>, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for AsyncStream<SiriKitBiomeDonator.DonationEvent>(319, &lazy cache variable for type metadata for AsyncStream<SiriKitBiomeDonator.DonationEvent>.Continuation, MEMORY[0x1E69E8660]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for AsyncStream<SiriKitBiomeDonator.DonationEvent>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &unk_1F5837798);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t assignWithCopy for SiriKitBiomeDonator.DonationEvent(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;

  return a1;
}

uint64_t assignWithTake for SiriKitBiomeDonator.DonationEvent(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  v6 = *(a1 + 16);
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  return a1;
}

uint64_t partial apply for closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(a1, v4, v5, v6);
}

uint64_t closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(a1, v4, v5, v6);
}

unint64_t ConversationInsightRequestSummaryMessageDescription.rawValue.getter(char a1)
{
  result = 0xD00000000000001DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000022;
      break;
    case 3:
    case 7:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
    case 13:
      result = 0xD000000000000021;
      break;
    case 8:
      result = 0xD000000000000020;
      break;
    case 9:
    case 11:
      result = 0xD000000000000027;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 12:
      result = 0xD00000000000001FLL;
      break;
    case 14:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

const char *ExecutionTimeSignpost.asStaticString.getter(unsigned __int8 a1)
{
  v1 = "execution_flow_plugin_execute_time";
  v2 = "execution_find_flow_time";
  v3 = "execution_prepare_time";
  if (a1 != 4)
  {
    v3 = "execution_commit_time";
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = "execution_flow_plugin_input_time";
  if (a1 != 1)
  {
    v4 = "execution_flow_plugin_load_time";
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t ExecutionTimeSignpost.asString.getter(unsigned __int8 a1)
{
  v1 = a1;
  v2 = "execution_flow_plugin_execute_time";
  v3 = 34;
  v4 = "execution_find_flow_time";
  v5 = 24;
  v6 = "execution_prepare_time";
  v7 = 22;
  if (a1 != 4)
  {
    v6 = "execution_commit_time";
    v7 = 21;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = "execution_flow_plugin_input_time";
  v9 = 32;
  if (a1 != 1)
  {
    v8 = "execution_flow_plugin_load_time";
    v9 = 31;
  }

  if (a1)
  {
    v2 = v8;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v4;
  }

  if (v1 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  return MEMORY[0x1EEE68E80](v10, v11);
}

Swift::Int ExecutionTimeSignpost.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConversationInsightRequestSummaryMessageDescription(char *a1, char *a2)
{
  v2 = *a2;
  v3 = ConversationInsightRequestSummaryMessageDescription.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ConversationInsightRequestSummaryMessageDescription.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConversationInsightRequestSummaryMessageDescription()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ConversationInsightRequestSummaryMessageDescription.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ConversationInsightRequestSummaryMessageDescription()
{
  ConversationInsightRequestSummaryMessageDescription.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationInsightRequestSummaryMessageDescription()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ConversationInsightRequestSummaryMessageDescription.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationInsightRequestSummaryMessageDescription@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ConversationInsightRequestSummaryMessageDescription.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConversationInsightRequestSummaryMessageDescription@<X0>(unint64_t *a1@<X8>)
{
  result = ConversationInsightRequestSummaryMessageDescription.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized ConversationInsightRequestSummaryMessageDescription.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationInsightRequestSummaryMessageDescription.init(rawValue:), v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type ExecutionTimeSignpost and conformance ExecutionTimeSignpost()
{
  result = lazy protocol witness table cache variable for type ExecutionTimeSignpost and conformance ExecutionTimeSignpost;
  if (!lazy protocol witness table cache variable for type ExecutionTimeSignpost and conformance ExecutionTimeSignpost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecutionTimeSignpost and conformance ExecutionTimeSignpost);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationInsightRequestSummaryMessageDescription and conformance ConversationInsightRequestSummaryMessageDescription()
{
  result = lazy protocol witness table cache variable for type ConversationInsightRequestSummaryMessageDescription and conformance ConversationInsightRequestSummaryMessageDescription;
  if (!lazy protocol witness table cache variable for type ConversationInsightRequestSummaryMessageDescription and conformance ConversationInsightRequestSummaryMessageDescription)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationInsightRequestSummaryMessageDescription and conformance ConversationInsightRequestSummaryMessageDescription);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConversationInsightRequestSummaryMessageDescription(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversationInsightRequestSummaryMessageDescription(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *SiriKitCurareDonator.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static SiriKitCurareDonator.instance;
}

uint64_t static SiriKitCurareDonator.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }
}

uint64_t SiriKitCurareDonator.().init()()
{
  v1 = v0;
  if ([objc_opt_self() isSupportedUser])
  {
    v2 = objc_allocWithZone(MEMORY[0x1E699C0D8]);
    v3 = MEMORY[0x1E12A1410](0x6B73615449524953, 0xEF676E6967676F4CLL);
    v4 = [v2 initWithStreamId_];

    *(v1 + 16) = v4;
    if (!v4)
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.instrumentation);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1DC659000, v6, v7, "Failed to create FSFCurareInteractionStream for task logging, donations will be disabled.", v8, 2u);
        MEMORY[0x1E12A2F50](v8, -1, -1);
      }
    }

    v9 = objc_allocWithZone(MEMORY[0x1E699C0D8]);
    v10 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA88FC0);
    v11 = [v9 initWithStreamId_];

    *(v1 + 24) = v11;
    if (!v11)
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.instrumentation);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1DC659000, v13, v14, "Failed to create FSFCurareInteractionStream for task configuration, donations will be disabled.", v15, 2u);
        MEMORY[0x1E12A2F50](v15, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.instrumentation);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DC659000, v17, v18, "FSFUtils.isSupportedUser returned false, Curare donations will be disabled.", v19, 2u);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
  }

  return v1;
}

void SiriKitCurareDonator.donateSiriExecutionTaskConfiguration(eventContext:eventTime:taskConfiguration:taskId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v32 = a3;
  v33 = a2;
  v31 = a1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = type metadata accessor for TaskFlowConfiguration();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v28 - v15;
  v17 = *(v5 + 24);
  if (v17)
  {
    v30 = v17;
    static TaskPriority.background.getter();
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
    v19 = *(v10 + 16);
    v28 = v9;
    v19(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v9);
    v20 = *(v7 + 16);
    v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20(v29, v33, v6);
    v21 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v33 = v6;
    v22 = (v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = v35;
    v24 = (*(v7 + 80) + v22 + 8) & ~*(v7 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = 0;
    *(v25 + 3) = 0;
    *(v25 + 4) = v34;
    *(v25 + 5) = v23;
    (*(v10 + 32))(&v25[v21], v12, v28);
    *&v25[v22] = v31;
    (*(v7 + 32))(&v25[v24], v29, v33);
    v26 = v30;
    *&v25[(v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8] = v30;
    v27 = v26;

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskConfiguration(eventContext:eventTime:taskConfiguration:taskId:), v25);

    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_sScPSgMd, &_sScPSgMR);
  }
}

uint64_t closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskConfiguration(eventContext:eventTime:taskConfiguration:taskId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *MEMORY[0x1E69E9840];
  v8[74] = v19;
  v8[73] = a8;
  v8[72] = a7;
  v8[71] = a6;
  v8[70] = a5;
  v8[69] = a4;
  v9 = type metadata accessor for TaskFlowType();
  v8[75] = v9;
  v10 = *(v9 - 8);
  v8[76] = v10;
  v11 = *(v10 + 64) + 15;
  v8[77] = swift_task_alloc();
  v12 = type metadata accessor for TaskFlowConfiguration();
  v8[78] = v12;
  v13 = *(v12 - 8);
  v8[79] = v13;
  v14 = *(v13 + 64) + 15;
  v8[80] = swift_task_alloc();
  v8[81] = swift_task_alloc();
  v8[82] = swift_task_alloc();
  v8[83] = swift_task_alloc();
  v8[84] = swift_task_alloc();
  v15 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskConfiguration(eventContext:eventTime:taskConfiguration:taskId:), 0, 0);
}

uint64_t closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskConfiguration(eventContext:eventTime:taskConfiguration:taskId:)()
{
  v149 = v0;
  v148[1] = *MEMORY[0x1E69E9840];
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 672);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 576);
  v5 = *(v0 + 568);
  v6 = *(v0 + 560);
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.instrumentation);
  v137 = *(v2 + 16);
  v137(v1, v5, v3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 672);
  v12 = *(v0 + 632);
  v13 = *(v0 + 624);
  if (v10)
  {
    v146 = *(v0 + 576);
    v14 = *(v0 + 560);
    v15 = *(v0 + 552);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v148[0] = v17;
    *v16 = 136315650;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v148);
    *(v16 + 12) = 2080;
    v18 = TaskFlowConfiguration.debugDescription.getter();
    v20 = v19;
    v145 = *(v12 + 8);
    v145(v11, v13);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v148);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2080;
    *(v16 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v146 + 96), *(v146 + 104), v148);
    _os_log_impl(&dword_1DC659000, v8, v9, "Create SiriKit task configuration donation to Curare for taskId: %s, taskConfiguration: %s for interactionId:%s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v17, -1, -1);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  else
  {

    v145 = *(v12 + 8);
    v145(v11, v13);
  }

  v22 = *(v0 + 616);
  v23 = *(v0 + 608);
  v136 = *(v0 + 600);
  v24 = *(v0 + 584);
  v25 = *(v0 + 568);
  v26 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v27 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA88EE0);
  [v26 setDateFormat_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA6B020;
  *(inited + 32) = 0x6D6954746E657665;
  *(inited + 40) = 0xE900000000000065;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v147 = v26;
  v30 = [v26 stringFromDate_];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = MEMORY[0x1E69E6158];
  *(inited + 48) = v31;
  *(inited + 56) = v33;
  *(inited + 72) = v34;
  *(inited + 80) = 0x656D614E6B736174;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = TaskFlowConfiguration.taskName.getter();
  *(inited + 104) = v35;
  *(inited + 120) = v34;
  *(inited + 128) = 0xD000000000000014;
  v36 = MEMORY[0x1E69E6530];
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 136) = 0x80000001DCA88F00;
  *(inited + 144) = 0;
  v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  TaskFlowConfiguration.taskType.getter();
  v38 = (*(v23 + 88))(v22, v136);
  if (v38 == *MEMORY[0x1E69CF9A8])
  {
    v39 = *(v0 + 616);
    (*(*(v0 + 608) + 96))(v39, *(v0 + 600));
    v40 = *v39;
    *(v0 + 408) = v36;
    *(v0 + 384) = v40;
    outlined init with take of Any((v0 + 384), (v0 + 416));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v148[0] = v37;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 416), 0xD000000000000014, 0x80000001DCA88F00, isUniquelyReferenced_nonNull_native);
    v42 = v148[0];
    *(v0 + 472) = MEMORY[0x1E69E6158];
    *(v0 + 448) = 0xD000000000000010;
    *(v0 + 456) = 0x80000001DCA88F40;
    outlined init with take of Any((v0 + 448), (v0 + 480));
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v148[0] = v42;
    v44 = (v0 + 480);
  }

  else if (v38 == *MEMORY[0x1E69CF9B8])
  {
    *(v0 + 344) = MEMORY[0x1E69E6158];
    *(v0 + 320) = 0x6B7361546F666E69;
    *(v0 + 328) = 0xE800000000000000;
    outlined init with take of Any((v0 + 320), (v0 + 352));
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v148[0] = v37;
    v44 = (v0 + 352);
  }

  else if (v38 == *MEMORY[0x1E69CF9A0])
  {
    *(v0 + 280) = MEMORY[0x1E69E6158];
    strcpy((v0 + 256), "modifiableTask");
    *(v0 + 271) = -18;
    outlined init with take of Any((v0 + 256), (v0 + 288));
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v148[0] = v37;
    v44 = (v0 + 288);
  }

  else
  {
    if (v38 != *MEMORY[0x1E69CF9B0])
    {
      v117 = *(v0 + 664);
      v118 = *(v0 + 624);
      v119 = *(v0 + 576);
      v120 = *(v0 + 568);
      v121 = *(v0 + 560);

      v137(v117, v120, v118);

      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.error.getter();

      v124 = os_log_type_enabled(v122, v123);
      v125 = *(v0 + 664);
      v126 = *(v0 + 632);
      v127 = *(v0 + 624);
      if (v124)
      {
        logc = *(v0 + 576);
        v128 = *(v0 + 560);
        v129 = *(v0 + 552);
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v148[0] = v131;
        *v130 = 136315650;
        *(v130 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v128, v148);
        *(v130 + 12) = 2080;
        v132 = TaskFlowConfiguration.debugDescription.getter();
        v134 = v133;
        v145(v125, v127);
        v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v134, v148);

        *(v130 + 14) = v135;
        *(v130 + 22) = 2080;
        *(v130 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(logc[12].isa, logc[13].isa, v148);
        _os_log_impl(&dword_1DC659000, v122, v123, "Failed to create SiriKit task configuration donation due to invalid taskType for taskId: %s, taskConfiguration: %s for interactionId:%s", v130, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v131, -1, -1);
        MEMORY[0x1E12A2F50](v130, -1, -1);
      }

      else
      {

        v145(v125, v127);
      }

      (*(*(v0 + 608) + 8))(*(v0 + 616), *(v0 + 600));
      goto LABEL_26;
    }

    *(v0 + 216) = MEMORY[0x1E69E6158];
    *(v0 + 192) = 0xD000000000000011;
    *(v0 + 200) = 0x80000001DCA88F20;
    outlined init with take of Any((v0 + 192), (v0 + 224));
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v148[0] = v37;
    v44 = (v0 + 224);
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, 0x657079546B736174, 0xE800000000000000, v43);
  v45 = *(v0 + 560);
  v46 = *(v0 + 552);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v148[0]);

  v47 = objc_allocWithZone(MEMORY[0x1E699C0C8]);
  v48 = Dictionary._bridgeToObjectiveC()().super.isa;

  v49 = MEMORY[0x1E12A1410](v46, v45);
  v50 = [v47 initWithContent:v48 interactionId:v49 dataVersion:0];

  if (v50)
  {
    v51 = *(v0 + 592);
    *(v0 + 536) = 0;
    v52 = [v51 insert:v50 error:v0 + 536];
    v53 = *(v0 + 536);
    v54 = *(v0 + 624);
    v55 = *(v0 + 576);
    v56 = *(v0 + 568);
    v57 = *(v0 + 560);
    if (v52)
    {
      v137(*(v0 + 656), *(v0 + 568), *(v0 + 624));

      v58 = v53;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();

      v61 = os_log_type_enabled(v59, v60);
      v62 = *(v0 + 656);
      v63 = *(v0 + 632);
      v64 = *(v0 + 624);
      if (v61)
      {
        v139 = *(v0 + 576);
        v65 = *(v0 + 560);
        v66 = *(v0 + 552);
        v67 = swift_slowAlloc();
        loga = swift_slowAlloc();
        v148[0] = loga;
        *v67 = 136315650;
        *(v67 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v65, v148);
        *(v67 + 12) = 2080;
        v68 = TaskFlowConfiguration.debugDescription.getter();
        v70 = v69;
        v145(v62, v64);
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v148);

        *(v67 + 14) = v71;
        *(v67 + 22) = 2080;
        *(v67 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v139 + 96), *(v139 + 104), v148);
        _os_log_impl(&dword_1DC659000, v59, v60, "Donated SiriKit execution task configuration to Curare for taskId: %s, taskConfiguration: %s for interactionId:%s", v67, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](loga, -1, -1);
        MEMORY[0x1E12A2F50](v67, -1, -1);

        goto LABEL_26;
      }
    }

    else
    {
      v86 = *(v0 + 640);
      v87 = v53;
      v88 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v137(v86, v56, v54);

      v89 = v88;
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();

      log = v90;
      v92 = os_log_type_enabled(v90, v91);
      v62 = *(v0 + 640);
      v93 = *(v0 + 632);
      v64 = *(v0 + 624);
      if (v92)
      {
        v140 = v91;
        v94 = *(v0 + 576);
        v95 = *(v0 + 560);
        v96 = *(v0 + 552);
        v97 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v148[0] = v138;
        *v97 = 136315906;
        *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v95, v148);
        *(v97 + 12) = 2080;
        v98 = TaskFlowConfiguration.debugDescription.getter();
        v100 = v99;
        v145(v62, v64);
        v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, v148);

        *(v97 + 14) = v101;
        *(v97 + 22) = 2080;
        *(v97 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v94 + 96), *(v94 + 104), v148);
        *(v97 + 32) = 2080;
        swift_getErrorValue();
        v102 = *(v0 + 512);
        v103 = *(v0 + 520);
        v104 = *(v0 + 528);
        v105 = Error.localizedDescription.getter();
        v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v106, v148);

        *(v97 + 34) = v107;
        _os_log_impl(&dword_1DC659000, log, v140, "Failed to donate SiriKit task configuration to Curare for taskId: %s, taskConfiguration: %s for interactionId:%s: %s", v97, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v138, -1, -1);
        MEMORY[0x1E12A2F50](v97, -1, -1);

        goto LABEL_26;
      }
    }
  }

  else
  {
    v72 = *(v0 + 576);
    v73 = *(v0 + 560);
    v137(*(v0 + 648), *(v0 + 568), *(v0 + 624));

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    v76 = os_log_type_enabled(v74, v75);
    v62 = *(v0 + 648);
    v77 = *(v0 + 632);
    v64 = *(v0 + 624);
    if (v76)
    {
      logb = *(v0 + 576);
      v78 = *(v0 + 560);
      v79 = *(v0 + 552);
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v148[0] = v81;
      *v80 = 136315650;
      *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v78, v148);
      *(v80 + 12) = 2080;
      v82 = TaskFlowConfiguration.debugDescription.getter();
      v84 = v83;
      v145(v62, v64);
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, v148);

      *(v80 + 14) = v85;
      *(v80 + 22) = 2080;
      *(v80 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(logb[12].isa, logb[13].isa, v148);
      _os_log_impl(&dword_1DC659000, v74, v75, "Failed to create SiriKit task configuration donation to Curare for taskId: %s, taskConfiguration: %s for interactionId:%s", v80, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v81, -1, -1);
      MEMORY[0x1E12A2F50](v80, -1, -1);

      goto LABEL_26;
    }
  }

  v145(v62, v64);
LABEL_26:
  v108 = *(v0 + 672);
  v109 = *(v0 + 664);
  v110 = *(v0 + 656);
  v111 = *(v0 + 648);
  v112 = *(v0 + 640);
  v113 = *(v0 + 616);

  v114 = *(v0 + 8);
  v115 = *MEMORY[0x1E69E9840];

  return v114();
}

uint64_t partial apply for closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskConfiguration(eventContext:eventTime:taskConfiguration:taskId:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for TaskFlowConfiguration() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for Date() - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = *(v1 + v6);
  v14 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskConfiguration(eventContext:eventTime:taskConfiguration:taskId:)(a1, v9, v10, v11, v12, v1 + v5, v13, v1 + v8);
}

uint64_t SiriKitCurareDonator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t InvocationScopedSiriKitEventSender.__allocating_init(aceServiceInvoker:taskService:invocationState:)(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = a3[3];
  v11 = a3[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a3, v10);
  v13 = specialized InvocationScopedSiriKitEventSender.__allocating_init(aceServiceInvoker:taskService:invocationState:)(v9, a2, v12, v3, v7, v10, v8, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v13;
}

uint64_t SiriKitEventContext.executionRequestId.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t SiriKitEventContext.interactionId.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

void *SiriKitEventContext.__allocating_init(aceServiceInvoker:taskService:invocationState:)(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  v8 = a1[3];
  v7 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = a3[3];
  v16 = a3[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  v18 = *(*(v15 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  v23 = specialized SiriKitEventContext.init(aceServiceInvoker:taskService:invocationState:)(v13, a2, v21, v6, v8, v15, v7, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v23;
}

void *SiriKitEventContext.init(aceServiceInvoker:taskService:invocationState:)(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v9 = a1[3];
  v8 = a1[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = a3[3];
  v17 = a3[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a3, v16);
  v19 = *(*(v16 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v20);
  v24 = specialized SiriKitEventContext.init(aceServiceInvoker:taskService:invocationState:)(v14, a2, v22, v4, v9, v16, v8, v17);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v24;
}

void *SiriKitEventContext.deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[13];

  return v0;
}

uint64_t InvocationScopedSiriKitEventSender.init(aceServiceInvoker:taskService:invocationState:)(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v9 = a1[3];
  v8 = a1[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = a3[3];
  v17 = a3[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a3, v16);
  v19 = *(*(v16 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v20);
  v24 = specialized InvocationScopedSiriKitEventSender.init(aceServiceInvoker:taskService:invocationState:)(v14, a2, v22, v4, v9, v16, v8, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v24;
}

uint64_t InvocationScopedSiriKitEventSender.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t specialized InvocationScopedSiriKitEventSender.init(aceServiceInvoker:taskService:invocationState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a4;
  v50 = a8;
  v48 = a7;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v48 - v27;
  (*(v20 + 32))(&v48 - v27, v26);
  (*(v12 + 32))(v18, a3, a6);
  type metadata accessor for SiriKitEventContext();
  v29 = swift_allocObject();
  v51 = v20;
  v52 = v28;
  v30 = v28;
  v31 = v12;
  (*(v20 + 16))(v24, v30, a5);
  v32 = *(v12 + 16);
  v53 = v18;
  v32(v15, v18, a6);
  v54 = a2;
  v33 = specialized SiriKitEventContext.init(aceServiceInvoker:taskService:invocationState:)(v24, a2, v15, v29, a5, a6, v48, v50);
  v34 = v49;
  *(v49 + 16) = v33;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.instrumentation);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v55 = v39;
    *v38 = 136315138;
    v40 = *(v34 + 16);

    v41 = a5;
    v42 = v34;
    v43 = SiriKitEventContext.description.getter();
    v50 = a6;
    v45 = v44;

    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v55);

    *(v38 + 4) = v46;
    v34 = v42;
    _os_log_impl(&dword_1DC659000, v36, v37, "InternalSiriKitEventSender ready with: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x1E12A2F50](v39, -1, -1);
    MEMORY[0x1E12A2F50](v38, -1, -1);

    (*(v31 + 8))(v53, v50);
    (*(v51 + 8))(v52, v41);
  }

  else
  {

    (*(v12 + 8))(v53, a6);
    (*(v51 + 8))(v52, a5);
  }

  return v34;
}

void *specialized SiriKitEventContext.init(aceServiceInvoker:taskService:invocationState:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a6 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v29[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[3] = v19;
  v29[4] = v20;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  (*(v15 + 32))(v18, a3, a6);
  a4[2] = 0;
  a4[3] = 0;
  outlined init with copy of ReferenceResolutionClientProtocol(v29, (a4 + 4));
  a4[9] = a2;
  v22 = *(a8 + 144);

  a4[10] = v22(a6, a8);
  a4[11] = v23;
  v24 = (*(a8 + 152))(a6, a8);
  v26 = v25;
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  a4[12] = v24;
  a4[13] = v26;
  (*(v15 + 8))(v18, a6);
  return a4;
}

uint64_t specialized InvocationScopedSiriKitEventSender.__allocating_init(aceServiceInvoker:taskService:invocationState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a7;
  v26 = a8;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  (*(v18 + 16))(v22, a1, a5);
  (*(v13 + 16))(v16, a3, a6);
  return specialized InvocationScopedSiriKitEventSender.init(aceServiceInvoker:taskService:invocationState:)(v22, a2, v16, v23, a5, a6, v25, v26);
}

uint64_t dispatch thunk of SiriKitEventSink.receiveAsync(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v13(a1, a2, a3, a4);
}

uint64_t UserSpecificInfo.sfeUserSessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = type metadata accessor for UserID();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v67 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for UserSessionAccessLevel();
  v63 = *(v65 - 8);
  v5 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v60 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22UserSessionAccessLevelOSg_ADtMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSg_ADtMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v61 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v56 - v17;
  v18 = type metadata accessor for UserSessionType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v56 - v26;
  v28 = type metadata accessor for UserSessionState();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v29 + 16);
  v68 = v1;
  v34(v33, v1 + OBJC_IVAR___SKEUserSpecificInfo_userSessionState, v28, v31);
  if ((UserSessionState.isAmbient.getter() & 1) == 0)
  {
    if (UserSessionState.isGuestSessionActive.getter())
    {
      v35 = MEMORY[0x1E69CE588];
      goto LABEL_5;
    }

    v58 = v28;
    v59 = v24;
    v36 = v64;
    UserSessionState.activeUserAccessLevel.getter();
    v37 = v63;
    v38 = v65;
    (*(v63 + 104))(v15, *MEMORY[0x1E69D0878], v65);
    (*(v37 + 56))(v15, 0, 1, v38);
    v39 = *(v7 + 48);
    v40 = v36;
    v41 = v62;
    outlined init with copy of ReferenceResolutionClientProtocol?(v40, v62, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
    v57 = v39;
    outlined init with copy of ReferenceResolutionClientProtocol?(v15, v41 + v39, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
    v42 = *(v37 + 48);
    if (v42(v41, 1, v38) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
      v43 = v42(v41 + v57, 1, v65) == 1;
      v44 = v41;
      v28 = v58;
      v45 = v59;
      if (v43)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
        v46 = 1;
LABEL_14:
        *v45 = v46 & 1;
        (*(v19 + 104))(v45, *MEMORY[0x1E69CE580], v18);
        (*(v19 + 32))(v27, v45, v18);
        goto LABEL_15;
      }
    }

    else
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v41, v61, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
      v47 = v57;
      if (v42(v41 + v57, 1, v65) != 1)
      {
        v48 = v63;
        v49 = v41 + v47;
        v50 = v60;
        v51 = v65;
        (*(v63 + 32))(v60, v49, v65);
        _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_1(&lazy protocol witness table cache variable for type UserSessionAccessLevel and conformance UserSessionAccessLevel, MEMORY[0x1E69D0880]);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v63 = *(v48 + 8);
        (v63)(v50, v51);
        outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
        (v63)(v61, v51);
        outlined destroy of ReferenceResolutionClientProtocol?(v62, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
        v28 = v58;
        v45 = v59;
        goto LABEL_14;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
      (*(v63 + 8))(v61, v65);
      v44 = v41;
      v28 = v58;
      v45 = v59;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s16SiriMessageTypes22UserSessionAccessLevelOSg_ADtMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSg_ADtMR);
    v46 = 0;
    goto LABEL_14;
  }

  v35 = MEMORY[0x1E69CE590];
LABEL_5:
  (*(v19 + 104))(v27, *v35, v18);
LABEL_15:
  (*(v19 + 16))(v66, v27, v18);
  v52 = *(v68 + OBJC_IVAR___SKEUserSpecificInfo_userId);
  v53 = *(v68 + OBJC_IVAR___SKEUserSpecificInfo_userId + 8);

  v54 = v67;
  UserID.init(sharedUserId:)();
  UserSessionState.isSessionActiveForUser(siriSharedUserId:)(v54);
  (*(v69 + 8))(v54, v70);
  UserSessionState.init(userSessionType:isSessionActiveForRecognizedUser:)();
  (*(v19 + 8))(v27, v18);
  return (*(v29 + 8))(v33, v28);
}

uint64_t static SiriKitExecutorRunUtils.siriLocale.getter(void (*a1)(uint64_t))
{
  type metadata accessor for DeviceEnvironmentHelper();
  MEMORY[0x1E129BAA0]();

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  a1(v2);
}

uint64_t static SiriKitExecutorRunUtils.preferencesLanguageCode.getter()
{
  type metadata accessor for DeviceEnvironmentHelper();
  MEMORY[0x1E129BAA0]();

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v0 = dispatch thunk of CurrentDevice.preferencesLanguageCode.getter();

  return v0;
}

uint64_t static SiriKitExecutorRunUtils.interactionTypeFrom(command:)@<X0>(void *a1@<X0>, SEL *a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, unsigned int *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = [a1 *a2];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    a3(v12, v14);
  }

  else
  {
    v16 = *a4;
    v17 = a5();
    v18 = *(*(v17 - 8) + 104);

    return v18(a6, v16, v17);
  }
}

uint64_t static SiriKitExecutorRunUtils.sessionHandOffContinuityIDFrom(command:)(void *a1)
{
  v1 = [a1 sessionHandOffContinuityID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t SAUserSessionState.sfeUserSessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v35[1] = a1;
  v2 = type metadata accessor for UserSessionType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v35 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v35 - v11;
  v13 = [v1 userSessionType];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = *MEMORY[0x1E69C8418];
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v18)
  {

    goto LABEL_10;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
LABEL_10:
    v27 = MEMORY[0x1E69CE590];
    goto LABEL_11;
  }

  v21 = [v1 userSessionType];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = *MEMORY[0x1E69C8428];
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v26)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      v32 = [v1 isHighConfidenceSession];
      if (v32)
      {
        v33 = v32;
        v34 = [v32 BOOLValue];
      }

      else
      {
        v34 = 0;
      }

      *v10 = v34;
      (*(v3 + 104))(v10, *MEMORY[0x1E69CE580], v2);
      (*(v3 + 32))(v12, v10, v2);
      goto LABEL_12;
    }
  }

  v27 = MEMORY[0x1E69CE588];
LABEL_11:
  (*(v3 + 104))(v12, *v27, v2);
LABEL_12:
  (*(v3 + 16))(v7, v12, v2);
  v28 = [v1 isSessionActiveForRecognizedUser];
  if (v28)
  {
    v29 = v28;
    [v28 BOOLValue];
  }

  UserSessionState.init(userSessionType:isSessionActiveForRecognizedUser:)();
  return (*(v3 + 8))(v12, v2);
}

id UserSpecificInfo.saUserSessionState.getter()
{
  v1 = type metadata accessor for UserID();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v55 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UserSessionAccessLevel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22UserSessionAccessLevelOSg_ADtMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSg_ADtMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v51 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v49 - v19;
  v21 = type metadata accessor for UserSessionState();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v26;
  v54 = v25;
  v27 = *(v26 + 16);
  v56 = v0;
  v27(v24, v0 + OBJC_IVAR___SKEUserSpecificInfo_userSessionState);
  if (UserSessionState.isAmbient.getter())
  {
    v28 = MEMORY[0x1E69C8418];
  }

  else
  {
    v29 = UserSessionState.isGuestSessionActive.getter();
    v28 = MEMORY[0x1E69C8420];
    if (v29)
    {
      v28 = MEMORY[0x1E69C8428];
    }
  }

  v30 = *v28;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  v34 = [objc_allocWithZone(MEMORY[0x1E69C7C08]) init];
  v35 = MEMORY[0x1E12A1410](v31, v33);

  v52 = v34;
  [v34 setUserSessionType_];

  UserSessionState.activeUserAccessLevel.getter();
  (*(v5 + 104))(v18, *MEMORY[0x1E69D0878], v4);
  (*(v5 + 56))(v18, 0, 1, v4);
  v36 = *(v8 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v20, v11, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v18, &v11[v36], &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
  v37 = *(v5 + 48);
  if (v37(v11, 1, v4) != 1)
  {
    v39 = v51;
    outlined init with copy of ReferenceResolutionClientProtocol?(v11, v51, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
    if (v37(&v11[v36], 1, v4) != 1)
    {
      v40 = v50;
      (*(v5 + 32))(v50, &v11[v36], v4);
      _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_1(&lazy protocol witness table cache variable for type UserSessionAccessLevel and conformance UserSessionAccessLevel, MEMORY[0x1E69D0880]);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *(v5 + 8);
      v41(v40, v4);
      outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
      v41(v51, v4);
      outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
      goto LABEL_12;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
    (*(v5 + 8))(v39, v4);
    goto LABEL_10;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
  if (v37(&v11[v36], 1, v4) != 1)
  {
LABEL_10:
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s16SiriMessageTypes22UserSessionAccessLevelOSg_ADtMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSg_ADtMR);
    v38 = 0;
    goto LABEL_12;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
  v38 = 1;
LABEL_12:
  v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v43 = v52;
  [v52 setIsHighConfidenceSession_];

  v44 = *(v56 + OBJC_IVAR___SKEUserSpecificInfo_userId);
  v45 = *(v56 + OBJC_IVAR___SKEUserSpecificInfo_userId + 8);

  v46 = v55;
  UserID.init(sharedUserId:)();
  LOBYTE(v44) = UserSessionState.isSessionActiveForUser(siriSharedUserId:)(v46);
  (*(v57 + 8))(v46, v58);
  v47 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [v43 setIsSessionActiveForRecognizedUser_];

  (*(v53 + 8))(v24, v54);
  return v43;
}

uint64_t static SiriKitExecutorRunUtils.logFailedCompletion(intentTypeName:errorCode:reason:refId:commandCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void (*a8)(uint64_t), char *a9)
{
  v79 = a8;
  v80 = a6;
  v77 = a2;
  v74 = a1;
  v13 = type metadata accessor for SiriKitEventPayload();
  v75 = *(v13 - 8);
  v76 = v13;
  v14 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SiriKitReliabilityCodes();
  v81 = *(v17 - 8);
  v82 = v17;
  v18 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v73 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.executor);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v85[0] = v24;
    *v23 = 134218498;
    *(v23 + 4) = a3;
    *(v23 + 12) = 2080;
    if (a5)
    {
      v25 = a4;
    }

    else
    {
      v25 = 0x6E776F6E6B6E55;
    }

    v78 = a3;
    if (a5)
    {
      v26 = a5;
    }

    else
    {
      v26 = 0xE700000000000000;
    }

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v85);

    *(v23 + 14) = v27;
    *(v23 + 22) = 2080;
    if (a7)
    {
      v28 = v80;
    }

    else
    {
      v28 = 1819047246;
    }

    if (a7)
    {
      v29 = a7;
    }

    else
    {
      v29 = 0xE400000000000000;
    }

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v85);
    a3 = v78;

    *(v23 + 24) = v30;
    _os_log_impl(&dword_1DC659000, v21, v22, "SiriKitExecutor failing with error: errorCode=%ld, reason='%s', refId='%s'", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  v78 = a7;
  static SiriKitEventSender.current.getter();
  v83 = a3;
  v31 = dispatch thunk of CustomStringConvertible.description.getter();
  v83 = 0x646F43726F727245;
  v84 = 0xEB00000000203A65;
  MEMORY[0x1E12A1580](v31);

  v32 = v83;
  v33 = v84;
  v34 = a5;
  v35 = a4;
  v36 = a5;
  v37 = a4;
  if (!a5)
  {
    v37 = 0x6E776F6E6B6E55;
    v39 = v81;
    v38 = v82;
    v40 = v73;
    (*(v81 + 104))(v73, *MEMORY[0x1E69CFC90], v82);
    v35 = SiriKitReliabilityCodes.rawValue.getter();
    v36 = v41;
    (*(v39 + 8))(v40, v38);
    v34 = 0xE700000000000000;
  }

  v71 = v37;
  v72 = v34;
  v73 = a9;
  v83 = v32;
  v84 = v33;

  MEMORY[0x1E12A1580](v35, v36);

  v66 = v83;
  v65 = v84;
  v70 = v85[4];
  v68 = __swift_project_boxed_opaque_existential_1(v85, v85[3]);
  v67 = type metadata accessor for SiriKitEvent();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeAK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0P6ReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeAK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0P6ReasontMR);
  v43 = &v16[v42[12]];
  v44 = v42[16];
  v45 = &v16[v42[20]];
  v46 = &v16[v42[24]];
  v47 = &v16[v42[28]];
  v48 = &v16[v42[32]];
  v69 = a5;
  v49 = v42[36];
  v50 = *MEMORY[0x1E69CFDD0];
  v51 = type metadata accessor for ActivityType();
  (*(*(v51 - 8) + 104))(v16, v50, v51);
  v52 = v77;
  *v43 = v74;
  *(v43 + 1) = v52;
  *&v16[v44] = 0;
  *v45 = 0;
  *(v45 + 1) = 0;
  *v46 = 0;
  *(v46 + 1) = 0;
  *v47 = 0xD000000000000012;
  *(v47 + 1) = 0x80000001DCA88D80;
  v53 = v65;
  *v48 = v66;
  *(v48 + 1) = v53;
  v55 = v81;
  v54 = v82;
  (*(v81 + 104))(&v16[v49], *MEMORY[0x1E69CFC70], v82);
  (*(v55 + 56))(&v16[v49], 0, 1, v54);
  (*(v75 + 104))(v16, *MEMORY[0x1E69CFC50], v76);

  SiriKitEvent.__allocating_init(_:builder:)();
  dispatch thunk of SiriKitEventSending.send(_:)();

  v56 = [objc_allocWithZone(MEMORY[0x1E69C7778]) init];
  [v56 setErrorCode_];

  v57 = MEMORY[0x1E12A1410](v71, v72);

  [v56 setReason_];

  v58 = v56;
  if (v78)
  {
    v59 = MEMORY[0x1E12A1410](v80);
  }

  else
  {
    v59 = 0;
  }

  [v58 setRefId_];

  v60 = [v58 dictionary];
  if (v60 && (v61 = v60, v62 = [v60 copy], v61, v62))
  {
    v63 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v63 = 0;
  }

  v79(v63);

  return __swift_destroy_boxed_opaque_existential_1Tm(v85);
}

id static SiriKitExecutorRunUtils.makeNLv3Parse(parse:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 nlv3Parse];
  if (result)
  {
    v4 = result;
    v5 = [result data];

    if (v5)
    {
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      outlined copy of Data._Representation(v6, v8);
      NLIntent.init(protobufData:)();
      v11 = type metadata accessor for NLIntent();
      (*(*(v11 - 8) + 56))(a2, 0, 1, v11);

      return outlined consume of Data._Representation(v6, v8);
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      os_log(_:dso:log:type:_:)();
      v9 = type metadata accessor for NLIntent();
      v10 = *(*(v9 - 8) + 56);

      return v10(a2, 1, 1, v9);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static SiriKitExecutorRunUtils.multiUserStateFrom(command:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 multiUser])
  {
    static SiriKitExecutorRunUtils.multiUserContextFrom(command:)(a1);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for MultiUserContext();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

void static SiriKitExecutorRunUtils.multiUserContextFrom(command:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment16UserSessionStateVSgMd, _s19SiriFlowEnvironment16UserSessionStateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v18 - v5;
  v7 = [a1 identifiedUserMeCard];
  v8 = [a1 remoteExecution];
  if (v8 && (v9 = v8, v10 = [v8 executionDeviceAssistantId], v9, v10))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (!v7)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_7;
    }
  }

  else if (!v7)
  {
    goto LABEL_4;
  }

  v12 = v7;
  v11 = SAPerson.contact.getter();

LABEL_7:
  v13 = type metadata accessor for DefaultMeCardProxy();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  [a1 requiresConditionalMultiUserGrounding];
  v18[4] = v13;
  v18[5] = _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_1(&lazy protocol witness table cache variable for type DefaultMeCardProxy and conformance DefaultMeCardProxy, type metadata accessor for DefaultMeCardProxy);
  v18[1] = v14;

  v15 = [a1 userSessionState];
  if (v15)
  {
    v16 = v15;
    SAUserSessionState.sfeUserSessionState.getter(v6);
  }

  else
  {
    v17 = type metadata accessor for UserSessionState();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  }

  MultiUserContext.init(requiresUserGrounding:meCardProxy:handoffTargetDeviceID:userSessionState:)();
}

uint64_t closure #2 in static SiriKitExecutorRunUtils.bargeInContextFrom(command:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BargeInMode();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Date();
  v36 = *(v38 - 8);
  v8 = *(v36 + 64);
  v9 = MEMORY[0x1EEE9AC00](v38);
  v39 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v37 = v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v34 - v17;
  v19 = *a1;
  if (*(*a1 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(0x4D6E496567726162, 0xEC0000007365646FLL), (v21 & 1) != 0) && (outlined init with copy of Any(*(v19 + 56) + 32 * v20, v40), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR), (swift_dynamicCast() & 1) != 0))
  {
    v22 = v41;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = type metadata accessor for DateInterval();
  v24 = *(*(v23 - 8) + 56);
  v24(v18, 1, 1, v23);
  if (!*(v19 + 16))
  {
    goto LABEL_18;
  }

  v25 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x80000001DCA89520);
  if ((v26 & 1) == 0)
  {
    goto LABEL_18;
  }

  outlined init with copy of Any(*(v19 + 56) + 32 * v25, v40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (!*(v19 + 16))
  {
    goto LABEL_18;
  }

  v35 = v41;
  v27 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001DCA89540);
  if ((v28 & 1) == 0)
  {
    goto LABEL_18;
  }

  outlined init with copy of Any(*(v19 + 56) + 32 * v27, v40);
  result = swift_dynamicCast();
  if ((result & 1) == 0 || !v35 || !v41)
  {
    goto LABEL_18;
  }

  v30 = v35 - v41;
  if (__OFSUB__(v35, v41))
  {
    __break(1u);
  }

  else if ((v30 & 0x8000000000000000) == 0 || !__OFSUB__(0, v30))
  {
    Date.init()();
    Date.addingTimeInterval(_:)();
    v31 = v36;
    v32 = *(v36 + 8);
    v34[1] = v36 + 8;
    v35 = v32;
    (v32)(v39, v38);
    (*(v31 + 16))(v39, v37, v38);
    DateInterval.init(start:duration:)();
    (v35)(v37, v38);
    outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v24(v16, 0, 1, v23);
    outlined init with take of DateInterval?(v16, v18);
LABEL_18:
    static BargeInMode.from(aceModes:)(v22, v7);

    outlined init with copy of ReferenceResolutionClientProtocol?(v18, v16, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    BargeInContext.init(mode:approximatePreviousTTSInterval:)();
    outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v33 = type metadata accessor for BargeInContext();
    return (*(*(v33 - 8) + 56))(a2, 0, 1, v33);
  }

  __break(1u);
  return result;
}

uint64_t static SiriKitExecutorRunUtils.crashIfThrow(file:line:closure:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int *a5)
{
  *(v5 + 48) = a2;
  *(v5 + 56) = a4;
  *(v5 + 80) = a3;
  *(v5 + 40) = a1;
  v9 = (a5 + *a5);
  v6 = a5[1];
  v7 = swift_task_alloc();
  *(v5 + 64) = v7;
  *v7 = v5;
  v7[1] = static SiriKitExecutorRunUtils.crashIfThrow(file:line:closure:);

  return v9();
}

uint64_t static SiriKitExecutorRunUtils.crashIfThrow(file:line:closure:)()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static SiriKitExecutorRunUtils.crashIfThrow(file:line:closure:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  *(v0 + 32) = *(v0 + 72);
  v1 = v0 + 32;
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 8);
  *(v1 - 16) = 0;
  *(v1 - 8) = 0xE000000000000000;
  v5 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  v6 = *(v1 - 16);
  v7 = *(v1 - 8);

  return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v6, v7, v4, v2, v5, v3);
}

void specialized static SiriKitExecutorRunUtils.addIntentMetadata(intent:peerInfo:endpointInfo:)(void *a1, void *a2, void *a3)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DCA696F0;
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = dispatch thunk of PeerInfoProviding.getIdsIdentifier()();
  v9 = v8;
  v10 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v11 = lazy protocol witness table accessor for type String and conformance String();
  *(v5 + 64) = v11;
  if (v9)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0x3E4C494E3CLL;
  }

  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  *(v5 + 32) = v12;
  *(v5 + 40) = v13;
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v15 = dispatch thunk of PeerInfoProviding.getRapportEffectiveIdentifier()();
  *(v5 + 96) = v10;
  *(v5 + 104) = v11;
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0x3E4C494E3CLL;
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  *(v5 + 72) = v17;
  *(v5 + 80) = v18;
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v20 = dispatch thunk of PeerInfoProviding.getMediaSystemIdentifier()();
  *(v5 + 136) = v10;
  *(v5 + 144) = v11;
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0x3E4C494E3CLL;
  }

  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  *(v5 + 112) = v22;
  *(v5 + 120) = v23;
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v25 = dispatch thunk of PeerInfoProviding.isOwnedByCurrentUser()();
  v26 = 1163219540;
  if ((v25 & 1) == 0)
  {
    v26 = 0x45534C4146;
  }

  v27 = 0xE400000000000000;
  if ((v25 & 1) == 0)
  {
    v27 = 0xE500000000000000;
  }

  *(v5 + 176) = v10;
  *(v5 + 184) = v11;
  *(v5 + 152) = v26;
  *(v5 + 160) = v27;
  v28 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v29 = dispatch thunk of PeerInfoProviding.getMediaRouteIdentifier()();
  *(v5 + 216) = v10;
  *(v5 + 224) = v11;
  if (v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0x3E4C494E3CLL;
  }

  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  *(v5 + 192) = v31;
  *(v5 + 200) = v32;
  v33 = a3[4];
  v102 = a3[3];
  v103 = __swift_project_boxed_opaque_existential_1(a3, v102);
  v104 = v33;
  v34 = dispatch thunk of EndpointInfoProviding.getIdentifier()();
  *(v5 + 256) = v10;
  *(v5 + 264) = v11;
  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0x3E4C494E3CLL;
  }

  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0xE500000000000000;
  }

  *(v5 + 232) = v36;
  *(v5 + 240) = v37;
  v38 = a3[4];
  v106 = a3;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v39 = dispatch thunk of EndpointInfoProviding.getMediaRouteIdentifier()();
  *(v5 + 296) = v10;
  *(v5 + 304) = v11;
  if (v40)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0x3E4C494E3CLL;
  }

  if (v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = 0xE500000000000000;
  }

  *(v5 + 272) = v41;
  *(v5 + 280) = v42;
  os_log(_:dso:log:type:_:)();

  v43 = [a1 _metadata];
  if (v43)
  {

    v44 = [a1 _metadata];
    if (v44)
    {
      v45 = v44;
      v46 = dispatch thunk of PeerInfoProviding.getIdsIdentifier()();
      if (v47)
      {
        v48 = MEMORY[0x1E12A1410](v46);
      }

      else
      {
        v48 = 0;
      }

      [v45 setOriginatingDeviceIdsIdentifier_];
    }

    v49 = [a1 _metadata];
    if (v49)
    {
      v50 = v49;
      v51 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      v52 = dispatch thunk of PeerInfoProviding.getRapportEffectiveIdentifier()();
      if (v53)
      {
        v54 = MEMORY[0x1E12A1410](v52);
      }

      else
      {
        v54 = 0;
      }

      [v50 setOriginatingDeviceRapportEffectiveId_];

      a3 = v106;
    }

    v55 = [a1 _metadata];
    if (v55)
    {
      v56 = v55;
      v57 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      v58 = dispatch thunk of PeerInfoProviding.getMediaSystemIdentifier()();
      if (v59)
      {
        v60 = MEMORY[0x1E12A1410](v58);
      }

      else
      {
        v60 = 0;
      }

      [v56 setOriginatingDeviceRapportMediaSystemId_];

      a3 = v106;
    }

    v61 = [a1 _metadata];
    if (v61)
    {
      v62 = v61;
      v63 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      a3 = v106;
      [v62 setIsOwnedByCurrentUser_];
    }

    v64 = [a1 _metadata];
    if (v64)
    {
      v65 = v64;
      v66 = dispatch thunk of EndpointInfoProviding.getIdentifier()();
      if (v67)
      {
        v68 = MEMORY[0x1E12A1410](v66);
      }

      else
      {
        v68 = 0;
      }

      [v65 setEndpointId_];
    }

    v69 = [a1 _metadata];
    if (v69)
    {
      v70 = v69;
      v71 = a3;
      v72 = a3[3];
      v73 = a3[4];
      __swift_project_boxed_opaque_existential_1(v71, v72);
      v74 = dispatch thunk of EndpointInfoProviding.getMediaRouteIdentifier()();
      if (v75)
      {
        v76 = MEMORY[0x1E12A1410](v74);
      }

      else
      {
        v76 = 0;
      }

      [v70 setMediaRouteId_];
    }

    v77 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v78 = dispatch thunk of PeerInfoProviding.getMediaRouteIdentifier()();
    if (v79)
    {
      v80 = v78;
      v81 = v79;
      v82 = [a1 _metadata];
      if (v82 && (v83 = v82, v84 = [v82 airPlayRouteIds], v83, v84))
      {
      }

      else
      {
        v85 = [a1 _metadata];
        if (v85)
        {
          v86 = v85;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v87 = swift_allocObject();
          *(v87 + 16) = xmmword_1DCA66060;
          *(v87 + 32) = v80;
          *(v87 + 40) = v81;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v86 setAirPlayRouteIds_];
        }

        else
        {
        }
      }
    }
  }

  else
  {
    static os_log_type_t.debug.getter();
    os_log(_:dso:log:type:_:)();
  }

  v89 = dispatch thunk of PeerInfoProviding.getIdsIdentifier()();
  if (v90)
  {
    v91 = MEMORY[0x1E12A1410](v89);
  }

  else
  {
    v91 = 0;
  }

  [a1 _setOriginatingDeviceIdsIdentifier_];

  v92 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v93 = dispatch thunk of PeerInfoProviding.getRapportEffectiveIdentifier()();
  if (v94)
  {
    v95 = MEMORY[0x1E12A1410](v93);
  }

  else
  {
    v95 = 0;
  }

  [a1 _setOriginatingDeviceRapportEffectiveIdentifier_];

  v96 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v97 = dispatch thunk of PeerInfoProviding.getMediaSystemIdentifier()();
  if (v98)
  {
    v99 = MEMORY[0x1E12A1410](v97);
  }

  else
  {
    v99 = 0;
  }

  [a1 _setOriginatingDeviceRapportMediaSystemIdentifier_];

  v100 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v101 = dispatch thunk of PeerInfoProviding.isOwnedByCurrentUser()();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v107 = NSNumber.init(integerLiteral:)(v101 & 1).super.super.isa;
  [a1 _setIsOwnedByCurrentUser_];
}

uint64_t specialized static SiriKitExecutorRunUtils.makeSiriKitParameterMetadata(aceParameterMetadata:)(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for SiriKitConfirmationState();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v12 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v12;
    }

    v57 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      break;
    }

    v43 = i;
    v41 = v10;
    v13 = 0;
    v44 = a1 & 0xC000000000000001;
    v39 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = a1 + 32;
    v49 = v6;
    v50 = (v51 + 48);
    v14 = (v51 + 32);
    v40 = a1;
    while (1)
    {
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v44)
      {
        v19 = MEMORY[0x1E12A1FE0]();
      }

      else
      {
        if (v13 >= *(v39 + 16))
        {
          goto LABEL_29;
        }

        v19 = *(v38 + 8 * v13);
      }

      v1 = v19;
      v20 = [v19 parameterName];
      if (!v20)
      {
        goto LABEL_32;
      }

      v21 = v20;
      v48 = v18;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v23;
      v46 = v22;

      v24 = [v1 shouldResolve];
      v47 = v1;
      v25 = [v1 confirmationStates];
      if (v25)
      {
        v26 = v25;
        v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v27 = *(v6 + 2);
        if (v27)
        {
          v42 = v24;
          v56 = v12;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
          a1 = 0;
          v28 = v56;
          v29 = (v6 + 32);
          v10 = v41;
          v52 = v27;
          while (a1 < *(v6 + 2))
          {
            outlined init with copy of Any(v29, v55);
            outlined init with copy of Any(v55, &v53);
            if (!swift_dynamicCast())
            {
              goto LABEL_33;
            }

            v1 = v49;
            SiriKitConfirmationState.init(rawValue:)();
            if ((*v50)(v1, 1, v7) == 1)
            {
              goto LABEL_34;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v55);

            v30 = *v14;
            (*v14)(v10, v1, v7);
            v56 = v28;
            v1 = v10;
            v32 = *(v28 + 16);
            v31 = *(v28 + 24);
            if (v32 >= v31 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1);
              v28 = v56;
            }

            ++a1;
            *(v28 + 16) = v32 + 1;
            v30((v28 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v32), v1, v7);
            v29 += 32;
            v10 = v1;
            if (v52 == a1)
            {

              a1 = v40;
              v12 = MEMORY[0x1E69E7CC0];
              goto LABEL_6;
            }
          }

          __break(1u);
          break;
        }
      }

LABEL_6:
      v15 = type metadata accessor for SiriKitParameterMetadata();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v10 = SiriKitParameterMetadata.init(parameterName:shouldResolve:confirmationStates:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v1 = *(v57 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v13 = v48;
      if (v48 == v43)
      {
        return v57;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  v53 = 0;
  v54 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  MEMORY[0x1E12A1580](0xD000000000000026, 0x80000001DCA87420);
  _print_unlocked<A, B>(_:_:)();
  v34 = v53;
  v35 = v54;

  specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v34, v35, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Extensions/SAIntentGroupSiriKitConfirmationState+Enum.swift", 128, 2, 38);
  __break(1u);
LABEL_34:
  outlined destroy of ReferenceResolutionClientProtocol?(v1, &_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
  v53 = 0;
  v54 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  MEMORY[0x1E12A1580](0xD00000000000002CLL, 0x80000001DCA874E0);
  _print_unlocked<A, B>(_:_:)();
  v36 = v53;
  v37 = v54;

  result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v36, v37, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Extensions/SAIntentGroupSiriKitConfirmationState+Enum.swift", 128, 2, 42);
  __break(1u);
  return result;
}

uint64_t SiriKitFlowActivity.isSiriKit.setter(char a1)
{
  v3 = direct field offset for SiriKitFlowActivity.isSiriKit;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SiriKitFlowActivity.isSiriKitSupportedApp.setter(char a1)
{
  v3 = direct field offset for SiriKitFlowActivity.isSiriKitSupportedApp;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SiriKitFlowActivity.__allocating_init(activityType:app:executionRequestId:responseId:taskStepStartTime:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8)
{
  v9 = v8;
  v63 = a8;
  v64 = a7;
  v60 = a5;
  v61 = a3;
  v62 = a1;
  v12 = type metadata accessor for SiriKitReliabilityCodes();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v9 + 48);
  v18 = *(v9 + 52);
  v19 = swift_allocObject();
  v20 = (v19 + direct field offset for SiriKitFlowActivity.errorCodeDescription);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v19 + direct field offset for SiriKitFlowActivity.eventReliabilityCode);
  (*(v13 + 104))(v16, *MEMORY[0x1E69CFCC0], v12);
  v22 = SiriKitReliabilityCodes.rawValue.getter();
  v24 = v23;
  (*(v13 + 8))(v16, v12);
  *v21 = v22;
  v21[1] = v24;
  *(v19 + direct field offset for SiriKitFlowActivity.isSiriKit) = 1;
  v25 = v19 + direct field offset for SiriKitFlowActivity.slotName;
  strcpy((v19 + direct field offset for SiriKitFlowActivity.slotName), "not_applicable");
  *(v25 + 15) = -18;
  v26 = type metadata accessor for AppInformationResolver();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();

  AppInformationResolver.init(app:)();
  v29 = dispatch thunk of AppInformationResolver.resolveAppBundleId.getter();
  if (v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0x6C7070615F746F6ELL;
  }

  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0xEE00656C62616369;
  }

  v33 = (v19 + direct field offset for SiriKitFlowActivity.appBundleId);
  *v33 = v31;
  v33[1] = v32;
  v34 = dispatch thunk of AppInformationResolver.resolveAppName.getter();
  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0x6C7070615F746F6ELL;
  }

  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0xEE00656C62616369;
  }

  v38 = (v19 + direct field offset for SiriKitFlowActivity.appName);
  *v38 = v36;
  v38[1] = v37;
  v39 = dispatch thunk of AppInformationResolver.resolveAppVersion.getter();
  if (v40)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0x6C7070615F746F6ELL;
  }

  if (v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = 0xEE00656C62616369;
  }

  v43 = (v19 + direct field offset for SiriKitFlowActivity.appVersion);
  *v43 = v41;
  v43[1] = v42;
  v44 = dispatch thunk of AppInformationResolver.resolveBuild.getter();
  v46 = 48;
  if (v45)
  {
    v46 = v44;
  }

  v47 = 0xE100000000000000;
  if (v45)
  {
    v47 = v45;
  }

  v48 = (v19 + direct field offset for SiriKitFlowActivity.build);
  *v48 = v46;
  v48[1] = v47;
  *(v19 + direct field offset for SiriKitFlowActivity.isSiriKitSupportedApp) = dispatch thunk of AppInformationResolver.isSiriKitSupportedApp.getter() & 1;
  v49 = v60;
  if (a6)
  {
    v50 = a6;
  }

  else
  {
    v49 = 0;
    v50 = 0xE000000000000000;
  }

  v51 = (v19 + direct field offset for SiriKitFlowActivity.responseId);
  *v51 = v49;
  v51[1] = v50;
  v52 = v61;
  v53 = v62;
  if (a4)
  {
    v54 = a4;
  }

  else
  {
    v52 = 0;
    v54 = 0xE000000000000000;
  }

  v55 = (v19 + direct field offset for SiriKitFlowActivity.executionRequestId);
  *v55 = v52;
  v55[1] = v54;
  ActivityType.rawValue.getter();
  v56 = DefaultFlowActivity.init(activityName:activityType:activityStartTime:)();

  v57 = type metadata accessor for ActivityType();
  (*(*(v57 - 8) + 8))(v53, v57);
  return v56;
}

uint64_t SiriKitFlowActivity.init(activityType:app:executionRequestId:responseId:taskStepStartTime:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8)
{
  v9 = v8;
  v61 = a8;
  v62 = a7;
  v58 = a5;
  v59 = a3;
  v60 = a1;
  v12 = type metadata accessor for SiriKitReliabilityCodes();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v9 + direct field offset for SiriKitFlowActivity.errorCodeDescription);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = (v9 + direct field offset for SiriKitFlowActivity.eventReliabilityCode);
  (*(v13 + 104))(v17, *MEMORY[0x1E69CFCC0], v12, v15);
  v20 = SiriKitReliabilityCodes.rawValue.getter();
  v22 = v21;
  (*(v13 + 8))(v17, v12);
  *v19 = v20;
  v19[1] = v22;
  *(v9 + direct field offset for SiriKitFlowActivity.isSiriKit) = 1;
  v23 = v9 + direct field offset for SiriKitFlowActivity.slotName;
  strcpy((v9 + direct field offset for SiriKitFlowActivity.slotName), "not_applicable");
  *(v23 + 15) = -18;
  v24 = type metadata accessor for AppInformationResolver();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  AppInformationResolver.init(app:)();
  v27 = dispatch thunk of AppInformationResolver.resolveAppBundleId.getter();
  if (v28)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0x6C7070615F746F6ELL;
  }

  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0xEE00656C62616369;
  }

  v31 = (v9 + direct field offset for SiriKitFlowActivity.appBundleId);
  *v31 = v29;
  v31[1] = v30;
  v32 = dispatch thunk of AppInformationResolver.resolveAppName.getter();
  if (v33)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0x6C7070615F746F6ELL;
  }

  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0xEE00656C62616369;
  }

  v36 = (v9 + direct field offset for SiriKitFlowActivity.appName);
  *v36 = v34;
  v36[1] = v35;
  v37 = dispatch thunk of AppInformationResolver.resolveAppVersion.getter();
  if (v38)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0x6C7070615F746F6ELL;
  }

  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0xEE00656C62616369;
  }

  v41 = (v9 + direct field offset for SiriKitFlowActivity.appVersion);
  *v41 = v39;
  v41[1] = v40;
  v42 = dispatch thunk of AppInformationResolver.resolveBuild.getter();
  v44 = 48;
  if (v43)
  {
    v44 = v42;
  }

  v45 = 0xE100000000000000;
  if (v43)
  {
    v45 = v43;
  }

  v46 = (v9 + direct field offset for SiriKitFlowActivity.build);
  *v46 = v44;
  v46[1] = v45;
  *(v9 + direct field offset for SiriKitFlowActivity.isSiriKitSupportedApp) = dispatch thunk of AppInformationResolver.isSiriKitSupportedApp.getter() & 1;
  v47 = v58;
  if (a6)
  {
    v48 = a6;
  }

  else
  {
    v47 = 0;
    v48 = 0xE000000000000000;
  }

  v49 = (v9 + direct field offset for SiriKitFlowActivity.responseId);
  *v49 = v47;
  v49[1] = v48;
  v50 = v59;
  v51 = v60;
  if (a4)
  {
    v52 = a4;
  }

  else
  {
    v50 = 0;
    v52 = 0xE000000000000000;
  }

  v53 = (v9 + direct field offset for SiriKitFlowActivity.executionRequestId);
  *v53 = v50;
  v53[1] = v52;
  ActivityType.rawValue.getter();
  v54 = DefaultFlowActivity.init(activityName:activityType:activityStartTime:)();

  v55 = type metadata accessor for ActivityType();
  (*(*(v55 - 8) + 8))(v51, v55);
  return v54;
}

void SiriKitFlowActivity.__allocating_init(from:)()
{
  v0 = type metadata accessor for SiriKitReliabilityCodes();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69CFCC0], v0, v3);
  SiriKitReliabilityCodes.rawValue.getter();
  (*(v1 + 8))(v5, v0);
  specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000024, 0x80000001DCA89560, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/TaskStepInstrumentation/SiriKitFlowActivity.swift", 118, 2, 50);
  __break(1u);
}

void SiriKitFlowActivity.init(from:)()
{
  v1 = v0;
  v2 = type metadata accessor for SiriKitReliabilityCodes();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + direct field offset for SiriKitFlowActivity.errorCodeDescription);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v1 + direct field offset for SiriKitFlowActivity.eventReliabilityCode);
  (*(v3 + 104))(v7, *MEMORY[0x1E69CFCC0], v2, v5);
  v10 = SiriKitReliabilityCodes.rawValue.getter();
  v12 = v11;
  (*(v3 + 8))(v7, v2);
  *v9 = v10;
  v9[1] = v12;
  *(v1 + direct field offset for SiriKitFlowActivity.isSiriKit) = 1;
  v13 = v1 + direct field offset for SiriKitFlowActivity.slotName;
  strcpy((v1 + direct field offset for SiriKitFlowActivity.slotName), "not_applicable");
  *(v13 + 15) = -18;
  specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000024, 0x80000001DCA89560, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/TaskStepInstrumentation/SiriKitFlowActivity.swift", 118, 2, 50);
  __break(1u);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SiriKitFlowActivity.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = SiriKitFlowActivity.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == SiriKitFlowActivity.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SiriKitFlowActivity.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SiriKitFlowActivity.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SiriKitFlowActivity.CodingKeys()
{
  SiriKitFlowActivity.CodingKeys.stringValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriKitFlowActivity.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SiriKitFlowActivity.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SiriKitFlowActivity.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SiriKitFlowActivity.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SiriKitFlowActivity.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = SiriKitFlowActivity.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriKitFlowActivity.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SiriKitFlowActivity.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriKitFlowActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriKitFlowActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriKitFlowActivity.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for SiriKitFlowActivity.appBundleId + 8);

  v2 = *(v0 + direct field offset for SiriKitFlowActivity.appName + 8);

  v3 = *(v0 + direct field offset for SiriKitFlowActivity.appVersion + 8);

  v4 = *(v0 + direct field offset for SiriKitFlowActivity.build + 8);

  v5 = *(v0 + direct field offset for SiriKitFlowActivity.errorCodeDescription + 8);

  v6 = *(v0 + direct field offset for SiriKitFlowActivity.eventReliabilityCode + 8);

  v7 = *(v0 + direct field offset for SiriKitFlowActivity.responseId + 8);

  v8 = *(v0 + direct field offset for SiriKitFlowActivity.slotName + 8);

  v9 = *(v0 + direct field offset for SiriKitFlowActivity.executionRequestId + 8);
}

unint64_t specialized SiriKitFlowActivity.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SiriKitFlowActivity.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for SiriKitFlowActivity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriKitFlowActivity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t DirectFlowPluginLoaderImpl.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t FlowPluginAndBundle.init(flowPlugin:bundle:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with take of ReferenceResolutionClientProtocol(a1, a3);

  return outlined init with take of ReferenceResolutionClientProtocol(a2, a3 + 40);
}

uint64_t one-time initialization function for pluginLoader()
{
  type metadata accessor for FlowDelegatePluginLoader();
  result = static FlowDelegatePluginLoader.sharedInstance.getter();
  static SiriKitFlowLoader.pluginLoader = result;
  return result;
}

uint64_t *SiriKitFlowLoader.pluginLoader.unsafeMutableAddressor()
{
  if (one-time initialization token for pluginLoader != -1)
  {
    swift_once();
  }

  return &static SiriKitFlowLoader.pluginLoader;
}

uint64_t static SiriKitFlowLoader.pluginLoader.getter()
{
  if (one-time initialization token for pluginLoader != -1)
  {
    swift_once();
  }
}

uint64_t SiriKitFlowLoader.loadFlow(rcId:input:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pluginLoader != -1)
  {
    swift_once();
  }

  Input.parse.getter();
  dispatch thunk of FlowDelegatePluginLoader.loadFlow(rcId:parse:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t SiriKitFlowLoader.loadFlowPlugin(bundleIdentifier:)()
{
  if (one-time initialization token for pluginLoader != -1)
  {
    swift_once();
  }

  return dispatch thunk of FlowDelegatePluginLoader.loadFlowPlugin(bundleIdentifier:)();
}

Swift::Void __swiftcall SiriKitFlowLoader.loadAndWarmBundle(bundleIdentifier:refId:)(Swift::String bundleIdentifier, Swift::String refId)
{
  if (one-time initialization token for pluginLoader != -1)
  {
    swift_once();
  }

  dispatch thunk of FlowDelegatePluginLoader.loadAndWarmBundle(bundleIdentifier:refId:)();
}

uint64_t protocol witness for FlowLoader.loadFlow(rcId:input:) in conformance SiriKitFlowLoader()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pluginLoader != -1)
  {
    swift_once();
  }

  Input.parse.getter();
  dispatch thunk of FlowDelegatePluginLoader.loadFlow(rcId:parse:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t protocol witness for FlowLoader.loadFlowPlugin(bundleIdentifier:) in conformance SiriKitFlowLoader()
{
  if (one-time initialization token for pluginLoader != -1)
  {
    swift_once();
  }

  return dispatch thunk of FlowDelegatePluginLoader.loadFlowPlugin(bundleIdentifier:)();
}

uint64_t protocol witness for FlowLoader.loadAndWarmBundle(bundleIdentifier:refId:) in conformance SiriKitFlowLoader()
{
  if (one-time initialization token for pluginLoader != -1)
  {
    swift_once();
  }

  return dispatch thunk of FlowDelegatePluginLoader.loadAndWarmBundle(bundleIdentifier:refId:)();
}

uint64_t DirectFlowPluginLoaderImpl.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t DirectFlowPluginLoaderImpl.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DirectFlowPluginLoaderImpl.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

id AFSpeechInfo.toAFSpeechPackage()()
{
  result = [v0 speechRecognizedCommand];
  if (result)
  {
    v2 = result;
    v3 = [result recognition];

    if (v3)
    {
      v4 = [v3 af_speechPhrases];

      if (v4)
      {
        v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v6 = specialized _arrayConditionalCast<A, B>(_:)(v5);

        if (v6)
        {
          v7 = [v0 speechRecognizedCommand];
          if (v7)
          {
            v8 = v7;
            v9 = [v7 recognition];

            if (v9)
            {
              v10 = [v9 af_speechUtterances];

              if (v10)
              {
                type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechUtterance, 0x1E698D250);
                static Array._unconditionallyBridgeFromObjectiveC(_:)();

                v11 = [v0 speechRecognizedCommand];
                if (v11)
                {
                  v12 = v11;
                  v13 = [v11 processedAudioDuration];

                  if (v13)
                  {
                    [v13 doubleValue];
                    v15 = v14;

                    v16 = [v0 speechRecognizedCommand];
                    if (v16)
                    {
                      v17 = v16;
                      v18 = [v16 audioAnalytics];

                      if (v18)
                      {
                        v19 = [v18 af_audioAnalytics];

                        if (v19)
                        {
                          v20 = objc_allocWithZone(MEMORY[0x1E698D238]);
                          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechPhrase, 0x1E698D230);
                          isa = Array._bridgeToObjectiveC()().super.isa;

                          v22 = Array._bridgeToObjectiveC()().super.isa;

                          v23 = [v20 initWithPhrases:isa utterances:v22 processedAudioDuration:v15];

                          v24 = [objc_allocWithZone(MEMORY[0x1E698D228]) initWithRecognition:v23 rawRecognition:v23 audioAnalytics:v19 isFinal:1 utteranceStart:0.0];
                          return v24;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t static SiriKitMetricsUtils.emitSessionStarted(input:eventSender:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return specialized static SiriKitMetricsUtils.emitSessionStarted(input:eventSender:resultCandidateId:)(a1, a2, a3, a4);
}

uint64_t static SiriKitMetricsUtils.emitTopicChanged(input:eventSender:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for SiriKitEventPayload();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static SiriKitMetricsUtils.emitTopicChanged(input:eventSender:), 0, 0);
}

uint64_t static SiriKitMetricsUtils.emitTopicChanged(input:eventSender:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = v3[3];
  v7 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v6);
  type metadata accessor for SiriKitEvent();
  *v1 = specialized static SiriKitMetricsUtils.extractIntentTypeName(input:)();
  v1[1] = v8;
  (*(v2 + 104))(v1, *MEMORY[0x1E69CFBC8], v4);
  v9 = SiriKitEvent.__allocating_init(_:builder:)();
  v0[7] = v9;
  v10 = *(MEMORY[0x1E69CFC60] + 4);
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = static SiriKitMetricsUtils.emitTopicChanged(input:eventSender:);

  return MEMORY[0x1EEE39338](v9, v6, v7);
}

{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t static SiriKitMetricsUtils.emitConversationCommitted(eventSender:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for SiriKitEventPayload();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static SiriKitMetricsUtils.emitConversationCommitted(eventSender:resultCandidateId:), 0, 0);
}

uint64_t static SiriKitMetricsUtils.emitConversationCommitted(eventSender:resultCandidateId:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v7);
  type metadata accessor for SiriKitEvent();
  *v1 = v6;
  v1[1] = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E69CFC40], v3);

  v9 = SiriKitEvent.__allocating_init(_:builder:)();
  v0[8] = v9;
  v10 = *(MEMORY[0x1E69CFC60] + 4);
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = static SiriKitMetricsUtils.emitConversationCommitted(eventSender:resultCandidateId:);

  return MEMORY[0x1EEE39338](v9, v7, v8);
}

{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v6);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechPhrase, 0x1E698D230);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = *(v7 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of Any(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19NSExtensionProtocol_pMd, &_s14SiriKitRuntime19NSExtensionProtocol_pMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      outlined init with take of NSExtensionProtocol(v8, v11);
      outlined init with take of NSExtensionProtocol(v11, v8);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      outlined init with take of NSExtensionProtocol(v8, v3 + 40 * v6 + 32);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    return 0;
  }

  return v3;
}

uint64_t static SiriKitMetricsUtils.emitConversationWillContinueInRemoteProcess(eventSender:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for SiriKitEventPayload();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static SiriKitMetricsUtils.emitConversationWillContinueInRemoteProcess(eventSender:), 0, 0);
}

uint64_t static SiriKitMetricsUtils.emitConversationWillContinueInRemoteProcess(eventSender:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  type metadata accessor for SiriKitEvent();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CFC58], v4);
  v7 = SiriKitEvent.__allocating_init(_:builder:)();
  v0[6] = v7;
  v8 = *(MEMORY[0x1E69CFC60] + 4);
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = static SiriKitMetricsUtils.emitConversationWillContinueInRemoteProcess(eventSender:);

  return MEMORY[0x1EEE39338](v7, v5, v6);
}

{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t StringProtocol.endIndex<A>(of:options:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for Locale();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  StringProtocol.range<A>(of:options:range:locale:)();
  v6 = v5;
  v8 = v7;
  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if (v8)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t StringProtocol.index<A>(of:options:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for Locale();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = StringProtocol.range<A>(of:options:range:locale:)();
  v7 = v6;
  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if (v7)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t SiriKitRequestEvent.appId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SiriKitRequestEvent.appId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SiriKitRequestEvent.appDisplayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SiriKitRequestEvent.appDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SiriKitRequestEvent.appVersion.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SiriKitRequestEvent.appVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SiriKitRequestEvent.eventReliabilityCode.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SiriKitRequestEvent.eventReliabilityCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SiriKitRequestEvent.intentName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t SiriKitRequestEvent.intentName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

double SiriKitRequestEvent.init(intentName:errorCode:app:eventReliabilityCode:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a5;
  v56 = a3;
  v53 = a1;
  v11 = type metadata accessor for SiriKitReliabilityCodes();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v12[13];
  v44 = *MEMORY[0x1E69CFCC0];
  v43 = v17;
  v17(v16, v14);
  SiriKitReliabilityCodes.rawValue.getter();
  v54 = v18;
  v45 = v12[1];
  v45(v16, v11);
  v19 = type metadata accessor for AppInformationResolver();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();

  v55 = a4;
  AppInformationResolver.init(app:)();
  v22 = dispatch thunk of AppInformationResolver.resolveAppName.getter();
  v50 = v23;
  v51 = v22;
  v24 = dispatch thunk of AppInformationResolver.resolveAppBundleId.getter();
  v48 = v25;
  v49 = v24;
  v26 = a6;
  v47 = dispatch thunk of AppInformationResolver.resolveAppVersion.getter();
  v28 = v27;
  v29 = specialized static SiriKitMetricsUtils.formulateIntentTypeName(intentTypeName:)(v53, a2);
  v52 = v30;
  v53 = v29;

  if (v26)
  {

    v31 = v46;
  }

  else
  {
    v43(v16, v44, v11);
    v31 = SiriKitReliabilityCodes.rawValue.getter();
    v26 = v32;

    v45(v16, v11);
  }

  v33 = 0xEE00656C62616369;
  if (v28)
  {
    v34 = v28;
  }

  else
  {
    v34 = 0xEE00656C62616369;
  }

  v35 = 0x6C7070615F746F6ELL;
  v36 = v47;
  v37 = v48;
  if (!v28)
  {
    v36 = 0x6C7070615F746F6ELL;
  }

  if (!v48)
  {
    v37 = 0xEE00656C62616369;
  }

  v38 = v49;
  if (!v48)
  {
    v38 = 0x6C7070615F746F6ELL;
  }

  *&v58 = v38;
  *(&v58 + 1) = v37;
  if (v50)
  {
    v33 = v50;
    v35 = v51;
  }

  *&v59 = v35;
  *(&v59 + 1) = v33;
  *&v60 = v36;
  *(&v60 + 1) = v34;
  *&v61 = v31;
  *(&v61 + 1) = v26;
  *&v62 = v56;
  *(&v62 + 1) = v53;
  v63 = v52;
  v64[0] = v38;
  v64[1] = v37;
  v64[2] = v35;
  v64[3] = v33;
  v64[4] = v36;
  v64[5] = v34;
  v64[6] = v31;
  v64[7] = v26;
  v64[8] = v56;
  v64[9] = v53;
  v64[10] = v52;
  outlined init with copy of SiriKitRequestEvent(&v58, &v57);
  outlined destroy of SiriKitRequestEvent(v64);
  v39 = v61;
  v40 = v62;
  *(a7 + 32) = v60;
  *(a7 + 48) = v39;
  *(a7 + 64) = v40;
  *(a7 + 80) = v63;
  result = *&v58;
  v42 = v59;
  *a7 = v58;
  *(a7 + 16) = v42;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriKitRequestEvent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SiriKitRequestEvent.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriKitRequestEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriKitRequestEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double SiriKitRequestEvent.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized SiriKitRequestEvent.init(from:)(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

double protocol witness for Decodable.init(from:) in conformance SiriKitRequestEvent@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized SiriKitRequestEvent.init(from:)(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t specialized SiriKitRequestEvent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C70736944707061 && a2 == 0xEE00656D614E7961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DCA7B940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *specialized SiriKitRequestEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14SiriKitRuntime0dE12RequestEventV10CodingKeys33_DF7F56B143B9EF9A0CA1FEB064988665LLOGMd, &_ss22KeyedDecodingContainerVy14SiriKitRuntime0dE12RequestEventV10CodingKeys33_DF7F56B143B9EF9A0CA1FEB064988665LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  v10 = type metadata accessor for SiriKitReliabilityCodes();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v15, *MEMORY[0x1E69CFCC0], v10, v13);
  SiriKitReliabilityCodes.rawValue.getter();
  v44 = v16;
  (*(v11 + 8))(v15, v10);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v18 = v6;
    v43 = a2;
    LOBYTE(v51[0]) = 0;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v20;
    LOBYTE(v51[0]) = 1;
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v23;
    v41 = v22;
    LOBYTE(v51[0]) = 2;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v42 = v26;
    v39 = v25;
    LOBYTE(v51[0]) = 3;
    v40 = 0;
    *&v38 = KeyedDecodingContainer.decode(_:forKey:)();
    *(&v38 + 1) = v27;

    LOBYTE(v51[0]) = 4;
    v44 = KeyedDecodingContainer.decode(_:forKey:)();
    v56 = 5;
    v37 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v28;
    (*(v18 + 8))(v9, v5);
    *&v45 = v19;
    *(&v45 + 1) = v21;
    *&v46 = v41;
    *(&v46 + 1) = v24;
    *&v47 = v39;
    v30 = v42;
    *(&v47 + 1) = v42;
    v48 = v38;
    v31 = v44;
    *&v49 = v44;
    v32 = v37;
    *(&v49 + 1) = v37;
    v50 = v29;
    outlined init with copy of SiriKitRequestEvent(&v45, v51);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v51[0] = v19;
    v51[1] = v21;
    v51[2] = v41;
    v51[3] = v24;
    v51[4] = v39;
    v51[5] = v30;
    v52 = v38;
    v53 = v31;
    v54 = v32;
    v55 = v29;
    result = outlined destroy of SiriKitRequestEvent(v51);
    v34 = v48;
    v35 = v43;
    *(v43 + 32) = v47;
    *(v35 + 48) = v34;
    *(v35 + 64) = v49;
    *(v35 + 80) = v50;
    v36 = v46;
    *v35 = v45;
    *(v35 + 16) = v36;
  }

  return result;
}

void *assignWithCopy for SiriKitRequestEvent(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  v5 = a1[3];
  a1[3] = a2[3];

  a1[4] = a2[4];
  v6 = a1[5];
  a1[5] = a2[5];

  a1[6] = a2[6];
  v7 = a1[7];
  a1[7] = a2[7];

  a1[8] = a2[8];
  a1[9] = a2[9];
  v8 = a2[10];
  v9 = a1[10];
  a1[10] = v8;

  return a1;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for SiriKitRequestEvent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 24);
  v7 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  v8 = *(a2 + 40);
  v9 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;

  v10 = *(a2 + 56);
  v11 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v10;

  *(a1 + 64) = *(a2 + 64);
  v12 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t getEnumTagSinglePayload for SiriKitRequestEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for SiriKitRequestEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static Log.begin(_:enableTelemetry:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  if (a4)
  {
    return os_signpost(_:dso:log:name:signpostID:_:_:)();
  }

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t *Log.executor.unsafeMutableAddressor()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  return &static Log.executor;
}

uint64_t OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 96) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:), 0, 0);
}

uint64_t OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  v4 = *(v2 + 48);
  *(v2 + 72) = OSSignposter.beginIntervalTelemetryEnabled(_:id:)(*(v2 + 24), a2, *(v2 + 96), *(v2 + 40));
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v2;
  v6[1] = OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:);
  v7 = *(v2 + 56);
  v8 = *(v2 + 16);

  return v10(v8);
}

uint64_t OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:)()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:);
  }

  else
  {
    v3 = OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 72);
  $defer #1 <A>() in OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(*(v0 + 64), *(v0 + 24), *(v0 + 32), *(v0 + 96));

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 72);
  $defer #1 <A>() in OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(*(v0 + 64), *(v0 + 24), *(v0 + 32), *(v0 + 96));

  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2();
}

uint64_t Logger.instrumentation.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 128) = a4;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;
  v9 = type metadata accessor for OSSignpostID();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](OSSignposter.withIntervalSignpostAsync<A>(_:id:around:), 0, 0);
}

uint64_t OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)()
{
  v1 = *(v0 + 72);
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if (result)
  {
    v5 = *(v0 + 32);
    if ((*(v0 + 128) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v0 + 48);
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_1DC659000, v2, v3, v8, v5, "", v7, 2u);
        MEMORY[0x1E12A2F50](v7, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v9 = *(v0 + 56);
  (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 48), *(v0 + 80));
  v10 = type metadata accessor for OSSignpostIntervalState();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 104) = OSSignpostIntervalState.init(id:isOpen:)();
  v17 = (v9 + *v9);
  v13 = v9[1];
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  v14[1] = OSSignposter.withIntervalSignpostAsync<A>(_:id:around:);
  v15 = *(v0 + 64);
  v16 = *(v0 + 24);

  return v17(v16);
}

{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = OSSignposter.withIntervalSignpostAsync<A>(_:id:around:);
  }

  else
  {
    v3 = OSSignposter.withIntervalSignpostAsync<A>(_:id:around:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  $defer #1 <A>() in OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(*(v0 + 72), *(v0 + 32), *(v0 + 40), *(v0 + 128));

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  $defer #1 <A>() in OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(*(v0 + 72), *(v0 + 32), *(v0 + 40), *(v0 + 128));

  v3 = *(v0 + 8);
  v4 = *(v0 + 120);

  return v3();
}

uint64_t static Log.generateSignpostID()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v0 = static Log.executor;

  return OSSignpostID.init(log:)();
}

uint64_t static Log.begin(_:_:enableTelemetry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  static os_signpost_type_t.begin.getter();
  if (a5)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    return os_signpost(_:dso:log:name:signpostID:_:_:)();
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    return os_signpost(_:dso:log:name:signpostID:)();
  }
}

void static Log.logAFAnalytics(eventType:eventContext:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedAnalytics];
  if (v4)
  {
    v5 = v4;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(a2);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 logEventWithType:a1 context:isa];
  }
}

uint64_t static Log.event(_:)()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t static Logger.begin(_:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v0 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t Logger.event(_:)()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t one-time initialization function for executor(uint64_t a1)
{
  return one-time initialization function for executor(a1, static Logger.executor, &one-time initialization token for executor, &static Log.executor);
}

{
  return one-time initialization function for executor(a1, 0x4574694B69726953, 0xEF726F7475636578, &static Log.executor);
}

uint64_t one-time initialization function for ace(uint64_t a1)
{
  return one-time initialization function for executor(a1, static Logger.ace, &one-time initialization token for ace, &static Log.ace);
}

{
  return one-time initialization function for executor(a1, 0x4174694B69726953, 0xEA00000000006563, &static Log.ace);
}

uint64_t *Log.ace.unsafeMutableAddressor()
{
  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  return &static Log.ace;
}

uint64_t *Log.instrumentation.unsafeMutableAddressor()
{
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  return &static Log.instrumentation;
}

uint64_t one-time initialization function for executor(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return Logger.init(_:)();
}

uint64_t *Log.conversationBridge.unsafeMutableAddressor()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  return &static Log.conversationBridge;
}

uint64_t one-time initialization function for insightRequestSummaryLogger()
{
  v0 = type metadata accessor for InsightRequestSummaryLogger();
  __swift_allocate_value_buffer(v0, static Logger.insightRequestSummaryLogger);
  __swift_project_value_buffer(v0, static Logger.insightRequestSummaryLogger);
  type metadata accessor for OS_os_log();
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t static Logger.insightRequestSummaryLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for InsightRequestSummaryLogger();
  v3 = __swift_project_value_buffer(v2, static Logger.insightRequestSummaryLogger);

  return outlined init with copy of InsightRequestSummaryLogger(v3, a1);
}

uint64_t Logger.makeSignpostID()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v0 = static Log.executor;

  return OSSignpostID.init(log:)();
}

uint64_t static Log.end(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t one-time initialization function for executor()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v5, static Signposter.executor);
  __swift_project_value_buffer(v5, static Signposter.executor);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, static Logger.executor);
  (*(v1 + 16))(v4, v6, v0);
  return OSSignposter.init(logger:)();
}

uint64_t static Logger.executor.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

void OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:)(const char *a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((a1 & 0xFFFFF800) == 0xD800)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (a1 >> 16 > 0x10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = &v11;
LABEL_8:
  v10 = swift_slowAlloc();
  *v10 = 0;
  closure #1 in OSSignposter.withIntervalSignpost<A>(_:id:_:around:)(v10, 2u, v5, a4, v9, "enableTelemetry=YES", a5);
  if (!v6)
  {
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }
}

uint64_t one-time initialization function for executor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

uint64_t one-time initialization function for instrumentation()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Log.instrumentation = result;
  return result;
}

uint64_t one-time initialization function for conversationBridge()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Log.conversationBridge = result;
  return result;
}

uint64_t (*static Log.begin<A>(with:andWrap:)(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(uint64_t a1), uint64_t (*a5)(uint64_t a1), uint64_t a6))(uint64_t a1)
{
  v32 = a2;
  v33 = a6;
  v31 = a3;
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = static Log.executor;
  if (OS_os_log.signpostsEnabled.getter())
  {
    v17 = v16;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    v18 = a1;
    v19 = v32;
    v20 = v31;
    os_signpost(_:dso:log:name:signpostID:)();
    v29 = a4;
    v30 = a5;
    v21 = v20;
    v22 = *(v10 + 32);
    v22(v12, v15, v9);
    v23 = (*(v10 + 80) + 41) & ~*(v10 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v33;
    *(v24 + 24) = v18;
    *(v24 + 32) = v19;
    *(v24 + 40) = v21;
    v25 = v30;
    v22((v24 + v23), v12, v9);
    v26 = (v24 + ((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = v29;
    v26[1] = v25;
    a4 = partial apply for closure #1 in static Log.begin<A>(with:andWrap:);
  }

  return a4;
}

uint64_t closure #1 in static Log.begin<A>(with:andWrap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.executor);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = StaticString.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1DC659000, v9, v10, "Signposted Completion called %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  static os_signpost_type_t.end.getter();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:)();
  return a6(a1);
}

uint64_t (*static Log.logAFAnalytics<A>(startEvent:endEvent:andWrap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.executor);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = a1;
    *(v13 + 12) = 2048;
    *(v13 + 14) = a2;
    _os_log_impl(&dword_1DC659000, v11, v12, "AFAnalytics log start : AFAnalyticsEventType %ld - %ld", v13, 0x16u);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of static Log.logAFAnalytics<A>(startEvent:endEvent:andWrap:));
  outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F58285F8, &_sSS_SStMd, &_sSS_SStMR);
  v15 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v14);
  v16 = [objc_opt_self() sharedAnalytics];
  if (v16)
  {
    v17 = v16;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v15);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v17 logEventWithType:a1 context:isa];
  }

  else
  {
  }

  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = v14;
  v19[6] = a3;
  v19[7] = a4;

  return partial apply for closure #1 in static Log.logAFAnalytics<A>(startEvent:endEvent:andWrap:);
}

uint64_t closure #1 in static Log.logAFAnalytics<A>(startEvent:endEvent:andWrap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.executor);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = a2;
    *(v13 + 12) = 2048;
    *(v13 + 14) = a3;
    _os_log_impl(&dword_1DC659000, v11, v12, "AFAnalytics log end : AFAnalyticsEventType %ld - %ld", v13, 0x16u);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  v14 = specialized _dictionaryUpCast<A, B, C, D>(_:)(a4);
  v15 = [objc_opt_self() sharedAnalytics];
  if (v15)
  {
    v16 = v15;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v14);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v16 logEventWithType:a3 context:isa];
  }

  else
  {
  }

  return a5(a1);
}

void closure #1 in OSSignposter.withIntervalSignpost<A>(_:id:_:around:)(uint8_t *a1, uint32_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, void (*a7)(void))
{
  v11 = OSSignposter.logHandle.getter();
  v12 = static os_signpost_type_t.begin.getter();
  v13 = OSSignpostID.rawValue.getter();
  v16 = a1;
  _os_signpost_emit_with_name_impl(&dword_1DC659000, v11, v12, v13, a5, a6, a1, a2);
  a7();
  if (!v18)
  {
    v14 = static os_signpost_type_t.end.getter();
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1DC659000, v11, v14, v15, a5, a6, v16, a2);
  }
}

void specialized Logger.debugF(_:_:_:_:)(uint64_t (*a1)(uint64_t))
{
  v2 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v2))
  {
    v15 = a1;
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v17 = v4;
    *v3 = 136315650;
    v5 = StaticString.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v17);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    v8 = StaticString.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v17);

    *(v3 + 14) = v10;
    *(v3 + 22) = 2080;
    v12 = v15(v11);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v3 + 24) = v14;
    _os_log_impl(&dword_1DC659000, log, v2, "%s:%s: %s", v3, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v4, -1, -1);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }
}

uint64_t specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static Logger.executor);
  v19 = *(v17 - 8);
  (*(v19 + 16))(v16, v18, v17);
  (*(v19 + 56))(v16, 0, 1, v17);
  outlined init with copy of Logger?(v16, v13);
  if ((*(v19 + 48))(v13, 1, v17) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    v35 = v21;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = a6;
      v23 = v22;
      v33 = swift_slowAlloc();
      v38 = v33;
      *v23 = 136315650;
      v24 = StaticString.description.getter();
      v34 = a4;
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v38);
      v32 = v20;
      v27 = v26;

      *(v23 + 4) = v27;
      *(v23 + 12) = 2048;
      *(v23 + 14) = v36;
      *(v23 + 22) = 2080;
      *(v23 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v38);
      v28 = v32;
      _os_log_impl(&dword_1DC659000, v32, v35, "FatalError at %s:%lu - %s", v23, 0x20u);
      v29 = v33;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v29, -1, -1);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    else
    {
    }

    (*(v19 + 8))(v13, v17);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static Log.begin<A>(with:andWrap:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for OSSignpostID() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + 40);

  return closure #1 in static Log.begin<A>(with:andWrap:)(a1, v6, v7, v11, v1 + v5, v9);
}

uint64_t partial apply for closure #1 in static Log.logAFAnalytics<A>(startEvent:endEvent:andWrap:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 56);
  return closure #1 in static Log.logAFAnalytics<A>(startEvent:endEvent:andWrap:)(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

void specialized Logger.debugF(_:_:_:_:)()
{
  v0 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v11 = v2;
    *v1 = 136315650;
    v3 = StaticString.description.getter();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, &v11);

    *(v1 + 4) = v5;
    *(v1 + 12) = 2080;
    v6 = StaticString.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v1 + 14) = v8;
    *(v1 + 22) = 2080;
    _StringGuts.grow(_:)(33);
    MEMORY[0x1E12A1580](0xD00000000000001FLL, 0x80000001DCA899A0);
    _print_unlocked<A, B>(_:_:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v11);

    *(v1 + 24) = v9;
    _os_log_impl(&dword_1DC659000, log, v0, "%s:%s: %s", v1, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v2, -1, -1);
    MEMORY[0x1E12A2F50](v1, -1, -1);
  }

  else
  {
  }
}

{
  v0 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v10 = v2;
    *v1 = 136315650;
    v3 = StaticString.description.getter();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, &v10);

    *(v1 + 4) = v5;
    *(v1 + 12) = 2080;
    v6 = StaticString.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v1 + 14) = v8;
    *(v1 + 22) = 2080;
    *(v1 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000001DCA89900, &v10);
    _os_log_impl(&dword_1DC659000, log, v0, "%s:%s: %s", v1, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v2, -1, -1);
    MEMORY[0x1E12A2F50](v1, -1, -1);
  }
}

{
  v0 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v10 = v2;
    *v1 = 136315650;
    v3 = StaticString.description.getter();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, &v10);

    *(v1 + 4) = v5;
    *(v1 + 12) = 2080;
    v6 = StaticString.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v1 + 14) = v8;
    *(v1 + 22) = 2080;
    *(v1 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000049, 0x80000001DCA7FB70, &v10);
    _os_log_impl(&dword_1DC659000, log, v0, "%s:%s: %s", v1, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v2, -1, -1);
    MEMORY[0x1E12A2F50](v1, -1, -1);
  }
}

{
  v0 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v10 = v2;
    *v1 = 136315650;
    v3 = StaticString.description.getter();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, &v10);

    *(v1 + 4) = v5;
    *(v1 + 12) = 2080;
    v6 = StaticString.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v1 + 14) = v8;
    *(v1 + 22) = 2080;
    *(v1 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000044, 0x80000001DCA89920, &v10);
    _os_log_impl(&dword_1DC659000, log, v0, "%s:%s: %s", v1, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v2, -1, -1);
    MEMORY[0x1E12A2F50](v1, -1, -1);
  }
}

{
  v0 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v10 = v2;
    *v1 = 136315650;
    v3 = StaticString.description.getter();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, &v10);

    *(v1 + 4) = v5;
    *(v1 + 12) = 2080;
    v6 = StaticString.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v1 + 14) = v8;
    *(v1 + 22) = 2080;
    *(v1 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001DCA89970, &v10);
    _os_log_impl(&dword_1DC659000, log, v0, "%s:%s: %s", v1, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v2, -1, -1);
    MEMORY[0x1E12A2F50](v1, -1, -1);
  }
}

{
  v0 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v10 = v2;
    *v1 = 136315650;
    v3 = StaticString.description.getter();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, &v10);

    *(v1 + 4) = v5;
    *(v1 + 12) = 2080;
    v6 = StaticString.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v1 + 14) = v8;
    *(v1 + 22) = 2080;
    *(v1 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000001DCA898C0, &v10);
    _os_log_impl(&dword_1DC659000, log, v0, "%s:%s: %s", v1, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v2, -1, -1);
    MEMORY[0x1E12A2F50](v1, -1, -1);
  }
}

{
  v0 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v12 = v2;
    *v1 = 136315650;
    v3 = StaticString.description.getter();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, &v12);

    *(v1 + 4) = v5;
    *(v1 + 12) = 2080;
    v6 = StaticString.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v12);

    *(v1 + 14) = v8;
    *(v1 + 22) = 2080;
    _StringGuts.grow(_:)(70);
    MEMORY[0x1E12A1580](0xD000000000000044, 0x80000001DCA897C0);
    v9 = CNVSchemaCNVExecutionOverrideDecision.description.getter();
    MEMORY[0x1E12A1580](v9);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v12);

    *(v1 + 24) = v10;
    _os_log_impl(&dword_1DC659000, log, v0, "%s:%s: %s", v1, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v2, -1, -1);
    MEMORY[0x1E12A2F50](v1, -1, -1);
  }
}

{
  v0 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v10 = v2;
    *v1 = 136315650;
    v3 = StaticString.description.getter();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, &v10);

    *(v1 + 4) = v5;
    *(v1 + 12) = 2080;
    v6 = StaticString.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v1 + 14) = v8;
    *(v1 + 22) = 2080;
    *(v1 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x80000001DCA89790, &v10);
    _os_log_impl(&dword_1DC659000, log, v0, "%s:%s: %s", v1, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v2, -1, -1);
    MEMORY[0x1E12A2F50](v1, -1, -1);
  }
}

{
  v0 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v10 = v2;
    *v1 = 136315650;
    v3 = StaticString.description.getter();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, &v10);

    *(v1 + 4) = v5;
    *(v1 + 12) = 2080;
    v6 = StaticString.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v1 + 14) = v8;
    *(v1 + 22) = 2080;
    *(v1 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x80000001DCA89770, &v10);
    _os_log_impl(&dword_1DC659000, log, v0, "%s:%s: %s", v1, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v2, -1, -1);
    MEMORY[0x1E12A2F50](v1, -1, -1);
  }
}

void specialized Logger.debugF(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v10))
  {
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v11 = 136315650;
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v25);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = StaticString.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v25);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2080;
    _StringGuts.grow(_:)(164);
    MEMORY[0x1E12A1580](0xD00000000000005CLL, 0x80000001DCA89810);
    if (*(a8 + 32))
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (*(a8 + 32))
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    MEMORY[0x1E12A1580](v18, v19);

    MEMORY[0x1E12A1580](0xD00000000000001FLL, 0x80000001DCA89870);
    v23 = *(a9 + OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1E12A1580](0xD000000000000023, 0x80000001DCA89890);
    v24 = *(a9 + OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_decision);
    _print_unlocked<A, B>(_:_:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v25);

    *(v11 + 24) = v20;
    _os_log_impl(&dword_1DC659000, log, v10, "%s:%s: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v21, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  else
  {
  }
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SiriKitRuntimeState.__allocating_init(customEventSender:rrClient:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SiriKitRuntimeState.init(customEventSender:rrClient:)(a1, a2);
  return v4;
}

Swift::Void __swiftcall SiriKitRuntimeState.reset()()
{
  SiriKitRuntimeState.invalidateCurrentTurn()();
  SiriKitRuntimeState.taskService.getter();
  TaskService.onTurnInvalidated()();
}

uint64_t SiriKitRuntimeState.makeNewTurn(requestContextData:executionRequestId:rootRequestId:sessionId:sessionConfiguration:invocationState:conversationLoggingId:bridge:scopedRRData:invokedByPeerToPeerEORR:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t **a9@<X8>, uint64_t a10, _BYTE *a11, uint64_t a12, unint64_t a13, unsigned __int8 a14)
{
  v52 = a8;
  v58 = a5;
  v64 = a2;
  v65 = a4;
  v62 = a3;
  v59 = a1;
  v66 = a9;
  v63 = a14;
  v60 = a12;
  v61 = a13;
  v57 = a11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v51 - v19;
  v55 = &v51 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v51 - v26;
  v56 = &v51 - v26;
  SiriKitRuntimeState.invalidateCurrentTurn()();
  v28 = v14;
  SiriKitRuntimeState.taskService.getter();
  TaskService.onNewTurn()();

  outlined init with copy of ReferenceResolutionClientProtocol?(a6, v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a7, v20, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v54 = v14;
  v29 = *(v14 + 136);
  outlined init with copy of ReferenceResolutionClientProtocol?(a10, v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol(v52, v69);
  outlined init with copy of ReferenceResolutionClientProtocol?(v28 + 56, v68, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol(v28 + 96, v67);
  v30 = type metadata accessor for ConversationTurnStateImpl();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v52 = swift_allocObject();
  v33 = v70;
  v51 = v71;
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
  v35 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v51 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v39 + 16))(v38, v36);
  v40 = v58;

  v41 = v29;

  v42 = v57;
  swift_unknownObjectRetain();
  v43 = v59;
  v44 = v62;

  v45 = v60;
  v46 = v61;
  outlined copy of Data?(v60, v61);
  v47 = specialized ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)(v42, v64, v44, v65, v40, v56, v55, v41, v53, v38, v68, v43, v63, v67, v45, v46, v52, v33, v51);
  outlined consume of Data?(v45, v46);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  ConversationTurnStateImpl.setSiriKitFlowGlobals()();
  v70 = v30;
  v71 = &protocol witness table for ConversationTurnStateImpl;
  v69[0] = v47;
  v48 = v54;
  swift_beginAccess();

  outlined assign with take of ConversationTurnState?(v69, v48 + 16);
  result = swift_endAccess();
  v50 = v66;
  v66[3] = v30;
  v50[4] = &protocol witness table for ConversationTurnStateImpl;
  *v50 = v47;
  return result;
}

uint64_t SiriKitRuntimeState.init(customEventSender:rrClient:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 136) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v2 + 56, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a2, &v9, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  if (v10)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a2, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v9, &v11);
  }

  else
  {
    v6 = type metadata accessor for ReferenceResolutionClient();
    v7 = ReferenceResolutionClient.__allocating_init()();
    v12 = v6;
    v13 = MEMORY[0x1E69D01B0];
    *&v11 = v7;
    outlined destroy of ReferenceResolutionClientProtocol?(a2, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
    if (v10)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v9, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    }
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v11, v3 + 96);
  return v3;
}

uint64_t SiriKitRuntimeState.taskService.setter(uint64_t a1)
{
  v2 = *(v1 + 136);
  *(v1 + 136) = a1;
}

uint64_t (*SiriKitRuntimeState.taskService.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = SiriKitRuntimeState.taskService.getter();
  return SiriKitRuntimeState.taskService.modify;
}

uint64_t SiriKitRuntimeState.taskService.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 136);
  *(v1 + 136) = v2;
}

uint64_t SiriKitRuntimeState.deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v1 = *(v0 + 136);

  return v0;
}

uint64_t SiriKitRuntimeState.__deallocating_deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v1 = *(v0 + 136);

  return swift_deallocClassInstance();
}

BOOL closure #1 in ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked))
  {
    return 1;
  }

  v2 = MKBGetDeviceLockState();
  return v2 != 3 && v2 != 0;
}

uint64_t *specialized ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, char a13, uint64_t *a14, uint64_t a15, uint64_t *a16, uint64_t *a17, uint64_t a18, uint64_t a19)
{
  v145 = a8;
  v177 = a7;
  v178 = a6;
  v179 = a16;
  v162 = a15;
  v149 = a12;
  v176 = a9;
  v155 = *a17;
  v159 = type metadata accessor for DeviceRestrictions();
  v158 = *(v159 - 8);
  v24 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v157 = &v141[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v156 = &v141[-v27];
  v161 = type metadata accessor for Restrictions();
  v160 = *(v161 - 8);
  v28 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v175 = &v141[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v174 = &v141[-v32];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v173 = &v141[-v35];
  v172 = type metadata accessor for SiriVoiceGender();
  v171 = *(v172 - 8);
  v36 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v185 = &v141[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v170 = type metadata accessor for Locale();
  v169 = *(v170 - 8);
  v38 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v184 = &v141[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = type metadata accessor for MultiUserState();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v183 = &v141[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v168 = type metadata accessor for DeviceIdiom();
  v167 = *(v168 - 8);
  v43 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v182 = &v141[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v166 = type metadata accessor for InteractionType();
  v165 = *(v166 - 8);
  v45 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v181 = &v141[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v164 = type metadata accessor for InputOrigin();
  v163 = *(v164 - 8);
  v47 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v180 = &v141[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v194[3] = a18;
  v194[4] = a19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v194);
  v144 = *(a18 - 8);
  (*(v144 + 32))(boxed_opaque_existential_0, a10, a18);
  v50 = OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionConfiguration;
  v51 = type metadata accessor for SessionConfiguration();
  (*(*(v51 - 8) + 56))(a17 + v50, 1, 1, v51);
  *(a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_bridge) = a1;
  object = a2;
  a17[2] = a2;
  a17[3] = a3;
  countAndFlagsBits = a4;
  a17[4] = a4;
  a17[5] = a5;
  outlined init with copy of ReferenceResolutionClientProtocol?(v178, a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_beginAccess();
  v153 = a5;

  swift_unknownObjectRetain();
  v150 = a3;

  outlined assign with copy of SessionConfiguration?(v177, a17 + v50);
  swift_endAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v176, a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_conversationLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v52 = type metadata accessor for SharedContextServiceImpl();
  v53 = swift_allocObject();
  *(v53 + 16) = a1;
  v54 = (a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sharedContextService);
  v54[3] = v52;
  v54[4] = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type SharedContextServiceImpl and conformance SharedContextServiceImpl, type metadata accessor for SharedContextServiceImpl);
  *v54 = v53;
  outlined init with copy of ReferenceResolutionClientProtocol(v194, a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_invocationState);
  v55 = v149;
  *(a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_requestContextData) = v149;
  v56 = (a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_scopedRRData);
  v57 = v162;
  v58 = v179;
  *v56 = v162;
  v56[1] = v58;
  v59 = *(a19 + 136);
  v154 = a1;
  swift_unknownObjectRetain();
  v149 = v55;
  outlined copy of Data?(v57, v58);
  v60 = v59(a18, a19);
  if (!v60)
  {
    goto LABEL_5;
  }

  v61 = v60;
  v62 = [v60 runLocation];

  if (!v62)
  {
    v60 = 0;
LABEL_5:
    v65 = 0;
    goto LABEL_6;
  }

  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;

  v60 = v63;
LABEL_6:
  v179 = a14;
  LODWORD(v148) = specialized static RunLocation.convert(aceRunLocation:)(v60, v65);

  v66 = v59(a18, a19);
  if (v66 && (v67 = v66, v68 = [v66 invocationDeviceAssistantId], v67, v68))
  {
    v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v146 = v69;
  }

  else
  {
    v147 = 0;
    v146 = 0;
  }

  v162 = a11;
  v70 = v59(a18, a19);
  if (v70 && (v71 = v70, v72 = [v70 executionDeviceAssistantId], v71, v72))
  {
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;
  }

  else
  {
    v73 = 0;
    v75 = 0;
  }

  outlined init with copy of ReferenceResolutionClientProtocol(v179, &v191);
  v143 = type metadata accessor for AceServiceInvokerImpl();
  v76 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMR);
  v77 = swift_allocObject();
  *(v77 + 20) = 0;
  *(v77 + 16) = 0;
  *(v76 + 152) = v77;
  type metadata accessor for SubmissionTaskRegistry();
  v78 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMR);
  v79 = swift_allocObject();
  *(v79 + 24) = 0;
  *(v79 + 16) = MEMORY[0x1E69E7CD0];
  *(v78 + 16) = v79;
  *(v76 + 160) = v78;
  v80 = swift_allocObject();
  *(v80 + 20) = 0;
  *(v80 + 16) = 0;
  *(v76 + 168) = v80;
  *(v76 + 16) = v154;
  v81 = countAndFlagsBits;
  *(v76 + 48) = v150;
  *(v76 + 56) = v81;
  v82 = object;
  v83 = v149;
  *(v76 + 32) = v149;
  *(v76 + 40) = v82;
  *(v76 + 24) = v148 & 1;
  v84 = v147;
  *(v76 + 64) = v153;
  *(v76 + 72) = v84;
  *(v76 + 80) = v146;
  *(v76 + 88) = v73;
  *(v76 + 96) = v75;
  *(v76 + 104) = a13 & 1;
  outlined init with copy of ReferenceResolutionClientProtocol?(&v191, &v186, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  v85 = v187;
  swift_unknownObjectRetain();
  v153 = v83;
  if (v85)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v191, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v186, &v188);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v186, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    v86 = type metadata accessor for ReferenceResolutionClient();
    v87 = ReferenceResolutionClient.__allocating_init()();
    v189 = v86;
    v190 = MEMORY[0x1E69D01B0];
    *&v188 = v87;
    outlined destroy of ReferenceResolutionClientProtocol?(&v191, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v188, v76 + 112);
  v88 = OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_aceServiceInvoker;
  *(a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_aceServiceInvoker) = v76;
  outlined init with copy of ReferenceResolutionClientProtocol?(v162, &v188, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  if (v189)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v188, &v191);
  }

  else
  {
    v89 = type metadata accessor for InvocationScopedSiriKitEventSender();
    outlined init with copy of ReferenceResolutionClientProtocol(v194, &v191);
    v90 = v192;
    v91 = __swift_mutable_project_boxed_opaque_existential_1(&v191, v192);
    v154 = v141;
    v92 = *(*(v90 - 8) + 64);
    v93 = MEMORY[0x1EEE9AC00](v91);
    v95 = &v141[-((v94 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v96 + 16))(v95, v93);
    *&v186 = v76;
    v97 = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, type metadata accessor for AceServiceInvokerImpl);
    v98 = v145;

    v99 = specialized InvocationScopedSiriKitEventSender.__allocating_init(aceServiceInvoker:taskService:invocationState:)(&v186, v98, v95, v89, v143, a18, v97, a19);
    (*(v144 + 8))(v95, a18);

    __swift_destroy_boxed_opaque_existential_1Tm(&v191);
    v192 = v89;
    v193 = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type InvocationScopedSiriKitEventSender and conformance InvocationScopedSiriKitEventSender, type metadata accessor for InvocationScopedSiriKitEventSender);
    *&v191 = v99;
    if (v189)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v188, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
    }
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v191, a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_eventSender);
  outlined init with copy of ReferenceResolutionClientProtocol(v179, a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_rrClient);
  static AuthenticationStateImpl.from(invocationState:)(v194, &v191);
  v100 = *(*(*(a17 + v88) + 32) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  type metadata accessor for PeerInfoProvider();
  *(swift_initStackObject() + 16) = v100;
  v101 = *(a19 + 24);
  v102 = v100;
  v101(a18, a19);
  (*(a19 + 32))(a18, a19);
  v154 = v102;
  if (v100 && (v103 = [v102 userInterfaceIdiom]) != 0)
  {
    v104 = v103;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    DeviceIdiom.init(aceValue:)();
  }

  else
  {
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    CurrentDevice.localDeviceIdiom.getter();
  }

  (*(a19 + 64))(a18, a19);
  (*(a19 + 120))(a18, a19);
  (*(a19 + 128))(a18, a19);
  LODWORD(v145) = (*(a19 + 80))(a18, a19);
  LODWORD(v144) = (*(a19 + 88))(a18, a19);
  LODWORD(v143) = (*(a19 + 96))(a18, a19);
  v142 = (*(a19 + 112))(a18, a19);
  v105 = swift_allocObject();
  v106 = v153;
  v107 = v155;
  *(v105 + 16) = v153;
  *(v105 + 24) = v107;
  v108 = *(a19 + 72);
  v109 = v106;
  v155 = v108(a18, a19);
  v153 = v110;
  v150 = (*(a19 + 160))(a18, a19);
  v149 = v111;
  (*(a19 + 168))(a18, a19);
  (*(a19 + 176))(a18, a19);
  v112 = PeerInfoProvider.getPeerName()();
  countAndFlagsBits = v112.value._countAndFlagsBits;
  object = v112.value._object;
  v113 = *&v109[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo];
  if (v113)
  {
    v114 = [v113 identifier];
    if (v114)
    {
      v115 = v114;
      v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v147 = v116;
    }

    else
    {
      v148 = 0;
      v147 = 0;
    }
  }

  else
  {
    v148 = 0;
    v147 = 0;
  }

  (*(a19 + 192))(a18, a19);
  outlined init with copy of ReferenceResolutionClientProtocol(&v191, &v188);
  LODWORD(v146) = v109[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen];
  v117 = type metadata accessor for DefaultDeviceState();
  v118 = *(v117 + 48);
  v119 = *(v117 + 52);
  v120 = swift_allocObject();
  v121 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isHomePodGestalt;
  *(v120 + v121) = MGGetSInt32Answer() == 7;
  *(v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isAppleTVGestalt) = 0;
  v122 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPhoneGestalt;
  *(v120 + v122) = MGGetSInt32Answer() == 1;
  v123 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPadGestalt;
  *(v120 + v123) = MGGetSInt32Answer() == 3;
  v124 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPodGestalt;
  *(v120 + v124) = MGGetSInt32Answer() == 2;
  *(v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isXRGestalt) = 0;
  (*(v163 + 16))(v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_inputOrigin, v180, v164);
  (*(v165 + 16))(v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_interactionType, v181, v166);
  (*(v167 + 16))(v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_renderDeviceIdiom, v182, v168);
  outlined init with copy of MultiUserState(v183, v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_multiUserState);
  (*(v169 + 16))(v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriLocale, v184, v170);
  (*(v171 + 16))(v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriVoiceGender, v185, v172);
  *(v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isEyesFree) = v145 & 1;
  *(v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isVoiceTriggerEnabled) = v144 & 1;
  *(v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isTextToSpeechEnabled) = v143 & 1;
  *(v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDirectAction) = v142 & 1;
  v125 = v156;
  Restrictions.deviceRestrictions.getter();
  v126 = v157;
  static DeviceRestrictions.starkMode.getter();
  lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions, MEMORY[0x1E69D3610]);
  v127 = v159;
  LOBYTE(v124) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v128 = *(v158 + 8);
  v128(v126, v127);
  v128(v125, v127);
  v129 = _s14SiriKitRuntime25ConversationTurnStateImpl33_FB63CECFE10715AC1233F5DEB969132DLLC6bridge18executionRequestId04rootoP007sessionP00R13Configuration11taskService019conversationLoggingP0010invocationF017customEventSender18requestContextData23invokedByPeerToPeerEORR8rrClient12scopedRRDataAdA0U6Bridge_p_S2SSg10Foundation4UUIDVSg0A12MessageTypes07SessionS0VSgAA04TaskU0CAwA010InvocationF0_p0aB4Flow0abZ7Sending_pSgAA0O11ContextDataCSbA3_33ReferenceResolutionClientProtocol_pAT4DataVSgtcfcSbyYbcfU_TA_0;
  if (v124)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v105 = 0;
    v129 = getEnumTag for AffinityScore;
  }

  v130 = v129;
  (*(v171 + 8))(v185, v172);
  (*(v169 + 8))(v184, v170);
  outlined destroy of MultiUserState(v183);
  (*(v167 + 8))(v182, v168);
  (*(v165 + 8))(v181, v166);
  (*(v163 + 8))(v180, v164);
  v131 = (v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isLockedWithPasscodeClosure);
  *v131 = v130;
  v131[1] = v105;
  v132 = (v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_sessionHandOffContinuityID);
  v133 = v153;
  *v132 = v155;
  v132[1] = v133;
  v134 = (v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_preferencesLanguageCode);
  v135 = v149;
  *v134 = v150;
  v134[1] = v135;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v173, v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_personalDomainsAuthenticationMode, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v174, v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_bargeInContext, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v136 = (v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_peerName);
  v137 = object;
  *v136 = countAndFlagsBits;
  v136[1] = v137;
  (*(v160 + 32))(v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_restrictedCommands, v175, v161);
  v138 = (v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_endpointId);
  v139 = v147;
  *v138 = v148;
  v138[1] = v139;
  outlined init with take of ReferenceResolutionClientProtocol(&v188, v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_authenticationState);
  *(v120 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDeviceShowingLockScreen) = v146;
  v189 = v117;
  v190 = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type DefaultDeviceState and conformance DefaultDeviceState, type metadata accessor for DefaultDeviceState);

  *&v188 = v120;
  __swift_destroy_boxed_opaque_existential_1Tm(v179);
  outlined destroy of ReferenceResolutionClientProtocol?(v162, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v176, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v177, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v178, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(&v191);
  outlined init with take of ReferenceResolutionClientProtocol(&v188, a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_deviceState);
  __swift_destroy_boxed_opaque_existential_1Tm(v194);
  return a17;
}

void type metadata completion function for ConversationTurnStateImpl()
{
  _s10Foundation4UUIDVSgMaTm_2(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    _s10Foundation4UUIDVSgMaTm_2(319, &lazy cache variable for type metadata for SessionConfiguration?, MEMORY[0x1E69D07A0]);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void _s10Foundation4UUIDVSgMaTm_2(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

SiriKitRuntime::SiriLinkFlowAffinityScorer __swiftcall SiriLinkFlowAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CC80;
  v1 = 0xD000000000000021;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized SiriLinkFlowAffinityScorer.score(input:environment:)()
{
  v158 = type metadata accessor for UsoIdentifier();
  v163 = *(v158 - 8);
  v0 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v162 = &v153 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v173 = &v153 - v3;
  v168 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v170 = *(v168 - 1);
  v4 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v156 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
  v6 = *(*(v169 - 8) + 64);
  MEMORY[0x1EEE9AC00](v169);
  v161 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v160 = &v153 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v155 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v166 = &v153 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v167 = (&v153 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v157 = &v153 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v164 = &v153 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v165 = &v153 - v22;
  v23 = type metadata accessor for Siri_Nlu_External_UserParse();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v159 = &v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v153 - v28;
  v30 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v171 = *(v30 - 8);
  v172 = v30;
  v31 = *(v171 + 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v153 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for USOParse();
  v174 = *(v34 - 8);
  v35 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v153 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Parse();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v153 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v39 + 88))(v42, v38) != *MEMORY[0x1E69D0168])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static Logger.executor);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1DC659000, v72, v73, "SiriLinkAffinityScorer Got unexpected parse", v74, 2u);
      MEMORY[0x1E12A2F50](v74, -1, -1);
    }

    (*(v39 + 8))(v42, v38);
    return 2;
  }

  (*(v39 + 96))(v42, v38);
  v43 = v174;
  (*(v174 + 32))(v37, v42, v34);
  v44 = USOParse.userParse.getter();
  v45 = MEMORY[0x1E129C0F0](v44);
  v46 = *(v24 + 8);
  v46(v29, v23);
  if (!*(v45 + 16))
  {

    goto LABEL_18;
  }

  v47 = v23;
  v48 = v34;
  v50 = v171;
  v49 = v172;
  (*(v171 + 2))(v33, v45 + ((v50[80] + 32) & ~v50[80]), v172);

  v51 = Siri_Nlu_External_UserDialogAct.toUsoTask()();
  (*(v50 + 1))(v33, v49);
  v34 = v48;
  if (!v51)
  {
LABEL_18:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    __swift_project_value_buffer(v76, static Logger.executor);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1DC659000, v77, v78, "SiriLinkAffinityScorer could not extract USO task", v79, 2u);
      MEMORY[0x1E12A2F50](v79, -1, -1);
    }

LABEL_22:

LABEL_23:
    (*(v43 + 1))(v37, v34);
    return 0;
  }

  v52 = v51;
  v54 = UsoTask.baseEntityAsString.getter();
  v55 = v53;
  if (v54 == 0xD000000000000013 && 0x80000001DCA89B70 == v53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v154 = v52;
    v172 = v34;

    v56 = v159;
    USOParse.userParse.getter();
    v171 = Siri_Nlu_External_UserParse.appShortcuts.getter();
    v46(v56, v47);
    v57 = v165;
    v173 = v37;
    USOParse.parserIdentifier.getter();
    v58 = *MEMORY[0x1E69D0970];
    v59 = v170;
    v60 = *(v170 + 104);
    v61 = v164;
    v62 = v168;
    v163 = v170 + 104;
    v162 = v60;
    (v60)(v164, v58, v168);
    v159 = *(v59 + 56);
    (v159)(v61, 0, 1, v62);
    v63 = *(v169 + 48);
    v64 = v160;
    outlined init with copy of ReferenceResolutionClientProtocol?(v57, v160, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v61, v64 + v63, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
    v65 = *(v59 + 48);
    if (v65(v64, 1, v62) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v61, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v57, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      v66 = v65(v64 + v63, 1, v62) == 1;
      v67 = v64;
      v68 = v167;
      v69 = v65;
      if (v66)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v67, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
        v70 = 1;
        goto LABEL_32;
      }
    }

    else
    {
      v81 = v157;
      outlined init with copy of ReferenceResolutionClientProtocol?(v64, v157, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      v69 = v65;
      if (v65(v64 + v63, 1, v62) != 1)
      {
        v82 = v170;
        v83 = v64 + v63;
        v84 = v64;
        v85 = v156;
        (*(v170 + 32))(v156, v83, v62);
        lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
        v70 = dispatch thunk of static Equatable.== infix(_:_:)();
        v86 = *(v82 + 8);
        v86(v85, v168);
        outlined destroy of ReferenceResolutionClientProtocol?(v164, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v165, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
        v86(v157, v168);
        v62 = v168;
        outlined destroy of ReferenceResolutionClientProtocol?(v84, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
        v68 = v167;
LABEL_32:
        USOParse.parserIdentifier.getter();
        v87 = v166;
        (v162)(v166, *MEMORY[0x1E69D0960], v62);
        (v159)(v87, 0, 1, v62);
        v88 = *(v169 + 48);
        v89 = v161;
        outlined init with copy of ReferenceResolutionClientProtocol?(v68, v161, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(v87, v89 + v88, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
        if (v69(v89, 1, v62) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v87, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
          v90 = v69(v89 + v88, 1, v62);
          v43 = v173;
          v91 = v174;
          if (v90 == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v89, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
            v92 = v171;
LABEL_39:
            if (*(v92 + 2))
            {

              if (one-time initialization token for executor != -1)
              {
                swift_once();
              }

              v103 = type metadata accessor for Logger();
              __swift_project_value_buffer(v103, static Logger.executor);
              v104 = Logger.logObject.getter();
              v105 = static os_log_type_t.debug.getter();
              if (!os_log_type_enabled(v104, v105))
              {

                goto LABEL_64;
              }

              v75 = 2;
              v106 = swift_slowAlloc();
              *v106 = 0;
              _os_log_impl(&dword_1DC659000, v104, v105, "SiriLinkAffinityScorer Got auto shortcuts with exact match", v106, 2u);
              MEMORY[0x1E12A2F50](v106, -1, -1);

              (*(v91 + 8))(v43, v172);
              return v75;
            }

LABEL_44:
            if (v70)
            {
            }

            else
            {
              v107 = *(v92 + 2);

              if (!v107)
              {
                if (one-time initialization token for executor != -1)
                {
                  swift_once();
                }

                v117 = type metadata accessor for Logger();
                __swift_project_value_buffer(v117, static Logger.executor);
                v118 = Logger.logObject.getter();
                v119 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v118, v119))
                {
                  v120 = swift_slowAlloc();
                  *v120 = 0;
                  _os_log_impl(&dword_1DC659000, v118, v119, "SiriLinkAffinityScorer Got user shortcut", v120, 2u);
                  MEMORY[0x1E12A2F50](v120, -1, -1);
                }

                else
                {
                }

                (*(v91 + 8))(v43, v172);
                return 4;
              }
            }

            if (one-time initialization token for executor != -1)
            {
              goto LABEL_114;
            }

            goto LABEL_48;
          }
        }

        else
        {
          v93 = v70;
          v94 = v155;
          outlined init with copy of ReferenceResolutionClientProtocol?(v89, v155, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
          v95 = v69(v89 + v88, 1, v62);
          v91 = v174;
          v96 = v62;
          if (v95 != 1)
          {
            v97 = v94;
            v98 = v170;
            v99 = v89 + v88;
            v100 = v156;
            (*(v170 + 32))(v156, v99, v96);
            lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
            v101 = dispatch thunk of static Equatable.== infix(_:_:)();
            v102 = *(v98 + 8);
            v102(v100, v96);
            outlined destroy of ReferenceResolutionClientProtocol?(v166, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
            outlined destroy of ReferenceResolutionClientProtocol?(v167, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
            v102(v97, v96);
            outlined destroy of ReferenceResolutionClientProtocol?(v89, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
            v43 = v173;
            v92 = v171;
            v70 = v93;
            if ((v101 & 1) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_39;
          }

          outlined destroy of ReferenceResolutionClientProtocol?(v166, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v167, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
          (*(v170 + 8))(v94, v62);
          v43 = v173;
          v70 = v93;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v89, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
        v92 = v171;
        goto LABEL_44;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v164, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v165, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      (*(v170 + 8))(v81, v62);
      v67 = v64;
      v68 = v167;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v67, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
    v70 = 0;
    goto LABEL_32;
  }

  if (v54 == 0x535F6E6F6D6D6F63 && v55 == 0xEE00676E69747465)
  {

    goto LABEL_52;
  }

  v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v112 & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v121 = type metadata accessor for Logger();
    __swift_project_value_buffer(v121, static Logger.executor);
    v77 = Logger.logObject.getter();
    v122 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v77, v122))
    {

      goto LABEL_23;
    }

    v123 = swift_slowAlloc();
    *v123 = 0;
    _os_log_impl(&dword_1DC659000, v77, v122, "SiriLinkAffinityScorer Unsupported base entity", v123, 2u);
    MEMORY[0x1E12A2F50](v123, -1, -1);

    goto LABEL_22;
  }

LABEL_52:

  static UsoTask_CodegenConverter.convert(task:)();

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v113 = type metadata accessor for Logger();
  v91 = __swift_project_value_buffer(v113, static Logger.executor);
  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    *v116 = 0;
    _os_log_impl(&dword_1DC659000, v114, v115, "SiriLinkAffinityScorer Enablement request", v116, 2u);
    MEMORY[0x1E12A2F50](v116, -1, -1);
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v177, v175, &_sypSgMd, &_sypSgMR);
  if (v176)
  {
    type metadata accessor for UsoTask_enable_common_Setting();
    if (swift_dynamicCast())
    {
      goto LABEL_78;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v175, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v177, v175, &_sypSgMd, &_sypSgMR);
  if (v176)
  {
    type metadata accessor for UsoTask_disable_common_Setting();
    if (swift_dynamicCast())
    {
      goto LABEL_78;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v175, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v177, v175, &_sypSgMd, &_sypSgMR);
  if (!v176)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v175, &_sypSgMd, &_sypSgMR);
    goto LABEL_100;
  }

  type metadata accessor for UsoTask_toggle_common_Setting();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_100:
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&dword_1DC659000, v145, v146, "SiriLinkAffinityScorer Unsupported settings request", v147, 2u);
      MEMORY[0x1E12A2F50](v147, -1, -1);
    }

    goto LABEL_103;
  }

LABEL_78:

  dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.reference.getter();

  v124 = v175[0];
  v125 = v158;
  if (!v175[0] || (, v126 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), , !v126))
  {
    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 0;
      _os_log_impl(&dword_1DC659000, v142, v143, "SiriLinkAffinityScorer Could not extract identifiers", v144, 2u);
      MEMORY[0x1E12A2F50](v144, -1, -1);
    }

LABEL_98:

LABEL_103:
    outlined destroy of ReferenceResolutionClientProtocol?(v177, &_sypSgMd, &_sypSgMR);
    goto LABEL_23;
  }

  v165 = v91;
  v154 = v52;
  v172 = *(v126 + 16);
  v166 = v124;
  if (!v172)
  {
    v128 = MEMORY[0x1E69E7CC0];
LABEL_106:

    v148 = *(v128 + 16);

    v142 = Logger.logObject.getter();
    v149 = static os_log_type_t.debug.getter();
    v150 = os_log_type_enabled(v142, v149);
    if (v148)
    {
      if (v150)
      {
        v151 = swift_slowAlloc();
        *v151 = 0;
        _os_log_impl(&dword_1DC659000, v142, v149, "SiriLinkAffinityScorer Got AppShortcuts enablement request", v151, 2u);
        MEMORY[0x1E12A2F50](v151, -1, -1);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v177, &_sypSgMd, &_sypSgMR);
      (*(v43 + 1))(v37, v34);
      return 2;
    }

    if (v150)
    {
      v152 = swift_slowAlloc();
      *v152 = 0;
      _os_log_impl(&dword_1DC659000, v142, v149, "SiriLinkAffinityScorer Settings request isn't for Link", v152, 2u);
      MEMORY[0x1E12A2F50](v152, -1, -1);
    }

    goto LABEL_98;
  }

  v127 = 0;
  v169 = *MEMORY[0x1E69D2490];
  v170 = v163 + 16;
  v167 = (v163 + 8);
  v168 = (v163 + 32);
  v128 = MEMORY[0x1E69E7CC0];
  v171 = v126;
  while (v127 < *(v126 + 16))
  {
    v129 = v34;
    v130 = v43;
    v174 = (*(v163 + 80) + 32) & ~*(v163 + 80);
    v91 = *(v163 + 72);
    (*(v163 + 16))(v173, v126 + v174 + v91 * v127, v125);
    v131 = UsoIdentifier.namespace.getter();
    v133 = v132;
    v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v133)
    {
      if (v131 == v134 && v133 == v135)
      {

LABEL_91:
        v137 = *v168;
        (*v168)(v162, v173, v125);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v175[0] = v128;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v128 + 16) + 1, 1);
          v128 = v175[0];
        }

        v126 = v171;
        v140 = *(v128 + 16);
        v139 = *(v128 + 24);
        if (v140 >= v139 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v139 > 1, v140 + 1, 1);
          v126 = v171;
          v128 = v175[0];
        }

        *(v128 + 16) = v140 + 1;
        v141 = v128 + v174 + v140 * v91;
        v125 = v158;
        v137(v141, v162, v158);
        v43 = v130;
        goto LABEL_84;
      }

      v136 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v136)
      {
        goto LABEL_91;
      }
    }

    else
    {
    }

    (*v167)(v173, v125);
    v43 = v130;
    v126 = v171;
LABEL_84:
    ++v127;
    v34 = v129;
    if (v172 == v127)
    {
      goto LABEL_106;
    }
  }

  __break(1u);
LABEL_114:
  swift_once();
LABEL_48:
  v108 = type metadata accessor for Logger();
  __swift_project_value_buffer(v108, static Logger.executor);
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&dword_1DC659000, v109, v110, "SiriLinkAffinityScorer Got auto shortcuts with SSU match", v111, 2u);
    MEMORY[0x1E12A2F50](v111, -1, -1);

    (*(v91 + 8))(v43, v172);
    return 2;
  }

LABEL_64:

  (*(v91 + 8))(v43, v172);
  return 2;
}

uint64_t SiriSafariAffinityScorer.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t closure #1 in static SiriSuggestionsBrokerProvider.bootStrapSuggestionsBrokerProvider()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v72 - v8;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static Logger.executor);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DC659000, v12, v13, "loading suggestions broker via SKE bridge...", v14, 2u);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  v15 = MEMORY[0x1E12A25B0]();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathComponent(_:isDirectory:)();
  (*(v3 + 40))(v9, v6, v2);
  v16 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  v20 = [v16 initWithURL_];

  if (!v20)
  {
    v20 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v77 = v45;
      *v44 = 136315138;
      swift_beginAccess();
      lazy protocol witness table accessor for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v77);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_1DC659000, v20, v43, "suggestions bundle not found on expected path:%s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1E12A2F50](v45, -1, -1);
      MEMORY[0x1E12A2F50](v44, -1, -1);
    }

    goto LABEL_18;
  }

  if (![v20 principalClass])
  {
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1DC659000, v49, v50, "suggestions bundle principal class not found", v51, 2u);
      MEMORY[0x1E12A2F50](v51, -1, -1);
    }

LABEL_18:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return (*(v3 + 8))(v9, v2);
  }

  v75 = a1;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v74 = v2;
    v26 = v25;
    *&v76[0] = v25;
    *v24 = 136315138;
    v27 = _typeName(_:qualified:)();
    v72 = v11;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v76);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_1DC659000, v22, v23, "found principal class: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v30 = v26;
    v2 = v74;
    MEMORY[0x1E12A2F50](v30, -1, -1);
    MEMORY[0x1E12A2F50](v24, -1, -1);
  }

  v31 = swift_conformsToProtocol2();
  v32 = Logger.logObject.getter();
  if (!v31 || !ObjCClassMetadata)
  {
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v76[0] = v54;
      *v53 = 136315394;
      v55 = _typeName(_:qualified:)();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v76);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A17SuggestionsBroker_pMd, &_s11SiriKitFlow0A17SuggestionsBroker_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A17SuggestionsBroker_pmMd, &_s11SiriKitFlow0A17SuggestionsBroker_pmMR);
      v58 = String.init<A>(describing:)();
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v76);

      *(v53 + 14) = v60;
      _os_log_impl(&dword_1DC659000, v32, v52, "principal class %s does not conform to %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v54, -1, -1);
      MEMORY[0x1E12A2F50](v53, -1, -1);
    }

    v61 = v75;
    *(v75 + 32) = 0;
    *v61 = 0u;
    v61[1] = 0u;
    return (*(v3 + 8))(v9, v2);
  }

  v72 = v20;
  v33 = static os_log_type_t.info.getter();
  v34 = os_log_type_enabled(v32, v33);
  v73 = v3;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v74 = v2;
    v36 = v35;
    v37 = v32;
    v38 = swift_slowAlloc();
    *&v76[0] = v38;
    *v36 = 136315138;
    v39 = _typeName(_:qualified:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v76);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_1DC659000, v37, v33, "successfully instantiated suggestions bundle with principalClass: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1E12A2F50](v38, -1, -1);
    v42 = v36;
    v2 = v74;
    MEMORY[0x1E12A2F50](v42, -1, -1);
  }

  else
  {
  }

  v63 = v75;
  dispatch thunk of static SiriSuggestionsBroker.getInstance()();
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v77 = v67;
    *v66 = 136315138;
    v68 = _typeName(_:qualified:)();
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v77);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_1DC659000, v64, v65, "successfully called getInstance on bridge principalClass: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    MEMORY[0x1E12A2F50](v67, -1, -1);
    MEMORY[0x1E12A2F50](v66, -1, -1);
  }

  v71 = v73;
  outlined init with take of ReferenceResolutionClientProtocol(v76, v63);
  return (*(v71 + 8))(v9, v2);
}

SiriKitRuntime::SiriVideoAffinityScorer __swiftcall SiriVideoAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CE60;
  v1 = 0xD000000000000026;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized SiriVideoAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v5 = (*(v1 + 88))(v4, v0);
  v6 = *MEMORY[0x1E69D0168];
  (*(v1 + 8))(v4, v0);
  if (v5 == v6)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.executor);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v8, v9))
    {
      v11 = 0;
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DC659000, v8, v9, "SiriVideoAffinityScorer returning .unsupported", v10, 2u);
    v11 = 0;
    goto LABEL_10;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.executor);
  v8 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v11 = 2;
  if (os_log_type_enabled(v8, v13))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DC659000, v8, v13, "SiriVideoAffinityScorer not a USO parse, returning .default", v10, 2u);
LABEL_10:
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

LABEL_12:

  return v11;
}

SiriKitRuntime::SocialConversationAffinityScorer __swiftcall SocialConversationAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CCB0;
  v1 = 0xD000000000000033;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized SocialConversationAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for UsoIdentifier();
  v58 = *(v0 - 8);
  v1 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v50[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50[-v5];
  v7 = type metadata accessor for USOParse();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Parse();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v50[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Input.parse.getter();
  if ((*(v13 + 88))(v16, v12) != *MEMORY[0x1E69D0168])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.executor);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DC659000, v29, v30, "SocialConversationAffinityScorer Got unexpected parse", v31, 2u);
      MEMORY[0x1E12A2F50](v31, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
    return 2;
  }

  (*(v13 + 96))(v16, v12);
  (*(v8 + 32))(v11, v16, v7);
  if (!specialized static AffinityScorerUtils.getTask(_:)())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.executor);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v33, v34))
    {

      goto LABEL_33;
    }

    v35 = 2;
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1DC659000, v33, v34, "SocialConversationAffinityScorer Could not extract usoTask from parse", v36, 2u);
    MEMORY[0x1E12A2F50](v36, -1, -1);

    (*(v8 + 8))(v11, v7);
    return v35;
  }

  v17 = UsoTask.arguments.getter();
  if (!*(v17 + 16))
  {
    goto LABEL_26;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(0x746567726174, 0xE600000000000000);
  if ((v19 & 1) == 0)
  {
    goto LABEL_26;
  }

  v20 = *(*(v17 + 56) + 8 * v18);

  if (v20 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_26;
    }
  }

  else if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v20);
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      if (__CocoaSet.count.getter())
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }

    v21 = *(v20 + 32);
  }

  v22 = dispatch thunk of UsoValue.getAsEntity()();

  if (!v22)
  {
LABEL_27:

LABEL_33:
    (*(v8 + 8))(v11, v7);
    return 2;
  }

  v23 = UsoEntity.attributes.getter();

  if (!*(v23 + 16) || (v24 = specialized __RawDictionaryStorage.find<A>(_:)(0x676F6C616964, 0xE600000000000000), (v25 & 1) == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  v20 = *(*(v23 + 56) + 8 * v24);

  if (v20 >> 62)
  {
    goto LABEL_63;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

LABEL_15:
  if ((v20 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v20);
LABEL_18:

    v20 = dispatch thunk of UsoValue.getUsoIdentifiers()();

    if (v20)
    {
      v56 = *(v20 + 16);
      if (v56)
      {
        v27 = 0;
        v53 = v20 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
        v57 = 0x80000001DCA89BE0;
        v52 = v58 + 16;
        v54 = (v58 + 8);
        v55 = v20;
        do
        {
          if (v27 >= *(v20 + 16))
          {
            goto LABEL_62;
          }

          (*(v58 + 16))(v3, v53 + *(v58 + 72) * v27, v0);
          if (UsoIdentifier.appBundleId.getter() == 0xD000000000000013 && v57 == v38)
          {
          }

          else
          {
            v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v51 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          v39 = UsoIdentifier.namespace.getter();
          if (v40)
          {
            if (v39 == 0x614E746E65746E69 && v40 == 0xEA0000000000656DLL)
            {

LABEL_49:

              v41 = v58 + 32;
              (*(v58 + 32))(v6, v3, v0);
              v42 = UsoIdentifier.value.getter();
              v44 = v43;
              (*(v41 - 24))(v6, v0);
              if (v42 == 0x61666F72506C6164 && v44 == 0xEC0000007974696ELL)
              {
              }

              else
              {
                v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v45 & 1) == 0)
                {
                  goto LABEL_27;
                }
              }

              if (one-time initialization token for executor != -1)
              {
                goto LABEL_67;
              }

              goto LABEL_54;
            }

            v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v51)
            {
              goto LABEL_49;
            }
          }

LABEL_38:
          ++v27;
          (*v54)(v3, v0);
          v20 = v55;
        }

        while (v56 != v27);
      }

      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v20 + 32);

    goto LABEL_18;
  }

  __break(1u);
LABEL_67:
  swift_once();
LABEL_54:
  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.executor);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1DC659000, v47, v48, "SocialConversationAffinityScorer Detected low priority profanity action", v49, 2u);
    MEMORY[0x1E12A2F50](v49, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v11, v7);
  return 1;
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

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

id StartExecutionTurn.__allocating_init(executionRequestId:rootRequestId:sessionId:sessionConfiguration:isTapToEdit:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v9 = v8;
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v18[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
  *v20 = a3;
  v20[1] = a4;
  outlined init with copy of ReferenceResolutionClientProtocol?(a5, &v18[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a6, &v18[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v18[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit] = a7;
  v18[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled] = a8;
  v23.receiver = v18;
  v23.super_class = v9;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(a6, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v21;
}

uint64_t static StartExecutionTurn.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static StartExecutionTurn.supportsSecureCoding = a1;
  return result;
}

uint64_t StartExecutionTurn.executionRequestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId + 8);

  return v1;
}

uint64_t StartExecutionTurn.rootRequestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId + 8);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance StartExecutionTurn.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance StartExecutionTurn.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized StartExecutionTurn.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance StartExecutionTurn.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006449747365;
  v4 = 0x75716552746F6F72;
  v5 = 0xEB00000000746964;
  v6 = 0x456F547061547369;
  v7 = 0xEC00000064656C62;
  v8 = 0x616E4558554D7369;
  if (v2 != 4)
  {
    v8 = 0xD000000000000014;
    v7 = 0x80000001DCA7B320;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x496E6F6973736573;
    v3 = 0xE900000000000064;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001DCA7AEC0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

id StartExecutionTurn.init(executionRequestId:rootRequestId:sessionId:sessionConfiguration:isTapToEdit:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v13 = &v8[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId];
  *v13 = a1;
  v13[1] = a2;
  v14 = &v8[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
  *v14 = a3;
  v14[1] = a4;
  outlined init with copy of ReferenceResolutionClientProtocol?(a5, &v8[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a6, &v8[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v8[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit] = a7;
  v8[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled] = a8;
  v17.receiver = v8;
  v17.super_class = type metadata accessor for StartExecutionTurn();
  v15 = objc_msgSendSuper2(&v17, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(a6, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v15;
}

uint64_t StartExecutionTurn.init(coder:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v56[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v60 = &v56[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56[-v19];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v61 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v61)
  {
    v21 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA7B320);
    v22 = [a1 decodeObjectForKey_];

    if (v22)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v66 = 0u;
      v67 = 0u;
    }

    v68[0] = v66;
    v68[1] = v67;
    if (*(&v67 + 1))
    {
      if (swift_dynamicCast())
      {
        v58 = v11;
        v59 = v20;
        v62 = v5;
        v31 = v64;
        v32 = v65;
        v33 = type metadata accessor for JSONDecoder();
        v34 = *(v33 + 48);
        v35 = *(v33 + 52);
        swift_allocObject();
        JSONDecoder.init()();
        v36 = type metadata accessor for SessionConfiguration();
        lazy protocol witness table accessor for type SessionConfiguration and conformance SessionConfiguration(&lazy protocol witness table cache variable for type SessionConfiguration and conformance SessionConfiguration);
        v37 = v32;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        v11 = v58;
        outlined consume of Data._Representation(v31, v37);

        (*(*(v36 - 8) + 56))(v17, 0, 1, v36);
        v20 = v59;
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v17, v59, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
        v5 = v62;
LABEL_15:
        v62 = NSCoder.decodeObject<A>(of:forKey:)();
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
        v39 = NSCoder.decodeObject<A>(of:forKey:)();
        if (v39)
        {
          v40 = v39;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v41 = 0;
        }

        else
        {
          v41 = 1;
        }

        v42 = type metadata accessor for UUID();
        (*(*(v42 - 8) + 56))(v8, v41, 1, v42);
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v8, v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v43 = MEMORY[0x1E12A1410](0x456F547061547369, 0xEB00000000746964);
        LODWORD(v58) = [a1 decodeBoolForKey_];

        v44 = MEMORY[0x1E12A1410](0x616E4558554D7369, 0xEC00000064656C62);
        v59 = a1;
        v57 = [a1 decodeBoolForKey_];

        ObjectType = swift_getObjectType();
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;
        if (v62)
        {
          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;
        }

        else
        {
          v49 = 0;
          v51 = 0;
        }

        outlined init with copy of ReferenceResolutionClientProtocol?(v11, v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v52 = v60;
        outlined init with copy of ReferenceResolutionClientProtocol?(v20, v60, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
        v30 = (*(ObjectType + 128))(v46, v48, v49, v51, v5, v52, v58, v57);

        outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
        v53 = *((*MEMORY[0x1E69E7D40] & *v63) + 0x30);
        v54 = *((*MEMORY[0x1E69E7D40] & *v63) + 0x34);
        swift_deallocPartialClassInstance();
        return v30;
      }
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v68, &_sypSgMd, &_sypSgMR);
    }

    v38 = type metadata accessor for SessionConfiguration();
    (*(*(v38 - 8) + 56))(v20, 1, 1, v38);
    goto LABEL_15;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.executor);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1DC659000, v24, v25, "Could not deserialize executionRequestId in StartExecutionTurn", v26, 2u);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  v27 = v63;
  swift_getObjectType();
  v28 = *((*MEMORY[0x1E69E7D40] & *v27) + 0x30);
  v29 = *((*MEMORY[0x1E69E7D40] & *v27) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall StartExecutionTurn.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v29 - v7;
  v9 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId), *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId + 8), v6);
  v10 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7AEC0);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId + 8))
  {
    v11 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId));
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E12A1410](0x75716552746F6F72, 0xED00006449747365);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId, v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  isa = 0;
  if ((*(v14 + 48))(v8, 1, v13) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v8, v13);
  }

  v16 = MEMORY[0x1E12A1410](0x496E6F6973736573, 0xE900000000000064);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v16];
  swift_unknownObjectRelease();

  v17 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit);
  v18 = MEMORY[0x1E12A1410](0x456F547061547369, 0xEB00000000746964);
  [(objc_class *)with.super.isa encodeBool:v17 forKey:v18];

  v19 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled);
  v20 = MEMORY[0x1E12A1410](0x616E4558554D7369, 0xEC00000064656C62);
  [(objc_class *)with.super.isa encodeBool:v19 forKey:v20];

  v21 = type metadata accessor for JSONEncoder();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  lazy protocol witness table accessor for type SessionConfiguration? and conformance <A> A?();
  v24 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v26 = v25;

  v27 = Data._bridgeToObjectiveC()().super.isa;
  v28 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA7B320);
  [(objc_class *)with.super.isa encodeObject:v27 forKey:v28];

  outlined consume of Data._Representation(v24, v26);
}

uint64_t StartExecutionTurn.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - v4;
  v26 = 0;
  v27 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);
  started = type metadata accessor for StartExecutionTurn();
  v25.receiver = v0;
  v25.super_class = started;
  v7 = objc_msgSendSuper2(&v25, sel_debugDescription);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x1E12A1580](v8, v10);

  MEMORY[0x1E12A1580](31520, 0xE200000000000000);
  v24 = 0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  MEMORY[0x1E12A1580](*&v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId], *&v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId + 8]);
  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v24 = 1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (*&v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId + 8])
  {
    v11 = *&v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
    v12 = *&v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId + 8];
  }

  else
  {
    v11 = 0x3E6C696E3CLL;
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v11, v12);

  MEMORY[0x1E12A1580](2604, 0xE200000000000000);
  v24 = 2;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  outlined init with copy of ReferenceResolutionClientProtocol?(&v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v5, 1, v13) == 1)
  {
    v15 = 0x3E6C696E3CLL;
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v16 = 0xE500000000000000;
  }

  else
  {
    v15 = MEMORY[0x1E129A250]();
    v16 = v17;
    (*(v14 + 8))(v5, v13);
  }

  MEMORY[0x1E12A1580](v15, v16);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  MEMORY[0x1E12A1580](0x456F547061547369, 0xEB00000000746964);
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit])
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit])
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v18, v19);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  MEMORY[0x1E12A1580](0x616E4558554D7369, 0xEC00000064656C62);
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled])
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled])
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v20, v21);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return v26;
}

id StartExecutionTurn.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StartExecutionTurn.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartExecutionTurn();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type SessionConfiguration? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type SessionConfiguration? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type SessionConfiguration? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    lazy protocol witness table accessor for type SessionConfiguration and conformance SessionConfiguration(&lazy protocol witness table cache variable for type SessionConfiguration and conformance SessionConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionConfiguration? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SessionConfiguration and conformance SessionConfiguration(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for StartExecutionTurn()
{
  _s10Foundation4UUIDVSgMaTm_2(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    _s10Foundation4UUIDVSgMaTm_2(319, &lazy cache variable for type metadata for SessionConfiguration?, MEMORY[0x1E69D07A0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t lazy protocol witness table accessor for type StartExecutionTurn.CodingKeys and conformance StartExecutionTurn.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StartExecutionTurn.CodingKeys and conformance StartExecutionTurn.CodingKeys;
  if (!lazy protocol witness table cache variable for type StartExecutionTurn.CodingKeys and conformance StartExecutionTurn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartExecutionTurn.CodingKeys and conformance StartExecutionTurn.CodingKeys);
  }

  return result;
}

unint64_t specialized StartExecutionTurn.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartExecutionTurn.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined destroy of RootRequestAware?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes16RootRequestAware_pSgMd, &_s16SiriMessageTypes16RootRequestAware_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}