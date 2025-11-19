uint64_t ContactService.__deallocating_deinit()
{
  ContactService.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

unint64_t lazy protocol witness table accessor for type ContactsError and conformance ContactsError()
{
  result = lazy protocol witness table cache variable for type ContactsError and conformance ContactsError;
  if (!lazy protocol witness table cache variable for type ContactsError and conformance ContactsError)
  {
    type metadata accessor for ContactsError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsError and conformance ContactsError);
  }

  return result;
}

uint64_t outlined destroy of Signpost.OpenSignpost(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_10_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t type metadata accessor for CNMutableContact()
{
  result = lazy cache variable for type metadata for CNMutableContact;
  if (!lazy cache variable for type metadata for CNMutableContact)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNMutableContact);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_12_2(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_13_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_14_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_15_1()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_17_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_18_2()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t ModifyOperation.stringify.getter(uint64_t a1)
{
  result = 6579297;
  switch(a1)
  {
    case 0:
      result = 0x6E776F6E6B6E75;
      break;
    case 1:
      return result;
    case 2:
      result = 0x6563616C706572;
      break;
    case 3:
      result = 0x6574656C6564;
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t static ModifyOperation.from(_:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v4 = a1 == 0x6574656C6564 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  v6 = a1 == 0x6563616C706572 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void static Siri_Nlu_External_UserStatedTask.from(_:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v3 = OUTLINED_FUNCTION_18_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v21[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  OUTLINED_FUNCTION_18_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v15);
  v17 = &v21[-v16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_266966A40;
  *(v18 + 32) = v1;
  v19 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v19);

  MEMORY[0x26D5E09B0](v18, v17);

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v17, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v20 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v20);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v11, v8);
  Siri_Nlu_External_UserStatedTask.init(_:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v11, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  OUTLINED_FUNCTION_14();
}

void Siri_Nlu_External_UserStatedTask.init(_:)()
{
  Siri_Nlu_External_UserStatedTask.init(_:)();
}

{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  OUTLINED_FUNCTION_18_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_6();
  v12 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v13 = OUTLINED_FUNCTION_1_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_3();
  v5();
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v7, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v12) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    (*(v15 + 32))(v1, v0, v12);
    (*(v15 + 16))(v20, v1, v12);
    v3(v20);
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    (*(v15 + 8))(v1, v12);
  }

  OUTLINED_FUNCTION_14();
}

uint64_t Siri_Nlu_External_UserDialogAct.usoTask.getter()
{
  v0 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (specialized Array._getCount()(v0))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v0 & 0xC000000000000001) == 0, v0);
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x26D5E29D0](0, v0);
    }

    else
    {
      v1 = *(v0 + 32);
    }
  }

  else
  {

    return 0;
  }

  return v1;
}

void Siri_Nlu_External_UserDialogAct.contactId.getter()
{
  OUTLINED_FUNCTION_15();
  v56 = type metadata accessor for Google_Protobuf_StringValue();
  v1 = OUTLINED_FUNCTION_1_0(v56);
  v58 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v59 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v8 = OUTLINED_FUNCTION_1_0(v59);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_6();
  v13 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v14 = OUTLINED_FUNCTION_1_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  v22 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v23 = OUTLINED_FUNCTION_1_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
  OUTLINED_FUNCTION_18_0(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v34);
  v55 = &v54 - v35;
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v25 + 8))(v30, v22);
  v36 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  (*(v16 + 8))(v21, v13);
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = 0;
    v57 = v36 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v39 = v10;
    v40 = v59;
    v41 = (v58 + 8);
    v58 = v39;
    v42 = (v39 + 8);
    while (1)
    {
      if (v38 >= *(v36 + 16))
      {
        __break(1u);
        return;
      }

      (*(v58 + 16))(v0, v57 + *(v58 + 72) * v38, v40);
      Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter();
      OUTLINED_FUNCTION_4_4();
      v44 = v44 && v43 == 0xE800000000000000;
      if (v44)
      {
      }

      else
      {
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v45 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
      v46 = Google_Protobuf_StringValue.value.getter();
      v48 = v47;
      (*v41)(v7, v56);
      OUTLINED_FUNCTION_9_4();
      if (v46 == v49 && v48 == 0xE700000000000000)
      {

LABEL_21:

        v10 = v58;
        v40 = v59;
        v53 = v55;
        (*(v58 + 32))(v55, v0, v59);
        v52 = 0;
        goto LABEL_22;
      }

      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v51)
      {
        goto LABEL_21;
      }

LABEL_16:
      ++v38;
      v40 = v59;
      (*v42)(v0, v59);
      if (v37 == v38)
      {

        v52 = 1;
        v10 = v58;
        goto LABEL_19;
      }
    }
  }

  v52 = 1;
  v40 = v59;
LABEL_19:
  v53 = v55;
LABEL_22:
  __swift_storeEnumTagSinglePayload(v53, v52, 1, v40);
  if (__swift_getEnumTagSinglePayload(v53, 1, v40) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v53, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
  }

  else
  {
    Siri_Nlu_External_UsoEntityIdentifier.value.getter();
    (*(v10 + 8))(v53, v40);
  }

  OUTLINED_FUNCTION_14();
}

void Siri_Nlu_External_UserDialogAct.contactIds.getter()
{
  OUTLINED_FUNCTION_15();
  v1 = type metadata accessor for Google_Protobuf_StringValue();
  v78 = OUTLINED_FUNCTION_1_0(v1);
  v79 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_8();
  v77 = v6 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v73 = (v13 - v14);
  v16 = MEMORY[0x28223BE20](v15);
  v75 = &v71 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v71 - v18;
  v20 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v21 = OUTLINED_FUNCTION_1_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_6();
  v26 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v27 = OUTLINED_FUNCTION_1_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  v34 = v33 - v32;
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v29 + 8))(v34, v26);
  v35 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  (*(v23 + 8))(v0, v20);
  v36 = 0;
  v80 = *(v35 + 16);
  v81 = v10 + 16;
  v76 = (v79 + 8);
  v37 = (v10 + 8);
  v79 = v10;
  v72 = (v10 + 32);
  v74 = MEMORY[0x277D84F90];
  while (v80 != v36)
  {
    if (v36 >= *(v35 + 16))
    {
      __break(1u);
      return;
    }

    v38 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v39 = *(v79 + 72);
    (*(v79 + 16))(v19, v35 + v38 + v39 * v36, v7);
    Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter();
    OUTLINED_FUNCTION_4_4();
    v41 = v41 && v40 == 0xE800000000000000;
    if (v41)
    {

LABEL_11:
      v43 = v35;
      v44 = v7;
      v45 = v77;
      Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
      v46 = Google_Protobuf_StringValue.value.getter();
      v48 = v47;
      (*v76)(v45, v78);
      OUTLINED_FUNCTION_9_4();
      if (v46 == v49 && v48 == 0xE700000000000000)
      {

        v7 = v44;
        v35 = v43;
      }

      else
      {
        v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v7 = v44;
        v35 = v43;
        if ((v51 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v52 = *v72;
      (*v72)(v73, v19, v7);
      v53 = v74;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = *(v53 + 16);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v53 = v82;
      }

      v56 = *(v53 + 16);
      v57 = v56 + 1;
      if (v56 >= *(v53 + 24) >> 1)
      {
        v74 = v56 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v57 = v74;
        v53 = v82;
      }

      ++v36;
      *(v53 + 16) = v57;
      v74 = v53;
      v52(v53 + v38 + v56 * v39, v73, v7);
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v42)
      {
        goto LABEL_11;
      }

LABEL_16:
      (*v37)(v19, v7);
      ++v36;
    }
  }

  v58 = *(v74 + 16);
  if (v58)
  {
    v59 = v74 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
    v80 = *(v79 + 72);
    v60 = *(v79 + 16);
    v61 = MEMORY[0x277D84F90];
    do
    {
      v62 = v75;
      v60(v75, v59, v7);
      v63 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
      v65 = v64;
      (*v37)(v62, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 16) + 1, 1, v61);
        v61 = v69;
      }

      v67 = *(v61 + 16);
      v66 = *(v61 + 24);
      if (v67 >= v66 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v66 > 1, v67 + 1, 1, v61);
        v61 = v70;
      }

      *(v61 + 16) = v67 + 1;
      v68 = v61 + 16 * v67;
      *(v68 + 32) = v63;
      *(v68 + 40) = v65;
      v59 += v80;
      --v58;
    }

    while (v58);
  }

  OUTLINED_FUNCTION_14();
}

void static Siri_Nlu_External_SystemPrompted.from(_:)()
{
  static Siri_Nlu_External_SystemPrompted.from(_:)();
}

{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  OUTLINED_FUNCTION_18_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v10 = OUTLINED_FUNCTION_18_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_266966A40;
  *(v17 + 32) = v2;
  v18 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v18);

  MEMORY[0x26D5E09B0](v17, v8);

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v8, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();

  v19 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v19);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v0, v15);
  Siri_Nlu_External_UserStatedTask.init(_:)();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v0, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  OUTLINED_FUNCTION_14();
}

uint64_t outlined init with copy of Siri_Nlu_External_UsoGraph?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static Siri_Nlu_External_SystemOffered.from(_:)()
{
  OUTLINED_FUNCTION_15();
  v26[0] = v1;
  v26[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_3();
  v13 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v14 = OUTLINED_FUNCTION_1_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_4();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v26 - v23;
  v25 = *(v6 + 16);
  v25(v0, v26[0], v3);
  Siri_Nlu_External_UserDialogAct.init()();
  v25(v11, v0, v3);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  (*(v6 + 8))(v0, v3);
  Siri_Nlu_External_SystemOffered.init()();
  (*(v16 + 16))(v21, v24, v13);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  (*(v16 + 8))(v24, v13);
  OUTLINED_FUNCTION_14();
}

uint64_t ModifyContactAttributeCATs.confirmModifyNickname(requestedNickname:)()
{
  OUTLINED_FUNCTION_4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_10_0();
  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_24_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_29_1();
  v0[6] = v1;
  *(v1 + 16) = xmmword_266966D90;
  v2 = OUTLINED_FUNCTION_14_3(v1, "requestedNickname");
  OUTLINED_FUNCTION_27_0(v2, v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = type metadata accessor for SpeakableString();
  v5 = OUTLINED_FUNCTION_8_4(v4);
  v6 = v0[5];
  if (v5 == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_12_3();
    v9();
  }

  OUTLINED_FUNCTION_5_4(MEMORY[0x277D55BF0]);
  OUTLINED_FUNCTION_36_0();
  v0[7] = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_9_5(v10);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_32_1();

  return v16(v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    OUTLINED_FUNCTION_6_4();

    return v14();
  }
}

uint64_t ModifyContactAttributeCATs.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:)()
{
  OUTLINED_FUNCTION_4();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  v1 = v0[11];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v0[12] = v3;
  *(v3 + 16) = xmmword_266967350;
  *(v3 + 32) = 0xD000000000000015;
  *(v3 + 40) = 0x800000026696EEB0;
  OUTLINED_FUNCTION_27_0(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_8_4(v5) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[11], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    v7 = *(v6 + 32);
    OUTLINED_FUNCTION_12_3();
    v8();
  }

  v9 = v0[10];
  v10 = v0[4];
  *(v3 + 80) = 0xD000000000000014;
  *(v3 + 88) = 0x800000026696F030;
  outlined init with copy of URL?(v10, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[10], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_0_5();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_12_3();
    v13();
  }

  v14 = v0[9];
  v15 = v0[5];
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_26_1(v16);
  outlined init with copy of URL?(v17, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[9], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_0_5();
    v19 = *(v18 + 32);
    OUTLINED_FUNCTION_12_3();
    v20();
  }

  v21 = v0[8];
  v22 = v0[6];
  OUTLINED_FUNCTION_5_7();
  *(v3 + 176) = v23;
  *(v3 + 184) = v24;
  outlined init with copy of URL?(v25, v21, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v26 = OUTLINED_FUNCTION_10_6();
  v27 = v0[8];
  if (v26 == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 192) = 0u;
    *(v3 + 208) = 0u;
  }

  else
  {
    *(v3 + 216) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 192));
    OUTLINED_FUNCTION_0_5();
    v29 = *(v28 + 32);
    OUTLINED_FUNCTION_12_3();
    v30();
  }

  OUTLINED_FUNCTION_5_4(MEMORY[0x277D55BF0]);
  OUTLINED_FUNCTION_36_0();
  v0[13] = v31;
  *v31 = v32;
  v31[1] = ModifyContactAttributeCATs.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:);
  v33 = v0[7];
  v34 = v0[2];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_32_1();

  return v39(v35, v36, v37, v38, v39, v40, v41, v42);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[11];
    v12 = v3[12];
    v15 = v3[9];
    v14 = v3[10];
    v16 = v3[8];

    OUTLINED_FUNCTION_6_4();

    return v17();
  }
}

uint64_t ModifyContactAttributeCATs.intentHandledModifyNickname(updatedNickname:existingNickname:contactName:modifyOperation:)()
{
  OUTLINED_FUNCTION_4();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  v1 = v0[11];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v0[12] = v3;
  *(v3 + 16) = xmmword_266967350;
  *(v3 + 32) = 0x4E64657461647075;
  *(v3 + 40) = 0xEF656D616E6B6369;
  OUTLINED_FUNCTION_27_0(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_8_4(v5) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[11], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    v7 = *(v6 + 32);
    OUTLINED_FUNCTION_12_3();
    v8();
  }

  v9 = v0[10];
  v10 = v0[4];
  *(v3 + 80) = 0xD000000000000010;
  *(v3 + 88) = 0x800000026696EFD0;
  outlined init with copy of URL?(v10, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[10], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_0_5();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_12_3();
    v13();
  }

  v14 = v0[9];
  v15 = v0[5];
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_26_1(v16);
  outlined init with copy of URL?(v17, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[9], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_0_5();
    v19 = *(v18 + 32);
    OUTLINED_FUNCTION_12_3();
    v20();
  }

  v21 = v0[8];
  v22 = v0[6];
  OUTLINED_FUNCTION_5_7();
  *(v3 + 176) = v23;
  *(v3 + 184) = v24;
  outlined init with copy of URL?(v25, v21, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v26 = OUTLINED_FUNCTION_10_6();
  v27 = v0[8];
  if (v26 == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 192) = 0u;
    *(v3 + 208) = 0u;
  }

  else
  {
    *(v3 + 216) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 192));
    OUTLINED_FUNCTION_0_5();
    v29 = *(v28 + 32);
    OUTLINED_FUNCTION_12_3();
    v30();
  }

  OUTLINED_FUNCTION_5_4(MEMORY[0x277D55BF0]);
  OUTLINED_FUNCTION_36_0();
  v0[13] = v31;
  *v31 = v32;
  v31[1] = ModifyContactAttributeCATs.intentHandledModifyNickname(updatedNickname:existingNickname:contactName:modifyOperation:);
  v33 = v0[7];
  v34 = v0[2];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_32_1();

  return v39(v35, v36, v37, v38, v39, v40, v41, v42);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[11];
    v12 = v3[12];
    v15 = v3[9];
    v14 = v3[10];
    v16 = v3[8];

    OUTLINED_FUNCTION_6_4();

    return v17();
  }
}

{
  OUTLINED_FUNCTION_41();
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  OUTLINED_FUNCTION_3();
  v7 = v0[14];

  return v6();
}

uint64_t ModifyContactAttributeCATs.intentHandledModifyRelationship(updatedRelationship:contactName:modifyOperation:isVoiceMode:)()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 104) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v0 + 80) = v3;
  *(v3 + 16) = xmmword_266967350;
  v4 = OUTLINED_FUNCTION_14_3(v3, "updatedRelationship");
  OUTLINED_FUNCTION_27_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_8_4(v6) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v0 + 72), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_12_3();
    v9();
  }

  v10 = *(v0 + 64);
  v11 = *(v0 + 32);
  OUTLINED_FUNCTION_15_2();
  *(v3 + 80) = v12 & 0xFFFFFFFFFFFFLL | 0x4E74000000000000;
  *(v3 + 88) = 0xEB00000000656D61;
  outlined init with copy of URL?(v13, v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v0 + 64), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_0_5();
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_12_3();
    v16();
  }

  v17 = *(v0 + 56);
  v18 = *(v0 + 40);
  OUTLINED_FUNCTION_5_7();
  *(v3 + 128) = v19;
  *(v3 + 136) = v20;
  outlined init with copy of URL?(v21, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v22 = OUTLINED_FUNCTION_10_6();
  v23 = *(v0 + 56);
  if (v22 == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v0 + 56), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_0_5();
    v25 = *(v24 + 32);
    OUTLINED_FUNCTION_12_3();
    v26();
  }

  v27 = *(v0 + 104);
  *(v3 + 176) = 0x4D6563696F567369;
  *(v3 + 184) = 0xEB0000000065646FLL;
  *(v3 + 216) = MEMORY[0x277D839B0];
  *(v3 + 192) = v27;
  OUTLINED_FUNCTION_5_4(MEMORY[0x277D55BF0]);
  OUTLINED_FUNCTION_36_0();
  *(v0 + 88) = v28;
  *v28 = v29;
  v28[1] = ModifyContactAttributeCATs.intentHandledModifyRelationship(updatedRelationship:contactName:modifyOperation:isVoiceMode:);
  v30 = *(v0 + 48);
  v31 = *(v0 + 16);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_32_1();

  return v36(v32, v33, v34, v35, v36, v37, v38, v39);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[9];
    v12 = v3[10];
    v16 = v3 + 7;
    v14 = v3[7];
    v15 = v16[1];

    OUTLINED_FUNCTION_6_4();

    return v17();
  }
}

{
  OUTLINED_FUNCTION_41();
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];

  OUTLINED_FUNCTION_3();
  v6 = v0[12];

  return v5();
}

uint64_t ModifyContactAttributeCATs.promptForNickname()()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  OUTLINED_FUNCTION_5_4(MEMORY[0x277D55BF0]);
  OUTLINED_FUNCTION_36_0();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;
  v5 = MEMORY[0x277D84F90];

  return v7(v2, 0xD000000000000028, 0x800000026696EF40, v5);
}

uint64_t ModifyContactAttributeCATs.promptForRelationship(contact:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ModifyContactAttributeCATs.promptForRelationship(contact:)()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_29_1();
  v0[5] = v2;
  *(v2 + 16) = xmmword_266966D90;
  OUTLINED_FUNCTION_15_2();
  v5 = OUTLINED_FUNCTION_30_1(v3, v4);
  if (v1)
  {
    v5 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v5;
  OUTLINED_FUNCTION_25_0(MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[6] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_9_5(v6);
  OUTLINED_FUNCTION_32_1();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_3();

    return v13();
  }
}

uint64_t ModifyContactAttributeCATs.promptForRelationshipContact(requestedRelationship:)()
{
  OUTLINED_FUNCTION_4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_10_0();
  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_24_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_29_1();
  v0[6] = v1;
  *(v1 + 16) = xmmword_266966D90;
  v2 = OUTLINED_FUNCTION_14_3(v1, "requestedRelationship");
  OUTLINED_FUNCTION_27_0(v2, v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = type metadata accessor for SpeakableString();
  v5 = OUTLINED_FUNCTION_8_4(v4);
  v6 = v0[5];
  if (v5 == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_12_3();
    v9();
  }

  OUTLINED_FUNCTION_5_4(MEMORY[0x277D55BF0]);
  OUTLINED_FUNCTION_36_0();
  v0[7] = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_9_5(v10);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_32_1();

  return v16(v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    OUTLINED_FUNCTION_6_4();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_4();
  v2 = v0[5];
  v1 = v0[6];

  OUTLINED_FUNCTION_3();
  v4 = v0[8];

  return v3();
}

uint64_t ModifyContactAttributeCATs.relationshipExists()()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  OUTLINED_FUNCTION_5_4(MEMORY[0x277D55BF0]);
  OUTLINED_FUNCTION_36_0();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;
  v5 = MEMORY[0x277D84F90];

  return v7(v2, 0xD000000000000029, 0x800000026696EE80, v5);
}

uint64_t ModifyContactAttributeCATs.relationshipNotFound(contact:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ModifyContactAttributeCATs.relationshipNotFound(contact:)()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_29_1();
  v0[5] = v2;
  *(v2 + 16) = xmmword_266966D90;
  OUTLINED_FUNCTION_15_2();
  v5 = OUTLINED_FUNCTION_30_1(v3, v4);
  if (v1)
  {
    v5 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v5;
  OUTLINED_FUNCTION_25_0(MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[6] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_9_5(v6);
  OUTLINED_FUNCTION_32_1();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t ModifyContactAttributeCATs.unsupportedAttributeToModify(device:contactsAppUnavailable:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ModifyContactAttributeCATs.unsupportedAttributeToModify(device:contactsAppUnavailable:)()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_266966ED0;
  OUTLINED_FUNCTION_31_1();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = 0;
  if (v1)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v7 = *(v0 + 64);
  *(v2 + 48) = v1;
  *(v2 + 88) = 0x800000026696EE30;
  *(v2 + 120) = MEMORY[0x277D839B0];
  *(v2 + 96) = v7;
  v8 = *(MEMORY[0x277D55BF0] + 4);
  v13 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);
  *(v2 + 72) = v6;
  *(v2 + 80) = 0xD000000000000016;

  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 48) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_9_5(v9);

  return v13(v11, 0xD000000000000033, 0x800000026696EDF0, v2);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_3();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_3();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t ModifyContactAttributeCATs.unsupportedDeviceIdiom(contactAttributeType:device:)()
{
  OUTLINED_FUNCTION_4();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_10_0();
  v8 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  v1 = v0[6];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_266966ED0;
  v4 = OUTLINED_FUNCTION_14_3(v3, "contactAttributeType");
  OUTLINED_FUNCTION_27_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  v7 = OUTLINED_FUNCTION_8_4(v6);
  v8 = v0[6];
  if (v7 == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_12_3();
    v11();
  }

  v12 = v0[4];
  OUTLINED_FUNCTION_31_1();
  *(v3 + 80) = v13;
  *(v3 + 88) = v14;
  v15 = 0;
  if (v12)
  {
    v15 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  *(v3 + 96) = v12;
  *(v3 + 120) = v15;
  v21 = OUTLINED_FUNCTION_25_0(MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[8] = v16;
  *v16 = v17;
  v16[1] = ModifyContactAttributeCATs.unsupportedDeviceIdiom(contactAttributeType:device:);
  v18 = v0[5];
  v19 = v0[2];

  return (v21)(v19, 0xD00000000000002DLL, 0x800000026696F0E0, v3);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];

    OUTLINED_FUNCTION_6_4();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_4();
  v2 = v0[6];
  v1 = v0[7];

  OUTLINED_FUNCTION_3();
  v4 = v0[9];

  return v3();
}

uint64_t ModifyContactAttributeCATs.unsupportedMissingMeCard(contactAttributeType:)()
{
  OUTLINED_FUNCTION_4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_10_0();
  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_24_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_29_1();
  v0[6] = v1;
  *(v1 + 16) = xmmword_266966D90;
  v2 = OUTLINED_FUNCTION_14_3(v1, "contactAttributeType");
  OUTLINED_FUNCTION_27_0(v2, v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = type metadata accessor for SpeakableString();
  v5 = OUTLINED_FUNCTION_8_4(v4);
  v6 = v0[5];
  if (v5 == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_12_3();
    v9();
  }

  OUTLINED_FUNCTION_5_4(MEMORY[0x277D55BF0]);
  OUTLINED_FUNCTION_36_0();
  v0[7] = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_9_5(v10);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_32_1();

  return v16(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t ModifyContactAttributeCATs.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_12_3();
  return ModifyContactAttributeCATs.init(templateDir:options:globals:)(v3, v4);
}

uint64_t ModifyContactAttributeCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_18_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  outlined init with copy of URL?(a1, &v17 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v5 + 16))(v8, a2, v4);
  v15 = ContactsCommonCATs.init(templateDir:options:globals:)(v14, v8);
  (*(v5 + 8))(a2, v4);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v15;
}

uint64_t ModifyContactAttributeCATs.__deallocating_deinit()
{
  v0 = CATWrapper.deinit();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t type metadata accessor for ModifyContactAttributeCATs()
{
  result = type metadata singleton initialization cache for ModifyContactAttributeCATs;
  if (!type metadata singleton initialization cache for ModifyContactAttributeCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_9_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_10_6()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_14_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = v2;
  *(result + 40) = (a2 - 32) | 0x8000000000000000;
  return result;
}

double OUTLINED_FUNCTION_22_1()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return outlined init with copy of URL?(v4, v5, a3, a4);
}

uint64_t *OUTLINED_FUNCTION_28_1()
{
  *(v1 + 72) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 48));
}

uint64_t OUTLINED_FUNCTION_29_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_30_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
  *(a1 + 40) = 0xE700000000000000;
  return 0;
}

uint64_t ContactsBirthdayInfo.__allocating_init(contact:shouldAccountForYearless:)(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v53 - v8;
  v10 = type metadata accessor for DateComponents();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = OUTLINED_FUNCTION_18_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v24 = type metadata accessor for Date();
  v25 = OUTLINED_FUNCTION_1_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  v31 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  CNContact.timezonedBirthdate.getter(v23);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) != 1)
  {
    (*(v27 + 32))(v31, v23, v24);
    v33 = a1;
    if (a2)
    {
      CNContact.timezonedBirthday.getter(v9);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
      {
        outlined destroy of UsoEntity_common_Person.DefinedValues?(v9, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      }

      else
      {
        (*(v13 + 32))(v17, v9, v10);
        DateComponents.year.getter();
        if (v34)
        {
          v35 = type metadata accessor for DialogDateFormatter.Builder();
          OUTLINED_FUNCTION_2_6(v35);
          DialogDateFormatter.Builder.init()();
          dispatch thunk of DialogDateFormatter.Builder.withOmitYear(_:)();
          v54 = v13;

          dispatch thunk of DialogDateFormatter.Builder.build()();

          v36 = type metadata accessor for ContactsBirthdayInfo.Builder(0);
          v37 = OUTLINED_FUNCTION_2_6(v36);
          *(v37 + 16) = 0;
          v38 = OBJC_IVAR____TtCC19SiriContactsIntents20ContactsBirthdayInfo7Builder_durationUntilBirthday;
          v39 = type metadata accessor for SpeakableString();
          __swift_storeEnumTagSinglePayload(v37 + v38, 1, 1, v39);
          v40 = type metadata accessor for DialogCalendar.Builder();
          OUTLINED_FUNCTION_2_6(v40);
          DialogCalendar.Builder.init()();

          dispatch thunk of DialogCalendar.Builder.withDateFormatter(_:)();
          v53 = v33;

          Date.timeIntervalSince1970.getter();
          v41 = dispatch thunk of DialogCalendar.Builder.withSecs(_:)();

          v42 = ContactsBirthdayInfo.Builder.withBirthday(_:)(v41);

          v43 = type metadata accessor for ContactsBirthdayInfo(0);
          OUTLINED_FUNCTION_2_6(v43);
          v32 = ContactsBirthdayInfo.init(builder:)(v42);

          (*(v54 + 8))(v17, v10);
LABEL_10:
          (*(v27 + 8))(v31, v24);
          return v32;
        }

        (*(v13 + 8))(v17, v10);
      }
    }

    v44 = type metadata accessor for ContactsBirthdayInfo.Builder(0);
    v45 = OUTLINED_FUNCTION_2_6(v44);
    *(v45 + 16) = 0;
    v46 = OBJC_IVAR____TtCC19SiriContactsIntents20ContactsBirthdayInfo7Builder_durationUntilBirthday;
    v47 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v45 + v46, 1, 1, v47);
    v48 = type metadata accessor for DialogCalendar.Builder();
    OUTLINED_FUNCTION_2_6(v48);
    DialogCalendar.Builder.init()();
    Date.timeIntervalSince1970.getter();
    v49 = dispatch thunk of DialogCalendar.Builder.withSecs(_:)();

    v50 = ContactsBirthdayInfo.Builder.withBirthday(_:)(v49);

    v51 = type metadata accessor for ContactsBirthdayInfo(0);
    OUTLINED_FUNCTION_2_6(v51);
    v32 = ContactsBirthdayInfo.init(builder:)(v50);

    goto LABEL_10;
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return 0;
}

void DialogCalendar.init(contact:mockGlobals:)(void *a1, void *a2)
{
  v121 = a2;
  v3 = type metadata accessor for Date();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v119 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v117 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v118 = &v114 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = OUTLINED_FUNCTION_18_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  v18 = v16 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v114 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v114 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v26 = OUTLINED_FUNCTION_18_0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v114 - v29;
  v31 = type metadata accessor for DateComponents();
  v32 = OUTLINED_FUNCTION_1_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_4();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v114 - v41;
  v120 = a1;
  CNContact.timezonedBirthday.getter(v30);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v30, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.siriContacts);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      *OUTLINED_FUNCTION_30() = 0;
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v46, v47, "[DialogCalendar] no birthday set, returning nil");
      OUTLINED_FUNCTION_11_1();
    }

    return;
  }

  v115 = v31;
  v116 = v34;
  (*(v34 + 32))(v42, v30, v31);
  static DateComponents.startOfToday.getter();
  DateComponents.year.getter();
  if ((v48 & 1) == 0)
  {
    DateComponents.year.setter();
    DateComponents.yearForWeekOfYear.setter();
    DateComponents.date.getter();
    if (__swift_getEnumTagSinglePayload(v24, 1, v3) == 1)
    {
      v49 = v24;
LABEL_12:
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v49, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_13;
    }

    Date.timeIntervalSince1970.getter();
    v51 = v50;
    v52 = *(v119 + 8);
    v52(v24, v3);
    DateComponents.date.getter();
    if (__swift_getEnumTagSinglePayload(v22, 1, v3) == 1)
    {
      v49 = v22;
      goto LABEL_12;
    }

    Date.timeIntervalSince1970.getter();
    v84 = v83;
    v52(v22, v3);
    v85 = DateComponents.year.getter();
    if ((v86 & 1) == 0)
    {
      v87 = v85;
      v88 = type metadata accessor for DialogCalendar.Builder();
      OUTLINED_FUNCTION_2_6(v88);
      DialogCalendar.Builder.init()();
      dispatch thunk of DialogCalendar.Builder.withSecs(_:)();

      v89 = type metadata accessor for DialogCalendar();
      OUTLINED_FUNCTION_2_6(v89);
      DialogCalendar.init(builder:)();
      if (v121)
      {
        v90 = v121;
        dispatch thunk of DialogCalendar.mockGlobals.setter();
      }

      if (v51 >= v84 || (dispatch thunk of DialogCalendar.isYesterday.getter() & 1) != 0)
      {
        v91 = 0;
      }

      else
      {
        v91 = dispatch thunk of DialogCalendar.withinPastWeek.getter() ^ 1;
      }

      v92 = DateComponents.month.getter();
      v94 = v93;
      v95 = DateComponents.month.getter();
      if (v94)
      {
        if ((v96 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else if ((v96 & 1) != 0 || v92 != v95)
      {
        goto LABEL_48;
      }

      v97 = DateComponents.day.getter();
      v99 = v98;
      v100 = DateComponents.day.getter();
      if (v99)
      {
        if (v101 & 1) != 0 || ((v91 ^ 1))
        {
          goto LABEL_49;
        }

        goto LABEL_42;
      }

      if ((v101 & 1) == 0)
      {
        if ((v91 & (v97 != v100)) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_42;
      }

LABEL_48:
      if ((v91 & 1) == 0)
      {
LABEL_49:
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2();
        }

        v108 = type metadata accessor for Logger();
        __swift_project_value_buffer(v108, static Logger.siriContacts);
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = OUTLINED_FUNCTION_30();
          *v111 = 0;
          OUTLINED_FUNCTION_6_5(&dword_26686A000, v112, v113, "[DialogCalendar] birthday has not passed yet this year, keep birthday year as current year");
          MEMORY[0x26D5E3300](v111, -1, -1);
        }

LABEL_54:

        goto LABEL_13;
      }

LABEL_42:
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v102 = type metadata accessor for Logger();
      __swift_project_value_buffer(v102, static Logger.siriContacts);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = OUTLINED_FUNCTION_30();
        *v105 = 0;
        OUTLINED_FUNCTION_6_5(&dword_26686A000, v106, v107, "[DialogCalendar] birthday passed already this year, set the birthday year to next year");
        MEMORY[0x26D5E3300](v105, -1, -1);
      }

      if (__OFADD__(v87, 1))
      {
        __break(1u);
        return;
      }

      DateComponents.year.setter();
      DateComponents.yearForWeekOfYear.setter();
      goto LABEL_54;
    }
  }

LABEL_13:
  DateComponents.date.getter();
  if (__swift_getEnumTagSinglePayload(v18, 1, v3) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.siriContacts);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v115;
    v58 = v116;
    if (v56)
    {
      *OUTLINED_FUNCTION_30() = 0;
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v59, v60, "[DialogCalendar] no date set for timezoned birthday, returning nil");
      OUTLINED_FUNCTION_11_1();
    }

    v61 = *(v58 + 8);
    v61(v39, v57);
    v61(v42, v57);
  }

  else
  {
    v63 = v118;
    v62 = v119;
    (*(v119 + 32))(v118, v18, v3);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Logger.siriContacts);
    v65 = v117;
    (*(v62 + 16))(v117, v63, v3);
    v66 = Logger.logObject.getter();
    v67 = v3;
    v68 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v68))
    {
      v69 = v65;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v122 = v71;
      *v70 = 136315138;
      lazy protocol witness table accessor for type Date and conformance Date();
      v72 = v42;
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v114 = v39;
      v75 = v74;
      v76 = *(v119 + 8);
      v76(v69, v67);
      v77 = v73;
      v42 = v72;
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v75, &v122);
      v39 = v114;

      *(v70 + 4) = v78;
      _os_log_impl(&dword_26686A000, v66, v68, "[DialogCalendar] timezonedBirthdate: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      v79 = v71;
      v63 = v118;
      MEMORY[0x26D5E3300](v79, -1, -1);
      OUTLINED_FUNCTION_11_1();
    }

    else
    {

      v76 = *(v62 + 8);
      v76(v65, v67);
    }

    v80 = type metadata accessor for DialogCalendar.Builder();
    OUTLINED_FUNCTION_2_6(v80);
    DialogCalendar.Builder.init()();
    Date.timeIntervalSince1970.getter();
    dispatch thunk of DialogCalendar.Builder.withSecs(_:)();

    dispatch thunk of DialogCalendar.__allocating_init(builder:)();
    if (v121)
    {
      dispatch thunk of DialogCalendar.mockGlobals.setter();
    }

    v76(v63, v67);
    v81 = v115;
    v82 = *(v116 + 8);
    v82(v39, v115);
    v82(v42, v81);
  }
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_6_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_7_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t GetContactAttributeNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for Parse();
  v4[11] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v4[12] = v6;
  v8 = *(v7 + 64);
  v4[13] = OUTLINED_FUNCTION_10_0();
  v9 = type metadata accessor for Input();
  v4[14] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v4[15] = v10;
  v12 = *(v11 + 64);
  v4[16] = OUTLINED_FUNCTION_10_0();
  v13 = type metadata accessor for ParameterIdentifier();
  v4[17] = v13;
  OUTLINED_FUNCTION_1_1(v13);
  v4[18] = v14;
  v16 = *(v15 + 64);
  v4[19] = OUTLINED_FUNCTION_10_0();
  v17 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t GetContactAttributeNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v51 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 72);
  *(v0 + 160) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v5 = ParameterIdentifier.name.getter();
  v7 = v6;
  (*(v1 + 8))(v2, v3);

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  v9.value = GetContactAttributeSlots.init(rawValue:)(v8).value;
  *(v0 + 201) = v9;
  if (v9.value == SiriContactsIntents_GetContactAttributeSlots_unknownDefault)
  {
    v10 = *(v0 + 152);
    v11 = *(v0 + 128);
    v12 = *(v0 + 104);
    type metadata accessor for ContactsError();
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    swift_allocError();
    *v13 = v5;
    v13[1] = v7;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_13_0();

    __asm { BRAA            X1, X16 }
  }

  value = v9.value;

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v17 = type metadata accessor for Logger();
  *(v0 + 168) = __swift_project_value_buffer(v17, static Logger.siriContacts);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_24();
    v21 = OUTLINED_FUNCTION_23();
    v50[0] = v21;
    *v20 = 136315138;
    *(v0 + 200) = value;
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v50);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_26686A000, v18, v19, "#GetContactAttributeNeedsValueStrategy Slot: %s.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  (*(*(v0 + 120) + 16))(*(v0 + 128), *(v0 + 64), *(v0 + 112));
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 120);
  v29 = *(v0 + 128);
  v30 = *(v0 + 112);
  if (v27)
  {
    v31 = *(v0 + 104);
    v32 = *(v0 + 88);
    v33 = OUTLINED_FUNCTION_24();
    v50[0] = OUTLINED_FUNCTION_23();
    v34 = v50[0];
    *v33 = 136315138;
    Input.parse.getter();
    v35 = String.init<A>(describing:)();
    v37 = v36;
    (*(v28 + 8))(v29, v30);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v50);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_26686A000, v25, v26, "#GetContactAttributeNeedsValueStrategy Parse: %s.", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v28 + 8))(v29, v30);
  }

  v39 = *(v0 + 104);
  v40 = *(v0 + 72);
  v41 = *(v0 + 80);
  v42 = *(v0 + 64);
  Input.parse.getter();
  *(v0 + 176) = ParameterResolutionRecord.intent.getter();
  v43 = swift_task_alloc();
  *(v0 + 184) = v43;
  *v43 = v0;
  v43[1] = GetContactAttributeNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
  v44 = *(v0 + 104);
  OUTLINED_FUNCTION_13_0();

  return Parse.toSiriKitIntent(referenceResolver:previousIntent:)(v45, v46, v47);
}

{
  v1 = *v0;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = v4[23];
  v6 = v4[22];
  v7 = v4[13];
  v8 = v4[12];
  v9 = v4[11];
  v10 = *v0;
  OUTLINED_FUNCTION_12_0();
  *v11 = v10;
  *(v13 + 192) = v12;

  (*(v8 + 8))(v7, v9);
  v14 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  v40 = v0;
  v1 = *(v0 + 192);
  if (v1)
  {
    type metadata accessor for GetContactAttributeIntent();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;
      GetContactAttributeSlots.rawValue.getter(*(v0 + 201));
      if (v5 == 0x6374614D69726973 && v4 == 0xEB00000000736568)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v16 = *(v0 + 160);
      v17 = *(v0 + 72);
      v18 = ParameterResolutionRecord.intent.getter();
      v19 = [v18 contactAttributeToGet];

      [v3 setContactAttributeToGet_];
LABEL_15:
      v20 = *(v0 + 168);
      v21 = v1;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = OUTLINED_FUNCTION_24();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v3;
        *v25 = v3;
        v26 = v21;
        _os_log_impl(&dword_26686A000, v22, v23, "#GetContactAttributeNeedsValueStrategy Converted ContactIntent to SK intent: %@", v24, 0xCu);
        outlined destroy of UsoEntity_common_Person.DefinedValues?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      v27 = *(v0 + 201);
      v28 = *(v0 + 160);
      v29 = *(v0 + 72);
      v30 = *(v0 + 56);

      v31 = ParameterResolutionRecord.intent.getter();
      *(v0 + 40) = &type metadata for GetContactAttributeSlots;
      *(v0 + 48) = &protocol witness table for GetContactAttributeSlots;
      *(v0 + 16) = v27;
      specialized SiriKitContactIntent.value(forSlot:)(v39, v0 + 16);

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
      goto LABEL_18;
    }
  }

  v8 = *(v0 + 168);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_24();
    v12 = OUTLINED_FUNCTION_23();
    *&v39[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026696F160, v39);
    _os_log_impl(&dword_26686A000, v9, v10, "#GetContactAttributeNeedsValueStrategy parseValueResponse: failed to convert parse to expected intent type %s, returning empty answeredValue and same intent", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v13 = *(v0 + 160);
  v14 = *(v0 + 72);
  v15 = *(v0 + 56);
  memset(v39, 0, sizeof(v39));
  ParameterResolutionRecord.intent.getter();
  type metadata accessor for GetContactAttributeIntent();
LABEL_18:
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();
  v32 = *(v0 + 152);
  v33 = *(v0 + 128);
  v34 = *(v0 + 104);
  v35 = *(v0 + 56);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVy0A15ContactsIntents019GetContactAttributeD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVy0A15ContactsIntents019GetContactAttributeD0CGMR);
  OUTLINED_FUNCTION_11_5(v36);

  OUTLINED_FUNCTION_3();

  return v37();
}

uint64_t GetContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for NLContextUpdate();
  v3[5] = v4;
  OUTLINED_FUNCTION_1_1(v4);
  v3[6] = v5;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  v3[9] = OUTLINED_FUNCTION_10_0();
  v9 = type metadata accessor for TemplatingResult();
  v3[10] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v3[11] = v10;
  v12 = *(v11 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v13 = type metadata accessor for ParameterIdentifier();
  v3[14] = v13;
  OUTLINED_FUNCTION_1_1(v13);
  v3[15] = v14;
  v16 = *(v15 + 64);
  v3[16] = OUTLINED_FUNCTION_10_0();
  v17 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t GetContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  v64 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 24);
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v5 = ParameterIdentifier.name.getter();
  v7 = v6;
  (*(v2 + 8))(v1, v3);

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  v9.value = GetContactAttributeSlots.init(rawValue:)(v8).value;
  if (v9.value == SiriContactsIntents_GetContactAttributeSlots_unknownDefault)
  {
    type metadata accessor for ContactsError();
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    OUTLINED_FUNCTION_15_1();
    *v10 = v5;
LABEL_3:
    v10[1] = v7;
    goto LABEL_4;
  }

  value = v9.value;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriContacts);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v61 = v5;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_24();
    v18 = OUTLINED_FUNCTION_23();
    v63 = v18;
    *v17 = 136315138;
    *(v0 + 176) = value;
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v63);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_26686A000, v15, v16, "#GetContactAttributeNeedsValueStrategy Slot: %s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  if (value == SiriContactsIntents_GetContactAttributeSlots_contactAttributeToGet)
  {
    v22 = *(v0 + 24);
    v23 = ParameterResolutionRecord.intent.getter();
    GetContactAttributeIntent.requestedName.getter();
    v25 = v24;

    if (v25)
    {
    }

    else
    {
      v38 = *(v0 + 24);
      v39 = ParameterResolutionRecord.intent.getter();
      isa = [v39 isMe];

      if (!isa)
      {
        type metadata accessor for NSNumber();
        isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
      }

      v41 = [(objc_class *)isa BOOLValue:v61];

      if (v41)
      {
        v42 = *(v0 + 32);

        v43 = v42[10];
        v44 = v42[11];
        __swift_project_boxed_opaque_existential_1(v42 + 7, v43);
        v45 = (*(v44 + 24))(v43, v44);
        if (!v45)
        {
          type metadata accessor for ContactsError();
          lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
          OUTLINED_FUNCTION_15_1();
LABEL_4:
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          OUTLINED_FUNCTION_5_8();

          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_13_0();

          __asm { BRAA            X1, X16 }
        }

        v46 = v45;
        CNContact.formattedFullName.getter();
      }

      else
      {
        v51 = *(v0 + 24);
        v52 = ParameterResolutionRecord.intent.getter();
        v53 = outlined bridged method (ob) of @objc ContactAttribute.handleLabel.getter(v52, &selRef_contactIdentifier);
        if (!v54)
        {
          goto LABEL_29;
        }

        v55 = v53;
        v56 = v54;
        v57 = *(v0 + 32);
        v58 = v57[10];
        v59 = v57[11];
        __swift_project_boxed_opaque_existential_1(v57 + 7, v58);
        v60 = (*(v59 + 8))(v55, v56, v58, v59);

        if (!v60)
        {
LABEL_29:
          type metadata accessor for ContactsError();
          lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
          OUTLINED_FUNCTION_15_1();
          *v10 = v62;
          goto LABEL_3;
        }

        CNContact.formattedFullName.getter();
      }
    }

    v26 = *(v0 + 72);
    v27 = *(v0 + 24);
    v28 = *(*(v0 + 32) + 96);
    SpeakableString.init(print:speak:)();
    v29 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_11_5(v29);
    v30 = ParameterResolutionRecord.intent.getter();
    v31 = [v30 isMe];

    if (v31)
    {
      [v31 BOOLValue];
    }

    v47 = swift_task_alloc();
    *(v0 + 144) = v47;
    *v47 = v0;
    v47[1] = GetContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
    v48 = *(v0 + 104);
    v49 = *(v0 + 72);
    OUTLINED_FUNCTION_13_0();

    return GetContactAttributeCATs.promptForContactAttribute(contactName:isMe:)();
  }

  else
  {
    v32 = *(v0 + 32);

    v33 = *(v32 + 96);
    v34 = swift_task_alloc();
    *(v0 + 160) = v34;
    *v34 = v0;
    v34[1] = GetContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
    v35 = *(v0 + 96);
    OUTLINED_FUNCTION_13_0();

    return ContactsCommonCATs.promptForContact()();
  }
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *(v2 + 144);
  *v4 = *v1;
  *(v3 + 152) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v2 + 72), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    v6 = GetContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  else
  {
    v6 = GetContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[8];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v7 = ParameterResolutionRecord.intent.getter();
  v8 = outlined bridged method (ob) of @objc ContactAttribute.handleLabel.getter(v7, &selRef_contactIdentifier);
  static ContactsContextProvider.needsValueGetContactAttribute(contactIdentifier:contactAttributeValue:contactTypeValue:)(v8, v9, 0, 0, 0, 0);

  v10 = type metadata accessor for AceOutput();
  v11 = MEMORY[0x277D5C1D8];
  v6[3] = v10;
  v6[4] = v11;
  __swift_allocate_boxed_opaque_existential_1(v6);
  specialized ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)(v2, v3);
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[16];
  v15 = v0[10];
  v16 = v0[11];
  v17 = v0[9];
  v18 = v0[7];
  (*(v0[6] + 8))(v0[8], v0[5]);
  (*(v16 + 8))(v12, v15);

  OUTLINED_FUNCTION_3();

  return v19();
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  *(v9 + 168) = v0;

  if (v0)
  {
    v10 = GetContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  else
  {
    v10 = GetContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

{
  v1 = v0[17];
  v2 = v0[3];
  v3 = ParameterResolutionRecord.intent.getter();
  v4 = [v3 contactAttributeToGet];

  if (v4 && (v5 = v4, v6 = outlined bridged method (ob) of @objc ContactAttribute.handleLabel.getter(v5, &selRef_handleLabel), v8 = v7, v9 = [v5 contactAttributeType], v8))
  {
    v10 = v9;
    v11 = String.mapToNLAttributeValue(forType:)(v9, v6, v8);
    v13 = v12;
    v14 = String.mapToNLContactTypeValue(forType:)(v10, v6, v8);
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v11 = 0;
    v13 = 0;
  }

  v17 = v0[12];
  v18 = v0[7];
  v19 = v0[4];
  v20 = v0[2];
  static ContactsContextProvider.needsValueGetContactAttribute(contactIdentifier:contactAttributeValue:contactTypeValue:)(0, 0, v11, v13, v14, v16);

  v21 = type metadata accessor for AceOutput();
  v22 = MEMORY[0x277D5C1D8];
  v20[3] = v21;
  v20[4] = v22;
  __swift_allocate_boxed_opaque_existential_1(v20);
  specialized ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)(v17, v18);

  v23 = v0[16];
  v25 = v0[12];
  v24 = v0[13];
  v26 = v0[10];
  v27 = v0[11];
  v29 = v0[8];
  v28 = v0[9];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v27 + 8))(v25, v26);

  OUTLINED_FUNCTION_3();

  return v30();
}

{
  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_5_8();

  OUTLINED_FUNCTION_3();

  return v2();
}

{
  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_5_8();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t GetContactAttributeNeedsValueStrategy.__deallocating_deinit()
{
  v0 = specialized ContactsStrategy.deinit();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 192));

  return MEMORY[0x2821FE8D8](v0, 232, 7);
}

uint64_t type metadata accessor for GetContactAttributeNeedsValueStrategy()
{
  result = type metadata singleton initialization cache for GetContactAttributeNeedsValueStrategy;
  if (!type metadata singleton initialization cache for GetContactAttributeNeedsValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc ContactAttribute.handleLabel.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t OUTLINED_FUNCTION_5_8()
{
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t ContactsUnsetRelationshipFlowStrategy.parseRequestedRelationship(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return OUTLINED_FUNCTION_8_5(ContactsUnsetRelationshipFlowStrategy.parseRequestedRelationship(resolveRecord:));
}

uint64_t ContactsUnsetRelationshipFlowStrategy.parseRequestedRelationship(resolveRecord:)()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(v1 + 320);
  type metadata accessor for ParameterResolutionRecord();
  v4 = ParameterResolutionRecord.intent.getter();
  v5 = (*(*(v1 + 336) + 16))(v3);
  v7 = v6;

  if (v7)
  {
    v8 = v0[4];
    v9 = v0[2];
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5value_10Foundation6LocaleV6localetMd, _sSS5value_10Foundation6LocaleV6localetMR) + 48);
    *v9 = v5;
    v9[1] = v7;
    v11 = v8[6];
    __swift_project_boxed_opaque_existential_1(v8 + 2, v8[5]);
    dispatch thunk of DeviceState.siriLocale.getter();
    v12 = *MEMORY[0x277D5BD90];
    v13 = type metadata accessor for RelationshipLabel();
    OUTLINED_FUNCTION_52(v13);
    (*(v14 + 104))(v9, v12);
    OUTLINED_FUNCTION_6_4();
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v16 = type metadata accessor for Logger();
    v17 = OUTLINED_FUNCTION_52_0(v16, static Logger.siriContacts);
    v18 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_15_0(v18))
    {
      v19 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v19);
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v20, v21, "#ContactsUnsetRelationshipFlowStrategy parseRequestedRelationship throwing error");
      OUTLINED_FUNCTION_11_1();
    }

    type metadata accessor for ContactsError();
    OUTLINED_FUNCTION_1_7();
    lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(v22, v23);
    OUTLINED_FUNCTION_73();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    OUTLINED_FUNCTION_3();
  }

  return v15();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.applyPersonToIntent(person:requestedRelationship:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *v4;
  return OUTLINED_FUNCTION_8_5(ContactsUnsetRelationshipFlowStrategy.applyPersonToIntent(person:requestedRelationship:resolveRecord:));
}

uint64_t ContactsUnsetRelationshipFlowStrategy.applyPersonToIntent(person:requestedRelationship:resolveRecord:)()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v31 = v0[2];
  v4 = *(v0[6] + 320);
  type metadata accessor for ParameterResolutionRecord();
  v5 = ParameterResolutionRecord.intent.getter();
  v6 = [v2 firstName];
  v7 = MEMORY[0x26D5E2470](0x6D614E7473726966, 0xE900000000000065);
  [v5 setValue:v6 forKey:v7];

  v8 = OUTLINED_FUNCTION_64();
  v9 = [v2 fullName];
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_17_2(v10);

  v11 = OUTLINED_FUNCTION_64();
  v12 = [v2 lastName];
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_17_2(v13);

  v14 = OUTLINED_FUNCTION_64();
  v15 = [v2 middleName];
  v16 = MEMORY[0x26D5E2470](0x614E656C6464696DLL, 0xEA0000000000656DLL);
  OUTLINED_FUNCTION_17_2(v16);

  v17 = OUTLINED_FUNCTION_64();
  v18 = [v2 nickName];
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_17_2(v19);

  v20 = OUTLINED_FUNCTION_64();
  v21 = RelationshipLabel.asUnboundedSemanticValue.getter();
  v22 = MEMORY[0x26D5E2470](v21);

  v23 = MEMORY[0x26D5E2470](0x52746361746E6F63, 0xEF6E6F6974616C65);
  [v20 setValue:v22 forKey:v23];

  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
  v24 = v2;
  OUTLINED_FUNCTION_64();
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();
  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  OUTLINED_FUNCTION_6_4();

  return v29();
}

void ContactsUnsetRelationshipFlowStrategy.actionForPromptForNameInput(_:resolveRecord:)()
{
  OUTLINED_FUNCTION_34_1();
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v2 = type metadata accessor for Logger();
  v3 = OUTLINED_FUNCTION_52_0(v2, static Logger.siriContacts);
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_30();
    *v5 = 0;
    _os_log_impl(&dword_26686A000, v3, v4, v1, v5, 2u);
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_14();

  ContactsUnsetRelationshipFlowStrategy.unsetRelationshipActionForInput(_:resolveRecord:shouldExpectPerson:)();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.parseUnsetRelationshipPersonFromResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for Parse();
  v0[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_10_0();
  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_19_1();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  Input.parse.getter();
  static UnsetRelationshipPerson.from(parse:)(v1, v5);
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_22_0();
  v8(v7);

  OUTLINED_FUNCTION_6_4();

  return v9();
}

uint64_t static UnsetRelationshipPerson.from(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow23UnsetRelationshipPersonVSgMd, &_s11SiriKitFlow23UnsetRelationshipPersonVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v112 - v5;
  v139 = type metadata accessor for UnsetRelationshipPerson();
  v114 = *(v139 - 8);
  v7 = *(v114 + 64);
  MEMORY[0x28223BE20](v139);
  v115 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v122 = &v112 - v11;
  v123 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v117 = *(v123 - 8);
  v12 = *(v117 + 64);
  MEMORY[0x28223BE20](v123);
  v116 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for USOParse();
  v133 = *(v124 - 8);
  v14 = *(v133 + 64);
  MEMORY[0x28223BE20](v124);
  v132 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v127 = &v112 - v18;
  v19 = type metadata accessor for ContactNLv3Intent();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v126 = (&v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = type metadata accessor for PersonIntentNode();
  v121 = *(v128 - 8);
  v22 = *(v121 + 64);
  MEMORY[0x28223BE20](v128);
  v120 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for NLIntent();
  v130 = *(v24 - 8);
  v131 = v24;
  v25 = *(v130 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v125 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v129 = &v112 - v28;
  v29 = type metadata accessor for Parse();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v119 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v138 = &v112 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v134 = &v112 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v112 - v38;
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  v41 = __swift_project_value_buffer(v40, static Logger.siriContacts);
  v42 = *(v30 + 16);
  v137 = a1;
  v42(v39, a1, v29);
  v135 = v41;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v113 = v6;
    v112 = v46;
    v140[0] = v46;
    *v45 = 136315138;
    v42(v134, v39, v29);
    v47 = String.init<A>(describing:)();
    v49 = v48;
    v118 = *(v30 + 8);
    v118(v39, v29);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v140);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_26686A000, v43, v44, "#ContactsUnsetRelationshipFlowStrategy parse: %s", v45, 0xCu);
    v51 = v112;
    __swift_destroy_boxed_opaque_existential_0Tm(v112);
    v6 = v113;
    MEMORY[0x26D5E3300](v51, -1, -1);
    MEMORY[0x26D5E3300](v45, -1, -1);
  }

  else
  {

    v118 = *(v30 + 8);
    v118(v39, v29);
  }

  v52 = v137;
  v53 = v138;
  v42(v138, v137, v29);
  v54 = (*(v30 + 88))(v53, v29);
  if (v54 == *MEMORY[0x277D5C128])
  {
    (*(v30 + 96))(v53, v29);
    v56 = v129;
    v55 = v130;
    v57 = v131;
    (*(v130 + 32))(v129, v53, v131);
    v58 = v125;
    (*(v55 + 16))(v125, v56, v57);
    v59 = v126;
    v60 = ContactNLv3Intent.init(intent:)(v58, v126);
    v61 = v127;
    ContactNLv3Intent.person.getter(v60, v62, v63, v64, v65, v66, v67, v68, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_0(v59, type metadata accessor for ContactNLv3Intent);
    v69 = v128;
    if (__swift_getEnumTagSinglePayload(v61, 1, v128) != 1)
    {
      v80 = v121;
      v81 = v120;
      (*(v121 + 32))(v120, v61, v69);
      v140[3] = v69;
      v140[4] = MEMORY[0x277D5E660];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v140);
      (*(v80 + 16))(boxed_opaque_existential_1, v81, v69);
      v83 = v136;
      static UnsetRelationshipPerson.from(personNode:)();
      (*(v80 + 8))(v81, v69);
      (*(v55 + 8))(v56, v57);
      __swift_destroy_boxed_opaque_existential_0Tm(v140);
      v84 = v83;
      v85 = 0;
LABEL_23:
      v105 = v139;
      return __swift_storeEnumTagSinglePayload(v84, v85, 1, v105);
    }

    outlined destroy of ResponseMode?(v61, &_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_26686A000, v70, v71, "#ContactsUnsetRelationshipFlowStrategy Found no Person Node in NLv3 Intent, returning nil for UnsetRelationshipPerson", v72, 2u);
      MEMORY[0x26D5E3300](v72, -1, -1);
    }

    (*(v55 + 8))(v56, v57);
LABEL_22:
    v84 = v136;
    v85 = 1;
    goto LABEL_23;
  }

  if (v54 == *MEMORY[0x277D5C160])
  {
    (*(v30 + 96))(v53, v29);
    (*(v133 + 32))(v132, v53, v124);
    v73 = v122;
    USOParse.preferredUserDialogAct.getter(v122);
    v74 = v73;
    v75 = v73;
    v76 = v123;
    if (__swift_getEnumTagSinglePayload(v75, 1, v123) == 1)
    {
      v77 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd;
      v78 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR;
      v79 = v74;
    }

    else
    {
      v100 = v117;
      v101 = v116;
      (*(v117 + 32))(v116, v74, v76);
      static UnsetRelationshipPerson.from(userDialogAct:)(v6);
      (*(v100 + 8))(v101, v76);
      if (__swift_getEnumTagSinglePayload(v6, 1, v139) != 1)
      {
        (*(v133 + 8))(v132, v124);
        v108 = *(v114 + 32);
        v109 = v115;
        v110 = v139;
        v108(v115, v6, v139);
        v111 = v136;
        v108(v136, v109, v110);
        v84 = v111;
        v85 = 0;
        v105 = v110;
        return __swift_storeEnumTagSinglePayload(v84, v85, 1, v105);
      }

      v77 = &_s11SiriKitFlow23UnsetRelationshipPersonVSgMd;
      v78 = &_s11SiriKitFlow23UnsetRelationshipPersonVSgMR;
      v79 = v6;
    }

    outlined destroy of ResponseMode?(v79, v77, v78);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_26686A000, v102, v103, "#ContactsUnsetRelationshipFlowStrategy Found no common_Person in USO parse, returning nil for UnsetRelationshipPerson", v104, 2u);
      MEMORY[0x26D5E3300](v104, -1, -1);
    }

    (*(v133 + 8))(v132, v124);
    goto LABEL_22;
  }

  v86 = v119;
  v42(v119, v52, v29);
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v140[0] = v90;
    *v89 = 136315138;
    v42(v134, v86, v29);
    v91 = v29;
    v92 = String.init<A>(describing:)();
    v94 = v93;
    v95 = v86;
    v96 = v118;
    v118(v95, v91);
    v97 = v92;
    v29 = v91;
    v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v94, v140);

    *(v89 + 4) = v98;
    _os_log_impl(&dword_26686A000, v87, v88, "#ContactsUnsetRelationshipFlowStrategy Encountered unexpected parse type %s, returning nil for UnsetRelationshipPerson", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v90);
    MEMORY[0x26D5E3300](v90, -1, -1);
    v99 = v89;
    v53 = v138;
    MEMORY[0x26D5E3300](v99, -1, -1);
  }

  else
  {

    v107 = v86;
    v96 = v118;
    v118(v107, v29);
  }

  __swift_storeEnumTagSinglePayload(v136, 1, 1, v139);
  return v96(v53, v29);
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makePromptForPersonName(requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for NLContextUpdate();
  v1[11] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_10_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  OUTLINED_FUNCTION_18_0(v11);
  v13 = *(v12 + 64);
  v1[14] = OUTLINED_FUNCTION_10_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v14);
  v16 = *(v15 + 64);
  v1[15] = OUTLINED_FUNCTION_10_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  OUTLINED_FUNCTION_18_0(v17);
  v19 = *(v18 + 64);
  v1[16] = OUTLINED_FUNCTION_10_0();
  v20 = type metadata accessor for TemplatingResult();
  v1[17] = v20;
  OUTLINED_FUNCTION_1_1(v20);
  v1[18] = v21;
  v23 = *(v22 + 64);
  v1[19] = OUTLINED_FUNCTION_45();
  v1[20] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

{
  OUTLINED_FUNCTION_4();
  v1 = *(v0[9] + 96);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[21] = v2;
  *v2 = v3;
  v2[1] = ContactsUnsetRelationshipFlowStrategy.makePromptForPersonName(requestedRelationship:resolveRecord:);
  v4 = v0[19];

  return ContactsCommonCATs.unsupportedRelationshipNotFound()();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_41();
  v1 = v0[15];
  v2 = v0[8];
  v3 = *(v0[9] + 192);
  RelationshipLabel.asUnboundedSemanticValue.getter();
  OUTLINED_FUNCTION_49_0();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[23] = v8;
  *v8 = v9;
  v8[1] = ContactsUnsetRelationshipFlowStrategy.makePromptForPersonName(requestedRelationship:resolveRecord:);
  v11 = v0[15];
  v10 = v0[16];

  return ModifyContactAttributeCATs.promptForRelationshipContact(requestedRelationship:)();
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *(v5 + 120);
  v8 = *v1;
  OUTLINED_FUNCTION_0();
  *v9 = v8;
  v3[24] = v0;

  outlined destroy of ResponseMode?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    (*(v3[18] + 8))(v3[19], v3[17]);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 176);
  OUTLINED_FUNCTION_84();

  OUTLINED_FUNCTION_3();

  return v2();
}

{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 192);
  OUTLINED_FUNCTION_84();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makePromptForPersonName(requestedRelationship:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_61();
  v23 = v22;
  v24 = v22[19];
  v26 = v22[17];
  v25 = v22[18];
  v69 = v22[14];
  v70 = v22[15];
  v27 = v22[13];
  v28 = v22[10];
  v64 = v22[11];
  v65 = v22[20];
  v62 = v22[9];
  v63 = v22[12];
  v29 = v22[7];
  v68 = v22[16];
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v26);
  type metadata accessor for BehaviorAfterSpeaking();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v67 = v24;
  TemplatingResult.merge(with:behaviorAfterSpeaking:)(v68, v69, v65);
  outlined destroy of ResponseMode?(v69, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  outlined destroy of ResponseMode?(v68, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v66 = *(v25 + 8);
  v66(v24, v26);
  NLContextUpdate.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v37 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_1_1(v37);
  v39 = *(v38 + 72);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_266966D90;
  static ContactsContextProvider.makeSDAForPromptForRelatedPersonName()(v42 + v41);
  NLContextUpdate.nluSystemDialogActs.setter();
  v43 = *(v62 + 112);
  v44 = *(v63 + 16);
  v45 = OUTLINED_FUNCTION_22_0();
  v46(v45);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v64);
  v50 = type metadata accessor for AceOutput();
  *(v23 + 2) = 0u;
  v23[6] = 0;
  *(v23 + 1) = 0u;
  v51 = MEMORY[0x277D5C1D8];
  v29[3] = v50;
  v29[4] = v51;
  __swift_allocate_boxed_opaque_existential_1(v29);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of ResponseMode?((v23 + 2), &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of ResponseMode?(v28, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v63 + 8))(v27, v64);
  v66(v65, v26);

  v52 = v23[1];
  OUTLINED_FUNCTION_40();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, v23 + 2, v62, v63, v64, v65, v26, v66, v67, v68, v69, v70, a20, a21, a22);
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makeDisambiguationItemContainer(contacts:resolveRecord:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_3_1();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makeDisambiguationItemContainer(contacts:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow32BasicDisambiguationItemContainerCySo8SAPersonCGMd, &_s11SiriKitFlow32BasicDisambiguationItemContainerCySo8SAPersonCGMR);
  OUTLINED_FUNCTION_44_0();

  v2 = BasicDisambiguationItemContainer.__allocating_init(_:_:)();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t ContactsUnsetRelationshipFlowStrategy.parseContactDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = type metadata accessor for Parse.DirectInvocation();
  v1[9] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[10] = v6;
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_10_0();
  v9 = type metadata accessor for Parse();
  v1[12] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v1[13] = v10;
  v12 = *(v11 + 64);
  v1[14] = OUTLINED_FUNCTION_45();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v13 = type metadata accessor for Signpost.OpenSignpost();
  v1[17] = v13;
  OUTLINED_FUNCTION_18_0(v13);
  v15 = *(v14 + 64);
  v1[18] = OUTLINED_FUNCTION_10_0();
  v16 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t ContactsUnsetRelationshipFlowStrategy.parseContactDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_0();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v16 = v14[17];
  v15 = v14[18];
  v17 = v14[16];
  v18 = v14[12];
  v19 = v14[13];
  v20 = v14[6];
  v21 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v113 = v21;
  os_signpost(_:dso:log:name:signpostID:)();
  v22 = v15 + *(v16 + 20);
  *v22 = "ParseUnsetRelationDisambiguationResult";
  *(v22 + 8) = 38;
  *(v22 + 16) = 2;
  Input.parse.getter();
  v23 = *(v19 + 88);
  v24 = OUTLINED_FUNCTION_17_0();
  if (v25(v24) == *MEMORY[0x277D5C150])
  {
    v26 = v14[15];
    v27 = v14[12];
    v28 = v14[13];
    v30 = v14[10];
    v29 = v14[11];
    v31 = v14[9];
    (*(v28 + 16))(v26, v14[16], v27);
    (*(v28 + 96))(v26, v27);
    (*(v30 + 32))(v29, v26, v31);
    if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000025 && 0x800000026696DFF0 == v32)
    {
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v34 & 1) == 0)
      {
        (*(v14[10] + 8))(v14[11], v14[9]);
        goto LABEL_10;
      }
    }

    v41 = v14[11];
    Parse.DirectInvocation.getSelectionIndex()();
    if (v42)
    {
      v43 = v14[18];
      v44 = v14[16];
      v46 = v14[12];
      v45 = v14[13];
      (*(v14[10] + 8))(v14[11], v14[9]);
      v47 = *(v45 + 8);
      v48 = OUTLINED_FUNCTION_76();
      v49(v48);
      goto LABEL_27;
    }

    v58 = v14[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8SAPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8SAPersonCGMR);
    PaginatedItemContainer.items.getter();
    v59 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
    v60 = OUTLINED_FUNCTION_71();
    Array.subscript.getter(v60, v61, v59, v62);

    v63 = v14[3];
    if (!v63)
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v85 = type metadata accessor for Logger();
      v86 = OUTLINED_FUNCTION_52_0(v85, static Logger.siriContacts);
      v87 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = OUTLINED_FUNCTION_30();
        *v88 = 0;
        _os_log_impl(&dword_26686A000, v86, v87, "#ContactsUnsetRelationshipFlowStrategy User selected item out of bounds", v88, 2u);
        OUTLINED_FUNCTION_6();
      }

      v89 = v14[18];
      v90 = v14[16];
      v91 = v14[12];
      v92 = v14[13];
      v93 = v14[10];
      v94 = v14[11];
      v95 = v14[9];

      type metadata accessor for ContactsError();
      OUTLINED_FUNCTION_1_7();
      lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(v96, v97);
      OUTLINED_FUNCTION_7_1();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v93 + 8))(v94, v95);
      (*(v92 + 8))(v90, v91);
      goto LABEL_27;
    }

    v64 = v14[16];
    v66 = v14[12];
    v65 = v14[13];
    v68 = v14[10];
    v67 = v14[11];
    v69 = v14[9];
    v70 = v14[5];
    v14[4] = v63;
    static DisambiguationResult.chosenItem(_:)();
    (*(v68 + 8))(v67, v69);

    v71 = *(v65 + 8);
    v72 = OUTLINED_FUNCTION_17_0();
    v73(v72);
LABEL_21:
    v79 = v14[18];
    v81 = v14[15];
    v80 = v14[16];
    v82 = v14[14];
    v83 = v14[11];
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_2_7();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_0(v79, v84);

    OUTLINED_FUNCTION_6_4();
    goto LABEL_28;
  }

LABEL_10:
  v35 = v14[14];
  v36 = v14[6];
  v37 = *(v14[13] + 8);
  v37(v14[16], v14[12]);
  Input.parse.getter();
  v38 = Parse.toContactId(existingCandidates:)(MEMORY[0x277D84F90]);
  if (!v39)
  {
    v50 = v14[8];
    v37(v14[14], v14[12]);
    v51 = v50[10];
    v52 = v50[11];
    OUTLINED_FUNCTION_77(v50 + 7, v51);
    v53 = (*(v52 + 8))(v38._countAndFlagsBits, v38._object, v51, v52);
    v74 = v53;
    if (!v53)
    {
      v54 = v14[18];
      type metadata accessor for ContactsError();
      OUTLINED_FUNCTION_1_7();
      lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(v55, v56);
      OUTLINED_FUNCTION_7_1();
      *v57 = v38;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_27;
    }

    v75 = v14[5];

    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v76 = v74;
    v77.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v78 = SAPerson.init(contact:isMe:)(v74, v77.super.super.isa);
    v14[2] = v78;
    static DisambiguationResult.chosenItem(_:)();

    goto LABEL_21;
  }

  v40 = v14[18];
  v37(v14[14], v14[12]);
LABEL_27:
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_88();
  v98 = v14[18];
  v100 = v14[15];
  v99 = v14[16];
  v101 = v14[14];
  v102 = v14[11];
  OUTLINED_FUNCTION_2_7();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_0(v98, v103);

  OUTLINED_FUNCTION_3();
LABEL_28:
  OUTLINED_FUNCTION_13_0();

  return v105(v104, v105, v106, v107, v108, v109, v110, v111, a9, v113, a11, a12, a13, a14);
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makePromptForContactDisambiguation(paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = type metadata accessor for PaginationStyle();
  OUTLINED_FUNCTION_18_0(v5);
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_10_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySSGMd, &_s11SiriKitFlow22PaginatedItemContainerVySSGMR);
  v1[8] = v8;
  OUTLINED_FUNCTION_1_1(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = OUTLINED_FUNCTION_10_0();
  v12 = type metadata accessor for Signpost.OpenSignpost();
  v1[11] = v12;
  OUTLINED_FUNCTION_18_0(v12);
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_10_0();
  v15 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

{
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[4];
  v6 = static Signpost.contactsLog;
  v0[13] = static Signpost.contactsLog;
  v7 = v6;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v8 = v1 + *(v2 + 20);
  *v8 = "MakePromptForUnsetRelationDisambiguation";
  *(v8 + 8) = 40;
  *(v8 + 16) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8SAPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8SAPersonCGMR);
  v0[2] = PaginatedItemContainer.items.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8SAPersonCGMd, &_sSaySo8SAPersonCGMR);
  lazy protocol witness table accessor for type BasicDisambiguationItemContainer<SAPerson> and conformance BasicDisambiguationItemContainer<A>(&lazy protocol witness table cache variable for type [SAPerson] and conformance [A], &_sSaySo8SAPersonCGMd, &_sSaySo8SAPersonCGMR);
  Sequence.compactMap<A>(_:)();

  static PaginationStyle.noPagination()();
  OUTLINED_FUNCTION_60();
  PaginatedItemContainer.init(items:paginationStyle:)();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[14] = v9;
  *v9 = v10;
  v9[1] = ContactsUnsetRelationshipFlowStrategy.makePromptForContactDisambiguation(paginatedItems:resolveRecord:);
  v11 = v0[10];
  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[3];

  return ContactsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_41();
  v1 = OUTLINED_FUNCTION_59();
  v2(v1);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_2_7();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_0(v0, v3);

  OUTLINED_FUNCTION_6_4();

  return v4();
}

{
  OUTLINED_FUNCTION_41();
  v2 = OUTLINED_FUNCTION_59();
  v3(v2);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_2_7();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_0(v0, v4);

  OUTLINED_FUNCTION_3();
  v6 = *(v1 + 120);

  return v5();
}

uint64_t closure #1 in ContactsUnsetRelationshipFlowStrategy.makePromptForContactDisambiguation(paginatedItems:resolveRecord:)@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = outlined bridged method (pb) of @objc SAPerson.internalGUID.getter(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t ContactsUnsetRelationshipFlowStrategy.parsePromptToSaveRelationshipResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_18_0(v3);
  v5 = *(v4 + 64);
  v0[4] = OUTLINED_FUNCTION_10_0();
  v6 = type metadata accessor for Parse();
  v0[5] = v6;
  OUTLINED_FUNCTION_1_1(v6);
  v0[6] = v7;
  v9 = *(v8 + 64);
  v0[7] = OUTLINED_FUNCTION_10_0();
  v10 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_19_1();
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  Input.parse.getter();
  Parse.confirmationResponse.getter();
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_22_0();
  v8(v7);
  v9 = type metadata accessor for ConfirmationResponse();
  if (__swift_getEnumTagSinglePayload(v4, 1, v9) == 1)
  {
    outlined destroy of ResponseMode?(v0[4], &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v10 = type metadata accessor for Logger();
    v11 = OUTLINED_FUNCTION_52_0(v10, static Logger.siriContacts);
    v12 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_15_0(v12))
    {
      v13 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v13);
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v14, v15, "#ContactsUnsetRelationshipFlowStrategy parsePromptToSaveRelationshipResponse throwing error");
      OUTLINED_FUNCTION_11_1();
    }

    v16 = v0[7];
    v17 = v0[4];

    type metadata accessor for ContactsError();
    OUTLINED_FUNCTION_1_7();
    lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(v18, v19);
    OUTLINED_FUNCTION_73();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    OUTLINED_FUNCTION_3();
  }

  else
  {
    v21 = v0[7];
    v22 = v0[4];
    v23 = v0[2];
    OUTLINED_FUNCTION_52(v9);
    (*(v24 + 32))();

    OUTLINED_FUNCTION_6_4();
  }

  return v20();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[31] = v2;
  v1[32] = v0;
  v1[29] = v3;
  v1[30] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  v7 = *(v6 + 64);
  v1[33] = OUTLINED_FUNCTION_10_0();
  v8 = type metadata accessor for TemplatingResult();
  v1[34] = v8;
  OUTLINED_FUNCTION_1_1(v8);
  v1[35] = v9;
  v11 = *(v10 + 64);
  v1[36] = OUTLINED_FUNCTION_10_0();
  v12 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_18_0(v12);
  v14 = *(v13 + 64);
  v1[37] = OUTLINED_FUNCTION_10_0();
  v15 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v15);
  v17 = *(v16 + 64);
  v1[38] = OUTLINED_FUNCTION_10_0();
  v18 = type metadata accessor for OutputGenerationManifest();
  v1[39] = v18;
  OUTLINED_FUNCTION_1_1(v18);
  v1[40] = v19;
  v21 = *(v20 + 64);
  v1[41] = OUTLINED_FUNCTION_10_0();
  v22 = type metadata accessor for ContactsSnippetPluginModel();
  v1[42] = v22;
  OUTLINED_FUNCTION_1_1(v22);
  v1[43] = v23;
  v25 = *(v24 + 64);
  v1[44] = OUTLINED_FUNCTION_10_0();
  v26 = type metadata accessor for ContactsSnippetFlowState();
  v1[45] = v26;
  OUTLINED_FUNCTION_1_1(v26);
  v1[46] = v27;
  v29 = *(v28 + 64);
  v1[47] = OUTLINED_FUNCTION_10_0();
  v30 = type metadata accessor for ModifyContactAttributeSnippetModel.ModificationType();
  v1[48] = v30;
  OUTLINED_FUNCTION_1_1(v30);
  v1[49] = v31;
  v33 = *(v32 + 64);
  v1[50] = OUTLINED_FUNCTION_10_0();
  v34 = type metadata accessor for ModifyContactAttributeSnippetModel.ContactAttributeToModify();
  v1[51] = v34;
  OUTLINED_FUNCTION_1_1(v34);
  v1[52] = v35;
  v37 = *(v36 + 64);
  v1[53] = OUTLINED_FUNCTION_10_0();
  v38 = type metadata accessor for ModifyContactAttributeSnippetModel();
  v1[54] = v38;
  OUTLINED_FUNCTION_1_1(v38);
  v1[55] = v39;
  v41 = *(v40 + 64);
  v1[56] = OUTLINED_FUNCTION_10_0();
  v42 = type metadata accessor for ContactsLabelCATContainer();
  v1[57] = v42;
  OUTLINED_FUNCTION_1_1(v42);
  v1[58] = v43;
  v45 = *(v44 + 64);
  v1[59] = OUTLINED_FUNCTION_45();
  v1[60] = swift_task_alloc();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v46);
  v48 = *(v47 + 64);
  v1[61] = OUTLINED_FUNCTION_45();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v49 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v49);
  v51 = *(v50 + 64);
  v1[70] = OUTLINED_FUNCTION_10_0();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
  v1[71] = v52;
  OUTLINED_FUNCTION_1_1(v52);
  v1[72] = v53;
  v55 = *(v54 + 64);
  v1[73] = OUTLINED_FUNCTION_45();
  v1[74] = swift_task_alloc();
  v56 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v56, v57, v58);
}

{
  OUTLINED_FUNCTION_28();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = v2[78];
  v6 = *v1;
  OUTLINED_FUNCTION_9_6();
  *v7 = v6;
  *(v9 + 632) = v8;
  *(v9 + 640) = v0;

  v10 = v2[77];
  v11 = v2[69];
  v12 = v2[68];
  v13 = v2[67];
  v14 = v2[66];

  outlined destroy of ResponseMode?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of ResponseMode?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v15 = OUTLINED_FUNCTION_71();
  outlined destroy of ResponseMode?(v15, v16, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v17 = OUTLINED_FUNCTION_69();
  outlined destroy of ResponseMode?(v17, v18, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

{
  OUTLINED_FUNCTION_4();
  v1 = v0[70];
  type metadata accessor for ContactsLabelCATsModern();
  OUTLINED_FUNCTION_90();
  v0[81] = OUTLINED_FUNCTION_45_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[82] = v2;
  *v2 = v3;
  v2[1] = ContactsUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:);
  v4 = v0[60];

  return static ContactsLabelCATContainer.modifyConfirmationCATs(from:)();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 656);
  v3 = *(v1 + 648);
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  v5 = v4[85];
  v6 = v4[84];
  v7 = v4[83];
  v8 = *v0;
  OUTLINED_FUNCTION_0();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 192));
  v10 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 696);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[88] = v0;

  if (v0)
  {
    v9 = v3[86];
    v11 = v3[62];
    v10 = v3[63];
    v12 = v3[61];

    outlined destroy of ResponseMode?(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v13 = OUTLINED_FUNCTION_17_0();
    outlined destroy of ResponseMode?(v13, v14, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    outlined destroy of ResponseMode?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {
    v16 = v3[62];
    v15 = v3[63];
    outlined destroy of ResponseMode?(v3[61], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v17 = OUTLINED_FUNCTION_47_0();
    outlined destroy of ResponseMode?(v17, v18, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v19 = OUTLINED_FUNCTION_60();
    outlined destroy of ResponseMode?(v19, v20, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

id ContactsUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0[32];
  if (ContactsStrategy.isSmartEnabled.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v2 = type metadata accessor for Logger();
    v3 = OUTLINED_FUNCTION_52_0(v2, static Logger.siriContacts);
    v4 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v4))
    {
      v5 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v5);
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v6, v7, "#ContactsUnsetRelationshipFlowStrategy makePromptToSaveRelationship");
      OUTLINED_FUNCTION_11_1();
    }

    v8 = v0[32];

    v0[17] = &type metadata for InstalledAppsProvider;
    v0[18] = &protocol witness table for InstalledAppsProvider;
    v9 = v8[11];
    __swift_project_boxed_opaque_existential_1(v8 + 7, v8[10]);
    v10 = *(v9 + 24);
    v11 = OUTLINED_FUNCTION_22_0();
    v13 = v12(v11);
    if (v13)
    {
      v14 = v13;
      v15 = [v13 identifier];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_79();
    }

    else
    {
      OUTLINED_FUNCTION_65();
    }

    v41 = v0[30];
    OUTLINED_FUNCTION_47_0();
    AppUtil.buildPunchoutFor(contactIdentifier:)();
    v0[75] = v42;

    v43 = [v41 internalGUID];
    if (v43)
    {
      v44 = v43;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_79();
    }

    else
    {
      OUTLINED_FUNCTION_65();
    }

    v45 = v0[30];
    OUTLINED_FUNCTION_47_0();
    AppUtil.buildPunchoutFor(contactIdentifier:)();
    v0[76] = v46;

    outlined init with copy of ContactServiceProtocol((v8 + 7), (v0 + 19));
    v47 = v0[23];
    OUTLINED_FUNCTION_77(v0 + 19, v0[22]);
    result = [v45 internalGUID];
    if (result)
    {
      v48 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = OUTLINED_FUNCTION_35_1();
      v50(v49);

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);
      v51 = v0[30];
      [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
      result = [v51 prefix];
      if (result)
      {
        v52 = result;
        v53 = v0[30];
        OUTLINED_FUNCTION_50_0(result, sel_setNamePrefix_);

        v54 = [v53 firstName];
        OUTLINED_FUNCTION_50_0(v54, sel_setFirstName_);

        result = [v53 middleName];
        if (result)
        {
          v55 = result;
          v56 = v0[30];
          OUTLINED_FUNCTION_50_0(result, sel_setMiddleName_);

          v57 = [v56 lastName];
          OUTLINED_FUNCTION_50_0(v57, sel_setLastName_);

          result = [v56 suffix];
          if (result)
          {
            v58 = result;
            v59 = v0[74];
            OUTLINED_FUNCTION_50_0(result, sel_setNameSuffix_);

            type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
            CodableContact.init(wrappedValue:)();
            v87 = v0[74];
            v88 = v0[71];
            v89 = v0[70];
            v90 = v0[69];
            v91 = v0[68];
            v92 = v0[67];
            v93 = v0[66];
            v94 = v0[31];
            type metadata accessor for ModifyContactAttributeCATsModern();
            OUTLINED_FUNCTION_90();
            v0[77] = OUTLINED_FUNCTION_45_0();
            RelationshipLabel.asUnboundedSemanticValue.getter();
            OUTLINED_FUNCTION_49_0();
            v95 = type metadata accessor for SpeakableString();
            OUTLINED_FUNCTION_50();
            __swift_storeEnumTagSinglePayload(v96, v97, v98, v95);
            OUTLINED_FUNCTION_37_1();
            __swift_storeEnumTagSinglePayload(v99, v100, v101, v95);
            v102 = CodableContact.wrappedValue.getter();
            CNContact.formattedFullName.getter();

            OUTLINED_FUNCTION_49_0();
            OUTLINED_FUNCTION_50();
            __swift_storeEnumTagSinglePayload(v103, v104, v105, v95);
            OUTLINED_FUNCTION_18_3();
            OUTLINED_FUNCTION_50();
            __swift_storeEnumTagSinglePayload(v106, v107, v108, v95);
            v109 = swift_task_alloc();
            v0[78] = v109;
            *v109 = v0;
            v109[1] = ContactsUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:);
            v110 = v0[69];
            v111 = v0[68];
            v112 = v0[67];
            v113 = v0[66];
            OUTLINED_FUNCTION_13_0();

            return ModifyContactAttributeCATsModern.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:)();
          }

LABEL_29:
          __break(1u);
          return result;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = v0[65];
  v17 = v0[32];
  v18 = v0[30];
  outlined init with copy of ContactServiceProtocol(v17 + 16, (v0 + 3));
  v19 = *(v17 + 104);
  v0[2] = 10;
  v0[8] = v19;

  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  v0[86] = v20;
  outlined destroy of ConfirmationViewBuilder((v0 + 2));
  v21 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  outlined init with copy of ContactServiceProtocol(v17 + 56, (v0 + 9));
  v25 = v0[13];
  OUTLINED_FUNCTION_77(v0 + 9, v0[12]);
  result = [v18 internalGUID];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = OUTLINED_FUNCTION_36_1();
  v29(v28);
  v115 = v21;

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  v30 = v0[64];
  v31 = v0[37];
  v32 = v0[32];
  v33 = v0[30];
  type metadata accessor for DialogPerson();
  v34 = v32[6];
  OUTLINED_FUNCTION_77((v17 + 16), v32[5]);
  v35 = v33;
  OUTLINED_FUNCTION_47();
  dispatch thunk of DeviceState.siriLocale.getter();
  v36 = v32[15];
  v37 = v36;
  OUTLINED_FUNCTION_68();
  DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v38, v39, v40, v36);
  dispatch thunk of DialogPerson.fullName.getter();
  v60 = v0[65];
  v62 = v0[63];
  v61 = v0[64];
  v63 = v0[61];
  v64 = v0[62];
  v66 = v0[31];
  v65 = v0[32];

  outlined destroy of ResponseMode?(v60, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v67 = OUTLINED_FUNCTION_71();
  outlined init with take of SpeakableString?(v67, v68);
  v69 = *(v65 + 192);
  RelationshipLabel.asUnboundedSemanticValue.getter();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v115);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v115);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v115);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[87] = v79;
  *v79 = v80;
  v79[1] = ContactsUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:);
  v81 = v0[65];
  v83 = v0[62];
  v82 = v0[63];
  v84 = v0[61];
  v85 = v0[36];
  OUTLINED_FUNCTION_13_0();

  return ModifyContactAttributeCATs.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:)();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_67();
  v27 = *(v26 + 608);
  v28 = *(v26 + 600);
  v29 = *(v26 + 576);
  v52 = *(v26 + 568);
  v53 = *(v26 + 592);
  v30 = *(v26 + 464);
  v50 = *(v26 + 456);
  v51 = *(v26 + 480);
  v31 = *(v26 + 440);
  v48 = *(v26 + 432);
  v49 = *(v26 + 448);
  v32 = *(v26 + 344);
  v33 = *(v26 + 328);
  v54 = *(v26 + 336);
  v55 = *(v26 + 352);
  v35 = *(v26 + 312);
  v34 = *(v26 + 320);

  v36 = *(v34 + 8);
  v37 = OUTLINED_FUNCTION_58();
  v38(v37);
  (*(v31 + 8))(v49, v48);
  (*(v30 + 8))(v51, v50);
  (*(v29 + 8))(v53, v52);
  outlined destroy of AppUtil(v26 + 112);
  (*(v32 + 8))(v55, v54);
  OUTLINED_FUNCTION_15_3();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_53_0();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, v48, v49, v50, v51, v52, v53, v54, v55, a24, a25, a26);
}

{
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_67();
  v27 = v26[86];
  v28 = v26[65];
  v30 = v26[35];
  v29 = v26[36];
  v32 = v26[33];
  v31 = v26[34];
  v33 = v26[32];
  v35 = v26[29];
  v34 = v26[30];
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  type metadata accessor for ContactsCommonCATs();
  v40 = type metadata accessor for AceOutput();
  v41 = MEMORY[0x277D5C1D8];
  v35[3] = v40;
  v35[4] = v41;
  __swift_allocate_boxed_opaque_existential_1(v35);
  v42 = OUTLINED_FUNCTION_76();
  ContactsStrategy.confirmationOutput(templateResult:views:meCard:listenAfterSpeaking:nlContextUpdate:)(v42, v43, v34, 1, v32);

  outlined destroy of ResponseMode?(v32, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v44 = *(v30 + 8);
  v45 = OUTLINED_FUNCTION_17_0();
  v46(v45);
  outlined destroy of ResponseMode?(v28, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_15_3();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_53_0();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

{
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_67();
  v27 = *(v26 + 600);
  v28 = *(v26 + 592);
  v29 = *(v26 + 576);
  v30 = *(v26 + 568);

  v31 = *(v29 + 8);
  v32 = OUTLINED_FUNCTION_60();
  v33(v32);
  outlined destroy of AppUtil(v26 + 112);
  OUTLINED_FUNCTION_14_4(*(v26 + 640));

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_53_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

{
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_67();
  outlined destroy of ResponseMode?(*(v26 + 520), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_4(*(v26 + 704));

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_53_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t closure #1 in ContactsUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  static ContactsContextProvider.confirm(person:attribute:)(a3, 0, 1);
  v8 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  OutputGenerationManifest.nlContextUpdate.setter();
  ContactsSnippetPluginModel.responseViewID.getter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = type metadata accessor for TemplatingResult();
  v1[26] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[27] = v6;
  v8 = *(v7 + 64);
  v1[28] = OUTLINED_FUNCTION_10_0();
  v9 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_18_0(v9);
  v11 = *(v10 + 64);
  v1[29] = OUTLINED_FUNCTION_10_0();
  v12 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v12);
  v14 = *(v13 + 64);
  v1[30] = OUTLINED_FUNCTION_10_0();
  v15 = type metadata accessor for OutputGenerationManifest();
  v1[31] = v15;
  OUTLINED_FUNCTION_1_1(v15);
  v1[32] = v16;
  v18 = *(v17 + 64);
  v1[33] = OUTLINED_FUNCTION_10_0();
  v19 = type metadata accessor for ContactsSnippetPluginModel();
  v1[34] = v19;
  OUTLINED_FUNCTION_1_1(v19);
  v1[35] = v20;
  v22 = *(v21 + 64);
  v1[36] = OUTLINED_FUNCTION_10_0();
  v23 = type metadata accessor for ContactsSnippetFlowState();
  v1[37] = v23;
  OUTLINED_FUNCTION_1_1(v23);
  v1[38] = v24;
  v26 = *(v25 + 64);
  v1[39] = OUTLINED_FUNCTION_10_0();
  v27 = type metadata accessor for ModifyContactAttributeSnippetModel.ModificationType();
  v1[40] = v27;
  OUTLINED_FUNCTION_1_1(v27);
  v1[41] = v28;
  v30 = *(v29 + 64);
  v1[42] = OUTLINED_FUNCTION_10_0();
  v31 = type metadata accessor for ModifyContactAttributeSnippetModel.ContactAttributeToModify();
  v1[43] = v31;
  OUTLINED_FUNCTION_1_1(v31);
  v1[44] = v32;
  v34 = *(v33 + 64);
  v1[45] = OUTLINED_FUNCTION_10_0();
  v35 = type metadata accessor for ModifyContactAttributeSnippetModel();
  v1[46] = v35;
  OUTLINED_FUNCTION_1_1(v35);
  v1[47] = v36;
  v38 = *(v37 + 64);
  v1[48] = OUTLINED_FUNCTION_10_0();
  v39 = type metadata accessor for ContactsLabelCATContainer();
  v1[49] = v39;
  OUTLINED_FUNCTION_1_1(v39);
  v1[50] = v40;
  v42 = *(v41 + 64);
  v1[51] = OUTLINED_FUNCTION_45();
  v1[52] = swift_task_alloc();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v43);
  v45 = *(v44 + 64);
  v1[53] = OUTLINED_FUNCTION_45();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v46 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v46);
  v48 = *(v47 + 64);
  v1[60] = OUTLINED_FUNCTION_10_0();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
  v1[61] = v49;
  OUTLINED_FUNCTION_1_1(v49);
  v1[62] = v50;
  v52 = *(v51 + 64);
  v1[63] = OUTLINED_FUNCTION_45();
  v1[64] = swift_task_alloc();
  v53 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v53, v54, v55);
}

{
  OUTLINED_FUNCTION_19_1();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = v2[68];
  v6 = *v1;
  OUTLINED_FUNCTION_9_6();
  *v7 = v6;
  *(v9 + 552) = v8;
  *(v9 + 560) = v0;

  v10 = v2[67];
  v11 = v2[59];
  v12 = v2[58];
  v13 = v2[57];

  outlined destroy of ResponseMode?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = OUTLINED_FUNCTION_71();
  outlined destroy of ResponseMode?(v14, v15, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = OUTLINED_FUNCTION_69();
  outlined destroy of ResponseMode?(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

{
  OUTLINED_FUNCTION_4();
  v1 = v0[60];
  type metadata accessor for ContactsLabelCATsModern();
  OUTLINED_FUNCTION_90();
  v0[71] = OUTLINED_FUNCTION_45_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[72] = v2;
  *v2 = v3;
  v2[1] = ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:);
  v4 = v0[52];

  return static ContactsLabelCATContainer.modifyIntentHandledCATs(from:)();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 576);
  v3 = *(v1 + 568);
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  v5 = v4[75];
  v6 = v4[74];
  v7 = v4[73];
  v8 = *v0;
  OUTLINED_FUNCTION_0();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 136));
  v10 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_41();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = v2[76];
  *v4 = *v1;
  v3[77] = v0;

  v6 = v2[54];
  outlined destroy of ResponseMode?(v2[53], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of ResponseMode?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v3 = *(v0 + 488);
  v4 = *(v0 + 496);

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_60();
  v7(v6);
  outlined destroy of AppUtil(v0 + 56);
  OUTLINED_FUNCTION_19_2(*(v0 + 560));

  OUTLINED_FUNCTION_3();

  return v8();
}

{
  outlined destroy of ResponseMode?(*(v0 + 448), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_19_2(*(v0 + 616));

  OUTLINED_FUNCTION_3();

  return v1();
}

id ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v1[25];
  if (ContactsStrategy.isSmartEnabled.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v3 = type metadata accessor for Logger();
    v4 = OUTLINED_FUNCTION_52_0(v3, static Logger.siriContacts);
    v5 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v5))
    {
      v6 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v6);
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v7, v8, "#ContactsUnsetRelationshipFlowStrategy makeSaveRelationshipCompletedResponse");
      OUTLINED_FUNCTION_11_1();
    }

    v9 = v1[25];

    v1[10] = &type metadata for InstalledAppsProvider;
    v1[11] = &protocol witness table for InstalledAppsProvider;
    v10 = v9[11];
    __swift_project_boxed_opaque_existential_1(v9 + 7, v9[10]);
    v11 = *(v10 + 24);
    v12 = OUTLINED_FUNCTION_22_0();
    v14 = v13(v12);
    if (v14)
    {
      v15 = v14;
      v16 = [v14 identifier];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_79();
    }

    else
    {
      OUTLINED_FUNCTION_65();
    }

    v59 = v1[23];
    OUTLINED_FUNCTION_47_0();
    AppUtil.buildPunchoutFor(contactIdentifier:)();
    v1[65] = v60;

    v61 = [v59 internalGUID];
    if (v61)
    {
      v62 = v61;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_79();
    }

    else
    {
      OUTLINED_FUNCTION_65();
    }

    v63 = v1[23];
    OUTLINED_FUNCTION_47_0();
    AppUtil.buildPunchoutFor(contactIdentifier:)();
    v1[66] = v64;

    outlined init with copy of ContactServiceProtocol((v9 + 7), (v1 + 12));
    v65 = v1[16];
    OUTLINED_FUNCTION_77(v1 + 12, v1[15]);
    result = [v63 internalGUID];
    if (result)
    {
      v66 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = OUTLINED_FUNCTION_35_1();
      v68(v67);

      __swift_destroy_boxed_opaque_existential_0Tm(v1 + 12);
      v69 = v1[23];
      [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
      result = [v69 prefix];
      if (result)
      {
        v70 = result;
        v71 = v1[23];
        OUTLINED_FUNCTION_50_0(result, sel_setNamePrefix_);

        v72 = [v71 firstName];
        OUTLINED_FUNCTION_50_0(v72, sel_setFirstName_);

        result = [v71 middleName];
        if (result)
        {
          v73 = result;
          v74 = v1[23];
          OUTLINED_FUNCTION_50_0(result, sel_setMiddleName_);

          v75 = [v74 lastName];
          OUTLINED_FUNCTION_50_0(v75, sel_setLastName_);

          result = [v74 suffix];
          if (result)
          {
            v76 = result;
            v77 = v1[64];
            OUTLINED_FUNCTION_50_0(result, sel_setNameSuffix_);

            type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
            CodableContact.init(wrappedValue:)();
            v78 = v1[64];
            v79 = v1[60];
            v80 = v1[61];
            v81 = v1[58];
            v82 = v1[59];
            v83 = v1[57];
            v84 = v1[24];
            v85 = v1[25];
            type metadata accessor for ModifyContactAttributeCATsModern();
            OUTLINED_FUNCTION_90();
            v1[67] = OUTLINED_FUNCTION_45_0();
            RelationshipLabel.asUnboundedSemanticValue.getter();
            OUTLINED_FUNCTION_49_0();
            v86 = type metadata accessor for SpeakableString();
            OUTLINED_FUNCTION_50();
            __swift_storeEnumTagSinglePayload(v87, v88, v89, v86);
            v90 = CodableContact.wrappedValue.getter();
            CNContact.formattedFullName.getter();

            OUTLINED_FUNCTION_49_0();
            OUTLINED_FUNCTION_50();
            __swift_storeEnumTagSinglePayload(v91, v92, v93, v86);
            OUTLINED_FUNCTION_18_3();
            OUTLINED_FUNCTION_50();
            OUTLINED_FUNCTION_56_0(v94, v95, v96, v86);
            v97 = swift_task_alloc();
            v1[68] = v97;
            *v97 = v1;
            v97[1] = ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:);
            v98 = v1[58];
            v99 = v1[59];
            v100 = v1[57];
            OUTLINED_FUNCTION_13_0();

            return ModifyContactAttributeCATsModern.intentHandledModifyRelationship(updatedRelationship:contactName:modifyOperation:isVoiceMode:)();
          }

          goto LABEL_28;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v17 = v1[56];
  v18 = v1[25];
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_37_1();
  if (OUTLINED_FUNCTION_56_0(v19, v20, v21, v0))
  {
    v22 = v1[23];
    outlined init with copy of ContactServiceProtocol(v1[25] + 56, (v1 + 2));
    v23 = v1[6];
    OUTLINED_FUNCTION_77(v1 + 2, v1[5]);
    result = [v22 internalGUID];
    if (!result)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    v25 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = OUTLINED_FUNCTION_36_1();
    v27(v26);

    __swift_destroy_boxed_opaque_existential_0Tm(v1 + 2);
  }

  v28 = v1[55];
  v29 = v1[29];
  v30 = v1[23];
  type metadata accessor for DialogPerson();
  v31 = v18[6];
  OUTLINED_FUNCTION_77(v18 + 2, v18[5]);
  v32 = v30;
  OUTLINED_FUNCTION_47();
  dispatch thunk of DeviceState.siriLocale.getter();
  OUTLINED_FUNCTION_68();
  DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v33, v34, v35, 0);
  dispatch thunk of DialogPerson.fullName.getter();
  v37 = v1[55];
  v36 = v1[56];
  v39 = v1[53];
  v38 = v1[54];
  v40 = v1[24];
  v41 = v1[25];

  outlined destroy of ResponseMode?(v36, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v42 = OUTLINED_FUNCTION_69();
  outlined init with take of SpeakableString?(v42, v43);
  v44 = *(v41 + 192);
  RelationshipLabel.asUnboundedSemanticValue.getter();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v0);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v0);
  v51 = v18[6];
  __swift_project_boxed_opaque_existential_1(v18 + 2, v18[5]);
  OUTLINED_FUNCTION_60();
  DeviceState.isVox.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v1[76] = v52;
  *v52 = v53;
  v52[1] = ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:);
  v54 = v1[56];
  v56 = v1[53];
  v55 = v1[54];
  v57 = v1[28];
  OUTLINED_FUNCTION_13_0();

  return ModifyContactAttributeCATs.intentHandledModifyRelationship(updatedRelationship:contactName:modifyOperation:isVoiceMode:)();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_61();
  v23 = *(v22 + 528);
  v24 = *(v22 + 520);
  v25 = *(v22 + 496);
  v48 = *(v22 + 488);
  v49 = *(v22 + 512);
  v26 = *(v22 + 400);
  v46 = *(v22 + 392);
  v47 = *(v22 + 416);
  v27 = *(v22 + 376);
  v44 = *(v22 + 368);
  v45 = *(v22 + 384);
  v28 = *(v22 + 280);
  v29 = *(v22 + 264);
  v50 = *(v22 + 272);
  v51 = *(v22 + 288);
  v31 = *(v22 + 248);
  v30 = *(v22 + 256);

  v32 = *(v30 + 8);
  v33 = OUTLINED_FUNCTION_58();
  v34(v33);
  (*(v27 + 8))(v45, v44);
  (*(v26 + 8))(v47, v46);
  (*(v25 + 8))(v49, v48);
  outlined destroy of AppUtil(v22 + 56);
  (*(v28 + 8))(v51, v50);
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_40();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, v44, v45, v46, v47, v48, v49, v50, v51, a20, a21, a22);
}

{
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_61();
  v23 = v22[56];
  v25 = v22[27];
  v24 = v22[28];
  v26 = v22[25];
  v27 = v22[26];
  v28 = v22[22];
  ContactsUnsetRelationshipFlowStrategy.makeCompletionOutput(_:)();
  v29 = *(v25 + 8);
  v30 = OUTLINED_FUNCTION_17_0();
  v31(v30);
  outlined destroy of ResponseMode?(v23, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_40();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t closure #1 in ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:)()
{
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  ContactsSnippetPluginModel.responseViewID.getter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipRejectedResponse(person:requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for TemplatingResult();
  v1[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_10_0();
  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  v1 = *(*(v0 + 24) + 96);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 56) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_51(v2);

  return ContactsCommonCATs.promptCancelled()();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_41();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  ContactsUnsetRelationshipFlowStrategy.makeCompletionOutput(_:)();
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_22_0();
  v8(v7);

  OUTLINED_FUNCTION_6_4();

  return v9();
}

{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_3();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makeUnsupportedPlatformResponse(requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for TemplatingResult();
  v1[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_10_0();
  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  v1 = *(*(v0 + 24) + 96);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 56) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_51(v2);

  return ContactsCommonCATs.unsupportedAction()();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makeErrorResponse(error:app:intent:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for TemplatingResult();
  v1[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_10_0();
  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  v1 = *(*(v0 + 24) + 96);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 56) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_51(v2);

  return ContactsCommonCATs.genericError()();
}

void ContactsUnsetRelationshipFlowStrategy.makeCompletionOutput(_:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_22_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_18_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-v9];
  v11 = v0[6];
  OUTLINED_FUNCTION_77(v0 + 2, v0[5]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = type metadata accessor for AceOutput();
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17 = MEMORY[0x277D5C1D8];
  v2[3] = v16;
  v2[4] = v17;
  __swift_allocate_boxed_opaque_existential_1(v2);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of ResponseMode?(v18, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of ResponseMode?(v10, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14();
}

void ContactsUnsetRelationshipFlowStrategy.getActionForInput(input:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_18_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v5);
  v120 = &v116 - v6;
  v7 = type metadata accessor for USOParse();
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v122 = v9;
  v123 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74();
  v121 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_18_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v16);
  v126 = &v116 - v17;
  v18 = type metadata accessor for Parse();
  v19 = OUTLINED_FUNCTION_1_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v124 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v125 = &v116 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v116 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v116 - v32;
  Input.parse.getter();
  v34 = *(v21 + 88);
  v35 = v34(v33, v18);
  v36 = *MEMORY[0x277D5C150];
  if (v35 != *MEMORY[0x277D5C128] && v35 != v36 && v35 != *MEMORY[0x277D5C160])
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v48 = type metadata accessor for Logger();
    v49 = OUTLINED_FUNCTION_52_0(v48, static Logger.siriContacts);
    v50 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v50))
    {
      v51 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v51);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v52, v53, "#ContactsUnsetRelationshipFlowStrategy: Received unsupported parse type, returning .ignore() actionForInput");
      OUTLINED_FUNCTION_11_1();
    }

    static ActionForInput.ignore()();
    (*(v21 + 8))(v33, v18);
    goto LABEL_20;
  }

  v117 = *MEMORY[0x277D5C160];
  v118 = v34;
  v119 = v1;
  v116 = v21;
  v39 = *(v21 + 8);
  v39(v33, v18);
  Input.parse.getter();
  Parse.cancelOrContactIntent.getter();
  v41 = v40;
  v39(v31, v18);
  if (v41)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v42 = type metadata accessor for Logger();
    v43 = OUTLINED_FUNCTION_52_0(v42, static Logger.siriContacts);
    v44 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v44))
    {
      v45 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v45);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v46, v47, "#ContactsUnsetRelationshipFlowStrategy: .cancel() actionForInput");
      OUTLINED_FUNCTION_11_1();
    }

    static ActionForInput.cancel()();
    goto LABEL_20;
  }

  if ((v41 & 0x100) != 0)
  {
    Input.parse.getter();
    v60 = OUTLINED_FUNCTION_76();
    v61 = v118(v60);
    v62 = OUTLINED_FUNCTION_76();
    (v39)(v62);
    if (v61 == v36)
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v63 = type metadata accessor for Logger();
      v64 = OUTLINED_FUNCTION_52_0(v63, static Logger.siriContacts);
      v65 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_21_2(v65))
      {
        goto LABEL_52;
      }

      v66 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v66);
      v69 = "#ContactsUnsetRelationshipFlowStrategy: Direct Invocation parse, returning .handle()";
LABEL_51:
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v67, v68, v69);
      OUTLINED_FUNCTION_11_1();
LABEL_52:

      static ActionForInput.handle()();
      goto LABEL_20;
    }

    Input.parse.getter();
    v70 = v126;
    Parse.confirmationResponse.getter();
    v71 = OUTLINED_FUNCTION_78();
    (v39)(v71);
    v72 = type metadata accessor for ConfirmationResponse();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, 1, v72);
    outlined destroy of ResponseMode?(v70, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    if (EnumTagSinglePayload != 1)
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v88 = type metadata accessor for Logger();
      v64 = OUTLINED_FUNCTION_52_0(v88, static Logger.siriContacts);
      v89 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_21_2(v89))
      {
        goto LABEL_52;
      }

      v90 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v90);
      v69 = "#ContactsUnsetRelationshipFlowStrategy: confirmation response parse, returning .handle()";
      goto LABEL_51;
    }

    v74 = v124;
    Input.parse.getter();
    v75 = OUTLINED_FUNCTION_78();
    v76 = v118(v75);
    if (v76 == v117)
    {
      v77 = *(v116 + 96);
      v78 = OUTLINED_FUNCTION_78();
      v79(v78);
      (*(v122 + 32))(v121, v74, v123);
      if (USOParse.isOrdinalDisambiguation.getter() & 1) != 0 || (USOParse.isContactDisambiguation.getter())
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2();
        }

        v80 = type metadata accessor for Logger();
        v81 = OUTLINED_FUNCTION_52_0(v80, static Logger.siriContacts);
        v82 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_21_2(v82))
        {
          v83 = OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_24_0(v83);
          OUTLINED_FUNCTION_7_4(&dword_26686A000, v84, v85, "#ContactsUnsetRelationshipFlowStrategy: disambiguation task parse, returning .handle()");
          OUTLINED_FUNCTION_11_1();
        }

        static ActionForInput.handle()();
LABEL_41:
        v86 = OUTLINED_FUNCTION_23_2();
        v87(v86);
        goto LABEL_20;
      }

      v95 = v120;
      USOParse.preferredUserDialogAct.getter(v120);
      v96 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
      if (__swift_getEnumTagSinglePayload(v95, 1, v96) == 1)
      {
        v97 = OUTLINED_FUNCTION_23_2();
        v98(v97);
        outlined destroy of ResponseMode?(v95, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_60:
        v127 = 0u;
        v128 = 0u;
LABEL_61:
        outlined destroy of ResponseMode?(&v127, &_sypSgMd, &_sypSgMR);
        goto LABEL_47;
      }

      v99 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
      OUTLINED_FUNCTION_52(v96);
      v101 = *(v100 + 8);
      v102 = OUTLINED_FUNCTION_47_0();
      v103(v102);
      if (!v99)
      {
        v106 = OUTLINED_FUNCTION_23_2();
        v107(v106);
        goto LABEL_60;
      }

      static UsoTask_CodegenConverter.convert(task:)();

      if (!*(&v128 + 1))
      {
        v108 = OUTLINED_FUNCTION_23_2();
        v109(v108);
        goto LABEL_61;
      }

      outlined init with take of Any(&v127, v129);
      outlined init with copy of Any(v129, &v127);
      type metadata accessor for UsoTask_update_common_Person();
      if (!swift_dynamicCast())
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2();
        }

        v110 = type metadata accessor for Logger();
        v111 = OUTLINED_FUNCTION_52_0(v110, static Logger.siriContacts);
        v112 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_21_2(v112))
        {
          v113 = OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_24_0(v113);
          OUTLINED_FUNCTION_7_4(&dword_26686A000, v114, v115, "#ContactsUnsetRelationshipFlowStrategy: Received a non-update-person task type, returning .ignore()");
          OUTLINED_FUNCTION_11_1();
        }

        static ActionForInput.ignore()();
        __swift_destroy_boxed_opaque_existential_0Tm(v129);
        goto LABEL_41;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v129);
      v104 = OUTLINED_FUNCTION_23_2();
      v105(v104);
    }

    else
    {
      v91 = OUTLINED_FUNCTION_78();
      (v39)(v91);
    }

LABEL_47:
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v92 = type metadata accessor for Logger();
    v64 = OUTLINED_FUNCTION_52_0(v92, static Logger.siriContacts);
    v93 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_21_2(v93))
    {
      goto LABEL_52;
    }

    v94 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v94);
    v69 = "#ContactsUnsetRelationshipFlowStrategy: .handle() actionForInput";
    goto LABEL_51;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v54 = type metadata accessor for Logger();
  v55 = OUTLINED_FUNCTION_52_0(v54, static Logger.siriContacts);
  v56 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_21_2(v56))
  {
    v57 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v57);
    OUTLINED_FUNCTION_7_4(&dword_26686A000, v58, v59, "#ContactsUnsetRelationshipFlowStrategy: .ignore() actionForInput");
    OUTLINED_FUNCTION_11_1();
  }

  static ActionForInput.ignore()();
LABEL_20:
  OUTLINED_FUNCTION_14();
}

void ContactsUnsetRelationshipFlowStrategy.unsetRelationshipActionForInput(_:resolveRecord:shouldExpectPerson:)()
{
  OUTLINED_FUNCTION_15();
  v71 = v1;
  v70 = v2;
  v73 = v4;
  v74 = v3;
  v72 = *v0;
  v5 = type metadata accessor for USOParse();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v68 = v7;
  v69 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74();
  v67 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_18_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v14);
  v16 = &v67 - v15;
  v17 = type metadata accessor for Parse();
  v18 = OUTLINED_FUNCTION_1_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v26);
  v28 = &v67 - v27;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v29 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v29, static Logger.siriContacts);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_30();
    *v33 = 0;
    _os_log_impl(&dword_26686A000, v31, v32, "#ContactsUnsetRelationshipFlowStrategy unsetRelationshipActionForInput", v33, 2u);
    OUTLINED_FUNCTION_6();
  }

  Input.parse.getter();
  Parse.confirmationResponse.getter();
  v34 = v20[1];
  v34(v28, v17);
  v35 = type metadata accessor for ConfirmationResponse();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v35);
  outlined destroy of ResponseMode?(v16, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  if (EnumTagSinglePayload != 1 || (Input.parse.getter(), v37 = Parse.isUSODisambiguationTask.getter(), v38 = OUTLINED_FUNCTION_47(), (v34)(v38), (v37 & 1) != 0))
  {
    v39 = v30;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_21_2(v41))
    {
LABEL_10:

LABEL_11:
      ContactsUnsetRelationshipFlowStrategy.getActionForInput(input:)();
      goto LABEL_12;
    }

    v42 = OUTLINED_FUNCTION_30();
    *v42 = 0;
    v43 = "#ContactsUnsetRelationshipFlowStrategy unsetRelationshipActionForInput detected a confirmation or disambig response, deferring to getActionForInput";
LABEL_9:
    _os_log_impl(&dword_26686A000, v40, v39, v43, v42, 2u);
    OUTLINED_FUNCTION_6();
    goto LABEL_10;
  }

  v44 = static ContactsDisambiguationStrategy.extractCurrentContext(from:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  if (v71 & 1) != 0 && !*(v44 + 16) || (Optional<A>.isNilOrEmpty.getter())
  {

    v39 = v30;
    v40 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_21_2(v50))
    {
      goto LABEL_10;
    }

    v42 = OUTLINED_FUNCTION_30();
    *v42 = 0;
    v43 = "#ContactsUnsetRelationshipFlowStrategy unsetRelationshipActionForInput deferring to getActionForInput";
    goto LABEL_9;
  }

  Input.parse.getter();
  v51 = v20[11];
  v52 = OUTLINED_FUNCTION_58();
  if (v53(v52) != *MEMORY[0x277D5C160])
  {

    v66 = OUTLINED_FUNCTION_58();
    (v34)(v66);
    goto LABEL_11;
  }

  v54 = v20[12];
  v55 = OUTLINED_FUNCTION_58();
  v56(v55);
  v58 = v67;
  v57 = v68;
  v59 = v69;
  (*(v68 + 32))(v67, v25, v69);
  v60 = static ContactsDisambiguationStrategy.isRequestForDifferentContact(_:currentContactIds:currentRelation:)(v58, v45, v47, v49);

  if ((v60 & 1) == 0)
  {
    (*(v57 + 8))(v58, v59);
    goto LABEL_11;
  }

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_21_2(v62))
  {
    v63 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v63);
    OUTLINED_FUNCTION_7_4(&dword_26686A000, v64, v65, "#ContactsUnsetRelationshipFlowStrategy unsetRelationshipActionForInput encountered parse for different contact, ignoring");
    OUTLINED_FUNCTION_11_1();
  }

  static ActionForInput.ignore()();
  (*(v57 + 8))(v58, v59);
LABEL_12:
  OUTLINED_FUNCTION_14();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.deinit()
{
  v0 = ContactsUnsupportedValueStrategy.deinit();
  v1 = *(v0 + 192);

  return v0;
}

uint64_t ContactsUnsetRelationshipFlowStrategy.__deallocating_deinit()
{
  v0 = ContactsUnsetRelationshipFlowStrategy.deinit();

  return MEMORY[0x2821FE8D8](v0, 200, 7);
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

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.parseRequestedRelationship(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return ContactsUnsetRelationshipFlowStrategy.parseRequestedRelationship(resolveRecord:)(a1, a2);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.applyPersonToIntent(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.applyPersonToIntent(person:requestedRelationship:resolveRecord:)(a1, a2, a3, a4);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeMeCardNotFoundResponse(requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B708] + 4);
  v12 = swift_task_alloc();
  *(v5 + 48) = v12;
  v13 = *(a4 + 336);
  *(v5 + 16) = *(a4 + 320);
  *(v5 + 32) = v13;
  v14 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy();
  *v12 = v5;
  v12[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA138](a1, a2, a3, v14, a5);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeUnsupportedPlatformResponse(requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.makeUnsupportedPlatformResponse(requestedRelationship:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B718] + 4);
  v10 = swift_task_alloc();
  *(v4 + 48) = v10;
  v11 = *(a3 + 336);
  *(v4 + 16) = *(a3 + 320);
  *(v4 + 32) = v11;
  v12 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy();
  *v10 = v4;
  v10[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA148](a1, a2, v12, a4);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.parseUnsetRelationshipPersonFromResponse(input:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.parseUnsetRelationshipPersonFromResponse(input:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makePromptForPersonName(requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.makePromptForPersonName(requestedRelationship:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnEmptyParse(requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B720] + 4);
  v12 = swift_task_alloc();
  *(v5 + 48) = v12;
  v13 = *(a4 + 336);
  *(v5 + 16) = *(a4 + 320);
  *(v5 + 32) = v13;
  v14 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy();
  *v12 = v5;
  v12[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA150](a1, a2, a3, v14, a5);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnLowConfidence(requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B728] + 4);
  v12 = swift_task_alloc();
  *(v5 + 48) = v12;
  v13 = *(a4 + 336);
  *(v5 + 16) = *(a4 + 320);
  *(v5 + 32) = v13;
  v14 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy();
  *v12 = v5;
  v12[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA158](a1, a2, a3, v14, a5);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeContactNotFoundResponse(requestedPerson:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B710] + 4);
  v12 = swift_task_alloc();
  *(v5 + 48) = v12;
  v13 = *(a4 + 336);
  *(v5 + 16) = *(a4 + 320);
  *(v5 + 32) = v13;
  v14 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy();
  *v12 = v5;
  v12[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA140](a1, a2, a3, v14, a5);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeDisambiguationItemContainer(contacts:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeDisambiguationItemContainer(contacts:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return ContactsUnsetRelationshipFlowStrategy.makeDisambiguationItemContainer(contacts:resolveRecord:)(a2);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeDisambiguationItemContainer(contacts:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_5_3();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_0();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.parseContactDisambiguationResult(input:paginatedItems:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.parseContactDisambiguationResult(input:paginatedItems:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makePromptForContactDisambiguation(paginatedItems:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.makePromptForContactDisambiguation(paginatedItems:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForContactDisambiguationOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B730] + 4);
  v12 = swift_task_alloc();
  *(v5 + 48) = v12;
  v13 = *(a4 + 336);
  *(v5 + 16) = *(a4 + 320);
  *(v5 + 32) = v13;
  v14 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy();
  *v12 = v5;
  v12[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA160](a1, a2, a3, v14, a5);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForContactDisambiguationOnLowConfidence(paginatedItems:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B738] + 4);
  v12 = swift_task_alloc();
  *(v5 + 48) = v12;
  v13 = *(a4 + 336);
  *(v5 + 16) = *(a4 + 320);
  *(v5 + 32) = v13;
  v14 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy();
  *v12 = v5;
  v12[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA168](a1, a2, a3, v14, a5);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.parsePromptToSaveRelationshipResponse(input:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.parsePromptToSaveRelationshipResponse(input:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnEmptyParse(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B6E8] + 4);
  v14 = swift_task_alloc();
  *(v6 + 48) = v14;
  v15 = *(a5 + 336);
  *(v6 + 16) = *(a5 + 320);
  *(v6 + 32) = v15;
  v16 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy();
  *v14 = v6;
  v14[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnEmptyParse(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA110](a1, a2, a3, a4, v16, a6);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnEmptyParse(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnLowConfidence(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B6F0] + 4);
  v14 = swift_task_alloc();
  *(v6 + 48) = v14;
  v15 = *(a5 + 336);
  *(v6 + 16) = *(a5 + 320);
  *(v6 + 32) = v15;
  v16 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy();
  *v14 = v6;
  v14[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA118](a1, a2, a3, a4, v16, a6);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeSaveRelationshipRejectedResponse(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipRejectedResponse(person:requestedRelationship:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.makeErrorResponse(error:app:intent:)();
}

uint64_t static UnsetRelationshipPerson.from(userDialogAct:)@<X0>(uint64_t a1@<X8>)
{
  if (Siri_Nlu_External_UserDialogAct.usoTask.getter())
  {
    static UsoTask_CodegenConverter.convert(task:)();

    if (*(&v17 + 1))
    {
      outlined init with take of Any(&v16, v18);
      outlined init with copy of Any(v18, &v16);
      type metadata accessor for UsoTask_setIdentity_common_Person();
      if (swift_dynamicCast())
      {

        dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();

        if (v15)
        {
          dispatch thunk of UsoEntity_common_Person.name.getter();
          v3 = v2;

          if (v3)
          {
LABEL_19:
            UnsetRelationshipPerson.init(firstName:lastName:middleName:fullName:nickname:)();

            __swift_destroy_boxed_opaque_existential_0Tm(v18);
            v12 = type metadata accessor for UnsetRelationshipPerson();
            __swift_storeEnumTagSinglePayload(a1, 0, 1, v12);
            return __swift_destroy_boxed_opaque_existential_0Tm(&v16);
          }
        }

        goto LABEL_22;
      }

      type metadata accessor for UsoTask_update_common_Person();
      if (!swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
LABEL_23:
        __swift_destroy_boxed_opaque_existential_0Tm(&v16);
        goto LABEL_24;
      }

      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();

      if (!v15 || (dispatch thunk of UsoEntity_common_Person.name.getter(), v5 = v4, , !v5))
      {
        dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
        if (v15)
        {
          dispatch thunk of UsoEntity_common_Person.name.getter();
          v7 = v6;

          if (v7)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }

LABEL_22:
        __swift_destroy_boxed_opaque_existential_0Tm(v18);

        goto LABEL_23;
      }

LABEL_14:
      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.siriContacts);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_26686A000, v9, v10, "#ContactsUnsetRelationshipFlowStrategy returning UnsetRelationshipPerson", v11, 2u);
        MEMORY[0x26D5E3300](v11, -1, -1);
      }

      goto LABEL_19;
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  outlined destroy of ResponseMode?(&v16, &_sypSgMd, &_sypSgMR);
LABEL_24:
  v14 = type metadata accessor for UnsetRelationshipPerson();
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v14);
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with take of SpeakableString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:)();
}

uint64_t outlined init with copy of ContactServiceProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_52(v3);
  (*v4)(a2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_73();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type BasicDisambiguationItemContainer<SAPerson> and conformance BasicDisambiguationItemContainer<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_73();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc SAPerson.internalGUID.getter(void *a1)
{
  v1 = [a1 internalGUID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t type metadata accessor for CNContact(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_14_4@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v4 = v1[74];
  v5 = v1[73];
  v6 = v1[70];
  v7 = v1[69];
  v8 = v1[68];
  v9 = v1[67];
  v10 = v1[66];
  v11 = v1[65];
  v13 = v1[63];
  v12 = v1[64];
  v15 = v1[62];
  v16 = v1[61];
  v17 = v1[60];
  v18 = v1[59];
  v19 = v1[56];
  v20 = v1[53];
  v21 = v1[50];
  v22 = v1[47];
  v23 = v1[44];
  v24 = v1[41];
  v25 = v1[38];
  v26 = v1[37];
  v27 = v1[36];
  *(v2 - 88) = v1[33];
}

uint64_t OUTLINED_FUNCTION_15_3()
{
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[67];
  v9 = v0[66];
  v10 = v0[65];
  v12 = v0[63];
  v11 = v0[64];
  v15 = v0[62];
  v16 = v0[61];
  v17 = v0[60];
  v18 = v0[59];
  v19 = v0[56];
  v20 = v0[53];
  v21 = v0[50];
  v22 = v0[47];
  v23 = v0[44];
  v24 = v0[41];
  v25 = v0[38];
  v26 = v0[37];
  v13 = v0[33];
  *(v1 - 88) = v0[36];
  *(v1 - 80) = v13;
}

id OUTLINED_FUNCTION_17_2(uint64_t a1)
{

  return [v2 (v1 + 3192)];
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_19_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v5 = v1[63];
  v4 = v1[64];
  v7 = v1[59];
  v6 = v1[60];
  v9 = v1[57];
  v8 = v1[58];
  v11 = v1[55];
  v10 = v1[56];
  v13 = v1[53];
  v12 = v1[54];
  v15 = v1[52];
  v16 = v1[51];
  v17 = v1[48];
  v18 = v1[45];
  v19 = v1[42];
  v20 = v1[39];
  v21 = v1[36];
  v22 = v1[33];
  v23 = v1[30];
  v24 = v1[29];
  v25 = v1[28];
}

BOOL OUTLINED_FUNCTION_21_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_22_2()
{
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[59];
  v5 = v0[60];
  v7 = v0[57];
  v6 = v0[58];
  v9 = v0[55];
  v8 = v0[56];
  v11 = v0[53];
  v10 = v0[54];
  v13 = v0[52];
  v14 = v0[51];
  v15 = v0[48];
  v16 = v0[45];
  v17 = v0[42];
  v18 = v0[39];
  v19 = v0[36];
  v20 = v0[33];
  v21 = v0[30];
  v22 = v0[29];
  v23 = v0[28];
}

uint64_t OUTLINED_FUNCTION_30_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_45_0()
{

  return CATWrapperSimple.__allocating_init(options:globals:)();
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return SpeakableString.init(print:speak:)();
}

id OUTLINED_FUNCTION_50_0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_52_0(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_56_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);
  v5 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);

  return DeviceState.isVox.getter();
}

uint64_t OUTLINED_FUNCTION_59()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[7];
  v3 = v0[8];
  v5 = *(v0[9] + 8);
  return v0[10];
}

void OUTLINED_FUNCTION_63()
{

  JUMPOUT(0x26D5E2470);
}

uint64_t OUTLINED_FUNCTION_64()
{

  return ParameterResolutionRecord.intent.getter();
}

id OUTLINED_FUNCTION_82@<X0>(int *a1@<X8>)
{
  v3 = a1[1];
  v5 = a1 + *a1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_83(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return MEMORY[0x2821B7590](a1, a2, a3, a4, a5, a18, a17, v18, v19);
}

uint64_t OUTLINED_FUNCTION_84()
{
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[10];
}

uint64_t OUTLINED_FUNCTION_88()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_89()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_90()
{

  return static CATOption.defaultMode.getter();
}

id CNLabeledValue<>.init(relationLabel:contactName:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = static Dictionary<>.cnLabel(forNLSemantic:)(a1, a2);
  v11 = v10;

  v12 = MEMORY[0x26D5E2470](v9, v11);

  type metadata accessor for CNContactRelation();
  v13._countAndFlagsBits = a3;
  v13._object = a4;
  isa = CNContactRelation.__allocating_init(name:)(v13).super.isa;
  v15 = [v8 initWithLabel:v12 value:isa];

  return v15;
}

id CNLabeledValue<>.init(address:)(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277CBDB78]) init];
  v12 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_street);
  if (v13)
  {
    v14 = v13;
    MEMORY[0x26D5E2470](v12);
    OUTLINED_FUNCTION_2_8();
    v15 = MEMORY[0x26D5E2470](0x746565727473, 0xE600000000000000);
    OUTLINED_FUNCTION_0_6(v15);
  }

  v16 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_subLocality);
  if (v17)
  {
    v18 = v17;
    MEMORY[0x26D5E2470](v16);
    OUTLINED_FUNCTION_2_8();
    v19 = MEMORY[0x26D5E2470](0x6C61636F4C627573, 0xEB00000000797469);
    OUTLINED_FUNCTION_0_6(v19);
  }

  v20 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_city);
  if (v21)
  {
    v22 = v21;
    MEMORY[0x26D5E2470](v20);
    OUTLINED_FUNCTION_2_8();
    v23 = MEMORY[0x26D5E2470](2037672291, 0xE400000000000000);
    OUTLINED_FUNCTION_0_6(v23);
  }

  v24 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_subAdministrativeArea);
  if (v25)
  {
    v26 = v25;
    MEMORY[0x26D5E2470](v24);
    OUTLINED_FUNCTION_2_8();
    v27 = MEMORY[0x26D5E2470](0xD000000000000015, 0x800000026696F260);
    OUTLINED_FUNCTION_0_6(v27);
  }

  v28 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_state);
  if (v29)
  {
    v30 = v29;
    MEMORY[0x26D5E2470](v28);
    OUTLINED_FUNCTION_2_8();
    v31 = MEMORY[0x26D5E2470](0x6574617473, 0xE500000000000000);
    OUTLINED_FUNCTION_0_6(v31);
  }

  v32 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_postalCode);
  if (v33)
  {
    v34 = v33;
    MEMORY[0x26D5E2470](v32);
    OUTLINED_FUNCTION_2_8();
    v35 = MEMORY[0x26D5E2470](0x6F436C6174736F70, 0xEA00000000006564);
    OUTLINED_FUNCTION_0_6(v35);
  }

  v36 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_country);
  if (v37)
  {
    v38 = v37;
    MEMORY[0x26D5E2470](v36);
    OUTLINED_FUNCTION_2_8();
    v39 = MEMORY[0x26D5E2470](0x7972746E756F63, 0xE700000000000000);
    OUTLINED_FUNCTION_0_6(v39);
  }

  v40 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_isoCountryCode);
  if (v41)
  {
    v42 = v41;
    MEMORY[0x26D5E2470](v40);
    OUTLINED_FUNCTION_2_8();
    v43 = MEMORY[0x26D5E2470](0x746E756F434F5349, 0xEE0065646F437972);
    OUTLINED_FUNCTION_0_6(v43);
  }

  v44 = a1;
  v45 = outlined bridged method (ob) of @objc INObject.identifier.getter(v44);
  if (v46)
  {
    v47 = v45;
    v48 = v46;
  }

  else
  {
    UUID.init()();
    v47 = UUID.uuidString.getter();
    v48 = v49;
    (*(v6 + 8))(v10, v3);
  }

  v50 = MEMORY[0x26D5E2470](v47, v48);

  v51 = outlined bridged method (pb) of @objc PostalAddress.street.getter(v44, &selRef_handleLabel);
  if (!v52)
  {
    v51 = static String.EMPTY.getter();
  }

  v53 = v51;
  v54 = v52;
  v55 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v56 = MEMORY[0x26D5E2470](v53, v54);

  v57 = v11;
  v58 = [v55 initWithIdentifier:v50 label:v56 value:v57];

  return v58;
}

uint64_t CNLabeledValue<>.buildMapsURL(contact:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  v5 = type metadata accessor for CharacterSet();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v14 = [v3 value];
  v15 = [v13 singleLineStringFromPostalAddress:v14 addCountryName:0];

  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v53[0] = v16;
  v53[1] = v18;
  static CharacterSet.urlPathAllowed.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v19 = MEMORY[0x277D837D0];
  v20 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v22 = v21;
  (*(v8 + 8))(v12, v5);

  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_266966EE0;
    *(v23 + 56) = v19;
    v24 = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 64) = v24;
    *(v23 + 32) = v20;
    *(v23 + 40) = v22;
    v25 = [a1 iOSLegacyIdentifier];
    v26 = MEMORY[0x277D849A8];
    v27 = MEMORY[0x277D84A20];
    *(v23 + 96) = MEMORY[0x277D849A8];
    *(v23 + 104) = v27;
    *(v23 + 72) = v25;
    v28 = [v3 iOSLegacyIdentifier];
    *(v23 + 136) = v26;
    *(v23 + 144) = v27;
    *(v23 + 112) = v28;
    v29 = [a1 identifier];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *(v23 + 176) = v19;
    *(v23 + 184) = v24;
    *(v23 + 152) = v30;
    *(v23 + 160) = v32;
    v33 = [v3 identifier];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    *(v23 + 216) = v19;
    *(v23 + 224) = v24;
    *(v23 + 192) = v34;
    *(v23 + 200) = v36;
    v37 = String.init(format:_:)();
    v39 = v38;
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.siriContacts);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v53[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v53);
      _os_log_impl(&dword_26686A000, v41, v42, "#buildMapsURL Building Maps punchout URL from string: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x26D5E3300](v44, -1, -1);
      MEMORY[0x26D5E3300](v43, -1, -1);
    }

    URL.init(string:)();
  }

  else
  {
LABEL_8:
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.siriContacts);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_26686A000, v47, v48, "#buildMapsURL Failed to format CNPostalAddress into percent encoded string, returning nil", v49, 2u);
      MEMORY[0x26D5E3300](v49, -1, -1);
    }

    v50 = type metadata accessor for URL();
    return __swift_storeEnumTagSinglePayload(v52, 1, 1, v50);
  }
}

CNContactRelation __swiftcall CNContactRelation.__allocating_init(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = MEMORY[0x26D5E2470](countAndFlagsBits, object);

  v5 = [v3 initWithName_];

  return v5;
}

uint64_t outlined bridged method (pb) of @objc PostalAddress.street.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

unint64_t type metadata accessor for CNContactRelation()
{
  result = lazy cache variable for type metadata for CNContactRelation;
  if (!lazy cache variable for type metadata for CNContactRelation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNContactRelation);
  }

  return result;
}

id OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return [v1 (v3 + 3192)];
}

uint64_t OUTLINED_FUNCTION_2_8()
{
}

uint64_t type metadata accessor for ContactsLabelCATs()
{
  result = type metadata singleton initialization cache for ContactsLabelCATs;
  if (!type metadata singleton initialization cache for ContactsLabelCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactsLabelCATs.address()(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_4(MEMORY[0x277D55BF0]);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  *v3 = v4;
  v3[1] = ContactsLabelCATs.address();
  v5 = MEMORY[0x277D84F90];

  return v7(a1, 0xD000000000000015, 0x800000026696F440, v5);
}

uint64_t ContactsLabelCATs.email()()
{
  v0 = OUTLINED_FUNCTION_5_4(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_3_4(v0);
  *v1 = v2;
  v1[1] = ContactsLabelCATs.email();
  v3 = OUTLINED_FUNCTION_2_9();

  return v4(v3);
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

{
  return OUTLINED_FUNCTION_0_7();
}

uint64_t ContactsLabelCATs.phone()()
{
  v0 = OUTLINED_FUNCTION_5_4(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_3_4(v0);
  *v1 = v2;
  v1[1] = ContactsLabelCATs.address();
  v3 = OUTLINED_FUNCTION_2_9();

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_0_7();
}

uint64_t ContactsLabelCATs.relationship(relationship:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_266966D90;
  strcpy((v6 + 32), "relationship");
  *(v6 + 45) = 0;
  *(v6 + 46) = -5120;
  outlined init with copy of URL?(a1, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 48));
    (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, v5, v7);
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t ContactsLabelCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return ContactsLabelCATs.init(templateDir:options:globals:)(a1, a2);
}

uint64_t ContactsLabelCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  outlined init with copy of URL?(a1, &v14 - v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v5 + 16))(v8, a2, v4);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v12;
}

uint64_t ContactsLabelCATs.__deallocating_deinit()
{
  v0 = CATWrapper.deinit();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

void RedirectToCompanionFlow.state.didset()
{
  v1 = v0;
  v2 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriContacts);

  v17 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = OBJC_IVAR____TtC19SiriContactsIntents23RedirectToCompanionFlow_state;
    swift_beginAccess();
    outlined init with copy of RedirectToCompanionFlow.State(v1 + v10, v5);
    v11 = RedirectToCompanionFlow.State.description.getter();
    v13 = v12;
    outlined destroy of RedirectToCompanionFlow.State(v5);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v18);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_26686A000, v17, v7, "#RedirectToCompanionFlow state: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x26D5E3300](v9, -1, -1);
    MEMORY[0x26D5E3300](v8, -1, -1);
  }

  else
  {
    v15 = v17;
  }
}

uint64_t RedirectToCompanionFlow.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19SiriContactsIntents23RedirectToCompanionFlow_state;
  swift_beginAccess();
  outlined assign with copy of RedirectToCompanionFlow.State(a1, v1 + v3);
  swift_endAccess();
  RedirectToCompanionFlow.state.didset();
  return outlined destroy of RedirectToCompanionFlow.State(a1);
}

uint64_t RedirectToCompanionFlow.__allocating_init(parse:)(uint64_t a1)
{
  v2 = type metadata accessor for Parse();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v8 = OUTLINED_FUNCTION_4_5();
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = *(v5 + 16);
  v15 = OUTLINED_FUNCTION_47_0();
  v16(v15);
  Input.init(parse:)();
  (*(v5 + 8))(a1, v2);
  v17 = type metadata accessor for Input();
  __swift_storeEnumTagSinglePayload(v13, 0, 3, v17);
  v18 = type metadata accessor for RedirectToCompanionFlow(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  outlined init with take of RedirectToCompanionFlow.State(v13, v21 + OBJC_IVAR____TtC19SiriContactsIntents23RedirectToCompanionFlow_state);
  return v21;
}

uint64_t outlined init with take of RedirectToCompanionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL RedirectToCompanionFlow.on(input:)()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4_5();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriContacts);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000070, 0x800000026696F460, v16);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7475706E69286E6FLL, 0xEA0000000000293ALL, v16);
    _os_log_impl(&dword_26686A000, v9, v10, "%s:%s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v12 = OBJC_IVAR____TtC19SiriContactsIntents23RedirectToCompanionFlow_state;
  swift_beginAccess();
  outlined init with copy of RedirectToCompanionFlow.State(v1 + v12, v7);
  v13 = type metadata accessor for Input();
  v14 = __swift_getEnumTagSinglePayload(v7, 3, v13) == 0;
  outlined destroy of RedirectToCompanionFlow.State(v7);
  return v14;
}

uint64_t RedirectToCompanionFlow.execute()()
{
  OUTLINED_FUNCTION_4();
  v1[8] = v2;
  v1[9] = v0;
  v3 = type metadata accessor for ExecuteOnRemoteDeviceSpecification();
  v1[10] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v1[11] = v4;
  v6 = *(v5 + 64);
  v1[12] = OUTLINED_FUNCTION_10_0();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow017UserIdentityCheckC8StrategyV20HandoffConfigurationVSgMd, &_s11SiriKitFlow017UserIdentityCheckC8StrategyV20HandoffConfigurationVSgMR) - 8) + 64);
  v1[13] = OUTLINED_FUNCTION_10_0();
  v8 = type metadata accessor for UserIdentityCheckFlowStrategy();
  v1[14] = v8;
  OUTLINED_FUNCTION_1_1(v8);
  v1[15] = v9;
  v11 = *(v10 + 64);
  v1[16] = OUTLINED_FUNCTION_10_0();
  v12 = type metadata accessor for UserIdentityCheckFlowStrategy.HandoffConfiguration();
  v1[17] = v12;
  OUTLINED_FUNCTION_1_1(v12);
  v1[18] = v13;
  v15 = *(v14 + 64);
  v1[19] = OUTLINED_FUNCTION_10_0();
  v16 = type metadata accessor for CompanionDeviceInfoRequirement();
  v1[20] = v16;
  OUTLINED_FUNCTION_1_1(v16);
  v1[21] = v17;
  v19 = *(v18 + 64);
  v1[22] = OUTLINED_FUNCTION_10_0();
  v20 = type metadata accessor for FlowUnhandledReason();
  v1[23] = v20;
  OUTLINED_FUNCTION_1_1(v20);
  v1[24] = v21;
  v23 = *(v22 + 64);
  v1[25] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_4_5();
  v25 = *(v24 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v26 = type metadata accessor for Input();
  v1[28] = v26;
  OUTLINED_FUNCTION_1_1(v26);
  v1[29] = v27;
  v29 = *(v28 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](RedirectToCompanionFlow.execute(), 0, 0);
}

{
  v66 = v0;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000070, 0x800000026696F460, v65);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xE900000000000029, v65);
    _os_log_impl(&dword_26686A000, v2, v3, "%s:%s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[9];
  v8 = OBJC_IVAR____TtC19SiriContactsIntents23RedirectToCompanionFlow_state;
  swift_beginAccess();
  outlined init with copy of RedirectToCompanionFlow.State(v7 + v8, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 3, v6);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 3)
    {
      v11 = v0[24];
      v10 = v0[25];
      v12 = v0[23];
      v13 = v0[8];
      (*(v11 + 104))(v10, *MEMORY[0x277D5B8A0], v12);
      static ExecuteResponse.unhandled(reason:)();
      (*(v11 + 8))(v10, v12);
    }

    else
    {
      v35 = v0[27];
      v36 = v0[8];
      static ExecuteResponse.complete()();
      outlined destroy of RedirectToCompanionFlow.State(v35);
    }
  }

  else
  {
    v15 = v0[30];
    v14 = v0[31];
    v16 = v0[28];
    v17 = v0[29];
    v18 = v0[26];
    v19 = v0[21];
    v49 = v0[20];
    v50 = v0[22];
    v63 = v0[19];
    v64 = v0[18];
    v62 = v0[17];
    v20 = v0[15];
    v60 = v20;
    v61 = v0[14];
    v51 = v0[13];
    v52 = v0[16];
    v53 = v0[11];
    v54 = v0[12];
    v55 = v0[10];
    v57 = v0[9];
    v59 = v0[8];
    (*(v17 + 32))(v15, v0[27], v16);
    v21 = *(v17 + 16);
    v21(v14, v15, v16);
    __swift_storeEnumTagSinglePayload(v18, 1, 3, v16);
    RedirectToCompanionFlow.state.setter(v18);
    v58 = *(v17 + 8);
    v56 = v16;
    v58(v15, v16);
    type metadata accessor for CompanionCompatibilityCheckFlowStrategy();
    (*(v19 + 104))(v50, *MEMORY[0x277D5C088], v49);
    static CompanionCompatibilityCheckFlowStrategy.require(_:redirectToServerOnFailure:shouldOutputErrorDialog:)();
    (*(v19 + 8))(v50, v49);
    v22 = type metadata accessor for SimpleHandoffStrategy();
    v23 = swift_allocObject();
    v65[3] = v22;
    v65[4] = lazy protocol witness table accessor for type SimpleHandoffStrategy and conformance SimpleHandoffStrategy(&lazy protocol witness table cache variable for type SimpleHandoffStrategy and conformance SimpleHandoffStrategy, v24, type metadata accessor for SimpleHandoffStrategy);
    v65[0] = v23;

    UserIdentityCheckFlowStrategy.HandoffConfiguration.init(companionCompatiblityCheck:handoffStrategy:)();
    (*(v64 + 16))(v51, v63, v62);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v62);
    UserIdentityCheckFlowStrategy.init(allowsAnonymousUser:allowsUserInteraction:handoffConfiguration:requireSpeechProfile:)();
    UserIdentityCheckFlowStrategy.requireSpeechProfile.setter();
    v21(v15, v14, v16);
    (*(v53 + 104))(v54, *MEMORY[0x277D5C0E0], v55);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v25 = type metadata accessor for ExecuteOnRemoteFlow();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    OUTLINED_FUNCTION_47_0();
    v0[5] = ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:shouldSendSpeechPackage:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
    v28 = type metadata accessor for CommonFlowGuard();
    OUTLINED_FUNCTION_1_1(v28);
    v30 = *(v29 + 72);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    *(swift_allocObject() + 16) = xmmword_266966ED0;
    static CommonFlowGuard.ensuringUserIdentity(using:)();
    static CommonFlowGuard.ensuringUserHasSupportedCompanion(using:)();
    v33 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

    v0[6] = v33;
    type metadata accessor for GuardFlow();
    v34 = Flow.guarded<A>(by:)();

    v0[7] = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMR);
    lazy protocol witness table accessor for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>();
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    (*(v60 + 8))(v52, v61);
    (*(v64 + 8))(v63, v62);
    v58(v14, v56);
  }

  v38 = v0[30];
  v37 = v0[31];
  v40 = v0[26];
  v39 = v0[27];
  v41 = v0[25];
  v42 = v0[22];
  v43 = v0[19];
  v44 = v0[16];
  v46 = v0[12];
  v45 = v0[13];

  OUTLINED_FUNCTION_3();

  return v47();
}

uint64_t closure #1 in RedirectToCompanionFlow.execute()(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v3 = type metadata accessor for ExecuteOnRemoteFlowResult();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v61 - v10);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v61 - v13);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMd, &_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v61 - v19;
  v21 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v65 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v61 - v25;
  outlined init with copy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(a1, v20);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow015ExecuteOnRemoteC6ResultO6result_tMd, &_s11SiriKitFlow015ExecuteOnRemoteC6ResultO6result_tMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v27) == 1)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.siriContacts);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26686A000, v29, v30, "ExecuteOnRemote guard flows failed, assuming a server redirect or handoff should have happened, doing nothing.", v31, 2u);
      MEMORY[0x26D5E3300](v31, -1, -1);
    }

    v32 = type metadata accessor for Input();
    __swift_storeEnumTagSinglePayload(v26, 2, 3, v32);
    outlined destroy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(v20);
  }

  else
  {
    (*(v4 + 32))(v16, v20, v3);
    v33 = *(v4 + 16);
    v33(v14, v16, v3);
    if ((*(v4 + 88))(v14, v3) == *MEMORY[0x277D5B4B0])
    {
      (*(v4 + 96))(v14, v3);
      v34 = *v14;
      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.siriContacts);
      v36 = v34;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v67 = v34;
        v68 = v64;
        *v39 = 136315138;
        v40 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v41 = String.init<A>(describing:)();
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v68);

        *(v39 + 4) = v43;
        _os_log_impl(&dword_26686A000, v37, v38, "ExecuteOnRemote failed with an error=%s: Possible server redirect. Will redirect this input to server as a fallback.", v39, 0xCu);
        v44 = v64;
        __swift_destroy_boxed_opaque_existential_0Tm(v64);
        MEMORY[0x26D5E3300](v44, -1, -1);
        MEMORY[0x26D5E3300](v39, -1, -1);
      }

      else
      {
      }

      (*(v4 + 8))(v16, v3);
      v57 = type metadata accessor for Input();
      __swift_storeEnumTagSinglePayload(v26, 3, 3, v57);
    }

    else
    {
      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.siriContacts);
      v33(v11, v16, v3);
      v46 = Logger.logObject.getter();
      LODWORD(v64) = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v46, v64))
      {
        v47 = swift_slowAlloc();
        v62 = v46;
        v48 = v47;
        v63 = swift_slowAlloc();
        v68 = v63;
        *v48 = 136315138;
        v33(v8, v11, v3);
        v61 = String.init<A>(describing:)();
        v50 = v49;
        v51 = *(v4 + 8);
        v51(v11, v3);
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v50, &v68);

        v53 = v48;
        *(v48 + 4) = v52;
        v54 = v62;
        v55 = v53;
        _os_log_impl(&dword_26686A000, v62, v64, "ExecuteOnRemote flow completed with: %s", v53, 0xCu);
        v56 = v63;
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
        MEMORY[0x26D5E3300](v56, -1, -1);
        MEMORY[0x26D5E3300](v55, -1, -1);
      }

      else
      {

        v51 = *(v4 + 8);
        v51(v11, v3);
      }

      v51(v16, v3);
      v58 = type metadata accessor for Input();
      __swift_storeEnumTagSinglePayload(v26, 2, 3, v58);
      v51(v14, v3);
    }
  }

  v59 = v65;
  outlined init with copy of RedirectToCompanionFlow.State(v26, v65);
  RedirectToCompanionFlow.state.setter(v59);
  return outlined destroy of RedirectToCompanionFlow.State(v26);
}

uint64_t RedirectToCompanionFlow.execute(completion:)()
{
  type metadata accessor for RedirectToCompanionFlow(0);
  lazy protocol witness table accessor for type SimpleHandoffStrategy and conformance SimpleHandoffStrategy(&lazy protocol witness table cache variable for type RedirectToCompanionFlow and conformance RedirectToCompanionFlow, 255, type metadata accessor for RedirectToCompanionFlow);
  OUTLINED_FUNCTION_47_0();
  return Flow.deferToExecuteAsync(_:)();
}

unint64_t RedirectToCompanionFlow.State.description.getter()
{
  v1 = type metadata accessor for Input();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = OUTLINED_FUNCTION_4_5();
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  outlined init with copy of RedirectToCompanionFlow.State(v0, v14 - v13);
  v16 = 0x676E696E6E75722ELL;
  switch(__swift_getEnumTagSinglePayload(v15, 3, v1))
  {
    case 1u:
      return v16;
    case 2u:
      v16 = 0x74656C706D6F632ELL;
      break;
    case 3u:
      v16 = 0xD000000000000011;
      break;
    default:
      (*(v4 + 32))(v9, v15, v1);
      _StringGuts.grow(_:)(18);

      lazy protocol witness table accessor for type SimpleHandoffStrategy and conformance SimpleHandoffStrategy(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x277D5C118]);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D5E2570](v17);

      MEMORY[0x26D5E2570](41, 0xE100000000000000);
      v16 = 0x65527475706E692ELL;
      v18 = *(v4 + 8);
      v19 = OUTLINED_FUNCTION_47_0();
      v20(v19);
      break;
  }

  return v16;
}

uint64_t RedirectToCompanionFlow.__deallocating_deinit()
{
  outlined destroy of RedirectToCompanionFlow.State(v0 + OBJC_IVAR____TtC19SiriContactsIntents23RedirectToCompanionFlow_state);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance RedirectToCompanionFlow(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance ContactsUnsupportedFlow;
}

uint64_t protocol witness for Flow.execute() in conformance RedirectToCompanionFlow()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return RedirectToCompanionFlow.execute()();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance RedirectToCompanionFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RedirectToCompanionFlow(0);

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t protocol witness for HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse() in conformance SimpleHandoffStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B6C8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return MEMORY[0x2821BA0B8](a1, a2, a3);
}

uint64_t outlined init with copy of RedirectToCompanionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RedirectToCompanionFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>()
{
  result = lazy protocol witness table cache variable for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>;
  if (!lazy protocol witness table cache variable for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SimpleHandoffStrategy and conformance SimpleHandoffStrategy(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata completion function for RedirectToCompanionFlow()
{
  result = type metadata accessor for RedirectToCompanionFlow.State(319);
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

uint64_t dispatch thunk of RedirectToCompanionFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return v8(a1);
}

uint64_t type metadata completion function for RedirectToCompanionFlow.State()
{
  v0 = type metadata accessor for Input();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t outlined init with copy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMd, &_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMd, &_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with copy of RedirectToCompanionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_5()
{
  v0 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v2 = *(v0 - 8);
  return v0 - 8;
}

uint64_t MissingMeCardViewBuilder.makeViewsForMac()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriContacts);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26686A000, v7, v8, "#MissingMeCardViewBuilder Constructing punchout button for macOS.", v9, 2u);
    MEMORY[0x26D5E3300](v9, -1, -1);
  }

  v10 = *(v1 + 40);
  ContactsLabelCATs.openContacts()();
  v11 = specialized IdiomSensitiveViewBuilder.makeContactsAppLaunchButton(appUtil:result:)(v1 + 48, v5);
  outlined destroy of Result<TemplatingResult, Error>(v5);
  return v11;
}

uint64_t MissingMeCardViewBuilder.makeViewsForWatch()(const char *a1)
{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriContacts);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26686A000, v3, v4, a1, v5, 2u);
    MEMORY[0x26D5E3300](v5, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t MissingMeCardViewBuilder.makeViewsForIOS()(const char *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriContacts);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26686A000, v9, v10, a1, v11, 2u);
    MEMORY[0x26D5E3300](v11, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  v19 = xmmword_266966A40;
  *(v12 + 16) = xmmword_266966A40;
  v13 = swift_allocObject();
  *(v13 + 16) = v19;
  static AppUtil.buildPunchoutFor(string:)();
  *(v13 + 32) = v14;
  v15 = *(v3 + 40);
  ContactsLabelCATs.siriSettings()();
  Result<>.firstPrint.getter();
  v17 = v16;
  outlined destroy of Result<TemplatingResult, Error>(v7);
  if (!v17)
  {
    static String.EMPTY.getter();
  }

  type metadata accessor for SAUIButton();
  *(v12 + 32) = SAUIButton.init(commands:text:)();
  return v12;
}

uint64_t outlined destroy of Result<TemplatingResult, Error>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for SAUIButton()
{
  result = lazy cache variable for type metadata for SAUIButton;
  if (!lazy cache variable for type metadata for SAUIButton)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAUIButton);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MissingMeCardViewBuilder(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for MissingMeCardViewBuilder(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void UsoEntityBuilder_common_Person.init(name:contactId:handle:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v2 = type metadata accessor for UsoIdentifier();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  dispatch thunk of UsoEntityBuilder_common_Person.__allocating_init()();

  dispatch thunk of UsoEntityBuilder_common_Person.setName(value:)();

  UsoIdentifier.init(value:appBundleId:namespace:)();
  dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
  if (v1)
  {
    if (one-time initialization token for transformer != -1)
    {
      swift_once();
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A15ContactsIntents16ContactAttributeC0A8Ontology032UsoEntityBuilderProtocol_common_F7Address_pSgGMd, &_s13SiriUtilities11TransformerVy0A15ContactsIntents16ContactAttributeC0A8Ontology032UsoEntityBuilderProtocol_common_F7Address_pSgGMR);
    __swift_project_value_buffer(v6, static Transformer<>.transformer);
    v7 = Transformer.transform.getter();
    v15 = v1;
    v7(&v14, &v15);

    if (v14)
    {
      dispatch thunk of UsoEntityBuilder_common_Person.setSpecifyingContactAddress(value:)();

      v10 = OUTLINED_FUNCTION_3_5();
      v11(v10);
    }

    else
    {
      v12 = OUTLINED_FUNCTION_3_5();
      v13(v12);
    }
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_5();
    v9(v8);
  }

  OUTLINED_FUNCTION_14();
}

void static UsoEntityBuilder_common_PhoneNumber.from(_:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = type metadata accessor for UsoIdentifier();
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v19 = v18 - v17;
  v20 = type metadata accessor for UsoEntityBuilder_common_PhoneNumber();
  OUTLINED_FUNCTION_2_6(v20);
  UsoEntityBuilder_common_PhoneNumber.init()();
  v21 = [v1 label];
  if (v21)
  {
    v22 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    dispatch thunk of UsoEntityBuilder_common_PhoneNumber.setLabel(value:)();
  }

  v23 = [v1 value];
  v24 = [v23 stringValue];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  dispatch thunk of UsoEntityBuilder_common_PhoneNumber.setValue(value:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v5 + 8))(v10, v2);
  OUTLINED_FUNCTION_1_8();
  UsoIdentifier.init(value:appBundleId:namespace:)();
  dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
  (*(v14 + 8))(v19, v11);
  OUTLINED_FUNCTION_14();
}

uint64_t UsoEntityBuilder_common_PhoneNumber.init(phoneNumber:)(void *a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t))
{
  v7 = a2();

  outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(a1);
  if (v8)
  {
    v9 = String.sanitizeCNLabel.getter();
    v11 = v10;

    a3(v9, v11);
  }

  v12 = outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(a1);
  if (v13)
  {
    a4(v12);
  }

  return v7;
}

void static UsoEntityBuilder_common_EmailAddress.from(_:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = type metadata accessor for UsoIdentifier();
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v19 = v18 - v17;
  v20 = type metadata accessor for UsoEntityBuilder_common_EmailAddress();
  OUTLINED_FUNCTION_2_6(v20);
  UsoEntityBuilder_common_EmailAddress.init()();
  v21 = [v1 label];
  if (v21)
  {
    v22 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    dispatch thunk of UsoEntityBuilder_common_EmailAddress.setLabel(value:)();
  }

  v23 = [v1 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of UsoEntityBuilder_common_EmailAddress.setValue(value:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v5 + 8))(v10, v2);
  OUTLINED_FUNCTION_1_8();
  UsoIdentifier.init(value:appBundleId:namespace:)();
  dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
  (*(v14 + 8))(v19, v11);
  OUTLINED_FUNCTION_14();
}

void static UsoEntityBuilder_common_PostalAddress.from(_:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v28 = type metadata accessor for UUID();
  v2 = OUTLINED_FUNCTION_1_0(v28);
  v26 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v25 = v7 - v6;
  v8 = type metadata accessor for UsoIdentifier();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v29 = v10;
  v30 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v27 = v14 - v13;
  v15 = type metadata accessor for UsoEntityBuilder_common_PostalAddress();
  OUTLINED_FUNCTION_2_6(v15);
  UsoEntityBuilder_common_PostalAddress.init()();
  v16 = [v1 label];
  if (v16)
  {
    v17 = v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.sanitizeCNLabel.getter();

    dispatch thunk of UsoEntityBuilder_common_PostalAddress.setLabel(value:)();
  }

  v18 = [v1 value];
  v19 = type metadata accessor for UsoEntityBuilder_common_GeographicArea();
  OUTLINED_FUNCTION_2_6(v19);
  UsoEntityBuilder_common_GeographicArea.init()();
  v20 = [v18 street];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of UsoEntityBuilder_common_GeographicArea.setName(value:)();

  OUTLINED_FUNCTION_5_9();
  dispatch thunk of UsoEntityBuilder_common_PostalAddress.setStreet(value:)();

  OUTLINED_FUNCTION_4_6();
  UsoEntityBuilder_common_GeographicArea.init()();
  v21 = [v18 city];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of UsoEntityBuilder_common_GeographicArea.setName(value:)();

  OUTLINED_FUNCTION_5_9();
  dispatch thunk of UsoEntityBuilder_common_PostalAddress.setCity(value:)();

  OUTLINED_FUNCTION_4_6();
  UsoEntityBuilder_common_GeographicArea.init()();
  v22 = [v18 state];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of UsoEntityBuilder_common_GeographicArea.setName(value:)();

  OUTLINED_FUNCTION_5_9();
  dispatch thunk of UsoEntityBuilder_common_PostalAddress.setProvince(value:)();

  v23 = [v18 postalCode];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of UsoEntityBuilder_common_PostalAddress.setPostalCode(value:)();

  OUTLINED_FUNCTION_4_6();
  UsoEntityBuilder_common_GeographicArea.init()();
  v24 = [v18 country];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of UsoEntityBuilder_common_GeographicArea.setName(value:)();

  OUTLINED_FUNCTION_5_9();
  dispatch thunk of UsoEntityBuilder_common_PostalAddress.setCountry(value:)();

  CNLabeledValue<>.formattedString.getter();
  dispatch thunk of UsoEntityBuilder_common_PostalAddress.setValue(value:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v26 + 8))(v25, v28);
  OUTLINED_FUNCTION_1_8();
  UsoIdentifier.init(value:appBundleId:namespace:)();
  dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();

  (*(v29 + 8))(v27, v30);
  OUTLINED_FUNCTION_14();
}

uint64_t outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(void *a1)
{
  v1 = [a1 handleValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t OUTLINED_FUNCTION_4_6()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t ModifyNicknameUnsupportedViewBuilder.makeViewsForMac()()
{
  v1 = v0;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriContacts);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26686A000, v3, v4, "[ModifyNicknameUnsupportedViewBuilder] Constructing PersonSnippet with all display properties for macOS.", v5, 2u);
    MEMORY[0x26D5E3300](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAABPersonSnippet, 0x277D47108);
  v7 = *(v1 + 80);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v8 = v7;
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  outlined init with copy of AppUtil(v1, v11);
  *(v6 + 32) = SAABPersonSnippet.init(contact:attributeType:isMe:appUtil:)(v8, 0, isa, v11);
  return v6;
}

uint64_t ModifyNicknameUnsupportedViewBuilder.makeViewsForIOS()()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriContacts);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26686A000, v8, v9, "[ModifyContactAttributeViewBuilder] Constructing PersonSnippet-like CardSnippet for iOS.", v10, 2u);
    MEMORY[0x26D5E3300](v10, -1, -1);
  }

  v11 = v1[11];
  outlined init with copy of AppUtil(v1, v21);
  v20 = v11;
  v21[5] = 0;
  v12 = v1[10];
  type metadata accessor for ContactAttribute();

  v13 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(0, 0, 0, 0, 0, 0, 0, 0, 0);
  v14 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v19[5] = Locale.identifier.getter();
  v19[6] = v15;
  v19[3] = 45;
  v19[4] = 0xE100000000000000;
  v19[1] = 95;
  v19[2] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  (*(v3 + 8))(v6, v2);
  CompactViews.buildGetAttributeSnippet(handles:contact:contactAttribute:localeString:)();
  v17 = v16;

  outlined destroy of CompactViews(&v20);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_266966A40;
  *(result + 32) = v17;
  return result;
}

uint64_t getEnumTagSinglePayload for ModifyNicknameUnsupportedViewBuilder(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ModifyNicknameUnsupportedViewBuilder(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t ContactAttribute.isEmpty.getter()
{
  outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v0);
  if (v1)
  {
  }

  else
  {
    v2 = [v0 ageDateTime];
    if (!v2)
    {
      v2 = [v0 postalAddress];
      if (!v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

id ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v10 = v9;
  v33 = a4;
  v34 = a6;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    UUID.init()();
    a2 = UUID.uuidString.getter();
    a3 = v22;
    (*(v18 + 8))(v21, v17);
  }

  v23 = objc_allocWithZone(v10);
  v24 = static String.EMPTY.getter();
  v25 = MEMORY[0x26D5E2470](v24);

  v26 = outlined bridged method (mbnnn) of @objc INObject.init(identifier:display:)(a2, a3, v25, v23);

  v27 = v26;
  [v27 setContactAttributeType_];
  if (a5)
  {
    v28 = MEMORY[0x26D5E2470](v33, a5);
  }

  else
  {
    v28 = 0;
  }

  [v27 setHandleLabel_];

  if (a7)
  {
    v29 = MEMORY[0x26D5E2470](v34, a7);
  }

  else
  {
    v29 = 0;
  }

  [v27 setHandleValue_];

  [v27 setAgeDateTime_];
  if (a9)
  {
    type metadata accessor for PostalAddress();
    v30 = a9;
    v31 = PostalAddress.__allocating_init(labeledAddress:)(v30);
    [v27 setPostalAddress_];
  }

  return v27;
}

id PostalAddress.__allocating_init(labeledAddress:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = [a1 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = CNLabeledValue<>.formattedString.getter();
  v10 = MEMORY[0x26D5E2470](v9);

  v11 = outlined bridged method (mbnnn) of @objc INObject.init(identifier:display:)(v6, v8, v10, v4);

  v12 = v11;
  v13 = [a1 label];
  [v12 setHandleLabel_];

  v14 = OUTLINED_FUNCTION_1_9();
  v15 = [v14 street];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_8(v16, v17, v18, &selRef_setStreet_);
  v19 = OUTLINED_FUNCTION_1_9();
  v20 = [v19 subLocality];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_8(v21, v22, v23, &selRef_setSubLocality_);
  v24 = OUTLINED_FUNCTION_1_9();
  v25 = [v24 city];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_8(v26, v27, v28, &selRef_setCity_);
  v29 = OUTLINED_FUNCTION_1_9();
  v30 = [v29 subAdministrativeArea];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_8(v31, v32, v33, &selRef_setSubAdministrativeArea_);
  v34 = OUTLINED_FUNCTION_1_9();
  v35 = [v34 state];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_8(v36, v37, v38, &selRef_setState_);
  v39 = OUTLINED_FUNCTION_1_9();
  v40 = [v39 postalCode];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_8(v41, v42, v43, &selRef_setPostalCode_);
  v44 = OUTLINED_FUNCTION_1_9();
  v45 = [v44 country];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_8(v46, v47, v48, &selRef_setCountry_);
  v49 = OUTLINED_FUNCTION_1_9();
  v50 = [v49 ISOCountryCode];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_8(v51, v52, v53, &selRef_setIsoCountryCode_);

  return v12;
}

uint64_t ContactAttribute.getINPersonHandleLabel.getter()
{
  v1 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x26D5E2470](v1);

  return v3;
}

void outlined bridged method (mbnn) of @objc PostalAddress.street.setter(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = MEMORY[0x26D5E2470]();

  [a3 *a4];
}

void OUTLINED_FUNCTION_0_8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{

  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v5, v6, v4, a4);
}

id OUTLINED_FUNCTION_1_9()
{

  return [v0 (v1 + 376)];
}

void OUTLINED_FUNCTION_2_10()
{
}

uint64_t ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:)()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 176) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR) - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR) - 8) + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  v9 = type metadata accessor for TemplatingResult();
  *(v1 + 80) = v9;
  v10 = *(v9 - 8);
  *(v1 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_4();
  v1 = v0[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = DeviceState.toSiriKitDeviceState.getter();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:);
  v5 = v0[14];
  v6 = v0[5];

  return ContactsCommonCATs.meCardSetup(device:)(v5, v3);
}

{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v7 = v6;
  *(v2 + 136) = v0;

  if (!v0)
  {
    v8 = *(v2 + 120);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v1 = *(v0 + 40);
  type metadata accessor for ModifyContactAttributeCATs();
  if (swift_dynamicCastClass())
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 56);
    String.toSpeakableString.getter();

    v4 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:);
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);

    return ModifyContactAttributeCATs.unsupportedMissingMeCard(contactAttributeType:)();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 160) = v9;
    *v9 = v0;
    v9[1] = ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:);
    v10 = *(v0 + 96);
    v11 = *(v0 + 40);
    v12 = *(v0 + 176);

    return ContactsCommonCATs.unsupportedMissingMeCard(isMe:)(v10, v12);
  }
}

{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *(v5 + 56);
  v8 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v9 = v8;
  *(v10 + 152) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_28();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[2];
  OUTLINED_FUNCTION_5_10(v6);
  (*(v4 + 32))(v2, v6, v3);
  v9 = OUTLINED_FUNCTION_6_6(v4);
  v10(v9);
  OUTLINED_FUNCTION_5_10(v5);
  v11 = type metadata accessor for BehaviorAfterSpeaking();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
  TemplatingResult.merge(with:behaviorAfterSpeaking:)(v5, v7, v8);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v5, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v12 = *(v4 + 8);
  v12(v2, v3);
  v12(v1, v3);
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_3();

  return v13();
}

{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  *(v9 + 168) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  v11 = v10[14];
  v13 = v10[11];
  v12 = v10[12];
  v14 = v10[10];
  v15 = v10[8];
  v16 = v10[6];
  v17 = v10[2];
  v18 = OUTLINED_FUNCTION_6_6(v13);
  v19(v18);
  OUTLINED_FUNCTION_5_10(v15);
  v20 = type metadata accessor for BehaviorAfterSpeaking();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v20);
  TemplatingResult.merge(with:behaviorAfterSpeaking:)(v15, v16, v17);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v15, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v21 = *(v13 + 8);
  v21(v12, v14);
  v21(v11, v14);
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8_6();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 120);

  v12 = *(v10 + 136);
  OUTLINED_FUNCTION_0_9();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8_6();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  (*(v10[11] + 8))(v10[14], v10[10]);
  v11 = v10[19];
  OUTLINED_FUNCTION_0_9();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8_6();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  (*(v10[11] + 8))(v10[14], v10[10]);
  v11 = v10[21];
  OUTLINED_FUNCTION_0_9();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8_6();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t OUTLINED_FUNCTION_0_9()
{
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
}

uint64_t OUTLINED_FUNCTION_5_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_9_7()
{
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
}

uint64_t CNContact.containsData(for:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v4 = OUTLINED_FUNCTION_18_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v9 = v7 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v52 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v52 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v52 - v17;
  v19 = [a1 contactAttributeType];
  v20 = 1;
  switch(v19)
  {
    case 0uLL:
      return v20 & 1;
    case 1uLL:
      v34 = [v1 emailAddresses];
      goto LABEL_20;
    case 2uLL:
      v34 = [v1 phoneNumbers];
      goto LABEL_20;
    case 3uLL:
      v34 = [v1 postalAddresses];
      goto LABEL_20;
    case 4uLL:
      v28 = [v1 birthday];
      if (!v28)
      {
        v48 = type metadata accessor for DateComponents();
        __swift_storeEnumTagSinglePayload(v18, 1, 1, v48);
        v33 = v18;
        goto LABEL_26;
      }

      v29 = v28;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = type metadata accessor for DateComponents();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v30);
      outlined destroy of ResponseMode?(v18, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      v31 = [v1 birthday];
      if (v31)
      {
        v32 = v31;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v20 = 0;
      }

      __swift_storeEnumTagSinglePayload(v13, v20, 1, v30);
      outlined init with take of DateComponents?(v13, v16);
      if (__swift_getEnumTagSinglePayload(v16, 1, v30) == 1)
      {
        v33 = v16;
LABEL_26:
        outlined destroy of ResponseMode?(v33, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
        LOBYTE(v20) = 0;
        return v20 & 1;
      }

      DateComponents.year.getter();
      v50 = v49;
      OUTLINED_FUNCTION_52(v30);
      (*(v51 + 8))(v16, v30);
      LOBYTE(v20) = v50 ^ 1;
      return v20 & 1;
    case 5uLL:
      v35 = [v1 birthday];
      LOBYTE(v20) = v35 != 0;
      if (v35)
      {
        v36 = v35;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = type metadata accessor for DateComponents();
        v38 = 0;
      }

      else
      {
        v37 = type metadata accessor for DateComponents();
        v38 = 1;
      }

      __swift_storeEnumTagSinglePayload(v9, v38, 1, v37);
      outlined destroy of ResponseMode?(v9, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      return v20 & 1;
    case 6uLL:
      v27 = [v1 nickname];
      goto LABEL_15;
    case 7uLL:
    case 8uLL:
    case 9uLL:
      v21 = CNContact.formattedFullName.getter();
      v23 = v22;

      v24 = HIBYTE(v23) & 0xF;
      v25 = v21 & 0xFFFFFFFFFFFFLL;
      v26 = (v23 & 0x2000000000000000) == 0;
      goto LABEL_16;
    case 0xAuLL:
      v34 = [v1 contactRelations];
LABEL_20:
      v44 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
      v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = specialized Array._getCount()(v45);

      v43 = v46 == 0;
      goto LABEL_21;
    case 0xBuLL:
      v27 = [v1 organizationName];
LABEL_15:
      v39 = v27;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v24 = HIBYTE(v42) & 0xF;
      v25 = v40 & 0xFFFFFFFFFFFFLL;
      v26 = (v42 & 0x2000000000000000) == 0;
LABEL_16:
      if (v26)
      {
        v24 = v25;
      }

      v43 = v24 == 0;
LABEL_21:
      LOBYTE(v20) = !v43;
      return v20 & 1;
    default:
      v52[1] = v19;
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
  }
}

uint64_t CNContact.toDialogPerson(useConversationalName:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = OUTLINED_FUNCTION_18_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = type metadata accessor for DialogPerson.Builder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  DialogPerson.Builder.init()();
  v11 = [v0 organizationName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  SpeakableString.init(print:speak:)();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_0_10();
  dispatch thunk of DialogPerson.Builder.withCompany(_:)();

  OUTLINED_FUNCTION_5_11();
  v12 = [v0 nickname];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_10_8();

  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_0_10();
  dispatch thunk of DialogPerson.Builder.withNickname(_:)();

  OUTLINED_FUNCTION_5_11();
  v13 = [v1 givenName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_10_8();

  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_0_10();
  dispatch thunk of DialogPerson.Builder.withGivenName(_:)();

  OUTLINED_FUNCTION_5_11();
  v14 = [v1 middleName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_10_8();

  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_0_10();
  dispatch thunk of DialogPerson.Builder.withMiddleName(_:)();

  OUTLINED_FUNCTION_5_11();
  v15 = [v1 familyName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_10_8();

  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_0_10();
  dispatch thunk of DialogPerson.Builder.withFamilyName(_:)();

  OUTLINED_FUNCTION_5_11();
  dispatch thunk of DialogPerson.Builder.withUseConversationalName(_:)();

  v16 = [v1 termsOfAddress];
  type metadata accessor for NSTermOfAddress();
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!specialized Array._getCount()(v17))
  {
    goto LABEL_11;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v17 & 0xC000000000000001) == 0, v17);
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x26D5E29D0](0, v17);
  }

  else
  {
    v18 = *(v17 + 32);
  }

  v19 = v18;

  v20 = outlined bridged method (pb) of @objc NSTermOfAddress.pronouns.getter(v19);
  if (!v20)
  {

    goto LABEL_12;
  }

  v21 = v20;
  if (!specialized Array._getCount()(v20))
  {

LABEL_11:

    goto LABEL_12;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v21 & 0xC000000000000001) == 0, v21);
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x26D5E29D0](0, v21);
  }

  else
  {
    v22 = *(v21 + 32);
  }

  v23 = v22;

  v24 = [v23 pronoun];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = type metadata accessor for DialogPronoun.Builder();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  DialogPronoun.Builder.init()();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_0_10();
  dispatch thunk of DialogPronoun.Builder.withInitialPronoun(_:)();

  outlined destroy of ResponseMode?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  dispatch thunk of DialogPronoun.Builder.build()();
  dispatch thunk of DialogPerson.Builder.withPronoun(_:)();

LABEL_12:
  v28 = dispatch thunk of DialogPerson.Builder.build()();

  return v28;
}

uint64_t CNContact.timezonedBirthdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v3 = OUTLINED_FUNCTION_18_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  CNContact.timezonedBirthday.getter(&v17 - v10);
  v12 = type metadata accessor for DateComponents();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  outlined destroy of ResponseMode?(v11, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_4;
  }

  CNContact.timezonedBirthday.getter(v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {
    outlined destroy of ResponseMode?(v8, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
LABEL_4:
    v14 = type metadata accessor for Date();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v14);
  }

  DateComponents.date.getter();
  OUTLINED_FUNCTION_52(v12);
  return (*(v16 + 8))(v8, v12);
}

uint64_t CNContact.timezonedBirthday.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, _s10Foundation8TimeZoneVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v11 = OUTLINED_FUNCTION_18_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  v20 = type metadata accessor for DateComponents();
  v21 = OUTLINED_FUNCTION_1_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  v28 = v27 - v26;
  v29 = [v2 birthday];
  if (v29)
  {
    v30 = v29;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  __swift_storeEnumTagSinglePayload(v16, v31, 1, v20);
  outlined init with take of DateComponents?(v16, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    outlined destroy of ResponseMode?(v19, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v32 = 1;
  }

  else
  {
    (*(v23 + 16))(v28, v19, v20);
    static TimeZone.current.getter();
    v33 = type metadata accessor for TimeZone();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v33);
    DateComponents.timeZone.setter();
    (*(v23 + 8))(v19, v20);
    (*(v23 + 32))(a1, v28, v20);
    v32 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v32, 1, v20);
}

id CNContact.init(from:)(void *a1)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = outlined bridged method (pb) of @objc Contact.givenName.getter(a1);
  if (v5)
  {
    MEMORY[0x26D5E2470](v4);
    OUTLINED_FUNCTION_8_7();
  }

  else
  {
    v1 = 0;
  }

  v6 = MEMORY[0x26D5E2470](0x6D614E6E65766967, 0xE900000000000065);
  [v3 setValue:v1 forKeyPath:v6];
  swift_unknownObjectRelease();

  v7 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_nickName);
  if (v8)
  {
    v6 = v8;
    MEMORY[0x26D5E2470](v7);
    OUTLINED_FUNCTION_8_7();
  }

  v9 = MEMORY[0x26D5E2470](0x656D616E6B63696ELL, 0xE800000000000000);
  OUTLINED_FUNCTION_1_10(v9);
  swift_unknownObjectRelease();

  v10 = outlined bridged method (pb) of @objc Contact.middleName.getter(a1);
  if (v11)
  {
    v6 = v11;
    MEMORY[0x26D5E2470](v10);
    OUTLINED_FUNCTION_8_7();
  }

  v12 = MEMORY[0x26D5E2470](0x614E656C6464696DLL, 0xEA0000000000656DLL);
  OUTLINED_FUNCTION_1_10(v12);
  swift_unknownObjectRelease();

  v13 = outlined bridged method (pb) of @objc Contact.familyName.getter(a1);
  if (v14)
  {
    v6 = v14;
    MEMORY[0x26D5E2470](v13);
    OUTLINED_FUNCTION_8_7();
  }

  v15 = MEMORY[0x26D5E2470](0x614E796C696D6166, 0xEA0000000000656DLL);
  OUTLINED_FUNCTION_1_10(v15);
  swift_unknownObjectRelease();

  v16 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_namePrefix);
  if (v17)
  {
    v6 = v17;
    MEMORY[0x26D5E2470](v16);
    OUTLINED_FUNCTION_8_7();
  }

  v18 = MEMORY[0x26D5E2470](0x66657250656D616ELL, 0xEA00000000007869);
  OUTLINED_FUNCTION_1_10(v18);
  swift_unknownObjectRelease();

  v19 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_nameSuffix);
  if (v20)
  {
    v6 = v20;
    MEMORY[0x26D5E2470](v19);
    OUTLINED_FUNCTION_8_7();
  }

  v21 = MEMORY[0x26D5E2470](0x66667553656D616ELL, 0xEA00000000007869);
  OUTLINED_FUNCTION_1_10(v21);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t CNContact.requestedName(_:)(uint64_t a1)
{
  switch(a1)
  {
    case 6:
      v2 = [v1 nickname];
      goto LABEL_7;
    case 8:
      v2 = [v1 familyName];
      goto LABEL_7;
    case 7:
      v2 = [v1 givenName];
LABEL_7:
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
  }

  return CNContact.formattedFullName.getter();
}

uint64_t CNContact.formattedBirthdateString.getter()
{
  v1 = type metadata accessor for Locale();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v11 = OUTLINED_FUNCTION_18_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v21 = OUTLINED_FUNCTION_18_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - v24;
  v26 = type metadata accessor for Date();
  v27 = OUTLINED_FUNCTION_1_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  v34 = v33 - v32;
  CNContact.timezonedBirthdate.getter(v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
  {
    (*(v29 + 32))(v34, v25, v26);
    v36 = [v0 birthday];
    if (v36)
    {
      v37 = v36;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = type metadata accessor for DateComponents();
    __swift_storeEnumTagSinglePayload(v16, v38, 1, v39);
    outlined init with take of DateComponents?(v16, v19);
    if (__swift_getEnumTagSinglePayload(v19, 1, v39) == 1)
    {
      outlined destroy of ResponseMode?(v19, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    }

    else
    {
      DateComponents.year.getter();
      v41 = v40;
      OUTLINED_FUNCTION_52(v39);
      (*(v42 + 8))(v19, v39);
      if ((v41 & 1) == 0)
      {
        v50 = objc_opt_self();
        isa = Date._bridgeToObjectiveC()().super.isa;
        v49 = [v50 localizedStringFromDate:isa dateStyle:3 timeStyle:0];

        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        goto LABEL_11;
      }
    }

    v43 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v44 = objc_opt_self();
    v45 = MEMORY[0x26D5E2470](0x644D4D4D4DLL, 0xE500000000000000);
    static Locale.current.getter();
    v46 = Locale._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v9, v1);
    v47 = [v44 dateFormatFromTemplate:v45 options:0 locale:v46];

    [v43 setDateFormat_];
    v48 = Date._bridgeToObjectiveC()().super.isa;
    v49 = [v43 stringFromDate_];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_11:

    (*(v29 + 8))(v34, v26);
    return v35;
  }

  outlined destroy of ResponseMode?(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return static String.EMPTY.getter();
}

uint64_t outlined init with take of DateComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x26D5E2AA0);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

unint64_t type metadata accessor for NSTermOfAddress()
{
  result = lazy cache variable for type metadata for NSTermOfAddress;
  if (!lazy cache variable for type metadata for NSTermOfAddress)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSTermOfAddress);
  }

  return result;
}

id OUTLINED_FUNCTION_1_10(uint64_t a1)
{

  return [v1 (v3 + 632)];
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_5_11()
{

  return outlined destroy of ResponseMode?(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_8_7()
{
}

uint64_t ModifyContactAttributeHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for SiriKitIntentHandler();
  v0[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_10_0();
  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t ModifyContactAttributeHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriContacts);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26686A000, v14, v15, "#ModifyContactAttributeHandleIntentStrategy makeIntentExecutionBehavior", v16, 2u);
    MEMORY[0x26D5E3300](v16, -1, -1);
  }

  v17 = v12[2];

  type metadata accessor for SiriKitIntentExecutionBehavior();
  v18 = one-time initialization token for current;

  if (v18 != -1)
  {
    swift_once();
  }

  v20 = v12[5];
  v19 = v12[6];
  v22 = v12[3];
  v21 = v12[4];
  v23 = v12[2];
  v24 = type metadata accessor for ContactResolver();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = ContactResolver.init()();
  v28 = objc_allocWithZone(type metadata accessor for ModifyContactAttributeIntentHandler());

  specialized BaseIntentHandler.init(contactService:contactResolver:)(v29, v27, v28);
  type metadata accessor for ModifyContactAttributeIntent();
  v30 = v22;
  SiriKitIntentHandler.init<A>(app:intentHandler:intent:)();
  static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)();
  (*(v20 + 8))(v19, v21);

  v31 = v12[1];
  OUTLINED_FUNCTION_22_3();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[29] = v2;
  v1[30] = v0;
  v1[28] = v3;
  v4 = type metadata accessor for TemplatingResult();
  v1[31] = v4;
  OUTLINED_FUNCTION_1_1(v4);
  v1[32] = v5;
  v7 = *(v6 + 64);
  v1[33] = OUTLINED_FUNCTION_45();
  v1[34] = swift_task_alloc();
  v8 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v8);
  v10 = *(v9 + 64);
  v1[35] = OUTLINED_FUNCTION_10_0();
  v11 = type metadata accessor for OutputGenerationManifest();
  v1[36] = v11;
  OUTLINED_FUNCTION_1_1(v11);
  v1[37] = v12;
  v14 = *(v13 + 64);
  v1[38] = OUTLINED_FUNCTION_10_0();
  v15 = type metadata accessor for ContactsSnippetPluginModel();
  v1[39] = v15;
  OUTLINED_FUNCTION_1_1(v15);
  v1[40] = v16;
  v18 = *(v17 + 64);
  v1[41] = OUTLINED_FUNCTION_10_0();
  v19 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v19);
  v21 = *(v20 + 64);
  v1[42] = OUTLINED_FUNCTION_10_0();
  v22 = type metadata accessor for ContactsSnippetFlowState();
  v1[43] = v22;
  OUTLINED_FUNCTION_1_1(v22);
  v1[44] = v23;
  v25 = *(v24 + 64);
  v1[45] = OUTLINED_FUNCTION_10_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_18_0(v26);
  v28 = *(v27 + 64);
  v1[46] = OUTLINED_FUNCTION_10_0();
  v29 = type metadata accessor for ModifyContactAttributeSnippetModel.ContactAttributeToModify();
  v1[47] = v29;
  OUTLINED_FUNCTION_1_1(v29);
  v1[48] = v30;
  v32 = *(v31 + 64);
  v1[49] = OUTLINED_FUNCTION_45();
  v1[50] = swift_task_alloc();
  v33 = type metadata accessor for Locale();
  v1[51] = v33;
  OUTLINED_FUNCTION_18_0(v33);
  v35 = *(v34 + 64);
  v1[52] = OUTLINED_FUNCTION_10_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v36);
  v38 = *(v37 + 64);
  v1[53] = OUTLINED_FUNCTION_45();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMd, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMR);
  OUTLINED_FUNCTION_18_0(v39);
  v41 = *(v40 + 64);
  v1[70] = OUTLINED_FUNCTION_45();
  v1[71] = swift_task_alloc();
  v42 = type metadata accessor for SpeakableString();
  v1[72] = v42;
  OUTLINED_FUNCTION_1_1(v42);
  v1[73] = v43;
  v45 = *(v44 + 64);
  v1[74] = OUTLINED_FUNCTION_45();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v46 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v46, v47, v48);
}

{
  OUTLINED_FUNCTION_5();
  v2 = v1[85];
  v3 = v1[84];
  v4 = v1[83];
  v5 = v1[82];
  v6 = v1[45];
  v7 = v1[44];
  v8 = v1[43];
  v9 = *v0;
  OUTLINED_FUNCTION_0();
  *v10 = v9;

  v11 = *(v7 + 8);
  v12 = OUTLINED_FUNCTION_22_0();
  v13(v12);
  v14 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[73];
  v6 = v0[72];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[42];
  v10 = v0[30];
  OUTLINED_FUNCTION_49_0();
  type metadata accessor for ModifyContactAttributeCATsModern();
  static CATOption.defaultMode.getter();
  v0[86] = CATWrapperSimple.__allocating_init(options:globals:)();
  v11 = *(v5 + 16);
  v11(v7, v4, v6);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v6);
  v11(v8, v3, v6);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v6);
  v18 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
  OUTLINED_FUNCTION_37_0();
  DeviceState.isVox.getter();
  v19 = swift_task_alloc();
  v0[87] = v19;
  *v19 = v0;
  v19[1] = ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  v20 = v0[69];
  v21 = v0[66];
  v22 = v0[65];
  OUTLINED_FUNCTION_22_3();

  return ModifyContactAttributeCATsModern.intentHandledModifyRelationship(updatedRelationship:contactName:modifyOperation:isVoiceMode:)();
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = v2[87];
  v6 = *v1;
  *(v3 + 704) = v7;
  *(v3 + 712) = v0;

  v8 = v2[86];
  v9 = v2[66];
  v10 = v2[65];

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_5();
  v2 = v1[96];
  v3 = v1[95];
  v4 = v1[94];
  v5 = v1[93];
  v6 = v1[49];
  v7 = v1[48];
  v8 = v1[47];
  v9 = v1[45];
  v10 = v1[44];
  v11 = v1[43];
  v12 = *v0;
  OUTLINED_FUNCTION_0();
  *v13 = v12;

  (*(v10 + 8))(v9, v11);
  v14 = *(v7 + 8);
  v15 = OUTLINED_FUNCTION_22_0();
  v16(v15);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_22_3();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

{
  v1 = v0[92];
  v2 = v0[91];
  v22 = v0[90];
  v23 = v0[78];
  v3 = v0[76];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[62];
  v7 = v0[63];
  v8 = v0[61];
  v9 = v0[42];

  OUTLINED_FUNCTION_49_0();
  type metadata accessor for ModifyContactAttributeCATsModern();
  static CATOption.defaultMode.getter();
  v0[97] = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
  dispatch thunk of DialogPerson.fullName.getter();
  (*(v4 + 16))(v8, v23, v5);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v5);
  v16 = swift_task_alloc();
  v0[98] = v16;
  *v16 = v0;
  v16[1] = ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  v18 = v0[63];
  v17 = v0[64];
  v20 = v0[61];
  v19 = v0[62];

  return ModifyContactAttributeCATsModern.intentHandledModifyNickname(updatedNickname:existingNickname:contactName:modifyOperation:)();
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = v2[98];
  v6 = *v1;
  *(v3 + 792) = v7;
  *(v3 + 800) = v0;

  v8 = v2[97];
  v9 = v2[63];
  v10 = v2[62];
  v11 = v2[61];

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  v5 = v4[103];
  v6 = v4[102];
  v7 = v4[101];
  v8 = *v0;
  OUTLINED_FUNCTION_0();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 160));
  v10 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 840);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[106] = v0;

  if (v0)
  {
    v9 = v3[104];
    v12 = v3 + 57;
    v10 = v3[57];
    v11 = v12[1];

    v13 = OUTLINED_FUNCTION_22_0();
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v13, v14, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v15 = OUTLINED_FUNCTION_37_0();
  }

  else
  {
    v17 = v3[58];
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v3[57], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v15 = OUTLINED_FUNCTION_60();
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v15, v16, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 864);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[109] = v0;

  if (v0)
  {
    v9 = v3[104];
    v12 = v3 + 53;
    v10 = v3[53];
    v11 = v12[1];

    v13 = OUTLINED_FUNCTION_22_0();
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v13, v14, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v15 = OUTLINED_FUNCTION_37_0();
  }

  else
  {
    v17 = v3[54];
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v3[53], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v15 = OUTLINED_FUNCTION_60();
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v15, v16, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_29_2();
  v41 = v40[30];
  v42 = v41[11];
  __swift_project_boxed_opaque_existential_1(v41 + 7, v41[10]);
  v43 = *(v42 + 24);
  v44 = OUTLINED_FUNCTION_22_0();
  v46 = v45(v44);
  v40[79] = v46;
  if (!v46)
  {
    type metadata accessor for ContactsError();
    OUTLINED_FUNCTION_2_12();
    lazy protocol witness table accessor for type ModifyContactAttributeHandleIntentStrategy and conformance ModifyContactAttributeHandleIntentStrategy(v76, v77);
    v78 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v324 = v78;
    swift_willThrow();
    goto LABEL_40;
  }

  v47 = v46;
  v48 = v40[78];
  v49 = v40[29];
  v50 = v40[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMR);
  v51 = IntentResolutionRecord.intent.getter();
  v52 = [v51 modifyOperation];

  ModifyOperation.stringify.getter(v52);
  v53 = OUTLINED_FUNCTION_49_0();
  v54 = &selRef_isoCountryCode;
  if (specialized ContactsStrategy.isSmartEnabled.getter(v53))
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.siriContacts);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_26686A000, v56, v57, "#ModifyContactAttributeHandleIntentStrategy makeIntentHandledResponse constructing SMART snippet", v58, 2u);
      MEMORY[0x26D5E3300](v58, -1, -1);
    }

    v59 = v40[29];

    v40[27] = MEMORY[0x277D84F90];
    v60 = IntentResolutionRecord.intent.getter();
    v61 = [v60 &selRef_setCode_ + 5];

    if (v61 == 6)
    {
      v103 = v40[64];
      v104 = v40[52];
      v106 = v40[29];
      v105 = v40[30];
      type metadata accessor for DialogPerson();
      v107 = v105[6];
      __swift_project_boxed_opaque_existential_1(v105 + 2, v105[5]);
      v108 = v47;
      dispatch thunk of DeviceState.siriLocale.getter();
      v109 = v105[15];
      v110 = v109;
      v40[90] = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v108, 0, v104, v109);
      DialogPerson.nickname.getter();
      v111 = IntentResolutionRecord.intent.getter();
      v112 = outlined bridged method (ob) of @objc ModifyContactAttributeIntent.modifyNickName.getter(v111);
      if (!v113)
      {
        v112 = static String.EMPTY.getter();
      }

      v114 = v112;
      v115 = v113;
      v40[92] = v113;
      v40[91] = v112;
      v116 = v40[48];
      v117 = v40[49];
      v118 = v40[47];
      v119 = v40[44];
      v315 = v40[45];
      v120 = v40[42];
      v308 = v40[43];
      v121 = v40[29];
      v40[93] = IntentResolutionRecord.intent.getter();
      v40[94] = IntentResolutionRecord.intentResponse.getter();
      *v117 = v114;
      v117[1] = v115;
      (*(v116 + 104))(v117, *MEMORY[0x277D55AB8], v118);
      (*(v119 + 104))(v315, *MEMORY[0x277D55970], v308);
      type metadata accessor for ContactsLabelCATsModern();

      static CATOption.defaultMode.getter();
      v40[95] = CATWrapperSimple.__allocating_init(options:globals:)();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      v40[96] = v122;
      *v122 = v123;
      v122[1] = ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
      v124 = v40[71];
      v125 = v40[49];
      v126 = v40[45];
      goto LABEL_62;
    }

    if (v61 == 10)
    {
      v62 = v40[29];
      __swift_storeEnumTagSinglePayload(v40[69], 1, 1, v40[72]);
      v63 = IntentResolutionRecord.intent.getter();
      v64 = outlined bridged method (ob) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(v63);
      if (v64)
      {
        OUTLINED_FUNCTION_33_1(v64);
        v65 = &selRef_isoCountryCode ? MEMORY[0x26D5E29D0](0, v62) : *(v62 + 32);
        v66 = v65;

        outlined bridged method (ob) of @objc INObject.identifier.getter(v66);
        if (v67)
        {
          v68 = v41[11];
          __swift_project_boxed_opaque_existential_1(v41 + 7, v41[10]);
          v69 = OUTLINED_FUNCTION_32_2(v68);
          v71 = v70(v69);
          if (v66)
          {
          }

          else
          {
            v281 = v71;

            if (v281)
            {
              v217 = v40 + 68;
              v319 = v40[68];
              v323 = v40[69];
              v282 = v40[52];
              v283 = v40[30];
              type metadata accessor for DialogPerson();
              v284 = v283[6];
              __swift_project_boxed_opaque_existential_1(v283 + 2, v283[5]);
              v285 = v281;
              v54 = &selRef_isoCountryCode;
              dispatch thunk of DeviceState.siriLocale.getter();
              v286 = v283[15];
              v287 = v286;
              DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v285, 0, v282, v286);
              dispatch thunk of DialogPerson.fullName.getter();

              outlined destroy of UsoEntity_common_Person.DefinedValues?(v323, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_57:
              v222 = v40[29];
              outlined init with take of SpeakableString?(*v217, v40[69]);
              v223 = IntentResolutionRecord.intentResponse.getter();
              v224 = [v223 v54[43]];

              if (v224 && (v225 = outlined bridged method (ob) of @objc ContactRelation.relationship.getter(v224), v226))
              {
                v227 = v225;
                v228 = v226;
              }

              else
              {
                v227 = static String.EMPTY.getter();
                v228 = v229;
              }

              v40[81] = v228;
              v40[80] = v227;
              v230 = v40[50];
              v299 = v40[51];
              v231 = v40[48];
              v232 = v40[46];
              v304 = v40[47];
              v307 = v40[44];
              v311 = v40[43];
              v318 = v40[45];
              v322 = v40[42];
              v233 = v40[30];
              v301 = v40[29];
              v234 = static Dictionary<>.cnLabel(forNLSemantic:)(v227, v228);
              v236 = v235;
              v237 = objc_opt_self();
              v238 = MEMORY[0x26D5E2470](v234, v236);

              v239 = [v237 localizedStringForLabel_];

              v240 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v242 = v241;

              v40[25] = v240;
              v40[26] = v242;
              v243 = *(v233 + 40);
              __swift_project_boxed_opaque_existential_1((v233 + 16), v243);
              dispatch thunk of DeviceState.siriLocale.getter();
              OUTLINED_FUNCTION_50();
              __swift_storeEnumTagSinglePayload(v244, v245, v246, v299);
              lazy protocol witness table accessor for type String and conformance String();
              StringProtocol.capitalized(with:)();
              OUTLINED_FUNCTION_30_3();
              outlined destroy of UsoEntity_common_Person.DefinedValues?(v232, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

              *v230 = v40 + 25;
              v230[1] = v243;
              (*(v231 + 104))(v230, *MEMORY[0x277D55AB0], v304);
              v40[82] = IntentResolutionRecord.intent.getter();
              v40[83] = IntentResolutionRecord.intentResponse.getter();
              (*(v307 + 104))(v318, *MEMORY[0x277D55970], v311);
              type metadata accessor for ContactsLabelCATsModern();
              static CATOption.defaultMode.getter();
              v40[84] = CATWrapperSimple.__allocating_init(options:globals:)();
              swift_task_alloc();
              OUTLINED_FUNCTION_36_0();
              v40[85] = v247;
              *v247 = v248;
              v247[1] = ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
              v249 = v40[71];
              v250 = v40[50];
              v251 = v40[45];
LABEL_62:
              OUTLINED_FUNCTION_12_4();

              return static ModifyContactAttributeSnippetModel.from(intent:intentResponse:contactService:attributeToModify:flowState:labelCATs:)();
            }
          }
        }
      }

      v72 = v40[29];
      v73 = IntentResolutionRecord.intentResponse.getter();
      v74 = [v73 updatedRelationship];

      if (v74 && (outlined bridged method (ob) of @objc ContactRelation.relatedFullName.getter(v74), v75))
      {
        OUTLINED_FUNCTION_30_3();
      }

      else
      {
        static String.EMPTY.getter();
        OUTLINED_FUNCTION_30_3();
      }

      v215 = v40[72];
      v216 = v40[69];
      v217 = v40 + 67;
      v218 = v40[67];
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_49_0();
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v216, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      OUTLINED_FUNCTION_50();
      __swift_storeEnumTagSinglePayload(v219, v220, v221, v215);
      goto LABEL_57;
    }

    v157 = v40[78];
    v158 = v40[73];
    v159 = v40[72];
    type metadata accessor for ContactsError();
    OUTLINED_FUNCTION_2_12();
    lazy protocol witness table accessor for type ModifyContactAttributeHandleIntentStrategy and conformance ModifyContactAttributeHandleIntentStrategy(v160, v161);
    v162 = OUTLINED_FUNCTION_7_1();
    swift_storeEnumTagMultiPayload();
    v324 = v162;
    swift_willThrow();

    v163 = *(v158 + 8);
    v164 = OUTLINED_FUNCTION_60();
    v165(v164);
    goto LABEL_40;
  }

  v325 = v41;
  v79 = v40[29];
  v80 = IntentResolutionRecord.intent.getter();
  v314 = [v80 contactAttributeToModify];

  v81 = IntentResolutionRecord.intent.getter();
  v82 = [v81 modifyOperation];

  v83 = IntentResolutionRecord.intentResponse.getter();
  v84 = [v83 updatedRelationship];

  if (v84)
  {
    v85 = outlined bridged method (ob) of @objc ContactRelation.relatedFullName.getter(v84);
    v87 = v86;
  }

  else
  {
    v85 = 0;
    v87 = 0;
  }

  v88 = v40[29];
  v89 = IntentResolutionRecord.intentResponse.getter();
  v90 = [v89 updatedRelationship];

  if (v90)
  {
    v90 = outlined bridged method (ob) of @objc ContactRelation.relationship.getter(v90);
    v92 = v91;
  }

  else
  {
    v92 = 0;
  }

  v94 = v40[29];
  v93 = v40[30];
  outlined init with copy of DeviceState(v93 + 16, (v40 + 9));
  v95 = *(v93 + 104);
  v40[17] = &type metadata for InstalledAppsProvider;
  v40[18] = &protocol witness table for InstalledAppsProvider;
  v40[2] = v47;
  v40[3] = v314;
  v40[4] = v82;
  v40[5] = v85;
  v40[6] = v87;
  v40[7] = v90;
  v40[8] = v92;
  v40[19] = v95;
  v96 = v47;

  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  v40[104] = v97;
  outlined destroy of ModifyContactAttributeViewBuilder((v40 + 2));
  v98 = IntentResolutionRecord.intent.getter();
  v99 = [v98 contactAttributeToModify];

  if (v99 != 6)
  {
    if (v99 == 10)
    {
      OUTLINED_FUNCTION_28_3();
      v100 = IntentResolutionRecord.intentResponse.getter();
      v101 = [v100 updatedRelationship];

      if (v101 && (outlined bridged method (ob) of @objc ContactRelation.relationship.getter(v101), v102))
      {
        OUTLINED_FUNCTION_30_3();
      }

      else
      {
        static String.EMPTY.getter();
        OUTLINED_FUNCTION_30_3();
      }

      v194 = v40[75];
      v195 = v40[72];
      v196 = v40[60];
      v197 = v40[30];
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_49_0();
      __swift_storeEnumTagSinglePayload(v196, 1, 1, v195);
      v199 = *(v197 + 40);
      v198 = *(v197 + 48);
      v200 = OUTLINED_FUNCTION_37_2();
      __swift_project_boxed_opaque_existential_1(v200, v199);
      OUTLINED_FUNCTION_60();
      v202 = v201;
      if ((DeviceState.isVox.getter() & 1) == 0)
      {
        OUTLINED_FUNCTION_28_3();
        v202 = IntentResolutionRecord.intent.getter();
        v198 = [v202 modifyOperation];

        if (v198 != 3)
        {
          goto LABEL_68;
        }
      }

      OUTLINED_FUNCTION_28_3();
      v203 = IntentResolutionRecord.intent.getter();
      v204 = outlined bridged method (ob) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(v203);
      if (v204)
      {
        OUTLINED_FUNCTION_33_1(v204);
        v205 = v198 ? MEMORY[0x26D5E29D0](0, v202) : v202[4];
        v206 = v205;

        outlined bridged method (ob) of @objc INObject.identifier.getter(v206);
        if (v207)
        {
          v208 = v325[11];
          __swift_project_boxed_opaque_existential_1(v325 + 7, v325[10]);
          v209 = OUTLINED_FUNCTION_32_2(v208);
          v211 = v210(v209);
          if (v206)
          {
          }

          else
          {
            v288 = v211;

            if (v288)
            {
              v254 = v40 + 68;
              v320 = v40[68];
              v327 = v40[60];
              v289 = v40[52];
              v290 = v40[30];
              type metadata accessor for DialogPerson();
              v292 = *(v197 + 40);
              v291 = *(v197 + 48);
              v293 = OUTLINED_FUNCTION_37_2();
              __swift_project_boxed_opaque_existential_1(v293, v292);
              v294 = v288;
              dispatch thunk of DeviceState.siriLocale.getter();
              v295 = *(v290 + 120);
              v296 = v295;
              DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v294, 0, v289, v295);
              dispatch thunk of DialogPerson.fullName.getter();

              outlined destroy of UsoEntity_common_Person.DefinedValues?(v327, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_67:
              outlined init with take of SpeakableString?(*v254, v40[60]);
LABEL_68:
              v260 = v40[78];
              v261 = v40[72];
              v262 = v40[57];
              v263 = *(v40[30] + 96);
              v264 = *(v40[73] + 16);
              v264(v40[58], v40[75], v261);
              OUTLINED_FUNCTION_50();
              __swift_storeEnumTagSinglePayload(v265, v266, v267, v261);
              v264(v262, v260, v261);
              OUTLINED_FUNCTION_50();
              __swift_storeEnumTagSinglePayload(v268, v269, v270, v261);
              v271 = *(v197 + 40);
              v272 = *(v197 + 48);
              v273 = OUTLINED_FUNCTION_37_2();
              __swift_project_boxed_opaque_existential_1(v273, v271);
              OUTLINED_FUNCTION_37_0();
              DeviceState.isVox.getter();
              swift_task_alloc();
              OUTLINED_FUNCTION_36_0();
              v40[105] = v274;
              *v274 = v275;
              v274[1] = ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
              v276 = v40[60];
              v278 = v40[57];
              v277 = v40[58];
              v279 = v40[34];
              OUTLINED_FUNCTION_12_4();

              return ModifyContactAttributeCATs.intentHandledModifyRelationship(updatedRelationship:contactName:modifyOperation:isVoiceMode:)();
            }
          }
        }
      }

      OUTLINED_FUNCTION_28_3();
      v212 = IntentResolutionRecord.intentResponse.getter();
      v213 = [v212 updatedRelationship];

      if (!v213 || (outlined bridged method (ob) of @objc ContactRelation.relatedFullName.getter(v213), !v214))
      {
        static String.EMPTY.getter();
      }

      v253 = v40[72];
      v254 = v40 + 59;
      v256 = v40[59];
      v255 = v40[60];
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_49_0();
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v255, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      OUTLINED_FUNCTION_50();
      __swift_storeEnumTagSinglePayload(v257, v258, v259, v253);
      goto LABEL_67;
    }

    v166 = v40[78];
    v167 = v40[73];
    v168 = v40[72];

    type metadata accessor for ContactsError();
    OUTLINED_FUNCTION_2_12();
    lazy protocol witness table accessor for type ModifyContactAttributeHandleIntentStrategy and conformance ModifyContactAttributeHandleIntentStrategy(v169, v170);
    v171 = OUTLINED_FUNCTION_7_1();
    swift_storeEnumTagMultiPayload();
    v324 = v171;
    swift_willThrow();

    v172 = *(v167 + 8);
    v173 = OUTLINED_FUNCTION_60();
    v174(v173);
LABEL_40:
    v175 = v40[78];
    v176 = v40[77];
    v177 = v40[76];
    v178 = v40[75];
    v179 = v40[74];
    v180 = v40[71];
    v181 = v40[70];
    v182 = v40[69];
    v183 = v40[68];
    v184 = v40[67];
    OUTLINED_FUNCTION_1_11();
    v297 = v185;
    v298 = v40[46];
    v300 = v40[45];
    v303 = v40[42];
    v306 = v40[41];
    v310 = v40[38];
    v313 = v40[35];
    v317 = v40[34];
    v321 = v40[33];

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_12_4();

    return v187(v186, v187, v188, v189, v190, v191, v192, v193, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, v297, v298, v300, v303, v306, v310, v313, v317, v321, v324, a36, a37, a38, a39, a40);
  }

  OUTLINED_FUNCTION_28_3();
  v127 = IntentResolutionRecord.intent.getter();
  outlined bridged method (ob) of @objc ModifyContactAttributeIntent.modifyNickName.getter(v127);
  v128 = v96;
  if (!v129)
  {
    static String.EMPTY.getter();
  }

  v326 = v40[78];
  v130 = v40[73];
  v131 = v40[72];
  v302 = v40[56];
  v305 = v40[55];
  v309 = v40[74];
  v312 = v40[54];
  v316 = v40[53];
  v132 = v40[52];
  v133 = v40[30];
  OUTLINED_FUNCTION_49_0();
  type metadata accessor for DialogPerson();
  v135 = v133[5];
  v134 = v133[6];
  v136 = OUTLINED_FUNCTION_37_2();
  __swift_project_boxed_opaque_existential_1(v136, v135);
  v137 = v128;
  dispatch thunk of DeviceState.siriLocale.getter();
  v138 = v133[15];
  v139 = v138;
  v40[107] = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v137, 0, v132, v138);
  DialogPerson.nickname.getter();
  dispatch thunk of DialogPerson.fullName.getter();
  v140 = v133[12];
  v141 = *(v130 + 16);
  v141(v312, v309, v131);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v142, v143, v144, v131);
  v141(v316, v326, v131);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v145, v146, v147, v131);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v40[108] = v148;
  *v148 = v149;
  v148[1] = ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  v151 = v40[55];
  v150 = v40[56];
  v153 = v40[53];
  v152 = v40[54];
  v154 = v40[33];
  OUTLINED_FUNCTION_12_4();

  return ModifyContactAttributeCATs.intentHandledModifyNickname(updatedNickname:existingNickname:contactName:modifyOperation:)();
}

{
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_29_2();
  v60 = *(v40 + 624);
  v41 = *(v40 + 616);
  v42 = *(v40 + 584);
  v43 = *(v40 + 576);
  v44 = *(v40 + 568);
  v45 = *(v40 + 552);
  v46 = *(v40 + 400);
  v47 = *(v40 + 376);
  v48 = *(v40 + 384);

  v49 = *(v42 + 8);
  v50 = OUTLINED_FUNCTION_22_0();
  v49(v50);
  (*(v48 + 8))(v46, v47);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v45, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v44, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMd, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMR);
  (v49)(v60, v43);
  OUTLINED_FUNCTION_0_11(*(v40 + 712));

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_4();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, v60, a37, a38, a39, a40);
}

{
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_29_2();
  v41 = v40[90];
  v42 = v40[79];
  v43 = v40[78];
  v44 = v40[76];
  v45 = v40[73];
  v46 = v40[72];
  v47 = v40[71];
  v48 = v40[64];

  v49 = *(v45 + 8);
  v50 = OUTLINED_FUNCTION_22_0();
  v49(v50);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v48, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v47, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMd, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMR);
  v51 = OUTLINED_FUNCTION_37_0();
  v49(v51);
  OUTLINED_FUNCTION_0_11(v40[100]);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_4();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

{
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_29_2();
  v41 = *(v40 + 624);
  v42 = *(v40 + 600);
  v43 = *(v40 + 584);
  v44 = *(v40 + 576);
  v45 = *(v40 + 480);

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v45, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v46 = *(v43 + 8);
  v47 = OUTLINED_FUNCTION_22_0();
  v46(v47);
  v48 = OUTLINED_FUNCTION_37_0();
  v46(v48);
  OUTLINED_FUNCTION_0_11(*(v40 + 848));

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_4();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

{
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_29_2();
  v41 = v40[107];
  v42 = v40[79];
  v43 = v40[78];
  v44 = v40[74];
  v45 = v40[73];
  v46 = v40[72];
  v48 = v40[55];
  v47 = v40[56];

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v48, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v47, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v49 = *(v45 + 8);
  v50 = OUTLINED_FUNCTION_22_0();
  v49(v50);
  v51 = OUTLINED_FUNCTION_37_0();
  v49(v51);
  OUTLINED_FUNCTION_0_11(v40[109]);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_4();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}