uint64_t SiriExecutionStep.interactionId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t SiriExecutionStep.rootInteractionId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t SiriExecutionStep.rootInteractionId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t SiriExecutionStep.slotValue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t SiriExecutionStep.slotValue.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t SiriExecutionStep.statusReason.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t SiriExecutionStep.statusReason.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t SiriExecutionStep.taskId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t SiriExecutionStep.taskId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t SiriExecutionStep.taskStep.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t SiriExecutionStep.taskStep.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

uint64_t key path setter for SiriExecutionStep.eventTime : SiriExecutionStep(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 352))(v7);
}

uint64_t SiriExecutionTask.startTime.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t SiriExecutionTask.startTime.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t SiriExecutionStep.__allocating_init(appBundleId:intentName:interactionId:rootInteractionId:slotValue:statusReason:taskId:taskStep:eventTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = *(v16 + 48);
  v20 = *(v16 + 52);
  v21 = swift_allocObject();
  *(v21 + 96) = 0u;
  *(v21 + 80) = 0u;
  *(v21 + 64) = 0u;
  *(v21 + 48) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 136) = 0;
  *(v21 + 128) = 0;
  swift_beginAccess();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  swift_beginAccess();
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  swift_beginAccess();
  *(v21 + 48) = a5;
  *(v21 + 56) = a6;
  swift_beginAccess();
  *(v21 + 64) = a7;
  *(v21 + 72) = a8;
  swift_beginAccess();
  *(v21 + 80) = a9;
  *(v21 + 88) = a10;
  swift_beginAccess();
  *(v21 + 96) = a11;
  *(v21 + 112) = a12;
  *(v21 + 120) = a13;
  swift_beginAccess();
  *(v21 + 128) = a14;
  *(v21 + 136) = a15;
  v22 = OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionStep_eventTime;
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 32))(v21 + v22, a16, v23);
  return v21;
}

uint64_t SiriExecutionStep.init(appBundleId:intentName:interactionId:rootInteractionId:slotValue:statusReason:taskId:taskStep:eventTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 + 96) = 0u;
  *(v17 + 80) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 136) = 0;
  *(v17 + 128) = 0;
  swift_beginAccess();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  swift_beginAccess();
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  swift_beginAccess();
  v20 = *(v17 + 56);
  *(v17 + 48) = a5;
  *(v17 + 56) = a6;

  swift_beginAccess();
  v21 = *(v17 + 72);
  *(v17 + 64) = a7;
  *(v17 + 72) = a8;

  swift_beginAccess();
  v22 = *(v17 + 88);
  *(v17 + 80) = a9;
  *(v17 + 88) = a10;

  swift_beginAccess();
  v23 = *(v17 + 104);
  *(v17 + 96) = a11;
  *(v17 + 104) = a12;

  *(v17 + 112) = a13;
  *(v17 + 120) = a14;
  swift_beginAccess();
  v24 = *(v17 + 136);
  *(v17 + 128) = a15;
  *(v17 + 136) = a16;

  v25 = OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionStep_eventTime;
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 32))(v17 + v25, a17, v26);
  return v17;
}

unint64_t SiriExecutionStep.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6C646E7542707061;
    v6 = 0x7463617265746E69;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x614E746E65746E69;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x64496B736174;
    v2 = 0x706574536B736174;
    if (a1 != 7)
    {
      v2 = 0x6D6954746E657665;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x756C6156746F6C73;
    if (a1 != 4)
    {
      v3 = 0x6552737574617473;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TaskSuccess.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8CE700](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TaskSuccess.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8CE700](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriExecutionStep.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SiriExecutionStep.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriExecutionStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriExecutionStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

char *SiriExecutionStep.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 9);

  v5 = *(v0 + 11);

  v6 = *(v0 + 13);

  v7 = *(v0 + 15);

  v8 = *(v0 + 17);

  v9 = OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionStep_eventTime;
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  return v0;
}

uint64_t SiriExecutionTask.__deallocating_deinit(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t SiriExecutionStep.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement0E13ExecutionStepC10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement0E13ExecutionStepC10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys();
  v14 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v2 + 152))(v14);
  v41 = 0;
  v32 = v8;
  v15 = v31;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v15)
  {
    (*(v9 + 8))(v12, v32);
  }

  else
  {
    v31 = v7;
    v16 = v30;

    (*(*v2 + 176))(v17);
    v40 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    (*(*v2 + 200))(v19);
    v39 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = v9;

    (*(*v2 + 224))(v21);
    v38 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    (*(*v2 + 248))(v22);
    v37 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    (*(*v2 + 272))(v23);
    v36 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    (*(*v2 + 296))(v24);
    v35 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v2 + 320))(v25);
    v34 = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    v27 = v31;
    (*(*v2 + 344))(v26);
    v33 = 8;
    lazy protocol witness table accessor for type EngagementUnderstandingFeatures and conformance EngagementUnderstandingFeatures(&lazy protocol witness table cache variable for type Date and conformance Date, 255, MEMORY[0x277CC9578]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v29 + 8))(v27, v16);
    return (*(v20 + 8))(v12, v32);
  }
}

id SiriExecutionTaskFactory.convertBiomeEventToSiriExecutionStep(bmEvent:)(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  result = [a1 taskId];
  if (result)
  {
    v11 = result;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = [a1 absoluteTimestamp];
    if (!v15)
    {
LABEL_9:

      return 0;
    }

    v16 = v15;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = &off_279A51000;
    v18 = [a1 intentName];
    if (v18)
    {
      v63 = v7;
      v19 = v3;
      v20 = v18;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = String.lowercased()();

      if (v21._countAndFlagsBits == 0x7361742065676173 && v21._object == 0xE90000000000006BLL)
      {

        v3 = v19;
LABEL_8:
        (*(v3 + 8))(v9, v2);
        goto LABEL_9;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v3 = v19;
      v7 = v63;
      v17 = &off_279A51000;
      if (v22)
      {
        goto LABEL_8;
      }
    }

    v23 = [a1 appBundleID];
    if (v23)
    {
      v24 = v23;
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v25;
    }

    else
    {
      v63 = 0;
      v62 = 0;
    }

    v26 = [a1 v17[488]];
    if (v26)
    {
      v27 = v26;
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v28;
    }

    else
    {
      v61 = 0;
      v60 = 0;
    }

    v29 = [a1 interactionID];
    if (v29)
    {
      v30 = v29;
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v31;
    }

    else
    {
      v59 = 0;
      v58 = 0;
    }

    v32 = [a1 rootInteractionID];
    if (v32)
    {
      v33 = v32;
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v34;
    }

    else
    {
      v57 = 0;
      v56 = 0;
    }

    v35 = [a1 slotValue];
    if (v35)
    {
      v36 = v35;
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v37;
    }

    else
    {
      v55 = 0;
      v54 = 0;
    }

    v38 = [a1 statusReason];
    v65 = v14;
    v64 = v12;
    if (v38)
    {
      v39 = v38;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v40;
    }

    else
    {
      v53 = 0;
      v52 = 0;
    }

    [a1 taskStep];
    v51 = specialized static SiriExecutionTaskFactory.getTaskStepDescription(taskStepType:)();
    v50 = v41;
    v42 = *(v3 + 32);
    v48 = v3 + 32;
    v49 = v42;
    v42(v7, v9, v2);
    v43 = type metadata accessor for SiriExecutionStep(0);
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    v46 = swift_allocObject();
    *(v46 + 96) = 0u;
    *(v46 + 80) = 0u;
    *(v46 + 64) = 0u;
    *(v46 + 48) = 0u;
    *(v46 + 32) = 0u;
    *(v46 + 16) = 0u;
    *(v46 + 136) = 0;
    *(v46 + 128) = 0;
    swift_beginAccess();
    *(v46 + 16) = v63;
    *(v46 + 24) = v62;
    swift_beginAccess();
    *(v46 + 32) = v61;
    *(v46 + 40) = v60;
    swift_beginAccess();
    *(v46 + 48) = v59;
    *(v46 + 56) = v58;
    swift_beginAccess();
    *(v46 + 64) = v57;
    *(v46 + 72) = v56;
    swift_beginAccess();
    *(v46 + 80) = v55;
    *(v46 + 88) = v54;
    swift_beginAccess();
    *(v46 + 96) = v53;
    v47 = v64;
    *(v46 + 104) = v52;
    *(v46 + 112) = v47;
    *(v46 + 120) = v65;
    swift_beginAccess();
    *(v46 + 128) = v51;
    *(v46 + 136) = v50;
    v49(v46 + OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionStep_eventTime, v7, v2);
    return v46;
  }

  return result;
}

uint64_t SiriExecutionTaskFactory.processBiomeEventsToTask(siriExecutionEvents:)(uint64_t a1)
{
  v1 = a1;
  v13 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v2 = MEMORY[0x25F8CE500](a1);
    if (!v2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
LABEL_17:

      v12 = specialized Array._copyToContiguousArray()(v8);
      specialized MutableCollection<>.sort(by:)(&v12, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), type metadata accessor for SiriExecutionStep, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

      return v12;
    }
  }

  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(*v11 + 80);
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25F8CE460](v3, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      if (v4())
      {

        MEMORY[0x25F8CE160](v7);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
      }

      ++v3;
    }

    while (v2 != v3);
    goto LABEL_17;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t SiriExecutionTaskFactory.loadTaskEntities(steps:siriUISessionId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v143 = a3;
  v142 = a2;
  v147 = type metadata accessor for Date();
  v3 = *(v147 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v147);
  v141 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v140 = &v137 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v137 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v144 = &v137 - v13;
  MEMORY[0x28223BE20](v12);
  v146 = &v137 - v14;
  v15 = MEMORY[0x277D84F90];
  v170 = MEMORY[0x277D84F90];

  v17 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say18PostSiriEngagement0E13ExecutionStepCGTt1g504_s18de14Engagement0B20g72TaskFactoryC04loadE8Entities5steps15siriUISessionIdSayAA0bdE0CGSayAA0bD4H16CG_SStFSSAKXEfU_Tf1nc_nTf4g_n(v16);
  v165 = 0;

  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v159 = v20 & *(v17 + 64);
  v21 = (v19 + 63) >> 6;
  v145 = (v3 + 32);
  v138 = (v3 + 16);
  v137 = (v3 + 8);

  v22 = 0;
  v149 = v15;
  v139 = v11;
  v151 = v17;
  v150 = v17 + 64;
  v157 = v21;
  while (1)
  {
    v23 = v159;
    do
    {
      if (v23)
      {
        v24 = v23;
        goto LABEL_12;
      }

      do
      {
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_140;
        }

        if (v25 >= v21)
        {

          v22 = v149;
          if (!(v149 >> 62))
          {
            if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
            {
LABEL_136:

              v168 = specialized Array._copyToContiguousArray()(v134);
              v31 = v165;
              specialized MutableCollection<>.sort(by:)(&v168, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), type metadata accessor for SiriExecutionTask, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
              if (v31)
              {
                goto LABEL_150;
              }

              return v168;
            }

            return v22;
          }

LABEL_140:
          if (v22 < 0)
          {
            v136 = v22;
          }

          else
          {
            v136 = v22 & 0xFFFFFFFFFFFFFF8;
          }

          if (MEMORY[0x25F8CE500](v136) > 1)
          {
            goto LABEL_136;
          }

          return v22;
        }

        v24 = *(v18 + 8 * v25);
        ++v22;
      }

      while (!v24);
      v22 = v25;
LABEL_12:
      v23 = (v24 - 1) & v24;
    }

    while (!*(v17 + 16));
    v159 = (v24 - 1) & v24;
    v26 = (*(v17 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v24)))));
    v27 = *v26;
    v28 = v26[1];

    v154 = v27;
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
    if ((v30 & 1) == 0)
    {

      v21 = v157;
      continue;
    }

    v153 = v28;
    v31 = *(*(v17 + 56) + 8 * v29);
    if (v31 >> 62)
    {
      if (v31 < 0)
      {
        v107 = *(*(v17 + 56) + 8 * v29);
      }

      else
      {
        v107 = v31 & 0xFFFFFFFFFFFFFF8;
      }

      v32 = MEMORY[0x25F8CE500](v107);
      v163 = v32;
      if (!v32)
      {
        goto LABEL_118;
      }

LABEL_16:
      if (v32 < 1)
      {
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      v166 = v31 & 0xC000000000000001;

      v148 = 0;
      v33 = 0;
      v155 = 0xE000000000000000;
      v167 = MEMORY[0x277D84F90];
      v158 = MEMORY[0x277D84F90];
      v161 = MEMORY[0x277D84F90];
      v162 = MEMORY[0x277D84F90];
      v164 = v31;
      v34 = v163;
      while (1)
      {
        if (v166)
        {
          v35 = MEMORY[0x25F8CE460](v33, v31);
        }

        else
        {
          v35 = *(v31 + 8 * v33 + 32);
        }

        v36 = (*v35 + 320);
        v37 = *v36;
        v38 = (*v36)();
        if (!v39)
        {
          goto LABEL_30;
        }

        if (v38 == 0x6C706552776F6C46 && v39 == 0xEA00000000006E61)
        {

LABEL_37:

          goto LABEL_20;
        }

        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v41 & 1) == 0)
        {
LABEL_30:
          isUniquelyReferenced_nonNull_native = (*(*v35 + 200))(v38);
          if (v43)
          {
            v44 = v43;
            v45 = HIBYTE(v43) & 0xF;
            if ((v43 & 0x2000000000000000) == 0)
            {
              v45 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFLL;
            }

            if (v45)
            {
              v160 = isUniquelyReferenced_nonNull_native;
              v168 = isUniquelyReferenced_nonNull_native;
              v169 = v43;
              MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
              *(&v137 - 2) = &v168;
              v46 = v165;
              v47 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v137 - 4), v161);
              v165 = v46;
              if (v47)
              {
              }

              else
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if (isUniquelyReferenced_nonNull_native)
                {
                  v48 = v161;
                }

                else
                {
                  isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v161 + 2) + 1, 1, v161);
                  v48 = isUniquelyReferenced_nonNull_native;
                }

                v50 = *(v48 + 2);
                v49 = *(v48 + 3);
                v51 = v160;
                if (v50 >= v49 >> 1)
                {
                  isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v48);
                  v48 = isUniquelyReferenced_nonNull_native;
                  v51 = v160;
                }

                *(v48 + 2) = v50 + 1;
                v161 = v48;
                v52 = &v48[16 * v50];
                *(v52 + 4) = v51;
                *(v52 + 5) = v44;
              }

              v34 = v163;
              v31 = v164;
            }

            else
            {
            }
          }

          v53 = (*(*v35 + 224))(isUniquelyReferenced_nonNull_native);
          if (v54)
          {
            v55 = v54;
            v56 = HIBYTE(v54) & 0xF;
            if ((v54 & 0x2000000000000000) == 0)
            {
              v56 = v53 & 0xFFFFFFFFFFFFLL;
            }

            if (v56)
            {
              v160 = v53;
              v168 = v53;
              v169 = v54;
              MEMORY[0x28223BE20](v53);
              *(&v137 - 2) = &v168;
              v57 = v165;
              v58 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v137 - 4), v162);
              v165 = v57;
              if (v58)
              {
              }

              else
              {
                v53 = swift_isUniquelyReferenced_nonNull_native();
                if (v53)
                {
                  v59 = v162;
                }

                else
                {
                  v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v162 + 2) + 1, 1, v162);
                  v59 = v53;
                }

                v61 = *(v59 + 2);
                v60 = *(v59 + 3);
                v62 = v160;
                if (v61 >= v60 >> 1)
                {
                  v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v59);
                  v59 = v53;
                  v62 = v160;
                }

                *(v59 + 2) = v61 + 1;
                v162 = v59;
                v63 = &v59[16 * v61];
                *(v63 + 4) = v62;
                *(v63 + 5) = v55;
              }

              v34 = v163;
              v31 = v164;
            }

            else
            {
            }
          }

          v64 = (*(*v35 + 152))(v53);
          if (v65)
          {
            v66 = HIBYTE(v65) & 0xF;
            if ((v65 & 0x2000000000000000) == 0)
            {
              v66 = v64 & 0xFFFFFFFFFFFFLL;
            }

            if (!v66 || (v64 == 1701736302 ? (v67 = v65 == 0xE400000000000000) : (v67 = 0), v67))
            {
            }

            else
            {
              v160 = v64;
              v68 = v65;
              v69 = _stringCompareWithSmolCheck(_:_:expecting:)();
              if (v69)
              {
                goto LABEL_68;
              }

              v156 = &v137;
              v168 = v160;
              v169 = v68;
              MEMORY[0x28223BE20](v69);
              *(&v137 - 2) = &v168;
              v70 = v165;
              v71 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v137 - 4), v158);
              v165 = v70;
              if (v71)
              {
LABEL_68:

                v31 = v164;
              }

              else
              {
                v64 = swift_isUniquelyReferenced_nonNull_native();
                if (v64)
                {
                  v101 = v158;
                }

                else
                {
                  v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v158 + 2) + 1, 1, v158);
                  v101 = v64;
                }

                v103 = *(v101 + 2);
                v102 = *(v101 + 3);
                v104 = v160;
                if (v103 >= v102 >> 1)
                {
                  v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, v101);
                  v105 = v68;
                  v101 = v64;
                  v104 = v160;
                }

                else
                {
                  v105 = v68;
                }

                *(v101 + 2) = v103 + 1;
                v158 = v101;
                v106 = &v101[16 * v103];
                *(v106 + 4) = v104;
                *(v106 + 5) = v105;
                v34 = v163;
                v31 = v164;
              }
            }
          }

          v72 = (v37)(v64);
          if (v73)
          {
            v74 = v72;
            v75 = v73;
            v76 = (*(*v35 + 248))();
            if (v77)
            {
              v78 = v76;
              v79 = v77;
              v80 = HIBYTE(v77) & 0xF;
              if ((v77 & 0x2000000000000000) == 0)
              {
                v80 = v76 & 0xFFFFFFFFFFFFLL;
              }

              if (!v80 || (v76 == 1701736302 ? (v81 = v77 == 0xE400000000000000) : (v81 = 0), v81 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
              {
              }

              else
              {
                v168 = 10272;
                v169 = 0xE200000000000000;
                MEMORY[0x25F8CE090](v78, v79);

                MEMORY[0x25F8CE090](41, 0xE100000000000000);
                v99 = v168;
                v100 = v169;
                v168 = v74;
                v169 = v75;

                MEMORY[0x25F8CE090](v99, v100);

                v74 = v168;
                v75 = v169;
              }
            }

            v72 = swift_isUniquelyReferenced_nonNull_native();
            v31 = v164;
            if (v72)
            {
              v82 = v167;
            }

            else
            {
              v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v167 + 2) + 1, 1, v167);
              v82 = v72;
            }

            v84 = *(v82 + 2);
            v83 = *(v82 + 3);
            if (v84 >= v83 >> 1)
            {
              v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, v82);
              v82 = v72;
            }

            *(v82 + 2) = v84 + 1;
            v167 = v82;
            v85 = &v82[16 * v84];
            *(v85 + 4) = v74;
            *(v85 + 5) = v75;
            v34 = v163;
          }

          v86 = (*(*v35 + 176))(v72);
          if (v87)
          {
            v88 = v86;
            v89 = v87;
            v90 = String.lowercased()();
            if (v90._countAndFlagsBits == 0x74746E6572727563 && v90._object == 0xEB000000006B7361)
            {
LABEL_94:

              goto LABEL_20;
            }

            v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v92 & 1) == 0)
            {
              v93 = String.lowercased()();
              if (v93._countAndFlagsBits == 0x6465737261706E75 && v93._object == 0xEE00746E65746E69)
              {
                goto LABEL_94;
              }

              v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v94 & 1) == 0)
              {
                v95 = String.lowercased()();
                if (v95._countAndFlagsBits == 0x206E776F6E6B6E75 && v95._object == 0xED00006573726170)
                {
                  goto LABEL_94;
                }

                v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v96 & 1) == 0)
                {
                  v97 = String.lowercased()();
                  if (v97._countAndFlagsBits == 0x7361742065676173 && v97._object == 0xE90000000000006BLL)
                  {
                    goto LABEL_94;
                  }

                  v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v98 & 1) == 0)
                  {

                    v148 = v88;
                    v155 = v89;
                    goto LABEL_20;
                  }

                  goto LABEL_37;
                }
              }
            }
          }
        }

LABEL_20:
        if (v34 == ++v33)
        {
          goto LABEL_119;
        }
      }
    }

    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v163 = v32;
    if (v32)
    {
      goto LABEL_16;
    }

LABEL_118:

    v148 = 0;
    v155 = 0xE000000000000000;
    v167 = MEMORY[0x277D84F90];
    v158 = MEMORY[0x277D84F90];
    v161 = MEMORY[0x277D84F90];
    v162 = MEMORY[0x277D84F90];
    v34 = v32;
LABEL_119:
    v108 = (*(*v152 + 104))(v167);
    if (!v34)
    {

      v17 = v151;
      v18 = v150;
      v21 = v157;
      continue;
    }

    if ((v31 & 0xC000000000000001) == 0)
    {
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v109 = *(v31 + 32);

        goto LABEL_124;
      }

LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      break;
    }

    v110 = MEMORY[0x25F8CE460](0, v31);
    v109 = v110;
LABEL_124:
    v111 = v144;
    (*(*v109 + 344))(v110);

    v112 = *v145;
    (*v145)(v146, v111, v147);
    v113 = v163 - 1;
    if (__OFSUB__(v163, 1))
    {
      goto LABEL_146;
    }

    if ((v31 & 0xC000000000000001) != 0)
    {
      v114 = MEMORY[0x25F8CE460](v113, v31);
      goto LABEL_130;
    }

    if ((v113 & 0x8000000000000000) != 0)
    {
      goto LABEL_148;
    }

    if (v113 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v114 = *(v31 + 8 * v113 + 32);

LABEL_130:

    v116 = v139;
    (*(*v114 + 344))(v115);

    v117 = *v138;
    v118 = v140;
    v119 = v146;
    v120 = v147;
    (*v138)(v140, v146, v147);
    v121 = v141;
    v117(v141, v116, v120);
    v122 = type metadata accessor for SiriExecutionTask(0);
    v123 = *(v122 + 48);
    v124 = *(v122 + 52);
    v125 = swift_allocObject();
    v126 = v143;
    *(v125 + 2) = v142;
    *(v125 + 3) = v126;
    v127 = v153;
    *(v125 + 4) = v154;
    *(v125 + 5) = v127;
    v128 = v162;
    *(v125 + 6) = v161;
    *(v125 + 7) = v128;
    v129 = v148;
    *(v125 + 8) = v158;
    *(v125 + 9) = v129;
    v130 = v167;
    *(v125 + 10) = v155;
    *(v125 + 11) = v130;
    *(v125 + 12) = v108;
    v112(&v125[OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionTask_startTime], v118, v120);
    v112(&v125[OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionTask_endTime], v121, v120);

    MEMORY[0x25F8CE160](v131);
    if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v133 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v132 = *v137;
    (*v137)(v116, v120);
    v132(v119, v120);
    v149 = v170;
    v17 = v151;
    v18 = v150;
    v21 = v157;
  }

  __break(1u);
LABEL_150:

  __break(1u);
  return result;
}

_BYTE *SiriExecutionTaskFactory.calculateEngagementUnderstandingFeatures(conversationPath:)(uint64_t a1)
{
  if (specialized static EngagementSignalEnrichmentUtils.isUserCanceledTask(executionSequence:)(a1))
  {
    v2 = 2;
  }

  else if (specialized static EngagementSignalEnrichmentUtils.isFailedTask(executionSequence:)(a1))
  {
    v2 = 3;
  }

  else if (specialized static EngagementSignalEnrichmentUtils.isSiriCompletedTask(executionSequence:)(a1))
  {
    v2 = 4;
  }

  else
  {
    v2 = 1;
  }

  v3 = specialized static EngagementSignalEnrichmentUtils.isPromptInteractionTask(executionSequence:)(a1);
  v4 = specialized static EngagementSignalEnrichmentUtils.isConfirmInteractionTask(executionSequence:)(a1);
  v5 = specialized static EngagementSignalEnrichmentUtils.isDisambiguateInteractionTask(executionSequence:)(a1);
  v6 = specialized static EngagementSignalEnrichmentUtils.isUnsupportedPromptInteractionTask(executionSequence:)(a1);
  type metadata accessor for EngagementUnderstandingFeatures();
  result = swift_allocObject();
  result[16] = 0;
  result[17] = v3;
  result[18] = v4;
  result[19] = v5;
  result[20] = v6;
  result[21] = v2;
  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a2(v10);
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v14, a3, a4, a5);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      v14[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v41 = type metadata accessor for Date();
  v8 = *(*(v41 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v39 = &v34 - v13;
  v35 = a2;
  if (a3 != a2)
  {
    v14 = (v12 + 8);
    v42 = *a4;
    v15 = v42 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v37 = v15;
    v38 = a3;
    v17 = *(v42 + 8 * a3);
    v18 = v15;
    v36 = v16;
    while (1)
    {
      v19 = *v18;
      v20 = *(*v17 + 344);

      v22 = v39;
      v20(v21);
      Date.timeIntervalSinceReferenceDate.getter();
      v24 = v23;
      v25 = *v14;
      v26 = v22;
      v27 = v41;
      v28 = (*v14)(v26, v41);
      v29 = v40;
      (*(*v19 + 344))(v28);
      Date.timeIntervalSinceReferenceDate.getter();
      v31 = v30;
      v25(v29, v27);

      if (v24 >= v31)
      {
LABEL_4:
        a3 = v38 + 1;
        v15 = v37 + 8;
        v16 = v36 - 1;
        if (v38 + 1 == v35)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v32 = *v18;
      v17 = v18[1];
      *v18 = v17;
      v18[1] = v32;
      --v18;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v37 = type metadata accessor for Date();
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v37);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  v32 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v38 = *a4;
    v16 = v38 + 8 * a3 - 8;
    v17 = a1 - a3;
LABEL_5:
    v34 = v16;
    v35 = a3;
    v18 = *(v38 + 8 * a3);
    v33 = v17;
    v19 = v16;
    while (1)
    {
      v20 = *v19;
      v21 = *(*v18 + 352);

      v23 = v21(v22);
      v24 = v36;
      (*(*v20 + 352))(v23);
      v25 = static Date.< infix(_:_:)();
      v26 = *v15;
      v27 = v24;
      v28 = v37;
      (*v15)(v27, v37);
      v26(v14, v28);

      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v16 = v34 + 8;
        v17 = v33 - 1;
        if (v35 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v29 = *v19;
      v18 = v19[1];
      *v19 = v18;
      v19[1] = v29;
      --v19;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v37 = type metadata accessor for Date();
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v37);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  v32 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v38 = *a4;
    v16 = v38 + 8 * a3 - 8;
    v17 = a1 - a3;
LABEL_5:
    v34 = v16;
    v35 = a3;
    v18 = *(v38 + 8 * a3);
    v33 = v17;
    v19 = v16;
    while (1)
    {
      v20 = *v19;
      v21 = *(*v18 + 376);

      v23 = v21(v22);
      v24 = v36;
      (*(*v20 + 376))(v23);
      v25 = static Date.< infix(_:_:)();
      v26 = *v15;
      v27 = v24;
      v28 = v37;
      (*v15)(v27, v37);
      v26(v14, v28);

      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v16 = v34 + 8;
        v17 = v33 - 1;
        if (v35 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v29 = *v19;
      v18 = v19[1];
      *v19 = v18;
      v19[1] = v29;
      --v19;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v37 = type metadata accessor for Date();
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v37);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  v32 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v38 = *a4;
    v16 = v38 + 8 * a3 - 8;
    v17 = a1 - a3;
LABEL_5:
    v34 = v16;
    v35 = a3;
    v18 = *(v38 + 8 * a3);
    v33 = v17;
    v19 = v16;
    while (1)
    {
      v20 = *v19;
      v21 = *(*v18 + 352);

      v23 = v21(v22);
      v24 = v36;
      (*(*v20 + 352))(v23);
      v25 = static Date.< infix(_:_:)();
      v26 = *v15;
      v27 = v24;
      v28 = v37;
      (*v15)(v27, v37);
      v26(v14, v28);

      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v16 = v34 + 8;
        v17 = v33 - 1;
        if (v35 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v29 = *v19;
      v18 = v19[1];
      *v19 = v18;
      v19[1] = v29;
      --v19;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v35 = type metadata accessor for SiriUISession(0);
  v8 = *(*(v35 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v35);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v34 = v19;
    v28 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v24;
    v31 = v23;
    while (1)
    {
      outlined init with copy of SiriUISession(v24, v18);
      outlined init with copy of SiriUISession(v21, v14);
      v25 = static Date.< infix(_:_:)();
      outlined destroy of SiriUISession(v14, type metadata accessor for SiriUISession);
      result = outlined destroy of SiriUISession(v18, type metadata accessor for SiriUISession);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v23 = v31 - 1;
        v24 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      outlined init with take of SiriUISession(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = outlined init with take of SiriUISession(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v37 = type metadata accessor for Date();
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v37);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  v32 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v38 = *a4;
    v16 = v38 + 8 * a3 - 8;
    v17 = a1 - a3;
LABEL_5:
    v34 = v16;
    v35 = a3;
    v18 = *(v38 + 8 * a3);
    v33 = v17;
    v19 = v16;
    while (1)
    {
      v20 = *v19;
      v21 = *(*v18 + 224);

      v23 = v21(v22);
      v24 = v36;
      (*(*v20 + 224))(v23);
      v25 = static Date.< infix(_:_:)();
      v26 = *v15;
      v27 = v24;
      v28 = v37;
      (*v15)(v27, v37);
      v26(v14, v28);

      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v16 = v34 + 8;
        v17 = v33 - 1;
        if (v35 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v29 = *v19;
      v18 = v19[1];
      *v19 = v18;
      v19[1] = v29;
      --v19;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v8 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v34 - v13;
  result = MEMORY[0x28223BE20](v12);
  v48 = &v34 - v16;
  v36 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v19 = *(v15 + 16);
    v18 = v15 + 16;
    v20 = *(v18 + 56);
    v45 = (v18 - 8);
    v46 = v19;
    v47 = v18;
    v42 = (v18 + 16);
    v43 = v17;
    v21 = v17 + v20 * (a3 - 1);
    v41 = -v20;
    v22 = a1 - a3;
    v35 = v20;
    v23 = v17 + v20 * a3;
LABEL_5:
    v39 = v21;
    v40 = a3;
    v37 = v23;
    v38 = v22;
    v50 = v22;
    v24 = v21;
    while (1)
    {
      v25 = v48;
      v26 = v46;
      v46(v48, v23, v8);
      v27 = v49;
      v26(v49, v24, v8);
      v28 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
      v29 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
      v30 = *v45;
      (*v45)(v27, v8);
      result = v30(v25, v8);
      if (v28 >= v29)
      {
LABEL_4:
        a3 = v40 + 1;
        v21 = v39 + v35;
        v22 = v38 - 1;
        v23 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v23, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v24, v32, v8);
      v24 += v41;
      v23 += v41;
      if (__CFADD__(v50++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v127 = a1;
  v139 = type metadata accessor for Date();
  v9 = *(*(v139 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v139);
  v138 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v137 = &v124 - v14;
  v134 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_86:
    v5 = *v127;
    if (!*v127)
    {
      goto LABEL_125;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_119:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
      v17 = result;
    }

    v120 = v6;
    v140 = v17;
    v121 = *(v17 + 2);
    if (v121 >= 2)
    {
      while (*v134)
      {
        v122 = *&v17[16 * v121];
        v6 = *&v17[16 * v121 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v134 + 8 * v122), (*v134 + 8 * *&v17[16 * v121 + 16]), (*v134 + 8 * v6), v5);
        if (v120)
        {
        }

        if (v6 < v122)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
        }

        if (v121 - 2 >= *(v17 + 2))
        {
          goto LABEL_113;
        }

        v123 = &v17[16 * v121];
        *v123 = v122;
        *(v123 + 1) = v6;
        v140 = v17;
        result = specialized Array.remove(at:)(v121 - 1);
        v17 = v140;
        v121 = *(v140 + 2);
        if (v121 <= 1)
        {
        }
      }

      goto LABEL_123;
    }
  }

  v125 = a4;
  v16 = 0;
  v136 = (v13 + 8);
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    v18 = v16++;
    if (v16 < v15)
    {
      v133 = v15;
      v126 = v6;
      v19 = *v134;
      v5 = *(*v134 + 8 * v16);
      v130 = 8 * v18;
      v20 = (v19 + 8 * v18);
      v22 = *v20;
      v21 = v20 + 2;
      v23 = *(*v5 + 344);
      v128 = v18;

      v25 = v137;
      v23(v24);
      Date.timeIntervalSinceReferenceDate.getter();
      v27 = v26;
      v28 = *v136;
      v29 = v25;
      v30 = v139;
      v31 = (*v136)(v29, v139);
      v32 = v138;
      (*(*v22 + 344))(v31);
      Date.timeIntervalSinceReferenceDate.getter();
      v34 = v33;
      v131 = v28;
      v28(v32, v30);

      v35 = v128 + 2;
      v132 = v17;
      while (1)
      {
        v16 = v133;
        if (v133 == v35)
        {
          break;
        }

        LODWORD(v135) = v27 < v34;
        v36 = *(v21 - 1);
        v5 = *v21;
        v37 = *(**v21 + 344);

        v39 = v137;
        v37(v38);
        Date.timeIntervalSinceReferenceDate.getter();
        v41 = v40;
        v42 = v139;
        v43 = v131;
        v44 = (v131)(v39, v139);
        v45 = v138;
        (*(*v36 + 344))(v44);
        Date.timeIntervalSinceReferenceDate.getter();
        v47 = v46;
        v43(v45, v42);
        v17 = v132;

        ++v35;
        ++v21;
        if (((v135 ^ (v41 >= v47)) & 1) == 0)
        {
          v16 = v35 - 1;
          break;
        }
      }

      v6 = v126;
      v18 = v128;
      v48 = v130;
      if (v27 < v34)
      {
        if (v16 < v128)
        {
          goto LABEL_116;
        }

        if (v128 < v16)
        {
          v49 = 8 * v16 - 8;
          v50 = v16;
          v51 = v128;
          do
          {
            if (v51 != --v50)
            {
              v53 = *v134;
              if (!*v134)
              {
                goto LABEL_122;
              }

              v52 = *(v53 + v48);
              *(v53 + v48) = *(v53 + v49);
              *(v53 + v49) = v52;
            }

            ++v51;
            v49 -= 8;
            v48 += 8;
          }

          while (v51 < v50);
        }
      }
    }

    v54 = v134[1];
    if (v16 < v54)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_115;
      }

      if (v16 - v18 < v125)
      {
        v55 = v18 + v125;
        if (__OFADD__(v18, v125))
        {
          goto LABEL_117;
        }

        if (v55 >= v54)
        {
          v55 = v134[1];
        }

        if (v55 < v18)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (v16 != v55)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v16 < v18)
    {
      goto LABEL_114;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      v17 = result;
    }

    v75 = *(v17 + 2);
    v74 = *(v17 + 3);
    v76 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 2) = v76;
    v77 = &v17[16 * v75];
    *(v77 + 4) = v18;
    *(v77 + 5) = v16;
    v78 = *v127;
    if (!*v127)
    {
      goto LABEL_124;
    }

    if (v75)
    {
      while (1)
      {
        v5 = v76 - 1;
        if (v76 >= 4)
        {
          break;
        }

        if (v76 == 3)
        {
          v79 = *(v17 + 4);
          v80 = *(v17 + 5);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_55:
          if (v82)
          {
            goto LABEL_103;
          }

          v95 = &v17[16 * v76];
          v97 = *v95;
          v96 = *(v95 + 1);
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_106;
          }

          v101 = &v17[16 * v5 + 32];
          v103 = *v101;
          v102 = *(v101 + 1);
          v89 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v89)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v99, v104))
          {
            goto LABEL_110;
          }

          if (v99 + v104 >= v81)
          {
            if (v81 < v104)
            {
              v5 = v76 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v105 = &v17[16 * v76];
        v107 = *v105;
        v106 = *(v105 + 1);
        v89 = __OFSUB__(v106, v107);
        v99 = v106 - v107;
        v100 = v89;
LABEL_69:
        if (v100)
        {
          goto LABEL_105;
        }

        v108 = &v17[16 * v5];
        v110 = *(v108 + 4);
        v109 = *(v108 + 5);
        v89 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v89)
        {
          goto LABEL_108;
        }

        if (v111 < v99)
        {
          goto LABEL_3;
        }

LABEL_76:
        v116 = v5 - 1;
        if (v5 - 1 >= v76)
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

        if (!*v134)
        {
          goto LABEL_121;
        }

        v117 = *&v17[16 * v116 + 32];
        v118 = *&v17[16 * v5 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v134 + 8 * v117), (*v134 + 8 * *&v17[16 * v5 + 32]), (*v134 + 8 * v118), v78);
        if (v6)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
        }

        if (v116 >= *(v17 + 2))
        {
          goto LABEL_100;
        }

        v119 = &v17[16 * v116];
        *(v119 + 4) = v117;
        *(v119 + 5) = v118;
        v140 = v17;
        result = specialized Array.remove(at:)(v5);
        v17 = v140;
        v76 = *(v140 + 2);
        if (v76 <= 1)
        {
          goto LABEL_3;
        }
      }

      v83 = &v17[16 * v76 + 32];
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_101;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_102;
      }

      v90 = &v17[16 * v76];
      v92 = *v90;
      v91 = *(v90 + 1);
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_104;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_107;
      }

      if (v94 >= v86)
      {
        v112 = &v17[16 * v5 + 32];
        v114 = *v112;
        v113 = *(v112 + 1);
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_111;
        }

        if (v81 < v115)
        {
          v5 = v76 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v15 = v134[1];
    if (v16 >= v15)
    {
      goto LABEL_86;
    }
  }

  v132 = v17;
  v126 = v6;
  v135 = *v134;
  v56 = v135 + 8 * v16 - 8;
  v128 = v18;
  v129 = v55;
  v57 = v18 - v16;
LABEL_28:
  v133 = v16;
  v5 = *(v135 + 8 * v16);
  v130 = v57;
  v131 = v56;
  v58 = v56;
  while (1)
  {
    v59 = *v58;
    v60 = *(*v5 + 344);

    v62 = v137;
    v60(v61);
    Date.timeIntervalSinceReferenceDate.getter();
    v64 = v63;
    v65 = *v136;
    v66 = v62;
    v67 = v139;
    v68 = (*v136)(v66, v139);
    v69 = v138;
    (*(*v59 + 344))(v68);
    Date.timeIntervalSinceReferenceDate.getter();
    v71 = v70;
    v65(v69, v67);

    if (v64 >= v71)
    {
LABEL_27:
      v16 = v133 + 1;
      v56 = v131 + 8;
      v57 = v130 - 1;
      if (v133 + 1 != v129)
      {
        goto LABEL_28;
      }

      v16 = v129;
      v6 = v126;
      v17 = v132;
      v18 = v128;
      goto LABEL_35;
    }

    if (!v135)
    {
      break;
    }

    v72 = *v58;
    v5 = v58[1];
    *v58 = v5;
    v58[1] = v72;
    --v58;
    if (__CFADD__(v57++, 1))
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
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = v4;
  v115 = a1;
  v124 = type metadata accessor for Date();
  v9 = *(*(v124 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v124);
  v123 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v122 = &v109 - v14;
  v15 = a3;
  v16 = *(a3 + 8);
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = *v115;
    if (!*v115)
    {
      goto LABEL_128;
    }

    a4 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v125 = result;
    v105 = *(result + 16);
    if (v105 >= 2)
    {
      while (*v15)
      {
        a4 = *(result + 16 * v105);
        v106 = result;
        v107 = *(result + 16 * (v105 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v15 + 8 * a4), (*v15 + 8 * *(result + 16 * (v105 - 1) + 32)), (*v15 + 8 * v107), v5);
        if (v6)
        {
        }

        if (v107 < a4)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = specialized _ArrayBuffer._consumeAndCreateNew()(v106);
        }

        if (v105 - 2 >= *(v106 + 2))
        {
          goto LABEL_116;
        }

        v108 = &v106[16 * v105];
        *v108 = a4;
        v108[1] = v107;
        v125 = v106;
        specialized Array.remove(at:)(v105 - 1);
        result = v125;
        v105 = *(v125 + 16);
        if (v105 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v17 = 0;
  v121 = (v13 + 8);
  v18 = MEMORY[0x277D84F90];
  v114 = a4;
  v110 = v15;
  while (1)
  {
    v19 = v17++;
    if (v17 >= v16)
    {
      v41 = v15;
    }

    else
    {
      v119 = v16;
      v112 = v18;
      v113 = v6;
      v20 = *v15;
      v21 = *(*v15 + 8 * v17);
      v117 = 8 * v19;
      v22 = (v20 + 8 * v19);
      v23 = *v22;
      v5 = (v22 + 2);
      v24 = *(*v21 + 352);

      v26 = v122;
      v27 = v24(v25);
      v15 = v123;
      (*(*v23 + 352))(v27);
      LODWORD(v120) = static Date.< infix(_:_:)();
      v28 = *v121;
      v29 = v124;
      (*v121)(v15, v124);
      v118 = v28;
      v28(v26, v29);

      v111 = v19;
      v30 = v19 + 2;
      while (1)
      {
        v17 = v119;
        if (v119 == v30)
        {
          break;
        }

        v31 = *(v5 - 8);
        v32 = *(**v5 + 352);

        v34 = v122;
        v35 = v32(v33);
        v36 = v123;
        (*(*v31 + 352))(v35);
        v37 = static Date.< infix(_:_:)() & 1;
        v38 = v36;
        v15 = v124;
        v39 = v118;
        v118(v38, v124);
        v39(v34, v15);

        ++v30;
        v5 += 8;
        if ((v120 & 1) != v37)
        {
          v17 = v30 - 1;
          break;
        }
      }

      v18 = v112;
      v6 = v113;
      a4 = v114;
      v19 = v111;
      v40 = v117;
      if (v120)
      {
        if (v17 < v111)
        {
          goto LABEL_119;
        }

        v41 = v110;
        if (v111 < v17)
        {
          v42 = 8 * v17 - 8;
          v43 = v17;
          v44 = v111;
          do
          {
            if (v44 != --v43)
            {
              v46 = *v41;
              if (!*v41)
              {
                goto LABEL_125;
              }

              v45 = *(v46 + v40);
              *(v46 + v40) = *(v46 + v42);
              *(v46 + v42) = v45;
            }

            ++v44;
            v42 -= 8;
            v40 += 8;
          }

          while (v44 < v43);
        }
      }

      else
      {
        v41 = v110;
      }
    }

    v47 = v41[1];
    if (v17 < v47)
    {
      if (__OFSUB__(v17, v19))
      {
        goto LABEL_118;
      }

      if (v17 - v19 < a4)
      {
        v48 = v19 + a4;
        if (__OFADD__(v19, a4))
        {
          goto LABEL_120;
        }

        if (v48 >= v47)
        {
          v48 = v41[1];
        }

        if (v48 < v19)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v17 != v48)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v17 < v19)
    {
      goto LABEL_117;
    }

    v61 = v18;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v18 = v61;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 16) + 1, 1, v61);
      v18 = result;
    }

    v15 = *(v18 + 16);
    v62 = *(v18 + 24);
    a4 = v15 + 1;
    if (v15 >= v62 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v15 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 16) = a4;
    v63 = v18 + 16 * v15;
    *(v63 + 32) = v19;
    *(v63 + 40) = v17;
    v64 = *v115;
    if (!*v115)
    {
      goto LABEL_127;
    }

    if (v15)
    {
      while (1)
      {
        v5 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v65 = *(v18 + 32);
          v66 = *(v18 + 40);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_57:
          if (v68)
          {
            goto LABEL_106;
          }

          v81 = (v18 + 16 * a4);
          v83 = *v81;
          v82 = v81[1];
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_109;
          }

          v87 = (v18 + 32 + 16 * v5);
          v89 = *v87;
          v88 = v87[1];
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_113;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v5 = a4 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v91 = (v18 + 16 * a4);
        v93 = *v91;
        v92 = v91[1];
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_71:
        if (v86)
        {
          goto LABEL_108;
        }

        v94 = v18 + 16 * v5;
        v96 = *(v94 + 32);
        v95 = *(v94 + 40);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_111;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_78:
        v15 = v5 - 1;
        if (v5 - 1 >= a4)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*v41)
        {
          goto LABEL_124;
        }

        v102 = v18;
        a4 = *(v18 + 32 + 16 * v15);
        v103 = *(v18 + 32 + 16 * v5 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v41 + 8 * a4), (*v41 + 8 * *(v18 + 32 + 16 * v5)), (*v41 + 8 * v103), v64);
        if (v6)
        {
        }

        if (v103 < a4)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = specialized _ArrayBuffer._consumeAndCreateNew()(v102);
        }

        if (v15 >= *(v102 + 2))
        {
          goto LABEL_103;
        }

        v104 = &v102[16 * v15];
        *(v104 + 4) = a4;
        *(v104 + 5) = v103;
        v125 = v102;
        result = specialized Array.remove(at:)(v5);
        v18 = v125;
        a4 = *(v125 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = v18 + 32 + 16 * a4;
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_104;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_105;
      }

      v76 = (v18 + 16 * a4);
      v78 = *v76;
      v77 = v76[1];
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_107;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_110;
      }

      if (v80 >= v72)
      {
        v98 = (v18 + 32 + 16 * v5);
        v100 = *v98;
        v99 = v98[1];
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_114;
        }

        if (v67 < v101)
        {
          v5 = a4 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v15 = v41;
    v16 = v41[1];
    a4 = v114;
    if (v17 >= v16)
    {
      goto LABEL_89;
    }
  }

  v112 = v18;
  v113 = v6;
  v120 = *v41;
  v15 = v120 + 8 * v17 - 8;
  v111 = v19;
  v49 = v19 - v17;
  v116 = v48;
LABEL_30:
  v118 = v15;
  v119 = v17;
  v5 = *(v120 + 8 * v17);
  v117 = v49;
  while (1)
  {
    v50 = *v15;
    v51 = *(*v5 + 352);

    v53 = v122;
    v54 = v51(v52);
    v55 = v123;
    (*(*v50 + 352))(v54);
    a4 = static Date.< infix(_:_:)();
    v56 = *v121;
    v57 = v55;
    v58 = v124;
    (*v121)(v57, v124);
    v56(v53, v58);

    if ((a4 & 1) == 0)
    {
LABEL_29:
      v17 = v119 + 1;
      v15 = v118 + 8;
      v49 = v117 - 1;
      if (v119 + 1 != v116)
      {
        goto LABEL_30;
      }

      v17 = v116;
      v18 = v112;
      v6 = v113;
      v41 = v110;
      v19 = v111;
      goto LABEL_37;
    }

    if (!v120)
    {
      break;
    }

    v59 = *v15;
    v5 = *(v15 + 8);
    *v15 = v5;
    *(v15 + 8) = v59;
    v15 -= 8;
    if (__CFADD__(v49++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v6 = v4;
  v115 = a1;
  v124 = type metadata accessor for Date();
  v9 = *(*(v124 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v124);
  v123 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v122 = &v109 - v14;
  v15 = a3;
  v16 = *(a3 + 8);
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = *v115;
    if (!*v115)
    {
      goto LABEL_128;
    }

    a4 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v125 = result;
    v105 = *(result + 16);
    if (v105 >= 2)
    {
      while (*v15)
      {
        a4 = *(result + 16 * v105);
        v106 = result;
        v107 = *(result + 16 * (v105 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v15 + 8 * a4), (*v15 + 8 * *(result + 16 * (v105 - 1) + 32)), (*v15 + 8 * v107), v5);
        if (v6)
        {
        }

        if (v107 < a4)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = specialized _ArrayBuffer._consumeAndCreateNew()(v106);
        }

        if (v105 - 2 >= *(v106 + 2))
        {
          goto LABEL_116;
        }

        v108 = &v106[16 * v105];
        *v108 = a4;
        v108[1] = v107;
        v125 = v106;
        specialized Array.remove(at:)(v105 - 1);
        result = v125;
        v105 = *(v125 + 16);
        if (v105 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v17 = 0;
  v121 = (v13 + 8);
  v18 = MEMORY[0x277D84F90];
  v114 = a4;
  v110 = v15;
  while (1)
  {
    v19 = v17++;
    if (v17 >= v16)
    {
      v41 = v15;
    }

    else
    {
      v119 = v16;
      v112 = v18;
      v113 = v6;
      v20 = *v15;
      v21 = *(*v15 + 8 * v17);
      v117 = 8 * v19;
      v22 = (v20 + 8 * v19);
      v23 = *v22;
      v5 = (v22 + 2);
      v24 = *(*v21 + 376);

      v26 = v122;
      v27 = v24(v25);
      v15 = v123;
      (*(*v23 + 376))(v27);
      LODWORD(v120) = static Date.< infix(_:_:)();
      v28 = *v121;
      v29 = v124;
      (*v121)(v15, v124);
      v118 = v28;
      v28(v26, v29);

      v111 = v19;
      v30 = v19 + 2;
      while (1)
      {
        v17 = v119;
        if (v119 == v30)
        {
          break;
        }

        v31 = *(v5 - 8);
        v32 = *(**v5 + 376);

        v34 = v122;
        v35 = v32(v33);
        v36 = v123;
        (*(*v31 + 376))(v35);
        v37 = static Date.< infix(_:_:)() & 1;
        v38 = v36;
        v15 = v124;
        v39 = v118;
        v118(v38, v124);
        v39(v34, v15);

        ++v30;
        v5 += 8;
        if ((v120 & 1) != v37)
        {
          v17 = v30 - 1;
          break;
        }
      }

      v18 = v112;
      v6 = v113;
      a4 = v114;
      v19 = v111;
      v40 = v117;
      if (v120)
      {
        if (v17 < v111)
        {
          goto LABEL_119;
        }

        v41 = v110;
        if (v111 < v17)
        {
          v42 = 8 * v17 - 8;
          v43 = v17;
          v44 = v111;
          do
          {
            if (v44 != --v43)
            {
              v46 = *v41;
              if (!*v41)
              {
                goto LABEL_125;
              }

              v45 = *(v46 + v40);
              *(v46 + v40) = *(v46 + v42);
              *(v46 + v42) = v45;
            }

            ++v44;
            v42 -= 8;
            v40 += 8;
          }

          while (v44 < v43);
        }
      }

      else
      {
        v41 = v110;
      }
    }

    v47 = v41[1];
    if (v17 < v47)
    {
      if (__OFSUB__(v17, v19))
      {
        goto LABEL_118;
      }

      if (v17 - v19 < a4)
      {
        v48 = v19 + a4;
        if (__OFADD__(v19, a4))
        {
          goto LABEL_120;
        }

        if (v48 >= v47)
        {
          v48 = v41[1];
        }

        if (v48 < v19)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v17 != v48)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v17 < v19)
    {
      goto LABEL_117;
    }

    v61 = v18;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v18 = v61;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 16) + 1, 1, v61);
      v18 = result;
    }

    v15 = *(v18 + 16);
    v62 = *(v18 + 24);
    a4 = v15 + 1;
    if (v15 >= v62 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v15 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 16) = a4;
    v63 = v18 + 16 * v15;
    *(v63 + 32) = v19;
    *(v63 + 40) = v17;
    v64 = *v115;
    if (!*v115)
    {
      goto LABEL_127;
    }

    if (v15)
    {
      while (1)
      {
        v5 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v65 = *(v18 + 32);
          v66 = *(v18 + 40);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_57:
          if (v68)
          {
            goto LABEL_106;
          }

          v81 = (v18 + 16 * a4);
          v83 = *v81;
          v82 = v81[1];
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_109;
          }

          v87 = (v18 + 32 + 16 * v5);
          v89 = *v87;
          v88 = v87[1];
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_113;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v5 = a4 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v91 = (v18 + 16 * a4);
        v93 = *v91;
        v92 = v91[1];
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_71:
        if (v86)
        {
          goto LABEL_108;
        }

        v94 = v18 + 16 * v5;
        v96 = *(v94 + 32);
        v95 = *(v94 + 40);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_111;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_78:
        v15 = v5 - 1;
        if (v5 - 1 >= a4)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*v41)
        {
          goto LABEL_124;
        }

        v102 = v18;
        a4 = *(v18 + 32 + 16 * v15);
        v103 = *(v18 + 32 + 16 * v5 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v41 + 8 * a4), (*v41 + 8 * *(v18 + 32 + 16 * v5)), (*v41 + 8 * v103), v64);
        if (v6)
        {
        }

        if (v103 < a4)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = specialized _ArrayBuffer._consumeAndCreateNew()(v102);
        }

        if (v15 >= *(v102 + 2))
        {
          goto LABEL_103;
        }

        v104 = &v102[16 * v15];
        *(v104 + 4) = a4;
        *(v104 + 5) = v103;
        v125 = v102;
        result = specialized Array.remove(at:)(v5);
        v18 = v125;
        a4 = *(v125 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = v18 + 32 + 16 * a4;
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_104;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_105;
      }

      v76 = (v18 + 16 * a4);
      v78 = *v76;
      v77 = v76[1];
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_107;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_110;
      }

      if (v80 >= v72)
      {
        v98 = (v18 + 32 + 16 * v5);
        v100 = *v98;
        v99 = v98[1];
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_114;
        }

        if (v67 < v101)
        {
          v5 = a4 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v15 = v41;
    v16 = v41[1];
    a4 = v114;
    if (v17 >= v16)
    {
      goto LABEL_89;
    }
  }

  v112 = v18;
  v113 = v6;
  v120 = *v41;
  v15 = v120 + 8 * v17 - 8;
  v111 = v19;
  v49 = v19 - v17;
  v116 = v48;
LABEL_30:
  v118 = v15;
  v119 = v17;
  v5 = *(v120 + 8 * v17);
  v117 = v49;
  while (1)
  {
    v50 = *v15;
    v51 = *(*v5 + 376);

    v53 = v122;
    v54 = v51(v52);
    v55 = v123;
    (*(*v50 + 376))(v54);
    a4 = static Date.< infix(_:_:)();
    v56 = *v121;
    v57 = v55;
    v58 = v124;
    (*v121)(v57, v124);
    v56(v53, v58);

    if ((a4 & 1) == 0)
    {
LABEL_29:
      v17 = v119 + 1;
      v15 = v118 + 8;
      v49 = v117 - 1;
      if (v119 + 1 != v116)
      {
        goto LABEL_30;
      }

      v17 = v116;
      v18 = v112;
      v6 = v113;
      v41 = v110;
      v19 = v111;
      goto LABEL_37;
    }

    if (!v120)
    {
      break;
    }

    v59 = *v15;
    v5 = *(v15 + 8);
    *v15 = v5;
    *(v15 + 8) = v59;
    v15 -= 8;
    if (__CFADD__(v49++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v6 = v4;
  v115 = a1;
  v124 = type metadata accessor for Date();
  v9 = *(*(v124 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v124);
  v123 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v122 = &v109 - v14;
  v15 = a3;
  v16 = *(a3 + 8);
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = *v115;
    if (!*v115)
    {
      goto LABEL_128;
    }

    a4 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v125 = result;
    v105 = *(result + 16);
    if (v105 >= 2)
    {
      while (*v15)
      {
        a4 = *(result + 16 * v105);
        v106 = result;
        v107 = *(result + 16 * (v105 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v15 + 8 * a4), (*v15 + 8 * *(result + 16 * (v105 - 1) + 32)), (*v15 + 8 * v107), v5);
        if (v6)
        {
        }

        if (v107 < a4)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = specialized _ArrayBuffer._consumeAndCreateNew()(v106);
        }

        if (v105 - 2 >= *(v106 + 2))
        {
          goto LABEL_116;
        }

        v108 = &v106[16 * v105];
        *v108 = a4;
        v108[1] = v107;
        v125 = v106;
        specialized Array.remove(at:)(v105 - 1);
        result = v125;
        v105 = *(v125 + 16);
        if (v105 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v17 = 0;
  v121 = (v13 + 8);
  v18 = MEMORY[0x277D84F90];
  v114 = a4;
  v110 = v15;
  while (1)
  {
    v19 = v17++;
    if (v17 >= v16)
    {
      v41 = v15;
    }

    else
    {
      v119 = v16;
      v112 = v18;
      v113 = v6;
      v20 = *v15;
      v21 = *(*v15 + 8 * v17);
      v117 = 8 * v19;
      v22 = (v20 + 8 * v19);
      v23 = *v22;
      v5 = (v22 + 2);
      v24 = *(*v21 + 352);

      v26 = v122;
      v27 = v24(v25);
      v15 = v123;
      (*(*v23 + 352))(v27);
      LODWORD(v120) = static Date.< infix(_:_:)();
      v28 = *v121;
      v29 = v124;
      (*v121)(v15, v124);
      v118 = v28;
      v28(v26, v29);

      v111 = v19;
      v30 = v19 + 2;
      while (1)
      {
        v17 = v119;
        if (v119 == v30)
        {
          break;
        }

        v31 = *(v5 - 8);
        v32 = *(**v5 + 352);

        v34 = v122;
        v35 = v32(v33);
        v36 = v123;
        (*(*v31 + 352))(v35);
        v37 = static Date.< infix(_:_:)() & 1;
        v38 = v36;
        v15 = v124;
        v39 = v118;
        v118(v38, v124);
        v39(v34, v15);

        ++v30;
        v5 += 8;
        if ((v120 & 1) != v37)
        {
          v17 = v30 - 1;
          break;
        }
      }

      v18 = v112;
      v6 = v113;
      a4 = v114;
      v19 = v111;
      v40 = v117;
      if (v120)
      {
        if (v17 < v111)
        {
          goto LABEL_119;
        }

        v41 = v110;
        if (v111 < v17)
        {
          v42 = 8 * v17 - 8;
          v43 = v17;
          v44 = v111;
          do
          {
            if (v44 != --v43)
            {
              v46 = *v41;
              if (!*v41)
              {
                goto LABEL_125;
              }

              v45 = *(v46 + v40);
              *(v46 + v40) = *(v46 + v42);
              *(v46 + v42) = v45;
            }

            ++v44;
            v42 -= 8;
            v40 += 8;
          }

          while (v44 < v43);
        }
      }

      else
      {
        v41 = v110;
      }
    }

    v47 = v41[1];
    if (v17 < v47)
    {
      if (__OFSUB__(v17, v19))
      {
        goto LABEL_118;
      }

      if (v17 - v19 < a4)
      {
        v48 = v19 + a4;
        if (__OFADD__(v19, a4))
        {
          goto LABEL_120;
        }

        if (v48 >= v47)
        {
          v48 = v41[1];
        }

        if (v48 < v19)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v17 != v48)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v17 < v19)
    {
      goto LABEL_117;
    }

    v61 = v18;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v18 = v61;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 16) + 1, 1, v61);
      v18 = result;
    }

    v15 = *(v18 + 16);
    v62 = *(v18 + 24);
    a4 = v15 + 1;
    if (v15 >= v62 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v15 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 16) = a4;
    v63 = v18 + 16 * v15;
    *(v63 + 32) = v19;
    *(v63 + 40) = v17;
    v64 = *v115;
    if (!*v115)
    {
      goto LABEL_127;
    }

    if (v15)
    {
      while (1)
      {
        v5 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v65 = *(v18 + 32);
          v66 = *(v18 + 40);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_57:
          if (v68)
          {
            goto LABEL_106;
          }

          v81 = (v18 + 16 * a4);
          v83 = *v81;
          v82 = v81[1];
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_109;
          }

          v87 = (v18 + 32 + 16 * v5);
          v89 = *v87;
          v88 = v87[1];
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_113;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v5 = a4 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v91 = (v18 + 16 * a4);
        v93 = *v91;
        v92 = v91[1];
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_71:
        if (v86)
        {
          goto LABEL_108;
        }

        v94 = v18 + 16 * v5;
        v96 = *(v94 + 32);
        v95 = *(v94 + 40);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_111;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_78:
        v15 = v5 - 1;
        if (v5 - 1 >= a4)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*v41)
        {
          goto LABEL_124;
        }

        v102 = v18;
        a4 = *(v18 + 32 + 16 * v15);
        v103 = *(v18 + 32 + 16 * v5 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v41 + 8 * a4), (*v41 + 8 * *(v18 + 32 + 16 * v5)), (*v41 + 8 * v103), v64);
        if (v6)
        {
        }

        if (v103 < a4)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = specialized _ArrayBuffer._consumeAndCreateNew()(v102);
        }

        if (v15 >= *(v102 + 2))
        {
          goto LABEL_103;
        }

        v104 = &v102[16 * v15];
        *(v104 + 4) = a4;
        *(v104 + 5) = v103;
        v125 = v102;
        result = specialized Array.remove(at:)(v5);
        v18 = v125;
        a4 = *(v125 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = v18 + 32 + 16 * a4;
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_104;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_105;
      }

      v76 = (v18 + 16 * a4);
      v78 = *v76;
      v77 = v76[1];
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_107;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_110;
      }

      if (v80 >= v72)
      {
        v98 = (v18 + 32 + 16 * v5);
        v100 = *v98;
        v99 = v98[1];
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_114;
        }

        if (v67 < v101)
        {
          v5 = a4 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v15 = v41;
    v16 = v41[1];
    a4 = v114;
    if (v17 >= v16)
    {
      goto LABEL_89;
    }
  }

  v112 = v18;
  v113 = v6;
  v120 = *v41;
  v15 = v120 + 8 * v17 - 8;
  v111 = v19;
  v49 = v19 - v17;
  v116 = v48;
LABEL_30:
  v118 = v15;
  v119 = v17;
  v5 = *(v120 + 8 * v17);
  v117 = v49;
  while (1)
  {
    v50 = *v15;
    v51 = *(*v5 + 352);

    v53 = v122;
    v54 = v51(v52);
    v55 = v123;
    (*(*v50 + 352))(v54);
    a4 = static Date.< infix(_:_:)();
    v56 = *v121;
    v57 = v55;
    v58 = v124;
    (*v121)(v57, v124);
    v56(v53, v58);

    if ((a4 & 1) == 0)
    {
LABEL_29:
      v17 = v119 + 1;
      v15 = v118 + 8;
      v49 = v117 - 1;
      if (v119 + 1 != v116)
      {
        goto LABEL_30;
      }

      v17 = v116;
      v18 = v112;
      v6 = v113;
      v41 = v110;
      v19 = v111;
      goto LABEL_37;
    }

    if (!v120)
    {
      break;
    }

    v59 = *v15;
    v5 = *(v15 + 8);
    *v15 = v5;
    *(v15 + 8) = v59;
    v15 -= 8;
    if (__CFADD__(v49++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v6 = v4;
  v115 = a1;
  v124 = type metadata accessor for Date();
  v9 = *(*(v124 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v124);
  v123 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v122 = &v109 - v14;
  v15 = a3;
  v16 = *(a3 + 8);
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = *v115;
    if (!*v115)
    {
      goto LABEL_128;
    }

    a4 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v125 = result;
    v105 = *(result + 16);
    if (v105 >= 2)
    {
      while (*v15)
      {
        a4 = *(result + 16 * v105);
        v106 = result;
        v107 = *(result + 16 * (v105 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v15 + 8 * a4), (*v15 + 8 * *(result + 16 * (v105 - 1) + 32)), (*v15 + 8 * v107), v5);
        if (v6)
        {
        }

        if (v107 < a4)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = specialized _ArrayBuffer._consumeAndCreateNew()(v106);
        }

        if (v105 - 2 >= *(v106 + 2))
        {
          goto LABEL_116;
        }

        v108 = &v106[16 * v105];
        *v108 = a4;
        v108[1] = v107;
        v125 = v106;
        specialized Array.remove(at:)(v105 - 1);
        result = v125;
        v105 = *(v125 + 16);
        if (v105 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v17 = 0;
  v121 = (v13 + 8);
  v18 = MEMORY[0x277D84F90];
  v114 = a4;
  v110 = v15;
  while (1)
  {
    v19 = v17++;
    if (v17 >= v16)
    {
      v41 = v15;
    }

    else
    {
      v119 = v16;
      v112 = v18;
      v113 = v6;
      v20 = *v15;
      v21 = *(*v15 + 8 * v17);
      v117 = 8 * v19;
      v22 = (v20 + 8 * v19);
      v23 = *v22;
      v5 = (v22 + 2);
      v24 = *(*v21 + 224);

      v26 = v122;
      v27 = v24(v25);
      v15 = v123;
      (*(*v23 + 224))(v27);
      LODWORD(v120) = static Date.< infix(_:_:)();
      v28 = *v121;
      v29 = v124;
      (*v121)(v15, v124);
      v118 = v28;
      v28(v26, v29);

      v111 = v19;
      v30 = v19 + 2;
      while (1)
      {
        v17 = v119;
        if (v119 == v30)
        {
          break;
        }

        v31 = *(v5 - 8);
        v32 = *(**v5 + 224);

        v34 = v122;
        v35 = v32(v33);
        v36 = v123;
        (*(*v31 + 224))(v35);
        v37 = static Date.< infix(_:_:)() & 1;
        v38 = v36;
        v15 = v124;
        v39 = v118;
        v118(v38, v124);
        v39(v34, v15);

        ++v30;
        v5 += 8;
        if ((v120 & 1) != v37)
        {
          v17 = v30 - 1;
          break;
        }
      }

      v18 = v112;
      v6 = v113;
      a4 = v114;
      v19 = v111;
      v40 = v117;
      if (v120)
      {
        if (v17 < v111)
        {
          goto LABEL_119;
        }

        v41 = v110;
        if (v111 < v17)
        {
          v42 = 8 * v17 - 8;
          v43 = v17;
          v44 = v111;
          do
          {
            if (v44 != --v43)
            {
              v46 = *v41;
              if (!*v41)
              {
                goto LABEL_125;
              }

              v45 = *(v46 + v40);
              *(v46 + v40) = *(v46 + v42);
              *(v46 + v42) = v45;
            }

            ++v44;
            v42 -= 8;
            v40 += 8;
          }

          while (v44 < v43);
        }
      }

      else
      {
        v41 = v110;
      }
    }

    v47 = v41[1];
    if (v17 < v47)
    {
      if (__OFSUB__(v17, v19))
      {
        goto LABEL_118;
      }

      if (v17 - v19 < a4)
      {
        v48 = v19 + a4;
        if (__OFADD__(v19, a4))
        {
          goto LABEL_120;
        }

        if (v48 >= v47)
        {
          v48 = v41[1];
        }

        if (v48 < v19)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v17 != v48)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v17 < v19)
    {
      goto LABEL_117;
    }

    v61 = v18;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v18 = v61;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 16) + 1, 1, v61);
      v18 = result;
    }

    v15 = *(v18 + 16);
    v62 = *(v18 + 24);
    a4 = v15 + 1;
    if (v15 >= v62 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v15 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 16) = a4;
    v63 = v18 + 16 * v15;
    *(v63 + 32) = v19;
    *(v63 + 40) = v17;
    v64 = *v115;
    if (!*v115)
    {
      goto LABEL_127;
    }

    if (v15)
    {
      while (1)
      {
        v5 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v65 = *(v18 + 32);
          v66 = *(v18 + 40);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_57:
          if (v68)
          {
            goto LABEL_106;
          }

          v81 = (v18 + 16 * a4);
          v83 = *v81;
          v82 = v81[1];
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_109;
          }

          v87 = (v18 + 32 + 16 * v5);
          v89 = *v87;
          v88 = v87[1];
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_113;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v5 = a4 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v91 = (v18 + 16 * a4);
        v93 = *v91;
        v92 = v91[1];
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_71:
        if (v86)
        {
          goto LABEL_108;
        }

        v94 = v18 + 16 * v5;
        v96 = *(v94 + 32);
        v95 = *(v94 + 40);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_111;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_78:
        v15 = v5 - 1;
        if (v5 - 1 >= a4)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*v41)
        {
          goto LABEL_124;
        }

        v102 = v18;
        a4 = *(v18 + 32 + 16 * v15);
        v103 = *(v18 + 32 + 16 * v5 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v41 + 8 * a4), (*v41 + 8 * *(v18 + 32 + 16 * v5)), (*v41 + 8 * v103), v64);
        if (v6)
        {
        }

        if (v103 < a4)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = specialized _ArrayBuffer._consumeAndCreateNew()(v102);
        }

        if (v15 >= *(v102 + 2))
        {
          goto LABEL_103;
        }

        v104 = &v102[16 * v15];
        *(v104 + 4) = a4;
        *(v104 + 5) = v103;
        v125 = v102;
        result = specialized Array.remove(at:)(v5);
        v18 = v125;
        a4 = *(v125 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = v18 + 32 + 16 * a4;
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_104;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_105;
      }

      v76 = (v18 + 16 * a4);
      v78 = *v76;
      v77 = v76[1];
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_107;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_110;
      }

      if (v80 >= v72)
      {
        v98 = (v18 + 32 + 16 * v5);
        v100 = *v98;
        v99 = v98[1];
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_114;
        }

        if (v67 < v101)
        {
          v5 = a4 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v15 = v41;
    v16 = v41[1];
    a4 = v114;
    if (v17 >= v16)
    {
      goto LABEL_89;
    }
  }

  v112 = v18;
  v113 = v6;
  v120 = *v41;
  v15 = v120 + 8 * v17 - 8;
  v111 = v19;
  v49 = v19 - v17;
  v116 = v48;
LABEL_30:
  v118 = v15;
  v119 = v17;
  v5 = *(v120 + 8 * v17);
  v117 = v49;
  while (1)
  {
    v50 = *v15;
    v51 = *(*v5 + 224);

    v53 = v122;
    v54 = v51(v52);
    v55 = v123;
    (*(*v50 + 224))(v54);
    a4 = static Date.< infix(_:_:)();
    v56 = *v121;
    v57 = v55;
    v58 = v124;
    (*v121)(v57, v124);
    v56(v53, v58);

    if ((a4 & 1) == 0)
    {
LABEL_29:
      v17 = v119 + 1;
      v15 = v118 + 8;
      v49 = v117 - 1;
      if (v119 + 1 != v116)
      {
        goto LABEL_30;
      }

      v17 = v116;
      v18 = v112;
      v6 = v113;
      v41 = v110;
      v19 = v111;
      goto LABEL_37;
    }

    if (!v120)
    {
      break;
    }

    v59 = *v15;
    v5 = *(v15 + 8);
    *v15 = v5;
    *(v15 + 8) = v59;
    v15 -= 8;
    if (__CFADD__(v49++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  v61 = type metadata accessor for Date();
  v8 = *(v61 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v61);
  v60 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v55 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v62 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[8 * v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v64 = &a4[8 * v16];
    if (a3 - a2 >= 8 && a2 > v62)
    {
      v56 = (v8 + 8);
      v57 = a4;
LABEL_27:
      v55 = a1;
      v34 = a1 - 8;
      v35 = a3 - 8;
      v36 = v64;
      v58 = a1 - 8;
      do
      {
        v37 = *(v36 - 1);
        v36 -= 8;
        v63 = v35;
        v38 = v35 + 8;
        v39 = *v34;
        v40 = *(*v37 + 344);

        v42 = v59;
        v40(v41);
        Date.timeIntervalSinceReferenceDate.getter();
        v44 = v43;
        v45 = *v56;
        v46 = v42;
        v47 = v61;
        v48 = (*v56)(v46, v61);
        v49 = v60;
        (*(*v39 + 344))(v48);
        Date.timeIntervalSinceReferenceDate.getter();
        v51 = v50;
        v45(v49, v47);

        if (v44 < v51)
        {
          a4 = v57;
          v53 = v58;
          a3 = v63;
          if (v38 != v55)
          {
            *v63 = *v58;
          }

          if (v64 <= a4 || (a1 = v53, v53 <= v62))
          {
            a1 = v53;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v57;
        v52 = v63;
        if (v38 != v64)
        {
          *v63 = *v36;
        }

        v35 = v52 - 8;
        v64 = v36;
        v34 = v58;
      }

      while (v36 > a4);
      v64 = v36;
      a1 = v55;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v64 = &a4[8 * v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v63 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v62 = a1;
        v18 = *a4;
        v19 = *(**a2 + 344);

        v21 = v59;
        v19(v20);
        Date.timeIntervalSinceReferenceDate.getter();
        v23 = v22;
        v24 = *v17;
        v25 = v21;
        v26 = v61;
        v27 = (*v17)(v25, v61);
        v28 = v60;
        (*(*v18 + 344))(v27);
        Date.timeIntervalSinceReferenceDate.getter();
        v30 = v29;
        v24(v28, v26);

        if (v23 >= v30)
        {
          break;
        }

        v31 = a2;
        v32 = v62;
        v33 = v62 == a2;
        a2 += 8;
        if (!v33)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v32 + 8;
        if (a4 >= v64 || a2 >= v63)
        {
          goto LABEL_39;
        }
      }

      v31 = a4;
      v32 = v62;
      v33 = v62 == a4;
      a4 += 8;
      if (v33)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v32 = *v31;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= &a4[(v64 - a4 + (v64 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, a4, 8 * ((v64 - a4) / 8));
  }

  return 1;
}

{
  v55 = type metadata accessor for Date();
  v8 = *(v55 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v55);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v49 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v56 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[8 * v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v58 = &a4[8 * v16];
    if (a3 - a2 >= 8 && a2 > v56)
    {
      v50 = (v8 + 8);
      v51 = a4;
LABEL_27:
      v49 = a1;
      v31 = a1 - 8;
      v32 = a3 - 8;
      v33 = v58;
      v52 = a1 - 8;
      do
      {
        v34 = *(v33 - 1);
        v33 -= 8;
        v57 = v32;
        v35 = v32 + 8;
        v36 = *v31;
        v37 = *(*v34 + 352);

        v39 = v53;
        v40 = v37(v38);
        v41 = v54;
        (*(*v36 + 352))(v40);
        v42 = static Date.< infix(_:_:)();
        v43 = *v50;
        v44 = v41;
        v45 = v55;
        (*v50)(v44, v55);
        v43(v39, v45);

        if (v42)
        {
          a4 = v51;
          v47 = v52;
          a3 = v57;
          if (v35 != v49)
          {
            *v57 = *v52;
          }

          if (v58 <= a4 || (a1 = v47, v47 <= v56))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v51;
        v46 = v57;
        if (v35 != v58)
        {
          *v57 = *v33;
        }

        v32 = v46 - 8;
        v58 = v33;
        v31 = v52;
      }

      while (v33 > a4);
      v58 = v33;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v58 = &a4[8 * v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v57 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v56 = a1;
        v18 = *a4;
        v19 = *(**a2 + 352);

        v21 = v53;
        v22 = v19(v20);
        v23 = v54;
        (*(*v18 + 352))(v22);
        v24 = static Date.< infix(_:_:)();
        v25 = *v17;
        v26 = v23;
        v27 = v55;
        (*v17)(v26, v55);
        v25(v21, v27);

        if ((v24 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = v56;
        v30 = v56 == a2;
        a2 += 8;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 8;
        if (a4 >= v58 || a2 >= v57)
        {
          goto LABEL_39;
        }
      }

      v28 = a4;
      v29 = v56;
      v30 = v56 == a4;
      a4 += 8;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= &a4[(v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, a4, 8 * ((v58 - a4) / 8));
  }

  return 1;
}

{
  v55 = type metadata accessor for Date();
  v8 = *(v55 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v55);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v49 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v56 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[8 * v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v58 = &a4[8 * v16];
    if (a3 - a2 >= 8 && a2 > v56)
    {
      v50 = (v8 + 8);
      v51 = a4;
LABEL_27:
      v49 = a1;
      v31 = a1 - 8;
      v32 = a3 - 8;
      v33 = v58;
      v52 = a1 - 8;
      do
      {
        v34 = *(v33 - 1);
        v33 -= 8;
        v57 = v32;
        v35 = v32 + 8;
        v36 = *v31;
        v37 = *(*v34 + 376);

        v39 = v53;
        v40 = v37(v38);
        v41 = v54;
        (*(*v36 + 376))(v40);
        v42 = static Date.< infix(_:_:)();
        v43 = *v50;
        v44 = v41;
        v45 = v55;
        (*v50)(v44, v55);
        v43(v39, v45);

        if (v42)
        {
          a4 = v51;
          v47 = v52;
          a3 = v57;
          if (v35 != v49)
          {
            *v57 = *v52;
          }

          if (v58 <= a4 || (a1 = v47, v47 <= v56))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v51;
        v46 = v57;
        if (v35 != v58)
        {
          *v57 = *v33;
        }

        v32 = v46 - 8;
        v58 = v33;
        v31 = v52;
      }

      while (v33 > a4);
      v58 = v33;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v58 = &a4[8 * v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v57 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v56 = a1;
        v18 = *a4;
        v19 = *(**a2 + 376);

        v21 = v53;
        v22 = v19(v20);
        v23 = v54;
        (*(*v18 + 376))(v22);
        v24 = static Date.< infix(_:_:)();
        v25 = *v17;
        v26 = v23;
        v27 = v55;
        (*v17)(v26, v55);
        v25(v21, v27);

        if ((v24 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = v56;
        v30 = v56 == a2;
        a2 += 8;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 8;
        if (a4 >= v58 || a2 >= v57)
        {
          goto LABEL_39;
        }
      }

      v28 = a4;
      v29 = v56;
      v30 = v56 == a4;
      a4 += 8;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= &a4[(v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, a4, 8 * ((v58 - a4) / 8));
  }

  return 1;
}

{
  v55 = type metadata accessor for Date();
  v8 = *(v55 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v55);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v49 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v56 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[8 * v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v58 = &a4[8 * v16];
    if (a3 - a2 >= 8 && a2 > v56)
    {
      v50 = (v8 + 8);
      v51 = a4;
LABEL_27:
      v49 = a1;
      v31 = a1 - 8;
      v32 = a3 - 8;
      v33 = v58;
      v52 = a1 - 8;
      do
      {
        v34 = *(v33 - 1);
        v33 -= 8;
        v57 = v32;
        v35 = v32 + 8;
        v36 = *v31;
        v37 = *(*v34 + 352);

        v39 = v53;
        v40 = v37(v38);
        v41 = v54;
        (*(*v36 + 352))(v40);
        v42 = static Date.< infix(_:_:)();
        v43 = *v50;
        v44 = v41;
        v45 = v55;
        (*v50)(v44, v55);
        v43(v39, v45);

        if (v42)
        {
          a4 = v51;
          v47 = v52;
          a3 = v57;
          if (v35 != v49)
          {
            *v57 = *v52;
          }

          if (v58 <= a4 || (a1 = v47, v47 <= v56))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v51;
        v46 = v57;
        if (v35 != v58)
        {
          *v57 = *v33;
        }

        v32 = v46 - 8;
        v58 = v33;
        v31 = v52;
      }

      while (v33 > a4);
      v58 = v33;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v58 = &a4[8 * v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v57 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v56 = a1;
        v18 = *a4;
        v19 = *(**a2 + 352);

        v21 = v53;
        v22 = v19(v20);
        v23 = v54;
        (*(*v18 + 352))(v22);
        v24 = static Date.< infix(_:_:)();
        v25 = *v17;
        v26 = v23;
        v27 = v55;
        (*v17)(v26, v55);
        v25(v21, v27);

        if ((v24 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = v56;
        v30 = v56 == a2;
        a2 += 8;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 8;
        if (a4 >= v58 || a2 >= v57)
        {
          goto LABEL_39;
        }
      }

      v28 = a4;
      v29 = v56;
      v30 = v56 == a4;
      a4 += 8;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= &a4[(v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, a4, 8 * ((v58 - a4) / 8));
  }

  return 1;
}

{
  v55 = type metadata accessor for Date();
  v8 = *(v55 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v55);
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v48 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v56 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[8 * v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v57 = &a4[8 * v16];
    if (a3 - a2 >= 8 && a2 > v56)
    {
      v49 = (v8 + 8);
      v50 = a4;
LABEL_27:
      v48 = a1;
      v31 = a1 - 8;
      v32 = a3 - 8;
      v33 = v57;
      v51 = a1 - 8;
      do
      {
        v34 = *(v33 - 1);
        v33 -= 8;
        v35 = v32;
        v36 = v32 + 8;
        v37 = *v31;
        v38 = *(*v34 + 224);

        v40 = v53;
        v41 = v38(v39);
        v42 = v54;
        (*(*v37 + 224))(v41);
        LODWORD(v52) = static Date.< infix(_:_:)();
        v43 = *v49;
        v44 = v42;
        v45 = v55;
        (*v49)(v44, v55);
        v43(v40, v45);

        if (v52)
        {
          a4 = v50;
          v46 = v51;
          a3 = v35;
          if (v36 != v48)
          {
            *v35 = *v51;
          }

          if (v57 <= a4 || (a1 = v46, v46 <= v56))
          {
            a1 = v46;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v50;
        if (v36 != v57)
        {
          *v35 = *v33;
        }

        v32 = v35 - 8;
        v57 = v33;
        v31 = v51;
      }

      while (v33 > a4);
      v57 = v33;
      a1 = v48;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v57 = &a4[8 * v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v52 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v56 = a1;
        v18 = *a4;
        v19 = *(**a2 + 224);

        v21 = v53;
        v22 = v19(v20);
        v23 = v54;
        (*(*v18 + 224))(v22);
        v24 = static Date.< infix(_:_:)();
        v25 = *v17;
        v26 = v23;
        v27 = v55;
        (*v17)(v26, v55);
        v25(v21, v27);

        if ((v24 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = v56;
        v30 = v56 == a2;
        a2 += 8;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 8;
        if (a4 >= v57 || a2 >= v52)
        {
          goto LABEL_39;
        }
      }

      v28 = a4;
      v29 = v56;
      v30 = v56 == a4;
      a4 += 8;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= &a4[(v57 - a4 + (v57 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, a4, 8 * ((v57 - a4) / 8));
  }

  return 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say18PostSiriEngagement0E13ExecutionStepCGTt1g504_s18de14Engagement0B20g72TaskFactoryC04loadE8Entities5steps15siriUISessionIdSayAA0bdE0CGSayAA0bD4H16CG_SStFSSAKXEfU_Tf1nc_nTf4g_n(uint64_t a1)
{
  v29 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    if (a1 < 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = MEMORY[0x25F8CE500](v26);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x277D84F98];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x25F8CE460](v3, a1);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v7 = *(a1 + 8 * v3 + 32);

          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v28 = v8;
        v9 = (*(*v7 + 296))();
        v11 = v10;
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
        v14 = v4[2];
        v15 = (v12 & 1) == 0;
        v16 = v14 + v15;
        if (__OFADD__(v14, v15))
        {
          goto LABEL_22;
        }

        v17 = v12;
        if (v4[3] < v16)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, 1);
          v4 = v29;
          v18 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
          if ((v17 & 1) != (v19 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v13 = v18;
        }

        if (v17)
        {

          v6 = (v4[7] + 8 * v13);
          MEMORY[0x25F8CE160](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v25 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_25ED7ACC0;
          *(v20 + 32) = v7;
          v4[(v13 >> 6) + 8] |= 1 << v13;
          v21 = (v4[6] + 16 * v13);
          *v21 = v9;
          v21[1] = v11;
          *(v4[7] + 8 * v13) = v20;
          v22 = v4[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_23;
          }

          v4[2] = v24;
        }

        ++v3;
        if (v28 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t specialized TaskSuccess.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C707041746F6ELL && a2 == 0xED0000656C626163 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x75636C6143746F6ELL && a2 == 0xED0000646574616CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6673736563637573 && a2 == 0xEA00000000006C75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7365636375736E75 && a2 == 0xEC0000006C756673)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized TaskSuccess.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO22UnsuccessfulCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO22UnsuccessfulCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v58 = &v45[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO20SuccessfulCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO20SuccessfulCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v60 = &v45[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO23NotCalculatedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO23NotCalculatedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v59 = &v45[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO23NotApplicableCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO23NotApplicableCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v45[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO17UnknownCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO17UnknownCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v45[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement11TaskSuccessO10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v45[-v23];
  v26 = a1[3];
  v25 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  lazy protocol witness table accessor for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys();
  v27 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    goto LABEL_18;
  }

  v47 = v16;
  v48 = v24;
  v29 = v59;
  v28 = v60;
  v61 = v21;
  v30 = KeyedDecodingContainer.allKeys.getter();
  v31 = *(v30 + 16);
  if (!v31 || ((v32 = *(v30 + 32), v31 == 1) ? (v33 = v32 == 5) : (v33 = 1), v33))
  {
    v34 = type metadata accessor for DecodingError();
    swift_allocError();
    v35 = v20;
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v37 = &type metadata for TaskSuccess;
    v39 = v48;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v34 - 8) + 104))(v37, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    (*(v61 + 8))(v39, v35);
    swift_unknownObjectRelease();
LABEL_18:
    __swift_destroy_boxed_opaque_existential_0(v62);
    return 0;
  }

  v46 = *(v30 + 32);
  if (v32 <= 1)
  {
    if (v32)
    {
      v64 = 1;
      lazy protocol witness table accessor for type TaskSuccess.NotApplicableCodingKeys and conformance TaskSuccess.NotApplicableCodingKeys();
      v42 = v48;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v50 + 8))(v15, v51);
    }

    else
    {
      v63 = 0;
      lazy protocol witness table accessor for type TaskSuccess.UnknownCodingKeys and conformance TaskSuccess.UnknownCodingKeys();
      v42 = v48;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v49 + 8))(v19, v47);
    }

    (*(v61 + 8))(v42, v20);
  }

  else
  {
    v40 = v61;
    if (v32 == 2)
    {
      v65 = 2;
      lazy protocol witness table accessor for type TaskSuccess.NotCalculatedCodingKeys and conformance TaskSuccess.NotCalculatedCodingKeys();
      v41 = v48;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v52 + 8))(v29, v53);
    }

    else
    {
      v41 = v48;
      if (v32 == 3)
      {
        v66 = 3;
        lazy protocol witness table accessor for type TaskSuccess.SuccessfulCodingKeys and conformance TaskSuccess.SuccessfulCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v55 + 8))(v28, v54);
      }

      else
      {
        v67 = 4;
        lazy protocol witness table accessor for type TaskSuccess.UnsuccessfulCodingKeys and conformance TaskSuccess.UnsuccessfulCodingKeys();
        v43 = v58;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v56 + 8))(v43, v57);
      }
    }

    (*(v40 + 8))(v41, v20);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v62);
  return v46;
}

unint64_t lazy protocol witness table accessor for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys);
  }

  return result;
}

uint64_t specialized TaskCompletionType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E6F646E616261 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized TaskCompletionType.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19CompletedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19CompletedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v58 = &v45[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO16FailedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO16FailedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v60 = &v45[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19CancelledCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19CancelledCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v59 = &v45[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19AbandonedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19AbandonedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v45[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO17UnknownCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO17UnknownCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v45[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement18TaskCompletionTypeO10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v45[-v23];
  v26 = a1[3];
  v25 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  lazy protocol witness table accessor for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys();
  v27 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    goto LABEL_18;
  }

  v47 = v16;
  v48 = v24;
  v29 = v59;
  v28 = v60;
  v61 = v21;
  v30 = KeyedDecodingContainer.allKeys.getter();
  v31 = *(v30 + 16);
  if (!v31 || ((v32 = *(v30 + 32), v31 == 1) ? (v33 = v32 == 5) : (v33 = 1), v33))
  {
    v34 = type metadata accessor for DecodingError();
    swift_allocError();
    v35 = v20;
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v37 = &type metadata for TaskCompletionType;
    v39 = v48;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v34 - 8) + 104))(v37, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    (*(v61 + 8))(v39, v35);
    swift_unknownObjectRelease();
LABEL_18:
    __swift_destroy_boxed_opaque_existential_0(v62);
    return 0;
  }

  v46 = *(v30 + 32);
  if (v32 <= 1)
  {
    if (v32)
    {
      v64 = 1;
      lazy protocol witness table accessor for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys();
      v42 = v48;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v50 + 8))(v15, v51);
    }

    else
    {
      v63 = 0;
      lazy protocol witness table accessor for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys();
      v42 = v48;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v49 + 8))(v19, v47);
    }

    (*(v61 + 8))(v42, v20);
  }

  else
  {
    v40 = v61;
    if (v32 == 2)
    {
      v65 = 2;
      lazy protocol witness table accessor for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys();
      v41 = v48;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v52 + 8))(v29, v53);
    }

    else
    {
      v41 = v48;
      if (v32 == 3)
      {
        v66 = 3;
        lazy protocol witness table accessor for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v55 + 8))(v28, v54);
      }

      else
      {
        v67 = 4;
        lazy protocol witness table accessor for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys();
        v43 = v58;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v56 + 8))(v43, v57);
      }
    }

    (*(v40 + 8))(v41, v20);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v62);
  return v46;
}

unint64_t lazy protocol witness table accessor for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys);
  }

  return result;
}

uint64_t specialized TaskInteractionType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x736564756C636E69 && a2 == 0xEE0074706D6F7250;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736564756C636E69 && a2 == 0xEF6D7269666E6F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025ED7EBC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x800000025ED7EBE0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized TaskInteractionType.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18PostSiriEngagement19TaskInteractionTypeV10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedDecodingContainerVy18PostSiriEngagement19TaskInteractionTypeV10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = 2;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = 3;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_0(a1);
  if (v12)
  {
    v13 = 0x1000000;
  }

  else
  {
    v13 = 0;
  }

  if (v17)
  {
    v14 = 0x10000;
  }

  else
  {
    v14 = 0;
  }

  if (v10)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 0xFFFFFFFE | v9 & 1 | v14 | v13;
}

unint64_t lazy protocol witness table accessor for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys;
  if (!lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys;
  if (!lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys;
  if (!lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys;
  if (!lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskSuccess and conformance TaskSuccess()
{
  result = lazy protocol witness table cache variable for type TaskSuccess and conformance TaskSuccess;
  if (!lazy protocol witness table cache variable for type TaskSuccess and conformance TaskSuccess)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess and conformance TaskSuccess);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskSuccess and conformance TaskSuccess;
  if (!lazy protocol witness table cache variable for type TaskSuccess and conformance TaskSuccess)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess and conformance TaskSuccess);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskInteractionType and conformance TaskInteractionType()
{
  result = lazy protocol witness table cache variable for type TaskInteractionType and conformance TaskInteractionType;
  if (!lazy protocol witness table cache variable for type TaskInteractionType and conformance TaskInteractionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskInteractionType and conformance TaskInteractionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskCompletionType and conformance TaskCompletionType()
{
  result = lazy protocol witness table cache variable for type TaskCompletionType and conformance TaskCompletionType;
  if (!lazy protocol witness table cache variable for type TaskCompletionType and conformance TaskCompletionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType and conformance TaskCompletionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskCompletionType and conformance TaskCompletionType;
  if (!lazy protocol witness table cache variable for type TaskCompletionType and conformance TaskCompletionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskCompletionType and conformance TaskCompletionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type EngagementUnderstandingFeatures and conformance EngagementUnderstandingFeatures(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriExecutionStep.CodingKeys and conformance SiriExecutionStep.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for SiriExecutionStep(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t getEnumTagSinglePayload for TaskInteractionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
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

uint64_t storeEnumTagSinglePayload for TaskInteractionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for SiriExecutionTask()
{
  result = type metadata accessor for Date();
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

uint64_t type metadata completion function for SiriExecutionStep()
{
  result = type metadata accessor for Date();
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

uint64_t getEnumTagSinglePayload for SiriExecutionStep.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriExecutionStep.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriExecutionTask.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriExecutionTask.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EngagementUnderstandingFeatures.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EngagementUnderstandingFeatures.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TaskInteractionType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TaskInteractionType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskSuccess(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TaskSuccess(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized EngagementUnderstandingFeatures.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636375536B736174 && a2 == 0xEB00000000737365;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025ED7E9E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025ED7EA00 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized SiriExecutionTask.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69737365536975 && a2 == 0xEB0000000064496ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496B736174 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xEA00000000007364 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025ED7EA70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574746150707061 && a2 == 0xEA00000000006E72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657079546B736174 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025ED7EAA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025ED7EAC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t specialized SiriExecutionStep.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xED000064496E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025ED7EB40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756C6156746F6C73 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6552737574617473 && a2 == 0xEC0000006E6F7361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64496B736174 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x706574536B736174 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D6954746E657665 && a2 == 0xE900000000000065)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t PSEGenericSELFEmitter.emitPSEGeneric(appLaunchSignals:task:)(uint64_t a1, uint64_t a2)
{
  v201 = a2;
  v4 = type metadata accessor for ReliabilityCategory();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v177 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v177 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v194 = &v177 - v14;
  MEMORY[0x28223BE20](v13);
  v195 = &v177 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v193 = &v177 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v192 = &v177 - v21;
  MEMORY[0x28223BE20](v20);
  v191 = &v177 - v22;
  v23 = type metadata accessor for UUID();
  v197 = *(v23 - 8);
  v24 = *(v197 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v190 = &v177 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v188 = &v177 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v189 = &v177 - v30;
  MEMORY[0x28223BE20](v29);
  v198 = &v177 - v31;
  v32 = [objc_allocWithZone(MEMORY[0x277D5A190]) init];
  if (v32)
  {
    v200 = v32;
    v196 = [objc_allocWithZone(MEMORY[0x277D5A198]) init];
    if (v196)
    {
      v185 = [objc_allocWithZone(MEMORY[0x277D5A1A8]) init];
      if (v185)
      {
        v183 = [objc_allocWithZone(MEMORY[0x277D5A1A0]) init];
        if (v183)
        {
          v204[0]._countAndFlagsBits = MEMORY[0x277D84F90];
          if (a1 >> 62)
          {
            if (a1 < 0)
            {
              v53 = a1;
            }

            else
            {
              v53 = a1 & 0xFFFFFFFFFFFFFF8;
            }

            v9 = MEMORY[0x25F8CE500](v53);
          }

          else
          {
            v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v33 = MEMORY[0x277D84F90];
          v187 = v4;
          v186 = v5;
          v181 = v12;
          v184 = v23;
          if (v9)
          {
            v34 = 0;
            v5 = 0xE400000000000000;
            while (1)
            {
              if ((a1 & 0xC000000000000001) != 0)
              {
                v2 = MEMORY[0x25F8CE460](v34, a1);
                v4 = (v34 + 1);
                if (__OFADD__(v34, 1))
                {
LABEL_23:
                  __break(1u);
                  goto LABEL_24;
                }
              }

              else
              {
                if (v34 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_43;
                }

                v2 = *(a1 + 8 * v34 + 32);

                v4 = (v34 + 1);
                if (__OFADD__(v34, 1))
                {
                  goto LABEL_23;
                }
              }

              if ((*(*v2 + 168))() == 1769105747 && v36 == 0xE400000000000000)
              {
              }

              else
              {
                v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v38 & 1) == 0)
                {

                  goto LABEL_11;
                }
              }

              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v35 = *(v204[0]._countAndFlagsBits + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
LABEL_11:
              ++v34;
              if (v4 == v9)
              {
                countAndFlagsBits = v204[0]._countAndFlagsBits;
                v23 = v184;
                v33 = MEMORY[0x277D84F90];
                if ((v204[0]._countAndFlagsBits & 0x8000000000000000) == 0)
                {
                  goto LABEL_36;
                }

                goto LABEL_48;
              }
            }
          }

          countAndFlagsBits = MEMORY[0x277D84F90];
          if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
          {
            goto LABEL_48;
          }

LABEL_36:
          if ((countAndFlagsBits & 0x4000000000000000) != 0)
          {
LABEL_48:
            if (MEMORY[0x25F8CE500](countAndFlagsBits))
            {
              goto LABEL_38;
            }
          }

          else if (*(countAndFlagsBits + 16))
          {
LABEL_38:
            if ((countAndFlagsBits & 0xC000000000000001) != 0)
            {
              v2 = MEMORY[0x25F8CE460](0, countAndFlagsBits);
            }

            else
            {
              if (!*(countAndFlagsBits + 16))
              {
                __break(1u);
                goto LABEL_138;
              }

              v2 = *(countAndFlagsBits + 32);
            }

LABEL_50:
            v204[0]._countAndFlagsBits = v33;
            v180 = v2;
            if (v9)
            {
              v5 = 0;
              v23 = a1 & 0xFFFFFFFFFFFFFF8;
              v33 = 0xE400000000000000;
              while (1)
              {
                if ((a1 & 0xC000000000000001) != 0)
                {
                  v54 = MEMORY[0x25F8CE460](v5, a1);
                  v4 = (v5 + 1);
                  if (__OFADD__(v5, 1))
                  {
LABEL_66:
                    __break(1u);
LABEL_67:
                    v33 = v204[0]._countAndFlagsBits;
                    v23 = v184;
                    v2 = v180;
                    break;
                  }
                }

                else
                {
                  if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_76;
                  }

                  v54 = *(a1 + 8 * v5 + 32);

                  v4 = (v5 + 1);
                  if (__OFADD__(v5, 1))
                  {
                    goto LABEL_66;
                  }
                }

                if ((*(*v54 + 168))() == 1769105747 && v55 == 0xE400000000000000)
                {
                }

                else
                {
                  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v2)
                  {
                  }

                  else
                  {
                    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                    v2 = *(v204[0]._countAndFlagsBits + 16);
                    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    specialized ContiguousArray._endMutation()();
                  }
                }

                ++v5;
                if (v4 == v9)
                {
                  goto LABEL_67;
                }
              }
            }

            v5 = v185;
            v9 = v183;
            if ((v33 & 0x8000000000000000) != 0 || (v33 & 0x4000000000000000) != 0)
            {
LABEL_76:
              if (MEMORY[0x25F8CE500](v33))
              {
LABEL_71:
                if ((v33 & 0xC000000000000001) == 0)
                {
                  if (!*(v33 + 16))
                  {
                    __break(1u);
                    goto LABEL_140;
                  }

                  v57 = *(v33 + 32);

                  goto LABEL_74;
                }

LABEL_138:
                v57 = MEMORY[0x25F8CE460](0, v33);
LABEL_74:

                goto LABEL_78;
              }
            }

            else if (*(v33 + 16))
            {
              goto LABEL_71;
            }

            v57 = 0;
LABEL_78:
            v182 = v57;
            [v9 setIsDonatedBySiri_];
            if (v2)
            {
              v58 = *(*v2 + 120);

              v58(v204, v59);

              v60 = *&v204[0]._countAndFlagsBits;
            }

            else
            {
              v60 = -1.0;
            }

            v61 = [v9 setEventDonationTimeInSecondsSince2001_];
            v62 = v201;
            v63 = *(*v201 + 280);
            v64 = (v63)(v61);
            v65 = MEMORY[0x25F8CDFC0](v64);

            [v9 setDomain_];

            v66 = v63();
            v67 = MEMORY[0x25F8CDFC0](v66);

            [v9 setAction_];

            v68 = v182;
            if (v182)
            {
              v69 = v5;

              (*(*v68 + 120))(v204, [v9 setHasUserInitiatedFollowup_]);
              v70 = (*(*v68 + 168))([v9 setAppLaunchTimeInSecondsSince2001_]);
              v71 = v68;
              v72 = (*(*v199 + 136))(v70);

              (v63)([v9 setAppLaunchReason_]);
              v73 = String.lowercased()();

              v204[0] = v73;
              v202 = 1936744813;
              v203 = 0xE400000000000000;
              lazy protocol witness table accessor for type String and conformance String();
              LOBYTE(v72) = StringProtocol.contains<A>(_:)();

              v75 = v62;
              if (v72)
              {
                v76 = (*(*v71 + 216))(v74);
                if (*(v76 + 16))
                {
                  v77 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690);
                  v78 = v196;
                  v5 = v69;
                  if (v79)
                  {
                    outlined init with copy of Any(*(v76 + 56) + 32 * v77, v204);

                    v80 = swift_dynamicCast();
                    v81 = v80 == 0;
                    if (v80)
                    {
                      v82 = v202;
                    }

                    else
                    {
                      v82 = 0;
                    }

                    if (v81)
                    {
                      v83 = 0;
                    }

                    else
                    {
                      v83 = v203;
                    }
                  }

                  else
                  {

                    v82 = 0;
                    v83 = 0;
                  }
                }

                else
                {

                  v82 = 0;
                  v83 = 0;
                  v78 = v196;
                  v5 = v69;
                }

                v90 = &off_279A51000;
                v91 = (*(*v199 + 128))(v82, v83);
              }

              else
              {
                v84 = (*(*v71 + 216))(v74);
                if (*(v84 + 16))
                {
                  v85 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690);
                  v5 = v69;
                  if (v86)
                  {
                    outlined init with copy of Any(*(v84 + 56) + 32 * v85, v204);

                    v87 = swift_dynamicCast();
                    if (v87)
                    {
                      v88 = v202;
                    }

                    else
                    {
                      v88 = 0;
                    }

                    if (v87)
                    {
                      v89 = v203;
                    }

                    else
                    {
                      v89 = 0;
                    }
                  }

                  else
                  {

                    v88 = 0;
                    v89 = 0;
                  }
                }

                else
                {

                  v88 = 0;
                  v89 = 0;
                  v5 = v69;
                }

                v90 = &off_279A51000;
                v92 = (*(*v62 + 256))();
                if (v92[2])
                {
                  v94 = v92[4];
                  v93 = v92[5];

                  v75 = v201;
                }

                else
                {
                  v94 = 0;
                  v93 = 0;
                }

                v91 = (*(*v199 + 120))(v88, v89, v94, v93);

                v78 = v196;
              }

              [v9 v90[442]];
              if ([v9 appFollowup] == 4)
              {
                v95 = (*(*v75 + 328))();
                (*(*v95 + 112))(4);
              }
            }

            else
            {
              [v9 setHasUserInitiatedFollowup_];
              [v9 setAppFollowup_];
              v78 = v196;
            }

            [v5 setCommonSignal_];
            v96 = v198;
            UUID.init()();
            v97 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v99 = [v97 initWithNSUUID_];

            v100 = v197;
            v102 = v197 + 8;
            v101 = *(v197 + 8);
            v101(v96, v23);
            [v78 setPseId_];

            v103 = v201;
            (*(*v201 + 160))();
            v104 = v191;
            UUID.init(uuidString:)();

            v179 = *(v100 + 48);
            if (v179(v104, 1, v23) == 1)
            {
              v105 = outlined destroy of UUID?(v104);
              v106 = v192;
              v107 = v102;
              v108 = &off_279A51000;
            }

            else
            {
              v109 = *(v100 + 32);
              v110 = v189;
              v109(v189, v104, v23);
              v111 = objc_allocWithZone(MEMORY[0x277D5AC78]);
              v112 = UUID._bridgeToObjectiveC()().super.isa;
              v108 = &off_279A51000;
              v113 = [v111 initWithNSUUID_];

              [v78 setUiSessionId_];
              v105 = (v101)(v110, v23);
              v106 = v192;
              v107 = v102;
            }

            v114 = ((*(*v103 + 208))(v105) + 16);
            v115 = *v114;
            v5 = &SiriExecutionTask;
            v178 = v101;
            if (v115)
            {
              v116 = &v114[2 * v115];
              v117 = *v116;
              v118 = v116[1];

              v23 = v184;

              UUID.init(uuidString:)();

              if (v179(v106, 1, v23) != 1)
              {
                v133 = v188;
                (*(v197 + 32))(v188, v106, v23);
                v128 = 0x277D5A000uLL;
                v134 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                v135 = UUID._bridgeToObjectiveC()().super.isa;
                v136 = [v134 v108[449]];

                [v196 setOriginalLastRequestId_];
                v132 = (v101)(v133, v23);
                v33 = v181;
                goto LABEL_125;
              }

              outlined destroy of UUID?(v106);
            }

            else
            {
            }

            if (one-time initialization token for engagement != -1)
            {
              swift_once();
            }

            v119 = type metadata accessor for Logger();
            __swift_project_value_buffer(v119, static Logger.engagement);
            v120 = *MEMORY[0x277D615E0];
            v121 = type metadata accessor for EngagementSignalCollectionError();
            v122 = v195;
            (*(*(v121 - 8) + 104))(v195, v120, v121);
            (*(v186 + 104))(v122, *MEMORY[0x277D616A8], v187);
            v123 = Logger.logObject.getter();
            v124 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v123, v124))
            {
              v125 = swift_slowAlloc();
              v126 = swift_slowAlloc();
              v204[0]._countAndFlagsBits = v126;
              *v125 = 136315138;
              *(v125 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000025ED7E6D0, &v204[0]._countAndFlagsBits);
              _os_log_impl(&dword_25ECEC000, v123, v124, "%s", v125, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v126);
              MEMORY[0x25F8CEE50](v126, -1, -1);
              v127 = v125;
              v23 = v184;
              MEMORY[0x25F8CEE50](v127, -1, -1);
            }

            v33 = v181;
            v128 = 0x277D5A000;
            type metadata accessor for SiriTaskEngagementUtils();
            v129 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
            v130 = v195;
            MEMORY[0x25F8CDB30](v195, v129, v131);

            v132 = (*(v186 + 8))(v130, v187);
            v5 = 0x280FEE000;
LABEL_125:
            (*(*v201 + 184))(v132);
            v137 = v193;
            UUID.init(uuidString:)();
            v138 = v137;

            if (v179(v137, 1, v23) != 1)
            {
              v148 = v128;
              v149 = v190;
              (*(v197 + 32))(v190, v138, v23);
              v150 = objc_allocWithZone(*(v148 + 3192));
              v151 = UUID._bridgeToObjectiveC()().super.isa;
              v152 = [v150 v108[449]];

              v4 = v196;
              [v196 setTaskId_];

              v153 = v178(v149, v23);
              v9 = v185;
LABEL_131:
              v157 = (*(*v201 + 328))(v153);
              v158 = (*(*v157 + 104))(v157);

              v159 = v199;
              v160 = [v4 setSiriEngagementTaskSuccess_];
              [v4 setTriggerOrigin_];
              v161 = v200;
              [v200 setEventMetadata_];
              [v161 setGenericSignalGenerated_];
              if (*(v5 + 1440) != -1)
              {
                swift_once();
              }

              v162 = type metadata accessor for Logger();
              __swift_project_value_buffer(v162, static Logger.engagement);
              v163 = *MEMORY[0x277D61628];
              v164 = type metadata accessor for SELFPSELogged();
              (*(*(v164 - 8) + 104))(v33, v163, v164);
              (*(v186 + 104))(v33, *MEMORY[0x277D61658], v187);
              v165 = Logger.logObject.getter();
              v166 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v165, v166))
              {
                v167 = swift_slowAlloc();
                v168 = swift_slowAlloc();
                v204[0]._countAndFlagsBits = v168;
                *v167 = 136315138;
                *(v167 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000037, 0x800000025ED7F260, &v204[0]._countAndFlagsBits);
                _os_log_impl(&dword_25ECEC000, v165, v166, "%s", v167, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v168);
                MEMORY[0x25F8CEE50](v168, -1, -1);
                v169 = v167;
                v23 = v184;
                v33 = v181;
                MEMORY[0x25F8CEE50](v169, -1, -1);
              }

              type metadata accessor for SiriTaskEngagementUtils();
              v170 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
              MEMORY[0x25F8CDB30](v33, v170, v171);

              (*(v186 + 8))(v33, v187);
              v172 = [objc_opt_self() sharedAnalytics];
              v173 = [v172 defaultMessageStream];

              v174 = v198;
              UUID.init()();
              v175 = UUID._bridgeToObjectiveC()().super.isa;
              v178(v174, v23);
              v176 = v200;
              [v173 emitMessage:v200 isolatedStreamUUID:v175];
            }

            v197 = v107;
            outlined destroy of UUID?(v137);
            v4 = v196;
            v9 = v185;
            if (*(v5 + 1440) == -1)
            {
LABEL_127:
              v139 = type metadata accessor for Logger();
              __swift_project_value_buffer(v139, static Logger.engagement);
              v140 = *MEMORY[0x277D615C8];
              v141 = type metadata accessor for EngagementSignalCollectionError();
              v142 = v194;
              (*(*(v141 - 8) + 104))(v194, v140, v141);
              (*(v186 + 104))(v142, *MEMORY[0x277D616A8], v187);
              v143 = Logger.logObject.getter();
              v144 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v143, v144))
              {
                v145 = swift_slowAlloc();
                v146 = swift_slowAlloc();
                v204[0]._countAndFlagsBits = v146;
                *v145 = 136315138;
                *(v145 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000025ED7E700, &v204[0]._countAndFlagsBits);
                _os_log_impl(&dword_25ECEC000, v143, v144, "%s", v145, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v146);
                MEMORY[0x25F8CEE50](v146, -1, -1);
                v147 = v145;
                v23 = v184;
                v33 = v181;
                MEMORY[0x25F8CEE50](v147, -1, -1);
              }

              type metadata accessor for SiriTaskEngagementUtils();
              v154 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
              v155 = v194;
              MEMORY[0x25F8CDB30](v194, v154, v156);

              v153 = (*(v186 + 8))(v155, v187);
              goto LABEL_131;
            }

LABEL_140:
            swift_once();
            goto LABEL_127;
          }

          v2 = 0;
          goto LABEL_50;
        }

        v41 = v196;
        v40 = v185;
      }

      else
      {
        v40 = v196;
        v41 = v200;
      }

      v39 = v40;
    }

    else
    {
LABEL_24:
      v39 = v200;
    }
  }

  if (one-time initialization token for engagement != -1)
  {
LABEL_43:
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Logger.engagement);
  v44 = *MEMORY[0x277D615B0];
  v45 = type metadata accessor for EngagementSignalCollectionError();
  (*(*(v45 - 8) + 104))(v9, v44, v45);
  (*(v5 + 104))(v9, *MEMORY[0x277D616A8], v4);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v204[0]._countAndFlagsBits = v49;
    *v48 = 136315138;
    *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000025ED7F220, &v204[0]._countAndFlagsBits);
    _os_log_impl(&dword_25ECEC000, v46, v47, "%s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x25F8CEE50](v49, -1, -1);
    MEMORY[0x25F8CEE50](v48, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v50 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v9, v50, v51);

  return (*(v5 + 8))(v9, v4);
}

uint64_t AnswerCallsIntentSignalFactory.donatedBySiriCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t AnswerCallsIntentSignalFactory.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t AnswerCallsIntentSignalFactory.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

void AnswerCallsIntentSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, char *a2)
{
  v500 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v504 = &v470 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v503 = &v470 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v502 = &v470 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v501 = &v470 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v490 = &v470 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v489 = &v470 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v488 = &v470 - v18;
  MEMORY[0x28223BE20](v17);
  v487 = &v470 - v19;
  v20 = type metadata accessor for Date();
  v505 = *(v20 - 1);
  v506 = v20;
  v21 = *(v505 + 8);
  v22 = MEMORY[0x28223BE20](v20);
  v494 = &v470 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v495 = &v470 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v496 = &v470 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v480 = &v470 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v483 = &v470 - v31;
  MEMORY[0x28223BE20](v30);
  v484 = &v470 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v497 = &v470 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v498 = &v470 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v492 = &v470 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v493 = &v470 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v485 = &v470 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v486 = &v470 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v481 = &v470 - v48;
  MEMORY[0x28223BE20](v47);
  v482 = &v470 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50 - 8);
  v54 = &v470 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v470 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = &v470 - v59;
  MEMORY[0x28223BE20](v58);
  v62 = &v470 - v61;
  v63 = type metadata accessor for ReliabilityCategory();
  v64 = *(v63 - 8);
  v65 = *(v64 + 64);
  v66 = MEMORY[0x28223BE20](v63);
  v68 = &v470 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x25F8CE7F0](v66);
  v70 = v507;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, &v509, &v511._countAndFlagsBits);
  if (v70)
  {
    objc_autoreleasePoolPop(v69);
    return;
  }

  v473 = v68;
  v474 = v64;
  v475 = v63;
  v476 = v54;
  v478 = v57;
  v471 = v60;
  v472 = v62;
  v479 = a1;
  v477 = 0;
  objc_autoreleasePoolPop(v69);
  countAndFlagsBits = v511._countAndFlagsBits;
  v507 = [v511._countAndFlagsBits intent];
  v71 = [v507 domain];
  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;

  if (v72 == 0x736C6C6143 && v74 == 0xE500000000000000)
  {

    v75 = v479;
    v76 = v478;
  }

  else
  {
    v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v75 = v479;
    v76 = v478;
    if ((v77 & 1) == 0)
    {
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      __swift_project_value_buffer(v93, static Logger.engagement);
      v511._countAndFlagsBits = 0;
      v511._object = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x25F8CE090](0xD000000000000012, 0x800000025ED7F2D0);
      v94 = [v507 domain];
      v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = v96;

      MEMORY[0x25F8CE090](v95, v97);

      MEMORY[0x25F8CE090](0xD000000000000023, 0x800000025ED7F2F0);
      v98 = v511;
      v99 = *MEMORY[0x277D616E0];
      v100 = type metadata accessor for AppIntentEventDataIssues();
      v101 = v473;
      (*(*(v100 - 8) + 104))(v473, v99, v100);
      v102 = v474;
      v103 = v475;
      (*(v474 + 104))(v101, *MEMORY[0x277D61678], v475);

      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v511._countAndFlagsBits = v107;
        *v106 = 136315138;
        *(v106 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98._countAndFlagsBits, v98._object, &v511._countAndFlagsBits);
        _os_log_impl(&dword_25ECEC000, v104, v105, "%s", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v107);
        MEMORY[0x25F8CEE50](v107, -1, -1);
        MEMORY[0x25F8CEE50](v106, -1, -1);
      }

      type metadata accessor for SiriTaskEngagementUtils();
      v108 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
      MEMORY[0x25F8CDB30](v101, v108, v109);

      (*(v102 + 8))(v101, v103);
      return;
    }
  }

  if (![v75 donatedBySiri])
  {
    goto LABEL_15;
  }

  v78 = [v75 intentClass];
  if (!v78)
  {
    goto LABEL_15;
  }

  v79 = v78;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v80 = String.lowercased()();

  v511 = v80;
  *&v509 = 0xD000000000000010;
  *(&v509 + 1) = 0x800000025ED7F3E0;
  v81 = lazy protocol witness table accessor for type String and conformance String();
  LOBYTE(v79) = StringProtocol.contains<A>(_:)();

  if ((v79 & 1) == 0)
  {
LABEL_15:
    if ([v75 donatedBySiri])
    {
      goto LABEL_16;
    }

    v90 = [v75 absoluteTimestamp];
    if (v90)
    {
      v91 = v90;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v92 = 0;
    }

    else
    {
      v92 = 1;
    }

    v110 = v505;
    v111 = v496;
    v112 = v494;
    v113 = v493;
    v114 = v492;
    v115 = 1;
    (*(v505 + 7))(v76, v92, 1, v506);
    v116 = [countAndFlagsBits dateInterval];
    if (v116)
    {
      v117 = v116;
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      v115 = 0;
    }

    v118 = type metadata accessor for DateInterval();
    v119 = *(v118 - 8);
    v120 = v119;
    v496 = *(v119 + 56);
    v494 = (v119 + 56);
    (v496)(v114, v115, 1, v118);
    outlined init with take of DateInterval?(v114, v113, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v493 = *(v120 + 48);
    v121 = 0;
    if (!(v493)(v113, 1, v118))
    {
      DateInterval.duration.getter();
      v121 = v122;
    }

    outlined destroy of Date?(v113, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v123 = *(v110 + 2);
    v124 = v111;
    v125 = v111;
    v126 = v500;
    v127 = v506;
    v123(v124, v500, v506);
    v128 = &v126[*(type metadata accessor for SiriUISession(0) + 20)];
    v129 = v495;
    v123(v495, v128, v127);
    v130 = v505;
    v131 = v476;
    outlined init with copy of Date?(v76, v476);
    LODWORD(v489) = (*(v130 + 6))(v131, 1, v127);
    if (v489 == 1)
    {
      v144 = *(v130 + 1);
      v144(v129, v127);
      v144(v125, v127);
      outlined destroy of Date?(v76, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of Date?(v131, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v490 = 0x3FF0000000000000;
      v133 = 0;
      v137 = 0.0;
      v143 = 0.0;
      v121 = 0;
    }

    else
    {
      (*(v130 + 4))(v112, v131, v127);
      Date.timeIntervalSinceReferenceDate.getter();
      v133 = v132;
      Date.timeIntervalSinceReferenceDate.getter();
      v135 = v134;
      Date.timeIntervalSinceReferenceDate.getter();
      v137 = v135 - v136;
      Date.timeIntervalSinceReferenceDate.getter();
      v139 = v138;
      Date.timeIntervalSinceReferenceDate.getter();
      v141 = v140;
      v142 = *(v130 + 1);
      v142(v112, v127);
      v142(v129, v127);
      v142(v125, v127);
      outlined destroy of Date?(v478, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v490 = 0;
      v143 = v139 - v141;
    }

    v145 = [countAndFlagsBits dateInterval];
    v146 = v497;
    if (v145)
    {
      v147 = v145;
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      v148 = 0;
    }

    else
    {
      v148 = 1;
    }

    (v496)(v146, v148, 1, v118);
    v149 = v146;
    v150 = v498;
    outlined init with take of DateInterval?(v149, v498, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    if ((v493)(v150, 1, v118))
    {
      outlined destroy of Date?(v150, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      v512 = MEMORY[0x277D83B88];
      v511._countAndFlagsBits = -1;
    }

    else
    {
      DateInterval.duration.getter();
      v510 = MEMORY[0x277D839F8];
      *&v509 = v151;
      outlined destroy of Date?(v150, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      outlined init with take of Any(&v509, &v511);
    }

    outlined init with take of Any(&v511, &v509);
    v152 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v508 = v152;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0x617275446C6C6163, 0xEC0000006E6F6974, isUniquelyReferenced_nonNull_native);
    v154 = v508;
    v155 = [v507 parametersByName];
    v156 = MEMORY[0x277D837D0];
    if (v155)
    {
      v157 = v155;
      v158 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v158 + 16))
      {
        v159 = specialized __RawDictionaryStorage.find<A>(_:)(0x756F526F69647561, 0xEA00000000006574);
        if (v160)
        {
          outlined init with copy of Any(*(v158 + 56) + 32 * v159, &v509);

          outlined init with take of Any(&v509, &v511);
          goto LABEL_44;
        }
      }
    }

    v512 = v156;
    v511._countAndFlagsBits = 0;
    v511._object = 0xE000000000000000;
LABEL_44:
    outlined init with take of Any(&v511, &v509);
    v161 = swift_isUniquelyReferenced_nonNull_native();
    v508 = v154;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0x756F526F69647561, 0xEA00000000006574, v161);
    v162 = v508;
    v163 = v479;
    v164 = [v479 donatedBySiri];
    v165 = MEMORY[0x277D839B0];
    v512 = MEMORY[0x277D839B0];
    LOBYTE(v511._countAndFlagsBits) = v164;
    outlined init with take of Any(&v511, &v509);
    v166 = swift_isUniquelyReferenced_nonNull_native();
    v508 = v162;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0x42646574616E6F64, 0xED00006972695379, v166);
    v167 = v508;
    v168 = [v507 typeName];
    v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v171 = v170;

    v512 = v156;
    v511._countAndFlagsBits = v169;
    v511._object = v171;
    outlined init with take of Any(&v511, &v509);
    v172 = swift_isUniquelyReferenced_nonNull_native();
    v508 = v167;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0x7954746E65746E69, 0xEE00656D614E6570, v172);
    v173 = v508;
    v174 = [v163 bundleID];
    if (v174)
    {
      v175 = v174;
      v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v178 = v177;
    }

    else
    {
      v176 = 0;
      v178 = 0xE000000000000000;
    }

    v511._countAndFlagsBits = v176;
    v511._object = v178;
    *&v509 = 0x6C7070612E6D6F63;
    *(&v509 + 1) = 0xEA00000000002E65;
    lazy protocol witness table accessor for type String and conformance String();
    v179 = StringProtocol.contains<A>(_:)();

    v512 = v165;
    LOBYTE(v511._countAndFlagsBits) = v179 & 1;
    outlined init with take of Any(&v511, &v509);
    v180 = swift_isUniquelyReferenced_nonNull_native();
    v508 = v173;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0xD000000000000016, 0x800000025ED7E770, v180);
    v495 = v508;
    (*(*v499 + 136))(0);
    v181 = [v507 donationMetadata];
    if (v181)
    {
      v182 = v181;
      objc_opt_self();
      v183 = swift_dynamicCastObjCClass();
      if (v183)
      {
        v184 = v183;
        [v183 callDuration];
        v185 = MEMORY[0x277D839F8];
        v512 = MEMORY[0x277D839F8];
        v511._countAndFlagsBits = v186;
        outlined init with take of Any(&v511, &v509);
        v187 = v495;
        v188 = swift_isUniquelyReferenced_nonNull_native();
        v508 = v187;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0x617275446C6C6163, 0xEC0000006E6F6974, v188);
        v189 = v508;
        [v184 timeToEstablish];
        v512 = v185;
        v511._countAndFlagsBits = v190;
        outlined init with take of Any(&v511, &v509);
        v191 = swift_isUniquelyReferenced_nonNull_native();
        v508 = v189;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0xD000000000000018, 0x800000025ED7F380, v191);
        v192 = v508;
        v193 = [v184 recentCallStatus];
        if (v193)
        {
          v194 = v193;
          v510 = type metadata accessor for NSNumber();
          *&v509 = v194;
          outlined init with take of Any(&v509, &v511);
        }

        else
        {
          v512 = MEMORY[0x277D83B88];
          v511._countAndFlagsBits = 0;
        }

        outlined init with take of Any(&v511, &v509);
        v195 = swift_isUniquelyReferenced_nonNull_native();
        v508 = v192;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0xD000000000000010, 0x800000025ED7F3A0, v195);
        v196 = v508;
        v197 = [v184 disconnectedReason];
        if (v197)
        {
          v198 = v197;
          v510 = type metadata accessor for NSNumber();
          *&v509 = v198;
          outlined init with take of Any(&v509, &v511);
        }

        else
        {
          v512 = MEMORY[0x277D83B88];
          v511._countAndFlagsBits = 0;
        }

        outlined init with take of Any(&v511, &v509);
        v199 = swift_isUniquelyReferenced_nonNull_native();
        v508 = v196;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0xD000000000000012, 0x800000025ED7F3C0, v199);

        v495 = v508;
      }

      else
      {
      }
    }

    v200 = [v507 parametersByName];
    if (v200)
    {
      v201 = v200;
      v202 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v202 + 16))
      {
        v203 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xE800000000000000);
        if (v204)
        {
          outlined init with copy of Any(*(v202 + 56) + 32 * v203, &v511);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_107;
          }

          v205 = v509;
          if (v509 >> 62)
          {
            if (v509 < 0)
            {
              v466 = v509;
            }

            else
            {
              v466 = v509 & 0xFFFFFFFFFFFFFF8;
            }

            v467 = v509;
            v206 = MEMORY[0x25F8CE500](v466);
            v205 = v467;
            if (v206)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v206 = *((v509 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v206)
            {
LABEL_65:
              if (v206 < 1)
              {
                __break(1u);
                goto LABEL_203;
              }

              v207 = 0;
              v208 = MEMORY[0x277D84F90];
              v492 = (v205 & 0xC000000000000001);
              v209 = MEMORY[0x277D84F90];
              v210 = MEMORY[0x277D84F90];
              v211 = MEMORY[0x277D84F90];
              v494 = v205;
              v493 = v206;
              while (1)
              {
                if (v492)
                {
                  v212 = MEMORY[0x25F8CE460](v207);
                }

                else
                {
                  v212 = *(v205 + 8 * v207 + 32);
                }

                v213 = v212;
                v214 = [v212 personHandle];
                if (v214 && (v215 = v214, v216 = [v214 value], v215, v216))
                {
                  v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v219 = v218;
                }

                else
                {
                  v217 = 0;
                  v219 = 0xE000000000000000;
                }

                v220 = swift_isUniquelyReferenced_nonNull_native();
                v506 = v213;
                if ((v220 & 1) == 0)
                {
                  v211 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v211 + 2) + 1, 1, v211);
                }

                v498 = v207;
                v222 = *(v211 + 2);
                v221 = *(v211 + 3);
                v497 = v209;
                if (v222 >= v221 >> 1)
                {
                  v211 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v221 > 1), v222 + 1, 1, v211);
                }

                *(v211 + 2) = v222 + 1;
                v223 = &v211[16 * v222];
                *(v223 + 4) = v217;
                *(v223 + 5) = v219;
                v224 = [v506 displayName];
                static String._unconditionallyBridgeFromObjectiveC(_:)();

                v225 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
                v227 = v226;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v210 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v210 + 2) + 1, 1, v210);
                }

                v229 = *(v210 + 2);
                v228 = *(v210 + 3);
                if (v229 >= v228 >> 1)
                {
                  v210 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v228 > 1), v229 + 1, 1, v210);
                }

                *(v210 + 2) = v229 + 1;
                v230 = &v210[16 * v229];
                *(v230 + 4) = v225;
                *(v230 + 5) = v227;
                v231 = [v506 nameComponents];
                v505 = v208;
                v500 = v210;
                v499 = v211;
                if (v231)
                {
                  v232 = v502;
                  v233 = v231;
                  static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

                  v234 = 0;
                }

                else
                {
                  v234 = 1;
                  v232 = v502;
                }

                v235 = type metadata accessor for PersonNameComponents();
                v236 = *(v235 - 8);
                v496 = *(v236 + 56);
                (v496)(v232, v234, 1, v235);
                v237 = v232;
                v238 = v501;
                outlined init with take of DateInterval?(v237, v501, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
                v239 = *(v236 + 48);
                if (v239(v238, 1, v235))
                {
                  break;
                }

                PersonNameComponents.givenName.getter();
                v241 = v240;
                outlined destroy of Date?(v238, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
                if (!v241)
                {
                  goto LABEL_87;
                }

LABEL_89:
                v242 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
                v244 = v243;

                v245 = v497;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v245 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v245 + 2) + 1, 1, v245);
                }

                v247 = *(v245 + 2);
                v246 = *(v245 + 3);
                v248 = v245;
                if (v247 >= v246 >> 1)
                {
                  v248 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v246 > 1), v247 + 1, 1, v245);
                }

                *(v248 + 2) = v247 + 1;
                v209 = v248;
                v249 = &v248[16 * v247];
                *(v249 + 4) = v242;
                *(v249 + 5) = v244;
                v250 = [v506 nameComponents];
                if (v250)
                {
                  v251 = v504;
                  v252 = v250;
                  static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

                  v253 = 0;
                }

                else
                {
                  v253 = 1;
                  v251 = v504;
                }

                v254 = v503;
                (v496)(v251, v253, 1, v235);
                outlined init with take of DateInterval?(v251, v254, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
                if (v239(v254, 1, v235))
                {
                  outlined destroy of Date?(v254, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
                  v208 = v505;
                  v210 = v500;
                  v211 = v499;
                }

                else
                {
                  PersonNameComponents.familyName.getter();
                  v256 = v255;
                  outlined destroy of Date?(v254, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
                  v208 = v505;
                  v210 = v500;
                  v211 = v499;
                  if (v256)
                  {
                    goto LABEL_100;
                  }
                }

LABEL_100:
                v257 = v498;
                v258 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
                v260 = v259;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v208 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v208 + 2) + 1, 1, v208);
                }

                v262 = *(v208 + 2);
                v261 = *(v208 + 3);
                if (v262 >= v261 >> 1)
                {
                  v208 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v261 > 1), v262 + 1, 1, v208);
                }

                v207 = v257 + 1;

                *(v208 + 2) = v262 + 1;
                v263 = &v208[16 * v262];
                *(v263 + 4) = v258;
                *(v263 + 5) = v260;
                v205 = v494;
                if (v493 == v207)
                {

                  goto LABEL_108;
                }
              }

              outlined destroy of Date?(v238, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
LABEL_87:

              goto LABEL_89;
            }
          }
        }
      }
    }

LABEL_107:
    v208 = MEMORY[0x277D84F90];
    v209 = MEMORY[0x277D84F90];
    v210 = MEMORY[0x277D84F90];
    v211 = MEMORY[0x277D84F90];
LABEL_108:
    v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v512 = v264;
    v511._countAndFlagsBits = v211;
    outlined init with take of Any(&v511, &v509);
    v265 = v495;
    v266 = swift_isUniquelyReferenced_nonNull_native();
    v508 = v265;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0x73746361746E6F63, 0xED000065756C6156, v266);
    v267 = v508;
    v512 = v264;
    v511._countAndFlagsBits = v210;
    outlined init with take of Any(&v511, &v509);
    v268 = swift_isUniquelyReferenced_nonNull_native();
    v508 = v267;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0xD000000000000013, 0x800000025ED7F320, v268);
    v269 = v508;
    v512 = v264;
    v511._countAndFlagsBits = v209;
    outlined init with take of Any(&v511, &v509);
    v270 = swift_isUniquelyReferenced_nonNull_native();
    v508 = v269;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0xD000000000000011, 0x800000025ED7F340, v270);
    v271 = v508;
    v512 = v264;
    v511._countAndFlagsBits = v208;
    outlined init with take of Any(&v511, &v509);
    v272 = swift_isUniquelyReferenced_nonNull_native();
    v508 = v271;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0xD000000000000010, 0x800000025ED7F360, v272);
    v273 = v508;
    v274 = [v507 verb];
    v275 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v277 = v276;

    if ([countAndFlagsBits direction] == 2)
    {

      v277 = 0xEA00000000006C6CLL;
      v275 = 0x6143726577736E41;
    }

    v278 = v489 != 1;
    v279 = v507;
    v280 = [v507 domain];
    v281 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v283 = v282;

    type metadata accessor for Signal();
    v284 = swift_allocObject();
    *(v284 + 16) = v133;
    *(v284 + 24) = v137;
    *(v284 + 32) = v143;
    *(v284 + 40) = v121;
    *(v284 + 48) = v490;
    *(v284 + 56) = v278;
    *(v284 + 64) = v281;
    *(v284 + 72) = v283;
    *(v284 + 80) = v275;
    *(v284 + 88) = v277;
    *(v284 + 96) = 1;
    *(v284 + 104) = v273;
    return;
  }

  v82 = specialized static PSEBiomeEventsSourceFetcher.fetchAppIntentEventAfter(answerEvent:)(v75);
  if (!v82)
  {
LABEL_16:

    return;
  }

  v83 = v82;
  v84 = [v82 intentClass];
  if (!v84)
  {
    goto LABEL_53;
  }

  v85 = v84;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v86 = String.lowercased()();

  v511 = v86;
  *&v509 = 0x65746E696C6C6163;
  *(&v509 + 1) = 0xEA0000000000746ELL;
  LOBYTE(v85) = StringProtocol.contains<A>(_:)();

  if ((v85 & 1) == 0)
  {
LABEL_53:

    goto LABEL_16;
  }

  v88 = MEMORY[0x25F8CE7F0](v87);
  v89 = v477;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(v83, &v509, &v511._countAndFlagsBits);
  if (v89)
  {
    objc_autoreleasePoolPop(v88);

    return;
  }

  objc_autoreleasePoolPop(v88);
  v285 = v511._countAndFlagsBits;
  v504 = [v511._countAndFlagsBits intent];
  v286 = [v75 absoluteTimestamp];
  v477 = 0;
  v493 = v83;
  if (v286)
  {
    v287 = v472;
    v288 = v286;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v289 = 0;
    v290 = v505;
    v291 = v484;
  }

  else
  {
    v289 = 1;
    v290 = v505;
    v291 = v484;
    v287 = v472;
  }

  v292 = v471;
  v293 = 1;
  (*(v290 + 7))(v287, v289, 1, v506);
  v294 = [v285 dateInterval];
  v295 = v500;
  v498 = v285;
  v475 = v81;
  if (v294)
  {
    v296 = v481;
    v297 = v294;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v293 = 0;
    v298 = v482;
  }

  else
  {
    v298 = v482;
    v296 = v481;
  }

  v299 = type metadata accessor for DateInterval();
  v300 = *(v299 - 8);
  v301 = *(v300 + 56);
  v502 = (v300 + 56);
  v503 = v301;
  (v301)(v296, v293, 1, v299);
  outlined init with take of DateInterval?(v296, v298, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v501 = *(v300 + 48);
  v121 = 0;
  if (!(v501)(v298, 1, v299))
  {
    DateInterval.duration.getter();
    v121 = v302;
  }

  outlined destroy of Date?(v298, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v303 = v505;
  v304 = *(v505 + 2);
  v305 = v291;
  v306 = v295;
  v307 = v291;
  v308 = v295;
  v309 = v506;
  v304(v305, v306, v506);
  v310 = &v308[*(type metadata accessor for SiriUISession(0) + 20)];
  v311 = v483;
  v304(v483, v310, v309);
  v312 = v309;
  v313 = v472;
  outlined init with copy of Date?(v472, v292);
  LODWORD(v484) = (*(v303 + 6))(v292, 1, v312);
  if (v484 == 1)
  {
    v327 = *(v303 + 1);
    v327(v311, v312);
    v327(v307, v312);
    outlined destroy of Date?(v313, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of Date?(v292, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v326 = 0x3FF0000000000000;
    v133 = 0;
    v137 = 0.0;
    v143 = 0.0;
    v121 = 0;
  }

  else
  {
    v314 = v292;
    v315 = v313;
    v316 = v480;
    (*(v303 + 4))(v480, v314, v312);
    Date.timeIntervalSinceReferenceDate.getter();
    v133 = v317;
    Date.timeIntervalSinceReferenceDate.getter();
    v319 = v318;
    Date.timeIntervalSinceReferenceDate.getter();
    v137 = v319 - v320;
    Date.timeIntervalSinceReferenceDate.getter();
    v322 = v321;
    Date.timeIntervalSinceReferenceDate.getter();
    v324 = v323;
    v325 = *(v303 + 1);
    v325(v316, v312);
    v325(v311, v312);
    v325(v307, v312);
    outlined destroy of Date?(v315, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v326 = 0;
    v143 = v322 - v324;
  }

  v328 = v485;
  v329 = [v498 dateInterval];
  v330 = v486;
  if (v329)
  {
    v331 = v329;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v332 = 0;
  }

  else
  {
    v332 = 1;
  }

  (v503)(v328, v332, 1, v299);
  outlined init with take of DateInterval?(v328, v330, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v333 = (v501)(v330, 1, v299);
  v492 = v326;
  if (v333)
  {
    outlined destroy of Date?(v330, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v512 = MEMORY[0x277D83B88];
    v511._countAndFlagsBits = -1;
  }

  else
  {
    DateInterval.duration.getter();
    v510 = MEMORY[0x277D839F8];
    *&v509 = v334;
    outlined destroy of Date?(v330, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    outlined init with take of Any(&v509, &v511);
  }

  outlined init with take of Any(&v511, &v509);
  v335 = MEMORY[0x277D84F98];
  v336 = swift_isUniquelyReferenced_nonNull_native();
  v508 = v335;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0x617275446C6C6163, 0xEC0000006E6F6974, v336);
  v337 = v508;
  v338 = [v504 parametersByName];
  if (v338)
  {
    v339 = v338;
    v340 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v340 + 16))
    {
      v341 = specialized __RawDictionaryStorage.find<A>(_:)(0x756F526F69647561, 0xEA00000000006574);
      if (v342)
      {
        outlined init with copy of Any(*(v340 + 56) + 32 * v341, &v509);

        outlined init with take of Any(&v509, &v511);
        v343 = MEMORY[0x277D837D0];
        goto LABEL_134;
      }
    }
  }

  v343 = MEMORY[0x277D837D0];
  v512 = MEMORY[0x277D837D0];
  v511._countAndFlagsBits = 0;
  v511._object = 0xE000000000000000;
LABEL_134:
  outlined init with take of Any(&v511, &v509);
  v344 = swift_isUniquelyReferenced_nonNull_native();
  v508 = v337;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0x756F526F69647561, 0xEA00000000006574, v344);
  v345 = v508;
  v346 = v479;
  v347 = [v479 donatedBySiri];
  v348 = MEMORY[0x277D839B0];
  v512 = MEMORY[0x277D839B0];
  LOBYTE(v511._countAndFlagsBits) = v347;
  outlined init with take of Any(&v511, &v509);
  v349 = swift_isUniquelyReferenced_nonNull_native();
  v508 = v345;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0x42646574616E6F64, 0xED00006972695379, v349);
  v350 = v508;
  v351 = [v504 typeName];
  v352 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v354 = v353;

  v512 = v343;
  v511._countAndFlagsBits = v352;
  v511._object = v354;
  outlined init with take of Any(&v511, &v509);
  v355 = swift_isUniquelyReferenced_nonNull_native();
  v508 = v350;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0x7954746E65746E69, 0xEE00656D614E6570, v355);
  v356 = v508;
  v357 = [v346 bundleID];
  if (v357)
  {
    v358 = v357;
    v359 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v361 = v360;
  }

  else
  {
    v359 = 0;
    v361 = 0xE000000000000000;
  }

  v511._countAndFlagsBits = v359;
  v511._object = v361;
  *&v509 = 0x6C7070612E6D6F63;
  *(&v509 + 1) = 0xEA00000000002E65;
  v362 = StringProtocol.contains<A>(_:)();

  v512 = v348;
  LOBYTE(v511._countAndFlagsBits) = v362 & 1;
  outlined init with take of Any(&v511, &v509);
  v363 = swift_isUniquelyReferenced_nonNull_native();
  v508 = v356;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0xD000000000000016, 0x800000025ED7E770, v363);
  v497 = v508;
  v364 = [v504 donationMetadata];
  if (v364)
  {
    v365 = v364;
    objc_opt_self();
    v366 = swift_dynamicCastObjCClass();
    if (v366)
    {
      v367 = v366;
      [v366 callDuration];
      v368 = MEMORY[0x277D839F8];
      v512 = MEMORY[0x277D839F8];
      v511._countAndFlagsBits = v369;
      outlined init with take of Any(&v511, &v509);
      v370 = v497;
      v371 = swift_isUniquelyReferenced_nonNull_native();
      v508 = v370;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0x617275446C6C6163, 0xEC0000006E6F6974, v371);
      v372 = v508;
      [v367 timeToEstablish];
      v512 = v368;
      v511._countAndFlagsBits = v373;
      outlined init with take of Any(&v511, &v509);
      v374 = swift_isUniquelyReferenced_nonNull_native();
      v508 = v372;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0xD000000000000018, 0x800000025ED7F380, v374);
      v375 = v508;
      v376 = [v367 recentCallStatus];
      if (v376)
      {
        v377 = v376;
        v510 = type metadata accessor for NSNumber();
        *&v509 = v377;
        outlined init with take of Any(&v509, &v511);
      }

      else
      {
        v512 = MEMORY[0x277D83B88];
        v511._countAndFlagsBits = 0;
      }

      outlined init with take of Any(&v511, &v509);
      v378 = swift_isUniquelyReferenced_nonNull_native();
      v508 = v375;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0xD000000000000010, 0x800000025ED7F3A0, v378);
      v379 = v508;
      v380 = [v367 disconnectedReason];
      if (v380)
      {
        v381 = v380;
        v510 = type metadata accessor for NSNumber();
        *&v509 = v381;
        outlined init with take of Any(&v509, &v511);
      }

      else
      {
        v512 = MEMORY[0x277D83B88];
        v511._countAndFlagsBits = 0;
      }

      outlined init with take of Any(&v511, &v509);
      v382 = swift_isUniquelyReferenced_nonNull_native();
      v508 = v379;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0xD000000000000012, 0x800000025ED7F3C0, v382);

      v497 = v508;
    }

    else
    {
    }
  }

  v383 = [v504 parametersByName];
  if (!v383)
  {
LABEL_195:
    v390 = MEMORY[0x277D84F90];
    v465 = MEMORY[0x277D84F90];
    v391 = MEMORY[0x277D84F90];
    v392 = MEMORY[0x277D84F90];
    v464 = v484;
LABEL_196:
    v443 = v464 != 1;
    v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v512 = v444;
    v511._countAndFlagsBits = v392;
    outlined init with take of Any(&v511, &v509);
    v445 = v497;
    v446 = swift_isUniquelyReferenced_nonNull_native();
    v508 = v445;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0x73746361746E6F63, 0xED000065756C6156, v446);
    v447 = v508;
    v512 = v444;
    v511._countAndFlagsBits = v391;
    outlined init with take of Any(&v511, &v509);
    v448 = swift_isUniquelyReferenced_nonNull_native();
    v508 = v447;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0xD000000000000013, 0x800000025ED7F320, v448);
    v449 = v508;
    v512 = v444;
    v511._countAndFlagsBits = v465;
    outlined init with take of Any(&v511, &v509);
    v450 = swift_isUniquelyReferenced_nonNull_native();
    v508 = v449;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0xD000000000000011, 0x800000025ED7F340, v450);
    v451 = v508;
    v512 = v444;
    v511._countAndFlagsBits = v390;
    outlined init with take of Any(&v511, &v509);
    v452 = swift_isUniquelyReferenced_nonNull_native();
    v508 = v451;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v509, 0xD000000000000010, 0x800000025ED7F360, v452);
    v454 = v507;
    v453 = v508;
    v455 = [v507 domain];
    v456 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v458 = v457;

    v459 = [v454 verb];
    v460 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v462 = v461;

    type metadata accessor for Signal();
    v463 = swift_allocObject();
    *(v463 + 16) = v133;
    *(v463 + 24) = v137;
    *(v463 + 32) = v143;
    *(v463 + 40) = v121;
    *(v463 + 48) = v492;
    *(v463 + 56) = v443;
    *(v463 + 64) = v456;
    *(v463 + 72) = v458;
    *(v463 + 80) = v460;
    *(v463 + 88) = v462;
    *(v463 + 96) = 1;
    *(v463 + 104) = v453;
    return;
  }

  v384 = v383;
  v385 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v385 + 16) || (v386 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xE800000000000000), (v387 & 1) == 0))
  {
LABEL_194:

    goto LABEL_195;
  }

  outlined init with copy of Any(*(v385 + 56) + 32 * v386, &v511);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_195;
  }

  v205 = v509;
  if (v509 >> 62)
  {
LABEL_203:
    if (v205 < 0)
    {
      v468 = v205;
    }

    else
    {
      v468 = v205 & 0xFFFFFFFFFFFFFF8;
    }

    v469 = v205;
    v388 = MEMORY[0x25F8CE500](v468);
    v205 = v469;
    if (v388)
    {
      goto LABEL_153;
    }

    goto LABEL_194;
  }

  v388 = *((v509 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v388)
  {
    goto LABEL_194;
  }

LABEL_153:
  if (v388 >= 1)
  {
    v389 = 0;
    v390 = MEMORY[0x277D84F90];
    v494 = (v205 & 0xC000000000000001);
    v505 = MEMORY[0x277D84F90];
    v391 = MEMORY[0x277D84F90];
    v392 = MEMORY[0x277D84F90];
    v496 = v205;
    v495 = v388;
    while (1)
    {
      if (v494)
      {
        v393 = MEMORY[0x25F8CE460](v389);
      }

      else
      {
        v393 = *(v205 + 8 * v389 + 32);
      }

      v394 = v393;
      v395 = [v393 personHandle];
      if (v395 && (v396 = v395, v397 = [v395 value], v396, v397))
      {
        v398 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v400 = v399;
      }

      else
      {
        v398 = 0;
        v400 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v392 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v392 + 2) + 1, 1, v392);
      }

      v402 = *(v392 + 2);
      v401 = *(v392 + 3);
      v503 = v390;
      if (v402 >= v401 >> 1)
      {
        v392 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v401 > 1), v402 + 1, 1, v392);
      }

      *(v392 + 2) = v402 + 1;
      v501 = v392;
      v403 = &v392[16 * v402];
      *(v403 + 4) = v398;
      *(v403 + 5) = v400;
      v506 = v394;
      v404 = [v394 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v405 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
      v407 = v406;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v391 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v391 + 2) + 1, 1, v391);
      }

      v408 = v488;
      v409 = v487;
      v411 = *(v391 + 2);
      v410 = *(v391 + 3);
      if (v411 >= v410 >> 1)
      {
        v391 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v410 > 1), v411 + 1, 1, v391);
      }

      *(v391 + 2) = v411 + 1;
      v412 = &v391[16 * v411];
      *(v412 + 4) = v405;
      *(v412 + 5) = v407;
      v413 = [v506 nameComponents];
      v502 = v391;
      v500 = v389;
      if (v413)
      {
        v414 = v413;
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v415 = 0;
      }

      else
      {
        v415 = 1;
      }

      v416 = type metadata accessor for PersonNameComponents();
      v417 = *(v416 - 8);
      v499 = *(v417 + 56);
      (v499)(v408, v415, 1, v416);
      outlined init with take of DateInterval?(v408, v409, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      v418 = *(v417 + 48);
      if (v418(v409, 1, v416))
      {
        break;
      }

      PersonNameComponents.givenName.getter();
      v420 = v419;
      outlined destroy of Date?(v409, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      if (!v420)
      {
        goto LABEL_175;
      }

LABEL_177:
      v421 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
      v423 = v422;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v505 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v505 + 2) + 1, 1, v505);
      }

      v424 = v505;
      v426 = *(v505 + 2);
      v425 = *(v505 + 3);
      if (v426 >= v425 >> 1)
      {
        v424 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v425 > 1), v426 + 1, 1, v505);
      }

      *(v424 + 2) = v426 + 1;
      v505 = v424;
      v427 = &v424[16 * v426];
      *(v427 + 4) = v421;
      *(v427 + 5) = v423;
      v428 = [v506 nameComponents];
      if (v428)
      {
        v429 = v490;
        v430 = v428;
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v431 = 0;
      }

      else
      {
        v431 = 1;
        v429 = v490;
      }

      v390 = v503;
      (v499)(v429, v431, 1, v416);
      v432 = v489;
      outlined init with take of DateInterval?(v429, v489, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      if (v418(v432, 1, v416))
      {
        outlined destroy of Date?(v432, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        v392 = v501;
        v391 = v502;
        v433 = v500;
      }

      else
      {
        PersonNameComponents.familyName.getter();
        v435 = v434;
        outlined destroy of Date?(v432, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        v392 = v501;
        v391 = v502;
        v433 = v500;
        if (v435)
        {
          goto LABEL_188;
        }
      }

LABEL_188:
      v436 = v506;
      v437 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
      v439 = v438;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v390 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v390 + 2) + 1, 1, v390);
      }

      v441 = *(v390 + 2);
      v440 = *(v390 + 3);
      if (v441 >= v440 >> 1)
      {
        v390 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v440 > 1), v441 + 1, 1, v390);
      }

      v389 = v433 + 1;

      *(v390 + 2) = v441 + 1;
      v442 = &v390[16 * v441];
      *(v442 + 4) = v437;
      *(v442 + 5) = v439;
      v205 = v496;
      if (v495 == v389)
      {

        v464 = v484;
        v465 = v505;
        goto LABEL_196;
      }
    }

    outlined destroy of Date?(v409, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
LABEL_175:

    goto LABEL_177;
  }

  __break(1u);
}