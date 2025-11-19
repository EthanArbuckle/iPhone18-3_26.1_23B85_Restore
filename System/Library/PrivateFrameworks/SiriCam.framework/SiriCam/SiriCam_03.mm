uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4, char a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 16;
  v11 = (a3 - a2) / 16;
  if (v10 < v11)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 16, a4);
    v12 = &v6[16 * v10];
    while (1)
    {
      if (v6 >= v12 || v8 >= v7)
      {
        v16 = v9;
        goto LABEL_33;
      }

      v26 = *v8;
      v28 = *(v8 + 1);
      v22 = *v6;
      v24 = *(v6 + 1);
      if (a5)
      {
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        if (v21 >= v30)
        {
          goto LABEL_9;
        }
      }

      else
      {
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        if (v30 >= v21)
        {
LABEL_9:
          v14 = v6;
          v15 = v9 == v6;
          v6 += 16;
          if (v15)
          {
            goto LABEL_11;
          }

LABEL_10:
          *v9 = *v14;
          goto LABEL_11;
        }
      }

      v14 = v8;
      v15 = v9 == v8;
      v8 += 16;
      if (!v15)
      {
        goto LABEL_10;
      }

LABEL_11:
      v9 += 16;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 16, a4);
  v12 = &v6[16 * v11];
LABEL_17:
  v16 = v8;
  v8 -= 16;
  for (v7 -= 16; v12 > v6 && v16 > v9; v7 -= 16)
  {
    v27 = *(v12 - 2);
    v29 = *(v12 - 1);
    v23 = *(v16 - 2);
    v25 = *(v16 - 1);
    if (a5)
    {
      swift_getAtKeyPath();
      swift_getAtKeyPath();
      if (v21 < v30)
      {
        goto LABEL_30;
      }
    }

    else
    {
      swift_getAtKeyPath();
      swift_getAtKeyPath();
      if (v30 < v21)
      {
LABEL_30:
        if (v7 + 16 != v16)
        {
          *v7 = *v8;
        }

        goto LABEL_17;
      }
    }

    if (v12 != v7 + 16)
    {
      *v7 = *(v12 - 1);
    }

    v12 -= 16;
  }

LABEL_33:
  v18 = (v12 - v6) / 16;
  if (v16 != v6 || v16 >= &v6[16 * v18])
  {
    memmove(v16, v6, 16 * v18);
  }

  return 1;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for RankedAction();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void outlined bridged method (mbgnn) of @objc CAARSchemaCAARTieBreakersExecuted.tiebreakers.setter(uint64_t a1, void *a2)
{
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARTieBreaker, 0x277D56BF0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 setTiebreakers_];
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 8 * v4);
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_Sd7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_Sd7elementtGMR);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 16;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v2[3];
        v15 = v14 >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v13 >= &v2[2 * v15 + 4])
          {
            memmove(v11 + 4, v2 + 4, 16 * v15);
          }

          v2[2] = 0;
        }

        v5 = (v13 + 16 * v15);
        v3 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - (v14 >> 1);

        v2 = v11;
      }

      v17 = __OFSUB__(v3--, 1);
      if (v17)
      {
        break;
      }

      *v5 = v4;
      v5[1] = v7;
      v5 += 2;
      if (v1 == ++v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v3);
  v20 = v19 - v3;
  if (!v17)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized CodeBasedRankerHandler.extractUserHistoryFeatures(rankedActions:siriSignalsContainer:)(uint64_t *a1, uint64_t a2)
{
  v24[3] = type metadata accessor for SiriSignalsContainer();
  v24[4] = &protocol witness table for SiriSignalsContainer;
  v24[0] = a2;
  outlined init with copy of SignalProviding(v24, v23);
  outlined init with copy of SignalProviding(v24, v22);
  v4 = *a1;
  v5 = *(*a1 + 16);

  if (v5)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_11:
      specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      v4 = v18;
    }

    v6 = type metadata accessor for RankedAction();
    v7 = 0;
    do
    {
      v20 = v6;
      v21 = &protocol witness table for RankedAction;
      __swift_allocate_boxed_opaque_existential_1(v19);
      if (v7 >= *(v4 + 16))
      {
        __break(1u);
LABEL_10:
        __break(1u);
        goto LABEL_11;
      }

      v8 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v7;
      outlined init with copy of RankedAction();
      v9 = *(v6 + 44);
      v10 = specialized FeatureExtracting.extract(from:)(v19);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v10);
      v12 = v11;

      specialized Dictionary.update(other:allowDuplicateKeys:)(v12, 0);

      __swift_destroy_boxed_opaque_existential_0(v19);
      v20 = v6;
      v21 = &protocol witness table for RankedAction;
      __swift_allocate_boxed_opaque_existential_1(v19);
      if (v7 >= *(v4 + 16))
      {
        goto LABEL_10;
      }

      outlined init with copy of RankedAction();
      v13 = *(v6 + 44);
      v14 = specialized FeatureExtracting.extract(from:)(v19);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v14);
      v16 = v15;

      specialized Dictionary.update(other:allowDuplicateKeys:)(v16, 0);

      __swift_destroy_boxed_opaque_existential_0(v19);
      ++v7;
    }

    while (v7);
    *a1 = v4;
  }

  outlined destroy of AppLaunchCountFeatureExtractor(v22);
  outlined destroy of AppLaunchRecencyFeatureExtractor(v23);
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t specialized CodeBasedRankerHandler.extractDisambiguationFeatures(rankedActions:siriSignalsContainer:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedAction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v49 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam6TopTwoVSgMd, &_s7SiriCam6TopTwoVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v49 - v18;
  v59[3] = type metadata accessor for SiriSignalsContainer();
  v59[4] = &protocol witness table for SiriSignalsContainer;
  v59[0] = a2;
  v55 = *a1;
  Array<A>.topTwo.getter(v55, v19);
  v20 = type metadata accessor for TopTwo();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {

    outlined destroy of (CamLogOutput, CamModelMetadata)(v19, &_s7SiriCam6TopTwoVSgMd, &_s7SiriCam6TopTwoVSgMR);
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.ranker);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_266790000, v22, v23, "Fewer than 2 actions, will not extract disambiguation features.", v24, 2u);
      MEMORY[0x26D5DDCD0](v24, -1, -1);
    }
  }

  else
  {
    v53 = v14;
    v54 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionVGMd, &_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionVGMR);
    v25 = *(v5 + 72);
    v26 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_266813E60;
    v51 = v27;
    v28 = v9;
    outlined init with copy of RankedAction();
    v29 = &v19[*(v20 + 20)];
    v52 = v25;
    outlined init with copy of RankedAction();

    outlined destroy of RankedAction();
    v58[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
    v30 = v58[0];
    outlined init with copy of RankedAction();
    v50 = v4;
    v31 = &v8[*(v4 + 36)];
    v49 = v10[2];
    v49(v56, v31, v9);
    outlined destroy of RankedAction();
    v58[0] = v30;
    v33 = *(v30 + 16);
    v32 = *(v30 + 24);
    if (v33 >= v32 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
      v30 = v58[0];
    }

    *(v30 + 16) = v33 + 1;
    v35 = v10[4];
    v34 = v10 + 4;
    v36 = (*(v34 + 48) + 32) & ~*(v34 + 48);
    v37 = v34[5];
    v38 = v56;
    v56 = v35;
    (v35)(v30 + v36 + v37 * v33, v38, v28);
    outlined init with copy of RankedAction();

    v39 = v53;
    v49(v53, &v8[*(v50 + 36)], v28);
    outlined destroy of RankedAction();
    v58[0] = v30;
    v41 = *(v30 + 16);
    v40 = *(v30 + 24);
    if (v41 >= v40 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v41 + 1, 1);
      v30 = v58[0];
    }

    *(v30 + 16) = v41 + 1;
    (v56)(v30 + v36 + v41 * v37, v39, v28);
    v42 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5(v30);
    outlined init with copy of SignalProviding(v59, v57);
    v43 = v55;

    DisambiguationFeatureExtractor.init(rankedActions:siriSignalsContainer:)(v44, v57, v58);
    v45 = v54;
    specialized Sequence.filter(_:)(0, *(v43 + 16), v42, v54);
    v47 = v46;
    MEMORY[0x28223BE20](v46);
    *(&v49 - 2) = v58;
    *(&v49 - 1) = v45;
    specialized Sequence.forEach(_:)(partial apply for closure #2 in CodeBasedRankerHandler.extractDisambiguationFeatures(rankedActions:siriSignalsContainer:), (&v49 - 4), v47);

    outlined destroy of DisambiguationFeatureExtractor(v58);
  }

  return __swift_destroy_boxed_opaque_existential_0(v59);
}

uint64_t specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)();
}

{
  v2 = *a2;
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)();
}

{
  v2 = *a2;
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)();
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(uint64_t a1)
{
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, (v1 + 16));
}

{
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, (v1 + 16));
}

{
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, (v1 + 16));
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(void *a1)
{
  v2 = type metadata accessor for CamModelMetadata();
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 80);
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1);
}

{
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1);
}

unint64_t lazy protocol witness table accessor for type AnyEncodable and conformance AnyEncodable()
{
  result = lazy protocol witness table cache variable for type AnyEncodable and conformance AnyEncodable;
  if (!lazy protocol witness table cache variable for type AnyEncodable and conformance AnyEncodable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyEncodable and conformance AnyEncodable);
  }

  return result;
}

uint64_t outlined init with copy of UUID?()
{
  OUTLINED_FUNCTION_46();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0_2(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_8_0();
  v7(v6);
  return v0;
}

uint64_t objectdestroy_19Tm()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  v7 = (v4 + 32) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 16) & ~v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_19_3(v10);
  v12 = *(v11 + 80);
  v13 = (v6 + v12 + v9) & ~v12;
  v22 = *(v14 + 64);
  v15 = *(v0 + 16);

  v16 = *(v0 + 24);

  v17 = *(v3 + 8);
  v17(v0 + v7, v1);
  v18 = *(v0 + v8 + 8);

  v17(v0 + v9, v1);
  if (!__swift_getEnumTagSinglePayload(v0 + v13, 1, v1))
  {
    v17(v0 + v13, v1);
  }

  v19 = (v22 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + v19);

  return MEMORY[0x2821FE8E8](v0, v19 + 8, v4 | v12 | 7);
}

uint64_t partial apply for closure #4 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_19_3(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(v6 + 64);
  v10 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v7 + v10 + 16) & ~v7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_19_3(v12);
  v14 = v13;
  v16 = v15;
  v17 = (v9 + *(v14 + 80) + v11) & ~*(v14 + 80);
  v18 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = *(v1 + v10);
  v21 = *(v1 + v10 + 8);
  v22 = *(v1 + ((*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v18, v19, v1 + v8, v20, v21, v1 + v11, v1 + v17, v22);
}

uint64_t outlined init with copy of RankedAction()
{
  OUTLINED_FUNCTION_46();
  v2 = v1(0);
  OUTLINED_FUNCTION_0_2(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_8_0();
  v6(v5);
  return v0;
}

uint64_t outlined init with take of CamModelMetadata()
{
  OUTLINED_FUNCTION_46();
  v2 = v1(0);
  OUTLINED_FUNCTION_0_2(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_8_0();
  v6(v5);
  return v0;
}

uint64_t outlined destroy of RankedAction()
{
  v1 = OUTLINED_FUNCTION_48();
  v3 = v2(v1);
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_25_1@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v5 = v1[1];
  return a1 + *(*(v3 - 176) + 72) * v2;
}

uint64_t OUTLINED_FUNCTION_28_2()
{
  v2 = *(*(v1 - 432) + 8);
  result = v0;
  v4 = *(v1 - 424);
  return result;
}

uint64_t OUTLINED_FUNCTION_31()
{
  result = *(v0 - 392);
  v2 = *(v0 - 344);
  return result;
}

uint64_t OUTLINED_FUNCTION_32()
{
  result = v0 - 192;
  v2 = *(v0 - 440);
  return result;
}

void OUTLINED_FUNCTION_38(void *a1@<X8>)
{
  v2 = *(v1 - 312);
  *a1 = *(v1 - 320);
  a1[1] = v2;
}

uint64_t OUTLINED_FUNCTION_40()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v1, (v2 - 160));
}

uint64_t OUTLINED_FUNCTION_43()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_44()
{
  result = *(v0 - 384);
  v2 = *(v0 - 336);
  return result;
}

uint64_t OUTLINED_FUNCTION_50()
{
  result = v0;
  v3 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_60()
{
  v2 = *(v0 - 328);
  v3 = *(v0 - 376);

  return outlined init with copy of UUID?();
}

uint64_t OUTLINED_FUNCTION_61()
{

  return static TrialProvider.fetchBoolFactorFromTrial(_:)();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return swift_beginAccess();
}

uint64_t ReflectedStringConvertible.description.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v26[3] = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v1, a1);
  Mirror.init(reflecting:)();
  Mirror.subjectType.getter();
  v26[0] = _typeName(_:qualified:)();
  v26[1] = v16;
  MEMORY[0x26D5DCD80](40, 0xE100000000000000);
  Mirror.superclassMirror.getter();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of Mirror?(v6);
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    Mirror.children.getter();
    v17 = ReflectedStringConvertible.printElements(_:)();
    v19 = v18;

    v24 = v17;
    v25 = v19;

    MEMORY[0x26D5DCD80](8236, 0xE200000000000000);

    MEMORY[0x26D5DCD80](v24, v25);

    (*(v8 + 8))(v12, v7);
  }

  Mirror.children.getter();
  v20 = ReflectedStringConvertible.printElements(_:)();
  v22 = v21;

  MEMORY[0x26D5DCD80](v20, v22);

  MEMORY[0x26D5DCD80](41, 0xE100000000000000);
  (*(v8 + 8))(v14, v7);
  return v26[0];
}

uint64_t outlined destroy of Mirror?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ReflectedStringConvertible.printElements(_:)()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  v0 = 1;
  while (1)
  {
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v6[0] = v3[1];
    v6[1] = v4;
    v5 = v3[0];
    if (!*(&v4 + 1))
    {
      break;
    }

    v1 = v5;
    outlined init with take of Any(v6, v3);
    if (*(&v1 + 1))
    {
      if ((v0 & 1) == 0)
      {
        MEMORY[0x26D5DCD80](8236, 0xE200000000000000);
      }

      MEMORY[0x26D5DCD80](v1, *(&v1 + 1));

      MEMORY[0x26D5DCD80](8250, 0xE200000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x26D5DCD80](0, 0xE000000000000000);

      v0 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  return v7;
}

uint64_t ActionAmbiguityHeuristicHandler.init(forModelWithName:)(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for CamModelMetadata();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2 + OBJC_IVAR____TtC7SiriCam31ActionAmbiguityHeuristicHandler_overrideDisambiguateForRankingEvaluationRate;
  *v13 = 0;
  *(v13 + 8) = 1;
  CamModelVersion.init(_:)();
  if (v3)
  {

    type metadata accessor for ActionAmbiguityHeuristicHandler();
    v18 = *(*v2 + 48);
    v19 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v14;
    v21 = v16;
    v22 = v17;
    v31 = v15;
    v23 = type metadata accessor for Locale();
    v30 = a2;
    v24 = v23;
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v23);
    v25 = *(v9 + 28);
    __swift_storeEnumTagSinglePayload(&v12[v25], 1, 1, v24);
    v27 = v30;
    v26 = v31;
    *v12 = v32;
    *(v12 + 1) = v27;
    *(v12 + 2) = v20;
    *(v12 + 3) = v26;
    *(v12 + 4) = v21;
    *(v12 + 5) = v22;
    v12[48] = 2;
    outlined assign with take of Locale?(v8, &v12[v25]);
    outlined init with take of CamModelMetadata(v12, v2 + OBJC_IVAR____TtC7SiriCam31ActionAmbiguityHeuristicHandler_modelMetadata);
  }

  return v2;
}

MLDictionaryFeatureProvider __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActionAmbiguityHeuristicHandler.predict(from:)(Swift::OpaquePointer from)
{
  v5 = ActionAmbiguityHeuristicHandler.createFeatureProvider(modelScore:modelDecision:)(0, 0.0);
  if (v1)
  {
    return v2;
  }

  v2 = v5;
  v6 = "uationWasSelected";
  v7 = specialized Dictionary.subscript.getter(0xD000000000000024, 0x8000000266819C10, from._rawValue);
  if (!v7)
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.ambiguityHandling);
    v13 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v14 = OUTLINED_FUNCTION_22_0();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_23();
    v16 = OUTLINED_FUNCTION_3_7();
    v53 = v16;
    *v3 = 136315138;
    v17 = 0xD000000000000024;
LABEL_10:
    v18 = v6 | 0x8000000000000000;
LABEL_11:
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v53);
    OUTLINED_FUNCTION_6_9(&dword_266790000, v19, v20, "[ActionAmbiguityHeuristicHandler] Feature not found: %s. Returning default prediction output");
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    goto LABEL_12;
  }

  v8 = v7;
  v9 = MLMultiArray.toDoubleScalar()();
  if (v10)
  {
LABEL_4:

    return v2;
  }

  v21 = v9;

  v22 = specialized Dictionary.subscript.getter(0xD00000000000001CLL, 0x8000000266819C40, from._rawValue);
  if (!v22)
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.ambiguityHandling);
    v13 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v37 = OUTLINED_FUNCTION_22_0();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_23();
    v16 = OUTLINED_FUNCTION_3_7();
    v53 = v16;
    *v3 = 136315138;
    v18 = 0x8000000266819C40;
    v17 = 0xD00000000000001CLL;
    goto LABEL_11;
  }

  v8 = v22;
  v23 = MLMultiArray.toDoubleScalar()();
  if (v24)
  {
    goto LABEL_4;
  }

  v25 = v23;

  v6 = "second_top_action_confidence";
  v26 = specialized Dictionary.subscript.getter(0xD00000000000001DLL, 0x8000000266819C60, from._rawValue);
  if (!v26)
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.ambiguityHandling);
    v13 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v40 = OUTLINED_FUNCTION_22_0();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_23();
    v16 = OUTLINED_FUNCTION_3_7();
    v53 = v16;
    *v3 = 136315138;
    v17 = 0xD00000000000001DLL;
    goto LABEL_10;
  }

  v8 = v26;
  v27 = MLMultiArray.toBoolScalar()();
  if (v28)
  {
    goto LABEL_4;
  }

  v29 = v27;

  if (v21 < 0.0)
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.ambiguityHandling);
    v13 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v31 = OUTLINED_FUNCTION_22_0();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_13;
    }

    v33 = OUTLINED_FUNCTION_23();
    *v33 = 134217984;
    *(v33 + 4) = v21;
    OUTLINED_FUNCTION_6_9(&dword_266790000, v34, v35, "[ActionAmbiguityHeuristicHandler] Cannot resolve ambiguity because top ranked confidence difference is %f. Returning default prediction output");
LABEL_12:
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
LABEL_13:

    return v2;
  }

  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_0_12();
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.ambiguityHandling);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_23();
    *v45 = 134217984;
    *(v45 + 4) = v21;
    _os_log_impl(&dword_266790000, v43, v44, "[ActionAmbiguityHeuristicHandler] Top two action confidence difference is %f", v45, 0xCu);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  v46 = ActionAmbiguityHeuristicHandler.denyDisambiguationOverride(secondTopActionConfidence:topTwoContainsAppShortcut:)(v29, v25);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  v49 = OUTLINED_FUNCTION_22_0();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 67109376;
    *(v51 + 4) = v21 < 0.01;
    *(v51 + 8) = 1024;
    *(v51 + 10) = v46 & 1;
    _os_log_impl(&dword_266790000, v47, v48, "[ActionAmbiguityHeuristicHandler] isTie: %{BOOL}d isDisambiguationDenyOverride: %{BOOL}d", v51, 0xEu);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  v52 = ActionAmbiguityHeuristicHandler.createFeatureProvider(modelScore:modelDecision:)((v21 < 0.01) & (v46 ^ 1u), 1.0 - v21);
  return v52;
}

id ActionAmbiguityHeuristicHandler.createFeatureProvider(modelScore:modelDecision:)(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000025;
  *(inited + 16) = xmmword_266813C70;
  *(inited + 40) = 0x800000026681AEF0;
  v6 = type metadata accessor for MLMultiArray();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
  v7 = lazy protocol witness table accessor for type [Double] and conformance [A](&lazy protocol witness table cache variable for type [Double] and conformance [A], &_sSaySdGMd, &_sSaySdGMR);
  v9 = OUTLINED_FUNCTION_5_7(v7, v8);
  if (v2)
  {
    v10 = *(inited + 40);

    *(inited + 16) = 0;
    swift_setDeallocating();
    return specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    *(inited + 80) = 0xD000000000000021;
    *(inited + 72) = v6;
    *(inited + 48) = v9;
    *(inited + 88) = 0x800000026681AF20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_266813FC0;
    *(v11 + 32) = a2;
    *(inited + 96) = OUTLINED_FUNCTION_5_7(v11, v12);
    *(inited + 120) = v6;
    *(inited + 128) = 0xD000000000000024;
    *(inited + 136) = 0x800000026681AF50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_266813FC0;
    *(v13 + 32) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    lazy protocol witness table accessor for type [Double] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd, &_sSaySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    v14 = MLMultiArray.init<A>(_:)();
    *(inited + 168) = v6;
    *(inited + 144) = v14;
    Dictionary.init(dictionaryLiteral:)();
    v16 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    return @nonobjc MLDictionaryFeatureProvider.init(dictionary:)();
  }
}

uint64_t ActionAmbiguityHeuristicHandler.denyDisambiguationOverride(secondTopActionConfidence:topTwoContainsAppShortcut:)(char a1, double a2)
{
  if (a1)
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.ambiguityHandling);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = OUTLINED_FUNCTION_22_0();
    if (!os_log_type_enabled(v6, v7))
    {
      v10 = 0;
      goto LABEL_21;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "[ActionAmbiguityHeuristicHandler] disambiguation not denied since it contains an app shortcut";
LABEL_6:
    _os_log_impl(&dword_266790000, v4, v5, v9, v8, 2u);
    v10 = a1 ^ 1;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
LABEL_21:

    return v10 & 1;
  }

  if (CamFeatureFlag.isEnabled.getter(6u))
  {
    if (ForcedDisambiguation.decision()())
    {
      if (a2 >= 0.5)
      {
        v10 = 0;
        return v10 & 1;
      }

      if (one-time initialization token for ambiguityHandling != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.ambiguityHandling);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      v13 = OUTLINED_FUNCTION_22_0();
      if (os_log_type_enabled(v13, v14))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "[ActionAmbiguityHeuristicHandler] disambiguation denied since second top does not have enough confidence";
        goto LABEL_6;
      }
    }

    else
    {
      if (one-time initialization token for ambiguityHandling != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.ambiguityHandling);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      v16 = OUTLINED_FUNCTION_22_0();
      if (os_log_type_enabled(v16, v17))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "[ActionAmbiguityHeuristicHandler] disambiguation denied for disambiguateAllRankingTies rate limiting. ";
        goto LABEL_6;
      }
    }

    v10 = 1;
    goto LABEL_21;
  }

  v10 = 1;
  return v10 & 1;
}

uint64_t ActionAmbiguityHeuristicHandler.__deallocating_deinit()
{
  outlined destroy of CamModelMetadata(v0 + OBJC_IVAR____TtC7SiriCam31ActionAmbiguityHeuristicHandler_modelMetadata);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ActionAmbiguityHeuristicHandler()
{
  result = type metadata singleton initialization cache for ActionAmbiguityHeuristicHandler;
  if (!type metadata singleton initialization cache for ActionAmbiguityHeuristicHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ActionAmbiguityHeuristicHandler()
{
  result = type metadata accessor for CamModelMetadata();
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

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type [Double] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

id static CaarFeatureLogger.map(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMd, &_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMR);
  v4 = OUTLINED_FUNCTION_38_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = [objc_allocWithZone(MEMORY[0x277D56B68]) init];
  if (v15)
  {
    v16 = v15;
    v31 = MEMORY[0x277D84F90];
    v17 = *(a1 + 16);
    if (v17)
    {
      v18 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v19 = *(v6 + 72);
      do
      {
        outlined init with copy of (UUID, [String : MLFeatureValue])(v18, v14);
        outlined init with copy of (UUID, [String : MLFeatureValue])(v14, v11);
        v20 = static CaarFeatureLogger.extractSelfFeatures(actionFeatures:)(v11, *(v11 + *(v1 + 48)));

        outlined destroy of (UUID, [String : MLFeatureValue])(v14);
        v21 = type metadata accessor for UUID();
        v22 = (*(*(v21 - 8) + 8))(v11, v21);
        if (v20)
        {
          MEMORY[0x26D5DCE50](v22);
          if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        v18 += v19;
        --v17;
      }

      while (v17);
    }

    v23 = OUTLINED_FUNCTION_15_5();
    outlined bridged method (mbnn) of @objc CAARSchemaCAARFeaturesGenerated.actionFeatureSets.setter(v23, v24);
  }

  else
  {
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.ranker);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266790000, v26, v27, "Failed to create CAARSchemaCAARFeaturesGenerated SELF message.", v28, 2u);
      MEMORY[0x26D5DDCD0](v28, -1, -1);
    }

    return 0;
  }

  return v16;
}

uint64_t static CaarFeatureLogger.extractSelfFeatures(actionFeatures:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = OUTLINED_FUNCTION_38_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v64 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMd, &_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  v24 = *(v8 + 16);
  v24(&v61 - v22, a1, v2);
  *&v23[*(v16 + 48)] = a2;
  v25 = objc_allocWithZone(MEMORY[0x277D56AF8]);

  v26 = [v25 init];
  if (!v26)
  {
LABEL_29:
    outlined destroy of (UUID, [String : MLFeatureValue])(v23);
    return v26;
  }

  v62 = v23;
  outlined init with copy of (UUID, [String : MLFeatureValue])(v23, v20);
  v27 = *(v20 + *(v16 + 48));
  v63 = v8;
  (*(v8 + 32))(v15, v20, v2);
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
  v28 = v64;
  v29 = v15;
  v24(v64, v15, v2);
  v30 = SISchemaUUID.__allocating_init(nsuuid:)(v28);
  OUTLINED_FUNCTION_49_0(v30, sel_setActionCandidateId_);

  v31 = OUTLINED_FUNCTION_39_0(0xD000000000000013, "top_two_contains_app_shortcut");
  v32 = v2;
  if (v31)
  {
    OUTLINED_FUNCTION_33(v31);
    OUTLINED_FUNCTION_22_2();
    [v26 setIsAppInForeground_];
  }

  v33 = OUTLINED_FUNCTION_39_0(0xD000000000000014, "repeated_flow_handler_id");
  if (v33)
  {
    [v26 setIsTopRankedPlugin_];
  }

  v34 = specialized Dictionary.subscript.getter(0x535F5050415F5349, 0xEF54554354524F48, v27);
  v23 = v62;
  v35 = v63;
  if (v34)
  {
    OUTLINED_FUNCTION_33(v34);
    OUTLINED_FUNCTION_22_2();
    [v26 setIsAutoshortcut_];
  }

  v36 = specialized Dictionary.subscript.getter(0x705F6C6E5F706F74, 0xEC00000065737261, v27);
  if (v36)
  {
    OUTLINED_FUNCTION_33(v36);
    OUTLINED_FUNCTION_22_2();
    [v26 setIsTopRankedParse_];
  }

  v37 = specialized Dictionary.subscript.getter(0x65737261705F6C6ELL, 0xEE0061626F72705FLL, v27);
  if (v37)
  {
    v30 = v37;
    [v37 doubleValue];
    *&v38 = v38;
    [v26 setNlParseProbability_];
  }

  v39 = OUTLINED_FUNCTION_39_0(0xD000000000000016, "_as_universal_command");
  if (v39)
  {
    OUTLINED_FUNCTION_33(v39);
    OUTLINED_FUNCTION_22_2();
    [v26 setIsHighConfidence_];
  }

  v40 = OUTLINED_FUNCTION_39_0(0xD000000000000018, "isRecentlyCorrected");
  if (v40)
  {
    OUTLINED_FUNCTION_33(v40);
    OUTLINED_FUNCTION_22_2();
    [v26 setIsRepeatedFlowHandlerId_];
  }

  v41 = OUTLINED_FUNCTION_39_0(0xD00000000000001ELL, "domain_protection_level");
  if (v41)
  {
    OUTLINED_FUNCTION_33(v41);
    OUTLINED_FUNCTION_22_2();
    [v26 setIsAmbiguousFirstRunPreviouslyShown_];
  }

  v42 = OUTLINED_FUNCTION_39_0(0xD00000000000001ELL, "_prediction_decision");
  if (v42)
  {
    v30 = v42;
    v43 = [v42 stringValue];
    v44 = v35;
    v45 = v23;
    v46 = v29;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = v47;
    v29 = v46;
    v23 = v45;
    v35 = v44;
    outlined bridged method (mbnn) of @objc CAARSchemaCAARActionFeatureSet.actionIdentifier.setter(v50, v49, v26);
  }

  OUTLINED_FUNCTION_9_2();
  v52 = specialized Dictionary.subscript.getter(0xD000000000000017, v51, v27);
  if (!v52)
  {
LABEL_24:
    OUTLINED_FUNCTION_9_2();
    v55 = specialized Dictionary.subscript.getter(0xD000000000000017, v54, v27);
    if (v55)
    {
      OUTLINED_FUNCTION_33(v55);
      OUTLINED_FUNCTION_22_2();
      [v26 setIsAutoShortcutEnabled_];
    }

    v56 = OUTLINED_FUNCTION_39_0(0xD000000000000025, "high_priority_nl_parser");
    if (v56)
    {
      OUTLINED_FUNCTION_33(v56);
      OUTLINED_FUNCTION_22_2();
      [v26 setIsInterpretableAsUniversalCommand_];
    }

    v57 = static CaarFeatureLogger.extractAppHistorySelfFeatures(_:)(v27);
    OUTLINED_FUNCTION_49_0(v57, sel_setAppHistoryFeatures_);

    v58 = static CaarFeatureLogger.extractAppLevelDisambiguationHistorySelfFeatures(_:)(v27);
    OUTLINED_FUNCTION_49_0(v58, sel_setAppLevelDisambiguationHistory_);

    v59 = static CaarFeatureLogger.extractActionLevelDisambiguationHistorySelfFeatures(_:)(v27);

    OUTLINED_FUNCTION_49_0(v60, sel_setActionLevelDisambiguationHistory_);

    (*(v35 + 8))(v29, v32);
    goto LABEL_29;
  }

  result = OUTLINED_FUNCTION_33(v52);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    [v26 setDomainProtectionLevel_];

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t static CaarFeatureLogger.roundToMinutes(seconds:)(uint64_t result)
{
  if (result < 0)
  {
    v2 = 0;
    return v2 | ((result < 0) << 32);
  }

  v1 = floor(result / 60.0);
  if (v1 == INFINITY)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v1 < 4294967300.0)
  {
    v2 = v1;
    return v2 | ((result < 0) << 32);
  }

LABEL_10:
  __break(1u);
  return result;
}

void outlined bridged method (mbnn) of @objc CAARSchemaCAARFeaturesGenerated.actionFeatureSets.setter(uint64_t a1, void *a2)
{
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARActionFeatureSet, 0x277D56AF8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setActionFeatureSets_];
}

void outlined bridged method (mbnn) of @objc CAARSchemaCAARActionFeatureSet.actionIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D5DCC90]();

  [a3 setActionIdentifier_];
}

uint64_t OUTLINED_FUNCTION_14_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return specialized Dictionary.subscript.getter(v13, v14, a13);
}

uint64_t OUTLINED_FUNCTION_25_2()
{
}

uint64_t OUTLINED_FUNCTION_26_2()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
}

uint64_t OUTLINED_FUNCTION_27_0()
{
}

uint64_t OUTLINED_FUNCTION_28_3()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_29_1()
{
  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
}

unint64_t OUTLINED_FUNCTION_31_0()
{

  return lazy protocol witness table accessor for type String and conformance String();
}

void OUTLINED_FUNCTION_35()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_36()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_39_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return specialized Dictionary.subscript.getter(a1, a2 | 0x8000000000000000, v2);
}

unint64_t OUTLINED_FUNCTION_40_0()
{
  v2 = *(v0 - 1);
  v3 = *v0;

  return lazy protocol witness table accessor for type String and conformance String();
}

unint64_t OUTLINED_FUNCTION_48_0()
{

  return lazy protocol witness table accessor for type String and conformance String();
}

id OUTLINED_FUNCTION_49_0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

unint64_t OUTLINED_FUNCTION_51_0()
{

  return lazy protocol witness table accessor for type String and conformance String();
}

unint64_t OUTLINED_FUNCTION_52_0()
{

  return lazy protocol witness table accessor for type String and conformance String();
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for RRDataSourceMetadataValue() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

uint64_t static AmbiguousFirstRunHelper.recordAmbiguousFirstRunShown(bundleId:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.common);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v17);
    _os_log_impl(&dword_266790000, v5, v6, "Storing ambiguous first run shown for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D5DDCD0](v8, -1, -1);
    MEMORY[0x26D5DDCD0](v7, -1, -1);
  }

  static CamUserHistoryDefaultsManager.getValue(key:)(0xD000000000000021, 0x800000026681AFC0, v17);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v9 = v16;
      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of Any?(v17);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_10:

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = *(v9 + 16);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v9 = v14;
  }

  v10 = *(v9 + 16);
  if (v10 >= *(v9 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v9 = v15;
  }

  *(v9 + 16) = v10 + 1;
  v11 = v9 + 16 * v10;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v17[0] = v9;
  static CamUserHistoryDefaultsManager.setValue(key:value:)(0xD000000000000021, 0x800000026681AFC0, v17);
  return __swift_destroy_boxed_opaque_existential_0(v17);
}

BOOL static AmbiguousFirstRunHelper.ambiguousFirstRunPreviouslyShown(bundleId:)(uint64_t a1, uint64_t a2)
{
  static CamUserHistoryDefaultsManager.getValue(key:)(0xD000000000000021, 0x800000026681AFC0, &v9);
  if (!v10)
  {
    v4 = outlined destroy of Any?(&v9);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v4 = swift_dynamicCast();
  if ((v4 & 1) == 0)
  {
LABEL_5:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  v5 = v8[4];
LABEL_6:
  *&v9 = a1;
  *(&v9 + 1) = a2;
  MEMORY[0x28223BE20](v4);
  v8[2] = &v9;
  v6 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v8, v5);

  return v6;
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_8_8();
  if (v5)
  {
    OUTLINED_FUNCTION_3_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_17();
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

  OUTLINED_FUNCTION_13(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v9 = OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_12_9(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * (v10 / 16);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_8_8();
  if (v5)
  {
    OUTLINED_FUNCTION_3_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_17();
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

  OUTLINED_FUNCTION_13(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam23Domain3PProtectionLevelOGMd, &_ss23_ContiguousArrayStorageCy7SiriCam23Domain3PProtectionLevelOGMR);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

{
  OUTLINED_FUNCTION_8_8();
  if (v5)
  {
    OUTLINED_FUNCTION_3_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_17();
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

  OUTLINED_FUNCTION_6_10(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v9 = OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_12_9(v9);
    OUTLINED_FUNCTION_5_9(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_10_8();
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

{
  OUTLINED_FUNCTION_8_8();
  if (v5)
  {
    OUTLINED_FUNCTION_3_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_17();
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

  OUTLINED_FUNCTION_13(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR);
    v9 = OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_12_9(v9);
    v9[2] = v2;
    v9[3] = 2 * (v10 / 8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[v2 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_11_7();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_8_8();
  if (v5)
  {
    OUTLINED_FUNCTION_3_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_17();
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

  OUTLINED_FUNCTION_13(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SitGMd, &_ss23_ContiguousArrayStorageCySS_SitGMR);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_12_9(v9);
    v9[2] = v2;
    v9[3] = 2 * (v10 / 24);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[3 * v2 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_11_7();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd, &_sSS_SitMR);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_8_8();
  if (v5)
  {
    OUTLINED_FUNCTION_3_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_17();
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

  OUTLINED_FUNCTION_6_10(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v9 = OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_12_9(v9);
    OUTLINED_FUNCTION_5_9(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_10_8();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

{
  OUTLINED_FUNCTION_8_8();
  if (v5)
  {
    OUTLINED_FUNCTION_3_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_17();
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

  OUTLINED_FUNCTION_6_10(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
    v9 = OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_12_9(v9);
    OUTLINED_FUNCTION_5_9(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_10_8();
  if (v1)
  {
    if (v9 != v0 || &v12[4 * v3] <= v11)
    {
      memmove(v11, v12, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 4 * v3);
  }
}

{
  OUTLINED_FUNCTION_8_8();
  if (v5)
  {
    OUTLINED_FUNCTION_3_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_17();
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

  OUTLINED_FUNCTION_6_10(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v9 = OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_12_9(v9);
    OUTLINED_FUNCTION_5_9(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_10_8();
  if (v1)
  {
    if (v9 != v0 || &v12[4 * v3] <= v11)
    {
      memmove(v11, v12, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 4 * v3);
  }
}

{
  OUTLINED_FUNCTION_8_8();
  if (v3)
  {
    OUTLINED_FUNCTION_3_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS13flowHandlerId_10Foundation4UUIDV05parseJ0Si13affinityScoret_Tt1g5(v7, v4);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR) - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v0 + v10, v7, v8 + v10, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, void *a4)
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriSignals15SignalProviding_pGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals15SignalProviding_pGMR, &_s11SiriSignals15SignalProviding_pMd, &_s11SiriSignals15SignalProviding_pMR);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy7SiriCam31UncertaintyPromptActionEnforcer_pGMd, &_ss23_ContiguousArrayStorageCy7SiriCam31UncertaintyPromptActionEnforcer_pGMR, &_s7SiriCam31UncertaintyPromptActionEnforcer_pMd, &_s7SiriCam31UncertaintyPromptActionEnforcer_pMR);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy7SiriCam13ActionHandler_pGMd, &_ss23_ContiguousArrayStorageCy7SiriCam13ActionHandler_pGMR, &_s7SiriCam13ActionHandler_pMd, &_s7SiriCam13ActionHandler_pMR);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy7SiriCam25AutoConfirmActionEnforcer_pGMd, &_ss23_ContiguousArrayStorageCy7SiriCam25AutoConfirmActionEnforcer_pGMR, &_s7SiriCam25AutoConfirmActionEnforcer_pMd, &_s7SiriCam25AutoConfirmActionEnforcer_pMR);
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC32SiriReferenceResolutionDataModel25RRDataSourceMetadataValueO_Tt1g5, MEMORY[0x277D5FE98], MEMORY[0x277D5FE98]);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SiriCam12RankedActionV_Tt1g5, type metadata accessor for RankedAction, type metadata accessor for RankedAction);
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_4();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_17();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_4();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_17();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_12_9(v17);
    v17[2] = v15;
    v17[3] = 2 * (v18 / 40);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v17 != a4 || &a4[5 * v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 40 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D2A310]);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277CC9260]);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D5FE08]);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for RankedAction);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277CC95F0]);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMd, &_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMR);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for CamParse);
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_13_7();
  if (v10 && (result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), v6 + *(*(result - 8) + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_3_9();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_3_9();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_13_7();
  if (v8 && (result = (a4)(0), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_3_9();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_3_9();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AmbiguousFirstRunHelper(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AmbiguousFirstRunHelper(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t specialized ActionProtocol.inferBundleId()()
{
  return specialized ActionProtocol.inferBundleId()(type metadata accessor for RankedAction, type metadata accessor for RankedAction, type metadata accessor for RankedAction);
}

{
  return specialized ActionProtocol.inferBundleId()(type metadata accessor for ActionCandidate, type metadata accessor for ActionCandidate, type metadata accessor for ActionCandidate);
}

uint64_t specialized ActionProtocol.inferBundleId()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v142 = a2;
  v143 = a3;
  v8 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI30Apple_Parsec_Siri_V2alpha_SashVSgMd, &_s10PegasusAPI30Apple_Parsec_Siri_V2alpha_SashVSgMR);
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_3();
  v141 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash();
  v13 = OUTLINED_FUNCTION_22(v141);
  v136 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v135 = v17;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v18);
  v139 = &v132 - v19;
  v20 = a1(0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  v140 = v23;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10_3();
  v133 = v25;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10_3();
  v134 = v27;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v28);
  v29 = OUTLINED_FUNCTION_31_1();
  v30 = OUTLINED_FUNCTION_0_2(v29);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v132 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v36);
  v38 = &v132 - v37;
  v137 = type metadata accessor for CamUSOParse(0);
  v39 = OUTLINED_FUNCTION_0_2(v137);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5();
  v138 = v42;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v43);
  v45 = &v132 - v44;
  v46 = *(v21 + 28);
  OUTLINED_FUNCTION_2_10();
  outlined init with copy of CamParse(v8 + v46, v38, v47);
  if (swift_getEnumCaseMultiPayload())
  {
    v48 = type metadata accessor for CamParse;
    v49 = v38;
  }

  else
  {
    outlined init with take of CamUSOParse(v38, v45);
    v132 = CamUSOParse.appShortcutInvocation.getter();
    if (v59)
    {
      v60 = v59;
      v141 = v45;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, static Logger.common);
      v62 = v6;
      outlined init with copy of CamParse(v8, v6, v142);

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = OUTLINED_FUNCTION_18_5();
        v145 = OUTLINED_FUNCTION_17_5();
        *v65 = 136315394;
        v66 = *v6;
        v67 = v6[1];
        v68 = *(v62 + 8);

        _s7SiriCam0B5ParseOWOhTm_0(v62, v143);
        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v145);

        *(v65 + 4) = v69;
        *(v65 + 12) = 2080;

        v58 = v132;
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v60, &v145);

        *(v65 + 14) = v70;
        _os_log_impl(&dword_266790000, v63, v64, "Inferring bundle for %s from AS invocation = %s", v65, 0x16u);
        OUTLINED_FUNCTION_22_3();
        OUTLINED_FUNCTION_3_1();
        OUTLINED_FUNCTION_3_1();

        OUTLINED_FUNCTION_0_15();
        _s7SiriCam0B5ParseOWOhTm_0(v141, v71);
      }

      else
      {

        _s7SiriCam0B5ParseOWOhTm_0(v6, v143);
        OUTLINED_FUNCTION_0_15();
        _s7SiriCam0B5ParseOWOhTm_0(v141, v128);

        return v132;
      }

      return v58;
    }

    v48 = type metadata accessor for CamUSOParse;
    v49 = v45;
  }

  _s7SiriCam0B5ParseOWOhTm_0(v49, v48);
  OUTLINED_FUNCTION_2_10();
  outlined init with copy of CamParse(v8 + v46, v4, v50);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s7SiriCam0B5ParseOWOhTm_0(v4, type metadata accessor for CamParse);
LABEL_7:
    outlined init with copy of CamParse(v8 + v46, v35, type metadata accessor for CamParse);
    if (swift_getEnumCaseMultiPayload())
    {
      v53 = type metadata accessor for CamParse;
      v54 = v35;
    }

    else
    {
      v88 = v138;
      outlined init with take of CamUSOParse(v35, v138);
      v89 = (v88 + *(v137 + 24));
      v90 = v89[1];
      if (v90)
      {
        v58 = *v89;
        v91 = one-time initialization token for common;

        if (v91 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v92 = type metadata accessor for Logger();
        __swift_project_value_buffer(v92, static Logger.common);
        v93 = OUTLINED_FUNCTION_20_5();
        v94 = v133;
        outlined init with copy of CamParse(v93, v133, v142);

        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = OUTLINED_FUNCTION_18_5();
          v145 = OUTLINED_FUNCTION_17_5();
          *v97 = 136315394;
          v98 = *v94;
          v99 = v94[1];

          v100 = OUTLINED_FUNCTION_28_4();
          _s7SiriCam0B5ParseOWOhTm_0(v100, v101);
          v102 = OUTLINED_FUNCTION_23_4();

          *(v97 + 4) = v102;
          *(v97 + 12) = 2080;
          *(v97 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v90, &v145);
          OUTLINED_FUNCTION_32_1(&dword_266790000, v103, v104, "Inferring bundle for %s from USO parse = %s");
          OUTLINED_FUNCTION_21_3();
          OUTLINED_FUNCTION_3_1();
          OUTLINED_FUNCTION_3_1();
        }

        else
        {

          v129 = OUTLINED_FUNCTION_28_4();
          _s7SiriCam0B5ParseOWOhTm_0(v129, v130);
        }

        v87 = type metadata accessor for CamUSOParse;
        v86 = v88;
        goto LABEL_38;
      }

      v53 = type metadata accessor for CamUSOParse;
      v54 = v88;
    }

    _s7SiriCam0B5ParseOWOhTm_0(v54, v53);
    v55 = *v8;
    v56 = v8[1];

    v57._countAndFlagsBits = OUTLINED_FUNCTION_8_0();
    PluginToBundleMap.init(rawValue:)(v57);
    if (v145 == 32)
    {
      v58 = 0;
    }

    else
    {
      v144 = v145;
      v58 = PluginToBundleMap.associatedAppBundleId.getter();
    }

    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.common);
    v73 = OUTLINED_FUNCTION_20_5();
    v74 = v140;
    outlined init with copy of CamParse(v73, v140, v142);

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = OUTLINED_FUNCTION_18_5();
      v145 = OUTLINED_FUNCTION_17_5();
      *v77 = 136315394;
      v78 = *v74;
      v79 = v74[1];

      v80 = OUTLINED_FUNCTION_28_4();
      _s7SiriCam0B5ParseOWOhTm_0(v80, v81);
      v82 = OUTLINED_FUNCTION_23_4();

      *(v77 + 4) = v82;
      *(v77 + 12) = 2080;

      v83 = OUTLINED_FUNCTION_23_4();

      *(v77 + 14) = v83;
      OUTLINED_FUNCTION_32_1(&dword_266790000, v84, v85, "Inferring bundle for %s from plugin mapping = %s");
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_3_1();

      return v58;
    }

    v86 = OUTLINED_FUNCTION_28_4();
LABEL_38:
    _s7SiriCam0B5ParseOWOhTm_0(v86, v87);
    return v58;
  }

  v51 = *v4;
  PommesResponse.sash()(v5);
  v52 = v141;
  if (__swift_getEnumTagSinglePayload(v5, 1, v141) == 1)
  {

    outlined destroy of Apple_Parsec_Siri_V2alpha_Sash?(v5);
    goto LABEL_7;
  }

  v105 = v136;
  v106 = v139;
  (*(v136 + 32))(v139, v5, v52);
  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v140 = v51;
  v107 = type metadata accessor for Logger();
  __swift_project_value_buffer(v107, static Logger.common);
  v108 = OUTLINED_FUNCTION_20_5();
  v109 = v134;
  outlined init with copy of CamParse(v108, v134, v142);
  v110 = v135;
  (*(v105 + 16))(v135, v106, v52);
  v111 = v52;
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = OUTLINED_FUNCTION_18_5();
    v145 = OUTLINED_FUNCTION_17_5();
    *v114 = 136315394;
    v115 = *v109;
    v116 = v109;
    v117 = v110;
    v118 = *(v116 + 8);

    _s7SiriCam0B5ParseOWOhTm_0(v116, v143);
    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v118, &v145);

    *(v114 + 4) = v119;
    *(v114 + 12) = 2080;
    v120 = Apple_Parsec_Siri_V2alpha_Sash.appID.getter();
    v122 = v121;
    v123 = *(v105 + 8);
    v124 = v117;
    v125 = v141;
    v123(v124, v141);
    v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v122, &v145);

    *(v114 + 14) = v126;
    _os_log_impl(&dword_266790000, v112, v113, "Inferring bundle for %s from sash = %s", v114, 0x16u);
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_3_1();
    v106 = v139;
    OUTLINED_FUNCTION_3_1();

    v127 = v125;
  }

  else
  {

    v123 = *(v105 + 8);
    v123(v110, v111);
    _s7SiriCam0B5ParseOWOhTm_0(v109, v143);
    v127 = v111;
  }

  v58 = Apple_Parsec_Siri_V2alpha_Sash.appID.getter();

  v123(v106, v127);
  return v58;
}

Swift::String_optional __swiftcall ActionProtocol.inferBundleId()()
{
  v5 = v1;
  v6 = v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI30Apple_Parsec_Siri_V2alpha_SashVSgMd, &_s10PegasusAPI30Apple_Parsec_Siri_V2alpha_SashVSgMR);
  v8 = OUTLINED_FUNCTION_14(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v151 = &v141 - v11;
  v150 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash();
  v12 = OUTLINED_FUNCTION_22(v150);
  v143 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v142 = v16;
  OUTLINED_FUNCTION_6();
  v18 = MEMORY[0x28223BE20](v17);
  v145 = &v141 - v19;
  v154 = *(v6 - 8);
  v20 = *(v154 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v149 = v21;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_3();
  v141 = v23;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10_3();
  v152 = v25;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v26);
  v27 = OUTLINED_FUNCTION_31_1();
  v28 = OUTLINED_FUNCTION_0_2(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5();
  v148 = v31;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v33);
  v35 = &v141 - v34;
  v144 = type metadata accessor for CamUSOParse(0);
  v36 = OUTLINED_FUNCTION_0_2(v144);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5();
  v146 = v39;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v40);
  v42 = &v141 - v41;
  v43 = *(v5 + 16);
  v155 = v2;
  v156 = v5;
  v153 = v6;
  v43(v6, v5);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_3_10();
    v45 = v35;
  }

  else
  {
    v61 = v4;
    outlined init with take of CamUSOParse(v35, v42);
    v147 = CamUSOParse.appShortcutInvocation.getter();
    if (v62)
    {
      v64 = v63;
      v65 = v62;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v66 = type metadata accessor for Logger();
      __swift_project_value_buffer(v66, static Logger.common);
      v67 = v154;
      v68 = v153;
      (*(v154 + 16))(v61, v155, v153);
      v69 = v65;

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = OUTLINED_FUNCTION_18_5();
        v73 = OUTLINED_FUNCTION_17_5();
        v155 = v42;
        v158 = v73;
        *v72 = 136315394;
        OUTLINED_FUNCTION_16_4();
        LODWORD(v152) = v71;
        v74(v68);
        v156 = v64;
        OUTLINED_FUNCTION_19_5();
        (*(v67 + 8))(v61, v68);
        v75 = OUTLINED_FUNCTION_8_0();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v77);
        OUTLINED_FUNCTION_10_9();

        *(v72 + 4) = v64;
        *(v72 + 12) = 2080;

        v78 = v147;
        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v65, &v158);

        *(v72 + 14) = v79;
        _os_log_impl(&dword_266790000, v70, v152, "Inferring bundle for %s from AS invocation = %s", v72, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_1();
        OUTLINED_FUNCTION_3_1();

        OUTLINED_FUNCTION_0_15();
        _s7SiriCam0B5ParseOWOhTm_0(v155, v80);

        v60 = v69;
        goto LABEL_41;
      }

      (*(v67 + 8))(v61, v68);
      OUTLINED_FUNCTION_0_15();
      _s7SiriCam0B5ParseOWOhTm_0(v42, v133);

      v60 = v65;
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_0_15();
    v45 = v42;
  }

  _s7SiriCam0B5ParseOWOhTm_0(v45, v44);
  v46 = v153;
  v43(v153, v156);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v48 = v151;
  v49 = v152;
  if (EnumCaseMultiPayload == 1)
  {
    v50 = *v3;
    PommesResponse.sash()(v151);
    v51 = v150;
    if (__swift_getEnumTagSinglePayload(v48, 1, v150) != 1)
    {
      v149 = v50;
      v114 = v143;
      v115 = v145;
      (*(v143 + 32))(v145, v48, v51);
      v116 = v155;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v117 = type metadata accessor for Logger();
      __swift_project_value_buffer(v117, static Logger.common);
      v118 = v154;
      (*(v154 + 16))(v49, v116, v46);
      v119 = v142;
      (*(v114 + 16))(v142, v115, v51);
      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = OUTLINED_FUNCTION_18_5();
        v155 = OUTLINED_FUNCTION_17_5();
        v158 = v155;
        *v122 = 136315394;
        OUTLINED_FUNCTION_16_4();
        v123(v46);
        OUTLINED_FUNCTION_19_5();
        (*(v118 + 8))(v49, v46);
        v124 = OUTLINED_FUNCTION_8_0();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, v126);
        OUTLINED_FUNCTION_10_9();

        OUTLINED_FUNCTION_15_6();
        Apple_Parsec_Siri_V2alpha_Sash.appID.getter();
        OUTLINED_FUNCTION_19_5();
        v127 = *(v114 + 8);
        v127(v119, v150);
        v128 = OUTLINED_FUNCTION_8_0();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v129, v130);
        OUTLINED_FUNCTION_10_9();

        *(v122 + 14) = v119;
        OUTLINED_FUNCTION_12_10(&dword_266790000, v131, v132, "Inferring bundle for %s from sash = %s");
        swift_arrayDestroy();
        v115 = v145;
        OUTLINED_FUNCTION_3_1();
        v51 = v150;
        OUTLINED_FUNCTION_3_1();
      }

      else
      {

        v134 = v49;
        v127 = *(v114 + 8);
        v127(v119, v51);
        (*(v118 + 8))(v134, v46);
      }

      v78 = Apple_Parsec_Siri_V2alpha_Sash.appID.getter();
      v60 = v135;

      v127(v115, v51);
      goto LABEL_41;
    }

    outlined destroy of Apple_Parsec_Siri_V2alpha_Sash?(v48);
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    _s7SiriCam0B5ParseOWOhTm_0(v3, v52);
  }

  v53 = v155;
  v54 = v148;
  v43(v46, v156);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_3_10();
    _s7SiriCam0B5ParseOWOhTm_0(v54, v55);
    v56 = v154;
    v57 = v149;
LABEL_9:
    v58 = *(v156 + 8);
    v59._countAndFlagsBits = v58(v46);
    PluginToBundleMap.init(rawValue:)(v59);
    if (v158 == 32)
    {
      v147 = 0;
      v60 = 0;
    }

    else
    {
      v157 = v158;
      v147 = PluginToBundleMap.associatedAppBundleId.getter();
      v60 = v81;
    }

    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, static Logger.common);
    (*(v56 + 16))(v57, v53, v46);

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = OUTLINED_FUNCTION_18_5();
      v158 = OUTLINED_FUNCTION_17_5();
      *v85 = 136315394;
      v86 = (v58)(v46, v156);
      v88 = v87;
      (*(v56 + 8))(v57, v46);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v158);

      OUTLINED_FUNCTION_15_6();
      v78 = v147;
      if (v60)
      {
        v89 = v147;
      }

      else
      {
        v89 = 7104878;
      }

      v90 = OUTLINED_FUNCTION_8_0();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, v92);
      OUTLINED_FUNCTION_10_9();

      *(v85 + 14) = v89;
      OUTLINED_FUNCTION_12_10(&dword_266790000, v93, v94, "Inferring bundle for %s from plugin mapping = %s");
      OUTLINED_FUNCTION_22_3();
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_3_1();

      goto LABEL_41;
    }

    (*(v56 + 8))(v57, v46);
LABEL_36:
    v78 = v147;
    goto LABEL_41;
  }

  v95 = v54;
  v96 = v146;
  outlined init with take of CamUSOParse(v95, v146);
  v97 = (v96 + *(v144 + 24));
  v60 = v97[1];
  v57 = v149;
  if (!v60)
  {
    OUTLINED_FUNCTION_0_15();
    _s7SiriCam0B5ParseOWOhTm_0(v96, v136);
    v56 = v154;
    goto LABEL_9;
  }

  v98 = *v97;
  v99 = one-time initialization token for common;

  v100 = v154;
  if (v99 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v101 = type metadata accessor for Logger();
  __swift_project_value_buffer(v101, static Logger.common);
  v102 = v141;
  (*(v100 + 16))(v141, v53, v46);

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = OUTLINED_FUNCTION_18_5();
    v158 = OUTLINED_FUNCTION_17_5();
    *v105 = 136315394;
    OUTLINED_FUNCTION_16_4();
    v106(v46);
    OUTLINED_FUNCTION_19_5();
    (*(v100 + 8))(v107, v46);
    v108 = OUTLINED_FUNCTION_8_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, v110);
    OUTLINED_FUNCTION_10_9();

    OUTLINED_FUNCTION_15_6();
    v78 = v98;
    *(v105 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v60, &v158);
    OUTLINED_FUNCTION_12_10(&dword_266790000, v111, v112, "Inferring bundle for %s from USO parse = %s");
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();

    OUTLINED_FUNCTION_0_15();
    _s7SiriCam0B5ParseOWOhTm_0(v146, v113);
  }

  else
  {

    (*(v100 + 8))(v102, v46);
    OUTLINED_FUNCTION_0_15();
    _s7SiriCam0B5ParseOWOhTm_0(v146, v137);
    v78 = v98;
  }

LABEL_41:
  v138 = v78;
  v139 = v60;
  result.value._object = v139;
  result.value._countAndFlagsBits = v138;
  return result;
}

uint64_t RankedAction.flowHandlerId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_8_0();
}

uint64_t RankedAction.parse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RankedAction() + 20);
  OUTLINED_FUNCTION_2_10();
  return outlined init with copy of CamParse(v1 + v4, a1, v5);
}

uint64_t RankedAction.alternatives.getter()
{
  v1 = *(v0 + *(type metadata accessor for RankedAction() + 24));
}

uint64_t RankedAction.userData.getter()
{
  v1 = *(v0 + *(type metadata accessor for RankedAction() + 32));
}

uint64_t RankedAction.loggingId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RankedAction() + 36);
  v4 = type metadata accessor for UUID();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t RankedAction.inferredBundleId.getter()
{
  v1 = (v0 + *(type metadata accessor for RankedAction() + 40));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_8_0();
}

uint64_t RankedAction.inferredBundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RankedAction() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void RankedAction.init(flowHandlerId:parse:score:alternatives:userData:)()
{
  OUTLINED_FUNCTION_30_2();
  v34 = v0;
  v35 = v1;
  v33 = v2;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for UUID();
  v13 = OUTLINED_FUNCTION_22(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CamParse(0);
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CamParse(v5, v25, type metadata accessor for CamParse);
  UUID.init()();
  v26 = type metadata accessor for RankedAction();
  v27 = &v11[v26[10]];
  *v11 = v9;
  *(v11 + 1) = v7;
  outlined init with copy of CamParse(v25, &v11[v26[5]], type metadata accessor for CamParse);
  *&v11[v26[6]] = v33;
  *&v11[v26[7]] = v4;
  *&v11[v26[8]] = v35;
  (*(v15 + 16))(&v11[v26[9]], v19, v12);
  type metadata accessor for MLFeatureValue();
  *&v11[v26[11]] = Dictionary.init(dictionaryLiteral:)();
  *v27 = 0;
  v27[1] = 0;
  v28 = OUTLINED_FUNCTION_5_10();
  v29 = specialized ActionProtocol.inferBundleId()(v28, type metadata accessor for RankedAction, type metadata accessor for RankedAction);
  v31 = v30;
  _s7SiriCam0B5ParseOWOhTm_0(v34, type metadata accessor for CamParse);
  (*(v15 + 8))(v19, v12);
  _s7SiriCam0B5ParseOWOhTm_0(v25, type metadata accessor for CamParse);
  *v27 = v29;
  v27[1] = v31;
  OUTLINED_FUNCTION_29_2();
}

void RankedAction.init(flowHandlerId:parse:score:loggingId:alternatives:userData:)()
{
  OUTLINED_FUNCTION_30_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = type metadata accessor for RankedAction();
  v17 = &v15[v16[10]];
  *v15 = v13;
  *(v15 + 1) = v11;
  v18 = v16[5];
  OUTLINED_FUNCTION_2_10();
  outlined init with copy of CamParse(v9, &v15[v19], v20);
  *&v15[v16[6]] = v3;
  *&v15[v16[7]] = v7;
  *&v15[v16[8]] = v1;
  v21 = v16[9];
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v15[v21], v5, v22);
  type metadata accessor for MLFeatureValue();
  *&v15[v16[11]] = Dictionary.init(dictionaryLiteral:)();
  *v17 = 0;
  v17[1] = 0;
  v24 = OUTLINED_FUNCTION_5_10();
  v25 = specialized ActionProtocol.inferBundleId()(v24, type metadata accessor for RankedAction, type metadata accessor for RankedAction);
  v27 = v26;
  (*(v23 + 8))(v5, v22);
  OUTLINED_FUNCTION_3_10();
  _s7SiriCam0B5ParseOWOhTm_0(v9, v28);
  *v17 = v25;
  v17[1] = v27;
  OUTLINED_FUNCTION_29_2();
}

uint64_t RankedAction.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(100);
  MEMORY[0x26D5DCD80](0xD000000000000014, 0x800000026681AFF0);
  v2 = type metadata accessor for RankedAction();
  v3 = *(v0 + v2[7]);
  Double.write<A>(to:)();
  MEMORY[0x26D5DCD80](0xD000000000000011, 0x800000026681B010);
  MEMORY[0x26D5DCD80](*v1, v1[1]);
  MEMORY[0x26D5DCD80](0x614472657375202CLL, 0xEC000000203A6174);
  v11 = *(v0 + v2[8]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, &_sSDySSypGSgMR);
  v4 = String.init<A>(describing:)();
  MEMORY[0x26D5DCD80](v4);

  MEMORY[0x26D5DCD80](0x3A6573726170202CLL, 0xE900000000000020);
  v5 = v2[5];
  v6 = type metadata accessor for CamParse(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D5DCD80](0xD000000000000010, 0x800000026681B030);
  v7 = MEMORY[0x26D5DCE80](*(v1 + v2[6]), v6);
  MEMORY[0x26D5DCD80](v7);

  MEMORY[0x26D5DCD80](0x6E6967676F6C202CLL, 0xED0000203A644967);
  v8 = v2[9];
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D5DCD80](v9);

  MEMORY[0x26D5DCD80](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RankedAction.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RankedAction.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SiriCam12RankedActionV10CodingKeys33_669DDB58ABA9B95181F4253FED030C0CLLO8rawValueAFSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RankedAction.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = _s7SiriCam12RankedActionV10CodingKeys33_669DDB58ABA9B95181F4253FED030C0CLLO8rawValueSSvg_0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance RankedAction.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = _s7SiriCam12RankedActionV10CodingKeys33_669DDB58ABA9B95181F4253FED030C0CLLO8rawValueAFSgSS_tcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance RankedAction.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = RankedAction.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RankedAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RankedAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RankedAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam12RankedActionV10CodingKeys33_669DDB58ABA9B95181F4253FED030C0CLLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam12RankedActionV10CodingKeys33_669DDB58ABA9B95181F4253FED030C0CLLOGMR);
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_3();
  v8 = type metadata accessor for RankedAction();
  v9 = v8;
  v10 = *(v1 + *(v8 + 32));
  if (v10)
  {
    v43 = a1;
    v44 = v8;
    v45 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    OUTLINED_FUNCTION_20_5();
    result = static _DictionaryStorage.copy(original:)();
    v12 = 0;
    v13 = v10 + 64;
    v14 = 1 << *(v10 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v10 + 64);
    v17 = (v14 + 63) >> 6;
    v47 = result + 64;
    v48 = result;
    if (v16)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_11:
        v21 = v18 | (v12 << 6);
        v22 = *(v10 + 56);
        v23 = v10;
        v24 = (*(v10 + 48) + 16 * v21);
        v25 = v24[1];
        v51 = *v24;
        outlined init with copy of Any(v22 + 32 * v21, v50);
        outlined init with copy of Any(v50, v49);

        v26 = String.init<A>(describing:)();
        v28 = v27;
        result = __swift_destroy_boxed_opaque_existential_0(v50);
        *(v47 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v29 = (v48[6] + 16 * v21);
        *v29 = v51;
        v29[1] = v25;
        v30 = (v48[7] + 16 * v21);
        *v30 = v26;
        v30[1] = v28;
        v31 = v48[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          break;
        }

        v48[2] = v33;
        v10 = v23;
        if (!v16)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v19 = v12;
      while (1)
      {
        v12 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v12 >= v17)
        {
          v2 = v45;
          a1 = v43;
          v9 = v44;
          goto LABEL_16;
        }

        v20 = *(v13 + 8 * v12);
        ++v19;
        if (v20)
        {
          v18 = __clz(__rbit64(v20));
          v16 = (v20 - 1) & v20;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v48 = 0;
LABEL_16:
    v34 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v35 = v9[5];
    LOBYTE(v50[0]) = 2;
    type metadata accessor for CamParse(0);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type CamParse and conformance CamParse, type metadata accessor for CamParse);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v46)
    {
      v36 = OUTLINED_FUNCTION_14_6();
      v37(v36);
    }

    else
    {
      v50[0] = v48;
      v49[0] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGSgMd, &_sSDyS2SGSgMR);
      lazy protocol witness table accessor for type [String : String]? and conformance <A> A?();
      OUTLINED_FUNCTION_13_8();

      v38 = *v2;
      v39 = v2[1];
      LOBYTE(v50[0]) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      v50[0] = *(v2 + v9[6]);
      v49[0] = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SiriCam0B5ParseOGMd, &_sSay7SiriCam0B5ParseOGMR);
      lazy protocol witness table accessor for type [CamParse] and conformance <A> [A]();
      OUTLINED_FUNCTION_13_8();
      v40 = *(v2 + v9[7]);
      LOBYTE(v50[0]) = 4;
      KeyedEncodingContainer.encode(_:forKey:)();
      v41 = OUTLINED_FUNCTION_14_6();
      return v42(v41);
    }
  }

  return result;
}

void RankedAction.with(score:)()
{
  OUTLINED_FUNCTION_30_2();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = v7;
  v46 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v48 = v11;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v45 = &v41 - v13;
  v15 = type metadata accessor for CamParse(0);
  v16 = OUTLINED_FUNCTION_14(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v49 = v19;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  v23 = *v0;
  v42 = v0[1];
  v43 = v23;
  v24 = type metadata accessor for RankedAction();
  v25 = v0 + v24[5];
  v47 = v22;
  outlined init with copy of CamParse(v25, v22, type metadata accessor for CamParse);
  v26 = *(v8 + 16);
  v26(v14, v0 + v24[9], v5);
  v50 = *(v0 + v24[11]);
  v27 = *(v0 + v24[6]);
  v41 = *(v0 + v24[8]);
  v28 = v22;
  v29 = v49;
  outlined init with copy of CamParse(v28, v49, type metadata accessor for CamParse);
  v30 = v48;
  v26(v48, v14, v5);
  v44 = &v4[v24[10]];
  v31 = v42;
  *v4 = v43;
  *(v4 + 1) = v31;
  outlined init with copy of CamParse(v29, &v4[v24[5]], type metadata accessor for CamParse);
  *&v4[v24[6]] = v27;
  *&v4[v24[7]] = v2;
  *&v4[v24[8]] = v41;
  v26(&v4[v24[9]], v30, v5);
  type metadata accessor for MLFeatureValue();

  v32 = Dictionary.init(dictionaryLiteral:)();
  v33 = v24[11];
  *&v4[v33] = v32;
  v34 = v44;
  *v44 = 0;
  v34[1] = 0;
  v35 = v34;
  v36 = OUTLINED_FUNCTION_5_10();
  v37 = specialized ActionProtocol.inferBundleId()(v36, type metadata accessor for RankedAction, type metadata accessor for RankedAction);
  v39 = v38;
  v40 = *(v46 + 8);
  v40(v48, v5);
  _s7SiriCam0B5ParseOWOhTm_0(v49, type metadata accessor for CamParse);
  v40(v45, v5);
  _s7SiriCam0B5ParseOWOhTm_0(v47, type metadata accessor for CamParse);

  *v35 = v37;
  v35[1] = v39;
  *&v4[v33] = v50;
  OUTLINED_FUNCTION_29_2();
}

uint64_t closure #1 in ActionProtocol.getAssociatedAppMentioned()@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UsoIdentifier();
  v7 = OUTLINED_FUNCTION_22(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (v40 - v15);
  v17 = *a1;
  if (*a1 >> 62)
  {
    if (v17 < 0)
    {
      v39 = *a1;
    }

    else
    {
      v39 = v17 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x26D5DD300](v39);
    if (!result)
    {
      goto LABEL_32;
    }
  }

  else
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_32;
    }
  }

  v19 = v17 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v17 & 0xC000000000000001) == 0, v17);
  if ((v17 & 0xC000000000000001) != 0)
  {
    goto LABEL_41;
  }

  v20 = *(v17 + 32);

LABEL_5:
  dispatch thunk of UsoValue.getAsEntity()();
  OUTLINED_FUNCTION_10_9();

  if (v19)
  {
    v21 = v19;
    v22 = UsoEntity.attributes.getter();

    specialized Dictionary.subscript.getter(1701667182, 0xE400000000000000, v22);
    OUTLINED_FUNCTION_20_5();

    if (specialized Array.count.getter(v19))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v19 & 0xC000000000000001) == 0, v19);
      if ((v19 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x26D5DD230](0, v19);
      }

      else
      {
        v19 = *(v19 + 32);
        v23 = *(v21 + 32);
      }

      if (v19)
      {
        v41 = a2;

        v17 = v19;
        a2 = dispatch thunk of UsoValue.getUsoIdentifiers()();

        v46 = a2[2];
        if (v46)
        {
          v40[0] = v16;
          v40[1] = v19;
          v40[2] = v3;
          v3 = 0;
          v24 = *MEMORY[0x277D5F4C0];
          v44 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
          v45 = v24;
          v43 = v9 + 16;
          v42 = *MEMORY[0x277D5F538];
          v16 = (v9 + 8);
          do
          {
            if (v3 >= a2[2])
            {
              __break(1u);
LABEL_41:
              MEMORY[0x26D5DD230](0, v17);
              goto LABEL_5;
            }

            (*(v9 + 16))(v14, &v44[*(v9 + 72) * v3], v6);
            v25 = UsoIdentifier.appBundleId.getter();
            v17 = v26;
            v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v19 = v28;
            if (v25 == v27 && v17 == v28)
            {
            }

            else
            {
              v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v30 & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            v31 = UsoIdentifier.namespace.getter();
            v19 = v32;
            v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = v34;
            if (v19)
            {
              if (v31 == v33 && v19 == v34)
              {

LABEL_34:

                v37 = v40[0];
                (*(v9 + 32))(v40[0], v14, v6);
                UsoIdentifier.value.getter();
                OUTLINED_FUNCTION_19_5();

                result = (*(v9 + 8))(v37, v6);
                v38 = v41;
                *v41 = v19;
                v38[1] = v37;
                return result;
              }

              v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v36)
              {
                goto LABEL_34;
              }
            }

            else
            {
            }

LABEL_28:
            ++v3;
            (*v16)(v14, v6);
          }

          while (v46 != v3);
        }

        a2 = v41;
      }
    }

    else
    {
    }
  }

LABEL_32:
  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t ***a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);
  OUTLINED_FUNCTION_10_9();

  v9 = *a1;
  *v9 = a3;
  *a1 = v9 + 1;
  return result;
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t outlined destroy of Apple_Parsec_Siri_V2alpha_Sash?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI30Apple_Parsec_Siri_V2alpha_SashVSgMd, &_s10PegasusAPI30Apple_Parsec_Siri_V2alpha_SashVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for RankedAction()
{
  result = type metadata singleton initialization cache for RankedAction;
  if (!type metadata singleton initialization cache for RankedAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CamParse] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [CamParse] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [CamParse] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay7SiriCam0B5ParseOGMd, &_sSay7SiriCam0B5ParseOGMR);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type CamParse and conformance CamParse, type metadata accessor for CamParse);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CamParse] and conformance <A> [A]);
  }

  return result;
}

void type metadata completion function for RankedAction()
{
  type metadata accessor for CamParse(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [CamParse]();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [String : Any]?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UUID();
        if (v3 <= 0x3F)
        {
          type metadata accessor for String?();
          if (v4 <= 0x3F)
          {
            type metadata accessor for [String : MLFeatureValue]();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [CamParse]()
{
  if (!lazy cache variable for type metadata for [CamParse])
  {
    type metadata accessor for CamParse(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [CamParse]);
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for RankedAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t outlined init with copy of CamParse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_0_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_8_0();
  v8(v7);
  return a2;
}

uint64_t _s7SiriCam0B5ParseOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_18_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_22_3()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_23_4()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v1, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_28_4()
{
  result = v0;
  v3 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return type metadata accessor for CamParse(0);
}

void OUTLINED_FUNCTION_32_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 56);
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
      v8 = *(v6 - 1);
      v9 = *v6;
      v10 = *(v6 - 2);
      v17[0] = *(v6 - 3);
      v17[1] = v10;
      v17[2] = v8;
      v17[3] = v9;

      a1(&v18, v17);
      if (v3)
      {
        break;
      }

      v11 = v18;
      if (v18 != 4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = *(v7 + 16);
          OUTLINED_FUNCTION_0_1();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v7 = v14;
        }

        v12 = *(v7 + 16);
        if (v12 >= *(v7 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v7 = v15;
        }

        *(v7 + 16) = v12 + 1;
        *(v7 + v12 + 32) = v11;
      }

      v6 += 4;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = (a3 + 32);
  v6 = MEMORY[0x277D84F90];
  if (v4)
  {
    while (1)
    {
      v18 = *v5;
      a1(&v16, &v18);
      if (v3)
      {
        break;
      }

      v7 = v17;
      if (v17)
      {
        v8 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = *(v6 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v6 = v12;
        }

        v9 = *(v6 + 16);
        if (v9 >= *(v6 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v6 = v13;
        }

        *(v6 + 16) = v9 + 1;
        v10 = v6 + 16 * v9;
        *(v10 + 32) = v8;
        *(v10 + 40) = v7;
      }

      ++v5;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v37 = type metadata accessor for RankedAction();
  OUTLINED_FUNCTION_2_3();
  v35 = v11;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  v36 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  v19 = *(a3 + 16);
  v20 = (a3 + 56);
  v21 = MEMORY[0x277D84F90];
  if (v19)
  {
    while (1)
    {
      v22 = *(v20 - 1);
      v23 = *v20;
      v24 = *(v20 - 2);
      v38[0] = *(v20 - 3);
      v38[1] = v24;
      v38[2] = v22;
      v38[3] = v23;

      v39(v38);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v10, 1, v37) == 1)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v10, &_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
      }

      else
      {
        outlined init with take of CamUSOParse(v10, v18, type metadata accessor for RankedAction);
        outlined init with take of CamUSOParse(v18, v36, type metadata accessor for RankedAction);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = *(v21 + 16);
          v28 = OUTLINED_FUNCTION_0_1();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28, v29, v30, v21);
          v21 = v31;
        }

        v26 = *(v21 + 16);
        v25 = *(v21 + 24);
        if (v26 >= v25 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1, v21);
          v21 = v32;
        }

        *(v21 + 16) = v26 + 1;
        outlined init with take of CamUSOParse(v36, v21 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v26, type metadata accessor for RankedAction);
      }

      v20 += 4;
      if (!--v19)
      {
        return v21;
      }
    }
  }

  return v21;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

uint64_t DisambiguationSerialiser.init(actions:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a1;

  OUTLINED_FUNCTION_5_11();
  specialized MutableCollection<>.sort(by:)(&v5, v3, specialized UnsafeMutableBufferPointer._stableSortImpl(by:));

  *a2 = v5;
  return result;
}

BOOL closure #1 in DisambiguationSerialiser.init(actions:)(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 40))(v4, v5);
  if (!v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = v7;
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = (*(v11 + 40))(v10, v11);
  v14 = v13;
  if (v13)
  {
    v15 = v8 == v12 && v9 == v13;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v29 & 1;
    }

    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    v18 = ActionProtocol.actionRepresentation.getter(v16, v17);
    v20 = v19;
    v21 = a2[3];
    v22 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v21);
    v23 = ActionProtocol.actionRepresentation.getter(v21, v22);
    v25 = v24;
    if (v20)
    {
      if (v24)
      {
        if (v18 != v23 || v20 != v24)
        {
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          return v27 & 1;
        }

        return 0;
      }
    }

    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.ranker);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_266790000, v31, v32, "DisambiguationSerialiser: at least 1 action has nil representation, this should not happen.", v33, 2u);
      MEMORY[0x26D5DDCD0](v33, -1, -1);
    }

    v14 = v25 == 0;
  }

  return v14;
}

uint64_t DisambiguationSerialiser.indexOfSelectedAction(selected:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v11 = v10 - v9;
  v12 = *v1;
  v29 = a1;
  v13 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in DisambiguationSerialiser.indexOfSelectedAction(selected:), v28, v12);
  if (v14)
  {
    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_2_0();
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.ranker);
    outlined init with copy of SignalProviding(a1, v31);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_15();
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v18 = 136315138;
      v27 = v13;
      v20 = v32;
      v19 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      (*(v19 + 32))(v20, v19);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v5 + 8))(v11, v3);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v30);

      *(v18 + 4) = v24;
      v13 = v27;
      _os_log_impl(&dword_266790000, v16, v17, "Could not find selected action %s in the candidates list", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v31);
    }
  }

  return v13;
}

uint64_t closure #1 in DisambiguationSerialiser.indexOfSelectedAction(selected:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 32))(v12, v13);
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  (*(v15 + 32))(v14, v15);
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v11, v4);
  return a1 & 1;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = a3 + 32; ; i += 40)
  {
    if (v6 == v5)
    {
      return 0;
    }

    result = a1(i);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

uint64_t DisambiguationSerialiser.serialisedSelectedActionIndex(selected:)(uint64_t a1)
{
  v4 = *v1;
  DisambiguationSerialiser.indexOfSelectedAction(selected:)(a1);
  if (v2)
  {
    return 0;
  }

  else
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisambiguationSerialiser.serialiseActionBundles()()
{
  v63 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for String.Encoding();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v5 = *v0;
  v6 = *(*v0 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    v8 = MEMORY[0x277D84F90];
    v9 = *(*v0 + 16);
    do
    {
      outlined init with copy of SignalProviding(v7, &v60);
      v10 = v61;
      v11 = v62;
      __swift_project_boxed_opaque_existential_1(&v60, v61);
      v12 = (*(v11 + 40))(v10, v11);
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0(&v60);
      if (v14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v8 + 16);
          OUTLINED_FUNCTION_0_1();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v8 = v18;
        }

        v15 = *(v8 + 16);
        if (v15 >= *(v8 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v8 = v19;
        }

        *(v8 + 16) = v15 + 1;
        v16 = v8 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v14;
      }

      v7 += 40;
      --v9;
    }

    while (v9);
    v20 = *(v5 + 16);
  }

  else
  {
    v20 = 0;
    v8 = MEMORY[0x277D84F90];
  }

  if (*(v8 + 16) == v20)
  {
    v21 = objc_opt_self();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v60 = 0;
    v23 = [v21 dataWithJSONObject:isa options:0 error:&v60];

    v24 = v60;
    if (v23)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      static String.Encoding.utf8.getter();
      OUTLINED_FUNCTION_11_7();
      String.init(data:encoding:)();
      v25 = OUTLINED_FUNCTION_11_7();
      outlined consume of Data._Representation(v25, v26);
    }

    else
    {
      v57 = v24;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {

    v27 = 0;
    v28 = v5 + 32;
    v29 = MEMORY[0x277D84F90];
    while (v6 != v27)
    {
      if (v27 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      outlined init with copy of SignalProviding(v28, &v60);
      v30 = v61;
      v31 = v62;
      __swift_project_boxed_opaque_existential_1(&v60, v61);
      (*(v31 + 40))(v30, v31);
      if (v32)
      {

        __swift_destroy_boxed_opaque_existential_0(&v60);
      }

      else
      {
        outlined init with take of ActionProtocol(&v60, v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_11_8();
        }

        v33 = *(v29 + 24);
        if (*(v29 + 16) >= v33 >> 1)
        {
          OUTLINED_FUNCTION_13_9(v33);
        }

        __swift_mutable_project_boxed_opaque_existential_1(v59, v59[3]);
        OUTLINED_FUNCTION_2_3();
        v35 = *(v34 + 64);
        MEMORY[0x28223BE20](v36);
        OUTLINED_FUNCTION_3_0();
        v38 = OUTLINED_FUNCTION_9_9(v37);
        v39(v38);
        OUTLINED_FUNCTION_14_7();
        __swift_destroy_boxed_opaque_existential_0(v59);
      }

      v28 += 40;
      ++v27;
    }

    if (one-time initialization token for ranker == -1)
    {
      goto LABEL_27;
    }

LABEL_34:
    OUTLINED_FUNCTION_2_0();
    swift_once();
LABEL_27:
    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.ranker);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_15();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v60 = v44;
      *v43 = 136315138;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam14ActionProtocol_pMd, &_s7SiriCam14ActionProtocol_pMR);
      v46 = MEMORY[0x26D5DCE80](v29, v45);
      v48 = v47;

      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v60);

      *(v43 + 4) = v49;
      OUTLINED_FUNCTION_6_9(&dword_266790000, v50, v51, "DisambiguationSerialiser: could not serialize due to nil bundle (%s)");
      __swift_destroy_boxed_opaque_existential_0(v44);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0](v52);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0](v53);
    }

    else
    {
    }
  }

  v54 = *MEMORY[0x277D85DE8];
  v55 = OUTLINED_FUNCTION_17_6();
  result.value._object = v56;
  result.value._countAndFlagsBits = v55;
  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisambiguationSerialiser.serialiseActionRepresentations()()
{
  v56[5] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for String.Encoding();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v5 = *v0;
  v6 = *(*v0 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    v8 = MEMORY[0x277D84F90];
    v9 = *(*v0 + 16);
    do
    {
      outlined init with copy of SignalProviding(v7, v56);
      v10 = OUTLINED_FUNCTION_19_6();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_0(v56);
      if (v12)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = *(v8 + 16);
          OUTLINED_FUNCTION_0_1();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v8 = v16;
        }

        v13 = *(v8 + 16);
        if (v13 >= *(v8 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v8 = v17;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v12;
      }

      v7 += 40;
      --v9;
    }

    while (v9);
    v18 = *(v5 + 16);
  }

  else
  {
    v18 = 0;
    v8 = MEMORY[0x277D84F90];
  }

  if (*(v8 + 16) == v18)
  {
    v19 = objc_opt_self();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v56[0] = 0;
    v21 = [v19 dataWithJSONObject:isa options:0 error:v56];

    v22 = v56[0];
    if (v21)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      static String.Encoding.utf8.getter();
      OUTLINED_FUNCTION_11_7();
      String.init(data:encoding:)();
      v23 = OUTLINED_FUNCTION_11_7();
      outlined consume of Data._Representation(v23, v24);
    }

    else
    {
      v53 = v22;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {

    v25 = 0;
    v26 = v5 + 32;
    v27 = MEMORY[0x277D84F90];
    while (v6 != v25)
    {
      if (v25 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      outlined init with copy of SignalProviding(v26, v56);
      OUTLINED_FUNCTION_19_6();
      if (v28)
      {

        __swift_destroy_boxed_opaque_existential_0(v56);
      }

      else
      {
        outlined init with take of ActionProtocol(v56, v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_11_8();
        }

        v29 = *(v27 + 24);
        if (*(v27 + 16) >= v29 >> 1)
        {
          OUTLINED_FUNCTION_13_9(v29);
        }

        __swift_mutable_project_boxed_opaque_existential_1(v55, v55[3]);
        OUTLINED_FUNCTION_2_3();
        v31 = *(v30 + 64);
        MEMORY[0x28223BE20](v32);
        OUTLINED_FUNCTION_3_0();
        v34 = OUTLINED_FUNCTION_9_9(v33);
        v35(v34);
        OUTLINED_FUNCTION_14_7();
        __swift_destroy_boxed_opaque_existential_0(v55);
      }

      v26 += 40;
      ++v25;
    }

    if (one-time initialization token for ranker == -1)
    {
      goto LABEL_27;
    }

LABEL_34:
    OUTLINED_FUNCTION_2_0();
    swift_once();
LABEL_27:
    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.ranker);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      OUTLINED_FUNCTION_15();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v56[0] = v40;
      *v39 = 136315138;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam14ActionProtocol_pMd, &_s7SiriCam14ActionProtocol_pMR);
      v42 = MEMORY[0x26D5DCE80](v27, v41);
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v56);

      *(v39 + 4) = v45;
      OUTLINED_FUNCTION_6_9(&dword_266790000, v46, v47, "DisambiguationSerialiser: could not serialize due to nil repr (%s)");
      __swift_destroy_boxed_opaque_existential_0(v40);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0](v48);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0](v49);
    }

    else
    {
    }
  }

  v50 = *MEMORY[0x277D85DE8];
  v51 = OUTLINED_FUNCTION_17_6();
  result.value._object = v52;
  result.value._countAndFlagsBits = v51;
  return result;
}

SiriCam::DisambiguationSerialiser::DonationFields_optional __swiftcall DisambiguationSerialiser.DonationFields.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DisambiguationSerialiser.DonationFields.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t DisambiguationSerialiser.DonationFields.rawValue.getter()
{
  v1 = 0xD000000000000018;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DisambiguationSerialiser.DonationFields@<X0>(unint64_t *a1@<X8>)
{
  result = DisambiguationSerialiser.DonationFields.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SiriSignalsQueryManager.serialiseQueryFields(fields:selected:)(uint64_t a1, uint64_t a2)
{
  v11[2] = *v2;
  v11[3] = a2;
  v4 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in SiriSignalsQueryManager.serialiseQueryFields(fields:selected:), v11, a1);
  if (*(v4 + 16) == *(a1 + 16))
  {
    v11[4] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v5 = BidirectionalCollection<>.joined(separator:)();
  }

  else
  {

    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_2_0();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.ranker);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_266790000, v7, v8, "At least one of the query fields could not be serialised.", v9, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    return 0;
  }

  return v5;
}

uint64_t closure #1 in SiriSignalsQueryManager.serialiseQueryFields(fields:selected:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (!*a1)
  {
    v18[0] = a2;

    v10 = DisambiguationSerialiser.serialiseActionBundles()();
    object = v10.value._object;
    countAndFlagsBits = v10.value._countAndFlagsBits;
LABEL_5:
    v11 = countAndFlagsBits;
    v12 = object;

    if (v8)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (*a1 == 1)
  {
    v18[0] = a2;

    v9 = DisambiguationSerialiser.serialiseActionRepresentations()();
    object = v9.value._object;
    countAndFlagsBits = v9.value._countAndFlagsBits;
    goto LABEL_5;
  }

  outlined init with copy of ActionProtocol?(a3, v17);
  if (!v17[3])
  {
    result = outlined destroy of (CamLogOutput, CamModelMetadata)(v17, &_s7SiriCam14ActionProtocol_pSgMd, &_s7SiriCam14ActionProtocol_pSgMR);
    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  outlined init with take of ActionProtocol(v17, v18);
  v17[0] = a2;

  v14 = DisambiguationSerialiser.indexOfSelectedAction(selected:)(v18);
  if (v15)
  {

    v11 = 0;
    v12 = 0;
  }

  else
  {
    v17[0] = v14;
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v16;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v18);
LABEL_13:
  *a4 = v11;
  a4[1] = v12;
  return result;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam14ActionProtocol_pMd, &_s7SiriCam14ActionProtocol_pMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
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

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_142:
    v148 = *a1;
    if (!v148)
    {
      goto LABEL_184;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_144;
    }

    goto LABEL_178;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5++;
    v135 = v7;
    if (v5 >= v4)
    {
      goto LABEL_49;
    }

    v8 = *a3;
    outlined init with copy of SignalProviding(*a3 + 40 * v5, v145);
    outlined init with copy of SignalProviding(v8 + 40 * v7, v142);
    LODWORD(v148) = closure #1 in DisambiguationSerialiser.init(actions:)(v145, v142);
    if (v141)
    {
      __swift_destroy_boxed_opaque_existential_0(v142);
      __swift_destroy_boxed_opaque_existential_0(v145);
LABEL_152:

      return;
    }

    v133 = v6;
    __swift_destroy_boxed_opaque_existential_0(v142);
    __swift_destroy_boxed_opaque_existential_0(v145);
    v6 = 40 * v7;
    v9 = v8 + 40 * v7 + 80;
    v10 = v7 + 2;
    v138 = v4;
    while (1)
    {
      v11 = v10;
      if (v5 + 1 >= v4)
      {
        break;
      }

      outlined init with copy of SignalProviding(v9, v145);
      outlined init with copy of SignalProviding(v9 - 40, v142);
      v12 = v146;
      v13 = v147;
      __swift_project_boxed_opaque_existential_1(v145, v146);
      v14 = (*(v13 + 40))(v12, v13);
      if (v15)
      {
        v16 = v14;
        v17 = v15;
        v19 = v143;
        v18 = v144;
        __swift_project_boxed_opaque_existential_1(v142, v143);
        v20 = (*(v18 + 40))(v19, v18);
        if (!v21)
        {
          goto LABEL_31;
        }

        v22 = v16 == v20 && v17 == v21;
        if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v23 = v146;
          v24 = v147;
          __swift_project_boxed_opaque_existential_1(v145, v146);
          v25 = ActionProtocol.actionRepresentation.getter(v23, v24);
          v27 = v26;
          v28 = v143;
          v29 = v144;
          __swift_project_boxed_opaque_existential_1(v142, v143);
          v30 = ActionProtocol.actionRepresentation.getter(v28, v29);
          v32 = v31;
          if (v27)
          {
            if (v31)
            {
              if (v25 != v30 || v27 != v31)
              {
                goto LABEL_20;
              }

LABEL_31:

              v34 = 0;
LABEL_32:
              v4 = v138;
              goto LABEL_33;
            }
          }

          if (one-time initialization token for ranker != -1)
          {
            swift_once();
          }

          v35 = type metadata accessor for Logger();
          __swift_project_value_buffer(v35, static Logger.ranker);
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&dword_266790000, v36, v37, "DisambiguationSerialiser: at least 1 action has nil representation, this should not happen.", v38, 2u);
            MEMORY[0x26D5DDCD0](v38, -1, -1);
          }

          v34 = v32 == 0;
        }

        else
        {
LABEL_20:
          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_32;
      }

      v34 = 0;
LABEL_33:
      __swift_destroy_boxed_opaque_existential_0(v142);
      __swift_destroy_boxed_opaque_existential_0(v145);
      v9 += 40;
      ++v5;
      v10 = v11 + 1;
      if ((v148 ^ v34))
      {
        goto LABEL_36;
      }
    }

    v5 = v4;
LABEL_36:
    if ((v148 & 1) == 0)
    {
LABEL_47:
      v6 = v133;
      v7 = v135;
      goto LABEL_49;
    }

    v7 = v135;
    if (v5 < v135)
    {
      goto LABEL_177;
    }

    if (v135 < v5)
    {
      if (v4 >= v11)
      {
        v39 = v11;
      }

      else
      {
        v39 = v4;
      }

      v40 = 40 * v39 - 40;
      v41 = v5;
      do
      {
        if (v7 != --v41)
        {
          v42 = *a3;
          if (!*a3)
          {
            goto LABEL_182;
          }

          v43 = v42 + v6;
          v44 = v42 + v40;
          outlined init with take of ActionProtocol(v42 + v6, v145);
          v45 = *(v44 + 32);
          v46 = *(v44 + 16);
          *v43 = *v44;
          *(v43 + 16) = v46;
          *(v43 + 32) = v45;
          outlined init with take of ActionProtocol(v145, v44);
        }

        ++v7;
        v40 -= 40;
        v6 += 40;
      }

      while (v7 < v41);
      goto LABEL_47;
    }

    v6 = v133;
LABEL_49:
    v47 = a3[1];
    if (v5 < v47)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_174;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_90:
    if (v5 < v7)
    {
      goto LABEL_173;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v121 = *(v6 + 16);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v122;
    }

    v80 = *(v6 + 16);
    v81 = v80 + 1;
    if (v80 >= *(v6 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v123;
    }

    *(v6 + 16) = v81;
    v82 = v6 + 32;
    v83 = (v6 + 32 + 16 * v80);
    *v83 = v135;
    v83[1] = v5;
    v148 = *a1;
    if (!v148)
    {
      goto LABEL_183;
    }

    if (v80)
    {
      while (1)
      {
        v84 = v81 - 1;
        v85 = (v82 + 16 * (v81 - 1));
        v86 = (v6 + 16 * v81);
        if (v81 >= 4)
        {
          break;
        }

        if (v81 == 3)
        {
          v87 = *(v6 + 32);
          v88 = *(v6 + 40);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_110:
          if (v90)
          {
            goto LABEL_160;
          }

          v102 = *v86;
          v101 = v86[1];
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_163;
          }

          v106 = v85[1];
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_166;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_168;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v81 - 2;
            }

            goto LABEL_132;
          }

          goto LABEL_125;
        }

        if (v81 < 2)
        {
          goto LABEL_162;
        }

        v109 = *v86;
        v108 = v86[1];
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_125:
        if (v105)
        {
          goto LABEL_165;
        }

        v111 = *v85;
        v110 = v85[1];
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_167;
        }

        if (v112 < v104)
        {
          goto LABEL_139;
        }

LABEL_132:
        if (v84 - 1 >= v81)
        {
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
LABEL_160:
          __break(1u);
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
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
          goto LABEL_176;
        }

        if (!*a3)
        {
          goto LABEL_180;
        }

        v116 = v6;
        v117 = (v82 + 16 * (v84 - 1));
        v118 = *v117;
        v6 = v82 + 16 * v84;
        v119 = *(v6 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + 40 * *v117, *a3 + 40 * *v6, *a3 + 40 * v119, v148);
        if (v141)
        {
          goto LABEL_152;
        }

        if (v119 < v118)
        {
          goto LABEL_155;
        }

        v120 = *(v116 + 16);
        if (v84 > v120)
        {
          goto LABEL_156;
        }

        *v117 = v118;
        v117[1] = v119;
        if (v84 >= v120)
        {
          goto LABEL_157;
        }

        v81 = v120 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v6 + 16), v120 - 1 - v84, (v82 + 16 * v84));
        v6 = v116;
        *(v116 + 16) = v120 - 1;
        if (v120 <= 2)
        {
          goto LABEL_139;
        }
      }

      v91 = v82 + 16 * v81;
      v92 = *(v91 - 64);
      v93 = *(v91 - 56);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_158;
      }

      v96 = *(v91 - 48);
      v95 = *(v91 - 40);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_159;
      }

      v98 = v86[1];
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_161;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_164;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = v85[1];
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_172;
        }

        if (v89 < v115)
        {
          v84 = v81 - 2;
        }

        goto LABEL_132;
      }

      goto LABEL_110;
    }

LABEL_139:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_142;
    }
  }

  v48 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_175;
  }

  if (v48 >= v47)
  {
    v48 = a3[1];
  }

  if (v48 < v7)
  {
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
LABEL_144:
    v124 = v6;
    v125 = (v6 + 16);
    for (i = *(v6 + 16); ; *v125 = i)
    {
      v6 = i - 2;
      if (i < 2)
      {
        break;
      }

      if (!*a3)
      {
        goto LABEL_181;
      }

      v127 = (v124 + 16 * i);
      v128 = *v127;
      v129 = &v125[2 * i];
      v130 = *(v129 + 1);
      specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + 40 * *v127, *a3 + 40 * *v129, *a3 + 40 * v130, v148);
      if (v141)
      {
        break;
      }

      if (v130 < v128)
      {
        goto LABEL_169;
      }

      if (v6 >= *v125)
      {
        goto LABEL_170;
      }

      *v127 = v128;
      v127[1] = v130;
      v131 = *v125 - i;
      if (*v125 < i)
      {
        goto LABEL_171;
      }

      i = *v125 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v129 + 16, v131, v129);
    }

    goto LABEL_152;
  }

  if (v5 == v48)
  {
    goto LABEL_90;
  }

  v148 = *a3;
  v49 = v148 + 40 * v5;
  v50 = v7 - v5;
  v136 = v48;
  while (2)
  {
    v137 = v50;
    v139 = v49;
LABEL_59:
    outlined init with copy of SignalProviding(v49, v145);
    outlined init with copy of SignalProviding(v49 - 40, v142);
    v51 = v146;
    v52 = v147;
    __swift_project_boxed_opaque_existential_1(v145, v146);
    v53 = (*(v52 + 40))(v51, v52);
    if (!v54)
    {
      goto LABEL_87;
    }

    v55 = v53;
    v56 = v54;
    v57 = v143;
    v58 = v144;
    __swift_project_boxed_opaque_existential_1(v142, v143);
    v59 = (*(v58 + 40))(v57, v58);
    if (!v60)
    {
      goto LABEL_86;
    }

    v61 = v55 == v59 && v56 == v60;
    if (v61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v62 = v146;
      v63 = v147;
      __swift_project_boxed_opaque_existential_1(v145, v146);
      v64 = ActionProtocol.actionRepresentation.getter(v62, v63);
      v66 = v65;
      v67 = v143;
      v68 = v144;
      __swift_project_boxed_opaque_existential_1(v142, v143);
      v69 = ActionProtocol.actionRepresentation.getter(v67, v68);
      v71 = v70;
      if (v66)
      {
        if (v70)
        {
          if (v64 == v69 && v66 == v70)
          {

LABEL_86:

LABEL_87:
            __swift_destroy_boxed_opaque_existential_0(v142);
            __swift_destroy_boxed_opaque_existential_0(v145);
LABEL_88:
            ++v5;
            v49 = v139 + 40;
            v50 = v137 - 1;
            if (v5 == v136)
            {
              v5 = v136;
              v7 = v135;
              goto LABEL_90;
            }

            continue;
          }

          goto LABEL_72;
        }
      }

      if (one-time initialization token for ranker != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      __swift_project_value_buffer(v74, static Logger.ranker);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_266790000, v75, v76, "DisambiguationSerialiser: at least 1 action has nil representation, this should not happen.", v77, 2u);
        MEMORY[0x26D5DDCD0](v77, -1, -1);
      }

      v73 = v71 == 0;
    }

    else
    {
LABEL_72:
      v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    break;
  }

  __swift_destroy_boxed_opaque_existential_0(v142);
  __swift_destroy_boxed_opaque_existential_0(v145);
  if ((v73 & 1) == 0)
  {
    goto LABEL_88;
  }

  if (v148)
  {
    outlined init with take of ActionProtocol(v49, v145);
    v78 = *(v49 - 24);
    *v49 = *(v49 - 40);
    *(v49 + 16) = v78;
    *(v49 + 32) = *(v49 - 8);
    outlined init with take of ActionProtocol(v145, v49 - 40);
    v49 -= 40;
    if (__CFADD__(v50++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_59;
  }

  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 40;
  v10 = (a3 - a2) / 40;
  if (v9 < v10)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 40, a4);
    v11 = v5 + 40 * v9;
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v34 = v8;
        goto LABEL_30;
      }

      outlined init with copy of SignalProviding(v7, v45);
      outlined init with copy of SignalProviding(v5, v44);
      v13 = closure #1 in DisambiguationSerialiser.init(actions:)(v45, v44);
      if (v4)
      {
        __swift_destroy_boxed_opaque_existential_0(v44);
        __swift_destroy_boxed_opaque_existential_0(v45);
        v38 = (v11 - v5) / 40;
        v39 = v8 < v5 || v8 >= v5 + 40 * v38;
        if (v39 || v8 != v5)
        {
          v37 = 40 * v38;
          v34 = v8;
LABEL_42:
          v40 = v5;
LABEL_49:
          memmove(v34, v40, v37);
        }

        return 1;
      }

      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0(v44);
      __swift_destroy_boxed_opaque_existential_0(v45);
      if (!v14)
      {
        break;
      }

      v15 = v7;
      v16 = v8 == v7;
      v7 += 40;
      if (!v16)
      {
        goto LABEL_13;
      }

LABEL_14:
      v8 += 40;
    }

    v15 = v5;
    v16 = v8 == v5;
    v5 += 40;
    if (v16)
    {
      goto LABEL_14;
    }

LABEL_13:
    v17 = *v15;
    v18 = *(v15 + 16);
    *(v8 + 32) = *(v15 + 32);
    *v8 = v17;
    *(v8 + 16) = v18;
    goto LABEL_14;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 40, a4);
  v19 = v5 + 40 * v10;
  v20 = -v5;
  v43 = -v5;
LABEL_16:
  v46 = v7;
  v21 = v7 - 40;
  v6 -= 40;
  v22 = v19 - 40;
  for (i = v20 + v19; ; i -= 40)
  {
    v11 = v22 + 40;
    if (v22 + 40 <= v5 || v46 <= v8)
    {
      v34 = v46;
LABEL_30:
      v35 = (v11 - v5) / 40;
      v36 = v34 < v5 || v34 >= v5 + 40 * v35;
      if (v36 || v34 != v5)
      {
        v37 = 40 * v35;
        goto LABEL_42;
      }

      return 1;
    }

    v25 = v5;
    outlined init with copy of SignalProviding(v22, v45);
    v26 = v21;
    outlined init with copy of SignalProviding(v21, v44);
    v27 = closure #1 in DisambiguationSerialiser.init(actions:)(v45, v44);
    if (v4)
    {
      break;
    }

    v28 = v27;
    __swift_destroy_boxed_opaque_existential_0(v44);
    __swift_destroy_boxed_opaque_existential_0(v45);
    if (v28)
    {
      v19 = v22 + 40;
      v31 = v26;
      v7 = v26;
      v20 = v43;
      v5 = v25;
      if (v6 + 40 != v46)
      {
        v32 = *v31;
        v33 = *(v31 + 16);
        *(v6 + 32) = *(v31 + 32);
        *v6 = v32;
        *(v6 + 16) = v33;
        v7 = v31;
      }

      goto LABEL_16;
    }

    if (v11 != v6 + 40)
    {
      v29 = *v22;
      v30 = *(v22 + 16);
      *(v6 + 32) = *(v22 + 32);
      *v6 = v29;
      *(v6 + 16) = v30;
    }

    v6 -= 40;
    v22 -= 40;
    v21 = v26;
    v5 = v25;
  }

  __swift_destroy_boxed_opaque_existential_0(v44);
  __swift_destroy_boxed_opaque_existential_0(v45);
  v34 = v46;
  v41 = v46 < v25 || v46 >= v25 + 40 * (i / 40);
  if (v41 || v46 != v25)
  {
    v37 = 40 * (i / 40);
    v40 = v25;
    goto LABEL_49;
  }

  return 1;
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v12[3] = a4;
  v12[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of ActionProtocol(v12, v10 + 40 * a1 + 32);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t specialized static DisambiguationSerialiser.actionToStrRepresentation(action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v7 = OUTLINED_FUNCTION_14(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v76 - v10;
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_2_3();
  v77 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_0();
  v19 = v18 - v17;
  v20 = type metadata accessor for CamUSOParse(0);
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_0();
  v26 = v25 - v24;
  v27 = type metadata accessor for CamParse(0);
  v28 = OUTLINED_FUNCTION_0_2(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_0();
  v33 = (v32 - v31);
  OUTLINED_FUNCTION_2_3();
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_0();
  v39 = v38 - v37;
  v79 = v40;
  (*(v40 + 16))(v38 - v37, a1, a2);
  v41 = *(a3 + 16);
  v78 = v39;
  v80 = a2;
  v41(a2, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v48 = v77;
    outlined init with take of CamUSOParse(v33, v26, type metadata accessor for CamUSOParse);
    v49 = CamUSOParse.appShortcutInvocation.getter();
    if (v52)
    {
      v53 = v50;
      v54 = v51;
      strcpy(v81, "appshortcuts:");
      HIWORD(v81[1]) = -4864;

      MEMORY[0x26D5DCD80](v53, v54);
      swift_bridgeObjectRelease_n();

      v47 = v81[0];
LABEL_6:
      OUTLINED_FUNCTION_0_7();
      outlined destroy of CamParse(v26, v55);
      goto LABEL_26;
    }

    v62 = MEMORY[0x26D5DC620](v49);
    specialized Collection.first.getter(v62);

    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v11, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    }

    else
    {
      (*(v48 + 32))(v19, v11, v12);
      v63 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
      if (specialized Array.count.getter(v63) == 1 && specialized Array.count.getter(v63))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v63 & 0xC000000000000001) == 0, v63);
        if ((v63 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D5DD230](0, v63);
        }

        else
        {
          v64 = *(v63 + 32);
        }

        v81[0] = 0x3A34766C6ELL;
        v81[1] = 0xE500000000000000;
        v65 = UsoTask.verbString.getter();
        MEMORY[0x26D5DCD80](v65);

        MEMORY[0x26D5DCD80](14906, 0xE200000000000000);
        v66 = UsoTask.baseEntityAsString.getter();
        MEMORY[0x26D5DCD80](v66);

        v47 = v81[0];
        v67 = OUTLINED_FUNCTION_8_9();
        v68(v67);
        goto LABEL_6;
      }

      v69 = OUTLINED_FUNCTION_8_9();
      v70(v69);
    }

    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_2_0();
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static Logger.ranker);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_266790000, v72, v73, "Couldn't convert UserDialogAct to UsoTask.", v74, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    OUTLINED_FUNCTION_0_7();
    v61 = v26;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_2_0();
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.ranker);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_266790000, v57, v58, "Couldn't represent action as string, not NLv4 parse & not an app shortcut.", v59, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    v60 = type metadata accessor for CamParse;
    v61 = v33;
LABEL_25:
    outlined destroy of CamParse(v61, v60);
    v47 = 0;
    goto LABEL_26;
  }

  v43 = *v33;
  v81[0] = dispatch thunk of PommesResponse.primaryCatIds()();

  specialized MutableCollection<>.sort(by:)(v81, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v44 = BidirectionalCollection<>.joined(separator:)();
  v46 = v45;

  strcpy(v81, "pommes:");
  v81[1] = 0xE700000000000000;
  MEMORY[0x26D5DCD80](v44, v46);

  v47 = v81[0];
LABEL_26:
  (*(v79 + 8))(v78, v80);
  return v47;
}

unint64_t lazy protocol witness table accessor for type DisambiguationSerialiser.DonationFields and conformance DisambiguationSerialiser.DonationFields()
{
  result = lazy protocol witness table cache variable for type DisambiguationSerialiser.DonationFields and conformance DisambiguationSerialiser.DonationFields;
  if (!lazy protocol witness table cache variable for type DisambiguationSerialiser.DonationFields and conformance DisambiguationSerialiser.DonationFields)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationSerialiser.DonationFields and conformance DisambiguationSerialiser.DonationFields);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DisambiguationSerialiser.DonationFields(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t outlined init with copy of ActionProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam14ActionProtocol_pSgMd, &_s7SiriCam14ActionProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of CamUSOParse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for DisambiguationSerialiser(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DisambiguationSerialiser(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v2, v3, (v4 - 176), v0, v1);
}

uint64_t OUTLINED_FUNCTION_19_6()
{
  v1 = *(v0 - 104);
  v2 = *(v0 - 96);
  v3 = __swift_project_boxed_opaque_existential_1((v0 - 128), v1);

  return specialized static DisambiguationSerialiser.actionToStrRepresentation(action:)(v3, v1, v2);
}

uint64_t type metadata accessor for UserHistoryTieBreaker()
{
  result = type metadata singleton initialization cache for UserHistoryTieBreaker;
  if (!type metadata singleton initialization cache for UserHistoryTieBreaker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for UserHistoryTieBreaker()
{
  result = type metadata accessor for RankedAction();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for mockFeatures()
{
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo14MLFeatureValueCGMd, &_sSDySSSo14MLFeatureValueCGMR);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  result = Dictionary.init(dictionaryLiteral:)();
  static UserHistoryTieBreaker.mockFeatures = result;
  return result;
}

uint64_t UserHistoryTieBreaker.enabled.getter()
{
  OUTLINED_FUNCTION_9_2();
  v0 = static TrialProvider.fetchBoolFactorFromTrial(_:)();
  if (v0 == 2 || (v0 & 1) == 0)
  {
    return 0;
  }

  return CamFeatureFlag.isEnabled.getter(5u);
}

uint64_t UserHistoryTieBreaker.init(tie:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UserHistoryTieBreaker();
  *(a2 + v4[6]) = 0x3FB70A3D70A3D70ALL;
  *(a2 + v4[7]) = 3600;
  *(a2 + v4[8]) = 600;
  *(a2 + v4[9]) = 900;
  *(a2 + v4[10]) = 300;
  *(a2 + v4[11]) = 4;
  *(a2 + v4[12]) = 0x3FECCCCCCCCCCCCDLL;
  *(a2 + v4[13]) = 6;
  *(a2 + v4[14]) = 0x3FECCCCCCCCCCCCDLL;
  _s7SiriCam0B8USOParseVWObTm_0(a1, a2);
  v5 = type metadata accessor for TopTwo();
  return _s7SiriCam0B8USOParseVWObTm_0(a1 + *(v5 + 20), a2 + v4[5]);
}

uint64_t UserHistoryTieBreaker.actionBoost(features:loggingId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (one-time initialization token for mockFeatures != -1)
  {
    swift_once();
  }

  if (*(static UserHistoryTieBreaker.mockFeatures + 16))
  {

    Dictionary<>.mock(with:for:)(v8, a2, a1);
    a1 = v9;
  }

  else
  {
  }

  if (UserHistoryTieBreaker.rule_ForegroundedAppShortcut(_:)(a1))
  {

    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v10, static Logger.ranker);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_10(v12))
    {
      v13 = OUTLINED_FUNCTION_23_5();
      OUTLINED_FUNCTION_13_10(v13);
      OUTLINED_FUNCTION_3_11(&dword_266790000, v14, v15, "[UserHistoryHeuristic] ForegroundedAppShortcut rule match.");
      OUTLINED_FUNCTION_2_4();
    }

    v16 = *(v4 + *(type metadata accessor for UserHistoryTieBreaker() + 24));
    OUTLINED_FUNCTION_30_3();
    v18 = v17 - 5;
    goto LABEL_38;
  }

  v19 = OUTLINED_FUNCTION_16_5();
  if (UserHistoryTieBreaker.rule_RecentDisambiguationSameActions(_:)(v19))
  {

    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v20, static Logger.ranker);
    v11 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_10(v21))
    {
      v22 = OUTLINED_FUNCTION_23_5();
      OUTLINED_FUNCTION_13_10(v22);
      OUTLINED_FUNCTION_3_11(&dword_266790000, v23, v24, "[UserHistoryHeuristic] RecentDisambiguationSameActions rule match.");
      OUTLINED_FUNCTION_2_4();
    }

    v25 = type metadata accessor for UserHistoryTieBreaker();
    v16 = OUTLINED_FUNCTION_15_7(v25) + -0.01;
LABEL_18:
    OUTLINED_FUNCTION_30_3();
    v18 = v26 | 3;
    goto LABEL_38;
  }

  v27 = OUTLINED_FUNCTION_16_5();
  if (UserHistoryTieBreaker.rule_RecentDisambiguationSameApps(_:)(v27))
  {

    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v28 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v28, static Logger.ranker);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_10(v30))
    {
      v31 = OUTLINED_FUNCTION_23_5();
      OUTLINED_FUNCTION_13_10(v31);
      OUTLINED_FUNCTION_3_11(&dword_266790000, v32, v33, "[UserHistoryHeuristic] RecentDisambiguationSameApps rule match.");
      OUTLINED_FUNCTION_2_4();
    }

    v18 = 0xD00000000000001CLL;

    v34 = type metadata accessor for UserHistoryTieBreaker();
    v16 = OUTLINED_FUNCTION_15_7(v34) + -0.02;
    v35 = "RecentDisambiguationSameApps";
LABEL_25:
    v11 = ((v35 - 32) | 0x8000000000000000);
    goto LABEL_38;
  }

  v36 = OUTLINED_FUNCTION_16_5();
  if (UserHistoryTieBreaker.rule_RecentInstall(_:)(v36))
  {

    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v37 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v37, static Logger.ranker);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_10(v39))
    {
      v40 = OUTLINED_FUNCTION_23_5();
      OUTLINED_FUNCTION_13_10(v40);
      OUTLINED_FUNCTION_3_11(&dword_266790000, v41, v42, "[UserHistoryHeuristic] RecentInstall rule match.");
      OUTLINED_FUNCTION_2_4();
    }

    v43 = type metadata accessor for UserHistoryTieBreaker();
    v16 = OUTLINED_FUNCTION_15_7(v43) + -0.03;
    v11 = 0xED00006C6C617473;
    v18 = 0x6E49746E65636552;
  }

  else
  {
    v44 = OUTLINED_FUNCTION_16_5();
    if (UserHistoryTieBreaker.rule_RecentLaunch(_:)(v44))
    {

      if (one-time initialization token for ranker != -1)
      {
        OUTLINED_FUNCTION_1();
      }

      v45 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v45, static Logger.ranker);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_10(v47))
      {
        v48 = OUTLINED_FUNCTION_23_5();
        OUTLINED_FUNCTION_13_10(v48);
        OUTLINED_FUNCTION_3_11(&dword_266790000, v49, v50, "[UserHistoryHeuristic] RecentLaunch rule match.");
        OUTLINED_FUNCTION_2_4();
      }

      v51 = type metadata accessor for UserHistoryTieBreaker();
      v16 = OUTLINED_FUNCTION_15_7(v51) + -0.04;
      v11 = 0xEC00000068636E75;
      v18 = 0x614C746E65636552;
    }

    else
    {
      v56 = OUTLINED_FUNCTION_16_5();
      if (UserHistoryTieBreaker.rule_HistoricalPreferenceSameActions(_:)(v56))
      {

        if (one-time initialization token for ranker != -1)
        {
          OUTLINED_FUNCTION_1();
        }

        v57 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_26(v57, static Logger.ranker);
        v11 = Logger.logObject.getter();
        v58 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_8_10(v58))
        {
          v59 = OUTLINED_FUNCTION_23_5();
          OUTLINED_FUNCTION_13_10(v59);
          OUTLINED_FUNCTION_3_11(&dword_266790000, v60, v61, "[UserHistoryHeuristic] HistoricalPreferenceSameActions rule match.");
          OUTLINED_FUNCTION_2_4();
        }

        v62 = type metadata accessor for UserHistoryTieBreaker();
        v16 = OUTLINED_FUNCTION_15_7(v62) + -0.05;
        goto LABEL_18;
      }

      v63 = OUTLINED_FUNCTION_16_5();
      v64 = UserHistoryTieBreaker.rule_HistoricalPreferenceSameApps(_:)(v63);

      if (v64)
      {
        if (one-time initialization token for ranker != -1)
        {
          OUTLINED_FUNCTION_1();
        }

        v65 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_26(v65, static Logger.ranker);
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_8_10(v67))
        {
          v68 = OUTLINED_FUNCTION_23_5();
          OUTLINED_FUNCTION_13_10(v68);
          OUTLINED_FUNCTION_3_11(&dword_266790000, v69, v70, "[UserHistoryHeuristic] HistoricalPreferenceSameApps rule match.");
          OUTLINED_FUNCTION_2_4();
        }

        v18 = 0xD00000000000001CLL;

        v71 = type metadata accessor for UserHistoryTieBreaker();
        v16 = OUTLINED_FUNCTION_15_7(v71) + -0.06;
        v35 = "HistoricalPreferenceSameApps";
        goto LABEL_25;
      }

      if (one-time initialization token for ranker != -1)
      {
        OUTLINED_FUNCTION_1();
      }

      v72 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v72, static Logger.ranker);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = OUTLINED_FUNCTION_23_5();
        *v75 = 0;
        _os_log_impl(&dword_266790000, v73, v74, "[UserHistoryHeuristic] No rule matched.", v75, 2u);
        MEMORY[0x26D5DDCD0](v75, -1, -1);
      }

      v11 = 0xE700000000000000;
      v18 = 0x686374614D6F4ELL;
      v16 = 0.0;
    }
  }

LABEL_38:
  v52 = *(type metadata accessor for ScoreBoost() + 24);
  v53 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_2(v53);
  result = (*(v54 + 16))(a3 + v52, a2);
  *a3 = v16;
  *(a3 + 8) = v18;
  *(a3 + 16) = v11;
  return result;
}

Swift::Bool __swiftcall UserHistoryTieBreaker.supportedTie()()
{
  v62 = type metadata accessor for UserHistoryTieBreaker();
  v2 = OUTLINED_FUNCTION_0_2(v62);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v60 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v59 = &v59 - v8;
  v9 = type metadata accessor for CamUSOParse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_4();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  v17 = type metadata accessor for CamParse(0);
  v18 = OUTLINED_FUNCTION_0_2(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4();
  v23 = v21 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v59 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v59 - v28;
  v63 = type metadata accessor for RankedAction();
  v64 = v0;
  v30 = *(v63 + 20);
  OUTLINED_FUNCTION_1_14();
  v61 = v31;
  _s7SiriCam0B5ParseOWOcTm_0(v0 + v31, v29);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_2_11();
    _s7SiriCam0B5ParseOWOhTm_1(v29, v32);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
    _s7SiriCam0B8USOParseVWObTm_0(v29, v16);
    CamUSOParse.appShortcutInvocation.getter();
    OUTLINED_FUNCTION_6_11();
    _s7SiriCam0B5ParseOWOhTm_1(v16, v44);
    if (v1)
    {
      v33 = v63;
      goto LABEL_14;
    }
  }

  v33 = v63;
  v34 = v64 + *(v62 + 20);
  v35 = *(v63 + 20);
  OUTLINED_FUNCTION_1_14();
  _s7SiriCam0B5ParseOWOcTm_0(v36 + v37, v27);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_2_11();
    _s7SiriCam0B5ParseOWOhTm_1(v27, v38);
LABEL_5:
    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v39 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v39, static Logger.ranker);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_23_5();
      *v42 = 0;
      _os_log_impl(&dword_266790000, v40, v41, "[UserHistoryHeuristic] Only tie breaking app shortcut ambiguity.", v42, 2u);
      MEMORY[0x26D5DDCD0](v42, -1, -1);
    }

    return 0;
  }

  OUTLINED_FUNCTION_7_8();
  _s7SiriCam0B8USOParseVWObTm_0(v27, v13);
  CamUSOParse.appShortcutInvocation.getter();
  OUTLINED_FUNCTION_6_11();
  _s7SiriCam0B5ParseOWOhTm_1(v13, v45);
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_14:
  outlined consume of AppShortcutInvocation?(v29, v1);
  OUTLINED_FUNCTION_1_14();
  v46 = v64;
  _s7SiriCam0B5ParseOWOcTm_0(v64 + v61, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_2_11();
  _s7SiriCam0B5ParseOWOhTm_1(v23, v48);
  if (EnumCaseMultiPayload != 1)
  {
    v49 = v62;
    if (vabdd_f64(*(v46 + *(v33 + 28)), *(v46 + *(v33 + 28) + *(v62 + 20))) >= 0.01)
    {
      if (one-time initialization token for ranker != -1)
      {
        OUTLINED_FUNCTION_1();
      }

      v50 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v50, static Logger.ranker);
      v51 = v59;
      _s7SiriCam0B5ParseOWOcTm_0(v46, v59);
      v52 = v60;
      _s7SiriCam0B5ParseOWOcTm_0(v46, v60);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 134218240;
        v56 = v63;
        v57 = *(v51 + *(v63 + 28));
        _s7SiriCam0B5ParseOWOhTm_1(v51, type metadata accessor for UserHistoryTieBreaker);
        *(v55 + 4) = v57;
        *(v55 + 12) = 2048;
        v58 = *(v52 + *(v49 + 20) + *(v56 + 28));
        _s7SiriCam0B5ParseOWOhTm_1(v52, type metadata accessor for UserHistoryTieBreaker);
        *(v55 + 14) = v58;
        _os_log_impl(&dword_266790000, v53, v54, "[UserHistoryHeuristic] Scores not ambiguous: top = %f, second = %f.", v55, 0x16u);
        MEMORY[0x26D5DDCD0](v55, -1, -1);
      }

      else
      {

        _s7SiriCam0B5ParseOWOhTm_1(v52, type metadata accessor for UserHistoryTieBreaker);
        _s7SiriCam0B5ParseOWOhTm_1(v51, type metadata accessor for UserHistoryTieBreaker);
      }

      return 0;
    }
  }

  return 1;
}

Swift::Bool __swiftcall UserHistoryTieBreaker.rule_ForegroundedAppShortcut(_:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    v1 = OUTLINED_FUNCTION_12_11();
    if (v2)
    {
      v3 = [OUTLINED_FUNCTION_27_1(v1) int64Value];
      if (v3)
      {
        OUTLINED_FUNCTION_9_2();
        v3 = OUTLINED_FUNCTION_32_2(19, v4);
        if (v3)
        {
          v5 = v3;
          v6 = [v3 int64Value];

          LOBYTE(v3) = v6 != 0;
        }
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

Swift::Bool __swiftcall UserHistoryTieBreaker.rule_RecentDisambiguationSameActions(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    goto LABEL_6;
  }

  v1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000031, 0x8000000266819BD0);
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = [OUTLINED_FUNCTION_27_1(v1) int64Value];
  OUTLINED_FUNCTION_9_2();
  v5 = OUTLINED_FUNCTION_32_2(45, v4);
  if (v5)
  {
    v6 = v5;
    [v5 int64Value];

    if (v3)
    {
      v7 = type metadata accessor for UserHistoryTieBreaker();
      LOBYTE(v5) = OUTLINED_FUNCTION_22_4(*(v7 + 28));
      return v5;
    }

LABEL_6:
    LOBYTE(v5) = 0;
  }

  return v5;
}

Swift::Bool __swiftcall UserHistoryTieBreaker.rule_RecentDisambiguationSameApps(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    goto LABEL_6;
  }

  v1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002ELL, 0x8000000266819B40);
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = [OUTLINED_FUNCTION_27_1(v1) int64Value];
  OUTLINED_FUNCTION_9_2();
  v5 = OUTLINED_FUNCTION_32_2(42, v4);
  if (v5)
  {
    v6 = v5;
    [v5 int64Value];

    if (v3)
    {
      v7 = type metadata accessor for UserHistoryTieBreaker();
      LOBYTE(v5) = OUTLINED_FUNCTION_22_4(*(v7 + 32));
      return v5;
    }

LABEL_6:
    LOBYTE(v5) = 0;
  }

  return v5;
}

Swift::Bool __swiftcall UserHistoryTieBreaker.rule_RecentInstall(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_2();
  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, v1);
  if ((v3 & 1) == 0 || [OUTLINED_FUNCTION_27_1(v2) int64Value] < 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for UserHistoryTieBreaker();
  return OUTLINED_FUNCTION_22_4(*(v4 + 36));
}

Swift::Bool __swiftcall UserHistoryTieBreaker.rule_RecentLaunch(_:)(Swift::OpaquePointer a1)
{
  result = 0;
  if (*(a1._rawValue + 2))
  {
    v2 = v1;
    v3 = OUTLINED_FUNCTION_12_11();
    if (v4)
    {
      if ([OUTLINED_FUNCTION_27_1(v3) int64Value])
      {
        OUTLINED_FUNCTION_9_2();
        v6 = OUTLINED_FUNCTION_32_2(26, v5);
        if (v6)
        {
          v7 = v6;
          v8 = [v6 int64Value];

          if (v8 >= 1 && v8 < *(v2 + *(type metadata accessor for UserHistoryTieBreaker() + 40)))
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall UserHistoryTieBreaker.rule_HistoricalPreferenceSameActions(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  if (one-time initialization token for FRAC_SELECTED_ACTION_DISAMBIGUATION_FREQ != -1)
  {
LABEL_43:
    swift_once();
  }

  v2 = 0;
  v3 = static CAARFeatures.FRAC_SELECTED_ACTION_DISAMBIGUATION_FREQ;
  v4 = *(static CAARFeatures.FRAC_SELECTED_ACTION_DISAMBIGUATION_FREQ + 16);
  OUTLINED_FUNCTION_29_3();
  v67 = v13;
LABEL_3:
  v14 = &v13[16 * v2];
  while (v4 != v2)
  {
    if (v2 >= *(v3 + 16))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v70 = *(v14 - 1);
    v72 = *v14;
    OUTLINED_FUNCTION_17_7();

    if (OUTLINED_FUNCTION_2_9())
    {
      if ((OUTLINED_FUNCTION_31_2() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v16 = *(v1 + 16);
      v15 = *(v1 + 24);
      if (v16 >= v15 >> 1)
      {
        v17 = OUTLINED_FUNCTION_11_9(v15);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17, v16 + 1, 1);
      }

      OUTLINED_FUNCTION_14_8();
      goto LABEL_3;
    }

    v14 += 16;
    ++v2;
  }

  OUTLINED_FUNCTION_10_10(v5, v6, v7, v8, v9, v10, v11, v12, v57, v60, rawValue, v67, v69);
  if (!v18)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_33_0();

  v27 = OUTLINED_FUNCTION_20_6(v19, v20, v21, v22, v23, v24, v25, v26, v58, v61, v65);

  if (!v27)
  {
    return 0;
  }

  if (one-time initialization token for ACTION_DISAMBIGUATION_FREQ != -1)
  {
    swift_once();
  }

  v28 = 0;
  v29 = *(static CAARFeatures.ACTION_DISAMBIGUATION_FREQ + 16);
  OUTLINED_FUNCTION_29_3();
  v57 = v38;
LABEL_19:
  v39 = (v38 + 16 * v28);
  while (v29 != v28)
  {
    if (v28 >= v29)
    {
      goto LABEL_41;
    }

    if (__OFADD__(v28, 1))
    {
      goto LABEL_42;
    }

    v71 = *(v39 - 1);
    v73 = *v39;
    OUTLINED_FUNCTION_17_7();

    if (OUTLINED_FUNCTION_25_4())
    {
      if ((OUTLINED_FUNCTION_31_2() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v28 = *(v1 + 16);
      v40 = *(v1 + 24);
      if (v28 >= v40 >> 1)
      {
        v41 = OUTLINED_FUNCTION_11_9(v40);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v41, v28 + 1, 1);
      }

      OUTLINED_FUNCTION_18_6();
      goto LABEL_19;
    }

    ++v28;
    v39 += 2;
  }

  OUTLINED_FUNCTION_10_10(v30, v31, v32, v33, v34, v35, v36, v37, v57, v60, rawValue, v27, v69);
  if (!v18)
  {

LABEL_35:

    return 0;
  }

  OUTLINED_FUNCTION_33_0();

  v50 = OUTLINED_FUNCTION_20_6(v42, v43, v44, v45, v46, v47, v48, v49, v59, v62, v66);

  if (!v50)
  {

    return 0;
  }

  [v68 doubleValue];
  v52 = v51;
  v53 = type metadata accessor for UserHistoryTieBreaker();
  if (*(v63 + *(v53 + 48)) > v52)
  {

    return 0;
  }

  v55 = v53;
  v56 = [v50 int64Value];

  return v56 >= *(v63 + *(v55 + 44));
}

Swift::Bool __swiftcall UserHistoryTieBreaker.rule_HistoricalPreferenceSameApps(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  if (one-time initialization token for FRAC_SELECTED_APP_DISAMBIGUATION_FREQ != -1)
  {
LABEL_43:
    swift_once();
  }

  v2 = 0;
  v3 = static CAARFeatures.FRAC_SELECTED_APP_DISAMBIGUATION_FREQ;
  v4 = *(static CAARFeatures.FRAC_SELECTED_APP_DISAMBIGUATION_FREQ + 16);
  OUTLINED_FUNCTION_29_3();
  v67 = v13;
LABEL_3:
  v14 = &v13[16 * v2];
  while (v4 != v2)
  {
    if (v2 >= *(v3 + 16))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v70 = *(v14 - 1);
    v72 = *v14;
    OUTLINED_FUNCTION_17_7();

    if (OUTLINED_FUNCTION_2_9())
    {
      if ((OUTLINED_FUNCTION_31_2() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v16 = *(v1 + 16);
      v15 = *(v1 + 24);
      if (v16 >= v15 >> 1)
      {
        v17 = OUTLINED_FUNCTION_11_9(v15);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17, v16 + 1, 1);
      }

      OUTLINED_FUNCTION_14_8();
      goto LABEL_3;
    }

    v14 += 16;
    ++v2;
  }

  OUTLINED_FUNCTION_10_10(v5, v6, v7, v8, v9, v10, v11, v12, v57, v60, rawValue, v67, v69);
  if (!v18)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_33_0();

  v27 = OUTLINED_FUNCTION_20_6(v19, v20, v21, v22, v23, v24, v25, v26, v58, v61, v65);

  if (!v27)
  {
    return 0;
  }

  if (one-time initialization token for APP_DISAMBIGUATION_FREQ != -1)
  {
    swift_once();
  }

  v28 = 0;
  v29 = *(static CAARFeatures.APP_DISAMBIGUATION_FREQ + 16);
  OUTLINED_FUNCTION_29_3();
  v57 = v38;
LABEL_19:
  v39 = (v38 + 16 * v28);
  while (v29 != v28)
  {
    if (v28 >= v29)
    {
      goto LABEL_41;
    }

    if (__OFADD__(v28, 1))
    {
      goto LABEL_42;
    }

    v71 = *(v39 - 1);
    v73 = *v39;
    OUTLINED_FUNCTION_17_7();

    if (OUTLINED_FUNCTION_25_4())
    {
      if ((OUTLINED_FUNCTION_31_2() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v28 = *(v1 + 16);
      v40 = *(v1 + 24);
      if (v28 >= v40 >> 1)
      {
        v41 = OUTLINED_FUNCTION_11_9(v40);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v41, v28 + 1, 1);
      }

      OUTLINED_FUNCTION_18_6();
      goto LABEL_19;
    }

    ++v28;
    v39 += 2;
  }

  OUTLINED_FUNCTION_10_10(v30, v31, v32, v33, v34, v35, v36, v37, v57, v60, rawValue, v27, v69);
  if (!v18)
  {

LABEL_35:

    return 0;
  }

  OUTLINED_FUNCTION_33_0();

  v50 = OUTLINED_FUNCTION_20_6(v42, v43, v44, v45, v46, v47, v48, v49, v59, v62, v66);

  if (!v50)
  {

    return 0;
  }

  [v68 doubleValue];
  v52 = v51;
  v53 = type metadata accessor for UserHistoryTieBreaker();
  if (*(v63 + *(v53 + 56)) > v52)
  {

    return 0;
  }

  v55 = v53;
  v56 = [v50 int64Value];

  return v56 >= *(v63 + *(v55 + 52));
}

uint64_t outlined consume of AppShortcutInvocation?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t _s7SiriCam0B5ParseOWOcTm_0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_28();
  v6 = v5(v4);
  OUTLINED_FUNCTION_0_2(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t _s7SiriCam0B5ParseOWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s7SiriCam0B8USOParseVWObTm_0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_28();
  v6 = v5(v4);
  OUTLINED_FUNCTION_0_2(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

void OUTLINED_FUNCTION_14_8()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_18_6()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return StringProtocol.contains<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_31_2()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_32_2(uint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return specialized Dictionary.subscript.getter(v4, a2, v2);
}

uint64_t RankedActionFeatureExtractor.extractImpl(from:)(uint64_t a1)
{
  if (*(a1 + 16) < 2uLL)
  {
    lazy protocol witness table accessor for type CamError and conformance CamError();
    swift_allocError();
    *v18 = 0xD000000000000044;
    *(v18 + 8) = 0x800000026681B0F0;
    *(v18 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v2 = type metadata accessor for RankedAction();
    v4 = *(v2 - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = v5 + *(v2 + 20);
    v7 = 1.0;
    if (!CamParse.isAppShortcutParse()())
    {
      v8 = v5 + *(v4 + 72) + *(v2 + 20);
      if (CamParse.isAppShortcutParse()())
      {
        v7 = 1.0;
      }

      else
      {
        v7 = 0.0;
      }
    }

    if (one-time initialization token for ambiguityHandling != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.ambiguityHandling);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_266790000, v10, v11, "Extracting features from ranked actions", v12, 2u);
      MEMORY[0x26D5DDCD0](v12, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266813C70;
    *(inited + 32) = 0xD000000000000024;
    *(inited + 40) = 0x8000000266819C10;
    type metadata accessor for MLMultiArray();
    v14 = (v5 + *(v2 + 28));
    v15 = *(v14 + *(v4 + 72));
    v16 = static MLMultiArray.makeScalar(from:)(*v14 - v15);
    if (v1)
    {
      v17 = *(inited + 40);

      *(inited + 16) = 0;
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
    }

    else
    {
      *(inited + 48) = v16;
      *(inited + 56) = 0xD00000000000001CLL;
      *(inited + 64) = 0x8000000266819C40;
      *(inited + 72) = static MLMultiArray.makeScalar(from:)(v15);
      *(inited + 80) = 0xD00000000000001DLL;
      *(inited + 88) = 0x8000000266819C60;
      *(inited + 96) = static MLMultiArray.makeScalar(from:)(v7);
      v2 = Dictionary.init(dictionaryLiteral:)();

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v29 = v24;
        *v23 = 136315138;

        v25 = Dictionary.Keys.description.getter();
        v27 = v26;

        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v29);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_266790000, v20, v21, "Extracted ranked action features: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x26D5DDCD0](v24, -1, -1);
        MEMORY[0x26D5DDCD0](v23, -1, -1);
      }
    }
  }

  return v2;
}

uint64_t type metadata accessor for TrialOverridesTieBreaker()
{
  result = type metadata singleton initialization cache for TrialOverridesTieBreaker;
  if (!type metadata singleton initialization cache for TrialOverridesTieBreaker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TrialOverridesTieBreaker()
{
  type metadata accessor for RankedAction?();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for RankedAction?()
{
  if (!lazy cache variable for type metadata for RankedAction?)
  {
    type metadata accessor for RankedAction();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RankedAction?);
    }
  }
}

uint64_t TrialOverridesTieBreaker.forcedDisambiguation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v4);
  v6 = (&v20 - v5);
  v7 = type metadata accessor for TrialOverridesTieBreaker();
  outlined init with copy of (CamLogOutput, CamModelMetadata)(v0 + *(v7 + 20), v6, &_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  v8 = type metadata accessor for RankedAction();
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v6, &_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
    return 4;
  }

  v10 = *v6;
  v9 = v6[1];

  OUTLINED_FUNCTION_1_15();
  _s7SiriCam12RankedActionVWOhTm_0(v6, v11);
  if (v10 == 0xD000000000000021 && 0x8000000266819930 == v9)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
LABEL_13:
      if (one-time initialization token for ranker != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.ranker);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_266790000, v16, v17, "[TrialOverridesTieBreaker] This override will not be forced disambiguated.", v18, 2u);
        MEMORY[0x26D5DDCD0](v18, -1, -1);
      }

      return 4;
    }
  }

  v14 = static TrialProvider.fetchBoolFactorFromTrial(_:)();
  if (v14 != 2 && (v14 & 1) != 0 && (CamFeatureFlag.isEnabled.getter(5u) & 1) != 0)
  {
    goto LABEL_13;
  }

  return 0;
}

uint64_t TrialOverridesTieBreaker.init(tie:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_12();
  v9 = type metadata accessor for RankedAction();
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 1;
  v15 = static TrialProvider.tieBreakingOverrides.getter();
  if (v15)
  {
    Array<A>.getFavouredAction(tie:)(a1, v15, v2);

    OUTLINED_FUNCTION_2_12();
    if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v2, &_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
      v16 = &a2[*(type metadata accessor for TrialOverridesTieBreaker() + 20)];
      v17 = 1;
    }

    else
    {
      outlined init with take of RankedAction(v2, v14);
      v20 = *(type metadata accessor for TrialOverridesTieBreaker() + 20);
      outlined init with take of RankedAction(v14, &a2[v20]);
      v16 = &a2[v20];
      v17 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v9);
  }

  else
  {
    OUTLINED_FUNCTION_2_12();
    v18 = &a2[*(type metadata accessor for TrialOverridesTieBreaker() + 20)];

    return __swift_storeEnumTagSinglePayload(v18, 1, 1, v9);
  }
}

Swift::Bool __swiftcall TrialOverridesTieBreaker.supportedTie()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_12();
  v6 = type metadata accessor for TrialOverridesTieBreaker();
  outlined init with copy of (CamLogOutput, CamModelMetadata)(v0 + *(v6 + 20), v1, &_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  v7 = type metadata accessor for RankedAction();
  v8 = __swift_getEnumTagSinglePayload(v1, 1, v7) != 1;
  outlined destroy of (CamLogOutput, CamModelMetadata)(v1, &_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  return v8;
}

uint64_t TrialOverridesTieBreaker.actionBoost(features:loggingId:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, _s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_0_2(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_12();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  OUTLINED_FUNCTION_14(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v47[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v50 = &v47[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v47[-v25];
  MEMORY[0x28223BE20](v24);
  v28 = &v47[-v27];
  v51 = v5;
  v29 = *(v5 + 16);
  v53 = a1;
  v29(&v47[-v27], a1, v4);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v4);
  v30 = type metadata accessor for TrialOverridesTieBreaker();
  outlined init with copy of (CamLogOutput, CamModelMetadata)(v52 + *(v30 + 20), v17, &_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  v31 = type metadata accessor for RankedAction();
  if (__swift_getEnumTagSinglePayload(v17, 1, v31) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v17, &_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
    v32 = 1;
  }

  else
  {
    v29(v26, &v17[*(v31 + 36)], v4);
    OUTLINED_FUNCTION_1_15();
    _s7SiriCam12RankedActionVWOhTm_0(v17, v33);
    v32 = 0;
  }

  __swift_storeEnumTagSinglePayload(v26, v32, 1, v4);
  v34 = *(v8 + 48);
  v35 = &_s10Foundation4UUIDVSgMd;
  outlined init with copy of (CamLogOutput, CamModelMetadata)(v28, v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of (CamLogOutput, CamModelMetadata)(v26, v2 + v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_8_11(v2);
  if (v37)
  {
    OUTLINED_FUNCTION_7_9(v26);
    OUTLINED_FUNCTION_7_9(v28);
    OUTLINED_FUNCTION_8_11(v2 + v34);
    if (v37)
    {
      OUTLINED_FUNCTION_6_12();
      outlined destroy of (CamLogOutput, CamModelMetadata)(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_16:
      v38 = 0x646572756F766146;
      v39 = 0x3F947AE147AE147BLL;
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v36 = v50;
  outlined init with copy of (CamLogOutput, CamModelMetadata)(v2, v50, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_8_11(v2 + v34);
  if (v37)
  {
    OUTLINED_FUNCTION_7_9(v26);
    OUTLINED_FUNCTION_7_9(v28);
    (*(v51 + 8))(v36, v4);
LABEL_12:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v2, &_s10Foundation4UUIDVSg_ADtMd, _s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_13;
  }

  v40 = v51;
  v41 = v2 + v34;
  v42 = v49;
  (*(v51 + 32))(v49, v41, v4);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  v52 = v29;
  v43 = *(v40 + 8);
  v35 = (v40 + 8);
  v43(v42, v4);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v43(v36, v4);
  v29 = v52;
  outlined destroy of (CamLogOutput, CamModelMetadata)(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v48)
  {
    OUTLINED_FUNCTION_6_12();
    goto LABEL_16;
  }

LABEL_13:
  v35 = 0x800000026681B140;
  v38 = 0xD000000000000011;
  v39 = 0;
LABEL_17:
  v44 = type metadata accessor for ScoreBoost();
  v45 = v54;
  result = (v29)(v54 + *(v44 + 24), v53, v4);
  *v45 = v39;
  v45[1] = v38;
  v45[2] = v35;
  return result;
}

uint64_t _s7SiriCam12RankedActionVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t MLFeatureValue.MLFeatureValueCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570795461746164 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int MLFeatureValue.MLFeatureValueCodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5DD540](a1 & 1);
  return Hasher._finalize()();
}

uint64_t MLFeatureValue.MLFeatureValueCodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x6570795461746164;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLFeatureValue.MLFeatureValueCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLFeatureValue.MLFeatureValueCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLFeatureValue.MLFeatureValueCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = MLFeatureValue.MLFeatureValueCodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLFeatureValue.MLFeatureValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLFeatureValue.MLFeatureValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLFeatureValue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo14MLFeatureValueC7SiriCamE0dE10CodingKeys33_6839BE060B73B362827386E1C3BE7052LLOGMd, &_ss22KeyedEncodingContainerVySo14MLFeatureValueC7SiriCamE0dE10CodingKeys33_6839BE060B73B362827386E1C3BE7052LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  [v3 type];
  v17 = 0;
  OUTLINED_FUNCTION_0_16();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  switch([v3 type])
  {
    case 1uLL:
      [v3 int64Value];
      v15[13] = 1;
      OUTLINED_FUNCTION_0_16();
      KeyedEncodingContainer.encode(_:forKey:)();
      return (*(v6 + 8))(v9, v5);
    case 2uLL:
      [v3 doubleValue];
      v15[12] = 1;
      OUTLINED_FUNCTION_0_16();
      KeyedEncodingContainer.encode(_:forKey:)();
      return (*(v6 + 8))(v9, v5);
    case 3uLL:
      v12 = [v3 stringValue];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v15[14] = 1;
      OUTLINED_FUNCTION_0_16();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v6 + 8))(v9, v5);

      break;
    case 5uLL:
      v13 = [v3 multiArrayValue];
      v16 = v13;
      v15[15] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12MLMultiArrayCSgMd, _sSo12MLMultiArrayCSgMR);
      lazy protocol witness table accessor for type MLMultiArray? and conformance <A> A?();
      OUTLINED_FUNCTION_0_16();
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      return (*(v6 + 8))(v9, v5);
    default:
      lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
      swift_allocError();
      *v14 = 0xD000000000000026;
      *(v14 + 8) = 0x800000026681A4B0;
      *(v14 + 16) = 0;
      swift_willThrow();
      return (*(v6 + 8))(v9, v5);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys;
  if (!lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys;
  if (!lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys;
  if (!lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys;
  if (!lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLMultiArray? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type MLMultiArray? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type MLMultiArray? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo12MLMultiArrayCSgMd, _sSo12MLMultiArrayCSgMR);
    lazy protocol witness table accessor for type MLMultiArray and conformance MLMultiArray();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLMultiArray? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLMultiArray and conformance MLMultiArray()
{
  result = lazy protocol witness table cache variable for type MLMultiArray and conformance MLMultiArray;
  if (!lazy protocol witness table cache variable for type MLMultiArray and conformance MLMultiArray)
  {
    type metadata accessor for MLMultiArray();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLMultiArray and conformance MLMultiArray);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLFeatureValue.MLFeatureValueCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MLFeatureValue.MLFeatureValueCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t CamUSOParse.appShortcutInvocation.getter()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v1);
  v3 = &v20 - v2;
  v4 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  v13 = MEMORY[0x26D5DC620]();
  specialized Collection.first.getter(v13);

  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v3, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_9:
    OUTLINED_FUNCTION_6_13();
    return v13;
  }

  (*(v7 + 32))(v12, v3, v4);
  v13 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (specialized Array.count.getter(v13) != 1)
  {
    v15 = OUTLINED_FUNCTION_1_16();
    v16(v15);

    goto LABEL_9;
  }

  if (specialized Array.count.getter(v13))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v13 & 0xC000000000000001) == 0, v13);
    if ((v13 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D5DD230](0, v13);
    }

    else
    {
      v14 = *(v13 + 32);
    }

    v13 = UsoTask.appShortcutInvocation.getter();
  }

  else
  {

    OUTLINED_FUNCTION_6_13();
  }

  v18 = OUTLINED_FUNCTION_1_16();
  v19(v18);
  return v13;
}

Swift::Bool __swiftcall CamParse.isAppShortcutParse()()
{
  v1 = v0;
  v2 = type metadata accessor for CamUSOParse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;
  v7 = type metadata accessor for CamParse(0);
  v8 = OUTLINED_FUNCTION_0_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  outlined init with copy of CamParse(v1, v12 - v11);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of CamParse(v13, type metadata accessor for CamParse);
    return 0;
  }

  outlined init with take of CamUSOParse(v13, v6);
  v15 = CamUSOParse.appShortcutInvocation.getter();
  v17 = v16;
  outlined destroy of CamParse(v6, type metadata accessor for CamUSOParse);
  if (!v17)
  {
    return 0;
  }

  outlined consume of AppShortcutInvocation?(v15, v17);
  return 1;
}

uint64_t UsoTask.appShortcutInvocation.getter()
{
  v1 = 0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMR) - 8) + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v3);
  v92 = &v82 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GMR);
  OUTLINED_FUNCTION_22(v5);
  v88 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v9);
  v87 = &v82 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SstGMd, &_s17_StringProcessing5RegexVySs_SstGMR);
  OUTLINED_FUNCTION_22(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v16);
  v91 = &v82 - v17;
  v18 = type metadata accessor for UsoIdentifier();
  v19 = OUTLINED_FUNCTION_22(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v89 = &v82 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v90 = &v82 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v82 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v82 - v35;
  MEMORY[0x28223BE20](v34);
  v93 = &v82 - v37;
  v94 = v0;
  static UsoTask_CodegenConverter.convert(task:)();
  v95 = v18;
  if (v101)
  {
    type metadata accessor for UsoTask_execute_common_VoiceCommand();
    if (OUTLINED_FUNCTION_4_6())
    {
      v86 = v13;
      v38 = v96;

      dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.reference.getter();

      if (v98)
      {
        v39 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

        if (v39)
        {
          v83 = v38;
          v84 = v5;
          v85 = v11;
          v40 = 0;
          v41 = *(v39 + 16);
          v42 = (v21 + 8);
          while (v41 != v40)
          {
            if (v40 >= *(v39 + 16))
            {
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

            (*(v21 + 16))(v33, v39 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v40, v95);
            if (closure #1 in UsoTask.appShortcutInvocation.getter())
            {
              v62 = *(v21 + 32);
              v63 = v95;
              v62(v36, v33, v95);
              v64 = v93;
              v62(v93, v36, v63);
              v65 = UsoIdentifier.value.getter();
              v1 = v66;
              v98 = v65;
              v99 = v66;
              v96 = 95;
              v97 = 0xE100000000000000;
              lazy protocol witness table accessor for type String and conformance String();
              v67 = StringProtocol.components<A>(separatedBy:)();

              if (v67[2])
              {

                if (v67[2])
                {
                  v68 = v67[4];
                  v69 = v67[5];

                  v44 = UsoIdentifier.appBundleId.getter();

                  (*v42)(v64, v95);
                  return v44;
                }

LABEL_48:
                __break(1u);
              }

              __break(1u);

              result = (*v42)(v33, v95);
              __break(1u);
              return result;
            }

            (*v42)(v33, v95);
            ++v40;
          }

          v18 = v95;
          v5 = v84;
          v11 = v85;
        }

        else
        {

          v18 = v95;
        }
      }

      else
      {
      }

      v13 = v86;
    }
  }

  else
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(&v98, &_sypSgMd, &_sypSgMR);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v101)
  {
    v58 = &_sypSgMd;
    v59 = &_sypSgMR;
    v60 = &v98;
LABEL_34:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v60, v58, v59);
    return 0;
  }

  type metadata accessor for UsoTask_run_common_VoiceCommand();
  if ((OUTLINED_FUNCTION_4_6() & 1) == 0)
  {
    return 0;
  }

  v86 = v13;
  v43 = v96;

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

  v44 = v98;
  if (!v98)
  {

    return v44;
  }

  v85 = v11;
  v45 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

  if (!v45)
  {
LABEL_37:

    return 0;
  }

  v83 = v43;
  v84 = v5;
  v42 = 0;
  v46 = *(v45 + 16);
  v93 = (v21 + 16);
  v33 = *MEMORY[0x277D5F538];
  v94 = v21 + 8;
  while (1)
  {
    if (v46 == v42)
    {

      goto LABEL_37;
    }

    if (v42 >= *(v45 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    (*(v21 + 16))(v26, v45 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v42, v18);
    v47 = UsoIdentifier.namespace.getter();
    v49 = v48;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v49)
    {

      goto LABEL_32;
    }

    if (v47 == v50 && v49 == v51)
    {
      break;
    }

    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v53)
    {
      goto LABEL_31;
    }

LABEL_32:
    v18 = v95;
    v56 = OUTLINED_FUNCTION_7_10();
    v57(v56, v18);
    v42 = (v42 + 1);
  }

LABEL_31:
  v98 = UsoIdentifier.value.getter();
  v99 = v54;
  v96 = 0x726F68736F747561;
  v97 = 0xEF2F2F3A74756374;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  v55 = BidirectionalCollection<>.starts<A>(with:)();

  if ((v55 & 1) == 0)
  {
    goto LABEL_32;
  }

  v70 = *(v21 + 32);
  v71 = v89;
  v72 = v95;
  v70(v89, v26, v95);
  v70(v90, v71, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_SstMd, &_sSs_SstMR);
  v73 = v91;
  Regex.init(_regexString:version:)();
  UsoIdentifier.value.getter();
  v74 = v92;
  Regex.firstMatch(in:)();

  v75 = v84;
  if (__swift_getEnumTagSinglePayload(v74, 1, v84) == 1)
  {

    (*(v86 + 8))(v73, v85);
    v76 = OUTLINED_FUNCTION_7_10();
    v77(v76);
    v58 = &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd;
    v59 = &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMR;
    v60 = v74;
    goto LABEL_34;
  }

  v79 = v87;
  v78 = v88;
  (*(v88 + 32))(v87, v74, v75);
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  MEMORY[0x26D5DCD30](v98, v99, v100, v101);

  v44 = UsoIdentifier.appBundleId.getter();

  (*(v78 + 8))(v79, v75);
  (*(v86 + 8))(v73, v85);
  v80 = OUTLINED_FUNCTION_7_10();
  v81(v80);
  return v44;
}

uint64_t closure #1 in UsoTask.appShortcutInvocation.getter()
{
  v0 = type metadata accessor for UsoIdentifier.NluComponent();
  v35 = *(v0 - 8);
  v1 = *(v35 + 64);
  MEMORY[0x28223BE20](v0);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = UsoIdentifier.namespace.getter();
  v18 = v17;
  v19 = *MEMORY[0x277D5F538];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v18)
  {

LABEL_16:
    v24 = 0;
    return v24 & 1;
  }

  if (v16 == v20 && v18 == v21)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v24 = 0;
    if ((v23 & 1) == 0)
    {
      return v24 & 1;
    }
  }

  UsoIdentifier.sourceComponent.getter();
  v25 = v35;
  (*(v35 + 104))(v13, *MEMORY[0x277D5E4D0], v0);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v0);
  v26 = *(v3 + 48);
  outlined init with copy of UsoIdentifier.NluComponent?(v15, v6);
  outlined init with copy of UsoIdentifier.NluComponent?(v13, &v6[v26]);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) != 1)
  {
    v27 = v34;
    outlined init with copy of UsoIdentifier.NluComponent?(v6, v34);
    if (__swift_getEnumTagSinglePayload(&v6[v26], 1, v0) != 1)
    {
      v29 = &v6[v26];
      v30 = v33;
      (*(v25 + 32))(v33, v29, v0);
      lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent();
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v25 + 8);
      v31(v30, v0);
      outlined destroy of (CamLogOutput, CamModelMetadata)(v13, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of (CamLogOutput, CamModelMetadata)(v15, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      v31(v34, v0);
      outlined destroy of (CamLogOutput, CamModelMetadata)(v6, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      return v24 & 1;
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v13, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined destroy of (CamLogOutput, CamModelMetadata)(v15, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    (*(v25 + 8))(v27, v0);
    goto LABEL_15;
  }

  outlined destroy of (CamLogOutput, CamModelMetadata)(v13, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v15, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  if (__swift_getEnumTagSinglePayload(&v6[v26], 1, v0) != 1)
  {
LABEL_15:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v6, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
    goto LABEL_16;
  }

  outlined destroy of (CamLogOutput, CamModelMetadata)(v6, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  v24 = 1;
  return v24 & 1;
}

uint64_t outlined init with copy of UsoIdentifier.NluComponent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent()
{
  result = lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent;
  if (!lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent)
  {
    type metadata accessor for UsoIdentifier.NluComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent);
  }

  return result;
}

uint64_t AsrSimpleFeatureExtractor.extractImpl(from:)(void *a1)
{
  if (outlined bridged method (pb) of @objc SASRecognition.utterances.getter(a1))
  {
    v2 = specialized Array.count.getter();

    v3 = v2;
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.common);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000266818D10, &v12);
      _os_log_impl(&dword_266790000, v5, v6, "No utterances found. Forcing %s to 0", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x26D5DDCD0](v8, -1, -1);
      MEMORY[0x26D5DDCD0](v7, -1, -1);
    }

    v3 = 0.0;
  }

  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48);
  result = static MLMultiArray.makeScalar(from:)(v3);
  v10 = result;
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266813FC0;
    *(inited + 32) = 0xD00000000000001BLL;
    *(inited + 40) = 0x8000000266818D10;
    *(inited + 48) = v10;
    return Dictionary.init(dictionaryLiteral:)();
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc SASRecognition.utterances.getter(void *a1)
{
  v1 = [a1 utterances];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASUtterance, 0x277D477A8);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *UncertaintyPromptHandler.init()()
{
  v2 = v0;
  type metadata accessor for LatticePathFeatureExtractor();
  v3 = swift_allocObject();
  v0[2] = 0x3FF0000000000000;
  v0[3] = v3;
  v4 = type metadata accessor for CoreMLHandler();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = CoreMLHandler.init(forModelWithName:)(0xD000000000000025, 0x8000000266819F10);
  if (v1)
  {
    v8 = v0[3];

    type metadata accessor for UncertaintyPromptHandler();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v4;
    v24 = &protocol witness table for CoreMLHandler;
    *&v22 = v7;
    outlined init with take of CaarHandler(&v22, (v0 + 11));
    v9 = Dictionary.init(dictionaryLiteral:)();
    v0[4] = 0xD000000000000023;
    v0[5] = 0x800000026681B230;
    v0[6] = 0xD000000000000027;
    v0[7] = 0x800000026681B260;
    v0[8] = 0xD000000000000026;
    v0[9] = 0x800000026681B290;
    v0[10] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam31UncertaintyPromptActionEnforcer_pGMd, &_ss23_ContiguousArrayStorageCy7SiriCam31UncertaintyPromptActionEnforcer_pGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2668162F0;
    *(v10 + 56) = &type metadata for LongPayloadActionEnforcer;
    *(v10 + 64) = &protocol witness table for LongPayloadActionEnforcer;
    *(v10 + 96) = &type metadata for UserConfirmationActionEnforcer;
    *(v10 + 104) = &protocol witness table for UserConfirmationActionEnforcer;
    *(v10 + 136) = &type metadata for SiriVocabActionEnforcer;
    *(v10 + 144) = &protocol witness table for SiriVocabActionEnforcer;
    *(v10 + 176) = &type metadata for MessageDictationActionEnforcer;
    *(v10 + 184) = &protocol witness table for MessageDictationActionEnforcer;
    *(v10 + 216) = &type metadata for GiveUpRepeatActionEnforcer;
    *(v10 + 224) = &protocol witness table for GiveUpRepeatActionEnforcer;
    *(v10 + 256) = &type metadata for ExecuteActionEnforcer;
    *(v10 + 264) = &protocol witness table for ExecuteActionEnforcer;
    *(v10 + 296) = &type metadata for ShadowLogActionEnforcer;
    *(v10 + 304) = &protocol witness table for ShadowLogActionEnforcer;
    *(v10 + 336) = &type metadata for ZeroAsrConfidenceActionEnforcer;
    *(v10 + 344) = &protocol witness table for ZeroAsrConfidenceActionEnforcer;
    *(v10 + 376) = &type metadata for ExactShortcutActionEnforcer;
    *(v10 + 384) = &protocol witness table for ExactShortcutActionEnforcer;
    *(v10 + 416) = &type metadata for OverrideParseActionEnforcer;
    *(v10 + 424) = &protocol witness table for OverrideParseActionEnforcer;
    *(v10 + 456) = &type metadata for UserEntityVocabActionEnforcer;
    *(v10 + 464) = &protocol witness table for UserEntityVocabActionEnforcer;
    v11 = MEMORY[0x26D5DCC90](0x6C616E7265746E49, 0xED0000646C697542);
    v12 = MGGetBoolAnswer();

    if (v12)
    {
      if (one-time initialization token for ambiguityHandling != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.ambiguityHandling);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v14, v15))
      {
        OUTLINED_FUNCTION_7_5();
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_266790000, v14, v15, "Detected internal build", v16, 2u);
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      v23 = &type metadata for UncertaintyPromptMagicWordsActionEnforcer;
      v24 = &protocol witness table for UncertaintyPromptMagicWordsActionEnforcer;
      outlined init with take of CaarHandler(&v22, v20);
      v21 = v10;
      v17 = *(v10 + 16);
      if (v17 >= *(v10 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v17 + 1, 1, v10);
        v10 = v19;
        v21 = v19;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v20);
    }

    v2[19] = &type metadata for UncertaintyPromptSequentialEnforcer;
    v2[20] = &protocol witness table for UncertaintyPromptSequentialEnforcer;
    v2[16] = v10;
  }

  return v2;
}

uint64_t static UncertaintyPromptHandler.register(camEnabledFeatures:allowDefaultAskRepeatModel:asrOnDevice:)(uint64_t a1, int a2, int a3)
{
  v40 = a2;
  v41 = a3;
  OUTLINED_FUNCTION_10_11();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v40 - v7;
  v9 = *(a1 + 16);
  v10 = (a1 + 32);
  OUTLINED_FUNCTION_8_12();
  while (v9)
  {
    v11 = *v10;
    if (v11 != 1 && v11 != 2)
    {

LABEL_13:
      if (v41)
      {
        if ((v40 & 1) != 0 || (static AssetProvider.fetchModelFromUAF(_:)(0xD000000000000025, 0x8000000266819F10, v8), v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v18), outlined destroy of (CamLogOutput, CamModelMetadata)(v8, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR), EnumTagSinglePayload != 1))
        {
          type metadata accessor for UncertaintyPromptHandler();
          v38 = swift_allocObject();
          UncertaintyPromptHandler.init()();
          return v38;
        }

        if (one-time initialization token for ambiguityHandling != -1)
        {
          OUTLINED_FUNCTION_0_12();
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        __swift_project_value_buffer(v20, static Logger.ambiguityHandling);
        v21 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        v22 = OUTLINED_FUNCTION_6_14();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          OUTLINED_FUNCTION_9();
          v25 = swift_slowAlloc();
          v42 = v25;
          *v24 = 136315138;
          *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x8000000266819F10, &v42);
          OUTLINED_FUNCTION_13_11();
          _os_log_impl(v26, v27, v28, v29, v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
          goto LABEL_24;
        }
      }

      else
      {
        if (one-time initialization token for ambiguityHandling != -1)
        {
          OUTLINED_FUNCTION_0_12();
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Logger.ambiguityHandling);
        v21 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        v31 = OUTLINED_FUNCTION_6_14();
        if (os_log_type_enabled(v31, v32))
        {
          OUTLINED_FUNCTION_7_5();
          v33 = swift_slowAlloc();
          *v33 = 0;
          OUTLINED_FUNCTION_13_11();
          _os_log_impl(v34, v35, v36, v37, v33, 2u);
LABEL_24:
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
        }
      }

      return 0;
    }

    OUTLINED_FUNCTION_12_12();
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v10;
    --v9;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_0_12();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.ambiguityHandling);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_9();
    v17 = swift_slowAlloc();
    v42 = v17;
    *v16 = 136315138;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, 0xEA00000000005441, &v42);
    _os_log_impl(&dword_266790000, v14, v15, "[UncertaintyPromptHandler] Not registering as %s is disabled", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  return 0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UncertaintyPromptHandler.update()()
{
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t UncertaintyPromptHandler.handle(camInput:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v131[-v7];
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_2();
  v152 = v15;
  v16 = type metadata accessor for DispatchQoS();
  v17 = OUTLINED_FUNCTION_22(v16);
  v151 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v150 = v21;
  v22 = type metadata accessor for CamInput();
  v23 = OUTLINED_FUNCTION_22(v22);
  v147 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  v148 = v27;
  OUTLINED_FUNCTION_21_1(&v131[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v146 = type metadata accessor for DispatchQoS.QoSClass();
  v28 = OUTLINED_FUNCTION_22(v146);
  v145 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_21_1(v32);
  v33 = type metadata accessor for CamModelMetadata();
  v34 = OUTLINED_FUNCTION_0_2(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_21_1(v37);
  v38 = type metadata accessor for OSSignpostID();
  v39 = OUTLINED_FUNCTION_22(v38);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v157 = &v131[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = MEMORY[0x28223BE20](v42);
  v156 = &v131[-v46];
  if (!*(a1 + *(v22 + 32)))
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.ambiguityHandling);
    v54 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v55 = OUTLINED_FUNCTION_6_14();
    if (!os_log_type_enabled(v55, v56))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v135 = v16;
  v137 = v12;
  v138 = v9;
  v141 = v45;
  v142 = v44;
  v139 = v3;
  v140 = v8;
  v154 = v1;
  v136 = v22;
  v47 = *(v22 + 48);
  v153 = a1;
  v48 = *(a1 + v47);
  v49 = (v48 + 32);
  v50 = *(v48 + 16);
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_10_11();
  while (v50)
  {
    v51 = *v49;
    if (v51 != 1 && v51 != 2)
    {

LABEL_18:
      if (one-time initialization token for ambiguityHandling != -1)
      {
        swift_once();
      }

      v65 = static Log.ambiguityHandling;
      v66 = v156;
      OSSignpostID.init(log:)();
      static os_signpost_type_t.begin.getter();
      OUTLINED_FUNCTION_14_9();
      v67 = v154;
      v68 = v155;
      v69 = specialized FeatureExtracting.extract(from:)(v153, *(v155 + 24), *(v155 + 16));
      if (v67)
      {
        (*(v141 + 8))(v66, v142);
        return v65;
      }

      v70 = v69;
      static os_signpost_type_t.end.getter();
      OUTLINED_FUNCTION_14_9();
      v71 = v65;
      OSSignpostID.init(log:)();
      static os_signpost_type_t.begin.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      v72 = v68;
      v73 = *(v68 + 112);
      v74 = *(v68 + 120);
      __swift_project_boxed_opaque_existential_1((v72 + 88), v73);
      v75 = (*(v74 + 32))(v70, v73, v74);
      v154 = v70;
      static os_signpost_type_t.end.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      v76 = *(v72 + 48);
      v164 = *(v72 + 32);
      v165 = v76;
      v166 = *(v72 + 64);
      v167 = *(v72 + 80);
      CamOutputProvider.toCamOutput(from:)(v75);
      v65 = v77;
      v133 = v75;
      v79 = swift_allocBox();
      v81 = v80;
      v82 = *(v72 + 112);
      v83 = *(v72 + 120);
      __swift_project_boxed_opaque_existential_1((v72 + 88), v82);
      (*(v83 + 24))(v82, v83);
      v84 = *(v72 + 152);
      v85 = *(v72 + 160);
      __swift_project_boxed_opaque_existential_1((v72 + 128), v84);
      OUTLINED_FUNCTION_4_7();
      v155 = v81;
      v86 = v81;
      v87 = v143;
      _s7SiriCam0B13ModelMetadataVWOcTm_0(v86, v143, v88);
      v89 = v153;
      (*(v85 + 8))(&aBlock, v154, v65, v153, v87, v84, v85);
      outlined destroy of CamModelMetadata(v87);
      v90 = v160;
      v134 = v79;
      if (v160)
      {
        v91 = v159;
        v92 = aBlock;
        if (one-time initialization token for ambiguityHandling != -1)
        {
          OUTLINED_FUNCTION_0_12();
          swift_once();
        }

        v93 = type metadata accessor for Logger();
        __swift_project_value_buffer(v93, static Logger.ambiguityHandling);

        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v94, v95))
        {
          OUTLINED_FUNCTION_9();
          v96 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          aBlock = v143;
          *v96 = 136315650;
          LOBYTE(v168) = v65[56];
          v97 = String.init<A>(describing:)();
          v132 = v95;
          v98 = v92;
          v100 = v91;
          v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, &aBlock);

          *(v96 + 4) = v101;
          *(v96 + 12) = 2080;
          LOBYTE(v168) = v92;
          v102 = String.init<A>(describing:)();
          v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, &aBlock);
          v91 = v100;

          *(v96 + 14) = v104;
          v92 = v98;
          *(v96 + 22) = 2080;
          v89 = v153;
          *(v96 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v90, &aBlock);
          _os_log_impl(&dword_266790000, v94, v132, "[UncertaintyPromptHandler] Overriding %s with %s due to %s", v96, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
          v79 = v134;
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
        }

        LOBYTE(aBlock) = v92;
        v105._countAndFlagsBits = v91;
        v105._object = v90;
        CamOutput.overrideAction(action:enforcer:)(&aBlock, v105);
        if (v91 == 0xD000000000000017 && v90 == 0x800000026681B210)
        {
        }

        else
        {
          v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v107 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        *(v155 + 48) = 1;
      }

LABEL_37:
      type metadata accessor for OS_dispatch_queue();
      v108 = v145;
      v109 = v144;
      v110 = v146;
      (*(v145 + 104))(v144, *MEMORY[0x277D851A8], v146);
      v143 = static OS_dispatch_queue.global(qos:)();
      (*(v108 + 8))(v109, v110);
      v111 = v149;
      _s7SiriCam0B13ModelMetadataVWOcTm_0(v89, v149, type metadata accessor for CamInput);
      v112 = (*(v147 + 80) + 40) & ~*(v147 + 80);
      v113 = swift_allocObject();
      v113[2] = v154;
      v113[3] = v65;
      v113[4] = v79;
      outlined init with take of CamInput(v111, v113 + v112);
      v162 = partial apply for closure #1 in UncertaintyPromptHandler.handle(camInput:);
      v163 = v113;
      aBlock = MEMORY[0x277D85DD0];
      v159 = 1107296256;
      v160 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v161 = &block_descriptor_1;
      v114 = _Block_copy(&aBlock);

      v115 = v150;
      static DispatchQoS.unspecified.getter();
      v168 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v116 = v152;
      v117 = v138;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v118 = v143;
      MEMORY[0x26D5DD090](0, v115, v116, v114);
      _Block_release(v114);

      (*(v137 + 8))(v116, v117);
      (*(v151 + 8))(v115, v135);

      v119 = v155;
      swift_beginAccess();
      v120 = *(v139 + 48);
      v121 = v140;
      *v140 = v65;
      OUTLINED_FUNCTION_4_7();
      _s7SiriCam0B13ModelMetadataVWOcTm_0(v119, v121 + v122, v123);
      v124 = v136[5];
      v125 = (v89 + v136[6]);
      v127 = *v125;
      v126 = v125[1];
      v128 = v136[7];

      _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA0B11ModelLoggerV_Tt5B5();

      outlined destroy of (CamLogOutput, CamModelMetadata)(v121, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
      v129 = *(v141 + 8);
      v130 = v142;
      v129(v157, v142);
      v129(v156, v130);

      return v65;
    }

    OUTLINED_FUNCTION_12_12();
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v49;
    --v50;
    if (v52)
    {
      goto LABEL_18;
    }
  }

  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_0_12();
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  __swift_project_value_buffer(v57, static Logger.ambiguityHandling);
  v54 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  v58 = OUTLINED_FUNCTION_6_14();
  if (os_log_type_enabled(v58, v59))
  {
LABEL_15:
    OUTLINED_FUNCTION_7_5();
    v60 = swift_slowAlloc();
    *v60 = 0;
    OUTLINED_FUNCTION_13_11();
    _os_log_impl(v61, v62, v63, v64, v60, 2u);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

LABEL_16:

  type metadata accessor for CamOutput();
  *(swift_allocObject() + 56) = 1;
  return CamLogOutput.init(prediction:score:threshold:)(0, 0.0, 0.0);
}

uint64_t closure #1 in UncertaintyPromptHandler.handle(camInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CamModelMetadata();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  swift_beginAccess();
  _s7SiriCam0B13ModelMetadataVWOcTm_0(v11, v10, type metadata accessor for CamModelMetadata);
  v12 = UUID.uuidString.getter();
  v14 = v13;
  v15 = type metadata accessor for CamInput();
  _s7SiriCam0B27FeatureStoreLoggingProtocolPAAE9writeData13modelFeatures0I6Output0I8Metadata9requestId02rcN08fsStreamySDySSSo12MLMultiArrayCG_AA0b3LogK0CAA0b5ModelL0VS2SAA0cdQ0OtFZAA0bcD6LoggerV_Tt5g5(a1, a2, v10, v12, v14, *(a4 + *(v15 + 24)), *(a4 + *(v15 + 24) + 8), 0);

  return outlined destroy of CamModelMetadata(v10);
}

void *UncertaintyPromptHandler.deinit()
{
  v1 = v0[3];

  v2 = v0[5];
  v3 = v0[7];
  v5 = v0[9];
  v4 = v0[10];

  __swift_destroy_boxed_opaque_existential_0(v0 + 11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  return v0;
}

uint64_t UncertaintyPromptHandler.__deallocating_deinit()
{
  UncertaintyPromptHandler.deinit();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t _s7SiriCam0B13ModelMetadataVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t outlined init with take of CamInput(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CamInput();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in UncertaintyPromptHandler.handle(camInput:)()
{
  v1 = *(type metadata accessor for CamInput() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return closure #1 in UncertaintyPromptHandler.handle(camInput:)(v2, v3, v4, v5);
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}