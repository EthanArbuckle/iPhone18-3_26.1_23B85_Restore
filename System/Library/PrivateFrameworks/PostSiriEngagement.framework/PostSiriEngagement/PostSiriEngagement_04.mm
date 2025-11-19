uint64_t specialized TranscriptStep.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6552746E65696C63 && a2 == 0xEF64497473657571 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025ED7FDF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025ED7FE10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x707954746E657665 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6954746E657665 && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t specialized TranscriptTask.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69737365536975 && a2 == 0xEB0000000064496ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6552746E65696C63 && a2 == 0xEF64497473657571 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707954746E657665 && a2 == 0xEA00000000007365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000)
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

uint64_t specialized Set.init(_nonEmptyArrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v54 = &v42 - v12;
  v43 = v13;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v42 - v15;
  if (MEMORY[0x25F8CE200](v14))
  {
    type metadata accessor for _SetStorage();
    v17 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
  }

  v47 = MEMORY[0x25F8CE210](v5, a2);
  if (!v47)
  {
    return v17;
  }

  v18 = 0;
  v52 = (v6 + 16);
  v53 = v17 + 56;
  v49 = v6 + 32;
  v51 = (v6 + 8);
  v44 = v6;
  v45 = v5;
  v46 = v16;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v20 = *(v6 + 16);
      v20(v16, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18), a2);
      v21 = __OFADD__(v18, 1);
      v22 = v18 + 1;
      if (v21)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v43 != 8)
      {
        goto LABEL_23;
      }

      v55 = result;
      v20 = *v52;
      (*v52)(v16, &v55, a2);
      swift_unknownObjectRelease();
      v21 = __OFADD__(v18, 1);
      v22 = v18 + 1;
      if (v21)
      {
LABEL_20:
        __break(1u);
        return v17;
      }
    }

    v50 = v22;
    v48 = *(v6 + 32);
    v48(v54, v16, a2);
    v23 = *(v17 + 40);
    v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v25 = v17;
    v26 = -1 << *(v17 + 32);
    v27 = v24 & ~v26;
    v28 = v27 >> 6;
    v29 = *(v53 + 8 * (v27 >> 6));
    v30 = 1 << v27;
    v31 = *(v6 + 72);
    if (((1 << v27) & v29) != 0)
    {
      v32 = ~v26;
      do
      {
        v20(v10, (*(v25 + 48) + v31 * v27), a2);
        v33 = a3;
        v34 = *(a3 + 8);
        v35 = dispatch thunk of static Equatable.== infix(_:_:)();
        v36 = *v51;
        (*v51)(v10, a2);
        if (v35)
        {
          v36(v54, a2);
          a3 = v33;
          v6 = v44;
          v5 = v45;
          v17 = v25;
          goto LABEL_7;
        }

        v27 = (v27 + 1) & v32;
        v28 = v27 >> 6;
        v29 = *(v53 + 8 * (v27 >> 6));
        v30 = 1 << v27;
        a3 = v33;
      }

      while (((1 << v27) & v29) != 0);
      v6 = v44;
      v5 = v45;
    }

    v37 = v54;
    *(v53 + 8 * v28) = v30 | v29;
    v38 = *(v25 + 48) + v31 * v27;
    v17 = v25;
    result = (v48)(v38, v37, a2);
    v40 = *(v25 + 16);
    v21 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v21)
    {
      break;
    }

    *(v25 + 16) = v41;
LABEL_7:
    v16 = v46;
    v18 = v50;
    if (v50 == v47)
    {
      return v17;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in Sequence<>.dedupe()(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  return closure #1 in Sequence<>.dedupe()(a1) & 1;
}

uint64_t type metadata completion function for TranscriptStep()
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

uint64_t type metadata completion function for TranscriptTask()
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

uint64_t getEnumTagSinglePayload for TranscriptTask.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TranscriptTask.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void AppIntentSignalFactory.convertBmEventToEngagementFeatureSet(bmEvent:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for ProtoTaskEngagementType();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v46 - v15;
  v55 = type metadata accessor for ProtoTaskFeatureSet();
  v52 = *(v55 - 8);
  v17 = *(v52 + 64);
  v18 = MEMORY[0x28223BE20](v55);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - v22;
  v24 = MEMORY[0x25F8CE7F0](v21);
  v25 = v56;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, &v57, &v58);
  if (v25)
  {
    objc_autoreleasePoolPop(v24);
  }

  else
  {
    v47 = v10;
    v48 = v20;
    v26 = a1;
    v56 = 0;
    v49 = v12;
    v50 = v23;
    v27 = v54;
    objc_autoreleasePoolPop(v24);
    v28 = v58;
    INInteraction.extractFeatures()();
    v29 = v52;
    v30 = v55;
    if ((*(v52 + 48))(v16, 1, v55) == 1)
    {

      outlined destroy of Date?(v16, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
      v31 = 1;
      v32 = v53;
    }

    else
    {
      v33 = v50;
      (*(v29 + 32))(v50, v16, v30);
      v34 = [v26 absoluteTimestamp];
      v32 = v53;
      if (v34)
      {
        v35 = v47;
        v36 = v34;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = *(v27 + 32);
        v38 = v49;
        v46 = v6;
        v37(v49, v35, v6);
        ProtoTaskEngagementFeatureSet.init()();
        type metadata accessor for SiriTaskEngagementUtils();
        dispatch thunk of static SiriTaskEngagementUtils.convertDateTimeToUInt64(date:)();
        ProtoTaskEngagementFeatureSet.startTimestampMs.setter();
        type metadata accessor for Utils();
        v39 = [v28 intent];
        v40 = [v39 _className];

        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        static Utils.deriveEngagmentType(from:)(v41, v43, v51);

        ProtoTaskEngagementFeatureSet.engagementType.setter();
        v44 = v55;
        (*(v29 + 16))(v48, v33, v55);
        ProtoTaskEngagementFeatureSet.featureSet.setter();

        (*(v54 + 8))(v38, v46);
        (*(v29 + 8))(v33, v44);
        v31 = 0;
      }

      else
      {
        (*(v29 + 8))(v33, v30);

        v31 = 1;
      }
    }

    v45 = type metadata accessor for ProtoTaskEngagementFeatureSet();
    (*(*(v45 - 8) + 56))(v32, v31, 1, v45);
  }
}

uint64_t AppIntentSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v64 = a2;
  v42[0] = a3;
  v66 = type metadata accessor for ReliabilityCategory();
  v6 = *(v66 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v42 - v11;
  v13 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v48 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v47 = v42 - v19;
  v67 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_24:
    v50 = MEMORY[0x277D84F90];
    v51 = MEMORY[0x277D84F90];
LABEL_25:
    v40 = v42[0];
    v41 = v50;
    *v42[0] = v51;
    *(v40 + 8) = v41;
    return result;
  }

  v38 = result;
  if (a1 < 0)
  {
    v39 = a1;
  }

  else
  {
    v39 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v20 = MEMORY[0x25F8CE500](v39);
  result = v38;
  if (!v20)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (v20 >= 1)
  {
    v49 = result;
    v52 = v12;
    v21 = 0;
    v22 = *v4;
    v63 = a1 & 0xC000000000000001;
    v59 = "intentResponseCode";
    v23 = *(v22 + 88);
    v61 = v22 + 88;
    v62 = v23;
    v24 = *MEMORY[0x277D616D0];
    v57 = *MEMORY[0x277D61678];
    v58 = v24;
    v55 = v6 + 8;
    v56 = v6 + 104;
    v46 = (v44 + 48);
    v45 = (v44 + 32);
    v43 = (v44 + 16);
    v42[1] = v44 + 8;
    *&v18 = 136315138;
    v53 = v18;
    v50 = MEMORY[0x277D84F90];
    v51 = MEMORY[0x277D84F90];
    v54 = v4;
    v60 = v20;
    do
    {
      if (v63)
      {
        v25 = MEMORY[0x25F8CE460](v21, a1);
      }

      else
      {
        v25 = *(a1 + 8 * v21 + 32);
      }

      v26 = v25;
      if (v62(v25, v64))
      {

        MEMORY[0x25F8CE160](v27);
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v37 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v4 = v54;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v51 = v67;
      }

      v28 = v52;
      (*(*v4 + 80))(v26);
      v29 = v49;
      if ((*v46)(v28, 1, v49) == 1)
      {

        result = outlined destroy of Date?(v28, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMR);
      }

      else
      {
        v30 = *v45;
        v31 = v47;
        (*v45)(v47, v28, v29);
        (*v43)(v48, v31, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1, v50);
        }

        v33 = v50[2];
        v32 = v50[3];
        if (v33 >= v32 >> 1)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v50);
        }

        v34 = v44;
        v35 = v49;
        (*(v44 + 8))(v47, v49);
        v36 = v50;
        v50[2] = v33 + 1;
        result = (v30)(v36 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v33, v48, v35);
        v4 = v54;
      }

      ++v21;
    }

    while (v20 != v21);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t AppIntentSignalFactory.getINIntentResponseCodeDescription(responseCode:)(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x6669636570736E75;
      }

      if (a1 == 1)
      {
        return 0x7964616572;
      }

      return 0;
    }

    if (a1 == 2)
    {
      return 0x65756E69746E6F63;
    }

    else
    {
      return 0x6572676F72506E69;
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 0xD000000000000019;
        case 7:
          return 0x6E49656C646E6168;
        case 8:
          return 0xD000000000000018;
      }

      return 0;
    }

    if (a1 == 4)
    {
      return 0x73736563637573;
    }

    else
    {
      return 0x6572756C696166;
    }
  }
}

void AppIntentSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2)
{
  v124 = a2;
  v3 = type metadata accessor for Date();
  v125 = *(v3 - 8);
  v126 = v3;
  v4 = v125[8];
  v5 = MEMORY[0x28223BE20](v3);
  v122 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v112 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v112 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v112 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v112 - v25;
  v27 = MEMORY[0x25F8CE7F0](v24);
  v28 = v127;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, v129, &v130);
  if (v28)
  {
    objc_autoreleasePoolPop(v27);
    return;
  }

  v120 = a1;
  v127 = 0;
  v115 = v16;
  v116 = v18;
  v117 = v23;
  v121 = v26;
  v118 = v9;
  v29 = v126;
  v119 = v11;
  objc_autoreleasePoolPop(v27);
  v30 = v130;
  v31 = [v130 intent];
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {

LABEL_6:
    return;
  }

  v114 = v30;
  v32 = [v31 domain];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = v33;
  if (String.count.getter())
  {
    v37 = v29;
    v38 = v36;
    v39 = v120;
  }

  else
  {

    v39 = v120;
    v40 = [v120 intentClass];
    v37 = v29;
    if (!v40)
    {
      v40 = [v31 typeName];
    }

    v41 = v40;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v42;
  }

  if (String.count.getter() < 1)
  {

    goto LABEL_6;
  }

  if (v38 == 1936744781 && v35 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v43 = [v31 parametersByName];
    if (v43)
    {
      v44 = v43;
      v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v45 + 16) && (v46 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E656D656C65, 0xE700000000000000), (v47 & 1) != 0))
      {
        outlined init with copy of Any(*(v45 + 56) + 32 * v46, &v130);

        if (swift_dynamicCast())
        {
          if (v129[0] == __PAIR128__(0xEE00535554415453, 0x5F56414E5F544547))
          {

LABEL_39:

            return;
          }

          v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v111)
          {

            goto LABEL_39;
          }
        }
      }

      else
      {
      }
    }
  }

  v48 = [v39 donatedBySiri];
  v131 = MEMORY[0x277D839B0];
  LOBYTE(v130) = v48;
  outlined init with take of Any(&v130, v129);
  v49 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v128 = v49;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v129, 0x42646574616E6F64, 0xED00006972695379, isUniquelyReferenced_nonNull_native);
  v51 = v128;
  v52 = [v31 typeName];
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v126 = v54;

  v131 = MEMORY[0x277D837D0];
  *&v130 = v53;
  *(&v130 + 1) = v126;
  outlined init with take of Any(&v130, v129);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v128 = v51;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v129, 0x7954746E65746E69, 0xEE00656D614E6570, v55);
  v56 = v128;
  v57 = [v114 intentResponse];
  if (v57)
  {
    v126 = "messageIdentifiers";
    v58 = v57;
    v59 = (*(*v123 + 104))([v57 _intentResponseCode]);
    v131 = MEMORY[0x277D837D0];
    *&v130 = v59;
    *(&v130 + 1) = v60;
    outlined init with take of Any(&v130, v129);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v56;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v129, 0xD000000000000012, v126 | 0x8000000000000000, v61);

    v56 = v128;
  }

  v113 = v56;
  v62 = [v39 absoluteTimestamp];
  if (v62)
  {
    v63 = v121;
    v64 = v62;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = 0;
  }

  else
  {
    v65 = 1;
    v63 = v121;
  }

  v66 = v115;
  v67 = v118;
  v120 = v38;
  v68 = v125[7];
  LODWORD(v126) = 1;
  v68(v63, v65, 1, v37);
  v69 = [v114 dateInterval];
  v70 = v124;
  if (v69)
  {
    v71 = v69;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    LODWORD(v126) = 0;
  }

  v72 = v116;
  v123 = v35;
  v73 = type metadata accessor for DateInterval();
  v74 = *(v73 - 8);
  (*(v74 + 56))(v66, v126, 1, v73);
  outlined init with take of DateInterval?(v66, v72);
  v75 = 0;
  if (!(*(v74 + 48))(v72, 1, v73))
  {
    DateInterval.duration.getter();
    v75 = v76;
  }

  outlined destroy of Date?(v72, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v77 = v125;
  v78 = v125[2];
  v79 = v119;
  v78(v119, v70, v37);
  v80 = type metadata accessor for SiriUISession(0);
  v78(v67, v70 + *(v80 + 20), v37);
  v81 = v121;
  v82 = v117;
  outlined init with copy of Date?(v121, v117);
  v83 = (v77[6])(v82, 1, v37);
  v84 = v83;
  if (v83 == 1)
  {
    v103 = v77[1];
    v103(v67, v37);
    v103(v79, v37);
    outlined destroy of Date?(v81, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v102 = v120;
    outlined destroy of Date?(v82, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v100 = 0x3FF0000000000000;
    v89 = 0;
    v93 = 0.0;
    v101 = 0.0;
    v75 = 0;
  }

  else
  {
    v85 = v83;
    v86 = v67;
    v87 = v122;
    (v77[4])(v122, v82, v37);
    Date.timeIntervalSinceReferenceDate.getter();
    v89 = v88;
    Date.timeIntervalSinceReferenceDate.getter();
    v91 = v90;
    Date.timeIntervalSinceReferenceDate.getter();
    v93 = v91 - v92;
    Date.timeIntervalSinceReferenceDate.getter();
    v95 = v94;
    Date.timeIntervalSinceReferenceDate.getter();
    v97 = v96;
    v98 = v77[1];
    v98(v87, v37);
    v99 = v86;
    v84 = v85;
    v98(v99, v37);
    v98(v79, v37);
    outlined destroy of Date?(v81, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v100 = 0;
    v101 = v95 - v97;
    v102 = v120;
  }

  v104 = v84 != 1;
  v105 = [v31 verb];
  v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v108 = v107;

  type metadata accessor for Signal();
  v109 = swift_allocObject();
  *(v109 + 16) = v89;
  *(v109 + 24) = v93;
  *(v109 + 32) = v101;
  *(v109 + 40) = v75;
  *(v109 + 48) = v100;
  *(v109 + 56) = v104;
  v110 = v123;
  *(v109 + 64) = v102;
  *(v109 + 72) = v110;
  *(v109 + 80) = v106;
  *(v109 + 88) = v108;
  *(v109 + 96) = 1;
  *(v109 + 104) = v113;
}

uint64_t outlined init with take of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AppLaunchSignalFactory.launchReasonSiri.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AppLaunchSignalFactory.launchReasonHomescreen.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AppLaunchSignalFactory.launchReasonHomeScreenOpenFolder.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t AppLaunchSignalFactory.convertBmAppLaunchEventToSignal(startingBmEvent:endDate:siriUISession:)(void *a1, uint64_t a2, uint64_t a3)
{
  v105 = a3;
  v109 = type metadata accessor for ReliabilityCategory();
  v5 = *(v109 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v109);
  v8 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v106 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v107 = &v101 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v101 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v102 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v103 = &v101 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v104 = &v101 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v101 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v101 - v29;
  v31 = [a1 absoluteTimestamp];
  v32 = 0.0;
  if (v31)
  {
    v33 = v31;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    outlined init with copy of Date?(a2, v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      (*(v18 + 8))(v30, v17);
      outlined destroy of Date?(v16);
    }

    else
    {
      (*(v18 + 32))(v28, v16, v17);
      Date.timeIntervalSince(_:)();
      v35 = v34;
      v36 = *(v18 + 8);
      v36(v28, v17);
      v36(v30, v17);
      if (v35 >= 2.0)
      {
        v32 = 1.0;
        if (v35 > 10.0)
        {
          v32 = 2.0;
        }
      }
    }
  }

  v37 = [a1 launchReason];
  if (v37)
  {
    v38 = v37;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = [a1 bundleID];
    if (v42)
    {
      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      if (v108[4] == v39 && v108[5] == v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v47 = 1769105747;

        LODWORD(v108) = 0;
        v109 = 0xE400000000000000;
      }

      else
      {
        v66 = 0xEA00000000006E65;
        v47 = 0x65726373656D6F48;
        if (v108[6] == v39 && v108[7] == v41)
        {
          v109 = 0xEA00000000006E65;
        }

        else
        {
          v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v67 & 1) == 0)
          {
            v47 = 0x726568744FLL;
            v66 = 0xE500000000000000;
          }

          v109 = v66;
        }

        LODWORD(v108) = 1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25ED7C970;
      *(inited + 32) = 0xD000000000000011;
      v69 = MEMORY[0x277D837D0];
      *(inited + 40) = 0x800000025ED7E690;
      *(inited + 48) = v44;
      *(inited + 56) = v46;
      *(inited + 72) = v69;
      *(inited + 80) = 0xD000000000000011;
      *(inited + 88) = 0x800000025ED80040;
      *(inited + 120) = MEMORY[0x277D839F8];
      *(inited + 96) = v32;
      v70 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      v71 = [a1 absoluteTimestamp];
      if (v71)
      {
        v72 = v107;
        v73 = v71;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v74 = 0;
      }

      else
      {
        v74 = 1;
        v72 = v107;
      }

      v75 = v106;
      v76 = v104;
      (*(v18 + 56))(v72, v74, 1, v17);
      v77 = *(v18 + 16);
      v78 = v105;
      v77(v76, v105, v17);
      v79 = v78 + *(type metadata accessor for SiriUISession(0) + 20);
      v80 = v103;
      v77(v103, v79, v17);
      outlined init with copy of Date?(v72, v75);
      v81 = (*(v18 + 48))(v75, 1, v17);
      if (v81 == 1)
      {
        v99 = *(v18 + 8);
        v99(v80, v17);
        v99(v76, v17);
        outlined destroy of Date?(v72);
        outlined destroy of Date?(v75);
        v97 = 0x3FF0000000000000;
        v86 = 0;
        v90 = 0.0;
        v98 = 0.0;
        v32 = 0.0;
      }

      else
      {
        v82 = *(v18 + 32);
        v107 = v70;
        v83 = v47;
        v84 = v102;
        v82(v102, v75, v17);
        Date.timeIntervalSinceReferenceDate.getter();
        v86 = v85;
        Date.timeIntervalSinceReferenceDate.getter();
        v88 = v87;
        Date.timeIntervalSinceReferenceDate.getter();
        v90 = v88 - v89;
        Date.timeIntervalSinceReferenceDate.getter();
        v92 = v91;
        Date.timeIntervalSinceReferenceDate.getter();
        v94 = v93;
        v95 = *(v18 + 8);
        v96 = v84;
        v47 = v83;
        v70 = v107;
        v95(v96, v17);
        v95(v80, v17);
        v95(v76, v17);
        outlined destroy of Date?(v72);
        v97 = 0;
        v98 = v92 - v94;
      }

      type metadata accessor for Signal();
      result = swift_allocObject();
      *(result + 16) = v86;
      *(result + 24) = v90;
      *(result + 32) = v98;
      *(result + 40) = v32;
      *(result + 48) = v97;
      *(result + 56) = v81 != 1;
      *(result + 64) = 0x636E75614C707041;
      *(result + 72) = 0xE900000000000068;
      v100 = v109;
      *(result + 80) = v47;
      *(result + 88) = v100;
      *(result + 96) = v108;
      *(result + 104) = v70;
      return result;
    }
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, static Logger.engagement);
  v110 = 0;
  v111 = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  MEMORY[0x25F8CE090](0xD00000000000001BLL, 0x800000025ED7FFF0);
  v49 = a1;
  v50 = [v49 description];
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  MEMORY[0x25F8CE090](v51, v53);

  MEMORY[0x25F8CE090](0xD000000000000020, 0x800000025ED80010);
  v55 = v110;
  v54 = v111;
  v56 = *MEMORY[0x277D616E8];
  v57 = type metadata accessor for AppLaunchEventDataIssues();
  (*(*(v57 - 8) + 104))(v8, v56, v57);
  v58 = v109;
  (*(v5 + 104))(v8, *MEMORY[0x277D61680], v109);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v110 = v62;
    *v61 = 136315138;
    *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, &v110);
    _os_log_impl(&dword_25ECEC000, v59, v60, "%s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x25F8CEE50](v62, -1, -1);
    MEMORY[0x25F8CEE50](v61, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v63 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v8, v63, v64);

  (*(v5 + 8))(v8, v58);
  return 0;
}

void AppLaunchSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v106 = a2;
  v109 = a3;
  v114 = type metadata accessor for ReliabilityCategory();
  v4 = *(v114 - 8);
  v5 = *(v4 + 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v104 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v104 - v16;
  MEMORY[0x28223BE20](v15);
  v20 = &v104 - v19;
  v129 = MEMORY[0x277D84F90];
  v126 = v4;
  v127 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_90;
  }

  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v105 = v11;
  v22 = MEMORY[0x277D84F90];
  if (!v21)
  {
    v29 = MEMORY[0x277D84F90];
    a1 = v113;
    v30 = v114;
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_94;
    }

LABEL_23:
    if ((v29 & 0x4000000000000000) != 0)
    {
      goto LABEL_94;
    }

    v123 = *(v29 + 16);
    if (v123 == 1)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  v123 = v14;
  v124 = v17;
  v125 = v20;
  v14 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x25F8CE460](v14, a1);
    }

    else
    {
      if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_88;
      }

      v23 = *(a1 + 8 * v14 + 32);
    }

    v11 = v23;
    v24 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      if (a1 < 0)
      {
        v103 = a1;
      }

      else
      {
        v103 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v21 = MEMORY[0x25F8CE500](v103);
      goto LABEL_3;
    }

    v25 = [v23 bundleID];
    if (!v25)
    {
LABEL_5:
      v17 = &v127;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v20 = *(v127 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_6;
    }

    v26 = v25;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v27;

    if (v20 == v112[8] && v17 == v112[9])
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

LABEL_6:
    ++v14;
  }

  while (v24 != v21);
  v29 = v127;
  v22 = MEMORY[0x277D84F90];
  v17 = v124;
  v20 = v125;
  v14 = v123;
  a1 = v113;
  v30 = v114;
  if ((v127 & 0x8000000000000000) == 0)
  {
    goto LABEL_23;
  }

LABEL_94:
  v123 = MEMORY[0x25F8CE500](v29);
  if (v123 != 1)
  {
LABEL_33:
    v35 = 0;
    v122 = v29 & 0xC000000000000001;
    v120 = "This launchReason in event ";
    v119 = *MEMORY[0x277D616E8];
    v118 = v126 + 104;
    v117 = *MEMORY[0x277D61680];
    v116 = (v126 + 8);
    v107 = MEMORY[0x277D84F90];
    v108 = v29 + 40;
    *&v18 = 134218498;
    v111 = v18;
    *&v18 = 136315138;
    v110 = v18;
    v121 = v29;
    while (1)
    {
      if (__OFADD__(v35, 1))
      {
        goto LABEL_89;
      }

      if ((v35 + 1) >= v123)
      {
LABEL_73:

        v22 = MEMORY[0x277D84F90];
        v97 = v107;
        goto LABEL_74;
      }

      v14 = v108 + 8 * v35;
      while (1)
      {
        v17 = v35 + 1;
        if (v122)
        {
          v40 = MEMORY[0x25F8CE460](v35, v29);
          v41 = MEMORY[0x25F8CE460](v35 + 1, v29);
        }

        else
        {
          if ((v35 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          v20 = *(v29 + 16);
          if (v35 >= v20)
          {
            goto LABEL_84;
          }

          v39 = *(v14 - 8);
          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_85;
          }

          if (v17 >= v20)
          {
            goto LABEL_86;
          }

          v40 = v39;
          v41 = *v14;
        }

        v42 = v41;
        if (one-time initialization token for engagement != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        v44 = __swift_project_value_buffer(v43, static Logger.engagement);
        v45 = v40;
        v46 = v42;
        v124 = v44;
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.debug.getter();

        v49 = os_log_type_enabled(v47, v48);
        v125 = v35;
        v126 = v46;
        if (v49)
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v127 = v51;
          *v50 = v111;
          *(v50 + 4) = v35;
          *(v50 + 12) = 2080;
          v52 = v45;
          v53 = [v52 description];
          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v115 = v45;
          v56 = v55;

          v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v127);

          *(v50 + 14) = v57;
          *(v50 + 22) = 2080;
          v58 = v46;
          v59 = [v58 description];
          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v62 = v61;

          v63 = v60;
          v29 = v121;
          v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v62, &v127);

          *(v50 + 24) = v64;
          v45 = v115;
          _os_log_impl(&dword_25ECEC000, v47, v48, "index=%ld. This event = %s, Next event = %s", v50, 0x20u);
          swift_arrayDestroy();
          v65 = v51;
          a1 = v113;
          v30 = v114;
          MEMORY[0x25F8CEE50](v65, -1, -1);
          MEMORY[0x25F8CEE50](v50, -1, -1);
        }

        if ([v45 starting])
        {
          if (([v126 starting] & 1) == 0)
          {
            v66 = [v45 bundleID];
            if (v66)
            {
              break;
            }
          }
        }

LABEL_57:
        v127 = 0;
        v128 = 0xE000000000000000;
        _StringGuts.grow(_:)(45);

        v127 = 0x6576652073696854;
        v128 = 0xEB0000000020746ELL;
        v20 = v45;
        v77 = [v20 description];
        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;

        MEMORY[0x25F8CE090](v78, v80);

        MEMORY[0x25F8CE090](0xD000000000000020, v120 | 0x8000000000000000);
        v81 = v127;
        v11 = v128;
        v82 = type metadata accessor for AppLaunchEventDataIssues();
        (*(*(v82 - 8) + 104))(a1, v119, v82);
        (*v118)(a1, v117, v30);

        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v127 = v86;
          *v85 = v110;
          *(v85 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v11, &v127);
          _os_log_impl(&dword_25ECEC000, v83, v84, "%s", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v86);
          v87 = v86;
          v29 = v121;
          MEMORY[0x25F8CEE50](v87, -1, -1);
          MEMORY[0x25F8CEE50](v85, -1, -1);
        }

        v36 = v125;
        type metadata accessor for SiriTaskEngagementUtils();
        v37 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
        MEMORY[0x25F8CDB30](a1, v37, v38);

        (*v116)(a1, v30);
        v35 = v36 + 1;
        v14 += 8;
        if ((v36 + 2) >= v123)
        {
          goto LABEL_73;
        }
      }

      v20 = v45;
      v67 = v66;
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      v45 = v20;
      v71 = [v20 bundleID];
      if (!v71)
      {

        goto LABEL_57;
      }

      v72 = v71;
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      if (v68 != v73 || v70 != v75)
      {
        break;
      }

      a1 = v113;
      v30 = v114;
LABEL_61:
      v14 = v126;
      v88 = [v126 absoluteTimestamp];
      if (v88)
      {
        v89 = v105;
        v90 = v88;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v91 = 0;
      }

      else
      {
        v91 = 1;
        v89 = v105;
      }

      v92 = v125;
      v93 = type metadata accessor for Date();
      (*(*(v93 - 8) + 56))(v89, v91, 1, v93);
      v17 = v112;
      v11 = (*(*v112 + 128))(v20, v89, v106);
      outlined destroy of Date?(v89);
      if (!v11)
      {

        v95 = __OFADD__(v92, 2);
        v35 = v92 + 2;
        if (!v95)
        {
          continue;
        }

LABEL_100:
        __break(1u);
        return;
      }

      v17 = &v129;
      MEMORY[0x25F8CE160](v94);
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v96 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v107 = v129;
      v95 = __OFADD__(v92, 2);
      v35 = v92 + 2;
      if (v95)
      {
        goto LABEL_100;
      }
    }

    v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a1 = v113;
    v30 = v114;
    if (v76)
    {
      goto LABEL_61;
    }

    goto LABEL_57;
  }

  if (!MEMORY[0x25F8CE500](v29))
  {
LABEL_32:
    v123 = 1;
    goto LABEL_33;
  }

LABEL_25:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x25F8CE460](0, v29);
LABEL_28:
    v21 = v31;
    if (![v31 starting])
    {

      goto LABEL_32;
    }

    v32 = [v21 absoluteTimestamp];
    if (v32)
    {
      v33 = v32;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = type metadata accessor for Date();
      (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
    }

    else
    {
      v34 = type metadata accessor for Date();
      (*(*(v34 - 8) + 56))(v14, 1, 1, v34);
    }

    outlined init with take of Date?(v14, v17);
    type metadata accessor for Date();
    v99 = *(v34 - 8);
    if ((*(v99 + 48))(v17, 1, v34) == 1)
    {
      outlined destroy of Date?(v17);
      v100 = 1;
    }

    else
    {
      Date.addingTimeInterval(_:)();
      (*(v99 + 8))(v17, v34);
      v100 = 0;
    }

    (*(v99 + 56))(v20, v100, 1, v34);
    v101 = (*(*v112 + 128))(v21, v20, v106);
    outlined destroy of Date?(v20);
    if (v101)
    {

      MEMORY[0x25F8CE160](v102);
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_99;
      }

      goto LABEL_81;
    }

    v97 = MEMORY[0x277D84F90];
  }

  else
  {
    if (*(v29 + 16))
    {
      v31 = *(v29 + 32);
      goto LABEL_28;
    }

    __break(1u);
LABEL_99:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_81:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v97 = v129;
  }

LABEL_74:
  v98 = v109;
  *v109 = v97;
  v98[1] = v22;
}

void *AppLaunchSignalFactory.deinit()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  return v0;
}

uint64_t AppLaunchSignalFactory.__deallocating_deinit()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

double AppLaunchSignalFactory.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 2.0;
  *(v0 + 16) = xmmword_25ED7CDB0;
  *(v0 + 32) = 0xD00000000000002BLL;
  *(v0 + 40) = 0x800000025ED80060;
  *(v0 + 48) = 0xD000000000000031;
  *(v0 + 56) = 0x800000025ED80090;
  *(v0 + 64) = 0xD00000000000002DLL;
  *(v0 + 72) = 0x800000025ED800D0;
  return result;
}

double AppLaunchSignalFactory.init()()
{
  result = 2.0;
  *(v0 + 16) = xmmword_25ED7CDB0;
  *(v0 + 32) = 0xD00000000000002BLL;
  *(v0 + 40) = 0x800000025ED80060;
  *(v0 + 48) = 0xD000000000000031;
  *(v0 + 56) = 0x800000025ED80090;
  *(v0 + 64) = 0xD00000000000002DLL;
  *(v0 + 72) = 0x800000025ED800D0;
  return result;
}

uint64_t PSEBiomeFetchConfiguration.init(startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for PSEBiomeFetchConfiguration() + 20);

  return v9(v7, a2, v6);
}

uint64_t PSEBiomeFetchConfiguration.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PSEBiomeFetchConfiguration.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PSEBiomeFetchConfiguration() + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PSEBiomeEventsSource.nowPlayingEvents.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.appIntentEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.alarmEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.appLaunchEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.homeEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.appIntentInvocationEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosEngagementEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosEditEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosSearchEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosFavoriteEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosShareEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosPickerEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosDeleteEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosMemoriesViewedEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosMemoriesSharedEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

void __swiftcall PSEBiomeEventsSource.init()(PostSiriEngagement::PSEBiomeEventsSource *__return_ptr retstr)
{
  v1 = MEMORY[0x277D84F90];
  retstr->nowPlayingEvents._rawValue = MEMORY[0x277D84F90];
  retstr->appIntentEvents._rawValue = v1;
  retstr->alarmEvents._rawValue = v1;
  retstr->appLaunchEvents._rawValue = v1;
  retstr->homeEvents._rawValue = v1;
  retstr->appIntentInvocationEvents._rawValue = v1;
  retstr->photosEngagementEvents._rawValue = v1;
  retstr->photosEditEvents._rawValue = v1;
  retstr->photosSearchEvents._rawValue = v1;
  retstr->photosFavoriteEvents._rawValue = v1;
  retstr->photosShareEvents._rawValue = v1;
  retstr->photosPickerEvents._rawValue = v1;
  retstr->photosDeleteEvents._rawValue = v1;
  retstr->photosMemoriesViewedEvents._rawValue = v1;
  retstr->photosMemoriesSharedEvents._rawValue = v1;
}

__n128 PSEBiomeEventsSource.init(nowPlayingEvents:appIntentEvents:alarmEvents:appLaunchEvents:homeEvents:appIntentInvocationEvents:photosEngagementEvents:photosEditEvents:photosSearchEvents:photosFavoriteEvents:photosShareEvents:photosPickerEvents:photosDeleteEvents:photosMemoriesViewedEvents:photosMemoriesSharedEvents:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13)
{
  result = a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  return result;
}

void closure #2 in static PSEBiomeEventsSourceFetcher.fetchSiriUIEvents(startDate:endDate:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ReliabilityCategory();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 eventBody];
  if (v9)
  {
    v10 = v9;
    swift_beginAccess();
    v11 = v10;
    MEMORY[0x25F8CE160]();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.engagement);
    v13 = *MEMORY[0x277D61558];
    v14 = type metadata accessor for SiriUIEventDataIssues();
    (*(*(v14 - 8) + 104))(v8, v13, v14);
    (*(v5 + 104))(v8, *MEMORY[0x277D61670], v4);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000025ED80340, &v23);
      _os_log_impl(&dword_25ECEC000, v15, v16, "%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x25F8CEE50](v18, -1, -1);
      MEMORY[0x25F8CEE50](v17, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v19 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v8, v19, v20);

    (*(v5 + 8))(v8, v4);
  }
}

void closure #2 in static PSEBiomeEventsSourceFetcher.fetchSiriExecutionEvents(startDate:endDate:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ReliabilityCategory();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 eventBody];
  if (v9)
  {
    v10 = v9;
    swift_beginAccess();
    v11 = v10;
    MEMORY[0x25F8CE160]();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.engagement);
    v13 = *MEMORY[0x277D61578];
    v14 = type metadata accessor for SiriExecutionEventDataIssues();
    (*(*(v14 - 8) + 104))(v8, v13, v14);
    (*(v5 + 104))(v8, *MEMORY[0x277D61698], v4);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000037, 0x800000025ED802C0, &v23);
      _os_log_impl(&dword_25ECEC000, v15, v16, "%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x25F8CEE50](v18, -1, -1);
      MEMORY[0x25F8CEE50](v17, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v19 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v8, v19, v20);

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t static PSEBiomeEventsSourceFetcher.fetchTranscriptEvents(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &aBlock - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84F90];
  outlined init with copy of Date?(a2, v8);
  v10.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  isa = 0;
  if ((*(v12 + 48))(v8, 1, v11) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v8, v11);
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v10.super.isa endDate:isa maxEvents:0 lastN:0 reversed:0];

  v15 = [BiomeLibrary() IntelligenceFlow];
  swift_unknownObjectRelease();
  v16 = [v15 Transcript];
  swift_unknownObjectRelease();
  v17 = [v16 Datastream];
  swift_unknownObjectRelease();
  v18 = [v17 publisherWithOptions_];
  v29 = AbstractActivityCollector.collect(callback:);
  v30 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v28 = &block_descriptor_0;
  v19 = _Block_copy(&aBlock);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = v9;
  v29 = partial apply for closure #2 in static PSEBiomeEventsSourceFetcher.fetchTranscriptEvents(startDate:endDate:);
  v30 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v28 = &block_descriptor_6;
  v21 = _Block_copy(&aBlock);

  v22 = [v18 sinkWithCompletion:v19 receiveInput:v21];

  _Block_release(v21);
  _Block_release(v19);

  swift_beginAccess();
  v23 = *(v9 + 16);

  return v23;
}

void closure #2 in static PSEBiomeEventsSourceFetcher.fetchTranscriptEvents(startDate:endDate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ReliabilityCategory();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 eventBody];
  if (v10)
  {
    v23 = v10;
    if (specialized static PSEBiomeEventsSourceFetcher.isAssistantClient(bmEvent:)(v10))
    {
      swift_beginAccess();
      v11 = v23;
      MEMORY[0x25F8CE160]();
      if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }

    else
    {
      v21 = v23;
    }
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.engagement);
    v13 = *MEMORY[0x277D61720];
    v14 = type metadata accessor for TranscriptEventDataIssues();
    (*(*(v14 - 8) + 104))(v9, v13, v14);
    (*(v6 + 104))(v9, *MEMORY[0x277D61690], v5);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x800000025ED80280, &v24);
      _os_log_impl(&dword_25ECEC000, v15, v16, "%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x25F8CEE50](v18, -1, -1);
      MEMORY[0x25F8CEE50](v17, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v19 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v9, v19, v20);

    (*(v6 + 8))(v9, v5);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Any) -> (@unowned NSComparisonResult)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[3] = swift_getObjectType();
  v10[0] = a2;
  v9[3] = swift_getObjectType();
  v9[0] = a3;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = v6(v10, v9);

  __swift_destroy_boxed_opaque_existential_0(v9);
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

void closure #2 in static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:)(void *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ReliabilityCategory();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state])
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v12, static Logger.engagement);
    v45 = v13;
    (*(v13 + 16))(v16, v17, v12);
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    *&v51 = 0xD000000000000026;
    *(&v51 + 1) = 0x800000025ED80310;
    v47 = a1;
    v50[0] = [a1 error];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v18 = String.init<A>(describing:)();
    MEMORY[0x25F8CE090](v18);

    v19 = *(&v51 + 1);
    v48 = v51;
    v20 = *MEMORY[0x277D615C0];
    v21 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v21 - 8) + 104))(v11, v20, v21);
    v22 = *MEMORY[0x277D616A8];
    v23 = *(v49 + 104);
    v46 = v8;
    v23(v11, v22, v8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v44 = a2;
      v27 = v26;
      v28 = swift_slowAlloc();
      v43[1] = a3;
      v29 = v28;
      *&v51 = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v19, &v51);
      _os_log_impl(&dword_25ECEC000, v24, v25, "%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x25F8CEE50](v29, -1, -1);
      v30 = v27;
      a2 = v44;
      MEMORY[0x25F8CEE50](v30, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v31 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v11, v31, v32);

    (*(v49 + 8))(v11, v46);
    (*(v45 + 8))(v16, v12);
    v33 = [v47 error];
    swift_beginAccess();
    v34 = *(a4 + 96);
    v55 = *(a4 + 80);
    v56 = v34;
    v57 = *(a4 + 112);
    v58 = *(a4 + 128);
    v35 = *(a4 + 32);
    v51 = *(a4 + 16);
    v52 = v35;
    v36 = *(a4 + 64);
    v53 = *(a4 + 48);
    v54 = v36;
    outlined init with copy of PSEBiomeEventsSource(&v51, v50);
    a2(v33, &v51);
    outlined destroy of PSEBiomeEventsSource(&v51);
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, static Logger.engagement);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_25ECEC000, v37, v38, "receiving all Biome events successfully.", v39, 2u);
      MEMORY[0x25F8CEE50](v39, -1, -1);
    }

    swift_beginAccess();
    v40 = *(a4 + 96);
    v55 = *(a4 + 80);
    v56 = v40;
    v57 = *(a4 + 112);
    v58 = *(a4 + 128);
    v41 = *(a4 + 32);
    v51 = *(a4 + 16);
    v52 = v41;
    v42 = *(a4 + 64);
    v53 = *(a4 + 48);
    v54 = v42;
    outlined init with copy of PSEBiomeEventsSource(&v51, v50);
    a2(0, &v51);
    outlined destroy of PSEBiomeEventsSource(&v51);
  }
}

uint64_t closure #3 in static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172[3] = &unk_2870E6758;
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastObjCProtocolConditional();
  if (!v13)
  {
    return swift_unknownObjectRelease();
  }

  v14 = v13;
  v169[1] = a4;
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.engagement);
  swift_unknownObjectRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  v18 = os_log_type_enabled(v16, v17);
  v170 = a3;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v169[0] = v12;
    v20 = v8;
    v21 = v9;
    v22 = a2;
    v23 = v19;
    v24 = swift_slowAlloc();
    v171 = v14;
    v172[0] = v24;
    *v23 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BMStoreEvent_pMd, &_sSo12BMStoreEvent_pMR);
    v25 = String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v172);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_25ECEC000, v16, v17, "receiving Biome event %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x25F8CEE50](v24, -1, -1);
    v28 = v23;
    a2 = v22;
    v9 = v21;
    v8 = v20;
    v12 = v169[0];
    MEMORY[0x25F8CEE50](v28, -1, -1);
  }

  if ([a1 respondsToSelector_])
  {
    if ([a1 eventBody])
    {
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (v29)
      {
        result = [a1 respondsToSelector_];
        if (result)
        {
          result = [a1 eventBody];
          if (result)
          {
            result = [a1 respondsToSelector_];
            if (result)
            {
              [a1 timestamp];
              v32 = v31;
              objc_opt_self();
              v33 = swift_dynamicCastObjCClassUnconditional();
              swift_beginAccess();
              v34 = a2[5];
              swift_unknownObjectRetain();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              a2[5] = v34;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
                a2[5] = v34;
              }

              v37 = *(v34 + 2);
              v36 = *(v34 + 3);
              if (v37 >= v36 >> 1)
              {
                v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v34);
              }

              *(v34 + 2) = v37 + 1;
              v38 = &v34[16 * v37];
              *(v38 + 4) = v33;
              *(v38 + 5) = v32;
              a2[5] = v34;
LABEL_171:
              swift_endAccess();
              goto LABEL_172;
            }

            goto LABEL_184;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_184:
        __break(1u);
        goto LABEL_185;
      }
    }
  }

  if ([a1 respondsToSelector_])
  {
    if ([a1 eventBody])
    {
      objc_opt_self();
      v39 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (v39)
      {
        result = [a1 respondsToSelector_];
        if (result)
        {
          result = [a1 eventBody];
          if (result)
          {
            result = [a1 respondsToSelector_];
            if (result)
            {
              [a1 timestamp];
              v41 = v40;
              objc_opt_self();
              v42 = swift_dynamicCastObjCClassUnconditional();
              swift_beginAccess();
              v43 = a2[2];
              swift_unknownObjectRetain();
              v44 = swift_isUniquelyReferenced_nonNull_native();
              a2[2] = v43;
              if ((v44 & 1) == 0)
              {
                v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
                a2[2] = v43;
              }

              v46 = *(v43 + 2);
              v45 = *(v43 + 3);
              if (v46 >= v45 >> 1)
              {
                v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v43);
              }

              *(v43 + 2) = v46 + 1;
              v47 = &v43[16 * v46];
              *(v47 + 4) = v42;
              *(v47 + 5) = v41;
              a2[2] = v43;
              goto LABEL_171;
            }

            goto LABEL_187;
          }

LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
          goto LABEL_188;
        }

LABEL_185:
        __break(1u);
        goto LABEL_186;
      }
    }
  }

  if ([a1 respondsToSelector_])
  {
    if ([a1 eventBody])
    {
      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (v48)
      {
        result = [a1 respondsToSelector_];
        if (result)
        {
          result = [a1 eventBody];
          if (result)
          {
            result = [a1 respondsToSelector_];
            if (result)
            {
              [a1 timestamp];
              v50 = v49;
              objc_opt_self();
              v51 = swift_dynamicCastObjCClassUnconditional();
              swift_beginAccess();
              v52 = a2[4];
              swift_unknownObjectRetain();
              v53 = swift_isUniquelyReferenced_nonNull_native();
              a2[4] = v52;
              if ((v53 & 1) == 0)
              {
                v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
                a2[4] = v52;
              }

              v55 = *(v52 + 2);
              v54 = *(v52 + 3);
              if (v55 >= v54 >> 1)
              {
                v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v52);
              }

              *(v52 + 2) = v55 + 1;
              v56 = &v52[16 * v55];
              *(v56 + 4) = v51;
              *(v56 + 5) = v50;
              a2[4] = v52;
              goto LABEL_171;
            }

            goto LABEL_190;
          }

LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
          goto LABEL_191;
        }

LABEL_188:
        __break(1u);
        goto LABEL_189;
      }
    }
  }

  if ([a1 respondsToSelector_])
  {
    if ([a1 eventBody])
    {
      objc_opt_self();
      v57 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (v57)
      {
        result = [a1 respondsToSelector_];
        if (result)
        {
          result = [a1 eventBody];
          if (result)
          {
            result = [a1 respondsToSelector_];
            if (result)
            {
              [a1 timestamp];
              v59 = v58;
              objc_opt_self();
              v60 = swift_dynamicCastObjCClassUnconditional();
              swift_beginAccess();
              v61 = a2[6];
              swift_unknownObjectRetain();
              v62 = swift_isUniquelyReferenced_nonNull_native();
              a2[6] = v61;
              if ((v62 & 1) == 0)
              {
                v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
                a2[6] = v61;
              }

              v64 = *(v61 + 2);
              v63 = *(v61 + 3);
              if (v64 >= v63 >> 1)
              {
                v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v61);
              }

              *(v61 + 2) = v64 + 1;
              v65 = &v61[16 * v64];
              *(v65 + 4) = v60;
              *(v65 + 5) = v59;
              a2[6] = v61;
              goto LABEL_171;
            }

            goto LABEL_193;
          }

LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
          goto LABEL_194;
        }

LABEL_191:
        __break(1u);
        goto LABEL_192;
      }
    }
  }

  if ([a1 respondsToSelector_])
  {
    if ([a1 eventBody])
    {
      objc_opt_self();
      v66 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (v66)
      {
        result = [a1 respondsToSelector_];
        if (result)
        {
          result = [a1 eventBody];
          if (result)
          {
            result = [a1 respondsToSelector_];
            if (result)
            {
              [a1 timestamp];
              v68 = v67;
              objc_opt_self();
              v69 = swift_dynamicCastObjCClassUnconditional();
              swift_beginAccess();
              v70 = a2[7];
              swift_unknownObjectRetain();
              v71 = swift_isUniquelyReferenced_nonNull_native();
              a2[7] = v70;
              if ((v71 & 1) == 0)
              {
                v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v70 + 2) + 1, 1, v70);
                a2[7] = v70;
              }

              v73 = *(v70 + 2);
              v72 = *(v70 + 3);
              if (v73 >= v72 >> 1)
              {
                v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v70);
              }

              *(v70 + 2) = v73 + 1;
              v74 = &v70[16 * v73];
              *(v74 + 4) = v69;
              *(v74 + 5) = v68;
              a2[7] = v70;
              goto LABEL_171;
            }

            goto LABEL_196;
          }

LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
          goto LABEL_197;
        }

LABEL_194:
        __break(1u);
        goto LABEL_195;
      }
    }
  }

  if (([a1 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_72;
  }

  if (![a1 eventBody])
  {
    goto LABEL_72;
  }

  objc_opt_self();
  v75 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  if (!v75)
  {
    goto LABEL_72;
  }

  if (([a1 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_72;
  }

  v76 = [a1 eventBody];
  if (!v76)
  {
    goto LABEL_72;
  }

  v77 = v76;
  objc_opt_self();
  v78 = swift_dynamicCastObjCClass();
  if (!v78)
  {
    swift_unknownObjectRelease();
LABEL_72:
    if ([a1 respondsToSelector_])
    {
      if ([a1 eventBody])
      {
        objc_opt_self();
        v81 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v81)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            result = [a1 eventBody];
            if (result)
            {
              result = [a1 respondsToSelector_];
              if (result)
              {
                [a1 timestamp];
                v83 = v82;
                objc_opt_self();
                v84 = swift_dynamicCastObjCClassUnconditional();
                swift_beginAccess();
                v85 = a2[8];
                swift_unknownObjectRetain();
                v86 = swift_isUniquelyReferenced_nonNull_native();
                a2[8] = v85;
                if ((v86 & 1) == 0)
                {
                  v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v85 + 2) + 1, 1, v85);
                  a2[8] = v85;
                }

                v88 = *(v85 + 2);
                v87 = *(v85 + 3);
                if (v88 >= v87 >> 1)
                {
                  v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v85);
                }

                *(v85 + 2) = v88 + 1;
                v89 = &v85[16 * v88];
                *(v89 + 4) = v84;
                *(v89 + 5) = v83;
                a2[8] = v85;
                goto LABEL_171;
              }

              goto LABEL_199;
            }

LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
            goto LABEL_200;
          }

LABEL_197:
          __break(1u);
          goto LABEL_198;
        }
      }
    }

    if ([a1 respondsToSelector_])
    {
      if ([a1 eventBody])
      {
        objc_opt_self();
        v90 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v90)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            result = [a1 eventBody];
            if (result)
            {
              result = [a1 respondsToSelector_];
              if (result)
              {
                [a1 timestamp];
                v92 = v91;
                objc_opt_self();
                v93 = swift_dynamicCastObjCClassUnconditional();
                swift_beginAccess();
                v94 = a2[9];
                swift_unknownObjectRetain();
                v95 = swift_isUniquelyReferenced_nonNull_native();
                a2[9] = v94;
                if ((v95 & 1) == 0)
                {
                  v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 2) + 1, 1, v94);
                  a2[9] = v94;
                }

                v97 = *(v94 + 2);
                v96 = *(v94 + 3);
                if (v97 >= v96 >> 1)
                {
                  v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, v94);
                }

                *(v94 + 2) = v97 + 1;
                v98 = &v94[16 * v97];
                *(v98 + 4) = v93;
                *(v98 + 5) = v92;
                a2[9] = v94;
                goto LABEL_171;
              }

              goto LABEL_202;
            }

LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
            goto LABEL_203;
          }

LABEL_200:
          __break(1u);
          goto LABEL_201;
        }
      }
    }

    if ([a1 respondsToSelector_])
    {
      if ([a1 eventBody])
      {
        objc_opt_self();
        v99 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v99)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            result = [a1 eventBody];
            if (result)
            {
              result = [a1 respondsToSelector_];
              if (result)
              {
                [a1 timestamp];
                v101 = v100;
                objc_opt_self();
                v102 = swift_dynamicCastObjCClassUnconditional();
                swift_beginAccess();
                v103 = a2[10];
                swift_unknownObjectRetain();
                v104 = swift_isUniquelyReferenced_nonNull_native();
                a2[10] = v103;
                if ((v104 & 1) == 0)
                {
                  v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v103 + 2) + 1, 1, v103);
                  a2[10] = v103;
                }

                v106 = *(v103 + 2);
                v105 = *(v103 + 3);
                if (v106 >= v105 >> 1)
                {
                  v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1, v103);
                }

                *(v103 + 2) = v106 + 1;
                v107 = &v103[16 * v106];
                *(v107 + 4) = v102;
                *(v107 + 5) = v101;
                a2[10] = v103;
                goto LABEL_171;
              }

              goto LABEL_205;
            }

LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

LABEL_203:
          __break(1u);
          goto LABEL_204;
        }
      }
    }

    if ([a1 respondsToSelector_])
    {
      if ([a1 eventBody])
      {
        objc_opt_self();
        v108 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v108)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            result = [a1 eventBody];
            if (result)
            {
              result = [a1 respondsToSelector_];
              if (result)
              {
                [a1 timestamp];
                v110 = v109;
                objc_opt_self();
                v111 = swift_dynamicCastObjCClassUnconditional();
                swift_beginAccess();
                v112 = a2[11];
                swift_unknownObjectRetain();
                v113 = swift_isUniquelyReferenced_nonNull_native();
                a2[11] = v112;
                if ((v113 & 1) == 0)
                {
                  v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v112 + 2) + 1, 1, v112);
                  a2[11] = v112;
                }

                v115 = *(v112 + 2);
                v114 = *(v112 + 3);
                if (v115 >= v114 >> 1)
                {
                  v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v112);
                }

                *(v112 + 2) = v115 + 1;
                v116 = &v112[16 * v115];
                *(v116 + 4) = v111;
                *(v116 + 5) = v110;
                a2[11] = v112;
                goto LABEL_171;
              }

              goto LABEL_208;
            }

LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
            goto LABEL_209;
          }

LABEL_206:
          __break(1u);
          goto LABEL_207;
        }
      }
    }

    if ([a1 respondsToSelector_])
    {
      if ([a1 eventBody])
      {
        objc_opt_self();
        v117 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v117)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            result = [a1 eventBody];
            if (result)
            {
              result = [a1 respondsToSelector_];
              if (result)
              {
                [a1 timestamp];
                v119 = v118;
                objc_opt_self();
                v120 = swift_dynamicCastObjCClassUnconditional();
                swift_beginAccess();
                v121 = a2[12];
                swift_unknownObjectRetain();
                v122 = swift_isUniquelyReferenced_nonNull_native();
                a2[12] = v121;
                if ((v122 & 1) == 0)
                {
                  v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v121 + 2) + 1, 1, v121);
                  a2[12] = v121;
                }

                v124 = *(v121 + 2);
                v123 = *(v121 + 3);
                if (v124 >= v123 >> 1)
                {
                  v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v123 > 1), v124 + 1, 1, v121);
                }

                *(v121 + 2) = v124 + 1;
                v125 = &v121[16 * v124];
                *(v125 + 4) = v120;
                *(v125 + 5) = v119;
                a2[12] = v121;
                goto LABEL_171;
              }

              goto LABEL_211;
            }

LABEL_210:
            __break(1u);
LABEL_211:
            __break(1u);
            goto LABEL_212;
          }

LABEL_209:
          __break(1u);
          goto LABEL_210;
        }
      }
    }

    if ([a1 respondsToSelector_])
    {
      if ([a1 eventBody])
      {
        objc_opt_self();
        v126 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v126)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            result = [a1 eventBody];
            if (result)
            {
              result = [a1 respondsToSelector_];
              if (result)
              {
                [a1 timestamp];
                v128 = v127;
                objc_opt_self();
                v129 = swift_dynamicCastObjCClassUnconditional();
                swift_beginAccess();
                v130 = a2[13];
                swift_unknownObjectRetain();
                v131 = swift_isUniquelyReferenced_nonNull_native();
                a2[13] = v130;
                if ((v131 & 1) == 0)
                {
                  v130 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v130 + 2) + 1, 1, v130);
                  a2[13] = v130;
                }

                v133 = *(v130 + 2);
                v132 = *(v130 + 3);
                if (v133 >= v132 >> 1)
                {
                  v130 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v133 + 1, 1, v130);
                }

                *(v130 + 2) = v133 + 1;
                v134 = &v130[16 * v133];
                *(v134 + 4) = v129;
                *(v134 + 5) = v128;
                a2[13] = v130;
                goto LABEL_171;
              }

              goto LABEL_214;
            }

LABEL_213:
            __break(1u);
LABEL_214:
            __break(1u);
            goto LABEL_215;
          }

LABEL_212:
          __break(1u);
          goto LABEL_213;
        }
      }
    }

    if ([a1 respondsToSelector_])
    {
      if ([a1 eventBody])
      {
        objc_opt_self();
        v135 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v135)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            result = [a1 eventBody];
            if (result)
            {
              result = [a1 respondsToSelector_];
              if (result)
              {
                [a1 timestamp];
                v137 = v136;
                objc_opt_self();
                v138 = swift_dynamicCastObjCClassUnconditional();
                swift_beginAccess();
                v139 = a2[14];
                swift_unknownObjectRetain();
                v140 = swift_isUniquelyReferenced_nonNull_native();
                a2[14] = v139;
                if ((v140 & 1) == 0)
                {
                  v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v139 + 2) + 1, 1, v139);
                  a2[14] = v139;
                }

                v142 = *(v139 + 2);
                v141 = *(v139 + 3);
                if (v142 >= v141 >> 1)
                {
                  v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v141 > 1), v142 + 1, 1, v139);
                }

                *(v139 + 2) = v142 + 1;
                v143 = &v139[16 * v142];
                *(v143 + 4) = v138;
                *(v143 + 5) = v137;
                a2[14] = v139;
                goto LABEL_171;
              }

              goto LABEL_217;
            }

LABEL_216:
            __break(1u);
LABEL_217:
            __break(1u);
            goto LABEL_218;
          }

LABEL_215:
          __break(1u);
          goto LABEL_216;
        }
      }
    }

    if ([a1 respondsToSelector_])
    {
      if ([a1 eventBody])
      {
        objc_opt_self();
        v144 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v144)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            result = [a1 eventBody];
            if (result)
            {
              result = [a1 respondsToSelector_];
              if (result)
              {
                [a1 timestamp];
                v146 = v145;
                objc_opt_self();
                v147 = swift_dynamicCastObjCClassUnconditional();
                swift_beginAccess();
                v148 = a2[15];
                swift_unknownObjectRetain();
                v149 = swift_isUniquelyReferenced_nonNull_native();
                a2[15] = v148;
                if ((v149 & 1) == 0)
                {
                  v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v148 + 2) + 1, 1, v148);
                  a2[15] = v148;
                }

                v151 = *(v148 + 2);
                v150 = *(v148 + 3);
                if (v151 >= v150 >> 1)
                {
                  v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v150 > 1), v151 + 1, 1, v148);
                }

                *(v148 + 2) = v151 + 1;
                v152 = &v148[16 * v151];
                *(v152 + 4) = v147;
                *(v152 + 5) = v146;
                a2[15] = v148;
                goto LABEL_171;
              }

              goto LABEL_220;
            }

LABEL_219:
            __break(1u);
LABEL_220:
            __break(1u);
            goto LABEL_221;
          }

LABEL_218:
          __break(1u);
          goto LABEL_219;
        }
      }
    }

    if (([a1 respondsToSelector_] & 1) == 0 || !objc_msgSend(a1, sel_eventBody))
    {
      return swift_unknownObjectRelease();
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
      result = [a1 respondsToSelector_];
      if (result)
      {
        result = [a1 eventBody];
        if (result)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            [a1 timestamp];
            v154 = v153;
            objc_opt_self();
            v155 = swift_dynamicCastObjCClassUnconditional();
            swift_beginAccess();
            v156 = a2[16];
            swift_unknownObjectRetain();
            v157 = swift_isUniquelyReferenced_nonNull_native();
            a2[16] = v156;
            if ((v157 & 1) == 0)
            {
              v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v156 + 2) + 1, 1, v156);
              a2[16] = v156;
            }

            v159 = *(v156 + 2);
            v158 = *(v156 + 3);
            if (v159 >= v158 >> 1)
            {
              v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v158 > 1), v159 + 1, 1, v156);
            }

            *(v156 + 2) = v159 + 1;
            v160 = &v156[16 * v159];
            *(v160 + 4) = v155;
            *(v160 + 5) = v154;
            a2[16] = v156;
            goto LABEL_171;
          }

          goto LABEL_223;
        }

LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
        goto LABEL_224;
      }

LABEL_221:
      __break(1u);
      goto LABEL_222;
    }

LABEL_172:
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v79 = [v78 absoluteTimestamp];
  if (!v79)
  {
    goto LABEL_172;
  }

  v169[0] = v77;
  v80 = v79;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type Date and conformance Date();
  if (dispatch thunk of static Comparable.< infix(_:_:)() & 1) != 0 || (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_172;
  }

  result = [a1 respondsToSelector_];
  if ((result & 1) == 0)
  {
LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  v170 = v9;
  result = [a1 eventBody];
  if (!result)
  {
LABEL_225:
    __break(1u);
    return result;
  }

  objc_opt_self();
  v161 = swift_dynamicCastObjCClassUnconditional();
  Date.timeIntervalSinceReferenceDate.getter();
  v163 = v162;
  swift_beginAccess();
  v164 = a2[3];
  swift_unknownObjectRetain();
  v165 = swift_isUniquelyReferenced_nonNull_native();
  a2[3] = v164;
  if ((v165 & 1) == 0)
  {
    v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v164 + 2) + 1, 1, v164);
    a2[3] = v164;
  }

  v167 = *(v164 + 2);
  v166 = *(v164 + 3);
  if (v167 >= v166 >> 1)
  {
    v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v166 > 1), v167 + 1, 1, v164);
  }

  *(v164 + 2) = v167 + 1;
  v168 = &v164[16 * v167];
  *(v168 + 4) = v161;
  *(v168 + 5) = v163;
  a2[3] = v164;
  swift_endAccess();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(v170 + 8))(v12, v8);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void closure #2 in static PSEBiomeEventsSourceFetcher.fetchAppIntentEventAfter(answerEvent:)(void *a1, void *a2, uint64_t a3)
{
  v5 = [a1 eventBody];
  if (!v5)
  {
    return;
  }

  v18 = v5;
  v6 = [v5 itemID];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = [a2 itemID];
  if (!v11)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (!v10)
  {
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (!v15)
  {
LABEL_16:

    goto LABEL_17;
  }

  if (v8 == v13 && v10 == v15)
  {

    return;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
LABEL_17:
    swift_beginAccess();
    v16 = *(a3 + 16);
    *(a3 + 16) = v18;

    return;
  }

LABEL_20:
}

void thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t specialized static PSEBiomeEventsSourceFetcher.fetchSiriExecutionEvents(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &aBlock - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F90];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a2, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10.super.isa = Date._bridgeToObjectiveC()().super.isa;
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v10.super.isa endDate:isa maxEvents:0 lastN:0 reversed:0];

  v13 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v14 = [v13 Execution];
  swift_unknownObjectRelease();
  v15 = [v14 publisherWithOptions_];
  v25 = AbstractActivityCollector.collect(callback:);
  v26 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v24 = &block_descriptor_109;
  v16 = _Block_copy(&aBlock);
  v25 = partial apply for closure #2 in static PSEBiomeEventsSourceFetcher.fetchSiriExecutionEvents(startDate:endDate:);
  v26 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v24 = &block_descriptor_112;
  v17 = _Block_copy(&aBlock);

  v18 = [v15 sinkWithCompletion:v16 receiveInput:v17];

  _Block_release(v17);
  _Block_release(v16);

  swift_beginAccess();
  v19 = *(v7 + 16);

  return v19;
}

uint64_t specialized static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:)(char *a1, char *a2, void *a3, uint64_t a4)
{
  v140 = a4;
  v136 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v107 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v107 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v139 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v137 = &v107 - v22;
  v138 = v23;
  MEMORY[0x28223BE20](v21);
  v150 = &v107 - v24;
  Date.addingTimeInterval(_:)();
  v25 = v17[2];
  v141 = a2;
  v148 = v25;
  v149 = v17 + 2;
  v25(v15, a2, v16);
  v26 = v17[7];
  v26(v15, 0, 1, v16);
  v152 = a1;
  v27.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v151 = v17;
  v28 = v17[6];
  v153 = v16;
  isa = 0;
  if (v28(v15, 1, v16) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (v151[1])(v15, v153);
  }

  v146 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v27.super.isa endDate:isa maxEvents:0 lastN:0 reversed:0];

  v30 = v153;
  v148(v13, v150, v153);
  v26(v13, 0, 1, v30);
  v31.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v32 = 0;
  if (v28(v13, 1, v30) != 1)
  {
    v32 = Date._bridgeToObjectiveC()().super.isa;
    (v151[1])(v13, v153);
  }

  v147 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v31.super.isa endDate:v32 maxEvents:0 lastN:0 reversed:0];

  v33 = v153;
  v26(v10, 1, 1, v153);
  v34.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v35 = 0;
  if (v28(v10, 1, v33) != 1)
  {
    v35 = Date._bridgeToObjectiveC()().super.isa;
    (v151[1])(v10, v153);
  }

  v36 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v34.super.isa endDate:v35 maxEvents:0 lastN:0 reversed:0];
  v128 = v36;

  v37 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v38 = [v37 InFocus];
  v135 = v38;
  swift_unknownObjectRelease();
  v39 = v146;
  v146 = [v38 publisherWithOptions_];
  v40 = [BiomeLibrary() HomeKit];
  swift_unknownObjectRelease();
  v41 = [v40 Client];
  swift_unknownObjectRelease();
  v42 = [v41 AccessoryControl];
  v134 = v42;
  swift_unknownObjectRelease();
  v125 = [v42 publisherWithOptions_];
  v43 = [BiomeLibrary() Clock];
  swift_unknownObjectRelease();
  v44 = [v43 Alarm];
  v133 = v44;
  swift_unknownObjectRelease();
  v123 = [v44 publisherWithOptions_];
  v45 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v46 = [v45 Intents];
  swift_unknownObjectRelease();
  v47 = [v46 Transcript];
  v132 = v47;
  swift_unknownObjectRelease();
  v121 = [v47 publisherWithOptions_];
  v48 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v49 = [v48 NowPlaying];
  v131 = v49;
  swift_unknownObjectRelease();
  v118 = [v49 publisherWithOptions_];
  v50 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v51 = [v50 Intent];
  v130 = v51;
  swift_unknownObjectRelease();
  v52 = [v51 publisherWithOptions_];
  v53 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v54 = [v53 Engagement];
  v129 = v54;
  swift_unknownObjectRelease();
  v55 = [v54 publisherWithOptions_];
  v56 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v57 = [v56 Edit];
  v127 = v57;
  swift_unknownObjectRelease();
  v115 = [v57 publisherWithOptions_];
  v58 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v59 = [v58 Search];
  v126 = v59;
  swift_unknownObjectRelease();
  v114 = [v59 publisherWithOptions_];
  v60 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v61 = [v60 Favorite];
  v124 = v61;
  swift_unknownObjectRelease();
  v113 = [v61 publisherWithOptions_];
  v62 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v63 = [v62 Share];
  v122 = v63;
  swift_unknownObjectRelease();
  v145 = [v63 publisherWithOptions_];
  v64 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v65 = [v64 Picker];
  v120 = v65;
  swift_unknownObjectRelease();
  v144 = [v65 publisherWithOptions_];
  v66 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v67 = [v66 Delete];
  v119 = v67;
  swift_unknownObjectRelease();
  v143 = [v67 publisherWithOptions_];
  v68 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v69 = [v68 Memories];
  swift_unknownObjectRelease();
  v70 = [v69 Viewed];
  v117 = v70;
  swift_unknownObjectRelease();
  v142 = [v70 publisherWithOptions_];
  v71 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v72 = [v71 Memories];
  swift_unknownObjectRelease();
  v73 = [v72 Shared];
  v116 = v73;
  swift_unknownObjectRelease();
  v112 = v39;
  v74 = [v73 publisherWithOptions_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_25ED7CE50;
  v76 = v52;
  *(v75 + 32) = v52;
  v77 = v118;
  v78 = v125;
  *(v75 + 40) = v118;
  *(v75 + 48) = v78;
  v79 = v123;
  v80 = v121;
  *(v75 + 56) = v123;
  *(v75 + 64) = v80;
  v81 = v115;
  *(v75 + 72) = v55;
  *(v75 + 80) = v81;
  v82 = v114;
  v83 = v113;
  *(v75 + 88) = v114;
  *(v75 + 96) = v83;
  v84 = v144;
  *(v75 + 104) = v145;
  *(v75 + 112) = v84;
  v85 = v142;
  *(v75 + 120) = v143;
  *(v75 + 128) = v85;
  *(v75 + 136) = v74;
  v111 = v76;
  v118 = v77;
  v125 = v78;
  v123 = v79;
  v121 = v80;
  v110 = v55;
  v115 = v81;
  v114 = v82;
  v113 = v83;
  v145 = v145;
  v144 = v144;
  v143 = v143;
  v142 = v142;
  v109 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BPSPublisher_pMd, &_sSo12BPSPublisher_pMR);
  v86 = Array._bridgeToObjectiveC()().super.isa;

  v158 = closure #1 in static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:);
  v159 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v155 = 1107296256;
  v107 = &v156;
  v156 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Any) -> (@unowned NSComparisonResult);
  v157 = &block_descriptor_115;
  v87 = _Block_copy(&aBlock);
  v108 = [v146 orderedMergeWithOthers:v86 comparator:v87];
  _Block_release(v87);

  v88 = swift_allocObject();
  v89 = MEMORY[0x277D84F90];
  v88[2] = MEMORY[0x277D84F90];
  v88[3] = v89;
  v88[4] = v89;
  v88[5] = v89;
  v88[6] = v89;
  v88[7] = v89;
  v88[8] = v89;
  v88[9] = v89;
  v88[10] = v89;
  v88[11] = v89;
  v88[12] = v89;
  v88[13] = v89;
  v88[14] = v89;
  v88[15] = v89;
  v88[16] = v89;
  v90 = swift_allocObject();
  v91 = v140;
  v90[2] = v136;
  v90[3] = v91;
  v90[4] = v88;
  v158 = partial apply for closure #2 in static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:);
  v159 = v90;
  aBlock = MEMORY[0x277D85DD0];
  v155 = 1107296256;
  v156 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v157 = &block_descriptor_124;
  v136 = _Block_copy(&aBlock);

  v92 = v137;
  v93 = v153;
  v94 = v148;
  v148(v137, v152, v153);
  v95 = v139;
  v94(v139, v141, v93);
  v96 = v151;
  v97 = *(v151 + 80);
  v98 = (v97 + 24) & ~v97;
  v99 = (v138 + v97 + v98) & ~v97;
  v100 = swift_allocObject();
  *(v100 + 16) = v88;
  v101 = v96[4];
  v101(v100 + v98, v92, v93);
  v101(v100 + v99, v95, v93);
  v158 = partial apply for closure #3 in static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:);
  v159 = v100;
  aBlock = MEMORY[0x277D85DD0];
  v155 = 1107296256;
  v156 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ();
  v157 = &block_descriptor_130;
  v102 = _Block_copy(&aBlock);

  v103 = v108;
  v104 = v136;
  v105 = [v108 sinkWithCompletion:v136 receiveInput:v102];
  _Block_release(v102);
  _Block_release(v104);

  (v96[1])(v150, v93);
}

void *specialized static PSEBiomeEventsSourceFetcher.fetchAppIntentEventAfter(answerEvent:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = [a1 absoluteTimestamp];
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v7 + 32))(v13, v11, v6);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v31 = v16 + 16;
  (*(v7 + 56))(v5, 1, 1, v6);
  v32 = v13;
  v17.super.isa = Date._bridgeToObjectiveC()().super.isa;
  isa = 0;
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v5, v6);
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v17.super.isa endDate:isa maxEvents:2 lastN:0 reversed:0];

  v20 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v21 = [v20 Intent];
  swift_unknownObjectRelease();
  v22 = [v21 publisherWithOptions_];
  v37 = AbstractActivityCollector.collect(callback:);
  v38 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v36 = &block_descriptor_145;
  v23 = _Block_copy(&aBlock);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = v16;
  v37 = partial apply for closure #2 in static PSEBiomeEventsSourceFetcher.fetchAppIntentEventAfter(answerEvent:);
  v38 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v36 = &block_descriptor_151;
  v25 = _Block_copy(&aBlock);
  v26 = a1;

  v27 = [v22 sinkWithCompletion:v23 receiveInput:v25];
  _Block_release(v25);
  _Block_release(v23);

  (*(v7 + 8))(v32, v6);
  swift_beginAccess();
  v28 = *(v16 + 16);
  v29 = v28;

  return v28;
}

uint64_t specialized static PSEBiomeEventsSourceFetcher.fetchSiriUIEvents(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &aBlock - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F90];
  outlined init with copy of Date?(a2, v6);
  v8.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v6, v9);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v8.super.isa endDate:isa maxEvents:0 lastN:0 reversed:0];

  v13 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v14 = [v13 UI];
  swift_unknownObjectRelease();
  v15 = [v14 publisherWithOptions_];
  v25 = AbstractActivityCollector.collect(callback:);
  v26 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v24 = &block_descriptor_136;
  v16 = _Block_copy(&aBlock);
  v25 = partial apply for closure #2 in static PSEBiomeEventsSourceFetcher.fetchSiriUIEvents(startDate:endDate:);
  v26 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v24 = &block_descriptor_139;
  v17 = _Block_copy(&aBlock);

  v18 = [v15 sinkWithCompletion:v16 receiveInput:v17];

  _Block_release(v17);
  _Block_release(v16);

  swift_beginAccess();
  v19 = *(v7 + 16);

  return v19;
}

uint64_t type metadata accessor for PSEBiomeFetchConfiguration()
{
  result = type metadata singleton initialization cache for PSEBiomeFetchConfiguration;
  if (!type metadata singleton initialization cache for PSEBiomeFetchConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized static PSEBiomeEventsSourceFetcher.isAssistantClient(bmEvent:)(void *a1)
{
  v1 = [a1 identifiers];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 clientApplicationId];

    if (v3)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      String.lowercased()();

      lazy protocol witness table accessor for type String and conformance String();
      LOBYTE(v3) = StringProtocol.contains<A>(_:)();
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t type metadata completion function for PSEBiomeFetchConfiguration()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PSEBiomeEventsSource(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for PSEBiomeEventsSource(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #3 in static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:)(void *a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return closure #3 in static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:)(a1, v6, v1 + v5, v7);
}

char *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS8UTF8ViewV_s5UInt8Vs5NeverOTg5052_sSS18PostSiriEngagementE17encodeWithXorByte3keySSs5F12V_tFA2EXEfU_AITf1cn_n(unint64_t a1, unint64_t a2, char a3)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_5:
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v30 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v30;
    v9 = a1;
    v10 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v10) = 1;
    }

    v11 = 4 << v10;
    v12 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = v4;
    }

    v27 = v12;
    v25 = v5;
    v13 = 15;
    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        v5 = String.UTF8View._foreignCount()();
        goto LABEL_5;
      }

      v15 = v13;
      v16 = v11;
      if ((v13 & 0xC) == v11)
      {
        v15 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a1, a2);
        v9 = a1;
      }

      v17 = v15 >> 16;
      if (v15 >> 16 >= v27)
      {
        goto LABEL_35;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v19 = String.UTF8View._foreignSubscript(position:)();
        v9 = a1;
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v29[0] = v9;
        v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v19 = *(v29 + v17);
      }

      else
      {
        v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v9 & 0x1000000000000000) == 0)
        {
          v18 = _StringObject.sharedUTF8.getter();
          v9 = a1;
        }

        v19 = *(v18 + v17);
      }

      v30 = v6;
      v4 = *(v6 + 16);
      v20 = *(v6 + 24);
      if (v4 >= v20 >> 1)
      {
        v24 = v19;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v4 + 1, 1);
        v9 = a1;
        v19 = v24;
        v6 = v30;
      }

      *(v6 + 16) = v4 + 1;
      *(v6 + v4 + 32) = v19 ^ a3;
      v11 = v16;
      if ((v13 & 0xC) == v16)
      {
        v23 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a1, a2);
        v9 = a1;
        v13 = v23;
        v21 = v25;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_12:
          v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_13;
        }
      }

      else
      {
        v21 = v25;
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_12;
        }
      }

      if (v27 <= v13 >> 16)
      {
        goto LABEL_36;
      }

      v22 = String.UTF8View._foreignIndex(after:)();
      v9 = a1;
      v13 = v22;
LABEL_13:
      ++v8;
      if (v14 == v21)
      {
        return v6;
      }
    }
  }

  __break(1u);
  return result;
}

Swift::Int UnarchiveError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8CE700](a1 & 1);
  return Hasher._finalize()();
}

Swift::String __swiftcall String.encodeWithXorByte(key:)(Swift::UInt8 key)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for String.Encoding();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS8UTF8ViewV_s5UInt8Vs5NeverOTg5052_sSS18PostSiriEngagementE17encodeWithXorByte3keySSs5F12V_tFA2EXEfU_AITf1cn_n(v4, v3, key);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance [A]();
  v8 = String.init<A>(bytes:encoding:)();
  v10 = v9;

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance [A]);
  }

  return result;
}

uint64_t static Utils.deltaTBetween(eventStart:siriUISession:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v41 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v40 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  v22 = *(v12 + 16);
  v22(&v40 - v20, a2, v11);
  v23 = type metadata accessor for SiriUISession(0);
  v22(v19, a2 + *(v23 + 20), v11);
  outlined init with copy of Date?(v41, v10);
  v24 = (*(v12 + 48))(v10, 1, v11);
  if (v24 == 1)
  {
    v39 = *(v12 + 8);
    v39(v19, v11);
    v39(v21, v11);
    result = outlined destroy of Date?(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v37 = 0x3FF0000000000000;
    v26 = 0;
    v30 = 0.0;
    v38 = 0.0;
    a4 = 0.0;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    Date.timeIntervalSinceReferenceDate.getter();
    v26 = v25;
    Date.timeIntervalSinceReferenceDate.getter();
    v28 = v27;
    Date.timeIntervalSinceReferenceDate.getter();
    v30 = v28 - v29;
    Date.timeIntervalSinceReferenceDate.getter();
    v32 = v31;
    Date.timeIntervalSinceReferenceDate.getter();
    v34 = v33;
    v35 = *(v12 + 8);
    v35(v16, v11);
    v35(v19, v11);
    result = (v35)(v21, v11);
    v37 = 0;
    v38 = v32 - v34;
  }

  *a3 = v26;
  *(a3 + 8) = v30;
  *(a3 + 16) = v38;
  *(a3 + 24) = a4;
  *(a3 + 32) = v37;
  *(a3 + 40) = v24 != 1;
  return result;
}

uint64_t static Utils.deriveEngagmentType(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ReliabilityCategory();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0xD000000000000011 && 0x800000025ED80380 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000016 && 0x800000025ED803A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000016 && 0x800000025ED803C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = MEMORY[0x277D61518];
LABEL_11:
    v12 = *v11;
    v13 = type metadata accessor for ProtoTaskEngagementType();
    v14 = *(*(v13 - 8) + 104);

    return v14(a3, v12, v13);
  }

  if (a1 == 0xD000000000000013 && 0x800000025ED803E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = MEMORY[0x277D614E8];
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000013 && 0x800000025ED80400 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000013 && 0x800000025ED80420 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = MEMORY[0x277D614D8];
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000013 && 0x800000025ED7F6D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = MEMORY[0x277D614F0];
    goto LABEL_11;
  }

  v16 = v7;
  if (a1 == 0xD000000000000013 && 0x800000025ED7F6F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = MEMORY[0x277D61500];
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000013 && 0x800000025ED80440 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = MEMORY[0x277D614E0];
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000018 && 0x800000025ED80460 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = MEMORY[0x277D61520];
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000010 && 0x800000025ED80480 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = MEMORY[0x277D61508];
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000011 && 0x800000025ED804A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = MEMORY[0x277D61530];
    goto LABEL_11;
  }

  if (a1 == 0x7370616D4E49 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = MEMORY[0x277D61510];
    goto LABEL_11;
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.engagement);
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  MEMORY[0x25F8CE090](0xD00000000000003ELL, 0x800000025ED804C0);
  MEMORY[0x25F8CE090](a1, a2);
  v19 = v30;
  v18 = v31;
  v20 = *MEMORY[0x277D61580];
  v21 = type metadata accessor for EngagementFeaturizationError();
  (*(*(v21 - 8) + 104))(v10, v20, v21);
  (*(v7 + 104))(v10, *MEMORY[0x277D616A0], v6);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30 = v25;
    *v24 = 136315138;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v30);
    _os_log_impl(&dword_25ECEC000, v22, v23, "%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x25F8CEE50](v25, -1, -1);
    MEMORY[0x25F8CEE50](v24, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v26 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v10, v26, v27);

  (*(v16 + 8))(v10, v6);
  v28 = *MEMORY[0x277D614F8];
  v29 = type metadata accessor for ProtoTaskEngagementType();
  return (*(*(v29 - 8) + 104))(a3, v28, v29);
}

id static Utils.isDiagnosticsSubmissionAllowed()()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result effectiveBoolValueForSetting_];

    return (v2 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static Utils.extractInteraction(fromAppIntentEvent:)(void *a1)
{
  v2 = MEMORY[0x25F8CE7F0]();
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, &v3, &v4);
  objc_autoreleasePoolPop(v2);
}

void closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v8 = type metadata accessor for ReliabilityCategory();
  v66 = *(v8 - 8);
  v9 = *(v66 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = [a1 interaction];
  if (!v15)
  {
    v22 = a2;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.engagement);
    v64 = 0;
    v65 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    MEMORY[0x25F8CE090](0xD000000000000033, 0x800000025ED805A0);
    v24 = a1;
    v25 = [v24 description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    MEMORY[0x25F8CE090](v26, v28);

    v30 = v64;
    v29 = v65;
    v31 = *MEMORY[0x277D616D0];
    v32 = type metadata accessor for AppIntentEventDataIssues();
    (*(*(v32 - 8) + 104))(v14, v31, v32);
    (*(v66 + 104))(v14, *MEMORY[0x277D61678], v8);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v64 = v36;
      *v35 = 136315138;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v64);
      _os_log_impl(&dword_25ECEC000, v33, v34, "%s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x25F8CEE50](v36, -1, -1);
      MEMORY[0x25F8CEE50](v35, -1, -1);
    }

    a2 = v22;
    type metadata accessor for SiriTaskEngagementUtils();
    v37 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v14, v37, v38);

    (*(v66 + 8))(v14, v8);
    lazy protocol witness table accessor for type UnarchiveError and conformance UnarchiveError();
    v5 = swift_allocError();
    *v39 = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  v63 = v8;
  v16 = v15;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  outlined copy of Data._Representation(v17, v19);
  v21 = specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)();
  outlined consume of Data._Representation(v17, v19);
  if (v3)
  {
LABEL_3:
    outlined consume of Data._Representation(v17, v19);
LABEL_9:
    *a2 = v5;
    return;
  }

  v62 = a2;
  type metadata accessor for INInteraction();
  v40 = *MEMORY[0x277CCA308];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = NSCoder.decodeObject<A>(of:forKey:)();

  if (!v41)
  {
    v61 = v21;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.engagement);
    v64 = 0;
    v65 = 0xE000000000000000;
    _StringGuts.grow(_:)(78);
    MEMORY[0x25F8CE090](0xD00000000000004CLL, 0x800000025ED805E0);
    v43 = a1;
    v44 = [v43 description];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    MEMORY[0x25F8CE090](v45, v47);

    v49 = v64;
    v48 = v65;
    v50 = *MEMORY[0x277D616D0];
    v51 = type metadata accessor for AppIntentEventDataIssues();
    (*(*(v51 - 8) + 104))(v12, v50, v51);
    (*(v66 + 104))(v12, *MEMORY[0x277D61678], v63);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = v49;
      v56 = swift_slowAlloc();
      v64 = v56;
      *v54 = 136315138;
      *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v48, &v64);
      _os_log_impl(&dword_25ECEC000, v52, v53, "%s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x25F8CEE50](v56, -1, -1);
      MEMORY[0x25F8CEE50](v54, -1, -1);
    }

    a2 = v62;
    type metadata accessor for SiriTaskEngagementUtils();
    v57 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v12, v57, v58);

    (*(v66 + 8))(v12, v63);
    lazy protocol witness table accessor for type UnarchiveError and conformance UnarchiveError();
    v5 = swift_allocError();
    *v59 = 0;
    swift_willThrow();

    goto LABEL_3;
  }

  outlined consume of Data._Representation(v17, v19);

  *a3 = v41;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F8CE0D0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t specialized static Utils.formulateIntentTypeName(intentTypeName:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for ReliabilityCategory();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v28 = a2;
  v26[0] = 46;
  v26[1] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v9 = (StringProtocol.components<A>(separatedBy:)() + 16);
  if (*v9)
  {
    v10 = &v9[2 * *v9];
    v12 = *v10;
    v11 = v10[1];

    v13._countAndFlagsBits = 20041;
    v13._object = 0xE200000000000000;
    if (!String.hasPrefix(_:)(v13))
    {
      v27 = 20041;
      v28 = 0xE200000000000000;
      MEMORY[0x25F8CE090](v12, v11);

      return v27;
    }
  }

  else
  {

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.engagement);
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(109);
    MEMORY[0x25F8CE090](0xD000000000000048, 0x800000025ED80520);
    MEMORY[0x25F8CE090](a1, a2);
    MEMORY[0x25F8CE090](0xD000000000000023, 0x800000025ED80570);
    v16 = v27;
    v15 = v28;
    v17 = *MEMORY[0x277D61570];
    v18 = type metadata accessor for SiriExecutionEventDataIssues();
    (*(*(v18 - 8) + 104))(v8, v17, v18);
    (*(v5 + 104))(v8, *MEMORY[0x277D61698], v4);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v27);
      _os_log_impl(&dword_25ECEC000, v19, v20, "%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x25F8CEE50](v22, -1, -1);
      MEMORY[0x25F8CEE50](v21, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v23 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v8, v23, v24);

    (*(v5 + 8))(v8, v4);
    return 0x6465737261706E55;
  }

  return v12;
}

id specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)()
{
  v7[1] = *MEMORY[0x277D85DE8];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:isa error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t specialized static Utils.normalizedAlarmIdentifier(from:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLQueryItem();
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = &v40 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v43 = &v40 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v40 - v16;
  URLComponents.init(string:)();
  v18 = type metadata accessor for URLComponents();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of Date?(v17, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
    goto LABEL_23;
  }

  v20 = URLComponents.queryItems.getter();
  result = (*(v19 + 8))(v17, v18);
  if (!v20)
  {
    goto LABEL_23;
  }

  v40 = v13;
  v41 = a1;
  v42 = a2;
  v47 = *(v20 + 16);
  if (!v47)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_19:

    a1 = v41;
    if (*(v24 + 16))
    {
      v34 = v48;
      v35 = v43;
      (*(v48 + 16))(v43, v24 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v4);

      v36 = v40;
      (*(v34 + 32))(v40, v35, v4);
      v37 = URLQueryItem.value.getter();
      v39 = v38;
      (*(v34 + 8))(v36, v4);
      if (v39)
      {
        return v37;
      }
    }

    else
    {
    }

LABEL_23:

    return a1;
  }

  v22 = 0;
  v46 = v48 + 16;
  v44 = (v48 + 8);
  v23 = (v48 + 32);
  v24 = MEMORY[0x277D84F90];
  v45 = v4;
  while (v22 < *(v20 + 16))
  {
    v25 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v26 = *(v48 + 72);
    (*(v48 + 16))(v50, v20 + v25 + v26 * v22, v4);
    if (URLQueryItem.name.getter() == 25705 && v27 == 0xE200000000000000)
    {

LABEL_13:
      v29 = *v23;
      (*v23)(v49, v50, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
        v24 = v51;
      }

      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1);
        v24 = v51;
      }

      *(v24 + 16) = v32 + 1;
      v33 = v24 + v25 + v32 * v26;
      v4 = v45;
      result = (v29)(v33, v49, v45);
      goto LABEL_7;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
      goto LABEL_13;
    }

    result = (*v44)(v50, v4);
LABEL_7:
    if (v47 == ++v22)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type UnarchiveError and conformance UnarchiveError()
{
  result = lazy protocol witness table cache variable for type UnarchiveError and conformance UnarchiveError;
  if (!lazy protocol witness table cache variable for type UnarchiveError and conformance UnarchiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnarchiveError and conformance UnarchiveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnarchiveError and conformance UnarchiveError;
  if (!lazy protocol witness table cache variable for type UnarchiveError and conformance UnarchiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnarchiveError and conformance UnarchiveError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnarchiveError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UnarchiveError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t type metadata accessor for INInteraction()
{
  result = lazy cache variable for type metadata for INInteraction;
  if (!lazy cache variable for type metadata for INInteraction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INInteraction);
  }

  return result;
}

uint64_t UserDefaultsDomainProvider.lastCollectionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  Date.init(timeIntervalSinceNow:)();
  v12 = *(v1 + 16);
  if (v12)
  {
    swift_beginAccess();
    v13 = *(v2 + 40);
    v14 = *(v2 + 48);

    v15 = MEMORY[0x25F8CDFC0](v13, v14);

    v16 = [v12 valueForKey_];

    if (v16)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    v47 = v45;
    v48 = v46;
    if (*(&v46 + 1))
    {
      outlined destroy of Any?(&v47);
      v17 = *(v2 + 40);
      v18 = *(v2 + 48);

      v19 = MEMORY[0x25F8CDFC0](v17, v18);

      [v12 doubleForKey_];
      v21 = v20;

      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.engagement);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v47 = v26;
        *v25 = 136315394;
        v44 = v4;
        v27 = a1;
        v29 = *(v2 + 40);
        v28 = *(v2 + 48);

        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v47);

        *(v25 + 4) = v30;
        a1 = v27;
        v4 = v44;
        *(v25 + 12) = 2048;
        *(v25 + 14) = v21;
        _os_log_impl(&dword_25ECEC000, v23, v24, "The userdefault has key %s with the value %f", v25, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x25F8CEE50](v26, -1, -1);
        MEMORY[0x25F8CEE50](v25, -1, -1);
      }

      Date.init(timeIntervalSinceReferenceDate:)();
      lazy protocol witness table accessor for type Date and conformance Date();
      v31 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v32 = *(v5 + 8);
      v33 = (v5 + 32);
      if (v31)
      {
        v32(v11, v4);
        return (*v33)(a1, v9, v4);
      }

      else
      {
        v32(v9, v4);
        return (*v33)(a1, v11, v4);
      }
    }
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  outlined destroy of Any?(&v47);
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.engagement);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v45 = v39;
    *v38 = 136315138;
    swift_beginAccess();
    v41 = *(v2 + 40);
    v40 = *(v2 + 48);

    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v40, &v45);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_25ECEC000, v36, v37, "The userdefault contained no value for %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x25F8CEE50](v39, -1, -1);
    MEMORY[0x25F8CEE50](v38, -1, -1);
  }

  return (*(v5 + 32))(a1, v11, v4);
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UserDefaultsDomainProvider.__allocating_init(collectorIdentifier:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  UserDefaultsDomainProvider.init(collectorIdentifier:domain:)(a1, a2, a3, a4);
  return v8;
}

uint64_t UserDefaultsDomainProvider.lastCollectionDate.setter(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[3] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (v4)
  {
    v5 = v1;
    Date.timeIntervalSinceReferenceDate.getter();
    v7 = v6;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.engagement);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35 = v12;
      *v11 = 136315394;
      swift_beginAccess();
      v13 = v1[5];
      v14 = v1[6];

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v35);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v7;
      _os_log_impl(&dword_25ECEC000, v9, v10, "Set key %s to %f", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x25F8CEE50](v12, -1, -1);
      MEMORY[0x25F8CEE50](v11, -1, -1);
    }

    v16 = v1[2];
    if (v16)
    {
      swift_beginAccess();
      v17 = v1[5];
      v18 = v5[6];
      v19 = v16;

      v20 = MEMORY[0x25F8CDFC0](v17, v18);

      [v19 setDouble:v20 forKey:v7];
    }

    else
    {

      v20 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v36 = v30;
        *v29 = 136315138;
        swift_beginAccess();
        v32 = v5[5];
        v31 = v5[6];

        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v36);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_25ECEC000, v20, v28, "Fail to set key %s due to empty userdefaults", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x25F8CEE50](v30, -1, -1);
        MEMORY[0x25F8CEE50](v29, -1, -1);
      }
    }

    v34 = type metadata accessor for Date();
    return (*(*(v34 - 8) + 8))(a1, v34);
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.engagement);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_25ECEC000, v22, v23, "Skip userDefault set due to empty identifier", v24, 2u);
      MEMORY[0x25F8CEE50](v24, -1, -1);
    }

    v25 = type metadata accessor for Date();
    v26 = *(*(v25 - 8) + 8);

    return v26(a1, v25);
  }
}

uint64_t UserDefaultsDomainProvider.userDefaultsKey.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t UserDefaultsDomainProvider.userDefaultsKey.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void *UserDefaultsDomainProvider.init(collectorIdentifier:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v11 = MEMORY[0x25F8CDFC0](a3, a4);

  v12 = [v10 initWithSuiteName_];

  v5[2] = v12;
  v5[3] = a1;
  v5[4] = a2;

  MEMORY[0x25F8CE090](0xD000000000000011, 0x800000025ED7F8C0);
  v5[5] = a1;
  v5[6] = a2;
  return v5;
}

uint64_t key path setter for UserDefaultsDomainProvider.lastCollectionDate : UserDefaultsDomainProvider(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return UserDefaultsDomainProvider.lastCollectionDate.setter(v7);
}

void (*UserDefaultsDomainProvider.lastCollectionDate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = type metadata accessor for Date();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  UserDefaultsDomainProvider.lastCollectionDate.getter(v9);
  return UserDefaultsDomainProvider.lastCollectionDate.modify;
}

void UserDefaultsDomainProvider.lastCollectionDate.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    UserDefaultsDomainProvider.lastCollectionDate.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    UserDefaultsDomainProvider.lastCollectionDate.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t UserDefaultsDomainProvider.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t UserDefaultsDomainProvider.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void PSEAppIntentTranscriptSELFEmitter.emitPSEAppIntentTranscript(appIntentTranscriptSignals:appLaunchSignals:task:)(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v274 = a3;
  v272 = a2;
  v4 = type metadata accessor for ReliabilityCategory();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v248 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v248 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v248 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v248 - v17;
  MEMORY[0x28223BE20](v16);
  v269 = v248 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v267 = v248 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v268 = v248 - v25;
  MEMORY[0x28223BE20](v24);
  v266 = v248 - v26;
  v27 = type metadata accessor for UUID();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = v248 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v33 = MEMORY[0x28223BE20](v32);
  v34 = MEMORY[0x28223BE20](v33);
  v39 = v248 - v38;
  v40 = a1 & 0xFFFFFFFFFFFFFF8;
  v41 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  v42 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v42)
  {
LABEL_50:
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static Logger.engagement);
    v75 = *MEMORY[0x277D61710];
    v76 = type metadata accessor for TranscriptEventDataIssues();
    (*(*(v76 - 8) + 104))(v9, v75, v76);
    (*(v5 + 104))(v9, *MEMORY[0x277D61690], v4);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v278[0] = v80;
      *v79 = 136315138;
      *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007ALL, 0x800000025ED80750, v278);
      _os_log_impl(&dword_25ECEC000, v77, v78, "%s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x25F8CEE50](v80, -1, -1);
      MEMORY[0x25F8CEE50](v79, -1, -1);
    }

    v81 = v274;
    v82 = v272;
    type metadata accessor for SiriTaskEngagementUtils();
    v83 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v9, v83, v84);

    (*(v5 + 8))(v9, v4);
    (*(*v275 + 176))(v82, v81);
    return;
  }

LABEL_3:
  v259 = v18;
  v265 = v34;
  v263 = v15;
  v18 = (a1 & 0xC000000000000001);
  v271 = v4;
  v262 = v39;
  v257 = v31;
  v260 = v36;
  v256 = v37;
  v258 = v35;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v273 = *(a1 + 32);

      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_58;
  }

LABEL_56:
  v273 = MEMORY[0x25F8CE460](0, a1);
LABEL_6:
  v43 = [objc_allocWithZone(MEMORY[0x277D5A190]) init];
  if (!v43)
  {
    goto LABEL_41;
  }

  v264 = v43;
  v261 = [objc_allocWithZone(MEMORY[0x277D5A198]) init];
  if (!v261)
  {
    v54 = v264;
LABEL_40:

LABEL_41:
    if (one-time initialization token for engagement == -1)
    {
LABEL_42:
      v60 = type metadata accessor for Logger();
      __swift_project_value_buffer(v60, static Logger.engagement);
      v61 = *MEMORY[0x277D615B0];
      v62 = type metadata accessor for EngagementSignalCollectionError();
      (*(*(v62 - 8) + 104))(v12, v61, v62);
      v63 = v271;
      (*(v5 + 104))(v12, *MEMORY[0x277D616A8], v271);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v278[0] = v67;
        *v66 = 136315138;
        *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000025ED806A0, v278);
        _os_log_impl(&dword_25ECEC000, v64, v65, "%s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x25F8CEE50](v67, -1, -1);
        MEMORY[0x25F8CEE50](v66, -1, -1);
      }

      type metadata accessor for SiriTaskEngagementUtils();
      v68 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
      MEMORY[0x25F8CDB30](v12, v68, v69);

      (*(v5 + 8))(v12, v63);
      return;
    }

LABEL_58:
    swift_once();
    goto LABEL_42;
  }

  v254 = [objc_allocWithZone(MEMORY[0x277D5A178]) init];
  if (!v254)
  {
    v55 = v264;
    v56 = v261;
LABEL_39:

    v54 = v56;
    goto LABEL_40;
  }

  v255 = [objc_allocWithZone(MEMORY[0x277D5A1A0]) init];
  if (!v255)
  {
    v57 = v254;
    v58 = v264;
    v59 = v261;
LABEL_38:

    v55 = v59;
    v56 = v57;
    goto LABEL_39;
  }

  v253 = [objc_allocWithZone(MEMORY[0x277D5A170]) init];
  if (!v253)
  {

    v58 = v261;
    v59 = v254;
    v57 = v255;
    goto LABEL_38;
  }

  v12 = 0;
  v276 = MEMORY[0x277D84F90];
  v270 = a1 & 0xFFFFFFFFFFFFFF8;
  v252 = v5;
  v5 = MEMORY[0x277D839B0];
  do
  {
    if (v18)
    {
      v34 = MEMORY[0x25F8CE460](v12, a1);
      v31 = v34;
      v4 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v12 >= *(v270 + 16))
      {
        __break(1u);
        goto LABEL_56;
      }

      v31 = *(a1 + 8 * v12 + 32);

      v4 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        v259 = v18;
        v265 = v34;
        if (a1 < 0)
        {
          v70 = a1;
        }

        else
        {
          v70 = v40;
        }

        v71 = v39;
        v260 = v36;
        v72 = v37;
        v258 = v35;
        v73 = MEMORY[0x25F8CE500](v70);
        v35 = v258;
        v37 = v72;
        v36 = v260;
        v39 = v71;
        v42 = v73;
        v34 = v265;
        v18 = v259;
        if (!v42)
        {
          goto LABEL_50;
        }

        goto LABEL_3;
      }
    }

    v15 = (*(*v31 + 216))();
    if (*(v15 + 16) && (v44 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v45 & 1) != 0))
    {
      outlined init with copy of Any(*(v15 + 56) + 32 * v44, v278);

      if (swift_dynamicCast() & 1) != 0 && (v279)
      {
        v15 = &v276;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = v41;
        v46 = v5;
        v47 = *(v276 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v5 = v46;
        v41 = v9;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_25;
      }
    }

    else
    {
    }

LABEL_25:
    ++v12;
  }

  while (v4 != v42);
  v48 = v276;
  if (v276 < 0 || (v276 & 0x4000000000000000) != 0)
  {
    v49 = MEMORY[0x25F8CE500](v276);
    if (!v49)
    {
      goto LABEL_60;
    }

LABEL_29:
    v50 = __OFSUB__(v49, 1);
    v51 = v49 - 1;
    if (v50)
    {
LABEL_143:
      __break(1u);
    }

    else if ((v48 & 0xC000000000000001) == 0)
    {
      if ((v51 & 0x8000000000000000) == 0)
      {
        if (v51 < *(v48 + 16))
        {
          v52 = *(v48 + 8 * v51 + 32);

          goto LABEL_61;
        }

        goto LABEL_148;
      }

      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v159 = MEMORY[0x25F8CE460](v51, v48);

    v52 = v159;
    goto LABEL_61;
  }

  v49 = *(v276 + 16);
  if (v49)
  {
    goto LABEL_29;
  }

LABEL_60:

  v52 = v273;
LABEL_61:
  (*(*v52 + 120))(v278, v53);
  v85 = [v255 setEventDonationTimeInSecondsSince2001_];
  v86 = *(*v52 + 216);
  v87 = *v52 + 216;
  v273 = v52;
  v251 = v86;
  v250 = v87;
  v88 = (v86)(v85);
  if (*(v88 + 16) && (v89 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED806E0), (v90 & 1) != 0))
  {
    outlined init with copy of Any(*(v88 + 56) + 32 * v89, v278);

    v91 = swift_dynamicCast();
    if (v91)
    {
      v92 = v276;
      v93 = v277;
      v94 = v273;
      goto LABEL_67;
    }
  }

  else
  {
  }

  v94 = v273;
  v92 = (*(*v273 + 144))(v91);
  v93 = v95;
LABEL_67:
  v96 = MEMORY[0x25F8CDFC0](v92, v93);

  v97 = v255;
  [v255 setDomain_];

  v98 = (*(*v94 + 168))();
  v99 = MEMORY[0x25F8CDFC0](v98);

  [v97 setAction_];

  v100 = v251();
  if (*(v100 + 16))
  {
    v101 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379);
    v102 = v272;
    if (v103)
    {
      outlined init with copy of Any(*(v100 + 56) + 32 * v101, v278);

      if (swift_dynamicCast())
      {
        v104 = v276;
      }

      else
      {
        v104 = 2;
      }
    }

    else
    {

      v104 = 2;
    }
  }

  else
  {

    v104 = 2;
    v102 = v272;
  }

  v15 = v275;
  v105 = (*(*v275 + 104))(v104);
  [v255 setIsDonatedBySiri_];
  if (v102 >> 62)
  {
    if (v102 < 0)
    {
      v126 = v102;
    }

    else
    {
      v126 = v102 & 0xFFFFFFFFFFFFFF8;
    }

    if (!MEMORY[0x25F8CE500](v126))
    {
      goto LABEL_102;
    }

LABEL_76:
    if ((v102 & 0xC000000000000001) != 0)
    {
      v107 = MEMORY[0x25F8CE460](0, v102);
      v106 = v107;
LABEL_79:
      (*(*v106 + 120))(v278, v107);
      v108 = (*(*v106 + 216))([v255 setAppLaunchTimeInSecondsSince2001_]);
      if (*(v108 + 16) && (v109 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690), (v110 & 1) != 0))
      {
        outlined init with copy of Any(*(v108 + 56) + 32 * v109, v278);

        v111 = swift_dynamicCast();
        if (v111)
        {
          v112 = v276;
        }

        else
        {
          v112 = 0;
        }

        if (v111)
        {
          v113 = v277;
        }

        else
        {
          v113 = 0;
        }
      }

      else
      {

        v112 = 0;
        v113 = 0;
      }

      v114 = v251();
      if (*(v114 + 16) && (v115 = specialized __RawDictionaryStorage.find<A>(_:)(0x4449656C646E7562, 0xE800000000000000), (v116 & 1) != 0))
      {
        outlined init with copy of Any(*(v114 + 56) + 32 * v115, v278);

        v117 = swift_dynamicCast();
        if (v117)
        {
          v118 = v276;
        }

        else
        {
          v118 = 0;
        }

        if (v117)
        {
          v119 = v277;
        }

        else
        {
          v119 = 0;
        }
      }

      else
      {

        v118 = 0;
        v119 = 0;
      }

      v120 = v275;
      v121 = (*(*v275 + 120))(v112, v113, v118, v119);

      v122 = v255;
      v123 = (*(*v106 + 168))([v255 setAppFollowup_]);
      v124 = (*(*v120 + 136))(v123);

      [v122 setAppLaunchReason_];

      goto LABEL_103;
    }

    if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v106 = *(v102 + 32);

      goto LABEL_79;
    }

    goto LABEL_147;
  }

  if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_76;
  }

LABEL_102:
  v125 = [v255 setAppFollowup_];
LABEL_103:
  v127 = (*v274 + 328);
  v249 = *v127;
  v248[1] = v127;
  v128 = v249(v125);
  v129 = (*(*v128 + 104))(v128);

  [v253 setIsSiriResultUseful_];
  if (v41)
  {
    if (a1 < 0)
    {
      v130 = a1;
    }

    else
    {
      v130 = v270;
    }

    if (MEMORY[0x25F8CE500](v130) < 2)
    {
      goto LABEL_151;
    }
  }

  else if (*(v270 + 16) < 2)
  {
LABEL_151:
    v139 = v255;
    [v255 setHasUserInitiatedFollowup_];
    goto LABEL_152;
  }

  v48 = 0;
  v276 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D839B0];
  while (2)
  {
    if (v18)
    {
      v131 = MEMORY[0x25F8CE460](v48, a1);
      v132 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_141;
      }
    }

    else
    {
      v51 = *(v270 + 16);
      if (v48 >= v51)
      {
        goto LABEL_142;
      }

      v131 = *(a1 + 8 * v48 + 32);

      v132 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }
    }

    v133 = (*(*v131 + 216))();
    if (*(v133 + 16) && (v134 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v135 & 1) != 0))
    {
      outlined init with copy of Any(*(v133 + 56) + 32 * v134, v278);

      if ((swift_dynamicCast() & 1) != 0 && (v279 & 1) == 0)
      {
        (*(*v131 + 120))(v278);
        if (*&v278[1] <= 30.0)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v136 = *(v276 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_125;
        }
      }
    }

    else
    {
    }

LABEL_125:
    ++v48;
    if (v132 != v42)
    {
      continue;
    }

    break;
  }

  v15 = v276;
  if (v276 < 0 || (v276 & 0x4000000000000000) != 0)
  {
LABEL_149:
    v137 = MEMORY[0x25F8CE500](v15);
    if (v137)
    {
      goto LABEL_129;
    }

LABEL_150:

    goto LABEL_151;
  }

  v137 = *(v276 + 16);
  if (!v137)
  {
    goto LABEL_150;
  }

LABEL_129:
  v50 = __OFSUB__(v137, 1);
  v138 = v137 - 1;
  if (v50)
  {
    __break(1u);
    goto LABEL_178;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_178:
    v140 = MEMORY[0x25F8CE460](v138, v15);

    v139 = v255;
    goto LABEL_134;
  }

  v139 = v255;
  if ((v138 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_180;
  }

  if (v138 >= *(v15 + 16))
  {
LABEL_180:
    __break(1u);
    return;
  }

  v140 = *(v15 + 8 * v138 + 32);

LABEL_134:
  v141 = [v139 setHasUserInitiatedFollowup_];
  v142 = *(*v140 + 168);
  v143 = (v142)(v141);
  v144 = MEMORY[0x25F8CDFC0](v143);

  v145 = v253;
  [v253 setAppIntentName_];

  v146 = v142();
  v147 = (*(*v275 + 168))(v146);

  v148 = [v145 setFollowUpActionType_];
  v149 = *(*v140 + 216);
  v150 = (v149)(v148);
  if (*(v150 + 16) && (v151 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x800000025ED7E770), (v152 & 1) != 0))
  {
    outlined init with copy of Any(*(v150 + 56) + 32 * v151, v278);

    if (swift_dynamicCast())
    {
      v153 = v276;
      goto LABEL_140;
    }
  }

  else
  {
  }

  v153 = 0;
LABEL_140:
  v154 = v253;
  v155 = [v253 setIsFirstPartyApp_];
  v156 = (v251)(v155);
  v157 = v149();
  v158 = (*(*v275 + 160))(v156, v157);

  [v154 setFollowUpEntityComparison_];

LABEL_152:
  v160 = v254;
  [v254 setCommonSignal_];
  [v160 setEngagementSignal_];
  v161 = v262;
  UUID.init()();
  v162 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v164 = [v162 initWithNSUUID_];

  v165 = v260;
  v166 = *(v260 + 8);
  v167 = v161;
  v168 = v265;
  v166(v167, v265);
  v169 = v261;
  [v261 setPseId_];

  v170 = v274;
  (*(*v274 + 160))();
  v171 = v266;
  UUID.init(uuidString:)();

  v270 = *(v165 + 48);
  v172 = (v270)(v171, 1, v168);
  v272 = v166;
  if (v172 == 1)
  {
    v173 = outlined destroy of UUID?(v171);
  }

  else
  {
    v174 = v171;
    v175 = v258;
    (*(v165 + 32))(v258, v174, v168);
    v176 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v177 = UUID._bridgeToObjectiveC()().super.isa;
    v178 = [v176 initWithNSUUID_];

    [v169 setUiSessionId_];
    v173 = (v166)(v175, v265);
  }

  v179 = v268;
  v180 = ((*(*v170 + 208))(v173) + 16);
  v181 = v271;
  if (*v180)
  {
    v182 = &v180[2 * *v180];
    v183 = *v182;
    v184 = v182[1];

    UUID.init(uuidString:)();
    v185 = v265;

    if ((v270)(v179, 1, v185) == 1)
    {
      outlined destroy of UUID?(v179);
      goto LABEL_159;
    }

    v202 = v256;
    (*(v260 + 32))(v256, v179, v185);
    v201 = 0x277D5A000uLL;
    v203 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v204 = UUID._bridgeToObjectiveC()().super.isa;
    v205 = [v203 initWithNSUUID_];

    [v261 setOriginalLastRequestId_];
    v195 = v265;
    v200 = (v272)(v202, v265);
    v196 = v267;
  }

  else
  {

LABEL_159:
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v186 = type metadata accessor for Logger();
    __swift_project_value_buffer(v186, static Logger.engagement);
    v187 = *MEMORY[0x277D615E0];
    v188 = type metadata accessor for EngagementSignalCollectionError();
    v189 = v269;
    (*(*(v188 - 8) + 104))(v269, v187, v188);
    (*(v252 + 104))(v189, *MEMORY[0x277D616A8], v181);
    v190 = Logger.logObject.getter();
    v191 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v278[0] = v193;
      *v192 = 136315138;
      *(v192 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000025ED7E6D0, v278);
      _os_log_impl(&dword_25ECEC000, v190, v191, "%s", v192, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v193);
      v194 = v193;
      v170 = v274;
      MEMORY[0x25F8CEE50](v194, -1, -1);
      MEMORY[0x25F8CEE50](v192, -1, -1);
    }

    v195 = v265;
    v196 = v267;
    type metadata accessor for SiriTaskEngagementUtils();
    v197 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v198 = v269;
    MEMORY[0x25F8CDB30](v269, v197, v199);

    v200 = (*(v252 + 8))(v198, v181);
    v201 = 0x277D5A000;
  }

  (*(*v170 + 184))(v200);
  UUID.init(uuidString:)();

  if ((v270)(v196, 1, v195) == 1)
  {
    outlined destroy of UUID?(v196);
    v206 = v252;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v207 = type metadata accessor for Logger();
    __swift_project_value_buffer(v207, static Logger.engagement);
    v208 = *MEMORY[0x277D615C8];
    v209 = type metadata accessor for EngagementSignalCollectionError();
    v210 = v259;
    (*(*(v209 - 8) + 104))(v259, v208, v209);
    (*(v206 + 104))(v210, *MEMORY[0x277D616A8], v181);
    v211 = Logger.logObject.getter();
    v212 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v211, v212))
    {
      v213 = swift_slowAlloc();
      v214 = swift_slowAlloc();
      v278[0] = v214;
      *v213 = 136315138;
      *(v213 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000025ED7E700, v278);
      _os_log_impl(&dword_25ECEC000, v211, v212, "%s", v213, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v214);
      MEMORY[0x25F8CEE50](v214, -1, -1);
      MEMORY[0x25F8CEE50](v213, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v222 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v223 = v259;
    MEMORY[0x25F8CDB30](v259, v222, v224);

    v221 = (*(v206 + 8))(v223, v181);
    v220 = v261;
  }

  else
  {
    v215 = v257;
    (*(v260 + 32))(v257, v196, v195);
    v216 = v195;
    v217 = objc_allocWithZone(*(v201 + 3192));
    v218 = UUID._bridgeToObjectiveC()().super.isa;
    v219 = [v217 initWithNSUUID_];

    v220 = v261;
    [v261 setTaskId_];

    v221 = (v272)(v215, v216);
    v206 = v252;
  }

  v225 = v249(v221);
  v226 = (*(*v225 + 104))(v225);

  v227 = v275;
  v228 = [v220 setSiriEngagementTaskSuccess_];
  [v220 setTriggerOrigin_];
  v229 = v264;
  [v264 setEventMetadata_];
  [v229 setAppIntentSignalGenerated_];
  v230 = v220;
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v231 = type metadata accessor for Logger();
  __swift_project_value_buffer(v231, static Logger.engagement);
  v232 = *MEMORY[0x277D61608];
  v233 = type metadata accessor for SELFPSELogged();
  v234 = v263;
  (*(*(v233 - 8) + 104))(v263, v232, v233);
  (*(v206 + 104))(v234, *MEMORY[0x277D61658], v181);
  v235 = Logger.logObject.getter();
  v236 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v235, v236))
  {
    v237 = swift_slowAlloc();
    v238 = swift_slowAlloc();
    v278[0] = v238;
    *v237 = 136315138;
    *(v237 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000044, 0x800000025ED80700, v278);
    _os_log_impl(&dword_25ECEC000, v235, v236, "%s", v237, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v238);
    v239 = v238;
    v230 = v261;
    MEMORY[0x25F8CEE50](v239, -1, -1);
    MEMORY[0x25F8CEE50](v237, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v240 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  v241 = v263;
  MEMORY[0x25F8CDB30](v263, v240, v242);

  (*(v206 + 8))(v241, v181);
  v243 = [objc_opt_self() sharedAnalytics];
  v244 = [v243 defaultMessageStream];

  v245 = v262;
  UUID.init()();
  v246 = UUID._bridgeToObjectiveC()().super.isa;
  v272(v245, v265);
  v247 = v264;
  [v244 emitMessage:v264 isolatedStreamUUID:v246];
}

uint64_t PSEAppIntentTranscriptSELFEmitter.getFollowUpEntityComparison(siriSignalData:followupSignalData:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000025ED807D0);
    if (v5)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v4, v13);
      if (swift_dynamicCast())
      {
        if (*(a2 + 16))
        {
          v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000025ED807D0);
          if (v7)
          {
            outlined init with copy of Any(*(a2 + 56) + 32 * v6, v13);
            if (swift_dynamicCast())
            {
              v8 = HIBYTE(v12) & 0xF;
              if ((v12 & 0x2000000000000000) == 0)
              {
                v8 = *v11 & 0xFFFFFFFFFFFFLL;
              }

              if (v8)
              {
                v9 = HIBYTE(v12) & 0xF;
                if ((v12 & 0x2000000000000000) == 0)
                {
                  v9 = *v11 & 0xFFFFFFFFFFFFLL;
                }

                if (v9)
                {

                  return 2;
                }
              }
            }
          }
        }
      }
    }
  }

  return 1;
}

uint64_t PSEAppIntentTranscriptSELFEmitter.getFollowUpActionType(followUpAction:)()
{
  String.lowercased()();
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {

    return 1;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 14;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 2;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 3;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 4;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 5;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 6;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 7;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 8;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 9;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 10;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 11;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 12;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 13;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 15;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 16;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 17;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 18;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 31;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 19;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 20;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 21;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 22;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 23;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 24;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 25;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 26;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 27;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 28;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 29;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 30;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 32;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 34;
  }

  else
  {
    v1 = StringProtocol.contains<A>(_:)();

    if (v1)
    {
      return 33;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t PSEAppIntentTranscriptSELFEmitter.emitEmptyPSEAppIntentTranscript(appLaunchSignals:task:)(uint64_t a1, uint64_t a2)
{
  v207 = a2;
  v4 = type metadata accessor for ReliabilityCategory();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v182 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v182 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v182 - v14;
  MEMORY[0x28223BE20](v13);
  v204 = v182 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v203 = v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v202 = v182 - v22;
  MEMORY[0x28223BE20](v21);
  v201 = v182 - v23;
  v24 = type metadata accessor for UUID();
  v205 = *(v24 - 8);
  v25 = *(v205 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v200 = v182 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v198 = v182 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v199 = v182 - v31;
  MEMORY[0x28223BE20](v30);
  v206 = v182 - v32;
  v33 = [objc_allocWithZone(MEMORY[0x277D5A190]) init];
  if (v33)
  {
    v34 = v33;
    v195 = v15;
    v197 = v2;
    v35 = [objc_allocWithZone(MEMORY[0x277D5A198]) init];
    if (v35)
    {
      v36 = v35;
      v196 = [objc_allocWithZone(MEMORY[0x277D5A178]) init];
      if (v196)
      {
        v194 = [objc_allocWithZone(MEMORY[0x277D5A1A0]) init];
        if (v194)
        {
          v191 = [objc_allocWithZone(MEMORY[0x277D5A170]) init];
          if (v191)
          {
            v210[0] = MEMORY[0x277D84F90];
            if (a1 >> 62)
            {
              if (a1 < 0)
              {
                v55 = a1;
              }

              else
              {
                v55 = a1 & 0xFFFFFFFFFFFFFF8;
              }

              v9 = MEMORY[0x25F8CE500](v55);
            }

            else
            {
              v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v190 = v5;
            v189 = v12;
            v193 = v24;
            v188 = v34;
            v192 = v36;
            v184 = v4;
            if (v9)
            {
              v5 = 0;
              v4 = a1 & 0xFFFFFFFFFFFFFF8;
              v36 = 0xE400000000000000;
              while (1)
              {
                if ((a1 & 0xC000000000000001) != 0)
                {
                  v38 = MEMORY[0x25F8CE460](v5, a1);
                  v34 = (v5 + 1);
                  if (__OFADD__(v5, 1))
                  {
LABEL_24:
                    __break(1u);
                    goto LABEL_25;
                  }
                }

                else
                {
                  if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_44;
                  }

                  v38 = *(a1 + 8 * v5 + 32);

                  v34 = (v5 + 1);
                  if (__OFADD__(v5, 1))
                  {
                    goto LABEL_24;
                  }
                }

                if ((*(*v38 + 168))() == 1769105747 && v39 == 0xE400000000000000)
                {
                }

                else
                {
                  v2 = v39;
                  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v41 & 1) == 0)
                  {

                    goto LABEL_12;
                  }
                }

                v2 = v210;
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                v37 = *(v210[0] + 16);
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
LABEL_12:
                ++v5;
                if (v34 == v9)
                {
                  v43 = v210[0];
                  v4 = v184;
                  v44 = MEMORY[0x277D84F90];
                  if ((v210[0] & 0x8000000000000000) == 0)
                  {
                    goto LABEL_37;
                  }

                  goto LABEL_49;
                }
              }
            }

            v43 = MEMORY[0x277D84F90];
            v44 = MEMORY[0x277D84F90];
            if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
            {
              goto LABEL_49;
            }

LABEL_37:
            if ((v43 & 0x4000000000000000) != 0)
            {
LABEL_49:
              if (MEMORY[0x25F8CE500](v43))
              {
                goto LABEL_39;
              }
            }

            else if (*(v43 + 16))
            {
LABEL_39:
              if ((v43 & 0xC000000000000001) != 0)
              {
                v2 = MEMORY[0x25F8CE460](0, v43);
              }

              else
              {
                if (!*(v43 + 16))
                {
                  __break(1u);
                  goto LABEL_131;
                }

                v2 = *(v43 + 32);
              }

LABEL_51:
              v210[0] = v44;
              v187 = v2;
              if (v9)
              {
                v36 = 0;
                v5 = a1 & 0xC000000000000001;
                v44 = a1 & 0xFFFFFFFFFFFFFF8;
                v4 = 0xE400000000000000;
                while (1)
                {
                  if (v5)
                  {
                    v56 = MEMORY[0x25F8CE460](v36, a1);
                    v34 = (v36 + 1);
                    if (__OFADD__(v36, 1))
                    {
LABEL_67:
                      __break(1u);
LABEL_68:
                      v44 = v210[0];
                      v4 = v184;
                      v2 = v187;
                      break;
                    }
                  }

                  else
                  {
                    if (v36 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_77;
                    }

                    v56 = *(a1 + 8 * v36 + 32);

                    v34 = (v36 + 1);
                    if (__OFADD__(v36, 1))
                    {
                      goto LABEL_67;
                    }
                  }

                  v57 = (*(*v56 + 168))();
                  v2 = v58;
                  if (v57 == 1769105747 && v58 == 0xE400000000000000)
                  {
                  }

                  else
                  {
                    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v60)
                    {
                    }

                    else
                    {
                      v2 = v210;
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      v61 = *(v210[0] + 16);
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                    }
                  }

                  ++v36;
                  if (v34 == v9)
                  {
                    goto LABEL_68;
                  }
                }
              }

              a1 = v196;
              v36 = v194;
              if (v44 < 0 || (v44 & 0x4000000000000000) != 0)
              {
LABEL_77:
                if (MEMORY[0x25F8CE500](v44))
                {
LABEL_72:
                  if ((v44 & 0xC000000000000001) == 0)
                  {
                    if (!*(v44 + 16))
                    {
                      __break(1u);
                      goto LABEL_133;
                    }

                    v62 = *(v44 + 32);

                    goto LABEL_75;
                  }

LABEL_131:
                  v62 = MEMORY[0x25F8CE460](0, v44);
LABEL_75:

                  goto LABEL_79;
                }
              }

              else if (*(v44 + 16))
              {
                goto LABEL_72;
              }

              v62 = 0;
LABEL_79:
              if (v62)
              {
                v63 = 2;
              }

              else
              {
                v63 = 3;
              }

              if (v2)
              {
                v64 = 1;
              }

              else
              {
                v64 = v63;
              }

              [v36 setIsDonatedBySiri_];
              if (v2)
              {
                v65 = *(*v2 + 120);

                v65(v210, v66);

                v67 = *v210;
              }

              else
              {
                v67 = -1.0;
              }

              v68 = [v36 setEventDonationTimeInSecondsSince2001_];
              v69 = *(*v207 + 280);
              v70 = (v69)(v68);
              v71 = MEMORY[0x25F8CDFC0](v70);

              [v36 setDomain_];

              v72 = v69();
              v73 = MEMORY[0x25F8CDFC0](v72);

              [v36 setAction_];

              v186 = v62;
              if (v62)
              {

                (*(*v62 + 120))(v210, [v36 setHasUserInitiatedFollowup_]);
                v74 = (*(*v62 + 168))([v36 setAppLaunchTimeInSecondsSince2001_]);
                v75 = (*(*v197 + 136))(v74);

                v76 = (*(*v62 + 216))([v36 setAppLaunchReason_]);
                v77 = v193;
                if (*(v76 + 16) && (v78 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690), (v79 & 1) != 0))
                {
                  outlined init with copy of Any(*(v76 + 56) + 32 * v78, v210);

                  v80 = swift_dynamicCast();
                  if (v80)
                  {
                    v81 = v208;
                  }

                  else
                  {
                    v81 = 0;
                  }

                  if (v80)
                  {
                    v82 = v209;
                  }

                  else
                  {
                    v82 = 0;
                  }
                }

                else
                {

                  v81 = 0;
                  v82 = 0;
                }

                v83 = (*(*v207 + 256))();
                if (v83[2])
                {
                  v85 = v83[4];
                  v84 = v83[5];
                }

                else
                {
                  v85 = 0;
                  v84 = 0;
                }

                v87 = (*(*v197 + 120))(v81, v82, v85, v84);

                v36 = v194;
                [v194 setAppFollowup_];
                if ([v36 appFollowup] == 4)
                {
                  v88 = (*(*v207 + 328))();
                  (*(*v88 + 112))(4);
                }
              }

              else
              {
                [v36 setHasUserInitiatedFollowup_];
                v86 = [v36 setAppFollowup_];
                v77 = v193;
              }

              v89 = v207;
              v90 = (*v207 + 328);
              v183 = *v90;
              v182[1] = v90;
              v91 = v183(v86);
              v92 = (*(*v91 + 104))(v91);

              v93 = v92 == 3;
              v94 = v191;
              [v191 setIsSiriResultUseful_];
              [a1 setCommonSignal_];
              [a1 setEngagementSignal_];
              v95 = v206;
              UUID.init()();
              v96 = objc_allocWithZone(MEMORY[0x277D5AC78]);
              isa = UUID._bridgeToObjectiveC()().super.isa;
              v98 = [v96 initWithNSUUID_];

              v99 = v205;
              v100 = (v205 + 8);
              v36 = *(v205 + 8);
              (v36)(v95, v77);
              v101 = v192;
              [v192 setPseId_];

              (*(*v89 + 160))();
              v102 = v201;
              UUID.init(uuidString:)();
              v103 = v99;

              v105 = *(v99 + 48);
              v104 = v99 + 48;
              v185 = v105;
              v106 = v105(v102, 1, v77);
              v107 = v202;
              if (v106 == 1)
              {
                v108 = outlined destroy of UUID?(v102);
              }

              else
              {
                v109 = *(v103 + 32);
                v110 = v100;
                v182[0] = v104;
                v111 = v199;
                v109(v199, v102, v77);
                v112 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                v113 = UUID._bridgeToObjectiveC()().super.isa;
                v114 = [v112 initWithNSUUID_];

                [v101 setUiSessionId_];
                v115 = v111;
                v100 = v110;
                v108 = (v36)(v115, v77);
              }

              v116 = ((*(*v207 + 208))(v108) + 16);
              v117 = &SiriExecutionTask;
              v34 = MEMORY[0x277D616A8];
              if (*v116)
              {
                v118 = &v116[2 * *v116];
                v119 = *v118;
                v120 = v118[1];

                v121 = v193;

                UUID.init(uuidString:)();

                if (v185(v107, 1, v121) != 1)
                {
                  v136 = v34;
                  v137 = v198;
                  (*(v205 + 32))(v198, v107, v121);
                  v138 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                  v139 = UUID._bridgeToObjectiveC()().super.isa;
                  v140 = [v138 initWithNSUUID_];

                  [v192 setOriginalLastRequestId_];
                  v141 = v137;
                  v34 = v136;
                  v117 = &SiriExecutionTask;
                  v135 = (v36)(v141, v121);
                  a1 = v196;
                  goto LABEL_118;
                }

                outlined destroy of UUID?(v107);
              }

              else
              {
              }

              v202 = v100;
              if (one-time initialization token for engagement != -1)
              {
                swift_once();
              }

              v122 = type metadata accessor for Logger();
              __swift_project_value_buffer(v122, static Logger.engagement);
              v123 = *MEMORY[0x277D615E0];
              v124 = type metadata accessor for EngagementSignalCollectionError();
              v125 = v204;
              (*(*(v124 - 8) + 104))(v204, v123, v124);
              (*(v190 + 104))(v125, *v34, v4);
              v126 = Logger.logObject.getter();
              v127 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v126, v127))
              {
                v128 = swift_slowAlloc();
                v129 = v34;
                v130 = swift_slowAlloc();
                v210[0] = v130;
                *v128 = 136315138;
                *(v128 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000025ED7E6D0, v210);
                _os_log_impl(&dword_25ECEC000, v126, v127, "%s", v128, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v130);
                v131 = v130;
                v34 = v129;
                v117 = &SiriExecutionTask;
                MEMORY[0x25F8CEE50](v131, -1, -1);
                MEMORY[0x25F8CEE50](v128, -1, -1);
              }

              v121 = v193;
              type metadata accessor for SiriTaskEngagementUtils();
              v132 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
              v133 = v204;
              MEMORY[0x25F8CDB30](v204, v132, v134);

              v135 = (*(v190 + 8))(v133, v4);
              a1 = v196;
LABEL_118:
              (*(*v207 + 184))(v135);
              v142 = v203;
              UUID.init(uuidString:)();

              if (v185(v142, 1, v121) != 1)
              {
                v157 = v200;
                (*(v205 + 32))(v200, v142, v121);
                v158 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                v159 = UUID._bridgeToObjectiveC()().super.isa;
                v160 = [v158 initWithNSUUID_];

                v156 = v192;
                [v192 setTaskId_];

                v155 = (v36)(v157, v121);
                v5 = v190;
                v151 = v183;
LABEL_124:
                v161 = v151(v155);
                v162 = (*(*v161 + 104))(v161);

                v163 = v197;
                v164 = [v156 setSiriEngagementTaskSuccess_];
                [v156 setTriggerOrigin_];
                v165 = v188;
                [v188 setEventMetadata_];
                [v165 setAppIntentSignalGenerated_];
                if (one-time initialization token for engagement != -1)
                {
                  swift_once();
                }

                v166 = type metadata accessor for Logger();
                __swift_project_value_buffer(v166, static Logger.engagement);
                v167 = *MEMORY[0x277D61608];
                v168 = type metadata accessor for SELFPSELogged();
                v169 = v189;
                (*(*(v168 - 8) + 104))(v189, v167, v168);
                (*(v5 + 104))(v169, *MEMORY[0x277D61658], v4);
                v170 = Logger.logObject.getter();
                v171 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v170, v171))
                {
                  v172 = swift_slowAlloc();
                  v173 = swift_slowAlloc();
                  v210[0] = v173;
                  *v172 = 136315138;
                  *(v172 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000044, 0x800000025ED80700, v210);
                  _os_log_impl(&dword_25ECEC000, v170, v171, "%s", v172, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v173);
                  MEMORY[0x25F8CEE50](v173, -1, -1);
                  MEMORY[0x25F8CEE50](v172, -1, -1);
                }

                type metadata accessor for SiriTaskEngagementUtils();
                v174 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                v175 = v189;
                MEMORY[0x25F8CDB30](v189, v174, v176);

                (*(v5 + 8))(v175, v4);
                v177 = [objc_opt_self() sharedAnalytics];
                v178 = [v177 defaultMessageStream];

                v179 = v206;
                UUID.init()();
                v180 = UUID._bridgeToObjectiveC()().super.isa;
                (v36)(v179, v193);
                v181 = v188;
                [v178 emitMessage:v188 isolatedStreamUUID:v180];
              }

              outlined destroy of UUID?(v142);
              v5 = v190;
              if (*&v117[20].flags == -1)
              {
LABEL_120:
                v143 = type metadata accessor for Logger();
                __swift_project_value_buffer(v143, static Logger.engagement);
                v144 = *MEMORY[0x277D615C8];
                v145 = type metadata accessor for EngagementSignalCollectionError();
                v146 = v195;
                (*(*(v145 - 8) + 104))(v195, v144, v145);
                (*(v5 + 104))(v146, *v34, v4);
                v147 = Logger.logObject.getter();
                v148 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v147, v148))
                {
                  v149 = swift_slowAlloc();
                  v150 = swift_slowAlloc();
                  v210[0] = v150;
                  *v149 = 136315138;
                  *(v149 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000025ED7E700, v210);
                  _os_log_impl(&dword_25ECEC000, v147, v148, "%s", v149, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v150);
                  MEMORY[0x25F8CEE50](v150, -1, -1);
                  MEMORY[0x25F8CEE50](v149, -1, -1);
                }

                v151 = v183;
                type metadata accessor for SiriTaskEngagementUtils();
                v152 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                v153 = v195;
                MEMORY[0x25F8CDB30](v195, v152, v154);

                v155 = (*(v5 + 8))(v153, v4);
                v156 = v192;
                goto LABEL_124;
              }

LABEL_133:
              swift_once();
              goto LABEL_120;
            }

            v2 = 0;
            goto LABEL_51;
          }

          v34 = v36;
          v36 = v196;
          v42 = v194;
        }

        else
        {
LABEL_25:
          v42 = v196;
        }

        v34 = v36;
        v36 = v42;
      }

      v34 = v36;
    }
  }

  if (one-time initialization token for engagement != -1)
  {
LABEL_44:
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Logger.engagement);
  v46 = *MEMORY[0x277D615B0];
  v47 = type metadata accessor for EngagementSignalCollectionError();
  (*(*(v47 - 8) + 104))(v9, v46, v47);
  (*(v5 + 104))(v9, *MEMORY[0x277D616A8], v4);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v210[0] = v51;
    *v50 = 136315138;
    *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000025ED806A0, v210);
    _os_log_impl(&dword_25ECEC000, v48, v49, "%s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x25F8CEE50](v51, -1, -1);
    MEMORY[0x25F8CEE50](v50, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v52 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v9, v52, v53);

  return (*(v5 + 8))(v9, v4);
}

void static IdentifyEntitySimilarityExample.runIdentifyMusicEntitySimilarity()()
{
  v132 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  isa = v132[-1].isa;
  v0 = *(isa + 8);
  MEMORY[0x28223BE20](v132);
  v131 = &isa - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v119 = &isa - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v123 = &isa - v6;
  v130 = type metadata accessor for ProtoPlayMediaTaskFeatureSet();
  v7 = *(v130 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v130);
  v129 = &isa - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ProtoTaskFeatureSet();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &isa - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for ProtoMediaEntitySignal();
  v15 = *(v122 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v122);
  v101 = &isa - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v116 = &isa - v19;
  v20 = type metadata accessor for ProtoTaskEngagementType();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v114 = &isa - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v113 = &isa - v25;
  v102 = type metadata accessor for ProtoSiriTaskEngagement();
  v115 = *(v102 - 8);
  v26 = *(v115 + 64);
  MEMORY[0x28223BE20](v102);
  v28 = &isa - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = static SiriTaskEngagementRetriever.retrieveAllSiriTaskEngagement(streamId:)();
  if (v29)
  {
    v30 = v29;
    v112 = *(v29 + 16);
    if (v112)
    {
      v31 = 0;
      v110 = v29 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
      v109 = v115 + 16;
      v108 = *MEMORY[0x277D61530];
      v107 = (v21 + 104);
      v106 = (v21 + 8);
      v105 = (v115 + 8);
      v128 = (v11 + 8);
      v118 = (v7 + 8);
      v121 = (v15 + 56);
      v125 = isa + 16;
      v124 = (isa + 8);
      v99 = (v15 + 16);
      v98 = (v15 + 32);
      v97 = (v15 + 8);
      v104 = MEMORY[0x277D84F90];
      v103 = MEMORY[0x277D84F90];
      v32 = v102;
      v100 = v20;
      v95 = v28;
      v111 = v29;
      while (v31 < v30[2])
      {
        v33 = *(v115 + 72);
        v117 = v31;
        (*(v115 + 16))(v28, v110 + v33 * v31, v32);
        v34 = v113;
        ProtoSiriTaskEngagement.engagementType.getter();
        v35 = v114;
        (*v107)(v114, v108, v20);
        lazy protocol witness table accessor for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType();
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v36 = *v106;
        (*v106)(v35, v20);
        v36(v34, v20);
        if (v136 == v133)
        {
          ProtoSiriTaskEngagement.siriTaskFeatureSet.getter();
          v37 = v129;
          ProtoTaskFeatureSet.playMediaFeatureSet.getter();
          v38 = *v128;
          (*v128)(v14, v10);
          ProtoPlayMediaTaskFeatureSet.mediaEntity.getter();
          v39 = *v118;
          v40 = v130;
          (*v118)(v37, v130);
          ProtoSiriTaskEngagement.siriTaskFeatureSet.getter();
          ProtoTaskFeatureSet.playMediaFeatureSet.getter();
          v38(v14, v10);
          ProtoPlayMediaTaskFeatureSet.playDurationInSec.getter();
          v42 = v41;
          v39(v37, v40);
          v120 = *v121;
          v120(v123, 1, 1, v122);
          v43 = *(ProtoSiriTaskEngagement.followupUserInitatedEngagements.getter() + 16);

          if (v43)
          {
            v44 = ProtoSiriTaskEngagement.followupUserInitatedEngagements.getter();
            v45 = *(v44 + 16);
            if (v45)
            {
              v46 = (*(isa + 80) + 32) & ~*(isa + 80);
              v96 = v44;
              v47 = v44 + v46;
              v48 = *(isa + 9);
              v126 = *(isa + 2);
              v127 = v48;
              v126(v131, v44 + v46, v132);
              while (1)
              {
                ProtoTaskEngagementFeatureSet.featureSet.getter();
                v49 = v129;
                ProtoTaskFeatureSet.playMediaFeatureSet.getter();
                v38(v14, v10);
                v50 = ProtoPlayMediaTaskFeatureSet.actionState.getter();
                v52 = v51;
                v39(v49, v130);
                if (v50 == 0x676E6979616C50 && v52 == 0xE700000000000000)
                {
                }

                else
                {
                  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v53 & 1) == 0)
                  {
                    (*v124)(v131, v132);
                    goto LABEL_12;
                  }
                }

                v54 = v131;
                ProtoTaskEngagementFeatureSet.featureSet.getter();
                v55 = v129;
                ProtoTaskFeatureSet.playMediaFeatureSet.getter();
                v38(v14, v10);
                v56 = v10;
                v57 = v119;
                ProtoPlayMediaTaskFeatureSet.mediaEntity.getter();
                v39(v55, v130);
                (*v124)(v54, v132);
                v58 = v123;
                outlined destroy of Date?(v123, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
                v120(v57, 0, 1, v122);
                v59 = v57;
                v10 = v56;
                outlined init with take of ProtoMediaEntitySignal?(v59, v58);
LABEL_12:
                v47 += v127;
                if (!--v45)
                {
                  break;
                }

                v126(v131, v47, v132);
              }
            }

            v60 = v116;
            v28 = v95;
          }

          else
          {
            v61 = v116;
            if (one-time initialization token for engagement != -1)
            {
              swift_once();
            }

            v62 = type metadata accessor for Logger();
            __swift_project_value_buffer(v62, static Logger.engagement);
            v63 = Logger.logObject.getter();
            v64 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              *v65 = 0;
              _os_log_impl(&dword_25ECEC000, v63, v64, "No user followups", v65, 2u);
              MEMORY[0x25F8CEE50](v65, -1, -1);
            }

            v60 = v61;
          }

          v66 = v101;
          v67 = v122;
          (*v99)(v101, v60, v122);
          v68 = v119;
          outlined init with copy of Date?(v123, v119, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
          v69 = type metadata accessor for MusicEntitySimilarity(0);
          v70 = *(v69 + 48);
          v71 = *(v69 + 52);
          v72 = swift_allocObject();
          v73 = OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_userFollowupEntity;
          v120(v72 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_userFollowupEntity, 1, 1, v67);
          (*v98)(v72 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_siriChosenEntity, v66, v67);
          swift_beginAccess();
          outlined assign with take of ProtoMediaEntitySignal?(v68, v72 + v73, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
          swift_endAccess();
          *(v72 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_playDuration) = v42;
          LOBYTE(v136) = MusicEntitySimilarity.compare()(&v137) & 1;
          outlined init with copy of Date?(&v136, &v133, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMd, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMR);
          LODWORD(v73) = v133;
          __swift_destroy_boxed_opaque_existential_0(&v134);
          if (v73 == 1)
          {
            outlined init with copy of Date?(&v136, &v133, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMd, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMR);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v20 = v100;
            v30 = v111;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v104[2] + 1, 1, v104);
            }

            v76 = v104[2];
            v75 = v104[3];
            v77 = v76 + 1;
            if (v76 >= v75 >> 1)
            {
              v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v104);
            }

            outlined destroy of Date?(&v136, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMd, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMR);
            outlined destroy of Date?(v123, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
            (*v97)(v116, v122);
            v32 = v102;
            (*v105)(v28, v102);
            v78 = &v135;
          }

          else
          {
            outlined init with copy of Date?(&v136, &v133, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMd, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMR);
            v79 = swift_isUniquelyReferenced_nonNull_native();
            v20 = v100;
            v30 = v111;
            if ((v79 & 1) == 0)
            {
              v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v103[2] + 1, 1, v103);
            }

            v76 = v103[2];
            v80 = v103[3];
            v77 = v76 + 1;
            if (v76 >= v80 >> 1)
            {
              v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v76 + 1, 1, v103);
            }

            outlined destroy of Date?(&v136, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMd, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMR);
            outlined destroy of Date?(v123, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
            (*v97)(v116, v122);
            v32 = v102;
            (*v105)(v28, v102);
            v78 = &v134 + 8;
          }

          v81 = *(v78 - 32);
          *(v81 + 16) = v77;
          outlined init with take of EntitySimilarity(&v134, v81 + 40 * v76 + 32);
        }

        else
        {
          (*v105)(v28, v32);
          v30 = v111;
        }

        v31 = v117 + 1;
        if (v117 + 1 == v112)
        {

          v30 = v103;
          goto LABEL_46;
        }
      }

      __break(1u);
    }

    else
    {

      v30 = MEMORY[0x277D84F90];
      v104 = MEMORY[0x277D84F90];
LABEL_46:
      if (one-time initialization token for engagement == -1)
      {
        goto LABEL_47;
      }
    }

    swift_once();
LABEL_47:
    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, static Logger.engagement);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_25ECEC000, v87, v88, "\n\n\n ======== Bad Music Entity Match ========\n\n", v89, 2u);
      MEMORY[0x25F8CEE50](v89, -1, -1);
    }

    v90 = v30[2];
    if (v90)
    {
      v91 = (v30 + 4);
      do
      {
        outlined init with copy of EntitySimilarity(v91, &v136);
        v92 = v138;
        v93 = v139;
        __swift_project_boxed_opaque_existential_1(&v136, v138);
        (*(v93 + 72))(v92, v93);
        __swift_destroy_boxed_opaque_existential_0(&v136);
        v91 += 40;
        --v90;
      }

      while (v90);
    }

    return;
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  __swift_project_value_buffer(v82, static Logger.engagement);
  v132 = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v132, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_25ECEC000, v132, v83, "Failed to retrieve engagement features", v84, 2u);
    MEMORY[0x25F8CEE50](v84, -1, -1);
  }

  v85 = v132;
}

uint64_t MusicEntitySimilarity.__allocating_init(siri:playDuration:userFollowup:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_userFollowupEntity;
  v11 = type metadata accessor for ProtoMediaEntitySignal();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9 + v10, 1, 1, v11);
  (*(v12 + 32))(v9 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_siriChosenEntity, a1, v11);
  swift_beginAccess();
  outlined assign with take of ProtoMediaEntitySignal?(a2, v9 + v10, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  swift_endAccess();
  *(v9 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_playDuration) = a3;
  return v9;
}

uint64_t key path setter for MusicEntitySimilarity.siriChosenEntity : MusicEntitySimilarity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoMediaEntitySignal();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 112))(v7);
}

uint64_t key path setter for MusicEntitySimilarity.userFollowupEntity : MusicEntitySimilarity(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  return (*(**a2 + 136))(v7);
}

double MusicEntitySimilarity.playDuration.getter()
{
  v1 = OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_playDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MusicEntitySimilarity.playDuration.setter(double a1)
{
  v3 = OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_playDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MusicEntitySimilarity.init(siri:playDuration:userFollowup:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_userFollowupEntity;
  v8 = type metadata accessor for ProtoMediaEntitySignal();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v3 + v7, 1, 1, v8);
  (*(v9 + 32))(v3 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_siriChosenEntity, a1, v8);
  swift_beginAccess();
  outlined assign with take of ProtoMediaEntitySignal?(a2, v3 + v7, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  swift_endAccess();
  *(v3 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_playDuration) = a3;
  return v3;
}

uint64_t MusicEntitySimilarity.compare()(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for ProtoMediaEntitySignal();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - v14;
  (*(*v1 + 128))(v13);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of Date?(v6, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
LABEL_3:
    a1[3] = type metadata accessor for MusicEntitySimilarity(0);
    a1[4] = &protocol witness table for MusicEntitySimilarity;
    *a1 = v1;

    return 0;
  }

  v17 = (*(v8 + 32))(v15, v6, v7);
  (*(*v1 + 104))(v17);
  v18 = ProtoMediaEntitySignal.adamIdentifier.getter();
  v20 = v19;
  v21 = *(v8 + 8);
  v21(v12, v7);
  if (v18 == ProtoMediaEntitySignal.adamIdentifier.getter() && v20 == v22)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      v21(v15, v7);
      goto LABEL_3;
    }
  }

  a1[3] = type metadata accessor for MusicEntitySimilarity(0);
  a1[4] = &protocol witness table for MusicEntitySimilarity;
  *a1 = v1;

  v21(v15, v7);
  return 1;
}

Swift::Void __swiftcall MusicEntitySimilarity.print()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v66 - v4;
  v6 = type metadata accessor for ProtoMediaEntitySignal();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v66 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v66 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v66 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v66 - v22;
  (*(*v0 + 128))(v21);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of Date?(v5, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  }

  else
  {
    v72 = v20;
    (*(v7 + 32))(v23, v5, v6);
    v24 = v23;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.engagement);
    v26 = *(v7 + 16);
    v26(v72, v23, v6);
    v71 = v17;
    v26(v17, v23, v6);
    v26(v14, v23, v6);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v67 = v14;
      v30 = v29;
      v70 = swift_slowAlloc();
      v73 = v70;
      *v30 = 136316674;
      v31 = *(*v1 + 104);
      v66 = v27;
      v68 = v28;
      v31();
      v32 = ProtoMediaEntitySignal.title.getter();
      v34 = v33;
      v69 = v24;
      v35 = *(v7 + 8);
      v35(v11, v6);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v73);

      *(v30 + 4) = v36;
      *(v30 + 12) = 2080;
      (v31)(v37);
      v38 = ProtoMediaEntitySignal.album.getter();
      v40 = v39;
      v35(v11, v6);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v73);

      *(v30 + 14) = v41;
      *(v30 + 22) = 2080;
      (v31)(v42);
      v43 = ProtoMediaEntitySignal.artist.getter();
      v45 = v44;
      v35(v11, v6);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v73);

      *(v30 + 24) = v46;
      *(v30 + 32) = 2048;
      *(v30 + 34) = (*(*v1 + 152))(v47);
      *(v30 + 42) = 2080;
      v48 = v72;
      v49 = ProtoMediaEntitySignal.title.getter();
      v51 = v50;
      v35(v48, v6);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v73);

      *(v30 + 44) = v52;
      *(v30 + 52) = 2080;
      v53 = v71;
      v54 = ProtoMediaEntitySignal.album.getter();
      v56 = v55;
      v35(v53, v6);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v73);

      *(v30 + 54) = v57;
      *(v30 + 62) = 2080;
      v58 = v67;
      v59 = ProtoMediaEntitySignal.artist.getter();
      v61 = v60;
      v35(v58, v6);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v73);

      *(v30 + 64) = v62;
      v63 = v66;
      _os_log_impl(&dword_25ECEC000, v66, v68, "\n Siri Played => Title: %s, Album: %s, Artist: %s ------------- Played %f seconds\n User Played in followup => Title: %s, Album: %s, Artist: %s\n\n ", v30, 0x48u);
      v64 = v70;
      swift_arrayDestroy();
      MEMORY[0x25F8CEE50](v64, -1, -1);
      MEMORY[0x25F8CEE50](v30, -1, -1);

      v35(v69, v6);
    }

    else
    {

      v65 = *(v7 + 8);
      v65(v14, v6);
      v65(v71, v6);
      v65(v72, v6);
      v65(v24, v6);
    }
  }
}

uint64_t MusicEntitySimilarity.deinit()
{
  v1 = OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_siriChosenEntity;
  v2 = type metadata accessor for ProtoMediaEntitySignal();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_userFollowupEntity, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  return v0;
}

uint64_t MusicEntitySimilarity.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_siriChosenEntity;
  v2 = type metadata accessor for ProtoMediaEntitySignal();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_userFollowupEntity, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t (*protocol witness for EntitySimilarity.siriChosenEntity.modify in conformance MusicEntitySimilarity(uint64_t *a1))()
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
  *(v3 + 32) = (*(**v1 + 120))();
  return protocol witness for EntitySimilarity.siriChosenEntity.modify in conformance MusicEntitySimilarity;
}

uint64_t (*protocol witness for EntitySimilarity.userFollowupEntity.modify in conformance MusicEntitySimilarity(uint64_t *a1))()
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
  *(v3 + 32) = (*(**v1 + 144))();
  return protocol witness for EntitySimilarity.userFollowupEntity.modify in conformance MusicEntitySimilarity;
}

uint64_t key path setter for PhoneCallEntitySimilarity.siriChosenEntity : PhoneCallEntitySimilarity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoContactEntitySignal();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 112))(v7);
}

uint64_t MusicEntitySimilarity.siriChosenEntity.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t MusicEntitySimilarity.siriChosenEntity.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t key path setter for PhoneCallEntitySimilarity.userFollowupEntity : PhoneCallEntitySimilarity(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  return (*(**a2 + 136))(v7);
}

uint64_t MusicEntitySimilarity.userFollowupEntity.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of Date?(v4 + v8, a4, a2, a3);
}

uint64_t MusicEntitySimilarity.userFollowupEntity.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of ProtoMediaEntitySignal?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

double PhoneCallEntitySimilarity.callDuration.getter()
{
  v1 = OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_callDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PhoneCallEntitySimilarity.callDuration.setter(double a1)
{
  v3 = OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_callDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PhoneCallEntitySimilarity.__allocating_init(siri:callDuration:userFollowup:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_userFollowupEntity;
  v11 = type metadata accessor for ProtoContactEntitySignal();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9 + v10, 1, 1, v11);
  (*(v12 + 32))(v9 + OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_siriChosenEntity, a1, v11);
  swift_beginAccess();
  outlined assign with take of ProtoMediaEntitySignal?(a2, v9 + v10, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  swift_endAccess();
  *(v9 + OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_callDuration) = a3;
  return v9;
}

uint64_t PhoneCallEntitySimilarity.init(siri:callDuration:userFollowup:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_userFollowupEntity;
  v8 = type metadata accessor for ProtoContactEntitySignal();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v3 + v7, 1, 1, v8);
  (*(v9 + 32))(v3 + OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_siriChosenEntity, a1, v8);
  swift_beginAccess();
  outlined assign with take of ProtoMediaEntitySignal?(a2, v3 + v7, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  swift_endAccess();
  *(v3 + OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_callDuration) = a3;
  return v3;
}

uint64_t PhoneCallEntitySimilarity.compare()(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v37 - v5;
  v7 = type metadata accessor for ProtoContactEntitySignal();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v37 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v37 - v17;
  (*(*v1 + 128))(v16);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v39 = a1;
    v19 = (*(v8 + 32))(v18, v6, v7);
    v20 = *(*v1 + 104);
    v37[1] = *v1 + 104;
    v38 = v20;
    v20(v19);
    v21 = ProtoContactEntitySignal.givenName.getter();
    v23 = v22;
    v24 = *(v8 + 8);
    v24(v15, v7);
    if (v21 == ProtoContactEntitySignal.givenName.getter() && v23 == v25)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v38(v28);
    v29 = ProtoContactEntitySignal.familyName.getter();
    v31 = v30;
    v24(v12, v7);
    if (v29 == ProtoContactEntitySignal.familyName.getter() && v31 == v32)
    {
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
LABEL_15:
        v24(v18, v7);
        a1 = v39;
        goto LABEL_16;
      }
    }

    v34 = type metadata accessor for PhoneCallEntitySimilarity(0);
    v35 = v39;
    v39[3] = v34;
    v35[4] = &protocol witness table for PhoneCallEntitySimilarity;
    *v35 = v1;

    v24(v18, v7);
    return 1;
  }

  outlined destroy of Date?(v6, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
LABEL_16:
  a1[3] = type metadata accessor for PhoneCallEntitySimilarity(0);
  a1[4] = &protocol witness table for PhoneCallEntitySimilarity;
  *a1 = v1;

  return 0;
}

Swift::Void __swiftcall PhoneCallEntitySimilarity.print()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v52 - v4;
  v6 = type metadata accessor for ProtoContactEntitySignal();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v52 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v52 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v52 - v19;
  (*(*v0 + 128))(v18);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of Date?(v5, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  }

  else
  {
    (*(v7 + 32))(v20, v5, v6);
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.engagement);
    v22 = *(v7 + 16);
    v22(v17, v20, v6);
    v22(v14, v20, v6);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = v58;
      *v25 = 136316162;
      v26 = *v1;
      v53 = v17;
      v27 = *(v26 + 104);
      v57 = v24;
      v56 = v23;
      v27();
      v28 = ProtoContactEntitySignal.givenName.getter();
      v54 = v20;
      v55 = v14;
      v30 = v29;
      v31 = *(v7 + 8);
      v31(v11, v6);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v59);

      *(v25 + 4) = v32;
      *(v25 + 12) = 2080;
      (v27)(v33);
      v34 = ProtoContactEntitySignal.familyName.getter();
      v36 = v35;
      v31(v11, v6);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v59);

      *(v25 + 14) = v37;
      *(v25 + 22) = 2048;
      *(v25 + 24) = (*(*v1 + 152))(v38);
      *(v25 + 32) = 2080;
      v39 = v53;
      v40 = ProtoContactEntitySignal.givenName.getter();
      v42 = v41;
      v31(v39, v6);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v59);

      *(v25 + 34) = v43;
      *(v25 + 42) = 2080;
      v44 = v55;
      v45 = ProtoContactEntitySignal.givenName.getter();
      v47 = v46;
      v31(v44, v6);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v59);

      *(v25 + 44) = v48;
      v49 = v56;
      _os_log_impl(&dword_25ECEC000, v56, v57, "\n Siri Called => First name: %s, Last name: %s,  ------------- CallDuration %f seconds\n User Called in followup => First name: %s, Last name: %s\n\n ", v25, 0x34u);
      v50 = v58;
      swift_arrayDestroy();
      MEMORY[0x25F8CEE50](v50, -1, -1);
      MEMORY[0x25F8CEE50](v25, -1, -1);

      v31(v54, v6);
    }

    else
    {

      v51 = *(v7 + 8);
      v51(v14, v6);
      v51(v17, v6);
      v51(v20, v6);
    }
  }
}

uint64_t PhoneCallEntitySimilarity.deinit()
{
  v1 = OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_siriChosenEntity;
  v2 = type metadata accessor for ProtoContactEntitySignal();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_userFollowupEntity, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  return v0;
}

uint64_t PhoneCallEntitySimilarity.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_siriChosenEntity;
  v2 = type metadata accessor for ProtoContactEntitySignal();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_userFollowupEntity, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t (*protocol witness for EntitySimilarity.siriChosenEntity.modify in conformance PhoneCallEntitySimilarity(uint64_t *a1))()
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
  *(v3 + 32) = (*(**v1 + 120))();
  return protocol witness for EntitySimilarity.userFollowupEntity.modify in conformance MusicEntitySimilarity;
}

uint64_t (*protocol witness for EntitySimilarity.userFollowupEntity.modify in conformance PhoneCallEntitySimilarity(uint64_t *a1))()
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
  *(v3 + 32) = (*(**v1 + 144))();
  return protocol witness for EntitySimilarity.userFollowupEntity.modify in conformance MusicEntitySimilarity;
}

void protocol witness for EntitySimilarity.siriChosenEntity.modify in conformance MusicEntitySimilarity(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t lazy protocol witness table accessor for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType()
{
  result = lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType;
  if (!lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType)
  {
    type metadata accessor for ProtoTaskEngagementType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType);
  }

  return result;
}

uint64_t outlined init with copy of EntitySimilarity(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of EntitySimilarity(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined init with take of ProtoMediaEntitySignal?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of ProtoMediaEntitySignal?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void type metadata completion function for MusicEntitySimilarity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), unint64_t *a5, void (*a6)(uint64_t))
{
  v8 = a4(319);
  if (v9 <= 0x3F)
  {
    v12 = *(v8 - 8) + 64;
    type metadata accessor for ProtoMediaEntitySignal?(319, a5, a6);
    if (v11 <= 0x3F)
    {
      v13 = *(v10 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for ProtoMediaEntitySignal?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t HomeKitAccessoryControlSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2)
{
  v124 = a2;
  v125 = a1;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v122 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v122 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v122 - v18;
  v130 = MEMORY[0x277D84F98];
  Date.init(timeIntervalSinceReferenceDate:)();
  (*(v3 + 56))(v19, 0, 1, v2);
  v20 = *(v3 + 16);
  v123 = v12;
  v21 = v12;
  v22 = v124;
  v20(v21, v124, v2);
  v23 = type metadata accessor for SiriUISession(0);
  v20(v10, v22 + *(v23 + 20), v2);
  outlined init with copy of Date?(v19, v17);
  LODWORD(v124) = (*(v3 + 48))(v17, 1, v2);
  if (v124 == 1)
  {
    v37 = *(v3 + 8);
    v37(v10, v2);
    v37(v123, v2);
    outlined destroy of Date?(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of Date?(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v123 = 0x3FF0000000000000;
    v25 = 0;
    v29 = 0.0;
    v36 = 0.0;
  }

  else
  {
    (*(v3 + 32))(v7, v17, v2);
    Date.timeIntervalSinceReferenceDate.getter();
    v25 = v24;
    Date.timeIntervalSinceReferenceDate.getter();
    v27 = v26;
    Date.timeIntervalSinceReferenceDate.getter();
    v29 = v27 - v28;
    Date.timeIntervalSinceReferenceDate.getter();
    v31 = v30;
    v32 = v123;
    Date.timeIntervalSinceReferenceDate.getter();
    v34 = v33;
    v35 = *(v3 + 8);
    v35(v7, v2);
    v35(v10, v2);
    v35(v32, v2);
    outlined destroy of Date?(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v123 = 0;
    v36 = v31 - v34;
  }

  v38 = v125;
  v39 = [v125 accessoryUniqueIdentifier];
  v40 = MEMORY[0x277D837D0];
  if (v39)
  {
    v41 = v39;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v129 = v40;
    *&v128 = v42;
    *(&v128 + 1) = v44;
    outlined init with take of Any(&v128, v127);
    v45 = v130;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v126 = v45;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v127, 0xD000000000000019, 0x800000025ED7F4D0, isUniquelyReferenced_nonNull_native);
    v130 = v126;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000019, 0x800000025ED7F4D0, &v128);
    outlined destroy of Date?(&v128, &_sypSgMd, &_sypSgMR);
  }

  v47 = [v38 accessoryState];
  if (v47)
  {
    v48 = v47;
    [v47 numValue];
    v50 = v49;

    v129 = MEMORY[0x277D839F8];
    *&v128 = v50;
    outlined init with take of Any(&v128, v127);
    v51 = v130;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v126 = v51;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v127, 0xD000000000000014, 0x800000025ED7F510, v52);
    v130 = v126;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000014, 0x800000025ED7F510, &v128);
    outlined destroy of Date?(&v128, &_sypSgMd, &_sypSgMR);
  }

  v53 = [v38 characteristicType];
  if (v53)
  {
    v54 = v53;
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = v40;
    v129 = v40;
    *&v128 = v55;
    *(&v128 + 1) = v57;
    outlined init with take of Any(&v128, v127);
    v59 = v130;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v126 = v59;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v127, 0xD000000000000012, 0x800000025ED7F4F0, v60);
    v130 = v126;
  }

  else
  {
    v58 = v40;
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000012, 0x800000025ED7F4F0, &v128);
    outlined destroy of Date?(&v128, &_sypSgMd, &_sypSgMR);
  }

  v61 = [v38 base];
  if (v61 && (v62 = v61, v63 = [v61 source], v62, v63))
  {
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v129 = v58;
    *&v128 = v64;
    *(&v128 + 1) = v66;
    outlined init with take of Any(&v128, v127);
    v67 = v130;
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v126 = v67;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v127, 0x656372756F73, 0xE600000000000000, v68);
    v130 = v126;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x656372756F73, 0xE600000000000000, &v128);
    outlined destroy of Date?(&v128, &_sypSgMd, &_sypSgMR);
  }

  v69 = [v38 base];
  if (v69 && (v70 = v69, v71 = [v69 clientName], v70, v71))
  {
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;

    v129 = v58;
    *&v128 = v72;
    *(&v128 + 1) = v74;
    outlined init with take of Any(&v128, v127);
    v75 = v130;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v126 = v75;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v127, 0x614E746E65696C63, 0xEA0000000000656DLL, v76);
    v130 = v126;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x614E746E65696C63, 0xEA0000000000656DLL, &v128);
    outlined destroy of Date?(&v128, &_sypSgMd, &_sypSgMR);
  }

  v77 = [v38 base];
  if (!v77)
  {
    goto LABEL_28;
  }

  v78 = v77;
  v79 = [v77 source];

  if (!v79)
  {
    goto LABEL_28;
  }

  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;

  if (v80 != 1769105747 || v82 != 0xE400000000000000)
  {
    v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v38 = v125;
    if (v84)
    {
      v83 = 1;
      goto LABEL_29;
    }

LABEL_28:
    v83 = 0;
    goto LABEL_29;
  }

  v83 = 1;
  v38 = v125;
LABEL_29:
  v85 = MEMORY[0x277D839B0];
  v129 = MEMORY[0x277D839B0];
  LOBYTE(v128) = v83;
  outlined init with take of Any(&v128, v127);
  v86 = v130;
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v126 = v86;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v127, 0x42646574616E6F64, 0xED00006972695379, v87);
  v130 = v126;
  v88 = [v38 base];
  if (!v88 || (v89 = v88, v90 = [v88 source], v89, !v90))
  {
    v94 = 1;
    goto LABEL_38;
  }

  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = v92;

  if (v91 == 0x7261506472696854 && v93 == 0xEA00000000007974)
  {

LABEL_36:
    v94 = 0;
    goto LABEL_38;
  }

  v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v95)
  {
    goto LABEL_36;
  }

  v94 = 1;
LABEL_38:
  v129 = v85;
  LOBYTE(v128) = v94;
  outlined init with take of Any(&v128, v127);
  v96 = v130;
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v126 = v96;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v127, 0xD000000000000016, 0x800000025ED7E770, v97);
  v98 = v126;
  v130 = v126;
  v99 = [v38 roomUniqueIdentifier];
  if (v99)
  {
    v100 = v99;
    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    v129 = v58;
    *&v128 = v101;
    *(&v128 + 1) = v103;
    outlined init with take of Any(&v128, v127);
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v126 = v98;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v127, 0xD000000000000014, 0x800000025ED7F550, v104);
    v105 = v126;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000014, 0x800000025ED7F550, &v128);
    outlined destroy of Date?(&v128, &_sypSgMd, &_sypSgMR);
    v105 = v130;
  }

  v106 = v125;
  v107 = [v125 zoneUniqueIdentifiers];
  v108 = MEMORY[0x277D837D0];
  v109 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  *&v128 = v109;
  outlined init with take of Any(&v128, v127);
  v110 = swift_isUniquelyReferenced_nonNull_native();
  v126 = v105;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v127, 0xD000000000000015, 0x800000025ED7F570, v110);
  v111 = v126;
  v130 = v126;
  v112 = [v106 serviceType];
  if (v112)
  {
    v113 = v112;
    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v116 = v115;

    v129 = v108;
    *&v128 = v114;
    *(&v128 + 1) = v116;
    outlined init with take of Any(&v128, v127);
    v117 = swift_isUniquelyReferenced_nonNull_native();
    v126 = v111;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v127, 0x5465636976726573, 0xEB00000000657079, v117);
    v118 = v126;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x5465636976726573, 0xEB00000000657079, &v128);
    outlined destroy of Date?(&v128, &_sypSgMd, &_sypSgMR);
    v118 = v130;
  }

  v119 = v124 != 1;
  type metadata accessor for Signal();
  result = swift_allocObject();
  *(result + 16) = v25;
  *(result + 24) = v29;
  *(result + 32) = v36;
  v121 = v123;
  *(result + 40) = 0;
  *(result + 48) = v121;
  *(result + 56) = v119;
  strcpy((result + 64), "HomeAutomation");
  *(result + 79) = -18;
  *(result + 80) = 0x486C6F72746E6F43;
  *(result + 88) = 0xEB00000000656D6FLL;
  *(result + 96) = 1;
  *(result + 104) = v118;
  return result;
}

uint64_t HomeKitAccessoryControlSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v190 = a2;
  v203 = type metadata accessor for ReliabilityCategory();
  v5 = *(v203 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v203);
  v202 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  v205 = MEMORY[0x277D84F90];

  v10 = 0;
  v11 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSSSg_Say18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGTt1g504_s18de16Engagement36Homeik94ControlSignalFactoryC27processBiomeEventsToSignals02bmL013siriUISessionAA10PSESignalsVSayAA014g8BMHomee6J25F0VG_AA0bQ0VtFSSSgAJXEfU_Tf1nc_nTf4g_n(v9);

  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v201 = (v14 & *(v11 + 64));
  v199 = ((v13 + 63) >> 6);
  v191 = 0x800000025ED80960;
  v189 = 0x800000025ED80930;

  v15 = 0;
  v196 = xmmword_25ED7C750;
  v197 = v8;
  v193 = a1;
  *&v192 = v11;
LABEL_5:
  v16 = v201;
  while (1)
  {
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      do
      {
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        if (v18 >= v199)
        {

          v204 = v197;

          specialized MutableCollection<>.sort(by:)(&v204);
          if (v10)
          {
            goto LABEL_162;
          }

          v169 = *(v204 + 2);
          if (v169)
          {
            v170 = *(*v3 + 80);
            v200 = (*v3 + 80);
            v201 = v170;
            v199 = "intentResponseCode";
            LODWORD(v198) = *MEMORY[0x277D616D0];
            LODWORD(v197) = *MEMORY[0x277D61678];
            *&v196 = v5 + 104;
            v195 = v5 + 8;
            v189 = v204;
            v171 = v204 + 40;
            v191 = MEMORY[0x277D84F90];
            *&v168 = 136315138;
            v192 = v168;
            do
            {
              v172 = *v171;
              v173 = *(v171 - 1);
              if (v201(v172))
              {

                MEMORY[0x25F8CE160](v174);
                if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v175 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v191 = v205;
              }

              else
              {
              }

              v171 += 16;
              --v169;
            }

            while (v169);

            v177 = v191;
          }

          else
          {

            v177 = MEMORY[0x277D84F90];
          }

          v178 = v190;
          *v190 = v177;
          v178[1] = MEMORY[0x277D84F90];
          return result;
        }

        v17 = *(v12 + 8 * v18);
        ++v15;
      }

      while (!v17);
      v15 = v18;
    }

    v16 = (v17 - 1) & v17;
    if (*(v11 + 16))
    {
      v19 = *(v11 + 48);
      v201 = ((v17 - 1) & v17);
      v20 = (v19 + ((v15 << 10) | (16 * __clz(__rbit64(v17)))));
      v21 = *v20;
      v22 = v20[1];

      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
      v25 = v24;

      v16 = v201;
      if (v25)
      {
        v26 = *(*(v11 + 56) + 8 * v23);
        v27 = *(v26 + 16);
        if (v27)
        {
          break;
        }
      }
    }
  }

  v187 = v10;
  v186 = v5;
  v28 = MEMORY[0x277D84F98];
  v204 = MEMORY[0x277D84F98];

  v10 = 0;
  v29 = (v26 + 40);
  v194 = v27;
  v188 = v3;
  v195 = v12;
  do
  {
    if (v10 >= *(v26 + 16))
    {
      goto LABEL_151;
    }

    v200 = v28;
    v32 = *v29;
    v33 = *(v29 - 1);
    v34 = [v33 base];
    v198 = v33;
    if (v34 && (v35 = v34, v36 = [v34 source], v35, v36))
    {
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    v40 = v200;
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v39);
    v43 = *(v40 + 2);
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_152;
    }

    v46 = v41;
    if (*(v40 + 3) < v45)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
      v200 = v204;
      v47 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v39);
      if ((v46 & 1) != (v48 & 1))
      {
LABEL_163:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_164:
        v179 = *(v158 - 32);
        goto LABEL_165;
      }

      v42 = v47;
    }

    if (v46)
    {

      v49 = *(v200 + 7);
      v50 = *(v49 + 8 * v42);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v49 + 8 * v42) = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
        *(v49 + 8 * v42) = v50;
      }

      v53 = *(v50 + 2);
      v52 = *(v50 + 3);
      v28 = v200;
      if (v53 >= v52 >> 1)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v50);
        v28 = v200;
        v50 = v54;
        *(v49 + 8 * v42) = v54;
      }

      v12 = v195;
      v30 = v194;
      *(v50 + 2) = v53 + 1;
      v31 = &v50[16 * v53];
      *(v31 + 4) = v198;
      *(v31 + 5) = v32;
      v3 = v188;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMR);
      v55 = swift_allocObject();
      *(v55 + 16) = v196;
      *(v55 + 32) = v198;
      *(v55 + 40) = v32;
      v28 = v200;
      *&v200[8 * (v42 >> 6) + 64] |= 1 << v42;
      v56 = (*(v28 + 6) + 16 * v42);
      *v56 = v37;
      v56[1] = v39;
      *(*(v28 + 7) + 8 * v42) = v55;
      v57 = *(v28 + 2);
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_154;
      }

      *(v28 + 2) = v59;
      v12 = v195;
      v30 = v194;
    }

    ++v10;
    v29 += 2;
  }

  while (v30 != v10);

  v60 = *(v200 + 8);
  v198 = v200 + 64;
  v61 = 1 << v200[32];
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  else
  {
    v62 = -1;
  }

  v10 = v62 & v60;
  v194 = (v61 + 63) >> 6;

  v63 = v200;
  v64 = 0;
  v5 = v186;
  while (1)
  {
    while (1)
    {
LABEL_38:
      if (!v10)
      {
        v10 = v187;
        while (1)
        {
          v66 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            goto LABEL_153;
          }

          if (v66 >= v194)
          {
            break;
          }

          v65 = *&v198[8 * v66];
          ++v64;
          if (v65)
          {
            v64 = v66;
            goto LABEL_45;
          }
        }

        v11 = v192;
        goto LABEL_5;
      }

      v65 = v10;
LABEL_45:
      v10 = (v65 - 1) & v65;
      if (*(v63 + 2))
      {
        v67 = (*(v63 + 6) + ((v64 << 10) | (16 * __clz(__rbit64(v65)))));
        v68 = *v67;
        v69 = v67[1];

        v70 = specialized __RawDictionaryStorage.find<A>(_:)(v68, v69);
        v72 = v71;

        v63 = v200;
        if (v72)
        {
          v73 = *(*(v200 + 7) + 8 * v70);
          v74 = *(v73 + 2);
          if (v74)
          {
            break;
          }
        }
      }
    }

    v182 = v10;
    if (v74 != 1)
    {
      break;
    }

    v75 = *(v73 + 5);
    v76 = *(v73 + 4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v197 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v197 + 2) + 1, 1, v197);
    }

    v78 = *(v197 + 2);
    v77 = *(v197 + 3);
    v63 = v200;
    if (v78 >= v77 >> 1)
    {
      v197 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1, v197);
      v63 = v200;
    }

    v79 = v197;
    *(v197 + 2) = v78 + 1;
    v80 = &v79[16 * v78];
    *(v80 + 4) = v76;
    *(v80 + 5) = v75;
    v10 = v182;
  }

  v181 = v74 - 1;
  v184 = v74;

  v81 = 0;
  v82 = v73 + 40;
  v183 = MEMORY[0x277D84F90];
  v185 = v73;
  v180 = v73 + 40;
  do
  {
    v83 = &v82[16 * v81];
    v84 = v81;
    while (1)
    {
      if (v84 >= *(v73 + 2))
      {
        goto LABEL_155;
      }

      v85 = *v83;
      v86 = *(v83 - 1);
      v87 = [v86 characteristicType];
      if (!v87)
      {
        break;
      }

      v10 = v12;
      v88 = v87;
      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v90;

      if (v89 != 0xD000000000000024 || v191 != v91)
      {
        v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v12 = v10;
        if (v93)
        {
          goto LABEL_71;
        }

        break;
      }

LABEL_56:

      v12 = v10;
LABEL_57:
      ++v84;
      v83 += 16;
      v73 = v185;
      if (v184 == v84)
      {
        goto LABEL_77;
      }
    }

    v94 = [v86 characteristicType];
    if (!v94)
    {
      goto LABEL_72;
    }

    v95 = v94;
    v10 = v12;
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;

    if (v96 == 0xD000000000000024 && v189 == v98)
    {
      goto LABEL_56;
    }

    v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v12 = v10;
    if (v100)
    {
LABEL_71:

      goto LABEL_57;
    }

LABEL_72:
    v101 = v183;
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v204 = v101;
    if ((v102 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v101 + 2) + 1, 1);
      v101 = v204;
    }

    v104 = *(v101 + 2);
    v103 = *(v101 + 3);
    if (v104 >= v103 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1);
      v101 = v204;
    }

    v81 = v84 + 1;
    *(v101 + 2) = v104 + 1;
    v183 = v101;
    v105 = &v101[16 * v104];
    *(v105 + 4) = v86;
    *(v105 + 5) = v85;
    v73 = v185;
    v82 = v180;
  }

  while (v181 != v84);
LABEL_77:
  v106 = v183;
  v10 = v187;
  if (*(v183 + 2))
  {
  }

  else
  {
    v204 = v73;

    specialized MutableCollection<>.sort(by:)(&v204);
    if (v10)
    {
      goto LABEL_162;
    }

    v107 = *(v204 + 2);
    if (v107)
    {
      v108 = &v204[16 * v107 + 16];
      v109 = *(v108 + 1);
      v110 = *v108;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v106 + 2) + 1, 1, v106);
      }

      v112 = *(v106 + 2);
      v111 = *(v106 + 3);
      if (v112 >= v111 >> 1)
      {
        v106 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v112 + 1, 1, v106);
      }

      *(v106 + 2) = v112 + 1;
      v113 = &v106[16 * v112];
      *(v113 + 4) = v110;
      *(v113 + 5) = v109;
      v10 = 0;
    }

    else
    {
    }
  }

  v187 = v10;
  v114 = MEMORY[0x277D84F98];
  v204 = MEMORY[0x277D84F98];
  v184 = *(v106 + 2);
  v183 = v106;
  if (v184)
  {
    v115 = 0;
    v10 = (v106 + 40);
    while (v115 < *(v183 + 2))
    {
      v117 = *v10;
      v185 = *(v10 - 8);
      v118 = [v185 characteristicType];
      if (v118)
      {
        v119 = v118;
        v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v122 = v121;
      }

      else
      {
        v120 = 0;
        v122 = 0;
      }

      v124 = specialized __RawDictionaryStorage.find<A>(_:)(v120, v122);
      v125 = *(v114 + 2);
      v126 = (v123 & 1) == 0;
      v127 = v125 + v126;
      if (__OFADD__(v125, v126))
      {
        goto LABEL_158;
      }

      v128 = v123;
      if (*(v114 + 3) < v127)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v127, 1);
        v114 = v204;
        v129 = specialized __RawDictionaryStorage.find<A>(_:)(v120, v122);
        if ((v128 & 1) != (v130 & 1))
        {
          goto LABEL_163;
        }

        v124 = v129;
      }

      if (v128)
      {

        v131 = *(v114 + 7);
        v132 = *(v131 + 8 * v124);
        v133 = swift_isUniquelyReferenced_nonNull_native();
        *(v131 + 8 * v124) = v132;
        if ((v133 & 1) == 0)
        {
          v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v132 + 2) + 1, 1, v132);
          *(v131 + 8 * v124) = v132;
        }

        v135 = *(v132 + 2);
        v134 = *(v132 + 3);
        if (v135 >= v134 >> 1)
        {
          v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v134 > 1), v135 + 1, 1, v132);
          *(v131 + 8 * v124) = v132;
        }

        *(v132 + 2) = v135 + 1;
        v116 = &v132[16 * v135];
        *(v116 + 4) = v185;
        *(v116 + 5) = v117;
        v3 = v188;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMR);
        v136 = swift_allocObject();
        *(v136 + 16) = v196;
        *(v136 + 32) = v185;
        *(v136 + 40) = v117;
        *&v114[8 * (v124 >> 6) + 64] |= 1 << v124;
        v137 = (*(v114 + 6) + 16 * v124);
        *v137 = v120;
        v137[1] = v122;
        *(*(v114 + 7) + 8 * v124) = v136;
        v138 = *(v114 + 2);
        v58 = __OFADD__(v138, 1);
        v139 = v138 + 1;
        if (v58)
        {
          goto LABEL_159;
        }

        *(v114 + 2) = v139;
      }

      ++v115;
      v10 += 16;
      if (v184 == v115)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_157;
  }

LABEL_106:
  v140 = *(v114 + 8);
  v185 = v114 + 64;
  v141 = 1 << v114[32];
  if (v141 < 64)
  {
    v142 = ~(-1 << v141);
  }

  else
  {
    v142 = -1;
  }

  v143 = v142 & v140;
  v184 = (v141 + 63) >> 6;

  v144 = 0;
  while (2)
  {
    v5 = v186;
    do
    {
      while (1)
      {
        if (!v143)
        {
          v10 = v182;
          while (1)
          {
            v145 = v144 + 1;
            if (__OFADD__(v144, 1))
            {
              goto LABEL_156;
            }

            if (v145 >= v184)
            {

              v12 = v195;
              v63 = v200;
              goto LABEL_38;
            }

            v143 = *&v185[8 * v145];
            ++v144;
            if (v143)
            {
              v144 = v145;
              break;
            }
          }
        }

        v146 = __clz(__rbit64(v143));
        v143 &= v143 - 1;
        v147 = (*(v114 + 6) + ((v144 << 10) | (16 * v146)));
        v149 = *v147;
        v148 = v147[1];
        v150 = *(v114 + 2);

        if (!v150)
        {
LABEL_111:

          continue;
        }

        v151 = specialized __RawDictionaryStorage.find<A>(_:)(v149, v148);
        if ((v152 & 1) == 0 || *(*(*(v114 + 7) + 8 * v151) + 16) != 1)
        {
          break;
        }

        if (!*(v114 + 2))
        {
          goto LABEL_111;
        }

        v10 = specialized __RawDictionaryStorage.find<A>(_:)(v149, v148);
        v154 = v153;

        if (v154)
        {
          v163 = *(*(v114 + 7) + 8 * v10);
          if (!*(v163 + 16))
          {
            goto LABEL_161;
          }

          v161 = *(v163 + 40);
          v162 = *(v163 + 32);
          goto LABEL_131;
        }
      }

      if (!*(v114 + 2))
      {
        goto LABEL_111;
      }

      v155 = specialized __RawDictionaryStorage.find<A>(_:)(v149, v148);
      v157 = v156;
    }

    while ((v157 & 1) == 0);
    v204 = *(*(v114 + 7) + 8 * v155);
    swift_bridgeObjectRetain_n();
    v10 = v187;
    specialized MutableCollection<>.sort(by:)(&v204);
    v158 = &v206;
    v187 = v10;
    if (v10)
    {
      goto LABEL_164;
    }

    v159 = *(v204 + 2);
    if (v159)
    {
      v160 = &v204[16 * v159 + 16];
      v161 = *(v160 + 1);
      v162 = *v160;

LABEL_131:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v197 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v197 + 2) + 1, 1, v197);
      }

      v165 = *(v197 + 2);
      v164 = *(v197 + 3);
      if (v165 >= v164 >> 1)
      {
        v197 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v164 > 1), v165 + 1, 1, v197);
      }

      v166 = v197;
      *(v197 + 2) = v165 + 1;
      v167 = &v166[16 * v165];
      *(v167 + 4) = v162;
      *(v167 + 5) = v161;
      continue;
    }

    break;
  }

LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  v179 = v10;
LABEL_165:

  __break(1u);
  return result;
}